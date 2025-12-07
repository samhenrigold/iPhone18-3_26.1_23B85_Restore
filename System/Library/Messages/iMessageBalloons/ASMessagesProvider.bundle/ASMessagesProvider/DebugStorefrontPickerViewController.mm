@interface DebugStorefrontPickerViewController
- (_TtC18ASMessagesProvider35DebugStorefrontPickerViewController)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider35DebugStorefrontPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)pickerView:(id)view widthForComponent:(int64_t)component;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)setStorefront;
- (void)setStorefrontToUS;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation DebugStorefrontPickerViewController

- (_TtC18ASMessagesProvider35DebugStorefrontPickerViewController)initWithCoder:(id)coder
{
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_4B83F0(selfCopy);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_4B89C4(selfCopy);
}

- (void)setStorefront
{
  selfCopy = self;
  sub_762E60();
}

- (void)setStorefrontToUS
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider35DebugStorefrontPickerViewController_countryPicker);
  selfCopy = self;
  [v2 selectRow:157 inComponent:0 animated:1];
  sub_762EA0();
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider35DebugStorefrontPickerViewController_languagePicker) selectRow:0 inComponent:0 animated:1];
  sub_762EB0();
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_4B944C(viewCopy);

  return v7;
}

- (double)pickerView:(id)view widthForComponent:(int64_t)component
{
  selfCopy = self;
  view = [(DebugStorefrontPickerViewController *)selfCopy view];
  if (view)
  {
    v7 = view;
    sub_BE70(0, &qword_93E550, UIView_ptr);
    sub_75D650();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v17.origin.x = v9;
    v17.origin.y = v11;
    v17.size.width = v13;
    v17.size.height = v15;
    Width = CGRectGetWidth(v17);

    return Width;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_4B94F0(viewCopy, row);
  v10 = v9;

  if (v10)
  {
    v11 = sub_769210();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_4B95AC(viewCopy, row);
}

- (_TtC18ASMessagesProvider35DebugStorefrontPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end