@interface GCDeviceHaptics
- (CHHapticEngine)createEngineWithLocality:(GCHapticsLocality)locality;
- (GCController)controller;
- (GCDeviceHaptics)initWithCapabilityGraph:(id)graph;
@end

@implementation GCDeviceHaptics

- (CHHapticEngine)createEngineWithLocality:(GCHapticsLocality)locality
{
  v38[6] = *MEMORY[0x1E69E9840];
  v4 = locality;
  if (v4 && [(NSMutableSet *)self->_supportedLocalities containsObject:v4])
  {
    nodes = [(GCHapticCapabilityGraph *)self->_capabilityGraph nodes];
    v6 = [nodes objectForKeyedSubscript:v4];

    v7 = GCCurrentProcessLinkedOnAfter(0x7E70901FFFFFFFFuLL);
    v38[0] = @"com.apple.GameController.gamecontrollerd.haptics";
    v37[0] = @"MachServiceName";
    v37[1] = @"actuators";
    v8 = MEMORY[0x1E696ACC8];
    v35 = v6;
    actuators = [v6 actuators];
    v33 = [v8 archivedDataWithRootObject:actuators requiringSecureCoding:1 error:0];
    v38[1] = v33;
    v37[2] = @"controllerIdentifier";
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    identifier = [WeakRetained identifier];
    v38[2] = identifier;
    v37[3] = @"persistentControllerIdentifier";
    v11 = objc_loadWeakRetained(&self->_controller);
    persistentIdentifier = [v11 persistentIdentifier];
    v38[3] = persistentIdentifier;
    v37[4] = @"controllerProductCategory";
    v13 = objc_loadWeakRetained(&self->_controller);
    productCategory = [v13 productCategory];
    v38[4] = productCategory;
    v37[5] = @"shouldSquareContinuousIntensity";
    v15 = [MEMORY[0x1E696AD98] numberWithBool:v7 ^ 1u];
    v38[5] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:6];

    if (gc_isInternalBuild(v17, v18))
    {
      [GCDeviceHaptics createEngineWithLocality:v16];
    }

    v36 = 0;
    v19 = [objc_alloc(MEMORY[0x1E695F570]) initWithOptions:v16 error:&v36];
    v20 = v36;
    isInternalBuild = gc_isInternalBuild(v20, v21);
    if (v20)
    {
      if (isInternalBuild)
      {
        [(GCDeviceHaptics *)v16 createEngineWithLocality:v20];
      }

      v23 = +[GCAnalytics instance];
      v24 = currentProcessBundleIdentifier(v23);
      v25 = objc_loadWeakRetained(&self->_controller);
      productCategory2 = [v25 productCategory];
      [v23 sendHapticsErrorRaisedEventFromSource:v24 productCategory:productCategory2 errorType:@"CHHapticEngineCreationFailure"];

      v27 = 0;
    }

    else
    {
      if (isInternalBuild)
      {
        [GCDeviceHaptics createEngineWithLocality:v19];
      }

      v28 = +[GCAnalytics instance];
      v29 = currentProcessBundleIdentifier(v28);
      controller = [(GCDeviceHaptics *)self controller];
      productCategory3 = [controller productCategory];
      [v28 sendHapticsEngineCreatedEventForBundleID:v29 productCategory:productCategory3 hapticsLocality:v4];

      v27 = v19;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (GCController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (GCDeviceHaptics)initWithCapabilityGraph:(id)graph
{
  graphCopy = graph;
  v12.receiver = self;
  v12.super_class = GCDeviceHaptics;
  v6 = [(GCDeviceHaptics *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_capabilityGraph, graph);
    exposedCapabilities = [graphCopy exposedCapabilities];
    v9 = [exposedCapabilities copy];
    supportedLocalities = v7->_supportedLocalities;
    v7->_supportedLocalities = v9;
  }

  return v7;
}

- (void)createEngineWithLocality:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v9) = 138412290;
    *(&v9 + 4) = a1;
    OUTLINED_FUNCTION_1_19(&dword_1D2CD5000, v3, v4, "Creating CHHapticEngine with options %@", v5, v6, v7, v8, v9, DWORD2(v9));
  }
}

- (void)createEngineWithLocality:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = getGCLogger(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412546;
    v6 = a1;
    v7 = 2112;
    v8 = a2;
    _os_log_error_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_ERROR, "Error creating CHHapticEngine with options %@ - %@", &v5, 0x16u);
  }
}

- (void)createEngineWithLocality:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v9) = 138412290;
    *(&v9 + 4) = a1;
    OUTLINED_FUNCTION_1_19(&dword_1D2CD5000, v3, v4, "Created CHHapticEngine %@", v5, v6, v7, v8, v9, DWORD2(v9));
  }
}

@end