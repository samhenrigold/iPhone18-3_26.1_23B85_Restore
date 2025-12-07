@interface IMDChatQueryStrings
+ (NSString)chatRowIDsSortedByLastMessageDate;
+ (NSString)copyAllActiveChatsQuery;
+ (NSString)copyAllChatsQuery;
+ (NSString)copyAllNamedChatsQuery;
+ (NSString)copyAllRecentChatsWithLimitQuery;
+ (NSString)copyChatGUIDsWithUnreadMessagesQuery;
+ (NSString)copyChatsWithIdentiferAndDomain;
+ (NSString)copyChatsWithIdentifier;
+ (NSString)remapChatsWithLastAddressedSIMIDToNewLastAddressedIDsQuery;
+ (id)allColumnsWithPrefix:(id)prefix;
+ (id)copyChatsWithUnreadMessagesWithLimit:(int64_t)limit beforeDate:(id)date extraCriteria:(id)criteria;
+ (id)copyRecentChatsQueryWithFilterCount:(int)count;
- (IMDChatQueryStrings)init;
@end

@implementation IMDChatQueryStrings

+ (id)allColumnsWithPrefix:(id)prefix
{
  if (prefix)
  {
    v3 = sub_1B7CFEA60();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  sub_1B7AF9E34(v3, v5);

  v6 = sub_1B7CFEA30();

  return v6;
}

+ (NSString)copyAllChatsQuery
{
  selectAllColumns = [self selectAllColumns];
  sub_1B7CFEA60();

  MEMORY[0x1B8CADCA0](0xD000000000000018, 0x80000001B7D4EC60);

  v3 = sub_1B7CFEA30();

  return v3;
}

+ (NSString)copyAllNamedChatsQuery
{
  selectAllColumns = [self selectAllColumns];
  sub_1B7CFEA60();

  MEMORY[0x1B8CADCA0](0xD00000000000004ELL, 0x80000001B7D4EC10);

  v3 = sub_1B7CFEA30();

  return v3;
}

+ (NSString)remapChatsWithLastAddressedSIMIDToNewLastAddressedIDsQuery
{
  v2 = sub_1B7CFEA30();

  return v2;
}

+ (NSString)chatRowIDsSortedByLastMessageDate
{
  v2 = sub_1B7CFEA30();

  return v2;
}

+ (NSString)copyAllActiveChatsQuery
{
  selectAllColumns = [self selectAllColumns];
  sub_1B7CFEA60();

  MEMORY[0x1B8CADCA0](0xD00000000000004ELL, 0x80000001B7D4EAD0);

  v3 = sub_1B7CFEA30();

  return v3;
}

+ (NSString)copyChatGUIDsWithUnreadMessagesQuery
{
  swift_getObjCClassMetadata();
  sub_1B7C0EC44(0, 0);
  v2 = sub_1B7CFEA30();

  return v2;
}

+ (NSString)copyAllRecentChatsWithLimitQuery
{
  swift_getObjCClassMetadata();
  sub_1B7C0EE48();
  v2 = sub_1B7CFEA30();

  return v2;
}

+ (id)copyRecentChatsQueryWithFilterCount:(int)count
{
  swift_getObjCClassMetadata();
  sub_1B7C0EF40(count);
  v4 = sub_1B7CFEA30();

  return v4;
}

+ (id)copyChatsWithUnreadMessagesWithLimit:(int64_t)limit beforeDate:(id)date extraCriteria:(id)criteria
{
  v8 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  if (date)
  {
    sub_1B7CFE0F0();
    v11 = sub_1B7CFE120();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_1B7CFE120();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  if (criteria)
  {
    v13 = sub_1B7CFEA60();
    criteria = v14;
  }

  else
  {
    v13 = 0;
  }

  swift_getObjCClassMetadata();
  sub_1B7C0F114(limit, v10, v13, criteria);

  sub_1B7C10844(v10);
  v15 = sub_1B7CFEA30();

  return v15;
}

+ (NSString)copyChatsWithIdentifier
{
  selectAllColumnsWithAlias = [self selectAllColumnsWithAlias];
  sub_1B7CFEA60();

  MEMORY[0x1B8CADCA0](0xD000000000000044, 0x80000001B7D4E650);

  v3 = sub_1B7CFEA30();

  return v3;
}

+ (NSString)copyChatsWithIdentiferAndDomain
{
  selectAllColumnsWithAlias = [self selectAllColumnsWithAlias];
  sub_1B7CFEA60();

  MEMORY[0x1B8CADCA0](0xD000000000000053, 0x80000001B7D4E5F0);

  v3 = sub_1B7CFEA30();

  return v3;
}

- (IMDChatQueryStrings)init
{
  v3.receiver = self;
  v3.super_class = IMDChatQueryStrings;
  return [(IMDChatQueryStrings *)&v3 init];
}

@end