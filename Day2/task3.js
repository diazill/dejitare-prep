const pesanan = [
    { id: 1, nama: "Adit", alamat: "Solo", status: "paid" },
    { id: 2, nama: "Budi", alamat: "Jogja", status: "pending" },
    { id: 3, nama: "Cici", alamat: "Klaten", status: "paid" }
];

const hasil = [];


function buatLabel(pesanan) {
    for (let item in pesanan) {

        if (pesanan[item].status == "paid") {
            hasil.push('#' + pesanan[item].id + ' - ' + pesanan[item].nama + ' - ' + pesanan[item].alamat);
            continue;
        }
    }
}

buatLabel(pesanan);

console.log(JSON.stringify(hasil));