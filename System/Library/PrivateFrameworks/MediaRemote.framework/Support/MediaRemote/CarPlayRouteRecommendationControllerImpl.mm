@interface CarPlayRouteRecommendationControllerImpl
- (void)mediaApplicationsInFocus:(id)focus;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
@end

@implementation CarPlayRouteRecommendationControllerImpl

- (void)sessionDidConnect:(id)connect
{
  swift_getObjectType();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_lock);
  connectCopy = connect;
  selfCopy = self;
  os_unfair_lock_lock(v5 + 4);
  sub_100006E8C();
  os_unfair_lock_unlock(v5 + 4);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  swift_getObjectType();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_lock);
  disconnectCopy = disconnect;
  selfCopy = self;
  os_unfair_lock_lock(v5 + 4);
  sub_100006EA4();
  os_unfair_lock_unlock(v5 + 4);
}

- (void)mediaApplicationsInFocus:(id)focus
{
  v4 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  v9[5] = v7;
  selfCopy = self;
  sub_1001CB290(0, 0, v6, &unk_100450540, v9);
}

@end