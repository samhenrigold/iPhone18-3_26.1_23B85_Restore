@interface NTKCharacterResourceLoader
+ (id)sharedInstanceForDevice:(id)device withPixelFormat:(unint64_t)format;
+ (void)_deallocInstanceForDevice:(id)device;
- (id)_loadBank:(id)bank toArrays:(unint64_t)arrays allowNewKeys:(BOOL)keys;
- (id)getMTLTexture:(id)texture;
- (id)initForDevice:(id)device withPixelFormat:(unint64_t)format;
- (id)mtlTextureWithName:(id)name;
- (id)mtlTextureWithName:(id)name prefix:(id)prefix;
- (id)textureWithName:(id)name;
- (id)textureWithName:(id)name prefix:(id)prefix;
- (void)_asyncDeallocInstance;
- (void)_loadMTLBufferData;
- (void)_loadPrograms;
- (void)_loadTextures;
- (void)_setupPipelineForType:(unint64_t)type vertex:(id)vertex fragment:(id)fragment blending:(BOOL)blending inLibrary:(id)library librarySPI:(id)i;
- (void)addClient;
- (void)dealloc;
- (void)localeChanged;
- (void)removeClient;
@end

@implementation NTKCharacterResourceLoader

+ (id)sharedInstanceForDevice:(id)device withPixelFormat:(unint64_t)format
{
  deviceCopy = device;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!qword_25BB0)
  {
    v8 = objc_opt_new();
    v9 = qword_25BB0;
    qword_25BB0 = v8;
  }

  v10 = sub_228C(deviceCopy);
  v11 = [qword_25BB0 objectForKeyedSubscript:v10];
  if (!v11)
  {
    v11 = [[NTKCharacterResourceLoader alloc] initForDevice:deviceCopy withPixelFormat:format];
    [qword_25BB0 setObject:v11 forKeyedSubscript:v10];
  }

  objc_sync_exit(selfCopy);
  if (v11[14] != format)
  {
    sub_F4E8();
  }

  return v11;
}

+ (void)_deallocInstanceForDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = sub_228C(deviceCopy);
  [qword_25BB0 setObject:0 forKeyedSubscript:v5];

  objc_sync_exit(selfCopy);
}

- (id)initForDevice:(id)device withPixelFormat:(unint64_t)format
{
  deviceCopy = device;
  v22.receiver = self;
  v22.super_class = NTKCharacterResourceLoader;
  v8 = [(NTKCharacterResourceLoader *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clkDevice, device);
    v10 = +[CLKUIMetalResourceManager sharedDevice];
    mtlDevice = v9->_mtlDevice;
    v9->_mtlDevice = v10;

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    bundle = v9->_bundle;
    v9->_bundle = v12;

    v9->_viewMtlPixelFormat = format;
    v14 = objc_opt_new();
    mapping = v9->_mapping;
    v9->_mapping = v14;

    for (i = 136; i != 160; i += 8)
    {
      v17 = objc_opt_new();
      v18 = *(&v9->super.isa + i);
      *(&v9->super.isa + i) = v17;
    }

    [(NTKCharacterResourceLoader *)v9 _loadMTLBufferData];
    [(NTKCharacterResourceLoader *)v9 _loadPrograms];
    [(NTKCharacterResourceLoader *)v9 _loadTextures];
    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v9 selector:"localeChanged" name:NSCurrentLocaleDidChangeNotification object:0];

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v9 selector:"_asyncDeallocInstance" name:CLKClearCacheRequestNotification object:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSCurrentLocaleDidChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:CLKClearCacheRequestNotification object:0];

  v5.receiver = self;
  v5.super_class = NTKCharacterResourceLoader;
  [(NTKCharacterResourceLoader *)&v5 dealloc];
}

- (void)_asyncDeallocInstance
{
  v3 = +[NSThread isMainThread];
  v4 = objc_opt_class();
  if (v3)
  {
    clkDevice = self->_clkDevice;

    [v4 _deallocInstanceForDevice:clkDevice];
  }

  else
  {

    [v4 performSelectorOnMainThread:"_deallocInstanceForDevice:" withObject:? waitUntilDone:?];
  }
}

- (void)addClient
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_clients;
  objc_sync_exit(obj);
}

- (void)removeClient
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_clients - 1;
  selfCopy->_clients = v3;
  objc_sync_exit(selfCopy);

  if (!v3)
  {

    [(NTKCharacterResourceLoader *)selfCopy _asyncDeallocInstance];
  }
}

- (void)_loadMTLBufferData
{
  *&self->_bufferOffsetBackground = xmmword_14E80;
  *&self->_bufferOffsetHand = xmmword_14E90;
  *&self->_bufferOffsetFoot = xmmword_14EA0;
  *&self->_bufferOffsetSkirt = xmmword_14EB0;
  v3 = [(MTLDevice *)self->_mtlDevice newBufferWithLength:1456 options:0];
  mtlBuffer = self->_mtlBuffer;
  self->_mtlBuffer = v3;

  contents = [(MTLBuffer *)self->_mtlBuffer contents];
  v6 = &contents[self->_bufferOffsetBackground];
  *(v6 + 2) = xmmword_14EF0;
  *(v6 + 3) = unk_14F00;
  *v6 = xmmword_14ED0;
  *(v6 + 1) = unk_14EE0;
  v7 = &contents[self->_bufferOffsetHead];
  *v7 = xmmword_14F10;
  *(v7 + 1) = unk_14F20;
  *(v7 + 4) = xmmword_14F50;
  *(v7 + 5) = unk_14F60;
  *(v7 + 2) = xmmword_14F30;
  *(v7 + 3) = unk_14F40;
  v8 = &contents[self->_bufferOffsetBody];
  *v8 = xmmword_14F70;
  *(v8 + 1) = unk_14F80;
  *(v8 + 4) = xmmword_14FB0;
  *(v8 + 5) = unk_14FC0;
  *(v8 + 2) = xmmword_14F90;
  *(v8 + 3) = unk_14FA0;
  v9 = &contents[self->_bufferOffsetFoot];
  *v9 = xmmword_14FD0;
  *(v9 + 1) = unk_14FE0;
  *(v9 + 4) = xmmword_15010;
  *(v9 + 5) = unk_15020;
  *(v9 + 2) = xmmword_14FF0;
  *(v9 + 3) = unk_15000;
  v10 = &contents[self->_bufferOffsetHand];
  *(v10 + 2) = xmmword_15050;
  *(v10 + 3) = unk_15060;
  *(v10 + 4) = xmmword_15070;
  *(v10 + 5) = unk_15080;
  *v10 = xmmword_15030;
  *(v10 + 1) = unk_15040;
  memcpy(&contents[self->_bufferOffsetArm], &unk_15090, 0x270uLL);
  v11 = &contents[self->_bufferOffsetSkirt];
  *v11 = xmmword_15300;
  *(v11 + 1) = unk_15310;
  *(v11 + 2) = xmmword_15320;
  *(v11 + 3) = unk_15330;
  *(v11 + 6) = xmmword_15360;
  *(v11 + 7) = unk_15370;
  *(v11 + 4) = xmmword_15340;
  *(v11 + 5) = unk_15350;
  *(v11 + 10) = xmmword_153A0;
  *(v11 + 11) = unk_153B0;
  *(v11 + 8) = xmmword_15380;
  *(v11 + 9) = unk_15390;
  v12 = &contents[self->_bufferOffsetFlower];
  *(v12 + 2) = xmmword_153E0;
  *(v12 + 3) = unk_153F0;
  *v12 = xmmword_153C0;
  *(v12 + 1) = unk_153D0;
  *(v12 + 6) = xmmword_15420;
  *(v12 + 7) = unk_15430;
  *(v12 + 4) = xmmword_15400;
  *(v12 + 5) = unk_15410;
  *(v12 + 10) = xmmword_15460;
  *(v12 + 11) = unk_15470;
  *(v12 + 8) = xmmword_15440;
  *(v12 + 9) = unk_15450;
}

- (void)_setupPipelineForType:(unint64_t)type vertex:(id)vertex fragment:(id)fragment blending:(BOOL)blending inLibrary:(id)library librarySPI:(id)i
{
  blendingCopy = blending;
  fragmentCopy = fragment;
  libraryCopy = library;
  vertexCopy = vertex;
  v16 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v16 setLabel:fragmentCopy];
  v17 = [libraryCopy newFunctionWithName:vertexCopy];

  [v16 setVertexFunction:v17];
  v18 = [libraryCopy newFunctionWithName:fragmentCopy];

  [v16 setFragmentFunction:v18];
  viewMtlPixelFormat = self->_viewMtlPixelFormat;
  colorAttachments = [v16 colorAttachments];
  v21 = [colorAttachments objectAtIndexedSubscript:0];
  [v21 setPixelFormat:viewMtlPixelFormat];

  if (blendingCopy)
  {
    colorAttachments2 = [v16 colorAttachments];
    v23 = [colorAttachments2 objectAtIndexedSubscript:0];
    [v23 setBlendingEnabled:1];

    colorAttachments3 = [v16 colorAttachments];
    v25 = [colorAttachments3 objectAtIndexedSubscript:0];
    [v25 setRgbBlendOperation:0];

    colorAttachments4 = [v16 colorAttachments];
    v27 = [colorAttachments4 objectAtIndexedSubscript:0];
    [v27 setAlphaBlendOperation:0];

    colorAttachments5 = [v16 colorAttachments];
    v29 = [colorAttachments5 objectAtIndexedSubscript:0];
    [v29 setSourceRGBBlendFactor:4];

    colorAttachments6 = [v16 colorAttachments];
    v31 = [colorAttachments6 objectAtIndexedSubscript:0];
    [v31 setSourceAlphaBlendFactor:4];

    colorAttachments7 = [v16 colorAttachments];
    v33 = [colorAttachments7 objectAtIndexedSubscript:0];
    [v33 setDestinationRGBBlendFactor:5];

    colorAttachments8 = [v16 colorAttachments];
    v35 = [colorAttachments8 objectAtIndexedSubscript:0];
    [v35 setDestinationAlphaBlendFactor:5];
  }

  mtlDevice = self->_mtlDevice;
  v43 = 0;
  v37 = [(MTLDevice *)mtlDevice newRenderPipelineStateWithDescriptor:v16 error:&v43];
  v38 = v43;
  v39 = &self->super.isa + type;
  v40 = v39[10];
  v39[10] = v37;

  if (!v39[10])
  {
    v41 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
    {
      v42 = self->_mtlDevice;
      *buf = 138412802;
      v45 = fragmentCopy;
      v46 = 2112;
      v47 = v42;
      v48 = 2112;
      v49 = v38;
      _os_log_fault_impl(&dword_0, v41, OS_LOG_TYPE_FAULT, "Character Metal compilation failure: Shader=%@ Device=%@ Error=%@", buf, 0x20u);
    }
  }
}

- (void)_loadPrograms
{
  mtlDevice = self->_mtlDevice;
  v4 = NTKGetCharacterFaceBundle(self);
  v5 = [(MTLDevice *)mtlDevice newDefaultLibraryWithBundle:v4 error:0];

  [(NTKCharacterResourceLoader *)self _setupPipelineForType:0 vertex:@"simpleSpriteVSH" fragment:@"rgbaSpriteFSH" blending:1 inLibrary:v5 librarySPI:0];
  [(NTKCharacterResourceLoader *)self _setupPipelineForType:1 vertex:@"simpleSpriteVSH" fragment:@"redSpriteFSH" blending:0 inLibrary:v5 librarySPI:0];
  [(NTKCharacterResourceLoader *)self _setupPipelineForType:2 vertex:@"simpleSpriteVSH" fragment:@"alphaSpriteFSH" blending:1 inLibrary:v5 librarySPI:0];
  [(NTKCharacterResourceLoader *)self _setupPipelineForType:3 vertex:@"boneSpriteVSH" fragment:@"recoloringFSH" blending:1 inLibrary:v5 librarySPI:0];
}

- (id)_loadBank:(id)bank toArrays:(unint64_t)arrays allowNewKeys:(BOOL)keys
{
  keysCopy = keys;
  arraysCopy = arrays;
  bankCopy = bank;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  selfCopy = self;
  obj = CLKUIOrderedSuffixesForDevice();
  v53 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (!v53)
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_42;
  }

  v7 = 0;
  v8 = 0;
  v51 = *v60;
LABEL_3:
  v9 = 0;
  v10 = v7;
  v11 = v8;
  while (1)
  {
    if (*v60 != v51)
    {
      objc_enumerationMutation(obj);
    }

    v12 = *(*(&v59 + 1) + 8 * v9);
    bundle = selfCopy->_bundle;
    v14 = [NSString stringWithFormat:@"%@%@@2x", bankCopy, v12];
    v15 = [(NSBundle *)bundle pathForResource:v14 ofType:@"plist"];

    v16 = selfCopy->_bundle;
    v8 = v15;
    v17 = [NSString stringWithFormat:@"%@%@@2x", bankCopy, v12];
    v7 = [(NSBundle *)v16 pathForResource:v17 ofType:@"baf"];

    if (v8 && v7 != 0)
    {
      break;
    }

    v9 = v9 + 1;
    v10 = v7;
    v11 = v8;
    if (v53 == v9)
    {
      v53 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
      if (v53)
      {
        goto LABEL_3;
      }

      break;
    }
  }

  v19 = 0;
  if (v8 && v7)
  {
    obj = [[NSMutableDictionary alloc] initWithContentsOfFile:v8];
    if (obj)
    {
      v19 = [CLKUIMmapFile mmapFileWithPath:v7];
      if (v19)
      {
        v41 = v7;
        v42 = v8;
        v20 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v65 = bankCopy;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Mapping texture bank for %@", buf, 0xCu);
        }

        bytes = [v19 bytes];
        v40 = v19;
        v21 = [v19 length];
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v52 = obj;
        v50 = [v52 countByEnumeratingWithState:&v55 objects:v63 count:16];
        if (v50)
        {
          v49 = *v56;
          arrayByLocale = selfCopy->_arrayByLocale;
          v46 = v21;
          do
          {
            for (i = 0; i != v50; i = i + 1)
            {
              if (*v56 != v49)
              {
                objc_enumerationMutation(v52);
              }

              v24 = *(*(&v55 + 1) + 8 * i);
              v25 = [v52 objectForKeyedSubscript:v24];
              v26 = [v25 objectForKeyedSubscript:@"offset"];
              v27 = [v25 objectForKeyedSubscript:@"size"];
              v54 = v26;
              intValue = [v26 intValue];
              intValue2 = [v27 intValue];
              if (intValue2 + intValue <= v21)
              {
                v31 = intValue2;
                v32 = &bytes[intValue];
                v30 = [(NSMutableDictionary *)selfCopy->_mapping objectForKey:v24];
                v33 = [[NTKCharacterTexture alloc] initWithData:v32 length:v31];
                if (v30)
                {
                  unsignedIntegerValue = [v30 unsignedIntegerValue];
                  for (j = 0; j != 3; ++j)
                  {
                    if (((1 << j) & arraysCopy) != 0)
                    {
                      [(NSMutableArray *)arrayByLocale[j] setObject:v33 atIndexedSubscript:unsignedIntegerValue];
                    }
                  }
                }

                else if (keysCopy)
                {
                  v36 = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)selfCopy->_mapping count]];
                  [(NSMutableDictionary *)selfCopy->_mapping setObject:v36 forKeyedSubscript:v24];

                  for (k = 0; k != 3; ++k)
                  {
                    [(NSMutableArray *)arrayByLocale[k] addObject:v33];
                  }
                }

                v21 = v46;
              }

              else
              {
                v30 = _NTKLoggingObjectForDomain();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v65 = v24;
                  _os_log_error_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "Asset %@ exceeds map file", buf, 0xCu);
                }
              }
            }

            v50 = [v52 countByEnumeratingWithState:&v55 objects:v63 count:16];
          }

          while (v50);
        }

        v19 = v40;
        v38 = v40;
        v7 = v41;
        v8 = v42;
      }

      goto LABEL_43;
    }

LABEL_42:
    v19 = 0;
LABEL_43:
  }

  return v19;
}

- (void)localeChanged
{
  v3 = CLKLocaleCurrentNumberSystem();
  v4 = v3 == 1;
  if (v3 == 2)
  {
    v4 = 2;
  }

  v5 = self->_arrayByLocale[v4];

  objc_storeStrong(&self->_array, v5);
}

- (void)_loadTextures
{
  v3 = [(NTKCharacterResourceLoader *)self _loadBank:@"Mickey" toArrays:-1 allowNewKeys:1];
  mickeyBank = self->_mickeyBank;
  self->_mickeyBank = v3;

  v5 = [(NTKCharacterResourceLoader *)self _loadBank:@"Minnie" toArrays:-1 allowNewKeys:1];
  minnieBank = self->_minnieBank;
  self->_minnieBank = v5;

  v7 = [(NTKCharacterResourceLoader *)self _loadBank:@"Common-latn" toArrays:-1 allowNewKeys:1];
  commonBankLatn = self->_commonBankLatn;
  self->_commonBankLatn = v7;

  v9 = [(NTKCharacterResourceLoader *)self _loadBank:@"Common-arab" toArrays:2 allowNewKeys:0];
  commonBankArab = self->_commonBankArab;
  self->_commonBankArab = v9;

  v11 = [(NTKCharacterResourceLoader *)self _loadBank:@"Common-deva" toArrays:4 allowNewKeys:0];
  commonBankDeva = self->_commonBankDeva;
  self->_commonBankDeva = v11;

  [(NTKCharacterResourceLoader *)self localeChanged];
}

- (id)mtlTextureWithName:(id)name prefix:(id)prefix
{
  v5 = [prefix stringByAppendingString:name];
  v6 = [(NTKCharacterResourceLoader *)self mtlTextureWithName:v5];

  return v6;
}

- (id)mtlTextureWithName:(id)name
{
  nameCopy = name;
  v5 = [(NSMutableDictionary *)self->_mapping objectForKey:nameCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = nameCopy;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%@ texture is missing", &v16, 0xCu);
    }

    v7 = [NSNumber numberWithUnsignedInteger:-1];
  }

  v9 = v7;
  unsignedIntegerValue = [v7 unsignedIntegerValue];
  if (unsignedIntegerValue >= [(NSMutableArray *)self->_array count])
  {
    mtlTexture2 = 0;
  }

  else
  {
    v11 = [(NSMutableArray *)self->_array objectAtIndexedSubscript:unsignedIntegerValue];
    mtlTexture = [v11 mtlTexture];

    if (!mtlTexture)
    {
      v13 = NTKCharacterLoadMtlTextureFromMemory([v11 data], objc_msgSend(v11, "length"), self->_mtlDevice, self->_mickeyBank);
      [v11 setMtlTexture:v13];
    }

    mtlTexture2 = [v11 mtlTexture];
  }

  return mtlTexture2;
}

- (id)textureWithName:(id)name prefix:(id)prefix
{
  v5 = [prefix stringByAppendingString:name];
  v6 = [(NTKCharacterResourceLoader *)self textureWithName:v5];

  return v6;
}

- (id)textureWithName:(id)name
{
  nameCopy = name;
  v5 = [(NSMutableDictionary *)self->_mapping objectForKey:nameCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = nameCopy;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%@ texture is missing", &v11, 0xCu);
    }

    v7 = [NSNumber numberWithUnsignedInteger:-1];
  }

  v9 = v7;

  return v9;
}

- (id)getMTLTexture:(id)texture
{
  unsignedIntegerValue = [texture unsignedIntegerValue];
  if (unsignedIntegerValue >= [(NSMutableArray *)self->_array count])
  {
    mtlTexture2 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_array objectAtIndexedSubscript:unsignedIntegerValue];
    mtlTexture = [v5 mtlTexture];

    if (!mtlTexture)
    {
      v7 = NTKCharacterLoadMtlTextureFromMemory([v5 data], objc_msgSend(v5, "length"), self->_mtlDevice, self->_mickeyBank);
      [v5 setMtlTexture:v7];
    }

    mtlTexture2 = [v5 mtlTexture];
  }

  return mtlTexture2;
}

@end