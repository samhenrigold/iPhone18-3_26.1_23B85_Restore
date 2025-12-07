@interface DSFilesystemMetadataSnapshotService
+ (id)_validateOptions:(id)options error:(id *)error;
- (id)generateFilesystemMetadataSnapshotWithOptions:(id)options reply:(id)reply;
@end

@implementation DSFilesystemMetadataSnapshotService

+ (id)_validateOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v6 = shared_filesystem_metadata_snapshot_service_log_handle(optionsCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v93 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Validating options: %{public}@", buf, 0xCu);
  }

  if (error)
  {
    *error = 0;
  }

  v7 = +[NSMutableDictionary dictionary];
  if (optionsCopy)
  {
    v8 = @"FilesystemMetadatSnapshotOptionShouldHashVolumeListings";
    if (![optionsCopy count])
    {
      goto LABEL_36;
    }

    errorCopy = error;
    v71 = v7;
    v91[0] = @"FilesystemMetadatSnapshotOptionMountPointsAllowListArray";
    v91[1] = @"FilesystemMetadatSnapshotOptionShouldHashVolumeListings";
    v9 = [NSArray arrayWithObjects:v91 count:2];
    allKeys = [optionsCopy allKeys];
    v11 = [NSSet setWithArray:allKeys];

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v12 = v11;
    v13 = [(__CFString *)v12 countByEnumeratingWithState:&v77 objects:v90 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v78;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v78 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v77 + 1) + 8 * i);
          if (([v9 containsObject:v17]& 1) == 0)
          {
            v20 = [NSString stringWithFormat:@"Unsupported snapshot option key '%@'", v17];
            v38 = [NSError alloc];
            v88 = NSLocalizedDescriptionKey;
            v89 = v20;
            v39 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
            v40 = [v38 initWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65541 userInfo:v39];

            v42 = shared_filesystem_metadata_snapshot_service_log_handle(v41);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              sub_1000300FC();
            }

            if (errorCopy)
            {
              v43 = v40;
              *errorCopy = v40;
            }

            v18 = v12;
            goto LABEL_66;
          }
        }

        v14 = [(__CFString *)v12 countByEnumeratingWithState:&v77 objects:v90 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v18 = @"FilesystemMetadatSnapshotOptionMountPointsAllowListArray";
    v19 = objc_opt_class();
    v20 = [optionsCopy objectForKeyedSubscript:v18];
    if (v20)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v44 = [NSString stringWithFormat:@"Unexpected type for snapshot option key %@ unexpected type %@, expected %@", v18, objc_opt_class(), v19];;
        v45 = [NSError alloc];
        v83 = NSLocalizedDescriptionKey;
        v84 = v44;
        v46 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v47 = [v45 initWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65541 userInfo:v46];

        v49 = shared_filesystem_metadata_snapshot_service_log_handle(v48);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_1000300FC();
        }

        if (errorCopy)
        {
          v50 = v47;
          *errorCopy = v47;
          v40 = v44;
        }

        else
        {
          v40 = v44;
          v50 = v47;
        }

LABEL_65:

LABEL_66:
        goto LABEL_67;
      }

      v66 = v18;
      v21 = +[NSMutableArray array];
      v72 = objc_opt_class();
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v67 = v20;
      v22 = v20;
      v23 = [v22 countByEnumeratingWithState:&v73 objects:v87 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v74;
        v69 = v22;
        while (2)
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v74 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v73 + 1) + 8 * j);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v68 = v21;
              v18 = v66;
              v51 = [NSString stringWithFormat:@"Unexpected type for array element for snapshot option key %@ unexpected type %@, expected %@", v66, objc_opt_class(), v72];;
              v52 = [NSError alloc];
              v85 = NSLocalizedDescriptionKey;
              v86 = v51;
              v53 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
              v54 = [v52 initWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65541 userInfo:v53];

              v56 = shared_filesystem_metadata_snapshot_service_log_handle(v55);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                sub_1000300FC();
              }

              v20 = v67;
              v40 = v68;
              if (errorCopy)
              {
                v57 = v54;
                *errorCopy = v54;
              }

              v50 = v69;
              goto LABEL_65;
            }

            v28 = v27;
            if ([v28 length] >= 2 && objc_msgSend(v28, "hasSuffix:", @"/"))
            {
              [v28 substringToIndex:{objc_msgSend(v28, "length") - 1}];
              v29 = v8;
              v30 = optionsCopy;
              v32 = v31 = v21;

              v28 = v32;
              v21 = v31;
              optionsCopy = v30;
              v8 = v29;
              v22 = v69;
            }

            [v21 addObject:v28];
          }

          v24 = [v22 countByEnumeratingWithState:&v73 objects:v87 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      v18 = v66;
      if ([v21 count])
      {
        [v71 setObject:v21 forKeyedSubscript:v66];
      }

      v20 = v67;
    }

    v8 = v8;
    v33 = objc_opt_class();
    v34 = [optionsCopy objectForKeyedSubscript:v8];
    if (!v34)
    {
LABEL_34:

      v7 = v71;
      goto LABEL_36;
    }

    if (objc_opt_isKindOfClass())
    {
      [v71 setObject:v34 forKeyedSubscript:v8];
      goto LABEL_34;
    }

    v58 = [NSString stringWithFormat:@"Unexpected type for snapshot option key %@ unexpected type %@, expected %@", v8, objc_opt_class(), v33];;
    v59 = [NSError alloc];
    v81 = NSLocalizedDescriptionKey;
    v82 = v58;
    v60 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    v61 = [v59 initWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65541 userInfo:v60];

    v63 = shared_filesystem_metadata_snapshot_service_log_handle(v62);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      sub_1000300FC();
    }

    if (errorCopy)
    {
      v64 = v61;
      *errorCopy = v61;
    }

LABEL_67:
    v37 = 0;
    v7 = v71;
    goto LABEL_68;
  }

  v8 = @"FilesystemMetadatSnapshotOptionShouldHashVolumeListings";
LABEL_36:
  v35 = [v7 objectForKeyedSubscript:v8];

  if (v35)
  {
    if (!v7)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v36 = [v7 setObject:&__kCFBooleanFalse forKeyedSubscript:v8];
    if (!v7)
    {
      goto LABEL_42;
    }
  }

  v36 = [v7 count];
  if (v36)
  {
    v36 = [v7 copy];
    v37 = v36;
    goto LABEL_43;
  }

LABEL_42:
  v37 = 0;
LABEL_43:
  v9 = shared_filesystem_metadata_snapshot_service_log_handle(v36);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v93 = v37;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Validated options: %{public}@", buf, 0xCu);
  }

LABEL_68:

  return v37;
}

- (id)generateFilesystemMetadataSnapshotWithOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  v7 = shared_filesystem_metadata_snapshot_service_log_handle(optionsCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Validating options", buf, 2u);
  }

  v22 = 0;
  v8 = [objc_opt_class() _validateOptions:optionsCopy error:&v22];

  v9 = v22;
  v10 = v9;
  if (v9)
  {
    v11 = shared_filesystem_metadata_snapshot_service_log_handle(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003016C();
    }

    v9 = replyCopy[2](replyCopy, 0, v10);
  }

  v12 = shared_filesystem_metadata_snapshot_service_log_handle(v9);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Creating snapshot request", buf, 2u);
  }

  v13 = [[DSSnapshotRequest alloc] initWithOptions:v8];
  v14 = shared_filesystem_metadata_snapshot_service_log_handle(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_1000301AC(v14);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000682C;
  block[3] = &unk_1000687B8;
  v20 = v13;
  v21 = replyCopy;
  v15 = replyCopy;
  v16 = v13;
  dispatch_async(&_dispatch_main_q, block);
  progress = [(DSSnapshotRequest *)v16 progress];

  return progress;
}

@end