@interface AirTagRolePickerViewController
- (_TtC21FindMyRemoteUIService30AirTagRolePickerViewController)initWithContentView:(id)view;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
@end

@implementation AirTagRolePickerViewController

- (_TtC21FindMyRemoteUIService30AirTagRolePickerViewController)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v5 = sub_100006DB8();
  v6 = *(v5 + 24);
  v7 = type metadata accessor for AirTagRolePickerViewModel();
  selfCopy = self;
  v9 = v6(v7, v5);

  v10 = *(v9 + 16);

  return v10;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  v7 = sub_100006DB8();
  v8 = *(v7 + 24);
  v9 = type metadata accessor for AirTagRolePickerViewModel();
  selfCopy = self;
  result = v8(v9, v7);
  if (row < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(result + 2) <= row)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v12 = String._bridgeToObjectiveC()();

  return v12;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  v7 = sub_100006DB8();
  v8 = *(v7 + 48);
  v9 = type metadata accessor for AirTagRolePickerViewModel();
  selfCopy = self;
  v8(row, v9, v7);
}

@end