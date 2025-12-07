@interface BrailleUI_UIController
+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(int64_t)identifier;
- (BrailleUI_UIController)init;
- (id)processMessage:(id)message withIdentifier:(int64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error;
- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)identifier;
@end

@implementation BrailleUI_UIController

- (id)processMessage:(id)message withIdentifier:(int64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error
{
  if (message)
  {
    v8 = sub_5114();
  }

  else
  {
    v8 = 0;
  }

  selfCopy = self;
  sub_3F2C(v8, identifier);

  v10.super.isa = sub_5104().super.isa;

  return v10.super.isa;
}

+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(int64_t)identifier
{
  v3 = sub_5124();

  return v3;
}

- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)identifier
{
  sub_4164(&qword_C5F0, &qword_5810);
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = sub_51A4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_5184();
  selfCopy = self;
  v8 = sub_5174();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = selfCopy;
  sub_25F0(0, 0, v5, &unk_5890, v9);
}

- (BrailleUI_UIController)init
{
  ObjectType = swift_getObjectType();
  _s9BrailleUI0aB13_UIControllerC13brailleUIView33_6F8689ADE33571FDFE65109765AA1F6FLL28AccessibilitySharedUISupport0A12UIVisualViewVvpfi_0();
  *(&self->super.isa + OBJC_IVAR___BrailleUI_UIController_mainDisplayViewController) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(BrailleUI_UIController *)&v5 init];
}

@end