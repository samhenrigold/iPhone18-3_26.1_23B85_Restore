@interface TSCH3DChartBarSceneObject
+ (id)partWithEnumerator:(id)enumerator layoutSettings:(id *)settings;
+ (void)addHorizontalTransformToProperties:(id)properties;
+ (void)updateLightingEffectsState:(id)state scene:(id)scene;
- (tvec2<float>)labelObjectSpacePosition:(unsigned int)position axisValue:(double)value intercept:(double)intercept;
- (void)updateLightingEffectsState:(id)state scene:(id)scene;
@end

@implementation TSCH3DChartBarSceneObject

+ (void)addHorizontalTransformToProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = objc_msgSend_transform(TSCH3DTransform, v4, v5, v6);
  v18 = 0x3F0000003F000000;
  v19 = 0;
  objc_msgSend_setCenter_(v7, v8, 0.0000305175853, v9, v10, &v18);
  LODWORD(v11) = -1087044365;
  LODWORD(v12) = 1060439283;
  objc_msgSend_setRotation_(v7, v13, COERCE_DOUBLE(0x8000000080000000), COERCE_DOUBLE(0x8000000080000000), v11, v12);
  objc_msgSend_setElementsTransform_(propertiesCopy, v14, v15, v16, v17, v7);
}

+ (void)updateLightingEffectsState:(id)state scene:(id)scene
{
  stateCopy = state;
  sceneCopy = scene;
  v11 = objc_msgSend_camera(sceneCopy, v7, v8, v9, v10);
  v15 = v11;
  if (v11)
  {
    objc_msgSend_space(v11, v12, v13, v14);
  }

  else
  {
    memset(v54, 0, sizeof(v54));
  }

  v20 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v16, v17, v18, v19, sceneCopy);
  v25 = v20;
  if (v20)
  {
    objc_msgSend_stageXYCenter(v20, v21, v22, v23);
    v26 = v52;
    v27 = v53;
  }

  else
  {
    v53 = 0.0;
    v52 = 0;
    v26 = 0;
    v27 = 0.0;
  }

  *&v49[12] = 0;
  *&v49[4] = 0;
  *v49 = 1065353216;
  *&v49[20] = 1065353216;
  *&v49[24] = 0;
  *&v50 = 0;
  v28 = vmul_f32(v26, 0);
  v29 = vrev64_s32(v28);
  v28.f32[0] = vaddv_f32(v28);
  *v24.i32 = v27 * 0.0;
  *(&v50 + 1) = 1065353216;
  *&v51 = vadd_f32(vadd_f32(vadd_f32(v26, v29), vdup_lane_s32(v24, 0)), 0);
  *(&v51 + 2) = (v27 + v28.f32[0]) + 0.0;
  *(&v51 + 3) = (v28.f32[0] + (v27 * 0.0)) + 1.0;
  *v44 = xmmword_2764D6210;
  *&v44[16] = 0xB33BBD2E3F800000;
  v45 = 0;
  v46 = 0;
  *&v47[12] = 0;
  *&v47[4] = 0;
  *v47 = 1065353215;
  v48 = 1.0;
  sub_2761558A0(v49, v44, &v40);
  *v49 = v40;
  *&v49[16] = v41;
  v50 = v42;
  v51 = *v43;
  *v30.i32 = v53 * -0.0;
  v31 = vmul_f32(v52, 0x8000000080000000);
  v32 = vadd_f32(vsub_f32(v31, vrev64_s32(v52)), vdup_lane_s32(v30, 0));
  *&v44[12] = 0;
  *&v44[4] = 0;
  *v44 = 1065353216;
  *&v44[20] = 1065353216;
  v45 = 0;
  v46 = 0;
  v31.f32[0] = vaddv_f32(v31);
  *v47 = 1065353216;
  *&v47[8] = vadd_f32(v32, 0);
  *&v47[16] = (v31.f32[0] - v53) + 0.0;
  v48 = (v31.f32[0] + (v53 * -0.0)) + 1.0;
  sub_2761558A0(v49, v44, &v40);
  *v49 = v40;
  *&v49[16] = v41;
  v50 = v42;
  v51 = *v43;
  if (sceneCopy)
  {
    objc_msgSend_transform(sceneCopy, *&v42, v43[0], v33);
  }

  else
  {
    memset(v38, 0, sizeof(v38));
  }

  sub_2761558A0(v54, v38, v39);
  sub_2761558A0(v39, v49, v44);
  *&v34 = sub_27617F7E4(&v40, v54, v44);
  objc_msgSend_setLightingPackageEffectState_effectsStates_(TSCH3DLightingPackageShaderEffect, v35, v34, v36, v37, &v40, stateCopy);
}

+ (id)partWithEnumerator:(id)enumerator layoutSettings:(id *)settings
{
  enumeratorCopy = enumerator;
  v24 = *settings;
  v23.receiver = self;
  v23.super_class = &OBJC_METACLASS___TSCH3DChartBarSceneObject;
  v7 = objc_msgSendSuper2(&v23, sel_partWithEnumerator_layoutSettings_, enumeratorCopy, &v24);
  v12 = objc_msgSend_properties(v7, v8, v9, v10, v11);

  objc_msgSend_addHorizontalTransformToProperties_(self, v13, v14, v15, v16, v12);
  v21 = objc_msgSend_scenePartWithEnumerator_properties_(TSCH3DScenePart, v17, v18, v19, v20, enumeratorCopy, v12);

  return v21;
}

- (tvec2<float>)labelObjectSpacePosition:(unsigned int)position axisValue:(double)value intercept:(double)intercept
{
  positionCopy = position;
  if ((position & 0x10) != 0)
  {
    positionCopy = position & 0xFFFFFFE7 | 8;
  }

  if ((positionCopy & 0x20) != 0)
  {
    v6 = positionCopy & 0xFFFFFFCB | 4;
  }

  else
  {
    v6 = positionCopy;
  }

  v8.receiver = self;
  v8.super_class = TSCH3DChartBarSceneObject;
  return [(TSCH3DChartElementSceneObject *)&v8 labelObjectSpacePosition:v6 axisValue:value intercept:intercept];
}

- (void)updateLightingEffectsState:(id)state scene:(id)scene
{
  stateCopy = state;
  sceneCopy = scene;
  v6 = objc_opt_class();
  objc_msgSend_updateLightingEffectsState_scene_(v6, v7, v8, v9, v10, stateCopy, sceneCopy);
}

@end