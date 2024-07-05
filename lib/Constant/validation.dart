class Validators {

  static String? ValidEmail(String value) {
    String email_pattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9-]+\.[a-zA-Z]+";
    bool emailregExp = RegExp(email_pattern).hasMatch(value);
    if (value.isEmpty) {
      return "Please enter your email";
    } else if (!emailregExp) {
      return "Email not valid!";
    } return null;
  }
  static String? ValidName(String value) {
    String name_pattern = r"^([a-zA-Z]{2,}\s[a-zA-Z]{1,}'?-?[a-zA-Z]{0,}\s?([a-zA-Z]{1,})?)";
    bool nameExp = RegExp(name_pattern).hasMatch(value);
    if (value.isEmpty) {
      return "Please enter your name";
    } else if (!nameExp) {
      return "Name must be alphabet";
    }return null;
  }
  static String? ValidPass(String value) {
    if (value.isEmpty) {
      return "Please enter your password";
    } else if (value.length < 8) {
      return "Password are not less than 8";
    } return null;
  }

  static String? ValidPhone(String value) {
    String num_pattern = r"^\+?0[0-9]{10}$";
    bool phoneExp = RegExp(num_pattern).hasMatch(value);
    if (value.isEmpty) {
      return "Please enter your phone number";
    } else if (!phoneExp) {
      return "Phone number must be up to 11 digits";
    } return null;
  }
}
