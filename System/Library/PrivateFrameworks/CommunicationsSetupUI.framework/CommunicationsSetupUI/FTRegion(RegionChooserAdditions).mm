@interface FTRegion(RegionChooserAdditions)
- (BOOL)isLeafNode;
- (uint64_t)search:()RegionChooserAdditions withResults:;
@end

@implementation FTRegion(RegionChooserAdditions)

- (BOOL)isLeafNode
{
  subRegions = [self subRegions];
  if (subRegions)
  {
    subRegions2 = [self subRegions];
    v4 = [subRegions2 count] == 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (uint64_t)search:()RegionChooserAdditions withResults:
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 length])
  {
    if ([self isLeafNode])
    {
      label = [self label];
      v9 = label;
      if (label && [label length] && (v10 = objc_msgSend(v9, "length"), objc_msgSend(self, "label"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "rangeOfString:options:range:locale:", v6, 1, 0, v10, 0), v11, v12 != 0x7FFFFFFFFFFFFFFFLL))
      {
        [v7 addObject:self];
        LOBYTE(v13) = 1;
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      subRegions = [self subRegions];
      v15 = [subRegions countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v15)
      {
        v16 = v15;
        v13 = 0;
        v17 = *v21;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v21 != v17)
            {
              objc_enumerationMutation(subRegions);
            }

            v13 |= [*(*(&v20 + 1) + 8 * i) search:v6 withResults:v7];
          }

          v16 = [subRegions countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v16);
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

@end