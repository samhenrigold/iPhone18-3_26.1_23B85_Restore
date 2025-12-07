@interface TSCH3DTextureAtlasTexture
- (TSCH3DTextureAtlasTexture)initWithSize:(tvec2<int>)size;
- (id).cxx_construct;
- (id)getTextureDataBuffer;
- (id)resource;
- (tvec2<int>)addLabel:(id)label;
- (void)p_invalidateResource;
@end

@implementation TSCH3DTextureAtlasTexture

- (TSCH3DTextureAtlasTexture)initWithSize:(tvec2<int>)size
{
  v9.receiver = self;
  v9.super_class = TSCH3DTextureAtlasTexture;
  v4 = [(TSCH3DTextureAtlasTexture *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_size.var0.var0 = *size.var0.var0;
    v4->_size.var1.var0 = *(*&size + 4);
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    labels = v5->_labels;
    v5->_labels = v6;

    v5->_currentxpos = 0;
    v5->_currentypos = 0;
    v5->_currentheight = 0;
  }

  return v5;
}

- (void)p_invalidateResource
{
  resource = self->_resource;
  self->_resource = 0;
}

- (tvec2<int>)addLabel:(id)label
{
  v5 = v3;
  labelCopy = label;
  v11 = labelCopy;
  if (labelCopy)
  {
    objc_msgSend_clampedLabelSampledSize(labelCopy, v8, v9, v10);
    v12 = v26;
  }

  else
  {
    v12 = 0;
    v26 = 0;
  }

  var0 = self->_size.var0.var0;
  if (v12 > var0)
  {
    goto LABEL_7;
  }

  v14 = self->_size.var1.var0;
  if (SHIDWORD(v26) > v14)
  {
    goto LABEL_7;
  }

  currentypos = self->_currentypos;
  if (currentypos + SHIDWORD(v26) > v14)
  {
    goto LABEL_7;
  }

  if (self->_currentxpos + v12 > var0)
  {
    v17 = self->_currentheight + currentypos;
    if (v17 + SHIDWORD(v26) > v14)
    {
LABEL_7:
      *v5 = -1;
      goto LABEL_8;
    }

    self->_currentxpos = 0;
    self->_currentypos = v17;
    self->_currentheight = 0;
  }

  objc_msgSend_p_invalidateResource(self, v7, v8, v9, v10);
  currentxpos = self->_currentxpos;
  v19 = self->_currentypos;
  *v5 = currentxpos;
  v5[1] = v19;
  objc_msgSend_addObject_(self->_labels, v20, v21, v22, v23, v11);
  end = self->_positions.__end_;
  if (end >= self->_positions.__cap_)
  {
    v25 = sub_2761C3754(&self->_positions.__begin_, v5);
  }

  else
  {
    *end = currentxpos;
    end[1] = v19;
    v25 = end + 2;
  }

  self->_positions.__end_ = v25;
  self->_currentxpos += v26;
  if (self->_currentheight < SHIDWORD(v26))
  {
    self->_currentheight = SHIDWORD(v26);
  }

LABEL_8:

  return v16;
}

- (id)getTextureDataBuffer
{
  selfCopy = self;
  v6 = objc_msgSend_bufferWithCapacitySize_components_(TSCH3DVectorN2DDataBuffer, a2, v2, v3, v4, &self->_size, 4);
  objc_msgSend_fillCapacity(v6, v7, v8, v9, v10);
  objc_msgSend_size(selfCopy, v11, v12, v13);
  v84 = v6;
  v18 = objc_msgSend_container(v6, v14, v15, v16, v17);
  v23 = 0;
  v24 = 0x277D81000uLL;
  v85 = *v18;
  v86 = selfCopy;
  v25 = 0x277CCA000uLL;
  while (v23 < objc_msgSend_count(selfCopy->_labels, v19, v20, v21, v22))
  {
    v30 = objc_msgSend_objectAtIndexedSubscript_(selfCopy->_labels, v26, v27, v28, v29, v23);
    v36 = objc_msgSend_get(v30, v31, v32, v33, v34);
    v40 = (selfCopy->_positions.__begin_ + 8 * v23);
    v41 = *v40;
    v88 = v40[1];
    if (v30)
    {
      objc_msgSend_clampedLabelSampledSize(v30, v37, v38, v39);
      v42 = v89;
    }

    else
    {
      v42 = 0;
      v89 = 0;
    }

    if (v42 + v41 > v90 || (HIDWORD(v89) + v88) > v91)
    {
      v43 = *(v24 + 336);
      v44 = objc_msgSend_stringWithUTF8String_(*(v25 + 3240), v35, v37, v38, v39, "[TSCH3DTextureAtlasTexture getTextureDataBuffer]");
      v49 = objc_msgSend_stringWithUTF8String_(*(v25 + 3240), v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureAtlas.mm");
      v50 = *(v25 + 3240);
      sub_276152FD4(__p, "ivec2(%d, %d)", v41, HIDWORD(v41));
      if (v93 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v50, v51, v52, v53, v54, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v50, v51, v52, v53, v54, __p[0]);
      }
      v55 = ;
      v87 = v36;
      if (v93 < 0)
      {
        operator delete(__p[0]);
      }

      v56 = v24;
      v57 = MEMORY[0x277CCACA8];
      sub_276152FD4(__p, "ivec2(%d, %d)", v89, 0);
      if (v93 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v57, v58, v59, v60, v61, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v57, v58, v59, v60, v61, __p[0]);
      }
      v62 = ;
      if (v93 < 0)
      {
        operator delete(__p[0]);
      }

      v63 = MEMORY[0x277CCACA8];
      sub_276152FD4(__p, "ivec2(%d, %d)", v90, 0);
      if (v93 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v63, v64, v65, v66, v67, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v63, v64, v65, v66, v67, __p[0]);
      }
      v69 = ;
      if (v93 < 0)
      {
        operator delete(__p[0]);
      }

      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v68, v70, v71, v72, v44, v49, 213, 0, "src label too large for atlas: pos: %@, srcsize: %@ dstsize: %@", v55, v62, v69);

      v24 = v56;
      v73 = *(v56 + 336);
      v36 = v87;
      objc_msgSend_logBacktraceThrottled(v73, v74, v75, v76, v77);
      selfCopy = v86;
    }

    v78 = objc_msgSend_container(v36, v35, v37, v38, v39);
    if (SHIDWORD(v89) >= 1)
    {
      v79 = 0;
      v80 = (v85 + (4 * (v41 + v90 * v88)));
      v81 = *v78;
      v82 = v89;
      do
      {
        memcpy(v80, v81, 4 * v82);
        v80 += 4 * v90;
        v82 = v89;
        v81 += 4 * v89;
        ++v79;
      }

      while (v79 < SHIDWORD(v89));
    }

    ++v23;
    v25 = 0x277CCA000;
  }

  return v84;
}

- (id)resource
{
  resource = self->_resource;
  if (!resource)
  {
    v4 = [TSCH3DTextureAtlasTextureResource alloc];
    v9 = objc_msgSend_initWithParent_(v4, v5, v6, v7, v8, self);
    v10 = self->_resource;
    self->_resource = v9;

    resource = self->_resource;
  }

  return resource;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

@end