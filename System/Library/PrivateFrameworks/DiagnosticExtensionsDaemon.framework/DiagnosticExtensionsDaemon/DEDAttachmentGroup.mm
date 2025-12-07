@interface DEDAttachmentGroup
+ (id)archivedClasses;
+ (id)groupWithDEGroup:(id)group identifier:(id)identifier;
+ (id)groupWithDictionary:(id)dictionary;
- (BOOL)isLocal;
- (DEDExtensionIdentifier)dedExtensionIdentifier;
- (NSString)description;
- (id)archiveName;
- (id)serialize;
- (id)totalFileSize;
@end

@implementation DEDAttachmentGroup

+ (id)groupWithDictionary:(id)dictionary
{
  v30 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = MEMORY[0x277CBEBC0];
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rootURL"];
    v7 = [v5 fileURLWithPath:v6];
    [v4 setRootURL:v7];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"displayName"];
    v9 = stringIfNil(v8);
    [v4 setDisplayName:v9];

    v10 = [dictionaryCopy objectForKeyedSubscript:@"extensionID"];
    v11 = stringIfNil(v10);
    [v4 setExtensionID:v11];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"deviceID"];
    v13 = stringIfNil(v12);
    [v4 setDeviceID:v13];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"attachmentItems"];
    if (v14)
    {
      v15 = [dictionaryCopy objectForKeyedSubscript:@"attachmentItems"];
    }

    else
    {
      v15 = &unk_285B899D0;
    }

    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v15, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [DEDAttachmentItem itemWithDictionary:*(*(&v25 + 1) + 8 * i), v25];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v19);
    }

    v23 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
    [v4 setAttachmentItems:v23];
  }

  return v4;
}

+ (id)groupWithDEGroup:(id)group identifier:(id)identifier
{
  v30 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  identifierCopy = identifier;
  v7 = objc_opt_new();
  if (v7)
  {
    rootURL = [groupCopy rootURL];
    [v7 setRootURL:rootURL];

    displayName = [groupCopy displayName];
    if (displayName)
    {
      displayName2 = [groupCopy displayName];
      [v7 setDisplayName:displayName2];
    }

    else
    {
      displayName2 = [v7 rootURL];
      lastPathComponent = [displayName2 lastPathComponent];
      [v7 setDisplayName:lastPathComponent];
    }

    [v7 setExtensionID:identifierCopy];
    v12 = +[DEDDevice currentDevice];
    identifier = [v12 identifier];
    [v7 setDeviceID:identifier];

    v14 = MEMORY[0x277CBEB18];
    attachmentItems = [groupCopy attachmentItems];
    v16 = [v14 arrayWithCapacity:{objc_msgSend(attachmentItems, "count")}];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    attachmentItems2 = [groupCopy attachmentItems];
    v18 = [attachmentItems2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(attachmentItems2);
          }

          v22 = [DEDAttachmentItem itemWithDEItem:*(*(&v25 + 1) + 8 * i)];
          [v16 addObject:v22];
        }

        v19 = [attachmentItems2 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v19);
    }

    v23 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
    [v7 setAttachmentItems:v23];
  }

  return v7;
}

- (id)totalFileSize
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  attachmentItems = [(DEDAttachmentGroup *)self attachmentItems];
  v3 = [attachmentItems countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(attachmentItems);
        }

        fileSize = [*(*(&v11 + 1) + 8 * i) fileSize];
        v5 += [fileSize integerValue];
      }

      v4 = [attachmentItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v5];

  return v9;
}

- (id)archiveName
{
  extensionID = [(DEDAttachmentGroup *)self extensionID];

  if (extensionID)
  {
    v4 = MEMORY[0x277CCACA8];
    extensionID2 = [(DEDAttachmentGroup *)self extensionID];
    [v4 stringWithFormat:@"%@.tar.gz", extensionID2];
  }

  else
  {
    attachmentItems = [(DEDAttachmentGroup *)self attachmentItems];
    v7 = [attachmentItems count];

    if (v7)
    {
      attachmentItems2 = [(DEDAttachmentGroup *)self attachmentItems];
      firstObject = [attachmentItems2 firstObject];
      attachedPath = [firstObject attachedPath];
      extensionID2 = [attachedPath lastPathComponent];
    }

    else
    {
      attachmentItems2 = [MEMORY[0x277CCAD78] UUID];
      extensionID2 = [attachmentItems2 UUIDString];
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"%@.tar.gz", extensionID2];
  }
  v11 = ;

  return v11;
}

- (id)serialize
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  attachmentItems = [(DEDAttachmentGroup *)self attachmentItems];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(attachmentItems, "count")}];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  attachmentItems2 = [(DEDAttachmentGroup *)self attachmentItems];
  v7 = [attachmentItems2 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(attachmentItems2);
        }

        serialize = [*(*(&v29 + 1) + 8 * i) serialize];
        [v5 addObject:serialize];
      }

      v8 = [attachmentItems2 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
  v33[0] = @"rootURL";
  rootURL = [(DEDAttachmentGroup *)self rootURL];
  path = [rootURL path];
  v26 = stringIfNil(path);
  v34[0] = v26;
  v33[1] = @"displayName";
  displayName = [(DEDAttachmentGroup *)self displayName];
  v13 = stringIfNil(displayName);
  v34[1] = v13;
  v33[2] = @"extensionID";
  extensionID = [(DEDAttachmentGroup *)self extensionID];
  v15 = stringIfNil(extensionID);
  v34[2] = v15;
  v33[3] = @"deviceID";
  deviceID = [(DEDAttachmentGroup *)self deviceID];
  v17 = stringIfNil(deviceID);
  v34[3] = v17;
  v33[4] = @"DEDExtensionID";
  dedExtensionIdentifier = [(DEDAttachmentGroup *)self dedExtensionIdentifier];
  stringValue = [dedExtensionIdentifier stringValue];
  v20 = stringIfNil(stringValue);
  v21 = v20;
  v33[5] = @"attachmentItems";
  v22 = MEMORY[0x277CBEBF8];
  if (v12)
  {
    v22 = v12;
  }

  v34[4] = v20;
  v34[5] = v22;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:6];

  return v24;
}

- (DEDExtensionIdentifier)dedExtensionIdentifier
{
  dedExtensionIdentifier = self->_dedExtensionIdentifier;
  if (!dedExtensionIdentifier)
  {
    v4 = [DEDExtensionIdentifier alloc];
    rootURL = [(DEDAttachmentGroup *)self rootURL];
    lastPathComponent = [rootURL lastPathComponent];
    v7 = [(DEDExtensionIdentifier *)v4 initWithString:lastPathComponent];
    v8 = self->_dedExtensionIdentifier;
    self->_dedExtensionIdentifier = v7;

    dedExtensionIdentifier = self->_dedExtensionIdentifier;
  }

  return dedExtensionIdentifier;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  serialize = [(DEDAttachmentGroup *)self serialize];
  v7 = [v3 stringWithFormat:@"%@: %@", v5, serialize];

  return v7;
}

- (BOOL)isLocal
{
  deviceID = [(DEDAttachmentGroup *)self deviceID];

  if (!deviceID)
  {
    v4 = +[DEDUtils sharedLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(DEDAttachmentGroup *)v4 isLocal];
    }
  }

  v5 = +[DEDDevice currentDevice];
  identifier = [v5 identifier];

  deviceID2 = [(DEDAttachmentGroup *)self deviceID];
  LOBYTE(v5) = [deviceID2 isEqualToString:identifier];

  return v5;
}

+ (id)archivedClasses
{
  if (archivedClasses_onceToken != -1)
  {
    +[DEDAttachmentGroup archivedClasses];
  }

  v3 = archivedClasses__outboundClasses;

  return v3;
}

void __37__DEDAttachmentGroup_archivedClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB58];
  v1 = objc_opt_class();
  v6 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v2 = +[DEDAttachmentItem archivedClasses];
  [v6 unionSet:v2];

  v3 = +[DEDExtensionIdentifier archivedClasses];
  [v6 unionSet:v3];

  v4 = [MEMORY[0x277CBEB98] setWithSet:v6];
  v5 = archivedClasses__outboundClasses;
  archivedClasses__outboundClasses = v4;
}

@end