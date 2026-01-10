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
