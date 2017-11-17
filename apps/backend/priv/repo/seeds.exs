# Run it as:
# mix run mix run priv/repo/seeds.exs

alias Backend.{Repo, Quote}

quotes = [
  "There is no friend as loyal as a book.",
  "There is nothing to writing. All you do is sit down at a typewriter and bleed.",
  "Happiness in intelligent people is the rarest thing I know." ,
  "I love sleep. My life has the tendency to fall apart when I'm awake, you know?",
  "The best way to find out if you can trust somebody is to trust them."
]

for q <- quotes do
  Repo.insert!(%Quote{author: "Ernest Hemingway", quote: q})
end
