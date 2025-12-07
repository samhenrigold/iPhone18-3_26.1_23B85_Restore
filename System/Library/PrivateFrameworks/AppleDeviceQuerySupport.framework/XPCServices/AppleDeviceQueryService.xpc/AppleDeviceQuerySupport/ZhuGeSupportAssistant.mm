@interface ZhuGeSupportAssistant
+ (id)getSharedInstanceByName:(id)name withError:(id *)error;
+ (id)getXpcProxyWithError:(id *)error;
+ (id)isKey:(id)key withError:(id *)error;
+ (void)getDylibHandlerWithError:(id *)error;
@end

@implementation ZhuGeSupportAssistant

+ (void)getDylibHandlerWithError:(id *)error
{
  if (error)
  {
    *error = 0;
    if (qword_100019F48 != -1)
    {
      sub_1000098BC();
    }

    *error = qword_100019F50;
  }

  else
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getDylibHandlerWithError:]", 60, @"error p-pointer is nil!", v3, v4, v5, v8);
  }

  return qword_100019F58;
}

+ (id)getSharedInstanceByName:(id)name withError:(id *)error
{
  nameCopy = name;
  isInternalAssistant = [self isInternalAssistant];
  if (isInternalAssistant && (isZhuGeInRestoreOS(isInternalAssistant, v8) & 1) != 0)
  {
    goto LABEL_10;
  }

  if (!error)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getSharedInstanceByName:withError:]", 95, @"error p-pointer is nil!", v9, v10, v11, v33);
LABEL_10:
    sharedInstance = 0;
    v21 = 0;
    goto LABEL_14;
  }

  *error = 0;
  classList = [self classList];
  v13 = [classList containsObject:nameCopy];

  if ((v13 & 1) == 0)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getSharedInstanceByName:withError:]", 101, @"Unknown class name!", v14, v15, v16, v33);
    v27 = [NSError errorWithZhuGeErrorCode:38 underlyingError:0];
    sharedInstance = 0;
    v21 = 0;
LABEL_12:
    *error = v27;
    goto LABEL_14;
  }

  v34 = 0;
  sharedInstance = [self getDylibHandlerWithError:&v34];
  v21 = v34;
  if (!sharedInstance)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getSharedInstanceByName:withError:]", 109, @"Failed to get ZhuGe armory handler!", v18, v19, v20, v33);
    v28 = v21;
    *error = v21;
    goto LABEL_14;
  }

  v22 = dlsym(sharedInstance, [nameCopy UTF8String]);
  if (!v22)
  {
    if (dlerror())
    {
      dlerror();
    }

    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getSharedInstanceByName:withError:]", 116, @"Failed to find class symbol for %@ with error: %s!", v30, v31, v32, nameCopy);
    v27 = [NSError errorWithZhuGeErrorCode:13 underlyingError:0];
    sharedInstance = 0;
    goto LABEL_12;
  }

  sharedInstance = [v22 sharedInstance];
  if (!sharedInstance)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getSharedInstanceByName:withError:]", 123, @"Failed to have shared instance for %@!", v23, v24, v25, nameCopy);
    v26 = [NSError errorWithZhuGeErrorCode:38 underlyingError:0];

    v21 = v26;
  }

LABEL_14:

  return sharedInstance;
}

+ (id)isKey:(id)key withError:(id *)error
{
  keyCopy = key;
  isInternalAssistant = [self isInternalAssistant];
  if (isInternalAssistant && (isZhuGeInRestoreOS(isInternalAssistant, v8) & 1) != 0)
  {
    goto LABEL_9;
  }

  if (!error)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant isKey:withError:]", 146, @"error p-pointer is nil!", v9, v10, v11, v27);
LABEL_9:
    v19 = 0;
    v14 = 0;
    v13 = 0;
    v16 = 0;
    goto LABEL_11;
  }

  *error = 0;
  armoryClassName = [self armoryClassName];
  v29 = 0;
  v13 = [self getSharedInstanceByName:armoryClassName withError:&v29];
  v14 = v29;

  if (v13)
  {
    helper = [v13 helper];
    v28 = v14;
    v16 = [helper getConfigOfKey:keyCopy withError:&v28];
    v17 = v28;

    v18 = &__kCFBooleanTrue;
    if (!v16)
    {
      v18 = &__kCFBooleanFalse;
    }

    v19 = v18;
    v14 = v17;
  }

  else
  {
    armoryClassName2 = [self armoryClassName];
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant isKey:withError:]", 154, @"Failed to get a shared instance for %@!", v21, v22, v23, armoryClassName2);

    v24 = v14;
    v19 = 0;
    v13 = 0;
    v16 = 0;
    *error = v14;
  }

LABEL_11:
  v25 = v19;

  return v19;
}

+ (id)getXpcProxyWithError:(id *)error
{
  isInternalAssistant = [self isInternalAssistant];
  if (isInternalAssistant && (isZhuGeInRestoreOS(isInternalAssistant, v6) & 1) != 0)
  {
    goto LABEL_9;
  }

  if (!error)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getXpcProxyWithError:]", 182, @"error p-pointer is nil!", v7, v8, v9, v42);
LABEL_9:
    v14 = 0;
    v15 = 0;
    goto LABEL_16;
  }

  *error = 0;
  if (qword_100019F60 != -1)
  {
    sub_1000098D0();
  }

  pthread_mutex_lock(&stru_100019F68);
  v13 = &off_10000B000;
  if (byte_100019FB0 == 1)
  {
    ZhuGeLog(524544, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getXpcProxyWithError:]", 194, @"XPC connection is already available", v10, v11, v12, v42);
    v14 = 0;
  }

  else
  {
    v16 = [NSXPCConnection alloc];
    serviceXpcName = [self serviceXpcName];
    v18 = [v16 initWithServiceName:serviceXpcName];
    v19 = qword_100019FA8;
    qword_100019FA8 = v18;

    if (!qword_100019FA8)
    {
      serviceXpcName2 = [self serviceXpcName];
      ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getXpcProxyWithError:]", 201, @"Failed to connect %@!", v38, v39, v40, serviceXpcName2);

      v36 = [NSError errorWithZhuGeErrorCode:67 underlyingError:0];
      v14 = 0;
      v15 = 0;
      goto LABEL_15;
    }

    v20 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ZhuGeServiceProtocol];
    [qword_100019FA8 setRemoteObjectInterface:v20];

    v45 = objc_opt_class();
    v44 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v43 = v22;
    v13 = &off_10000B000;
    v14 = [NSSet setWithObjects:v45, v44, v21, v43, v23, v24, v25, v26, v27, objc_opt_class(), 0];
    remoteObjectInterface = [qword_100019FA8 remoteObjectInterface];
    [remoteObjectInterface setClasses:v14 forSelector:"setBulkKeys:getValuesAndError:" argumentIndex:0 ofReply:1];

    remoteObjectInterface2 = [qword_100019FA8 remoteObjectInterface];
    [remoteObjectInterface2 setClasses:v14 forSelector:"setBulkInternalKeys:getValuesAndError:" argumentIndex:0 ofReply:1];

    remoteObjectInterface3 = [qword_100019FA8 remoteObjectInterface];
    [remoteObjectInterface3 setClasses:v14 forSelector:"setBulkMGKeys:getValuesAndError:" argumentIndex:0 ofReply:1];

    remoteObjectInterface4 = [qword_100019FA8 remoteObjectInterface];
    [remoteObjectInterface4 setClasses:v14 forSelector:"setBulkInternalMGKeys:getValuesAndError:" argumentIndex:0 ofReply:1];

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100005F9C;
    v48[3] = &unk_100014418;
    v48[4] = self;
    [qword_100019FA8 setInvalidationHandler:v48];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100006028;
    v47[3] = &unk_100014418;
    v47[4] = self;
    [qword_100019FA8 setInterruptionHandler:v47];
    [qword_100019FA8 activate];
    byte_100019FB0 = 1;
  }

  v46[0] = _NSConcreteStackBlock;
  v46[1] = *(v13 + 203);
  v46[2] = sub_1000060B4;
  v46[3] = &unk_100014438;
  v46[4] = self;
  v15 = [qword_100019FA8 synchronousRemoteObjectProxyWithErrorHandler:v46];
  if (v15)
  {
    goto LABEL_16;
  }

  serviceXpcName3 = [self serviceXpcName];
  ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeSupportAssistant.m", "+[ZhuGeSupportAssistant getXpcProxyWithError:]", 261, @"Failed to get proxy for %@!", v33, v34, v35, serviceXpcName3);

  v36 = [NSError errorWithZhuGeErrorCode:66 underlyingError:0];
LABEL_15:
  *error = v36;
LABEL_16:
  pthread_mutex_unlock(&stru_100019F68);

  return v15;
}

@end