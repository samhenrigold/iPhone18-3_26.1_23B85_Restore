@interface CLSettingsManagerInternal
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (id)syncgetSetValue:(id)value forKey:(id)key withoutNotifying:(id)notifying;
- (id)syncgetSettingsAndRegisterForUpdates:(id)updates;
- (void)beginService;
- (void)endService;
- (void)updateClientsWithDictionary:(id)dictionary;
@end

@implementation CLSettingsManagerInternal

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v5 = index + 1;
  if (index + 1 < objc_msgSend_count(blocked, a2, blocked))
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(blocked, v6, v5);
    objc_msgSend_becameFatallyBlocked_index_(v7, v8, blocked, v5);
  }
}

+ (id)getSilo
{
  if (qword_1ED5FAD90 != -1)
  {
    dispatch_once(&qword_1ED5FAD90, &unk_1F5AC6420);
  }

  return qword_1ED5FAD88;
}

- (void)beginService
{
  v4 = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, v2);
  objc_msgSend_setClients_(self, v5, v4);

  objc_msgSend_setSettingsDictionary_(self, v6, 0);
}

- (void)endService
{
  objc_msgSend_setSettingsDictionary_(self, a2, 0);

  objc_msgSend_setClients_(self, v3, 0);
}

- (id)syncgetSettingsAndRegisterForUpdates:(id)updates
{
  objc_msgSend_addObject_(self->_clients, a2, updates);
  v5 = MEMORY[0x1E695DF20];
  settingsDictionary = self->_settingsDictionary;

  return objc_msgSend_dictionaryWithDictionary_(v5, v4, settingsDictionary);
}

- (void)updateClientsWithDictionary:(id)dictionary
{
  v17 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    __assert_rtn("[CLSettingsManagerInternal updateClientsWithDictionary:]", "CLSettingsManagerInternal.m", 52, "![dictionary isKindOfClass:[NSMutableDictionary class]]");
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  clients = self->_clients;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(clients, v5, &v12, v16, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(clients);
        }

        objc_msgSend_didUpdateSettings_(*(*(&v12 + 1) + 8 * v11++), v8, dictionary);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(clients, v8, &v12, v16, 16);
    }

    while (v9);
  }
}

- (id)syncgetSetValue:(id)value forKey:(id)key withoutNotifying:(id)notifying
{
  v23 = *MEMORY[0x1E69E9840];
  objc_msgSend_setValue_forKey_(self->_settingsDictionary, a2, value, key);
  v8 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF20], v7, self->_settingsDictionary);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  clients = self->_clients;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(clients, v10, &v18, v22, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(clients);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        if (v16 != notifying)
        {
          objc_msgSend_didUpdateSettings_(v16, v12, v8);
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(clients, v12, &v18, v22, 16);
    }

    while (v13);
  }

  return v8;
}

@end