@interface HKStateOfMind(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableStateOfMind)codableRepresentationForSync;
@end

@implementation HKStateOfMind(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    _init = [[self alloc] _init];
    if ([v5 applyToObject:_init])
    {
      v7 = HKObjectValidationConfigurationWithOptions();
      v9 = [_init _validateWithConfiguration:{v7, v8}];
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = _init;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HDCodableStateOfMind)codableRepresentationForSync
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(HDCodableStateOfMind);
  v25.receiver = self;
  v25.super_class = &off_283D44F30;
  v3 = objc_msgSendSuper2(&v25, sel_codableRepresentationForSync);
  [(HDCodableStateOfMind *)v2 setSample:v3];

  -[HDCodableStateOfMind setReflectiveInterval:](v2, "setReflectiveInterval:", [self reflectiveInterval]);
  [self valence];
  [(HDCodableStateOfMind *)v2 setValence:?];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  labels = [self labels];
  v5 = [labels countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(labels);
        }

        -[HDCodableStateOfMind addLabels:](v2, "addLabels:", [*(*(&v21 + 1) + 8 * i) longLongValue]);
      }

      v6 = [labels countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  domains = [self domains];
  v10 = [domains countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(domains);
        }

        -[HDCodableStateOfMind addDomains:](v2, "addDomains:", [*(*(&v17 + 1) + 8 * j) longLongValue]);
      }

      v11 = [domains countByEnumeratingWithState:&v17 objects:v26 count:16];
    }

    while (v11);
  }

  context = [self context];

  if (context)
  {
    context2 = [self context];
    [(HDCodableStateOfMind *)v2 setContext:context2];
  }

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  codableRepresentationForSync = [self codableRepresentationForSync];
  if (codableRepresentationForSync)
  {
    [v4 addStateOfMindLogs:codableRepresentationForSync];
  }

  return codableRepresentationForSync != 0;
}

@end