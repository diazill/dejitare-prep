const kata = "Hello";
const element = [];

function strtoarray(str) {
    const hasil = [];

    for (const char of str) {
        hasil.push(char);

    }


    return hasil;
}

const jadiarray = strtoarray(kata);

for (let i = jadiarray.length - 1; i >= 0; i--) {
    element.push(jadiarray[i]);
}

console.log(element.join(''));