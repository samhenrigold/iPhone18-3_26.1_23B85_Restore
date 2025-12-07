@interface BlastDoorCollaborationClearNotice
- (BlastDoorCollaborationClearNotice)init;
- (NSDate)date;
- (NSString)collaborationId;
@end

@implementation BlastDoorCollaborationClearNotice

- (NSDate)date
{
  v3 = sub_2146D8B08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self + OBJC_IVAR___BlastDoorCollaborationClearNotice_collaborationClearNotice;
  v8 = type metadata accessor for CollaborationClearNotice(0);
  (*(v4 + 16))(v6, &v7[*(v8 + 24)], v3);
  v9 = sub_2146D8AD8();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (NSString)collaborationId
{
  type metadata accessor for CollaborationClearNotice(0);

  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorCollaborationClearNotice)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end