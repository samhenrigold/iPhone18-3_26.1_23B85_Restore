@interface DMDFetchProvisioningProfilesOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDFetchProvisioningProfilesOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchProvisioningProfilesOperation;
  [(DMDFetchProvisioningProfilesOperation *)&v2 waitUntilFinished];
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
  requestCopy = request;
  v5 = +[MCProfileConnection sharedConnection];
  v6 = [v5 listInstalledProvisioningProfileUUIDsWithManagedOnly:{objc_msgSend(requestCopy, "managedOnly")}];

  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (MISCopyProvisioningProfile())
        {

          [(DMDTaskOperation *)self endOperationWithDMFErrorCode:2400];
          goto LABEL_11;
        }

        v13 = [[DMFProvisioningProfile alloc] initWithProfileRef:0];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = [[DMFFetchProvisioningProfilesResultObject alloc] initWithProfiles:v7];
  [(DMDFetchProvisioningProfilesOperation *)self endOperationWithResultObject:v14];

LABEL_11:
}

@end