//
//  AppleMusicView.swift
//  Apple Music
//
//  Created by Mr. Brock💰🤟🏾 on 3/17/23.
//

import SwiftUI


struct MusicPlaylistsView: View {
    @State var isTapped = false
    var body: some View {
        
        GeometryReader { screen in
            let screen = screen.frame(in: .local)
            NavigationStack {
                VStack {
                        Text("Playlists")
                        .position(x: screen.midX*0.40, y: screen.midY*0.1)
                            .font(.largeTitle)
                            .padding(.trailing, 200)
                            .overlay(
                                NavigationLink("Library", destination: MusicLibraryView())
                                    .position(x: screen.midX*0.25, y: screen.midY*0.0)
                            )
                        
                        Spacer()
                        Text("Looking for your playlists?")
                            .bold()
                            .font(.title2)
                        Text("Playlists you create will appear here.")
                        
                        Button {
                            isTapped.toggle()
                        } label: {
                            if isTapped {
                            }
                            
                            Rectangle()
                                .foregroundColor(.red)
                                .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.1)
                                .cornerRadius(15)
                                .overlay (
                                    Text("New Playlist")
                                        .bold()
                                        .foregroundColor(.white)
                                )
                        }
                        Spacer()
                    
                }
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
}

struct MusicPlaylistsView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlaylistsView()
    }
}
