import Foundation
import Saga
import SagaParsleyMarkdownReader
import SagaSwimRenderer

enum SiteMetadata {
  static let url = URL(string: "https://fdoo.app")!
  static let name = "Fdoo"
  static let author = "Brent Deverman"
  static let telemetryAppID = "4694AAB1-C682-4B55-8CCA-E73A0CE41B48"
}

struct ArticleMetadata: Metadata {
  let tags: [String]
  var summary: String?
}

try await Saga(input: "content", output: "docs")
  .register(
    folder: "articles",
    metadata: ArticleMetadata.self,
    readers: [.parsleyMarkdownReader(
        markdownOptions: [.hardBreaks, .smartQuotes, .markdownAttributes],
        syntaxExtensions: [.autolink, .strikethrough, .table, .tasklist]
)],
    writers: [
      .itemWriter(swim(renderArticle)),
      .listWriter(swim(renderArticles)),
      .tagWriter(swim(renderTag), tags: \.metadata.tags),
    ]
  )
  .register(
    metadata: EmptyMetadata.self,
    readers: [.parsleyMarkdownReader(
    markdownOptions: [.hardBreaks, .smartQuotes, .markdownAttributes],
        syntaxExtensions: [.autolink, .strikethrough, .table, .tasklist]
        )],
    writers: [.itemWriter(swim(renderPage))]
  )
  .run()