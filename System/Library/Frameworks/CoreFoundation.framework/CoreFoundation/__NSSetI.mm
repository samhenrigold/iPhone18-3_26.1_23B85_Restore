@interface __NSSetI
- (BOOL)containsObject:(id)object;
- (double)clumpingFactor;
- (id)member:(id)member;
- (id)objectEnumerator;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)countForObject:(id)object;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects count:(unint64_t)count;
@end

@implementation __NSSetI

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  if (__NSSet0__ == self)
  {
    __break(1u);
  }

  v3 = self->_used[7];
  v4 = *(__NSSetSizes + ((2 * v3) & 0x1F8));
  self->_used[7] = v3 & 3;
  *self->_used &= 0xFC00000000000000;
  if (v3 >= 4)
  {
    v5 = (self + 16);
    if (v4 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4;
    }

    do
    {
      if (*v5 >= 1)
      {
      }

      ++v5;
      --v6;
    }

    while (v6);
  }

  v7.receiver = self;
  v7.super_class = __NSSetI;
  [(__NSSetI *)&v7 dealloc];
}

- (id)member:(id)member
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v3 = self->_used[7];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __19____NSSetI_member___block_invoke;
  v17 = &unk_1E6D823E0;
  v18 = &v19;
  if (v3 >= 4)
  {
    v5 = *(__NSSetSizes + ((2 * v3) & 0x1F8));
    v6 = self + 16;
    v7 = [member hash] % v5;
    if (v5 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v5;
    }

    while (1)
    {
      v9 = *&v6[8 * v7];
      v10 = !v9 || v9 == member;
      if (v10 || ([v9 isEqual:member] & 1) != 0)
      {
        break;
      }

      if (v7 + 1 >= v5)
      {
        v11 = v5;
      }

      else
      {
        v11 = 0;
      }

      v7 = v7 + 1 - v11;
      if (!--v8)
      {
        goto LABEL_17;
      }
    }

    if (v7 < v5)
    {
      v16(&v14, *&v6[8 * v7]);
    }
  }

LABEL_17:
  v12 = v20[5];
  _Block_object_dispose(&v19, 8);
  return v12;
}

- (id)objectEnumerator
{
  v2 = [objc_allocWithZone(__NSFastEnumerationEnumerator) initWithObject:self];

  return v2;
}

- (double)clumpingFactor
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *self->_used;
  if ((v3 & 0x3FFFFFFFFFFFFFELL) != 0)
  {
    v4 = v3 & 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
  }

  v5 = (MEMORY[0x1EEE9AC00])(v4, a2);
  v8 = &v22 - v7;
  v22 = 0;
  if (v6 >= 0x101)
  {
    v8 = _CFCreateArrayStorage(v5, 0, &v22);
    v6 = *self->_used & 0x3FFFFFFFFFFFFFFLL;
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  [(__NSSetI *)self getObjects:v8 count:v6, v22, v23];
  v10 = *self->_used & 0x3FFFFFFFFFFFFFFLL;
  v11 = 0.0;
  if (v10 >= 2)
  {
    v12 = *(__NSSetSizes + ((2 * self->_used[7]) & 0x1F8));
    v13 = malloc_type_malloc(8 * v10 + 8, 0x100004000313F17uLL);
    for (i = 0; i != v10; ++i)
    {
      v13[i] = [*&v8[i * 8] hash] % v12;
    }

    qsort(v13, v10, 8uLL, _compare_clumpiness_0);
    v13[v10] = *v13 + v12;
    v15 = v10;
    v16 = v12 / v10;
    v17 = v13 + 1;
    v18 = 0.0;
    do
    {
      v19 = *v17 - *(v17 - 1);
      if (v16 <= v19)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v16 - v19;
      }

      v18 = v18 + v20 * v20;
      ++v17;
      --v10;
    }

    while (v10);
    free(v13);
    v11 = v18 * v15 * v15 / (v12 * v12) / (v15 + -1.0);
  }

  free(v9);
  return v11;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v20 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v12 = _os_log_pack_size();
    v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v19, v20);
    *v14 = 136315394;
    *(v14 + 4) = "[__NSSetI countByEnumeratingWithState:objects:count:]";
    *(v14 + 12) = 2048;
    *(v14 + 14) = count;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSSetI countByEnumeratingWithState:objects:count:]", count);
    goto LABEL_18;
  }

  if (count >> 61)
  {
    v12 = _os_log_pack_size();
    v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill(v13, v12, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v19, v20);
    *v17 = 136315394;
    *(v17 + 4) = "[__NSSetI countByEnumeratingWithState:objects:count:]";
    *(v17 + 12) = 2048;
    *(v17 + 14) = count;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSSetI countByEnumeratingWithState:objects:count:]", count);
LABEL_18:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v18);
  }

  v6 = *(__NSSetSizes + ((2 * self->_used[7]) & 0x1F8));
  var0 = state->var0;
  if (!state->var0)
  {
    state->var2 = &countByEnumeratingWithState_objects_count__const_mu_3;
  }

  if (v6 <= var0)
  {
    return 0;
  }

  state->var1 = objects;
  if (!count)
  {
    return 0;
  }

  result = 0;
  v9 = self + 16;
  do
  {
    v10 = *&v9[8 * var0++];
    state->var0 = var0;
    if (v10)
    {
      objects[result++] = v10;
      var0 = state->var0;
    }
  }

  while (var0 < v6 && result < count);
  return result;
}

- (BOOL)containsObject:(id)object
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v3 = self->_used[7];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __27____NSSetI_containsObject___block_invoke;
  v17 = &unk_1E6D823E0;
  v18 = &v19;
  if (v3 >= 4)
  {
    v5 = *(__NSSetSizes + ((2 * v3) & 0x1F8));
    v6 = self + 16;
    v7 = [object hash] % v5;
    if (v5 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v5;
    }

    while (1)
    {
      v9 = *&v6[8 * v7];
      v10 = !v9 || v9 == object;
      if (v10 || ([v9 isEqual:object] & 1) != 0)
      {
        break;
      }

      if (v7 + 1 >= v5)
      {
        v11 = v5;
      }

      else
      {
        v11 = 0;
      }

      v7 = v7 + 1 - v11;
      if (!--v8)
      {
        goto LABEL_17;
      }
    }

    if (v7 < v5)
    {
      v16(&v14, *&v6[8 * v7]);
    }
  }

LABEL_17:
  v12 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  return v12;
}

- (unint64_t)countForObject:(id)object
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v3 = self->_used[7];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __27____NSSetI_countForObject___block_invoke;
  v17 = &unk_1E6D823E0;
  v18 = &v19;
  if (v3 >= 4)
  {
    v5 = *(__NSSetSizes + ((2 * v3) & 0x1F8));
    v6 = self + 16;
    v7 = [object hash] % v5;
    if (v5 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v5;
    }

    while (1)
    {
      v9 = *&v6[8 * v7];
      v10 = !v9 || v9 == object;
      if (v10 || ([v9 isEqual:object] & 1) != 0)
      {
        break;
      }

      if (v7 + 1 >= v5)
      {
        v11 = v5;
      }

      else
      {
        v11 = 0;
      }

      v7 = v7 + 1 - v11;
      if (!--v8)
      {
        goto LABEL_17;
      }
    }

    if (v7 < v5)
    {
      v16(&v14, *&v6[8 * v7]);
    }
  }

LABEL_17:
  v12 = v20[3];
  _Block_object_dispose(&v19, 8);
  return v12;
}

- (void)getObjects:(id *)objects count:(unint64_t)count
{
  v18 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v10 = _os_log_pack_size();
    v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v11, v10, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v17, v18);
    *v12 = 136315394;
    *(v12 + 4) = "[__NSSetI getObjects:count:]";
    *(v12 + 12) = 2048;
    *(v12 + 14) = count;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSSetI getObjects:count:]", count);
    goto LABEL_18;
  }

  if (count >> 61)
  {
    v10 = _os_log_pack_size();
    v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v11, v10, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v17, v18);
    *v15 = 136315394;
    *(v15 + 4) = "[__NSSetI getObjects:count:]";
    *(v15 + 12) = 2048;
    *(v15 + 14) = count;
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSSetI getObjects:count:]", count);
LABEL_18:
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v10];
    objc_exception_throw(v16);
  }

  countCopy = *self->_used & 0x3FFFFFFFFFFFFFFLL;
  if (countCopy >= count)
  {
    countCopy = count;
  }

  if (self->_used[7] >= 4u && countCopy != 0)
  {
    v6 = *(__NSSetSizes + ((2 * self->_used[7]) & 0x1F8));
    v7 = (self + 16);
    v8 = 1;
    do
    {
      if (*v7)
      {
        *objects++ = *v7;
        --countCopy;
      }

      if (v8 >= v6)
      {
        break;
      }

      ++v8;
      ++v7;
    }

    while (countCopy);
  }
}

- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill(block - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11, 0, &dword_1830E6000, "*** %s: block cannot be nil", block[0]);
    *v12 = 136315138;
    *(v12 + 4) = "[__NSSetI enumerateObjectsWithOptions:usingBlock:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSSetI enumerateObjectsWithOptions:usingBlock:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:block - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11];
    objc_exception_throw(v14);
  }

  optionsCopy = options;
  v7 = self->_used[7];
  v8 = *(__NSSetSizes + ((2 * v7) & 0x1F8));
  if ((options & 1) != 0 && __CFActiveProcessorCount() < 2)
  {
    optionsCopy = 0;
  }

  if (optionsCopy)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v17 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51____NSSetI_enumerateObjectsWithOptions_usingBlock___block_invoke;
    block[3] = &unk_1E6D82408;
    block[5] = block;
    block[6] = v16;
    block[4] = self;
    dispatch_apply(v8, 0, block);
    _Block_object_dispose(v16, 8);
  }

  else
  {
    LOBYTE(v16[0]) = 0;
    if (v7 >= 4u)
    {
      v9 = 0;
      do
      {
        if (*&self->_used[8 * v9 + 8])
        {
          v10 = _CFAutoreleasePoolPush();
          __NSSET_IS_CALLING_OUT_TO_A_BLOCK__(block);
          _CFAutoreleasePoolPop(v10);
        }

        ++v9;
      }

      while (v9 < v8);
    }
  }
}

@end