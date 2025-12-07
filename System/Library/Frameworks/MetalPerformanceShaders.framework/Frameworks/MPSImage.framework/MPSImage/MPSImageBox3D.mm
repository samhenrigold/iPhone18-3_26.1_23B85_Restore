@interface MPSImageBox3D
+ (id)supportedPixelFormats;
- (MPSImageBox3D)initWithCoder:(id)coder device:(id)device;
- (MPSImageBox3D)initWithDevice:(id)device;
- (MPSImageBox3D)initWithDevice:(id)device kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height kernelDepth:(unint64_t)depth;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture;
@end

@implementation MPSImageBox3D

+ (id)supportedPixelFormats
{
  if (qword_280B15A00 != -1)
  {
    dispatch_once(&qword_280B15A00, &unk_284C6BAA8);
  }

  return qword_280B15A08;
}

- (MPSImageBox3D)initWithDevice:(id)device kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height kernelDepth:(unint64_t)depth
{
  v18.receiver = self;
  v18.super_class = MPSImageBox3D;
  v10 = [(MPSUnaryImageKernel *)&v18 initWithDevice:?];
  if (v10)
  {
    MPSDevice = MPSDevice::GetMPSDevice();
    if (width & height & depth)
    {
      if (width == height)
      {
        v12 = MPSDevice;
        v10->_kernelWidth = width;
        v10->_kernelHeight = width;
        v10->_kernelDepth = depth;
        v13 = [MPSImageBox alloc];
        v15 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(v13, v14, device, width, width);
        v10->_boxFilter = v15;
        objc_msgSend_setEdgeMode_(v15, v16, 0);
        v10->_supportsReadWriteTextures = (*(v12 + 1476) & 4) != 0;
        return v10;
      }

      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_9;
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
LABEL_9:
      MTLReportFailure();
    }

    return 0;
  }

  return v10;
}

- (MPSImageBox3D)initWithCoder:(id)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSImageBox3D;
  if ([(MPSUnaryImageKernel *)&v5 initWithCoder:coder device:device]&& MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSImageBox3D)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v6 = objc_opt_class();
    NSStringFromClass(v6);
    MTLReportFailure();
  }

  return objc_msgSend_initWithDevice_kernelWidth_kernelHeight_kernelDepth_(self, v5, device, 1, 1, 1);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSImageBox3D;
  [(MPSKernel *)&v3 dealloc];
}

- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture
{
  v7 = objc_msgSend_supportedPixelFormats(MPSImageBox3D, a2, buffer);
  v8 = MEMORY[0x277CCABB0];
  v11 = objc_msgSend_pixelFormat(texture, v9, v10);
  v13 = objc_msgSend_numberWithUnsignedInteger_(v8, v12, v11);
  objc_msgSend_containsObject_(v7, v14, v13);
  v17 = objc_msgSend_supportedPixelFormats(MPSImageBox3D, v15, v16);
  v18 = MEMORY[0x277CCABB0];
  textureCopy = texture;
  v21 = objc_msgSend_pixelFormat(texture, v19, v20);
  v23 = objc_msgSend_numberWithUnsignedInteger_(v18, v22, v21);
  if ((objc_msgSend_containsObject_(v17, v24, v23) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    textureCopy2 = texture;
    v233 = objc_msgSend_pixelFormat(texture, v25, v26);
    MTLReportFailure();
  }

  v27 = objc_msgSend_supportedPixelFormats(MPSImageBox3D, v25, v26, textureCopy2, v233);
  v28 = MEMORY[0x277CCABB0];
  v31 = objc_msgSend_pixelFormat(destinationTexture, v29, v30);
  v33 = objc_msgSend_numberWithUnsignedInteger_(v28, v32, v31);
  objc_msgSend_containsObject_(v27, v34, v33);
  v37 = objc_msgSend_supportedPixelFormats(MPSImageBox3D, v35, v36);
  v38 = MEMORY[0x277CCABB0];
  v41 = objc_msgSend_pixelFormat(destinationTexture, v39, v40);
  v43 = objc_msgSend_numberWithUnsignedInteger_(v38, v42, v41);
  if ((objc_msgSend_containsObject_(v37, v44, v43) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    destinationTextureCopy = destinationTexture;
    v234 = objc_msgSend_pixelFormat(destinationTexture, v45, v46);
    MTLReportFailure();
  }

  if (objc_msgSend_textureType(texture, v45, v46, destinationTextureCopy, v234) != 2)
  {
    objc_msgSend_textureType(texture, v47, v48);
  }

  if (objc_msgSend_textureType(texture, v47, v48) != 2 && objc_msgSend_textureType(texture, v49, v50) != 3 && MTLReportFailureTypeEnabled())
  {
    textureCopy3 = texture;
    MTLReportFailure();
  }

  objc_msgSend_textureType(destinationTexture, v49, v50, textureCopy3);
  objc_msgSend_textureType(texture, v51, v52);
  v55 = objc_msgSend_textureType(destinationTexture, v53, v54);
  if (v55 != objc_msgSend_textureType(texture, v56, v57) && MTLReportFailureTypeEnabled())
  {
    destinationTextureCopy2 = destinationTexture;
    MTLReportFailure();
  }

  v60 = objc_msgSend_width(texture, v58, v59, destinationTextureCopy2);
  if (v60 != objc_msgSend_width(destinationTexture, v61, v62) || (v65 = objc_msgSend_height(texture, v63, v64), v65 != objc_msgSend_height(destinationTexture, v66, v67)) || (v70 = objc_msgSend_arrayLength(texture, v68, v69), v70 != objc_msgSend_arrayLength(destinationTexture, v71, v72)))
  {
    if (MTLReportFailureTypeEnabled())
    {
      destinationTextureCopy3 = destinationTexture;
      textureCopy4 = texture;
      MTLReportFailure();
    }
  }

  destinationTextureCopy4 = destinationTexture;
  if (self->_kernelDepth < 2)
  {
    v236 = 0;
    destinationTextureCopy5 = destinationTexture;
    if (!self->_supportsReadWriteTextures)
    {
      goto LABEL_15;
    }

LABEL_26:
    textureCopy6 = texture;
    if (!objc_msgSend_arrayLength(texture, v73, v74, destinationTextureCopy3, textureCopy4))
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  v75 = MEMORY[0x277CD7058];
  v76 = objc_msgSend_pixelFormat(texture, v73, v74);
  v79 = objc_msgSend_width(texture, v77, v78);
  v82 = objc_msgSend_height(texture, v80, v81);
  v84 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v75, v83, v76, v79, v82, 0);
  v87 = objc_msgSend_textureType(texture, v85, v86);
  objc_msgSend_setTextureType_(v84, v88, v87);
  v91 = objc_msgSend_arrayLength(texture, v89, v90);
  objc_msgSend_setArrayLength_(v84, v92, v91);
  objc_msgSend_setUsage_(v84, v93, 19);
  objc_msgSend_setStorageMode_(v84, v94, 2);
  v236 = objc_msgSend_temporaryImageWithCommandBuffer_textureDescriptor_(MEMORY[0x277CD72A8], v95, buffer, v84);
  destinationTextureCopy5 = objc_msgSend_texture(v236, v96, v97);
  if (self->_supportsReadWriteTextures)
  {
    goto LABEL_26;
  }

LABEL_15:
  v98 = MEMORY[0x277CD7058];
  v99 = objc_msgSend_pixelFormat(texture, v73, v74, destinationTextureCopy3, textureCopy4);
  v102 = objc_msgSend_width(texture, v100, v101);
  v105 = objc_msgSend_height(texture, v103, v104);
  v107 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v98, v106, v99, v102, v105, 0);
  objc_msgSend_setUsage_(v107, v108, 3);
  objc_msgSend_setStorageMode_(v107, v109, 2);
  textureCopy6 = texture;
  v112 = objc_msgSend_temporaryImageWithCommandBuffer_textureDescriptor_(MEMORY[0x277CD72A8], v111, buffer, v107);
  v115 = objc_msgSend_arrayLength(textureCopy, v113, v114);
  objc_msgSend_setReadCount_(v112, v116, v115);
  v238 = objc_msgSend_texture(v112, v117, v118);
  if (!objc_msgSend_arrayLength(textureCopy, v119, v120))
  {
LABEL_23:
    if (v112)
    {
      objc_msgSend_setReadCount_(v112, v121, 0);
    }

    goto LABEL_33;
  }

  if (v112)
  {
    v123 = 0;
    do
    {
      v124 = objc_msgSend_pixelFormat(textureCopy, v121, v122);
      v126 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(textureCopy, v125, v124, 2, 0, 1, v123, 1);
      v129 = objc_msgSend_pixelFormat(destinationTextureCopy5, v127, v128);
      v131 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(destinationTextureCopy5, v130, v129, 2, 0, 1, v123, 1);
      objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(self->_boxFilter, v132, buffer, v126, v238);
      ComputeState = MPSLibrary::GetComputeState();
      v134 = objc_alloc(MEMORY[0x277CD7210]);
      v137 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v134, v135, buffer, 0);
      v250 = v137;
      selfCopy3 = self;
      if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
      {
        v138 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
        if (v138 || (v139 = objc_opt_class(), v140 = NSStringFromClass(v139), objc_msgSend_setLabel_(self, v141, v140), (v138 = v140) != 0))
        {
          objc_msgSend_setLabel_(v137, v136, v138);
        }
      }

      objc_msgSend_setComputePipelineState_(v137, v136, ComputeState);
      objc_msgSend_setTexture_atIndex_(v137, v142, v238, 0);
      objc_msgSend_setTexture_atIndex_(v137, v143, v131, 1);
      v249 = LODWORD(self->_kernelWidth) >> 1;
      objc_msgSend_setBytes_length_atIndex_(v137, v144, &v249, 4, 0);
      v147 = objc_msgSend_threadExecutionWidth(ComputeState, v145, v146);
      v150 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v148, v149);
      v153 = objc_msgSend_width(textureCopy, v151, v152);
      v156 = objc_msgSend_height(textureCopy, v154, v155);
      v246 = (v147 + v153 - 1) / v147;
      v247 = (v150 / v147 + v156 - 1) / (v150 / v147);
      v248 = 1;
      v243 = v147;
      v244 = v150 / v147;
      v245 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v137, v157, &v246, &v243);
      MPSLibrary::ReleaseComputeState();
      objc_msgSend_endEncoding(v137, v158, v159);

      ++v123;
    }

    while (v123 < objc_msgSend_arrayLength(textureCopy, v160, v161));
    goto LABEL_23;
  }

LABEL_27:
  v162 = 0;
  do
  {
    v163 = objc_msgSend_pixelFormat(textureCopy6, v121, v122);
    v165 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(textureCopy6, v164, v163, 2, 0, 1, v162, 1);
    v168 = objc_msgSend_pixelFormat(destinationTextureCopy5, v166, v167);
    v170 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(destinationTextureCopy5, v169, v168, 2, 0, 1, v162, 1);
    objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(self->_boxFilter, v171, buffer, v165, v170);
    v172 = MPSLibrary::GetComputeState();
    v173 = objc_alloc(MEMORY[0x277CD7210]);
    v176 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v173, v174, buffer, 0);
    v250 = v176;
    selfCopy3 = self;
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
    {
      v177 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
      if (v177 || (v178 = objc_opt_class(), v179 = NSStringFromClass(v178), objc_msgSend_setLabel_(self, v180, v179), (v177 = v179) != 0))
      {
        objc_msgSend_setLabel_(v176, v175, v177);
      }
    }

    objc_msgSend_setComputePipelineState_(v176, v175, v172);
    objc_msgSend_setTexture_atIndex_(v176, v181, v170, 0);
    v249 = LODWORD(self->_kernelWidth) >> 1;
    objc_msgSend_setBytes_length_atIndex_(v176, v182, &v249, 4, 0);
    v185 = objc_msgSend_threadExecutionWidth(v172, v183, v184);
    v188 = objc_msgSend_maxTotalThreadsPerThreadgroup(v172, v186, v187);
    v191 = objc_msgSend_width(textureCopy, v189, v190);
    v194 = objc_msgSend_height(textureCopy, v192, v193);
    v246 = (v185 + v191 - 1) / v185;
    v247 = (v188 / v185 + v194 - 1) / (v188 / v185);
    v248 = 1;
    v243 = v185;
    v244 = v188 / v185;
    v245 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v176, v195, &v246, &v243);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_endEncoding(v176, v196, v197);

    ++v162;
    textureCopy6 = textureCopy;
  }

  while (v162 < objc_msgSend_arrayLength(textureCopy, v198, v199));
LABEL_33:
  if (self->_kernelDepth >= 2)
  {
    v200 = MPSLibrary::GetComputeState();
    v201 = objc_alloc(MEMORY[0x277CD7210]);
    v204 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v201, v202, buffer, 0);
    v250 = v204;
    selfCopy3 = self;
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
    {
      v205 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
      if (v205 || (v206 = objc_opt_class(), v207 = NSStringFromClass(v206), objc_msgSend_setLabel_(self, v208, v207), (v205 = v207) != 0))
      {
        objc_msgSend_setLabel_(v204, v203, v205);
      }
    }

    objc_msgSend_setComputePipelineState_(v204, v203, v200);
    objc_msgSend_setTexture_atIndex_(v204, v209, destinationTextureCopy5, 0);
    objc_msgSend_setTexture_atIndex_(v204, v210, destinationTextureCopy4, 1);
    v249 = LODWORD(self->_kernelDepth) >> 1;
    objc_msgSend_setBytes_length_atIndex_(v204, v211, &v249, 4, 0);
    v214 = objc_msgSend_threadExecutionWidth(v200, v212, v213);
    v217 = objc_msgSend_maxTotalThreadsPerThreadgroup(v200, v215, v216);
    v220 = objc_msgSend_width(textureCopy6, v218, v219);
    v223 = objc_msgSend_height(textureCopy6, v221, v222);
    v246 = (v214 + v220 - 1) / v214;
    v247 = (v217 / v214 + v223 - 1) / (v217 / v214);
    v248 = 1;
    v243 = v214;
    v244 = v217 / v214;
    v245 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v204, v224, &v246, &v243);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_setReadCount_(v236, v225, 0);
    objc_msgSend_endEncoding(v204, v226, v227);
  }
}

@end