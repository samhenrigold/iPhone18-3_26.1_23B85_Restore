@interface MPSBinaryImageKernel
- (BOOL)encodeToCommandBuffer:(id)commandBuffer inPlacePrimaryTexture:(id *)inPlacePrimaryTexture secondaryTexture:(id)secondaryTexture fallbackCopyAllocator:(MPSCopyAllocator)copyAllocator;
- (BOOL)encodeToCommandBuffer:(id)commandBuffer primaryTexture:(id)primaryTexture inPlaceSecondaryTexture:(id *)inPlaceSecondaryTexture fallbackCopyAllocator:(MPSCopyAllocator)copyAllocator;
- (MPSBinaryImageKernel)init;
- (MPSBinaryImageKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSBinaryImageKernel)initWithDevice:(id)device;
- (MPSRegion)primarySourceRegionForDestinationSize:(SEL)size;
- (MPSRegion)secondarySourceRegionForDestinationSize:(SEL)size;
- (MTLRegion)clipRect;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryImage:(id)image secondaryImage:(id)secondaryImage destinationImage:(id)destinationImage;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryTexture:(id)texture secondaryTexture:(id)secondaryTexture destinationTexture:(id)destinationTexture;
- (void)encodeWithCoder:(id)coder;
- (void)setClipRect:(MTLRegion *)clipRect;
- (void)setPrimaryOffset:(MPSOffset *)primaryOffset;
- (void)setSecondaryOffset:(MPSOffset *)secondaryOffset;
@end

@implementation MPSBinaryImageKernel

- (MPSBinaryImageKernel)init
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

- (MPSBinaryImageKernel)initWithDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSBinaryImageKernel;
  result = [(MPSKernel *)&v6 initWithDevice:device];
  if (result)
  {
    result->_secondaryOffset.y = 0;
    result->_secondaryOffset.z = 0;
    result->_secondaryOffset.x = 0;
    result->_primaryOffset.y = 0;
    result->_primaryOffset.z = 0;
    result->_primaryOffset.x = 0;
    result->_secondaryEdgeMode = 0;
    result->_primaryEdgeMode = 0;
    v5 = *(MEMORY[0x277CD7200] + 16);
    v4 = *(MEMORY[0x277CD7200] + 32);
    *&result->_clipRect.origin.x = *MEMORY[0x277CD7200];
    *&result->_clipRect.origin.z = v5;
    *&result->_clipRect.size.height = v4;
    result->_checkFlags = 1;
    result->_encode = 0;
    result->_encodeData = 0;
    result->_preferredTileSize = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSBinaryImageKernel;
  result = [(MPSKernel *)&v11 copyWithZone:zone device:device];
  if (result)
  {
    z = self->_primaryOffset.z;
    *(result + 136) = *&self->_primaryOffset.x;
    *(result + 19) = z;
    v7 = self->_secondaryOffset.z;
    *(result + 10) = *&self->_secondaryOffset.x;
    *(result + 22) = v7;
    *(result + 23) = self->_primaryEdgeMode;
    *(result + 24) = self->_secondaryEdgeMode;
    v9 = *&self->_clipRect.origin.z;
    v8 = *&self->_clipRect.size.height;
    *(result + 88) = *&self->_clipRect.origin.x;
    *(result + 104) = v9;
    *(result + 120) = v8;
    *(result + 50) = self->_checkFlags;
    *(result + 26) = self->_encode;
    encodeData = self->_encodeData;
    if (encodeData == self)
    {
      encodeData = result;
    }

    *(result + 27) = encodeData;
  }

  return result;
}

- (id)debugDescription
{
  if (!dladdr(self->_encode, &v11))
  {
    v11.dli_sname = "<NULL>";
  }

  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = MPSBinaryImageKernel;
  v4 = [(MPSKernel *)&v10 debugDescription];
  v6 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
  if (!v6)
  {
    v6 = &stru_284C92500;
  }

  v7 = "MPSImageEdgeModeZero";
  if (self->_primaryEdgeMode == 1)
  {
    v8 = "MPSImageEdgeModeClamp";
  }

  else
  {
    v8 = "MPSImageEdgeModeZero";
  }

  if (self->_secondaryEdgeMode == 1)
  {
    v7 = "MPSImageEdgeModeClamp";
  }

  return objc_msgSend_stringWithFormat_(v3, v5, @"%@ %@\n\tprimaryOffset: {%ld,%ld,%ld}\n\tsecondaryOffset: {%ld,%ld,%ld}\n\tclip: origin{%lu,%lu,%lu} size{%lu,%lu,%lu}\n\tdevice: %p\n\tprimary edge mode: %s\n\tsecondary edge mode: %s\n\tEncode Proc:         %s", v4, v6, *&self->_primaryOffset.x, self->_primaryOffset.z, *&self->_secondaryOffset.x, self->_secondaryOffset.z, *&self->_clipRect.origin.x, *&self->_clipRect.origin.z, self->_clipRect.size.height, self->_clipRect.size.depth, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2], v8, v7, v11.dli_sname);
}

- (BOOL)encodeToCommandBuffer:(id)commandBuffer primaryTexture:(id)primaryTexture inPlaceSecondaryTexture:(id *)inPlaceSecondaryTexture fallbackCopyAllocator:(MPSCopyAllocator)copyAllocator
{
  v8 = *inPlaceSecondaryTexture;
  v9 = *MEMORY[0x277CD7350];
  v10 = *(&self->super.super.isa + v9);
  v11 = objc_msgSend_pixelFormat(primaryTexture, a2, commandBuffer);
  PixelInfo = MPSDevice::GetPixelInfo(v10, v11, MPSImageFeatureChannelFormatNone);
  v13 = PixelInfo;
  v121[0] = PixelInfo;
  v14 = *(&self->super.super.isa + v9);
  v17 = objc_msgSend_pixelFormat(v8, v15, v16);
  v18 = MPSDevice::GetPixelInfo(v14, v17, MPSImageFeatureChannelFormatNone);
  v19 = v18;
  v120 = v18;
  v118 = 0u;
  v119 = 0u;
  v117 = 0u;
  *v108 = objc_msgSend_width(v8, v20, v21);
  *&v108[8] = objc_msgSend_height(v8, v22, v23);
  *&v108[16] = 1;
  v24 = *&self->_clipRect.origin.z;
  *v111 = *&self->_clipRect.origin.x;
  *&v111[16] = v24;
  *&v111[32] = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(&v117, v108, v111);
  v27 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v27) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v86 = objc_opt_class();
      v99 = NSStringFromClass(v86);
      MTLReportFailure();
    }

    if (!primaryTexture && MTLReportFailureTypeEnabled())
    {
      v87 = objc_opt_class();
      v99 = NSStringFromClass(v87);
      MTLReportFailure();
    }

    if (!v8 && MTLReportFailureTypeEnabled())
    {
      v88 = objc_opt_class();
      v99 = NSStringFromClass(v88);
      MTLReportFailure();
    }

    v28 = *MEMORY[0x277CD7348];
    if ((*(&self->super.super.isa + v27) & ~*(&self->super.super.isa + v28)) != 0 && MTLReportFailureTypeEnabled())
    {
      v89 = objc_opt_class();
      v99 = NSStringFromClass(v89);
      v101 = *(&self->super.super.isa + v27) & ~*(&self->super.super.isa + v28);
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x200) == 0)
    {
      objc_msgSend_textureType(primaryTexture, v25, v26);
      if (objc_msgSend_textureType(primaryTexture, v29, v30) != 2 && MTLReportFailureTypeEnabled())
      {
        v99 = primaryTexture;
        MTLReportFailure();
      }

      objc_msgSend_textureType(v8, v31, v32, v99, v101);
      if (objc_msgSend_textureType(v8, v33, v34) != 2 && MTLReportFailureTypeEnabled())
      {
        v99 = v8;
        MTLReportFailure();
      }

      if (v118 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    v35 = v19 & 0x3FF;
    if ((~LODWORD(v121[0]) & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v99 = primaryTexture;
      v101 = v13 & 0x3FF;
      MTLReportFailure();
    }

    if ((~v120 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v99 = v8;
      v101 = v35;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x40) == 0 && (v121[0] & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v99 = primaryTexture;
      v101 = v13 & 0x3FF;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x80) == 0 && (v120 & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v99 = v8;
      v101 = v35;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 4) != 0 && (v121[0] & 0x80000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v99 = primaryTexture;
      v101 = v13 & 0x3FF;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x10) != 0 && (v120 & 0x80000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v99 = v8;
      v101 = v35;
      MTLReportFailure();
    }
  }

  if ((v120 & 0x200000000000) == 0)
  {
    goto LABEL_32;
  }

  v36 = objc_alloc(MEMORY[0x277CD7210]);
  v40 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v36, v37, commandBuffer, 0);
  *v108 = v40;
  *&v108[8] = self;
  if ((*(&self->super.super.isa + v27) & 0x18) != 0)
  {
    v39 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v39 || (v41 = objc_opt_class(), v42 = NSStringFromClass(v41), objc_msgSend_setLabel_(self, v43, v42), (v39 = v42) != 0))
    {
      objc_msgSend_setLabel_(v40, v38, v39, v99, v101);
    }
  }

  if (!v119 || !*(&v118 + 1))
  {
    objc_msgSend_endEncoding(v40, v38, v39, v99);

    return 1;
  }

  *&v111[24] = v117;
  *&v111[40] = v118;
  v112 = v119;
  v113 = *&self->_primaryOffset.x;
  z = self->_primaryOffset.z;
  v115 = *&self->_secondaryOffset.x;
  v116 = self->_secondaryOffset.z;
  *v111 = v121;
  *&v111[8] = &v120;
  v114 = z;
  *&v111[16] = &v120;
  if ((*(&self->super.super.isa + v27) & 8) != 0)
  {
    v92 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (!v92)
    {
      v93 = objc_opt_class();
      v92 = NSStringFromClass(v93);
    }

    objc_msgSend_pushDebugGroup_(v40, v38, v92, v99);
    v45 = v40;
  }

  else
  {
    v45 = 0;
  }

  v48 = (self->_encode)(self->_encodeData, v40, commandBuffer, primaryTexture, v8, v8, v111);
  if (v45)
  {
    objc_msgSend_popDebugGroup(v45, v46, v47);
  }

  objc_msgSend_endEncoding(v40, v46, v47, v99);

  if (!v48)
  {
    return 1;
  }

LABEL_32:
  if (!copyAllocator)
  {
    return 0;
  }

  v49 = (*(copyAllocator + 2))(copyAllocator, self, commandBuffer, v8);
  if (!v49)
  {
    return 0;
  }

  v52 = v49;
  if ((*(&self->super.super.isa + v27) & 1) == 0)
  {
    if (v8 == v49 || (objc_msgSend_isEqual_(v8, v50, v49), objc_msgSend_isEqual_(v8, v53, v52)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v54 = objc_opt_class();
        v99 = NSStringFromClass(v54);
        MTLReportFailure();
      }
    }
  }

  v55 = *(&self->super.super.isa + v9);
  v56 = objc_msgSend_pixelFormat(v52, v50, v51, v99);
  v57 = MPSDevice::GetPixelInfo(v55, v56, MPSImageFeatureChannelFormatNone);
  v110 = v57;
  v107.width = objc_msgSend_width(v52, v58, v59);
  v107.height = objc_msgSend_height(v52, v60, v61);
  v107.depth = 1;
  v62 = *&self->_clipRect.origin.z;
  *&v106.origin.x = *&self->_clipRect.origin.x;
  *&v106.origin.z = v62;
  *&v106.size.height = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(v108, &v107, &v106);
  v117 = *v108;
  v118 = *&v108[16];
  v119 = v109;
  v65 = *(&self->super.super.isa + v27);
  if ((v65 & 1) == 0)
  {
    v66 = *MEMORY[0x277CD7348];
    if ((v65 & ~*(&self->super.super.isa + v66)) != 0 && MTLReportFailureTypeEnabled())
    {
      v94 = objc_opt_class();
      v100 = NSStringFromClass(v94);
      v101 = *(&self->super.super.isa + v27) & ~*(&self->super.super.isa + v66);
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x200) == 0)
    {
      objc_msgSend_textureType(v52, v63, v64);
      if (objc_msgSend_textureType(v52, v67, v68) != 2)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v100 = v52;
          MTLReportFailure();
        }
      }
    }

    if ((~v57 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v100 = v52;
      v101 = v57 & 0x3FF;
      MTLReportFailure();
    }

    if ((v57 & 0x200000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v100 = v52;
      v101 = v57 & 0x3FF;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 2) == 0 && ((LODWORD(v121[0]) ^ v57) & 0xF0000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v95 = SLODWORD(v121[0]) >> 28;
      v96 = objc_opt_class();
      v101 = v57 >> 28;
      v102 = NSStringFromClass(v96);
      v100 = v95;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x40000) == 0)
    {
      if (self->_primaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
      {
        v97 = objc_opt_class();
        v100 = NSStringFromClass(v97);
        MTLReportFailure();
      }

      if (self->_secondaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
      {
        v98 = objc_opt_class();
        v100 = NSStringFromClass(v98);
        MTLReportFailure();
      }
    }
  }

  *&v111[24] = v117;
  *&v111[40] = v118;
  v112 = v119;
  v113 = *&self->_primaryOffset.x;
  v69 = self->_primaryOffset.z;
  v115 = *&self->_secondaryOffset.x;
  v116 = self->_secondaryOffset.z;
  *v111 = v121;
  *&v111[8] = &v120;
  v114 = v69;
  *&v111[16] = &v110;
  v70 = objc_alloc(MEMORY[0x277CD7210]);
  v73 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v70, v71, commandBuffer, 0);
  *v108 = v73;
  *&v108[8] = self;
  if ((*(&self->super.super.isa + v27) & 0x18) != 0)
  {
    v74 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v74 || (v75 = objc_opt_class(), v76 = NSStringFromClass(v75), objc_msgSend_setLabel_(self, v77, v76), (v74 = v76) != 0))
    {
      objc_msgSend_setLabel_(v73, v72, v74, v100, v101, v102);
    }
  }

  if ((*(&self->super.super.isa + v27) & 8) != 0)
  {
    v90 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (!v90)
    {
      v91 = objc_opt_class();
      v90 = NSStringFromClass(v91);
    }

    objc_msgSend_pushDebugGroup_(v73, v72, v90, v100);
    v78 = v73;
  }

  else
  {
    v78 = 0;
  }

  v81 = (self->_encode)(self->_encodeData, v73, commandBuffer, primaryTexture, v8, v52, v111);
  if (v78)
  {
    objc_msgSend_popDebugGroup(v78, v79, v80);
  }

  v82 = v81 == 0;
  if (v81)
  {
  }

  else
  {

    *inPlaceSecondaryTexture = v52;
  }

  objc_msgSend_endEncoding(v73, v83, v84, v100);

  return v82;
}

- (BOOL)encodeToCommandBuffer:(id)commandBuffer inPlacePrimaryTexture:(id *)inPlacePrimaryTexture secondaryTexture:(id)secondaryTexture fallbackCopyAllocator:(MPSCopyAllocator)copyAllocator
{
  v9 = *inPlacePrimaryTexture;
  v10 = *MEMORY[0x277CD7350];
  v11 = *(&self->super.super.isa + v10);
  v12 = objc_msgSend_pixelFormat(*inPlacePrimaryTexture, a2, commandBuffer);
  PixelInfo = MPSDevice::GetPixelInfo(v11, v12, MPSImageFeatureChannelFormatNone);
  v14 = PixelInfo;
  v125[0] = PixelInfo;
  v15 = *(&self->super.super.isa + v10);
  v108 = secondaryTexture;
  v18 = objc_msgSend_pixelFormat(secondaryTexture, v16, v17);
  v19 = MPSDevice::GetPixelInfo(v15, v18, MPSImageFeatureChannelFormatNone);
  v20 = v19;
  v124 = v19;
  v122 = 0u;
  v123 = 0u;
  v121 = 0u;
  *v112 = objc_msgSend_width(v9, v21, v22);
  *&v112[8] = objc_msgSend_height(v9, v23, v24);
  *&v112[16] = 1;
  v25 = *&self->_clipRect.origin.z;
  *v115 = *&self->_clipRect.origin.x;
  *&v115[16] = v25;
  *&v115[32] = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(&v121, v112, v115);
  v28 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v28) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v88 = objc_opt_class();
      v103 = NSStringFromClass(v88);
      MTLReportFailure();
    }

    if (!v9 && MTLReportFailureTypeEnabled())
    {
      v89 = objc_opt_class();
      v103 = NSStringFromClass(v89);
      MTLReportFailure();
    }

    if (!secondaryTexture && MTLReportFailureTypeEnabled())
    {
      v90 = objc_opt_class();
      v103 = NSStringFromClass(v90);
      MTLReportFailure();
    }

    v29 = *MEMORY[0x277CD7348];
    if ((*(&self->super.super.isa + v28) & ~*(&self->super.super.isa + v29)) != 0 && MTLReportFailureTypeEnabled())
    {
      v91 = objc_opt_class();
      v103 = NSStringFromClass(v91);
      v105 = *(&self->super.super.isa + v28) & ~*(&self->super.super.isa + v29);
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x200) == 0)
    {
      objc_msgSend_textureType(v9, v26, v27);
      if (objc_msgSend_textureType(v9, v30, v31) != 2 && MTLReportFailureTypeEnabled())
      {
        v103 = v9;
        MTLReportFailure();
      }

      if (v122 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      objc_msgSend_textureType(secondaryTexture, v32, v33, v103, v105);
      if (objc_msgSend_textureType(secondaryTexture, v34, v35) != 2 && MTLReportFailureTypeEnabled())
      {
        v103 = secondaryTexture;
        MTLReportFailure();
      }
    }

    v36 = v20 & 0x3FF;
    if ((~LODWORD(v125[0]) & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v103 = v9;
      v105 = v14 & 0x3FF;
      MTLReportFailure();
    }

    if ((~v124 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v103 = secondaryTexture;
      v105 = v36;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x40) == 0 && (v125[0] & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v103 = v9;
      v105 = v14 & 0x3FF;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x80) == 0 && (v124 & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v103 = secondaryTexture;
      v105 = v36;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 4) != 0 && (v125[0] & 0x80000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v103 = v9;
      v105 = v14 & 0x3FF;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x10) != 0 && (v124 & 0x80000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v103 = secondaryTexture;
      v105 = v36;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x40000) == 0)
    {
      if (self->_primaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
      {
        v94 = objc_opt_class();
        v103 = NSStringFromClass(v94);
        MTLReportFailure();
      }

      if (self->_secondaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
      {
        v95 = objc_opt_class();
        v103 = NSStringFromClass(v95);
        MTLReportFailure();
      }
    }
  }

  if ((v124 & 0x200000000000) == 0)
  {
    goto LABEL_35;
  }

  v37 = objc_alloc(MEMORY[0x277CD7210]);
  v41 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v37, v38, commandBuffer, 0);
  *v112 = v41;
  *&v112[8] = self;
  if ((*(&self->super.super.isa + v28) & 0x18) != 0)
  {
    v40 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v40 || (v42 = objc_opt_class(), v43 = NSStringFromClass(v42), objc_msgSend_setLabel_(self, v44, v43), (v40 = v43) != 0))
    {
      objc_msgSend_setLabel_(v41, v39, v40, v103, v105);
    }
  }

  if (!v123 || !*(&v122 + 1))
  {
    objc_msgSend_endEncoding(v41, v39, v40, v103);

    return 1;
  }

  *&v115[24] = v121;
  *&v115[40] = v122;
  v116 = v123;
  v117 = *&self->_primaryOffset.x;
  v45 = *&self->_secondaryOffset.x;
  z = self->_secondaryOffset.z;
  *v115 = v125;
  *&v115[8] = &v124;
  v46 = self->_primaryOffset.z;
  v119 = v45;
  v118 = v46;
  *&v115[16] = v125;
  if ((*(&self->super.super.isa + v28) & 8) != 0)
  {
    v96 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (!v96)
    {
      v97 = objc_opt_class();
      v96 = NSStringFromClass(v97);
    }

    objc_msgSend_pushDebugGroup_(v41, v39, v96, v103);
    v47 = v41;
  }

  else
  {
    v47 = 0;
  }

  v50 = (self->_encode)(self->_encodeData, v41, commandBuffer, v9, secondaryTexture, v9, v115);
  if (v47)
  {
    objc_msgSend_popDebugGroup(v47, v48, v49);
  }

  objc_msgSend_endEncoding(v41, v48, v49, v103);

  if (!v50)
  {
    return 1;
  }

LABEL_35:
  if (!copyAllocator)
  {
    return 0;
  }

  v51 = (*(copyAllocator + 2))(copyAllocator, self, commandBuffer, v9);
  if (!v51)
  {
    return 0;
  }

  v54 = v51;
  if ((*(&self->super.super.isa + v28) & 1) == 0)
  {
    if (v9 == v51 || (objc_msgSend_isEqual_(v9, v52, v51), objc_msgSend_isEqual_(v9, v55, v54)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v56 = objc_opt_class();
        v103 = NSStringFromClass(v56);
        MTLReportFailure();
      }
    }
  }

  v57 = *(&self->super.super.isa + v10);
  v58 = objc_msgSend_pixelFormat(v54, v52, v53, v103);
  v59 = MPSDevice::GetPixelInfo(v57, v58, MPSImageFeatureChannelFormatNone);
  v114 = v59;
  v111.width = objc_msgSend_width(v54, v60, v61);
  v111.height = objc_msgSend_height(v54, v62, v63);
  v111.depth = 1;
  v64 = *&self->_clipRect.origin.z;
  *&v110.origin.x = *&self->_clipRect.origin.x;
  *&v110.origin.z = v64;
  *&v110.size.height = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(v112, &v111, &v110);
  v121 = *v112;
  v122 = *&v112[16];
  v123 = v113;
  v67 = *(&self->super.super.isa + v28);
  if ((v67 & 1) == 0)
  {
    v68 = *MEMORY[0x277CD7348];
    if ((v67 & ~*(&self->super.super.isa + v68)) != 0 && MTLReportFailureTypeEnabled())
    {
      v98 = objc_opt_class();
      v104 = NSStringFromClass(v98);
      v105 = *(&self->super.super.isa + v28) & ~*(&self->super.super.isa + v68);
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x200) == 0)
    {
      objc_msgSend_textureType(v54, v65, v66);
      if (objc_msgSend_textureType(v54, v69, v70) != 2)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v104 = v54;
          MTLReportFailure();
        }
      }
    }

    if ((~v59 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v104 = v54;
      v105 = v59 & 0x3FF;
      MTLReportFailure();
    }

    if ((v59 & 0x200000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v104 = v54;
      v105 = v59 & 0x3FF;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 2) == 0 && ((LODWORD(v125[0]) ^ v59) & 0xF0000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v99 = SLODWORD(v125[0]) >> 28;
      v100 = objc_opt_class();
      v105 = v59 >> 28;
      v106 = NSStringFromClass(v100);
      v104 = v99;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x40000) == 0)
    {
      if (self->_primaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
      {
        v101 = objc_opt_class();
        v104 = NSStringFromClass(v101);
        MTLReportFailure();
      }

      if (self->_secondaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
      {
        v102 = objc_opt_class();
        v104 = NSStringFromClass(v102);
        MTLReportFailure();
      }
    }
  }

  *&v115[24] = v121;
  *&v115[40] = v122;
  v116 = v123;
  v117 = *&self->_primaryOffset.x;
  v71 = self->_primaryOffset.z;
  v119 = *&self->_secondaryOffset.x;
  z = self->_secondaryOffset.z;
  *v115 = v125;
  *&v115[8] = &v124;
  v118 = v71;
  *&v115[16] = &v114;
  v72 = objc_alloc(MEMORY[0x277CD7210]);
  v75 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v72, v73, commandBuffer, 0);
  *v112 = v75;
  *&v112[8] = self;
  if ((*(&self->super.super.isa + v28) & 0x18) != 0)
  {
    v76 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v76 || (v77 = objc_opt_class(), v78 = NSStringFromClass(v77), objc_msgSend_setLabel_(self, v79, v78), (v76 = v78) != 0))
    {
      objc_msgSend_setLabel_(v75, v74, v76, v104, v105, v106);
    }
  }

  if ((*(&self->super.super.isa + v28) & 8) != 0)
  {
    v92 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (!v92)
    {
      v93 = objc_opt_class();
      v92 = NSStringFromClass(v93);
    }

    objc_msgSend_pushDebugGroup_(v75, v74, v92, v104);
    v80 = v75;
  }

  else
  {
    v80 = 0;
  }

  v83 = (self->_encode)(self->_encodeData, v75, commandBuffer, v9, v108, v54, v115);
  if (v80)
  {
    objc_msgSend_popDebugGroup(v80, v81, v82);
  }

  v84 = v83 == 0;
  if (v83)
  {
  }

  else
  {

    *inPlacePrimaryTexture = v54;
  }

  objc_msgSend_endEncoding(v75, v85, v86, v104);

  return v84;
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryTexture:(id)texture secondaryTexture:(id)secondaryTexture destinationTexture:(id)destinationTexture
{
  v12 = *MEMORY[0x277CD7350];
  v13 = *(&self->super.super.isa + v12);
  v14 = objc_msgSend_pixelFormat(texture, a2, encoder);
  PixelInfo = MPSDevice::GetPixelInfo(v13, v14, MPSImageFeatureChannelFormatNone);
  v16 = PixelInfo;
  v100 = PixelInfo;
  v17 = *(&self->super.super.isa + v12);
  v20 = objc_msgSend_pixelFormat(secondaryTexture, v18, v19);
  v21 = MPSDevice::GetPixelInfo(v17, v20, MPSImageFeatureChannelFormatNone);
  v22 = v21;
  v99 = v21;
  v23 = *(&self->super.super.isa + v12);
  v26 = objc_msgSend_pixelFormat(destinationTexture, v24, v25);
  v27 = MPSDevice::GetPixelInfo(v23, v26, MPSImageFeatureChannelFormatNone);
  v28 = v27;
  v98 = v27;
  v96 = 0u;
  v97 = 0u;
  v95 = 0u;
  v94.width = objc_msgSend_width(destinationTexture, v29, v30);
  v94.height = objc_msgSend_height(destinationTexture, v31, v32);
  v94.depth = 1;
  v33 = *&self->_clipRect.origin.z;
  *v88 = *&self->_clipRect.origin.x;
  *&v88[16] = v33;
  *&v88[32] = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(&v95, &v94, v88);
  v36 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v36) & 1) == 0)
  {
    if (!buffer && MTLReportFailureTypeEnabled())
    {
      v68 = objc_opt_class();
      destinationTextureCopy4 = NSStringFromClass(v68);
      MTLReportFailure();
    }

    if (!texture && MTLReportFailureTypeEnabled())
    {
      v69 = objc_opt_class();
      destinationTextureCopy4 = NSStringFromClass(v69);
      MTLReportFailure();
    }

    if (!secondaryTexture && MTLReportFailureTypeEnabled())
    {
      v70 = objc_opt_class();
      destinationTextureCopy4 = NSStringFromClass(v70);
      MTLReportFailure();
    }

    if (!destinationTexture && MTLReportFailureTypeEnabled())
    {
      v71 = objc_opt_class();
      destinationTextureCopy4 = NSStringFromClass(v71);
      MTLReportFailure();
    }

    v37 = *MEMORY[0x277CD7348];
    if ((*(&self->super.super.isa + v36) & ~*(&self->super.super.isa + v37)) != 0 && MTLReportFailureTypeEnabled())
    {
      v72 = objc_opt_class();
      destinationTextureCopy4 = NSStringFromClass(v72);
      v85 = *(&self->super.super.isa + v36) & ~*(&self->super.super.isa + v37);
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x200) == 0)
    {
      objc_msgSend_textureType(texture, v34, v35);
      if (objc_msgSend_textureType(texture, v38, v39) != 2 && MTLReportFailureTypeEnabled())
      {
        destinationTextureCopy4 = texture;
        MTLReportFailure();
      }

      objc_msgSend_textureType(secondaryTexture, v40, v41, destinationTextureCopy4, v85);
      if (objc_msgSend_textureType(secondaryTexture, v42, v43) != 2 && MTLReportFailureTypeEnabled())
      {
        destinationTextureCopy4 = secondaryTexture;
        MTLReportFailure();
      }
    }

    v44 = v22 & 0x3FF;
    if ((~v100 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      destinationTextureCopy4 = texture;
      v85 = v16 & 0x3FF;
      MTLReportFailure();
    }

    if ((~v99 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      destinationTextureCopy4 = secondaryTexture;
      v85 = v44;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x40) == 0 && (v100 & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
    {
      destinationTextureCopy4 = texture;
      v85 = v16 & 0x3FF;
      MTLReportFailure();
    }

    v45 = v28 & 0x3FF;
    if ((self->_checkFlags & 0x80) == 0 && (v99 & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
    {
      destinationTextureCopy4 = secondaryTexture;
      v85 = v44;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x100) == 0 && (v98 & 0x40000000000) != 0 && MTLReportFailureTypeEnabled())
    {
      destinationTextureCopy4 = destinationTexture;
      v85 = v45;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 4) != 0 && (v100 & 0x80000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      destinationTextureCopy4 = texture;
      v85 = v16 & 0x3FF;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x10) != 0 && (v99 & 0x80000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      destinationTextureCopy4 = secondaryTexture;
      v85 = v44;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 0x200) == 0)
    {
      objc_msgSend_textureType(destinationTexture, v34, v35);
      if (objc_msgSend_textureType(destinationTexture, v46, v47) != 2 && MTLReportFailureTypeEnabled())
      {
        destinationTextureCopy4 = destinationTexture;
        MTLReportFailure();
      }

      if (v96 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    if ((~v98 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      destinationTextureCopy4 = destinationTexture;
      v85 = v45;
      MTLReportFailure();
    }

    if ((v98 & 0x200000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      destinationTextureCopy4 = destinationTexture;
      v85 = v45;
      MTLReportFailure();
    }

    if ((self->_checkFlags & 2) == 0 && ((v100 ^ v98) & 0xF0000000) != 0 && MTLReportFailureTypeEnabled())
    {
      v77 = v100 >> 28;
      v78 = v98 >> 28;
      v79 = objc_opt_class();
      v85 = v78;
      v86 = NSStringFromClass(v79);
      destinationTextureCopy4 = v77;
      MTLReportFailure();
    }

    if (texture == destinationTexture || (objc_msgSend_isEqual_(texture, v34, destinationTexture), objc_msgSend_isEqual_(texture, v48, destinationTexture)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v50 = objc_opt_class();
        destinationTextureCopy4 = NSStringFromClass(v50);
        MTLReportFailure();
      }
    }

    if (secondaryTexture == destinationTexture || (objc_msgSend_isEqual_(secondaryTexture, v49, destinationTexture), objc_msgSend_isEqual_(secondaryTexture, v51, destinationTexture)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v52 = objc_opt_class();
        destinationTextureCopy4 = NSStringFromClass(v52);
        MTLReportFailure();
      }
    }

    if ((self->_checkFlags & 0x40000) == 0)
    {
      if (self->_primaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
      {
        v80 = objc_opt_class();
        destinationTextureCopy4 = NSStringFromClass(v80);
        MTLReportFailure();
      }

      if (self->_secondaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
      {
        v81 = objc_opt_class();
        destinationTextureCopy4 = NSStringFromClass(v81);
        MTLReportFailure();
      }
    }
  }

  if (v97 && *(&v96 + 1))
  {
    *&v88[24] = v95;
    *v88 = &v100;
    *&v88[8] = &v99;
    *&v88[16] = &v98;
    *&v88[40] = v96;
    v89 = v97;
    v90 = *&self->_primaryOffset.x;
    z = self->_primaryOffset.z;
    v92 = *&self->_secondaryOffset.x;
    v93 = self->_secondaryOffset.z;
    encoderCopy2 = encoder;
    if (encoder)
    {
      if ((*(&self->super.super.isa + v36) & 8) != 0)
      {
        v73 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
        if (!v73)
        {
          v74 = objc_opt_class();
          v75 = NSStringFromClass(v74);
          encoderCopy2 = encoder;
          v73 = v75;
        }

        v76 = encoderCopy2;
        objc_msgSend_pushDebugGroup_(encoderCopy2, encoderCopy2, v73, destinationTextureCopy4, v85, v86);
        v54 = v76;
      }

      else
      {
        v54 = 0;
      }

      (self->_encode)(self->_encodeData);
      if (v54)
      {
        objc_msgSend_popDebugGroup(v54, v55, v56);
      }
    }

    else
    {
      v57 = objc_alloc(MEMORY[0x277CD7210]);
      v60 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v57, v58, buffer, 0);
      v94.width = v60;
      v94.height = self;
      if ((*(&self->super.super.isa + v36) & 0x18) != 0)
      {
        v61 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
        if (v61 || (v62 = objc_opt_class(), v63 = NSStringFromClass(v62), objc_msgSend_setLabel_(self, v64, v63), (v61 = v63) != 0))
        {
          objc_msgSend_setLabel_(v60, v59, v61, destinationTextureCopy4, v85, v86);
        }
      }

      if ((*(&self->super.super.isa + v36) & 8) != 0)
      {
        v82 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
        if (!v82)
        {
          v83 = objc_opt_class();
          v82 = NSStringFromClass(v83);
        }

        objc_msgSend_pushDebugGroup_(v60, v59, v82, destinationTextureCopy4);
        v65 = v60;
      }

      else
      {
        v65 = 0;
      }

      (self->_encode)(self->_encodeData, v60, buffer, texture, secondaryTexture, destinationTexture, v88);
      if (v65)
      {
        objc_msgSend_popDebugGroup(v65, v66, v67);
      }

      objc_msgSend_endEncoding(v60, v66, v67, destinationTextureCopy4);
    }
  }
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryImage:(id)image secondaryImage:(id)secondaryImage destinationImage:(id)destinationImage
{
  v11 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v11) & 1) == 0)
  {
    if (!buffer)
    {
      encoderCopy = encoder;
      v26 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy;
      buffer = 0;
      if (v26)
      {
        v27 = objc_opt_class();
        v88 = NSStringFromClass(v27);
        MTLReportFailure();
        encoder = encoderCopy;
        buffer = 0;
      }
    }

    if (!image)
    {
      bufferCopy = buffer;
      encoderCopy2 = encoder;
      v30 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy2;
      buffer = bufferCopy;
      if (v30)
      {
        v31 = objc_opt_class();
        v88 = NSStringFromClass(v31);
        MTLReportFailure();
        encoder = encoderCopy2;
        buffer = bufferCopy;
      }
    }

    if (!secondaryImage)
    {
      bufferCopy2 = buffer;
      encoderCopy3 = encoder;
      v34 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy3;
      buffer = bufferCopy2;
      if (v34)
      {
        v35 = objc_opt_class();
        v88 = NSStringFromClass(v35);
        MTLReportFailure();
        encoder = encoderCopy3;
        buffer = bufferCopy2;
      }
    }

    if (!destinationImage)
    {
      bufferCopy3 = buffer;
      encoderCopy4 = encoder;
      v38 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy4;
      buffer = bufferCopy3;
      if (v38)
      {
        v39 = objc_opt_class();
        v88 = NSStringFromClass(v39);
        MTLReportFailure();
        encoder = encoderCopy4;
        buffer = bufferCopy3;
      }
    }

    v12 = *MEMORY[0x277CD7348];
    if ((*(&self->super.super.isa + v11) & ~*(&self->super.super.isa + v12)) != 0)
    {
      bufferCopy4 = buffer;
      encoderCopy5 = encoder;
      v42 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy5;
      buffer = bufferCopy4;
      if (v42)
      {
        v43 = objc_opt_class();
        v88 = NSStringFromClass(v43);
        destinationImageCopy2 = *(&self->super.super.isa + v11) & ~*(&self->super.super.isa + v12);
        MTLReportFailure();
        encoder = encoderCopy5;
        buffer = bufferCopy4;
      }
    }

    if ((self->_checkFlags & 0x800) == 0)
    {
      v13 = MEMORY[0x277CD72F8];
      if (*(image + *MEMORY[0x277CD72F8]) >= 5uLL)
      {
        bufferCopy5 = buffer;
        encoderCopy6 = encoder;
        v58 = MTLReportFailureTypeEnabled();
        encoder = encoderCopy6;
        buffer = bufferCopy5;
        if (v58)
        {
          v59 = objc_opt_class();
          v88 = NSStringFromClass(v59);
          destinationImageCopy2 = image;
          MTLReportFailure();
          encoder = encoderCopy6;
          buffer = bufferCopy5;
        }
      }

      if (*(secondaryImage + *v13) >= 5uLL)
      {
        bufferCopy6 = buffer;
        encoderCopy7 = encoder;
        v62 = MTLReportFailureTypeEnabled();
        encoder = encoderCopy7;
        buffer = bufferCopy6;
        if (v62)
        {
          v63 = objc_opt_class();
          v88 = NSStringFromClass(v63);
          destinationImageCopy2 = secondaryImage;
          MTLReportFailure();
          encoder = encoderCopy7;
          buffer = bufferCopy6;
        }
      }

      if (*(destinationImage + *v13) >= 5uLL)
      {
        bufferCopy7 = buffer;
        encoderCopy8 = encoder;
        v66 = MTLReportFailureTypeEnabled();
        encoder = encoderCopy8;
        buffer = bufferCopy7;
        if (v66)
        {
          v67 = objc_opt_class();
          v88 = NSStringFromClass(v67);
          destinationImageCopy2 = destinationImage;
          MTLReportFailure();
          encoder = encoderCopy8;
          buffer = bufferCopy7;
        }
      }
    }

    v14 = MEMORY[0x277CD72F0];
    if (*(image + *MEMORY[0x277CD72F0]) == 5)
    {
      bufferCopy8 = buffer;
      encoderCopy9 = encoder;
      v46 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy9;
      buffer = bufferCopy8;
      if (v46)
      {
        v47 = objc_opt_class();
        v88 = NSStringFromClass(v47);
        MTLReportFailure();
        encoder = encoderCopy9;
        buffer = bufferCopy8;
      }
    }

    if (*(secondaryImage + *v14) == 5)
    {
      bufferCopy9 = buffer;
      encoderCopy10 = encoder;
      v50 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy10;
      buffer = bufferCopy9;
      if (v50)
      {
        v51 = objc_opt_class();
        v88 = NSStringFromClass(v51);
        MTLReportFailure();
        encoder = encoderCopy10;
        buffer = bufferCopy9;
      }
    }

    if (*(destinationImage + *v14) == 5)
    {
      bufferCopy10 = buffer;
      encoderCopy11 = encoder;
      v54 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy11;
      buffer = bufferCopy10;
      if (v54)
      {
        v55 = objc_opt_class();
        v88 = NSStringFromClass(v55);
        MTLReportFailure();
        encoder = encoderCopy11;
        buffer = bufferCopy10;
      }
    }
  }

  if (image && secondaryImage && destinationImage)
  {
    encoderCopy12 = encoder;
    bufferCopy11 = buffer;
    v15 = *MEMORY[0x277CD7320];
    v16 = (image + v15);
    v17 = (secondaryImage + v15);
    v18 = (destinationImage + v15);
    v19 = *(image + v15 + 56);
    v20 = *(secondaryImage + v15 + 56);
    v93 = v20;
    if ((*(&self->super.super.isa + v11) & 1) == 0)
    {
      v21 = MEMORY[0x277CD7490];
      if ((*(image + v15 + 56) & 1) != 0 && !*(image + *MEMORY[0x277CD7490]))
      {
        v84 = MTLReportFailureTypeEnabled();
        v20 = v93;
        if (v84)
        {
          v85 = objc_opt_class();
          v88 = NSStringFromClass(v85);
          destinationImageCopy2 = image;
          MTLReportFailure();
          v20 = v93;
        }
      }

      if ((v20 & 1) != 0 && !*(secondaryImage + *v21) && MTLReportFailureTypeEnabled())
      {
        v86 = objc_opt_class();
        v88 = NSStringFromClass(v86);
        destinationImageCopy2 = secondaryImage;
        MTLReportFailure();
      }

      if ((v18[7] & 1) != 0 && !*(destinationImage + *v21) && MTLReportFailureTypeEnabled())
      {
        v87 = objc_opt_class();
        v88 = NSStringFromClass(v87);
        destinationImageCopy2 = destinationImage;
        MTLReportFailure();
      }
    }

    explicit = atomic_load_explicit(v16, memory_order_acquire);
    if (explicit)
    {
      v23 = atomic_load_explicit(v17, memory_order_acquire);
      if (v23)
      {
        goto LABEL_26;
      }
    }

    else
    {
      MPSAutoTexture::AllocateTexture(v16, 0);
      explicit = atomic_load_explicit(v16, memory_order_acquire);
      v23 = atomic_load_explicit(v17, memory_order_acquire);
      if (v23)
      {
LABEL_26:
        v24 = atomic_load_explicit(v18, memory_order_acquire);
        if (v24)
        {
          goto LABEL_27;
        }

        goto LABEL_31;
      }
    }

    MPSAutoTexture::AllocateTexture(v17, 0);
    v23 = atomic_load_explicit(v17, memory_order_acquire);
    v24 = atomic_load_explicit(v18, memory_order_acquire);
    if (v24)
    {
LABEL_27:
      if (*(&self->super.super.isa + v11))
      {
        goto LABEL_35;
      }

LABEL_32:
      if (!explicit)
      {
        v68 = v24;
        v69 = MTLReportFailureTypeEnabled();
        v24 = v68;
        if (v69)
        {
          v70 = objc_opt_class();
          v88 = NSStringFromClass(v70);
          destinationImageCopy2 = objc_msgSend_debugDescription(image, v71, v72);
          MTLReportFailure();
          v24 = v68;
        }
      }

      if (!v23)
      {
        v73 = v24;
        v74 = MTLReportFailureTypeEnabled();
        v24 = v73;
        if (v74)
        {
          v75 = objc_opt_class();
          v88 = NSStringFromClass(v75);
          destinationImageCopy2 = objc_msgSend_debugDescription(secondaryImage, v76, v77);
          MTLReportFailure();
          v24 = v73;
        }
      }

      if (!v24)
      {
        v78 = MTLReportFailureTypeEnabled();
        v24 = 0;
        if (v78)
        {
          v79 = objc_opt_class();
          v80 = NSStringFromClass(v79);
          v90 = objc_msgSend_debugDescription(destinationImage, v81, v82);
          MTLReportFailure();
          objc_msgSend_encodeToCommandEncoder_commandBuffer_primaryTexture_secondaryTexture_destinationTexture_(self, v83, encoderCopy12, bufferCopy11, explicit, v23, 0, v80, v90);
          goto LABEL_36;
        }
      }

LABEL_35:
      objc_msgSend_encodeToCommandEncoder_commandBuffer_primaryTexture_secondaryTexture_destinationTexture_(self, a2, encoderCopy12, bufferCopy11, explicit, v23, v24, v88, destinationImageCopy2);
LABEL_36:
      if (v19)
      {
        MPSDecrementReadCount(image);
      }

      if (v93)
      {

        MPSDecrementReadCount(secondaryImage);
      }

      return;
    }

LABEL_31:
    MPSAutoTexture::AllocateTexture(v18, 0);
    v24 = atomic_load_explicit(v18, memory_order_acquire);
    if (*(&self->super.super.isa + v11))
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }
}

- (MPSRegion)primarySourceRegionForDestinationSize:(SEL)size
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
  *&retstr->origin.x = vcvtq_f64_s64(*&self->_primaryOffset.x);
  retstr->origin.z = self->_primaryOffset.z;
  *&retstr->size.width = vcvtq_f64_u64(*(&v11[1] + 8));
  retstr->size.depth = v11[2].u64[1];
  return result;
}

- (MPSRegion)secondarySourceRegionForDestinationSize:(SEL)size
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
  *&retstr->origin.x = vcvtq_f64_s64(*&self->_secondaryOffset.x);
  retstr->origin.z = self->_secondaryOffset.z;
  *&retstr->size.width = vcvtq_f64_u64(*(&v11[1] + 8));
  retstr->size.depth = v11[2].u64[1];
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 1) = 1;
  v19.receiver = self;
  v19.super_class = MPSBinaryImageKernel;
  [(MPSKernel *)&v19 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_primaryOffset.x, @"MPSImageBinaryKernel.offset1.x");
  objc_msgSend_encodeInt64_forKey_(coder, v6, self->_primaryOffset.y, @"MPSImageBinaryKernel.offset1.y");
  objc_msgSend_encodeInt64_forKey_(coder, v7, self->_primaryOffset.z, @"MPSImageBinaryKernel.offset1.z");
  objc_msgSend_encodeInt64_forKey_(coder, v8, self->_secondaryOffset.x, @"MPSImageBinaryKernel.offset2.x");
  objc_msgSend_encodeInt64_forKey_(coder, v9, self->_secondaryOffset.y, @"MPSImageBinaryKernel.offset2.y");
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_secondaryOffset.z, @"MPSImageBinaryKernel.offset2.z");
  objc_msgSend_encodeInt64_forKey_(coder, v11, self->_clipRect.origin.x, @"MPSImageBinaryKernel.clipRect.origin.x");
  objc_msgSend_encodeInt64_forKey_(coder, v12, self->_clipRect.origin.y, @"MPSImageBinaryKernel.clipRect.origin.y");
  objc_msgSend_encodeInt64_forKey_(coder, v13, self->_clipRect.origin.z, @"MPSImageBinaryKernel.clipRect.origin.z");
  objc_msgSend_encodeInt64_forKey_(coder, v14, self->_clipRect.size.width, @"MPSImageBinaryKernel.clipRect.size.width");
  objc_msgSend_encodeInt64_forKey_(coder, v15, self->_clipRect.size.height, @"MPSImageBinaryKernel.clipRect.size.height");
  objc_msgSend_encodeInt64_forKey_(coder, v16, self->_clipRect.size.depth, @"MPSImageBinaryKernel.clipRect.size.depth");
  objc_msgSend_encodeInt64_forKey_(coder, v17, self->_primaryEdgeMode, @"MPSImageBinaryKernel.edgeMode1");
  objc_msgSend_encodeInt64_forKey_(coder, v18, self->_secondaryEdgeMode, @"MPSImageBinaryKernel.edgeMode2");
}

- (MPSBinaryImageKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v23.receiver = self;
  v23.super_class = MPSBinaryImageKernel;
  v5 = [(MPSKernel *)&v23 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 1) << 8 == 256)
  {
    v5->_primaryOffset.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSImageBinaryKernel.offset1.x");
    v7->_primaryOffset.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v8, @"MPSImageBinaryKernel.offset1.y");
    v7->_primaryOffset.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v9, @"MPSImageBinaryKernel.offset1.z");
    v7->_secondaryOffset.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v10, @"MPSImageBinaryKernel.offset2.x");
    v7->_secondaryOffset.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v11, @"MPSImageBinaryKernel.offset2.y");
    v7->_secondaryOffset.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v12, @"MPSImageBinaryKernel.offset2.z");
    v7->_clipRect.origin.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v13, @"MPSImageBinaryKernel.clipRect.origin.x");
    v7->_clipRect.origin.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v14, @"MPSImageBinaryKernel.clipRect.origin.y");
    v7->_clipRect.origin.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v15, @"MPSImageBinaryKernel.clipRect.origin.z");
    v7->_clipRect.size.width = objc_msgSend_decodeInt64ForKey_(aDecoder, v16, @"MPSImageBinaryKernel.clipRect.size.width");
    v7->_clipRect.size.height = objc_msgSend_decodeInt64ForKey_(aDecoder, v17, @"MPSImageBinaryKernel.clipRect.size.height");
    v7->_clipRect.size.depth = objc_msgSend_decodeInt64ForKey_(aDecoder, v18, @"MPSImageBinaryKernel.clipRect.size.depth");
    v7->_primaryEdgeMode = objc_msgSend_decodeInt64ForKey_(aDecoder, v19, @"MPSImageBinaryKernel.edgeMode1");
    v7->_secondaryEdgeMode = objc_msgSend_decodeInt64ForKey_(aDecoder, v20, @"MPSImageBinaryKernel.edgeMode2");
    v7->_checkFlags = 1;
    v7->_encode = 0;
    v7->_encodeData = 0;
    v7->_preferredTileSize = 0;
    return v7;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v22 = objc_opt_class();
    NSStringFromClass(v22);
    MTLReportFailure();
  }

  return 0;
}

- (void)setPrimaryOffset:(MPSOffset *)primaryOffset
{
  z = primaryOffset->z;
  *&self->_primaryOffset.x = *&primaryOffset->x;
  self->_primaryOffset.z = z;
}

- (void)setSecondaryOffset:(MPSOffset *)secondaryOffset
{
  z = secondaryOffset->z;
  *&self->_secondaryOffset.x = *&secondaryOffset->x;
  self->_secondaryOffset.z = z;
}

- (MTLRegion)clipRect
{
  v3 = *&self[2].origin.y;
  *&retstr->origin.x = *&self[1].size.depth;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[2].size.width;
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