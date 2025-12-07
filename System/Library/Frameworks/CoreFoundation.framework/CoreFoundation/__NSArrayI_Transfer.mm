@interface __NSArrayI_Transfer
- (id)objectAtIndex:(unint64_t)index;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects range:(_NSRange)range;
@end

@implementation __NSArrayI_Transfer

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  list = self->_list;
  used = self->_used;
  if (used)
  {
    do
    {
      if ((*list & 0x8000000000000000) == 0)
      {
      }

      ++list;
      --used;
    }

    while (used);
    list = self->_list;
  }

  free(list);
  v5.receiver = self;
  v5.super_class = __NSArrayI_Transfer;
  [(__NSArrayI_Transfer *)&v5 dealloc];
}

- (id)objectAtIndex:(unint64_t)index
{
  v15 = *MEMORY[0x1E69E9840];
  used = self->_used;
  if (used <= index)
  {
    v6 = _os_log_pack_size();
    v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (used)
    {
      v10 = _os_log_pack_fill(v7, v6, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v14, v15, v16);
      v11 = used - 1;
      v12 = __os_log_helper_1_2_3_8_32_8_0_8_0(v10, "[__NSArrayI_Transfer objectAtIndex:]", index, v11);
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v12, "[__NSArrayI_Transfer objectAtIndex:]", index, v11);
    }

    else
    {
      v8 = _os_log_pack_fill(v7, v6, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v14, v15);
      *v8 = 136315394;
      *(v8 + 4) = "[__NSArrayI_Transfer objectAtIndex:]";
      *(v8 + 12) = 2048;
      *(v8 + 14) = index;
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[__NSArrayI_Transfer objectAtIndex:]", index);
    }

    v13 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v7, v6];
    objc_exception_throw(v13);
  }

  return self->_list[index];
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  v29 = *MEMORY[0x1E69E9840];
  if (!objects && range.length)
  {
    length = range.length;
    v10 = _os_log_pack_size();
    v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v11, v10, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v28, v29);
    *v12 = 136315394;
    *(v12 + 4) = "[__NSArrayI_Transfer getObjects:range:]";
    *(v12 + 12) = 2048;
    *(v12 + 14) = length;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSArrayI_Transfer getObjects:range:]", length);
    goto LABEL_21;
  }

  if (range.length >> 61)
  {
    v14 = range.length;
    v10 = _os_log_pack_size();
    v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v11, v10, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v28, v29);
    *v15 = 136315394;
    *(v15 + 4) = "[__NSArrayI_Transfer getObjects:range:]";
    *(v15 + 12) = 2048;
    *(v15 + 14) = v14;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSArrayI_Transfer getObjects:range:]", v14);
LABEL_21:
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v10];
    objc_exception_throw(v16);
  }

  used = self->_used;
  if ((range.location & 0x8000000000000000) != 0 || used < range.location + range.length)
  {
    location = range.location;
    v18 = range.length;
    v19 = _os_log_pack_size();
    v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (used)
    {
      v24 = _os_log_pack_fill(v20, v19, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v28, v29, v30, v31);
      v25 = used - 1;
      v26 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v24, "[__NSArrayI_Transfer getObjects:range:]", location, v18, v25);
      v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v26, "[__NSArrayI_Transfer getObjects:range:]", location, v18, v25);
    }

    else
    {
      v21 = _os_log_pack_fill(v20, v19, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v28, v29, v30);
      v22 = __os_log_helper_1_2_3_8_32_8_0_8_0(v21, "[__NSArrayI_Transfer getObjects:range:]", location, v18);
      v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v22, "[__NSArrayI_Transfer getObjects:range:]", location, v18);
    }

    v27 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v20, v19];
    objc_exception_throw(v27);
  }

  v5 = &self->_list[range.location];
  if (range.length <= 4)
  {
    if (range.length > 2)
    {
      if (range.length != 3)
      {
        v6 = *v5++;
        *objects++ = v6;
      }

      v7 = *v5++;
      *objects++ = v7;
    }

    else
    {
      if (range.length == 1)
      {
LABEL_18:
        *objects = *v5;
        return;
      }

      if (range.length != 2)
      {
        return;
      }
    }

    v8 = *v5++;
    *objects++ = v8;
    goto LABEL_18;
  }

  memmove(objects, v5, 8 * range.length);
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v16 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v8 = _os_log_pack_size();
    v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = _os_log_pack_fill(v9, v8, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v15, v16);
    *v10 = 136315394;
    *(v10 + 4) = "[__NSArrayI_Transfer countByEnumeratingWithState:objects:count:]";
    *(v10 + 12) = 2048;
    *(v10 + 14) = count;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSArrayI_Transfer countByEnumeratingWithState:objects:count:]", count);
    goto LABEL_10;
  }

  if (count >> 61)
  {
    v8 = _os_log_pack_size();
    v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill(v9, v8, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v15, v16);
    *v13 = 136315394;
    *(v13 + 4) = "[__NSArrayI_Transfer countByEnumeratingWithState:objects:count:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = count;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSArrayI_Transfer countByEnumeratingWithState:objects:count:]", count);
LABEL_10:
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v9, v8];
    objc_exception_throw(v14);
  }

  if (state->var0)
  {
    return 0;
  }

  state->var2 = &countByEnumeratingWithState_objects_count__const_mu_45;
  list = self->_list;
  state->var0 = -1;
  state->var1 = list;
  return self->_used;
}

- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v20[6] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v12 = _os_log_pack_size();
    v15 = &v20[-1] - ((MEMORY[0x1EEE9AC00](v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v15, v12, 0, &dword_1830E6000, "*** %s: block cannot be nil", v19);
    *v16 = 136315138;
    *(v16 + 4) = "[__NSArrayI_Transfer enumerateObjectsWithOptions:usingBlock:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSArrayI_Transfer enumerateObjectsWithOptions:usingBlock:]");
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v12];
    objc_exception_throw(v18);
  }

  optionsCopy = options;
  used = self->_used;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __62____NSArrayI_Transfer_enumerateObjectsWithOptions_usingBlock___block_invoke;
  v20[3] = &unk_1E6A55E70;
  v20[4] = self;
  v20[5] = block;
  if ((__NSCollectionHandleConcurrentEnumerationIfSpecified(optionsCopy, 1, used, v20) & 1) == 0)
  {
    if ((optionsCopy & 2) != 0)
    {
      HIBYTE(v19) = 0;
      v10 = self->_used - 1;
      do
      {
        if (v10 == -1)
        {
          break;
        }

        v11 = _CFAutoreleasePoolPush();
        __NSARRAY_IS_CALLING_OUT_TO_A_BLOCK__(block);
        _CFAutoreleasePoolPop(v11);
        --v10;
      }

      while (HIBYTE(v19) != 1);
    }

    else
    {
      HIBYTE(v19) = 0;
      if (self->_used)
      {
        v8 = 0;
        do
        {
          v9 = _CFAutoreleasePoolPush();
          __NSARRAY_IS_CALLING_OUT_TO_A_BLOCK__(block);
          _CFAutoreleasePoolPop(v9);
          if (HIBYTE(v19) == 1)
          {
            break;
          }

          ++v8;
        }

        while (v8 < self->_used);
      }
    }
  }
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  v15 = *MEMORY[0x1E69E9840];
  used = self->_used;
  if (used <= subscript)
  {
    v6 = _os_log_pack_size();
    v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (used)
    {
      v10 = _os_log_pack_fill(v7, v6, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v14, v15, v16);
      v11 = used - 1;
      v12 = __os_log_helper_1_2_3_8_32_8_0_8_0(v10, "[__NSArrayI_Transfer objectAtIndexedSubscript:]", subscript, v11);
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v12, "[__NSArrayI_Transfer objectAtIndexedSubscript:]", subscript, v11);
    }

    else
    {
      v8 = _os_log_pack_fill(v7, v6, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v14, v15);
      *v8 = 136315394;
      *(v8 + 4) = "[__NSArrayI_Transfer objectAtIndexedSubscript:]";
      *(v8 + 12) = 2048;
      *(v8 + 14) = subscript;
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[__NSArrayI_Transfer objectAtIndexedSubscript:]", subscript);
    }

    v13 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v7, v6];
    objc_exception_throw(v13);
  }

  return self->_list[subscript];
}

@end