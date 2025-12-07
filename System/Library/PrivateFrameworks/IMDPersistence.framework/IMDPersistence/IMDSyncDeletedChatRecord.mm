@interface IMDSyncDeletedChatRecord
- (IMDSyncDeletedChatRecord)init;
- (IMDSyncDeletedChatRecord)initWithGUID:(id)d ckRecordID:(id)iD date:(id)date;
- (NSDate)date;
- (NSString)ckRecordID;
- (NSString)guid;
- (void)encodeWithCoder:(id)coder;
- (void)setCkRecordID:(id)d;
- (void)setGuid:(id)guid;
@end

@implementation IMDSyncDeletedChatRecord

- (NSString)guid
{

  v2 = sub_1B7CFEA30();

  return v2;
}

- (void)setGuid:(id)guid
{
  v4 = sub_1B7CFEA60();
  v5 = (self + OBJC_IVAR___IMDSyncDeletedChatRecord_guid);
  *v5 = v4;
  v5[1] = v6;
}

- (NSString)ckRecordID
{
  if (*(self + OBJC_IVAR___IMDSyncDeletedChatRecord_ckRecordID + 8))
  {

    v2 = sub_1B7CFEA30();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setCkRecordID:(id)d
{
  if (d)
  {
    v4 = sub_1B7CFEA60();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___IMDSyncDeletedChatRecord_ckRecordID);
  *v6 = v4;
  v6[1] = v5;
}

- (NSDate)date
{
  v3 = sub_1B7CFE120();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  if ([(IMDSyncDeletedChatRecord *)selfCopy rawDate]< 1)
  {

    v8 = 0;
  }

  else
  {
    [(IMDSyncDeletedChatRecord *)selfCopy rawDate];
    sub_1B7CFE050();

    v8 = sub_1B7CFE0A0();
    (*(v4 + 8))(v6, v3);
  }

  return v8;
}

- (IMDSyncDeletedChatRecord)initWithGUID:(id)d ckRecordID:(id)iD date:(id)date
{
  v7 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_1B7CFEA60();
  v12 = v11;
  if (!iD)
  {
    v14 = 0;
    if (date)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = sub_1B7CFE120();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    return sub_1B7CDC9B0(v10, v12, iD, v14, v9);
  }

  iD = sub_1B7CFEA60();
  v14 = v13;
  if (!date)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B7CFE0F0();
  v15 = sub_1B7CFE120();
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  return sub_1B7CDC9B0(v10, v12, iD, v14, v9);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B7CDCF58(coderCopy);
}

- (IMDSyncDeletedChatRecord)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end