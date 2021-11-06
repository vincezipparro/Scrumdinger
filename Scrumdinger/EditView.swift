//
//  EditView.swift
//  Scrumdinger
//
//  Created by Vince Zipparro on 11/5/21.
//

import SwiftUI

struct EditView: View {
    @State private var scrumData: DailyScrumModel.Data = DailyScrumModel.Data()
    var body: some View {
        List{
            Section(header: Text("Meeting Info")){
                TextField("Title", text: $scrumData.title)
            }
            HStack{
                Slider(value: $scrumData.lengthInMinutes, in: 5...30, step: 1.0){
                    Text("Lengh")
                }
                Spacer()
                Text("\(Int(scrumData.lengthInMinutes)) minutes")
            }
            ColorPicker("Color", selection: $scrumData.color)
        }
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView()
    }
}
