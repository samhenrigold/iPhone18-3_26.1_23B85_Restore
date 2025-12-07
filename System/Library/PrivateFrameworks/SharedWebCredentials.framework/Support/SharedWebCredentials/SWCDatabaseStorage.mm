@interface SWCDatabaseStorage
- (SWCDatabaseStorage)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SWCDatabaseStorage

- (void)encodeWithCoder:(id)coder
{
  [SWCEntry canonicalizeEntries:self->_entries];
  [coder encodeInt64:self->_databaseVersion forKey:@"databaseVersion"];
  [coder encodeObject:self->_entries forKey:@"entries"];
  [coder encodeObject:self->_settings forKey:@"settings"];
  [coder encodeObject:self->_launchServicesDatabaseGeneration forKey:@"launchServicesDatabaseGeneration"];
  enterpriseState = self->_enterpriseState;

  [coder encodeObject:enterpriseState forKey:@"enterpriseState"];
}

- (SWCDatabaseStorage)initWithCoder:(id)coder
{
  context = objc_autoreleasePoolPush();
  v48.receiver = self;
  v48.super_class = SWCDatabaseStorage;
  v5 = [(SWCDatabaseStorage *)&v48 init];
  if (!v5)
  {
    goto LABEL_25;
  }

  v5->_databaseVersion = [coder decodeInt64ForKey:@"databaseVersion"];
  v6 = objc_opt_class();
  v35 = objc_opt_class();
  v7 = [NSSet alloc];
  v55[0] = objc_opt_class();
  v55[1] = v6;
  v8 = [NSArray arrayWithObjects:v55 count:2];
  v37 = [v7 initWithArray:v8];

  v9 = [NSSet alloc];
  v54[0] = objc_opt_class();
  v54[1] = objc_opt_class();
  v54[2] = objc_opt_class();
  v54[3] = objc_opt_class();
  v54[4] = objc_opt_class();
  v54[5] = objc_opt_class();
  v54[6] = v35;
  v10 = [NSArray arrayWithObjects:v54 count:7];
  v36 = [v9 initWithArray:v10];

  v11 = [coder swc_decodeObjectOfClasses:v37 forKey:@"entries"];
  v12 = [coder swc_decodeObjectOfClasses:v36 forKey:@"settings"];
  v13 = [coder swc_decodeObjectOfClass:objc_opt_class() forKey:@"launchServicesDatabaseGeneration"];
  v14 = [coder swc_decodeObjectOfClass:objc_opt_class() forKey:@"enterpriseState"];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_16:
      v21 = [NSError alloc];
      v51[0] = @"Line";
      v51[1] = @"Function";
      v52[0] = &off_10002E6C8;
      entries = [NSString stringWithUTF8String:"[SWCDatabaseStorage initWithCoder:]"];
      v52[1] = entries;
      v22 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
      v23 = [v21 initWithDomain:NSCocoaErrorDomain code:4864 userInfo:v22];
      [coder failWithError:v23];

      goto LABEL_17;
    }

    [SWCEntry canonicalizeEntries:v11];
    v34 = v14;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v16)
    {
      v17 = *v45;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v45 != v17)
          {
            objc_enumerationMutation(v15);
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v14 = v34;
            goto LABEL_16;
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v14 = v34;
    v19 = v15;
  }

  else
  {
    v19 = objc_alloc_init(NSOrderedSet);
  }

  entries = v5->_entries;
  v5->_entries = v19;
LABEL_17:

  if (v12)
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = _NSIsNSDictionary();
    if (*(v41 + 24) == 1 && (v39[0] = _NSConcreteStackBlock, v39[1] = 3221225472, v39[2] = sub_1000188C0, v39[3] = &unk_10002CF80, v39[4] = &v40, v39[5] = v35, [v12 enumerateKeysAndObjectsUsingBlock:v39], (v41[3] & 1) != 0))
    {
      v24 = v12;
      settings = v5->_settings;
      v5->_settings = v24;
    }

    else
    {
      v26 = [NSError alloc];
      v49[0] = @"Line";
      v49[1] = @"Function";
      v50[0] = &off_10002E6E0;
      settings = [NSString stringWithUTF8String:"[SWCDatabaseStorage initWithCoder:]"];
      v50[1] = settings;
      v27 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
      v28 = [v26 initWithDomain:NSCocoaErrorDomain code:4864 userInfo:v27];
      [coder failWithError:v28];
    }

    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v29 = v5->_settings;
    v5->_settings = &__NSDictionary0__struct;
  }

  launchServicesDatabaseGeneration = v5->_launchServicesDatabaseGeneration;
  v5->_launchServicesDatabaseGeneration = v13;
  v31 = v13;

  enterpriseState = v5->_enterpriseState;
  v5->_enterpriseState = v14;

LABEL_25:
  objc_autoreleasePoolPop(context);
  return v5;
}

@end