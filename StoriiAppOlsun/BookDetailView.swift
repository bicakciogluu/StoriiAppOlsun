import SwiftUI

struct BookDetailView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Image("book_cover_image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text("Book Title")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Author Name")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                // Yeni Butonlar Burada
                HStack {
                    Button(action: {
                        // Add to List butonuna basıldığında yapılacak işlem
                        print("Added to List")
                    }) {
                        Text("Add to List")
                            .font(.headline)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        // Read butonuna basıldığında yapılacak işlem
                        print("Reading started")
                    }) {
                        Text("Read")
                            .font(.headline)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                
                Divider()
                
                Text("Description")
                    .font(.body)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.")
            }
            .padding()
        }
        .navigationBarTitle("Book Detail", displayMode: .inline)
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView()
    }
}
