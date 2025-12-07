@interface DEDRadarUploadItem
- (DEDRadarUploadItem)initWithUploadTask:(id)task andAttachment:(id)attachment;
- (id)description;
@end

@implementation DEDRadarUploadItem

- (DEDRadarUploadItem)initWithUploadTask:(id)task andAttachment:(id)attachment
{
  taskCopy = task;
  attachmentCopy = attachment;
  v14.receiver = self;
  v14.super_class = DEDRadarUploadItem;
  v8 = [(DEDRadarUploadItem *)&v14 init];
  if (v8)
  {
    -[DEDRadarUploadItem setTaskIdentifier:](v8, "setTaskIdentifier:", [taskCopy taskIdentifier]);
    [(DEDAttachmentItem *)v8 setAttachedPath:attachmentCopy];
    [(DEDRadarUploadItem *)v8 setTotalBytesSent:0];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    attachedPath = [(DEDAttachmentItem *)v8 attachedPath];
    path = [attachedPath path];
    v12 = [defaultManager attributesOfItemAtPath:path error:0];
    -[DEDRadarUploadItem setTotalBytesExpectedToSend:](v8, "setTotalBytesExpectedToSend:", [v12 fileSize]);

    [(DEDRadarUploadItem *)v8 setIsUploaded:0];
  }

  return v8;
}

- (id)description
{
  v15[5] = *MEMORY[0x277D85DE8];
  v14[0] = @"taskIdentifier";
  v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:{-[DEDRadarUploadItem taskIdentifier](self, "taskIdentifier")}];
  v15[0] = v3;
  v14[1] = @"attachedPath";
  attachedPath = [(DEDAttachmentItem *)self attachedPath];
  v15[1] = attachedPath;
  v14[2] = @"totalBytesSent";
  v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{-[DEDRadarUploadItem totalBytesSent](self, "totalBytesSent")}];
  v15[2] = v5;
  v14[3] = @"totalBytesExpectedToSend";
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{-[DEDRadarUploadItem totalBytesExpectedToSend](self, "totalBytesExpectedToSend")}];
  v15[3] = v6;
  v14[4] = @"isUploaded";
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", -[DEDRadarUploadItem isUploaded](self, "isUploaded")];
  v15[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];

  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"%@: %@", v11, v8];

  return v12;
}

@end