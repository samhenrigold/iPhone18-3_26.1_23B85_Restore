@interface NMSSHHostConfig
- (NMSSHHostConfig)init;
- (id)arrayByRemovingDuplicateElementsFromArray:(id)array;
- (id)mergedArray:(id)array withArray:(id)withArray;
- (void)mergeFrom:(id)from;
@end

@implementation NMSSHHostConfig

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  hostPatterns = [(NMSSHHostConfig *)self hostPatterns];
  hostPatterns2 = [fromCopy hostPatterns];
  v6 = [(NMSSHHostConfig *)self mergedArray:hostPatterns withArray:hostPatterns2];
  [(NMSSHHostConfig *)self setHostPatterns:v6];

  hostname = [(NMSSHHostConfig *)self hostname];

  if (!hostname)
  {
    hostname2 = [fromCopy hostname];
    [(NMSSHHostConfig *)self setHostname:hostname2];
  }

  user = [(NMSSHHostConfig *)self user];

  if (!user)
  {
    user2 = [fromCopy user];
    [(NMSSHHostConfig *)self setUser:user2];
  }

  port = [(NMSSHHostConfig *)self port];

  if (!port)
  {
    port2 = [fromCopy port];
    [(NMSSHHostConfig *)self setPort:port2];
  }

  identityFiles = [(NMSSHHostConfig *)self identityFiles];
  identityFiles2 = [fromCopy identityFiles];
  v15 = [(NMSSHHostConfig *)self mergedArray:identityFiles withArray:identityFiles2];
  [(NMSSHHostConfig *)self setIdentityFiles:v15];
}

- (id)mergedArray:(id)array withArray:(id)withArray
{
  v5 = [array arrayByAddingObjectsFromArray:withArray];
  v6 = [(NMSSHHostConfig *)self arrayByRemovingDuplicateElementsFromArray:v5];

  return v6;
}

- (id)arrayByRemovingDuplicateElementsFromArray:(id)array
{
  v18 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (([array containsObject:{v10, v13}] & 1) == 0)
        {
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [array copy];

  return v11;
}

- (NMSSHHostConfig)init
{
  v6.receiver = self;
  v6.super_class = NMSSHHostConfig;
  v2 = [(NMSSHHostConfig *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CBEBF8];
    [(NMSSHHostConfig *)v2 setHostPatterns:MEMORY[0x277CBEBF8]];
    [(NMSSHHostConfig *)v3 setIdentityFiles:v4];
  }

  return v3;
}

@end