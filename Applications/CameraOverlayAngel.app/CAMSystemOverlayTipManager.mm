@interface CAMSystemOverlayTipManager
+ (BOOL)anyTipPendingOrAvailable;
- (CAMSystemOverlayTipManager)init;
- (void)recordCaptureEvent;
- (void)recordMenuVisibleEvent;
- (void)recordSliderVisibleEvent;
- (void)setControlsCountParameter:(unint64_t)parameter;
- (void)startTipObservationForViewController:(id)controller sourceItem:(id)item;
- (void)stopTipObservation;
@end

@implementation CAMSystemOverlayTipManager

+ (BOOL)anyTipPendingOrAvailable
{
  v2 = type metadata accessor for Tips.Status();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = 0xD000000000000014;
  v11[1] = 0x8000000100041FD0;
  sub_10001B21C();
  Tip.status.getter();
  v6 = (*(v3 + 88))(v5, v2);
  v7 = v6;
  v8 = enum case for Tips.Status.invalidated(_:);
  if (v6 == enum case for Tips.Status.invalidated(_:))
  {
    goto LABEL_7;
  }

  if (v6 != enum case for Tips.Status.pending(_:) && v6 != enum case for Tips.Status.available(_:))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_7:
    (*(v3 + 8))(v5, v2);
  }

  return v7 != v8;
}

- (void)startTipObservationForViewController:(id)controller sourceItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  selfCopy = self;
  sub_100018668(controllerCopy, itemCopy);
}

- (void)stopTipObservation
{
  selfCopy = self;
  sub_100019950();
}

- (void)recordSliderVisibleEvent
{
  if (qword_10005F4F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100017000(&qword_10005F7A8, &qword_100040098);
  sub_100016DD8(v2, qword_100061620);
  Tips.Event.sendDonation<>(_:)();
}

- (void)recordMenuVisibleEvent
{
  selfCopy = self;
  sub_100019AC0();
}

- (void)setControlsCountParameter:(unint64_t)parameter
{
  if (qword_10005F508 != -1)
  {
    swift_once();
  }

  v3 = sub_100017000(&qword_10005F798, &qword_100040088);
  sub_100016DD8(v3, qword_100061668);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
}

- (CAMSystemOverlayTipManager)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___CAMSystemOverlayTipManager_isPortraitOrientation) = 0;
  v4 = (&self->super.isa + OBJC_IVAR___CAMSystemOverlayTipManager_menuTip);
  *v4 = 0xD000000000000014;
  v4[1] = 0x8000000100041FD0;
  *(&self->super.isa + OBJC_IVAR___CAMSystemOverlayTipManager_tipObservationTask) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(CAMSystemOverlayTipManager *)&v6 init];
}

- (void)recordCaptureEvent
{
  discoverability = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  signals = [discoverability Signals];
  swift_unknownObjectRelease();
  v3 = objc_allocWithZone(BMDiscoverabilitySignals);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithContentIdentifier:v4 context:0 osBuild:0 userInfo:0];

  source = [signals source];
  [source sendEvent:v5];
}

@end