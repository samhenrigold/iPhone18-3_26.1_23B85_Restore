@interface BRButtonResolverController
+ (id)sharedInstance;
+ (void)sharedInstance;
- (BOOL)disableStates:(id)states clearAsset:(BOOL)asset error:(id *)error;
- (BOOL)enableStates:(id)states error:(id *)error;
- (BOOL)isReady;
- (BOOL)playState:(unint64_t)state forSpeed:(unint64_t)speed error:(id *)error;
- (BOOL)setConfigs:(id)configs withAssets:(id)assets forStates:(id)states error:(id *)error;
- (BOOL)setGlobalConfigs:(id)configs error:(id *)error;
- (BRButtonResolverController)init;
- (id)description;
- (id)propertyList;
- (unint64_t)maxAssetSlots;
- (unint64_t)unusedAssetSlots;
- (void)dealloc;
- (void)init;
- (void)propertyList;
- (void)scheduleReadyNotificationOnDispatchQueue:(id)queue withBlock:(id)block;
@end

@implementation BRButtonResolverController

+ (id)sharedInstance
{
  v3 = _BRLog_log;
  if (!_BRLog_log)
  {
    v3 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v3;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(BRButtonResolverController *)v3 sharedInstance:v4];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__BRButtonResolverController_sharedInstance__block_invoke;
  block[3] = &unk_278D3F310;
  block[4] = self;
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, block);
  }

  return sharedInstance_inst;
}

id __44__BRButtonResolverController_sharedInstance__block_invoke(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  sharedInstance_inst = result;
  return result;
}

- (BRButtonResolverController)init
{
  v6.receiver = self;
  v6.super_class = BRButtonResolverController;
  v2 = [(BRButtonResolverController *)&v6 init];
  if (v2)
  {
    v3 = +[BRInterface interfaces];
    v2->_interfaces = v3;
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      [(BRButtonResolverController *)v2 init];
      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BRButtonResolverController;
  [(BRButtonResolverController *)&v3 dealloc];
}

- (id)description
{
  v5.receiver = self;
  v5.super_class = BRButtonResolverController;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[BRButtonResolverController description](&v5, sel_description)}];
  [v3 appendFormat:@"Interfaces: %@;\n", self->_interfaces];
  return v3;
}

- (id)propertyList
{
  v16 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  interfaces = self->_interfaces;
  v5 = [(NSSet *)interfaces countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(interfaces);
        }

        [dictionary setObject:objc_msgSend(*(*(&v11 + 1) + 8 * v8++) forKeyedSubscript:{"propertyList"), objc_msgSend(objc_opt_class(), "description")}];
      }

      while (v6 != v8);
      v6 = [(NSSet *)interfaces countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = _BRLog_log;
  if (!_BRLog_log)
  {
    v9 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(BRButtonResolverController *)dictionary propertyList];
  }

  return dictionary;
}

- (BOOL)isReady
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  interfaces = self->_interfaces;
  v3 = [(NSSet *)interfaces countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(interfaces);
      }

      isReady = [*(*(&v9 + 1) + 8 * v6) isReady];
      if (!isReady)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSSet *)interfaces countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(isReady) = 1;
  }

  return isReady;
}

- (unint64_t)maxAssetSlots
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  interfaces = self->_interfaces;
  v3 = [(NSSet *)interfaces countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return -1;
  }

  v4 = v3;
  v5 = *v11;
  maxAssetSlots = -1;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(interfaces);
      }

      v8 = *(*(&v10 + 1) + 8 * i);
      if ([v8 maxAssetSlots] < maxAssetSlots)
      {
        maxAssetSlots = [v8 maxAssetSlots];
      }
    }

    v4 = [(NSSet *)interfaces countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return maxAssetSlots;
}

- (unint64_t)unusedAssetSlots
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  interfaces = self->_interfaces;
  v3 = [(NSSet *)interfaces countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return -1;
  }

  v4 = v3;
  v5 = *v11;
  unusedAssetSlots = -1;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(interfaces);
      }

      v8 = *(*(&v10 + 1) + 8 * i);
      if ([v8 maxAssetSlots] < unusedAssetSlots)
      {
        unusedAssetSlots = [v8 unusedAssetSlots];
      }
    }

    v4 = [(NSSet *)interfaces countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return unusedAssetSlots;
}

- (BOOL)setGlobalConfigs:(id)configs error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v7 = _BRLog_log;
  if (!_BRLog_log)
  {
    v7 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(BRButtonResolverController *)v7 setGlobalConfigs:v8 error:v9, v10, v11, v12, v13, v14];
  }

  if ([(BRButtonResolverController *)self isReady])
  {
    if (configs)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      interfaces = self->_interfaces;
      v16 = [(NSSet *)interfaces countByEnumeratingWithState:&v26 objects:v35 count:16];
      if (!v16)
      {
        v20 = 0;
        return v20 == 0;
      }

      v17 = v16;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(interfaces);
          }

          [*(*(&v26 + 1) + 8 * i) setGlobalConfigs:configs error:&v30];
        }

        v17 = [(NSSet *)interfaces countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v17);
      v20 = v30;
      if (!v30)
      {
        return v20 == 0;
      }

      goto LABEL_15;
    }

    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA590];
    v25 = -536870206;
  }

  else
  {
    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA590];
    v25 = -536870184;
  }

  v20 = [v23 errorWithDomain:v24 code:v25 userInfo:0];
  v30 = v20;
  if (!v20)
  {
    return v20 == 0;
  }

LABEL_15:
  v21 = _BRLog_log;
  if (!_BRLog_log)
  {
    v21 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v21;
    v20 = v30;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v32 = "[BRButtonResolverController setGlobalConfigs:error:]";
    v33 = 2112;
    v34 = v20;
    _os_log_error_impl(&dword_242149000, v21, OS_LOG_TYPE_ERROR, "%s error: %@", buf, 0x16u);
    v20 = v30;
    if (!error)
    {
      return v20 == 0;
    }

    goto LABEL_19;
  }

  if (error)
  {
LABEL_19:
    *error = v20;
  }

  return v20 == 0;
}

- (BOOL)setConfigs:(id)configs withAssets:(id)assets forStates:(id)states error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  v36 = 0;
  v11 = _BRLog_log;
  if (!_BRLog_log)
  {
    v11 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(BRButtonResolverController *)v11 setConfigs:v12 withAssets:v13 forStates:v14 error:v15, v16, v17, v18];
  }

  if ([(BRButtonResolverController *)self isReady])
  {
    if (states)
    {
      if ([states count])
      {
        if (!configs || (v19 = [configs count], v19 == objc_msgSend(states, "count")))
        {
          if (!assets || (v20 = [assets count], v20 == objc_msgSend(states, "count")))
          {
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            interfaces = self->_interfaces;
            v22 = [(NSSet *)interfaces countByEnumeratingWithState:&v32 objects:v41 count:16];
            if (!v22)
            {
              v26 = 0;
              return v26 == 0;
            }

            v23 = v22;
            v24 = *v33;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v33 != v24)
                {
                  objc_enumerationMutation(interfaces);
                }

                [*(*(&v32 + 1) + 8 * i) setConfigs:configs withAssets:assets forStates:states error:&v36];
              }

              v23 = [(NSSet *)interfaces countByEnumeratingWithState:&v32 objects:v41 count:16];
            }

            while (v23);
            v26 = v36;
            if (!v36)
            {
              return v26 == 0;
            }

            goto LABEL_20;
          }
        }
      }
    }

    v29 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA590];
    v31 = -536870206;
  }

  else
  {
    v29 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA590];
    v31 = -536870184;
  }

  v26 = [v29 errorWithDomain:v30 code:v31 userInfo:0];
  v36 = v26;
  if (!v26)
  {
    return v26 == 0;
  }

LABEL_20:
  v27 = _BRLog_log;
  if (!_BRLog_log)
  {
    v27 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v27;
    v26 = v36;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v38 = "[BRButtonResolverController setConfigs:withAssets:forStates:error:]";
    v39 = 2112;
    v40 = v26;
    _os_log_error_impl(&dword_242149000, v27, OS_LOG_TYPE_ERROR, "%s error: %@", buf, 0x16u);
    v26 = v36;
    if (!error)
    {
      return v26 == 0;
    }

    goto LABEL_24;
  }

  if (error)
  {
LABEL_24:
    *error = v26;
  }

  return v26 == 0;
}

- (BOOL)enableStates:(id)states error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v7 = _BRLog_log;
  if (!_BRLog_log)
  {
    v7 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(BRButtonResolverController *)v7 enableStates:v8 error:v9, v10, v11, v12, v13, v14];
  }

  if ([(BRButtonResolverController *)self isReady])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    interfaces = self->_interfaces;
    v16 = [(NSSet *)interfaces countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (!v16)
    {
      v20 = 0;
      return v20 == 0;
    }

    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(interfaces);
        }

        [*(*(&v23 + 1) + 8 * i) enableStates:states error:&v27];
      }

      v17 = [(NSSet *)interfaces countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v17);
    v20 = v27;
    if (!v27)
    {
      return v20 == 0;
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-536870184 userInfo:0];
    v27 = v20;
    if (!v20)
    {
      return v20 == 0;
    }
  }

  v21 = _BRLog_log;
  if (!_BRLog_log)
  {
    v21 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v21;
    v20 = v27;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v29 = "[BRButtonResolverController enableStates:error:]";
    v30 = 2112;
    v31 = v20;
    _os_log_error_impl(&dword_242149000, v21, OS_LOG_TYPE_ERROR, "%s error: %@", buf, 0x16u);
    v20 = v27;
    if (!error)
    {
      return v20 == 0;
    }

    goto LABEL_18;
  }

  if (error)
  {
LABEL_18:
    *error = v20;
  }

  return v20 == 0;
}

- (BOOL)disableStates:(id)states clearAsset:(BOOL)asset error:(id *)error
{
  assetCopy = asset;
  v35 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v9 = _BRLog_log;
  if (!_BRLog_log)
  {
    v9 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(BRButtonResolverController *)v9 disableStates:v10 clearAsset:v11 error:v12, v13, v14, v15, v16];
  }

  if ([(BRButtonResolverController *)self isReady])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    interfaces = self->_interfaces;
    v18 = [(NSSet *)interfaces countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (!v18)
    {
      v22 = 0;
      return v22 == 0;
    }

    v19 = v18;
    v20 = *v26;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(interfaces);
        }

        [*(*(&v25 + 1) + 8 * i) disableStates:states clearAsset:assetCopy error:&v29];
      }

      v19 = [(NSSet *)interfaces countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v19);
    v22 = v29;
    if (!v29)
    {
      return v22 == 0;
    }
  }

  else
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-536870184 userInfo:0];
    v29 = v22;
    if (!v22)
    {
      return v22 == 0;
    }
  }

  v23 = _BRLog_log;
  if (!_BRLog_log)
  {
    v23 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v23;
    v22 = v29;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v31 = "[BRButtonResolverController disableStates:clearAsset:error:]";
    v32 = 2112;
    v33 = v22;
    _os_log_error_impl(&dword_242149000, v23, OS_LOG_TYPE_ERROR, "%s error: %@", buf, 0x16u);
    v22 = v29;
    if (!error)
    {
      return v22 == 0;
    }

    goto LABEL_18;
  }

  if (error)
  {
LABEL_18:
    *error = v22;
  }

  return v22 == 0;
}

- (BOOL)playState:(unint64_t)state forSpeed:(unint64_t)speed error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v9 = _BRLog_log;
  if (!_BRLog_log)
  {
    v9 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(BRButtonResolverController *)v9 playState:v10 forSpeed:v11 error:v12, v13, v14, v15, v16];
  }

  if ([(BRButtonResolverController *)self isReady])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    interfaces = self->_interfaces;
    v18 = [(NSSet *)interfaces countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (!v18)
    {
      v22 = 0;
      return v22 == 0;
    }

    v19 = v18;
    v20 = *v26;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(interfaces);
        }

        [*(*(&v25 + 1) + 8 * i) playState:state forSpeed:speed error:&v29];
      }

      v19 = [(NSSet *)interfaces countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v19);
    v22 = v29;
    if (!v29)
    {
      return v22 == 0;
    }
  }

  else
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-536870184 userInfo:0];
    v29 = v22;
    if (!v22)
    {
      return v22 == 0;
    }
  }

  v23 = _BRLog_log;
  if (!_BRLog_log)
  {
    v23 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v23;
    v22 = v29;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v31 = "[BRButtonResolverController playState:forSpeed:error:]";
    v32 = 2112;
    v33 = v22;
    _os_log_error_impl(&dword_242149000, v23, OS_LOG_TYPE_ERROR, "%s error: %@", buf, 0x16u);
    v22 = v29;
    if (!error)
    {
      return v22 == 0;
    }

    goto LABEL_18;
  }

  if (error)
  {
LABEL_18:
    *error = v22;
  }

  return v22 == 0;
}

- (void)scheduleReadyNotificationOnDispatchQueue:(id)queue withBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = [(NSSet *)self->_interfaces count];
  v7 = _BRLog_log;
  if (!_BRLog_log)
  {
    v7 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(BRButtonResolverController *)buf scheduleReadyNotificationOnDispatchQueue:v7 withBlock:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  interfaces = self->_interfaces;
  v9 = [(NSSet *)interfaces countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(interfaces);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __81__BRButtonResolverController_scheduleReadyNotificationOnDispatchQueue_withBlock___block_invoke;
        v13[3] = &unk_278D3F338;
        v13[6] = block;
        v13[7] = v18;
        v13[4] = queue;
        v13[5] = v12;
        [v12 scheduleReadyNotificationWithBlock:v13];
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSSet *)interfaces countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }

  _Block_object_dispose(v18, 8);
}

void __81__BRButtonResolverController_scheduleReadyNotificationOnDispatchQueue_withBlock___block_invoke(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 24) - 1;
  *(v3 + 24) = v4;
  if (!v4)
  {
    dispatch_async(*(a1 + 32), *(a1 + 48));
  }

  v5 = _BRLog_log;
  if (!_BRLog_log)
  {
    v5 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v5;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __81__BRButtonResolverController_scheduleReadyNotificationOnDispatchQueue_withBlock___block_invoke_cold_1(a1, v2, v5);
  }
}

+ (void)sharedInstance
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "+[BRButtonResolverController sharedInstance]";
  OUTLINED_FUNCTION_0(&dword_242149000, self, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)init
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = _BRLog_log;
  if (!_BRLog_log)
  {
    v2 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[BRButtonResolverController init]";
    _os_log_error_impl(&dword_242149000, v2, OS_LOG_TYPE_ERROR, "%s failed!", &v3, 0xCu);
  }
}

- (void)propertyList
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[BRButtonResolverController propertyList]";
  v4 = 2112;
  selfCopy = self;
  _os_log_debug_impl(&dword_242149000, a2, OS_LOG_TYPE_DEBUG, "%s %@", &v2, 0x16u);
}

- (void)setGlobalConfigs:(uint64_t)a3 error:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[BRButtonResolverController setGlobalConfigs:error:]";
  OUTLINED_FUNCTION_0(&dword_242149000, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setConfigs:(uint64_t)a3 withAssets:(uint64_t)a4 forStates:(uint64_t)a5 error:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[BRButtonResolverController setConfigs:withAssets:forStates:error:]";
  OUTLINED_FUNCTION_0(&dword_242149000, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)enableStates:(uint64_t)a3 error:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[BRButtonResolverController enableStates:error:]";
  OUTLINED_FUNCTION_0(&dword_242149000, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)disableStates:(uint64_t)a3 clearAsset:(uint64_t)a4 error:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[BRButtonResolverController disableStates:clearAsset:error:]";
  OUTLINED_FUNCTION_0(&dword_242149000, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)playState:(uint64_t)a3 forSpeed:(uint64_t)a4 error:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[BRButtonResolverController playState:forSpeed:error:]";
  OUTLINED_FUNCTION_0(&dword_242149000, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)scheduleReadyNotificationOnDispatchQueue:(os_log_t)log withBlock:.cold.1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = "[BRButtonResolverController scheduleReadyNotificationOnDispatchQueue:withBlock:]";
  *(buf + 6) = 2048;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_242149000, log, OS_LOG_TYPE_DEBUG, "%s interface count: %lu", buf, 0x16u);
}

void __81__BRButtonResolverController_scheduleReadyNotificationOnDispatchQueue_withBlock___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = *(*(*a2 + 8) + 24);
  v7 = 136315650;
  v8 = "[BRButtonResolverController scheduleReadyNotificationOnDispatchQueue:withBlock:]_block_invoke";
  v9 = 2112;
  v10 = v5;
  v11 = 2048;
  v12 = v6;
  _os_log_debug_impl(&dword_242149000, a3, OS_LOG_TYPE_DEBUG, "%s interface is ready: %@, unready interfaces: %lu", &v7, 0x20u);
}

@end