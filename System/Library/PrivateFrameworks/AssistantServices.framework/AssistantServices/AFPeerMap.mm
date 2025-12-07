@interface AFPeerMap
- (AFPeerMap)init;
- (id)_getUUIDAndUpdateIDMapsForPeerInfo:(id)info;
- (id)objectForPeerInfo:(id)info;
- (void)_cleanUpUUIDMapsForPeerInfo:(id)info;
- (void)enumerateObjectsUsingBlock:(id)block;
- (void)removeObjectForPeerInfo:(id)info;
- (void)setObject:(id)object forPeerInfo:(id)info;
@end

@implementation AFPeerMap

- (void)_cleanUpUUIDMapsForPeerInfo:(id)info
{
  infoCopy = info;
  assistantIdentifier = [infoCopy assistantIdentifier];
  if (assistantIdentifier)
  {
    [(NSMutableDictionary *)self->_uuidsByAssistantIdentifier removeObjectForKey:assistantIdentifier];
  }

  rapportEffectiveIdentifier = [infoCopy rapportEffectiveIdentifier];
  if (rapportEffectiveIdentifier)
  {
    [(NSMutableDictionary *)self->_uuidsByRapportIdentifier removeObjectForKey:rapportEffectiveIdentifier];
  }

  idsDeviceUniqueIdentifier = [infoCopy idsDeviceUniqueIdentifier];
  if (idsDeviceUniqueIdentifier)
  {
    [(NSMutableDictionary *)self->_uuidsByIdsDeviceIdentifier removeObjectForKey:idsDeviceUniqueIdentifier];
  }

  homeKitAccessoryIdentifier = [infoCopy homeKitAccessoryIdentifier];
  if (homeKitAccessoryIdentifier)
  {
    [(NSMutableDictionary *)self->_uuidsByHomeKitIdentifier removeObjectForKey:homeKitAccessoryIdentifier];
  }
}

- (id)_getUUIDAndUpdateIDMapsForPeerInfo:(id)info
{
  v62 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__48702;
  v56 = __Block_byref_object_dispose__48703;
  v57 = 0;
  assistantIdentifier = [infoCopy assistantIdentifier];
  if (assistantIdentifier)
  {
    v6 = [(NSMutableDictionary *)self->_uuidsByAssistantIdentifier objectForKey:assistantIdentifier];
    v7 = v53[5];
    v53[5] = v6;
  }

  else
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v59 = "[AFPeerMap _getUUIDAndUpdateIDMapsForPeerInfo:]";
      v60 = 2112;
      v61 = infoCopy;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s Missing assistantId in %@", buf, 0x16u);
    }
  }

  v9 = v53[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __48__AFPeerMap__getUUIDAndUpdateIDMapsForPeerInfo___block_invoke;
    v51[3] = &unk_1E73496C0;
    v51[4] = &v52;
    v11 = MEMORY[0x193AFB7B0](v51);
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __48__AFPeerMap__getUUIDAndUpdateIDMapsForPeerInfo___block_invoke_2;
    v49[3] = &unk_1E73497C8;
    v13 = v12;
    v50 = v13;
    v14 = MEMORY[0x193AFB7B0](v49);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __48__AFPeerMap__getUUIDAndUpdateIDMapsForPeerInfo___block_invoke_3;
    v46[3] = &unk_1E73496E8;
    v15 = v11;
    v48 = v15;
    v46[4] = self;
    v47 = assistantIdentifier;
    v16 = MEMORY[0x193AFB7B0](v46);
    [v13 addObject:v16];

    rapportEffectiveIdentifier = [infoCopy rapportEffectiveIdentifier];
    if (rapportEffectiveIdentifier)
    {
      v18 = [(NSMutableDictionary *)self->_uuidsByRapportIdentifier objectForKey:rapportEffectiveIdentifier];
      v19 = v53[5];
      v53[5] = v18;
    }

    else
    {
      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v59 = "[AFPeerMap _getUUIDAndUpdateIDMapsForPeerInfo:]";
        v60 = 2112;
        v61 = infoCopy;
        _os_log_error_impl(&dword_1912FE000, v20, OS_LOG_TYPE_ERROR, "%s Missing rapportId in %@", buf, 0x16u);
      }
    }

    if (v53[5])
    {
      v14[2](v14);
      v10 = v53[5];
    }

    else
    {
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __48__AFPeerMap__getUUIDAndUpdateIDMapsForPeerInfo___block_invoke_3;
      v43[3] = &unk_1E73496E8;
      v21 = v15;
      v45 = v21;
      v43[4] = self;
      v44 = rapportEffectiveIdentifier;
      v22 = MEMORY[0x193AFB7B0](v43);
      [v13 addObject:v22];

      idsDeviceUniqueIdentifier = [infoCopy idsDeviceUniqueIdentifier];
      if (idsDeviceUniqueIdentifier)
      {
        v24 = [(NSMutableDictionary *)self->_uuidsByIdsDeviceIdentifier objectForKey:idsDeviceUniqueIdentifier];
        v25 = v53[5];
        v53[5] = v24;
      }

      if (v53[5])
      {
        v14[2](v14);
        v10 = v53[5];
      }

      else
      {
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __48__AFPeerMap__getUUIDAndUpdateIDMapsForPeerInfo___block_invoke_2_4;
        v40[3] = &unk_1E73496E8;
        v36 = v21;
        v42 = v36;
        v40[4] = self;
        v35 = idsDeviceUniqueIdentifier;
        v41 = v35;
        v26 = MEMORY[0x193AFB7B0](v40);
        [v13 addObject:v26];

        homeKitAccessoryIdentifier = [infoCopy homeKitAccessoryIdentifier];
        if (homeKitAccessoryIdentifier)
        {
          v28 = [(NSMutableDictionary *)self->_uuidsByHomeKitIdentifier objectForKey:homeKitAccessoryIdentifier];
          v29 = v53[5];
          v53[5] = v28;
        }

        if (!v53[5])
        {
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __48__AFPeerMap__getUUIDAndUpdateIDMapsForPeerInfo___block_invoke_3_5;
          v37[3] = &unk_1E73496E8;
          v39 = v36;
          v37[4] = self;
          v38 = v35;
          v30 = MEMORY[0x193AFB7B0](v37);
          [v13 addObject:v30];

          uUID = [MEMORY[0x1E696AFB0] UUID];
          uUIDString = [uUID UUIDString];
          v33 = v53[5];
          v53[5] = uUIDString;
        }

        v14[2](v14);
        v10 = v53[5];
      }
    }
  }

  _Block_object_dispose(&v52, 8);

  return v10;
}

void __48__AFPeerMap__getUUIDAndUpdateIDMapsForPeerInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 length])
  {
    [v6 setObject:*(*(*(a1 + 32) + 8) + 40) forKey:v5];
  }
}

void __48__AFPeerMap__getUUIDAndUpdateIDMapsForPeerInfo___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

uint64_t __48__AFPeerMap__getUUIDAndUpdateIDMapsForPeerInfo___block_invoke_3(void *a1)
{
  return (*(a1[6] + 16))(a1[6], *(a1[4] + 16), a1[5]);
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_objectsByUUID allValues];
  v6 = [allValues countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(allValues);
      }

      blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [allValues countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)removeObjectForPeerInfo:(id)info
{
  infoCopy = info;
  v5 = [(AFPeerMap *)self _getUUIDAndUpdateIDMapsForPeerInfo:infoCopy];
  [(NSMutableDictionary *)self->_objectsByUUID removeObjectForKey:v5];
  [(AFPeerMap *)self _cleanUpUUIDMapsForPeerInfo:infoCopy];
}

- (void)setObject:(id)object forPeerInfo:(id)info
{
  objectCopy = object;
  v7 = [(AFPeerMap *)self _getUUIDAndUpdateIDMapsForPeerInfo:info];
  [(NSMutableDictionary *)self->_objectsByUUID setObject:objectCopy forKey:v7];
}

- (id)objectForPeerInfo:(id)info
{
  v4 = [(AFPeerMap *)self _getUUIDAndUpdateIDMapsForPeerInfo:info];
  v5 = [(NSMutableDictionary *)self->_objectsByUUID objectForKey:v4];

  return v5;
}

- (AFPeerMap)init
{
  v14.receiver = self;
  v14.super_class = AFPeerMap;
  v2 = [(AFPeerMap *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    objectsByUUID = v2->_objectsByUUID;
    v2->_objectsByUUID = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    uuidsByAssistantIdentifier = v2->_uuidsByAssistantIdentifier;
    v2->_uuidsByAssistantIdentifier = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    uuidsByRapportIdentifier = v2->_uuidsByRapportIdentifier;
    v2->_uuidsByRapportIdentifier = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    uuidsByIdsDeviceIdentifier = v2->_uuidsByIdsDeviceIdentifier;
    v2->_uuidsByIdsDeviceIdentifier = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    uuidsByHomeKitIdentifier = v2->_uuidsByHomeKitIdentifier;
    v2->_uuidsByHomeKitIdentifier = v11;
  }

  return v2;
}

@end