import SwiftUI
import DoccFramework

struct ContentView: View {
    var body: some View {
        VStack {
            Button { 
                let dc = DummyClass()
            } label: {
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
