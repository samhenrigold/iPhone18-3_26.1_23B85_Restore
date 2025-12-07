@interface SDAirDropNearFieldService
- (_TtC16DaemoniOSLibrary25SDAirDropNearFieldService)init;
- (void)didDetectDeviceNearbyForNearFieldController:(id)controller;
- (void)nearFieldController:(id)controller didBeginTransaction:(id)transaction;
- (void)nearFieldController:(id)controller didDetectDeviceNearbyWithInitiatorRole:(BOOL)role;
- (void)nearFieldController:(id)controller didInterruptTransaction:(id)transaction error:(id)error;
- (void)nearFieldController:(id)controller didInvalidateWithError:(id)error;
- (void)nearFieldController:(id)controller transaction:(id)transaction didReceiveTapEvent:(id)event;
@end

@implementation SDAirDropNearFieldService

- (_TtC16DaemoniOSLibrary25SDAirDropNearFieldService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)nearFieldController:(id)controller didInvalidateWithError:(id)error
{
  ObjectType = swift_getObjectType();
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = qword_1009735E0;
  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  v16 = errorCopy;
  v17 = controllerCopy;
  v18 = selfCopy;
  if (v12 != -1)
  {
    swift_once();
  }

  v19 = static AirDropActor.shared;
  v20 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = v16;
  v21[5] = v17;
  v21[6] = v18;
  v21[7] = ObjectType;

  sub_1002B3098(0, 0, v10, &unk_1007F9690, v21);
}

- (void)didDetectDeviceNearbyForNearFieldController:(id)controller
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = qword_1009735E0;
  selfCopy = self;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;
  v11 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  *(v12 + 32) = 0;
  *(v12 + 40) = selfCopy;

  sub_1002B3098(0, 0, v6, &unk_1007F9680, v12);
}

- (void)nearFieldController:(id)controller didDetectDeviceNearbyWithInitiatorRole:(BOOL)role
{
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = qword_1009735E0;
  selfCopy = self;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v13 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  *(v14 + 32) = role;
  *(v14 + 40) = selfCopy;

  sub_1002B3098(0, 0, v8, &unk_1007F9678, v14);
}

- (void)nearFieldController:(id)controller didBeginTransaction:(id)transaction
{
  swift_getObjectType();
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1002D8418(transaction, selfCopy);

  swift_unknownObjectRelease();
}

- (void)nearFieldController:(id)controller transaction:(id)transaction didReceiveTapEvent:(id)event
{
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = qword_1009735E0;
  swift_unknownObjectRetain_n();
  eventCopy = event;
  selfCopy = self;
  v15 = eventCopy;
  v16 = selfCopy;
  if (v12 != -1)
  {
    swift_once();
  }

  v17 = static AirDropActor.shared;
  v18 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = transaction;
  v19[5] = v15;
  v19[6] = v16;

  sub_1002B3098(0, 0, v10, &unk_1007F9668, v19);

  swift_unknownObjectRelease();
}

- (void)nearFieldController:(id)controller didInterruptTransaction:(id)transaction error:(id)error
{
  v7 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = qword_1009735E0;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;
  v14 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = transaction;
  v15[5] = selfCopy;

  sub_1002B3098(0, 0, v9, &unk_1007F9658, v15);

  swift_unknownObjectRelease();
}

@end