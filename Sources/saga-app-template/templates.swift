import Foundation
import HTML
import Saga
import SagaPathKit
import SagaSwimRenderer

func baseHtml(title pageTitle: String, @NodeBuilder children: () -> NodeConvertible) -> Node {
  html(lang: "en-US") {
    head {
      meta(charset: "utf-8")
      meta(content: "width=device-width, initial-scale=1", name: "viewport")
      title { pageTitle }
      link(href: Saga.hashed("/static/style.css"), rel: "stylesheet")
    }
    body {
      header {
        nav {
          a(class: "site-title", href: "/") { SiteMetadata.name }
          div(class: "nav-links") {
            a(href: "#features") { "Features" }
            a(href: "#pricing") { "Pricing" }
          }
        }
      }
      main {
        children()
      }
      footer {
        nav {
          div(class: "nav-links") {
            a(href: "/privacy-policy") { "Privacy Policy" }
          }
        }
        p {
          "Built with "
          a(href: "https://github.com/loopwerk/Saga") { "Saga." }
          "Template by "
          a(href: "http://www.deverman.org") { "Brent Deverman." }
        }

      }
    }
  }
}

func renderArticle(context: ItemRenderingContext<ArticleMetadata>) -> Node {
  baseHtml(title: context.item.title) {
    article {
      h1 { context.item.title }
      ul(class: "tags") {
        context.item.metadata.tags.map { tag in
          li {
            a(href: "/articles/tag/\(tag.slugified)/") { tag }
          }
        }
      }
      Node.raw(context.item.body)
    }
  }
}

func renderArticles(context: ItemsRenderingContext<ArticleMetadata>) -> Node {
  baseHtml(title: "Articles") {
    h1 { "Articles" }
    context.items.map { article in
      div(class: "article-card") {
        h2 {
          a(href: article.url) { article.title }
        }
        if let summary = article.metadata.summary {
          p { summary }
        }
      }
    }
  }
}

func renderTag<T>(context: PartitionedRenderingContext<T, ArticleMetadata>) -> Node {
  baseHtml(title: "Articles tagged \(context.key)") {
    h1 { "Articles tagged \(context.key)" }
    context.items.map { article in
      div(class: "article-card") {
        h2 {
          a(href: article.url) { article.title }
        }
      }
    }
  }
}

func renderPage(context: ItemRenderingContext<EmptyMetadata>) -> Node {
  baseHtml(title: context.item.title) {
    div(class: "page") {
      h1 { context.item.title }
      Node.raw(context.item.body)
    }
  }
}
