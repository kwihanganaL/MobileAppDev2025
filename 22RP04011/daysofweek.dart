enum Day { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday }

void main() {
  for (Day day in Day.values) {
    print('Today is: ${day.name}');
  }
}
