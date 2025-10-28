const barang = ["sepatu", "sepatu", "tas", "topi", "sepatu", "jaket"];
const barangtidakduplikat = [];

for (let i = 0; i < barang.length; i++) {
    const element = barang[i];
    barangtidakduplikat.push(element);

    if (barangtidakduplikat[i] === element) {
        barangtidakduplikat.pop();
    }

}
console.log(barangtidakduplikat);