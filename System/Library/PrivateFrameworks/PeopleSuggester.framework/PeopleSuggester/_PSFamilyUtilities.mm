@interface _PSFamilyUtilities
+ (BOOL)contactMarkedAsFamilyInFeatureDict:(id)dict;
+ (BOOL)featureDictionaryPassesHeuristic:(id)heuristic;
+ (id)featureSet;
@end

@implementation _PSFamilyUtilities

+ (id)featureSet
{
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F2D8C378];

  return v2;
}

+ (BOOL)contactMarkedAsFamilyInFeatureDict:(id)dict
{
  v17 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [&unk_1F2D8C390 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(&unk_1F2D8C390);
        }

        v8 = [dictCopy objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        bOOLValue = [v8 BOOLValue];

        if (bOOLValue)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [&unk_1F2D8C390 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

+ (BOOL)featureDictionaryPassesHeuristic:(id)heuristic
{
  v33 = *MEMORY[0x1E69E9840];
  heuristicCopy = heuristic;
  if ([heuristicCopy count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v4 = heuristicCopy;
    v5 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v29;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          v10 = [v4 objectForKeyedSubscript:{v9, v28}];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = +[_PSLogging familyRecommenderChannel];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              [(_PSFamilyUtilities *)v9 featureDictionaryPassesHeuristic:v10, v17];
            }

            v16 = 0;
            goto LABEL_17;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    allValues = [v4 allValues];
    v12 = [allValues valueForKeyPath:@"@sum.self"];
    [v12 doubleValue];
    v14 = v13;

    if (v14 > 0.0)
    {
      v15 = [v4 objectForKeyedSubscript:@"contactParent"];
      if ([v15 integerValue] == 1)
      {
        v16 = 1;
      }

      else
      {
        v10 = [v4 objectForKeyedSubscript:@"contactFamilyRelation"];
        if ([v10 integerValue] == 1)
        {
          v16 = 1;
        }

        else
        {
          v17 = [v4 objectForKeyedSubscript:@"contactEmergencyFamily"];
          if ([v17 integerValue]== 1)
          {
            v16 = 1;
            v4 = v15;
LABEL_17:

            v15 = v4;
          }

          else
          {
            v19 = [v4 objectForKeyedSubscript:@"contactInHome"];
            integerValue = [v19 integerValue];

            if (integerValue == 1)
            {
              v16 = 1;
              goto LABEL_20;
            }

            v15 = [v4 objectForKeyedSubscript:@"callOutgoingRatio"];
            [v15 doubleValue];
            v22 = v21;
            if (v21 <= 0.0 && ([v4 objectForKeyedSubscript:@"firstPartyMsgOutgoingRatio"], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "doubleValue"), v23 <= 0.0))
            {
              v16 = 0;
            }

            else
            {
              v24 = [v4 objectForKeyedSubscript:{@"firstPartyMsgSixWeeks", v28}];
              [v24 doubleValue];
              if (v25 <= 0.0)
              {
                v26 = [v4 objectForKeyedSubscript:@"thirdPartyMsgTwoWeeks"];
                [v26 doubleValue];
                v16 = v27 > 0.0;
              }

              else
              {
                v16 = 1;
              }

              if (v22 > 0.0)
              {
                goto LABEL_19;
              }
            }
          }
        }
      }

LABEL_19:

      goto LABEL_20;
    }
  }

  v16 = 0;
LABEL_20:

  return v16;
}

+ (void)featureDictionaryPassesHeuristic:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = objc_opt_class();
  v4 = v8;
  _os_log_fault_impl(&dword_1B5ED1000, a3, OS_LOG_TYPE_FAULT, "Feature value for key: %@ contained an unsupported type of %@", &v5, 0x16u);
}

@end