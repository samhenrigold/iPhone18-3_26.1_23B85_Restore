@interface MCMContainerSchema
+ (BOOL)schemaIsUpToDateForIdentifier:(id)identifier containerClass:(unint64_t)class currentSchemaVersion:(id)version latestSchemaVersion:(id *)schemaVersion;
+ (id)containerSchemaWithMetadata:(id)metadata finalContainerPath:(id)path dataProtectionClass:(int)class libraryRepair:(id)repair;
- (BOOL)_executeActions:(id)actions error:(id *)error;
- (BOOL)writeSchemaFromVersion:(id)version toTargetVersion:(id)targetVersion error:(id *)error;
- (BOOL)writeSchemaToTargetVersion:(id)version error:(id *)error;
- (MCMContainerSchema)initWithMetadata:(id)metadata finalContainerPath:(id)path dataProtectionClass:(int)class libraryRepair:(id)repair;
- (id)_actionArgsAfterInterpolationOnActionArgs:(id)args replacements:(id)replacements;
- (id)_actionsFromVersion:(id)version toTargetVersion:(id)targetVersion context:(id)context error:(id *)error;
- (id)_interpolationReplacementsWithError:(id *)error;
@end

@implementation MCMContainerSchema

- (BOOL)_executeActions:(id)actions error:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v7 = objc_autoreleasePoolPush();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v8 = actionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v53 objects:v52 count:16];
  if (v9)
  {
    v10 = v9;
    errorCopy = error;
    selfCopy = self;
    v12 = 0;
    v13 = *v54;
    while (2)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v54 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v53 + 1) + 8 * v14);
        v37 = v15;
        v17 = [v16 performWithError:&v37];
        v12 = v37;

        if ((v17 & 1) == 0)
        {
          v18 = container_log_handle_for_category();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            fsNode = selfCopy;
            metadata = [(MCMContainerSchema *)selfCopy metadata];
            uuid = [metadata uuid];
            metadata2 = [fsNode metadata];
            containerPath = [metadata2 containerPath];
            containerPathIdentifier = [containerPath containerPathIdentifier];
            metadata3 = [fsNode metadata];
            identifier = [metadata3 identifier];
            metadata4 = [fsNode metadata];
            containerClass = [metadata4 containerClass];
            metadata5 = [fsNode metadata];
            v26 = [metadata5 conformsToProtocol:&unk_1F5A81C70];
            if (v26)
            {
              metadata6 = [fsNode metadata];
              fsNode = [metadata6 fsNode];
              inode = [fsNode inode];
            }

            else
            {
              inode = 0;
            }

            *buf = 138544898;
            v39 = uuid;
            v40 = 2114;
            v41 = containerPathIdentifier;
            v42 = 2112;
            v43 = identifier;
            v44 = 2050;
            v45 = containerClass;
            v46 = 2048;
            v47 = inode;
            v48 = 2112;
            v49 = v16;
            v50 = 2112;
            v51 = v12;
            _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, "[u %{public}@:p %{public}@:c %@(%{public}llu):i%llu] Action [%@] failed; error = %@", buf, 0x48u);
            if (v26)
            {
            }
          }

          objc_autoreleasePoolPop(v7);
          if (errorCopy)
          {
            v19 = v12;
            v20 = 0;
            *errorCopy = v12;
          }

          else
          {
            v20 = 0;
          }

          goto LABEL_16;
        }

        ++v14;
        v15 = v12;
      }

      while (v10 != v14);
      v10 = [v8 countByEnumeratingWithState:&v53 objects:v52 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v7);
  v20 = 1;
LABEL_16:

  return v20;
}

- (id)_actionsFromVersion:(id)version toTargetVersion:(id)targetVersion context:(id)context error:(id *)error
{
  v105 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  targetVersionCopy = targetVersion;
  contextCopy = context;
  array = [MEMORY[0x1E695DF70] array];
  context = objc_autoreleasePoolPush();
  v80 = contextCopy;
  v12 = MCMContainerSchemaDefinitionForClass([contextCopy containerClass]);
  unsignedIntegerValue = [targetVersionCopy unsignedIntegerValue];
  selfCopy = self;
  v66 = v12;
  if (unsignedIntegerValue > [v12 count])
  {
    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v54 = targetVersionCopy;
      obja = [(MCMContainerSchema *)self metadata];
      uuid = [obja uuid];
      metadata = [(MCMContainerSchema *)self metadata];
      containerPath = [metadata containerPath];
      containerPathIdentifier = [containerPath containerPathIdentifier];
      metadata2 = [(MCMContainerSchema *)self metadata];
      [metadata2 identifier];
      v44 = v43 = self;
      metadata3 = [(MCMContainerSchema *)v43 metadata];
      containerClass = [metadata3 containerClass];
      metadata4 = [(MCMContainerSchema *)v43 metadata];
      v48 = [metadata4 conformsToProtocol:&unk_1F5A81C70];
      if (v48)
      {
        metadata5 = [(MCMContainerSchema *)v43 metadata];
        fsNode = [metadata5 fsNode];
        inode = [fsNode inode];
      }

      else
      {
        inode = 0;
      }

      *buf = 138544898;
      v85 = uuid;
      v86 = 2114;
      v87 = containerPathIdentifier;
      v88 = 2112;
      v89 = v44;
      v90 = 2050;
      v91 = containerClass;
      v92 = 2048;
      v93 = inode;
      v94 = 2112;
      v95 = v54;
      v96 = 2048;
      v97 = [v66 count];
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "[u %{public}@:p %{public}@:c %@(%{public}llu):i%llu] Trying to target a version [%@] higher than available [%lu], capping to max", buf, 0x48u);
      if (v48)
      {
      }

      targetVersionCopy = v54;
      self = selfCopy;
      v12 = v66;
    }

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];

    targetVersionCopy = v15;
  }

  v83 = 0;
  v16 = [(MCMContainerSchema *)self _interpolationReplacementsWithError:&v83];
  v17 = v83;
  v78 = v16;
  if (v16)
  {
    unsignedIntegerValue2 = [versionCopy unsignedIntegerValue];
    if (unsignedIntegerValue2 < [targetVersionCopy unsignedIntegerValue])
    {
      unsignedIntegerValue3 = [versionCopy unsignedIntegerValue];
      if (unsignedIntegerValue3 < [targetVersionCopy unsignedIntegerValue])
      {
        v52 = versionCopy;
        v53 = targetVersionCopy;
        do
        {
          v20 = [v12 objectAtIndexedSubscript:unsignedIntegerValue3];
          v21 = [v20 objectForKeyedSubscript:@"script"];
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v104 = 0u;
          obj = v21;
          v22 = [obj countByEnumeratingWithState:&v101 objects:v100 count:16];
          if (v22)
          {
            v23 = v22;
            v68 = v20;
            v70 = unsignedIntegerValue3;
            v24 = *v102;
LABEL_10:
            v25 = 0;
            v26 = v17;
            while (1)
            {
              if (*v102 != v24)
              {
                objc_enumerationMutation(obj);
              }

              v27 = *(*(&v101 + 1) + 8 * v25);
              v28 = [v27 objectAtIndexedSubscript:0];
              string = [v28 string];

              v30 = [v27 subarrayWithRange:{1, objc_msgSend(v27, "count") - 1}];
              v31 = [(MCMContainerSchema *)self _actionArgsAfterInterpolationOnActionArgs:v30 replacements:v78];

              v82 = 0;
              v32 = [MCMContainerSchemaActionBase actionWithName:string arguments:v31 context:v80 error:&v82];
              v33 = v82;
              if (v32)
              {
                [array addObject:v32];
                v34 = 0;
                v17 = v26;
              }

              else
              {
                v17 = [[MCMError alloc] initWithNSError:v33 url:0 defaultErrorType:127];

                v35 = container_log_handle_for_category();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
                {
                  metadata6 = [(MCMContainerSchema *)self metadata];
                  uuid2 = [metadata6 uuid];
                  metadata7 = [(MCMContainerSchema *)self metadata];
                  containerPath2 = [metadata7 containerPath];
                  containerPathIdentifier2 = [containerPath2 containerPathIdentifier];
                  metadata8 = [(MCMContainerSchema *)self metadata];
                  identifier = [metadata8 identifier];
                  metadata9 = [(MCMContainerSchema *)self metadata];
                  containerClass2 = [metadata9 containerClass];
                  metadata10 = [(MCMContainerSchema *)self metadata];
                  v58 = [metadata10 conformsToProtocol:&unk_1F5A81C70];
                  if (v58)
                  {
                    metadata11 = [(MCMContainerSchema *)self metadata];
                    fsNode2 = [metadata11 fsNode];
                    inode2 = [fsNode2 inode];
                  }

                  else
                  {
                    inode2 = 0;
                  }

                  *buf = 138545154;
                  v85 = uuid2;
                  v86 = 2114;
                  v87 = containerPathIdentifier2;
                  v88 = 2112;
                  v89 = identifier;
                  v90 = 2050;
                  v91 = containerClass2;
                  v92 = 2048;
                  v93 = inode2;
                  v94 = 2112;
                  v95 = string;
                  v96 = 2112;
                  v97 = v31;
                  v98 = 2112;
                  v99 = v17;
                  _os_log_fault_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_FAULT, "[u %{public}@:p %{public}@:c %@(%{public}llu):i%llu] Could not form action [%@] with args: %@, error = %@", buf, 0x52u);
                  if (v58)
                  {
                  }
                }

                array = 0;
                v34 = 2;
              }

              if (!v32)
              {
                break;
              }

              ++v25;
              v26 = v17;
              self = selfCopy;
              if (v23 == v25)
              {
                v37 = [obj countByEnumeratingWithState:&v101 objects:v100 count:16];
                v23 = v37;
                if (!v37)
                {
                  v34 = 0;
                  break;
                }

                goto LABEL_10;
              }
            }

            versionCopy = v52;
            targetVersionCopy = v53;
            v12 = v66;
            v20 = v68;
            unsignedIntegerValue3 = v70;
          }

          else
          {
            v34 = 0;
          }

          if (v34)
          {
            break;
          }

          ++unsignedIntegerValue3;
          self = selfCopy;
        }

        while (unsignedIntegerValue3 < [targetVersionCopy unsignedIntegerValue]);
      }
    }
  }

  else
  {

    array = 0;
  }

  objc_autoreleasePoolPop(context);
  if (error && !array)
  {
    v38 = v17;
    *error = v17;
  }

  v39 = [array copy];

  return v39;
}

- (id)_interpolationReplacementsWithError:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  metadata = [(MCMContainerSchema *)self metadata];
  containerPath = [metadata containerPath];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    destinationContainerPath = [containerPath destinationContainerPath];

    containerPath = destinationContainerPath;
  }

  containerPathIdentifier = [containerPath containerPathIdentifier];
  v8 = +[MCMFileManager defaultManager];
  identifier = [metadata identifier];
  v10 = [v8 fsMinimallySanitizedStringFromString:identifier];

  if (v10)
  {
    v11 = +[MCMPOSIXUser currentPOSIXUser];
    homeDirectoryURL = [v11 homeDirectoryURL];
    path = [homeDirectoryURL path];
    v21[0] = path;
    v21[1] = v10;
    v20[1] = @"${BundleId}";
    v20[2] = @"${SigningId}";
    v20[3] = @"${ContainerId}";
    v21[2] = v10;
    v21[3] = containerPathIdentifier;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];

    v15 = 0;
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    identifier2 = [metadata identifier];
    *buf = 138412290;
    v23 = identifier2;
    _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Codesign identifier [%@] has invalid characters", buf, 0xCu);
  }

  v15 = [[MCMError alloc] initWithErrorType:97 category:3];
  v14 = 0;
  if (error)
  {
LABEL_9:
    if (!v14)
    {
      v17 = v15;
      *error = v15;
    }
  }

LABEL_11:

  return v14;
}

- (id)_actionArgsAfterInterpolationOnActionArgs:(id)args replacements:(id)replacements
{
  v41 = *MEMORY[0x1E69E9840];
  argsCopy = args;
  replacementsCopy = replacements;
  v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(argsCopy, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = argsCopy;
  v7 = [v6 countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    v27 = *v38;
    v28 = v6;
    do
    {
      v10 = 0;
      v30 = v8;
      do
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v37 + 1) + 8 * v10);
        string = [v11 string];
        pathComponents = [string pathComponents];

        if ([pathComponents count] && (objc_msgSend(pathComponents, "containsObject:", @"..") & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            string2 = [v11 string];
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v15 = replacementsCopy;
            v16 = [v15 countByEnumeratingWithState:&v32 objects:v31 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v33;
              do
              {
                v19 = 0;
                v20 = string2;
                do
                {
                  if (*v33 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v21 = *(*(&v32 + 1) + 8 * v19);
                  v22 = [v15 objectForKeyedSubscript:v21];
                  string2 = [v20 stringByReplacingOccurrencesOfString:v21 withString:v22 options:1 range:{0, objc_msgSend(v20, "length")}];

                  ++v19;
                  v20 = string2;
                }

                while (v17 != v19);
                v17 = [v15 countByEnumeratingWithState:&v32 objects:v31 count:16];
              }

              while (v17);
            }

            v23 = [objc_alloc(objc_opt_class()) initWithString:string2];
            if (v23)
            {
              [v26 addObject:v23];
            }

            v9 = v27;
            v6 = v28;
            v8 = v30;
          }

          else
          {
            [v26 addObject:v11];
          }
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [v6 countByEnumeratingWithState:&v37 objects:v36 count:16];
    }

    while (v8);
  }

  v24 = [v26 copy];

  return v24;
}

- (BOOL)writeSchemaToTargetVersion:(id)version error:(id *)error
{
  versionCopy = version;
  metadata = [(MCMContainerSchema *)self metadata];
  schemaVersion = [metadata schemaVersion];
  LOBYTE(error) = [(MCMContainerSchema *)self writeSchemaFromVersion:schemaVersion toTargetVersion:versionCopy error:error];

  return error;
}

- (BOOL)writeSchemaFromVersion:(id)version toTargetVersion:(id)targetVersion error:(id *)error
{
  v80 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  targetVersionCopy = targetVersion;
  metadata = [(MCMContainerSchema *)self metadata];
  context = [(MCMContainerSchema *)self context];
  v61 = 0;
  v12 = [(MCMContainerSchema *)self _actionsFromVersion:versionCopy toTargetVersion:targetVersionCopy context:context error:&v61];
  v13 = v61;

  v14 = container_log_handle_for_category();
  v15 = v14;
  if (!v12)
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v23 = 0;
      LOBYTE(v22) = 0;
      goto LABEL_29;
    }

    errorCopy2 = error;
    v31 = versionCopy;
    spida = [metadata uuid];
    containerPath = [metadata containerPath];
    containerPathIdentifier = [containerPath containerPathIdentifier];
    identifier = [metadata identifier];
    containerClass = [metadata containerClass];
    v35 = [metadata conformsToProtocol:&unk_1F5A81C70];
    if (v35)
    {
      fsNode = [metadata fsNode];
      inode = [fsNode inode];
    }

    else
    {
      inode = 0;
    }

    *buf = 138544898;
    v63 = spida;
    v64 = 2114;
    v65 = containerPathIdentifier;
    v66 = 2112;
    v67 = identifier;
    v68 = 2050;
    v69 = containerClass;
    v70 = 2048;
    v71 = inode;
    v72 = 2114;
    versionCopy = v31;
    v73 = v31;
    v74 = 2114;
    v75 = targetVersionCopy;
    _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "[u %{public}@:p %{public}@:c %@(%{public}llu):i%llu] Could not update schema from (%{public}@) → (%{public}@), no actions available", buf, 0x48u);
    if (v35)
    {
    }

    v23 = 0;
    LOBYTE(v22) = 0;
LABEL_28:
    error = errorCopy2;
    goto LABEL_29;
  }

  errorCopy2 = error;
  v16 = os_signpost_id_make_with_pointer(v14, self);

  v17 = container_log_handle_for_category();
  v18 = v17;
  spid = v16;
  v19 = v16 - 1;
  if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    [metadata identifier];
    v21 = v20 = versionCopy;
    *buf = 138477827;
    v63 = v21;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v18, OS_SIGNPOST_INTERVAL_BEGIN, spid, "SchemaUpdate", " identifier=%{private, signpost.description:attribute}@ ", buf, 0xCu);

    versionCopy = v20;
  }

  v60 = 0;
  v22 = [(MCMContainerSchema *)self _executeActions:v12 error:&v60];
  v23 = v60;
  v24 = container_log_handle_for_category();
  p_super = v24;
  if (v22)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v54 = versionCopy;
      uuid = [metadata uuid];
      containerPath2 = [metadata containerPath];
      containerPathIdentifier2 = [containerPath2 containerPathIdentifier];
      identifier2 = [metadata identifier];
      containerClass2 = [metadata containerClass];
      v26 = [metadata conformsToProtocol:&unk_1F5A81C70];
      if (v26)
      {
        fsNode2 = [metadata fsNode];
        inode2 = [fsNode2 inode];
      }

      else
      {
        inode2 = 0;
      }

      v28 = [v12 count];
      *buf = 138545154;
      v63 = uuid;
      v64 = 2114;
      v65 = containerPathIdentifier2;
      v66 = 2112;
      v67 = identifier2;
      v68 = 2050;
      v69 = containerClass2;
      v70 = 2048;
      v71 = inode2;
      v72 = 2114;
      v73 = v54;
      v74 = 2114;
      v75 = targetVersionCopy;
      v76 = 2050;
      v77 = v28;
      _os_log_impl(&dword_1DF2C3000, p_super, OS_LOG_TYPE_DEFAULT, "[u %{public}@:p %{public}@:c %@(%{public}llu):i%llu] Successfully updated schema from (%{public}@) → (%{public}@), actions count = %{public}lu", buf, 0x52u);
      if (v26)
      {
      }

      versionCopy = v54;
    }
  }

  else
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v56 = versionCopy;
      uuid2 = [metadata uuid];
      containerPath3 = [metadata containerPath];
      containerPathIdentifier3 = [containerPath3 containerPathIdentifier];
      identifier3 = [metadata identifier];
      containerClass3 = [metadata containerClass];
      v37 = [metadata conformsToProtocol:&unk_1F5A81C70];
      if (v37)
      {
        fsNode2 = [metadata fsNode];
        inode3 = [fsNode2 inode];
      }

      else
      {
        inode3 = 0;
      }

      v41 = [v12 count];
      *buf = 138545410;
      v63 = uuid2;
      v64 = 2114;
      v65 = containerPathIdentifier3;
      v66 = 2112;
      v67 = identifier3;
      v68 = 2050;
      v69 = containerClass3;
      v70 = 2048;
      v71 = inode3;
      v72 = 2114;
      versionCopy = v56;
      v73 = v56;
      v74 = 2114;
      v75 = targetVersionCopy;
      v76 = 2050;
      v77 = v41;
      v78 = 2114;
      v79 = v23;
      _os_log_error_impl(&dword_1DF2C3000, p_super, OS_LOG_TYPE_ERROR, "[u %{public}@:p %{public}@:c %@(%{public}llu):i%llu] Could not update schema from (%{public}@) → (%{public}@), actions count = %{public}lu, error = %{public}@", buf, 0x5Cu);
      if (v37)
      {
      }
    }

    p_super = &v13->super;
    v13 = [[MCMError alloc] initWithNSError:v23 url:0 defaultErrorType:104];
  }

  v29 = container_log_handle_for_category();
  v15 = v29;
  if (v19 > 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_28;
  }

  error = errorCopy2;
  if (os_signpost_enabled(v29))
  {
    identifier4 = [metadata identifier];
    *buf = 138477827;
    v63 = identifier4;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v15, OS_SIGNPOST_INTERVAL_END, spid, "SchemaUpdate", " identifier=%{private, signpost.description:attribute}@ ", buf, 0xCu);
  }

LABEL_29:

  if (error && !v22)
  {
    v39 = v13;
    *error = v13;
  }

  return v22;
}

- (MCMContainerSchema)initWithMetadata:(id)metadata finalContainerPath:(id)path dataProtectionClass:(int)class libraryRepair:(id)repair
{
  v31 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  pathCopy = path;
  repairCopy = repair;
  v30.receiver = self;
  v30.super_class = MCMContainerSchema;
  v14 = [(MCMContainerSchema *)&v30 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_metadata, metadata);
    containerPath = [metadataCopy containerPath];
    containerClass = [metadataCopy containerClass];
    containerPath2 = [metadataCopy containerPath];
    schemaPOSIXMode = [containerPath2 schemaPOSIXMode];

    containerPath3 = [metadataCopy containerPath];
    schemaPOSIXOwner = [containerPath3 schemaPOSIXOwner];

    identifier = [metadataCopy identifier];
    v19 = containermanager_copy_global_configuration();
    defaultUser = [v19 defaultUser];
    homeDirectoryURL = [defaultUser homeDirectoryURL];
    LODWORD(v25) = class;
    v22 = [MCMContainerSchemaContext contextWithHomeDirectoryURL:homeDirectoryURL containerPath:containerPath finalContainerPath:pathCopy POSIXMode:schemaPOSIXMode POSIXOwner:schemaPOSIXOwner containerClass:containerClass dataProtectionClass:v25 libraryRepair:repairCopy identifier:identifier];
    context = v15->_context;
    v15->_context = v22;
  }

  return v15;
}

+ (id)containerSchemaWithMetadata:(id)metadata finalContainerPath:(id)path dataProtectionClass:(int)class libraryRepair:(id)repair
{
  v6 = *&class;
  repairCopy = repair;
  pathCopy = path;
  metadataCopy = metadata;
  v13 = [[self alloc] initWithMetadata:metadataCopy finalContainerPath:pathCopy dataProtectionClass:v6 libraryRepair:repairCopy];

  return v13;
}

+ (BOOL)schemaIsUpToDateForIdentifier:(id)identifier containerClass:(unint64_t)class currentSchemaVersion:(id)version latestSchemaVersion:(id *)schemaVersion
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  versionCopy = version;
  v11 = MCMContainerSchemaDefinitionForClass(class);
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];

  if ([versionCopy compare:v12])
  {
    if ([versionCopy compare:v12] != 1)
    {
      v14 = 0;
      if (!schemaVersion)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 138413058;
      v18 = identifierCopy;
      v19 = 2048;
      classCopy = class;
      v21 = 2112;
      v22 = versionCopy;
      v23 = 2112;
      v24 = v12;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "[%@(%llu)] Current schema version (%@) is newer than the latest (%@), ignoring.", &v17, 0x2Au);
    }
  }

  v14 = 1;
  if (schemaVersion)
  {
LABEL_7:
    v15 = v12;
    *schemaVersion = v12;
  }

LABEL_8:

  return v14;
}

@end