@interface IMDCollaborationNoticeStore
- (IMDCollaborationNoticeStore)init;
- (id)deleteAllNoticesWithCollaborationIdentifier:(id)identifier;
- (id)deleteNotice:(id)notice;
- (id)deleteNoticeWithGUIDString:(id)string;
- (id)noticesForURLs:(id)ls;
- (void)deleteNoticesForURLs:(id)ls;
- (void)saveNotice:(id)notice;
@end

@implementation IMDCollaborationNoticeStore

- (void)saveNotice:(id)notice
{
  noticeCopy = notice;
  selfCopy = self;
  sub_22B7B9200(noticeCopy);
}

- (id)noticesForURLs:(id)ls
{
  sub_22B7DA828();
  v4 = sub_22B7DB918();
  selfCopy = self;
  v6 = sub_22B7B9AFC(v4);

  v4, v7, v8, v9, v10, v11, v12, v13, v23, v25;
  if (v6)
  {
    sub_22B4D01A0(0, &qword_27D8CFB10, 0x277D1A938);
    v14 = sub_22B7DB8F8();
    v6, v15, v16, v17, v18, v19, v20, v21, v24, v26;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)deleteNotice:(id)notice
{
  v5 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v27 - v6;
  noticeCopy = notice;
  selfCopy = self;
  guidString = [noticeCopy guidString];
  v11 = sub_22B7DB6A8();
  v13 = v12;

  sub_22B7BABDC(v11, v13, v7);
  v13, v14, v15, v16, v17, v18, v19, v20, v27[0], v27[1];
  v21 = sub_22B7DA828();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v7, 1, v21);
  v24 = 0;
  if (v23 != 1)
  {
    v25 = sub_22B7DA788();
    (*(v22 + 8))(v7, v21);
    v24 = v25;
  }

  return v24;
}

- (id)deleteNoticeWithGUIDString:(id)string
{
  v4 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = sub_22B7DB6A8();
  v9 = v8;
  selfCopy = self;
  sub_22B7BABDC(v7, v9, v6);

  v9, v11, v12, v13, v14, v15, v16, v17, v24[0], v24[1];
  v18 = sub_22B7DA828();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v6, 1, v18);
  v21 = 0;
  if (v20 != 1)
  {
    v22 = sub_22B7DA788();
    (*(v19 + 8))(v6, v18);
    v21 = v22;
  }

  return v21;
}

- (id)deleteAllNoticesWithCollaborationIdentifier:(id)identifier
{
  v4 = sub_22B7DB6A8();
  v6 = v5;
  selfCopy = self;
  v8 = sub_22B7BB4EC(v4, v6);

  v6, v9, v10, v11, v12, v13, v14, v15, v25, v27;
  v16 = sub_22B7DB8F8();
  v8, v17, v18, v19, v20, v21, v22, v23, v26, v28;

  return v16;
}

- (void)deleteNoticesForURLs:(id)ls
{
  sub_22B7DA828();
  v4 = sub_22B7DB918();
  selfCopy = self;
  sub_22B7BBD60(v4);

  v4, v6, v7, v8, v9, v10, v11, v12, v14, v15;
}

- (IMDCollaborationNoticeStore)init
{
  *(&self->super.isa + OBJC_IVAR___IMDCollaborationNoticeStore____lazy_storage___persistenceContainer) = 1;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CollaborationNoticeStore();
  return [(IMDCollaborationNoticeStore *)&v3 init];
}

@end