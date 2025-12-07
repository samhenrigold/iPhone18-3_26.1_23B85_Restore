@interface ServicePredictionController
- (_TtC17wirelessinsightsd27ServicePredictionController)init;
- (void)handleLocationAuthorizationUpdate:(BOOL)update;
- (void)handleLocationUpdate:(id)update;
@end

@implementation ServicePredictionController

- (void)handleLocationUpdate:(id)update
{
  v5 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  updateCopy = update;

  [updateCopy latitude];
  v10 = v9;
  [updateCopy longitude];
  v12 = [objc_allocWithZone(CLLocation) initWithLatitude:v10 longitude:v11];
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  v14[5] = v12;
  v15 = v12;
  sub_100176B80(0, 0, v7, &unk_10024D4F0, v14);
}

- (void)handleLocationAuthorizationUpdate:(BOOL)update
{
  v5 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  if (!update)
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = self;

    sub_100176B80(0, 0, v7, &unk_10024D4E8, v9);
  }
}

- (_TtC17wirelessinsightsd27ServicePredictionController)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end