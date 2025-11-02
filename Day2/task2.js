const stok = {
    sepatu: 3,
    tas: 10,
    jaket: 2,
    topi: 7
};
var hasil = "[";


function cekStok(obj, batas) {
    for (let item in obj) {
        if (obj[item] <= batas) {
            hasil += item + ",";
        }
    }

    hasil = hasil.slice(0, -1);
    hasil += "]";
    return hasil;
}


var hasil2 = cekStok(stok, 5);
console.log(hasil2);