@interface SKUIExpandPageComponent
- (SKUIExpandPageComponent)initWithViewElement:(id)element;
@end

@implementation SKUIExpandPageComponent

- (SKUIExpandPageComponent)initWithViewElement:(id)element
{
  v26 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v24.receiver = self;
  v24.super_class = SKUIExpandPageComponent;
  v6 = [(SKUIPageComponent *)&v24 initWithViewElement:elementCopy];
  if (v6)
  {
    if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [SKUIExpandPageComponent initWithViewElement:];
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    childComponents = v6->_childComponents;
    v6->_childComponents = v7;

    objc_storeStrong(&v6->_viewElement, element);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    flattenedChildren = [elementCopy flattenedChildren];
    v10 = [flattenedChildren countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(flattenedChildren);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          pageComponentType = [v14 pageComponentType];
          v17 = SKUIPageComponentClassForComponentType(pageComponentType, v16);
          if (v17)
          {
            v18 = [[v17 alloc] initWithViewElement:v14];
            if (v18)
            {
              [(NSMutableArray *)v6->_childComponents addObject:v18];
            }
          }
        }

        v11 = [flattenedChildren countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v11);
    }
  }

  return v6;
}

- (void)initWithViewElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIExpandPageComponent initWithViewElement:]";
}

@end