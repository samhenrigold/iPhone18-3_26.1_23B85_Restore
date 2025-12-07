@interface BRInterfaceKeyboard
+ (id)interface;
- (BOOL)_disableState:(unint64_t)state;
- (BOOL)_enableState:(unint64_t)state;
- (BOOL)_servicesSetProperty:(void *)property forKey:(__CFString *)key;
- (BOOL)_setCachedPropertiesOnService:(__IOHIDServiceClient *)service;
- (BOOL)_setConfig:(id)config forState:(unint64_t)state error:(id *)error;
- (BOOL)disableStates:(id)states clearAsset:(BOOL)asset error:(id *)error;
- (BOOL)enableStates:(id)states error:(id *)error;
- (BOOL)setConfigs:(id)configs withAssets:(id)assets forStates:(id)states error:(id *)error;
- (BRInterfaceKeyboard)init;
- (id)description;
- (id)propertyList;
- (void)_findServices;
- (void)dealloc;
- (void)init;
- (void)propertyList;
- (void)scheduleReadyNotificationWithBlock:(id)block;
@end

@implementation BRInterfaceKeyboard

- (BRInterfaceKeyboard)init
{
  v7.receiver = self;
  v7.super_class = BRInterfaceKeyboard;
  v2 = [(BRInterface *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_maxAssetSlots = -1;
    v2->_unusedAssetSlots = -1;
    v2->_isReady = 1;
    v2->_client = 0;
    v4 = objc_opt_new();
    v3->_services = v4;
    if (v4 && (v5 = objc_opt_new(), v3->_propertyCache = v5, v3->_services))
    {
      [(NSMutableDictionary *)v5 setObject:&unk_285468538 forKeyedSubscript:@"PressCountUsagePairs"];
      v3->_doublePressTimeoutUs = 0;
      v3->_triplePressTimeoutUs = 0;
      v3->_longPressTimeoutUs = 0;
    }

    else
    {
      [(BRInterfaceKeyboard *)v3 init];
      return 0;
    }
  }

  return v3;
}

- (void)dealloc
{
  client = self->_client;
  if (client)
  {
    CFRelease(client);
  }

  v4.receiver = self;
  v4.super_class = BRInterfaceKeyboard;
  [(BRInterface *)&v4 dealloc];
}

- (id)description
{
  v5.receiver = self;
  v5.super_class = BRInterfaceKeyboard;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[BRInterface description](&v5, sel_description)}];
  [v3 appendFormat:@"Services: %@;\n", self->_services];
  [v3 appendFormat:@"DoublePressTO: %lu;\n", self->_doublePressTimeoutUs];
  [v3 appendFormat:@"TriplePressTO: %lu;\n", self->_triplePressTimeoutUs];
  [v3 appendFormat:@"LongPressTO: %lu;\n", self->_longPressTimeoutUs];
  return v3;
}

- (id)propertyList
{
  v6.receiver = self;
  v6.super_class = BRInterfaceKeyboard;
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{-[BRInterface propertyList](&v6, sel_propertyList)}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_doublePressTimeoutUs), @"DoublePressTO"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_triplePressTimeoutUs), @"TriplePressTO"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_longPressTimeoutUs), @"LongPressTO"}];
  v4 = _BRLog_log_2;
  if (!_BRLog_log_2)
  {
    v4 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_2 = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRInterfaceKeyboard propertyList];
  }

  return v3;
}

+ (id)interface
{
  v2 = objc_alloc_init(BRInterfaceKeyboard);

  return v2;
}

- (BOOL)setConfigs:(id)configs withAssets:(id)assets forStates:(id)states error:(id *)error
{
  v17 = 0;
  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"start"]);
  if ([states count])
  {
    v11 = 0;
    while (1)
    {
      v12 = configs ? [configs objectAtIndexedSubscript:v11] : 0;
      v13 = [objc_msgSend(states objectAtIndexedSubscript:{v11), "unsignedIntegerValue"}];
      v14 = v12 == [MEMORY[0x277CBEB68] null] ? 0 : v12;
      [(BRInterfaceKeyboard *)self _setConfig:v14 forState:v13 error:&v17];
      v15 = v17;
      if (v17)
      {
        break;
      }

      if (++v11 >= [states count])
      {
        v15 = v17;
        break;
      }
    }

    if (error && v15)
    {
      *error = v15;
    }
  }

  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"end"]);
  return v17 == 0;
}

- (BOOL)enableStates:(id)states error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"start"]);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [states countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(states);
        }

        if (!-[BRInterfaceKeyboard _enableState:](self, "_enableState:", [*(*(&v15 + 1) + 8 * i) unsignedIntegerValue]))
        {
          v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-536870212 userInfo:0];
          v12 = v14 != 0;
          if (error && v14)
          {
            *error = v14;
            v12 = 1;
          }

          goto LABEL_10;
        }
      }

      v9 = [states countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_10:
  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"end"]);
  return !v12;
}

- (BOOL)disableStates:(id)states clearAsset:(BOOL)asset error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"start"]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [states countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(states);
        }

        if (!-[BRInterfaceKeyboard _disableState:](self, "_disableState:", [*(*(&v16 + 1) + 8 * i) unsignedIntegerValue]))
        {
          v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-536870212 userInfo:0];
          v13 = v15 != 0;
          if (error && v15)
          {
            *error = v15;
            v13 = 1;
          }

          goto LABEL_10;
        }
      }

      v10 = [states countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_10:
  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"end"]);
  return !v13;
}

- (void)scheduleReadyNotificationWithBlock:(id)block
{
  [(BRInterfaceKeyboard *)self _findServices];
  queue = [(BRInterface *)self queue];

  dispatch_async(queue, block);
}

- (BOOL)_setConfig:(id)config forState:(unint64_t)state error:(id *)error
{
  v8 = [config objectForKeyedSubscript:@"MaxTime"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = 0;
  if ((isKindOfClass & 1) == 0)
  {
    v8 = 0;
  }

  v11 = __ROR8__(state, 1);
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      if (v11 != 7)
      {
        return !v10;
      }

      if (v8)
      {
        if ([(BRInterfaceKeyboard *)self _servicesSetProperty:v8 forKey:@"LongPressTimeout"])
        {
          unsignedIntegerValue = [v8 unsignedIntegerValue];
          v10 = 0;
          v13 = 80;
          goto LABEL_19;
        }

        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (!v8)
    {
      goto LABEL_20;
    }

    if ([(BRInterfaceKeyboard *)self _servicesSetProperty:v8 forKey:@"PressCountTriplePressTimeout"])
    {
      unsignedIntegerValue = [v8 unsignedIntegerValue];
      v10 = 0;
      v13 = 72;
      goto LABEL_19;
    }
  }

  else
  {
    if (v11)
    {
      if (v11 != 1)
      {
        return !v10;
      }

      if (v8)
      {
        if ([(BRInterfaceKeyboard *)self _servicesSetProperty:v8 forKey:@"PressCountDoublePressTimeout"])
        {
          unsignedIntegerValue = [v8 unsignedIntegerValue];
          v10 = 0;
          v13 = 64;
LABEL_19:
          *(&self->super.super.isa + v13) = unsignedIntegerValue;
          return !v10;
        }

        goto LABEL_22;
      }

LABEL_20:
      v10 = 0;
      return !v10;
    }

    if ([(BRInterfaceKeyboard *)self _servicesSetProperty:*MEMORY[0x277CBED28] forKey:@"PressCountTrackingEnabled"])
    {
      goto LABEL_20;
    }
  }

LABEL_22:
  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-536870199 userInfo:0];
  v10 = v15 != 0;
  if (error && v15)
  {
    *error = v15;
    v10 = 1;
  }

  return !v10;
}

- (BOOL)_enableState:(unint64_t)state
{
  v4 = __ROR8__(state, 1);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (self->_triplePressTimeoutUs)
      {
        v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
        v6 = @"PressCountTriplePressTimeout";
        goto LABEL_13;
      }
    }

    else if (v4 == 7 && self->_longPressTimeoutUs)
    {
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      v6 = @"LongPressTimeout";
      goto LABEL_13;
    }

    return 1;
  }

  if (!v4)
  {
    v5 = *MEMORY[0x277CBED28];
    v6 = @"PressCountTrackingEnabled";
    goto LABEL_13;
  }

  if (v4 != 1 || !self->_doublePressTimeoutUs)
  {
    return 1;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v6 = @"PressCountDoublePressTimeout";
LABEL_13:

  return [(BRInterfaceKeyboard *)self _servicesSetProperty:v5 forKey:v6];
}

- (BOOL)_disableState:(unint64_t)state
{
  v3 = __ROR8__(state, 1);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = &unk_2854680F0;
      v5 = @"PressCountTriplePressTimeout";
      return [(BRInterfaceKeyboard *)self _servicesSetProperty:v4 forKey:v5];
    }

    if (v3 == 7)
    {
      v4 = &unk_2854680F0;
      v5 = @"LongPressTimeout";
      return [(BRInterfaceKeyboard *)self _servicesSetProperty:v4 forKey:v5];
    }
  }

  else
  {
    if (!v3)
    {
      v4 = *MEMORY[0x277CBED10];
      v5 = @"PressCountTrackingEnabled";
      return [(BRInterfaceKeyboard *)self _servicesSetProperty:v4 forKey:v5];
    }

    if (v3 == 1)
    {
      v4 = &unk_2854680F0;
      v5 = @"PressCountDoublePressTimeout";
      return [(BRInterfaceKeyboard *)self _servicesSetProperty:v4 forKey:v5];
    }
  }

  return 1;
}

- (BOOL)_servicesSetProperty:(void *)property forKey:(__CFString *)key
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v7 = _BRLog_log_2;
  if (!_BRLog_log_2)
  {
    v7 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_2 = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRInterfaceKeyboard _servicesSetProperty:forKey:];
  }

  queue = [(BRInterface *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__BRInterfaceKeyboard__servicesSetProperty_forKey___block_invoke;
  v11[3] = &unk_278D3F388;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = key;
  v11[7] = property;
  dispatch_sync(queue, v11);
  v9 = *(v13 + 24) != 0;
  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t __51__BRInterfaceKeyboard__servicesSetProperty_forKey___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 112);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        *(*(*(a1 + 40) + 8) + 24) = IOHIDServiceClientSetProperty(v7, *(a1 + 48), *(a1 + 56));
        if (!*(*(*(a1 + 40) + 8) + 24))
        {
          __51__BRInterfaceKeyboard__servicesSetProperty_forKey___block_invoke_cold_1(v7);
          return [*(*(a1 + 32) + 56) setObject:*(a1 + 56) forKeyedSubscript:*(a1 + 48)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return [*(*(a1 + 32) + 56) setObject:*(a1 + 56) forKeyedSubscript:*(a1 + 48)];
}

- (BOOL)_setCachedPropertiesOnService:(__IOHIDServiceClient *)service
{
  v27 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_propertyCache;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v17;
    *&v6 = 136315650;
    v14 = v6;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_propertyCache objectForKeyedSubscript:v10, v14];
        v12 = _BRLog_log_2;
        if (!_BRLog_log_2)
        {
          v12 = os_log_create("com.apple.ButtonResolver", "default");
          _BRLog_log_2 = v12;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = v14;
          v21 = "[BRInterfaceKeyboard _setCachedPropertiesOnService:]";
          v22 = 2112;
          v23 = v11;
          v24 = 2112;
          v25 = v10;
          _os_log_debug_impl(&dword_242149000, v12, OS_LOG_TYPE_DEBUG, "%s property: %@ key: %@", buf, 0x20u);
        }

        if (!IOHIDServiceClientSetProperty(service, v10, v11))
        {
          [(BRInterfaceKeyboard *)service _setCachedPropertiesOnService:buf];
          return buf[0];
        }
      }

      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v16 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (void)_findServices
{
  v3 = IOHIDEventSystemClientCreate();
  self->_client = v3;
  if (v3)
  {
    IOHIDEventSystemClientSetMatching();
    queue = [(BRInterface *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__BRInterfaceKeyboard__findServices__block_invoke;
    block[3] = &unk_278D3F310;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __36__BRInterfaceKeyboard__findServices__block_invoke(uint64_t a1)
{
  [*(a1 + 32) queue];
  IOHIDEventSystemClientScheduleWithDispatchQueue();
  IOHIDEventSystemClientRegisterDeviceMatchingCallback();
  v2 = IOHIDEventSystemClientCopyServices(*(*(a1 + 32) + 48));
  v10 = v2;
  if (v2)
  {
    v11 = OUTLINED_FUNCTION_3_0(v2, v3, v4, v5, v6, v7, v8, v9, 0, 0, 0, 0, 0, 0, 0, 0, v30);
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        v14 = 0;
        do
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v11 = serviceAddedCallback_0(v11, *(a1 + 32), *(v23 + 8 * v14++));
        }

        while (v12 != v14);
        v11 = OUTLINED_FUNCTION_3_0(v11, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v31);
        v12 = v11;
      }

      while (v11);
    }
  }
}

- (void)init
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = _BRLog_log_2;
  if (!_BRLog_log_2)
  {
    v2 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_2 = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[BRInterfaceKeyboard init]";
    _os_log_error_impl(&dword_242149000, v2, OS_LOG_TYPE_ERROR, "%s failed!", &v3, 0xCu);
  }
}

- (void)propertyList
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  v3 = v0;
  _os_log_debug_impl(&dword_242149000, v1, OS_LOG_TYPE_DEBUG, "%s %@", v2, 0x16u);
}

- (void)_servicesSetProperty:forKey:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_0_1();
  v5 = v0;
  v6 = v1;
  v7 = v2;
  _os_log_debug_impl(&dword_242149000, v3, OS_LOG_TYPE_DEBUG, "%s property: %@ key: %@", v4, 0x20u);
}

void __51__BRInterfaceKeyboard__servicesSetProperty_forKey___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = _BRLog_log_2;
  if (!_BRLog_log_2)
  {
    v2 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_2 = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3[0] = 136315394;
    OUTLINED_FUNCTION_0_1();
    v4 = a1;
    _os_log_error_impl(&dword_242149000, v2, OS_LOG_TYPE_ERROR, "%s error setting property on service %@", v3, 0x16u);
  }
}

- (void)_setCachedPropertiesOnService:(uint64_t)a1 .cold.1(uint64_t a1, _BYTE *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _BRLog_log_2;
  if (!_BRLog_log_2)
  {
    v4 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_2 = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 136315394;
    OUTLINED_FUNCTION_0_1();
    v6 = a1;
    _os_log_error_impl(&dword_242149000, v4, OS_LOG_TYPE_ERROR, "%s error setting cached property on service %@", v5, 0x16u);
  }

  *a2 = 0;
}

@end