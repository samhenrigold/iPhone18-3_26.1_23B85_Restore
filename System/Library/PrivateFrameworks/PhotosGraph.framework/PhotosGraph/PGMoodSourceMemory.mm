@interface PGMoodSourceMemory
- (BOOL)_shouldProcessSource;
- (double)weight;
- (id)_plistMoodIdentifiersWithGraph:(id)graph;
@end

@implementation PGMoodSourceMemory

- (BOOL)_shouldProcessSource
{
  enrichedMemory = [(PGMoodSource *)self enrichedMemory];
  memoryCategory = [enrichedMemory memoryCategory];

  if (memoryCategory)
  {
    return 1;
  }

  assetCollection = [(PGMoodSource *)self assetCollection];
  if ([assetCollection assetCollectionType] == 4)
  {
    v5 = 1;
  }

  else
  {
    options = [(PGMoodSource *)self options];
    v5 = [options memoryCategory] != 0;
  }

  return v5;
}

- (id)_plistMoodIdentifiersWithGraph:(id)graph
{
  v22[1] = *MEMORY[0x277D85DE8];
  if ([(PGMoodSourceMemory *)self _shouldProcessSource])
  {
    enrichedMemory = [(PGMoodSource *)self enrichedMemory];

    if (enrichedMemory)
    {
      v5 = &unk_284485A78;
    }

    else
    {
      assetCollection = [(PGMoodSource *)self assetCollection];
      assetCollectionType = [assetCollection assetCollectionType];

      if (assetCollectionType == 4)
      {
        assetCollection2 = [(PGMoodSource *)self assetCollection];
        category = [assetCollection2 category];
        subcategory = [assetCollection2 subcategory];
      }

      else
      {
        options = [(PGMoodSource *)self options];
        category = [options memoryCategory];

        assetCollection2 = [(PGMoodSource *)self options];
        subcategory = [assetCollection2 memorySubcategory];
      }

      v13 = subcategory;

      v5 = &unk_284485A90;
      if (category != 212 && category != 215)
      {
        v14 = [MEMORY[0x277CD98D8] stringForCategory:category];
        capitalizedString = [v14 capitalizedString];
        v16 = [capitalizedString stringByReplacingOccurrencesOfString:@" " withString:&stru_2843F5C58];

        v17 = [MEMORY[0x277CD98D8] stringForSubcategory:v13];
        capitalizedString2 = [v17 capitalizedString];
        v19 = [capitalizedString2 stringByReplacingOccurrencesOfString:@" " withString:&stru_2843F5C58];

        v20 = [v16 containsString:@"Holiday"];
        if (category != 218 && (v20 & 1) != 0 || ([v19 containsString:@"Holiday"] & 1) != 0)
        {
          v5 = &unk_284485AA8;
        }

        else
        {
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v16, v19];
          v22[0] = v21;
          v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
        }
      }
    }
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (double)weight
{
  _shouldProcessSource = [(PGMoodSourceMemory *)self _shouldProcessSource];
  result = 0.0;
  if (_shouldProcessSource)
  {
    return 1.0;
  }

  return result;
}

@end