@interface __NSSingleObjectSetI
- (BOOL)containsObject:(id)object;
- (id)member:(id)member;
- (id)objectEnumerator;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects count:(unint64_t)count;
@end

@implementation __NSSingleObjectSetI

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  element = self->element;
  if (element >= 1)
  {
  }

  v4.receiver = self;
  v4.super_class = __NSSingleObjectSetI;
  [(__NSSingleObjectSetI *)&v4 dealloc];
}

- (id)objectEnumerator
{
  v2 = [objc_allocWithZone(__NSSingleObjectEnumerator) initWithObject:self->element collection:self];

  return v2;
}

- (id)member:(id)member
{
  element = self->element;
  if (element != member && ![member isEqual:element])
  {
    return 0;
  }

  return element;
}

- (BOOL)containsObject:(id)object
{
  element = self->element;
  if (element == object || (v4 = [object isEqual:element]) != 0)
  {
    LOBYTE(v4) = element != 0;
  }

  return v4;
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
    *(v10 + 4) = "[__NSSingleObjectSetI countByEnumeratingWithState:objects:count:]";
    *(v10 + 12) = 2048;
    *(v10 + 14) = count;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSSingleObjectSetI countByEnumeratingWithState:objects:count:]", count);
    goto LABEL_12;
  }

  if (count >> 61)
  {
    v8 = _os_log_pack_size();
    v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill(v9, v8, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v15, v16);
    *v13 = 136315394;
    *(v13 + 4) = "[__NSSingleObjectSetI countByEnumeratingWithState:objects:count:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = count;
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSSingleObjectSetI countByEnumeratingWithState:objects:count:]", count);
LABEL_12:
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v9, v8];
    objc_exception_throw(v14);
  }

  var0 = state->var0;
  if (state->var0)
  {
    return 0;
  }

  state->var1 = objects;
  state->var2 = &countByEnumeratingWithState_objects_count__const_mu_1;
  if (objects && count)
  {
    *objects = self->element;
    var0 = 1;
    state->var0 = 1;
  }

  return var0;
}

- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v6 = _os_log_pack_size();
    v7 = _os_log_pack_fill(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6, 0, &dword_1830E6000, "*** %s: block cannot be nil", v10[0]);
    *v7 = 136315138;
    *(v7 + 4) = "[__NSSingleObjectSetI enumerateObjectsWithOptions:usingBlock:]";
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSSingleObjectSetI enumerateObjectsWithOptions:usingBlock:]");
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6];
    objc_exception_throw(v9);
  }

  HIBYTE(v10[0]) = 0;
  v5 = _CFAutoreleasePoolPush();
  __NSSET_IS_CALLING_OUT_TO_A_BLOCK__(block);
  _CFAutoreleasePoolPop(v5);
}

- (void)getObjects:(id *)objects count:(unint64_t)count
{
  v13 = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v5 = _os_log_pack_size();
    v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = _os_log_pack_fill(v6, v5, 0, &dword_1830E6000, "*** %s: pointer to objects array is NULL but length is %lu", v12, v13);
    *v7 = 136315394;
    *(v7 + 4) = "[__NSSingleObjectSetI getObjects:count:]";
    *(v7 + 12) = 2048;
    *(v7 + 14) = count;
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSSingleObjectSetI getObjects:count:]", count);
    goto LABEL_9;
  }

  if (count >> 61)
  {
    v5 = _os_log_pack_size();
    v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = _os_log_pack_fill(v6, v5, 0, &dword_1830E6000, "*** %s: count (%lu) of objects array is ridiculous", v12, v13);
    *v10 = 136315394;
    *(v10 + 4) = "[__NSSingleObjectSetI getObjects:count:]";
    *(v10 + 12) = 2048;
    *(v10 + 14) = count;
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSSingleObjectSetI getObjects:count:]", count);
LABEL_9:
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v8) osLogPack:0 size:v6, v5];
    objc_exception_throw(v11);
  }

  if (count)
  {
    *objects = self->element;
  }
}

@end