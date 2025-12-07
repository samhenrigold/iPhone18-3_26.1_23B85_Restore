@interface STIntroCommunicationLimitsPickerViewControllerFactory
+ (id)makeViewControllerWithViewModel:(id)model;
- (_TtC20ScreenTimeSettingsUI53STIntroCommunicationLimitsPickerViewControllerFactory)init;
@end

@implementation STIntroCommunicationLimitsPickerViewControllerFactory

+ (id)makeViewControllerWithViewModel:(id)model
{
  v4 = sub_264CC3E8C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for STIntroCommunicationLimitsPickerView(0);
  MEMORY[0x28223BE20](v5 - 8);
  type metadata accessor for STIntroCommunicationLimitsPickerViewModel(0);
  sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel, &protocol conformance descriptor for STIntroCommunicationLimitsPickerViewModel);
  modelCopy = model;
  sub_264CC442C();
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9038, &unk_264CD1C48));
  v8 = sub_264CC3D5C();
  sub_264CC3E7C();
  sub_264CC3D4C();

  return v8;
}

- (_TtC20ScreenTimeSettingsUI53STIntroCommunicationLimitsPickerViewControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for STIntroCommunicationLimitsPickerViewControllerFactory();
  return [(STIntroCommunicationLimitsPickerViewControllerFactory *)&v3 init];
}

@end