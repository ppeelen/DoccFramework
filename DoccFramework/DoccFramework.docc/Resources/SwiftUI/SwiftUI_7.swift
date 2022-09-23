import SwiftUI
import DoccFramework

struct ContentView: View {
    var body: some View {
        VStack {
            Button { 
                let dc = DummyClass()
                dc.sayHi(name: "SwiftUI")
            } label: { 
                Text("Say Hi to Debugger")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
