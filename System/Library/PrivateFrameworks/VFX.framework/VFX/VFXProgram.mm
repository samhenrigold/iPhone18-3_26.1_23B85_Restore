@interface VFXProgram
+ (VFXProgram)programWithLibrary:(id)library;
+ (id)program;
- (VFXProgram)init;
- (VFXProgram)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)handleBindingOfBufferNamed:(id)named frequency:(int64_t)frequency usingBlock:(id)block;
- (void)setFragmentFunctionName:(id)name;
- (void)setLibrary:(id)library;
- (void)setLibraryProvider:(id)provider;
- (void)setName:(id)name;
- (void)setOpaque:(BOOL)opaque;
- (void)setSource:(id)source;
- (void)setVertexFunctionName:(id)name;
@end

@implementation VFXProgram

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXProgram;
  [(VFXProgram *)&v3 dealloc];
}

- (VFXProgram)init
{
  v3.receiver = self;
  v3.super_class = VFXProgram;
  result = [(VFXProgram *)&v3 init];
  if (result)
  {
    result->_opaque = 1;
  }

  return result;
}

- (void)setLibrary:(id)library
{
  library = self->_library;
  if (library != library)
  {

    self->_library = library;
    v7 = [VFXMetalLibraryProvider alloc];
    self->_libraryProvider = objc_msgSend_iniWithLibrary_(v7, v8, library);
    v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v9, v10);

    objc_msgSend_postNotificationName_object_userInfo_(v11, v12, @"VFXProgramDidChangeNotification", self, 0);
  }
}

- (void)setLibraryProvider:(id)provider
{
  if (self->_libraryProvider != provider)
  {

    self->_library = 0;
    self->_libraryProvider = provider;
    v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v6, v7);

    objc_msgSend_postNotificationName_object_userInfo_(v8, v9, @"VFXProgramDidChangeNotification", self, 0);
  }
}

- (void)setName:(id)name
{
  if ((objc_msgSend_isEqualToString_(self->_name, a2, name) & 1) == 0)
  {

    self->_name = objc_msgSend_copy(name, v5, v6);
  }
}

+ (id)program
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (VFXProgram)programWithLibrary:(id)library
{
  v4 = objc_alloc_init(self);
  objc_msgSend_setLibrary_(v4, v5, library);
  return v4;
}

- (void)setOpaque:(BOOL)opaque
{
  if (self->_opaque != opaque)
  {
    self->_opaque = opaque;
    v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, opaque);

    objc_msgSend_postNotificationName_object_userInfo_(v5, v6, @"VFXProgramDidChangeNotification", self, 0);
  }
}

- (void)setVertexFunctionName:(id)name
{
  if ((objc_msgSend_isEqualToString_(self->_vertexFunctionName, a2, name) & 1) == 0)
  {

    self->_vertexFunctionName = objc_msgSend_copy(name, v5, v6);
    v9 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8);

    objc_msgSend_postNotificationName_object_userInfo_(v9, v10, @"VFXProgramDidChangeNotification", self, 0);
  }
}

- (void)setFragmentFunctionName:(id)name
{
  if ((objc_msgSend_isEqualToString_(self->_fragmentFunctionName, a2, name) & 1) == 0)
  {

    self->_fragmentFunctionName = objc_msgSend_copy(name, v5, v6);
    v9 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8);

    objc_msgSend_postNotificationName_object_userInfo_(v9, v10, @"VFXProgramDidChangeNotification", self, 0);
  }
}

- (void)setSource:(id)source
{
  if ((objc_msgSend_isEqualToString_(self->_source, a2, source) & 1) == 0)
  {

    self->_source = objc_msgSend_copy(source, v5, v6);
    v9 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8);

    objc_msgSend_postNotificationName_object_userInfo_(v9, v10, @"VFXProgramDidChangeNotification", self, 0);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v7 = objc_msgSend_source(self, v5, v6);
  objc_msgSend_setSource_(v4, v8, v7);
  v11 = objc_msgSend_vertexFunctionName(self, v9, v10);
  objc_msgSend_setVertexFunctionName_(v4, v12, v11);
  v15 = objc_msgSend_fragmentFunctionName(self, v13, v14);
  objc_msgSend_setFragmentFunctionName_(v4, v16, v15);
  v19 = objc_msgSend_name(self, v17, v18);
  objc_msgSend_setName_(v4, v20, v19);
  v23 = objc_msgSend_library(self, v21, v22);
  objc_msgSend_setLibrary_(v4, v24, v23);
  v27 = objc_msgSend_libraryProvider(self, v25, v26);
  objc_msgSend_setLibraryProvider_(v4, v28, v27);
  return v4;
}

- (void)handleBindingOfBufferNamed:(id)named frequency:(int64_t)frequency usingBlock:(id)block
{
  bufferBindings = self->_bufferBindings;
  if (block)
  {
    if (!bufferBindings)
    {
      self->_bufferBindings = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v10 = objc_alloc_init(VFXBufferBinding);
    objc_msgSend_setName_(v10, v11, named);
    objc_msgSend_setFrequency_(v10, v12, frequency);
    v13 = _Block_copy(block);
    objc_msgSend_setBlock_(v10, v14, v13);
    objc_msgSend_setValue_forKey_(self->_bufferBindings, v15, v10, named);

    v18 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v16, v17);

    objc_msgSend_postNotificationName_object_userInfo_(v18, v19, @"VFXProgramDidChangeNotification", self, 0);
  }

  else
  {
    objc_msgSend_removeObjectForKey_(bufferBindings, a2, named, frequency);
    v25 = objc_alloc_init(VFXBufferBinding);
    objc_msgSend_setName_(v25, v20, named);
    v23 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v21, v22);
    objc_msgSend_postNotificationName_object_userInfo_(v23, v24, @"VFXProgramDidChangeNotification", self, 0);
  }
}

- (void)encodeWithCoder:(id)coder
{
  source = self->_source;
  if (source)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, source, @"source");
  }

  vertexFunctionName = self->_vertexFunctionName;
  if (vertexFunctionName)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, vertexFunctionName, @"vertexFunctionName");
  }

  fragmentFunctionName = self->_fragmentFunctionName;
  if (fragmentFunctionName)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, fragmentFunctionName, @"fragmentFunctionName");
  }

  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, name, @"name");
  }

  opaque = self->_opaque;

  objc_msgSend_encodeBool_forKey_(coder, a2, opaque, @"opaque");
}

- (VFXProgram)initWithCoder:(id)coder
{
  v30.receiver = self;
  v30.super_class = VFXProgram;
  v6 = [(VFXProgram *)&v30 init];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    v9 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v10, v9, @"source");
    objc_msgSend_setSource_(v6, v12, v11);
    v13 = objc_opt_class();
    v15 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v14, v13, @"vertexFunctionName");
    objc_msgSend_setVertexFunctionName_(v6, v16, v15);
    v17 = objc_opt_class();
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v18, v17, @"fragmentFunctionName");
    objc_msgSend_setFragmentFunctionName_(v6, v20, v19);
    v21 = objc_opt_class();
    v23 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v22, v21, @"name");
    objc_msgSend_setName_(v6, v24, v23);
    v26 = objc_msgSend_decodeBoolForKey_(coder, v25, @"opaque");
    objc_msgSend_setOpaque_(v6, v27, v26);
    objc_msgSend_setImmediateMode_(VFXTransaction, v28, v7);
  }

  return v6;
}

@end