@interface MPSImageScreenTelemetry
- ($1C75447F214D9465CD650DD956230C7F)sourceRegion;
- (MPSImageScreenTelemetry)initWithCoder:(id)coder device:(id)device;
- (MPSImageScreenTelemetry)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationBuffer:(id)destinationBuffer destinationOffset:(unint64_t)offset;
- (void)encodeWithCoder:(id)coder;
- (void)setSourceRegion:(id *)region;
@end

@implementation MPSImageScreenTelemetry

- (MPSImageScreenTelemetry)initWithDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSImageScreenTelemetry;
  result = [(MPSUnaryImageKernel *)&v6 initWithDevice:device];
  if (result)
  {
    result->_zoneWidth = 16;
    result->_zoneHeight = 16;
    result->_numberOfZonesInX = 1;
    result->_numberOfZonesInY = 1;
    v5 = *(MEMORY[0x277CD7200] + 16);
    v4 = *(MEMORY[0x277CD7200] + 32);
    *&result->_sourceRegion.origin.x = *MEMORY[0x277CD7200];
    *&result->_sourceRegion.origin.z = v5;
    *&result->_sourceRegion.size.height = v4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSImageScreenTelemetry;
  result = [(MPSUnaryImageKernel *)&v8 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 26) = self->_zoneWidth;
    *(result + 27) = self->_zoneHeight;
    v7 = *&self->_sourceRegion.origin.z;
    v6 = *&self->_sourceRegion.size.height;
    *(result + 15) = *&self->_sourceRegion.origin.x;
    *(result + 16) = v7;
    *(result + 17) = v6;
    *(result + 28) = self->_numberOfZonesInX;
    *(result + 29) = self->_numberOfZonesInY;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSImageScreenTelemetry;
  [(MPSKernel *)&v2 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = MPSImageScreenTelemetry;
  v4 = [(MPSUnaryImageKernel *)&v7 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tzoneWidth: %lu zoneHeight: %lu\n", v4, self->_zoneWidth, self->_zoneHeight);
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v13.receiver = self;
  v13.super_class = MPSImageScreenTelemetry;
  [(MPSUnaryImageKernel *)&v13 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, selfCopy[26], @"MPSImageScreenTelemetry.zoneWidth");
  objc_msgSend_encodeInt64_forKey_(coder, v6, selfCopy[27], @"MPSImageScreenTelemetry.zoneHeight");
  objc_msgSend_encodeInt64_forKey_(coder, v7, selfCopy[28], @"MPSImageScreenTelemetry.numberOfZonesInX");
  objc_msgSend_encodeInt64_forKey_(coder, v8, selfCopy[29], @"MPSImageScreenTelemetry.numberOfZonesInY");
  selfCopy += 30;
  objc_msgSend_encodeInt64_forKey_(coder, v9, *selfCopy, @"MPSImageScreenTelemetry.sourceRectOriginX");
  objc_msgSend_encodeInt64_forKey_(coder, v10, selfCopy[1], @"MPSImageScreenTelemetry.sourceRectOriginY");
  objc_msgSend_encodeInt64_forKey_(coder, v11, selfCopy[3], @"MPSImageScreenTelemetry.sourceRectWidth");
  objc_msgSend_encodeInt64_forKey_(coder, v12, selfCopy[4], @"MPSImageScreenTelemetry.sourceRectHeight");
}

- (MPSImageScreenTelemetry)initWithCoder:(id)coder device:(id)device
{
  v17.receiver = self;
  v17.super_class = MPSImageScreenTelemetry;
  v5 = [(MPSUnaryImageKernel *)&v17 initWithCoder:coder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_zoneWidth = objc_msgSend_decodeInt64ForKey_(coder, v6, @"MPSImageScreenTelemetry.zoneWidth");
    v7->_zoneHeight = objc_msgSend_decodeInt64ForKey_(coder, v8, @"MPSImageScreenTelemetry.zoneHeight");
    v7->_numberOfZonesInX = objc_msgSend_decodeInt64ForKey_(coder, v9, @"MPSImageScreenTelemetry.numberOfZonesInX");
    v7->_numberOfZonesInY = objc_msgSend_decodeInt64ForKey_(coder, v10, @"MPSImageScreenTelemetry.numberOfZonesInY");
    v7->_sourceRegion.origin.x = objc_msgSend_decodeInt64ForKey_(coder, v11, @"MPSImageScreenTelemetry.sourceRectOriginX");
    v7->_sourceRegion.origin.y = objc_msgSend_decodeInt64ForKey_(coder, v12, @"MPSImageScreenTelemetry.sourceRectOriginY");
    v7->_sourceRegion.size.width = objc_msgSend_decodeInt64ForKey_(coder, v13, @"MPSImageScreenTelemetry.sourceRectWidth");
    v7->_sourceRegion.size.height = objc_msgSend_decodeInt64ForKey_(coder, v14, @"MPSImageScreenTelemetry.sourceRectHeight");
    return v7;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v16 = objc_opt_class();
    NSStringFromClass(v16);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationBuffer:(id)destinationBuffer destinationOffset:(unint64_t)offset
{
  v9 = *MEMORY[0x277CD7350];
  v10 = MEMORY[0x277CD7378];
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    v11 = *(&self->super.super.super.isa + v9);
    v12 = objc_msgSend_pixelFormat(texture, a2, buffer);
    PixelInfo = MPSDevice::GetPixelInfo(v11, v12, MPSImageFeatureChannelFormatNone);
    if (!texture && MTLReportFailureTypeEnabled())
    {
      v102 = objc_opt_class();
      v104 = NSStringFromClass(v102);
      MTLReportFailure();
    }

    if (!destinationBuffer && MTLReportFailureTypeEnabled())
    {
      v103 = objc_opt_class();
      v104 = NSStringFromClass(v103);
      MTLReportFailure();
    }

    objc_msgSend_textureType(texture, v13, v14, v104);
    if (objc_msgSend_textureType(texture, v16, v17) != 2 && MTLReportFailureTypeEnabled())
    {
      textureCopy2 = texture;
      MTLReportFailure();
    }

    if ((~PixelInfo & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      textureCopy2 = texture;
      offsetCopy = v12;
      MTLReportFailure();
    }

    memset(&v123, 0, sizeof(v123));
    objc_msgSend_sourceRegion(self, v18, v19, textureCopy2, offsetCopy);
    memset(&v122, 0, sizeof(v122));
    v121.width = objc_msgSend_width(texture, v20, v21);
    v121.height = objc_msgSend_height(texture, v22, v23);
    v121.depth = 1;
    v120 = v123;
    MPSGetEffectiveClipRegion(&v122, &v121, &v120);
    objc_msgSend_width(texture, v24, v25);
    v26 = v122.size.width + v122.origin.x;
    if (v26 > objc_msgSend_width(texture, v27, v28) && MTLReportFailureTypeEnabled())
    {
      v106 = v122.size.width + v122.origin.x;
      v109 = objc_msgSend_width(texture, v29, v30);
      MTLReportFailure();
    }

    objc_msgSend_height(texture, v29, v30, v106, v109);
    v31 = v122.size.height + v122.origin.y;
    if (v31 > objc_msgSend_height(texture, v32, v33) && MTLReportFailureTypeEnabled())
    {
      v107 = v122.size.height + v122.origin.y;
      v110 = objc_msgSend_height(texture, v34, v35);
      MTLReportFailure();
    }

    if (!v122.size.width && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (!v122.size.height && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((offset & 3) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v36 = objc_msgSend_numberOfZonesInX(self, v34, v35, v107, v110);
    v39 = 16 * v36 * objc_msgSend_numberOfZonesInY(self, v37, v38) + 16;
    objc_msgSend_length(destinationBuffer, v40, v41);
    if (v39 + offset > objc_msgSend_length(destinationBuffer, v42, v43) && MTLReportFailureTypeEnabled())
    {
      v104 = v39;
      offsetCopy = offset;
      MTLReportFailure();
    }
  }

  offsetCopy2 = offset;
  memset(&v123, 0, sizeof(v123));
  v44 = objc_msgSend_width(texture, a2, buffer, v104, offsetCopy);
  v47 = objc_msgSend_height(texture, v45, v46);
  v120.origin.x = v44;
  v120.origin.y = v47;
  v120.origin.z = 1;
  v48 = *&self->_sourceRegion.origin.z;
  *&v122.origin.x = *&self->_sourceRegion.origin.x;
  v49 = *&self->_sourceRegion.size.height;
  *&v122.origin.z = v48;
  *&v122.size.height = v49;
  MPSGetEffectiveClipRegion(&v123, &v120, &v122);
  if (v123.size.height && v123.size.width)
  {
    v111 = v9;
    MEMORY[0x23EE7BAC0](&v120, buffer, 0);
    v50 = objc_alloc(MEMORY[0x277CD7210]);
    v53 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v50, v51, buffer, 0);
    v118 = v53;
    selfCopy = self;
    if ((*(&self->super.super.super.isa + *v10) & 0x18) != 0)
    {
      v54 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
      if (v54 || (v55 = objc_opt_class(), v54 = NSStringFromClass(v55), objc_msgSend_setLabel_(self, v56, v54), v54))
      {
        objc_msgSend_setLabel_(v53, v52, v54);
      }
    }

    numberOfZonesInX = self->_numberOfZonesInX;
    width = v123.size.width;
    height = v123.size.height;
    numberOfZonesInY = self->_numberOfZonesInY;
    zoneWidth = self->_zoneWidth;
    zoneHeight = self->_zoneHeight;
    TempBuffer = MPSAutoCache::GetTempBuffer(&v120, 16 * numberOfZonesInY * numberOfZonesInX, 0);
    MPSGetUShortDivisorMagicNumber();
    v63 = vmovn_s64(*&self->_sourceRegion.origin.x);
    WORD1(v121.width) = v63.i16[2];
    LOWORD(v121.width) = v63.i16[0];
    HIWORD(v121.width) = (height + numberOfZonesInY - 1) / numberOfZonesInY;
    WORD2(v121.width) = (width + numberOfZonesInX - 1) / numberOfZonesInX;
    LOWORD(v121.height) = zoneWidth;
    WORD1(v121.height) = zoneHeight;
    HIWORD(v121.height) = numberOfZonesInY;
    WORD2(v121.height) = numberOfZonesInX;
    WORD1(v121.depth) = v64;
    LOWORD(v121.depth) = v65;
    WORD2(v121.depth) = zoneHeight * zoneWidth;
    HIWORD(v121.depth) = numberOfZonesInY * numberOfZonesInX;
    ComputeState = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(v53, v67, ComputeState);
    MPSLibrary::ReleaseComputeState();
    v70 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v68, v69);
    if (v70 >= 0x100)
    {
      v73 = 256;
    }

    else
    {
      v73 = v70;
    }

    v74 = objc_msgSend_threadExecutionWidth(ComputeState, v71, v72);
    v76 = v73;
    if (((*(&self->super.super.super.isa + v111))[1476] & 0x40) != 0)
    {
      v76 = v73 / v74;
    }

    objc_msgSend_setTexture_atIndex_(v53, v75, texture, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v53, v77, destinationBuffer, offsetCopy2, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v53, v78, TempBuffer, 0, 1);
    objc_msgSend_setBytes_length_atIndex_(v53, v79, &v121, 24, 2);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v53, v80, 32 * v76, 0);
    v122.origin.x = numberOfZonesInX;
    v122.origin.y = numberOfZonesInY;
    v122.origin.z = 1;
    v116 = v73;
    v117 = vdupq_n_s64(1uLL);
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v53, v81, &v122, &v116);
    v82 = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(v53, v83, v82);
    MPSLibrary::ReleaseComputeState();
    v86 = objc_msgSend_maxTotalThreadsPerThreadgroup(v82, v84, v85);
    if (v86 >= 0x200)
    {
      v88 = 512;
    }

    else
    {
      v88 = v86;
    }

    objc_msgSend_setBuffer_offset_atIndex_(v53, v87, destinationBuffer, offsetCopy2, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v53, v89, TempBuffer, 0, 1);
    objc_msgSend_setBytes_length_atIndex_(v53, v90, &v121, 24, 2);
    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v53, v91, 16 * v88, 0);
    *&v122.origin.x = vdupq_n_s64(1uLL);
    v122.origin.z = 1;
    v116 = v88;
    v117 = *&v122.origin.x;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v53, v92, &v122, &v116);
    if (destinationBuffer)
    {
      v95 = objc_msgSend_userDictionary(buffer, v93, v94);
      v97 = objc_msgSend_objectForKey_(v95, v96, @"_MPSCommandBufferRetainListKey");
      if (!v97)
      {
        v99 = objc_alloc_init(MEMORY[0x277CBEB18]);
        objc_msgSend_setObject_forKey_(v95, v100, v99, @"_MPSCommandBufferRetainListKey");

        v122.origin.x = MEMORY[0x277D85DD0];
        v122.origin.y = 3221225472;
        v122.origin.z = sub_23993DAA4;
        v122.size.width = &unk_278AC37A8;
        v122.size.height = @"_MPSCommandBufferRetainListKey";
        objc_msgSend_addCompletedHandler_(buffer, v101, &v122);
        v97 = v99;
      }

      objc_msgSend_addObject_(v97, v98, destinationBuffer);
    }

    objc_msgSend_endEncoding(v53, v93, v94);

    MPSAutoCache::~MPSAutoCache(&v120);
  }
}

- ($1C75447F214D9465CD650DD956230C7F)sourceRegion
{
  v3 = *&self[5].var0.var2;
  *&retstr->var0.var0 = *&self[5].var0.var0;
  *&retstr->var0.var2 = v3;
  *&retstr->var1.var1 = *&self[5].var1.var1;
  return self;
}

- (void)setSourceRegion:(id *)region
{
  v4 = *&region->var0.var2;
  v3 = *&region->var1.var1;
  *&self->_sourceRegion.origin.x = *&region->var0.var0;
  *&self->_sourceRegion.origin.z = v4;
  *&self->_sourceRegion.size.height = v3;
}

@end