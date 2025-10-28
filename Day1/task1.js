const barang = ["sepatu", "sepatu", "tas", "topi", "sepatu", "jaket"];
const barangtidakduplikat = [];

for (let i = 0; i < barang.length; i++) {
    const element = barang[i];
    let sudahada = false;

    for (let j = 0; j < barangtidakduplikat.length; j++) {
        if (barangtidakduplikat[j] === element) {
            sudahada = true;
            break
        }
    }

    if (!sudahada) {
        barangtidakduplikat.push(element);
    }
}
console.log(barangtidakduplikat);