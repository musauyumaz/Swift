import UIKit

//MARK: BASIC OPERATORS(Temel Operatörler)
//Operatör, değerleri kontrol etmek, değiştirmek veya birleştirmek için kullandığınız özel bir sembol veya ifadedir. Örneğin, toplama operatörü (+) iki sayıyı toplar (let i = 1 + 2 gibi) ve mantıksal AND operatörü (&&) iki Boolean değerini birleştirir (if enteredDoorCode && passedRetinaScan gibi).

//Swift, C gibi dillerden zaten bildiğiniz operatörleri destekler ve yaygın kodlama hatalarını ortadan kaldırmak için çeşitli yetenekleri geliştirir. Atama operatörü (=), eşitlik operatörü (==) kullanılması gerektiğinde yanlışlıkla kullanılmasını önlemek için bir değer döndürmez. Aritmetik operatörler (+, -, *, /, % vb.) değer taşmasını algılar ve engeller, böylece saklandıkları türün izin verilen değer aralığından daha büyük veya daha küçük hale gelen sayılarla çalışırken beklenmedik sonuçların ortaya çıkmasını önler. Taşma Operatörleri bölümünde açıklandığı gibi, Swift'in taşma operatörlerini kullanarak değer taşması davranışını etkinleştirebilirsiniz.

//Swift ayrıca, bir değer aralığını ifade etmek için kısayol olarak C'de bulunmayan a..<b ve a...b gibi aralık operatörleri de sağlar.

//MARK: Terminology(Terminoloji)
//Operatörler tekli, ikili veya üçlüdür:
//Tekli operatörler tek bir hedef üzerinde çalışır (örneğin -a). Tekli önek operatörleri hedeflerinin hemen önünde (örneğin !b) ve tekli sonek operatörleri hedeflerinin hemen arkasında (örneğin c!) görünür.
//İkili operatörler iki hedef üzerinde işlem yapar (örneğin 2 + 3) ve iki hedef arasında göründükleri için infiks operatörlerdir.
//Üçlü operatörler üç hedef üzerinde işlem yapar. C gibi, Swift'te de tek bir üçlü operatör vardır: üçlü koşullu operatör (a ? b : c).
//Operatörlerin etkilediği değerler, işlenenlerdir. 1 + 2 ifadesinde, + sembolü bir infiks operatördür ve iki işleneni 1 ve 2 değerleridir.

//MARK: Assignment Operator(Atama Operatörü)
//Atama operatörü (a = b), a değerini b değeriyle başlatır veya günceller:

let b = 10
var a = 5
a = b
// a artık 10'a eşittir

//Atamanın sağ tarafı birden çok değere sahip bir tuple ise, öğeleri birden çok sabit veya değişkene aynı anda ayrıştırılabilir:
let (x, y) = (1, 2)
// x 1'e eşittir ve y 2'ye eşittir
//C ve Objective-C'deki atama operatörünün aksine, Swift'teki atama operatörü kendisi bir değer döndürmez. Aşağıdaki ifade geçerli değildir:

//if x = y {
    // Bu geçerli değildir, çünkü x = y bir değer döndürmez.
//}
//Bu özellik, eşittir operatörü (==) kullanılması gerektiğinde atama operatörünün (=) yanlışlıkla kullanılmasını önler. Swift, if x = y ifadesini geçersiz kılarak kodunuzda bu tür hataları önlemenize yardımcı olur.
