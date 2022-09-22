//
//  ContentView.swift
//  Movie App
//
//  Created by macbook on 21/09/2022.
//

import SwiftUI

struct CastMember: Identifiable {
    let id = UUID()
    
    let name: String
    let imageName: String
}
struct MovieInfo: Identifiable{
    let id = UUID()
    
    let title: String
    let imageName: String
    let cast: [CastMember]
}

struct ContentView: View {
    let movies = [
        MovieInfo(
            title: "Shrek Movie",
            imageName:"shrek",
            cast: [
            CastMember(
                  name: "Mike Myers",
                  imageName: "mike"
                  ),
            CastMember(
                  name: "Eddie Murphy",
                  imageName: "eddie"
                  ),
            CastMember(
                  name: "Conrad Vernon",
                  imageName: "conrad"
                  ),
            CastMember(
                  name: "John Lithgow",
                  imageName: "john"
                  ),
            CastMember(
                  name: "Chris Miller",
                  imageName: "chris"
                  )
            ]
            ),
        MovieInfo(
            title: "Cinderella Movie",
            imageName: "cinderella",
        cast:[
             CastMember(
              name: "Lily James",
              imageName: "lily"
              ),
             CastMember(
                   name: "Richared Madden",
                   imageName: "rich"
                   ),
             CastMember(
                   name: "Cate Blanchett",
                   imageName: "cate"
                   ),
             CastMember(
                   name: "Helena Bonham",
                   imageName: "helena"
                   ),
             CastMember(
                   name: "Sophie McShera",
                   imageName: "sophie"
                   ),
             CastMember(
                   name: "Holiday Grainger",
                   imageName: "holiday"
                   )
             ]
        ),
        MovieInfo(
            title:"Harry Poter Movie",
            imageName: "harry",
            cast:[
                CastMember(
                      name: "Daniel Radcliffe",
                      imageName: "daniel"
                      ),
                CastMember(
                      name: "Emma Watson",
                      imageName: "emma"
                      ),
                CastMember(
                      name: "Rupert Grint",
                      imageName: "rupert"
                      ),
                CastMember(
                      name: "Bonnie Wright",
                      imageName: "bonnie"
                      ),
                CastMember(
                      name: "Tom Felton",
                      imageName: "tom"
                      ),
                CastMember(
                      name: "Maggie Smith",
                      imageName: "maggie"
                      )
                  ]
                )
        ]

    var body: some View {
        NavigationView{
        List{
            ForEach(movies) { movie in
                NavigationLink(destination: MovieDetail(movie:movie)) {
                    ExtractedView(movie: movie)
                }
            }
        }
        .navigationTitle("Movies")
    }
        .accentColor(.white)
                            }
                            }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct MovieDetail: View {
    let movie: MovieInfo
    var body: some View {
        ZStack{
            Color.black
            
            Image(movie.imageName)
                .resizable()
                .ignoresSafeArea()
                .opacity(0.5)
                .blur(radius: 10)
            
            VStack{
            Image(movie.imageName)
                .resizable()
                .frame(width: 180, height: 180)
                .clipShape(Circle())
                .padding()
                .background(.white)
                .clipShape(Circle())
            
                
            Text(movie.title)
                .font(.largeTitle)
                .foregroundColor(.white)
                
                Spacer()
                
                ScrollView(.horizontal){
                HStack{
                    ForEach(movie.cast){
                        CastMember in
                        VStack{
                            Image(CastMember.imageName)
                                .resizable()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                            Text(CastMember.name)
                                .foregroundColor(.white)
                }
                    }
                }
                }
}
}
    }
}
struct ExtractedView: View {
    let movie: MovieInfo
    var body: some View {
        HStack{
            Image(movie.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(1.0, contentMode:.fit)
                .clipShape(Circle())
            Text(movie.title)
        }
    }
}

