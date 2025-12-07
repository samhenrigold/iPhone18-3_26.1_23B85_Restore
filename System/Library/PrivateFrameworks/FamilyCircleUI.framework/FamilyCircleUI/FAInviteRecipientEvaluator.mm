@interface FAInviteRecipientEvaluator
- (id)parseRecipientAddresses:(id)addresses;
- (id)recipientAlreadyInFamily:(id)family emailOnly:(BOOL)only recipients:(id)recipients;
- (void)showAlreadyFamilyMember:(id)member presenter:(id)presenter;
- (void)validateRecipients:(id)recipients inviteContext:(id)context presenter:(id)presenter completion:(id)completion;
@end

@implementation FAInviteRecipientEvaluator

- (id)parseRecipientAddresses:(id)addresses
{
  v18 = *MEMORY[0x277D85DE8];
  addressesCopy = addresses;
  array = [MEMORY[0x277CBEB18] array];
  v5 = objc_alloc_init(MEMORY[0x277CFBE00]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = addressesCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v5 firstEmailAddressInString:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)recipientAlreadyInFamily:(id)family emailOnly:(BOOL)only recipients:(id)recipients
{
  v60 = *MEMORY[0x277D85DE8];
  familyCopy = family;
  recipientsCopy = recipients;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v28 = familyCopy;
  obj = [familyCopy members];
  v33 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v33)
  {
    v32 = *v53;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v53 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v52 + 1) + 8 * i);
        appleID = [v9 appleID];
        if (!appleID)
        {
          goto LABEL_20;
        }

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v10 = recipientsCopy;
        fullName2 = [v10 countByEnumeratingWithState:&v48 objects:v58 count:16];
        if (fullName2)
        {
          v12 = *v49;
          while (2)
          {
            for (j = 0; j != fullName2; ++j)
            {
              if (*v49 != v12)
              {
                objc_enumerationMutation(v10);
              }

              if ([appleID ea_isEqualToEmailAddress:*(*(&v48 + 1) + 8 * j)])
              {
                fullName = [v9 fullName];

                if (fullName)
                {
                  fullName2 = [v9 fullName];
                  [v7 addObject:fullName2];

                  LOBYTE(fullName2) = 1;
                  goto LABEL_19;
                }
              }
            }

            fullName2 = [v10 countByEnumeratingWithState:&v48 objects:v58 count:16];
            if (fullName2)
            {
              continue;
            }

            break;
          }
        }

LABEL_19:

        if ((fullName2 & 1) == 0)
        {
LABEL_20:
          if (!only)
          {
            v31 = i;
            memberPhoneNumbers = [v9 memberPhoneNumbers];
            v16 = [memberPhoneNumbers componentsSeparatedByString:{@", "}];

            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v35 = v16;
            v38 = [v35 countByEnumeratingWithState:&v44 objects:v57 count:16];
            if (v38)
            {
              v37 = *v45;
              do
              {
                for (k = 0; k != v38; ++k)
                {
                  if (*v45 != v37)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v18 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:*(*(&v44 + 1) + 8 * k)];
                  if (v18)
                  {
                    v39 = k;
                    v42 = 0u;
                    v43 = 0u;
                    v40 = 0u;
                    v41 = 0u;
                    v19 = recipientsCopy;
                    v20 = [v19 countByEnumeratingWithState:&v40 objects:v56 count:16];
                    if (v20)
                    {
                      v21 = v20;
                      v22 = *v41;
                      do
                      {
                        for (m = 0; m != v21; ++m)
                        {
                          if (*v41 != v22)
                          {
                            objc_enumerationMutation(v19);
                          }

                          v24 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:*(*(&v40 + 1) + 8 * m)];
                          if ([v18 isEqual:v24])
                          {
                            fullName3 = [v9 fullName];

                            if (fullName3)
                            {
                              fullName4 = [v9 fullName];
                              [v7 addObject:fullName4];
                            }
                          }
                        }

                        v21 = [v19 countByEnumeratingWithState:&v40 objects:v56 count:16];
                      }

                      while (v21);
                    }

                    k = v39;
                  }
                }

                v38 = [v35 countByEnumeratingWithState:&v44 objects:v57 count:16];
              }

              while (v38);
            }

            i = v31;
          }
        }
      }

      v33 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v33);
  }

  return v7;
}

- (void)showAlreadyFamilyMember:(id)member presenter:(id)presenter
{
  memberCopy = member;
  presenterCopy = presenter;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__FAInviteRecipientEvaluator_showAlreadyFamilyMember_presenter___block_invoke;
  block[3] = &unk_2782F3190;
  v11 = memberCopy;
  selfCopy = self;
  v13 = presenterCopy;
  v8 = presenterCopy;
  v9 = memberCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __64__FAInviteRecipientEvaluator_showAlreadyFamilyMember_presenter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2 <= 1)
  {
    v5 = @"FAMILY_INVITE_ALREADY_FAMILY_MEMBER";
  }

  else
  {
    v5 = @"FAMILY_INVITE_ALREADY_FAMILY_MEMBERS";
  }

  v14 = [v3 localizedStringForKey:v5 value:&stru_282D9AA68 table:@"Localizable"];

  v6 = MEMORY[0x277CCACA8];
  v7 = MEMORY[0x277CCAAF0];
  v8 = [*(a1 + 32) allObjects];
  v9 = [v7 localizedStringByJoiningStrings:v8];
  v10 = [v6 stringWithFormat:v14, v9];

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"OK" value:&stru_282D9AA68 table:@"Localizable"];

  v13 = [MEMORY[0x277D75110] alertWithTitle:v10 message:0 buttonTitle:v12 actionHandler:&__block_literal_global_7];
  [*(a1 + 48) presentViewController:v13 animated:1 completion:0];
}

- (void)validateRecipients:(id)recipients inviteContext:(id)context presenter:(id)presenter completion:(id)completion
{
  recipientsCopy = recipients;
  contextCopy = context;
  presenterCopy = presenter;
  completionCopy = completion;
  if ([recipientsCopy count])
  {
    if ([contextCopy validation])
    {
      v14 = objc_alloc_init(MEMORY[0x277D08280]);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __84__FAInviteRecipientEvaluator_validateRecipients_inviteContext_presenter_completion___block_invoke;
      v15[3] = &unk_2782F31B8;
      v15[4] = self;
      v16 = recipientsCopy;
      v18 = completionCopy;
      v17 = presenterCopy;
      [v14 startRequestWithCompletionHandler:v15];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 1);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __84__FAInviteRecipientEvaluator_validateRecipients_inviteContext_presenter_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) recipientAlreadyInFamily:a2 emailOnly:0 recipients:*(a1 + 40)];
  v3 = [v5 count];
  v4 = *(*(a1 + 56) + 16);
  if (v3)
  {
    v4();
    [*(a1 + 32) showAlreadyFamilyMember:v5 presenter:*(a1 + 48)];
  }

  else
  {
    v4();
  }
}

@end