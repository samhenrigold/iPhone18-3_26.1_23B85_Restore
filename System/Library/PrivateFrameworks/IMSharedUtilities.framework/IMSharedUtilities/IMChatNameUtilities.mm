@interface IMChatNameUtilities
+ (id)getDisplayNameFromParticipantNames:(id)names;
@end

@implementation IMChatNameUtilities

+ (id)getDisplayNameFromParticipantNames:(id)names
{
  v34 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v4 = [namesCopy count];
  if (v4)
  {
    v26 = v4 - 1;
    if (v4 == 1)
    {
      firstObject = [namesCopy firstObject];
      v6 = [firstObject copy];
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v25 = namesCopy;
      obj = namesCopy;
      v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v7)
      {
        v9 = v7;
        v6 = 0;
        v10 = 0;
        v11 = *v30;
        do
        {
          v12 = 0;
          v13 = v26 - v10;
          v27 = v10;
          v14 = -v10;
          do
          {
            if (*v30 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v29 + 1) + 8 * v12);
            if (v14 == v12)
            {
              v16 = MEMORY[0x1E696AEC0];
              v17 = IMSharedUtilitiesFrameworkBundle(v7, v8);
              v18 = [v17 localizedStringForKey:@"PARTICIPANT_ADDRESS_FIRST_ITEM" value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
              [v16 localizedStringWithFormat:v18, v15];
              v6 = v19 = v6;
            }

            else
            {
              v20 = MEMORY[0x1E696AEC0];
              v21 = IMSharedUtilitiesFrameworkBundle(v7, v8);
              v17 = v21;
              if (v13 == v12)
              {
                v22 = @"PARTICIPANT_ADDRESS_FINAL_ITEM";
              }

              else
              {
                v22 = @"PARTICIPANT_ADDRESS_NON_FINAL_ITEM";
              }

              v18 = [v21 localizedStringForKey:v22 value:&stru_1F1BB91F0 table:@"IMSharedUtilities"];
              v19 = [v20 localizedStringWithFormat:v18, v15];
              v23 = [v6 stringByAppendingString:v19];

              v6 = v23;
            }

            ++v12;
          }

          while (v9 != v12);
          v10 = v27 + v9;
          v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
          v9 = v7;
        }

        while (v7);
      }

      else
      {
        v6 = 0;
      }

      namesCopy = v25;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end