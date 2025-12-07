@interface MPSUnaryImageKernel
- (BOOL)encodeToCommandBuffer:(id)commandBuffer inPlaceTexture:(id *)texture fallbackCopyAllocator:(MPSCopyAllocator)copyAllocator;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)size;
- (MPSUnaryImageKernel)init;
- (MPSUnaryImageKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSUnaryImageKernel)initWithDevice:(id)device;
- (MTLRegion)clipRect;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image destinationImage:(id)destinationImage;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sources:(id)sources destination:(id)destination kernelDAGObject:(id)object;
- (void)encodeWithCoder:(id)coder;
- (void)setClipRect:(MTLRegion *)clipRect;
- (void)setOffset:(MPSOffset *)offset;
@end

@implementation MPSUnaryImageKernel

- (MPSUnaryImageKernel)init
{
  v3 = MTLCreateSystemDefaultDevice();
  if (v3)
  {

    return objc_msgSend_initWithDevice_(self, v4, v3);
  }

  else
  {

    return 0;
  }
}

- (MPSUnaryImageKernel)initWithDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSUnaryImageKernel;
  result = [(MPSKernel *)&v6 initWithDevice:device];
  if (result)
  {
    result->_offset.y = 0;
    result->_offset.z = 0;
    result->_offset.x = 0;
    v4 = *MEMORY[0x277CD7200];
    v5 = *(MEMORY[0x277CD7200] + 32);
    *&result->_clipRect.origin.z = *(MEMORY[0x277CD7200] + 16);
    *&result->_clipRect.size.height = v5;
    *&result->_clipRect.origin.x = v4;
    result->_edgeMode = 0;
    result->_checkFlags = 513;
    result->_encode = 0;
    result->_encodeData = 0;
    result->_getPreferredTileSize = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v10.receiver = self;
  v10.super_class = MPSUnaryImageKernel;
  result = [(MPSKernel *)&v10 copyWithZone:zone device:device];
  if (result)
  {
    z = self->_offset.z;
    *(result + 88) = *&self->_offset.x;
    *(result + 13) = z;
    *(result + 20) = self->_edgeMode;
    v8 = *&self->_clipRect.origin.z;
    v7 = *&self->_clipRect.size.height;
    *(result + 7) = *&self->_clipRect.origin.x;
    *(result + 8) = v8;
    *(result + 9) = v7;
    *(result + 42) = self->_checkFlags;
    *(result + 22) = self->_encode;
    encodeData = self->_encodeData;
    if (encodeData == self)
    {
      encodeData = result;
    }

    *(result + 24) = encodeData;
  }

  return result;
}

- (id)debugDescription
{
  if (!dladdr(self->_encode, &v15))
  {
    v15.dli_sname = "<NULL>";
  }

  v3 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = MPSUnaryImageKernel;
  v4 = [(MPSKernel *)&v14 debugDescription];
  v6 = *&self->_offset.x;
  z = self->_offset.z;
  v8 = *&self->_clipRect.origin.x;
  v9 = *&self->_clipRect.origin.z;
  height = self->_clipRect.size.height;
  depth = self->_clipRect.size.depth;
  v12 = (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2];
  if (self->_edgeMode == 1)
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\toffset:        {%ld,%ld,%ld}\n\tclip:          origin{%lu,%lu,%lu} size{%lu,%lu,%lu}\n\tdevice:        %p\n\tedge mode:     %s\n\tEncode Proc:   %s", v4, v6, z, v8, v9, height, depth, v12, "MPSImageEdgeModeClamp", v15.dli_sname);
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\toffset:        {%ld,%ld,%ld}\n\tclip:          origin{%lu,%lu,%lu} size{%lu,%lu,%lu}\n\tdevice:        %p\n\tedge mode:     %s\n\tEncode Proc:   %s", v4, v6, z, v8, v9, height, depth, v12, "MPSImageEdgeModeZero", v15.dli_sname);
  }
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)size
{
  memset(v11, 0, sizeof(v11));
  v6 = *&destinationSize->width;
  v10.depth = destinationSize->depth;
  v7 = *&self->_clipRect.origin.z;
  *&v9.origin.x = *&self->_clipRect.origin.x;
  *&v9.origin.z = v7;
  *&v9.size.height = *&self->_clipRect.size.height;
  *&v10.width = v6;
  result = MPSGetEffectiveClipRegion(v11[0].i64, &v10, &v9);
  *&retstr->origin.x = vcvtq_f64_s64(*&self->_offset.x);
  retstr->origin.z = self->_offset.z;
  *&retstr->size.width = vcvtq_f64_u64(*(&v11[1] + 8));
  retstr->size.depth = v11[2].u64[1];
  return result;
}

- (BOOL)encodeToCommandBuffer:(id)commandBuffer inPlaceTexture:(id *)texture fallbackCopyAllocator:(MPSCopyAllocator)copyAllocator
{
  v9 = *texture;
  v10 = *MEMORY[0x277CD7350];
  v11 = *(&self->super.super.isa + v10);
  v12 = objc_msgSend_pixelFormat(*texture, a2, commandBuffer);
  PixelInfo = MPSDevice::GetPixelInfo(v11, v12, MPSImageFeatureChannelFormatNone);
  v14 = PixelInfo;
  v97[0] = PixelInfo;
  v95 = 0u;
  v96 = 0u;
  v94 = 0u;
  *v86 = objc_msgSend_width(v9, v15, v16);
  *&v86[8] = objc_msgSend_height(v9, v17, v18);
  *&v86[16] = 1;
  v19 = *&self->_clipRect.origin.z;
  *&v89.origin.x = *&self->_clipRect.origin.x;
  *&v89.origin.z = v19;
  *&v89.size.height = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(&v94, v86, &v89);
  v22 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v22) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v73 = objc_opt_class();
      v80 = NSStringFromClass(v73);
      MTLReportFailure();
    }

    if (!v9 && MTLReportFailureTypeEnabled())
    {
      v74 = objc_opt_class();
      v80 = NSStringFromClass(v74);
      MTLReportFailure();
    }

    v23 = *MEMORY[0x277CD7348];
    if ((*(&self->super.super.isa + v22) & ~*(&self->super.super.isa + v23)) != 0 && MTLReportFailureTypeEnabled())
    {
      v75 = objc_opt_class();
      v80 = NSStringFromClass(v75);
      v82 = *(&self->super.super.isa + v22) & ~*(&self->super.super.isa + v23);
      MTLReportFailure();
    }

    objc_msgSend_textureType(v9, v20, v21, v80, v82);
    if (objc_msgSend_textureType(v9, v24, v25) != 2 && MTLReportFailureTypeEnabled())
    {
      v80 = v9;
      MTLReportFailure();
    }

    v26 = v14 & 0x3FF;
    if (v95 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((~LODWORD(v97[0]) & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v80 = v9;
      v82 = v26;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x40) == 0 && (v97[0] & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v80 = v9;
      v82 = v26;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 4) != 0 && (v97[0] & 0x80000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v80 = v9;
      v82 = v26;
      MTLReportFailure();
    }
  }

  if ((v97[0] & 0x200000000000) == 0)
  {
    goto LABEL_20;
  }

  v27 = objc_alloc(MEMORY[0x277CD7210]);
  v31 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v27, v28, commandBuffer, 0);
  *v86 = v31;
  *&v86[8] = self;
  if ((*(&self->super.super.isa + v22) & 0x18) != 0)
  {
    v30 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v30 || (v32 = objc_opt_class(), v33 = NSStringFromClass(v32), objc_msgSend_setLabel_(self, v34, v33), (v30 = v33) != 0))
    {
      objc_msgSend_setLabel_(v31, v29, v30, v80, v82);
    }
  }

  if (!v96 || !*(&v95 + 1))
  {
    objc_msgSend_endEncoding(v31, v29, v30, v80);

    return 1;
  }

  *&v89.origin.z = v94;
  *&v89.size.height = v95;
  v89.origin.x = v97;
  v89.origin.y = v97;
  v35 = *&self->_offset.x;
  v90 = v96;
  v91 = v35;
  z = self->_offset.z;
  v93 = 0;
  v36 = sub_23993C100(self, v31, commandBuffer, v9, v9, &v89);
  objc_msgSend_endEncoding(v31, v37, v38);

  if (!v36)
  {
    return 1;
  }

LABEL_20:
  if (!copyAllocator)
  {
    return 0;
  }

  v39 = (*(copyAllocator + 2))(copyAllocator, self, commandBuffer, v9);
  if (!v39)
  {
    return 0;
  }

  v42 = v39;
  if ((*(&self->super.super.isa + v22) & 1) == 0)
  {
    if (v9 == v39 || (objc_msgSend_isEqual_(v9, v40, v39), objc_msgSend_isEqual_(v9, v43, v42)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v44 = objc_opt_class();
        v80 = NSStringFromClass(v44);
        MTLReportFailure();
      }
    }
  }

  v45 = *(&self->super.super.isa + v10);
  v46 = objc_msgSend_pixelFormat(v42, v40, v41, v80);
  v47 = MPSDevice::GetPixelInfo(v45, v46, MPSImageFeatureChannelFormatNone);
  v88 = v47;
  v85.width = objc_msgSend_width(v42, v48, v49);
  v85.height = objc_msgSend_height(v42, v50, v51);
  v85.depth = 1;
  v52 = *&self->_clipRect.origin.z;
  *&v84.origin.x = *&self->_clipRect.origin.x;
  *&v84.origin.z = v52;
  *&v84.size.height = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(v86, &v85, &v84);
  v94 = *v86;
  v95 = *&v86[16];
  v96 = v87;
  v55 = *(&self->super.super.isa + v22);
  if ((v55 & 1) == 0)
  {
    v56 = *MEMORY[0x277CD7348];
    if ((v55 & ~*(&self->super.super.isa + v56)) != 0 && MTLReportFailureTypeEnabled())
    {
      v76 = objc_opt_class();
      v81 = NSStringFromClass(v76);
      v82 = *(&self->super.super.isa + v22) & ~*(&self->super.super.isa + v56);
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x200) == 0)
    {
      objc_msgSend_textureType(v42, v53, v54);
      if (objc_msgSend_textureType(v42, v57, v58) != 2)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v81 = v42;
          MTLReportFailure();
        }
      }
    }

    if ((~v47 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v81 = v42;
      v82 = v47 & 0x3FF;
      MTLReportFailure();
    }

    if ((v47 & 0x200000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v81 = v42;
      v82 = v47 & 0x3FF;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 2) == 0 && ((LODWORD(v97[0]) ^ v47) & 0xF0000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v77 = SLODWORD(v97[0]) >> 28;
      v78 = objc_opt_class();
      v82 = v47 >> 28;
      v83 = NSStringFromClass(v78);
      v81 = v77;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x40000) == 0 && self->_edgeMode >= 2 && MTLReportFailureTypeEnabled())
    {
      v79 = objc_opt_class();
      v81 = NSStringFromClass(v79);
      MTLReportFailure();
    }
  }

  *&v89.origin.z = v94;
  *&v89.size.height = v95;
  v89.origin.x = v97;
  v89.origin.y = &v88;
  v59 = *&self->_offset.x;
  v90 = v96;
  v91 = v59;
  z = self->_offset.z;
  v93 = 0;
  v60 = objc_alloc(MEMORY[0x277CD7210]);
  v63 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v60, v61, commandBuffer, 0);
  *v86 = v63;
  *&v86[8] = self;
  if ((*(&self->super.super.isa + v22) & 0x18) != 0)
  {
    v64 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v64 || (v65 = objc_opt_class(), v66 = NSStringFromClass(v65), objc_msgSend_setLabel_(self, v67, v66), (v64 = v66) != 0))
    {
      objc_msgSend_setLabel_(v63, v62, v64, v81, v82, v83);
    }
  }

  v68 = sub_23993C100(self, v63, commandBuffer, v9, v42, &v89);
  v69 = v68 == 0;
  if (v68)
  {
  }

  else
  {

    *texture = v42;
  }

  objc_msgSend_endEncoding(v63, v70, v71, v81);

  return v69;
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sources:(id)sources destination:(id)destination kernelDAGObject:(id)object
{
  v7 = ***(objc_msgSend_graph(object, a2, encoder) + 56);
  v8 = **(v7 + 8);
  if (*(*(v7 + 8) + 8) != v8)
  {
    v9 = *(*v8 + 16);
    v11 = *v9;
    v10 = v9[1];
    if (v10 != v11)
    {
      if (((v10 - v11) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_239955CF4();
    }

    v12 = **(v7 + 24);
    if (*(*(v7 + 24) + 8) == v12)
    {
      sub_239955C4C();
    }

    if ((*(*(*v12 + 16) + 8) - **(*v12 + 16)) >= 0)
    {
      operator new();
    }

    sub_239955CF4();
  }

  sub_239955C4C();
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture
{
  encoderCopy = encoder;
  memset(v162, 0, sizeof(v162));
  v163.width = objc_msgSend_width(destinationTexture, a2, encoder);
  v163.height = objc_msgSend_height(destinationTexture, v11, v12);
  v163.depth = objc_msgSend_arrayLength(destinationTexture, v13, v14);
  v15 = *&self->_clipRect.origin.z;
  *v155 = *&self->_clipRect.origin.x;
  *&v155[16] = v15;
  *&v155[32] = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(v162, &v163, v155);
  v16 = *MEMORY[0x277CD7350];
  v17 = *(&self->super.super.isa + v16);
  v20 = objc_msgSend_pixelFormat(texture, v18, v19);
  PixelInfo = MPSDevice::GetPixelInfo(v17, v20, MPSImageFeatureChannelFormatNone);
  v22 = PixelInfo;
  v161 = PixelInfo;
  v23 = *(&self->super.super.isa + v16);
  v26 = objc_msgSend_pixelFormat(destinationTexture, v24, v25);
  v27 = MPSDevice::GetPixelInfo(v23, v26, MPSImageFeatureChannelFormatNone);
  v160 = v27;
  v30 = *MEMORY[0x277CD7378];
  v154 = encoderCopy;
  if (*(&self->super.super.isa + v30))
  {
    goto LABEL_45;
  }

  v31 = v27;
  if (!buffer && MTLReportFailureTypeEnabled())
  {
    v136 = objc_opt_class();
    v148 = NSStringFromClass(v136);
    MTLReportFailure();
  }

  if (!texture && MTLReportFailureTypeEnabled())
  {
    v137 = objc_opt_class();
    v148 = NSStringFromClass(v137);
    MTLReportFailure();
  }

  if (!destinationTexture && MTLReportFailureTypeEnabled())
  {
    v138 = objc_opt_class();
    v148 = NSStringFromClass(v138);
    MTLReportFailure();
  }

  v32 = *MEMORY[0x277CD7348];
  if ((*(&self->super.super.isa + v30) & ~*(&self->super.super.isa + v32)) != 0 && MTLReportFailureTypeEnabled())
  {
    v139 = objc_opt_class();
    v148 = NSStringFromClass(v139);
    v150 = *(&self->super.super.isa + v30) & ~*(&self->super.super.isa + v32);
    MTLReportFailure();
  }

  v33 = (v22 & 0x3FF);
  checkFlags = self->_checkFlags;
  objc_msgSend_textureType(texture, v28, v29, v148, v150);
  if ((checkFlags & 0x200) != 0)
  {
    objc_msgSend_textureType(destinationTexture, v35, v36);
    v40 = objc_msgSend_textureType(texture, v38, v39);
    if (v40 != objc_msgSend_textureType(destinationTexture, v41, v42) && MTLReportFailureTypeEnabled())
    {
      destinationTextureCopy5 = destinationTexture;
      textureCopy = texture;
      MTLReportFailure();
    }

    objc_msgSend_arrayLength(texture, v43, v44, destinationTextureCopy5, textureCopy);
    objc_msgSend_arrayLength(destinationTexture, v45, v46);
    v49 = objc_msgSend_arrayLength(texture, v47, v48);
    if (v49 != objc_msgSend_arrayLength(destinationTexture, v50, v51) && MTLReportFailureTypeEnabled())
    {
      v141 = objc_msgSend_arrayLength(destinationTexture, v37, v140);
      textureCopy2 = texture;
      v153 = objc_msgSend_arrayLength(texture, v142, v143);
      destinationTextureCopy5 = destinationTexture;
      textureCopy = v141;
      goto LABEL_120;
    }
  }

  else if (objc_msgSend_textureType(texture, v35, v36) != 2 && MTLReportFailureTypeEnabled())
  {
    destinationTextureCopy5 = texture;
LABEL_120:
    MTLReportFailure();
  }

  if ((~v161 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
  {
    destinationTextureCopy5 = texture;
    textureCopy = v33;
    MTLReportFailure();
  }

  if ((self->_checkFlags & 0x40) == 0 && (v161 & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
  {
    destinationTextureCopy5 = texture;
    textureCopy = v33;
    MTLReportFailure();
  }

  if ((self->_checkFlags & 4) != 0 && (v161 & 0x80000000000) == 0 && MTLReportFailureTypeEnabled())
  {
    destinationTextureCopy5 = texture;
    textureCopy = v33;
    MTLReportFailure();
  }

  if (*&v162[1] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((~v160 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
  {
    destinationTextureCopy5 = destinationTexture;
    textureCopy = (v31 & 0x3FF);
    MTLReportFailure();
  }

  if ((v160 & 0x200000000000) == 0 && MTLReportFailureTypeEnabled())
  {
    destinationTextureCopy5 = destinationTexture;
    textureCopy = (v31 & 0x3FF);
    MTLReportFailure();
  }

  if ((self->_checkFlags & 0x100) == 0 && (v160 & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
  {
    destinationTextureCopy5 = destinationTexture;
    textureCopy = (v31 & 0x3FF);
    MTLReportFailure();
  }

  if ((self->_checkFlags & 2) == 0 && ((v161 ^ v160) & 0xF0000000) != 0 && MTLReportFailureTypeEnabled())
  {
    v144 = v161 >> 28;
    v145 = v160 >> 28;
    v146 = objc_opt_class();
    textureCopy = v145;
    textureCopy2 = NSStringFromClass(v146);
    destinationTextureCopy5 = v144;
    MTLReportFailure();
  }

  if (texture == destinationTexture || (objc_msgSend_isEqual_(texture, v37, destinationTexture), objc_msgSend_isEqual_(texture, v52, destinationTexture)))
  {
    if (MTLReportFailureTypeEnabled())
    {
      v55 = objc_opt_class();
      destinationTextureCopy5 = NSStringFromClass(v55);
      MTLReportFailure();
    }
  }

  if ((self->_checkFlags & 0x40000) == 0 && self->_edgeMode >= 2 && MTLReportFailureTypeEnabled())
  {
    v147 = objc_opt_class();
    destinationTextureCopy5 = NSStringFromClass(v147);
    MTLReportFailure();
  }

  if (objc_msgSend_textureType(texture, v53, v54, destinationTextureCopy5, textureCopy, textureCopy2, v153) == 2)
  {
    if (self->_offset.z && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(&v162[2] + 1) != 1 && MTLReportFailureTypeEnabled())
    {
LABEL_134:
      MTLReportFailure();
    }
  }

  else
  {
    objc_msgSend_arrayLength(texture, v56, v57);
    z = self->_offset.z;
    if ((z >= objc_msgSend_arrayLength(texture, v59, v60) || self->_offset.z < 0) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_arrayLength(texture, v61, v62);
    v63 = *(&v162[2] + 1) + self->_offset.z;
    if (v63 > objc_msgSend_arrayLength(texture, v64, v65) && MTLReportFailureTypeEnabled())
    {
      goto LABEL_134;
    }
  }

  if (objc_msgSend_textureType(destinationTexture, v56, v57) == 2)
  {
    if (*&v162[1] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(&v162[2] + 1) != 1 && MTLReportFailureTypeEnabled())
    {
LABEL_140:
      MTLReportFailure();
    }
  }

  else
  {
    objc_msgSend_arrayLength(destinationTexture, v28, v29);
    v66 = *&v162[1];
    if (v66 >= objc_msgSend_arrayLength(destinationTexture, v67, v68) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_arrayLength(destinationTexture, v69, v70);
    v71 = *(&v162[2] + 1) + *&v162[1];
    if (v71 > objc_msgSend_arrayLength(destinationTexture, v72, v73) && MTLReportFailureTypeEnabled())
    {
      goto LABEL_140;
    }
  }

LABEL_45:
  if (*&v162[2] && *(&v162[1] + 1))
  {
    *v155 = &v161;
    *&v155[8] = &v160;
    *&v155[16] = v162[0];
    *&v155[32] = 0;
    *&v155[40] = *(&v162[1] + 8);
    v156 = 1;
    v157 = *&self->_offset.x;
    v158 = 0;
    v159 = 0;
    if (encoderCopy)
    {
      if (*(&v162[2] + 1))
      {
        v74 = 0;
        textureCopy7 = texture;
        destinationTextureCopy6 = destinationTexture;
        do
        {
          if (objc_msgSend_textureType(texture, v28, v29) == 3)
          {
            v79 = objc_msgSend_pixelFormat(texture, v77, v78);
            textureCopy7 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(textureCopy7, v80, v79, 2, 0, 1, v74 + self->_offset.z, 1);
          }

          if (objc_msgSend_textureType(destinationTexture, v77, v78) == 3)
          {
            v83 = objc_msgSend_pixelFormat(destinationTexture, v81, v82);
            destinationTextureCopy6 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(destinationTextureCopy6, v84, v83, 2, 0, 1, v74 + *&v162[1], 1);
          }

          sub_23993C100(self, encoderCopy, buffer, textureCopy7, destinationTextureCopy6, v155);
          if ((objc_msgSend_retainedReferences(buffer, v85, v86) & 1) == 0)
          {
            if (textureCopy7 != texture && textureCopy7)
            {
              v87 = objc_msgSend_userDictionary(buffer, v28, v29);
              v89 = objc_msgSend_objectForKey_(v87, v88, @"_MPSCommandBufferRetainListKey");
              if (!v89)
              {
                v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
                objc_msgSend_setObject_forKey_(v87, v92, v91, @"_MPSCommandBufferRetainListKey");

                v163.width = MEMORY[0x277D85DD0];
                v163.height = 3221225472;
                v163.depth = sub_23993D9F0;
                v164 = &unk_278AC37A8;
                v165 = @"_MPSCommandBufferRetainListKey";
                objc_msgSend_addCompletedHandler_(buffer, v93, &v163);
                v89 = v91;
                encoderCopy = v154;
              }

              objc_msgSend_addObject_(v89, v90, textureCopy7);
            }

            if (destinationTextureCopy6 != destinationTexture && destinationTextureCopy6)
            {
              v94 = objc_msgSend_userDictionary(buffer, v28, v29);
              v96 = objc_msgSend_objectForKey_(v94, v95, @"_MPSCommandBufferRetainListKey");
              if (!v96)
              {
                v98 = objc_alloc_init(MEMORY[0x277CBEB18]);
                objc_msgSend_setObject_forKey_(v94, v99, v98, @"_MPSCommandBufferRetainListKey");

                v163.width = MEMORY[0x277D85DD0];
                v163.height = 3221225472;
                v163.depth = sub_23993D9F0;
                v164 = &unk_278AC37A8;
                v165 = @"_MPSCommandBufferRetainListKey";
                objc_msgSend_addCompletedHandler_(buffer, v100, &v163);
                v96 = v98;
                encoderCopy = v154;
              }

              objc_msgSend_addObject_(v96, v97, destinationTextureCopy6);
            }
          }

          if (textureCopy7 != texture)
          {
          }

          if (destinationTextureCopy6 != destinationTexture)
          {
          }

          ++v74;
        }

        while (v74 < *(&v162[2] + 1));
      }
    }

    else
    {
      v101 = objc_alloc(MEMORY[0x277CD7210]);
      v105 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v101, v102, buffer, 0);
      if ((*(&self->super.super.isa + v30) & 0x18) != 0)
      {
        v104 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
        if (v104 || (v106 = objc_opt_class(), v107 = NSStringFromClass(v106), objc_msgSend_setLabel_(self, v108, v107), (v104 = v107) != 0))
        {
          objc_msgSend_setLabel_(v105, v103, v104);
        }
      }

      if (*(&v162[2] + 1))
      {
        v109 = 0;
        textureCopy8 = texture;
        destinationTextureCopy7 = destinationTexture;
        do
        {
          if (objc_msgSend_textureType(texture, v103, v104) == 3)
          {
            v114 = objc_msgSend_pixelFormat(texture, v112, v113);
            textureCopy8 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(texture, v115, v114, 2, 0, 1, v109 + self->_offset.z, 1);
          }

          if (objc_msgSend_textureType(destinationTexture, v112, v113) == 3)
          {
            v118 = objc_msgSend_pixelFormat(destinationTexture, v116, v117);
            destinationTextureCopy7 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(destinationTexture, v119, v118, 2, 0, 1, v109 + *&v162[1], 1);
          }

          sub_23993C100(self, v105, buffer, textureCopy8, destinationTextureCopy7, v155);
          if ((objc_msgSend_retainedReferences(buffer, v120, v121) & 1) == 0)
          {
            if (textureCopy8 != texture && textureCopy8)
            {
              v122 = objc_msgSend_userDictionary(buffer, v103, v104);
              v124 = objc_msgSend_objectForKey_(v122, v123, @"_MPSCommandBufferRetainListKey");
              if (!v124)
              {
                v126 = objc_alloc_init(MEMORY[0x277CBEB18]);
                objc_msgSend_setObject_forKey_(v122, v127, v126, @"_MPSCommandBufferRetainListKey");

                v163.width = MEMORY[0x277D85DD0];
                v163.height = 3221225472;
                v163.depth = sub_23993D9F0;
                v164 = &unk_278AC37A8;
                v165 = @"_MPSCommandBufferRetainListKey";
                objc_msgSend_addCompletedHandler_(buffer, v128, &v163);
                v124 = v126;
              }

              objc_msgSend_addObject_(v124, v125, textureCopy8);
            }

            if (destinationTextureCopy7 != destinationTexture && destinationTextureCopy7)
            {
              v129 = objc_msgSend_userDictionary(buffer, v103, v104);
              v131 = objc_msgSend_objectForKey_(v129, v130, @"_MPSCommandBufferRetainListKey");
              if (!v131)
              {
                v133 = objc_alloc_init(MEMORY[0x277CBEB18]);
                objc_msgSend_setObject_forKey_(v129, v134, v133, @"_MPSCommandBufferRetainListKey");

                v163.width = MEMORY[0x277D85DD0];
                v163.height = 3221225472;
                v163.depth = sub_23993D9F0;
                v164 = &unk_278AC37A8;
                v165 = @"_MPSCommandBufferRetainListKey";
                objc_msgSend_addCompletedHandler_(buffer, v135, &v163);
                v131 = v133;
              }

              objc_msgSend_addObject_(v131, v132, destinationTextureCopy7);
            }
          }

          if (textureCopy8 != texture)
          {
          }

          if (destinationTextureCopy7 != destinationTexture)
          {
          }

          ++v109;
        }

        while (v109 < *(&v162[2] + 1));
      }

      objc_msgSend_endEncoding(v105, v103, v104);
    }
  }
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image destinationImage:(id)destinationImage
{
  v8 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v8) & 1) == 0)
  {
    if (!buffer)
    {
      selfCopy = self;
      encoderCopy = encoder;
      v27 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy;
      buffer = 0;
      v28 = v27;
      self = selfCopy;
      if (v28)
      {
        v29 = objc_opt_class();
        v103 = NSStringFromClass(v29);
        MTLReportFailure();
        self = selfCopy;
        encoder = encoderCopy;
        buffer = 0;
      }
    }

    if (!image)
    {
      selfCopy2 = self;
      bufferCopy = buffer;
      encoderCopy2 = encoder;
      v33 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy2;
      buffer = bufferCopy;
      v34 = v33;
      self = selfCopy2;
      if (v34)
      {
        v35 = objc_opt_class();
        v103 = NSStringFromClass(v35);
        MTLReportFailure();
        self = selfCopy2;
        encoder = encoderCopy2;
        buffer = bufferCopy;
      }
    }

    if (!destinationImage)
    {
      selfCopy3 = self;
      bufferCopy2 = buffer;
      encoderCopy3 = encoder;
      v39 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy3;
      buffer = bufferCopy2;
      v40 = v39;
      self = selfCopy3;
      if (v40)
      {
        v41 = objc_opt_class();
        v103 = NSStringFromClass(v41);
        MTLReportFailure();
        self = selfCopy3;
        encoder = encoderCopy3;
        buffer = bufferCopy2;
      }
    }

    v9 = *MEMORY[0x277CD7348];
    if ((*(&self->super.super.isa + v8) & ~*(&self->super.super.isa + v9)) != 0)
    {
      selfCopy4 = self;
      bufferCopy3 = buffer;
      encoderCopy4 = encoder;
      v45 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy4;
      buffer = bufferCopy3;
      v46 = v45;
      self = selfCopy4;
      if (v46)
      {
        v47 = objc_opt_class();
        v103 = NSStringFromClass(v47);
        destinationImageCopy2 = *(&selfCopy4->super.super.isa + v8) & ~*(&selfCopy4->super.super.isa + v9);
        MTLReportFailure();
        self = selfCopy4;
        encoder = encoderCopy4;
        buffer = bufferCopy3;
      }
    }

    if ((self->_checkFlags & 0x800) == 0)
    {
      v10 = MEMORY[0x277CD72F8];
      if (*(image + *MEMORY[0x277CD72F8]) >= 5uLL)
      {
        selfCopy5 = self;
        bufferCopy4 = buffer;
        encoderCopy5 = encoder;
        v63 = MTLReportFailureTypeEnabled();
        encoder = encoderCopy5;
        buffer = bufferCopy4;
        v64 = v63;
        self = selfCopy5;
        if (v64)
        {
          v65 = objc_opt_class();
          v103 = NSStringFromClass(v65);
          destinationImageCopy2 = image;
          MTLReportFailure();
          self = selfCopy5;
          encoder = encoderCopy5;
          buffer = bufferCopy4;
        }
      }

      if (*(destinationImage + *v10) >= 5uLL)
      {
        selfCopy6 = self;
        bufferCopy5 = buffer;
        encoderCopy6 = encoder;
        v69 = MTLReportFailureTypeEnabled();
        encoder = encoderCopy6;
        buffer = bufferCopy5;
        v70 = v69;
        self = selfCopy6;
        if (v70)
        {
          v71 = objc_opt_class();
          v103 = NSStringFromClass(v71);
          destinationImageCopy2 = destinationImage;
          MTLReportFailure();
          self = selfCopy6;
          encoder = encoderCopy6;
          buffer = bufferCopy5;
        }
      }
    }

    v11 = MEMORY[0x277CD72F0];
    if (*(image + *MEMORY[0x277CD72F0]) == 5)
    {
      selfCopy7 = self;
      bufferCopy6 = buffer;
      encoderCopy7 = encoder;
      v51 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy7;
      buffer = bufferCopy6;
      v52 = v51;
      self = selfCopy7;
      if (v52)
      {
        v53 = objc_opt_class();
        v103 = NSStringFromClass(v53);
        MTLReportFailure();
        self = selfCopy7;
        encoder = encoderCopy7;
        buffer = bufferCopy6;
      }
    }

    if (*(destinationImage + *v11) == 5)
    {
      selfCopy8 = self;
      bufferCopy7 = buffer;
      encoderCopy8 = encoder;
      v57 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy8;
      buffer = bufferCopy7;
      v58 = v57;
      self = selfCopy8;
      if (v58)
      {
        v59 = objc_opt_class();
        v103 = NSStringFromClass(v59);
        MTLReportFailure();
        self = selfCopy8;
        encoder = encoderCopy8;
        buffer = bufferCopy7;
      }
    }
  }

  if (image && destinationImage)
  {
    v12 = *MEMORY[0x277CD7320];
    v13 = (image + v12);
    v14 = (destinationImage + v12);
    v15 = *(image + v12 + 56);
    if ((*(&self->super.super.isa + v8) & 1) == 0)
    {
      v16 = MEMORY[0x277CD7490];
      if ((*(image + v12 + 56) & 1) != 0 && !*(image + *MEMORY[0x277CD7490]))
      {
        selfCopy9 = self;
        bufferCopy8 = buffer;
        encoderCopy9 = encoder;
        v94 = MTLReportFailureTypeEnabled();
        v16 = MEMORY[0x277CD7490];
        encoder = encoderCopy9;
        buffer = bufferCopy8;
        v95 = v94;
        self = selfCopy9;
        if (v95)
        {
          v96 = objc_opt_class();
          v103 = NSStringFromClass(v96);
          destinationImageCopy2 = image;
          MTLReportFailure();
          v16 = MEMORY[0x277CD7490];
          self = selfCopy9;
          encoder = encoderCopy9;
          buffer = bufferCopy8;
        }
      }

      if ((v14[7] & 1) != 0 && !*(destinationImage + *v16))
      {
        selfCopy10 = self;
        bufferCopy9 = buffer;
        encoderCopy10 = encoder;
        v100 = MTLReportFailureTypeEnabled();
        encoder = encoderCopy10;
        buffer = bufferCopy9;
        v101 = v100;
        self = selfCopy10;
        if (v101)
        {
          v102 = objc_opt_class();
          v103 = NSStringFromClass(v102);
          destinationImageCopy2 = destinationImage;
          MTLReportFailure();
          self = selfCopy10;
          encoder = encoderCopy10;
          buffer = bufferCopy9;
        }
      }
    }

    explicit = atomic_load_explicit(v13, memory_order_acquire);
    if (explicit)
    {
      v18 = atomic_load_explicit(v14, memory_order_acquire);
      if (v18)
      {
        goto LABEL_20;
      }
    }

    else
    {
      selfCopy11 = self;
      bufferCopy10 = buffer;
      encoderCopy11 = encoder;
      MPSAutoTexture::AllocateTexture(v13, 0);
      self = selfCopy11;
      encoder = encoderCopy11;
      buffer = bufferCopy10;
      explicit = atomic_load_explicit(v13, memory_order_acquire);
      v18 = atomic_load_explicit(v14, memory_order_acquire);
      if (v18)
      {
LABEL_20:
        if (*(&self->super.super.isa + v8))
        {
          goto LABEL_26;
        }

LABEL_24:
        if (!explicit)
        {
          selfCopy12 = self;
          bufferCopy11 = buffer;
          encoderCopy12 = encoder;
          v75 = v18;
          v76 = MTLReportFailureTypeEnabled();
          v18 = v75;
          encoder = encoderCopy12;
          buffer = bufferCopy11;
          v77 = v76;
          self = selfCopy12;
          if (v77)
          {
            v78 = objc_opt_class();
            v103 = NSStringFromClass(v78);
            destinationImageCopy2 = objc_msgSend_debugDescription(image, v79, v80);
            MTLReportFailure();
            v18 = v75;
            self = selfCopy12;
            encoder = encoderCopy12;
            buffer = bufferCopy11;
          }
        }

        if (!v18)
        {
          selfCopy13 = self;
          bufferCopy12 = buffer;
          encoderCopy13 = encoder;
          v84 = MTLReportFailureTypeEnabled();
          v18 = 0;
          encoder = encoderCopy13;
          buffer = bufferCopy12;
          v85 = v84;
          self = selfCopy13;
          if (v85)
          {
            v86 = objc_opt_class();
            v87 = NSStringFromClass(v86);
            v105 = objc_msgSend_debugDescription(destinationImage, v88, v89);
            MTLReportFailure();
            objc_msgSend_encodeToCommandEncoder_commandBuffer_sourceTexture_destinationTexture_(selfCopy13, v90, encoderCopy13, bufferCopy12, explicit, 0, v87, v105);
LABEL_27:
            if (v15)
            {

              MPSDecrementReadCount(image);
            }

            return;
          }
        }

LABEL_26:
        objc_msgSend_encodeToCommandEncoder_commandBuffer_sourceTexture_destinationTexture_(self, a2, encoder, buffer, explicit, v18, v103, destinationImageCopy2);
        goto LABEL_27;
      }
    }

    selfCopy14 = self;
    bufferCopy13 = buffer;
    encoderCopy14 = encoder;
    MPSAutoTexture::AllocateTexture(v14, 0);
    self = selfCopy14;
    encoder = encoderCopy14;
    buffer = bufferCopy13;
    v18 = atomic_load_explicit(v14, memory_order_acquire);
    if (*(&selfCopy14->super.super.isa + v8))
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 1) = 1;
  v15.receiver = self;
  v15.super_class = MPSUnaryImageKernel;
  [(MPSKernel *)&v15 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_offset.x, @"MPSImageUnaryKernel.offset.x");
  objc_msgSend_encodeInt64_forKey_(coder, v6, self->_offset.y, @"MPSImageUnaryKernel.offset.y");
  objc_msgSend_encodeInt64_forKey_(coder, v7, self->_offset.z, @"MPSImageUnaryKernel.offset.z");
  objc_msgSend_encodeInt64_forKey_(coder, v8, self->_clipRect.origin.x, @"MPSImageUnaryKernel.clipRect.origin.x");
  objc_msgSend_encodeInt64_forKey_(coder, v9, self->_clipRect.origin.y, @"MPSImageUnaryKernel.clipRect.origin.y");
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_clipRect.origin.z, @"MPSImageUnaryKernel.clipRect.origin.z");
  objc_msgSend_encodeInt64_forKey_(coder, v11, self->_clipRect.size.width, @"MPSImageUnaryKernel.clipRect.size.width");
  objc_msgSend_encodeInt64_forKey_(coder, v12, self->_clipRect.size.height, @"MPSImageUnaryKernel.clipRect.size.height");
  objc_msgSend_encodeInt64_forKey_(coder, v13, self->_clipRect.size.depth, @"MPSImageUnaryKernel.clipRect.size.depth");
  objc_msgSend_encodeInt64_forKey_(coder, v14, self->_edgeMode, @"MPSImageUnaryKernel.edgeMode");
}

- (MPSUnaryImageKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v19.receiver = self;
  v19.super_class = MPSUnaryImageKernel;
  v5 = [(MPSKernel *)&v19 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 1) << 8 == 256)
  {
    v5->_offset.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSImageUnaryKernel.offset.x");
    v7->_offset.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v8, @"MPSImageUnaryKernel.offset.y");
    v7->_offset.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v9, @"MPSImageUnaryKernel.offset.z");
    v7->_clipRect.origin.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v10, @"MPSImageUnaryKernel.clipRect.origin.x");
    v7->_clipRect.origin.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v11, @"MPSImageUnaryKernel.clipRect.origin.y");
    v7->_clipRect.origin.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v12, @"MPSImageUnaryKernel.clipRect.origin.z");
    v7->_clipRect.size.width = objc_msgSend_decodeInt64ForKey_(aDecoder, v13, @"MPSImageUnaryKernel.clipRect.size.width");
    v7->_clipRect.size.height = objc_msgSend_decodeInt64ForKey_(aDecoder, v14, @"MPSImageUnaryKernel.clipRect.size.height");
    v7->_clipRect.size.depth = objc_msgSend_decodeInt64ForKey_(aDecoder, v15, @"MPSImageUnaryKernel.clipRect.size.depth");
    v7->_edgeMode = objc_msgSend_decodeInt64ForKey_(aDecoder, v16, @"MPSImageUnaryKernel.edgeMode");
    v7->_checkFlags = 513;
    v7->_encode = 0;
    v7->_encodeData = 0;
    v7->_getPreferredTileSize = 0;
    return v7;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v18 = objc_opt_class();
    NSStringFromClass(v18);
    MTLReportFailure();
  }

  return 0;
}

- (void)setOffset:(MPSOffset *)offset
{
  z = offset->z;
  *&self->_offset.x = *&offset->x;
  self->_offset.z = z;
}

- (MTLRegion)clipRect
{
  v3 = *&self[2].size.height;
  *&retstr->origin.x = *&self[2].origin.z;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[3].origin.x;
  return self;
}

- (void)setClipRect:(MTLRegion *)clipRect
{
  v4 = *&clipRect->origin.z;
  v3 = *&clipRect->size.height;
  *&self->_clipRect.origin.x = *&clipRect->origin.x;
  *&self->_clipRect.origin.z = v4;
  *&self->_clipRect.size.height = v3;
}

@end