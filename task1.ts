interface IAbstractClass {
  Numbers: Array<number>
  factorial(): Array<number>
  sort(): Array<number>
}

abstract class AbstractClass implements IAbstractClass {
  Numbers: Array<number>

  constructor(n: number) {
    this.Numbers = [];
    this.#fill(n);
  }

  #fill(amount: number): void {
    const getRandomInt = (min = 1, max = 18) =>
      Math.floor(Math.random() * (max - min + 1)) + min;
    for (let i = 0; i < amount; i++) this.Numbers.push(getRandomInt());
  }
  public factorial():Array<number>  {
    return this.Numbers.map(function f(n):number {
      return n ? n * f(n - 1) : 1;
    });
  }
  public sort():Array<number> {
    return this.Numbers.sort((a, b) => (a > b ? 1 : a < b ? -1 : 0));
  }
}

class MyClass1 extends AbstractClass {
  constructor(n: number) {
    super(n);
  }

  sort(): Array<number> {
    return this.Numbers.sort((a, b) => (a > b ? 1 : a < b ? -1 : 0)); // первый способ
  }
}

class MyClass2 extends AbstractClass {
  constructor(n: number) {
    super(n);
  }

  sort(): Array<number> {
    return this.Numbers.sort((a, b) => a - b); // второй способ
  }
}

const myEntity1 = new MyClass1(3);
const myEntity2 = new MyClass2(5);

console.log(myEntity1.sort());
console.log(myEntity2.sort());