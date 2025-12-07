@interface CCSharedItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSharedItem:(id)item;
- (CCSharedItem)init;
- (CCSharedItem)initWithCoder:(id)coder;
- (CCSharedItem)initWithContent:(id)content error:(id *)error;
- (CCSharedItem)initWithSharedIdentifier:(id)identifier content:(id)content;
- (NSNumber)sharedIdentifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CCSharedItem

- (NSNumber)sharedIdentifier
{
  sharedIdentifier = self->_sharedIdentifier;
  if (!sharedIdentifier)
  {
    data = [(CCItemContent *)self->_content data];
    v5 = CCHash64(data);
    v6 = self->_sharedIdentifier;
    self->_sharedIdentifier = v5;

    sharedIdentifier = self->_sharedIdentifier;
  }

  return sharedIdentifier;
}

- (CCSharedItem)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCSharedItem)initWithContent:(id)content error:(id *)error
{
  contentCopy = content;
  if (CCValidateNonNilField(@"content", contentCopy, error) && (v8 = objc_opt_class(), CCValidateIsInstanceOfExpectedClass(@"content", contentCopy, v8, error)))
  {
    v13.receiver = self;
    v13.super_class = CCSharedItem;
    v9 = [(CCSharedItem *)&v13 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_content, content);
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

- (CCSharedItem)initWithSharedIdentifier:(id)identifier content:(id)content
{
  identifierCopy = identifier;
  contentCopy = content;
  v12.receiver = self;
  v12.super_class = CCSharedItem;
  v9 = [(CCSharedItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_content, content);
    objc_storeStrong(&v10->_sharedIdentifier, identifier);
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sharedIdentifier = [(CCSharedItem *)self sharedIdentifier];
  content = [(CCSharedItem *)self content];
  v8 = [v3 initWithFormat:@"<%@> sharedIdentifier: %@ content: %@", v5, sharedIdentifier, content];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCSharedItem *)self isEqualToSharedItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToSharedItem:(id)item
{
  itemCopy = item;
  sharedIdentifier = [(CCSharedItem *)self sharedIdentifier];
  sharedIdentifier2 = [itemCopy sharedIdentifier];

  LOBYTE(itemCopy) = [sharedIdentifier isEqual:sharedIdentifier2];
  return itemCopy;
}

- (unint64_t)hash
{
  sharedIdentifier = [(CCSharedItem *)self sharedIdentifier];
  unsignedLongLongValue = [sharedIdentifier unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self->_content)
  {
    [coderCopy encodeInt32:objc_msgSend(objc_opt_class() forKey:{"itemType"), @"t"}];
    data = [(CCItemContent *)self->_content data];
    [coderCopy encodeObject:data forKey:@"c"];
  }

  sharedIdentifier = self->_sharedIdentifier;
  if (sharedIdentifier)
  {
    [coderCopy encodeObject:sharedIdentifier forKey:@"s"];
  }
}

- (CCSharedItem)initWithCoder:(id)coder
{
  v28 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"c"];
  if (v5)
  {
    v6 = [coderCopy decodeInt32ForKey:@"t"];
    v21 = 0;
    v7 = [CCItemMessage contentMessageForItemType:v6 data:v5 error:&v21];
    v8 = v21;
    if (!v7)
    {
      v7 = __biome_log_for_category();
      v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        v18 = CCTypeIdentifierRegistryBridge(v9);
        v19 = [v18 descriptionForTypeIdentifier:v6];
        *buf = 138412802;
        v23 = v5;
        v24 = 2112;
        v25 = v19;
        v26 = 2112;
        v27 = v8;
        _os_log_error_impl(&dword_1B6DB2000, v7, OS_LOG_TYPE_ERROR, "Failed to decode content from data: %@ itemType: %@ error: %@", buf, 0x20u);
      }

      selfCopy = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"s"];
  if (v11)
  {
    self = [(CCSharedItem *)self initWithSharedIdentifier:v11 content:v7];
  }

  else
  {
    v20 = v8;
    v12 = [(CCSharedItem *)self initWithContent:v7 error:&v20];
    v13 = v20;

    v14 = v12;
    self = v14;
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v16 = __biome_log_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(CCSharedItem *)v13 initWithCoder:v16];
      }
    }

    v8 = v13;
  }

  selfCopy = self;
LABEL_16:

  return selfCopy;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Failed to initialize sharedItem: %@", &v2, 0xCu);
}

@end