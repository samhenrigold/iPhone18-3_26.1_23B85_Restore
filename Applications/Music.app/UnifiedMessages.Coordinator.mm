@interface UnifiedMessages.Coordinator
- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type;
@end

@implementation UnifiedMessages.Coordinator

- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  v14[5] = v10;
  v14[6] = v12;
  v14[7] = request;
  requestCopy = request;
  selfCopy = self;
  sub_1001F4CB8(0, 0, v9, &unk_100EC0208, v14);
}

@end