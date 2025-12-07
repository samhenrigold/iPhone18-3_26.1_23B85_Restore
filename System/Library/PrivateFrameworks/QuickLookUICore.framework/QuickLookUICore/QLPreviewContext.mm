@interface QLPreviewContext
- (BOOL)isEqual:(id)equal;
- (QLPreviewContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLPreviewContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    thumbnailGenerator = [(QLPreviewContext *)self thumbnailGenerator];
    thumbnailGenerator2 = [v5 thumbnailGenerator];
    v8 = __18__QLItem_isEqual___block_invoke(thumbnailGenerator2, thumbnailGenerator, thumbnailGenerator2);

    if (v8
      && (-[QLPreviewContext previewTitle](self, "previewTitle"), v9 = objc_claimAutoreleasedReturnValue(), [v5 previewTitle], v10 = objc_claimAutoreleasedReturnValue(), v11 = __18__QLItem_isEqual___block_invoke(v10, v9, v10), v10, v9, v11)
      && (-[QLPreviewContext contentType](self, "contentType"), v12 = objc_claimAutoreleasedReturnValue(), [v5 contentType], v13 = objc_claimAutoreleasedReturnValue(), v14 = __18__QLItem_isEqual___block_invoke(v13, v12, v13), v13, v12, v14)
      && (-[QLPreviewContext originalContentType](self, "originalContentType"), v15 = objc_claimAutoreleasedReturnValue(), [v5 originalContentType], v16 = objc_claimAutoreleasedReturnValue(), v17 = __18__QLItem_isEqual___block_invoke(v16, v15, v16), v16, v15, v17)
      && (v18 = -[QLPreviewContext canBeEdited](self, "canBeEdited"), v18 == [v5 canBeEdited])
      && (v19 = -[QLPreviewContext canBeShared](self, "canBeShared"), v19 == [v5 canBeShared])
      && (v20 = -[QLPreviewContext editedFileBehavior](self, "editedFileBehavior"), v20 == [v5 editedFileBehavior])
      && (v21 = -[QLPreviewContext previewItemType](self, "previewItemType"), v21 == [v5 previewItemType])
      && (-[QLPreviewContext backgroundColor](self, "backgroundColor"), v22 = objc_claimAutoreleasedReturnValue(), [v5 backgroundColor], v23 = objc_claimAutoreleasedReturnValue(), v24 = __18__QLItem_isEqual___block_invoke(v23, v22, v23), v23, v22, v24)
      && (-[QLPreviewContext password](self, "password"), v25 = objc_claimAutoreleasedReturnValue(), [v5 password], v26 = objc_claimAutoreleasedReturnValue(), v27 = __18__QLItem_isEqual___block_invoke(v26, v25, v26), v26, v25, v27)
      && (-[QLPreviewContext itemSize](self, "itemSize"), v28 = objc_claimAutoreleasedReturnValue(), [v5 itemSize], v29 = objc_claimAutoreleasedReturnValue(), v30 = __18__QLItem_isEqual___block_invoke(v29, v28, v29), v29, v28, v30)
      && (v31 = -[QLPreviewContext processIdentifier](self, "processIdentifier"), v31 == [v5 processIdentifier])
      && (-[QLPreviewContext clientPreviewOptions](self, "clientPreviewOptions"), v32 = objc_claimAutoreleasedReturnValue(), [v5 clientPreviewOptions], v33 = objc_claimAutoreleasedReturnValue(), v34 = __18__QLItem_isEqual___block_invoke(v33, v32, v33), v33, v32, v34)
      && (-[QLPreviewContext clientPreviewItemDisplayState](self, "clientPreviewItemDisplayState"), v35 = objc_claimAutoreleasedReturnValue(), [v5 clientPreviewItemDisplayState], v36 = objc_claimAutoreleasedReturnValue(), v37 = __18__QLItem_isEqual___block_invoke(v36, v35, v36), v36, v35, v37)
      && (v38 = -[QLPreviewContext stringEncoding](self, "stringEncoding"), v38 == [v5 stringEncoding])
      && (-[QLPreviewContext attachments](self, "attachments"), v39 = objc_claimAutoreleasedReturnValue(), [v5 attachments], v40 = objc_claimAutoreleasedReturnValue(), v41 = __18__QLItem_isEqual___block_invoke(v40, v39, v40), v40, v39, v41)
      && (-[QLPreviewContext bitmapFormat](self, "bitmapFormat"), v42 = objc_claimAutoreleasedReturnValue(), [v5 bitmapFormat], v43 = objc_claimAutoreleasedReturnValue(), v44 = __18__QLItem_isEqual___block_invoke(v43, v42, v43), v43, v42, v44))
    {
      viewDynamicRange = [(QLPreviewContext *)self viewDynamicRange];
      v46 = viewDynamicRange == [v5 viewDynamicRange];
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  thumbnailGenerator = [(QLPreviewContext *)self thumbnailGenerator];

  if (thumbnailGenerator)
  {
    thumbnailGenerator2 = [(QLPreviewContext *)self thumbnailGenerator];
    [coderCopy encodeObject:thumbnailGenerator2 forKey:@"thumbnailGenerator"];
  }

  previewTitle = [(QLPreviewContext *)self previewTitle];

  if (previewTitle)
  {
    previewTitle2 = [(QLPreviewContext *)self previewTitle];
    [coderCopy encodeObject:previewTitle2 forKey:@"previewTitle"];
  }

  contentType = [(QLPreviewContext *)self contentType];

  if (contentType)
  {
    contentType2 = [(QLPreviewContext *)self contentType];
    [coderCopy encodeObject:contentType2 forKey:@"contentType"];
  }

  originalContentType = [(QLPreviewContext *)self originalContentType];

  if (originalContentType)
  {
    originalContentType2 = [(QLPreviewContext *)self originalContentType];
    [coderCopy encodeObject:originalContentType2 forKey:@"originalContentType"];
  }

  itemSize = [(QLPreviewContext *)self itemSize];

  if (itemSize)
  {
    itemSize2 = [(QLPreviewContext *)self itemSize];
    [coderCopy encodeObject:itemSize2 forKey:@"itemSize"];
  }

  backgroundColor = [(QLPreviewContext *)self backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [(QLPreviewContext *)self backgroundColor];
    [coderCopy encodeObject:backgroundColor2 forKey:@"backgroundColor"];
  }

  password = [(QLPreviewContext *)self password];

  if (password)
  {
    password2 = [(QLPreviewContext *)self password];
    [coderCopy encodeObject:password2 forKey:@"password"];
  }

  clientPreviewOptions = [(QLPreviewContext *)self clientPreviewOptions];

  if (clientPreviewOptions)
  {
    clientPreviewOptions2 = [(QLPreviewContext *)self clientPreviewOptions];
    [coderCopy encodeObject:clientPreviewOptions2 forKey:@"clientPreviewOptions"];
  }

  clientPreviewItemDisplayState = [(QLPreviewContext *)self clientPreviewItemDisplayState];

  if (clientPreviewItemDisplayState)
  {
    clientPreviewItemDisplayState2 = [(QLPreviewContext *)self clientPreviewItemDisplayState];
    [coderCopy encodeObject:clientPreviewItemDisplayState2 forKey:@"clientPreviewItemDisplayState"];
  }

  [coderCopy encodeInteger:-[QLPreviewContext previewItemType](self forKey:{"previewItemType"), @"previewItemType"}];
  [coderCopy encodeBool:-[QLPreviewContext canBeEdited](self forKey:{"canBeEdited"), @"canBeEdited"}];
  [coderCopy encodeBool:-[QLPreviewContext canBeShared](self forKey:{"canBeShared"), @"canBeShared"}];
  [coderCopy encodeInteger:-[QLPreviewContext editedFileBehavior](self forKey:{"editedFileBehavior"), @"editedFileBehavior"}];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [coderCopy encodeInteger:objc_msgSend(processInfo forKey:{"processIdentifier"), @"processIdentifier"}];

  [coderCopy encodeInteger:-[QLPreviewContext stringEncoding](self forKey:{"stringEncoding"), @"stringEncoding"}];
  attachments = [(QLPreviewContext *)self attachments];

  if (attachments)
  {
    attachments2 = [(QLPreviewContext *)self attachments];
    [coderCopy encodeObject:attachments2 forKey:@"attachments"];
  }

  bitmapFormat = [(QLPreviewContext *)self bitmapFormat];

  if (bitmapFormat)
  {
    bitmapFormat2 = [(QLPreviewContext *)self bitmapFormat];
    [coderCopy encodeObject:bitmapFormat2 forKey:@"bitmapFormat"];
  }

  [coderCopy encodeInteger:-[QLPreviewContext viewDynamicRange](self forKey:{"viewDynamicRange"), @"viewDynamicRange"}];
}

- (QLPreviewContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = QLPreviewContext;
  v5 = [(QLPreviewContext *)&v35 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailGenerator"];
    thumbnailGenerator = v5->_thumbnailGenerator;
    v5->_thumbnailGenerator = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previewTitle"];
    previewTitle = v5->_previewTitle;
    v5->_previewTitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
    contentType = v5->_contentType;
    v5->_contentType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalContentType"];
    originalContentType = v5->_originalContentType;
    v5->_originalContentType = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemSize"];
    itemSize = v5->_itemSize;
    v5->_itemSize = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"password"];
    password = v5->_password;
    v5->_password = v18;

    v5->_previewItemType = [coderCopy decodeIntegerForKey:@"previewItemType"];
    v5->_canBeEdited = [coderCopy decodeBoolForKey:@"canBeEdited"];
    v5->_canBeShared = [coderCopy decodeBoolForKey:@"canBeShared"];
    v5->_editedFileBehavior = [coderCopy decodeIntegerForKey:@"editedFileBehavior"];
    v5->_processIdentifier = [coderCopy decodeIntegerForKey:@"processIdentifier"];
    v20 = +[QLItem customExtensionCommunicationEncodedClasses];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"clientPreviewOptions"];
    clientPreviewOptions = v5->_clientPreviewOptions;
    v5->_clientPreviewOptions = v21;

    v23 = +[QLItem customExtensionCommunicationEncodedClasses];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"clientPreviewItemDisplayState"];
    clientPreviewItemDisplayState = v5->_clientPreviewItemDisplayState;
    v5->_clientPreviewItemDisplayState = v24;

    v5->_stringEncoding = [coderCopy decodeIntegerForKey:@"stringEncoding"];
    v26 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"attachments"];
    attachments = v5->_attachments;
    v5->_attachments = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bitmapFormat"];
    bitmapFormat = v5->_bitmapFormat;
    v5->_bitmapFormat = v31;

    v5->_viewDynamicRange = [coderCopy decodeIntegerForKey:@"viewDynamicRange"];
    v33 = v5;
  }

  return v5;
}

@end