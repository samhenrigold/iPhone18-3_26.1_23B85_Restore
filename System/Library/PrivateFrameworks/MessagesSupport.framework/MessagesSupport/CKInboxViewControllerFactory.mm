@interface CKInboxViewControllerFactory
+ (id)inboxViewControllerWithModel:(id)model;
@end

@implementation CKInboxViewControllerFactory

+ (id)inboxViewControllerWithModel:(id)model
{
  type metadata accessor for InboxModel(0);
  sub_215684A58();
  modelCopy = model;
  sub_215692E00();
  v5 = swift_allocObject();
  *(v5 + 16) = modelCopy;
  swift_beginAccess();
  v6 = modelCopy;
  sub_215692D50();
  swift_endAccess();
  [*(v5 + 16) setDelegate_];
  sub_215692D10();
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA6E1B8, &qword_215694208));
  v8 = sub_215692E80();

  return v8;
}

@end