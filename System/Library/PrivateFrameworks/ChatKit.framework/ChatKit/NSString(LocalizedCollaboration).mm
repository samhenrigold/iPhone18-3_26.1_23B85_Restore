@interface NSString(LocalizedCollaboration)
+ (id)ck_localizedAddPeopleStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:;
+ (id)ck_localizedCommentedPeopleStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:;
+ (id)ck_localizedCreatedStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:;
+ (id)ck_localizedDeletedStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:;
+ (id)ck_localizedEditStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:;
+ (id)ck_localizedMovedStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:;
+ (id)ck_localizedRemovePeopleStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:;
+ (id)ck_localizedRenamedStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:;
+ (id)ck_localizedUpdateStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:;
+ (id)ck_suggestionCategoryTitleWithNumberOfSenders:()LocalizedCollaboration documentTitle:numberOfFiles:numberOfItems:aggregateContentType:aggregateNoticeType:;
@end

@implementation NSString(LocalizedCollaboration)

+ (id)ck_localizedEditStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:
{
  v7 = a4;
  v8 = v7;
  if (*MEMORY[0x1E6982FE8] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_MADE_EDITS_TO_N_SPREADSHEETS";
  }

  else if (*MEMORY[0x1E6982F60] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_MADE_EDITS_TO_N_PRESENTATIONS";
  }

  else if (*MEMORY[0x1E6983020] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_MADE_EDITS_TO_N_DOCUMENTS";
  }

  else if (*MEMORY[0x1E6983030] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_MADE_EDITS_TO_N_COLLABORATIONS";
  }

  else
  {
    v9 = *MEMORY[0x1E6982DC8];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    if (v9 == v8)
    {
      v13 = @"N_PEOPLE_MADE_EDITS_TO_N_FOLDERS";
    }

    else
    {
      v13 = @"N_PEOPLE_MADE_EDITS_TO_N_COLLABORATIONS";
    }
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
  v15 = [v10 localizedStringWithFormat:v14, a3, a5];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v18 = @"\u200F";
  }

  else
  {
    v18 = @"\u200E";
  }

  v19 = [(__CFString *)v18 stringByAppendingString:v15];

  return v19;
}

+ (id)ck_localizedUpdateStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:
{
  v7 = a4;
  v8 = v7;
  if (*MEMORY[0x1E6982FE8] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_MADE_UPDATES_TO_N_SPREADSHEETS";
  }

  else if (*MEMORY[0x1E6982F60] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_MADE_UPDATES_TO_N_PRESENTATIONS";
  }

  else if (*MEMORY[0x1E6983020] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_MADE_UPDATES_TO_N_DOCUMENTS";
  }

  else if (*MEMORY[0x1E6983030] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_MADE_UPDATES_TO_N_COLLABORATIONS";
  }

  else
  {
    v9 = *MEMORY[0x1E6982DC8];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    if (v9 == v8)
    {
      v13 = @"N_PEOPLE_MADE_UPDATES_TO_N_FOLDERS";
    }

    else
    {
      v13 = @"N_PEOPLE_MADE_UPDATES_TO_N_COLLABORATIONS";
    }
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
  v15 = [v10 localizedStringWithFormat:v14, a3, a5];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v18 = @"\u200F";
  }

  else
  {
    v18 = @"\u200E";
  }

  v19 = [(__CFString *)v18 stringByAppendingString:v15];

  return v19;
}

+ (id)ck_localizedCreatedStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:
{
  v7 = a4;
  v8 = v7;
  if (*MEMORY[0x1E6982FE8] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_CREATED_N_SPREADSHEETS";
  }

  else if (*MEMORY[0x1E6982F60] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_CREATED_N_PRESENTATIONS";
  }

  else if (*MEMORY[0x1E6983020] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_CREATED_N_DOCUMENTS";
  }

  else if (*MEMORY[0x1E6983030] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_CREATED_N_COLLABORATIONS";
  }

  else
  {
    v9 = *MEMORY[0x1E6982DC8];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    if (v9 == v8)
    {
      v13 = @"N_PEOPLE_CREATED_N_FOLDERS";
    }

    else
    {
      v13 = @"N_PEOPLE_CREATED_N_COLLABORATIONS";
    }
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
  v15 = [v10 localizedStringWithFormat:v14, a3, a5];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v18 = @"\u200F";
  }

  else
  {
    v18 = @"\u200E";
  }

  v19 = [(__CFString *)v18 stringByAppendingString:v15];

  return v19;
}

+ (id)ck_localizedDeletedStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:
{
  v7 = a4;
  v8 = v7;
  if (*MEMORY[0x1E6982FE8] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_DELETED_N_SPREADSHEETS";
  }

  else if (*MEMORY[0x1E6982F60] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_DELETED_N_PRESENTATIONS";
  }

  else if (*MEMORY[0x1E6983020] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_DELETED_N_DOCUMENTS";
  }

  else if (*MEMORY[0x1E6983030] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_DELETED_N_COLLABORATIONS";
  }

  else
  {
    v9 = *MEMORY[0x1E6982DC8];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    if (v9 == v8)
    {
      v13 = @"N_PEOPLE_DELETED_N_FOLDERS";
    }

    else
    {
      v13 = @"N_PEOPLE_DELETED_N_COLLABORATIONS";
    }
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
  v15 = [v10 localizedStringWithFormat:v14, a3, a5];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v18 = @"\u200F";
  }

  else
  {
    v18 = @"\u200E";
  }

  v19 = [(__CFString *)v18 stringByAppendingString:v15];

  return v19;
}

+ (id)ck_localizedRenamedStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:
{
  v7 = a4;
  v8 = v7;
  if (*MEMORY[0x1E6982FE8] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_RENAMED_N_SPREADSHEETS";
  }

  else if (*MEMORY[0x1E6982F60] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_RENAMED_N_PRESENTATIONS";
  }

  else if (*MEMORY[0x1E6983020] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_RENAMED_N_DOCUMENTS";
  }

  else if (*MEMORY[0x1E6983030] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_RENAMED_N_COLLABORATIONS";
  }

  else
  {
    v9 = *MEMORY[0x1E6982DC8];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    if (v9 == v8)
    {
      v13 = @"N_PEOPLE_RENAMED_N_FOLDERS";
    }

    else
    {
      v13 = @"N_PEOPLE_RENAMED_N_COLLABORATIONS";
    }
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
  v15 = [v10 localizedStringWithFormat:v14, a3, a5];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v18 = @"\u200F";
  }

  else
  {
    v18 = @"\u200E";
  }

  v19 = [(__CFString *)v18 stringByAppendingString:v15];

  return v19;
}

+ (id)ck_localizedMovedStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:
{
  v7 = a4;
  v8 = v7;
  if (*MEMORY[0x1E6982FE8] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_MOVED_N_SPREADSHEETS";
  }

  else if (*MEMORY[0x1E6982F60] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_MOVED_N_PRESENTATIONS";
  }

  else if (*MEMORY[0x1E6983020] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_MOVED_N_DOCUMENTS";
  }

  else if (*MEMORY[0x1E6983030] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_MOVED_N_COLLABORATIONS";
  }

  else
  {
    v9 = *MEMORY[0x1E6982DC8];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    if (v9 == v8)
    {
      v13 = @"N_PEOPLE_MOVED_N_FOLDERS";
    }

    else
    {
      v13 = @"N_PEOPLE_MOVED_N_COLLABORATIONS";
    }
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
  v15 = [v10 localizedStringWithFormat:v14, a3, a5];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v18 = @"\u200F";
  }

  else
  {
    v18 = @"\u200E";
  }

  v19 = [(__CFString *)v18 stringByAppendingString:v15];

  return v19;
}

+ (id)ck_localizedAddPeopleStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:
{
  v7 = a4;
  v8 = v7;
  if (*MEMORY[0x1E6982FE8] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"ADD_PEOPLE_TO_N_SPREADSHEETS";
  }

  else if (*MEMORY[0x1E6982F60] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"ADD_PEOPLE_TO_N_PRESENTATIONS";
  }

  else if (*MEMORY[0x1E6983020] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"ADD_PEOPLE_TO_N_DOCUMENTS";
  }

  else if (*MEMORY[0x1E6983030] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"ADD_PEOPLE_TO_N_COLLABORATIONS";
  }

  else
  {
    v9 = *MEMORY[0x1E6982DC8];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    if (v9 == v8)
    {
      v13 = @"ADD_PEOPLE_TO_N_FOLDERS";
    }

    else
    {
      v13 = @"ADD_PEOPLE_TO_N_COLLABORATIONS";
    }
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
  v15 = [v10 localizedStringWithFormat:v14, a3, a5];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v18 = @"\u200F";
  }

  else
  {
    v18 = @"\u200E";
  }

  v19 = [(__CFString *)v18 stringByAppendingString:v15];

  return v19;
}

+ (id)ck_localizedRemovePeopleStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:
{
  v7 = a4;
  v8 = v7;
  if (*MEMORY[0x1E6982FE8] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"REMOVE_N_PEOPLE_FROM_N_SPREADSHEETS";
  }

  else if (*MEMORY[0x1E6982F60] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"REMOVE_N_PEOPLE_FROM_N_PRESENTATIONS";
  }

  else if (*MEMORY[0x1E6983020] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"REMOVE_N_PEOPLE_FROM_N_DOCUMENTS";
  }

  else if (*MEMORY[0x1E6983030] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"REMOVE_N_PEOPLE_FROM_N_COLLABORATIONS";
  }

  else
  {
    v9 = *MEMORY[0x1E6982DC8];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    if (v9 == v8)
    {
      v13 = @"REMOVE_N_PEOPLE_FROM_N_FOLDERS";
    }

    else
    {
      v13 = @"REMOVE_N_PEOPLE_FROM_N_COLLABORATIONS";
    }
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
  v15 = [v10 localizedStringWithFormat:v14, a3, a5];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v18 = @"\u200F";
  }

  else
  {
    v18 = @"\u200E";
  }

  v19 = [(__CFString *)v18 stringByAppendingString:v15];

  return v19;
}

+ (id)ck_localizedCommentedPeopleStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:
{
  v7 = a4;
  v8 = v7;
  if (*MEMORY[0x1E6982FE8] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_LEFT_COMMENTS_ON_N_SPREADSHEETS";
  }

  else if (*MEMORY[0x1E6982F60] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_LEFT_COMMENTS_ON_N_PRESENTATIONS";
  }

  else if (*MEMORY[0x1E6983020] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_LEFT_COMMENTS_ON_N_DOCUMENTS";
  }

  else if (*MEMORY[0x1E6983030] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    v13 = @"N_PEOPLE_LEFT_COMMENTS_ON_N_COLLABORATIONS";
  }

  else
  {
    v9 = *MEMORY[0x1E6982DC8];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(v7);
    v12 = v11;
    if (v9 == v8)
    {
      v13 = @"N_PEOPLE_LEFT_COMMENTS_ON_N_FOLDERS";
    }

    else
    {
      v13 = @"N_PEOPLE_LEFT_COMMENTS_ON_N_COLLABORATIONS";
    }
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
  v15 = [v10 localizedStringWithFormat:v14, a3, a5];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v18 = @"\u200F";
  }

  else
  {
    v18 = @"\u200E";
  }

  v19 = [(__CFString *)v18 stringByAppendingString:v15];

  return v19;
}

+ (id)ck_suggestionCategoryTitleWithNumberOfSenders:()LocalizedCollaboration documentTitle:numberOfFiles:numberOfItems:aggregateContentType:aggregateNoticeType:
{
  v14 = a4;
  v15 = a7;
  v16 = v15;
  if (a5 == 1)
  {
    v15 = [v14 length];
    v17 = v15 != 0;
  }

  else
  {
    v17 = 0;
  }

  if (a8 > 4)
  {
    if (a8 <= 6)
    {
      if (a8 == 5)
      {
        if (!v17)
        {
          v18 = [self ck_localizedDeletedStringWithNumberOfPeople:a3 UTType:v16 numberOfFiles:a5];
          goto LABEL_47;
        }
      }

      else if (!v17)
      {
        v18 = [self ck_localizedRenamedStringWithNumberOfPeople:a3 UTType:v16 numberOfFiles:a5];
        goto LABEL_47;
      }

      goto LABEL_30;
    }

    switch(a8)
    {
      case 7:
        if (!v17)
        {
          v18 = [self ck_localizedMovedStringWithNumberOfPeople:a3 UTType:v16 numberOfFiles:a5];
          goto LABEL_47;
        }

        goto LABEL_30;
      case 8:
        if (!v17)
        {
          v18 = [self ck_localizedAddPeopleStringWithNumberOfPeople:a3 UTType:v16 numberOfFiles:a5];
          goto LABEL_47;
        }

        v19 = MEMORY[0x1E696AEC0];
        v20 = CKFrameworkBundle(v15);
        v21 = v20;
        v22 = @"ADD_N_PEOPLE_TO_%@";
        break;
      case 9:
        if (!v17)
        {
          v18 = [self ck_localizedRemovePeopleStringWithNumberOfPeople:a3 UTType:v16 numberOfFiles:a5];
          goto LABEL_47;
        }

        v19 = MEMORY[0x1E696AEC0];
        v20 = CKFrameworkBundle(v15);
        v21 = v20;
        v22 = @"REMOVE_N_PEOPLE_FROM_%@";
        break;
      default:
        goto LABEL_40;
    }

LABEL_34:
    v28 = [v20 localizedStringForKey:v22 value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
    v35 = v14;
    goto LABEL_35;
  }

  if (a8 <= 1)
  {
    if (!a8)
    {
      if (v17)
      {
        goto LABEL_30;
      }

      selfCopy2 = self;
      v24 = a3;
      v25 = v16;
      v26 = a5;
LABEL_41:
      v18 = [selfCopy2 ck_localizedUpdateStringWithNumberOfPeople:v24 UTType:v25 numberOfFiles:v26];
      goto LABEL_47;
    }

    if (a8 == 1)
    {
      if (!v17)
      {
        v18 = [self ck_localizedEditStringWithNumberOfPeople:a3 UTType:v16 numberOfFiles:a5];
        goto LABEL_47;
      }

      v19 = MEMORY[0x1E696AEC0];
      v20 = CKFrameworkBundle(v15);
      v21 = v20;
      v22 = @"N_PEOPLE_MADE_EDITS_TO_%@";
      goto LABEL_34;
    }

LABEL_40:
    selfCopy2 = self;
    v24 = a3;
    v25 = v16;
    v26 = a6;
    goto LABEL_41;
  }

  if (a8 == 2)
  {
    if (!v17)
    {
      v18 = [self ck_localizedCommentedPeopleStringWithNumberOfPeople:a3 UTType:v16 numberOfFiles:a5];
      goto LABEL_47;
    }

    v19 = MEMORY[0x1E696AEC0];
    v20 = CKFrameworkBundle(v15);
    v21 = v20;
    v22 = @"N_PEOPLE_LEFT_COMMENTS_ON_%@";
    goto LABEL_34;
  }

  if (a8 == 3)
  {
    v19 = MEMORY[0x1E696AEC0];
    v21 = CKFrameworkBundle(v15);
    v28 = [v21 localizedStringForKey:@"N_PEOPLE_MENTIONED_YOU" value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
LABEL_35:
    [v19 localizedStringWithFormat:v28, a3, v35];
    goto LABEL_36;
  }

  if (v17)
  {
LABEL_30:
    v27 = MEMORY[0x1E696AEC0];
    v21 = CKFrameworkBundle(v15);
    v28 = [v21 localizedStringForKey:@"N_COLLABORATION_UPDATES_TO_%@" value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
    [v27 localizedStringWithFormat:v28, a6, v14];
    v29 = LABEL_36:;

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v32 = @"\u200F";
    }

    else
    {
      v32 = @"\u200E";
    }

    v33 = [(__CFString *)v32 stringByAppendingString:v29];

    goto LABEL_48;
  }

  v18 = [self ck_localizedCreatedStringWithNumberOfPeople:a3 UTType:v16 numberOfFiles:a5];
LABEL_47:
  v33 = v18;
LABEL_48:

  return v33;
}

@end