@interface MXIBackLayer
- (MXIBackLayer)initWithDevice:(id)device tileSize:(unsigned int)size tileMips:(unsigned int)mips downsampleLODs:(unsigned int)ds pixelFormat:(unint64_t)format failOnBinaryArchiveMiss:(BOOL)miss error:(id *)error;
- (void)createBackLayerWthCommandBuffer:(id)buffer;
- (void)processWthCommandBuffer:(id)buffer colorTexture:(id)texture depthTexture:(id)depthTexture;
@end

@implementation MXIBackLayer

- (MXIBackLayer)initWithDevice:(id)device tileSize:(unsigned int)size tileMips:(unsigned int)mips downsampleLODs:(unsigned int)ds pixelFormat:(unint64_t)format failOnBinaryArchiveMiss:(BOOL)miss error:(id *)error
{
  missCopy = miss;
  v178 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v174.receiver = self;
  v174.super_class = MXIBackLayer;
  v19 = [(MXIBackLayer *)&v174 init];
  if (v19)
  {
    formatCopy = format;
    dsCopy = ds;
    sizeCopy = size;
    mipsCopy = mips;
    v20 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], v16, @"com.apple.mxi", v17, v18);
    v26 = objc_msgSend_newDefaultLibraryWithBundle_error_(deviceCopy, v21, v20, error, v22);
    if (v26)
    {
      v27 = v20;
    }

    else
    {
      if (error)
      {
        *error = 0;
      }

      v27 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], v23, @"com.apple.mxi.TiledTests", v24, v25);

      v26 = objc_msgSend_newDefaultLibraryWithBundle_error_(deviceCopy, v29, v27, error, v30);
    }

    v173 = objc_opt_new();
    v171 = v27;
    v33 = objc_msgSend_URLForResource_withExtension_(v27, v31, @"mxi_archive", @"metallib", v32);
    objc_msgSend_setUrl_(v173, v34, v33, v35, v36);

    v39 = objc_msgSend_newBinaryArchiveWithDescriptor_error_(deviceCopy, v37, v173, error, v38);
    v172 = v39;
    if (v39)
    {
      v175 = v39;
      v42 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v40, &v175, 1, v41);
    }

    else
    {
      v43 = _mxi_log(0);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v48 = objc_msgSend_localizedDescription(*error, v44, v45, v46, v47);
        *buf = 138412290;
        v177 = v48;
        _os_log_impl(&dword_22F9C3000, v43, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIBackLayer.mm:43] [TiledProcessor] WARNING: nil MTLBinaryArchive for mxi_archive, error %@", buf, 0xCu);
      }

      v42 = 0;
    }

    if (missCopy)
    {
      v49 = 4;
    }

    else
    {
      v49 = 0;
    }

    v50 = objc_opt_new();
    v54 = objc_msgSend_newFunctionWithName_(v26, v51, @"concat_rgbd", v52, v53);
    objc_msgSend_setComputeFunction_(v50, v55, v54, v56, v57);

    objc_msgSend_setBinaryArchives_(v50, v58, v42, v59, v60);
    v62 = objc_msgSend_newComputePipelineStateWithDescriptor_options_reflection_error_(deviceCopy, v61, v50, v49, 0, error);
    concatRGBD = v19->_concatRGBD;
    v19->_concatRGBD = v62;

    if (!v19->_concatRGBD)
    {
      v95 = _mxi_log(v64);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        v139 = objc_msgSend_computeFunction(v50, v135, v136, v137, v138);
        v144 = objc_msgSend_name(v139, v140, v141, v142, v143);
        *buf = 138412290;
        v177 = v144;
        _os_log_impl(&dword_22F9C3000, v95, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIBackLayer.mm:60] Failed on creating compute pipeline state for function '%@'", buf, 0xCu);
      }

      v28 = 0;
      goto LABEL_38;
    }

    v65 = objc_opt_new();

    v69 = objc_msgSend_newFunctionWithName_(v26, v66, @"downscale_alpha_weighted", v67, v68);
    objc_msgSend_setComputeFunction_(v65, v70, v69, v71, v72);

    objc_msgSend_setBinaryArchives_(v65, v73, v42, v74, v75);
    v77 = objc_msgSend_newComputePipelineStateWithDescriptor_options_reflection_error_(deviceCopy, v76, v65, v49, 0, error);
    downscaleAlphtaWeighted = v19->_downscaleAlphtaWeighted;
    v19->_downscaleAlphtaWeighted = v77;

    if (!v19->_downscaleAlphtaWeighted)
    {
      v95 = _mxi_log(v79);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        v149 = objc_msgSend_computeFunction(v65, v145, v146, v147, v148);
        v154 = objc_msgSend_name(v149, v150, v151, v152, v153);
        *buf = 138412290;
        v177 = v154;
        _os_log_impl(&dword_22F9C3000, v95, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIBackLayer.mm:72] Failed on creating compute pipeline state for function '%@'", buf, 0xCu);
      }

      v28 = 0;
      v50 = v65;
      goto LABEL_38;
    }

    v80 = objc_opt_new();

    v84 = objc_msgSend_newFunctionWithName_(v26, v81, @"back_layer_copy", v82, v83);
    objc_msgSend_setComputeFunction_(v80, v85, v84, v86, v87);

    objc_msgSend_setBinaryArchives_(v80, v88, v42, v89, v90);
    v92 = objc_msgSend_newComputePipelineStateWithDescriptor_options_reflection_error_(deviceCopy, v91, v80, 0, 0, error);
    backLayerBlend = v19->_backLayerBlend;
    v19->_backLayerBlend = v92;

    if (v19->_backLayerBlend)
    {
      v95 = objc_opt_new();
      objc_msgSend_setTextureType_(v95, v96, 2, v97, v98);
      objc_msgSend_setWidth_(v95, v99, sizeCopy << (dsCopy - 1), v100, v101);
      objc_msgSend_setHeight_(v95, v102, sizeCopy << (dsCopy - 1), v103, v104);
      objc_msgSend_setPixelFormat_(v95, v105, formatCopy, v106, v107);
      objc_msgSend_setMipmapLevelCount_(v95, v108, dsCopy + 1, v109, v110);
      objc_msgSend_setUsage_(v95, v111, 3, v112, v113);
      v117 = objc_msgSend_newTextureWithDescriptor_(deviceCopy, v114, v95, v115, v116);
      backLayerTexture = v19->_backLayerTexture;
      v19->_backLayerTexture = v117;

      if (v19->_backLayerTexture)
      {
        objc_msgSend_setWidth_(v95, v120, sizeCopy, v121, v122);
        objc_msgSend_setHeight_(v95, v123, sizeCopy, v124, v125);
        objc_msgSend_setMipmapLevelCount_(v95, v126, mipsCopy, v127, v128);
        v132 = objc_msgSend_newTextureWithDescriptor_(deviceCopy, v129, v95, v130, v131);
        tileTexture = v19->_tileTexture;
        v19->_tileTexture = v132;

        if (v19->_tileTexture)
        {
          v19->_lods = dsCopy;
          v28 = v19;
LABEL_37:
          v50 = v80;
LABEL_38:

          goto LABEL_39;
        }

        v165 = _mxi_log(v134);
        if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v165, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIBackLayer.mm:110] Failed on creating back layer tile texture", buf, 2u);
        }
      }

      else
      {
        v165 = _mxi_log(v119);
        if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v165, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIBackLayer.mm:100] Failed on creating back layer texture", buf, 2u);
        }
      }
    }

    else
    {
      v95 = _mxi_log(v94);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        v159 = objc_msgSend_computeFunction(v80, v155, v156, v157, v158);
        v164 = objc_msgSend_name(v159, v160, v161, v162, v163);
        *buf = 138412290;
        v177 = v164;
        _os_log_impl(&dword_22F9C3000, v95, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIBackLayer.mm:84] Failed on creating compute pipeline state for function '%@'", buf, 0xCu);
      }
    }

    v28 = 0;
    goto LABEL_37;
  }

  v28 = 0;
LABEL_39:

  return v28;
}

- (void)processWthCommandBuffer:(id)buffer colorTexture:(id)texture depthTexture:(id)depthTexture
{
  textureCopy = texture;
  depthTextureCopy = depthTexture;
  v14 = objc_msgSend_computeCommandEncoder(buffer, v10, v11, v12, v13);
  objc_msgSend_setLabel_(v14, v15, @"MXI: ConcatRGBD", v16, v17);
  objc_msgSend_setComputePipelineState_(v14, v18, self->_concatRGBD, v19, v20);
  objc_msgSend_setTexture_atIndex_(v14, v21, textureCopy, 0, v22);
  objc_msgSend_setTexture_atIndex_(v14, v23, depthTextureCopy, 1, v24);
  objc_msgSend_setTexture_atIndex_(v14, v25, self->_backLayerTexture, 2, v26);
  v43[0] = objc_msgSend_width(self->_backLayerTexture, v27, v28, v29, v30);
  v43[1] = objc_msgSend_height(self->_backLayerTexture, v31, v32, v33, v34);
  v43[2] = 1;
  v41 = vdupq_n_s64(0x20uLL);
  v42 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v14, v35, v43, &v41, v36);
  objc_msgSend_endEncoding(v14, v37, v38, v39, v40);
}

- (void)createBackLayerWthCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  v9 = objc_msgSend_computeCommandEncoder(bufferCopy, v5, v6, v7, v8);
  objc_msgSend_setLabel_(v9, v10, @"MXI: Backlayer filtering", v11, v12);
  backLayerTexture = self->_backLayerTexture;
  v18 = objc_msgSend_pixelFormat(backLayerTexture, v14, v15, v16, v17);
  v23 = objc_msgSend_textureType(self->_backLayerTexture, v19, v20, v21, v22);
  v25 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(backLayerTexture, v24, v18, v23, 0, 1, 0, 1);
  v30 = v25;
  v101 = 1;
  if (self->_lods)
  {
    v95 = vdupq_n_s64(8uLL);
    do
    {
      v31 = self->_backLayerTexture;
      v32 = objc_msgSend_pixelFormat(v31, v26, v27, v28, v29, *&v95);
      v37 = objc_msgSend_textureType(self->_backLayerTexture, v33, v34, v35, v36);
      v39 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v31, v38, v32, v37, v101, 1, 0, 1);
      objc_msgSend_setComputePipelineState_(v9, v40, self->_downscaleAlphtaWeighted, v41, v42);
      objc_msgSend_setTexture_atIndex_(v9, v43, v30, 0, v44);
      objc_msgSend_setTexture_atIndex_(v9, v45, v39, 1, v46);
      objc_msgSend_setBytes_length_atIndex_(v9, v47, &v101, 4, 0);
      v98 = objc_msgSend_width(v30, v48, v49, v50, v51);
      v99 = objc_msgSend_height(v30, v52, v53, v54, v55);
      v100 = 1;
      v96 = v95;
      v97 = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v9, v56, &v98, &v96, v57);

      ++v101;
      v30 = v39;
    }

    while (self->_lods >= v101);
  }

  else
  {
    v39 = v25;
  }

  v101 = vcvts_n_f32_u32(1 << (objc_msgSend_mipmapLevelCount(self->_tileTexture, v26, v27, v28, v29) - 1), 1uLL);
  objc_msgSend_setComputePipelineState_(v9, v58, self->_backLayerBlend, v59, v60);
  objc_msgSend_setTexture_atIndex_(v9, v61, v39, 0, v62);
  objc_msgSend_setTexture_atIndex_(v9, v63, self->_tileTexture, 1, v64);
  objc_msgSend_setBytes_length_atIndex_(v9, v65, &v101, 4, 0);
  v98 = objc_msgSend_width(self->_tileTexture, v66, v67, v68, v69);
  v99 = objc_msgSend_height(self->_tileTexture, v70, v71, v72, v73);
  v100 = 1;
  v96 = vdupq_n_s64(8uLL);
  v97 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v9, v74, &v98, &v96, v75);
  objc_msgSend_endEncoding(v9, v76, v77, v78, v79);
  v84 = objc_msgSend_blitCommandEncoder(bufferCopy, v80, v81, v82, v83);
  objc_msgSend_setLabel_(v84, v85, @"MXI: Backlayer mipmapping", v86, v87);
  objc_msgSend_generateMipmapsForTexture_(v84, v88, self->_tileTexture, v89, v90);
  objc_msgSend_endEncoding(v84, v91, v92, v93, v94);
}

@end