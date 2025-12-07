@interface VFXHitTestResult
+ (id)hitTestResultsFromHitTestResultRef:(__CFArray *)ref;
- (CGPoint)textureCoordinate;
- (CGPoint)textureCoordinatesWithMappingChannel:(int64_t)channel;
- (VFXHitTestResult)initWithResult:(__CFXHitTestResult *)result;
- (VFXNode)boneNode;
- (VFXNode)node;
- (__n128)modelTransform;
- (double)localCoordinates;
- (double)localNormal;
- (double)worldCoordinates;
- (float32x2_t)uv0;
- (id)description;
- (id)presentationBoneNode;
- (id)presentationNode;
- (void)dealloc;
@end

@implementation VFXHitTestResult

- (VFXHitTestResult)initWithResult:(__CFXHitTestResult *)result
{
  selfCopy = self;
  if (result)
  {
    v6.receiver = self;
    v6.super_class = VFXHitTestResult;
    selfCopy = [(VFXHitTestResult *)&v6 init];
    if (selfCopy)
    {
      selfCopy->_result = CFRetain(result);
    }
  }

  return selfCopy;
}

- (void)dealloc
{
  result = self->_result;
  if (result)
  {
    CFRelease(result);
    self->_result = 0;
  }

  v4.receiver = self;
  v4.super_class = VFXHitTestResult;
  [(VFXHitTestResult *)&v4 dealloc];
}

- (VFXNode)node
{
  result = sub_1AF28133C(self->_result, a2);
  if (result)
  {

    return objc_msgSend_nodeWithNodeRef_(VFXNode, v3, result);
  }

  return result;
}

- (id)presentationNode
{
  v3 = objc_msgSend_node(self, a2, v2);

  return objc_msgSend_presentationNode(v3, v4, v5);
}

- (VFXNode)boneNode
{
  result = sub_1AF281384(self->_result, a2);
  if (result)
  {

    return objc_msgSend_nodeWithNodeRef_(VFXNode, v3, result);
  }

  return result;
}

- (id)presentationBoneNode
{
  v3 = objc_msgSend_boneNode(self, a2, v2);

  return objc_msgSend_presentationNode(v3, v4, v5);
}

- (CGPoint)textureCoordinatesWithMappingChannel:(int64_t)channel
{
  v3 = vcvtq_f64_f32(COERCE_FLOAT32X2_T(sub_1AF2816F4(self->_result, channel)));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (float32x2_t)uv0
{
  objc_msgSend_textureCoordinatesWithMappingChannel_(self, a2, 0);
  v3.f64[1] = v2;
  return vcvt_f32_f64(v3);
}

- (CGPoint)textureCoordinate
{
  NSLog(&cfstr_Texturecoordin.isa, a2);

  objc_msgSend_textureCoordinatesWithMappingChannel_(self, v3, 0);
  result.y = v5;
  result.x = v4;
  return result;
}

+ (id)hitTestResultsFromHitTestResultRef:(__CFArray *)ref
{
  v4 = objc_msgSend_count(ref, a2, ref);
  v7 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v5, v4);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v9 = objc_msgSend_objectAtIndex_(ref, v6, i);
      v10 = [VFXHitTestResult alloc];
      v12 = objc_msgSend_initWithResult_(v10, v11, v9);
      objc_msgSend_addObject_(v7, v13, v12);
    }
  }

  return v7;
}

- (id)description
{
  objc_msgSend_worldCoordinates(self, a2, v2);
  v19 = v4;
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v10 = objc_msgSend_meshElementIndex(self, v8, v9);
  v13 = objc_msgSend_node(self, v11, v12);
  v16 = objc_msgSend_boneNode(self, v14, v15);
  return objc_msgSend_stringWithFormat_(v5, v17, @"<%@: %p <%f,%f,%f> | meshElementIndex=%d node=%@ bone=%@>", v7, self, *&v19, *(&v19 + 1), *(&v19 + 2), v10, v13, v16);
}

- (double)localCoordinates
{
  v2 = sub_1AF2814DC(*(self + 8), a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

- (double)worldCoordinates
{
  v2 = sub_1AF281524(*(self + 8), a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

- (double)localNormal
{
  v2 = sub_1AF28156C(*(self + 8), a2);
  if (v2)
  {
    v3 = *v2;
  }

  else
  {
    *&v3 = 0;
  }

  return *&v3;
}

- (__n128)modelTransform
{
  v2 = sub_1AF281664(*(self + 8), a2);
  v3 = MEMORY[0x1E69E9B18];
  if (v2)
  {
    v3 = v2;
  }

  return *v3;
}

@end