import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // Üst Profil Bilgisi Bölümü
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .foregroundColor(.gray)
                    VStack(alignment: .leading) {
                        Text("Visitor")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("ID 77024065")
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    Button(action: {
                        // Login action
                    }) {
                        Text("Login")
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.pink)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                    }
                }
                .padding(.top)
                
                // Cüzdan Bilgisi
                HStack {
                    VStack {
                        Text("0")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Coins")
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    VStack {
                        Text("0")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Bonus")
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    Button(action: {
                        // Top Up action
                    }) {
                        Text("TOP UP")
                            .padding()
                            .background(
                                LinearGradient(gradient: Gradient(colors: [.orange, .red]), startPoint: .leading, endPoint: .trailing)
                            )
                            .foregroundColor(.white)
                            .cornerRadius(20)
                    }
                }
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(12)
            }
            .padding()

            // Alt Menü Bölümü
            List {
                NavigationLink(destination: Text("Inbox")) {
                    HStack {
                        Image(systemName: "envelope")
                        Text("Inbox")
                    }
                }
                NavigationLink(destination: Text("Author Center")) {
                    HStack {
                        Image(systemName: "pencil")
                        Text("Author Center")
                    }
                }
                NavigationLink(destination: Text("Earn Rewards")) {
                    HStack {
                        Image(systemName: "gift")
                        Text("Earn Rewards")
                    }
                }
                NavigationLink(destination: Text("Exchange")) {
                    HStack {
                        Image(systemName: "arrow.swap")
                        Text("Exchange")
                    }
                }
                NavigationLink(destination: Text("Gems")) {
                    HStack {
                        Image(systemName: "diamond")
                        Text("Gems")
                            .foregroundColor(.blue)
                    }
                }
                NavigationLink(destination: Text("Viewed")) {
                    HStack {
                        Image(systemName: "clock")
                        Text("Viewed")
                    }
                }
                NavigationLink(destination: Text("Online Service")) {
                    HStack {
                        Image(systemName: "message")
                        Text("Online Service")
                    }
                }
                NavigationLink(destination: Text("Settings")) {
                    HStack {
                        Image(systemName: "gearshape")
                        Text("Settings")
                    }
                }
            }
        }
        .background(Color(UIColor.systemGroupedBackground))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
