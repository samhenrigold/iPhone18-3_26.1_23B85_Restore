@interface CustomTextFieldView.Coordinator
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtCV15WiFiSettingsKit19CustomTextFieldView11Coordinator)init;
@end

@implementation CustomTextFieldView.Coordinator

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  v9 = sub_2741C7E7C();
  v11 = v10;
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(length) = sub_2740DDB50(fieldCopy, location, length, v9, v11);

  return length & 1;
}

- (_TtCV15WiFiSettingsKit19CustomTextFieldView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end