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

//MARK: Floating-Point Numbers - Ondalıklı Sayılar
//Float sayılar, 3.14159, 0.1 ve -273.15 gibi kesirli bir bileşene sahiptir.
//Swift, farklı boyutlarda Integer'lar olduğu gibi, farklı boyutlarda sayıları destekleyen çeşitli Float türleri sunar. Kesin bir boyut belirtmeniz gerekmiyorsa Double kullanın. Aksi takdirde, Float16 veya Float80 gibi adında gerekli boyutu içeren türü kullanın.
//Float matematiği için yaygın terminolojiye göre, Float 32 bit ve Double 64 bit kullanır. Bu türleri Float32 veya Float64 olarak da yazabilirsiniz. Örneğin, grafik kodu genellikle GPU'nun en hızlı veri türüne uymak için Float kullanır. Bazı ondalıklı sayılar yalnızca belirli platformlar tarafından desteklenir, ancak Float ve Double tüm platformlarda kullanılabilir.

//KRİTİK: Floating-Point Kesin Değildir!
let a = 10
let b = 20
let result = a + b  // 30 - KESINLIKLE 30

let c: Float = 0.1
let d: Float = 0.2
let result2 = c + d  // 0.30000000000000004 gibi bir şey!
//NEDEN? Çünkü bilgisayarlar ikili (binary) sistemde çalışır ve bazı ondalık sayıları tam olarak temsil edemez.

//MARK: Type Safety and Type Inference(Tip Güvenliği ve Tip Çıkarımı)
//Swift programındaki her değerin bir türü vardır. Constants, variables ve properties dahil olmak üzere, bir değeri depoladığınız her yerin de bir türü vardır. Türü, tür açıklaması kullanarak açıkça yazabilir veya Swift, başlangıç değerinden türü çıkarabilir.
//Kodunuzda bir değer sağladığınız her yerde, bu değerin türü onu kullandığınız yerle eşleşmelidir. Örneğin, kodunuzun bir kısmı String gerektiriyorsa, yanlışlıkla Int geçiremezsiniz. Bu tür kontroller Swift'i tür güvenli bir dil yapar.
//Tip güvenli bir dil, kodunuzun çalıştığı değerlerin tipleri konusunda net olmanızı teşvik eder.
//Bir tipteki değerler asla başka bir tipe explicit olarak dönüştürülmez. Ancak, bazı tipler açıkça dönüştürülebilir.
//Kod oluştururken Swift, kodun tip güvenliğini kontrol eder ve uyuşmayan tipleri hata olarak işaretler.
//Tip denetimi, farklı türdeki değerlerle çalışırken hataları önlemenize yardımcı olur. Ancak bu, bildirdiğiniz her sabit ve değişkenin türünü belirtmeniz gerektiği anlamına gelmez. İhtiyacınız olan değerin türünü belirtmezseniz, Swift uygun türü belirlemek için tür çıkarımını kullanır. Tür çıkarımına göre, derleyici kodunuzu derlerken sağladığınız değerleri inceleyerek belirli bir ifadenin türünü otomatik olarak çıkarabilir.
//Tip çıkarımından dolayı, Swift, C veya Objective-C gibi dillerden çok daha az tip beyanı gerektirir. Sabitler ve değişkenler hala açıkça tiplendirilir, ancak bunların tipini belirleme işinin çoğu sizin için yapılır.
//Tip çıkarım, bir sabit veya değişkeni başlangıç değeriyle beyan ettiğinizde özellikle yararlıdır. Bu genellikle, sabit veya değişkeni beyan ettiğiniz noktada ona bir literal değer (veya literal) atayarak yapılır. (Literal değer, aşağıdaki örneklerdeki 42 ve 3.14159 gibi kaynak kodunuzda doğrudan görünen bir değerdir.
//Örneğin, yeni bir sabite türünü belirtmeden 42 literal değeri atarsanız, Swift, sabitin bir tamsayı gibi görünen bir sayı ile başlatmış olduğunuz için, sabitin Int olmasını istediğinizi çıkarır:
let meaningOfLife = 42
// meaningOfLife Int türündedir.

//Aynı şekilde, ondalıklı sayı için bir tür belirtmezseniz, Swift bir Double oluşturmak istediğinizi çıkarır:
let pi = 3.14159
// pi'nin türü Double olarak çıkarılır
//Swift, ondalıklı sayıların türünü çıkarırken her zaman Double'ı (Float yerine) seçer.

//Bir ifadede tamsayı ve ondalıklı sayı sabitlerini birleştirirseniz, bağlamdan Double türü çıkarılır:
let anotherPi = 3 + 0.14159
// anotherPi de Double türü olarak çıkarılır
//3 sabit değerinin kendisinde açık bir türü yoktur, bu nedenle toplama işleminin bir parçası olarak ondalıklı sayı sabitinin varlığından uygun bir Double çıktı türü çıkarılır.

//MARK: Numeric Literals(Sayısal Sabitler)
//Tamsayı sabitler şu şekilde yazılabilir:
//Önek içermeyen ondalık sayı
//0b öneki ile ikili sayı
//0o öneki ile sekizlik sayı
//0x öneki ile onaltılık sayı
//Bu tamsayı sabitlerinin tümü ondalık değeri 17'dir:

let decimalInteger = 17
let binaryInteger = 0b10001       // ikili tabanda 17
let octalInteger = 0o21           // sekizlik tabanda 17
let hexadecimalInteger = 0x11     // onaltılık tabanda 17

//Ondalıklı sayılar ondalık (önek olmadan) veya onaltılık (0x öneki ile) olabilir. Ondalık noktanın her iki yanında daima bir sayı (veya onaltılık sayı) bulunmalıdır. Onluk tabandaki ondalıklı sayılar isteğe bağlı olarak büyük veya küçük harf e ile gösterilen bir üs içerebilir; onaltılık Ondalık sayılar ise büyük veya küçük harf p ile gösterilen bir üs içermelidir.

//Üssü x olan ondalık sayılar için, taban sayısı 10ˣ ile çarpılır:
//1.25e2, 1.25 x 10² veya 125.0 anlamına gelir.
//1.25e-2, 1.25 x 10⁻² veya 0.0125 anlamına gelir.

//X üssü olan onaltılık tabanda sayılar için, taban sayısı 2ˣ ile çarpılır:
//0xFp2, 15 x 2² veya 60.0 anlamına gelir.
//0xFp-2, 15 x 2⁻² veya 3,75 anlamına gelir.

//Bu Ondalıklı sayı sabitlerinin tümü 12,1875 ondalık değerine sahiptir:
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

//Sayısal sabitler, okunmasını kolaylaştırmak için ek biçimlendirme içerebilir. Hem tamsayılar hem de ondalıklı sayılar, okunabilirliği artırmak için ek sıfırlarla doldurulabilir ve alt çizgi içerebilir. Her iki biçimlendirme türü de sabitin temel değerini etkilemez:
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

//MARK: Numeric Type Conversion(Sayısal Tür Dönüştürme)
//Kodunuzdaki tüm genel amaçlı tamsayı sabitleri ve değişkenleri için, negatif olmadığı biliniyor olsa bile Int türünü kullanın. Günlük durumlarda varsayılan tamsayı türünü kullanmak, tamsayı sabitlerinin ve değişkenlerinin kodunuzda hemen birlikte çalışabilir olduğu ve tamsayı sabit değerleri için çıkarılan türle eşleşeceği anlamına gelir.

//Diğer tamsayı türlerini yalnızca, dış kaynaklardan gelen açıkça boyutlandırılmış veriler nedeniyle, performans, bellek kullanımı veya diğer gerekli optimizasyonlar için, elinizdeki görev için özel olarak gerekli olduklarında kullanın. Bu durumlarda açıkça boyutlandırılmış türleri kullanmak, kazara oluşan değer taşmalarını yakalamaya yardımcı olur ve kullanılan verilerin doğasını dolaylı olarak belgeler.

//MARK: Integer Conversion(Tamsayı Dönüştürme)
//Bir tamsayı sabiti veya değişkeninde saklanabilecek sayı aralığı, her sayısal tür için farklıdır. Bir Int8 sabiti veya değişkeni -128 ile 127 arasındaki sayıları saklayabilirken, bir UInt8 sabiti veya değişkeni 0 ile 255 arasındaki sayıları saklayabilir.
//Boyutlu bir tamsayı türündeki sabit veya değişkene sığmayan bir sayı, kodunuz derlendiğinde hata olarak bildirilir:
//let cannotBeNegative: UInt8 = -1
// UInt8 negatif sayıları depolayamaz, bu nedenle bir hata bildirilir
//let tooBig: Int8 = Int8.max + 1
// Int8 maksimum değerinden büyük bir sayıyı depolayamaz,
// bu nedenle bir hata bildirilir

//Her sayısal tür farklı bir değer aralığını depolayabileceğinden, sayısal tür dönüştürmeyi duruma göre seçmeniz gerekir. Bu seçmeli yaklaşım, gizli dönüştürme hatalarını önler ve kodunuzda tür dönüştürme amaçlarını açık hale getirmeye yardımcı olur.

//Belirli bir sayı türünü başka bir türe dönüştürmek için, mevcut değerle istenen türde yeni bir sayı başlatırsınız.
//Aşağıdaki örnekte, twoThousand sabiti UInt16 türündedir, oysa one sabiti UInt8 türündedir. Aynı türde olmadıkları için doğrudan birbirlerine eklenemezler. Bunun yerine, bu örnekte UInt16(one) çağrısı yapılarak one değerine sahip yeni bir UInt16 başlatılır ve bu değer orijinal değerin yerine kullanılır:

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)
//Toplamın her iki tarafı da artık UInt16 türünde olduğundan, toplama işlemi yapılabilir. Çıktı sabiti (twoThousandAndOne), iki UInt16 değerinin toplamı olduğu için UInt16 türü olduğu sonucuna varılır.
//SomeType(ofInitialValue)(Örneğin UInt16(one)), Swift türünün başlatıcısını çağırmak ve bir başlangıç değeri iletmek için varsayılan yoldur. Arka planda, UInt16 bir UInt8 değerini kabul eden bir constructor'a sahiptir ve bu constructor, mevcut bir UInt8'den yeni bir UInt16 oluşturmak için kullanılır. Ancak, buraya herhangi bir tür aktaramazsınız — UInt16'nın bir constructor sağladığı bir tür olması gerekir. Yeni türleri (kendi tür tanımlarınız dahil) kabul eden constructorlar sağlamak için mevcut türleri genişletme konusu, Uzantılar bölümünde ele alınmaktadır.
//MARK: Integer and Floating-Point Conversion(Tamsayı ve Ondalıklı Sayı Dönüştürme)
//Integer ve Double/Float türleri arasındaki dönüşümler açıkça belirtilmelidir:
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi2 = Double(three) + pointOneFourOneFiveNine
// pi, 3.14159'a eşittir ve Double türü olduğu çıkarılır
//Burada, sabit three değeri, Double türünde yeni bir değer oluşturmak için kullanılır, böylece toplamanın her iki tarafı da aynı türdendir. Bu dönüştürme yapılmazsa, toplama işlemine izin verilmez.

//Double'dan integer'a dönüştürme de açıkça belirtilmelidir. Bir tamsayı türü, Double veya Float değeriyle başlatılabilir:
let integerPi = Int(pi)
// integerPi, 3'e eşittir ve Int türü olduğu çıkarılır.
//Ondalıklı sayı değerleri, bu şekilde yeni bir tamsayı değerini başlatmak için kullanıldığında her zaman kesilir. Bu, 4,75'in 4'e ve -3,9'un -3'e dönüştüğü anlamına gelir.
//Sayısal sabitleri ve değişkenleri birleştirme kuralları, sayısal sabitlerin kurallarından farklıdır. Sabit değer 3, sabit değer 0,14159'a doğrudan eklenebilir, çünkü sayısal sabitlerin kendileri açık bir türe sahip değildir. Türleri, yalnızca derleyici tarafından değerlendirildikleri noktada çıkarılır.

//MARK: Type Aliases(Tür Takma Adları)
//Type Aliases, mevcut bir tür için alternatif bir ad tanımlar. Type Aliases'ı 'typealias' anahtar sözcüğüyle tanımlarsınız.

//Type Aliases, mevcut bir türü bağlam açısından daha uygun bir adla belirtmek istediğinizde kullanışlıdır. Örneğin, harici bir kaynaktan belirli boyuttaki verilerle çalışırken:

typealias AudioSample = UInt16
//Bir Type Aliases tanımladıktan sonra, bu takma adı orijinal adın kullanılabileceği her yerde kullanabilirsiniz:

var maxAmplitudeFound = AudioSample.min
// maxAmplitudeFound artık 0'dır
//Burada AudioSample, UInt16 için bir takma ad olarak tanımlanmıştır. Bir takma ad olduğu için AudioSample.min çağrısı aslında UInt16.min'i çağırır ve bu da maxAmplitudeFound değişkeni için 0 başlangıç değeri sağlar.

//MARK: Booleans(Mantıksal Değerler)
//Swift, Bool adlı temel bir Booleans türüne sahiptir. Booleans değerleri, yalnızca doğru veya yanlış olabileceğinden mantıksal olarak adlandırılır. Swift, true ve false olmak üzere iki Booleans sabit değeri sağlar:

let orangesAreOrange = true
let turnipsAreDelicious = false
//orangesAreOrange ve turnipsAreDelicious türleri, Booleans sabit değerlerle başlatıldıkları için Bool olarak çıkarılmıştır. Yukarıdaki Int ve Double ile olduğu gibi, sabitleri veya değişkenleri oluşturur oluşturmaz true veya false olarak ayarlarsanız, bunları Bool olarak bildirmenize gerek yoktur.

//Boolean değerleri, if ifadesi gibi koşullu ifadelerle çalışırken özellikle kullanışlıdır:
if turnipsAreDelicious {
    print("Mmm, lezzetli şalgamlar!")
} else {
    print("Iyy, şalgamlar iğrenç.")
}
// "Iyy, şalgamlar iğrenç." yazdırır.
//if ifadesi gibi koşullu ifadeler, Kontrol Akışı bölümünde daha ayrıntılı olarak ele alınmaktadır.
//Swift'in tür güvenliği, Boolean olmayan değerlerin Bool ile değiştirilmesini engeller. Aşağıdaki örnek, derleme zamanı hatası bildirir:
let i = 1
//if i {
    // bu örnek derlenmez ve hata bildirir
//}

//Ancak, aşağıdaki alternatif örnek geçerlidir:
let i2 = 1
if i2 == 1 {
    // bu örnek başarıyla derlenir
}
//i == 1 karşılaştırmasının sonucu Bool türündedir ve bu nedenle ikinci örnek tür denetiminden geçer. i == 1 gibi karşılaştırmalar Temel İşlemciler bölümünde ele alınmaktadır.
//Swift'teki diğer tür güvenliği örneklerinde olduğu gibi, bu yaklaşım da kazara hataları önler ve belirli bir kod bölümünün amacının her zaman açık olmasını sağlar.

//MARK: Tuples

//Tuple'lar birden fazla değeri tek bir bileşik değer halinde gruplandırır. Tuple içindeki değerler herhangi bir türde olabilir ve birbirleriyle aynı türde olmak zorunda değildir.

//Bu örnekte, (404, "Not Found") bir HTTP durum kodunu tanımlayan bir tuple'dır. HTTP durum kodu, bir web sayfasını her talep ettiğinizde web sunucusu tarafından döndürülen özel bir değerdir. Var olmayan bir web sayfasını talep ettiğinizde 404 Bulunamadı durum kodu döndürülür.

let http404Error = (404, "Bulunamadı")
// http404Error, (Int, String) türündedir ve (404, "Bulunamadı") değerine eşittir.

//(404, "Bulunamadı") tuple, bir Int ve bir String'i bir araya getirerek HTTP durum koduna iki ayrı değer verir: bir sayı ve insan tarafından okunabilir bir açıklama. "(Int, String) türünde bir tuple" olarak tanımlanabilir.

//Herhangi bir tür permütasyonundan tuple'lar oluşturabilirsiniz ve bunlar istediğiniz kadar farklı tür içerebilir. (Int, Int, Int) veya (String, Bool) türünde bir tuple'a veya ihtiyacınız olan başka herhangi bir permütasyona sahip olmanıza engel olan hiçbir şey yoktur.

//Bir tuple'ın içeriğini ayrı sabitlere veya değişkenlere ayrıştırabilir ve bunlara normal şekilde erişebilirsiniz:
let (statusCode, statusMessage) = http404Error
print("Durum kodu \(statusCode)")
// "Durum kodu 404" yazdırır.
print("Durum mesajı \(statusMessage)")
// "Durum mesajı Bulunamadı" yazdırır.

//Tuple'ın değerlerinden sadece bazılarına ihtiyacınız varsa, tuple'ı ayrıştırırken alt çizgi (_) ile tuple'ın bazı kısımlarını yok sayın:
let (justTheStatusCode, _) = http404Error
print("Durum kodu \(justTheStatusCode)")
// "Durum kodu 404" yazdırır.

//Alternatif olarak, sıfırdan başlayan indeks numaralarını kullanarak tuple'daki tek tek öğe değerlerine erişebilirsiniz:
print("Durum kodu \(http404Error.0)")
// "Durum kodu 404" yazdırır.
print("Durum mesajı \(http404Error.1)")
// "Durum mesajı Bulunamadı" yazdırır.

//Tuple tanımlandığında, tuple içindeki tek tek öğelere isim verebilirsiniz:
let http200Status = (statusCode: 200, description: "OK")

//Bir tuple içindeki öğelere isim verirseniz, öğe isimlerini kullanarak bu öğelerin değerlerine erişebilirsiniz:
print("Durum kodu \(http200Status.statusCode)")
// "Durum kodu 200" yazdırır.
print("Durum mesajı \(http200Status.description)")
// "Durum mesajı Tamam" yazdırır.

//Tuple'lar özellikle işlevlerin dönüş değerleri olarak kullanışlıdır. Bir web sayfasını almaya çalışan bir işlev, sayfanın alınmasının başarılı olup olmadığını açıklamak için (Int, String) tuple türünü döndürebilir. İşlev, her biri farklı türde olan iki farklı değere sahip bir tuple döndürerek, tek bir türden tek bir değer döndürebileceğinden daha yararlı bilgiler sağlar.

//NOTE: Tuple'lar, ilgili değerlerin basit grupları için kullanışlıdır. Karmaşık veri yapılarının oluşturulması için uygun değildir. Veri yapınız daha karmaşık olacaksa, tuple yerine sınıf veya yapı olarak modelleyin.

//MARK: Optionals
//Değerin bulunmayabileceği durumlarda Optionals kullanırsınız. Optionals iki olasılığı temsil eder: Belirtilen türde bir değer vardır ve bu değere erişmek için Optionals'ı açabilirsiniz ya da hiç değer yoktur.

//Eksik olabilecek bir değer örneği olarak, Swift'in Int türü, String değerini Int değerine dönüştürmeye çalışan bir constructor'a sahiptir. Ancak, yalnızca bazı dizeler tamsayılara dönüştürülebilir. "123" dizesi sayısal değer 123'e dönüştürülebilir, ancak "hello, world" dizesi karşılık gelen bir sayısal değere sahip değildir. Aşağıdaki örnekte, başlatıcı kullanılarak bir String'i Int'e dönüştürmeye çalışılmıştır:
let possibleNumber = "123"
let convertedNumber: Int? = Int(possibleNumber)
// convertedNumber'ın türü "optional Int" dir.

//Yukarıdaki koddaki başlatıcı başarısız olabileceğinden, Int yerine isteğe bağlı bir Int döndürür.

//İsteğe bağlı bir tür yazmak için, isteğe bağlı türün adının arkasına soru işareti (?) yazarsınız — örneğin, isteğe bağlı Int türünün türü Int? 'dir. İsteğe bağlı Int her zaman bir Int değeri veya hiç değer içermez. Bool veya String değeri gibi başka hiçbir şey içeremez.


//MARK: nil
//Özel nil değerini atayarak isteğe bağlı bir değişkeni değersiz bir duruma ayarlayabilirsiniz:

var serverResponseCode: Int? = 404
// serverResponseCode, 404 değerinde gerçek bir Int değeri içerir.
serverResponseCode = nil
// serverResponseCode artık hiçbir değer içermez.

//Varsayılan bir değer sağlamadan isteğe bağlı bir değişken tanımlarsanız, değişken otomatik olarak nil olarak ayarlanır:
var surveyAnswer: String?
// surveyAnswer otomatik olarak nil olarak ayarlanır

//Bir isteğe bağlı değişkenin bir değer içerip içermediğini öğrenmek için if deyimini kullanarak isteğe bağlı değişkeni nil ile karşılaştırabilirsiniz. Bu karşılaştırmayı "eşittir" işleci (==) veya "eşit değildir" işleci (!=) ile gerçekleştirirsiniz.

//İsteğe bağlı bir değişken bir değer içeriyorsa, nil ile "eşit değil" olarak kabul edilir:
let possibleNumber1 = "123"
let convertedNumber1 = Int(possibleNumber1)

if convertedNumber1 != nil {
    print("convertedNumber1 bazı tamsayı değerleri içerir.")
}
// "convertedNumber bazı tamsayı değerleri içerir." yazdırır.

//Nil'i zorunlu olmayan sabitler veya değişkenlerle kullanamazsınız. Kodunuzdaki bir sabit veya değişkenin belirli koşullar altında değer olmadan çalışması gerekiyorsa, onu uygun türde bir isteğe bağlı değer olarak bildirin. Zorunlu olmayan bir değer olarak bildirilen bir sabit veya değişkenin asla nil değeri içermeyeceği garanti edilir. Zorunlu olmayan bir değere nil atamaya çalışırsanız, derleme zamanı hatası alırsınız.

//İsteğe bağlı ve isteğe bağlı olmayan değerlerin bu şekilde ayrılması, hangi bilgilerin eksik olabileceğini açıkça işaretlemenizi sağlar ve eksik değerleri işleyen kod yazmayı kolaylaştırır. İsteğe bağlı bir değeri yanlışlıkla isteğe bağlı olmayan bir değermiş gibi ele alamazsınız, çünkü bu hata derleme sırasında bir hata üretir. Değeri açtıktan sonra, o değerle çalışan diğer kodların hiçbirinin nil olup olmadığını kontrol etmesi gerekmez, bu nedenle kodunuzun farklı bölümlerinde aynı değeri tekrar tekrar kontrol etmenize gerek yoktur.

/*
 İsteğe bağlı bir değere eriştiğinizde, kodunuz her zaman hem nil hem de nil olmayan durumu işler. Bir değer eksik olduğunda, aşağıdaki bölümlerde açıklanan birkaç şey yapabilirsiniz:
 * Değer nil olduğunda, değer üzerinde işlem yapan kodu atlayın.
 * nil değerini yaymak için nil döndürün veya İsteğe Bağlı Zincirleme bölümünde açıklanan ?. operatörünü kullanın.
 * ?? operatörünü kullanarak bir yedek değer sağlayın.
 * ! operatörünü kullanarak programın yürütülmesini durdurun.
*/

//NOTE: Objective-C'de nil, var olmayan bir nesneye işaret eden bir işaretçidir. Swift'te nil bir işaretçi değildir — belirli bir türdeki değerin yokluğudur. Nesne türleri dışında, herhangi bir türdeki isteğe bağlı değişkenler de nil olarak ayarlanabilir.

//MARK: Optional Binding
//Optional Binding, bir optional değişkenin bir değer içerip içermediğini öğrenmek ve içerdiği takdirde bu değeri geçici bir sabit veya değişken olarak kullanılabilir hale getirmek için kullanılır. Optional Binding, if, guard ve while deyimleriyle birlikte kullanılarak optional bir değişkenin içindeki bir değeri kontrol etmek ve bu değeri tek bir eylemin parçası olarak bir sabit veya değişkene çıkarmak için kullanılabilir.

//if ifadesi için isteğe bağlı bağlamayı aşağıdaki gibi yazın:
/*
 if let <#constantName#> = <#someOptional#> {
    <#statements#>
 }
*/
//Optionals bölümündeki possibleNumber örneğini, zorla açma yerine isteğe bağlı bağlama kullanacak şekilde yeniden yazabilirsiniz:
if let actualNumber = Int(possibleNumber) {
    print("\"\(possibleNumber)\" dizesi, \(actualNumber) tamsayı değerine sahiptir")
} else {
    print("\"\(possibleNumber)\" dizesi tamsayıya dönüştürülemedi")
}
// "123" dizesi, 123 tamsayı değerine sahiptir" yazdırır.

//Bu kod şu şekilde okunabilir:
//"Int(possibleNumber) tarafından döndürülen optional Int bir değer içeriyorsa, actualNumber adlı yeni bir sabiti isteğe bağlı öğede bulunan değere ayarlayın."
//Dönüştürme başarılı olursa, actualNumber sabiti if ifadesinin ilk dalında kullanılabilir hale gelir. Bu sabit, isteğe bağlı öğede bulunan değerle önceden başlatılmıştır ve karşılık gelen optional olmayan türe sahiptir. Bu durumda, possibleNumber'ın türü Int? olduğundan, actualNumber'ın türü Int olur.

//İçerdiği değere eriştikten sonra orijinal, Optional sabit veya değişkene başvurmanız gerekmiyorsa, yeni sabit veya değişken için aynı adı kullanabilirsiniz:
let myNumber = Int(possibleNumber)
// Burada, myNumber Optional bir tamsayıdır.
if let myNumber = myNumber {
    // Burada, myNumber Optional olmayan bir tamsayıdır.
    print("My number is \(myNumber)")
}
// "My number is 123" yazdırır.

//Bu kod, önceki örnekteki kod gibi, myNumber'ın bir değer içerip içermediğini kontrol ederek başlar. myNumber bir değer içeriyorsa, myNumber adlı yeni bir sabitin değeri bu değere ayarlanır. if ifadesinin gövdesinde, myNumber yazmak bu yeni zorunlu olmayan sabiti ifade eder. if ifadesinden önce veya sonra myNumber yazmak, orijinal isteğe bağlı tamsayı sabitini ifade eder.

//Bu tür kodlar çok yaygın olduğundan, Optional bir değeri açmak için daha kısa bir yazım kullanabilirsiniz: Sadece açtığınız sabitin veya değişkenin adını yazın. Yeni, açılmış sabit veya değişken, Optional değerle aynı adı örtük olarak kullanır.

if let myNumber {
    print("My number is \(myNumber)")
}
// "My number is 123" yazdırır.

//Optional bağlama ile hem sabitleri hem de değişkenleri kullanabilirsiniz. if ifadesinin ilk dalında myNumber değerini değiştirmek isterseniz, bunun yerine if var myNumber yazabilirsiniz ve Optional içindeki değer sabit yerine değişken olarak kullanılabilir hale gelir. if ifadesinin gövdesinde myNumber üzerinde yaptığınız değişiklikler yalnızca o yerel değişken için geçerlidir, açtığınız orijinal isteğe bağlı sabit veya değişken için geçerli değildir.

//Tek bir if ifadesine, virgülle ayırarak istediğiniz kadar Optional bağlama ve Boolean koşulu ekleyebilirsiniz. Optional bağlamalardaki değerlerden herhangi biri nil ise veya herhangi bir Boolean koşulu false olarak değerlendirilirse, if ifadesinin tüm koşulu false olarak kabul edilir. Aşağıdaki if ifadeleri eşdeğerdir:

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
// "4 < 42 < 100" yazdırır.


if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
// "4 < 42 < 100" yazdırır.

//if deyiminde Optional bağlama ile oluşturulan sabitler ve değişkenler yalnızca if deyiminin gövdesi içinde kullanılabilir. Buna karşılık, guard deyimi ile oluşturulan sabitler ve değişkenler, guard deyimini izleyen kod satırlarında kullanılabilir.

//MARK: Providing a Fallback Value(Yedek Değer Atama)
//Eksik bir değeri işlemenin başka bir yolu da nil-coalescing operatörü (??) kullanarak varsayılan bir değer sağlamaktır. ?? solundaki isteğe bağlı değer nil değilse, bu değer açılır ve kullanılır. Aksi takdirde, ?? sağındaki değer kullanılır. Örneğin, aşağıdaki kod, bir isim belirtilmişse bu isimle birini selamlar ve isim nil ise genel bir selamlama kullanır.

let name: String? = "nil"
let greeting = "Hello, " + (name ?? "friend") + "!"
print(greeting)
// "Hello, friend!" yazdırır

//MARK: Force Unwrapping()
//nil, programcı hatası veya bozuk durum gibi kurtarılamaz bir hatayı temsil ettiğinde, isteğe bağlı öğenin adının sonuna ünlem işareti (!) ekleyerek altta yatan değere erişebilirsiniz. Bu, isteğe bağlı öğenin değerini Force Unwrapping olarak bilinir. Nil olmayan bir değeri Force Unwrapping yaptığınızda, sonuç açılmış değeridir. Nil değerini Force Unwrapping yapmak, çalışma zamanı hatasını tetikler.

//! işareti, aslında fatalError(_:file:line:) ifadesinin daha kısa bir yazılış şeklidir. Örneğin, aşağıdaki kod iki eşdeğer yaklaşımı göstermektedir:

let possibleNumber2 = "123"
let convertedNumber2 = Int(possibleNumber2)


let number = convertedNumber2!

guard let number = convertedNumber2 else {
    fatalError("Sayı geçersiz")
}
//Yukarıdaki kodun her iki versiyonu da convertedNumber2'ın her zaman bir değer içermesine bağlıdır. Bu gereksinimi kodun bir parçası olarak yazmak, yukarıdaki yaklaşımlardan herhangi birini kullanarak, kodunuzun gereksinimin çalışma zamanında doğru olup olmadığını kontrol etmesini sağlar.

//MARK: Implicitly Unwrapped Optionals
//Yukarıda açıklandığı gibi, Optionals değişkenler bir sabit veya değişkenin "değeri olmamasına" izin verildiğini gösterir. Optionals değişkenler, bir if deyimi ile bir değerin var olup olmadığını kontrol edilebilir ve varsa, Optional binding ile koşullu olarak açığa çıkarılabilir.

//Bazen, bir programın yapısından, bir Optional değişkenin ilk kez ayarlandıktan sonra her zaman bir değere sahip olacağı açıktır. Bu durumlarda, Optional değişkenin değerine her erişildiğinde kontrol etme ve açma gerekliliğini ortadan kaldırmak yararlıdır, çünkü her zaman bir değere sahip olduğu güvenle varsayılabilir.

//Bu tür Optionals'lar, Implicitly Unwrapped Optionals olarak tanımlanır. Implicitly Unwrapped Optionals'ı, Optionals hale getirmek istediğiniz türün arkasına soru işareti (String?) yerine ünlem işareti (String!) koyarak yazarsınız. Optionals'ı kullanırken Optional adının arkasına ünlem işareti koymak yerine, Optional'ı bildirirken Optional türünün arkasına ünlem işareti koyarsınız.

//Implicitly Unwrapped Optionals'lar, Optional bir değerin ilk tanımlandığında varlığı doğrulandığında ve bundan sonra her an var olduğu kesin olarak varsayılabildiğinde kullanışlıdır. Swift'te Implicitly Unwrapped Optionals'ların birincil kullanımı, Sahipsiz Referanslar ve Implicitly Unwrapped Optionals Özellikler bölümünde açıklandığı gibi, nesne oluşturma sırasında gerçekleşir.

//Bir değişkenin daha sonra nil olma ihtimali varsa, Implicitly Unwrapped Optionals değişken kullanmayın. Bir değişkenin ömrü boyunca nil değerini kontrol etmeniz gerekiyorsa, her zaman normal Optional tür kullanın.

//Implicitly Unwrapped Optionals, arka planda normal Optional'dır, ancak her erişildiğinde Optional değeri açmaya gerek kalmadan Optional olmayan bir değer gibi de kullanılabilir. Aşağıdaki örnek, örtülü değerlerine açık bir String olarak erişildiğinde Optional bir string ile Implicitly Unwrapped Optionals bir string arasındaki davranış farkını göstermektedir:
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // Açıkça açılması gerekir


let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // Otomatik olarak açılır

//Implicitly Unwrapped Optionals değişkeni, gerektiğinde Optionals değişkenin zorla açılmasına izin veren bir değişken olarak düşünebilirsiniz. Örtük olarak açılmış isteğe bağlı bir değer kullandığınızda, Swift önce onu sıradan bir isteğe bağlı değer olarak kullanmaya çalışır; isteğe bağlı olarak kullanılamazsa, Swift değeri zorla açar. Yukarıdaki kodda, implicitString'in açık, isteğe bağlı olmayan String türüne sahip olması nedeniyle, optional değer assumedString, değeri implicitString'e atanmadan önce zorla açılır. Aşağıdaki kodda, optionalString'in açık bir türü olmadığı için sıradan bir isteğe bağlıdır.

let optionalString = assumedString
// optionalString'in türü "String?" olup, assumedString zorla açılmamıştır.

//Örtük olarak açılmış bir isteğe bağlı değer nil ise ve bu değerin sarılmış değerine erişmeye çalışırsanız, bir çalışma zamanı hatası tetiklenir. Sonuç, değer içermeyen normal bir isteğe bağlı değeri zorla açmak için ünlem işareti yazmanızla tamamen aynıdır.

//Örtük olarak açılmış bir isteğe bağlı değerin nil olup olmadığını, normal bir isteğe bağlı değeri kontrol ettiğiniz şekilde kontrol edebilirsiniz:
if assumedString != nil {
    print(assumedString!)
}
// "An implicitly unwrapped optional string." yazdırır.

//Tek bir ifadede değerini kontrol etmek ve açmak için, isteğe bağlı bağlama ile örtük olarak açılmış isteğe bağlı bir öğeyi de kullanabilirsiniz:
if let definiteString = assumedString {
    print(definiteString)
}
// "An implicitly unwrapped optional string." yazdırır.
