@interface MPSNNPermute
- (MPSNNDimensionOrder)dimensionOrder;
- (MPSNNPermute)initWithCoder:(id)coder device:(id)device;
- (MPSNNPermute)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset;
- (id)resultStateForSourceImage:(id)image sourceStates:(id)states destinationImage:(id)destinationImage;
- (id)temporaryResultStateForCommandBuffer:(id)buffer sourceImage:(id)image sourceStates:(id)states destinationImage:(id)destinationImage;
- (void)encodeBatchInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inStates:(id)states destinationImages:(id)destinationImages srcSize:(id *)size destSize:(id *)destSize testClipRect:(id *)self0 testMaxClipRect:(id *)self1;
- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inStates:(id)states destinationImages:(id)destinationImages;
- (void)encodeWithCoder:(id)coder;
- (void)setDimensionOrder:(MPSNNDimensionOrder *)order;
@end

@implementation MPSNNPermute

- (MPSNNPermute)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNNPermute;
  result = [(MPSCNNKernel *)&v4 initWithDevice:device];
  if (result)
  {
    *result->_dimensionOrder.dimensions = xmmword_239D7E290;
    *&result->_dimensionOrder.dimensions[2] = xmmword_239D909E0;
    result->super._checkFlags |= 2u;
    result->super._encode = sub_239CFA21C;
    result->super._batchEncode = sub_239CFA810;
    result->super._encodeData = result;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSNNPermute;
  result = [(MPSCNNKernel *)&v7 copyWithZone:zone device:device];
  v6 = *&self->_dimensionOrder.dimensions[2];
  *(result + 328) = *self->_dimensionOrder.dimensions;
  *(result + 344) = v6;
  return result;
}

- (MPSNNPermute)initWithCoder:(id)coder device:(id)device
{
  v37.receiver = self;
  v37.super_class = MPSNNPermute;
  v5 = [(MPSCNNKernel *)&v37 initWithCoder:coder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  v5->super._checkFlags |= 2u;
  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_dimensionOrder.dimensions[0] = objc_msgSend_decodeInt64ForKey_(coder, v6, @"MPSNNPermuteDimensionOrder0", v7, v8, v9, v10, v11);
    v12->_dimensionOrder.dimensions[1] = objc_msgSend_decodeInt64ForKey_(coder, v13, @"MPSNNPermuteDimensionOrder1", v14, v15, v16, v17, v18);
    v12->_dimensionOrder.dimensions[2] = objc_msgSend_decodeInt64ForKey_(coder, v19, @"MPSNNPermuteDimensionOrder2", v20, v21, v22, v23, v24);
    v12->_dimensionOrder.dimensions[3] = objc_msgSend_decodeInt64ForKey_(coder, v25, @"MPSNNPermuteDimensionOrder3", v26, v27, v28, v29, v30);
    v12->super._encode = sub_239CFA21C;
    v12->super._batchEncode = sub_239CFA810;
    v12->super._encodeData = v12;
    return v12;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v32 = objc_opt_class();
    NSStringFromClass(v32);
    MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNPermute.mm", 0x1C4, @"[%@ initWithCoder:device:] Failed: unsupported file version.", v33, v34, v35, v36);
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v25.receiver = self;
  v25.super_class = MPSNNPermute;
  [(MPSCNNKernel *)&v25 encodeWithCoder:?];
  selfCopy += 41;
  objc_msgSend_encodeInt64_forKey_(coder, v5, *selfCopy, @"MPSNNPermuteDimensionOrder0", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(coder, v10, selfCopy[1], @"MPSNNPermuteDimensionOrder1", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(coder, v15, selfCopy[2], @"MPSNNPermuteDimensionOrder2", v16, v17, v18, v19);
  objc_msgSend_encodeInt64_forKey_(coder, v20, selfCopy[3], @"MPSNNPermuteDimensionOrder3", v21, v22, v23, v24);
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset
{
  v51[3] = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = MPSNNPermute;
  v7 = [(MPSCNNKernel *)&v50 destinationImageDescriptorForSourceImages:images sourceStates:states paddingMethod:method sourceOffset:offset];
  v15 = v7;
  p_dimensionOrder = &self->_dimensionOrder;
  if (p_dimensionOrder->dimensions[3] == 3)
  {
    v51[0] = objc_msgSend_featureChannels(v7, v8, v9, v10, v11, v12, v13, v14);
    v51[1] = objc_msgSend_width(v15, v17, v18, v19, v20, v21, v22, v23);
    v51[2] = objc_msgSend_height(v15, v24, v25, v26, v27, v28, v29, v30);
    objc_msgSend_setFeatureChannels_(v15, v31, v51[p_dimensionOrder->dimensions[0]], v32, v33, v34, v35, v36);
    objc_msgSend_setWidth_(v15, v37, v51[p_dimensionOrder->dimensions[1]], v38, v39, v40, v41, v42);
    objc_msgSend_setHeight_(v15, v43, v51[p_dimensionOrder->dimensions[2]], v44, v45, v46, v47, v48);
  }

  return v15;
}

- (void)encodeBatchInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inStates:(id)states destinationImages:(id)destinationImages srcSize:(id *)size destSize:(id *)destSize testClipRect:(id *)self0 testMaxClipRect:(id *)self1
{
  v824 = *MEMORY[0x277D85DE8];
  v13 = objc_msgSend_sourceFeatureChannelOffset(self, a2, encoder, buffer, images, states, destinationImages, size);
  v21 = objc_msgSend_destinationFeatureChannelOffset(self, v14, v15, v16, v17, v18, v19, v20);
  v742 = *MEMORY[0x277CD7350];
  v744 = (*(**(&self->super.super.super.isa + v742) + 56))(*(&self->super.super.super.isa + v742));
  if (v744)
  {
    v29 = objc_msgSend_maxBatchSize(self, v22, v23, v24, v25, v26, v27, v28);
  }

  else
  {
    v29 = 1;
  }

  v764 = v29;
  v743 = malloc_type_calloc(v29, 0x78uLL, 0x10E004012FEE65DuLL);
  selfCopy = self;
  objc_msgSend_offset(self, v30, v31, v32, v33, v34, v35, v36);
  v37.i16[0] = *v812;
  v757 = v37;
  objc_msgSend_offset(self, v38, v39, v40, v41, v42, v43, v44);
  v51 = v757;
  v51.i16[2] = *&v769[8];
  v758 = v51;
  destinationImagesCopy = destinationImages;
  v51.i16[0] = self->super._kernelWidth;
  v51.i16[2] = self->super._kernelHeight;
  v753 = v51;
  v51.i16[0] = self->super._dilationRateX;
  v51.i16[2] = self->super._dilationRateY;
  v755 = v51;
  if (destinationImages)
  {
    v53 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v45, 0, v46, v47, v48, v49, v50);
    destinationImagesCopy = objc_msgSend_featureChannels(v53, v54, v55, v56, v57, v58, v59, v60);
  }

  v61 = 328;
  p_dimensionOrder = &self->_dimensionOrder;
  v62 = -1;
  do
  {
    v63 = *(&self->super.super.super.isa + v61);
    ++v62;
    v61 += 8;
  }

  while (v63 != 3);
  if (destinationImagesCopy >= v21)
  {
    v64 = destinationImagesCopy - v21;
  }

  else
  {
    v64 = 0;
  }

  v65 = objc_msgSend_objectAtIndexedSubscript_(images, v45, 0, v46, v47, v48, v49, v50);
  v811[0] = objc_msgSend_featureChannels(v65, v66, v67, v68, v69, v70, v71, v72);
  v79 = objc_msgSend_objectAtIndexedSubscript_(images, v73, 0, v74, v75, v76, v77, v78);
  v811[1] = objc_msgSend_width(v79, v80, v81, v82, v83, v84, v85, v86);
  v93 = objc_msgSend_objectAtIndexedSubscript_(images, v87, 0, v88, v89, v90, v91, v92);
  v811[2] = objc_msgSend_height(v93, v94, v95, v96, v97, v98, v99, v100);
  v811[3] = objc_msgSend_count(images, v101, v102, v103, v104, v105, v106, v107);
  memset(v804, 0, sizeof(v804));
  *v769 = *destSize;
  v108 = *&rect->var0.var2;
  *v812 = *&rect->var0.var0;
  *&v812[16] = v108;
  *&v812[32] = *&rect->var1.var1;
  MPSGetEffectiveClipRegion(v804[0].i64, v769, v812);
  v116 = v804[2].i64[1];
  if (v62 == 3)
  {
    v116 = 0;
  }

  v763 = v116;
  v737 = objc_msgSend_count(images, v109, v110, v111, v112, v113, v114, v115);
  if (v62)
  {
    v124 = 1;
  }

  else
  {
    v124 = v763 == 0;
  }

  if (v124)
  {
    v125 = 1;
  }

  else
  {
    v125 = v744;
  }

  if ((v125 & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v727 = objc_opt_class();
    v732 = NSStringFromClass(v727);
    v733 = NSStringFromSelector(a2);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNPermute.mm", 0x22B, @"[%@ %@] Permutations involving channel and image dimension not supported on this device.", v728, v729, v730, v731);
  }

  if (objc_msgSend_retainedReferences(buffer, v117, v118, v119, v120, v121, v122, v123, v732, v733))
  {
    aSelectora = 0;
  }

  else
  {
    aSelectora = objc_opt_new();
    v803[0] = MEMORY[0x277D85DD0];
    v803[1] = 3221225472;
    v803[2] = sub_239CFCE28;
    v803[3] = &unk_278B28F28;
    v803[4] = aSelectora;
    objc_msgSend_addCompletedHandler_(buffer, v126, v803, v127, v128, v129, v130, v131);
  }

  v132 = *&self->_dimensionOrder.dimensions[2];
  v801 = *p_dimensionOrder->dimensions;
  v802 = v132;
  v799 = xmmword_239D90E18;
  v800 = unk_239D90E28;
  v133 = *(&v801 + v62);
  *(&v801 + v62) = *(&v132 + 1);
  v134 = *(&v799 + v62);
  *(&v799 + v62) = 3;
  v135 = *&self->_dimensionOrder.dimensions[2];
  v809 = *p_dimensionOrder->dimensions;
  v810 = v135;
  *(&v802 + 1) = v133;
  v136 = v811[*(&v801 + 1)];
  *(&v800 + 1) = v134;
  v137 = v811[v802];
  var2 = size->var2;
  v798[0] = v136;
  v798[1] = v137;
  v798[2] = var2;
  memset(v797, 0, sizeof(v797));
  destSizeCopy = v798;
  if (!v763)
  {
    destSizeCopy = destSize;
  }

  *v769 = *&destSizeCopy->var0;
  *&v769[16] = destSizeCopy->var2;
  if (v763)
  {
    rectCopy = clipRect;
  }

  else
  {
    rectCopy = rect;
  }

  v141 = *&rectCopy->var0.var2;
  *v812 = *&rectCopy->var0.var0;
  *&v812[16] = v141;
  *&v812[32] = *&rectCopy->var1.var1;
  MPSGetEffectiveClipRegion(v797[0].i64, v769, v812);
  if (v763)
  {
    v149 = 0;
  }

  else
  {
    v149 = v21;
  }

  v150 = v64;
  if (v763)
  {
    v150 = v811[v801];
  }

  v795 = 0u;
  v796 = 0u;
  memset(v794, 0, sizeof(v794));
  v792 = 0u;
  v793 = 0u;
  memset(v791, 0, sizeof(v791));
  v788 = 0u;
  v784 = v797[2].i64[1];
  v785 = 0;
  v786 = 0;
  v787 = v743;
  v151 = vmovn_s64(v797[0]);
  LOWORD(v152) = v151.i16[0];
  WORD1(v152) = v151.i16[2];
  HIDWORD(v152) = ((v149 + 3) >> 2);
  v153 = vmovn_s64(*(&v797[1] + 8));
  v151.i16[0] = v153.i16[0];
  v151.i16[1] = v153.i16[2];
  v151.i32[1] = ((v150 + 3) >> 2);
  v789 = v152;
  v790 = v151;
  destinationImagesCopy3 = destinationImages;
  if (v763)
  {
    v155 = &v811[v801];
    destinationImagesCopy4 = images;
  }

  else
  {
    v155 = (objc_msgSend_objectAtIndexedSubscript_(destinationImages, v142, 0, v144, v145, v146, v147, v148) + *MEMORY[0x277CD72F8]);
    destinationImagesCopy3 = destinationImages;
    destinationImagesCopy4 = destinationImages;
  }

  v157 = destinationImagesCopy3 == 0;
  LOWORD(v791[0]) = *v155;
  HIWORD(v791[0]) = objc_msgSend_count(destinationImagesCopy4, v142, v143, v144, v145, v146, v147, v148);
  v791[1] = 1;
  LOWORD(v791[2]) = 0;
  HIWORD(v791[2]) = v764;
  v791[6] = 0;
  *&v792 = 0;
  v158 = vmls_s32(v758, v755, vshr_n_u32(vand_s8(v753, 0xFFFF0000FFFFLL), 1uLL));
  *&v791[3] = 0;
  WORD5(v792) = v158.i16[2];
  v748 = v158;
  WORD4(v792) = v158.i16[0];
  HIDWORD(v792) = 0;
  WORD1(v793) = v753.i16[2];
  LOWORD(v793) = v753.i16[0];
  WORD3(v793) = v758.i16[2];
  WORD2(v793) = v758.i16[0];
  strideInPixelsX = self->super._strideInPixelsX;
  WORD5(v793) = self->super._strideInPixelsY;
  WORD4(v793) = strideInPixelsX;
  HIWORD(v793) = v755.i16[2];
  WORD6(v793) = v755.i16[0];
  LOWORD(v794[0]) = objc_msgSend_sourceFeatureChannelOffset(self, v160, v161, v162, v163, v164, v165, v166);
  WORD1(v794[0]) = *(objc_msgSend_objectAtIndexedSubscript_(images, v167, 0, v168, v169, v170, v171, v172) + *MEMORY[0x277CD72F8]);
  objc_msgSend_offset(self, v173, v174, v175, v176, v177, v178, v179);
  HIDWORD(v794[0]) = *&v812[16];
  *&v794[1] = v797[0];
  *&v794[3] = v797[1];
  *&v794[5] = v797[2];
  objc_msgSend_offset(self, v180, v181, v182, v183, v184, v185, v186);
  *&v796 = v149;
  *(&v796 + 1) = v13;
  v783 = 0;
  v781 = 0u;
  v782 = 0u;
  v779 = 0u;
  v780 = 0u;
  v777 = 0u;
  v778 = 0u;
  v775 = 0u;
  v776 = 0u;
  v773 = 0u;
  v774 = 0u;
  v771 = 0u;
  v772 = 0u;
  v770 = 0u;
  memset(v769, 0, sizeof(v769));
  *v769 = objc_msgSend_count(images, v187, v188, v189, v190, v191, v192, v193);
  *&v769[8] = objc_msgSend_count(destinationImages, v194, v195, v196, v197, v198, v199, v200);
  *&v769[16] = 0u;
  v770 = 0u;
  *&v771 = v743;
  DWORD2(v771) = 0;
  *&v772 = 0;
  v208 = vmovn_s64(v804[0]);
  LOWORD(v209) = v208.i16[0];
  WORD1(v209) = v208.i16[2];
  HIDWORD(v209) = ((v21 + 3) >> 2);
  v210 = vmovn_s64(*(&v804[1] + 8));
  v208.i16[0] = v210.i16[0];
  v208.i16[1] = v210.i16[2];
  v208.i32[1] = ((v64 + 3) >> 2);
  *(&v772 + 1) = v209;
  *&v773 = v208;
  if (v157)
  {
    v218 = 0;
    WORD4(v773) = 0;
  }

  else
  {
    WORD4(v773) = *(objc_msgSend_objectAtIndexedSubscript_(destinationImages, v201, 0, v203, v204, v205, v206, v207) + *MEMORY[0x277CD72F8]);
    v218 = objc_msgSend_count(destinationImages, v211, v212, v213, v214, v215, v216, v217);
  }

  WORD5(v773) = v218;
  HIDWORD(v773) = 1;
  LOWORD(v774) = 0;
  WORD1(v774) = v764;
  LODWORD(v775) = 0;
  *(&v775 + 1) = 0;
  *(&v774 + 4) = 0;
  WORD1(v776) = v748.i16[2];
  LOWORD(v776) = v748.i16[0];
  DWORD1(v776) = 0;
  WORD5(v776) = v753.i16[2];
  WORD4(v776) = v753.i16[0];
  HIWORD(v776) = v758.i16[2];
  v219 = self->super._strideInPixelsX;
  WORD6(v776) = v758.i16[0];
  WORD1(v777) = self->super._strideInPixelsY;
  LOWORD(v777) = v219;
  WORD3(v777) = v755.i16[2];
  WORD2(v777) = v755.i16[0];
  if (v763)
  {
    v220 = 0;
  }

  else
  {
    v220 = v13;
  }

  WORD4(v777) = v220;
  v759 = v811[v801];
  WORD5(v777) = v759;
  objc_msgSend_offset(selfCopy, v201, v202, v203, v204, v205, v206, v207);
  HIDWORD(v777) = *&v812[16];
  v778 = v804[0];
  v779 = v804[1];
  v780 = v804[2];
  objc_msgSend_offset(selfCopy, v221, v222, v223, v224, v225, v226, v227);
  *(&v782 + 1) = v21;
  v783 = v220;
  MEMORY[0x23EE7D040](v768, buffer, 0);
  v228 = 125;
  if (v150 == 2)
  {
    v228 = 105;
  }

  if (v150 == 1)
  {
    v229 = MTLPixelFormatR32Float;
  }

  else
  {
    v229 = v228;
  }

  PixelInfo = MPSDevice::GetPixelInfo(*(&selfCopy->super.super.super.isa + v742), v229, MPSImageFeatureChannelFormatNone);
  v231 = objc_alloc(MEMORY[0x277CBEB18]);
  v747 = objc_msgSend_initWithCapacity_(v231, v232, v764, v233, v234, v235, v236, v237);
  if (v764 && v763)
  {
    v238 = v811[*(&v801 + 1)];
    v239 = v811[v802];
    v240 = (PixelInfo >> 24) & 0xF;
    if ((PixelInfo & 0xFF00000000) <= 0x1000000000)
    {
      v241 = &unk_239D90E60;
    }

    else
    {
      v241 = &unk_239D90E38;
    }

    v242 = v764;
    do
    {
      v243 = *(&selfCopy->super.super.super.isa + v742);
      v244 = objc_autoreleasePoolPush();
      v246 = objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_numberOfImages_usage_(MEMORY[0x277CD7220], v245, 4, v238, v239, v759, 1, 19);
      *&v805 = MPSDevice::GetPixelInfo(v243, v241[v240], MPSImageFeatureChannelFormatNone);
      *v812 = objc_msgSend_width(v246, v247, v248, v249, v250, v251, v252, v253);
      *&v812[8] = objc_msgSend_height(v246, v254, v255, v256, v257, v258, v259, v260);
      *&v812[16] = (objc_msgSend_featureChannels(v246, v261, v262, v263, v264, v265, v266, v267) + 3) >> 2;
      TempTexture = MPSAutoCache::GetTempTexture();
      v269 = objc_alloc(MEMORY[0x277CD7218]);
      v277 = objc_msgSend_featureChannels(v246, v270, v271, v272, v273, v274, v275, v276);
      v283 = objc_msgSend_initWithTexture_featureChannels_(v269, v278, TempTexture, v277, v279, v280, v281, v282);
      objc_autoreleasePoolPop(v244);
      objc_msgSend_addObject_(v747, v284, v283, v285, v286, v287, v288, v289);

      --v242;
    }

    while (v242);
  }

  if (v737)
  {
    v746 = 0;
    v754 = 0;
    if (v763)
    {
      destinationImagesCopy5 = v747;
    }

    else
    {
      destinationImagesCopy5 = destinationImages;
    }

    imagesCopy2 = images;
    if (v763)
    {
      imagesCopy2 = v747;
    }

    v735 = imagesCopy2;
    v736 = destinationImagesCopy5;
    v740 = 0;
    v292 = MEMORY[0x277CD7318];
    do
    {
      context = objc_autoreleasePoolPush();
      v300 = objc_msgSend_count(images, v293, v294, v295, v296, v297, v298, v299);
      v308 = v300;
      v760 = v300 - v754;
      if (v764 >= v300 - v754)
      {
        v309 = v300 - v754;
      }

      else
      {
        v309 = v764;
      }

      if (v744)
      {
        LODWORD(v805) = 0;
        objc_msgSend_offset(selfCopy, v301, v302, v303, v304, v305, v306, v307);
        v316 = sub_239CFCE30(images, buffer, *&v812[16] + v754, v309, &v805, v310, v311, v312);
        *&v792 = v316;
        v791[6] = v805;
        *v812 = v805;
        if (v763)
        {
          v317 = 0;
        }

        else
        {
          v317 = v797[1].i64[0] + v754;
        }

        v325 = sub_239CFCE30(v736, buffer, v317, v309, v812, v313, v314, v315);
        *(&v788 + 1) = v325;
        v326 = *v812;
        LODWORD(v788) = *v812;
        if (aSelectora)
        {
          objc_msgSend_addObject_(aSelectora, v318, v316, v320, v321, v322, v323, v324);
          objc_msgSend_addObject_(aSelectora, v327, v325, v328, v329, v330, v331, v332);
          v326 = *v812;
        }

        *(&v775 + 1) = v325;
        LODWORD(v775) = v326;
      }

      else
      {
        objc_msgSend_offset(selfCopy, v301, v302, v303, v304, v305, v306, v307);
        v339 = objc_msgSend_objectAtIndexedSubscript_(images, v333, *&v812[16] + v754, v334, v335, v336, v337, v338);
        v347 = objc_msgSend_texture(v339, v340, v341, v342, v343, v344, v345, v346);
        *&v792 = v347;
        objc_msgSend_offset(selfCopy, v348, v349, v350, v351, v352, v353, v354);
        v361 = *(objc_msgSend_objectAtIndexedSubscript_(images, v355, *&v812[16] + v754, v356, v357, v358, v359, v360) + *MEMORY[0x277CD72F0]);
        v369 = objc_msgSend_textureType(v347, v362, v363, v364, v365, v366, v367, v368);
        if (v361 - 1 > 4)
        {
          v377 = 0;
        }

        else
        {
          v377 = dword_239D90E88[v361 - 1];
        }

        if (v369 == 3)
        {
          v378 = v377 + 1;
        }

        else
        {
          v378 = v377;
        }

        objc_msgSend_device(v347, v370, v371, v372, v373, v374, v375, v376);
        MPSDevice = MPSDevice::GetMPSDevice();
        v387 = objc_msgSend_pixelFormat(v347, v380, v381, v382, v383, v384, v385, v386);
        if ((MPSDevice::GetPixelInfo(MPSDevice, v387, v361) & 0x3000000) != 0)
        {
          v394 = v378 | 4;
        }

        else
        {
          v394 = v378;
        }

        v791[6] = v394;
        if (v763)
        {
          v395 = objc_msgSend_objectAtIndexedSubscript_(v736, v388, 0, v389, v390, v391, v392, v393);
        }

        else
        {
          v395 = objc_msgSend_objectAtIndexedSubscript_(v736, v388, v797[1].i64[0] + v754, v389, v390, v391, v392, v393);
        }

        v403 = v395;
        v404 = objc_msgSend_texture(v395, v396, v397, v398, v399, v400, v401, v402);
        *(&v788 + 1) = v404;
        v405 = *&v403[*MEMORY[0x277CD72F0]];
        v413 = objc_msgSend_textureType(v404, v406, v407, v408, v409, v410, v411, v412);
        if (v405 - 1 > 4)
        {
          v421 = 0;
        }

        else
        {
          v421 = dword_239D90E88[v405 - 1];
        }

        if (v413 == 3)
        {
          v422 = v421 + 1;
        }

        else
        {
          v422 = v421;
        }

        objc_msgSend_device(v404, v414, v415, v416, v417, v418, v419, v420);
        v423 = MPSDevice::GetMPSDevice();
        v431 = objc_msgSend_pixelFormat(v404, v424, v425, v426, v427, v428, v429, v430);
        v432 = MPSDevice::GetPixelInfo(v423, v431, v405);
        v433 = v422 | 4;
        if ((v432 & 0x3000000) == 0)
        {
          v433 = v422;
        }

        LODWORD(v788) = v433;
        if (aSelectora)
        {
          objc_msgSend_addObject_(aSelectora, v318, v347, v320, v321, v322, v323, v324);
          objc_msgSend_addObject_(aSelectora, v434, v404, v435, v436, v437, v438, v439);
        }

        *(&v775 + 1) = v404;
        LODWORD(v775) = v394;
      }

      v785 = v309;
      v786 = v754;
      HIWORD(v794[0]) = v309;
      v790.i16[3] = v309;
      LOWORD(v791[2]) = v746;
      if (v309)
      {
        v440 = 0;
        if (v764 >= v308 + v740)
        {
          v441 = v308 + v740;
        }

        else
        {
          v441 = v764;
        }

        v442 = (v743 + 7);
        do
        {
          while (1)
          {
            objc_msgSend_offset(selfCopy, v318, v319, v320, v321, v322, v323, v324);
            v456 = objc_msgSend_objectAtIndexedSubscript_(images, v443, v754 + v440 + *&v812[16], v444, v445, v446, v447, v448);
            if (v763)
            {
              v457 = objc_msgSend_objectAtIndexedSubscript_(v747, v449, v440, v451, v452, v453, v454, v455);
            }

            else
            {
              objc_msgSend_clipRect(selfCopy, v449, v450, v451, v452, v453, v454, v455);
              v457 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v458, v754 + v440 + *&v812[16], v459, v460, v461, v462, v463);
            }

            v464 = v457;
            v465 = *v292;
            v466 = v456 + *MEMORY[0x277CD7320];
            explicit = atomic_load_explicit(v466, memory_order_acquire);
            if ((*(v466 + 56) & 2) != 0)
            {
              if (*(v466 + 52) < 2u)
              {
                v468 = 2;
              }

              else
              {
                v468 = 3;
              }
            }

            else if (explicit)
            {
              v468 = objc_msgSend_textureType(explicit, v318, v319, v320, v321, v322, v323, v324);
            }

            else
            {
              v468 = objc_msgSend_textureType(*(v466 + 40), v318, v319, v320, v321, v322, v323, v324);
            }

            v469 = *(v456 + *MEMORY[0x277CD72F0]) - 1;
            if (v469 > 4)
            {
              v470 = 0;
            }

            else
            {
              v470 = dword_239D90E88[v469];
            }

            if (v468 == 3)
            {
              ++v470;
            }

            if (*(v456 + *MEMORY[0x277CD7310]) > 1uLL)
            {
              v470 |= 2u;
            }

            if ((*(v456 + *v292) & 0x3000000) != 0)
            {
              v470 |= 4u;
            }

            v471 = *(v456 + *MEMORY[0x277CD72F8]);
            v472 = 2;
            if (v471 > 4)
            {
              v472 = 3;
            }

            v473 = *(v456 + *MEMORY[0x277CD7300]);
            *(v442 - 7) = v456;
            *(v442 - 6) = v456 + v465;
            *(v442 - 10) = v470;
            *(v442 - 4) = v471;
            *(v442 - 3) = v472;
            *(v442 - 2) = 0;
            *(v442 - 1) = v473;
            *(v442 + 7) = 0;
            if (v464)
            {
              break;
            }

            *(v442 + 6) = 0;
            *(v442 + 1) = 0u;
            *(v442 + 2) = 0u;
            *v442 = 0u;
            v442 += 120;
            if (v441 == ++v440)
            {
              goto LABEL_141;
            }
          }

          v474 = *v292;
          v475 = v464 + *MEMORY[0x277CD7320];
          v476 = atomic_load_explicit(v475, memory_order_acquire);
          if ((*(v475 + 56) & 2) != 0)
          {
            if (*(v475 + 52) < 2u)
            {
              v477 = 2;
            }

            else
            {
              v477 = 3;
            }
          }

          else if (v476)
          {
            v477 = objc_msgSend_textureType(v476, v318, v319, v320, v321, v322, v323, v324);
          }

          else
          {
            v477 = objc_msgSend_textureType(*(v475 + 40), v318, v319, v320, v321, v322, v323, v324);
          }

          v478 = *(v464 + *MEMORY[0x277CD72F0]) - 1;
          if (v478 > 4)
          {
            v479 = 0;
          }

          else
          {
            v479 = dword_239D90E88[v478];
          }

          if (v477 == 3)
          {
            ++v479;
          }

          if (*(v464 + *MEMORY[0x277CD7310]) > 1uLL)
          {
            v479 |= 2u;
          }

          if ((*(v464 + *v292) & 0x3000000) != 0)
          {
            v479 |= 4u;
          }

          v480 = *(v464 + *MEMORY[0x277CD72F8]);
          v481 = 2;
          if (v480 > 4)
          {
            v481 = 3;
          }

          v482 = *(v464 + *MEMORY[0x277CD7300]);
          *v442 = v464;
          *(v442 + 1) = v464 + v474;
          *(v442 + 4) = v479;
          *(v442 + 3) = v480;
          *(v442 + 4) = v481;
          *(v442 + 5) = 0;
          *(v442 + 6) = v482;
          ++v440;
          v442 += 120;
        }

        while (v441 != v440);
LABEL_141:
        if (v760 < v764)
        {
LABEL_142:
          bzero(&v743[15 * v441], 120 * (v764 - v309));
        }
      }

      else
      {
        v441 = 0;
        if (v760 < v764)
        {
          goto LABEL_142;
        }
      }

      v483 = v802;
      *p_dimensionOrder->dimensions = v801;
      *&selfCopy->_dimensionOrder.dimensions[2] = v483;
      sub_239CFA810(selfCopy, encoder, buffer, &v784, v321, v322, v323, v324);
      objc_msgSend_offset(selfCopy, v484, v485, v486, v487, v488, v489, v490);
      objc_msgSend_subarrayWithRange_(images, v491, *&v812[16] + v754, v309, v492, v493, v494, v495);
      MPSDecrementReadCount();
      *&v769[16] = v309;
      v770.i64[0] = v754;
      HIWORD(v777) = v309;
      WORD5(v777) = *(objc_msgSend_objectAtIndexedSubscript_(v735, v496, 0, v497, v498, v499, v500, v501) + *MEMORY[0x277CD72F8]);
      if (v309)
      {
        v509 = 0;
        if (v764 >= v308 + v740)
        {
          v510 = v308 + v740;
        }

        else
        {
          v510 = v764;
        }

        v511 = v743;
        do
        {
          if (v763)
          {
            v516 = objc_msgSend_objectAtIndexedSubscript_(v747, v502, v509, v504, v505, v506, v507, v508);
          }

          else
          {
            objc_msgSend_offset(selfCopy, v502, v503, v504, v505, v506, v507, v508);
            v516 = objc_msgSend_objectAtIndexedSubscript_(images, v517, v754 + v509 + *&v812[16], v518, v519, v520, v521, v522);
          }

          v523 = v516;
          v524 = *v292;
          v525 = v516 + *MEMORY[0x277CD7320];
          v526 = atomic_load_explicit(v525, memory_order_acquire);
          if ((*(v525 + 56) & 2) != 0)
          {
            if (*(v525 + 52) < 2u)
            {
              v527 = 2;
            }

            else
            {
              v527 = 3;
            }
          }

          else if (v526)
          {
            v527 = objc_msgSend_textureType(v526, v502, v503, v504, v505, v506, v507, v508);
          }

          else
          {
            v527 = objc_msgSend_textureType(*(v525 + 40), v502, v503, v504, v505, v506, v507, v508);
          }

          v528 = *(v523 + *MEMORY[0x277CD72F0]) - 1;
          if (v528 <= 4)
          {
            v512 = dword_239D90E88[v528];
          }

          else
          {
            v512 = 0;
          }

          if (v527 == 3)
          {
            ++v512;
          }

          if (*(v523 + *MEMORY[0x277CD7310]) > 1uLL)
          {
            v512 |= 2u;
          }

          if ((*(v523 + *v292) & 0x3000000) != 0)
          {
            v512 |= 4u;
          }

          v513 = *(v523 + *MEMORY[0x277CD72F8]);
          v514 = *(v523 + *MEMORY[0x277CD7300]);
          v515 = 2;
          if (v513 > 4)
          {
            v515 = 3;
          }

          *v511 = v523;
          v511[1] = v523 + v524;
          *(v511 + 4) = v512;
          v511[3] = v513;
          v511[4] = v515;
          v511[5] = 0;
          v511[6] = v514;
          v511[14] = 0;
          ++v509;
          v511 += 15;
        }

        while (v510 != v509);
      }

      else
      {
        v510 = 0;
      }

      if (v760 < v764)
      {
        bzero(&v743[15 * v510], 120 * (v764 - v309));
      }

      v529 = v800;
      *p_dimensionOrder->dimensions = v799;
      *&selfCopy->_dimensionOrder.dimensions[2] = v529;
      if (v763)
      {
        v756 = 0;
        v530 = 0;
        while (2)
        {
          v531 = objc_msgSend_count(destinationImages, v502, v503, v504, v505, v506, v507, v508);
          v538 = v531;
          v539 = v531 - v530;
          if (v764 >= v531 - v530)
          {
            v540 = v531 - v530;
          }

          else
          {
            v540 = v764;
          }

          if (v744)
          {
            *v812 = 0;
            v503 = sub_239CFCE30(destinationImages, buffer, v530, v540, v812, v535, v536, v537);
            *&v772 = v503;
            DWORD2(v771) = *v812;
            if (aSelectora)
            {
              objc_msgSend_addObject_(aSelectora, v502, v503, v504, v505, v506, v507, v508);
            }
          }

          else
          {
            v541 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v532, v530, v533, v534, v535, v536, v537);
            v549 = objc_msgSend_texture(v541, v542, v543, v544, v545, v546, v547, v548);
            v556 = *(objc_msgSend_objectAtIndexedSubscript_(destinationImages, v550, v530, v551, v552, v553, v554, v555) + *MEMORY[0x277CD72F0]);
            v564 = objc_msgSend_textureType(v549, v557, v558, v559, v560, v561, v562, v563);
            if (v556 - 1 > 4)
            {
              v572 = 0;
            }

            else
            {
              v572 = dword_239D90E88[v556 - 1];
            }

            if (v564 == 3)
            {
              v573 = v572 + 1;
            }

            else
            {
              v573 = v572;
            }

            objc_msgSend_device(v549, v565, v566, v567, v568, v569, v570, v571);
            v574 = MPSDevice::GetMPSDevice();
            v582 = objc_msgSend_pixelFormat(v549, v575, v576, v577, v578, v579, v580, v581);
            v583 = MPSDevice::GetPixelInfo(v574, v582, v556);
            v584 = v573 | 4;
            if ((v583 & 0x3000000) == 0)
            {
              v584 = v573;
            }

            *&v772 = v549;
            DWORD2(v771) = v584;
            if (aSelectora)
            {
              objc_msgSend_addObject_(aSelectora, v502, v549, v504, v505, v506, v507, v508);
            }
          }

          *&v769[24] = v540;
          v770.i64[1] = v530;
          WORD3(v773) = v540;
          LOWORD(v774) = v746;
          if (v540)
          {
            if (v764 >= v538 + v756)
            {
              v585 = v538 + v756;
            }

            else
            {
              v585 = v764;
            }

            v586 = v530;
            v587 = v743 + 13;
            v588 = v585;
            do
            {
              if (destinationImages)
              {
                objc_msgSend_clipRect(selfCopy, v502, v503, v504, v505, v506, v507, v508);
                v599 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v593, v586 + *&v812[16], v594, v595, v596, v597, v598);
              }

              else
              {
                v599 = 0;
              }

              v600 = *v292;
              v601 = v599 + *MEMORY[0x277CD7320];
              v602 = atomic_load_explicit(v601, memory_order_acquire);
              if ((*(v601 + 56) & 2) != 0)
              {
                if (*(v601 + 52) < 2u)
                {
                  v603 = 2;
                }

                else
                {
                  v603 = 3;
                }
              }

              else if (v602)
              {
                v603 = objc_msgSend_textureType(v602, v502, v503, v504, v505, v506, v507, v508);
              }

              else
              {
                v603 = objc_msgSend_textureType(*(v601 + 40), v502, v503, v504, v505, v506, v507, v508);
              }

              v604 = *(v599 + *MEMORY[0x277CD72F0]) - 1;
              if (v604 <= 4)
              {
                v589 = dword_239D90E88[v604];
              }

              else
              {
                v589 = 0;
              }

              if (v603 == 3)
              {
                ++v589;
              }

              if (*(v599 + *MEMORY[0x277CD7310]) > 1uLL)
              {
                v589 |= 2u;
              }

              if ((*(v599 + *v292) & 0x3000000) != 0)
              {
                v589 |= 4u;
              }

              v590 = *(v599 + *MEMORY[0x277CD72F8]);
              v591 = 2;
              if (v590 > 4)
              {
                v591 = 3;
              }

              v592 = *(v599 + *MEMORY[0x277CD7300]);
              *(v587 - 6) = v599;
              *(v587 - 5) = v599 + v600;
              *(v587 - 8) = v589;
              *(v587 - 3) = v590;
              *(v587 - 2) = v591;
              *(v587 - 1) = 0;
              *v587 = v592;
              v587 += 15;
              ++v586;
              --v588;
            }

            while (v588);
          }

          else
          {
            v585 = 0;
          }

          if (v539 < v764)
          {
            bzero(&v743[15 * v585], 120 * (v764 - v540));
          }

          if (!v779.i64[1] || !v780.i64[0])
          {
            goto LABEL_177;
          }

          v605 = *(&selfCopy->super.super.super.isa + v742);
          objc_msgSend_dimensionOrder(selfCopy, v502, v503, v504, v505, v506, v507, v508);
          v606 = *&v812[24];
          v614 = objc_msgSend_maxBatchSize(selfCopy, v607, v608, v609, v610, v611, v612, v613);
          *v812 = v614;
          *&v812[8] = BYTE8(v771) & 0x3F | ((v775 & 0x3F) << 6);
          *&v812[16] = v606;
          memset(&v812[24], 0, 56);
          MPSLibrary::CreateUberShaderKey();
          PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
          MPSLibrary::ReleaseMPSKey();
          v623 = objc_msgSend_width(*v771, v616, v617, v618, v619, v620, v621, v622, 0, 0, 0, 0, 0);
          v631 = objc_msgSend_height(*v771, v624, v625, v626, v627, v628, v629, v630);
          v639.i16[0] = v623;
          v639.i16[1] = v631;
          v639.i16[2] = (WORD5(v777) + 3) >> 2;
          v639.i16[3] = *&v769[16];
          v761 = v639;
          switch(v606)
          {
            case 2:
              v639.i16[1] = *&v769[24];
              break;
            case 1:
              v639.i16[0] = *&v769[24];
              break;
            case 0:
              v639.i16[2] = (*&v769[24] + 3) >> 2;
              v639.i16[3] = (*&v769[16] + 3) >> 2;
              break;
            default:
LABEL_233:
              v640 = objc_msgSend_maxTotalThreadsPerThreadgroup(PipelineStateForMPSKey, v632, v633, v634, v635, v636, v637, v638);
              v808 = 0;
              sub_239CFDA18(*(v605 + 16), v640, &v808, v761, v641, v642, v643, v644, v645);
              v749 = v652;
              v653 = v652.u16[2];
              HIWORD(v773) = v652.i16[0] * v652.i16[1] * v652.i16[2];
              if (v761.u16[2] >= 2u)
              {
                v655 = 0x80000000 / v761.u16[2];
                v656 = __clz(v655);
                v657 = v655 >> (16 - v656);
                v658 = v656 + 15;
                v659 = -65536 * v761.u16[2] * v657 / v761.u16[2];
                if (v659 <= v657)
                {
                  v660 = v657;
                }

                else
                {
                  v660 = v657 + 1;
                }

                if (v659 <= v657)
                {
                  LOWORD(v657) = 0;
                }

                v654 = (v658 << 48) | ((v659 - v657) << 32) | (v660 << 16) | v761.u16[2];
              }

              else
              {
                v654 = 65537;
              }

              v762 = v808;
              *(&v774 + 4) = v654;
              objc_msgSend_setComputePipelineState_(encoder, v646, PipelineStateForMPSKey, v647, v648, v649, v650, v651);
              v668 = *(&v775 + 1);
              if ((v775 & 2) == 0)
              {
                objc_msgSend_setTexture_atIndex_(encoder, v661, *(&v775 + 1), v614, v664, v665, v666, v667);
                goto LABEL_262;
              }

              v673 = objc_msgSend_count(*(&v775 + 1), v661, v662, v663, v664, v665, v666, v667);
              v741 = v653;
              v822 = 0u;
              v823 = 0u;
              v820 = 0u;
              v821 = 0u;
              v818 = 0u;
              v819 = 0u;
              v816 = 0u;
              v817 = 0u;
              v814 = 0u;
              v815 = 0u;
              v813 = 0u;
              memset(v812, 0, sizeof(v812));
              if (v614)
              {
                v674 = v673;
                for (i = 0; i < v614; i += v677)
                {
                  if (v674 <= i)
                  {
                    v676 = 0;
                    if (v614 - i >= 0x20)
                    {
                      v677 = 32;
                    }

                    else
                    {
                      v677 = v614 - i;
                    }

                    v678 = v677;
                    if (!v677)
                    {
                      goto LABEL_254;
                    }
                  }

                  else
                  {
                    if (v674 - i >= 0x20)
                    {
                      v676 = 32;
                      objc_msgSend_getObjects_range_(v668, v669, v812, i, 32, v670, v671, v672);
                    }

                    else
                    {
                      v676 = v674 - i;
                      objc_msgSend_getObjects_range_(v668, v669, v812, i, v674 - i, v670, v671, v672);
                    }

                    if (v614 - i >= 0x20)
                    {
                      v677 = 32;
                    }

                    else
                    {
                      v677 = v614 - i;
                    }

                    v678 = v677 - v676;
                    if (v677 == v676)
                    {
                      goto LABEL_254;
                    }
                  }

                  bzero(&v812[8 * v676], 8 * v678);
LABEL_254:
                  objc_msgSend_setTextures_withRange_(encoder, v669, v812, i + v614, v677, v670, v671, v672);
                }
              }

              v653 = v741;
LABEL_262:
              objc_msgSend_setBytes_length_atIndex_(encoder, v669, &v776, 32, 1, v670, v671, v672);
              Sampler = MPSDevice::GetSampler();
              objc_msgSend_setSamplerState_atIndex_(encoder, v680, Sampler, 1, v681, v682, v683, v684);
              v692 = v772;
              if ((BYTE8(v771) & 2) == 0)
              {
                objc_msgSend_setTexture_atIndex_(encoder, v685, v772, 0, v688, v689, v690, v691);
                goto LABEL_283;
              }

              v697 = objc_msgSend_count(v772, v685, v686, v687, v688, v689, v690, v691);
              v698 = v653;
              v822 = 0u;
              v823 = 0u;
              v820 = 0u;
              v821 = 0u;
              v818 = 0u;
              v819 = 0u;
              v816 = 0u;
              v817 = 0u;
              v814 = 0u;
              v815 = 0u;
              v813 = 0u;
              memset(v812, 0, sizeof(v812));
              if (!v614)
              {
LABEL_282:
                v653 = v698;
LABEL_283:
                objc_msgSend_setBytes_length_atIndex_(encoder, v693, &v772 + 8, 40, 0, v694, v695, v696);
                v807 = vrev64_s32(vmovn_s64(v770));
                objc_msgSend_setBytes_length_atIndex_(encoder, v704, &v807, 8, 30, v705, v706, v707);
                v708 = vand_s8(*&vmovl_u16(v762), 0xFFFF0000FFFFLL);
                *&v709 = v708.u32[0];
                *(&v709 + 1) = v708.u32[1];
                *v812 = v709;
                *&v812[16] = (v762.i16[2] * v762.i16[3]);
                v710 = vand_s8(*&vmovl_u16(v749), 0xFFFF0000FFFFLL);
                *&v709 = v710.u32[0];
                *(&v709 + 1) = v710.u32[1];
                v805 = v709;
                v806 = v653;
                objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v711, v812, &v805, v712, v713, v714, v715);
LABEL_177:
                v530 += v764;
                v756 -= v764;
                if (v530 >= v763)
                {
                  goto LABEL_284;
                }

                continue;
              }

              v699 = v697;
              v700 = 0;
              while (2)
              {
                if (v699 <= v700)
                {
                  v701 = 0;
                  if (v614 - v700 >= 0x20)
                  {
                    v702 = 32;
                  }

                  else
                  {
                    v702 = v614 - v700;
                  }

                  v703 = v702;
                  if (v702)
                  {
LABEL_274:
                    bzero(&v812[8 * v701], 8 * v703);
                  }
                }

                else
                {
                  if (v699 - v700 >= 0x20)
                  {
                    v701 = 32;
                    objc_msgSend_getObjects_range_(v692, v693, v812, v700, 32, v694, v695, v696);
                  }

                  else
                  {
                    v701 = v699 - v700;
                    objc_msgSend_getObjects_range_(v692, v693, v812, v700, v699 - v700, v694, v695, v696);
                  }

                  if (v614 - v700 >= 0x20)
                  {
                    v702 = 32;
                  }

                  else
                  {
                    v702 = v614 - v700;
                  }

                  v703 = v702 - v701;
                  if (v702 != v701)
                  {
                    goto LABEL_274;
                  }
                }

                objc_msgSend_setTextures_withRange_(encoder, v693, v812, v700, v702, v694, v695, v696);
                v700 += v702;
                if (v700 >= v614)
                {
                  goto LABEL_282;
                }

                continue;
              }
          }

          break;
        }

        v761 = v639;
        goto LABEL_233;
      }

LABEL_284:
      objc_autoreleasePoolPop(context);
      ++v746;
      v740 -= v764;
      v754 += v764;
    }

    while (v754 < v737);
  }

  v716 = v810;
  *p_dimensionOrder->dimensions = v809;
  *&selfCopy->_dimensionOrder.dimensions[2] = v716;

  free(v743);
  if (states)
  {
    v723 = objc_msgSend_objectAtIndexedSubscript_(states, v717, 0, v718, v719, v720, v721, v722);
    v724 = *&selfCopy->_dimensionOrder.dimensions[2];
    v723[18] = *p_dimensionOrder->dimensions;
    v723[19] = v724;
    v725 = selfCopy->_dimensionOrder.dimensions[1];
    *&v812[8 * p_dimensionOrder->dimensions[0]] = 0;
    *&v812[8 * v725] = 1;
    v726 = selfCopy->_dimensionOrder.dimensions[3];
    *&v812[8 * selfCopy->_dimensionOrder.dimensions[2]] = 2;
    *&v812[8 * v726] = 3;
    v723[20] = *v812;
    v723[21] = *&v812[16];
  }

  MPSAutoCache::~MPSAutoCache(v768);
}

- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inStates:(id)states destinationImages:(id)destinationImages
{
  destinationImagesCopy = destinationImages;
  statesCopy = states;
  bufferCopy = buffer;
  v14 = objc_msgSend_objectAtIndexedSubscript_(images, a2, 0, buffer, images, states, destinationImages, v7);
  v22 = objc_msgSend_width(v14, v15, v16, v17, v18, v19, v20, v21);
  v29 = objc_msgSend_objectAtIndexedSubscript_(images, v23, 0, v24, v25, v26, v27, v28);
  v37 = objc_msgSend_height(v29, v30, v31, v32, v33, v34, v35, v36);
  v52 = objc_msgSend_count(images, v38, v39, v40, v41, v42, v43, v44);
  if (destinationImagesCopy)
  {
    v53 = objc_msgSend_objectAtIndexedSubscript_(destinationImagesCopy, v45, 0, v47, v48, v49, v50, v51);
    v166 = objc_msgSend_width(v53, v54, v55, v56, v57, v58, v59, v60);
    v67 = objc_msgSend_objectAtIndexedSubscript_(destinationImagesCopy, v61, 0, v62, v63, v64, v65, v66);
    v165 = objc_msgSend_height(v67, v68, v69, v70, v71, v72, v73, v74);
    v164 = objc_msgSend_count(destinationImagesCopy, v75, v76, v77, v78, v79, v80, v81);
    if (self)
    {
      v161 = destinationImagesCopy;
      v88 = v52;
      encoderCopy2 = encoder;
      v90 = v37;
      v91 = v22;
      v92 = bufferCopy;
      v93 = statesCopy;
      v94 = v175;
      objc_msgSend_clipRect(self, v45, v82, v83, v84, v85, v86, v87);
      v103 = v174;
      v167 = v103 >> 64;
      v102 = v103;
LABEL_9:
      v163 = *v94;
      v184 = 0uLL;
      v185 = 0;
      statesCopy = v93;
      bufferCopy = v92;
      v22 = v91;
      v37 = v90;
      encoder = encoderCopy2;
      v52 = v88;
      destinationImagesCopy = v161;
      goto LABEL_10;
    }

LABEL_13:
    v163 = 0;
    v167 = 0;
    v102 = 0;
    memset(v175, 0, sizeof(v175));
    v174 = 0u;
    v184 = *&v175[1];
    v185 = 0;
    if (!images)
    {
      return;
    }

    goto LABEL_14;
  }

  if (!self)
  {
    v164 = 0;
    v165 = 0;
    v166 = 0;
    goto LABEL_13;
  }

  objc_msgSend_offset(self, v45, v46, v47, v48, v49, v50, v51);
  if ((v168 & 0x8000000000000000) == 0)
  {
    objc_msgSend_offset(self, v104, v105, v106, v107, v108, v109, v110);
    v102 = v184;
    objc_msgSend_offset(self, v111, v112, v113, v114, v115, v116, v117);
    if ((v182 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_23:
    v167 = 0;
    objc_msgSend_offset(self, v118, v119, v120, v121, v122, v123, v124);
    if ((v177 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  v102 = 0;
  objc_msgSend_offset(self, v104, v105, v106, v107, v108, v109, v110);
  if (v182 < 0)
  {
    goto LABEL_23;
  }

LABEL_7:
  objc_msgSend_offset(self, v118, v119, v120, v121, v122, v123, v124);
  v167 = v179;
  objc_msgSend_offset(self, v125, v126, v127, v128, v129, v130, v131);
  if ((v177 & 0x8000000000000000) == 0)
  {
LABEL_8:
    v161 = 0;
    v88 = v52;
    encoderCopy2 = encoder;
    v90 = v37;
    v91 = v22;
    v92 = bufferCopy;
    v93 = statesCopy;
    v94 = v176;
    objc_msgSend_offset(self, v95, v96, v97, v98, v99, v100, v101);
    v164 = 0;
    v165 = 0;
    v166 = 0;
    goto LABEL_9;
  }

LABEL_24:
  v163 = 0;
  v164 = 0;
  v165 = 0;
  v166 = 0;
LABEL_10:
  objc_msgSend_clipRect(self, v95, v96, v97, v98, v99, v100, v101);
  v184 = *&v175[1];
  v185 = v175[3];
  if (!images)
  {
    return;
  }

LABEL_14:
  if (encoder)
  {
    v181 = v22;
    v182 = v37;
    v183 = v52;
    v178 = v166;
    v179 = v165;
    v180 = v164;
    *&v174 = v102;
    *(&v174 + 1) = v167;
    v175[0] = v163;
    *&v175[1] = v184;
    v175[3] = v185;
    v168 = v102;
    v169 = v167;
    v170 = v163;
    v171 = -1;
    v172 = -1;
    v173 = -1;
    objc_msgSend_encodeBatchInternalToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_srcSize_destSize_testClipRect_testMaxClipRect_(self, v45, encoder, bufferCopy, images, statesCopy, destinationImagesCopy, &v181, &v178, &v174, &v168);
  }

  else
  {
    v162 = statesCopy;
    v132 = objc_alloc(MEMORY[0x277CD7210]);
    v160 = bufferCopy;
    v144 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v132, v133, bufferCopy, 0, v134, v135, v136, v137);
    v176[1] = v144;
    v176[2] = self;
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
    {
      v145 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
      if (v145 || (v146 = objc_opt_class(), v145 = NSStringFromClass(v146), objc_msgSend_setLabel_(self, v147, v145, v148, v149, v150, v151, v152), v145))
      {
        objc_msgSend_setLabel_(v144, v138, v145, v139, v140, v141, v142, v143);
      }
    }

    v181 = v22;
    v182 = v37;
    v183 = v52;
    v178 = v166;
    v179 = v165;
    v180 = v164;
    *&v174 = v102;
    *(&v174 + 1) = v167;
    v175[0] = v163;
    *&v175[1] = v184;
    v175[3] = v185;
    v168 = v102;
    v169 = v167;
    v170 = v163;
    v171 = -1;
    v172 = -1;
    v173 = -1;
    objc_msgSend_encodeBatchInternalToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_srcSize_destSize_testClipRect_testMaxClipRect_(self, v138, v144, v160, images, v162, destinationImagesCopy, &v181, &v178, &v174, &v168);
    objc_msgSend_endEncoding(v144, v153, v154, v155, v156, v157, v158, v159);
  }
}

- (id)resultStateForSourceImage:(id)image sourceStates:(id)states destinationImage:(id)destinationImage
{
  v9 = [MPSNNPermuteGradientState alloc];
  v16 = objc_msgSend_initWithResource_(v9, v10, 0, v11, v12, v13, v14, v15);
  objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v17, v16, image, states, destinationImage, v18, v19);
  v20 = *&self->_dimensionOrder.dimensions[2];
  v16[18] = *self->_dimensionOrder.dimensions;
  v16[19] = v20;
  v21 = self->_dimensionOrder.dimensions[1];
  *(v25 + self->_dimensionOrder.dimensions[0]) = 0;
  *(v25 + v21) = 1;
  v22 = self->_dimensionOrder.dimensions[3];
  *(v25 + self->_dimensionOrder.dimensions[2]) = 2;
  *(v25 + v22) = 3;
  v23 = v25[1];
  v16[20] = v25[0];
  v16[21] = v23;

  return v16;
}

- (id)temporaryResultStateForCommandBuffer:(id)buffer sourceImage:(id)image sourceStates:(id)states destinationImage:(id)destinationImage
{
  v12 = objc_msgSend_temporaryStateWithCommandBuffer_(MPSNNPermuteGradientState, a2, buffer, image, states, destinationImage, v6, v7);
  objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v13, v12, image, states, destinationImage, v14, v15);
  v16 = *&self->_dimensionOrder.dimensions[2];
  v12[18] = *self->_dimensionOrder.dimensions;
  v12[19] = v16;
  v17 = self->_dimensionOrder.dimensions[1];
  *(v21 + self->_dimensionOrder.dimensions[0]) = 0;
  *(v21 + v17) = 1;
  v18 = self->_dimensionOrder.dimensions[3];
  *(v21 + self->_dimensionOrder.dimensions[2]) = 2;
  *(v21 + v18) = 3;
  v19 = v21[1];
  v12[20] = v21[0];
  v12[21] = v19;
  return v12;
}

- (MPSNNDimensionOrder)dimensionOrder
{
  v3 = *&self[10].dimensions[3];
  *retstr->dimensions = *&self[10].dimensions[1];
  *&retstr->dimensions[2] = v3;
  return self;
}

- (void)setDimensionOrder:(MPSNNDimensionOrder *)order
{
  v3 = *&order->dimensions[2];
  *self->_dimensionOrder.dimensions = *order->dimensions;
  *&self->_dimensionOrder.dimensions[2] = v3;
}

@end