@interface VFXFileAsset
- (VFXFileAsset)initWithCoder:(id)coder;
- (VFXFileAsset)initWithFileNamed:(id)named entityObject:(id)object;
- (id)absolutePath;
- (id)copyWithFilename:(id)filename;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAbsolutePath:(id)path;
- (void)setFileName:(id)name;
@end

@implementation VFXFileAsset

- (VFXFileAsset)initWithFileNamed:(id)named entityObject:(id)object
{
  v9.receiver = self;
  v9.super_class = VFXFileAsset;
  v5 = [(VFXCoreAsset *)&v9 initWithEntityObject:object];
  if (v5)
  {
    namedCopy = named;
    v5->_filename = namedCopy;
    objc_msgSend_setName_(v5, v7, namedCopy);
  }

  return v5;
}

- (void)setFileName:(id)name
{
  filename = self->_filename;
  if (filename != name)
  {

    nameCopy = name;
    self->_filename = nameCopy;

    objc_msgSend_setName_(self, v6, nameCopy);
  }
}

- (id)absolutePath
{
  v3 = objc_msgSend_entityObject(self, a2, v2);
  v6 = objc_msgSend_properties(v3, v4, v5);

  return MEMORY[0x1EEE66B58](v6, sel_absolutePath, v7);
}

- (void)setAbsolutePath:(id)path
{
  v4 = objc_msgSend_entityObject(self, a2, path);
  v7 = objc_msgSend_properties(v4, v5, v6);

  MEMORY[0x1EEE66B58](v7, sel_setAbsolutePath_, path);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXFileAsset;
  [(VFXCoreAsset *)&v3 dealloc];
}

- (void)copyTo:(id)to withContext:(id)context
{
  v8.receiver = self;
  v8.super_class = VFXFileAsset;
  [(VFXCoreAsset *)&v8 copyTo:to withContext:context];

  *(to + 6) = objc_msgSend_filename(self, v6, v7);
}

- (id)copyWithFilename:(id)filename
{
  v4 = objc_msgSend_copy(self, a2, filename);
  v5 = v4;
  if (v4)
  {

    v5[6] = filename;
  }

  return v5;
}

- (VFXFileAsset)initWithCoder:(id)coder
{
  v17.receiver = self;
  v17.super_class = VFXFileAsset;
  v4 = [(VFXCoreAsset *)&v17 initWithCoder:?];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"filename");
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v9 = objc_opt_class();
      v11 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v10, v9, @"path");
      if (v11)
      {
        PathComponent = v11;
        if (objc_msgSend_hasPrefix_(v11, v12, @"/"))
        {
          PathComponent = objc_msgSend_lastPathComponent(PathComponent, v14, v15);
        }

        v8 = PathComponent;
      }

      else
      {
        v8 = &stru_1F2575650;
      }
    }

    v4->_filename = &v8->isa;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  filename = self->_filename;
  if (filename)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, filename, @"filename");
  }

  v6.receiver = self;
  v6.super_class = VFXFileAsset;
  [(VFXCoreAsset *)&v6 encodeWithCoder:coder];
}

@end