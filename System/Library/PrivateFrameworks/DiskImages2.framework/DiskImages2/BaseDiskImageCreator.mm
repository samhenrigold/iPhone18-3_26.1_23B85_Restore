@interface BaseDiskImageCreator
+ (void)setDebugLogsEnabled:(BOOL)enabled;
+ (void)setForwardLogs:(BOOL)logs;
- (BOOL)ejectWithError:(id *)error;
- (BOOL)partitionDiskWithError:(id *)error;
- (BaseDiskImageCreator)initWithURL:(id)l defaultFormat:(int64_t)format error:(id *)error;
- (id)createEmptyImageWithError:(id *)error;
- (id)formatImageWithCreateParams:(id)params error:(id *)error;
- (id)newAttachWithCreateParams:(id)params error:(id *)error;
- (id)newMKDIDeviceWithError:(id *)error;
- (void)dealloc;
- (void)setFileSystem:(unint64_t)system;
- (void)setPassphrase:(const char *)passphrase encryptionMethod:(unint64_t)method;
- (void)setSymmetricKey:(id)key;
@end

@implementation BaseDiskImageCreator

+ (void)setDebugLogsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  DISetDebugLogsEnabled(enabled);

  [DiskImages2 setDebugLogsEnabled:enabledCopy];
}

+ (void)setForwardLogs:(BOOL)logs
{
  logsCopy = logs;
  DISetForwardLogs(logs);

  [DiskImages2 setForwardLogs:logsCopy];
}

- (BaseDiskImageCreator)initWithURL:(id)l defaultFormat:(int64_t)format error:(id *)error
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = BaseDiskImageCreator;
  v9 = [(BaseDiskImageCreator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_URL, l);
    v10->_blockSize = 512;
    v10->_readPassphraseFlags = 6;
    v10->_imageFormat = format;
    v10->_sparseBundleBandSize = 0x4000000;
    [(BaseDiskImageCreator *)v10 setFileSystem:1];
  }

  return v10;
}

- (void)setSymmetricKey:(id)key
{
  keyCopy = key;
  mutableSymmetricKey = self->_mutableSymmetricKey;
  v9 = keyCopy;
  if (mutableSymmetricKey)
  {
    bzero([(NSMutableData *)mutableSymmetricKey mutableBytes], [(NSMutableData *)self->_mutableSymmetricKey length]);
    v6 = self->_mutableSymmetricKey;
    self->_mutableSymmetricKey = 0;

    keyCopy = v9;
  }

  if (keyCopy)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithData:v9];
    v8 = self->_mutableSymmetricKey;
    self->_mutableSymmetricKey = v7;
  }

  MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  [(BaseDiskImageCreator *)self setSymmetricKey:0];
  v3.receiver = self;
  v3.super_class = BaseDiskImageCreator;
  [(BaseDiskImageCreator *)&v3 dealloc];
}

- (void)setFileSystem:(unint64_t)system
{
  self->_fileSystem = system;
  if (system == 1)
  {
    v4 = objc_alloc_init(DIAPFSPartition);
    [(BaseDiskImageCreator *)self setDataPartition:v4];
  }

  else
  {

    [(BaseDiskImageCreator *)self setDataPartition:0];
  }
}

- (id)newMKDIDeviceWithError:(id *)error
{
  v5 = [MKDIDevice alloc];
  devBSDName = [(BaseDiskImageCreator *)self devBSDName];
  v7 = [(MKDIDevice *)v5 initWithBSDName:devBSDName numBlocks:[(BaseDiskImageCreator *)self numBlocks] blockSize:[(BaseDiskImageCreator *)self blockSize] error:error];

  return v7;
}

- (BOOL)partitionDiskWithError:(id *)error
{
  v5 = [(BaseDiskImageCreator *)self newMKDIDeviceWithError:?];
  if (v5)
  {
    dataPartition = [(BaseDiskImageCreator *)self dataPartition];
    v7 = [v5 partitionDiskWithGPTTypeID:objc_msgSend(dataPartition error:{"GPTTypeID"), error}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)newAttachWithCreateParams:(id)params error:(id *)error
{
  v11 = 0;
  paramsCopy = params;
  v7 = [[DIAttachParams alloc] initWithExistingParams:paramsCopy error:error];

  if (v7 && ([(DIAttachParams *)v7 setAutoMount:0], [(DIBaseParams *)v7 setBlockSize:[(BaseDiskImageCreator *)self blockSize]], [DiskImages2 managedAttachWithParams:v7 handle:&v11 error:error]))
  {
    bSDName = [v11 BSDName];
    [(BaseDiskImageCreator *)self setDevBSDName:bSDName];

    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)createEmptyImageWithError:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v31 = 0;
    v8 = getDIOSLog(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v10 = [(BaseDiskImageCreator *)self URL];
    path = [v10 path];
    *buf = 68158210;
    v33 = 50;
    v34 = 2080;
    v35 = "[BaseDiskImageCreator createEmptyImageWithError:]";
    v36 = 2112;
    v37 = path;
    v12 = _os_log_send_and_compose_impl(v9, &v31, 0, 0, &dword_248DE0000, v8, 0, "%.*s: Creating %@", buf, 28);

    if (v12)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v12);
      free(v12);
    }
  }

  else
  {
    v13 = getDIOSLog(v6, v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(BaseDiskImageCreator *)self URL];
      path2 = [v14 path];
      *buf = 68158210;
      v33 = 50;
      v34 = 2080;
      v35 = "[BaseDiskImageCreator createEmptyImageWithError:]";
      v36 = 2112;
      v37 = path2;
      _os_log_impl(&dword_248DE0000, v13, OS_LOG_TYPE_DEFAULT, "%.*s: Creating %@", buf, 0x1Cu);
    }
  }

  *__error() = v5;
  if ([(BaseDiskImageCreator *)self imageFormat]== 9)
  {
    v16 = [DICreateUDSBParams alloc];
    v17 = [(BaseDiskImageCreator *)self URL];
    v18 = [(DICreateUDSBParams *)v16 initWithURL:v17 numBlocks:[(BaseDiskImageCreator *)self numBlocks] error:error];

    if (!v18)
    {
      goto LABEL_21;
    }

    [(DICreateUDSBParams *)v18 setSparseBundleBandSize:[(BaseDiskImageCreator *)self sparseBundleBandSize]];
  }

  else
  {
    if ([(BaseDiskImageCreator *)self imageFormat]== 2)
    {
      v19 = [DICreateASIFParams alloc];
    }

    else
    {
      v19 = [DICreateRAWParams alloc];
    }

    v20 = [(BaseDiskImageCreator *)self URL];
    v21 = [(DICreateASIFParams *)v19 initWithURL:v20 numBlocks:[(BaseDiskImageCreator *)self numBlocks] error:error];

    v18 = v21;
    if (!v21)
    {
      goto LABEL_21;
    }
  }

  [(DICreateParams *)v18 setEncryptionMethod:[(BaseDiskImageCreator *)self encryptionMethod]];
  [(DIBaseParams *)v18 setReadPassphraseFlags:[(BaseDiskImageCreator *)self readPassphraseFlags]];
  publicKey = [(BaseDiskImageCreator *)self publicKey];
  [(DICreateParams *)v18 setPublicKey:publicKey];

  certificate = [(BaseDiskImageCreator *)self certificate];
  [(DICreateParams *)v18 setCertificate:certificate];

  [(DICreateParams *)v18 setPassphrase:[(BaseDiskImageCreator *)self passphrase]];
  mutableSymmetricKey = [(BaseDiskImageCreator *)self mutableSymmetricKey];
  [(DIBaseParams *)v18 setSymmetricKey:mutableSymmetricKey];

  [(DIBaseParams *)v18 setBlockSize:[(BaseDiskImageCreator *)self blockSize]];
  temporaryPassphrase = [(BaseDiskImageCreator *)self temporaryPassphrase];

  if (!temporaryPassphrase)
  {
LABEL_20:
    v28 = [DiskImages2 createBlankWithParams:v18 error:error];
    goto LABEL_22;
  }

  temporaryPassphrase2 = [(BaseDiskImageCreator *)self temporaryPassphrase];
  v27 = -[DICreateParams setPassphrase:encryptionMethod:error:](v18, "setPassphrase:encryptionMethod:error:", [temporaryPassphrase2 buf], -[BaseDiskImageCreator encryptionMethod](self, "encryptionMethod"), error);

  if (v27)
  {
    [(BaseDiskImageCreator *)self setTemporaryPassphrase:0];
    goto LABEL_20;
  }

LABEL_21:
  v28 = 0;
LABEL_22:
  [(BaseDiskImageCreator *)self setTemporaryPassphrase:0];
  if (v28)
  {
    v29 = v18;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (id)formatImageWithCreateParams:(id)params error:(id *)error
{
  v6 = [(BaseDiskImageCreator *)self newAttachWithCreateParams:params error:?];
  if (!v6)
  {
    goto LABEL_9;
  }

  if (![(BaseDiskImageCreator *)self partitionDiskWithError:error])
  {
    goto LABEL_9;
  }

  dataPartition = [(BaseDiskImageCreator *)self dataPartition];
  bSDName = [v6 BSDName];
  v9 = [dataPartition findPartitionWithDeviceBSDName:bSDName error:error];

  if (!v9)
  {
    goto LABEL_9;
  }

  dataPartition2 = [(BaseDiskImageCreator *)self dataPartition];
  blockSize = [dataPartition2 blockSize];
  blockSize2 = [(BaseDiskImageCreator *)self blockSize];

  if (blockSize != blockSize2)
  {
    [DIError failWithEnumValue:154 verboseInfo:@"Mismatch between the device's and partition's block size" error:error];
LABEL_9:

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v19 = [(BaseDiskImageCreator *)self URL];
    [defaultManager removeItemAtURL:v19 error:0];

    v6 = 0;
    goto LABEL_10;
  }

  dataPartition3 = [(BaseDiskImageCreator *)self dataPartition];
  volumeName = [(BaseDiskImageCreator *)self volumeName];
  v15 = [dataPartition3 formatWithVolumeName:volumeName error:error];

  if (!v15)
  {
    goto LABEL_9;
  }

  dataPartition4 = [(BaseDiskImageCreator *)self dataPartition];
  v17 = [dataPartition4 findVolumeBSDNameWithError:error];

  if ((v17 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v6;
}

- (BOOL)ejectWithError:(id *)error
{
  v5 = [DIDiskArb diskArbWithError:?];
  if (v5)
  {
    devBSDName = [(BaseDiskImageCreator *)self devBSDName];
    v7 = [v5 ejectWithBSDName:devBSDName error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setPassphrase:(const char *)passphrase encryptionMethod:(unint64_t)method
{
  v6 = [[DITemporaryPassphrase alloc] initWithPassphrase:passphrase];
  temporaryPassphrase = self->_temporaryPassphrase;
  self->_temporaryPassphrase = v6;

  self->_encryptionMethod = method;
}

@end