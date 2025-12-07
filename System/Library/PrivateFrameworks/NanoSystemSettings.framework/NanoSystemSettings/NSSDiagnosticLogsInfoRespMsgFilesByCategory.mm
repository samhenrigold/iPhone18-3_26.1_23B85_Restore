@interface NSSDiagnosticLogsInfoRespMsgFilesByCategory
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)filesTypeAsString:(int)string;
- (int)StringAsFilesType:(id)type;
- (unint64_t)hash;
- (void)addFilePaths:(id)paths;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSSDiagnosticLogsInfoRespMsgFilesByCategory

- (id)filesTypeAsString:(int)string
{
  if ((string - 1) >= 5)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_27995D288[string - 1];
  }

  return v4;
}

- (int)StringAsFilesType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"FilesTypeDiagnosticLogs"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"FilesTypeSysdiagnoseLogs"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"FilesTypeScreenshots"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"FilesTypeScreenCaptures"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"FilesTypeAppPrivacyReports"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)addFilePaths:(id)paths
{
  pathsCopy = paths;
  filePaths = self->_filePaths;
  v8 = pathsCopy;
  if (!filePaths)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_filePaths;
    self->_filePaths = v6;

    pathsCopy = v8;
    filePaths = self->_filePaths;
  }

  [(NSMutableArray *)filePaths addObject:pathsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSDiagnosticLogsInfoRespMsgFilesByCategory;
  v4 = [(NSSDiagnosticLogsInfoRespMsgFilesByCategory *)&v8 description];
  dictionaryRepresentation = [(NSSDiagnosticLogsInfoRespMsgFilesByCategory *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = self->_filesType - 1;
  if (v4 >= 5)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_filesType];
  }

  else
  {
    v5 = off_27995D288[v4];
  }

  [dictionary setObject:v5 forKey:@"filesType"];

  directoryPath = self->_directoryPath;
  if (directoryPath)
  {
    [dictionary setObject:directoryPath forKey:@"directoryPath"];
  }

  filePaths = self->_filePaths;
  if (filePaths)
  {
    [dictionary setObject:filePaths forKey:@"filePaths"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteStringField();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_filePaths;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[6] = self->_filesType;
  v9 = toCopy;
  [toCopy setDirectoryPath:self->_directoryPath];
  if ([(NSSDiagnosticLogsInfoRespMsgFilesByCategory *)self filePathsCount])
  {
    [v9 clearFilePaths];
    filePathsCount = [(NSSDiagnosticLogsInfoRespMsgFilesByCategory *)self filePathsCount];
    if (filePathsCount)
    {
      v6 = filePathsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NSSDiagnosticLogsInfoRespMsgFilesByCategory *)self filePathsAtIndex:i];
        [v9 addFilePaths:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 24) = self->_filesType;
  v6 = [(NSString *)self->_directoryPath copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_filePaths;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) copyWithZone:{zone, v15}];
        [v5 addFilePaths:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_filesType == *(equalCopy + 6) && ((directoryPath = self->_directoryPath, !(directoryPath | equalCopy[1])) || -[NSString isEqual:](directoryPath, "isEqual:")))
  {
    filePaths = self->_filePaths;
    if (filePaths | equalCopy[2])
    {
      v7 = [(NSMutableArray *)filePaths isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_filesType;
  v4 = [(NSString *)self->_directoryPath hash];
  return v4 ^ [(NSMutableArray *)self->_filePaths hash]^ v3;
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  self->_filesType = *(fromCopy + 6);
  if (*(fromCopy + 1))
  {
    [(NSSDiagnosticLogsInfoRespMsgFilesByCategory *)self setDirectoryPath:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 2);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NSSDiagnosticLogsInfoRespMsgFilesByCategory *)self addFilePaths:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end