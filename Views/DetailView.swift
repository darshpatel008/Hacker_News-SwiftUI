import SwiftUI

struct DetailView: View 
{
    let url: String
    
    var body: some View
    {
        WebView(url: url)
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}

