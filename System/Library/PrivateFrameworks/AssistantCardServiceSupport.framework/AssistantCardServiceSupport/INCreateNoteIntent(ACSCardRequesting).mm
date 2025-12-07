@interface INCreateNoteIntent(ACSCardRequesting)
- (void)_buildCardFromRequest:()ACSCardRequesting reply:;
- (void)requestCard:()ACSCardRequesting reply:;
@end

@implementation INCreateNoteIntent(ACSCardRequesting)

- (void)requestCard:()ACSCardRequesting reply:
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    content = [v6 content];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([content underlyingInteraction], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
      intentHandlingStatus = [v9 intentHandlingStatus];
      if (intentHandlingStatus <= 6)
      {
        if (intentHandlingStatus == 4)
        {
          v17 = MEMORY[0x277CCA9B8];
          v18 = *MEMORY[0x277CF93E8];
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Content %@ is incompatible with this service", content, *MEMORY[0x277CCA068]];
          v23 = v19;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
          v21 = [v17 errorWithDomain:v18 code:400 userInfo:v20];
          v7[2](v7, 0, v21);
        }

        else
        {
          [self _buildCardFromRequest:v6 reply:v7];
        }
      }
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CF93E8];
      v24 = *MEMORY[0x277CCA068];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Content %@ is incompatible with this service", content];
      v25[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v16 = [v12 errorWithDomain:v13 code:400 userInfo:v15];
      v7[2](v7, 0, v16);

      v10 = 0;
    }
  }
}

- (void)_buildCardFromRequest:()ACSCardRequesting reply:
{
  v58[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    content = [a3 content];
    if (objc_opt_respondsToSelector())
    {
      underlyingInteraction = [content underlyingInteraction];
    }

    else
    {
      underlyingInteraction = 0;
    }

    v45 = underlyingInteraction;
    intentResponse = [underlyingInteraction intentResponse];
    acs_uniquelyIdentifiedCard = [MEMORY[0x277D4C230] acs_uniquelyIdentifiedCard];
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    createdNote = [intentResponse createdNote];
    title = [createdNote title];
    spokenPhrase = [title spokenPhrase];

    v42 = spokenPhrase;
    if (spokenPhrase)
    {
      spokenPhrase2 = spokenPhrase;
      v15 = [MEMORY[0x277CD3E50] parameterForClass:objc_opt_class() keyPath:@"createdNote.title"];
    }

    else
    {
      title2 = [self title];
      spokenPhrase2 = [title2 spokenPhrase];

      v15 = [MEMORY[0x277CD3E50] parameterForClass:objc_opt_class() keyPath:@"title"];
      if (!spokenPhrase2)
      {
        goto LABEL_11;
      }
    }

    acs_uniquelyIdentifiedCardSection = [MEMORY[0x277D4C5A0] acs_uniquelyIdentifiedCardSection];
    [acs_uniquelyIdentifiedCardSection setTitle:spokenPhrase2];
    [acs_uniquelyIdentifiedCardSection setIsCentered:1];
    [acs_uniquelyIdentifiedCardSection setSeparatorStyle:5];
    [acs_uniquelyIdentifiedCardSection setTitleAlign:1];
    [acs_uniquelyIdentifiedCardSection setTitleWeight:&unk_285314308];
    if (v15)
    {
      v58[0] = v15;
      [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
      v19 = v18 = v15;
      [acs_uniquelyIdentifiedCardSection acs_setParameters:v19];

      v15 = v18;
    }

    [v10 addObject:acs_uniquelyIdentifiedCardSection];

LABEL_11:
    acs_wildCardSection = [MEMORY[0x277D4C4C0] acs_wildCardSection];
    [v10 addObject:acs_wildCardSection];

    content2 = [self content];
    v43 = createdNote;
    contents = [createdNote contents];
    v46 = content;
    v41 = v15;
    if (contents || !content2)
    {
      v22 = contents;
      v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v23 = v28;
      if (contents)
      {
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __69__INCreateNoteIntent_ACSCardRequesting___buildCardFromRequest_reply___block_invoke;
        v52[3] = &unk_278CCFBD0;
        v23 = v28;
        v53 = v23;
        v54 = intentResponse;
        [v22 enumerateObjectsUsingBlock:v52];

        goto LABEL_18;
      }

      if (!content2)
      {
LABEL_30:
        [acs_uniquelyIdentifiedCard setCardSections:{v10, v39, v40}];
        [acs_uniquelyIdentifiedCard acs_setInteraction:v45];
        v6[2](v6, acs_uniquelyIdentifiedCard, 0);

        goto LABEL_31;
      }

      v22 = 0;
    }

    else
    {
      v57 = content2;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
      v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v24 = MEMORY[0x277CD3E50];
    v25 = objc_opt_class();
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"content"];
    v27 = [v24 parameterForClass:v25 keyPath:v26];
    [v23 setObject:v27 forKey:content2];

    if (!v22)
    {
      goto LABEL_30;
    }

LABEL_18:
    v39 = content2;
    v40 = v6;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v29 = v22;
    v30 = [v29 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v49;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v49 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v48 + 1) + 8 * i);
          acs_cardSection = [v34 acs_cardSection];
          v36 = [v23 objectForKey:v34];
          v37 = v36;
          if (v36)
          {
            v55 = v36;
            v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
            [acs_cardSection acs_setParameters:v38];
          }

          if (acs_cardSection)
          {
            [v10 addObject:acs_cardSection];
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v31);
    }

    content2 = v39;
    v6 = v40;
    goto LABEL_30;
  }

LABEL_31:
}

@end