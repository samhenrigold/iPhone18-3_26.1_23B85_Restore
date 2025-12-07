@interface DDMapAction
+ (BOOL)actionAvailableForContact:(id)contact;
+ (BOOL)handlesUrl:(id)url result:(__DDResult *)result;
- (DDMapAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context;
- (id)menuActionClasses;
- (id)previewActions;
@end

@implementation DDMapAction

+ (BOOL)handlesUrl:(id)url result:(__DDResult *)result
{
  v4 = DDMapsURLForUrlAndResult(url, result);
  v5 = v4 != 0;

  return v5;
}

- (DDMapAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  contextCopy = context;
  v9 = DDMapsURLForUrlAndResult(l, result);
  v18.receiver = self;
  v18.super_class = DDMapAction;
  v10 = [(DDAction *)&v18 initWithURL:v9 result:result context:contextCopy];

  if (v10)
  {
    contact = v10->super.super.super._contact;
    if (contact)
    {
      v12 = DDDefaultAddressForContact(contact);
      if (v12)
      {
        v13 = [MEMORY[0x277CBDB80] stringFromPostalAddress:v12 style:0];
        if ([v13 length])
        {
          v14 = DDMapURLForString(v13);
          url = v10->super.super.super._url;
          v10->super.super.super._url = v14;
        }
      }
    }

    v16 = v10;
  }

  return v10;
}

- (id)previewActions
{
  v14[5] = *MEMORY[0x277D85DE8];
  url = self->super.super.super._url;
  if (url)
  {
    v9 = 0;
    if ([(NSURL *)url dd_isMaps:&v9 isDirections:?])
    {
      if (self->super.super.super._contact || self->super.super.super._result && DDResultHasType())
      {
        v14[0] = objc_opt_class();
        v14[1] = objc_opt_class();
        v14[2] = objc_opt_class();
        v14[3] = objc_opt_class();
        v14[4] = objc_opt_class();
        v4 = MEMORY[0x277CBEA60];
        v5 = v14;
        v6 = 5;
      }

      else
      {
        v13[0] = objc_opt_class();
        v13[1] = objc_opt_class();
        v13[2] = objc_opt_class();
        v13[3] = objc_opt_class();
        v4 = MEMORY[0x277CBEA60];
        v5 = v13;
        v6 = 4;
      }

      goto LABEL_10;
    }

    if (v9 == 1)
    {
      v12[0] = objc_opt_class();
      v12[1] = objc_opt_class();
      v12[2] = objc_opt_class();
      v4 = MEMORY[0x277CBEA60];
      v5 = v12;
    }

    else
    {
      v11[0] = objc_opt_class();
      v11[1] = objc_opt_class();
      v11[2] = objc_opt_class();
      v4 = MEMORY[0x277CBEA60];
      v5 = v11;
    }
  }

  else
  {
    v10[0] = objc_opt_class();
    v10[1] = objc_opt_class();
    v10[2] = objc_opt_class();
    v4 = MEMORY[0x277CBEA60];
    v5 = v10;
  }

  v6 = 3;
LABEL_10:
  v7 = [v4 arrayWithObjects:v5 count:v6];

  return v7;
}

- (id)menuActionClasses
{
  v19 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  previewActions = [(DDMapAction *)self previewActions];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [previewActions countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(previewActions);
        }

        v17 = *(*(&v13 + 1) + 8 * v8);
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
        [array addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [previewActions countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  if ([array count])
  {
    v10 = array;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

+ (BOOL)actionAvailableForContact:(id)contact
{
  v3 = DDDefaultAddressForContact(contact);
  v4 = v3 != 0;

  return v4;
}

@end