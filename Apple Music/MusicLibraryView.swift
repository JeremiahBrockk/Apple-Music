//
//  MusicLibraryView.swift
//  Apple Music
//
//  Created by Mr. Brock💰🤟🏾 on 3/17/23.
//

import SwiftUI


struct PlayListModel: Identifiable {
    var id = UUID()
    var symbol: String
    var name: String
}
class PlayListViewModel: ObservableObject {
    @Published var playListsArray: [PlayListModel] = [
        PlayListModel(symbol: "music.note.list", name: "PlayLists"),
        PlayListModel(symbol: "music.mic", name: "Artists"),
        PlayListModel(symbol: "square.stack", name: "Albums"),
        PlayListModel(symbol: "music.note", name: "Songs"),
        PlayListModel(symbol: "music.note.tv", name: "Music Videos"),
        PlayListModel(symbol: "guitars", name: "Genres"),
        PlayListModel(symbol: "music.quarternote.3", name: "Compilations"),
    ]
}
struct MusicLibraryView: View {
    @StateObject var playListViewModel = PlayListViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                
                
                
                List {
                    
                    ForEach(playListViewModel.playListsArray) {
                        musicSettings in
                        HStack {
                            
                            Image(systemName: musicSettings.symbol)
                                .foregroundColor(.red)
                            Text(musicSettings.name)
                            //  Spacer()
                            Image(systemName: "chevron.right")
                        }
                        
                    }
                }
                
            }
            .navigationTitle("Library")
            .toolbar{
                ToolbarItem {
                    Text("Edit")
                        .foregroundColor(.blue)
                        .font(.title2)
                }
            }
        }
    }
}

struct MusicLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        MusicLibraryView()
    }
}
