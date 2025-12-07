@interface IMCTChatBotUtilities
+ (BOOL)IMHandleIsChatBot:(id)bot;
+ (id)IMChipFromCTChip:(id)chip originalID:(id)d;
+ (id)IMChipListFromCTChipList:(id)list originalID:(id)d;
+ (id)IMChipListFromSuggestions:(id)suggestions;
- (IMCTChatBotUtilities)init;
@end

@implementation IMCTChatBotUtilities

+ (BOOL)IMHandleIsChatBot:(id)bot
{
  v3 = sub_1A88C82E8();
  v5 = sub_1A87BB058(v3, v4);

  return v5 & 1;
}

+ (id)IMChipListFromSuggestions:(id)suggestions
{
  v3 = sub_1A88C82E8();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = sub_1A87BA620(v3, v5);

  return v6;
}

+ (id)IMChipListFromCTChipList:(id)list originalID:(id)d
{
  v5 = sub_1A88C82E8();
  v7 = v6;
  swift_getObjCClassMetadata();
  listCopy = list;
  v9 = sub_1A87BA95C(list, v5, v7);

  return v9;
}

+ (id)IMChipFromCTChip:(id)chip originalID:(id)d
{
  v5 = sub_1A88C82E8();
  v7 = v6;
  chipCopy = chip;
  v9 = sub_1A87BC3A0(chipCopy, v5, v7);

  return v9;
}

- (IMCTChatBotUtilities)init
{
  v3.receiver = self;
  v3.super_class = IMCTChatBotUtilities;
  return [(IMCTChatBotUtilities *)&v3 init];
}

@end