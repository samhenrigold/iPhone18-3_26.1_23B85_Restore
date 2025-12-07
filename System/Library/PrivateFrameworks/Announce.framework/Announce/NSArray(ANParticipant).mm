@interface NSArray(ANParticipant)
- (id)idsIdentifiers;
- (id)messages;
- (id)rapportIDs;
@end

@implementation NSArray(ANParticipant)

- (id)idsIdentifiers
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        idsID = [v8 idsID];

        if (idsID)
        {
          idsID2 = [v8 idsID];
          [v2 addObject:idsID2];
        }
      }

      v5 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)rapportIDs
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        idsID = [v8 idsID];

        if (idsID)
        {
          rapportID = [v8 rapportID];
          [v2 addObject:rapportID];
        }
      }

      v5 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)messages
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        message = [*(*(&v10 + 1) + 8 * i) message];
        [v2 addObject:message];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

@end