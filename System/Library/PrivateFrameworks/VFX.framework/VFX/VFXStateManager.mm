@interface VFXStateManager
+ (void)beginTransition:(id)transition;
+ (void)commitTransition:(id)transition;
- (VFXStateManager)init;
- (VFXStateManager)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stateWithName:(id)name;
- (id)transitionFrom:(id)from to:(id)to;
- (void)addReverseItem:(id)item;
- (void)addState:(id)state;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)setActiveState:(id)state;
@end

@implementation VFXStateManager

- (VFXStateManager)init
{
  v4.receiver = self;
  v4.super_class = VFXStateManager;
  v2 = [(VFXStateManager *)&v4 init];
  if (v2)
  {
    v2->_states = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_transitions = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_transitionsEnabled = 1;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXStateManager;
  [(VFXStateManager *)&v3 dealloc];
}

- (void)copyTo:(id)to withContext:(id)context
{
  v42 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = objc_msgSend_states(self, a2, to);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v36, v41, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v37;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        v16 = sub_1AF2BED30(v15, context);
        v18 = v16;
        if (self->_activeState == v15)
        {
          v19 = *(to + 2);
          if (v19 != v16)
          {

            *(to + 2) = v18;
          }
        }

        objc_msgSend_addState_(to, v17, v18);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v20, &v36, v41, 16);
    }

    while (v12);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = objc_msgSend_transitions(self, v10, v11, 0);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v32, v40, 16);
  if (v23)
  {
    v26 = v23;
    v27 = *v33;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(v21);
        }

        v29 = objc_msgSend_copy(*(*(&v32 + 1) + 8 * j), v24, v25);
        objc_msgSend_addStateTransition_(to, v30, v29);
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v32, v40, 16);
    }

    while (v26);
  }

  reverseActiveState = self->_reverseActiveState;
  if (reverseActiveState)
  {
    *(to + 3) = sub_1AF2BED30(reverseActiveState, context);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_withContext_(self, v5, v4, 0);
  return v4;
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  states = self->_states;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(states, a2, &v14, v18, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(states);
        }

        (*(block + 2))(block, *(*(&v14 + 1) + 8 * i), 0, 0);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(states, v11, &v14, v18, 16);
    }

    while (v8);
  }

  reverseActiveState = self->_reverseActiveState;
  if (reverseActiveState)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1AF32F644;
    v13[3] = &unk_1E7A7C0C8;
    v13[4] = self;
    (*(block + 2))(block, reverseActiveState, 1, v13);
  }
}

- (void)addState:(id)state
{
  objc_msgSend_setStateManager_(state, a2, self);
  states = self->_states;

  objc_msgSend_addObject_(states, v5, state);
}

- (id)stateWithName:(id)name
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  states = self->_states;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(states, a2, &v15, v19, 16);
  if (!v5)
  {
    return 0;
  }

  v8 = v5;
  v9 = *v16;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v16 != v9)
    {
      objc_enumerationMutation(states);
    }

    v11 = *(*(&v15 + 1) + 8 * v10);
    v12 = objc_msgSend_name(v11, v6, v7);
    if (objc_msgSend_isEqualToString_(v12, v13, name))
    {
      return v11;
    }

    if (v8 == ++v10)
    {
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(states, v6, &v15, v19, 16);
      if (v8)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)transitionFrom:(id)from to:(id)to
{
  if (!self->_transitionsEnabled)
  {
    return 0;
  }

  v7 = objc_msgSend_count(self->_transitions, a2, from);
  if (v7 < 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = (v7 & 0x7FFFFFFF) + 1;
  do
  {
    v12 = objc_msgSend_objectAtIndex_(self->_transitions, v8, v11 - 2);
    if (!objc_msgSend_from(v12, v13, v14) || (v16 = objc_msgSend_from(v12, v8, v15), v19 = objc_msgSend_name(v16, v17, v18), v22 = objc_msgSend_name(from, v20, v21), objc_msgSend_isEqualToString_(v19, v23, v22)))
    {
      if (!objc_msgSend_to(v12, v8, v15) || (v25 = objc_msgSend_to(v12, v8, v24), v28 = objc_msgSend_name(v25, v26, v27), v31 = objc_msgSend_name(to, v29, v30), objc_msgSend_isEqualToString_(v28, v32, v31)))
      {
        v35 = objc_msgSend_to(v12, v8, v24) ? 2 : 1;
        v36 = objc_msgSend_from(v12, v33, v34) ? v35 + 1 : v35;
        if (v36 > v9)
        {
          v10 = v12;
          v9 = v36;
          if (v36 == 3)
          {
            break;
          }
        }
      }
    }

    --v11;
    v12 = v10;
  }

  while (v11 > 1);
  return v12;
}

+ (void)beginTransition:(id)transition
{
  if (transition)
  {
    objc_msgSend_begin(VFXTransaction, a2, transition);
    objc_msgSend_duration(transition, v4, v5);
    objc_msgSend_setAnimationDuration_(VFXTransaction, v6, v7);
    v10 = objc_msgSend_timingFunction(transition, v8, v9);
    objc_msgSend_setTimingFunction_(VFXTransaction, v11, v10);
    objc_msgSend_beginTime(transition, v12, v13);

    objc_msgSend_setBeginTime_(VFXTransaction, v14, v15);
  }
}

+ (void)commitTransition:(id)transition
{
  if (transition)
  {
    objc_msgSend_commit(VFXTransaction, a2, transition);
  }
}

- (void)addReverseItem:(id)item
{
  if (!objc_msgSend_itemMatching_(self->_reverseActiveState, a2, item))
  {
    reverseActiveState = self->_reverseActiveState;

    objc_msgSend_addStateItem_(reverseActiveState, v5, item);
  }
}

- (void)setActiveState:(id)state
{
  if (self->_activeState != state)
  {
    v19 = self->_reverseActiveState;
    reverseActiveState = self->_reverseActiveState;
    if (reverseActiveState)
    {
      v8 = objc_msgSend_transitionFrom_to_(self, v6, reverseActiveState, state);
      objc_msgSend_beginTransition_(VFXStateManager, v9, v8);
      objc_msgSend_applyFrom_reverse_transition_(self->_reverseActiveState, v10, state, 1, v8);
      objc_msgSend_commitTransition_(VFXStateManager, v11, v8);

      self->_reverseActiveState = 0;
    }

    self->_activeState = state;
    self->_reverseActiveState = objc_msgSend_makeReverseStates(state, v12, v13);
    v15 = objc_msgSend_transitionFrom_to_(self, v14, v19, self->_activeState);
    objc_msgSend_beginTransition_(VFXStateManager, v16, v15);
    objc_msgSend_applyFrom_reverse_transition_(self->_activeState, v17, v19, 0, v15);
    objc_msgSend_commitTransition_(VFXStateManager, v18, v15);
  }
}

- (VFXStateManager)initWithCoder:(id)coder
{
  v30 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = VFXStateManager;
  v4 = [(VFXStateManager *)&v28 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v6, v5, @"states");
    v4->_states = objc_msgSend_mutableCopy(v7, v8, v9);
    v10 = objc_opt_class();
    v12 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v11, v10, @"transitions");
    v15 = objc_msgSend_mutableCopy(v12, v13, v14);
    v4->_transitions = v15;
    if (!v15)
    {
      v4->_transitions = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    states = v4->_states;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(states, v16, &v24, v29, 16);
    if (v18)
    {
      v20 = v18;
      v21 = *v25;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(states);
          }

          objc_msgSend_setStateManager_(*(*(&v24 + 1) + 8 * i), v19, v4);
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(states, v19, &v24, v29, 16);
      }

      while (v20);
    }

    v4->_transitionsEnabled = 1;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_states, @"states");
  transitions = self->_transitions;

  objc_msgSend_encodeObject_forKey_(coder, v5, transitions, @"transitions");
}

@end