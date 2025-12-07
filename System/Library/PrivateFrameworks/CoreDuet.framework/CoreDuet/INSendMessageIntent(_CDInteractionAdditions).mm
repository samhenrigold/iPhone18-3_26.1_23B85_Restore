@interface INSendMessageIntent(_CDInteractionAdditions)
- (id)cd_derivedIntentIdentifier;
- (id)cd_groupName;
@end

@implementation INSendMessageIntent(_CDInteractionAdditions)

- (id)cd_groupName
{
  speakableGroupName = [self speakableGroupName];
  spokenPhrase = [speakableGroupName spokenPhrase];

  return spokenPhrase;
}

- (id)cd_derivedIntentIdentifier
{
  v52 = *MEMORY[0x1E69E9840];
  notificationThreadIdentifier = [self notificationThreadIdentifier];
  if (!notificationThreadIdentifier || (v3 = notificationThreadIdentifier, [self notificationThreadIdentifier], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v3, !v5))
  {
    conversationIdentifier = [self conversationIdentifier];
    if (conversationIdentifier)
    {
      v9 = conversationIdentifier;
      conversationIdentifier2 = [self conversationIdentifier];
      v11 = [conversationIdentifier2 length];

      if (v11)
      {
        recipients = NSStringFromSelector(sel_conversationIdentifier);
        conversationIdentifier3 = [self conversationIdentifier];
        goto LABEL_7;
      }
    }

    speakableGroupName = [self speakableGroupName];
    spokenPhrase = [speakableGroupName spokenPhrase];
    if (spokenPhrase)
    {
      v16 = spokenPhrase;
      speakableGroupName2 = [self speakableGroupName];
      spokenPhrase2 = [speakableGroupName2 spokenPhrase];
      v19 = [spokenPhrase2 length];

      if (v19)
      {
        recipients = NSStringFromSelector(sel_speakableGroupName);
        speakableGroupName3 = [self speakableGroupName];
        spokenPhrase3 = [speakableGroupName3 spokenPhrase];
        v13 = _CDNormalizeString(spokenPhrase3);
LABEL_40:

        goto LABEL_41;
      }
    }

    else
    {
    }

    recipients = [self recipients];
    if (recipients)
    {
      recipients2 = [self recipients];
      v13 = [recipients2 count];

      if (v13)
      {
        recipients = NSStringFromSelector(sel_recipients);
        speakableGroupName3 = [self recipients];
        spokenPhrase3 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v41 = [&unk_1F05EF710 countByEnumeratingWithState:&v46 objects:v51 count:16];
        if (v41)
        {
          v39 = recipients;
          v40 = *v47;
LABEL_16:
          v22 = 0;
          while (1)
          {
            if (*v47 != v40)
            {
              objc_enumerationMutation(&unk_1F05EF710);
            }

            v23 = *(*(&v46 + 1) + 8 * v22);
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v24 = [speakableGroupName3 valueForKey:v23];
            v25 = [v24 countByEnumeratingWithState:&v42 objects:v50 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v43;
LABEL_21:
              v28 = 0;
              while (1)
              {
                if (*v43 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v42 + 1) + 8 * v28);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || ![v29 length])
                {
                  break;
                }

                v30 = _CDNormalizeString(v29);
                [spokenPhrase3 addObject:v30];

                if (v26 == ++v28)
                {
                  v26 = [v24 countByEnumeratingWithState:&v42 objects:v50 count:16];
                  if (v26)
                  {
                    goto LABEL_21;
                  }

                  break;
                }
              }
            }

            v31 = [spokenPhrase3 count];
            if (v31 == [speakableGroupName3 count])
            {
              break;
            }

            [spokenPhrase3 removeAllObjects];
            if (++v22 == v41)
            {
              v41 = [&unk_1F05EF710 countByEnumeratingWithState:&v46 objects:v51 count:16];
              if (v41)
              {
                goto LABEL_16;
              }

              goto LABEL_38;
            }
          }

          v32 = v23;
          if (v32)
          {
            v33 = v32;
            v34 = [spokenPhrase3 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
            v35 = MEMORY[0x1E696AEC0];
            v36 = [v34 componentsJoinedByString:@"-"];
            v13 = [v35 stringWithFormat:@"%@:%@", v33, v36];

            goto LABEL_39;
          }

LABEL_38:
          v13 = 0;
LABEL_39:
          recipients = v39;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_40;
      }

      recipients = 0;
    }

    else
    {
      v13 = 0;
    }

    v37 = 0;
    goto LABEL_44;
  }

  recipients = NSStringFromSelector(sel_notificationThreadIdentifier);
  conversationIdentifier3 = [self notificationThreadIdentifier];
LABEL_7:
  speakableGroupName3 = conversationIdentifier3;
  v13 = _CDNormalizeString(conversationIdentifier3);
LABEL_41:

  v37 = 0;
  if (v13 && recipients)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%@)", recipients, v13];
  }

LABEL_44:

  return v37;
}

@end