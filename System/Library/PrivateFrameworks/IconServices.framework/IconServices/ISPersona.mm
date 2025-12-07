@interface ISPersona
- (ISPersona)initWithRecord:(id)record;
- (id)resourceBadge;
@end

@implementation ISPersona

- (ISPersona)initWithRecord:(id)record
{
  v23 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v21.receiver = self;
  v21.super_class = ISPersona;
  v6 = [(ISPersona *)&v21 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_16;
  }

  objc_storeStrong(&v6->_record, record);
  v7->_personaType = 0;
  identities = +[ISDefaults sharedInstance];
  if ([identities enableInstanceIDBasedTwoAppModel])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_14;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    identities = [recordCopy identities];
    v10 = [identities countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(identities);
          }

          if ([*(*(&v17 + 1) + 8 * v13) personaType] == 2)
          {
            v7->_personaType = 1;
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [identities countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v11);
    }
  }

LABEL_14:
  v14 = +[ISDefaults sharedInstance];
  enableBadgeOverhang = [v14 enableBadgeOverhang];

  if (enableBadgeOverhang)
  {
    v7->_personaType = 1;
  }

LABEL_16:

  return v7;
}

- (id)resourceBadge
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(ISPersona *)self isEnterprisePersona])
  {
    v2 = objc_opt_new();
    v3 = [objc_alloc(MEMORY[0x1E69A8968]) initWithSystemColor:11];
    v10[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v2 setSymbolColors:v4];

    v5 = [objc_alloc(MEMORY[0x1E69A8968]) initWithSystemColor:4];
    v9 = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    [v2 setEnclosureColors:v6];

    [v2 setRenderingMode:2];
    v7 = [ISGraphicSymbolResource graphicSymbolResourceWithConfiguration:v2 symbolName:@"frying.pan.fill" url:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end