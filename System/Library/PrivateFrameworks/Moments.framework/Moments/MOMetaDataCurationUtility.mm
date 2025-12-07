@interface MOMetaDataCurationUtility
+ (id)getPersonFromBirthdayPhotoTrait:(id)trait eventBundle:(id)bundle;
+ (id)selectBirthdayFromPhotoTraits:(id)traits;
+ (id)selectHolidayFromPhotoTraits:(id)traits;
+ (unint64_t)getTheBestPersonRelationtshipTagFor:(id)for useRelationshipInference:(BOOL)inference;
@end

@implementation MOMetaDataCurationUtility

+ (unint64_t)getTheBestPersonRelationtshipTagFor:(id)for useRelationshipInference:(BOOL)inference
{
  inferenceCopy = inference;
  v40 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v6 = 1.0;
  v7 = 1.0;
  v8 = 1.0;
  v9 = 1.0;
  if (inferenceCopy)
  {
    v9 = 0.927661;
    v8 = 0.959;
    v7 = 0.949924;
    v6 = 0.96;
  }

  v10 = objc_opt_new();
  personRelationships = [forCopy personRelationships];
  v12 = [personRelationships count];

  if (v12)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    personRelationships2 = [forCopy personRelationships];
    v14 = [personRelationships2 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v36;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(personRelationships2);
          }

          v18 = *(*(&v35 + 1) + 8 * i);
          if ([v18 relationship] != 4 || (objc_msgSend(v18, "score"), v19 = &unk_284100B58, v20 < v9))
          {
            if ([v18 relationship] != 15 || (objc_msgSend(v18, "score"), v19 = &unk_284100B70, v21 < v8))
            {
              if ([v18 relationship] != 27 || (objc_msgSend(v18, "score"), v19 = &unk_284100B88, v22 < 1.0))
              {
                if ([v18 relationship] != 21 || (objc_msgSend(v18, "score"), v19 = &unk_284100BA0, v23 < v7))
                {
                  if ([v18 relationship] != 22)
                  {
                    continue;
                  }

                  [v18 score];
                  v19 = &unk_284100BB8;
                  if (v24 < v6)
                  {
                    continue;
                  }
                }
              }
            }
          }

          v25 = MEMORY[0x277CCABB0];
          [v18 score];
          v26 = [v25 numberWithDouble:?];
          [v10 setObject:v26 forKeyedSubscript:v19];
        }

        v15 = [personRelationships2 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v15);
    }

    if ([v10 count])
    {
      v27 = [v10 keysOfEntriesPassingTest:&__block_literal_global_5];
      if ([v27 count])
      {
        if (([v27 containsObject:&unk_284100B70]& 1) != 0)
        {
          goto LABEL_40;
        }

        if (([v27 containsObject:&unk_284100B88]& 1) != 0)
        {
LABEL_26:
          v28 = 27;
          goto LABEL_41;
        }

        if (([v27 containsObject:&unk_284100B58]& 1) != 0)
        {
LABEL_38:
          v28 = 4;
          goto LABEL_41;
        }

        if (([v27 containsObject:&unk_284100BA0]& 1) != 0)
        {
          goto LABEL_44;
        }

        if (([v27 containsObject:&unk_284100BB8]& 1) != 0)
        {
          v28 = 22;
          goto LABEL_41;
        }
      }

      v29 = [v10 objectForKey:&unk_284100B58];

      if (v29)
      {
        goto LABEL_38;
      }

      v30 = [v10 objectForKey:&unk_284100B70];

      if (v30)
      {
LABEL_40:
        v28 = 15;
        goto LABEL_41;
      }

      v32 = [v10 objectForKey:&unk_284100B88];

      if (v32)
      {
        goto LABEL_26;
      }

      v33 = [v10 objectForKey:&unk_284100BA0];

      if (v33)
      {
LABEL_44:
        v28 = 21;
        goto LABEL_41;
      }

      v34 = [v10 objectForKey:&unk_284100BB8];

      if (v34)
      {
        v28 = 22;
      }

      else
      {
        v28 = 1;
      }
    }

    else
    {
      v27 = _mo_log_facility_get_os_log(MOLogFacilityPatternEmbedding);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [MOMetaDataCurationUtility getTheBestPersonRelationtshipTagFor:forCopy useRelationshipInference:?];
      }

      v28 = 1;
    }
  }

  else
  {
    v27 = _mo_log_facility_get_os_log(MOLogFacilityPatternEmbedding);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [MOMetaDataCurationUtility getTheBestPersonRelationtshipTagFor:forCopy useRelationshipInference:?];
    }

    v28 = 0;
  }

LABEL_41:

  return v28;
}

+ (id)selectHolidayFromPhotoTraits:(id)traits
{
  v25 = *MEMORY[0x277D85DE8];
  traitsCopy = traits;
  v4 = traitsCopy;
  if (!traitsCopy || ![traitsCopy count])
  {
    v16 = 0;
    goto LABEL_20;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = v4;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v6)
  {
    v19 = 0;
    goto LABEL_19;
  }

  v7 = v6;
  v19 = 0;
  v8 = 0;
  v9 = *v21;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v20 + 1) + 8 * i);
      labelType = [v11 labelType];
      if ([labelType isEqualToString:@"holiday"])
      {
        relevantAssetUUIDs = [v11 relevantAssetUUIDs];
        if ([relevantAssetUUIDs count] <= v8)
        {
        }

        else
        {
          name = [v11 name];

          if (!name)
          {
            continue;
          }

          relevantAssetUUIDs2 = [v11 relevantAssetUUIDs];
          v8 = [relevantAssetUUIDs2 count];

          labelType = v19;
          v19 = v11;
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v7);
LABEL_19:

  v4 = v18;
  v16 = v19;
LABEL_20:

  return v16;
}

+ (id)selectBirthdayFromPhotoTraits:(id)traits
{
  v34 = *MEMORY[0x277D85DE8];
  traitsCopy = traits;
  v4 = traitsCopy;
  if (!traitsCopy || ![traitsCopy count])
  {
    v23 = 0;
    goto LABEL_23;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v25 = v4;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v6)
  {
    v26 = 0;
    goto LABEL_22;
  }

  v7 = v6;
  v28 = 0;
  v8 = *v30;
  v9 = @"Birthday";
  v26 = 0;
  v27 = *v30;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v30 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v29 + 1) + 8 * i);
      labelType = [v11 labelType];
      if (![labelType isEqualToString:@"meaning"])
      {
        goto LABEL_15;
      }

      meaningIdentifier = [v11 meaningIdentifier];
      if (([meaningIdentifier isEqualToString:v9] & 1) == 0)
      {

        goto LABEL_15;
      }

      v14 = v5;
      v15 = v9;
      relevantAssetUUIDs = [v11 relevantAssetUUIDs];
      v17 = [relevantAssetUUIDs count];

      if (v17 > v28)
      {
        associatedPersonLocalIdentifiers = [v11 associatedPersonLocalIdentifiers];
        if (associatedPersonLocalIdentifiers)
        {
          v19 = associatedPersonLocalIdentifiers;
          associatedPersonLocalIdentifiers2 = [v11 associatedPersonLocalIdentifiers];
          v21 = [associatedPersonLocalIdentifiers2 count];

          if (v21)
          {
            relevantAssetUUIDs2 = [v11 relevantAssetUUIDs];
            v28 = [relevantAssetUUIDs2 count];

            labelType = v26;
            v26 = v11;
            v9 = v15;
            v5 = v14;
            v8 = v27;
LABEL_15:

            continue;
          }
        }
      }

      v9 = v15;
      v5 = v14;
      v8 = v27;
    }

    v7 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v7);
LABEL_22:

  v4 = v25;
  v23 = v26;
LABEL_23:

  return v23;
}

+ (id)getPersonFromBirthdayPhotoTrait:(id)trait eventBundle:(id)bundle
{
  v32 = *MEMORY[0x277D85DE8];
  traitCopy = trait;
  bundleCopy = bundle;
  v7 = bundleCopy;
  firstObject = 0;
  if (!traitCopy || !bundleCopy)
  {
    goto LABEL_22;
  }

  associatedPersonLocalIdentifiers = [traitCopy associatedPersonLocalIdentifiers];
  firstObject = [associatedPersonLocalIdentifiers firstObject];
  if (!firstObject)
  {

    goto LABEL_22;
  }

  persons = [v7 persons];
  if (!persons)
  {

    goto LABEL_20;
  }

  v11 = persons;
  persons2 = [v7 persons];
  v13 = [persons2 count];

  if (!v13)
  {
LABEL_20:
    firstObject = 0;
    goto LABEL_22;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = v7;
  obj = [v7 persons];
  v14 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        localIdentifier = [v18 localIdentifier];
        associatedPersonLocalIdentifiers2 = [traitCopy associatedPersonLocalIdentifiers];
        firstObject2 = [associatedPersonLocalIdentifiers2 firstObject];
        if ([localIdentifier isEqualToString:firstObject2])
        {
          name = [v18 name];
          v23 = [name length];

          if (v23)
          {
            firstObject = v18;

            goto LABEL_21;
          }
        }

        else
        {
        }
      }

      v15 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  firstObject = 0;
LABEL_21:
  v7 = v25;
LABEL_22:

  return firstObject;
}

+ (void)getTheBestPersonRelationtshipTagFor:(void *)a1 useRelationshipInference:.cold.1(void *a1)
{
  v1 = [a1 name];
  LODWORD(v8) = 138477827;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_8(&dword_22D8C5000, v2, v3, "None of personalRelationships are confident enough to generate the best relationship tag for person %{private}@", v4, v5, v6, v7, v8, DWORD2(v8));
}

+ (void)getTheBestPersonRelationtshipTagFor:(void *)a1 useRelationshipInference:.cold.2(void *a1)
{
  v1 = [a1 name];
  LODWORD(v8) = 138477827;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_8(&dword_22D8C5000, v2, v3, "No personalRelationship is available for person %{private}@", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end