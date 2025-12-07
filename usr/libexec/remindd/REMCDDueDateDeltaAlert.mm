@interface REMCDDueDateDeltaAlert
+ (NSString)cdEntityName;
+ (id)objectIDWithUUID:(id)d;
- (REMCDDueDateDeltaAlert)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (REMObjectID)remObjectID;
- (id)remChangedObjectID;
- (id)remObjectIDWithError:(id *)error;
@end

@implementation REMCDDueDateDeltaAlert

- (REMCDDueDateDeltaAlert)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(REMCDDueDateDeltaAlert *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

+ (NSString)cdEntityName
{
  swift_getObjCClassMetadata();
  sub_1000F5104(&unk_100950F40, &qword_1007AE990);
  String.init<A>(describing:)();
  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  v3, v5, v6, v7, v8, v9, v10, v11;

  return v4;
}

- (id)remChangedObjectID
{
  selfCopy = self;
  v3 = REMCDDueDateDeltaAlert.remChangedObjectID()();

  return v3;
}

- (REMObjectID)remObjectID
{
  selfCopy = self;
  v3 = REMCDDueDateDeltaAlert.remObjectID.getter();

  return v3;
}

- (id)remObjectIDWithError:(id *)error
{
  selfCopy = self;
  REMCDDueDateDeltaAlert.checkedREMObjectID()();
  v5 = v4;

  return v5;
}

+ (id)objectIDWithUUID:(id)d
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v23[1] = ObjCClassMetadata;
  sub_1000F5104(&unk_100950F40, &qword_1007AE990);
  String.init<A>(describing:)();
  v10 = v9;
  v11 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = String._bridgeToObjectiveC()();
  v10, v14, v15, v16, v17, v18, v19, v20;
  v21 = [v11 initWithUUID:isa entityName:v13];

  (*(v5 + 8))(v8, v4);

  return v21;
}

@end