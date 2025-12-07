@interface __NSArrayI
- (id)objectAtIndex:(unint64_t)index;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects range:(_NSRange)range;
@end

@implementation __NSArrayI

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  used = self->used;
  if (used)
  {
    p_list = &self->list;
    do
    {
      if ((*p_list & 0x8000000000000000) == 0)
      {
      }

      ++p_list;
      --used;
    }

    while (used);
  }

  v5.receiver = self;
  v5.super_class = __NSArrayI;
  [(__NSArrayI *)&v5 dealloc];
}

- (id)objectAtIndex:(unint64_t)index
{
  used = self->used;
  if (used <= index)
  {
    __boundsFail(index, used);
  }

  return *(&self->list + index);
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
    *(v12 + 4) = "[__NSArrayI getObjects:range:]";
    *(v12 + 12) = 2048;
    *(v12 + 14) = length;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSArrayI getObjects:range:]", length);
    goto LABEL_21;
  }

  if (range.length >> 61)
  {
    v14 = range.length;
    v10 = _os_log_pack_size();
    v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v11, v10, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v28, v29);
    *v15 = 136315394;
    *(v15 + 4) = "[__NSArrayI getObjects:range:]";
    *(v15 + 12) = 2048;
    *(v15 + 14) = v14;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSArrayI getObjects:range:]", v14);
LABEL_21:
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v10];
    objc_exception_throw(v16);
  }

  used = self->used;
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
      v26 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v24, "[__NSArrayI getObjects:range:]", location, v18, v25);
      v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v26, "[__NSArrayI getObjects:range:]", location, v18, v25);
    }

    else
    {
      v21 = _os_log_pack_fill(v20, v19, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v28, v29, v30);
      v22 = __os_log_helper_1_2_3_8_32_8_0_8_0(v21, "[__NSArrayI getObjects:range:]", location, v18);
      v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v22, "[__NSArrayI getObjects:range:]", location, v18);
    }

    v27 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v20, v19];
    objc_exception_throw(v27);
  }

  v5 = (&self->list + range.location);
  if (range.length <= 4)
  {
    if (range.length > 2)
    {
      if (range.length != 3)
      {
        v6 = *v5;
        v5 = (&self[1].super.super.isa + range.location);
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
  v15 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v7 = _os_log_pack_size();
    v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = _os_log_pack_fill(v8, v7, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v14, v15);
    *v9 = 136315394;
    *(v9 + 4) = "[__NSArrayI countByEnumeratingWithState:objects:count:]";
    *(v9 + 12) = 2048;
    *(v9 + 14) = count;
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSArrayI countByEnumeratingWithState:objects:count:]", count);
    goto LABEL_10;
  }

  if (count >> 61)
  {
    v7 = _os_log_pack_size();
    v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v8, v7, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v14, v15);
    *v12 = 136315394;
    *(v12 + 4) = "[__NSArrayI countByEnumeratingWithState:objects:count:]";
    *(v12 + 12) = 2048;
    *(v12 + 14) = count;
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSArrayI countByEnumeratingWithState:objects:count:]", count);
LABEL_10:
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v8, v7];
    objc_exception_throw(v13);
  }

  if (state->var0)
  {
    return 0;
  }

  state->var0 = -1;
  state->var1 = &self->list;
  state->var2 = &countByEnumeratingWithState_objects_count__const_mu_6;
  return self->used;
}

- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v21[6] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v13 = _os_log_pack_size();
    v16 = &v21[-1] - ((MEMORY[0x1EEE9AC00](v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill(v16, v13, 0, &dword_1830E6000, "*** %s: block cannot be nil", v20);
    *v17 = 136315138;
    *(v17 + 4) = "[__NSArrayI enumerateObjectsWithOptions:usingBlock:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSArrayI enumerateObjectsWithOptions:usingBlock:]");
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:v16, v13];
    objc_exception_throw(v19);
  }

  optionsCopy = options;
  p_used = &self->used;
  used = self->used;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __53____NSArrayI_enumerateObjectsWithOptions_usingBlock___block_invoke;
  v21[3] = &unk_1E6A55E70;
  v21[4] = self;
  v21[5] = block;
  if ((__NSCollectionHandleConcurrentEnumerationIfSpecified(optionsCopy, 1, used, v21) & 1) == 0)
  {
    if ((optionsCopy & 2) != 0)
    {
      HIBYTE(v20) = 0;
      v10 = *p_used;
      do
      {
        if (!v10)
        {
          break;
        }

        v11 = v10 - 1;
        v12 = _CFAutoreleasePoolPush();
        __NSARRAY_IS_CALLING_OUT_TO_A_BLOCK__(block);
        _CFAutoreleasePoolPop(v12);
        v10 = v11;
      }

      while (HIBYTE(v20) != 1);
    }

    else
    {
      HIBYTE(v20) = 0;
      if (*p_used)
      {
        v8 = 0;
        do
        {
          v9 = _CFAutoreleasePoolPush();
          __NSARRAY_IS_CALLING_OUT_TO_A_BLOCK__(block);
          _CFAutoreleasePoolPop(v9);
          if (HIBYTE(v20) == 1)
          {
            break;
          }

          ++v8;
        }

        while (v8 < *p_used);
      }
    }
  }
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  used = self->used;
  if (used <= subscript)
  {
    __boundsFail(subscript, used);
  }

  return *(&self->list + subscript);
}

@end