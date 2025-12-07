@interface _SUIAShockwaveMeshConfiguration
+ (id)meshConfigurationForState:(int64_t)state variant:(int64_t)variant normalizedStartLocation:(CGRect)location settings:(id)settings bounds:(CGRect)bounds idiom:(int64_t)idiom usesIntelligentFillLight:(BOOL)light;
- (CATransform3D)viewTransform;
- (CGRect)meshFrame;
- (void)_setMeshFrame:(CGRect)frame;
- (void)_setViewTransform:(CATransform3D *)transform;
@end

@implementation _SUIAShockwaveMeshConfiguration

- (void)_setMeshFrame:(CGRect)frame
{
  propertyDictionary = self->super._propertyDictionary;
  frameCopy = frame;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&frameCopy objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"meshFrame"];
}

- (CGRect)meshFrame
{
  v7 = 0u;
  v8 = 0u;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"meshFrame"];
  [v2 getValue:&v7 size:32];

  v4 = *(&v7 + 1);
  v3 = *&v7;
  v6 = *(&v8 + 1);
  v5 = *&v8;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_setViewTransform:(CATransform3D *)transform
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = *&transform->m33;
  v9[4] = *&transform->m31;
  v9[5] = v4;
  v5 = *&transform->m43;
  v9[6] = *&transform->m41;
  v9[7] = v5;
  v6 = *&transform->m13;
  v9[0] = *&transform->m11;
  v9[1] = v6;
  v7 = *&transform->m23;
  v9[2] = *&transform->m21;
  v9[3] = v7;
  v8 = [MEMORY[0x277CCAE60] valueWithCATransform3D:v9];
  [(NSMutableDictionary *)propertyDictionary setObject:v8 forKey:@"viewTransform"];
}

- (CATransform3D)viewTransform
{
  v4 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"viewTransform"];
  if (v4)
  {
    v6 = v4;
    [v4 CATransform3DValue];
    v4 = v6;
  }

  else
  {
    *&retstr->m41 = 0u;
    *&retstr->m43 = 0u;
    *&retstr->m31 = 0u;
    *&retstr->m33 = 0u;
    *&retstr->m21 = 0u;
    *&retstr->m23 = 0u;
    *&retstr->m11 = 0u;
    *&retstr->m13 = 0u;
  }

  return result;
}

+ (id)meshConfigurationForState:(int64_t)state variant:(int64_t)variant normalizedStartLocation:(CGRect)location settings:(id)settings bounds:(CGRect)bounds idiom:(int64_t)idiom usesIntelligentFillLight:(BOOL)light
{
  lightCopy = light;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v13 = location.size.height;
  v14 = location.size.width;
  v15 = location.origin.y;
  v16 = location.origin.x;
  settingsCopy = settings;
  v20 = objc_alloc_init(_SUIAShockwaveMeshConfiguration);
  meshPointsAnimationSettings = [settingsCopy meshPointsAnimationSettings];
  meshPointsCancelledAnimationSettings = [settingsCopy meshPointsCancelledAnimationSettings];
  meshPositionAnimationSettings = [settingsCopy meshPositionAnimationSettings];
  v91 = v15;
  v24 = SUIAScreenEdgeForNormalizedButtonRect(meshPositionAnimationSettings);
  v25 = 0;
  if (variant > 1)
  {
    if (variant != 2)
    {
      if (variant != 3)
      {
        goto LABEL_10;
      }

      v26 = +[_SUIAShockwaveMeshes stingMesh];
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (!variant)
  {
    if (![settingsCopy useSiriMeshForCapture])
    {
      v26 = +[_SUIAShockwaveMeshes captureButtonMesh];
      goto LABEL_9;
    }

LABEL_8:
    v26 = +[_SUIAShockwaveMeshes siriButtonAndEdgeMesh];
LABEL_9:
    v25 = v26;
    goto LABEL_10;
  }

  if (variant == 1)
  {
    goto LABEL_8;
  }

LABEL_10:
  memset(&v96, 0, sizeof(v96));
  CATransform3DMakeScale(&v96, 1.0, -1.0, 1.0);
  if (v24 == 2)
  {
    v94 = v96;
    v27 = 1.57079633;
  }

  else
  {
    if (v24 == 1)
    {
      goto LABEL_19;
    }

    v94 = v96;
    if (v24 == 8)
    {
      v27 = -1.57079633;
    }

    else
    {
      v27 = 3.14159265;
    }
  }

  CATransform3DRotate(&v95, &v94, v27, 0.0, 0.0, 1.0);
  v96 = v95;
LABEL_19:
  v28 = v16;
  v92 = v14;
  v90 = v13;
  v95 = v96;
  [(_SUIAShockwaveMeshConfiguration *)v20 _setViewTransform:&v95];
  v29 = height;
  v30 = width;
  v31 = BSRectWithSize();
  if (state > 5)
  {
    goto LABEL_55;
  }

  if (((1 << state) & 0x2C) != 0)
  {
    v98.origin.x = x;
    v98.origin.y = y;
    v98.size.width = width;
    v98.size.height = height;
    CGRectGetWidth(v98);
    v99.origin.x = x;
    v99.origin.y = y;
    v99.size.width = width;
    v99.size.height = height;
    CGRectGetHeight(v99);
    [settingsCopy meshSquareFinalSizeDiagonalRatio];
    if (v24 == 4 || v24 == 1)
    {
      v100.origin.x = x;
      v100.origin.y = y;
      v100.size.width = width;
      v100.size.height = height;
      CGRectGetWidth(v100);
      [settingsCopy meshRectangularFinalShortDimensionRatio];
      v101.origin.x = x;
      v101.origin.y = y;
      v101.size.width = width;
      v101.size.height = height;
      CGRectGetHeight(v101);
      [settingsCopy meshRectangularFinalLongDimensionRatio];
    }

    v102.origin.x = SUIAExpandNormalizedRect(x, y, width, height, v16);
    v63 = v102.origin.x;
    v64 = v102.origin.y;
    v65 = v29;
    v66 = v102.size.width;
    v67 = y;
    v68 = v102.size.height;
    CGRectGetMidX(v102);
    v103.origin.x = v63;
    v103.origin.y = v64;
    v103.size.width = v66;
    v103.size.height = v68;
    CGRectGetMidY(v103);
    if ([settingsCopy shouldBehaveLikeLargeScreenIdiom:idiom])
    {
      [settingsCopy meshFinalProportionTowardsCenterOnLargeDisplays];
      UIRectGetCenter();
      v69 = v65;
      v70 = x;
      v71 = v67;
      v72 = v69;
      UIRectGetCenter();
    }

    else
    {
      v72 = v65;
      v70 = x;
      v71 = v67;
    }

    if (v24 == 2)
    {
      v104.origin.x = v70;
      v104.origin.y = v71;
      v104.size.width = width;
      v104.size.height = v72;
      CGRectGetWidth(v104);
      v105.origin.x = v70;
      v105.origin.y = v71;
      v105.size.width = width;
      v105.size.height = v72;
      CGRectGetWidth(v105);
      [settingsCopy meshFinalProportionAcrossScreenLongEdge];
    }

    else if (v24 == 1)
    {
      v106.origin.x = v70;
      v106.origin.y = v71;
      v106.size.width = width;
      v106.size.height = v72;
      CGRectGetHeight(v106);
      [settingsCopy meshFinalProportionAcrossScreenShortEdge];
    }

    else
    {
      v73 = v70;
      v74 = v71;
      v75 = width;
      v76 = v72;
      if (v24 == 8)
      {
        CGRectGetWidth(*&v73);
        [settingsCopy meshFinalProportionAcrossScreenLongEdge];
      }

      else
      {
        CGRectGetHeight(*&v73);
        v107.origin.y = v71;
        v107.origin.x = v70;
        v107.size.width = width;
        v107.size.height = v72;
        CGRectGetHeight(v107);
        [settingsCopy meshFinalProportionAcrossScreenShortEdge];
      }
    }

    BSRectCenteredAboutPoint();
    [(_SUIAShockwaveMeshConfiguration *)v20 _setMeshFrame:?];
    if (variant)
    {
      v77 = 7;
    }

    else
    {
      if (lightCopy)
      {
        [settingsCopy visionIntelligenceHintRetargetImpulse];
      }

      else
      {
        [settingsCopy captureHintRetargetImpulse];
      }

      v79 = v78;
      v80 = [meshPointsAnimationSettings copy];

      [v80 retargetImpulse];
      [v80 setRetargetImpulse:v79 + v81];
      v82 = [meshPointsCancelledAnimationSettings copy];

      [v82 retargetImpulse];
      [v82 setRetargetImpulse:v79 + v83];
      v84 = [meshPositionAnimationSettings copy];

      [v84 retargetImpulse];
      [v84 setRetargetImpulse:v79 + v85];
      if ([settingsCopy useSiriMeshForCapture])
      {
        v77 = 7;
      }

      else
      {
        v77 = 9;
      }

      meshPositionAnimationSettings = v84;
      meshPointsCancelledAnimationSettings = v82;
      meshPointsAnimationSettings = v80;
    }

    [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:meshPositionAnimationSettings forKeypath:@"meshFrame"];
    v86 = [_SUIAShockwaveMeshes identityMeshTransformRows:v77 columns:v77];
    [(_SUIAShockwaveMeshConfiguration *)v20 _setMeshTransform:v86];

    if (state == 5)
    {
      v87 = meshPointsCancelledAnimationSettings;
    }

    else
    {
      v87 = meshPointsAnimationSettings;
    }

    [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v87 forKeypath:@"meshTransform"];
    if (state != 5)
    {
      [settingsCopy meshPointsEndTransitionDelay];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setDelay:@"meshTransform" forApplicationOfKeypath:?];
    }
  }

  else
  {
    v39 = v32;
    v40 = v33;
    v41 = v34;
    v42 = v35;
    if (((1 << state) & 0x11) != 0)
    {
      [(_SUIAShockwaveMeshConfiguration *)v20 _setMeshFrame:SAUIRectMovedOffscreenByProportionToNormalizedButtonRectInContextOfShockwaveBounds(v32, v33, v34, v35, 1.0, v36, v37, v38, v31, v28, v91, v92, v90, x, y, v30, v29)];
      [(_SUIAShockwaveMeshConfiguration *)v20 _setMeshTransform:v25];
      if (state != 4)
      {
        goto LABEL_55;
      }

      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:meshPositionAnimationSettings forKeypath:@"meshFrame"];
      v43 = v20;
      v44 = meshPointsCancelledAnimationSettings;
    }

    else
    {
      v45 = SAUIRectMovedOffscreenByProportionToNormalizedButtonRectInContextOfShockwaveBounds(v32, v33, v34, v35, 1.0, v36, v37, v38, v31, v28, v91, v92, v90, x, y, v30, v29);
      if (!variant)
      {
        captureHintMeshOffset = [settingsCopy captureHintMeshOffset];
        v54 = SAUIRectMovedOffscreenByProportionToNormalizedButtonRectInContextOfShockwaveBounds(v39, v40, v41, v42, v50, v51, v52, v53, captureHintMeshOffset, v28, v91, v92, v90, x, y, v30, v29);
        v56 = v55;
        v58 = v57;
        v60 = v59;
        captureHintAnimationSettings = [settingsCopy captureHintAnimationSettings];

        captureHintAnimationSettings2 = [settingsCopy captureHintAnimationSettings];

        v48 = v60;
        v47 = v58;
        v46 = v56;
        v45 = v54;
        meshPositionAnimationSettings = captureHintAnimationSettings;
        meshPointsAnimationSettings = captureHintAnimationSettings2;
      }

      [(_SUIAShockwaveMeshConfiguration *)v20 _setMeshFrame:v45, v46, v47, v48];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:meshPositionAnimationSettings forKeypath:@"meshFrame"];
      [(_SUIAShockwaveMeshConfiguration *)v20 _setMeshTransform:v25];
      v43 = v20;
      v44 = meshPointsAnimationSettings;
    }

    [(_SUIAAbstractDictionaryBackedConfiguration *)v43 _setBehaviorSettings:v44 forKeypath:@"meshTransform"];
  }

LABEL_55:

  return v20;
}

@end