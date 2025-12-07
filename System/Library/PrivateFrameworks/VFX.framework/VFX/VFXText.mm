@interface VFXText
+ (id)textWithString:(id)string extrusionDepth:(float)depth;
- ($80EDBB80750A9D2E1B4955686707C737)params;
- (BOOL)_wantsSeparateMeshElements;
- (BOOL)getBoundingBoxMin:(VFXText *)self max:(SEL)max;
- (BOOL)getBoundingSphereCenter:(VFXText *)self radius:(SEL)radius;
- (BOOL)isWrapped;
- (CGRect)containerFrame;
- (NSString)alignmentMode;
- (NSString)swiftString;
- (NSString)truncationMode;
- (UIBezierPath)chamferProfile;
- (UIFont)font;
- (VFXText)init;
- (VFXText)initWithCoder:(id)coder;
- (VFXText)initWithTextGeometryRef:(__CFXTextGeometry *)ref;
- (float)chamferRadius;
- (float)discretizedStraightLineMaxLength;
- (float)extrusionDepth;
- (float)flatness;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initPresentationTextGeometryWithTextGeometryRef:(__CFXTextGeometry *)ref;
- (id)patchFont:(id)font;
- (id)presentationModel;
- (id)string;
- (int64_t)primitiveType;
- (uint64_t)__createCFObject;
- (void)_customDecodingOfVFXText:(id)text;
- (void)_customEncodingOfVFXText:(id)text;
- (void)_setupObjCModelFrom:(id)from;
- (void)_updateModelFromPresentation:(__CFXTextGeometry *)presentation;
- (void)_updatePresentationFromModel;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAlignmentMode:(id)mode;
- (void)setChamferProfile:(id)profile;
- (void)setChamferRadius:(float)radius;
- (void)setContainerFrame:(CGRect)frame;
- (void)setDiscretizedStraightLineMaxLength:(float)length;
- (void)setExtrusionDepth:(float)depth;
- (void)setFlatness:(float)flatness;
- (void)setFont:(id)font;
- (void)setPrimitiveType:(int64_t)type;
- (void)setString:(id)string;
- (void)setTruncationMode:(id)mode;
- (void)setWrapped:(BOOL)wrapped;
- (void)set_wantsSeparateMeshElements:(BOOL)elements;
@end

@implementation VFXText

- (uint64_t)__createCFObject
{
  if (qword_1ED73AB80 != -1)
  {
    sub_1AFDDE8DC();
  }

  v2 = sub_1AF0D160C(qword_1ED73AB78, 0x168uLL);
  sub_1AF1B2AF0(v2);
  *(v2 + 208) = 0;
  *(v2 + 212) = 1065353216;
  *(v2 + 220) = 0;
  *(v2 + 228) = 2139095039;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0;
  v3 = *(MEMORY[0x1E695F058] + 16);
  *(v2 + 344) = *MEMORY[0x1E695F058];
  *(v2 + 360) = v3;
  *(v2 + 338) = 0;
  *(v2 + 120) = &off_1F24E8340;
  return v2;
}

- (void)_updateModelFromPresentation:(__CFXTextGeometry *)presentation
{
  v17.receiver = self;
  v17.super_class = VFXText;
  [(VFXModel *)&v17 _updateModelFromPresentation];
  self->_primitiveType = sub_1AF1C5A20(presentation, v5);
  self->_flatness = sub_1AF1C5C90(presentation);
  self->_chamferRadius = sub_1AF1C5804(presentation, v6);
  self->_extrusionDepth = sub_1AF1C596C(presentation, v7);
  self->_chamferProfile = sub_1AF1C5AD4(presentation);
  self->_discretizedStraightLineMaxLength = sub_1AF1C58B8(presentation, v8);
  self->_alignmentMode = sub_1AF1C5CD4(presentation);
  self->_truncationMode = sub_1AF1C5CDC(presentation);
  self->_string = sub_1AF1C5CC4(presentation);
  v9 = sub_1AF1C5CCC(presentation);
  self->_font = objc_msgSend_patchFont_(self, v10, v9);
  self->_useCustomContainerFrame = sub_1AF1C573C(presentation);
  self->_customContainerFrame.origin.x = sub_1AF1C5744(presentation);
  self->_customContainerFrame.origin.y = v11;
  self->_customContainerFrame.size.width = v12;
  self->_customContainerFrame.size.height = v13;
  self->_wrapped = sub_1AF1C5CE4(presentation);
  self->__wantsSeparateMeshElements = sub_1AF1C60F8(presentation);
  v14 = self->_font;
  v15 = self->_string;
  v16 = self->_chamferProfile;
}

- (void)_updatePresentationFromModel
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF333A9C;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v4);
  v3.receiver = self;
  v3.super_class = VFXText;
  [(VFXModel *)&v3 _updateModelFromPresentation];
}

- (VFXText)init
{
  v3 = [VFXText __createCFObject]_0(self, a2);
  v15.receiver = self;
  v15.super_class = VFXText;
  v4 = [(VFXModel *)&v15 initWithModelRef:v3];
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_modelRef(v4, v5, v6);
    objc_msgSend__updateModelFromPresentation_(v7, v9, v8);
    v12 = objc_msgSend_material(VFXMaterial, v10, v11);
    objc_msgSend_setFirstMaterial_(v7, v13, v12);
  }

  CFRelease(v3);
  return v7;
}

- (VFXText)initWithTextGeometryRef:(__CFXTextGeometry *)ref
{
  v10.receiver = self;
  v10.super_class = VFXText;
  v3 = [(VFXModel *)&v10 initWithModelRef:ref];
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_modelRef(v3, v4, v5);
    objc_msgSend__updateModelFromPresentation_(v6, v8, v7);
  }

  return v6;
}

- (id)initPresentationTextGeometryWithTextGeometryRef:(__CFXTextGeometry *)ref
{
  v4.receiver = self;
  v4.super_class = VFXText;
  return [(VFXModel *)&v4 initPresentationModelWithModelRef:ref];
}

- (id)presentationModel
{
  v3 = [VFXText alloc];
  v6 = objc_msgSend_modelRef(self, v4, v5);
  inited = objc_msgSend_initPresentationTextGeometryWithTextGeometryRef_(v3, v7, v6);

  return inited;
}

+ (id)textWithString:(id)string extrusionDepth:(float)depth
{
  v6 = objc_alloc_init(self);
  *&v7 = depth;
  objc_msgSend_setExtrusionDepth_(v6, v8, v9, v7);
  objc_msgSend_setString_(v6, v10, string);
  return v6;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_modelDescription(self, a2, v2);
  v8 = objc_msgSend_string(self, v6, v7);
  objc_msgSend_extrusionDepth(self, v9, v10);
  return objc_msgSend_stringWithFormat_(v4, v12, @"<%@ | string=%@ extrusionDepth=%.3f> ", v5, v8, v11);
}

- (void)_setupObjCModelFrom:(id)from
{
  v43.receiver = self;
  v43.super_class = VFXText;
  [(VFXModel *)&v43 _setupObjCModelFrom:?];
  objc_msgSend_begin(VFXTransaction, v5, v6);
  objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1);
  v10 = objc_msgSend_font(from, v8, v9);
  objc_msgSend_setFont_(self, v11, v10);
  objc_msgSend_containerFrame(from, v12, v13);
  if (v16 != 0.0)
  {
    objc_msgSend_containerFrame(from, v14, v15);
    objc_msgSend_setContainerFrame_(self, v17, v18);
  }

  v19 = objc_msgSend_truncationMode(from, v14, v15);
  objc_msgSend_setTruncationMode_(self, v20, v19);
  v23 = objc_msgSend_alignmentMode(from, v21, v22);
  objc_msgSend_setAlignmentMode_(self, v24, v23);
  objc_msgSend_flatness(from, v25, v26);
  objc_msgSend_setFlatness_(self, v27, v28);
  isWrapped = objc_msgSend_isWrapped(from, v29, v30);
  objc_msgSend_setWrapped_(self, v32, isWrapped);
  objc_msgSend_chamferRadius(from, v33, v34);
  objc_msgSend_setChamferRadius_(self, v35, v36);
  v39 = objc_msgSend_chamferProfile(from, v37, v38);
  objc_msgSend_setChamferProfile_(self, v40, v39);
  objc_msgSend_commitImmediate(VFXTransaction, v41, v42);
}

- (void)copyTo:(id)to withContext:(id)context
{
  v14.receiver = self;
  v14.super_class = VFXText;
  [(VFXModel *)&v14 copyTo:to withContext:context];
  v8 = objc_msgSend_string(self, v6, v7);
  objc_msgSend_setString_(to, v9, v8);
  objc_msgSend_extrusionDepth(self, v10, v11);
  objc_msgSend_setExtrusionDepth_(to, v12, v13);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_string(self, a2, zone);
  objc_msgSend_extrusionDepth(self, v5, v6);
  v11 = objc_msgSend_textWithString_extrusionDepth_(VFXText, v7, v4);
  objc_msgSend__setupObjCModelFrom_(v11, v8, self);
  objc_msgSend__copyAttributesTo_(self, v9, v11);

  return v11;
}

- (BOOL)_wantsSeparateMeshElements
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
    wantsSeparateMeshElements = sub_1AF1C60F8(v10);
    if (v9)
    {
      sub_1AF1CEA9C(v9, v11);
    }
  }

  else
  {
    wantsSeparateMeshElements = self->__wantsSeparateMeshElements;
  }

  return wantsSeparateMeshElements & 1;
}

- (void)set_wantsSeparateMeshElements:(BOOL)elements
{
  if (self->__wantsSeparateMeshElements != elements)
  {
    v7 = v3;
    v8 = v4;
    self->__wantsSeparateMeshElements = elements;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF334190;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    elementsCopy = elements;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
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
  v13 = sub_1AF1C5804(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setChamferRadius:(float)radius
{
  v5 = fmaxf(radius, 0.0);
  if (v5 != self->_chamferRadius)
  {
    v8 = v3;
    v9 = v4;
    self->_chamferRadius = v5;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF3342EC;
    v6[3] = &unk_1E7A7E270;
    v6[4] = self;
    *&v7 = v5;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"chamferRadius", v6);
  }
}

- (float)discretizedStraightLineMaxLength
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_discretizedStraightLineMaxLength;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C58B8(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setDiscretizedStraightLineMaxLength:(float)length
{
  v5 = fmaxf(length, 0.0);
  if (v5 != self->_discretizedStraightLineMaxLength)
  {
    v8 = v3;
    v9 = v4;
    self->_discretizedStraightLineMaxLength = v5;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF334440;
    v6[3] = &unk_1E7A7E270;
    v6[4] = self;
    *&v7 = v5;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (float)extrusionDepth
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_extrusionDepth;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v13 = sub_1AF1C596C(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setExtrusionDepth:(float)depth
{
  v5 = fmaxf(depth, 0.0);
  if (v5 != self->_extrusionDepth)
  {
    v8 = v3;
    v9 = v4;
    self->_extrusionDepth = v5;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF33459C;
    v6[3] = &unk_1E7A7E270;
    v6[4] = self;
    *&v7 = v5;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"extrusionDepth", v6);
  }
}

- (float)flatness
{
  if (!objc_msgSend_isPresentationObject(self, a2, v2))
  {
    return self->_flatness;
  }

  v6 = objc_msgSend_worldRef(self, v4, v5);
  v9 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6, v7);
  }

  v10 = objc_msgSend_modelRef(self, v7, v8);
  v12 = sub_1AF1C5C90(v10);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v11);
  }

  return v12;
}

- (void)setFlatness:(float)flatness
{
  if (self->_flatness != flatness)
  {
    v7 = v3;
    v8 = v4;
    self->_flatness = flatness;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF3346E8;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = flatness;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
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
  v13 = sub_1AF1C5A20(v10, v11);
  if (v9)
  {
    sub_1AF1CEA9C(v9, v12);
  }

  return v13;
}

- (void)setPrimitiveType:(int64_t)type
{
  if (self->_primitiveType != type)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_primitiveType = type;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF33482C;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = type;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (id)string
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
    string = sub_1AF1C5CC4(v10);
    if (v9)
    {
      sub_1AF1CEA9C(v9, v4);
    }
  }

  else
  {
    string = self->_string;
  }

  v12 = objc_msgSend_copy(string, v4, v5);

  return v12;
}

- (void)setString:(id)string
{
  string = self->_string;
  if (string != string)
  {

    self->_string = objc_msgSend_copy(string, v6, v7);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF3349A0;
    v9[3] = &unk_1E7A7E1D0;
    v9[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
  }
}

- (BOOL)isWrapped
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
    wrapped = sub_1AF1C5CE4(v10);
    if (v9)
    {
      sub_1AF1CEA9C(v9, v11);
    }
  }

  else
  {
    wrapped = self->_wrapped;
  }

  return wrapped & 1;
}

- (void)setWrapped:(BOOL)wrapped
{
  if (self->_wrapped != wrapped)
  {
    v7 = v3;
    v8 = v4;
    self->_wrapped = wrapped;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF334AF4;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    wrappedCopy = wrapped;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (id)patchFont:(id)font
{
  fontCopy = font;
  if (!font)
  {
    return fontCopy;
  }

  v4 = objc_msgSend_fontName(font, a2, font);
  if (objc_msgSend_hasPrefix_(v4, v5, @".SFUI"))
  {
    v8 = MEMORY[0x1E69DB878];
    objc_msgSend_pointSize(fontCopy, v6, v7);
    fontCopy = objc_msgSend_fontWithName_size_(v8, v9, @"HelveticaNeue");
    if (!fontCopy)
    {
      return fontCopy;
    }
  }

  v10 = objc_msgSend_fontName(fontCopy, v6, v7);
  if (!objc_msgSend_hasPrefix_(v10, v11, @".SFNS"))
  {
    return fontCopy;
  }

  v14 = MEMORY[0x1E69DB878];
  objc_msgSend_pointSize(fontCopy, v12, v13);

  return objc_msgSend_fontWithName_size_(v14, v15, @"HelveticaNeue");
}

- (UIFont)font
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
    font = sub_1AF1C5CCC(v10);
    if (v9)
    {
      sub_1AF1CEA9C(v9, v4);
    }
  }

  else
  {
    font = self->_font;
  }

  v12 = objc_msgSend_string(self, v4, v5);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v15 = *MEMORY[0x1E69DB648];

    return objc_msgSend_attribute_atIndex_effectiveRange_(v12, v14, v15, 0, 0);
  }

  else if (font)
  {
    return font;
  }

  else
  {

    return sub_1AF1C60E0(isKindOfClass, v14);
  }
}

- (void)setFont:(id)font
{
  if (self->_font != font)
  {
    v4 = objc_msgSend_patchFont_(self, a2, font);

    self->_font = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF334D9C;
    v6[3] = &unk_1E7A7E220;
    v6[4] = self;
    v6[5] = v4;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v5, self, v6);
  }
}

- (CGRect)containerFrame
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
    x = sub_1AF1C5744(v10);
    y = v13;
    width = v15;
    height = v17;
    if (v9)
    {
      sub_1AF1CEA9C(v9, v11);
    }
  }

  else
  {
    x = self->_customContainerFrame.origin.x;
    y = self->_customContainerFrame.origin.y;
    width = self->_customContainerFrame.size.width;
    height = self->_customContainerFrame.size.height;
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)setContainerFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = !CGRectIsEmpty(frame);
  if (self->_useCustomContainerFrame != v9 || (v12.origin.x = x, v12.origin.y = y, v12.size.width = width, v12.size.height = height, !CGRectEqualToRect(self->_customContainerFrame, v12)))
  {
    self->_useCustomContainerFrame = v9;
    self->_customContainerFrame.origin.x = x;
    self->_customContainerFrame.origin.y = y;
    self->_customContainerFrame.size.width = width;
    self->_customContainerFrame.size.height = height;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF334F80;
    v10[3] = &unk_1E7A7E298;
    v10[4] = self;
    v11 = v9;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v10);
  }
}

- (NSString)truncationMode
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
    truncationMode = sub_1AF1C5CDC(v10);
    if (v9)
    {
      sub_1AF1CEA9C(v9, v4);
    }
  }

  else
  {
    truncationMode = self->_truncationMode;
  }

  return sub_1AF335060(truncationMode, v4);
}

- (void)setTruncationMode:(id)mode
{
  v13 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isEqualToString_(mode, a2, *MEMORY[0x1E697A068]))
  {
LABEL_2:
    v6 = 0;
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(mode, v5, *MEMORY[0x1E697A070]))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(mode, v5, *MEMORY[0x1E697A058]))
  {
    v6 = 2;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(mode, v5, *MEMORY[0x1E697A060]);
    if ((isEqualToString & 1) == 0)
    {
      v8 = sub_1AF0D5194(isEqualToString, v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        modeCopy = mode;
        _os_log_impl(&dword_1AF0CE000, v8, OS_LOG_TYPE_DEFAULT, "Warning: Unknown truncation mode %@", buf, 0xCu);
      }

      goto LABEL_2;
    }

    v6 = 3;
  }

LABEL_9:
  if (self->_truncationMode != v6)
  {
    self->_truncationMode = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF33529C;
    v9[3] = &unk_1E7A7E270;
    v9[4] = self;
    v10 = v6;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v5, self, v9);
  }
}

- (NSString)alignmentMode
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
    alignmentMode = sub_1AF1C5CD4(v10);
    if (v9)
    {
      sub_1AF1CEA9C(v9, v4);
    }
  }

  else
  {
    alignmentMode = self->_alignmentMode;
  }

  return sub_1AF335358(alignmentMode, v4);
}

- (void)setAlignmentMode:(id)mode
{
  v13 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isEqualToString_(mode, a2, *MEMORY[0x1E6979578]))
  {
LABEL_2:
    v6 = 0;
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(mode, v5, *MEMORY[0x1E6979570]))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(mode, v5, *MEMORY[0x1E6979580]))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(mode, v5, *MEMORY[0x1E6979560]))
  {
    v6 = 3;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(mode, v5, *MEMORY[0x1E6979568]);
    if ((isEqualToString & 1) == 0)
    {
      v8 = sub_1AF0D5194(isEqualToString, v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        modeCopy = mode;
        _os_log_impl(&dword_1AF0CE000, v8, OS_LOG_TYPE_DEFAULT, "Warning: Unknown alignment mode %@", buf, 0xCu);
      }

      goto LABEL_2;
    }

    v6 = 4;
  }

LABEL_11:
  if (self->_alignmentMode != v6)
  {
    self->_alignmentMode = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF3355C8;
    v9[3] = &unk_1E7A7E270;
    v9[4] = self;
    v10 = v6;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v5, self, v9);
  }
}

- (UIBezierPath)chamferProfile
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
    chamferProfile = sub_1AF1C5AD4(v10);
    if (v9)
    {
      sub_1AF1CEA9C(v9, v4);
    }
  }

  else
  {
    chamferProfile = self->_chamferProfile;
  }

  v12 = objc_msgSend_copy(chamferProfile, v4, v5);

  return v12;
}

- (void)setChamferProfile:(id)profile
{
  self->_chamferProfile = objc_msgSend_copy(profile, v5, v6);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF335734;
  v8[3] = &unk_1E7A7E220;
  v8[4] = self;
  v8[5] = profile;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
}

- ($80EDBB80750A9D2E1B4955686707C737)params
{
  *&retstr->var7.origin.y = 0u;
  *&retstr->var7.size.height = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var5 = 0u;
  *&retstr->var0.var4 = 0u;
  *&retstr->var0.var6 = 0u;
  *&retstr->var0.var0 = 0u;
  result = objc_msgSend_isPresentationObject(self, a3, v3);
  if (result)
  {
    v9 = objc_msgSend_modelRef(self, v7, v8);

    sub_1AF1C547C(v9, retstr, v10);
  }

  else
  {
    chamferRadius = self->_chamferRadius;
    retstr->var0.var1 = self->_extrusionDepth;
    retstr->var0.var2 = chamferRadius;
    retstr->var0.var4 = self->_discretizedStraightLineMaxLength;
    origin = self->_customContainerFrame.origin;
    retstr->var7.size = self->_customContainerFrame.size;
    retstr->var0.var0 = self->_primitiveType;
    chamferProfile = self->_chamferProfile;
    retstr->var0.var5 = 0;
    retstr->var0.var6 = chamferProfile;
    retstr->var0.var3 = 0;
    font = self->_font;
    retstr->var1 = self->_string;
    retstr->var2 = font;
    LODWORD(font) = self->_truncationMode;
    retstr->var3 = self->_alignmentMode;
    retstr->var4 = font;
    retstr->var5 = self->_wrapped;
    retstr->var6 = self->_useCustomContainerFrame;
    retstr->var7.origin = origin;
    retstr->var8 = self->_flatness;
  }

  return result;
}

- (BOOL)getBoundingBoxMin:(VFXText *)self max:(SEL)max
{
  v4 = v3;
  v5 = v2;
  v7 = objc_msgSend_worldRef(self, max, v2);
  v10 = v7;
  if (v7)
  {
    sub_1AF1CEA20(v7, v8);
  }

  DWORD2(v19) = 0;
  *&v19 = 0;
  DWORD2(v18) = 0;
  *&v18 = 0;
  v13 = objc_msgSend_modelRef(self, v8, v9);
  if (self)
  {
    objc_msgSend_params(self, v11, v12);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v15 = sub_1AF1C69F8(v13, &v19, &v18, v17);
  if (v15)
  {
    if (v5)
    {
      *v5 = v19;
    }

    if (v4)
    {
      *v4 = v18;
    }
  }

  if (v10)
  {
    sub_1AF1CEA9C(v10, v14);
  }

  return v15;
}

- (BOOL)getBoundingSphereCenter:(VFXText *)self radius:(SEL)radius
{
  v4 = v3;
  v5 = v2;
  v7 = objc_msgSend_worldRef(self, radius, v2);
  v10 = v7;
  if (v7)
  {
    sub_1AF1CEA20(v7, v8);
  }

  v18 = 0uLL;
  v13 = objc_msgSend_modelRef(self, v8, v9);
  if (self)
  {
    objc_msgSend_params(self, v11, v12);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v15 = sub_1AF1C6A64(v13, &v18, v17);
  if (v15)
  {
    if (v5)
    {
      *v5 = v18;
    }

    if (v4)
    {
      *v4 = HIDWORD(v18);
    }
  }

  if (v10)
  {
    sub_1AF1CEA9C(v10, v14);
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXText;
  [(VFXModel *)&v3 dealloc];
}

- (void)_customDecodingOfVFXText:(id)text
{
  v32[2] = *MEMORY[0x1E69E9840];
  v5 = sub_1AF3723C4(text, @"chamferProfile");
  objc_msgSend_setChamferProfile_(self, v6, v5);
  v7 = MEMORY[0x1E695DFD8];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v32, 2);
  v11 = objc_msgSend_setWithArray_(v7, v10, v9);
  v12 = sub_1AF3726E8(text, @"string", v11);
  objc_msgSend_setString_(self, v13, v12);
  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v17 = objc_msgSend_setWithObject_(v14, v16, v15);
  v18 = sub_1AF3726E8(text, @"font", v17);
  v20 = objc_msgSend_patchFont_(self, v19, v18);
  objc_msgSend_setFont_(self, v21, v20);
  v23 = objc_msgSend_decodeIntegerForKey_(text, v22, @"alignmentMode");
  v25 = sub_1AF335358(v23, v24);
  objc_msgSend_setAlignmentMode_(self, v26, v25);
  v28 = objc_msgSend_decodeIntegerForKey_(text, v27, @"truncationMode");
  v30 = sub_1AF335060(v28, v29);
  objc_msgSend_setTruncationMode_(self, v31, v30);
}

- (void)_customEncodingOfVFXText:(id)text
{
  sub_1AF3721F0(text, self->_chamferProfile, @"chamferProfile");
  sub_1AF37266C(text, self->_string, @"string");
  sub_1AF37266C(text, self->_font, @"font");
  objc_msgSend_encodeInteger_forKey_(text, v5, self->_alignmentMode, @"alignmentMode");
  truncationMode = self->_truncationMode;

  objc_msgSend_encodeInteger_forKey_(text, v6, truncationMode, @"truncationMode");
}

- (void)encodeWithCoder:(id)coder
{
  v27.receiver = self;
  v27.super_class = VFXText;
  [(VFXModel *)&v27 encodeWithCoder:?];
  if (objc_msgSend_isPresentationObject(self, v5, v6))
  {
    v9 = objc_msgSend_modelRef(self, v7, v8);
    objc_msgSend__updateModelFromPresentation_(self, v10, v9);
  }

  objc_msgSend__customEncodingOfVFXText_(self, v7, coder);
  *&v11 = self->_flatness;
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"flatness2", v11);
  *&v13 = self->_chamferRadius;
  objc_msgSend_encodeFloat_forKey_(coder, v14, @"chamferRadius", v13);
  *&v15 = self->_extrusionDepth;
  objc_msgSend_encodeFloat_forKey_(coder, v16, @"extrusionDepth", v15);
  *&v17 = self->_discretizedStraightLineMaxLength;
  objc_msgSend_encodeFloat_forKey_(coder, v18, @"discretizedStraightLineMaxLength", v17);
  objc_msgSend_encodeInteger_forKey_(coder, v19, self->_primitiveType, @"primitiveType");
  objc_msgSend_encodeBool_forKey_(coder, v20, self->_wrapped, @"wrapped");
  objc_msgSend_encodeBool_forKey_(coder, v21, self->_useCustomContainerFrame, @"useCustomContainerFrame");
  v24 = objc_msgSend_valueWithCGRect_(MEMORY[0x1E696B098], v22, v23, self->_customContainerFrame.origin.x, self->_customContainerFrame.origin.y, self->_customContainerFrame.size.width, self->_customContainerFrame.size.height);
  objc_msgSend_encodeObject_forKey_(coder, v25, v24, @"customContainerFrame");
  objc_msgSend_encodeBool_forKey_(coder, v26, self->__wantsSeparateMeshElements, @"_wantsSeparateMeshElements");
}

- (VFXText)initWithCoder:(id)coder
{
  v45.receiver = self;
  v45.super_class = VFXText;
  v6 = [(VFXModel *)&v45 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    objc_msgSend__customDecodingOfVFXText_(v6, v9, coder);
    if (objc_msgSend_containsValueForKey_(coder, v10, @"flatness2"))
    {
      objc_msgSend_decodeFloatForKey_(coder, v11, @"flatness2");
    }

    else
    {
      objc_msgSend_decodeFloatForKey_(coder, v11, @"flatness");
      *&v14 = *&v14 * 100.0;
    }

    objc_msgSend_setFlatness_(v6, v12, v13, v14);
    objc_msgSend_decodeFloatForKey_(coder, v15, @"chamferRadius");
    objc_msgSend_setChamferRadius_(v6, v16, v17);
    objc_msgSend_decodeFloatForKey_(coder, v18, @"extrusionDepth");
    objc_msgSend_setExtrusionDepth_(v6, v19, v20);
    objc_msgSend_decodeFloatForKey_(coder, v21, @"discretizedStraightLineMaxLength");
    objc_msgSend_setDiscretizedStraightLineMaxLength_(v6, v22, v23);
    v25 = objc_msgSend_decodeIntegerForKey_(coder, v24, @"primitiveType");
    objc_msgSend_setPrimitiveType_(v6, v26, v25);
    v28 = objc_msgSend_decodeBoolForKey_(coder, v27, @"wrapped");
    objc_msgSend_setWrapped_(v6, v29, v28);
    v6->_useCustomContainerFrame = objc_msgSend_decodeBoolForKey_(coder, v30, @"useCustomContainerFrame");
    v31 = objc_opt_class();
    v33 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v32, v31, @"customContainerFrame");
    objc_msgSend_CGRectValue(v33, v34, v35);
    v6->_customContainerFrame.origin.x = v36;
    v6->_customContainerFrame.origin.y = v37;
    v6->_customContainerFrame.size.width = v38;
    v6->_customContainerFrame.size.height = v39;
    v41 = objc_msgSend_decodeBoolForKey_(coder, v40, @"_wantsSeparateMeshElements");
    objc_msgSend_set_wantsSeparateMeshElements_(v6, v42, v41);
    objc_msgSend_setImmediateMode_(VFXTransaction, v43, v7);
  }

  return v6;
}

- (NSString)swiftString
{
  selfCopy = self;
  sub_1AF44A824();

  v3 = sub_1AFDFCEC8();

  return v3;
}

@end