@interface AirplayReceiverLifecycleManager
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
- (void)assertionWillInvalidate:(id)invalidate;
- (void)didStartStreamingWithRenderer:(id)renderer;
- (void)didStopStreamingWithRenderer:(id)renderer;
- (void)shouldAskPermissionWithRequestID:(id)d forClientWithName:(id)name withCompletionBlock:(id)block;
- (void)shouldCancelPermissionRequestWithRequestID:(id)d;
- (void)shouldHideGlobalPasscode;
- (void)shouldShowGlobalPasscodeWithString:(id)string withClientName:(id)name;
- (void)videoStreamIsCleared:(BOOL)cleared forRenderer:(id)renderer;
@end

@implementation AirplayReceiverLifecycleManager

- (void)assertionWillInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_1000AD484();
}

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  assertionCopy = assertion;
  selfCopy = self;
  errorCopy = error;
  sub_1000AD748(assertionCopy, error);
}

- (void)didStartStreamingWithRenderer:(id)renderer
{
  rendererCopy = renderer;
  selfCopy = self;
  sub_1000A49A4(rendererCopy);
}

- (void)didStopStreamingWithRenderer:(id)renderer
{
  rendererCopy = renderer;
  selfCopy = self;
  sub_1000AD8F4();
}

- (void)shouldShowGlobalPasscodeWithString:(id)string withClientName:(id)name
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  sub_1000A56DC(v5, v7, v8, v10);
}

- (void)shouldHideGlobalPasscode
{
  selfCopy = self;
  sub_1000A648C();
}

- (void)shouldAskPermissionWithRequestID:(id)d forClientWithName:(id)name withCompletionBlock:(id)block
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(block);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  selfCopy = self;
  sub_1000A6A44(v10, v12, v14, sub_1000ACDC4, v15);

  (*(v8 + 8))(v10, v7);
}

- (void)shouldCancelPermissionRequestWithRequestID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000A8218(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)videoStreamIsCleared:(BOOL)cleared forRenderer:(id)renderer
{
  rendererCopy = renderer;
  selfCopy = self;
  sub_1000A900C(cleared, rendererCopy);
}

@end