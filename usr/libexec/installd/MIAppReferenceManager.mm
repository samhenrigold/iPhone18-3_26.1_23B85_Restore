@interface MIAppReferenceManager
+ (id)defaultManager;
- (BOOL)_countFinalReferences:(unint64_t *)references inBundleContainer:(id)container withError:(id *)error;
- (BOOL)_countReferencesWithType:(int)type atBaseURL:(id)l count:(unint64_t *)count withError:(id *)error;
- (BOOL)_countTemporaryReferences:(unint64_t *)references inBundleContainer:(id)container withError:(id *)error;
- (BOOL)_removeReferenceAtURL:(id)l personaUniqueString:(id)string inBundleContainer:(id)container wasLastReference:(BOOL *)reference resultingPersonaUniqueStrings:(id *)strings error:(id *)error;
- (BOOL)_updateReferenceAtURL:(id)l byAddingPersonaUniqueString:(id)string resultingPersonaUniqueStrings:(id *)strings error:(id *)error;
- (BOOL)_updateReferenceAtURL:(id)l byRemovingPersonaUniqueString:(id)string resultingPersonaUniqueStrings:(id *)strings error:(id *)error;
- (BOOL)addReferenceForIdentity:(id)identity inDomain:(unint64_t)domain forUserWithID:(unsigned int)d resultingPersonaUniqueStrings:(id *)strings error:(id *)error;
- (BOOL)addReferenceForUserWithID:(unsigned int)d personaUniqueString:(id)string byRemovingTemporaryReference:(BOOL)reference inBundleContainer:(id)container resultingPersonaUniqueStrings:(id *)strings error:(id *)error;
- (BOOL)addTemporaryReferenceForUserWithID:(unsigned int)d personaUniqueString:(id)string inBundleContainer:(id)container error:(id *)error;
- (BOOL)finalizeTemporaryReference:(id)reference resultingPersonaUniqueStrings:(id *)strings error:(id *)error;
- (BOOL)removeReferenceForIdentity:(id)identity inDomain:(unint64_t)domain forUserWithID:(unsigned int)d wasLastReference:(BOOL *)reference resultingPersonaUniqueStrings:(id *)strings error:(id *)error;
- (BOOL)removeReferenceForUserWithID:(unsigned int)d personaUniqueString:(id)string inBundleContainer:(id)container wasLastReference:(BOOL *)reference resultingPersonaUniqueStrings:(id *)strings error:(id *)error;
- (BOOL)removeTemporaryReferenceForUserWithID:(unsigned int)d personaUniqueString:(id)string inBundleContainer:(id)container wasLastReference:(BOOL *)reference error:(id *)error;
- (BOOL)revokeTemporaryReference:(id)reference wasLastReference:(BOOL *)lastReference error:(id *)error;
- (MIAppReferenceManager)init;
- (id)_referenceURLForUserWithID:(unsigned int)d inBundleContainer:(id)container;
- (id)_temporaryReferenceURLForUserWithID:(unsigned int)d inBundleContainer:(id)container;
- (id)addTemporaryReferenceForIdentity:(id)identity inDomain:(unint64_t)domain forUserWithID:(unsigned int)d error:(id *)error;
- (id)personaUniqueStringsForAppWithBundleID:(id)d domain:(unint64_t)domain forUserWithID:(unsigned int)iD error:(id *)error;
- (id)personaUniqueStringsForAppWithBundleID:(id)d error:(id *)error;
- (id)referencesForIdentifier:(id)identifier inDomain:(unint64_t)domain error:(id *)error;
- (void)enumerateAppReferencesWithBlock:(id)block;
@end

@implementation MIAppReferenceManager

+ (id)defaultManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005521C;
  block[3] = &unk_100090CF8;
  block[4] = self;
  if (qword_1000A9718 != -1)
  {
    dispatch_once(&qword_1000A9718, block);
  }

  v2 = qword_1000A9710;

  return v2;
}

- (MIAppReferenceManager)init
{
  v3.receiver = self;
  v3.super_class = MIAppReferenceManager;
  return [(MIAppReferenceManager *)&v3 init];
}

- (BOOL)addReferenceForIdentity:(id)identity inDomain:(unint64_t)domain forUserWithID:(unsigned int)d resultingPersonaUniqueStrings:(id *)strings error:(id *)error
{
  v9 = *&d;
  identityCopy = identity;
  bundleID = [identityCopy bundleID];
  v26 = 0;
  v14 = [MIBundleContainer appBundleContainerForIdentifier:bundleID inDomain:domain withError:&v26];
  v15 = v26;

  if (v14)
  {
    personaUniqueString = [identityCopy personaUniqueString];
    v24 = v15;
    v25 = 0;
    v17 = [(MIAppReferenceManager *)self addReferenceForUserWithID:v9 personaUniqueString:personaUniqueString byRemovingTemporaryReference:0 inBundleContainer:v14 resultingPersonaUniqueStrings:&v25 error:&v24];
    v18 = v25;
    v19 = v24;

    v15 = v19;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v17)
  {
    v20 = v15;
    *error = v15;
  }

LABEL_7:
  v21 = !v17;
  if (!strings)
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    v22 = v18;
    *strings = v18;
  }

  return v17;
}

- (BOOL)removeReferenceForIdentity:(id)identity inDomain:(unint64_t)domain forUserWithID:(unsigned int)d wasLastReference:(BOOL *)reference resultingPersonaUniqueStrings:(id *)strings error:(id *)error
{
  v11 = *&d;
  identityCopy = identity;
  bundleID = [identityCopy bundleID];
  v28 = 0;
  v16 = [MIBundleContainer appBundleContainerForIdentifier:bundleID inDomain:domain withError:&v28];
  v17 = v28;

  if (v16)
  {
    personaUniqueString = [identityCopy personaUniqueString];
    v26 = v17;
    v27 = 0;
    v19 = [(MIAppReferenceManager *)self removeReferenceForUserWithID:v11 personaUniqueString:personaUniqueString inBundleContainer:v16 wasLastReference:reference resultingPersonaUniqueStrings:&v27 error:&v26];
    v20 = v27;
    v21 = v26;

    v17 = v21;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v20 = 0;
    v19 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v19)
  {
    v22 = v17;
    *error = v17;
  }

LABEL_7:
  v23 = !v19;
  if (!strings)
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    v24 = v20;
    *strings = v20;
  }

  return v19;
}

- (id)addTemporaryReferenceForIdentity:(id)identity inDomain:(unint64_t)domain forUserWithID:(unsigned int)d error:(id *)error
{
  v7 = *&d;
  identityCopy = identity;
  bundleID = [identityCopy bundleID];
  v23 = 0;
  v12 = [MIBundleContainer appBundleContainerForIdentifier:bundleID inDomain:domain withError:&v23];
  v13 = v23;

  if (v12)
  {
    personaUniqueString = [identityCopy personaUniqueString];
    v22 = v13;
    v15 = [(MIAppReferenceManager *)self addTemporaryReferenceForUserWithID:v7 personaUniqueString:personaUniqueString inBundleContainer:v12 error:&v22];
    v16 = v22;

    if (v15)
    {
      v17 = [MIAppReference alloc];
      v18 = +[NSUUID UUID];
      v19 = [v17 initWithReferenceUUID:v18 identity:identityCopy domain:domain uid:v7];
    }

    else
    {
      v19 = 0;
    }

    v13 = v16;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v19 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if (!v19)
  {
    v20 = v13;
    *error = v13;
  }

LABEL_10:

  return v19;
}

- (BOOL)finalizeTemporaryReference:(id)reference resultingPersonaUniqueStrings:(id *)strings error:(id *)error
{
  referenceCopy = reference;
  identity = [referenceCopy identity];
  bundleID = [identity bundleID];
  v24 = 0;
  v11 = +[MIBundleContainer appBundleContainerForIdentifier:inDomain:withError:](MIBundleContainer, "appBundleContainerForIdentifier:inDomain:withError:", bundleID, [referenceCopy domain], &v24);
  v12 = v24;

  if (v11)
  {
    v13 = [referenceCopy uid];
    personaUniqueString = [identity personaUniqueString];
    v22 = v12;
    v23 = 0;
    v15 = [(MIAppReferenceManager *)self addReferenceForUserWithID:v13 personaUniqueString:personaUniqueString byRemovingTemporaryReference:1 inBundleContainer:v11 resultingPersonaUniqueStrings:&v23 error:&v22];
    v16 = v23;
    v17 = v22;

    v12 = v17;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v15)
  {
    v18 = v12;
    *error = v12;
  }

LABEL_7:
  v19 = !v15;
  if (!strings)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    v20 = v16;
    *strings = v16;
  }

  return v15;
}

- (BOOL)revokeTemporaryReference:(id)reference wasLastReference:(BOOL *)lastReference error:(id *)error
{
  referenceCopy = reference;
  identity = [referenceCopy identity];
  bundleID = [identity bundleID];
  v20 = 0;
  v11 = +[MIBundleContainer appBundleContainerForIdentifier:inDomain:withError:](MIBundleContainer, "appBundleContainerForIdentifier:inDomain:withError:", bundleID, [referenceCopy domain], &v20);
  v12 = v20;

  if (v11)
  {
    v13 = [referenceCopy uid];
    personaUniqueString = [identity personaUniqueString];
    v19 = v12;
    v15 = [(MIAppReferenceManager *)self removeTemporaryReferenceForUserWithID:v13 personaUniqueString:personaUniqueString inBundleContainer:v11 wasLastReference:lastReference error:&v19];
    v16 = v19;

    v12 = v16;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v15)
  {
    v17 = v12;
    *error = v12;
  }

LABEL_7:

  return v15;
}

- (id)_referenceURLForUserWithID:(unsigned int)d inBundleContainer:(id)container
{
  v4 = *&d;
  referenceStorageURL = [container referenceStorageURL];
  v6 = [NSString stringWithFormat:@"user_%d/%@", v4, @"AppReferences"];
  v7 = [referenceStorageURL URLByAppendingPathComponent:v6 isDirectory:0];

  return v7;
}

- (id)_temporaryReferenceURLForUserWithID:(unsigned int)d inBundleContainer:(id)container
{
  v4 = *&d;
  referenceStorageURL = [container referenceStorageURL];
  v6 = [NSString stringWithFormat:@"user_%d/%@", v4, @"TemporaryAppReferences"];
  v7 = [referenceStorageURL URLByAppendingPathComponent:v6 isDirectory:0];

  return v7;
}

- (BOOL)_updateReferenceAtURL:(id)l byAddingPersonaUniqueString:(id)string resultingPersonaUniqueStrings:(id *)strings error:(id *)error
{
  lCopy = l;
  stringCopy = string;
  v11 = +[MIFileManager defaultManager];
  v39 = 0;
  v12 = [MIAppReferenceMetadata referenceMetadataFromURL:lCopy error:&v39];
  v13 = v39;
  v14 = v13;
  if (!v12)
  {
    domain = [v13 domain];
    errorCopy2 = error;
    if ([domain isEqualToString:NSCocoaErrorDomain])
    {
      code = [v14 code];

      if (code == 260)
      {
        uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
        v19URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];
        v38 = v14;
        v21 = [v11 createDirectoryAtURL:v19URLByDeletingLastPathComponent withIntermediateDirectories:0 mode:493 error:&v38];
        v22 = v38;

        if (v21)
        {
          v37 = v22;
          v23 = [v11 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:0 mode:493 error:&v37];
          v14 = v37;

          if (v23)
          {
            v12 = objc_opt_new();

            error = errorCopy2;
            goto LABEL_14;
          }

          v22 = v14;
        }

LABEL_27:
        v12 = 0;
        v16 = 0;
        goto LABEL_31;
      }
    }

    else
    {
    }

    v36 = 0;
    v26 = [v11 removeItemAtURL:lCopy error:&v36];
    uRLByDeletingLastPathComponent = v36;
    if ((v26 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      path = [lCopy path];
      v33 = uRLByDeletingLastPathComponent;
      MOLogWrite();
    }

    v27 = MIInstallerErrorDomain;
    path2 = [lCopy path];
    v22 = sub_100010734("[MIAppReferenceManager _updateReferenceAtURL:byAddingPersonaUniqueString:resultingPersonaUniqueStrings:error:]", 222, v27, 4, v14, 0, @"Failed to deserialize temporary references from %@", v29, path2);

    goto LABEL_27;
  }

  personas = [v12 personas];
  v16 = [personas mutableCopy];

  if (!v16)
  {
LABEL_14:
    v16 = objc_opt_new();
    goto LABEL_15;
  }

  if (![v16 count])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100059CC8(lCopy);
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      path = [lCopy path];
      MOLogWrite();
    }
  }

LABEL_15:
  if (([v16 containsObject:{stringCopy, path}] & 1) == 0)
  {
    errorCopy2 = error;
    [v16 addObject:stringCopy];
    v24 = [v16 copy];
    [v12 setPersonas:v24];

    v35 = v14;
    LOBYTE(v24) = [v12 serializeToURL:lCopy error:&v35];
    v22 = v35;

    if (v24)
    {
      v14 = v22;
      goto LABEL_18;
    }

    if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
LABEL_32:
      v14 = v22;
      if (errorCopy2)
      {
        v30 = v22;
        v25 = 0;
        *errorCopy2 = v22;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_35;
    }

    uRLByDeletingLastPathComponent = [lCopy path];
    MOLogWrite();
LABEL_31:

    goto LABEL_32;
  }

LABEL_18:
  if (strings)
  {
    *strings = [NSSet setWithArray:v16];
  }

  v25 = 1;
LABEL_35:

  return v25;
}

- (BOOL)_updateReferenceAtURL:(id)l byRemovingPersonaUniqueString:(id)string resultingPersonaUniqueStrings:(id *)strings error:(id *)error
{
  lCopy = l;
  stringCopy = string;
  v11 = +[MIFileManager defaultManager];
  v41 = 0;
  v12 = [MIAppReferenceMetadata referenceMetadataFromURL:lCopy error:&v41];
  v13 = v41;
  v14 = v13;
  if (!v12)
  {
    domain = [v13 domain];
    if ([domain isEqualToString:NSCocoaErrorDomain])
    {
      code = [v14 code];

      if (code == 260)
      {

        v16 = 0;
        if (!strings)
        {
          v30 = 1;
          v14 = 0;
          goto LABEL_37;
        }

        v14 = 0;
        goto LABEL_12;
      }
    }

    else
    {
    }

    v40 = 0;
    v25 = [v11 removeItemAtURL:lCopy error:&v40];
    path4 = v40;
    if ((v25 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      path = [lCopy path];
      v37 = path4;
      MOLogWrite();
    }

    v26 = MIInstallerErrorDomain;
    path2 = [lCopy path];
    v20 = sub_100010734("[MIAppReferenceManager _updateReferenceAtURL:byRemovingPersonaUniqueString:resultingPersonaUniqueStrings:error:]", 280, v26, 4, v14, 0, @"Failed to deserialize temporary references from %@", v28, path2);

    v16 = 0;
    goto LABEL_20;
  }

  personas = [v12 personas];
  v16 = [personas mutableCopy];

  if (!v16)
  {
    if (!strings)
    {
      goto LABEL_36;
    }

LABEL_12:
    v23 = 0;
LABEL_35:
    v33 = v23;
    *strings = v33;

    goto LABEL_36;
  }

  if (([v16 containsObject:stringCopy] & 1) == 0)
  {
    v20 = sub_100010734("[MIAppReferenceManager _updateReferenceAtURL:byRemovingPersonaUniqueString:resultingPersonaUniqueStrings:error:]", 289, MIInstallerErrorDomain, 4, 0, 0, @"Persona %@ not found in %@", v17, stringCopy);
    path4 = v14;
LABEL_20:

    goto LABEL_21;
  }

  [v16 removeObject:stringCopy];
  v18 = [v16 copy];
  [v12 setPersonas:v18];

  if (![v16 count])
  {
    v38 = v14;
    v31 = [v11 removeItemAtURL:lCopy error:&v38];
    v32 = v38;

    if (v31)
    {
      v14 = v32;
    }

    else
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        path3 = [lCopy path];
        MOLogWrite();
      }

      v14 = 0;
    }

LABEL_33:
    if (strings)
    {
      v23 = [NSSet setWithArray:v16];
      goto LABEL_35;
    }

LABEL_36:
    v30 = 1;
    goto LABEL_37;
  }

  v39 = v14;
  v19 = [v12 serializeToURL:lCopy error:&v39];
  v20 = v39;

  if (v19)
  {
    v14 = v20;
    goto LABEL_33;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    path4 = [lCopy path];
    MOLogWrite();
    goto LABEL_20;
  }

LABEL_21:
  v14 = v20;
  if (error)
  {
    v29 = v20;
    v30 = 0;
    *error = v20;
  }

  else
  {
    v30 = 0;
  }

LABEL_37:

  return v30;
}

- (BOOL)_countReferencesWithType:(int)type atBaseURL:(id)l count:(unint64_t *)count withError:(id *)error
{
  lCopy = l;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000564D4;
  v21 = sub_1000564E4;
  v22 = 0;
  v10 = +[MIFileManager defaultManager];
  if ([v10 itemDoesNotExistAtURL:lCopy])
  {
    if (count)
    {
      *count = 0;
    }

    v11 = 1;
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000564EC;
    v15[3] = &unk_100091BB8;
    typeCopy = type;
    v15[4] = &v17;
    v15[5] = &v23;
    v12 = [v10 traverseDirectoryAtURL:lCopy withBlock:v15];
    if (v12)
    {
      objc_storeStrong(v18 + 5, v12);
    }

    v13 = v18[5];
    v11 = v13 == 0;
    if (v13)
    {
      if (error)
      {
        *error = v13;
      }
    }

    else if (count)
    {
      *count = v24[3];
    }
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

- (BOOL)_countFinalReferences:(unint64_t *)references inBundleContainer:(id)container withError:(id *)error
{
  referenceStorageURL = [container referenceStorageURL];
  LOBYTE(error) = [(MIAppReferenceManager *)self _countReferencesWithType:2 atBaseURL:referenceStorageURL count:references withError:error];

  return error;
}

- (BOOL)_countTemporaryReferences:(unint64_t *)references inBundleContainer:(id)container withError:(id *)error
{
  referenceStorageURL = [container referenceStorageURL];
  LOBYTE(error) = [(MIAppReferenceManager *)self _countReferencesWithType:1 atBaseURL:referenceStorageURL count:references withError:error];

  return error;
}

- (BOOL)addTemporaryReferenceForUserWithID:(unsigned int)d personaUniqueString:(id)string inBundleContainer:(id)container error:(id *)error
{
  v8 = *&d;
  stringCopy = string;
  v11 = [(MIAppReferenceManager *)self _temporaryReferenceURLForUserWithID:v8 inBundleContainer:container];
  LOBYTE(error) = [(MIAppReferenceManager *)self _updateReferenceAtURL:v11 byAddingPersonaUniqueString:stringCopy resultingPersonaUniqueStrings:0 error:error];

  return error;
}

- (BOOL)addReferenceForUserWithID:(unsigned int)d personaUniqueString:(id)string byRemovingTemporaryReference:(BOOL)reference inBundleContainer:(id)container resultingPersonaUniqueStrings:(id *)strings error:(id *)error
{
  referenceCopy = reference;
  v12 = *&d;
  stringCopy = string;
  containerCopy = container;
  v16 = [(MIAppReferenceManager *)self _referenceURLForUserWithID:v12 inBundleContainer:containerCopy];
  if (referenceCopy && ![(MIAppReferenceManager *)self removeTemporaryReferenceForUserWithID:v12 personaUniqueString:stringCopy inBundleContainer:containerCopy wasLastReference:0 error:error])
  {
    v17 = 0;
  }

  else
  {
    v17 = [(MIAppReferenceManager *)self _updateReferenceAtURL:v16 byAddingPersonaUniqueString:stringCopy resultingPersonaUniqueStrings:strings error:error];
  }

  return v17;
}

- (BOOL)_removeReferenceAtURL:(id)l personaUniqueString:(id)string inBundleContainer:(id)container wasLastReference:(BOOL *)reference resultingPersonaUniqueStrings:(id *)strings error:(id *)error
{
  stringCopy = string;
  containerCopy = container;
  v16 = [(MIAppReferenceManager *)self _updateReferenceAtURL:l byRemovingPersonaUniqueString:stringCopy resultingPersonaUniqueStrings:strings error:error];
  v17 = v16;
  if (reference && v16)
  {
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v18 = [(MIAppReferenceManager *)self _countFinalReferences:&v30 inBundleContainer:containerCopy withError:&v28];
    v19 = v28;
    if ((v18 & 1) == 0)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v24 = v19;
        MOLogWrite();
      }

      v19 = 0;
    }

    v27 = v19;
    v20 = [(MIAppReferenceManager *)self _countTemporaryReferences:&v29 inBundleContainer:containerCopy withError:&v27, v24];
    v21 = v27;

    v22 = qword_1000A9720;
    if ((v20 & 1) == 0)
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
LABEL_13:
        if (*(v22 + 44) < 5)
        {
LABEL_15:
          *reference = v30 + v29 == 0;

          goto LABEL_16;
        }

LABEL_14:
        identifier = [containerCopy identifier];
        MOLogWrite();

        goto LABEL_15;
      }

      v25 = v21;
      MOLogWrite();
      v22 = qword_1000A9720;
    }

    if (!v22)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_16:

  return v17;
}

- (BOOL)removeTemporaryReferenceForUserWithID:(unsigned int)d personaUniqueString:(id)string inBundleContainer:(id)container wasLastReference:(BOOL *)reference error:(id *)error
{
  v10 = *&d;
  containerCopy = container;
  stringCopy = string;
  v14 = [(MIAppReferenceManager *)self _temporaryReferenceURLForUserWithID:v10 inBundleContainer:containerCopy];
  LOBYTE(error) = [(MIAppReferenceManager *)self _removeReferenceAtURL:v14 personaUniqueString:stringCopy inBundleContainer:containerCopy wasLastReference:reference resultingPersonaUniqueStrings:0 error:error];

  return error;
}

- (BOOL)removeReferenceForUserWithID:(unsigned int)d personaUniqueString:(id)string inBundleContainer:(id)container wasLastReference:(BOOL *)reference resultingPersonaUniqueStrings:(id *)strings error:(id *)error
{
  v12 = *&d;
  containerCopy = container;
  stringCopy = string;
  v16 = [(MIAppReferenceManager *)self _referenceURLForUserWithID:v12 inBundleContainer:containerCopy];
  LOBYTE(error) = [(MIAppReferenceManager *)self _removeReferenceAtURL:v16 personaUniqueString:stringCopy inBundleContainer:containerCopy wasLastReference:reference resultingPersonaUniqueStrings:strings error:error];

  return error;
}

- (void)enumerateAppReferencesWithBlock:(id)block
{
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (id)referencesForIdentifier:(id)identifier inDomain:(unint64_t)domain error:(id *)error
{
  identifierCopy = identifier;
  v29 = objc_opt_new();
  v7 = sub_100009938();
  v9 = sub_100009864(v7, v8);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
  v30 = v10;
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v34;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v34 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = [*(*(&v33 + 1) + 8 * v15) uid];
      v17 = v16;
      if (domain != 3 || v9 == v16)
      {
        v32 = v13;
        v18 = [(MIAppReferenceManager *)self personaUniqueStringsForAppWithBundleID:identifierCopy domain:domain forUserWithID:v16 error:&v32];
        v19 = v32;

        if (!v18)
        {

          v21 = 0;
          errorCopy2 = error;
          v23 = v29;
          if (error)
          {
            goto LABEL_20;
          }

          goto LABEL_22;
        }

        v20 = [NSNumber numberWithUnsignedInt:v17];
        [v29 setObject:v18 forKeyedSubscript:v20];

        v13 = v19;
        v10 = v30;
      }

      if (v12 == ++v15)
      {
        v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }
    }
  }

  v13 = 0;
LABEL_16:

  v23 = v29;
  if ([v29 count])
  {
    v21 = [v29 copy];
    v19 = v13;
  }

  else
  {
    v19 = sub_100010734("[MIAppReferenceManager referencesForIdentifier:inDomain:error:]", 511, MIInstallerErrorDomain, 4, 0, 0, @"Unexpectedly got no references for %@ for users %@", v24, identifierCopy);

    v21 = 0;
  }

  errorCopy2 = error;
  if (error)
  {
LABEL_20:
    if (!v21)
    {
      v25 = v19;
      *errorCopy2 = v19;
    }
  }

LABEL_22:
  v26 = v21;

  return v21;
}

- (id)personaUniqueStringsForAppWithBundleID:(id)d domain:(unint64_t)domain forUserWithID:(unsigned int)iD error:(id *)error
{
  v7 = *&iD;
  v28 = 0;
  v9 = [MIBundleContainer appBundleContainerForIdentifier:d inDomain:domain withError:&v28];
  v10 = v28;
  if (v9)
  {
    v11 = [(MIAppReferenceManager *)self _referenceURLForUserWithID:v7 inBundleContainer:v9];
    v27 = v10;
    v12 = [MIAppReferenceMetadata referenceMetadataFromURL:v11 error:&v27];
    v13 = v27;

    if (v12)
    {
      personas = [v12 personas];
      v15 = personas;
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) < 7)
      {
        goto LABEL_18;
      }

      v16 = [personas count];
      path = [v11 path];
      v25 = v15;
      v26 = path;
      v24 = v16;
      MOLogWrite();
      goto LABEL_6;
    }

    domain = [v13 domain];
    if ([domain isEqualToString:NSCocoaErrorDomain])
    {
      code = [v13 code];

      if (code == 260)
      {

        v13 = qword_1000A9720;
        if (qword_1000A9720)
        {
          if (*(qword_1000A9720 + 44) >= 7)
          {
            path = [v11 path];
            v24 = path;
            MOLogWrite();
            v13 = 0;
            v15 = &__NSArray0__struct;
LABEL_6:

LABEL_18:
            v18 = [NSSet setWithArray:v15, v24, v25, v26];
LABEL_19:
            v10 = v13;
            if (!error)
            {
              goto LABEL_22;
            }

            goto LABEL_20;
          }

          v13 = 0;
        }

        v15 = &__NSArray0__struct;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v18 = 0;
    v12 = 0;
    v15 = 0;
    goto LABEL_19;
  }

  v18 = 0;
  v11 = 0;
  v12 = 0;
  v15 = 0;
  if (!error)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (!v18)
  {
    v21 = v10;
    *error = v10;
  }

LABEL_22:
  v22 = v18;

  return v18;
}

- (id)personaUniqueStringsForAppWithBundleID:(id)d error:(id *)error
{
  dCopy = d;
  error = [(MIAppReferenceManager *)self personaUniqueStringsForAppWithBundleID:dCopy domain:2 forUserWithID:sub_100009864(dCopy error:v7), error];

  return error;
}

@end