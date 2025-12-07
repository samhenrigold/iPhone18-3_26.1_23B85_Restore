@interface SWInspection
- (SWInspection)initWithObject:(id)object;
@end

@implementation SWInspection

- (SWInspection)initWithObject:(id)object
{
  v40 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v37.receiver = self;
  v37.super_class = SWInspection;
  v5 = [(SWInspection *)&v37 init];
  v6 = v5;
  if (objectCopy)
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = objectCopy;
        v7 = [v28 objectForKey:@"accessibilityElements"];
        v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v9 = v7;
        v10 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v34;
          do
          {
            v13 = 0;
            do
            {
              if (*v34 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [[SWInspectionAccessibilityElement alloc] initWithObject:*(*(&v33 + 1) + 8 * v13)];
              if (v14)
              {
                [(NSArray *)v8 addObject:v14];
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
          }

          while (v11);
        }

        v27 = objectCopy;

        v15 = [v28 objectForKey:@"links"];
        v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v17 = v15;
        v18 = [v17 countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v30;
          do
          {
            v21 = 0;
            do
            {
              if (*v30 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = [[SWInspectionLink alloc] initWithObject:*(*(&v29 + 1) + 8 * v21)];
              if (v22)
              {
                [(NSArray *)v16 addObject:v22];
              }

              ++v21;
            }

            while (v19 != v21);
            v19 = [v17 countByEnumeratingWithState:&v29 objects:v38 count:16];
          }

          while (v19);
        }

        accessibilityElements = v6->_accessibilityElements;
        v6->_accessibilityElements = v8;
        v24 = v8;

        links = v6->_links;
        v6->_links = v16;

        objectCopy = v27;
      }
    }
  }

  return v6;
}

@end