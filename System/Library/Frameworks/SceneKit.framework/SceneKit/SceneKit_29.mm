BOOL __addJSValueExtension(NSString *a1, const char *a2, int a3)
{
  MetaClass = NSClassFromString(&cfstr_Jsvalue.isa);
  v7 = NSSelectorFromString(a1);
  v8 = objc_opt_class();
  if (a3)
  {
    InstanceMethod = class_getInstanceMethod(v8, v7);
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    ClassMethod = class_getClassMethod(v8, v7);
    Implementation = method_getImplementation(ClassMethod);
    MetaClass = objc_getMetaClass("JSValue");
  }

  return class_addMethod(MetaClass, v7, Implementation, a2);
}

Class _addJSValueExtension()
{
  v2 = *MEMORY[0x277D85DE8];
  result = NSClassFromString(&cfstr_Jsvalue.isa);
  if (result)
  {
    if ((_addJSValueExtension_done & 1) == 0)
    {
      _addJSValueExtension_done = 1;
      strcpy(v1, "{SCNVector4=ffff}");
      __strcat_chk();
      __addJSValueExtension(&cfstr_Tovector4.isa, v1, 1);
      strcpy(v1, "{SCNVector3=fff}");
      __strcat_chk();
      __addJSValueExtension(&cfstr_Tovector3.isa, v1, 1);
      strcpy(v1, "{SCNMatrix4=ffffffffffffffff}");
      __strcat_chk();
      __addJSValueExtension(&cfstr_Totransform3d.isa, v1, 1);
      strcpy(v1, "@@:");
      __strcat_chk();
      __strcat_chk();
      __addJSValueExtension(&cfstr_Valuewithvecto.isa, v1, 0);
      strcpy(v1, "@@:");
      __strcat_chk();
      __strcat_chk();
      __addJSValueExtension(&cfstr_Valuewithvecto_0.isa, v1, 0);
      strcpy(v1, "@@:");
      __strcat_chk();
      __strcat_chk();
      return __addJSValueExtension(&cfstr_Valuewithtrans.isa, v1, 0);
    }
  }

  return result;
}

void SCNExportJavaScriptModule(JSContext *context)
{
  v2 = [(JSContext *)context objectForKeyedSubscript:@"_SceneKitIsLoaded"];
  if (!v2 || ![(JSValue *)v2 toBool])
  {
    if (SCNExportJavaScriptModule_onceToken != -1)
    {
      SCNExportJavaScriptModule_cold_1();
    }

    v3 = objc_opt_class();
    _exposeClass(context, @"SCNMaterialProperty", v3);
    v4 = objc_opt_class();
    _exposeClass(context, @"SCNBoundingBox", v4);
    v5 = objc_opt_class();
    _exposeClass(context, @"SCNBoundingSphere", v5);
    v6 = objc_opt_class();
    _exposeClass(context, @"SCNTransaction", v6);
    v7 = objc_opt_class();
    _exposeClass(context, @"SCNColor", v7);
    v8 = objc_opt_class();
    _exposeClass(context, @"CAMediaTimingFunction", v8);
    v9 = objc_opt_class();
    _exposeClass(context, @"CABasicAnimation", v9);
    v10 = objc_opt_class();
    _exposeClass(context, @"CAAnimationGroup", v10);
    v11 = objc_opt_class();
    _exposeClass(context, @"CAKeyframeAnimation", v11);
    v12 = objc_opt_class();
    _exposeClass(context, @"CALayer", v12);
    v13 = objc_opt_class();
    _exposeClass(context, @"SCNImage", v13);
    v14 = objc_opt_class();
    _exposeClass(context, @"SCNValue", v14);
    v15 = objc_opt_class();
    _exposeClass(context, @"SCNView", v15);
    v16 = objc_opt_class();
    _exposeClass(context, @"SCNNode", v16);
    v17 = objc_opt_class();
    _exposeClass(context, @"SCNGeometry", v17);
    v18 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsWorld", v18);
    v19 = objc_opt_class();
    _exposeClass(context, @"SCNMaterialProperty", v19);
    v20 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsBody", v20);
    v21 = objc_opt_class();
    _exposeClass(context, @"SCNTransformConstraint", v21);
    v22 = objc_opt_class();
    _exposeClass(context, @"SCNLookAtConstraint", v22);
    v23 = objc_opt_class();
    _exposeClass(context, @"SCNLight", v23);
    v24 = objc_opt_class();
    _exposeClass(context, @"SCNCylinder", v24);
    v25 = objc_opt_class();
    _exposeClass(context, @"SCNGeometryElement", v25);
    v26 = objc_opt_class();
    _exposeClass(context, @"SCNIKConstraint", v26);
    v27 = objc_opt_class();
    _exposeClass(context, @"SCNRenderer", v27);
    v28 = objc_opt_class();
    _exposeClass(context, @"SCNTube", v28);
    v29 = objc_opt_class();
    _exposeClass(context, @"SCNParticleSystem", v29);
    v30 = objc_opt_class();
    _exposeClass(context, @"SCNMorpher", v30);
    v31 = objc_opt_class();
    _exposeClass(context, @"SCNBox", v31);
    v32 = objc_opt_class();
    _exposeClass(context, @"SCNCamera", v32);
    v33 = objc_opt_class();
    _exposeClass(context, @"SCNLevelOfDetail", v33);
    v34 = objc_opt_class();
    _exposeClass(context, @"SCNMaterial", v34);
    v35 = objc_opt_class();
    _exposeClass(context, @"SCNProgram", v35);
    v36 = objc_opt_class();
    _exposeClass(context, @"SCNParticlePropertyController", v36);
    v37 = objc_opt_class();
    _exposeClass(context, @"SCNConstraint", v37);
    v38 = objc_opt_class();
    _exposeClass(context, @"SCNPlane", v38);
    v39 = objc_opt_class();
    _exposeClass(context, @"SCNCone", v39);
    v40 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsBehavior", v40);
    v41 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsHingeJoint", v41);
    v42 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsField", v42);
    v43 = objc_opt_class();
    _exposeClass(context, @"SCNGeometrySource", v43);
    v44 = objc_opt_class();
    _exposeClass(context, @"SCNTorus", v44);
    v45 = objc_opt_class();
    _exposeClass(context, @"SCNScene", v45);
    v46 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsShape", v46);
    v47 = objc_opt_class();
    _exposeClass(context, @"SCNCapsule", v47);
    v48 = objc_opt_class();
    _exposeClass(context, @"SCNFloor", v48);
    v49 = objc_opt_class();
    _exposeClass(context, @"SCNShape", v49);
    v50 = objc_opt_class();
    _exposeClass(context, @"SCNText", v50);
    v51 = objc_opt_class();
    _exposeClass(context, @"SCNTechnique", v51);
    v52 = objc_opt_class();
    _exposeClass(context, @"SCNPyramid", v52);
    v53 = objc_opt_class();
    _exposeClass(context, @"SCNSceneSource", v53);
    v54 = objc_opt_class();
    _exposeClass(context, @"SCNSphere", v54);
    v55 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsBallSocketJoint", v55);
    v56 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsSliderJoint", v56);
    v57 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsContact", v57);
    v58 = objc_opt_class();
    _exposeClass(context, @"SCNHitTestResult", v58);
    v59 = objc_opt_class();
    _exposeClass(context, @"SCNAnimationEvent", v59);
    v60 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsVehicle", v60);
    v61 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsVehicleWheel", v61);
    v62 = objc_opt_class();
    _exposeClass(context, @"SCNAction", v62);
    v63 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v63, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNActionTimingModeLinear");
    v64 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v64, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNActionTimingModeEaseIn");
    v65 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v65, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNActionTimingModeEaseOut");
    v66 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v66, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNActionTimingModeEaseInEaseOut");
    v67 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v67, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNEditingLocalSpace");
    v68 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v68, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNEditingParentSpace");
    v69 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v69, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNEditingWorldSpace");
    v70 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v70, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNEditingScreenSpace");
    v71 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v71, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNManipulatorPositionCenter");
    v72 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v72, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNManipulatorPositionMin");
    v73 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v73, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNManipulatorPositionMax");
    v74 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v74, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNAuthoringDisplayBoundingBoxes");
    v75 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v75, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNAuthoringDisplayBoundingSpheres");
    v76 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v76, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNAuthoringDisplayCameraFrustum");
    v77 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v77, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:8], @"SCNAuthoringDisplayLightExtents");
    v78 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v78, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:16], @"SCNAuthoringDisplayCameraPosition");
    v79 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v79, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:32], @"SCNAuthoringDisplayLightPosition");
    v80 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v80, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:64], @"SCNAuthoringDisplayPhysics");
    v81 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v81, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:128], @"SCNAuthoringDisplayPhysicsFields");
    v82 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v82, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:256], @"SCNAuthoringDisplayGrid");
    v83 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v83, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:512], @"SCNAuthoringDisplayLightProbes");
    v84 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v84, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1024], @"SCNAuthoringDisplayWireframe");
    v85 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v85, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2048], @"SCNAuthoringDisplaySkeletons");
    v86 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v86, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0x2000], @"SCNAuthoringDisplayConstraints");
    v87 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v87, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0x4000], @"SCNAuthoringDisplayCreases");
    v88 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v88, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4096], @"SCNAuthoringDisplayLightInfluence");
    v89 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v89, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNAuthoringCameraPerspective");
    v90 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v90, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNAuthoringCameraTop");
    v91 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v91, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNAuthoringCameraBottom");
    v92 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v92, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNAuthoringCameraLeft");
    v93 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v93, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNAuthoringCameraRight");
    v94 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v94, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:5], @"SCNAuthoringCameraFront");
    v95 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v95, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:6], @"SCNAuthoringCameraBack");
    v96 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v96, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNCameraProjectionDirectionVertical");
    v97 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v97, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNCameraProjectionDirectionHorizontal");
    v98 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v98, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNInteractionModeFly");
    v99 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v99, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNInteractionModeOrbitTurntable");
    v100 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v100, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNInteractionModeOrbitAngleMapping");
    v101 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v101, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNInteractionModeOrbitCenteredArcball");
    v102 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v102, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNInteractionModeOrbitArcball");
    v103 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v103, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:5], @"SCNInteractionModePan");
    v104 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v104, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:6], @"SCNInteractionModeTruck");
    v105 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v105, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNCameraFieldOfViewOrientationVertical");
    v106 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v106, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNCameraFieldOfViewOrientationHorizontal");
    v107 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v107, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNCameraExposureAdaptationModeFrameLuminance");
    v108 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v108, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNCameraExposureAdaptationModeHistogramLuminance");
    v109 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v109, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNCameraFillModeFill");
    v110 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v110, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNCameraFillModeLetterbox");
    v111 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v111, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNGeometryPrimitiveTypeTriangles");
    v112 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v112, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNGeometryPrimitiveTypeTriangleStrip");
    v113 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v113, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNGeometryPrimitiveTypeLine");
    v114 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v114, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNGeometryPrimitiveTypePoint");
    v115 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v115, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNGeometryPrimitiveTypePolygon");
    v116 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v116, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNTessellationSmoothingModeNone");
    v117 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v117, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNTessellationSmoothingModePNTriangles");
    v118 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v118, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNTessellationSmoothingModePhong");
    v119 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v119, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNSubdivisionBoundaryInterpolationRuleNone");
    v120 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v120, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNSubdivisionBoundaryInterpolationRuleEdgeOnly");
    v121 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v121, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNSubdivisionBoundaryInterpolationRuleEdgeAndCorner");
    v122 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v122, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNSubdivisionFaceVaryingInterpolationRuleLinearNone");
    v123 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v123, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNSubdivisionFaceVaryingInterpolationRuleLinearCornersOnly");
    v124 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v124, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNSubdivisionFaceVaryingInterpolationRuleLinearCornersPlus1");
    v125 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v125, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNSubdivisionFaceVaryingInterpolationRuleLinearCornersPlus2");
    v126 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v126, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNSubdivisionFaceVaryingInterpolationRuleLinearBoundaries");
    v127 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v127, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:5], @"SCNSubdivisionFaceVaryingInterpolationRuleLinearAll");
    v128 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v128, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNSubdivisionNormalSmoothingModeCrossTriangle");
    v129 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v129, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNSubdivisionNormalSmoothingModeCrossQuad");
    v130 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v130, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNSubdivisionNormalSmoothingModeLimit");
    v131 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v131, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNHitTestSearchModeClosest");
    v132 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v132, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNHitTestSearchModeAll");
    v133 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v133, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNHitTestSearchModeAny");
    v134 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v134, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNLevelOfDetailThresholdModeWorldSpaceDistance");
    v135 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v135, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNLevelOfDetailThresholdModeScreenSpaceRadius");
    v136 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v136, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNShadowModeForward");
    v137 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v137, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNShadowModeDeferred");
    v138 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v138, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNShadowModeModulated");
    v139 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v139, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNMorpherCalculationModeNormalized");
    v140 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v140, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNMorpherCalculationModeAdditive");
    v141 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v141, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNMovabilityHintFixed");
    v142 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v142, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNMovabilityHintMovable");
    v143 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v143, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNChamferModeBoth");
    v144 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v144, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNChamferModeFront");
    v145 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v145, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNChamferModeBack");
    v146 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v146, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNParticleSortingModeNone");
    v147 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v147, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNParticleSortingModeProjectedDepth");
    v148 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v148, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNParticleSortingModeDistance");
    v149 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v149, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNParticleSortingModeOldestFirst");
    v150 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v150, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNParticleSortingModeYoungestFirst");
    v151 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v151, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNParticleBlendModeAdditive");
    v152 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v152, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNParticleBlendModeSubtract");
    v153 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v153, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNParticleBlendModeMultiply");
    v154 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v154, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNParticleBlendModeScreen");
    v155 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v155, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNParticleBlendModeAlpha");
    v156 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v156, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:5], @"SCNParticleBlendModeReplace");
    v157 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v157, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNParticleOrientationModeBillboardScreenAligned");
    v158 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v158, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNParticleOrientationModeBillboardViewAligned");
    v159 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v159, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNParticleOrientationModeFree");
    v160 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v160, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNParticleOrientationModeBillboardYAligned");
    v161 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v161, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNParticleBirthLocationSurface");
    v162 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v162, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNParticleBirthLocationVolume");
    v163 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v163, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNParticleBirthLocationVertex");
    v164 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v164, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNParticleBirthDirectionConstant");
    v165 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v165, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNParticleBirthDirectionSurfaceNormal");
    v166 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v166, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNParticleBirthDirectionRandom");
    v167 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v167, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNParticleImageSequenceAnimationModeRepeat");
    v168 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v168, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNParticleImageSequenceAnimationModeClamp");
    v169 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v169, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNParticleImageSequenceAnimationModeAutoReverse");
    v170 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v170, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNParticleInputModeOverLife");
    v171 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v171, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNParticleInputModeOverDistance");
    v172 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v172, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNParticleInputModeOverOtherProperty");
    v173 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v173, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNParticleModifierStagePreDynamics");
    v174 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v174, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNParticleModifierStagePostDynamics");
    v175 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v175, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNParticleModifierStagePreCollision");
    v176 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v176, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNParticleModifierStagePostCollision");
    v177 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v177, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNParticleEventBirth");
    v178 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v178, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNParticleEventDeath");
    v179 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v179, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNParticleEventCollision");
    v180 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v180, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNParticleRenderingModeSprite");
    v181 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v181, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNParticleRenderingModePointSprite");
    v182 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v182, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNParticleRenderingModeTrail");
    v183 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v183, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNParticleRenderingModeBeam");
    v184 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v184, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNParticleRenderingModeGeometry");
    v185 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v185, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNReferenceLoadingPolicyImmediate");
    v186 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v186, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNReferenceLoadingPolicyOnDemand");
    v187 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v187, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNAntialiasingModeNone");
    v188 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v188, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNAntialiasingModeMultisampling2X");
    v189 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v189, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNAntialiasingModeMultisampling4X");
    v190 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v190, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNRenderingAPIMetal");
    v191 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v191, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNRenderingAPIOpenGLES2");
    v192 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v192, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNSceneSourceStatusParsing");
    v193 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v193, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:8], @"SCNSceneSourceStatusValidating");
    v194 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v194, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:12], @"SCNSceneSourceStatusProcessing");
    v195 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v195, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:16], @"SCNSceneSourceStatusComplete");
    v196 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v196, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL], @"SCNSceneSourceStatusError");
    v197 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v197, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNCullBack");
    v198 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v198, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNCullFront");
    v199 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v199, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNBufferFrequencyPerFrame");
    v200 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v200, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNBufferFrequencyPerNode");
    v201 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v201, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNBufferFrequencyPerShadable");
    v202 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v202, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNFillModeFill");
    v203 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v203, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNFillModeLines");
    v204 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v204, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNCullModeBack");
    v205 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v205, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNCullModeFront");
    v206 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v206, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNTransparencyModeAOne");
    v207 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v207, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNTransparencyModeRGBZero");
    v208 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v208, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNTransparencyModeSingleLayer");
    v209 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v209, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNTransparencyModeDualLayer");
    v210 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v210, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNTransparencyModeDefault");
    v211 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v211, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNBlendModeAlpha");
    v212 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v212, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNBlendModeAdd");
    v213 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v213, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNBlendModeSubtract");
    v214 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v214, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNBlendModeMultiply");
    v215 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v215, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNBlendModeScreen");
    v216 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v216, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:5], @"SCNBlendModeReplace");
    v217 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v217, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:6], @"SCNBlendModeMax");
    v218 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v218, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNFilterModeNone");
    v219 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v219, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNFilterModeNearest");
    v220 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v220, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNFilterModeLinear");
    v221 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v221, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNWrapModeClamp");
    v222 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v222, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNWrapModeRepeat");
    v223 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v223, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNWrapModeMirror");
    v224 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v224, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNPhysicsBodyTypeStatic");
    v225 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v225, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNPhysicsBodyTypeDynamic");
    v226 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v226, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNPhysicsBodyTypeKinematic");
    v227 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v227, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNPhysicsFieldScopeInsideExtent");
    v228 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v228, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNPhysicsFieldScopeOutsideExtent");
    v229 = [(JSContext *)context globalObject];
    v230 = [MEMORY[0x277CCABB0] numberWithInt:1];

    [(JSValue *)v229 setValue:v230 forProperty:@"_SceneKitIsLoaded"];
  }
}

uint64_t _exposeClass(void *a1, void *a2, objc_class *a3)
{
  result = objc_opt_class();
  if (result != a3)
  {
    Superclass = class_getSuperclass(a3);
    if (Superclass)
    {
      v8 = Superclass;
      v9 = NSStringFromClass(Superclass);
      _exposeClass(a1, v9, v8);
    }

    result = [objc_msgSend(objc_msgSend(a1 "globalObject")];
    if (result)
    {
      if ([a2 hasPrefix:@"CA"])
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"SCNJS%@JSExport", objc_msgSend(a2, "substringFromIndex:", 2)];
      }

      else
      {
        v10 = ([a2 hasPrefix:@"NS"] ? objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"SCN%@JSExport", objc_msgSend(a2, "substringFromIndex:", 2)) : objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@JSExport", a2));
      }

      result = objc_getProtocol([v10 UTF8String]);
      if (result || (result = objc_opt_respondsToSelector(), (result & 1) != 0) && (result = [(objc_class *)a3 SCNJSExportProtocol]) != 0)
      {
        class_addProtocol(a3, result);
        v11 = [a1 globalObject];

        return [v11 setValue:a3 forProperty:a2];
      }
    }
  }

  return result;
}

uint64_t C3DRenderBufferGetSlotForOutputBufferType(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    goto LABEL_5;
  }

  v2 = a1;
  if (a1 == 5)
  {
    LOBYTE(a2) = 5;
    return a2;
  }

  if (a1 == 1)
  {
    if (a2 >= 4)
    {
LABEL_5:
      LOBYTE(a2) = 4;
    }
  }

  else
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      C3DRenderBufferGetSlotForOutputBufferType_cold_1(v2, v3);
    }

    LOBYTE(a2) = 7;
  }

  return a2;
}

uint64_t C3DRenderTargetDescriptionMake(unsigned int a1, int a2)
{
  v2 = 256;
  if (a2)
  {
    v2 = 16777472;
  }

  return v2 | a1;
}

void _C3DRenderTargetCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 56) = 0;
  }
}

uint64_t __C3DRenderTargetGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DRenderTargetGetTypeID_typeID = result;
  return result;
}

uint64_t C3DRenderTargetCreate(uint64_t a1)
{
  if (C3DRenderTargetGetTypeID_onceToken != -1)
  {
    C3DRenderTargetCreate_cold_1();
  }

  v2 = C3DRenderTargetGetTypeID_typeID;

  return C3DTypeCreateInstance_(v2, 72);
}

uint64_t C3DRenderTargetGetDescription(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_3(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 16);
}

void C3DRenderTargetSetDescription(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_3(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 16) = a2;
}

uint64_t C3DRenderTargetGetTexture(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_3(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

CFTypeRef C3DRenderTargetSetTexture(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_3(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 24);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 24) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 24) = result;
  }

  return result;
}

void C3DRenderTargetSetRenderBuffer(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_3(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 32) = v2;
}

uint64_t C3DRenderTargetGetRenderBuffer(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_3(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 32);
}

CFTypeRef C3DRenderTargetSetCIImage(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 56);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 56) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 56) = result;
  }

  return result;
}

const void *C3DGetTextResourceWithNameAllowingHotReload(void *key)
{
  __dst[102] = *MEMORY[0x277D85DE8];
  v2 = C3DGetTextResourceWithNameAllowingHotReload_s_builtInTextResources;
  if (!C3DGetTextResourceWithNameAllowingHotReload_s_builtInTextResources)
  {
    memcpy(__dst, off_278300BC0, 0x330uLL);
    memcpy(values, off_278300EF0, sizeof(values));
    v2 = CFDictionaryCreate(0, __dst, values, 101, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    C3DGetTextResourceWithNameAllowingHotReload_s_builtInTextResources = v2;
  }

  return CFDictionaryGetValue(v2, key);
}

void _C3DShaderModifierCFFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
    a1[7] = 0;
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
    a1[8] = 0;
  }

  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
    a1[9] = 0;
  }

  v7 = a1[4];
  if (v7)
  {
    CFRelease(v7);
    a1[4] = 0;
  }

  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
    a1[5] = 0;
  }

  v9 = a1[6];
  if (v9)
  {
    CFRelease(v9);
    a1[6] = 0;
  }
}

__CFString *_C3DShaderModifierCFCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = Mutable;
  if (*(a1 + 100))
  {
    v4 = "GLSL";
  }

  else
  {
    v4 = "Metal";
  }

  CFStringAppendFormat(Mutable, 0, @"<C3DShaderModifier %p language:%s, entryPoint:%d flags:%x\n", a1, v4, *(a1 + 88), *(a1 + 92));
  if (*(a1 + 16))
  {
    CFStringAppendFormat(v3, 0, @"  declaration : %@\n", *(a1 + 16));
  }

  if (*(a1 + 56))
  {
    CFStringAppendFormat(v3, 0, @"  arguments : %@\n", *(a1 + 56));
  }

  if (*(a1 + 72))
  {
    CFStringAppendFormat(v3, 0, @"  varyings : %@\n", *(a1 + 72));
  }

  if (*(a1 + 24))
  {
    CFStringAppendFormat(v3, 0, @"  code : %@\n", *(a1 + 24));
  }

  CFStringAppend(v3, @">");
  return v3;
}

uint64_t __C3DShaderModifierGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DShaderModifierGetTypeID_typeID = result;
  return result;
}

void __C3DGetSurfacePropertiesToDefines_block_invoke()
{
  v38 = *MEMORY[0x277D85DE8];
  *keys = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
  *values = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 100);
  for (i = 0; i != 31; ++i)
  {
    v3 = off_278301260[i];
    keys[i] = CFStringCreateWithFormat(v0, 0, @"_surface.%@", v3);
    CFStringReplaceAll(Mutable, v3);
    CFStringUppercase(Mutable, 0);
    values[i] = CFStringCreateWithFormat(v0, 0, @"USE_%@", Mutable);
  }

  CFRelease(Mutable);
  v4 = CFDictionaryCreate(v0, keys, values, 31, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = 0;
  C3DGetSurfacePropertiesToDefines_s_dic = v4;
  do
  {
    CFRelease(keys[v5]);
    CFRelease(values[v5++]);
  }

  while (v5 != 31);
}

void __C3DGetTexturePropertiesToDefines_block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  *keys = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  *values = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 100);
  for (i = 0; i != 8; ++i)
  {
    v3 = off_278301378[i];
    keys[i] = CFStringCreateWithFormat(v0, 0, @"u_%@Texture", v3);
    CFStringReplaceAll(Mutable, v3);
    CFStringUppercase(Mutable, 0);
    values[i] = CFStringCreateWithFormat(v0, 0, @"USE_%@_MAP", Mutable);
  }

  CFRelease(Mutable);
  v4 = CFDictionaryCreate(v0, keys, values, 8, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = 0;
  C3DGetTexturePropertiesToDefines_s_dic = v4;
  do
  {
    CFRelease(keys[v5]);
    CFRelease(values[v5++]);
  }

  while (v5 != 8);
}

CFDictionaryRef __C3DGetGeometryPropertiesToDefines_block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  *keys = xmmword_2783013D8;
  v4 = *&off_2783013E8;
  v6 = @"_geometry.clipDistance3";
  v5 = xmmword_2783013F8;
  v1[0] = xmmword_278301410;
  v1[1] = *&off_278301420;
  v1[2] = xmmword_278301430;
  v2 = @"USE_CLIP_DISTANCE3";
  result = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, v1, 7, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  C3DGetGeometryPropertiesToDefines_s_dic = result;
  return result;
}

CFDictionaryRef __C3DGetFramebufferPropertiesToDefines_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = xmmword_278301478;
  *keys = xmmword_278301468;
  result = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, &v1, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  C3DGetFramebufferPropertiesToDefines_s_dic = result;
  return result;
}

const __CFDictionary *__C3DShaderModifierCreate(const __CFString *a1, int a2, uint64_t a3, int a4, __int16 a5)
{
  v58 = *MEMORY[0x277D85DE8];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  v50 = a3;
  C3DShaderSourceParserContextCreate(0, a3, &v51);
  C3DShaderSourceParserParseSource(a1, &v51, 0);
  v7 = v51;
  v8 = v52;
  if (a4)
  {
    v9 = *(&v52 + 1);
  }

  else
  {
    v9 = 0;
  }

  v10 = v53;
  v11 = v54;
  v12 = v55;
  v13 = WORD4(v55);
  if (C3DShaderModifierGetTypeID_onceToken != -1)
  {
    __C3DShaderModifierCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DShaderModifierGetTypeID_typeID, 120);
  v16 = Instance;
  if (v7)
  {
    Instance = CFStringGetLength(v7);
    if (Instance)
    {
      Instance = *(v16 + 2);
      if (Instance != v7)
      {
        if (Instance)
        {
          CFRelease(Instance);
          *(v16 + 2) = 0;
        }

        Instance = CFRetain(v7);
        *(v16 + 2) = Instance;
      }
    }
  }

  if (v10)
  {
    Instance = CFDictionaryGetCount(v10);
    if (Instance)
    {
      Instance = *(v16 + 7);
      if (Instance != v10)
      {
        if (Instance)
        {
          CFRelease(Instance);
          *(v16 + 7) = 0;
        }

        Instance = CFRetain(v10);
        *(v16 + 7) = Instance;
      }
    }
  }

  if (*(&v10 + 1))
  {
    Instance = CFDictionaryGetCount(*(&v10 + 1));
    if (Instance)
    {
      Instance = *(v16 + 8);
      if (Instance != *(&v10 + 1))
      {
        if (Instance)
        {
          CFRelease(Instance);
          *(v16 + 8) = 0;
        }

        Instance = CFRetain(*(&v10 + 1));
        *(v16 + 8) = Instance;
      }
    }
  }

  if (v11)
  {
    Instance = CFDictionaryGetCount(v11);
    if (Instance)
    {
      Instance = *(v16 + 9);
      if (Instance != v11)
      {
        if (Instance)
        {
          CFRelease(Instance);
          *(v16 + 9) = 0;
        }

        Instance = CFRetain(v11);
        *(v16 + 9) = Instance;
      }
    }
  }

  if (!*(&v7 + 1) || (Instance = CFStringGetLength(*(&v7 + 1))) == 0)
  {
    v18 = scn_default_log(Instance, v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __C3DShaderModifierCreate_cold_2(v18);
      if (!v8)
      {
        goto LABEL_44;
      }

      goto LABEL_39;
    }

LABEL_38:
    if (!v8)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  v17 = *(v16 + 3);
  if (v17 == *(&v7 + 1))
  {
    goto LABEL_38;
  }

  if (v17)
  {
    CFRelease(v17);
    *(v16 + 3) = 0;
  }

  *(v16 + 3) = CFRetain(*(&v7 + 1));
  if (v8)
  {
LABEL_39:
    if (CFDictionaryGetCount(v8))
    {
      v19 = *(v16 + 4);
      if (v19 != v8)
      {
        if (v19)
        {
          CFRelease(v19);
          *(v16 + 4) = 0;
        }

        *(v16 + 4) = CFRetain(v8);
      }
    }
  }

LABEL_44:
  if (v9)
  {
    if (CFDictionaryGetCount(v9))
    {
      v20 = *(v16 + 6);
      if (v20 != v9)
      {
        if (v20)
        {
          CFRelease(v20);
          *(v16 + 6) = 0;
        }

        *(v16 + 6) = CFRetain(v9);
      }
    }
  }

  if (v12)
  {
    if (CFDictionaryGetCount(v12))
    {
      v21 = *(v16 + 5);
      if (v21 != v12)
      {
        if (v21)
        {
          CFRelease(v21);
          *(v16 + 5) = 0;
        }

        *(v16 + 5) = CFRetain(v12);
      }
    }
  }

  v22 = v13 | a5;
  *(v16 + 22) = a2;
  *(v16 + 94) = 0;
  v23 = MEMORY[0x277CBECE8];
  if (*(v16 + 3))
  {
    v24 = *(v16 + 4);
    v25 = *MEMORY[0x277CBECE8];
    if (v24)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v24);
      Count = CFDictionaryGetCount(*(v16 + 4));
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      Count = 0;
    }

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 0x40000000;
    v56[2] = ___C3DShaderModifierCreateWithComponents_block_invoke;
    v56[3] = &__block_descriptor_tmp_206;
    v56[4] = v16;
    v56[5] = MutableCopy;
    if (C3DGetSurfacePropertiesToDefines_onceToken != -1)
    {
      __C3DShaderModifierCreate_cold_3();
    }

    C3DCFDictionaryApplyBlock(C3DGetSurfacePropertiesToDefines_s_dic, v56);
    if (C3DGetTexturePropertiesToDefines_onceToken != -1)
    {
      __C3DShaderModifierCreate_cold_4();
    }

    C3DCFDictionaryApplyBlock(C3DGetTexturePropertiesToDefines_s_dic, v56);
    if (C3DGetGeometryPropertiesToDefines_onceToken != -1)
    {
      __C3DShaderModifierCreate_cold_5();
    }

    C3DCFDictionaryApplyBlock(C3DGetGeometryPropertiesToDefines_s_dic, v56);
    if (C3DGetFramebufferPropertiesToDefines_onceToken != -1)
    {
      __C3DShaderModifierCreate_cold_6();
    }

    C3DCFDictionaryApplyBlock(C3DGetFramebufferPropertiesToDefines_s_dic, v56);
    if (CFDictionaryGetCount(MutableCopy) != Count)
    {
      Copy = CFDictionaryCreateCopy(v25, MutableCopy);
      if (!Copy)
      {
        v30 = scn_default_log(0, v28);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          __C3DShaderModifierCreate_cold_7(v30, v31, v32, v33, v34, v35, v36, v37);
        }
      }

      v38 = *(v16 + 4);
      if (v38 != Copy)
      {
        if (v38)
        {
          CFRelease(v38);
          *(v16 + 4) = 0;
        }

        if (Copy)
        {
          v39 = CFRetain(Copy);
        }

        else
        {
          v39 = 0;
        }

        *(v16 + 4) = v39;
      }

      CFRelease(Copy);
    }

    CFRelease(MutableCopy);
  }

  v40 = *(v16 + 4);
  if (v40)
  {
    if (CFDictionaryGetCountOfKey(v40, @"USE_TANGENT") || CFDictionaryGetCountOfKey(*(v16 + 4), @"USE_TANGENT"))
    {
      v22 |= 4u;
    }

    v41 = *(v16 + 4);
    *(v16 + 46) = v22;
    if (v41)
    {
      if (CFDictionaryGetCountOfKey(v41, @"USE_EMISSIVETEXCOORD"))
      {
        *(v16 + 47) |= 1u;
      }

      if (CFDictionaryGetCountOfKey(*(v16 + 4), @"USE_AMBIENTTEXCOORD"))
      {
        *(v16 + 47) |= 2u;
      }

      if (CFDictionaryGetCountOfKey(*(v16 + 4), @"USE_DIFFUSETEXCOORD"))
      {
        *(v16 + 47) |= 4u;
      }

      if (CFDictionaryGetCountOfKey(*(v16 + 4), @"USE_SPECULARTEXCOORD"))
      {
        *(v16 + 47) |= 8u;
      }

      if (CFDictionaryGetCountOfKey(*(v16 + 4), @"USE_REFLECTIVETEXCOORD"))
      {
        *(v16 + 47) |= 0x10u;
      }

      if (CFDictionaryGetCountOfKey(*(v16 + 4), @"USE_TRANSPARENTTEXCOORD"))
      {
        *(v16 + 47) |= 0x20u;
      }

      if (CFDictionaryGetCountOfKey(*(v16 + 4), @"USE_FILTERTEXCOORD"))
      {
        *(v16 + 47) |= 0x40u;
      }

      if (CFDictionaryGetCountOfKey(*(v16 + 4), @"USE_NORMALTEXCOORD"))
      {
        *(v16 + 47) |= 0x80u;
      }

      if (CFDictionaryGetCountOfKey(*(v16 + 4), @"USE_METALNESSTEXCOORD"))
      {
        *(v16 + 47) |= 0x400u;
      }

      if (CFDictionaryGetCountOfKey(*(v16 + 4), @"USE_ROUGHNESSTEXCOORD"))
      {
        *(v16 + 47) |= 0x800u;
      }

      if (CFDictionaryGetCountOfKey(*(v16 + 4), @"USE_CLEARCOATTEXCOORD"))
      {
        *(v16 + 47) |= 0x1000u;
      }

      if (CFDictionaryGetCountOfKey(*(v16 + 4), @"USE_CLEARCOATROUGHNESSTEXCOORD"))
      {
        *(v16 + 47) |= 0x2000u;
      }

      if (CFDictionaryGetCountOfKey(*(v16 + 4), @"USE_CLEARCOATNORMALTEXCOORD"))
      {
        *(v16 + 47) |= 0x4000u;
      }
    }
  }

  else
  {
    *(v16 + 46) = v22;
  }

  if (*(v16 + 3))
  {
    strcpy(&cStr, "_geometry.texcoords[x]");
    v42 = CFStringCreateWithCStringNoCopy(*v23, &cStr, 0x600u, *MEMORY[0x277CBED00]);
    for (i = 0; i != 8; ++i)
    {
      LOBYTE(cStr.hash[3]) = i | 0x30;
      if (CFStringFind(*(v16 + 3), v42, 0).location != -1)
      {
        *(v16 + 48) |= 1 << i;
      }
    }

    CFRelease(v42);
  }

  memset(&cStr, 0, sizeof(cStr));
  CC_SHA256_Init(&cStr);
  CC_SHA256_Update(&cStr, v16 + 88, 4u);
  v44 = *(v16 + 3);
  if (v44)
  {
    CFStringUpdateHash(v44);
  }

  v45 = *(v16 + 2);
  if (v45)
  {
    CFStringUpdateHash(v45);
  }

  v46 = *(v16 + 4);
  if (v46)
  {
    CFDictionaryApplyFunction(v46, CFStringToStringDictionaryHash, &cStr);
  }

  CC_SHA256_Final(v16 + 104, &cStr);
  *(v16 + 25) = v50;
  C3DShaderSourceParserContextDestroy(&v51);
  return v16;
}

const __CFDictionary *C3DShaderModifiersCreate(CFStringRef theString, int a2, CFDictionaryRef theDict, uint64_t a4, int a5, int a6)
{
  v26 = *MEMORY[0x277D85DE8];
  if (theDict && CFDictionaryGetCount(theDict) >= 1)
  {
    v25 = a6;
    Count = CFDictionaryGetCount(theDict);
    v24[1] = v24;
    MEMORY[0x28223BE20](Count);
    v13 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
    v14 = (v24 - v13);
    if ((8 * Count) >= 0x200)
    {
      v15 = 512;
    }

    else
    {
      v15 = 8 * Count;
    }

    bzero(v24 - v13, v15);
    MEMORY[0x28223BE20](v16);
    v17 = (v24 - v13);
    bzero(v24 - v13, v15);
    CFDictionaryGetKeysAndValues(theDict, (v24 - v13), (v24 - v13));
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    if (Count >= 1)
    {
      do
      {
        v20 = *v14++;
        v19 = v20;
        v21 = *v17++;
        CFStringAppendFormat(Mutable, 0, @"#define %@ %@\n", v19, v21);
        --Count;
      }

      while (Count);
    }

    CFStringAppend(Mutable, theString);
    LOWORD(a6) = v25;
  }

  else
  {
    Mutable = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theString);
  }

  v22 = __C3DShaderModifierCreate(Mutable, a2, a4, a5, a6);
  CFRelease(Mutable);
  return v22;
}

uint64_t C3DShaderModifierGetDeclaration(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 16);
}

uint64_t C3DShaderModifierGetLanguage(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 100);
}

uint64_t C3DShaderModifierGetStandardUniformsUsed(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 40);
}

uint64_t C3DShaderModifierGetArguments(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 56);
}

uint64_t C3DShaderModifierGetVaryings(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 72);
}

uint64_t C3DShaderModifierGetArgumentsDefaultValues(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

uint64_t C3DShaderModifierGetCode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

uint64_t C3DShaderModifierGetDefines(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 32);
}

void C3DShaderModifierEnumeratePossibleDefinesUsingBlock(uint64_t a1)
{
  if (C3DGetSurfacePropertiesToDefines_onceToken != -1)
  {
    C3DShaderModifierEnumeratePossibleDefinesUsingBlock_cold_1();
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __C3DShaderModifierEnumeratePossibleDefinesUsingBlock_block_invoke;
  v5[3] = &unk_278301490;
  v5[4] = a1;
  C3DCFDictionaryApplyBlock(C3DGetSurfacePropertiesToDefines_s_dic, v5);
  if (C3DGetTexturePropertiesToDefines_onceToken != -1)
  {
    __C3DShaderModifierCreate_cold_4();
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __C3DShaderModifierEnumeratePossibleDefinesUsingBlock_block_invoke_2;
  v4[3] = &unk_2783014B8;
  v4[4] = a1;
  C3DCFDictionaryApplyBlock(C3DGetTexturePropertiesToDefines_s_dic, v4);
  if (C3DGetGeometryPropertiesToDefines_onceToken != -1)
  {
    __C3DShaderModifierCreate_cold_5();
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = __C3DShaderModifierEnumeratePossibleDefinesUsingBlock_block_invoke_3;
  v3[3] = &unk_2783014E0;
  v3[4] = a1;
  C3DCFDictionaryApplyBlock(C3DGetGeometryPropertiesToDefines_s_dic, v3);
  if (C3DGetFramebufferPropertiesToDefines_onceToken != -1)
  {
    __C3DShaderModifierCreate_cold_6();
  }

  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = __C3DShaderModifierEnumeratePossibleDefinesUsingBlock_block_invoke_4;
  v2[3] = &unk_278301508;
  v2[4] = a1;
  C3DCFDictionaryApplyBlock(C3DGetFramebufferPropertiesToDefines_s_dic, v2);
}

uint64_t C3DShaderModifierGetFlags(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 92);
}

uint64_t C3DShaderModifierGetEffectPropertyMaskForTexcoordsUse(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 94);
}

uint64_t C3DShaderModifierGetMappingChannelyMaskForTexcoordsUse(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 96);
}

uint64_t C3DShaderModifierGetEntryPoint(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 88);
}

CFIndex CFStringUpdateHash(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v11 = *MEMORY[0x277D85DE8];
  CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
  result = CFStringGetLength(v4);
  v7 = result;
  if (CStringPtr)
  {

    return CC_SHA256_Update(v2, CStringPtr, result);
  }

  else
  {
    do
    {
      if (!v7)
      {
        break;
      }

      usedBufLen = 0;
      v13.location = CStringPtr;
      v13.length = v7;
      result = CFStringGetBytes(v4, v13, 0x8000100u, 0, 0, buffer, 0x8000, &usedBufLen);
      v8 = result;
      if (usedBufLen)
      {
        result = CC_SHA256_Update(v2, buffer, usedBufLen);
      }

      CStringPtr += v8;
      v7 -= v8;
    }

    while (v8);
  }

  return result;
}

CFIndex CFStringToStringDictionaryHash(uint64_t a1, uint64_t a2)
{
  result = CFStringUpdateHash(a1);
  if (a2)
  {

    return CFStringUpdateHash(a2);
  }

  return result;
}

uint64_t C3DShaderModifierBindUniforms(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  RendererElementState = C3DEngineContextGetRendererElementState(a2);
  v10 = RendererElementState;
  if (!a1)
  {
    v11 = scn_default_log(RendererElementState, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v11, v9, v12, v13, v14, v15, v16, v17);
    }
  }

  if (!*(a1 + 48))
  {
    return 0;
  }

  v20[0] = C3DEngineContextGetRendererContextGL(a2, v9);
  v20[1] = C3DEngineContextGetResourceManager(a2, v18);
  v20[2] = C3DRendererElementStateGetCurrentProgramObject(v10);
  v20[3] = a3;
  v20[4] = a4;
  v21 = 0;
  CFDictionaryApplyFunction(*(a1 + 48), __bindUniform, v20);
  return v21;
}

void __bindUniform(void *key, __int16 a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  UniformLocationOfSymbolNamed = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(*(a3 + 16), key);
  if (UniformLocationOfSymbolNamed != -1)
  {
    v8 = UniformLocationOfSymbolNamed;
    if (v6 && (ValueForKey = C3DEntityGetValueForKey(v6, key)) != 0)
    {
      v10 = ValueForKey;
      v11 = CFGetTypeID(ValueForKey);
      TypeID = C3DEffectSlotGetTypeID(v11, v12);
      if (v11 == TypeID)
      {
        if (C3DKeyframeControllerHasInterpolationModesPerKey(v10))
        {
          v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"u_%@TextureMatrix", key);
          v16 = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(*(a3 + 16), v15);
          CFRelease(v15);
        }

        else
        {
          v16 = -1;
        }

        if (C3DRendererContextBindEffectSlot(*a3, *(a3 + 8), v10, v8, *(a3 + 40) + *(a3 + 32), v16))
        {
          goto LABEL_17;
        }
      }

      else if (C3DValueGetTypeID(TypeID, v14) == v11)
      {
        v23 = *a3;

        C3DRendererContextSetValueUniformAtLocation(v23, v8, v10, a2, 1);
      }
    }

    else if (a2 == 5)
    {
      Default = C3DImageGetDefault();
      v19 = C3DTextureSamplerGetDefault(Default, v18);
      ImageResident = C3DResourceManagerMakeImageResident(*(a3 + 8), Default, v19, *a3);
      if (v19)
      {
        if (ImageResident)
        {
          v21 = *(a3 + 32);
          v22 = *(a3 + 40);
          C3DRendererContextBindTexture(*a3, ImageResident, v19, 0, v22 + v21);
          C3DRendererContextSetIntUniformAtLocation(*a3, v8, v22 + v21);
LABEL_17:
          ++*(a3 + 40);
        }
      }
    }
  }
}

uint64_t SCNObjCEncodedTypeToC3DBaseType(char *__s1)
{
  v2 = *__s1;
  if (v2 <= 0x62)
  {
    if (*__s1 <= 0x48u)
    {
      if (v2 == 66)
      {
        if (!__s1[1])
        {
          return 3;
        }

        goto LABEL_27;
      }

      if (v2 == 67)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }

    if (v2 != 73 && v2 != 81)
    {
      if (v2 == 83)
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }

LABEL_18:
    if (!__s1[1])
    {
      return 2;
    }

    goto LABEL_27;
  }

  if (*__s1 <= 0x68u)
  {
    if (v2 != 99)
    {
      if (v2 == 100)
      {
        if (!__s1[1])
        {
          return 6;
        }
      }

      else if (v2 == 102 && !__s1[1])
      {
        return 1;
      }

      goto LABEL_27;
    }

LABEL_22:
    if (!__s1[1])
    {
      return 4;
    }

    goto LABEL_27;
  }

  if (v2 == 105 || v2 == 113)
  {
    goto LABEL_18;
  }

  if (v2 == 115)
  {
LABEL_16:
    if (!__s1[1])
    {
      return 14;
    }
  }

LABEL_27:
  if (!strcmp(__s1, "{SCNMatrix4=ffffffffffffffff}") || !strcmp(__s1, "{CATransform3D=dddddddddddddddd}"))
  {
    return 11;
  }

  if (!strcmp(__s1, "{CGPoint=dd}"))
  {
    return 8;
  }

  if (!strcmp(__s1, "{SCNVector4=ffff}") || !strcmp(__s1, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    return 10;
  }

  if (!strcmp(__s1, "{SCNVector3=fff}"))
  {
    return 9;
  }

  if (!strcmp(__s1, "{_SCNVector4=dddd}"))
  {
    return 10;
  }

  if (!strcmp(__s1, "{_SCNVector3=ddd}"))
  {
    return 9;
  }

  if (v2 == 64)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

const void *SCNCopyValueFromObjCValue(void *a1)
{
  v2 = SCNObjCEncodedTypeToC3DBaseType([a1 objCType]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = C3DValueCreate(v2, 1);
  Bytes = C3DValueGetBytes(v4, v5);
  v7 = SCNWriteValueToTypedBytes(a1, Bytes, v3);
  if ((v7 & 1) == 0)
  {
    v9 = scn_default_log(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      SCNCopyValueFromObjCValue_cold_1(a1, v9);
    }

    CFRelease(v4);
    return 0;
  }

  return v4;
}

uint64_t SCNWriteValueToTypedBytes(void *a1, uint64_t a2, int a3)
{
  result = 0;
  switch(a3)
  {
    case 1:
    case 7:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }
      }

      [a1 floatValue];
      *a2 = v6;
      return 1;
    case 2:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }
      }

      *a2 = [a1 intValue];
      return 1;
    case 3:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }
      }

      v18 = [a1 BOOLValue];
      goto LABEL_35;
    case 4:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      v18 = [a1 charValue];
      goto LABEL_35;
    case 5:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      v13 = [a1 pointerValue];
      goto LABEL_39;
    case 6:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }
      }

      [a1 doubleValue];
      *a2 = v17;
      return 1;
    case 8:
    case 18:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = 0uLL;
        CFStringScanCGFloats(a1, &v20, 2u);
        goto LABEL_26;
      }

      [a1 CGPointValue];
      *&v11 = v11;
      *&v12 = v12;
      *a2 = LODWORD(v11);
      *(a2 + 4) = LODWORD(v12);
      return 1;
    case 9:
    case 19:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = 0uLL;
        CFStringScanFloats(a1, &v20, 3u);
        *a2 = v20;
        *(a2 + 8) = DWORD2(v20);
      }

      else
      {
        [a1 SCNVector3Value];
        *a2 = v14;
        *(a2 + 4) = v15;
        *(a2 + 8) = v16;
      }

      return 1;
    case 10:
    case 20:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_25;
      }

      [a1 SCNVector4Value];
      DWORD1(v10) = v7;
      *(&v10 + 1) = __PAIR64__(v9, v8);
      goto LABEL_27;
    case 11:
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      if (a1)
      {
        objc_msgSend_SCNMatrix4Value(a1, v20, v21, v22, v23);
      }

      C3DMatrix4x4FromSCNMatrix4(a2, &v20);
      return 1;
    case 13:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_25:
        v20 = 0uLL;
        CFStringScanFloats(a1, &v20, 4u);
LABEL_26:
        v10 = v20;
LABEL_27:
        *a2 = v10;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [a1 scn_C3DColorIgnoringColorSpace:0 success:0];
          *(a2 + 8) = v19;
LABEL_39:
          *a2 = v13;
        }
      }

      return 1;
    case 16:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      v18 = [a1 unsignedCharValue];
LABEL_35:
      *a2 = v18;
      return 1;
    default:
      return result;
  }
}

void *SCNNSValueFromTypedBytes(float32x2_t *a1, int a2, double a3, double a4, double a5, double a6)
{
  result = 0;
  switch(a2)
  {
    case 1:
    case 7:
      v10 = MEMORY[0x277CCABB0];
      LODWORD(a3) = a1->i32[0];

      result = [v10 numberWithFloat:{a3, a4, a5, a6}];
      break;
    case 2:
      v20 = MEMORY[0x277CCABB0];
      v21 = a1->i32[0];

      result = [v20 numberWithInteger:{v21, a3, a4, a5, a6}];
      break;
    case 3:
      v18 = MEMORY[0x277CCABB0];
      v19 = a1->u8[0];

      result = [v18 numberWithBool:{v19, a3, a4, a5, a6}];
      break;
    case 4:
      v11 = MEMORY[0x277CCABB0];
      v12 = a1->i8[0];

      result = [v11 numberWithChar:{v12, a3, a4, a5, a6}];
      break;
    case 5:
      v15 = MEMORY[0x277CCAE60];
      v16 = *a1;

      result = [v15 valueWithPointer:{*&v16, a3, a4, a5, a6}];
      break;
    case 6:
      v22 = MEMORY[0x277CCABB0];
      v23 = *a1;

      result = [v22 numberWithDouble:{v23, a4, a5, a6}];
      break;
    case 8:
      v24 = vcvtq_f64_f32(*a1);
      v25 = MEMORY[0x277CCAE60];

      result = [v25 valueWithCGPoint:{*&v24, a5, a6}];
      break;
    case 9:
      v28 = *a1->f32;
      LODWORD(a4) = HIDWORD(*a1);
      LODWORD(a5) = a1[1];
      v29 = MEMORY[0x277CCAE60];

      result = [v29 valueWithSCNVector3:{*&v28, a4, a5, a6}];
      break;
    case 10:
      v26 = *a1->f32;
      LODWORD(a4) = HIDWORD(*a1);
      LODWORD(a5) = a1[1];
      LODWORD(a6) = HIDWORD(*a1->f32);
      v27 = MEMORY[0x277CCAE60];

      result = [v27 valueWithSCNVector4:{*&v26, a4, a5, a6}];
      break;
    case 11:
      v35 = v6;
      v36 = v7;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      C3DMatrix4x4ToSCNMatrix4(a1, &v31);
      v30[0] = v31;
      v30[1] = v32;
      v30[2] = v33;
      v30[3] = v34;
      result = [MEMORY[0x277CCAE60] valueWithSCNMatrix4:v30];
      break;
    case 13:
      v17 = MEMORY[0x277D75348];

      result = [v17 scn_colorWithC3DColor:{a1, a3, a4, a5, a6}];
      break;
    case 16:
      v13 = MEMORY[0x277CCABB0];
      v14 = a1->u8[0];

      result = [v13 numberWithUnsignedChar:{v14, a3, a4, a5, a6}];
      break;
    default:
      return result;
  }

  return result;
}

void *SCNDefaultValueWithBaseType(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v20 = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 1:
    case 7:
    case 15:
      v8 = MEMORY[0x277CCABB0];

      result = [v8 numberWithFloat:{0.0, a4, a5, a6}];
      break;
    case 2:
      v15 = MEMORY[0x277CCABB0];

      result = [v15 numberWithInteger:{0, a3, a4, a5, a6}];
      break;
    case 3:
      v14 = MEMORY[0x277CCABB0];

      result = [v14 numberWithBool:{0, a3, a4, a5, a6}];
      break;
    case 4:
    case 16:
    case 21:
    case 22:
      v6 = MEMORY[0x277CCABB0];

      result = [v6 numberWithUnsignedChar:{0, a3, a4, a5, a6}];
      break;
    case 5:
      v13 = MEMORY[0x277CCABB0];

      result = [v13 numberWithUnsignedLong:{0, a3, a4, a5, a6}];
      break;
    case 6:
      v16 = MEMORY[0x277CCABB0];

      result = [v16 numberWithDouble:{0.0, a4, a5, a6}];
      break;
    case 8:
    case 18:
      v10 = MEMORY[0x277CCAE60];

      result = [v10 valueWithCGPoint:{0.0, 0.0, a5, a6}];
      break;
    case 9:
    case 19:
      v11 = MEMORY[0x277CCAE60];
      LODWORD(a3) = 0;
      LODWORD(a4) = 0;
      LODWORD(a5) = 0;

      result = [v11 valueWithSCNVector3:{a3, a4, a5, a6}];
      break;
    case 10:
    case 13:
    case 20:
      v9 = MEMORY[0x277CCAE60];
      LODWORD(a3) = 0;
      LODWORD(a4) = 0;
      LODWORD(a5) = 0;
      LODWORD(a6) = 0;

      result = [v9 valueWithSCNVector4:{a3, a4, a5, a6}];
      break;
    case 11:
    case 12:
      v19 = SCNMatrix4Identity;
      result = [MEMORY[0x277CCAE60] valueWithSCNMatrix4:&v19];
      break;
    case 14:
    case 17:
      v12 = MEMORY[0x277CCABB0];

      result = [v12 numberWithUnsignedShort:{0, a3, a4, a5, a6}];
      break;
    default:
      v17 = *&a1;
      v18 = scn_default_log(a1, a2);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19.m11 = 1.5047e-36;
        v19.m12 = v17;
        _os_log_impl(&dword_21BEF7000, v18, OS_LOG_TYPE_DEFAULT, "Warning: SCNDefaultValueWithBaseType - unknwon base type %d", &v19, 8u);
      }

      result = 0;
      break;
  }

  return result;
}

objc_property *SCNBaseTypeOfObjCProperty(objc_class *a1, void *a2)
{
  result = class_getProperty(a1, [a2 UTF8String]);
  if (result)
  {
    v3 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8] stringWithUTF8String:{property_getAttributes(result)), "componentsSeparatedByString:", @", "), "objectAtIndex:", 0), "substringFromIndex:", 1), "UTF8String"}];

    return SCNObjCEncodedTypeToC3DBaseType(v3);
  }

  return result;
}

const void *SCNCopyValueFromObjCProperty(void *a1, void *a2)
{
  v4 = objc_opt_class();
  v5 = SCNBaseTypeOfObjCProperty(v4, a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [a1 valueForKey:a2];
  if (v7)
  {
    v8 = v7;
    v9 = C3DValueCreate(v6, 1);
    Bytes = C3DValueGetBytes(v9, v10);
    v12 = SCNWriteValueToTypedBytes(v8, Bytes, v6);
    if (v12)
    {
      return v9;
    }

    v14 = scn_default_log(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      SCNCopyValueFromObjCProperty_cold_1(a2, a1, v14);
    }

    CFRelease(v9);
    return 0;
  }

  return C3DValueCreateDefault(v6);
}

uint64_t SCNObject_resolveInstanceMethod(objc_class *a1, SEL aSelector)
{
  v4 = NSStringFromSelector(aSelector);
  v5 = [(NSString *)v4 hasPrefix:@"set"];
  if (!v5)
  {
    result = [(NSString *)v4 length];
    if (!result)
    {
      return result;
    }

    outCount = 0;
    v14 = class_copyMethodList(a1, &outCount);
    if (v14)
    {
      v15 = v14;
      v16 = [[(NSString *)v4 substringWithRange:0 capitalizedString];
      if ([(NSString *)v4 length]< 2)
      {
        v17 = &stru_282DCC058;
      }

      else
      {
        v17 = [(NSString *)v4 substringFromIndex:1];
      }

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"is%@%@", v16, v17];
      if (outCount)
      {
        v19 = v18;
        v20 = 0;
        while (1)
        {
          Name = method_getName(v15[v20]);
          NSStringFromSelector(Name);
          if (objc_msgSend_isEqualToString_(v19))
          {
            break;
          }

          if (++v20 >= outCount)
          {
            goto LABEL_13;
          }
        }

        free(v15);
        return 1;
      }

LABEL_13:
      free(v15);
    }

    result = SCNBaseTypeOfObjCProperty(a1, v4);
    if (!result)
    {
      return result;
    }

    v22 = result - 1;
    v9 = result;
    if (((0x27FFu >> v22) & 1) == 0)
    {
LABEL_17:
      v23 = scn_default_log(result, v8);
      result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      if (result)
      {
        SCNObject_resolveInstanceMethod_cold_1(v9, v23);
        return 0;
      }

      return result;
    }

    v13 = qword_21C2A3DC8[v22];
    v11 = off_282DC7D08[v22];
LABEL_30:
    class_addMethod(a1, aSelector, v11, (&method_encodings[2 * v13])[!v5]);
    return 1;
  }

  v6 = propertyNameForSetter(v4);
  v7 = SCNBaseTypeOfObjCProperty(a1, v6);
  v9 = v7;
  v10 = v7;
  v11 = SCNFloat_setter;
  result = 0;
  v13 = v9;
  switch(v10)
  {
    case 0u:
      return result;
    case 1u:
      goto LABEL_30;
    case 2u:
      v11 = SCNInteger_setter;
      v13 = 2;
      goto LABEL_30;
    case 3u:
      v11 = SCNBoolean_setter;
      v13 = 3;
      goto LABEL_30;
    case 4u:
      v11 = SCNChar_setter;
      v13 = 4;
      goto LABEL_30;
    case 5u:
      v11 = SCNPointer_setter;
      v13 = 5;
      goto LABEL_30;
    case 6u:
      v11 = SCNDouble_setter;
      v13 = 6;
      goto LABEL_30;
    case 7u:
      v11 = SCNC3DFloat_setter;
      v13 = 7;
      goto LABEL_30;
    case 8u:
      v11 = SCNVector2_setter;
      v13 = 8;
      goto LABEL_30;
    case 9u:
      v11 = SCNVector3_setter;
      v13 = 9;
      goto LABEL_30;
    case 0xAu:
      v11 = SCNVector4_setter;
      v13 = 10;
      goto LABEL_30;
    case 0xBu:
      v11 = SCNMatrix4x4_setter;
      v13 = 11;
      goto LABEL_30;
    case 0xEu:
      v11 = SCNShort_setter;
      v13 = 14;
      goto LABEL_30;
    default:
      goto LABEL_17;
  }

  return result;
}

uint64_t propertyNameForSetter(void *a1)
{
  v1 = [a1 UTF8String];
  v2 = strlen(v1);
  v3 = malloc_type_malloc(v2 - 3, 0x100004077774924uLL);
  v2 -= 4;
  memcpy(v3, v1 + 3, v2);
  *v3 = __tolower(*v3);
  v3[v2] = 0;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  free(v3);
  return v4;
}

uint64_t SCNFloat_setter(void *a1, SEL aSelector, float a3)
{
  v5 = NSStringFromSelector(aSelector);
  v6 = propertyNameForSetter(v5);
  *&v7 = a3;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];

  return [a1 setValue:v8 forUndefinedKey:v6];
}

uint64_t SCNInteger_setter(void *a1, SEL aSelector, uint64_t a3)
{
  v5 = NSStringFromSelector(aSelector);
  v6 = propertyNameForSetter(v5);
  v7 = [MEMORY[0x277CCABB0] numberWithInt:a3];

  return [a1 setValue:v7 forUndefinedKey:v6];
}

uint64_t SCNBoolean_setter(void *a1, SEL aSelector, uint64_t a3)
{
  v5 = NSStringFromSelector(aSelector);
  v6 = propertyNameForSetter(v5);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a3];

  return [a1 setValue:v7 forUndefinedKey:v6];
}

uint64_t SCNChar_setter(void *a1, SEL aSelector, uint64_t a3)
{
  v5 = NSStringFromSelector(aSelector);
  v6 = propertyNameForSetter(v5);
  v7 = [MEMORY[0x277CCABB0] numberWithChar:a3];

  return [a1 setValue:v7 forUndefinedKey:v6];
}

uint64_t SCNDouble_setter(void *a1, SEL aSelector, double a3)
{
  v5 = NSStringFromSelector(aSelector);
  v6 = propertyNameForSetter(v5);
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a3];

  return [a1 setValue:v7 forUndefinedKey:v6];
}

uint64_t SCNC3DFloat_setter(void *a1, SEL aSelector, float a3)
{
  v5 = NSStringFromSelector(aSelector);
  v6 = propertyNameForSetter(v5);
  *&v7 = a3;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];

  return [a1 setValue:v8 forUndefinedKey:v6];
}

uint64_t SCNVector2_setter(void *a1, SEL aSelector, double a3, double a4)
{
  v7 = NSStringFromSelector(aSelector);
  v8 = propertyNameForSetter(v7);
  v9 = [MEMORY[0x277CCAE60] valueWithCGPoint:{a3, a4}];

  return [a1 setValue:v9 forUndefinedKey:v8];
}

uint64_t SCNVector3_setter(void *a1, SEL aSelector, float a3, float a4, float a5)
{
  v9 = NSStringFromSelector(aSelector);
  v10 = propertyNameForSetter(v9);
  *&v11 = a3;
  *&v12 = a4;
  *&v13 = a5;
  v14 = [MEMORY[0x277CCAE60] valueWithSCNVector3:{v11, v12, v13}];

  return [a1 setValue:v14 forUndefinedKey:v10];
}

uint64_t SCNVector4_setter(void *a1, SEL aSelector, float a3, float a4, float a5, float a6)
{
  v11 = NSStringFromSelector(aSelector);
  v12 = propertyNameForSetter(v11);
  *&v13 = a3;
  *&v14 = a4;
  *&v15 = a5;
  *&v16 = a6;
  v17 = [MEMORY[0x277CCAE60] valueWithSCNVector4:{v13, v14, v15, v16}];

  return [a1 setValue:v17 forUndefinedKey:v12];
}

uint64_t SCNMatrix4x4_setter(void *a1, SEL aSelector, _OWORD *a3)
{
  v5 = NSStringFromSelector(aSelector);
  v6 = propertyNameForSetter(v5);
  v7 = a3[1];
  v10[0] = *a3;
  v10[1] = v7;
  v8 = a3[3];
  v10[2] = a3[2];
  v10[3] = v8;
  return [a1 setValue:objc_msgSend(MEMORY[0x277CCAE60] forUndefinedKey:{"valueWithSCNMatrix4:", v10), v6}];
}

uint64_t SCNShort_setter(void *a1, SEL aSelector, uint64_t a3)
{
  v5 = NSStringFromSelector(aSelector);
  v6 = propertyNameForSetter(v5);
  v7 = [MEMORY[0x277CCABB0] numberWithShort:a3];

  return [a1 setValue:v7 forUndefinedKey:v6];
}

uint64_t SCNPointer_setter(void *a1, SEL aSelector, uint64_t a3)
{
  v5 = NSStringFromSelector(aSelector);
  v6 = propertyNameForSetter(v5);

  return [a1 setValue:a3 forUndefinedKey:v6];
}

uint64_t SCNFloat_getter(void *a1, SEL aSelector)
{
  v2 = [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return [v2 floatValue];
}

uint64_t SCNInteger_getter(void *a1, SEL aSelector)
{
  v2 = [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return [v2 intValue];
}

uint64_t SCNBoolean_getter(void *a1, SEL aSelector)
{
  v2 = [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return [v2 BOOLValue];
}

uint64_t SCNChar_getter(void *a1, SEL aSelector)
{
  v2 = [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return [v2 charValue];
}

uint64_t SCNDouble_getter(void *a1, SEL aSelector)
{
  v2 = [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return [v2 doubleValue];
}

uint64_t SCNC3DFloat_getter(void *a1, SEL aSelector)
{
  v2 = [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return [v2 floatValue];
}

uint64_t SCNVector2_getter(void *a1, SEL aSelector)
{
  v2 = [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return [v2 CGPointValue];
}

uint64_t SCNVector3_getter(void *a1, SEL aSelector)
{
  v2 = [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return [v2 SCNVector3Value];
}

uint64_t SCNVector4_getter(void *a1, SEL aSelector)
{
  v2 = [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return [v2 SCNVector4Value];
}

double SCNMatrix4x4_getter@<D0>(SEL aSelector@<X1>, void *a2@<X0>, _OWORD *a3@<X8>)
{
  v4 = [a2 valueForUndefinedKey:NSStringFromSelector(aSelector)];
  if (v4)
  {

    objc_msgSend_SCNMatrix4Value(v4);
  }

  else
  {
    result = 0.0;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t SCNShort_getter(void *a1, SEL aSelector)
{
  v2 = [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return [v2 shortValue];
}

uint64_t SCNPointer_getter(void *a1, SEL aSelector)
{
  [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return objc_opt_self();
}

void C3DShaderSourceParserParseSource(CFStringRef theString, uint64_t a2, int a3)
{
  v5 = *MEMORY[0x277CBECE8];
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x277CBECE8], theString, @"\n");
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  Mutable = CFStringCreateMutable(v5, 0);
  *(a2 + 72) = 0;
  if (Count < 1)
  {
    goto LABEL_46;
  }

  v9 = 0;
  v10 = 4;
  do
  {
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v9);
      if (C3DSourceCodeHasPrefix(ValueAtIndex, @"//"))
      {
        goto LABEL_13;
      }

      if (a3)
      {
        if (!C3DSourceCodeHasPrefix(ValueAtIndex, @"uniform"))
        {
          goto LABEL_13;
        }

        v12 = ValueAtIndex;
        v13 = a2;
        v14 = 1;
        goto LABEL_7;
      }

      if (C3DSourceCodeHasPrefix(ValueAtIndex, @"#pragma opaque"))
      {
        v15 = *(a2 + 72) | 1;
LABEL_12:
        *(a2 + 72) = v15;
        goto LABEL_13;
      }

      if (C3DSourceCodeHasPrefix(ValueAtIndex, @"#pragma transparent"))
      {
        v15 = *(a2 + 72) | 2;
        goto LABEL_12;
      }

      if (C3DSourceCodeHasPrefix(ValueAtIndex, @"uniform"))
      {
        v12 = ValueAtIndex;
        v13 = a2;
        v14 = 0;
LABEL_7:
        __analyseUniformDeclaration(v12, v13, v14);
        goto LABEL_13;
      }

      if (C3DSourceCodeHasPrefix(ValueAtIndex, @"#pragma declaration"))
      {
        v10 = 0;
        goto LABEL_13;
      }

      if (C3DSourceCodeHasPrefix(ValueAtIndex, @"#pragma arguments"))
      {
        if (v10 == 4 && CFStringGetLength(Mutable))
        {
          CFStringAppend(*a2, Mutable);
          CFStringReplaceAll(Mutable, &stru_282DCC058);
        }

        goto LABEL_23;
      }

      if (C3DSourceCodeHasPrefix(ValueAtIndex, @"#pragma varyings"))
      {
        if (v10 == 4 && CFStringGetLength(Mutable))
        {
          CFStringAppend(*a2, Mutable);
          CFStringReplaceAll(Mutable, &stru_282DCC058);
        }

        v10 = 2;
        goto LABEL_13;
      }

      if (C3DSourceCodeHasPrefix(ValueAtIndex, @"#pragma body"))
      {
        break;
      }

      if (v10 <= 1)
      {
        if (v10)
        {
          __analyseArgumentDeclaration(ValueAtIndex, a2);
LABEL_23:
          v10 = 1;
          goto LABEL_13;
        }

        __analyseStandardUniformUsage(ValueAtIndex, a2);
        CFStringAppend(*a2, ValueAtIndex);
        v16 = *a2;
        goto LABEL_40;
      }

      if (v10 == 2)
      {
        __analyseVaryingDeclaration(ValueAtIndex, a2);
        goto LABEL_13;
      }

      if (v10 == 3)
      {
        __analyseStandardUniformUsage(ValueAtIndex, a2);
        CFStringAppend(*(a2 + 8), ValueAtIndex);
        v16 = *(a2 + 8);
LABEL_40:
        CFStringAppend(v16, @"\n");
        goto LABEL_13;
      }

      __analyseStandardUniformUsage(ValueAtIndex, a2);
      CFStringAppend(Mutable, ValueAtIndex);
      CFStringAppend(Mutable, @"\n");
      ++v9;
      v10 = 4;
      if (v9 == Count)
      {
        goto LABEL_46;
      }
    }

    if (v10 == 4 && CFStringGetLength(Mutable))
    {
      CFStringAppend(*a2, Mutable);
      CFStringReplaceAll(Mutable, &stru_282DCC058);
    }

    v10 = 3;
LABEL_13:
    ++v9;
  }

  while (v9 != Count);
  if (v10 == 4)
  {
LABEL_46:
    if (CFStringGetLength(Mutable))
    {
      CFStringAppend(*(a2 + 8), Mutable);
      CFStringReplaceAll(Mutable, &stru_282DCC058);
    }
  }

  CFRelease(Mutable);

  CFRelease(ArrayBySeparatingStrings);
}

void __analyseUniformDeclaration(const __CFString *a1, uint64_t a2, char a3)
{
  memset(v29, 0, 240);
  Length = CFStringGetLength(a1);
  C3DStringTokenizerInit(v29, a1, 0, Length, 1);
  C3DStringTokenizerAdvanceToNextToken(v29);
  if (C3DStringTokenizerIsCurrentIsTokenWhiteSpaceOnly(v29))
  {
    C3DStringTokenizerAdvanceToNextToken(v29);
  }

  v30.location = C3DStringTokenizerGetCurrentTokenRange(v29);
  v30.length = v6;
  v7 = CFStringCompareWithOptions(a1, @"uniform", v30, 0);
  if (v7)
  {
    v9 = scn_default_log(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __analyseUniformDeclaration_cold_1(a1, v9);
    }

    return;
  }

  if ((a3 & 1) == 0)
  {
    CFStringAppendFormat(*a2, 0, @"%@\n", a1);
  }

  if (C3DStringTokenizerAdvanceToNextToken(v29))
  {
    v26 = 0;
    alloc = *MEMORY[0x277CBECE8];
    while (1)
    {
      v10 = v26;
      if (v26)
      {
        goto LABEL_51;
      }

      if (C3DStringTokenizerIsCurrentIsTokenWhiteSpaceOnly(v29))
      {
        C3DStringTokenizerAdvanceToNextToken(v29);
      }

      v31.location = C3DStringTokenizerGetCurrentTokenRange(v29);
      v31.length = v11;
      v12 = CFStringCreateWithSubstring(alloc, a1, v31);
      v13 = v12;
      v14 = *(a2 + 76) ? C3DBaseTypeFromGLSLString(v12) : C3DBaseTypeFromMetalString(v12);
      v10 = v14;
      CFRelease(v13);
      C3DStringTokenizerAdvanceToNextToken(v29);
      if (v10)
      {
LABEL_51:
        if (C3DStringTokenizerIsCurrentIsTokenWhiteSpaceOnly(v29))
        {
          C3DStringTokenizerAdvanceToNextToken(v29);
        }

        v32.location = C3DStringTokenizerGetCurrentTokenRange(v29);
        v32.length = v15;
        v16 = CFStringCreateWithSubstring(alloc, a1, v32);
        CFDictionarySetValue(*(a2 + 24), v16, v10);
        CFRelease(v16);
      }

      if (C3DStringTokenizerAdvanceToNextToken(v29))
      {
        break;
      }

LABEL_46:
      if ((C3DStringTokenizerAdvanceToNextToken(v29) & 1) == 0)
      {
        return;
      }
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      CurrentTokenRange = C3DStringTokenizerGetCurrentTokenRange(v29);
      v23 = v21;
      if (v19)
      {
        v33.location = CurrentTokenRange;
        v33.length = v21;
        if (CFStringCompareWithOptions(a1, @"/", v33, 0) == kCFCompareEqualTo)
        {
          v24 = 0;
          v18 = !v17;
          goto LABEL_39;
        }

        v34.location = CurrentTokenRange;
        v34.length = v23;
        v24 = 0;
        v17 = CFStringCompareWithOptions(a1, @"*", v34, 0) == kCFCompareEqualTo;
        v18 = 1;
      }

      else
      {
        v35.location = CurrentTokenRange;
        v35.length = v21;
        if (CFStringCompareWithOptions(a1, @";", v35, 0) == kCFCompareEqualTo)
        {
          C3DStringTokenizerAdvanceToNextToken(v29);
          if (C3DStringTokenizerIsCurrentIsTokenWhiteSpaceOnly(v29))
          {
            C3DStringTokenizerAdvanceToNextToken(v29);
          }

          v41.location = C3DStringTokenizerGetCurrentTokenRange(v29);
          v41.length = v25;
          if (CFStringCompareWithOptions(a1, @"uniform", v41, 0) == kCFCompareEqualTo)
          {
            v26 = 0;
            goto LABEL_46;
          }

          return;
        }

        v36.location = CurrentTokenRange;
        v36.length = v23;
        if (CFStringCompareWithOptions(a1, @"/", v36, 0) == kCFCompareEqualTo)
        {
          if (v18)
          {
            return;
          }

          v18 = 0;
          v17 = 0;
          v24 = 1;
          goto LABEL_40;
        }

        v37.location = CurrentTokenRange;
        v37.length = v23;
        if (CFStringCompareWithOptions(a1, @"*", v37, 0))
        {
          v38.location = CurrentTokenRange;
          v38.length = v23;
          if (CFStringCompareWithOptions(a1, @"("), v38, 0)
          {
            v39.location = CurrentTokenRange;
            v39.length = v23;
            if (CFStringCompareWithOptions(a1, @""), v39, 0) == kCFCompareEqualTo)
            {
              v20 = 0;
LABEL_38:
              v18 = 0;
              v24 = 0;
LABEL_39:
              v17 = 0;
              goto LABEL_40;
            }

            v40.location = CurrentTokenRange;
            v40.length = v23;
            if (CFStringCompareWithOptions(a1, @",", v40, 0))
            {
              goto LABEL_38;
            }

            if ((v20 & 1) == 0)
            {
              v26 = v10;
              goto LABEL_46;
            }
          }

          v18 = 0;
          v24 = 0;
          v17 = 0;
          v20 = 1;
        }

        else
        {
          v24 = 0;
          v17 = 1;
        }
      }

LABEL_40:
      v19 = v18;
      v18 = v24;
      if ((C3DStringTokenizerAdvanceToNextToken(v29) & 1) == 0)
      {
        goto LABEL_46;
      }
    }
  }
}

uint64_t __analyseStandardUniformUsage(const __CFString *a1, uint64_t a2)
{
  memset(v20, 0, 240);
  Length = CFStringGetLength(a1);
  v5 = C3DStringTokenizerInit(v20, a1, 0, Length, 1);
  StandardUniforms = C3DShaderGetStandardUniforms(v5, v6);
  result = C3DStringTokenizerAdvanceToNextToken(v20);
  if (result)
  {
    v9 = 0;
    v10 = *MEMORY[0x277CBECE8];
    while (1)
    {
      if (C3DStringTokenizerIsCurrentIsTokenWhiteSpaceOnly(v20))
      {
        C3DStringTokenizerAdvanceToNextToken(v20);
      }

      CurrentTokenRange = C3DStringTokenizerGetCurrentTokenRange(v20);
      v13 = v12;
      v21.location = CurrentTokenRange;
      v21.length = v12;
      result = CFStringCompareWithOptions(a1, @"/", v21, 0);
      v14 = result == 0;
      if (!result)
      {
        if (v9)
        {
          return result;
        }

        goto LABEL_14;
      }

      v22.location = CurrentTokenRange;
      v22.length = v13;
      if (CFStringCompareWithOptions(a1, @"scn_node", v22, 0))
      {
        v23.location = CurrentTokenRange;
        v23.length = v13;
        if (CFStringCompareWithOptions(a1, @"scn_frame", v23, 0))
        {
          goto LABEL_10;
        }
      }

      C3DStringTokenizerAdvanceToNextToken(v20);
      v24.location = C3DStringTokenizerGetCurrentTokenRange(v20);
      v16 = v15;
      v24.length = v15;
      if (CFStringCompareWithOptions(a1, @".", v24, 0) == kCFCompareEqualTo)
      {
        break;
      }

LABEL_14:
      result = C3DStringTokenizerAdvanceToNextToken(v20);
      v9 = v14;
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    C3DStringTokenizerAdvanceToNextToken(v20);
    C3DStringTokenizerGetCurrentTokenRange(v20);
    v13 += v16 + v17;
LABEL_10:
    v25.location = CurrentTokenRange;
    v25.length = v13;
    v18 = CFStringCreateWithSubstring(v10, a1, v25);
    Value = CFDictionaryGetValue(StandardUniforms, v18);
    if (Value)
    {
      CFDictionarySetValue(*(a2 + 64), v18, *Value);
    }

    CFRelease(v18);
    goto LABEL_14;
  }

  return result;
}

void __analyseArgumentDeclaration(const __CFString *a1, uint64_t a2)
{
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  Length = CFStringGetLength(a1);
  C3DStringTokenizerInit(&v29, a1, 0, Length, 1);
  _C3DStringTokenizerAdvanceToNextToken(&v29, 1);
  if (C3DStringTokenizerIsCurrentIsTokenWhiteSpaceOnly(&v29))
  {
    _C3DStringTokenizerAdvanceToNextToken(&v29, 1);
  }

  v44.location = C3DStringTokenizerGetCurrentTokenRange(&v29);
  v44.length = v5;
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], a1, v44);
  _C3DStringTokenizerAdvanceToNextToken(&v29, 1);
  v45.location = C3DStringTokenizerGetCurrentTokenRange(&v29);
  v45.length = v8;
  if (CFStringCompareWithOptions(a1, @"<", v45, 0))
  {
    MutableCopy = v7;
  }

  else
  {
    MutableCopy = CFStringCreateMutableCopy(v6, 0, v7);
    do
    {
      CurrentTokenRange = C3DStringTokenizerGetCurrentTokenRange(&v29);
      v12 = v11;
      v46.location = CurrentTokenRange;
      v46.length = v11;
      v13 = CFStringCreateWithSubstring(v6, a1, v46);
      CFStringAppend(MutableCopy, v13);
      CFRelease(v13);
      v47.location = CurrentTokenRange;
      v47.length = v12;
      v14 = CFStringCompareWithOptions(a1, @">", v47, 0);
      Token = _C3DStringTokenizerAdvanceToNextToken(&v29, 1);
    }

    while (v14 && (Token & 1) != 0);
    CFRelease(v7);
  }

  if (C3DStringTokenizerIsCurrentIsTokenWhiteSpaceOnly(&v29))
  {
    _C3DStringTokenizerAdvanceToNextToken(&v29, 1);
  }

  v16 = C3DStringTokenizerGetCurrentTokenRange(&v29);
  v18 = v17;
  v48.location = v16;
  v48.length = v17;
  v19 = CFStringCreateWithSubstring(v6, a1, v48);
  if (CFStringGetLength(MutableCopy) >= 1)
  {
    v20 = *(a2 + 76) == 1 ? C3DBaseTypeFromGLSLString(MutableCopy) : C3DBaseTypeFromMetalString(MutableCopy);
    v21 = v20;
    if (v20)
    {
      v22 = v16 + v18;
      v23 = CFStringGetLength(a1);
      if (v23 > v22)
      {
        v49.location = v22;
        v49.length = v23 - v22;
        v24 = CFStringCreateWithSubstring(v6, a1, v49);
        v25 = [(__CFString *)v24 rangeOfString:@"=", v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43];
        if (v26)
        {
          v27 = [(__CFString *)v24 substringFromIndex:v25 + 1];
          v28 = C3DValueCreate(v21, 1);
          C3DValueSetValueFromString(v28, v27);
          CFDictionaryAddValue(*(a2 + 40), v19, v28);
          CFRelease(v28);
        }

        CFRelease(v24);
      }
    }
  }

  if (CFStringGetLength(v19) >= 1 && CFStringGetLength(MutableCopy) >= 1)
  {
    CFDictionaryAddValue(*(a2 + 32), v19, MutableCopy);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void __analyseVaryingDeclaration(const __CFString *a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  Length = CFStringGetLength(a1);
  C3DStringTokenizerInit(v10, a1, 0, Length, 1);
  C3DStringTokenizerAdvanceToNextToken(v10);
  if (C3DStringTokenizerIsCurrentIsTokenWhiteSpaceOnly(v10))
  {
    C3DStringTokenizerAdvanceToNextToken(v10);
  }

  v11.location = C3DStringTokenizerGetCurrentTokenRange(v10);
  v11.length = v5;
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], a1, v11);
  C3DStringTokenizerAdvanceToNextToken(v10);
  if (C3DStringTokenizerIsCurrentIsTokenWhiteSpaceOnly(v10))
  {
    C3DStringTokenizerAdvanceToNextToken(v10);
  }

  v12.location = C3DStringTokenizerGetCurrentTokenRange(v10);
  v12.length = v8;
  v9 = CFStringCreateWithSubstring(v6, a1, v12);
  if (CFStringGetLength(v9) >= 1 && CFStringGetLength(v7) >= 1)
  {
    CFDictionaryAddValue(*(a2 + 48), v9, v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

CFMutableDictionaryRef C3DShaderSourceParserContextCreate@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  if (a1)
  {
    Mutable = 0;
    *a3 = 0;
    *(a3 + 8) = 0;
    v6 = *MEMORY[0x277CBECE8];
  }

  else
  {
    v6 = *MEMORY[0x277CBECE8];
    *a3 = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    *(a3 + 8) = CFStringCreateMutable(v6, 0);
    Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  *(a3 + 16) = Mutable;
  v7 = MEMORY[0x277CBF138];
  *(a3 + 24) = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], 0);
  v8 = MEMORY[0x277CBF150];
  *(a3 + 56) = CFDictionaryCreateMutable(v6, 0, v7, MEMORY[0x277CBF150]);
  *(a3 + 32) = CFDictionaryCreateMutable(v6, 0, v7, v8);
  *(a3 + 40) = CFDictionaryCreateMutable(v6, 0, v7, v8);
  *(a3 + 48) = CFDictionaryCreateMutable(v6, 0, v7, v8);
  result = CFDictionaryCreateMutable(v6, 0, v7, v8);
  *(a3 + 64) = result;
  *(a3 + 76) = a2;
  return result;
}

void C3DShaderSourceParserContextDestroy(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 56) = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 40) = 0;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 32) = 0;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 48) = 0;
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 64) = 0;
  }
}

void _C3DBezierCurveCFFinalize(uint64_t a1)
{
  free(*(a1 + 32));
  v2 = *(a1 + 40);

  free(v2);
}

uint64_t __C3DBezierCurveGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DBezierCurveGetTypeID_typeID = result;
  return result;
}

float32x2_t *C3DBezierCurveCreateWithCGPath(const CGPath *a1)
{
  if (C3DBezierCurveGetTypeID_onceToken != -1)
  {
    C3DBezierCurveCreateWithCGPath_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DBezierCurveGetTypeID_typeID, 48);
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __C3DBezierCurveCreateWithCGPath_block_invoke;
  block[3] = &unk_278301830;
  block[4] = &v28;
  block[5] = &v24;
  block[6] = Instance;
  CGPathApplyWithBlock(a1, block);
  v3 = *(v25 + 12);
  Instance[3].i32[1] = v3;
  Instance[4] = malloc_type_malloc(8 * v3, 0x100004000313F17uLL);
  Instance[5] = malloc_type_malloc(2 * *(v29 + 12), 0x1000040BDFB0063uLL);
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __C3DBezierCurveCreateWithCGPath_block_invoke_2;
  v20[3] = &unk_278301858;
  v20[4] = v21;
  v20[5] = Instance;
  _C3DBezierCurveEnumerateCGPathCurveSegmentsOfType(a1, 1, v20);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __C3DBezierCurveCreateWithCGPath_block_invoke_3;
  v19[3] = &unk_278301858;
  v19[4] = v21;
  v19[5] = Instance;
  _C3DBezierCurveEnumerateCGPathCurveSegmentsOfType(a1, 2, v19);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __C3DBezierCurveCreateWithCGPath_block_invoke_4;
  v18[3] = &unk_278301858;
  v18[4] = v21;
  v18[5] = Instance;
  _C3DBezierCurveEnumerateCGPathCurveSegmentsOfType(a1, 3, v18);
  BoundingBox = CGPathGetBoundingBox(a1);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  MinX = CGRectGetMinX(BoundingBox);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MinY = CGRectGetMinY(v33);
  v9.f64[0] = MinX;
  v9.f64[1] = MinY;
  Instance[6] = vcvt_f32_f64(v9);
  v10 = x;
  v9.f64[0] = y;
  v11 = width;
  v12 = height;
  MaxX = CGRectGetMaxX(*(&v9 - 8));
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  MaxY = CGRectGetMaxY(v34);
  v14.f64[0] = MaxX;
  v14.f64[1] = MaxY;
  Instance[7] = vcvt_f32_f64(v14);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  return Instance;
}

void sub_21C17BB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __C3DBezierCurveCreateWithCGPath_block_invoke(uint64_t result, int *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        return result;
      }

      ++*(*(result + 48) + 16);
      *(*(*(result + 32) + 8) + 24) += 2;
    }

    v3 = 1;
  }

  else
  {
    switch(v2)
    {
      case 2:
        ++*(*(result + 48) + 20);
        *(*(*(result + 32) + 8) + 24) += 3;
        v3 = 2;
        break;
      case 3:
        ++*(*(result + 48) + 24);
        *(*(*(result + 32) + 8) + 24) += 4;
        v3 = 3;
        break;
      case 4:
        ++*(*(result + 48) + 16);
        v3 = 2;
        v4 = 32;
        goto LABEL_13;
      default:
        return result;
    }
  }

  v4 = 40;
LABEL_13:
  *(*(*(result + v4) + 8) + 24) += v3;
  return result;
}

void _C3DBezierCurveEnumerateCGPathCurveSegmentsOfType(const CGPath *a1, int a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = -1;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = -1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = ___C3DBezierCurveEnumerateCGPathCurveSegmentsOfType_block_invoke;
  v3[3] = &unk_278301880;
  v3[6] = v8;
  v3[7] = v7;
  v3[8] = v5;
  v4 = a2;
  v3[4] = a3;
  v3[5] = v10;
  CGPathApplyWithBlock(a1, v3);
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);
}

void sub_21C17BD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Block_object_dispose((v18 - 48), 8);
  _Unwind_Resume(a1);
}

double __C3DBezierCurveCreateWithCGPath_block_invoke_2(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 32);
  v4 = *(*(a1 + 40) + 40);
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24)) = *a2;
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24) + 2) = a2[1];
  *(v3 + 8 * *a2) = *a3;
  result = *(a3 + 8);
  *(*(*(a1 + 40) + 32) + 8 * a2[1]) = result;
  *(*(*(a1 + 32) + 8) + 24) += 2;
  return result;
}

double __C3DBezierCurveCreateWithCGPath_block_invoke_3(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 32);
  v4 = *(*(a1 + 40) + 40);
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24)) = *a2;
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24) + 2) = a2[1];
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24) + 4) = a2[2];
  *(v3 + 8 * *a2) = *a3;
  *(*(*(a1 + 40) + 32) + 8 * a2[1]) = *(a3 + 8);
  result = *(a3 + 16);
  *(*(*(a1 + 40) + 32) + 8 * a2[2]) = result;
  *(*(*(a1 + 32) + 8) + 24) += 3;
  return result;
}

double __C3DBezierCurveCreateWithCGPath_block_invoke_4(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 32);
  v4 = *(*(a1 + 40) + 40);
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24)) = *a2;
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24) + 2) = a2[1];
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24) + 4) = a2[2];
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24) + 6) = a2[3];
  *(v3 + 8 * *a2) = *a3;
  *(*(*(a1 + 40) + 32) + 8 * a2[1]) = *(a3 + 8);
  *(*(*(a1 + 40) + 32) + 8 * a2[2]) = *(a3 + 16);
  result = *(a3 + 24);
  *(*(*(a1 + 40) + 32) + 8 * a2[3]) = result;
  *(*(*(a1 + 32) + 8) + 24) += 4;
  return result;
}

uint64_t C3DBezierCurveGetCurveSegmentsControlPointIndices(uint64_t a1, _WORD *a2)
{
  if (a2)
  {
    *a2 = 3 * *(a1 + 20) + 2 * *(a1 + 16) + 4 * *(a1 + 24);
  }

  return *(a1 + 40);
}

double C3DBezierCurveGetBoundingBox(uint64_t a1, void *a2, double *a3)
{
  *a2 = *(a1 + 48);
  result = *(a1 + 56);
  *a3 = result;
  return result;
}

uint64_t C3DBezierCurveCreateControlPointsPositionSource(uint64_t a1)
{
  v2 = CFDataCreate(*MEMORY[0x277CBECE8], *(a1 + 32), 8 * *(a1 + 28));
  v3 = C3DMeshSourceCreate(v2, 0, *(a1 + 28), 2, 1);
  CFRelease(v2);
  return v3;
}

uint64_t C3DConstraintLookAtGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DConstraintLookAtGetTypeID_onceToken != -1)
  {
    C3DConstraintLookAtGetTypeID_cold_1();
  }

  return C3DConstraintLookAtGetTypeID_typeID;
}

uint64_t C3DConstraintDistanceGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DConstraintDistanceGetTypeID_onceToken != -1)
  {
    C3DConstraintDistanceGetTypeID_cold_1();
  }

  return C3DConstraintDistanceGetTypeID_typeID;
}

uint64_t C3DConstraintProceduralGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DConstraintProceduralGetTypeID_onceToken != -1)
  {
    C3DConstraintProceduralGetTypeID_cold_1();
  }

  return C3DConstraintProceduralGetTypeID_typeID;
}

uint64_t C3DConstraintIKGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DConstraintIKGetTypeID_onceToken != -1)
  {
    C3DConstraintIKGetTypeID_cold_1();
  }

  return C3DConstraintIKGetTypeID_typeID;
}

uint64_t C3DConstraintAccelerationGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DConstraintAccelerationGetTypeID_onceToken != -1)
  {
    C3DConstraintAccelerationGetTypeID_cold_1();
  }

  return C3DConstraintAccelerationGetTypeID_typeID;
}

uint64_t C3DConstraintReplicatorGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DConstraintReplicatorGetTypeID_onceToken != -1)
  {
    C3DConstraintReplicatorGetTypeID_cold_1();
  }

  return C3DConstraintReplicatorGetTypeID_typeID;
}

uint64_t C3DConstraintBillboardGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DConstraintBillboardGetTypeID_onceToken != -1)
  {
    C3DConstraintBillboardGetTypeID_cold_1();
  }

  return C3DConstraintBillboardGetTypeID_typeID;
}

uint64_t C3DConstraintControllerInitializeConstraint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v6 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DConstraintControllerInitializeConstraint_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    return v14(a2, a1, a3);
  }

  else
  {
    return 1;
  }
}

uint64_t C3DConstraintApply(_BOOL8 a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v9 = a1;
  if (!a2 && (v10 = scn_default_log(a1, 0), a1 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    C3DConstraintApply_cold_1(v10, a2, v11, v12, v13, v14, v15, v16);
    if (a4)
    {
      return (*(*(a2 + 16) + 88))(v9, a2, a3, a4, a5);
    }
  }

  else if (a4)
  {
    return (*(*(a2 + 16) + 88))(v9, a2, a3, a4, a5);
  }

  v17 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_3(v17, v18, v19, v20, v21, v22, v23, v24);
  }

  return (*(*(a2 + 16) + 88))(v9, a2, a3, a4, a5);
}

uint64_t C3DConstraintGetTargetModelPath(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DConstraintControllerInitializeConstraint_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 96))(a1, a2);
}

uint64_t C3DConstraintGetName(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DConstraintControllerInitializeConstraint_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

CFStringRef C3DConstraintSetName(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    v4 = scn_default_log(0, theString);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstraintControllerInitializeConstraint_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 64);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 64) = 0;
    }

    if (theString)
    {
      result = CFStringCreateCopy(*MEMORY[0x277CBECE8], theString);
    }

    else
    {
      result = 0;
    }

    *(a1 + 64) = result;
  }

  return result;
}

uint64_t C3DContraintAppendAuthoringInfo(uint64_t result)
{
  v1 = *(result + 112);
  if (v1)
  {
    return v1();
  }

  return result;
}

void _C3DConstraintControllerCFFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
    a1[3] = 0;
  }

  v5 = a1[7];

  free(v5);
}

CFStringRef _C3DConstraintControllerCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintController>");
}

CFStringRef _C3DConstraintControllerCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintController>");
}

uint64_t __C3DConstraintControllerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DConstraintControllerGetTypeID_typeID = result;
  return result;
}

void *C3DConstraintControllerCreate(const void *a1, const void *a2, const void *a3)
{
  if (C3DConstraintControllerGetTypeID_onceToken != -1)
  {
    C3DConstraintControllerCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintControllerGetTypeID_typeID, 48);
  v7 = CFRetain(a1);
  Instance[2] = v7;
  C3DConstraintControllerInitializeConstraint(Instance, v7, a2);
  Instance[4] = CFRetain(a3);
  Instance[3] = CFRetain(a2);
  return Instance;
}

void _C3DConstraintCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }
}

void __C3DConstraintGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DConstraintGetTypeID_typeID = v0;
  TypeID = C3DEntityGetTypeID(v0, v1);
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);
  C3DModelPathResolverRegisterProperty(@"influenceFactor", 72, 1, 0);

  C3DModelPathResolverRegisterClassEnd();
}

uint64_t C3DConstraintInit(uint64_t a1)
{
  *(a1 + 72) = 1065353216;
  *(a1 + 76) = 1;
  result = C3DWasLinkedBeforeMajorOSYear2017();
  *(a1 + 77) = result ^ 1;
  return result;
}

void __C3DConstraintLookAtGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DConstraintLookAtGetTypeID_typeID = v0;
  if (C3DConstraintGetTypeID_onceToken != -1)
  {
    __C3DConstraintLookAtGetTypeID_block_invoke_cold_1();
  }

  C3DModelPathResolverRegisterClassBegin(v0, C3DConstraintGetTypeID_typeID);
  C3DModelPathResolverRegisterProperty(@"targetOffset", 176, 10, 0);
  C3DModelPathResolverRegisterProperty(@"worldUp", 160, 10, 0);
  C3DModelPathResolverRegisterProperty(@"localFront", 192, 9, 0);

  C3DModelPathResolverRegisterClassEnd();
}

uint64_t C3DConstraintCreateLookAt(const void *a1, uint64_t a2)
{
  if (C3DConstraintLookAtGetTypeID_onceToken != -1)
  {
    C3DConstraintLookAtGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintLookAtGetTypeID_typeID, 192);
  *(Instance + 72) = 1065353216;
  *(Instance + 76) = 1;
  *(Instance + 77) = C3DWasLinkedBeforeMajorOSYear2017() ^ 1;
  if (a1)
  {
    v4 = CFRetain(a1);
  }

  else
  {
    v4 = 0;
  }

  *(Instance + 136) = v4;
  *(Instance + 144) = 0;
  *(Instance + 176) = xmmword_21C27F610;
  *(Instance + 192) = xmmword_21C27F900;
  *(Instance + 160) = xmmword_21C27F8C0;
  *(Instance + 88) = C3DConstraintApplyLookAt;
  *(Instance + 96) = C3DConstraintLookAtCopyTargetPath;
  return Instance;
}

uint64_t C3DConstraintApplyLookAt(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4, float a5)
{
  if (!a2)
  {
    v8 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DConstraintApply_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = *(a2 + 16);
  result = *(v15 + 136);
  if (result)
  {
    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    if (C3DNodeGetHasPivot(result, a2))
    {
      memset(&v156, 0, sizeof(v156));
      C3DNodeGetLocalNoPivotMatrix(*(v15 + 136), v17, &v156);
      Parent = C3DNodeGetParent(*(v15 + 136), v18);
      if (Parent)
      {
        WorldMatrix = C3DNodeGetWorldMatrix(Parent, v20);
        C3DMatrix4x4Mult(WorldMatrix, &v156, &v157);
      }

      else
      {
        v157 = v156.columns[0];
        v158 = v156.columns[1];
        v159 = v156.columns[2];
        v160 = v156.columns[3];
      }
    }

    else
    {
      v22 = C3DNodeGetWorldMatrix(*(v15 + 136), v17);
      v23 = *(v22 + 48);
      v25 = *v22;
      v24 = *(v22 + 16);
      v159 = *(v22 + 32);
      v160 = v23;
      v157 = v25;
      v158 = v24;
    }

    v26 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v157, COERCE_FLOAT(*(v15 + 176))), v158, *(v15 + 176), 1), v159, *(v15 + 176), 2), v160, *(v15 + 176), 3);
    v27 = *(MEMORY[0x277D860B8] + 48);
    v155 = v27;
    v140 = v26;
    if (*(v15 + 144) == 1)
    {
      v144 = v27;
      result = C3DNodeGetParent(a3, v20);
      if (!result)
      {
        return result;
      }

      v29 = C3DNodeGetWorldMatrix(result, v28);
      memset(&v156, 0, sizeof(v156));
      C3DMatrix4x4Invert(v29, &v156);
      v151 = v156.columns[0];
      v152 = v156.columns[1];
      v153 = v156.columns[2];
      v154 = v156.columns[3];
      *v30.i64 = C3DVector3MultMatrix4x4(&v151, v140);
      v141 = v30;
      v137 = v156;
      v138 = *(v15 + 160);
      *v32.i64 = C3DNodeGetPosition(a3);
      v33 = vcgtq_f32(vdupq_n_s32(0x3727C5ACu), vabdq_f32(v141, v32));
      v33.i32[3] = v33.i32[2];
      if ((vminvq_u32(v33) & 0x80000000) != 0)
      {
        v91 = v144;
      }

      else
      {
        v34 = vsubq_f32(v141, v32);
        v35 = vmulq_f32(v34, v34);
        *&v36 = v35.f32[2] + vaddv_f32(*v35.f32);
        *v35.f32 = vrsqrte_f32(v36);
        *v35.f32 = vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32)));
        v37 = vmulq_n_f32(v34, vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32))).f32[0]);
        v38 = *(v15 + 192);
        v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), vnegq_f32(v38)), v37, vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL));
        v40 = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
        v41 = vmulq_f32(v38, v37);
        v42 = vmulq_f32(v38, v38);
        v43 = vmulq_f32(v37, v37);
        v44 = vadd_f32(vzip1_s32(*&vextq_s8(v42, v42, 8uLL), *&vextq_s8(v43, v43, 8uLL)), vadd_f32(vzip1_s32(*v42.i8, *v43.i8), vzip2_s32(*v42.i8, *v43.i8)));
        v40.f32[3] = (v41.f32[2] + vaddv_f32(*v41.f32)) + sqrtf(vmuls_lane_f32(v44.f32[0], v44, 1));
        v45 = vmulq_f32(v40, v40);
        *v45.i8 = vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL));
        v46 = vdupq_lane_s32(vadd_f32(*v45.i8, vdup_lane_s32(*v45.i8, 1)), 0);
        v47 = vrsqrteq_f32(v46);
        v48 = vmulq_f32(v47, vrsqrtsq_f32(v46, vmulq_f32(v47, v47)));
        v49 = vbslq_s8(vceqzq_f32(v46), v40, vmulq_f32(vmulq_f32(v48, vrsqrtsq_f32(v46, vmulq_f32(v48, v48))), v40));
        v50 = vuzp1q_s32(v49, v49);
        v51 = v144;
        if (v44.f32[1] > 0.000000001)
        {
          v52 = v49;
          v52.i32[3] = v49.i32[0];
          v53 = vnegq_f32(v52);
          v54 = vuzp1q_s32(v53, v53);
          v54.i32[0] = v53.i32[1];
          v55 = vextq_s8(v50, v49, 0xCuLL);
          v56 = vzip1q_s32(v53, v53);
          v56.i32[0] = v53.i32[2];
          v142 = v50;
          v53.i32[3] = v49.i32[3];
          v136 = v44.u32[1];
          v57 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v53, 3), v53, 4uLL), xmmword_21C27F8C0), xmmword_21C27FD00), 0, v53), xmmword_21C27FD00, vmulq_f32(v56, xmmword_21C27F7E0)), xmmword_21C2A22A0, v54);
          v58 = vuzp1q_s32(v57, v57);
          v58.i32[0] = v57.i32[1];
          v59 = vzip1q_s32(v57, v57);
          v59.i32[0] = v57.i32[2];
          v60 = vmlsq_f32(vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(v52, vextq_s8(vdupq_laneq_s32(v57, 3), v57, 4uLL)), xmmword_21C27FD00), v57, v49, 3), xmmword_21C27FD00, vmulq_f32(vextq_s8(vextq_s8(v49, v49, 0xCuLL), v49, 8uLL), v59)), v58, v55);
          v61 = vmulq_f32(v37, v60);
          v61.f32[0] = v61.f32[2] + vaddv_f32(*v61.f32);
          v62 = vmlsq_lane_f32(v60, v37, *v61.f32, 0);
          v63 = vmulq_f32(v62, v62);
          v63.f32[0] = v63.f32[2] + vaddv_f32(*v63.f32);
          v64 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v63.f32[0] != 0.0)), 0x1FuLL));
          v64.i32[3] = 0;
          v65 = vdupq_lane_s32(*v63.f32, 0);
          v66 = vrsqrteq_f32(v65);
          v67 = vmulq_f32(v66, vrsqrtsq_f32(v65, vmulq_f32(v66, v66)));
          v68 = vbslq_s8(vcltzq_s32(v64), vmulq_f32(v62, vmulq_f32(v67, vrsqrtsq_f32(v65, vmulq_f32(v67, v67)))), v62);
          v69 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v137.columns[0], v138.f32[0]), v137.columns[1], *v138.f32, 1), v137.columns[2], v138, 2), v137.columns[3], v138, 3);
          v70 = vmulq_f32(v69, v69);
          v59.f32[0] = v70.f32[2] + vaddv_f32(*v70.f32);
          *v70.f32 = vrsqrte_f32(v59.u32[0]);
          *v70.f32 = vmul_f32(*v70.f32, vrsqrts_f32(v59.u32[0], vmul_f32(*v70.f32, *v70.f32)));
          v71 = vmulq_n_f32(v69, vmul_f32(*v70.f32, vrsqrts_f32(v59.u32[0], vmul_f32(*v70.f32, *v70.f32))).f32[0]);
          v72 = vmulq_f32(v37, v71);
          v72.f32[0] = v72.f32[2] + vaddv_f32(*v72.f32);
          v73 = vmlsq_lane_f32(v71, v37, *v72.f32, 0);
          v74 = vmulq_f32(v73, v73);
          v74.f32[0] = v74.f32[2] + vaddv_f32(*v74.f32);
          v75 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v74.f32[0] != 0.0)), 0x1FuLL));
          v75.i32[3] = 0;
          v76 = vdupq_lane_s32(*v74.f32, 0);
          v77 = vrsqrteq_f32(v76);
          v78 = vmulq_f32(v77, vrsqrtsq_f32(v76, vmulq_f32(v77, v77)));
          v79 = vbslq_s8(vcltzq_s32(v75), vmulq_f32(vmulq_f32(v78, vrsqrtsq_f32(v76, vmulq_f32(v78, v78))), v73), v73);
          v80 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL), vnegq_f32(v68)), v79, vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL));
          v81 = vmulq_f32(v37, vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL));
          v82 = v81.f32[2] + vaddv_f32(*v81.f32);
          v83 = vmulq_f32(v68, v79);
          v84 = v83.f32[2] + vaddv_f32(*v83.f32);
          if (v84 >= 1.0)
          {
            v84 = 1.0;
          }

          if (v84 <= -1.0)
          {
            v84 = -1.0;
          }

          v139 = v37;
          v145 = v49;
          v85 = acosf(v84);
          if (v82 <= 0.0)
          {
            v85 = -v85;
          }

          v86 = __sincosf_stret(v85 * 0.5);
          v50 = v142;
          v49 = v145;
          v87 = vrsqrte_f32(v136);
          v88 = vmul_f32(v87, vrsqrts_f32(v136, vmul_f32(v87, v87)));
          v51 = vmulq_n_f32(vmulq_n_f32(v139, vmul_f32(v88, vrsqrts_f32(v136, vmul_f32(v88, v88))).f32[0]), v86.__sinval);
          v51.i32[3] = LODWORD(v86.__cosval);
        }

        v89 = v51;
        v89.i32[3] = v51.i32[0];
        v90 = vzip1q_s32(v49, v49);
        v90.i32[0] = v49.i32[2];
        v50.i32[0] = v49.i32[1];
        v155 = vmlsq_f32(vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v49, 3), v49, 4uLL), v89), xmmword_21C27FD00), v49, v51, 3), xmmword_21C27FD00, vmulq_f32(v90, vextq_s8(vextq_s8(v51, v51, 0xCuLL), v51, 8uLL))), v50, vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL));
        v91 = v155;
      }
    }

    else
    {
      v92 = C3DNodeGetWorldMatrix(a3, v20);
      memset(&v156, 0, sizeof(v156));
      C3DMatrix4x4Invert(v92, &v156);
      v151 = v156.columns[0];
      v152 = v156.columns[1];
      v153 = v156.columns[2];
      v154 = v156.columns[3];
      *v93.i64 = C3DVector3MultMatrix4x4(&v151, v140);
      v94 = vmulq_f32(v93, v93);
      *&v95 = v94.f32[2] + vaddv_f32(*v94.f32);
      *v94.f32 = vrsqrte_f32(v95);
      *v94.f32 = vmul_f32(*v94.f32, vrsqrts_f32(v95, vmul_f32(*v94.f32, *v94.f32)));
      v96 = vmulq_n_f32(v93, vmul_f32(*v94.f32, vrsqrts_f32(v95, vmul_f32(*v94.f32, *v94.f32))).f32[0]);
      v97 = *(v15 + 192);
      v98 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v96, v96), v96, 0xCuLL), vnegq_f32(v97)), v96, vextq_s8(vuzp1q_s32(v97, v97), v97, 0xCuLL));
      v99 = vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL);
      v100 = vmulq_f32(v97, v96);
      v99.f32[3] = (v100.f32[2] + vaddv_f32(*v100.f32)) + 1.0;
      v101 = vmulq_f32(v99, v99);
      *v101.i8 = vadd_f32(*v101.i8, *&vextq_s8(v101, v101, 8uLL));
      v102 = vdupq_lane_s32(vadd_f32(*v101.i8, vdup_lane_s32(*v101.i8, 1)), 0);
      v103 = vrsqrteq_f32(v102);
      v104 = vmulq_f32(v103, vrsqrtsq_f32(v102, vmulq_f32(v103, v103)));
      v146 = vbslq_s8(vceqzq_f32(v102), v99, vmulq_f32(vmulq_f32(v104, vrsqrtsq_f32(v102, vmulq_f32(v104, v104))), v99));
      C3DNodeGetQuaternion(a3, v105);
      v107 = v106;
      v107.i32[3] = v106.i32[0];
      v108 = v146;
      v109 = vzip1q_s32(v108, v108);
      v109.i32[0] = v146.i32[2];
      v110 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(v107, vextq_s8(vdupq_laneq_s32(v146, 3), v146, 4uLL)), xmmword_21C27FD00), v146, v106, 3), xmmword_21C27FD00, vmulq_f32(vextq_s8(vextq_s8(v106, v106, 0xCuLL), v106, 8uLL), v109));
      v111 = vuzp1q_s32(v108, v108);
      v111.i32[0] = v146.i32[1];
      v91 = vmlsq_f32(v110, v111, vextq_s8(vuzp1q_s32(v106, v106), v106, 0xCuLL));
      v155 = v91;
    }

    if (a5 != 1.0)
    {
      v147 = v91;
      C3DNodeGetQuaternion(a3, v31);
      _Q4 = v112;
      _Q0 = vmulq_f32(v112, v147);
      _S1 = v147.i32[2];
      __asm { FMLA            S0, S1, V4.S[2] }

      _S2 = v147.i32[3];
      v120 = -(_Q0.f32[0] + (_Q4.f32[3] * v147.f32[3]));
      __asm { FMLA            S0, S2, V4.S[3] }

      v122.i64[0] = 0;
      v123 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v122, _Q0), 0), vnegq_f32(v147), v147);
      if (_Q0.f32[0] < 0.0)
      {
        _Q0.f32[0] = v120;
      }

      if (1.0 - _Q0.f32[0] <= 0.00100000005)
      {
        v129 = 1.0 - a5;
        v130 = a5;
      }

      else
      {
        v143 = v123;
        v148 = _Q4;
        v124 = acosf(_Q0.f32[0]);
        v125 = sinf(v124);
        v126 = sinf((1.0 - a5) * v124);
        v127 = v124 * a5;
        v150 = v126 / v125;
        v128 = sinf(v127);
        _Q4 = v148;
        v129 = v150;
        v123 = v143;
        v130 = v128 / v125;
      }

      v155 = vmlaq_n_f32(vmulq_n_f32(v123, v130), _Q4, v129);
    }

    Target = C3DModelTargetGetTarget(a4, v31);
    TargetAddress = C3DModelTargetGetTargetAddress(a4, v132);
    v135 = C3DSizeOfBaseType(10, v134);
    C3DSetValue(Target, TargetAddress, &v155, v135, 3, 0);
    return 1;
  }

  return result;
}

void C3DConstraintLookAtSetGimbalLockEnabled(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 144) = v2;
}

__n128 C3DConstraintLookAtSetTargetOffset(__n128 *a1, uint64_t a2, __n128 result)
{
  if (!a1)
  {
    v13 = result;
    v4 = scn_default_log(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    result = v13;
    if (v5)
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v6, v7, v8, v9, v10, v11, v12);
      result = v13;
    }
  }

  result.n128_u32[3] = a1[11].n128_u32[3];
  a1[11] = result;
  return result;
}

__n128 C3DConstraintLookAtSetUpVector(__n128 *a1, uint64_t a2, __n128 result)
{
  if (!a1)
  {
    v13 = result;
    v4 = scn_default_log(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    result = v13;
    if (v5)
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v6, v7, v8, v9, v10, v11, v12);
      result = v13;
    }
  }

  result.n128_u32[3] = a1[10].n128_u32[3];
  a1[10] = result;
  return result;
}

void C3DConstraintLookAtSetLocalFront(__n128 *result, uint64_t a2, __n128 a3)
{
  if (!result)
  {
    v13 = a3;
    v4 = scn_default_log(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a3 = v13;
    if (v5)
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v6, v7, v8, v9, v10, v11, v12);
      a3 = v13;
    }
  }

  result[12] = a3;
}

uint64_t __C3DConstraintBillboardGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DConstraintBillboardGetTypeID_typeID = result;
  return result;
}

uint64_t C3DConstraintCreateBillboard(uint64_t a1, uint64_t a2)
{
  if (C3DConstraintBillboardGetTypeID_onceToken != -1)
  {
    C3DConstraintBillboardGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintBillboardGetTypeID_typeID, 128);
  *(Instance + 72) = 1065353216;
  *(Instance + 76) = 1;
  v3 = C3DWasLinkedBeforeMajorOSYear2017();
  *(Instance + 77) = v3 ^ 1;
  *(Instance + 88) = C3DConstraintApplyBillboard;
  *(Instance + 96) = C3DConstraintBillboardCopyTargetPath;
  *(Instance + 140) = C3DWasLinkedBeforeMajorOSYear2018(v3, v4) ^ 1;
  *(Instance + 136) = 7;
  return Instance;
}

BOOL C3DConstraintApplyBillboard(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  if (!a2)
  {
    v10 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v10, a2, v11, v12, v13, v14, v15, v16);
    }
  }

  PointOfView = C3DEngineContextGetPointOfView(a1, a2);
  if (PointOfView)
  {
    v18 = *(a2 + 16);
    if (*(v18 + 136))
    {
      memset(v26, 0, sizeof(v26));
      C3DConstraintBillboardMatrixForNode(a1, v18, a3, v26, a5);
      Target = C3DModelTargetGetTarget(a4, v19);
      TargetAddress = C3DModelTargetGetTargetAddress(a4, v21);
      v24 = C3DSizeOfBaseType(11, v23);
      C3DSetValue(Target, TargetAddress, v26, v24, *(a4 + 34), *(a4 + 35));
    }
  }

  return PointOfView != 0;
}

BOOL C3DConstraintBillboardMatrixForNode(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float a5)
{
  PointOfView = C3DEngineContextGetPointOfView(a1, a2);
  if (PointOfView)
  {
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    C3DNodeGetLocalNoPivotMatrix(a3, v9, &v121);
    WorldMatrix = C3DNodeGetWorldMatrix(a3, v11);
    v13 = WorldMatrix[3];
    v15 = *WorldMatrix;
    v14 = WorldMatrix[1];
    v119 = WorldMatrix[2];
    v120 = v13;
    v117 = v15;
    v118 = v14;
    v116.i32[2] = 0;
    v116.i64[0] = 0;
    v16 = C3DWasLinkedBeforeMajorOSYear2017();
    v18 = v16;
    if (v16)
    {
      v117 = v121;
      v118 = v122;
      v119 = v123;
      v120 = v124;
    }

    else if (*(a2 + 140) == 1)
    {
      C3DMatrix4x4GetAffineTransforms(&v121, 0, 0, &v116);
    }

    v19 = C3DNodeGetWorldMatrix(PointOfView, v17);
    v21 = *v19;
    v22 = *(v19 + 32);
    v113 = *(v19 + 16);
    v114 = v22;
    v112 = v21;
    v115 = 0uLL;
    v23 = *(a2 + 136);
    if (v23 > 2)
    {
      if (v23 > 4)
      {
        if (v23 == 5)
        {
          v126 = v112;
          v127 = v113;
          v128 = v114;
          v129 = v115;
          C3DVector3MultMatrix4x4(&v126, v112);
          v126 = v112;
          v127 = v113;
          v128 = v114;
          v129 = v115;
          C3DVector3MultMatrix4x4(&v126, xmmword_21C27F600);
          v75 = vextq_s8(vuzp1q_s32(v113, v113), v113, 0xCuLL);
          v76 = vmlaq_f32(vmulq_f32(v113, xmmword_21C2A3E40), xmmword_21C27F600, v75);
          v77 = vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL);
          v78 = vmulq_f32(v76, v76);
          *&v79 = v78.f32[1] + (v78.f32[2] + v78.f32[0]);
          *v78.f32 = vrsqrte_f32(v79);
          *v78.f32 = vmul_f32(*v78.f32, vrsqrts_f32(v79, vmul_f32(*v78.f32, *v78.f32)));
          v80 = vmulq_n_f32(v77, vmul_f32(*v78.f32, vrsqrts_f32(v79, vmul_f32(*v78.f32, *v78.f32))).f32[0]);
          v81 = vmlaq_f32(vmulq_f32(v75, vnegq_f32(v80)), v113, vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL));
          v82 = vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL);
          v83 = vmulq_f32(v81, v81);
          *&v84 = v83.f32[1] + (v83.f32[2] + v83.f32[0]);
          *v83.f32 = vrsqrte_f32(v84);
          *v83.f32 = vmul_f32(*v83.f32, vrsqrts_f32(v84, vmul_f32(*v83.f32, *v83.f32)));
          v85 = vmulq_n_f32(v82, vmul_f32(*v83.f32, vrsqrts_f32(v84, vmul_f32(*v83.f32, *v83.f32))).f32[0]);
          v80.i32[3] = v112.i32[3];
          v85.i32[3] = v114.i32[3];
          v112 = v80;
          v114 = v85;
        }

        else if (v23 == 6)
        {
          v126 = v112;
          v127 = v113;
          v128 = v114;
          v129 = v115;
          C3DVector3MultMatrix4x4(&v126, v113);
          v126 = v112;
          v127 = v113;
          v128 = v114;
          v129 = v115;
          C3DVector3MultMatrix4x4(&v126, xmmword_21C27F910);
          v52 = vextq_s8(vuzp1q_s32(v114, v114), v114, 0xCuLL);
          v53 = vmlaq_f32(vmulq_f32(v52, xmmword_21C2A3E40), xmmword_21C27F8C0, v114);
          v54 = vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL);
          v55 = vmulq_f32(v53, v53);
          *&v56 = v55.f32[1] + (v55.f32[2] + v55.f32[0]);
          *v55.f32 = vrsqrte_f32(v56);
          *v55.f32 = vmul_f32(*v55.f32, vrsqrts_f32(v56, vmul_f32(*v55.f32, *v55.f32)));
          v57 = vmulq_n_f32(v54, vmul_f32(*v55.f32, vrsqrts_f32(v56, vmul_f32(*v55.f32, *v55.f32))).f32[0]);
          v58 = vmlaq_f32(vmulq_f32(v52, vnegq_f32(v57)), v114, vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL));
          v59 = vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL);
          v60 = vmulq_f32(v58, v58);
          *&v61 = v60.f32[1] + (v60.f32[2] + v60.f32[0]);
          *v60.f32 = vrsqrte_f32(v61);
          *v60.f32 = vmul_f32(*v60.f32, vrsqrts_f32(v61, vmul_f32(*v60.f32, *v60.f32)));
          v62 = vmulq_n_f32(v59, vmul_f32(*v60.f32, vrsqrts_f32(v61, vmul_f32(*v60.f32, *v60.f32))).f32[0]);
          v62.i32[3] = *(&v112 | 0xC);
          v57.i32[3] = v113.i32[3];
          v112 = v62;
          v113 = v57;
        }
      }

      else
      {
        v126 = v112;
        v127 = v113;
        v128 = v114;
        v129 = v115;
        if (v23 == 3)
        {
          C3DVector3MultMatrix4x4(&v126, v112);
          v126 = v112;
          v127 = v113;
          v128 = v114;
          v129 = v115;
          C3DVector3MultMatrix4x4(&v126, xmmword_21C27F8C0);
          v64 = vextq_s8(vuzp1q_s32(v114, v114), v114, 0xCuLL);
          v65 = vmlaq_f32(vmulq_f32(v64, xmmword_21C2A3E60), xmmword_21C27F600, v114);
          v66 = vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL);
          v67 = vmulq_f32(v65, v65);
          *&v68 = v67.f32[1] + (v67.f32[2] + v67.f32[0]);
          *v67.f32 = vrsqrte_f32(v68);
          *v67.f32 = vmul_f32(*v67.f32, vrsqrts_f32(v68, vmul_f32(*v67.f32, *v67.f32)));
          v69 = vmulq_n_f32(v66, vmul_f32(*v67.f32, vrsqrts_f32(v68, vmul_f32(*v67.f32, *v67.f32))).f32[0]);
          v70 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL), vnegq_f32(v114)), v69, v64);
          v71 = vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL);
          v72 = vmulq_f32(v70, v70);
          *&v73 = v72.f32[1] + (v72.f32[2] + v72.f32[0]);
          *v72.f32 = vrsqrte_f32(v73);
          *v72.f32 = vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32)));
          v74 = vmulq_n_f32(v71, vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32))).f32[0]);
          v69.i32[3] = v112.i32[3];
          v74.i32[3] = v113.i32[3];
          v112 = v69;
          v113 = v74;
        }

        else
        {
          *v24.i64 = C3DVector3MultMatrix4x4(&v126, xmmword_21C27F910);
          v109 = v24;
          v126 = v112;
          v127 = v113;
          v128 = v114;
          v129 = v115;
          *v25.i64 = C3DVector3MultMatrix4x4(&v126, xmmword_21C27F600);
          v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), vnegq_f32(v109)), v25, vextq_s8(vuzp1q_s32(v109, v109), v109, 0xCuLL));
          v27 = vmulq_f32(v26, v26);
          *&v28 = v27.f32[1] + (v27.f32[2] + v27.f32[0]);
          *v27.f32 = vrsqrte_f32(v28);
          *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
          v29 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
          v30 = xmmword_21C27F600;
          v31 = vmlaq_f32(vmulq_f32(v29, xmmword_21C2A3E40), xmmword_21C27F600, vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL));
          v32 = vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL);
          v33 = vmulq_f32(v31, v31);
          v26.f32[0] = v33.f32[1] + (v33.f32[2] + v33.f32[0]);
          *v33.f32 = vrsqrte_f32(v26.u32[0]);
          *v33.f32 = vmul_f32(*v33.f32, vrsqrts_f32(v26.u32[0], vmul_f32(*v33.f32, *v33.f32)));
          v34 = vmulq_n_f32(v32, vmul_f32(*v33.f32, vrsqrts_f32(v26.u32[0], vmul_f32(*v33.f32, *v33.f32))).f32[0]);
          v35 = vmulq_f32(v34, xmmword_21C2A3E60);
          v36 = vmlaq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), xmmword_21C27F910, v34);
          v37 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
          v34.i32[3] = *(&v112 | 0xC);
          v37.i32[3] = v113.i32[3];
          v112 = v34;
          v113 = v37;
          HIDWORD(v30) = v114.i32[3];
          v114 = v30;
        }
      }

      goto LABEL_22;
    }

    switch(v23)
    {
      case 0:
        v63 = &v121;
LABEL_33:
        v106 = v63[1];
        *a4 = *v63;
        a4[1] = v106;
        v107 = v63[3];
        a4[2] = v63[2];
        a4[3] = v107;
        return PointOfView != 0;
      case 1:
        v126 = v112;
        v127 = v113;
        v128 = v114;
        v129 = v115;
        *v86.i64 = C3DVector3MultMatrix4x4(&v126, xmmword_21C27F8C0);
        v111 = v86;
        v126 = v112;
        v127 = v113;
        v128 = v114;
        v129 = v115;
        *v87.i64 = C3DVector3MultMatrix4x4(&v126, xmmword_21C27F910);
        v88 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v111, v111), v111, 0xCuLL), vnegq_f32(v87)), v111, vextq_s8(vuzp1q_s32(v87, v87), v87, 0xCuLL));
        v89 = vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL);
        v90 = vmulq_f32(v88, v88);
        *&v91 = v90.f32[1] + (v90.f32[2] + v90.f32[0]);
        *v90.f32 = vrsqrte_f32(v91);
        *v90.f32 = vmul_f32(*v90.f32, vrsqrts_f32(v91, vmul_f32(*v90.f32, *v90.f32)));
        v92 = vmulq_n_f32(v89, vmul_f32(*v90.f32, vrsqrts_f32(v91, vmul_f32(*v90.f32, *v90.f32))).f32[0]);
        v93 = vmulq_f32(v92, xmmword_21C2A3E50);
        v94 = vmlaq_f32(vextq_s8(vuzp1q_s32(v93, v93), v93, 0xCuLL), xmmword_21C27F8C0, v92);
        v95 = vmulq_f32(v94, v94);
        *&v96 = v95.f32[1] + (v95.f32[2] + v95.f32[0]);
        v97 = vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL);
        *v94.f32 = vrsqrte_f32(v96);
        *v94.f32 = vmul_f32(*v94.f32, vrsqrts_f32(v96, vmul_f32(*v94.f32, *v94.f32)));
        v98 = vmulq_n_f32(v97, vmul_f32(*v94.f32, vrsqrts_f32(v96, vmul_f32(*v94.f32, *v94.f32))).f32[0]);
        v99 = vmulq_f32(v98, xmmword_21C2A3E50);
        v100 = vmlaq_f32(vextq_s8(vuzp1q_s32(v99, v99), v99, 0xCuLL), xmmword_21C27F8C0, v98);
        v51 = vextq_s8(vuzp1q_s32(v100, v100), v100, 0xCuLL);
        v101 = xmmword_21C27F910;
        HIDWORD(v101) = *(&v112 | 0xC);
        v98.i32[3] = v113.i32[3];
        v112 = v101;
        v113 = v98;
        break;
      case 2:
        v126 = v112;
        v127 = v113;
        v128 = v114;
        v129 = v115;
        *v38.i64 = C3DVector3MultMatrix4x4(&v126, xmmword_21C27F910);
        v110 = v38;
        v126 = v112;
        v127 = v113;
        v128 = v114;
        v129 = v115;
        *v39.i64 = C3DVector3MultMatrix4x4(&v126, xmmword_21C27F8C0);
        v40 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), vnegq_f32(v110)), v39, vextq_s8(vuzp1q_s32(v110, v110), v110, 0xCuLL));
        v41 = vmulq_f32(v40, v40);
        *&v42 = v41.f32[1] + (v41.f32[2] + v41.f32[0]);
        *v41.f32 = vrsqrte_f32(v42);
        *v41.f32 = vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32)));
        v43 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL), vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32))).f32[0]);
        v44 = vmulq_f32(v43, xmmword_21C2A3E40);
        v45 = vmlaq_f32(vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL), xmmword_21C27F600, v43);
        v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
        v47 = vmulq_f32(v45, v45);
        v40.f32[0] = v47.f32[1] + (v47.f32[2] + v47.f32[0]);
        *v47.f32 = vrsqrte_f32(v40.u32[0]);
        *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v40.u32[0], vmul_f32(*v47.f32, *v47.f32)));
        v48 = vmulq_n_f32(v46, vmul_f32(*v47.f32, vrsqrts_f32(v40.u32[0], vmul_f32(*v47.f32, *v47.f32))).f32[0]);
        v49 = xmmword_21C27F8C0;
        v50 = vmlaq_f32(vmulq_f32(v48, xmmword_21C2A3E50), xmmword_21C27F8C0, vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL));
        v51 = vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL);
        v48.i32[3] = *(&v112 | 0xC);
        HIDWORD(v49) = v113.i32[3];
        v112 = v48;
        v113 = v49;
        break;
      default:
LABEL_22:
        v115 = v120;
        if (a5 != 1.0)
        {
          C3DMatrix4x4Interpolate(&v117, &v112, &v112, a5);
        }

        v117 = v112;
        v118 = v113;
        v119 = v114;
        v120 = v115;
        if (v18)
        {
          goto LABEL_32;
        }

        Parent = C3DNodeGetParent(a3, v20);
        v104 = (Parent ? C3DNodeGetWorldMatrix(Parent, v103) : MEMORY[0x277D860B8]);
        v130 = __invert_f4(*v104);
        v105 = 0;
        v125[0] = v117;
        v125[1] = v118;
        v125[2] = v119;
        v125[3] = v120;
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        v129 = 0u;
        do
        {
          *(&v126 + v105 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v130.columns[0], COERCE_FLOAT(*&v125[v105])), v130.columns[1], *v125[v105].f32, 1), v130.columns[2], v125[v105], 2), v130.columns[3], v125[v105], 3);
          ++v105;
        }

        while (v105 != 4);
        v117 = v126;
        v118 = v127;
        v119 = v128;
        v120 = v124;
        if (*(a2 + 140) != 1)
        {
LABEL_32:
          v63 = &v117;
        }

        else
        {
          *(v126.i64 + 4) = 0;
          v126.i32[0] = 0;
          v125[0] = 0uLL;
          v63 = &v117;
          C3DMatrix4x4GetAffineTransforms(&v117, &v126, v125, 0);
          C3DMatrix4x4MakeAffine(&v117, &v126, v125, &v116);
        }

        goto LABEL_33;
    }

    v51.i32[3] = v114.i32[3];
    v114 = v51;
    goto LABEL_22;
  }

  return PointOfView != 0;
}

uint64_t C3DConstraintConstantScaleGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DConstraintConstantScaleGetTypeID_onceToken != -1)
  {
    C3DConstraintConstantScaleGetTypeID_cold_1();
  }

  return C3DConstraintConstantScaleGetTypeID_typeID;
}

void _C3DConstraintConstantScaleCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }
}

CFStringRef _C3DConstraintConstantScaleCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintConstantScale>");
}

CFStringRef _C3DConstraintConstantScaleCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintConstantScale>");
}

uint64_t __C3DConstraintConstantScaleGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DConstraintConstantScaleGetTypeID_typeID = result;
  return result;
}

uint64_t C3DConstraintCreateConstantScale(uint64_t a1, uint64_t a2)
{
  if (C3DConstraintConstantScaleGetTypeID_onceToken != -1)
  {
    C3DConstraintConstantScaleGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintConstantScaleGetTypeID_typeID, 128);
  *(Instance + 72) = 1065353216;
  *(Instance + 76) = 1;
  *(Instance + 77) = C3DWasLinkedBeforeMajorOSYear2017() ^ 1;
  *(Instance + 88) = C3DConstraintApplyConstantScale;
  *(Instance + 96) = C3DConstraintConstantScaleCopyTargetPath;
  *(Instance + 136) = 1065353216;
  return Instance;
}

uint64_t C3DConstraintApplyConstantScale(__n128 *a1, uint64_t a2, __n128 *a3, uint64_t a4, float a5)
{
  v9 = *(a2 + 16);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  C3DNodeGetMatrix(a3, a2, &v46);
  v45[0] = v46;
  v45[1] = v47;
  v45[2] = v48;
  v45[3] = v49;
  if (*(v9 + 140))
  {
    result = C3DEngineContextGetPointOfView(a1, v10);
    if (!result)
    {
      return result;
    }

    v13 = result;
    result = C3DNodeGetCamera(result, v12);
    if (!result)
    {
      return result;
    }

    result = C3DCameraGetProjectionInfosPtr(result, v14);
    if (!result)
    {
      return result;
    }

    v16 = result;
    if (*result)
    {
      Viewport.n128_u64[0] = *(result + 48);
      Viewport.n128_f32[0] = Viewport.n128_f64[0];
    }

    else
    {
      WorldMatrix = C3DNodeGetWorldMatrix(v13, v15);
      memset(&v41, 0, sizeof(v41));
      C3DMatrix4x4Invert(WorldMatrix, &v41);
      v44.i32[2] = 0;
      v44.i64[0] = 0;
      C3DNodeGetWorldPosition(a3, &v44);
      v18 = vmulq_f32(vaddq_f32(v41.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v41.columns[0], v44.f32[0]), v41.columns[1], *v44.f32, 1), v41.columns[2], v44, 2)), xmmword_21C27F900);
      v19 = v18.f32[2] + vaddv_f32(*v18.f32);
      EffectiveFov = C3DProjectionInfosGetEffectiveFov(v16, v20);
      v22 = 1.0 / (tan(EffectiveFov * 3.14159265 / 180.0 * 0.5) + v19);
      Viewport = C3DEngineContextGetViewport(a1);
      Viewport.n128_u32[0] = Viewport.n128_u32[3];
      if ((*v16 & 0x20) != 0)
      {
        Viewport.n128_f32[0] = Viewport.n128_f32[2];
      }

      Viewport.n128_f32[0] = Viewport.n128_f32[0] * v22;
    }

    if (Viewport.n128_f32[0] == 0.0)
    {
      return 0;
    }

    Viewport.n128_f32[0] = *(v9 + 136) / Viewport.n128_f32[0];
    v41.columns[0] = vdupq_lane_s32(Viewport.n128_u64[0], 0);
    v44.i32[2] = 0;
    v44.i64[0] = 0;
    v43 = 0uLL;
    C3DMatrix4x4GetAffineTransforms(v45, &v44, &v43, 0);
    v35 = &v41;
    goto LABEL_15;
  }

  Parent = C3DNodeGetParent(a3, v10);
  if (!Parent)
  {
    v44.i32[2] = 0;
    v44.i64[0] = 0;
    v43 = 0uLL;
    C3DMatrix4x4GetAffineTransforms(v45, &v44, &v43, 0);
    *&v34 = C3DNodeGetScale(a3, v33);
    v42 = v34;
    v35 = &v42;
LABEL_15:
    C3DMatrix4x4MakeAffine(v45, &v44, &v43, v35);
    goto LABEL_16;
  }

  v26 = Parent;
  v27 = C3DNodeGetWorldMatrix(Parent, v25);
  C3DMatrix4x4Mult(v45, v27, v45);
  v44.i32[2] = 0;
  v44.i64[0] = 0;
  v43 = 0uLL;
  C3DMatrix4x4GetAffineTransforms(v45, &v44, &v43, 0);
  *&v29 = C3DNodeGetScale(a3, v28);
  v42 = v29;
  C3DMatrix4x4MakeAffine(v45, &v44, &v43, &v42);
  memset(&v41, 0, sizeof(v41));
  v31 = C3DNodeGetWorldMatrix(v26, v30);
  C3DMatrix4x4Invert(v31, &v41);
  C3DMatrix4x4Mult(v45, &v41, v45);
LABEL_16:
  if (a5 != 1.0)
  {
    C3DMatrix4x4Interpolate(&v46, v45, v45, a5);
  }

  Target = C3DModelTargetGetTarget(a4, v32);
  TargetAddress = C3DModelTargetGetTargetAddress(a4, v37);
  v40 = C3DSizeOfBaseType(11, v39);
  C3DSetValue(Target, TargetAddress, v45, v40, *(a4 + 34), *(a4 + 35));
  return 1;
}

void _C3DConstraintProceduralCFFinalize(uint64_t a1)
{
  _Block_release(*(a1 + 136));
  v2 = *(a1 + 144);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 144) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

CFStringRef _C3DConstraintProceduralCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintProcedural>");
}

CFStringRef _C3DConstraintProceduralCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintProcedural>");
}

uint64_t __C3DConstraintProceduralGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DConstraintProceduralGetTypeID_typeID = result;
  return result;
}

uint64_t C3DConstraintCreateProcedural(const void *a1, const void *a2)
{
  if (C3DConstraintProceduralGetTypeID_onceToken != -1)
  {
    C3DConstraintProceduralGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintProceduralGetTypeID_typeID, 136);
  *(Instance + 72) = 1065353216;
  *(Instance + 76) = 1;
  *(Instance + 77) = C3DWasLinkedBeforeMajorOSYear2017() ^ 1;
  *(Instance + 136) = _Block_copy(a1);
  *(Instance + 144) = CFRetain(a2);
  *(Instance + 88) = C3DConstraintApplyProcedural;
  *(Instance + 96) = C3DConstraintProceduralCopyTargetPath;
  *(Instance + 72) = 1065353216;
  *(Instance + 76) = 1;
  return Instance;
}

void *C3DConstraintProceduralCreateCopy(uint64_t a1, uint64_t a2)
{
  if (C3DConstraintProceduralGetTypeID_onceToken != -1)
  {
    C3DConstraintProceduralGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintProceduralGetTypeID_typeID, 136);
  Instance[17] = _Block_copy(*(a1 + 136));
  Instance[18] = CFRetain(*(a1 + 144));
  Instance[11] = C3DConstraintApplyProcedural;
  Instance[12] = C3DConstraintProceduralCopyTargetPath;
  return Instance;
}

void __C3DConstraintIKGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DConstraintIKGetTypeID_typeID = v0;
  if (C3DConstraintGetTypeID_onceToken != -1)
  {
    __C3DConstraintLookAtGetTypeID_block_invoke_cold_1();
  }

  C3DModelPathResolverRegisterClassBegin(v0, C3DConstraintGetTypeID_typeID);
  C3DModelPathResolverRegisterProperty(@"targetPosition", 144, 9, 0);

  C3DModelPathResolverRegisterClassEnd();
}

uint64_t C3DConstraintCreateIK(uint64_t a1, uint64_t a2)
{
  if (C3DConstraintIKGetTypeID_onceToken != -1)
  {
    C3DConstraintIKGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintIKGetTypeID_typeID, 176);
  *(Instance + 72) = 1065353216;
  *(Instance + 76) = 1;
  *(Instance + 77) = C3DWasLinkedBeforeMajorOSYear2017() ^ 1;
  *(Instance + 88) = C3DConstraintApplyIK;
  *(Instance + 96) = C3DConstraintIKCopyTargetPath;
  return Instance;
}

BOOL C3DConstraintApplyIK(uint64_t a1, uint64_t a2, float32x4_t *a3, float a4)
{
  v4 = *(a2 + 16);
  v5 = v4[8].n128_u64[1];
  if (!v5)
  {
    return 0;
  }

  v7 = v4[10].n128_u64[0];
  if (v7)
  {
LABEL_3:
    v91 = v4[10].n128_i64[1];
    ModelValueStorage = C3DGetScene(v5, a2);
    if (ModelValueStorage && (ModelValueStorage = C3DSceneGetModelValueStorage(ModelValueStorage, v9)) != 0)
    {
      v10 = ModelValueStorage;
      v11 = 0;
    }

    else
    {
      v12 = scn_default_log(ModelValueStorage, v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        C3DConstraintApplyIK_cold_1(v12, v9, v13, v14, v15, v16, v17, v18);
      }

      v10 = 0;
      v11 = 1;
    }

    if (a4 != 1.0 && v91 >= 1)
    {
      v19 = v91;
      v20 = v7;
      do
      {
        C3DModelValueStorageUpdateNodePresentationValueInNeeded(v10, *v20);
        C3DNodeGetQuaternion(*v20, v21);
        *(v20 + 2) = v22;
        v20 += 6;
        --v19;
      }

      while (v19);
    }

    v23 = 0;
    v24 = v91 - 1;
    v95 = 0u;
    v92 = 0u;
    do
    {
      v25 = (v7 + 8);
      if (v91 >= 2)
      {
        do
        {
          v26 = *v7;
          v27 = v25[-1].i64[0];
          if (!v23)
          {
            C3DModelValueStorageUpdateNodePresentationValueInNeeded(v10, v25[-1].i64[0]);
          }

          v28.n128_f64[0] = C3DNodeGetPosition(v26);
          v96 = v28;
          Parent = C3DNodeGetParent(v26, v29);
          *v31.i64 = convertPositionToNode(Parent, v27, v96);
          v95 = v31;
          *v32.i64 = convertPositionToNode(0, v27, v4[9]);
          v33 = v32;
          v34 = vmulq_f32(v95, v95);
          *&v35 = v34.f32[2] + vaddv_f32(*v34.f32);
          *v34.f32 = vrsqrte_f32(v35);
          *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32)));
          v36 = vmulq_n_f32(v95, vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32))).f32[0]);
          v37 = vmulq_f32(v33, v33);
          *&v38 = v37.f32[2] + vaddv_f32(*v37.f32);
          *v37.f32 = vrsqrte_f32(v38);
          *v37.f32 = vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32)));
          v94 = v36;
          v92 = v33;
          v93 = vmulq_n_f32(v33, vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32))).f32[0]);
          v39 = vmulq_f32(v36, v93);
          v40 = v39.f32[2] + vaddv_f32(*v39.f32);
          v41 = v40 > 1.0 || v40 < -1.0;
          if (v40 <= 1.0 && v40 < -1.0)
          {
            v42 = -1.0;
          }

          else
          {
            v42 = 1.0;
          }

          if (v41)
          {
            v40 = v42;
          }

          v43 = acosf(v40);
          if ((v4[11].n128_u8[8] & 1) != 0 || v43 > 0.00001)
          {
            v44 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v93, v93), v93, 0xCuLL), vnegq_f32(v94)), v93, vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL));
            v45 = vmulq_f32(v44, v44);
            v45.f32[0] = v45.f32[1] + (v45.f32[2] + v45.f32[0]);
            v46 = vdupq_lane_s32(*v45.f32, 0);
            v47 = vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL);
            v48 = vrsqrteq_f32(v46);
            v49 = vmulq_f32(v48, vrsqrtsq_f32(v46, vmulq_f32(v48, v48)));
            v50 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v45.f32[0] != 0.0)), 0x1FuLL));
            v50.i32[3] = 0;
            v51 = vbslq_s8(vcltzq_s32(v50), vmulq_f32(v47, vmulq_f32(v49, vrsqrtsq_f32(v46, vmulq_f32(v49, v49)))), v47);
            v102[0] = 0u;
            *&v51.i32[3] = v43;
            v101 = v51;
            C3DQuaternionMakeAxisAngle(v102, &v101);
            v100 = 0u;
            C3DNodeGetQuaternion(v27, v52);
            v100 = v53;
            v99 = 0u;
            C3DQuaternionMult(&v100, v102, &v99);
            C3DQuaternionNormalize(&v99);
            v55 = v25[-1].f32[2];
            if (v55 < 3.14159265)
            {
              v98 = 0uLL;
              *v56.i64 = C3DQuaternionGetRotationBetweenQuaternions(*v25, v99);
              v98 = v56;
              C3DQuaternionNormalize(&v98);
              v57 = acosf(v98.f32[3]);
              v63 = fabsf(v57 + v57);
              if (v63 > v55)
              {
                v97 = v99;
                C3DQuaternionSlerp(v25, &v97, &v99, v55 / v63, *v99.i64, v58, v59, v60, v61, v62);
                C3DQuaternionNormalize(&v99);
              }
            }

            C3DNodeSetQuaternion(v27, v54, v99);
          }

          if ((v11 & 1) == 0)
          {
            C3DModelValueStorageUpdateTimestampOfNode(v10, v27);
          }

          v25 += 3;
          --v24;
        }

        while (v24);
      }

      v64 = vsubq_f32(v95, v92);
      v65 = vmulq_f32(v64, v64);
      v66 = sqrtf(v65.f32[2] + vaddv_f32(*v65.f32)) < 0.9 || ++v23 == 10;
      v24 = v91 - 1;
    }

    while (!v66);
    result = 1;
    if (a4 != 1.0 && v91 >= 2)
    {
      v68 = (v7 + 10);
      do
      {
        v69 = v68[-2].i64[0];
        v102[0] = 0uLL;
        C3DNodeGetQuaternion(v69, v9);
        v102[0] = v70;
        C3DQuaternionSlerp(v68, v102, v102, a4, v71, v72, v73, v74, v75, v76);
        C3DQuaternionNormalize(v102);
        C3DNodeSetQuaternion(v69, v77, v102[0]);
        v68 += 3;
        --v24;
      }

      while (v24);
      return 1;
    }

    return result;
  }

  v78 = a3;
  if (v5 == a3)
  {
    if ((_C3DConstraintIKSetupJoints_done_75 & 1) == 0)
    {
      _C3DConstraintIKSetupJoints_done_75 = 1;
      v89 = scn_default_log(a1, a2);
      result = os_log_type_enabled(v89, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      C3DConstraintApplyIK_cold_3(v89);
    }

    return 0;
  }

  v79 = 0;
  v80 = 0;
  v81 = a3;
  while (v81)
  {
    ++v80;
    v81 = C3DNodeGetParent(v81, a2);
    v79 += 48;
    if (v81 == v5)
    {
      v82 = malloc_type_malloc(v79, 0x102004031CE6520uLL);
      v83 = 0;
      v4[10].n128_u64[0] = v82;
      v4[10].n128_u64[1] = v80;
      do
      {
        v84 = v4[10].n128_u64[0];
        *(v84 + v83 + 8) = 1078530011;
        v85 = v4[11].n128_u64[0];
        if (v85)
        {
          Value = CFDictionaryGetValue(v85, v78);
          v84 = v4[10].n128_u64[0];
          if (Value)
          {
            *(v84 + v83 + 8) = Value;
          }
        }

        *(v84 + v83) = v78;
        C3DNodeGetQuaternion(v78, a2);
        *(v4[10].n128_u64[0] + v83 + 16) = v87;
        v78 = C3DNodeGetParent(v78, v88);
        v83 += 48;
        --v80;
      }

      while (v80);
      v7 = v4[10].n128_u64[0];
      goto LABEL_3;
    }
  }

  if (_C3DConstraintIKSetupJoints_done)
  {
    return 0;
  }

  _C3DConstraintIKSetupJoints_done = 1;
  v90 = scn_default_log(0, a2);
  result = os_log_type_enabled(v90, OS_LOG_TYPE_ERROR);
  if (result)
  {
    C3DConstraintApplyIK_cold_2(v90);
    return 0;
  }

  return result;
}

void C3DConstraintIKSetChainRoot(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 136) = a2;
  v12 = *(a1 + 160);
  if (v12)
  {
    free(v12);
    *(a1 + 160) = 0;
  }
}

void C3DConstraintIKSetTarget(__n128 *result, uint64_t a2, __n128 a3)
{
  if (!result)
  {
    v13 = a3;
    v4 = scn_default_log(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a3 = v13;
    if (v5)
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v6, v7, v8, v9, v10, v11, v12);
      a3 = v13;
    }
  }

  result[9] = a3;
}

void C3DConstraintIKSetMaxRotationForNode(uint64_t a1, void *key, float a3)
{
  Mutable = *(a1 + 176);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    *(a1 + 176) = Mutable;
  }

  CFDictionarySetValue(Mutable, key, LODWORD(a3));
  *(a1 + 184) = 1;
  v7 = *(a1 + 160);
  if (v7)
  {
    v8 = *(a1 + 168);
    v9 = v8 - 1;
    if (v8 >= 1)
    {
      v10 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v11 = vdupq_n_s64(v9);
      v12 = xmmword_21C27F630;
      v13 = xmmword_21C27F640;
      v14 = (v7 + 104);
      v15 = vdupq_n_s64(4uLL);
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v11, v13));
        if (vuzp1_s16(v16, *v11.i8).u8[0])
        {
          *(v14 - 24) = a3;
        }

        if (vuzp1_s16(v16, *&v11).i8[2])
        {
          *(v14 - 12) = a3;
        }

        if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
        {
          *v14 = a3;
          v14[12] = a3;
        }

        v12 = vaddq_s64(v12, v15);
        v13 = vaddq_s64(v13, v15);
        v14 += 48;
        v10 -= 4;
      }

      while (v10);
    }
  }
}

double convertPositionToNode(uint64_t a1, uint64_t a2, __n128 a3)
{
  v21 = a3;
  if (a1 != a2)
  {
    memset(v20, 0, sizeof(v20));
    C3DMatrix4x4MakeTranslation(v20, &v21);
    WorldMatrix = C3DNodeGetWorldMatrix(a2, v5);
    v7 = WorldMatrix[3];
    v9 = *WorldMatrix;
    v8 = WorldMatrix[1];
    v19.columns[2] = WorldMatrix[2];
    v19.columns[3] = v7;
    v19.columns[0] = v9;
    v19.columns[1] = v8;
    C3DMatrix4x4Invert(&v19, &v19);
    if (a1)
    {
      Identity = C3DNodeGetWorldMatrix(a1, v10);
    }

    else
    {
      Identity = C3DMatrix4x4GetIdentity();
    }

    v12 = *Identity;
    v13 = Identity[1];
    v14 = Identity[3];
    v18[2] = Identity[2];
    v18[3] = v14;
    v18[0] = v12;
    v18[1] = v13;
    v17 = 0u;
    memset(v16, 0, sizeof(v16));
    C3DMatrix4x4Mult(v18, &v19, v16);
    C3DMatrix4x4Mult(v20, v16, v16);
    a3.n128_u64[0] = v17;
  }

  return a3.n128_f64[0];
}

void __C3DConstraintDistanceGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DConstraintDistanceGetTypeID_typeID = v0;
  if (C3DConstraintGetTypeID_onceToken != -1)
  {
    __C3DConstraintLookAtGetTypeID_block_invoke_cold_1();
  }

  C3DModelPathResolverRegisterClassBegin(v0, C3DConstraintGetTypeID_typeID);
  C3DModelPathResolverRegisterProperty(@"minimumDistance", 144, 1, 0);
  C3DModelPathResolverRegisterProperty(@"maximumDistance", 148, 1, 0);

  C3DModelPathResolverRegisterClassEnd();
}

void C3DConstraintDistanceSetTargetDirection(__n128 *result, uint64_t a2, __n128 a3)
{
  if (!result)
  {
    v13 = a3;
    v4 = scn_default_log(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a3 = v13;
    if (v5)
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v6, v7, v8, v9, v10, v11, v12);
      a3 = v13;
    }
  }

  result[11] = a3;
}

void C3DConstraintDistanceSetKeepTargetDirection(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 152) = v2;
}

void C3DConstraintDistanceSetMinimumDistance(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 144) = a3;
}

void C3DConstraintDistanceSetMaximumDistance(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 148) = a3;
}

BOOL C3DConstraintApplyDistance(uint64_t a1, uint64_t a2, _BOOL8 a3, uint64_t a4, float a5)
{
  if (!a2)
  {
    v8 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = *(a2 + 16);
  v17 = v16[8].i64[1];
  if (v17)
  {
    v121.i32[2] = 0;
    v121.i64[0] = 0;
    v120.i32[2] = 0;
    v120.i64[0] = 0;
    C3DNodeGetWorldPosition(v17, &v121);
    C3DNodeGetWorldPosition(a3, &v120);
    v20 = vsubq_f32(v120, v121);
    v21 = vmulq_f32(v20, v20);
    v21.f32[0] = sqrtf(v21.f32[2] + vaddv_f32(*v21.f32));
    v116 = v21;
    if (v21.f32[0] == 0.0)
    {
      v22.f32[0] = arc4random();
      v113 = v22;
      *&v23 = arc4random();
      v111 = v23;
      v24 = arc4random();
      v19.i64[1] = *(&v111 + 1);
      v27 = v113;
      v27.i32[1] = v111;
      v27.f32[2] = v24;
      v25 = vmulq_f32(v27, v27);
      v26 = v27;
      v27.f32[0] = v25.f32[2] + vaddv_f32(*v25.f32);
      *v25.f32 = vrsqrte_f32(v27.u32[0]);
      *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(v27.u32[0], vmul_f32(*v25.f32, *v25.f32)));
      *v19.f32 = vmul_f32(*v25.f32, *v25.f32);
      *v27.f32 = vrsqrts_f32(v27.u32[0], *v19.f32);
      v28 = vmulq_n_f32(v26, vmul_f32(*v25.f32, *v27.f32).f32[0]);
    }

    else
    {
      v27 = vdupq_lane_s32(*v21.f32, 0);
      v28 = vdivq_f32(v20, v27);
    }

    if (v16[9].i8[8] == 1)
    {
      v29 = MEMORY[0x277D860B8];
      v119 = 0uLL;
      v114 = v28;
      C3DNodeGetWorldOrientation(v16[8].i64[1], &v119);
      v30 = v119;
      v31 = vnegq_f32(v119);
      v32 = v31;
      v32.i32[3] = v119.i32[3];
      v33 = vmulq_f32(v32, v32);
      *v33.i8 = vadd_f32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
      v34 = vdupq_lane_s32(vadd_f32(*v33.i8, vdup_lane_s32(*v33.i8, 1)), 0);
      v35 = vrsqrteq_f32(v34);
      v36 = vmulq_f32(v35, vrsqrtsq_f32(v34, vmulq_f32(v35, v35)));
      v37 = vbslq_s8(vceqzq_f32(v34), v32, vmulq_f32(v32, vmulq_f32(v36, vrsqrtsq_f32(v34, vmulq_f32(v36, v36)))));
      v38 = vnegq_f32(v114);
      v39 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
      v40 = vnegq_f32(v37);
      v41 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL), v40), v39, v114);
      v42 = vaddq_f32(v41, v41);
      v43 = vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL);
      v44 = vmlaq_laneq_f32(v38, v43, v37, 3);
      v45 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL), v40), v43, v39);
      v46 = vaddq_f32(v44, vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL));
      v47 = v16[11];
      v48 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
      v49 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL), vnegq_f32(v46)), v47, v48);
      v50 = vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL);
      v51 = vmulq_f32(v47, v46);
      v52 = vmulq_f32(v46, v46);
      v53 = vmulq_f32(v47, v47);
      *v53.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v53, v53, 8uLL), *&vextq_s8(v52, v52, 8uLL)), vadd_f32(vzip1_s32(*v53.i8, *v52.i8), vzip2_s32(*v53.i8, *v52.i8)));
      v50.f32[3] = (v51.f32[2] + vaddv_f32(*v51.f32)) + sqrtf(vmul_lane_f32(*v53.i8, *v53.i8, 1).f32[0]);
      v54 = vmulq_f32(v50, v50);
      *v54.i8 = vadd_f32(*v54.i8, *&vextq_s8(v54, v54, 8uLL));
      v55 = vdupq_lane_s32(vadd_f32(*v54.i8, vdup_lane_s32(*v54.i8, 1)), 0);
      v56 = vrsqrteq_f32(v55);
      _Q2 = vmulq_f32(v56, vrsqrtsq_f32(v55, vmulq_f32(v56, v56)));
      _Q3 = vrsqrtsq_f32(v55, vmulq_f32(_Q2, _Q2));
      v59 = vbslq_s8(vceqzq_f32(v55), v50, vmulq_f32(vmulq_f32(_Q2, _Q3), v50));
      _Q5 = v29[3];
      _Q1 = vmulq_f32(_Q5, v59);
      _Q2.i32[0] = v59.i32[2];
      __asm { FMLA            S1, S2, V5.S[2] }

      _Q3.i32[0] = v59.i32[3];
      v65 = -(_Q1.f32[0] + (_Q5.f32[3] * v59.f32[3]));
      __asm { FMLA            S1, S3, V5.S[3] }

      _Q3.i64[0] = 0;
      v67 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(_Q3, _Q1), 0), vnegq_f32(v59), v59);
      if (_Q1.f32[0] >= 0.0)
      {
        v68 = _Q1.f32[0];
      }

      else
      {
        v68 = v65;
      }

      if (1.0 - v68 <= 0.00100000005)
      {
        v72 = 1.0 - a5;
        v73 = a5;
      }

      else
      {
        v112 = v31;
        v115 = v119;
        v109 = v48;
        v110 = v32;
        v107 = v29[3];
        v108 = v46;
        v106 = v67;
        v69 = acosf(v68);
        v70 = sinf(v69);
        v105 = sinf((1.0 - a5) * v69) / v70;
        v71 = sinf(v69 * a5);
        v72 = v105;
        v67 = v106;
        _Q5 = v107;
        v46 = v108;
        v48 = v109;
        v32 = v110;
        v31 = v112;
        v30 = v115;
        v73 = v71 / v70;
      }

      v74 = vmlaq_n_f32(vmulq_n_f32(v67, v73), _Q5, v72);
      v75 = vnegq_f32(v74);
      v76 = vzip1q_s32(v75, v75);
      v76.i32[0] = v75.i32[2];
      v77 = vuzp1q_s32(v75, v75);
      v77.i32[0] = v75.i32[1];
      v78 = v75;
      v78.i32[3] = v74.i32[3];
      v79 = v46;
      v79.i32[3] = v46.i32[0];
      v80 = vmlaq_f32(vmlaq_f32(vmulq_f32(vmulq_f32(v79, vextq_s8(vdupq_laneq_s32(v78, 3), v78, 4uLL)), xmmword_21C27FD00), 0, v78), xmmword_21C27FD00, vmulq_f32(vextq_s8(vextq_s8(v46, v46, 0xCuLL), v46, 8uLL), v76));
      v81 = v74;
      v81.i32[3] = v74.i32[0];
      v82 = vmlsq_f32(v80, v77, v48);
      v83 = vzip1q_s32(v82, v82);
      v83.i32[0] = v82.i32[2];
      v84 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(v81, vextq_s8(vdupq_laneq_s32(v82, 3), v82, 4uLL)), xmmword_21C27FD00), v82, v74, 3), xmmword_21C27FD00, vmulq_f32(vextq_s8(vextq_s8(v74, v74, 0xCuLL), v74, 8uLL), v83));
      v85 = vuzp1q_s32(v82, v82);
      v85.i32[0] = v82.i32[1];
      v86 = vnegq_f32(vmlsq_f32(v84, v85, vextq_s8(vuzp1q_s32(v74, v74), v74, 0xCuLL)));
      v87 = vextq_s8(vextq_s8(v86, v86, 0xCuLL), v86, 8uLL);
      v88 = vextq_s8(vuzp1q_s32(v86, v86), v86, 0xCuLL);
      v86.i32[3] = v86.i32[0];
      v89 = vzip1q_s32(v31, v31);
      v89.i32[0] = v31.i32[2];
      v90 = vmlaq_f32(vmlaq_f32(vmulq_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v32, 3), v32, 4uLL), v86), xmmword_21C27FD00), 0, v32), xmmword_21C27FD00, vmulq_f32(v89, v87));
      v91 = vuzp1q_s32(v31, v31);
      v91.i32[0] = v31.i32[1];
      v27 = vmlsq_f32(v90, v91, v88);
      v92 = v30;
      v92.i32[3] = v30.i32[0];
      v93 = vzip1q_s32(v27, v27);
      v93.i32[0] = v27.i32[2];
      v94 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(v92, vextq_s8(vdupq_laneq_s32(v27, 3), v27, 4uLL)), xmmword_21C27FD00), v27, v30, 3), xmmword_21C27FD00, vmulq_f32(vextq_s8(vextq_s8(v30, v30, 0xCuLL), v30, 8uLL), v93));
      v19 = vuzp1q_s32(v27, v27);
      v19.i32[0] = v27.i32[1];
      v28 = vmlsq_f32(v94, v19, vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL));
    }

    v27.i32[0] = v16[9].i32[0];
    v19.i32[0] = v16[9].i32[1];
    v118 = vmlaq_n_f32(v120, vsubq_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v27, v116), 0), vmlaq_n_f32(v121, v28, v27.f32[0]), vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v116, v19), 0), vmlaq_n_f32(v121, v28, v19.f32[0]), vmlaq_n_f32(v121, v28, v116.f32[0]))), v120), a5);
    Parent = C3DNodeGetParent(a3, v18);
    if (Parent)
    {
      WorldMatrix = C3DNodeGetWorldMatrix(Parent, v96);
    }

    else
    {
      WorldMatrix = MEMORY[0x277D860B8];
    }

    v122 = __invert_f4(*WorldMatrix);
    v119 = vaddq_f32(v122.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v122.columns[1], *v118.f32, 1), v122.columns[0], v118.f32[0]), v122.columns[2], v118, 2));
    Target = C3DModelTargetGetTarget(a4, v98);
    TargetAddress = C3DModelTargetGetTargetAddress(a4, v100);
    v103 = C3DSizeOfBaseType(9, v102);
    C3DSetValue(Target, TargetAddress, &v119, v103, 6, 0);
  }

  return v17 != 0;
}

uint64_t C3DConstraintCreateDistance()
{
  if (C3DConstraintDistanceGetTypeID_onceToken != -1)
  {
    C3DConstraintCreateDistance_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintDistanceGetTypeID_typeID, 176);
  *(Instance + 72) = 1065353216;
  *(Instance + 76) = 1;
  *(Instance + 77) = C3DWasLinkedBeforeMajorOSYear2017() ^ 1;
  *(Instance + 136) = 0;
  *(Instance + 144) = 0x7F7FFFFF00000000;
  *(Instance + 152) = 0;
  *(Instance + 176) = xmmword_21C27F900;
  *(Instance + 156) = vdup_n_s32(0x43B40000u);
  *(Instance + 88) = C3DConstraintApplyDistance;
  *(Instance + 96) = C3DConstraintDistanceCopyTargetPath;
  return Instance;
}

void __C3DConstraintAccelerationGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DConstraintAccelerationGetTypeID_typeID = v0;
  if (C3DConstraintGetTypeID_onceToken != -1)
  {
    __C3DConstraintLookAtGetTypeID_block_invoke_cold_1();
  }

  C3DModelPathResolverRegisterClassBegin(v0, C3DConstraintGetTypeID_typeID);
  C3DModelPathResolverRegisterProperty(@"maximumLinearAcceleration", 140, 1, 0);
  C3DModelPathResolverRegisterProperty(@"maximumLinearVelocity", 136, 1, 0);
  C3DModelPathResolverRegisterProperty(@"decelerationDistance", 144, 1, 0);
  C3DModelPathResolverRegisterProperty(@"damping", 148, 1, 0);

  C3DModelPathResolverRegisterClassEnd();
}

void C3DConstraintAccelerationSetMaximumPositionVelocity(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 136) = a3;
}

void C3DConstraintAccelerationSetMaximumPositionAcceleration(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 140) = a3;
}

uint64_t C3DConstraintAccelerationInit(uint64_t a1, uint64_t a2, _BOOL8 a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DConstraintControllerInitializeConstraint_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = malloc_type_calloc(1uLL, 0x60uLL, 0x100004084AB7CDAuLL);
  *(a2 + 56) = v13;
  v16.n128_u32[2] = 0;
  v16.n128_u64[0] = 0;
  C3DNodeGetWorldPosition(a3, &v16);
  *v13 = v16;
  v13[1] = 0u;
  v15 = 0uLL;
  C3DNodeGetWorldOrientation(a3, &v15);
  v13[2] = v15;
  v13[3] = 0u;
  return 1;
}

uint64_t C3DConstraintApplyAcceleration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  if (!a2)
  {
    v9 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v17 = *(a2 + 56);
  SystemTime = C3DEngineContextGetSystemTime(a1);
  if (SystemTime != *(v17 + 72))
  {
    Parent = C3DNodeGetParent(a3, v18);
    if (Parent)
    {
      WorldMatrix = C3DNodeGetWorldMatrix(Parent, v21);
    }

    else
    {
      WorldMatrix = MEMORY[0x277D860B8];
    }

    v73 = __invert_f4(*WorldMatrix);
    v66 = v73.columns[0];
    v67 = v73.columns[1];
    v68 = v73.columns[3];
    v69 = v73.columns[2];
    if (*(v17 + 80) == 1)
    {
      *v73.columns[0].i64 = SystemTime - *(v17 + 72);
      v73.columns[0].f32[0] = *v73.columns[0].i64;
    }

    else
    {
      v73.columns[0].i32[0] = 1015580809;
    }

    v65 = *v73.columns[0].f32;
    v23 = *(a2 + 16);
    *(v72.i64 + 4) = 0;
    v72.i32[0] = 0;
    C3DNodeGetWorldPosition(a3, &v72);
    if ((*(v17 + 80) & 1) == 0)
    {
      *v17 = v72;
      *(v17 + 80) = 1;
    }

    *(v17 + 72) = C3DEngineContextGetSystemTime(a1);
    v25 = v23[34];
    v26 = v23[35];
    v27 = v72;
    v28 = *v17;
    v29 = *(v17 + 16);
    v30 = vsubq_f32(v72, *v17);
    v31 = vdupq_lane_s32(v65, 0);
    v32 = vdivq_f32(v30, v31);
    v33 = vdivq_f32(vsubq_f32(v32, v29), v31);
    v34 = vmulq_f32(v33, v33);
    v35 = v34.f32[2] + vaddv_f32(*v34.f32);
    if (sqrtf(v35) > v26)
    {
      v36 = v35;
      v37 = vrsqrte_f32(LODWORD(v35));
      v38 = vmul_f32(v37, vrsqrts_f32(LODWORD(v36), vmul_f32(v37, v37)));
      v32 = vmlaq_f32(v29, v31, vmulq_n_f32(vmulq_n_f32(v33, vmul_f32(v38, vrsqrts_f32(LODWORD(v36), vmul_f32(v38, v38))).f32[0]), v26));
    }

    v39 = vmulq_f32(v32, v32);
    v40 = v39.f32[2] + vaddv_f32(*v39.f32);
    if (sqrtf(v40) > v25)
    {
      v41 = v40;
      v42 = vrsqrte_f32(LODWORD(v40));
      v43 = vmul_f32(v42, vrsqrts_f32(LODWORD(v41), vmul_f32(v42, v42)));
      v32 = vmulq_n_f32(vmulq_n_f32(v32, vmul_f32(v43, vrsqrts_f32(LODWORD(v41), vmul_f32(v43, v43))).f32[0]), v25);
    }

    v44 = v23[36];
    v45 = vmulq_n_f32(v32, 1.0 - v23[37]);
    if (v44 != 0.0)
    {
      v46 = vmulq_f32(v30, v30);
      v47 = sqrtf(v46.f32[2] + vaddv_f32(*v46.f32));
      v48 = vmulq_f32(v45, v45);
      v49 = v48.f32[2] + vaddv_f32(*v48.f32);
      v50 = sqrtf(v49);
      if (v47 >= v44)
      {
        *(v17 + 64) = v50;
      }

      else
      {
        v51 = v47 / v44;
        if (v51 >= 1.0)
        {
          v52 = 1.0;
        }

        else
        {
          v52 = v51 * v51;
        }

        v53 = v52 * *(v17 + 64);
        if (v50 > v53)
        {
          v54 = v49;
          v55 = vrsqrte_f32(LODWORD(v49));
          v56 = vmul_f32(v55, vrsqrts_f32(LODWORD(v54), vmul_f32(v55, v55)));
          v45 = vmulq_n_f32(vmulq_n_f32(v45, vmul_f32(v56, vrsqrts_f32(LODWORD(v54), vmul_f32(v56, v56))).f32[0]), v53);
        }
      }
    }

    v57 = vmlaq_n_f32(v28, v45, *v65.i32);
    if (a5 != 0.0)
    {
      v58 = vmlaq_n_f32(v27, vsubq_f32(v57, v27), a5);
      v45 = vdivq_f32(vsubq_f32(v58, v28), v31);
      v57 = v58;
    }

    *v17 = v57;
    *(v17 + 16) = v45;
    v71 = vaddq_f32(v68, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v66, v57.f32[0]), v67, *v57.f32, 1), v69, v57, 2));
    Target = C3DModelTargetGetTarget(a4, v24);
    TargetAddress = C3DModelTargetGetTargetAddress(a4, v60);
    v63 = C3DSizeOfBaseType(9, v62);
    C3DSetValue(Target, TargetAddress, &v71, v63, 6, 0);
  }

  return 1;
}

uint64_t C3DConstraintCreateAcceleration(uint64_t a1, uint64_t a2)
{
  if (C3DConstraintAccelerationGetTypeID_onceToken != -1)
  {
    C3DConstraintAccelerationGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintAccelerationGetTypeID_typeID, 136);
  *(Instance + 72) = 1065353216;
  *(Instance + 76) = 1;
  *(Instance + 77) = C3DWasLinkedBeforeMajorOSYear2017() ^ 1;
  *(Instance + 136) = xmmword_21C2A3E70;
  *(Instance + 88) = C3DConstraintApplyAcceleration;
  *(Instance + 96) = C3DConstraintAccelerationCopyTargetPath;
  *(Instance + 80) = C3DConstraintAccelerationInit;
  return Instance;
}

void __C3DConstraintReplicatorGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DConstraintReplicatorGetTypeID_typeID = v0;
  if (C3DConstraintGetTypeID_onceToken != -1)
  {
    __C3DConstraintLookAtGetTypeID_block_invoke_cold_1();
  }

  C3DModelPathResolverRegisterClassBegin(v0, C3DConstraintGetTypeID_typeID);
  C3DModelPathResolverRegisterProperty(@"orientationOffset", 192, 10, 3);
  C3DModelPathResolverRegisterProperty(@"positionOffset", 160, 9, 6);
  C3DModelPathResolverRegisterProperty(@"scaleOffset", 176, 9, 7);

  C3DModelPathResolverRegisterClassEnd();
}

void C3DConstraintReplicatorSetPositionEnabled(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 144) = *(result + 144) & 0xFE | v2;
}

void C3DConstraintReplicatorSetOrientationEnabled(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  *(result + 144) = *(result + 144) & 0xFD | v12;
}

void C3DConstraintReplicatorSetScaleEnabled(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  *(result + 144) = *(result + 144) & 0xFB | v12;
}

void C3DConstraintReplicatorSetPositionOffset(__n128 *result, uint64_t a2, __n128 a3)
{
  if (!result)
  {
    v13 = a3;
    v4 = scn_default_log(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a3 = v13;
    if (v5)
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v6, v7, v8, v9, v10, v11, v12);
      a3 = v13;
    }
  }

  result[10] = a3;
}

uint64_t C3DConstraintApplyReplicator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  if (!a2)
  {
    v8 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = *(a2 + 16);
  if (!v15[8].i64[1])
  {
    return 0;
  }

  Parent = C3DNodeGetParent(a3, a2);
  result = C3DNodeGetWorldMatrix(a3, v17);
  if (!result)
  {
    return result;
  }

  v20 = result;
  v21 = MEMORY[0x277D860B8];
  if (Parent)
  {
    WorldMatrix = C3DNodeGetWorldMatrix(Parent, v19);
  }

  else
  {
    WorldMatrix = MEMORY[0x277D860B8];
  }

  v205 = __invert_f4(*WorldMatrix);
  v197 = v205.columns[1];
  v198 = v205.columns[0];
  v24 = v15[9].i8[0];
  v195 = v205.columns[3];
  v196 = v205.columns[2];
  if ((v24 & 1) == 0)
  {
    v194 = *(v20 + 48);
    if ((v15[9].i8[0] & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_19:
    v48 = *v20;
    v47 = *(v20 + 16);
    v49 = *(v20 + 32);
    v50 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL), vnegq_f32(v47)), v49, vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL));
    v51 = vmulq_f32(*v20, vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL));
    _NF = (v51.f32[2] + vaddv_f32(*v51.f32)) < 0.0;
    v52 = 1.0;
    if (_NF)
    {
      v52 = -1.0;
    }

    v53 = vmulq_f32(v48, v48);
    v54 = vmulq_f32(v47, v47);
    v55 = vadd_f32(vzip1_s32(*v53.i8, *v54.i8), vzip2_s32(*v53.i8, *v54.i8));
    v56 = vextq_s8(v53, v53, 8uLL);
    *v56.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v56.f32, *&vextq_s8(v54, v54, 8uLL)), v55));
    v57 = vmulq_f32(v49, v49);
    v56.i32[2] = sqrtf(v57.f32[2] + vaddv_f32(*v57.f32));
    v58 = vmulq_n_f32(v56, v52);
    v59 = vceqzq_f32(v58);
    v59.i32[3] = v59.i32[2];
    if ((vmaxvq_u32(v59) & 0x80000000) != 0 || (v60 = vmvnq_s8(vorrq_s8(vcltzq_f32(v58), vcgezq_f32(v58))), v60.i32[3] = v60.i32[2], (vmaxvq_u32(v60) & 0x80000000) != 0))
    {
      v67 = v21[3];
      v68 = v67;
      if ((v24 & 4) != 0)
      {
        goto LABEL_61;
      }

LABEL_77:
      v160 = *(v20 + 16);
      v161 = *(v20 + 32);
      v162 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v161, v161), v161, 0xCuLL), vnegq_f32(v160)), v161, vextq_s8(vuzp1q_s32(v160, v160), v160, 0xCuLL));
      v163 = vmulq_f32(vextq_s8(vuzp1q_s32(v162, v162), v162, 0xCuLL), *v20);
      _NF = (v163.f32[2] + vaddv_f32(*v163.f32)) < 0.0;
      v164 = 1.0;
      if (_NF)
      {
        v164 = -1.0;
      }

      v165 = vmulq_f32(*v20, *v20);
      v166 = vmulq_f32(v160, v160);
      v167 = vadd_f32(vzip1_s32(*v165.i8, *v166.i8), vzip2_s32(*v165.i8, *v166.i8));
      v168 = vextq_s8(v165, v165, 8uLL);
      *v168.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v168.f32, *&vextq_s8(v166, v166, 8uLL)), v167));
      v169 = vmulq_f32(v161, v161);
      v168.i32[2] = sqrtf(v169.f32[2] + vaddv_f32(*v169.f32));
      v140 = vmulq_n_f32(v168, v164);
      goto LABEL_80;
    }

    v61 = vdivq_f32(v48, vdupq_lane_s32(*v58.f32, 0));
    v62 = vdivq_f32(v47, vdupq_lane_s32(*v58.f32, 1));
    v63 = vdivq_f32(v49, vdupq_laneq_s32(v58, 2));
    v64 = v63.f32[2] + (*v61.i32 + v62.f32[1]);
    if (v64 > 0.0)
    {
      *v63.f32 = vsub_f32(*&vzip2q_s32(v62, vuzp1q_s32(v62, v63)), *&vtrn2q_s32(v63, vzip2q_s32(v63, v61)));
      v63.f32[2] = *&v61.i32[1] - v62.f32[0];
      v65 = v64 + 1.0;
      v63.f32[3] = v64 + 1.0;
      goto LABEL_60;
    }

    if (*v61.i32 <= v62.f32[1] || *v61.i32 <= v63.f32[2])
    {
      if (v62.f32[1] > v63.f32[2])
      {
        v74 = v62;
        v74.f32[1] = (v62.f32[1] + 1.0) - *v61.i32;
        v74.i32[3] = v63.i32[0];
        v75 = vzip2q_s32(vzip1q_s32(v61, v63), vtrn1q_s32(v63, v61));
        v62 = vaddq_f32(v62, v75);
        v76 = vsubq_f32(v74, v75);
        v63 = vtrn2q_s32(vrev64q_s32(v62), v76);
        v65 = *&v76.i32[1];
        goto LABEL_60;
      }

      *v63.f32 = vadd_f32(*v63.f32, *&vzip2q_s32(v61, v62));
      v65 = ((v63.f32[2] + 1.0) - *v61.i32) - v62.f32[1];
      v63.f32[2] = v65;
      v82 = *&v61.i32[1] - v62.f32[0];
    }

    else
    {
      v65 = ((*v61.i32 + 1.0) - v62.f32[1]) - v63.f32[2];
      *&v80 = v62.f32[0] + *&v61.i32[1];
      v81 = v63.f32[0] + *&v61.i32[2];
      v82 = v62.f32[2] - v63.f32[1];
      v63.i64[0] = __PAIR64__(v80, LODWORD(v65));
      v63.f32[2] = v81;
    }

    v63.f32[3] = v82;
LABEL_60:
    v62.i32[0] = 0;
    v113 = vmulq_n_f32(v63, 0.5 / sqrtf(v65));
    v114 = vmvnq_s8(vceqq_f32(v113, v113));
    v114.i32[0] = vmaxvq_u32(v114);
    v67 = v21[3];
    v68 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v62, v114), 0), v67, v113);
    if ((v24 & 4) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_77;
  }

  v201.i32[2] = 0;
  v201.i64[0] = 0;
  C3DNodeGetWorldPosition(v15[8].i64[1], &v201);
  v200[0].n128_u32[2] = 0;
  v200[0].n128_u64[0] = 0;
  C3DNodeGetWorldPosition(a3, v200);
  v194 = vmlaq_n_f32(v200[0], vsubq_f32(vaddq_f32(v201, v15[10]), v200[0]), a5);
  v24 = v15[9].i8[0];
  if ((v24 & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  v25 = C3DNodeGetWorldMatrix(v15[8].i64[1], v23);
  v28 = *v25;
  v27 = *(v25 + 16);
  v29 = *(v25 + 32);
  v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), vnegq_f32(v27)), v29, vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL));
  v31 = vmulq_f32(*v25, vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL));
  _NF = (v31.f32[2] + vaddv_f32(*v31.f32)) < 0.0;
  v33 = 1.0;
  if (_NF)
  {
    v33 = -1.0;
  }

  v34 = vmulq_f32(v28, v28);
  v35 = vmulq_f32(v27, v27);
  v36 = vadd_f32(vzip1_s32(*v34.i8, *v35.i8), vzip2_s32(*v34.i8, *v35.i8));
  v37 = vextq_s8(v34, v34, 8uLL);
  *v37.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v37.f32, *&vextq_s8(v35, v35, 8uLL)), v36));
  v38 = vmulq_f32(v29, v29);
  v37.i32[2] = sqrtf(v38.f32[2] + vaddv_f32(*v38.f32));
  v39 = vmulq_n_f32(v37, v33);
  v40 = vceqzq_f32(v39);
  v40.i32[3] = v40.i32[2];
  if ((vmaxvq_u32(v40) & 0x80000000) != 0 || (v41 = vmvnq_s8(vorrq_s8(vcltzq_f32(v39), vcgezq_f32(v39))), v41.i32[3] = v41.i32[2], (vmaxvq_u32(v41) & 0x80000000) != 0))
  {
    v66 = v21[3];
    v192 = v66;
    goto LABEL_45;
  }

  v42 = vdivq_f32(v28, vdupq_lane_s32(*v39.f32, 0));
  v43 = vdivq_f32(v27, vdupq_lane_s32(*v39.f32, 1));
  v44 = vdivq_f32(v29, vdupq_laneq_s32(v39, 2));
  v45 = v44.f32[2] + (*v42.i32 + v43.f32[1]);
  if (v45 <= 0.0)
  {
    if (*v42.i32 <= v43.f32[1] || *v42.i32 <= v44.f32[2])
    {
      if (v43.f32[1] > v44.f32[2])
      {
        v70 = v43;
        v70.f32[1] = (v43.f32[1] + 1.0) - *v42.i32;
        v70.i32[3] = v44.i32[0];
        v71 = vzip2q_s32(vzip1q_s32(v42, v44), vtrn1q_s32(v44, v42));
        v43 = vaddq_f32(v43, v71);
        v72 = vsubq_f32(v70, v71);
        v44 = vtrn2q_s32(vrev64q_s32(v43), v72);
        v46 = *&v72.i32[1];
        goto LABEL_44;
      }

      *v44.f32 = vadd_f32(*v44.f32, *&vzip2q_s32(v42, v43));
      v46 = ((v44.f32[2] + 1.0) - *v42.i32) - v43.f32[1];
      v44.f32[2] = v46;
      v79 = *&v42.i32[1] - v43.f32[0];
    }

    else
    {
      v46 = ((*v42.i32 + 1.0) - v43.f32[1]) - v44.f32[2];
      *&v77 = v43.f32[0] + *&v42.i32[1];
      v78 = v44.f32[0] + *&v42.i32[2];
      v79 = v43.f32[2] - v44.f32[1];
      v44.i64[0] = __PAIR64__(v77, LODWORD(v46));
      v44.f32[2] = v78;
    }

    v44.f32[3] = v79;
    goto LABEL_44;
  }

  *v44.f32 = vsub_f32(*&vzip2q_s32(v43, vuzp1q_s32(v43, v44)), *&vtrn2q_s32(v44, vzip2q_s32(v44, v42)));
  v44.f32[2] = *&v42.i32[1] - v43.f32[0];
  v46 = v45 + 1.0;
  v44.f32[3] = v45 + 1.0;
LABEL_44:
  v43.i32[0] = 0;
  v83 = vmulq_n_f32(v44, 0.5 / sqrtf(v46));
  v84 = vmvnq_s8(vceqq_f32(v83, v83));
  v84.i32[0] = vmaxvq_u32(v84);
  v192 = v21[3];
  v66 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v43, v84), 0), v192, v83);
LABEL_45:
  v189 = v66;
  v85 = C3DNodeGetWorldMatrix(a3, v26);
  v87 = *v85;
  v86 = *(v85 + 16);
  v88 = *(v85 + 32);
  v89 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL), vnegq_f32(v86)), v88, vextq_s8(vuzp1q_s32(v86, v86), v86, 0xCuLL));
  v90 = vmulq_f32(*v85, vextq_s8(vuzp1q_s32(v89, v89), v89, 0xCuLL));
  _NF = (v90.f32[2] + vaddv_f32(*v90.f32)) < 0.0;
  v91 = 1.0;
  if (_NF)
  {
    v91 = -1.0;
  }

  v92 = vmulq_f32(v87, v87);
  v93 = vmulq_f32(v86, v86);
  v94 = vadd_f32(vzip1_s32(*v92.i8, *v93.i8), vzip2_s32(*v92.i8, *v93.i8));
  v95 = vextq_s8(v92, v92, 8uLL);
  *v95.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v95.f32, *&vextq_s8(v93, v93, 8uLL)), v94));
  v96 = vmulq_f32(v88, v88);
  v95.i32[2] = sqrtf(v96.f32[2] + vaddv_f32(*v96.f32));
  v97 = vmulq_n_f32(v95, v91);
  v98 = vceqzq_f32(v97);
  v98.i32[3] = v98.i32[2];
  v67 = v192;
  _Q6 = v192;
  if ((vmaxvq_u32(v98) & 0x80000000) == 0)
  {
    v100 = vmvnq_s8(vorrq_s8(vcltzq_f32(v97), vcgezq_f32(v97)));
    v100.i32[3] = v100.i32[2];
    _Q6 = v192;
    if ((vmaxvq_u32(v100) & 0x80000000) == 0)
    {
      v101 = vdivq_f32(v87, vdupq_lane_s32(*v97.f32, 0));
      v102 = vdivq_f32(v86, vdupq_lane_s32(*v97.f32, 1));
      v103 = vdivq_f32(v88, vdupq_laneq_s32(v97, 2));
      v104 = v103.f32[2] + (*v101.i32 + v102.f32[1]);
      if (v104 > 0.0)
      {
        *v103.f32 = vsub_f32(*&vzip2q_s32(v102, vuzp1q_s32(v102, v103)), *&vtrn2q_s32(v103, vzip2q_s32(v103, v101)));
        v103.f32[2] = *&v101.i32[1] - v102.f32[0];
        v105 = v104 + 1.0;
        v103.f32[3] = v104 + 1.0;
LABEL_70:
        v102.i32[0] = 0;
        v141 = vmulq_n_f32(v103, 0.5 / sqrtf(v105));
        v142 = vmvnq_s8(vceqq_f32(v141, v141));
        v142.i32[0] = vmaxvq_u32(v142);
        _Q6 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v102, v142), 0), v192, v141);
        goto LABEL_71;
      }

      if (*v101.i32 <= v102.f32[1] || *v101.i32 <= v103.f32[2])
      {
        if (v102.f32[1] > v103.f32[2])
        {
          v107 = v102;
          v107.f32[1] = (v102.f32[1] + 1.0) - *v101.i32;
          v107.i32[3] = v103.i32[0];
          v108 = vzip2q_s32(vzip1q_s32(v101, v103), vtrn1q_s32(v103, v101));
          v102 = vaddq_f32(v102, v108);
          v109 = vsubq_f32(v107, v108);
          v103 = vtrn2q_s32(vrev64q_s32(v102), v109);
          v105 = *&v109.i32[1];
          goto LABEL_70;
        }

        *v103.f32 = vadd_f32(*v103.f32, *&vzip2q_s32(v101, v102));
        v105 = ((v103.f32[2] + 1.0) - *v101.i32) - v102.f32[1];
        v103.f32[2] = v105;
        v112 = *&v101.i32[1] - v102.f32[0];
      }

      else
      {
        v105 = ((*v101.i32 + 1.0) - v102.f32[1]) - v103.f32[2];
        *&v110 = v102.f32[0] + *&v101.i32[1];
        v111 = v103.f32[0] + *&v101.i32[2];
        v112 = v102.f32[2] - v103.f32[1];
        v103.i64[0] = __PAIR64__(v110, LODWORD(v105));
        v103.f32[2] = v111;
      }

      v103.f32[3] = v112;
      goto LABEL_70;
    }
  }

LABEL_71:
  v143 = v15[12];
  v144 = v189;
  v144.i32[3] = v189.i32[0];
  v145 = vzip1q_s32(v143, v143);
  v145.i32[0] = v15[12].i64[1];
  _Q3 = vuzp1q_s32(v143, v143);
  _Q3.i32[0] = HIDWORD(v15[12].i64[0]);
  v147 = vmlsq_f32(vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(v144, vextq_s8(vdupq_laneq_s32(v143, 3), v143, 4uLL)), xmmword_21C27FD00), v143, v189, 3), xmmword_21C27FD00, vmulq_f32(vextq_s8(vextq_s8(v189, v189, 0xCuLL), v189, 8uLL), v145)), _Q3, vextq_s8(vuzp1q_s32(v189, v189), v189, 0xCuLL));
  _Q0 = vmulq_f32(_Q6, v147);
  _S2 = v147.i32[2];
  __asm { FMLA            S0, S2, V6.S[2] }

  _Q3.i32[0] = v147.i32[3];
  v152 = -(_Q0.f32[0] + (_Q6.f32[3] * v147.f32[3]));
  __asm { FMLA            S0, S3, V6.S[3] }

  _Q3.i64[0] = 0;
  v154 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(_Q3, _Q0), 0), vnegq_f32(v147), v147);
  if (_Q0.f32[0] < 0.0)
  {
    _Q0.f32[0] = v152;
  }

  if (1.0 - _Q0.f32[0] <= 0.00100000005)
  {
    v158 = 1.0 - a5;
    v159 = a5;
  }

  else
  {
    v188 = v154;
    v191 = _Q6;
    v155 = acosf(_Q0.f32[0]);
    v156 = sinf(v155);
    v186 = sinf((1.0 - a5) * v155) / v156;
    v157 = sinf(v155 * a5);
    v158 = v186;
    v154 = v188;
    _Q6 = v191;
    v67 = v192;
    v159 = v157 / v156;
  }

  v68 = vmlaq_n_f32(vmulq_n_f32(v154, v159), _Q6, v158);
  if ((v15[9].i8[0] & 4) == 0)
  {
    goto LABEL_77;
  }

LABEL_61:
  v193 = v68;
  v115 = C3DNodeGetWorldMatrix(v15[8].i64[1], v23);
  v116 = *(v115 + 16);
  v117 = *(v115 + 32);
  v118 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v117, v117), v117, 0xCuLL), vnegq_f32(v116)), v117, vextq_s8(vuzp1q_s32(v116, v116), v116, 0xCuLL));
  v119 = vextq_s8(vuzp1q_s32(v118, v118), v118, 0xCuLL);
  v120 = vmulq_f32(v119, *v115);
  v121 = vmulq_f32(*v115, *v115);
  v122 = vmulq_f32(v116, v116);
  *v119.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v121, v121, 8uLL), *&vextq_s8(v122, v122, 8uLL)), vadd_f32(vzip1_s32(*v121.i8, *v122.i8), vzip2_s32(*v121.i8, *v122.i8))));
  v123 = vmulq_f32(v117, v117);
  v119.i32[2] = sqrtf(v123.f32[2] + vaddv_f32(*v123.f32));
  v187 = v119;
  v190 = v120;
  v125 = C3DNodeGetWorldMatrix(a3, v124);
  v68 = v193;
  v126 = *(v125 + 16);
  v127 = *(v125 + 32);
  v128 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v127, v127), v127, 0xCuLL), vnegq_f32(v126)), v127, vextq_s8(vuzp1q_s32(v126, v126), v126, 0xCuLL));
  v129 = vmulq_f32(vextq_s8(vuzp1q_s32(v128, v128), v128, 0xCuLL), *v125);
  v130 = vcltz_f32(vadd_f32(vzip1_s32(*&vextq_s8(v129, v129, 8uLL), *&vextq_s8(v190, v190, 8uLL)), vadd_f32(vzip1_s32(*v129.i8, *v190.i8), vzip2_s32(*v129.i8, *v190.i8))));
  if (v130.i8[4])
  {
    v131 = -1.0;
  }

  else
  {
    v131 = 1.0;
  }

  v132 = vmulq_n_f32(v187, v131);
  if (v130.i8[0])
  {
    v133 = -1.0;
  }

  else
  {
    v133 = 1.0;
  }

  v134 = vmulq_f32(*v125, *v125);
  v135 = vmulq_f32(v126, v126);
  v136 = vadd_f32(vzip1_s32(*v134.i8, *v135.i8), vzip2_s32(*v134.i8, *v135.i8));
  v137 = vextq_s8(v134, v134, 8uLL);
  *v137.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v137.f32, *&vextq_s8(v135, v135, 8uLL)), v136));
  v138 = vmulq_f32(v127, v127);
  v137.i32[2] = sqrtf(v138.f32[2] + vaddv_f32(*v138.f32));
  v139 = vmulq_n_f32(v137, v133);
  v140 = vmlaq_n_f32(v139, vsubq_f32(vmulq_f32(v15[11], v132), v139), a5);
  v67 = v21[3];
LABEL_80:
  v170 = 0;
  v171 = *v21;
  v172 = v21[1];
  v173 = vmulq_f32(v68, v68);
  v174 = vaddq_f32(v173, v173);
  v175 = vmulq_laneq_f32(v68, v68, 3);
  v176 = vmuls_lane_f32(v68.f32[0], *v68.f32, 1);
  v171.f32[0] = (1.0 - v174.f32[1]) - v174.f32[2];
  v177 = vmuls_lane_f32(v68.f32[1], v68, 2);
  v171.f32[1] = (v176 + v175.f32[2]) + (v176 + v175.f32[2]);
  v178 = vmuls_lane_f32(v68.f32[0], v68, 2);
  v171.f32[2] = (v178 - v175.f32[1]) + (v178 - v175.f32[1]);
  v172.f32[0] = (v176 - v175.f32[2]) + (v176 - v175.f32[2]);
  v174.f32[0] = 1.0 - v174.f32[0];
  v172.f32[1] = v174.f32[0] - v174.f32[2];
  v172.f32[2] = (v177 + v175.f32[0]) + (v177 + v175.f32[0]);
  v179 = v21[2];
  v179.f32[0] = (v178 + v175.f32[1]) + (v178 + v175.f32[1]);
  v179.f32[1] = (v177 - v175.f32[0]) + (v177 - v175.f32[0]);
  v179.f32[2] = v174.f32[0] - v174.f32[1];
  v180 = vaddq_f32(v194, v67);
  v180.i32[3] = v67.i32[3];
  v200[0] = vmulq_n_f32(v171, v140.f32[0]);
  v200[1] = vmulq_lane_f32(v172, *v140.f32, 1);
  v200[2] = vmulq_laneq_f32(v179, v140, 2);
  v200[3] = v180;
  v201 = 0u;
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  do
  {
    *(&v201 + v170 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v198, COERCE_FLOAT(*&v200[v170])), v197, v200[v170].n128_u64[0], 1), v196, v200[v170], 2), v195, v200[v170], 3);
    ++v170;
  }

  while (v170 != 4);
  Target = C3DModelTargetGetTarget(a4, v23);
  TargetAddress = C3DModelTargetGetTargetAddress(a4, v182);
  v185 = C3DSizeOfBaseType(11, v184);
  C3DSetValue(Target, TargetAddress, &v201, v185, *(a4 + 34), *(a4 + 35));
  return 1;
}

uint64_t C3DConstraintCreateReplicator(uint64_t a1, uint64_t a2)
{
  if (C3DConstraintReplicatorGetTypeID_onceToken != -1)
  {
    C3DConstraintReplicatorGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintReplicatorGetTypeID_typeID, 192);
  *(Instance + 72) = 1065353216;
  *(Instance + 76) = 1;
  *(Instance + 77) = C3DWasLinkedBeforeMajorOSYear2017() ^ 1;
  *(Instance + 144) = 7;
  __asm { FMOV            V1.4S, #1.0 }

  *(Instance + 160) = 0u;
  *(Instance + 176) = _Q1;
  *(Instance + 192) = *(MEMORY[0x277D860B8] + 48);
  *(Instance + 88) = C3DConstraintApplyReplicator;
  *(Instance + 96) = C3DConstraintReplicatorCopyTargetPath;
  return Instance;
}

void _C3DConstraintLookAtCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 136) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

void _C3DConstraintBillboardCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }
}

void _C3DConstraintIKCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 176) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

void _C3DConstraintDistanceCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 136) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

CFStringRef _C3DConstraintDistanceCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintDistance>");
}

CFStringRef _C3DConstraintDistanceCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintDistance>");
}

void _C3DConstraintAccelerationCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }
}

CFStringRef _C3DConstraintAccelerationCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintAcceleration>");
}

CFStringRef _C3DConstraintAccelerationCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintAcceleration>");
}

void _C3DConstraintReplicatorCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 136) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

CFStringRef _C3DConstraintReplicatorCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintReplicator>");
}

CFStringRef _C3DConstraintReplicatorCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintReplicator>");
}

C3D::DrawNodesPass *C3D::ManipulatorPass::ManipulatorPass(C3D::ManipulatorPass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  v5 = 0;
  v7 = 0u;
  v8 = 0x20000;
  memset(v4, 0, sizeof(v4));
  v6 = -1;
  BYTE8(v7) = 1;
  result = C3D::DrawNodesPass::DrawNodesPass(this, a2, a3, v4);
  *result = &unk_282DC7EE8;
  return result;
}

void C3D::ManipulatorPass::setup(C3D::ManipulatorPass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 2u);
  v2 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v2 + 8) = "COLOR";
  C3D::Pass::parentColorDesc(&v8, this);
  *(v2 + 16) = v8;
  *(v2 + 32) = v9;
  *(v2 + 66) = *(v2 + 66) & 0xFF78 | 0x85;
  v3 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v3 + 8) = "COLOR";
  *(v3 + 65) = 0;
  C3D::Pass::parentColorDesc(&v8, this);
  *(v3 + 16) = v8;
  *(v3 + 32) = v9;
  *(v3 + 66) = *(v3 + 66) & 0xFFFC | 1;
  v4 = C3D::PassDescriptor::outputAtIndex((this + 32), 1);
  *(v4 + 8) = "DEPTH";
  C3D::Pass::parentDepthDesc(&v8, this);
  *(v4 + 16) = v8;
  *(v4 + 32) = v9;
  v5 = *(v4 + 66) & 0xFFFC;
  *(v4 + 64) = 2;
  *(v4 + 66) = v5 | 0xA;
  *(this + 296) = 0;
  *(this + 31) = C3DEngineContextGetPointOfView(*(this + 2), v6);
  *(this + 303) = 256;
  *(this + 119) = 1;
  *(this + 5368) = 0;
  *(this + 11) = 4;
  C3D::DrawNodesPass::setup(this, v7);
}

void C3D::ManipulatorPass::compile(C3D::ManipulatorPass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v4 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  v5 = *(v4 + 28);
  v6 = C3D::Pass::resource(this);
  v7 = [*C3D::PassResource::outputAtIndex(v6 1)];
  v8 = [(SCNMTLRenderContext *)RenderContext reverseZ]| (2 * *(v4 + 31));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v5)));
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ v7)));
  v11 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xF05FE8936EBFFF1DLL * (v10 ^ (v10 >> 47))) ^ ((0xF05FE8936EBFFF1DLL * (v10 ^ (v10 >> 47))) >> 47))));
  v12 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v11 ^ (v11 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v11 ^ (v11 >> 47))) >> 47));
  *(this + 670) = v12;
  if (!v12)
  {
    operator new();
  }

  C3D::DrawNodesPass::compile(this, v13);
}

void C3D::ManipulatorPass::execute(uint64_t a1, SCNMTLRenderCommandEncoder **a2)
{
  if (*(a1 + 5368) == 1)
  {
    [(*a2)->var24[1] setDepthStencilState:{C3D::SmartPtr<SCNMTLRenderPipeline *, C3D::detail::NSRetainFct, C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 5360) + 16, a2)}];
    v4 = *a2;
    v6 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 5360) + 24 :v5) detail:"state" :?NSRetainFct];
    if (v4->var23 != v6)
    {
      v4->var23 = v6;
      [v4->var24[1] setRenderPipelineState:v6];
    }

    v7 = *a2;
    v8 = C3D::Pass::inputTextureAtIndex(a1, 0);
    SCNMTLRenderCommandEncoder::setFragmentTexture(v7, v8, 0);
    SCNMTLRenderCommandEncoder::drawFullScreenTriangle(*a2, v9);
  }

  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 16), a2);
  v11 = C3DRasterizerStatesDefault();
  v12 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  v13 = [(SCNMTLRenderContext *)RenderContext reverseZ];
  [(*a2)->var24[1] setDepthStencilState:{-[SCNMTLResourceManager renderResourceForRasterizerState:reverseZ:](v12, v11, v13)}];
  [SCNMTLRenderContext setRasterizerStates:?];

  C3D::DrawNodesPass::execute(a1, a2);
}

uint64_t C3D::ManipulatorPass::setColorInput(C3D::ManipulatorPass *this, const C3D::PassIODescriptor *a2)
{
  v4 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  v5 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  v6 = C3D::PassDescriptor::outputAtIndex((this + 32), 1);
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), v7);
  result = [(SCNMTLRenderContext *)RenderContext sampleCount];
  if (result < 2)
  {
    *(v5 + 31) = 0;
    *(v5 + 24) = 2;
    *(v6 + 31) = 0;
    *(v6 + 24) = 2;
  }

  else
  {
    v10 = *(a2 + 31);
    *(v5 + 31) = [(SCNMTLRenderContext *)RenderContext sampleCount];
    *(v5 + 24) = 4;
    result = [(SCNMTLRenderContext *)RenderContext sampleCount];
    *(v6 + 31) = result;
    *(v6 + 24) = 4;
    if (v10 <= 1)
    {
      v11 = *(a2 + 1);
      v12 = *(a2 + 2);
      v13 = *(a2 + 3);
      *(v4 + 64) = *(a2 + 4);
      v14 = *a2;
      *(v4 + 32) = v12;
      *(v4 + 48) = v13;
      *v4 = v14;
      *(v4 + 16) = v11;
      *(v4 + 66) &= ~0x80u;
      *(v5 + 66) &= 0xFFFCu;
      *(this + 5368) = 1;
    }
  }

  if ((*(v4 + 66) & 0x80) != 0)
  {
    *(v4 + 31) = *(v5 + 31);
    *(v4 + 24) = *(v5 + 24);
  }

  return result;
}

void C3D::ManipulatorPassResource::~ManipulatorPassResource(C3D::ManipulatorPassResource *this)
{
  *this = &unk_282DC7F78;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }
}

{
  *this = &unk_282DC7F78;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }

  JUMPOUT(0x21CF07610);
}

void _C3DConstraintManagerCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

CFStringRef _C3DConstraintManagerCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintManagerRef>");
}

CFStringRef _C3DConstraintManagerCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintManagerRef>");
}

uint64_t __C3DConstraintManagerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DConstraintManagerGetTypeID_typeID = result;
  return result;
}

uint64_t C3DConstraintManagerCreate(uint64_t a1)
{
  if (C3DConstraintManagerGetTypeID_onceToken != -1)
  {
    C3DConstraintManagerCreate_cold_1();
  }

  result = C3DTypeCreateInstance_(C3DConstraintManagerGetTypeID_typeID, 24);
  *(result + 24) = a1;
  return result;
}

void C3DConstraintManagerSetConstraintsForKey(_BOOL8 AnimationNodeForKey_cold_3, const __CFArray *a2, void *a3, const char *a4)
{
  v6 = AnimationNodeForKey_cold_3;
  v113 = *MEMORY[0x277D85DE8];
  if (!AnimationNodeForKey_cold_3 && (v7 = scn_default_log(0, a2), AnimationNodeForKey_cold_3 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v7, a2, v8, v9, v10, v11, v12, v13);
    if (a4)
    {
      goto LABEL_6;
    }
  }

  else if (a4)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log(AnimationNodeForKey_cold_3, a2);
  AnimationNodeForKey_cold_3 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);
  if (AnimationNodeForKey_cold_3)
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v14, a2, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  if (!v6)
  {
    v21 = scn_default_log(AnimationNodeForKey_cold_3, a2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_1(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  v29 = *(v6 + 16);
  if (!v29)
  {
    v29 = C3DOrderedDictionaryCreate();
    *(v6 + 16) = v29;
  }

  Value = C3DOrderedDictionaryGetValue(v29, a4);
  v105 = v6;
  v103 = a4;
  if (Value)
  {
    v32 = Value;
    CurrentlyCommittedDuration = C3DTransactionGetCurrentlyCommittedDuration();
    if (CurrentlyCommittedDuration > 0.0)
    {
      v34 = CurrentlyCommittedDuration;
      Count = CFArrayGetCount(v32);
      ModelValueStorage = C3DSceneGetModelValueStorage(*(v6 + 24), v36);
      Mutable = CFSetCreateMutable(0, Count, 0);
      if (Count >= 1)
      {
        v38 = 0;
        v39 = v34;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v32, v38);
          v41 = *(ValueAtIndex + 4);
          TargetAddress = C3DModelTargetGetTargetAddress(v41, v42);
          if (!CFSetContainsValue(Mutable, TargetAddress))
          {
            BaseType = C3DModelTargetGetBaseType(v41, v44);
            if (BaseType == 11)
            {
              CFSetAddValue(Mutable, TargetAddress);
              AnimationManager = C3DSceneGetAnimationManager(*(v105 + 24), v47);
              memset(&buf, 0, sizeof(buf));
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              v48 = *TargetAddress;
              v49 = TargetAddress[1];
              v50 = TargetAddress[3];
              v110 = TargetAddress[2];
              v111 = v50;
              v108 = v48;
              v109 = v49;
              C3DModelValueStorageUpdatePresentationValueFromModelValue(ModelValueStorage, *(ValueAtIndex + 5));
              C3DAnimationManagerApplyAnimationsForTarget(AnimationManager, v41);
              memset(&v107.columns[2], 0, 32);
              memset(&v107, 0, 32);
              v51 = *TargetAddress;
              v52 = *(TargetAddress + 1);
              v53 = *(TargetAddress + 3);
              v107.columns[2] = TargetAddress[2];
              v107.columns[3] = v53;
              v107.columns[0] = v51;
              v107.columns[1] = v52;
              C3DMatrix4x4Invert(&v107, &buf);
              C3DMatrix4x4Mult(&buf, &v108, &buf);
              v54 = C3DValueCreate(11, 1);
              v55 = C3DValueCreate(11, 1);
              C3DValueInitFrom(v54, &buf);
              Identity = C3DMatrix4x4GetIdentity();
              C3DValueInitFrom(v55, Identity);
              v57 = C3DSimpleAnimationCreate();
              C3DAnimationSetAdditive(v57, 1);
              C3DAnimationSetRemoveOnCompletion(v57, 1);
              C3DAnimationSetDuration(v57, v58, v39);
              C3DTransactionGetCurrentlyCommittedTimingFunction();
              C3DAnimationSetTimingFunction(v57, v59);
              C3DSimpleAnimationSetStartValue(v57, v54);
              C3DSimpleAnimationSetEndValue(v57, v55);
              CFRelease(v54);
              CFRelease(v55);
              C3DAnimationManagerAddAnimationForKey(AnimationManager, v57, v41, *(ValueAtIndex + 3), @"__controller");
              CFRelease(v57);
            }

            else
            {
              v60 = scn_default_log(BaseType, v46);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
              {
                v62 = C3DModelTargetGetBaseType(v41, v61);
                buf.columns[0].i32[0] = 67109120;
                buf.columns[0].i32[1] = v62;
                _os_log_impl(&dword_21BEF7000, v60, OS_LOG_TYPE_DEFAULT, "Warning: unsupported ease out for contraint applied on base type %d", &buf, 8u);
              }
            }
          }

          ++v38;
        }

        while (Count != v38);
      }

      CFRelease(Mutable);
      a4 = v103;
      v6 = v105;
    }

    Value = C3DOrderedDictionaryGetValue(*(v6 + 16), a4);
    if (Value)
    {
      v63 = Value;
      v64 = CFArrayGetCount(Value);
      v66 = C3DSceneGetModelValueStorage(*(v6 + 24), v65);
      if (v64 >= 1)
      {
        v67 = v66;
        for (i = 0; i != v64; ++i)
        {
          v69 = CFArrayGetValueAtIndex(v63, i);
          C3DModelValueStorageUpdatePresentationValueFromModelValue(v67, v69[5]);
          C3DModelValueStorageReleaseModelValue(v67, v69[5]);
        }
      }

      Value = C3DOrderedDictionaryRemoveValue(*(v6 + 16), a4);
    }
  }

  if (a2)
  {
    if (!a3)
    {
      v70 = scn_default_log(Value, v31);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
      {
        _C3DAnimationManagerAddAnimationNode_cold_3(v70, v71, v72, v73, v74, v75, v76, v77);
      }
    }

    v78 = CFArrayGetCount(a2);
    v79 = CFArrayCreateMutable(0, v78, MEMORY[0x277CBF128]);
    v81 = C3DSceneGetModelValueStorage(*(v6 + 24), v80);
    if (v78 >= 1)
    {
      v82 = v81;
      for (j = 0; j != v78; ++j)
      {
        v84 = CFArrayGetValueAtIndex(a2, j);
        TargetModelPath = C3DConstraintGetTargetModelPath(v84, v85);
        if (!TargetModelPath)
        {
          v88 = scn_default_log(0, v86);
          if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
          {
            C3DConstraintManagerSetConstraintsForKey_cold_5(&buf, (buf.columns[0].i64 + 4), v88);
          }
        }

        v89 = C3DCFTypeCopyModelInfoAtPath(a3, TargetModelPath, 0);
        v90 = C3DConstraintControllerCreate(v84, a3, v89);
        v90[5] = C3DModelValueStorageAddAndRetainModelValue(v82, v89);
        CFArrayAppendValue(v79, v90);
        CFRelease(v90);
        CFRelease(v89);
        if ((C3DTransactionGetDisableActions() & 1) != 0 || (v92 = C3DTransactionGetCurrentlyCommittedDuration(), v92 <= 0.0))
        {
          *(v90 + 12) = 1065353216;
        }

        else
        {
          v93 = v92;
          v94 = C3DSceneGetAnimationManager(*(v6 + 24), v91);
          v108.i32[0] = 1065353216;
          v95 = C3DValueCreate(1, 1);
          C3DValueInitFrom(v95, &v108);
          v96 = C3DSimpleAnimationCreate();
          C3DAnimationSetCommitWhenDone(v96, 1);
          v97 = v93;
          C3DAnimationSetDuration(v96, v98, v97);
          C3DTransactionGetCurrentlyCommittedTimingFunction();
          C3DAnimationSetTimingFunction(v96, v99);
          C3DSimpleAnimationSetEndValue(v96, v95);
          CFRelease(v95);
          v100 = C3DModelTargetCreate(v90, (v90 + 6), 1, 0);
          C3DAnimationManagerAddAnimationForKey(v94, v96, v100, v90, @"__controller");
          v101 = v96;
          v6 = v105;
          CFRelease(v101);
          CFRelease(v100);
        }
      }
    }

    C3DOrderedDictionarySetValue(*(v6 + 16), v103, v79);
    CFRelease(v79);
  }
}

BOOL C3DConstraintManagerApply(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    C3DOrderedDictionaryApplyFunction(*(a1 + 16), _C3DConstraintManagerApplyFunc, a1);
  }

  return v11 != 0;
}

void _C3DConstraintManagerApplyFunc(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  ModelValueStorage = C3DSceneGetModelValueStorage(*(a3 + 24), a2);
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
      v10 = *(ValueAtIndex + 2);
      if (*(v10 + 76) != 1)
      {
        goto LABEL_14;
      }

      v11 = ValueAtIndex[12] * *(v10 + 72);
      if (v11 <= 0.0)
      {
        goto LABEL_14;
      }

      Incremental = C3DConstraintGetIncremental(v10);
      if (Incremental)
      {
        break;
      }

      if (!C3DNodeGetHasPhysicsBody(*(ValueAtIndex + 3), v12) || !C3DNodePhysicsBodyIsDynamic(*(ValueAtIndex + 3)))
      {
        C3DModelValueStorageUpdatePresentationValueInNeeded(ModelValueStorage, *(ValueAtIndex + 5));
LABEL_12:
        if ((Incremental & C3DConstraintApply(v4, ValueAtIndex, *(ValueAtIndex + 3), *(ValueAtIndex + 4), v11)) == 1)
        {
          C3DModelValueStorageUpdateModelValueFromPresentationValue(ModelValueStorage, *(ValueAtIndex + 5));
        }

        goto LABEL_14;
      }

      if ((C3DNodePhysicsBodyIsAtRest(*(ValueAtIndex + 3)) & 1) == 0)
      {
        break;
      }

LABEL_14:
      if (v7 == ++v8)
      {
        return;
      }
    }

    C3DModelValueStorageUpdateTimestamp(ModelValueStorage, *(ValueAtIndex + 5));
    goto LABEL_12;
  }
}

CFIndex __C3DConstraintManagerAppendAuthoringInfo(int a1, CFArrayRef theArray)
{
  result = CFArrayGetCount(theArray);
  if (result >= 1)
  {
    v4 = result;
    for (i = 0; i != v4; ++i)
    {
      result = *(CFArrayGetValueAtIndex(theArray, i) + 2);
      if (*(result + 76) == 1 && *(result + 72) > 0.0)
      {
        result = C3DContraintAppendAuthoringInfo(result);
      }
    }
  }

  return result;
}

void *C3DConstraintManagerAppendAuthoringInfo(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 16);
  if (result)
  {
    v13[0] = a2;
    v13[1] = a1;
    return C3DOrderedDictionaryApplyFunction(result, __C3DConstraintManagerAppendAuthoringInfo, v13);
  }

  return result;
}

C3D::DrawNodesPass *C3D::MainPass::MainPass(C3D::MainPass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  *&v10.var0 = 16843009;
  *&v10.var4 = 1;
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v6 = xmmword_21C27FD10;
  v7 = 1;
  v8 = 0;
  v9 = 2;
  result = C3D::ScenePass::ScenePass(this, a2, a3, &v10, v4);
  *result = &unk_282DC7FB8;
  *(result + 681) = 0;
  *(result + 5365) = 1;
  return result;
}

uint64_t C3D::MainPass::setup(C3D::MainPass *this, uint64_t a2)
{
  Scene = C3DEngineContextGetScene(*(this + 2), a2);
  PointOfView = C3DEngineContextGetPointOfView(*(this + 2), v4);
  if (!PointOfView)
  {
    if ((C3DEngineContextIsTemporalAntialiasingEnabled(*(this + 2)) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v9 = 1;
    goto LABEL_8;
  }

  Camera = C3DNodeGetCamera(PointOfView, v6);
  if (C3DEngineContextIsTemporalAntialiasingEnabled(*(this + 2)))
  {
    goto LABEL_7;
  }

  if (!Camera)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v9 = 0;
  if (C3DCameraGetMotionBlurIntensity(Camera, v8) > 0.0)
  {
LABEL_8:
    *(this + 149) |= 8u;
  }

LABEL_10:
  C3D::Pass::parentColorDesc(&v44, *(this + 1));
  if (v45 == 2)
  {
    v11 = 1;
  }

  else
  {
    C3D::Pass::parentColorDesc(&v42, *(this + 1));
    v11 = v43 == 4;
  }

  v13 = C3DSceneGetWantsSSR(Scene, v10) & v11;
  if (v13 == 1)
  {
    *(this + 149) |= 0x106u;
  }

  if (v11 && (RenderCallbacks = C3DEngineContextGetRenderCallbacks(*(this + 2), v12)) != 0 && (v15 = *(RenderCallbacks + 40)) != 0 && v15(*(this + 2)))
  {
    v16 = *(this + 3);
    v44 = this;
    v17 = C3D::RenderGraph::createPass<C3D::MainPassCustomPostProcessPass,C3D::MainPass *>(v16, &v44);
    v18 = v17;
    v19 = *(this + 680);
    if (v19 != this)
    {
      C3D::Pass::addDependency(v17, v19);
    }

    C3D::Pass::addDependency(v18, this);
    *(this + 680) = v18;
    if (*(v18 + 240) == 1)
    {
      *(this + 149) |= 0x80u;
    }
  }

  else
  {
    v18 = 0;
  }

  *(this + 119) = 1;
  *(this + 306) = C3DEngineContextGetViewpointCoordinateSpace(*(this + 2));
  C3D::ScenePass::setup(this, v20);
  if (v18)
  {
    v41 = v9;
    v23 = *(v18 + 31);
    v24 = *(v18 + 240);
    v25 = C3D::Pass::outputBufferParameterNamed(this, "COLOR");
    if (v24)
    {
      v26 = C3D::Pass::outputBufferParameterNamed(this, "COLOR1");
      v27 = C3D::Pass::inputBufferParameterNamed(v18, "COLOR");
      v28 = C3D::Pass::inputBufferParameterNamed(v18, "COLOR1");
      v29 = v26 != 0;
      if (v26 && v23)
      {
        *(v26 + 28) = v23;
        v29 = 1;
      }
    }

    else
    {
      v27 = C3D::Pass::inputBufferParameterNamed(v18, "COLOR");
      v29 = 0;
      v28 = 0;
      v26 = 0;
    }

    *(v27 + 31) = 0;
    *(v27 + 24) = SCNMTLTextureTypeNonMultisampledEquivalent(*(v25 + 24));
    if (v28)
    {
      *(v28 + 31) = 0;
      *(v28 + 24) = SCNMTLTextureTypeNonMultisampledEquivalent(*(v26 + 24));
    }

    v30 = C3D::Pass::outputBufferParameterNamed(v18, "COLOR");
    *(v30 + 16) = COERCE_FLOAT(*(this + 676));
    *(v30 + 18) = *(this + 1353);
    v9 = v41;
    if (*(v18 + 272) == 1)
    {
      v31 = *(v18 + 16);
      *(v25 + 66) |= 0x40u;
      *(v25 + 48) = v31;
      if (v29)
      {
        *(v26 + 66) |= 0x40u;
        *(v26 + 48) = v31;
      }

      *(this + 303) = 0;
    }
  }

  if (v13)
  {
    *(this + 680) = C3D::SSRPassesCreateIfNeeded(*(this + 3), this, v21);
  }

  if (v9)
  {
    *(this + 149) |= 8u;
    v32 = *(this + 3);
    v44 = this;
    v33 = C3D::RenderGraph::createPass<C3D::TemporalAAPass,C3D::MainPass *>(v32, &v44);
    v34 = v33;
    v35 = *(this + 680);
    if (v35 != this)
    {
      C3D::Pass::addDependency(v33, v35);
    }

    C3D::Pass::addDependency(v34, this);
    *(this + 680) = v34;
  }

  *(this + 681) = 0;
  if (v11)
  {
    v44 = 0;
    IfNeeded = C3D::PostProcessPassesCreateIfNeeded(*(this + 3), this, &v44, v22);
    *(this + 681) = IfNeeded;
    v37 = v44;
    if (!v44)
    {
      v37 = *(this + 680);
    }

    *(this + 680) = v37;
    if (IfNeeded)
    {
      if (IfNeeded[12])
      {
        v38 = 0;
      }

      else
      {
        v38 = IfNeeded[10] ^ 1;
      }
    }

    else
    {
      v38 = 1;
    }

    result = C3D::PassDescriptor::outputAtIndex((this + 32), 1);
    v40 = *(result + 66) & 0xFFF7 | (8 * v38);
  }

  else
  {
    result = C3D::PassDescriptor::outputAtIndex((this + 32), 1);
    v40 = *(result + 66) | 8;
  }

  *(result + 66) = v40;
  return result;
}

C3D::MainPassCustomPostProcessPass *C3D::RenderGraph::createPass<C3D::MainPassCustomPostProcessPass,C3D::MainPass *>(uint64_t a1, C3D::Pass **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 288, 16, 0);
  C3D::MainPassCustomPostProcessPass::MainPassCustomPostProcessPass(Aligned, a1, *a2);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::ComputePass *C3D::RenderGraph::createPass<C3D::TemporalAAPass,C3D::MainPass *>(uint64_t a1, C3D::Pass **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::ComputePass::ComputePass(Aligned, a1, *a2);
  *v5 = &unk_282DC54C0;
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

void C3D::MainPass::compile(C3D::MainPass *this, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __int128 a28, uint64_t a29, float a30, float a31, float a32, float a33, float a34, float a35, int8x8_t a36, float a37, int a38, float a39, int a40, float a41, float a42, float a43, float a44, float a45, float a46, float a47, float a48, float a49, uint64_t a50, float32x2_t a51, float a52, int a53, int a54, unsigned int a55, unsigned int a56, unint64_t a57, float a58, int a59, float a60, float a61, float a62, float32x4_t a63)
{
  C3D::ScenePass::compile(this, a2);
  v77 = *(this + 681);
  if (v77)
  {
    v78 = *(this + 2);

    C3D::PostProcessPassesComputeUniforms(v78, v77, this, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
  }
}

BOOL C3DModelPathResolveCommonProfileProperty(char *cf, const __CFArray *a2, int a3, int a4, uint64_t a5, int a6)
{
  C3DModelTargetSetTarget(a5, cf);
  if (a3 >= a4)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
  v13 = _pathComponentForString(ValueAtIndex);
  if (v13 > 71)
  {
    if (v13 == 72)
    {
      ImageTransform = C3DEffectSlotGetImageTransform(cf, v14);
      if (!ImageTransform)
      {
        memset(v27, 0, sizeof(v27));
        C3DMatrix4x4MakeIdentity(v27);
        C3DEffectSlotSetImageTransform(cf, v27);
        ImageTransform = C3DEffectSlotGetImageTransform(cf, v22);
      }

      _C3DModelPathResolveMatrix(ImageTransform, a2, a3 + 1, a4, a5);
      return 1;
    }

    if (v13 != 73)
    {
      if (v13 == 74)
      {
        *(a5 + 24) = cf + 72;
        result = 1;
        *(a5 + 32) = 1;
        return result;
      }

      goto LABEL_18;
    }

    TextureSampler = C3DEffectSlotGetTextureSampler(cf, v14);
    if (TextureSampler)
    {
      v25 = TextureSampler;
      C3DModelTargetSetTarget(a5, TextureSampler);
      BorderColor = C3DTextureSamplerGetBorderColor(v25, v26);
      goto LABEL_24;
    }

    return 1;
  }

  if ((v13 - 68) < 2)
  {
    BorderColor = C3DEffectSlotGetColor(cf, v14);
LABEL_24:
    _C3DModelPathResolveColor4(BorderColor, a2, a3 + 1, a4, a5);
    return 1;
  }

  if (v13 == 70)
  {
    C3DEffectSlotGetTexture(cf, v14);
    if (a3 + 1 < a4)
    {
      v17 = CFArrayGetValueAtIndex(a2, a3 + 1);
      v18 = _pathComponentForString(v17);
      if (a6)
      {
        v20 = scn_default_log(v18, v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          C3DModelPathResolveCommonProfileProperty_cold_1();
        }
      }
    }

    return 1;
  }

LABEL_18:
  if (a6)
  {
    v23 = scn_default_log(v13, v14);
    result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    C3DModelPathResolveCommonProfileProperty_cold_2();
  }

  return 0;
}

const void *_pathComponentForString(void *key)
{
  if (_pathComponentForString_onceToken != -1)
  {
    _pathComponentForString_cold_1();
  }

  return CFDictionaryGetValue(_pathComponentForString__pathComponents, key);
}

void _C3DModelPathResolveColor4(uint64_t result, CFArrayRef theArray, int a3, int a4, uint64_t a5)
{
  if (a3 >= a4)
  {
    *(a5 + 24) = result;
    *(a5 + 32) = 13;
    return;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  v8 = _pathComponentForString(ValueAtIndex);
  *(a5 + 32) = 1;
  if (v8 > 19)
  {
    if (v8 == 20)
    {
      v10 = result + 8;
      goto LABEL_14;
    }

    if (v8 == 21)
    {
      v10 = result + 12;
      goto LABEL_14;
    }
  }

  else
  {
    if (v8 == 18)
    {
      *(a5 + 24) = result;
      return;
    }

    if (v8 == 19)
    {
      v10 = result + 4;
LABEL_14:
      *(a5 + 24) = v10;
      return;
    }
  }

  v11 = scn_default_log(v8, v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    _C3DModelPathResolveColor4_cold_1();
  }
}

void _C3DModelPathResolveMatrix(uint64_t result, CFArrayRef theArray, int a3, int a4, uint64_t a5)
{
  if (a3 >= a4)
  {
    *(a5 + 24) = result;
    *(a5 + 32) = 11;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
    v8 = _pathComponentForString(ValueAtIndex);
    *(a5 + 32) = 7;
    v10 = v8 - 22;
    if ((v8 - 22) >= 0x10)
    {
      v13 = scn_default_log(v8, v9);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        _C3DModelPathResolveMatrix_cold_1();
      }
    }

    else
    {
      v11 = byte_21C2A3EA0[v10];
      v12 = qword_21C2A3EB0[v10];
      *(a5 + 35) = v11;
      *(a5 + 24) = result + 4 * v12;
    }
  }
}

uint64_t C3DModelDescriptionResolveRootComponentInPath(const __CFArray *a1, const void *a2, _BOOL8 a3, _BYTE *a4)
{
  if (a1 && CFArrayGetCount(a1) >= 2 && (ValueAtIndex = CFArrayGetValueAtIndex(a1, 0), Length = CFStringGetLength(ValueAtIndex), Length >= 2) && (v10 = Length, CFStringGetCharacterAtIndex(ValueAtIndex, 0) == 47))
  {
    if (a4)
    {
      *a4 = 1;
    }

    v15.length = v10 - 1;
    v15.location = 1;
    v11 = CFStringCreateWithSubstring(0, ValueAtIndex, v15);
    if (!a3 || (EntryWithUniqueID = C3DLibraryGetEntryWithUniqueID(a3, v11)) == 0 && (EntryWithUniqueID = C3DLibraryGetEntryWithDocumentID(a3, v11)) == 0)
    {
      EntryWithUniqueID = C3DSearchByID(a2, v11);
    }

    v13 = EntryWithUniqueID;
    CFRelease(v11);
  }

  else
  {
    v13 = 0;
    if (a4)
    {
      *a4 = 0;
    }
  }

  return v13;
}

void _C3DModelPathResolveTransform(uint64_t result, CFArrayRef theArray, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(a5 + 34) = 8;
  *(a5 + 37) = 1;
  if (a3 >= a4)
  {
    *(a5 + 24) = result;
    *(a5 + 32) = 11;
  }

  else
  {
    v10 = a3;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
    v13 = _pathComponentForString(ValueAtIndex);
    if ((v13 - 22) < 0x10)
    {
      v15 = result;
      v16 = theArray;
      v17 = v10;
LABEL_4:
      _C3DModelPathResolveMatrix(v15, v16, v17, a4, a5);
LABEL_5:
      *(a5 + 24) = result;
      return;
    }

    if (v13 <= 7)
    {
      switch(v13)
      {
        case 5:
          v17 = v10 + 1;
          v15 = result;
          v16 = theArray;
          goto LABEL_4;
        case 6:
          v22 = 0;
          v21 = 0;
          _C3DModelPathResolveVector3(&v21, theArray, v10 + 1, a4, a5);
          *(a5 + 34) = 6;
          goto LABEL_5;
        case 7:
          v19 = v10 + 1;
          v18 = theArray;
          goto LABEL_15;
      }
    }

    else
    {
      if ((v13 - 12) < 2)
      {
        v18 = theArray;
        v19 = v10;
LABEL_15:
        _C3DModelPathResolveRotation(v18, v19, a4, a5);
        goto LABEL_5;
      }

      if (v13 == 8)
      {
        *(a5 + 34) = 7;
        *(a5 + 32) = 9;
        *(a5 + 35) = _C3DModelPathResolveVectorComponentIndex(theArray, v10 + 1, a4, a5);
        goto LABEL_5;
      }
    }

    if (a6)
    {
      v20 = scn_default_log(v13, v14);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        _C3DModelPathResolveTransform_cold_1();
      }
    }
  }
}

uint64_t C3DCFTypeCopyModelInfoAtSplittedPath(void *a1, const __CFArray *SubarrayWithRange, _BOOL8 a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = a1;
  v15 = 0;
  v8 = C3DModelTargetCreate(0, 0, 0, 0);
  v9 = C3DModelDescriptionResolveRootComponentInPath(SubarrayWithRange, v7, a3, &v15);
  if (v9)
  {
    v7 = v9;
  }

  Count = CFArrayGetCount(SubarrayWithRange);
  v11 = Count;
  if (v15 == 1)
  {
    v11 = Count - 1;
    SubarrayWithRange = C3DCFArrayGetSubarrayWithRange(SubarrayWithRange, 1, Count - 1);
  }

  v12 = CFGetTypeID(v7);
  _C3DModelPathResolverRegistryResolvePathWithClassName(v7, v12, SubarrayWithRange, 0, v11, v8, a4);
  if (*(v8 + 24))
  {
    *(v8 + 36) = C3DSizeOfBaseType(*(v8 + 32), v13);
  }

  return v8;
}

char *_C3DModelPathResolverRegistryResolvePath(char *result, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v11 = result;
    v12 = CFGetTypeID(result);

    return _C3DModelPathResolverRegistryResolvePathWithClassName(v11, v12, a2, a3, a4, a5, a6);
  }

  return result;
}

const __CFString *C3DCFTypeCopyModelInfoAtPath(void *a1, CFStringRef theString, uint64_t a3)
{
  result = C3DCreatePathComponentsFromString(theString);
  if (result)
  {
    v6 = result;
    v7 = C3DCFTypeCopyModelInfoAtSplittedPath(a1, result, 0, a3);
    CFRelease(v6);
    return v7;
  }

  return result;
}

uint64_t C3DCFTypeCopyModelInfoForKeyAndSubscriptIndex(const void *a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a4;
  v8 = C3DModelTargetCreate(0, 0, 0, 0);
  v9 = CFGetTypeID(a1);
  _C3DModelPathResolverRegistryResolveKeyAndSubscriptIndexWithClassName(a1, v9, a2, a3, v8, v4);
  if (*(v8 + 24))
  {
    *(v8 + 36) = C3DSizeOfBaseType(*(v8 + 32), v10);
  }

  return v8;
}

uint64_t C3DCFTypeCopyModelInfoForKeyAndSubscriptKey(const void *a1, const __CFString *a2, void *a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a4;
  v8 = C3DModelTargetCreate(0, 0, 0, 0);
  v9 = CFGetTypeID(a1);
  _C3DModelPathResolverRegistryResolveKeyAndSubscriptKeyWithClassName(a1, v9, a2, a3, v8, v4);
  if (*(v8 + 24))
  {
    *(v8 + 36) = C3DSizeOfBaseType(*(v8 + 32), v10);
  }

  return v8;
}

const void *_C3DModelPathResolverRegistryGetType(void *key)
{
  Mutable = _modelPathResolverRegistry;
  if (!_modelPathResolverRegistry)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
    _modelPathResolverRegistry = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, key);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
    CFDictionarySetValue(_modelPathResolverRegistry, key, Value);
  }

  return Value;
}

uint64_t _C3DModelPathResolverRegistryResolveSubPath(CFArrayRef theArray, int a2, int a3, uint64_t a4)
{
  result = 0;
  v7 = *(a4 + 32);
  if (v7 > 0xA)
  {
    if (v7 == 11)
    {
      _C3DModelPathResolveMatrix(*(a4 + 24), theArray, a2, a3, a4);
    }

    else
    {
      if (v7 != 13)
      {
        return result;
      }

      _C3DModelPathResolveColor4(*(a4 + 24), theArray, a2, a3, a4);
    }
  }

  else if (v7 == 9)
  {
    _C3DModelPathResolveVector3(*(a4 + 24), theArray, a2, a3, a4);
  }

  else
  {
    if (v7 != 10)
    {
      return result;
    }

    if (a2 >= a3)
    {
      *(a4 + 32) = 10;
    }

    else
    {
      v8 = *(a4 + 24);
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, a2);
      v10 = _pathComponentForString(ValueAtIndex);
      *(a4 + 32) = 7;
      if (v10 > 15)
      {
        if (v10 == 16)
        {
          v12 = v8 + 8;
          goto LABEL_22;
        }

        if (v10 == 17)
        {
          v12 = v8 + 12;
          goto LABEL_22;
        }

LABEL_18:
        v13 = scn_default_log(v10, v11);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          _C3DModelPathResolverRegistryResolveSubPath_cold_1();
        }

        return 1;
      }

      if (v10 != 14)
      {
        if (v10 == 15)
        {
          v12 = v8 + 4;
LABEL_22:
          *(a4 + 24) = v12;
          return 1;
        }

        goto LABEL_18;
      }

      *(a4 + 24) = v8;
    }
  }

  return 1;
}

void _C3DModelPathResolveVector3(uint64_t result, CFArrayRef theArray, int a3, int a4, uint64_t a5)
{
  if (a3 >= a4)
  {
    *(a5 + 24) = result;
    *(a5 + 32) = 9;
    return;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  v8 = _pathComponentForString(ValueAtIndex);
  *(a5 + 32) = 7;
  switch(v8)
  {
    case 0xE:
      *(a5 + 24) = result;
      break;
    case 0xF:
      *(a5 + 24) = result + 4;
      v10 = 1;
      goto LABEL_8;
    case 0x10:
      *(a5 + 24) = result + 8;
      v10 = 2;
LABEL_8:
      *(a5 + 35) = v10;
      return;
    default:
      v11 = scn_default_log(v8, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        _C3DModelPathResolveVector3_cold_1();
      }

      break;
  }
}

uint64_t _C3DModelPathResolverRegistryResolvePathWithClassName(char *a1, void *a2, const __CFArray *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  TypeID = C3DEntityGetTypeID(a1, a2);
  if (TypeID == a2)
  {
    if (_C3DModelPathResolveEntity(a1, a3, a4, a5, a6))
    {
      return 1;
    }
  }

  else
  {
    v16 = C3DNodeGetTypeID(TypeID, v15);
    if (v16 == a2)
    {
      if (_C3DModelPathResolveNode(a1, a3, a4, a5, a6, a7))
      {
        return 1;
      }
    }

    else
    {
      v18 = C3DMaterialGetTypeID(v16, v17);
      if (v18 != a2)
      {
        v20 = C3DLightGetTypeID(v18, v19);
        if (v20 == a2)
        {
          if (!a1)
          {
            goto LABEL_24;
          }

          if ((_C3DModelPathResolveEntity(a1, a3, a4, a5, a6) & 1) == 0)
          {
            C3DModelTargetSetTarget(a6, a1);
            if (a4 >= a5)
            {
              *(a6 + 24) = 0;
              *(a6 + 32) = 0;
              return 1;
            }

            ValueAtIndex = CFArrayGetValueAtIndex(a3, a4);
            v23 = _pathComponentForString(ValueAtIndex);
            if (v23 > 82)
            {
              if (v23 > 84)
              {
                if (v23 == 85)
                {
                  v24 = 1;
                  *(a6 + 32) = 1;
                  v47 = a1 + 240;
                }

                else
                {
                  if (v23 != 86)
                  {
                    goto LABEL_24;
                  }

                  v24 = 1;
                  *(a6 + 32) = 1;
                  v47 = a1 + 248;
                }
              }

              else
              {
                v24 = 1;
                *(a6 + 32) = 1;
                if (v23 == 83)
                {
                  v47 = a1 + 92;
                }

                else
                {
                  v47 = a1 + 244;
                }
              }
            }

            else
            {
              if (v23 <= 80)
              {
                if (v23 == 78)
                {
                  v24 = 1;
                  Gobo = C3DLightGetGobo(a1, 1);
                }

                else
                {
                  if (v23 != 79)
                  {
                    goto LABEL_24;
                  }

                  v24 = 1;
                  Gobo = C3DLightGetProbeEnvironment(a1, 1);
                }

                C3DModelPathResolveCommonProfileProperty(Gobo, a3, a4 + 1, a5, a6, a7);
                return v24;
              }

              v24 = 1;
              *(a6 + 32) = 1;
              if (v23 == 81)
              {
                v47 = a1 + 84;
              }

              else
              {
                v47 = a1 + 88;
              }
            }

            *(a6 + 24) = v47;
            return v24;
          }
        }

        else
        {
          v26 = C3DMorpherGetTypeID(v20, v21);
          if (v26 == a2)
          {
            OverrideMaterial = C3DGeometryGetOverrideMaterial(a1);
          }

          else
          {
            v29 = C3DMorphGetTypeID(v26, v27);
            if (v29 != a2)
            {
              v43 = C3DGeometryGetTypeID(v29, v30);
              if (v43 == a2)
              {
                if (_C3DModelPathResolveGeometry(a1, a3, a4, a5, a6, a7))
                {
                  return 1;
                }
              }

              else
              {
                v45 = C3DGenericSourceGetTypeID(v43, v44);
                if (v45 == a2)
                {
                  if (_C3DModelPathResolveGenericSource(a1, a3, a4, a5, a6))
                  {
                    return 1;
                  }
                }

                else
                {
                  v48 = C3DSceneGetTypeID(v45, v46);
                  if (v48 == a2)
                  {
                    if (_C3DModelPathResolveScene(a1, a3, a4, a5, a6, a7))
                    {
                      return 1;
                    }
                  }

                  else if (C3DFXTechniqueGetTypeID(v48, v49) == a2 && _C3DModelPathResolveTechnique(a1, a3, a4, a5, a6))
                  {
                    return 1;
                  }
                }
              }

              goto LABEL_24;
            }

            OverrideMaterial = a1;
          }

          if (!_C3DModelPathResolveMorph(OverrideMaterial, a3, a4, a5, a6, a7))
          {
            goto LABEL_24;
          }
        }

        return 1;
      }

      if (_C3DModelPathResolveMaterial(a1, a3, a4, a5, a6, a7))
      {
        return 1;
      }
    }
  }

LABEL_24:
  os_unfair_lock_lock(&_modelPathResolverRegistryLock);
  Type = _C3DModelPathResolverRegistryGetType(a2);
  if (a4 >= a5 || (v32 = Type) == 0)
  {
    os_unfair_lock_unlock(&_modelPathResolverRegistryLock);
LABEL_34:
    v24 = 0;
    if (!a7 || a4 + 1 != a5)
    {
      return v24;
    }

    v42 = scn_default_log(v40, v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      _C3DModelPathResolverRegistryResolvePathWithClassName_cold_1();
    }

    return 0;
  }

  v33 = CFArrayGetValueAtIndex(a3, a4);
  Value = CFDictionaryGetValue(v32, v33);
  os_unfair_lock_unlock(&_modelPathResolverRegistryLock);
  if (!Value)
  {
    v40 = CFDictionaryGetValue(v32, @"superClass");
    if (v40)
    {
      v40 = _C3DModelPathResolverRegistryResolvePathWithClassName(a1, v40, a3, a4, a5, a6, a7);
      if (v40)
      {
        return 1;
      }
    }

    goto LABEL_34;
  }

  C3DModelTargetSetTarget(a6, a1);
  v35 = *(Value + 4);
  *(a6 + 32) = v35;
  *(a6 + 34) = Value[10];
  v36 = &a1[*Value];
  *(a6 + 24) = v36;
  v37 = (a4 + 1);
  if (v37 >= a5)
  {
    return 1;
  }

  if (v35 == 5)
  {
    if (a1)
    {
      v38 = *v36;

      return _C3DModelPathResolverRegistryResolvePath(v38, a3, v37, a5, a6, a7);
    }

    return 0;
  }

  return _C3DModelPathResolverRegistryResolveSubPath(a3, a4 + 1, a5, a6);
}

uint64_t _C3DModelPathResolveEntity(void *a1, CFArrayRef theArray, int a3, int a4, uint64_t a5)
{
  if (a3 >= a4)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  v11 = _pathComponentForString(ValueAtIndex);
  if (v11 == 90)
  {
    if (a3 + 1 < a4)
    {
      v22 = CFArrayGetValueAtIndex(theArray, a3 + 1);
      result = C3DGetScene(a1, v23);
      if (result)
      {
        AnimationManager = C3DSceneGetAnimationManager(result, v24);
        result = C3DAnimationManagerGetAnimationNodeForKey(AnimationManager, a1, v22);
        if (result)
        {
          *(a5 + 24) = result + 52;
          C3DModelTargetSetTarget(a5, result);
          result = 1;
          *(a5 + 32) = 1;
          *(a5 + 34) = 0;
        }
      }

      return result;
    }

    return 0;
  }

  if (v11 != 89)
  {
    result = C3DEntityIsTypeSupportingShaderModifiers(a1, v12);
    if (result)
    {
      C3DEntityGetShaderModifiers(a1, v26);

      return C3DEntityResolveKeypathInKeyValueStore(a1, theArray, a3, a5);
    }

    return result;
  }

  if (a3 + 1 >= a4)
  {
    return 0;
  }

  v13 = CFArrayGetValueAtIndex(theArray, a3 + 1);
  ValueForKey = C3DEntityGetValueForKey(a1, v13);
  if (ValueForKey)
  {
    v16 = ValueForKey;
    v17 = CFGetTypeID(ValueForKey);
    ValueForKey = C3DValueGetTypeID(v17, v18);
    if (v17 == ValueForKey)
    {
      C3DModelTargetSetTarget(a5, v16);
      *(a5 + 24) = C3DValueGetBytes(v16, v19);
      *(a5 + 32) = C3DValueGetType(v16, v20);
      *(a5 + 34) = 0;
      return 1;
    }
  }

  v27 = scn_default_log(ValueForKey, v15);
  result = os_log_type_enabled(v27, OS_LOG_TYPE_FAULT);
  if (result)
  {
    _C3DModelPathResolveEntity_cold_1(v27, v28, v29, v30, v31, v32, v33, v34);
    return 0;
  }

  return result;
}

uint64_t _C3DModelPathResolveNode(void *a1, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return 0;
  }

  if (_C3DModelPathResolveEntity(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  C3DModelTargetSetTarget(a5, a1);
  if (a3 >= a4)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
  v13 = _pathComponentForString(ValueAtIndex);
  if (v13 > 8)
  {
    if (v13 > 37)
    {
      if (v13 > 74)
      {
        if (v13 == 75)
        {
          Light = C3DNodeGetLight(a1, v14);
        }

        else
        {
          if (v13 != 88)
          {
            goto LABEL_27;
          }

          Light = C3DNodeGetMorpher(a1, v14);
        }
      }

      else if (v13 == 38)
      {
        Light = C3DNodeGetCamera(a1, v14);
      }

      else
      {
        if (v13 != 39)
        {
          goto LABEL_27;
        }

        Light = C3DNodeGetGeometry(a1, v14);
      }

      _C3DModelPathResolverRegistryResolvePath(Light, a2, (a3 + 1), a4, a5, a6);
      return 1;
    }

    if ((v13 - 12) >= 2)
    {
      if (v13 == 9)
      {
        *(a5 + 34) = 8;
        v25 = a1[24];
        if (!v25)
        {
          v31 = 0u;
          v32 = 0u;
          *cf = 0u;
          v30 = 0u;
          C3DMatrix4x4MakeIdentity(cf);
          C3DNodeSetPivotMatrix(a1, cf);
          v25 = a1[24];
        }

        _C3DModelPathResolveMatrix(v25, a2, a3 + 1, a4, a5);
        return 1;
      }

      if (v13 == 10 && a3 + 1 < a4)
      {
        FiltersParamController = C3DNodeGetFiltersParamController(a1, v14);
        if (FiltersParamController)
        {
          _C3DModelPathResolveDynamicParameter(FiltersParamController, a2, a3 + 1, a4, a5, a6);
          return 1;
        }
      }

      goto LABEL_27;
    }

    goto LABEL_14;
  }

  if (v13 > 4)
  {
LABEL_14:
    v16 = a1;
    v17 = a2;
    v18 = a3;
LABEL_15:
    _C3DModelPathResolveNodeTransform(v16, v17, v18, a4, a5, a6);
    return 1;
  }

  switch(v13)
  {
    case 1:
      v18 = (a3 + 1);
      v16 = a1;
      v17 = a2;
      goto LABEL_15;
    case 2:
      *(a5 + 24) = a1 + 204;
      v24 = 1;
      *(a5 + 32) = 1;
      return v24;
    case 3:
      *(a5 + 24) = a1 + 25;
      *(a5 + 32) = 3;
      return 1;
  }

LABEL_27:
  cf[0] = 0;
  v28 = 0;
  v20 = _C3DModelPathResolveArray(a2, a3, a4, &v28, cf);
  if (!v20)
  {
LABEL_42:
    if (a6)
    {
      v26 = scn_default_log(v20, v21);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        _C3DModelPathResolveNode_cold_1();
      }
    }

    return 0;
  }

  if (_pathComponentForString(cf[0]) != 11)
  {
    v20 = cf[0];
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    goto LABEL_42;
  }

  ChildNodesCount = C3DNodeGetChildNodesCount(a1);
  if (ChildNodesCount <= v28)
  {
    v24 = 0;
  }

  else
  {
    ChildNodeAtIndex = C3DNodeGetChildNodeAtIndex(a1, v28);
    v24 = _C3DModelPathResolveNode(ChildNodeAtIndex, a2, (a3 + 1), a4, a5, a6);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v24;
}

uint64_t _C3DModelPathResolveMaterial(uint64_t result, const __CFArray *a2, int a3, int a4, uint64_t a5, int a6)
{
  if (result)
  {
    v11 = result;
    if (_C3DModelPathResolveEntity(result, a2, a3, a4, a5))
    {
      return 1;
    }

    C3DModelTargetSetTarget(a5, v11);
    if (a3 >= a4)
    {
      *(a5 + 24) = 0;
      *(a5 + 32) = 0;
      return 1;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
    v13 = _pathComponentForString(ValueAtIndex);
    CommonProfile = C3DMaterialGetCommonProfile(v11, v14);
    if (v13 == 42)
    {
      _C3DModelPathResolveCommonProfile(CommonProfile, a2, a3 + 1, a4, a5, a6);
      return 1;
    }

    return _C3DModelPathResolveCommonProfile(CommonProfile, a2, a3, a4, a5, a6);
  }

  return result;
}

BOOL _C3DModelPathResolveMorph(_BOOL8 result, const __CFArray *a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!result)
  {
    return result;
  }

  v11 = result;
  if (_C3DModelPathResolveEntity(result, a2, a3, a4, a5))
  {
    return 1;
  }

  C3DModelTargetSetTarget(a5, v11);
  if (a3 >= a4)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
  v13 = _pathComponentForString(ValueAtIndex);
  v14 = CFStringFind(ValueAtIndex, @"weights", 0);
  if (v14.length <= 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  if (v14.length > 0 || v13 == 87)
  {
    WeightsSource = C3DMorphGetWeightsSource(v11);
    v18 = CFStringFind(ValueAtIndex, @"[", 0);
    if (v18.length >= 1)
    {
      v19 = CFStringFind(ValueAtIndex, @"]", 0);
      if (v19.length >= 1 && v19.location > v18.location + 2)
      {
        v25.location = v18.location + 2;
        v25.length = v19.location - (v18.location + 2);
        v20 = CFStringCreateWithSubstring(0, ValueAtIndex, v25);
        IndexOfTargetWithName = C3DMorphGetIndexOfTargetWithName(v11, v20);
        if (IndexOfTargetWithName != -1)
        {
          v22 = IndexOfTargetWithName;
          C3DModelTargetSetTarget(a5, WeightsSource);
          Accessor = C3DGenericSourceGetAccessor(WeightsSource, v23);
          *(a5 + 24) = C3DSourceAccessorGetMutableValuePtrAtIndex(Accessor, v22);
          *(a5 + 32) = C3DSourceAccessorGetComponentsValueType(Accessor);
          if (v20)
          {
            CFRelease(v20);
          }

          return 1;
        }

        if (v20)
        {
          CFRelease(v20);
        }
      }
    }

    if (WeightsSource)
    {
      _C3DModelPathResolveGenericSource(WeightsSource, a2, (a3 + v15 + 1), a4, a5);
    }

    return 1;
  }

  if (a6)
  {
    v16 = scn_default_log(v14.location, v14.length);
    result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    _C3DModelPathResolveMorph_cold_1();
  }

  return 0;
}

uint64_t _C3DModelPathResolveGeometry(CFTypeRef cf, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!cf)
  {
    return 0;
  }

  v8 = a4;
  v9 = a3;
  C3DModelTargetSetTarget(a5, cf);
  if (v9 >= v8)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a2, v9);
  if (_pathComponentForString(ValueAtIndex) == 40)
  {
    if (C3DGeometryGetMaterialsCount(cf, v13) >= 1)
    {
      MaterialAtIndex = C3DGeometryGetMaterialAtIndex(cf, 0);
      _C3DModelPathResolveMaterial(MaterialAtIndex, a2, v9 + 1, v8, a5, a6);
    }

    return 1;
  }

  cfa = 0;
  v20 = 0;
  v15 = 0;
  if (_C3DModelPathResolveArray(a2, v9, v8, &v20, &cfa))
  {
    if (_pathComponentForString(cfa) == 41 && (MaterialsCount = C3DGeometryGetMaterialsCount(cf, v17), MaterialsCount > v20))
    {
      v19 = C3DGeometryGetMaterialAtIndex(cf, v20);
      v15 = _C3DModelPathResolveMaterial(v19, a2, v9 + 1, v8, a5, a6);
    }

    else
    {
      v15 = 0;
    }

    if (cfa)
    {
      CFRelease(cfa);
    }
  }

  return v15;
}

uint64_t _C3DModelPathResolveGenericSource(CFTypeRef cf, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  C3DModelTargetSetTarget(a5, cf);
  if (!cf)
  {
    return 0;
  }

  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  v14 = 0;
  v11 = _C3DModelPathResolveArray(a2, v7, v6, &v14, 0);
  if (v11)
  {
    Accessor = C3DGenericSourceGetAccessor(cf, v10);
    *(a5 + 24) = C3DSourceAccessorGetMutableValuePtrAtIndex(Accessor, v14);
    *(a5 + 32) = C3DSourceAccessorGetComponentsValueType(Accessor);
  }

  return v11;
}

uint64_t _C3DModelPathResolveScene(CFTypeRef cf, const __CFArray *a2, int a3, int a4, uint64_t a5, int a6)
{
  C3DModelTargetSetTarget(a5, cf);
  if (a3 >= a4)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
    v13 = _pathComponentForString(ValueAtIndex);
    if (v13 == 91)
    {
      v14 = 1;
      BackgroundEffectSlot = C3DSceneGetBackgroundEffectSlot(cf, 1);
    }

    else
    {
      if (v13 != 92)
      {
        return 0;
      }

      v14 = 1;
      BackgroundEffectSlot = C3DSceneGetLightingEnvironmentEffectSlot(cf, 1);
    }

    C3DModelPathResolveCommonProfileProperty(BackgroundEffectSlot, a2, a3 + 1, a4, a5, a6);
  }

  return v14;
}

BOOL _C3DModelPathResolveTechnique(const void *a1, CFArrayRef theArray, int a3, int a4, uint64_t a5)
{
  if (a3 >= a4)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  C3DModelTargetSetTarget(a5, a1);
  ValueAnimatableAddressForSymbol = C3DFXTechniqueGetValueAnimatableAddressForSymbol(a1, ValueAtIndex, (a5 + 32));
  *(a5 + 24) = ValueAnimatableAddressForSymbol;
  return ValueAnimatableAddressForSymbol != 0;
}

BOOL _C3DModelPathResolverRegistryResolveKeyAndSubscriptIndexWithClassName(uint64_t a1, CFTypeID a2, const __CFString *a3, uint64_t a4, uint64_t a5, int a6)
{
  TypeID = C3DMorpherGetTypeID(a1, a2);
  if (TypeID == a2)
  {
    OverrideMaterial = C3DGeometryGetOverrideMaterial(a1);
LABEL_5:

    return _C3DModelPathResolveMorphKeyAndSubscriptIndex(OverrideMaterial, a3, a4, a5, a6);
  }

  if (C3DMorphGetTypeID(TypeID, v13) == a2)
  {
    OverrideMaterial = a1;
    goto LABEL_5;
  }

  v16 = CFCopyTypeIDDescription(a2);
  v18 = scn_default_log(v16, v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    _C3DModelPathResolverRegistryResolveKeyAndSubscriptIndexWithClassName_cold_1();
  }

  CFRelease(v16);
  return 0;
}

BOOL _C3DModelPathResolveMorphKeyAndSubscriptIndex(_BOOL8 cf, const __CFString *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (cf)
  {
    v9 = cf;
    C3DModelTargetSetTarget(a4, cf);
    v10 = CFStringCompare(a2, @"weights", 0);
    if (v10)
    {
      if (a5)
      {
        v12 = scn_default_log(v10, v11);
        cf = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
        if (!cf)
        {
          return cf;
        }

        _C3DModelPathResolveMorphKeyAndSubscriptIndex_cold_1();
      }

      return 0;
    }

    else
    {
      WeightsSource = C3DMorphGetWeightsSource(v9);
      C3DModelTargetSetTarget(a4, WeightsSource);
      Accessor = C3DGenericSourceGetAccessor(WeightsSource, v14);
      *(a4 + 24) = C3DSourceAccessorGetMutableValuePtrAtIndex(Accessor, a3);
      *(a4 + 32) = C3DSourceAccessorGetComponentsValueType(Accessor);
      return 1;
    }
  }

  return cf;
}

BOOL _C3DModelPathResolverRegistryResolveKeyAndSubscriptKeyWithClassName(uint64_t a1, CFTypeID a2, const __CFString *a3, void *a4, uint64_t a5, int a6)
{
  TypeID = C3DMorpherGetTypeID(a1, a2);
  if (TypeID == a2)
  {
    OverrideMaterial = C3DGeometryGetOverrideMaterial(a1);
LABEL_5:

    return _C3DModelPathResolveMorphKeyAndSubscriptKey(OverrideMaterial, a3, a4, a5, a6);
  }

  if (C3DMorphGetTypeID(TypeID, v13) == a2)
  {
    OverrideMaterial = a1;
    goto LABEL_5;
  }

  v16 = CFCopyTypeIDDescription(a2);
  v18 = scn_default_log(v16, v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    _C3DModelPathResolverRegistryResolveKeyAndSubscriptIndexWithClassName_cold_1();
  }

  CFRelease(v16);
  return 0;
}

BOOL _C3DModelPathResolveMorphKeyAndSubscriptKey(_BOOL8 cf, const __CFString *a2, void *a3, uint64_t a4, int a5)
{
  if (cf)
  {
    v9 = cf;
    C3DModelTargetSetTarget(a4, cf);
    IndexOfTargetWithName = CFStringCompare(a2, @"weights", 0);
    if (IndexOfTargetWithName)
    {
      if (!a5)
      {
        return 0;
      }
    }

    else
    {
      WeightsSource = C3DMorphGetWeightsSource(v9);
      C3DModelTargetSetTarget(a4, WeightsSource);
      IndexOfTargetWithName = C3DMorphGetIndexOfTargetWithName(v9, a3);
      if (IndexOfTargetWithName != -1)
      {
        v14 = IndexOfTargetWithName;
        Accessor = C3DGenericSourceGetAccessor(WeightsSource, v11);
        *(a4 + 24) = C3DSourceAccessorGetMutableValuePtrAtIndex(Accessor, v14);
        *(a4 + 32) = C3DSourceAccessorGetComponentsValueType(Accessor);
        return 1;
      }

      if ((a5 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = scn_default_log(IndexOfTargetWithName, v11);
    cf = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!cf)
    {
      return cf;
    }

    _C3DModelPathResolveMorphKeyAndSubscriptKey_cold_1();
    return 0;
  }

  return cf;
}

uint64_t C3DCFTypeGetAddressForKey(void *a1, const void *a2)
{
  if (C3DCFTypeGetAddressForKey_onceToken != -1)
  {
    C3DCFTypeGetAddressForKey_cold_1();
  }

  v4 = pthread_getspecific(C3DCFTypeGetAddressForKey_addressForKeyLocalStorage);
  if (!v4)
  {
    v4 = malloc_type_calloc(0x10uLL, 1uLL, 0x42591EDCuLL);
    *v4 = C3DModelTargetCreate(0, 0, 0, 0);
    v4[1] = CFArrayCreateMutable(0, 1, 0);
    pthread_setspecific(C3DCFTypeGetAddressForKey_addressForKeyLocalStorage, v4);
  }

  v5 = *v4;
  v6 = v4[1];
  *(v5 + 24) = 0;
  CFArraySetValueAtIndex(v6, 0, a2);
  v7 = CFGetTypeID(a1);
  v8 = _C3DModelPathResolverRegistryResolvePathWithClassName(a1, v7, v6, 0, 1, v5, 0);
  v9 = 0;
  if (v8)
  {
    v9 = *(v5 + 24);
  }

  C3DModelTargetSetTarget(v5, 0);
  return v9;
}

void __threadDied(CFTypeRef *a1)
{
  if (a1)
  {
    CFRelease(*a1);
    CFRelease(a1[1]);
  }

  free(a1);
}

void C3DModelPathResolverRegisterClassBegin(void *a1, const void *a2)
{
  os_unfair_lock_lock(&_modelPathResolverRegistryLock);
  Type = _C3DModelPathResolverRegistryGetType(a1);
  _currentClassRegistry = Type;
  if (a2)
  {

    CFDictionaryAddValue(Type, @"superClass", a2);
  }
}

void C3DModelPathResolverRegisterProperty(const void *a1, uint64_t a2, __int16 a3, char a4)
{
  v6 = a2;
  if (!_currentClassRegistry)
  {
    v8 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DModelPathResolverRegisterProperty_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = malloc_type_malloc(0x10uLL, 0x10000401E18E2A0uLL);
  v16[4] = a3;
  *v16 = v6;
  *(v16 + 10) = a4;
  CountOfKey = CFDictionaryGetCountOfKey(_currentClassRegistry, a1);
  if (CountOfKey)
  {
    v19 = scn_default_log(CountOfKey, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      C3DModelPathResolverRegisterProperty_cold_2(a1, v19);
    }
  }

  CFDictionarySetValue(_currentClassRegistry, a1, v16);
}

void ___pathComponentForString_block_invoke()
{
  _pathComponentForString__pathComponents = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 110, MEMORY[0x277CBF138], 0);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"transform", 1);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"opacity", 2);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"hidden", 3);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"attributes", 4);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"matrix", 5);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"translation", 6);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"position", 6);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"rotation", 7);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"orientation", 0xD);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"scale", 8);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"eulerAngles", 0xC);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"quaternion", 0xD);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"pivot", 9);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"filters", 0xA);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"nodes", 0xB);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"childNodes", 0xB);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"x", 0xE);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"y", 0xF);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"z", 0x10);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"w", 0x11);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"(0)", 0xE);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"(1)", 0xF);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"(2)", 0x10);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"(3)", 0x11);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"r", 0x12);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"g", 0x13);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"b", 0x14);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"a", 0x15);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m11", 0x16);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m12", 0x1A);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m13", 0x1E);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m14", 0x22);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m21", 0x17);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m22", 0x1B);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m23", 0x1F);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m24", 0x23);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m31", 0x18);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m32", 0x1C);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m33", 0x20);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m34", 0x24);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m41", 0x19);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m42", 0x1D);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m43", 0x21);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m44", 0x25);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"camera", 0x26);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"geometry", 0x27);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"firstMaterial", 0x28);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"materials", 0x29);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"commonProfile", 0x2A);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"diffuse", 0x2B);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"ambient", 0x2C);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"specular", 0x2D);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"emission", 0x2E);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"reflective", 0x2F);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"normal", 0x30);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"ambientOcclusion", 0x31);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"selfIllumination", 0x32);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"metalness", 0x33);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"roughness", 0x34);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"selfIlluminationOcclusion", 0x39);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"clearCoat", 0x35);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"clearCoatRoughness", 0x36);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"clearCoatNormal", 0x37);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"displacement", 0x38);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"transparent", 0x3A);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"multiply", 0x3B);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"shininess", 0x3C);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"transparency", 0x3D);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"fresnelExponent", 0x3E);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"shaderModifiers", 0x43);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"doubleSided", 0x3F);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"litPerPixel", 0x40);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"cullMode", 0x41);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"lockAmbientWithDiffuse", 0x42);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"color", 0x44);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"contents", 0x45);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"texture", 0x46);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"image", 0x47);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"contentsTransform", 0x48);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"borderColor", 0x49);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"intensity", 0x4A);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"light", 0x4B);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"shadowColor", 0x4C);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"shadowRadius", 0x4D);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"attenuationStart", 0x51);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"attenuationEnd", 0x52);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"attenuationFalloffExponent", 0x53);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"spotInnerAngle", 0x54);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"spotOuterAngle", 0x55);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"spotFalloffExponent", 0x56);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"weights", 0x57);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"morpher", 0x58);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"background", 0x5B);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"environment", 0x5C);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"gobo", 0x4E);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"probeEnvironment", 0x4F);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"ies", 0x50);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"customProperty", 0x59);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"animations", 0x5A);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"euler", 0xC);
  v0 = _pathComponentForString__pathComponents;

  CFDictionaryAddValue(v0, @"axisAngle", 7);
}

void _C3DModelPathResolveRotation(const __CFArray *result, int a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 34) = 4;
  if (a2 >= a3)
  {
    *(a4 + 24) = 0;
    *(a4 + 32) = 10;
    return;
  }

  v5 = a3;
  ValueAtIndex = CFArrayGetValueAtIndex(result, a2);
  v9 = _pathComponentForString(ValueAtIndex);
  if (v9 <= 13)
  {
    switch(v9)
    {
      case 7:
        *(a4 + 32) = 10;
        *(a4 + 35) = _C3DModelPathResolveVectorComponentIndex(result, a2 + 1, v5, a4);
LABEL_18:
        v12 = 4;
        goto LABEL_22;
      case 0xC:
        *(a4 + 32) = 9;
        *(a4 + 35) = _C3DModelPathResolveVectorComponentIndex(result, a2 + 1, v5, a4);
        v12 = 5;
        goto LABEL_22;
      case 0xD:
        *(a4 + 32) = 10;
        *(a4 + 35) = _C3DModelPathResolveVectorComponentIndex(result, a2 + 1, v5, a4);
        v12 = 3;
LABEL_22:
        *(a4 + 34) = v12;
        return;
    }
  }

  else
  {
    if (v9 <= 15)
    {
      if (v9 != 14)
      {
        v11 = 17039367;
LABEL_20:
        *(a4 + 32) = v11;
        return;
      }

      *(a4 + 32) = 7;
      goto LABEL_18;
    }

    if (v9 == 16)
    {
      v11 = 33816583;
      goto LABEL_20;
    }

    if (v9 == 17)
    {
      v11 = 50593799;
      goto LABEL_20;
    }
  }

  v13 = scn_default_log(v9, v10);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    _C3DModelPathResolveRotation_cold_1();
  }
}

uint64_t _C3DModelPathResolveVectorComponentIndex(const __CFArray *a1, int a2, int a3, uint64_t a4)
{
  if (a2 >= a3)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  v6 = _pathComponentForString(ValueAtIndex);
  *(a4 + 32) = 7;
  if (v6 - 15 >= 3)
  {
    return 0;
  }

  else
  {
    return v6 - 14;
  }
}

void _C3DModelPathResolveNodeTransform(char *cf, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  C3DModelTargetSetTarget(a5, cf);
  *(a5 + 34) = 8;
  *(a5 + 37) = 1;
  if (a3 >= a4)
  {
    *(a5 + 24) = cf + 96;
    *(a5 + 32) = 11;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
    _pathComponentForString(ValueAtIndex);

    _C3DModelPathResolveTransform((cf + 96), a2, a3, a4, a5, a6);
  }
}

void _C3DModelPathResolveDynamicParameter(const void *a1, const __CFArray *a2, int a3, int a4, uint64_t a5, int a6)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v19.location = a3;
  v19.length = a4 - a3;
  CFArrayAppendArray(Mutable, a2, v19);
  v13 = CFStringCreateByCombiningStrings(0, Mutable, @".");
  ParamDescription = C3DAnimatableParamControllerGetParamDescription(a1, v13);
  if (ParamDescription)
  {
    v16 = ParamDescription;
    C3DModelTargetSetTarget(a5, a1);
    *(a5 + 32) = *(v16 + 32);
    *(a5 + 24) = *(v16 + 24);
    *(a5 + 34) = *(v16 + 34);
    CFRelease(Mutable);
  }

  else if (a6)
  {
    v17 = scn_default_log(0, v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      _C3DModelPathResolveDynamicParameter_cold_1();
    }
  }

  CFRelease(v13);
}

uint64_t _C3DModelPathResolveArray(const __CFArray *a1, int a2, int a3, SInt32 *a4, CFStringRef *a5)
{
  if (a2 >= a3)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  v8 = CFStringFind(ValueAtIndex, @"[", 0);
  if (v8.length < 1)
  {
    goto LABEL_14;
  }

  v9 = CFStringFind(ValueAtIndex, @"]", 0);
  if (v9.length < 1 || v9.location <= v8.location)
  {
    goto LABEL_14;
  }

  v33.location = 0;
  v33.length = v8.location;
  v10 = CFStringCreateWithSubstring(0, ValueAtIndex, v33);
  v34.location = v8.location + 1;
  v34.length = v9.location - (v8.location + 1);
  v11 = CFStringCreateWithSubstring(0, ValueAtIndex, v34);
  v13 = v11;
  if (v10 || (v14 = scn_default_log(v11, v12), v11 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT), !v11))
  {
    if (!v13)
    {
      goto LABEL_8;
    }

LABEL_18:
    if (CFStringGetLength(v13) && CFStringGetCharacterAtIndex(v13, 0) - 48 < 0xA)
    {
      *a4 = CFStringGetIntValue(v13);
      if (a5)
      {
        *a5 = v10;
      }

      else if (v10)
      {
        CFRelease(v10);
      }

      v29 = 1;
      v10 = v13;
      goto LABEL_29;
    }

    CFRelease(v13);
LABEL_24:
    v29 = 0;
    if (!v10)
    {
      return v29;
    }

    goto LABEL_29;
  }

  _C3DModelPathResolveArray_cold_1(v14, v12, v15, v16, v17, v18, v19, v20);
  if (v13)
  {
    goto LABEL_18;
  }

LABEL_8:
  v21 = scn_default_log(v11, v12);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    _C3DModelPathResolveArray_cold_2(v21, v22, v23, v24, v25, v26, v27, v28);
    if (v10)
    {
      goto LABEL_10;
    }
  }

  else if (v10)
  {
LABEL_10:
    v29 = 0;
LABEL_29:
    CFRelease(v10);
    return v29;
  }

LABEL_14:
  v30 = CFStringFind(ValueAtIndex, @"("), 0;
  if (v30.length < 1)
  {
    return 0;
  }

  v31 = CFStringFind(ValueAtIndex, @""), 0);
  v29 = 0;
  if (v31.length >= 1 && v31.location > v30.location)
  {
    v35.location = 0;
    v35.length = v30.location;
    v10 = CFStringCreateWithSubstring(0, ValueAtIndex, v35);
    v36.location = v30.location + 1;
    v36.length = v31.location - (v30.location + 1);
    v13 = CFStringCreateWithSubstring(0, ValueAtIndex, v36);
    if (!v13)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  return v29;
}

uint64_t _C3DModelPathResolveCommonProfile(char *cf, const __CFArray *a2, int a3, int a4, uint64_t a5, int a6)
{
  C3DModelTargetSetTarget(a5, cf);
  if (a3 < a4)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
    v13 = _pathComponentForString(ValueAtIndex);
    switch(v13)
    {
      case '+':
        v15 = 1;
        v16 = cf;
        v17 = 2;
        goto LABEL_31;
      case ',':
        v15 = 1;
        v16 = cf;
        v17 = 1;
        goto LABEL_31;
      case '-':
        v15 = 1;
        v16 = cf;
        v17 = 3;
        goto LABEL_31;
      case '.':
        v15 = 1;
        v16 = cf;
        v17 = 0;
        goto LABEL_31;
      case '/':
        v15 = 1;
        v16 = cf;
        v17 = 4;
        goto LABEL_31;
      case '0':
        v15 = 1;
        v16 = cf;
        v17 = 7;
        goto LABEL_31;
      case '1':
        v15 = 1;
        v16 = cf;
        v17 = 8;
        goto LABEL_31;
      case '2':
        v15 = 1;
        v16 = cf;
        v17 = 9;
        goto LABEL_31;
      case '3':
        v15 = 1;
        v16 = cf;
        v17 = 10;
        goto LABEL_31;
      case '4':
        v15 = 1;
        v16 = cf;
        v17 = 11;
        goto LABEL_31;
      case '5':
        v15 = 1;
        v16 = cf;
        v17 = 12;
        goto LABEL_31;
      case '6':
        v15 = 1;
        v16 = cf;
        v17 = 13;
        goto LABEL_31;
      case '7':
        v15 = 1;
        v16 = cf;
        v17 = 14;
        goto LABEL_31;
      case '8':
        v15 = 1;
        v16 = cf;
        v17 = 15;
        goto LABEL_31;
      case '9':
        v15 = 1;
        *(a5 + 32) = 1;
        v18 = cf + 176;
        goto LABEL_29;
      case ':':
        v15 = 1;
        v16 = cf;
        v17 = 5;
        goto LABEL_31;
      case ';':
        v15 = 1;
        v16 = cf;
        v17 = 6;
LABEL_31:
        EffectSlot = C3DEffectCommonProfileGetEffectSlot(v16, v17, 1);
        C3DModelPathResolveCommonProfileProperty(EffectSlot, a2, a3 + 1, a4, a5, a6);
        return v15;
      case '<':
        v15 = 1;
        *(a5 + 32) = 1;
        v18 = cf + 160;
        goto LABEL_29;
      case '=':
        v15 = 1;
        *(a5 + 32) = 1;
        v18 = cf + 164;
        goto LABEL_29;
      case '>':
        v15 = 1;
        *(a5 + 32) = 1;
        v18 = cf + 172;
LABEL_29:
        *(a5 + 24) = v18;
        return v15;
      case '@':
        *(a5 + 32) = 3;
        v19 = cf + 192;
        goto LABEL_34;
      case 'B':
        *(a5 + 32) = 3;
        v19 = cf + 193;
LABEL_34:
        *(a5 + 24) = v19;
        return 1;
      default:
        if (a6)
        {
          v20 = scn_default_log(v13, v14);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            _C3DModelPathResolveCommonProfile_cold_1();
          }
        }

        return 0;
    }
  }

  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  return 1;
}

void _C3DModelTargetCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}