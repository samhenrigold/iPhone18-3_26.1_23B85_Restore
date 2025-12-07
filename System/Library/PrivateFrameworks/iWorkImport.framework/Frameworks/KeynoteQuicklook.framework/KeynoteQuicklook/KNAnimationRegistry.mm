@interface KNAnimationRegistry
+ (id)categoryNameForPluginClass:(Class)class;
+ (id)instance;
+ (id)localizedCategoryNameForCategory:(int64_t)category;
+ (id)localizedNameForUnsupportedAnimation:(id)animation;
+ (id)preferredCategoryOrder;
- (BOOL)canMapEffectIdentifier:(id)identifier animationType:(int64_t)type toEffectIdentifier:(id)effectIdentifier includeObsoleteNames:(BOOL)names forDrawable:(id)drawable;
- (KNAnimationRegistry)init;
- (id)animationInfoForEffectIdentifier:(id)identifier animationType:(int64_t)type includeObsoleteNames:(BOOL)names;
- (id)animationInfoForEffectIdentifier:(id)identifier animationType:(int64_t)type includeObsoleteNames:(BOOL)names drawable:(id)drawable;
- (id)animationInfosForAnimationType:(int64_t)type category:(id)category;
- (id)animationInfosForAnimationType:(int64_t)type filter:(id)filter;
- (id)distinctCategoriesForType:(int64_t)type;
- (id)p_buildAlternateFilterMap;
@end

@implementation KNAnimationRegistry

+ (id)instance
{
  if (qword_280A3BF20 != -1)
  {
    sub_275E59D44();
  }

  v3 = qword_280A3BF28;

  return v3;
}

+ (id)categoryNameForPluginClass:(Class)class
{
  animationCategory = [(objc_class *)class animationCategory];

  return [KNAnimationRegistry localizedCategoryNameForCategory:animationCategory];
}

+ (id)localizedCategoryNameForCategory:(int64_t)category
{
  if (category > 202)
  {
    if (category > 300)
    {
      switch(category)
      {
        case 301:
          v3 = sub_275DC204C(self);
          v4 = v3;
          v5 = @"Basic Action Effects *AnimationRegistry*";
          v6 = @"Basic";
          goto LABEL_23;
        case 302:
          v3 = sub_275DC204C(self);
          v4 = v3;
          v5 = @"Emphasis Action Effects *AnimationRegistry*";
          v6 = @"Emphasis";
          goto LABEL_23;
        case 401:
          v3 = sub_275DC204C(self);
          v4 = v3;
          v5 = @"Image Gallery Effects *AnimationRegistry*";
          v6 = @"Image Gallery";
          goto LABEL_23;
      }
    }

    else
    {
      if (category == 203)
      {
        v3 = sub_275DC204C(self);
        v4 = v3;
        v5 = @"Special Effects *AnimationRegistry*";
        v6 = @"Special Effects";
        goto LABEL_23;
      }

      if (category == 204)
      {
        v3 = sub_275DC204C(self);
        v4 = v3;
        v5 = @"3D Charts Effects *AnimationRegistry*";
        v6 = @"3D Chart Effects";
        goto LABEL_23;
      }
    }

    goto LABEL_8;
  }

  if (category > 102)
  {
    switch(category)
    {
      case 103:
        v3 = sub_275DC204C(self);
        v4 = v3;
        v5 = @"Text Effects *AnimationRegistry*";
        v6 = @"Text Effects";
        goto LABEL_23;
      case 201:
        v3 = sub_275DC204C(self);
        v4 = v3;
        v5 = @"Appear and Move Effects *AnimationRegistry*";
        v6 = @"Appear & Move";
        goto LABEL_23;
      case 202:
        v3 = sub_275DC204C(self);
        v4 = v3;
        v5 = @"Flip Spin and Scale Effects *AnimationRegistry*";
        v6 = @"Flip, Spin & Scale";
        goto LABEL_23;
    }

LABEL_8:
    string = [MEMORY[0x277CCACA8] string];
    goto LABEL_24;
  }

  if (category != 102)
  {
    goto LABEL_8;
  }

  v3 = sub_275DC204C(self);
  v4 = v3;
  v5 = @"Object Effects *AnimationRegistry*";
  v6 = @"Object Effects";
LABEL_23:
  string = [v3 localizedStringForKey:v5 value:v6 table:@"Keynote"];

LABEL_24:

  return string;
}

+ (id)localizedNameForUnsupportedAnimation:(id)animation
{
  animationCopy = animation;
  if (qword_280A3BF30 != -1)
  {
    sub_275E59D58();
  }

  v4 = [qword_280A3BF38 objectForKeyedSubscript:animationCopy];
  if (!v4)
  {
    v5 = sub_275DC204C(0);
    v4 = [v5 localizedStringForKey:@"Unsupported" value:&stru_2884D8E20 table:@"Keynote"];
  }

  return v4;
}

+ (id)preferredCategoryOrder
{
  array = [MEMORY[0x277CBEB18] array];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275D56E3C;
  block[3] = &unk_27A697B20;
  v3 = array;
  v6 = v3;
  if (qword_280A3BF40 != -1)
  {
    dispatch_once(&qword_280A3BF40, block);
  }

  return v3;
}

- (id)p_buildAlternateFilterMap
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];

  return v3;
}

- (KNAnimationRegistry)init
{
  v93 = *MEMORY[0x277D85DE8];
  v88.receiver = self;
  v88.super_class = KNAnimationRegistry;
  v2 = [(KNAnimationRegistry *)&v88 init];
  v3 = v2;
  if (v2)
  {
    v56 = sub_275DC204C(v2);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v50 = v3;
    [objc_opt_class() animationsInBundle];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    obj = v87 = 0u;
    v4 = [obj countByEnumeratingWithState:&v84 objects:v92 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v85;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v85 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v84 + 1) + 8 * i);
          v9 = [v56 classNamed:v8];
          if (v9)
          {
            [dictionary setObject:v9 forKeyedSubscript:v8];
          }

          else
          {
            v10 = MEMORY[0x277D81150];
            v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationRegistry init]"];
            v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationRegistry.m"];
            [v10 handleFailureInFunction:v11 file:v12 lineNumber:467 isFatal:0 description:{"Cannot find class for animation %@.", v8}];

            [MEMORY[0x277D81150] logBacktraceThrottled];
          }
        }

        v5 = [obj countByEnumeratingWithState:&v84 objects:v92 count:16];
      }

      while (v5);
    }

    allValues = [dictionary allValues];
    v14 = 0x277CBE000uLL;
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    array = [MEMORY[0x277CBEB18] array];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v51 = allValues;
    v57 = [v51 countByEnumeratingWithState:&v80 objects:v91 count:16];
    if (v57)
    {
      v54 = *v81;
      v59 = dictionary4;
      v60 = dictionary2;
      do
      {
        v17 = 0;
        do
        {
          if (*v81 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v58 = v17;
          v18 = *(*(&v80 + 1) + 8 * v17);
          v19 = [[KNAnimationInfo alloc] initWithAnimationClass:v18];
          [array addObject:v19];
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          supportedTypes = [v18 supportedTypes];
          v66 = [supportedTypes countByEnumeratingWithState:&v76 objects:v90 count:16];
          if (v66)
          {
            v65 = *v77;
            v61 = v18;
            do
            {
              for (j = 0; j != v66; ++j)
              {
                if (*v77 != v65)
                {
                  objc_enumerationMutation(supportedTypes);
                }

                v21 = *(*(&v76 + 1) + 8 * j);
                dictionary6 = [dictionary2 objectForKeyedSubscript:v21];
                if (!dictionary6)
                {
                  dictionary6 = [*(v14 + 2872) dictionary];
                  [dictionary2 setObject:dictionary6 forKeyedSubscript:v21];
                }

                [v18 animationName];
                v24 = v23 = v18;
                [dictionary6 setObject:v19 forKeyedSubscript:v24];

                dictionary7 = [dictionary4 objectForKeyedSubscript:v21];
                if (!dictionary7)
                {
                  dictionary7 = [*(v14 + 2872) dictionary];
                  [dictionary4 setObject:dictionary7 forKeyedSubscript:v21];
                }

                v69 = dictionary6;
                v26 = [KNAnimationRegistry categoryNameForPluginClass:v23];
                v71 = dictionary7;
                array2 = [dictionary7 objectForKeyedSubscript:v26];
                v18 = v23;
                if (!array2)
                {
                  array2 = [MEMORY[0x277CBEB18] array];
                  [v71 setObject:array2 forKeyedSubscript:v26];
                }

                v68 = v26;
                [array2 addObject:v19];
                dictionary8 = [dictionary5 objectForKeyedSubscript:v21];
                if (!dictionary8)
                {
                  dictionary8 = [*(v14 + 2872) dictionary];
                  [dictionary5 setObject:dictionary8 forKeyedSubscript:v21];
                }

                animationFilter = [v23 animationFilter];
                array3 = [dictionary8 objectForKeyedSubscript:?];
                if (!array3)
                {
                  array3 = [MEMORY[0x277CBEB18] array];
                  [dictionary8 setObject:array3 forKeyedSubscript:animationFilter];
                }

                [array3 addObject:v19];
                if ([v18 conformsToProtocol:&unk_28852EB90])
                {
                  obsoleteAnimationNames = [v18 obsoleteAnimationNames];
                  if (obsoleteAnimationNames)
                  {
                    v64 = obsoleteAnimationNames;
                    dictionary9 = [dictionary3 objectForKeyedSubscript:v21];
                    if (!dictionary9)
                    {
                      dictionary9 = [*(v14 + 2872) dictionary];
                      [dictionary3 setObject:dictionary9 forKeyedSubscript:v21];
                    }

                    v74 = 0u;
                    v75 = 0u;
                    v72 = 0u;
                    v73 = 0u;
                    v32 = v64;
                    v33 = [v32 countByEnumeratingWithState:&v72 objects:v89 count:16];
                    if (v33)
                    {
                      v34 = v33;
                      v35 = *v73;
                      do
                      {
                        for (k = 0; k != v34; ++k)
                        {
                          if (*v73 != v35)
                          {
                            objc_enumerationMutation(v32);
                          }

                          [dictionary9 setObject:v19 forKeyedSubscript:*(*(&v72 + 1) + 8 * k)];
                        }

                        v34 = [v32 countByEnumeratingWithState:&v72 objects:v89 count:16];
                      }

                      while (v34);
                    }

                    v14 = 0x277CBE000;
                    dictionary4 = v59;
                    dictionary2 = v60;
                    v18 = v61;
                    obsoleteAnimationNames = v64;
                  }
                }
              }

              v66 = [supportedTypes countByEnumeratingWithState:&v76 objects:v90 count:16];
            }

            while (v66);
          }

          v17 = v58 + 1;
        }

        while (v58 + 1 != v57);
        v57 = [v51 countByEnumeratingWithState:&v80 objects:v91 count:16];
      }

      while (v57);
    }

    v37 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:dictionary2];
    v3 = v50;
    classesForTypeAndName = v50->_classesForTypeAndName;
    v50->_classesForTypeAndName = v37;

    v39 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:dictionary3];
    classesForTypeAndObsoleteName = v50->_classesForTypeAndObsoleteName;
    v50->_classesForTypeAndObsoleteName = v39;

    v41 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:dictionary4];
    classesForTypeAndCategory = v50->_classesForTypeAndCategory;
    v50->_classesForTypeAndCategory = v41;

    v43 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:dictionary5];
    classesForTypeAndFilter = v50->_classesForTypeAndFilter;
    v50->_classesForTypeAndFilter = v43;

    v45 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:array];
    animationInfos = v50->_animationInfos;
    v50->_animationInfos = v45;

    p_buildAlternateFilterMap = [(KNAnimationRegistry *)v50 p_buildAlternateFilterMap];
    alternateEffectIdentifiersForEffectIdentifierAndFilter = v50->_alternateEffectIdentifiersForEffectIdentifierAndFilter;
    v50->_alternateEffectIdentifiersForEffectIdentifierAndFilter = p_buildAlternateFilterMap;
  }

  return v3;
}

- (id)distinctCategoriesForType:(int64_t)type
{
  v4 = KNAnimationTypeAsNumber();
  v5 = [(NSDictionary *)self->_classesForTypeAndCategory objectForKeyedSubscript:v4];
  allKeys = [v5 allKeys];
  v7 = [allKeys sortedArrayUsingFunction:sub_275D55DF8 context:0];

  return v7;
}

- (id)animationInfosForAnimationType:(int64_t)type category:(id)category
{
  classesForTypeAndCategory = self->_classesForTypeAndCategory;
  categoryCopy = category;
  v6 = KNAnimationTypeAsNumber();
  v7 = [(NSDictionary *)classesForTypeAndCategory objectForKeyedSubscript:v6];
  v8 = [v7 objectForKeyedSubscript:categoryCopy];

  return v8;
}

- (id)animationInfoForEffectIdentifier:(id)identifier animationType:(int64_t)type includeObsoleteNames:(BOOL)names
{
  namesCopy = names;
  identifierCopy = identifier;
  v9 = KNAnimationTypeAsNumber();
  v10 = [(NSDictionary *)self->_classesForTypeAndName objectForKeyedSubscript:v9];
  v11 = [v10 objectForKeyedSubscript:identifierCopy];
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = !namesCopy;
  }

  if (!v12)
  {
    v13 = [(NSDictionary *)self->_classesForTypeAndObsoleteName objectForKeyedSubscript:v9];
    v11 = [v13 objectForKeyedSubscript:identifierCopy];
  }

  if (!v11)
  {
    v14 = MEMORY[0x277D801A8];
    v15 = MEMORY[0x277D800D0];
    if (type != 4)
    {
      v15 = MEMORY[0x277D80150];
    }

    if (type != 5)
    {
      v14 = v15;
    }

    v11 = [v10 objectForKeyedSubscript:*v14];
  }

  return v11;
}

- (id)animationInfoForEffectIdentifier:(id)identifier animationType:(int64_t)type includeObsoleteNames:(BOOL)names drawable:(id)drawable
{
  namesCopy = names;
  v32 = *MEMORY[0x277D85DE8];
  drawableCopy = drawable;
  typeCopy = type;
  v11 = [(KNAnimationRegistry *)self animationInfoForEffectIdentifier:identifier animationType:type includeObsoleteNames:namesCopy];
  alternateEffectIdentifiersForEffectIdentifierAndFilter = self->_alternateEffectIdentifiersForEffectIdentifierAndFilter;
  effectIdentifier = [v11 effectIdentifier];
  v14 = [(NSDictionary *)alternateEffectIdentifiersForEffectIdentifierAndFilter objectForKeyedSubscript:effectIdentifier];

  if (v14)
  {
    [v14 allKeys];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = v30 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v25 = v11;
      v18 = *v28;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v27 + 1) + 8 * i);
          animationFilters = [drawableCopy animationFilters];
          v22 = [animationFilters containsObject:v20];

          if (v22)
          {
            v23 = [v14 objectForKeyedSubscript:v20];
            v11 = [(KNAnimationRegistry *)self animationInfoForEffectIdentifier:v23 animationType:typeCopy];

            if (v11)
            {

              goto LABEL_13;
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

      v11 = v25;
    }

LABEL_13:
  }

  return v11;
}

- (BOOL)canMapEffectIdentifier:(id)identifier animationType:(int64_t)type toEffectIdentifier:(id)effectIdentifier includeObsoleteNames:(BOOL)names forDrawable:(id)drawable
{
  namesCopy = names;
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  effectIdentifierCopy = effectIdentifier;
  drawableCopy = drawable;
  if ([identifierCopy isEqualToString:effectIdentifierCopy])
  {
    v14 = 1;
  }

  else
  {
    v15 = [(NSDictionary *)self->_alternateEffectIdentifiersForEffectIdentifierAndFilter objectForKeyedSubscript:identifierCopy];
    v14 = 0;
    if (!v15 && namesCopy)
    {
      v16 = KNAnimationTypeAsNumber();
      v17 = [(NSDictionary *)self->_classesForTypeAndObsoleteName objectForKeyedSubscript:v16];
      v18 = [v17 objectForKeyedSubscript:identifierCopy];

      v14 = v18 != 0;
      if (v18)
      {
        alternateEffectIdentifiersForEffectIdentifierAndFilter = self->_alternateEffectIdentifiersForEffectIdentifierAndFilter;
        effectIdentifier = [v18 effectIdentifier];
        v15 = [(NSDictionary *)alternateEffectIdentifiersForEffectIdentifierAndFilter objectForKeyedSubscript:effectIdentifier];
      }

      else
      {
        v15 = 0;
      }
    }

    if (v15)
    {
      [drawableCopy animationFilters];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v21 = v32 = 0u;
      v22 = [v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v30;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v30 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [v15 objectForKeyedSubscript:{*(*(&v29 + 1) + 8 * i), v29}];
            v27 = v26;
            if (v26 && [v26 isEqualToString:effectIdentifierCopy])
            {

              v14 = 1;
              goto LABEL_21;
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:
    }
  }

  return v14;
}

- (id)animationInfosForAnimationType:(int64_t)type filter:(id)filter
{
  v26 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  array = [MEMORY[0x277CBEB18] array];
  v7 = KNAnimationTypeAsNumber();
  if (filterCopy && [filterCopy count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = filterCopy;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [(NSDictionary *)self->_classesForTypeAndFilter objectForKeyedSubscript:v7, v21];
          v15 = [v14 objectForKeyedSubscript:v13];
          [array addObjectsFromArray:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    v16 = [array sortedArrayUsingFunction:sub_275D55D64 context:v7];
  }

  else
  {
    v17 = [(NSDictionary *)self->_classesForTypeAndFilter objectForKeyedSubscript:v7];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277D805A0]];
    [array addObjectsFromArray:v18];

    v16 = array;
  }

  v19 = v16;

  return v19;
}

@end