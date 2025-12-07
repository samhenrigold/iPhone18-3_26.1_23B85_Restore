@interface INStartCallIntentAccessibility
- (BOOL)_axIsContactSelectedInClarity:(id)clarity;
- (void)setContacts:(id)contacts;
@end

@implementation INStartCallIntentAccessibility

- (void)setContacts:(id)contacts
{
  v33 = *MEMORY[0x29EDCA608];
  contactsCopy = contacts;
  v19 = [contactsCopy mutableCopy];
  v5 = objc_opt_new();
  isClarityBoardEnabled = [v5 isClarityBoardEnabled];

  if (isClarityBoardEnabled)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = contactsCopy;
    obj = contactsCopy;
    v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v21 = *v28;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          siriMatches = [v10 siriMatches];
          if ([siriMatches count])
          {
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v12 = siriMatches;
            v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v24;
              while (2)
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v24 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  contactIdentifier = [*(*(&v23 + 1) + 8 * j) contactIdentifier];
                  if ([contactIdentifier length] && -[INStartCallIntentAccessibility _axIsContactSelectedInClarity:](self, "_axIsContactSelectedInClarity:", contactIdentifier))
                  {

                    goto LABEL_19;
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }

            [v19 removeObject:v10];
          }

LABEL_19:
        }

        v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v8);
    }

    contactsCopy = v18;
  }

  v22.receiver = self;
  v22.super_class = INStartCallIntentAccessibility;
  [(INStartCallIntentAccessibility *)&v22 setContacts:v19, v18];
}

- (BOOL)_axIsContactSelectedInClarity:(id)clarity
{
  v19 = *MEMORY[0x29EDCA608];
  clarityCopy = clarity;
  mEMORY[0x29EDB8BB8] = [MEMORY[0x29EDB8BB8] sharedInstance];
  entries = [mEMORY[0x29EDB8BB8] entries];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = entries;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        contactProperty = [*(*(&v14 + 1) + 8 * i) contactProperty];
        contact = [contactProperty contact];
        identifier = [contact identifier];

        LOBYTE(contactProperty) = [identifier isEqualToString:clarityCopy];
        if (contactProperty)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

@end