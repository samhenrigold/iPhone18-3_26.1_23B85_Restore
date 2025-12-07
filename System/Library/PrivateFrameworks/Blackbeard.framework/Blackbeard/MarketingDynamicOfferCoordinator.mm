@interface MarketingDynamicOfferCoordinator
- (_TtC10Blackbeard32MarketingDynamicOfferCoordinator)init;
- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error;
@end

@implementation MarketingDynamicOfferCoordinator

- (_TtC10Blackbeard32MarketingDynamicOfferCoordinator)init
{
  *&self->eventHub[OBJC_IVAR____TtC10Blackbeard32MarketingDynamicOfferCoordinator_eventHub] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for MarketingDynamicOfferCoordinator();
  return [(MarketingDynamicOfferCoordinator *)&v4 init];
}

- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error
{
  v7 = sub_1E65DB628();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    errorCopy = error;
    selfCopy = self;
    sub_1E65DB618();
    sub_1E5FB96FC(&unk_1ED079C30, MEMORY[0x1E69CD580], MEMORY[0x1E69CD578]);
    sub_1E65DDDE8();

    swift_unknownObjectRelease();
    (*(v8 + 8))(v10, v7);
  }
}

@end