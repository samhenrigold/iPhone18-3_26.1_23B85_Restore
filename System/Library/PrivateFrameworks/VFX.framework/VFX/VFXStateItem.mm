@interface VFXStateItem
+ (id)addAnimation:(id)animation to:(id)to keyPath:(id)path;
+ (id)insertChildNode:(id)node parent:(id)parent atIndex:(unint64_t)index;
+ (id)removeAnimationFrom:(id)from keyPath:(id)path;
+ (id)removeNode:(id)node;
+ (id)setValue:(id)value to:(id)to keyPath:(id)path;
- (BOOL)replaces:(id)replaces;
- (NSString)description;
- (VFXStateItem)init;
- (VFXStateItem)initWithAction:(int64_t)action target:(id)target keyPath:(id)path value:(id)value parent:(id)parent index:(unint64_t)index;
- (VFXStateItem)initWithCoder:(id)coder;
- (id)_makeReverseItem;
- (id)copyWithZone:(_NSZone *)zone;
- (id)effectiveTarget;
- (id)makeReverseItem;
- (void)apply;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)setTarget:(id)target;
- (void)setValue:(id)value;
@end

@implementation VFXStateItem

- (BOOL)replaces:(id)replaces
{
  if (*(replaces + 1) != self->_action)
  {
    return 0;
  }

  v5 = objc_msgSend_target(replaces, a2, replaces);
  if (v5 != objc_msgSend_target(self, v6, v7))
  {
    return 0;
  }

  v10 = *(replaces + 3);
  keyPath = self->_keyPath;

  return objc_msgSend_isEqualToString_(v10, v8, keyPath);
}

- (VFXStateItem)init
{
  v9.receiver = self;
  v9.super_class = VFXStateItem;
  v4 = [(VFXStateItem *)&v9 init];
  if (v4)
  {
    v5 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v2, v3);
    v4->_identifier = objc_msgSend_UUIDString(v5, v6, v7);
  }

  return v4;
}

- (VFXStateItem)initWithAction:(int64_t)action target:(id)target keyPath:(id)path value:(id)value parent:(id)parent index:(unint64_t)index
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v25.receiver = self;
  v25.super_class = VFXStateItem;
  v16 = [(VFXStateItem *)&v25 init];
  v18 = v16;
  if (v16)
  {
    if (isKindOfClass)
    {
      value = 0;
    }

    v16->_action = action;
    objc_msgSend_setTarget_(v16, v17, target);
    v18->_keyPath = path;
    v18->_value = value;
    v18->_parent = parent;
    v18->_index = index;
    v21 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v19, v20);
    v18->_identifier = objc_msgSend_UUIDString(v21, v22, v23);
  }

  return v18;
}

+ (id)setValue:(id)value to:(id)to keyPath:(id)path
{
  v8 = [VFXStateItem alloc];
  v10 = objc_msgSend_initWithAction_target_keyPath_value_parent_index_(v8, v9, 0, to, path, value, 0, 0);

  return v10;
}

+ (id)removeNode:(id)node
{
  v4 = [VFXStateItem alloc];
  v6 = objc_msgSend_initWithAction_target_keyPath_value_parent_index_(v4, v5, 3, node, 0, 0, 0, 0);

  return v6;
}

+ (id)insertChildNode:(id)node parent:(id)parent atIndex:(unint64_t)index
{
  v8 = [VFXStateItem alloc];
  v10 = objc_msgSend_initWithAction_target_keyPath_value_parent_index_(v8, v9, 4, node, 0, 0, parent, index);

  return v10;
}

+ (id)addAnimation:(id)animation to:(id)to keyPath:(id)path
{
  v8 = [VFXStateItem alloc];
  v10 = objc_msgSend_initWithAction_target_keyPath_value_parent_index_(v8, v9, 1, to, path, animation, 0, 0);

  return v10;
}

+ (id)removeAnimationFrom:(id)from keyPath:(id)path
{
  v6 = [VFXStateItem alloc];
  v8 = objc_msgSend_initWithAction_target_keyPath_value_parent_index_(v6, v7, 2, from, path, 0, 0, 0);

  return v8;
}

- (void)dealloc
{
  objc_storeWeak(&self->_target, 0);
  v3.receiver = self;
  v3.super_class = VFXStateItem;
  [(VFXStateItem *)&v3 dealloc];
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  if (operation != 1)
  {
    v11[9] = v4;
    v11[10] = v5;
    v8 = objc_msgSend_target(self, a2, operation);
    if (v8)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF330F7C;
      v11[3] = &unk_1E7A7C0C8;
      v11[4] = self;
      (*(block + 2))(block, v8, 1, v11);
    }

    value = self->_value;
    if (value)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_1AF330F88;
      v10[3] = &unk_1E7A7C0C8;
      v10[4] = self;
      (*(block + 2))(block, value, 1, v10);
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v7 = objc_msgSend_target(self, v5, v6);
  objc_msgSend_setTarget_(v4, v8, v7);
  v4[3] = objc_msgSend_copy(self->_keyPath, v9, v10);
  v4[4] = self->_value;
  v4[5] = self->_parent;
  v4[6] = self->_index;
  v4[1] = self->_action;

  v4[7] = self->_identifier;
  return v4;
}

- (id)effectiveTarget
{
  if (objc_msgSend_target(self, a2, v2))
  {

    return objc_msgSend_target(self, v4, v5);
  }

  else
  {
    v7 = objc_msgSend_stateManager(self->_state, v4, v5);

    return objc_msgSend_owner(v7, v8, v9);
  }
}

- (void)setTarget:(id)target
{
  if (objc_msgSend_target(self, a2, target) != target)
  {
    v7 = objc_msgSend_stateManager(self->_state, v5, v6);
    if (objc_msgSend_owner(v7, v8, v9) == target)
    {
      targetCopy = 0;
    }

    else
    {
      targetCopy = target;
    }

    objc_storeWeak(&self->_target, targetCopy);
  }
}

- (void)setValue:(id)value
{
  value = self->_value;
  if (value != value)
  {

    self->_value = value;
  }
}

- (void)apply
{
  action = self->_action;
  if (action <= 1)
  {
    if (action)
    {
      if (action == 1)
      {
        v9 = objc_msgSend_effectiveTarget(self, a2, v2);
        keyPath = self->_keyPath;
        value = self->_value;

        objc_msgSend_addAnimationPlayer_forKey_(v9, v10, value, keyPath);
      }
    }

    else
    {
      v19 = objc_msgSend_effectiveTarget(self, a2, v2);
      objc_msgSend_setValue_forKeyPath_(v19, v20, self->_value, self->_keyPath);
    }
  }

  else
  {
    switch(action)
    {
      case 2:
        v13 = objc_msgSend_effectiveTarget(self, a2, v2);
        v15 = self->_keyPath;

        objc_msgSend_removeAnimationForKey_(v13, v14, v15);
        break;
      case 3:
        v16 = objc_msgSend_effectiveTarget(self, a2, v2);

        objc_msgSend_removeFromParentNode(v16, v17, v18);
        break;
      case 4:
        v5 = objc_msgSend_parent(self, a2, v2);
        v8 = objc_msgSend_effectiveTarget(self, v6, v7);

        MEMORY[0x1EEE66B58](v5, sel_insertChildNode_atIndex_, v8);
        break;
    }
  }
}

- (NSString)description
{
  action = self->_action;
  if (action <= 1)
  {
    if (!action)
    {
      v17 = MEMORY[0x1E696AEC0];
      keyPath = self->_keyPath;
      value = self->_value;
      v25 = objc_msgSend_target(self, a2, v2);
      return objc_msgSend_stringWithFormat_(v17, v20, @"set: %@ to %@ of %@\n", value, keyPath, v25);
    }

    if (action == 1)
    {
      v8 = MEMORY[0x1E696AEC0];
      v10 = self->_keyPath;
      v9 = self->_value;
      v24 = objc_msgSend_target(self, a2, v2);
      return objc_msgSend_stringWithFormat_(v8, v11, @"addAnim: %@ at %@ to %@\n", v9, v10, v24);
    }
  }

  else
  {
    switch(action)
    {
      case 2:
        v12 = MEMORY[0x1E696AEC0];
        v13 = self->_keyPath;
        v23 = objc_msgSend_target(self, a2, v2);
        return objc_msgSend_stringWithFormat_(v12, v14, @"removeAnim: at %@ from:%@\n", v13, v23);
      case 3:
        v15 = MEMORY[0x1E696AEC0];
        v22 = objc_msgSend_target(self, a2, v2);
        return objc_msgSend_stringWithFormat_(v15, v16, @"remove: %@\n", v22);
      case 4:
        v5 = MEMORY[0x1E696AEC0];
        v21 = objc_msgSend_target(self, a2, v2);
        return objc_msgSend_stringWithFormat_(v5, v6, @"insert: %@ at %d\n", v21, self->_index);
    }
  }

  return 0;
}

- (id)_makeReverseItem
{
  action = self->_action;
  if (action <= 1)
  {
    if (action)
    {
      if (action != 1)
      {
        return 0;
      }

      v6 = objc_msgSend_effectiveTarget(self, a2, v2);

      return MEMORY[0x1EEE66B58](VFXStateItem, sel_removeAnimationFrom_keyPath_, v6);
    }

    else
    {
      v23 = objc_msgSend_effectiveTarget(self, a2, v2);
      v25 = objc_msgSend_valueForKeyPath_(v23, v24, self->_keyPath);
      objc_msgSend_effectiveTarget(self, v26, v27);

      return MEMORY[0x1EEE66B58](VFXStateItem, sel_setValue_to_keyPath_, v25);
    }
  }

  else
  {
    switch(action)
    {
      case 2:
        v7 = objc_msgSend_effectiveTarget(self, a2, v2);
        v9 = objc_msgSend_animationPlayerForKey_(v7, v8, self->_keyPath);
        objc_msgSend_effectiveTarget(self, v10, v11);

        return MEMORY[0x1EEE66B58](VFXStateItem, sel_addAnimation_to_keyPath_, v9);
      case 3:
        v12 = objc_msgSend_effectiveTarget(self, a2, v2);
        v15 = objc_msgSend_parentNode(v12, v13, v14);
        v18 = objc_msgSend_effectiveTarget(self, v16, v17);
        objc_msgSend_indexOfChildNode_(v15, v19, v18);
        v22 = objc_msgSend_effectiveTarget(self, v20, v21);

        return MEMORY[0x1EEE66B58](VFXStateItem, sel_insertChildNode_parent_atIndex_, v22);
      case 4:
        v5 = objc_msgSend_effectiveTarget(self, a2, v2);

        return MEMORY[0x1EEE66B58](VFXStateItem, sel_removeNode_, v5);
      default:
        return 0;
    }
  }
}

- (id)makeReverseItem
{
  ReverseItem = objc_msgSend__makeReverseItem(self, a2, v2);
  v7 = objc_msgSend_identifier(self, v5, v6);
  objc_msgSend_setIdentifier_(ReverseItem, v8, v7);
  objc_msgSend_setState_(ReverseItem, v9, self->_state);
  return ReverseItem;
}

- (VFXStateItem)initWithCoder:(id)coder
{
  v41[13] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = VFXStateItem;
  v5 = [(VFXStateItem *)&v39 init];
  if (v5)
  {
    v5->_action = objc_msgSend_decodeIntegerForKey_(coder, v4, @"action");
    v5->_index = objc_msgSend_decodeIntegerForKey_(coder, v6, @"index");
    v7 = objc_opt_class();
    v5->_keyPath = objc_msgSend_decodeObjectOfClass_forKey_(coder, v8, v7, @"keyPath");
    v9 = MEMORY[0x1E695DFD8];
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v41[2] = objc_opt_class();
    v41[3] = objc_opt_class();
    v41[4] = objc_opt_class();
    v41[5] = objc_opt_class();
    v41[6] = objc_opt_class();
    v41[7] = objc_opt_class();
    v41[8] = objc_opt_class();
    v41[9] = objc_opt_class();
    v41[10] = objc_opt_class();
    v41[11] = objc_opt_class();
    v41[12] = objc_opt_class();
    v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v41, 13);
    v13 = objc_msgSend_setWithArray_(v9, v12, v11);
    v15 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v14, v13, @"target");
    objc_msgSend_setTarget_(v5, v16, v15);
    v17 = MEMORY[0x1E695DFD8];
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v40[2] = objc_opt_class();
    v40[3] = objc_opt_class();
    v40[4] = objc_opt_class();
    v40[5] = objc_opt_class();
    v40[6] = objc_opt_class();
    v40[7] = objc_opt_class();
    v40[8] = objc_opt_class();
    v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v40, 9);
    v21 = objc_msgSend_setWithArray_(v17, v20, v19);
    v23 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v22, v21, @"value");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = VFXValueFromData(v23, v24, v25);
    }

    v5->_value = v23;
    v26 = objc_opt_class();
    v5->_parent = objc_msgSend_decodeObjectOfClass_forKey_(coder, v27, v26, @"parent");
    if (objc_msgSend_containsValueForKey_(coder, v28, @"identifier"))
    {
      v31 = objc_opt_class();
      v33 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v32, v31, @"identifier");
    }

    else
    {
      v35 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v29, v30);
      v33 = objc_msgSend_UUIDString(v35, v36, v37);
    }

    objc_msgSend_setIdentifier_(v5, v34, v33);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInteger_forKey_(coder, a2, self->_action, @"action");
  if (objc_msgSend_target(self, v5, v6))
  {
    v9 = objc_msgSend_target(self, v7, v8);
    objc_msgSend_encodeObject_forKey_(coder, v10, v9, @"target");
  }

  keyPath = self->_keyPath;
  if (keyPath)
  {
    objc_msgSend_encodeObject_forKey_(coder, v7, keyPath, @"keyPath");
  }

  value = self->_value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = VFXDataFromValue(self->_value, 1, v14);
  }

  if (value)
  {
    if (objc_msgSend_conformsToProtocol_(value, v13, &unk_1F25D6D40))
    {
      objc_msgSend_encodeObject_forKey_(coder, v15, value, @"value");
    }

    else
    {
      NSLog(&cfstr_FailedToArchiv_3.isa, value);
    }
  }

  parent = self->_parent;
  if (parent)
  {
    objc_msgSend_encodeObject_forKey_(coder, v13, parent, @"parent");
  }

  index = self->_index;
  if (index)
  {
    objc_msgSend_encodeInteger_forKey_(coder, v13, index, @"index");
  }

  identifier = self->_identifier;

  objc_msgSend_encodeObject_forKey_(coder, v13, identifier, @"identifier");
}

@end