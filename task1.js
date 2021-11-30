// Задание 1
// Создать абстрактный класс “AClass” у которого будет свойство “Numbers” типа Array, который будет содержать n натуральных чисел.
// Также AClass должен иметь метод “fill”, который заполняет массив Numbers случайными числами; метод “factorial”, который возвращает
// массив факториалов из массива Numbers; и абстрактный метод “sort”. Конструктор принимает один параметр “n” и вызывает метод “fill”.
// Метод “fill” можно вызывать только из методов класса “AClass”.
// Метод “factorial” может вызываться из класса AClass и из дочерних классов.
// Реализовать два дочерних класса “Class1” и “Class2” с методом “sort” который сортирует массив Numbers, а затем выдает массив факториалов.
// Способы сортировки в классах “Class1” и “Class2” должны различаться.

// ==================== задача №1 ======================

class AClass {
  constructor(n) {
    this.Numbers = [];
    this.#fill(n);
  }

  #fill(amount) {
    const getRandomInt = (min = 1, max = 18) =>
      Math.floor(Math.random() * (max - min + 1)) + min;
    for (let i = 0; i < amount; i++) this.Numbers.push(getRandomInt());
  }
  factorial() {
    return this.Numbers.map(function f(n) {
      return n ? n * f(n - 1) : 1;
    });
  }
  sort() {
    return this.Numbers.sort((a, b) => (a > b ? 1 : a < b ? -1 : 0));
  }
}

class Class1 extends AClass {
  constructor(n) {
    super(n);
  }

  sort() {
    return this.Numbers.sort((a, b) => (a > b ? 1 : a < b ? -1 : 0)); // первый способ
  }
}

class Class2 extends AClass {
  constructor(n) {
    super(n);
  }

  sort() {
    return this.Numbers.sort((a, b) => a - b); // второй способ
  }
}

const entity1 = new Class1(3);
const entity2 = new Class2(5);

console.log(entity1.sort());
console.log(entity2.sort());
