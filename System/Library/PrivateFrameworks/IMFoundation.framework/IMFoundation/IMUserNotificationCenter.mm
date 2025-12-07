@interface IMUserNotificationCenter
+ (id)sharedInstance;
- (id)_dequeueBlockForIdentifier:(id)identifier;
- (id)_dequeueListenerForIdentifier:(id)identifier;
- (id)_dequeueUserNotificationForIdentifier:(id)identifier;
- (id)_frontBlockForIdentifier:(id)identifier;
- (id)_frontListenerForIdentifier:(id)identifier;
- (id)_frontUserNotificationForIdentifier:(id)identifier;
- (unint64_t)countForIdentifier:(id)identifier;
- (void)_cancelActiveUserNotificationForIdentifier:(id)identifier;
- (void)_displayNextUserNotificationForIdentifier:(id)identifier;
- (void)_enqueueBlock:(id)block forIdentifier:(id)identifier;
- (void)_enqueueListener:(id)listener forIdentifier:(id)identifier;
- (void)_enqueueUserNotification:(id)notification forIdentifier:(id)identifier;
- (void)_handleUserNotification:(__CFUserNotification *)notification responseFlags:(unint64_t)flags;
- (void)addUserNotification:(id)notification listener:(id)listener completionHandler:(id)handler;
- (void)removeAllListeners;
- (void)removeListener:(id)listener;
- (void)removeNotificationsForServiceIdentifier:(id)identifier;
@end

@implementation IMUserNotificationCenter

+ (id)sharedInstance
{
  if (qword_1ED517628 != -1)
  {
    sub_1959D55A4();
  }

  v3 = qword_1ED5175E0;

  return v3;
}

- (id)_frontUserNotificationForIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = objc_msgSend_objectForKey_(self->_identifierToIMUserNotificationQueueMap, a2, identifier);
    v6 = objc_msgSend___imFirstObject(v3, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_frontListenerForIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = objc_msgSend_objectForKey_(self->_identifierToListenerQueueMap, a2, identifier);
    v6 = objc_msgSend___imFirstObject(v3, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_frontBlockForIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = objc_msgSend_objectForKey_(self->_identifierToBlockQueueMap, a2, identifier);
    v6 = objc_msgSend___imFirstObject(v3, v4, v5);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v8 = _Block_copy(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_dequeueUserNotificationForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v6 = objc_msgSend_objectForKey_(self->_identifierToIMUserNotificationQueueMap, v4, identifierCopy);
    v11 = objc_msgSend___imFirstObject(v6, v7, v8);
    if (v11)
    {
      objc_msgSend_removeFirstObject(v6, v9, v10);
    }

    if (!objc_msgSend_count(v6, v9, v10))
    {
      objc_msgSend_removeObjectForKey_(self->_identifierToIMUserNotificationQueueMap, v12, identifierCopy);
    }

    if (!objc_msgSend_count(self->_identifierToIMUserNotificationQueueMap, v12, v13))
    {
      identifierToIMUserNotificationQueueMap = self->_identifierToIMUserNotificationQueueMap;
      self->_identifierToIMUserNotificationQueueMap = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_dequeueListenerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v6 = objc_msgSend_objectForKey_(self->_identifierToListenerQueueMap, v4, identifierCopy);
    v11 = objc_msgSend___imFirstObject(v6, v7, v8);
    if (v11)
    {
      objc_msgSend_removeFirstObject(v6, v9, v10);
    }

    if (!objc_msgSend_count(v6, v9, v10))
    {
      objc_msgSend_removeObjectForKey_(self->_identifierToListenerQueueMap, v12, identifierCopy);
    }

    if (!objc_msgSend_count(self->_identifierToListenerQueueMap, v12, v13))
    {
      identifierToListenerQueueMap = self->_identifierToListenerQueueMap;
      self->_identifierToListenerQueueMap = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_dequeueBlockForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v6 = objc_msgSend_objectForKey_(self->_identifierToBlockQueueMap, v4, identifierCopy);
    if (objc_msgSend_count(v6, v7, v8))
    {
      v10 = objc_msgSend_objectAtIndex_(v6, v9, 0);
    }

    else
    {
      v10 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 0;
    }

    else
    {
      v12 = v10;
    }

    v15 = _Block_copy(v12);
    if (v10)
    {
      objc_msgSend_removeFirstObject(v6, v13, v14);
    }

    if (!objc_msgSend_count(v6, v13, v14))
    {
      objc_msgSend_removeObjectForKey_(self->_identifierToBlockQueueMap, v16, identifierCopy);
    }

    if (!objc_msgSend_count(self->_identifierToBlockQueueMap, v16, v17))
    {
      identifierToBlockQueueMap = self->_identifierToBlockQueueMap;
      self->_identifierToBlockQueueMap = 0;
    }

    v11 = _Block_copy(v15);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_enqueueUserNotification:(id)notification forIdentifier:(id)identifier
{
  notificationCopy = notification;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v9 = objc_msgSend_objectForKey_(self->_identifierToIMUserNotificationQueueMap, v6, identifierCopy);
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      identifierToIMUserNotificationQueueMap = self->_identifierToIMUserNotificationQueueMap;
      if (!identifierToIMUserNotificationQueueMap)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v13 = self->_identifierToIMUserNotificationQueueMap;
        self->_identifierToIMUserNotificationQueueMap = Mutable;

        identifierToIMUserNotificationQueueMap = self->_identifierToIMUserNotificationQueueMap;
      }

      objc_msgSend_setObject_forKey_(identifierToIMUserNotificationQueueMap, v10, v9, identifierCopy);
    }

    objc_msgSend_addObject_(v9, v8, notificationCopy);
  }
}

- (void)_enqueueListener:(id)listener forIdentifier:(id)identifier
{
  listenerCopy = listener;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v10 = objc_msgSend_objectForKey_(self->_identifierToListenerQueueMap, v6, identifierCopy);
    if (!v10)
    {
      v10 = objc_msgSend_nonRetainingArray(MEMORY[0x1E695DF70], v8, v9);
      identifierToListenerQueueMap = self->_identifierToListenerQueueMap;
      if (!identifierToListenerQueueMap)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v14 = self->_identifierToListenerQueueMap;
        self->_identifierToListenerQueueMap = Mutable;

        identifierToListenerQueueMap = self->_identifierToListenerQueueMap;
      }

      objc_msgSend_setObject_forKey_(identifierToListenerQueueMap, v11, v10, identifierCopy);
    }

    if (listenerCopy)
    {
      objc_msgSend_addObject_(v10, v8, listenerCopy);
    }

    else
    {
      v15 = objc_msgSend_null(MEMORY[0x1E695DFB0], v8, 0);
      objc_msgSend_addObject_(v10, v16, v15);
    }
  }
}

- (void)_enqueueBlock:(id)block forIdentifier:(id)identifier
{
  blockCopy = block;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v10 = objc_msgSend_objectForKey_(self->_identifierToBlockQueueMap, v6, identifierCopy);
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      identifierToBlockQueueMap = self->_identifierToBlockQueueMap;
      if (!identifierToBlockQueueMap)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v14 = self->_identifierToBlockQueueMap;
        self->_identifierToBlockQueueMap = Mutable;

        identifierToBlockQueueMap = self->_identifierToBlockQueueMap;
      }

      objc_msgSend_setObject_forKey_(identifierToBlockQueueMap, v11, v10, identifierCopy);
    }

    if (blockCopy)
    {
      v15 = objc_msgSend_copy(blockCopy, v8, v9);
    }

    else
    {
      v15 = objc_msgSend_null(MEMORY[0x1E695DFB0], v8, v9);
    }

    v17 = v15;
    objc_msgSend_addObject_(v10, v16, v15);
  }
}

- (void)_cancelActiveUserNotificationForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_msgSend_objectForKey_(self->_identifierToCFUserNotificationMap, v4, identifierCopy);
  v8 = objc_msgSend_objectForKey_(self->_identifierToRunLoopSourcesMap, v6, identifierCopy);
  if (v5)
  {
    CFUserNotificationCancel(v5);
  }

  if (v8)
  {
    CFRunLoopSourceInvalidate(v8);
  }

  v9 = objc_msgSend__dequeueUserNotificationForIdentifier_(self, v7, identifierCopy);
  v11 = objc_msgSend__dequeueListenerForIdentifier_(self, v10, identifierCopy);
  v13 = objc_msgSend__dequeueBlockForIdentifier_(self, v12, identifierCopy);
  objc_msgSend_removeObjectForKey_(self->_identifierToCFUserNotificationMap, v14, identifierCopy);
  objc_msgSend_removeObjectForKey_(self->_identifierToRunLoopSourcesMap, v15, identifierCopy);
  if (!objc_msgSend_count(self->_identifierToCFUserNotificationMap, v16, v17))
  {
    identifierToCFUserNotificationMap = self->_identifierToCFUserNotificationMap;
    self->_identifierToCFUserNotificationMap = 0;
  }

  if (!objc_msgSend_count(self->_identifierToRunLoopSourcesMap, v18, v19))
  {
    identifierToRunLoopSourcesMap = self->_identifierToRunLoopSourcesMap;
    self->_identifierToRunLoopSourcesMap = 0;
  }
}

- (void)_displayNextUserNotificationForIdentifier:(id)identifier
{
  v42 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = objc_msgSend__frontUserNotificationForIdentifier_(self, v5, identifierCopy);
  v9 = v6;
  if (v6)
  {
    objc_msgSend_timeout(v6, v7, v8);
    v11 = v10;
    v14 = objc_msgSend_displayFlags(v9, v12, v13);
    v17 = objc_msgSend_displayInformation(v9, v15, v16);
    v20 = objc_msgSend_mutableCopy(v17, v18, v19);

    v23 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v21, v22);
    v26 = objc_msgSend_resourceURL(v23, v24, v25);

    if (v26)
    {
      CFDictionarySetValue(v20, *MEMORY[0x1E695EE90], v26);
    }

    v29 = objc_msgSend_registration(IMRGLog, v27, v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 138412290;
      v41 = v20;
      _os_log_impl(&dword_195988000, v29, OS_LOG_TYPE_DEFAULT, "Creating CFUserNotification with display information: %@", &v40, 0xCu);
    }

    v40 = -1431655766;
    v30 = *MEMORY[0x1E695E480];
    v32 = CFUserNotificationCreate(*MEMORY[0x1E695E480], v11, v14, &v40, v20);
    if (!self->_identifierToCFUserNotificationMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      identifierToCFUserNotificationMap = self->_identifierToCFUserNotificationMap;
      self->_identifierToCFUserNotificationMap = Mutable;
    }

    if (v32)
    {
      objc_msgSend_setObject_forKey_(self->_identifierToCFUserNotificationMap, v31, v32, identifierCopy);
      RunLoopSource = CFUserNotificationCreateRunLoopSource(v30, v32, sub_1959B1300, 0);
      if (!self->_identifierToRunLoopSourcesMap)
      {
        v37 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        identifierToRunLoopSourcesMap = self->_identifierToRunLoopSourcesMap;
        self->_identifierToRunLoopSourcesMap = v37;
      }

      if (RunLoopSource)
      {
        objc_msgSend_setObject_forKey_(self->_identifierToRunLoopSourcesMap, v35, RunLoopSource, identifierCopy);
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, RunLoopSource, *MEMORY[0x1E695E8D0]);
        CFRelease(RunLoopSource);
      }

      CFRelease(v32);
    }
  }
}

- (void)_handleUserNotification:(__CFUserNotification *)notification responseFlags:(unint64_t)flags
{
  v7 = objc_msgSend_allKeysForObject_(self->_identifierToCFUserNotificationMap, a2, notification);
  v37 = objc_msgSend_lastObject(v7, v8, v9);

  v11 = objc_msgSend__dequeueUserNotificationForIdentifier_(self, v10, v37);
  v13 = objc_msgSend__dequeueListenerForIdentifier_(self, v12, v37);
  v15 = objc_msgSend__dequeueBlockForIdentifier_(self, v14, v37);
  v16 = _Block_copy(v15);
  v19 = objc_msgSend_null(MEMORY[0x1E695DFB0], v17, v18);

  if (v16 == v19)
  {

    v15 = 0;
  }

  v22 = objc_msgSend_null(MEMORY[0x1E695DFB0], v20, v21);

  if (v13 == v22)
  {

    v13 = 0;
  }

  v24 = objc_msgSend_objectForKey_(self->_identifierToRunLoopSourcesMap, v23, v37);
  CFRunLoopSourceInvalidate(v24);

  ResponseDictionary = CFUserNotificationGetResponseDictionary(notification);
  objc_msgSend__setResponseFlags_responseInformation_(v11, v26, flags, ResponseDictionary);
  objc_msgSend_userNotificationDidFinish_(v13, v27, v11);
  if (v15)
  {
    (v15)[2](v15, v11);
  }

  objc_msgSend_removeObjectForKey_(self->_identifierToCFUserNotificationMap, v28, v37);
  objc_msgSend_removeObjectForKey_(self->_identifierToRunLoopSourcesMap, v29, v37);
  if (!objc_msgSend_count(self->_identifierToCFUserNotificationMap, v30, v31))
  {
    identifierToCFUserNotificationMap = self->_identifierToCFUserNotificationMap;
    self->_identifierToCFUserNotificationMap = 0;
  }

  if (!objc_msgSend_count(self->_identifierToRunLoopSourcesMap, v32, v33))
  {
    identifierToRunLoopSourcesMap = self->_identifierToRunLoopSourcesMap;
    self->_identifierToRunLoopSourcesMap = 0;
  }

  objc_msgSend__displayNextUserNotificationForIdentifier_(self, v35, v37);
}

- (void)addUserNotification:(id)notification listener:(id)listener completionHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  listenerCopy = listener;
  v12 = objc_msgSend_identifier(notificationCopy, v10, v11);
  objc_msgSend__enqueueUserNotification_forIdentifier_(self, v13, notificationCopy, v12);
  objc_msgSend__enqueueListener_forIdentifier_(self, v14, listenerCopy, v12);

  objc_msgSend__enqueueBlock_forIdentifier_(self, v15, handlerCopy, v12);
  v17 = objc_msgSend_objectForKey_(self->_identifierToCFUserNotificationMap, v16, v12);
  if (!v17 || (v20 = v17, v21 = objc_msgSend_usesNotificationCenter(notificationCopy, v18, v19), v20, v21))
  {
    objc_msgSend__displayNextUserNotificationForIdentifier_(self, v18, v12);
  }
}

- (unint64_t)countForIdentifier:(id)identifier
{
  v3 = objc_msgSend_objectForKey_(self->_identifierToIMUserNotificationQueueMap, a2, identifier);
  v6 = objc_msgSend_count(v3, v4, v5);

  return v6;
}

- (void)removeNotificationsForServiceIdentifier:(id)identifier
{
  if (identifier)
  {
    objc_msgSend__cancelActiveUserNotificationForIdentifier_(self, a2, identifier);
  }
}

- (void)removeListener:(id)listener
{
  v69 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  if (listenerCopy)
  {
    v7 = objc_msgSend_null(MEMORY[0x1E695DFB0], v4, v5);

    if (v7 != listenerCopy)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v11 = objc_msgSend_allKeys(self->_identifierToListenerQueueMap, v9, v10);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v62, v68, 16);
      if (v13)
      {
        v15 = v13;
        v16 = *v63;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v63 != v16)
            {
              objc_enumerationMutation(v11);
            }

            v18 = *(*(&v62 + 1) + 8 * i);
            v19 = objc_msgSend__frontListenerForIdentifier_(self, v14, v18);

            if (v19 == listenerCopy)
            {
              objc_msgSend_addObject_(v8, v14, v18);
              objc_msgSend__cancelActiveUserNotificationForIdentifier_(self, v20, v18);
            }
          }

          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v62, v68, 16);
        }

        while (v15);
      }

      v52 = v8;

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      obj = objc_msgSend_allKeys(self->_identifierToIMUserNotificationQueueMap, v21, v22);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v58, v67, 16);
      if (v24)
      {
        v26 = v24;
        v27 = *v59;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v59 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v58 + 1) + 8 * j);
            v30 = objc_msgSend_objectForKey_(self->_identifierToIMUserNotificationQueueMap, v25, v29, v52);
            v32 = objc_msgSend_objectForKey_(self->_identifierToListenerQueueMap, v31, v29);
            v34 = objc_msgSend_objectForKey_(self->_identifierToBlockQueueMap, v33, v29);
            if (objc_msgSend_count(v30, v35, v36))
            {
              v38 = 0;
              do
              {
                v40 = objc_msgSend_objectAtIndex_(v30, v37, v38);
                if (v40 == listenerCopy)
                {
                  objc_msgSend_removeObjectAtIndex_(v30, v39, v38);
                  objc_msgSend_removeObjectAtIndex_(v32, v41, v38);
                  objc_msgSend_removeObjectAtIndex_(v34, v42, v38);
                }

                else
                {
                  ++v38;
                }
              }

              while (v38 < objc_msgSend_count(v30, v43, v44));
            }
          }

          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v58, v67, 16);
        }

        while (v26);
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v45 = v52;
      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v54, v66, 16);
      if (v47)
      {
        v49 = v47;
        v50 = *v55;
        do
        {
          for (k = 0; k != v49; ++k)
          {
            if (*v55 != v50)
            {
              objc_enumerationMutation(v45);
            }

            objc_msgSend__displayNextUserNotificationForIdentifier_(self, v48, *(*(&v54 + 1) + 8 * k), v52);
          }

          v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v48, &v54, v66, 16);
        }

        while (v49);
      }
    }
  }
}

- (void)removeAllListeners
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = objc_msgSend_allKeys(self->_identifierToIMUserNotificationQueueMap, a2, v2, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v26, v30, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend__cancelActiveUserNotificationForIdentifier_(self, v7, *(*(&v26 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v26, v30, 16);
    }

    while (v8);
  }

  objc_msgSend_removeAllObjects(self->_identifierToIMUserNotificationQueueMap, v11, v12);
  objc_msgSend_removeAllObjects(self->_identifierToListenerQueueMap, v13, v14);
  objc_msgSend_removeAllObjects(self->_identifierToBlockQueueMap, v15, v16);
  if (!objc_msgSend_count(self->_identifierToIMUserNotificationQueueMap, v17, v18))
  {
    identifierToIMUserNotificationQueueMap = self->_identifierToIMUserNotificationQueueMap;
    self->_identifierToIMUserNotificationQueueMap = 0;
  }

  if (!objc_msgSend_count(self->_identifierToListenerQueueMap, v19, v20))
  {
    identifierToListenerQueueMap = self->_identifierToListenerQueueMap;
    self->_identifierToListenerQueueMap = 0;
  }

  if (!objc_msgSend_count(self->_identifierToBlockQueueMap, v22, v23))
  {
    identifierToBlockQueueMap = self->_identifierToBlockQueueMap;
    self->_identifierToBlockQueueMap = 0;
  }
}

@end