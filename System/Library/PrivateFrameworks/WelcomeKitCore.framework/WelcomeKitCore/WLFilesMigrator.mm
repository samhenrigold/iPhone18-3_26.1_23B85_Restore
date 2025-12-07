@interface WLFilesMigrator
- (WLFeaturePayload)featurePayload;
- (WLFilesMigrator)init;
- (id)importWillBegin;
- (void)addWorkingTime:(unint64_t)time;
- (void)enable;
- (void)importRecordData:(id)data summary:(id)summary account:(id)account completion:(id)completion;
- (void)setEstimatedDataSize:(unint64_t)size;
- (void)setState:(id)state;
@end

@implementation WLFilesMigrator

- (WLFilesMigrator)init
{
  v6.receiver = self;
  v6.super_class = WLFilesMigrator;
  v2 = [(WLFilesMigrator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(WLFileProvider);
    fetchRootPath = [(WLFileProvider *)v3 fetchRootPath];

    if (fetchRootPath)
    {
      [(WLFilesMigrator *)v2 setRootPath:fetchRootPath];
    }

    else
    {
      _WLLog();
    }
  }

  return v2;
}

- (void)enable
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setEnabled:1];

  v4 = objc_loadWeakRetained(&self->_featurePayload);
  [v4 setState:@"enabled"];
}

- (void)setState:(id)state
{
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setState:stateCopy];
}

- (void)setEstimatedDataSize:(unint64_t)size
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:size];
}

- (void)addWorkingTime:(unint64_t)time
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setElapsedTime:{objc_msgSend(WeakRetained, "elapsedTime") + time}];
}

- (id)importWillBegin
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:0];

  return 0;
}

- (void)importRecordData:(id)data summary:(id)summary account:(id)account completion:(id)completion
{
  v69[1] = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  completionCopy = completion;
  if ([summaryCopy itemSize] && self->_rootPath)
  {
    bucket = [summaryCopy bucket];

    if (bucket)
    {
      bucket2 = [summaryCopy bucket];
      pathComponents = [bucket2 pathComponents];

      if ([pathComponents count] > 1)
      {
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v52 = pathComponents;
        v21 = pathComponents;
        v22 = [v21 countByEnumeratingWithState:&v55 objects:v65 count:16];
        if (!v22)
        {
LABEL_20:

          WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
          [WeakRetained setCount:{objc_msgSend(WeakRetained, "count") + 1}];

          v28 = objc_loadWeakRetained(&self->_featurePayload);
          [v28 setSize:{objc_msgSend(v28, "size") + objc_msgSend(summaryCopy, "itemSize")}];

          dataFilePath = [summaryCopy dataFilePath];
          rootPath = self->_rootPath;
          bucket3 = [summaryCopy bucket];
          v31 = [(NSString *)rootPath stringByAppendingPathComponent:bucket3];

          stringByDeletingLastPathComponent = [v31 stringByDeletingLastPathComponent];
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v34 = [defaultManager fileExistsAtPath:stringByDeletingLastPathComponent];

          if ((v34 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v35 = objc_claimAutoreleasedReturnValue(), v54 = 0, objc_msgSend(v35, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", stringByDeletingLastPathComponent, 1, 0, &v54), v36 = v54, v35, !v36))
          {
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            v45 = [defaultManager2 fileExistsAtPath:v31];

            if ((v45 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v46 = objc_claimAutoreleasedReturnValue(), v53 = 0, objc_msgSend(v46, "moveItemAtPath:toPath:error:", dataFilePath, v31, &v53), v36 = v53, v46, !v36))
            {
              if (completionCopy)
              {
                completionCopy[2](completionCopy, 1, 0);
              }

              v36 = 0;
            }

            else
            {
              _WLLog();
              if (completionCopy)
              {
                v47 = MEMORY[0x277CCA9B8];
                v48 = *MEMORY[0x277D7B8F8];
                v59 = *MEMORY[0x277CCA450];
                v60 = @"NSFileManager could not move a file.";
                v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
                v50 = [v47 errorWithDomain:v48 code:1 userInfo:v49];

                (completionCopy)[2](completionCopy, 1, v50);
              }
            }
          }

          else
          {
            _WLLog();
            if (completionCopy)
            {
              v37 = MEMORY[0x277CCA9B8];
              v38 = *MEMORY[0x277D7B8F8];
              v61 = *MEMORY[0x277CCA450];
              v62 = @"NSFileManager could not create a directory with intermediate directories.";
              v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
              v40 = [v37 errorWithDomain:v38 code:1 userInfo:v39];

              (completionCopy)[2](completionCopy, 0, v40);
            }
          }

          pathComponents = v52;

          goto LABEL_35;
        }

        v23 = v22;
        v24 = *v56;
        v51 = summaryCopy;
LABEL_13:
        v25 = 0;
        while (1)
        {
          if (*v56 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v55 + 1) + 8 * v25);
          if ([v26 isEqualToString:{@"..", v51}] & 1) != 0 || (objc_msgSend(v26, "isEqualToString:", @"~"))
          {
            break;
          }

          if (v23 == ++v25)
          {
            v23 = [v21 countByEnumeratingWithState:&v55 objects:v65 count:16];
            summaryCopy = v51;
            if (v23)
            {
              goto LABEL_13;
            }

            goto LABEL_20;
          }
        }

        _WLLog();
        summaryCopy = v51;
        pathComponents = v52;
        if (!completionCopy)
        {
          goto LABEL_36;
        }

        v41 = MEMORY[0x277CCA9B8];
        v42 = *MEMORY[0x277D7B900];
        v63 = *MEMORY[0x277CCA450];
        v64 = @"WLFilesMigrator cannot move a file to a restricted path.";
        v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        dataFilePath = [v41 errorWithDomain:v42 code:6 userInfo:v43];
      }

      else
      {
        _WLLog();
        if (!completionCopy)
        {
LABEL_36:

          goto LABEL_37;
        }

        v13 = MEMORY[0x277CCA9B8];
        v14 = *MEMORY[0x277D7B900];
        v66 = *MEMORY[0x277CCA450];
        v67 = @"WLFilesMigrator cannot move a file to a restricted path.";
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        dataFilePath = [v13 errorWithDomain:v14 code:6 userInfo:v15];
      }

      (completionCopy)[2](completionCopy, 0, dataFilePath);
LABEL_35:

      goto LABEL_36;
    }

    _WLLog();
    if (completionCopy)
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277D7B8F8];
      v68 = *MEMORY[0x277CCA450];
      v69[0] = @"Bucket is not specified and it can not import the file.";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:&v68 count:1];
      v20 = [v17 errorWithDomain:v18 code:1 userInfo:v19];

      (completionCopy)[2](completionCopy, 0, v20);
    }
  }

  else
  {
    _WLLog();
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

LABEL_37:
}

- (WLFeaturePayload)featurePayload
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);

  return WeakRetained;
}

@end