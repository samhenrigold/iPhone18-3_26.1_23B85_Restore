@interface IAPNavigationAccessory
- (BOOL)isEqual:(id)equal;
- (BOOL)requestedSourceNameForAnyComponent;
- (BOOL)requestedSourceSupportsRouteGuidanceForAnyComponent;
- (IAPNavigationAccessory)initWithDict:(id)dict;
@end

@implementation IAPNavigationAccessory

- (IAPNavigationAccessory)initWithDict:(id)dict
{
  v27 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v25.receiver = self;
  v25.super_class = IAPNavigationAccessory;
  v5 = [(IAPNavigationAccessory *)&v25 init];
  v6 = v5;
  if (v5)
  {
    v5->__wasFoundInLastUpdate = 0;
    v7 = [MEMORY[0x277CBEB58] set];
    components = v6->_components;
    v6->_components = v7;

    v9 = [dictCopy objectForKey:@"identifier"];
    unsignedIntegerValue = [v9 unsignedIntegerValue];

    if (unsignedIntegerValue)
    {
      v6->_identifier = unsignedIntegerValue;
    }

    v11 = [dictCopy objectForKey:@"components"];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v22;
          do
          {
            v16 = 0;
            do
            {
              if (*v22 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v21 + 1) + 8 * v16);
              v18 = [IAPNavigationAccessoryComponent alloc];
              v19 = [(IAPNavigationAccessoryComponent *)v18 initWithDict:v17, v21];
              if (v19)
              {
                [(NSSet *)v6->_components addObject:v19];
              }

              ++v16;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
          }

          while (v14);
        }
      }
    }
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    v6 = identifier == [equalCopy identifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)requestedSourceNameForAnyComponent
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_components;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) requestSourceName])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)requestedSourceSupportsRouteGuidanceForAnyComponent
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_components;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) requestSourceSupportsRouteGuidance])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

@end