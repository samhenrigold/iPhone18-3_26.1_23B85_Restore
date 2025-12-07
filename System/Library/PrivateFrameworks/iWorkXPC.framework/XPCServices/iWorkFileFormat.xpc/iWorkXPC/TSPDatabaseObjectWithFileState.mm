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
  v18.receiver = self;
  v18.super_class = TSPDatabaseObjectWithFileState;
  v12 = [(TSPDatabaseObject *)&v18 initWithIdentifier:identifier classType:v7];
  if (v12)
  {
    v13 = [stateCopy copy];
    fileState = v12->_fileState;
    v12->_fileState = v13;

    v15 = [lCopy copy];
    packageURL = v12->_packageURL;
    v12->_packageURL = v15;
  }

  return v12;
}

- (id)fileURL
{
  packageURL = self->_packageURL;
  fileState = self->_fileState;
  v8[0] = @"data";
  v8[1] = fileState;
  v4 = [NSArray arrayWithObjects:v8 count:2];
  v5 = [NSString pathWithComponents:v4];
  v6 = [(NSURL *)packageURL URLByAppendingPathComponent:v5];

  return v6;
}

@end