@interface BLTGizmoLegacyMap
- (BLTGizmoLegacyMap)init;
- (id)categoryIDForBulletinKey:(id)key;
- (id)gizmoPublisherBulletinIDForPhoneKey:(id)key;
- (id)gizmoSectionInfoForPhoneKey:(id)key;
- (id)phonePublisherBulletinIDForGizmoKey:(id)key;
- (id)phoneSectionIDForGizmoKey:(id)key;
- (id)sectionSubtypeForBulletinKey:(id)key;
- (void)_addMapKey:(id)key value:(id)value bulletinKey:(id)bulletinKey version:(unint64_t)version versionDictionary:(id)dictionary;
- (void)mapNotification:(id)notification sectionID:(id)d;
- (void)unmapNotification:(id)notification sectionID:(id)d;
@end

@implementation BLTGizmoLegacyMap

- (BLTGizmoLegacyMap)init
{
  v6.receiver = self;
  v6.super_class = BLTGizmoLegacyMap;
  v2 = [(BLTGizmoLegacyMap *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("BLTGizmoLegacyMap", MEMORY[0x277D85CD8]);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)_addMapKey:(id)key value:(id)value bulletinKey:(id)bulletinKey version:(unint64_t)version versionDictionary:(id)dictionary
{
  keyCopy = key;
  valueCopy = value;
  bulletinKeyCopy = bulletinKey;
  dictionaryCopy = dictionary;
  dispatch_assert_queue_V2(self->_queue);
  v15 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
  v16 = v15;
  if ((!v15 || [v15 intValue] > version) && (objc_msgSend(MEMORY[0x277D2BCC8], "activePairedDeviceSupportIsGreaterEqualVersion:", version) & 1) == 0)
  {
    phoneBulletinKeyMap = self->_phoneBulletinKeyMap;
    if (!phoneBulletinKeyMap)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v19 = self->_phoneBulletinKeyMap;
      self->_phoneBulletinKeyMap = dictionary;

      phoneBulletinKeyMap = self->_phoneBulletinKeyMap;
    }

    dictionary2 = [(NSMutableDictionary *)phoneBulletinKeyMap objectForKeyedSubscript:bulletinKeyCopy];
    if (!dictionary2)
    {
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)self->_phoneBulletinKeyMap setObject:dictionary2 forKeyedSubscript:bulletinKeyCopy];
    }

    [dictionary2 setObject:valueCopy forKeyedSubscript:keyCopy];
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:version];
    [dictionaryCopy setObject:v21 forKeyedSubscript:keyCopy];
  }
}

- (void)mapNotification:(id)notification sectionID:(id)d
{
  notificationCopy = notification;
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke;
  block[3] = &unk_278D316C8;
  v12 = notificationCopy;
  v13 = dCopy;
  selfCopy = self;
  v9 = dCopy;
  v10 = notificationCopy;
  dispatch_barrier_async(queue, block);
}

void __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) request];
  v3 = *(a1 + 40);
  v4 = [v2 identifier];
  v5 = [BLTBBBulletinKey bulletinKeyWithSectionID:v3 publisherMatchID:v4];

  v6 = [*(*(a1 + 48) + 16) objectForKeyedSubscript:v5];

  if (!v6)
  {
    v9 = [v2 content];
    v10 = [v9 userInfo];
    v8 = [v10 objectForKeyedSubscript:@"BLTWatchLegacyMap"];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      if (!v8)
      {
        goto LABEL_25;
      }

      v12 = blt_general_log(isKindOfClass);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_cold_1(v8, v12);
      }

LABEL_24:

      goto LABEL_25;
    }

    v12 = v8;
    v13 = [MEMORY[0x277CBEB38] dictionary];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_5;
    v35[3] = &unk_278D324F8;
    v35[4] = *(a1 + 48);
    v14 = v5;
    v36 = v14;
    v34 = v13;
    v37 = v34;
    [v12 enumerateKeysAndObjectsUsingBlock:v35];
    v15 = [*(*(a1 + 48) + 16) objectForKeyedSubscript:v14];
    v16 = [v15 objectForKeyedSubscript:?];

    v33 = v14;
    v17 = [*(*(a1 + 48) + 16) objectForKeyedSubscript:v14];
    v18 = [v17 objectForKeyedSubscript:@"sectionInfo"];
    v19 = [v18 objectForKeyedSubscript:?];

    if (!(v16 | v19))
    {
LABEL_20:

      goto LABEL_24;
    }

    if (!*(*(a1 + 48) + 8))
    {
      v20 = [MEMORY[0x277CBEB38] dictionary];
      v21 = *(a1 + 48);
      v22 = *(v21 + 8);
      *(v21 + 8) = v20;
    }

    v23 = v19;
    if (!v19)
    {
      v23 = [v33 sectionID];
    }

    v24 = v12;
    if (v16)
    {
      v25 = [BLTBBBulletinKey bulletinKeyWithSectionID:v23 publisherMatchID:?];
      if (v19)
      {
LABEL_13:
        v26 = [*(*(a1 + 48) + 8) objectForKeyedSubscript:v25];

        if (!v26)
        {
          v27 = [MEMORY[0x277CBEB38] dictionary];
          [*(*(a1 + 48) + 8) setObject:v27 forKeyedSubscript:v25];
        }

        if (v16)
        {
          v28 = [v33 publisherMatchID];
          v29 = [*(*(a1 + 48) + 8) objectForKeyedSubscript:v25];
          [v29 setObject:v28 forKeyedSubscript:@"publisherBulletinID"];
        }

        if (v19)
        {
          v30 = [v33 sectionID];
          v31 = [*(*(a1 + 48) + 8) objectForKeyedSubscript:v25];
          [v31 setObject:v30 forKeyedSubscript:@"sectionID"];
        }

        v12 = v24;
        goto LABEL_20;
      }
    }

    else
    {
      v32 = [v33 publisherMatchID];
      v25 = [BLTBBBulletinKey bulletinKeyWithSectionID:v23 publisherMatchID:v32];

      if (v19)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  v8 = blt_general_log(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v39 = v5;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_INFO, "Bulletin already mapped: %@", buf, 0xCu);
  }

LABEL_25:
}

void __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 unsignedIntegerValue];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0 || ([MEMORY[0x277D2BCC8] versionForString:v5], (isKindOfClass = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v10 = blt_general_log(isKindOfClass);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_5_cold_1();
      }

      goto LABEL_14;
    }

    v9 = isKindOfClass;
    v7 = [isKindOfClass unsignedIntegerValue];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();
    if (v11)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_2;
      v13[3] = &unk_278D324D0;
      v12 = *(a1 + 40);
      v13[4] = *(a1 + 32);
      v14 = v12;
      v16 = v7;
      v15 = *(a1 + 48);
      [v6 enumerateKeysAndObjectsUsingBlock:v13];

      goto LABEL_15;
    }

    v10 = blt_general_log(v11);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_5_cold_2(v5, v6, v10);
    }

LABEL_14:

    goto LABEL_15;
  }

  [*(a1 + 32) _addMapKey:@"publisherBulletinID" value:v6 bulletinKey:*(a1 + 40) version:v7 versionDictionary:*(a1 + 48)];
LABEL_15:
}

void __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }

    v8 = [MEMORY[0x277CBEB68] null];
    if (v8 == v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {

      goto LABEL_7;
    }

    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    if (v14)
    {
LABEL_7:
      v9 = v5;
      if (BLTGizmoLegacyMapKeySet_onceToken != -1)
      {
        __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_2_cold_2();
      }

      v10 = [BLTGizmoLegacyMapKeySet___BLTGizmoLegacyMapKeySet containsObject:v9];
      if (!v10)
      {
        v11 = blt_general_log(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_2_cold_3();
        }

        goto LABEL_22;
      }

      v11 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
        if ([v12 count])
        {
          [v12 objectAtIndexedSubscript:0];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v11 = ;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = [MEMORY[0x277CBEB68] null];
        if (v11 == v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
        }

        else
        {
          objc_opt_class();
          v15 = objc_opt_isKindOfClass();

          if ((v15 & 1) == 0)
          {
            v17 = blt_general_log(v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_2_cold_4();
            }

            goto LABEL_22;
          }
        }
      }

      [*(a1 + 32) _addMapKey:v9 value:v11 bulletinKey:*(a1 + 40) version:*(a1 + 56) versionDictionary:*(a1 + 48)];
LABEL_22:

      goto LABEL_26;
    }
  }

  v9 = blt_general_log(isKindOfClass);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_2_cold_1();
  }

LABEL_26:
}

- (void)unmapNotification:(id)notification sectionID:(id)d
{
  notificationCopy = notification;
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BLTGizmoLegacyMap_unmapNotification_sectionID___block_invoke;
  block[3] = &unk_278D316C8;
  v12 = dCopy;
  v13 = notificationCopy;
  selfCopy = self;
  v9 = notificationCopy;
  v10 = dCopy;
  dispatch_barrier_async(queue, block);
}

void __49__BLTGizmoLegacyMap_unmapNotification_sectionID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) request];
  v4 = [v3 identifier];
  v12 = [BLTBBBulletinKey bulletinKeyWithSectionID:v2 publisherMatchID:v4];

  v5 = [*(*(a1 + 48) + 16) objectForKeyedSubscript:v12];
  v6 = [v5 objectForKeyedSubscript:@"publisherBulletinID"];
  v7 = [v5 objectForKeyedSubscript:@"sectionInfo"];
  v8 = [v7 objectForKeyedSubscript:@"sectionID"];

  if (v6 | v8)
  {
    v9 = v8;
    if (v8)
    {
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = [v12 sectionID];
      if (v6)
      {
LABEL_4:
        v10 = [BLTBBBulletinKey bulletinKeyWithSectionID:v9 publisherMatchID:v6];
        if (v8)
        {
LABEL_6:
          [*(*(a1 + 48) + 8) removeObjectForKey:v10];

          goto LABEL_7;
        }

LABEL_5:

        goto LABEL_6;
      }
    }

    v11 = [v12 publisherMatchID];
    v10 = [BLTBBBulletinKey bulletinKeyWithSectionID:v9 publisherMatchID:v11];

    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  [*(*(a1 + 48) + 16) removeObjectForKey:v12];
}

- (id)categoryIDForBulletinKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  if (keyCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__BLTGizmoLegacyMap_categoryIDForBulletinKey___block_invoke;
    block[3] = &unk_278D313D8;
    v12 = &v13;
    block[4] = self;
    v11 = keyCopy;
    dispatch_sync(queue, block);

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __46__BLTGizmoLegacyMap_categoryIDForBulletinKey___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v2 = [v5 objectForKeyedSubscript:@"categoryID"];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)sectionSubtypeForBulletinKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__5;
  v21 = __Block_byref_object_dispose__5;
  v22 = 0;
  if (keyCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__BLTGizmoLegacyMap_sectionSubtypeForBulletinKey___block_invoke;
    block[3] = &unk_278D313D8;
    v16 = &v17;
    block[4] = self;
    v15 = keyCopy;
    dispatch_sync(queue, block);
    if (v18[5])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v18[5], "integerValue")}];
        }

        else
        {
          v10 = blt_general_log(isKindOfClass);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [BLTGizmoLegacyMap sectionSubtypeForBulletinKey:];
          }

          v8 = 0;
        }

        v11 = v18[5];
        v18[5] = v8;
      }
    }

    v9 = v18[5];
  }

  else
  {
    v9 = 0;
  }

  v12 = v9;
  _Block_object_dispose(&v17, 8);

  return v12;
}

void __50__BLTGizmoLegacyMap_sectionSubtypeForBulletinKey___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v2 = [v5 objectForKeyedSubscript:@"sectionSubtype"];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)phonePublisherBulletinIDForGizmoKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  if (keyCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__BLTGizmoLegacyMap_phonePublisherBulletinIDForGizmoKey___block_invoke;
    block[3] = &unk_278D313D8;
    v12 = &v13;
    block[4] = self;
    v11 = keyCopy;
    dispatch_sync(queue, block);

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __57__BLTGizmoLegacyMap_phonePublisherBulletinIDForGizmoKey___block_invoke(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v2 = [v4 objectForKeyedSubscript:@"publisherBulletinID"];
  v3 = v2;
  if (!v2)
  {
    v3 = [*(a1 + 40) publisherMatchID];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
  if (!v2)
  {
  }
}

- (id)gizmoPublisherBulletinIDForPhoneKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  if (keyCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__BLTGizmoLegacyMap_gizmoPublisherBulletinIDForPhoneKey___block_invoke;
    block[3] = &unk_278D313D8;
    v12 = &v13;
    block[4] = self;
    v11 = keyCopy;
    dispatch_sync(queue, block);

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __57__BLTGizmoLegacyMap_gizmoPublisherBulletinIDForPhoneKey___block_invoke(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v2 = [v4 objectForKeyedSubscript:@"publisherBulletinID"];
  v3 = v2;
  if (!v2)
  {
    v3 = [*(a1 + 40) publisherMatchID];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
  if (!v2)
  {
  }
}

- (id)phoneSectionIDForGizmoKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  if (keyCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__BLTGizmoLegacyMap_phoneSectionIDForGizmoKey___block_invoke;
    block[3] = &unk_278D313D8;
    v12 = &v13;
    block[4] = self;
    v11 = keyCopy;
    dispatch_sync(queue, block);

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __47__BLTGizmoLegacyMap_phoneSectionIDForGizmoKey___block_invoke(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v2 = [v4 objectForKeyedSubscript:@"sectionID"];
  v3 = v2;
  if (!v2)
  {
    v3 = [*(a1 + 40) sectionID];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
  if (!v2)
  {
  }
}

- (id)gizmoSectionInfoForPhoneKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  if (keyCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__BLTGizmoLegacyMap_gizmoSectionInfoForPhoneKey___block_invoke;
    block[3] = &unk_278D313D8;
    v12 = &v13;
    block[4] = self;
    v11 = keyCopy;
    dispatch_sync(queue, block);

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __49__BLTGizmoLegacyMap_gizmoSectionInfoForPhoneKey___block_invoke(void *a1)
{
  v2 = [BLTGizmoLegacyMapSectionInfo alloc];
  v7 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = [v7 objectForKeyedSubscript:@"sectionInfo"];
  v4 = [(BLTGizmoLegacyMapSectionInfo *)v2 initWithNotificationMap:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Expecting dictionary type for legacy map, got legacy map type %@", v5, 0xCu);
}

void __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_5_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = objc_opt_class();
  v4 = v8;
  _os_log_error_impl(&dword_241FB3000, a3, OS_LOG_TYPE_ERROR, "Unexpected value type in legacy map for version key %@, value type %@", &v5, 0x16u);
}

@end