@interface TSPDatabaseObjectWithFileState
- (TSPDatabaseObjectWithFileState)initWithIdentifier:(int64_t)identifier classType:(int)type fileState:(id)state packageURL:(id)l;
- (id)fileURL;
@end

@implementation TSPDatabaseObjectWithFileState

- (TSPDatabaseObjectWithFileState)initWithIdentifier:(int64_t)identifier classType:(int)type fileState:(id)state packageURL:(id)l
{
  v7 = *&type;
  stateCopy = state;
  lCopy = l;
  v22.receiver = self;
  v22.super_class = TSPDatabaseObjectWithFileState;
  v14 = [(TSPDatabaseObject *)&v22 initWithIdentifier:identifier classType:v7];
  if (v14)
  {
    v15 = objc_msgSend_copy(stateCopy, v12, v13);
    fileState = v14->_fileState;
    v14->_fileState = v15;

    v19 = objc_msgSend_copy(lCopy, v17, v18);
    packageURL = v14->_packageURL;
    v14->_packageURL = v19;
  }

  return v14;
}

- (id)fileURL
{
  v11[2] = *MEMORY[0x277D85DE8];
  packageURL = self->_packageURL;
  v3 = MEMORY[0x277CCACA8];
  fileState = self->_fileState;
  v11[0] = @"data";
  v11[1] = fileState;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v11, 2);
  v7 = objc_msgSend_pathWithComponents_(v3, v6, v5);
  v9 = objc_msgSend_URLByAppendingPathComponent_(packageURL, v8, v7);

  return v9;
}

@end