import UIKit

// MARK: THE BASICS(TEMELLER)
/*
 * Swift değişmeyecek olan veriler için constant(let) kullanılmasını istiyor.
 * Tuple'lar veri grupları oluşturmanıza ve bunları aktarmanıza olanak tanır. Bir tuple kullanarak birçok veriyi tek bir bileşik veri olarak gönderebilirsiniz
 * Swift optional'ları kullanarak bir verinin yokluğunu işler. Optional türler kodun bir veriyi kullanmadan önce her zaman veri eksikliğini(null kontrolünü) kontrol etmesini sağlar.
 * Type safety'i sağlayan bir dildir. Type safety kodunuzun çalıştığı Değer Türleri konusunda net olmanızı sağlar.
 * Initialize edilmemiş bellek alanıyla ya da Initialize edilmemiş nesnelerle çalışmanızı engeller.
 * Swift, güvenlik kontrollerinin çoğunu kodunuzu oluştururken gerçekleştirir ve bazı durumlarda kodunuz çalışırken ek kontroller yapar.
 
*/

// MARK: Constants and Variables(Sabitler ve Değişkenler)
/*
 * Sabitler ve değişkenler, bir adı (örneğin maximumNumberOfLoginAttempts veya welcomeMessage) belirli bir türdeki bir değerle (örneğin 10 sayısı veya "Hello" dizesi) ilişkilendirir.
 * Sabitin değeri bir kez ayarlandıktan sonra değiştirilemez, ancak değişken ileride farklı bir değere ayarlanabilir.
*/

//MARK: Declaring Constants and Variables(Değişken ve Sabit Tanımlama)

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

//MARK: Type Annotations(Değişken/Sabit Türü Belirleme)

//Sabit veya değişkeni bildirirken, sabit veya değişkenin depolayabileceği değerlerin türünü netleştirmek için type annotations kullanabilirsiniz.

//Bu örnekte, welcomeMessage adlı değişkenin String değerlerini depolayabileceğini belirtmek için tür açıklaması sağlanmıştır:
var welcomeMessage: String

//"String türünde" ifadesi, "herhangi bir String değerini depolayabilir" anlamına gelir. Bunu, depolanabilecek "verinin türü" olarak düşünün.

//welcomeMessage değişkeni artık hata vermeden herhangi bir string değerine ayarlanabilir:
welcomeMessage = "Hello"

//Aynı türden birden fazla ilgili değişkeni tek bir satırda virgülle ayırarak ve son değişken adının ardından tek bir tür açıklaması ekleyerek tanımlayabilirsiniz:
var red, green, blue: Double

// WARNING: Pratikte tip açıklamaları yazmanız nadiren gerekir. Bir sabit veya değişken için tanımlandığı noktada bir başlangıç değeri verirseniz, Swift, Tip Güvenliği ve Tip Çıkarımında açıklandığı gibi, neredeyse her zaman o sabit veya değişken için kullanılacak türü çıkarabilir. Yukarıdaki welcomeMessage örneğinde, başlangıç değeri verilmemiştir ve bu nedenle welcomeMessage değişkeninin türü, başlangıç değerinden çıkarılmak yerine bir tip açıklamasıyla belirtilmiştir.

// MARK: Naming Constants and Variables(Değişken ve Sabit İsimlendirme)
//Sabit ve değişken isimleri, Unicode karakterleri dahil olmak üzere hemen hemen her karakteri içerebilir:
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

//Sabit ve değişken adları boşluk karakterleri, matematiksel semboller, oklar, özel kullanım Unicode skaler değerleri veya çizgi ve kutu çizim karakterleri içeremez. Ayrıca, adın başka bir yerinde sayılar bulunabilse de, sayılarla başlayamazlar.
//Belirli bir türde bir sabit veya değişken bildirdikten sonra, aynı adla tekrar bildiremez veya farklı türde değerleri depolamak için değiştiremezsiniz. Ayrıca, bir sabiti değişkene veya bir değişkeni sabite dönüştüremezsiniz.
//Bir sabit veya değişkene, ayrılmış bir Swift anahtar sözcüğüyle aynı adı vermek zorunda kalırsanız, anahtar sözcüğü isim olarak kullanırken ters eğik çizgi (`) ile çevreleyin. Ancak, başka seçeneğiniz yoksa anahtar sözcükleri isim olarak kullanmaktan kaçının.

//Mevcut bir değişkenin değerini, uyumlu bir türdeki başka bir değerle değiştirebilirsiniz. Bu örnekte, friendlyWelcome değişkeninin değeri "Hello!"'dan "Bonjour!"'ya değiştirilmiştir:
var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"
// friendlyWelcome şimdi "Bonjour!"

//Değişkenlerin aksine, sabitlerin değeri ayarlandıktan sonra değiştirilemez. Bunu yapmaya çalışmak, kodunuz derlendiğinde hata olarak bildirilir:
let languageName = "Swift"
//languageName = "Swift++"
// Derleme Zamanı Hatası: languageName Değiştirilemez

// MARK: Printing Constants and Variables(Sabitleri ve Değişkenleri Yazdırma)
//print(_:separator:terminator:) işleviyle bir sabitin veya değişkenin geçerli değerini yazdırabilirsiniz:
print(friendlyWelcome)
// Bonjour! yazacaktır.

//print(_:separator:terminator:) işlevi, bir veya daha fazla değeri uygun bir çıktıya yazdırmak için kullanılan genel bir işlevdir. Örneğin, Xcode'da print(_:separator:terminator:) işlevi, çıktısını Xcode'un "konsol" bölmesinde yazdırır. separator ve terminator parametrelerinin varsayılan değerleri vardır, bu nedenle bu işlevi çağırdığınızda bunları atlayabilirsiniz. Varsayılan olarak, işlev yazdırdığı satırı satır sonu ekleyerek sonlandırır. Bir değeri satır sonu olmadan yazdırmak için, sonlandırıcı olarak boş bir dize geçirin — örneğin, print(someValue, terminator: "").

//Swift, String bir ifade de sabit veya değişken değerini eklemek için string interpolation  kullanır:
print("The current value of friendlyWelcome is \(friendlyWelcome)")
// Console'a Yazar: "friendlyWelcome'ın güncel değeri Bonjour!"

// MARK: Comments(Yorum Satırları)
//Yorumları, kodunuza çalıştırılamayan metinler eklemek, kendinize not veya hatırlatma olarak kullanmak için kullanın. Yorumlar, kodunuz derlendiğinde Swift derleyicisi tarafından yok sayılır.

//Swift'teki yorumlar, C'deki yorumlara çok benzer. Tek satırlık yorumlar iki eğik çizgi (//) ile başlar:
// Yorum
//Çok satırlı yorumlar, eğik çizgi ve ardından yıldız işareti (/*) ile başlar ve yıldız işareti ve ardından eğik çizgi (*/) ile biter:
/*
 Bu da bir yorumdur.
 Ancak birden fazla satıra yayılmıştır.
 */

//C dilindeki çok satırlı yorumların aksine, Swift dilindeki çok satırlı yorumlar diğer çok satırlı yorumların içine yerleştirilebilir. İç içe geçmiş yorumları, çok satırlı bir yorum bloğu başlatıp ardından ilk blok içinde ikinci bir çok satırlı yorum başlatarak yazabilirsiniz. İkinci blok kapatıldıktan sonra ilk blok kapatılır:

/* Bu, ilk çok satırlı yorumun başlangıcıdır.
    /* Bu, ikinci, iç içe geçmiş çok satırlı yorumdur. */
Bu, ilk çok satırlı yorumun sonudur. */

//İç içe geçmiş çok satırlı yorumlar, kod zaten çok satırlı yorumlar içeriyor olsa bile, büyük kod bloklarını hızlı ve kolay bir şekilde yorumlayabilmenizi sağlar.

// MARK: Semicolon (Noktalı Virgül(;))
///Diğer birçok dilden farklı olarak, Swift kodunuzdaki her ifadenin sonuna noktalı virgül (;) yazmanızı gerektirmez, ancak isterseniz yazabilirsiniz. Ancak, tek bir satıra birden fazla ayrı ifade yazmak istiyorsanız noktalı virgül kullanmanız gerekir:
let cat = "🐱"; print(cat)
// 🐱 yazdırır.

// MARK: Integers(Tamsayılar)
//Integers, 42 ve -23 gibi kesirli bileşeni olmayan tam sayılardır.
//Integers, işaretli (pozitif, sıfır veya negatif) veya işaretsiz (pozitif veya sıfır) olabilir ve maksimum ve minimum değerleri boyutlarına (değerleri depolamak için kullanılan bit sayısı) bağlıdır.
//Integer türleri, adlarında boyutlarını ve işaretlerini içerir. Örneğin, 8 bitlik işaretsiz bir tamsayı UInt8 türündedir ve 32 bitlik işaretli bir tamsayı Int32 türündedir.
//Çoğu durumda, tam Integer boyutunu belirtmeniz gerekmediğinde, aşağıda açıklanan Int türünü kullanırsınız.
//Finans veya inşaat gibi düzenlemelere tabi bir alanda veya yüksek hassasiyetli sonuçların beklendiği bir alanda hesaplamalar yapmak için, o alanın gereksinimlerine göre yuvarlama ve kesme gibi davranışları uygulayan özel amaçlı bir sayısal tür gerekebilir.

//MARK: Integer Bounds(Tamsayı Sınırları)
//Her tamsayı türünün minimum ve maksimum değerlerine, min ve max özellikleriyle erişebilirsiniz:
let minValue = UInt8.min  // UInt8 minimum değer 0
let maxValue = UInt8.max  // UInt8 maximum değer 255

//MARK: Int
//Çoğu durumda, kodunuzda kullanmak için belirli bir tamsayı boyutu seçmenize gerek yoktur. Swift, mevcut platformun yerel kelime boyutu ile aynı boyutta olan ek bir tamsayı türü olan Int sağlar:
//32 bit platformda Int, Int32 ile aynı boyuttadır.
//64 bit platformda Int, Int64 ile aynı boyuttadır.

//Belirli bir tamsayı boyutu ile çalışmanız gerekmedikçe, kodunuzda tamsayı değerleri için her zaman Int kullanın. Bu, kod tutarlılığını ve birlikte çalışabilirliği artırır. 32 bit platformlarda bile Int, -2.147.483.648 ile 2.147.483.647 arasındaki herhangi bir değeri depolayabilir ve birçok tamsayı aralığı için yeterince büyüktür.

//MARK: UInt
//Swift ayrıca, mevcut platformun yerel kelime boyutu ile aynı boyutta olan, işaretsiz bir tamsayı türü olan UInt sağlar:
//32 bit platformda, UInt, UInt32 ile aynı boyuttadır.
//64 bit platformda, UInt, UInt64 ile aynı boyuttadır.

//UInt'i yalnızca, platformun yerel kelime boyutu ile aynı boyutta bir işaretsiz tamsayı türüne özellikle ihtiyaç duyduğunuzda kullanın. Bu durum söz konusu değilse, depolanacak değerlerin negatif olmadığı biliniyor olsa bile Int tercih edilir.
//Tamsayı değerleri için Int'in tutarlı bir şekilde kullanılması, kodların birlikte çalışabilirliğini artırır, farklı sayı türleri arasında dönüştürme ihtiyacını ortadan kaldırır ve Type Safety ve Type Inreference açıklandığı gibi tamsayı türü çıkarımına uyar.
