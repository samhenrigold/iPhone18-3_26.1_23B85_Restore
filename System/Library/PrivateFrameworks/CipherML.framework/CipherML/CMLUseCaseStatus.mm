@interface CMLUseCaseStatus
+ (id)statusForClientConfig:(id)config options:(unint64_t)options error:(id *)error;
+ (void)requestStatusForClientConfig:(id)config options:(unint64_t)options completionHandler:(id)handler;
+ (void)requestStatusForClientConfig:(id)config options:(unint64_t)options dispatchQueue:(id)queue completionHandler:(id)handler;
- (CMLUseCaseStatus)initWithCoder:(id)coder;
- (CMLUseCaseStatus)initWithUseCase:(id)case serializedDynamicConfig:(id)config serializedEvaluationKeyConfig:(id)keyConfig lastUsed:(id)used keyGenerationTime:(id)time keyExpirationTime:(id)expirationTime cacheCapacity:(int64_t)capacity cacheElementCount:(int64_t)self0 cacheEntryMinutesToLive:(int64_t)self1 cacheEvictionPolicy:(int64_t)self2 status:(unint64_t)self3;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMLUseCaseStatus

- (CMLUseCaseStatus)initWithUseCase:(id)case serializedDynamicConfig:(id)config serializedEvaluationKeyConfig:(id)keyConfig lastUsed:(id)used keyGenerationTime:(id)time keyExpirationTime:(id)expirationTime cacheCapacity:(int64_t)capacity cacheElementCount:(int64_t)self0 cacheEntryMinutesToLive:(int64_t)self1 cacheEvictionPolicy:(int64_t)self2 status:(unint64_t)self3
{
  caseCopy = case;
  configCopy = config;
  keyConfigCopy = keyConfig;
  usedCopy = used;
  timeCopy = time;
  expirationTimeCopy = expirationTime;
  v29.receiver = self;
  v29.super_class = CMLUseCaseStatus;
  v23 = [(CMLUseCaseStatus *)&v29 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_useCase, case);
    objc_storeStrong(&v24->_serializedDynamicConfig, config);
    objc_storeStrong(&v24->_serializedEvaluationKeyConfig, keyConfig);
    objc_storeStrong(&v24->_lastUsed, used);
    objc_storeStrong(&v24->_keyGenerationTime, time);
    objc_storeStrong(&v24->_keyExpirationTime, expirationTime);
    v24->_cacheCapacity = capacity;
    v24->_cacheElementCount = count;
    v24->_cacheEntryMinutesToLive = live;
    v24->_cacheEvictionPolicy = policy;
    v24->_status = status;
  }

  return v24;
}

+ (void)requestStatusForClientConfig:(id)config options:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  configCopy = config;
  v9 = dispatch_queue_create("com.apple.CipherML.CMLUseCaseStatus", 0);
  [objc_opt_class() requestStatusForClientConfig:configCopy options:options dispatchQueue:v9 completionHandler:handlerCopy];
}

+ (void)requestStatusForClientConfig:(id)config options:(unint64_t)options dispatchQueue:(id)queue completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  configCopy = config;
  v13 = +[CMLXPC createConnection];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__CMLUseCaseStatus_requestStatusForClientConfig_options_dispatchQueue_completionHandler___block_invoke;
  aBlock[3] = &unk_2785418E8;
  v14 = handlerCopy;
  v30 = v14;
  v15 = v13;
  v29 = v15;
  v16 = _Block_copy(aBlock);
  v17 = [CMLXPC asyncProxyToConnection:v15 dispatchQueue:queueCopy errorHandler:v16];
  v18 = +[CMLLog client];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = NSStringFromSelector(a2);
    *buf = 138543362;
    v32 = v19;
    _os_log_impl(&dword_224E26000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __89__CMLUseCaseStatus_requestStatusForClientConfig_options_dispatchQueue_completionHandler___block_invoke_3;
  v23[3] = &unk_278541938;
  v26 = v14;
  v27 = a2;
  v24 = queueCopy;
  v25 = v15;
  v20 = v15;
  v21 = v14;
  v22 = queueCopy;
  [v17 queryStatusForClientConfig:configCopy options:options reply:v23];
}

uint64_t __89__CMLUseCaseStatus_requestStatusForClientConfig_options_dispatchQueue_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

void __89__CMLUseCaseStatus_requestStatusForClientConfig_options_dispatchQueue_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[CMLLog client];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(*(a1 + 56));
    *buf = 138543874;
    v19 = v8;
    v20 = 1024;
    v21 = v5 != 0;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&dword_224E26000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, status(%d) error:%{public}@", buf, 0x1Cu);
  }

  if (v6)
  {
    v9 = [CMLError errorWithCode:1100 underlyingError:v6 description:@"Unable to query status due to errors"];
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__CMLUseCaseStatus_requestStatusForClientConfig_options_dispatchQueue_completionHandler___block_invoke_6;
  v13[3] = &unk_278541910;
  v17 = *(a1 + 48);
  v14 = v5;
  v15 = v9;
  v16 = *(a1 + 40);
  v11 = v9;
  v12 = v5;
  dispatch_async(v10, v13);
}

uint64_t __89__CMLUseCaseStatus_requestStatusForClientConfig_options_dispatchQueue_completionHandler___block_invoke_6(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v2 = *(a1 + 48);

  return [v2 invalidate];
}

+ (id)statusForClientConfig:(id)config options:(unint64_t)options error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v9 = +[CMLXPC createConnection];
  v33 = 0;
  v10 = [CMLXPC syncProxyToConnection:v9 error:&v33];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v11 = +[CMLLog client];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138543362;
    v35 = v12;
    _os_log_impl(&dword_224E26000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __56__CMLUseCaseStatus_statusForClientConfig_options_error___block_invoke;
  v20[3] = &unk_278541960;
  v20[4] = &v21;
  v20[5] = &v27;
  v20[6] = a2;
  [v10 queryStatusForClientConfig:configCopy options:options reply:v20];
  if (error)
  {
    v13 = v33;
    if (!v33)
    {
      v13 = v28[5];
    }

    *error = v13;
  }

  v14 = +[CMLLog client];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    v16 = v22[5] != 0;
    v17 = v28[5];
    *buf = 138543874;
    v35 = v15;
    v36 = 1024;
    v37 = v16;
    v38 = 2114;
    v39 = v17;
    _os_log_impl(&dword_224E26000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Request complete, status(%d) error:%{public}@", buf, 0x1Cu);
  }

  [v9 invalidate];
  v18 = v22[5];
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v18;
}

void __56__CMLUseCaseStatus_statusForClientConfig_options_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = +[CMLLog client];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(*(a1 + 48));
    v13 = 138543874;
    v14 = v9;
    v15 = 1024;
    v16 = v6 != 0;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, status(%d), error:%{public}@", &v13, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:1100 underlyingError:v7 description:@"Unable to query status due to errors"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (CMLUseCaseStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"useCase"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializedDynamicConfig"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializedEvaluationKeyConfig"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUsed"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyGenerationTime"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyExpirationTime"];
  v8 = [coderCopy decodeIntegerForKey:@"cacheCapacity"];
  v9 = [coderCopy decodeIntegerForKey:@"cacheElementCount"];
  v10 = [coderCopy decodeIntegerForKey:@"cacheEntryMinutesToLive"];
  v11 = [coderCopy decodeInt64ForKey:@"cacheEvictionPolicy"];
  v12 = [coderCopy decodeInt64ForKey:@"status"];

  v13 = [(CMLUseCaseStatus *)self initWithUseCase:v16 serializedDynamicConfig:v15 serializedEvaluationKeyConfig:v4 lastUsed:v5 keyGenerationTime:v6 keyExpirationTime:v7 cacheCapacity:v8 cacheElementCount:v9 cacheEntryMinutesToLive:v10 cacheEvictionPolicy:v11 status:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  useCase = [(CMLUseCaseStatus *)self useCase];
  [coderCopy encodeObject:useCase forKey:@"useCase"];

  serializedDynamicConfig = [(CMLUseCaseStatus *)self serializedDynamicConfig];
  [coderCopy encodeObject:serializedDynamicConfig forKey:@"serializedDynamicConfig"];

  serializedEvaluationKeyConfig = [(CMLUseCaseStatus *)self serializedEvaluationKeyConfig];
  [coderCopy encodeObject:serializedEvaluationKeyConfig forKey:@"serializedEvaluationKeyConfig"];

  lastUsed = [(CMLUseCaseStatus *)self lastUsed];
  [coderCopy encodeObject:lastUsed forKey:@"lastUsed"];

  keyGenerationTime = [(CMLUseCaseStatus *)self keyGenerationTime];
  [coderCopy encodeObject:keyGenerationTime forKey:@"keyGenerationTime"];

  keyExpirationTime = [(CMLUseCaseStatus *)self keyExpirationTime];
  [coderCopy encodeObject:keyExpirationTime forKey:@"keyExpirationTime"];

  [coderCopy encodeInteger:-[CMLUseCaseStatus cacheCapacity](self forKey:{"cacheCapacity"), @"cacheCapacity"}];
  [coderCopy encodeInteger:-[CMLUseCaseStatus cacheElementCount](self forKey:{"cacheElementCount"), @"cacheElementCount"}];
  [coderCopy encodeInteger:-[CMLUseCaseStatus cacheEntryMinutesToLive](self forKey:{"cacheEntryMinutesToLive"), @"cacheEntryMinutesToLive"}];
  [coderCopy encodeInt64:-[CMLUseCaseStatus cacheEvictionPolicy](self forKey:{"cacheEvictionPolicy"), @"cacheEvictionPolicy"}];
  [coderCopy encodeInt64:-[CMLUseCaseStatus status](self forKey:{"status"), @"status"}];
}

@end