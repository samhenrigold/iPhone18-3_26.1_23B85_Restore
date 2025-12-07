@interface WFSharedShortcut
+ (NSDictionary)properties;
- (WFWorkflowIcon)icon;
- (WFWorkflowRecord)workflowRecord;
- (id)ensureFileAssets;
- (id)propertiesForEventLogging;
- (id)sharingURL;
- (void)setCreatedAt:(id)at modifiedAt:(id)modifiedAt createdBy:(id)by;
- (void)setIcon:(id)icon;
@end

@implementation WFSharedShortcut

+ (NSDictionary)properties
{
  v15[7] = *MEMORY[0x1E69E9840];
  v14[0] = @"name";
  v13 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v15[0] = v13;
  v14[1] = @"icon_color";
  v2 = [WFCloudKitItemProperty objectPropertyWithName:@"iconColor"];
  v15[1] = v2;
  v14[2] = @"icon_glyph";
  v3 = [WFCloudKitItemProperty objectPropertyWithName:@"iconGlyph"];
  v15[2] = v3;
  v14[3] = @"icon";
  v4 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982E30]];
  v5 = [WFCloudKitItemProperty assetPropertyWithName:@"iconFile" fileType:v4 ignoredByDefault:1 encrypted:0];
  v15[3] = v5;
  v14[4] = @"shortcut";
  v6 = [MEMORY[0x1E69E0AF8] typeWithString:@"com.apple.shortcuts.workflow-file"];
  v7 = [WFCloudKitItemProperty assetPropertyWithName:@"shortcutFile" fileType:v6];
  v15[4] = v7;
  v14[5] = @"signedShortcut";
  v8 = [MEMORY[0x1E69E0AF8] typeWithString:@"com.apple.shortcut"];
  v9 = [WFCloudKitItemProperty assetPropertyWithName:@"signedShortcutFile" fileType:v8];
  v15[5] = v9;
  v14[6] = @"signingStatus";
  v10 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v15[6] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:7];

  return v11;
}

- (id)propertiesForEventLogging
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"workflow_identifier";
  identifier = [(WFSharedShortcut *)self identifier];
  recordName = [identifier recordName];
  v10[0] = recordName;
  v9[1] = @"workflow_name";
  name = [(WFSharedShortcut *)self name];
  v10[1] = name;
  v9[2] = @"workflow_record_type";
  recordType = [objc_opt_class() recordType];
  v10[2] = recordType;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (id)sharingURL
{
  identifier = [(WFSharedShortcut *)self identifier];
  recordName = [identifier recordName];
  v4 = WFGallerySharingURLForIdentifier(recordName);

  return v4;
}

- (void)setCreatedAt:(id)at modifiedAt:(id)modifiedAt createdBy:(id)by
{
  objc_storeStrong(&self->_createdAt, at);
  atCopy = at;
  byCopy = by;
  v9 = [byCopy copy];

  createdBy = self->_createdBy;
  self->_createdBy = v9;
}

- (id)ensureFileAssets
{
  if (self->_workflowRecord)
  {
    workflowRecord = [(WFSharedShortcut *)self workflowRecord];
    fileRepresentation = [workflowRecord fileRepresentation];

    identifier = [(WFSharedShortcut *)self identifier];
    recordName = [identifier recordName];
    [fileRepresentation setName:recordName];

    v7 = [fileRepresentation writeToDiskWithError:0];
    [(WFSharedShortcut *)self setShortcutFile:v7];
  }

  icon = [(WFSharedShortcut *)self icon];

  if (icon)
  {
    v9 = objc_alloc(MEMORY[0x1E69E0E08]);
    icon2 = [(WFSharedShortcut *)self icon];
    v11 = [v9 initWithIcon:icon2];

    [v11 setCornerRadius:8.0];
    v12 = [v11 imageWithSize:{150.0, 150.0}];
    v13 = MEMORY[0x1E6996E20];
    pNGRepresentation = [v12 PNGRepresentation];
    v15 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982F28]];
    v16 = [v13 fileWithData:pNGRepresentation ofType:v15 proposedFilename:0];
    [(WFSharedShortcut *)self setIconFile:v16];
  }

  else
  {
    [(WFSharedShortcut *)self setIconFile:0];
  }

  return 0;
}

- (void)setIcon:(id)icon
{
  v4 = MEMORY[0x1E696AD98];
  iconCopy = icon;
  v6 = [v4 numberWithInteger:{objc_msgSend(iconCopy, "backgroundColorValue")}];
  [(WFSharedShortcut *)self setIconColor:v6];

  v7 = MEMORY[0x1E696AD98];
  glyphCharacter = [iconCopy glyphCharacter];

  v9 = [v7 numberWithUnsignedShort:glyphCharacter];
  [(WFSharedShortcut *)self setIconGlyph:v9];
}

- (WFWorkflowRecord)workflowRecord
{
  v34 = *MEMORY[0x1E69E9840];
  if (self->_workflowRecord)
  {
    goto LABEL_2;
  }

  signedShortcutFile = [(WFSharedShortcut *)self signedShortcutFile];

  if (!signedShortcutFile)
  {
    goto LABEL_2;
  }

  signedShortcutFile2 = [(WFSharedShortcut *)self signedShortcutFile];

  if (!signedShortcutFile2)
  {
    v25 = getWFGeneralLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v31 = "[WFSharedShortcut workflowRecord]";
      _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_ERROR, "%s WFSharedShortcut doesn't have signed shortcut file", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v6 = [WFShortcutPackageFile alloc];
  signedShortcutFile3 = [(WFSharedShortcut *)self signedShortcutFile];
  data = [signedShortcutFile3 data];
  name = [(WFSharedShortcut *)self name];
  v10 = [(WFShortcutPackageFile *)v6 initWithSignedShortcutData:data shortcutName:name];

  v29 = 0;
  v11 = [(WFShortcutPackageFile *)v10 extractShortcutFileRepresentationWithError:&v29];
  v12 = v29;
  if (!v11 || ([(WFSharedShortcut *)self signingStatus], v13 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v13), v13, (isEqualToString & 1) == 0))
  {
    v24 = getWFGeneralLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[WFSharedShortcut workflowRecord]";
      v32 = 2114;
      v33 = v12;
      _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_ERROR, "%s WFSharedShortcut was unable to verify signed shortcut: %{public}@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  v15 = [WFWorkflowFileDescriptor alloc];
  name2 = [(WFSharedShortcut *)self name];
  v17 = [(WFWorkflowFileDescriptor *)v15 initWithFile:v11 name:name2];

  v28 = 0;
  v18 = [[WFWorkflowFile alloc] initWithDescriptor:v17 error:&v28];
  v19 = v28;
  v27 = v19;
  v20 = [(WFWorkflowFile *)v18 recordRepresentationWithError:&v27];
  v21 = v27;

  [v20 setSource:@"ShortcutSourceCloudLink"];
  if (v20)
  {
    v22 = v20;
    p_super = &self->_workflowRecord->super.super;
    self->_workflowRecord = v22;
  }

  else
  {
    p_super = getWFGeneralLogObject();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[WFSharedShortcut workflowRecord]";
      v32 = 2114;
      v33 = v21;
      _os_log_impl(&dword_1CA256000, p_super, OS_LOG_TYPE_ERROR, "%s WFSharedShortcut was unable to load record from shortcut file: %{public}@", buf, 0x16u);
    }
  }

  if (v20)
  {
LABEL_2:
    v3 = self->_workflowRecord;
    goto LABEL_16;
  }

LABEL_15:
  v3 = 0;
LABEL_16:

  return v3;
}

- (WFWorkflowIcon)icon
{
  iconGlyph = [(WFSharedShortcut *)self iconGlyph];
  iconColor = [(WFSharedShortcut *)self iconColor];
  if (!iconGlyph)
  {
    iconGlyph = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(MEMORY[0x1E69E0E00], "defaultGlyphCharacter")}];
  }

  if (iconColor)
  {
    v5 = iconColor;
  }

  else
  {
    v5 = &unk_1F4A9A588;
  }

  v6 = objc_alloc(MEMORY[0x1E69E0E00]);
  iconColor2 = [(WFSharedShortcut *)self iconColor];
  integerValue = [iconColor2 integerValue];
  iconGlyph2 = [(WFSharedShortcut *)self iconGlyph];
  v10 = [v6 initWithBackgroundColorValue:integerValue glyphCharacter:objc_msgSend(iconGlyph2 customImageData:{"unsignedIntegerValue"), 0}];

  return v10;
}

@end