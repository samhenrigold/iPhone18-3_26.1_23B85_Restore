@interface MedicationLogDetailsUnitView
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (void)didChangeText:(id)text;
- (void)textFieldDidBeginEditing:(id)editing;
@end

@implementation MedicationLogDetailsUnitView

- (void)didChangeText:(id)text
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_228392F90();
  swift_unknownObjectRelease();
  sub_228215A00();

  __swift_destroy_boxed_opaque_existential_0(v5);
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_228216830(editingCopy);
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  v9 = sub_228392000();
  v11 = v10;
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(length) = sub_228216B18(fieldCopy, location, length, v9, v11);

  return length & 1;
}

@end