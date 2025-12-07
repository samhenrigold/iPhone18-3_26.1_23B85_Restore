@interface RDDataAccessREMStoreProvider
- (BOOL)rd_isPersonIDSaltInitiallyNilError:(id)error;
- (id)rd_base64EncodedHMACStringFromString:(id)string usingPersonIDSalt:(id)salt;
- (id)rd_observePrimaryCloudKitAccountPersonIDSaltChangesOnQueue:(id)queue successHandler:(id)handler errorHandler:(id)errorHandler;
- (id)rem_saveRequestForDataAccess;
- (id)rem_storeForDataAccess;
- (void)rd_unobservePrimaryCloudKitAccountPersonIDSaltChanges:(id)changes;
@end

@implementation RDDataAccessREMStoreProvider

- (id)rem_storeForDataAccess
{
  v2 = *self->rdDaemonController;
  v3 = objc_allocWithZone(REMStore);

  v4 = [v3 initWithDaemonController:v2];
  [v4 setMode:2];

  return v4;
}

- (id)rem_saveRequestForDataAccess
{
  v2 = *self->rdDaemonController;
  v3 = objc_allocWithZone(REMStore);

  v4 = [v3 initWithDaemonController:v2];
  [v4 setMode:2];
  v5 = [objc_allocWithZone(REMSaveRequest) initWithStore:v4];

  [v5 setAuthor:DADREMSaveRequestAuthorKey];

  return v5;
}

- (id)rd_observePrimaryCloudKitAccountPersonIDSaltChangesOnQueue:(id)queue successHandler:(id)handler errorHandler:(id)errorHandler
{
  v7 = _Block_copy(handler);
  v8 = _Block_copy(errorHandler);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  queueCopy = queue;

  v12 = sub_10075BCA8(queueCopy, sub_10075CA8C, v9, sub_10075CAE4, v10);

  return v12;
}

- (void)rd_unobservePrimaryCloudKitAccountPersonIDSaltChanges:(id)changes
{
  type metadata accessor for RDAccountPersonIDSaltObserver(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = *self->storeController;

    [v6 unobservePrimaryCloudKitAccountPersonIDSaltChanges:v5];
  }

  else
  {
    v7 = qword_100936860;
    swift_unknownObjectRetain();

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_100951C70);
    v9 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v10 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_10054573C("Implementation of REMDAAccountPropertiesObserving must be actually RDAccountPersonIDSaltObserver", 96, 2, v9, v10);
    __break(1u);
  }
}

- (BOOL)rd_isPersonIDSaltInitiallyNilError:(id)error
{
  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  errorCopy = error;
  v5 = _convertErrorToNSError(_:)();
  if (qword_1009365C0 != -1)
  {
    swift_once();
  }

  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

- (id)rd_base64EncodedHMACStringFromString:(id)string usingPersonIDSalt:(id)salt
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  saltCopy = salt;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  String.base64EncodedHMACString(using:)();
  v12 = v11;
  sub_10001BBA0(v8, v10);
  v6, v13, v14, v15, v16, v17, v18, v19;
  if (v12)
  {
    v20 = String._bridgeToObjectiveC()();
    v12, v21, v22, v23, v24, v25, v26, v27;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end