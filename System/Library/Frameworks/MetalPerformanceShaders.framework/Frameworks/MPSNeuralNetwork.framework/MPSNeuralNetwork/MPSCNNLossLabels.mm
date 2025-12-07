@interface MPSCNNLossLabels
- (MPSCNNLossLabels)init;
- (MPSCNNLossLabels)initWithDevice:(id)device labelsDescriptor:(MPSCNNLossDataDescriptor *)labelsDescriptor;
- (MPSCNNLossLabels)initWithDevice:(id)device lossImageSize:(MTLSize *)lossImageSize labelsDescriptor:(MPSCNNLossDataDescriptor *)labelsDescriptor weightsDescriptor:(MPSCNNLossDataDescriptor *)weightsDescriptor;
- (MPSCNNLossLabels)initWithDevice:(id)device lossImageSize:(MTLSize *)lossImageSize labelsImage:(MPSImage *)labelsImage weightsImage:(MPSImage *)weightsImage;
- (MPSImage)labelsImage;
- (MPSImage)lossImage;
- (MPSImage)weightsImage;
- (void)dealloc;
@end

@implementation MPSCNNLossLabels

- (MPSCNNLossLabels)init
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNLoss.mm", 0x169, @"Method unavailable. Use one of the available interfaces instead.\n", v2, v3, v4, v5);
  }

  return 0;
}

- (MPSCNNLossLabels)initWithDevice:(id)device labelsDescriptor:(MPSCNNLossDataDescriptor *)labelsDescriptor
{
  v7 = vdupq_n_s64(1uLL);
  v8 = 1;
  return objc_msgSend_initWithDevice_lossImageSize_labelsDescriptor_weightsDescriptor_(self, a2, device, &v7, labelsDescriptor, 0, v4, v5);
}

- (MPSCNNLossLabels)initWithDevice:(id)device lossImageSize:(MTLSize *)lossImageSize labelsDescriptor:(MPSCNNLossDataDescriptor *)labelsDescriptor weightsDescriptor:(MPSCNNLossDataDescriptor *)weightsDescriptor
{
  depth = lossImageSize->depth;
  p_lossImageSize = &self->_lossImageSize;
  *&self->_lossImageSize.width = *&lossImageSize->width;
  self->_lossImageSize.depth = depth;
  self->_isScalarLoss = 1;
  self->_hasStateWeights = 0;
  self->_numFeatureChannels_loss = 0;
  self->_numFeatureChannels_labels = 0;
  self->_userLabelsImage = 0;
  self->_userWeightsImage = 0;
  if (self->_lossImageSize.width > 1 || self->_lossImageSize.height > 1 || self->_lossImageSize.depth >= 2)
  {
    self->_isScalarLoss = 0;
  }

  data = labelsDescriptor->_data;
  layout = labelsDescriptor->_layout;
  width = labelsDescriptor->_size.width;
  height = labelsDescriptor->_size.height;
  v12 = labelsDescriptor->_size.depth;
  v13 = objc_alloc(MEMORY[0x277CBEA90]);
  v21 = objc_msgSend_bytes(data, v14, v15, v16, v17, v18, v19, v20);
  v316 = data;
  v29 = objc_msgSend_length(data, v22, v23, v24, v25, v26, v27, v28);
  v30 = v21;
  v31 = v12;
  self->_userData = objc_msgSend_initWithBytes_length_(v13, v32, v30, v29, v33, v34, v35, v36);
  v313 = layout;
  self->_userDataLayout = layout;
  self->_numFeatureChannels_labels = v12;
  v44 = p_lossImageSize->depth;
  self->_numFeatureChannels_loss = v44;
  if (!p_lossImageSize->width || !p_lossImageSize->height || !v44)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_18;
    }

    v65 = objc_opt_class();
    NSStringFromClass(v65);
    v63 = @"[%@ initWithDevice:lossImageSize:labelsDescriptor:weightsDescriptor:...] lossImageSize dimensions must be > 1";
    v64 = 413;
    goto LABEL_17;
  }

  if (!data)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_18;
    }

    v296 = objc_opt_class();
    NSStringFromClass(v296);
    v63 = @"[%@ initWithDevice:lossImageSize:labelsDescriptor:weightsDescriptor:...] labels must be valid";
    v64 = 415;
    goto LABEL_17;
  }

  bytesPerRow = labelsDescriptor->_bytesPerRow;
  bytesPerImage = labelsDescriptor->_bytesPerImage;
  v47 = objc_msgSend_length(v316, v37, v38, v39, v40, v41, v42, v43);
  if (!v47)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_18;
    }

    v297 = objc_opt_class();
    NSStringFromClass(v297);
    v63 = @"[%@ initWithDevice:lossImageSize:labelsDescriptor:weightsDescriptor:...] labels.length (%lu) is invalid";
    v64 = 418;
    goto LABEL_17;
  }

  if ((v47 & 3) != 0)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_18;
    }

    v298 = objc_opt_class();
    NSStringFromClass(v298);
    v63 = @"[%@ initWithDevice:lossImageSize:labelsDescriptor:weightsDescriptor:...] labels.length (%lu) is invalid (not a multiple of sizeof(float))";
    v64 = 419;
    goto LABEL_17;
  }

  v55 = height;
  v56 = width;
  v57 = 4 * width * height * v12;
  if (v57 < v47)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_18;
    }

    v299 = objc_opt_class();
    NSStringFromClass(v299);
    v63 = @"[%@ initWithDevice:lossImageSize:labelsDescriptor:weightsDescriptor:...] size of labels data ({%lu, %lu, %lu}) is invalid (must be >= labels.length (%lu))";
    v64 = 421;
    goto LABEL_17;
  }

  if (width < p_lossImageSize->width || height < p_lossImageSize->height || v12 < p_lossImageSize->depth)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_18;
    }

    v58 = objc_opt_class();
    NSStringFromClass(v58);
    v63 = @"[%@ initWithDevice:lossImageSize:labelsDescriptor:weightsDescriptor:...] size of labels data ({%lu, %lu, %lu}) is invalid (must be >= lossImageSize ({%lu %lu %lu}))";
    v64 = 423;
LABEL_17:
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNLoss.mm", v64, v63, v59, v60, v61, v62);
    goto LABEL_18;
  }

  if (weightsDescriptor)
  {
    v67 = weightsDescriptor->_data;
    if (!v67 || (objc_msgSend_bytes(weightsDescriptor->_data, v48, v49, v50, v51, v52, v53, v54), !objc_msgSend_bytes(v67, v68, v69, v70, v71, v72, v73, v74)))
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_18;
      }

      v87 = objc_opt_class();
      NSStringFromClass(v87);
      v63 = @"[%@ initWithDevice:lossImageSize:labelsDescriptor:weightsDescriptor:...] weightsDescriptor is specified, but the weights data is invalid";
      v64 = 434;
      goto LABEL_17;
    }

    v311 = bytesPerImage;
    if (weightsDescriptor->_size.width != width || weightsDescriptor->_size.height != height || weightsDescriptor->_size.depth != v12)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_18;
      }

      v300 = objc_opt_class();
      NSStringFromClass(v300);
      v63 = @"[%@ initWithDevice:lossImageSize:labelsDescriptor:weightsDescriptor:...] size of weights data ({%lu, %lu, %lu}) must match the size of labels data ({%lu, %lu, %lu})";
      v64 = 441;
      goto LABEL_17;
    }

    v310 = bytesPerRow;
    v82 = weightsDescriptor->_layout;
    v83 = weightsDescriptor->_bytesPerRow;
    v84 = weightsDescriptor->_bytesPerImage;
    v85 = objc_msgSend_length(v67, v75, v76, v77, v78, v79, v80, v81);
    if (!v85)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_18;
      }

      v301 = objc_opt_class();
      NSStringFromClass(v301);
      v63 = @"[%@ initWithDevice:lossImageSize:labelsDescriptor:weightsDescriptor:...] weights.length (%lu) is invalid";
      v64 = 447;
      goto LABEL_17;
    }

    v55 = height;
    v56 = width;
    if ((v85 & 3) != 0)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_18;
      }

      v302 = objc_opt_class();
      NSStringFromClass(v302);
      v63 = @"[%@ initWithDevice:lossImageSize:labelsDescriptor:weightsDescriptor:...] weights.length (%lu) is invalid (not a multiple of sizeof(float))";
      v64 = 448;
      goto LABEL_17;
    }

    if (v57 < v85)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_18;
      }

      v303 = objc_opt_class();
      NSStringFromClass(v303);
      v63 = @"[%@ initWithDevice:lossImageSize:labelsDescriptor:weightsDescriptor:...] size of weights data ({%lu, %lu, %lu}) is invalid (must be >= weights.length (%lu))";
      v64 = 450;
      goto LABEL_17;
    }

    if (width >= p_lossImageSize->width && height >= p_lossImageSize->height && v31 >= p_lossImageSize->depth)
    {
      v304 = v84;
      v305 = v83;
      v306 = v82;
      v307 = width;
      v308 = height;
      v309 = v31;
      goto LABEL_40;
    }

    if (MTLReportFailureTypeEnabled())
    {
      v86 = objc_opt_class();
      NSStringFromClass(v86);
      v63 = @"[%@ initWithDevice:lossImageSize:labelsDescriptor:weightsDescriptor:...] size of weights data ({%lu, %lu, %lu}) is invalid (must be >= lossImageSize ({%lu %lu %lu}))";
      v64 = 452;
      goto LABEL_17;
    }

LABEL_18:

    return 0;
  }

  v310 = bytesPerRow;
  v311 = bytesPerImage;
  v67 = 0;
  v306 = 0;
  v307 = 0;
  v308 = 0;
  v309 = 0;
  v304 = 0;
  v305 = 0;
LABEL_40:
  v88 = v31;
  v89 = objc_opt_new();
  v96 = v89;
  if (v31 + 3 <= 7)
  {
    objc_msgSend_setTextureType_(v89, v90, 2, v91, v92, v93, v94, v95);
  }

  else
  {
    objc_msgSend_setTextureType_(v89, v90, 3, v91, v92, v93, v94, v95);
  }

  v103 = 125;
  if (v31 == 2)
  {
    v103 = 105;
  }

  if (v31 == 1)
  {
    objc_msgSend_setPixelFormat_(v96, v97, 55, v98, v99, v100, v101, v102);
  }

  else
  {
    objc_msgSend_setPixelFormat_(v96, v97, v103, v98, v99, v100, v101, v102);
  }

  objc_msgSend_setWidth_(v96, v104, v56, v105, v106, v107, v108, v109);
  objc_msgSend_setHeight_(v96, v110, v55, v111, v112, v113, v114, v115);
  objc_msgSend_setArrayLength_(v96, v116, (v31 + 3) >> 2, v117, v118, v119, v120, v121);
  objc_msgSend_setUsage_(v96, v122, 19, v123, v124, v125, v126, v127);
  if (weightsDescriptor && objc_msgSend_bytes(v67, v128, v129, v130, v131, v132, v133, v134))
  {
    v135 = objc_opt_new();
    v142 = v135;
    if ((v309 + 3) <= 7)
    {
      objc_msgSend_setTextureType_(v135, v136, 2, v137, v138, v139, v140, v141);
    }

    else
    {
      objc_msgSend_setTextureType_(v135, v136, 3, v137, v138, v139, v140, v141);
    }

    v149 = 125;
    if (v309 == 2)
    {
      v149 = 105;
    }

    v150 = v142;
    if (v309 == 1)
    {
      objc_msgSend_setPixelFormat_(v142, v143, 55, v144, v145, v146, v147, v148);
    }

    else
    {
      objc_msgSend_setPixelFormat_(v142, v143, v149, v144, v145, v146, v147, v148);
    }

    objc_msgSend_setWidth_(v142, v151, v307, v152, v153, v154, v155, v156);
    objc_msgSend_setHeight_(v142, v157, v308, v158, v159, v160, v161, v162);
    objc_msgSend_setArrayLength_(v142, v163, (v309 + 3) >> 2, v164, v165, v166, v167, v168);
    objc_msgSend_setUsage_(v142, v169, 19, v170, v171, v172, v173, v174);
  }

  else
  {
    v150 = 0;
  }

  v175 = objc_opt_new();
  v182 = v175;
  v183 = p_lossImageSize->depth + 3;
  v184 = v183 >> 2;
  if (v183 <= 7)
  {
    objc_msgSend_setTextureType_(v175, v176, 2, v177, v178, v179, v180, v181);
  }

  else
  {
    objc_msgSend_setTextureType_(v175, v176, 3, v177, v178, v179, v180, v181);
  }

  v191 = p_lossImageSize->depth;
  v192 = 125;
  if (v191 == 2)
  {
    v192 = 105;
  }

  if (v191 == 1)
  {
    objc_msgSend_setPixelFormat_(v182, v185, 55, v186, v187, v188, v189, v190);
  }

  else
  {
    objc_msgSend_setPixelFormat_(v182, v185, v192, v186, v187, v188, v189, v190);
  }

  objc_msgSend_setWidth_(v182, v193, p_lossImageSize->width, v194, v195, v196, v197, v198);
  objc_msgSend_setHeight_(v182, v199, p_lossImageSize->height, v200, v201, v202, v203, v204);
  objc_msgSend_setArrayLength_(v182, v205, v184, v206, v207, v208, v209, v210);
  objc_msgSend_setUsage_(v182, v211, 19, v212, v213, v214, v215, v216);
  v217 = objc_alloc_init(MEMORY[0x277CD72A0]);
  objc_msgSend_appendTexture_(v217, v218, v96, v219, v220, v221, v222, v223);
  objc_msgSend_appendTexture_(v217, v224, v182, v225, v226, v227, v228, v229);
  if (weightsDescriptor && objc_msgSend_bytes(v67, v230, v231, v232, v233, v234, v235, v236))
  {
    objc_msgSend_appendTexture_(v217, v237, v150, v238, v239, v240, v241, v242);
  }

  v325.receiver = self;
  v325.super_class = MPSCNNLossLabels;
  v243 = [(MPSState *)&v325 initWithDevice:device resourceList:v217];
  v323 = 0uLL;
  v324 = 0;
  v244 = MEMORY[0x277CD7480];
  v245 = v243;
  if (*(&v243->super.super.isa + *MEMORY[0x277CD7480]))
  {
    v246 = *(&v243->super.super.isa + *MEMORY[0x277CD7488]);
    v247 = (v246 + 8);
    explicit = atomic_load_explicit((v246 + 8), memory_order_acquire);
    v249 = v88;
    v250 = v313;
    if (!explicit)
    {
      MPSAutoTexture::AllocateTexture((v246 + 8), 0);
      explicit = atomic_load_explicit(v247, memory_order_acquire);
    }
  }

  else
  {
    explicit = 0;
    v249 = v88;
    v250 = v313;
  }

  v251 = objc_alloc(MEMORY[0x277CD7218]);
  v257 = objc_msgSend_initWithTexture_featureChannels_(v251, v252, explicit, v249, v253, v254, v255, v256);
  v265 = objc_msgSend_bytes(v316, v258, v259, v260, v261, v262, v263, v264);
  v318 = v323;
  v319 = v324;
  v320 = v56;
  v321 = v55;
  v322 = 1;
  objc_msgSend_writeBytes_dataLayout_bytesPerRow_bytesPerImage_region_featureChannelInfo_imageIndex_(v257, v266, v265, v250, v310, v311, &v318, v267, 0, v249, 0);

  if (weightsDescriptor && objc_msgSend_bytes(v67, v268, v269, v270, v271, v272, v273, v274))
  {
    if (*(&v245->super.super.isa + *v244))
    {
      v275 = *(&v245->super.super.isa + *MEMORY[0x277CD7488]);
      v276 = (v275 + 152);
      v277 = atomic_load_explicit((v275 + 152), memory_order_acquire);
      v278 = v306;
      if (!v277)
      {
        MPSAutoTexture::AllocateTexture((v275 + 152), 0);
        v277 = atomic_load_explicit(v276, memory_order_acquire);
      }
    }

    else
    {
      v277 = 0;
      v278 = v306;
    }

    v279 = objc_alloc(MEMORY[0x277CD7218]);
    v285 = objc_msgSend_initWithTexture_featureChannels_(v279, v280, v277, v309, v281, v282, v283, v284);
    v293 = objc_msgSend_bytes(v67, v286, v287, v288, v289, v290, v291, v292);
    v318 = 0uLL;
    v319 = 0;
    v320 = v307;
    v321 = v308;
    v322 = 1;
    objc_msgSend_writeBytes_dataLayout_bytesPerRow_bytesPerImage_region_featureChannelInfo_imageIndex_(v285, v294, v293, v278, v305, v304, &v318, v295, 0, v309, 0);

    v245->_hasStateWeights = 1;
  }

  return v245;
}

- (MPSCNNLossLabels)initWithDevice:(id)device lossImageSize:(MTLSize *)lossImageSize labelsImage:(MPSImage *)labelsImage weightsImage:(MPSImage *)weightsImage
{
  depth = lossImageSize->depth;
  p_lossImageSize = &self->_lossImageSize;
  *&self->_lossImageSize.width = *&lossImageSize->width;
  self->_lossImageSize.depth = depth;
  self->_isScalarLoss = 1;
  self->_hasStateWeights = 0;
  self->_numFeatureChannels_loss = 0;
  self->_numFeatureChannels_labels = 0;
  self->_userLabelsImage = labelsImage;
  self->_userWeightsImage = weightsImage;
  if (p_lossImageSize->width > 1 || p_lossImageSize->height > 1 || p_lossImageSize->depth >= 2)
  {
    self->_isScalarLoss = 0;
  }

  self->_userData = 0;
  self->_userDataLayout = 0;
  v19 = objc_msgSend_width(labelsImage, v12, v13, v14, v15, v16, v17, v18);
  v27 = objc_msgSend_height(labelsImage, v20, v21, v22, v23, v24, v25, v26);
  v35 = objc_msgSend_featureChannels(labelsImage, v28, v29, v30, v31, v32, v33, v34);
  self->_numFeatureChannels_labels = v35;
  v43 = p_lossImageSize->depth;
  self->_numFeatureChannels_loss = v43;
  if (!p_lossImageSize->width || (height = p_lossImageSize->height) == 0 || !v43)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v70 = objc_opt_class();
      NSStringFromClass(v70);
      v68 = @"[%@ initWithDevice:lossImageSize:labelsDescriptor:weightsDescriptor:...] lossImageSize dimensions must be > 1";
      v69 = 631;
      goto LABEL_24;
    }

LABEL_25:

    return 0;
  }

  v45 = v35;
  if (v19 < p_lossImageSize->width || v27 < height || v35 < v43)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v71 = objc_opt_class();
      NSStringFromClass(v71);
      v68 = @"[%@ initWithDevice:lossImageSize:labelsDescriptor:weightsDescriptor:...] size of labels data ({%lu, %lu, %lu}) is invalid (must be >= lossImageSize ({%lu %lu %lu}))";
      v69 = 634;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (!weightsImage)
  {
    goto LABEL_29;
  }

  v46 = objc_msgSend_width(weightsImage, v36, v37, v38, v39, v40, v41, v42);
  v54 = objc_msgSend_height(weightsImage, v47, v48, v49, v50, v51, v52, v53);
  v62 = objc_msgSend_featureChannels(weightsImage, v55, v56, v57, v58, v59, v60, v61);
  if (v46 != v19 || v54 != v27 || v62 != v45)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v72 = objc_opt_class();
      NSStringFromClass(v72);
      v68 = @"[%@ initWithDevice:lossImageSize:labelsDescriptor:weightsDescriptor:...] size of weights data ({%lu, %lu, %lu}) must match the size of labels data ({%lu, %lu, %lu})";
      v69 = 641;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (v19 < p_lossImageSize->width || v27 < p_lossImageSize->height || v45 < p_lossImageSize->depth)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v63 = objc_opt_class();
      NSStringFromClass(v63);
      v68 = @"[%@ initWithDevice:lossImageSize:labelsDescriptor:weightsDescriptor:...] size of weights data ({%lu, %lu, %lu}) is invalid (must be >= lossImageSize ({%lu %lu %lu}))";
      v69 = 642;
LABEL_24:
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNLoss.mm", v69, v68, v64, v65, v66, v67);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

LABEL_29:
  v74 = objc_opt_new();
  v81 = v74;
  v82 = p_lossImageSize->depth + 3;
  v83 = v82 >> 2;
  if (v82 <= 7)
  {
    objc_msgSend_setTextureType_(v74, v75, 2, v76, v77, v78, v79, v80);
  }

  else
  {
    objc_msgSend_setTextureType_(v74, v75, 3, v76, v77, v78, v79, v80);
  }

  v90 = p_lossImageSize->depth;
  v91 = 125;
  if (v90 == 2)
  {
    v91 = 105;
  }

  if (v90 == 1)
  {
    objc_msgSend_setPixelFormat_(v81, v84, 55, v85, v86, v87, v88, v89);
  }

  else
  {
    objc_msgSend_setPixelFormat_(v81, v84, v91, v85, v86, v87, v88, v89);
  }

  objc_msgSend_setWidth_(v81, v92, p_lossImageSize->width, v93, v94, v95, v96, v97);
  objc_msgSend_setHeight_(v81, v98, p_lossImageSize->height, v99, v100, v101, v102, v103);
  objc_msgSend_setArrayLength_(v81, v104, v83, v105, v106, v107, v108, v109);
  objc_msgSend_setUsage_(v81, v110, 19, v111, v112, v113, v114, v115);
  v116 = objc_alloc_init(MEMORY[0x277CD72A0]);
  objc_msgSend_appendTexture_(v116, v117, v81, v118, v119, v120, v121, v122);
  v123.receiver = self;
  v123.super_class = MPSCNNLossLabels;
  return [(MPSState *)&v123 initWithDevice:device resourceList:v116];
}

- (MPSImage)lossImage
{
  if (*(&self->super.super.isa + *MEMORY[0x277CD7480]))
  {
    v3 = (*(&self->super.super.isa + *MEMORY[0x277CD7488]) + 72 * (self->_userLabelsImage == 0));
    v4 = v3 + 1;
    explicit = atomic_load_explicit(v3 + 1, memory_order_acquire);
    if (!explicit)
    {
      MPSAutoTexture::AllocateTexture((v3 + 1), 0);
      explicit = atomic_load_explicit(v4, memory_order_acquire);
    }
  }

  else
  {
    explicit = 0;
  }

  v6 = objc_alloc(MEMORY[0x277CD7218]);
  v12 = objc_msgSend_initWithTexture_featureChannels_(v6, v7, explicit, self->_numFeatureChannels_loss, v8, v9, v10, v11);

  return v12;
}

- (MPSImage)labelsImage
{
  userLabelsImage = self->_userLabelsImage;
  if (userLabelsImage)
  {
    v3 = userLabelsImage;
  }

  else
  {
    if (*(&self->super.super.isa + *MEMORY[0x277CD7480]))
    {
      v6 = *(&self->super.super.isa + *MEMORY[0x277CD7488]);
      v7 = (v6 + 8);
      explicit = atomic_load_explicit((v6 + 8), memory_order_acquire);
      if (!explicit)
      {
        MPSAutoTexture::AllocateTexture((v6 + 8), 0);
        explicit = atomic_load_explicit(v7, memory_order_acquire);
      }
    }

    else
    {
      explicit = 0;
    }

    v9 = objc_alloc(MEMORY[0x277CD7218]);
    v3 = objc_msgSend_initWithTexture_featureChannels_(v9, v10, explicit, self->_numFeatureChannels_labels, v11, v12, v13, v14);
  }

  return v3;
}

- (MPSImage)weightsImage
{
  userWeightsImage = self->_userWeightsImage;
  if (userWeightsImage)
  {
    v3 = userWeightsImage;

    return v3;
  }

  if (self->_hasStateWeights)
  {
    if (*(&self->super.super.isa + *MEMORY[0x277CD7480]))
    {
      v5 = *(&self->super.super.isa + *MEMORY[0x277CD7488]);
      v6 = (v5 + 152);
      explicit = atomic_load_explicit((v5 + 152), memory_order_acquire);
      if (!explicit)
      {
        selfCopy = self;
        MPSAutoTexture::AllocateTexture((v5 + 152), 0);
        self = selfCopy;
        explicit = atomic_load_explicit(v6, memory_order_acquire);
      }

      selfCopy3 = self;
    }

    else
    {
      selfCopy3 = self;
      explicit = 0;
    }

    v10 = objc_alloc(MEMORY[0x277CD7218]);
    v3 = objc_msgSend_initWithTexture_featureChannels_(v10, v11, explicit, selfCopy3->_numFeatureChannels_labels, v12, v13, v14, v15);

    return v3;
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNLossLabels;
  [(MPSState *)&v3 dealloc];
}

@end