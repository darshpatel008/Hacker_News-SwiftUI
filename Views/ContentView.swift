import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
    
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url ?? "Error"))
                {
                    HStack 
                    {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
              
            }
            .navigationTitle("Hacker News")
        }
        .onAppear(perform: {
            networkManager.fetchData()
        })
    }
}

#Preview {
    ContentView()
}

// let posts =
// [
//   Post(id: "1", title: "Hello World"),
//   Post(id: "2", title: "Hi"),
//   Post(id: "3", title: "How are u"),
//   Post(id: "4", title: "I am fine")
// ]. // this is my content view import Foundation

