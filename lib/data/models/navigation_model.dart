class NavigationModel {
  final int key;
  final String name;
  final List<NavigationModel>? child;

  const NavigationModel(
      {required this.key, required this.name,  this.child});
}
