@interface AXAuditObjectTransportManager
+ (id)sharedManager;
- (AXAuditObjectTransportManager)init;
- (BOOL)validateSupportedConnectionSecureTransport:(id)transport;
- (id)_transportInfoEncodeOnlyForObject:(id)object;
- (id)_transportInfoForObject:(id)object;
- (id)arrayForTransportArray:(id)array expectedClass:(Class)class;
- (id)objectForTransportDictionary:(id)dictionary expectedClass:(Class)class;
- (id)transportArrayForArray:(id)array;
- (id)transportDictionaryForObject:(id)object;
- (void)_registerKnownClasses;
- (void)_validateTransportObjectIfNeeded:(id)needed;
- (void)registerTransportInfoMasquerade:(id)masquerade encodeOnly:(BOOL)only;
- (void)registerTransportInfoPropertyBased:(id)based;
@end

@implementation AXAuditObjectTransportManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__AXAuditObjectTransportManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken_0 != -1)
  {
    dispatch_once(&sharedManager_onceToken_0, block);
  }

  v2 = sharedManager_instance_0;

  return v2;
}

uint64_t __46__AXAuditObjectTransportManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_instance_0 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (AXAuditObjectTransportManager)init
{
  v8.receiver = self;
  v8.super_class = AXAuditObjectTransportManager;
  v2 = [(AXAuditObjectTransportManager *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    keyToTransportInfo = v2->__keyToTransportInfo;
    v2->__keyToTransportInfo = v3;

    v5 = objc_opt_new();
    transportInfoEncodeOnly = v2->__transportInfoEncodeOnly;
    v2->__transportInfoEncodeOnly = v5;

    [(AXAuditObjectTransportManager *)v2 _registerKnownClasses];
  }

  return v2;
}

- (void)_registerKnownClasses
{
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  v3 = objc_opt_class();

  [(AXAuditObjectTransportManager *)self registerTransportableClass:v3];
}

- (id)transportDictionaryForObject:(id)object
{
  v53 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    v5 = objc_opt_new();
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v5 setObject:AuditTransportObjectTypePassthrough forKeyedSubscript:AuditTransportObjectTypeKey];
      [v5 setObject:objectCopy forKeyedSubscript:AuditTransportValueKey];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = MEMORY[0x277CCAB48];
        v8 = objectCopy;
        v9 = [v7 alloc];
        string = [v8 string];
        v11 = [v9 initWithString:string];

        string2 = [v8 string];
        v13 = [string2 length];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __62__AXAuditObjectTransportManager_transportDictionaryForObject___block_invoke;
        v49[3] = &unk_278BE27E0;
        v49[4] = self;
        v50 = v11;
        v14 = v11;
        [v8 enumerateAttributesInRange:0 options:v13 usingBlock:{2, v49}];

        [v5 setObject:AuditTransportObjectTypePassthrough forKeyedSubscript:AuditTransportObjectTypeKey];
        v15 = [v14 copy];
        [v5 setObject:v15 forKeyedSubscript:AuditTransportValueKey];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = objc_opt_new();
          v17 = objectCopy;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v18 = [v17 countByEnumeratingWithState:&v45 objects:v52 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v46;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v46 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = [(AXAuditObjectTransportManager *)self transportDictionaryForObject:*(*(&v45 + 1) + 8 * i)];
                if (v22)
                {
                  [v16 addObject:v22];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v45 objects:v52 count:16];
            }

            while (v19);
          }

          [v5 setObject:AuditTransportObjectTypePassthrough forKeyedSubscript:AuditTransportObjectTypeKey];
          [v5 setObject:v16 forKeyedSubscript:AuditTransportValueKey];
        }

        else
        {
          v23 = CFGetTypeID(objectCopy);
          if (v23 == CGColorGetTypeID())
          {
            [v5 setObject:AuditTransportObjectTypePassthrough forKeyedSubscript:AuditTransportObjectTypeKey];
            v16 = [MEMORY[0x277D75348] colorWithCGColor:objectCopy];
            [v5 setObject:v16 forKeyedSubscript:AuditTransportValueKey];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = objc_opt_new();
              v24 = objectCopy;
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              v44 = 0u;
              v25 = [v24 countByEnumeratingWithState:&v41 objects:v51 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v42;
                do
                {
                  v28 = 0;
                  v40 = v26;
                  do
                  {
                    if (*v42 != v27)
                    {
                      objc_enumerationMutation(v24);
                    }

                    v29 = *(*(&v41 + 1) + 8 * v28);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v30 = v27;
                      v31 = v24;
                      v32 = [v24 objectForKey:v29];
                      v33 = [(AXAuditObjectTransportManager *)self transportDictionaryForObject:v32];
                      if (v33)
                      {
                        [v38 setObject:v33 forKey:v29];
                      }

                      v24 = v31;
                      v27 = v30;
                      v26 = v40;
                    }

                    ++v28;
                  }

                  while (v26 != v28);
                  v26 = [v24 countByEnumeratingWithState:&v41 objects:v51 count:16];
                }

                while (v26);
              }

              [v5 setObject:AuditTransportObjectTypePassthrough forKeyedSubscript:{AuditTransportObjectTypeKey, v38}];
              v16 = v39;
              [v5 setObject:v39 forKeyedSubscript:AuditTransportValueKey];
            }

            else
            {
              v16 = [(AXAuditObjectTransportManager *)self _transportInfoForObject:objectCopy];
              if (!v16)
              {
                v16 = [(AXAuditObjectTransportManager *)self _transportInfoEncodeOnlyForObject:objectCopy];
              }

              transportKey = [v16 transportKey];
              [v5 setObject:transportKey forKeyedSubscript:AuditTransportObjectTypeKey];

              if (v16)
              {
                createTransportObjectBlock = [v16 createTransportObjectBlock];
                v36 = (createTransportObjectBlock)[2](createTransportObjectBlock, objectCopy);

                v37 = [(AXAuditObjectTransportManager *)self transportDictionaryForObject:v36];
                [v5 setObject:v37 forKeyedSubscript:AuditTransportValueKey];
              }
            }
          }
        }
      }
    }

    [(AXAuditObjectTransportManager *)self _validateTransportObjectIfNeeded:v5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __62__AXAuditObjectTransportManager_transportDictionaryForObject___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) transportDictionaryForObject:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 40) setAttributes:v7 range:{a3, a4}];
  }
}

- (id)objectForTransportDictionary:(id)dictionary expectedClass:(Class)class
{
  v56 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  [(AXAuditObjectTransportManager *)self _validateTransportObjectIfNeeded:dictionaryCopy];
  if (!dictionaryCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_48;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:AuditTransportObjectTypeKey];
  if ([v8 isEqualToString:AuditTransportObjectTypePassthrough])
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:AuditTransportValueKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v8;
      classCopy2 = class;
      v40 = dictionaryCopy;
      v43 = v9;
      v10 = v9;
      v11 = objc_opt_new();
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v51;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v51 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v50 + 1) + 8 * i);
            v18 = [v12 objectForKey:{v17, v40}];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [(AXAuditObjectTransportManager *)self objectForTransportDictionary:v18 expectedClass:0];

              v18 = v19;
            }

            if (v18)
            {
              [v11 setObject:v18 forKey:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v14);
      }

      dictionaryCopy = v40;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = MEMORY[0x277CCAB48];
        v43 = v9;
        v26 = v9;
        v27 = [v25 alloc];
        string = [v26 string];
        v29 = [v27 initWithString:string];

        string2 = [v26 string];
        v31 = [string2 length];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __76__AXAuditObjectTransportManager_objectForTransportDictionary_expectedClass___block_invoke;
        v48[3] = &unk_278BE27E0;
        v48[4] = self;
        v49 = v29;
        v12 = v29;
        [v26 enumerateAttributesInRange:0 options:v31 usingBlock:{2, v48}];

        v11 = [v12 copy];
        goto LABEL_25;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v7 = v9;
      if ((isKindOfClass & 1) == 0)
      {
LABEL_26:

        if (!class)
        {
          goto LABEL_47;
        }

        goto LABEL_43;
      }

      classCopy2 = class;
      v43 = v9;
      v41 = v8;
      v11 = objc_opt_new();
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v12 = v7;
      v33 = [v12 countByEnumeratingWithState:&v44 objects:v54 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v45;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v45 != v35)
            {
              objc_enumerationMutation(v12);
            }

            v37 = *(*(&v44 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = [(AXAuditObjectTransportManager *)self objectForTransportDictionary:v37 expectedClass:0];

              v37 = v38;
            }

            if (v37)
            {
              [v11 addObject:v37];
            }
          }

          v34 = [v12 countByEnumeratingWithState:&v44 objects:v54 count:16];
        }

        while (v34);
      }
    }

    v8 = v41;
    class = classCopy2;
LABEL_25:

    v7 = v11;
    v9 = v43;
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 length])
  {
    _keyToTransportInfo = [(AXAuditObjectTransportManager *)self _keyToTransportInfo];
    v21 = [_keyToTransportInfo objectForKeyedSubscript:v8];

    if (v21)
    {
      v22 = [dictionaryCopy objectForKeyedSubscript:AuditTransportValueKey];
      v23 = [(AXAuditObjectTransportManager *)self objectForTransportDictionary:v22 expectedClass:0];

      createLocalObjectBlock = [v21 createLocalObjectBlock];
      v7 = (createLocalObjectBlock)[2](createLocalObjectBlock, v23);
    }

    else
    {
      v7 = 0;
    }

    if (!class)
    {
      goto LABEL_47;
    }

LABEL_43:
    if (!v7 || (objc_opt_isKindOfClass() & 1) != 0)
    {
      goto LABEL_47;
    }
  }

  v7 = 0;
LABEL_47:

LABEL_48:

  return v7;
}

void __76__AXAuditObjectTransportManager_objectForTransportDictionary_expectedClass___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 objectForTransportDictionary:v8 expectedClass:objc_opt_class()];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 40) setAttributes:v9 range:{a3, a4}];
  }
}

- (id)transportArrayForArray:(id)array
{
  v18 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_new();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = arrayCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(AXAuditObjectTransportManager *)self transportDictionaryForObject:*(*(&v13 + 1) + 8 * i), v13];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(AXAuditObjectTransportManager *)self _validateTransportObjectIfNeeded:v5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)arrayForTransportArray:(id)array expectedClass:(Class)class
{
  v21 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  [(AXAuditObjectTransportManager *)self _validateTransportObjectIfNeeded:arrayCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = arrayCopy;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [(AXAuditObjectTransportManager *)self objectForTransportDictionary:v13 expectedClass:class, v16];
            if (v14)
            {
              [v7 addObject:v14];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_transportInfoEncodeOnlyForObject:(id)object
{
  v18 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _transportInfoEncodeOnly = [(AXAuditObjectTransportManager *)self _transportInfoEncodeOnly];
  v6 = [_transportInfoEncodeOnly countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(_transportInfoEncodeOnly);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        canEncodeObjectBlock = [v9 canEncodeObjectBlock];
        v11 = (canEncodeObjectBlock)[2](canEncodeObjectBlock, objectCopy);

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [_transportInfoEncodeOnly countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_transportInfoForObject:(id)object
{
  v19 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  [(AXAuditObjectTransportManager *)self _keyToTransportInfo];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [v5 objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * v9), v14}];
      canEncodeObjectBlock = [v10 canEncodeObjectBlock];
      v12 = (canEncodeObjectBlock)[2](canEncodeObjectBlock, objectCopy);

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  return v10;
}

- (void)registerTransportInfoMasquerade:(id)masquerade encodeOnly:(BOOL)only
{
  onlyCopy = only;
  v23 = *MEMORY[0x277D85DE8];
  masqueradeCopy = masquerade;
  masqueradeAsClass = [masqueradeCopy masqueradeAsClass];
  if (!masqueradeAsClass)
  {
    goto LABEL_24;
  }

  v8 = masqueradeAsClass;
  [(AXAuditObjectTransportManager *)self _keyToTransportInfo];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v21 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  v11 = v9;
  if (!v10)
  {
LABEL_22:

    goto LABEL_23;
  }

  v12 = v10;
  selfCopy = self;
  v13 = *v19;
LABEL_4:
  v14 = 0;
  while (1)
  {
    if (*v19 != v13)
    {
      objc_enumerationMutation(v9);
    }

    v11 = [v9 objectForKeyedSubscript:*(*(&v18 + 1) + 8 * v14)];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (onlyCopy)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(v11 "masqueradeAsClass")])
        {

          if (!v11)
          {
            goto LABEL_23;
          }

LABEL_20:
          transportKey = [v11 transportKey];
          [masqueradeCopy setTransportKey:transportKey];
          [masqueradeCopy setMasqueradeTransportInfo:v11];
          _transportInfoEncodeOnly = [(AXAuditObjectTransportManager *)selfCopy _transportInfoEncodeOnly];
          [_transportInfoEncodeOnly addObject:masqueradeCopy];

LABEL_21:
          goto LABEL_22;
        }
      }

      goto LABEL_13;
    }

    if ([objc_msgSend(v11 "entryClass")])
    {
      break;
    }

LABEL_13:

    if (v12 == ++v14)
    {
      v12 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        goto LABEL_4;
      }

      v11 = v9;
      goto LABEL_22;
    }
  }

  if (v11)
  {
    if (onlyCopy)
    {
      goto LABEL_20;
    }

    transportKey = [v11 transportKey];
    [masqueradeCopy setTransportKey:transportKey];
    [masqueradeCopy setMasqueradeTransportInfo:v11];
    [v9 setObject:masqueradeCopy forKey:transportKey];
    goto LABEL_21;
  }

LABEL_23:

LABEL_24:
}

- (void)registerTransportInfoPropertyBased:(id)based
{
  basedCopy = based;
  transportKey = [basedCopy transportKey];
  _keyToTransportInfo = [(AXAuditObjectTransportManager *)self _keyToTransportInfo];
  [_keyToTransportInfo setObject:basedCopy forKey:transportKey];
}

- (void)_validateTransportObjectIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(AXAuditObjectTransportManager *)self enforceSecureTransport])
  {
    [(AXAuditObjectTransportManager *)self validateSupportedConnectionSecureTransport:neededCopy];
  }
}

- (BOOL)validateSupportedConnectionSecureTransport:(id)transport
{
  v43[8] = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  if (transportCopy)
  {
    v43[0] = objc_opt_class();
    v43[1] = objc_opt_class();
    v43[2] = objc_opt_class();
    v43[3] = objc_opt_class();
    v43[4] = objc_opt_class();
    v43[5] = objc_opt_class();
    v43[6] = objc_opt_class();
    v43[7] = objc_opt_class();
    [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:8];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v5 = v37 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v6)
    {
      v7 = *v37;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v37 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if (objc_opt_isKindOfClass())
          {

            v13 = 1;
            goto LABEL_41;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v9 = transportCopy;
      v10 = [v9 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v10)
      {
        v11 = *v33;
        while (2)
        {
          for (j = 0; j != v10; ++j)
          {
            if (*v33 != v11)
            {
              objc_enumerationMutation(v9);
            }

            if (![(AXAuditObjectTransportManager *)self validateSupportedConnectionSecureTransport:*(*(&v32 + 1) + 8 * j)])
            {
              v13 = 0;
              goto LABEL_34;
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v32 objects:v41 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v13 = 1;
LABEL_34:
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v14 = transportCopy;
        v15 = [v14 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v15)
        {
          v16 = *v29;
          while (2)
          {
            for (k = 0; k != v15; ++k)
            {
              if (*v29 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v28 + 1) + 8 * k);
              if ([(AXAuditObjectTransportManager *)self validateSupportedConnectionSecureTransport:v18])
              {
                v19 = [v14 objectForKey:v18];
                v20 = [(AXAuditObjectTransportManager *)self validateSupportedConnectionSecureTransport:v19];

                if (v20)
                {
                  continue;
                }
              }

              v13 = 0;
              goto LABEL_40;
            }

            v15 = [v14 countByEnumeratingWithState:&v28 objects:v40 count:16];
            v13 = 1;
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v13 = 1;
        }

LABEL_40:
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = 0;
          v25 = &v24;
          v26 = 0x2020000000;
          v27 = 0;
          v21 = [transportCopy length];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __76__AXAuditObjectTransportManager_validateSupportedConnectionSecureTransport___block_invoke;
          v23[3] = &unk_278BE2808;
          v23[4] = self;
          v23[5] = &v24;
          [transportCopy enumerateAttributesInRange:0 options:v21 usingBlock:{0, v23}];
          v13 = *(v25 + 24) ^ 1;
          _Block_object_dispose(&v24, 8);
        }

        else
        {
          v13 = 0;
        }
      }
    }

LABEL_41:
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

void *__76__AXAuditObjectTransportManager_validateSupportedConnectionSecureTransport___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) validateSupportedConnectionSecureTransport:{a2, a4}];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

@end