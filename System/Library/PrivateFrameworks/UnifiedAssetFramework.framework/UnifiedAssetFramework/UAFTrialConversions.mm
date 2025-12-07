@interface UAFTrialConversions
+ (id)entitledTrialNamespaceNames;
+ (id)generateEntitledTrialNamespaces;
@end

@implementation UAFTrialConversions

+ (id)generateEntitledTrialNamespaces
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = 0x1E7FFC000uLL;
  if (!+[UAFCommonUtilities isTrialAvailable])
  {
    v20 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v34 = "+[UAFTrialConversions generateEntitledTrialNamespaces]";
      _os_log_error_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_ERROR, "%s This system doesn't support Trial. Returning nil.", buf, 0xCu);
    }

    goto LABEL_31;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = [&unk_1F3B73248 countByEnumeratingWithState:&v29 objects:v40 count:16];
  if (!v24)
  {
LABEL_31:
    v4 = 0;
    goto LABEL_32;
  }

  v4 = 0;
  v5 = *v30;
  *&v3 = 136315650;
  v22 = v3;
  v23 = *v30;
  do
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v30 != v5)
      {
        objc_enumerationMutation(&unk_1F3B73248);
      }

      v7 = *(*(&v29 + 1) + 8 * i);
      v8 = [*(v2 + 2584) valueForEntitlement:{v7, v22}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!v4)
        {
          v4 = objc_opt_new();
        }

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v25 objects:v39 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = v2;
          v13 = *v26;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v26 != v13)
              {
                objc_enumerationMutation(v9);
              }

              v15 = *(*(&v25 + 1) + 8 * j);
              intValue = [v15 intValue];
              if (intValue)
              {
                v17 = [MEMORY[0x1E69DB550] namespaceNameFromId:intValue];
                [v4 addObject:v17];
              }

              else
              {
                [v4 addObject:v15];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v25 objects:v39 count:16];
          }

          while (v11);
          v2 = v12;
          v5 = v23;
        }
      }

      else
      {
        if (!v8)
        {
          goto LABEL_25;
        }

        v9 = UAFGetLogCategory(&UAFLogContextClient);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v18 = objc_opt_class();
          *buf = v22;
          v34 = "+[UAFTrialConversions generateEntitledTrialNamespaces]";
          v35 = 2114;
          v36 = v7;
          v37 = 2112;
          v38 = v18;
          v19 = v18;
          _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s %{public}@ is unexpected type: %@", buf, 0x20u);
        }
      }

LABEL_25:
    }

    v24 = [&unk_1F3B73248 countByEnumeratingWithState:&v29 objects:v40 count:16];
  }

  while (v24);
LABEL_32:

  return v4;
}

void __50__UAFTrialConversions_entitledTrialNamespaceNames__block_invoke()
{
  v0 = +[UAFTrialConversions generateEntitledTrialNamespaces];
  v1 = _MergedGlobals_3;
  _MergedGlobals_3 = v0;
}

+ (id)entitledTrialNamespaceNames
{
  if (qword_1ED7D10B0 != -1)
  {
    dispatch_once(&qword_1ED7D10B0, &__block_literal_global_4);
  }

  v3 = _MergedGlobals_3;

  return v3;
}

@end