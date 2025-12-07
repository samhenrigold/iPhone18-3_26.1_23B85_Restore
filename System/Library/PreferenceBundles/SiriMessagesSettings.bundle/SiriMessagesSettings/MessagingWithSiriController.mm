@interface MessagingWithSiriController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (_TtC20SiriMessagesSettings27MessagingWithSiriController)initWithNibName:(id)name bundle:(id)bundle;
- (id)getMessageWithoutConfCarPlayEnabledWithSpecifier:(id)specifier;
- (id)getMessageWithoutConfEnabledWithSpecifier:(id)specifier;
- (id)getMessageWithoutConfHeadphonesEnabledWithSpecifier:(id)specifier;
- (id)specifiers;
- (void)applicationWillSuspend;
- (void)handleURL:(NSDictionary *)l withCompletion:(id)completion;
- (void)logLongPressWithSpecifier:(id)specifier;
- (void)setMessageWithoutConfCarPlayEnabled:(id)enabled specifier:(id)specifier;
- (void)setMessageWithoutConfEnabled:(id)enabled specifier:(id)specifier;
- (void)setMessageWithoutConfHeadphonesEnabled:(id)enabled specifier:(id)specifier;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MessagingWithSiriController

- (id)specifiers
{
  selfCopy = self;
  sub_1680();
  v4 = v3;

  if (v4)
  {
    v5.super.isa = sub_21F74().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (void)setMessageWithoutConfEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  selfCopy = self;
  sub_1A5C(enabledCopy);
}

- (id)getMessageWithoutConfEnabledWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  v6 = sub_1EA0(selfCopy);

  return v6;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1FD4(disappear);
}

- (void)applicationWillSuspend
{
  selfCopy = self;
  sub_2080();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_2110(appearCopy);
}

- (void)setMessageWithoutConfHeadphonesEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  selfCopy = self;
  sub_27DC(enabledCopy, v8);
}

- (id)getMessageWithoutConfHeadphonesEnabledWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  v6 = sub_2868(selfCopy);

  return v6;
}

- (void)setMessageWithoutConfCarPlayEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  selfCopy = self;
  sub_28D8(enabledCopy, v8);
}

- (id)getMessageWithoutConfCarPlayEnabledWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  v6 = sub_2B0C(selfCopy);

  return v6;
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  v8 = sub_21CC4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB4();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_46C4(viewCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)handleURL:(NSDictionary *)l withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = l;
  v7[3] = v6;
  v7[4] = self;
  lCopy = l;
  selfCopy = self;

  sub_597C(&unk_22CA0, v7);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_21CC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB4();
  viewCopy = view;
  selfCopy = self;
  sub_5A8C(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v8 = sub_21CC4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB4();
  viewCopy = view;
  selfCopy = self;
  sub_6190(viewCopy, style, v11);

  (*(v9 + 8))(v11, v8);
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v6 = sub_21CC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB4();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_6F6C(selfCopy);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)logLongPressWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_7374();
}

- (_TtC20SiriMessagesSettings27MessagingWithSiriController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_21EF4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_7A60(v5, v7, bundle);
}

@end