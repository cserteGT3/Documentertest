using Documenter


makedocs(sitename = "Issuetest",
        pages = ["Home" => "index.md",
                "Guidelines" => "guides/guidelines.md",
                "Informations" => ["News, informations" => "infos/news.md",
									"Not so news" => "infos/old/old.md"]
				]
        )

#  python -m http.server --bind localhost
