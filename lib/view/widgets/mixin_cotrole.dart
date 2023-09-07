mixin ValidatorMixin{
  String? isNotEmpty(String? value, [String? message]){
    if(value!.isEmpty) return message ?? 'Campo Em branco!';
    return null;
  }

  String? hasElevenChars(String? value, [String? message]){
    if(value!.length < 11) return message ?? 'Tem menos de 11 caracteres';
    return null;
  }

  String? combine(List<String? Function()> validators){
    for(final func in validators){
      final validation = func();
      if(validation != null){
        return validation;
      }
    }
  }
}