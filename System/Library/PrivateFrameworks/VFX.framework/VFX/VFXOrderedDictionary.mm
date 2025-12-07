@interface VFXOrderedDictionary
- (id)allKeys;
- (id)copy;
- (id)description;
- (id)objectAtIndex:(int64_t)index;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)_setupFrom:(id)from;
- (void)applyBlock:(id)block;
- (void)applyFunction:(void *)function withContext:(void *)context;
- (void)dealloc;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation VFXOrderedDictionary

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXOrderedDictionary;
  [(VFXOrderedDictionary *)&v3 dealloc];
}

- (void)setObject:(id)object forKey:(id)key
{
  if (object)
  {
    objectCopy = object;
    objc_msgSend_removeObjectForKey_(self, v7, key);
    keys = self->_keys;
    if (!keys)
    {
      self->_keys = objc_alloc_init(MEMORY[0x1E695DF70]);
      self->_keyValues = objc_alloc_init(MEMORY[0x1E695DF90]);
      keys = self->_keys;
    }

    objc_msgSend_addObject_(keys, v8, key);
    objc_msgSend_setObject_forKeyedSubscript_(self->_keyValues, v10, object, key);
  }

  else
  {

    objc_msgSend_removeObjectForKey_(self, a2, key);
  }
}

- (id)objectAtIndex:(int64_t)index
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(self->_keys, a2, index);
  keyValues = self->_keyValues;

  return objc_msgSend_objectForKeyedSubscript_(keyValues, v4, v5);
}

- (void)removeObjectForKey:(id)key
{
  if (objc_msgSend_objectForKey_(self->_keyValues, a2, key))
  {
    if (objc_msgSend_count(self->_keys, v5, v6) == 1)
    {

      objc_msgSend_removeAllObjects(self, v7, v8);
    }

    else
    {
      objc_msgSend_removeObject_(self->_keys, v7, key);
      keyValues = self->_keyValues;

      objc_msgSend_removeObjectForKey_(keyValues, v9, key);
    }
  }
}

- (id)allKeys
{
  v3 = objc_msgSend_copy(self->_keys, a2, v2);

  return v3;
}

- (void)applyFunction:(void *)function withContext:(void *)context
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  keys = self->_keys;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(keys, a2, &v15, v19, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(keys);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = objc_msgSend_objectForKeyedSubscript_(self->_keyValues, v9, v13);
        (function)(v13, v14, context);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(keys, v9, &v15, v19, 16);
    }

    while (v10);
  }
}

- (void)applyBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  keys = self->_keys;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(keys, a2, &v13, v17, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(keys);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = objc_msgSend_objectForKeyedSubscript_(self->_keyValues, v7, v11);
        (*(block + 2))(block, v11, v12);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(keys, v7, &v13, v17, 16);
    }

    while (v8);
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  var0 = state->var0;
  v10 = objc_msgSend_count(self->_keys, a2, state);
  if (v10 - var0 < count)
  {
    count = v10 - var0;
  }

  if (count)
  {
    v12 = var0;
    objectsCopy = objects;
    countCopy = count;
    do
    {
      v15 = objc_msgSend_objectAtIndexedSubscript_(self->_keys, v11, v12);
      *objectsCopy++ = objc_msgSend_objectForKeyedSubscript_(self->_keyValues, v16, v15);
      ++v12;
      --countCopy;
    }

    while (countCopy);
  }

  state->var0 = count + var0;
  state->var1 = objects;
  state->var2 = &state->var2;
  return count;
}

- (void)_setupFrom:(id)from
{
  v5 = objc_msgSend_dictionary(from, a2, from);
  self->_keyValues = objc_msgSend_mutableCopy(v5, v6, v7);
  v10 = objc_msgSend_keys(from, v8, v9);
  self->_keys = objc_msgSend_mutableCopy(v10, v11, v12);
}

- (id)copy
{
  v3 = objc_alloc_init(objc_opt_class());
  objc_msgSend__setupFrom_(v3, v4, self);
  return v3;
}

- (id)description
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@: %p\n{\n", v5, self);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  keys = self->_keys;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(keys, v9, &v19, v23, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(keys);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = objc_msgSend_objectForKeyedSubscript_(self->_keyValues, v11, v15);
        objc_msgSend_appendFormat_(v7, v17, @"    %@ = %@\n", v15, v16);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(keys, v11, &v19, v23, 16);
    }

    while (v12);
  }

  objc_msgSend_appendString_(v7, v11, @"}>");
  return v7;
}

@end