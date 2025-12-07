@interface SearchEngineSettingsController
- (SearchEngineSettingsController)initWithCoder:(id)coder;
- (SearchEngineSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SearchEngineSettingsController

- (SearchEngineSettingsController)initWithCoder:(id)coder
{
  *&self->super.super.PSListController_opaque[OBJC_IVAR___SearchEngineSettingsController_searchEnginePickerGroupSpecifier] = 0;
  result = sub_55974();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_51780(appear);
}

- (id)specifiers
{
  selfCopy = self;
  v3 = sub_522D4();

  if (v3)
  {
    v4.super.isa = sub_55894().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_55734();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_55724();
  viewCopy = view;
  selfCopy = self;
  sub_52A50(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (SearchEngineSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end