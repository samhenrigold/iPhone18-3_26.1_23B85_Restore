@interface MKMessageAttachment
- (MKMessageAttachment)initWithID:(id)d contentType:(id)type base64Data:(id)data;
- (void)write;
@end

@implementation MKMessageAttachment

- (MKMessageAttachment)initWithID:(id)d contentType:(id)type base64Data:(id)data
{
  v45[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  typeCopy = type;
  dataCopy = data;
  v43.receiver = self;
  v43.super_class = MKMessageAttachment;
  v11 = [(MKMessageAttachment *)&v43 init];
  v12 = v11;
  if (v11)
  {
    [(MKMessageAttachment *)v11 setID:dCopy];
    [(MKMessageAttachment *)v12 setContentType:typeCopy];
    v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:dataCopy options:0];
    [(MKMessageAttachment *)v12 setData:v13];

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [(MKMessageAttachment *)v12 setUUID:uUIDString];

    [(MKMessageAttachment *)v12 setTransferState:5];
    v16 = [MEMORY[0x277CE1CB8] typeWithMIMEType:v12->_contentType];
    identifier = [v16 identifier];
    [(MKMessageAttachment *)v12 setUniformTypeIdentifier:identifier];

    if (!v12->_uniformTypeIdentifier)
    {
      v33 = 0;
      goto LABEL_17;
    }

    v36 = dataCopy;
    defaultHFSFileManager = [MEMORY[0x277D19250] defaultHFSFileManager];
    v19 = [defaultHFSFileManager pathExtensionForUTIType:v12->_uniformTypeIdentifier];

    if (![(__CFString *)v19 length])
    {
      defaultHFSFileManager2 = [MEMORY[0x277D19250] defaultHFSFileManager];
      v21 = [defaultHFSFileManager2 pathExtensionForMIMEType:typeCopy];

      v19 = v21;
    }

    v37 = typeCopy;
    if (![(__CFString *)v19 length])
    {

      v19 = @"bin";
    }

    v38 = dCopy;
    v22 = [(NSString *)v12->_UUID hash];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x", v22];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02d", v22 & 0xF];
    v25 = [(NSString *)v12->_UUID stringByAppendingPathExtension:v19];
    stringByResolvingAndStandardizingPath = [@"/var/mobile/Library/SMS/Attachments" stringByResolvingAndStandardizingPath];
    v35 = v23;
    v45[0] = v23;
    v45[1] = v24;
    v45[2] = v25;
    [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v27 = v42 = 0u;
    v28 = [v27 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v40;
      do
      {
        v31 = 0;
        v32 = stringByResolvingAndStandardizingPath;
        do
        {
          if (*v40 != v30)
          {
            objc_enumerationMutation(v27);
          }

          stringByResolvingAndStandardizingPath = [v32 stringByAppendingPathComponent:*(*(&v39 + 1) + 8 * v31)];

          ++v31;
          v32 = stringByResolvingAndStandardizingPath;
        }

        while (v29 != v31);
        v29 = [v27 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v29);
    }

    [(MKMessageAttachment *)v12 setFilename:stringByResolvingAndStandardizingPath];
    typeCopy = v37;
    dCopy = v38;
    dataCopy = v36;
  }

  v33 = v12;
LABEL_17:

  return v33;
}

- (void)write
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  stringByDeletingLastPathComponent = [(NSString *)self->_filename stringByDeletingLastPathComponent];
  [defaultManager makeDirectoriesInPath:stringByDeletingLastPathComponent mode:448];
  [(NSData *)self->_data writeToFile:self->_filename atomically:1];
}

@end