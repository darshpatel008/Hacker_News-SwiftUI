
import Foundation
import SwiftUI
import WebKit

//import SafariServices
//
//struct SafariView: UIViewControllerRepresentable 
//{
//    
//    let url: String
//    
//    func makeUIViewController(context: Context) -> SFSafariViewController
//    {
//        let safariURL = URL(string: url) ?? URL(string: "https://www.apple.com")!
//        return SFSafariViewController(url: safariURL)
//    }
//    
//    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {}
//}
struct WebView: UIViewRepresentable {
    let url: String
    
    func makeUIView(context: Context) -> WKWebView 
    {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) 
    {
        if let webURL = URL(string: url)
        {
            let request = URLRequest(url: webURL)
            uiView.load(request)
        }
    }
}
