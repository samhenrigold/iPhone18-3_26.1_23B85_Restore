@interface SDOFResources
+ (id)sharedInstance;
- (BOOL)activateResources;
- (id)initInstance;
- (int)allocateResourcesUsingMetalContext:(id)context inputImageWidth:(unint64_t)width inputImageHeight:(unint64_t)height shiftMapWidth:(unint64_t)mapWidth shiftMapHeight:(unint64_t)mapHeight enableForegroundBlur:(BOOL)blur;
- (void)clearInstance;
- (void)deactivateResources;
- (void)deallocateResources;
@end

@implementation SDOFResources

- (void)clearInstance
{
  metalContext = self->_metalContext;
  self->_metalContext = 0;

  *&self->_referenceCount = 0;
  *&self->_inputImageWidth = 0u;
  *&self->_shiftMapWidth = 0u;
  disparityRefinement_weightsX_tex = self->_disparityRefinement_weightsX_tex;
  self->_disparityRefinement_weightsX_tex = 0;

  disparityRefinement_weightsY_tex = self->_disparityRefinement_weightsY_tex;
  self->_disparityRefinement_weightsY_tex = 0;

  disparityRefinement_sampledD_tex = self->_disparityRefinement_sampledD_tex;
  self->_disparityRefinement_sampledD_tex = 0;

  disparityRefinement_preproc_tex = self->_disparityRefinement_preproc_tex;
  self->_disparityRefinement_preproc_tex = 0;

  disparityRefinement_blurmap_tex = self->_disparityRefinement_blurmap_tex;
  self->_disparityRefinement_blurmap_tex = 0;

  faceMask_adjBlurmap_tex = self->_faceMask_adjBlurmap_tex;
  self->_faceMask_adjBlurmap_tex = 0;

  blurMapSmoothing_intermediate_tex = self->_blurMapSmoothing_intermediate_tex;
  self->_blurMapSmoothing_intermediate_tex = 0;

  blurMapSmoothing_result_tex = self->_blurMapSmoothing_result_tex;
  self->_blurMapSmoothing_result_tex = 0;

  blurMapRefinement_alphaMaskDelta = self->_blurMapRefinement_alphaMaskDelta;
  self->_blurMapRefinement_alphaMaskDelta = 0;

  blurMapRefinement_hairMaskDelta = self->_blurMapRefinement_hairMaskDelta;
  self->_blurMapRefinement_hairMaskDelta = 0;

  blurMapRefinement_intermediate = self->_blurMapRefinement_intermediate;
  self->_blurMapRefinement_intermediate = 0;

  rendering_halfResRGBA1_tex = self->_rendering_halfResRGBA1_tex;
  self->_rendering_halfResRGBA1_tex = 0;

  rendering_halfResRGBA2_tex = self->_rendering_halfResRGBA2_tex;
  self->_rendering_halfResRGBA2_tex = 0;

  rendering_halfResRGBAsRGB1_texalias = self->_rendering_halfResRGBAsRGB1_texalias;
  self->_rendering_halfResRGBAsRGB1_texalias = 0;

  rendering_halfResRGBAsRGB2_texalias = self->_rendering_halfResRGBAsRGB2_texalias;
  self->_rendering_halfResRGBAsRGB2_texalias = 0;

  rendering_halfResRG_tex = self->_rendering_halfResRG_tex;
  self->_rendering_halfResRG_tex = 0;

  halfResRGBABuffer1 = self->_halfResRGBABuffer1;
  self->_halfResRGBABuffer1 = 0;

  halfResRGBABuffer2 = self->_halfResRGBABuffer2;
  self->_halfResRGBABuffer2 = 0;

  slm_mapping_buf = self->_slm_mapping_buf;
  self->_slm_mapping_buf = 0;

  rendering_xhlrbProcessList_buf = self->_rendering_xhlrbProcessList_buf;
  self->_rendering_xhlrbProcessList_buf = 0;
}

- (id)initInstance
{
  v8.receiver = self;
  v8.super_class = SDOFResources;
  v2 = [(SDOFResources *)&v8 init];
  v6 = v2;
  if (v2)
  {
    objc_msgSend_clearInstance(v2, v3, v4, v5);
  }

  return v6;
}

+ (id)sharedInstance
{
  if (qword_2A18AAF30 != -1)
  {
    sub_295EB22D8();
  }

  v3 = qword_2A18AAF28;

  return v3;
}

- (int)allocateResourcesUsingMetalContext:(id)context inputImageWidth:(unint64_t)width inputImageHeight:(unint64_t)height shiftMapWidth:(unint64_t)mapWidth shiftMapHeight:(unint64_t)mapHeight enableForegroundBlur:(BOOL)blur
{
  blurCopy = blur;
  contextCopy = context;
  v20 = contextCopy;
  if (self->_referenceCount)
  {
    goto LABEL_65;
  }

  obj = context;
  v286 = width >> 1;
  heightCopy = height;
  v21 = height >> 1;
  mapWidthCopy = mapWidth;
  mapHeightCopy = mapHeight;
  v23 = width >> 1 == mapWidth && v21 == mapHeight;
  v293 = v23;
  v24 = objc_msgSend_device(contextCopy, v17, v18, v19);
  v291 = blurCopy;
  v27 = objc_msgSend_minimumLinearTextureAlignmentForPixelFormat_(v24, v25, 25, v26);

  v31 = objc_msgSend_device(v20, v28, v29, v30);
  v34 = objc_msgSend_minimumLinearTextureAlignmentForPixelFormat_(v31, v32, 65, v33);

  v38 = objc_msgSend_device(v20, v35, v36, v37);
  v41 = v20;
  v42 = objc_msgSend_minimumLinearTextureAlignmentForPixelFormat_(v38, v39, 30, v40);

  v46 = objc_msgSend_device(v41, v43, v44, v45);
  v49 = objc_msgSend_minimumLinearTextureAlignmentForPixelFormat_(v46, v47, 10, v48);

  v53 = objc_msgSend_device(v41, v50, v51, v52);
  v56 = objc_msgSend_minimumLinearTextureAlignmentForPixelFormat_(v53, v54, 70, v55);

  if (v27 <= v34)
  {
    v60 = v34;
  }

  else
  {
    v60 = v27;
  }

  v61 = v21;
  if (v60 <= v42)
  {
    v60 = v42;
  }

  if (v49 <= v56)
  {
    v62 = v56;
  }

  else
  {
    v62 = v49;
  }

  if (v60 <= v62)
  {
    v63 = v62;
  }

  else
  {
    v63 = v60;
  }

  v64 = (v63 - 1 + (width >> 1)) / v63 * v63;
  widthCopy = width;
  v65 = (v63 - 1 + (width & 0xFFFFFFFFFFFFFFFELL)) / v63 * v63;
  v66 = 2 * v65;
  v283 = (v63 - 1 + 4 * v286) / v63 * v63;
  if (v283 > 2 * v65)
  {
    v66 = (v63 - 1 + 4 * v286) / v63 * v63;
  }

  v67 = 4;
  if (v291)
  {
    v67 = 6;
  }

  v68 = v64 * v67;
  if (v66 <= v68)
  {
    v66 = v68;
  }

  v69 = v66 * v61;
  v70 = objc_msgSend_device(v41, v57, v58, v59);
  v72 = objc_msgSend_newBufferWithLength_options_(v70, v71, v69, 32);
  halfResRGBABuffer1 = self->_halfResRGBABuffer1;
  self->_halfResRGBABuffer1 = v72;

  if (!self->_halfResRGBABuffer1)
  {
    sub_295EB2A2C(v294);
LABEL_81:
    v240 = v294[0];
    v20 = v41;
    goto LABEL_117;
  }

  v77 = objc_msgSend_device(v41, v74, v75, v76);
  v79 = objc_msgSend_newBufferWithLength_options_(v77, v78, v69, 32);
  halfResRGBABuffer2 = self->_halfResRGBABuffer2;
  self->_halfResRGBABuffer2 = v79;

  if (!self->_halfResRGBABuffer2)
  {
    sub_295EB2980(v294);
    goto LABEL_81;
  }

  v84 = objc_msgSend_device(v41, v81, v82, v83);
  v86 = objc_msgSend_newBufferWithLength_options_(v84, v85, 16, 32);
  slm_mapping_buf = self->_slm_mapping_buf;
  self->_slm_mapping_buf = v86;

  if (!self->_slm_mapping_buf)
  {
    sub_295EB28D4(v294);
    goto LABEL_81;
  }

  v292 = v61;
  v285 = v41;
  v91 = objc_msgSend_device(v41, v88, v89, v90);
  v93 = objc_msgSend_newBufferWithLength_options_(v91, v92, (((v61 + 7) >> 1) & 0x7FFFFFFFFFFFFFFCLL) * (((v286 + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL) + 16, 0);
  rendering_xhlrbProcessList_buf = self->_rendering_xhlrbProcessList_buf;
  self->_rendering_xhlrbProcessList_buf = v93;

  if (!self->_rendering_xhlrbProcessList_buf)
  {
    sub_295EB2828(v294);
    v240 = v294[0];
LABEL_116:
    v20 = v285;
LABEL_117:
    if (!v240)
    {
      goto LABEL_71;
    }

    goto LABEL_118;
  }

  if (v293)
  {
    v96 = 0;
    objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v95, 25, v286, v61, 0);
  }

  else
  {
    v97 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v95, 65, mapWidthCopy, mapHeightCopy, 0);
    if (!v97)
    {
      sub_295EB22EC();
      goto LABEL_107;
    }

    v96 = v97;
    objc_msgSend_setUsage_(v97, v98, 19, v99);
    objc_msgSend_setResourceOptions_(v96, v100, 32, v101);
    objc_msgSend_setCompressionFootprint_(v96, v102, 0, v103);
    objc_msgSend_setCompressionMode_(v96, v104, 0, v105);
    objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v106, 25, v286, v61, 0);
  }
  v107 = ;
  if (!v107)
  {
    sub_295EB279C(v96);
LABEL_107:
    v240 = -12786;
    goto LABEL_116;
  }

  v110 = v107;
  v288 = v96;
  objc_msgSend_setUsage_(v107, v108, 19, v109);
  objc_msgSend_setResourceOptions_(v110, v111, 32, v112);
  objc_msgSend_setCompressionFootprint_(v110, v113, 0, v114);
  objc_msgSend_setCompressionMode_(v110, v115, 0, v116);
  v118 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v117, 30, v286, v61, 0);
  if (!v118)
  {
    sub_295EB2708(v110, v96);
    goto LABEL_107;
  }

  v121 = v118;
  v274 = (v63 - 1);
  objc_msgSend_setUsage_(v118, v119, 19, v120);
  objc_msgSend_setResourceOptions_(v121, v122, 32, v123);
  objc_msgSend_setCompressionFootprint_(v121, v124, 0, v125);
  objc_msgSend_setCompressionMode_(v121, v126, 0, v127);
  v129 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v128, 10, v286, v61, 0);
  if (!v129)
  {
    sub_295EB2664(v121, v110, v288);
    goto LABEL_107;
  }

  v132 = v61;
  v133 = v129;
  objc_msgSend_setUsage_(v129, v130, 19, v131);
  objc_msgSend_setResourceOptions_(v133, v134, 32, v135);
  objc_msgSend_setCompressionFootprint_(v133, v136, 0, v137);
  v284 = v133;
  objc_msgSend_setCompressionMode_(v133, v138, 0, v139);
  v141 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v140, 70, v286, v132, 0);
  if (!v141)
  {
    sub_295EB25B8(v133, v121, v110, v288);
    goto LABEL_107;
  }

  v144 = v141;
  objc_msgSend_setUsage_(v141, v142, 19, v143);
  objc_msgSend_setResourceOptions_(v144, v145, 32, v146);
  objc_msgSend_setCompressionFootprint_(v144, v147, 0, v148);
  v278 = v144;
  objc_msgSend_setCompressionMode_(v144, v149, 0, v150);
  v152 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v151, 30, v286, v132, 0);
  if (!v152)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, v274, obj, width, heightCopy, v144);

LABEL_106:
    goto LABEL_107;
  }

  v155 = v152;
  objc_msgSend_setUsage_(v152, v153, 19, v154);
  objc_msgSend_setResourceOptions_(v155, v156, 32, v157);
  objc_msgSend_setCompressionFootprint_(v155, v158, 0, v159);
  objc_msgSend_setCompressionMode_(v155, v160, 0, v161);
  v165 = v293;
  v287 = v110;
  if (v293)
  {
    goto LABEL_47;
  }

  v166 = &v274[4 * mapWidthCopy] / v63 * v63;
  v167 = v65 * v292;
  v168 = v166 * mapHeightCopy;
  if (v166 * mapHeightCopy <= v64 * v292)
  {
    v169 = v64 * v292;
  }

  else
  {
    v169 = v166 * mapHeightCopy;
  }

  if (v167 < 2 * v168)
  {
    emitter = fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", emitter, "<<<< SDOFResources(V5) >>>> Fig", "2 * shiftMapHeight * bufferStrideWeights <= halfResHeight * bufferStrideRG", "bail", 0, "SDOFResourcesV5.m", 346, 0);
LABEL_105:

    goto LABEL_106;
  }

  if (v169 + v168 >= v167)
  {
    v263 = fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v263, "<<<< SDOFResources(V5) >>>> Fig", "weightsYOffset + bufferStrideWeights * shiftMapHeight < sampledDOffset", "bail", 0, "SDOFResourcesV5.m", 348, 0);
    goto LABEL_105;
  }

  v170 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer1, v162, v288, 0, v166);
  disparityRefinement_weightsX_tex = self->_disparityRefinement_weightsX_tex;
  self->_disparityRefinement_weightsX_tex = v170;

  if (!self->_disparityRefinement_weightsX_tex)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, v274, obj, widthCopy, heightCopy, v278);
    fig_log_get_emitter();
    v240 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v265, v268, v271);

    goto LABEL_116;
  }

  v173 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer1, v172, v288, v169, v166);
  disparityRefinement_weightsY_tex = self->_disparityRefinement_weightsY_tex;
  self->_disparityRefinement_weightsY_tex = v173;

  if (!self->_disparityRefinement_weightsY_tex)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, v274, obj, widthCopy, heightCopy, v278);
    fig_log_get_emitter();
    v240 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v266, v269, v272);

LABEL_114:
    goto LABEL_115;
  }

  v176 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer1, v175, v287, v167, v65);
  disparityRefinement_sampledD_tex = self->_disparityRefinement_sampledD_tex;
  self->_disparityRefinement_sampledD_tex = v176;

  v165 = v293;
  if (!self->_disparityRefinement_sampledD_tex)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, v274, obj, widthCopy, heightCopy, v278);
    fig_log_get_emitter();
    v240 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v267, v270, v273);

LABEL_115:
    goto LABEL_116;
  }

LABEL_47:
  v178 = self->_halfResRGBABuffer1;
  if (v291)
  {
    v179 = objc_msgSend_device(v178, v162, v163, v164);
    v182 = objc_msgSend_newTextureWithDescriptor_(v179, v180, v155, v181);
    disparityRefinement_blurmap_tex = self->_disparityRefinement_blurmap_tex;
    self->_disparityRefinement_blurmap_tex = v182;
  }

  else
  {
    v184 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(v178, v162, v284, 0, v64);
    v179 = self->_disparityRefinement_blurmap_tex;
    self->_disparityRefinement_blurmap_tex = v184;
  }

  v185 = v278;

  if (!self->_disparityRefinement_blurmap_tex)
  {
    fig_log_get_emitter();
    v245 = v155;
    v246 = v121;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, v274, obj, widthCopy, heightCopy, v278);
    v247 = fig_log_get_emitter();
    v248 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v247, 4294893831, "<<<< SDOFResources(V5) >>>>", 379);
LABEL_112:
    v240 = v248;

    goto LABEL_113;
  }

  v187 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer1, v186, v121, 0, v65);
  blurMapSmoothing_intermediate_tex = self->_blurMapSmoothing_intermediate_tex;
  self->_blurMapSmoothing_intermediate_tex = v187;

  if (!self->_blurMapSmoothing_intermediate_tex)
  {
    fig_log_get_emitter();
    v245 = v155;
    v246 = v121;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, v274, obj, widthCopy, heightCopy, v278);
    v249 = fig_log_get_emitter();
    v248 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v249, 4294893831, "<<<< SDOFResources(V5) >>>>", 385);
    goto LABEL_112;
  }

  v190 = v65;
  v191 = v64 * v292;
  v192 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer1, v189, v284, v64 * v292, v64);
  blurMapRefinement_alphaMaskDelta = self->_blurMapRefinement_alphaMaskDelta;
  self->_blurMapRefinement_alphaMaskDelta = v192;

  if (!self->_blurMapRefinement_alphaMaskDelta)
  {
    fig_log_get_emitter();
    v245 = v155;
    v246 = v121;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, v274, obj, widthCopy, heightCopy, v278);
    v250 = fig_log_get_emitter();
    v248 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v250, 4294893831, "<<<< SDOFResources(V5) >>>>", 390);
    goto LABEL_112;
  }

  v195 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer1, v194, v284, 2 * v191, v64);
  blurMapRefinement_hairMaskDelta = self->_blurMapRefinement_hairMaskDelta;
  self->_blurMapRefinement_hairMaskDelta = v195;

  if (!self->_blurMapRefinement_hairMaskDelta)
  {
    fig_log_get_emitter();
    v245 = v155;
    v246 = v121;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, v274, obj, widthCopy, heightCopy, v278);
    v251 = fig_log_get_emitter();
    v248 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v251, 4294893831, "<<<< SDOFResources(V5) >>>>", 395);
    goto LABEL_112;
  }

  v198 = v155;
  v199 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer1, v197, v284, 3 * v191, v64);
  blurMapRefinement_intermediate = self->_blurMapRefinement_intermediate;
  self->_blurMapRefinement_intermediate = v199;

  if (!self->_blurMapRefinement_intermediate)
  {
    fig_log_get_emitter();
    v246 = v121;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, v274, obj, widthCopy, heightCopy, v278);
    v252 = fig_log_get_emitter();
    v253 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v252, 4294893831, "<<<< SDOFResources(V5) >>>>", 400);
LABEL_94:
    v240 = v253;

LABEL_113:
    goto LABEL_114;
  }

  v202 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer1, v201, v278, 0, v283);
  rendering_halfResRGBA1_tex = self->_rendering_halfResRGBA1_tex;
  self->_rendering_halfResRGBA1_tex = v202;

  if (!self->_rendering_halfResRGBA1_tex)
  {
    fig_log_get_emitter();
    v246 = v121;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, v274, obj, widthCopy, heightCopy, v278);
    v254 = fig_log_get_emitter();
    v253 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v254, 4294893831, "<<<< SDOFResources(V5) >>>>", 408);
    goto LABEL_94;
  }

  v205 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer1, v204, v155, 0, v190);
  rendering_halfResRG_tex = self->_rendering_halfResRG_tex;
  self->_rendering_halfResRG_tex = v205;

  if (!self->_rendering_halfResRG_tex)
  {
    fig_log_get_emitter();
    v245 = v155;
    v246 = v121;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, v274, obj, widthCopy, heightCopy, v278);
    v255 = fig_log_get_emitter();
    v248 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v255, 4294893831, "<<<< SDOFResources(V5) >>>>", 414);
    goto LABEL_112;
  }

  if (!v165)
  {
    v208 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer2, v207, v278, 0, v283);
    disparityRefinement_preproc_tex = self->_disparityRefinement_preproc_tex;
    self->_disparityRefinement_preproc_tex = v208;

    if (!self->_disparityRefinement_preproc_tex)
    {
      fig_log_get_emitter();
      v245 = v155;
      v246 = v121;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, v274, obj, widthCopy, heightCopy, v278);
      v264 = fig_log_get_emitter();
      v248 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v264, 4294893831, "<<<< SDOFResources(V5) >>>>", 450);
      goto LABEL_112;
    }
  }

  v210 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer2, v207, v284, 0, v64);
  faceMask_adjBlurmap_tex = self->_faceMask_adjBlurmap_tex;
  self->_faceMask_adjBlurmap_tex = v210;

  if (!self->_faceMask_adjBlurmap_tex)
  {
    fig_log_get_emitter();
    v245 = v155;
    v246 = v121;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, v274, obj, widthCopy, heightCopy, v278);
    v256 = fig_log_get_emitter();
    v248 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v256, 4294893831, "<<<< SDOFResources(V5) >>>>", 457);
    goto LABEL_112;
  }

  v213 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer2, v212, v284, 0, v64);
  blurMapSmoothing_result_tex = self->_blurMapSmoothing_result_tex;
  self->_blurMapSmoothing_result_tex = v213;

  if (!self->_blurMapSmoothing_result_tex)
  {
    fig_log_get_emitter();
    v245 = v155;
    v246 = v121;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, v274, obj, widthCopy, heightCopy, v278);
    v257 = fig_log_get_emitter();
    v248 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v257, 4294893831, "<<<< SDOFResources(V5) >>>>", 464);
    goto LABEL_112;
  }

  v216 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(self->_halfResRGBABuffer2, v215, v278, 0, v283);
  rendering_halfResRGBA2_tex = self->_rendering_halfResRGBA2_tex;
  self->_rendering_halfResRGBA2_tex = v216;

  v20 = v285;
  if (!self->_rendering_halfResRGBA2_tex)
  {
    fig_log_get_emitter();
    v220 = v121;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, v274, obj, widthCopy, heightCopy, v278);
    v258 = fig_log_get_emitter();
    v259 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v258, 4294893831, "<<<< SDOFResources(V5) >>>>", 471);
LABEL_101:
    v240 = v259;

    goto LABEL_117;
  }

  v220 = v121;
  v221 = objc_msgSend_newTextureViewWithPixelFormat_(self->_rendering_halfResRGBA1_tex, v218, 71, v219);
  rendering_halfResRGBAsRGB1_texalias = self->_rendering_halfResRGBAsRGB1_texalias;
  self->_rendering_halfResRGBAsRGB1_texalias = v221;

  if (!self->_rendering_halfResRGBAsRGB1_texalias)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, v274, obj, widthCopy, heightCopy, v278);
    v260 = fig_log_get_emitter();
    v259 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v260, 4294893831, "<<<< SDOFResources(V5) >>>>", 479);
    goto LABEL_101;
  }

  v225 = objc_msgSend_newTextureViewWithPixelFormat_(self->_rendering_halfResRGBA2_tex, v223, 71, v224);
  rendering_halfResRGBAsRGB2_texalias = self->_rendering_halfResRGBAsRGB2_texalias;
  self->_rendering_halfResRGBAsRGB2_texalias = v225;

  if (!self->_rendering_halfResRGBAsRGB2_texalias)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v8, v274, obj, widthCopy, heightCopy, v278);
    v261 = fig_log_get_emitter();
    v259 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v261, 4294893831, "<<<< SDOFResources(V5) >>>>", 481);
    goto LABEL_101;
  }

  objc_storeStrong(&self->_metalContext, obj);
  width = widthCopy;
  self->_inputImageWidth = widthCopy;
  self->_inputImageHeight = heightCopy;
  mapHeight = mapHeightCopy;
  self->_shiftMapWidth = mapWidthCopy;
  self->_shiftMapHeight = mapHeightCopy;

  mapWidth = mapWidthCopy;
  height = heightCopy;

LABEL_65:
  v227 = objc_msgSend_device(v20, v17, v18, v19);
  v231 = objc_msgSend_hash(v227, v228, v229, v230);
  v235 = objc_msgSend_device(self->_metalContext, v232, v233, v234);
  v239 = objc_msgSend_hash(v235, v236, v237, v238);

  if (v231 == v239)
  {
    if (self->_inputImageWidth == width)
    {
      if (self->_inputImageHeight == height)
      {
        if (self->_shiftMapWidth == mapWidth)
        {
          if (self->_shiftMapHeight == mapHeight)
          {
            v240 = 0;
            ++self->_referenceCount;
            goto LABEL_71;
          }

          sub_295EB2540();
        }

        else
        {
          sub_295EB24C8();
        }
      }

      else
      {
        sub_295EB2450();
      }
    }

    else
    {
      sub_295EB23D8();
    }
  }

  else
  {
    sub_295EB2360();
  }

  v240 = -12780;
LABEL_118:
  if (!self->_referenceCount)
  {
    objc_msgSend_clearInstance(self, v242, v243, v244);
  }

LABEL_71:

  return v240;
}

- (void)deallocateResources
{
  referenceCount = self->_referenceCount;
  v5 = __OFSUB__(referenceCount--, 1);
  self->_referenceCount = referenceCount;
  if ((referenceCount < 0) ^ v5 | (referenceCount == 0))
  {
    objc_msgSend_clearInstance(self, a2, v2, v3);
  }
}

- (BOOL)activateResources
{
  activeCount = self->_activeCount;
  if (!activeCount)
  {
    objc_msgSend_setPurgeableState_(self->_halfResRGBABuffer1, a2, 2, v2);
    objc_msgSend_setPurgeableState_(self->_halfResRGBABuffer2, v5, 2, v6);
    objc_msgSend_setPurgeableState_(self->_rendering_xhlrbProcessList_buf, v7, 2, v8);
    objc_msgSend_setPurgeableState_(self->_slm_mapping_buf, v9, 2, v10);
    activeCount = self->_activeCount;
  }

  self->_activeCount = activeCount + 1;
  return 1;
}

- (void)deactivateResources
{
  v4 = self->_activeCount - 1;
  self->_activeCount = v4;
  if (!v4)
  {
    objc_msgSend_setPurgeableState_(self->_halfResRGBABuffer1, a2, 3, v2);
    objc_msgSend_setPurgeableState_(self->_halfResRGBABuffer2, v6, 3, v7);
    objc_msgSend_setPurgeableState_(self->_rendering_xhlrbProcessList_buf, v8, 3, v9);
    slm_mapping_buf = self->_slm_mapping_buf;

    objc_msgSend_setPurgeableState_(slm_mapping_buf, v10, 3, v11);
  }
}

@end