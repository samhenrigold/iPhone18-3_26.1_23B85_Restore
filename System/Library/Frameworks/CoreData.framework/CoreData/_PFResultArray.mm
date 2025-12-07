@interface _PFResultArray
- (BOOL)_setPurgeable:(BOOL)purgeable;
- (_PFResultArray)initWithObjects:(id *)objects count:(unsigned int)count store:(id)store metadata:(id)metadata;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)indexOfObject:(id)object inRange:(_NSRange)range;
- (unint64_t)indexOfObjectIdenticalTo:(id)to inRange:(_NSRange)range;
- (void)dealloc;
- (void)getObjects:(id *)objects;
- (void)getObjects:(id *)objects range:(_NSRange)range;
- (void)release;
@end

@implementation _PFResultArray

- (void)release
{
  if (atomic_fetch_add_explicit(&self->_cd_rc, 0xFFFFFFFF, memory_order_relaxed) <= 0)
  {
    self->_cd_rc += 0x20000000;
    [(_PFResultArray *)self dealloc];
  }
}

- (unint64_t)count
{
  if ((*&self->_resultSet->var7 & 0x40) != 0)
  {
    return 0;
  }

  else
  {
    return self->_count;
  }
}

- (void)dealloc
{
  resultSet = self->_resultSet;
  if (resultSet)
  {
    bufferResultSetDeallocate(resultSet);
  }

  self->_weakRequestStore = 0;
  self->_metadata = 0;
  v4.receiver = self;
  v4.super_class = _PFResultArray;
  [(_PFResultArray *)&v4 dealloc];
}

- (_PFResultArray)initWithObjects:(id *)objects count:(unsigned int)count store:(id)store metadata:(id)metadata
{
  v12.receiver = self;
  v12.super_class = _PFResultArray;
  v9 = [(_PFResultArray *)&v12 init:objects];
  v10 = v9;
  if (v9)
  {
    v9->_count = objects->var0;
    v9->_weakRequestStore = [[_PFWeakReference alloc] initWithObject:store];
    v10->_resultSet = objects;
    v10->_resultType = 2;
    v10->_metadata = metadata;
  }

  return v10;
}

- (unint64_t)indexOfObject:(id)object inRange:(_NSRange)range
{
  if (!object)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  length = range.length;
  location = range.location;
  v8 = range.location + range.length;
  v9 = [object methodForSelector:sel_isEqual_];
  if (location >= v8)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v9;
  while (1)
  {
    v11 = [(_PFResultArray *)self objectAtIndex:location];
    if (v11 == object || (v10(object, sel_isEqual_, v11) & 1) != 0)
    {
      break;
    }

    ++location;
    if (!--length)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return location;
}

- (unint64_t)indexOfObjectIdenticalTo:(id)to inRange:(_NSRange)range
{
  if (!to)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((*&self->_resultSet->var7 & 0x40) != 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  length = range.length;
  location = range.location;
  if (range.location >= range.location + range.length)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  while ([(_PFResultArray *)self objectAtIndex:location]!= to)
  {
    ++location;
    if (!--length)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return location;
}

- (BOOL)_setPurgeable:(BOOL)purgeable
{
  resultSet = self->_resultSet;
  if (purgeable)
  {
    return bufferResultSetPurgeable(resultSet);
  }

  else
  {
    return bufferResultSetNonPurgeable(resultSet);
  }
}

- (id)objectAtIndex:(unint64_t)index
{
  v35 = *MEMORY[0x1E69E9840];
  resultSet = self->_resultSet;
  var7 = resultSet->var7;
  if ((*&var7 & 0x10) != 0)
  {
    if ((*&var7 & 0x40) != 0)
    {
      v15 = MEMORY[0x1E695DF30];
      v16 = *MEMORY[0x1E695D940];
      v24 = _NSMethodExceptionProem();
      v17 = @"%@: backing buffer has been purged";
    }

    else
    {
      if ((*&var7 & 0x20) == 0)
      {
        goto LABEL_2;
      }

      v15 = MEMORY[0x1E695DF30];
      v16 = *MEMORY[0x1E695D940];
      v24 = _NSMethodExceptionProem();
      v17 = @"%@: backing buffer can be purged";
    }

    [v15 raise:v16 format:{v17, v24, v25, v26}];
    return 0;
  }

LABEL_2:
  if (self->_count <= index)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%@: index (%lu) beyond bounds (%lu)", _NSMethodExceptionProem(), index, self->_count}];
    return 0;
  }

  if (!resultSet->var5)
  {
    v7 = 0;
LABEL_25:
    v9 = resultSet->var9[v7];
    goto LABEL_26;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = resultSet->var9[v7];
    v10 = *v9;
    if (v8 + (v10 - 1) >= index)
    {
      break;
    }

    v8 += v10;
LABEL_14:
    if (++v7 >= resultSet->var5)
    {
      goto LABEL_25;
    }
  }

  if (v10 < index - v8)
  {
    v11 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v12 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v14 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v12)
      {
        if (v14)
        {
          goto LABEL_16;
        }
      }

      else if (v14)
      {
LABEL_16:
        *buf = 134218752;
        v28 = v7;
        v29 = 2048;
        v30 = 0;
        v31 = 2048;
        v32 = v8;
        v33 = 2048;
        indexCopy = index;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Index beyond buffer: %ld, %ld, %ld, %ld\n", buf, 0x2Au);
      }
    }

    _NSCoreDataLog_console(1, "Index beyond buffer: %ld, %ld, %ld, %ld", v7, 0, v8, index);
    objc_autoreleasePoolPop(v11);
    resultSet = self->_resultSet;
    goto LABEL_14;
  }

  v22 = index - v8;
  if (index == v8)
  {
LABEL_26:
    v19 = 8;
    goto LABEL_27;
  }

  v23 = v9[1];
  v19 = 8;
  do
  {
    v19 += *(v9 + v23);
    v23 += 4;
    --v22;
  }

  while (v22);
LABEL_27:
  v18 = v9 + v19;
  if (!*(v9 + v19))
  {
    v20 = objc_opt_class();
    object_setClass(v18, v20);
  }

  [v18 _setParentBuffer:self];
  return v18;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if ((*&self->_resultSet->var7 & 0x40) != 0)
  {
    return 0;
  }

  var0 = state->var0;
  if (!state->var0)
  {
    state->var2 = &self->_count;
  }

  result = 0;
  state->var1 = objects;
  if (count)
  {
    count = self->_count;
    if (var0 < count)
    {
      result = 0;
      do
      {
        v12 = result;
        v13 = var0 + result;
        result = [(_PFResultArray *)self objectAtIndex:var0 + result];
        result = v12 + 1;
        objects[v12] = result;
      }

      while (v13 + 1 < count && result < count);
      var0 += result;
    }
  }

  state->var0 = var0;
  return result;
}

- (void)getObjects:(id *)objects
{
  v12[1] = *MEMORY[0x1E69E9840];
  count = self->_count;
  MEMORY[0x1EEE9AC00](self);
  v8 = v12 - v7;
  if (count > 0x200)
  {
    v8 = NSAllocateScannedUncollectable();
    if (self->_count)
    {
LABEL_3:
      v9 = 0;
      do
      {
        *&v8[8 * v9] = [(_PFResultArray *)self objectAtIndex:v9];
        ++v9;
        v10 = self->_count;
      }

      while (v9 < v10);
      v11 = 8 * v10;
      goto LABEL_8;
    }
  }

  else
  {
    bzero(v12 - v7, 8 * v6);
    if (count)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_8:
  memmove(objects, v8, v11);
  if (count >= 0x201)
  {
    NSZoneFree(0, v8);
  }
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  v14 = *MEMORY[0x1E69E9840];
  if (range.location + range.length > self->_count)
  {
    self = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%@: index (%lu) beyond bounds (%lu)", _NSMethodExceptionProem(), range.location + range.length - 1, self->_count}];
  }

  if (length)
  {
    v13 = &v13;
    MEMORY[0x1EEE9AC00](self);
    v9 = &v13 - v8;
    if (length > 0x200)
    {
      v9 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v13 - v8, 8 * length);
    }

    if (location < selfCopy->_count)
    {
      v10 = 1;
      v11 = v9;
      do
      {
        *v11++ = [(_PFResultArray *)selfCopy objectAtIndex:location + v10 - 1, v13, v14];
        v12 = location + v10 < selfCopy->_count && length > v10;
        ++v10;
      }

      while (v12);
    }

    memmove(objects, v9, 8 * length);
    if (length >= 0x201)
    {
      NSZoneFree(0, v9);
    }
  }
}

@end