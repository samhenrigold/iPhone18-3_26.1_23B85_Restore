@interface TPPolicy
+ (id)policyWithModelToCategory:(id)category categoriesByView:(id)view introducersByCategory:(id)byCategory keyViewMapping:(id)mapping unknownRedactions:(BOOL)redactions userControllableViewList:(id)list piggybackViews:(id)views priorityViews:(id)self0 inheritedExcludedViews:(id)self1 version:(id)self2;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPolicy:(id)policy;
- (BOOL)peerInCategory:(id)category canAccessView:(id)view;
- (BOOL)trustedPeerInCategory:(id)category canIntroduceCategory:(id)introduceCategory;
- (TPPolicy)initWithCoder:(id)coder;
- (id)categoryForModel:(id)model;
- (id)description;
- (id)syncingPolicyForModel:(id)model syncUserControllableViews:(int)views isInheritedAccount:(BOOL)account error:(id *)error;
- (id)viewsForModel:(id)model error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPPolicy

- (BOOL)isEqualToPolicy:(id)policy
{
  policyCopy = policy;
  version = [(TPPolicy *)self version];
  versionNumber = [version versionNumber];
  version2 = [policyCopy version];
  if (versionNumber == [version2 versionNumber])
  {
    modelToCategory = [(TPPolicy *)self modelToCategory];
    modelToCategory2 = [policyCopy modelToCategory];
    if ([modelToCategory isEqual:modelToCategory2])
    {
      categoriesByView = [(TPPolicy *)self categoriesByView];
      categoriesByView2 = [policyCopy categoriesByView];
      if ([categoriesByView isEqualToDictionary:categoriesByView2])
      {
        introducersByCategory = [(TPPolicy *)self introducersByCategory];
        introducersByCategory2 = [policyCopy introducersByCategory];
        if ([introducersByCategory isEqualToDictionary:introducersByCategory2])
        {
          v29 = introducersByCategory2;
          v31 = introducersByCategory;
          keyViewMapping = [(TPPolicy *)self keyViewMapping];
          [policyCopy keyViewMapping];
          v28 = v30 = keyViewMapping;
          if ([TPPolicyDocument isEqualKeyViewMapping:keyViewMapping other:?])
          {
            userControllableViewList = [(TPPolicy *)self userControllableViewList];
            userControllableViewList2 = [policyCopy userControllableViewList];
            v27 = userControllableViewList;
            if ([userControllableViewList isEqualToSet:?])
            {
              piggybackViews = [(TPPolicy *)self piggybackViews];
              piggybackViews2 = [policyCopy piggybackViews];
              v25 = piggybackViews;
              if ([piggybackViews isEqualToSet:?])
              {
                priorityViews = [(TPPolicy *)self priorityViews];
                priorityViews2 = [policyCopy priorityViews];
                v23 = priorityViews;
                if ([priorityViews isEqualToSet:?])
                {
                  inheritedExcludedViews = [(TPPolicy *)self inheritedExcludedViews];
                  inheritedExcludedViews2 = [policyCopy inheritedExcludedViews];
                  v20 = [inheritedExcludedViews isEqualToSet:inheritedExcludedViews2];
                }

                else
                {
                  v20 = 0;
                }

                introducersByCategory = v31;
                introducersByCategory2 = v29;
              }

              else
              {
                v20 = 0;
                introducersByCategory = v31;
                introducersByCategory2 = v29;
              }
            }

            else
            {
              v20 = 0;
              introducersByCategory = v31;
              introducersByCategory2 = v29;
            }
          }

          else
          {
            v20 = 0;
            introducersByCategory2 = v29;
          }
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(TPPolicy *)self isEqualToPolicy:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (TPPolicy)initWithCoder:(id)coder
{
  v53[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v46.receiver = self;
  v46.super_class = TPPolicy;
  v5 = [(TPPolicy *)&v46 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v6;

    v8 = MEMORY[0x277CBEB98];
    v53[0] = objc_opt_class();
    v53[1] = objc_opt_class();
    v53[2] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:3];
    v10 = [v8 setWithArray:v9];

    v11 = MEMORY[0x277CBEB98];
    v52[0] = objc_opt_class();
    v52[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"modelToCategory"];
    modelToCategory = v5->_modelToCategory;
    v5->_modelToCategory = v14;

    v16 = [coderCopy decodeObjectOfClasses:v10 forKey:@"categoriesByView"];
    categoriesByView = v5->_categoriesByView;
    v5->_categoriesByView = v16;

    v18 = [coderCopy decodeObjectOfClasses:v10 forKey:@"introducersByCategory"];
    introducersByCategory = v5->_introducersByCategory;
    v5->_introducersByCategory = v18;

    v5->_unknownRedactions = [coderCopy decodeBoolForKey:@"unknownRedactions"];
    v20 = MEMORY[0x277CBEB98];
    v51[0] = objc_opt_class();
    v51[1] = objc_opt_class();
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
    v22 = [v20 setWithArray:v21];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"ucvList"];
    userControllableViewList = v5->_userControllableViewList;
    v5->_userControllableViewList = v23;

    v25 = MEMORY[0x277CBEB98];
    v50[0] = objc_opt_class();
    v50[1] = objc_opt_class();
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
    v27 = [v25 setWithArray:v26];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"piggybackingList"];
    piggybackViews = v5->_piggybackViews;
    v5->_piggybackViews = v28;

    v30 = MEMORY[0x277CBEB98];
    v49[0] = objc_opt_class();
    v49[1] = objc_opt_class();
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
    v32 = [v30 setWithArray:v31];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"priorityViews"];
    priorityViews = v5->_priorityViews;
    v5->_priorityViews = v33;

    v35 = MEMORY[0x277CBEB98];
    v48[0] = objc_opt_class();
    v48[1] = objc_opt_class();
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
    v37 = [v35 setWithArray:v36];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"inheritedExcludedViews"];
    inheritedExcludedViews = v5->_inheritedExcludedViews;
    v5->_inheritedExcludedViews = v38;

    v40 = MEMORY[0x277CBEB98];
    v47[0] = objc_opt_class();
    v47[1] = objc_opt_class();
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    v42 = [v40 setWithArray:v41];
    v43 = [coderCopy decodeObjectOfClasses:v42 forKey:@"keyViewMapping"];
    keyViewMapping = v5->_keyViewMapping;
    v5->_keyViewMapping = v43;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  modelToCategory = [(TPPolicy *)self modelToCategory];
  [coderCopy encodeObject:modelToCategory forKey:@"modelToCategory"];

  categoriesByView = [(TPPolicy *)self categoriesByView];
  [coderCopy encodeObject:categoriesByView forKey:@"categoriesByView"];

  introducersByCategory = [(TPPolicy *)self introducersByCategory];
  [coderCopy encodeObject:introducersByCategory forKey:@"introducersByCategory"];

  keyViewMapping = [(TPPolicy *)self keyViewMapping];
  [coderCopy encodeObject:keyViewMapping forKey:@"keyViewMapping"];

  [coderCopy encodeBool:-[TPPolicy unknownRedactions](self forKey:{"unknownRedactions"), @"unknownRedactions"}];
  userControllableViewList = [(TPPolicy *)self userControllableViewList];
  [coderCopy encodeObject:userControllableViewList forKey:@"ucvList"];

  piggybackViews = [(TPPolicy *)self piggybackViews];
  [coderCopy encodeObject:piggybackViews forKey:@"piggybackingList"];

  priorityViews = [(TPPolicy *)self priorityViews];
  [coderCopy encodeObject:priorityViews forKey:@"priorityViews"];

  inheritedExcludedViews = [(TPPolicy *)self inheritedExcludedViews];
  [coderCopy encodeObject:inheritedExcludedViews forKey:@"inheritedExcludedViews"];

  version = [(TPPolicy *)self version];
  [coderCopy encodeObject:version forKey:@"version"];
}

- (id)viewsForModel:(id)model error:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v7 = [(TPPolicy *)self categoryForModel:modelCopy];
  if (v7)
  {
    v21 = [MEMORY[0x277CBEB58] set];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    categoriesByView = [(TPPolicy *)self categoriesByView];
    v9 = [categoriesByView countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v20 = modelCopy;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(categoriesByView);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          categoriesByView2 = [(TPPolicy *)self categoriesByView];
          v15 = [categoriesByView2 objectForKeyedSubscript:v13];
          v16 = [v15 containsObject:v7];

          if (v16)
          {
            [v21 addObject:v13];
          }
        }

        v10 = [categoriesByView countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
      modelCopy = v20;
    }

    goto LABEL_14;
  }

  if (error)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = TPErrorDomain;
    v27 = @"model";
    v28[0] = modelCopy;
    categoriesByView = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    [v17 errorWithDomain:v18 code:9 userInfo:categoriesByView];
    *error = v21 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v21 = 0;
LABEL_15:

  return v21;
}

- (id)syncingPolicyForModel:(id)model syncUserControllableViews:(int)views isInheritedAccount:(BOOL)account error:(id *)error
{
  v8 = *&views;
  modelCopy = model;
  v11 = [(TPPolicy *)self viewsForModel:modelCopy error:error];
  if (v11)
  {
    userControllableViewList = [(TPPolicy *)self userControllableViewList];
    piggybackViews = [(TPPolicy *)self piggybackViews];
    version = [(TPPolicy *)self version];
    if ([version versionNumber] <= 7)
    {
      v15 = [userControllableViewList count];

      if (v15)
      {
        goto LABEL_6;
      }

      [MEMORY[0x277CBEB98] setWithArray:&unk_287FD19E0];
      userControllableViewList = version = userControllableViewList;
    }

LABEL_6:
    version2 = [(TPPolicy *)self version];
    if ([version2 versionNumber] <= 7)
    {
      v17 = [piggybackViews count];

      if (v17)
      {
        goto LABEL_10;
      }

      [MEMORY[0x277CBEB98] setWithArray:&unk_287FD19F8];
      piggybackViews = version2 = piggybackViews;
    }

LABEL_10:
    priorityViews = [(TPPolicy *)self priorityViews];
    version3 = [(TPPolicy *)self version];
    if ([version3 versionNumber] <= 8)
    {
      v20 = [priorityViews count];

      if (v20)
      {
LABEL_14:
        v21 = [TPSyncingPolicy alloc];
        version4 = [(TPPolicy *)self version];
        keyViewMapping = [(TPPolicy *)self keyViewMapping];
        LOBYTE(v26) = account;
        v24 = [(TPSyncingPolicy *)v21 initWithModel:modelCopy version:version4 viewList:v11 priorityViews:priorityViews userControllableViews:userControllableViewList syncUserControllableViews:v8 viewsToPiggybackTLKs:piggybackViews keyViewMapping:keyViewMapping isInheritedAccount:v26];

        goto LABEL_16;
      }

      [MEMORY[0x277CBEB98] setWithArray:&unk_287FD1A10];
      priorityViews = version3 = priorityViews;
    }

    goto LABEL_14;
  }

  v24 = 0;
LABEL_16:

  return v24;
}

- (BOOL)peerInCategory:(id)category canAccessView:(id)view
{
  viewCopy = view;
  categoryCopy = category;
  categoriesByView = [(TPPolicy *)self categoriesByView];
  v9 = [categoriesByView objectForKeyedSubscript:viewCopy];

  LOBYTE(viewCopy) = [v9 containsObject:categoryCopy];
  return viewCopy;
}

- (BOOL)trustedPeerInCategory:(id)category canIntroduceCategory:(id)introduceCategory
{
  introduceCategoryCopy = introduceCategory;
  categoryCopy = category;
  introducersByCategory = [(TPPolicy *)self introducersByCategory];
  v9 = [introducersByCategory objectForKeyedSubscript:introduceCategoryCopy];

  LOBYTE(introduceCategoryCopy) = [v9 containsObject:categoryCopy];
  return introduceCategoryCopy;
}

- (id)categoryForModel:(id)model
{
  v18 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (AllowiProdOverrideSet == 1)
  {
    if ((AllowiProdOverrideValue & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!_os_feature_enabled_impl())
  {
    goto LABEL_7;
  }

  if ([modelCopy hasPrefix:@"iProd"])
  {
    category = @"full";
    goto LABEL_18;
  }

LABEL_7:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  modelToCategory = [(TPPolicy *)self modelToCategory];
  category = [modelToCategory countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (category)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != category; i = (i + 1))
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(modelToCategory);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        prefix = [v9 prefix];
        v11 = [modelCopy hasPrefix:prefix];

        if (v11)
        {
          category = [v9 category];
          goto LABEL_17;
        }
      }

      category = [modelToCategory countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (category)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

LABEL_18:

  return category;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  version = [(TPPolicy *)self version];
  v4 = [v2 stringWithFormat:@"<TPPolicy: %@>", version];

  return v4;
}

+ (id)policyWithModelToCategory:(id)category categoriesByView:(id)view introducersByCategory:(id)byCategory keyViewMapping:(id)mapping unknownRedactions:(BOOL)redactions userControllableViewList:(id)list piggybackViews:(id)views priorityViews:(id)self0 inheritedExcludedViews:(id)self1 version:(id)self2
{
  redactionsCopy = redactions;
  versionCopy = version;
  excludedViewsCopy = excludedViews;
  priorityViewsCopy = priorityViews;
  viewsCopy = views;
  listCopy = list;
  mappingCopy = mapping;
  byCategoryCopy = byCategory;
  viewCopy = view;
  categoryCopy = category;
  v25 = objc_alloc_init(TPPolicy);
  [(TPPolicy *)v25 setModelToCategory:categoryCopy];

  [(TPPolicy *)v25 setCategoriesByView:viewCopy];
  [(TPPolicy *)v25 setIntroducersByCategory:byCategoryCopy];

  [(TPPolicy *)v25 setKeyViewMapping:mappingCopy];
  [(TPPolicy *)v25 setUnknownRedactions:redactionsCopy];
  [(TPPolicy *)v25 setUserControllableViewList:listCopy];

  [(TPPolicy *)v25 setPiggybackViews:viewsCopy];
  [(TPPolicy *)v25 setPriorityViews:priorityViewsCopy];

  [(TPPolicy *)v25 setInheritedExcludedViews:excludedViewsCopy];
  [(TPPolicy *)v25 setVersion:versionCopy];

  return v25;
}

@end