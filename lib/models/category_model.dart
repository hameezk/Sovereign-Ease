class CategoryModel {
  String? categoryId;
  String? categoryName;
  String? categoryIcon;
  String? categoryDescription;

  CategoryModel({
    required this.categoryId,
    required this.categoryName,
    required this.categoryIcon,
    required this.categoryDescription,
  });

  CategoryModel.fromMap(Map<String, dynamic> map) {
    categoryId = map["categoryId"];
    categoryName = map["categoryName"];
    categoryIcon = map["categoryIcon"];
    categoryDescription = map["categoryDescription"];
  }

  Map<String, dynamic> toMap() {
    return {
      "categoryId": categoryId ?? '',
      "categoryName": categoryName ?? '',
      "categoryIcon": categoryIcon ?? '',
      "categoryDescription": categoryDescription ?? '',
    };
  }

  static List<CategoryModel> pastNotifications = [
    CategoryModel(
      categoryId: '1',
      categoryName: 'Nursing Services',
      categoryIcon: 'assets/page-2/images/heart-with-pulse-zND.png',
      categoryDescription: 'Sovereign Ease delivery Nursing Services, which involve providing professional nursing care and support to   individuals   within   their   homes.  These   services   cover   a   wide   range   of   medical   needs,   including medication management, wound care, disease management, post-surgical care, and vital signs monitoring. Sovereign Ease\'s Nursing Services prioritize delivering skilled healthcare while allowing individuals to remain in the comfort and familiarity of their own homes. This approach aims to provide convenience and personalized care to meet individual health requirements',
    ),
    CategoryModel(
      categoryId: '2',
      categoryName: 'Patient Sitter',
      categoryIcon: 'assets/page-2/images/volunteering.png',
      categoryDescription: '"Patient Sitter Sovereign Ease homecare" refers to a service that provides professional caregivers or sitters to assist individuals with their medical and non-medical needs in the comfort of their own homes. These   caregivers   are   trained   to   offer   companionship,   monitor   health   conditions,   assist   with   daily activities, administer medications, and ensure the safety and well-being of the patient. The primary goal of this service is to enable patients, especially those who are elderly, disabled, or recovering from surgery or illness, to receive personalized care and support in their familiar environment, promoting independence and improving their overall quality of life.',
    ),
    CategoryModel(
      categoryId: '3',
      categoryName: 'Hospital Recovery\ncare',
      categoryIcon: 'assets/page-2/images/trust.png',
      categoryDescription: '"Patient Sitter Sovereign Ease homecare" refers to a service that provides professional caregivers or sitters to assist individuals with their medical and non-medical needs in the comfort of their own homes. These   caregivers   are   trained   to   offer   companionship,   monitor   health   conditions,   assist   with   daily activities, administer medications, and ensure the safety and well-being of the patient. The primary goal of this service is to enable patients, especially those who are elderly, disabled, or recovering from surgery or illness, to receive personalized care and support in their familiar environment, promoting independence and improving their overall quality of life.',
    ),
    CategoryModel(
      categoryId: '4',
      categoryName: 'Companion Care\nServices',
      categoryIcon: 'assets/page-2/images/doctors-bag.png',
      categoryDescription: '',
    ),
    CategoryModel(
      categoryId: '1',
      categoryName: 'Nursing Services',
      categoryIcon: 'assets/page-2/images/heart-with-pulse-zND.png',
      categoryDescription: '',
    ),
    CategoryModel(
      categoryId: '2',
      categoryName: 'Medical Care',
      categoryIcon: 'assets/page-2/images/volunteering.png',
      categoryDescription: '',
    ),
    CategoryModel(
      categoryId: '3',
      categoryName: 'Hospital Recovery\ncare',
      categoryIcon: 'assets/page-2/images/trust.png',
      categoryDescription: '',
    ),
    CategoryModel(
      categoryId: '4',
      categoryName: 'Companion Care\nServices',
      categoryIcon: 'assets/page-2/images/doctors-bag.png',
      categoryDescription: '',
    ),
  ];
}
