@interface VFXParametricModel
+ (id)capsuleWithCapRadius:(float)radius height:(float)height;
+ (id)coneWithTopRadius:(float)radius bottomRadius:(float)bottomRadius height:(float)height;
+ (id)cubeWithWidth:(float)width height:(float)height length:(float)length chamferRadius:(float)radius;
+ (id)cylinderWithRadius:(float)radius height:(float)height;
+ (id)planeWithWidth:(float)width height:(float)height;
+ (id)pyramidWithWidth:(float)width height:(float)height length:(float)length;
+ (id)sphereWithRadius:(float)radius;
+ (id)torusWithRingRadius:(float)radius pipeRadius:(float)pipeRadius;
+ (id)tubeWithInnerRadius:(float)radius outerRadius:(float)outerRadius height:(float)height;
+ (id)unitCube;
- (BOOL)getBoundingBoxMin:(VFXParametricModel *)self max:(SEL)max;
- (BOOL)getBoundingSphereCenter:(VFXParametricModel *)self radius:(SEL)radius;
- (BOOL)isGeodesic;
- (BOOL)isHemispheric;
- (NSArray)bridgedComponentNames;
- (VFXParametricModel)init;
- (VFXParametricModel)initWithCoder:(id)coder;
- (VFXParametricModel)initWithDefaultMaterial;
- (float)chamferRadius;
- (float)height;
- (float)innerRadius;
- (float)length;
- (float)pipeRadius;
- (float)radialSpan;
- (float)radius;
- (float)topRadius;
- (float)width;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initPresentationParametricModelWithParametricGeometryRef:(__CFXParametricGeometry *)ref;
- (id)initUninitialized;
- (id)mesh;
- (id)presentationModel;
- (int)_sphereType;
- (int64_t)capSegmentCount;
- (int64_t)chamferSegmentCount;
- (int64_t)cornerSegmentCount;
- (int64_t)heightSegmentCount;
- (int64_t)lengthSegmentCount;
- (int64_t)parametricType;
- (int64_t)pipeSegmentCount;
- (int64_t)primitiveType;
- (int64_t)radialSegmentCount;
- (int64_t)segmentCount;
- (int64_t)widthSegmentCount;
- (void)_notifyModelChanged;
- (void)_setupObjCModelFrom:(id)from;
- (void)_updateModelFromPresentation;
- (void)_updateModelFromPresentation:(__CFXParametricGeometry *)presentation;
- (void)_updatePresentationFromModel;
- (void)_updateSphereType;
- (void)encodeWithCoder:(id)coder;
- (void)setCapSegmentCount:(int64_t)count;
- (void)setChamferRadius:(float)radius;
- (void)setChamferSegmentCount:(int64_t)count;
- (void)setCornerSegmentCount:(int64_t)count;
- (void)setGeodesic:(BOOL)geodesic;
- (void)setHeight:(float)height;
- (void)setHeightSegmentCount:(int64_t)count;
- (void)setHemispheric:(BOOL)hemispheric;
- (void)setInnerRadius:(float)radius;
- (void)setLength:(float)length;
- (void)setLengthSegmentCount:(int64_t)count;
- (void)setParametricType:(int64_t)type;
- (void)setPipeRadius:(float)radius;
- (void)setPipeSegmentCount:(int64_t)count;
- (void)setPrimitiveType:(int64_t)type;
- (void)setRadialSegmentCount:(int64_t)count;
- (void)setRadialSpan:(float)span;
- (void)setRadius:(float)radius;
- (void)setSegmentCount:(int64_t)count;
- (void)setTopRadius:(float)radius;
- (void)setWidth:(float)width;
- (void)setWidthSegmentCount:(int64_t)count;
@end

@implementation VFXParametricModel

- (VFXParametricModel)init
{
  v3 = [VFXParametricModel __createCFObject]_0();
  v13.receiver = self;
  v13.super_class = VFXParametricModel;
  v4 = [(VFXModel *)&v13 initWithModelRef:v3];
  v7 = v4;
  if (v4)
  {
    objc_msgSend__updateModelFromPresentation(v4, v5, v6);
    v10 = objc_msgSend_material(VFXMaterial, v8, v9);
    objc_msgSend_setFirstMaterial_(v7, v11, v10);
  }

  CFRelease(v3);
  return v7;
}

- (VFXParametricModel)initWithDefaultMaterial
{
  v3 = [VFXParametricModel __createCFObject]_0();
  v13.receiver = self;
  v13.super_class = VFXParametricModel;
  v4 = [(VFXModel *)&v13 initWithModelRef:v3];
  v7 = v4;
  if (v4)
  {
    objc_msgSend__updateModelFromPresentation(v4, v5, v6);
    v10 = objc_msgSend_material(VFXMaterial, v8, v9);
    objc_msgSend_setFirstMaterial_(v7, v11, v10);
  }

  CFRelease(v3);
  return v7;
}

- (id)initUninitialized
{
  v3 = sub_1AF1C2020(0, 0);
  v7.receiver = self;
  v7.super_class = VFXParametricModel;
  v4 = [(VFXModel *)&v7 initWithModelRef:v3];
  v5 = v4;
  if (v4)
  {
    v4->_type = -1;
  }

  CFRelease(v3);
  return v5;
}

- (id)initPresentationParametricModelWithParametricGeometryRef:(__CFXParametricGeometry *)ref
{
  v4.receiver = self;
  v4.super_class = VFXParametricModel;
  return [(VFXModel *)&v4 initPresentationModelWithModelRef:ref];
}

- (id)mesh
{
  v7.receiver = self;
  v7.super_class = VFXParametricModel;
  result = [(VFXModel *)&v7 mesh];
  if (!result)
  {
    objc_msgSend__recreateMeshFromPresentation(self, v4, v5);
    v6.receiver = self;
    v6.super_class = VFXParametricModel;
    return [(VFXModel *)&v6 mesh];
  }

  return result;
}

- (id)presentationModel
{
  if (objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self;
  }

  v5 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_modelRef(self, v6, v7);
  inited = objc_msgSend_initPresentationParametricModelWithParametricGeometryRef_(v5, v9, v8);

  return inited;
}

- (id)description
{
  type = self->_type;
  if (type <= 3)
  {
    if (type <= 1)
    {
      if (!type)
      {
        v19 = MEMORY[0x1E696AEC0];
        width = self->_width;
        height = self->_height;
        length = self->_length;
        v40 = objc_msgSend_modelDescription(self, a2, v2);
        return objc_msgSend_stringWithFormat_(v19, v23, @"<Cube [w=%f h=%f l=%f] %@>", *&width, *&height, *&length, v40);
      }

      if (type == 1)
      {
        v8 = MEMORY[0x1E696AEC0];
        radius = self->_radius;
        v33 = objc_msgSend_modelDescription(self, a2, v2);
        return objc_msgSend_stringWithFormat_(v8, v10, @"<Sphere [r=%f]> %@", *&radius, v33);
      }

      return @"unknown parametric type";
    }

    v11 = MEMORY[0x1E696AEC0];
    v12 = self->_width;
    v13 = self->_height;
    if (type == 2)
    {
      v38 = objc_msgSend_modelDescription(self, a2, v2);
      return objc_msgSend_stringWithFormat_(v11, v24, @"<Plane [w=%f h=%f]> %@", *&v12, *&v13, v38);
    }

    else
    {
      v14 = self->_length;
      v39 = objc_msgSend_modelDescription(self, a2, v2);
      return objc_msgSend_stringWithFormat_(v11, v15, @"<pyramid [w=%f h=%f l=%f] %@>", *&v12, *&v13, *&v14, v39);
    }
  }

  else
  {
    if (type > 5)
    {
      switch(type)
      {
        case 6:
          v25 = MEMORY[0x1E696AEC0];
          v26 = self->_height;
          v35 = objc_msgSend_modelDescription(self, a2, v2);
          return objc_msgSend_stringWithFormat_(v25, v27, @"<Tube [h=%f]> %@", *&v26, v35);
        case 7:
          v29 = MEMORY[0x1E696AEC0];
          v30 = self->_height;
          v37 = objc_msgSend_modelDescription(self, a2, v2);
          return objc_msgSend_stringWithFormat_(v29, v31, @"<Capsule [h=%f]> %@", *&v30, v37);
        case 8:
          v4 = MEMORY[0x1E696AEC0];
          v5 = self->_radius;
          v32 = objc_msgSend_modelDescription(self, a2, v2);
          return objc_msgSend_stringWithFormat_(v4, v6, @"<Torus [r=%f]> %@", *&v5, v32);
      }

      return @"unknown parametric type";
    }

    v16 = MEMORY[0x1E696AEC0];
    v17 = self->_height;
    if (type == 4)
    {
      v36 = objc_msgSend_modelDescription(self, a2, v2);
      return objc_msgSend_stringWithFormat_(v16, v28, @"<Cylinder [h=%f]> %@", *&v17, v36);
    }

    else
    {
      v34 = objc_msgSend_modelDescription(self, a2, v2);
      return objc_msgSend_stringWithFormat_(v16, v18, @"<Cone [h=%f]> %@", *&v17, v34);
    }
  }
}

- (void)_updateModelFromPresentation
{
  v7.receiver = self;
  v7.super_class = VFXParametricModel;
  [(VFXModel *)&v7 _updateModelFromPresentation];
  v5 = objc_msgSend_modelRef(self, v3, v4);
  objc_msgSend__updateModelFromPresentation_(self, v6, v5);
}

- (void)_updateModelFromPresentation:(__CFXParametricGeometry *)presentation
{
  self->_type = sub_1AF1BE834(presentation, a2);
  v5 = sub_1AF1BECB4(presentation, 0);
  self->_width = *&v5;
  v6 = sub_1AF1BECB4(presentation, 1);
  self->_height = *&v6;
  v7 = sub_1AF1BECB4(presentation, 2);
  self->_length = *&v7;
  v8 = sub_1AF1BECB4(presentation, 3);
  self->_chamferRadius = *&v8;
  v9 = sub_1AF1BECB4(presentation, 4);
  self->_radius = *&v9;
  v10 = sub_1AF1BECB4(presentation, 7);
  self->_pipeRadius = *&v10;
  v11 = sub_1AF1BECB4(presentation, 5);
  self->_topRadius = *&v11;
  v12 = sub_1AF1BECB4(presentation, 6);
  self->_innerRadius = *&v12;
  self->_widthSegmentCount = sub_1AF1C2450(presentation, 9);
  self->_heightSegmentCount = sub_1AF1C2450(presentation, 10);
  self->_lengthSegmentCount = sub_1AF1C2450(presentation, 11);
  self->_chamferSegmentCount = sub_1AF1C2450(presentation, 12);
  self->_pipeSegmentCount = sub_1AF1C2450(presentation, 15);
  self->_capSegmentCount = sub_1AF1C2450(presentation, 14);
  self->_cornerSegmentCount = sub_1AF1C2450(presentation, 12);
  self->_segmentCount = sub_1AF1C2DC8(presentation, v13);
  self->_radialSegmentCount = sub_1AF1C2B98(presentation, v14);
  v15 = sub_1AF1C2450(presentation, 19);
  self->_spheregeodesic = v15 == 1;
  self->_spherehemispheric = v15 == 2;
  v16 = sub_1AF1BECB4(presentation, 18);
  self->_radialSpan = *&v16;
  self->_primitiveType = sub_1AF1C2450(presentation, 17);
}

- (void)_updatePresentationFromModel
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF3113C8;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v4);
  v3.receiver = self;
  v3.super_class = VFXParametricModel;
  [(VFXModel *)&v3 _updateModelFromPresentation];
}

- (void)_setupObjCModelFrom:(id)from
{
  v94.receiver = self;
  v94.super_class = VFXParametricModel;
  [(VFXModel *)&v94 _setupObjCModelFrom:?];
  objc_msgSend_begin(VFXTransaction, v5, v6);
  objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1);
  v10 = objc_msgSend_primitiveType(from, v8, v9);
  objc_msgSend_setPrimitiveType_(self, v11, v10);
  objc_msgSend_width(from, v12, v13);
  objc_msgSend_setWidth_(self, v14, v15);
  objc_msgSend_height(from, v16, v17);
  objc_msgSend_setHeight_(self, v18, v19);
  objc_msgSend_length(from, v20, v21);
  objc_msgSend_setLength_(self, v22, v23);
  objc_msgSend_radius(from, v24, v25);
  objc_msgSend_setRadius_(self, v26, v27);
  objc_msgSend_chamferRadius(from, v28, v29);
  objc_msgSend_setChamferRadius_(self, v30, v31);
  objc_msgSend_topRadius(from, v32, v33);
  objc_msgSend_setTopRadius_(self, v34, v35);
  objc_msgSend_pipeRadius(from, v36, v37);
  objc_msgSend_setPipeRadius_(self, v38, v39);
  objc_msgSend_innerRadius(from, v40, v41);
  objc_msgSend_setInnerRadius_(self, v42, v43);
  v46 = objc_msgSend_segmentCount(from, v44, v45);
  objc_msgSend_setSegmentCount_(self, v47, v46);
  v50 = objc_msgSend_widthSegmentCount(from, v48, v49);
  objc_msgSend_setWidthSegmentCount_(self, v51, v50);
  v54 = objc_msgSend_heightSegmentCount(from, v52, v53);
  objc_msgSend_setHeightSegmentCount_(self, v55, v54);
  v58 = objc_msgSend_lengthSegmentCount(from, v56, v57);
  objc_msgSend_setLengthSegmentCount_(self, v59, v58);
  v62 = objc_msgSend_cornerSegmentCount(from, v60, v61);
  objc_msgSend_setCornerSegmentCount_(self, v63, v62);
  v66 = objc_msgSend_pipeSegmentCount(from, v64, v65);
  objc_msgSend_setPipeSegmentCount_(self, v67, v66);
  v70 = objc_msgSend_capSegmentCount(from, v68, v69);
  objc_msgSend_setCapSegmentCount_(self, v71, v70);
  v74 = objc_msgSend_radialSegmentCount(from, v72, v73);
  objc_msgSend_setRadialSegmentCount_(self, v75, v74);
  objc_msgSend_radialSpan(from, v76, v77);
  objc_msgSend_setRadialSpan_(self, v78, v79);
  isGeodesic = objc_msgSend_isGeodesic(from, v80, v81);
  objc_msgSend_setGeodesic_(self, v83, isGeodesic);
  isHemispheric = objc_msgSend_isHemispheric(from, v84, v85);
  objc_msgSend_setHemispheric_(self, v87, isHemispheric);
  v90 = objc_msgSend_parametricType(from, v88, v89);
  objc_msgSend_setParametricType_(self, v91, v90);
  objc_msgSend_commitImmediate(VFXTransaction, v92, v93);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(objc_opt_class());
  inited = objc_msgSend_initUninitialized(v4, v5, v6);
  if (objc_msgSend_behaviorGraph(self, v8, v9))
  {
    v12 = objc_msgSend_behaviorGraph(self, v10, v11);
    v15 = objc_msgSend_copy(v12, v13, v14);
    objc_msgSend_setBehaviorGraph_(inited, v16, v15);
    v19 = objc_msgSend_entityObject(v15, v17, v18);
    v27 = objc_msgSend_identifier(self, v20, v21);
    v28[0] = inited;
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, v28, &v27, 1);
    objc_msgSend_updateVFXObjectReferences_(v19, v24, v23);
  }

  objc_msgSend__setupObjCModelFrom_(inited, v10, self);
  objc_msgSend__copyAttributesTo_(self, v25, inited);
  return inited;
}

- (BOOL)getBoundingBoxMin:(VFXParametricModel *)self max:(SEL)max
{
  v4 = v3;
  v5 = v2;
  DWORD2(v23) = 0;
  *&v23 = 0;
  DWORD2(v22) = 0;
  *&v22 = 0;
  if (!objc_msgSend_isPresentationObject(self, max, v2))
  {
    if (objc_msgSend__hasFixedBoundingBoxExtrema(self, v7, v8))
    {
      v21.receiver = self;
      v21.super_class = VFXParametricModel;
      return [(VFXModel *)&v21 getBoundingBoxMin:v5 max:v4];
    }

    type = self->_type;
    v16 = 1;
    if (type <= 3)
    {
      if (type > 1)
      {
        v17.i32[0] = LODWORD(self->_width);
        if (type == 2)
        {
          sub_1AF1BEC3C(&v23, &v22, *v17.i8, self->_height);
        }

        else
        {
          sub_1AF1BFB60(&v23, &v22, v17, self->_height, self->_length);
        }
      }

      else if (type)
      {
        if (type == 1)
        {
          v17.i32[0] = LODWORD(self->_radius);
          sub_1AF1C0344(&v23, &v22, *v17.i64, v18);
        }
      }

      else
      {
        v17.i32[0] = LODWORD(self->_width);
        sub_1AF1BF164(&v23, &v22, *v17.i8, self->_height, self->_length);
      }

      goto LABEL_17;
    }

    if (type <= 5)
    {
      if (type != 4)
      {
        v17.i32[0] = LODWORD(self->_topRadius);
        sub_1AF1C0C40(&v23, &v22, *v17.i8, self->_radius, self->_height);
        goto LABEL_17;
      }
    }

    else if (type != 6 && type != 7)
    {
      if (type == 8)
      {
        sub_1AF1C1B7C(&v23, &v22, self->_radius, self->_pipeRadius);
      }

      goto LABEL_17;
    }

    sub_1AF1C0710(&v23, &v22, self->_radius, self->_height);
    goto LABEL_17;
  }

  v9 = objc_msgSend_worldRef(self, v7, v8);
  v12 = v9;
  if (v9)
  {
    sub_1AF1CEA20(v9, v10);
  }

  if (objc_msgSend_modelRef(self, v10, v11))
  {
    v15 = objc_msgSend_modelRef(self, v13, v14);
    v16 = sub_1AF1BED40(v15, &v23, &v22);
    if (!v12)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v16 = 0;
  if (v12)
  {
LABEL_16:
    sub_1AF1CEA9C(v12, v13);
  }

LABEL_17:
  if (v5)
  {
    *v5 = v23;
  }

  if (v4)
  {
    *v4 = v22;
  }

  return v16;
}

- (BOOL)getBoundingSphereCenter:(VFXParametricModel *)self radius:(SEL)radius
{
  v4 = v3;
  v5 = v2;
  v21 = 0uLL;
  if (objc_msgSend_isPresentationObject(self, radius, v2))
  {
    v11 = objc_msgSend_worldRef(self, v7, v8);
    v14 = v11;
    if (v11)
    {
      sub_1AF1CEA20(v11, v12);
    }

    if (objc_msgSend_modelRef(self, v12, v13) && (v17 = objc_msgSend_modelRef(self, v15, v16), sub_1AF1BEDA8(v17, &v21)))
    {
      if (v5)
      {
        *v5 = v21;
      }

      if (v4)
      {
        *v4 = v21.i32[3];
      }

      v18 = 1;
      if (!v14)
      {
        return v18;
      }
    }

    else
    {
      v18 = 0;
      if (!v14)
      {
        return v18;
      }
    }

    sub_1AF1CEA9C(v14, v15);
    return v18;
  }

  v18 = 0;
  type = self->_type;
  if (type <= 3)
  {
    if (type > 1)
    {
      if (type == 2)
      {
        if (!sub_1AF1BECDC(&v21, self->_width, self->_height))
        {
          return 0;
        }
      }

      else
      {
        v9.i32[0] = LODWORD(self->_width);
        *&v10 = self->_height;
        if (!sub_1AF1BFC5C(&v21, v9, v10, self->_length))
        {
          return 0;
        }
      }
    }

    else if (type)
    {
      if (type != 1)
      {
        return v18;
      }

      if (!sub_1AF1C03B0(&v21, self->_radius))
      {
        return 0;
      }
    }

    else if (!sub_1AF1BF200(&v21, self->_width, self->_height, self->_length))
    {
      return 0;
    }
  }

  else if (type <= 5)
  {
    if (type == 4)
    {
      if (!sub_1AF1C082C(&v21, self->_radius, self->_height))
      {
        return 0;
      }
    }

    else if (!sub_1AF1C0D6C(&v21, self->_topRadius, self->_radius, self->_height))
    {
      return 0;
    }
  }

  else
  {
    switch(type)
    {
      case 6:
        if (!sub_1AF1C082C(&v21, self->_radius, self->_height))
        {
          return 0;
        }

        break;
      case 7:
        v9.i32[0] = LODWORD(self->_radius);
        if (!sub_1AF1C1710(&v21, *v9.i64, self->_height))
        {
          return 0;
        }

        break;
      case 8:
        if (!sub_1AF1C1C04(&v21, self->_radius, self->_pipeRadius))
        {
          return 0;
        }

        break;
      default:
        return v18;
    }
  }

  if (v5)
  {
    *v5 = v21;
  }

  if (v4)
  {
    *v4 = v21.i32[3];
  }

  return 1;
}

- (void)_notifyModelChanged
{
  HasChanged = objc_msgSend__meshForParametricModelHasChanged(self, a2, v2);
  if (sub_1AF28A2DC(HasChanged, v5))
  {
    v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v6, v7);

    objc_msgSend_postNotificationName_object_(v8, v9, @"kCFXNotificationParametricModelTypeDidChange", self);
  }
}

- (void)setParametricType:(int64_t)type
{
  if ((objc_msgSend_isPresentationObject(self, a2, type) & 1) != 0 || self->_type != type)
  {
    self->_type = type;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF312018;
    v8[3] = &unk_1E7A7E248;
    v8[4] = self;
    v8[5] = type;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v5, self, v8);
    objc_msgSend__notifyModelChanged(self, v6, v7);
  }
}

- (int64_t)parametricType
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_type;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1BE834(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (float)width
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_width;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1BF984(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setWidth:(float)width
{
  if ((objc_msgSend_isPresentationObject(self, a2, v3) & 1) != 0 || self->_width != width)
  {
    self->_width = width;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF312208;
    v9[3] = &unk_1E7A7E270;
    v9[4] = self;
    widthCopy = width;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"width", v9);
    objc_msgSend__notifyModelChanged(self, v7, v8);
  }
}

- (float)height
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_height;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1BF9CC(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setHeight:(float)height
{
  if ((objc_msgSend_isPresentationObject(self, a2, v3) & 1) != 0 || self->_height != height)
  {
    self->_height = height;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF312380;
    v9[3] = &unk_1E7A7E270;
    v9[4] = self;
    heightCopy = height;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"height", v9);
    objc_msgSend__notifyModelChanged(self, v7, v8);
  }
}

- (float)length
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_length;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1BFA14(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setLength:(float)length
{
  if ((objc_msgSend_isPresentationObject(self, a2, v3) & 1) != 0 || self->_length != length)
  {
    self->_length = length;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF3124F8;
    v9[3] = &unk_1E7A7E270;
    v9[4] = self;
    lengthCopy = length;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"length", v9);
    objc_msgSend__notifyModelChanged(self, v7, v8);
  }
}

- (float)radius
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_radius;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C07E4(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setRadius:(float)radius
{
  if ((objc_msgSend_isPresentationObject(self, a2, v3) & 1) != 0 || self->_radius != radius)
  {
    self->_radius = radius;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF312670;
    v9[3] = &unk_1E7A7E270;
    v9[4] = self;
    radiusCopy = radius;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"radius", v9);
    objc_msgSend__notifyModelChanged(self, v7, v8);
  }
}

- (float)chamferRadius
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_chamferRadius;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1BF028(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setChamferRadius:(float)radius
{
  if ((objc_msgSend_isPresentationObject(self, a2, v3) & 1) != 0 || self->_chamferRadius != radius)
  {
    self->_chamferRadius = radius;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF3127F0;
    v9[3] = &unk_1E7A7E270;
    v9[4] = self;
    radiusCopy = radius;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"chamferRadius", v9);
    objc_msgSend__notifyModelChanged(self, v7, v8);
  }
}

- (float)topRadius
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_topRadius;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C0D24(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setTopRadius:(float)radius
{
  if ((objc_msgSend_isPresentationObject(self, a2, v3) & 1) != 0 || self->_topRadius != radius)
  {
    self->_topRadius = radius;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF312968;
    v9[3] = &unk_1E7A7E270;
    v9[4] = self;
    radiusCopy = radius;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"topRadius", v9);
    objc_msgSend__notifyModelChanged(self, v7, v8);
  }
}

- (float)innerRadius
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_innerRadius;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C0D24(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setInnerRadius:(float)radius
{
  if ((objc_msgSend_isPresentationObject(self, a2, v3) & 1) != 0 || self->_innerRadius != radius)
  {
    self->_innerRadius = radius;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF312AE0;
    v9[3] = &unk_1E7A7E270;
    v9[4] = self;
    radiusCopy = radius;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"innerRadius", v9);
    objc_msgSend__notifyModelChanged(self, v7, v8);
  }
}

- (float)pipeRadius
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_pipeRadius;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C1F08(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setPipeRadius:(float)radius
{
  if ((objc_msgSend_isPresentationObject(self, a2, v3) & 1) != 0 || self->_pipeRadius != radius)
  {
    self->_pipeRadius = radius;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF312C58;
    v9[3] = &unk_1E7A7E270;
    v9[4] = self;
    radiusCopy = radius;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"pipeRadius", v9);
    objc_msgSend__notifyModelChanged(self, v7, v8);
  }
}

- (int64_t)segmentCount
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_segmentCount;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C2DC8(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setSegmentCount:(int64_t)count
{
  if ((objc_msgSend_isPresentationObject(self, a2, count) & 1) != 0 || self->_segmentCount != count)
  {
    self->_segmentCount = count;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF312DBC;
    v8[3] = &unk_1E7A7E248;
    v8[4] = self;
    v8[5] = count;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v5, self, @"segmentCount", v8);
    objc_msgSend__notifyModelChanged(self, v6, v7);
  }
}

- (int64_t)widthSegmentCount
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_widthSegmentCount;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C2A34(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setWidthSegmentCount:(int64_t)count
{
  if ((objc_msgSend_isPresentationObject(self, a2, count) & 1) != 0 || self->_widthSegmentCount != count)
  {
    self->_widthSegmentCount = count;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF312F20;
    v8[3] = &unk_1E7A7E248;
    v8[4] = self;
    v8[5] = count;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v5, self, @"widthSegmentCount", v8);
    objc_msgSend__notifyModelChanged(self, v6, v7);
  }
}

- (int64_t)heightSegmentCount
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_heightSegmentCount;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C2754(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setHeightSegmentCount:(int64_t)count
{
  if ((objc_msgSend_isPresentationObject(self, a2, count) & 1) != 0 || self->_heightSegmentCount != count)
  {
    self->_heightSegmentCount = count;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF313084;
    v8[3] = &unk_1E7A7E248;
    v8[4] = self;
    v8[5] = count;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v5, self, @"heightSegmentCount", v8);
    objc_msgSend__notifyModelChanged(self, v6, v7);
  }
}

- (int64_t)lengthSegmentCount
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_lengthSegmentCount;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C286C(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setLengthSegmentCount:(int64_t)count
{
  if ((objc_msgSend_isPresentationObject(self, a2, count) & 1) != 0 || self->_lengthSegmentCount != count)
  {
    self->_lengthSegmentCount = count;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF3131E8;
    v8[3] = &unk_1E7A7E248;
    v8[4] = self;
    v8[5] = count;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v5, self, @"lengthSegmentCount", v8);
    objc_msgSend__notifyModelChanged(self, v6, v7);
  }
}

- (int64_t)chamferSegmentCount
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_chamferSegmentCount;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C263C(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setChamferSegmentCount:(int64_t)count
{
  if ((objc_msgSend_isPresentationObject(self, a2, count) & 1) != 0 || self->_chamferSegmentCount != count)
  {
    self->_chamferSegmentCount = count;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF31334C;
    v8[3] = &unk_1E7A7E248;
    v8[4] = self;
    v8[5] = count;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v5, self, @"chamferSegmentCount", v8);
    objc_msgSend__notifyModelChanged(self, v6, v7);
  }
}

- (int64_t)cornerSegmentCount
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_cornerSegmentCount;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C263C(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setCornerSegmentCount:(int64_t)count
{
  if ((objc_msgSend_isPresentationObject(self, a2, count) & 1) != 0 || self->_cornerSegmentCount != count)
  {
    self->_cornerSegmentCount = count;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF3134B0;
    v8[3] = &unk_1E7A7E248;
    v8[4] = self;
    v8[5] = count;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v5, self, @"cornerSegmentCount", v8);
    objc_msgSend__notifyModelChanged(self, v6, v7);
  }
}

- (int64_t)pipeSegmentCount
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_pipeSegmentCount;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C2EE0(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setPipeSegmentCount:(int64_t)count
{
  if ((objc_msgSend_isPresentationObject(self, a2, count) & 1) != 0 || self->_pipeSegmentCount != count)
  {
    self->_pipeSegmentCount = count;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF313614;
    v8[3] = &unk_1E7A7E248;
    v8[4] = self;
    v8[5] = count;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v5, self, @"pipeSegmentCount", v8);
    objc_msgSend__notifyModelChanged(self, v6, v7);
  }
}

- (int64_t)capSegmentCount
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_capSegmentCount;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C2AE4(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setCapSegmentCount:(int64_t)count
{
  if ((objc_msgSend_isPresentationObject(self, a2, count) & 1) != 0 || self->_capSegmentCount != count)
  {
    self->_capSegmentCount = count;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF313778;
    v8[3] = &unk_1E7A7E248;
    v8[4] = self;
    v8[5] = count;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v5, self, @"capSegmentCount", v8);
    objc_msgSend__notifyModelChanged(self, v6, v7);
  }
}

- (int64_t)radialSegmentCount
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_radialSegmentCount;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C2B98(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setRadialSegmentCount:(int64_t)count
{
  if ((objc_msgSend_isPresentationObject(self, a2, count) & 1) != 0 || self->_radialSegmentCount != count)
  {
    self->_radialSegmentCount = count;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF3138DC;
    v8[3] = &unk_1E7A7E248;
    v8[4] = self;
    v8[5] = count;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v5, self, @"radialSegmentCount", v8);
    objc_msgSend__notifyModelChanged(self, v6, v7);
  }
}

- (float)radialSpan
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_radialSpan;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C2CB0(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setRadialSpan:(float)span
{
  if ((objc_msgSend_isPresentationObject(self, a2, v3) & 1) != 0 || self->_radialSpan != span)
  {
    self->_radialSpan = span;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF313A54;
    v9[3] = &unk_1E7A7E270;
    v9[4] = self;
    spanCopy = span;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v6, self, @"radialSpan", v9);
    objc_msgSend__notifyModelChanged(self, v7, v8);
  }
}

- (int64_t)primitiveType
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_primitiveType;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C291C(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setPrimitiveType:(int64_t)type
{
  if ((objc_msgSend_isPresentationObject(self, a2, type) & 1) != 0 || self->_primitiveType != type)
  {
    self->_primitiveType = type;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF313BB0;
    v8[3] = &unk_1E7A7E248;
    v8[4] = self;
    v8[5] = type;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v5, self, v8);
    objc_msgSend__notifyModelChanged(self, v6, v7);
  }
}

- (BOOL)isGeodesic
{
  if (objc_msgSend_isPresentationObject(self, a2, v2))
  {
    v6 = objc_msgSend_worldRef(self, v4, v5);
    v9 = v6;
    if (v6)
    {
      sub_1AF1CEA20(v6, v7);
    }

    v10 = objc_msgSend_modelRef(self, v7, v8);
    v13 = sub_1AF1C2528(v10, v11);
    if (v9)
    {
      sub_1AF1CEA9C(v9, v12);
    }
  }

  else
  {
    return self->_spheregeodesic;
  }

  return v13;
}

- (void)setGeodesic:(BOOL)geodesic
{
  geodesicCopy = geodesic;
  if ((objc_msgSend_isPresentationObject(self, a2, geodesic) & 1) != 0 || self->_spheregeodesic != geodesicCopy)
  {
    self->_spheregeodesic = geodesicCopy;
    if (geodesicCopy)
    {
      objc_msgSend_willChangeValueForKey_(self, v5, @"hemispheric");
      self->_spherehemispheric = 0;
      objc_msgSend_didChangeValueForKey_(self, v7, @"hemispheric");
    }

    objc_msgSend__updateSphereType(self, v5, v6);

    objc_msgSend__notifyModelChanged(self, v8, v9);
  }
}

- (BOOL)isHemispheric
{
  if (objc_msgSend_isPresentationObject(self, a2, v2))
  {
    v6 = objc_msgSend_worldRef(self, v4, v5);
    v9 = v6;
    if (v6)
    {
      sub_1AF1CEA20(v6, v7);
    }

    v10 = objc_msgSend_modelRef(self, v7, v8);
    v13 = sub_1AF1C2470(v10, v11);
    if (v9)
    {
      sub_1AF1CEA9C(v9, v12);
    }
  }

  else
  {
    return self->_spherehemispheric;
  }

  return v13;
}

- (int)_sphereType
{
  if (self->_spherehemispheric)
  {
    return 2;
  }

  else
  {
    return self->_spheregeodesic;
  }
}

- (void)_updateSphereType
{
  v4 = objc_msgSend__sphereType(self, a2, v2);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF313E24;
  v6[3] = &unk_1E7A7E270;
  v7 = v4;
  v6[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v5, self, v6);
}

- (void)setHemispheric:(BOOL)hemispheric
{
  hemisphericCopy = hemispheric;
  if ((objc_msgSend_isPresentationObject(self, a2, hemispheric) & 1) != 0 || self->_spherehemispheric != hemisphericCopy)
  {
    self->_spherehemispheric = hemisphericCopy;
    if (hemisphericCopy)
    {
      objc_msgSend_willChangeValueForKey_(self, v5, @"geodesic");
      self->_spheregeodesic = 0;
      objc_msgSend_didChangeValueForKey_(self, v7, @"geodesic");
    }

    objc_msgSend__updateSphereType(self, v5, v6);

    objc_msgSend__notifyModelChanged(self, v8, v9);
  }
}

+ (id)planeWithWidth:(float)width height:(float)height
{
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithDefaultMaterial(v6, v7, v8);
  objc_msgSend_setParametricType_(v9, v10, 2);
  *&v11 = width;
  objc_msgSend_setWidth_(v9, v12, v13, v11);
  *&v14 = height;
  objc_msgSend_setHeight_(v9, v15, v16, v14);

  return v9;
}

+ (id)cubeWithWidth:(float)width height:(float)height length:(float)length chamferRadius:(float)radius
{
  v10 = objc_alloc(objc_opt_class());
  v13 = objc_msgSend_initWithDefaultMaterial(v10, v11, v12);
  objc_msgSend_setParametricType_(v13, v14, 0);
  *&v15 = width;
  objc_msgSend_setWidth_(v13, v16, v17, v15);
  *&v18 = height;
  objc_msgSend_setHeight_(v13, v19, v20, v18);
  *&v21 = length;
  objc_msgSend_setLength_(v13, v22, v23, v21);
  *&v24 = radius;
  objc_msgSend_setChamferRadius_(v13, v25, v26, v24);

  return v13;
}

+ (id)unitCube
{
  LODWORD(v3) = 1.0;
  LODWORD(v4) = 1.0;
  LODWORD(v5) = 1.0;
  return objc_msgSend_cubeWithWidth_height_length_chamferRadius_(self, a2, v2, v3, v4, v5, 0.0);
}

+ (id)pyramidWithWidth:(float)width height:(float)height length:(float)length
{
  v8 = objc_alloc(objc_opt_class());
  v11 = objc_msgSend_initWithDefaultMaterial(v8, v9, v10);
  objc_msgSend_setParametricType_(v11, v12, 3);
  *&v13 = width;
  objc_msgSend_setWidth_(v11, v14, v15, v13);
  *&v16 = height;
  objc_msgSend_setHeight_(v11, v17, v18, v16);
  *&v19 = length;
  objc_msgSend_setLength_(v11, v20, v21, v19);

  return v11;
}

+ (id)cylinderWithRadius:(float)radius height:(float)height
{
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithDefaultMaterial(v6, v7, v8);
  objc_msgSend_setParametricType_(v9, v10, 4);
  *&v11 = radius;
  objc_msgSend_setRadius_(v9, v12, v13, v11);
  *&v14 = height;
  objc_msgSend_setHeight_(v9, v15, v16, v14);

  return v9;
}

+ (id)sphereWithRadius:(float)radius
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithDefaultMaterial(v4, v5, v6);
  objc_msgSend_setParametricType_(v7, v8, 1);
  *&v9 = radius;
  objc_msgSend_setRadius_(v7, v10, v11, v9);

  return v7;
}

+ (id)coneWithTopRadius:(float)radius bottomRadius:(float)bottomRadius height:(float)height
{
  v8 = objc_alloc(objc_opt_class());
  v11 = objc_msgSend_initWithDefaultMaterial(v8, v9, v10);
  objc_msgSend_setParametricType_(v11, v12, 5);
  *&v13 = radius;
  objc_msgSend_setTopRadius_(v11, v14, v15, v13);
  *&v16 = bottomRadius;
  objc_msgSend_setRadius_(v11, v17, v18, v16);
  *&v19 = height;
  objc_msgSend_setHeight_(v11, v20, v21, v19);

  return v11;
}

+ (id)tubeWithInnerRadius:(float)radius outerRadius:(float)outerRadius height:(float)height
{
  v8 = objc_alloc(objc_opt_class());
  v11 = objc_msgSend_initWithDefaultMaterial(v8, v9, v10);
  objc_msgSend_setParametricType_(v11, v12, 6);
  *&v13 = radius;
  objc_msgSend_setInnerRadius_(v11, v14, v15, v13);
  *&v16 = outerRadius;
  objc_msgSend_setRadius_(v11, v17, v18, v16);
  *&v19 = height;
  objc_msgSend_setHeight_(v11, v20, v21, v19);

  return v11;
}

+ (id)capsuleWithCapRadius:(float)radius height:(float)height
{
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithDefaultMaterial(v6, v7, v8);
  objc_msgSend_setParametricType_(v9, v10, 7);
  *&v11 = radius;
  objc_msgSend_setRadius_(v9, v12, v13, v11);
  *&v14 = height;
  objc_msgSend_setHeight_(v9, v15, v16, v14);

  return v9;
}

+ (id)torusWithRingRadius:(float)radius pipeRadius:(float)pipeRadius
{
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithDefaultMaterial(v6, v7, v8);
  objc_msgSend_setParametricType_(v9, v10, 8);
  *&v11 = radius;
  objc_msgSend_setRadius_(v9, v12, v13, v11);
  *&v14 = pipeRadius;
  objc_msgSend_setPipeRadius_(v9, v15, v16, v14);

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v38.receiver = self;
  v38.super_class = VFXParametricModel;
  [(VFXModel *)&v38 encodeWithCoder:?];
  if (objc_msgSend_isPresentationObject(self, v5, v6))
  {
    v9 = objc_msgSend_modelRef(self, v7, v8);
    objc_msgSend__updateModelFromPresentation_(self, v10, v9);
  }

  objc_msgSend_encodeInteger_forKey_(coder, v7, self->_type, @"parametricType");
  objc_msgSend_encodeDouble_forKey_(coder, v11, @"width", self->_width);
  objc_msgSend_encodeDouble_forKey_(coder, v12, @"height", self->_height);
  objc_msgSend_encodeDouble_forKey_(coder, v13, @"length", self->_length);
  objc_msgSend_encodeDouble_forKey_(coder, v14, @"radius", self->_radius);
  objc_msgSend_encodeDouble_forKey_(coder, v15, @"innerRadius", self->_innerRadius);
  objc_msgSend_encodeDouble_forKey_(coder, v16, @"chamferRadius", self->_chamferRadius);
  objc_msgSend_encodeDouble_forKey_(coder, v17, @"topRadius", self->_topRadius);
  objc_msgSend_encodeDouble_forKey_(coder, v18, @"pipeRadius", self->_pipeRadius);
  objc_msgSend_encodeInteger_forKey_(coder, v19, self->_widthSegmentCount, @"widthSegmentCount");
  objc_msgSend_encodeInteger_forKey_(coder, v20, self->_heightSegmentCount, @"heightSegmentCount");
  objc_msgSend_encodeInteger_forKey_(coder, v21, self->_lengthSegmentCount, @"lengthSegmentCount");
  objc_msgSend_encodeInteger_forKey_(coder, v22, self->_segmentCount, @"segmentCount");
  objc_msgSend_encodeInteger_forKey_(coder, v23, self->_chamferSegmentCount, @"chamferSegmentCount");
  objc_msgSend_encodeInteger_forKey_(coder, v24, self->_cornerSegmentCount, @"cornerSegmentCount");
  objc_msgSend_encodeInteger_forKey_(coder, v25, self->_pipeSegmentCount, @"pipeSegmentCount");
  objc_msgSend_encodeInteger_forKey_(coder, v26, self->_capSegmentCount, @"capSegmentCount");
  objc_msgSend_encodeInteger_forKey_(coder, v27, self->_radialSegmentCount, @"radialSegmentCount");
  objc_msgSend_encodeDouble_forKey_(coder, v28, @"radialSpan", self->_radialSpan);
  isGeodesic = objc_msgSend_isGeodesic(self, v29, v30);
  objc_msgSend_encodeBool_forKey_(coder, v32, isGeodesic, @"geodesic");
  isHemispheric = objc_msgSend_isHemispheric(self, v33, v34);
  objc_msgSend_encodeBool_forKey_(coder, v36, isHemispheric, @"hemispheric");
  objc_msgSend_encodeInteger_forKey_(coder, v37, self->_primitiveType, @"primitiveType");
}

- (VFXParametricModel)initWithCoder:(id)coder
{
  v86.receiver = self;
  v86.super_class = VFXParametricModel;
  v6 = [(VFXModel *)&v86 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    v10 = objc_msgSend_decodeIntegerForKey_(coder, v9, @"parametricType");
    objc_msgSend_setParametricType_(v6, v11, v10);
    objc_msgSend_decodeDoubleForKey_(coder, v12, @"width");
    *&v13 = v13;
    objc_msgSend_setWidth_(v6, v14, v15, v13);
    objc_msgSend_decodeDoubleForKey_(coder, v16, @"height");
    *&v17 = v17;
    objc_msgSend_setHeight_(v6, v18, v19, v17);
    objc_msgSend_decodeDoubleForKey_(coder, v20, @"length");
    *&v21 = v21;
    objc_msgSend_setLength_(v6, v22, v23, v21);
    objc_msgSend_decodeDoubleForKey_(coder, v24, @"radius");
    *&v25 = v25;
    objc_msgSend_setRadius_(v6, v26, v27, v25);
    objc_msgSend_decodeDoubleForKey_(coder, v28, @"innerRadius");
    *&v29 = v29;
    objc_msgSend_setInnerRadius_(v6, v30, v31, v29);
    objc_msgSend_decodeDoubleForKey_(coder, v32, @"chamferRadius");
    *&v33 = v33;
    objc_msgSend_setChamferRadius_(v6, v34, v35, v33);
    objc_msgSend_decodeDoubleForKey_(coder, v36, @"topRadius");
    *&v37 = v37;
    objc_msgSend_setTopRadius_(v6, v38, v39, v37);
    objc_msgSend_decodeDoubleForKey_(coder, v40, @"pipeRadius");
    *&v41 = v41;
    objc_msgSend_setPipeRadius_(v6, v42, v43, v41);
    v45 = objc_msgSend_decodeIntegerForKey_(coder, v44, @"segmentCount");
    objc_msgSend_setSegmentCount_(v6, v46, v45);
    v48 = objc_msgSend_decodeIntegerForKey_(coder, v47, @"chamferSegmentCount");
    objc_msgSend_setChamferSegmentCount_(v6, v49, v48);
    v51 = objc_msgSend_decodeIntegerForKey_(coder, v50, @"widthSegmentCount");
    objc_msgSend_setWidthSegmentCount_(v6, v52, v51);
    v54 = objc_msgSend_decodeIntegerForKey_(coder, v53, @"heightSegmentCount");
    objc_msgSend_setHeightSegmentCount_(v6, v55, v54);
    v57 = objc_msgSend_decodeIntegerForKey_(coder, v56, @"lengthSegmentCount");
    objc_msgSend_setLengthSegmentCount_(v6, v58, v57);
    v60 = objc_msgSend_decodeIntegerForKey_(coder, v59, @"cornerSegmentCount");
    objc_msgSend_setCornerSegmentCount_(v6, v61, v60);
    v63 = objc_msgSend_decodeIntegerForKey_(coder, v62, @"pipeSegmentCount");
    objc_msgSend_setPipeSegmentCount_(v6, v64, v63);
    v66 = objc_msgSend_decodeIntegerForKey_(coder, v65, @"capSegmentCount");
    objc_msgSend_setCapSegmentCount_(v6, v67, v66);
    v69 = objc_msgSend_decodeIntegerForKey_(coder, v68, @"radialSegmentCount");
    objc_msgSend_setRadialSegmentCount_(v6, v70, v69);
    objc_msgSend_decodeDoubleForKey_(coder, v71, @"radialSpan");
    *&v72 = v72;
    objc_msgSend_setRadialSpan_(v6, v73, v74, v72);
    v76 = objc_msgSend_decodeBoolForKey_(coder, v75, @"geodesic");
    objc_msgSend_setGeodesic_(v6, v77, v76);
    v79 = objc_msgSend_decodeBoolForKey_(coder, v78, @"hemispheric");
    objc_msgSend_setHemispheric_(v6, v80, v79);
    v82 = objc_msgSend_decodeIntegerForKey_(coder, v81, @"primitiveType");
    objc_msgSend_setPrimitiveType_(v6, v83, v82);
    objc_msgSend_setImmediateMode_(VFXTransaction, v84, v7);
  }

  return v6;
}

- (NSArray)bridgedComponentNames
{
  v2 = sub_1AFDFD3F8();

  return v2;
}

@end