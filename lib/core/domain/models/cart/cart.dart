class Cart {
  final int cartNumber;
  final int passangerCapacity;
  final int baggageCapacity;

  Cart({
    required this.cartNumber,
    this.passangerCapacity = 10,
    this.baggageCapacity = 10,
  });
}
