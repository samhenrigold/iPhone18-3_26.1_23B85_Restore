@interface SKUIGalleryPageComponent
- (SKUIGalleryPageComponent)initWithCustomPageContext:(id)context;
@end

@implementation SKUIGalleryPageComponent

- (SKUIGalleryPageComponent)initWithCustomPageContext:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGalleryPageComponent initWithCustomPageContext:];
  }

  v32.receiver = self;
  v32.super_class = SKUIGalleryPageComponent;
  v5 = [(SKUIPageComponent *)&v32 initWithCustomPageContext:contextCopy];
  if (v5)
  {
    componentDictionary = [contextCopy componentDictionary];
    v7 = [componentDictionary objectForKey:@"cycleInterval"];
    if (objc_opt_respondsToSelector())
    {
      [v7 floatValue];
      v5->_cycleInterval = v8;
    }

    v9 = [componentDictionary objectForKey:@"hidesPageIndicator"];

    if (objc_opt_respondsToSelector())
    {
      v5->_hidesPageIndicator = [v9 BOOLValue];
    }

    v10 = [componentDictionary objectForKey:@"children"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v9;
      v26 = componentDictionary;
      v11 = [contextCopy copy];
      v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v24 = v10;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v29;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v29 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v28 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [v17 objectForKey:@"type"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && SKUIPageComponentTypeForBlockType(v18) == 10)
              {
                [v11 setComponentDictionary:v17];
                v20 = [objc_alloc(SKUIPageComponentClassForComponentType(10 v19))];
                if (v20)
                {
                  [v27 addObject:v20];
                }
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v14);
      }

      v21 = [v27 copy];
      childComponents = v5->_childComponents;
      v5->_childComponents = v21;

      v9 = v25;
      componentDictionary = v26;
      v10 = v24;
    }
  }

  return v5;
}

- (void)initWithCustomPageContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGalleryPageComponent initWithCustomPageContext:]";
}

@end