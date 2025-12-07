@interface StorageShared
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)dealloc;
- (void)handleDeepLinkWithResourceDictionary:(id)dictionary;
- (void)searchDidUpdate:(id)update;
- (void)startMonitoring;
@end

@implementation StorageShared

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_appProtectionSubscription);
  selfCopy = self;
  if (v4)
  {
    [v4 invalidate];
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(StorageShared *)&v6 dealloc];
}

- (void)startMonitoring
{
  selfCopy = self;
  sub_28F58();
}

- (void)searchDidUpdate:(id)update
{
  v4 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_81928();
  v9 = v8;
  v10 = sub_81AB8();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_81A88();
  selfCopy = self;
  v12 = sub_81A78();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = selfCopy;
  v13[5] = v7;
  v13[6] = v9;
  sub_68AE4(0, 0, v6, &unk_89398, v13);
}

- (void)handleDeepLinkWithResourceDictionary:(id)dictionary
{
  v4 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_81838();
  v8 = sub_81AB8();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_81A88();
  selfCopy = self;
  v10 = sub_81A78();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v7;
  v11[5] = selfCopy;
  sub_68AE4(0, 0, v6, &unk_89388, v11);
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  v5 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_81AB8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_81A88();
  selfCopy = self;
  v10 = sub_81A78();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = selfCopy;
  sub_68AE4(0, 0, v7, &unk_89378, v11);
}

@end