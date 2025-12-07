@interface __NSSingleObjectArrayI
- (BOOL)isEqualToArray:(id)array;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectEnumerator;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects range:(_NSRange)range;
@end

@implementation __NSSingleObjectArrayI

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  object = self->_object;
  if (object >= 1)
  {
  }

  v4.receiver = self;
  v4.super_class = __NSSingleObjectArrayI;
  [(__NSSingleObjectArrayI *)&v4 dealloc];
}

- (id)objectEnumerator
{
  v2 = [objc_allocWithZone(__NSSingleObjectEnumerator) initWithObject:self->_object collection:self];

  return v2;
}

- (id)objectAtIndex:(unint64_t)index
{
  v11 = *MEMORY[0x1E69E9840];
  if (index)
  {
    v5 = _os_log_pack_size();
    v6 = _os_log_pack_fill(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5, 0, &dword_1830E6000, "*** %s: index %lu beyond bounds [0 .. %lu]", v10, v11, v12);
    v7 = __os_log_helper_1_2_3_8_32_8_0_8_0(v6, "[__NSSingleObjectArrayI objectAtIndex:]", index, 0);
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v7, "[__NSSingleObjectArrayI objectAtIndex:]", index, 0);
    v9 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5];
    objc_exception_throw(v9);
  }

  return self->_object;
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  v17 = *MEMORY[0x1E69E9840];
  if ((range.location & 0x8000000000000000) != 0 || (range.length & 0x8000000000000000) != 0 || range.location + range.length >= 2)
  {
    length = range.length;
    location = range.location;
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11, 0, &dword_1830E6000, "*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v16, v17, v18, v19);
    v13 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v12, "[__NSSingleObjectArrayI getObjects:range:]", location, length, 0);
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v13, "[__NSSingleObjectArrayI getObjects:range:]", location, length, 0);
    v15 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11];
    objc_exception_throw(v15);
  }

  if (!objects && range.length)
  {
    v4 = range.length;
    v5 = _os_log_pack_size();
    v6 = _os_log_pack_fill(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v16, v17);
    *v6 = 136315394;
    *(v6 + 4) = "[__NSSingleObjectArrayI getObjects:range:]";
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSSingleObjectArrayI getObjects:range:]", v4);
    v8 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v7) osLogPack:0 size:&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5];
    objc_exception_throw(v8);
  }

  if (range.length)
  {
    *objects = self->_object;
  }
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
    *(v9 + 4) = "[__NSSingleObjectArrayI countByEnumeratingWithState:objects:count:]";
    *(v9 + 12) = 2048;
    *(v9 + 14) = count;
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSSingleObjectArrayI countByEnumeratingWithState:objects:count:]", count);
    goto LABEL_10;
  }

  if (count >> 61)
  {
    v7 = _os_log_pack_size();
    v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v8, v7, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v14, v15);
    *v12 = 136315394;
    *(v12 + 4) = "[__NSSingleObjectArrayI countByEnumeratingWithState:objects:count:]";
    *(v12 + 12) = 2048;
    *(v12 + 14) = count;
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSSingleObjectArrayI countByEnumeratingWithState:objects:count:]", count);
LABEL_10:
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v8, v7];
    objc_exception_throw(v13);
  }

  if (state->var0)
  {
    return 0;
  }

  state->var1 = &self->_object;
  state->var2 = &countByEnumeratingWithState_objects_count__const_mu_7;
  state->var0 = -1;
  return 1;
}

- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6, 0, &dword_1830E6000, "*** %s: block cannot be nil", v10[0]);
    *v7 = 136315138;
    *(v7 + 4) = "[__NSSingleObjectArrayI enumerateObjectsWithOptions:usingBlock:]";
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSSingleObjectArrayI enumerateObjectsWithOptions:usingBlock:]");
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v9);
  }

  HIBYTE(v10[0]) = 0;
  v5 = _CFAutoreleasePoolPush();
  __NSARRAY_IS_CALLING_OUT_TO_A_BLOCK__(block);
  _CFAutoreleasePoolPop(v5);
}

- (BOOL)isEqualToArray:(id)array
{
  selfCopy = self;
  v12[1] = *MEMORY[0x1E69E9840];
  if (array)
  {
    if ((_NSIsNSArray(array) & 1) == 0)
    {
      v7 = _os_log_pack_size();
      v8 = _os_log_pack_fill(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_1830E6000, "*** %s: array argument is not an NSArray", v12[0]);
      *v8 = 136315138;
      *(v8 + 4) = "[__NSSingleObjectArrayI isEqualToArray:]";
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[__NSSingleObjectArrayI isEqualToArray:]");
      v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
      objc_exception_throw(v10);
    }

    if (array == selfCopy)
    {
      goto LABEL_7;
    }

    if ([array count] != 1)
    {
      LOBYTE(self) = 0;
      return self;
    }

    v5 = [array objectAtIndexedSubscript:0];
    object = selfCopy->_object;
    if (object == v5 || (LODWORD(self) = [object isEqual:?], self))
    {
LABEL_7:
      LOBYTE(self) = 1;
    }
  }

  else
  {
    LOBYTE(self) = self == 0;
  }

  return self;
}

@end