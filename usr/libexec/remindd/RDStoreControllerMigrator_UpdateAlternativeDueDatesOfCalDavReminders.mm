@interface RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders
- (_TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders)init;
- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata;
@end

@implementation RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders

- (_TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders)init
{
  ObjectType = swift_getObjectType();
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v13 - v5;
  if (qword_1009362A8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Date();
  v8 = sub_100006654(v7, qword_1009492F8);
  v9 = *(v7 - 8);
  (*(v9 + 16))(v6, v8, v7);
  (*(v9 + 56))(v6, 0, 1, v7);
  v10 = objc_allocWithZone(ObjectType);
  *&v10[OBJC_IVAR____TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders_maxReminderCountToMigrate] = 100;
  sub_10012F78C(v6, &v10[OBJC_IVAR____TtC7remindd68RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders_lastModifiedAfterDate]);
  v13.receiver = v10;
  v13.super_class = ObjectType;
  v11 = [(RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders *)&v13 init];
  sub_1000050A4(v6, &unk_100938850, qword_100795AE0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata
{
  neededCopy = needed;
  metadataCopy = metadata;
  selfCopy = self;
  RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders.migrateStoreIfNeeded(_:metadata:)(neededCopy, metadataCopy);
}

@end