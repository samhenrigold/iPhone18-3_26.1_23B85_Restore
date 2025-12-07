@interface IXPromisedInMemoryDictionary
- (IXPromisedInMemoryDictionary)initWithCoder:(id)coder;
- (IXPromisedInMemoryDictionary)initWithName:(id)name client:(unint64_t)client dictionary:(id)dictionary;
- (IXPromisedInMemoryDictionary)initWithName:(id)name client:(unint64_t)client dictionary:(id)dictionary location:(id)location;
- (IXPromisedInMemoryDictionary)initWithSeed:(id)seed;
- (void)encodeWithCoder:(id)coder;
- (void)resetWithCompletion:(id)completion;
@end

@implementation IXPromisedInMemoryDictionary

- (IXPromisedInMemoryDictionary)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = IXPromisedInMemoryDictionary;
  return [(IXOwnedDataPromise *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = IXPromisedInMemoryDictionary;
  [(IXDataPromise *)&v3 encodeWithCoder:coder];
}

- (IXPromisedInMemoryDictionary)initWithName:(id)name client:(unint64_t)client dictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  nameCopy = name;
  v10 = objc_opt_new();
  v11 = [(IXPromisedInMemoryDictionary *)self initWithName:nameCopy client:client dictionary:dictionaryCopy location:v10];

  return v11;
}

- (IXPromisedInMemoryDictionary)initWithName:(id)name client:(unint64_t)client dictionary:(id)dictionary location:(id)location
{
  v29 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dictionaryCopy = dictionary;
  locationCopy = location;
  v26 = 0;
  v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionaryCopy format:200 options:0 error:&v26];
  v14 = v26;
  if (v13)
  {
    v25.receiver = self;
    v25.super_class = IXPromisedInMemoryDictionary;
    self = -[IXOwnedDataPromise initWithName:client:diskSpaceNeeded:location:](&v25, sel_initWithName_client_diskSpaceNeeded_location_, nameCopy, client, [v13 length], locationCopy);
    if (!self)
    {
      goto LABEL_9;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v28 = 0;
    v15 = +[IXServerConnection sharedConnection];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __72__IXPromisedInMemoryDictionary_initWithName_client_dictionary_location___block_invoke;
    v24[3] = &unk_1E85C5560;
    v24[4] = buf;
    selfCopy2 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v24];

    if (!selfCopy2)
    {
      _Block_object_dispose(buf, 8);
      goto LABEL_11;
    }

    seed = [(IXDataPromise *)self seed];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __72__IXPromisedInMemoryDictionary_initWithName_client_dictionary_location___block_invoke_7;
    v21[3] = &unk_1E85C6A00;
    v23 = buf;
    selfCopy = self;
    v22 = selfCopy;
    [(IXPromisedInMemoryDictionary *)selfCopy2 _remote_createInMemoryDictionaryPromiseWithSeed:seed dictionary:dictionaryCopy completion:v21];

    LOBYTE(seed) = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (seed)
    {
      selfCopy2 = 0;
      self = selfCopy;
    }

    else
    {
LABEL_9:
      self = self;
      selfCopy2 = self;
    }
  }

  else
  {
    v19 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[IXPromisedInMemoryDictionary initWithName:client:dictionary:location:]";
      *&buf[12] = 2112;
      *&buf[14] = v14;
      _os_log_impl(&dword_1DA47A000, v19, OS_LOG_TYPE_DEFAULT, "%s: Failed to serialize dictionary: %@", buf, 0x16u);
    }

    selfCopy2 = 0;
  }

LABEL_11:

  return selfCopy2;
}

void __72__IXPromisedInMemoryDictionary_initWithName_client_dictionary_location___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[IXPromisedInMemoryDictionary initWithName:client:dictionary:location:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v5, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

void __72__IXPromisedInMemoryDictionary_initWithName_client_dictionary_location___block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IXPromisedInMemoryDictionary initWithName:client:dictionary:location:]_block_invoke";
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed tell daemon to set up in memory dictionary promise: %@", &v7, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    [*(a1 + 32) _updateInitWithSeed:a2 notifyDaemon:0];
  }
}

- (void)resetWithCompletion:(id)completion
{
  v3 = kIXLoggingSubsystem;
  completionCopy = completion;
  v5 = IXGetLoggingHandle(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [IXPromisedInMemoryDictionary resetWithCompletion:v5];
  }

  v7 = _CreateError("[IXPromisedInMemoryDictionary resetWithCompletion:]", 96, @"IXErrorDomain", 4uLL, 0, 0, @"Resetting an in-memory dictionary promise doesn't make sense.", v6, v8);
  completionCopy[2](completionCopy, v7);
}

- (IXPromisedInMemoryDictionary)initWithSeed:(id)seed
{
  v4.receiver = self;
  v4.super_class = IXPromisedInMemoryDictionary;
  return [(IXOwnedDataPromise *)&v4 initWithSeed:seed];
}

- (void)resetWithCompletion:(os_log_t)log .cold.1(os_log_t log)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = 136315394;
  v2 = "[IXPromisedInMemoryDictionary resetWithCompletion:]";
  v3 = 2112;
  v4 = 0;
  _os_log_error_impl(&dword_1DA47A000, log, OS_LOG_TYPE_ERROR, "%s: Resetting an in-memory dictionary promise doesn't make sense. : %@", &v1, 0x16u);
}

@end