String? myValidator({
  required String fieldName,
  required String? value,
  required String rules,
  required String alertMessage,
  required bool isRequired,
}) {
  final regex = RegExp(rules);

  if (isRequired) {
    if (value!.isEmpty) {
      return "$fieldName Can't be empty ";
    } else if (!regex.hasMatch(value)) {
      return alertMessage;
    }
  }

  return null;
}
