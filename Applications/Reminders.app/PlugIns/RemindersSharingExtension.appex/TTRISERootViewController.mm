@interface TTRISERootViewController
- (_TtC25RemindersSharingExtension24TTRISERootViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC25RemindersSharingExtension24TTRISERootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC25RemindersSharingExtension24TTRISERootViewController)initWithRootViewController:(id)controller;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)viewDidLoad;
@end

@implementation TTRISERootViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10000A4E8();
}

- (_TtC25RemindersSharingExtension24TTRISERootViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  if (!class)
  {
    ObjCClassMetadata = 0;
    if (toolbarClass)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return sub_10000A9D4(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!toolbarClass)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return sub_10000A9D4(ObjCClassMetadata, v6);
}

- (_TtC25RemindersSharingExtension24TTRISERootViewController)initWithRootViewController:(id)controller
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC25RemindersSharingExtension24TTRISERootViewController_extensionCreateReminderInterface);
  *v6 = 0;
  v6[1] = 0;
  v7 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC25RemindersSharingExtension24TTRISERootViewController_remindersCreationInterface);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC25RemindersSharingExtension24TTRISERootViewController_extensionContextExtractor;
  v13[3] = sub_10004B050();
  v13[4] = &protocol witness table for TTRCurrentUserActivityProvider;
  sub_10000B790(v13);
  controllerCopy = controller;
  sub_10004B040();
  sub_10004AE40();
  swift_allocObject();
  *(&self->super.super.super.super.isa + v8) = sub_10004AE20();
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(TTRISERootViewController *)&v12 initWithRootViewController:controllerCopy];

  return v10;
}

- (_TtC25RemindersSharingExtension24TTRISERootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_10004C690();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10000AC20(v5, v7, bundle);
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  v4 = sub_100003150(&unk_100067618, &qword_100052940);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = sub_10004C790();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_10004C770();
  selfCopy = self;
  v10 = sub_10004C760();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = selfCopy;
  sub_100034184(0, 0, v7, &unk_100052950, v11);
}

@end