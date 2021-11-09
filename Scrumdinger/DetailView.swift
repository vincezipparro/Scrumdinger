//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Vince Zipparro on 10/29/21.
//

import SwiftUI

struct DetailView: View {
    @Binding var scrum: DailyScrumModel
    @State private var isPresented = false
    @State private var data: DailyScrumModel.Data = DailyScrumModel.Data()
    
    var body: some View {
        List{
            Section(header: Text("Meeting Info")){
                NavigationLink(destination: MeetingView()){
                    Label("Start Meeting", systemImage: "timer")
                        .accessibilityLabel(Text("Start"))
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                
                HStack{
                    Label("Length", systemImage: "clock")
                        .accessibilityLabel(Text("Meeting Length"))
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                
                HStack{
                    Label("Color", systemImage: "paintpalette")
                    Spacer()
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(scrum.color)
                }
                .accessibilityElement(children: .ignore)
            }
            
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees, id: \.self) { attendee in
                    Label("\(attendee)", systemImage: "person")
                        .accessibilityLabel(Text("Person"))
                        .accessibilityValue(Text(attendee))
                }
            }
        }
        .listStyle(InsetListStyle())
        .navigationBarItems(trailing: Button("Edit"){
            isPresented = true
            data = scrum.data
        })
        .navigationTitle("\(scrum.title)")
        .fullScreenCover(isPresented: $isPresented){
            NavigationView{
                EditView(scrumData: $data)
                    .navigationTitle(scrum.title)
                    .navigationBarItems(leading: Button("Cancel"){
                            isPresented = false
                    }, trailing: Button("Done"){
                        isPresented = false
                        scrum.update(from: data)
                    })
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailView(scrum: .constant(DailyScrumModel.data[0]))
        }
    }
}

