@interface HDVisionPrescriptionAuthorizationSchemaProvider
- (BOOL)setObjectAuthorizationStatusContext:(id)context forObjectType:(id)type bundleIdentifier:(id)identifier profile:(id)profile error:(id *)error;
- (int64_t)isClientAuthorizedToReadObject:(id)object sourceBundleIdentifier:(id)identifier clientEntitlements:(id)entitlements profile:(id)profile error:(id *)error;
- (int64_t)isClientAuthorizedToWriteObject:(id)object sourceBundleIdentifier:(id)identifier clientEntitlements:(id)entitlements profile:(id)profile error:(id *)error;
@end

@implementation HDVisionPrescriptionAuthorizationSchemaProvider

- (int64_t)isClientAuthorizedToReadObject:(id)object sourceBundleIdentifier:(id)identifier clientEntitlements:(id)entitlements profile:(id)profile error:(id *)error
{
  v38[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  identifierCopy = identifier;
  entitlementsCopy = entitlements;
  profileCopy = profile;
  if (objc_opt_respondsToSelector())
  {
    hk_objectType = [objectCopy hk_objectType];
    if (hk_objectType)
    {
      v16 = hk_objectType;
      identifier = [hk_objectType identifier];
      if (identifier && ([entitlementsCopy arrayEntitlement:*MEMORY[0x277CCCCE0] containsString:identifier] & 1) != 0)
      {
        v18 = 0;
        v19 = 1;
        goto LABEL_38;
      }

      sourceManager = [profileCopy sourceManager];
      v37 = 0;
      v23 = [sourceManager localSourceForBundleIdentifier:identifierCopy error:&v37];
      v18 = v37;

      if (!v23)
      {
        if (v18)
        {
          firstObject = v18;
        }

        else
        {
          firstObject = [MEMORY[0x277CCA9B8] hk_error:124 format:{@"Failed to find local source entity for client with bundle identifier: %@", identifierCopy}];
          if (!firstObject)
          {
LABEL_34:
            v18 = 0;
            goto LABEL_35;
          }
        }

        if (error)
        {
          v30 = firstObject;
          *error = firstObject;
        }

        else
        {
          _HKLogDroppedError();
        }

        if (v18)
        {
          v19 = 0;
LABEL_37:

          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v35 = entitlementsCopy;
      v38[0] = objectCopy;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
      v25 = v23;
      v26 = v24;
      v36 = v18;
      v34 = v25;
      v27 = [HDObjectAuthorizationEntity authorizationRecordsForSamples:"authorizationRecordsForSamples:sourceEntity:sessionIdentifier:profile:error:" sourceEntity:v24 sessionIdentifier:? profile:? error:?];
      v33 = v36;

      firstObject = [v27 firstObject];

      if (firstObject)
      {
        if ([firstObject status] == 2)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        v23 = v34;
        entitlementsCopy = v35;
        v18 = v33;
        goto LABEL_36;
      }

      v18 = v33;
      if (v33)
      {
        v29 = v33;
        v23 = v34;
        entitlementsCopy = v35;
      }

      else
      {
        v29 = [MEMORY[0x277CCA9B8] hk_error:2000 format:{@"Failed to fetch HKObjectAuthorizationRecord for object: %@, client bundle identifier: %@", objectCopy, identifierCopy}];
        v23 = v34;
        entitlementsCopy = v35;
        if (!v29)
        {
LABEL_33:

          firstObject = 0;
          goto LABEL_34;
        }
      }

      if (error)
      {
        v31 = v29;
        *error = v29;
      }

      else
      {
        _HKLogDroppedError();
      }

      if (v33)
      {
        firstObject = 0;
LABEL_35:
        v19 = 0;
LABEL_36:

        goto LABEL_37;
      }

      goto LABEL_33;
    }
  }

  v20 = [MEMORY[0x277CCA9B8] hk_error:2000 format:{@"%@ object does not comform to the type protocol", objectCopy}];
  if (v20)
  {
    if (error)
    {
      v21 = v20;
      *error = v20;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v16 = 0;
  v18 = 0;
  identifier = 0;
  v19 = 0;
LABEL_38:

  return v19;
}

- (int64_t)isClientAuthorizedToWriteObject:(id)object sourceBundleIdentifier:(id)identifier clientEntitlements:(id)entitlements profile:(id)profile error:(id *)error
{
  v52[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  identifierCopy = identifier;
  entitlementsCopy = entitlements;
  profileCopy = profile;
  v16 = MEMORY[0x277CCD8A8];
  v52[0] = objectCopy;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
  v18 = [v16 hd_sampleTypesForObjects:v17];

  v50 = 0;
  v19 = [HDAuthorizationStatus authorizationStatusForTypes:v18 bundleIdentifier:identifierCopy profile:profileCopy error:&v50];
  v20 = v50;
  v21 = v20;
  if (!v19)
  {
    v28 = 2;
    if (!v20)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  selfCopy = self;
  v22 = [MEMORY[0x277CCD720] _typesIncludingParentTypes:v18];
  v23 = [v19 count];
  v37 = v22;
  if (v23 != [v22 count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"HDVisionPrescriptionAuthorizationSchemaProvider.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"[authorizationStatuses count] == [typesIncludingParentTypes count]"}];
  }

  v39 = profileCopy;
  errorCopy = error;
  v41 = identifierCopy;
  v43 = objectCopy;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v38 = v18;
  v24 = v18;
  v25 = [v24 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v47;
    v28 = 2;
    do
    {
      v29 = 0;
      v30 = v21;
      do
      {
        if (*v47 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v31 = *(*(&v46 + 1) + 8 * v29);
        v32 = [v19 objectForKeyedSubscript:v31];
        v45 = v30;
        v33 = [HDAuthorizationStatus isAuthorizedForObjectType:v31 authorizationStatus:v32 clientEntitlements:entitlementsCopy sharing:1 error:&v45];
        v21 = v45;

        if (v33)
        {
          v28 = 1;
        }

        ++v29;
        v30 = v21;
      }

      while (v26 != v29);
      v26 = [v24 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v26);
  }

  else
  {
    v28 = 2;
  }

  identifierCopy = v41;
  objectCopy = v43;
  profileCopy = v39;
  error = errorCopy;
  v18 = v38;
  if (v21)
  {
LABEL_18:
    if (error)
    {
      v34 = v21;
      *error = v21;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_21:

  return v28;
}

- (BOOL)setObjectAuthorizationStatusContext:(id)context forObjectType:(id)type bundleIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  typeCopy = type;
  identifierCopy = identifier;
  profileCopy = profile;
  sourceManager = [profileCopy sourceManager];
  v49 = 0;
  v15 = [sourceManager localSourceForBundleIdentifier:identifierCopy error:&v49];
  v16 = v49;

  if (v15)
  {
    v43 = [v15 sourceUUIDWithProfile:profileCopy error:error];
    if (v43)
    {
      errorCopy = error;
      v38 = v16;
      v39 = v15;
      v40 = profileCopy;
      v41 = identifierCopy;
      v42 = typeCopy;
      v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [contextCopy objectAuthorizationStatuses];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v18 = v48 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v46;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v46 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v45 + 1) + 8 * i);
            domain = [v23 domain];
            v25 = [domain isEqualToString:@"HKHealthConceptDomainHealthKit"];

            if (!v25)
            {
              typeCopy = v42;
              [MEMORY[0x277CCA9B8] hk_assignError:errorCopy code:2000 format:{@"%@: Domain of the concept identifier does not match the right domain for the following object type %@:", objc_opt_class(), v42}];

              v34 = 0;
              profileCopy = v40;
              goto LABEL_16;
            }

            v26 = objc_alloc(MEMORY[0x277CCAD78]);
            underlyingIdentifier = [v23 underlyingIdentifier];
            v28 = [v26 initWithUUIDString:underlyingIdentifier];

            v29 = objc_alloc(MEMORY[0x277CCD710]);
            sessionIdentifier = [contextCopy sessionIdentifier];
            v31 = [v18 objectForKeyedSubscript:v23];
            v32 = HKObjectAuthorizationStatusForNumber();
            v33 = [v29 initWithObjectUUID:v28 sourceUUID:v43 sessionUUID:sessionIdentifier status:v32 modificationDate:CFAbsoluteTimeGetCurrent()];

            [v17 addObject:v33];
          }

          v20 = [v18 countByEnumeratingWithState:&v45 objects:v50 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      profileCopy = v40;
      v34 = +[HDObjectAuthorizationEntity setObjectAuthorizationRecords:syncProvenance:syncIdentity:profile:error:](HDObjectAuthorizationEntity, "setObjectAuthorizationRecords:syncProvenance:syncIdentity:profile:error:", v17, 0, [v40 currentSyncIdentityPersistentID], v40, errorCopy);
      typeCopy = v42;
LABEL_16:

      identifierCopy = v41;
      v16 = v38;
      v15 = v39;
    }

    else
    {
      v34 = 0;
    }
  }

  else if (v16)
  {
    if (error)
    {
      v35 = v16;
      v34 = 0;
      *error = v16;
    }

    else
    {
      _HKLogDroppedError();
      v34 = 0;
    }
  }

  else
  {
    v34 = 1;
  }

  return v34;
}

@end