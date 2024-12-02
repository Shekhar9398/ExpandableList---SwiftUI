
import SwiftUI

var fruits : [String] = ["Apple", "Orange", "Banana", "Litchi", "Melon", "Kiwi", "Strawberry", "Berry", "Cherry"]

var vegetables : [String] = ["Flower", "Onion", "Pumpkin"]


struct ContentView : View {
    @State private var isFruitsExpanded = false
    @State private var isVegetableExpanded = false
    
    var body: some View {
        VStack(alignment: .leading) {
            //..Expanding Fruits
            DisclosureGroup(
                         isExpanded: $isFruitsExpanded,
                         content: {
                             List(fruits, id: \.self) { item in
                                 HStack {
                                     Image(systemName: "bolt.fill")
                                         .foregroundColor(.mint)
                                         .padding()
                                     
                                     
                                     Text(item)
                                     
                                     Spacer()
                                     
                                 }
                                 .frame(width : 300, height: 30)
                              
                             }
                             .listStyle(.plain)
                             .frame(width: 300, height: 200)
                         },
                         label: {
                             Text("Fruits")
                                 .fontWeight(.bold)
                                 .foregroundStyle(Color.red)
                                 .padding()
                         }
                     )
            
            //Expanding Vegetables
            DisclosureGroup(
                isExpanded: $isVegetableExpanded,
                content: {
                    
                    ForEach(vegetables, id: \.self){ item in
                        HStack{
                            Image(systemName: "star.fill")
                                .foregroundColor(.mint)
                                .padding()
                            
                            
                            Text(item)
                            
                            Spacer()
                        }
                        .frame(width : 300, height: 30)
                
                    }
                },
                label: {
                    Text("Vegetables")
                        .fontWeight(.bold)
                        .foregroundStyle(Color.red)
                        .padding()
                }
            
            )
            
            Spacer()
        }
        .padding()
        }
    }


#Preview {
    ContentView()
}






//
//import SwiftUI
//
//struct Brands: Identifiable {
//    let id = UUID()
//    let name : String
//    let icon : String
//    var items : [Brands]?
//}
//
//struct ContentView: View {
//    
//    let items : [Brands] = [.example1, .example2]
//    
//    var body: some View {
//        
//        List(items, children: \.items) { row in
//            
//            Image(systemName: row.icon)
//            Text(row.name)
//        }
//    }
//    
//}
//
//
////.. Data for the Brands
//extension Brands {
//    //Childrens
//    static let apple = Brands(name: "Apple", icon: "1.circle")
//    
//    static let samsung = Brands(name: "Samsung", icon: "square.and.pencil")
//    
//    static let microsoft = Brands(name: "Microsoft", icon: "bolt.fill")
//    
//    //Parents
//    static let example1 = Brands(name: "Favorites", icon: "star", items: [Brands.apple, Brands.microsoft, Brands.samsung])
//    
//    static let example2 = Brands(name: "Recomended", icon: "hand.thumbsup", items: [Brands.microsoft, Brands.samsung, Brands.apple])
//}
//
//
//
//#Preview {
//    ContentView()
//}
