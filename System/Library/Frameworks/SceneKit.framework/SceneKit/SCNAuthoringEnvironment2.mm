@interface SCNAuthoringEnvironment2
+ (id)authoringEnvironmentForScene:(id)scene createIfNeeded:(BOOL)needed;
- (SCNAuthoringEnvironment2)initWithScene:(id)scene;
- (id)authoringCamera:(int64_t)camera;
- (id)cameraFrustumGeometry;
- (id)cameraGeometry;
- (id)cameraNearPlaneGeometry;
- (id)cameraOrthographicFrustumGeometry;
- (id)fieldGeometry;
- (id)geometryForLightType:(id)type;
- (id)particlesGeometry;
- (void)_resetLightAuthoringWithContainerNode:(id)node source:(id)source light:(id)light;
- (void)_updateRootsVisibility;
- (void)addCameraNode:(id)node;
- (void)addLightNode:(id)node;
- (void)addNodeToSelection:(id)selection;
- (void)addParticlesNode:(id)node;
- (void)addPhysicsFieldNode:(id)node;
- (void)addedNode:(id)node;
- (void)cancelSelection;
- (void)dealloc;
- (void)prepareScene:(id)scene;
- (void)removeCameraNode:(id)node;
- (void)removeLightNode:(id)node;
- (void)removeParticlesNode:(id)node;
- (void)removePhysicsFieldNode:(id)node;
- (void)removedNode:(id)node;
- (void)selectNode:(id)node;
- (void)selectNodes:(id)nodes;
- (void)setAuthoringCamera:(int64_t)camera forView:(id)view;
- (void)setupParticleMeshEmitter:(id)emitter authoringNode:(id)node;
- (void)updateCameraNode:(id)node withSourceNode:(id)sourceNode;
- (void)updateFieldNode:(id)node withSourceNode:(id)sourceNode;
- (void)updateLightNode:(id)node withSourceNode:(id)sourceNode;
- (void)updateLightTypeForNode:(id)node source:(id)source light:(id)light screenspaceScalingFactor:(float)factor;
- (void)updateParticlesNode:(id)node withSourceNode:(id)sourceNode;
- (void)updateWithRenderer:(id)renderer;
@end

@implementation SCNAuthoringEnvironment2

+ (id)authoringEnvironmentForScene:(id)scene createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  +[SCNTransaction lock];
  sceneRef = [scene sceneRef];
  if (sceneRef)
  {
    v8 = sceneRef;
    C3DSceneLock(sceneRef, v7);
    AuthoringEnvironment2 = C3DSceneGetAuthoringEnvironment2(v8, neededCopy);
    C3DSceneUnlock(v8, v10);
  }

  else
  {
    AuthoringEnvironment2 = 0;
  }

  +[SCNTransaction unlock];
  return AuthoringEnvironment2;
}

- (SCNAuthoringEnvironment2)initWithScene:(id)scene
{
  v7.receiver = self;
  v7.super_class = SCNAuthoringEnvironment2;
  v4 = [(SCNAuthoringEnvironment2 *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(SCNAuthoringEnvironment2 *)v4 prepareScene:scene];
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->_lightsDictionary);
  CFRelease(self->_camerasDictionary);
  CFRelease(self->_particlesDictionary);
  CFRelease(self->_physicsFieldsDictionary);

  v3.receiver = self;
  v3.super_class = SCNAuthoringEnvironment2;
  [(SCNAuthoringEnvironment2 *)&v3 dealloc];
}

- (void)prepareScene:(id)scene
{
  v64[1] = *MEMORY[0x277D85DE8];
  self->_scene = [scene sceneRef];
  self->_manipulator = objc_alloc_init(SCNManipulator);
  self->_selection = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = MEMORY[0x277CBF138];
  v5 = MEMORY[0x277CBF150];
  self->_lightsDictionary = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  self->_camerasDictionary = CFDictionaryCreateMutable(0, 0, v4, v5);
  self->_particlesDictionary = CFDictionaryCreateMutable(0, 0, v4, v5);
  self->_physicsFieldsDictionary = CFDictionaryCreateMutable(0, 0, v4, v5);
  self->_layerRoot = +[SCNNode node];
  self->_overlayLayerRoot = +[SCNNode node];
  self->_lightRoot = +[SCNNode node];
  self->_cameraRoot = +[SCNNode node];
  self->_particlesRoot = +[SCNNode node];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  Mesh::AppendWireframeSphere(&v59, 1.0, 3u, &C3DAuthoringEnvironmentColorWhite);
  v6 = [SCNNode nodeWithGeometry:Mesh::CreateLineGeometry(&v59)];
  self->_cameraTarget = v6;
  [(SCNNode *)v6 setHidden:1];
  if (v62)
  {
    *(&v62 + 1) = v62;
    operator delete(v62);
  }

  if (*(&v60 + 1))
  {
    *&v61 = *(&v60 + 1);
    operator delete(*(&v60 + 1));
  }

  if (v59)
  {
    *(&v59 + 1) = v59;
    operator delete(v59);
  }

  self->_physicsFieldsRoot = +[SCNNode node];
  self->_pointsOfViewRoot = +[SCNNode node];
  [(SCNNode *)self->_layerRoot setName:@"_layerRoot"];
  [(SCNNode *)self->_overlayLayerRoot setName:@"_overlayLayerRoot"];
  [(SCNNode *)self->_lightRoot setName:@"_lightRoot"];
  [(SCNNode *)self->_cameraRoot setName:@"_cameraRoot"];
  [(SCNNode *)self->_particlesRoot setName:@"_particlesRoot"];
  [(SCNNode *)self->_physicsFieldsRoot setName:@"_physicsFieldRoot"];
  [(SCNNode *)self->_pointsOfViewRoot setName:@"_pointsOfViewRoot"];
  self->_paleGreen = [MEMORY[0x277D75348] scn_colorWithC3DColor:C3DAuthoringEnvironmentColorPaleGreen];
  self->_paleBlue = [MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorPaleBlue];
  self->_red = [MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorRed];
  self->_green = [MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorGreen];
  self->_blue = [MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorBlue];
  self->_cyan = [MEMORY[0x277D75348] scn_colorWithC3DColor:C3DAuthoringEnvironmentColorCyan];
  self->_yellow = [MEMORY[0x277D75348] scn_colorWithC3DColor:C3DAuthoringEnvironmentColorYellow];
  self->_orange = [MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorOrange];
  self->_pink = [MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorPink];
  self->_grayLight = [MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorGrayLight];
  self->_grayMedium = [MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorGrayMedium];
  self->_grayDark = [MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorGrayDark];
  self->_white = [MEMORY[0x277D75348] scn_colorWithC3DColor:&C3DAuthoringEnvironmentColorWhite];
  [(SCNNode *)self->_layerRoot setAuthoringEnvironmentNode:1];
  [(SCNNode *)self->_overlayLayerRoot setAuthoringEnvironmentNode:1];
  [(SCNNode *)self->_lightRoot setAuthoringEnvironmentNode:1];
  [(SCNNode *)self->_cameraRoot setAuthoringEnvironmentNode:1];
  [(SCNNode *)self->_particlesRoot setAuthoringEnvironmentNode:1];
  [(SCNNode *)self->_physicsFieldsRoot setAuthoringEnvironmentNode:1];
  [(SCNNode *)self->_cameraTarget setAuthoringEnvironmentNode:1];
  [(SCNNode *)self->_pointsOfViewRoot setAuthoringEnvironmentNode:1];
  [(SCNNode *)self->_lightRoot setHidden:1];
  [(SCNNode *)self->_cameraRoot setHidden:1];
  [(SCNNode *)self->_particlesRoot setHidden:1];
  [scene setRootNode:self->_layerRoot forLayer:1];
  [scene setRootNode:self->_overlayLayerRoot forLayer:2];
  [(SCNNode *)self->_layerRoot addChildNode:self->_lightRoot];
  [(SCNNode *)self->_layerRoot addChildNode:self->_cameraRoot];
  [(SCNNode *)self->_layerRoot addChildNode:self->_particlesRoot];
  [(SCNNode *)self->_layerRoot addChildNode:self->_physicsFieldsRoot];
  [(SCNNode *)self->_layerRoot addChildNode:self->_cameraTarget];
  [(SCNNode *)self->_layerRoot addChildNode:self->_pointsOfViewRoot];
  rootNode = [scene rootNode];
  +[SCNTransaction begin];
  [SCNTransaction setDisableActions:1];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __41__SCNAuthoringEnvironment2_prepareScene___block_invoke;
  v58[3] = &unk_2782FBA38;
  v58[4] = self;
  [rootNode enumerateChildNodesUsingBlock:v58];
  +[SCNTransaction commit];
  v64[0] = [scene rootNode];
  BoundingSphere = SCNNodeGetBoundingSphere([MEMORY[0x277CBEA60] arrayWithObjects:v64 count:1], 0x10000);
  v9 = v8;
  +[SCNNode simdLocalUp];
  v47 = v10;
  +[SCNNode simdLocalRight];
  v46 = v11;
  +[SCNNode simdLocalFront];
  v45 = v12;
  v13 = 0;
  v12.i64[0] = BoundingSphere;
  v12.i64[1] = v9;
  v49 = v12;
  v14 = *(&v9 + 1) * 1.33;
  if (*(&v9 + 1) <= 0.0)
  {
    v14 = 1.0;
  }

  v15 = v14;
  v16 = *(&v9 + 1);
  do
  {
    v17 = +[SCNCamera camera];
    v18 = [SCNAuthoringEnvironment2 prepareScene:]::camNames[v13];
    -[SCNCamera setName:](v17, "setName:", [MEMORY[0x277CCACA8] stringWithFormat:@"_authoringCamera%s", v18]);
    [(SCNCamera *)v17 setUsesOrthographicProjection:v13 != 0];
    [(SCNCamera *)v17 setAutomaticallyAdjustsZRange:1];
    [(SCNCamera *)v17 setOrthographicScale:v15];
    v19 = +[SCNNode node];
    [(SCNNode *)v19 setCamera:v17];
    -[SCNNode setName:](v19, "setName:", [MEMORY[0x277CCACA8] stringWithUTF8String:v18]);
    [(SCNNode *)v19 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v19 setAuthoringCameraType:v13];
    if (v13 <= 2)
    {
      if (v13)
      {
        if (v13 == 1)
        {
          LODWORD(v20) = -1077342245;
          [(SCNNode *)v19 setEulerAngles:v20, 0.0, 0.0];
          [(SCNCamera *)v17 zNear];
          v25 = v24 + v16;
          [(SCNNode *)v19 setSimdWorldPosition:*vmlaq_n_f32(v49, v47, v25).i64];
        }

        else
        {
          LODWORD(v20) = 1070141403;
          [(SCNNode *)v19 setEulerAngles:v20, 0.0, 0.0];
          [(SCNCamera *)v17 zNear];
          v33.f32[0] = v32 + v16;
          [(SCNNode *)v19 setSimdWorldPosition:*vmlsq_lane_f32(v49, v47, v33, 0).i64];
        }
      }

      else
      {
        [(SCNCamera *)[(SCNNode *)v19 camera] setZNear:0.1];
        if (self->_scene && (+[SCNTransaction lock](SCNTransaction, "lock"), C3DSceneLock(self->_scene, v28), v29 = C3DCreateDefaultCameraNode(self->_scene, 1), C3DSceneUnlock(self->_scene, v30), +[SCNTransaction unlock], v29))
        {
          v31 = [SCNNode nodeWithNodeRef:v29];
          if (v31)
          {
            objc_msgSend_transform(v31);
          }

          else
          {
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
          }

          v59 = v54;
          v60 = v55;
          v61 = v56;
          v62 = v57;
          [(SCNNode *)v19 setTransform:&v59];
          CFRelease(v29);
        }

        else
        {
          v38 = [objc_msgSend(rootNode childNodesWithAttribute:objc_opt_class() recursively:{1), "firstObject"}];
          if (v38)
          {
            objc_msgSend_transform(v38);
            v59 = v50;
            v60 = v51;
            v61 = v52;
            v62 = v53;
            [(SCNNode *)v19 setTransform:&v59];
          }

          else
          {
            LODWORD(v40) = 1061628640;
            LODWORD(v39) = -1094336732;
            [(SCNNode *)v19 setEulerAngles:v39, v40, 0.0];
            LODWORD(v41) = 1075302105;
            LODWORD(v42) = 1069321028;
            LODWORD(v43) = 1075415351;
            [(SCNNode *)v19 setPosition:v41, v42, v43];
          }
        }
      }
    }

    else if (v13 > 4)
    {
      if (v13 == 5)
      {
        [(SCNNode *)v19 setEulerAngles:0.0, 0.0, 0.0];
        [(SCNCamera *)v17 zNear];
        v27.f32[0] = v26 + v16;
        [(SCNNode *)v19 setSimdWorldPosition:*vmlsq_lane_f32(v49, v45, v27, 0).i64];
      }

      else
      {
        LODWORD(v21) = -1068953637;
        [(SCNNode *)v19 setEulerAngles:0.0, v21, 0.0];
        [(SCNCamera *)v17 zNear];
        v37 = v36 + v16;
        [(SCNNode *)v19 setSimdWorldPosition:*vmlaq_n_f32(v49, v45, v37).i64];
      }
    }

    else if (v13 == 3)
    {
      LODWORD(v21) = -1077342245;
      [(SCNNode *)v19 setEulerAngles:0.0, v21, 0.0];
      [(SCNCamera *)v17 zNear];
      v23.f32[0] = v22 + v16;
      [(SCNNode *)v19 setSimdWorldPosition:*vmlsq_lane_f32(v49, v46, v23, 0).i64];
    }

    else
    {
      LODWORD(v21) = 1070141403;
      [(SCNNode *)v19 setEulerAngles:0.0, v21, 0.0];
      [(SCNCamera *)v17 zNear];
      v35 = v34 + v16;
      [(SCNNode *)v19 setSimdWorldPosition:*vmlaq_n_f32(v49, v46, v35).i64];
    }

    [(SCNNode *)self->_pointsOfViewRoot addChildNode:v19];
    ++v13;
  }

  while (v13 != 7);
  [(SCNAuthoringEnvironment2 *)self setDisplayMask:0];
}

- (id)geometryForLightType:(id)type
{
  if (objc_msgSend_isEqualToString_(type, a2, @"probe"))
  {
    return 0;
  }

  lightGeometry = self->_lightGeometry;
  if (!lightGeometry)
  {
    *__p = 0u;
    v11 = 0u;
    *v8 = 0u;
    v9 = 0u;
    *v7 = 0u;
    Mesh::AppendWireframeSphere(v7, 0.5, 3u, &C3DAuthoringEnvironmentColorWhite);
    self->_lightGeometry = Mesh::CreateLineGeometry(v7);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v8[1])
    {
      *&v9 = v8[1];
      operator delete(v8[1]);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }

    lightGeometry = self->_lightGeometry;
  }

  v6 = [(SCNGeometry *)lightGeometry copy];
  [v6 setFirstMaterial:{-[SCNMaterial copy](-[SCNGeometry firstMaterial](self->_lightGeometry, "firstMaterial"), "copy")}];
  return v6;
}

- (void)addLightNode:(id)node
{
  v5 = CFDictionaryContainsKey(self->_lightsDictionary, node);
  if (v5)
  {
    v7 = scn_default_log(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNAuthoringEnvironment2 addLightNode:];
    }
  }

  else
  {
    v8 = +[SCNNode nodeWithGeometry:](SCNNode, "nodeWithGeometry:", -[SCNAuthoringEnvironment2 geometryForLightType:](self, "geometryForLightType:", [objc_msgSend(node "light")]));
    [(SCNNode *)v8 setName:@"lightAuth"];
    [(SCNNode *)v8 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v8 setAuthoringEnvironmentCompanionNode:node];
    [node setAuthoringEnvironmentPresentationNode:v8];
    [(SCNNode *)self->_lightRoot addChildNode:v8];
    lightsDictionary = self->_lightsDictionary;

    CFDictionaryAddValue(lightsDictionary, node, v8);
  }
}

- (id)particlesGeometry
{
  particlesGeometry = self->_particlesGeometry;
  if (!particlesGeometry)
  {
    *__p = 0u;
    v12 = 0u;
    *v9 = 0u;
    v10 = 0u;
    *v8 = 0u;
    v6 = 0x3EB33333BCF5C28FLL;
    v7 = 1027101164;
    Mesh::AppendWireframeSphere(v8, &v6, 0.2, 3u, &C3DAuthoringEnvironmentColorWhite);
    v6 = 0xBE6B851FBE4CCCCDLL;
    v7 = 1052602532;
    Mesh::AppendWireframeSphere(v8, &v6, 0.2, 3u, &C3DAuthoringEnvironmentColorWhite);
    v6 = 0xBE6B851F3E99999ALL;
    v7 = -1094881116;
    Mesh::AppendWireframeSphere(v8, &v6, 0.2, 3u, &C3DAuthoringEnvironmentColorWhite);
    self->_particlesGeometry = Mesh::CreateLineGeometry(v8);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v9[1])
    {
      *&v10 = v9[1];
      operator delete(v9[1]);
    }

    if (v8[0])
    {
      v8[1] = v8[0];
      operator delete(v8[0]);
    }

    particlesGeometry = self->_particlesGeometry;
  }

  v4 = [(SCNGeometry *)particlesGeometry copy];
  [v4 setFirstMaterial:{-[SCNMaterial copy](-[SCNGeometry firstMaterial](self->_particlesGeometry, "firstMaterial"), "copy")}];
  return v4;
}

- (void)setupParticleMeshEmitter:(id)emitter authoringNode:(id)node
{
  v19[1] = *MEMORY[0x277D85DE8];
  if ([objc_msgSend(node "childNodes")] == 2)
  {
    [objc_msgSend(objc_msgSend(node "childNodes")];
  }

  nodeRef = [emitter nodeRef];
  if (nodeRef)
  {
    ParticleSystems = C3DNodeGetParticleSystems(nodeRef, v8);
    if (ParticleSystems)
    {
      v10 = ParticleSystems;
      if (CFArrayGetCount(ParticleSystems))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, 0);
        EmitterShape = C3DParticleSystemGetEmitterShape(ValueAtIndex, v12);
        if (EmitterShape)
        {
          Copy = C3DGeometryCreateCopy(EmitterShape, v14);
          v16 = [SCNGeometry geometryWithGeometryRef:Copy];
          CFRelease(Copy);
          v17 = +[SCNMaterial material];
          [(SCNMaterial *)v17 setLightingModelName:@"SCNLightingModelConstant"];
          [(SCNMaterialProperty *)[(SCNMaterial *)v17 diffuse] setContents:self->_yellow];
          [(SCNMaterial *)v17 setFillMode:1];
          v19[0] = v17;
          -[SCNGeometry setMaterials:](v16, "setMaterials:", [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1]);
          v18 = [SCNNode nodeWithGeometry:v16];
          [(SCNNode *)v18 setAuthoringEnvironmentNode:1];
          [(SCNNode *)v18 setAuthoringEnvironmentCompanionNode:emitter];
          [emitter setAuthoringEnvironmentPresentationNode:v18];
          [node addChildNode:v18];
        }
      }
    }
  }
}

- (void)addParticlesNode:(id)node
{
  v5 = CFDictionaryContainsKey(self->_particlesDictionary, node);
  if (v5)
  {
    v7 = scn_default_log(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNAuthoringEnvironment2 addParticlesNode:];
    }
  }

  else
  {
    v8 = +[SCNNode node];
    v9 = [SCNNode nodeWithGeometry:[(SCNAuthoringEnvironment2 *)self particlesGeometry]];
    [(SCNNode *)v9 setName:@"particlesAuth"];
    [(SCNNode *)v9 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v9 setAuthoringEnvironmentCompanionNode:node];
    [node setAuthoringEnvironmentPresentationNode:v9];
    [(SCNNode *)v8 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v8 addChildNode:v9];
    [(SCNNode *)self->_particlesRoot addChildNode:v8];
    particlesDictionary = self->_particlesDictionary;

    CFDictionaryAddValue(particlesDictionary, node, v8);
  }
}

- (id)cameraGeometry
{
  result = self->_cameraGeometry;
  if (!result)
  {
    result = Mesh::CreateCameraGeometry(0);
    self->_cameraGeometry = result;
  }

  return result;
}

- (id)cameraFrustumGeometry
{
  result = self->_cameraFrustumGeometry;
  if (!result)
  {
    result = Mesh::CreateCameraFrustumGeometry(0);
    self->_cameraFrustumGeometry = result;
  }

  return result;
}

- (id)cameraOrthographicFrustumGeometry
{
  result = self->_cameraOrthographicFrustumGeometry;
  if (!result)
  {
    result = Mesh::CreateOrthographicCameraFrustumGeometry(0);
    self->_cameraOrthographicFrustumGeometry = result;
  }

  return result;
}

- (id)cameraNearPlaneGeometry
{
  result = self->_cameraNearPlaneGeometry;
  if (!result)
  {
    result = Mesh::CreateCameraNearPlaneGeometry(0);
    self->_cameraNearPlaneGeometry = result;
  }

  return result;
}

- (id)fieldGeometry
{
  result = self->_fieldGeometry;
  if (!result)
  {
    result = Mesh::CreatePhysicsFieldGeometry(0);
    self->_fieldGeometry = result;
  }

  return result;
}

- (void)addCameraNode:(id)node
{
  v5 = CFDictionaryContainsKey(self->_camerasDictionary, node);
  if (v5)
  {
    v7 = scn_default_log(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNAuthoringEnvironment2 addCameraNode:];
    }
  }

  else if ((![node name] || objc_msgSend(objc_msgSend(node, "name"), "compare:", @"kSCNFreeViewCameraName")) && (objc_msgSend(node, "authoringEnvironmentNode") & 1) == 0)
  {
    v8 = [SCNNode nodeWithGeometry:[(SCNAuthoringEnvironment2 *)self cameraGeometry]];
    [(SCNNode *)v8 setName:@"cameraAuth"];
    [(SCNNode *)v8 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v8 setAuthoringEnvironmentCompanionNode:node];
    [node setAuthoringEnvironmentPresentationNode:v8];
    if ([objc_msgSend(node "camera")])
    {
      cameraOrthographicFrustumGeometry = [(SCNAuthoringEnvironment2 *)self cameraOrthographicFrustumGeometry];
    }

    else
    {
      cameraOrthographicFrustumGeometry = [(SCNAuthoringEnvironment2 *)self cameraFrustumGeometry];
    }

    v10 = [SCNNode nodeWithGeometry:cameraOrthographicFrustumGeometry];
    [(SCNNode *)v10 setName:@"cameraFrustumAuth"];
    [(SCNNode *)v10 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v10 setHittable:0];
    v11 = [SCNNode nodeWithGeometry:[(SCNAuthoringEnvironment2 *)self cameraNearPlaneGeometry]];
    [(SCNNode *)v11 setName:@"cameraNearPlaneAuth"];
    [(SCNNode *)v11 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v11 setHittable:0];
    [(SCNNode *)self->_cameraRoot addChildNode:v8];
    [(SCNNode *)v8 addChildNode:v10];
    [(SCNNode *)v10 addChildNode:v11];
    camerasDictionary = self->_camerasDictionary;

    CFDictionaryAddValue(camerasDictionary, node, v8);
  }
}

- (void)removeCameraNode:(id)node
{
  [CFDictionaryGetValue(self->_camerasDictionary node)];
  camerasDictionary = self->_camerasDictionary;

  CFDictionaryRemoveValue(camerasDictionary, node);
}

- (void)addPhysicsFieldNode:(id)node
{
  v5 = CFDictionaryContainsKey(self->_physicsFieldsDictionary, node);
  if (v5)
  {
    v7 = scn_default_log(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNAuthoringEnvironment2 addPhysicsFieldNode:];
    }
  }

  else
  {
    v8 = [SCNNode nodeWithGeometry:[(SCNAuthoringEnvironment2 *)self fieldGeometry]];
    [(SCNNode *)v8 setName:@"fieldAuth"];
    [(SCNNode *)v8 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v8 setAuthoringEnvironmentCompanionNode:node];
    [node setAuthoringEnvironmentPresentationNode:v8];
    [(SCNNode *)self->_physicsFieldsRoot addChildNode:v8];
    physicsFieldsDictionary = self->_physicsFieldsDictionary;

    CFDictionaryAddValue(physicsFieldsDictionary, node, v8);
  }
}

- (void)removePhysicsFieldNode:(id)node
{
  [CFDictionaryGetValue(self->_physicsFieldsDictionary node)];
  physicsFieldsDictionary = self->_physicsFieldsDictionary;

  CFDictionaryRemoveValue(physicsFieldsDictionary, node);
}

- (void)removeLightNode:(id)node
{
  [CFDictionaryGetValue(self->_lightsDictionary node)];
  lightsDictionary = self->_lightsDictionary;

  CFDictionaryRemoveValue(lightsDictionary, node);
}

- (void)removeParticlesNode:(id)node
{
  [CFDictionaryGetValue(self->_particlesDictionary node)];
  particlesDictionary = self->_particlesDictionary;

  CFDictionaryRemoveValue(particlesDictionary, node);
}

- (void)addedNode:(id)node
{
  if (([node authoringEnvironmentNode] & 1) == 0)
  {
    if ([node light])
    {
      [(SCNAuthoringEnvironment2 *)self addLightNode:node];
    }

    if ([node particleSystems])
    {
      [(SCNAuthoringEnvironment2 *)self addParticlesNode:node];
    }

    if ([node camera])
    {
      [(SCNAuthoringEnvironment2 *)self addCameraNode:node];
    }

    if ([node physicsField])
    {

      [(SCNAuthoringEnvironment2 *)self addPhysicsFieldNode:node];
    }
  }
}

- (void)removedNode:(id)node
{
  if (([node authoringEnvironmentNode] & 1) == 0)
  {
    nodeCopy = node;
    if ([node light])
    {
      [(SCNAuthoringEnvironment2 *)self removeLightNode:node];
    }

    if ([node particleSystems])
    {
      [(SCNAuthoringEnvironment2 *)self removeParticlesNode:node];
    }

    if ([node camera])
    {
      [(SCNAuthoringEnvironment2 *)self removeCameraNode:node];
    }

    if ([node physicsField])
    {
      [(SCNAuthoringEnvironment2 *)self removePhysicsFieldNode:node];
    }
  }
}

- (void)selectNode:(id)node
{
  objc_sync_enter(self);
  if (([node authoringEnvironmentNode] & 1) == 0)
  {
    [(NSMutableSet *)self->_selection removeAllObjects];
    if (node)
    {
      [(NSMutableSet *)self->_selection addObject:node];
    }
  }

  objc_sync_exit(self);
}

- (void)addNodeToSelection:(id)selection
{
  objc_sync_enter(self);
  authoringEnvironmentNode = [selection authoringEnvironmentNode];
  if (selection)
  {
    v6 = authoringEnvironmentNode;
  }

  else
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    [(NSMutableSet *)self->_selection addObject:selection];
  }

  objc_sync_exit(self);
}

- (void)selectNodes:(id)nodes
{
  v14 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  [(NSMutableSet *)self->_selection removeAllObjects];
  if (nodes)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [nodes countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(nodes);
          }

          v8 = *(*(&v9 + 1) + 8 * i);
          if (([v8 authoringEnvironmentNode] & 1) == 0)
          {
            [(NSMutableSet *)self->_selection addObject:v8];
          }
        }

        v5 = [nodes countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  objc_sync_exit(self);
}

- (void)cancelSelection
{
  objc_sync_enter(self);
  [(NSMutableSet *)self->_selection removeAllObjects];

  objc_sync_exit(self);
}

- (void)_resetLightAuthoringWithContainerNode:(id)node source:(id)source light:(id)light
{
  [node removeAllChilds];
  [node setValue:objc_msgSend(light forKey:{"type"), @"SCNDebugLightTypeKey"}];
  [node setValue:0 forKey:@"SCNDebugLightSubTypeKey"];
  if (objc_msgSend_isEqualToString_([light type]))
  {
    return;
  }

  if (objc_msgSend_isEqualToString_([light type]))
  {
    *__p = 0u;
    v61 = 0u;
    *v58 = 0u;
    v59 = 0u;
    *v57 = 0u;
    Mesh::AppendWireframeSphere(v57, 1.0, 3u, &C3DAuthoringEnvironmentColorWhite);
    v9 = [SCNNode nodeWithGeometry:Mesh::CreateLineGeometry(v57)];
    [(SCNNode *)v9 setName:@"lightInnerAuth"];
    [(SCNNode *)v9 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v9 setHittable:0];
    [node addChildNode:v9];
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v58[1])
    {
      *&v59 = v58[1];
      operator delete(v58[1]);
    }

    if (v57[0])
    {
      v57[1] = v57[0];
      operator delete(v57[0]);
    }

    *__p = 0u;
    v61 = 0u;
    *v58 = 0u;
    v59 = 0u;
    *v57 = 0u;
    Mesh::AppendWireframeSphere(v57, 1.0, 3u, &C3DAuthoringEnvironmentColorWhite);
    v10 = [SCNNode nodeWithGeometry:Mesh::CreateLineGeometry(v57)];
    [(SCNNode *)v10 setName:@"lightOuterAuth"];
    [(SCNNode *)v10 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v10 setHittable:0];
    [node addChildNode:v10];
LABEL_19:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v58[1])
    {
      *&v59 = v58[1];
      operator delete(v58[1]);
    }

    if (v57[0])
    {
      v57[1] = v57[0];
      operator delete(v57[0]);
    }

    return;
  }

  if ((objc_msgSend_isEqualToString_([light type]) & 1) != 0 || objc_msgSend_isEqualToString_(objc_msgSend(light, "type")))
  {
    *__p = 0u;
    v61 = 0u;
    *v58 = 0u;
    v59 = 0u;
    *v57 = 0u;
    Mesh::AppendZUpArrow(v57, &C3DAuthoringEnvironmentColorOrange);
    v11 = [SCNNode nodeWithGeometry:Mesh::CreateTriangleGeometry(v57)];
    [(SCNNode *)v11 setName:@"lightArrowAuth"];
    [(SCNNode *)v11 setAuthoringEnvironmentNode:1];
    LODWORD(v12) = 1078530011;
    [(SCNNode *)v11 setEulerAngles:v12, 0.0, 0.0];
    LODWORD(v13) = 10.0;
    LODWORD(v14) = 10.0;
    LODWORD(v15) = 10.0;
    [(SCNNode *)v11 setScale:v13, v14, v15];
    [(SCNNode *)v11 setHittable:0];
    [node addChildNode:v11];
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v58[1])
    {
      *&v59 = v58[1];
      operator delete(v58[1]);
    }

    if (v57[0])
    {
      v57[1] = v57[0];
      operator delete(v57[0]);
    }

    *__p = 0u;
    v61 = 0u;
    *v58 = 0u;
    v59 = 0u;
    *v57 = 0u;
    *&v54 = 0;
    DWORD2(v54) = 0;
    v63.x = 1.0;
    v63.y = 1.0;
    v63.z = 0.5;
    Mesh::AppendWireframeBox(v57, &v54, v63, &C3DAuthoringEnvironmentColorOrange);
    v16 = [SCNNode nodeWithGeometry:Mesh::CreateLineGeometry(v57)];
    [(SCNNode *)v16 setSimdPivot:*MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), 0.0];
    [(SCNNode *)v16 setName:@"lightShadowAuth"];
    [(SCNNode *)v16 setAuthoringEnvironmentNode:1];
    [(SCNNode *)v16 setHittable:0];
    [node addChildNode:v16];
    goto LABEL_19;
  }

  if (!objc_msgSend_isEqualToString_([light type]))
  {
    if (objc_msgSend_isEqualToString_([light type]))
    {
      v18 = +[SCNSphere sphereWithRadius:](SCNSphere, "sphereWithRadius:", dbl_21C2A2360[[light probeType] == 1]);
      [(SCNGeometry *)v18 setName:@"probeGeometry"];
      if ([light probeType])
      {
        *__p = 0u;
        v61 = 0u;
        *v58 = 0u;
        v59 = 0u;
        *v57 = 0u;
        v64.x = 1.0;
        v64.y = 1.0;
        v64.z = 1.0;
        Mesh::AppendWireframeBox(v57, &SCNVector3Zero, v64, &C3DAuthoringEnvironmentColorRed);
        v19 = [SCNNode nodeWithGeometry:Mesh::CreateLineGeometry(v57)];
        [(SCNNode *)v19 setName:@"lightProbeExtents"];
        [(SCNNode *)v19 setAuthoringEnvironmentNode:1];
        [(SCNNode *)v19 setHittable:0];
        [node addChildNode:v19];
        vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(v57);
        [(SCNMaterial *)[(SCNGeometry *)v18 firstMaterial] setColorBufferWriteMask:0];
      }

      else
      {
        _sphericalHarmonics = [light _sphericalHarmonics];
        [objc_msgSend(-[SCNGeometry material](v18 "material")];
        [-[SCNGeometry material](v18 "material")];
        if (_sphericalHarmonics)
        {
          v32 = +[SCNProgram program];
          resourceManager = [(SCNMTLRenderContext *)[(SCNRenderer *)self->_renderer _renderContextMetal] resourceManager];
          -[SCNProgram setLibrary:](v32, "setLibrary:", [-[SCNMTLResourceManager libraryManager](resourceManager) frameworkLibrary]);
          [(SCNProgram *)v32 setVertexFunctionName:@"scn_probesphere_from_sh_vertex"];
          [(SCNProgram *)v32 setFragmentFunctionName:@"scn_probesphere_from_sh_fragment"];
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __79__SCNAuthoringEnvironment2__resetLightAuthoringWithContainerNode_source_light___block_invoke;
          v56[3] = &unk_2782FF710;
          v56[4] = light;
          [(SCNProgram *)v32 handleBindingOfBufferNamed:@"sh" frequency:1 usingBlock:v56];
          [-[SCNGeometry material](v18 "material")];
        }
      }

      v34 = [SCNNode nodeWithGeometry:v18];
      [(SCNNode *)v34 setName:@"probe"];
      [(SCNNode *)v34 setAuthoringEnvironmentNode:1];
      [(SCNNode *)v34 setAuthoringEnvironmentCompanionNode:source];
      [source setAuthoringEnvironmentPresentationNode:v34];
      [(SCNNode *)v34 setHittable:1];
      [node addChildNode:v34];
      *__p = 0u;
      v61 = 0u;
      *v58 = 0u;
      v59 = 0u;
      *v57 = 0u;
      Mesh::AppendWireframeSphere(v57, 1.0, 3u, &C3DAuthoringEnvironmentColorGrayMedium);
      LineGeometry = Mesh::CreateLineGeometry(v57);
      vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(v57);
      v36 = [SCNNode nodeWithGeometry:LineGeometry];
      [(SCNNode *)v36 setName:@"lightInnerAuth"];
      [(SCNNode *)v36 setAuthoringEnvironmentNode:1];
      [(SCNNode *)v36 setHittable:0];
      [light zFar];
      v37 = 0.5;
      v39 = v38 * 0.5;
      *&v39 = v39;
      LODWORD(v37) = LODWORD(v39);
      LODWORD(v40) = LODWORD(v39);
      [(SCNNode *)v36 setScale:v39, v37, v40];
      nodeCopy2 = node;
      v42 = v36;
      goto LABEL_56;
    }

    if (!objc_msgSend_isEqualToString_([light type]))
    {
      return;
    }

    lightRef = [light lightRef];
    v54 = 0u;
    v55 = 0u;
    *&v22 = C3DLightGetAreaDescription(lightRef, v21, &v54).n128_u64[0];
    [node setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedChar:", v54, v22), @"SCNDebugLightSubTypeKey"}];
    v23 = 0;
    if (v54 <= 1u)
    {
      if (v54)
      {
        if (v54 != 1)
        {
          goto LABEL_55;
        }

        *__p = 0u;
        v61 = 0u;
        *v58 = 0u;
        v59 = 0u;
        *v57 = 0u;
        v53.x = -1.0;
        *&v53.y = 1065353216;
        __asm { FMOV            V0.2S, #1.0 }

        *&v52.x = _D0;
        v52.z = 0.0;
        *&v51.x = -_D0;
        v51.z = 0.0;
        __asm { FMOV            V0.2S, #-1.0 }

        *&v50.x = _D0;
        v50.z = 0.0;
        Mesh::AppendQuad(v57, &v53, &v52, &v51, &v50, &C3DAuthoringEnvironmentColorOrange);
        v30 = Mesh::CreateLineGeometry(v57);
      }

      else
      {
        *__p = 0u;
        v61 = 0u;
        *v58 = 0u;
        v59 = 0u;
        *v57 = 0u;
        *&v53.x = 3212836864;
        v53.z = 0.0;
        *&v52.x = 1065353216;
        v52.z = 0.0;
        Mesh::AppendSegment(v57, &v53, &v52, &C3DAuthoringEnvironmentColorOrange, &C3DAuthoringEnvironmentColorOrange);
        v30 = Mesh::CreateLineGeometry(v57);
      }
    }

    else
    {
      switch(v54)
      {
        case 2u:
          *__p = 0u;
          v61 = 0u;
          *v58 = 0u;
          v59 = 0u;
          *v57 = 0u;
          Mesh::AppendWireframeXYDisk(v57, 1.0, &C3DAuthoringEnvironmentColorOrange);
          v30 = Mesh::CreateLineGeometry(v57);
          break;
        case 3u:
          *__p = 0u;
          v61 = 0u;
          *v58 = 0u;
          v59 = 0u;
          *v57 = 0u;
          Mesh::AppendWireframeSphere(v57, 1.0, 3u, &C3DAuthoringEnvironmentColorOrange);
          v30 = Mesh::CreateLineGeometry(v57);
          break;
        case 4u:
          *__p = 0u;
          v61 = 0u;
          *v58 = 0u;
          v59 = 0u;
          *v57 = 0u;
          v24 = v55;
          if (v55)
          {
            v25 = 0;
            v26 = v55 - 1;
            do
            {
              v27 = *(*(&v55 + 1) + 8 * v25);
              if (v26 == v25)
              {
                v28 = 0;
              }

              else
              {
                v28 = v25 + 1;
              }

              v29 = *(*(&v55 + 1) + 8 * v28);
              v53.x = -*&v27;
              v53.y = *(&v27 + 1);
              v53.z = 0.0;
              v52.x = -*&v29;
              v52.y = *(&v29 + 1);
              v52.z = 0.0;
              Mesh::AppendSegment(v57, &v53, &v52, &C3DAuthoringEnvironmentColorOrange, &C3DAuthoringEnvironmentColorOrange);
              ++v25;
            }

            while (v24 != v25);
          }

          v30 = Mesh::CreateLineGeometry(v57);
          break;
        default:
LABEL_55:
          v49 = [SCNNode nodeWithGeometry:v23];
          [(SCNNode *)v49 setName:@"lightAreaAuth"];
          [(SCNNode *)v49 setAuthoringEnvironmentNode:1];
          [(SCNNode *)v49 setAuthoringEnvironmentCompanionNode:source];
          nodeCopy2 = node;
          v42 = v49;
LABEL_56:
          [nodeCopy2 addChildNode:v42];
          return;
      }
    }

    v23 = v30;
    vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(v57);
    goto LABEL_55;
  }

  v17 = +[SCNNode node];
  [(SCNNode *)v17 setName:@"lightSpotAuth"];
  [(SCNNode *)v17 setAuthoringEnvironmentNode:1];
  [(SCNNode *)v17 setHittable:0];

  [node addChildNode:v17];
}

void __79__SCNAuthoringEnvironment2__resetLightAuthoringWithContainerNode_source_light___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) _sphericalHarmonics];
  v4 = [v3 length];
  v6 = C3DDeduceSphericalHarmonicsOrderFromDataLength(v4, v5);
  v7 = [v3 bytes];
  if (v6 == 3)
  {
    v9 = v7;
    v10 = [v3 length];

    [a2 writeBytes:v9 length:v10];
  }

  else
  {
    v11 = scn_default_log(v7, v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __79__SCNAuthoringEnvironment2__resetLightAuthoringWithContainerNode_source_light___block_invoke_cold_1(v6, v11);
    }
  }
}

- (void)updateLightTypeForNode:(id)node source:(id)source light:(id)light screenspaceScalingFactor:(float)factor
{
  [node valueForKey:@"SCNDebugLightTypeKey"];
  v11 = [node valueForKey:@"SCNDebugLightSubTypeKey"];
  v12 = [objc_msgSend(node valueForKey:{@"disabled", "BOOLValue"}];
  v13 = 0;
  if ([(NSMutableSet *)self->_selection count]&& source)
  {
    sourceCopy = source;
    do
    {
      v13 = [(NSMutableSet *)self->_selection containsObject:sourceCopy];
      parentNode = [sourceCopy parentNode];
      if (v13)
      {
        break;
      }

      sourceCopy = parentNode;
    }

    while (parentNode);
  }

  sourceCopy2 = source;
  v16 = [source isHidden] & (v13 ^ 1);
  v17 = v12 ^ v16;
  if ((v12 ^ v16) == 1)
  {
    [node setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", v16), @"disabled"}];
  }

  if ([objc_msgSend(node "childNodes")] && objc_msgSend_isEqualToString_(objc_msgSend(light, "type")))
  {
    if ((v13 | v17))
    {
      LOBYTE(v17) = 1;
    }

    else
    {
      _sphericalHarmonics = [light _sphericalHarmonics];
      v99 = [objc_msgSend(light "probeEnvironment")];
      v18 = [objc_msgSend(objc_msgSend(node childNodeWithName:@"probe" recursively:{1), "geometry"), "firstMaterial"}];
      v19 = v18;
      if (v18)
      {
        v20 = [v18 program] != 0;
        LODWORD(v19) = [objc_msgSend(v19 "reflective")] != 0;
      }

      else
      {
        v20 = 0;
      }

      if ([light probeType])
      {
        _ZF = v19 == (v99 != 0);
      }

      else if (light)
      {
        _ZF = v20 == (_sphericalHarmonics != 0);
      }

      else
      {
        _ZF = 1;
      }

      LOBYTE(v17) = !_ZF;
    }
  }

  if (objc_msgSend_isEqualToString_([light type]))
  {
    areaType = [light areaType];
    LOBYTE(v17) = (areaType != [v11 integerValue]) | v17;
  }

  v24 = sourceCopy2;
  *&v22 = fmaxf(factor, 0.001);
  v100 = v22;
  if (!objc_msgSend_isEqualToString_([light type]) || (v17 & 1) != 0)
  {
    [(SCNAuthoringEnvironment2 *)self _resetLightAuthoringWithContainerNode:node source:sourceCopy2 light:light];
  }

  v25.i32[1] = HIDWORD(v100);
  *v25.i32 = 1.0 / *&v100;
  v94 = v25;
  if (objc_msgSend_isEqualToString_([light type]))
  {
    v26 = [objc_msgSend(node "childNodes")];
    [light attenuationStartDistance];
    v28 = v27 * *v94.i32;
    *&v28 = v28;
    if (*&v28 < 0.0)
    {
      *&v28 = 0.0;
    }

    v96 = v28;
    [v26 setSimdScale:{*vdupq_lane_s32(*&v28, 0).i64}];
    [v26 setHidden:{*&v96 == 0.0, v96}];
    v29 = [objc_msgSend(node "childNodes")];
    [light attenuationEndDistance];
    v31 = v30 * *v94.i32;
    *&v31 = v31;
    if (*&v31 < 0.0)
    {
      *&v31 = 0.0;
    }

    v97 = v31;
    [v29 setSimdScale:{*vdupq_lane_s32(*&v31, 0).i64}];
    [v29 setHidden:{*&v97 == 0.0, v97}];
    if ([v24 isHidden])
    {
      v32 = 272;
      if (v13)
      {
        v32 = 256;
      }

      v33 = *(&self->super.isa + v32);
      [objc_msgSend(objc_msgSend(objc_msgSend(node "geometry")];
      [objc_msgSend(objc_msgSend(objc_msgSend(v26 "geometry")];
    }

    else
    {
      v47 = 240;
      if (v13)
      {
        v47 = 256;
        v48 = 256;
      }

      else
      {
        v48 = 248;
      }

      [objc_msgSend(objc_msgSend(objc_msgSend(node "geometry")];
      [objc_msgSend(objc_msgSend(objc_msgSend(v26 "geometry")];
      v33 = *(&self->super.isa + v48);
    }

    [objc_msgSend(objc_msgSend(objc_msgSend(v29 "geometry")];
    goto LABEL_87;
  }

  if (objc_msgSend_isEqualToString_([light type]))
  {
    [light spotOuterAngle];
    v35 = fmin(v34 / 180.0 * 3.14159265, 3.13159265);
    [light spotInnerAngle];
    v37 = v36 / 180.0 * 3.14159265;
    if (v37 >= v35)
    {
      v38 = v35;
    }

    else
    {
      v38 = v37;
    }

    [light attenuationStartDistance];
    v40 = v39;
    [light attenuationEndDistance];
    v42 = v41;
    v43 = [objc_msgSend(node "childNodes")];
    v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"oa:%f ia:%f s:%f e:%f", v35, v38, v40, v42];
    v45 = [v43 valueForKey:@"AuthEnvHash"];
    if (!v45 || [v44 compare:v45])
    {
      __p = 0u;
      v109 = 0u;
      *v106 = 0u;
      v107 = 0u;
      *v105 = 0u;
      v104.z = 0.0;
      *&v104.x = 0;
      *&v103.x = 0;
      v103.z = -1.0;
      if (v40 > 0.0 || v42 > 0.0)
      {
        if (v40 > 0.0)
        {
          Mesh::AppendSphericalCap(v105, v40, v35 * 0.5, &C3DAuthoringEnvironmentColorGrayMedium);
        }

        if (v42 > 0.0)
        {
          Mesh::AppendSphericalCap(v105, v42, v35 * 0.5, &C3DAuthoringEnvironmentColorGrayMedium);
        }
      }

      else
      {
        v46 = tanf(v35 * 0.5);
        Mesh::AppendCone(v105, &v104, &v103, 20.0, v46 * 20.0, &C3DAuthoringEnvironmentColorOrange);
      }

      if (v38 > 0.0)
      {
        if (v42 <= 0.0)
        {
          v42 = 20.0;
        }

        v57 = tanf(v38 * 0.5);
        Mesh::AppendCone(v105, &v104, &v103, v42, v42 * v57, &C3DAuthoringEnvironmentColorOrange);
      }

      [v43 setGeometry:Mesh::CreateLineGeometry(v105)];
      [v43 setValue:v44 forKey:@"AuthEnvHash"];
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      if (v106[1])
      {
        *&v107 = v106[1];
        operator delete(v106[1]);
      }

      if (v105[0])
      {
        v105[1] = v105[0];
        operator delete(v105[0]);
      }
    }

    [v43 setSimdScale:{*vdupq_lane_s32(v94, 0).i64}];
    if ([sourceCopy2 isHidden])
    {
      if (v13)
      {
        v58 = 256;
      }

      else
      {
        v58 = 272;
      }

      v59 = *(&self->super.isa + v58);
    }

    else
    {
      v60 = 240;
      if (v13)
      {
        v60 = 256;
      }

      v59 = *(&self->super.isa + v60);
      if (v13)
      {
        v58 = 256;
      }

      else
      {
        v58 = 288;
      }
    }

    [objc_msgSend(objc_msgSend(objc_msgSend(node "geometry")];
    v61 = *(&self->super.isa + v58);
    nodeCopy = v43;
LABEL_86:
    [objc_msgSend(objc_msgSend(objc_msgSend(nodeCopy "geometry")];
    goto LABEL_87;
  }

  if ((objc_msgSend_isEqualToString_([light type]) & 1) != 0 || objc_msgSend_isEqualToString_(objc_msgSend(light, "type")))
  {
    v49 = [objc_msgSend(node "childNodes")];
    [objc_msgSend(objc_msgSend(node "childNodes")];
    v50 = [objc_msgSend(node "childNodes")];
    [v50 setHidden:{objc_msgSend(light, "automaticallyAdjustsShadowProjection")}];
    if (([light automaticallyAdjustsShadowProjection] & 1) == 0)
    {
      [light zNear];
      [v50 setSimdPosition:0.0];
      [light orthographicScale];
      v91 = v51;
      [light orthographicScale];
      v52.f64[0] = v91;
      v52.f64[1] = v53;
      v92 = COERCE_DOUBLE(vcvt_f32_f64(vmulq_n_f64(v52, *v94.i32)));
      [light zFar];
      [light zNear];
      [v50 setSimdScale:v92];
    }

    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __89__SCNAuthoringEnvironment2_updateLightTypeForNode_source_light_screenspaceScalingFactor___block_invoke;
    v101[3] = &unk_2782FF738;
    v102 = v13;
    v101[4] = sourceCopy2;
    v101[5] = self;
    [node enumerateChildNodesUsingBlock:v101];
    isHidden = [sourceCopy2 isHidden];
    v55 = v13 == 0;
    if (isHidden)
    {
      v56 = 272;
    }

    else
    {
      v56 = 240;
    }

LABEL_83:
    if (!v55)
    {
      v56 = 256;
    }

    v61 = *(&self->super.isa + v56);
    nodeCopy = node;
    goto LABEL_86;
  }

  if (!objc_msgSend_isEqualToString_([light type]))
  {
    if (!objc_msgSend_isEqualToString_([light type]))
    {
      goto LABEL_87;
    }

    lightRef = [light lightRef];
    *v105 = 0u;
    *v106 = 0u;
    childNodes = [objc_msgSend(node childNodes];
    [childNodes setSimdScale:{*vdupq_lane_s32(v94, 0).i64}];
    if (LOBYTE(v105[0]) > 1u)
    {
      if (LOBYTE(v105[0]) != 2)
      {
        if (LOBYTE(v105[0]) != 3)
        {
LABEL_107:
          isHidden2 = [v24 isHidden];
          v56 = 240;
          if (isHidden2)
          {
            v56 = 272;
          }

          v55 = v13 == 0;
          goto LABEL_83;
        }

        [childNodes simdScale];
        v84 = *v106;
LABEL_106:
        [childNodes setSimdScale:{*vmulq_f32(v83, v84).i64}];
        goto LABEL_107;
      }
    }

    else
    {
      if (!LOBYTE(v105[0]))
      {
        __asm { FMOV            V0.4S, #1.0 }

        _Q0.i32[0] = v106[0];
        v98 = _Q0;
        goto LABEL_105;
      }

      if (LOBYTE(v105[0]) != 1)
      {
        goto LABEL_107;
      }
    }

    v85 = *v106;
    v85.i32[2] = 1.0;
    v98 = v85;
LABEL_105:
    [childNodes simdScale];
    v84 = v98;
    goto LABEL_106;
  }

  v64 = 288;
  if (v13)
  {
    v64 = 256;
  }

  [objc_msgSend(objc_msgSend(objc_msgSend(node "geometry")];
  [node setHidden:(self->_displayMask & 0x200) == 0];
  v65 = [node childNodeWithName:@"lightInnerAuth" recursively:0];
  [v65 setHidden:v13 ^ 1u];
  [light zFar];
  v66 = 0.5;
  v68 = v67 * 0.5;
  *&v68 = v68;
  LODWORD(v66) = LODWORD(v68);
  LODWORD(v69) = LODWORD(v68);
  [v65 setScale:{v68, v66, v69}];
  v70 = [node childNodeWithName:@"lightProbeExtents" recursively:0];
  [light probeExtents];
  v71.i64[0] = 0x3F0000003F000000;
  v71.i64[1] = 0x3F0000003F000000;
  v73 = vmulq_f32(v72, v71);
  v71.i32[0] = v73.i32[1];
  LODWORD(v74) = v73.i32[2];
  [v70 setScale:{*v73.i64, *v71.i64, v74}];
  v75 = [node childNodeWithName:@"probe" recursively:0];
  [light probeOffset];
  LODWORD(v77) = HIDWORD(v76);
  LODWORD(v79) = v78;
  [v75 setPosition:{v76, v77, v79}];
LABEL_87:
  if (light)
  {
    if ((objc_msgSend_isEqualToString_([light type]) & 1) == 0)
    {
      [node simdScale];
      [node setSimdScale:{*vmulq_n_f32(v63, *&v100).i64}];
      [node setHidden:(self->_displayMask & 0x20) == 0];
    }
  }
}

void *__89__SCNAuthoringEnvironment2_updateLightTypeForNode_source_light_screenspaceScalingFactor___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 authoringEnvironmentNode];
  if (result)
  {
    v5 = [*(a1 + 32) isHidden];
    v6 = 288;
    if (v5)
    {
      v6 = 272;
    }

    v7 = 256;
    if (!*(a1 + 48))
    {
      v7 = v6;
    }

    v8 = *(*(a1 + 40) + v7);
    v9 = [objc_msgSend(objc_msgSend(a2 "geometry")];

    return [v9 setColor:v8];
  }

  return result;
}

- (void)updateLightNode:(id)node withSourceNode:(id)sourceNode
{
  light = [sourceNode light];
  if (light)
  {
    v8 = light;
    if ([(SCNRenderer *)self->_renderer pointOfView]== sourceNode)
    {
      isHidden = 1;
    }

    else
    {
      isHidden = [sourceNode isHidden];
    }

    [node setHidden:isHidden];
    if (([node isHidden] & 1) == 0)
    {
      [objc_msgSend(sourceNode "presentationNode")];
      [node setSimdWorldTransform:?];
      isEqualToString = objc_msgSend_isEqualToString_([v8 type]);
      _engineContext = [(SCNRenderer *)self->_renderer _engineContext];
      C3DSizeForScreenSpaceSizeAndTransform(_engineContext, v12);
      [(SCNAuthoringEnvironment2 *)self updateLightTypeForNode:node source:sourceNode light:v8 screenspaceScalingFactor:?];
      if (isEqualToString)
      {
        v13 = (self->_displayMask & 0x200) == 0;

        [node setHidden:v13];
      }
    }
  }

  else
  {

    [(SCNAuthoringEnvironment2 *)self removeLightNode:sourceNode];
  }
}

- (void)updateParticlesNode:(id)node withSourceNode:(id)sourceNode
{
  if ([sourceNode particleSystems] && objc_msgSend(objc_msgSend(sourceNode, "particleSystems"), "count"))
  {
    [node setHidden:{objc_msgSend(sourceNode, "isHidden")}];
    if ([node isHidden])
    {
      return;
    }

    presentationNode = [sourceNode presentationNode];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    if (presentationNode)
    {
      objc_msgSend_worldTransform(presentationNode);
    }

    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    v26[3] = v30;
    [node setTransform:v26];
    v8 = [(SCNRenderer *)self->_renderer _engineContext:C3DMatrix4x4FromSCNMatrix4(v26];
    C3DSizeForScreenSpaceSizeAndTransform(v8, v9);
    v11 = v10;
    if (sourceNode)
    {
      sourceNodeCopy = sourceNode;
      do
      {
        v13 = [(NSMutableSet *)self->_selection containsObject:sourceNodeCopy];
        parentNode = [sourceNodeCopy parentNode];
        if (v13)
        {
          break;
        }

        sourceNodeCopy = parentNode;
      }

      while (parentNode);
    }

    else
    {
      v13 = 0;
    }

    v15 = [objc_msgSend(node "childNodes")];
    isHidden = [v15 isHidden];
    v17 = 240;
    if (isHidden)
    {
      v17 = 272;
    }

    if (v13)
    {
      v17 = 256;
    }

    [objc_msgSend(objc_msgSend(objc_msgSend(v15 "geometry")];
    v18 = [objc_msgSend(node "childNodes")];
    v19 = 0;
    if (v18 == 2)
    {
      v19 = [objc_msgSend(node "childNodes")];
    }

    v20 = v13 ^ 1u;
    [v19 setHidden:v20];
    if (v20)
    {
      v25 = 0;
    }

    else
    {
      v21 = [objc_msgSend(objc_msgSend(objc_msgSend(sourceNode "particleSystems")];
      if (v21 == [objc_msgSend(node valueForKey:{@"sourceShape", "unsignedLongValue"}])
      {
LABEL_26:
        LODWORD(v22) = v11;
        LODWORD(v23) = v11;
        LODWORD(v24) = v11;
        [v15 setScale:{v22, v23, v24}];
        return;
      }

      [(SCNAuthoringEnvironment2 *)self setupParticleMeshEmitter:sourceNode authoringNode:node];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v21];
    }

    [node setValue:v25 forKey:@"sourceShape"];
    goto LABEL_26;
  }

  [(SCNAuthoringEnvironment2 *)self removeParticlesNode:sourceNode];
}

- (void)updateCameraNode:(id)node withSourceNode:(id)sourceNode
{
  camera = [sourceNode camera];
  if (camera)
  {
    v8 = camera;
    if ([(SCNRenderer *)self->_renderer pointOfView]== sourceNode)
    {
      isHidden = 1;
    }

    else
    {
      isHidden = [sourceNode isHidden];
    }

    [node setHidden:isHidden];
    if (([node isHidden] & 1) == 0)
    {
      if (sourceNode)
      {
        sourceNodeCopy = sourceNode;
        do
        {
          v11 = [(NSMutableSet *)self->_selection containsObject:sourceNodeCopy];
          parentNode = [sourceNodeCopy parentNode];
          if (v11)
          {
            break;
          }

          sourceNodeCopy = parentNode;
        }

        while (parentNode);
        if (v11)
        {
          v13 = 256;
        }

        else
        {
          v13 = 200;
        }
      }

      else
      {
        v13 = 200;
      }

      presentationNode = [sourceNode presentationNode];
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      if (presentationNode)
      {
        objc_msgSend_worldTransform(presentationNode);
      }

      v47[0] = v48;
      v47[1] = v49;
      v47[2] = v50;
      v47[3] = v51;
      [node setTransform:v47];
      v15 = [(SCNRenderer *)self->_renderer _engineContext:C3DMatrix4x4FromSCNMatrix4(v47];
      C3DSizeForScreenSpaceSizeAndTransform(v15, v16);
      v18 = *&v17;
      LODWORD(v19) = LODWORD(v17);
      LODWORD(v20) = LODWORD(v17);
      [node setScale:{v17, v19, v20}];
      cameraRef = [v8 cameraRef];
      ZNear = C3DCameraGetZNear(cameraRef, v22);
      ZFar = C3DCameraGetZFar(cameraRef, v24);
      UsesOrthographicProjection = C3DCameraGetUsesOrthographicProjection(cameraRef, v26);
      v28 = [objc_msgSend(node "childNodes")];
      if (UsesOrthographicProjection)
      {
        [v28 setGeometry:{-[SCNAuthoringEnvironment2 cameraOrthographicFrustumGeometry](self, "cameraOrthographicFrustumGeometry")}];
        OrthographicScale = C3DCameraGetOrthographicScale(cameraRef, v29);
        *&OrthographicScale = OrthographicScale;
        *&OrthographicScale = *&OrthographicScale / v18;
        *&v31 = ZFar / v18;
        v32 = v28;
        LODWORD(v33) = LODWORD(OrthographicScale);
      }

      else
      {
        [v28 setGeometry:{-[SCNAuthoringEnvironment2 cameraFrustumGeometry](self, "cameraFrustumGeometry")}];
        v46 = 0;
        Viewport = C3DEngineContextGetViewport([(SCNRenderer *)self->_renderer _engineContext]);
        __asm { FMOV            V1.2S, #1.0 }

        Viewport.n128_u64[0] = vmaxnm_f32(*&vextq_s8(Viewport, Viewport, 8uLL), _D1);
        C3DCameraGetEffectiveFovForAspectRatio(cameraRef, &v46 + 1, &v46, vdiv_f32(Viewport.n128_u64[0], vdup_lane_s32(Viewport.n128_u64[0], 1)).f32[0]);
        if (v18 == 0.0)
        {
LABEL_24:
          v41 = [objc_msgSend(v28 "childNodes")];
          *&v42 = ZNear / ZFar;
          *&v43 = ZNear / ZFar;
          *&v44 = ZNear / ZFar;
          [v41 setScale:{v42, v43, v44}];
          v45 = (self->_displayMask & 4) == 0;
          [v28 setHidden:v45];
          [v41 setHidden:v45];
          [objc_msgSend(objc_msgSend(objc_msgSend(node "geometry")];
          [objc_msgSend(objc_msgSend(objc_msgSend(v28 "geometry")];
          [objc_msgSend(objc_msgSend(objc_msgSend(v41 "geometry")];
          return;
        }

        v40 = tan(*&v46 * 0.5 / 180.0 * 3.14159265) * ZFar;
        OrthographicScale = tan(*(&v46 + 1) * 0.5 / 180.0 * 3.14159265) * ZFar;
        *&OrthographicScale = OrthographicScale;
        *&OrthographicScale = *&OrthographicScale / v18;
        *&v33 = v40 / v18;
        *&v31 = ZFar / v18;
        v32 = v28;
      }

      [v32 setScale:{OrthographicScale, v33, v31}];
      goto LABEL_24;
    }
  }

  else
  {

    [(SCNAuthoringEnvironment2 *)self removeCameraNode:sourceNode];
  }
}

- (void)updateFieldNode:(id)node withSourceNode:(id)sourceNode
{
  sourceNodeCopy = sourceNode;
  if ([sourceNode physicsField])
  {
    [node setHidden:{objc_msgSend(sourceNodeCopy, "isHidden")}];
    if (([node isHidden] & 1) == 0)
    {
      presentationNode = [sourceNodeCopy presentationNode];
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      if (presentationNode)
      {
        objc_msgSend_worldTransform(presentationNode);
      }

      v11[0] = v12;
      v11[1] = v13;
      v11[2] = v14;
      v11[3] = v15;
      [node setTransform:v11];
      if (sourceNodeCopy)
      {
        do
        {
          v8 = [(NSMutableSet *)self->_selection containsObject:sourceNodeCopy];
          parentNode = [sourceNodeCopy parentNode];
          if (v8)
          {
            break;
          }

          sourceNodeCopy = parentNode;
        }

        while (parentNode);
        v10 = 200;
        if (v8)
        {
          v10 = 256;
        }
      }

      else
      {
        v10 = 200;
      }

      [objc_msgSend(objc_msgSend(objc_msgSend(node "geometry")];
    }
  }

  else
  {

    [(SCNAuthoringEnvironment2 *)self removePhysicsFieldNode:sourceNodeCopy];
  }
}

- (void)updateWithRenderer:(id)renderer
{
  objc_sync_enter(self);
  self->_renderer = renderer;
  _engineContext = [renderer _engineContext];
  RendererContextGL = C3DEngineContextGetRendererContextGL(_engineContext, v6);
  if (RendererContextGL)
  {
    ShowsAuthoringEnvironment = C3DRendererContextGetShowsAuthoringEnvironment(RendererContextGL);
  }

  else
  {
    ShowsAuthoringEnvironment = 0;
  }

  RenderContext = C3DEngineContextGetRenderContext(_engineContext, v8);
  if (RenderContext)
  {
    ShowsAuthoringEnvironment = [(SCNMTLRenderContext *)RenderContext showsAuthoringEnvironment];
  }

  if (ShowsAuthoringEnvironment)
  {
    if (![(SCNNode *)self->_lightRoot isHidden])
    {
      CFDictionaryApplyFunction(self->_lightsDictionary, __UpdateLight, self);
    }

    if (![(SCNNode *)self->_cameraRoot isHidden])
    {
      CFDictionaryApplyFunction(self->_camerasDictionary, __UpdateCamera, self);
    }

    if (![(SCNNode *)self->_particlesRoot isHidden])
    {
      CFDictionaryApplyFunction(self->_particlesDictionary, __UpdateParticles, self);
    }

    if (![(SCNNode *)self->_physicsFieldsRoot isHidden])
    {
      CFDictionaryApplyFunction(self->_physicsFieldsDictionary, __UpdateFields, self);
    }

    privateRendererOwner = [renderer privateRendererOwner];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(privateRendererOwner "defaultCameraController")];
      [(SCNNode *)self->_cameraTarget setPosition:?];
    }

    [(SCNNode *)self->_cameraTarget setHidden:1];
  }

  [(SCNManipulator *)self->_manipulator updateManipulatorPosition:_engineContext];
  privateRendererOwner2 = [renderer privateRendererOwner];
  v13 = privateRendererOwner2;
  if (privateRendererOwner2 && [privateRendererOwner2 pointOfView])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = [(NSOrderedSet *)[(SCNManipulator *)self->_manipulator targets] count]== 0;
    targets = [(SCNManipulator *)self->_manipulator targets];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__SCNAuthoringEnvironment2_updateWithRenderer___block_invoke;
    v15[3] = &unk_2782FCAE0;
    v15[4] = v13;
    v15[5] = &v16;
    [(NSOrderedSet *)targets enumerateObjectsUsingBlock:v15];
    [(SCNNode *)[(SCNManipulator *)self->_manipulator manipulatorNode] setHidden:*(v17 + 24)];
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    [(SCNNode *)[(SCNManipulator *)self->_manipulator manipulatorNode] setHidden:1];
  }

  if (ShowsAuthoringEnvironment == [(SCNNode *)self->_layerRoot isHidden])
  {
    [(SCNNode *)self->_layerRoot setHidden:ShowsAuthoringEnvironment ^ 1u];
    [(SCNNode *)self->_overlayLayerRoot setHidden:ShowsAuthoringEnvironment ^ 1u];
  }

  self->_renderer = 0;
  objc_sync_exit(self);
}

void *__47__SCNAuthoringEnvironment2_updateWithRenderer___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [*(a1 + 32) pointOfView];
  result = [a2 node];
  if (v7 == result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)_updateRootsVisibility
{
  [(SCNNode *)self->_lightRoot setHidden:(self->_displayMask & 0x228) == 0];
  [(SCNNode *)self->_particlesRoot setHidden:(self->_displayMask & 0x28) == 0];
  v3 = (self->_displayMask & 0x14) == 0;
  cameraRoot = self->_cameraRoot;

  [(SCNNode *)cameraRoot setHidden:v3];
}

- (void)setAuthoringCamera:(int64_t)camera forView:(id)view
{
  v31[1] = *MEMORY[0x277D85DE8];
  if ([view scene])
  {
    [objc_msgSend(view "defaultCameraController")];
    v30 = v7;
    v8 = [(NSArray *)[(SCNNode *)self->_pointsOfViewRoot childNodes] objectAtIndexedSubscript:camera];
    v31[0] = [objc_msgSend(view "scene")];
    v9.i64[0] = SCNNodeGetBoundingSphere([MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1], 0x10000);
    v9.i64[1] = v10;
    v28 = v9;
    v11 = *(&v10 + 1);
    [objc_msgSend(v8 "camera")];
    *&v12 = v12;
    v13 = vsubq_f32(v30, v28);
    v14 = vmulq_f32(v13, v13);
    *&v12 = (v11 + sqrtf(v14.f32[2] + vaddv_f32(*v14.f32))) + *&v12;
    v29 = v12;
    +[SCNNode simdLocalUp];
    v26 = v15;
    +[SCNNode simdLocalRight];
    v27 = v16;
    +[SCNNode simdLocalFront];
    if (camera > 3)
    {
      switch(camera)
      {
        case 4:
          LODWORD(v18) = 1070141403;
          break;
        case 5:
          v27 = v17;
          v18 = 0.0;
          goto LABEL_17;
        case 6:
          LODWORD(v18) = -1068953637;
          v27 = v17;
          break;
        default:
LABEL_20:
          [view setPointOfView:v8];
          [objc_msgSend(view "defaultCameraController")];
          return;
      }

      [v8 setEulerAngles:{0.0, v18, 0.0}];
      v20 = *&v29;
      v19 = v30;
      v21 = v27;
    }

    else
    {
      if (camera != 1)
      {
        if (camera == 2)
        {
          v17.i32[0] = 1070141403;
          [v8 setEulerAngles:{*v17.i64, 0.0, 0.0}];
          v24 = *&v29;
          v23 = v30;
          v25 = v26;
LABEL_18:
          v22 = vmlsq_lane_f32(v23, v25, v24, 0).u64[0];
          goto LABEL_19;
        }

        if (camera == 3)
        {
          LODWORD(v18) = -1077342245;
LABEL_17:
          [v8 setEulerAngles:{0.0, v18, 0.0}];
          v24 = *&v29;
          v23 = v30;
          v25 = v27;
          goto LABEL_18;
        }

        goto LABEL_20;
      }

      v17.i32[0] = -1077342245;
      [v8 setEulerAngles:{*v17.i64, 0.0, 0.0}];
      v20 = *&v29;
      v19 = v30;
      v21 = v26;
    }

    v22 = vmlaq_n_f32(v19, v21, v20).u64[0];
LABEL_19:
    [v8 setSimdWorldPosition:*&v22];
    goto LABEL_20;
  }
}

- (id)authoringCamera:(int64_t)camera
{
  childNodes = [(SCNNode *)self->_pointsOfViewRoot childNodes];

  return [(NSArray *)childNodes objectAtIndexedSubscript:camera];
}

void __79__SCNAuthoringEnvironment2__resetLightAuthoringWithContainerNode_source_light___block_invoke_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: SH order unsupported : %d", v2, 8u);
}

@end