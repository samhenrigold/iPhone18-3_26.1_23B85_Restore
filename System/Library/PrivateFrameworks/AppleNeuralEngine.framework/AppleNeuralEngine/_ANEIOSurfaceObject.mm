@interface _ANEIOSurfaceObject
+ (_ANEIOSurfaceObject)objectWithIOSurface:(__IOSurface *)surface;
+ (_ANEIOSurfaceObject)objectWithIOSurface:(__IOSurface *)surface startOffset:(id)offset;
+ (_ANEIOSurfaceObject)objectWithIOSurfaceNoRetain:(__IOSurface *)retain startOffset:(id)offset;
+ (__IOSurface)createIOSurfaceWithWidth:(int)width pixel_size:(int)pixel_size height:(int)height;
+ (__IOSurface)createIOSurfaceWithWidth:(int)width pixel_size:(int)pixel_size height:(int)height bytesPerElement:(int)element;
- (_ANEIOSurfaceObject)initWithCoder:(id)coder;
- (_ANEIOSurfaceObject)initWithIOSurface:(__IOSurface *)surface startOffset:(id)offset shouldRetain:(BOOL)retain;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _ANEIOSurfaceObject

- (void)dealloc
{
  ioSurface = self->_ioSurface;
  if (ioSurface)
  {
    CFRelease(ioSurface);
  }

  v4.receiver = self;
  v4.super_class = _ANEIOSurfaceObject;
  [(_ANEIOSurfaceObject *)&v4 dealloc];
}

+ (_ANEIOSurfaceObject)objectWithIOSurface:(__IOSurface *)surface
{
  v3 = [[self alloc] initWithIOSurface:surface startOffset:&unk_1F22544A0 shouldRetain:1];

  return v3;
}

+ (_ANEIOSurfaceObject)objectWithIOSurface:(__IOSurface *)surface startOffset:(id)offset
{
  offsetCopy = offset;
  v7 = [[self alloc] initWithIOSurface:surface startOffset:offsetCopy shouldRetain:1];

  return v7;
}

+ (_ANEIOSurfaceObject)objectWithIOSurfaceNoRetain:(__IOSurface *)retain startOffset:(id)offset
{
  offsetCopy = offset;
  v7 = [[self alloc] initWithIOSurface:retain startOffset:offsetCopy shouldRetain:0];

  return v7;
}

- (_ANEIOSurfaceObject)initWithIOSurface:(__IOSurface *)surface startOffset:(id)offset shouldRetain:(BOOL)retain
{
  retainCopy = retain;
  offsetCopy = offset;
  if (surface)
  {
    v13.receiver = self;
    v13.super_class = _ANEIOSurfaceObject;
    v10 = [(_ANEIOSurfaceObject *)&v13 init];
    if (v10)
    {
      if (retainCopy)
      {
        CFRetain(surface);
      }

      v10->_ioSurface = surface;
      objc_storeStrong(&v10->_startOffset, offset);
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  ioSurface = [(_ANEIOSurfaceObject *)self ioSurface];
  startOffset = [(_ANEIOSurfaceObject *)self startOffset];
  v8 = [v3 stringWithFormat:@"%@: { ioSurface=%p  startOffset=%lu }", v5, ioSurface, objc_msgSend(startOffset, "unsignedIntegerValue")];;

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(_ANEIOSurfaceObject *)self ioSurface])
  {
    XPCObject = IOSurfaceCreateXPCObject([(_ANEIOSurfaceObject *)self ioSurface]);
    [coderCopy encodeXPCObject:XPCObject forKey:@"_ANEIOSurface"];
  }
}

- (_ANEIOSurfaceObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [coderCopy decodeXPCObjectForKey:@"_ANEIOSurface"];
    selfCopy = v5;
    if (v5)
    {
      v7 = IOSurfaceLookupFromXPCObject(v5);
      self = [(_ANEIOSurfaceObject *)self initWithIOSurface:v7 startOffset:&unk_1F22544A0 shouldRetain:1];
      CFRelease(v7);

      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (__IOSurface)createIOSurfaceWithWidth:(int)width pixel_size:(int)pixel_size height:(int)height
{
  v5 = *&height;
  v7 = *&width;
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x1E695E0F8] mutableCopy];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:v7];
  [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696D130]];

  v11 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696CF58]];

  v12 = [MEMORY[0x1E696AD98] numberWithInt:(pixel_size * v7)];
  [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696CE58]];

  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v9);
  v14 = IOSurfaceCreate(Copy);
  CFRelease(Copy);

  objc_autoreleasePoolPop(v8);
  return v14;
}

+ (__IOSurface)createIOSurfaceWithWidth:(int)width pixel_size:(int)pixel_size height:(int)height bytesPerElement:(int)element
{
  v6 = *&element;
  v7 = *&height;
  v9 = *&width;
  v10 = objc_autoreleasePoolPush();
  v11 = [MEMORY[0x1E695E0F8] mutableCopy];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696CE50]];

  v13 = [MEMORY[0x1E696AD98] numberWithInt:v9];
  [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696D130]];

  v14 = [MEMORY[0x1E696AD98] numberWithInt:v7];
  [v11 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696CF58]];

  v15 = [MEMORY[0x1E696AD98] numberWithInt:(pixel_size * v9 * v6)];
  [v11 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696CE58]];

  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v11);
  v17 = IOSurfaceCreate(Copy);
  CFRelease(Copy);

  objc_autoreleasePoolPop(v10);
  return v17;
}

@end