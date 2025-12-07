@interface NSInvocation
+ (id)_invocationWithMethodSignature:(id)signature frame:(void *)frame;
- (SEL)selector;
- (id)copyWithZone:(_NSZone *)zone;
- (id)target;
- (uint64_t)_initWithMethodSignature:(const void *)signature frame:(void *)frame buffer:(size_t)buffer size:;
- (void)_addAttachedObject:(id)object;
- (void)dealloc;
- (void)getArgument:(void *)argumentLocation atIndex:(NSInteger)idx;
- (void)invoke;
- (void)invokeUsingIMP:(IMP)imp;
- (void)invokeWithTarget:(id)target;
- (void)retainArguments;
- (void)setArgument:(void *)argumentLocation atIndex:(NSInteger)idx;
- (void)setSelector:(SEL)selector;
- (void)setTarget:(id)target;
@end

@implementation NSInvocation

- (void)invoke
{
  v19[1] = *MEMORY[0x1E69E9840];
  magic = self->_magic;
  if (magic_cookie_oGuard != -1)
  {
    [NSInvocation invoke];
  }

  if (magic != magic_cookie_oValue)
  {
    [NSInvocation invoke];
  }

  v19[0] = 0;
  [(NSInvocation *)self getArgument:v19 atIndex:0];
  if (v19[0])
  {
    _frameDescriptor = [(NSMethodSignature *)self->_signature _frameDescriptor];
    var0 = _frameDescriptor->var0;
    if ((*(_frameDescriptor->var0 + 17) & 0x80) != 0 && !*(self->_frame + *(var0 + 28) + *(var0 + 32)))
    {
      __NSICreateBackingForArgumentIfNeeded(self, var0, -1, 0);
    }

    v6 = objc_lookUpClass("NSBlock");
    for (i = object_getClass(v19[0]); ; i = class_getSuperclass(i))
    {
      v8 = MEMORY[0x1E69E5918];
      if (!i)
      {
        goto LABEL_13;
      }

      if (i == v6)
      {
        break;
      }
    }

    v8 = *(v19[0] + 2);
    if (v8)
    {
LABEL_13:
      v9 = v8;
      goto LABEL_14;
    }

    v9 = 0;
LABEL_14:
    [(NSMethodSignature *)self->_signature numberOfArguments];
    objc_opt_class();
    frameLength = [(NSMethodSignature *)self->_signature frameLength];
    if (frameLength)
    {
      if ((frameLength & 7) != 0)
      {
        [NSInvocation invoke];
      }

      frame = self->_frame;
      v13 = 8;
      do
      {
        frame += 8;
        --v13;
      }

      while (v13);
    }

    if (v11 != self->_pac_signature)
    {
      _NSIPoisoned();
    }

    __invoking___(v9, self->_retdata, self->_frame, [(NSMethodSignature *)self->_signature frameLength]);
    if (_CFExecutableLinkedOnOrAfter(5uLL))
    {
      if (self->_retainedArgs)
      {
        v14 = _frameDescriptor->var0;
        v15 = 8;
        if ((*(_frameDescriptor->var0 + 17) & 0x80) == 0)
        {
          v15 = 16;
        }

        v16 = *(&self->super.isa + v15);
        p_container = &self->_container;
LABEL_24:
        __NSI3(v14, v16, p_container, 1);
        while (1)
        {
          _frameDescriptor = _frameDescriptor->var1;
          if (!_frameDescriptor)
          {
            break;
          }

          if ((WORD1(_frameDescriptor[1].var1) & 3) != 1)
          {
            v16 = self->_frame;
            p_container = &self->_container;
            v14 = _frameDescriptor;
            goto LABEL_24;
          }
        }
      }
    }

    else
    {
      v18 = 8;
      if ((*(_frameDescriptor->var0 + 17) & 0x80) == 0)
      {
        v18 = 16;
      }

      __NSI3(_frameDescriptor->var0, *(&self->super.isa + v18), &self->_container, 1);
    }
  }
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_stackAllocated == 1)
  {

    objc_destructInstance(self);
  }

  else
  {
    retdata = self->_retdata;
    if (retdata)
    {
      free(retdata);
    }

    self->_frame = 0;
    self->_retdata = 0;

    v4.receiver = self;
    v4.super_class = NSInvocation;
    [(NSInvocation *)&v4 dealloc];
  }
}

- (SEL)selector
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  [(NSInvocation *)self getArgument:v3 atIndex:1];
  return v3[0];
}

- (void)retainArguments
{
  magic = self->_magic;
  if (magic_cookie_oGuard != -1)
  {
    [NSInvocation retainArguments];
  }

  if (magic != magic_cookie_oValue)
  {
    [NSInvocation retainArguments];
  }

  if (!self->_retainedArgs)
  {
    self->_retainedArgs = 1;
    [(NSMethodSignature *)self->_signature numberOfArguments];
    objc_opt_class();
    frameLength = [(NSMethodSignature *)self->_signature frameLength];
    if (frameLength)
    {
      if ((frameLength & 7) != 0)
      {
        [NSInvocation retainArguments];
      }

      frame = self->_frame;
      v7 = 8;
      do
      {
        frame += 8;
        --v7;
      }

      while (v7);
    }

    if (v5 != self->_pac_signature)
    {
      _NSIPoisoned();
    }

    _frameDescriptor = [(NSMethodSignature *)self->_signature _frameDescriptor];
    __NSICreateBackingForArgumentIfNeeded(self, _frameDescriptor->var0, -1, 1);
    v9 = 8;
    if ((*(_frameDescriptor->var0 + 17) & 0x80) == 0)
    {
      v9 = 16;
    }

    __NSI3(_frameDescriptor->var0, *(&self->super.isa + v9), &self->_container, 1);
    var1 = _frameDescriptor->var1;
    if (var1)
    {
      v11 = 0;
      do
      {
        __NSICreateBackingForArgumentIfNeeded(self, var1, v11, 1);
        __NSI3(var1, self->_frame, &self->_container, 1);
        ++v11;
        var1 = *(var1 + 8);
      }

      while (var1);
    }

    [(NSMethodSignature *)self->_signature numberOfArguments];
    objc_opt_class();
    frameLength2 = [(NSMethodSignature *)self->_signature frameLength];
    if (frameLength2)
    {
      if ((frameLength2 & 7) != 0)
      {
        [NSInvocation retainArguments];
      }

      v14 = self->_frame;
      v15 = 8;
      do
      {
        v14 += 8;
        --v15;
      }

      while (v15);
    }

    self->_pac_signature = v13;
  }
}

- (id)target
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  [(NSInvocation *)self getArgument:v3 atIndex:0];
  return v3[0];
}

- (uint64_t)_initWithMethodSignature:(const void *)signature frame:(void *)frame buffer:(size_t)buffer size:
{
  if (self)
  {
    if ([a2 frameLength] + 320 > buffer)
    {
      __break(1u);
    }

    else
    {
      *(self + 24) = a2;
      *(self + 32) = 0;
      *(self + 16) = frame;
      bzero(frame, buffer);
      *(self + 8) = *(self + 16) + 320;
      if (magic_cookie_oGuard != -1)
      {
        [NSInvocation _initWithMethodSignature:frame:buffer:size:];
      }

      *(self + 56) = magic_cookie_oValue;
      if (signature)
      {
        memmove(*(self + 8), signature, [a2 frameLength]);
      }

      *(self + 60) = 256;
      [*(self + 24) numberOfArguments];
      objc_opt_class();
      frameLength = [*(self + 24) frameLength];
      if (!frameLength)
      {
        goto LABEL_11;
      }

      if ((frameLength & 7) == 0)
      {
        v12 = *(self + 8);
        v13 = 8;
        do
        {
          v12 += 8;
          --v13;
        }

        while (v13);
LABEL_11:
        *(self + 48) = v11;
        return self;
      }
    }

    [NSInvocation _initWithMethodSignature:frame:buffer:size:];
  }

  return self;
}

+ (id)_invocationWithMethodSignature:(id)signature frame:(void *)frame
{
  if (!signature)
  {
    v19 = __CFExceptionProem(self, a2);
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: method signature argument cannot be nil", v19);
    goto LABEL_16;
  }

  frameLength = [signature frameLength];
  v9 = frameLength + 320;
  if (((frameLength >= 0xFFFFFFFFFFFFFEC0) << 63) >> 63 != frameLength >= 0xFFFFFFFFFFFFFEC0)
  {
    v20 = __CFExceptionProem(self, a2);
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"Overflow while allocating space for method signature %@", v20);
LABEL_16:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17), 0];
    objc_exception_throw(v18);
  }

  v10 = [self alloc];
  *(v10 + 3) = signature;
  v11 = malloc_type_calloc(1uLL, v9, 0xB800B753uLL);
  *(v10 + 1) = v11 + 320;
  *(v10 + 2) = v11;
  *(v10 + 4) = 0;
  if (magic_cookie_oGuard != -1)
  {
    +[NSInvocation _invocationWithMethodSignature:frame:];
  }

  *(v10 + 14) = magic_cookie_oValue;
  if (frame)
  {
    memmove(*(v10 + 1), frame, [signature frameLength]);
  }

  *(v10 + 60) = 0;
  [*(v10 + 3) numberOfArguments];
  objc_opt_class();
  frameLength2 = [*(v10 + 3) frameLength];
  if (frameLength2)
  {
    if ((frameLength2 & 7) != 0)
    {
      +[NSInvocation _invocationWithMethodSignature:frame:];
    }

    v14 = *(v10 + 1);
    v15 = 8;
    do
    {
      v14 += 8;
      --v15;
    }

    while (v15);
  }

  *(v10 + 6) = v13;

  return v10;
}

- (void)_addAttachedObject:(id)object
{
  if (object)
  {
    container = self->_container;
    if (!container)
    {
      container = objc_opt_new();
      self->_container = container;
    }

    [(NSMutableArray *)container addObject:object];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  magic = self->_magic;
  if (magic_cookie_oGuard != -1)
  {
    [NSInvocation copyWithZone:];
  }

  if (magic != magic_cookie_oValue)
  {
    [NSInvocation copyWithZone:];
  }

  v5 = objc_alloc(objc_opt_class());
  *(v5 + 3) = self->_signature;
  v6 = malloc_type_calloc(1uLL, [(NSMethodSignature *)self->_signature frameLength]+ 320, 0xB98301C1uLL);
  *(v5 + 1) = v6 + 320;
  *(v5 + 2) = v6;
  *(v5 + 4) = 0;
  *(v5 + 14) = self->_magic;
  if (self->_retainedArgs)
  {
    [v5 retainArguments];
  }

  [(NSMethodSignature *)self->_signature numberOfArguments];
  objc_opt_class();
  frameLength = [(NSMethodSignature *)self->_signature frameLength];
  if (frameLength)
  {
    if ((frameLength & 7) != 0)
    {
      [NSInvocation copyWithZone:];
    }

    frame = self->_frame;
    v10 = 8;
    do
    {
      frame += 8;
      --v10;
    }

    while (v10);
  }

  if (v8 != self->_pac_signature)
  {
    _NSIPoisoned();
  }

  [*(v5 + 3) numberOfArguments];
  objc_opt_class();
  frameLength2 = [*(v5 + 3) frameLength];
  if (frameLength2)
  {
    if ((frameLength2 & 7) != 0)
    {
      [NSInvocation copyWithZone:];
    }

    v13 = *(v5 + 1);
    v14 = 8;
    do
    {
      v13 += 8;
      --v14;
    }

    while (v14);
  }

  *(v5 + 6) = v12;
  return v5;
}

- (void)setTarget:(id)target
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = target;
  [(NSInvocation *)self setArgument:v3 atIndex:0];
}

- (void)setSelector:(SEL)selector
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = selector;
  [(NSInvocation *)self setArgument:v3 atIndex:1];
}

- (void)getArgument:(void *)argumentLocation atIndex:(NSInteger)idx
{
  retdata = self->_retdata;
  signature = self->_signature;
  frame = self->_frame;
  numberOfArguments = [(NSMethodSignature *)signature numberOfArguments];
  if (idx < -1 || numberOfArguments <= idx)
  {
    v12 = numberOfArguments;
    v15 = __CFExceptionProem(self, sel_getArgument_atIndex_);
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: index (%ld) out of bounds [-1, %ld]", v15, idx, v12 - 1);
    goto LABEL_10;
  }

  if (!argumentLocation)
  {
    v16 = __CFExceptionProem(self, sel_getArgument_atIndex_);
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: NULL address argument", v16);
LABEL_10:
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13), 0];
    objc_exception_throw(v14);
  }

  v11 = [(NSMethodSignature *)signature _argInfo:idx];
  if ((idx & 0x8000000000000000) == 0 || (*(v11 + 34) & 0x80) != 0)
  {
    retdata = frame;
  }

  __NSI1(v11, retdata, argumentLocation, 1);
}

- (void)setArgument:(void *)argumentLocation atIndex:(NSInteger)idx
{
  numberOfArguments = [(NSMethodSignature *)self->_signature numberOfArguments];
  v9 = numberOfArguments;
  if (idx < -1 || numberOfArguments <= idx)
  {
    v25 = __CFExceptionProem(self, a2);
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: index (%ld) out of bounds [-1, %ld]", v25, idx, v9 - 1);
    goto LABEL_28;
  }

  [(NSMethodSignature *)self->_signature numberOfArguments];
  objc_opt_class();
  frameLength = [(NSMethodSignature *)self->_signature frameLength];
  if (frameLength)
  {
    if ((frameLength & 7) != 0)
    {
      [NSInvocation setArgument:atIndex:];
    }

    frame = self->_frame;
    v13 = 8;
    do
    {
      frame += 8;
      --v13;
    }

    while (v13);
  }

  if (v11 != self->_pac_signature)
  {
    _NSIPoisoned();
  }

  v14 = [(NSMethodSignature *)self->_signature _argInfo:idx];
  if (!argumentLocation)
  {
    v26 = __CFExceptionProem(self, a2);
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: NULL address argument", v26);
LABEL_28:
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23), 0];
    objc_exception_throw(v24);
  }

  v15 = v14;
  if ((idx & 0x8000000000000000) == 0)
  {
    v16 = self->_frame;
LABEL_11:
    __NSICreateBackingForArgumentIfNeeded(self, v14, idx, 0);
    goto LABEL_16;
  }

  v17 = *(v14 + 17);
  v18 = 8;
  if ((v17 & 0x80) == 0)
  {
    v18 = 16;
  }

  v16 = *(&self->super.isa + v18);
  if ((v17 & 0x80) != 0 && !*(self->_frame + v14->var5 + v14->var6))
  {
    goto LABEL_11;
  }

LABEL_16:
  __NSI2(v15, v16, argumentLocation, 1);
  if (self->_retainedArgs || idx == -1 && !_CFExecutableLinkedOnOrAfter(5uLL))
  {
    __NSI3(v15, v16, &self->_container, 1);
  }

  [(NSMethodSignature *)self->_signature numberOfArguments];
  objc_opt_class();
  frameLength2 = [(NSMethodSignature *)self->_signature frameLength];
  if (frameLength2)
  {
    if ((frameLength2 & 7) != 0)
    {
      [NSInvocation setArgument:atIndex:];
    }

    v21 = self->_frame;
    v22 = 8;
    do
    {
      v21 += 8;
      --v22;
    }

    while (v22);
  }

  self->_pac_signature = v20;
}

- (void)invokeUsingIMP:(IMP)imp
{
  v14[1] = *MEMORY[0x1E69E9840];
  magic = self->_magic;
  if (magic_cookie_oGuard != -1)
  {
    [NSInvocation invokeUsingIMP:];
  }

  if (magic != magic_cookie_oValue)
  {
    [NSInvocation invokeUsingIMP:];
  }

  v14[0] = 0;
  [(NSInvocation *)self getArgument:v14 atIndex:0];
  if (v14[0])
  {
    _frameDescriptor = [(NSMethodSignature *)self->_signature _frameDescriptor];
    var0 = _frameDescriptor->var0;
    if ((*(_frameDescriptor->var0 + 17) & 0x80) != 0 && !*(self->_frame + *(var0 + 28) + *(var0 + 32)))
    {
      __NSICreateBackingForArgumentIfNeeded(self, var0, -1, 0);
    }

    [(NSMethodSignature *)self->_signature numberOfArguments];
    objc_opt_class();
    frameLength = [(NSMethodSignature *)self->_signature frameLength];
    if (frameLength)
    {
      if ((frameLength & 7) != 0)
      {
        [NSInvocation invokeUsingIMP:];
      }

      frame = self->_frame;
      v11 = 8;
      do
      {
        frame += 8;
        --v11;
      }

      while (v11);
    }

    if (v9 != self->_pac_signature)
    {
      _NSIPoisoned();
    }

    __invoking___(imp, self->_retdata, self->_frame, [(NSMethodSignature *)self->_signature frameLength]);
    if (self->_retainedArgs)
    {
      v12 = 8;
      if ((*(_frameDescriptor->var0 + 17) & 0x80) == 0)
      {
        v12 = 16;
      }

      __NSI3(_frameDescriptor->var0, *(&self->super.isa + v12), &self->_container, 1);
      for (i = _frameDescriptor->var1; i; i = i->var1)
      {
        if ((*(i + 17) & 3) != 1)
        {
          __NSI3(i, self->_frame, &self->_container, 1);
        }
      }
    }
  }
}

- (void)invokeWithTarget:(id)target
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = target;
  [(NSInvocation *)self setArgument:v4 atIndex:0];
  [(NSInvocation *)self invoke];
}

@end