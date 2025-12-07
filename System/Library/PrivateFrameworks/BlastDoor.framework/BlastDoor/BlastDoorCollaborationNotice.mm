@interface BlastDoorCollaborationNotice
- (BlastDoorCollaborationNotice)init;
- (NSData)highlightEvent;
- (NSDate)noticeDate;
- (unint64_t)highlightEventType;
@end

@implementation BlastDoorCollaborationNotice

- (NSData)highlightEvent
{
  v3 = type metadata accessor for CollaborationHighlightEvent(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = self + OBJC_IVAR___BlastDoorCollaborationNotice_collaborationNotice;
  v7 = type metadata accessor for CollaborationNotice(0);
  sub_213FB568C(&v6[*(v7 + 24)], v5, type metadata accessor for CollaborationHighlightEvent);
  selfCopy = self;
  v9 = sub_214675854();
  v11 = v10;
  v12 = sub_2146D8A38();
  sub_213FB54FC(v9, v11);

  sub_213FB5844(v5, type metadata accessor for CollaborationHighlightEvent);

  return v12;
}

- (unint64_t)highlightEventType
{
  selfCopy = self;
  v3 = sub_214557444();

  return v3;
}

- (NSDate)noticeDate
{
  v3 = sub_2146D8B08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self + OBJC_IVAR___BlastDoorCollaborationNotice_collaborationNotice;
  v8 = type metadata accessor for CollaborationNotice(0);
  (*(v4 + 16))(v6, &v7[*(v8 + 28)], v3);
  v9 = sub_2146D8AD8();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (BlastDoorCollaborationNotice)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end