@interface WFTrackedFilesystemNode
- (WFTrackedFilesystemNode)initWithIdentifier:(id)identifier bookmark:(id)bookmark fileData:(id)data isDirectory:(BOOL)directory ignoringSubfolders:(BOOL)subfolders triggersData:(id)triggersData;
- (WFTrackedFilesystemNode)initWithIdentifier:(id)identifier bookmark:(id)bookmark files:(id)files isDirectory:(BOOL)directory ignoringSubfolders:(BOOL)subfolders triggerIdentifiers:(id)identifiers;
@end

@implementation WFTrackedFilesystemNode

- (WFTrackedFilesystemNode)initWithIdentifier:(id)identifier bookmark:(id)bookmark files:(id)files isDirectory:(BOOL)directory ignoringSubfolders:(BOOL)subfolders triggerIdentifiers:(id)identifiers
{
  bookmarkCopy = bookmark;
  filesCopy = files;
  identifiersCopy = identifiers;
  v26.receiver = self;
  v26.super_class = WFTrackedFilesystemNode;
  v17 = [(WFTrackedFilesystemNode *)&v26 initWithIdentifier:identifier objectType:11];
  if (v17)
  {
    v18 = [bookmarkCopy copy];
    bookmark = v17->_bookmark;
    v17->_bookmark = v18;

    v20 = [filesCopy copy];
    files = v17->_files;
    v17->_files = v20;

    v22 = [identifiersCopy copy];
    listeningTriggers = v17->_listeningTriggers;
    v17->_listeningTriggers = v22;

    v17->_isDirectory = directory;
    v17->_ignoringSubfolders = subfolders;
    v24 = v17;
  }

  return v17;
}

- (WFTrackedFilesystemNode)initWithIdentifier:(id)identifier bookmark:(id)bookmark fileData:(id)data isDirectory:(BOOL)directory ignoringSubfolders:(BOOL)subfolders triggersData:(id)triggersData
{
  v51[4] = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  dataCopy = data;
  triggersDataCopy = triggersData;
  v45.receiver = self;
  v45.super_class = WFTrackedFilesystemNode;
  v17 = [(WFTrackedFilesystemNode *)&v45 initWithIdentifier:identifier objectType:11];
  if (v17)
  {
    directoryCopy = directory;
    subfoldersCopy = subfolders;
    v18 = [bookmarkCopy copy];
    bookmark = v17->_bookmark;
    v17->_bookmark = v18;

    v20 = MEMORY[0x1E696ACD0];
    v21 = MEMORY[0x1E695DFD8];
    v51[0] = objc_opt_class();
    v51[1] = objc_opt_class();
    v51[2] = objc_opt_class();
    v51[3] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:4];
    v23 = [v21 setWithArray:v22];
    v44 = 0;
    v24 = [v20 unarchivedObjectOfClasses:v23 fromData:dataCopy error:&v44];
    v25 = v44;

    if (v25)
    {
      v26 = getWFFilesystemEventsLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v25 localizedDescription];
        *buf = 136315394;
        v48 = "[WFTrackedFilesystemNode initWithIdentifier:bookmark:fileData:isDirectory:ignoringSubfolders:triggersData:]";
        v49 = 2112;
        v50 = localizedDescription;
        _os_log_impl(&dword_1CA256000, v26, OS_LOG_TYPE_ERROR, "%s Error unarchiving file data: %@", buf, 0x16u);
      }

      v28 = 0;
    }

    else
    {
      v29 = [v24 copy];
      files = v17->_files;
      v17->_files = v29;

      v31 = MEMORY[0x1E696ACD0];
      v32 = MEMORY[0x1E695DFD8];
      v46[0] = objc_opt_class();
      v46[1] = objc_opt_class();
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
      v34 = [v32 setWithArray:v33];
      v43 = 0;
      v35 = [v31 unarchivedObjectOfClasses:v34 fromData:triggersDataCopy error:&v43];
      v26 = v43;

      if (v26)
      {
        v36 = getWFFilesystemEventsLogObject();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          localizedDescription2 = [v26 localizedDescription];
          *buf = 136315394;
          v48 = "[WFTrackedFilesystemNode initWithIdentifier:bookmark:fileData:isDirectory:ignoringSubfolders:triggersData:]";
          v49 = 2112;
          v50 = localizedDescription2;
          _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_ERROR, "%s Error unarchiving trigger identifiers data: %@", buf, 0x16u);
        }

        v28 = 0;
      }

      else
      {
        v38 = [v35 copy];
        listeningTriggers = v17->_listeningTriggers;
        v17->_listeningTriggers = v38;

        v17->_isDirectory = directoryCopy;
        v17->_ignoringSubfolders = subfoldersCopy;
        v28 = v17;
      }
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

@end