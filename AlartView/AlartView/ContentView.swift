import SwiftUI

struct ContentView: View {
    @State var isAlert = false
    @State var isDialog = false
    
    var body: some View {
        VStack {
            Button(action: {
                isAlert = true
            }) {
                Text("アラートを表示する")
            }
            .alert("タイトル", isPresented: $isAlert) {
                Button("拒否") {}
                Button("確認") {}
                //三つ以上書くと縦に並ぶ
                Button("保留") {}
                
            } message: {
                Text("メッセージ")
            }
            Button(action: {
                isDialog = true
            }) {
                Text("ダイアログを表示")
                    .padding()
            }
            .confirmationDialog("タイトル", isPresented: $isDialog, titleVisibility: .visible) {
                Button("選択肢1") {}
                Button("選択肢2") {}
                Button("選択肢3") {}
                Button("選択肢4") {}
            } message: {
                Text("メッセージ")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
