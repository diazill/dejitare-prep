const stok = {
    sepatu: 3,
    tas: 10,
    jaket: 2,
    topi: 7
};

function cekStok(obj, batas) {
    const hasil = [];             // bikin array kosong
    for (let item in obj) {
        if (obj[item] <= batas) {
            hasil.push(item);         // tambahkan item
        }
    }
    return hasil;                 // kembalikan array
}

console.log(cekStok(stok, 5));  // ["sepatu", "jaket"]
