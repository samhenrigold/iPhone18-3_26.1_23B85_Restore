@interface IMSharedChatSummaries
+ (id)unreadSummaryWithUnreadCount:(int64_t)count withParticipants:(id)participants withGroupChatName:(id)name;
@end

@implementation IMSharedChatSummaries

+ (id)unreadSummaryWithUnreadCount:(int64_t)count withParticipants:(id)participants withGroupChatName:(id)name
{
  v8 = [participants count];
  v10 = v8;
  if (count == 1)
  {
    v11 = [IMSharedUtilitiesFrameworkBundle(v8 v9)];
  }

  else
  {
    v11 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:objc_msgSend(IMSharedUtilitiesFrameworkBundle(v8, v9), "localizedStringForKey:value:table:", @"%@ unread", &stru_1F1BB91F0, @"IMSharedUtilities", objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", count)];
  }

  v13 = v11;
  v14 = MEMORY[0x1E696AEC0];
  v15 = IMSharedUtilitiesFrameworkBundle(v11, v12);
  if (!name)
  {
    if (v10 <= 1)
    {
      if (!v10)
      {
        v16 = [v15 localizedStringForKey:@"Empty chat (%@)" value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
        nameCopy = v13;
        goto LABEL_6;
      }

      if (v10 == 1)
      {
        v18 = [v15 localizedStringForKey:@"%@ (%@)" value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
        nameCopy = [participants objectAtIndex:0];
        v26 = v13;
LABEL_18:
        v17 = v14;
        v16 = v18;
        return [v17 stringWithFormat:v16, nameCopy, v26, v27, v28];
      }

LABEL_14:
      v20 = [v15 localizedStringForKey:@"%@ value:%@ and %@ other people (%@)" table:{&stru_1F1BB91F0, @"IMSharedUtilities"}];
      v21 = [participants objectAtIndex:0];
      v22 = [participants objectAtIndex:1];
      return [v14 stringWithFormat:v20, v21, v22, objc_msgSend(MEMORY[0x1E696ADA0], "localizedStringFromNumber:numberStyle:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", v10 - 2), 0), v13];
    }

    if (v10 == 2)
    {
      v19 = @"%@, %@ (%@)";
    }

    else
    {
      if (v10 != 3)
      {
        goto LABEL_14;
      }

      v19 = @"%@, %@ and 1 other person (%@)";
    }

    v18 = [v15 localizedStringForKey:v19 value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
    v24 = [participants objectAtIndex:0];
    v26 = [participants objectAtIndex:1];
    v27 = v13;
    nameCopy = v24;
    goto LABEL_18;
  }

  v16 = [v15 localizedStringForKey:@"%@ (%@)" value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
  nameCopy = name;
  v26 = v13;
LABEL_6:
  v17 = v14;
  return [v17 stringWithFormat:v16, nameCopy, v26, v27, v28];
}

@end