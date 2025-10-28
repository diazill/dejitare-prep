
const seen = new Set();
const nilaitotal = [];

function caritotal(arr, nilai) {
    for (let num of arr) {
        const total = nilai - num;
        if (seen.has(total)) {
            nilaitotal.push([total, num]);
        }
        seen.add(num);
    }
    return nilaitotal;
}

const target = 100;
const harga = [30, 40, 70, 50];
console.log(caritotal(harga, target));
