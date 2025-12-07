@interface MPSNNConcatenation
- (MPSNNConcatenation)initWithCoder:(id)coder device:(id)device;
- (MPSNNConcatenation)initWithDevice:(id)device;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset;
- (id)resultStateBatchForSourceImages:(id)images sourceStates:(id)states destinationImage:(id)image;
- (id)resultStateForSourceImages:(id)images sourceStates:(id)states destinationImage:(id)image;
- (id)temporaryResultStateBatchForCommandBuffer:(id)buffer sourceImages:(id)images sourceStates:(id)states destinationImage:(id)image;
- (id)temporaryResultStateForCommandBuffer:(id)buffer sourceImages:(id)images sourceStates:(id)states destinationImage:(id)image;
- (void)copyToGradientState:(id)state sourceImages:(id)images sourceStates:(id)states destinationImage:(id)image;
- (void)encodeBatchToCommandBuffer:(id)buffer sourceImages:(id)images destinationImage:(id)image;
- (void)encodeToCommandBuffer:(id)buffer sourceImages:(id)images destinationImage:(id)image;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNNConcatenation

- (MPSNNConcatenation)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNNConcatenation;
  result = [(MPSCNNKernel *)&v4 initWithDevice:device];
  if (result)
  {
    *(&result->super.super.super.isa + *MEMORY[0x277CD7348]) = 31;
  }

  return result;
}

- (MPSNNConcatenation)initWithCoder:(id)coder device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSNNConcatenation;
  result = [(MPSCNNKernel *)&v11 initWithCoder:coder device:device];
  if (result && *(&result->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
  {
    v5 = result;
    if (MTLReportFailureTypeEnabled())
    {
      v6 = objc_opt_class();
      NSStringFromClass(v6);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0x41, @"[%@ initWithCoder:device:] Failed: unsupported file version.", v7, v8, v9, v10);
    }

    return 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSNNConcatenation;
  [(MPSCNNKernel *)&v3 encodeWithCoder:coder];
}

- (void)encodeToCommandBuffer:(id)buffer sourceImages:(id)images destinationImage:(id)image
{
  v283 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.super.isa + v283) & 1) == 0)
  {
    if (!buffer && MTLReportFailureTypeEnabled())
    {
      v235 = objc_opt_class();
      v270 = NSStringFromClass(v235);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0x58, @"[%@ encode...] commandBuffer may not be nil]", v236, v237, v238, v239);
    }

    if (!images && MTLReportFailureTypeEnabled())
    {
      v240 = objc_opt_class();
      v270 = NSStringFromClass(v240);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0x59, @"[%@ encode...] sourceImages may not be nil", v241, v242, v243, v244);
    }

    if (!image && MTLReportFailureTypeEnabled())
    {
      v245 = objc_opt_class();
      v270 = NSStringFromClass(v245);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0x5A, @"[%@ encode...] destination may not be nil", v246, v247, v248, v249);
    }

    v11 = *MEMORY[0x277CD7348];
    if ((*(&self->super.super.super.isa + v283) & ~*(&self->super.super.super.isa + v11)) != 0 && MTLReportFailureTypeEnabled())
    {
      v250 = objc_opt_class();
      v270 = NSStringFromClass(v250);
      v274 = *(&self->super.super.super.isa + v283) & ~*(&self->super.super.super.isa + v11);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0x5B, @"[%@ encode...] options flag(s) 0x%16.16lx is unknown or invalid for use with this filter", v251, v252, v253, v254);
    }
  }

  if (images && image)
  {
    v12 = *(image + *MEMORY[0x277CD7318]);
    v277 = *(image + *MEMORY[0x277CD7300]);
    v13 = image + *MEMORY[0x277CD7320];
    v14 = *(image + *MEMORY[0x277CD72F8]);
    v22 = objc_msgSend_destinationFeatureChannelOffset(self, a2, buffer, images, image, v5, v6, v7);
    v23 = *(image + *MEMORY[0x277CD7330]);
    v24 = *(image + *MEMORY[0x277CD7308]);
    v280 = *(image + *MEMORY[0x277CD7310]);
    if ((*(&self->super.super.super.isa + v283) & 1) == 0)
    {
      if ((v12 & 0x200000000000) == 0 && MTLReportFailureTypeEnabled())
      {
        v260 = objc_opt_class();
        v270 = NSStringFromClass(v260);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0x70, @"[%@ encodeToCommandBuffer:sourceImages:destinationImage:] destination MTLPixelFormat is not writable.", v261, v262, v263, v264);
      }

      explicit = atomic_load_explicit(v13, memory_order_acquire);
      if ((v13[56] & 2) != 0)
      {
        v26 = v13;
        do
        {
          v26 = *(v26 + 5);
          explicit = atomic_load_explicit(v26, memory_order_acquire);
        }

        while ((v26[56] & 2) != 0);
      }

      else
      {
        v26 = v13;
      }

      if (!explicit)
      {
        explicit = *(v26 + 5);
      }

      if ((objc_msgSend_usage(explicit, v15, v16, v17, v18, v19, v20, v21, v270, v274) & 2) == 0 && MTLReportFailureTypeEnabled())
      {
        v265 = objc_opt_class();
        v270 = NSStringFromClass(v265);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0x72, @"[%@ encodeToCommandBuffer:sourceImages:destinationImage:] destination MTLTextureUsage is not writable.", v266, v267, v268, v269);
      }
    }

    v27 = atomic_load_explicit(v13, memory_order_acquire);
    if ((v13[56] & 2) == 0)
    {
      if (!v27)
      {
        v27 = *(v13 + 5);
      }

      objc_msgSend_textureType(v27, v15, v16, v17, v18, v19, v20, v21, v270);
    }

    ComputeState = MPSLibrary::GetComputeState();
    v35 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v28, v29, v30, v31, v32, v33, v34);
    v43 = 63 - __clz(v35);
    if (v35)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0x8000000000000000;
    }

    v281 = objc_msgSend_count(images, v36, v37, v38, v39, v40, v41, v42, v270);
    if (!(*(&self->super.super.super.isa + v283) & 1 | v281) && MTLReportFailureTypeEnabled())
    {
      v255 = objc_opt_class();
      v271 = NSStringFromClass(v255);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0x82, @"[%@ encodeToCommandBuffer:sourceImages:destinationImage:] sourceImages length is 0. Can not produce a result.", v256, v257, v258, v259);
    }

    if (objc_msgSend_retainedReferences(buffer, v45, v46, v47, v48, v49, v50, v51, v271))
    {
      v285 = 0;
    }

    else
    {
      v52 = objc_opt_new();
      v301[0] = MEMORY[0x277D85DD0];
      v301[1] = 3221225472;
      v301[2] = sub_239BE312C;
      v301[3] = &unk_278B28F28;
      v285 = v52;
      v301[4] = v52;
      objc_msgSend_addCompletedHandler_(buffer, v53, v301, v54, v55, v56, v57, v58);
    }

    v59 = objc_alloc(MEMORY[0x277CD7210]);
    v72 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v59, v60, buffer, 0, v61, v62, v63, v64);
    v299 = v72;
    selfCopy = self;
    if ((*(&self->super.super.super.isa + v283) & 0x18) != 0)
    {
      v66 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
      if (v66 || (v73 = objc_opt_class(), v74 = NSStringFromClass(v73), objc_msgSend_setLabel_(self, v75, v74, v76, v77, v78, v79, v80), (v66 = v74) != 0))
      {
        objc_msgSend_setLabel_(v72, v65, v66, v67, v68, v69, v70, v71);
      }
    }

    if (v281)
    {
      v81 = v24;
      v82 = 0;
      v276 = (v14 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v83.i32[1] = 65537;
      v83.i16[0] = v23;
      v278 = 1 << (v44 - (v44 >> 1));
      v84 = 1 << (v44 >> 1);
      v83.i16[1] = v81;
      v284 = v83;
      for (i = objc_msgSend_objectAtIndexedSubscript_(images, v65, 0, v67, v68, v69, v70, v71); ; i = objc_msgSend_objectAtIndexedSubscript_(images, v65, v82, v67, v68, v69, v70, v71))
      {
        v93 = i;
        v94 = i + *MEMORY[0x277CD7320];
        v95 = *(i + *MEMORY[0x277CD72F8]);
        v287 = *(v94 + 56);
        if (*(i + *MEMORY[0x277CD7300]) != *(image + *MEMORY[0x277CD7300]) && MTLReportFailureTypeEnabled())
        {
          v210 = objc_opt_class();
          v272 = NSStringFromClass(v210);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0x94, @"[%@ encodeToCommandBuffer:sourceImage:destinationImage:] error:  The MPSImageFeatureChannelsLayout must match between source and destination MPSImages\n", v211, v212, v213, v214);
        }

        v96 = v95 + 3;
        v286 = v96 & 0xFFFFFFFFFFFFFFFCLL;
        if ((*(&self->super.super.super.isa + v283) & 1) == 0)
        {
          if ((v287 & 1) != 0 && !*(&v93->super.super.isa + *MEMORY[0x277CD7490]) && MTLReportFailureTypeEnabled())
          {
            v225 = objc_opt_class();
            v274 = v82;
            v275 = v93;
            v272 = NSStringFromClass(v225);
            MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0x9C, @"[%@ encodeToCommandBuffer:sourceImage:destinationImage:] error:  source image %lu is a temporary image with readCount of 0.\n\tBacking texture for source image is no longer valid. image=%p\n\tPerhaps you forgot to set the readCount property?", v226, v227, v228, v229);
          }

          if (*(&v93->super.super.isa + *MEMORY[0x277CD7300]) != v277 && MTLReportFailureTypeEnabled())
          {
            v215 = objc_opt_class();
            v272 = NSStringFromClass(v215);
            v274 = v82;
            MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0xA0, @"[%@ encodeToCommandBuffer:sourceImage:destinationImage:] error:  source image %lu and dest image must have the same feature channel layout", v216, v217, v218, v219);
          }

          if (v286 + v22 > v276 && MTLReportFailureTypeEnabled())
          {
            v220 = objc_opt_class();
            v272 = NSStringFromClass(v220);
            MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0xA2, @"[%@ encodeToCommandBuffer:sourceImage:destinationImage:] error:  the sum of feature channels in the source images  must fit within the destination image", v221, v222, v223, v224);
          }
        }

        v297 = 0uLL;
        v298 = 0;
        objc_msgSend_offset(self, v86, v87, v88, v89, v90, v91, v92, v272);
        v296 = 0;
        v104 = *(image + *MEMORY[0x277CD72F8]) + 3;
        v290 = 0;
        v291 = v284;
        v292 = 0x1000000000000;
        v293 = 65537;
        v294 = v96 >> 2;
        v295 = v280;
        v105 = *(image + *MEMORY[0x277CD7300]);
        if (v105 == 1)
        {
          *&v107 = 0;
          *(&v107 + 6) = ((v22 + 3) >> 2);
          v108 = v284;
          v108.i16[3] = v96 >> 2;
          v290 = v107;
          v291 = v108;
          HIWORD(v293) = v104 >> 2;
        }

        else if (!v105)
        {
          v106 = v284;
          v106.i16[0] = v96 >> 2;
          v290 = ((v22 + 3) >> 2);
          v291 = v106;
          LOWORD(v293) = v104 >> 2;
          v292 = 1;
        }

        v109 = image + *MEMORY[0x277CD7320];
        for (j = atomic_load_explicit(v109, memory_order_acquire); (v109[56] & 2) != 0; j = atomic_load_explicit(v109, memory_order_acquire))
        {
          v109 = *(v109 + 5);
        }

        if (j)
        {
          v111 = objc_msgSend_width(j, v97, v98, v99, v100, v101, v102, v103);
        }

        else
        {
          v111 = objc_msgSend_width(*(v109 + 5), v97, v98, v99, v100, v101, v102, v103);
        }

        v119 = v111;
        v120 = image + *MEMORY[0x277CD7320];
        for (k = atomic_load_explicit(v120, memory_order_acquire); (v120[56] & 2) != 0; k = atomic_load_explicit(v120, memory_order_acquire))
        {
          v120 = *(v120 + 5);
        }

        if (k)
        {
          v122 = objc_msgSend_height(k, v112, v113, v114, v115, v116, v117, v118);
        }

        else
        {
          v122 = objc_msgSend_height(*(v120 + 5), v112, v113, v114, v115, v116, v117, v118);
        }

        v130 = v122;
        v131 = image + *MEMORY[0x277CD7320];
        v132 = atomic_load_explicit(v131, memory_order_acquire);
        if ((v131[56] & 2) != 0)
        {
          v133 = *(v131 + 13);
        }

        else if (v132)
        {
          LOWORD(v133) = objc_msgSend_arrayLength(v132, v123, v124, v125, v126, v127, v128, v129);
        }

        else
        {
          LOWORD(v133) = objc_msgSend_arrayLength(*(v131 + 5), v123, v124, v125, v126, v127, v128, v129);
        }

        v134.i16[2] = 1;
        v134.i16[0] = v119;
        v134.i16[1] = v130;
        v134.i16[3] = v133;
        v291 = vmin_u16(v291, vqsub_u16(v134, v290));
        v135 = vmovn_s64(v297);
        WORD1(v296) = v135.i16[2];
        LOWORD(v296) = v135.i16[0];
        WORD2(v296) = v298;
        v136 = *(&v93->super.super.isa + *MEMORY[0x277CD72F8]) + 3;
        HIWORD(v296) = v136 >> 2;
        v137 = *(&v93->super.super.isa + *MEMORY[0x277CD7300]);
        if (v137)
        {
          if (v137 == 1)
          {
            WORD2(v296) = (v136 >> 2) * v298;
          }

          else if (MTLReportFailureTypeEnabled())
          {
            v138 = objc_opt_class();
            v274 = v82;
            v275 = v93;
            v273 = NSStringFromClass(v138);
            MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0xB9, @"[%@ encodeToCommandBuffer:sourceImages:destinationImage] Error: source image %lu (%p) has invalid feature channel layout.", v139, v140, v141, v142);
          }
        }

        else
        {
          WORD1(v296) = v135.i16[2];
          LOWORD(v296) = v135.i16[0] * (v136 >> 2);
        }

        v143 = atomic_load_explicit(v94, memory_order_acquire);
        if (v143)
        {
          v144 = atomic_load_explicit(v13, memory_order_acquire);
          if ((v13[56] & 2) == 0)
          {
            goto LABEL_69;
          }
        }

        else
        {
          MPSAutoTexture::AllocateTexture(v94, 0);
          v143 = atomic_load_explicit(v94, memory_order_acquire);
          v144 = atomic_load_explicit(v13, memory_order_acquire);
          if ((v13[56] & 2) == 0)
          {
LABEL_69:
            if (v144)
            {
              v145 = objc_msgSend_textureType(v144, v123, v124, v125, v126, v127, v128, v129);
            }

            else
            {
              v145 = objc_msgSend_textureType(*(v13 + 5), v123, v124, v125, v126, v127, v128, v129);
            }

            if (v145 != 3)
            {
              goto LABEL_85;
            }

            goto LABEL_76;
          }
        }

        if (*(v13 + 13) < 2u)
        {
          goto LABEL_85;
        }

LABEL_76:
        v146 = atomic_load_explicit(v94, memory_order_acquire);
        if ((*(v94 + 56) & 2) != 0)
        {
          if (*(v94 + 52) < 2u)
          {
            goto LABEL_80;
          }
        }

        else
        {
          if (v146)
          {
            v147 = objc_msgSend_textureType(v146, v123, v124, v125, v126, v127, v128, v129);
          }

          else
          {
            v147 = objc_msgSend_textureType(*(v94 + 40), v123, v124, v125, v126, v127, v128, v129);
          }

          if (v147 == 2)
          {
LABEL_80:
            v148 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v143, v123, *(v94 + 32) & 0x3FFLL, 3, 0, 1, 0, 1, v273, v274, v275);
            if (v148)
            {
              goto LABEL_100;
            }

            if (MTLReportFailureTypeEnabled())
            {
              v149 = objc_opt_class();
              v273 = NSStringFromClass(v149);
              v274 = v143;
              MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0xC7, @"[%@ encodeToCommandBuffer:sourceImages:destinationImage:] internal error: unable to create MTLTextureType2DArray view of src texture %p\n", v150, v151, v152, v153);
            }

            goto LABEL_141;
          }
        }

LABEL_85:
        v154 = atomic_load_explicit(v13, memory_order_acquire);
        if ((v13[56] & 2) != 0)
        {
          if (*(v13 + 13) >= 2u)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v154)
          {
            v155 = objc_msgSend_textureType(v154, v123, v124, v125, v126, v127, v128, v129);
          }

          else
          {
            v155 = objc_msgSend_textureType(*(v13 + 5), v123, v124, v125, v126, v127, v128, v129);
          }

          if (v155 != 2)
          {
LABEL_96:
            v148 = v143;
            goto LABEL_100;
          }
        }

        v156 = atomic_load_explicit(v94, memory_order_acquire);
        if ((*(v94 + 56) & 2) != 0)
        {
          if (*(v94 + 52) < 2u)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v156)
          {
            v157 = objc_msgSend_textureType(v156, v123, v124, v125, v126, v127, v128, v129);
          }

          else
          {
            v157 = objc_msgSend_textureType(*(v94 + 40), v123, v124, v125, v126, v127, v128, v129);
          }

          if (v157 != 3)
          {
            goto LABEL_96;
          }
        }

        v148 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v143, v123, *(v94 + 32) & 0x3FFLL, 2, 0, 1, WORD2(v296), 1, v273);
        if (!v148)
        {
          if (MTLReportFailureTypeEnabled())
          {
            v230 = objc_opt_class();
            v273 = NSStringFromClass(v230);
            v274 = v143;
            MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0xD1, @"[%@ encodeToCommandBuffer:sourceImages:destinationImage:] internal error: unable to create MTLTextureType2DArray view of src texture %p\n", v231, v232, v233, v234);
          }

LABEL_141:
          v148 = 0;
        }

LABEL_100:
        v158 = v299;
        objc_msgSend_setComputePipelineState_(v299, v123, ComputeState, v125, v126, v127, v128, v129, v273);
        objc_msgSend_setTexture_atIndex_(v158, v159, v148, 0, v160, v161, v162, v163);
        v169 = atomic_load_explicit(v13, memory_order_acquire);
        if (!v169)
        {
          MPSAutoTexture::AllocateTexture(v13, 0);
          v169 = atomic_load_explicit(v13, memory_order_acquire);
        }

        objc_msgSend_setTexture_atIndex_(v158, v164, v169, 1, v165, v166, v167, v168);
        v170 = v299;
        objc_msgSend_setBytes_length_atIndex_(v299, v171, &v290, 40, 0, v172, v173, v174);
        Sampler = MPSDevice::GetSampler();
        objc_msgSend_setSamplerState_atIndex_(v170, v176, Sampler, 0, v177, v178, v179, v180);
        objc_msgSend_addObject_(v285, v181, v148, v182, v183, v184, v185, v186);
        v193 = atomic_load_explicit(v13, memory_order_acquire);
        if (!v193)
        {
          MPSAutoTexture::AllocateTexture(v13, 0);
          v193 = atomic_load_explicit(v13, memory_order_acquire);
        }

        objc_msgSend_addObject_(v285, v187, v193, v188, v189, v190, v191, v192);
        if (v278 >= 2 * v291.u16[0])
        {
          if (v291.u16[0] <= 1u)
          {
            v208 = 1;
          }

          else
          {
            v208 = v291.u16[0];
          }

          v200 = v278 / v208;
          if (v278 < v208)
          {
            v209 = 1;
          }

          else
          {
            v209 = v278 / v208;
          }

          v199 = v278 / v209;
          v201 = v291.u16[1];
          if (v84 < 2 * v291.u16[1])
          {
LABEL_123:
            v204 = v84;
            if (v199)
            {
              goto LABEL_113;
            }

            goto LABEL_124;
          }
        }

        else
        {
          v199 = v278;
          v200 = 1;
          v201 = v291.u16[1];
          if (v84 < 2 * v291.u16[1])
          {
            goto LABEL_123;
          }
        }

        if (v201 <= 1)
        {
          v202 = 1;
        }

        else
        {
          v202 = v201;
        }

        v200 *= v84 / v202;
        if (v84 < v202)
        {
          v203 = 1;
        }

        else
        {
          v203 = v84 / v202;
        }

        v204 = v84 / v203;
        if (v199)
        {
LABEL_113:
          v205 = (v291.u16[0] + v199 - 1) / v199;
          if (v204)
          {
            goto LABEL_114;
          }

          goto LABEL_125;
        }

LABEL_124:
        v205 = 0;
        if (v204)
        {
LABEL_114:
          v206 = (v201 + v204 - 1) / v204;
          if (v200)
          {
            goto LABEL_115;
          }

          goto LABEL_126;
        }

LABEL_125:
        v206 = 0;
        if (v200)
        {
LABEL_115:
          v207 = (v291.u16[3] + v200 - 1) / v200;
          goto LABEL_127;
        }

LABEL_126:
        v207 = 0;
LABEL_127:
        v72 = v299;
        v289[0] = v205;
        v289[1] = v206;
        v289[2] = v207;
        v288[0] = v199;
        v288[1] = v204;
        v288[2] = v200;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v299, v194, v289, v288, v195, v196, v197, v198);
        if (v148 != v143)
        {
        }

        if (v287)
        {
          MPSDecrementReadCount(v93);
        }

        v22 += v286;
        if (++v82 == v281)
        {
          break;
        }
      }
    }

    objc_msgSend_endEncoding(v72, v65, v66, v67, v68, v69, v70, v71);
  }
}

- (void)encodeBatchToCommandBuffer:(id)buffer sourceImages:(id)images destinationImage:(id)image
{
  v12 = objc_msgSend_count(image, a2, buffer, images, image, v5, v6, v7);
  v20 = objc_msgSend_count(images, v13, v14, v15, v16, v17, v18, v19);
  v27 = v20;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && v20)
  {
    v28 = 0;
    do
    {
      v29 = objc_msgSend_objectAtIndexedSubscript_(images, v21, v28, v22, v23, v24, v25, v26, v112, v113, v114, v115);
      objc_msgSend_count(v29, v30, v31, v32, v33, v34, v35, v36);
      v43 = objc_msgSend_objectAtIndexedSubscript_(images, v37, v28, v38, v39, v40, v41, v42);
      if (objc_msgSend_count(v43, v44, v45, v46, v47, v48, v49, v50) < v12 && MTLReportFailureTypeEnabled())
      {
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        v59 = objc_msgSend_objectAtIndexedSubscript_(images, v53, v28, v54, v55, v56, v57, v58);
        v114 = objc_msgSend_count(v59, v60, v61, v62, v63, v64, v65, v66);
        v115 = v12;
        v112 = v52;
        v113 = v28;
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0x10A, @"[%@ encodeBatchToCommandBuffer:sourceImages:destinationImage:] Error: there are not enough source images in batch %lu (%lu) to fill the destination batch %lu\n", v67, v68, v69, v70);
      }

      ++v28;
    }

    while (v27 != v28);
  }

  v71 = objc_autoreleasePoolPush();
  v78 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v72, v27, v73, v74, v75, v76, v77);
  if (v12)
  {
    v85 = v78;
    if (v27)
    {
      for (i = 0; i != v12; ++i)
      {
        for (j = 0; j != v27; ++j)
        {
          v88 = objc_msgSend_objectAtIndexedSubscript_(images, v79, j, v80, v81, v82, v83, v84, v112, v113, v114, v115);
          v95 = objc_msgSend_objectAtIndexedSubscript_(v88, v89, i, v90, v91, v92, v93, v94);
          objc_msgSend_setObject_atIndexedSubscript_(v85, v96, v95, j, v97, v98, v99, v100);
        }

        v101 = objc_msgSend_objectAtIndexedSubscript_(image, v79, i, v80, v81, v82, v83, v84);
        objc_msgSend_encodeToCommandBuffer_sourceImages_destinationImage_(self, v102, buffer, v85, v101, v103, v104, v105);
      }
    }

    else
    {
      for (k = 0; k != v12; ++k)
      {
        v107 = objc_msgSend_objectAtIndexedSubscript_(image, v79, k, v80, v81, v82, v83, v84, v112, v113, v114, v115);
        objc_msgSend_encodeToCommandBuffer_sourceImages_destinationImage_(self, v108, buffer, v85, v107, v109, v110, v111);
      }
    }
  }

  objc_autoreleasePoolPop(v71);
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset
{
  v10 = objc_msgSend_count(images, a2, images, states, method, offset, v6, v7);
  if (*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1 | v10)
  {
    v17 = v10;
    if (v10)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = -1;
      v22 = MEMORY[0x277CD7310];
      v23 = -1;
      v24 = -1;
      for (i = objc_msgSend_objectAtIndexedSubscript_(images, v11, 0, v12, v13, v14, v15, v16); ; i = objc_msgSend_objectAtIndexedSubscript_(images, v11, v20, v26, v27, v28, v29, v30))
      {
        v32 = *(i + *MEMORY[0x277CD72F0]);
        if (v32 <= 5)
        {
          v33 = byte_239D7D6F0[v32];
          v34 = *(i + *MEMORY[0x277CD72F8]);
          if (v19 <= 5)
          {
LABEL_4:
            v31 = byte_239D7D6F0[v19];
            goto LABEL_5;
          }
        }

        else
        {
          v33 = 0;
          v34 = *(i + *MEMORY[0x277CD72F8]);
          if (v19 <= 5)
          {
            goto LABEL_4;
          }
        }

        v31 = 0;
LABEL_5:
        v18 += (v34 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        if (v33 > v31)
        {
          v19 = *(i + *MEMORY[0x277CD72F0]);
        }

        if (v21 >= *(i + *MEMORY[0x277CD7330]))
        {
          v21 = *(i + *MEMORY[0x277CD7330]);
        }

        if (v23 >= *(i + *MEMORY[0x277CD7308]))
        {
          v23 = *(i + *MEMORY[0x277CD7308]);
        }

        if (v24 >= *(i + *v22))
        {
          v24 = *(i + *v22);
        }

        if (v17 == ++v20)
        {
          goto LABEL_23;
        }
      }
    }
  }

  else if (MTLReportFailureTypeEnabled())
  {
    v35 = objc_opt_class();
    NSStringFromClass(v35);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0x12D, @"[%@ encodeToCommandBuffer: sourceImages:] sourceImages.count may not be 0", v36, v37, v38, v39);
  }

  v19 = 0;
  v18 = 0;
  v24 = -1;
  v23 = -1;
  v21 = -1;
LABEL_23:
  v40 = MEMORY[0x277CD7220];

  return objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_numberOfImages_usage_(v40, v11, v19, v21, v23, v18, v24, 19);
}

- (id)resultStateForSourceImages:(id)images sourceStates:(id)states destinationImage:(id)image
{
  v9 = [MPSNNConcatenationGradientState alloc];
  v19 = objc_msgSend_initWithResource_(v9, v10, 0, v11, v12, v13, v14, v15);
  if (v19)
  {
    objc_msgSend_copyToGradientState_sourceImages_sourceStates_destinationImage_(self, v16, v19, images, states, image, v17, v18);
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v29 = objc_msgSend_stringWithFormat_(v20, v23, @"created by %@", v24, v25, v26, v27, v28, v22);
      objc_msgSend_setLabel_(v19, v30, v29, v31, v32, v33, v34, v35);
    }
  }

  return v19;
}

- (id)temporaryResultStateForCommandBuffer:(id)buffer sourceImages:(id)images sourceStates:(id)states destinationImage:(id)image
{
  v15 = objc_msgSend_temporaryStateWithCommandBuffer_(MPSNNConcatenationGradientState, a2, buffer, images, states, image, v6, v7);
  if (v15)
  {
    objc_msgSend_copyToGradientState_sourceImages_sourceStates_destinationImage_(self, v12, v15, images, states, image, v13, v14);
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v25 = objc_msgSend_stringWithFormat_(v16, v19, @"created by %@", v20, v21, v22, v23, v24, v18);
      objc_msgSend_setLabel_(v15, v26, v25, v27, v28, v29, v30, v31);
    }
  }

  return v15;
}

- (id)temporaryResultStateBatchForCommandBuffer:(id)buffer sourceImages:(id)images sourceStates:(id)states destinationImage:(id)image
{
  imageCopy = image;
  v14 = objc_msgSend_objectAtIndexedSubscript_(images, a2, 0, images, states, image, v6, v7);
  v29 = objc_msgSend_count(v14, v15, v16, v17, v18, v19, v20, v21);
  selfCopy = self;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!buffer && MTLReportFailureTypeEnabled())
    {
      v226 = objc_opt_class();
      v236 = NSStringFromClass(v226);
      v238 = NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0x194, @"[%@ %@] Error: command buffer may not be NULL", v227, v228, v229, v230);
    }

    if (!images && MTLReportFailureTypeEnabled())
    {
      v231 = objc_opt_class();
      v236 = NSStringFromClass(v231);
      v238 = NSStringFromSelector(a2);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0x198, @"[%@ %@] Error: sourceImage batch may not be NULL", v232, v233, v234, v235);
    }

    if (states && objc_msgSend_count(states, v22, v23, v24, v25, v26, v27, v28))
    {
      v36 = 0;
      do
      {
        v37 = objc_msgSend_objectAtIndexedSubscript_(states, v30, v36, v31, v32, v33, v34, v35, v236, v238);
        objc_msgSend_count(v37, v38, v39, v40, v41, v42, v43, v44);
        v51 = objc_msgSend_objectAtIndexedSubscript_(states, v45, v36, v46, v47, v48, v49, v50);
        if (objc_msgSend_count(v51, v52, v53, v54, v55, v56, v57, v58) < v29 && MTLReportFailureTypeEnabled())
        {
          v66 = objc_opt_class();
          v237 = NSStringFromClass(v66);
          v239 = NSStringFromSelector(a2);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0x19F, @"[%@ %@] Error: if sourceStates is non-NULL, there must be at least as many source states as source images", v67, v68, v69, v70);
        }

        ++v36;
      }

      while (v36 < objc_msgSend_count(states, v59, v60, v61, v62, v63, v64, v65, v237, v239));
    }
  }

  if (!v29)
  {
    return 0;
  }

  v71 = objc_autoreleasePoolPush();
  v79 = objc_msgSend_count(images, v72, v73, v74, v75, v76, v77, v78);
  v86 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v80, v79, v81, v82, v83, v84, v85);
  v94 = v86;
  if (v79 && v86)
  {
    for (i = 0; i != v79; ++i)
    {
      v96 = objc_msgSend_objectAtIndexedSubscript_(images, v87, i, v89, v90, v91, v92, v93, v236, v238);
      v103 = objc_msgSend_objectAtIndexedSubscript_(v96, v97, 0, v98, v99, v100, v101, v102);
      objc_msgSend_setObject_atIndexedSubscript_(v94, v104, v103, i, v105, v106, v107, v108);
    }
  }

  if (states)
  {
    v109 = objc_msgSend_count(states, v87, v88, v89, v90, v91, v92, v93);
    v116 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v110, v109, v111, v112, v113, v114, v115);
    if (v116 && v109)
    {
      for (j = 0; j != v109; ++j)
      {
        v118 = objc_msgSend_objectAtIndexedSubscript_(states, v87, j, v89, v90, v91, v92, v93, v236, v238);
        v125 = objc_msgSend_objectAtIndexedSubscript_(v118, v119, 0, v120, v121, v122, v123, v124);
        objc_msgSend_setObject_atIndexedSubscript_(v116, v126, v125, j, v127, v128, v129, v130);
      }
    }
  }

  else
  {
    v116 = 0;
  }

  v131 = objc_msgSend_objectAtIndexedSubscript_(imageCopy, v87, 0, v89, v90, v91, v92, v93, v236, v238);
  v135 = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImages_sourceStates_destinationImage_(selfCopy, v132, buffer, v94, v116, v131, v133, v134);
  if (!v135 || (v136 = v135, (v242 = malloc_type_malloc(8 * v29, 0x80040B8603338uLL)) == 0))
  {
    objc_autoreleasePoolPop(v71);
    return 0;
  }

  context = v71;
  if (!objc_msgSend_isResultStateReusedAcrossBatch(selfCopy, v137, v138, v139, v140, v141, v142, v143))
  {
    v242->i64[0] = v136;
    v153 = 0x277CBE000uLL;
    if (v29 == 1)
    {
      goto LABEL_53;
    }

    v154 = 2;
    if (v29 > 2)
    {
      v154 = v29;
    }

    v241 = v154;
    v155 = 1;
    while (1)
    {
      v161 = objc_msgSend_count(images, v144, v145, v146, v147, v148, v149, v150);
      v168 = objc_msgSend_arrayWithCapacity_(*(v153 + 2840), v162, v161, v163, v164, v165, v166, v167);
      v176 = v168;
      if (v161 && v168)
      {
        for (k = 0; k != v161; ++k)
        {
          v178 = objc_msgSend_objectAtIndexedSubscript_(images, v169, k, v171, v172, v173, v174, v175);
          v185 = objc_msgSend_objectAtIndexedSubscript_(v178, v179, v155, v180, v181, v182, v183, v184);
          objc_msgSend_setObject_atIndexedSubscript_(v176, v186, v185, k, v187, v188, v189, v190);
        }
      }

      if (states)
      {
        v191 = objc_msgSend_count(states, v169, v170, v171, v172, v173, v174, v175);
        v156 = objc_msgSend_arrayWithCapacity_(*(v153 + 2840), v192, v191, v193, v194, v195, v196, v197);
        if (v156 && v191)
        {
          bufferCopy = buffer;
          v199 = imageCopy;
          for (m = 0; m != v191; ++m)
          {
            v201 = objc_msgSend_objectAtIndexedSubscript_(states, v169, m, v171, v172, v173, v174, v175);
            v208 = objc_msgSend_objectAtIndexedSubscript_(v201, v202, v155, v203, v204, v205, v206, v207);
            objc_msgSend_setObject_atIndexedSubscript_(v156, v209, v208, m, v210, v211, v212, v213);
          }

          imageCopy = v199;
          buffer = bufferCopy;
          v153 = 0x277CBE000;
          v157 = objc_msgSend_objectAtIndexedSubscript_(imageCopy, v169, v155, v171, v172, v173, v174, v175);
          goto LABEL_37;
        }
      }

      else
      {
        v156 = 0;
      }

      v157 = objc_msgSend_objectAtIndexedSubscript_(imageCopy, v169, v155, v171, v172, v173, v174, v175);
LABEL_37:
      v242->i64[v155++] = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImages_sourceStates_destinationImage_(selfCopy, v158, buffer, v176, v156, v157, v159, v160);
      if (v155 == v241)
      {
        goto LABEL_53;
      }
    }
  }

  if (v29 < 4)
  {
    v151 = 0;
LABEL_51:
    v217 = v29 - v151;
    v218 = v242 + v151;
    do
    {
      *v218++ = v136;
      --v217;
    }

    while (v217);
    goto LABEL_53;
  }

  v151 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  v214 = vdupq_n_s64(v136);
  v215 = v242 + 1;
  v216 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v215[-1] = v214;
    *v215 = v214;
    v215 += 2;
    v216 -= 4;
  }

  while (v216);
  if (v29 != v151)
  {
    goto LABEL_51;
  }

LABEL_53:
  v219 = objc_alloc(MEMORY[0x277CBEA60]);
  v225 = objc_msgSend_initWithObjects_count_(v219, v220, v242, v29, v221, v222, v223, v224);
  free(v242);
  objc_autoreleasePoolPop(context);

  return v225;
}

- (id)resultStateBatchForSourceImages:(id)images sourceStates:(id)states destinationImage:(id)image
{
  imageCopy = image;
  v12 = objc_msgSend_objectAtIndexedSubscript_(images, a2, 0, states, image, v5, v6, v7);
  v27 = objc_msgSend_count(v12, v13, v14, v15, v16, v17, v18, v19);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!images && MTLReportFailureTypeEnabled())
    {
      v226 = objc_opt_class();
      v231 = NSStringFromClass(v226);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0x1E2, @"[%@ resultStateBatchForSourceImages:sourceStates:] Error: sourceImages may not be NULL", v227, v228, v229, v230);
    }

    if (states && objc_msgSend_count(states, v20, v21, v22, v23, v24, v25, v26))
    {
      v34 = 0;
      do
      {
        v35 = objc_msgSend_objectAtIndexedSubscript_(states, v28, v34, v29, v30, v31, v32, v33, v231);
        objc_msgSend_count(v35, v36, v37, v38, v39, v40, v41, v42);
        v49 = objc_msgSend_objectAtIndexedSubscript_(states, v43, v34, v44, v45, v46, v47, v48);
        if (objc_msgSend_count(v49, v50, v51, v52, v53, v54, v55, v56) < v27 && MTLReportFailureTypeEnabled())
        {
          v64 = objc_opt_class();
          v232 = NSStringFromClass(v64);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSNNConcatenation.mm", 0x1E9, @"[%@ resultStateBatchForSourceImages:sourceStates:] Error: if sourceStates is non-NULL, there must be at least as many source states as source images", v65, v66, v67, v68);
        }

        ++v34;
      }

      while (v34 < objc_msgSend_count(states, v57, v58, v59, v60, v61, v62, v63, v232));
    }
  }

  if (!v27)
  {
    return 0;
  }

  v69 = objc_autoreleasePoolPush();
  v77 = objc_msgSend_count(images, v70, v71, v72, v73, v74, v75, v76);
  v84 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v78, v77, v79, v80, v81, v82, v83);
  v92 = v84;
  if (v77 && v84)
  {
    for (i = 0; i != v77; ++i)
    {
      v94 = objc_msgSend_objectAtIndexedSubscript_(images, v85, i, v87, v88, v89, v90, v91, v231);
      v101 = objc_msgSend_objectAtIndexedSubscript_(v94, v95, 0, v96, v97, v98, v99, v100);
      objc_msgSend_setObject_atIndexedSubscript_(v92, v102, v101, i, v103, v104, v105, v106);
    }
  }

  if (states)
  {
    v107 = objc_msgSend_count(states, v85, v86, v87, v88, v89, v90, v91);
    v114 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v108, v107, v109, v110, v111, v112, v113);
    if (v114 && v107)
    {
      for (j = 0; j != v107; ++j)
      {
        v116 = objc_msgSend_objectAtIndexedSubscript_(states, v85, j, v87, v88, v89, v90, v91, v231);
        v123 = objc_msgSend_objectAtIndexedSubscript_(v116, v117, 0, v118, v119, v120, v121, v122);
        objc_msgSend_setObject_atIndexedSubscript_(v114, v124, v123, j, v125, v126, v127, v128);
      }
    }
  }

  else
  {
    v114 = 0;
  }

  v129 = objc_msgSend_objectAtIndexedSubscript_(imageCopy, v85, 0, v87, v88, v89, v90, v91, v231);
  v134 = objc_msgSend_resultStateForSourceImages_sourceStates_destinationImage_(self, v130, v92, v114, v129, v131, v132, v133);
  if (!v134 || (v135 = v134, (v235 = malloc_type_malloc(8 * v27, 0x80040B8603338uLL)) == 0))
  {
    objc_autoreleasePoolPop(v69);
    return 0;
  }

  context = v69;
  if (!objc_msgSend_isResultStateReusedAcrossBatch(self, v136, v137, v138, v139, v140, v141, v142))
  {
    v235->i64[0] = v135;
    v152 = 0x277CBE000uLL;
    if (v27 == 1)
    {
      goto LABEL_52;
    }

    v153 = 2;
    if (v27 > 2)
    {
      v153 = v27;
    }

    v234 = v153;
    v154 = 1;
    while (1)
    {
      v161 = objc_msgSend_count(images, v143, v144, v145, v146, v147, v148, v149);
      v168 = objc_msgSend_arrayWithCapacity_(*(v152 + 2840), v162, v161, v163, v164, v165, v166, v167);
      v176 = v168;
      if (v161 && v168)
      {
        for (k = 0; k != v161; ++k)
        {
          v178 = objc_msgSend_objectAtIndexedSubscript_(images, v169, k, v171, v172, v173, v174, v175);
          v185 = objc_msgSend_objectAtIndexedSubscript_(v178, v179, v154, v180, v181, v182, v183, v184);
          objc_msgSend_setObject_atIndexedSubscript_(v176, v186, v185, k, v187, v188, v189, v190);
        }
      }

      if (states)
      {
        v191 = objc_msgSend_count(states, v169, v170, v171, v172, v173, v174, v175);
        v155 = objc_msgSend_arrayWithCapacity_(*(v152 + 2840), v192, v191, v193, v194, v195, v196, v197);
        if (v155 && v191)
        {
          selfCopy = self;
          v199 = imageCopy;
          for (m = 0; m != v191; ++m)
          {
            v201 = objc_msgSend_objectAtIndexedSubscript_(states, v169, m, v171, v172, v173, v174, v175);
            v208 = objc_msgSend_objectAtIndexedSubscript_(v201, v202, v154, v203, v204, v205, v206, v207);
            objc_msgSend_setObject_atIndexedSubscript_(v155, v209, v208, m, v210, v211, v212, v213);
          }

          imageCopy = v199;
          self = selfCopy;
          v152 = 0x277CBE000;
          v156 = objc_msgSend_objectAtIndexedSubscript_(imageCopy, v169, v154, v171, v172, v173, v174, v175);
          goto LABEL_36;
        }
      }

      else
      {
        v155 = 0;
      }

      v156 = objc_msgSend_objectAtIndexedSubscript_(imageCopy, v169, v154, v171, v172, v173, v174, v175);
LABEL_36:
      v235->i64[v154++] = objc_msgSend_resultStateForSourceImages_sourceStates_destinationImage_(self, v157, v176, v155, v156, v158, v159, v160);
      if (v154 == v234)
      {
        goto LABEL_52;
      }
    }
  }

  if (v27 < 4)
  {
    v150 = 0;
LABEL_50:
    v217 = v27 - v150;
    v218 = v235 + v150;
    do
    {
      *v218++ = v135;
      --v217;
    }

    while (v217);
    goto LABEL_52;
  }

  v150 = v27 & 0xFFFFFFFFFFFFFFFCLL;
  v214 = vdupq_n_s64(v135);
  v215 = v235 + 1;
  v216 = v27 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v215[-1] = v214;
    *v215 = v214;
    v215 += 2;
    v216 -= 4;
  }

  while (v216);
  if (v27 != v150)
  {
    goto LABEL_50;
  }

LABEL_52:
  v219 = objc_alloc(MEMORY[0x277CBEA60]);
  v225 = objc_msgSend_initWithObjects_count_(v219, v220, v235, v27, v221, v222, v223, v224);
  free(v235);
  objc_autoreleasePoolPop(context);

  return v225;
}

- (void)copyToGradientState:(id)state sourceImages:(id)images sourceStates:(id)states destinationImage:(id)image
{
  v13 = objc_msgSend_objectAtIndexedSubscript_(images, a2, 0, images, states, image, v6, v7);
  v34.receiver = self;
  v34.super_class = MPSNNConcatenation;
  [(MPSCNNKernel *)&v34 copyToGradientState:state sourceImage:v13 sourceStates:states destinationImage:image];
  v27 = objc_msgSend_count(images, v14, v15, v16, v17, v18, v19, v20);
  if (*(state + 73) != v27)
  {
    free(*(state + 37));
    *(state + 73) = v27;
    *(state + 37) = malloc_type_calloc(*(state + 73), 0x10uLL, 0x1000040451B5BE8uLL);
    v27 = *(state + 73);
  }

  if (v27)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = MEMORY[0x277CD72F8];
    do
    {
      v32 = (*(objc_msgSend_objectAtIndexedSubscript_(images, v21, v30, v22, v23, v24, v25, v26) + *v31) + 3) & 0xFFFFFFFC;
      v33 = (*(state + 37) + v28);
      *v33 = v29;
      v33[1] = v32;
      v29 += v32;
      ++v30;
      v28 += 16;
    }

    while (v30 < *(state + 73));
  }
}

@end