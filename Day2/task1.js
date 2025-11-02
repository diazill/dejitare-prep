const sales = [100, 200, 50, 400, 150];

function median(arr) {
    for (let i = 0; i < arr.length; i++) {
        for (let j = 0; j < (arr.length - i - 1); j++) {
            if (arr[j] > arr[j + 1]) {
                var temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }


    const mid = Math.floor(arr.length / 2);
    if (arr.length % 2 !== 0) {
        return arr[mid];
    } else {
        return (arr[mid - 1] + arr[mid]) / 2;
    }

}

var result = median(sales);

console.log("Median sales value is: " + result);