@interface COCapabilityUpdateNotification
- (COCapabilityUpdateNotification)initWithCapabilities:(id)capabilities;
- (COCapabilityUpdateNotification)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COCapabilityUpdateNotification

- (COCapabilityUpdateNotification)initWithCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  v9.receiver = self;
  v9.super_class = COCapabilityUpdateNotification;
  v5 = [(COMeshCommand *)&v9 init];
  if (v5)
  {
    v6 = [capabilitiesCopy copy];
    capabilities = v5->_capabilities;
    v5->_capabilities = v6;
  }

  return v5;
}

- (COCapabilityUpdateNotification)initWithCoder:(id)coder
{
  v25 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = COCapabilityUpdateNotification;
  v5 = [(COMeshCommand *)&v23 initWithCoder:coderCopy];
  if (v5)
  {
    p_isa = &v5->super.super.super.isa;
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"capabilities"];
    v11 = p_isa[1];
    p_isa[1] = v10;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = p_isa[1];
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v20;
        while (2)
        {
          v16 = 0;
          do
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v12);
            }

            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v17 = 0;
              goto LABEL_15;
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v17 = p_isa;
    }

    else
    {
      v17 = 0;
      v12 = p_isa;
    }

LABEL_15:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = COCapabilityUpdateNotification;
  coderCopy = coder;
  [(COMeshCommand *)&v6 encodeWithCoder:coderCopy];
  v5 = [(COCapabilityUpdateNotification *)self capabilities:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"capabilities"];
}

@end