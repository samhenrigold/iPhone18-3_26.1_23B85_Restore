@interface DMDFetchProfilesOperation
+ (id)whitelistedClassesForRequest;
- (id)_profileListWithFilterFlags:(int)flags;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDFetchProfilesOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchProfilesOperation;
  [(DMDFetchProfilesOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v5 count:2];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (void)runWithRequest:(id)request
{
  v5 = -[DMDFetchProfilesOperation _profileListWithFilterFlags:](self, "_profileListWithFilterFlags:", MCProfileFilterFlagsFromDMFProfileFilterFlags([request filterFlags]));
  v4 = [[DMFFetchProfilesResultObject alloc] initWithProfiles:v5];
  [(DMDFetchProfilesOperation *)self endOperationWithResultObject:v4];
}

- (id)_profileListWithFilterFlags:(int)flags
{
  v3 = *&flags;
  v42 = +[MCDependencyReader sharedReader];
  v4 = +[MCProfileConnection sharedConnection];
  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v4 installedProfileIdentifiersWithFilterFlags:v3];
  v41 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  userProfileRestrictions = [v5 userProfileRestrictions];
  systemProfileRestrictions = [v5 systemProfileRestrictions];
  v32 = v5;
  defaultRestrictions = [v5 defaultRestrictions];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v52;
    v36 = kMCDMManagedProfileToManagingProfileKey;
    v37 = *v52;
    v33 = v4;
    do
    {
      v10 = 0;
      v34 = v8;
      do
      {
        if (*v52 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v51 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [v4 installedProfileWithIdentifier:v11];
        if (v13)
        {
          v46 = [v42 dependentsOfParent:v11 inDomain:v36];
          v14 = [v46 count];
          signerCertificates = [v13 signerCertificates];
          if ([signerCertificates count])
          {
            v43 = v14;
            v44 = signerCertificates;
            v45 = v12;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v16 = signerCertificates;
            v17 = [v16 countByEnumeratingWithState:&v47 objects:v55 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v48;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v48 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  Length = SecCertificateGetLength();
                  v22 = [NSData dataWithBytes:SecCertificateGetBytePtr() length:Length];
                  [0 addObject:v22];
                }

                v18 = [v16 countByEnumeratingWithState:&v47 objects:v55 count:16];
              }

              while (v18);
            }

            v4 = v33;
            v8 = v34;
            signerCertificates = v44;
            v12 = v45;
            v14 = v43;
          }

          v23 = v14 != 0;
          if ([v13 installType] == 2)
          {
            v24 = userProfileRestrictions;
          }

          else
          {
            v24 = systemProfileRestrictions;
          }

          v25 = [v24 objectForKeyedSubscript:v11];
          [MCRestrictionManager filterRestrictionDictionary:v25 toIncludeOnlyRestrictionsThatDifferFromRestrictions:defaultRestrictions];
          v26 = v8;
          v28 = v27 = v4;

          v29 = [[DMFProfile alloc] initWithProfile:v13 isManaged:v23 signerCertificates:0 restrictions:v28];
          [v41 addObject:v29];

          v9 = v37;
          v4 = v27;
          v8 = v26;
        }

        objc_autoreleasePoolPop(v12);
        v10 = v10 + 1;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v8);
  }

  v30 = [v41 copy];

  return v30;
}

@end