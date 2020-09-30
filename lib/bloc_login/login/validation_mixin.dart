class ValidationMixin {
  String validateEmail(String value) {
    if (!value.contains('@')) {
      return 'Please enter a valid email';
    }

    return null;
  }

  String validatePassword(String value) {
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }

    return null;
  }
  String validatePhone (String value) {
    if (value.length < 10) {
      return 'Phone number must be at least 10 digits';
    }

    return null;
  }
}
