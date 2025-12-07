float sub_2643115D4()
{
  v1 = OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT19MotionAssessorScore_perp);
  OUTLINED_FUNCTION_7(v1, v2);
  return *v0;
}

uint64_t sub_264311630(float a1)
{
  v3 = OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT19MotionAssessorScore_perp);
  result = OUTLINED_FUNCTION_25(v3, v4);
  *v1 = a1;
  return result;
}

float sub_264311738()
{
  v1 = OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT19MotionAssessorScore_rot);
  OUTLINED_FUNCTION_7(v1, v2);
  return *v0;
}

uint64_t sub_264311794(float a1)
{
  v3 = OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT19MotionAssessorScore_rot);
  result = OUTLINED_FUNCTION_25(v3, v4);
  *v1 = a1;
  return result;
}

float sub_2643118A0()
{
  v1 = OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT19MotionAssessorScore_hPan);
  OUTLINED_FUNCTION_7(v1, v2);
  return *v0;
}

uint64_t sub_2643118FC(float a1)
{
  v3 = OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT19MotionAssessorScore_hPan);
  result = OUTLINED_FUNCTION_25(v3, v4);
  *v1 = a1;
  return result;
}

float sub_264311A04()
{
  v1 = OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT19MotionAssessorScore_vPan);
  OUTLINED_FUNCTION_7(v1, v2);
  return *v0;
}

uint64_t sub_264311A60(float a1)
{
  v3 = OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT19MotionAssessorScore_vPan);
  result = OUTLINED_FUNCTION_25(v3, v4);
  *v1 = a1;
  return result;
}

id MotionAssessorScore.init(perp:rot:hPan:vPan:)(float a1, float a2, float a3, float a4)
{
  *&v4[OBJC_IVAR____TtC4SMCT19MotionAssessorScore_perp] = a1;
  *&v4[OBJC_IVAR____TtC4SMCT19MotionAssessorScore_rot] = a2;
  *&v4[OBJC_IVAR____TtC4SMCT19MotionAssessorScore_hPan] = a3;
  *&v4[OBJC_IVAR____TtC4SMCT19MotionAssessorScore_vPan] = a4;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for MotionAssessorScore();
  return objc_msgSendSuper2(&v6, sel_init);
}

float sub_264311C4C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2(a1, v15);
  v3 = OUTLINED_FUNCTION_2(v2, v14);
  OUTLINED_FUNCTION_2(v3, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF653F8, &unk_26431BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26431BA70;
  v5 = (v1 + OBJC_IVAR____TtC4SMCT19MotionAssessorScore_vPan);
  OUTLINED_FUNCTION_7(v5, v12);
  *(inited + 32) = fabsf(*v5);
  v6 = OUTLINED_FUNCTION_10();
  sub_264311D88(inited, v6, v7, v8);
  v10 = v9;
  swift_setDeallocating();
  return v10;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_264311D88(uint64_t result, float a2, float a3, float a4)
{
  if (a2 <= a3)
  {
    a2 = a3;
  }

  if (a2 <= a4)
  {
    a2 = a4;
  }

  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (a2 <= v6)
      {
        a2 = v7;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t MotionAssessorOption.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_264311E6C(uint64_t a1)
{
  sub_26431A744();
  MEMORY[0x266735450](a1);
  return sub_26431A764();
}

uint64_t sub_264311EEC(uint64_t a1, uint64_t a2)
{
  sub_26431A744();
  MEMORY[0x266735450](a2);
  return sub_26431A764();
}

unint64_t sub_264311F30@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MotionAssessorOption.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id MotionAssessor.__allocating_init(width:height:analysisWidth:analysisHeight:frameRate:option:centerCrop:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v8 = a6;
  v15 = objc_allocWithZone(v7);
  return MotionAssessor.init(width:height:analysisWidth:analysisHeight:frameRate:option:centerCrop:)(a1, a2, a3, a4, a5, v8, a7);
}

id MotionAssessor.init(width:height:analysisWidth:analysisHeight:frameRate:option:centerCrop:)(int64_t a1, int64_t a2, int64_t a3, int64_t a4, uint64_t a5, int a6, float a7)
{
  v8 = v7;
  LODWORD(v273) = a6;
  v300 = *MEMORY[0x277D85DE8];
  v10 = OBJC_IVAR____TtC4SMCT14MotionAssessor_device;
  if (qword_27FF653D0 != -1)
  {
    swift_once();
  }

  v11 = qword_27FF65980;
  *&v7[v10] = *(qword_27FF65980 + OBJC_IVAR____TtC4SMCT14MetalSingleton_device);
  v265 = OBJC_IVAR____TtC4SMCT14MotionAssessor_library;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_library] = *(v11 + OBJC_IVAR____TtC4SMCT14MetalSingleton_library);
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_commandQueue] = *(v11 + OBJC_IVAR____TtC4SMCT14MetalSingleton_commandQueue);
  allocatorb = OBJC_IVAR____TtC4SMCT14MotionAssessor_textureCache;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_textureCache] = 0;
  v199 = OBJC_IVAR____TtC4SMCT14MotionAssessor_vtTransferSession;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_vtTransferSession] = 0;
  v185 = OBJC_IVAR____TtC4SMCT14MotionAssessor_currPixelBuffer;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_currPixelBuffer] = 0;
  v182 = OBJC_IVAR____TtC4SMCT14MotionAssessor_prevPixelBuffer;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_prevPixelBuffer] = 0;
  v179 = OBJC_IVAR____TtC4SMCT14MotionAssessor_pixelFormat;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_pixelFormat] = 65;
  v242 = OBJC_IVAR____TtC4SMCT14MotionAssessor_downsampleFlowPipelineState;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_downsampleFlowPipelineState] = 0;
  v12 = &v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_downsampleFlowthreads];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  v12[48] = 1;
  v239 = OBJC_IVAR____TtC4SMCT14MotionAssessor_templateMatchPipelineState;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_templateMatchPipelineState] = 0;
  v13 = &v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_templateMatchthreads];
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  v202 = v13;
  *(v13 + 48) = 1;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_templateSize] = 5;
  v244 = OBJC_IVAR____TtC4SMCT14MotionAssessor_mean;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_mean] = 0;
  v204 = OBJC_IVAR____TtC4SMCT14MotionAssessor_opticalFlow5x5;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_opticalFlow5x5] = 0;
  v206 = OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMapTexture;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMapTexture] = 0;
  v208 = OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMapTexture;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMapTexture] = 0;
  v210 = OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMapTexture;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMapTexture] = 0;
  v212 = OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMapTexture;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMapTexture] = 0;
  v215 = OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMeanTexture;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMeanTexture] = 0;
  v221 = OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMeanTexture;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMeanTexture] = 0;
  v227 = OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMeanTexture;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMeanTexture] = 0;
  v233 = OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMeanTexture;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMeanTexture] = 0;
  v218 = OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMeanBytes;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMeanBytes] = 0;
  v224 = OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMeanBytes;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMeanBytes] = 0;
  v230 = OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMeanBytes;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMeanBytes] = 0;
  v236 = OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMeanBytes;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMeanBytes] = 0;
  v188 = OBJC_IVAR____TtC4SMCT14MotionAssessor_executor;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_executor] = 0;
  v191 = OBJC_IVAR____TtC4SMCT14MotionAssessor_ADLKTOpticalFlowBuffer;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_ADLKTOpticalFlowBuffer] = 0;
  v249 = OBJC_IVAR____TtC4SMCT14MotionAssessor_centerCrop;
  v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_centerCrop] = 0;
  v174 = OBJC_IVAR____TtC4SMCT14MotionAssessor_croppedPixelBuffer;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_croppedPixelBuffer] = 0;
  v171 = OBJC_IVAR____TtC4SMCT14MotionAssessor_BGRAPixelBuffer;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_BGRAPixelBuffer] = 0;
  v14 = &v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_croppedRect];
  *v14 = 0u;
  *(v14 + 16) = 0u;
  v168 = v14;
  *(v14 + 32) = 1;
  v15 = *MEMORY[0x277CBECE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF65960, &unk_26431BFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26431BA70;
  v17 = *MEMORY[0x277CC4D40];
  *(inited + 32) = *MEMORY[0x277CC4D40];
  *(inited + 40) = 0;
  type metadata accessor for CFString(0);
  v19 = v18;
  v20 = sub_264314F1C(&qword_27FF65510, &unk_26431BE04);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = v17;
  sub_26431A634();
  v22 = sub_26431A624();

  height = v10;
  v23 = *&v8[v10];
  v24 = allocatorb;
  swift_beginAccess();
  swift_unknownObjectRetain();
  allocator = v15;
  CVMetalTextureCacheCreate(v15, v22, v23, 0, (v24 + v8));
  swift_endAccess();

  swift_unknownObjectRelease();
  *&v8[OBJC_IVAR____TtC4SMCT14MotionAssessor_frameRate] = a7;
  v8[v249] = v273 & 1;
  v8[OBJC_IVAR____TtC4SMCT14MotionAssessor_isFirstFrame] = 1;
  *&v8[OBJC_IVAR____TtC4SMCT14MotionAssessor_option] = a5;
  if (a3 > 0x27FFFFFFFLL)
  {
    __break(1u);
    goto LABEL_56;
  }

  if (a4 > 0x27FFFFFFFLL)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (a3 < 0xFFFFFFFF80000000 || a4 < 0xFFFFFFFF80000000)
  {
    goto LABEL_58;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v26 = &v8[OBJC_IVAR____TtC4SMCT14MotionAssessor_blockSize];
  *v26 = a3 / 5;
  v26[1] = a4 / 5;
  v26[2] = a3;
  v26[3] = a4;
  v27 = [objc_allocWithZone(MEMORY[0x277CD7578]) initWithDevice_];
  v28 = *&v8[v244];
  *&v8[v244] = v27;

  v29 = *&v8[v265];
  swift_unknownObjectRetain();
  v30 = sub_26431A644();
  v31 = [v29 newFunctionWithName_];

  if (!v31)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  swift_unknownObjectRelease();
  v32 = *&v8[height];
  *&v296 = 0;
  v33 = [v32 newComputePipelineStateWithFunction:v31 error:&v296];
  v34 = v296;
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v36 = v34;
    v37 = sub_26431A5B4();

    swift_willThrow();
    v35 = 0;
  }

  *&v8[v242] = v35;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v35)
  {
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_19();
  v38 = v298;
  v245 = v297;
  v250 = v296;
  swift_unknownObjectRelease();
  *v12 = v250;
  *(v12 + 1) = v245;
  *(v12 + 2) = v38;
  v12[48] = 0;
  v39 = *&v8[v265];
  swift_unknownObjectRetain();
  v40 = sub_26431A644();
  v41 = [v39 newFunctionWithName_];

  if (!v41)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v42 = *&v8[height];
  *&v296 = 0;
  v43 = [v42 newComputePipelineStateWithFunction:v41 error:&v296];
  v44 = v296;
  if (v43)
  {
    v45 = v43;
  }

  else
  {
    v46 = v44;
    v47 = sub_26431A5B4();

    swift_willThrow();
    v45 = 0;
  }

  *&v8[v239] = v45;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v45)
  {
LABEL_66:
    __break(1u);
  }

  OUTLINED_FUNCTION_19();
  v48 = v298;
  v246 = v297;
  v251 = v296;
  swift_unknownObjectRelease();
  *v202 = v251;
  *(v202 + 16) = v246;
  *(v202 + 32) = v48;
  *(v202 + 48) = 0;
  v49 = objc_opt_self();
  v50 = [v49 texture2DDescriptorWithPixelFormat:105 width:5 height:5 mipmapped:0];
  [v50 setUsage_];
  [v50 setStorageMode_];
  [v50 setAllowGPUOptimizedContents_];
  OUTLINED_FUNCTION_9([*&v8[height] newTextureWithDescriptor_]);
  v51 = [v49 texture2DDescriptorWithPixelFormat:55 width:5 height:5 mipmapped:0];
  [v51 setUsage_];
  [v51 setStorageMode_];
  [v51 setAllowGPUOptimizedContents_];

  v52 = *&v8[height];
  v53 = v51;
  v54 = OUTLINED_FUNCTION_9([v52 newTextureWithDescriptor_]);
  v62 = OUTLINED_FUNCTION_22(v54, v55, v56, v57, v58, v59, v60, v61, v164, v166, v168, v171, v174, v20, v19, v179, v182, v185, v188, v191, 1, 2, v197, v199, v202, v204, v206, v208, v210, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v242, v246, *(&v246 + 1), v251, *(&v251 + 1), a1, a2, allocator, v41, a4, a3, v273, v276, v278, a5, height);
  v63 = OUTLINED_FUNCTION_9(v62);
  v71 = OUTLINED_FUNCTION_22(v63, v64, v65, v66, v67, v68, v69, v70, v165, v167, v169, v172, v175, v177, v178, v180, v183, v186, v189, v192, v194, v196, v198, v200, v203, v205, v207, v209, v211, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v247, v248, v252, v254, widthb, v259, allocatorc, v266, v268, v271, v274, v277, v279, v281, heighta);
  OUTLINED_FUNCTION_9(v71);
  v72 = [swift_unknownObjectRetain() newTextureWithDescriptor_];
  swift_unknownObjectRelease();

  *&v8[v214] = v72;
  swift_unknownObjectRelease();
  v73 = [v49 texture2DDescriptorWithPixelFormat:55 width:1 height:1 mipmapped:0];
  [v73 setUsage_];
  [v73 setStorageMode_];
  [v73 setAllowGPUOptimizedContents_];

  v74 = *&v8[heightb];
  v75 = v73;
  OUTLINED_FUNCTION_13([v74 newTextureWithDescriptor_]);
  if (*&v8[v217])
  {
    swift_getObjectType();
    *&v76 = OUTLINED_FUNCTION_12();
    v296 = v76;
    v297 = v76;
    v298 = v76;
    v299 = 1;
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_24(&v296, v77, v78, MEMORY[0x277D83A90]);
    OUTLINED_FUNCTION_14();
  }

  else
  {
    v74 = 0;
  }

  v79 = OUTLINED_FUNCTION_21(v220);
  OUTLINED_FUNCTION_13(v79);
  if (*&v8[v223])
  {
    swift_getObjectType();
    *&v80 = OUTLINED_FUNCTION_12();
    v294[0] = v80;
    v294[1] = v80;
    v294[2] = v80;
    v295 = 1;
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_24(v294, v81, v82, MEMORY[0x277D83A90]);
    OUTLINED_FUNCTION_14();
  }

  else
  {
    v74 = 0;
  }

  v83 = OUTLINED_FUNCTION_21(v226);
  OUTLINED_FUNCTION_13(v83);
  if (*&v8[v229])
  {
    swift_getObjectType();
    *&v84 = OUTLINED_FUNCTION_12();
    v292[0] = v84;
    v292[1] = v84;
    v292[2] = v84;
    v293 = 1;
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_24(v292, v85, v86, MEMORY[0x277D83A90]);
    OUTLINED_FUNCTION_14();
  }

  else
  {
    v74 = 0;
  }

  *&v8[v232] = v74;
  [swift_unknownObjectRetain() newTextureWithDescriptor_];
  OUTLINED_FUNCTION_14();

  *&v8[v235] = v74;
  swift_unknownObjectRelease();
  if (*&v8[v235])
  {
    swift_getObjectType();
    *&v87 = OUTLINED_FUNCTION_12();
    v290[0] = v87;
    v290[1] = v87;
    v290[2] = v87;
    v291 = 1;
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_24(v290, v88, v89, MEMORY[0x277D83A90]);
    OUTLINED_FUNCTION_14();
  }

  else
  {
    v74 = 0;
  }

  *&v8[v238] = v74;
  v90 = MEMORY[0x277D839B0];
  v91 = MEMORY[0x277CC4DE8];
  v253 = v75;
  if (!v282)
  {
LABEL_40:
    if ((v275 & 1) == 0)
    {
LABEL_54:
      swift_unknownObjectRelease();

      v287.receiver = v8;
      v287.super_class = type metadata accessor for MotionAssessor();
      return objc_msgSendSuper2(&v287, sel_init);
    }

    if (widtha >= v260)
    {
      v144 = v260;
    }

    else
    {
      v144 = widtha;
    }

    v145 = (v144 / 2 - 1) | 0xF;
    v146 = v145 + 1;
    if (!__OFADD__(v145, 1))
    {
      if (v260 >= widtha)
      {
        if (widtha == v260)
        {
          v147 = v91;
          v148 = (widtha / 4);
          v150 = v148;
LABEL_53:
          heightc = v146;
          *v170 = v148;
          *(v170 + 8) = v150;
          *(v170 + 16) = v146;
          *(v170 + 24) = v146;
          *(v170 + 32) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF65540, &qword_26431BAB8);
          v151 = swift_initStackObject();
          *(v151 + 16) = xmmword_26431BA80;
          *MEMORY[0x277CC4E08];
          *(v151 + 32) = sub_26431A664();
          *(v151 + 40) = v152;
          *(v151 + 72) = v90;
          *(v151 + 48) = 1;
          v153 = *v147;
          *(v151 + 80) = sub_26431A664();
          *(v151 + 88) = v154;
          v155 = sub_26431A634();
          v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF65548, &unk_26431BAC0);
          *(v151 + 120) = v156;
          *(v151 + 96) = v155;
          OUTLINED_FUNCTION_16();
          sub_26431A634();
          OUTLINED_FUNCTION_16();
          v157 = sub_26431A624();

          OUTLINED_FUNCTION_4(&v8[v173]);
          CVPixelBufferCreate(allocatora, widtha, v260, 0x42475241u, v157, &v8[v173]);
          swift_endAccess();

          v158 = swift_initStackObject();
          *(v158 + 16) = xmmword_26431BA80;
          *(v158 + 32) = sub_26431A664();
          *(v158 + 40) = v159;
          *(v158 + 72) = v90;
          *(v158 + 48) = 1;
          *(v158 + 80) = sub_26431A664();
          *(v158 + 88) = v160;
          v161 = sub_26431A634();
          *(v158 + 120) = v156;
          *(v158 + 96) = v161;
          OUTLINED_FUNCTION_16();
          sub_26431A634();
          OUTLINED_FUNCTION_16();
          v162 = sub_26431A624();

          OUTLINED_FUNCTION_4(&v8[v176]);
          CVPixelBufferCreate(allocatora, heightc, heightc, 0x42475241u, v162, &v8[v176]);
          swift_endAccess();

          v75 = v253;
          goto LABEL_54;
        }

        if ((v260 * 3) >> 64 == (3 * v260) >> 63)
        {
          v147 = v91;
          v148 = (widtha / 4);
          v149 = 3 * v260 / 8;
          goto LABEL_52;
        }

        goto LABEL_62;
      }

      if ((widtha * 3) >> 64 == (3 * widtha) >> 63)
      {
        v147 = v91;
        v148 = (3 * widtha / 8);
        v149 = v260 / 4;
LABEL_52:
        v150 = v149;
        goto LABEL_53;
      }

LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v282 != 1)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_4(&v8[v201]);
  VTPixelTransferSessionCreate(allocatora, &v8[v201]);
  swift_endAccess();
  v92 = *&v8[v201];
  if (!v92)
  {
    __break(1u);
    goto LABEL_68;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF65538, &qword_26431BAB0);
  v93 = swift_initStackObject();
  v94 = MEMORY[0x277CE28A8];
  *(v93 + 16) = v195;
  v95 = *v94;
  *(v93 + 32) = *v94;
  v96 = *MEMORY[0x277CBED28];
  if (!*MEMORY[0x277CBED28])
  {
LABEL_68:
    __break(1u);
LABEL_69:
    v289 = v282;
    sub_26431A724();
    __break(1u);
    goto LABEL_70;
  }

  *(v93 + 40) = v96;
  type metadata accessor for CFBoolean(0);
  v97 = v92;
  v98 = v95;
  v99 = v96;
  sub_26431A634();
  v100 = sub_26431A624();

  VTSessionSetProperties(v97, v100);

  *&v8[v181] = 65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF65540, &qword_26431BAB8);
  v101 = swift_initStackObject();
  *(v101 + 16) = xmmword_26431BA80;
  *MEMORY[0x277CC4E08];
  *(v101 + 32) = sub_26431A664();
  *(v101 + 40) = v102;
  *(v101 + 72) = v90;
  *(v101 + 48) = 1;
  *v91;
  *(v101 + 80) = sub_26431A664();
  *(v101 + 88) = v103;
  v104 = sub_26431A634();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF65548, &unk_26431BAC0);
  *(v101 + 120) = v105;
  *(v101 + 96) = v104;
  sub_26431A634();
  v106 = sub_26431A624();

  OUTLINED_FUNCTION_4(&v8[v184]);
  OUTLINED_FUNCTION_15();
  CVPixelBufferCreate(v107, v108, v109, v110, v106, v111);
  swift_endAccess();

  v112 = swift_initStackObject();
  *(v112 + 16) = xmmword_26431BA80;
  *(v112 + 32) = sub_26431A664();
  *(v112 + 40) = v113;
  *(v112 + 72) = MEMORY[0x277D839B0];
  *(v112 + 48) = 1;
  *(v112 + 80) = sub_26431A664();
  *(v112 + 88) = v114;
  v115 = sub_26431A634();
  v241 = v105;
  *(v112 + 120) = v105;
  *(v112 + 96) = v115;
  sub_26431A634();
  v116 = sub_26431A624();

  OUTLINED_FUNCTION_4(&v8[v187]);
  OUTLINED_FUNCTION_15();
  CVPixelBufferCreate(v117, v118, v119, v120, v116, v121);
  swift_endAccess();

  v122 = [objc_opt_self() layoutForSize_];
  v123 = [objc_opt_self() createWithSize:v122 andLayout:{v272, v269}];
  sub_26431A6B4();
  swift_unknownObjectRelease();
  sub_264314818(0, &unk_27FF65550, 0x277CED088);
  if (!swift_dynamicCast())
  {
LABEL_70:
    result = OUTLINED_FUNCTION_20("Fatal error", v124, v125, 0xD000000000000029, 0x800000026431C170, "SMCT/MotionAssessor.swift", v126, v127, 199, 0);
    goto LABEL_72;
  }

  v128 = v288;
  sub_264314818(0, &unk_27FF65A60, 0x277CECFF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF65560, &qword_26431BFD0);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_26431BA90;
  *(v129 + 32) = v128;
  v130 = v128;
  v131 = sub_2643133D8(v129, 0);
  v132 = [objc_allocWithZone(MEMORY[0x277CECFF0]) initWithDescriptor:v131 forLayout:v122];
  if (v132)
  {
    v137 = *&v8[v190];
    *&v8[v190] = v132;
    v138 = v132;

    v139 = swift_initStackObject();
    *(v139 + 16) = xmmword_26431BA80;
    *(v139 + 32) = sub_26431A664();
    *(v139 + 40) = v140;
    v90 = MEMORY[0x277D839B0];
    *(v139 + 72) = MEMORY[0x277D839B0];
    *(v139 + 48) = 1;
    *(v139 + 80) = sub_26431A664();
    *(v139 + 88) = v141;
    v142 = sub_26431A634();
    *(v139 + 120) = v241;
    *(v139 + 96) = v142;
    sub_26431A634();
    v143 = sub_26431A624();

    OUTLINED_FUNCTION_4(&v8[v193]);
    CVPixelBufferCreate(allocatora, v272, v269, 0x32433068u, v143, &v8[v193]);
    swift_endAccess();

    v75 = v253;
    v91 = MEMORY[0x277CC4DE8];
    goto LABEL_40;
  }

  result = OUTLINED_FUNCTION_20("Fatal error", v133, v134, 0xD000000000000022, 0x800000026431C1A0, "SMCT/MotionAssessor.swift", v135, v136, 205, 0);
LABEL_72:
  __break(1u);
  return result;
}

id sub_2643133D8(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_264314818(0, &unk_27FF65550, 0x277CED088);
  v4 = sub_26431A684();

  v5 = [v3 initForSupportedSizes:v4 prioritization:a2];

  return v5;
}

uint64_t sub_2643134A4(__CVBuffer *a1, MTLPixelFormat a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = OBJC_IVAR____TtC4SMCT14MotionAssessor_textureCache;
  OUTLINED_FUNCTION_7(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_textureCache, v36);
  v6 = *(v2 + v5);
  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  CVMetalTextureCacheFlush(v6, 0);
  textureOut = 0;
  v7 = *(v2 + v5);
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = *MEMORY[0x277CBECE8];
  v9 = v7;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v12 = CVMetalTextureCacheCreateTextureFromImage(v8, v9, a1, 0, a2, Width, Height, 0, &textureOut);

  if (!v12)
  {
    v13 = [*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_commandQueue) commandBuffer];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 computeCommandEncoder];
      v16 = v15;
      if (!v15)
      {
LABEL_12:
        [v14 commit];
        [v14 waitUntilCompleted];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v23 = *(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_opticalFlow5x5);
        v24 = textureOut;
        swift_unknownObjectRetain();

        return v23;
      }

      if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_downsampleFlowPipelineState))
      {
        [v15 setComputePipelineState_];
        v17 = textureOut;
        if (textureOut)
        {
          swift_unknownObjectRetain();
          v18 = CVMetalTextureGetTexture(v17);
          if (v18)
          {
            [v16 setTexture:v18 atIndex:0];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v19 = *(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_opticalFlow5x5);
            if (v19)
            {
              [v16 setTexture:v19 atIndex:1];
              v33 = *(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_blockSize);
              [v16 setBytes:&v33 length:16 atIndex:0];
              v20 = (v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_downsampleFlowthreads);
              if ((*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_downsampleFlowthreads + 48) & 1) == 0)
              {
                v21 = *(v20 + 5);
                v22 = *(v20 + 2);
                v33 = *v20;
                v34 = v22;
                v31 = *(v20 + 24);
                v32 = v21;
                [v16 dispatchThreadgroups:&v33 threadsPerThreadgroup:&v31];
                [v16 endEncoding];
                goto LABEL_12;
              }

              goto LABEL_20;
            }

LABEL_19:
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_15:
    __break(1u);
  }

LABEL_21:
  *&v33 = 0;
  *(&v33 + 1) = 0xE000000000000000;
  sub_26431A6C4();
  MEMORY[0x266735370](0xD000000000000046, 0x800000026431C570);
  v26 = sub_26431A714();
  MEMORY[0x266735370](v26);

  result = OUTLINED_FUNCTION_20("Fatal error", v27, v28, v33, *(&v33 + 1), "SMCT/MotionAssessor.swift", v29, v30, 274, 0);
  __break(1u);
  return result;
}

id sub_2643137F8(uint64_t a1)
{
  v2 = v1;
  result = [*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_commandQueue) commandBuffer];
  if (!result)
  {
    __break(1u);
    goto LABEL_32;
  }

  v5 = result;
  result = [result computeCommandEncoder];
  v6 = result;
  if (!result)
  {
LABEL_6:
    v18 = OBJC_IVAR____TtC4SMCT14MotionAssessor_mean;
    result = *(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_mean);
    if (result)
    {
      if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMapTexture))
      {
        v19 = OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMeanTexture;
        if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMeanTexture))
        {
          OUTLINED_FUNCTION_23(result);
          result = *(v2 + v18);
          if (result)
          {
            if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMapTexture))
            {
              v20 = OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMeanTexture;
              if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMeanTexture))
              {
                OUTLINED_FUNCTION_23(result);
                result = *(v2 + v18);
                if (result)
                {
                  if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMapTexture))
                  {
                    v21 = OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMeanTexture;
                    if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMeanTexture))
                    {
                      OUTLINED_FUNCTION_23(result);
                      result = *(v2 + v18);
                      if (result)
                      {
                        if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMapTexture))
                        {
                          v22 = OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMeanTexture;
                          if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMeanTexture))
                          {
                            OUTLINED_FUNCTION_23(result);
                            [v5 commit];
                            result = [v5 waitUntilCompleted];
                            if (*(v2 + v19))
                            {
                              v74 = OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMeanBytes;
                              if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMeanBytes))
                              {
                                swift_getObjectType();
                                *&v23 = OUTLINED_FUNCTION_12();
                                v77 = v23;
                                v78 = v23;
                                v79 = v23;
                                v80 = 1;
                                sub_264316564();
                                OUTLINED_FUNCTION_8();
                                v24 = OUTLINED_FUNCTION_26();
                                OUTLINED_FUNCTION_1(v24, v25, v26, v27, v28, v29, v30, v31, v66, v6);
                                result = swift_unknownObjectRelease();
                                if (*(v2 + v20))
                                {
                                  v32 = OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMeanBytes;
                                  if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMeanBytes))
                                  {
                                    swift_getObjectType();
                                    sub_264316564();
                                    OUTLINED_FUNCTION_8();
                                    v33 = OUTLINED_FUNCTION_26();
                                    OUTLINED_FUNCTION_1(v33, v34, v35, v36, v37, v38, v39, v40, v67, v70);
                                    result = swift_unknownObjectRelease();
                                    if (*(v2 + v21))
                                    {
                                      v41 = OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMeanBytes;
                                      if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMeanBytes))
                                      {
                                        swift_getObjectType();
                                        sub_264316564();
                                        OUTLINED_FUNCTION_8();
                                        v42 = OUTLINED_FUNCTION_26();
                                        OUTLINED_FUNCTION_1(v42, v43, v44, v45, v46, v47, v48, v49, v32, v71);
                                        result = swift_unknownObjectRelease();
                                        if (*(v2 + v22))
                                        {
                                          v50 = OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMeanBytes;
                                          if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMeanBytes))
                                          {
                                            swift_getObjectType();
                                            sub_264316564();
                                            OUTLINED_FUNCTION_8();
                                            v51 = OUTLINED_FUNCTION_26();
                                            OUTLINED_FUNCTION_1(v51, v52, v53, v54, v55, v56, v57, v58, v68, v72);
                                            result = swift_unknownObjectRelease();
                                            if (*(v2 + v74))
                                            {
                                              result = v73;
                                              if (*(v2 + v69))
                                              {
                                                if (*(v2 + v41))
                                                {
                                                  if (*(v2 + v50))
                                                  {
                                                    swift_unknownObjectRelease();
                                                    result = swift_unknownObjectRelease();
                                                    __asm
                                                    {
                                                      FMOV            V0.4S, #25.0
                                                      FMOV            V1.4S, #30.0
                                                      FMOV            V1.4S, #10.0
                                                    }

                                                    return result;
                                                  }

                                                  goto LABEL_55;
                                                }

LABEL_54:
                                                __break(1u);
LABEL_55:
                                                __break(1u);
                                                goto LABEL_56;
                                              }

LABEL_53:
                                              __break(1u);
                                              goto LABEL_54;
                                            }

LABEL_52:
                                            __break(1u);
                                            goto LABEL_53;
                                          }

LABEL_51:
                                          __break(1u);
                                          goto LABEL_52;
                                        }

LABEL_50:
                                        __break(1u);
                                        goto LABEL_51;
                                      }

LABEL_49:
                                      __break(1u);
                                      goto LABEL_50;
                                    }

LABEL_48:
                                    __break(1u);
                                    goto LABEL_49;
                                  }

LABEL_47:
                                  __break(1u);
                                  goto LABEL_48;
                                }

LABEL_46:
                                __break(1u);
                                goto LABEL_47;
                              }

LABEL_45:
                              __break(1u);
                              goto LABEL_46;
                            }

LABEL_44:
                            __break(1u);
                            goto LABEL_45;
                          }

LABEL_43:
                          __break(1u);
                          goto LABEL_44;
                        }

LABEL_42:
                        __break(1u);
                        goto LABEL_43;
                      }

LABEL_41:
                      __break(1u);
                      goto LABEL_42;
                    }

LABEL_40:
                    __break(1u);
                    goto LABEL_41;
                  }

LABEL_39:
                  __break(1u);
                  goto LABEL_40;
                }

LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_templateMatchPipelineState))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  [result setComputePipelineState_];
  [v6 setTexture:a1 atIndex:0];
  v7 = OUTLINED_FUNCTION_5();
  [v7 v8];
  v9 = OUTLINED_FUNCTION_5();
  [v9 v10];
  v11 = OUTLINED_FUNCTION_5();
  [v11 v12];
  v13 = OUTLINED_FUNCTION_5();
  result = [v13 v14];
  v15 = (v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_templateMatchthreads);
  if ((*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_templateMatchthreads + 48) & 1) == 0)
  {
    v16 = *(v15 + 5);
    v17 = *(v15 + 2);
    v77 = *v15;
    *&v78 = v17;
    v75 = *(v15 + 24);
    v76 = v16;
    [v6 dispatchThreadgroups:&v77 threadsPerThreadgroup:&v75];
    [v6 endEncoding];
    goto LABEL_6;
  }

LABEL_57:
  __break(1u);
  return result;
}

void *sub_264313C68(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_option);
  if (!v3)
  {
    return v3;
  }

  if (v3 == 1)
  {
    v4 = OBJC_IVAR____TtC4SMCT14MotionAssessor_executor;
    v3 = *(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_executor);
    if (v3)
    {
      v7 = OBJC_IVAR____TtC4SMCT14MotionAssessor_ADLKTOpticalFlowBuffer;
      OUTLINED_FUNCTION_7(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_ADLKTOpticalFlowBuffer, &v14);
      if (*(v2 + v7))
      {
        v8 = [v3 executeWithFrame:a2 intoOpticalFlowBuffer:?];
        v3 = MEMORY[0x277D837D0];
        if (v8)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF657A0, &qword_26431BE48);
          v9 = swift_allocObject();
          OUTLINED_FUNCTION_6(v9, xmmword_26431BA70);
        }

        v10 = *(v2 + v4);
        if (v10)
        {
          if (*(v2 + v7))
          {
            if ([v10 executeWithFrame:a1 intoOpticalFlowBuffer:?])
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF657A0, &qword_26431BE48);
              v11 = swift_allocObject();
              OUTLINED_FUNCTION_6(v11, xmmword_26431BA70);
            }

            v3 = *(v2 + v7);
            v12 = v3;
            return v3;
          }

          goto LABEL_16;
        }

LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
  v14 = v3;
  result = sub_26431A724();
  __break(1u);
  return result;
}

void sub_264313DF4(__CVBuffer *a1)
{
  v3 = v1;
  if (*(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_centerCrop) != 1)
  {
    if (*(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_isFirstFrame) == 1)
    {
      *(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_isFirstFrame) = 0;
      v24 = OBJC_IVAR____TtC4SMCT14MotionAssessor_vtTransferSession;
      OUTLINED_FUNCTION_7(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_vtTransferSession, v78);
      v25 = *(v3 + v24);
      if (v25)
      {
        v26 = OBJC_IVAR____TtC4SMCT14MotionAssessor_prevPixelBuffer;
        OUTLINED_FUNCTION_7(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_prevPixelBuffer, v77);
        v21 = *(v3 + v26);
        if (v21)
        {
          v22 = v25;
          v23 = a1;
          goto LABEL_16;
        }

        goto LABEL_58;
      }

      goto LABEL_56;
    }

    v28 = OBJC_IVAR____TtC4SMCT14MotionAssessor_vtTransferSession;
    OUTLINED_FUNCTION_7(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_vtTransferSession, v78);
    v29 = *(v3 + v28);
    if (!v29)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v30 = OBJC_IVAR____TtC4SMCT14MotionAssessor_currPixelBuffer;
    OUTLINED_FUNCTION_7(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_currPixelBuffer, v77);
    v31 = *(v3 + v30);
    if (!v31)
    {
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v32 = v29;
    v33 = a1;
    goto LABEL_27;
  }

  v5 = OBJC_IVAR____TtC4SMCT14MotionAssessor_vtTransferSession;
  OUTLINED_FUNCTION_7(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_vtTransferSession, v78);
  v6 = *(v3 + v5);
  if (!v6)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v7 = OBJC_IVAR____TtC4SMCT14MotionAssessor_BGRAPixelBuffer;
  OUTLINED_FUNCTION_7(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_BGRAPixelBuffer, v77);
  v8 = *(v3 + v7);
  if (!v8)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  VTPixelTransferSessionTransferImage(v6, a1, v8);
  if (*(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_isFirstFrame) == 1)
  {
    *(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_isFirstFrame) = 0;
    v9 = *(v3 + v7);
    if (v9)
    {
      v10 = OBJC_IVAR____TtC4SMCT14MotionAssessor_croppedPixelBuffer;
      OUTLINED_FUNCTION_7(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_croppedPixelBuffer, v76);
      v11 = *(v3 + v10);
      if (v11)
      {
        if ((*(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_croppedRect + 32) & 1) == 0)
        {
          v12 = v11;
          v13 = v9;
          OUTLINED_FUNCTION_11(v13, v14, v15, v16, v17);

          v18 = *(v3 + v5);
          if (v18)
          {
            v19 = *(v3 + v10);
            if (v19)
            {
              v20 = OBJC_IVAR____TtC4SMCT14MotionAssessor_prevPixelBuffer;
              OUTLINED_FUNCTION_7(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_prevPixelBuffer, v75);
              v21 = *(v3 + v20);
              if (v21)
              {
                v22 = v18;
                v23 = v19;
LABEL_16:
                VTPixelTransferSessionTransferImage(v22, v23, v21);
                v27 = objc_allocWithZone(type metadata accessor for MotionAssessorScore());
                MotionAssessorScore.init(perp:rot:hPan:vPan:)(0.0, 0.0, 0.0, 0.0);
                return;
              }

              goto LABEL_70;
            }

            goto LABEL_68;
          }

          goto LABEL_66;
        }

        goto LABEL_64;
      }

      goto LABEL_62;
    }

    goto LABEL_60;
  }

  v34 = *(v3 + v7);
  if (!v34)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v35 = OBJC_IVAR____TtC4SMCT14MotionAssessor_croppedPixelBuffer;
  OUTLINED_FUNCTION_7(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_croppedPixelBuffer, v74);
  v36 = *(v3 + v35);
  if (!v36)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (*(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_croppedRect + 32))
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v2 = *(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_croppedRect);
  v37 = v36;
  v38 = v34;
  OUTLINED_FUNCTION_11(v38, v39, v40, v41, v42);

  v43 = *(v3 + v5);
  if (!v43)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v44 = *(v3 + v35);
  if (!v44)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v45 = OBJC_IVAR____TtC4SMCT14MotionAssessor_currPixelBuffer;
  OUTLINED_FUNCTION_7(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_currPixelBuffer, &v73);
  v31 = *(v3 + v45);
  if (v31)
  {
    v32 = v43;
    v33 = v44;
LABEL_27:
    VTPixelTransferSessionTransferImage(v32, v33, v31);
    v46 = OBJC_IVAR____TtC4SMCT14MotionAssessor_prevPixelBuffer;
    OUTLINED_FUNCTION_7(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_prevPixelBuffer, v76);
    v47 = *(v3 + v46);
    if (!v47)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v48 = OBJC_IVAR____TtC4SMCT14MotionAssessor_currPixelBuffer;
    OUTLINED_FUNCTION_7(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_currPixelBuffer, v75);
    v49 = *(v3 + v48);
    if (!v49)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v50 = v49;
    v51 = v47;
    v52 = sub_264313C68(v51, v50);

    if (!v52)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v53 = *(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_pixelFormat);
    v54 = v52;
    v55 = sub_2643134A4(v54, v53);

    if (!v55)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v56 = swift_unknownObjectRetain();
    sub_2643137F8(v56);
    OUTLINED_FUNCTION_18();
    swift_unknownObjectRelease();
    v57 = *(v3 + v48);
    if (!v57)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    CVPixelBufferLockBaseAddress(v57, 1uLL);
    v58 = *(v3 + v46);
    if (!v58)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    CVPixelBufferLockBaseAddress(v58, 0);
    v59 = *(v3 + v48);
    if (!v59)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    BaseAddress = CVPixelBufferGetBaseAddress(v59);
    v61 = *(v3 + v46);
    if (!v61)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v62 = CVPixelBufferGetBaseAddress(v61);
    v63 = *(v3 + v48);
    if (!v63)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    Height = CVPixelBufferGetHeight(v63);
    v65 = *(v3 + v48);
    if (!v65)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    BytesPerRow = CVPixelBufferGetBytesPerRow(v65);
    if ((Height * BytesPerRow) >> 64 == (Height * BytesPerRow) >> 63)
    {
      memcpy(v62, BaseAddress, Height * BytesPerRow);
      v67 = objc_allocWithZone(type metadata accessor for MotionAssessorScore());
      v68 = OUTLINED_FUNCTION_10();
      MotionAssessorScore.init(perp:rot:hPan:vPan:)(v68, v69, v70, *&v2);
      v71 = *(v3 + v48);
      if (v71)
      {
        CVPixelBufferUnlockBaseAddress(v71, 1uLL);
        v72 = *(v3 + v46);
        if (v72)
        {
          CVPixelBufferUnlockBaseAddress(v72, 0);

          swift_unknownObjectRelease();
          return;
        }

        goto LABEL_55;
      }

LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_71:
  __break(1u);
}

id sub_2643142D8(__CVBuffer *a1)
{
  if (CVPixelBufferGetPixelFormatType(a1) == 843264104)
  {
    v3 = sub_2643134A4(a1, MTLPixelFormatRG16Float);
    if (v3)
    {
      sub_2643137F8(v3);
      OUTLINED_FUNCTION_18();
      v4 = objc_allocWithZone(type metadata accessor for MotionAssessorScore());
      v5 = OUTLINED_FUNCTION_10();
      v8 = MotionAssessorScore.init(perp:rot:hPan:vPan:)(v5, v6, v7, v1);
      swift_unknownObjectRelease();
      return v8;
    }

    __break(1u);
  }

  result = sub_26431A6F4();
  __break(1u);
  return result;
}

id MotionAssessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2643144A4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_264314730(uint64_t a1, uint64_t a2)
{
  sub_26431A744();
  swift_getWitnessTable();
  sub_26431A604();
  return sub_26431A764();
}

uint64_t sub_264314798(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FED10](v4, v5, a3, WitnessTable);
}

uint64_t sub_264314818(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_264314880()
{
  result = qword_27FF65568;
  if (!qword_27FF65568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF65568);
  }

  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_264314C70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 48))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_264314CBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_264314D2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264314D4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for OpticalFlowMinMax(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BlockSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_264314E04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264314E24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_264314F1C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_264314F94(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void *OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{

  return sub_264315B50(v10, &v17, v13, v14, v11, v12);
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[3].n128_u64[1] = v2;
  a1[2].n128_u64[0] = v3;
  a1[2].n128_u64[1] = (v4 - 32) | 0x8000000000000000;

  return MEMORY[0x2821FE398]();
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8()
{

  return sub_2643133D0();
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1)
{
  *(v2 + v1) = a1;

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_11(__CVBuffer *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{

  return sub_264315C48(a1, v5, v10, v9, v8, v7);
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1)
{
  *(v1 + v2) = a1;

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_14()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return makeThreadgroups(width:height:pipelineState:)(v0, 5, 5, v1 - 176);
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_26431A6F4();
}

id OUTLINED_FUNCTION_21@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1) = v4;
  v7 = *(v1 + v5);

  return [v7 (v2 + 791)];
}

id OUTLINED_FUNCTION_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v59 = *(v55 + a55);

  return [v59 (v57 + 791)];
}

id OUTLINED_FUNCTION_23(void *a1)
{

  return [a1 (v2 + 141)];
}

uint64_t OUTLINED_FUNCTION_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_264315A68(a1, 1, v4, a4);
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_26()
{

  return swift_unknownObjectRetain();
}

void *sub_2643152AC()
{
  if (qword_27FF653D0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_27FF653D0);
  }

  v1 = qword_27FF65980;
  v2 = *(qword_27FF65980 + OBJC_IVAR____TtC4SMCT14MetalSingleton_device);
  v0[2] = v2;
  v0[3] = *(v1 + OBJC_IVAR____TtC4SMCT14MetalSingleton_commandQueue);
  v3 = objc_allocWithZone(MEMORY[0x277CD7588]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v0[4] = [v3 initWithDevice_];
  v4 = [objc_opt_self() texture2DDescriptorWithPixelFormat:105 width:2 height:1 mipmapped:0];
  [v4 setUsage_];
  [v4 setStorageMode_];
  [v4 setAllowGPUOptimizedContents_];
  v0[5] = v4;
  result = [swift_unknownObjectRetain() newTextureWithDescriptor_];
  if (result)
  {
    v6 = result;
    swift_unknownObjectRelease();
    v0[6] = v6;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_264315400(uint64_t a1)
{
  v2 = v1;
  result = [*(v2 + 24) commandBuffer];
  if (result)
  {
    v5 = result;
    [*(v2 + 32) encodeToCommandBuffer:result sourceTexture:a1 destinationTexture:*(v2 + 48)];
    [v5 commit];
    [v5 waitUntilCompleted];
    ObjectType = swift_getObjectType();
    memset(v12, 0, sizeof(v12));
    v13 = 1;
    v7 = MEMORY[0x277D83A90];
    v8 = sub_2643133D0();
    swift_unknownObjectRetain();
    v9 = sub_264315A68(v12, v8, ObjectType, v7);
    swift_unknownObjectRelease();
    v10 = *(v2 + 48);
    swift_unknownObjectRetain();
    MTLRegionMake2D(&v11);
    [v10 getBytes:v9 bytesPerRow:16 fromRegion:&v11 mipmapLevel:0];
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_26431559C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27FF653D0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_27FF653D0);
  }

  v7 = qword_27FF65980;
  v8 = *(qword_27FF65980 + OBJC_IVAR____TtC4SMCT14MetalSingleton_device);
  v3[2] = v8;
  v3[3] = *(v7 + OBJC_IVAR____TtC4SMCT14MetalSingleton_commandQueue);
  v9 = objc_allocWithZone(MEMORY[0x277CD74E8]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v3[4] = [v9 initWithDevice:v8 kernelWidth:a3 kernelHeight:a3];
  v10 = [objc_opt_self() texture2DDescriptorWithPixelFormat:105 width:a1 height:a2 mipmapped:0];
  [v10 setUsage_];
  [v10 setStorageMode_];
  [v10 setAllowGPUOptimizedContents_];
  v3[5] = v10;
  result = [swift_unknownObjectRetain() newTextureWithDescriptor_];
  if (result)
  {
    v12 = result;
    swift_unknownObjectRelease();
    v3[6] = v12;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_264315714(uint64_t a1)
{
  result = [*(v1 + 24) commandBuffer];
  if (result)
  {
    v4 = result;
    [*(v1 + 32) encodeToCommandBuffer:result sourceTexture:a1 destinationTexture:*(v1 + 48)];
    [v4 commit];
    [v4 waitUntilCompleted];
    swift_unknownObjectRelease();

    return swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2643157B8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_2643157F8()
{
  sub_2643157B8();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

double MTLRegionMake2D@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 2;
  *(a1 + 24) = xmmword_26431BE80;
  *(a1 + 40) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return swift_once();
}

uint64_t makeThreadgroups(width:height:pipelineState:)@<X0>(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v8 = [a1 maxTotalThreadsPerThreadgroup];
  result = [a1 maxTotalThreadsPerThreadgroup];
  if (!v8)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (result == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_26;
  }

  v11 = result / v8;
  result = MTLSizeMake(v8, result / v8, &v22);
  v12 = a2 + v8;
  if (__OFADD__(a2, v8))
  {
    goto LABEL_21;
  }

  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v14 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_27;
  }

  v16 = a3 + v11;
  if (__OFADD__(a3, v11))
  {
    goto LABEL_23;
  }

  v13 = __OFSUB__(v16, 1);
  v17 = v16 - 1;
  if (v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v11 != -1 || v17 != 0x8000000000000000)
  {
    v19 = v22;
    v20 = v23;
    result = MTLSizeMake(v14 / v8, v17 / v11, &v22);
    v21 = v23;
    *a4 = v22;
    *(a4 + 16) = v21;
    *(a4 + 24) = v19;
    *(a4 + 40) = v20;
    return result;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t MTLSizeMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 1;
  return result;
}

id makeTextureDescriptor(textureWidth:textureHeight:textureFormat:storageMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:a3 width:a1 height:a2 mipmapped:0];
  [v5 setUsage_];
  [v5 setStorageMode_];
  [v5 setAllowGPUOptimizedContents_];
  return v5;
}

uint64_t sub_264315A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (*(a1 + 48))
  {
    MTLRegionMake2D_0([v5 width], objc_msgSend(v5, sel_height), v13);
    v9 = v13[3];
    v8 = v13[4];
  }

  else
  {
    v9 = *(a1 + 24);
    v8 = *(a1 + 32);
  }

  v10 = v9 * a2;
  if ((v9 * a2) >> 64 != (v9 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = *(*(a4 - 8) + 72);
  if ((v11 * v10) >> 64 != (v11 * v10) >> 63)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v11 * v10 * v8) >> 64 != (v11 * v10 * v8) >> 63)
  {
LABEL_12:
    __break(1u);
    return MEMORY[0x2821FCA30]();
  }

  return MEMORY[0x2821FCA30]();
}

void *sub_264315B50(void *result, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (a2[3])
  {
    result = MTLRegionMake2D_0([v6 width], objc_msgSend(v6, sel_height), v15);
    v11 = v15[0];
    v10 = v15[1];
    v12 = v16;
    v13 = v17;
  }

  else
  {
    v11 = *a2;
    v10 = a2[1];
    v12 = *(a2 + 4);
    v13 = *(a2 + 5);
  }

  v14 = *(*(a6 - 8) + 72);
  if ((v14 * *(&v10 + 1)) >> 64 == (v14 * *(&v10 + 1)) >> 63)
  {
    if ((v14 * *(&v10 + 1) * a4) >> 64 == (v14 * *(&v10 + 1) * a4) >> 63)
    {
      return [v6 getBytes:v9 bytesPerRow:v11 fromRegion:v10 mipmapLevel:{v12, v13}];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_264315C48(__CVBuffer *a1, __CVBuffer *a2, double a3, double a4, double a5, double a6)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 1111970369)
  {
    goto LABEL_55;
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v13 = CVPixelBufferGetBaseAddress(a2);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v15 = CVPixelBufferGetBytesPerRow(a2);
  if (a3 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (a5 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (a5 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_47;
  }

  if (a6 <= -9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (a6 >= 9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v16 = a3;
  v17 = a5;
  if (__OFADD__(a3, a5))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v18 = v15;
  if (CVPixelBufferGetWidth(a1) < a3 + a5)
  {
LABEL_55:
    result = sub_26431A6F4();
    __break(1u);
    return result;
  }

  v19 = a6;
  v34 = a4;
  if (__OFADD__(a4, a6))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (CVPixelBufferGetHeight(a1) < a4 + a6)
  {
    goto LABEL_55;
  }

  if (v19 < 0)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  pixelBuffer = a1;
  v33 = a2;
  v20 = 0;
  v21 = v16 - 0x2000000000000000;
  v22 = 4 * v16;
  v23 = 4 * v17;
  v24 = v17 - 0x2000000000000000;
  v25 = v21 >> 62;
  v26 = v24 >> 62;
  while (v19 != v20)
  {
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (!BaseAddress)
    {
      goto LABEL_53;
    }

    v27 = v34 + v20;
    if (__OFADD__(v34, v20))
    {
      goto LABEL_35;
    }

    v28 = v27 * BytesPerRow;
    if ((v27 * BytesPerRow) >> 64 != (v27 * BytesPerRow) >> 63)
    {
      goto LABEL_36;
    }

    if (v25 < 3)
    {
      goto LABEL_37;
    }

    v29 = __OFADD__(v28, v22);
    v30 = v28 + v22;
    if (v29)
    {
      goto LABEL_38;
    }

    if (!v13)
    {
      goto LABEL_54;
    }

    if ((v20 * v18) >> 64 != (v20 * v18) >> 63)
    {
      goto LABEL_39;
    }

    if (v26 < 3)
    {
      goto LABEL_40;
    }

    memcpy(&v13[v20 * v18], &BaseAddress[v30], v23);
    ++v20;
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);

  return CVPixelBufferUnlockBaseAddress(v33, 0);
}

uint64_t static ComfortBitUtility.computeMotionComfortBit(motionScoreArray:threshold:windowSize:frameRate:)(uint64_t result, float a2, float a3, float a4)
{
  v4 = *(result + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = (result + 32);
  v6 = a3 * a4;
  v7 = 1 - v4;
  v8 = 0.0;
  while (v7 != 1)
  {
    if (*v5 <= a2)
    {
      v8 = 0.0;
      if (!v7)
      {
        return 0;
      }
    }

    else
    {
      v8 = v8 + 1.0;
      if (v6 <= v8)
      {
        return 1;
      }

      if (!v7)
      {
        return 0;
      }
    }

    ++v7;
    ++v5;
  }

  __break(1u);
  return result;
}

uint64_t static ComfortBitUtility.computeMotionComfortBit(motionAccessorArray:threshold:windowSize:frameRate:)(unint64_t a1, float a2, float a3, float a4)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    do
    {
      v9 = 0;
      a3 = a3 * a4;
      v10 = 0.0;
      while (v9 < v8)
      {
        if (__OFADD__(v9, 1))
        {
          goto LABEL_17;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x2667353D0](v9, a1);
        }

        else
        {
          if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v11 = *(a1 + 8 * v9 + 32);
        }

        v12 = v11;
        a4 = sub_264311C4C(v11);

        if (a4 <= a2)
        {
          v10 = 0.0;
        }

        else
        {
          v10 = v10 + 1.0;
          if (a3 <= v10)
          {
            return 1;
          }
        }

        if (v9 + 1 == v8)
        {
          return 0;
        }

        ++v9;
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v14 = sub_26431A704();
      if (v14 < 0)
      {
        __break(1u);
      }

      v8 = v14;
    }

    while (v14);
  }

  return 0;
}

uint64_t static ComfortBitUtility.computeMotionComfortBit(motionScoreArray:motionAccessorArray:thresholdMotionScore:thresholdMotionAccessor:windowSize:frameRate:)(uint64_t *a1, unint64_t a2, __n128 a3, float a4, float a5, float a6)
{
  v9 = a3.n128_f32[0];
  v11 = a1;
  v12 = a1[2];
  if (a2 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); v12 == i; i = sub_26431A704())
  {
    if (!v12)
    {
      return 0;
    }

    v14 = 0;
    v15 = v11 + 4;
    a5 = a5 * a6;
    v16 = 0.0;
    v17 = v12 - 1;
    a3.n128_u64[0] = 0;
    v12 &= ~(v12 >> 63);
    while (v12 != v14)
    {
      v18 = 0.0;
      if (*(v15 + v14) > v9)
      {
        v18 = a3.n128_f32[0] + 1.0;
        if (a5 <= (a3.n128_f32[0] + 1.0))
        {
          return 1;
        }
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x2667353D0](v14, a2, a3);
      }

      else
      {
        if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v19 = *(a2 + 8 * v14 + 32);
      }

      v11 = v19;
      a6 = sub_264311C4C(v19);

      if (a6 <= a4)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = v16 + 1.0;
        if (a5 <= v16)
        {
          return 1;
        }
      }

      if (v17 == v14)
      {
        return 0;
      }

      ++v14;
      a3.n128_f32[0] = v18;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  result = sub_26431A6F4();
  __break(1u);
  return result;
}

id ComfortBitUtility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ComfortBitUtility.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComfortBitUtility();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ComfortBitUtility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComfortBitUtility();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MTLRegionMake2D_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  a3[4] = a2;
  a3[5] = 1;
  return result;
}

float sub_264316590()
{
  v1 = OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT13MotionFeature_mean);
  OUTLINED_FUNCTION_7(v1, v2);
  return *v0;
}

uint64_t sub_2643165EC(float a1)
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT13MotionFeature_mean);
  result = swift_beginAccess();
  *v1 = a1;
  return result;
}

float sub_2643166AC()
{
  v1 = OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT13MotionFeature_std);
  OUTLINED_FUNCTION_7(v1, v2);
  return *v0;
}

uint64_t sub_264316708(float a1)
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT13MotionFeature_std);
  result = swift_beginAccess();
  *v1 = a1;
  return result;
}

id MotionFeature.init(mean:std:)(float a1, float a2)
{
  *&v2[OBJC_IVAR____TtC4SMCT13MotionFeature_mean] = a1;
  *&v2[OBJC_IVAR____TtC4SMCT13MotionFeature_std] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MotionFeature();
  return objc_msgSendSuper2(&v4, sel_init);
}

id MotionScore.init(width:height:frameRate:)(uint64_t a1, uint64_t a2, float a3)
{
  v4 = v3;
  v71 = *MEMORY[0x277D85DE8];
  v6 = OBJC_IVAR____TtC4SMCT11MotionScore_device;
  if (qword_27FF653D0 != -1)
  {
    swift_once();
  }

  v7 = qword_27FF65980;
  *&v3[v6] = *(qword_27FF65980 + OBJC_IVAR____TtC4SMCT14MetalSingleton_device);
  v64 = OBJC_IVAR____TtC4SMCT11MotionScore_library;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_library] = *(v7 + OBJC_IVAR____TtC4SMCT14MetalSingleton_library);
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_commandQueue] = *(v7 + OBJC_IVAR____TtC4SMCT14MetalSingleton_commandQueue);
  v60 = OBJC_IVAR____TtC4SMCT11MotionScore_textureCache;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_textureCache] = 0;
  v55 = OBJC_IVAR____TtC4SMCT11MotionScore_prevTexture;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_prevTexture] = 0;
  v54 = OBJC_IVAR____TtC4SMCT11MotionScore_motionMapTexture;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_motionMapTexture] = 0;
  v52 = OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanTexture;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanTexture] = 0;
  v53 = OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanBytes;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanBytes] = 0;
  v61 = OBJC_IVAR____TtC4SMCT11MotionScore_mean;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_mean] = 0;
  v50 = OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanAndVarianceTexture;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanAndVarianceTexture] = 0;
  v51 = OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanAndVarianceBytes;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanAndVarianceBytes] = 0;
  v62 = OBJC_IVAR____TtC4SMCT11MotionScore_meanAndVariance;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_meanAndVariance] = 0;
  v58 = OBJC_IVAR____TtC4SMCT11MotionScore_computePipelineState;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_computePipelineState] = 0;
  v8 = &v3[OBJC_IVAR____TtC4SMCT11MotionScore_computeThreads];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  v8[48] = 1;
  allocator = *MEMORY[0x277CBECE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF65960, &unk_26431BFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26431BA70;
  v10 = *MEMORY[0x277CC4D40];
  *(inited + 32) = *MEMORY[0x277CC4D40];
  *(inited + 40) = 0;
  type metadata accessor for CFString(0);
  sub_264317C10();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = v10;
  sub_26431A634();
  v12 = v6;
  v13 = sub_26431A624();

  v14 = *&v4[v6];
  swift_beginAccess();
  swift_unknownObjectRetain();
  CVMetalTextureCacheCreate(allocator, v13, v14, 0, &v4[v60]);
  swift_endAccess();

  swift_unknownObjectRelease();
  v4[OBJC_IVAR____TtC4SMCT11MotionScore_isFirstFrame] = 1;
  *&v4[OBJC_IVAR____TtC4SMCT11MotionScore_frameRate] = a3;
  v15 = [objc_allocWithZone(MEMORY[0x277CD7578]) initWithDevice_];
  v16 = *&v4[v61];
  *&v4[v61] = v15;

  v17 = [objc_allocWithZone(MEMORY[0x277CD7580]) initWithDevice_];
  v18 = *&v4[v62];
  *&v4[v62] = v17;

  v19 = *&v4[v64];
  swift_unknownObjectRetain();
  v20 = sub_26431A644();
  v21 = [v19 newFunctionWithName_];

  if (!v21)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_unknownObjectRelease();
  v22 = *&v4[v12];
  *&v67 = 0;
  v23 = [v22 newComputePipelineStateWithFunction:v21 error:&v67];
  v24 = v67;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v26 = v24;
    v27 = sub_26431A5B4();

    swift_willThrow();
    v25 = 0;
  }

  *&v4[v58] = v25;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v25)
  {
    goto LABEL_14;
  }

  makeThreadgroups(width:height:pipelineState:)(v25, a1, a2, &v67);
  v28 = v69;
  v63 = v68;
  v65 = v67;
  swift_unknownObjectRelease();
  *v8 = v65;
  *(v8 + 1) = v63;
  *(v8 + 2) = v28;
  v8[48] = 0;
  v29 = objc_opt_self();
  v30 = [v29 texture2DDescriptorWithPixelFormat:55 width:a1 height:a2 mipmapped:0];
  [v30 setUsage_];
  [v30 setStorageMode_];
  [v30 setAllowGPUOptimizedContents_];
  v31 = v30;
  v32 = [swift_unknownObjectRetain() newTextureWithDescriptor_];
  if (!v32)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v33 = v32;
  swift_unknownObjectRelease();
  *&v4[v55] = v33;
  swift_unknownObjectRelease();
  v34 = [swift_unknownObjectRetain() newTextureWithDescriptor_];

  if (!v34)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  swift_unknownObjectRelease();
  *&v4[v54] = v34;
  swift_unknownObjectRelease();
  v35 = [v29 texture2DDescriptorWithPixelFormat:55 width:1 height:1 mipmapped:0];
  [v35 setUsage_];
  [v35 setStorageMode_];
  [v35 setAllowGPUOptimizedContents_];

  v36 = [swift_unknownObjectRetain() newTextureWithDescriptor_];
  if (!v36)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v37 = v36;
  swift_unknownObjectRelease();
  *&v4[v52] = v37;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 1;
  v39 = MEMORY[0x277D83A90];
  v40 = sub_2643133D0();
  v41 = sub_264315A68(&v67, v40, ObjectType, v39);
  swift_unknownObjectRelease();
  *&v4[v53] = v41;
  v42 = [v29 texture2DDescriptorWithPixelFormat:55 width:2 height:1 mipmapped:0];
  [v42 setUsage_];
  [v42 setStorageMode_];
  [v42 setAllowGPUOptimizedContents_];

  v43 = [swift_unknownObjectRetain() newTextureWithDescriptor_];
  if (!v43)
  {
    goto LABEL_18;
  }

  v44 = v43;
  swift_unknownObjectRelease();
  *&v4[v50] = v44;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v45 = swift_getObjectType();
  v46 = MEMORY[0x277D83A90];
  v47 = sub_2643133D0();
  v48 = sub_264315A68(&v67, v47, v45, v46);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  *&v4[v51] = v48;
  v66.receiver = v4;
  v66.super_class = type metadata accessor for MotionScore();
  return objc_msgSendSuper2(&v66, sel_init);
}

void sub_2643170D0(__CVBuffer *a1)
{
  v2 = v1;
  v49 = *MEMORY[0x277D85DE8];
  v4 = OBJC_IVAR____TtC4SMCT11MotionScore_textureCache;
  OUTLINED_FUNCTION_7(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_textureCache, v44);
  v5 = *&v4[v2];
  if (!v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    if (!*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_mean))
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  CVMetalTextureCacheFlush(v5, 0);
  if (CVPixelBufferGetPixelFormatType(a1) != 875704438 && CVPixelBufferGetPixelFormatType(a1) != 1278226488)
  {
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_7_0("Fatal error", v35, v36, v33 + 73, v34 | 0x8000000000000000, "SMCT/MotionScore.swift", v37, v38, 87, v40);
    goto LABEL_38;
  }

  v43 = 0;
  v6 = *&v4[v2];
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = v6;
  CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  LODWORD(v4) = OUTLINED_FUNCTION_2_0(&v43, Height, v39);

  if (v4)
  {
LABEL_36:
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_26431A6C4();
    MEMORY[0x266735370](0xD000000000000040, 0x800000026431C830);
    LODWORD(v41) = v4;
    v28 = sub_26431A714();
    MEMORY[0x266735370](v28);

    OUTLINED_FUNCTION_7_0("Fatal error", v29, v30, v45, *(&v45 + 1), "SMCT/MotionScore.swift", v31, v32, 95, 0);
LABEL_38:
    __break(1u);
    return;
  }

  v9 = [*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_commandQueue) commandBuffer];
  if (!v9)
  {
    goto LABEL_24;
  }

  v4 = v9;
  v10 = [v9 computeCommandEncoder];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_computePipelineState))
  {
    __break(1u);
    goto LABEL_32;
  }

  [v10 setComputePipelineState_];
  v12 = v43;
  if (!v43)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  swift_unknownObjectRetain();
  v13 = CVMetalTextureGetTexture(v12);
  if (!v13)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_3_0(v13);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v14 = OUTLINED_FUNCTION_0_1();
  [v14 v15];
  v16 = OUTLINED_FUNCTION_0_1();
  [v16 v17];
  v18 = v2 + OBJC_IVAR____TtC4SMCT11MotionScore_computeThreads;
  if (*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_computeThreads + 48))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v19 = *(v18 + 40);
  v20 = *(v18 + 16);
  v45 = *v18;
  *&v46 = v20;
  v41 = *(v18 + 24);
  v42 = v19;
  [v11 dispatchThreadgroups:&v45 threadsPerThreadgroup:&v41];
  [v11 endEncoding];
LABEL_13:
  v21 = *(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_mean);
  if (!v21)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_motionMapTexture))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanTexture;
  if (!*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanTexture))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v21 encodeToCommandBuffer:v4 sourceTexture:? destinationTexture:?];
  [v4 commit];
  [v4 waitUntilCompleted];
  if (!*(v2 + v22))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v23 = OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanBytes;
  if (!*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanBytes))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  swift_getObjectType();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 1;
  v24 = swift_unknownObjectRetain();
  OUTLINED_FUNCTION_6_0(v24, &v45, v25, v26, v27, MEMORY[0x277D83A90]);
  swift_unknownObjectRelease();
  if (!*(v2 + v23))
  {
    goto LABEL_30;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_isFirstFrame) == 1)
  {
    *(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_isFirstFrame) = 0;
  }
}

id sub_264317588(__CVBuffer *a1)
{
  v2 = v1;
  v61 = *MEMORY[0x277D85DE8];
  v4 = OBJC_IVAR____TtC4SMCT11MotionScore_textureCache;
  OUTLINED_FUNCTION_7(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_textureCache, v56);
  v5 = *&v4[v2];
  if (!v5)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    if (!*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_meanAndVariance))
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

  CVMetalTextureCacheFlush(v5, 0);
  if (CVPixelBufferGetPixelFormatType(a1) != 875704438 && CVPixelBufferGetPixelFormatType(a1) != 1278226488)
  {
    OUTLINED_FUNCTION_4_0();
    result = OUTLINED_FUNCTION_7_0("Fatal error", v46, v47, v44 + 73, v45 | 0x8000000000000000, "SMCT/MotionScore.swift", v48, v49, 135, v51);
    goto LABEL_39;
  }

  v55 = 0;
  v6 = *&v4[v2];
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  LODWORD(v4) = OUTLINED_FUNCTION_2_0(&v55, Height, v50);

  if (v4)
  {
LABEL_37:
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    sub_26431A6C4();
    MEMORY[0x266735370](0xD000000000000040, 0x800000026431C830);
    LODWORD(v53) = v4;
    v39 = sub_26431A714();
    MEMORY[0x266735370](v39);

    result = OUTLINED_FUNCTION_7_0("Fatal error", v40, v41, v57, *(&v57 + 1), "SMCT/MotionScore.swift", v42, v43, 143, 0);
LABEL_39:
    __break(1u);
    return result;
  }

  v9 = [*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_commandQueue) commandBuffer];
  if (!v9)
  {
    goto LABEL_25;
  }

  v4 = v9;
  v10 = [v9 computeCommandEncoder];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_computePipelineState))
  {
    __break(1u);
    goto LABEL_33;
  }

  [v10 setComputePipelineState_];
  v12 = v55;
  if (!v55)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  swift_unknownObjectRetain();
  v13 = CVMetalTextureGetTexture(v12);
  if (!v13)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_3_0(v13);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v14 = OUTLINED_FUNCTION_0_1();
  [v14 v15];
  v16 = OUTLINED_FUNCTION_0_1();
  [v16 v17];
  v18 = v2 + OBJC_IVAR____TtC4SMCT11MotionScore_computeThreads;
  if (*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_computeThreads + 48))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v19 = *(v18 + 40);
  v20 = *(v18 + 16);
  v57 = *v18;
  *&v58 = v20;
  v53 = *(v18 + 24);
  v54 = v19;
  [v11 dispatchThreadgroups:&v57 threadsPerThreadgroup:&v53];
  [v11 endEncoding];
LABEL_13:
  v21 = *(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_meanAndVariance);
  if (!v21)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_motionMapTexture))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanAndVarianceTexture;
  if (!*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanAndVarianceTexture))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v21 encodeToCommandBuffer:v4 sourceTexture:? destinationTexture:?];
  [v4 commit];
  [v4 waitUntilCompleted];
  if (!*(v2 + v22))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v23 = OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanAndVarianceBytes;
  if (!*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanAndVarianceBytes))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  swift_getObjectType();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 1;
  v24 = swift_unknownObjectRetain();
  OUTLINED_FUNCTION_6_0(v24, &v57, v25, v26, v27, MEMORY[0x277D83A90]);
  swift_unknownObjectRelease();
  v28 = *(v2 + v23);
  if (!v28)
  {
    goto LABEL_31;
  }

  if (*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_isFirstFrame) == 1)
  {
    *(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_isFirstFrame) = 0;
    v29 = 0;
  }

  else
  {
    __asm { FMOV            V1.2S, #30.0 }

    v29 = vdiv_f32(vmul_n_f32(vmul_f32(*v28, vdup_n_s32(0x437F0000u)), *(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_frameRate)), _D1);
  }

  v52 = v29.f32[0];
  v35 = sqrtf(v29.f32[1]);
  v36 = objc_allocWithZone(type metadata accessor for MotionFeature());
  v37 = MotionFeature.init(mean:std:)(v52, v35);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v37;
}

id MotionScore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_264317AFC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_264317C10()
{
  result = qword_27FF65510;
  if (!qword_27FF65510)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF65510);
  }

  return result;
}

uint64_t *OUTLINED_FUNCTION_2_0@<X0>(CVMetalTextureRef *__return_ptr a1@<X8>, size_t a2@<X6>, CVMetalTextureRef *textureOut)
{

  return CVMetalTextureCacheCreateTextureFromImage(v4, v5, v3, 0, MTLPixelFormatR8Unorm, v6, a2, 0, a1);
}

id OUTLINED_FUNCTION_3_0(uint64_t a1)
{

  return [v1 setTexture:a1 atIndex:0];
}

void *OUTLINED_FUNCTION_6_0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_264315B50(v6, a2, 0, 1, v7, a6);
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_26431A6F4();
}

id sub_264317FFC()
{
  result = [objc_allocWithZone(type metadata accessor for MetalSingleton()) init];
  qword_27FF65980 = result;
  return result;
}

id static MetalSingleton.shared.getter()
{
  if (qword_27FF653D0 != -1)
  {
    swift_once();
  }

  v1 = qword_27FF65980;

  return v1;
}

id sub_2643180AC()
{
  v1 = v0;
  v32 = *MEMORY[0x277D85DE8];
  v2 = sub_26431A5E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MTLCreateSystemDefaultDevice();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_1();
    v27 = 25;
    goto LABEL_11;
  }

  v7 = v6;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_26431A644();
  sub_264318568(v10, 0x62696C6C6174656DLL, 0xE800000000000000, v9);
  v12 = v11;

  if (!v12)
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_26431A6C4();
    MEMORY[0x266735370](0x696C206C6174654DLL, 0xEE00207972617262);
    MEMORY[0x266735370](1952673139, 0xE400000000000000);
    OUTLINED_FUNCTION_1_0();
    MEMORY[0x266735370](v20 + 12, v21 | 0x8000000000000000);
    OUTLINED_FUNCTION_2_1();
    v22 = 28;
LABEL_9:
    v27 = v22;
    goto LABEL_11;
  }

  sub_26431A5C4();
  v13 = sub_26431A5D4();
  (*(v3 + 8))(v5, v2);
  v30 = 0;
  v14 = [v7 newLibraryWithURL:v13 error:&v30];

  if (!v14)
  {
    v23 = v30;
    v24 = sub_26431A5B4();

    swift_willThrow();
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_26431A6C4();
    OUTLINED_FUNCTION_1_0();
    MEMORY[0x266735370](v25 + 3, v26 | 0x8000000000000000);
    v29 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF659A8, &qword_26431BFA8);
    sub_26431A6E4();
    OUTLINED_FUNCTION_2_1();
    v22 = 34;
    goto LABEL_9;
  }

  v15 = v30;
  v16 = [v7 newCommandQueue];
  if (v16)
  {
    v17 = v16;

    *&v1[OBJC_IVAR____TtC4SMCT14MetalSingleton_device] = v7;
    *&v1[OBJC_IVAR____TtC4SMCT14MetalSingleton_library] = v14;
    *&v1[OBJC_IVAR____TtC4SMCT14MetalSingleton_commandQueue] = v17;
    v18 = type metadata accessor for MetalSingleton();
    v28.receiver = v1;
    v28.super_class = v18;
    return objc_msgSendSuper2(&v28, sel_init);
  }

  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  v27 = 37;
LABEL_11:
  result = sub_26431A6F4();
  __break(1u);
  return result;
}

id MetalSingleton.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MetalSingleton();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_264318568(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_26431A644();

  v7 = [a4 pathForResource:a1 ofType:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_26431A654();

  return v8;
}

float sub_26431865C()
{
  v1 = OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT9Disparity_horizontal);
  OUTLINED_FUNCTION_7(v1, v2);
  return *v0;
}

uint64_t sub_2643186B8(float a1)
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT9Disparity_horizontal);
  result = swift_beginAccess();
  *v1 = a1;
  return result;
}

float sub_264318778()
{
  v1 = OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT9Disparity_vertical);
  OUTLINED_FUNCTION_7(v1, v2);
  return *v0;
}

uint64_t sub_2643187D4(float a1)
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT9Disparity_vertical);
  result = swift_beginAccess();
  *v1 = a1;
  return result;
}

id Disparity.init(horizontal:vertical:)(float a1, float a2)
{
  *&v2[OBJC_IVAR____TtC4SMCT9Disparity_horizontal] = a1;
  *&v2[OBJC_IVAR____TtC4SMCT9Disparity_vertical] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Disparity();
  return objc_msgSendSuper2(&v4, sel_init);
}

id ExtremeDisparity.init(width:height:analysisWidth:analysisHeight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_device;
  v7 = qword_27FF653D0;
  v8 = v5;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_27FF65980;
  *&v5[v6] = *(qword_27FF65980 + OBJC_IVAR____TtC4SMCT14MetalSingleton_device);
  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_library] = *(v9 + OBJC_IVAR____TtC4SMCT14MetalSingleton_library);
  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_commandQueue] = *(v9 + OBJC_IVAR____TtC4SMCT14MetalSingleton_commandQueue);
  v10 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_textureCache;
  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_textureCache] = 0;
  v11 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_vtTransferSession;
  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_vtTransferSession] = 0;
  v150 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_leftBGRAPixelBuffer;
  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_leftBGRAPixelBuffer] = 0;
  v153 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_rightBGRAPixelBuffer;
  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_rightBGRAPixelBuffer] = 0;
  v12 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_minMaxFinder;
  type metadata accessor for MinAndMaxFinder();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *&v8[v12] = sub_2643152AC();
  v157 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_executor;
  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_executor] = 0;
  v162 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_ADLKTOpticalFlowBuffer;
  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_ADLKTOpticalFlowBuffer] = 0;
  v13 = &v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_opticalFlowMinMax];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_normalizeFlowPipelineState] = 0;
  v14 = &v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_normalizeFlowthreads];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  v14[48] = 1;
  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_normalizedFlow] = 0;
  v15 = &v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_histogramInfo];
  *v15 = 256;
  v15[8] = 0;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(v15 + 2) = _Q0;
  v21 = *MEMORY[0x277CBECE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF65960, &unk_26431BFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26431BA70;
  v23 = *MEMORY[0x277CC4D40];
  *(inited + 32) = *MEMORY[0x277CC4D40];
  *(inited + 40) = 0;
  type metadata accessor for CFString(0);
  sub_264317C10();
  v24 = v23;
  sub_26431A634();
  v25 = sub_26431A624();

  v26 = *&v5[v6];
  OUTLINED_FUNCTION_1_1(&v8[v10]);
  swift_unknownObjectRetain();
  CVMetalTextureCacheCreate(v21, v25, v26, 0, &v8[v10]);
  swift_endAccess();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_1(&v8[v11]);
  allocator = v21;
  VTPixelTransferSessionCreate(v21, &v8[v11]);
  swift_endAccess();
  v27 = *&v8[v11];
  if (!v27)
  {
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF65538, &qword_26431BAB0);
  v28 = swift_initStackObject();
  OUTLINED_FUNCTION_5_0(v28, v29, v30, v31, v32, v33, v34, v35, v36, v121, v124, v127, v130, v134, v138, a2, a1, v150, v153, v157, v162, a4, a3, v37);
  v40 = *v39;
  *(v38 + 32) = *v39;
  v41 = *MEMORY[0x277CBED28];
  if (!*MEMORY[0x277CBED28])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *(v38 + 40) = v41;
  type metadata accessor for CFBoolean(0);
  v42 = v27;
  v43 = v40;
  v44 = v41;
  sub_26431A634();
  v45 = sub_26431A624();

  VTSessionSetProperties(v42, v45);

  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_opticalFlowPixelFormat] = 65;
  v46 = v171;
  if (v171 == 640)
  {
    *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_analysisWidth] = 640;
  }

  else
  {
    *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_analysisWidth] = v171;
  }

  v47 = v166;
  if (v166 == 480)
  {
    OUTLINED_FUNCTION_4_1();
    if (!(_NF ^ _VF | _ZF))
    {
      goto LABEL_31;
    }

    if (v48 <= -9.2234e18)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v48 >= 9.2234e18)
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v47 = v48;
  }

  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_analysisHeight] = v47;
  v49 = v46;
  v50 = v47;
  v51 = [objc_opt_self() layoutForSize_];
  v52 = [objc_opt_self() createWithSize:v51 andLayout:{v49, v50}];
  sub_26431A6B4();
  swift_unknownObjectRelease();
  sub_264314818(0, &unk_27FF65550, 0x277CED088);
  if (!swift_dynamicCast())
  {
    goto LABEL_36;
  }

  v53 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_analysisWidth;
  v54 = v177;
  sub_264314818(0, &unk_27FF65A60, 0x277CECFF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF65560, &qword_26431BFD0);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_26431BA90;
  *(v55 + 32) = v54;
  v172 = v54;
  v56 = sub_2643133D8(v55, 3);
  if (*&v8[v53] > 639)
  {
    v71 = v8;
  }

  else
  {
    v57 = *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_analysisHeight];

    if (v57 > 479)
    {
      goto LABEL_20;
    }

    v58 = swift_allocObject();
    OUTLINED_FUNCTION_5_0(v58, v59, v60, v61, v62, v63, v64, v65, v66, v122, v125, v128, v131, v135, v139, v143, v147, v151, v154, v158, v163, v166, v172, v67);
    *(v68 + 32) = v172;
    v69 = v172;
    v70 = sub_2643133D8(v58, 0);
    v71 = v56;
    v56 = v70;
  }

LABEL_20:
  v167 = v56;
  v72 = [objc_allocWithZone(MEMORY[0x277CECFF0]) initWithDescriptor:v56 forLayout:v51];
  if (v72)
  {
    v73 = *&v8[v158];
    *&v8[v158] = v72;
    v159 = v72;

    v74 = *&v8[v53];
    v75 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_analysisHeight;
    v76 = *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_analysisHeight];
    v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF65540, &qword_26431BAB8);
    v77 = swift_initStackObject();
    *(v77 + 16) = xmmword_26431BA80;
    v144 = *MEMORY[0x277CC4E08];
    *(v77 + 32) = sub_26431A664();
    *(v77 + 40) = v78;
    *(v77 + 72) = MEMORY[0x277D839B0];
    *(v77 + 48) = 1;
    v140 = *MEMORY[0x277CC4DE8];
    *(v77 + 80) = sub_26431A664();
    *(v77 + 88) = v79;
    v80 = v53;
    v81 = sub_26431A634();
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF65548, &unk_26431BAC0);
    *(v77 + 120) = v82;
    *(v77 + 96) = v81;
    sub_26431A634();
    v83 = sub_26431A624();

    OUTLINED_FUNCTION_1_1(&v8[v163]);
    CVPixelBufferCreate(allocator, v74, v76, 0x32433068u, v83, &v8[v163]);
    swift_endAccess();

    v84 = *&v8[v80];
    v85 = *&v8[v75];
    v86 = v84 * v85 * 0.001;
    v87 = fabs(sqrt(v86));
    if (v86 == -INFINITY)
    {
      v88 = INFINITY;
    }

    else
    {
      v88 = v87;
    }

    if (v88 == INFINITY)
    {
      __break(1u);
    }

    else if (v88 > -9.22337204e18)
    {
      if (v88 < 9.22337204e18)
      {
        v89 = v88;
        type metadata accessor for BlurFilter();
        swift_allocObject();
        *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_blurFilter] = sub_26431559C(v84, v85, v89 | 1);
        v132 = *&v8[v75];
        v136 = *&v8[v80];
        v90 = swift_initStackObject();
        OUTLINED_FUNCTION_5_0(v90, v91, v92, v93, v94, v95, v96, v97, v98, v122, v125, v128, v132, v136, v140, v144, v148, v151, v154, v159, v80, v167, v172, v99);
        v90[2].n128_u64[0] = sub_26431A664();
        v90[2].n128_u64[1] = v100;
        v90[4].n128_u64[1] = MEMORY[0x277D839B0];
        v90[3].n128_u8[0] = 1;
        v90[5].n128_u64[0] = sub_26431A664();
        v90[5].n128_u64[1] = v101;
        v102 = sub_26431A634();
        v90[7].n128_u64[1] = v82;
        v90[6].n128_u64[0] = v102;
        sub_26431A634();
        v103 = sub_26431A624();

        OUTLINED_FUNCTION_1_1(&v8[v152]);
        CVPixelBufferCreate(allocator, v137, v133, 0x42475241u, v103, &v8[v152]);
        swift_endAccess();

        v104 = *&v8[v164];
        v105 = *&v8[v75];
        v106 = swift_initStackObject();
        OUTLINED_FUNCTION_5_0(v106, v107, v108, v109, v110, v111, v112, v113, v114, v123, v126, v129, v133, v137, v141, v145, v149, v152, v155, v160, v164, v168, v173, v115);
        v106[2].n128_u64[0] = sub_26431A664();
        v106[2].n128_u64[1] = v116;
        v106[4].n128_u64[1] = MEMORY[0x277D839B0];
        v106[3].n128_u8[0] = 1;
        v106[5].n128_u64[0] = sub_26431A664();
        v106[5].n128_u64[1] = v117;
        v118 = sub_26431A634();
        v106[7].n128_u64[1] = v82;
        v106[6].n128_u64[0] = v118;
        sub_26431A634();
        v119 = sub_26431A624();

        OUTLINED_FUNCTION_1_1(&v8[v156]);
        CVPixelBufferCreate(allocator, v104, v105, 0x42475241u, v119, &v8[v156]);
        swift_endAccess();

        v176.receiver = v8;
        v176.super_class = type metadata accessor for ExtremeDisparity();
        return objc_msgSendSuper2(&v176, sel_init);
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_36:
  result = sub_26431A6F4();
  __break(1u);
  return result;
}

void *sub_264319548(void *result, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_executor;
  v4 = *(v2 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_executor);
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_ADLKTOpticalFlowBuffer;
  result = OUTLINED_FUNCTION_7(v2 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_ADLKTOpticalFlowBuffer, v12);
  if (!*(v2 + v7))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ([v4 executeWithFrame:a2 intoOpticalFlowBuffer:?])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF657A0, &qword_26431BE48);
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_6(v8, xmmword_26431BA70);
  }

  result = *(v2 + v3);
  if (!result)
  {
    goto LABEL_12;
  }

  if (!*(v2 + v7))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if ([result executeWithFrame:v6 intoOpticalFlowBuffer:?])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF657A0, &qword_26431BE48);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_6(v9, xmmword_26431BA70);
  }

  v10 = *(v2 + v7);
  v11 = v10;
  return v10;
}

uint64_t sub_264319698(void *a1, float a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = *(v2 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_library);
  v5 = sub_26431A644();
  v6 = [v4 newFunctionWithName_];

  if (!v6)
  {
    goto LABEL_34;
  }

  v7 = *(v2 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_device);
  *&v54 = 0;
  v8 = [v7 newComputePipelineStateWithFunction:v6 error:&v54];
  v9 = v54;
  if (v8)
  {
    v10 = v8;
    v11 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_normalizeFlowPipelineState;
    *(v2 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_normalizeFlowPipelineState) = v8;
    swift_unknownObjectRetain();
    v12 = v9;
    swift_unknownObjectRelease();
    makeThreadgroups(width:height:pipelineState:)(v10, *(v2 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_analysisWidth), *(v2 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_analysisHeight), &v54);
    v13 = v56;
    v50 = v55;
    v51 = v54;
    swift_unknownObjectRelease();
    v14 = (v2 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_normalizeFlowthreads);
    *v14 = v51;
    v14[1] = v50;
    v14[2] = v13;
    *(v14 + 48) = 0;
    v15 = [objc_opt_self() texture2DDescriptorWithPixelFormat:105 width:objc_msgSend(a1 height:sel_width) mipmapped:objc_msgSend(a1, sel_height), 0];
    [v15 setUsage_];
    [v15 setStorageMode_];
    [v15 setAllowGPUOptimizedContents_];
    v16 = [v7 newTextureWithDescriptor_];
    v17 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_normalizedFlow;
    *(v2 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_normalizedFlow) = v16;
    swift_unknownObjectRelease();
    v18 = [*(v2 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_commandQueue) commandBuffer];
    if (!v18)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v9 = v18;
    v19 = [v18 computeCommandEncoder];
    v20 = v19;
    if (!v19)
    {
LABEL_9:
      v24 = *(v2 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_histogramInfo + 8);
      v25 = *(v2 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_histogramInfo + 16);
      v26 = *(v2 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_histogramInfo + 32);
      *&v54 = *(v2 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_histogramInfo);
      BYTE8(v54) = v24;
      v55 = v25;
      v56 = v26;
      v27 = [objc_allocWithZone(MEMORY[0x277CD7530]) initWithDevice:v7 histogramInfo:&v54];
      v28 = *(v2 + v17);
      if (!v28)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v29 = [v7 newBufferWithLength:objc_msgSend(v27 options:{sel_histogramSizeForSourceFormat_, objc_msgSend(v28, sel_pixelFormat)), 0}];
      if (!*(v2 + v17))
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
      }

      v30 = v29;
      if (!v29)
      {
        goto LABEL_38;
      }

      [v27 encodeToCommandBuffer:v9 sourceTexture:? histogram:? histogramOffset:?];
      [v9 commit];
      [v9 waitUntilCompleted];
      v31 = [swift_unknownObjectRetain() contents];
      v32 = v30;
      v33 = [a1 width];
      v34 = [a1 height];
      if ((v33 * v34) >> 64 == (v33 * v34) >> 63)
      {
        OUTLINED_FUNCTION_4_1();
        if (!(v37 ^ v38 | v36))
        {
          goto LABEL_31;
        }

        if (v35 <= -9.2234e18)
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (v35 >= 9.2234e18)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = v35;
        v43 = (v2 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_opticalFlowMinMax);
        v44 = 0.0;
        v45 = 0.0;
        while (1)
        {
          v46 = *v31;
          v38 = __OFADD__(v40, v46);
          v40 += v46;
          if (v38)
          {
            break;
          }

          v47 = v31[256];
          v38 = __OFADD__(v39, v47);
          v39 += v47;
          if (v38)
          {
            goto LABEL_29;
          }

          if (v40 >= v42 && v45 == 0.0)
          {
            v45 = v43[1] + ((v41 * 0.0039216) * (*v43 - v43[1]));
          }

          if (v39 >= v42 && v44 == 0.0)
          {
            v44 = v43[2] + ((v41 * 0.0039216) * (v43[3] - v43[2]));
          }

          ++v41;
          ++v31;
          if (v41 == 256)
          {
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            return swift_unknownObjectRelease();
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (*(v2 + v11))
    {
      [v19 setComputePipelineState_];
      [v20 setTexture:a1 atIndex:0];
      v21 = *(v2 + v17);
      if (v21)
      {
        [v20 setTexture:v21 atIndex:1];
        v54 = *(v2 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_opticalFlowMinMax);
        [v20 setBytes:&v54 length:16 atIndex:0];
        if ((v14[3] & 1) == 0)
        {
          v22 = *(v14 + 5);
          v23 = *(v14 + 2);
          v54 = *v14;
          *&v55 = v23;
          v52 = *(v14 + 24);
          v53 = v22;
          [v20 dispatchThreadgroups:&v54 threadsPerThreadgroup:&v52];
          [v20 endEncoding];
          goto LABEL_9;
        }

        goto LABEL_41;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  v49 = v9;
  sub_26431A5B4();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_264319C78(__CVBuffer *a1, float a2)
{
  v3 = v2;
  v39 = *MEMORY[0x277D85DE8];
  v6 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_textureCache;
  OUTLINED_FUNCTION_7(v3 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_textureCache, v38);
  v7 = *(v3 + v6);
  if (!v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  CVMetalTextureCacheFlush(v7, 0);
  textureOut = 0;
  v8 = *(v3 + v6);
  if (!v8)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v9 = *MEMORY[0x277CBECE8];
  v10 = *(v3 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_opticalFlowPixelFormat);
  v11 = v8;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  LODWORD(v9) = CVMetalTextureCacheCreateTextureFromImage(v9, v11, a1, 0, v10, Width, Height, 0, &textureOut);

  if (v9)
  {
    sub_26431A6C4();
    MEMORY[0x266735370](0xD000000000000046, 0x800000026431C570);
    v36 = sub_26431A714();
    MEMORY[0x266735370](v36);

    result = sub_26431A6F4();
    __break(1u);
    return result;
  }

  v14 = textureOut;
  if (!textureOut)
  {
    goto LABEL_15;
  }

  v15 = CVMetalTextureGetTexture(v14);
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = sub_264315714(v15);

  swift_unknownObjectRelease();

  sub_264315400(v16);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v3 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_opticalFlowMinMax;
  *v25 = v18;
  *(v25 + 4) = v22;
  *(v25 + 8) = v20;
  *(v25 + 12) = v24;
  v26 = [v16 width];
  v27 = [v16 height];
  if (fabsf(v24) >= fabsf(v20))
  {
    v28 = v24;
  }

  else
  {
    v28 = v20;
  }

  if (a2 >= 1.0)
  {
    v30 = v18 / v26;
    v32 = v28 / v27;
  }

  else
  {
    sub_264319698(v16, a2);
    v30 = v29;
    v32 = v31;
  }

  v33 = objc_allocWithZone(type metadata accessor for Disparity());
  v34 = Disparity.init(horizontal:vertical:)(v30, v32);
  swift_unknownObjectRelease();

  return v34;
}

void sub_264319F7C(__CVBuffer *a1, __CVBuffer *a2, float a3)
{
  v7 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_vtTransferSession;
  OUTLINED_FUNCTION_7(v3 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_vtTransferSession, v22);
  v8 = *(v3 + v7);
  if (!v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_leftBGRAPixelBuffer;
  OUTLINED_FUNCTION_7(v3 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_leftBGRAPixelBuffer, v21);
  v10 = *(v3 + v9);
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  VTPixelTransferSessionTransferImage(v8, a1, v10);
  v11 = *(v3 + v7);
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_rightBGRAPixelBuffer;
  OUTLINED_FUNCTION_7(v3 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_rightBGRAPixelBuffer, v20);
  v13 = *(v3 + v12);
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  VTPixelTransferSessionTransferImage(v11, a2, v13);
  v14 = *(v3 + v9);
  if (!v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = *(v3 + v12);
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  v17 = v14;
  v18 = sub_264319548(v17, v16);

  if (v18)
  {
    v19 = v18;
    sub_264319C78(v19, a3);

    return;
  }

LABEL_15:
  __break(1u);
}

id ExtremeDisparity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_26431A1BC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1)
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_5_0(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a23, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 a24)
{
  result = a24;
  a1[1] = a24;
  return result;
}