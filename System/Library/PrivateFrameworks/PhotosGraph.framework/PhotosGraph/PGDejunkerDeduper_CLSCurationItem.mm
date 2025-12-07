@interface PGDejunkerDeduper_CLSCurationItem
- (BOOL)item:(id)item isStrongRequiredWithOptions:(id)options;
- (id)bestItemInItems:(id)items options:(id)options;
- (id)bestItemsInItems:(id)items options:(id)options;
- (id)debugPersonStringForItem:(id)item;
- (id)dejunkedDedupedItemIdentifiersWithItems:(id)items options:(id)options debugInfo:(id *)info;
- (id)dejunkedDedupedItemsInItems:(id)items options:(id)options debugInfo:(id)info progressBlock:(id)block;
- (id)faceprintByPersonLocalIdentifierByItemIdentifierWithItems:(id)items;
- (id)featureWithItem:(id)item;
- (id)itemsSortedByScoreWithItems:(id)items options:(id)options;
- (id)personLocalIdentifiersFromFaceInfos:(id)infos faceQualityScore:(double *)score;
- (id)requiredItemsInItems:(id)items options:(id)options containStronglyRequiredItems:(BOOL *)requiredItems;
- (void)_buildCachesWithItems:(id)items options:(id)options;
@end

@implementation PGDejunkerDeduper_CLSCurationItem

- (id)personLocalIdentifiersFromFaceInfos:(id)infos faceQualityScore:(double *)score
{
  v32 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = infosCopy;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v6)
  {
    v8 = 0;
    v10 = 0.0;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v28;
  v10 = 0.0;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v28 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v27 + 1) + 8 * i);
      v13 = [v12 objectForKeyedSubscript:@"personLocalIdentifier"];
      if (v13)
      {
        v14 = [v12 objectForKeyedSubscript:@"size"];
        [v14 doubleValue];
        if (v15 >= 0.05)
        {
        }

        else
        {
          v16 = [(NSSet *)self->_verifiedPersonLocalIdentifiers containsObject:v13];

          if (!v16)
          {
            goto LABEL_13;
          }
        }

        [v26 addObject:v13];
        v17 = [v12 objectForKeyedSubscript:@"quality"];
        [v17 doubleValue];
        v19 = v18;

        if (v19 >= 0.0)
        {
          ++v8;
          v10 = v10 + v19;
        }
      }

LABEL_13:
    }

    v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v7);
LABEL_17:

  if (score)
  {
    v20 = [v26 count];
    v21 = 0.0;
    if (v20)
    {
      v22 = v8 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v21 = v10 / v8;
    }

    *score = v21;
  }

  return v26;
}

- (id)requiredItemsInItems:(id)items options:(id)options containStronglyRequiredItems:(BOOL *)requiredItems
{
  v27 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  identifiersOfRequiredItems = [optionsCopy identifiersOfRequiredItems];
  identifiersOfEligibleItems = [optionsCopy identifiersOfEligibleItems];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = itemsCopy;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v12)
  {
    v21 = 0;
    goto LABEL_17;
  }

  v13 = v12;
  v21 = 0;
  v14 = *v23;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v23 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v22 + 1) + 8 * i);
      clsIdentifier = [v16 clsIdentifier];
      if (!identifiersOfEligibleItems || ([identifiersOfEligibleItems containsObject:clsIdentifier] & 1) != 0 || objc_msgSend(identifiersOfRequiredItems, "containsObject:", clsIdentifier))
      {
        if ([(PGDejunkerDeduper_CLSCurationItem *)self item:v16 isStrongRequiredWithOptions:optionsCopy])
        {
          v21 = 1;
        }

        else if (![(PGDejunkerDeduper_CLSCurationItem *)self item:v16 isWeaklyRequiredWithOptions:optionsCopy])
        {
          goto LABEL_13;
        }

        [v9 addObject:v16];
      }

LABEL_13:
    }

    v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v13);
LABEL_17:

  if (requiredItems)
  {
    *requiredItems = v21 & 1;
  }

  return v9;
}

- (BOOL)item:(id)item isStrongRequiredWithOptions:(id)options
{
  itemCopy = item;
  optionsCopy = options;
  if ([itemCopy isFavorite])
  {
    v7 = 1;
  }

  else
  {
    identifiersOfRequiredItems = [optionsCopy identifiersOfRequiredItems];
    clsIdentifier = [itemCopy clsIdentifier];
    v7 = [identifiersOfRequiredItems containsObject:clsIdentifier];
  }

  return v7;
}

- (id)itemsSortedByScoreWithItems:(id)items options:(id)options
{
  optionsCopy = options;
  itemsCopy = items;
  v8 = [objc_opt_class() useFaceprintsForIdenticalDedupingWithOptions:optionsCopy];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__PGDejunkerDeduper_CLSCurationItem_itemsSortedByScoreWithItems_options___block_invoke;
  v11[3] = &unk_278881170;
  v12 = v8;
  v11[4] = self;
  v9 = [itemsCopy sortedArrayUsingComparator:v11];

  return v9;
}

- (id)featureWithItem:(id)item
{
  itemCopy = item;
  clsIdentifier = [itemCopy clsIdentifier];
  v6 = [(NSDictionary *)self->_personLocalIdentifiersByItemIdentifier objectForKeyedSubscript:clsIdentifier];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSDictionary *)self->_peopleScenesByItemIdentifier objectForKeyedSubscript:clsIdentifier];
  }

  v8 = [PGDejunkerDeduperFeature alloc];
  isVideo = [itemCopy isVideo];

  v10 = [(PGDejunkerDeduperFeature *)v8 initWithPersonLocalIdentifiers:v6 peopleScenes:v7 isVideo:isVideo];

  return v10;
}

- (id)faceprintByPersonLocalIdentifierByItemIdentifierWithItems:(id)items
{
  v39 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = itemsCopy;
  v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v25)
  {
    v23 = *v34;
    do
    {
      v4 = 0;
      do
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v4;
        v5 = *(*(&v33 + 1) + 8 * v4);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        faceInfos = MEMORY[0x277CBEBF8];
        if (isKindOfClass)
        {
          faceInfos = [v5 faceInfos];
        }

        v26 = v5;
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v9 = faceInfos;
        v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v30;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v29 + 1) + 8 * i);
              v15 = [v14 objectForKeyedSubscript:@"faceprint"];
              if (v15)
              {
                v16 = objc_alloc(MEMORY[0x277CE2CD8]);
                v28 = 0;
                v17 = [v16 initWithState:v15 error:&v28];
                v18 = v28;
                if (v17)
                {
                  v19 = [v14 objectForKeyedSubscript:@"personLocalIdentifier"];
                  [v8 setObject:v17 forKeyedSubscript:v19];
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v11);
        }

        clsIdentifier = [v26 clsIdentifier];
        [v24 setObject:v8 forKeyedSubscript:clsIdentifier];

        v4 = v27 + 1;
      }

      while (v27 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v25);
  }

  return v24;
}

- (id)debugPersonStringForItem:(id)item
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(PGDejunkerDeduper_CLSCurationItem *)self featureWithItem:item];
  personLocalIdentifiers = [v3 personLocalIdentifiers];
  peopleScenes = [v3 peopleScenes];
  if ([personLocalIdentifiers count])
  {
    allObjects = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = personLocalIdentifiers;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) substringToIndex:{8, v16}];
          [allObjects addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [allObjects sortUsingSelector:sel_compare_];
    v13 = [allObjects componentsJoinedByString:{@", "}];
    goto LABEL_12;
  }

  if ([peopleScenes count])
  {
    allObjects = [peopleScenes allObjects];
    v14 = [allObjects sortedArrayUsingSelector:sel_compare_];
    v13 = [v14 componentsJoinedByString:{@", "}];

LABEL_12:
    goto LABEL_13;
  }

  v13 = @"nobody";
LABEL_13:

  return v13;
}

- (id)bestItemsInItems:(id)items options:(id)options
{
  v47 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  v45 = 0;
  v8 = [(PGDejunkerDeduper_CLSCurationItem *)self requiredItemsInItems:itemsCopy options:optionsCopy containStronglyRequiredItems:&v45];
  v9 = v8;
  if (v45 == 1)
  {
    v10 = v8;
    goto LABEL_30;
  }

  v11 = [objc_opt_class() useFaceprintsForIdenticalDedupingWithOptions:optionsCopy];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v12 = itemsCopy;
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (!v13)
  {

    v16 = 0;
    goto LABEL_28;
  }

  v14 = v13;
  v38 = itemsCopy;
  selfCopy = self;
  v36 = v9;
  v37 = optionsCopy;
  v15 = 0;
  v16 = 0;
  v17 = *v42;
  v18 = -1.79769313e308;
  v19 = -1.79769313e308;
  obj = v12;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v42 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v41 + 1) + 8 * i);
      isFavorite = [v21 isFavorite];
      [v21 clsContentScore];
      v24 = v23;
      if (v11 && (faceQualityScoreByItemIdentifier = selfCopy->_faceQualityScoreByItemIdentifier, [v21 clsIdentifier], v26 = objc_claimAutoreleasedReturnValue(), -[NSDictionary objectForKeyedSubscript:](faceQualityScoreByItemIdentifier, "objectForKeyedSubscript:", v26), v27 = objc_claimAutoreleasedReturnValue(), v26, v27))
      {
        [v27 doubleValue];
        v29 = v28;
        if (!v16)
        {
          goto LABEL_20;
        }
      }

      else
      {
        [v21 clsAestheticScore];
        v29 = v30;
        v27 = 0;
        if (!v16)
        {
          goto LABEL_20;
        }
      }

      v31 = isFavorite & (v15 ^ 1);
      if (v31 & 1) != 0 || ((v15 ^ isFavorite))
      {
        if (!v31)
        {
          goto LABEL_21;
        }

LABEL_20:
        v33 = v21;

        v18 = v29;
        v19 = v24;
        v15 = isFavorite;
        v16 = v33;
        goto LABEL_21;
      }

      v32 = v29 > v18;
      if (v24 != v19)
      {
        v32 = v24 > v19;
      }

      if (v32)
      {
        goto LABEL_20;
      }

LABEL_21:
    }

    v14 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  }

  while (v14);

  if (v16)
  {
    v9 = v36;
    optionsCopy = v37;
    itemsCopy = v38;
    if (![v36 containsObject:v16])
    {
      v34 = [v36 arrayByAddingObject:v16];
      goto LABEL_29;
    }
  }

  else
  {
    optionsCopy = v37;
    itemsCopy = v38;
    v9 = v36;
  }

LABEL_28:
  v34 = v9;
LABEL_29:
  v10 = v34;

LABEL_30:

  return v10;
}

- (id)bestItemInItems:(id)items options:(id)options
{
  v34 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  v7 = [objc_opt_class() useFaceprintsForIdenticalDedupingWithOptions:optionsCopy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = itemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_23;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v30;
  v13 = -1.79769313e308;
  v14 = -1.79769313e308;
  do
  {
    v15 = 0;
    v16 = v13;
    do
    {
      if (*v30 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v17 = *(*(&v29 + 1) + 8 * v15);
      [v17 clsContentScore];
      v19 = v18;
      if (v7 && (faceQualityScoreByItemIdentifier = self->_faceQualityScoreByItemIdentifier, [v17 clsIdentifier], v21 = objc_claimAutoreleasedReturnValue(), -[NSDictionary objectForKeyedSubscript:](faceQualityScoreByItemIdentifier, "objectForKeyedSubscript:", v21), v22 = objc_claimAutoreleasedReturnValue(), v21, v22))
      {
        [v22 doubleValue];
        v13 = v23;
        if (!v11)
        {
          goto LABEL_18;
        }
      }

      else
      {
        [v17 clsAestheticScore];
        v13 = v24;
        v22 = 0;
        if (!v11)
        {
          goto LABEL_18;
        }
      }

      if (v19 <= v14 && (v19 != v14 || v13 <= v16))
      {
        v13 = v16;
        goto LABEL_19;
      }

LABEL_18:
      v26 = v17;

      v14 = v19;
      v11 = v26;
      v16 = v13;
LABEL_19:

      ++v15;
    }

    while (v10 != v15);
    v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v10);
LABEL_23:

  return v11;
}

- (void)_buildCachesWithItems:(id)items options:(id)options
{
  v42 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = v7;
  v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [MEMORY[0x277CBEB98] setWithObject:@"#people#"];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = itemsCopy;
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v38;
    v35 = *v38;
    v30 = v10;
    v33 = v8;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        clsIdentifier = [v15 clsIdentifier];
        personDedupingType = [optionsCopy personDedupingType];
        if (personDedupingType == 2)
        {
          clsPersonLocalIdentifiers = [v15 clsPersonLocalIdentifiers];
          if ([clsPersonLocalIdentifiers count])
          {
            v20 = [MEMORY[0x277CBEB98] setWithArray:clsPersonLocalIdentifiers];
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          if (personDedupingType != 3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v20 = 0;
            goto LABEL_19;
          }

          clsPersonLocalIdentifiers = v15;
          faceInfos = [clsPersonLocalIdentifiers faceInfos];
          if ([faceInfos count])
          {
            v36 = 0.0;
            v20 = [(PGDejunkerDeduper_CLSCurationItem *)self personLocalIdentifiersFromFaceInfos:faceInfos faceQualityScore:&v36];
            if ([v20 count])
            {
              [MEMORY[0x277CCABB0] numberWithDouble:v36];
              v22 = v21 = v9;
              [(NSDictionary *)v31 setObject:v22 forKeyedSubscript:clsIdentifier];

              v9 = v21;
              v10 = v30;
            }
          }

          else
          {
            v20 = 0;
          }

          v8 = v33;
        }

        v13 = v35;
LABEL_19:
        if ([v20 count])
        {
          [(NSDictionary *)v8 setObject:v20 forKeyedSubscript:clsIdentifier];
        }

        if ([optionsCopy personDedupingType] && objc_msgSend(v15, "clsIsInhabited"))
        {
          [(NSDictionary *)v34 setObject:v9 forKeyedSubscript:clsIdentifier];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v12);
  }

  v23 = v8;
  personLocalIdentifiersByItemIdentifier = self->_personLocalIdentifiersByItemIdentifier;
  self->_personLocalIdentifiersByItemIdentifier = v23;
  v25 = v23;

  v26 = v10;
  peopleScenesByItemIdentifier = self->_peopleScenesByItemIdentifier;
  self->_peopleScenesByItemIdentifier = v34;
  v28 = v34;

  faceQualityScoreByItemIdentifier = self->_faceQualityScoreByItemIdentifier;
  self->_faceQualityScoreByItemIdentifier = v31;
}

- (id)dejunkedDedupedItemIdentifiersWithItems:(id)items options:(id)options debugInfo:(id *)info
{
  v36 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277D3C7A0]);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __95__PGDejunkerDeduper_CLSCurationItem_dejunkedDedupedItemIdentifiersWithItems_options_debugInfo___block_invoke;
  v31[3] = &unk_278886108;
  v24 = v10;
  v32 = v24;
  v11 = optionsCopy;
  v33 = v11;
  v12 = v9;
  v34 = v12;
  v26 = itemsCopy;
  [itemsCopy enumerateKeysAndObjectsUsingBlock:v31];
  v13 = [[PGDejunkerDeduperOptions alloc] initWithDictionaryRepresentation:v11];
  v14 = [objc_alloc(MEMORY[0x277D276A0]) initWithItems:v12];
  v15 = [(PGDejunkerDeduper_CLSCurationItem *)self dejunkedDedupedItemsInItems:v12 options:v13 debugInfo:v14 progressBlock:0];
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        clsIdentifier = [*(*(&v27 + 1) + 8 * i) clsIdentifier];
        [v16 addObject:clsIdentifier];
      }

      v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v19);
  }

  if (info)
  {
    *info = [v14 dictionaryRepresentationWithAppendExtraItemInfoBlock:0];
  }

  return v16;
}

- (id)dejunkedDedupedItemsInItems:(id)items options:(id)options debugInfo:(id)info progressBlock:(id)block
{
  blockCopy = block;
  infoCopy = info;
  optionsCopy = options;
  itemsCopy = items;
  [(PGDejunkerDeduper_CLSCurationItem *)self _buildCachesWithItems:itemsCopy options:optionsCopy];
  v16.receiver = self;
  v16.super_class = PGDejunkerDeduper_CLSCurationItem;
  v14 = [(PGDejunkerDeduper *)&v16 dejunkedDedupedItemsInItems:itemsCopy options:optionsCopy debugInfo:infoCopy progressBlock:blockCopy];

  return v14;
}

@end