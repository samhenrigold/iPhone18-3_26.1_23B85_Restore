@interface VFXMTLSmoothNormalsDeformer
- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers;
- (void)dealloc;
@end

@implementation VFXMTLSmoothNormalsDeformer

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLSmoothNormalsDeformer;
  [(VFXMTLSmoothNormalsDeformer *)&v3 dealloc];
}

- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers
{
  v7 = objc_msgSend_currentFrameHash(context, a2, context);
  if (self->_currentFrameHash == v7)
  {
    return 0;
  }

  self->_currentFrameHash = v7;
  v11 = objc_msgSend_currentComputeEncoder(context, v8, v9);
  objc_msgSend_resetCache(v11, v12, v13);
  objc_msgSend_setBuffer_offset_atIndex_(v11, v14, buffers->var1, 0, 0);
  var3 = buffers->var3;
  v10 = 1;
  objc_msgSend_setBuffer_offset_atIndex_(v11, v16, var3, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v11, v17, self->_perVertexTrianglesOffsets, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(v11, v18, self->_perVertexTrianglesIndices, 0, 3);
  objc_msgSend_setBytes_length_atIndex_(v11, v19, &self->_baseVertexCount, 4, 4);
  v20 = sub_1AFDE323C(self->_smoothNormalsPipeline);
  objc_msgSend_dispatchOnVertices_vertexCount_(v11, v21, v20, self->_baseVertexCount);
  return v10;
}

@end