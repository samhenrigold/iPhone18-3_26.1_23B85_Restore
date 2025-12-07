@interface ISImageCache
- (ISImageCache)init;
- (NSData)latestValidationToken;
- (id)allImages;
- (id)debugDescription;
- (id)imageForDescriptor:(id)descriptor;
- (void)setImage:(id)image forDescriptor:(id)descriptor;
@end

@implementation ISImageCache

- (ISImageCache)init
{
  v7.receiver = self;
  v7.super_class = ISImageCache;
  v2 = [(ISImageCache *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    imageBagsByDescriptor = v3->_imageBagsByDescriptor;
    v3->_imageBagsByDescriptor = v4;
  }

  return v3;
}

- (NSData)latestValidationToken
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_latestValidationToken;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)imageForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  digest = [descriptorCopy digest];
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMutableDictionary *)self->_imageBagsByDescriptor objectForKeyedSubscript:digest];
  [descriptorCopy size];
  v8 = v7;
  v10 = v9;
  [descriptorCopy scale];
  v12 = v11;

  v13 = [v6 imageForSize:v8 scale:{v10, v12}];
  os_unfair_lock_unlock(&self->_lock);

  return v13;
}

- (void)setImage:(id)image forDescriptor:(id)descriptor
{
  if (image)
  {
    imageCopy = image;
    digest = [descriptor digest];
    os_unfair_lock_lock(&self->_lock);
    v7 = [(NSMutableDictionary *)self->_imageBagsByDescriptor objectForKeyedSubscript:digest];
    if (!v7)
    {
      v7 = objc_opt_new();
      [(NSMutableDictionary *)self->_imageBagsByDescriptor setObject:v7 forKeyedSubscript:digest];
    }

    [v7 insertImage:imageCopy];
    validationToken = [imageCopy validationToken];

    if (validationToken)
    {
      objc_storeStrong(&self->_latestValidationToken, validationToken);
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (id)debugDescription
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v18.receiver = self;
  v18.super_class = ISImageCache;
  v4 = [(ISImageCache *)&v18 debugDescription];
  v5 = [v3 stringWithString:v4];

  [v5 appendString:@"\n"];
  os_unfair_lock_lock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_imageBagsByDescriptor allValues];
  v7 = [allValues countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) debugDescription];
        [v5 appendFormat:@"Bag [%u]: %@", 0, v11];
      }

      v8 = [allValues countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = [v5 copy];

  return v12;
}

- (id)allImages
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  os_unfair_lock_lock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_imageBagsByDescriptor allValues];
  v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        images = [*(*(&v12 + 1) + 8 * i) images];
        [array addObjectsFromArray:images];
      }

      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = [array copy];

  return v10;
}

@end