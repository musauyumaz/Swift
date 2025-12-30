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


