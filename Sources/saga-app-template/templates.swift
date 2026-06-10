import Foundation
import HTML
import Saga
import SagaPathKit
import SagaSwimRenderer

let testFlightURL = "https://testflight.apple.com/join/gcuFDKeB"

func baseHtml(
  title pageTitle: String,
  description: String = "Fdoo translates restaurant menus in any language, flags dishes that match your diet, and gives you the cultural context to order like you know what you're doing.",
  @NodeBuilder children: () -> NodeConvertible
) -> Node {
  html(lang: "en-US") {
    head {
      meta(charset: "utf-8")
      meta(content: "width=device-width, initial-scale=1", name: "viewport")
      title { pageTitle }
      meta(content: description, name: "description")
      Node.raw("""
        <meta property="og:title" content="\(pageTitle)">
        <meta property="og:description" content="\(description)">
        <meta property="og:type" content="website">
        <meta property="og:url" content="\(SiteMetadata.url)">
        <meta property="og:image" content="\(SiteMetadata.url)/static/assets/main_screen.png">
        <meta name="twitter:card" content="summary_large_image">
        """)
      link(href: "https://fonts.googleapis.com/css2?family=Borel&display=swap", rel: "stylesheet")
      link(href: Saga.hashed("/static/style.css"), rel: "stylesheet")
      link(href: "/static/assets/fdooicon.svg", rel: "icon", type: "image/svg+xml")
    }
    body {
      header(class: "site-header") {
        nav(class: "nav-inner") {
          a(class: "nav-brand", href: "/") {
            img(alt: "Fdoo icon", class: "nav-icon", src: "/static/assets/fdooicon.svg")
            span(class: "nav-wordmark") { "fdoo" }
          }
          a(class: "nav-cta", href: testFlightURL, rel: "noopener", target: "_blank") {
            "Try on TestFlight"
          }
        }
      }
      main {
        children()
      }
      footer(class: "site-footer") {
        div(class: "footer-inner") {
          nav(class: "footer-links") {
            a(href: "/privacy-policy/") { "Privacy Policy" }
            a(href: "mailto:brent@projops.io") { "Support" }
          }
          p(class: "footer-copy") {
            "© \(Calendar.current.component(.year, from: Date())) Fdoo. All rights reserved."
          }
        }
      }
    }
  }
}

// MARK: - Homepage

func renderHomePage() -> Node {
  baseHtml(title: "Fdoo — Scan Any Menu, Order With Confidence") {
    // Hero
    section(class: "hero") {
      div(class: "hero-text") {
        h1(class: "hero-headline") { "The menu's in another language. Dinner isn't a mystery anymore." }
        p(class: "hero-sub") {
          "Fdoo reads menus in any language, checks every dish against your dietary needs, and tells you how to eat it before you order."
        }
        p(class: "hero-body") { "No guessing. No awkward pointing. No accidentally ordering something you can't eat." }
        a(class: "cta-btn", href: testFlightURL, rel: "noopener", target: "_blank") {
          "Try Fdoo on TestFlight →"
        }
      }
      div(class: "hero-visual") {
        img(alt: "Fdoo main screen", class: "hero-screenshot", src: "/static/assets/main_screen.png")
      }
    }

    // How It Works
    section(class: "section how-it-works") {
      h2(class: "section-headline") { "Three seconds from confused to confident" }
      div(class: "steps") {
        div(class: "step") {
          img(alt: "Fdoo onboarding screen", class: "step-img", src: "/static/assets/onboarding_screen.png")
          div(class: "step-body") {
            span(class: "step-num") { "1" }
            h3 { "Scan the menu" }
            p { "Point your camera at any menu — printed, handwritten, in any script." }
          }
        }
        div(class: "step") {
          img(alt: "Fdoo translation screen", class: "step-img", src: "/static/assets/translation_screen.png")
          div(class: "step-body") {
            span(class: "step-num") { "2" }
            h3 { "Fdoo reads it" }
            p { "Every dish gets translated, analyzed for ingredients, and matched against your dietary preferences — instantly." }
          }
        }
        div(class: "step") {
          img(alt: "Fdoo translation screen detail", class: "step-img", src: "/static/assets/translation_screen.png")
          div(class: "step-body") {
            span(class: "step-num") { "3" }
            h3 { "Tap to go deeper" }
            p { "Pronunciation, cultural background, how it's eaten. Everything you need to order with confidence." }
          }
        }
      }
    }

    // Color System
    section(class: "section color-system") {
      h2(class: "section-headline") { "You'll know at a glance" }
      p(class: "section-body") {
        "Fdoo flags every dish with a color so you can scan a menu the way you'd scan a traffic light."
      }
      div(class: "badges") {
        div(class: "badge badge-blue") {
          span(class: "badge-dot") { "" }
          div {
            strong { "Recommended" }
            p { "Matches your taste preferences" }
          }
        }
        div(class: "badge badge-green") {
          span(class: "badge-dot") { "" }
          div {
            strong { "Meets your diet" }
            p { "Safe for your dietary requirements" }
          }
        }
        div(class: "badge badge-yellow") {
          span(class: "badge-dot") { "" }
          div {
            strong { "Proceed with caution" }
            p { "We're not certain — check before you order" }
          }
        }
        div(class: "badge badge-red") {
          span(class: "badge-dot") { "" }
          div {
            strong { "Skip this one" }
            p { "Contains something you avoid" }
          }
        }
      }
      p(class: "disclaimer") {
        "AI can make mistakes. Use your judgment, especially for serious dietary needs."
      }
    }

    // Features
    section(class: "section features") {
      h2(class: "section-headline") { "What Fdoo does while you study the menu" }
      div(class: "feature-grid") {
        div(class: "feature-card") {
          h3 { "Any script. Any language." }
          p { "Japanese, Arabic, Thai, Cyrillic — if it's on the menu, Fdoo reads it." }
        }
        div(class: "feature-card") {
          h3 { "Your rules, applied automatically." }
          p { "Set your dietary preferences once. Fdoo checks every dish against them without you asking." }
        }
        div(class: "feature-card") {
          h3 { "More than a translation." }
          p { "Pronunciation, description, how it's traditionally eaten, and similar dishes — so you know what you're getting into." }
        }
      }
    }

    // Built By
    section(class: "section built-by") {
      h2(class: "section-headline") { "Built by people who've been that person staring at a menu" }
      div(class: "team-grid") {
        teamMember(name: "Brent Deverman", url: "https://www.linkedin.com/in/deverman/")
        teamMember(name: "Luisa Haning Tyas", url: "https://www.linkedin.com/in/luisa-haning-tyas/")
        teamMember(name: "Teresa Kaena", url: "https://www.linkedin.com/in/teresakae/")
        teamMember(name: "William Gozali", url: "https://www.linkedin.com/in/willliamgozali8/")
        teamMember(name: "Ketut Agus Cahyadi Nanda", url: "https://www.linkedin.com/in/ketutaguscahyadinanda/")
      }
    }

    // Footer CTA
    section(class: "footer-cta") {
      h2 { "Still reading the menu upside down?" }
      a(class: "cta-btn", href: testFlightURL, rel: "noopener", target: "_blank") {
        "Try Fdoo on TestFlight →"
      }
    }
  }
}

func teamMember(name: String, url: String) -> Node {
  a(class: "team-member", href: url, rel: "noopener", target: "_blank") {
    span(class: "team-avatar") {
      Node.text(String(name.prefix(1)))
    }
    span(class: "team-name") { name }
  }
}

// MARK: - Article renderers

func renderArticle(context: ItemRenderingContext<ArticleMetadata>) -> Node {
  baseHtml(title: "\(context.item.title) — \(SiteMetadata.name)") {
    article(class: "prose") {
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
  baseHtml(title: "Articles — \(SiteMetadata.name)") {
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
  baseHtml(title: "Articles tagged \(context.key) — \(SiteMetadata.name)") {
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
  // Route homepage to its dedicated renderer
  if context.item.url == "/" {
    return renderHomePage()
  }
  return baseHtml(title: "\(context.item.title) — \(SiteMetadata.name)") {
    div(class: "prose") {
      Node.raw(context.item.body)
    }
  }
}
