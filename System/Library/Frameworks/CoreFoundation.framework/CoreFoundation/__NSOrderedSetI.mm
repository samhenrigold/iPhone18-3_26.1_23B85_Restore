@interface __NSOrderedSetI
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)indexOfObject:(id)object;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects range:(_NSRange)range;
@end

@implementation __NSOrderedSetI

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  used = self->_used;
  v4 = *self->_used | ((*&self->_used[4] | (self->_used[6] << 16)) << 32);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *&self->_used[8 * i + 8];
      if (v6 >= 1)
      {

        v4 = *used | ((*(used + 2) | (used[6] << 16)) << 32);
      }
    }
  }

  v7.receiver = self;
  v7.super_class = __NSOrderedSetI;
  [(__NSOrderedSetI *)&v7 dealloc];
}

- (unint64_t)indexOfObject:(id)object
{
  if (!object)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = self->_used[7];
  if (v4 >= 4)
  {
    v6 = self->_used[6];
    v7 = *&self->_used[4];
    v8 = *(__NSOrderedSetSizes + ((2 * v4) & 0x1F8));
    v9 = *self->_used;
    v10 = self->_used[7] & 3;
    v11 = [object hash];
    if (v10 != 3)
    {
      v13 = self + 16;
      v14 = &self->_used[((8 * v9) | ((v7 | (v6 << 16)) << 35)) + 8];
      v15 = v13 - 8;
      v16 = v11 % v8;
      if (v8 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v8;
      }

      do
      {
        if (v10 == 2)
        {
          v18 = *&v14[4 * v16];
        }

        else
        {
          v18 = v10 == 1 ? *&v14[2 * v16] : v14[v16];
        }

        if (!v18)
        {
          break;
        }

        v19 = *&v15[8 * v18];
        if (v19 == object || ([v19 isEqual:object] & 1) != 0)
        {
          return v18 - 1;
        }

        if (v16 + 1 >= v8)
        {
          v20 = v8;
        }

        else
        {
          v20 = 0;
        }

        v16 = v16 + 1 - v20;
        --v17;
      }

      while (v17);
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)objectAtIndex:(unint64_t)index
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *self->_used | ((*&self->_used[4] | (self->_used[6] << 16)) << 32);
  if (v3 <= index)
  {
    v6 = _os_log_pack_size();
    v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v3)
    {
      v10 = _os_log_pack_fill(v7, v6, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v14, v15, v16);
      v11 = v3 - 1;
      v12 = __os_log_helper_1_2_3_8_32_8_0_8_0(v10, "[__NSOrderedSetI objectAtIndex:]", index, v11);
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v12, "[__NSOrderedSetI objectAtIndex:]", index, v11);
    }

    else
    {
      v8 = _os_log_pack_fill(v7, v6, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty ordered set", v14, v15);
      *v8 = 136315394;
      *(v8 + 4) = "[__NSOrderedSetI objectAtIndex:]";
      *(v8 + 12) = 2048;
      *(v8 + 14) = index;
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[__NSOrderedSetI objectAtIndex:]", index);
    }

    v13 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v7, v6];
    objc_exception_throw(v13);
  }

  return *&self->_used[8 * index + 8];
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v25 = *MEMORY[0x1E69E9840];
  v8 = [(__NSOrderedSetI *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v8 < location + length)
  {
    if (v8)
    {
      v20 = v8;
      v13 = _os_log_pack_size();
      v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = _os_log_pack_fill(v14, v13, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v24, v25, v26, v27);
      v22 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v21, "[__NSOrderedSetI getObjects:range:]", location, length, --v20);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v22, "[__NSOrderedSetI getObjects:range:]", location, length, v20);
    }

    else
    {
      v13 = _os_log_pack_size();
      v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill(v14, v13, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v24, v25, v26);
      v16 = __os_log_helper_1_2_3_8_32_8_0_8_0(v15, "[__NSOrderedSetI getObjects:range:]", location, length);
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v16, "[__NSOrderedSetI getObjects:range:]", location, length);
    }

    v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v14, v13];
    objc_exception_throw(v23);
  }

  if (!objects && length)
  {
    v9 = _os_log_pack_size();
    v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = _os_log_pack_fill(v10, v9, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v24, v25);
    *v11 = 136315394;
    *(v11 + 4) = "[__NSOrderedSetI getObjects:range:]";
    *(v11 + 12) = 2048;
    *(v11 + 14) = length;
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSOrderedSetI getObjects:range:]", length);
    goto LABEL_14;
  }

  if (length >> 61)
  {
    v9 = _os_log_pack_size();
    v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill(v10, v9, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v24, v25);
    *v18 = 136315394;
    *(v18 + 4) = "[__NSOrderedSetI getObjects:range:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = length;
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSOrderedSetI getObjects:range:]", length);
LABEL_14:
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v10, v9];
    objc_exception_throw(v19);
  }

  memmove(objects, &self->_used[8 * location + 8], 8 * length);
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
    *(v9 + 4) = "[__NSOrderedSetI countByEnumeratingWithState:objects:count:]";
    *(v9 + 12) = 2048;
    *(v9 + 14) = count;
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSOrderedSetI countByEnumeratingWithState:objects:count:]", count);
    goto LABEL_10;
  }

  if (count >> 61)
  {
    v7 = _os_log_pack_size();
    v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v8, v7, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v14, v15);
    *v12 = 136315394;
    *(v12 + 4) = "[__NSOrderedSetI countByEnumeratingWithState:objects:count:]";
    *(v12 + 12) = 2048;
    *(v12 + 14) = count;
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSOrderedSetI countByEnumeratingWithState:objects:count:]", count);
LABEL_10:
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v8, v7];
    objc_exception_throw(v13);
  }

  if (state->var0)
  {
    return 0;
  }

  state->var0 = -1;
  state->var1 = (self + 16);
  state->var2 = &countByEnumeratingWithState_objects_count__const_mu;
  return *self->_used | ((*&self->_used[4] | (self->_used[6] << 16)) << 32);
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
    *(v16 + 4) = "[__NSOrderedSetI enumerateObjectsWithOptions:usingBlock:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSOrderedSetI enumerateObjectsWithOptions:usingBlock:]");
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v12];
    objc_exception_throw(v18);
  }

  optionsCopy = options;
  v7 = *self->_used | ((*&self->_used[4] | (self->_used[6] << 16)) << 32);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __58____NSOrderedSetI_enumerateObjectsWithOptions_usingBlock___block_invoke;
  v20[3] = &unk_1E6A55E70;
  v20[4] = self;
  v20[5] = block;
  if ((__NSCollectionHandleConcurrentEnumerationIfSpecified(optionsCopy, 1, v7, v20) & 1) == 0)
  {
    if ((optionsCopy & 2) != 0)
    {
      HIBYTE(v19) = 0;
      v10 = (*self->_used | ((*&self->_used[4] | (self->_used[6] << 16)) << 32)) - 1;
      do
      {
        if (v10 == -1)
        {
          break;
        }

        v11 = _CFAutoreleasePoolPush();
        __NSORDEREDSET_IS_CALLING_OUT_TO_A_BLOCK__(block);
        _CFAutoreleasePoolPop(v11);
        --v10;
      }

      while (HIBYTE(v19) != 1);
    }

    else
    {
      HIBYTE(v19) = 0;
      if (*self->_used | ((*&self->_used[4] | (self->_used[6] << 16)) << 32))
      {
        v8 = 0;
        do
        {
          v9 = _CFAutoreleasePoolPush();
          __NSORDEREDSET_IS_CALLING_OUT_TO_A_BLOCK__(block);
          _CFAutoreleasePoolPop(v9);
          if (HIBYTE(v19) == 1)
          {
            break;
          }

          ++v8;
        }

        while (v8 < (*self->_used | ((*&self->_used[4] | (self->_used[6] << 16)) << 32)));
      }
    }
  }
}

@end