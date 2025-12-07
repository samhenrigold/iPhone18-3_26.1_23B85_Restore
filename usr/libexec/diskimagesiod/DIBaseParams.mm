@interface DIBaseParams
- (BOOL)RAMdisk;
- (BOOL)hasUnlockedBackend;
- (BOOL)openExistingImageWithFlags:(int)flags error:(id *)error;
- (BOOL)prepareImageWithXpcHandler:(id)handler fileMode:(int64_t)mode error:(id *)error;
- (BOOL)requiresRootDaemon;
- (BOOL)tryResolvePstackChain:(id *)chain;
- (BOOL)unlockWithPassphrase:(const char *)passphrase error:(id *)error;
- (BOOL)validateDeserializationWithError:(id *)error;
- (DIBaseParams)initWithCoder:(id)coder;
- (DIBaseParams)initWithURL:(id)l error:(id *)error;
- (NSUUID)encryptionUUID;
- (NSUUID)instanceID;
- (id)description;
- (shared_ptr<Backend>)backend;
- (void)cryptoHeader;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setSymmetricKey:(id)key;
@end

@implementation DIBaseParams

- (BOOL)RAMdisk
{
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (DIBaseParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = DIBaseParams;
  v5 = [(DIBaseParams *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeBoolForKey:@"debugLogsEnabled"];
    v7 = [coderCopy decodeBoolForKey:@"forwardLogs"];
    sub_1000E95FC(v6);
    v8 = +[NSProcessInfo processInfo];
    processName = [v8 processName];
    v10 = [processName isEqualToString:@"diskimagesiod"];

    if ((v10 & 1) == 0)
    {
      sub_1000E95E4(v7);
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputURL"];
    inputURL = v5->_inputURL;
    v5->_inputURL = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shadowChain"];
    shadowChain = v5->_shadowChain;
    v5->_shadowChain = v13;

    v5->_readPassphraseFlags = [coderCopy decodeIntegerForKey:@"readPassphraseFlags"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"diskImageParams"];
    diskImageParamsXPC = v5->_diskImageParamsXPC;
    v5->_diskImageParamsXPC = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deserializationError"];
    deserializationError = v5->_deserializationError;
    v5->_deserializationError = v17;

    v5->_blockSize = [coderCopy decodeIntegerForKey:@"blockSize"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:sub_1000E9608() forKey:@"debugLogsEnabled"];
  [coderCopy encodeBool:sub_1000E95F0() forKey:@"forwardLogs"];
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  [coderCopy encodeObject:diskImageParamsXPC forKey:@"diskImageParams"];

  inputURL = [(DIBaseParams *)self inputURL];
  [coderCopy encodeObject:inputURL forKey:@"inputURL"];

  shadowChain = [(DIBaseParams *)self shadowChain];
  [coderCopy encodeObject:shadowChain forKey:@"shadowChain"];

  [coderCopy encodeInteger:-[DIBaseParams readPassphraseFlags](self forKey:{"readPassphraseFlags"), @"readPassphraseFlags"}];
  deserializationError = [(DIBaseParams *)self deserializationError];
  [coderCopy encodeObject:deserializationError forKey:@"deserializationError"];

  [coderCopy encodeInteger:-[DIBaseParams blockSize](self forKey:{"blockSize"), @"blockSize"}];
}

- (DIBaseParams)initWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v17.receiver = self;
  v17.super_class = DIBaseParams;
  v7 = [(DIBaseParams *)&v17 init];
  if (v7)
  {
    v8 = [DIURL newDIURLWithNSURL:lCopy];
    inputURL = v7->_inputURL;
    v7->_inputURL = v8;

    v7->_readPassphraseFlags = 7;
    v10 = objc_alloc_init(DIShadowChain);
    shadowChain = v7->_shadowChain;
    v7->_shadowChain = v10;

    v7->_blockSize = 512;
    path = [(DIURL *)v7->_inputURL path];
    if (!path || ([NSURLComponents componentsWithURL:lCopy resolvingAgainstBaseURL:1], v13 = objc_claimAutoreleasedReturnValue(), v13, path, !v13))
    {
      v14 = [DIError nilWithPOSIXCode:22 description:@"Malformed URL format" error:error];
      goto LABEL_9;
    }

    if (![(DIBaseParams *)v7 tryResolvePstackChain:error])
    {
      v15 = 0;
      goto LABEL_10;
    }

    if ([(DIBaseParams *)v7 isPstack]&& ![(DIBaseParams *)v7 supportsPstack])
    {
      v14 = [DIError nilWithPOSIXCode:22 verboseInfo:@"This operation doesn't support pstack files" error:error];
      goto LABEL_9;
    }
  }

  v14 = v7;
LABEL_9:
  v15 = v14;
LABEL_10:

  return v15;
}

- (BOOL)openExistingImageWithFlags:(int)flags error:(id *)error
{
  v5 = *&flags;
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];

  if (diskImageParamsXPC)
  {
    v8 = *__error();
    v9 = sub_1000E95F0();
    if (v9)
    {
      v22 = 0;
      v11 = sub_1000E957C(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      *buf = 68157954;
      v24 = 49;
      v25 = 2080;
      v26 = "[DIBaseParams openExistingImageWithFlags:error:]";
      LODWORD(v21) = 18;
      v13 = _os_log_send_and_compose_impl(v12, &v22, 0, 0, &_mh_execute_header, v11, 0, "%.*s: Using existing disk image params", buf, v21);

      if (v13)
      {
        fprintf(__stderrp, "%s\n", v13);
        free(v13);
      }
    }

    else
    {
      v18 = sub_1000E957C(v9, v10);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v24 = 49;
        v25 = 2080;
        v26 = "[DIBaseParams openExistingImageWithFlags:error:]";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%.*s: Using existing disk image params", buf, 0x12u);
      }
    }

    *__error() = v8;
  }

  else
  {
    inputURL = [(DIBaseParams *)self inputURL];
    v15 = [DiskImageParamsXPC newWithURL:inputURL fileOpenFlags:v5 error:error];
    [(DIBaseParams *)self setDiskImageParamsXPC:v15];

    diskImageParamsXPC2 = [(DIBaseParams *)self diskImageParamsXPC];

    if (!diskImageParamsXPC2)
    {
      return 0;
    }

    diskImageParamsXPC3 = [(DIBaseParams *)self diskImageParamsXPC];
    -[DIBaseParams setBlockSize:](self, "setBlockSize:", [diskImageParamsXPC3 blockSize]);
  }

  return 1;
}

- (BOOL)tryResolvePstackChain:(id *)chain
{
  v5 = [SerializedDiskImageGraph alloc];
  inputURL = [(DIBaseParams *)self inputURL];
  v33 = 0;
  v7 = [(SerializedDiskImageGraph *)v5 initWithPstackURL:inputURL error:&v33];
  v8 = v33;

  if (v7)
  {
    self->_isPstack = 1;
    v9 = v7;
    v10 = +[NSMutableArray array];
    activeNode = [(DiskImageGraph *)v9 activeNode];
    if (activeNode)
    {
      do
      {
        toDIShadowNode = [activeNode toDIShadowNode];
        [v10 addObject:toDIShadowNode];

        parent = [activeNode parent];

        activeNode = parent;
      }

      while (parent);
    }

    lastObject = [v10 lastObject];
    [v10 removeLastObject];
    reverseObjectEnumerator = [v10 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    shadowChain = [(DIBaseParams *)self shadowChain];
    v18 = [shadowChain addShadowNodes:allObjects error:chain];

    if (v18)
    {
      v19 = [lastObject URL];
      inputURL = self->_inputURL;
      self->_inputURL = v19;
    }

    goto LABEL_23;
  }

  domain = [v8 domain];
  if (![domain isEqualToString:@"com.apple.DiskImages2.ErrorDomain"])
  {

    goto LABEL_17;
  }

  v22 = [v8 code] == 167;

  if (!v22)
  {
LABEL_17:
    v18 = [DIError failWithInError:v8 outError:chain];
    goto LABEL_23;
  }

  if (sub_1000E9608())
  {
    v23 = *__error();
    v24 = sub_1000E95F0();
    if (v24)
    {
      v32 = 0;
      v26 = sub_1000E957C(v24, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      *buf = 68157954;
      v35 = 38;
      v36 = 2080;
      v37 = "[DIBaseParams tryResolvePstackChain:]";
      LODWORD(v31) = 18;
      v28 = _os_log_send_and_compose_impl(v27, &v32, 0, 0, &_mh_execute_header, v26, 2, "%.*s: Not a pstack", buf, v31);

      if (v28)
      {
        fprintf(__stderrp, "%s\n", v28);
        free(v28);
      }
    }

    else
    {
      v29 = sub_1000E957C(v24, v25);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68157954;
        v35 = 38;
        v36 = 2080;
        v37 = "[DIBaseParams tryResolvePstackChain:]";
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%.*s: Not a pstack", buf, 0x12u);
      }
    }

    *__error() = v23;
  }

  v18 = 1;
LABEL_23:

  return v18;
}

- (NSUUID)encryptionUUID
{
  if (*[(DIBaseParams *)self cryptoHeader])
  {
    v3 = [[NSUUID alloc] initWithUUIDBytes:{*-[DIBaseParams cryptoHeader](self, "cryptoHeader") + 36}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  v6 = [NSString stringWithFormat:@"%@[%@]", v4, diskImageParamsXPC];

  return v6;
}

- (BOOL)prepareImageWithXpcHandler:(id)handler fileMode:(int64_t)mode error:(id *)error
{
  handlerCopy = handler;
  if ([(DIBaseParams *)self hasUnlockedBackend]|| !*[(DIBaseParams *)self cryptoHeader]|| (v9 = [(DIEncryptionFrontend *)[DIEncryptionUnlocker alloc] initWithParams:self], v10 = [(DIEncryptionFrontend *)v9 unlockWithXpcHandler:handlerCopy error:error], v9, v10))
  {
    shadowChain = [(DIBaseParams *)self shadowChain];
    isEmpty = [shadowChain isEmpty];

    if (isEmpty)
    {
      shadowChain2 = [(DIBaseParams *)self shadowChain];
      diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
      [diskImageParamsXPC setShadowChain:shadowChain2];
    }

    else
    {
      if (mode != 2)
      {
        shadowChain3 = [(DIBaseParams *)self shadowChain];
        [shadowChain3 openWritable:1 createNonExisting:mode != 3];

        shadowChain4 = [(DIBaseParams *)self shadowChain];
        diskImageParamsXPC2 = [(DIBaseParams *)self diskImageParamsXPC];
        [diskImageParamsXPC2 setShadowChain:shadowChain4];
      }

      diskImageParamsXPC3 = [(DIBaseParams *)self diskImageParamsXPC];
      shadowChain5 = [diskImageParamsXPC3 shadowChain];
      v20 = shadowChain5 == 0;

      if (v20)
      {
        shadowChain6 = [(DIBaseParams *)self shadowChain];
        [shadowChain6 openWritable:0 createNonExisting:0];

        shadowChain7 = [(DIBaseParams *)self shadowChain];
        diskImageParamsXPC4 = [(DIBaseParams *)self diskImageParamsXPC];
        [diskImageParamsXPC4 setShadowChain:shadowChain7];
      }
    }

    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)hasUnlockedBackend
{
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  backendXPC = [diskImageParamsXPC backendXPC];
  isUnlocked = [backendXPC isUnlocked];

  return isUnlocked;
}

- (BOOL)validateDeserializationWithError:(id *)error
{
  deserializationError = [(DIBaseParams *)self deserializationError];

  if (!deserializationError)
  {
    return 1;
  }

  deserializationError2 = [(DIBaseParams *)self deserializationError];
  v7 = [DIError failWithInError:deserializationError2 outError:error];

  return v7;
}

- (NSUUID)instanceID
{
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  instanceID = [diskImageParamsXPC instanceID];

  return instanceID;
}

- (BOOL)requiresRootDaemon
{
  objc_msgSend_backend(self, a2);
  sub_100192CB4(&v9, &lpsrc);
  if (v10)
  {
    sub_10000E984(v10);
  }

  v2 = lpsrc;
  if (!lpsrc)
  {
    goto LABEL_14;
  }

  if (!v3)
  {
    if (v6)
    {
      v4 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v5 = sub_100057078(v6 + 24);
      goto LABEL_12;
    }

LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  v4 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = sub_100057078(v3[5]);
LABEL_12:
  v7 = v5;
  if (v4)
  {
    sub_10000E984(v4);
  }

LABEL_15:
  if (v12)
  {
    sub_10000E984(v12);
  }

  return v7;
}

- (void)setSymmetricKey:(id)key
{
  keyCopy = key;
  mutableSymmetricKey = self->_mutableSymmetricKey;
  if (mutableSymmetricKey)
  {
    bzero([(NSMutableData *)mutableSymmetricKey mutableBytes], [(NSMutableData *)self->_mutableSymmetricKey length]);
    v5 = self->_mutableSymmetricKey;
    self->_mutableSymmetricKey = 0;
  }

  if (keyCopy)
  {
    v6 = [[NSMutableData alloc] initWithData:keyCopy];
    v7 = self->_mutableSymmetricKey;
    self->_mutableSymmetricKey = v6;
  }
}

- (BOOL)unlockWithPassphrase:(const char *)passphrase error:(id *)error
{
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  if (diskImageParamsXPC)
  {
  }

  else if (![(DIBaseParams *)self openExistingImageWithError:error])
  {
    return 0;
  }

  if ([(DIBaseParams *)self hasUnlockedBackend]|| !*[(DIBaseParams *)self cryptoHeader])
  {
    return 1;
  }

  v8 = [(DIEncryptionFrontend *)[DIEncryptionUnlocker alloc] initWithParams:self];
  v9 = [(DIEncryptionFrontend *)v8 unlockWithPassphrase:passphrase error:error];

  return v9;
}

- (void)dealloc
{
  [(DIBaseParams *)self setSymmetricKey:0];
  v3.receiver = self;
  v3.super_class = DIBaseParams;
  [(DIBaseParams *)&v3 dealloc];
}

- (shared_ptr<Backend>)backend
{
  v3 = v2;
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  backendXPC = [diskImageParamsXPC backendXPC];
  v5 = backendXPC;
  if (backendXPC)
  {
    objc_msgSend_backend(backendXPC);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
  }

  result.__cntrl_ = v7;
  result.__ptr_ = v6;
  return result;
}

- (void)cryptoHeader
{
  diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
  backendXPC = [diskImageParamsXPC backendXPC];
  cryptoHeader = [backendXPC cryptoHeader];

  return cryptoHeader;
}

@end