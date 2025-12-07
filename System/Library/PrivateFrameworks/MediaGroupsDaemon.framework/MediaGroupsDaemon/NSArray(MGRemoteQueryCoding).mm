@interface NSArray(MGRemoteQueryCoding)
- (id)rq_coded;
@end

@implementation NSArray(MGRemoteQueryCoding)

- (id)rq_coded
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(self, "count")}];
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

        rq_coded = [*(*(&v10 + 1) + 8 * i) rq_coded];
        [v2 addObject:rq_coded];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

@end