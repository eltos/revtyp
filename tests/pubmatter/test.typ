#import "/src/main.typ": *

#show: revtyp.with(
  journal: "PRAB",
  pubmatter: {
    import "@preview/pubmatter:0.2.2"
    pubmatter.load(yaml("frontmatter.yml"))
  },
)
