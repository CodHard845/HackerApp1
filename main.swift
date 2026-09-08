import Foundation

struct HackerQuote {
    let quote: String
    let author: String
}

let database = [
    HackerQuote(quote: "Il n'y a pas de cloud, c'est juste l'ordinateur de quelqu'un d'autre.", author: "Inconnu"),
    HackerQuote(quote: "Le code c'est comme l'humour, quand il faut l'expliquer, c'est mauvais.", author: "Cory House"),
    HackerQuote(quote: "1.21 gigowatts !?", author: "Doc Emmett Brown"),
    HackerQuote(quote: "sudo make me a sandwich.", author: "Root")
]

print("=== GÉNÉRATEUR DE CITATIONS HACKER ===")
if let randomItem = database.randomElement() {
    print("\n💬 \"\(randomItem.quote)\"")
    print("— 👤 \(randomItem.author)\n")
}
print("=====================================")
