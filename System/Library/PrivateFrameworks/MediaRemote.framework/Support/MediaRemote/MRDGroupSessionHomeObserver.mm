@interface MRDGroupSessionHomeObserver
+ (MRDGroupSessionHomeObserver)shared;
- (MRDGroupSessionHomeObserver)init;
- (void)currentHomeUserIdentifiersWithCompletionHandler:(id)handler;
- (void)currentUserHomeIdentifiersWithCompletionHandler:(id)handler;
@end

@implementation MRDGroupSessionHomeObserver

+ (MRDGroupSessionHomeObserver)shared
{
  if (qword_1005363C0 != -1)
  {
    swift_once();
  }

  v3 = qword_1005385B0;

  return v3;
}

- (void)currentHomeUserIdentifiersWithCompletionHandler:(id)handler
{
  v5 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10045ADE0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10045ADE8;
  v12[5] = v11;
  selfCopy = self;
  sub_1001D34BC(0, 0, v7, &unk_10045ADF0, v12);
}

- (void)currentUserHomeIdentifiersWithCompletionHandler:(id)handler
{
  v5 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10045ADA8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10045ADB8;
  v12[5] = v11;
  selfCopy = self;
  sub_1001D34BC(0, 0, v7, &unk_10045ADC8, v12);
}

- (MRDGroupSessionHomeObserver)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___MRDGroupSessionHomeObserver_managerWrapper;
  sub_1001BC5A8(&qword_100528700, &qword_10045AD48);
  *(&self->super.isa + v4) = sub_10039A0CC(&unk_10045AD50, 0);
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(MRDGroupSessionHomeObserver *)&v6 init];
}

@end