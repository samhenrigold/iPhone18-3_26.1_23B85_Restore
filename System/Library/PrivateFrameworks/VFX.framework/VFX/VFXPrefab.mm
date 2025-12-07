@interface VFXPrefab
+ (id)prefabWithAsset:(id)asset;
- (NSString)description;
- (VFXPrefab)init;
- (VFXPrefab)initWithAsset:(id)asset;
- (VFXPrefab)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reload:(id)reload options:(unint64_t)options;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
@end

@implementation VFXPrefab

- (VFXPrefab)initWithAsset:(id)asset
{
  v8.receiver = self;
  v8.super_class = VFXPrefab;
  v4 = [(VFXPrefab *)&v8 init];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_setSource_(v4, v5, asset);
  }

  return v6;
}

- (VFXPrefab)init
{
  v3.receiver = self;
  v3.super_class = VFXPrefab;
  return [(VFXPrefab *)&v3 init];
}

+ (id)prefabWithAsset:(id)asset
{
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithAsset_(v4, v5, asset);

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXPrefab;
  [(VFXPrefab *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_withContext_(self, v5, v4, 0);
  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"<%@: %p source=%@>", v5, self, self->_source);
}

- (id)reload:(id)reload options:(unint64_t)options
{
  v7 = objc_msgSend_source(self, a2, reload);
  v9 = objc_msgSend_instantiate_(v7, v8, 0);
  v11 = v9;
  if (!reload || (options & 0x80) != 0)
  {
    objc_msgSend_setPrefab_(v9, v10, self);
    if (!reload)
    {
      objc_msgSend_setHidden_(v11, v14, 0);
      return v11;
    }
  }

  else
  {
    v12 = objc_alloc_init(VFXPrefabUpdater);
    objc_msgSend_updatePrefab_withNewPrefab_options_(v12, v13, reload, v11, options);
    v11 = 0;
  }

  objc_msgSend_position(reload, v14, v15);
  objc_msgSend_setPosition_(v11, v16, v17);
  isHidden = objc_msgSend_isHidden(reload, v18, v19);
  objc_msgSend_setHidden_(v11, v21, isHidden);
  return v11;
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  source = self->_source;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF3160F8;
  v5[3] = &unk_1E7A7C0C8;
  v5[4] = self;
  (*(block + 2))(block, source, 1, v5);
}

- (void)encodeWithCoder:(id)coder
{
  source = self->_source;
  if (source)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, source, @"source");
  }
}

- (VFXPrefab)initWithCoder:(id)coder
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VFXPrefab;
  v4 = [(VFXPrefab *)&v14 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v15, 1);
    v9 = objc_msgSend_setWithArray_(v5, v8, v7);
    v11 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v10, v9, @"source");
    objc_msgSend_setSource_(v4, v12, v11);
  }

  return v4;
}

@end