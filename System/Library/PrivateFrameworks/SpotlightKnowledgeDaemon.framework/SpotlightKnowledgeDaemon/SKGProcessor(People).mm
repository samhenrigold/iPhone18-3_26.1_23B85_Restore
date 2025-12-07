@interface SKGProcessor(People)
- (SKGPersonComponents)personWithName:()People alternateName:contactIdentifier:personIdentifier:emails:phones:addresses:;
- (id)accountOwnerFromRecord:()People;
- (id)authorFromMessageRecord:()People;
- (id)authorsFromPhoneRecord:()People;
- (id)contactFromRecord:()People;
- (id)createdScoreFromRecord:()People;
- (id)lastEditorFromRecord:()People;
- (id)ownerFromRecord:()People;
- (id)peopleForAttributeKey:()People fromRecord:;
- (id)peopleForSharedAttributeKey:()People fromRecord:;
- (id)peopleFromNotesRecord:()People;
- (id)peopleFromPhotoRecord:()People;
- (id)recipientsFromPhoneRecord:()People;
- (id)scoreFromDate:()People;
- (id)viewedScoreFromRecord:()People;
- (uint64_t)generateMegadomePeopleUsingBlock:()People cancelBlock:;
- (uint64_t)generatePeopleForRecord:()People processedItem:processedItemBlock:cancelBlock:;
@end

@implementation SKGProcessor(People)

- (id)scoreFromDate:()People
{
  if (a3)
  {
    MEMORY[0x238376E40](a3, a2);
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  }

  else
  {
    v4 = &unk_2846E88B0;
  }

  return v4;
}

- (id)createdScoreFromRecord:()People
{
  v4 = a3;
  if (v4 && ((v5 = copyDateValueForKey()) != 0 || (v5 = copyDateValueForKey()) != 0 || (v5 = copyDateValueForKey()) != 0 || (v5 = copyDateValueForKey()) != 0))
  {
    v6 = v5;
    v7 = [self scoreFromDate:v5];
  }

  else
  {
    v7 = &unk_2846E88B0;
  }

  return v7;
}

- (id)viewedScoreFromRecord:()People
{
  v4 = a3;
  if (v4 && ((v5 = copyDateValueForKey()) != 0 || (v5 = copyDateValueForKey()) != 0))
  {
    v6 = v5;
    v7 = [self scoreFromDate:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)contactFromRecord:()People
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = copyStringValueForKey();
  v7 = copyStringValueForKey();
  v8 = copyArrayValueForKey();
  v9 = copyArrayValueForKey();
  v10 = copyArrayValueForKey();
  v11 = 0;
  if (v6 && v7 && v8)
  {
    if ([v8 count] < 2 || !objc_msgSend(v9, "count") && !objc_msgSend(v10, "count"))
    {
      v11 = 0;
      goto LABEL_16;
    }

    v11 = [self personWithName:v7 alternateName:0 contactIdentifier:v6 personIdentifier:0 emails:v9 phones:v10 addresses:0];
    nameComponents = [v11 nameComponents];
    firstObject = [nameComponents firstObject];

    givenName = [firstObject givenName];
    if (givenName)
    {
      v25 = givenName;
      givenName2 = [firstObject givenName];
      firstObject2 = [v8 firstObject];
      v26 = givenName2;
      v17 = givenName2;
      v18 = firstObject2;
      if ([v17 isEqualToString:firstObject2] && (objc_msgSend(firstObject, "familyName"), (v19 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v23 = v19;
        familyName = [firstObject familyName];
        lastObject = [v8 lastObject];
        v22 = [familyName isEqualToString:lastObject];

        if (v22)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    firstObject = v11;
    v11 = 0;
LABEL_15:
  }

LABEL_16:

  objc_autoreleasePoolPop(v5);

  return v11;
}

- (id)authorFromMessageRecord:()People
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = copyStringValueForKey();
  v7 = copyArrayValueForKey();
  v8 = copyArrayValueForKey();
  v9 = copyArrayValueForKey();
  v10 = copyArrayValueForKey();
  v11 = copyArrayValueForKey();
  v12 = v11;
  if (!v6 && !v7 && !v8 && !v10 && !v11)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v14 = [v7 count];
  if (v14)
  {
    firstObject = [v7 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  if ([v12 count])
  {
    [v12 firstObject];
    v15 = v17 = v5;
    v13 = [self personWithName:firstObject alternateName:v6 contactIdentifier:v15 personIdentifier:0 emails:v8 phones:v9 addresses:v10];

    v5 = v17;
    if (!v14)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v13 = [self personWithName:firstObject alternateName:v6 contactIdentifier:0 personIdentifier:0 emails:v8 phones:v9 addresses:v10];
  if (v14)
  {
LABEL_12:
  }

LABEL_13:

  objc_autoreleasePoolPop(v5);

  return v13;
}

- (id)peopleFromPhotoRecord:()People
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = copyArrayValueForKey();
  v7 = copyArrayValueForKey();
  v8 = copyArrayValueForKey();
  v9 = copyArrayValueForKey();
  v10 = copyArrayValueForKey();
  v11 = v10;
  if (v6 || v7 || v8 || v9 || v10)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__23;
    v20 = __Block_byref_object_dispose__23;
    v21 = 0;
    v13 = objc_autoreleasePoolPush();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__SKGProcessor_People__peopleFromPhotoRecord___block_invoke;
    v15[3] = &unk_27893F058;
    v15[4] = self;
    v15[5] = &v16;
    enumerateParallelContactInfo(v6, v7, v8, 0, v9, v11, v15);
    objc_autoreleasePoolPop(v13);
    v12 = v17[5];
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v12;
}

- (id)authorsFromPhoneRecord:()People
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = copyArrayValueForKey();
  v7 = copyArrayValueForKey();
  v8 = copyArrayValueForKey();
  v9 = 0;
  if (v6 && v7)
  {
    v10 = [v6 count];
    if (v10 == [(__CFArray *)v7 count])
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy__23;
      v18 = __Block_byref_object_dispose__23;
      v19 = 0;
      v11 = objc_autoreleasePoolPush();
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __47__SKGProcessor_People__authorsFromPhoneRecord___block_invoke;
      v13[3] = &unk_27893F058;
      v13[4] = self;
      v13[5] = &v14;
      enumerateParallelContactInfo(v6, v7, 0, 0, v8, 0, v13);
      objc_autoreleasePoolPop(v11);
      v9 = v15[5];
      _Block_object_dispose(&v14, 8);
    }

    else
    {
      v9 = 0;
    }
  }

  objc_autoreleasePoolPop(v5);

  return v9;
}

- (id)recipientsFromPhoneRecord:()People
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = copyArrayValueForKey();
  v7 = copyArrayValueForKey();
  v8 = copyArrayValueForKey();
  v9 = 0;
  if (v6 && v7)
  {
    v10 = [v6 count];
    if (v10 == [(__CFArray *)v7 count])
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy__23;
      v18 = __Block_byref_object_dispose__23;
      v19 = 0;
      v11 = objc_autoreleasePoolPush();
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __50__SKGProcessor_People__recipientsFromPhoneRecord___block_invoke;
      v13[3] = &unk_27893F058;
      v13[4] = self;
      v13[5] = &v14;
      enumerateParallelContactInfo(v6, v7, 0, 0, v8, 0, v13);
      objc_autoreleasePoolPop(v11);
      v9 = v15[5];
      _Block_object_dispose(&v14, 8);
    }

    else
    {
      v9 = 0;
    }
  }

  objc_autoreleasePoolPop(v5);

  return v9;
}

- (id)peopleFromNotesRecord:()People
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = copyArrayValueForKey();
  v7 = copyArrayValueForKey();
  v8 = copyArrayValueForKey();
  v9 = v8;
  if (v6 || v7 || v8)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__23;
    v18 = __Block_byref_object_dispose__23;
    v19 = 0;
    v11 = objc_autoreleasePoolPush();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __46__SKGProcessor_People__peopleFromNotesRecord___block_invoke;
    v13[3] = &unk_27893F058;
    v13[4] = self;
    v13[5] = &v14;
    enumerateParallelContactInfo(v6, v7, v9, 0, 0, 0, v13);
    objc_autoreleasePoolPop(v11);
    v10 = v15[5];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v10;
}

- (id)accountOwnerFromRecord:()People
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = copyArrayValueForKey();
  if (v6)
  {
    v7 = [self personWithName:0 alternateName:0 contactIdentifier:0 personIdentifier:0 emails:v6 phones:0 addresses:0];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)ownerFromRecord:()People
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = copyStringValueForKey();
  if (v6)
  {
    v7 = [self personWithName:v6 alternateName:0 contactIdentifier:0 personIdentifier:0 emails:0 phones:0 addresses:0];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)lastEditorFromRecord:()People
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = copyStringValueForKey();
  if (v6)
  {
    v7 = [self personWithName:v6 alternateName:0 contactIdentifier:0 personIdentifier:0 emails:0 phones:0 addresses:0];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)peopleForAttributeKey:()People fromRecord:
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 isEqualToString:@"People"];
  v9 = @"s";
  if (v8)
  {
    v9 = &stru_2846CE8D8;
  }

  v31 = v9;
  [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItem%@%@", v5, v31];
  v10 = copyArrayValueForKey();
  [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItem%@EmailAddresses", v5];
  v11 = copyArrayValueForKey();
  [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItem%@PhoneNumbers", v5];
  v12 = copyArrayValueForKey();
  [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItem%@Addresses", v5];
  v32 = copyArrayValueForKey();
  [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItem%@ContactIdentifiers", v5];
  v13 = copyArrayValueForKey();
  if ([v5 isEqualToString:@"Recipient"])
  {
    v29 = v7;
    [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItemPrimary%@EmailAddresses", v5];
    v14 = copyArrayValueForKey();
    v15 = v14;
    if (v14)
    {
      if (!v10 || (v16 = [v14 count], v16 == objc_msgSend(v10, "count")))
      {
        v17 = v15;

        v11 = v17;
      }
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItemPrimary%@PhoneNumbers", v5];
    v18 = copyArrayValueForKey();
    v19 = v18;
    if (v18)
    {
      if (!v10 || (v20 = [v18 count], v20 == objc_msgSend(v10, "count")))
      {
        v21 = v19;

        v12 = v21;
      }
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItemPrimary%@Addresses", v5];
    v22 = copyArrayValueForKey();
    v23 = v22;
    if (v22 && (!v10 || (v24 = [v22 count], v24 == objc_msgSend(v10, "count"))))
    {
      v25 = v23;
    }

    else
    {
      v25 = v32;
    }

    v7 = v29;
    if (v10)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v25 = v32;
    if (v10)
    {
      goto LABEL_24;
    }
  }

  if (!v11 && !v12 && !v13)
  {
    v26 = 0;
    goto LABEL_25;
  }

LABEL_24:
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__23;
  v38 = __Block_byref_object_dispose__23;
  v39 = 0;
  v27 = objc_autoreleasePoolPush();
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __57__SKGProcessor_People__peopleForAttributeKey_fromRecord___block_invoke;
  v33[3] = &unk_27893F058;
  v33[4] = self;
  v33[5] = &v34;
  enumerateParallelContactInfo(v10, v11, v12, v25, v13, 0, v33);
  objc_autoreleasePoolPop(v27);
  v26 = v35[5];
  _Block_object_dispose(&v34, 8);

LABEL_25:
  objc_autoreleasePoolPop(v7);

  return v26;
}

- (id)peopleForSharedAttributeKey:()People fromRecord:
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItemUserShared%@", v6];
  v9 = copyArrayValueForKey();
  [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItemUserShared%@Handle", v6];
  v10 = copyArrayValueForKey();
  if (v9 | v10)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__23;
    v19 = __Block_byref_object_dispose__23;
    v20 = 0;
    v12 = objc_autoreleasePoolPush();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__SKGProcessor_People__peopleForSharedAttributeKey_fromRecord___block_invoke;
    v14[3] = &unk_27893F058;
    v14[4] = self;
    v14[5] = &v15;
    enumerateParallelContactInfo(v9, v10, 0, 0, 0, 0, v14);
    objc_autoreleasePoolPop(v12);
    v11 = v16[5];
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v8);

  return v11;
}

- (SKGPersonComponents)personWithName:()People alternateName:contactIdentifier:personIdentifier:emails:phones:addresses:
{
  v93 = *MEMORY[0x277D85DE8];
  v46 = a3;
  v14 = a4;
  v44 = a5;
  v45 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = __Block_byref_object_copy__23;
  v88 = __Block_byref_object_dispose__23;
  v89 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__23;
  v82 = __Block_byref_object_dispose__23;
  v83 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__23;
  v76 = __Block_byref_object_dispose__23;
  v77 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__23;
  v70 = __Block_byref_object_dispose__23;
  v71 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__23;
  v64 = __Block_byref_object_dispose__23;
  v65 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __112__SKGProcessor_People__personWithName_alternateName_contactIdentifier_personIdentifier_emails_phones_addresses___block_invoke;
  aBlock[3] = &unk_27893F080;
  aBlock[4] = &v84;
  aBlock[5] = &v78;
  aBlock[6] = &v72;
  aBlock[7] = &v66;
  aBlock[8] = &v60;
  v18 = _Block_copy(aBlock);
  context = objc_autoreleasePoolPush();
  enumerateInfoInString(v46, v18);
  enumerateInfoInString(v14, v18);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v19 = v15;
  v20 = [v19 countByEnumeratingWithState:&v55 objects:v92 count:16];
  if (v20)
  {
    v21 = *v56;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v56 != v21)
        {
          objc_enumerationMutation(v19);
        }

        enumerateInfoInString(*(*(&v55 + 1) + 8 * i), v18);
      }

      v20 = [v19 countByEnumeratingWithState:&v55 objects:v92 count:{16, context}];
    }

    while (v20);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v23 = v16;
  v24 = [v23 countByEnumeratingWithState:&v51 objects:v91 count:16];
  if (v24)
  {
    v25 = *v52;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v52 != v25)
        {
          objc_enumerationMutation(v23);
        }

        enumerateInfoInString(*(*(&v51 + 1) + 8 * j), v18);
      }

      v24 = [v23 countByEnumeratingWithState:&v51 objects:v91 count:16];
    }

    while (v24);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v27 = v17;
  v28 = [v27 countByEnumeratingWithState:&v47 objects:v90 count:16];
  if (v28)
  {
    v29 = *v48;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v48 != v29)
        {
          objc_enumerationMutation(v27);
        }

        enumerateInfoInString(*(*(&v47 + 1) + 8 * k), v18);
      }

      v28 = [v27 countByEnumeratingWithState:&v47 objects:v90 count:16];
    }

    while (v28);
  }

  if (v79[5] && v85[5] && v73[5] || [v67[5] count] || objc_msgSend(v61[5], "count"))
  {
    v31 = [SKGPersonComponents alloc];
    v32 = [(SKGPersonComponents *)v31 initWithEmailAddresses:v67[5] phoneNumbers:v61[5]];
    if ([v79[5] count])
    {
      v33 = [v79[5] count];
      if (v33 == [v73[5] count])
      {
        v34 = [v79[5] count];
        if (v34 == [v85[5] count])
        {
          for (m = 0; m < [v79[5] count]; ++m)
          {
            v36 = [v79[5] objectAtIndexedSubscript:m];
            v37 = [v73[5] objectAtIndexedSubscript:m];
            v38 = [v85[5] objectAtIndexedSubscript:m];
            v39 = v38;
            if (v36)
            {
              v40 = v38 == 0;
            }

            else
            {
              v40 = 1;
            }

            if (!v40 && v37 != 0)
            {
              [(SKGPersonComponents *)v32 addName:v36 nameComponents:v38 displayName:v37];
            }
          }
        }
      }
    }

    [(SKGPersonComponents *)v32 setContactIdentifier:v44, context];
    [(SKGPersonComponents *)v32 setPhotosPersonIdentifier:v45];
  }

  else
  {
    v32 = 0;
  }

  objc_autoreleasePoolPop(context);

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v66, 8);

  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v78, 8);

  _Block_object_dispose(&v84, 8);

  return v32;
}

- (uint64_t)generatePeopleForRecord:()People processedItem:processedItemBlock:cancelBlock:
{
  v125[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11)
  {
    v14 = objc_autoreleasePoolPush();
    bundleIdentifier = [v11 bundleIdentifier];
    v16 = [bundleIdentifier isEqualToString:@"com.apple.MobileAddressBook"];

    if (v16)
    {
      v17 = [self contactFromRecord:v10];
      v18 = v17;
      if (v17)
      {
        v125[0] = v17;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:1];
        [v11 addParticipants:v19];
      }

      participants = [v11 participants];

      if (!participants)
      {
        goto LABEL_43;
      }

      v21 = [self viewedScoreFromRecord:v10];
      if (!v21)
      {
        goto LABEL_15;
      }

LABEL_14:
      [v11 addInteraction:@"viewedDate" score:v21];
LABEL_15:

LABEL_43:
      goto LABEL_44;
    }

    bundleIdentifier2 = [v11 bundleIdentifier];
    v24 = [bundleIdentifier2 isEqualToString:@"com.apple.mobilenotes"];

    if (v24)
    {
      v25 = [self peopleFromNotesRecord:v10];
      goto LABEL_11;
    }

    bundleIdentifier3 = [v11 bundleIdentifier];
    v30 = [bundleIdentifier3 isEqualToString:@"com.apple.mobilephone"];

    if (v30)
    {
      v18 = [self authorsFromPhoneRecord:v10];
      if ([v18 count])
      {
        [v11 addAuthors:v18];
      }

      else
      {
        v45 = [self recipientsFromPhoneRecord:v10];
        if ([v45 count])
        {
          [v11 addRecipients:v45];
        }
      }

      authors = [v11 authors];
      if ([authors count])
      {
      }

      else
      {
        recipients = [v11 recipients];
        v48 = [recipients count];

        if (!v48)
        {
          goto LABEL_43;
        }
      }

      v36 = [self createdScoreFromRecord:v10];
      [v11 addInteraction:@"creationDate" score:v36];
      v49 = [self viewedScoreFromRecord:v10];
      v50 = v49;
      if (v49 && ([v49 isEqualToNumber:v36] & 1) == 0)
      {
        [v11 addInteraction:@"viewedDate" score:v50];
      }

LABEL_42:
      goto LABEL_43;
    }

    bundleIdentifier4 = [v11 bundleIdentifier];
    v32 = [bundleIdentifier4 isEqualToString:@"com.apple.MobileSMS"];

    if (v32)
    {
      v33 = [self accountOwnerFromRecord:v10];
      v18 = v33;
      if (v33)
      {
        v124 = v33;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v124 count:1];
        [v11 addOwners:v34];
      }

      v35 = [self authorFromMessageRecord:v10];
      v36 = v35;
      if (v35)
      {
        v123 = v35;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v123 count:1];
        [v11 addAuthors:v37];
      }

      v38 = [self peopleForAttributeKey:@"Recipient" fromRecord:v10];
      [v11 addRecipients:v38];

      owners = [v11 owners];
      if (owners)
      {
      }

      else
      {
        authors2 = [v11 authors];
        if (!authors2)
        {
          goto LABEL_42;
        }

        v73 = authors2;
        recipients2 = [v11 recipients];

        if (!recipients2)
        {
          goto LABEL_42;
        }
      }

      v40 = [self createdScoreFromRecord:v10];
      [v11 addInteraction:@"creationDate" score:v40];
      v41 = [self viewedScoreFromRecord:v10];
      v42 = v41;
      if (v41 && ([v41 isEqualToNumber:v40] & 1) == 0)
      {
        [v11 addInteraction:@"viewedDate" score:v42];
      }

      goto LABEL_42;
    }

    bundleIdentifier5 = [v11 bundleIdentifier];
    v44 = [bundleIdentifier5 isEqualToString:@"com.apple.mobileslideshow"];

    if (v44)
    {
      v25 = [self peopleFromPhotoRecord:v10];
LABEL_11:
      v26 = v25;
      [v11 addParticipants:v25];

      participants2 = [v11 participants];

      if (!participants2)
      {
LABEL_44:
        objc_autoreleasePoolPop(v14);
        v22 = v12[2](v12, v11);
        goto LABEL_45;
      }

      v18 = [self createdScoreFromRecord:v10];
      [v11 addInteraction:@"creationDate" score:v18];
      v28 = [self viewedScoreFromRecord:v10];
      v21 = v28;
      if (!v28 || ([v28 isEqualToNumber:v18] & 1) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v52 = [self peopleForSharedAttributeKey:@"ReceivedSender" fromRecord:v10];
    v53 = [self peopleForSharedAttributeKey:@"ReceivedRecipient" fromRecord:v10];
    v54 = [self peopleForSharedAttributeKey:@"SentSender" fromRecord:v10];
    v114 = [self peopleForSharedAttributeKey:@"SentRecipient" fromRecord:v10];
    context = v14;
    v105 = v54;
    if (v52)
    {
      v55 = [v52 count];
      if (v55 == [v53 count])
      {
        v107 = copyArrayValueForKey();
        v106 = copyArrayValueForKey();
        v92 = [v107 count];
        if ([v106 count] == v92 && v92 == objc_msgSend(v52, "count") && v92)
        {
          v56 = 0;
          v90 = (v12 + 2);
          v100 = v53;
          v102 = v52;
          do
          {
            v111 = [v52 objectAtIndexedSubscript:{v56, v90}];
            v108 = [v53 objectAtIndexedSubscript:v56];
            v96 = [v106 objectAtIndexedSubscript:v56];
            v98 = [v107 objectAtIndexedSubscript:v56];
            v94 = [self scoreFromDate:v98];
            referenceIdentifier = [v11 referenceIdentifier];
            bundleIdentifier6 = [v11 bundleIdentifier];
            protectionClass = [v11 protectionClass];
            v60 = [self itemFromRecord:v10 referenceIdentifier:referenceIdentifier bundleIdentifier:bundleIdentifier6 protectionClass:protectionClass];

            v122 = v111;
            v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v122 count:1];
            [v60 addAuthors:v61];

            v121 = v108;
            v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v121 count:1];
            [v60 addRecipients:v62];

            [v60 addInteraction:v96 score:v94];
            LOBYTE(v62) = v12[2](v12, v60);

            if ((v62 & 1) == 0)
            {
              goto LABEL_84;
            }

            ++v56;
            v53 = v100;
            v52 = v102;
          }

          while (v92 != v56);
        }

        v14 = context;
        v54 = v105;
      }
    }

    if (v54)
    {
      v63 = [v54 count];
      v64 = v63 == [v114 count];
      v14 = context;
      if (!v64)
      {
        goto LABEL_66;
      }

      v100 = v53;
      v102 = v52;
      v107 = copyArrayValueForKey();
      v106 = copyArrayValueForKey();
      v93 = [v107 count];
      if ([v106 count] == v93 && v93 == objc_msgSend(v105, "count") && v93)
      {
        v65 = 0;
        v91 = (v12 + 2);
        while (1)
        {
          v112 = [v105 objectAtIndexedSubscript:{v65, v91}];
          v109 = [v114 objectAtIndexedSubscript:v65];
          v97 = [v106 objectAtIndexedSubscript:v65];
          v99 = [v107 objectAtIndexedSubscript:v65];
          v95 = [self scoreFromDate:v99];
          referenceIdentifier2 = [v11 referenceIdentifier];
          bundleIdentifier7 = [v11 bundleIdentifier];
          protectionClass2 = [v11 protectionClass];
          v69 = [self itemFromRecord:v10 referenceIdentifier:referenceIdentifier2 bundleIdentifier:bundleIdentifier7 protectionClass:protectionClass2];

          v120 = v112;
          v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v120 count:1];
          [v69 addAuthors:v70];

          v119 = v109;
          v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v119 count:1];
          [v69 addRecipients:v71];

          [v69 addInteraction:v97 score:v95];
          LOBYTE(v71) = v12[2](v12, v69);

          if ((v71 & 1) == 0)
          {
            break;
          }

          if (v93 == ++v65)
          {
            goto LABEL_64;
          }
        }

LABEL_84:

        objc_autoreleasePoolPop(context);
        v22 = 0;
        goto LABEL_45;
      }

LABEL_64:

      v52 = v102;
      v14 = context;
      v53 = v100;
      v54 = v105;
    }

    if (v52 | v54)
    {
LABEL_66:

      goto LABEL_44;
    }

    v101 = v53;
    v113 = [self peopleForAttributeKey:@"Author" fromRecord:v10];
    [v11 addAuthors:?];
    v110 = [self peopleForAttributeKey:@"Recipient" fromRecord:v10];
    [v11 addRecipients:?];
    v75 = [self accountOwnerFromRecord:v10];
    v76 = v75;
    if (v75)
    {
      v118 = v75;
      v77 = [MEMORY[0x277CBEA60] arrayWithObjects:&v118 count:1];
      [v11 addOwners:v77];

      v14 = context;
    }

    v103 = v52;
    v78 = [self ownerFromRecord:v10];
    v79 = v78;
    if (v78)
    {
      v117 = v78;
      v80 = [MEMORY[0x277CBEA60] arrayWithObjects:&v117 count:1];
      [v11 addParticipants:v80];

      v14 = context;
    }

    v81 = [self lastEditorFromRecord:v10];
    v82 = v81;
    if (v79 && v81)
    {
      v116[0] = v79;
      v116[1] = v81;
      v83 = MEMORY[0x277CBEA60];
      v84 = v116;
      v85 = 2;
    }

    else
    {
      if (!v81)
      {
        goto LABEL_80;
      }

      v115 = v81;
      v83 = MEMORY[0x277CBEA60];
      v84 = &v115;
      v85 = 1;
    }

    v86 = [v83 arrayWithObjects:v84 count:v85];
    [v11 addParticipants:v86];

LABEL_80:
    v87 = [self createdScoreFromRecord:v10];
    [v11 addInteraction:@"creationDate" score:v87];
    v88 = [self viewedScoreFromRecord:v10];
    v89 = v88;
    if (v88 && ([v88 isEqualToNumber:v87] & 1) == 0)
    {
      [v11 addInteraction:@"viewedDate" score:v89];
    }

    goto LABEL_44;
  }

  v22 = 1;
LABEL_45:

  return v22;
}

- (uint64_t)generateMegadomePeopleUsingBlock:()People cancelBlock:
{
  v5 = a3;
  v6 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v7 = objc_autoreleasePoolPush();
  defaultService = [MEMORY[0x277D1F480] defaultService];
  v23 = 0;
  v9 = [defaultService visualIdentifierViewWithError:&v23];
  v10 = v23;
  v11 = v25;
  v12 = *(v25 + 24);
  if (v6 && (v12 & 1) != 0)
  {
    v13 = v6[2](v6, @"processPeopleFromRecord:megadome") ^ 1;
    v11 = v25;
  }

  else
  {
    v13 = v12 != 0;
  }

  *(v11 + 24) = v13;
  if (!v10 && v13)
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v22 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__SKGProcessor_People__generateMegadomePeopleUsingBlock_cancelBlock___block_invoke;
    v16[3] = &unk_27893F0A8;
    v17 = v5;
    v19 = v21;
    v20 = &v24;
    v18 = v6;
    [v9 enumeratePeopleWithBlock:v16];

    _Block_object_dispose(v21, 8);
  }

  objc_autoreleasePoolPop(v7);
  v14 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);

  return v14;
}

@end