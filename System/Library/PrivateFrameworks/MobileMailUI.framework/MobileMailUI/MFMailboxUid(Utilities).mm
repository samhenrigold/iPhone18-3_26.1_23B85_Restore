@interface MFMailboxUid(Utilities)
+ (id)iconForType:()Utilities;
+ (id)iconNameForType:()Utilities;
+ (id)shorcutIconNameForMailboxType:()Utilities;
- (id)foundInDescriptionIncludingAccount:()Utilities;
- (id)tinyDisplayIconWithColor:()Utilities;
- (uint64_t)icon;
- (uint64_t)iconName;
- (uint64_t)level;
@end

@implementation MFMailboxUid(Utilities)

+ (id)shorcutIconNameForMailboxType:()Utilities
{
  v19[8] = *MEMORY[0x277D85DE8];
  v4 = shorcutIconNameForMailboxType___mailboxAppShortcutIconNames;
  if (!shorcutIconNameForMailboxType___mailboxAppShortcutIconNames)
  {
    v5 = *MEMORY[0x277D281A0];
    v18[0] = &unk_2826DC980;
    v18[1] = &unk_2826DC998;
    v6 = *MEMORY[0x277D281D0];
    v19[0] = v5;
    v19[1] = v6;
    v7 = *MEMORY[0x277D281C0];
    v18[2] = &unk_2826DC9B0;
    v18[3] = &unk_2826DC9C8;
    v8 = *MEMORY[0x277D28190];
    v19[2] = v7;
    v19[3] = v8;
    v9 = *MEMORY[0x277D281B8];
    v18[4] = &unk_2826DC9E0;
    v18[5] = &unk_2826DC9F8;
    v10 = *MEMORY[0x277D281A8];
    v19[4] = v9;
    v19[5] = v10;
    v18[6] = &unk_2826DCA10;
    v18[7] = &unk_2826DCA28;
    v11 = *MEMORY[0x277D281B0];
    v19[6] = *MEMORY[0x277D28188];
    v19[7] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:8];
    v13 = shorcutIconNameForMailboxType___mailboxAppShortcutIconNames;
    shorcutIconNameForMailboxType___mailboxAppShortcutIconNames = v12;

    v4 = shorcutIconNameForMailboxType___mailboxAppShortcutIconNames;
  }

  if ((a3 - 8) >= 0xFFFFFFFFFFFFFFF9)
  {
    v14 = a3;
  }

  else
  {
    v14 = 0;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
  v16 = [v4 objectForKeyedSubscript:v15];

  return v16;
}

+ (id)iconNameForType:()Utilities
{
  v19[8] = *MEMORY[0x277D85DE8];
  v4 = iconNameForType__mailboxImages;
  if (!iconNameForType__mailboxImages)
  {
    v5 = *MEMORY[0x277D281A0];
    v18[0] = &unk_2826DC980;
    v18[1] = &unk_2826DC998;
    v6 = *MEMORY[0x277D281D0];
    v19[0] = v5;
    v19[1] = v6;
    v7 = *MEMORY[0x277D281C0];
    v18[2] = &unk_2826DC9B0;
    v18[3] = &unk_2826DC9C8;
    v8 = *MEMORY[0x277D28190];
    v19[2] = v7;
    v19[3] = v8;
    v9 = *MEMORY[0x277D281B8];
    v18[4] = &unk_2826DC9E0;
    v18[5] = &unk_2826DC9F8;
    v10 = *MEMORY[0x277D281A8];
    v19[4] = v9;
    v19[5] = v10;
    v18[6] = &unk_2826DCA10;
    v18[7] = &unk_2826DCA28;
    v11 = *MEMORY[0x277D281B0];
    v19[6] = *MEMORY[0x277D28188];
    v19[7] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:8];
    v13 = iconNameForType__mailboxImages;
    iconNameForType__mailboxImages = v12;

    v4 = iconNameForType__mailboxImages;
  }

  if ((a3 - 8) >= 0xFFFFFFFFFFFFFFF9)
  {
    v14 = a3;
  }

  else
  {
    v14 = 0;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
  v16 = [v4 objectForKeyedSubscript:v15];

  return v16;
}

+ (id)iconForType:()Utilities
{
  v3 = MEMORY[0x277D755B8];
  v4 = [objc_opt_class() iconNameForType:a3];
  v5 = [v3 mf_systemImageNamed:v4 forView:7];

  return v5;
}

- (uint64_t)iconName
{
  v2 = objc_opt_class();
  mailboxType = [self mailboxType];

  return [v2 iconNameForType:mailboxType];
}

- (uint64_t)icon
{
  v2 = objc_opt_class();
  mailboxType = [self mailboxType];

  return [v2 iconForType:mailboxType];
}

- (uint64_t)level
{
  parent = [self parent];
  if (!parent)
  {
    return 0;
  }

  v2 = parent;
  v3 = 0;
  do
  {
    if ([v2 type] == 8)
    {
      break;
    }

    parent2 = [v2 parent];
    v3 = (v3 + 1);

    v2 = parent2;
  }

  while (parent2);

  return v3;
}

- (id)foundInDescriptionIncludingAccount:()Utilities
{
  displayNameUsingSpecialNames = [self displayNameUsingSpecialNames];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [mainBundle localizedStringForKey:@"MAILBOX_SUFFIX" value:&stru_2826D1AD8 table:@"Main"];
  if ([displayNameUsingSpecialNames hasSuffix:v7])
  {
    v8 = 1;
  }

  else
  {
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [mainBundle2 localizedStringForKey:@"BOX_SUFFIX" value:&stru_2826D1AD8 table:@"Main"];
    if ([displayNameUsingSpecialNames hasSuffix:v10])
    {
      v8 = 1;
    }

    else
    {
      mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
      v12 = [mainBundle3 localizedStringForKey:@"FOLDER_SUFFIX" value:&stru_2826D1AD8 table:@"Main"];
      v8 = [displayNameUsingSpecialNames hasSuffix:v12];
    }
  }

  if (!a3 || (v13 = [self type], (v13 - 2) >= 4) && v13 != 7 || (objc_msgSend(self, "account"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "displayName"), v15 = objc_claimAutoreleasedReturnValue(), v14, !v15) || (_folderNameFormatString(1, v8), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", v16, v15, displayNameUsingSpecialNames), v17 = objc_claimAutoreleasedReturnValue(), v16, v15, !v17))
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = _folderNameFormatString(0, v8);
    v17 = [v18 stringWithFormat:v19, displayNameUsingSpecialNames];
  }

  return v17;
}

- (id)tinyDisplayIconWithColor:()Utilities
{
  v4 = a3;
  type = [self type];
  v6 = MEMORY[0x277D281C8];
  if (type != 4)
  {
    v6 = MEMORY[0x277D281A0];
  }

  v7 = *v6;
  v8 = [MEMORY[0x277D755B8] mf_systemImageNamed:v7 forView:20];
  v9 = v8;
  if (v4)
  {
    v10 = [v8 _flatImageWithColor:v4];

    v9 = v10;
  }

  return v9;
}

@end