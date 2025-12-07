@interface MPSCNNBinaryKernel
- (BOOL)setPlugin:(id)plugin;
- (MPSCNNBinaryKernel)init;
- (MPSCNNBinaryKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNBinaryKernel)initWithDevice:(id)device;
- (MPSImageDescriptor)destinationImageDescriptorForSourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates;
- (MPSRegion)primarySourceRegionForDestinationSize:(SEL)size;
- (MPSRegion)secondarySourceRegionForDestinationSize:(SEL)size;
- (MPSState)resultStateForPrimaryImage:(MPSImage *)primaryImage secondaryImage:(MPSImage *)secondaryImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSState)temporaryResultStateForCommandBuffer:(id)commandBuffer primaryImage:(MPSImage *)primaryImage secondaryImage:(MPSImage *)secondaryImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSStateBatch)resultStateBatchForPrimaryImage:(MPSImageBatch *)primaryImage secondaryImage:(MPSImageBatch *)secondaryImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage;
- (MPSStateBatch)temporaryResultStateBatchForCommandBuffer:(id)commandBuffer primaryImage:(MPSImageBatch *)primaryImage secondaryImage:(MPSImageBatch *)secondaryImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage;
- (MTLRegion)clipRect;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method primaryOffset:(id *)offset secondaryOffset:(id *)secondaryOffset kernelOffset:(id *)kernelOffset;
- (id)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryImages:(id)images secondaryImages:(id)secondaryImages destinationStates:(id *)states destinationStateIsTemporary:(BOOL)temporary;
- (id)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryImages:(id)images secondaryImages:(id)secondaryImages inStates:(id)states;
- (id)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryImage:(id)image secondaryImage:(id)secondaryImage destinationState:(id *)state destinationStateIsTemporary:(BOOL)temporary;
- (id)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryImage:(id)image secondaryImage:(id)secondaryImage inState:(id)state;
- (void)copyToBinaryGradientState:(id)state primaryImage:(id)image secondaryImage:(id)secondaryImage sourceStates:(id)states destinationImage:(id)destinationImage;
- (void)dealloc;
- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryImages:(id)images secondaryImages:(id)secondaryImages inStates:(id)states destinationImages:(id)destinationImages;
- (void)encodeInternalBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryImages:(id)images secondaryImages:(id)secondaryImages inStates:(id)states destinationImages:(id)destinationImages clipRect:(id *)rect;
- (void)encodeInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryImage:(id)image secondaryImage:(id)secondaryImage inState:(id)state destinationImage:(id)destinationImage subBatchIndex:(unint64_t)index batchSize:(unint64_t)self0 clipRect:(id *)self1;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryImage:(id)image secondaryImage:(id)secondaryImage inState:(id)state destinationImage:(id)destinationImage subBatchIndex:(unint64_t)index batchSize:(unint64_t)self0;
- (void)encodeWithCoder:(id)coder;
- (void)setClipRect:(MTLRegion *)clipRect;
- (void)setDestinationFeatureChannelOffset:(NSUInteger)destinationFeatureChannelOffset;
- (void)setPrimaryOffset:(MPSOffset *)primaryOffset;
- (void)setPrimarySourceFeatureChannelMaxCount:(NSUInteger)primarySourceFeatureChannelMaxCount;
- (void)setPrimarySourceFeatureChannelOffset:(NSUInteger)primarySourceFeatureChannelOffset;
- (void)setSecondaryOffset:(MPSOffset *)secondaryOffset;
- (void)setSecondarySourceFeatureChannelMaxCount:(NSUInteger)secondarySourceFeatureChannelMaxCount;
- (void)setSecondarySourceFeatureChannelOffset:(NSUInteger)secondarySourceFeatureChannelOffset;
@end

@implementation MPSCNNBinaryKernel

- (MPSCNNBinaryKernel)init
{
  v3 = MTLCreateSystemDefaultDevice();
  if (v3)
  {

    return objc_msgSend_initWithDevice_(self, v4, v3, v5, v6, v7, v8, v9);
  }

  else
  {

    return 0;
  }
}

- (MPSCNNBinaryKernel)initWithDevice:(id)device
{
  v35.receiver = self;
  v35.super_class = MPSCNNBinaryKernel;
  v3 = [(MPSKernel *)&v35 initWithDevice:device];
  v11 = v3;
  if (v3)
  {
    *(v3 + 12) = 0;
    *(v3 + 13) = 0;
    *(v3 + 11) = 0;
    *(v3 + 15) = 0;
    *(v3 + 16) = 0;
    *(v3 + 14) = 0;
    v13 = *(MEMORY[0x277CD7200] + 16);
    v12 = *(MEMORY[0x277CD7200] + 32);
    *(v3 + 136) = *MEMORY[0x277CD7200];
    *(v3 + 152) = v13;
    *(v3 + 168) = v12;
    *(v3 + 25) = 0;
    *(v3 + 24) = 0;
    *(v3 + 23) = 0;
    *(v3 + 27) = -1;
    *(v3 + 26) = -1;
    *(v3 + 44) = 0;
    *(v3 + 45) = 0;
    *(v3 + 92) = 1;
    *(v3 + 31) = 1;
    *(v3 + 30) = 1;
    *(v3 + 32) = 1;
    *(v3 + 33) = 1;
    *(v3 + 35) = 1;
    *(v3 + 34) = 1;
    *(v3 + 37) = 1;
    *(v3 + 36) = 1;
    *(v3 + 39) = 1;
    *(v3 + 38) = 1;
    *(v3 + 41) = 1;
    *(v3 + 40) = 1;
    v3[336] = 0;
    v3[337] = 0;
    *(v3 + 47) = 0;
    *(v3 + 49) = 0;
    *(v3 + 48) = 0;
    *(v3 + 28) = 0;
    v3[232] = 0;
    *(v3 + 51) = 0;
    v14 = objc_msgSend_defaultAllocator(MEMORY[0x277CD72A8], v4, v5, v6, v7, v8, v9, v10);
    objc_msgSend_setDestinationImageAllocator_(v11, v15, v14, v16, v17, v18, v19, v20);
    v27 = objc_msgSend_paddingWithMethod_(MPSNNDefaultPadding, v21, 16, v22, v23, v24, v25, v26);
    objc_msgSend_setPadding_(v11, v28, v27, v29, v30, v31, v32, v33);
  }

  return v11;
}

- (MPSCNNBinaryKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v227.receiver = self;
  v227.super_class = MPSCNNBinaryKernel;
  v5 = [(MPSKernel *)&v227 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if ((*(&v5->super.super.isa + *MEMORY[0x277CD7358]) & 0xFF00) == 0x100)
  {
    v5->_primaryOffset.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSCNNBinaryKernel.primaryOffset.x", v7, v8, v9, v10, v11);
    v12->_primaryOffset.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v13, @"MPSCNNBinaryKernel.primaryOffset.y", v14, v15, v16, v17, v18);
    v12->_primaryOffset.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v19, @"MPSCNNBinaryKernel.primaryOffset.z", v20, v21, v22, v23, v24);
    v12->_secondaryOffset.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v25, @"MPSCNNBinaryKernel.secondaryOffset.x", v26, v27, v28, v29, v30);
    v12->_secondaryOffset.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v31, @"MPSCNNBinaryKernel.secondaryOffset.y", v32, v33, v34, v35, v36);
    v12->_secondaryOffset.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v37, @"MPSCNNBinaryKernel.secondaryOffset.z", v38, v39, v40, v41, v42);
    v12->_clipRect.origin.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v43, @"MPSCNNBinaryKernel.clipRect.origin.x", v44, v45, v46, v47, v48);
    v12->_clipRect.origin.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v49, @"MPSCNNBinaryKernel.clipRect.origin.y", v50, v51, v52, v53, v54);
    v12->_clipRect.origin.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v55, @"MPSCNNBinaryKernel.clipRect.origin.z", v56, v57, v58, v59, v60);
    v12->_clipRect.size.width = objc_msgSend_decodeInt64ForKey_(aDecoder, v61, @"MPSCNNBinaryKernel.clipRect.size.width", v62, v63, v64, v65, v66);
    v12->_clipRect.size.height = objc_msgSend_decodeInt64ForKey_(aDecoder, v67, @"MPSCNNBinaryKernel.clipRect.size.height", v68, v69, v70, v71, v72);
    v12->_clipRect.size.depth = objc_msgSend_decodeInt64ForKey_(aDecoder, v73, @"MPSCNNBinaryKernel.clipRect.size.depth", v74, v75, v76, v77, v78);
    v12->_destinationFeatureChannelOffset = objc_msgSend_decodeInt64ForKey_(aDecoder, v79, @"MPSCNNBinaryKernel.destinationFeatureChannelOffset", v80, v81, v82, v83, v84);
    v12->_primarySourceFeatureChannelOffset = objc_msgSend_decodeInt64ForKey_(aDecoder, v85, @"MPSCNNBinaryKernel.sourceFeatureChannelOffset1", v86, v87, v88, v89, v90);
    v12->_secondarySourceFeatureChannelOffset = objc_msgSend_decodeInt64ForKey_(aDecoder, v91, @"MPSCNNBinaryKernel.sourceFeatureChannelOffset2", v92, v93, v94, v95, v96);
    v12->_secondarySourceFeatureChannelMaxCount = -1;
    v12->_primarySourceFeatureChannelMaxCount = -1;
    if (objc_msgSend_containsValueForKey_(aDecoder, v97, @"MPSCNNBinaryKernel.sourceFeatureChannelMaxCount1", v98, v99, v100, v101, v102))
    {
      v12->_primarySourceFeatureChannelMaxCount = objc_msgSend_decodeInt64ForKey_(aDecoder, v103, @"MPSCNNBinaryKernel.sourceFeatureChannelMaxCount1", v104, v105, v106, v107, v108);
    }

    if (objc_msgSend_containsValueForKey_(aDecoder, v103, @"MPSCNNBinaryKernel.sourceFeatureChannelMaxCount2", v104, v105, v106, v107, v108))
    {
      v12->_secondarySourceFeatureChannelMaxCount = objc_msgSend_decodeInt64ForKey_(aDecoder, v109, @"MPSCNNBinaryKernel.sourceFeatureChannelMaxCount2", v110, v111, v112, v113, v114);
    }

    v12->_primaryEdgeMode = objc_msgSend_decodeInt64ForKey_(aDecoder, v109, @"MPSCNNBinaryKernel.primaryEdgeMode", v110, v111, v112, v113, v114);
    v12->_secondaryEdgeMode = objc_msgSend_decodeInt64ForKey_(aDecoder, v115, @"MPSCNNBinaryKernel.secondaryEdgeMode", v116, v117, v118, v119, v120);
    v12->_checkFlags = objc_msgSend_decodeInt64ForKey_(aDecoder, v121, @"MPSCNNBinaryKernel.checkFlags", v122, v123, v124, v125, v126);
    v12->_primaryKernelWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v127, @"MPSCNNBinaryKernel.kernelWidth", v128, v129, v130, v131, v132);
    v12->_primaryKernelHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v133, @"MPSCNNBinaryKernel.kernelHeight", v134, v135, v136, v137, v138);
    v12->_secondaryKernelWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v139, @"MPSCNNBinaryKernel.secondaryKernelWidth", v140, v141, v142, v143, v144);
    v12->_secondaryKernelHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v145, @"MPSCNNBinaryKernel.secondaryKernelHeight", v146, v147, v148, v149, v150);
    v12->_primaryStrideInPixelsX = objc_msgSend_decodeInt64ForKey_(aDecoder, v151, @"MPSCNNBinaryKernel.primaryStride.x", v152, v153, v154, v155, v156);
    v12->_primaryStrideInPixelsY = objc_msgSend_decodeInt64ForKey_(aDecoder, v157, @"MPSCNNBinaryKernel.primaryStride.y", v158, v159, v160, v161, v162);
    v12->_secondaryStrideInPixelsX = objc_msgSend_decodeInt64ForKey_(aDecoder, v163, @"MPSCNNBinaryKernel.secondaryStride.x", v164, v165, v166, v167, v168);
    v12->_secondaryStrideInPixelsY = objc_msgSend_decodeInt64ForKey_(aDecoder, v169, @"MPSCNNBinaryKernel.secondaryStride.y", v170, v171, v172, v173, v174);
    v12->_primaryDilationRateX = objc_msgSend_decodeInt64ForKey_(aDecoder, v175, @"MPSCNNBinaryKernel.dilationRate.x", v176, v177, v178, v179, v180);
    v12->_primaryDilationRateY = objc_msgSend_decodeInt64ForKey_(aDecoder, v181, @"MPSCNNBinaryKernel.dilationRate.y", v182, v183, v184, v185, v186);
    v12->_secondaryDilationRateX = objc_msgSend_decodeInt64ForKey_(aDecoder, v187, @"MPSCNNBinaryKernel.secondaryDilationRate.x", v188, v189, v190, v191, v192);
    v12->_secondaryDilationRateY = objc_msgSend_decodeInt64ForKey_(aDecoder, v193, @"MPSCNNBinaryKernel.secondaryDilationRate.y", v194, v195, v196, v197, v198);
    v12->_isBackwards = objc_msgSend_decodeBoolForKey_(aDecoder, v199, @"MPSCNNBinaryKernel.isBackward", v200, v201, v202, v203, v204);
    v12->_supportsBroadcasting = objc_msgSend_decodeBoolForKey_(aDecoder, v205, @"MPSCNNBinaryKernel.supportsBroadcasting", v206, v207, v208, v209, v210);
    v12->_encode = 0;
    v12->_encodeData = 0;
    v12->_plugin = 0;
    v215 = sub_239D0D098(aDecoder, @"MPSCNNBinaryKernel.data", @"MPSCNNBinaryKernel.padding", &unk_284D166E0, v211, v212, v213, v214);
    if (v215)
    {
      v12->_padding = v215;
      v220 = sub_239D0D098(aDecoder, @"MPSCNNBinaryKernel.data2", @"MPSCNNBinaryKernel.allocator", &unk_284D1B458, v216, v217, v218, v219);
      if (v220)
      {
        v12->_destinationImageAllocator = v220;
        return v12;
      }
    }
  }

  else if ((*(&v5->super.super.isa + *MEMORY[0x277CD7358]) & 0xFFFF0000) != 0x10000 && MTLReportFailureTypeEnabled())
  {
    v222 = objc_opt_class();
    NSStringFromClass(v222);
    MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x8E, @"[%@ initWithCoder:device:] Failed: unsupported file version.", v223, v224, v225, v226);
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 1) = 1;
  v219.receiver = self;
  v219.super_class = MPSCNNBinaryKernel;
  [(MPSKernel *)&v219 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_primaryOffset.x, @"MPSCNNBinaryKernel.primaryOffset.x", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_primaryOffset.y, @"MPSCNNBinaryKernel.primaryOffset.y", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(coder, v15, self->_primaryOffset.z, @"MPSCNNBinaryKernel.primaryOffset.z", v16, v17, v18, v19);
  objc_msgSend_encodeInt64_forKey_(coder, v20, self->_secondaryOffset.x, @"MPSCNNBinaryKernel.secondaryOffset.x", v21, v22, v23, v24);
  objc_msgSend_encodeInt64_forKey_(coder, v25, self->_secondaryOffset.y, @"MPSCNNBinaryKernel.secondaryOffset.y", v26, v27, v28, v29);
  objc_msgSend_encodeInt64_forKey_(coder, v30, self->_secondaryOffset.z, @"MPSCNNBinaryKernel.secondaryOffset.z", v31, v32, v33, v34);
  objc_msgSend_encodeInt64_forKey_(coder, v35, self->_clipRect.origin.x, @"MPSCNNBinaryKernel.clipRect.origin.x", v36, v37, v38, v39);
  objc_msgSend_encodeInt64_forKey_(coder, v40, self->_clipRect.origin.y, @"MPSCNNBinaryKernel.clipRect.origin.y", v41, v42, v43, v44);
  objc_msgSend_encodeInt64_forKey_(coder, v45, self->_clipRect.origin.z, @"MPSCNNBinaryKernel.clipRect.origin.z", v46, v47, v48, v49);
  objc_msgSend_encodeInt64_forKey_(coder, v50, self->_clipRect.size.width, @"MPSCNNBinaryKernel.clipRect.size.width", v51, v52, v53, v54);
  objc_msgSend_encodeInt64_forKey_(coder, v55, self->_clipRect.size.height, @"MPSCNNBinaryKernel.clipRect.size.height", v56, v57, v58, v59);
  objc_msgSend_encodeInt64_forKey_(coder, v60, self->_clipRect.size.depth, @"MPSCNNBinaryKernel.clipRect.size.depth", v61, v62, v63, v64);
  objc_msgSend_encodeInt64_forKey_(coder, v65, self->_destinationFeatureChannelOffset, @"MPSCNNBinaryKernel.destinationFeatureChannelOffset", v66, v67, v68, v69);
  objc_msgSend_encodeInt64_forKey_(coder, v70, self->_primarySourceFeatureChannelOffset, @"MPSCNNBinaryKernel.sourceFeatureChannelOffset1", v71, v72, v73, v74);
  objc_msgSend_encodeInt64_forKey_(coder, v75, self->_secondarySourceFeatureChannelOffset, @"MPSCNNBinaryKernel.sourceFeatureChannelOffset2", v76, v77, v78, v79);
  objc_msgSend_encodeInt64_forKey_(coder, v80, self->_primarySourceFeatureChannelMaxCount, @"MPSCNNBinaryKernel.sourceFeatureChannelMaxCount1", v81, v82, v83, v84);
  objc_msgSend_encodeInt64_forKey_(coder, v85, self->_secondarySourceFeatureChannelMaxCount, @"MPSCNNBinaryKernel.sourceFeatureChannelMaxCount2", v86, v87, v88, v89);
  objc_msgSend_encodeInt64_forKey_(coder, v90, self->_primaryEdgeMode, @"MPSCNNBinaryKernel.primaryEdgeMode", v91, v92, v93, v94);
  objc_msgSend_encodeInt64_forKey_(coder, v95, self->_secondaryEdgeMode, @"MPSCNNBinaryKernel.secondaryEdgeMode", v96, v97, v98, v99);
  objc_msgSend_encodeInt64_forKey_(coder, v100, self->_checkFlags, @"MPSCNNBinaryKernel.checkFlags", v101, v102, v103, v104);
  objc_msgSend_encodeInt64_forKey_(coder, v105, self->_primaryKernelWidth, @"MPSCNNBinaryKernel.kernelWidth", v106, v107, v108, v109);
  objc_msgSend_encodeInt64_forKey_(coder, v110, self->_primaryKernelHeight, @"MPSCNNBinaryKernel.kernelHeight", v111, v112, v113, v114);
  objc_msgSend_encodeInt64_forKey_(coder, v115, self->_secondaryKernelWidth, @"MPSCNNBinaryKernel.secondaryKernelWidth", v116, v117, v118, v119);
  objc_msgSend_encodeInt64_forKey_(coder, v120, self->_secondaryKernelHeight, @"MPSCNNBinaryKernel.secondaryKernelHeight", v121, v122, v123, v124);
  objc_msgSend_encodeInt64_forKey_(coder, v125, self->_primaryStrideInPixelsX, @"MPSCNNBinaryKernel.primaryStride.x", v126, v127, v128, v129);
  objc_msgSend_encodeInt64_forKey_(coder, v130, self->_primaryStrideInPixelsY, @"MPSCNNBinaryKernel.primaryStride.y", v131, v132, v133, v134);
  objc_msgSend_encodeInt64_forKey_(coder, v135, self->_secondaryStrideInPixelsX, @"MPSCNNBinaryKernel.secondaryStride.x", v136, v137, v138, v139);
  objc_msgSend_encodeInt64_forKey_(coder, v140, self->_secondaryStrideInPixelsY, @"MPSCNNBinaryKernel.secondaryStride.y", v141, v142, v143, v144);
  objc_msgSend_encodeInt64_forKey_(coder, v145, self->_primaryDilationRateX, @"MPSCNNBinaryKernel.dilationRate.x", v146, v147, v148, v149);
  objc_msgSend_encodeInt64_forKey_(coder, v150, self->_primaryDilationRateY, @"MPSCNNBinaryKernel.dilationRate.y", v151, v152, v153, v154);
  objc_msgSend_encodeInt64_forKey_(coder, v155, self->_secondaryDilationRateX, @"MPSCNNBinaryKernel.secondaryDilationRate.x", v156, v157, v158, v159);
  objc_msgSend_encodeInt64_forKey_(coder, v160, self->_secondaryDilationRateY, @"MPSCNNBinaryKernel.secondaryDilationRate.y", v161, v162, v163, v164);
  objc_msgSend_encodeBool_forKey_(coder, v165, self->_isBackwards, @"MPSCNNBinaryKernel.isBackward", v166, v167, v168, v169);
  objc_msgSend_encodeBool_forKey_(coder, v170, self->_supportsBroadcasting, @"MPSCNNBinaryKernel.supportsBroadcasting", v171, v172, v173, v174);
  padding = self->_padding;
  v176 = objc_autoreleasePoolPush();
  v177 = objc_opt_class();
  if (v177)
  {
    v178 = NSStringFromClass(v177);
    v185 = objc_msgSend_cStringUsingEncoding_(v178, v179, 1, v180, v181, v182, v183, v184);
    if (v185)
    {
      v186 = v185;
      v187 = strlen(v185);
      if (v187)
      {
        objc_msgSend_encodeBytes_length_forKey_(coder, v188, v186, v187 + 1, @"MPSCNNBinaryKernel.data", v189, v190, v191);
        objc_msgSend_encodeObject_forKey_(coder, v192, padding, @"MPSCNNBinaryKernel.padding", v193, v194, v195, v196);
      }
    }
  }

  objc_autoreleasePoolPop(v176);
  destinationImageAllocator = self->_destinationImageAllocator;
  v198 = objc_autoreleasePoolPush();
  v199 = objc_opt_class();
  if (v199)
  {
    v200 = NSStringFromClass(v199);
    v207 = objc_msgSend_cStringUsingEncoding_(v200, v201, 1, v202, v203, v204, v205, v206);
    if (v207)
    {
      v208 = v207;
      v209 = strlen(v207);
      if (v209)
      {
        objc_msgSend_encodeBytes_length_forKey_(coder, v210, v208, v209 + 1, @"MPSCNNBinaryKernel.data2", v211, v212, v213);
        objc_msgSend_encodeObject_forKey_(coder, v214, destinationImageAllocator, @"MPSCNNBinaryKernel.allocator", v215, v216, v217, v218);
      }
    }
  }

  objc_autoreleasePoolPop(v198);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v13.receiver = self;
  v13.super_class = MPSCNNBinaryKernel;
  result = [(MPSKernel *)&v13 copyWithZone:zone device:device];
  if (result)
  {
    z = self->_primaryOffset.z;
    *(result + 88) = *&self->_primaryOffset.x;
    *(result + 13) = z;
    v7 = self->_secondaryOffset.z;
    *(result + 7) = *&self->_secondaryOffset.x;
    *(result + 16) = v7;
    v9 = *&self->_clipRect.origin.z;
    v8 = *&self->_clipRect.size.height;
    *(result + 136) = *&self->_clipRect.origin.x;
    *(result + 152) = v9;
    *(result + 168) = v8;
    *(result + 23) = self->_destinationFeatureChannelOffset;
    *(result + 24) = self->_primarySourceFeatureChannelOffset;
    *(result + 25) = self->_secondarySourceFeatureChannelOffset;
    *(result + 26) = self->_primarySourceFeatureChannelMaxCount;
    *(result + 27) = self->_secondarySourceFeatureChannelMaxCount;
    *(result + 31) = self->_primaryKernelHeight;
    *(result + 30) = self->_primaryKernelWidth;
    *(result + 33) = self->_secondaryKernelHeight;
    *(result + 32) = self->_secondaryKernelWidth;
    *(result + 34) = self->_primaryStrideInPixelsX;
    *(result + 35) = self->_primaryStrideInPixelsY;
    *(result + 36) = self->_secondaryStrideInPixelsX;
    *(result + 37) = self->_secondaryStrideInPixelsY;
    *(result + 38) = self->_primaryDilationRateX;
    *(result + 39) = self->_primaryDilationRateY;
    *(result + 40) = self->_secondaryDilationRateX;
    *(result + 41) = self->_secondaryDilationRateY;
    *(result + 336) = self->_isBackwards;
    *(result + 337) = self->_supportsBroadcasting;
    v10 = result;
    *(result + 43) = self->_padding;
    v10->_primaryEdgeMode = self->_primaryEdgeMode;
    v10->_secondaryEdgeMode = self->_secondaryEdgeMode;
    v10->_checkFlags = self->_checkFlags;
    v10->_encode = self->_encode;
    v10->_batchEncode = self->_batchEncode;
    encodeData = self->_encodeData;
    if (encodeData == self)
    {
      encodeData = v10;
    }

    v10->_encodeData = encodeData;
    v10->_plugin = 0;
    v12 = self->_destinationImageAllocator;
    result = v10;
    v10->_destinationImageAllocator = v12;
  }

  return result;
}

- (id)debugDescription
{
  if (!dladdr(self->_encode, &v69))
  {
    v69.dli_sname = "<NULL>";
  }

  v67 = MEMORY[0x277CCACA8];
  v68.receiver = self;
  v68.super_class = MPSCNNBinaryKernel;
  v3 = [(MPSKernel *)&v68 debugDescription];
  x = self->_primaryOffset.x;
  y = self->_primaryOffset.y;
  primarySourceFeatureChannelOffset = self->_primarySourceFeatureChannelOffset;
  z = self->_primaryOffset.z;
  primarySourceFeatureChannelMaxCount = self->_primarySourceFeatureChannelMaxCount;
  v9 = self->_secondaryOffset.x;
  v10 = self->_secondaryOffset.y;
  secondarySourceFeatureChannelOffset = self->_secondarySourceFeatureChannelOffset;
  secondarySourceFeatureChannelMaxCount = self->_secondarySourceFeatureChannelMaxCount;
  destinationFeatureChannelOffset = self->_destinationFeatureChannelOffset;
  v14 = self->_secondaryOffset.z;
  primaryEdgeMode = self->_primaryEdgeMode;
  secondaryEdgeMode = self->_secondaryEdgeMode;
  primaryKernelWidth = self->_primaryKernelWidth;
  primaryKernelHeight = self->_primaryKernelHeight;
  secondaryKernelWidth = self->_secondaryKernelWidth;
  secondaryKernelHeight = self->_secondaryKernelHeight;
  primaryStrideInPixelsX = self->_primaryStrideInPixelsX;
  secondaryStrideInPixelsX = self->_secondaryStrideInPixelsX;
  primaryDilationRateX = self->_primaryDilationRateX;
  primaryDilationRateY = self->_primaryDilationRateY;
  secondaryDilationRateX = self->_secondaryDilationRateX;
  secondaryDilationRateY = self->_secondaryDilationRateY;
  isBackwards = self->_isBackwards;
  supportsBroadcasting = self->_supportsBroadcasting;
  padding = self->_padding;
  v26 = self->_clipRect.origin.x;
  v66 = self->_clipRect.origin.y;
  v64 = self->_clipRect.origin.z;
  width = self->_clipRect.size.width;
  height = self->_clipRect.size.height;
  depth = self->_clipRect.size.depth;
  v27 = (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2];
  dli_sname = v69.dli_sname;
  if (padding)
  {
    v46 = primaryDilationRateX;
    v29 = v3;
    v56 = destinationFeatureChannelOffset;
    v30 = x;
    v45 = y;
    v48 = v69.dli_sname;
    v31 = z;
    v52 = secondaryKernelHeight;
    v53 = primaryEdgeMode;
    v32 = primarySourceFeatureChannelOffset;
    v33 = primarySourceFeatureChannelMaxCount;
    v55 = primaryKernelWidth;
    v51 = v9;
    v54 = secondaryKernelWidth;
    v34 = v10;
    v49 = primaryStrideInPixelsX;
    v35 = secondarySourceFeatureChannelOffset;
    v47 = secondaryStrideInPixelsX;
    v36 = secondarySourceFeatureChannelMaxCount;
    v57 = v14;
    v37 = secondaryEdgeMode;
    v50 = v27;
    v44 = isBackwards;
    v38 = objc_msgSend_debugDescription(padding, primarySourceFeatureChannelOffset, primarySourceFeatureChannelMaxCount, v9, v10, secondarySourceFeatureChannelOffset, secondarySourceFeatureChannelMaxCount, v14);
    isBackwards = v44;
    secondaryEdgeMode = v37;
    secondarySourceFeatureChannelMaxCount = v36;
    secondarySourceFeatureChannelOffset = v35;
    primaryStrideInPixelsX = v49;
    v27 = v50;
    v10 = v34;
    secondaryKernelWidth = v54;
    primaryKernelWidth = v55;
    primarySourceFeatureChannelMaxCount = v33;
    v9 = v51;
    secondaryKernelHeight = v52;
    primarySourceFeatureChannelOffset = v32;
    primaryEdgeMode = v53;
    z = v31;
    secondaryStrideInPixelsX = v47;
    dli_sname = v48;
    x = v30;
    destinationFeatureChannelOffset = v56;
    v14 = v57;
    v3 = v29;
    y = v45;
    primaryDilationRateX = v46;
  }

  else
  {
    v38 = @"<nil>";
  }

  v39 = "NO";
  if (supportsBroadcasting)
  {
    v40 = "YES";
  }

  else
  {
    v40 = "NO";
  }

  if (isBackwards)
  {
    v39 = "YES";
  }

  v41 = "MPSImageEdgeModeZero";
  if (secondaryEdgeMode == 1)
  {
    v42 = "MPSImageEdgeModeClamp";
  }

  else
  {
    v42 = "MPSImageEdgeModeZero";
  }

  if (primaryEdgeMode == 1)
  {
    v41 = "MPSImageEdgeModeClamp";
  }

  return objc_msgSend_stringWithFormat_(v67, primarySourceFeatureChannelOffset, @"%@\n\tprimaryOffset:        {%ld,%ld,%ld}  feature channel offset {loc: %ld  len: %ld}\n\tsecondaryOffset:        {%ld,%ld,%ld}  feature channel offset {loc: %ld len: %ld}\n\tclip:          origin{%lu,%lu,%lu} size{%lu,%lu,%lu} destChannelOffset{%ld} \n\tdevice:        %p\n\tprimary edge mode:     %s\n\tsecondary edge mode:     %s\n\tEncode Proc:   %s\n\tKernel Size:   {%lu x %lu}\n\t2nd KernelSize: {%lu x %lu}\n\tprimary stride:      {%lu x %lu}\n\tsecondary stride:      {%lu x %lu}\n\tdilation rate:        {%lu x %lu}\n\t2nd dilation rate:    {%lu x %lu}\n\tbackwards?  %s\n\tbroadcasting?  %s\n\tpadding:       %@", v9, v10, secondarySourceFeatureChannelOffset, secondarySourceFeatureChannelMaxCount, v14, v3, x, y, z, primarySourceFeatureChannelOffset, primarySourceFeatureChannelMaxCount, v9, v10, v14, secondarySourceFeatureChannelOffset, secondarySourceFeatureChannelMaxCount, v26, v66, v64, width, height, depth, destinationFeatureChannelOffset, v27, v41, v42, dli_sname, primaryKernelWidth, primaryKernelHeight, secondaryKernelWidth, secondaryKernelHeight, primaryStrideInPixelsX, primaryStrideInPixelsX, secondaryStrideInPixelsX, secondaryStrideInPixelsX, primaryDilationRateX, primaryDilationRateY, secondaryDilationRateX, secondaryDilationRateY, v39, v40, v38);
}

- (MPSRegion)primarySourceRegionForDestinationSize:(SEL)size
{
  memset(v11, 0, sizeof(v11));
  v6 = *&a4->var0;
  v10.depth = a4->var2;
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
  v6 = *&a4->var0;
  v10.depth = a4->var2;
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

- (void)setDestinationFeatureChannelOffset:(NSUInteger)destinationFeatureChannelOffset
{
  if ((destinationFeatureChannelOffset & 3) != 0 && (*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    v5 = MTLReportFailureTypeEnabled();
    v10 = destinationFeatureChannelOffset;
    v11 = v5;
    selfCopy2 = self;
    if (v11)
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x175, @"destinationFeatureChannelOffset must be multiple of 4", v6, v7, v8, v9);
      selfCopy2 = self;
      v10 = destinationFeatureChannelOffset;
    }

    selfCopy2->_destinationFeatureChannelOffset = v10;
  }

  else
  {
    self->_destinationFeatureChannelOffset = destinationFeatureChannelOffset;
  }
}

- (void)setPrimarySourceFeatureChannelOffset:(NSUInteger)primarySourceFeatureChannelOffset
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) != 0 || (primarySourceFeatureChannelOffset & 3) == 0 || (self->_checkFlags & 0x20000) != 0)
  {
    self->_primarySourceFeatureChannelOffset = primarySourceFeatureChannelOffset;
  }

  else
  {
    v7 = MTLReportFailureTypeEnabled();
    v9 = primarySourceFeatureChannelOffset;
    selfCopy2 = self;
    if (v7)
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x17D, @"primarySourceFeatureChannelOffset must be multiple of 4", v3, v4, v5, v6);
      v9 = primarySourceFeatureChannelOffset;
      selfCopy2 = self;
    }

    selfCopy2->_primarySourceFeatureChannelOffset = v9;
  }
}

- (void)setSecondarySourceFeatureChannelOffset:(NSUInteger)secondarySourceFeatureChannelOffset
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) != 0 || (secondarySourceFeatureChannelOffset & 3) == 0 || (self->_checkFlags & 0x20000) != 0)
  {
    self->_secondarySourceFeatureChannelOffset = secondarySourceFeatureChannelOffset;
  }

  else
  {
    v7 = MTLReportFailureTypeEnabled();
    v9 = secondarySourceFeatureChannelOffset;
    selfCopy2 = self;
    if (v7)
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x185, @"secondarySourceFeatureChannelOffset must be multiple of 4", v3, v4, v5, v6);
      v9 = secondarySourceFeatureChannelOffset;
      selfCopy2 = self;
    }

    selfCopy2->_secondarySourceFeatureChannelOffset = v9;
  }
}

- (void)setPrimarySourceFeatureChannelMaxCount:(NSUInteger)primarySourceFeatureChannelMaxCount
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) != 0 || (self->_checkFlags & 0x20000) != 0 || primarySourceFeatureChannelMaxCount == -1 || (primarySourceFeatureChannelMaxCount & 3) == 0)
  {
    self->_primarySourceFeatureChannelMaxCount = primarySourceFeatureChannelMaxCount;
  }

  else
  {
    v7 = MTLReportFailureTypeEnabled();
    v9 = primarySourceFeatureChannelMaxCount;
    selfCopy2 = self;
    if (v7)
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x18D, @"primarySourceFeatureChannelMaxCount must be multiple of 4", v3, v4, v5, v6);
      v9 = primarySourceFeatureChannelMaxCount;
      selfCopy2 = self;
    }

    selfCopy2->_primarySourceFeatureChannelMaxCount = v9;
  }
}

- (void)setSecondarySourceFeatureChannelMaxCount:(NSUInteger)secondarySourceFeatureChannelMaxCount
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) != 0 || (self->_checkFlags & 0x20000) != 0 || secondarySourceFeatureChannelMaxCount == -1 || (secondarySourceFeatureChannelMaxCount & 3) == 0)
  {
    self->_secondarySourceFeatureChannelMaxCount = secondarySourceFeatureChannelMaxCount;
  }

  else
  {
    v7 = MTLReportFailureTypeEnabled();
    v9 = secondarySourceFeatureChannelMaxCount;
    selfCopy2 = self;
    if (v7)
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x195, @"secondarySourceFeatureChannelMaxCount must be multiple of 4", v3, v4, v5, v6);
      v9 = secondarySourceFeatureChannelMaxCount;
      selfCopy2 = self;
    }

    selfCopy2->_secondarySourceFeatureChannelMaxCount = v9;
  }
}

- (id)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryImage:(id)image secondaryImage:(id)secondaryImage inState:(id)state
{
  v33[2] = *MEMORY[0x277D85DE8];
  v33[0] = image;
  v33[1] = secondaryImage;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v33, 2, image, secondaryImage, state, v7);
  v20 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v15, v14, 0, v16, v17, v18, v19);
  if (*(&self->super.super.isa + *MEMORY[0x277CD7378]))
  {
    if (!v20)
    {
      return 0;
    }
  }

  else if (!v20)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v25 = objc_opt_class();
      NSStringFromClass(v25);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x1DB, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:] Unable to create MPSImageDescriptor for destination.  Encode failed.\n", v26, v27, v28, v29);
    }

    return 0;
  }

  v30 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(self->_destinationImageAllocator, v21, buffer, v20, self, v22, v23, v24);
  if (v30)
  {
    objc_msgSend_encodeToCommandEncoder_commandBuffer_primaryImage_secondaryImage_inState_destinationImage_(self, v31, encoder, buffer, image, secondaryImage, state, v30);
  }

  return v30;
}

- (id)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryImage:(id)image secondaryImage:(id)secondaryImage destinationState:(id *)state destinationStateIsTemporary:(BOOL)temporary
{
  temporaryCopy = temporary;
  v39[2] = *MEMORY[0x277D85DE8];
  v39[0] = image;
  v39[1] = secondaryImage;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v39, 2, image, secondaryImage, state, temporary);
  v21 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v16, v15, 0, v17, v18, v19, v20);
  if (*(&self->super.super.isa + *MEMORY[0x277CD7378]))
  {
    if (!v21)
    {
      return 0;
    }
  }

  else if (!v21)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v26 = objc_opt_class();
      NSStringFromClass(v26);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x1FF, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:] Unable to create MPSImageDescriptor for destination.  Encode failed.\n", v27, v28, v29, v30);
    }

    return 0;
  }

  v31 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(self->_destinationImageAllocator, v22, buffer, v21, self, v23, v24, v25);
  if (v31)
  {
    v35 = temporaryCopy ? objc_msgSend_temporaryResultStateForCommandBuffer_primaryImage_secondaryImage_sourceStates_destinationImage_(self, v32, buffer, image, secondaryImage, 0, v31, v34) : objc_msgSend_resultStateForPrimaryImage_secondaryImage_sourceStates_destinationImage_(self, v32, image, secondaryImage, 0, v31, v33, v34);
    v37 = v35;
    objc_msgSend_encodeToCommandEncoder_commandBuffer_primaryImage_secondaryImage_inState_destinationImage_(self, v36, encoder, buffer, image, secondaryImage, v35, v31);
    if (state)
    {
      *state = v37;
    }
  }

  return v31;
}

- (void)encodeInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryImage:(id)image secondaryImage:(id)secondaryImage inState:(id)state destinationImage:(id)destinationImage subBatchIndex:(unint64_t)index batchSize:(unint64_t)self0 clipRect:(id *)self1
{
  secondaryImageCopy = secondaryImage;
  imageCopy = image;
  encoderCopy = encoder;
  primarySourceFeatureChannelOffset = self->_primarySourceFeatureChannelOffset;
  checkFlags = self->_checkFlags;
  if ((checkFlags & 0x2000) == 0)
  {
    v18 = *(image + *MEMORY[0x277CD72F8]);
    if (v18 >= primarySourceFeatureChannelOffset)
    {
      v19 = self->_primarySourceFeatureChannelOffset;
    }

    else
    {
      v19 = *(image + *MEMORY[0x277CD72F8]);
    }

    v20 = v18 - v19;
    if (v20 >= self->_primarySourceFeatureChannelMaxCount)
    {
      primarySourceFeatureChannelMaxCount = self->_primarySourceFeatureChannelMaxCount;
    }

    else
    {
      primarySourceFeatureChannelMaxCount = v20;
    }

    imageCopy = sub_239D10394(buffer, encoder, imageCopy, v19, primarySourceFeatureChannelMaxCount, secondaryImage, state, destinationImage);
    primarySourceFeatureChannelOffset = 0;
    checkFlags = self->_checkFlags;
  }

  bufferCopy = buffer;
  v465 = primarySourceFeatureChannelOffset;
  if ((checkFlags & 0x2000) != 0)
  {
    secondarySourceFeatureChannelOffset = self->_secondarySourceFeatureChannelOffset;
  }

  else
  {
    v22 = *(&secondaryImageCopy->super.isa + *MEMORY[0x277CD72F8]);
    if (v22 >= self->_secondarySourceFeatureChannelOffset)
    {
      v23 = self->_secondarySourceFeatureChannelOffset;
    }

    else
    {
      v23 = *(&secondaryImageCopy->super.isa + *MEMORY[0x277CD72F8]);
    }

    v24 = v22 - v23;
    if (v24 >= self->_secondarySourceFeatureChannelMaxCount)
    {
      secondarySourceFeatureChannelMaxCount = self->_secondarySourceFeatureChannelMaxCount;
    }

    else
    {
      secondarySourceFeatureChannelMaxCount = v24;
    }

    secondaryImageCopy = sub_239D10394(buffer, encoderCopy, secondaryImageCopy, v23, secondarySourceFeatureChannelMaxCount, secondaryImage, state, destinationImage);
    secondarySourceFeatureChannelOffset = 0;
  }

  destinationImageCopy64 = destinationImage;
  v27 = *MEMORY[0x277CD7320];
  v28 = (imageCopy + v27);
  v29 = (secondaryImageCopy + v27);
  v30 = destinationImage + v27;
  v459 = v30;
  if (destinationImage)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v470 = *MEMORY[0x277CD7378];
  v32 = MEMORY[0x277CD7300];
  v33 = MEMORY[0x277CD7318];
  v467 = encoderCopy;
  if (*(&self->super.super.isa + v470))
  {
    goto LABEL_28;
  }

  v34 = *(v29 + 56);
  v35 = MEMORY[0x277CD7490];
  if ((v28[7] & 1) != 0 && !*(&imageCopy->super.isa + *MEMORY[0x277CD7490]))
  {
    v312 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    destinationImageCopy64 = destinationImage;
    if (v312)
    {
      v313 = objc_opt_class();
      v453 = NSStringFromClass(v313);
      destinationImageCopy7 = imageCopy;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x26F, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:destinationImage:] error:  primary source image is a temporary image with readCount of 0.\n\tBacking texture for primary source image is no longer valid. image=%p\n\tPerhaps you forgot to set the readCount property?", v314, v315, v316, v317);
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
    }
  }

  if ((v34 & 1) != 0 && !*(&secondaryImageCopy->super.isa + *v35))
  {
    v318 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    destinationImageCopy64 = destinationImage;
    if (v318)
    {
      v319 = objc_opt_class();
      v453 = NSStringFromClass(v319);
      destinationImageCopy7 = imageCopy;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x274, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:destinationImage:] error:  secondary source image is a temporary image with readCount of 0.\n\tBacking texture for secondary source image is no longer valid. image=%p\n\tPerhaps you forgot to set the readCount property?", v320, v321, v322, v323);
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
    }
  }

  if (v31 && (v31[7] & 1) != 0)
  {
    if (!*&destinationImageCopy64[*v35])
    {
      v363 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
      if (v363)
      {
        v364 = objc_opt_class();
        v453 = NSStringFromClass(v364);
        destinationImageCopy7 = destinationImage;
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x279, @"[%@ encodeToCommandBuffer:sourceImage:destinationImage:] error:  destination image is a temporary image with readCount of 0.\n\tBacking texture for destination image is no longer valid. image=%p\n", v365, v366, v367, v368);
        v32 = MEMORY[0x277CD7300];
        destinationImageCopy64 = destinationImage;
      }
    }

    v36 = *v33;
    v37 = *(&imageCopy->super.isa + v36);
    v496 = v37;
    v38 = *(&secondaryImageCopy->super.isa + v36);
    v495 = v38;
  }

  else
  {
LABEL_28:
    v36 = *v33;
    v37 = *(&imageCopy->super.isa + v36);
    v496 = v37;
    v38 = *(&secondaryImageCopy->super.isa + v36);
    v495 = v38;
    if (!destinationImageCopy64)
    {
      PixelInfo = MPSDevice::GetPixelInfo(*(&self->super.super.isa + *MEMORY[0x277CD7350]), MTLPixelFormatInvalid, MPSImageFeatureChannelFormatNone);
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
      LOWORD(v40) = PixelInfo;
      v468 = 0;
      v494 = PixelInfo;
      v41 = *MEMORY[0x277CD7300];
      goto LABEL_33;
    }
  }

  v40 = *&destinationImageCopy64[v36];
  v494 = v40;
  v41 = *v32;
  v468 = *&destinationImageCopy64[v41];
LABEL_33:
  v461 = *(&secondaryImageCopy->super.isa + v41);
  v462 = *(&imageCopy->super.isa + v41);
  v473 = secondaryImageCopy;
  v471 = imageCopy;
  if (*(&self->super.super.isa + v470))
  {
    goto LABEL_176;
  }

  if (destinationImageCopy64)
  {
    v42 = MEMORY[0x277CD72F8];
    v43 = *MEMORY[0x277CD72F8];
    if (*(&imageCopy->super.isa + v43) >= 5 && *&destinationImageCopy64[v43] >= 5uLL && v462 != v468)
    {
      v419 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
      if (v419)
      {
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x28E, @"Feature Channel Layout of primary source and destination does not match", image, secondaryImage, state, destinationImage);
        v32 = MEMORY[0x277CD7300];
        destinationImageCopy64 = destinationImage;
      }
    }

    v44 = *v42;
    if (*(&secondaryImageCopy->super.isa + v44) >= 5 && *&destinationImageCopy64[v44] >= 5uLL && v461 != v468)
    {
      v420 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
      if (v420)
      {
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x290, @"Feature Channel Layout of secondary source and destination does not match", image, secondaryImage, state, destinationImage);
        v32 = MEMORY[0x277CD7300];
        destinationImageCopy64 = destinationImage;
      }
    }
  }

  explicit = atomic_load_explicit(v28, memory_order_acquire);
  if ((v28[7] & 2) != 0)
  {
    if (*(v28 + 13) < 2u)
    {
      v46 = 2;
    }

    else
    {
      v46 = 3;
    }

    v47 = v37 & 0x3FF;
    v48 = atomic_load_explicit(v29, memory_order_acquire);
    if ((v29[7] & 2) != 0)
    {
LABEL_45:
      if (*(v29 + 13) < 2u)
      {
        v49 = 2;
      }

      else
      {
        v49 = 3;
      }

      goto LABEL_55;
    }
  }

  else
  {
    if (!explicit)
    {
      explicit = v28[5];
    }

    v46 = objc_msgSend_textureType(explicit, a2, encoder, buffer, image, secondaryImage, state, destinationImage, v453, destinationImageCopy7);
    destinationImageCopy64 = destinationImage;
    v32 = MEMORY[0x277CD7300];
    v47 = v37 & 0x3FF;
    v48 = atomic_load_explicit(v29, memory_order_acquire);
    if ((v29[7] & 2) != 0)
    {
      goto LABEL_45;
    }
  }

  if (!v48)
  {
    v48 = v29[5];
  }

  v49 = objc_msgSend_textureType(v48, a2, encoder, buffer, image, secondaryImage, state, destinationImage, v453);
  destinationImageCopy64 = destinationImage;
  v32 = MEMORY[0x277CD7300];
LABEL_55:
  v50 = v38 & 0x3FF;
  if ((~v496 & 0xF000000) == 0)
  {
    v68 = v49;
    v69 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    destinationImageCopy64 = destinationImage;
    v70 = v69;
    v49 = v68;
    if (v70)
    {
      v453 = v28;
      destinationImageCopy7 = v47;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x295, @"Primary source %p texture type (%lu) is unsupported\n", image, secondaryImage, state, destinationImage);
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
      v49 = v68;
    }
  }

  if ((~v495 & 0xF000000) == 0)
  {
    v458 = v49;
    v71 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    destinationImageCopy64 = destinationImage;
    v72 = v71;
    v49 = v458;
    if (v72)
    {
      v453 = v29;
      destinationImageCopy7 = v50;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x296, @"Secondary source %p texture type (%lu) is unsupported\n", image, secondaryImage, state, destinationImage);
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
      v49 = v458;
    }
  }

  if ((self->_checkFlags & 4) != 0)
  {
    if ((v496 & 0x80000000000) == 0)
    {
      v324 = v49;
      v325 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
      v326 = v325;
      v49 = v324;
      if (v326)
      {
        v453 = v28;
        destinationImageCopy7 = v47;
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x29A, @"Primary source %p texture format %lu must support filtering.\n", image, secondaryImage, state, destinationImage);
        v32 = MEMORY[0x277CD7300];
        destinationImageCopy64 = destinationImage;
        v49 = v324;
      }
    }

    if ((v495 & 0x80000000000) == 0)
    {
      v327 = v49;
      v328 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
      v329 = v328;
      v49 = v327;
      if (v329)
      {
        v453 = v29;
        destinationImageCopy7 = v50;
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x29B, @"Secondary source %p texture format %lu must support filtering.\n", image, secondaryImage, state, destinationImage);
        v32 = MEMORY[0x277CD7300];
        destinationImageCopy64 = destinationImage;
        v49 = v327;
      }
    }
  }

  if ((v46 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v73 = v49;
    v74 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    destinationImageCopy64 = destinationImage;
    v75 = v74;
    v49 = v73;
    if (v75)
    {
      v453 = v28;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x29E, @"Primary source %p texture type must be MTLTextureType2D or MTLTextureType2D_array\n", image, secondaryImage, state, destinationImage);
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
      v49 = v73;
    }
  }

  if ((v49 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v76 = v49;
    v77 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    destinationImageCopy64 = destinationImage;
    v78 = v77;
    v49 = v76;
    if (v78)
    {
      v453 = v29;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x29F, @"Secondary source %p texture type must be MTLTextureType2D or MTLTextureType2D_array\n", image, secondaryImage, state, destinationImage);
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
      v49 = v76;
    }
  }

  z = self->_primaryOffset.z;
  if (v46 == 2)
  {
    rectCopy3 = rect;
    if (z)
    {
      v330 = v49;
      v331 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
      v332 = v331;
      v49 = v330;
      if (v332)
      {
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x2A3, @"Primary source MTLTextureType2D must have primaryOffset.z = 0", image, secondaryImage, state, destinationImage);
        v32 = MEMORY[0x277CD7300];
        destinationImageCopy64 = destinationImage;
        v49 = v330;
      }
    }

    if (rect->var1.var2 != 1)
    {
      v53 = v49;
      v54 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
      v55 = v54;
      v49 = v53;
      if (v55)
      {
        v56 = @"Primary source MTLTextureType2D must have clipRect.size.depth = 1";
        v57 = 676;
LABEL_367:
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", v57, v56, image, secondaryImage, state, destinationImage);
        v32 = MEMORY[0x277CD7300];
        destinationImageCopy64 = destinationImage;
        v49 = v53;
      }
    }
  }

  else
  {
    v58 = MEMORY[0x277CD7310];
    if (z < 0 || z >= *(&v471->super.isa + *MEMORY[0x277CD7310]))
    {
      v349 = v49;
      v350 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
      v351 = v350;
      v49 = v349;
      if (v351)
      {
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x2A8, @"Primary source MTLTextureTypeArray2D must have 0 <= primaryOffset.z < primaryImage.numberOfImages", image, secondaryImage, state, destinationImage);
        v32 = MEMORY[0x277CD7300];
        destinationImageCopy64 = destinationImage;
        v49 = v349;
      }
    }

    rectCopy3 = rect;
    if ((rect->var1.var2 + self->_primaryOffset.z) > *(&v471->super.isa + *v58))
    {
      v53 = v49;
      v333 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
      v334 = v333;
      v49 = v53;
      if (v334)
      {
        v56 = @"Primary source MTLTextureTypeArray2D must have clipRect.size.depth such that _primaryOffset.z + clipRect.depth < primaryImage.numberOfImages";
        v57 = 681;
        goto LABEL_367;
      }
    }
  }

  v59 = self->_secondaryOffset.z;
  if (v49 == 2)
  {
    if (v59)
    {
      v335 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
      if (v335)
      {
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x2AE, @"Secondary source MTLTextureType2D must have secondaryOffset.z = 0", image, secondaryImage, state, destinationImage);
        v32 = MEMORY[0x277CD7300];
        destinationImageCopy64 = destinationImage;
      }
    }

    if (rectCopy3->var1.var2 != 1)
    {
      v60 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
      if (v60)
      {
        v61 = @"Secondary source MTLTextureType2D must have clipRect.size.depth = 1";
        v62 = 687;
LABEL_372:
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", v62, v61, image, secondaryImage, state, destinationImage);
        v32 = MEMORY[0x277CD7300];
        destinationImageCopy64 = destinationImage;
      }
    }
  }

  else
  {
    v63 = MEMORY[0x277CD7310];
    if (v59 < 0 || v59 >= *(&v473->super.isa + *MEMORY[0x277CD7310]))
    {
      v352 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
      if (v352)
      {
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x2B3, @"Secondary source MTLTextureTypeArray2D must have 0 <= secondaryOffset.z < secondaryImage.numberOfImages", image, secondaryImage, state, destinationImage);
        v32 = MEMORY[0x277CD7300];
        destinationImageCopy64 = destinationImage;
      }
    }

    rectCopy3 = rect;
    if ((rect->var1.var2 + self->_secondaryOffset.z) > *(&v473->super.isa + *v63))
    {
      v336 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
      if (v336)
      {
        v61 = @"Secondary source MTLTextureTypeArray2D must have clipRect.size.depth such that _secondaryOffset.z + clipRect.depth < secondaryImage.numberOfImages";
        v62 = 692;
        goto LABEL_372;
      }
    }
  }

  if (!v31 && (MEMORY[0x38] & 2) != 0)
  {
    if (MEMORY[0x34] < 2u)
    {
      v46 = 2;
    }

    else
    {
      v46 = 3;
    }
  }

  if ((~v494 & 0xF000000) == 0)
  {
    v79 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    destinationImageCopy64 = destinationImage;
    if (v79)
    {
      v453 = v31;
      destinationImageCopy7 = v40 & 0x3FF;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x2B8, @"Destination %p texture type (%lu) is unsupported\n", image, secondaryImage, state, destinationImage);
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
    }
  }

  if ((v494 & 0x200000000000) == 0)
  {
    v80 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    destinationImageCopy64 = destinationImage;
    if (v80)
    {
      v453 = v31;
      destinationImageCopy7 = v40 & 0x3FF;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x2B9, @"Destination %p texture format %lu  must be writable.\n", image, secondaryImage, state, destinationImage);
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
    }
  }

  if ((v46 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v88 = v46 == 2;
    v64 = v473;
    imageCopy = v471;
    if (v88)
    {
      if (rectCopy3->var0.var2)
      {
        v353 = MTLReportFailureTypeEnabled();
        v32 = MEMORY[0x277CD7300];
        destinationImageCopy64 = destinationImage;
        if (v353)
        {
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x2BD, @"Destination MTLTextureType2D must have clipRect.origin.z = 0", image, secondaryImage, state, destinationImage);
          v32 = MEMORY[0x277CD7300];
          destinationImageCopy64 = destinationImage;
        }
      }

      if (rectCopy3->var1.var2 == 1)
      {
        goto LABEL_109;
      }

      v65 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
      if (!v65)
      {
        goto LABEL_109;
      }

      v66 = @"Destination MTLTextureType2D must have clipRect.size.depth = 1";
      v67 = 702;
      goto LABEL_390;
    }
  }

  else
  {
    v81 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    v64 = v473;
    destinationImageCopy64 = destinationImage;
    imageCopy = v471;
    if (v81)
    {
      v453 = v31;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x2BA, @"Destination %p texture type must be MTLTextureType2D or MTLTextureType2D_array\n", image, secondaryImage, state, destinationImage);
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
    }
  }

  if (!destinationImageCopy64)
  {
    goto LABEL_109;
  }

  v82 = MEMORY[0x277CD7310];
  if (rectCopy3->var0.var2 >= *&destinationImageCopy64[*MEMORY[0x277CD7310]])
  {
    v356 = MTLReportFailureTypeEnabled();
    v32 = MEMORY[0x277CD7300];
    destinationImageCopy64 = destinationImage;
    if (v356)
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x2C2, @"Destination MTLTextureTypeArray2D must have 0 <= clipRect.origin.z < dest.numberOfImages", image, secondaryImage, state, destinationImage);
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
    }
  }

  if (rectCopy3->var1.var2 + rectCopy3->var0.var2 <= *&destinationImageCopy64[*v82])
  {
    goto LABEL_109;
  }

  v357 = MTLReportFailureTypeEnabled();
  v32 = MEMORY[0x277CD7300];
  destinationImageCopy64 = destinationImage;
  if (!v357)
  {
    goto LABEL_109;
  }

  v66 = @"Destination MTLTextureTypeArray2D must have clipRect.size.depth such that clipRect.origin.z + clipRect.depth < dest.numberOfImages";
  v67 = 707;
LABEL_390:
  MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", v67, v66, image, secondaryImage, state, destinationImage);
  v32 = MEMORY[0x277CD7300];
  destinationImageCopy64 = destinationImage;
LABEL_109:
  if (!*(&imageCopy->super.isa + *v32) && (self->_checkFlags & 0x20) == 0 && *(&imageCopy->super.isa + *MEMORY[0x277CD72F8]) >= 5)
  {
    if (self->_primaryEdgeMode)
    {
      v426 = MTLReportFailureTypeEnabled();
      v32 = MEMORY[0x277CD7300];
      destinationImageCopy64 = destinationImage;
      if (v426)
      {
        v427 = objc_opt_class();
        v453 = NSStringFromClass(v427);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x2C9, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:destinationImage]: the filter edge mode for primaryImage must be MPSImageEdgeModeZero for feature channels > 4.", v428, v429, v430, v431);
        v32 = MEMORY[0x277CD7300];
        destinationImageCopy64 = destinationImage;
      }
    }
  }

  if (!*(&v64->super.isa + *v32) && (self->_checkFlags & 0x20) == 0 && *(&v64->super.isa + *MEMORY[0x277CD72F8]) >= 5)
  {
    if (self->_secondaryEdgeMode)
    {
      v432 = MTLReportFailureTypeEnabled();
      destinationImageCopy64 = destinationImage;
      if (v432)
      {
        v433 = objc_opt_class();
        v453 = NSStringFromClass(v433);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x2CD, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:destinationImage]: the filter edge mode for secondaryImage must be MPSImageEdgeModeZero for feature channels > 4.", v434, v435, v436, v437);
        destinationImageCopy64 = destinationImage;
      }
    }
  }

  if ((self->_checkFlags & 0x40000) == 0)
  {
    if (self->_primaryEdgeMode >= 2)
    {
      v337 = MTLReportFailureTypeEnabled();
      destinationImageCopy64 = destinationImage;
      if (v337)
      {
        v338 = objc_opt_class();
        v453 = NSStringFromClass(v338);
        MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x2D1, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:destinationImage]: the filter edge mode for primaryImage must be MPSImageEdgeModeZero or MPSImageEdgeModeClamp for this filter.", v339, v340, v341, v342);
        destinationImageCopy64 = destinationImage;
      }
    }

    if (self->_secondaryEdgeMode >= 2)
    {
      v343 = MTLReportFailureTypeEnabled();
      destinationImageCopy64 = destinationImage;
      if (v343)
      {
        v344 = objc_opt_class();
        v453 = NSStringFromClass(v344);
        MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x2D2, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:destinationImage]: the filter edge mode for secondaryImage must be MPSImageEdgeModeZero or MPSImageEdgeModeClamp for this filter.", v345, v346, v347, v348);
        destinationImageCopy64 = destinationImage;
      }
    }
  }

  if (destinationImageCopy64)
  {
    if ((self->_checkFlags & 2) == 0)
    {
      v83 = MEMORY[0x277CD72F8];
      if (*&destinationImageCopy64[*MEMORY[0x277CD72F8]] != *(&imageCopy->super.isa + *MEMORY[0x277CD72F8]))
      {
        v369 = MTLReportFailureTypeEnabled();
        destinationImageCopy64 = destinationImage;
        if (v369)
        {
          v370 = objc_opt_class();
          v453 = NSStringFromClass(v370);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x2D9, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:destinationImage]: The number of primary source feature channels must match the number of destination feature channels for this filter.", v371, v372, v373, v374);
          destinationImageCopy64 = destinationImage;
        }
      }

      if (*&destinationImageCopy64[*v83] != *(&v64->super.isa + *v83) && MTLReportFailureTypeEnabled())
      {
        v375 = objc_opt_class();
        v453 = NSStringFromClass(v375);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x2DA, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:destinationImage]: The number of secondary source feature channels must match the number of destination feature channels for this filter.", v376, v377, v378, v379);
      }
    }

    if ((self->_checkFlags & 1) == 0)
    {
      v84 = v459;
      if ((v459[56] & 2) != 0)
      {
        v84 = v459;
        do
        {
          v84 = *(v84 + 5);
        }

        while ((v84[56] & 2) != 0);
      }

      v85 = v28;
      if ((v28[7] & 2) != 0)
      {
        v85 = v28;
        do
        {
          v85 = v85[5];
        }

        while ((v85[7] & 2) != 0);
      }

      v86 = atomic_load_explicit(v85, memory_order_acquire);
      v87 = atomic_load_explicit(v84, memory_order_acquire);
      if (v86)
      {
        v88 = v87 == 0;
      }

      else
      {
        v88 = 1;
      }

      if (!v88 && v86 != v87)
      {
        objc_msgSend_isEqual_(v86, a2, v87, buffer, image, secondaryImage, state, destinationImage);
      }

      v90 = v31;
      if ((v459[56] & 2) != 0)
      {
        v90 = v31;
        do
        {
          v90 = v90[5];
        }

        while ((v90[7] & 2) != 0);
      }

      while ((v28[7] & 2) != 0)
      {
        v28 = v28[5];
      }

      v91 = atomic_load_explicit(v28, memory_order_acquire);
      v92 = atomic_load_explicit(v90, memory_order_acquire);
      if (v91)
      {
        v93 = v92 == 0;
      }

      else
      {
        v93 = 1;
      }

      if (!v93 && (v91 == v92 || objc_msgSend_isEqual_(v91, a2, v92, buffer, image, secondaryImage, state, destinationImage)) && MTLReportFailureTypeEnabled())
      {
        v358 = objc_opt_class();
        v453 = NSStringFromClass(v358);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x2DF, @"[%@ encodeToCommandBuffer:primaryTexture:secondaryTexture:destinationTexture: can not operate in place.", v359, v360, v361, v362);
      }

      v94 = v31;
      if ((v459[56] & 2) != 0)
      {
        v94 = v31;
        do
        {
          v94 = v94[5];
        }

        while ((v94[7] & 2) != 0);
      }

      v95 = v29;
      if ((v29[7] & 2) != 0)
      {
        v95 = v29;
        do
        {
          v95 = v95[5];
        }

        while ((v95[7] & 2) != 0);
      }

      v96 = atomic_load_explicit(v95, memory_order_acquire);
      v97 = atomic_load_explicit(v94, memory_order_acquire);
      if (v96)
      {
        v98 = v97 == 0;
      }

      else
      {
        v98 = 1;
      }

      if (!v98 && v96 != v97)
      {
        objc_msgSend_isEqual_(v96, a2, v97, buffer, image, secondaryImage, state, destinationImage);
      }

      if ((v459[56] & 2) != 0)
      {
        do
        {
          v31 = v31[5];
        }

        while ((v31[7] & 2) != 0);
      }

      while ((v29[7] & 2) != 0)
      {
        v29 = v29[5];
      }

      v100 = atomic_load_explicit(v29, memory_order_acquire);
      encoder = atomic_load_explicit(v31, memory_order_acquire);
      if (v100)
      {
        v101 = encoder == 0;
      }

      else
      {
        v101 = 1;
      }

      if (!v101 && (v100 == encoder || objc_msgSend_isEqual_(v100, a2, encoder, buffer, image, secondaryImage, state, destinationImage)) && MTLReportFailureTypeEnabled())
      {
        v421 = objc_opt_class();
        v453 = NSStringFromClass(v421);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x2E0, @"[%@ encodeToCommandBuffer:primaryTexture:secondaryTexture:destinationTexture: can not operate in place.", v422, v423, v424, v425);
      }
    }
  }

LABEL_176:
  if (!rect->var1.var1 || !rect->var1.var0 || !rect->var1.var2)
  {
    return;
  }

  if (objc_msgSend_retainedReferences(bufferCopy, a2, encoder, buffer, image, secondaryImage, state, destinationImage))
  {
    v109 = 0;
  }

  else
  {
    v109 = objc_opt_new();
  }

  if (rect->var1.var2 > 1 || rect->var0.var2)
  {
    v110 = (self->_checkFlags & 0x8000) != 0 && *&self->_primarySourceFeatureChannelOffset == 0;
  }

  else
  {
    v110 = 1;
  }

  v472 = *&self->_primaryOffset.x;
  v111 = self->_primaryOffset.z;
  v112 = 0uLL;
  v113 = MEMORY[0x277CD7320];
  if (self->_isBackwards)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v115 = 0;
    if (isKindOfClass)
    {
      v116 = objc_msgSend_kernelOffsetX(self, v102, v103, v104, v105, v106, v107, v108);
      v124 = objc_msgSend_kernelOffsetY(self, v117, v118, v119, v120, v121, v122, v123);
      *v125.i8 = vmovn_s64(v472);
      v125.i64[1] = v111;
      v126 = __PAIR64__(v124, v116);
      imageCopy = v471;
      v127.i32[0] = self->_primaryStrideInPixelsX;
      v127.i32[1] = self->_primaryStrideInPixelsY;
      v128.i64[0] = 0x100000001;
      v128.i64[1] = 0x100000001;
      v129 = vmaxq_s32(v127, v128);
      v130 = vmlaq_s32(v126, v129, v125);
      v125.i32[0] = v130.i32[0] / v129.i32[0];
      v125.i32[1] = v130.i32[1] / v129.i32[1];
      v125.i32[2] = v130.i32[2] / v129.i32[2];
      v125.i32[3] = v130.i32[3] / v129.i32[3];
      v131 = vmlsq_s32(v130, v125, v129);
      v132 = vsraq_n_s32(v125, v131, 0x1FuLL);
      v133 = vaddq_s32(vandq_s8(vcltzq_s32(v131), v129), v131);
      v111 = v132.i32[2];
      v134.i64[0] = v132.i32[0];
      v134.i64[1] = v132.i32[1];
      v472 = v134;
      LODWORD(v115) = v133.u16[0];
      HIDWORD(v115) = v133.u16[2];
    }

    v135 = MEMORY[0x277CD7300];
    v112 = 0uLL;
  }

  else
  {
    v115 = 0;
    v135 = MEMORY[0x277CD7300];
  }

  sizeCopy = 0;
  v491 = v112;
  v492 = v112;
  *v490 = v112;
  *&v490[16] = v112;
  v488 = v112;
  v489 = v112;
  v486 = v112;
  v487 = v112;
  v484 = v112;
  v485 = v112;
  v483[2] = v112;
  v483[3] = v112;
  v483[0] = v112;
  v483[1] = v112;
  v482 = v112;
  v481 = v112;
  v480 = v112;
  v479 = v112;
  v478 = v112;
  v477 = v112;
  v476[0] = imageCopy;
  v476[1] = &v496;
  v136 = (imageCopy + *v113);
  v137 = atomic_load_explicit(v136, memory_order_acquire);
  v460 = v115;
  if ((v136[7] & 2) != 0)
  {
    if (*(v136 + 13) < 2u)
    {
      v138 = 2;
    }

    else
    {
      v138 = 3;
    }
  }

  else
  {
    if (!v137)
    {
      v137 = v136[5];
    }

    v138 = objc_msgSend_textureType(v137, v102, v103, v104, v105, v106, v107, v108, v453, destinationImageCopy7);
    v135 = MEMORY[0x277CD7300];
    v115 = v460;
  }

  v139 = *(&imageCopy->super.isa + *MEMORY[0x277CD72F0]) - 1;
  v463 = v109;
  if (v139 > 4)
  {
    v140 = 0;
  }

  else
  {
    v140 = dword_239D91498[v139];
  }

  if (v138 == 3)
  {
    ++v140;
  }

  v141 = MEMORY[0x277CD7310];
  if (*(&v471->super.isa + *MEMORY[0x277CD7310]) >= 2 && !v110)
  {
    v140 |= 2u;
  }

  v143 = MEMORY[0x277CD72F8];
  if ((*(&v471->super.isa + *MEMORY[0x277CD7318]) & 0x3000000) != 0)
  {
    v140 |= 4u;
  }

  v144 = *(&v471->super.isa + *MEMORY[0x277CD72F8]);
  v145 = MEMORY[0x277CD7328];
  v477.i32[0] = v140;
  v146 = *(&v471->super.isa + *MEMORY[0x277CD7328]);
  v477.i64[1] = v144;
  v478 = v146;
  *v479.i8 = *(v471 + *v135);
  v479.i64[1] = v473;
  v480.i64[0] = &v495;
  v147 = (v473 + *v113);
  v148 = atomic_load_explicit(v147, memory_order_acquire);
  if ((v147[7] & 2) != 0)
  {
    if (*(v147 + 13) < 2u)
    {
      v149 = 2;
    }

    else
    {
      v149 = 3;
    }
  }

  else
  {
    if (!v148)
    {
      v148 = v147[5];
    }

    v149 = objc_msgSend_textureType(v148, v102, v103, v104, v105, v106, v107, v108, v453);
    v135 = MEMORY[0x277CD7300];
    v115 = v460;
  }

  v150 = *(&v473->super.isa + *MEMORY[0x277CD72F0]) - 1;
  if (v150 > 4)
  {
    v151 = 0;
  }

  else
  {
    v151 = dword_239D91498[v150];
  }

  if (v149 == 3)
  {
    ++v151;
  }

  if (*(&v473->super.isa + *v141) >= 2 && !v110)
  {
    v151 |= 2u;
  }

  v153 = *(&v473->super.isa + *v143);
  if ((*(&v473->super.isa + *MEMORY[0x277CD7318]) & 0x3000000) != 0)
  {
    v151 |= 4u;
  }

  v154 = *(&v473->super.isa + *v145);
  v480.i32[2] = v151;
  v481.i64[0] = v153;
  v481.i64[1] = v154;
  v155 = *(&v473->super.isa + *v135);
  v482.i64[0] = 0;
  v482.i64[1] = v155;
  memset(v483, 0, sizeof(v483));
  v156 = *&rect->var0.var2;
  v157 = *&rect->var1.var1;
  v484 = *&rect->var0.var0;
  v485 = v156;
  v158 = *&self->_primaryOffset.x;
  v488.i64[0] = self->_primaryOffset.z;
  v486 = v157;
  v487 = v158;
  v488.i16[5] = WORD2(v115);
  v488.i16[4] = v115;
  v489 = v472;
  *&v490[8] = *&self->_secondaryOffset.x;
  v159 = self->_secondaryOffset.z;
  destinationFeatureChannelOffset = self->_destinationFeatureChannelOffset;
  *v490 = v111;
  *&v490[24] = v159;
  v491.i64[0] = destinationFeatureChannelOffset;
  v491.i64[1] = v465;
  v492.i64[0] = secondarySourceFeatureChannelOffset;
  v492.i64[1] = index;
  sizeCopy = size;
  destinationImageCopy80 = destinationImage;
  if (!destinationImage)
  {
    *(&v483[3] + 1) = 0;
    *(&v483[2] + 8) = 0uLL;
    *(&v483[1] + 8) = 0uLL;
    *(v483 + 8) = 0uLL;
    v166 = v467;
    v167 = (v471 + *v113);
    v168 = atomic_load_explicit(v167, memory_order_acquire);
    v169 = v109;
    if (v168)
    {
      goto LABEL_259;
    }

    goto LABEL_258;
  }

  v162 = (destinationImage + *v113);
  v163 = atomic_load_explicit(v162, memory_order_acquire);
  if ((v162[7] & 2) != 0)
  {
    if (*(v162 + 13) < 2u)
    {
      v165 = 2;
    }

    else
    {
      v165 = 3;
    }

    v164 = MEMORY[0x277CD7318];
  }

  else
  {
    v164 = MEMORY[0x277CD7318];
    if (!v163)
    {
      v163 = v162[5];
    }

    v165 = objc_msgSend_textureType(v163, v102, v103, v104, v105, v106, v107, v108, v453);
    destinationImageCopy80 = destinationImage;
    v135 = MEMORY[0x277CD7300];
  }

  v170 = *&destinationImageCopy80[*MEMORY[0x277CD72F0]] - 1;
  if (v170 > 4)
  {
    v171 = 0;
  }

  else
  {
    v171 = dword_239D91498[v170];
  }

  if (v165 == 3)
  {
    ++v171;
  }

  if (*&destinationImageCopy80[*v141] >= 2uLL && !v110)
  {
    v171 |= 2u;
  }

  if ((*&destinationImageCopy80[*v164] & 0x3000000) != 0)
  {
    v173 = v171 | 4;
  }

  else
  {
    v173 = v171;
  }

  v174 = *&destinationImageCopy80[*v143];
  v175 = *&destinationImageCopy80[*v145];
  v176 = &destinationImageCopy80[*MEMORY[0x277CD7320]];
  v177 = atomic_load_explicit(v176, memory_order_acquire);
  if (!v177)
  {
    MPSAutoTexture::AllocateTexture(v176, 0);
    v135 = MEMORY[0x277CD7300];
    destinationImageCopy80 = destinationImage;
    v177 = atomic_load_explicit(v176, memory_order_acquire);
  }

  v178 = *&destinationImageCopy80[*v135];
  *(&v483[0] + 1) = destinationImageCopy80;
  *&v483[1] = &v494;
  DWORD2(v483[1]) = v173;
  *&v483[2] = v174;
  *(&v483[2] + 1) = v175;
  *&v483[3] = v177;
  *(&v483[3] + 1) = v178;
  v166 = v467;
  v113 = MEMORY[0x277CD7320];
  v167 = (v471 + *MEMORY[0x277CD7320]);
  v168 = atomic_load_explicit(v167, memory_order_acquire);
  v169 = v463;
  if (!v168)
  {
LABEL_258:
    MPSAutoTexture::AllocateTexture(v167, 0);
    destinationImageCopy80 = destinationImage;
    v168 = atomic_load_explicit(v167, memory_order_acquire);
  }

LABEL_259:
  v478.i64[1] = v168;
  v179 = (v473 + *v113);
  v180 = atomic_load_explicit(v179, memory_order_acquire);
  if (v180)
  {
    v482.i64[0] = v180;
    if (*(&self->super.super.isa + v470))
    {
      goto LABEL_266;
    }
  }

  else
  {
    MPSAutoTexture::AllocateTexture(v179, 0);
    destinationImageCopy80 = destinationImage;
    v482.i64[0] = atomic_load_explicit(v179, memory_order_acquire);
    if (*(&self->super.super.isa + v470))
    {
      goto LABEL_266;
    }
  }

  if (!v478.i64[1])
  {
    v380 = MTLReportFailureTypeEnabled();
    destinationImageCopy80 = destinationImage;
    if (v380)
    {
      v381 = objc_opt_class();
      v453 = NSStringFromClass(v381);
      destinationImageCopy7 = objc_msgSend_debugDescription(v471, v382, v383, v384, v385, v386, v387, v388);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x330, @"[%@ encodeToCommandBuffer:...]: source MPSImage contains a nil texture. Cannot continue.\n\t%@\n", v389, v390, v391, v392);
      destinationImageCopy80 = destinationImage;
    }
  }

  if (!v482.i64[0])
  {
    v393 = MTLReportFailureTypeEnabled();
    destinationImageCopy80 = destinationImage;
    if (v393)
    {
      v394 = objc_opt_class();
      v453 = NSStringFromClass(v394);
      destinationImageCopy7 = objc_msgSend_debugDescription(v473, v395, v396, v397, v398, v399, v400, v401);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x331, @"[%@ encodeToCommandBuffer:...]: destination MPSImage contains a nil texture.  Cannot continue.\n\t%@\n", v402, v403, v404, v405);
      destinationImageCopy80 = destinationImage;
    }
  }

  if (!*&v483[3])
  {
    v406 = MTLReportFailureTypeEnabled();
    destinationImageCopy80 = destinationImage;
    if (v406)
    {
      v407 = objc_opt_class();
      v453 = NSStringFromClass(v407);
      destinationImageCopy7 = objc_msgSend_debugDescription(destinationImage, v408, v409, v410, v411, v412, v413, v414);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x332, @"[%@ encodeToCommandBuffer:...]: destination MPSImage contains a nil texture. Perhaps it was lazily allocated but turned out to be too large? Cannot continue.\n\t%@\n", v415, v416, v417, v418);
      destinationImageCopy80 = destinationImage;
    }
  }

LABEL_266:
  *&v483[0] = state;
  if (rect->var1.var2 == 1)
  {
    if (!v462 && !v461 && !v468)
    {
LABEL_273:
      v184 = (v471 + *v113);
      v185 = atomic_load_explicit(v184, memory_order_acquire);
      if ((v184[7] & 2) != 0)
      {
        v186 = v473;
        if (*(v184 + 13) < 2u)
        {
LABEL_277:
          v183 = 0;
          goto LABEL_290;
        }
      }

      else
      {
        v186 = v473;
        if (!v185)
        {
          v185 = v184[5];
        }

        v187 = objc_msgSend_textureType(v185, v102, v103, v104, v105, v106, v107, v108, v453, destinationImageCopy7);
        destinationImageCopy80 = destinationImage;
        if (v187 != 3)
        {
          goto LABEL_277;
        }
      }

      v183 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v478.i64[1], v102, *(&v471[4].super.isa + *MEMORY[0x277CD7320]) & 0x3FF, 2, 0, 1, self->_primaryOffset.z & ~(self->_primaryOffset.z >> 63), 1, v453);
      if (!v183 && MTLReportFailureTypeEnabled())
      {
        v438 = objc_opt_class();
        v454 = NSStringFromClass(v438);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x348, @"[%@ encodeToCommandBuffer:primaryTexture:secondaryTexture:destinationTexture:] Internal Error: unable to make texture2d view of primary source", v439, v440, v441, v442);
      }

      v478.i64[0] = 2;
      v478.i64[1] = v183;
      v195 = *(&v471->super.isa + *MEMORY[0x277CD72F0]);
      v196 = objc_msgSend_textureType(v183, v188, v189, v190, v191, v192, v193, v194, v454);
      if (v195 - 1 > 4)
      {
        v204 = 0;
      }

      else
      {
        v204 = dword_239D91498[v195 - 1];
      }

      if (v196 == 3)
      {
        v205 = v204 + 1;
      }

      else
      {
        v205 = v204;
      }

      objc_msgSend_device(v183, v197, v198, v199, v200, v201, v202, v203);
      MPSDevice = MPSDevice::GetMPSDevice();
      v214 = objc_msgSend_pixelFormat(v183, v207, v208, v209, v210, v211, v212, v213);
      v215 = MPSDevice::GetPixelInfo(MPSDevice, v214, v195);
      v216 = v205 | 4;
      if ((v215 & 0x3000000) == 0)
      {
        v216 = v205;
      }

      v477.i32[0] = v216;
      v186 = v473;
      destinationImageCopy80 = destinationImage;
LABEL_290:
      v217 = (v186 + *MEMORY[0x277CD7320]);
      v218 = atomic_load_explicit(v217, memory_order_acquire);
      if ((v217[7] & 2) != 0)
      {
        if (*(v217 + 13) < 2u)
        {
          goto LABEL_294;
        }
      }

      else
      {
        if (!v218)
        {
          v218 = v217[5];
        }

        v219 = objc_msgSend_textureType(v218, v102, v103, v104, v105, v106, v107, v108, v453);
        destinationImageCopy80 = destinationImage;
        if (v219 != 3)
        {
LABEL_294:
          v182 = 0;
          v220 = MEMORY[0x277CD7320];
          if (!destinationImageCopy80)
          {
            goto LABEL_311;
          }

LABEL_307:
          v250 = &destinationImageCopy80[*v220];
          v251 = atomic_load_explicit(v250, memory_order_acquire);
          if ((v250[7] & 2) != 0)
          {
            if (*(v250 + 13) < 2u)
            {
LABEL_311:
              v181 = 0;
LABEL_324:
              *&v490[24] = 0;
              v488.i64[0] = 0;
              v485.i64[0] = 0;
              goto LABEL_325;
            }
          }

          else
          {
            if (!v251)
            {
              v251 = v250[5];
            }

            v252 = objc_msgSend_textureType(v251, v102, v103, v104, v105, v106, v107, v108, v453);
            destinationImageCopy80 = destinationImage;
            if (v252 != 3)
            {
              goto LABEL_311;
            }
          }

          v253 = *&destinationImageCopy80[*v220 + 32] & 0x3FFLL;
          v254 = destinationImageCopy80;
          v181 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(*&v483[3], v102, v253, 2, 0, 1, rect->var0.var2, 1, v453);
          if (!v181 && MTLReportFailureTypeEnabled())
          {
            v448 = objc_opt_class();
            v456 = NSStringFromClass(v448);
            MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x363, @"[%@ encodeToCommandBuffer:sourceTexture:destinationTexture:] Internal Error: unable to make texture2d view of destination", v449, v450, v451, v452);
          }

          *(&v483[2] + 1) = 2;
          *&v483[3] = v181;
          v262 = *&v254[*MEMORY[0x277CD72F0]];
          v263 = objc_msgSend_textureType(v181, v255, v256, v257, v258, v259, v260, v261, v456);
          if (v262 - 1 > 4)
          {
            v271 = 0;
          }

          else
          {
            v271 = dword_239D91498[v262 - 1];
          }

          if (v263 == 3)
          {
            v272 = v271 + 1;
          }

          else
          {
            v272 = v271;
          }

          objc_msgSend_device(v181, v264, v265, v266, v267, v268, v269, v270);
          v273 = MPSDevice::GetMPSDevice();
          v281 = objc_msgSend_pixelFormat(v181, v274, v275, v276, v277, v278, v279, v280);
          v282 = MPSDevice::GetPixelInfo(v273, v281, v262);
          v283 = v272 | 4;
          if ((v282 & 0x3000000) == 0)
          {
            v283 = v272;
          }

          DWORD2(v483[1]) = v283;
          v169 = v463;
          goto LABEL_324;
        }
      }

      v182 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v482.i64[0], v102, *(&v186[4].super.isa + *MEMORY[0x277CD7320]) & 0x3FF, 2, 0, 1, self->_secondaryOffset.z & ~(self->_secondaryOffset.z >> 63), 1, v453);
      if (!v182 && MTLReportFailureTypeEnabled())
      {
        v443 = objc_opt_class();
        v455 = NSStringFromClass(v443);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x356, @"[%@ encodeToCommandBuffer:primaryTexture:secondaryTexture:destinationTexture:] Internal Error: unable to make texture2d view of secondary source", v444, v445, v446, v447);
      }

      v481.i64[1] = 2;
      v482.i64[0] = v182;
      v228 = *(&v186->super.isa + *MEMORY[0x277CD72F0]);
      v229 = objc_msgSend_textureType(v182, v221, v222, v223, v224, v225, v226, v227, v455);
      if (v228 - 1 > 4)
      {
        v237 = 0;
      }

      else
      {
        v237 = dword_239D91498[v228 - 1];
      }

      if (v229 == 3)
      {
        v238 = v237 + 1;
      }

      else
      {
        v238 = v237;
      }

      objc_msgSend_device(v182, v230, v231, v232, v233, v234, v235, v236);
      v239 = MPSDevice::GetMPSDevice();
      v247 = objc_msgSend_pixelFormat(v182, v240, v241, v242, v243, v244, v245, v246);
      v248 = MPSDevice::GetPixelInfo(v239, v247, v228);
      v249 = v238 | 4;
      if ((v248 & 0x3000000) == 0)
      {
        v249 = v238;
      }

      v480.i32[2] = v249;
      destinationImageCopy80 = destinationImage;
      v169 = v463;
      v220 = MEMORY[0x277CD7320];
      if (!destinationImage)
      {
        goto LABEL_311;
      }

      goto LABEL_307;
    }

    v181 = 0;
    if (v477.i64[1] > 4uLL || v481.i64[0] > 4uLL)
    {
      v182 = 0;
      v183 = 0;
    }

    else
    {
      v182 = 0;
      v183 = 0;
      if (*&v483[2] <= 4uLL)
      {
        goto LABEL_273;
      }
    }
  }

  else
  {
    v181 = 0;
    v182 = 0;
    v183 = 0;
  }

LABEL_325:
  if (v169)
  {
    objc_msgSend_addObject_(v169, v102, v478.i64[1], v104, v105, v106, v107, v108);
    objc_msgSend_addObject_(v169, v284, v482.i64[0], v285, v286, v287, v288, v289);
    if (*&v483[3])
    {
      objc_msgSend_addObject_(v169, v290, *&v483[3], v291, v292, v293, v294, v295);
    }

    if (*&v483[0])
    {
      if ((*(*&v483[0] + *MEMORY[0x277CD7470]) & 1) == 0)
      {
        v296 = *(*&v483[0] + *MEMORY[0x277CD7480]);
        if (v296 >= 1)
        {
          v297 = v296 + 1;
          v298 = MEMORY[0x277CD7488];
          do
          {
            v301 = *(*&v483[0] + *v298);
            v302 = *v301;
            if (v302 == 2)
            {
              v299 = v301 + 1;
              v300 = atomic_load_explicit(v301 + 1, memory_order_acquire);
              if (!v300)
              {
                MPSAutoTexture::AllocateTexture((v301 + 1), 0);
                v300 = atomic_load_explicit(v299, memory_order_acquire);
                if (!v300)
                {
                  goto LABEL_334;
                }
              }
            }

            else
            {
              if (v302 != 1)
              {
                goto LABEL_334;
              }

              v303 = v301 + 1;
              v300 = atomic_load_explicit(v301 + 1, memory_order_acquire);
              if (!v300)
              {
                MPSAutoBuffer::AllocateBuffer((v301 + 1), 0);
                v300 = atomic_load_explicit(v303, memory_order_acquire);
                if (!v300)
                {
                  goto LABEL_334;
                }
              }
            }

            objc_msgSend_addObject_(v169, v290, v300, v291, v292, v293, v294, v295, v453);
LABEL_334:
            --v297;
          }

          while (v297 > 1);
        }
      }
    }

    v475[0] = MEMORY[0x277D85DD0];
    v475[1] = 3221225472;
    v475[2] = sub_239D106AC;
    v475[3] = &unk_278B28F28;
    v475[4] = v169;
    objc_msgSend_addCompletedHandler_(bufferCopy, v290, v475, v291, v292, v293, v294, v295, v453);
  }

  if ((*(&self->super.super.isa + v470) & 8) != 0)
  {
    v354 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (!v354)
    {
      v355 = objc_opt_class();
      v354 = NSStringFromClass(v355);
    }

    objc_msgSend_pushDebugGroup_(v166, v102, v354, v104, v105, v106, v107, v108, v453);
    v304 = v166;
  }

  else
  {
    v304 = 0;
  }

  (self->_encode)(self->_encodeData, v166, bufferCopy, v476);
  if (v304)
  {
    objc_msgSend_popDebugGroup(v304, v305, v306, v307, v308, v309, v310, v311);
  }

  if (v183)
  {
  }

  if (v182)
  {
  }

  if (v181)
  {
  }

  MPSDecrementReadCount(v471);
  MPSDecrementReadCount(v473);
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryImage:(id)image secondaryImage:(id)secondaryImage inState:(id)state destinationImage:(id)destinationImage subBatchIndex:(unint64_t)index batchSize:(unint64_t)self0
{
  v14 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.isa + v14))
  {
    goto LABEL_25;
  }

  if (!buffer)
  {
    encoderCopy = encoder;
    stateCopy = state;
    v142 = MTLReportFailureTypeEnabled();
    state = stateCopy;
    buffer = 0;
    encoder = encoderCopy;
    if (v142)
    {
      v143 = objc_opt_class();
      v252 = NSStringFromClass(v143);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x3B3, @"[%@ encode...] commandBuffer may not be nil]", v144, v145, v146, v147);
      state = stateCopy;
      buffer = 0;
      encoder = encoderCopy;
    }
  }

  if (!image)
  {
    encoderCopy2 = encoder;
    bufferCopy = buffer;
    stateCopy2 = state;
    v151 = MTLReportFailureTypeEnabled();
    state = stateCopy2;
    buffer = bufferCopy;
    encoder = encoderCopy2;
    if (v151)
    {
      v152 = objc_opt_class();
      v252 = NSStringFromClass(v152);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x3B4, @"[%@ encode...] primary source may not be nil", v153, v154, v155, v156);
      state = stateCopy2;
      buffer = bufferCopy;
      encoder = encoderCopy2;
    }
  }

  if (!secondaryImage)
  {
    encoderCopy3 = encoder;
    bufferCopy2 = buffer;
    stateCopy3 = state;
    v160 = MTLReportFailureTypeEnabled();
    state = stateCopy3;
    buffer = bufferCopy2;
    encoder = encoderCopy3;
    if (v160)
    {
      v161 = objc_opt_class();
      v252 = NSStringFromClass(v161);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x3B5, @"[%@ encode...] secondary source may not be nil", v162, v163, v164, v165);
      state = stateCopy3;
      buffer = bufferCopy2;
      encoder = encoderCopy3;
    }
  }

  if (!destinationImage && (self->_checkFlags & 0x1000) == 0)
  {
    encoderCopy4 = encoder;
    bufferCopy3 = buffer;
    stateCopy4 = state;
    v134 = MTLReportFailureTypeEnabled();
    state = stateCopy4;
    buffer = bufferCopy3;
    encoder = encoderCopy4;
    if (v134)
    {
      v135 = objc_opt_class();
      v252 = NSStringFromClass(v135);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x3B6, @"[%@ encode...] destination may not be nil", v136, v137, v138, v139);
      state = stateCopy4;
      buffer = bufferCopy3;
      encoder = encoderCopy4;
    }
  }

  v16 = *MEMORY[0x277CD7348];
  if ((*(&self->super.super.isa + v14) & ~*(&self->super.super.isa + v16)) != 0)
  {
    encoderCopy5 = encoder;
    bufferCopy4 = buffer;
    stateCopy5 = state;
    v169 = MTLReportFailureTypeEnabled();
    state = stateCopy5;
    buffer = bufferCopy4;
    encoder = encoderCopy5;
    if (v169)
    {
      v170 = objc_opt_class();
      v252 = NSStringFromClass(v170);
      v253 = *(&self->super.super.isa + v14) & ~*(&self->super.super.isa + v16);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x3B7, @"[%@ encode...] options flag(s) 0x%16.16lx is unknown or invalid for use with this filter", v171, v172, v173, v174);
      state = stateCopy5;
      buffer = bufferCopy4;
      encoder = encoderCopy5;
    }
  }

  v17 = MEMORY[0x277CD7320];
  v18 = MEMORY[0x277CD7490];
  if ((*(image + *MEMORY[0x277CD7320] + 56) & 1) != 0 && !*(image + *MEMORY[0x277CD7490]) && (v264 = encoder, v205 = buffer, v206 = state, v207 = MTLReportFailureTypeEnabled(), state = v206, buffer = v205, encoder = v264, v207))
  {
    v208 = objc_opt_class();
    v259 = NSStringFromClass(v208);
    v253 = NSStringFromSelector(a2);
    v254 = objc_msgSend_debugDescription(image, v209, v210, v211, v212, v213, v214, v215);
    v252 = v259;
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x3C0, @"[%@ %@] Error: the primary source image texture is temporary and has a readCount of 0.\n\tIts texel storage is probably in use for another texture now.\n%@\n", v216, v217, v218, v219);
    state = v206;
    buffer = v205;
    encoder = v264;
    v19 = image + *v17;
    if ((v19[56] & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v19 = image + *v17;
    if ((v19[56] & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  do
  {
    v19 = *(v19 + 5);
  }

  while ((v19[56] & 2) != 0);
LABEL_12:
  atomic_load_explicit(v19, memory_order_acquire);
    ;
  }

  if (!atomic_load_explicit(i, memory_order_acquire))
  {
    encoderCopy6 = encoder;
    bufferCopy5 = buffer;
    stateCopy6 = state;
    v177 = MTLReportFailureTypeEnabled();
    state = stateCopy6;
    buffer = bufferCopy5;
    encoder = encoderCopy6;
    if (v177)
    {
      v178 = objc_opt_class();
      v257 = NSStringFromClass(v178);
      v253 = NSStringFromSelector(a2);
      v254 = objc_msgSend_debugDescription(image, v179, v180, v181, v182, v183, v184, v185);
      v252 = v257;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x3C5, @"[%@ %@] Error: the primary source image texture is uninitialized.\n\tThis typically means that nothing has written to it yet, and its contents are undefined.\n%@\n", v186, v187, v188, v189);
      state = stateCopy6;
      buffer = bufferCopy5;
      encoder = encoderCopy6;
    }
  }

  if ((*(secondaryImage + *v17 + 56) & 1) != 0 && !*(secondaryImage + *v18))
  {
    encoderCopy7 = encoder;
    bufferCopy6 = buffer;
    stateCopy7 = state;
    v222 = MTLReportFailureTypeEnabled();
    state = stateCopy7;
    buffer = bufferCopy6;
    encoder = encoderCopy7;
    if (v222)
    {
      v223 = objc_opt_class();
      v260 = NSStringFromClass(v223);
      v253 = NSStringFromSelector(a2);
      v254 = objc_msgSend_debugDescription(secondaryImage, v224, v225, v226, v227, v228, v229, v230);
      v252 = v260;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x3CA, @"[%@ %@] Error: the secondary source image texture is temporary and has a readCount of 0.\n\tIts texel storage is probably in use for another texture now.\n%@\n", v231, v232, v233, v234);
      state = stateCopy7;
      buffer = bufferCopy6;
      encoder = encoderCopy7;
      v21 = secondaryImage + *v17;
      if ((v21[56] & 2) == 0)
      {
        goto LABEL_19;
      }

      do
      {
LABEL_18:
        v21 = *(v21 + 5);
      }

      while ((v21[56] & 2) != 0);
      goto LABEL_19;
    }
  }

  v21 = secondaryImage + *v17;
  if ((v21[56] & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  atomic_load_explicit(v21, memory_order_acquire);
    ;
  }

  if (!atomic_load_explicit(j, memory_order_acquire))
  {
    encoderCopy8 = encoder;
    bufferCopy7 = buffer;
    stateCopy8 = state;
    v192 = MTLReportFailureTypeEnabled();
    state = stateCopy8;
    buffer = bufferCopy7;
    encoder = encoderCopy8;
    if (v192)
    {
      v193 = objc_opt_class();
      v258 = NSStringFromClass(v193);
      v253 = NSStringFromSelector(a2);
      v254 = objc_msgSend_debugDescription(secondaryImage, v194, v195, v196, v197, v198, v199, v200);
      v252 = v258;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x3CF, @"[%@ %@] Error: the secondary source image texture is uninitialized.\n\tThis typically means that nothing has written to it yet, and its contents are undefined.\n%@\n", v201, v202, v203, v204);
      state = stateCopy8;
      buffer = bufferCopy7;
      encoder = encoderCopy8;
    }
  }

  if (!destinationImage)
  {
    if (!image || !secondaryImage)
    {
      return;
    }

    stateCopy11 = state;
    bufferCopy10 = buffer;
    encoderCopy11 = encoder;
    goto LABEL_32;
  }

  if ((*(destinationImage + *v17 + 56) & 1) != 0 && !*(destinationImage + *v18))
  {
    encoderCopy10 = encoder;
    bufferCopy9 = buffer;
    stateCopy10 = state;
    v238 = MTLReportFailureTypeEnabled();
    state = stateCopy10;
    buffer = bufferCopy9;
    encoder = encoderCopy10;
    if (v238)
    {
      v239 = objc_opt_class();
      v240 = NSStringFromClass(v239);
      v253 = NSStringFromSelector(a2);
      v254 = objc_msgSend_debugDescription(destinationImage, v241, v242, v243, v244, v245, v246, v247);
      v252 = v240;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x3D5, @"[%@ %@] Error: the destination image texture is temporary and has a readCount of 0.\n\tIts texel storage is probably in use for another texture now.\n%@\n", v248, v249, v250, v251);
      state = stateCopy10;
      buffer = bufferCopy9;
      encoder = encoderCopy10;
    }
  }

LABEL_25:
  if (!image || !secondaryImage)
  {
    return;
  }

  stateCopy11 = state;
  bufferCopy10 = buffer;
  encoderCopy11 = encoder;
  if (!destinationImage)
  {
LABEL_32:
    v41 = 0;
    v33 = 0;
    v25 = 0;
    v42 = 1;
    goto LABEL_33;
  }

  v25 = objc_msgSend_width(destinationImage, a2, encoder, buffer, image, secondaryImage, state, destinationImage);
  v33 = objc_msgSend_height(destinationImage, v26, v27, v28, v29, v30, v31, v32);
  v41 = objc_msgSend_numberOfImages(destinationImage, v34, v35, v36, v37, v38, v39, v40);
  v42 = 0;
LABEL_33:
  memset(&v268, 0, sizeof(v268));
  v267.width = v25;
  v267.height = v33;
  v267.depth = v41;
  v43 = *&self->_clipRect.origin.z;
  *&v266.origin.x = *&self->_clipRect.origin.x;
  *&v266.origin.z = v43;
  *&v266.size.height = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(&v268, &v267, &v266);
  if (destinationImage && !v268.size.depth)
  {
    return;
  }

  if (v268.size.depth <= 1 && self->_encode && !v268.origin.z)
  {
    if (encoderCopy11)
    {
      v266 = v268;
      objc_msgSend_encodeInternalToCommandEncoder_commandBuffer_primaryImage_secondaryImage_inState_destinationImage_subBatchIndex_batchSize_clipRect_(self, v44, encoderCopy11, bufferCopy10, image, secondaryImage, stateCopy11, destinationImage, index, size, &v266);
    }

    else
    {
      v74 = objc_alloc(MEMORY[0x277CD7210]);
      v86 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v74, v75, bufferCopy10, 0, v76, v77, v78, v79);
      v267.width = v86;
      v267.height = self;
      if ((*(&self->super.super.isa + v14) & 0x18) != 0)
      {
        v87 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
        if (v87 || (v88 = objc_opt_class(), v89 = NSStringFromClass(v88), objc_msgSend_setLabel_(self, v90, v89, v91, v92, v93, v94, v95), (v87 = v89) != 0))
        {
          objc_msgSend_setLabel_(v86, v80, v87, v81, v82, v83, v84, v85, v252, v253, v254);
        }
      }

      v266 = v268;
      objc_msgSend_encodeInternalToCommandEncoder_commandBuffer_primaryImage_secondaryImage_inState_destinationImage_subBatchIndex_batchSize_clipRect_(self, v80, v86, bufferCopy10, image, secondaryImage, stateCopy11, destinationImage, index, size, &v266);
      objc_msgSend_endEncoding(v86, v96, v97, v98, v99, v100, v101, v102);
    }

    return;
  }

  v52 = objc_autoreleasePoolPush();
  if (v42)
  {
    v53 = 0;
  }

  else
  {
    v53 = objc_msgSend_batchRepresentation(destinationImage, v45, v46, v47, v48, v49, v50, v51);
  }

  v54 = objc_msgSend_batchRepresentation(image, v45, v46, v47, v48, v49, v50, v51, v252, v253, v254);
  v62 = objc_msgSend_batchRepresentation(secondaryImage, v55, v56, v57, v58, v59, v60, v61);
  v65 = v62;
  v66 = 0;
  if (stateCopy11)
  {
    v67 = *(image + *MEMORY[0x277CD7310]);
    if (v67)
    {
      v255 = v62;
      v256 = v52;
      v68 = malloc_type_malloc(8 * v67, 0x80040B8603338uLL);
      if (!v68)
      {
        v66 = 0;
LABEL_60:
        v65 = v255;
        goto LABEL_61;
      }

      v72 = v68;
      if (v67 > 3)
      {
        v73 = v67 & 0xFFFFFFFFFFFFFFFCLL;
        v103 = vdupq_n_s64(stateCopy11);
        v104 = v68 + 1;
        v105 = v67 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v104[-1] = v103;
          *v104 = v103;
          v104 += 2;
          v105 -= 4;
        }

        while (v105);
        if (v67 == v73)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v73 = 0;
      }

      v106 = v67 - v73;
      v107 = &v68->i64[v73];
      do
      {
        *v107++ = stateCopy11;
        --v106;
      }

      while (v106);
LABEL_59:
      v66 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v63, v68, v67, v69, v70, v71, v64);
      free(v72);
      v52 = v256;
      goto LABEL_60;
    }
  }

LABEL_61:
  objc_msgSend_encodeBatchToCommandBuffer_primaryImages_secondaryImages_inStates_destinationImages_(self, v63, bufferCopy10, v54, v65, v66, v53, v64);
  if (destinationImage)
  {
    if (*(destinationImage + *MEMORY[0x277CD7320] + 56))
    {
      v115 = objc_msgSend_count(v53, v108, v109, v110, v111, v112, v113, v114);
      if (v115)
      {
        v122 = v115;
        v123 = 0;
        for (k = objc_msgSend_objectAtIndexedSubscript_(v53, v116, 0, v117, v118, v119, v120, v121); ; k = objc_msgSend_objectAtIndexedSubscript_(v53, v125, v123, v126, v127, v128, v129, v130))
        {
          if (k != destinationImage)
          {
            objc_msgSend_setReadCount_(k, v125, 0, v126, v127, v128, v129, v130);
          }

          if (v122 == ++v123)
          {
            break;
          }
        }
      }
    }
  }

  MPSDecrementReadCount(image);
  MPSDecrementReadCount(secondaryImage);
  objc_autoreleasePoolPop(v52);
}

- (id)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryImages:(id)images secondaryImages:(id)secondaryImages inStates:(id)states
{
  v55[2] = *MEMORY[0x277D85DE8];
  v14 = objc_msgSend_count(images, a2, encoder, buffer, images, secondaryImages, states, v7);
  v22 = objc_msgSend_count(secondaryImages, v15, v16, v17, v18, v19, v20, v21);
  if (v14 >= v22)
  {
    v14 = v22;
  }

  v55[0] = objc_msgSend_objectAtIndexedSubscript_(images, v23, 0, v24, v25, v26, v27, v28);
  v55[1] = objc_msgSend_objectAtIndexedSubscript_(secondaryImages, v29, 0, v30, v31, v32, v33, v34);
  v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v35, v55, 2, v36, v37, v38, v39);
  v46 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v41, v40, 0, v42, v43, v44, v45);
  if (*(&self->super.super.isa + *MEMORY[0x277CD7378]))
  {
    if (!v46)
    {
      return 0;
    }
  }

  else if (!v46)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v47 = objc_opt_class();
      NSStringFromClass(v47);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x484, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:] Unable to create MPSImageDescriptor for destination.  Encode failed.\n", v48, v49, v50, v51);
    }

    return 0;
  }

  v52 = sub_239D112C8(buffer, self->_destinationImageAllocator, v46, self, v14);
  if (v52)
  {
    objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_primaryImages_secondaryImages_inStates_destinationImages_(self, v53, encoder, buffer, images, secondaryImages, states, v52);
  }

  return v52;
}

- (id)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryImages:(id)images secondaryImages:(id)secondaryImages destinationStates:(id *)states destinationStateIsTemporary:(BOOL)temporary
{
  temporaryCopy = temporary;
  v61[2] = *MEMORY[0x277D85DE8];
  v15 = objc_msgSend_count(images, a2, encoder, buffer, images, secondaryImages, states, temporary);
  v23 = objc_msgSend_count(secondaryImages, v16, v17, v18, v19, v20, v21, v22);
  if (v15 >= v23)
  {
    v15 = v23;
  }

  v61[0] = objc_msgSend_objectAtIndexedSubscript_(images, v24, 0, v25, v26, v27, v28, v29);
  v61[1] = objc_msgSend_objectAtIndexedSubscript_(secondaryImages, v30, 0, v31, v32, v33, v34, v35);
  v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v36, v61, 2, v37, v38, v39, v40);
  v47 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v42, v41, 0, v43, v44, v45, v46);
  if (*(&self->super.super.isa + *MEMORY[0x277CD7378]))
  {
    if (!v47)
    {
      return 0;
    }
  }

  else if (!v47)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v48 = objc_opt_class();
      NSStringFromClass(v48);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x4B2, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:] Unable to create MPSImageDescriptor for destination.  Encode failed.\n", v49, v50, v51, v52);
    }

    return 0;
  }

  v53 = sub_239D112C8(buffer, self->_destinationImageAllocator, v47, self, v15);
  if (v53)
  {
    v57 = temporaryCopy ? objc_msgSend_temporaryResultStateBatchForCommandBuffer_primaryImage_secondaryImage_sourceStates_destinationImage_(self, v54, buffer, images, secondaryImages, 0, v53, v56) : objc_msgSend_resultStateBatchForPrimaryImage_secondaryImage_sourceStates_destinationImage_(self, v54, images, secondaryImages, 0, v53, v55, v56);
    v59 = v57;
    objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_primaryImages_secondaryImages_inStates_destinationImages_(self, v58, encoder, buffer, images, secondaryImages, v57, v53);
    if (states)
    {
      *states = v59;
    }
  }

  return v53;
}

- (void)encodeInternalBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryImages:(id)images secondaryImages:(id)secondaryImages inStates:(id)states destinationImages:(id)destinationImages clipRect:(id *)rect
{
  secondaryImagesCopy = secondaryImages;
  primarySourceFeatureChannelOffset = self->_primarySourceFeatureChannelOffset;
  checkFlags = self->_checkFlags;
  if ((checkFlags & 0x2000) != 0)
  {
    imagesCopy = images;
  }

  else
  {
    v15 = self->_primarySourceFeatureChannelOffset;
    v17 = MEMORY[0x277CD72F8];
    v18 = objc_msgSend_objectAtIndexedSubscript_(images, a2, 0, buffer, images, secondaryImages, states, destinationImages);
    v22 = *(v18 + *v17);
    if (v22 >= v15)
    {
      v23 = v15;
    }

    else
    {
      v23 = *(v18 + *v17);
    }

    v24 = v22 - v23;
    if (v24 >= self->_primarySourceFeatureChannelMaxCount)
    {
      primarySourceFeatureChannelMaxCount = self->_primarySourceFeatureChannelMaxCount;
    }

    else
    {
      primarySourceFeatureChannelMaxCount = v24;
    }

    imagesCopy = sub_239D12298(buffer, encoder, images, v23, primarySourceFeatureChannelMaxCount, v19, v20, v21);
    primarySourceFeatureChannelOffset = 0;
    checkFlags = self->_checkFlags;
  }

  secondarySourceFeatureChannelOffset = self->_secondarySourceFeatureChannelOffset;
  destinationImagesCopy = destinationImages;
  encoderCopy = encoder;
  if ((checkFlags & 0x2000) == 0)
  {
    v27 = objc_msgSend_objectAtIndexedSubscript_(secondaryImagesCopy, a2, 0, buffer, images, secondaryImages, states, destinationImages);
    v31 = *(v27 + *MEMORY[0x277CD72F8]);
    if (v31 >= secondarySourceFeatureChannelOffset)
    {
      v32 = secondarySourceFeatureChannelOffset;
    }

    else
    {
      v32 = *(v27 + *MEMORY[0x277CD72F8]);
    }

    v33 = v31 - v32;
    if (v33 >= self->_secondarySourceFeatureChannelMaxCount)
    {
      secondarySourceFeatureChannelMaxCount = self->_secondarySourceFeatureChannelMaxCount;
    }

    else
    {
      secondarySourceFeatureChannelMaxCount = v33;
    }

    secondaryImagesCopy = sub_239D12298(buffer, encoder, secondaryImagesCopy, v32, secondarySourceFeatureChannelMaxCount, v28, v29, v30);
    secondarySourceFeatureChannelOffset = 0;
  }

  x = self->_primaryOffset.x;
  y = self->_primaryOffset.y;
  selfCopy = self;
  p_primaryOffset = &self->_primaryOffset;
  v239 = secondarySourceFeatureChannelOffset;
  if (self->_isBackwards)
  {
    z = self->_primaryOffset.z;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v236 = 0;
      rectCopy2 = rect;
      if (objc_msgSend_retainedReferences(buffer, v38, v39, v40, v41, v42, v43, v44))
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    v45 = objc_msgSend_kernelOffsetX(self, v38, v39, v40, v41, v42, v43, v44);
    v53 = objc_msgSend_kernelOffsetY(self, v46, v47, v48, v49, v50, v51, v52);
    v54.i64[0] = __PAIR64__(y, x);
    v54.i64[1] = z;
    v55.i32[0] = self->_primaryStrideInPixelsX;
    v55.i32[1] = self->_primaryStrideInPixelsY;
    v56.i64[0] = 0x100000001;
    v56.i64[1] = 0x100000001;
    v57 = vmaxq_s32(v55, v56);
    v58 = vmlaq_s32(__PAIR64__(v53, v45), v57, v54);
    v54.i32[0] = v58.i32[0] / v57.i32[0];
    v54.i32[1] = v58.i32[1] / v57.i32[1];
    v56.i64[0] = v54.i64[0];
    v56.i32[2] = v58.i32[2] / v57.i32[2];
    v56.i32[3] = v58.i32[3] / v57.i32[3];
    v59 = vmlsq_s32(v58, v56, v57);
    v54.i64[0] = vsraq_n_s32(v54, v59, 0x1FuLL).u64[0];
    v60 = vaddq_s32(vandq_s8(vcltzq_s32(v59), v57), v59);
    LODWORD(y) = v54.i32[1];
    LODWORD(x) = v54.i32[0];
    LODWORD(v61) = v60.u16[0];
    HIDWORD(v61) = v60.u16[2];
  }

  else
  {
    v61 = 0;
  }

  v236 = v61;
  rectCopy2 = rect;
  if (objc_msgSend_retainedReferences(buffer, a2, encoder, buffer, images, secondaryImages, states, destinationImages))
  {
LABEL_23:
    v69 = 0;
    goto LABEL_26;
  }

LABEL_25:
  v69 = objc_opt_new();
  v266[0] = MEMORY[0x277D85DD0];
  v266[1] = 3221225472;
  v266[2] = sub_239D123F4;
  v266[3] = &unk_278B28F28;
  v266[4] = v69;
  objc_msgSend_addCompletedHandler_(buffer, v70, v266, v71, v72, v73, v74, v75);
LABEL_26:
  v235 = objc_msgSend_maxBatchSize(self, v62, v63, v64, v65, v66, v67, v68);
  v243 = malloc_type_calloc(v235, 0xB0uLL, 0x10E00404CD50508uLL);
  v82 = __PAIR64__(y, x);
  v224 = __PAIR64__(y, x);
  p_secondaryOffset = &self->_secondaryOffset;
  v84 = *&self->_secondaryOffset.x;
  LOWORD(v82) = self->_primaryKernelWidth;
  WORD2(v82) = self->_primaryKernelHeight;
  v223 = v82;
  LOWORD(v82) = self->_secondaryKernelWidth;
  WORD2(v82) = self->_secondaryKernelHeight;
  context = v82;
  LOWORD(v82) = self->_primaryDilationRateX;
  WORD2(v82) = self->_primaryDilationRateY;
  v222 = v82;
  LOWORD(v82) = self->_secondaryDilationRateX;
  WORD2(v82) = self->_secondaryDilationRateY;
  v231 = v82;
  v85 = destinationImagesCopy;
  if (destinationImagesCopy)
  {
    v229 = *&self->_secondaryOffset.x;
    v86 = objc_msgSend_objectAtIndexedSubscript_(destinationImagesCopy, v76, 0, v77, v78, v79, v80, v81);
    v94 = objc_msgSend_featureChannels(v86, v87, v88, v89, v90, v91, v92, v93);
    v84 = v229;
  }

  else
  {
    v94 = 0;
  }

  v221 = vmovn_s64(v84);
  destinationFeatureChannelOffset = self->_destinationFeatureChannelOffset;
  v96 = (v94 - destinationFeatureChannelOffset + 3) >> 2;
  if (v94 <= destinationFeatureChannelOffset)
  {
    LOWORD(v96) = 0;
  }

  v264 = 0u;
  v265 = 0u;
  v263 = 0u;
  memset(v262, 0, sizeof(v262));
  v260 = 0u;
  v261 = 0u;
  v259 = 0u;
  v257 = 0u;
  v258 = 0u;
  memset(v256, 0, sizeof(v256));
  v254 = 0u;
  v255 = 0u;
  var2 = rectCopy2->var1.var2;
  v251 = 0;
  v252 = 0;
  v253 = v243;
  LOWORD(v97) = vmovn_s64(*&rectCopy2->var0.var0).u16[0];
  WORD1(v97) = v96;
  HIDWORD(v97) = ((destinationFeatureChannelOffset + 3) >> 2);
  v98 = vmovn_s64(*&rectCopy2->var1.var0);
  LOWORD(v99) = v98.i16[0];
  WORD1(v99) = v98.i16[2];
  HIDWORD(v99) = v96;
  *&v255 = v97;
  *(&v255 + 1) = v99;
  bufferCopy = buffer;
  if (destinationImagesCopy)
  {
    v100 = objc_msgSend_objectAtIndexedSubscript_(destinationImagesCopy, v76, 0, v77, v78, v79, v80, v81);
    v101 = MEMORY[0x277CD72F8];
    LOWORD(v256[0]) = *(v100 + *MEMORY[0x277CD72F8]);
    v109 = objc_msgSend_count(destinationImagesCopy, v102, v103, v104, v105, v106, v107, v108);
    v110 = secondaryImagesCopy;
  }

  else
  {
    v109 = 0;
    v110 = secondaryImagesCopy;
    v101 = MEMORY[0x277CD72F8];
  }

  WORD1(v256[0]) = v109;
  DWORD1(v256[0]) = 2;
  WORD4(v256[0]) = 0;
  v111 = vmls_s32(v224, v222, vshr_n_u32(vand_s8(v223, 0xFFFF0000FFFFLL), 1uLL));
  v112 = v235;
  WORD5(v256[0]) = v235;
  WORD5(v257) = v111.i16[2];
  WORD4(v257) = v111.i16[0];
  DWORD2(v256[1]) = 0;
  HIWORD(v257) = WORD2(v236);
  WORD6(v257) = v236;
  *&v257 = 0;
  WORD1(v258) = v223.i16[2];
  LOWORD(v258) = v223.i16[0];
  *(v256 + 12) = 0;
  WORD3(v258) = v224.i16[2];
  primaryStrideInPixelsX = self->_primaryStrideInPixelsX;
  WORD2(v258) = v224.i16[0];
  WORD5(v258) = self->_primaryStrideInPixelsY;
  WORD4(v258) = primaryStrideInPixelsX;
  HIWORD(v258) = v222.i16[2];
  WORD6(v258) = v222.i16[0];
  LOWORD(v259) = primarySourceFeatureChannelOffset;
  WORD1(v259) = *(objc_msgSend_objectAtIndexedSubscript_(imagesCopy, v76, 0, v77, v78, v79, v80, v81) + *v101);
  v237 = primarySourceFeatureChannelOffset;
  v114 = &self->_primaryOffset;
  *(&v259 + 4) = self->_primaryOffset.z;
  *&v260 = 0;
  v115 = vmls_s32(v221, v231, vshr_n_u32(vand_s8(context, 0xFFFF0000FFFFLL), 1uLL));
  WORD5(v260) = v115.i16[2];
  WORD4(v260) = v115.i16[0];
  HIDWORD(v260) = 0;
  WORD1(v261) = context.i16[2];
  LOWORD(v261) = context.i16[0];
  WORD3(v261) = v221.i16[2];
  WORD2(v261) = v221.i16[0];
  secondaryStrideInPixelsX = self->_secondaryStrideInPixelsX;
  WORD5(v261) = self->_secondaryStrideInPixelsY;
  WORD4(v261) = secondaryStrideInPixelsX;
  HIWORD(v261) = v231.i16[2];
  WORD6(v261) = v231.i16[0];
  LOWORD(v262[0]) = v239;
  v123 = *(objc_msgSend_objectAtIndexedSubscript_(v110, v117, 0, v118, v119, v120, v121, v122) + *v101);
  v124 = rectCopy2;
  v125 = *&rectCopy2->var0.var2;
  *&v262[5] = *&rectCopy2->var1.var1;
  v126 = *&rectCopy2->var0.var0;
  *&v262[3] = v125;
  WORD1(v262[0]) = v123;
  v127 = self->_secondaryOffset.z;
  HIDWORD(v262[0]) = v127;
  *&v262[1] = v126;
  v262[9] = self->_primaryOffset.z;
  *&v262[7] = *&p_primaryOffset->x;
  v128 = self->_destinationFeatureChannelOffset;
  v263 = *&p_secondaryOffset->x;
  *&v264 = v127;
  *(&v264 + 1) = v128;
  *&v265 = v237;
  *(&v265 + 1) = v239;
  v129 = bufferCopy;
  if (rectCopy2->var1.var2)
  {
    v240 = 0;
    v130 = 0;
    v131 = MEMORY[0x277CD7488];
    v244 = p_secondaryOffset;
    do
    {
      contexta = objc_autoreleasePoolPush();
      v230 = v124->var1.var2;
      v232 = v230 - v130;
      if (v112 >= v230 - v130)
      {
        v112 = v230 - v130;
      }

      v249 = 0;
      v145 = sub_239D123FC(imagesCopy, v129, v114->z + v130, v112, &v249 + 1, v142, v143, v144);
      v149 = sub_239D123FC(v110, v129, p_secondaryOffset->z + v130, v112, &v249, v146, v147, v148);
      v156 = v149;
      v248 = HIDWORD(v249);
      if (v85)
      {
        v157 = sub_239D123FC(v85, v129, v124->var0.var2 + v130, v112, &v248, v153, v154, v155);
        p_verbosityLevel = &selfCopy->super._verbosityLevel;
        if (v145)
        {
          v159 = v156 == 0;
        }

        else
        {
          v159 = 1;
        }

        if (v159)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v157 = 0;
        p_verbosityLevel = &selfCopy->super._verbosityLevel;
        if (v145)
        {
          v160 = v149 == 0;
        }

        else
        {
          v160 = 1;
        }

        if (v160)
        {
LABEL_50:
          if (MTLReportFailureTypeEnabled())
          {
            v161 = objc_opt_class();
            v220 = NSStringFromClass(v161);
            MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x563, @"[%@ batchEncode...] out of memory: unable to allocate storage to hold encode arguments on device.", v162, v163, v164, v165);
          }

          goto LABEL_54;
        }
      }

      if ((selfCopy->_checkFlags & 0x1000) == 0 && !v157)
      {
        goto LABEL_50;
      }

LABEL_54:
      v251 = v112;
      v252 = v130;
      *&v257 = v145;
      DWORD2(v256[1]) = HIDWORD(v249);
      WORD3(v259) = v112;
      *&v260 = v156;
      DWORD2(v259) = v249;
      HIWORD(v262[0]) = v112;
      *(&v254 + 1) = v157;
      LODWORD(v254) = v248;
      v238 = v112;
      HIWORD(v255) = v112;
      WORD4(v256[0]) = v130 / v235;
      if (v69)
      {
        objc_msgSend_addObject_(v69, v150, v145, v151, v152, v153, v154, v155);
        objc_msgSend_addObject_(v69, v166, v260, v167, v168, v169, v170, v171);
        if (v157)
        {
          objc_msgSend_addObject_(v69, v150, v157, v151, v152, v153, v154, v155);
        }
      }

      if (v230 == v130)
      {
        v129 = bufferCopy;
        v172 = 0;
        v110 = secondaryImagesCopy;
        v173 = imagesCopy;
        v174 = p_primaryOffset;
        v112 = v235;
        if (v232 < v235)
        {
          goto LABEL_99;
        }

        goto LABEL_36;
      }

      v175 = 0;
      v176 = v230 + v240;
      if (v235 < v230 + v240)
      {
        v176 = v235;
      }

      if (v176 <= 1)
      {
        v172 = 1;
      }

      else
      {
        v172 = v176;
      }

      do
      {
        v177 = objc_msgSend_objectAtIndexedSubscript_(imagesCopy, v150, p_primaryOffset->z + v175 + v130, v151, v152, v153, v154, v155, v220);
        v184 = objc_msgSend_objectAtIndexedSubscript_(secondaryImagesCopy, v178, v244->z + v175 + v130, v179, v180, v181, v182, v183);
        if (v85)
        {
          v185 = objc_msgSend_objectAtIndexedSubscript_(v85, v150, p_verbosityLevel[17] + v175 + v130, v151, v152, v153, v154, v155);
        }

        else
        {
          v185 = 0;
        }

        v186 = MEMORY[0x277CD7318];
        v187 = v177 + *MEMORY[0x277CD7318];
        v188 = MEMORY[0x277CD72F8];
        v189 = *(v177 + *MEMORY[0x277CD72F8]);
        if (v189 <= 4)
        {
          v190 = 2;
        }

        else
        {
          v190 = 3;
        }

        v191 = MEMORY[0x277CD7300];
        v192 = *(v177 + *MEMORY[0x277CD7300]);
        v193 = &v243[176 * v175];
        *v193 = v177;
        *(v193 + 1) = v187;
        *(v193 + 4) = 0;
        *(v193 + 3) = v189;
        *(v193 + 4) = v190;
        *(v193 + 5) = 0;
        *(v193 + 6) = v192;
        v194 = v184 + *v186;
        v195 = *(v184 + *v188);
        if (v195 <= 4)
        {
          v196 = 2;
        }

        else
        {
          v196 = 3;
        }

        v197 = *(v184 + *v191);
        *(v193 + 7) = v184;
        *(v193 + 8) = v194;
        *(v193 + 18) = 0;
        *(v193 + 10) = v195;
        *(v193 + 11) = v196;
        *(v193 + 12) = 0;
        *(v193 + 13) = v197;
        *(v193 + 21) = 0;
        if (v185)
        {
          v198 = v185 + *v186;
          v199 = *(v185 + *v188);
          if (v199 <= 4)
          {
            v200 = 2;
          }

          else
          {
            v200 = 3;
          }

          v201 = *(v185 + *v191);
          *(v193 + 14) = v185;
          *(v193 + 15) = v198;
          *(v193 + 32) = 0;
          *(v193 + 17) = v199;
          *(v193 + 18) = v200;
          *(v193 + 19) = 0;
          *(v193 + 20) = v201;
          statesCopy2 = states;
          if (!states)
          {
LABEL_65:
            *(v193 + 21) = 0;
            goto LABEL_66;
          }
        }

        else
        {
          *(v193 + 20) = 0;
          *(v193 + 8) = 0u;
          *(v193 + 9) = 0u;
          *(v193 + 7) = 0u;
          statesCopy2 = states;
          if (!states)
          {
            goto LABEL_65;
          }
        }

        v203 = objc_msgSend_objectAtIndexedSubscript_(statesCopy2, v150, v175 + v130, v151, v152, v153, v154, v155);
        *(v193 + 21) = v203;
        if (v69)
        {
          v204 = v203;
          if (v203)
          {
            if ((*(v203 + *MEMORY[0x277CD7470]) & 1) == 0)
            {
              v205 = *(v203 + *MEMORY[0x277CD7480]);
              if (v205 >= 1)
              {
                v206 = v205 + 1;
                v207 = 72 * v205;
                do
                {
                  v209 = *(v204 + *v131);
                  v210 = v209 + v207;
                  v211 = *(v209 + v207 - 72);
                  if (v211 == 2)
                  {
                    v213 = (v210 - 64);
                    explicit = atomic_load_explicit((v210 - 64), memory_order_acquire);
                    if (!explicit)
                    {
                      MPSAutoTexture::AllocateTexture((v210 - 64), 0);
                      goto LABEL_97;
                    }
                  }

                  else if (v211 == 1)
                  {
                    v212 = v209 + v207;
                    v213 = (v212 - 64);
                    explicit = atomic_load_explicit((v212 - 64), memory_order_acquire);
                    if (!explicit)
                    {
                      MPSAutoBuffer::AllocateBuffer((v212 - 64), 0);
LABEL_97:
                      objc_msgSend_addObject_(v69, v214, atomic_load_explicit(v213, memory_order_acquire), v215, v216, v217, v218, v219);
                      goto LABEL_90;
                    }
                  }

                  else
                  {
                    explicit = 0;
                  }

                  objc_msgSend_addObject_(v69, v150, explicit, v151, v152, v153, v154, v155);
LABEL_90:
                  --v206;
                  v207 -= 72;
                }

                while (v206 > 1);
              }
            }
          }
        }

LABEL_66:
        ++v175;
        v85 = destinationImagesCopy;
      }

      while (v175 != v172);
      v129 = bufferCopy;
      v110 = secondaryImagesCopy;
      v173 = imagesCopy;
      v174 = p_primaryOffset;
      v112 = v235;
      if (v232 < v235)
      {
LABEL_99:
        bzero(&v243[176 * v172], 176 * (v112 - v238));
      }

LABEL_36:
      (selfCopy->_batchEncode)(selfCopy->_encodeData, encoderCopy, v129, &var2);
      objc_msgSend_subarrayWithRange_(v173, v132, v174->z + v130, v238, v133, v134, v135, v136);
      MPSDecrementReadCount();
      imagesCopy = v173;
      v114 = v174;
      p_secondaryOffset = v244;
      objc_msgSend_subarrayWithRange_(v110, v137, v244->z + v130, v238, v138, v139, v140, v141);
      MPSDecrementReadCount();
      objc_autoreleasePoolPop(contexta);
      v130 += v112;
      v124 = rectCopy2;
      v240 -= v112;
    }

    while (v130 < rectCopy2->var1.var2);
  }

  free(v243);
}

- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer primaryImages:(id)images secondaryImages:(id)secondaryImages inStates:(id)states destinationImages:(id)destinationImages
{
  imagesCopy = images;
  v12 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v12) & 1) == 0)
  {
    if (!buffer)
    {
      v585 = MTLReportFailureTypeEnabled();
      buffer = 0;
      if (v585)
      {
        v586 = objc_opt_class();
        v664 = NSStringFromClass(v586);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x5C7, @"[%@ encode...] commandBuffer may not be nil]", v587, v588, v589, v590);
        buffer = 0;
      }
    }

    if (!imagesCopy)
    {
      bufferCopy = buffer;
      v592 = MTLReportFailureTypeEnabled();
      buffer = bufferCopy;
      if (v592)
      {
        v593 = objc_opt_class();
        v664 = NSStringFromClass(v593);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x5C8, @"[%@ encode...] primary source may not be nil", v594, v595, v596, v597);
        buffer = bufferCopy;
      }
    }

    if (!secondaryImages)
    {
      bufferCopy2 = buffer;
      v599 = MTLReportFailureTypeEnabled();
      buffer = bufferCopy2;
      if (v599)
      {
        v600 = objc_opt_class();
        v664 = NSStringFromClass(v600);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x5C9, @"[%@ encode...] secondary source may not be nil", v601, v602, v603, v604);
        buffer = bufferCopy2;
      }
    }

    if (!destinationImages && (self->_checkFlags & 0x1000) == 0)
    {
      bufferCopy3 = buffer;
      v579 = MTLReportFailureTypeEnabled();
      buffer = bufferCopy3;
      if (v579)
      {
        v580 = objc_opt_class();
        v664 = NSStringFromClass(v580);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x5CA, @"[%@ encode...] destination may not be nil", v581, v582, v583, v584);
        buffer = bufferCopy3;
      }
    }

    v13 = *MEMORY[0x277CD7348];
    if ((*(&self->super.super.isa + v12) & ~*(&self->super.super.isa + v13)) != 0)
    {
      bufferCopy4 = buffer;
      v606 = MTLReportFailureTypeEnabled();
      buffer = bufferCopy4;
      if (v606)
      {
        v607 = objc_opt_class();
        v664 = NSStringFromClass(v607);
        v674 = *(&self->super.super.isa + v12) & ~*(&self->super.super.isa + v13);
        MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x5CB, @"[%@ encode...] options flag(s) 0x%16.16lx is unknown or invalid for use with this filter", v608, v609, v610, v611);
        buffer = bufferCopy4;
      }
    }

    if (self->_primaryOffset.z < 0)
    {
      bufferCopy5 = buffer;
      v613 = MTLReportFailureTypeEnabled();
      buffer = bufferCopy5;
      if (v613)
      {
        v614 = objc_opt_class();
        v664 = NSStringFromClass(v614);
        MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x5CC, @"[%@ encode...] the primary offset.z may not be negative", v615, v616, v617, v618);
        buffer = bufferCopy5;
      }
    }

    if (self->_secondaryOffset.z < 0)
    {
      bufferCopy6 = buffer;
      v620 = MTLReportFailureTypeEnabled();
      buffer = bufferCopy6;
      if (v620)
      {
        v621 = objc_opt_class();
        v664 = NSStringFromClass(v621);
        MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x5CD, @"[%@ encode...] the secondary offset.z may not be negative", v622, v623, v624, v625);
        buffer = bufferCopy6;
      }
    }
  }

  bufferCopy7 = buffer;
  v14 = objc_msgSend_objectAtIndexedSubscript_(imagesCopy, a2, 0, buffer, images, secondaryImages, states, destinationImages, v664, v674);
  v697 = objc_msgSend_width(v14, v15, v16, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_objectAtIndexedSubscript_(imagesCopy, v22, 0, v23, v24, v25, v26, v27);
  v698 = objc_msgSend_height(v28, v29, v30, v31, v32, v33, v34, v35);
  v699 = objc_msgSend_count(imagesCopy, v36, v37, v38, v39, v40, v41, v42);
  v49 = objc_msgSend_objectAtIndexedSubscript_(secondaryImages, v43, 0, v44, v45, v46, v47, v48);
  v57 = objc_msgSend_width(v49, v50, v51, v52, v53, v54, v55, v56);
  v64 = objc_msgSend_objectAtIndexedSubscript_(secondaryImages, v58, 0, v59, v60, v61, v62, v63);
  v684 = objc_msgSend_height(v64, v65, v66, v67, v68, v69, v70, v71);
  objc_msgSend_count(secondaryImages, v72, v73, v74, v75, v76, v77, v78);
  if (destinationImages)
  {
    v85 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v79, 0, v80, v81, v82, v83, v84);
    v694 = objc_msgSend_width(v85, v86, v87, v88, v89, v90, v91, v92);
    v99 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v93, 0, v94, v95, v96, v97, v98);
    v695 = objc_msgSend_height(v99, v100, v101, v102, v103, v104, v105, v106);
    v696 = objc_msgSend_count(destinationImages, v107, v108, v109, v110, v111, v112, v113);
    v114 = *&self->_clipRect.origin.x;
    z = self->_clipRect.origin.z;
    v116 = &v694;
  }

  else
  {
    v694 = 0;
    v695 = 0;
    v696 = 0;
    v114 = vandq_s8(*&self->_primaryOffset.x, vcgtzq_s64(*&self->_primaryOffset.x));
    z = self->_primaryOffset.z & ~(self->_primaryOffset.z >> 63);
    v116 = &v697;
  }

  v691.size = self->_clipRect.size;
  memset(&v693, 0, sizeof(v693));
  v692 = *v116;
  *&v691.origin.x = v114;
  v691.origin.z = z;
  MPSGetEffectiveClipRegion(&v693, &v692, &v691);
  v123 = objc_msgSend_objectAtIndexedSubscript_(imagesCopy, v117, 0, v118, v119, v120, v121, v122);
  v688 = objc_msgSend_featureChannels(v123, v124, v125, v126, v127, v128, v129, v130);
  v137 = objc_msgSend_objectAtIndexedSubscript_(secondaryImages, v131, 0, v132, v133, v134, v135, v136);
  v686 = objc_msgSend_featureChannels(v137, v138, v139, v140, v141, v142, v143, v144);
  secondaryImagesCopy = secondaryImages;
  if (destinationImages)
  {
    v152 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v145, 0, v147, v148, v149, v150, v151);
    v683 = objc_msgSend_featureChannels(v152, v153, v154, v155, v156, v157, v158, v159);
    v679 = v12;
    v690 = imagesCopy;
    if (*(&self->super.super.isa + v12))
    {
      goto LABEL_100;
    }
  }

  else
  {
    v683 = 0;
    v679 = v12;
    v690 = imagesCopy;
    if (*(&self->super.super.isa + v12))
    {
      goto LABEL_100;
    }
  }

  objc_msgSend_count(imagesCopy, v145, v146, v147, v148, v149, v150, v151);
  v160 = v693.size.depth + v693.origin.z;
  if (v160 > objc_msgSend_count(imagesCopy, v161, v162, v163, v164, v165, v166, v167) && MTLReportFailureTypeEnabled())
  {
    v626 = objc_opt_class();
    v627 = NSStringFromClass(v626);
    v628 = v693.origin.z;
    depth = v693.size.depth;
    v677 = objc_msgSend_count(imagesCopy, v629, v630, v631, v632, v633, v634, v635);
    v665 = v627;
    v675 = v628;
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x5EE, @"[%@ encode...] Error invalid operation: the clipRect.origin.z(%lu) + clipRect.size.depth(%lu) > primaryImages.count(%lu)", v636, v637, v638, v639);
  }

  objc_msgSend_count(secondaryImages, v168, v169, v170, v171, v172, v173, v174, v665, v675, depth, v677);
  v175 = v693.size.depth + v693.origin.z;
  if (v175 > objc_msgSend_count(secondaryImages, v176, v177, v178, v179, v180, v181, v182) && MTLReportFailureTypeEnabled())
  {
    v640 = objc_opt_class();
    v641 = NSStringFromClass(v640);
    v642 = v693.origin.z;
    depth = v693.size.depth;
    v677 = objc_msgSend_count(secondaryImages, v643, v644, v645, v646, v647, v648, v649);
    v665 = v641;
    v675 = v642;
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x5F2, @"[%@ encode...] Error invalid operation: the clipRect.origin.z(%lu) + clipRect.size.depth(%lu) > secondaryImages.count(%lu)", v650, v651, v652, v653);
  }

  if ((self->_checkFlags & 0x40000) == 0)
  {
    if (self->_primaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
    {
      v654 = objc_opt_class();
      v665 = NSStringFromClass(v654);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x5F6, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:destinationImage]: the filter edge mode for primaryImage must be MPSImageEdgeModeZero or MPSImageEdgeModeClamp for this filter.", v655, v656, v657, v658);
    }

    if (self->_secondaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
    {
      v659 = objc_opt_class();
      v665 = NSStringFromClass(v659);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x5F7, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:destinationImage]: the filter edge mode for secondaryImage must be MPSImageEdgeModeZero or MPSImageEdgeModeClamp for this filter.", v660, v661, v662, v663);
    }
  }

  if (v693.size.depth)
  {
    v183 = 0;
    v184 = MEMORY[0x277CD7320];
    do
    {
      v192 = objc_msgSend_objectAtIndexedSubscript_(imagesCopy, v145, self->_primaryOffset.z + v183, v147, v148, v149, v150, v151, v665, v675, depth, v677);
      v206 = objc_msgSend_objectAtIndexedSubscript_(secondaryImagesCopy, v193, self->_secondaryOffset.z + v183, v194, v195, v196, v197, v198);
      if (destinationImages)
      {
        v207 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v199, v693.origin.z + v183, v201, v202, v203, v204, v205);
        objc_msgSend_numberOfImages(v192, v208, v209, v210, v211, v212, v213, v214);
        if (objc_msgSend_numberOfImages(v192, v215, v216, v217, v218, v219, v220, v221) == 1)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v207 = 0;
        objc_msgSend_numberOfImages(v192, v199, v200, v201, v202, v203, v204, v205);
        if (objc_msgSend_numberOfImages(v192, v229, v230, v231, v232, v233, v234, v235) == 1)
        {
          goto LABEL_30;
        }
      }

      if (MTLReportFailureTypeEnabled())
      {
        v372 = objc_opt_class();
        v666 = NSStringFromClass(v372);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x601, @"[%@ encode...] each of the individual primary source images in a batch must have numberOfImages = 1\n", v373, v374, v375, v376);
      }

LABEL_30:
      objc_msgSend_numberOfImages(v206, v222, v223, v224, v225, v226, v227, v228, v666);
      if (objc_msgSend_numberOfImages(v206, v236, v237, v238, v239, v240, v241, v242) != 1 && MTLReportFailureTypeEnabled())
      {
        v377 = objc_opt_class();
        v667 = NSStringFromClass(v377);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x604, @"[%@ encode...] each of the individual secondary source images in a batch must have numberOfImages = 1\n", v378, v379, v380, v381);
      }

      v250 = v697;
      if (v250 == objc_msgSend_width(v192, v243, v244, v245, v246, v247, v248, v249, v667))
      {
        objc_msgSend_height(v192, v251, v252, v253, v254, v255, v256, v257);
      }

      if (v250 != objc_msgSend_width(v192, v251, v252, v253, v254, v255, v256, v257) || (v265 = v698, v265 != objc_msgSend_height(v192, v258, v259, v260, v261, v262, v263, v264)))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v362 = objc_opt_class();
          v668 = NSStringFromClass(v362);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x609, @"[%@ encode...] error: all primary source image sizes must match\n", v363, v364, v365, v366);
        }
      }

      if (v57 == objc_msgSend_width(v206, v266, v267, v268, v269, v270, v271, v272, v668))
      {
        objc_msgSend_height(v206, v273, v274, v275, v276, v277, v278, v279);
      }

      if ((v57 != objc_msgSend_width(v206, v273, v274, v275, v276, v277, v278, v279) || v684 != objc_msgSend_height(v206, v280, v281, v282, v283, v284, v285, v286)) && MTLReportFailureTypeEnabled())
      {
        v367 = objc_opt_class();
        v669 = NSStringFromClass(v367);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x60D, @"[%@ encode...] error: all secondary source image sizes must match\n", v368, v369, v370, v371);
      }

      objc_msgSend_featureChannels(v192, v287, v288, v289, v290, v291, v292, v293, v669);
      if (v688 != objc_msgSend_featureChannels(v192, v294, v295, v296, v297, v298, v299, v300) && MTLReportFailureTypeEnabled())
      {
        v382 = objc_opt_class();
        v670 = NSStringFromClass(v382);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x610, @"[%@ encode...] error: all primary source number of feature channels must match\n", v383, v384, v385, v386);
      }

      objc_msgSend_featureChannels(v206, v301, v302, v303, v304, v305, v306, v307, v670);
      if (v686 != objc_msgSend_featureChannels(v206, v308, v309, v310, v311, v312, v313, v314) && MTLReportFailureTypeEnabled())
      {
        v387 = objc_opt_class();
        v665 = NSStringFromClass(v387);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x613, @"[%@ encode...] error: all secondary source number of feature channels must match\n", v388, v389, v390, v391);
      }

      if ((v192[*v184 + 56] & 1) != 0 && !*&v192[*MEMORY[0x277CD7490]] && MTLReportFailureTypeEnabled())
      {
        v428 = objc_opt_class();
        v429 = NSStringFromClass(v428);
        v675 = NSStringFromSelector(a2);
        depth = objc_msgSend_debugDescription(v192, v430, v431, v432, v433, v434, v435, v436);
        v665 = v429;
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x618, @"[%@ %@] Error: the primary source image texture has a zero read count, and has probably already been released for reuse by another texture or buffer.\n%@\n", v437, v438, v439, v440);
        v316 = &v192[*v184];
        if ((v316[56] & 2) == 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v316 = &v192[*v184];
        if ((v316[56] & 2) == 0)
        {
          goto LABEL_45;
        }
      }

      do
      {
        v316 = *(v316 + 5);
      }

      while ((v316[56] & 2) != 0);
LABEL_45:
      atomic_load_explicit(v316, memory_order_acquire);
        ;
      }

      if (!atomic_load_explicit(i, memory_order_acquire) && MTLReportFailureTypeEnabled())
      {
        v392 = objc_opt_class();
        v393 = NSStringFromClass(v392);
        v675 = NSStringFromSelector(a2);
        depth = objc_msgSend_debugDescription(v192, v394, v395, v396, v397, v398, v399, v400);
        v665 = v393;
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x61D, @"[%@ %@] Error: the primary source image texture is uninitialized.\n\tThis typically means that nothing has written to it yet, and its contents are undefined.\n%@\n", v401, v402, v403, v404);
      }

      if ((v206[*v184 + 56] & 1) != 0 && !*&v206[*MEMORY[0x277CD7490]] && MTLReportFailureTypeEnabled())
      {
        v441 = objc_opt_class();
        v442 = NSStringFromClass(v441);
        v675 = NSStringFromSelector(a2);
        depth = objc_msgSend_debugDescription(v192, v443, v444, v445, v446, v447, v448, v449);
        v665 = v442;
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x622, @"[%@ %@] Error: the secondaryImage source image texture has a zero read count, and has probably already been released for reuse by another texture or buffer.\n%@\n", v450, v451, v452, v453);
        for (j = &v206[*v184]; (j[56] & 2) != 0; j = *(j + 5))
        {
LABEL_51:
          ;
        }
      }

      else
      {
        j = &v206[*v184];
        if ((j[56] & 2) != 0)
        {
          goto LABEL_51;
        }
      }

      atomic_load_explicit(j, memory_order_acquire);
        ;
      }

      if (!atomic_load_explicit(k, memory_order_acquire) && MTLReportFailureTypeEnabled())
      {
        v405 = objc_opt_class();
        v406 = NSStringFromClass(v405);
        v675 = NSStringFromSelector(a2);
        depth = objc_msgSend_debugDescription(v206, v407, v408, v409, v410, v411, v412, v413);
        v665 = v406;
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x627, @"[%@ %@] Error: the secondary source image texture is uninitialized.\n\tThis typically means that nothing has written to it yet, and its contents are undefined.\n%@\n", v414, v415, v416, v417);
      }

      imagesCopy = v690;
      if ((self->_checkFlags & 0x40000) == 0)
      {
        if (self->_primaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
        {
          v454 = objc_opt_class();
          v665 = NSStringFromClass(v454);
          MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x62B, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:destinationImage]: the filter edge mode for primaryImage must be MPSImageEdgeModeZero or MPSImageEdgeModeClamp for this filter.", v455, v456, v457, v458);
        }

        if (self->_secondaryEdgeMode >= 2 && MTLReportFailureTypeEnabled())
        {
          v459 = objc_opt_class();
          v665 = NSStringFromClass(v459);
          MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x62C, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:destinationImage]: the filter edge mode for secondaryImage must be MPSImageEdgeModeZero or MPSImageEdgeModeClamp for this filter.", v460, v461, v462, v463);
        }
      }

      if (v207)
      {
        if ((v207[*v184 + 56] & 1) != 0 && !*&v207[*MEMORY[0x277CD7490]] && MTLReportFailureTypeEnabled())
        {
          v464 = objc_opt_class();
          v465 = NSStringFromClass(v464);
          v675 = NSStringFromSelector(a2);
          depth = objc_msgSend_debugDescription(v207, v466, v467, v468, v469, v470, v471, v472);
          v665 = v465;
          imagesCopy = v690;
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x635, @"[%@ %@] Error: the destination image texture is temporary and has a readCount of 0.\n\tIts texel storage is probably in use for another texture now.\n%@\n", v473, v474, v475, v476);
        }

        objc_msgSend_numberOfImages(v207, v145, v315, v147, v148, v149, v150, v151, v665);
        if (objc_msgSend_numberOfImages(v207, v320, v321, v322, v323, v324, v325, v326) != 1 && MTLReportFailureTypeEnabled())
        {
          v423 = objc_opt_class();
          v671 = NSStringFromClass(v423);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x639, @"[%@ encode...] each of the individual destination images in a batch must have numberOfImages = 1\n", v424, v425, v426, v427);
        }

        v334 = v694;
        if (v334 == objc_msgSend_width(v207, v327, v328, v329, v330, v331, v332, v333, v671))
        {
          objc_msgSend_height(v207, v335, v336, v337, v338, v339, v340, v341);
        }

        if (v334 != objc_msgSend_width(v207, v335, v336, v337, v338, v339, v340, v341) || (v349 = v695, v349 != objc_msgSend_height(v207, v342, v343, v344, v345, v346, v347, v348)))
        {
          if (MTLReportFailureTypeEnabled())
          {
            v357 = objc_opt_class();
            v672 = NSStringFromClass(v357);
            MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x63E, @"[%@ encode...] error: all destination image sizes must match\n", v358, v359, v360, v361);
          }
        }

        objc_msgSend_featureChannels(v207, v350, v351, v352, v353, v354, v355, v356, v672);
        if (v683 != objc_msgSend_featureChannels(v207, v185, v186, v187, v188, v189, v190, v191) && MTLReportFailureTypeEnabled())
        {
          v418 = objc_opt_class();
          v665 = NSStringFromClass(v418);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x642, @"[%@ encode...] error: all destination number of feature channels must match\n", v419, v420, v421, v422);
        }
      }

      ++v183;
    }

    while (v183 < v693.size.depth);
  }

LABEL_100:
  v477 = secondaryImagesCopy;
  if (!imagesCopy || !secondaryImagesCopy || !v693.size.height || !v693.size.width || !v693.size.depth)
  {
    return;
  }

  batchEncode = self->_batchEncode;
  if (!batchEncode)
  {
    goto LABEL_109;
  }

  checkFlags = self->_checkFlags;
  if (((*(**(&self->super.super.isa + *MEMORY[0x277CD7350]) + 56))(*(&self->super.super.isa + *MEMORY[0x277CD7350])) & 1) == 0 && (checkFlags & 0x10000) == 0)
  {
    LOBYTE(batchEncode) = v693.size.depth == 0;
LABEL_109:
    v687 = self->_clipRect.origin.z;
    v685 = self->_clipRect.size.depth;
    v480 = self->_primaryOffset.z;
    v481 = self->_secondaryOffset.z;
    self->_clipRect.origin.z = 0;
    self->_clipRect.size.depth = 1;
    self->_primaryOffset.z = 0;
    self->_secondaryOffset.z = 0;
    if ((batchEncode & 1) == 0)
    {
      if (destinationImages)
      {
        if (states)
        {
          v482 = 0;
          do
          {
            v483 = objc_msgSend_objectAtIndexedSubscript_(v690, v145, v480 + v482, v147, v148, v149, v150, v151, v665);
            v490 = objc_msgSend_objectAtIndexedSubscript_(v477, v484, v481 + v482, v485, v486, v487, v488, v489);
            v497 = objc_msgSend_objectAtIndexedSubscript_(states, v491, v482, v492, v493, v494, v495, v496);
            v504 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v498, v482 + v693.origin.z, v499, v500, v501, v502, v503);
            v505 = v497;
            v477 = secondaryImagesCopy;
            objc_msgSend_encodeToCommandEncoder_commandBuffer_primaryImage_secondaryImage_inState_destinationImage_subBatchIndex_batchSize_(self, v506, encoder, bufferCopy7, v483, v490, v505, v504, v482++, v693.size.depth);
          }

          while (v482 < v693.size.depth);
        }

        else
        {
          v561 = 0;
          do
          {
            v562 = objc_msgSend_objectAtIndexedSubscript_(v690, v145, v480 + v561, v147, v148, v149, v150, v151, v665);
            v569 = objc_msgSend_objectAtIndexedSubscript_(secondaryImagesCopy, v563, v481 + v561, v564, v565, v566, v567, v568);
            v576 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v570, v561 + v693.origin.z, v571, v572, v573, v574, v575);
            objc_msgSend_encodeToCommandEncoder_commandBuffer_primaryImage_secondaryImage_inState_destinationImage_subBatchIndex_batchSize_(self, v577, encoder, bufferCopy7, v562, v569, 0, v576, v561++, v693.size.depth);
          }

          while (v561 < v693.size.depth);
        }
      }

      else
      {
        v507 = 0;
        statesCopy2 = states;
        for (m = objc_msgSend_objectAtIndexedSubscript_(v690, v145, v480, v147, v148, v149, v150, v151, v665); ; m = objc_msgSend_objectAtIndexedSubscript_(v690, v518, v480 + v507, v519, v520, v521, v522, v523, v673))
        {
          v524 = m;
          v531 = objc_msgSend_objectAtIndexedSubscript_(secondaryImagesCopy, v510, v481 + v507, v511, v512, v513, v514, v515);
          if (statesCopy2)
          {
            v516 = objc_msgSend_objectAtIndexedSubscript_(statesCopy2, v525, v507, v526, v527, v528, v529, v530);
            objc_msgSend_encodeToCommandEncoder_commandBuffer_primaryImage_secondaryImage_inState_destinationImage_subBatchIndex_batchSize_(self, v517, encoder, bufferCopy7, v524, v531, v516, 0, v507, v693.size.depth);
          }

          else
          {
            objc_msgSend_encodeToCommandEncoder_commandBuffer_primaryImage_secondaryImage_inState_destinationImage_subBatchIndex_batchSize_(self, v525, encoder, bufferCopy7, v524, v531, 0, 0, v507, v693.size.depth);
          }

          ++v507;
          statesCopy2 = states;
          if (v507 >= v693.size.depth)
          {
            break;
          }
        }
      }
    }

    self->_primaryOffset.z = v480;
    self->_secondaryOffset.z = v481;
    self->_clipRect.origin.z = v687;
    self->_clipRect.size.depth = v685;
    return;
  }

  if (encoder)
  {
    v691 = v693;
    objc_msgSend_encodeInternalBatchToCommandEncoder_commandBuffer_primaryImages_secondaryImages_inStates_destinationImages_clipRect_(self, v145, encoder, bufferCopy7, imagesCopy, secondaryImagesCopy, states, destinationImages, &v691);
  }

  else
  {
    v532 = objc_alloc(MEMORY[0x277CD7210]);
    v544 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v532, v533, bufferCopy7, 0, v534, v535, v536, v537);
    v692.width = v544;
    v692.height = self;
    if ((*(&self->super.super.isa + v679) & 0x18) != 0)
    {
      v545 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
      if (v545 || (v546 = objc_opt_class(), v547 = NSStringFromClass(v546), objc_msgSend_setLabel_(self, v548, v547, v549, v550, v551, v552, v553), (v545 = v547) != 0))
      {
        objc_msgSend_setLabel_(v544, v538, v545, v539, v540, v541, v542, v543, v665);
      }
    }

    v691 = v693;
    objc_msgSend_encodeInternalBatchToCommandEncoder_commandBuffer_primaryImages_secondaryImages_inStates_destinationImages_clipRect_(self, v538, v544, bufferCopy7, imagesCopy, secondaryImagesCopy, states, destinationImages, &v691, v675, depth, v677);
    objc_msgSend_endEncoding(v544, v554, v555, v556, v557, v558, v559, v560);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNBinaryKernel;
  [(MPSKernel *)&v3 dealloc];
}

- (MPSImageDescriptor)destinationImageDescriptorForSourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates
{
  if (!self->_padding && MTLReportFailureTypeEnabled())
  {
    v39 = objc_opt_class();
    v49 = NSStringFromClass(v39);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x6A5, @"[%@ destinationImageDescriptorForSourceImages:sourceStates:updateOffset:] no padding method set. Can not compute result.", v40, v41, v42, v43);
  }

  v11 = objc_msgSend_paddingMethod(self->_padding, a2, sourceImages, sourceStates, v4, v5, v6, v7, v49);
  v13 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_paddingMethod_primaryOffset_secondaryOffset_kernelOffset_(self, v12, sourceImages, sourceStates, v11, &self->_primaryOffset, &self->_secondaryOffset, 0);
  v21 = objc_msgSend_count(sourceStates, v14, v15, v16, v17, v18, v19, v20);
  if (v21)
  {
    v28 = v21;
    for (i = 0; i != v28; ++i)
    {
      v30 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v22, i, v23, v24, v25, v26, v27);
      v13 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_forKernel_suggestedDescriptor_(v30, v31, sourceImages, sourceStates, self, v13, v32, v33);
    }
  }

  if ((v11 & 0x4000) == 0)
  {
    return v13;
  }

  objc_opt_respondsToSelector();
  if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v44 = objc_opt_class();
    NSStringFromClass(v44);
    MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x6BA, @"[%@ destinationImageDescriptorForSourceImages:sourceStates:updateOffset:] the object padding method %p does not respond to the destinationImageDescriptorForSourceImages:sourceStates:forKernel:suggestedDescriptor: selector", v45, v46, v47, v48);
  }

  padding = self->_padding;

  return objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_forKernel_suggestedDescriptor_(padding, v35, sourceImages, sourceStates, self, v13, v36, v37);
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method primaryOffset:(id *)offset secondaryOffset:(id *)secondaryOffset kernelOffset:(id *)kernelOffset
{
  methodCopy = method;
  objc_msgSend_count(images, a2, images, states, method, offset, secondaryOffset, kernelOffset);
  if (objc_msgSend_count(images, v10, v11, v12, v13, v14, v15, v16) <= 1 && MTLReportFailureTypeEnabled())
  {
    v289 = objc_opt_class();
    v294 = NSStringFromClass(v289);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x6CD, @"[%@ destinationImageDescriptorForSourceImages:sourceStates:paddingMethod:primaryOffset:secondaryOffset:kernelOffset] Error:\n\t This is a binary filter. sourceImages should be an array of at least length 2.", v290, v291, v292, v293);
  }

  primaryKernelHeight = self->_primaryKernelHeight;
  primaryKernelWidth = self->_primaryKernelWidth;
  v23 = objc_msgSend_objectAtIndexedSubscript_(images, v17, 0, v18, v19, v20, v21, v22, v294);
  primarySourceFeatureChannelOffset = self->_primarySourceFeatureChannelOffset;
  v31 = MEMORY[0x277CD72F8];
  v32 = *(v23 + *MEMORY[0x277CD72F8]);
  v33 = v32 >= primarySourceFeatureChannelOffset;
  v34 = v32 - primarySourceFeatureChannelOffset;
  if (!v33)
  {
    v34 = 0;
  }

  if (v34 >= self->_primarySourceFeatureChannelMaxCount)
  {
    primarySourceFeatureChannelMaxCount = self->_primarySourceFeatureChannelMaxCount;
  }

  else
  {
    primarySourceFeatureChannelMaxCount = v34;
  }

  v36 = objc_msgSend_objectAtIndexedSubscript_(images, v24, 1, v25, v26, v27, v28, v29);
  secondarySourceFeatureChannelOffset = self->_secondarySourceFeatureChannelOffset;
  v38 = *(v36 + *v31);
  v33 = v38 >= secondarySourceFeatureChannelOffset;
  v39 = v38 - secondarySourceFeatureChannelOffset;
  if (!v33)
  {
    v39 = 0;
  }

  if (v39 >= self->_secondarySourceFeatureChannelMaxCount)
  {
    secondarySourceFeatureChannelMaxCount = self->_secondarySourceFeatureChannelMaxCount;
  }

  else
  {
    secondarySourceFeatureChannelMaxCount = v39;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (primarySourceFeatureChannelMaxCount <= secondarySourceFeatureChannelMaxCount)
  {
    v48 = secondarySourceFeatureChannelMaxCount;
  }

  else
  {
    v48 = primarySourceFeatureChannelMaxCount;
  }

  if ((isKindOfClass & 1) == 0)
  {
    v48 = primarySourceFeatureChannelMaxCount;
  }

  v312 = v48;
  v49 = objc_msgSend_objectAtIndexedSubscript_(images, v42, 0, v43, v44, v45, v46, v47);
  v50 = MEMORY[0x277CD7330];
  v51 = *(v49 + *MEMORY[0x277CD7330]);
  v58 = objc_msgSend_objectAtIndexedSubscript_(images, v52, 1, v53, v54, v55, v56, v57);
  if (v51 <= *(v58 + *v50))
  {
    v65 = *(v58 + *v50);
  }

  else
  {
    v65 = v51;
  }

  v66 = objc_msgSend_objectAtIndexedSubscript_(images, v59, 0, v60, v61, v62, v63, v64);
  v67 = MEMORY[0x277CD7308];
  v68 = *(v66 + *MEMORY[0x277CD7308]);
  v75 = objc_msgSend_objectAtIndexedSubscript_(images, v69, 1, v70, v71, v72, v73, v74);
  if (v68 <= *(v75 + *v67))
  {
    v68 = *(v75 + *v67);
  }

  v82 = objc_msgSend_objectAtIndexedSubscript_(images, v76, 0, v77, v78, v79, v80, v81);
  v83 = MEMORY[0x277CD7310];
  v84 = *(v82 + *MEMORY[0x277CD7310]);
  v98 = *(objc_msgSend_objectAtIndexedSubscript_(images, v85, 1, v86, v87, v88, v89, v90) + *v83);
  if (v84 > v98)
  {
    v98 = v84;
  }

  v311 = v98;
  if (self->_supportsBroadcasting)
  {
    v99 = objc_msgSend_objectAtIndexedSubscript_(images, v91, 0, v93, v94, v95, v96, v97);
    v100 = MEMORY[0x277CD7330];
    v101.i32[0] = *(v99 + *MEMORY[0x277CD7330]);
    v306 = v101;
    v108 = objc_msgSend_objectAtIndexedSubscript_(images, v102, 0, v103, v104, v105, v106, v107);
    v109 = v306;
    v109.i32[1] = *(v108 + *v67);
    v109.i32[2] = primarySourceFeatureChannelMaxCount;
    v307 = v109;
    v116.i32[0] = *(objc_msgSend_objectAtIndexedSubscript_(images, v110, 1, v111, v112, v113, v114, v115) + *v100);
    v304 = v116;
    v123 = objc_msgSend_objectAtIndexedSubscript_(images, v117, 1, v118, v119, v120, v121, v122);
    v131 = v304;
    v131.i32[1] = *(v123 + *v67);
    v131.i32[2] = secondarySourceFeatureChannelMaxCount;
    v132.i64[0] = 0x200000002;
    v132.i64[1] = 0x200000002;
    v133 = vcgtq_s32(v132, v307);
    v134 = vcgtq_s32(v132, v131);
    v135 = vandq_s8(vcgeq_s32(v131, v132), v133);
    v136.i64[0] = 0x100000001;
    v136.i64[1] = 0x100000001;
    v137 = vaddq_s32(v135, v136).u64[0];
    v138 = secondarySourceFeatureChannelMaxCount;
    if (v135.i32[0])
    {
      self->_primaryStrideInPixelsX = v137;
    }

    v139 = vbicq_s8(v134, v133);
    if (v135.i32[1])
    {
      self->_primaryStrideInPixelsY = SHIDWORD(v137);
    }

    v140 = vaddq_s32(v139, v136).u64[0];
    if (v139.i32[0])
    {
      self->_secondaryStrideInPixelsX = v140;
    }

    if (v139.i32[1])
    {
      self->_secondaryStrideInPixelsY = SHIDWORD(v140);
    }

    v141 = objc_msgSend_count(images, v124, v125, v126, v127, v128, v129, v130);
    if (v141 >= 2)
    {
      v142 = v141;
      v143 = 1;
      v144 = MEMORY[0x277CD7378];
      do
      {
        if (v65 == 1 || *(objc_msgSend_objectAtIndexedSubscript_(images, v91, v143, v93, v94, v95, v96, v97) + *v100) == 1)
        {
          v65 = *(objc_msgSend_objectAtIndexedSubscript_(images, v91, v143, v93, v94, v95, v96, v97, v295) + *v100);
        }

        else if ((*(&self->super.super.isa + *v144) & 1) == 0)
        {
          objc_msgSend_objectAtIndexedSubscript_(images, v91, v143, v93, v94, v95, v96, v97);
          if (v65 != *(objc_msgSend_objectAtIndexedSubscript_(images, v156, v143, v157, v158, v159, v160, v161) + *v100))
          {
            if (MTLReportFailureTypeEnabled())
            {
              v162 = objc_opt_class();
              v295 = NSStringFromClass(v162);
              MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x707, @"%@: Error for filters that support broadcasting the input source image widths must match (or be 1)\n", v163, v164, v165, v166);
            }
          }
        }

        if (v68 == 1 || *(objc_msgSend_objectAtIndexedSubscript_(images, v91, v143, v93, v94, v95, v96, v97) + *v67) == 1)
        {
          v68 = *(objc_msgSend_objectAtIndexedSubscript_(images, v91, v143, v93, v94, v95, v96, v97, v295) + *v67);
        }

        else if ((*(&self->super.super.isa + *v144) & 1) == 0)
        {
          objc_msgSend_objectAtIndexedSubscript_(images, v91, v143, v93, v94, v95, v96, v97);
          if (v65 != *(objc_msgSend_objectAtIndexedSubscript_(images, v167, v143, v168, v169, v170, v171, v172) + *v100))
          {
            if (MTLReportFailureTypeEnabled())
            {
              v173 = objc_opt_class();
              v295 = NSStringFromClass(v173);
              MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x70C, @"%@: Error for filters that support broadcasting the input source image heights must match (or be 1)\n", v174, v175, v176, v177);
            }
          }
        }

        if (v311 == 1 || *(objc_msgSend_objectAtIndexedSubscript_(images, v91, v143, v93, v94, v95, v96, v97) + *MEMORY[0x277CD7310]) == 1)
        {
          v311 = *(objc_msgSend_objectAtIndexedSubscript_(images, v91, v143, v93, v94, v95, v96, v97, v295) + *MEMORY[0x277CD7310]);
        }

        else if ((*(&self->super.super.isa + *v144) & 1) == 0)
        {
          objc_msgSend_objectAtIndexedSubscript_(images, v91, v143, v93, v94, v95, v96, v97);
          if (v65 != *(objc_msgSend_objectAtIndexedSubscript_(images, v178, v143, v179, v180, v181, v182, v183) + *v100))
          {
            if (MTLReportFailureTypeEnabled())
            {
              v184 = objc_opt_class();
              v295 = NSStringFromClass(v184);
              MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x711, @"%@: Error for filters that support broadcasting the input source image count must match (or be 1)\n", v185, v186, v187, v188);
            }
          }
        }

        if (v312 == 1)
        {
          v312 = v138;
          if (v143 != 1)
          {
            v312 = *(objc_msgSend_objectAtIndexedSubscript_(images, v91, v143, v93, v94, v95, v96, v97) + *MEMORY[0x277CD72F8]);
          }
        }

        else if ((*(&self->super.super.isa + *v144) & 1) == 0)
        {
          objc_msgSend_objectAtIndexedSubscript_(images, v91, v143, v93, v94, v95, v96, v97);
          if (v65 != *(objc_msgSend_objectAtIndexedSubscript_(images, v145, v143, v146, v147, v148, v149, v150) + *v100))
          {
            if (MTLReportFailureTypeEnabled())
            {
              v151 = objc_opt_class();
              v295 = NSStringFromClass(v151);
              MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x71B, @"%@: Error for filters that support broadcasting the number of input source image feature channels must match (or be 1)\n", v152, v153, v154, v155);
            }
          }
        }

        ++v143;
      }

      while (v142 != v143);
    }
  }

  else
  {
    v100 = MEMORY[0x277CD7330];
  }

  if (self->_primaryStrideInPixelsX <= self->_secondaryStrideInPixelsX)
  {
    secondaryStrideInPixelsX = self->_secondaryStrideInPixelsX;
  }

  else
  {
    secondaryStrideInPixelsX = self->_primaryStrideInPixelsX;
  }

  if (self->_primaryStrideInPixelsY <= self->_secondaryStrideInPixelsY)
  {
    secondaryStrideInPixelsY = self->_secondaryStrideInPixelsY;
  }

  else
  {
    secondaryStrideInPixelsY = self->_primaryStrideInPixelsY;
  }

  v191 = methodCopy;
  v192 = (((methodCopy >> 4) & 3) - 1);
  v193 = (primaryKernelWidth - 1) * v192;
  if (!self->_isBackwards)
  {
    secondaryOffsetCopy3 = secondaryOffset;
    kernelOffsetCopy3 = kernelOffset;
    statesCopy2 = states;
    if (secondaryStrideInPixelsX)
    {
      v200 = (((v65 + v193) & ~((v65 + v193) >> 63)) + secondaryStrideInPixelsX - 1) / secondaryStrideInPixelsX;
      if (v200 <= 1)
      {
        v200 = 1;
      }

      v308 = v200;
      if (secondaryStrideInPixelsY)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v308 = 1;
      if (secondaryStrideInPixelsY)
      {
LABEL_80:
        v196 = (((v68 + (primaryKernelHeight - 1) * v192) & ~((v68 + (primaryKernelHeight - 1) * v192) >> 63)) + secondaryStrideInPixelsY - 1) / secondaryStrideInPixelsY;
        goto LABEL_83;
      }
    }

    v196 = 0;
    goto LABEL_83;
  }

  v194 = v193 + secondaryStrideInPixelsX * (v65 - 1);
  if ((v194 + 1) > 1)
  {
    v195 = v194 + 1;
  }

  else
  {
    v195 = 1;
  }

  v308 = v195;
  v196 = (secondaryStrideInPixelsY * (v68 - 1) + (primaryKernelHeight - 1) * v192 + 1) & ~((secondaryStrideInPixelsY * (v68 - 1) + (primaryKernelHeight - 1) * v192 + 1) >> 63);
  secondaryOffsetCopy3 = secondaryOffset;
  kernelOffsetCopy3 = kernelOffset;
  statesCopy2 = states;
LABEL_83:
  v296 = secondaryStrideInPixelsY;
  v297 = methodCopy & 3;
  if (v196 <= 1)
  {
    v196 = 1;
  }

  v305 = v196;
  if (statesCopy2)
  {
    v201 = objc_msgSend_count(statesCopy2, v91, v92, v93, v94, v95, v96, v97);
    if (v201)
    {
      v202 = v201;
      v203 = 0;
      while (1)
      {
        v204 = objc_msgSend_objectAtIndexedSubscript_(states, v91, v203, v93, v94, v95, v96, v97, v295);
        if (objc_msgSend_conformsToProtocol_(v204, v205, &unk_284D125E0, v206, v207, v208, v209, v210))
        {
          break;
        }

        if (v202 == ++v203)
        {
          goto LABEL_92;
        }
      }

      v211 = objc_msgSend_objectAtIndexedSubscript_(states, v91, v203, v93, v94, v95, v96, v97);
      v308 = objc_msgSend_sourceWidth(v211, v212, v213, v214, v215, v216, v217, v218);
      v305 = objc_msgSend_sourceHeight(v211, v219, v220, v221, v222, v223, v224, v225);
LABEL_92:
      secondaryOffsetCopy3 = secondaryOffset;
      kernelOffsetCopy3 = kernelOffset;
    }

    v191 = methodCopy;
  }

  v226 = v191 & 4;
  v310 = v191 & 8;
  if (offset | kernelOffsetCopy3)
  {
    v233 = v65;
    if (*(objc_msgSend_objectAtIndexedSubscript_(images, v91, 0, v93, v94, v95, v96, v97) + *v100) != 1)
    {
      v233 = *(objc_msgSend_objectAtIndexedSubscript_(images, v227, 0, v228, v229, v230, v231, v232) + *v100);
    }

    v234 = objc_msgSend_objectAtIndexedSubscript_(images, v227, 0, v228, v229, v230, v231, v232, v295);
    v235 = v68;
    if (*(v234 + *v67) != 1)
    {
      v235 = *(objc_msgSend_objectAtIndexedSubscript_(images, v91, 0, v93, v94, v95, v96, v97) + *v67);
    }

    if (!offset)
    {
      v239 = 0;
      v240 = 0;
      kernelOffsetCopy6 = kernelOffset;
      if (!kernelOffset)
      {
        goto LABEL_138;
      }

      goto LABEL_137;
    }

    v236 = primaryKernelHeight >> 1;
    if (self->_isBackwards)
    {
      v237 = 1;
    }

    else
    {
      v237 = v296;
    }

    if (self->_isBackwards)
    {
      v235 = (v235 - 1) * v296 + 1;
    }

    v238 = primaryKernelHeight + v237 * (v305 - 1);
    if ((methodCopy & 3) > 1)
    {
      if (v297 != 2)
      {
        v236 = 0;
        if (self->_isBackwards)
        {
          goto LABEL_114;
        }

        goto LABEL_119;
      }

      v236 = v235 + v236 - v238;
    }

    else if ((methodCopy & 3) == 0)
    {
      v236 -= (((v310 >> 3) ^ 1) - v235 + v238) >> 1;
      if (!self->_isBackwards)
      {
        goto LABEL_119;
      }

LABEL_114:
      if (v296 <= 1)
      {
        v242 = 1;
      }

      else
      {
        v242 = v296;
      }

      v243 = v236 % v242;
      v244 = (v236 % v242) >> 63;
      v236 = v244 + v236 / v242;
      v240 = (v244 & v242) + v243;
      v245 = 1;
LABEL_120:
      v246 = primaryKernelWidth >> 1;
      if (self->_isBackwards)
      {
        v247 = (v233 - 1) * secondaryStrideInPixelsX + 1;
      }

      else
      {
        v247 = v233;
      }

      v248 = v245 * (v308 - 1) + primaryKernelWidth;
      if ((methodCopy & 3) > 1)
      {
        kernelOffsetCopy6 = kernelOffset;
        if (v297 != 2)
        {
          v246 = 0;
          if (!self->_isBackwards)
          {
            goto LABEL_136;
          }

          goto LABEL_130;
        }

        v246 = v247 + v246 - v248;
      }

      else
      {
        kernelOffsetCopy6 = kernelOffset;
        if ((methodCopy & 3) == 0)
        {
          v246 -= (((v226 >> 2) ^ 1) - v247 + v248) >> 1;
          if (!self->_isBackwards)
          {
LABEL_136:
            v239 = 0;
            offset->var0 = v246;
            offset->var1 = v236;
            offset->var2 = 0;
            if (!kernelOffsetCopy6)
            {
              goto LABEL_138;
            }

            goto LABEL_137;
          }

LABEL_130:
          if (secondaryStrideInPixelsX <= 1)
          {
            v249 = 1;
          }

          else
          {
            v249 = secondaryStrideInPixelsX;
          }

          v250 = v246 % v249;
          v251 = (v246 % v249) >> 63;
          v252 = v251 + v246 / v249;
          v239 = (v251 & v249) + v250;
          offset->var0 = v252;
          offset->var1 = v236;
          offset->var2 = 0;
          if (!kernelOffsetCopy6)
          {
            goto LABEL_138;
          }

LABEL_137:
          kernelOffsetCopy6->var0 = v239;
          kernelOffsetCopy6->var1 = v240;
          kernelOffsetCopy6->var2 = 0;
          goto LABEL_138;
        }
      }

      if (!self->_isBackwards)
      {
        goto LABEL_136;
      }

      goto LABEL_130;
    }

    if (self->_isBackwards)
    {
      goto LABEL_114;
    }

LABEL_119:
    v240 = 0;
    v245 = secondaryStrideInPixelsX;
    goto LABEL_120;
  }

LABEL_138:
  if (!secondaryOffsetCopy3)
  {
    goto LABEL_177;
  }

  if (*(objc_msgSend_objectAtIndexedSubscript_(images, v91, 1, v93, v94, v95, v96, v97) + *v100) != 1)
  {
    v65 = *(objc_msgSend_objectAtIndexedSubscript_(images, v253, 1, v254, v255, v256, v257, v258) + *v100);
  }

  if (*(objc_msgSend_objectAtIndexedSubscript_(images, v253, 1, v254, v255, v256, v257, v258, v295) + *v67) != 1)
  {
    v68 = *(objc_msgSend_objectAtIndexedSubscript_(images, v91, 1, v93, v94, v95, v96, v97) + *v67);
  }

  isBackwards = self->_isBackwards;
  v260 = primaryKernelWidth >> 1;
  if (self->_isBackwards)
  {
    v261 = 1;
  }

  else
  {
    v261 = secondaryStrideInPixelsX;
  }

  if (self->_isBackwards)
  {
    v262 = (v65 - 1) * secondaryStrideInPixelsX + 1;
  }

  else
  {
    v262 = v65;
  }

  v263 = primaryKernelWidth + v261 * (v308 - 1);
  if ((methodCopy & 3) > 1)
  {
    v264 = v296;
    if (v297 != 2)
    {
      v260 = 0;
      if (self->_isBackwards)
      {
        goto LABEL_156;
      }

      goto LABEL_161;
    }

    v260 = v262 + v260 - v263;
LABEL_155:
    if (self->_isBackwards)
    {
      goto LABEL_156;
    }

LABEL_161:
    v266 = v264;
    goto LABEL_162;
  }

  v264 = v296;
  if ((methodCopy & 3) != 0)
  {
    goto LABEL_155;
  }

  v260 -= (((v226 >> 2) ^ 1) - v262 + v263) >> 1;
  if (!self->_isBackwards)
  {
    goto LABEL_161;
  }

LABEL_156:
  if (secondaryStrideInPixelsX <= 1)
  {
    v265 = 1;
  }

  else
  {
    v265 = secondaryStrideInPixelsX;
  }

  v260 = v260 / v265 - (v260 < v260 / v265 * v265);
  v266 = 1;
LABEL_162:
  secondaryOffsetCopy3->var0 = v260;
  v267 = primaryKernelHeight >> 1;
  if (isBackwards)
  {
    v268 = (v68 - 1) * v264 + 1;
  }

  else
  {
    v268 = v68;
  }

  v269 = v266 * (v305 - 1) + primaryKernelHeight;
  if ((methodCopy & 3) > 1)
  {
    if (v297 != 2)
    {
      v267 = 0;
      if (!isBackwards)
      {
        goto LABEL_176;
      }

      goto LABEL_172;
    }

    v267 = v268 + v267 - v269;
  }

  else if ((methodCopy & 3) == 0)
  {
    v267 -= (((v310 >> 3) ^ 1) - v268 + v269) >> 1;
    if (!isBackwards)
    {
      goto LABEL_176;
    }

LABEL_172:
    if (v264 <= 1)
    {
      v270 = 1;
    }

    else
    {
      v270 = v264;
    }

    v267 = v267 / v270 - (v267 < v267 / v270 * v270);
    goto LABEL_176;
  }

  if (isBackwards)
  {
    goto LABEL_172;
  }

LABEL_176:
  secondaryOffsetCopy3->var1 = v267;
  secondaryOffsetCopy3->var2 = 0;
LABEL_177:
  v271 = objc_msgSend_objectAtIndexedSubscript_(images, v91, 0, v93, v94, v95, v96, v97, v295);
  v272 = MEMORY[0x277CD7318];
  v273 = (*(v271 + *MEMORY[0x277CD7318]) >> 59) & 7;
  v280 = objc_msgSend_objectAtIndexedSubscript_(images, v274, 1, v275, v276, v277, v278, v279);
  v282 = (*(v280 + *v272) >> 59) & 7;
  if (v282 <= 5)
  {
    v283 = byte_239D91490[v282];
    if (v273 <= 5)
    {
      goto LABEL_179;
    }
  }

  else
  {
    v283 = 0;
    if (v273 <= 5)
    {
LABEL_179:
      v284 = byte_239D91490[v273];
      goto LABEL_182;
    }
  }

  v284 = 0;
LABEL_182:
  if (v311 <= 1)
  {
    v285 = 1;
  }

  else
  {
    v285 = v311;
  }

  if (v283 <= v284)
  {
    v286 = (*(v280 + *v272) >> 59) & 7;
  }

  else
  {
    v286 = v273;
  }

  v287 = MEMORY[0x277CD7220];

  return objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_numberOfImages_usage_(v287, v281, v286, v308, v305, v312, v285, 19);
}

- (MPSState)resultStateForPrimaryImage:(MPSImage *)primaryImage secondaryImage:(MPSImage *)secondaryImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v11 = [MPSNNBinaryGradientState alloc];
  v20 = objc_msgSend_initWithResource_(v11, v12, 0, v13, v14, v15, v16, v17);
  if (v20)
  {
    objc_msgSend_copyToBinaryGradientState_primaryImage_secondaryImage_sourceStates_destinationImage_(self, v18, v20, primaryImage, secondaryImage, sourceStates, destinationImage, v19);
    if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      v21 = MEMORY[0x277CCACA8];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v30 = objc_msgSend_stringWithFormat_(v21, v24, @"created by %@", v25, v26, v27, v28, v29, v23);
      objc_msgSend_setLabel_(v20, v31, v30, v32, v33, v34, v35, v36);
    }
  }

  return v20;
}

- (MPSStateBatch)resultStateBatchForPrimaryImage:(MPSImageBatch *)primaryImage secondaryImage:(MPSImageBatch *)secondaryImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage
{
  v19 = objc_msgSend_count(primaryImage, a2, primaryImage, secondaryImage, sourceStates, destinationImage, v6, v7);
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!primaryImage && MTLReportFailureTypeEnabled())
    {
      v226 = objc_opt_class();
      v241 = NSStringFromClass(v226);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x7A2, @"[%@ resultStateBatchForPrimaryImage:secondaryImage:sourceStates:] Error: primaryImage batch may not be NULL", v227, v228, v229, v230);
    }

    if (!secondaryImage && MTLReportFailureTypeEnabled())
    {
      v231 = objc_opt_class();
      v241 = NSStringFromClass(v231);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x7A6, @"[%@ resultStateBatchForPrimaryImage:secondaryImage:sourceStates:] Error: secondaryImage batch may not be NULL", v232, v233, v234, v235);
    }

    objc_msgSend_count(secondaryImage, v12, v13, v14, v15, v16, v17, v18, v241);
    if (objc_msgSend_count(secondaryImage, v20, v21, v22, v23, v24, v25, v26) < v19 && MTLReportFailureTypeEnabled())
    {
      v236 = objc_opt_class();
      v241 = NSStringFromClass(v236);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x7AA, @"[%@ resultStateBatchForPrimaryImage:secondaryImage:sourceStates:] Error: secondaryImage batch count is smaller than the primaryImage batch count", v237, v238, v239, v240);
    }

    if (!sourceStates)
    {
      if (v19)
      {
        v243 = 1;
        v82 = objc_autoreleasePoolPush();
        v83 = 0;
        v91 = 0;
        goto LABEL_23;
      }

      return 0;
    }

    if (objc_msgSend_count(sourceStates, v27, v28, v29, v30, v31, v32, v33))
    {
      v40 = 0;
      do
      {
        v41 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v34, v40, v35, v36, v37, v38, v39, v241);
        objc_msgSend_count(v41, v42, v43, v44, v45, v46, v47, v48);
        v55 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v49, v40, v50, v51, v52, v53, v54);
        if (objc_msgSend_count(v55, v56, v57, v58, v59, v60, v61, v62) < v19 && MTLReportFailureTypeEnabled())
        {
          v70 = objc_opt_class();
          v242 = NSStringFromClass(v70);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x7B2, @"[%@ resultStateBatchForPrimaryImage:secondaryImage:sourceStates:] Error: if sourceStates is non-NULL, there must be at least as many source states as source images", v71, v72, v73, v74);
        }

        ++v40;
      }

      while (v40 < objc_msgSend_count(sourceStates, v63, v64, v65, v66, v67, v68, v69, v242));
    }
  }

  if (!v19)
  {
    return 0;
  }

  v82 = objc_autoreleasePoolPush();
  if (sourceStates)
  {
    v83 = objc_msgSend_count(sourceStates, v75, v76, v77, v78, v79, v80, v81);
    v90 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v84, v83, v85, v86, v87, v88, v89);
    if (!v90)
    {
LABEL_28:
      objc_autoreleasePoolPop(v82);
      return 0;
    }

    v91 = v90;
    if (v83)
    {
      for (i = 0; i != v83; ++i)
      {
        v93 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v75, i, v77, v78, v79, v80, v81, v241);
        v100 = objc_msgSend_objectAtIndexedSubscript_(v93, v94, 0, v95, v96, v97, v98, v99);
        objc_msgSend_setObject_atIndexedSubscript_(v91, v101, v100, i, v102, v103, v104, v105);
      }
    }

    v243 = 0;
  }

  else
  {
    v83 = 0;
    v91 = 0;
    v243 = 1;
  }

LABEL_23:
  v106 = objc_msgSend_objectAtIndexedSubscript_(primaryImage, v75, 0, v77, v78, v79, v80, v81, v241);
  v113 = objc_msgSend_objectAtIndexedSubscript_(secondaryImage, v107, 0, v108, v109, v110, v111, v112);
  v120 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v114, 0, v115, v116, v117, v118, v119);
  v124 = objc_msgSend_resultStateForPrimaryImage_secondaryImage_sourceStates_destinationImage_(self, v121, v106, v113, v91, v120, v122, v123);
  if (!v124)
  {
    goto LABEL_28;
  }

  v125 = v124;
  context = v82;
  v126 = malloc_type_malloc(8 * v19, 0x80040B8603338uLL);
  if (!v126)
  {
    goto LABEL_28;
  }

  v134 = v126;
  if (!objc_msgSend_isResultStateReusedAcrossBatch(self, v127, v128, v129, v130, v131, v132, v133))
  {
    *v134 = v125;
    if (v19 >= 2)
    {
      selfCopy = self;
      if (v243)
      {
        for (j = 1; j != v19; ++j)
        {
          v144 = objc_msgSend_objectAtIndexedSubscript_(primaryImage, v135, j, v136, v137, v138, v139, v140);
          v151 = objc_msgSend_objectAtIndexedSubscript_(secondaryImage, v145, j, v146, v147, v148, v149, v150);
          v158 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v152, j, v153, v154, v155, v156, v157);
          v134[j] = objc_msgSend_resultStateForPrimaryImage_secondaryImage_sourceStates_destinationImage_(self, v159, v144, v151, v91, v158, v160, v161);
        }
      }

      else if (v83)
      {
        for (k = 1; k != v19; ++k)
        {
          for (m = 0; m != v83; ++m)
          {
            v169 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v135, m, v136, v137, v138, v139, v140);
            v176 = objc_msgSend_objectAtIndexedSubscript_(v169, v170, k, v171, v172, v173, v174, v175);
            objc_msgSend_setObject_atIndexedSubscript_(v91, v177, v176, m, v178, v179, v180, v181);
          }

          v182 = objc_msgSend_objectAtIndexedSubscript_(primaryImage, v135, k, v136, v137, v138, v139, v140);
          v189 = objc_msgSend_objectAtIndexedSubscript_(secondaryImage, v183, k, v184, v185, v186, v187, v188);
          v196 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v190, k, v191, v192, v193, v194, v195);
          v134[k] = objc_msgSend_resultStateForPrimaryImage_secondaryImage_sourceStates_destinationImage_(selfCopy, v197, v182, v189, v91, v196, v198, v199);
        }
      }

      else
      {
        for (n = 1; n != v19; ++n)
        {
          v201 = objc_msgSend_objectAtIndexedSubscript_(primaryImage, v135, n, v136, v137, v138, v139, v140);
          v208 = objc_msgSend_objectAtIndexedSubscript_(secondaryImage, v202, n, v203, v204, v205, v206, v207);
          v215 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v209, n, v210, v211, v212, v213, v214);
          v134[n] = objc_msgSend_resultStateForPrimaryImage_secondaryImage_sourceStates_destinationImage_(selfCopy, v216, v201, v208, v91, v215, v217, v218);
        }
      }
    }

    goto LABEL_49;
  }

  if (v19 < 4)
  {
    v141 = 0;
LABEL_38:
    v165 = v19 - v141;
    v166 = &v134[v141];
    do
    {
      *v166++ = v125;
      --v165;
    }

    while (v165);
    goto LABEL_49;
  }

  v141 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v162 = vdupq_n_s64(v125);
  v163 = (v134 + 2);
  v164 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v163[-1] = v162;
    *v163 = v162;
    v163 += 2;
    v164 -= 4;
  }

  while (v164);
  if (v19 != v141)
  {
    goto LABEL_38;
  }

LABEL_49:
  v219 = objc_alloc(MEMORY[0x277CBEA60]);
  v225 = objc_msgSend_initWithObjects_count_(v219, v220, v134, v19, v221, v222, v223, v224);
  free(v134);
  objc_autoreleasePoolPop(context);

  return v225;
}

- (MPSState)temporaryResultStateForCommandBuffer:(id)commandBuffer primaryImage:(MPSImage *)primaryImage secondaryImage:(MPSImage *)secondaryImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v15 = objc_msgSend_temporaryStateWithCommandBuffer_(MPSNNBinaryGradientState, a2, commandBuffer, primaryImage, secondaryImage, sourceStates, destinationImage, v7);
  if (v15)
  {
    objc_msgSend_copyToBinaryGradientState_primaryImage_secondaryImage_sourceStates_destinationImage_(self, v13, v15, primaryImage, secondaryImage, sourceStates, destinationImage, v14);
    if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
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

- (MPSStateBatch)temporaryResultStateBatchForCommandBuffer:(id)commandBuffer primaryImage:(MPSImageBatch *)primaryImage secondaryImage:(MPSImageBatch *)secondaryImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage
{
  v19 = objc_msgSend_count(primaryImage, a2, commandBuffer, primaryImage, secondaryImage, sourceStates, destinationImage, v7);
  selfCopy = self;
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v174 = objc_opt_class();
      v189 = NSStringFromClass(v174);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x815, @"[%@ temporaryResultStateBatchForCommandBuffer:primaryImage:secondaryImage:sourceStates:] Error: command buffer may not be NULL", v175, v176, v177, v178);
    }

    if (!primaryImage && MTLReportFailureTypeEnabled())
    {
      v179 = objc_opt_class();
      v189 = NSStringFromClass(v179);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x819, @"[%@ temporaryResultStateBatchForCommandBuffer:primaryImage:secondaryImage:sourceStates:] Error: primaryImage batch may not be NULL", v180, v181, v182, v183);
    }

    if (!secondaryImage && MTLReportFailureTypeEnabled())
    {
      v184 = objc_opt_class();
      v189 = NSStringFromClass(v184);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x81D, @"[%@ temporaryResultStateBatchForCommandBuffer:primaryImage:secondaryImage:sourceStates:] Error: secondaryImage batch may not be NULL", v185, v186, v187, v188);
    }

    if (!sourceStates)
    {
      if (v19)
      {
        v92 = 1;
        v68 = objc_autoreleasePoolPush();
        v69 = 0;
        v77 = 0;
        goto LABEL_23;
      }

      return 0;
    }

    if (objc_msgSend_count(sourceStates, v12, v13, v14, v15, v16, v17, v18))
    {
      v26 = 0;
      do
      {
        v27 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v20, v26, v21, v22, v23, v24, v25, v189);
        objc_msgSend_count(v27, v28, v29, v30, v31, v32, v33, v34);
        v41 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v35, v26, v36, v37, v38, v39, v40);
        if (objc_msgSend_count(v41, v42, v43, v44, v45, v46, v47, v48) < v19 && MTLReportFailureTypeEnabled())
        {
          v56 = objc_opt_class();
          v190 = NSStringFromClass(v56);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBinaryKernel.mm", 0x825, @"[%@ temporaryResultStateBatchForCommandBuffer:sourceImage:sourceStates:] Error: if sourceStates is non-NULL, there must be at least as many source states as source images", v57, v58, v59, v60);
        }

        ++v26;
      }

      while (v26 < objc_msgSend_count(sourceStates, v49, v50, v51, v52, v53, v54, v55, v190));
    }
  }

  if (!v19)
  {
    return 0;
  }

  v68 = objc_autoreleasePoolPush();
  if (sourceStates)
  {
    v69 = objc_msgSend_count(sourceStates, v61, v62, v63, v64, v65, v66, v67);
    v76 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v70, v69, v71, v72, v73, v74, v75);
    if (!v76)
    {
LABEL_28:
      objc_autoreleasePoolPop(v68);
      return 0;
    }

    v77 = v76;
    if (v69)
    {
      for (i = 0; i != v69; ++i)
      {
        v79 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v61, i, v63, v64, v65, v66, v67, v189);
        v86 = objc_msgSend_objectAtIndexedSubscript_(v79, v80, 0, v81, v82, v83, v84, v85);
        objc_msgSend_setObject_atIndexedSubscript_(v77, v87, v86, i, v88, v89, v90, v91);
      }
    }

    v92 = 0;
  }

  else
  {
    v69 = 0;
    v77 = 0;
    v92 = 1;
  }

LABEL_23:
  v93 = objc_msgSend_objectAtIndexedSubscript_(primaryImage, v61, 0, v63, v64, v65, v66, v67, v189);
  v100 = objc_msgSend_objectAtIndexedSubscript_(secondaryImage, v94, 0, v95, v96, v97, v98, v99);
  v107 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v101, 0, v102, v103, v104, v105, v106);
  v110 = objc_msgSend_temporaryResultStateForCommandBuffer_primaryImage_secondaryImage_sourceStates_destinationImage_(selfCopy, v108, commandBuffer, v93, v100, v77, v107, v109);
  if (!v110)
  {
    goto LABEL_28;
  }

  v111 = v110;
  v192 = malloc_type_malloc(8 * v19, 0x80040B8603338uLL);
  if (!v192)
  {
    goto LABEL_28;
  }

  context = v68;
  if (!objc_msgSend_isResultStateReusedAcrossBatch(selfCopy, v112, v113, v114, v115, v116, v117, v118))
  {
    v192->i64[0] = v111;
    if (v19 >= 2)
    {
      v127 = primaryImage;
      v128 = secondaryImage;
      if (v69)
      {
        v129 = v92;
      }

      else
      {
        v129 = 1;
      }

      for (j = 1; j != v19; ++j)
      {
        if ((v129 & 1) == 0)
        {
          v148 = 0;
          do
          {
            v149 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v119, v148, v120, v121, v122, v123, v124);
            v156 = objc_msgSend_objectAtIndexedSubscript_(v149, v150, j, v151, v152, v153, v154, v155);
            objc_msgSend_setObject_atIndexedSubscript_(v77, v157, v156, j, v158, v159, v160, v161);
            ++v148;
          }

          while (v69 != v148);
        }

        v131 = objc_msgSend_objectAtIndexedSubscript_(v127, v119, j, v120, v121, v122, v123, v124);
        v138 = objc_msgSend_objectAtIndexedSubscript_(v128, v132, j, v133, v134, v135, v136, v137);
        v145 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v139, j, v140, v141, v142, v143, v144);
        v192->i64[j] = objc_msgSend_temporaryResultStateForCommandBuffer_primaryImage_secondaryImage_sourceStates_destinationImage_(selfCopy, v146, commandBuffer, v131, v138, v77, v145, v147);
      }
    }

    goto LABEL_45;
  }

  if (v19 < 4)
  {
    v125 = 0;
LABEL_43:
    v165 = v19 - v125;
    v166 = v192 + v125;
    do
    {
      *v166++ = v111;
      --v165;
    }

    while (v165);
    goto LABEL_45;
  }

  v125 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v162 = vdupq_n_s64(v111);
  v163 = v192 + 1;
  v164 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v163[-1] = v162;
    *v163 = v162;
    v163 += 2;
    v164 -= 4;
  }

  while (v164);
  if (v19 != v125)
  {
    goto LABEL_43;
  }

LABEL_45:
  v167 = objc_alloc(MEMORY[0x277CBEA60]);
  v173 = objc_msgSend_initWithObjects_count_(v167, v168, v192, v19, v169, v170, v171, v172);
  free(v192);
  objc_autoreleasePoolPop(context);

  return v173;
}

- (void)copyToBinaryGradientState:(id)state primaryImage:(id)image secondaryImage:(id)secondaryImage sourceStates:(id)states destinationImage:(id)destinationImage
{
  if ((*(state + 416) & 1) == 0)
  {
    v8 = *(destinationImage + *MEMORY[0x277CD7330]);
    v9 = *(destinationImage + *MEMORY[0x277CD7308]);
    v10 = *(destinationImage + *MEMORY[0x277CD7310]);
    v11 = *MEMORY[0x277CD72F8];
    v12 = *(image + v11);
    if (v12 >= self->_primarySourceFeatureChannelOffset)
    {
      primarySourceFeatureChannelOffset = self->_primarySourceFeatureChannelOffset;
    }

    else
    {
      primarySourceFeatureChannelOffset = *(image + v11);
    }

    if (v12 - primarySourceFeatureChannelOffset >= self->_primarySourceFeatureChannelMaxCount)
    {
      primarySourceFeatureChannelMaxCount = self->_primarySourceFeatureChannelMaxCount;
    }

    else
    {
      primarySourceFeatureChannelMaxCount = v12 - primarySourceFeatureChannelOffset;
    }

    secondarySourceFeatureChannelOffset = *(secondaryImage + v11);
    if (secondarySourceFeatureChannelOffset >= self->_secondarySourceFeatureChannelOffset)
    {
      secondarySourceFeatureChannelOffset = self->_secondarySourceFeatureChannelOffset;
    }

    v55 = secondarySourceFeatureChannelOffset;
    v16 = *&self->_primaryOffset.x;
    *(state + 8) = self->_primaryOffset.z;
    *(state + 3) = v16;
    v17 = *&self->_secondaryOffset.x;
    *(state + 11) = self->_secondaryOffset.z;
    *(state + 72) = v17;
    v57.width = v8;
    v57.height = v9;
    v57.depth = v10;
    v18 = *&self->_clipRect.origin.z;
    *&v56.origin.x = *&self->_clipRect.origin.x;
    *&v56.origin.z = v18;
    *&v56.size.height = *&self->_clipRect.size.height;
    MPSGetEffectiveClipRegion(v58, &v57, &v56);
    v23 = v58[1];
    *(state + 6) = v58[0];
    *(state + 7) = v23;
    *(state + 8) = v58[2];
    v31 = objc_msgSend_width(destinationImage, v24, v25, v26, v27, v28, v29, v30);
    v39 = objc_msgSend_height(destinationImage, v32, v33, v34, v35, v36, v37, v38);
    *(state + 18) = v31;
    *(state + 19) = v39;
    *(state + 20) = 1;
    *(state + 21) = primarySourceFeatureChannelMaxCount;
    *(state + 22) = self->_destinationFeatureChannelOffset;
    *(state + 23) = primarySourceFeatureChannelOffset;
    *(state + 24) = v55;
    *(state + 25) = self->_primarySourceFeatureChannelMaxCount;
    *(state + 26) = self->_secondarySourceFeatureChannelMaxCount;
    *(state + 27) = self->_primaryKernelWidth;
    *(state + 28) = self->_primaryKernelHeight;
    *(state + 29) = self->_secondaryKernelWidth;
    *(state + 30) = self->_secondaryKernelHeight;
    *(state + 31) = self->_primaryStrideInPixelsX;
    *(state + 32) = self->_primaryStrideInPixelsY;
    *(state + 33) = self->_secondaryStrideInPixelsX;
    *(state + 34) = self->_secondaryStrideInPixelsY;
    *(state + 35) = self->_primaryDilationRateX;
    *(state + 36) = self->_primaryDilationRateY;
    *(state + 37) = self->_secondaryDilationRateX;
    *(state + 39) = self->_padding;
    *(state + 328) = self->_isBackwards;
    *(state + 42) = self->_primaryEdgeMode;
    *(state + 43) = self->_secondaryEdgeMode;
    v40 = MEMORY[0x277CD7330];
    v41 = MEMORY[0x277CD7308];
    v42 = *(image + *MEMORY[0x277CD7308]);
    v43 = MEMORY[0x277CD7310];
    v44 = *(image + *MEMORY[0x277CD7310]);
    *(state + 44) = *(image + *MEMORY[0x277CD7330]);
    *(state + 45) = v42;
    *(state + 46) = v44;
    v45 = MEMORY[0x277CD72F8];
    *(state + 47) = *(image + *MEMORY[0x277CD72F8]);
    v46 = *(secondaryImage + *v41);
    v47 = *(secondaryImage + *v43);
    *(state + 48) = *(secondaryImage + *v40);
    *(state + 49) = v46;
    *(state + 50) = v47;
    *(state + 51) = *(secondaryImage + *v45);
    *(state + 416) = objc_msgSend_isResultStateReusedAcrossBatch(self, v48, v49, v50, v51, v52, v53, v54);
    *(state + 105) = 123927;
  }
}

- (BOOL)setPlugin:(id)plugin
{
  if (!plugin || (v5 = *(&self->super.super.isa + *MEMORY[0x277CD7350]), v6 = objc_opt_class(), (v7 = (*(*v5 + 120))(v5, v6)) != 0))
  {
    pluginCopy = plugin;

    self->_plugin = plugin;
    self->_pluginSupportsBatchEncode = objc_opt_respondsToSelector() & 1;
    LOBYTE(v7) = 1;
  }

  return v7;
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
  v3 = *&self[3].origin.y;
  *&retstr->origin.x = *&self[2].size.depth;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[3].size.width;
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