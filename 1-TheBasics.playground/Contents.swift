import UIKit

// MARK: TEMELLER
/*
 * Swift değişmeyecek olan veriler için constant(let) kullanılmasını istiyor.
 * Tuple'lar veri grupları oluşturmanıza ve bunları aktarmanıza olanak tanır. Bir tuple kullanarak birçok veriyi tek bir bileşik veri olarak gönderebilirsiniz
 * Swift optional'ları kullanarak bir verinin yokluğunu işler. Optional türler kodun bir veriyi kullanmadan önce her zaman veri eksikliğini(null kontrolünü) kontrol etmesini sağlar.
 * Type safety'i sağlayan bir dildir. Type safety kodunuzun çalıştığı Değer Türleri konusunda net olmanızı sağlar.
 * Initialize edilmemiş bellek alanıyla ya da Initialize edilmemiş nesnelerle çalışmanızı engeller.
 * Swift, güvenlik kontrollerinin çoğunu kodunuzu oluştururken gerçekleştirir ve bazı durumlarda kodunuz çalışırken ek kontroller yapar.
 
*/

// MARK: Sabitler ve Değişkenler
/*
 * Sabitler ve değişkenler, bir adı (örneğin maximumNumberOfLoginAttempts veya welcomeMessage) belirli bir türdeki bir değerle (örneğin 10 sayısı veya "Hello" dizesi) ilişkilendirir.
 * Sabitin değeri bir kez ayarlandıktan sonra değiştirilemez, ancak değişken ileride farklı bir değere ayarlanabilir.
*/

//MARK: Değişken ve Sabit Tanımlama

let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0


//Kodunuzda depolanan bir değer değişmeyecekse, her zaman let anahtar sözcüğüyle sabit olarak tanımlayın. Değişen değerleri depolamak için yalnızca değişkenleri kullanın.

//Bir sabit veya değişken tanımladığınızda, yukarıdaki örneklerde olduğu gibi, bu tanımlamanın bir parçası olarak ona bir değer verebilirsiniz. Alternatif olarak, ilk kez okuduğunuzda bir değere sahip olduğu garanti edildiği sürece, programın ilerleyen kısımlarında başlangıç değerini atayabilirsiniz.

var environment = "development"
let maximumNumberOfLoginAttempts2: Int
// maximumNumberOfLoginAttempts2 henüz bir değeri yok


if environment == "development" {
    maximumNumberOfLoginAttempts2 = 100
} else {
    maximumNumberOfLoginAttempts2 = 10
}
// Now maximumNumberOfLoginAttempts bir değere sahip ve okunabilir.

//Tek bir satırda virgülle ayrılmış birden fazla sabit veya değişken tanımlayabilirsiniz:
var x = 0.0, y = 0.0, z = 0.0

//MARK: Type Annotations(Değer Türü Belirleme)

//Sabit veya değişkeni bildirirken, sabit veya değişkenin depolayabileceği değerlerin türünü netleştirmek için type annotations kullanabilirsiniz.

//Bu örnekte, welcomeMessage adlı değişkenin String değerlerini depolayabileceğini belirtmek için tür açıklaması sağlanmıştır:
var welcomeMessage: String

//"String türünde" ifadesi, "herhangi bir String değerini depolayabilir" anlamına gelir. Bunu, depolanabilecek "verinin türü" olarak düşünün.

//welcomeMessage değişkeni artık hata vermeden herhangi bir string değerine ayarlanabilir:
welcomeMessage = "Hello"

//Aynı türden birden fazla ilgili değişkeni tek bir satırda virgülle ayırarak ve son değişken adının ardından tek bir tür açıklaması ekleyerek tanımlayabilirsiniz:
var red, green, blue: Double

// WARNING: Pratikte tip açıklamaları yazmanız nadiren gerekir. Bir sabit veya değişken için tanımlandığı noktada bir başlangıç değeri verirseniz, Swift, Tip Güvenliği ve Tip Çıkarımında açıklandığı gibi, neredeyse her zaman o sabit veya değişken için kullanılacak türü çıkarabilir. Yukarıdaki welcomeMessage örneğinde, başlangıç değeri verilmemiştir ve bu nedenle welcomeMessage değişkeninin türü, başlangıç değerinden çıkarılmak yerine bir tip açıklamasıyla belirtilmiştir.
