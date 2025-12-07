@interface CLSettingsMirror
- (id)initInUniverse:(id)universe;
- (void)dealloc;
- (void)didUpdateSettings:(id)settings;
- (void)invalidate;
- (void)setBool:(BOOL)bool forKey:(id)key;
- (void)setDouble:(double)double forKey:(id)key;
- (void)setFloat:(float)float forKey:(id)key;
- (void)setInt:(int)int forKey:(id)key;
- (void)setLong:(int64_t)long forKey:(id)key;
- (void)setShort:(signed __int16)short forKey:(id)key;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation CLSettingsMirror

- (id)initInUniverse:(id)universe
{
  v23.receiver = self;
  v23.super_class = CLSettingsMirror;
  v4 = [(CLSettingsMirror *)&v23 init];
  p_isa = &v4->super.super.isa;
  if (v4)
  {
    objc_msgSend_setValid_(v4, v5, 1);
    objc_msgSend_setUniverse_(p_isa, v7, universe);
    v10 = objc_msgSend_vendor(p_isa[5], v8, v9);
    v12 = objc_msgSend_proxyForService_(v10, v11, @"CLSettingsManager");
    objc_msgSend_setManager_(p_isa, v13, v12);
    v14 = p_isa[4];
    v17 = objc_msgSend_silo(p_isa[5], v15, v16);
    objc_msgSend_registerDelegate_inSilo_(v14, v18, p_isa, v17);
    v20 = objc_msgSend_syncgetSettingsAndRegisterForUpdates_(p_isa[4], v19, p_isa);
    objc_msgSend_setDictionary_(p_isa, v21, v20);
  }

  return p_isa;
}

- (void)invalidate
{
  objc_msgSend_unregisterForUpdates_(self->_manager, a2, self);
  objc_msgSend_setValid_(self, v3, 0);
  objc_msgSend_setManager_(self, v4, 0);
  objc_msgSend_setUniverse_(self, v5, 0);

  MEMORY[0x1EEE66B58](self, sel_setSettingsChangeHandler_, 0);
}

- (void)dealloc
{
  objc_msgSend_invalidate(self, a2, v2);
  v4.receiver = self;
  v4.super_class = CLSettingsMirror;
  [(CLSettingsDictionary *)&v4 dealloc];
}

- (void)didUpdateSettings:(id)settings
{
  objc_msgSend_setDictionary_(self, a2, settings);
  settingsChangeHandler = self->_settingsChangeHandler;
  if (settingsChangeHandler)
  {
    v5 = *(settingsChangeHandler + 2);

    v5();
  }
}

- (void)setValue:(id)value forKey:(id)key
{
  v7 = objc_msgSend_manager(self, a2, value);
  v9 = objc_msgSend_syncgetSetValue_forKey_withoutNotifying_(v7, v8, value, key, self);
  if (v9)
  {

    objc_msgSend_setDictionary_(self, v10, v9);
  }
}

- (void)setBool:(BOOL)bool forKey:(id)key
{
  v7 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, bool);

  objc_msgSend_setValue_forKey_(self, v6, v7, key);
}

- (void)setShort:(signed __int16)short forKey:(id)key
{
  v7 = objc_msgSend_numberWithShort_(MEMORY[0x1E696AD98], a2, short);

  objc_msgSend_setValue_forKey_(self, v6, v7, key);
}

- (void)setInt:(int)int forKey:(id)key
{
  v7 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], a2, *&int);

  objc_msgSend_setValue_forKey_(self, v6, v7, key);
}

- (void)setLong:(int64_t)long forKey:(id)key
{
  v7 = objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], a2, long);

  objc_msgSend_setValue_forKey_(self, v6, v7, key);
}

- (void)setFloat:(float)float forKey:(id)key
{
  v7 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], a2, key);

  objc_msgSend_setValue_forKey_(self, v6, v7, key);
}

- (void)setDouble:(double)double forKey:(id)key
{
  v7 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, key, double);

  objc_msgSend_setValue_forKey_(self, v6, v7, key);
}

@end