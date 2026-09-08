import SwiftUI

struct ContentView: View {
    @State private var currentQuote = "Appuie sur le bouton, frérot..."
    @State private var currentAuthor = "Système"

    let database = [
        ("Il n'y a pas de cloud, c'est juste l'ordinateur de quelqu'un d'autre.", "Inconnu"),
        ("Le code c'est comme l'humour, quand il faut l'expliquer, c'est mauvais.", "Cory House"),
        ("1.21 gigowatts !?", "Doc Emmett Brown"),
        ("sudo make me a sandwich.", "Root")
    ]

    var body: some View {
        VStack(spacing: 20) {
            Text("🛡️ HACKER QUOTES")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.green)

            VStack(spacing: 10) {
                Text("\"\(currentQuote)\"")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding()

                Text("— \(currentAuthor)")
                    .font(.subheadline)
                    .italic()
                    .foregroundColor(.gray)
            }
            .padding()
            .background(Color.black.opacity(0.05))
            .cornerRadius(12)

            Button(action: {
                if let random = database.randomElement() {
                    currentQuote = random.0
                    currentAuthor = random.1
                }
            }) {
                Text("Générer une punchline")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
        }
        .padding()
    }
}
