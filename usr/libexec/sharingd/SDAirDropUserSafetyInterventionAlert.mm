@interface SDAirDropUserSafetyInterventionAlert
- (_TtC16DaemoniOSLibrary36SDAirDropUserSafetyInterventionAlert)init;
- (void)showInterventionWithIsSend:(BOOL)send completion:(id)completion;
@end

@implementation SDAirDropUserSafetyInterventionAlert

- (void)showInterventionWithIsSend:(BOOL)send completion:(id)completion
{
  v7 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = send;
  *(v13 + 40) = self;
  *(v13 + 48) = sub_1004B2790;
  *(v13 + 56) = v11;
  selfCopy = self;
  sub_1002B3098(0, 0, v9, &unk_100805FF8, v13);
}

- (_TtC16DaemoniOSLibrary36SDAirDropUserSafetyInterventionAlert)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SDAirDropUserSafetyInterventionAlert *)&v3 init];
}

@end