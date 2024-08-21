import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {  // Buraya NavigationView eklendi
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Okuma Listen")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.leading)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(0..<5) { _ in
                                NavigationLink(destination: BookDetailView()) {
                                    BookItemView(bookTitle: "Book Title", bookCover: "book_cover_image")
                                }
                            }
                        }
                        .padding(.horizontal)
                    }

                    Text("Şu Anda Okuduğun")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.leading)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(0..<5) { _ in
                                NavigationLink(destination: BookDetailView()) {
                                    BookItemView(bookTitle: "Current Reading", bookCover: "book_cover_image")
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.vertical)
            }
            .navigationBarTitle("For Ömer", displayMode: .inline)
        }
    }
}

struct BookItemView: View {
    var bookTitle: String
    var bookCover: String

    var body: some View {
        VStack(alignment: .leading) {
            Image(bookCover)
                .resizable()
                .frame(width: 100, height: 150)
                .cornerRadius(8)
            
            Text(bookTitle)
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(.primary)
                .lineLimit(1)
        }
        .frame(width: 100)
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
