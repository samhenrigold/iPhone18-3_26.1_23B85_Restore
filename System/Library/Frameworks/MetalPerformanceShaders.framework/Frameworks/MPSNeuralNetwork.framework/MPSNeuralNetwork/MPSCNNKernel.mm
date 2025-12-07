@interface MPSCNNKernel
- (BOOL)pluginSupportsBatchEncode;
- (BOOL)setPlugin:(id)plugin;
- (MPSCNNKernel)init;
- (MPSCNNKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNKernel)initWithDevice:(id)device;
- (MPSImageDescriptor)destinationImageDescriptorForSourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)size;
- (MPSState)resultStateForSourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSState)temporaryResultStateForCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSStateBatch)resultStateBatchForSourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage;
- (MPSStateBatch)temporaryResultStateBatchForCommandBuffer:(id)commandBuffer sourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage;
- (MTLRegion)clipRect;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset kernelOffset:(id *)kernelOffset;
- (id)destinationImageWithCommandBuffer:(id)buffer sourceImage:(id)image inState:(id)state;
- (id)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inStates:(id)states;
- (id)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images sourceStates:(id)states destinationStates:(id *)destinationStates destinationStateIsTemporary:(BOOL)temporary;
- (id)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image inState:(id)state;
- (id)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image sourceState:(id)state destinationState:(id *)destinationState destinationStateIsTemporary:(BOOL)temporary;
- (int16x4_t)sourcePositionOfTopLeftCornerOfFilterWindow;
- (void)copyToGradientState:(id)state sourceImage:(id)image sourceStates:(id)states destinationImage:(id)destinationImage;
- (void)dealloc;
- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inStates:(id)states destinationImages:(id)destinationImages;
- (void)encodeInternalBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inStates:(id)states destinationImages:(id)destinationImages clipRect:(id *)rect;
- (void)encodeInternalToCommputeEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image inState:(id)state destinationImage:(id)destinationImage subBatchIndex:(unint64_t)index batchSize:(unint64_t)size clipRect:(id *)self0 shouldHandleCompoundImageNatively:(BOOL)self1;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image inState:(id)state destinationImage:(id)destinationImage subBatchIndex:(unint64_t)index batchSize:(unint64_t)size;
- (void)encodeWithCoder:(id)coder;
- (void)setClipRect:(MTLRegion *)clipRect;
- (void)setDestinationFeatureChannelOffset:(NSUInteger)destinationFeatureChannelOffset;
- (void)setOffset:(MPSOffset *)offset;
- (void)setSourceFeatureChannelMaxCount:(NSUInteger)sourceFeatureChannelMaxCount;
- (void)setSourceFeatureChannelOffset:(NSUInteger)sourceFeatureChannelOffset;
@end

@implementation MPSCNNKernel

- (MPSCNNKernel)init
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

- (MPSCNNKernel)initWithDevice:(id)device
{
  v35.receiver = self;
  v35.super_class = MPSCNNKernel;
  v3 = [(MPSKernel *)&v35 initWithDevice:device];
  v11 = v3;
  if (v3)
  {
    v3->_offset.y = 0;
    v3->_offset.z = 0;
    v3->_offset.x = 0;
    v12 = *MEMORY[0x277CD7200];
    v13 = *(MEMORY[0x277CD7200] + 32);
    *&v3->_clipRect.origin.z = *(MEMORY[0x277CD7200] + 16);
    *&v3->_clipRect.size.height = v13;
    *&v3->_clipRect.origin.x = v12;
    v3->_destinationFeatureChannelOffset = 0;
    v3->_sourceFeatureChannelOffset = 0;
    v3->_sourceFeatureChannelMaxCount = -1;
    v3->_edgeMode = 0;
    v3->_checkFlags = 513;
    v3->_kernelHeight = 1;
    v3->_kernelWidth = 1;
    v3->_strideInPixelsY = 1;
    v3->_strideInPixelsX = 1;
    v3->_dilationRateY = 1;
    v3->_dilationRateX = 1;
    v3->_isBackwards = 0;
    v3->_encode = 0;
    v3->_encodeData = 0;
    v3->_batchEncode = 0;
    v3->_plugin = 0;
    v3->_pluginSupportsBatchEncode = 0;
    v3->_pluginOptions = 0;
    v14 = objc_msgSend_defaultAllocator(MEMORY[0x277CD72A8], v4, v5, v6, v7, v8, v9, v10);
    objc_msgSend_setDestinationImageAllocator_(v11, v15, v14, v16, v17, v18, v19, v20);
    v27 = objc_msgSend_paddingWithMethod_(MPSNNDefaultPadding, v21, 16, v22, v23, v24, v25, v26);
    objc_msgSend_setPadding_(v11, v28, v27, v29, v30, v31, v32, v33);
  }

  return v11;
}

- (MPSCNNKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v149.receiver = self;
  v149.super_class = MPSCNNKernel;
  v5 = [(MPSKernel *)&v149 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if ((*(&v5->super.super.isa + *MEMORY[0x277CD7358]) & 0xFF00) == 0x100)
  {
    v5->_offset.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSCNNKernel.offset.x", v7, v8, v9, v10, v11);
    v12->_offset.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v13, @"MPSCNNKernel.offset.y", v14, v15, v16, v17, v18);
    v12->_offset.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v19, @"MPSCNNKernel.offset.z", v20, v21, v22, v23, v24);
    v12->_clipRect.origin.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v25, @"MPSCNNKernel.clipRect.origin.x", v26, v27, v28, v29, v30);
    v12->_clipRect.origin.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v31, @"MPSCNNKernel.clipRect.origin.y", v32, v33, v34, v35, v36);
    v12->_clipRect.origin.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v37, @"MPSCNNKernel.clipRect.origin.z", v38, v39, v40, v41, v42);
    v12->_clipRect.size.width = objc_msgSend_decodeInt64ForKey_(aDecoder, v43, @"MPSCNNKernel.clipRect.size.width", v44, v45, v46, v47, v48);
    v12->_clipRect.size.height = objc_msgSend_decodeInt64ForKey_(aDecoder, v49, @"MPSCNNKernel.clipRect.size.height", v50, v51, v52, v53, v54);
    v12->_clipRect.size.depth = objc_msgSend_decodeInt64ForKey_(aDecoder, v55, @"MPSCNNKernel.clipRect.size.depth", v56, v57, v58, v59, v60);
    v12->_destinationFeatureChannelOffset = objc_msgSend_decodeInt64ForKey_(aDecoder, v61, @"MPSCNNKernel.destinationFeatureChannelOffset", v62, v63, v64, v65, v66);
    v12->_sourceFeatureChannelOffset = objc_msgSend_decodeInt64ForKey_(aDecoder, v67, @"MPSCNNKernel.sourceFeatureChannelOffset", v68, v69, v70, v71, v72);
    v12->_sourceFeatureChannelMaxCount = -1;
    if (objc_msgSend_containsValueForKey_(aDecoder, v73, @"MPSCNNKernel.sourceFeatureChannelMaxCount", v74, v75, v76, v77, v78))
    {
      v12->_sourceFeatureChannelMaxCount = objc_msgSend_decodeInt64ForKey_(aDecoder, v79, @"MPSCNNKernel.sourceFeatureChannelMaxCount", v80, v81, v82, v83, v84);
    }

    v12->_edgeMode = objc_msgSend_decodeInt64ForKey_(aDecoder, v79, @"MPSCNNKernel.edgeMode", v80, v81, v82, v83, v84);
    v12->_checkFlags = objc_msgSend_decodeInt64ForKey_(aDecoder, v85, @"MPSCNNKernel.checkFlags", v86, v87, v88, v89, v90);
    v12->_kernelWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v91, @"MPSCNNKernel.kernelWidth", v92, v93, v94, v95, v96);
    v12->_kernelHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v97, @"MPSCNNKernel.kernelHeight", v98, v99, v100, v101, v102);
    v12->_strideInPixelsX = objc_msgSend_decodeInt64ForKey_(aDecoder, v103, @"MPSCNNKernel.stride.x", v104, v105, v106, v107, v108);
    v12->_strideInPixelsY = objc_msgSend_decodeInt64ForKey_(aDecoder, v109, @"MPSCNNKernel.stride.y", v110, v111, v112, v113, v114);
    v12->_dilationRateX = objc_msgSend_decodeInt64ForKey_(aDecoder, v115, @"MPSCNNKernel.dilation.x", v116, v117, v118, v119, v120);
    v12->_dilationRateY = objc_msgSend_decodeInt64ForKey_(aDecoder, v121, @"MPSCNNKernel.dilation.y", v122, v123, v124, v125, v126);
    v12->_isBackwards = objc_msgSend_decodeBoolForKey_(aDecoder, v127, @"MPSCNNKernel.isBackward", v128, v129, v130, v131, v132);
    v12->_encode = 0;
    v12->_encodeData = 0;
    v12->_plugin = 0;
    v137 = sub_239D0D098(aDecoder, @"MPSCNNKernel.data", @"MPSCNNKernel.padding", &unk_284D166E0, v133, v134, v135, v136);
    if (v137)
    {
      v12->_padding = v137;
      v142 = sub_239D0D098(aDecoder, @"MPSCNNKernel.data2", @"MPSCNNKernel.allocator", &unk_284D1B458, v138, v139, v140, v141);
      if (v142)
      {
        v12->_destinationImageAllocator = v142;
        return v12;
      }
    }
  }

  else if ((*(&v5->super.super.isa + *MEMORY[0x277CD7358]) & 0xFFFF0000) != 0x10000 && MTLReportFailureTypeEnabled())
  {
    v144 = objc_opt_class();
    NSStringFromClass(v144);
    MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x73, @"[%@ initWithCoder:device:] Failed: unsupported file version.", v145, v146, v147, v148);
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 1) = 1;
  v154.receiver = self;
  v154.super_class = MPSCNNKernel;
  [(MPSKernel *)&v154 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_offset.x, @"MPSCNNKernel.offset.x", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_offset.y, @"MPSCNNKernel.offset.y", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(coder, v15, self->_offset.z, @"MPSCNNKernel.offset.z", v16, v17, v18, v19);
  objc_msgSend_encodeInt64_forKey_(coder, v20, self->_clipRect.origin.x, @"MPSCNNKernel.clipRect.origin.x", v21, v22, v23, v24);
  objc_msgSend_encodeInt64_forKey_(coder, v25, self->_clipRect.origin.y, @"MPSCNNKernel.clipRect.origin.y", v26, v27, v28, v29);
  objc_msgSend_encodeInt64_forKey_(coder, v30, self->_clipRect.origin.z, @"MPSCNNKernel.clipRect.origin.z", v31, v32, v33, v34);
  objc_msgSend_encodeInt64_forKey_(coder, v35, self->_clipRect.size.width, @"MPSCNNKernel.clipRect.size.width", v36, v37, v38, v39);
  objc_msgSend_encodeInt64_forKey_(coder, v40, self->_clipRect.size.height, @"MPSCNNKernel.clipRect.size.height", v41, v42, v43, v44);
  objc_msgSend_encodeInt64_forKey_(coder, v45, self->_clipRect.size.depth, @"MPSCNNKernel.clipRect.size.depth", v46, v47, v48, v49);
  objc_msgSend_encodeInt64_forKey_(coder, v50, self->_destinationFeatureChannelOffset, @"MPSCNNKernel.destinationFeatureChannelOffset", v51, v52, v53, v54);
  objc_msgSend_encodeInt64_forKey_(coder, v55, self->_sourceFeatureChannelOffset, @"MPSCNNKernel.sourceFeatureChannelOffset", v56, v57, v58, v59);
  objc_msgSend_encodeInt64_forKey_(coder, v60, self->_sourceFeatureChannelMaxCount, @"MPSCNNKernel.sourceFeatureChannelMaxCount", v61, v62, v63, v64);
  objc_msgSend_encodeInt64_forKey_(coder, v65, self->_edgeMode, @"MPSCNNKernel.edgeMode", v66, v67, v68, v69);
  objc_msgSend_encodeInt64_forKey_(coder, v70, self->_checkFlags, @"MPSCNNKernel.checkFlags", v71, v72, v73, v74);
  objc_msgSend_encodeInt64_forKey_(coder, v75, self->_kernelWidth, @"MPSCNNKernel.kernelWidth", v76, v77, v78, v79);
  objc_msgSend_encodeInt64_forKey_(coder, v80, self->_kernelHeight, @"MPSCNNKernel.kernelHeight", v81, v82, v83, v84);
  objc_msgSend_encodeInt64_forKey_(coder, v85, self->_strideInPixelsX, @"MPSCNNKernel.stride.x", v86, v87, v88, v89);
  objc_msgSend_encodeInt64_forKey_(coder, v90, self->_strideInPixelsY, @"MPSCNNKernel.stride.y", v91, v92, v93, v94);
  objc_msgSend_encodeInt64_forKey_(coder, v95, self->_dilationRateX, @"MPSCNNKernel.dilation.x", v96, v97, v98, v99);
  objc_msgSend_encodeInt64_forKey_(coder, v100, self->_dilationRateY, @"MPSCNNKernel.dilation.y", v101, v102, v103, v104);
  objc_msgSend_encodeBool_forKey_(coder, v105, self->_isBackwards, @"MPSCNNKernel.isBackward", v106, v107, v108, v109);
  padding = self->_padding;
  v111 = objc_autoreleasePoolPush();
  v112 = objc_opt_class();
  if (v112)
  {
    v113 = NSStringFromClass(v112);
    v120 = objc_msgSend_cStringUsingEncoding_(v113, v114, 1, v115, v116, v117, v118, v119);
    if (v120)
    {
      v121 = v120;
      v122 = strlen(v120);
      if (v122)
      {
        objc_msgSend_encodeBytes_length_forKey_(coder, v123, v121, v122 + 1, @"MPSCNNKernel.data", v124, v125, v126);
        objc_msgSend_encodeObject_forKey_(coder, v127, padding, @"MPSCNNKernel.padding", v128, v129, v130, v131);
      }
    }
  }

  objc_autoreleasePoolPop(v111);
  destinationImageAllocator = self->_destinationImageAllocator;
  v133 = objc_autoreleasePoolPush();
  v134 = objc_opt_class();
  if (v134)
  {
    v135 = NSStringFromClass(v134);
    v142 = objc_msgSend_cStringUsingEncoding_(v135, v136, 1, v137, v138, v139, v140, v141);
    if (v142)
    {
      v143 = v142;
      v144 = strlen(v142);
      if (v144)
      {
        objc_msgSend_encodeBytes_length_forKey_(coder, v145, v143, v144 + 1, @"MPSCNNKernel.data2", v146, v147, v148);
        objc_msgSend_encodeObject_forKey_(coder, v149, destinationImageAllocator, @"MPSCNNKernel.allocator", v150, v151, v152, v153);
      }
    }
  }

  objc_autoreleasePoolPop(v133);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v12.receiver = self;
  v12.super_class = MPSCNNKernel;
  result = [(MPSKernel *)&v12 copyWithZone:zone device:device];
  if (result)
  {
    z = self->_offset.z;
    *(result + 88) = *&self->_offset.x;
    *(result + 13) = z;
    v7 = *&self->_clipRect.size.height;
    v8 = *&self->_clipRect.origin.x;
    *(result + 8) = *&self->_clipRect.origin.z;
    *(result + 9) = v7;
    *(result + 7) = v8;
    *(result + 20) = self->_destinationFeatureChannelOffset;
    *(result + 21) = self->_sourceFeatureChannelOffset;
    *(result + 22) = self->_sourceFeatureChannelMaxCount;
    *(result + 26) = self->_kernelHeight;
    *(result + 25) = self->_kernelWidth;
    *(result + 27) = self->_strideInPixelsX;
    *(result + 28) = self->_strideInPixelsY;
    *(result + 29) = self->_dilationRateX;
    *(result + 30) = self->_dilationRateY;
    v9 = result;
    *(result + 31) = self->_padding;
    v9->_maxBatchSize = self->_maxBatchSize;
    v9->_isBackwards = self->_isBackwards;
    v9->_edgeMode = self->_edgeMode;
    v9->_checkFlags = self->_checkFlags;
    v9->_encode = self->_encode;
    v9->_batchEncode = self->_batchEncode;
    encodeData = self->_encodeData;
    if (encodeData == self)
    {
      encodeData = v9;
    }

    v9->_encodeData = encodeData;
    v9->_plugin = 0;
    v11 = self->_destinationImageAllocator;
    result = v9;
    v9->_destinationImageAllocator = v11;
  }

  return result;
}

- (id)debugDescription
{
  if (!dladdr(self->_encode, &v48))
  {
    v48.dli_sname = "<NULL>";
  }

  v46 = MEMORY[0x277CCACA8];
  v47.receiver = self;
  v47.super_class = MPSCNNKernel;
  v3 = [(MPSKernel *)&v47 debugDescription];
  x = self->_offset.x;
  v45 = v3;
  z = self->_offset.z;
  y = self->_offset.y;
  sourceFeatureChannelMaxCount = self->_sourceFeatureChannelMaxCount;
  sourceFeatureChannelOffset = self->_sourceFeatureChannelOffset;
  v38 = self->_clipRect.origin.y;
  v39 = self->_clipRect.origin.x;
  v37 = self->_clipRect.origin.z;
  width = self->_clipRect.size.width;
  depth = self->_clipRect.size.depth;
  height = self->_clipRect.size.height;
  destinationFeatureChannelOffset = self->_destinationFeatureChannelOffset;
  edgeMode = self->_edgeMode;
  v31 = (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2];
  dli_sname = v48.dli_sname;
  kernelWidth = self->_kernelWidth;
  kernelHeight = self->_kernelHeight;
  strideInPixelsX = self->_strideInPixelsX;
  dilationRateX = self->_dilationRateX;
  dilationRateY = self->_dilationRateY;
  isBackwards = self->_isBackwards;
  v25 = objc_msgSend_debugDescription(self->_destinationImageAllocator, v11, v12, v13, v14, v15, v16, v17);
  padding = self->_padding;
  if (padding)
  {
    v27 = objc_msgSend_debugDescription(padding, v18, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    v27 = @"<nil>";
  }

  v28 = "NO";
  if (isBackwards)
  {
    v28 = "YES";
  }

  v29 = "MPSImageEdgeModeZero";
  if (edgeMode == 1)
  {
    v29 = "MPSImageEdgeModeClamp";
  }

  return objc_msgSend_stringWithFormat_(v46, v18, @"%@\n\toffset:        {%ld,%ld,%ld} sourceFeatureChannelRange{offset: %ld, len: %lu}\n\tclip:          origin{%lu,%lu,%lu} size{%lu,%lu,%lu} destinationFeatureChannelOffset{%ld} \n\tdevice:        %p\n\tedge mode:     %s\n\tEncode Proc:   %s\n\tKernel Size:   {%lu x %lu}\n\tstride:        {%lu x %lu}\n\tdilation factor {%lu x %lu}\n\tbackwards?  %s\n\tdestinationImageAllocator: %@\n\tpadding:       %@", v20, v21, v22, v23, v24, v45, x, y, z, sourceFeatureChannelOffset, sourceFeatureChannelMaxCount, v39, v38, v37, width, height, depth, destinationFeatureChannelOffset, v31, v29, dli_sname, kernelWidth, kernelHeight, strideInPixelsX, strideInPixelsX, dilationRateX, dilationRateY, v28, v25, v27);
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)size
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
  *&retstr->origin.x = vcvtq_f64_s64(*&self->_offset.x);
  retstr->origin.z = self->_offset.z;
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
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x12D, @"destinationFeatureChannelOffset must be multiple of 4", v6, v7, v8, v9);
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

- (void)setSourceFeatureChannelOffset:(NSUInteger)sourceFeatureChannelOffset
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) != 0 || (sourceFeatureChannelOffset & 3) == 0 || (self->_checkFlags & 0x20000) != 0)
  {
    self->_sourceFeatureChannelOffset = sourceFeatureChannelOffset;
  }

  else
  {
    v7 = MTLReportFailureTypeEnabled();
    v9 = sourceFeatureChannelOffset;
    selfCopy2 = self;
    if (v7)
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x135, @"sourceFeatureChannelOffset must be multiple of 4", v3, v4, v5, v6);
      v9 = sourceFeatureChannelOffset;
      selfCopy2 = self;
    }

    selfCopy2->_sourceFeatureChannelOffset = v9;
  }
}

- (void)setSourceFeatureChannelMaxCount:(NSUInteger)sourceFeatureChannelMaxCount
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) != 0 || (self->_checkFlags & 0x20000) != 0 || sourceFeatureChannelMaxCount == -1 || (sourceFeatureChannelMaxCount & 3) == 0)
  {
    self->_sourceFeatureChannelMaxCount = sourceFeatureChannelMaxCount;
  }

  else
  {
    v7 = MTLReportFailureTypeEnabled();
    v9 = sourceFeatureChannelMaxCount;
    selfCopy2 = self;
    if (v7)
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x13E, @"setSourceFeatureChannelMaxCount must be multiple of 4", v3, v4, v5, v6);
      v9 = sourceFeatureChannelMaxCount;
      selfCopy2 = self;
    }

    selfCopy2->_sourceFeatureChannelMaxCount = v9;
  }
}

- (MPSState)resultStateForSourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v9 = [MPSNNGradientState alloc];
  v19 = objc_msgSend_initWithResource_(v9, v10, 0, v11, v12, v13, v14, v15);
  if (v19)
  {
    objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v16, v19, sourceImage, sourceStates, destinationImage, v17, v18);
    if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
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

- (MPSStateBatch)resultStateBatchForSourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage
{
  v19 = objc_msgSend_count(sourceImage, a2, sourceImage, sourceStates, destinationImage, v5, v6, v7);
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!sourceImage && MTLReportFailureTypeEnabled())
    {
      v188 = objc_opt_class();
      v193 = NSStringFromClass(v188);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x15F, @"[%@ resultStateBatchForSourceImages:sourceStates:] Error: sourceImage batch may not be NULL", v189, v190, v191, v192);
    }

    if (!sourceStates)
    {
      if (v19)
      {
        v195 = 1;
        v68 = objc_autoreleasePoolPush();
        v69 = 0;
        v77 = 0;
        goto LABEL_21;
      }

      return 0;
    }

    if (objc_msgSend_count(sourceStates, v12, v13, v14, v15, v16, v17, v18))
    {
      v26 = 0;
      do
      {
        v27 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v20, v26, v21, v22, v23, v24, v25, v193);
        objc_msgSend_count(v27, v28, v29, v30, v31, v32, v33, v34);
        v41 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v35, v26, v36, v37, v38, v39, v40);
        if (objc_msgSend_count(v41, v42, v43, v44, v45, v46, v47, v48) < v19 && MTLReportFailureTypeEnabled())
        {
          v56 = objc_opt_class();
          v194 = NSStringFromClass(v56);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x166, @"[%@ resultStateBatchForSourceImages:sourceStates:] Error: if sourceStates is non-NULL, there must be at least as many source states as source images", v57, v58, v59, v60);
        }

        ++v26;
      }

      while (v26 < objc_msgSend_count(sourceStates, v49, v50, v51, v52, v53, v54, v55, v194));
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
LABEL_26:
      objc_autoreleasePoolPop(v68);
      return 0;
    }

    v77 = v76;
    if (v69)
    {
      for (i = 0; i != v69; ++i)
      {
        v79 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v61, i, v63, v64, v65, v66, v67, v193);
        v86 = objc_msgSend_objectAtIndexedSubscript_(v79, v80, 0, v81, v82, v83, v84, v85);
        objc_msgSend_setObject_atIndexedSubscript_(v77, v87, v86, i, v88, v89, v90, v91);
      }
    }

    v195 = 0;
  }

  else
  {
    v69 = 0;
    v77 = 0;
    v195 = 1;
  }

LABEL_21:
  v92 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v61, 0, v63, v64, v65, v66, v67, v193);
  v99 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v93, 0, v94, v95, v96, v97, v98);
  v104 = objc_msgSend_resultStateForSourceImage_sourceStates_destinationImage_(self, v100, v92, v77, v99, v101, v102, v103);
  if (!v104)
  {
    goto LABEL_26;
  }

  v105 = v104;
  context = v68;
  v106 = malloc_type_malloc(8 * v19, 0x80040B8603338uLL);
  if (!v106)
  {
    goto LABEL_26;
  }

  v114 = v106;
  if (!objc_msgSend_isResultStateReusedAcrossBatch(self, v107, v108, v109, v110, v111, v112, v113))
  {
    *v114 = v105;
    if (v19 >= 2)
    {
      if (v195)
      {
        for (j = 1; j != v19; ++j)
        {
          v124 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v115, j, v116, v117, v118, v119, v120);
          v131 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v125, j, v126, v127, v128, v129, v130);
          v114[j] = objc_msgSend_resultStateForSourceImage_sourceStates_destinationImage_(self, v132, v124, v77, v131, v133, v134, v135);
        }
      }

      else if (v69)
      {
        for (k = 1; k != v19; ++k)
        {
          for (m = 0; m != v69; ++m)
          {
            v143 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v115, m, v116, v117, v118, v119, v120);
            v150 = objc_msgSend_objectAtIndexedSubscript_(v143, v144, k, v145, v146, v147, v148, v149);
            objc_msgSend_setObject_atIndexedSubscript_(v77, v151, v150, m, v152, v153, v154, v155);
          }

          v156 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v115, k, v116, v117, v118, v119, v120);
          v163 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v157, k, v158, v159, v160, v161, v162);
          v114[k] = objc_msgSend_resultStateForSourceImage_sourceStates_destinationImage_(self, v164, v156, v77, v163, v165, v166, v167);
        }
      }

      else
      {
        for (n = 1; n != v19; ++n)
        {
          v169 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v115, n, v116, v117, v118, v119, v120);
          v176 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v170, n, v171, v172, v173, v174, v175);
          v114[n] = objc_msgSend_resultStateForSourceImage_sourceStates_destinationImage_(self, v177, v169, v77, v176, v178, v179, v180);
        }
      }
    }

    goto LABEL_47;
  }

  if (v19 < 4)
  {
    v121 = 0;
LABEL_36:
    v139 = v19 - v121;
    v140 = &v114[v121];
    do
    {
      *v140++ = v105;
      --v139;
    }

    while (v139);
    goto LABEL_47;
  }

  v121 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v136 = vdupq_n_s64(v105);
  v137 = (v114 + 2);
  v138 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v137[-1] = v136;
    *v137 = v136;
    v137 += 2;
    v138 -= 4;
  }

  while (v138);
  if (v19 != v121)
  {
    goto LABEL_36;
  }

LABEL_47:
  v181 = objc_alloc(MEMORY[0x277CBEA60]);
  v187 = objc_msgSend_initWithObjects_count_(v181, v182, v114, v19, v183, v184, v185, v186);
  free(v114);
  objc_autoreleasePoolPop(context);

  return v187;
}

- (MPSState)temporaryResultStateForCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v15 = objc_msgSend_temporaryStateWithCommandBuffer_(MPSNNGradientState, a2, commandBuffer, sourceImage, sourceStates, destinationImage, v6, v7);
  if (v15)
  {
    objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v12, v15, sourceImage, sourceStates, destinationImage, v13, v14);
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

- (MPSStateBatch)temporaryResultStateBatchForCommandBuffer:(id)commandBuffer sourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage
{
  v20 = objc_msgSend_count(sourceImage, a2, commandBuffer, sourceImage, sourceStates, destinationImage, v6, v7);
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v186 = objc_opt_class();
      v196 = NSStringFromClass(v186);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x1C4, @"[%@ temporaryResultStateBatchForCommandBuffer:sourceImage:sourceStates:] Error: command buffer may not be NULL", v187, v188, v189, v190);
    }

    if (!sourceImage && MTLReportFailureTypeEnabled())
    {
      v191 = objc_opt_class();
      v196 = NSStringFromClass(v191);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x1C8, @"[%@ temporaryResultStateBatchForCommandBuffer:sourceImage:sourceStates:] Error: sourceImage batch may not be NULL", v192, v193, v194, v195);
    }

    if (!sourceStates)
    {
      if (v20)
      {
        v200 = commandBuffer;
        v79 = destinationImage;
        v198 = 1;
        v69 = objc_autoreleasePoolPush();
        v70 = 0;
        v78 = 0;
        goto LABEL_22;
      }

      return 0;
    }

    if (objc_msgSend_count(sourceStates, v13, v14, v15, v16, v17, v18, v19))
    {
      v27 = 0;
      do
      {
        v28 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v21, v27, v22, v23, v24, v25, v26, v196);
        objc_msgSend_count(v28, v29, v30, v31, v32, v33, v34, v35);
        v42 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v36, v27, v37, v38, v39, v40, v41);
        if (objc_msgSend_count(v42, v43, v44, v45, v46, v47, v48, v49) < v20 && MTLReportFailureTypeEnabled())
        {
          v57 = objc_opt_class();
          v197 = NSStringFromClass(v57);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x1CF, @"[%@ temporaryResultStateBatchForCommandBuffer:sourceImage:sourceStates:] Error: if sourceStates is non-NULL, there must be at least as many source states as source images", v58, v59, v60, v61);
        }

        ++v27;
      }

      while (v27 < objc_msgSend_count(sourceStates, v50, v51, v52, v53, v54, v55, v56, v197));
    }
  }

  if (!v20)
  {
    return 0;
  }

  v69 = objc_autoreleasePoolPush();
  if (sourceStates)
  {
    v70 = objc_msgSend_count(sourceStates, v62, v63, v64, v65, v66, v67, v68);
    v77 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v71, v70, v72, v73, v74, v75, v76);
    if (!v77)
    {
LABEL_27:
      objc_autoreleasePoolPop(v69);
      return 0;
    }

    v78 = v77;
    v200 = commandBuffer;
    v79 = destinationImage;
    if (v70)
    {
      for (i = 0; i != v70; ++i)
      {
        v81 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v62, i, v64, v65, v66, v67, v68, v196);
        v88 = objc_msgSend_objectAtIndexedSubscript_(v81, v82, 0, v83, v84, v85, v86, v87);
        objc_msgSend_setObject_atIndexedSubscript_(v78, v89, v88, i, v90, v91, v92, v93);
      }
    }

    v198 = 0;
  }

  else
  {
    v200 = commandBuffer;
    v79 = destinationImage;
    v70 = 0;
    v78 = 0;
    v198 = 1;
  }

LABEL_22:
  v94 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v62, 0, v64, v65, v66, v67, v68, v196);
  v101 = objc_msgSend_objectAtIndexedSubscript_(v79, v95, 0, v96, v97, v98, v99, v100);
  v105 = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImage_sourceStates_destinationImage_(self, v102, v200, v94, v78, v101, v103, v104);
  if (!v105)
  {
    goto LABEL_27;
  }

  v106 = v105;
  context = v69;
  v107 = malloc_type_malloc(8 * v20, 0x80040B8603338uLL);
  if (!v107)
  {
    goto LABEL_27;
  }

  v115 = v107;
  if (!objc_msgSend_isResultStateReusedAcrossBatch(self, v108, v109, v110, v111, v112, v113, v114))
  {
    *v115 = v106;
    if (v20 >= 2)
    {
      if (v198)
      {
        for (j = 1; j != v20; ++j)
        {
          v125 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v116, j, v117, v118, v119, v120, v121);
          v132 = objc_msgSend_objectAtIndexedSubscript_(v79, v126, j, v127, v128, v129, v130, v131);
          v115[j] = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImage_sourceStates_destinationImage_(self, v133, v200, v125, v78, v132, v134, v135);
        }
      }

      else if (v70)
      {
        for (k = 1; k != v20; ++k)
        {
          for (m = 0; m != v70; ++m)
          {
            v143 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v116, m, v117, v118, v119, v120, v121);
            v150 = objc_msgSend_objectAtIndexedSubscript_(v143, v144, k, v145, v146, v147, v148, v149);
            objc_msgSend_setObject_atIndexedSubscript_(v78, v151, v150, k, v152, v153, v154, v155);
          }

          v156 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v116, k, v117, v118, v119, v120, v121);
          v163 = objc_msgSend_objectAtIndexedSubscript_(v79, v157, k, v158, v159, v160, v161, v162);
          v115[k] = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImage_sourceStates_destinationImage_(self, v164, v200, v156, v78, v163, v165, v166);
        }
      }

      else
      {
        for (n = 1; n != v20; ++n)
        {
          v168 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v116, n, v117, v118, v119, v120, v121);
          v175 = objc_msgSend_objectAtIndexedSubscript_(v79, v169, n, v170, v171, v172, v173, v174);
          v115[n] = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImage_sourceStates_destinationImage_(self, v176, v200, v168, v78, v175, v177, v178);
        }
      }
    }

    goto LABEL_48;
  }

  if (v20 < 4)
  {
    v122 = 0;
LABEL_37:
    v139 = v20 - v122;
    v140 = &v115[v122];
    do
    {
      *v140++ = v106;
      --v139;
    }

    while (v139);
    goto LABEL_48;
  }

  v122 = v20 & 0xFFFFFFFFFFFFFFFCLL;
  v136 = vdupq_n_s64(v106);
  v137 = (v115 + 2);
  v138 = v20 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v137[-1] = v136;
    *v137 = v136;
    v137 += 2;
    v138 -= 4;
  }

  while (v138);
  if (v20 != v122)
  {
    goto LABEL_37;
  }

LABEL_48:
  v179 = objc_alloc(MEMORY[0x277CBEA60]);
  v185 = objc_msgSend_initWithObjects_count_(v179, v180, v115, v20, v181, v182, v183, v184);
  free(v115);
  objc_autoreleasePoolPop(context);

  return v185;
}

- (void)copyToGradientState:(id)state sourceImage:(id)image sourceStates:(id)states destinationImage:(id)destinationImage
{
  if ((*(state + 280) & 1) == 0)
  {
    v9 = *(destinationImage + *MEMORY[0x277CD7330]);
    v10 = *(destinationImage + *MEMORY[0x277CD7308]);
    v11 = *(destinationImage + *MEMORY[0x277CD7310]);
    v12 = *(image + *MEMORY[0x277CD72F8]);
    if (v12 >= self->_sourceFeatureChannelOffset)
    {
      sourceFeatureChannelOffset = self->_sourceFeatureChannelOffset;
    }

    else
    {
      sourceFeatureChannelOffset = *(image + *MEMORY[0x277CD72F8]);
    }

    if (v12 - sourceFeatureChannelOffset >= self->_sourceFeatureChannelMaxCount)
    {
      sourceFeatureChannelMaxCount = self->_sourceFeatureChannelMaxCount;
    }

    else
    {
      sourceFeatureChannelMaxCount = v12 - sourceFeatureChannelOffset;
    }

    z = self->_offset.z;
    *(state + 3) = *&self->_offset.x;
    *(state + 8) = z;
    v19 = objc_msgSend_width(destinationImage, a2, state, image, states, destinationImage, v6, v7);
    v27 = objc_msgSend_height(destinationImage, v20, v21, v22, v23, v24, v25, v26);
    *(state + 15) = v19;
    *(state + 16) = v27;
    *(state + 17) = 1;
    v40.width = v9;
    v40.height = v10;
    v40.depth = v11;
    v28 = *&self->_clipRect.origin.z;
    *&v39.origin.x = *&self->_clipRect.origin.x;
    *&v39.origin.z = v28;
    *&v39.size.height = *&self->_clipRect.size.height;
    MPSGetEffectiveClipRegion(v41, &v40, &v39);
    v29 = v41[2];
    *(state + 88) = v41[1];
    *(state + 104) = v29;
    *(state + 72) = v41[0];
    *(state + 18) = sourceFeatureChannelMaxCount;
    *(state + 19) = self->_destinationFeatureChannelOffset;
    *(state + 20) = sourceFeatureChannelOffset;
    *(state + 21) = self->_kernelWidth;
    *(state + 22) = self->_kernelHeight;
    *(state + 23) = self->_strideInPixelsX;
    *(state + 24) = self->_strideInPixelsY;
    *(state + 25) = self->_dilationRateX;
    *(state + 26) = self->_dilationRateY;
    *(state + 27) = self->_padding;
    *(state + 232) = self->_isBackwards;
    *(state + 30) = self->_edgeMode;
    v30 = *(image + *MEMORY[0x277CD7308]);
    v31 = *(image + *MEMORY[0x277CD7310]);
    *(state + 31) = *(image + *MEMORY[0x277CD7330]);
    *(state + 32) = v30;
    *(state + 33) = v31;
    *(state + 34) = *(image + *MEMORY[0x277CD72F8]);
    *(state + 28) = self->_maxBatchSize;
    *(state + 280) = objc_msgSend_isResultStateReusedAcrossBatch(self, v32, v33, v34, v35, v36, v37, v38);
    *(state + 71) = 123927;
  }
}

- (id)destinationImageWithCommandBuffer:(id)buffer sourceImage:(id)image inState:(id)state
{
  v39[1] = *MEMORY[0x277D85DE8];
  v39[0] = image;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v39, 1, state, v5, v6, v7);
  if (state)
  {
    stateCopy = state;
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, &stateCopy, 1, v12, v13, v14, v15);
    v23 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v18, v16, v17, v19, v20, v21, v22);
  }

  else
  {
    v23 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v11, v16, 0, v12, v13, v14, v15);
  }

  v28 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.isa + v28))
  {
    if (!v23)
    {
      return 0;
    }
  }

  else if (!v23)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v29 = objc_opt_class();
      NSStringFromClass(v29);
      v34 = @"[%@ encodeToCommandBuffer:sourceImage:] Unable to create MPSImageDescriptor for destination.  Encode failed.\n";
      v35 = 647;
LABEL_14:
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", v35, v34, v30, v31, v32, v33);
      return 0;
    }

    return 0;
  }

  result = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(self->_destinationImageAllocator, v24, buffer, v23, self, v25, v26, v27);
  if ((*(&self->super.super.isa + v28) & 1) == 0 && !result)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v37 = objc_opt_class();
      NSStringFromClass(v37);
      v34 = @"[%@ encodeToCommandBuffer:sourceImage:] Unable to create MPSImage for destination.  Encode failed.\n";
      v35 = 655;
      goto LABEL_14;
    }

    return 0;
  }

  return result;
}

- (id)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image inState:(id)state
{
  v15 = objc_msgSend_destinationImageWithCommandBuffer_sourceImage_inState_(self, a2, buffer, image, state, state, v6, v7);
  if (v15)
  {
    objc_msgSend_encodeToCommandEncoder_commandBuffer_sourceImage_inState_destinationImage_(self, v13, encoder, buffer, image, state, v15, v14);
  }

  return v15;
}

- (id)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image sourceState:(id)state destinationState:(id *)destinationState destinationStateIsTemporary:(BOOL)temporary
{
  temporaryCopy = temporary;
  v36[1] = *MEMORY[0x277D85DE8];
  v20 = objc_msgSend_destinationImageWithCommandBuffer_sourceImage_inState_(self, a2, buffer, image, state, state, destinationState, temporary);
  if (v20)
  {
    if (temporaryCopy)
    {
      if (state)
      {
        v36[0] = state;
        v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v36, 1, v16, v17, v18, v19);
        v25 = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImage_sourceStates_destinationImage_(self, v22, buffer, image, v21, v20, v23, v24);
      }

      else
      {
        v25 = objc_msgSend_temporaryResultStateForCommandBuffer_sourceImage_sourceStates_destinationImage_(self, v15, buffer, image, 0, v20, v18, v19);
      }
    }

    else if (state)
    {
      stateCopy = state;
      v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, &stateCopy, 1, v16, v17, v18, v19);
      v25 = objc_msgSend_resultStateForSourceImage_sourceStates_destinationImage_(self, v29, image, v28, v20, v30, v31, v32);
    }

    else
    {
      v25 = objc_msgSend_resultStateForSourceImage_sourceStates_destinationImage_(self, v15, image, 0, v20, v17, v18, v19);
    }

    v33 = v25;
    objc_msgSend_encodeToCommandEncoder_commandBuffer_sourceImage_inState_destinationImage_(self, v26, encoder, buffer, image, v25, v20, v27);
    if (destinationState)
    {
      *destinationState = v33;
    }

    if (state)
    {
      MPSDecrementReadCount(state);
    }
  }

  return v20;
}

- (void)encodeInternalToCommputeEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image inState:(id)state destinationImage:(id)destinationImage subBatchIndex:(unint64_t)index batchSize:(unint64_t)size clipRect:(id *)self0 shouldHandleCompoundImageNatively:(BOOL)self1
{
  imageCopy = image;
  v14 = MEMORY[0x277CD7320];
  v15 = *MEMORY[0x277CD7320];
  v16 = (image + v15);
  v17 = *(image + v15 + 56);
  encoderCopy = encoder;
  if ((self->_checkFlags & 0x2000) != 0)
  {
    *(&v294 + 1) = self->_sourceFeatureChannelOffset;
  }

  else
  {
    v19 = *(image + *MEMORY[0x277CD72F8]);
    if (v19 >= self->_sourceFeatureChannelOffset)
    {
      sourceFeatureChannelOffset = self->_sourceFeatureChannelOffset;
    }

    else
    {
      sourceFeatureChannelOffset = *(image + *MEMORY[0x277CD72F8]);
    }

    v21 = v19 - sourceFeatureChannelOffset;
    if (v21 >= self->_sourceFeatureChannelMaxCount)
    {
      sourceFeatureChannelMaxCount = self->_sourceFeatureChannelMaxCount;
    }

    else
    {
      sourceFeatureChannelMaxCount = v21;
    }

    imageCopy = sub_239D29B30(buffer, encoder, &imageCopy->super, sourceFeatureChannelOffset, sourceFeatureChannelMaxCount, state, destinationImage, index);
    *(&v294 + 1) = 0;
    v15 = *v14;
  }

  *&v294 = self->_destinationFeatureChannelOffset;
  v23 = (destinationImage + v15);
  v24 = *MEMORY[0x277CD7378];
  v301 = v24;
  if ((*(&self->super.super.isa + v24) & 1) == 0)
  {
    v25 = MEMORY[0x277CD7490];
    if ((v17 & 1) != 0 && !*(&imageCopy->super.super.isa + *MEMORY[0x277CD7490]))
    {
      v233 = MTLReportFailureTypeEnabled();
      v24 = v301;
      if (v233)
      {
        v234 = objc_opt_class();
        v288 = NSStringFromClass(v234);
        destinationImageCopy = imageCopy;
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x368, @"[%@ encodeToCommandBuffer:sourceImage:destinationImage:] error:  source image is a temporary image with readCount of 0.\n\tBacking texture for source image is no longer valid. image=%p\n\tPerhaps you forgot to set the readCount property?", v235, v236, v237, v238);
        v24 = v301;
      }
    }

    if ((v23[7] & 1) != 0 && !*(destinationImage + *v25))
    {
      v239 = MTLReportFailureTypeEnabled();
      v24 = v301;
      if (v239)
      {
        v240 = objc_opt_class();
        v288 = NSStringFromClass(v240);
        destinationImageCopy = destinationImage;
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x36D, @"[%@ encodeToCommandBuffer:sourceImage:destinationImage:] error:  destination image is a temporary image with readCount of 0.\n\tBacking texture for destination image is no longer valid. image=%p\n", v241, v242, v243, v244);
        v24 = v301;
      }
    }
  }

  v26 = *MEMORY[0x277CD7318];
  v27 = *(&imageCopy->super.super.isa + v26);
  v28 = *(destinationImage + v26);
  v313 = v28;
  v314 = v27;
  v29 = *MEMORY[0x277CD7300];
  *&v297 = *(destinationImage + v29);
  *(&v297 + 1) = *(imageCopy + v29);
  if ((*(&self->super.super.isa + v24) & 1) == 0)
  {
    v30 = *MEMORY[0x277CD72F8];
    if (*(&imageCopy->super.super.isa + v30) >= 5 && *(destinationImage + v30) >= 5uLL && *(&v297 + 1) != v297)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x37D, @"Feature Channel Layout of source and destination does not match", image, state, destinationImage, index);
      }
    }

    v32 = (v27 & 0x3FF);
    explicit = atomic_load_explicit(v16, memory_order_acquire);
    v299 = v17;
    if ((v16[7] & 2) != 0)
    {
      if (*(v16 + 13) < 2u)
      {
        v34 = 2;
      }

      else
      {
        v34 = 3;
      }
    }

    else
    {
      if (!explicit)
      {
        explicit = v16[5];
      }

      v34 = objc_msgSend_textureType(explicit, a2, encoder, buffer, image, state, destinationImage, index, v288, destinationImageCopy);
    }

    if ((~v314 & 0xF000000) == 0)
    {
      v292 = v34;
      v37 = MTLReportFailureTypeEnabled();
      v34 = v292;
      if (v37)
      {
        v288 = v16;
        destinationImageCopy = v32;
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x37F, @"Source %p texture type (%lu) is unsupported\n", image, state, destinationImage, index);
        v34 = v292;
      }
    }

    if ((v314 & 0x80000000000) == 0 && (self->_checkFlags & 4) != 0)
    {
      v226 = v34;
      v227 = MTLReportFailureTypeEnabled();
      v34 = v226;
      if (v227)
      {
        v288 = v16;
        destinationImageCopy = v32;
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x381, @"Source %p texture format %lu  must support filtering.\n", image, state, destinationImage, index);
        v34 = v226;
      }
    }

    if ((v34 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      if (v34 == 2)
      {
        if (self->_offset.z && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x385, @"Source MTLTextureType2D must have offset.z = 0", image, state, destinationImage, index);
        }

        if (rect->var1.var2 != 1 && MTLReportFailureTypeEnabled())
        {
          v35 = @"Source MTLTextureType2D must have clipRect.size.depth = 1";
          v36 = 902;
LABEL_229:
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", v36, v35, image, state, destinationImage, index);
          goto LABEL_45;
        }

        goto LABEL_45;
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
      v288 = v16;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x382, @"Source %p texture type must be MTLTextureType2D or MTLTextureType2D_array\n", image, state, destinationImage, index);
    }

    z = self->_offset.z;
    v39 = MEMORY[0x277CD7310];
    if ((z < 0 || z >= *(&imageCopy->super.super.isa + *MEMORY[0x277CD7310])) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x38A, @"Source MTLTextureTypeArray2D must have 0 <= offset.z < source.numberOfImages", image, state, destinationImage, index);
    }

    if ((rect->var1.var2 + self->_offset.z) > *(&imageCopy->super.super.isa + *v39) && MTLReportFailureTypeEnabled())
    {
      v35 = @"Source MTLTextureTypeArray2D must have clipRect.size.depth such that _offset.z + clipRect.depth < source.numberOfImages";
      v36 = 907;
      goto LABEL_229;
    }

LABEL_45:
    v40 = (v28 & 0x3FF);
    v41 = atomic_load_explicit(v23, memory_order_acquire);
    if ((v23[7] & 2) != 0)
    {
      if (*(v23 + 13) < 2u)
      {
        v42 = 2;
      }

      else
      {
        v42 = 3;
      }
    }

    else
    {
      if (!v41)
      {
        v41 = v23[5];
      }

      v42 = objc_msgSend_textureType(v41, a2, encoder, buffer, image, state, destinationImage, index, v288, destinationImageCopy);
    }

    if ((~v313 & 0xF000000) == 0)
    {
      v45 = v42;
      v46 = MTLReportFailureTypeEnabled();
      v42 = v45;
      if (v46)
      {
        v288 = v23;
        destinationImageCopy = (v28 & 0x3FF);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x38F, @"Destination %p texture type (%lu) is unsupported\n", image, state, destinationImage, index);
        v42 = v45;
      }
    }

    if ((v313 & 0x200000000000) == 0)
    {
      v47 = v42;
      v48 = MTLReportFailureTypeEnabled();
      v42 = v47;
      if (v48)
      {
        v288 = v23;
        destinationImageCopy = v40;
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x390, @"Destination %p texture format %lu  must be writable.\n", image, state, destinationImage, index);
        v42 = v47;
      }
    }

    v17 = v299;
    if ((v42 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      if (v42 == 2)
      {
        if (rect->var0.var2 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x394, @"Destination MTLTextureType2D must have clipRect.origin.z = 0", image, state, destinationImage, index);
        }

        if (rect->var1.var2 == 1 || !MTLReportFailureTypeEnabled())
        {
          goto LABEL_68;
        }

        v43 = @"Destination MTLTextureType2D must have clipRect.size.depth = 1";
        v44 = 917;
LABEL_234:
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", v44, v43, image, state, destinationImage, index);
LABEL_68:
        if (!*(&imageCopy->super.super.isa + *MEMORY[0x277CD7300]) && (self->_checkFlags & 0x20) == 0 && *(&imageCopy->super.super.isa + *MEMORY[0x277CD72F8]) >= 5 && self->_edgeMode && MTLReportFailureTypeEnabled())
        {
          v273 = objc_opt_class();
          v288 = NSStringFromClass(v273);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x3A0, @"[%@ encodeToCommandBuffer:sourceImage:destinationImage]: the filter edge mode must be MPSImageEdgeModeZero for feature channels > 4.", v274, v275, v276, v277);
        }

        if ((self->_checkFlags & 2) == 0 && *(destinationImage + *MEMORY[0x277CD72F8]) != *(&imageCopy->super.super.isa + *MEMORY[0x277CD72F8]) && MTLReportFailureTypeEnabled())
        {
          v245 = objc_opt_class();
          v288 = NSStringFromClass(v245);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x3A4, @"[%@ encodeToCommandBuffer:sourceImage:destinationImage]: The number of source feature channels must match the number of destination feature channels for this filter.", v246, v247, v248, v249);
        }

        if ((self->_checkFlags & 1) == 0)
        {
          v50 = v23;
          if ((v23[7] & 2) != 0)
          {
            v50 = v23;
            do
            {
              v50 = v50[5];
            }

            while ((v50[7] & 2) != 0);
          }

          v51 = v16;
          if ((v16[7] & 2) != 0)
          {
            v51 = v16;
            do
            {
              v51 = v51[5];
            }

            while ((v51[7] & 2) != 0);
          }

          v52 = atomic_load_explicit(v51, memory_order_acquire);
          v53 = atomic_load_explicit(v50, memory_order_acquire);
          if (v52)
          {
            v54 = v53 == 0;
          }

          else
          {
            v54 = 1;
          }

          if (!v54 && v52 != v53)
          {
            objc_msgSend_isEqual_(v52, a2, v53, buffer, image, state, destinationImage, index);
          }

          while ((v23[7] & 2) != 0)
          {
            v23 = v23[5];
          }

          while ((v16[7] & 2) != 0)
          {
            v16 = v16[5];
          }

          v56 = atomic_load_explicit(v16, memory_order_acquire);
          encoder = atomic_load_explicit(v23, memory_order_acquire);
          if (v56)
          {
            v57 = encoder == 0;
          }

          else
          {
            v57 = 1;
          }

          if (!v57 && (v56 == encoder || objc_msgSend_isEqual_(v56, a2, encoder, buffer, image, state, destinationImage, index)) && MTLReportFailureTypeEnabled())
          {
            v228 = objc_opt_class();
            v288 = NSStringFromClass(v228);
            MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x3A7, @"[%@ encodeToCommandBuffer:sourceTexture:destinationTexture: can not operate in place.", v229, v230, v231, v232);
          }
        }

        if ((self->_checkFlags & 0x40000) == 0 && self->_edgeMode >= 2 && MTLReportFailureTypeEnabled())
        {
          v250 = objc_opt_class();
          v288 = NSStringFromClass(v250);
          MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x3AB, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:destinationImage]: the filter edge mode for source image must be MPSImageEdgeModeZero or MPSImageEdgeModeClamp for this filter.", v251, v252, v253, v254);
        }

        goto LABEL_102;
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
      v288 = v23;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x391, @"Destination %p texture type must be MTLTextureType2D or MTLTextureType2D_array\n", image, state, destinationImage, index);
    }

    v49 = MEMORY[0x277CD7310];
    if (rect->var0.var2 >= *(destinationImage + *MEMORY[0x277CD7310]) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x399, @"Destination MTLTextureTypeArray2D must have 0 <= clipRect.origin.z < dest.numberOfImages", image, state, destinationImage, index);
    }

    if (rect->var1.var2 + rect->var0.var2 <= *(destinationImage + *v49) || !MTLReportFailureTypeEnabled())
    {
      goto LABEL_68;
    }

    v43 = @"Destination MTLTextureTypeArray2D must have clipRect.size.depth such that clipRect.origin.z + clipRect.depth < dest.numberOfImages";
    v44 = 922;
    goto LABEL_234;
  }

LABEL_102:
  if (!rect->var1.var1 || !rect->var1.var0 || !rect->var1.var2)
  {
    return;
  }

  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  memset(v310, 0, sizeof(v310));
  v307 = 0u;
  v308 = 0u;
  v305 = 0u;
  v306 = 0u;
  v304 = 0u;
  v303[0] = imageCopy;
  v303[1] = &v314;
  v58 = MEMORY[0x277CD7320];
  v59 = (imageCopy + *MEMORY[0x277CD7320]);
  v60 = atomic_load_explicit(v59, memory_order_acquire);
  if ((v59[7] & 2) != 0)
  {
    if (*(v59 + 13) < 2u)
    {
      v61 = 2;
    }

    else
    {
      v61 = 3;
    }
  }

  else
  {
    if (!v60)
    {
      v60 = v59[5];
    }

    v61 = objc_msgSend_textureType(v60, a2, encoder, buffer, image, state, destinationImage, index, v288, destinationImageCopy);
  }

  v62 = *(&imageCopy->super.super.isa + *MEMORY[0x277CD72F0]) - 1;
  if (v62 > 4)
  {
    v63 = 0;
  }

  else
  {
    v63 = dword_239D91650[v62];
  }

  if (v61 == 3)
  {
    ++v63;
  }

  v64 = MEMORY[0x277CD7310];
  if (*(&imageCopy->super.super.isa + *MEMORY[0x277CD7310]) >= 2 && !natively)
  {
    v63 |= 2u;
  }

  if ((*(&imageCopy->super.super.isa + *MEMORY[0x277CD7318]) & 0x3000000) != 0)
  {
    v63 |= 4u;
  }

  v66 = MEMORY[0x277CD72F8];
  LODWORD(v304) = v63;
  v67 = MEMORY[0x277CD7328];
  v68 = *(&imageCopy->super.super.isa + *MEMORY[0x277CD7328]);
  *(&v304 + 1) = *(imageCopy + *MEMORY[0x277CD72F8]);
  v305 = v68;
  *&v306 = *(imageCopy + *MEMORY[0x277CD7300]);
  *(&v306 + 1) = state;
  *&v307 = destinationImage;
  *(&v307 + 1) = &v313;
  v69 = (destinationImage + *v58);
  v70 = atomic_load_explicit(v69, memory_order_acquire);
  if ((v69[7] & 2) != 0)
  {
    if (*(v69 + 13) < 2u)
    {
      v71 = 2;
    }

    else
    {
      v71 = 3;
    }
  }

  else
  {
    if (!v70)
    {
      v70 = v69[5];
    }

    v71 = objc_msgSend_textureType(v70, a2, encoder, buffer, image, state, destinationImage, index, v288);
  }

  v72 = *(destinationImage + *MEMORY[0x277CD72F0]) - 1;
  if (v72 > 4)
  {
    v73 = 0;
  }

  else
  {
    v73 = dword_239D91650[v72];
  }

  if (v71 == 3)
  {
    ++v73;
  }

  if (*(destinationImage + *v64) >= 2uLL && !natively)
  {
    v73 |= 2u;
  }

  if ((*(destinationImage + *MEMORY[0x277CD7318]) & 0x3000000) != 0)
  {
    v73 |= 4u;
  }

  LODWORD(v308) = v73;
  v75 = *(destinationImage + *v67);
  *(&v308 + 1) = *(destinationImage + *v66);
  v309 = v75;
  *&v310[0] = *(destinationImage + *MEMORY[0x277CD7300]);
  v76 = *&rect->var0.var0;
  v77 = *&rect->var0.var2;
  *(&v310[2] + 8) = *&rect->var1.var1;
  *(&v310[1] + 8) = v77;
  *(v310 + 8) = v76;
  *(&v310[3] + 8) = *&self->_offset.x;
  *(&v310[4] + 1) = self->_offset.z;
  v311 = v294;
  *&v312 = index;
  *(&v312 + 1) = size;
  v78 = (imageCopy + *v58);
  v79 = atomic_load_explicit(v78, memory_order_acquire);
  if (v79)
  {
    *(&v305 + 1) = v79;
    v80 = v58;
    v81 = (destinationImage + *v58);
    v82 = atomic_load_explicit(v81, memory_order_acquire);
    if (v82)
    {
      goto LABEL_145;
    }
  }

  else
  {
    MPSAutoTexture::AllocateTexture(v78, 0);
    *(&v305 + 1) = atomic_load_explicit(v78, memory_order_acquire);
    v80 = v58;
    v81 = (destinationImage + *v58);
    v82 = atomic_load_explicit(v81, memory_order_acquire);
    if (v82)
    {
LABEL_145:
      *(&v309 + 1) = v82;
      if (*(&self->super.super.isa + v301))
      {
        goto LABEL_151;
      }

      goto LABEL_149;
    }
  }

  MPSAutoTexture::AllocateTexture(v81, 0);
  v82 = atomic_load_explicit(v81, memory_order_acquire);
  *(&v309 + 1) = v82;
  if (*(&self->super.super.isa + v301))
  {
    goto LABEL_151;
  }

LABEL_149:
  if (!*(&v305 + 1) && MTLReportFailureTypeEnabled())
  {
    v263 = objc_opt_class();
    v288 = NSStringFromClass(v263);
    MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x3D6, @"[%@ encodeToCommandBuffer:...]: source MPSImage contains a nil texture. Cannot continue.\n", v264, v265, v266, v267);
  }

  if (!v82 && MTLReportFailureTypeEnabled())
  {
    v268 = objc_opt_class();
    v288 = NSStringFromClass(v268);
    MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x3D7, @"[%@ encodeToCommandBuffer:...]: destination MPSImage contains a nil texture. Perhaps it was lazily allocated but turned out to be too large? Cannot continue.\n", v269, v270, v271, v272);
  }

LABEL_151:
  v300 = v17;
  if (rect->var1.var2 != 1)
  {
    v84 = 0;
    v85 = 0;
    bufferCopy3 = buffer;
    if ((objc_msgSend_retainedReferences(buffer, a2, encoder, buffer, image, state, destinationImage, index) & 1) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_213;
  }

  bufferCopy3 = buffer;
  if (v297 == 0)
  {
    goto LABEL_155;
  }

  v84 = 0;
  if (*(&v304 + 1) <= 4uLL)
  {
    v85 = 0;
    if (*(&v308 + 1) > 4uLL)
    {
      goto LABEL_189;
    }

LABEL_155:
    v86 = (imageCopy + *v80);
    v87 = atomic_load_explicit(v86, memory_order_acquire);
    if ((v86[7] & 2) != 0)
    {
      if (*(v86 + 13) < 2u)
      {
        goto LABEL_159;
      }
    }

    else
    {
      if (!v87)
      {
        v87 = v86[5];
      }

      if (objc_msgSend_textureType(v87, a2, encoder, buffer, image, state, destinationImage, index, v288) != 3)
      {
LABEL_159:
        v85 = 0;
        v88 = (destinationImage + *v80);
        v89 = atomic_load_explicit(v88, memory_order_acquire);
        if ((v88[7] & 2) != 0)
        {
          goto LABEL_160;
        }

        goto LABEL_175;
      }
    }

    v85 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(*(&v305 + 1), a2, *(&imageCopy[4].super.super.isa + *v80) & 0x3FF, 2, 0, 1, self->_offset.z & ~(self->_offset.z >> 63), 1, v288);
    if (!v85 && MTLReportFailureTypeEnabled())
    {
      v278 = objc_opt_class();
      v289 = NSStringFromClass(v278);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x3EA, @"[%@ encodeToCommandBuffer:sourceTexture:destinationTexture:] Internal Error: unable to make texture2d view of source", v279, v280, v281, v282);
    }

    *&v305 = 2;
    *(&v305 + 1) = v85;
    v103 = *(&imageCopy->super.super.isa + *MEMORY[0x277CD72F0]);
    v104 = objc_msgSend_textureType(v85, v96, v97, v98, v99, v100, v101, v102, v289);
    if (v103 - 1 > 4)
    {
      v112 = 0;
    }

    else
    {
      v112 = dword_239D91650[v103 - 1];
    }

    if (v104 == 3)
    {
      v113 = v112 + 1;
    }

    else
    {
      v113 = v112;
    }

    objc_msgSend_device(v85, v105, v106, v107, v108, v109, v110, v111);
    MPSDevice = MPSDevice::GetMPSDevice();
    v122 = objc_msgSend_pixelFormat(v85, v115, v116, v117, v118, v119, v120, v121);
    PixelInfo = MPSDevice::GetPixelInfo(MPSDevice, v122, v103);
    v124 = v113 | 4;
    if ((PixelInfo & 0x3000000) == 0)
    {
      v124 = v113;
    }

    LODWORD(v304) = v124;
    bufferCopy3 = buffer;
    v88 = (destinationImage + *v80);
    v89 = atomic_load_explicit(v88, memory_order_acquire);
    if ((v88[7] & 2) != 0)
    {
LABEL_160:
      if (*(v88 + 13) < 2u)
      {
LABEL_161:
        v84 = 0;
LABEL_188:
        *(&v310[4] + 1) = 0;
        *(&v310[1] + 1) = 0;
LABEL_189:
        if ((objc_msgSend_retainedReferences(bufferCopy3, a2, encoder, buffer, image, state, destinationImage, index, v288) & 1) == 0)
        {
          goto LABEL_190;
        }

        goto LABEL_213;
      }

LABEL_178:
      v84 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(*(&v309 + 1), a2, *(destinationImage + *v80 + 32) & 0x3FFLL, 2, 0, 1, rect->var0.var2, 1, v288);
      if (!v84 && MTLReportFailureTypeEnabled())
      {
        v283 = objc_opt_class();
        v290 = NSStringFromClass(v283);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x3F7, @"[%@ encodeToCommandBuffer:sourceTexture:destinationTexture:] Internal Error: unable to make texture2d view of destination", v284, v285, v286, v287);
      }

      *&v309 = 2;
      *(&v309 + 1) = v84;
      v132 = *(destinationImage + *MEMORY[0x277CD72F0]);
      v133 = objc_msgSend_textureType(v84, v125, v126, v127, v128, v129, v130, v131, v290);
      if (v132 - 1 > 4)
      {
        v141 = 0;
      }

      else
      {
        v141 = dword_239D91650[v132 - 1];
      }

      if (v133 == 3)
      {
        v142 = v141 + 1;
      }

      else
      {
        v142 = v141;
      }

      objc_msgSend_device(v84, v134, v135, v136, v137, v138, v139, v140);
      v143 = MPSDevice::GetMPSDevice();
      v151 = objc_msgSend_pixelFormat(v84, v144, v145, v146, v147, v148, v149, v150);
      v152 = MPSDevice::GetPixelInfo(v143, v151, v132);
      v153 = v142 | 4;
      if ((v152 & 0x3000000) == 0)
      {
        v153 = v142;
      }

      LODWORD(v308) = v153;
      goto LABEL_188;
    }

LABEL_175:
    if (!v89)
    {
      v89 = v88[5];
    }

    if (objc_msgSend_textureType(v89, a2, encoder, buffer, image, state, destinationImage, index, v288) != 3)
    {
      goto LABEL_161;
    }

    goto LABEL_178;
  }

  v85 = 0;
  if ((objc_msgSend_retainedReferences(buffer, a2, encoder, buffer, image, state, destinationImage, index) & 1) == 0)
  {
LABEL_190:
    v298 = v85;
    v154 = objc_opt_new();
    objc_msgSend_addObject_(v154, v155, *(&v305 + 1), v156, v157, v158, v159, v160);
    objc_msgSend_addObject_(v154, v161, *(&v309 + 1), v162, v163, v164, v165, v166);
    stateCopy5 = state;
    if (state)
    {
      if ((*(state + *MEMORY[0x277CD7470]) & 1) == 0)
      {
        v175 = MEMORY[0x277CD7480];
        if (*(state + *MEMORY[0x277CD7480]))
        {
          v176 = 0;
          v177 = 0;
          v178 = MEMORY[0x277CD7488];
          do
          {
            v181 = *&stateCopy5[*v178];
            v182 = *(v181 + v176);
            if (!*(v181 + v176))
            {
              goto LABEL_197;
            }

            if (v182 == 2)
            {
              v179 = v181 + v176;
              v180 = (v179 + 8);
              v168 = atomic_load_explicit((v179 + 8), memory_order_acquire);
              if (!v168)
              {
                MPSAutoTexture::AllocateTexture((v179 + 8), 0);
                v168 = atomic_load_explicit(v180, memory_order_acquire);
                stateCopy5 = state;
                if (!v168)
                {
                  goto LABEL_197;
                }
              }
            }

            else
            {
              if (v182 != 1)
              {
                v184 = MTLReportFailureTypeEnabled();
                stateCopy5 = state;
                if (!v184)
                {
                  goto LABEL_197;
                }

                v185 = objc_opt_class();
                v288 = NSStringFromClass(v185);
                MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Binaries/MetalPerformanceShaders/install/Symbols/BuiltProducts/MPSCore.framework/PrivateHeaders/Internal/MPSStateInternal.h", 0x129, @"[%@ resource] Internal error: unhandled resource type\n", v186, v187, v188, v189);
                goto LABEL_196;
              }

              v168 = atomic_load_explicit((v181 + v176 + 8), memory_order_acquire);
              if (!v168)
              {
                v183 = (v181 + 72 * v177 + 8);
                MPSAutoBuffer::AllocateBuffer((v181 + v176 + 8), 0);
                v168 = atomic_load_explicit(v183, memory_order_acquire);
                stateCopy5 = state;
                if (!v168)
                {
                  goto LABEL_197;
                }
              }
            }

            objc_msgSend_addObject_(v154, v167, v168, v169, v170, v171, v172, v173, v288);
LABEL_196:
            stateCopy5 = state;
LABEL_197:
            ++v177;
            v176 += 72;
          }

          while (v177 < *&stateCopy5[*v175]);
        }
      }
    }

    v85 = v298;
    if (v154)
    {
      v190 = objc_msgSend_userDictionary(bufferCopy3, v167, v168, v169, v170, v171, v172, v173);
      v197 = objc_msgSend_objectForKey_(v190, v191, @"_MPSCommandBufferRetainListKey", v192, v193, v194, v195, v196);
      if (!v197)
      {
        v204 = objc_alloc_init(MEMORY[0x277CBEB18]);
        objc_msgSend_setObject_forKey_(v190, v205, v204, @"_MPSCommandBufferRetainListKey", v206, v207, v208, v209);

        v315[0] = MEMORY[0x277D85DD0];
        v315[1] = 3221225472;
        v315[2] = sub_239D2DEF0;
        v315[3] = &unk_278B28F28;
        v315[4] = @"_MPSCommandBufferRetainListKey";
        objc_msgSend_addCompletedHandler_(bufferCopy3, v210, v315, v211, v212, v213, v214, v215);
        v197 = v204;
      }

      objc_msgSend_addObject_(v197, v198, v154, v199, v200, v201, v202, v203, v288);
    }
  }

LABEL_213:
  if ((*(&self->super.super.isa + v301) & 8) != 0)
  {
    v255 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (!v255)
    {
      v256 = objc_opt_class();
      v255 = NSStringFromClass(v256);
    }

    objc_msgSend_pushDebugGroup_(encoderCopy, v90, v255, v91, v92, v93, v94, v95, v288);
    v217 = encoderCopy;
    v216 = encoderCopy;
  }

  else
  {
    v216 = 0;
    v217 = encoderCopy;
  }

  v225 = (self->_encode)(self->_encodeData, v217, bufferCopy3, v303);
  if (v216)
  {
    objc_msgSend_popDebugGroup(v216, v218, v219, v220, v221, v222, v223, v224);
  }

  if (v225 && MTLReportFailureTypeEnabled())
  {
    v257 = objc_opt_class();
    NSStringFromClass(v257);
    MPSReturnGetName();
    MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x41A, @"[%@ encode...] Error: an error (%s) was encountered preventing this kernel from encoding.", v258, v259, v260, v261);
  }

  if (v85)
  {
  }

  if (v84)
  {
  }

  if (v300)
  {
    MPSDecrementReadCount(imageCopy);
  }
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImage:(id)image inState:(id)state destinationImage:(id)destinationImage subBatchIndex:(unint64_t)index batchSize:(unint64_t)size
{
  v15 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.isa + v15))
  {
    goto LABEL_18;
  }

  if (!buffer)
  {
    v136 = a2;
    indexCopy = index;
    v138 = MTLReportFailureTypeEnabled();
    index = indexCopy;
    a2 = v136;
    if (v138)
    {
      v139 = objc_opt_class();
      v230 = NSStringFromClass(v139);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x434, @"[%@ encode...] Error: commandBuffer may not be nil]", v140, v141, v142, v143);
      index = indexCopy;
      a2 = v136;
    }
  }

  if (!image)
  {
    v144 = a2;
    indexCopy2 = index;
    v146 = MTLReportFailureTypeEnabled();
    index = indexCopy2;
    a2 = v144;
    if (v146)
    {
      v147 = objc_opt_class();
      v230 = NSStringFromClass(v147);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x435, @"[%@ encode...] Error: source may not be nil", v148, v149, v150, v151);
      index = indexCopy2;
      a2 = v144;
    }
  }

  if (!destinationImage)
  {
    v152 = a2;
    indexCopy3 = index;
    v154 = MTLReportFailureTypeEnabled();
    index = indexCopy3;
    a2 = v152;
    if (v154)
    {
      v155 = objc_opt_class();
      v230 = NSStringFromClass(v155);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x436, @"[%@ encode...] Error: destination may not be nil", v156, v157, v158, v159);
      index = indexCopy3;
      a2 = v152;
    }
  }

  v16 = *MEMORY[0x277CD7348];
  if ((*(&self->super.super.isa + v15) & ~*(&self->super.super.isa + v16)) != 0)
  {
    v160 = a2;
    indexCopy4 = index;
    v162 = MTLReportFailureTypeEnabled();
    index = indexCopy4;
    a2 = v160;
    if (v162)
    {
      v163 = objc_opt_class();
      v230 = NSStringFromClass(v163);
      sourceFeatureChannelOffset = *(&self->super.super.isa + v15) & ~*(&self->super.super.isa + v16);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x437, @"[%@ encode...] Error: options flag(s) 0x%16.16lx is unknown or invalid for use with this filter", v164, v165, v166, v167);
      index = indexCopy4;
      a2 = v160;
    }
  }

  v17 = MEMORY[0x277CD72F8];
  if (self->_sourceFeatureChannelOffset >= *(image + *MEMORY[0x277CD72F8]))
  {
    v236 = a2;
    indexCopy5 = index;
    v169 = MTLReportFailureTypeEnabled();
    index = indexCopy5;
    a2 = v236;
    if (v169)
    {
      v170 = objc_opt_class();
      v171 = NSStringFromClass(v170);
      sourceFeatureChannelOffset = self->_sourceFeatureChannelOffset;
      destinationImageCopy = image;
      v230 = v171;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x43C, @"[%@ encode...] Error: source feature channel offset (%lu) is too large to fit in the source image (%p).", v172, v173, v174, v175);
      index = indexCopy5;
      a2 = v236;
    }
  }

  if (self->_destinationFeatureChannelOffset >= *(destinationImage + *v17))
  {
    v237 = a2;
    indexCopy6 = index;
    v177 = MTLReportFailureTypeEnabled();
    index = indexCopy6;
    a2 = v237;
    if (v177)
    {
      v178 = objc_opt_class();
      v179 = NSStringFromClass(v178);
      sourceFeatureChannelOffset = self->_destinationFeatureChannelOffset;
      destinationImageCopy = destinationImage;
      v230 = v179;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x441, @"[%@ encode...] Error: destination feature channel offset (%lu) is too large to fit in the destination image (%p).", v180, v181, v182, v183);
      index = indexCopy6;
      a2 = v237;
    }
  }

  if ((self->_destinationFeatureChannelOffset & 3) != 0)
  {
    v238 = a2;
    indexCopy7 = index;
    v185 = MTLReportFailureTypeEnabled();
    index = indexCopy7;
    a2 = v238;
    if (v185)
    {
      v186 = objc_opt_class();
      v230 = NSStringFromClass(v186);
      sourceFeatureChannelOffset = self->_destinationFeatureChannelOffset;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x445, @"[%@ encode...] Error: destination feature channel offset (%lu) must be divisible by 4.\n\tOther values would require read-modify-write on individual texels which is not supported by some hardware and a problem for concurrent operation everywhere.", v187, v188, v189, v190);
      index = indexCopy7;
      a2 = v238;
    }
  }

  if (self->_sourceFeatureChannelOffset)
  {
    if (*(image + *MEMORY[0x277CD7310]) != 1)
    {
      v206 = a2;
      indexCopy8 = index;
      v208 = MTLReportFailureTypeEnabled();
      index = indexCopy8;
      a2 = v206;
      if (v208)
      {
        v209 = objc_opt_class();
        v230 = NSStringFromClass(v209);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x448, @"[%@ encode...]: Error: non-zero source feature channel offset unsupported for compound MPSImages. Use a MPSImageBatch instead.", v210, v211, v212, v213);
        index = indexCopy8;
        a2 = v206;
        v18 = MEMORY[0x277CD7320];
        v19 = image + *MEMORY[0x277CD7320];
        if ((v19[56] & 2) == 0)
        {
          goto LABEL_13;
        }

        do
        {
LABEL_12:
          v19 = *(v19 + 5);
        }

        while ((v19[56] & 2) != 0);
        goto LABEL_13;
      }
    }
  }

  v18 = MEMORY[0x277CD7320];
  v19 = image + *MEMORY[0x277CD7320];
  if ((v19[56] & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  atomic_load_explicit(v19, memory_order_acquire);
    ;
  }

  if (!atomic_load_explicit(i, memory_order_acquire))
  {
    v191 = a2;
    indexCopy9 = index;
    v193 = MTLReportFailureTypeEnabled();
    index = indexCopy9;
    a2 = v191;
    if (v193)
    {
      v194 = objc_opt_class();
      v239 = NSStringFromClass(v194);
      sourceFeatureChannelOffset = NSStringFromSelector(v191);
      destinationImageCopy = objc_msgSend_debugDescription(image, v195, v196, v197, v198, v199, v200, v201);
      v230 = v239;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x44D, @"[%@ %@] Error: the source image texture is uninitialized.\n\tThis typically means that nothing has written to it yet, and its contents are undefined.\n%@\n", v202, v203, v204, v205);
      index = indexCopy9;
      a2 = v191;
    }
  }

  if ((*(destinationImage + *v18 + 56) & 1) != 0 && !*(destinationImage + *MEMORY[0x277CD7490]))
  {
    v214 = a2;
    indexCopy10 = index;
    v216 = MTLReportFailureTypeEnabled();
    index = indexCopy10;
    if (v216)
    {
      v217 = objc_opt_class();
      v218 = NSStringFromClass(v217);
      sourceFeatureChannelOffset = NSStringFromSelector(v214);
      destinationImageCopy = objc_msgSend_debugDescription(destinationImage, v219, v220, v221, v222, v223, v224, v225);
      v230 = v218;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x452, @"[%@ %@] Error: the destination image texture is temporary and has a readCount of 0.\n\tIts texel storage is probably in use for another texture now.\n%@\n", v226, v227, v228, v229);
      index = indexCopy10;
    }
  }

LABEL_18:
  if (!image)
  {
    return;
  }

  if (!destinationImage)
  {
    return;
  }

  indexCopy11 = index;
  v22 = *(destinationImage + *MEMORY[0x277CD7330]);
  v23 = *(destinationImage + *MEMORY[0x277CD7308]);
  memset(&v242, 0, sizeof(v242));
  v24 = MEMORY[0x277CD7310];
  v25 = *(destinationImage + *MEMORY[0x277CD7310]);
  v241.width = v22;
  v241.height = v23;
  v241.depth = v25;
  v26 = *&self->_clipRect.origin.z;
  *&v240.origin.x = *&self->_clipRect.origin.x;
  *&v240.origin.z = v26;
  *&v240.size.height = *&self->_clipRect.size.height;
  MPSGetEffectiveClipRegion(&v242, &v241, &v240);
  if (!v242.size.depth)
  {
    return;
  }

  v28 = image + *MEMORY[0x277CD7320];
  if (v242.size.depth != 1 || v242.origin.z)
  {
    v29 = BYTE1(self->_checkFlags) >> 7;
    if (self->_sourceFeatureChannelOffset)
    {
      LOBYTE(v29) = 0;
    }

    v30 = indexCopy11;
    v31 = v28[56];
    if (!self->_encode)
    {
LABEL_31:
      v235 = v31;
      v32 = objc_autoreleasePoolPush();
      v40 = objc_msgSend_batchRepresentation(destinationImage, v33, v34, v35, v36, v37, v38, v39);
      v51 = objc_msgSend_batchRepresentation(image, v41, v42, v43, v44, v45, v46, v47);
      v52 = *(image + *v24);
      if (state)
      {
        v53 = v52 == 0;
      }

      else
      {
        v53 = 1;
      }

      v54 = v53;
      if (encoder)
      {
        if (v54)
        {
          objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_(self, v48, encoder, buffer, v51, 0, v40, v50, v230);
          goto LABEL_61;
        }

        v234 = v32;
        v96 = malloc_type_malloc(8 * v52, 0x80040B8603338uLL);
        if (!v96)
        {
          v104 = 0;
LABEL_60:
          v32 = v234;
          objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_(self, v97, encoder, buffer, v51, v104, v40, v101, v230);
LABEL_61:
          if ((*(destinationImage + *MEMORY[0x277CD7320] + 56) & 1) == 0)
          {
            goto LABEL_76;
          }

          goto LABEL_70;
        }

        v102 = v96;
        if (v52 > 3)
        {
          v103 = v52 & 0xFFFFFFFFFFFFFFFCLL;
          v105 = vdupq_n_s64(state);
          v106 = v96 + 1;
          v107 = v52 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v106[-1] = v105;
            *v106 = v105;
            v106 += 2;
            v107 -= 4;
          }

          while (v107);
          if (v52 == v103)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v103 = 0;
        }

        v108 = v52 - v103;
        v109 = v96 + v103;
        do
        {
          *v109++ = state;
          --v108;
        }

        while (v108);
LABEL_59:
        v110 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v97, v96, v52, v98, v99, v100, v101, v230, sourceFeatureChannelOffset, destinationImageCopy);
        free(v102);
        v104 = v110;
        goto LABEL_60;
      }

      if ((v54 & 1) != 0 || (v62 = malloc_type_malloc(8 * v52, 0x80040B8603338uLL)) == 0)
      {
        objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_destinationImages_(self, v48, buffer, v51, 0, v40, v49, v50, v230);
        goto LABEL_69;
      }

      v65 = v62;
      if (v52 > 3)
      {
        v66 = v52 & 0xFFFFFFFFFFFFFFFCLL;
        v111 = vdupq_n_s64(state);
        v112 = v62 + 1;
        v113 = v52 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v112[-1] = v111;
          *v112 = v111;
          v112 += 2;
          v113 -= 4;
        }

        while (v113);
        if (v52 == v66)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v66 = 0;
      }

      v114 = v52 - v66;
      v115 = v62 + v66;
      do
      {
        *v115++ = state;
        --v114;
      }

      while (v114);
LABEL_68:
      v116 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, v62, v52, v63, v64, v49, v50, v230, sourceFeatureChannelOffset, destinationImageCopy);
      free(v65);
      objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_destinationImages_(self, v117, buffer, v51, v116, v40, v118, v119, v231);
LABEL_69:
      if ((*(destinationImage + *MEMORY[0x277CD7320] + 56) & 1) == 0)
      {
LABEL_76:
        if (v235)
        {
          MPSDecrementReadCount(image);
        }

        objc_autoreleasePoolPop(v32);
        return;
      }

LABEL_70:
      v120 = objc_msgSend_count(v40, v55, v56, v57, v58, v59, v60, v61);
      if (v120)
      {
        v127 = v120;
        v128 = 0;
        for (j = objc_msgSend_objectAtIndexedSubscript_(v40, v121, 0, v122, v123, v124, v125, v126); ; j = objc_msgSend_objectAtIndexedSubscript_(v40, v130, v128, v131, v132, v133, v134, v135))
        {
          if (j != destinationImage)
          {
            objc_msgSend_setReadCount_(j, v130, 0, v131, v132, v133, v134, v135);
          }

          if (v127 == ++v128)
          {
            break;
          }
        }
      }

      goto LABEL_76;
    }
  }

  else
  {
    LOBYTE(v29) = 1;
    v30 = indexCopy11;
    v31 = v28[56];
    if (!self->_encode)
    {
      goto LABEL_31;
    }
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_31;
  }

  if (encoder)
  {
    v240 = v242;
    LOBYTE(destinationImageCopy) = 1;
    objc_msgSend_encodeInternalToCommputeEncoder_commandBuffer_sourceImage_inState_destinationImage_subBatchIndex_batchSize_clipRect_shouldHandleCompoundImageNatively_(self, v27, encoder, buffer, image, state, destinationImage, v30, size, &v240, destinationImageCopy);
  }

  else
  {
    v67 = objc_alloc(MEMORY[0x277CD7210]);
    v79 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v67, v68, buffer, 0, v69, v70, v71, v72);
    v241.width = v79;
    v241.height = self;
    if ((*(&self->super.super.isa + v15) & 0x18) != 0)
    {
      v80 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
      if (v80 || (v81 = objc_opt_class(), v82 = NSStringFromClass(v81), objc_msgSend_setLabel_(self, v83, v82, v84, v85, v86, v87, v88), (v80 = v82) != 0))
      {
        objc_msgSend_setLabel_(v79, v73, v80, v74, v75, v76, v77, v78, v230, sourceFeatureChannelOffset, destinationImageCopy);
      }
    }

    v240 = v242;
    LOBYTE(destinationImageCopy) = 1;
    objc_msgSend_encodeInternalToCommputeEncoder_commandBuffer_sourceImage_inState_destinationImage_subBatchIndex_batchSize_clipRect_shouldHandleCompoundImageNatively_(self, v73, v79, buffer, image, state, destinationImage, indexCopy11, size, &v240, destinationImageCopy);
    objc_msgSend_endEncoding(v79, v89, v90, v91, v92, v93, v94, v95);
  }
}

- (id)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inStates:(id)states
{
  v142[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v13) & 1) == 0 && self->_clipRect.origin.z && MTLReportFailureTypeEnabled())
  {
    v129 = objc_opt_class();
    v134 = NSStringFromClass(v129);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x50D, @"[%@ encodeBatchToCommandBuffer...] Error: convenience methods that return a image batch must have clipRect.origin.z = 0.  We can't return empty batch nodes in a NSArray.", v130, v131, v132, v133);
  }

  v14 = objc_msgSend_count(images, a2, encoder, buffer, images, states, v6, v7, v134);
  v142[0] = objc_msgSend_objectAtIndexedSubscript_(images, v15, 0, v16, v17, v18, v19, v20);
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v142, 1, v22, v23, v24, v25);
  if (states)
  {
    v141 = objc_msgSend_objectAtIndexedSubscript_(states, v26, 0, v27, v28, v29, v30, v31);
    v38 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v33, &v141, 1, v34, v35, v36, v37);
    v44 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v39, v32, v38, v40, v41, v42, v43);
  }

  else
  {
    v44 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v26, v32, 0, v28, v29, v30, v31);
  }

  v45 = v44;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_dimensionOrder(self, v46, v47, v48, v49, v50, v51, v52);
    if (v140 != 3)
    {
      v139[0] = objc_msgSend_featureChannels(v45, v53, v54, v55, v56, v57, v58, v59);
      v139[1] = objc_msgSend_width(v45, v60, v61, v62, v63, v64, v65, v66);
      v139[2] = objc_msgSend_height(v45, v67, v68, v69, v70, v71, v72, v73);
      v140 = v14;
      objc_msgSend_dimensionOrder(self, v74, v75, v76, v77, v78, v79, v80);
      objc_msgSend_setFeatureChannels_(v45, v81, v139[v135], v82, v83, v84, v85, v86);
      objc_msgSend_dimensionOrder(self, v87, v88, v89, v90, v91, v92, v93);
      objc_msgSend_setWidth_(v45, v94, v139[v136], v95, v96, v97, v98, v99);
      objc_msgSend_dimensionOrder(self, v100, v101, v102, v103, v104, v105, v106);
      objc_msgSend_setHeight_(v45, v107, v139[v137], v108, v109, v110, v111, v112);
      objc_msgSend_dimensionOrder(self, v113, v114, v115, v116, v117, v118, v119);
      v14 = v139[v138];
    }
  }

  if (*(&self->super.super.isa + v13))
  {
    if (!v45)
    {
      return 0;
    }
  }

  else if (!v45)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v120 = objc_opt_class();
      NSStringFromClass(v120);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x528, @"[%@ encodeToCommandBuffer:sourceImage:] Unable to create MPSImageDescriptor for destination.  Encode failed.\n", v121, v122, v123, v124);
    }

    return 0;
  }

  v125 = sub_239D112C8(buffer, self->_destinationImageAllocator, v45, self, v14);
  if (v125)
  {
    objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_(self, v126, encoder, buffer, images, states, v125, v127);
  }

  return v125;
}

- (id)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images sourceStates:(id)states destinationStates:(id *)destinationStates destinationStateIsTemporary:(BOOL)temporary
{
  temporaryCopy = temporary;
  v147[1] = *MEMORY[0x277D85DE8];
  v14 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v14) & 1) == 0 && self->_clipRect.origin.z && MTLReportFailureTypeEnabled())
  {
    v132 = objc_opt_class();
    v137 = NSStringFromClass(v132);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x54F, @"[%@ encodeBatchToCommandBuffer...] Error: convenience methods that return a image batch must have clipRect.origin.z = 0.  We can't return empty batch nodes in a NSArray.", v133, v134, v135, v136);
  }

  v15 = objc_msgSend_count(images, a2, encoder, buffer, images, states, destinationStates, temporary, v137);
  v147[0] = objc_msgSend_objectAtIndexedSubscript_(images, v16, 0, v17, v18, v19, v20, v21);
  v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v147, 1, v23, v24, v25, v26);
  v33 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v28, v27, states, v29, v30, v31, v32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_dimensionOrder(self, v34, v35, v36, v37, v38, v39, v40);
    if (v146 != 3)
    {
      v145[0] = objc_msgSend_featureChannels(v33, v41, v42, v43, v44, v45, v46, v47);
      v145[1] = objc_msgSend_width(v33, v48, v49, v50, v51, v52, v53, v54);
      v145[2] = objc_msgSend_height(v33, v55, v56, v57, v58, v59, v60, v61);
      v146 = v15;
      objc_msgSend_dimensionOrder(self, v62, v63, v64, v65, v66, v67, v68);
      objc_msgSend_setFeatureChannels_(v33, v69, v145[v139], v70, v71, v72, v73, v74);
      objc_msgSend_dimensionOrder(self, v75, v76, v77, v78, v79, v80, v81);
      objc_msgSend_setWidth_(v33, v82, v145[v140], v83, v84, v85, v86, v87);
      objc_msgSend_dimensionOrder(self, v88, v89, v90, v91, v92, v93, v94);
      objc_msgSend_setHeight_(v33, v95, v145[v141], v96, v97, v98, v99, v100);
      objc_msgSend_dimensionOrder(self, v101, v102, v103, v104, v105, v106, v107);
      v15 = v145[v142];
    }
  }

  if (*(&self->super.super.isa + v14))
  {
    if (!v33)
    {
      return v33;
    }
  }

  else if (!v33)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v108 = objc_opt_class();
      NSStringFromClass(v108);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x56C, @"[%@ encodeToCommandBuffer:sourceImage:] Unable to create MPSImageDescriptor for destination.  Encode failed.\n", v109, v110, v111, v112);
    }

    return 0;
  }

  v33 = sub_239D112C8(buffer, self->_destinationImageAllocator, v33, self, v15);
  if (v33)
  {
    if (temporaryCopy)
    {
      if (states)
      {
        statesCopy = states;
        v118 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v113, &statesCopy, 1, v114, v115, v116, v117);
        v122 = objc_msgSend_temporaryResultStateBatchForCommandBuffer_sourceImage_sourceStates_destinationImage_(self, v119, buffer, images, v118, v33, v120, v121);
      }

      else
      {
        v122 = objc_msgSend_temporaryResultStateBatchForCommandBuffer_sourceImage_sourceStates_destinationImage_(self, v113, buffer, images, 0, v33, v116, v117);
      }
    }

    else if (states)
    {
      statesCopy2 = states;
      v125 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v113, &statesCopy2, 1, v114, v115, v116, v117);
      v122 = objc_msgSend_resultStateBatchForSourceImage_sourceStates_destinationImage_(self, v126, images, v125, v33, v127, v128, v129);
    }

    else
    {
      v122 = objc_msgSend_resultStateBatchForSourceImage_sourceStates_destinationImage_(self, v113, images, 0, v33, v115, v116, v117);
    }

    v130 = v122;
    objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_(self, v123, encoder, buffer, images, v122, v33, v124);
    if (destinationStates)
    {
      *destinationStates = v130;
    }

    if (states)
    {
      MPSDecrementReadCount();
    }
  }

  return v33;
}

- (void)encodeInternalBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inStates:(id)states destinationImages:(id)destinationImages clipRect:(id *)rect
{
  rectCopy2 = rect;
  imagesCopy = images;
  selfCopy3 = self;
  v11 = MEMORY[0x277CD72F8];
  if ((self->_checkFlags & 0x2000) != 0)
  {
    sourceFeatureChannelOffset = self->_sourceFeatureChannelOffset;
    bufferCopy5 = buffer;
  }

  else
  {
    v14 = objc_msgSend_objectAtIndexedSubscript_(images, a2, 0, buffer, images, states, destinationImages, rect);
    v22 = *(v14 + *v11);
    if (v22 >= selfCopy3->_sourceFeatureChannelOffset)
    {
      v23 = selfCopy3->_sourceFeatureChannelOffset;
    }

    else
    {
      v23 = *(v14 + *v11);
    }

    if (v22 - v23 >= selfCopy3->_sourceFeatureChannelMaxCount)
    {
      sourceFeatureChannelMaxCount = selfCopy3->_sourceFeatureChannelMaxCount;
    }

    else
    {
      sourceFeatureChannelMaxCount = (v22 - v23);
    }

    v25 = objc_msgSend_count(imagesCopy, v15, v16, v17, v18, v19, v20, v21);
    if (v25 && ((v26 = v25, v23) || sourceFeatureChannelMaxCount < *(objc_msgSend_objectAtIndexedSubscript_(imagesCopy, a2, 0, buffer, images, states, destinationImages, rect) + *v11)))
    {
      v27 = objc_msgSend_objectAtIndexedSubscript_(imagesCopy, a2, 0, buffer, images, states, destinationImages, rect);
      v31 = sub_239D29B30(buffer, encoder, v27, v23, sourceFeatureChannelMaxCount, v28, v29, v30);
      if (v31 == objc_msgSend_objectAtIndexedSubscript_(imagesCopy, v32, 0, v33, v34, v35, v36, v37))
      {
        sourceFeatureChannelOffset = 0;
        bufferCopy5 = buffer;
      }

      else
      {
        v44 = malloc_type_malloc(8 * v26, 0x80040B8603338uLL);
        *v44 = v31;
        if (v26 != 1)
        {
          for (i = 1; i != v26; ++i)
          {
            v46 = objc_msgSend_objectAtIndexedSubscript_(imagesCopy, v38, i, v39, v40, v41, v42, v43);
            v44[i] = sub_239D29B30(buffer, encoder, v46, v23, sourceFeatureChannelMaxCount, v47, v48, v49);
          }
        }

        imagesCopy = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v38, v44, v26, v40, v41, v42, v43);
        free(v44);
        sourceFeatureChannelOffset = 0;
        rectCopy2 = rect;
        bufferCopy5 = buffer;
      }

      selfCopy3 = self;
    }

    else
    {
      sourceFeatureChannelOffset = 0;
      selfCopy3 = self;
      bufferCopy5 = buffer;
    }
  }

  destinationFeatureChannelOffset = selfCopy3->_destinationFeatureChannelOffset;
  v198 = objc_msgSend_maxBatchSize(selfCopy3, a2, encoder, buffer, images, states, destinationImages, rect);
  v205 = malloc_type_calloc(v198, 0x78uLL, 0x10E004012FEE65DuLL);
  p_offset = &selfCopy3->_offset;
  v59 = *&selfCopy3->_offset.x;
  v60.i16[0] = selfCopy3->_kernelWidth;
  v60.i16[2] = selfCopy3->_kernelHeight;
  v206 = v60;
  v60.i16[0] = selfCopy3->_dilationRateX;
  v60.i16[2] = selfCopy3->_dilationRateY;
  v209 = v60;
  if (destinationImages)
  {
    v201 = *&selfCopy3->_offset.x;
    v61 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v53, 0, v54, v55, v56, v57, v58);
    v69 = objc_msgSend_featureChannels(v61, v62, v63, v64, v65, v66, v67, v68);
    v59 = v201;
  }

  else
  {
    v69 = 0;
  }

  v70 = vmovn_s64(v59);
  v71 = v69 - destinationFeatureChannelOffset;
  if (v69 < destinationFeatureChannelOffset)
  {
    v71 = 0;
  }

  memset(v220, 0, sizeof(v220));
  v219 = 0u;
  v218 = 0u;
  var2 = rectCopy2->var1.var2;
  v215 = 0;
  v216 = 0;
  v217 = v205;
  v72 = vmovn_s64(*&rectCopy2->var0.var0);
  LOWORD(v73) = v72.i16[0];
  WORD1(v73) = v72.i16[2];
  HIDWORD(v73) = ((destinationFeatureChannelOffset + 3) >> 2);
  v74 = vmovn_s64(*&rectCopy2->var1.var0);
  v72.i16[0] = v74.i16[0];
  v72.i16[1] = v74.i16[2];
  v72.i32[1] = ((v71 + 3) >> 2);
  *&v219 = v73;
  *(&v219 + 1) = v72;
  if (destinationImages)
  {
    v202 = v70;
    LOWORD(v220[0]) = *(objc_msgSend_objectAtIndexedSubscript_(destinationImages, v53, 0, v54, v55, v56, v57, v58) + *v11);
    v82 = objc_msgSend_count(destinationImages, v75, v76, v77, v78, v79, v80, v81);
    v70 = v202;
  }

  else
  {
    v82 = 0;
  }

  HIWORD(v220[0]) = v82;
  v220[1] = 1;
  LOWORD(v220[2]) = 0;
  HIWORD(v220[2]) = v198;
  v220[6] = 0;
  v221 = 0;
  v83 = vmls_s32(v70, v209, vshr_n_u32(vand_s8(v206, 0xFFFF0000FFFFLL), 1uLL));
  *&v220[3] = 0;
  v223 = v83.i16[2];
  v222 = v83.i16[0];
  v224 = 0;
  v226 = v206.i16[2];
  v225 = v206.i16[0];
  v228 = v70.i16[2];
  v227 = v70.i16[0];
  strideInPixelsX = self->_strideInPixelsX;
  strideInPixelsY = self->_strideInPixelsY;
  v229 = strideInPixelsX;
  v232 = v209.i16[2];
  v231 = v209.i16[0];
  v233 = self->_sourceFeatureChannelOffset;
  v207 = imagesCopy;
  v85 = *(objc_msgSend_objectAtIndexedSubscript_(imagesCopy, v53, 0, v54, v55, v56, v57, v58) + *v11);
  v86 = *&rectCopy2->var0.var2;
  v239 = *&rectCopy2->var1.var1;
  v87 = *&rectCopy2->var0.var0;
  v238 = v86;
  v234 = v85;
  z = selfCopy3->_offset.z;
  v235 = z;
  v236 = 0;
  v237 = v87;
  v240 = *&p_offset->x;
  v241 = z;
  v242 = destinationFeatureChannelOffset;
  v243 = sourceFeatureChannelOffset;
  v96 = 0;
  if ((objc_msgSend_retainedReferences(bufferCopy5, v89, v90, v91, v92, v93, v94, v95) & 1) == 0)
  {
    v96 = objc_opt_new();
    v213[0] = MEMORY[0x277D85DD0];
    v213[1] = 3221225472;
    v213[2] = sub_239D2BA40;
    v213[3] = &unk_278B28F28;
    v213[4] = v96;
    objc_msgSend_addCompletedHandler_(bufferCopy5, v97, v213, v98, v99, v100, v101, v102);
  }

  destinationImagesCopy2 = destinationImages;
  v104 = imagesCopy;
  v105 = v198;
  v106 = p_offset;
  if (rectCopy2->var1.var2)
  {
    rectCopy3 = rectCopy2;
    v197 = 0;
    v199 = 0;
    v108 = 0;
    v109 = MEMORY[0x277CD7318];
    v110 = MEMORY[0x277CD7480];
    do
    {
      v111 = v106;
      v112 = objc_autoreleasePoolPush();
      v193 = rectCopy3->var1.var2;
      v194 = v112;
      v195 = v193 - v108;
      if (v105 >= v193 - v108)
      {
        v105 = v193 - v108;
      }

      v212 = 0;
      v116 = sub_239D2BA48(v104, bufferCopy5, v111->z + v108, v105, &v212, v113, v114, v115);
      v123 = v116;
      v211 = v212;
      v200 = v105;
      if (destinationImagesCopy2)
      {
        v124 = sub_239D2BA48(destinationImagesCopy2, bufferCopy5, rectCopy3->var0.var2 + v108, v105, &v211, v120, v121, v122);
        v125 = MEMORY[0x277CD7488];
        if (v123)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v124 = 0;
        v125 = MEMORY[0x277CD7488];
        if (v116)
        {
LABEL_38:
          if ((self->_checkFlags & 0x1000) != 0 || v124)
          {
            goto LABEL_42;
          }
        }
      }

      if (MTLReportFailureTypeEnabled())
      {
        v126 = objc_opt_class();
        v189 = NSStringFromClass(v126);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x60C, @"[%@ batchEncode...] out of memory: unable to allocate storage to hold encode arguments on device.", v127, v128, v129, v130);
      }

LABEL_42:
      v215 = v200;
      v216 = v108;
      v221 = v123;
      v220[6] = v212;
      v236 = v200;
      *(&v218 + 1) = v124;
      LODWORD(v218) = v211;
      HIWORD(v219) = v200;
      LOWORD(v220[2]) = v199;
      if (v96)
      {
        objc_msgSend_addObject_(v96, v117, v123, v118, v119, v120, v121, v122);
        if (destinationImagesCopy2)
        {
          objc_msgSend_addObject_(v96, v117, v124, v118, v119, v120, v121, v122);
        }
      }

      v210 = v108;
      if (v200)
      {
        v131 = 0;
        if (v198 >= v193 + v197)
        {
          v132 = v193 + v197;
        }

        else
        {
          v132 = v198;
        }

        while (1)
        {
          v133 = v131 + v210;
          v135 = objc_msgSend_objectAtIndexedSubscript_(v207, v117, p_offset->z + v131 + v210, v118, v119, v120, v121, v122, v189);
          if (destinationImagesCopy2)
          {
            v136 = objc_msgSend_objectAtIndexedSubscript_(destinationImagesCopy2, v117, self->_clipRect.origin.z + v133, v118, v119, v120, v121, v122);
          }

          else
          {
            v136 = 0;
          }

          v137 = *v109;
          v138 = v135 + *MEMORY[0x277CD7320];
          explicit = atomic_load_explicit(v138, memory_order_acquire);
          if ((*(v138 + 56) & 2) != 0)
          {
            if (*(v138 + 52) < 2u)
            {
              v140 = 2;
            }

            else
            {
              v140 = 3;
            }
          }

          else
          {
            if (!explicit)
            {
              explicit = *(v138 + 40);
            }

            v140 = objc_msgSend_textureType(explicit, v117, v134, v118, v119, v120, v121, v122);
          }

          v141 = *(v135 + *MEMORY[0x277CD72F0]) - 1;
          if (v141 > 4)
          {
            v142 = 0;
          }

          else
          {
            v142 = dword_239D91650[v141];
          }

          v143 = v135 + v137;
          if (v140 == 3)
          {
            ++v142;
          }

          if (*(v135 + *MEMORY[0x277CD7310]) >= 2uLL)
          {
            v142 |= 2u;
          }

          if ((*(v135 + *v109) & 0x3000000) != 0)
          {
            v142 |= 4u;
          }

          v144 = *(v135 + *MEMORY[0x277CD72F8]);
          v145 = 2;
          if (v144 > 4)
          {
            v145 = 3;
          }

          v146 = *(v135 + *MEMORY[0x277CD7300]);
          v147 = &v205[120 * v131];
          *v147 = v135;
          *(v147 + 1) = v143;
          *(v147 + 4) = v142;
          *(v147 + 3) = v144;
          *(v147 + 4) = v145;
          *(v147 + 5) = 0;
          *(v147 + 6) = v146;
          *(v147 + 14) = 0;
          if (v136)
          {
            v148 = *v109;
            v149 = v136 + *MEMORY[0x277CD7320];
            v150 = atomic_load_explicit(v149, memory_order_acquire);
            if ((*(v149 + 56) & 2) != 0)
            {
              if (*(v149 + 52) < 2u)
              {
                v151 = 2;
              }

              else
              {
                v151 = 3;
              }
            }

            else
            {
              if (!v150)
              {
                v150 = *(v149 + 40);
              }

              v151 = objc_msgSend_textureType(v150, v117, v134, v118, v119, v120, v121, v122);
            }

            v153 = *(v136 + *MEMORY[0x277CD72F0]) - 1;
            if (v153 > 4)
            {
              v154 = 0;
            }

            else
            {
              v154 = dword_239D91650[v153];
            }

            if (v151 == 3)
            {
              ++v154;
            }

            if (*(v136 + *MEMORY[0x277CD7310]) >= 2uLL)
            {
              v154 |= 2u;
            }

            if ((*(v136 + *v109) & 0x3000000) != 0)
            {
              v154 |= 4u;
            }

            v155 = *(v136 + *MEMORY[0x277CD72F8]);
            v156 = 2;
            if (v155 > 4)
            {
              v156 = 3;
            }

            v157 = *(v136 + *MEMORY[0x277CD7300]);
            *(v147 + 7) = v136;
            *(v147 + 8) = v136 + v148;
            *(v147 + 18) = v154;
            *(v147 + 10) = v155;
            *(v147 + 11) = v156;
            *(v147 + 12) = 0;
            *(v147 + 13) = v157;
            statesCopy2 = states;
            if (states)
            {
LABEL_94:
              v158 = objc_msgSend_objectAtIndexedSubscript_(statesCopy2, v117, v133, v118, v119, v120, v121, v122);
              *(v147 + 14) = v158;
              if (v96)
              {
                v159 = v158;
                if (v158)
                {
                  if ((*(v158 + *MEMORY[0x277CD7470]) & 1) == 0 && *(v158 + *v110))
                  {
                    v160 = 0;
                    v161 = 0;
                    while (1)
                    {
                      v165 = *(v159 + *v125);
                      v166 = *(v165 + v160);
                      if (!*(v165 + v160))
                      {
                        goto LABEL_101;
                      }

                      if (v166 == 2)
                      {
                        break;
                      }

                      if (v166 != 1)
                      {
                        if (MTLReportFailureTypeEnabled())
                        {
                          v168 = objc_opt_class();
                          v189 = NSStringFromClass(v168);
                          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Binaries/MetalPerformanceShaders/install/Symbols/BuiltProducts/MPSCore.framework/PrivateHeaders/Internal/MPSStateInternal.h", 0x129, @"[%@ resource] Internal error: unhandled resource type\n", v169, v170, v171, v172);
                        }

                        goto LABEL_101;
                      }

                      v164 = atomic_load_explicit((v165 + v160 + 8), memory_order_acquire);
                      if (v164)
                      {
                        goto LABEL_100;
                      }

                      v167 = (v165 + 72 * v161 + 8);
                      MPSAutoBuffer::AllocateBuffer((v165 + v160 + 8), 0);
                      v164 = atomic_load_explicit(v167, memory_order_acquire);
                      if (v164)
                      {
                        goto LABEL_100;
                      }

LABEL_101:
                      ++v161;
                      v160 += 72;
                      if (v161 >= *(v159 + *v110))
                      {
                        goto LABEL_50;
                      }
                    }

                    v162 = v165 + v160;
                    v163 = (v162 + 8);
                    v164 = atomic_load_explicit((v162 + 8), memory_order_acquire);
                    if (!v164)
                    {
                      MPSAutoTexture::AllocateTexture((v162 + 8), 0);
                      v164 = atomic_load_explicit(v163, memory_order_acquire);
                      if (!v164)
                      {
                        goto LABEL_101;
                      }
                    }

LABEL_100:
                    objc_msgSend_addObject_(v96, v117, v164, v118, v119, v120, v121, v122, v189);
                    goto LABEL_101;
                  }
                }
              }

              goto LABEL_50;
            }
          }

          else
          {
            *(v147 + 13) = 0;
            *(v147 + 88) = 0u;
            *(v147 + 72) = 0u;
            *(v147 + 56) = 0u;
            statesCopy2 = states;
            if (states)
            {
              goto LABEL_94;
            }
          }

          *(v147 + 14) = 0;
LABEL_50:
          ++v131;
          destinationImagesCopy2 = destinationImages;
          if (v131 == v132)
          {
            rectCopy3 = rect;
            v173 = v198;
            selfCopy5 = self;
            if (v195 < v198)
            {
              goto LABEL_113;
            }

            goto LABEL_114;
          }
        }
      }

      v132 = 0;
      v173 = v198;
      selfCopy5 = self;
      if (v195 < v198)
      {
LABEL_113:
        bzero(&v205[120 * v132], 120 * (v173 - v200));
      }

LABEL_114:
      if ((*(&selfCopy5->super.super.isa + *MEMORY[0x277CD7378]) & 8) != 0)
      {
        v184 = *(&selfCopy5->super.super.isa + *MEMORY[0x277CD7360]);
        encoderCopy2 = encoder;
        if (!v184)
        {
          v186 = objc_opt_class();
          v187 = NSStringFromClass(v186);
          encoderCopy2 = encoder;
          v184 = v187;
        }

        v188 = encoderCopy2;
        objc_msgSend_pushDebugGroup_(encoderCopy2, v117, v184, v118, v119, v120, v121, v122, v189);
        encoderCopy3 = v188;
        v175 = v188;
      }

      else
      {
        v175 = 0;
        encoderCopy3 = encoder;
      }

      (selfCopy5->_batchEncode)(selfCopy5->_encodeData, encoderCopy3, buffer, &var2);
      if (v175)
      {
        objc_msgSend_popDebugGroup(v175, v177, v178, v179, v180, v181, v182, v183);
      }

      v104 = v207;
      objc_msgSend_subarrayWithRange_(v207, v177, p_offset->z + v210, v200, v180, v181, v182, v183, v189);
      MPSDecrementReadCount();
      objc_autoreleasePoolPop(v194);
      v106 = p_offset;
      v105 = v198;
      v108 = v210 + v198;
      ++v199;
      bufferCopy5 = buffer;
      v197 -= v198;
    }

    while (v210 + v198 < rectCopy3->var1.var2);
  }

  free(v205);
}

- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceImages:(id)images inStates:(id)states destinationImages:(id)destinationImages
{
  v12 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v12) & 1) == 0)
  {
    if (!buffer && MTLReportFailureTypeEnabled())
    {
      v437 = objc_opt_class();
      v481 = NSStringFromClass(v437);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x667, @"[%@ encode...] commandBuffer may not be nil]", v438, v439, v440, v441);
    }

    if (!images && MTLReportFailureTypeEnabled())
    {
      v442 = objc_opt_class();
      v481 = NSStringFromClass(v442);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x668, @"[%@ encode...] source may not be nil", v443, v444, v445, v446);
    }

    if (!destinationImages && (self->_checkFlags & 0x1000) == 0 && MTLReportFailureTypeEnabled())
    {
      v432 = objc_opt_class();
      v481 = NSStringFromClass(v432);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x669, @"[%@ encode...] destination may not be nil", v433, v434, v435, v436);
    }

    v13 = *MEMORY[0x277CD7348];
    if ((*(&self->super.super.isa + v12) & ~*(&self->super.super.isa + v13)) != 0 && MTLReportFailureTypeEnabled())
    {
      v447 = objc_opt_class();
      v481 = NSStringFromClass(v447);
      v485 = *(&self->super.super.isa + v12) & ~*(&self->super.super.isa + v13);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x66A, @"[%@ encode...] options flag(s) 0x%16.16lx is unknown or invalid for use with this filter", v448, v449, v450, v451);
    }

    if (self->_offset.z < 0 && MTLReportFailureTypeEnabled())
    {
      v452 = objc_opt_class();
      v481 = NSStringFromClass(v452);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x66B, @"[%@ encode...] the offset.z may not be negative", v453, v454, v455, v456);
    }

    if ((self->_checkFlags & 0x40000) == 0 && self->_edgeMode >= 2 && MTLReportFailureTypeEnabled())
    {
      v476 = objc_opt_class();
      v481 = NSStringFromClass(v476);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x66E, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:destinationImage]: the filter edge mode for source image must be MPSImageEdgeModeZero or MPSImageEdgeModeClamp for this filter.", v477, v478, v479, v480);
    }
  }

  v14 = objc_msgSend_objectAtIndexedSubscript_(images, a2, 0, buffer, images, states, destinationImages, v7, v481, v485);
  v506 = objc_msgSend_width(v14, v15, v16, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_objectAtIndexedSubscript_(images, v22, 0, v23, v24, v25, v26, v27);
  v507 = objc_msgSend_height(v28, v29, v30, v31, v32, v33, v34, v35);
  v508 = objc_msgSend_count(images, v36, v37, v38, v39, v40, v41, v42);
  bufferCopy = buffer;
  if (destinationImages)
  {
    v49 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v43, 0, v44, v45, v46, v47, v48);
    v503 = objc_msgSend_width(v49, v50, v51, v52, v53, v54, v55, v56);
    v63 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v57, 0, v58, v59, v60, v61, v62);
    v504 = objc_msgSend_height(v63, v64, v65, v66, v67, v68, v69, v70);
    v505 = objc_msgSend_count(destinationImages, v71, v72, v73, v74, v75, v76, v77);
    v78 = *&self->_clipRect.origin.x;
    z = self->_clipRect.origin.z;
    v80 = &v503;
  }

  else
  {
    v503 = 0;
    v504 = 0;
    v505 = 0;
    v78 = vandq_s8(*&self->_offset.x, vcgtzq_s64(*&self->_offset.x));
    z = self->_offset.z & ~(self->_offset.z >> 63);
    v80 = &v506;
  }

  v500.size = self->_clipRect.size;
  memset(&v502, 0, sizeof(v502));
  v501 = *v80;
  *&v500.origin.x = v78;
  v500.origin.z = z;
  MPSGetEffectiveClipRegion(&v502, &v501, &v500);
  v87 = objc_msgSend_objectAtIndexedSubscript_(images, v81, 0, v82, v83, v84, v85, v86);
  v102 = objc_msgSend_featureChannels(v87, v88, v89, v90, v91, v92, v93, v94);
  v493 = v12;
  if (destinationImages)
  {
    v103 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v95, 0, v97, v98, v99, v100, v101);
    v498 = objc_msgSend_featureChannels(v103, v104, v105, v106, v107, v108, v109, v110);
    if (*(&self->super.super.isa + v12))
    {
      goto LABEL_71;
    }

    objc_msgSend_count(destinationImages, v111, v112, v113, v114, v115, v116, v117);
    v118 = v502.size.depth + v502.origin.z;
    if (v118 > objc_msgSend_count(destinationImages, v119, v120, v121, v122, v123, v124, v125) && MTLReportFailureTypeEnabled())
    {
      v126 = objc_opt_class();
      v127 = NSStringFromClass(v126);
      v128 = v502.origin.z;
      depth = v502.size.depth;
      v490 = objc_msgSend_count(destinationImages, v129, v130, v131, v132, v133, v134, v135);
      v482 = v127;
      v486 = v128;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x692, @"[%@ encode...] Error invalid operation: the clipRect.origin.z(%lu) + clipRect.size.depth(%lu) > destinationImages.count(%lu)", v136, v137, v138, v139);
    }
  }

  else
  {
    if (*(&self->super.super.isa + v12))
    {
      goto LABEL_71;
    }

    v498 = 0;
  }

  if (self->_offset.z < 0 && MTLReportFailureTypeEnabled())
  {
    v457 = objc_opt_class();
    v482 = NSStringFromClass(v457);
    v486 = self->_offset.z;
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x694, @"[%@ encode...] Error invalid operation: offset.z(%d) < 0", v458, v459, v460, v461);
  }

  objc_msgSend_count(images, v95, v96, v97, v98, v99, v100, v101, v482, v486, depth, v490);
  v140 = v502.size.depth + self->_offset.z;
  if (v140 > objc_msgSend_count(images, v141, v142, v143, v144, v145, v146, v147) && MTLReportFailureTypeEnabled())
  {
    v462 = objc_opt_class();
    v463 = NSStringFromClass(v462);
    v464 = self->_offset.z;
    v489 = v502.size.depth;
    v491 = objc_msgSend_count(images, v465, v466, v467, v468, v469, v470, v471);
    v482 = v463;
    v487 = v464;
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x699, @"[%@ encode...] Error invalid operation: the offset.z.z(%lu) + clipRect.size.depth(%lu) > destinationImages.count(%lu)", v472, v473, v474, v475);
  }

  if (v502.size.depth)
  {
    v154 = 0;
    v155 = MEMORY[0x277CD7320];
    do
    {
      v156 = objc_msgSend_objectAtIndexedSubscript_(images, v148, self->_offset.z + v154, v149, v150, v151, v152, v153, v482, v487, v489, v491);
      v164 = v156;
      if (destinationImages)
      {
        v165 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v157, v502.origin.z + v154, v159, v160, v161, v162, v163);
        objc_msgSend_numberOfImages(v164, v166, v167, v168, v169, v170, v171, v172);
        if (objc_msgSend_numberOfImages(v164, v173, v174, v175, v176, v177, v178, v179) == 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v165 = 0;
        objc_msgSend_numberOfImages(v156, v157, v158, v159, v160, v161, v162, v163);
        if (objc_msgSend_numberOfImages(v164, v187, v188, v189, v190, v191, v192, v193) == 1)
        {
          goto LABEL_28;
        }
      }

      if (MTLReportFailureTypeEnabled())
      {
        v269 = objc_opt_class();
        v483 = NSStringFromClass(v269);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x6A2, @"[%@ encode...] each of the individual source images in a batch must have numberOfImages = 1\n", v270, v271, v272, v273);
      }

LABEL_28:
      if ((self->_checkFlags & 0x4000) == 0)
      {
        v194 = v506;
        if (v194 == objc_msgSend_width(v164, v180, v181, v182, v183, v184, v185, v186))
        {
          objc_msgSend_height(v164, v195, v196, v197, v198, v199, v200, v201);
        }

        if (v194 != objc_msgSend_width(v164, v195, v196, v197, v198, v199, v200, v201, v483) || (v209 = v507, v209 != objc_msgSend_height(v164, v202, v203, v204, v205, v206, v207, v208)))
        {
          if (MTLReportFailureTypeEnabled())
          {
            v292 = objc_opt_class();
            v483 = NSStringFromClass(v292);
            MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x6A7, @"[%@ encode...] error: all source image sizes must match\n", v293, v294, v295, v296);
          }
        }
      }

      objc_msgSend_featureChannels(v164, v180, v181, v182, v183, v184, v185, v186, v483);
      if (v102 != objc_msgSend_featureChannels(v164, v210, v211, v212, v213, v214, v215, v216) && MTLReportFailureTypeEnabled())
      {
        v274 = objc_opt_class();
        v482 = NSStringFromClass(v274);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x6AA, @"[%@ encode...] error: all source number of feature channels must match\n", v275, v276, v277, v278);
      }

      if (v165)
      {
        objc_msgSend_numberOfImages(v165, v148, v217, v149, v150, v151, v152, v153);
        if (objc_msgSend_numberOfImages(v165, v218, v219, v220, v221, v222, v223, v224) != 1 && MTLReportFailureTypeEnabled())
        {
          v297 = objc_opt_class();
          v482 = NSStringFromClass(v297);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x6B0, @"[%@ encode...] each of the individual destination images in a batch must have numberOfImages = 1\n", v298, v299, v300, v301);
        }

        v232 = v503;
        if (v232 == objc_msgSend_width(v165, v225, v226, v227, v228, v229, v230, v231, v482))
        {
          objc_msgSend_height(v165, v233, v234, v235, v236, v237, v238, v239);
        }

        if (v232 != objc_msgSend_width(v165, v233, v234, v235, v236, v237, v238, v239) || (v247 = v504, v247 != objc_msgSend_height(v165, v240, v241, v242, v243, v244, v245, v246)))
        {
          if (MTLReportFailureTypeEnabled())
          {
            v264 = objc_opt_class();
            v484 = NSStringFromClass(v264);
            MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x6B5, @"[%@ encode...] error: all destination image sizes must match\n", v265, v266, v267, v268);
          }
        }

        objc_msgSend_featureChannels(v165, v248, v249, v250, v251, v252, v253, v254, v484);
        if (v498 != objc_msgSend_featureChannels(v165, v255, v256, v257, v258, v259, v260, v261) && MTLReportFailureTypeEnabled())
        {
          v302 = objc_opt_class();
          v482 = NSStringFromClass(v302);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x6B9, @"[%@ encode...] error: all destination number of feature channels must match\n", v303, v304, v305, v306);
        }

        if ((v165[*v155 + 56] & 1) != 0 && !*&v165[*MEMORY[0x277CD7490]] && MTLReportFailureTypeEnabled())
        {
          v320 = objc_opt_class();
          v321 = NSStringFromClass(v320);
          v487 = NSStringFromSelector(a2);
          v489 = objc_msgSend_debugDescription(v165, v322, v323, v324, v325, v326, v327, v328);
          v482 = v321;
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x6BE, @"[%@ %@] Error: the destination image texture is temporary and has a readCount of 0.\n\tIts texel storage is probably in use for another texture now.\n%@\n", v329, v330, v331, v332);
        }
      }

      if ((v164[*v155 + 56] & 1) != 0 && !*&v164[*MEMORY[0x277CD7490]] && MTLReportFailureTypeEnabled())
      {
        v307 = objc_opt_class();
        v308 = NSStringFromClass(v307);
        v487 = NSStringFromSelector(a2);
        v489 = objc_msgSend_debugDescription(v164, v309, v310, v311, v312, v313, v314, v315);
        v482 = v308;
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x6C4, @"[%@ %@] Error: the source image texture is temporary and has a readCount of 0.\n\tIts texel storage is probably in use for another texture now.\n%@\n", v316, v317, v318, v319);
        for (i = &v164[*v155]; (i[56] & 2) != 0; i = *(i + 5))
        {
LABEL_46:
          ;
        }
      }

      else
      {
        i = &v164[*v155];
        if ((i[56] & 2) != 0)
        {
          goto LABEL_46;
        }
      }

      atomic_load_explicit(i, memory_order_acquire);
        ;
      }

      if (!atomic_load_explicit(j, memory_order_acquire) && MTLReportFailureTypeEnabled())
      {
        v279 = objc_opt_class();
        v280 = NSStringFromClass(v279);
        v487 = NSStringFromSelector(a2);
        v489 = objc_msgSend_debugDescription(v164, v281, v282, v283, v284, v285, v286, v287);
        v482 = v280;
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x6C9, @"[%@ %@] Error: the source image texture is uninitialized.\n\tThis typically means that nothing has written to it yet, and its contents are undefined.\n%@\n", v288, v289, v290, v291);
      }

      ++v154;
    }

    while (v154 < v502.size.depth);
  }

LABEL_71:
  if (images)
  {
    if (self->_batchEncode && ((checkFlags = self->_checkFlags, ((*(**(&self->super.super.isa + *MEMORY[0x277CD7350]) + 56))(*(&self->super.super.isa + *MEMORY[0x277CD7350])) & 1) != 0) || (checkFlags & 0x10000) != 0) && (!self->_plugin || self->_pluginSupportsBatchEncode))
    {
      if (encoder)
      {
        v500 = v502;
        objc_msgSend_encodeInternalBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_clipRect_(self, v334, encoder, buffer, images, states, destinationImages, &v500);
      }

      else
      {
        v403 = objc_alloc(MEMORY[0x277CD7210]);
        v415 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v403, v404, buffer, 0, v405, v406, v407, v408);
        v501.width = v415;
        v501.height = self;
        if ((*(&self->super.super.isa + v493) & 0x18) != 0)
        {
          v416 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
          if (v416 || (v417 = objc_opt_class(), v418 = NSStringFromClass(v417), objc_msgSend_setLabel_(self, v419, v418, v420, v421, v422, v423, v424), (v416 = v418) != 0))
          {
            objc_msgSend_setLabel_(v415, v409, v416, v410, v411, v412, v413, v414, v482);
          }
        }

        v500 = v502;
        objc_msgSend_encodeInternalBatchToCommandEncoder_commandBuffer_sourceImages_inStates_destinationImages_clipRect_(self, v409, v415, bufferCopy, images, states, destinationImages, &v500, v482);
        objc_msgSend_endEncoding(v415, v425, v426, v427, v428, v429, v430, v431);
      }
    }

    else
    {
      v499 = self->_clipRect.origin.z;
      v495 = self->_clipRect.size.depth;
      v335 = self->_offset.z;
      self->_clipRect.origin.z = 0;
      self->_clipRect.size.depth = 1;
      self->_offset.z = 0;
      statesCopy = states;
      if (v502.size.depth)
      {
        if (destinationImages)
        {
          if (states)
          {
            v337 = 0;
            do
            {
              v338 = objc_autoreleasePoolPush();
              v345 = objc_msgSend_objectAtIndexedSubscript_(images, v339, v335 + v337, v340, v341, v342, v343, v344);
              v352 = objc_msgSend_objectAtIndexedSubscript_(states, v346, v337, v347, v348, v349, v350, v351);
              v359 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v353, v337 + v502.origin.z, v354, v355, v356, v357, v358);
              objc_msgSend_encodeToCommandBuffer_sourceImage_inState_destinationImage_subBatchIndex_batchSize_(self, v360, bufferCopy, v345, v352, v359, v337, v502.size.depth);
              objc_autoreleasePoolPop(v338);
              ++v337;
            }

            while (v337 < v502.size.depth);
          }

          else
          {
            do
            {
              v361 = objc_autoreleasePoolPush();
              v368 = objc_msgSend_objectAtIndexedSubscript_(images, v362, &statesCopy[v335], v363, v364, v365, v366, v367);
              v375 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v369, &statesCopy[v502.origin.z], v370, v371, v372, v373, v374);
              objc_msgSend_encodeToCommandBuffer_sourceImage_inState_destinationImage_subBatchIndex_batchSize_(self, v376, bufferCopy, v368, 0, v375, statesCopy, v502.size.depth);
              objc_autoreleasePoolPop(v361);
              ++statesCopy;
            }

            while (statesCopy < v502.size.depth);
          }
        }

        else
        {
          v377 = 0;
          if (states)
          {
            do
            {
              v378 = objc_autoreleasePoolPush();
              v385 = objc_msgSend_objectAtIndexedSubscript_(images, v379, v335 + v377, v380, v381, v382, v383, v384);
              v392 = objc_msgSend_objectAtIndexedSubscript_(states, v386, v377, v387, v388, v389, v390, v391);
              objc_msgSend_encodeToCommandBuffer_sourceImage_inState_destinationImage_subBatchIndex_batchSize_(self, v393, bufferCopy, v385, v392, 0, v377, v502.size.depth);
              objc_autoreleasePoolPop(v378);
              ++v377;
            }

            while (v377 < v502.size.depth);
          }

          else
          {
            do
            {
              v394 = objc_autoreleasePoolPush();
              v401 = objc_msgSend_objectAtIndexedSubscript_(images, v395, v335 + v377, v396, v397, v398, v399, v400);
              objc_msgSend_encodeToCommandBuffer_sourceImage_inState_destinationImage_subBatchIndex_batchSize_(self, v402, buffer, v401, 0, 0, v377, v502.size.depth);
              objc_autoreleasePoolPop(v394);
              ++v377;
            }

            while (v377 < v502.size.depth);
          }
        }
      }

      self->_offset.z = v335;
      self->_clipRect.origin.z = v499;
      self->_clipRect.size.depth = v495;
    }
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNKernel;
  [(MPSKernel *)&v3 dealloc];
}

- (MPSImageDescriptor)destinationImageDescriptorForSourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && !self->_padding && MTLReportFailureTypeEnabled())
  {
    v41 = objc_opt_class();
    v51 = NSStringFromClass(v41);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x724, @"[%@ destinationImageDescriptorForSourceImages:sourceStates:updateOffset:] no padding method set. Can not compute result.", v42, v43, v44, v45);
  }

  v11 = objc_msgSend_paddingMethod(self->_padding, a2, sourceImages, sourceStates, v4, v5, v6, v7, v51);
  v22 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_paddingMethod_sourceOffset_(self, v12, sourceImages, sourceStates, v11, &self->_offset, v13, v14);
  if (sourceStates)
  {
    v23 = objc_msgSend_count(sourceStates, v15, v16, v17, v18, v19, v20, v21);
    if (v23)
    {
      v30 = v23;
      for (i = 0; i != v30; ++i)
      {
        v32 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v24, i, v25, v26, v27, v28, v29);
        v22 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_forKernel_suggestedDescriptor_(v32, v33, sourceImages, sourceStates, self, v22, v34, v35);
      }
    }
  }

  if (!v22 || (v11 & 0x4000) == 0)
  {
    return v22;
  }

  objc_opt_respondsToSelector();
  if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v46 = objc_opt_class();
    NSStringFromClass(v46);
    MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNKernel.mm", 0x73B, @"[%@ destinationImageDescriptorForSourceImages:sourceStates:updateOffset:] the object padding method %p does not respond to the destinationImageDescriptorForSourceImages:sourceStates:forKernel:suggestedDescriptor: selector", v47, v48, v49, v50);
  }

  padding = self->_padding;

  return objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_forKernel_suggestedDescriptor_(padding, v37, sourceImages, sourceStates, self, v22, v38, v39);
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset kernelOffset:(id *)kernelOffset
{
  methodCopy = method;
  v12 = self->_dilationRateX * (self->_kernelWidth - 1);
  v13 = self->_dilationRateY * (self->_kernelHeight - 1);
  strideInPixelsX = self->_strideInPixelsX;
  strideInPixelsY = self->_strideInPixelsY;
  v16 = objc_msgSend_objectAtIndexedSubscript_(images, a2, 0, states, method, offset, kernelOffset, v7);
  sourceFeatureChannelOffset = self->_sourceFeatureChannelOffset;
  sourceFeatureChannelMaxCount = self->_sourceFeatureChannelMaxCount;
  v79 = *(v16 + *MEMORY[0x277CD72F8]);
  v23 = *(objc_msgSend_objectAtIndexedSubscript_(images, v17, 0, v18, v19, v20, v21, v22) + *MEMORY[0x277CD7330]);
  v30 = *(objc_msgSend_objectAtIndexedSubscript_(images, v24, 0, v25, v26, v27, v28, v29) + *MEMORY[0x277CD7308]);
  v37 = objc_msgSend_objectAtIndexedSubscript_(images, v31, 0, v32, v33, v34, v35, v36);
  v44 = methodCopy;
  v78 = *(v37 + *MEMORY[0x277CD7310]);
  isBackwards = self->_isBackwards;
  v46 = (((methodCopy >> 4) & 3) - 1);
  v47 = v12 * v46;
  if (isBackwards)
  {
    v48 = (v47 + (v23 - 1) * strideInPixelsX + 1) & ~((v47 + (v23 - 1) * strideInPixelsX + 1) >> 63);
    v49 = (v30 - 1) * strideInPixelsY + v13 * v46 + 1;
    v50 = v49 & ~(v49 >> 63);
    if (!offset)
    {
      goto LABEL_53;
    }

    goto LABEL_10;
  }

  if (strideInPixelsX)
  {
    v48 = (strideInPixelsX + ((v23 + v47) & ~((v23 + v47) >> 63)) - 1) / strideInPixelsX;
    if (strideInPixelsY)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v48 = 0;
    if (strideInPixelsY)
    {
LABEL_6:
      v50 = (strideInPixelsY + ((v30 + v13 * v46) & ~((v30 + v13 * v46) >> 63)) - 1) / strideInPixelsY;
      if (!offset)
      {
        goto LABEL_53;
      }

      goto LABEL_10;
    }
  }

  v50 = 0;
  if (!offset)
  {
    goto LABEL_53;
  }

LABEL_10:
  v51 = v44 & 3;
  v52 = (v12 + 1) >> 1;
  if (isBackwards)
  {
    v53 = 1;
  }

  else
  {
    v53 = strideInPixelsX;
  }

  if (isBackwards)
  {
    v54 = (v23 - 1) * strideInPixelsX + 1;
  }

  else
  {
    v54 = v23;
  }

  v55 = v12 + 1 + (v48 - 1) * v53;
  if ((v44 & 3u) > 1)
  {
    if (v51 == 2)
    {
      v52 = v54 + v52 - v55;
    }

    else
    {
      v52 = 0;
    }
  }

  else if ((v44 & 3) == 0)
  {
    v52 -= (((v44 & 4) == 0) - v54 + v55) >> 1;
  }

  v56 = v13 + 1;
  if (strideInPixelsX <= 1)
  {
    v57 = 1;
  }

  else
  {
    v57 = strideInPixelsX;
  }

  v58 = (v52 % v57) >> 63;
  v59 = v58 + v52 / v57;
  v60 = (v58 & v57) + v52 % v57;
  if (isBackwards)
  {
    v52 = v59;
  }

  else
  {
    v60 = 0;
  }

  if (kernelOffset)
  {
    kernelOffset->var0 = v60;
  }

  offset->var0 = v52;
  v61 = v56 >> 1;
  if (isBackwards)
  {
    v62 = 1;
  }

  else
  {
    v62 = strideInPixelsY;
  }

  if (isBackwards)
  {
    v63 = (v30 - 1) * strideInPixelsY + 1;
  }

  else
  {
    v63 = v30;
  }

  v64 = v56 + (v50 - 1) * v62;
  if ((v44 & 3u) > 1)
  {
    if (v51 == 2)
    {
      v61 = v63 + v61 - v64;
    }

    else
    {
      v61 = 0;
    }
  }

  else if ((v44 & 3) == 0)
  {
    v61 -= (((v44 & 8) == 0) - v63 + v64) >> 1;
  }

  if (strideInPixelsY <= 1)
  {
    v65 = 1;
  }

  else
  {
    v65 = strideInPixelsY;
  }

  v66 = (v61 % v65) >> 63;
  v67 = v66 + v61 / v65;
  v68 = (v66 & v65) + v61 % v65;
  v69 = !isBackwards;
  if (isBackwards)
  {
    v70 = v67;
  }

  else
  {
    v70 = v61;
  }

  if (v69)
  {
    v68 = 0;
  }

  if (kernelOffset)
  {
    kernelOffset->var1 = v68;
  }

  offset->var1 = v70;
  offset->var2 = 0;
LABEL_53:
  v71 = v79 - sourceFeatureChannelOffset;
  if (v79 < sourceFeatureChannelOffset)
  {
    v71 = 0;
  }

  if (v71 >= sourceFeatureChannelMaxCount)
  {
    v72 = sourceFeatureChannelMaxCount;
  }

  else
  {
    v72 = v71;
  }

  v74 = (*(objc_msgSend_objectAtIndexedSubscript_(images, v38, 0, v39, v40, v41, v42, v43) + *MEMORY[0x277CD7320] + 32) >> 59) & 7;
  v75 = MEMORY[0x277CD7220];

  return objc_msgSend_imageDescriptorWithChannelFormat_width_height_featureChannels_numberOfImages_usage_(v75, v73, v74, v48, v50, v72, v78, 19);
}

- (int16x4_t)sourcePositionOfTopLeftCornerOfFilterWindow
{
  v1.i64[1] = 1;
  v2.i64[1] = 1;
  v2.i32[0] = *(self + 200);
  v2.i32[1] = *(self + 208);
  v1.i32[0] = *(self + 232);
  v1.i32[1] = *(self + 240);
  v3.i64[0] = -1;
  v3.i64[1] = -1;
  v4 = vaddq_s32(vmaxq_s32(v2, xmmword_239D91640), v3);
  v3.i64[0] = 0x100000001;
  v3.i64[1] = 0x100000001;
  v5 = vmlaq_s32(v3, v4, vmaxq_s32(v1, xmmword_239D91640));
  v6 = *(self + 88);
  *v6.i8 = vmovn_s64(v6);
  v6.i32[2] = 0;
  return vmovn_s32(vsubq_s32(v6, vshrq_n_u32(v5, 1uLL)));
}

- (BOOL)pluginSupportsBatchEncode
{
  v9 = objc_msgSend_plugin(self, a2, v2, v3, v4, v5, v6, v7);
  if (v9)
  {
    objc_msgSend_plugin(self, v10, v11, v12, v13, v14, v15, v16);
    LOBYTE(v9) = objc_opt_respondsToSelector();
  }

  return v9 & 1;
}

- (BOOL)setPlugin:(id)plugin
{
  if (!plugin || (v5 = *(&self->super.super.isa + *MEMORY[0x277CD7350]), v6 = objc_opt_class(), (v7 = (*(*v5 + 120))(v5, v6)) != 0))
  {
    pluginCopy = plugin;

    self->_plugin = plugin;
    self->_pluginSupportsBatchEncode = objc_msgSend_pluginSupportsBatchEncode(self, v9, v10, v11, v12, v13, v14, v15);
    LOBYTE(v7) = 1;
  }

  return v7;
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