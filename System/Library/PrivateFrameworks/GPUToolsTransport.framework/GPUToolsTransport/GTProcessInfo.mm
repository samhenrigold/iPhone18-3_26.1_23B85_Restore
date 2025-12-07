@interface GTProcessInfo
- (GTProcessInfo)init;
- (GTProcessInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTProcessInfo

- (GTProcessInfo)init
{
  v14.receiver = self;
  v14.super_class = GTProcessInfo;
  v2 = [(GTProcessInfo *)&v14 init];
  if (v2)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    processName = v2->_processName;
    v2->_processName = processName;

    environment = [processInfo environment];
    environment = v2->_environment;
    v2->_environment = environment;

    arguments = [processInfo arguments];
    arguments = v2->_arguments;
    v2->_arguments = arguments;

    v2->_processIdentifier = [processInfo processIdentifier];
    v2->_ppid = getppid();
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    bundleIdentifier = v2->_bundleIdentifier;
    v2->_bundleIdentifier = bundleIdentifier;
  }

  return v2;
}

- (GTProcessInfo)initWithCoder:(id)coder
{
  v45 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = GTProcessInfo;
  v5 = [(GTProcessInfo *)&v42 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processName"];
    processName = v5->_processName;
    v5->_processName = v6;

    if (v5->_processName)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = v5->_processName;
        v5->_processName = 0;
      }
    }

    v9 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"arguments"];
    arguments = v5->_arguments;
    v5->_arguments = v9;

    if (v5->_arguments)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v11 = v5->_arguments;
        v12 = [(NSArray *)v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v39;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v39 != v14)
              {
                objc_enumerationMutation(v11);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v16 = v5->_arguments;
                v5->_arguments = 0;

                goto LABEL_18;
              }
            }

            v13 = [(NSArray *)v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        v11 = v5->_arguments;
        v5->_arguments = 0;
      }

LABEL_18:
    }

    v17 = objc_opt_class();
    v18 = [coderCopy decodeDictionaryWithKeysOfClass:v17 objectsOfClass:objc_opt_class() forKey:@"environment"];
    environment = v5->_environment;
    v5->_environment = v18;

    if (v5->_environment)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v20 = v5->_environment;
        v21 = [(NSDictionary *)v20 countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v35;
          while (2)
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v35 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v34 + 1) + 8 * j);
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              v27 = v5->_environment;
              if ((isKindOfClass & 1) == 0)
              {
                goto LABEL_33;
              }

              v28 = [(NSDictionary *)v27 objectForKeyedSubscript:v25, v34];
              objc_opt_class();
              v29 = objc_opt_isKindOfClass();

              if ((v29 & 1) == 0)
              {
                v27 = v5->_environment;
LABEL_33:
                v5->_environment = 0;

                goto LABEL_34;
              }
            }

            v22 = [(NSDictionary *)v20 countByEnumeratingWithState:&v34 objects:v43 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        v20 = v5->_environment;
        v5->_environment = 0;
      }

LABEL_34:
    }

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v30;

    if (v5->_bundleIdentifier)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v32 = v5->_bundleIdentifier;
        v5->_bundleIdentifier = 0;
      }
    }

    v5->_processIdentifier = [coderCopy decodeInt32ForKey:{@"processIdentifier", v34}];
    v5->_ppid = [coderCopy decodeInt32ForKey:@"ppid"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  processName = self->_processName;
  coderCopy = coder;
  [coderCopy encodeObject:processName forKey:@"processName"];
  [coderCopy encodeObject:self->_arguments forKey:@"arguments"];
  [coderCopy encodeObject:self->_environment forKey:@"environment"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeInt32:self->_processIdentifier forKey:@"processIdentifier"];
  [coderCopy encodeInt32:self->_ppid forKey:@"ppid"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(GTProcessInfo);
  [(GTProcessInfo *)v4 setProcessName:self->_processName];
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_arguments copyItems:1];
  [(GTProcessInfo *)v4 setArguments:v5];

  v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_environment copyItems:1];
  [(GTProcessInfo *)v4 setEnvironment:v6];

  [(GTProcessInfo *)v4 setBundleIdentifier:self->_bundleIdentifier];
  [(GTProcessInfo *)v4 setProcessIdentifier:self->_processIdentifier];
  [(GTProcessInfo *)v4 setProcessName:self->_processName];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: processName=%@ arguments=%@ environment=%@ bundleIdentifier=%@ processIdentifier=%d ppid=%d>", v5, self->_processName, self->_arguments, self->_environment, self->_bundleIdentifier, self->_processIdentifier, self->_ppid];

  return v6;
}

@end