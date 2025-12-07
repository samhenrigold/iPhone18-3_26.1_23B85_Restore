@interface NSManagedObjectModelReference
- (BOOL)resolve:(id *)resolve;
- (NSManagedObjectModelReference)initWithEntityVersionHashes:(NSDictionary *)versionHash inBundle:(NSBundle *)bundle versionChecksum:(NSString *)versionChecksum;
- (NSManagedObjectModelReference)initWithFileURL:(NSURL *)fileURL versionChecksum:(NSString *)versionChecksum;
- (NSManagedObjectModelReference)initWithModel:(NSManagedObjectModel *)model versionChecksum:(NSString *)versionChecksum;
- (NSManagedObjectModelReference)initWithName:(NSString *)modelName inBundle:(NSBundle *)bundle versionChecksum:(NSString *)versionChecksum;
- (void)dealloc;
@end

@implementation NSManagedObjectModelReference

- (NSManagedObjectModelReference)initWithFileURL:(NSURL *)fileURL versionChecksum:(NSString *)versionChecksum
{
  v8.receiver = self;
  v8.super_class = NSManagedObjectModelReference;
  v6 = [(NSManagedObjectModelReference *)&v8 init];
  if (v6)
  {
    v6->_fileURL = [(NSURL *)fileURL copy];
    v6->_versionChecksum = [(NSString *)versionChecksum copy];
  }

  return v6;
}

- (NSManagedObjectModelReference)initWithEntityVersionHashes:(NSDictionary *)versionHash inBundle:(NSBundle *)bundle versionChecksum:(NSString *)versionChecksum
{
  v11.receiver = self;
  v11.super_class = NSManagedObjectModelReference;
  v8 = [(NSManagedObjectModelReference *)&v11 init];
  if (v8)
  {
    v8->_entityVersionHashes = [(NSDictionary *)versionHash copy];
    if (bundle)
    {
      mainBundle = bundle;
    }

    else
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    }

    v8->_bundle = mainBundle;
    v8->_versionChecksum = [(NSString *)versionChecksum copy];
  }

  return v8;
}

- (NSManagedObjectModelReference)initWithName:(NSString *)modelName inBundle:(NSBundle *)bundle versionChecksum:(NSString *)versionChecksum
{
  v11.receiver = self;
  v11.super_class = NSManagedObjectModelReference;
  v8 = [(NSManagedObjectModelReference *)&v11 init];
  if (v8)
  {
    v8->_modelName = [(NSString *)modelName copy];
    if (bundle)
    {
      mainBundle = bundle;
    }

    else
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    }

    v8->_bundle = mainBundle;
    v8->_versionChecksum = [(NSString *)versionChecksum copy];
  }

  return v8;
}

- (NSManagedObjectModelReference)initWithModel:(NSManagedObjectModel *)model versionChecksum:(NSString *)versionChecksum
{
  v8.receiver = self;
  v8.super_class = NSManagedObjectModelReference;
  v6 = [(NSManagedObjectModelReference *)&v8 init];
  if (v6)
  {
    v6->_model = model;
    v6->_versionChecksum = [(NSString *)versionChecksum copy];
  }

  return v6;
}

- (void)dealloc
{
  self->_fileURL = 0;

  self->_versionChecksum = 0;
  self->_bundle = 0;

  self->_modelName = 0;
  self->_entityVersionHashes = 0;

  self->_model = 0;
  self->_resolvedModel = 0;
  v3.receiver = self;
  v3.super_class = NSManagedObjectModelReference;
  [(NSManagedObjectModelReference *)&v3 dealloc];
}

- (BOOL)resolve:(id *)resolve
{
  v49 = *MEMORY[0x1E69E9840];
  if (self->_resolvedModel)
  {
    return 1;
  }

  v41 = 0;
  model = self->_model;
  if (model)
  {
    bundle = model;
LABEL_7:
    self->_resolvedModel = bundle;
    goto LABEL_8;
  }

  if (self->_fileURL)
  {
    bundle = [[NSManagedObjectModel alloc] initWithContentsOfURL:self->_fileURL];
    goto LABEL_7;
  }

  bundle = self->_bundle;
  if (!bundle)
  {
LABEL_8:
    [(NSManagedObjectModel *)bundle _setIsEditable:0];
    if (![(NSString *)[(NSManagedObjectModel *)self->_resolvedModel versionChecksum] isEqualToString:self->_versionChecksum])
    {
      v41 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134100 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", @"The version hash (and associated hashes) are incompatible with the current Core Data version.", @"reason", -[NSManagedObjectModel versionHash](self->_resolvedModel, "versionHash"), @"versionHash", self->_versionChecksum, @"checksum", 0)}];

      self->_resolvedModel = 0;
    }

    goto LABEL_10;
  }

  modelName = self->_modelName;
  if (!modelName)
  {
    if (!self->_entityVersionHashes)
    {
      bundle = 0;
      goto LABEL_8;
    }

    v45 = bundle;
    v19 = +[NSManagedObjectModel _modelPathsFromBundles:](NSManagedObjectModel, [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v33;
LABEL_30:
      v23 = 0;
      while (1)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(&v32 + 1) + 8 * v23)];
        v25 = [NSManagedObjectModel versionsHashesForModelAtURL:v24 error:&v41];
        if (v41)
        {
          break;
        }

        if ([v25 isEqualToDictionary:self->_entityVersionHashes])
        {
          resolvedModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:v24];
          self->_resolvedModel = resolvedModel;
          goto LABEL_44;
        }

        if (v21 == ++v23)
        {
          v21 = [v19 countByEnumeratingWithState:&v32 objects:v44 count:16];
          if (v21)
          {
            goto LABEL_30;
          }

          break;
        }
      }
    }

    resolvedModel = self->_resolvedModel;
LABEL_44:
    if (resolvedModel)
    {
      v12 = v41;
      goto LABEL_49;
    }

    v27 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A250];
    v42 = *MEMORY[0x1E696A578];
    v43 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->_entityVersionHashes, [(NSBundle *)self->_bundle bundlePath]);
    v29 = MEMORY[0x1E695DF20];
    v30 = &v43;
    v31 = &v42;
    goto LABEL_47;
  }

  v10 = [(NSManagedObjectModel *)bundle URLForResource:modelName withExtension:@"momd"];
  v40 = 0;
  v11 = [NSManagedObjectModel checksumsForVersionedModelAtURL:v10 error:&v40];
  v12 = v40;
  if (!v40)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = [(NSDictionary *)v11 countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v37;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v36 + 1) + 8 * i);
          if ([-[NSDictionary objectForKey:](v11 objectForKey:{v17), "isEqualToString:", self->_versionChecksum}])
          {
            v18 = -[NSManagedObjectModel initWithContentsOfURL:]([NSManagedObjectModel alloc], "initWithContentsOfURL:", [objc_msgSend(v10 URLByAppendingPathComponent:{v17), "URLByAppendingPathExtension:", @"mom"}]);
            self->_resolvedModel = v18;
            goto LABEL_39;
          }
        }

        v14 = [(NSDictionary *)v11 countByEnumeratingWithState:&v36 objects:v48 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v18 = self->_resolvedModel;
LABEL_39:
    if (v18)
    {
      v12 = 0;
      goto LABEL_49;
    }

    v27 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A250];
    v46 = *MEMORY[0x1E696A578];
    v47 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->_versionChecksum, [(NSBundle *)self->_bundle bundlePath]);
    v29 = MEMORY[0x1E695DF20];
    v30 = &v47;
    v31 = &v46;
LABEL_47:
    v12 = [v27 errorWithDomain:v28 code:134504 userInfo:{objc_msgSend(v29, "dictionaryWithObjects:forKeys:count:", v30, v31, 1)}];
  }

  v41 = v12;
LABEL_49:
  if (!v12)
  {
    bundle = self->_resolvedModel;
    goto LABEL_8;
  }

LABEL_10:
  v8 = v41;
  if (resolve)
  {
    if (v41)
    {
      *resolve = v41;
      v8 = v41;
    }
  }

  return v8 == 0;
}

@end