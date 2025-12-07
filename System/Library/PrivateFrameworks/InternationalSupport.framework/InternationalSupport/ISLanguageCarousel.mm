@interface ISLanguageCarousel
+ (id)_rankedItems:(id)items usePreferredLanguages:(BOOL)languages guessedRegion:(BOOL)region;
+ (id)guessedRegion;
+ (id)rankedItemsFromItems:(id)items usingSystemLanguages:(id)languages preferredLanguages:(id)preferredLanguages region:(id)region;
- (ISLanguageCarousel)initWithItems:(id)items;
- (id)_itemsWithMergedDuplicates:(id)duplicates;
- (id)nextItem;
- (void)reloadQueue;
- (void)setItems:(id)items;
@end

@implementation ISLanguageCarousel

- (ISLanguageCarousel)initWithItems:(id)items
{
  itemsCopy = items;
  v8.receiver = self;
  v8.super_class = ISLanguageCarousel;
  v5 = [(ISLanguageCarousel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ISLanguageCarousel *)v5 setItems:itemsCopy];
    [(ISLanguageCarousel *)v6 setCycle:1];
    [(ISLanguageCarousel *)v6 setWeightedRepetition:1];
  }

  return v6;
}

- (id)nextItem
{
  queueIndex = [(ISLanguageCarousel *)self queueIndex];
  queue = [(ISLanguageCarousel *)self queue];
  if (queueIndex >= [queue count])
  {
    cycle = [(ISLanguageCarousel *)self cycle];

    if (cycle)
    {
      [(ISLanguageCarousel *)self setQueueIndex:0];
    }
  }

  else
  {
  }

  queueIndex2 = [(ISLanguageCarousel *)self queueIndex];
  queue2 = [(ISLanguageCarousel *)self queue];
  v8 = [queue2 count];

  if (queueIndex2 >= v8)
  {
    v10 = 0;
  }

  else
  {
    queue3 = [(ISLanguageCarousel *)self queue];
    v10 = [queue3 objectAtIndexedSubscript:{-[ISLanguageCarousel queueIndex](self, "queueIndex")}];

    [(ISLanguageCarousel *)self setQueueIndex:[(ISLanguageCarousel *)self queueIndex]+ 1];
  }

  return v10;
}

+ (id)rankedItemsFromItems:(id)items usingSystemLanguages:(id)languages preferredLanguages:(id)preferredLanguages region:(id)region
{
  v59 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  languagesCopy = languages;
  preferredLanguagesCopy = preferredLanguages;
  regionCopy = region;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v13 = [languagesCopy componentsJoinedByString:{@", "}];
    v14 = [preferredLanguagesCopy componentsJoinedByString:{@", "}];
    v15 = preferredLanguagesCopy;
    v16 = languagesCopy;
    v17 = [itemsCopy count];
    v18 = [itemsCopy valueForKey:@"languageIdentifier"];
    v19 = [v18 componentsJoinedByString:{@", "}];
    *buf = 136316418;
    v48 = "+[ISLanguageCarousel rankedItemsFromItems:usingSystemLanguages:preferredLanguages:region:]";
    v49 = 2114;
    v50 = v13;
    v51 = 2114;
    v52 = v14;
    v53 = 2114;
    v54 = regionCopy;
    v55 = 2048;
    v56 = v17;
    languagesCopy = v16;
    preferredLanguagesCopy = v15;
    v57 = 2114;
    v58 = v19;
    _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: systemLanguages = [%{public}@], preferredLanguages = [%{public}@], region = %{public}@, items (%lu) = [%{public}@]", buf, 0x3Eu);
  }

  v20 = [itemsCopy valueForKey:@"languageIdentifier"];
  v21 = [v20 mutableCopy];

  if (![v21 count])
  {
    +[ISLanguageCarousel rankedItemsFromItems:usingSystemLanguages:preferredLanguages:region:];
  }

  v37 = languagesCopy;
  if ([v21 count])
  {
    v22 = languagesCopy;
    if ([regionCopy length])
    {
      v23 = [MEMORY[0x1E695DF58] languagesForRegion:regionCopy subdivision:0 withThreshold:1 filter:0];
      v24 = [v23 arrayByAddingObjectsFromArray:v22];

      v22 = v24;
    }

    if ([preferredLanguagesCopy count])
    {
      v25 = [preferredLanguagesCopy arrayByAddingObjectsFromArray:v22];

      v22 = v25;
    }

    v40 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v21, "count")}];
    if ([v21 count])
    {
      v38 = v22;
      v39 = v21;
      while (1)
      {
        v26 = [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:v21 forPreferences:v22];
        if (![v26 count])
        {
          +[ISLanguageCarousel rankedItemsFromItems:usingSystemLanguages:preferredLanguages:region:];
        }

        if (![v26 count])
        {
          break;
        }

        [v21 removeObjectsInArray:v26];
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v27 = v26;
        v28 = [v27 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v43;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v43 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v42 + 1) + 8 * i);
              v41[0] = MEMORY[0x1E69E9820];
              v41[1] = 3221225472;
              v41[2] = __90__ISLanguageCarousel_rankedItemsFromItems_usingSystemLanguages_preferredLanguages_region___block_invoke;
              v41[3] = &unk_1E7D072E0;
              v41[4] = v32;
              v33 = [itemsCopy indexOfObjectPassingTest:v41];
              if (v33 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v34 = [itemsCopy objectAtIndexedSubscript:v33];
                [v40 addObject:v34];
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v42 objects:v46 count:16];
          }

          while (v29);
        }

        v21 = v39;
        v22 = v38;
        if (![v39 count])
        {
          goto LABEL_26;
        }
      }
    }

LABEL_26:
    array = [v40 array];
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

uint64_t __90__ISLanguageCarousel_rankedItemsFromItems_usingSystemLanguages_preferredLanguages_region___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 languageIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

+ (id)guessedRegion
{
  v2 = +[ISRegionDetector sharedRegionDetector];
  guessedCountries = [v2 guessedCountries];
  firstObject = [guessedCountries firstObject];

  return firstObject;
}

+ (id)_rankedItems:(id)items usePreferredLanguages:(BOOL)languages guessedRegion:(BOOL)region
{
  languagesCopy = languages;
  itemsCopy = items;
  v8 = objc_opt_class();
  systemLanguages = [MEMORY[0x1E695DF58] systemLanguages];
  if (languagesCopy)
  {
    preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
    if (!region)
    {
      goto LABEL_3;
    }

LABEL_6:
    guessedRegion = [objc_opt_class() guessedRegion];
    v11 = [v8 rankedItemsFromItems:itemsCopy usingSystemLanguages:systemLanguages preferredLanguages:preferredLanguages region:guessedRegion];

    if (!languagesCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  preferredLanguages = 0;
  if (region)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = [v8 rankedItemsFromItems:itemsCopy usingSystemLanguages:systemLanguages preferredLanguages:preferredLanguages region:0];
  if (languagesCopy)
  {
LABEL_7:
  }

LABEL_8:

  return v11;
}

- (id)_itemsWithMergedDuplicates:(id)duplicates
{
  v52 = *MEMORY[0x1E69E9840];
  duplicatesCopy = duplicates;
  v5 = objc_opt_new();
  v27 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = duplicatesCopy;
  v30 = [obj countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (v30)
  {
    v29 = *v39;
    v28 = v5;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v38 + 1) + 8 * i);
        v8 = MEMORY[0x1E695DF58];
        languageIdentifier = [v7 languageIdentifier];
        v10 = [v8 baseLanguageFromLanguage:languageIdentifier];

        v11 = [v5 objectForKeyedSubscript:v10];

        if (v11)
        {
          v31 = v10;
          v32 = i;
          v12 = [v5 objectForKeyedSubscript:v10];
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v34 objects:v50 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v35;
            v33 = v13;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v35 != v16)
                {
                  objc_enumerationMutation(v33);
                }

                v18 = *(*(&v34 + 1) + 8 * j);
                data = [v18 data];
                if (!data)
                {
                  data2 = [v7 data];
                  if (!data2)
                  {
LABEL_21:
                    v10 = v31;
                    v13 = v33;
                    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                    {
                      languageIdentifier2 = [v18 languageIdentifier];
                      languageIdentifier3 = [v7 languageIdentifier];
                      *buf = 136315906;
                      v43 = "[ISLanguageCarousel _itemsWithMergedDuplicates:]";
                      v44 = 2114;
                      v45 = languageIdentifier2;
                      v46 = 2114;
                      v47 = languageIdentifier3;
                      v48 = 2114;
                      v49 = v31;
                      _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: merging items (%{public}@, %{public}@) with baseLanguage %{public}@", buf, 0x2Au);
                    }

                    v5 = v28;
                    i = v32;
                    goto LABEL_25;
                  }
                }

                data3 = [v18 data];
                data4 = [v7 data];
                v22 = [data3 isEqual:data4];

                if (data)
                {

                  if (v22)
                  {
                    goto LABEL_21;
                  }
                }

                else
                {

                  if (v22)
                  {
                    goto LABEL_21;
                  }
                }
              }

              v13 = v33;
              v15 = [v33 countByEnumeratingWithState:&v34 objects:v50 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          [v27 addObject:v7];
          [v13 addObject:v7];
          v5 = v28;
          v10 = v31;
          i = v32;
        }

        else
        {
          [v27 addObject:v7];
          v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v7, 0}];
          [v5 setObject:v13 forKeyedSubscript:v10];
        }

LABEL_25:
      }

      v30 = [obj countByEnumeratingWithState:&v38 objects:v51 count:16];
    }

    while (v30);
  }

  return v27;
}

- (void)reloadQueue
{
  v33 = *MEMORY[0x1E69E9840];
  items = [(ISLanguageCarousel *)self items];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315394;
    v28 = "[ISLanguageCarousel reloadQueue]";
    v29 = 1024;
    LODWORD(v30) = [(ISLanguageCarousel *)self cycle];
    _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: cycle = %d", &v27, 0x12u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    mergeDuplicates = [(ISLanguageCarousel *)self mergeDuplicates];
    v27 = 136315394;
    v28 = "[ISLanguageCarousel reloadQueue]";
    v29 = 1024;
    LODWORD(v30) = mergeDuplicates;
    _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: mergedDuplicates = %d", &v27, 0x12u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    randomize = [(ISLanguageCarousel *)self randomize];
    v27 = 136315394;
    v28 = "[ISLanguageCarousel reloadQueue]";
    v29 = 1024;
    LODWORD(v30) = randomize;
    _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: randomize = %d", &v27, 0x12u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    rankingUsesGuessedRegion = [(ISLanguageCarousel *)self rankingUsesGuessedRegion];
    v27 = 136315394;
    v28 = "[ISLanguageCarousel reloadQueue]";
    v29 = 1024;
    LODWORD(v30) = rankingUsesGuessedRegion;
    _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: rankingUsesGuessedRegion = %d", &v27, 0x12u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    rankingUsesPreferredLanguages = [(ISLanguageCarousel *)self rankingUsesPreferredLanguages];
    v27 = 136315394;
    v28 = "[ISLanguageCarousel reloadQueue]";
    v29 = 1024;
    LODWORD(v30) = rankingUsesPreferredLanguages;
    _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: rankingUsesPreferredLanguages = %d", &v27, 0x12u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    weightedRepetition = [(ISLanguageCarousel *)self weightedRepetition];
    v27 = 136315394;
    v28 = "[ISLanguageCarousel reloadQueue]";
    v29 = 1024;
    LODWORD(v30) = weightedRepetition;
    _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: weightedRepetition = %d", &v27, 0x12u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v9 = [items count];
    v10 = [items valueForKey:@"languageIdentifier"];
    v11 = [v10 componentsJoinedByString:{@", "}];
    v27 = 136315650;
    v28 = "[ISLanguageCarousel reloadQueue]";
    v29 = 2048;
    v30 = v9;
    v31 = 2114;
    v32 = v11;
    _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: items (%lu) = [%{public}@]", &v27, 0x20u);
  }

  if ([items count])
  {
    if ([(ISLanguageCarousel *)self mergeDuplicates])
    {
      v12 = [(ISLanguageCarousel *)self _itemsWithMergedDuplicates:items];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v12 count];
        v14 = [v12 valueForKey:@"languageIdentifier"];
        v15 = [v14 componentsJoinedByString:{@", "}];
        v27 = 136315650;
        v28 = "[ISLanguageCarousel reloadQueue]";
        v29 = 2048;
        v30 = v13;
        v31 = 2114;
        v32 = v15;
        _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: itemsWithMergedDuplicates (%lu) = [%{public}@]", &v27, 0x20u);
      }

      items = v12;
    }

    [(ISLanguageCarousel *)self setQueueIndex:0];
    if ([(ISLanguageCarousel *)self randomize])
    {
      v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(items, "count")}];
      v17 = [items mutableCopy];
      v18 = v17;
      while ([v17 count])
      {
        v19 = arc4random_uniform([v18 count]);
        v20 = [v18 objectAtIndexedSubscript:v19];
        [v16 addObject:v20];

        [v18 removeObjectAtIndex:v19];
        v17 = v18;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v16 count];
        v25 = [v16 valueForKey:@"languageIdentifier"];
        v26 = [v25 componentsJoinedByString:{@", "}];
        v27 = 136315650;
        v28 = "[ISLanguageCarousel reloadQueue]";
        v29 = 2048;
        v30 = v24;
        v31 = 2114;
        v32 = v26;
        _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: randomizedItems (%lu) = [%{public}@]", &v27, 0x20u);
      }

      [(ISLanguageCarousel *)self setQueue:v16];
    }

    else
    {
      v16 = [objc_opt_class() _rankedItems:items usePreferredLanguages:-[ISLanguageCarousel rankingUsesPreferredLanguages](self guessedRegion:{"rankingUsesPreferredLanguages"), -[ISLanguageCarousel rankingUsesGuessedRegion](self, "rankingUsesGuessedRegion")}];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v16 count];
        v22 = [v16 valueForKey:@"languageIdentifier"];
        v23 = [v22 componentsJoinedByString:{@", "}];
        v27 = 136315650;
        v28 = "[ISLanguageCarousel reloadQueue]";
        v29 = 2048;
        v30 = v21;
        v31 = 2114;
        v32 = v23;
        _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: rankedItems (%lu) = [%{public}@]", &v27, 0x20u);
      }

      [(ISLanguageCarousel *)self setQueue:v16];
    }
  }

  else
  {
    [(ISLanguageCarousel *)self setQueue:items];
  }
}

- (void)setItems:(id)items
{
  objc_storeStrong(&self->_items, items);

  [(ISLanguageCarousel *)self reloadQueue];
}

@end