@interface VFXState
- (NSString)description;
- (VFXState)init;
- (VFXState)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)itemMatching:(id)matching;
- (id)makeReverseStates;
- (void)addStateItem:(id)item;
- (void)applyFrom:(id)from reverse:(BOOL)reverse transition:(id)transition;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)setBaseState:(id)state;
@end

@implementation VFXState

- (VFXState)init
{
  v9.receiver = self;
  v9.super_class = VFXState;
  v2 = [(VFXState *)&v9 init];
  if (v2)
  {
    v2->_stateItems = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v3, v4);
    v2->_identifier = objc_msgSend_UUIDString(v5, v6, v7);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXState;
  [(VFXState *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(objc_opt_class());
  v7 = objc_msgSend_name(self, v5, v6);
  objc_msgSend_setName_(v4, v8, v7);
  v11 = objc_msgSend_baseState(self, v9, v10);
  objc_msgSend_setBaseState_(v4, v12, v11);
  v15 = objc_msgSend_identifier(self, v13, v14);
  objc_msgSend_setIdentifier_(v4, v16, v15);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  stateItems = self->_stateItems;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(stateItems, v18, &v28, v32, 16);
  if (v19)
  {
    v22 = v19;
    v23 = *v29;
    do
    {
      v24 = 0;
      do
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(stateItems);
        }

        v25 = objc_msgSend_copy(*(*(&v28 + 1) + 8 * v24), v20, v21);
        objc_msgSend_addStateItem_(v4, v26, v25);
        ++v24;
      }

      while (v22 != v24);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(stateItems, v20, &v28, v32, 16);
    }

    while (v22);
  }

  return v4;
}

- (void)setBaseState:(id)state
{
  baseState = self->_baseState;
  if (baseState != state)
  {

    self->_baseState = state;
  }
}

- (id)itemMatching:(id)matching
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  stateItems = self->_stateItems;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(stateItems, a2, &v12, v16, 16);
  if (!v5)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(stateItems);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if (objc_msgSend_replaces_(matching, v6, v10))
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(stateItems, v6, &v12, v16, 16);
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)addStateItem:(id)item
{
  objc_msgSend_setState_(item, a2, self);
  stateItems = self->_stateItems;

  objc_msgSend_addObject_(stateItems, v5, item);
}

- (void)applyFrom:(id)from reverse:(BOOL)reverse transition:(id)transition
{
  reverseCopy = reverse;
  v41 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_baseState(self, a2, from))
  {
    stateManager = self->_stateManager;
    v13 = objc_msgSend_baseState(self, v9, v10);
    if (reverseCopy)
    {
      v14 = objc_msgSend_transitionFrom_to_(stateManager, v12, v13, from);
    }

    else
    {
      v14 = objc_msgSend_transitionFrom_to_(stateManager, v12, from, v13);
    }

    v16 = v14;
    objc_msgSend_beginTransition_(VFXStateManager, v15, v14);
    v19 = objc_msgSend_baseState(self, v17, v18);
    objc_msgSend_applyFrom_reverse_transition_(v19, v20, from, reverseCopy, v16);
    objc_msgSend_commitTransition_(VFXStateManager, v21, v16);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  stateItems = self->_stateItems;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(stateItems, v9, &v36, v40, 16);
  if (v23)
  {
    v25 = v23;
    v26 = *v37;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(stateItems);
        }

        v28 = *(*(&v36 + 1) + 8 * i);
        v29 = objc_msgSend_transitionOverrideForItem_(transition, v24, v28);
        if (v29)
        {
          v32 = v29;
          objc_msgSend_beginTransition_(VFXStateManager, v30, v29);
          objc_msgSend_apply(v28, v33, v34);
          objc_msgSend_commitTransition_(VFXStateManager, v35, v32);
        }

        else
        {
          objc_msgSend_apply(v28, v30, v31);
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(stateItems, v24, &v36, v40, 16);
    }

    while (v25);
  }
}

- (NSString)description
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"State %@: {\n", self->_name);
  if (objc_msgSend_baseState(self, v4, v5))
  {
    v8 = objc_msgSend_baseState(self, v6, v7);
    v11 = objc_msgSend_description(v8, v9, v10);
    v3 = objc_msgSend_stringByAppendingString_(v3, v12, v11);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  stateItems = self->_stateItems;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(stateItems, v6, &v23, v27, 16);
  if (v14)
  {
    v17 = v14;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(stateItems);
        }

        v20 = objc_msgSend_description(*(*(&v23 + 1) + 8 * v19), v15, v16);
        v3 = objc_msgSend_stringByAppendingString_(v3, v21, v20);
        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(stateItems, v15, &v23, v27, 16);
    }

    while (v17);
  }

  return objc_msgSend_stringByAppendingString_(v3, v15, @"}\n");
}

- (id)makeReverseStates
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(VFXState);
  v6 = objc_msgSend_name(self, v4, v5);
  objc_msgSend_setName_(v3, v7, v6);
  objc_msgSend_setStateManager_(v3, v8, self->_stateManager);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = objc_msgSend_reverseObjectEnumerator(self->_stateItems, v9, v10, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v30, v34, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v31;
    do
    {
      v18 = 0;
      do
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v11);
        }

        ReverseItem = objc_msgSend_makeReverseItem(*(*(&v30 + 1) + 8 * v18), v14, v15);
        objc_msgSend_addStateItem_(v3, v20, ReverseItem);
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v30, v34, 16);
    }

    while (v16);
  }

  if (objc_msgSend_baseState(self, v14, v15))
  {
    v23 = objc_msgSend_baseState(self, v21, v22);
    ReverseStates = objc_msgSend_makeReverseStates(v23, v24, v25);
    objc_msgSend_setStateManager_(ReverseStates, v27, self->_stateManager);
    objc_msgSend_setBaseState_(ReverseStates, v28, v3);

    v3 = ReverseStates;
  }

  return v3;
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_baseState(self, a2, operation);
  v7 = *(block + 2);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1AF330778;
  v21[3] = &unk_1E7A7C0C8;
  v21[4] = self;
  v7(block, v6, 1, v21);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = objc_msgSend_stateItems(self, v8, v9, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v17, v22, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v10);
        }

        (*(block + 2))(block, *(*(&v17 + 1) + 8 * v15++), 0, 0);
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, &v17, v22, 16);
    }

    while (v13);
  }
}

- (VFXState)initWithCoder:(id)coder
{
  v37 = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = VFXState;
  v4 = [(VFXState *)&v35 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_baseState = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"baseState");
    v7 = objc_opt_class();
    v4->_name = objc_msgSend_decodeObjectOfClass_forKey_(coder, v8, v7, @"name");
    v9 = objc_opt_class();
    v11 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v10, v9, @"stateItems");
    v4->_stateItems = objc_msgSend_mutableCopy(v11, v12, v13);
    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v15, v14, @"identifier");
    objc_msgSend_setIdentifier_(v4, v17, v16);
    if (!v4->_identifier)
    {
      v20 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v18, v19);
      v23 = objc_msgSend_UUIDString(v20, v21, v22);
      objc_msgSend_setIdentifier_(v4, v24, v23);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    stateItems = v4->_stateItems;
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(stateItems, v18, &v31, v36, 16);
    if (v27)
    {
      v28 = *v32;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v32 != v28)
          {
            objc_enumerationMutation(stateItems);
          }

          objc_msgSend_setState_(*(*(&v31 + 1) + 8 * i), v26, v4);
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(stateItems, v26, &v31, v36, 16);
      }

      while (v27);
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_stateItems, @"stateItems");
  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(coder, v5, name, @"name");
  }

  baseState = self->_baseState;
  if (baseState)
  {
    objc_msgSend_encodeObject_forKey_(coder, v5, baseState, @"baseState");
  }

  identifier = self->_identifier;

  objc_msgSend_encodeObject_forKey_(coder, v5, identifier, @"identifier");
}

@end