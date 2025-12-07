@interface NSMethodSignature
+ (NSMethodSignature)signatureWithObjCTypes:(const char *)types;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (Class)_classForObjectAtArgumentIndex:(int64_t)index;
- (NSMethodFrameArgInfo)_argInfo:(int64_t)info;
- (NSUInteger)methodReturnLength;
- (const)_cTypeString;
- (const)getArgumentTypeAtIndex:(NSUInteger)idx;
- (const)methodReturnType;
- (id)_initWithROMEntry:(const CFMethodSignatureROMEntry *)entry;
- (id)_protocolsForObjectAtArgumentIndex:(int64_t)index;
- (id)_signatureForBlockAtArgumentIndex:(int64_t)index;
- (id)_typeString;
- (id)debugDescription;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation NSMethodSignature

- (const)_cTypeString
{
  if ((self & 0x8000000000000000) == 0)
  {
    goto LABEL_12;
  }

  v2 = 0;
  v3 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ self;
  v5 = v4 & 7;
  do
  {
    if (v5 == *(MEMORY[0x1E69E5900] + v2))
    {
      break;
    }

    ++v2;
  }

  while (v2 != 7);
  if ((~v2 & 7) == 0 && ((v2 | v4) & 0x7F80000000000000) == 0x600000000000000)
  {
    v6 = v5 == 7;
    v7 = 0xFFFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = 0xFFFFFFFFFFFFFLL;
    }

    p_typeString = (__CFGetSignatureROMEntryAtIndex(v7 & (v4 >> 3), a2) + 1);
  }

  else
  {
LABEL_12:
    p_typeString = &self->_typeString;
  }

  return *p_typeString;
}

- (const)methodReturnType
{
  v2 = [(NSMethodSignature *)self _argInfo:-1];
  if ((*(v2 + 17) & 0x80) != 0)
  {
    v2 = v2->var0;
  }

  return v2->var25;
}

- (NSUInteger)methodReturnLength
{
  v2 = [(NSMethodSignature *)self _argInfo:-1];
  if ((*(v2 + 17) & 0x80) != 0)
  {
    v2 = v2->var0;
  }

  return v2->var2;
}

- (id)_typeString
{
  v13[1] = *MEMORY[0x1E69E9840];
  FrameDescriptor = _getFrameDescriptor(self, a2);
  v3 = *FrameDescriptor;
  if ((*(*FrameDescriptor + 34) & 0x80) != 0)
  {
    v3 = *v3;
  }

  v4 = strlen(v3 + 37);
  for (i = *(FrameDescriptor + 8); i; i = *(i + 1))
  {
    v6 = i;
    if ((*(i + 17) & 0x80) != 0)
    {
      v6 = *i;
    }

    v4 += strlen(v6 + 37);
  }

  v7 = v4 + 1;
  if (v7 < 0x401)
  {
    if (v7)
    {
      v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v8, v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  }

  strlcpy(v8, v3 + 37, v7);
  while (1)
  {
    FrameDescriptor = *(FrameDescriptor + 8);
    if (!FrameDescriptor)
    {
      break;
    }

    v9 = FrameDescriptor;
    if ((*(FrameDescriptor + 34) & 0x80) != 0)
    {
      v9 = *FrameDescriptor;
    }

    strlcat(v8, (v9 + 37), v7);
  }

  v10 = CFStringCreateWithCString(&__kCFAllocatorSystemDefault, v8, 0x8000100u);
  v11 = _CFAutoreleasePoolAddObject(0, v10);
  if (v7 >= 0x401)
  {
    free(v8);
  }

  return v11;
}

+ (void)initialize
{
  if (NSMethodSignature == self && *MEMORY[0x1E69E5908] != 0)
  {
    _objc_registerTaggedPointerClass();
  }
}

+ (NSMethodSignature)signatureWithObjCTypes:(const char *)types
{
  v56 = *MEMORY[0x1E69E9840];
  if (!types)
  {
    return 0;
  }

  v5 = strlen(types);
  if (!v5)
  {
    return 0;
  }

  v6 = __CFSearchSignatureROM(types, v5);
  if (v6 != -1)
  {
    Value = (8 * (v6 & 0xFFFFFFFFFFFFFLL)) | 0x8600000000000007;
    v8 = *MEMORY[0x1E69E5910] ^ Value;
    if ((~v8 & 0xC000000000000007) != 0)
    {
      return (v8 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v8 & 7)));
    }

    return Value;
  }

  if (!signatureWithObjCTypes__cache)
  {
    *keyCallBacks = xmmword_1EF067840;
    *&keyCallBacks[16] = *&off_1EF067850;
    *&keyCallBacks[32] = xmmword_1EF067860;
    Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, keyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v11 = 0;
    atomic_compare_exchange_strong(&signatureWithObjCTypes__cache, &v11, Mutable);
    if (v11)
    {
      CFRelease(Mutable);
    }
  }

  os_unfair_lock_lock_with_options();
  Value = CFDictionaryGetValue(signatureWithObjCTypes__cache, types);
  os_unfair_lock_unlock(&signatureWithObjCTypes__lock);
  if (!Value)
  {
    v12 = _os_feature_enabled_impl();
    if (v12)
    {
      v14 = _CFMethodSignatureROMLog(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *keyCallBacks = 136315138;
        *&keyCallBacks[4] = types;
        _os_log_impl(&dword_1830E6000, v14, OS_LOG_TYPE_DEFAULT, "MISS: %s", keyCallBacks, 0xCu);
      }
    }

    v38 = types;
    v55 = 0;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    memset(&keyCallBacks[24], 0, 32);
    v15 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004062D53EE8uLL);
    v16 = parseFrameArgumentInfo(&v38, 0, 0, 0);
    v17 = v16;
    *v15 = v16;
    if (!v16)
    {
      v36 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"+[NSMethodSignature signatureWithObjCTypes:]: unsupported type encoding spec '%s'", types);
      v37 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v36), 0];
      objc_exception_throw(v37);
    }

    *keyCallBacks = xmmword_1834466E0;
    *&keyCallBacks[16] = 224;
    v18 = *(v16 + 36);
    if (v18 <= 0x62)
    {
      v19 = v18 - 35;
      if (v19 > 0x3B)
      {
LABEL_25:
        if (*v38)
        {
          v22 = 0;
          do
          {
            v41 = parseFrameArgumentInfo(&v38, 0, 0, 0);
            if (!v41)
            {
              break;
            }

            ++v15[4];
            v15[5] = computeReturnFrameExtent(&v41, keyCallBacks);
            v23 = v41;
            if (!*(v15 + 1))
            {
              *(v15 + 1) = v41;
            }

            if (v22)
            {
              *(v22 + 1) = v23;
            }

            v22 = v23;
          }

          while (*v38);
        }

        v24 = [self alloc];
        v24[1] = v15;
        is_memory_immutable = _dyld_is_memory_immutable();
        v26 = types;
        if ((is_memory_immutable & 1) == 0)
        {
          v26 = strdup(types);
        }

        v24[2] = v26;
        v27 = v15[4];
        if (v27)
        {
          v28 = *(*(v15 + 1) + 8);
          if (v27 == 1 || *(v28 + 36) != 58)
          {
            v29 = 1;
          }

          else
          {
            v28 = *(v28 + 8);
            v29 = 2;
          }

          v30 = v27 >= v29;
          v31 = v27 - v29;
          if (v31 != 0 && v30)
          {
            while ((*(v28 + 34) & 0x2000) != 0)
            {
              v28 = *(v28 + 8);
              if (!--v31)
              {
                goto LABEL_44;
              }
            }
          }

          else
          {
LABEL_44:
            v24[3] |= 2uLL;
          }
        }

        os_unfair_lock_lock_with_options();
        Value = CFDictionaryGetValue(signatureWithObjCTypes__cache, types);
        if (!Value)
        {
          CFDictionarySetValue(signatureWithObjCTypes__cache, types, v24);
          Value = v24;
        }

        os_unfair_lock_unlock(&signatureWithObjCTypes__lock);

        return Value;
      }

      if (((1 << v19) & 0x8034241A0800081) == 0)
      {
        if (v19 != 33)
        {
          if (v19 == 56)
          {
            v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"+[NSMethodSignature signatureWithObjCTypes:]: unsupported return type encoding spec '%s'", v16 + 37);
            v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20), 0];
            objc_exception_throw(v21);
          }

          goto LABEL_25;
        }

        goto LABEL_55;
      }

LABEL_24:
      v16[3] = 8;
      *(v16 + 32) = 0;
      *(v16 + 33) = *(v16 + 16) - 8;
      goto LABEL_25;
    }

    if (v18 - 102 <= 0x15)
    {
      if (((1 << (v18 - 102)) & 0x6848) != 0)
      {
        goto LABEL_24;
      }

      if (v18 == 102)
      {
        v16[3] = 0x5000000010;
        v32 = -3072;
        goto LABEL_57;
      }

      if (v18 == 123)
      {
        v41 = 0;
        v40 = 0;
        if (__NSMFAIsHFA_arm64(v16, &v40, &v41))
        {
          v39 = 0;
          __NSMFASetRegisterOffsetsForHFA_arm64(v17, 80, &v39);
        }

        else if (*(v17 + 16) < 0x11u)
        {
          copyMemStateToFrameState(v17);
        }

        else
        {
          v33 = strlen((v17 + 37));
          v34 = malloc_type_calloc(1uLL, v33 + 42, 0x1020040C2EE21EDuLL);
          *v34 = v17;
          v34[1] = xmmword_1834466F0;
          *(v34 + 17) |= 0x1082u;
          *(v34 + 18) = 24158;
          v35 = strlen((v17 + 37));
          memmove(v34 + 38, (v17 + 37), v35 + 1);
          copyMemStateToFrameState(*v17);
          *v15 = v34;
        }

        goto LABEL_25;
      }
    }

    if (v18 == 100)
    {
LABEL_55:
      v16[3] = 0x5000000010;
      v32 = -2048;
LABEL_57:
      *(v16 + 16) = v32;
      goto LABEL_25;
    }

    if (v18 != 99)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  return Value;
}

- (id)_initWithROMEntry:(const CFMethodSignatureROMEntry *)entry
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSMethodSignature;
  result = [(NSMethodSignature *)&v6 init];
  if (result)
  {
    *(result + 1) = entry->var0;
    var2 = entry->var2;
    *(result + 2) = entry->var1;
    *(result + 3) = var2;
  }

  return result;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  if ((self->_flags & 4) == 0)
  {
    frameDescriptor = self->_frameDescriptor;
    if (frameDescriptor)
    {
      __NSMethodFrameArgInfoDestroy(&frameDescriptor->var0->var0);
      __NSMethodFrameArgInfoDestroy(&self->_frameDescriptor->var1->var0);
      free(self->_frameDescriptor);
    }

    if (self->_typeString)
    {
      strlen(self->_typeString);
      if ((_dyld_is_memory_immutable() & 1) == 0)
      {
        free(self->_typeString);
      }
    }
  }

  v4.receiver = self;
  v4.super_class = NSMethodSignature;
  [(NSMethodSignature *)&v4 dealloc];
}

- (NSMethodFrameArgInfo)_argInfo:(int64_t)info
{
  result = _getFrameDescriptor(self, a2);
  if (info == -1)
  {
    return result->var0;
  }

  v5 = info + 1;
  do
  {
    result = result->var1;
    --v5;
  }

  while (v5 > 0);
  return result;
}

- (id)_signatureForBlockAtArgumentIndex:(int64_t)index
{
  v7 = *MEMORY[0x1E69E9840];
  result = [(NSMethodSignature *)self _argInfo:index];
  if (result)
  {
    if ((~*(result + 17) & 0xA000) != 0 || !*result)
    {
      return 0;
    }

    else
    {
      v4 = strnlen(result + 37, 0x400uLL);
      result = 0;
      if (v4 >= 7 && v4 != 1024)
      {
        v5 = v4 - 4;
        __strncpy_chk();
        v6[v5] = 0;
        return [NSMethodSignature signatureWithObjCTypes:v6];
      }
    }
  }

  return result;
}

- (Class)_classForObjectAtArgumentIndex:(int64_t)index
{
  if (index < -1 || (index & 0x8000000000000000) == 0 && [(NSMethodSignature *)self numberOfArguments]<= index)
  {
    return 0;
  }

  v5 = [(NSMethodSignature *)self _argInfo:index];
  if (!v5)
  {
    return 0;
  }

  if ((*(v5 + 17) & 0x2000) == 0)
  {
    return 0;
  }

  var0 = v5->var0;
  if (!v5->var0 || (*(var0 + 17) & 0x2000) == 0)
  {
    return 0;
  }

  return objc_getClass(var0->var25);
}

- (id)_protocolsForObjectAtArgumentIndex:(int64_t)index
{
  if (index < -1)
  {
    return 0;
  }

  v13 = v4;
  v14 = v3;
  if ((index & 0x8000000000000000) == 0 && [(NSMethodSignature *)self numberOfArguments]<= index)
  {
    return 0;
  }

  result = [(NSMethodSignature *)self _argInfo:index, v13, v14, v5, v6];
  if (!result)
  {
    return result;
  }

  if ((*(result + 17) & 0x2000) == 0)
  {
    return 0;
  }

  v10 = *result;
  if (!*result)
  {
    return 0;
  }

  if ((*(v10 + 34) & 0x2000) != 0)
  {
    v10 = *(v10 + 8);
    if (!v10)
    {
      return 0;
    }
  }

  v11 = +[(NSArray *)NSMutableArray];
  do
  {
    Protocol = objc_getProtocol((v10 + 37));
    if (Protocol)
    {
      [(NSArray *)v11 addObject:Protocol];
    }

    v10 = *(v10 + 8);
  }

  while (v10);
  if ([(NSArray *)v11 count])
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

- (const)getArgumentTypeAtIndex:(NSUInteger)idx
{
  FrameDescriptor = _getFrameDescriptor(self, a2);
  if (*(FrameDescriptor + 16) <= idx)
  {
    v9 = FrameDescriptor;
    v10 = __CFExceptionProem(self, a2);
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: index (%lu) out of bounds [0, %ld]", v10, idx, *(v9 + 16) - 1);
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
    objc_exception_throw(v12);
  }

  v7 = [(NSMethodSignature *)self _argInfo:idx];
  if ((*(v7 + 17) & 0x80) != 0)
  {
    v7 = v7->var0;
  }

  return v7->var25;
}

- (unint64_t)hash
{
  FrameDescriptor = _getFrameDescriptor(self, a2);
  v3 = __NSMS5(*FrameDescriptor);
  return v3 + __NSMS5(FrameDescriptor[1]);
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v9) = 1;
  }

  else if (equal && (objc_opt_isKindOfClass() & 1) != 0)
  {
    FrameDescriptor = _getFrameDescriptor(self, v5);
    v8 = _getFrameDescriptor(equal, v7);
    v9 = __NSMS6(*FrameDescriptor, *v8);
    if (v9)
    {
      v10 = FrameDescriptor[1];
      v11 = v8[1];

      LOBYTE(v9) = __NSMS6(v10, v11);
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)debugDescription
{
  v12 = *MEMORY[0x1E69E9840];
  FrameDescriptor = _getFrameDescriptor(self, a2);
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v11.receiver = self;
  v11.super_class = NSMethodSignature;
  v5 = [&v11 description];
  if ((*(*FrameDescriptor + 34) & 0x40) != 0)
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  [(__CFString *)Mutable appendFormat:@"%@\n    number of arguments = %d\n    frame size = %d\n    is special struct return? %s\n", v5, *(FrameDescriptor + 16), *(FrameDescriptor + 20), v6];
  [(__CFString *)Mutable appendFormat:@"    return value: -------- -------- -------- --------\n"];
  v7 = *FrameDescriptor;
  if ((*(*FrameDescriptor + 34) & 0x80) != 0)
  {
    v7 = *v7;
  }

  __NSMS7(Mutable, v7, 2);
  v8 = *(FrameDescriptor + 8);
  if (v8)
  {
    v9 = 0;
    do
    {
      [(__CFString *)Mutable appendFormat:@"    argument %ld: -------- -------- -------- --------\n", v9];
      __NSMS7(Mutable, v8, 2);
      ++v9;
      v8 = v8[1];
    }

    while (v8);
  }

  return Mutable;
}

@end