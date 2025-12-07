@interface LemonadePeopleNamingViewDelegate
- (_TtC12PhotosUICore32LemonadePeopleNamingViewDelegate)init;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
@end

@implementation LemonadePeopleNamingViewDelegate

- (void)contactPickerDidCancel:(id)cancel
{
  v3 = sub_1A524D224();
  v4 = *sub_1A3CAA3FC();
  sub_1A5246DF4(v3, &dword_1A3C1C000, v4, "User cancelled contact picking from person naming view", 54, 2, MEMORY[0x1E69E7CC0]);
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  selfCopy = self;
  sub_1A4868CE4(contactCopy);
}

- (_TtC12PhotosUICore32LemonadePeopleNamingViewDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end