@interface BRCPackageManifestReader
- (BRCPackageManifestReader)init;
- (BRCPackageManifestReader)initWithAsset:(id)asset;
- (BRCPackageManifestReader)initWithDeviceID:(int)d fileID:(unint64_t)iD;
- (BRCPackageManifestReader)initWithInputStream:(id)stream;
- (BRCPackageManifestReader)initWithURL:(id)l;
- (id)nextObject;
- (void)dealloc;
- (void)done;
- (void)nextObject;
@end

@implementation BRCPackageManifestReader

- (BRCPackageManifestReader)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[BRCPackageManifestReader init]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  return 0;
}

- (BRCPackageManifestReader)initWithInputStream:(id)stream
{
  v26 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v17.receiver = self;
  v17.super_class = BRCPackageManifestReader;
  v6 = [(BRCPackageManifestReader *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stream, stream);
    v8 = [objc_alloc(MEMORY[0x277D43180]) initWithStream:v7->_stream];
    reader = v7->_reader;
    v7->_reader = v8;

    [(PBMessageStreamReader *)v7->_reader setClassOfNextMessage:objc_opt_class()];
    [streamCopy open];
    nextMessage = [(PBMessageStreamReader *)v7->_reader nextMessage];
    v11 = nextMessage;
    if (nextMessage && [nextMessage version] == 1)
    {
      [(PBMessageStreamReader *)v7->_reader setClassOfNextMessage:objc_opt_class()];
    }

    else
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, 0x90u))
      {
        version = [v11 version];
        streamError = [(NSInputStream *)v7->_stream streamError];
        *buf = 138413058;
        v19 = v11;
        v20 = 1024;
        v21 = version;
        v22 = 2112;
        v23 = streamError;
        v24 = 2112;
        v25 = v12;
        _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] unable to read package header %@ with version %d - %@%@", buf, 0x26u);
      }

      [(BRCPackageManifestReader *)v7 done];
      v7 = 0;
    }
  }

  return v7;
}

- (BRCPackageManifestReader)initWithURL:(id)l
{
  v4 = [MEMORY[0x277CBEAE0] inputStreamWithURL:l];
  v5 = [(BRCPackageManifestReader *)self initWithInputStream:v4];

  return v5;
}

- (BRCPackageManifestReader)initWithAsset:(id)asset
{
  assetCopy = asset;
  fileID = [assetCopy fileID];
  if (fileID && (v6 = fileID, [assetCopy deviceID], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    deviceID = [assetCopy deviceID];
    unsignedIntValue = [deviceID unsignedIntValue];
    fileID2 = [assetCopy fileID];
    v11 = -[BRCPackageManifestReader initWithDeviceID:fileID:](self, "initWithDeviceID:fileID:", unsignedIntValue, [fileID2 unsignedLongLongValue]);
  }

  else
  {
    deviceID = [assetCopy fileURL];
    v11 = [(BRCPackageManifestReader *)self initWithURL:deviceID];
  }

  return v11;
}

- (BRCPackageManifestReader)initWithDeviceID:(int)d fileID:(unint64_t)iD
{
  v5 = [MEMORY[0x277CCACA8] br_pathWithDeviceID:*&d fileID:iD];
  v6 = [MEMORY[0x277CBEAE0] inputStreamWithFileAtPath:v5];
  v7 = [(BRCPackageManifestReader *)self initWithInputStream:v6];

  return v7;
}

- (void)dealloc
{
  [(BRCPackageManifestReader *)self done];
  v3.receiver = self;
  v3.super_class = BRCPackageManifestReader;
  [(BRCPackageManifestReader *)&v3 dealloc];
}

- (void)done
{
  [(NSInputStream *)self->_stream close];
  reader = self->_reader;
  self->_reader = 0;

  stream = self->_stream;
  self->_stream = 0;
}

- (id)nextObject
{
  reader = self->_reader;
  if (!reader)
  {
    [(BRCPackageManifestReader *)&self->_reader nextObject];
    reader = v10;
  }

  nextMessage = [(PBMessageStreamReader *)reader nextMessage];
  if (!nextMessage)
  {
    if ([(NSInputStream *)self->_stream streamStatus]== 7)
    {
      streamError = [(NSInputStream *)self->_stream streamError];
      error = self->_error;
      self->_error = streamError;

      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, 0x90u))
      {
        [BRCPackageManifestReader nextObject];
      }
    }

    [(BRCPackageManifestReader *)self done];
  }

  return nextMessage;
}

- (void)nextObject
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
}

@end