import Foundation
let url = URL(string: "http://www.stackoverflow.com")!
func showHTML(data: Data?, response: URLResponse?, error: Error?) {
    guard let data = data else { return }
    let HTMLContent = String(data: data, encoding: .utf8)!
    print(HTMLContent)
}
let task = URLSession.shared.dataTask(with: url, completionHandler: showHTML)
task.resume()
