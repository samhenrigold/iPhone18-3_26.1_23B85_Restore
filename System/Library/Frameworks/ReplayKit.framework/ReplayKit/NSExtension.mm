@interface NSExtension
@end

@implementation NSExtension

void __125__NSExtension_RPExtensions__extensionsWithMatchingPointName_baseIdentifier_activationRule_unwantedActivationRule_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v27 = a3;
  obj = v5;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v29 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v29)
  {
    v6 = *v31;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = [v8 extensionPointIdentifier];
        v10 = [v8 _extensionBundle];
        NSLog(&cfstr_Nsextensionpoi.isa, v9, v10);

        if (*(a1 + 32))
        {
          v11 = [v8 identifier];
          v12 = [v11 hasPrefix:*(a1 + 32)];

          if (!v12)
          {
            continue;
          }
        }

        v13 = [v8 attributes];
        v14 = [v13 objectForKeyedSubscript:@"NSExtensionActivationRule"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v6;
          v16 = v14;
          v17 = v16;
          if (*(a1 + 40) && (([v16 objectForKeyedSubscript:?], (v18 = objc_claimAutoreleasedReturnValue()) == 0) || (v19 = v18, objc_msgSend(v17, "objectForKeyedSubscript:", *(a1 + 40)), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "BOOLValue"), v20, v19, !v21)) || *(a1 + 48) && (objc_msgSend(v17, "objectForKeyedSubscript:"), (v22 = objc_claimAutoreleasedReturnValue()) != 0) && (v23 = v22, objc_msgSend(v17, "objectForKeyedSubscript:", *(a1 + 48)), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "BOOLValue"), v24, v23, (v25 & 1) != 0))
          {

            v6 = v15;
LABEL_20:

            continue;
          }

          v6 = v15;
        }

        else if (*(a1 + 40))
        {
          goto LABEL_20;
        }

        [*(a1 + 56) addObject:v8];
        goto LABEL_20;
      }

      v29 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v29);
  }

  v26 = *(a1 + 64);
  if (v26)
  {
    (*(v26 + 16))(v26, *(a1 + 56), v27);
  }
}

@end