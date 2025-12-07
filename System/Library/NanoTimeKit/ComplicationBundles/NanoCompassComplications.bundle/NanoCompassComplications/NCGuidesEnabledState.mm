@interface NCGuidesEnabledState
+ (id)sharedInstance;
- (BOOL)isEnabledForGuideType:(int64_t)type;
- (NCGuidesEnabledState)init;
- (id)NSStringFromNCGuideType:(int64_t)type;
- (void)_lock_saveGuideEnabledStatesToDefaults;
- (void)_withLock:(id)lock;
- (void)setEnabled:(BOOL)enabled forGuideType:(int64_t)type;
@end

@implementation NCGuidesEnabledState

+ (id)sharedInstance
{
  if (qword_27E1C4B68 != -1)
  {
    sub_23BD656E4();
  }

  v3 = qword_27E1C4B60;

  return v3;
}

- (id)NSStringFromNCGuideType:(int64_t)type
{
  if (type < 4)
  {
    return off_278B940C8[type];
  }

  v5 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_23BD656F8(type, v5);
  }

  return 0;
}

- (NCGuidesEnabledState)init
{
  v56 = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = NCGuidesEnabledState;
  v2 = [(NCGuidesEnabledState *)&v49 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    guideTypeName = v3->_guideTypeName;
    v3->_guideTypeName = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    globalGuideTypeEnabledStates = v3->_globalGuideTypeEnabledStates;
    v3->_globalGuideTypeEnabledStates = v6;

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_284E8B0A0, v8, &v45, v55, 16);
    if (v9)
    {
      v12 = v9;
      v13 = *v46;
      v14 = MEMORY[0x277CBEC38];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v46 != v13)
          {
            objc_enumerationMutation(&unk_284E8B0A0);
          }

          v16 = *(*(&v45 + 1) + 8 * i);
          v17 = objc_msgSend_integerValue(v16, v10, v11);
          v20 = objc_msgSend_NSStringFromNCGuideType_(v3, v18, v17);
          if (v20)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v3->_guideTypeName, v19, v20, v16);
            objc_msgSend_setObject_forKeyedSubscript_(v3->_globalGuideTypeEnabledStates, v21, v14, v20);
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_284E8B0A0, v10, &v45, v55, 16);
      }

      while (v12);
    }

    v22 = objc_alloc(MEMORY[0x277CBEBD0]);
    v24 = objc_msgSend_initWithSuiteName_(v22, v23, @"com.apple.compass");
    v26 = objc_msgSend_dictionaryForKey_(v24, v25, @"GlobalGuideTypeEnabledStates");
    v28 = v26;
    if (v26)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v41, v54, 16);
      if (v29)
      {
        v31 = v29;
        v32 = *v42;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v42 != v32)
            {
              objc_enumerationMutation(v28);
            }

            v34 = *(*(&v41 + 1) + 8 * j);
            v35 = v3->_globalGuideTypeEnabledStates;
            v36 = objc_msgSend_objectForKeyedSubscript_(v28, v30, v34);
            objc_msgSend_setObject_forKey_(v35, v37, v36, v34);
          }

          v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v41, v54, 16);
        }

        while (v31);
      }
    }

    v38 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v3->_globalGuideTypeEnabledStates;
      *buf = 136315394;
      v51 = "[NCGuidesEnabledState init]";
      v52 = 2112;
      v53 = v39;
      _os_log_impl(&dword_23BD26000, v38, OS_LOG_TYPE_DEFAULT, "%s: Initialized guide enabled states: %@", buf, 0x16u);
    }
  }

  return v3;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_saveGuideEnabledStatesToDefaults
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v8 = objc_msgSend_initWithSuiteName_(v3, v4, @"com.apple.compass");
  objc_msgSend_setObject_forKey_(v8, v5, self->_globalGuideTypeEnabledStates, @"GlobalGuideTypeEnabledStates");
  objc_msgSend_synchronize(v8, v6, v7);
}

- (void)setEnabled:(BOOL)enabled forGuideType:(int64_t)type
{
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, type);
  v8 = objc_msgSend_objectForKeyedSubscript_(self->_guideTypeName, v7, v6);
  v9 = v8;
  if (v8)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_23BD2DAB4;
    v13[3] = &unk_278B94080;
    v13[4] = self;
    v14 = v8;
    enabledCopy = enabled;
    objc_msgSend__withLock_(self, v10, v13);
    objc_msgSend__backupEnabledStates(self, v11, v12);
  }
}

- (BOOL)isEnabledForGuideType:(int64_t)type
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v4 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, type);
  v6 = objc_msgSend_objectForKeyedSubscript_(self->_guideTypeName, v5, v4);
  v7 = v6;
  if (v6)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_23BD2DC30;
    v11[3] = &unk_278B940A8;
    v11[4] = self;
    v12 = v6;
    v13 = &v14;
    objc_msgSend__withLock_(self, v8, v11);
  }

  v9 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v9;
}

@end