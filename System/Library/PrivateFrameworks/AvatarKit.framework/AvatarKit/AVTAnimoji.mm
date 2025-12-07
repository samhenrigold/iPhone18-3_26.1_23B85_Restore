@interface AVTAnimoji
+ (id)_scenePathForPuppetNamed:(id)named;
+ (id)_sceneURLForPuppetDirectoryURL:(id)l;
+ (id)animojiNamed:(id)named;
+ (id)animojiNames;
+ (id)animojiWithContentsOfURL:(id)l;
+ (id)thumbnailForAnimojiNamed:(id)named options:(id)options;
+ (void)preloadAnimojiNamed:(id)named;
- (AVTAnimoji)initWithCoder:(id)coder;
- (AVTAnimoji)initWithDescriptor:(id)descriptor usageIntent:(unint64_t)intent error:(id *)error;
- (AVTAnimoji)initWithName:(id)name error:(id *)p_isa;
- (id)_sceneURL;
- (id)avatarNode;
- (id)cameraNode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)lightingNode;
- (id)newDescriptor;
- (void)_load;
- (void)configureForBestAnimationQuality;
- (void)encodeWithCoder:(id)coder;
- (void)loadIfNeeded;
- (void)updateWithOptions:(unint64_t)options;
@end

@implementation AVTAnimoji

+ (id)animojiNames
{
  if (animojiNames_onceToken != -1)
  {
    +[AVTAnimoji animojiNames];
  }

  v3 = animojiNames_names;

  return v3;
}

void __26__AVTAnimoji_animojiNames__block_invoke()
{
  v0 = animojiNames_names;
  animojiNames_names = &unk_1F39D95C8;
}

+ (id)_scenePathForPuppetNamed:(id)named
{
  namedCopy = named;
  v4 = +[AVTResourceLocator sharedResourceLocator];
  v5 = [AVTResourceLocator pathForAnimojiResource:v4 ofType:? inDirectory:? isDirectory:?];

  return v5;
}

+ (id)_sceneURLForPuppetDirectoryURL:(id)l
{
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager contentsOfDirectoryAtURL:? includingPropertiesForKeys:? options:? error:?];

  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:0 objects:? count:?];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(8 * i);
        lastPathComponent = [v11 lastPathComponent];
        stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
        lastPathComponent2 = [lCopy lastPathComponent];
        v15 = [stringByDeletingPathExtension isEqualToString:?];

        if (v15)
        {
          pathExtension = [v11 pathExtension];
          if ([pathExtension isEqualToString:?])
          {

LABEL_13:
            v19 = v11;
            goto LABEL_14;
          }

          pathExtension2 = [v11 pathExtension];
          v18 = [pathExtension2 isEqualToString:?];

          if (v18)
          {
            goto LABEL_13;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_14:

  return v19;
}

- (id)_sceneURL
{
  if (self->_url)
  {
    v2 = [objc_opt_class() _sceneURLForPuppetDirectoryURL:?];
  }

  else if (self->_name)
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = [objc_opt_class() _scenePathForPuppetNamed:?];
    v2 = [v3 fileURLWithPath:? isDirectory:?];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_load
{
  v23 = *MEMORY[0x1E69E9840];
  _sceneURL = [(AVTAnimoji *)self _sceneURL];
  if (_sceneURL)
  {
    v4 = [MEMORY[0x1E69DF388] avt_rootNodeForWorldAtURL:? options:? error:?];
    v5 = 0;
    v6 = v5;
    if (v5)
    {
      v7 = avt_default_log(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(AVTAvatarPoseAnimation *)_sceneURL initWithSceneKitSceneAtURL:v6 usdaMetadata:v7];
      }
    }

    else
    {
      v8 = [v4 childNodeWithName:? recursively:?];
      avatarNode = self->_avatarNode;
      self->_avatarNode = v8;

      removeFromParentNode = [(VFXNode *)self->_avatarNode removeFromParentNode];
      if (self->_avatarNode)
      {
        if (!self->_name)
        {
          [AVTAnimoji _load];
        }

        v7 = AVTPrecompiledAnimojiSpecializationSettings(removeFromParentNode);
        v11 = [v7 objectForKeyedSubscript:?];
        specializationSettings = self->_specializationSettings;
        self->_specializationSettings = v11;

        v13 = [VFXNode childNodeWithName:"childNodeWithName:recursively:" recursively:?];
        [v13 avt_enableSubdivisionOnHierarchyWithQuality:? animoji:?];

        v14 = [v4 childNodeWithName:? recursively:?];
        lightingNode = self->_lightingNode;
        self->_lightingNode = v14;

        v16 = [v4 childNodeWithName:? recursively:?];
        cameraNode = self->_cameraNode;
        self->_cameraNode = v16;

        v18 = [VFXNode childNodeWithName:"childNodeWithName:recursively:" recursively:?];
        headNode = self->_headNode;
        self->_headNode = v18;

        [(AVTAvatar *)self _avatarNodeAndHeadNodeAreNowAvailable];
        [(AVTAvatar *)self resetCustomBehaviours];
        [(AVTAvatar *)self updateBindings];
      }

      else
      {
        v7 = avt_default_log(removeFromParentNode);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          name = self->_name;
          *buf = 138412290;
          v22 = name;
          _os_log_impl(&dword_1BB472000, v7, OS_LOG_TYPE_DEFAULT, "invalid node graph for animoji named %@", buf, 0xCu);
        }
      }
    }
  }
}

- (void)loadIfNeeded
{
  if (!self->_avatarNode)
  {
    [(AVTAnimoji *)self _load];
  }
}

- (id)avatarNode
{
  [(AVTAnimoji *)self loadIfNeeded];
  avatarNode = self->_avatarNode;

  return avatarNode;
}

- (void)updateWithOptions:(unint64_t)options
{
  avatarNode = [(AVTAnimoji *)self avatarNode];
}

+ (id)animojiWithContentsOfURL:(id)l
{
  lCopy = l;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setUrl:?];

  return v4;
}

- (AVTAnimoji)initWithName:(id)name error:(id *)p_isa
{
  v45 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (nameCopy)
  {
    animojiNames = [objc_opt_class() animojiNames];
    v9 = [animojiNames containsObject:?];

    if (v9)
    {
      v40.receiver = self;
      v40.super_class = AVTAnimoji;
      v11 = [(AVTAvatar *)&v40 init];
      self = v11;
      if (!v11)
      {
LABEL_6:
        self = self;
        p_isa = &self->super.super.isa;
        goto LABEL_17;
      }

      objc_storeStrong(&v11->_name, name);
      v12 = [objc_opt_class() _scenePathForPuppetNamed:?];
      if (v12)
      {

        goto LABEL_6;
      }

      v26 = avt_default_log(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [(AVTAnimoji *)&self->_name initWithName:v26 error:v34, v35, v36, v37, v38, v39];
      }
    }

    else
    {
      if (p_isa)
      {
        v23 = MEMORY[0x1E696ABC0];
        v41 = *MEMORY[0x1E696A578];
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:nameCopy];
        v42 = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
        *p_isa = [v23 errorWithDomain:? code:? userInfo:?];
      }

      v26 = avt_default_log(v10);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [(AVTAnimoji *)nameCopy initWithName:v26 error:v27, v28, v29, v30, v31, v32];
      }
    }

LABEL_16:
    p_isa = 0;
    goto LABEL_17;
  }

  v13 = avt_default_log(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(AVTAnimoji *)v13 initWithName:v14 error:v15, v16, v17, v18, v19, v20];
  }

  if (p_isa)
  {
    v21 = MEMORY[0x1E696ABC0];
    v43 = *MEMORY[0x1E696A578];
    v44 = @"Can't instanciate AVTAnimoji with nil name";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    *p_isa = [v21 errorWithDomain:? code:? userInfo:?];

    goto LABEL_16;
  }

LABEL_17:

  return p_isa;
}

+ (id)animojiNamed:(id)named
{
  namedCopy = named;
  v4 = [objc_alloc(objc_opt_class()) initWithName:? error:?];

  return v4;
}

- (id)newDescriptor
{
  v2 = [AVTAnimojiDescriptor alloc];

  return [(AVTAnimojiDescriptor *)v2 initWithAnimoji:?];
}

- (AVTAnimoji)initWithDescriptor:(id)descriptor usageIntent:(unint64_t)intent error:(id *)error
{
  name = [descriptor name];
  v7 = [AVTAnimoji initWithName:"initWithName:error:" error:?];

  return v7;
}

+ (id)thumbnailForAnimojiNamed:(id)named options:(id)options
{
  namedCopy = named;
  optionsCopy = options;
  v7 = [optionsCopy objectForKeyedSubscript:?];

  if (v7)
  {
    v8 = [optionsCopy objectForKeyedSubscript:?];

    bOOLValue = [(__CFString *)v8 BOOLValue];
    v10 = AVTFramingModeCamera;
    if (!bOOLValue)
    {
      v10 = AVTFramingModeGrid;
    }

    v11 = *v10;
  }

  else
  {
    v8 = [optionsCopy objectForKeyedSubscript:?];

    v11 = @"cameraGrid";
    if (v8)
    {
      v11 = v8;
    }
  }

  v12 = v11;

  v13 = [namedCopy stringByAppendingString:?];
  v14 = [v13 stringByAppendingString:?];

  v15 = +[AVTResourceLocator sharedResourceLocator];
  v16 = [AVTResourceLocator pathForAnimojiResource:v15 ofType:? inDirectory:? isDirectory:?];

  v17 = [MEMORY[0x1E69DCAB8] imageWithContentsOfFile:?];

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  [(AVTAnimoji *)self loadIfNeeded];
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setName:?];
  v5 = [(NSDictionary *)self->_specializationSettings copy];
  v6 = v4[35];
  v4[35] = v5;

  avatarNode = [(AVTAnimoji *)self avatarNode];
  v8 = AVTCloneNodesAndMaterials(avatarNode);
  v9 = v4[33];
  v4[33] = v8;

  v10 = [v4[33] childNodeWithName:? recursively:?];
  v11 = v4[32];
  v4[32] = v10;

  [v4 _avatarNodeAndHeadNodeAreNowAvailable];
  [v4 resetCustomBehaviours];
  [v4 updateBindings];
  clone = [(VFXNode *)self->_lightingNode clone];
  v13 = v4[31];
  v4[31] = clone;

  clone2 = [(VFXNode *)self->_cameraNode clone];
  v15 = v4[34];
  v4[34] = clone2;

  [v4[33] enumerateHierarchyUsingBlock:?];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  newDescriptor = [(AVTAnimoji *)self newDescriptor];
  [coderCopy encodeObject:? forKey:?];
}

- (AVTAnimoji)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];

  v6 = [AVTAnimoji initWithDescriptor:"initWithDescriptor:usageIntent:error:" usageIntent:? error:?];
  return v6;
}

+ (void)preloadAnimojiNamed:(id)named
{
  v4 = [AVTAnimoji puppetNamed:"puppetNamed:options:" options:?];
  [self preloadPuppet:?];
}

- (id)lightingNode
{
  [(AVTAnimoji *)self loadIfNeeded];
  lightingNode = self->_lightingNode;

  return lightingNode;
}

- (id)cameraNode
{
  [(AVTAnimoji *)self loadIfNeeded];
  cameraNode = self->_cameraNode;

  return cameraNode;
}

- (void)configureForBestAnimationQuality
{
  name = [(AVTAnimoji *)self name];
  if ([name isEqualToString:?])
  {
  }

  else
  {
    name2 = [(AVTAnimoji *)self name];
    v5 = [name2 isEqualToString:?];

    if (!v5)
    {
      return;
    }
  }

  avatarNode = self->_avatarNode;

  [(VFXNode *)avatarNode enumerateHierarchyUsingBlock:?];
}

void __46__AVTAnimoji_configureForBestAnimationQuality__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 morpher];
  [v2 setWeightIncrementalThreshold:?];
}

- (void)initWithName:(uint64_t)a3 error:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1BB472000, a2, a3, "Error: Unknown Animoji name %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithName:(uint64_t)a3 error:(uint64_t)a4 .cold.2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0(&dword_1BB472000, a2, a3, "Error: Can't find Animoji named %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithName:(uint64_t)a3 error:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "name";
}

@end