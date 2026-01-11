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

//MARK: Arithmetic Operators(Aritmetik Operatörler)
//Swift, tüm sayı türleri için dört standart aritmetik işlemciyi destekler:
//Toplama (+)
//Çıkarma (-)
//Çarpma (*)
//Bölme (/)

1 + 2       // 3'e eşittir
5 - 3       // 2'ye eşittir
2 * 3       // 6'ya eşittir
10.0 / 2.5  // 4.0'a eşittir
//C ve Objective-C'deki aritmetik operatörlerin aksine, Swift aritmetik operatörleri varsayılan olarak değerlerin taşmasına izin vermez. Swift'in taşma operatörlerini (a &+ b gibi) kullanarak değer taşma davranışını etkinleştirebilirsiniz. Taşma Operatörleri bölümüne bakın.

//Toplama operatörü, String birleştirme için de desteklenir:

"hello, " + "world"  // "hello, world"e eşittir

//MARK: Remainder Operator(Mod Operatörü)
//Mod alma operatörü (a % b), a'nın içine kaç tane b'nin sığacağını hesaplar ve kalan değeri (kalan olarak bilinir) döndürür.

//NOTE: Mod alma operatörü (%) diğer dillerde mod alma işleci olarak da bilinir. Ancak, Swift'te negatif sayılar için davranışı, tam anlamıyla bir mod alma işlemi değil, bir kalan işlemi olduğu anlamına gelir.

//Kalan operatörü şu şekilde çalışır. 9 % 4'ü hesaplamak için, önce 9'un içine kaç tane 4 sığacağını hesaplarsınız:
//9'un içine iki tane 4 sığar ve kalan 1'dir
//Swift'te bu şöyle yazılır:
9 % 4    // eşittir 1
//% b'nin cevabını belirlemek için, % operatörü aşağıdaki denklemi hesaplar ve çıktı olarak kalanı döndürür:
//a = (b x bir çarpan) + kalan
//burada çarpan, a'ya sığabilecek b'nin en büyük kat sayısıdır.
//Bu denkleme 9 ve 4'ü eklediğimizde şu sonuç elde edilir:
//9 = (4 x 2) + 1

//A'nın negatif bir değeri için kalanı hesaplarken de aynı yöntem uygulanır:
-9 % 4   // -1'e eşittir
//-9 ve 4 değerlerini denkleme yerleştirdiğimizde şu sonuç elde edilir:
//-9 = (4 x -2) + -1
//Bu da -1 kalan değeri verir.
//b'nin negatif değerleri için b'nin işareti göz ardı edilir. Bu, a % b ve a % -b'nin her zaman aynı sonucu verdiği anlamına gelir.
9 % -4 // 1'e eşittir.

//MARK: Unary Minus Operator(Tekil - Operatörü)
//Sayısal bir değerin işareti, tekli eksi operatörü olarak bilinen önekli - kullanılarak değiştirilebilir:
let three = 3
let minusThree = -three       // minusThree, -3'e eşittir.
let plusThree = -minusThree   // plusThree, 3'e eşittir veya "eksi eksi üç" anlamına gelir.
//Tekli eksi operatörü (-) üzerinde işlem yaptığı değerin hemen önüne, boşluk bırakılmadan eklenir.

//MARK: Unary Plus Operator(Tekil + Opeatörü)
//Tekli artı işleci (+) üzerinde işlem yaptığı değeri herhangi bir değişiklik yapmadan döndürür:
let minusSix = -6
let alsoMinusSix = +minusSix  // alsoMinusSix, -6'ya eşittir
//Tekli artı işleci aslında hiçbir şey yapmasa da, negatif sayılar için tekli eksi işleci kullanırken, pozitif sayılar için kodunuzda simetri sağlamak amacıyla kullanabilirsiniz.

//MARK: Compound Assignment Operators(Bileşik Atama Operatörleri)
//C gibi, Swift de atama (=) ile başka bir işlemi birleştiren bileşik atama operatörleri sağlar. Bir örnek, toplama atama operatörüdür (+=):

var a1 = 1
a1 += 2
// a artık 3'e eşittir
a1 += 2 //ifadesi, a = a + 2 ifadesinin kısaltmasıdır. Etkili olarak, toplama ve atama, her iki görevi aynı anda gerçekleştiren tek bir operatörde birleştirilir.

//NOTE: Bileşik atama operatörleri bir değer döndürmez. Örneğin, let b = a += 2 yazamazsınız.

//MARK: Comparison Operators(Karşılaştırma Operatörleri)
//Swift aşağıdaki karşılaştırma operatörlerini destekler:
//Eşit (a == b)
//Eşit değil (a != b)
//Büyük (a > b)
//Küçük (a < b)
//Büyük veya eşit (a >= b)
//Küçük veya eşit (a <= b)

//NOTE: Swift ayrıca, iki nesne referansının aynı nesne örneğine atıfta bulunup bulunmadığını test etmek için kullandığınız iki özdeşlik operatörü (=== ve !==) sağlar. Daha fazla bilgi için Özdeşlik Operatörleri bölümüne bakın.

//Her karşılaştırma operatörü, ifadenin doğru olup olmadığını belirtmek için bir Bool değeri döndürür:
1 == 1   // 1, 1'e eşit olduğu için doğru
2 != 1   // 2, 1'e eşit olmadığı için doğru
2 > 1    // 2, 1'den büyük olduğu için doğru
1 < 2    // 1, 2'den küçük olduğu için doğru
1 >= 1   // 1, 1'den büyük veya ona eşit olduğu için doğru
2 <= 1   // 2, 1'den küçük veya ona eşit olmadığı için yanlış
//Karşılaştırma operatörleri genellikle if ifadesi gibi koşullu ifadelerde kullanılır:

let name = "world"
if name == "world" {
    print("hello, world")
} else {
    print("I'm sorry \(name), but I don't recognize you")
}
// "hello, world" yazdırır, çünkü name gerçekten "world" ile eşittir.
//Aynı türde ve aynı sayıda değere sahip iki tuple'ı karşılaştırabilirsiniz. Tuple'lar, karşılaştırma eşit olmayan iki değer bulana kadar soldan sağa, teker teker karşılaştırılır. Bu iki değer karşılaştırılır ve bu karşılaştırmanın sonucu, tuple karşılaştırmasının genel sonucunu belirler. Tüm öğeler eşitse, tuple'lar da eşittir. Örneğin:

(1, "zebra") < (2, "apple")   // 1, 2'den küçük olduğu için doğru; "zebra" ve "apple" karşılaştırılmaz
(3, "apple") < (3, "bird")    // 3, 3'e eşit olduğu ve "apple" "bird"den küçük olduğu için doğru
(4, "dog") == (4, "dog")      // doğru çünkü 4, 4'e eşittir ve "dog", "dog"a eşittir
//Yukarıdaki örnekte, ilk satırda soldan sağa karşılaştırma davranışını görebilirsiniz. 1, 2'den küçük olduğu için, (1, "zebra") tuple'lardaki diğer değerlerden bağımsız olarak (2, "apple")'dan küçük kabul edilir. "zebra"nın "apple"dan küçük olmaması önemli değildir, çünkü karşılaştırma zaten tuple'ların ilk öğeleri tarafından belirlenmiştir. Ancak, tuple'ların ilk öğeleri aynı olduğunda, ikinci öğeleri karşılaştırılır — bu, ikinci ve üçüncü satırda olan şeydir.

//Tuple'lar, yalnızca operatör ilgili tuple'lardaki her değere uygulanabiliyorsa, belirli bir operatörle karşılaştırılabilir. Örneğin, aşağıdaki kodda gösterildiği gibi, hem String hem de Int değerleri < operatörü kullanılarak karşılaştırılabileceğinden, (String, Int) türündeki iki tuple'ı karşılaştırabilirsiniz. Buna karşılık, (String, Bool) türündeki iki tuple, < operatörü Bool değerlerine uygulanamadığı için < operatörüyle karşılaştırılamaz.

("blue", -1) < ("purple", 1)        // Tamam: Değer true olarak değerlendirilir.
//("blue", false) < ("purple", true)  // Hata: Boolean değerlerini karşılaştırmak için < kullanılamaz.

//NOTE: Swift standart kütüphanesi, yedi elemandan az olan tuple'lar için tuple karşılaştırma operatörleri içerir. Yedi veya daha fazla eleman içeren tuple'ları karşılaştırmak için karşılaştırma operatörlerini kendiniz uygulamalısınız.
