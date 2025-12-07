@interface DDUPIAction
+ (BOOL)actionAvailableForResult:(__DDResult *)result url:(id)url context:(id)context;
+ (id)actionsWithURL:(id)l result:(__DDResult *)result context:(id)context;
- (DDUPIAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context appRecord:(id)record upiIdentifier:(id)identifier;
- (id)localizedName;
- (void)performFromView:(id)view;
@end

@implementation DDUPIAction

+ (BOOL)actionAvailableForResult:(__DDResult *)result url:(id)url context:(id)context
{
  v5 = [DDUPIAction actionsWithURL:url result:result context:context];
  v6 = [v5 count] != 0;

  return v6;
}

+ (id)actionsWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  v64[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  contextCopy = context;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v11 = [bundleIdentifier isEqualToString:@"com.apple.MobileSMS"];

  if (v11)
  {
    v14 = [DDCopyAction actionWithURL:lCopy result:result context:contextCopy];
    v64[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:1];

    if ((dd_isLSTrusted(v16, v17) & 1) == 0)
    {
LABEL_3:
      v18 = v15;
      goto LABEL_47;
    }
  }

  else
  {
    v15 = 0;
    if ((dd_isLSTrusted(v12, v13) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
  if (!lCopy && result)
  {
    if (DDResultHasType())
    {
      v19 = DDResultCopyUPIIdentifierValue();
      if (v19)
      {
        v20 = MEMORY[0x277CBEBC0];
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"upi://pay?pa=%@", v19];
        lCopy = [v20 URLWithString:v21];

        goto LABEL_12;
      }
    }

    else
    {
      v19 = 0;
    }

    lCopy = 0;
  }

LABEL_12:
  scheme = [lCopy scheme];
  lowercaseString = [scheme lowercaseString];
  v24 = [lowercaseString isEqualToString:@"upi"];

  if (v24)
  {
    if (qword_280B12338 == -1)
    {
      if (_MergedGlobals_13)
      {
LABEL_15:
        v52 = v19;
        v25 = contextCopy;
        defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
        v27 = lCopy;
        v28 = [defaultWorkspace applicationsAvailableForOpeningURL:lCopy];

        v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
        standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v49 = [standardUserDefaults stringForKey:@"DDUIUPILastUsed"];

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        obj = v28;
        v30 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v59;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v59 != v32)
              {
                objc_enumerationMutation(obj);
              }

              bundleIdentifier2 = [*(*(&v58 + 1) + 8 * i) bundleIdentifier];
              v35 = objc_alloc(MEMORY[0x277CC1E70]);
              v57 = 0;
              v36 = [v35 initWithBundleIdentifier:bundleIdentifier2 allowPlaceholder:1 error:&v57];
              v37 = v36;
              if (!v57 && v36 && bundleIdentifier2 != 0)
              {
                if ([v49 isEqualToString:bundleIdentifier2])
                {
                  [v50 insertObject:v37 atIndex:0];
                }

                else
                {
                  [v50 addObject:v37];
                }
              }
            }

            v31 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
          }

          while (v31);
        }

        v39 = v50;
        if ([v50 count])
        {
          v48 = v15;
          v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v50, "count")}];
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v40 = v50;
          v41 = [v40 countByEnumeratingWithState:&v53 objects:v62 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v54;
            do
            {
              for (j = 0; j != v42; ++j)
              {
                if (*v54 != v43)
                {
                  objc_enumerationMutation(v40);
                }

                v45 = [[DDUPIAction alloc] initWithURL:v27 result:result context:v25 appRecord:*(*(&v53 + 1) + 8 * j) upiIdentifier:v52];
                [v18 addObject:v45];
              }

              v42 = [v40 countByEnumeratingWithState:&v53 objects:v62 count:16];
            }

            while (v42);
          }

          lCopy = v27;
          contextCopy = v25;
          v46 = [DDCopyAction actionWithURL:v27 result:result context:v25];
          if (v46)
          {
            [v18 addObject:v46];
          }

          v15 = v48;
          v19 = v52;
          v39 = v50;
        }

        else
        {
          v18 = v15;
          contextCopy = v25;
          v19 = v52;
        }

        goto LABEL_46;
      }
    }

    else
    {
      +[DDUPIAction actionsWithURL:result:context:];
      if (_MergedGlobals_13)
      {
        goto LABEL_15;
      }
    }

    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

LABEL_46:

LABEL_47:

  return v18;
}

uint64_t __45__DDUPIAction_actionsWithURL_result_context___block_invoke()
{
  result = _os_feature_enabled_impl();
  _MergedGlobals_13 = result;
  return result;
}

- (DDUPIAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context appRecord:(id)record upiIdentifier:(id)identifier
{
  recordCopy = record;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = DDUPIAction;
  v15 = [(DDAction *)&v20 initWithURL:l result:result context:context];
  v16 = v15;
  if (recordCopy && v15)
  {
    objc_storeStrong(&v15->_appRecord, record);
    localizedName = [recordCopy localizedName];
    appName = v16->_appName;
    v16->_appName = localizedName;

    objc_storeStrong(&v16->_upiIdentifier, identifier);
  }

  return v16;
}

- (id)localizedName
{
  if (self->_appName)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = DDLocalizedString(@"Pay with %@");
    v5 = [v3 localizedStringWithFormat:v4, self->_appName];

    v6 = v5;
  }

  else
  {
    v6 = DDLocalizedString(@"Pay");
  }

  return v6;
}

- (void)performFromView:(id)view
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  url = self->super._url;
  bundleIdentifier = [(LSApplicationRecord *)self->_appRecord bundleIdentifier];
  v9 = [defaultWorkspace operationToOpenResource:url usingApplication:bundleIdentifier uniqueDocumentIdentifier:0 isContentManaged:0 sourceAuditToken:0 userInfo:0 options:0 delegate:0];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  bundleIdentifier2 = [(LSApplicationRecord *)self->_appRecord bundleIdentifier];
  [standardUserDefaults setObject:bundleIdentifier2 forKey:@"DDUIUPILastUsed"];

  [v9 start];
}

@end