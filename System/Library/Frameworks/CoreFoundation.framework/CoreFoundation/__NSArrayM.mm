@interface __NSArrayM
- (id)allObjects;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopy;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)indexOfObjectIdenticalTo:(id)to;
- (void)_mutate;
- (void)addObject:(id)object;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)exchangeObjectAtIndex:(unint64_t)index withObjectAtIndex:(unint64_t)atIndex;
- (void)getObjects:(id *)objects range:(_NSRange)range;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)insertObjects:(const void *)objects count:(unint64_t)count atIndex:(unint64_t)index;
- (void)removeAllObjects;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)removeObjectsInRange:(_NSRange)range;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)replaceObjectsInRange:(_NSRange)range withObjects:(const void *)objects count:(unint64_t)count;
- (void)setObject:(id)object atIndex:(unint64_t)index;
- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript;
@end

@implementation __NSArrayM

- (void)_mutate
{
  v2 = atomic_load(&self->cow);
  p_storage = &self->storage;
  muts = self->storage.state.var0.muts;
  if (v2)
  {
    os_unfair_lock_lock(v2);
    if (!*(v2 + 6))
    {
      [__NSArrayM _mutate];
    }

    if (*(v2 + 6) != 1 || *(v2 + 4) != 0)
    {
      --*(v2 + 6);
      _cow_mutate_slow(self, v2, __NSArray_cowCallbacks);
    }

    os_unfair_lock_unlock(v2);
  }

  if (muts >> 9 < 0x7D)
  {
    v7 = muts + 1;
  }

  else
  {
    v7 = 0;
  }

  p_storage->state.var0.muts = v7;
}

- (unint64_t)count
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableArray);
  }

  return self->storage.state.var0.used;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->cow);
  if (v3)
  {
    os_unfair_lock_lock(v3);
    if (!*(v3 + 6))
    {
      [__NSArrayM dealloc];
    }

    v4 = *(v3 + 4);
    v5 = *(v3 + 6) - 1;
    *(v3 + 6) = v5;
    v6 = (v5 | v4);
    os_unfair_lock_unlock(v3);
    if (!v6)
    {
      __RELEASE_OBJECTS_IN_THE_ARRAY__(self, 1);
      free(v3);
    }
  }

  else
  {
    __RELEASE_OBJECTS_IN_THE_ARRAY__(self, 1);
  }

  v7.receiver = self;
  v7.super_class = __NSArrayM;
  [(__NSArrayM *)&v7 dealloc];
}

- (id)copy
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableArray);
  }

  return __NSArrayM_copy(self);
}

- (void)removeAllObjects
{
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableArray);
  }

  v4 = atomic_load(&self->cow);
  p_storage = &self->storage;
  muts = self->storage.state.var0.muts;
  if (muts >> 9 < 0x7D)
  {
    v7 = muts + 1;
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    os_unfair_lock_lock(v4);
    if (!*(v4 + 6))
    {
      [__NSArrayM removeAllObjects];
    }

    if (*(v4 + 6) != 1 || *(v4 + 4) != 0)
    {
      --*(v4 + 6);
      _cow_mutate_slow(self, v4, __NSArray_cowCallbacks);
    }

    os_unfair_lock_unlock(v4);
  }

  list = p_storage->list;
  var0 = p_storage->var0;
  v11 = p_storage->size - var0;
  used = p_storage->state.var0.used;
  if (v11 >= used)
  {
    v13 = used;
  }

  else
  {
    v13 = v11;
  }

  p_storage->state.var0.muts = v7;
  p_storage->state.var0.used = 0;
  p_storage->list = 0;
  *&p_storage->var0 = 0;
  if (list)
  {
    if (v13)
    {
      v14 = &list[var0];
      v15 = v13;
      do
      {
        if ((*v14 & 0x8000000000000000) == 0)
        {
        }

        ++v14;
        --v15;
      }

      while (v15);
    }

    if (used > v11)
    {
      if (used - v13 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = used - v13;
      }

      v17 = list;
      do
      {
        if ((*v17 & 0x8000000000000000) == 0)
        {
        }

        ++v17;
        --v16;
      }

      while (v16);
    }

    free(list);
  }
}

- (void)removeLastObject
{
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableArray);
  }

  v4 = [(__NSArrayM *)self count];
  if (_CFExecutableLinkedOnOrAfter(7uLL))
  {
    if (!v4)
    {
      return;
    }

    v5 = v4 - 1;
  }

  else if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = 0;
  }

  [(__NSArrayM *)self removeObjectAtIndex:v5];
}

- (id)mutableCopy
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableArray);
  }

  if (!atomic_load(&self->cow))
  {
    v5 = _cow_create(self, 1);
    v6 = 0;
    atomic_compare_exchange_strong(&self->cow, &v6, v5);
    if (v6)
    {
      free(v5);
    }
  }

  v7 = objc_opt_self();
  v8 = __CFAllocateObject(v7, 0);
  v9 = atomic_load(&self->cow);
  _cow_copy(self, 1, v9, __NSArray_cowCallbacks, v8, 1);
  return v8;
}

- (id)objectAtIndex:(unint64_t)index
{
  v21 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  used = self->storage.state.var0.used;
  if ((index & 0x8000000000000000) != 0 || used <= index)
  {
    v10 = _os_log_pack_size();
    v13 = &v20 - ((MEMORY[0x1EEE9AC00](v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    if (used)
    {
      v16 = _os_log_pack_fill(v13, v10, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v20, v21, v22);
      v17 = used - 1;
      v18 = __os_log_helper_1_2_3_8_32_8_0_8_0(v16, "[__NSArrayM objectAtIndex:]", index, v17);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v18, "[__NSArrayM objectAtIndex:]", index, v17);
    }

    else
    {
      v14 = _os_log_pack_fill(v13, v10, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v20, v21);
      *v14 = 136315394;
      *(v14 + 4) = "[__NSArrayM objectAtIndex:]";
      *(v14 + 12) = 2048;
      *(v14 + 14) = index;
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[__NSArrayM objectAtIndex:]", index);
    }

    v19 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v10];
    objc_exception_throw(v19);
  }

  size = self->storage.size;
  v8 = self->storage.var0 + index;
  if (size > v8)
  {
    size = 0;
  }

  return self->storage.list[v8 - size];
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v50 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  p_storage = &self->storage;
  used = self->storage.state.var0.used;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || location + length > used)
  {
    v34 = _os_log_pack_size();
    v37 = &v49 - ((MEMORY[0x1EEE9AC00](v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    if (used)
    {
      v45 = _os_log_pack_fill(v37, v34, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v49, v50, v51, v52);
      v46 = used - 1;
      v47 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v45, "[__NSArrayM getObjects:range:]", location, length, v46);
      v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v47, "[__NSArrayM getObjects:range:]", location, length, v46);
    }

    else
    {
      v38 = _os_log_pack_fill(v37, v34, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v49, v50, v51);
      v39 = __os_log_helper_1_2_3_8_32_8_0_8_0(v38, "[__NSArrayM getObjects:range:]", location, length);
      v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v39, "[__NSArrayM getObjects:range:]", location, length);
    }

    v48 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v40) osLogPack:0 size:v37, v34];
    objc_exception_throw(v48);
  }

  if (!objects && length)
  {
    v28 = _os_log_pack_size();
    v31 = &v49 - ((MEMORY[0x1EEE9AC00](v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = _os_log_pack_fill(v31, v28, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v49, v50);
    *v32 = 136315394;
    *(v32 + 4) = "[__NSArrayM getObjects:range:]";
    *(v32 + 12) = 2048;
    *(v32 + 14) = length;
    v33 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSArrayM getObjects:range:]", length);
    goto LABEL_45;
  }

  if (length >> 61)
  {
    v28 = _os_log_pack_size();
    v31 = &v49 - ((MEMORY[0x1EEE9AC00](v28, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = _os_log_pack_fill(v31, v28, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v49, v50);
    *v43 = 136315394;
    *(v43 + 4) = "[__NSArrayM getObjects:range:]";
    *(v43 + 12) = 2048;
    *(v43 + 14) = length;
    v33 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSArrayM getObjects:range:]", length);
LABEL_45:
    v44 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v33) osLogPack:0 size:v31, v28];
    objc_exception_throw(v44);
  }

  if (objects && length)
  {
    list = p_storage->list;
    size = p_storage->size;
    v13 = &p_storage->list[size];
    v14 = (&p_storage->list[p_storage->var0] + location);
    v15 = -size;
    if (v13 <= v14)
    {
      v16 = -size;
    }

    else
    {
      v16 = 0;
    }

    v17 = (v14 + 8 * v16);
    if (length > 2)
    {
      if (length == 3)
      {
LABEL_31:
        v23 = *v17;
        v22 = v17 + 1;
        *objects++ = v23;
        if (v13 <= v22)
        {
          v24 = v15;
        }

        else
        {
          v24 = 0;
        }

        v17 = &v22[v24];
        goto LABEL_35;
      }

      if (length == 4)
      {
LABEL_27:
        v20 = *v17;
        v19 = v17 + 1;
        *objects++ = v20;
        if (v13 <= v19)
        {
          v21 = v15;
        }

        else
        {
          v21 = 0;
        }

        v17 = &v19[v21];
        goto LABEL_31;
      }
    }

    else
    {
      if (length == 1)
      {
LABEL_39:
        *objects = *v17;
        return;
      }

      if (length == 2)
      {
LABEL_35:
        v26 = *v17;
        v25 = v17 + 1;
        *objects++ = v26;
        if (v13 <= v25)
        {
          v27 = v15;
        }

        else
        {
          v27 = 0;
        }

        v17 = &v25[v27];
        goto LABEL_39;
      }
    }

    if ((v13 - v17) >> 3 >= length)
    {
      LODWORD(v18) = length;
    }

    else
    {
      v18 = (v13 - v17) >> 3;
    }

    if (v18)
    {
      memmove(objects, v17, 8 * v18);
    }

    if (length != v18)
    {
      memmove(&objects[v18], list, 8 * (length - v18));
    }

    goto LABEL_27;
  }
}

- (id)allObjects
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableArray);
  }

  v4 = __NSArrayM_copy(self);

  return v4;
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  v74 = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
    if (object)
    {
      goto LABEL_3;
    }

LABEL_74:
    v55 = _os_log_pack_size();
    v58 = &objectCopy - ((MEMORY[0x1EEE9AC00](v55, v56, v57) + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = _os_log_pack_fill(v58, v55, 0, &dword_1830E6000, "*** %s: object cannot be nil", objectCopy);
    *v59 = 136315138;
    *(v59 + 4) = "[__NSArrayM insertObject:atIndex:]";
    v60 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[__NSArrayM insertObject:atIndex:]");
    v61 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v60) osLogPack:0 size:v58, v55];
    objc_exception_throw(v61);
  }

  if (!object)
  {
    goto LABEL_74;
  }

LABEL_3:
  p_storage = &self->storage;
  used = self->storage.state.var0.used;
  if ((index & 0x8000000000000000) != 0 || used < index)
  {
    v62 = _os_log_pack_size();
    v65 = &objectCopy - ((MEMORY[0x1EEE9AC00](v62, v63, v64) + 15) & 0xFFFFFFFFFFFFFFF0);
    if (used)
    {
      v68 = _os_log_pack_fill(v65, v62, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", objectCopy, v72, indexCopy);
      v69 = __os_log_helper_1_2_3_8_32_8_0_8_0(v68, "[__NSArrayM insertObject:atIndex:]", index, used - 1);
      v67 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v69, "[__NSArrayM insertObject:atIndex:]", index, used - 1);
    }

    else
    {
      v66 = _os_log_pack_fill(v65, v62, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", objectCopy, v72);
      *v66 = 136315394;
      *(v66 + 4) = "[__NSArrayM insertObject:atIndex:]";
      *(v66 + 12) = 2048;
      *(v66 + 14) = index;
      v67 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[__NSArrayM insertObject:atIndex:]", index);
    }

    v70 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v67) osLogPack:0 size:v65, v62];
    objc_exception_throw(v70);
  }

  v10 = atomic_load(&self->cow);
  muts = self->storage.state.var0.muts;
  if (muts >> 9 < 0x7D)
  {
    v12 = muts + 1;
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    os_unfair_lock_lock(v10);
    if (!*(v10 + 6))
    {
      [__NSArrayM insertObject:atIndex:];
    }

    if (*(v10 + 6) != 1 || *(v10 + 4) != 0)
    {
      --*(v10 + 6);
      _cow_mutate_slow(self, v10, __NSArray_cowCallbacks);
    }

    os_unfair_lock_unlock(v10);
  }

  objectCopy = object;
  self->storage.state.var0.muts = v12;
  size = self->storage.size;
  v15 = used + 1;
  if (size < used + 1)
  {
    list = p_storage->list;
    v17 = used * 1.625;
    if (v17 <= v15)
    {
      v17 = v15;
    }

    v18 = malloc_good_size(8 * v17);
    v19 = malloc_type_malloc(v18, 0x80040B8603338uLL);
    if (!v19)
    {
      [__NSArrayM insertObject:atIndex:];
    }

    v20 = v19;
    var0 = p_storage->var0;
    if (size - var0 >= used)
    {
      v22 = used;
    }

    else
    {
      v22 = size - var0;
    }

    memmove(v19, &list[var0], 8 * v22);
    memmove(&v20[v22], list, 8 * (used - v22));
    bzero(&v20[used], v18 - 8 * used);
    free(list);
    p_storage->list = v20;
    size = v18 >> 3;
    p_storage->var0 = 0;
    p_storage->size = v18 >> 3;
  }

  v23 = (used - index);
  v72 = size;
  indexCopy = index;
  if (v23 <= index)
  {
    if (used != index)
    {
      v38 = (p_storage->list + 1);
      v39 = indexCopy + v23 + p_storage->var0;
      v40 = v39 - 1;
      if (v72 <= 1uLL)
      {
        v41 = 1;
      }

      else
      {
        v41 = v72;
      }

      do
      {
        v42 = ((v39 & ~(v39 >> 63)) - (v39 + (v39 >> 63))) / v41;
        v43 = v40 + v72 + v72 * (((v40 & ~(v40 >> 63)) - (v40 + (v40 >> 63))) / v41 + (v40 >> 63));
        do
        {
          v43 -= v72;
        }

        while (v43 >= v72);
        v44 = v39 + (v42 + (v39 >> 63)) * v72;
        v45 = v72 + v72 * ((v39 >> 63) + v42);
        v46 = v39 + v45;
        v47 = v38 + 8 * v72 + 8 * v44;
        do
        {
          v46 -= v72;
          v45 -= v72;
          v47 -= 8 * v72;
        }

        while ((v39 + v45) >= v72);
        if (v43 >= (v39 + v45))
        {
          v48 = v39 + v45;
        }

        else
        {
          v48 = v43;
        }

        if (v23 >= v48 + 1)
        {
          v49 = v48 + 1;
        }

        else
        {
          v49 = v23;
        }

        if (v43 < v46)
        {
          v46 = v43;
        }

        if (v23 >= v46 + 1)
        {
          v50 = v46 + 1;
        }

        else
        {
          v50 = v23;
        }

        memmove((v47 - 8 * v50), (v38 - 8 * v49 + 8 * v43), 8 * v49);
        v40 -= v49;
        v39 -= v49;
        v34 = v23 <= v49;
        v23 -= v49;
      }

      while (!v34);
    }
  }

  else
  {
    if (index)
    {
      v24 = p_storage->list;
      v25 = p_storage->var0;
      v26 = v25 - 1;
      if (size <= 1uLL)
      {
        v27 = 1;
      }

      else
      {
        v27 = size;
      }

      indexCopy2 = index;
      do
      {
        v29 = v25 + size + size * (((v25 & ~(v25 >> 63)) - (v25 + (v25 >> 63))) / v27 + (v25 >> 63));
        do
        {
          v29 -= size;
        }

        while (v29 >= size);
        v30 = v26 + size + size * ((v26 >> 63) + ((v26 & ~(v26 >> 63)) - (v26 + (v26 >> 63))) / v27);
        do
        {
          v30 -= size;
        }

        while (v30 >= size);
        if (v30 <= v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = v30;
        }

        v32 = size - v31;
        if (indexCopy2 >= v32)
        {
          v33 = v32;
        }

        else
        {
          v33 = indexCopy2;
        }

        memmove(&v24[v30], &v24[v29], 8 * v33);
        v25 += v33;
        v26 += v33;
        v34 = indexCopy2 <= v33;
        indexCopy2 -= v33;
      }

      while (!v34);
    }

    v35 = size + p_storage->var0 - 1;
    p_storage->var0 = v35;
    v36 = v35 >= size;
    v37 = v35 - size;
    if (v36)
    {
      p_storage->var0 = v37;
    }
  }

  ++p_storage->state.var0.used;
  v51 = p_storage->var0 + indexCopy;
  if (v72 <= v51)
  {
    v52 = v72;
  }

  else
  {
    v52 = 0;
  }

  v53 = objectCopy;
  p_storage->list[v51 - v52] = objectCopy;
  if ((v53 & 0x8000000000000000) == 0)
  {

    v54 = v53;
  }
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
  }

  [(__NSArrayM *)self removeObjectsInRange:index, 1];
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  v38 = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  }

  v8 = atomic_load(&self->cow);
  p_storage = &self->storage;
  muts = self->storage.state.var0.muts;
  if (muts >> 9 < 0x7D)
  {
    v11 = muts + 1;
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    os_unfair_lock_lock(v8);
    if (!*(v8 + 6))
    {
      [__NSArrayM replaceObjectAtIndex:withObject:];
    }

    if (*(v8 + 6) != 1 || *(v8 + 4) != 0)
    {
      --*(v8 + 6);
      _cow_mutate_slow(self, v8, __NSArray_cowCallbacks);
    }

    os_unfair_lock_unlock(v8);
  }

  self->storage.state.var0.muts = v11;
  if (!object)
  {
    v20 = _os_log_pack_size();
    v23 = &v37 - ((MEMORY[0x1EEE9AC00](v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = _os_log_pack_fill(v23, v20, 0, &dword_1830E6000, "*** %s: object cannot be nil", v37);
    *v24 = 136315138;
    *(v24 + 4) = "[__NSArrayM replaceObjectAtIndex:withObject:]";
    v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[__NSArrayM replaceObjectAtIndex:withObject:]");
    v26 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v23, v20];
    objc_exception_throw(v26);
  }

  used = self->storage.state.var0.used;
  if ((index & 0x8000000000000000) != 0 || used <= index)
  {
    v27 = _os_log_pack_size();
    v30 = &v37 - ((MEMORY[0x1EEE9AC00](v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    if (used)
    {
      v33 = _os_log_pack_fill(v30, v27, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v37, v38, v39);
      v34 = used - 1;
      v35 = __os_log_helper_1_2_3_8_32_8_0_8_0(v33, "[__NSArrayM replaceObjectAtIndex:withObject:]", index, v34);
      v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v35, "[__NSArrayM replaceObjectAtIndex:withObject:]", index, v34);
    }

    else
    {
      v31 = _os_log_pack_fill(v30, v27, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v37, v38);
      *v31 = 136315394;
      *(v31 + 4) = "[__NSArrayM replaceObjectAtIndex:withObject:]";
      *(v31 + 12) = 2048;
      *(v31 + 14) = index;
      v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[__NSArrayM replaceObjectAtIndex:withObject:]", index);
    }

    v36 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v27];
    objc_exception_throw(v36);
  }

  size = self->storage.size;
  v15 = self->storage.var0 + index;
  if (size > v15)
  {
    size = 0;
  }

  v16 = v15 - size;
  list = p_storage->list;
  v18 = p_storage->list[v16];
  if (v18 != object)
  {
    if ((object & 0x8000000000000000) == 0)
    {
      objectCopy = object;
      list = p_storage->list;
    }

    list[v16] = object;
    if (v18 >= 1)
    {
    }
  }
}

- (void)addObject:(id)object
{
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
  }

  used = self->storage.state.var0.used;

  [(__NSArrayM *)self insertObject:object atIndex:used];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableArray);
  }

  atomic_load(&self->cow);
  result = state->var0;
  if (state->var0 == -1)
  {
    return 0;
  }

  p_storage = &self->storage;
  if (result)
  {
    list = p_storage->list;
    state->var0 = -1;
    state->var1 = list;
  }

  else
  {
    state->var2 = &self->storage.state.mutations;
    result = self->storage.state.var0.used;
    v10 = p_storage->list;
    var0 = self->storage.var0;
    size = self->storage.size;
    state->var1 = &v10[var0];
    v13 = var0 + result >= size;
    v14 = var0 + result - size;
    if (v14 != 0 && v13)
    {
      state->var0 = v14;
      result -= v14;
    }

    else
    {
      state->var0 = -1;
    }
  }

  return result;
}

- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  v25 = *MEMORY[0x1E69E9840];
  if (!__cf_tsanReadFunction)
  {
    if (block)
    {
      goto LABEL_3;
    }

LABEL_16:
    v14 = _os_log_pack_size();
    v17 = &v21 - ((MEMORY[0x1EEE9AC00](v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill(v17, v14, 0, &dword_1830E6000, "*** %s: block cannot be nil", v21);
    *v18 = 136315138;
    *(v18 + 4) = "[__NSArrayM enumerateObjectsWithOptions:usingBlock:]";
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSArrayM enumerateObjectsWithOptions:usingBlock:]");
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v17, v14];
    objc_exception_throw(v20);
  }

  __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  if (!block)
  {
    goto LABEL_16;
  }

LABEL_3:
  size = self->storage.size;
  used = self->storage.state.var0.used;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___deque_enumerateObjectsWithOptionsBlock_block_invoke;
  v23[3] = &unk_1E6D7D438;
  v24 = size;
  v23[4] = block;
  v23[5] = &self->storage;
  if ((__NSCollectionHandleConcurrentEnumerationIfSpecified(optionsCopy, 1, used, v23) & 1) == 0)
  {
    if ((optionsCopy & 2) != 0)
    {
      v22 = 0;
      v12 = self->storage.state.var0.used;
      do
      {
        if (!v12)
        {
          break;
        }

        --v12;
        v13 = _CFAutoreleasePoolPush();
        __NSARRAY_IS_CALLING_OUT_TO_A_BLOCK__(block);
        _CFAutoreleasePoolPop(v13);
      }

      while (v22 != 1);
    }

    else
    {
      v22 = 0;
      if (self->storage.state.var0.used)
      {
        v10 = 0;
        do
        {
          v11 = _CFAutoreleasePoolPush();
          __NSARRAY_IS_CALLING_OUT_TO_A_BLOCK__(block);
          _CFAutoreleasePoolPop(v11);
          if (v22 == 1)
          {
            break;
          }

          ++v10;
        }

        while (v10 < self->storage.state.var0.used);
      }
    }
  }
}

- (void)exchangeObjectAtIndex:(unint64_t)index withObjectAtIndex:(unint64_t)atIndex
{
  v43 = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  }

  v8 = atomic_load(&self->cow);
  p_storage = &self->storage;
  muts = self->storage.state.var0.muts;
  if (muts >> 9 < 0x7D)
  {
    v11 = muts + 1;
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    os_unfair_lock_lock(v8);
    if (!*(v8 + 6))
    {
      [__NSArrayM exchangeObjectAtIndex:withObjectAtIndex:];
    }

    if (*(v8 + 6) != 1 || *(v8 + 4) != 0)
    {
      --*(v8 + 6);
      _cow_mutate_slow(self, v8, __NSArray_cowCallbacks);
    }

    os_unfair_lock_unlock(v8);
  }

  self->storage.state.var0.muts = v11;
  used = self->storage.state.var0.used;
  if ((index & 0x8000000000000000) != 0 || used <= index)
  {
    v22 = _os_log_pack_size();
    v25 = &v42 - ((MEMORY[0x1EEE9AC00](v22, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
    if (used)
    {
      v39 = _os_log_pack_fill(v25, v22, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v42, v43, v44);
      v40 = used - 1;
      v41 = __os_log_helper_1_2_3_8_32_8_0_8_0(v39, "[__NSArrayM exchangeObjectAtIndex:withObjectAtIndex:]", index, v40);
      v27 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v41, "[__NSArrayM exchangeObjectAtIndex:withObjectAtIndex:]", index, v40);
    }

    else
    {
      v26 = _os_log_pack_fill(v25, v22, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v42, v43);
      *v26 = 136315394;
      *(v26 + 4) = "[__NSArrayM exchangeObjectAtIndex:withObjectAtIndex:]";
      *(v26 + 12) = 2048;
      *(v26 + 14) = index;
      v27 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[__NSArrayM exchangeObjectAtIndex:withObjectAtIndex:]", index);
    }

    v36 = _CFAutoreleasePoolAddObject(0, v27);
    v37 = v25;
    v38 = v22;
LABEL_32:
    objc_exception_throw([NSException exceptionWithName:@"NSRangeException" reason:v36 userInfo:0 osLogPack:v37 size:v38]);
  }

  if ((atIndex & 0x8000000000000000) != 0 || used <= atIndex)
  {
    v28 = _os_log_pack_size();
    v31 = &v42 - ((MEMORY[0x1EEE9AC00](v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = _os_log_pack_fill(v31, v28, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v42, v43, v44);
    v33 = used - 1;
    v34 = __os_log_helper_1_2_3_8_32_8_0_8_0(v32, "[__NSArrayM exchangeObjectAtIndex:withObjectAtIndex:]", atIndex, v33);
    v35 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v34, "[__NSArrayM exchangeObjectAtIndex:withObjectAtIndex:]", atIndex, v33);
    v36 = _CFAutoreleasePoolAddObject(0, v35);
    v37 = v31;
    v38 = v28;
    goto LABEL_32;
  }

  if (index != atIndex)
  {
    var0 = self->storage.var0;
    size = self->storage.size;
    if (size <= var0 + index)
    {
      v16 = self->storage.size;
    }

    else
    {
      v16 = 0;
    }

    v17 = var0 + index - v16;
    list = p_storage->list;
    v19 = var0 + atIndex;
    if (size > v19)
    {
      size = 0;
    }

    v20 = v19 - size;
    v21 = list[v20];
    list[v20] = p_storage->list[v17];
    list[v17] = v21;
  }
}

- (unint64_t)indexOfObjectIdenticalTo:(id)to
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  list = self->storage.list;
  used = self->storage.state.var0.used;
  var0 = self->storage.var0;
  v9 = self->storage.size - var0;
  if (used >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = used;
  }

  if (v10)
  {
    result = 0;
    v12 = &list[var0];
    while (v12[result] != to)
    {
      if (v10 == ++result)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    if (used <= v9)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      LODWORD(v13) = used - v10;
      if (v13 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v13;
      }

      while (*list != to)
      {
        ++v10;
        ++list;
        if (!--v13)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      return v10;
    }
  }

  return result;
}

- (void)insertObjects:(const void *)objects count:(unint64_t)count atIndex:(unint64_t)index
{
  v145 = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
  }

  v10 = atomic_load(&self->cow);
  p_storage = &self->storage;
  muts = self->storage.state.var0.muts;
  if (muts >> 9 < 0x7D)
  {
    v13 = muts + 1;
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    os_unfair_lock_lock(v10);
    if (!*(v10 + 6))
    {
      [__NSArrayM insertObjects:count:atIndex:];
    }

    if (*(v10 + 6) != 1 || *(v10 + 4) != 0)
    {
      --*(v10 + 6);
      _cow_mutate_slow(self, v10, __NSArray_cowCallbacks);
    }

    os_unfair_lock_unlock(v10);
  }

  self->storage.state.var0.muts = v13;
  if (!objects && count)
  {
    v124 = _os_log_pack_size();
    v127 = &v138 - ((MEMORY[0x1EEE9AC00](v124, v125, v126) + 15) & 0xFFFFFFFFFFFFFFF0);
    v128 = _os_log_pack_fill(v127, v124, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v138, indexCopy3);
    *v128 = 136315394;
    *(v128 + 4) = "[__NSArrayM insertObjects:count:atIndex:]";
    *(v128 + 12) = 2048;
    *(v128 + 14) = count;
    v129 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSArrayM insertObjects:count:atIndex:]", count);
    goto LABEL_155;
  }

  if (count >> 61)
  {
    v124 = _os_log_pack_size();
    v127 = &v138 - ((MEMORY[0x1EEE9AC00](v124, v130, v131) + 15) & 0xFFFFFFFFFFFFFFF0);
    v132 = _os_log_pack_fill(v127, v124, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v138, indexCopy3);
    *v132 = 136315394;
    *(v132 + 4) = "[__NSArrayM insertObjects:count:atIndex:]";
    *(v132 + 12) = 2048;
    *(v132 + 14) = count;
    v129 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSArrayM insertObjects:count:atIndex:]", count);
LABEL_155:
    v124 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v129) osLogPack:0 size:v127, v124];
    objc_exception_throw(v124);
  }

  if (!count)
  {
    used = self->storage.state.var0.used;
    if ((index & 0x8000000000000000) == 0 && used >= index)
    {
      return;
    }

LABEL_43:
    v36 = _os_log_pack_size();
    v39 = &v138 - ((MEMORY[0x1EEE9AC00](v36, v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    if (used)
    {
      v134 = _os_log_pack_fill(v39, v36, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v138, indexCopy3, v140);
      v135 = used - 1;
      v136 = __os_log_helper_1_2_3_8_32_8_0_8_0(v134, "[__NSArrayM insertObjects:count:atIndex:]", index, v135);
      v41 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v136, "[__NSArrayM insertObjects:count:atIndex:]", index, v135);
    }

    else
    {
      v40 = _os_log_pack_fill(v39, v36, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v138, indexCopy3);
      *v40 = 136315394;
      *(v40 + 4) = "[__NSArrayM insertObjects:count:atIndex:]";
      *(v40 + 12) = 2048;
      *(v40 + 14) = index;
      v41 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[__NSArrayM insertObjects:count:atIndex:]", index);
    }

    v137 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v41) osLogPack:0 size:v39, v36];
    objc_exception_throw(v137);
  }

  v15 = 0;
  do
  {
    if (!objects[v15])
    {
      v117 = _os_log_pack_size();
      v120 = &v138 - ((MEMORY[0x1EEE9AC00](v117, v118, v119) + 15) & 0xFFFFFFFFFFFFFFF0);
      v121 = _os_log_pack_fill(v120, v117, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]", v138, indexCopy3);
      *v121 = 136315394;
      *(v121 + 4) = "[__NSArrayM insertObjects:count:atIndex:]";
      *(v121 + 12) = 2048;
      *(v121 + 14) = v15;
      v122 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[__NSArrayM insertObjects:count:atIndex:]", v15);
      v117 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v122) osLogPack:0 size:v120, v117];
      objc_exception_throw(v117);
    }

    ++v15;
  }

  while (count != v15);
  used = p_storage->state.var0.used;
  if ((index & 0x8000000000000000) != 0 || used < index)
  {
    goto LABEL_43;
  }

  v17 = 0;
  do
  {
    v18 = objects[v17];
    if ((v18 & 0x8000000000000000) == 0)
    {
      v19 = v18;
    }

    ++v17;
  }

  while (count != v17);
  size = p_storage->size;
  v21 = (used + count);
  if (size < v21)
  {
    list = p_storage->list;
    v23 = (used * 1.61803399);
    if (v23 <= v21)
    {
      LODWORD(v23) = used + count;
    }

    v24 = malloc_good_size(8 * v23);
    if (HIDWORD(v24))
    {
      [__NSArrayM insertObjects:count:atIndex:];
    }

    v25 = v24;
    v26 = malloc_type_malloc(v24, 0x80040B8603338uLL);
    v27 = v26;
    v144 = list;
    if (!list)
    {
      memmove(v26, objects, 8 * count);
      goto LABEL_149;
    }

    if (!index || !v26)
    {
LABEL_119:
      memmove(&v27[index], objects, 8 * count);
      v96 = used - index;
      if (used != index)
      {
        v142 = (used + count);
        v97 = &v27[index] + count;
        v98 = p_storage->list;
        v99 = p_storage->size;
        v100 = &p_storage->list[v99];
        v101 = (&p_storage->list[p_storage->var0] + index);
        v102 = -v99;
        if (v100 <= v101)
        {
          v103 = -v99;
        }

        else
        {
          v103 = 0;
        }

        v104 = (v101 + 8 * v103);
        if (v96 > 2)
        {
          if (v96 == 3)
          {
LABEL_140:
            v112 = *v104;
            v111 = v104 + 1;
            *v97++ = v112;
            if (v100 <= v111)
            {
              v113 = v102;
            }

            else
            {
              v113 = 0;
            }

            v104 = &v111[v113];
            goto LABEL_144;
          }

          if (v96 == 4)
          {
LABEL_136:
            v109 = *v104;
            v108 = v104 + 1;
            *v97++ = v109;
            if (v100 <= v108)
            {
              v110 = v102;
            }

            else
            {
              v110 = 0;
            }

            v104 = &v108[v110];
            goto LABEL_140;
          }
        }

        else
        {
          if (v96 == 1)
          {
LABEL_148:
            *v97 = *v104;
            v21 = v142;
            goto LABEL_149;
          }

          if (v96 == 2)
          {
LABEL_144:
            v115 = *v104;
            v114 = v104 + 1;
            *v97++ = v115;
            if (v100 <= v114)
            {
              v116 = v102;
            }

            else
            {
              v116 = 0;
            }

            v104 = &v114[v116];
            goto LABEL_148;
          }
        }

        v143 = p_storage;
        if ((v100 - v104) >> 3 >= v96)
        {
          LODWORD(v105) = v96;
        }

        else
        {
          v105 = (v100 - v104) >> 3;
        }

        v106 = v105;
        if (v105)
        {
          memmove(v97, v104, 8 * v105);
        }

        v107 = v96 - v105;
        p_storage = v143;
        if (v107)
        {
          memmove(&v97[v106], v98, 8 * v107);
        }

        goto LABEL_136;
      }

LABEL_149:
      bzero(&v27[v21], v25 - 8 * v21);
      p_storage->list = v27;
      p_storage->var0 = 0;
      p_storage->size = v25 >> 3;
      p_storage->state.var0.used = v21;

      free(v144);
      return;
    }

    v28 = p_storage->list;
    var0 = p_storage->var0;
    v29 = p_storage->size;
    v31 = &p_storage->list[v29];
    v32 = -v29;
    if (v29 <= var0)
    {
      v33 = -v29;
    }

    else
    {
      v33 = 0;
    }

    v34 = &p_storage->list[var0] + v33;
    if (index > 2)
    {
      if (index == 3)
      {
        v87 = v26;
LABEL_110:
        v91 = *v34;
        v90 = v34 + 1;
        *v87 = v91;
        v35 = v87 + 1;
        if (v31 <= v90)
        {
          v92 = v32;
        }

        else
        {
          v92 = 0;
        }

        v34 = &v90[v92];
        goto LABEL_114;
      }

      if (index == 4)
      {
LABEL_104:
        v86 = *v34;
        v85 = v34 + 1;
        *v27 = v86;
        v87 = v27 + 1;
        if (v31 <= v85)
        {
          v88 = v32;
        }

        else
        {
          v88 = 0;
        }

        v34 = &v85[v88];
        goto LABEL_110;
      }
    }

    else
    {
      if (index == 1)
      {
        v89 = v26;
LABEL_118:
        *v89 = *v34;
        goto LABEL_119;
      }

      if (index == 2)
      {
        v35 = v26;
LABEL_114:
        v94 = *v34;
        v93 = v34 + 1;
        *v35 = v94;
        v89 = v35 + 1;
        if (v31 <= v93)
        {
          v95 = v32;
        }

        else
        {
          v95 = 0;
        }

        v34 = &v93[v95];
        goto LABEL_118;
      }
    }

    indexCopy5 = index;
    v142 = v31;
    if ((v31 - v34) >> 3 < index)
    {
      index = (v31 - v34) >> 3;
    }

    indexCopy4 = index;
    if (index)
    {
      indexCopy3 = index;
      v140 = v32;
      memmove(v26, v34, 8 * index);
      indexCopy4 = index;
      v32 = v140;
      v31 = v142;
    }

    v82 = indexCopy5 - index;
    index = indexCopy5;
    if (v82)
    {
      v83 = v28;
      v84 = v32;
      memmove(&v27[indexCopy4], v83, 8 * v82);
      v32 = v84;
      v31 = v142;
    }

    goto LABEL_104;
  }

  v142 = (used + count);
  v143 = p_storage;
  v42 = p_storage->state.var0.used;
  v43 = v42 - index;
  indexCopy5 = index;
  if (v43 <= index)
  {
    if (v42 != index)
    {
      v56 = indexCopy5 + v43 + v143->var0 - 1;
      v57 = v56 + count;
      if (size <= 1)
      {
        v58 = 1;
      }

      else
      {
        v58 = size;
      }

      v59 = (v143->list + 1);
      v144 = (v59 + 8 * size);
      do
      {
        v60 = ((v57 & ~(v57 >> 63)) - (v57 + (v57 >> 63))) / v58;
        v61 = v56 + size + size * (((v56 & ~(v56 >> 63)) - (v56 + (v56 >> 63))) / v58 + (v56 >> 63));
        do
        {
          v61 -= size;
        }

        while (v61 >= size);
        v62 = v57 + (v60 + (v57 >> 63)) * size;
        v63 = size + size * ((v57 >> 63) + v60);
        v64 = v57 + v63;
        v65 = &v144[v62];
        do
        {
          v64 -= size;
          v63 -= size;
          v65 -= 8 * size;
        }

        while ((v57 + v63) >= size);
        if (v61 >= (v57 + v63))
        {
          v66 = v57 + v63;
        }

        else
        {
          v66 = v61;
        }

        if (v43 >= v66 + 1)
        {
          v67 = v66 + 1;
        }

        else
        {
          v67 = v43;
        }

        if (v61 < v64)
        {
          v64 = v61;
        }

        if (v43 >= v64 + 1)
        {
          v68 = v64 + 1;
        }

        else
        {
          v68 = v43;
        }

        memmove(&v65[-8 * v68], (v59 - 8 * v67 + 8 * v61), 8 * v67);
        v56 -= v67;
        v57 -= v67;
        v54 = v43 <= v67;
        v43 -= v67;
      }

      while (!v54);
    }
  }

  else
  {
    indexCopy6 = index;
    if (index)
    {
      v45 = p_storage->var0;
      v46 = p_storage->list;
      v47 = v45 - count;
      if (size <= 1)
      {
        v48 = 1;
      }

      else
      {
        v48 = size;
      }

      do
      {
        v49 = v45 + size + size * (((v45 & ~(v45 >> 63)) - (v45 + (v45 >> 63))) / v48 + (v45 >> 63));
        do
        {
          v49 -= size;
        }

        while (v49 >= size);
        v50 = v47 + size + size * ((v47 >> 63) + ((v47 & ~(v47 >> 63)) - (v47 + (v47 >> 63))) / v48);
        do
        {
          v50 -= size;
        }

        while (v50 >= size);
        if (v50 <= v49)
        {
          v51 = v49;
        }

        else
        {
          v51 = v50;
        }

        v52 = size - v51;
        if (indexCopy6 >= v52)
        {
          v53 = v52;
        }

        else
        {
          v53 = indexCopy6;
        }

        memmove(&v46[v50], &v46[v49], 8 * v53);
        v45 += v53;
        v47 += v53;
        v54 = indexCopy6 <= v53;
        indexCopy6 -= v53;
      }

      while (!v54);
    }

    v55 = p_storage->var0 + size - count;
    p_storage->var0 = v55;
    if (v55 >= size)
    {
      v143->var0 = v55 - size;
    }
  }

  v70 = v142;
  v69 = v143;
  v71 = v143->size;
  v72 = &v143->list[v71];
  v73 = (&v69->list[v69->var0] + indexCopy5);
  v74 = -v71;
  v75 = 1;
  do
  {
    if (v72 <= v73)
    {
      v76 = v74;
    }

    else
    {
      v76 = 0;
    }

    v77 = (v73 + 8 * v76);
    v79 = *objects++;
    v78 = v79;
    if (*v77 != v79)
    {
      *v77 = v78;
    }

    v73 = (v77 + 1);
    v80 = v75++;
  }

  while (v80 < count);
  v69->state.var0.used = v70;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  v21 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  used = self->storage.state.var0.used;
  if ((subscript & 0x8000000000000000) != 0 || used <= subscript)
  {
    v10 = _os_log_pack_size();
    v13 = &v20 - ((MEMORY[0x1EEE9AC00](v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    if (used)
    {
      v16 = _os_log_pack_fill(v13, v10, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v20, v21, v22);
      v17 = used - 1;
      v18 = __os_log_helper_1_2_3_8_32_8_0_8_0(v16, "[__NSArrayM objectAtIndexedSubscript:]", subscript, v17);
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v18, "[__NSArrayM objectAtIndexedSubscript:]", subscript, v17);
    }

    else
    {
      v14 = _os_log_pack_fill(v13, v10, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v20, v21);
      *v14 = 136315394;
      *(v14 + 4) = "[__NSArrayM objectAtIndexedSubscript:]";
      *(v14 + 12) = 2048;
      *(v14 + 14) = subscript;
      v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[__NSArrayM objectAtIndexedSubscript:]", subscript);
    }

    v19 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v10];
    objc_exception_throw(v19);
  }

  size = self->storage.size;
  v8 = self->storage.var0 + subscript;
  if (size > v8)
  {
    size = 0;
  }

  return self->storage.list[v8 - size];
}

- (void)removeObjectsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v131 = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
  }

  v7 = atomic_load(&self->cow);
  p_storage = &self->storage;
  muts = self->storage.state.var0.muts;
  if (muts >> 9 < 0x7D)
  {
    v10 = muts + 1;
  }

  else
  {
    v10 = 0;
  }

  if (v7)
  {
    os_unfair_lock_lock(v7);
    if (!*(v7 + 6))
    {
      [__NSArrayM removeObjectsInRange:];
    }

    if (*(v7 + 6) != 1 || *(v7 + 4) != 0)
    {
      --*(v7 + 6);
      _cow_mutate_slow(self, v7, __NSArray_cowCallbacks);
    }

    os_unfair_lock_unlock(v7);
  }

  self->storage.state.var0.muts = v10;
  v12 = [(__NSArrayM *)self count];
  v13 = v12;
  if (location < 0 || (length & 0x8000000000000000) != 0 || (v14 = location + length, v12 < location + length))
  {
    if (v12)
    {
      v110 = _os_log_pack_size();
      v121 = &v126 - ((MEMORY[0x1EEE9AC00](v110, v119, v120) + 15) & 0xFFFFFFFFFFFFFFF0);
      v122 = _os_log_pack_fill(v121, v110, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v126, v127, v128, v129);
      v123 = v13 - 1;
      v124 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v122, "[__NSArrayM removeObjectsInRange:]", location, length, v123);
      v125 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v124, "[__NSArrayM removeObjectsInRange:]", location, length, v123);
      v117 = _CFAutoreleasePoolAddObject(0, v125);
      v118 = v121;
    }

    else
    {
      v110 = _os_log_pack_size();
      v113 = &v126 - ((MEMORY[0x1EEE9AC00](v110, v111, v112) + 15) & 0xFFFFFFFFFFFFFFF0);
      v114 = _os_log_pack_fill(v113, v110, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v126, v127, v128);
      v115 = __os_log_helper_1_2_3_8_32_8_0_8_0(v114, "[__NSArrayM removeObjectsInRange:]", location, length);
      v116 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v115, "[__NSArrayM removeObjectsInRange:]", location, length);
      v117 = _CFAutoreleasePoolAddObject(0, v116);
      v118 = v113;
    }

    objc_exception_throw([NSException exceptionWithName:@"NSRangeException" reason:v117 userInfo:0 osLogPack:v118 size:v110]);
  }

  if (length)
  {
    list = p_storage->list;
    size = p_storage->size;
    v17 = &p_storage->list[size];
    v18 = (&p_storage->list[p_storage->var0] + location);
    if (v17 <= v18)
    {
      v19 = -size;
    }

    else
    {
      v19 = 0;
    }

    v20 = (v18 + 8 * v19);
    if ((v17 - v20) >> 3 >= length)
    {
      LODWORD(v21) = length;
    }

    else
    {
      v21 = (v17 - v20) >> 3;
    }

    v22 = v21;
    if (v21)
    {
      do
      {
        if ((*v20 & 0x8000000000000000) == 0)
        {
        }

        ++v20;
        --v22;
      }

      while (v22);
    }

    v23 = (length - v21);
    if (length != v21)
    {
      do
      {
        if ((*list & 0x8000000000000000) == 0)
        {
        }

        ++list;
        --v23;
      }

      while (v23);
    }

    v24 = p_storage->size;
    used = p_storage->state.var0.used;
    v26 = (used - length);
    if (used != length && v26 * 2.61803399 < v24)
    {
      v27 = p_storage->size;
      v28 = malloc_good_size(8 * (used - length));
      if (HIDWORD(v28))
      {
        [__NSArrayM removeObjectsInRange:];
      }

      v29 = v28;
      v30 = malloc_type_malloc(v28, 0x80040B8603338uLL);
      v24 = v27;
      if (v30)
      {
        v31 = v30;
        v129 = 8 * (used - length);
        if (!location)
        {
          goto LABEL_112;
        }

        v32 = (used - length);
        v33 = p_storage->list;
        var0 = p_storage->var0;
        v34 = p_storage->size;
        v36 = &p_storage->list[v34];
        v37 = -v34;
        if (v34 <= var0)
        {
          v38 = -v34;
        }

        else
        {
          v38 = 0;
        }

        v39 = &p_storage->list[var0] + v38;
        if (location > 2)
        {
          if (location == 3)
          {
            v79 = v30;
LABEL_103:
            v83 = *v39;
            v82 = v39 + 1;
            *v79 = v83;
            v40 = v79 + 1;
            if (v36 <= v82)
            {
              v84 = v37;
            }

            else
            {
              v84 = 0;
            }

            v39 = &v82[v84];
            goto LABEL_107;
          }

          if (location == 4)
          {
LABEL_97:
            v78 = *v39;
            v77 = v39 + 1;
            *v31 = v78;
            v79 = v31 + 1;
            if (v36 <= v77)
            {
              v80 = v37;
            }

            else
            {
              v80 = 0;
            }

            v39 = &v77[v80];
            goto LABEL_103;
          }
        }

        else
        {
          if (location == 1)
          {
            v81 = v30;
            v26 = v32;
LABEL_111:
            *v81 = *v39;
LABEL_112:
            v88 = p_storage;
            v89 = used - v14;
            if (used == v14)
            {
LABEL_142:
              bzero(&v31[v26], v29 - v129);
              v109 = v88->list;
              v88->list = v31;
              v88->var0 = 0;
              v88->size = v29 >> 3;
              v88->state.var0.used = v26;

              free(v109);
              return;
            }

            v130 = v26;
            v90 = &v31[location];
            v91 = v88->list;
            v92 = v88->size;
            v93 = &v88->list[v92];
            v94 = (&v88->list[v88->var0] + v14);
            v95 = -v92;
            if (v93 <= v94)
            {
              v96 = -v92;
            }

            else
            {
              v96 = 0;
            }

            v97 = (v94 + 8 * v96);
            if (v89 > 2)
            {
              if (v89 == 3)
              {
LABEL_133:
                v104 = *v97;
                v103 = v97 + 1;
                *v90++ = v104;
                if (v93 <= v103)
                {
                  v105 = v95;
                }

                else
                {
                  v105 = 0;
                }

                v97 = &v103[v105];
                goto LABEL_137;
              }

              if (v89 == 4)
              {
LABEL_129:
                v101 = *v97;
                v100 = v97 + 1;
                *v90++ = v101;
                if (v93 <= v100)
                {
                  v102 = v95;
                }

                else
                {
                  v102 = 0;
                }

                v97 = &v100[v102];
                goto LABEL_133;
              }
            }

            else
            {
              if (v89 == 1)
              {
                v26 = v130;
LABEL_141:
                *v90 = *v97;
                goto LABEL_142;
              }

              if (v89 == 2)
              {
LABEL_137:
                v26 = v130;
                v107 = *v97;
                v106 = v97 + 1;
                *v90++ = v107;
                if (v93 <= v106)
                {
                  v108 = v95;
                }

                else
                {
                  v108 = 0;
                }

                v97 = &v106[v108];
                goto LABEL_141;
              }
            }

            if ((v93 - v97) >> 3 >= v89)
            {
              LODWORD(v98) = v89;
            }

            else
            {
              v98 = (v93 - v97) >> 3;
            }

            v99 = v98;
            if (v98)
            {
              v128 = v98;
              memmove(v90, v97, 8 * v98);
              v99 = v98;
            }

            if (v89 != v98)
            {
              memmove(&v90[v99], v91, 8 * (v89 - v98));
            }

            goto LABEL_129;
          }

          if (location == 2)
          {
            v40 = v30;
LABEL_107:
            v26 = v32;
            v86 = *v39;
            v85 = v39 + 1;
            *v40 = v86;
            v81 = v40 + 1;
            if (v36 <= v85)
            {
              v87 = v37;
            }

            else
            {
              v87 = 0;
            }

            v39 = &v85[v87];
            goto LABEL_111;
          }
        }

        v128 = p_storage;
        if ((v36 - v39) >> 3 >= location)
        {
          LODWORD(v72) = location;
        }

        else
        {
          v72 = (v36 - v39) >> 3;
        }

        v73 = v72;
        if (v72)
        {
          v126 = v72;
          v127 = v37;
          memmove(v30, v39, 8 * v72);
          v73 = v72;
          v37 = v127;
        }

        v74 = location - v72;
        p_storage = v128;
        if (v74)
        {
          v75 = v33;
          v76 = v37;
          memmove(&v31[v73], v75, 8 * v74);
          v37 = v76;
        }

        goto LABEL_97;
      }
    }

    v41 = used - v14;
    v130 = (used - length);
    if (location >= used - v14)
    {
      if (v41)
      {
        v61 = p_storage->list;
        v62 = p_storage->var0;
        v63 = p_storage->size;
        v64 = location + v62;
        v65 = v14 + v62;
        if (v63 <= 1)
        {
          v66 = 1;
        }

        else
        {
          v66 = p_storage->size;
        }

        do
        {
          v67 = v65 + v63 + v63 * (((v65 & ~(v65 >> 63)) - (v65 + (v65 >> 63))) / v66 + (v65 >> 63));
          do
          {
            v67 -= v63;
          }

          while (v67 >= v63);
          v68 = v64 + v63 + v63 * ((v64 >> 63) + ((v64 & ~(v64 >> 63)) - (v64 + (v64 >> 63))) / v66);
          do
          {
            v68 -= v63;
          }

          while (v68 >= v63);
          if (v68 <= v67)
          {
            v69 = v67;
          }

          else
          {
            v69 = v68;
          }

          v70 = v63 - v69;
          if (v41 >= v70)
          {
            v71 = v70;
          }

          else
          {
            v71 = v41;
          }

          memmove(&v61[v68], &v61[v67], 8 * v71);
          v65 += v71;
          v64 += v71;
          v57 = v41 <= v71;
          v41 -= v71;
        }

        while (!v57);
      }
    }

    else
    {
      v42 = p_storage->var0;
      if (location)
      {
        LODWORD(v129) = v24;
        v43 = p_storage->size;
        v128 = p_storage;
        v44 = (p_storage->list + 1);
        v45 = location + v42 - 1;
        v46 = v45 + length;
        if (v43 <= 1)
        {
          v47 = 1;
        }

        else
        {
          v47 = v43;
        }

        do
        {
          v48 = ((v46 & ~(v46 >> 63)) - (v46 + (v46 >> 63))) / v47;
          v49 = v45 + v43 + v43 * (((v45 & ~(v45 >> 63)) - (v45 + (v45 >> 63))) / v47 + (v45 >> 63));
          do
          {
            v49 -= v43;
          }

          while (v49 >= v43);
          v50 = v46 + (v48 + (v46 >> 63)) * v43;
          v51 = v43 + v43 * ((v46 >> 63) + v48);
          v52 = v46 + v51;
          v53 = v44 + 8 * v43 + 8 * v50;
          do
          {
            v52 -= v43;
            v51 -= v43;
            v53 -= 8 * v43;
          }

          while ((v46 + v51) >= v43);
          if (v49 >= (v46 + v51))
          {
            v54 = v46 + v51;
          }

          else
          {
            v54 = v49;
          }

          if (location >= v54 + 1)
          {
            v55 = v54 + 1;
          }

          else
          {
            v55 = location;
          }

          if (v49 < v52)
          {
            v52 = v49;
          }

          if (location >= v52 + 1)
          {
            v56 = v52 + 1;
          }

          else
          {
            v56 = location;
          }

          memmove((v53 - 8 * v56), (v44 - 8 * v55 + 8 * v49), 8 * v55);
          v45 -= v55;
          v46 -= v55;
          v57 = location <= v55;
          location -= v55;
        }

        while (!v57);
        p_storage = v128;
        LODWORD(v42) = v128->var0;
        v24 = v129;
      }

      v58 = v42 + length;
      p_storage->var0 = v58;
      v59 = v58 >= v24;
      v60 = v58 - v24;
      if (v59)
      {
        p_storage->var0 = v60;
      }
    }

    p_storage->state.var0.used = v130;
  }
}

- (void)replaceObjectsInRange:(_NSRange)range withObjects:(const void *)objects count:(unint64_t)count
{
  length = range.length;
  location = range.location;
  v52 = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableArray);
  }

  v11 = [(__NSArrayM *)self count];
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || v11 < location + length)
  {
    if (v11)
    {
      v45 = v11;
      v34 = _os_log_pack_size();
      v37 = &v51 - ((MEMORY[0x1EEE9AC00](v34, v46, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
      v48 = _os_log_pack_fill(v37, v34, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v51, v52, v53, v54);
      v49 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v48, "[__NSArrayM replaceObjectsInRange:withObjects:count:]", location, length, --v45);
      v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v49, "[__NSArrayM replaceObjectsInRange:withObjects:count:]", location, length, v45);
    }

    else
    {
      v34 = _os_log_pack_size();
      v37 = &v51 - ((MEMORY[0x1EEE9AC00](v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
      v38 = _os_log_pack_fill(v37, v34, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds for empty array", v51, v52, v53);
      v39 = __os_log_helper_1_2_3_8_32_8_0_8_0(v38, "[__NSArrayM replaceObjectsInRange:withObjects:count:]", location, length);
      v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v39, "[__NSArrayM replaceObjectsInRange:withObjects:count:]", location, length);
    }

    v50 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v40) osLogPack:0 size:v37, v34];
    objc_exception_throw(v50);
  }

  if (!objects && count)
  {
    v28 = _os_log_pack_size();
    v31 = &v51 - ((MEMORY[0x1EEE9AC00](v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = _os_log_pack_fill(v31, v28, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v51, v52);
    *v32 = 136315394;
    *(v32 + 4) = "[__NSArrayM replaceObjectsInRange:withObjects:count:]";
    *(v32 + 12) = 2048;
    *(v32 + 14) = count;
    v33 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSArrayM replaceObjectsInRange:withObjects:count:]", count);
    goto LABEL_37;
  }

  if (count >> 61)
  {
    v28 = _os_log_pack_size();
    v31 = &v51 - ((MEMORY[0x1EEE9AC00](v28, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = _os_log_pack_fill(v31, v28, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v51, v52);
    *v43 = 136315394;
    *(v43 + 4) = "[__NSArrayM replaceObjectsInRange:withObjects:count:]";
    *(v43 + 12) = 2048;
    *(v43 + 14) = count;
    v33 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSArrayM replaceObjectsInRange:withObjects:count:]", count);
LABEL_37:
    v44 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v33) osLogPack:0 size:v31, v28];
    objc_exception_throw(v44);
  }

  if (count)
  {
    v12 = 0;
    do
    {
      if (!objects[v12])
      {
        v21 = _os_log_pack_size();
        v24 = &v51 - ((MEMORY[0x1EEE9AC00](v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
        v25 = _os_log_pack_fill(v24, v21, 0, &dword_1830E6000, "*** %s: attempt to insert nil object from objects[%lu]", v51, v52);
        *v25 = 136315394;
        *(v25 + 4) = "[__NSArrayM replaceObjectsInRange:withObjects:count:]";
        *(v25 + 12) = 2048;
        *(v25 + 14) = v12;
        v26 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[__NSArrayM replaceObjectsInRange:withObjects:count:]", v12);
        v27 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v26) osLogPack:0 size:v24, v21];
        objc_exception_throw(v27);
      }

      ++v12;
    }

    while (count != v12);
    countCopy = count;
    objectsCopy = objects;
    do
    {
      if ((*objectsCopy & 0x8000000000000000) == 0)
      {
        v15 = *objectsCopy;
      }

      ++objectsCopy;
      --countCopy;
    }

    while (countCopy);
  }

  if (length >= count)
  {
    countCopy2 = count;
  }

  else
  {
    countCopy2 = length;
  }

  if (countCopy2)
  {
    v17 = location;
    objectsCopy2 = objects;
    v19 = countCopy2;
    do
    {
      v20 = *objectsCopy2++;
      [(__NSArrayM *)self replaceObjectAtIndex:v17++ withObject:v20];
      --v19;
    }

    while (v19);
  }

  if (length > count)
  {
    [(__NSArrayM *)self removeObjectsInRange:countCopy2 + location, length - countCopy2];
    goto LABEL_27;
  }

  if (length >= count)
  {
LABEL_27:
    if (!count)
    {
      return;
    }

    goto LABEL_28;
  }

  [(__NSArrayM *)self insertObjects:&objects[countCopy2] count:count - countCopy2 atIndex:countCopy2 + location];
  do
  {
LABEL_28:
    if ((*objects & 0x8000000000000000) == 0)
    {
    }

    ++objects;
    --count;
  }

  while (count);
}

- (void)setObject:(id)object atIndex:(unint64_t)index
{
  v53 = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  }

  v8 = atomic_load(&self->cow);
  p_storage = &self->storage;
  muts = self->storage.state.var0.muts;
  if (muts >> 9 < 0x7D)
  {
    v11 = muts + 1;
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    os_unfair_lock_lock(v8);
    if (!*(v8 + 6))
    {
      [__NSArrayM setObject:atIndex:];
    }

    if (*(v8 + 6) != 1 || *(v8 + 4) != 0)
    {
      --*(v8 + 6);
      _cow_mutate_slow(self, v8, __NSArray_cowCallbacks);
    }

    os_unfair_lock_unlock(v8);
  }

  self->storage.state.var0.muts = v11;
  if (!object)
  {
    v33 = _os_log_pack_size();
    v36 = &v52 - ((MEMORY[0x1EEE9AC00](v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = _os_log_pack_fill(v36, v33, 0, &dword_1830E6000, "*** %s: object cannot be nil", v52);
    *v37 = 136315138;
    *(v37 + 4) = "[__NSArrayM setObject:atIndex:]";
    v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[__NSArrayM setObject:atIndex:]");
    v39 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v36, v33];
    objc_exception_throw(v39);
  }

  used = self->storage.state.var0.used;
  if ((index & 0x8000000000000000) != 0 || used < index)
  {
    if (self->storage.state.var0.used)
    {
      v46 = self->storage.state.var0.used;
      v40 = _os_log_pack_size();
      v43 = &v52 - ((MEMORY[0x1EEE9AC00](v40, v47, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
      v49 = _os_log_pack_fill(v43, v40, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v52, v53, v54);
      v50 = __os_log_helper_1_2_3_8_32_8_0_8_0(v49, "[__NSArrayM setObject:atIndex:]", index, --v46);
      v45 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v50, "[__NSArrayM setObject:atIndex:]", index, v46);
    }

    else
    {
      v40 = _os_log_pack_size();
      v43 = &v52 - ((MEMORY[0x1EEE9AC00](v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = _os_log_pack_fill(v43, v40, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v52, v53);
      *v44 = 136315394;
      *(v44 + 4) = "[__NSArrayM setObject:atIndex:]";
      *(v44 + 12) = 2048;
      *(v44 + 14) = index;
      v45 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[__NSArrayM setObject:atIndex:]", index);
    }

    v51 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v45) osLogPack:0 size:v43, v40];
    objc_exception_throw(v51);
  }

  if (used == index)
  {
    LODWORD(v14) = self->storage.size;
    v15 = used + 1;
    if (v14 < used + 1)
    {
      list = p_storage->list;
      v17 = used * 1.625;
      if (v17 <= v15)
      {
        v17 = v15;
      }

      v18 = malloc_good_size(8 * v17);
      v19 = malloc_type_malloc(v18, 0x80040B8603338uLL);
      if (!v19)
      {
        [__NSArrayM setObject:atIndex:];
      }

      v20 = v19;
      var0 = p_storage->var0;
      if (v14 - var0 >= used)
      {
        v22 = used;
      }

      else
      {
        v22 = v14 - var0;
      }

      memmove(v19, &list[var0], 8 * v22);
      memmove(&v20[v22], list, 8 * (used - v22));
      bzero(&v20[used], v18 - 8 * used);
      free(list);
      p_storage->list = v20;
      v14 = v18 >> 3;
      p_storage->var0 = 0;
      p_storage->size = v18 >> 3;
    }

    v23 = p_storage->var0;
    ++p_storage->state.var0.used;
    v24 = v23 + used;
    if (v14 <= v24)
    {
      v25 = v14;
    }

    else
    {
      v25 = 0;
    }

    p_storage->list[v24 - v25] = object;
    if ((object & 0x8000000000000000) == 0)
    {

      objectCopy = object;
    }
  }

  else
  {
    v27 = p_storage->list;
    size = p_storage->size;
    v29 = p_storage->var0 + index;
    if (size > v29)
    {
      size = 0;
    }

    v30 = v29 - size;
    v31 = v27[v29 - size];
    if (v31 != object)
    {
      if ((object & 0x8000000000000000) == 0)
      {
        objectCopy2 = object;
        v31 = v27[v30];
      }

      v27[v30] = object;
      if (v31 >= 1)
      {
      }
    }
  }
}

- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript
{
  v53 = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  }

  v8 = atomic_load(&self->cow);
  p_storage = &self->storage;
  muts = self->storage.state.var0.muts;
  if (muts >> 9 < 0x7D)
  {
    v11 = muts + 1;
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    os_unfair_lock_lock(v8);
    if (!*(v8 + 6))
    {
      [__NSArrayM setObject:atIndexedSubscript:];
    }

    if (*(v8 + 6) != 1 || *(v8 + 4) != 0)
    {
      --*(v8 + 6);
      _cow_mutate_slow(self, v8, __NSArray_cowCallbacks);
    }

    os_unfair_lock_unlock(v8);
  }

  self->storage.state.var0.muts = v11;
  if (!object)
  {
    v33 = _os_log_pack_size();
    v36 = &v52 - ((MEMORY[0x1EEE9AC00](v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = _os_log_pack_fill(v36, v33, 0, &dword_1830E6000, "*** %s: object cannot be nil", v52);
    *v37 = 136315138;
    *(v37 + 4) = "[__NSArrayM setObject:atIndexedSubscript:]";
    v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[__NSArrayM setObject:atIndexedSubscript:]");
    v39 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v36, v33];
    objc_exception_throw(v39);
  }

  used = self->storage.state.var0.used;
  if ((subscript & 0x8000000000000000) != 0 || used < subscript)
  {
    if (self->storage.state.var0.used)
    {
      v46 = self->storage.state.var0.used;
      v40 = _os_log_pack_size();
      v43 = &v52 - ((MEMORY[0x1EEE9AC00](v40, v47, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
      v49 = _os_log_pack_fill(v43, v40, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v52, v53, v54);
      v50 = __os_log_helper_1_2_3_8_32_8_0_8_0(v49, "[__NSArrayM setObject:atIndexedSubscript:]", subscript, --v46);
      v45 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v50, "[__NSArrayM setObject:atIndexedSubscript:]", subscript, v46);
    }

    else
    {
      v40 = _os_log_pack_size();
      v43 = &v52 - ((MEMORY[0x1EEE9AC00](v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = _os_log_pack_fill(v43, v40, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds for empty array", v52, v53);
      *v44 = 136315394;
      *(v44 + 4) = "[__NSArrayM setObject:atIndexedSubscript:]";
      *(v44 + 12) = 2048;
      *(v44 + 14) = subscript;
      v45 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[__NSArrayM setObject:atIndexedSubscript:]", subscript);
    }

    v51 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v45) osLogPack:0 size:v43, v40];
    objc_exception_throw(v51);
  }

  if (used == subscript)
  {
    LODWORD(v14) = self->storage.size;
    v15 = used + 1;
    if (v14 < used + 1)
    {
      list = p_storage->list;
      v17 = used * 1.625;
      if (v17 <= v15)
      {
        v17 = v15;
      }

      v18 = malloc_good_size(8 * v17);
      v19 = malloc_type_malloc(v18, 0x80040B8603338uLL);
      if (!v19)
      {
        [__NSArrayM setObject:atIndexedSubscript:];
      }

      v20 = v19;
      var0 = p_storage->var0;
      if (v14 - var0 >= used)
      {
        v22 = used;
      }

      else
      {
        v22 = v14 - var0;
      }

      memmove(v19, &list[var0], 8 * v22);
      memmove(&v20[v22], list, 8 * (used - v22));
      bzero(&v20[used], v18 - 8 * used);
      free(list);
      p_storage->list = v20;
      v14 = v18 >> 3;
      p_storage->var0 = 0;
      p_storage->size = v18 >> 3;
    }

    v23 = p_storage->var0;
    ++p_storage->state.var0.used;
    v24 = v23 + used;
    if (v14 <= v24)
    {
      v25 = v14;
    }

    else
    {
      v25 = 0;
    }

    p_storage->list[v24 - v25] = object;
    if ((object & 0x8000000000000000) == 0)
    {

      objectCopy = object;
    }
  }

  else
  {
    v27 = p_storage->list;
    size = p_storage->size;
    v29 = p_storage->var0 + subscript;
    if (size > v29)
    {
      size = 0;
    }

    v30 = v29 - size;
    v31 = v27[v29 - size];
    if (v31 != object)
    {
      if ((object & 0x8000000000000000) == 0)
      {
        objectCopy2 = object;
        v31 = v27[v30];
      }

      v27[v30] = object;
      if (v31 >= 1)
      {
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  return __NSArrayM_copy(self);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  if (!atomic_load(&self->cow))
  {
    v6 = _cow_create(self, 1);
    v7 = 0;
    atomic_compare_exchange_strong(&self->cow, &v7, v6);
    if (v7)
    {
      free(v6);
    }
  }

  v8 = objc_opt_self();
  v9 = __CFAllocateObject(v8, 0);
  v10 = atomic_load(&self->cow);
  _cow_copy(self, 1, v10, __NSArray_cowCallbacks, v9, 1);
  return v9;
}

@end