@interface MRUAssetManager
+ (MRUAssetManager)sharedManager;
- (BOOL)shouldLoadPhotorealisticAssetForRoute:(id)route;
- (MRUAssetManager)init;
- (id)symbolImageForEndpointRoute:(id)route;
- (void)imageForEndpointRoute:(id)route completion:(id)completion;
- (void)imageForModelIdentifier:(id)identifier color:(id)color allowFallback:(BOOL)fallback timeout:(double)timeout completion:(id)completion;
- (void)imageForModelIdentifier:(id)identifier color:(id)color name:(id)name allowFallback:(BOOL)fallback timeout:(double)timeout completion:(id)completion;
- (void)imageForOutputDevice:(id)device completion:(id)completion;
- (void)productKitImageForModelIdentifier:(id)identifier color:(id)color allowFallback:(BOOL)fallback timeout:(double)timeout completion:(id)completion;
@end

@implementation MRUAssetManager

+ (MRUAssetManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[MRUAssetManager sharedManager];
  }

  v3 = sharedManager_shared;

  return v3;
}

uint64_t __32__MRUAssetManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(MRUAssetManager);
  v1 = sharedManager_shared;
  sharedManager_shared = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (MRUAssetManager)init
{
  v6.receiver = self;
  v6.super_class = MRUAssetManager;
  v2 = [(MRUAssetManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69CDE88]);
    assetManager = v2->_assetManager;
    v2->_assetManager = v3;

    [(SFDeviceAssetManager *)v2->_assetManager activate];
  }

  return v2;
}

- (void)imageForEndpointRoute:(id)route completion:(id)completion
{
  routeCopy = route;
  completionCopy = completion;
  v8 = [(MRUAssetManager *)self symbolImageForEndpointRoute:routeCopy];
  if ([(MRUAssetManager *)self shouldLoadPhotorealisticAssetForRoute:routeCopy])
  {
    endpointObject = [routeCopy endpointObject];
    outputDevices = [endpointObject outputDevices];
    firstObject = [outputDevices firstObject];

    modelID = [firstObject modelID];
    deviceEnclosureColor = [firstObject deviceEnclosureColor];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__MRUAssetManager_imageForEndpointRoute_completion___block_invoke;
    v14[3] = &unk_1E7664978;
    v16 = completionCopy;
    v15 = v8;
    [(MRUAssetManager *)self imageForModelIdentifier:modelID color:deviceEnclosureColor allowFallback:0 completion:v14];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, v8);
  }
}

uint64_t __52__MRUAssetManager_imageForEndpointRoute_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (!a2)
  {
    a2 = *(a1 + 32);
  }

  return (*(v3 + 16))(v3, a2);
}

- (void)imageForOutputDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  deviceCopy = device;
  modelID = [deviceCopy modelID];
  deviceEnclosureColor = [deviceCopy deviceEnclosureColor];

  [(MRUAssetManager *)self imageForModelIdentifier:modelID color:deviceEnclosureColor completion:completionCopy];
}

- (void)imageForModelIdentifier:(id)identifier color:(id)color allowFallback:(BOOL)fallback timeout:(double)timeout completion:(id)completion
{
  fallbackCopy = fallback;
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  colorCopy = color;
  v15 = [(MRUAssetManager *)self shouldUseProductKitFor:identifierCopy];
  v16 = v15;
  v17 = MCLogCategoryDefault(v15);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
  if (v16)
  {
    if (v18)
    {
      v20 = 138412290;
      v21 = identifierCopy;
      _os_log_impl(&dword_1A20FC000, v17, OS_LOG_TYPE_DEBUG, "[AssetManager] Request for %@ - PK", &v20, 0xCu);
    }

    timeoutCopy = 3.0;
    if (timeout >= 3.0)
    {
      timeoutCopy = timeout;
    }

    [(MRUAssetManager *)self productKitImageForModelIdentifier:identifierCopy color:colorCopy allowFallback:fallbackCopy timeout:completionCopy completion:timeoutCopy];
  }

  else
  {
    if (v18)
    {
      v20 = 138412290;
      v21 = identifierCopy;
      _os_log_impl(&dword_1A20FC000, v17, OS_LOG_TYPE_DEBUG, "[AssetManager] Request for %@ - SF", &v20, 0xCu);
    }

    [(MRUAssetManager *)self imageForModelIdentifier:identifierCopy color:colorCopy name:@"ProxCard_Setup" allowFallback:fallbackCopy timeout:completionCopy completion:timeout];
  }
}

- (void)productKitImageForModelIdentifier:(id)identifier color:(id)color allowFallback:(BOOL)fallback timeout:(double)timeout completion:(id)completion
{
  fallbackCopy = fallback;
  v33 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  colorCopy = color;
  completionCopy = completion;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v17 = MCLogCategoryDefault(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v24 = uUIDString;
    v25 = 2112;
    v26 = identifierCopy;
    v27 = 2112;
    v28 = colorCopy;
    v29 = 1024;
    v30 = fallbackCopy;
    v31 = 2048;
    timeoutCopy = timeout;
    _os_log_impl(&dword_1A20FC000, v17, OS_LOG_TYPE_DEBUG, "[AssetManager] PK request<%@> for model: %@, color: %@, allow fallback? %{BOOL}u, timeout: %f", buf, 0x30u);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __92__MRUAssetManager_productKitImageForModelIdentifier_color_allowFallback_timeout_completion___block_invoke;
  v20[3] = &unk_1E76649A0;
  v21 = uUIDString;
  v22 = completionCopy;
  v18 = completionCopy;
  v19 = uUIDString;
  [MRUProductKit assetHardwareModel:identifierCopy color:colorCopy allowFallback:fallbackCopy timeout:v20 completion:timeout];
}

void __92__MRUAssetManager_productKitImageForModelIdentifier_color_allowFallback_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MCLogCategoryDefault(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v5;
      v10 = "[AssetManager] PK response<%@> Asset found: %@";
LABEL_6:
      _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEBUG, v10, &v13, 0x16u);
    }
  }

  else if (v8)
  {
    v11 = *(a1 + 32);
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v6;
    v10 = "[AssetManager] PK response<%@> Failed to obtain asset: %@";
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6, v12);
}

- (void)imageForModelIdentifier:(id)identifier color:(id)color name:(id)name allowFallback:(BOOL)fallback timeout:(double)timeout completion:(id)completion
{
  fallbackCopy = fallback;
  v50 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  colorCopy = color;
  nameCopy = name;
  completionCopy = completion;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v21 = MCLogCategoryDefault(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v41 = uUIDString;
    v42 = 2112;
    v43 = identifierCopy;
    v44 = 2112;
    v45 = colorCopy;
    v46 = 1024;
    v47 = fallbackCopy;
    v48 = 2048;
    timeoutCopy = timeout;
    _os_log_impl(&dword_1A20FC000, v21, OS_LOG_TYPE_DEBUG, "[AssetManager] Request<%@> Bundle for model: %@, color: %@, allow fallback? %{BOOL}u, timeout: %f", buf, 0x30u);
  }

  if (colorCopy)
  {
    v23 = objc_alloc(MEMORY[0x1E69CDE98]);
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __87__MRUAssetManager_imageForModelIdentifier_color_name_allowFallback_timeout_completion___block_invoke;
    v33 = &unk_1E76649C8;
    v34 = uUIDString;
    v36 = completionCopy;
    v37 = fallbackCopy;
    v35 = nameCopy;
    v24 = [v23 initWithQueryResultHandler:&v30];
    [v24 setTimeout:{timeout, v30, v31, v32, v33}];
    v25 = objc_alloc(MEMORY[0x1E69CDE90]);
    v38 = *MEMORY[0x1E69CDEF0];
    v39 = colorCopy;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v27 = [v25 initWithProductType:identifierCopy additionalQueryParameters:v26];

    [(SFDeviceAssetManager *)self->_assetManager getAssetBundleForDeviceQuery:v27 withRequestConfiguration:v24];
    v28 = v34;
  }

  else
  {
    v29 = MCLogCategoryDefault(v22);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v41 = uUIDString;
      _os_log_impl(&dword_1A20FC000, v29, OS_LOG_TYPE_DEBUG, "[AssetManager] Response<%@> No color provided, not requesting bundle", buf, 0xCu);
    }

    v28 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MRUAssetManagerErrorDomain" code:0 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v28);
  }
}

void __87__MRUAssetManager_imageForModelIdentifier_color_name_allowFallback_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = MCLogCategoryDefault(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v25 = 138413314;
    v26 = v13;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    v31 = 1024;
    v32 = a4;
    v33 = 2112;
    v34 = v11;
    _os_log_impl(&dword_1A20FC000, v12, OS_LOG_TYPE_DEBUG, "[AssetManager] Update<%@> Got bundle: %@, type: %@, fallback: %{BOOL}u, error: %@", &v25, 0x30u);
  }

  if (!v9)
  {
    v19 = MCLogCategoryDefault(v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 32);
      v25 = 138412290;
      v26 = v20;
      _os_log_impl(&dword_1A20FC000, v19, OS_LOG_TYPE_DEBUG, "[AssetManager] Response<%@> Failed to obtain bundle", &v25, 0xCu);
    }

    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v22 = 1;
    goto LABEL_15;
  }

  if (a4 && (*(a1 + 56) & 1) == 0)
  {
    v23 = MCLogCategoryDefault(v14);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(a1 + 32);
      v25 = 138412290;
      v26 = v24;
      _os_log_impl(&dword_1A20FC000, v23, OS_LOG_TYPE_DEBUG, "[AssetManager] Response<%@> Fallback bundle not allowed", &v25, 0xCu);
    }

    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v22 = 2;
LABEL_15:
    v17 = [v21 initWithDomain:@"MRUAssetManagerErrorDomain" code:v22 userInfo:0];
    v18 = *(*(a1 + 48) + 16);
    goto LABEL_16;
  }

  v15 = MCLogCategoryDefault(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 32);
    v25 = 138412290;
    v26 = v16;
    _os_log_impl(&dword_1A20FC000, v15, OS_LOG_TYPE_DEBUG, "[AssetManager] Response<%@> Bundle found", &v25, 0xCu);
  }

  v17 = [MEMORY[0x1E69DCAB8] imageNamed:*(a1 + 40) inBundle:v9 withConfiguration:0];
  v18 = *(*(a1 + 48) + 16);
LABEL_16:
  v18();
}

- (id)symbolImageForEndpointRoute:(id)route
{
  v3 = MEMORY[0x1E69B09B8];
  endpointObject = [route endpointObject];
  outputDevices = [endpointObject outputDevices];
  v6 = [v3 symbolNameForOutputDevices:outputDevices];

  v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v6];

  return v7;
}

- (BOOL)shouldLoadPhotorealisticAssetForRoute:(id)route
{
  endpointObject = [route endpointObject];
  outputDevices = [endpointObject outputDevices];

  firstObject = [outputDevices firstObject];
  v6 = [outputDevices count];
  deviceSubtype = [firstObject deviceSubtype];
  deviceEnclosureColor = [firstObject deviceEnclosureColor];

  v11 = v6 == 1 && deviceSubtype == 12 && deviceEnclosureColor != 0;
  return v11;
}

@end