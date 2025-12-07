@interface OBPrivacyFlowGroup
+ (id)groupFlowsByCombinedHeader:(id)header language:(id)language preferredDeviceType:(unint64_t)type;
- (OBPrivacyFlowGroup)initWithIdentifier:(id)identifier privacyFlows:(id)flows;
@end

@implementation OBPrivacyFlowGroup

- (OBPrivacyFlowGroup)initWithIdentifier:(id)identifier privacyFlows:(id)flows
{
  identifierCopy = identifier;
  flowsCopy = flows;
  v12.receiver = self;
  v12.super_class = OBPrivacyFlowGroup;
  v9 = [(OBPrivacyFlowGroup *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_privacyFlows, flows);
  }

  return v10;
}

+ (id)groupFlowsByCombinedHeader:(id)header language:(id)language preferredDeviceType:(unint64_t)type
{
  v46 = *MEMORY[0x1E69E9840];
  headerCopy = header;
  languageCopy = language;
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = headerCopy;
  v33 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (!v33)
  {

LABEL_25:
    [v32 removeAllObjects];
    firstObject = [[OBPrivacyFlowGroup alloc] initWithIdentifier:0 privacyFlows:v7];
    [v32 addObject:firstObject];
    goto LABEL_26;
  }

  v8 = 0;
  obj = v7;
  v29 = *v41;
  do
  {
    for (i = 0; i != v33; ++i)
    {
      if (*v41 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v40 + 1) + 8 * i);
      enablesGroupingInCombinedList = [v10 enablesGroupingInCombinedList];
      v12 = [v10 localizedCombinedHeaderForLanguage:languageCopy preferredDeviceType:type];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v13 = v32;
      v14 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v37;
        v35 = v10;
        v34 = enablesGroupingInCombinedList;
LABEL_8:
        v17 = 0;
        while (1)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v36 + 1) + 8 * v17);
          identifier = [v18 identifier];
          if ([identifier isEqualToString:v12])
          {
            break;
          }

          identifier2 = [v18 identifier];
          v21 = identifier2 | v12;

          if (!v21)
          {
            goto LABEL_17;
          }

          if (v15 == ++v17)
          {
            v15 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
            v10 = v35;
            enablesGroupingInCombinedList = v34;
            if (v15)
            {
              goto LABEL_8;
            }

            goto LABEL_15;
          }
        }

LABEL_17:
        v22 = v18;

        v10 = v35;
        enablesGroupingInCombinedList = v34;
        if (v22)
        {
          goto LABEL_19;
        }
      }

      else
      {
LABEL_15:
      }

      v22 = objc_alloc_init(OBPrivacyFlowGroup);
      [(OBPrivacyFlowGroup *)v22 setIdentifier:v12];
      [v13 addObject:v22];
LABEL_19:
      v8 |= enablesGroupingInCombinedList;
      privacyFlows = [(OBPrivacyFlowGroup *)v22 privacyFlows];
      v24 = [privacyFlows arrayByAddingObject:v10];
      [(OBPrivacyFlowGroup *)v22 setPrivacyFlows:v24];
    }

    v7 = obj;
    v33 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  }

  while (v33);

  if ((v8 & 1) == 0)
  {
    goto LABEL_25;
  }

  if ([v13 count] != 1)
  {
    goto LABEL_27;
  }

  firstObject = [v13 firstObject];
  [(OBPrivacyFlowGroup *)firstObject setIdentifier:0];
LABEL_26:

LABEL_27:
  v26 = [v32 copy];

  return v26;
}

@end