@interface VFXWorld
+ (BOOL)canImportFileExtension:(id)extension;
+ (BOOL)canImportFileUTI:(id)i;
+ (VFXWorld)worldWithData:(id)data options:(id)options error:(id *)error;
+ (VFXWorld)worldWithMDLAsset:(id)asset options:(id)options;
+ (VFXWorld)worldWithSCNURL:(id)l options:(id)options error:(id *)error;
+ (VFXWorld)worldWithSceneKitScene:(id)scene options:(id)options;
+ (VFXWorld)worldWithURL:(id)l options:(id)options error:(id *)error;
+ (VFXWorld)worldWithWorldRef:(__CFXWorld *)ref;
+ (id)_indexPathForNode:(id)node;
+ (id)supportedFileUTIsForExport;
+ (id)supportedFileUTIsForImport;
+ (id)world;
+ (id)worldNamed:(id)named inDirectory:(id)directory options:(id)options;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (BOOL)_allowsDefaultLightingEnvironmentFallback;
- (BOOL)initializeCoreEntityManagerWithInfo:(id)info error:(id *)error;
- (BOOL)loadCoreEntityManagerFromURL:(id)l options:(id)options infoOut:(id)out error:(id *)error;
- (BOOL)migrateCoreEntityManagerWithInfo:(id)info error:(id *)error;
- (BOOL)screenSpaceAmbientOcclusionEnableBentNormal;
- (BOOL)wantsScreenSpaceAmbientOcclusion;
- (BOOL)wantsScreenSpaceReflection;
- (BOOL)writeToURL:(id)l options:(id)options progressHandler:(id)handler;
- (BOOL)writeToURLWithUSDKit:(id)kit;
- (NSArray)animationKeys;
- (NSArray)bridgedComponentNames;
- (NSArray)states;
- (VFXBehaviorGraph)behaviorGraph;
- (VFXMaterialProperty)background;
- (VFXMaterialProperty)lightingEnvironment;
- (VFXNode)rootNode;
- (VFXState)state;
- (VFXWorld)initWithCoder:(id)coder;
- (VFXWorld)initWithOptions:(id)options;
- (VFXWorld)initWithWorldRef:(__CFXWorld *)ref;
- (__CFXAnimationManager)animationManager;
- (double)endTime;
- (double)fogColor_linearExtendedSRGB;
- (double)frameRate;
- (double)startTime;
- (float)fogDensityExponent;
- (float)fogEndDistance;
- (float)fogStartDistance;
- (float)playbackSpeed;
- (float)screenSpaceAmbientOcclusionIntensity;
- (float)screenSpaceAmbientOcclusionRadius;
- (float)screenSpaceReflectionObjectThickness;
- (id)_copyAndCompile:(BOOL)compile;
- (id)_exportAsMovieOperationWithDestinationURL:(id)l size:(CGSize)size attributes:(id)attributes delegate:(id)delegate didEndSelector:(SEL)selector userInfo:(void *)info;
- (id)_nodeWithIndexPath:(id)path;
- (id)_physicsWorldCreateIfNeeded:(BOOL)needed;
- (id)_subnodeFromIndexPath:(id)path;
- (id)_vfxAnimationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)assetPathResolver;
- (id)assetRegistry;
- (id)buildIdentifierRemapTable;
- (id)collectCoreEntityHandles;
- (id)copyAnimationChannelForKeyPath:(id)path animation:(id)animation;
- (id)copyAnimationChannelForKeyPath:(id)path property:(id)property;
- (id)dataRepresentationWithOptions:(id)options;
- (id)defaultPointOfView;
- (id)defaultRenderGraph;
- (id)fogColor;
- (id)identifier;
- (id)initForJavascript:(id)javascript;
- (id)initPresentationWorldWithWorldRef:(__CFXWorld *)ref;
- (id)preferredConfiguration;
- (id)presentationScene;
- (id)presentationWorld;
- (id)remapTable;
- (id)root;
- (id)scene;
- (id)shaderCacheConfigurations;
- (id)snapshotWithSize:(CGSize)size pointOfView:(id)view;
- (id)stateManager;
- (id)triggerManager;
- (id)valueForUndefinedKey:(id)key;
- (int)peerPid;
- (int64_t)coreEntity;
- (int64_t)presentationEntityFromModel:(int64_t)model;
- (int64_t)screenSpaceAmbientOcclusionQuality;
- (int64_t)screenSpaceReflectionQuality;
- (int64_t)screenSpaceReflectionThicknessMode;
- (unsigned)peerTaskIdentity;
- (void)_clearWorldRef;
- (void)_copyAnimationsFrom:(id)from;
- (void)_copyBindingsFrom:(id)from;
- (void)_copyInto:(id)into compile:(BOOL)compile;
- (void)_dumpToDisk;
- (void)_mergeWorld:(id)world parentNode:(id)node parentAssetNode:(id)assetNode remapEntities:(BOOL)entities;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_remapEntities:(id)entities srcWorldIdentifier:(id)identifier;
- (void)_remapObjects:(id)objects remapTable:(__CFDictionary *)table;
- (void)_scaleWorldBy:(float)by;
- (void)_sendSignalWithIdentifier:(id)identifier delay:(float)delay;
- (void)_setRootNode:(id)node immediate:(BOOL)immediate;
- (void)_setSourceObject:(id)object forBinding:(id)binding;
- (void)_syncObjCAnimations;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)cleanupPrefabsReferences;
- (void)cloneModelToPresentationAndStartReplicationStream;
- (void)commonInit:(BOOL)init;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAnimationReferencesUsingBlock:(id)block;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)loadMDLAsset:(id)asset options:(id)options context:(id)context;
- (void)loadSCN:(id)n options:(id)options error:(id *)error;
- (void)lock;
- (void)prepareForRenderer:(id)renderer progressHandler:(id)handler;
- (void)prepareWithRenderer:(id)renderer;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)duration;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration;
- (void)replicateToRuntimeAndStartReplicationWithOptions:(id)options;
- (void)resolveVFXCoreAndTagReferences;
- (void)restart;
- (void)setAssetPathResolver:(id)resolver;
- (void)setAuthoringEnvironment2:(id)environment2;
- (void)setBehaviorGraph:(id)graph;
- (void)setDefaultPointOfView:(id)view;
- (void)setDefaultRenderGraph:(id)graph;
- (void)setEndTime:(double)time;
- (void)setFogColor:(id)color;
- (void)setFogColor_linearExtendedSRGB:(VFXWorld *)self;
- (void)setFogDensityExponent:(float)exponent;
- (void)setFogEndDistance:(float)distance;
- (void)setFogStartDistance:(float)distance;
- (void)setFrameRate:(double)rate;
- (void)setIdentifier:(id)identifier;
- (void)setPeerPid:(int)pid;
- (void)setPeerTaskIdentity:(unsigned int)identity;
- (void)setPlaybackSpeed:(float)speed;
- (void)setReplicationDelegate:(id)delegate;
- (void)setRootNode:(id)node forLayer:(int)layer;
- (void)setScreenSpaceAmbientOcclusionEnableBentNormal:(BOOL)normal;
- (void)setScreenSpaceAmbientOcclusionIntensity:(float)intensity;
- (void)setScreenSpaceAmbientOcclusionQuality:(int64_t)quality;
- (void)setScreenSpaceAmbientOcclusionRadius:(float)radius;
- (void)setScreenSpaceReflectionObjectThickness:(float)thickness;
- (void)setScreenSpaceReflectionQuality:(int64_t)quality;
- (void)setScreenSpaceReflectionThicknessMode:(int64_t)mode;
- (void)setShaderCacheConfigurations:(id)configurations;
- (void)setStartTime:(double)time;
- (void)setState:(id)state;
- (void)setStateNamed:(id)named;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)setWantsScreenSpaceAmbientOcclusion:(BOOL)occlusion;
- (void)setWantsScreenSpaceReflection:(BOOL)reflection;
- (void)set_allowsDefaultLightingEnvironmentFallback:(BOOL)fallback;
- (void)startRuntimeThread;
- (void)stopReplication;
- (void)unbindAnimatablePath:(id)path;
- (void)unlock;
- (void)updateMemoryOwnership;
@end

@implementation VFXWorld

- (void)loadMDLAsset:(id)asset options:(id)options context:(id)context
{
  v396 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = objc_opt_new();
  v359 = objc_opt_new();
  objc_msgSend_upAxis(asset, v10, v11);
  v369 = v12;
  v15 = objc_msgSend_worldRef(self, v13, v14);
  sub_1AF1CFC90(v15, v16, v369);
  obj = asset;
  objc_msgSend_metersPerUnit(asset, v17, v18);
  v351 = v21;
  if (*&v21 != 0.0)
  {
    v22 = objc_msgSend_worldRef(self, v19, v20);
    sub_1AF1CFBF4(v22, v23, 1.0 / *&v351);
  }

  v24 = objc_msgSend_valueForKey_(options, v19, @"kVFXSceneSourceConvertToUnit");
  v28 = v24;
  if (v24)
  {
    objc_msgSend_floatValue(v24, v25, v26);
    *&v27 = *&v351 * *&v27;
  }

  else
  {
    LODWORD(v27) = 1.0;
  }

  v370 = v27;
  v352 = v28;
  v356 = v9;
  v384[0] = 0;
  v384[1] = 0;
  v383 = v384;
  v379 = 0u;
  v380 = 0u;
  v381 = 0u;
  v382 = 0u;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v379, v394, 16);
  if (v30)
  {
    v31 = *v380;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v380 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = objc_msgSend_nodeWithMDLObject_masterObjects_worldNodes_skinnedMeshes_skelNodesMap_asset_options_context_mpuScale_(VFXNode, v29, *(*(&v379 + 1) + 8 * i), v8, v356, v359, &v383, obj, v370, options, context);
        v36 = objc_msgSend_rootNode(self, v34, v35);
        objc_msgSend_addChildNode_(v36, v37, v33);
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v379, v394, 16);
    }

    while (v30);
  }

  v377 = 0u;
  v378 = 0u;
  v375 = 0u;
  v376 = 0u;
  v39 = v356;
  v40 = v352;
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v359, v38, &v375, v393, 16);
  if (v43)
  {
    v44 = *v376;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v376 != v44)
        {
          objc_enumerationMutation(v359);
        }

        v46 = *(*(&v375 + 1) + 8 * j);
        v47 = objc_msgSend_path(v46, v41, v42);
        v49 = objc_msgSend_objectForKeyedSubscript_(v356, v48, v47);
        if (v49)
        {
          objc_msgSend__addSkinnerWithMDLMesh_worldNodes_(v49, v41, v46, v356);
        }
      }

      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v359, v41, &v375, v393, 16);
    }

    while (v43);
  }

  v50 = objc_msgSend_animations(obj, v41, v42);
  if (objc_msgSend_count(v50, v51, v52))
  {
    v354 = 0;
    v355 = objc_opt_new();
    selfCopy = self;
    v363 = *MEMORY[0x1E69797E0];
    while (1)
    {
      v56 = objc_msgSend_animations(obj, v54, v55);
      if (v354 >= objc_msgSend_count(v56, v57, v58))
      {
        break;
      }

      v60 = objc_msgSend_animations(obj, v53, v59);
      v62 = objc_msgSend_objectAtIndexedSubscript_(v60, v61, v354);
      if (v62)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v368 = v62;
          v63 = objc_msgSend_jointPaths(v62, v54, v55);
          v66 = objc_msgSend_count(v63, v64, v65);
          if (v66)
          {
            v67 = objc_msgSend_valueForKey_(options, v54, @"kSceneSourceAnimationLoadingMode");
            v70 = v67;
            if (v67)
            {
              if (objc_msgSend_isEqualToString_(v67, v68, @"playOnce"))
              {
                v353 = 1;
                v71 = 0.0;
              }

              else
              {
                v353 = 0;
                if (objc_msgSend_isEqualToString_(v70, v68, @"keepSeparate"))
                {
                  v71 = 0.0;
                }

                else
                {
                  v71 = INFINITY;
                }
              }
            }

            else
            {
              v353 = 0;
              v71 = INFINITY;
            }

            memptr = 0;
            v390 = 0;
            v389 = 0;
            v72 = objc_msgSend_translations(v368, v68, v69);
            v365 = objc_msgSend_keyTimes(v72, v73, v74);
            v77 = objc_msgSend_rotations(v368, v75, v76);
            v367 = objc_msgSend_keyTimes(v77, v78, v79);
            v82 = objc_msgSend_scales(v368, v80, v81);
            v366 = objc_msgSend_keyTimes(v82, v83, v84);
            v87 = v367 != 0;
            if (v365)
            {
              ++v87;
            }

            if (v366)
            {
              v88 = v87 + 1;
            }

            else
            {
              v88 = v87;
            }

            v89 = objc_msgSend_count(v365, v85, v86);
            v92 = objc_msgSend_count(v367, v90, v91);
            v97 = objc_msgSend_count(v366, v93, v94);
            v98 = v89 * v66;
            if (v365)
            {
              malloc_type_posix_memalign(&memptr, 0x10uLL, 16 * v98, 0x1000040451B5BE8uLL);
            }

            v99 = v92 * v66;
            if (v367)
            {
              malloc_type_posix_memalign(&v390, 0x10uLL, 16 * v99, 0x1000040451B5BE8uLL);
            }

            v100 = v97 * v66;
            if (v366)
            {
              malloc_type_posix_memalign(&v389, 0x10uLL, 16 * v100, 0x1000040451B5BE8uLL);
            }

            if (memptr)
            {
              v101 = objc_msgSend_translations(v368, v95, v96);
              objc_msgSend_getFloat3Array_maxCount_(v101, v102, memptr, v98);
            }

            if (v390)
            {
              v103 = objc_msgSend_rotations(v368, v95, v96);
              objc_msgSend_getFloatQuaternionArray_maxCount_(v103, v104, v390, v99);
            }

            if (v389)
            {
              v105 = objc_msgSend_scales(v368, v95, v96);
              objc_msgSend_getFloat3Array_maxCount_(v105, v106, v389, v100);
            }

            v107 = objc_msgSend_translations(v368, v95, v96);
            objc_msgSend_maximumTime(v107, v108, v109);
            v111 = v110;
            v114 = objc_msgSend_translations(v368, v112, v113);
            objc_msgSend_minimumTime(v114, v115, v116);
            v118 = v117;
            v121 = objc_msgSend_rotations(v368, v119, v120);
            objc_msgSend_maximumTime(v121, v122, v123);
            v125 = v124;
            v128 = objc_msgSend_rotations(v368, v126, v127);
            objc_msgSend_minimumTime(v128, v129, v130);
            v132 = v131;
            v135 = objc_msgSend_scales(v368, v133, v134);
            objc_msgSend_maximumTime(v135, v136, v137);
            v139 = v138;
            v142 = objc_msgSend_scales(v368, v140, v141);
            objc_msgSend_minimumTime(v142, v143, v144);
            v146 = v145;
            v147 = MEMORY[0x1E695DF70];
            v150 = objc_msgSend_jointPaths(v368, v148, v149);
            v153 = objc_msgSend_count(v150, v151, v152);
            v364 = objc_msgSend_arrayWithCapacity_(v147, v154, v153 * v88);
            v387 = 0u;
            v388 = 0u;
            v385 = 0u;
            v386 = 0u;
            v157 = objc_msgSend_jointPaths(v368, v155, v156);
            v159 = objc_msgSend_countByEnumeratingWithState_objects_count_(v157, v158, &v385, v395, 16);
            v161 = v111 - v118;
            v162 = v125 - v132;
            if (v159)
            {
              v163 = 0;
              v360 = *v386;
              v164 = 16 * v66;
              v358 = v157;
              do
              {
                v165 = 0;
                v166 = 16 * v163;
                v361 = v159;
                do
                {
                  if (*v386 != v360)
                  {
                    objc_enumerationMutation(v358);
                  }

                  v167 = *(*(&v385 + 1) + 8 * v165);
                  if (v365)
                  {
                    v168 = MEMORY[0x1E696AEC0];
                    v170 = objc_msgSend_rangeOfString_options_(*(*(&v385 + 1) + 8 * v165), v160, @"/", 4);
                    v171 = v167;
                    if (v170 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v171 = objc_msgSend_substringFromIndex_(v167, v169, v170 + 1);
                    }

                    v172 = objc_msgSend_stringWithFormat_(v168, v169, @"/%@.position", v171);
                    v174 = objc_msgSend_animationWithKeyPath_(MEMORY[0x1E6979390], v173, v172);
                    objc_msgSend_setDuration_(v174, v175, v176, v161);
                    v179 = objc_msgSend_translations(v368, v177, v178);
                    objc_msgSend_minimumTime(v179, v180, v181);
                    v183 = v182;
                    v186 = objc_msgSend_translations(v368, v184, v185);
                    objc_msgSend_minimumTime(v186, v187, v188);
                    objc_msgSend_setBeginTime_(v174, v190, v191, v183 - v189);
                    v194 = objc_msgSend_translations(v368, v192, v193);
                    objc_msgSend_minimumTime(v194, v195, v196);
                    v200 = sub_1AF2F82C0(v365, v199, v161, v197, v198);
                    objc_msgSend_setKeyTimes_(v174, v201, v200);
                    v202 = memptr;
                    v205 = objc_msgSend_count(v365, v203, v204);
                    v209 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v206, v205);
                    if (v205 >= 1)
                    {
                      v210 = &v202[v166];
                      do
                      {
                        v211 = objc_msgSend_valueWithVFXFloat3_(MEMORY[0x1E696B098], v207, v208, *vmulq_n_f32(*v210, *&v370).i64);
                        objc_msgSend_addObject_(v209, v212, v211);
                        v210 = (v210 + v164);
                        --v205;
                      }

                      while (v205);
                    }

                    objc_msgSend_setValues_(v174, v207, v209);
                    objc_msgSend_setFillMode_(v174, v213, v363);
                    objc_msgSend_setRemovedOnCompletion_(v174, v214, 0);
                    objc_msgSend_addObject_(v364, v215, v174);
                  }

                  if (v367)
                  {
                    v216 = MEMORY[0x1E6979390];
                    v217 = MEMORY[0x1E696AEC0];
                    v219 = objc_msgSend_rangeOfString_options_(v167, v160, @"/", 4);
                    v220 = v167;
                    if (v219 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v220 = objc_msgSend_substringFromIndex_(v167, v218, v219 + 1);
                    }

                    v221 = objc_msgSend_stringWithFormat_(v217, v218, @"/%@.orientation", v220);
                    v223 = objc_msgSend_animationWithKeyPath_(v216, v222, v221);
                    objc_msgSend_setDuration_(v223, v224, v225, v162);
                    v228 = objc_msgSend_rotations(v368, v226, v227);
                    objc_msgSend_minimumTime(v228, v229, v230);
                    v232 = v231;
                    v235 = objc_msgSend_rotations(v368, v233, v234);
                    objc_msgSend_minimumTime(v235, v236, v237);
                    objc_msgSend_setBeginTime_(v223, v239, v240, v232 - v238);
                    v243 = objc_msgSend_rotations(v368, v241, v242);
                    objc_msgSend_minimumTime(v243, v244, v245);
                    v249 = sub_1AF2F82C0(v367, v248, v162, v246, v247);
                    objc_msgSend_setKeyTimes_(v223, v250, v249);
                    v251 = v390;
                    v254 = objc_msgSend_count(v367, v252, v253);
                    v258 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v255, v254);
                    if (v254 >= 1)
                    {
                      do
                      {
                        v259 = objc_msgSend_valueWithVFXFloat4_(MEMORY[0x1E696B098], v256, v257, *&v251[v166]);
                        objc_msgSend_addObject_(v258, v260, v259);
                        v251 += v164;
                        --v254;
                      }

                      while (v254);
                    }

                    objc_msgSend_setValues_(v223, v256, v258);
                    objc_msgSend_setFillMode_(v223, v261, v363);
                    objc_msgSend_setRemovedOnCompletion_(v223, v262, 0);
                    objc_msgSend_addObject_(v364, v263, v223);
                  }

                  if (v366)
                  {
                    v264 = MEMORY[0x1E6979390];
                    v265 = MEMORY[0x1E696AEC0];
                    v266 = objc_msgSend_rangeOfString_options_(v167, v160, @"/", 4);
                    if (v266 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v167 = objc_msgSend_substringFromIndex_(v167, v267, v266 + 1);
                    }

                    v268 = objc_msgSend_stringWithFormat_(v265, v267, @"/%@.scale", v167);
                    v270 = objc_msgSend_animationWithKeyPath_(v264, v269, v268);
                    objc_msgSend_setDuration_(v270, v271, v272, v139 - v146);
                    v275 = objc_msgSend_scales(v368, v273, v274);
                    objc_msgSend_minimumTime(v275, v276, v277);
                    v279 = v278;
                    v282 = objc_msgSend_scales(v368, v280, v281);
                    objc_msgSend_minimumTime(v282, v283, v284);
                    objc_msgSend_setBeginTime_(v270, v286, v287, v279 - v285);
                    v290 = objc_msgSend_scales(v368, v288, v289);
                    objc_msgSend_minimumTime(v290, v291, v292);
                    v296 = sub_1AF2F82C0(v366, v295, v139 - v146, v293, v294);
                    objc_msgSend_setKeyTimes_(v270, v297, v296);
                    v298 = v389;
                    v301 = objc_msgSend_count(v366, v299, v300);
                    v305 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v302, v301);
                    if (v301 >= 1)
                    {
                      do
                      {
                        v306 = objc_msgSend_valueWithVFXFloat3_(MEMORY[0x1E696B098], v303, v304, *&v298[v166]);
                        objc_msgSend_addObject_(v305, v307, v306);
                        v298 += v164;
                        --v301;
                      }

                      while (v301);
                    }

                    objc_msgSend_setValues_(v270, v303, v305);
                    objc_msgSend_setFillMode_(v270, v308, v363);
                    objc_msgSend_setRemovedOnCompletion_(v270, v309, 0);
                    objc_msgSend_addObject_(v364, v310, v270);
                  }

                  ++v163;
                  ++v165;
                  v166 += 16;
                }

                while (v165 != v361);
                v159 = objc_msgSend_countByEnumeratingWithState_objects_count_(v358, v160, &v385, v395, 16);
              }

              while (v159);
            }

            free(memptr);
            free(v390);
            free(v389);
            self = selfCopy;
            v39 = v356;
            v40 = v352;
            v313 = objc_msgSend_animation(MEMORY[0x1E6979308], v311, v312);
            objc_msgSend_setAnimations_(v313, v314, v364);
            objc_msgSend_setFillMode_(v313, v315, v363);
            *&v316 = v71;
            objc_msgSend_setRepeatCount_(v313, v317, v318, v316);
            objc_msgSend_setRemovedOnCompletion_(v313, v319, v353);
            if (v161 >= v162)
            {
              v322 = v161;
            }

            else
            {
              v322 = v162;
            }

            if (v322 < v139 - v146)
            {
              v322 = v139 - v146;
            }

            objc_msgSend_setDuration_(v313, v320, v321, v322);
            if (v313)
            {
              v323 = objc_msgSend_animationWithCAAnimation_(VFXAnimation, v54, v313);
              v326 = objc_msgSend_name(v368, v324, v325);
              objc_msgSend_setObject_forKeyedSubscript_(v355, v327, v323, v326);
            }
          }
        }
      }

      ++v354;
    }
  }

  else
  {
    v355 = 0;
  }

  v373 = 0u;
  v374 = 0u;
  v371 = 0u;
  v372 = 0u;
  v328 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v53, &v371, v392, 16);
  if (v328)
  {
    v329 = *v372;
    do
    {
      for (k = 0; k != v328; ++k)
      {
        if (*v372 != v329)
        {
          objc_enumerationMutation(obj);
        }

        sub_1AF2EF1F8(*(*(&v371 + 1) + 8 * k), v39, obj, v355, &v383);
      }

      v328 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v331, &v371, v392, 16);
    }

    while (v328);
  }

  v332 = v383;
  if (v383 != v384)
  {
    do
    {
      v333 = v332[5];
      if (v333)
      {
      }

      v334 = v332[1];
      if (v334)
      {
        do
        {
          v335 = v334;
          v334 = *v334;
        }

        while (v334);
      }

      else
      {
        do
        {
          v335 = v332[2];
          v336 = *v335 == v332;
          v332 = v335;
        }

        while (!v336);
      }

      v332 = v335;
    }

    while (v335 != v384);
  }

  if (v355)
  {
  }

  LODWORD(v339) = 1.0;
  v340 = v351;
  if (*&v351 != 1.0 && !v40)
  {
    v341 = objc_msgSend_rootNode(self, v337, v338, v339, v351);
    objc_msgSend_setScale_(v341, v342, v343, *vdupq_lane_s32(*&v351, 0).i64);
  }

  objc_msgSend_startTime(obj, v337, v338, v339, v340);
  objc_msgSend_setStartTime_(self, v344, v345);
  objc_msgSend_endTime(obj, v346, v347);
  objc_msgSend_setEndTime_(self, v348, v349);
  sub_1AF2F8B50(v384[0]);
}

+ (VFXWorld)worldWithMDLAsset:(id)asset options:(id)options
{
  v6 = objc_alloc_init(self);
  v9 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
  objc_msgSend_loadMDLAsset_options_context_(v6, v10, asset, options, v9);

  return v6;
}

- (void)loadSCN:(id)n options:(id)options error:(id *)error
{
  v9 = objc_autoreleasePoolPush();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  v12 = objc_msgSend_sceneWithURL_options_error_(MEMORY[0x1E697A8C8], v11, n, options, error);
  v13 = *error;
  objc_msgSend_begin(VFXTransaction, v14, v15);
  objc_msgSend_setImmediateMode_(VFXTransaction, v16, 1);
  PathComponent = objc_msgSend_URLByDeletingLastPathComponent(n, v17, v18);
  objc_msgSend_setValue_forKey_(VFXTransaction, v20, PathComponent, @"VFXWorldDecodingCurrentEnclosingFolder");
  v22 = objc_msgSend_objectForKeyedSubscript_(options, v21, @"VFXSceneKitBridgeOptionSkipLightIntensityRemapping");
  v25 = objc_msgSend_BOOLValue(v22, v23, v24);
  sub_1AF325FDC(self, v12, Mutable, v25, n);
  objc_msgSend_commit(VFXTransaction, v26, v27);
  CFRelease(Mutable);
  objc_autoreleasePoolPop(v9);
  v28 = *error;

  v29 = v28;
}

+ (VFXWorld)worldWithSceneKitScene:(id)scene options:(id)options
{
  v7 = objc_autoreleasePoolPush();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  objc_msgSend_begin(VFXTransaction, v9, v10);
  objc_msgSend_setImmediateMode_(VFXTransaction, v11, 1);
  v12 = objc_alloc_init(self);
  v14 = objc_msgSend_objectForKeyedSubscript_(options, v13, @"VFXSceneKitBridgeOptionOriginalURL");
  PathComponent = objc_msgSend_URLByDeletingLastPathComponent(v14, v15, v16);
  objc_msgSend_setValue_forKey_(VFXTransaction, v18, PathComponent, @"VFXWorldDecodingCurrentEnclosingFolder");
  v20 = objc_msgSend_objectForKeyedSubscript_(options, v19, @"VFXSceneKitBridgeOptionSkipLightIntensityRemapping");
  v23 = objc_msgSend_BOOLValue(v20, v21, v22);
  sub_1AF325FDC(v12, scene, Mutable, v23, 0);
  objc_msgSend_commit(VFXTransaction, v24, v25);
  CFRelease(Mutable);
  objc_autoreleasePoolPop(v7);

  return v12;
}

+ (VFXWorld)worldWithSCNURL:(id)l options:(id)options error:(id *)error
{
  v8 = objc_msgSend_world(VFXWorld, a2, l);
  objc_msgSend_loadSCN_options_error_(v8, v9, l, options, error);
  return v8;
}

- (BOOL)writeToURLWithUSDKit:(id)kit
{
  v84 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_pathExtension(kit, a2, kit);
  v8 = objc_msgSend_lowercaseString(v5, v6, v7);
  if ((objc_msgSend_isEqualToString_(v8, v9, @"usd") & 1) == 0 && (objc_msgSend_isEqualToString_(v8, v10, @"usda") & 1) == 0 && (objc_msgSend_isEqualToString_(v8, v10, @"usdc") & 1) == 0 && !objc_msgSend_isEqualToString_(v8, v10, @"usdz"))
  {
    goto LABEL_16;
  }

  if (qword_1EB658D20 != -1)
  {
    sub_1AFDF9248();
  }

  if (byte_1EB658D28 == 1)
  {
    v12 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v10, v11);
    error = objc_msgSend_URLForDirectory_inDomain_appropriateForURL_create_error_(v12, v13, 99, 1, kit, 1, 0);
    PathComponent = objc_msgSend_lastPathComponent(kit, v15, v16);
    v19 = objc_msgSend_URLByAppendingPathComponent_(error, v18, PathComponent);
    if (objc_msgSend_isEqualToString_(v8, v20, @"usdz"))
    {
      v23 = objc_msgSend_URLByDeletingPathExtension(v19, v21, v22);
      v19 = objc_msgSend_URLByAppendingPathExtension_(v23, v24, @"usdc");
    }

    objc_msgSend_flush(VFXTransaction, v21, v22);
    v27 = objc_msgSend_URLByDeletingPathExtension(kit, v25, v26);
    v30 = objc_msgSend_lastPathComponent(v27, v28, v29);
    if (!v30 || (v33 = v30, objc_msgSend_isEqualToString_(v30, v31, &stru_1F2575650)))
    {
      v33 = @"root_node";
    }

    v34 = objc_msgSend_path(error, v31, v32);
    sub_1AF338864(v82, self, v33, v19, v34);
    v77 = sub_1AF337CB8(v82, v19);
    v37 = objc_msgSend_URLByDeletingLastPathComponent(kit, v35, v36);
    v40 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v38, v39);
    DirectoryAtURL_withIntermediateDirectories_attributes_error = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v40, v41, v37, 1, 0, 0);
    if (DirectoryAtURL_withIntermediateDirectories_attributes_error)
    {
      if (objc_msgSend_isEqualToString_(v8, v42, @"usdz"))
      {
        objc_msgSend_saveAndCreateUSDZPackageWithURL_(v77, v44, kit);
      }

      else
      {
        objc_msgSend_save(v77, v44, v45);
        v48 = objc_msgSend_path(kit, v46, v47);
        if (objc_msgSend_fileExistsAtPath_(v40, v49, v48))
        {
          objc_msgSend_removeItemAtURL_error_(v40, v50, kit, 0);
        }

        v52 = objc_msgSend_URLByDeletingLastPathComponent(kit, v50, v51);
        v55 = objc_msgSend_path(v52, v53, v54);
        v58 = objc_msgSend_path(error, v56, v57);
        v60 = objc_msgSend_enumeratorAtPath_(v40, v59, v58);
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, &v78, v83, 16);
        if (v64)
        {
          v65 = *v79;
          do
          {
            for (i = 0; i != v64; ++i)
            {
              if (*v79 != v65)
              {
                objc_enumerationMutation(v60);
              }

              v67 = *(*(&v78 + 1) + 8 * i);
              v68 = objc_msgSend_path(error, v62, v63);
              v70 = objc_msgSend_stringByAppendingPathComponent_(v68, v69, v67);
              v72 = objc_msgSend_stringByAppendingPathComponent_(v55, v71, v67);
              if (objc_msgSend_fileExistsAtPath_(v40, v73, v72))
              {
                objc_msgSend_removeItemAtPath_error_(v40, v74, v72, 0);
              }

              objc_msgSend_moveItemAtPath_toPath_error_(v40, v74, v70, v72, 0);
            }

            v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v62, &v78, v83, 16);
          }

          while (v64);
        }
      }
    }

    objc_msgSend_removeItemAtURL_error_(v40, v75, error, 0);
    sub_1AF3450A0(v82);
  }

  else
  {
LABEL_16:
    LOBYTE(DirectoryAtURL_withIntermediateDirectories_attributes_error) = 0;
  }

  return DirectoryAtURL_withIntermediateDirectories_attributes_error;
}

- (id)initPresentationWorldWithWorldRef:(__CFXWorld *)ref
{
  v10.receiver = self;
  v10.super_class = VFXWorld;
  v4 = [(VFXWorld *)&v10 init];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_commonInit_(v4, v5, 0);
    *(v6 + 16) |= 1u;
    v7 = CFRetain(ref);
    v6->_world = v7;
    objc_msgSend_setWorld_(v6->_clock, v8, v7);
  }

  return v6;
}

- (id)presentationWorld
{
  result = self->_presentationObject;
  if (!result)
  {
    v4 = objc_alloc(objc_opt_class());
    result = objc_msgSend_initPresentationWorldWithWorldRef_(v4, v5, self->_world);
    self->_presentationObject = result;
  }

  return result;
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  v44 = *MEMORY[0x1E69E9840];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = objc_msgSend_physicsWorld(self, a2, operation);
  v9 = objc_msgSend_physicsJoints(v6, v7, v8);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v39, v43, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v40;
    do
    {
      v16 = 0;
      do
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(v9);
        }

        (*(block + 2))(block, *(*(&v39 + 1) + 8 * v16++), 0, 0);
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v17, &v39, v43, 16);
    }

    while (v14);
  }

  v18 = objc_msgSend_rootNode(self, v12, v13);
  (*(block + 2))(block, v18, 0, 0);
  v21 = objc_msgSend_assets(self, v19, v20);
  (*(block + 2))(block, v21, 0, 0);
  v24 = objc_msgSend_stateManager(self, v22, v23);
  (*(block + 2))(block, v24, 0, 0);
  v27 = objc_msgSend_defaultRenderGraph(self, v25, v26);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = sub_1AF34580C;
  v38[3] = &unk_1E7A7C0C8;
  v38[4] = self;
  (*(block + 2))(block, v27, 1, v38);
  v30 = objc_msgSend_defaultPointOfView(self, v28, v29);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_1AF345818;
  v37[3] = &unk_1E7A7C0C8;
  v37[4] = self;
  (*(block + 2))(block, v30, 1, v37);
  v33 = objc_msgSend_background(self, v31, v32);
  (*(block + 2))(block, v33, 0, 0);
  v36 = objc_msgSend_lightingEnvironment(self, v34, v35);
  (*(block + 2))(block, v36, 0, 0);
}

- (void)_remapObjects:(id)objects remapTable:(__CFDictionary *)table
{
  rootNode = self->_rootNode;
  self->_rootNode = objects;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF3458AC;
  v6[3] = &unk_1E7A7E680;
  v6[4] = table;
  sub_1AF345368(self, 0, v6);
  self->_rootNode = rootNode;
}

- (void)_remapEntities:(id)entities srcWorldIdentifier:(id)identifier
{
  v7 = sub_1AFDF5014(entities);
  v8 = sub_1AFDF4FDC(entities);
  CFDictionaryApplyFunction(v8, sub_1AF345A34, v7);
  v11 = objc_msgSend_scene(self, v9, v10);
  objc_msgSend_remapEntityReferences_duplicating_(v11, v12, v7, 1);
  v13 = sub_1AFDF5054(entities);
  objc_msgSend_setValue_forKey_(v13, v14, self, identifier);
  v17 = objc_msgSend_scene(self, v15, v16);
  objc_msgSend_resolveObjectReferencesWithRemapTableWithWorld_objectsByIdentifier_(v17, v18, self, v13);
  v21 = objc_msgSend_defaultRenderGraph(self, v19, v20);
  v24 = v21;
  if (v21)
  {
    v25 = objc_msgSend_authoringGraph(v21, v22, v23);
    if (v25)
    {
      sub_1AF3C4B38(v25, v7);
    }
  }

  v26 = objc_msgSend_assetRegistry(self, v22, v23);
  v29 = objc_msgSend_rootNode(v26, v27, v28);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_1AF345AC0;
  v31[3] = &unk_1E7A7F398;
  v31[4] = v24;
  v31[5] = v7;
  objc_msgSend_enumerateHierarchyUsingBlock_(v29, v30, v31);
}

- (id)_copyAndCompile:(BOOL)compile
{
  compileCopy = compile;
  v29[1] = *MEMORY[0x1E69E9840];
  objc_msgSend_begin(VFXTransaction, a2, compile);
  objc_msgSend_lock(self, v5, v6);
  v7 = sub_1AF1CFF64(self->_world, 4);
  v8 = objc_alloc(objc_opt_class());
  v28 = @"kWorldInitOptionForRERendering";
  v29[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v9, v7);
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, v29, &v28, 1);
  v15 = objc_msgSend_initWithOptions_(v8, v12, v11);
  if (v7)
  {
    v16 = objc_msgSend_peerPid(self, v13, v14);
    objc_msgSend_setPeerPid_(v15, v17, v16);
    v20 = objc_msgSend_peerTaskIdentity(self, v18, v19);
    objc_msgSend_setPeerTaskIdentity_(v15, v21, v20);
    objc_msgSend__copyInto_compile_(self, v22, v15, compileCopy);
    objc_msgSend_updateMemoryOwnership(v15, v23, v24);
  }

  else
  {
    objc_msgSend__copyInto_compile_(self, v13, v15, compileCopy);
  }

  objc_msgSend_commit(VFXTransaction, v25, v26);
  return v15;
}

- (void)_copyInto:(id)into compile:(BOOL)compile
{
  compileCopy = compile;
  v207 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_assetPathResolver(self, a2, into);
  objc_msgSend_setAssetPathResolver_(into, v7, v6);
  v8 = objc_alloc_init(VFXCopyContext);
  v9 = sub_1AFDF4FDC(v8);
  CFDictionaryAddValue(v9, self, into);
  v12 = objc_msgSend_assetRegistry(self, v10, v11);
  v15 = objc_msgSend_rootNode(v12, v13, v14);
  v18 = objc_msgSend_childNodes(v15, v16, v17);
  v21 = objc_msgSend_assetRegistry(into, v19, v20);
  v24 = objc_msgSend_rootNode(v21, v22, v23);
  v27 = objc_msgSend_assetRegistry(into, v25, v26);
  objc_msgSend_setWorld_(v27, v28, 0);
  v203 = 0u;
  v204 = 0u;
  v201 = 0u;
  v202 = 0u;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v29, &v201, v206, 16);
  if (v30)
  {
    v31 = v30;
    v32 = *v202;
    do
    {
      v33 = 0;
      do
      {
        if (*v202 != v32)
        {
          objc_enumerationMutation(v18);
        }

        sub_1AF34624C(*(*(&v201 + 1) + 8 * v33++), v24, v8);
      }

      while (v31 != v33);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v34, &v201, v206, 16);
    }

    while (v31);
  }

  v200[0] = MEMORY[0x1E69E9820];
  v200[1] = 3221225472;
  v200[2] = sub_1AF346410;
  v200[3] = &unk_1E7A7E680;
  v200[4] = v9;
  sub_1AF345368(v24, 0, v200);
  v37 = objc_msgSend_rootNode(self, v35, v36);
  v39 = objc_msgSend__deepCloneWithContext_(v37, v38, v8);
  v42 = objc_msgSend_physicsWorld(self, v40, v41);
  v45 = objc_msgSend_physicsJoints(v42, v43, v44);
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v196, v205, 16);
  if (v47)
  {
    v50 = v47;
    v51 = *v197;
    do
    {
      v52 = 0;
      do
      {
        if (*v197 != v51)
        {
          objc_enumerationMutation(v45);
        }

        v53 = sub_1AF2BED30(*(*(&v196 + 1) + 8 * v52), v8);
        v56 = objc_msgSend_physicsWorld(into, v54, v55);
        objc_msgSend_addPhysicsJoint_(v56, v57, v53);
        ++v52;
      }

      while (v50 != v52);
      v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v58, &v196, v205, 16);
    }

    while (v50);
  }

  v59 = objc_msgSend_background(into, v48, v49);
  v62 = objc_msgSend_background(self, v60, v61);
  objc_msgSend_copyPropertiesFrom_copyContext_(v59, v63, v62, 0);
  v66 = objc_msgSend_lightingEnvironment(into, v64, v65);
  v69 = objc_msgSend_lightingEnvironment(self, v67, v68);
  objc_msgSend_copyPropertiesFrom_copyContext_(v66, v70, v69, 0);
  v73 = objc_msgSend_background(self, v71, v72);
  v76 = objc_msgSend_background(into, v74, v75);
  CFDictionarySetValue(v9, v73, v76);
  v79 = objc_msgSend_lightingEnvironment(self, v77, v78);
  v82 = objc_msgSend_lightingEnvironment(into, v80, v81);
  CFDictionarySetValue(v9, v79, v82);
  v85 = objc_msgSend_behaviorGraph(self, v83, v84);
  v86 = sub_1AF2BED30(v85, v8);
  objc_msgSend_setBehaviorGraph_(into, v87, v86);
  v90 = objc_msgSend_physicsWorld(self, v88, v89);
  v93 = objc_msgSend_physicsWorld(into, v91, v92);
  objc_msgSend_copyTo_withContext_(v90, v94, v93, v8);
  objc_msgSend_endTime(self, v95, v96);
  objc_msgSend_setEndTime_(into, v97, v98);
  objc_msgSend_startTime(self, v99, v100);
  objc_msgSend_setStartTime_(into, v101, v102);
  objc_msgSend_fogStartDistance(self, v103, v104);
  objc_msgSend_setFogStartDistance_(into, v105, v106);
  objc_msgSend_fogEndDistance(self, v107, v108);
  objc_msgSend_setFogEndDistance_(into, v109, v110);
  objc_msgSend_fogDensityExponent(self, v111, v112);
  objc_msgSend_setFogDensityExponent_(into, v113, v114);
  v117 = objc_msgSend_fogColor(self, v115, v116);
  objc_msgSend_setFogColor_(into, v118, v117);
  v121 = objc_msgSend_wantsScreenSpaceAmbientOcclusion(self, v119, v120);
  objc_msgSend_setWantsScreenSpaceAmbientOcclusion_(into, v122, v121);
  objc_msgSend_screenSpaceAmbientOcclusionIntensity(self, v123, v124);
  objc_msgSend_setScreenSpaceAmbientOcclusionIntensity_(into, v125, v126);
  objc_msgSend_screenSpaceAmbientOcclusionRadius(self, v127, v128);
  objc_msgSend_setScreenSpaceAmbientOcclusionRadius_(into, v129, v130);
  v133 = objc_msgSend_screenSpaceAmbientOcclusionEnableBentNormal(self, v131, v132);
  objc_msgSend_setScreenSpaceAmbientOcclusionEnableBentNormal_(into, v134, v133);
  v137 = objc_msgSend_screenSpaceAmbientOcclusionQuality(self, v135, v136);
  objc_msgSend_setScreenSpaceAmbientOcclusionQuality_(into, v138, v137);
  v141 = objc_msgSend_wantsScreenSpaceReflection(self, v139, v140);
  objc_msgSend_setWantsScreenSpaceReflection_(into, v142, v141);
  v145 = objc_msgSend_screenSpaceReflectionQuality(self, v143, v144);
  objc_msgSend_setScreenSpaceReflectionQuality_(into, v146, v145);
  v149 = objc_msgSend_screenSpaceReflectionThicknessMode(self, v147, v148);
  objc_msgSend_setScreenSpaceReflectionThicknessMode_(into, v150, v149);
  objc_msgSend_screenSpaceReflectionObjectThickness(self, v151, v152);
  objc_msgSend_setScreenSpaceReflectionObjectThickness_(into, v153, v154);
  v157 = objc_msgSend_stateManager(self, v155, v156);
  if (v157)
  {
    v160 = sub_1AF2BED30(v157, v8);

    *(into + 31) = v160;
    objc_msgSend_setOwner_(v160, v161, into);
  }

  v162 = objc_msgSend_shaderCacheConfigurations(self, v158, v159);
  objc_msgSend_setShaderCacheConfigurations_(into, v163, v162);
  v166 = objc_msgSend_defaultRenderGraph(self, v164, v165);
  v167 = sub_1AF2BED30(v166, v8);
  objc_msgSend_setDefaultRenderGraph_(into, v168, v167);
  v171 = objc_msgSend_defaultPointOfView(self, v169, v170);
  v172 = sub_1AF2BED30(v171, v8);
  objc_msgSend_setDefaultPointOfView_(into, v173, v172);

  *(into + 7) = self->_preferredConfiguration;
  objc_msgSend__copyAnimationsFrom_(into, v174, self);
  objc_msgSend__copyBindingsFrom_(into, v175, self);
  objc_msgSend__remapObjects_remapTable_(into, v176, v39, v9);
  objc_msgSend_setRootNode_(into, v177, v39);
  v180 = objc_msgSend_assetRegistry(into, v178, v179);
  objc_msgSend_setWorld_(v180, v181, into);
  v184 = objc_msgSend_identifier(self, v182, v183);
  objc_msgSend__remapEntities_srcWorldIdentifier_(into, v185, v8, v184);
  if (compileCopy)
  {
    sub_1AF92B9EC(into);
  }

  v188 = objc_msgSend_triggerManager(self, v186, v187);
  v191 = objc_msgSend_copy(v188, v189, v190);
  *(into + 37) = v191;
  objc_msgSend_setWorld_(v191, v192, into);

  objc_msgSend_unlock(self, v193, v194);
}

- (id)collectCoreEntityHandles
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_msgSend_behaviorGraph(self, v4, v5);
  v9 = objc_msgSend_coreEntityHandle(v6, v7, v8);
  if (v9)
  {
    objc_msgSend_addObject_(v3, v10, v9);
  }

  v12 = objc_msgSend_rootNode(self, v10, v11);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1AF346594;
  v23[3] = &unk_1E7A79810;
  v23[4] = v3;
  objc_msgSend_enumerateHierarchyUsingBlock_(v12, v13, v23);
  v16 = objc_msgSend_assetRegistry(self, v14, v15);
  v19 = objc_msgSend_rootNode(v16, v17, v18);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1AF3465E8;
  v22[3] = &unk_1E7A7F3C0;
  v22[4] = v3;
  objc_msgSend_enumerateHierarchyUsingBlock_(v19, v20, v22);
  return v3;
}

- (void)_mergeWorld:(id)world parentNode:(id)node parentAssetNode:(id)assetNode remapEntities:(BOOL)entities
{
  v386 = *MEMORY[0x1E69E9840];
  if (world)
  {
    entitiesCopy = entities;
    worldCopy = world;
    objc_msgSend_begin(VFXTransaction, a2, world);
    v13 = objc_msgSend_rootNode(self, v11, v12);
    v16 = objc_msgSend_childNodes(v13, v14, v15);
    v19 = objc_msgSend_count(v16, v17, v18);
    v22 = objc_msgSend_physicsWorld(worldCopy, v20, v21);
    v25 = objc_msgSend_physicsJoints(v22, v23, v24);
    v30 = objc_msgSend_copy(v25, v26, v27);
    v339 = worldCopy;
    v338 = entitiesCopy;
    v337 = v19;
    if (entitiesCopy)
    {
      v31 = objc_msgSend_behaviorGraph(worldCopy, v28, v29);
      v34 = objc_msgSend_coreEntityHandle(v31, v32, v33);
      v37 = objc_msgSend_entityObject(v34, v35, v36);
      v334 = objc_msgSend_objectID(v37, v38, v39);
      objc_msgSend_setBehaviorGraph_(worldCopy, v40, 0);
      v43 = objc_msgSend_collectCoreEntityHandles(worldCopy, v41, v42);
      v46 = objc_msgSend_scene(self, v44, v45);
      v49 = objc_msgSend_scene(worldCopy, v47, v48);
      v51 = objc_msgSend_mergeScene_(v46, v50, v49);
      v373 = 0u;
      v374 = 0u;
      v375 = 0u;
      v376 = 0u;
      obj = v43;
      v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v52, &v373, v385, 16);
      if (v53)
      {
        v55 = v53;
        v56 = *v374;
        do
        {
          for (i = 0; i != v55; ++i)
          {
            if (*v374 != v56)
            {
              objc_enumerationMutation(obj);
            }

            v58 = *(*(&v373 + 1) + 8 * i);
            objc_msgSend_setMuteWorldChange_(v58, v54, 1);
            v61 = objc_msgSend_entityObject(v58, v59, v60);
            v64 = objc_msgSend_objectID(v61, v62, v63);
            v66 = objc_msgSend_presentationEntityFromModel_(v51, v65, v64);
            v69 = objc_msgSend_entityObject(v58, v67, v68);
            v72 = objc_msgSend_scene(self, v70, v71);
            objc_msgSend_swapToNewEntity_newScene_(v69, v73, v66, v72);
          }

          v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v54, &v373, v385, 16);
        }

        while (v55);
        worldCopy = v339;
      }
    }

    else
    {
      v334 = 0;
      obj = 0;
    }

    v336 = objc_alloc_init(VFXCopyContext);
    v335 = sub_1AFDF4FDC(v336);
    CFDictionaryAddValue(v335, worldCopy, self);
    v333 = objc_msgSend_defaultRenderGraph(worldCopy, v75, v76);
    v332 = objc_msgSend_defaultPointOfView(worldCopy, v77, v78);
    objc_msgSend_setDefaultRenderGraph_(worldCopy, v79, 0);
    objc_msgSend_setDefaultPointOfView_(worldCopy, v80, 0);
    v83 = objc_msgSend_node(VFXNode, v81, v82);
    v369 = 0u;
    v370 = 0u;
    v371 = 0u;
    v372 = 0u;
    v86 = objc_msgSend_rootNode(worldCopy, v84, v85);
    v89 = objc_msgSend_childNodes(v86, v87, v88);
    v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v90, &v369, v384, 16);
    if (v91)
    {
      v93 = v91;
      v94 = *v370;
      do
      {
        for (j = 0; j != v93; ++j)
        {
          if (*v370 != v94)
          {
            objc_enumerationMutation(v89);
          }

          objc_msgSend_addChildNode_(v83, v92, *(*(&v369 + 1) + 8 * j));
        }

        v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v92, &v369, v384, 16);
      }

      while (v93);
    }

    v96 = objc_alloc_init(VFXAssetNode);
    v365 = 0u;
    v366 = 0u;
    v367 = 0u;
    v368 = 0u;
    v99 = objc_msgSend_assets(worldCopy, v97, v98);
    v102 = objc_msgSend_rootNode(v99, v100, v101);
    v105 = objc_msgSend_childNodes(v102, v103, v104);
    v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v105, v106, &v365, v383, 16);
    if (v107)
    {
      v110 = v107;
      v111 = *v366;
      do
      {
        for (k = 0; k != v110; ++k)
        {
          if (*v366 != v111)
          {
            objc_enumerationMutation(v105);
          }

          objc_msgSend_addChildNode_(v96, v108, *(*(&v365 + 1) + 8 * k));
        }

        v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v105, v108, &v365, v383, 16);
      }

      while (v110);
    }

    if (!node)
    {
      node = objc_msgSend_rootNode(self, v108, v109);
    }

    v363 = 0u;
    v364 = 0u;
    v361 = 0u;
    v362 = 0u;
    v113 = objc_msgSend_childNodes(v83, v108, v109);
    v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v113, v114, &v361, v382, 16);
    if (v115)
    {
      v118 = v115;
      v119 = *v362;
      do
      {
        for (m = 0; m != v118; ++m)
        {
          if (*v362 != v119)
          {
            objc_enumerationMutation(v113);
          }

          objc_msgSend_addChildNode_(node, v116, *(*(&v361 + 1) + 8 * m));
        }

        v118 = objc_msgSend_countByEnumeratingWithState_objects_count_(v113, v116, &v361, v382, 16);
      }

      while (v118);
    }

    if (!assetNode)
    {
      v121 = objc_msgSend_assetRegistry(self, v116, v117);
      assetNode = objc_msgSend_rootNode(v121, v122, v123);
    }

    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v124 = objc_msgSend_childNodes(v96, v116, v117);
    v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v125, &v357, v381, 16);
    if (v126)
    {
      v129 = v126;
      v130 = *v358;
      do
      {
        for (n = 0; n != v129; ++n)
        {
          if (*v358 != v130)
          {
            objc_enumerationMutation(v124);
          }

          objc_msgSend_addChildNode_(assetNode, v127, *(*(&v357 + 1) + 8 * n));
        }

        v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v127, &v357, v381, 16);
      }

      while (v129);
    }

    v132 = objc_msgSend_rootNode(v339, v127, v128);
    v135 = objc_msgSend_childNodes(v132, v133, v134);
    v138 = objc_msgSend_count(v135, v136, v137);
    if (v138)
    {
      v140 = sub_1AF0D5194(v138, v139);
      if (os_log_type_enabled(v140, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF934C(v140, v139, v141, v142, v143, v144, v145, v146);
      }
    }

    v355 = 0u;
    v356 = 0u;
    v353 = 0u;
    v354 = 0u;
    v147 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v139, &v353, v380, 16);
    if (v147)
    {
      v150 = v147;
      v151 = *v354;
      do
      {
        for (ii = 0; ii != v150; ++ii)
        {
          if (*v354 != v151)
          {
            objc_enumerationMutation(v30);
          }

          v153 = *(*(&v353 + 1) + 8 * ii);
          v154 = objc_msgSend_physicsWorld(self, v148, v149);
          objc_msgSend_addPhysicsJoint_(v154, v155, v153);
        }

        v150 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v148, &v353, v380, 16);
      }

      while (v150);
    }

    if (!v337)
    {
      v158 = objc_msgSend_physicsWorld(v339, v156, v157);
      v161 = objc_msgSend_physicsWorld(self, v159, v160);
      objc_msgSend_copyTo_withContext_(v158, v162, v161, v336);
      objc_msgSend_endTime(v339, v163, v164);
      objc_msgSend_setEndTime_(self, v165, v166);
      objc_msgSend_startTime(v339, v167, v168);
      objc_msgSend_setStartTime_(self, v169, v170);
      objc_msgSend_fogStartDistance(v339, v171, v172);
      objc_msgSend_setFogStartDistance_(self, v173, v174);
      objc_msgSend_fogEndDistance(v339, v175, v176);
      objc_msgSend_setFogEndDistance_(self, v177, v178);
      objc_msgSend_fogDensityExponent(v339, v179, v180);
      objc_msgSend_setFogDensityExponent_(self, v181, v182);
      v185 = objc_msgSend_fogColor(v339, v183, v184);
      objc_msgSend_setFogColor_(self, v186, v185);
      v189 = objc_msgSend_wantsScreenSpaceAmbientOcclusion(v339, v187, v188);
      objc_msgSend_setWantsScreenSpaceAmbientOcclusion_(self, v190, v189);
      objc_msgSend_screenSpaceAmbientOcclusionIntensity(v339, v191, v192);
      objc_msgSend_setScreenSpaceAmbientOcclusionIntensity_(self, v193, v194);
      objc_msgSend_screenSpaceAmbientOcclusionRadius(v339, v195, v196);
      objc_msgSend_setScreenSpaceAmbientOcclusionRadius_(self, v197, v198);
      v201 = objc_msgSend_screenSpaceAmbientOcclusionEnableBentNormal(v339, v199, v200);
      objc_msgSend_setScreenSpaceAmbientOcclusionEnableBentNormal_(self, v202, v201);
      v205 = objc_msgSend_screenSpaceAmbientOcclusionQuality(v339, v203, v204);
      objc_msgSend_setScreenSpaceAmbientOcclusionQuality_(self, v206, v205);
      v209 = objc_msgSend_wantsScreenSpaceReflection(v339, v207, v208);
      objc_msgSend_setWantsScreenSpaceReflection_(self, v210, v209);
      v213 = objc_msgSend_screenSpaceReflectionQuality(v339, v211, v212);
      objc_msgSend_setScreenSpaceReflectionQuality_(self, v214, v213);
      v217 = objc_msgSend_screenSpaceReflectionThicknessMode(v339, v215, v216);
      objc_msgSend_setScreenSpaceReflectionThicknessMode_(self, v218, v217);
      objc_msgSend_screenSpaceReflectionObjectThickness(v339, v219, v220);
      objc_msgSend_setScreenSpaceReflectionObjectThickness_(self, v221, v222);
      if (objc_msgSend_background(v339, v223, v224))
      {
        v227 = objc_msgSend_background(self, v225, v226);
        v230 = objc_msgSend_background(v339, v228, v229);
        objc_msgSend_copyPropertiesFrom_copyContext_(v227, v231, v230, 0);
        v234 = objc_msgSend_background(v339, v232, v233);
        v237 = objc_msgSend_background(self, v235, v236);
        CFDictionarySetValue(v335, v234, v237);
        v240 = objc_msgSend_background(v339, v238, v239);
        v243 = objc_msgSend_contents(v240, v241, v242);
        v246 = objc_msgSend_background(self, v244, v245);
        v249 = objc_msgSend_contents(v246, v247, v248);
        CFDictionarySetValue(v335, v243, v249);
      }

      if (objc_msgSend_lightingEnvironment(v339, v225, v226))
      {
        v250 = objc_msgSend_lightingEnvironment(self, v156, v157);
        v253 = objc_msgSend_lightingEnvironment(v339, v251, v252);
        objc_msgSend_copyPropertiesFrom_copyContext_(v250, v254, v253, 0);
        v257 = objc_msgSend_lightingEnvironment(v339, v255, v256);
        v260 = objc_msgSend_lightingEnvironment(self, v258, v259);
        CFDictionarySetValue(v335, v257, v260);
        v263 = objc_msgSend_lightingEnvironment(v339, v261, v262);
        v266 = objc_msgSend_contents(v263, v264, v265);
        v269 = objc_msgSend_lightingEnvironment(self, v267, v268);
        v272 = objc_msgSend_contents(v269, v270, v271);
        CFDictionarySetValue(v335, v266, v272);
      }
    }

    v273 = objc_msgSend_stateManager(v339, v156, v157);
    v274 = sub_1AF2BED30(v273, v336);
    v349 = 0u;
    v350 = 0u;
    v351 = 0u;
    v352 = 0u;
    v277 = objc_msgSend_states(v274, v275, v276);
    v279 = objc_msgSend_countByEnumeratingWithState_objects_count_(v277, v278, &v349, v379, 16);
    if (v279)
    {
      v282 = v279;
      v283 = *v350;
      do
      {
        for (jj = 0; jj != v282; ++jj)
        {
          if (*v350 != v283)
          {
            objc_enumerationMutation(v277);
          }

          v285 = *(*(&v349 + 1) + 8 * jj);
          v286 = objc_msgSend_stateManager(self, v280, v281);
          objc_msgSend_addState_(v286, v287, v285);
        }

        v282 = objc_msgSend_countByEnumeratingWithState_objects_count_(v277, v280, &v349, v379, 16);
      }

      while (v282);
    }

    v347 = 0u;
    v348 = 0u;
    v345 = 0u;
    v346 = 0u;
    v288 = objc_msgSend_transitions(v274, v280, v281);
    v290 = objc_msgSend_countByEnumeratingWithState_objects_count_(v288, v289, &v345, v378, 16);
    if (v290)
    {
      v293 = v290;
      v294 = *v346;
      do
      {
        for (kk = 0; kk != v293; ++kk)
        {
          if (*v346 != v294)
          {
            objc_enumerationMutation(v288);
          }

          v296 = *(*(&v345 + 1) + 8 * kk);
          v297 = objc_msgSend_stateManager(self, v291, v292);
          objc_msgSend_addStateTransition_(v297, v298, v296);
        }

        v293 = objc_msgSend_countByEnumeratingWithState_objects_count_(v288, v291, &v345, v378, 16);
      }

      while (v293);
    }

    v299 = objc_msgSend_rootNode(self, v291, v292);
    objc_msgSend__remapObjects_remapTable_(self, v300, v299, v335);
    if (!v337)
    {
      objc_msgSend_setDefaultRenderGraph_(self, v301, v333);
      objc_msgSend_setDefaultPointOfView_(self, v302, v332);
      v305 = objc_msgSend_behaviorGraph(v339, v303, v304);
      objc_msgSend_setBehaviorGraph_(self, v306, v305);
      v309 = objc_msgSend_shaderCacheConfigurations(v339, v307, v308);
      objc_msgSend_setShaderCacheConfigurations_(self, v310, v309);

      self->_preferredConfiguration = v339[7];
    }

    objc_msgSend_flush(VFXTransaction, v311, v312);
    if (v338)
    {
      v343 = 0u;
      v344 = 0u;
      v341 = 0u;
      v342 = 0u;
      v315 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v313, &v341, v377, 16);
      if (v315)
      {
        v316 = v315;
        v317 = *v342;
        do
        {
          for (mm = 0; mm != v316; ++mm)
          {
            if (*v342 != v317)
            {
              objc_enumerationMutation(obj);
            }

            objc_msgSend_setMuteWorldChange_(*(*(&v341 + 1) + 8 * mm), v313, 0);
          }

          v316 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v313, &v341, v377, 16);
        }

        while (v316);
      }

      if (v334)
      {
        v319 = objc_alloc_init(VFXBidirectionalRemapTable);
        objc_msgSend_add::(v319, v320, v334, 0);
        v323 = objc_msgSend_scene(self, v321, v322);
        objc_msgSend_remapEntityReferences_duplicating_(v323, v324, v319, 0);
      }
    }

    v325 = objc_msgSend_presentationScene(self, v313, v314);
    objc_msgSend_invalidateGraphV1(v325, v326, v327);
    objc_msgSend__copyAnimationsFrom_(self, v328, v339);
    objc_msgSend__copyBindingsFrom_(self, v329, v339);
    objc_msgSend_commit(VFXTransaction, v330, v331);
  }

  else
  {
    v74 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF93C4();
    }
  }
}

- (void)setBehaviorGraph:(id)graph
{
  if (*(self + 16))
  {
    v9 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9400(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  else
  {
    v5 = objc_msgSend_behaviorGraph(self, a2, graph);
    if (v5 != graph)
    {
      objc_msgSend_removeWorldReference_(v5, v6, self);

      self->_behaviorGraph = graph;
      objc_msgSend_addWorldReference_(graph, v7, self);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_1AF3472F4;
      v17[3] = &unk_1E7A7E220;
      v17[4] = self;
      v17[5] = graph;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v17);
    }
  }
}

- (VFXBehaviorGraph)behaviorGraph
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_behaviorGraph;
  }

  v3 = sub_1AF1C3858(self->_world, a2);
  if (!v3)
  {
    return self->_behaviorGraph;
  }

  v5 = objc_msgSend_presentationHandleWithCFXCoreEntityHandle_(VFXCoreEntityHandle, v4, v3);
  v7 = objc_msgSend_behaviorGraphWithEntityHandle_(VFXBehaviorGraph, v6, v5);

  return objc_msgSend_presentationObject(v7, v8, v9);
}

- (int64_t)coreEntity
{
  if (*(self + 16))
  {
    result = sub_1AF1C3858(self->_world, a2);
    if (result)
    {

      return sub_1AF16AC70(result, v5, v6);
    }
  }

  else
  {
    v3 = objc_msgSend_behaviorGraph(self, a2, v2);

    return MEMORY[0x1EEE66B58](v3, sel_entity, v4);
  }

  return result;
}

- (NSArray)states
{
  v3 = objc_msgSend_stateManager(self, a2, v2);

  return objc_msgSend_states(v3, v4, v5);
}

- (VFXState)state
{
  v3 = objc_msgSend_stateManager(self, a2, v2);

  return objc_msgSend_activeState(v3, v4, v5);
}

- (void)setState:(id)state
{
  v4 = objc_msgSend_stateManager(self, a2, state);

  objc_msgSend_setActiveState_(v4, v5, state);
}

- (void)setStateNamed:(id)named
{
  v25 = *MEMORY[0x1E69E9840];
  if (named && objc_msgSend_length(named, a2, named))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = objc_msgSend_states(self, a2, named, 0);
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v20, v24, 16);
    if (v7)
    {
      v10 = v7;
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v5);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = objc_msgSend_name(v13, v8, v9);
          if (objc_msgSend_isEqualToString_(v14, v15, named))
          {
            v18 = objc_msgSend_stateManager(self, v8, v9);
            objc_msgSend_setActiveState_(v18, v19, v13);
            return;
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v20, v24, 16);
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v16 = objc_msgSend_stateManager(self, a2, named);

    objc_msgSend_setActiveState_(v16, v17, 0);
  }
}

- (void)setIdentifier:(id)identifier
{
  v4 = objc_msgSend___CFObject(self, a2, identifier);

  sub_1AF16CD6C(v4, identifier);
}

- (id)identifier
{
  v3 = objc_msgSend___CFObject(self, a2, v2);

  return sub_1AF16CD08(v3, v4, v5);
}

- (void)stopReplication
{
  v3 = sub_1AF1CFF64(self->_world, 1);
  if (v3)
  {
    v6 = sub_1AF0D5194(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF9478(v6, v4, v5, v7, v8, v9, v10, v11);
    }
  }

  v12 = objc_msgSend_scene(self, v4, v5);
  v15 = objc_msgSend_presentationScene(self, v13, v14);
  objc_msgSend_stopReplicationWithModel_runtime_(_TtC3VFX8VFXScene, v16, v12, v15);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1AF347760;
  v18[3] = &unk_1E7A7E1D0;
  v18[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v17, self, v18);

  self->_modelToPresentationRemapTable = 0;
}

- (void)cloneModelToPresentationAndStartReplicationStream
{
  v3 = sub_1AF1CFF64(self->_world, 1);
  if (v3)
  {
    v5 = sub_1AF0D5194(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF9478(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  prof_beginFlame("[VFXWorld cloneModelToPresentationAndStartReplicationStream]", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/VFXWorld.m", 958);
  v15 = objc_msgSend_worldRef(self, v13, v14);
  if (v15)
  {
    v17 = v15;
    sub_1AF1CEA20(v15, v16);
    self->_modelToPresentationRemapTable = objc_msgSend_cloneAndSetupReplicationWithModelWorld_(_TtC3VFX8VFXScene, v18, self);
    v21 = objc_msgSend_worldRef(self, v19, v20);
    sub_1AF1D1490(v21, self->_modelToPresentationRemapTable);
    sub_1AF1CEA9C(v17, v22);
  }

  else
  {
    self->_modelToPresentationRemapTable = objc_msgSend_cloneAndSetupReplicationWithModelWorld_(_TtC3VFX8VFXScene, v16, self);
    v25 = objc_msgSend_worldRef(self, v23, v24);
    sub_1AF1D1490(v25, self->_modelToPresentationRemapTable);
  }

  prof_endFlame();
}

- (void)startRuntimeThread
{
  v3 = objc_msgSend_worldRef(self, a2, v2);
  v5 = sub_1AF1CF878(v3, v4);

  objc_msgSend_startRuntimeThread(v5, v6, v7);
}

- (void)restart
{
  if (*(self + 16))
  {
    v15 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF94F0(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  else
  {
    objc_msgSend_begin(VFXTransaction, a2, v2);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1AF3479AC;
    v24[3] = &unk_1E7A7A770;
    v24[4] = self;
    objc_msgSend_setCompletionBlock_(VFXTransaction, v4, v24);
    v7 = objc_msgSend_rootNode(self, v5, v6);
    objc_msgSend_enumerateHierarchyUsingBlock_(v7, v8, &unk_1F24EC388);
    v11 = objc_msgSend_worldRef(self, v9, v10);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1AF347A7C;
    v23[3] = &unk_1E7A7E6C0;
    v23[4] = v11;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, self, v23);
    objc_msgSend_commit(VFXTransaction, v13, v14);
  }
}

- (id)remapTable
{
  v3 = sub_1AF1CFF64(self->_world, 1);
  if (v3)
  {
    v5 = sub_1AF0D5194(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF9478(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  return self->_modelToPresentationRemapTable;
}

- (void)commonInit:(BOOL)init
{
  if (init)
  {
    VFXInitialize();
  }

  self->_clock = objc_alloc_init(VFXClock);
  self->_animationsLock._os_unfair_lock_opaque = 0;
}

- (VFXWorld)initWithOptions:(id)options
{
  v52.receiver = self;
  v52.super_class = VFXWorld;
  v5 = [(VFXWorld *)&v52 init];
  if (v5)
  {
    v6 = objc_msgSend_objectForKeyedSubscript_(options, v4, @"VFXWorldLoaderDisableVFXCoreSupport");
    v9 = objc_msgSend_BOOLValue(v6, v7, v8);
    objc_msgSend_commonInit_(v5, v10, v9 ^ 1);
    v12 = objc_msgSend_objectForKeyedSubscript_(options, v11, @"VFXWorldLoaderLoadForAuthoring");
    v15 = objc_msgSend_BOOLValue(v12, v13, v14);
    v17 = objc_msgSend_objectForKeyedSubscript_(options, v16, @"kWorldInitOptionForRERendering");
    v20 = objc_msgSend_BOOLValue(v17, v18, v19);
    v22 = v9 | 2;
    if (!v15)
    {
      v22 = v9;
    }

    if (v20)
    {
      v23 = v22 | 4;
    }

    else
    {
      v23 = v22;
    }

    v24 = objc_msgSend_objectForKeyedSubscript_(options, v21, @"VFXWorldLoaderOptionMetalLibraryURL");
    v25 = sub_1AF1CF52C(v23, v24);
    *(v5 + 1) = v25;
    objc_msgSend_setWorld_(*(v5 + 27), v26, v25);
    v29 = *(v5 + 1);
    if (v9)
    {
      if (v29)
      {
        sub_1AF16CDFC(v29, v5);
      }

      objc_msgSend__updateModelFromPresentation(v5, v27, v28);
    }

    else
    {
      *(v5 + 33) = sub_1AF14E33C(v29);
      v32 = *(v5 + 1);
      if (v32)
      {
        sub_1AF16CDFC(v32, v5);
      }

      objc_msgSend__updateModelFromPresentation(v5, v30, v31);
      objc_msgSend_cloneModelToPresentationAndStartReplicationStream(v5, v33, v34);
    }

    v35 = objc_alloc_init(VFXTriggerManager);
    *(v5 + 37) = v35;
    objc_msgSend_setWorld_(v35, v36, v5);
    if (!*(v5 + 9))
    {
      v39 = objc_msgSend_worldRef(v5, v37, v38);
      v41 = v39;
      if (v39)
      {
        sub_1AF1CEA20(v39, v40);
      }

      if (!*(v5 + 9))
      {
        v42 = *(v5 + 1);
        if (v42)
        {
          sub_1AF1CEA20(v42, v40);
          v45 = sub_1AF1CF7E8(*(v5 + 1), v43);
          if (v45)
          {
            v46 = objc_msgSend_nodeWithNodeRef_(VFXNode, v44, v45);
            *(v5 + 9) = v46;
            objc_msgSend_addWorldReference_(v46, v47, v5);
          }

          else
          {
            v49 = objc_msgSend_node(VFXNode, v44, 0);
            objc_msgSend__setRootNode_immediate_(v5, v50, v49, 1);
          }

          sub_1AF1CEA9C(*(v5 + 1), v48);
        }
      }

      if (v41)
      {
        sub_1AF1CEA9C(v41, v40);
      }
    }
  }

  return v5;
}

- (VFXWorld)initWithWorldRef:(__CFXWorld *)ref
{
  v23.receiver = self;
  v23.super_class = VFXWorld;
  v4 = [(VFXWorld *)&v23 init];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_commonInit_(v4, v5, 0);
    v7 = CFRetain(ref);
    *(v6 + 8) = v7;
    objc_msgSend_setWorld_(*(v6 + 216), v8, v7);
    v11 = *(v6 + 8);
    if (v11)
    {
      sub_1AF16CDFC(v11, v6);
    }

    objc_msgSend__updateModelFromPresentation(v6, v9, v10);
    if (!*(v6 + 72))
    {
      v13 = *(v6 + 8);
      if (v13)
      {
        sub_1AF1CEA20(v13, v12);
        v16 = sub_1AF1CF7E8(*(v6 + 8), v14);
        if (v16)
        {
          v17 = objc_msgSend_nodeWithNodeRef_(VFXNode, v15, v16);
          *(v6 + 72) = v17;
          objc_msgSend_addWorldReference_(v17, v18, v6);
        }

        else
        {
          v20 = objc_msgSend_node(VFXNode, v15, 0);
          objc_msgSend__setRootNode_immediate_(v6, v21, v20, 1);
        }

        sub_1AF1CEA9C(*(v6 + 8), v19);
      }
    }
  }

  return v6;
}

- (void)_updateModelFromPresentation
{
  if (!sub_1AF1CFF64(self->_world, 1))
  {
    v4 = sub_1AF0FB884(self->_coreEntityManager);
    self->_assetPathResolver = objc_msgSend_assetManager(v4, v5, v6);
  }

  self->_fogStartDistance = sub_1AF1D0398(self->_world, v3);
  self->_fogEndDistance = sub_1AF1D02FC(self->_world, v7);
  self->_fogDensityExponent = sub_1AF1D0260(self->_world, v8);
  self->_wantsScreenSpaceAmbientOcclusion = sub_1AF1D053C(self->_world, v9);
  self->_screenSpaceAmbientOcclusionIntensity = sub_1AF1D0600(self->_world, v10);
  self->_screenSpaceAmbientOcclusionRadius = sub_1AF1D069C(self->_world, v11);
  self->_screenSpaceAmbientOcclusionEnableBentNormal = sub_1AF1D0738(self->_world, v12);
  self->_screenSpaceAmbientOcclusionQuality = sub_1AF1D07FC(self->_world, v13);
  self->_wantsScreenSpaceReflection = sub_1AF1D0898(self->_world, v14);
  self->_screenSpaceReflectionQuality = sub_1AF1D095C(self->_world, v15);
  self->_screenSpaceReflectionThicknessMode = sub_1AF1D09F8(self->_world, v16);
  self->_screenSpaceReflectionObjectThickness = sub_1AF1D0A94(self->_world, v17);
  v19 = sub_1AF1D048C(self->_world, v18);

  self->_fogColor = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v20, v19);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF347F98;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

+ (id)world
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)worldNamed:(id)named inDirectory:(id)directory options:(id)options
{
  v8 = objc_msgSend_pathExtension(named, a2, named);
  v11 = objc_msgSend_length(v8, v9, v10);
  if (!v11)
  {
    v8 = @"vfx";
  }

  v14 = VFXGetResourceBundle(v11, v12, v13);
  v17 = objc_msgSend_stringByDeletingPathExtension(named, v15, v16);
  result = objc_msgSend_URLForResource_withExtension_subdirectory_(v14, v18, v17, v8, directory);
  if (result)
  {

    return MEMORY[0x1EEE66B58](self, sel_worldWithURL_options_error_, result);
  }

  return result;
}

+ (VFXWorld)worldWithURL:(id)l options:(id)options error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (!l)
  {
    v8 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF9568(v8, a2, l, v9, v10, v11, v12, v13);
    }
  }

  v14 = objc_msgSend_URLByResolvingSymlinksInPath(l, a2, l);
  v23 = @"url";
  v24[0] = v14;
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, v24, &v23, 1);
  objc_msgSend_setValue_forKey_(VFXTransaction, v17, v16, @"VFXWorldLoadingContextKey");
  v20 = objc_msgSend_loader(VFXWorldLoader, v18, v19);
  return objc_msgSend_loadWorldFromURL_options_statusHandler_error_(v20, v21, v14, options, 0, error);
}

+ (VFXWorld)worldWithData:(id)data options:(id)options error:(id *)error
{
  v6 = objc_msgSend_loader(VFXWorldLoader, a2, data);

  return MEMORY[0x1EEE66B58](v6, sel_loadWorldFromData_options_statusHandler_error_, data);
}

+ (VFXWorld)worldWithWorldRef:(__CFXWorld *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v8 = objc_msgSend_initWithWorldRef_(v6, v7, ref);

    return v8;
  }

  return result;
}

- (void)_clearWorldRef
{
  world = self->_world;
  if (world)
  {
    sub_1AF16CDFC(world, 0);
    v5 = self->_world;
    if (v5)
    {
      CFRelease(v5);
    }

    self->_world = 0;
    clock = self->_clock;

    objc_msgSend_setWorld_(clock, v4, 0);
  }
}

- (void)dealloc
{
  v4 = *(self + 16);
  if ((v4 & 1) == 0)
  {
    v5 = objc_msgSend_background(self, a2, v2);
    objc_msgSend_setContents_(v5, v6, 0);
    v9 = objc_msgSend_lightingEnvironment(self, v7, v8);
    objc_msgSend_setContents_(v9, v10, 0);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1AF348620;
    v29[3] = &unk_1E7A7E428;
    v29[4] = self;
    objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, v11, 1, v29);
    objc_msgSend_worldWillDie(self->_physicsWorld, v12, v13);
    v4 = *(self + 16);
  }

  if ((v4 & 1) == 0)
  {
    objc_msgSend_setWorld_(self->_clock, a2, 0);
    objc_msgSend_setWorld_(self->_triggerManager, v14, 0);
  }

  world = self->_world;
  if (world)
  {
    if ((*(self + 16) & 1) == 0)
    {
      sub_1AF16CDFC(world, 0);
      world = self->_world;
    }

    v17 = sub_1AF1CF878(world, v15);
    objc_msgSend_stopRuntimeThread(v17, v18, v19);
    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v20, self->_world);
  }

  self->_assetRegistry = 0;
  for (i = 80; i != 112; i += 8)
  {
    if ((*(self + 16) & 1) == 0)
    {
      objc_msgSend_setWorld_(*(&self->super.isa + i), v21, 0);
    }
  }

  objc_msgSend_parentWillDie_(self->_background, v23, self);
  objc_msgSend_parentWillDie_(self->_environment, v24, self);

  if ((*(self + 16) & 1) == 0)
  {
    objc_msgSend_setOwner_(self->_stateManager, v25, 0);
  }

  if ((*(self + 16) & 1) == 0)
  {
    objc_msgSend_setShaderCacheConfigurations_(self, v26, 0);
  }

  coreEntityManager = self->_coreEntityManager;
  if (coreEntityManager)
  {
    CFRelease(coreEntityManager);
    self->_coreEntityManager = 0;
  }

  sub_1AF2771C8();
  v28.receiver = self;
  v28.super_class = VFXWorld;
  [(VFXWorld *)&v28 dealloc];
}

- (id)assetPathResolver
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_assetPathResolver;
  }

  v3 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF95E0(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return 0;
}

- (void)setAssetPathResolver:(id)resolver
{
  if (*(self + 16))
  {
    v12 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9658(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  else
  {
    assetPathResolver = self->_assetPathResolver;
    if (assetPathResolver != resolver)
    {

      self->_assetPathResolver = resolver;
      v6 = sub_1AF0FB884(self->_coreEntityManager);
      objc_msgSend_setAssetManager_(v6, v7, resolver);
      v9 = sub_1AF1CF8AC(self->_world, v8);
      v10 = sub_1AF0FB884(v9);

      objc_msgSend_setAssetManager_(v10, v11, resolver);
    }
  }
}

- (__CFXAnimationManager)animationManager
{
  result = objc_msgSend_worldRef(self, a2, v2);
  if (result)
  {

    return sub_1AF1CF830(result, v4);
  }

  return result;
}

- (BOOL)__removeAnimation:(id)animation forKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_animationsLock);
  v8 = objc_msgSend_objectForKey_(self->_animations, v7, key);
  v12 = objc_msgSend_animation(v8, v9, v10) == animation;
  if (v12)
  {
    objc_msgSend_removeWorldReference_(v8, v11, self);
    objc_msgSend_removeObjectForKey_(self->_animations, v13, key);
    v16 = objc_msgSend___CFObject(self, v14, v15);
    v17 = sub_1AF16D234(v16);
    if ((v17 & 1) == 0)
    {
      v19 = sub_1AF0D5194(v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF4558(v19, v20, v21, v22, v23, v24, v25, v26);
      }
    }

    sub_1AF16D870(v16, key, 1);
  }

  os_unfair_lock_unlock(&self->_animationsLock);
  return v12;
}

- (void)addAnimationPlayer:(id)player forKey:(id)key
{
  if (player)
  {
    keyCopy = key;
    if (!key)
    {
      v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, player);
      keyCopy = objc_msgSend_UUIDString(v7, v8, v9);
    }

    if ((*(self + 16) & 1) == 0)
    {
      os_unfair_lock_lock(&self->_animationsLock);
      objc_msgSend_addWorldReference_(player, v10, self);
      animations = self->_animations;
      if (!animations)
      {
        animations = objc_alloc_init(VFXOrderedDictionary);
        self->_animations = animations;
      }

      objc_msgSend_setObject_forKey_(animations, v11, player, keyCopy);
      os_unfair_lock_unlock(&self->_animationsLock);
    }

    v13 = objc_msgSend_timingFunction(VFXTransaction, a2, player);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1AF3489C4;
    v16[3] = &unk_1E7A7E2C0;
    v16[4] = player;
    v16[5] = self;
    v16[6] = keyCopy;
    v16[7] = v13;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v14, self, v16);
  }

  else
  {
    v15 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF96D0();
    }
  }
}

- (void)addAnimation:(id)animation forKey:(id)key
{
  if (animation)
  {
    keyCopy = key;
    animationCopy = animation;
    if (!key)
    {
      v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, animation);
      keyCopy = objc_msgSend_UUIDString(v7, v8, v9);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      animationCopy = objc_msgSend_animationWithCAAnimation_(VFXAnimation, v10, animationCopy);
    }

    v11 = objc_msgSend_animationPlayerWithVFXAnimation_(VFXAnimationPlayer, v10, animationCopy);
    objc_msgSend_addAnimationPlayer_forKey_(self, v12, v11, keyCopy);

    objc_msgSend_play(v11, v13, v14);
  }

  else
  {
    v15 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9738();
    }
  }
}

- (void)removeAllAnimations
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_animationsLock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  animations = self->_animations;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(animations, v4, &v21, v25, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(animations);
        }

        objc_msgSend_removeWorldReference_(*(*(&v21 + 1) + 8 * i), v6, self);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(animations, v6, &v21, v25, 16);
    }

    while (v8);
  }

  objc_msgSend_removeAllObjects(self->_animations, v6, v7);
  os_unfair_lock_unlock(&self->_animationsLock);
  objc_msgSend_duration(VFXTransaction, v11, v12);
  if (v15 <= 0.0)
  {
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v13, self, v19, MEMORY[0x1E69E9820], 3221225472, sub_1AF348D38, &unk_1E7A7E1D0, self, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6]);
  }

  else
  {
    v16 = v15;
    v17 = objc_msgSend_timingFunction(VFXTransaction, v13, v14);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v18, self, v20, v19[0], v19[1], v19[2], v19[3], v19[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF348D28, &unk_1E7A7E2E8, self, v17, *&v16);
  }
}

- (void)removeAnimationForKey:(id)key
{
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v7 = objc_msgSend_objectForKey_(animations, v5, key);
      objc_msgSend_removeWorldReference_(v7, v8, self);
      objc_msgSend_removeObjectForKey_(self->_animations, v9, key);
    }

    os_unfair_lock_unlock(&self->_animationsLock);
    v12 = objc_msgSend_timingFunction(VFXTransaction, v10, v11);
    objc_msgSend_animationDuration(VFXTransaction, v13, v14);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1AF348E28;
    v17[3] = &unk_1E7A7E310;
    v17[7] = v15;
    v17[4] = self;
    v17[5] = key;
    v17[6] = v12;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, self, v17);
  }
}

- (NSArray)animationKeys
{
  os_unfair_lock_lock(&self->_animationsLock);
  v5 = objc_msgSend_allKeys(self->_animations, v3, v4);
  os_unfair_lock_unlock(&self->_animationsLock);
  if (objc_msgSend_count(v5, v6, v7))
  {
    return v5;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)_syncObjCAnimations
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  v6 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  os_unfair_lock_lock(&self->_animationsLock);

  self->_animations = objc_alloc_init(VFXOrderedDictionary);
  os_unfair_lock_unlock(&self->_animationsLock);
  v9 = objc_msgSend___CFObject(self, v7, v8);
  if (v9)
  {
    v11 = v9;
    v12 = sub_1AF16D234(v9);
    if ((v12 & 1) == 0)
    {
      v14 = sub_1AF0D5194(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF46B0(v14, v13, v15, v16, v17, v18, v19, v20);
      }
    }

    v21 = sub_1AF16D614(v11, v13);
    if (v21)
    {
      v22 = v21;
      os_unfair_lock_lock(&self->_animationsLock);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_1AF348FC4;
      v23[3] = &unk_1E7A7E338;
      v23[4] = self;
      sub_1AF375240(v22, v23);
      os_unfair_lock_unlock(&self->_animationsLock);
    }
  }

  if (v6)
  {
    sub_1AF1CEA9C(v6, v10);
  }
}

- (id)_vfxAnimationForKey:(id)key
{
  keyCopy = key;
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v7 = objc_msgSend_objectForKey_(animations, v5, keyCopy);
      keyCopy = objc_msgSend_animation(v7, v8, v9);
    }

    else
    {
      keyCopy = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return keyCopy;
}

- (void)_copyAnimationsFrom:(id)from
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = objc_msgSend_animationKeys(from, a2, from, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = objc_msgSend_animationPlayerForKey_(from, v8, v12);
        v16 = objc_msgSend_copy(v13, v14, v15);
        objc_msgSend_addAnimationPlayer_forKey_(self, v17, v16, v12);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v18, v22, 16);
    }

    while (v9);
  }
}

- (id)animationPlayerForKey:(id)key
{
  keyCopy = key;
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      keyCopy = objc_msgSend_objectForKey_(animations, v5, keyCopy);
    }

    else
    {
      keyCopy = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return keyCopy;
}

- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node
{
  nodeCopy = node;
  animationCopy = animation;
  v9 = objc_msgSend___CFObject(self, a2, animation);
  if (v9)
  {
    v12 = v9;
    v13 = objc_msgSend_animationManager(self, v10, v11);
    if (v13)
    {
      v14 = v13;
      v15 = CACurrentMediaTime();

      sub_1AF118EBC(v14, v12, key, animationCopy, nodeCopy, v15);
    }
  }
}

- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options
{
  if (self != object)
  {
    v21[15] = v6;
    v21[16] = v7;
    v13 = objc_alloc_init(CFXBinding);
    objc_msgSend_setSourceObject_(v13, v14, object);
    objc_msgSend_setKeyPathDst_(v13, v15, path);
    objc_msgSend_setKeyPathSrc_(v13, v16, keyPath);
    objc_msgSend_setOptions_(v13, v17, options);
    bindings = self->_bindings;
    if (!bindings)
    {
      bindings = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_bindings = bindings;
    }

    objc_msgSend_setValue_forKey_(bindings, v18, v13, path);

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1AF3493E4;
    v21[3] = &unk_1E7A7E360;
    v21[4] = self;
    v21[5] = object;
    v21[6] = path;
    v21[7] = keyPath;
    v21[8] = options;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v20, self, v21);
  }
}

- (void)unbindAnimatablePath:(id)path
{
  objc_msgSend_removeObjectForKey_(self->_bindings, a2, path);
  if (!objc_msgSend_count(self->_bindings, v5, v6))
  {

    self->_bindings = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF349528;
  v8[3] = &unk_1E7A7E220;
  v8[4] = self;
  v8[5] = path;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
}

- (void)removeAllBindings
{
  self->_bindings = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF3495F4;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)from
{
  v4 = objc_msgSend__vfxBindings(from, a2, from);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF3496A0;
  v6[3] = &unk_1E7A7E388;
  v6[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v4, v5, v6);
}

- (void)_setSourceObject:(id)object forBinding:(id)binding
{
  if (objc_msgSend_sourceObject(binding, a2, object) != object)
  {
    objc_msgSend_setSourceObject_(binding, v7, object);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF3497D8;
    v9[3] = &unk_1E7A7E3B0;
    v9[4] = self;
    v9[5] = binding;
    v9[6] = object;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
  }
}

- (void)enumerateAnimationReferencesUsingBlock:(id)block
{
  bindings = self->_bindings;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF349914;
  v4[3] = &unk_1E7A7E400;
  v4[4] = self;
  v4[5] = block;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(bindings, a2, v4);
}

- (void)removeAllAnimationsWithBlendOutDuration:(float)duration
{
  objc_msgSend_begin(VFXTransaction, a2, v3);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v6, v7, duration);
  objc_msgSend_removeAllAnimations(self, v8, v9);

  objc_msgSend_commit(VFXTransaction, v10, v11);
}

- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration
{
  objc_msgSend_begin(VFXTransaction, a2, key);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v7, v8, duration);
  objc_msgSend_removeAnimationForKey_(self, v9, key);

  objc_msgSend_commit(VFXTransaction, v10, v11);
}

- (id)root
{
  if ((byte_1EB658E70 & 1) == 0)
  {
    byte_1EB658E70 = 1;
    v4 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF97A0();
    }
  }

  return objc_msgSend_rootNode(self, a2, v2);
}

- (VFXNode)rootNode
{
  if (*(self + 16))
  {
    v14 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF97DC(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    return 0;
  }

  else
  {
    if (!self->_rootNode)
    {
      v4 = objc_msgSend_worldRef(self, a2, v2);
      v6 = v4;
      if (v4)
      {
        sub_1AF1CEA20(v4, v5);
      }

      if (!self->_rootNode)
      {
        world = self->_world;
        if (world)
        {
          sub_1AF1CEA20(world, v5);
          v10 = sub_1AF1CF7E8(self->_world, v8);
          if (v10)
          {
            v11 = objc_msgSend_nodeWithNodeRef_(VFXNode, v9, v10);
            self->_rootNode = v11;
            objc_msgSend_addWorldReference_(v11, v12, self);
          }

          else
          {
            v23 = objc_msgSend_node(VFXNode, v9, 0);
            objc_msgSend__setRootNode_immediate_(self, v24, v23, 1);
          }

          sub_1AF1CEA9C(self->_world, v13);
        }
      }

      if (v6)
      {
        sub_1AF1CEA9C(v6, v5);
      }
    }

    v25 = self->_rootNode;

    return v25;
  }
}

- (void)_setRootNode:(id)node immediate:(BOOL)immediate
{
  if (*(self + 16))
  {
    v21 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9854(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  else
  {
    rootNode = self->_rootNode;
    if (rootNode != node)
    {
      immediateCopy = immediate;
      objc_msgSend_removeWorldReference_(rootNode, a2, self);

      nodeCopy = node;
      self->_rootNode = nodeCopy;
      objc_msgSend_addWorldReference_(nodeCopy, v9, self);

      self->_layerRootNode[0] = node;
      if (immediateCopy)
      {
        v12 = objc_msgSend_worldRef(self, v10, v11);
        if (v12)
        {
          v15 = v12;
          sub_1AF1CEA20(v12, v13);
          world = self->_world;
          v19 = objc_msgSend_nodeRef(node, v17, v18);
          sub_1AF1CF614(world, v19);

          sub_1AF1CEA9C(v15, v20);
        }

        else
        {
          v29 = self->_world;
          v30 = objc_msgSend_nodeRef(node, v13, v14);

          sub_1AF1CF614(v29, v30);
        }
      }

      else
      {
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = sub_1AF349D7C;
        v31[3] = &unk_1E7A7E220;
        v31[4] = self;
        v31[5] = node;
        objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v31);
      }
    }
  }
}

- (void)setRootNode:(id)node forLayer:(int)layer
{
  if (*(self + 16))
  {
    v22 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF98CC(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  else
  {
    v4 = *&layer;
    layerRootNode = self->_layerRootNode;
    v8 = self->_layerRootNode[layer];
    if (v8 != node)
    {
      if (layer)
      {
        objc_msgSend_removeWorldReference_(v8, a2, self);

        nodeCopy = node;
        layerRootNode[v4] = nodeCopy;
        objc_msgSend_addWorldReference_(nodeCopy, v10, self);
        v13 = objc_msgSend_worldRef(self, v11, v12);
        if (v13)
        {
          v16 = v13;
          sub_1AF1CEA20(v13, v14);
          world = self->_world;
          v20 = objc_msgSend_nodeRef(node, v18, v19);
          sub_1AF1D10C8(world, v4, v20);

          sub_1AF1CEA9C(v16, v21);
        }

        else
        {
          v30 = self->_world;
          v31 = objc_msgSend_nodeRef(node, v14, v15);

          sub_1AF1D10C8(v30, v4, v31);
        }
      }

      else
      {

        objc_msgSend__setRootNode_immediate_(self, a2, node, 0);
      }
    }
  }
}

- (id)assetRegistry
{
  if (*(self + 16))
  {
    v6 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9944(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    return 0;
  }

  else
  {
    result = self->_assetRegistry;
    if (!result)
    {
      v4 = objc_alloc_init(VFXAssetRegistry);
      self->_assetRegistry = v4;
      objc_msgSend_addWorldReference_(v4, v5, self);
      return self->_assetRegistry;
    }
  }

  return result;
}

- (id)defaultRenderGraph
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_defaultRenderGraph;
  }

  v3 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF99BC(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return 0;
}

- (void)setDefaultRenderGraph:(id)graph
{
  if (*(self + 16))
  {
    v8 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9A34(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  else
  {
    defaultRenderGraph = self->_defaultRenderGraph;
    if (defaultRenderGraph != graph)
    {
      objc_msgSend_removeWorldReference_(defaultRenderGraph, a2, self);

      graphCopy = graph;
      self->_defaultRenderGraph = graphCopy;

      objc_msgSend_addWorldReference_(graphCopy, v7, self);
    }
  }
}

- (id)defaultPointOfView
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_defaultPointOfView;
  }

  v3 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF9AAC(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return 0;
}

- (void)setDefaultPointOfView:(id)view
{
  if (*(self + 16))
  {
    v6 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9B24(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    defaultPointOfView = self->_defaultPointOfView;
    if (defaultPointOfView != view)
    {

      self->_defaultPointOfView = view;
    }
  }
}

- (id)preferredConfiguration
{
  result = self->_preferredConfiguration;
  if (!result)
  {
    result = objc_alloc_init(VFXViewConfiguration);
    self->_preferredConfiguration = result;
  }

  return result;
}

- (void)_scaleWorldBy:(float)by
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF34A1E8;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  *&v4 = by;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

+ (BOOL)canImportFileUTI:(id)i
{
  if (objc_msgSend_isEqualToString_(i, a2, @"org.khronos.collada.digital-asset-exchange"))
  {
    return 1;
  }

  return objc_msgSend_hasPrefix_(i, v4, @"com.apple.vfx");
}

+ (BOOL)canImportFileExtension:(id)extension
{
  v3 = objc_msgSend_lowercaseString(extension, a2, extension);
  if (objc_msgSend_isEqualToString_(v3, v4, @"dae") & 1) != 0 || (objc_msgSend_isEqualToString_(v3, v5, @"vfx-world") & 1) != 0 || (objc_msgSend_isEqualToString_(v3, v6, @"vfxz-world") & 1) != 0 || (objc_msgSend_isEqualToString_(v3, v7, @"scn") & 1) != 0 || (objc_msgSend_isEqualToString_(v3, v8, @"scnz") & 1) != 0 || (objc_msgSend_isEqualToString_(v3, v9, @"c3d"))
  {
    return 1;
  }

  v12 = MEMORY[0x1E6974B48];

  return objc_msgSend_canImportFileExtension_(v12, v10, v3);
}

+ (id)supportedFileUTIsForImport
{
  v3 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2);
  objc_msgSend_addObjectsFromArray_(v3, v4, &unk_1F25D4768);
  return v3;
}

+ (id)supportedFileUTIsForExport
{
  v3 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2);
  objc_msgSend_addObjectsFromArray_(v3, v4, &unk_1F25D4780);
  return v3;
}

- (id)_physicsWorldCreateIfNeeded:(BOOL)needed
{
  result = self->_physicsWorld;
  if (result)
  {
    v5 = 1;
  }

  else
  {
    v5 = !needed;
  }

  if (!v5)
  {
    v6 = [VFXPhysicsWorld alloc];
    result = objc_msgSend_initWithWorld_(v6, v7, self);
    self->_physicsWorld = result;
  }

  return result;
}

- (double)startTime
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  if (v4)
  {
    v6 = v4;
    sub_1AF1CEA20(v4, v5);
    v8 = sub_1AF1CF93C(self->_world, v7);
    sub_1AF1CEA9C(v6, v9);
    return v8;
  }

  else
  {
    world = self->_world;

    return sub_1AF1CF93C(world, v5);
  }
}

- (void)setStartTime:(double)time
{
  v6 = objc_msgSend_worldRef(self, a2, v3);
  if (v6)
  {
    v8 = v6;
    sub_1AF1CEA20(v6, v7);
    sub_1AF1CF9CC(self->_world, v9, time);

    sub_1AF1CEA9C(v8, v10);
  }

  else
  {
    world = self->_world;

    sub_1AF1CF9CC(world, v7, time);
  }
}

- (double)endTime
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  if (v4)
  {
    v6 = v4;
    sub_1AF1CEA20(v4, v5);
    v8 = sub_1AF1CF984(self->_world, v7);
    sub_1AF1CEA9C(v6, v9);
    return v8;
  }

  else
  {
    world = self->_world;

    return sub_1AF1CF984(world, v5);
  }
}

- (void)setEndTime:(double)time
{
  v6 = objc_msgSend_worldRef(self, a2, v3);
  if (v6)
  {
    v8 = v6;
    sub_1AF1CEA20(v6, v7);
    sub_1AF1CFA20(self->_world, v9, time);

    sub_1AF1CEA9C(v8, v10);
  }

  else
  {
    world = self->_world;

    sub_1AF1CFA20(world, v7, time);
  }
}

- (double)frameRate
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  if (v4)
  {
    v6 = v4;
    sub_1AF1CEA20(v4, v5);
    v8 = sub_1AF1CFA74(self->_world, v7);
    sub_1AF1CEA9C(v6, v9);
  }

  else
  {
    return sub_1AF1CFA74(self->_world, v5);
  }

  return v8;
}

- (void)setFrameRate:(double)rate
{
  v6 = objc_msgSend_worldRef(self, a2, v3);
  if (v6)
  {
    v8 = v6;
    sub_1AF1CEA20(v6, v7);
    rateCopy = rate;
    sub_1AF1CFABC(self->_world, v10, rateCopy);

    sub_1AF1CEA9C(v8, v11);
  }

  else
  {
    world = self->_world;

    rateCopy2 = rate;
    sub_1AF1CFABC(world, v7, rateCopy2);
  }
}

- (float)playbackSpeed
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  if (v4)
  {
    v6 = v4;
    sub_1AF1CEA20(v4, v5);
    v8 = sub_1AF1CFB10(self->_world, v7);
    sub_1AF1CEA9C(v6, v9);
    return v8;
  }

  else
  {
    world = self->_world;

    return sub_1AF1CFB10(world, v5);
  }
}

- (void)setPlaybackSpeed:(float)speed
{
  v6 = objc_msgSend_worldRef(self, a2, v3);
  if (v6)
  {
    v8 = v6;
    sub_1AF1CEA20(v6, v7);
    sub_1AF1CFB58(self->_world, v9, speed);

    sub_1AF1CEA9C(v8, v10);
  }

  else
  {
    world = self->_world;

    sub_1AF1CFB58(world, v7, speed);
  }
}

- (VFXMaterialProperty)background
{
  result = self->_background;
  if (!result)
  {
    v5 = [VFXMaterialProperty alloc];
    result = objc_msgSend_initWithParent_propertyType_(v5, v6, self, 25);
    self->_background = result;
  }

  if (*(self + 16))
  {

    return objc_msgSend_presentationObject(result, a2, v2);
  }

  return result;
}

- (VFXMaterialProperty)lightingEnvironment
{
  result = self->_environment;
  if (!result)
  {
    v5 = [VFXMaterialProperty alloc];
    result = objc_msgSend_initWithParent_propertyType_(v5, v6, self, 26);
    self->_environment = result;
  }

  if (*(self + 16))
  {

    return objc_msgSend_presentationObject(result, a2, v2);
  }

  return result;
}

- (BOOL)_allowsDefaultLightingEnvironmentFallback
{
  if (*(self + 16))
  {
    return sub_1AF1D131C(self->_world, a2);
  }

  else
  {
    return self->_allowsDefaultLightingEnvironmentFallback;
  }
}

- (void)set_allowsDefaultLightingEnvironmentFallback:(BOOL)fallback
{
  if (self->_allowsDefaultLightingEnvironmentFallback != fallback || (*(self + 16) & 1) != 0)
  {
    v7 = v3;
    v8 = v4;
    self->_allowsDefaultLightingEnvironmentFallback = fallback;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34A964;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    fallbackCopy = fallback;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (void)setAuthoringEnvironment2:(id)environment2
{
  authoringEnvironment2 = self->_authoringEnvironment2;
  if (authoringEnvironment2 != environment2)
  {

    self->_authoringEnvironment2 = environment2;
  }
}

- (id)fogColor
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_fogColor;
  }

  v4 = sub_1AF1D048C(self->_world, a2);

  return sub_1AF371814(v4, v5);
}

- (void)setFogColor:(id)color
{
  if (!objc_msgSend_isEqual_(color, a2, self->_fogColor) || (*(self + 16) & 1) != 0)
  {

    self->_fogColor = color;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF34AAB4;
    v6[3] = &unk_1E7A7E220;
    v6[4] = color;
    v6[5] = self;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v5, self, @"fogColor", v6);
  }
}

- (double)fogColor_linearExtendedSRGB
{
  v3 = objc_msgSend_fogColor(self, a2, a3);

  return CFXColorGetLinearExtendedSRGBComponents(v3);
}

- (void)setFogColor_linearExtendedSRGB:(VFXWorld *)self
{
  v4 = sub_1AF16484C(self, a2, v2);
  v6 = objc_msgSend_colorWithCGColor_(MEMORY[0x1E69DC888], v5, v4);
  objc_msgSend_setFogColor_(self, v7, v6);
  if (v4)
  {

    CFRelease(v4);
  }
}

- (float)fogEndDistance
{
  if (*(self + 16))
  {
    return sub_1AF1D02FC(self->_world, a2);
  }

  else
  {
    return self->_fogEndDistance;
  }
}

- (void)setFogEndDistance:(float)distance
{
  if (self->_fogEndDistance != distance || (*(self + 16) & 1) != 0)
  {
    v7 = v3;
    v8 = v4;
    self->_fogEndDistance = distance;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34AC44;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = distance;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"fogEndDistance", v5);
  }
}

- (float)fogDensityExponent
{
  if (*(self + 16))
  {
    return sub_1AF1D0260(self->_world, a2);
  }

  else
  {
    return self->_fogDensityExponent;
  }
}

- (void)setFogDensityExponent:(float)exponent
{
  if (self->_fogDensityExponent != exponent || (*(self + 16) & 1) != 0)
  {
    v7 = v3;
    v8 = v4;
    self->_fogDensityExponent = exponent;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34AD10;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = exponent;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"fogDensityExponent", v5);
  }
}

- (float)fogStartDistance
{
  if (*(self + 16))
  {
    return sub_1AF1D0398(self->_world, a2);
  }

  else
  {
    return self->_fogStartDistance;
  }
}

- (void)setFogStartDistance:(float)distance
{
  if (self->_fogStartDistance != distance || (*(self + 16) & 1) != 0)
  {
    v7 = v3;
    v8 = v4;
    self->_fogStartDistance = distance;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34ADDC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = distance;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"fogStartDistance", v5);
  }
}

- (BOOL)wantsScreenSpaceAmbientOcclusion
{
  if (*(self + 16))
  {
    return sub_1AF1D053C(self->_world, a2);
  }

  else
  {
    return self->_wantsScreenSpaceAmbientOcclusion;
  }
}

- (void)setWantsScreenSpaceAmbientOcclusion:(BOOL)occlusion
{
  if (self->_wantsScreenSpaceAmbientOcclusion != occlusion || (*(self + 16) & 1) != 0)
  {
    v7 = v3;
    v8 = v4;
    self->_wantsScreenSpaceAmbientOcclusion = occlusion;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34AEA4;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    occlusionCopy = occlusion;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)screenSpaceAmbientOcclusionIntensity
{
  if (*(self + 16))
  {
    return sub_1AF1D0600(self->_world, a2);
  }

  else
  {
    return self->_screenSpaceAmbientOcclusionIntensity;
  }
}

- (void)setScreenSpaceAmbientOcclusionIntensity:(float)intensity
{
  if (self->_screenSpaceAmbientOcclusionIntensity != intensity || (*(self + 16) & 1) != 0)
  {
    v7 = v3;
    v8 = v4;
    self->_screenSpaceAmbientOcclusionIntensity = intensity;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34AF68;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = intensity;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)screenSpaceAmbientOcclusionRadius
{
  if (*(self + 16))
  {
    return sub_1AF1D069C(self->_world, a2);
  }

  else
  {
    return self->_screenSpaceAmbientOcclusionRadius;
  }
}

- (void)setScreenSpaceAmbientOcclusionRadius:(float)radius
{
  if (self->_screenSpaceAmbientOcclusionRadius != radius || (*(self + 16) & 1) != 0)
  {
    v7 = v3;
    v8 = v4;
    self->_screenSpaceAmbientOcclusionRadius = radius;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34B02C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = radius;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)screenSpaceAmbientOcclusionEnableBentNormal
{
  if (*(self + 16))
  {
    return sub_1AF1D0738(self->_world, a2);
  }

  else
  {
    return self->_screenSpaceAmbientOcclusionEnableBentNormal;
  }
}

- (void)setScreenSpaceAmbientOcclusionEnableBentNormal:(BOOL)normal
{
  if (self->_screenSpaceAmbientOcclusionEnableBentNormal != normal || (*(self + 16) & 1) != 0)
  {
    v7 = v3;
    v8 = v4;
    self->_screenSpaceAmbientOcclusionEnableBentNormal = normal;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34B0F4;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    normalCopy = normal;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)screenSpaceAmbientOcclusionQuality
{
  if (*(self + 16))
  {
    return sub_1AF1D07FC(self->_world, a2);
  }

  else
  {
    return self->_screenSpaceAmbientOcclusionQuality;
  }
}

- (void)setScreenSpaceAmbientOcclusionQuality:(int64_t)quality
{
  if (self->_screenSpaceAmbientOcclusionQuality != quality || (*(self + 16) & 1) != 0)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_screenSpaceAmbientOcclusionQuality = quality;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34B1D4;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = quality;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)wantsScreenSpaceReflection
{
  if (*(self + 16))
  {
    return sub_1AF1D0898(self->_world, a2);
  }

  else
  {
    return self->_wantsScreenSpaceReflection;
  }
}

- (void)setWantsScreenSpaceReflection:(BOOL)reflection
{
  if (self->_wantsScreenSpaceReflection != reflection || (*(self + 16) & 1) != 0)
  {
    v7 = v3;
    v8 = v4;
    self->_wantsScreenSpaceReflection = reflection;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34B29C;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    reflectionCopy = reflection;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)screenSpaceReflectionQuality
{
  if (*(self + 16))
  {
    return sub_1AF1D095C(self->_world, a2);
  }

  else
  {
    return self->_screenSpaceReflectionQuality;
  }
}

- (void)setScreenSpaceReflectionQuality:(int64_t)quality
{
  if (self->_screenSpaceReflectionQuality != quality || (*(self + 16) & 1) != 0)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_screenSpaceReflectionQuality = quality;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34B37C;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = quality;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)screenSpaceReflectionThicknessMode
{
  if (*(self + 16))
  {
    return sub_1AF1D09F8(self->_world, a2);
  }

  else
  {
    return self->_screenSpaceReflectionThicknessMode;
  }
}

- (void)setScreenSpaceReflectionThicknessMode:(int64_t)mode
{
  if (self->_screenSpaceReflectionThicknessMode != mode || (*(self + 16) & 1) != 0)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_screenSpaceReflectionThicknessMode = mode;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34B45C;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mode;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)screenSpaceReflectionObjectThickness
{
  if (*(self + 16))
  {
    return sub_1AF1D0A94(self->_world, a2);
  }

  else
  {
    return self->_screenSpaceReflectionObjectThickness;
  }
}

- (void)setScreenSpaceReflectionObjectThickness:(float)thickness
{
  if (self->_screenSpaceReflectionObjectThickness != thickness || (*(self + 16) & 1) != 0)
  {
    v7 = v3;
    v8 = v4;
    self->_screenSpaceReflectionObjectThickness = thickness;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF34B520;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = thickness;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (id)dataRepresentationWithOptions:(id)options
{
  if (*(self + 16))
  {
    v41 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9B9C(v41, v42, v43, v44, v45, v46, v47, v48);
    }

    return 0;
  }

  else
  {
    v5 = objc_msgSend_stateManager(self, a2, options);
    active = objc_msgSend_activeState(v5, v6, v7);
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    v12 = objc_msgSend_stateManager(self, v10, v11);
    v15 = objc_msgSend_activeState(v12, v13, v14);
    CFDictionarySetValue(Mutable, self, v15);
    v18 = objc_msgSend_stateManager(self, v16, v17);
    objc_msgSend_setTransitionsEnabled_(v18, v19, 0);
    v22 = objc_msgSend_stateManager(self, v20, v21);
    objc_msgSend_setActiveState_(v22, v23, 0);
    v26 = objc_msgSend_rootNode(self, v24, v25);
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = sub_1AF34B754;
    v61[3] = &unk_1E7A7F400;
    v61[4] = Mutable;
    objc_msgSend_enumerateHierarchyUsingBlock_(v26, v27, v61);
    v29 = objc_msgSend_objectForKeyedSubscript_(options, v28, @"VFXWorldExportPresentationTree");
    v32 = objc_msgSend_BOOLValue(v29, v30, v31);
    v34 = objc_msgSend_objectForKeyedSubscript_(options, v33, @"kSceneSourceFormat");
    isEqualToString = objc_msgSend_isEqualToString_(v34, v35, @"vfxz-world");
    if (v32)
    {
      v39 = objc_msgSend_worldRef(self, v36, v37);
      v40 = v39;
      if (v39)
      {
        sub_1AF1CEA20(v39, v36);
      }
    }

    else
    {
      v40 = 0;
    }

    v49 = objc_msgSend_archivedDataWithRootObject_options_(VFXKeyedArchiver, v36, self, options);
    v52 = v32 ^ 1;
    if (!v40)
    {
      v52 = 1;
    }

    if ((v52 & 1) == 0)
    {
      sub_1AF1CEA9C(v40, v50);
    }

    v53 = objc_msgSend_stateManager(self, v50, v51);
    objc_msgSend_setActiveState_(v53, v54, active);
    v57 = objc_msgSend_stateManager(self, v55, v56);
    objc_msgSend_setTransitionsEnabled_(v57, v58, 1);
    CFDictionaryApplyFunction(Mutable, sub_1AF34B7D0, 0);
    CFRelease(Mutable);
    if (isEqualToString)
    {
      return objc_msgSend_vfx_compressedDataUsingCompressionAlgorithm_(v49, v59, 517);
    }
  }

  return v49;
}

- (BOOL)writeToURL:(id)l options:(id)options progressHandler:(id)handler
{
  if (*(self + 16))
  {
    v10 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9C14(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    return 0;
  }

  v55 = 0;
  if (options)
  {
    v8 = objc_msgSend_mutableCopy(options, a2, l);
  }

  else
  {
    v8 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, l);
  }

  v19 = v8;
  v22 = objc_msgSend_valueForKey_(v8, v9, @"kSceneSourceFormat");
  if (!v22)
  {
    v23 = objc_msgSend_pathExtension(l, v20, v21);
    v26 = objc_msgSend_lowercaseString(v23, v24, v25);
    if (objc_msgSend_isEqualToString_(v26, v27, @"plist") & 1) != 0 || (objc_msgSend_isEqualToString_(v26, v20, @"vfx-world"))
    {
      v28 = VFXWorldLoaderFormatVFXWorld;
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(v26, v20, @"vfxz-world"))
      {
        v22 = 0;
        isEqualToString = objc_msgSend_isEqualToString_(0, v20, @"vfx-world");
        goto LABEL_15;
      }

      v28 = VFXWorldLoaderFormatVFXWorldCompressed;
    }

    v22 = *v28;
    if (*v28)
    {
      objc_msgSend_setValue_forKey_(v19, v20, *v28, @"kSceneSourceFormat");
    }
  }

  isEqualToString = objc_msgSend_isEqualToString_(v22, v20, @"vfx-world");
LABEL_15:
  if ((isEqualToString & 1) != 0 || objc_msgSend_isEqualToString_(v22, v30, @"vfxz-world"))
  {
    v32 = objc_msgSend_dataRepresentationWithOptions_(self, v30, v19);
    v54 = 0;
    v34 = objc_msgSend_writeToURL_options_error_(v32, v33, l, 1, &v54);
    goto LABEL_31;
  }

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v50 = sub_1AF34BB84;
  v51 = &unk_1E7A7F428;
  v52 = v22;
  lCopy = l;
  if (v22)
  {
    if ((objc_msgSend_isEqualToString_(v22, v30, @"usd") & 1) == 0 && (objc_msgSend_isEqualToString_(v22, v35, @"usda") & 1) == 0 && (objc_msgSend_isEqualToString_(v22, v36, @"usdc") & 1) == 0 && (objc_msgSend_isEqualToString_(v22, v37, @"usdz") & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_30:
    v54 = 0;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = sub_1AF34BCCC;
    v48[3] = &unk_1E7A7F450;
    v48[4] = self;
    v34 = v50(v49, &v54, v48);
    goto LABEL_31;
  }

  v38 = objc_msgSend_pathExtension(l, v30, v31);
  v41 = objc_msgSend_lowercaseString(v38, v39, v40);
  if ((objc_msgSend_isEqualToString_(v41, v42, @"usd") & 1) != 0 || (objc_msgSend_isEqualToString_(v41, v43, @"usda") & 1) != 0 || (objc_msgSend_isEqualToString_(v41, v44, @"usdc") & 1) != 0 || objc_msgSend_isEqualToString_(v41, v45, @"usdz"))
  {
    goto LABEL_30;
  }

LABEL_35:
  if (!NSClassFromString(&cfstr_Mdlasset.isa))
  {
    return 0;
  }

  v54 = 0;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = sub_1AF34BCD8;
  v47[3] = &unk_1E7A7F450;
  v47[4] = self;
  v34 = v50(v49, &v54, v47);
LABEL_31:
  v18 = v34;
  if (handler)
  {
    (*(handler + 2))(handler, v54, &v55, 1.0);
  }

  return v18;
}

- (void)_dumpToDisk
{
  v4 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, v2);
  v7 = objc_msgSend_temporaryDirectory(v4, v5, v6);
  v11 = objc_msgSend_path(v7, v8, v9);
  v12 = 0;
  do
  {
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, @"worldDump%d.vfx", v12);
    v15 = objc_msgSend_stringByAppendingPathComponent_(v11, v14, v13);
    v12 = (v12 + 1);
    v18 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v16, v17);
  }

  while ((objc_msgSend_fileExistsAtPath_(v18, v19, v15) & 1) != 0);
  NSLog(&cfstr_DumpingWorldTo.isa, v15);
  v21 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v20, v15);

  MEMORY[0x1EEE66B58](self, sel_writeToURL_options_progressHandler_, v21);
}

- (void)lock
{
  v3 = objc_msgSend_worldRef(self, a2, v2);
  if (v3)
  {

    sub_1AF1CEA20(v3, v4);
  }
}

- (void)unlock
{
  v3 = objc_msgSend_worldRef(self, a2, v2);
  if (v3)
  {

    sub_1AF1CEA9C(v3, v4);
  }
}

- (id)copyAnimationChannelForKeyPath:(id)path animation:(id)animation
{
  v37 = 0;
  v38 = 0;
  sub_1AF3716AC(path, &v38, &v37);
  if (objc_msgSend_isEqual_(v38, v7, @"root"))
  {
    if (!self->_rootNode)
    {
      v10 = objc_msgSend_worldRef(self, v8, v9);
      v11 = v10;
      if (v10)
      {
        sub_1AF1CEA20(v10, v8);
      }

      if (!self->_rootNode)
      {
        world = self->_world;
        if (world)
        {
          sub_1AF1CEA20(world, v8);
          v15 = sub_1AF1CF7E8(self->_world, v13);
          if (v15)
          {
            v16 = objc_msgSend_nodeWithNodeRef_(VFXNode, v14, v15);
            self->_rootNode = v16;
            objc_msgSend_addWorldReference_(v16, v17, self);
          }

          else
          {
            v33 = objc_msgSend_node(VFXNode, v14, 0);
            objc_msgSend__setRootNode_immediate_(self, v34, v33, 1);
          }

          sub_1AF1CEA9C(self->_world, v18);
        }
      }

      if (v11)
      {
        sub_1AF1CEA9C(v11, v8);
      }
    }

    result = self->_rootNode;
    return objc_msgSend_copyAnimationChannelForKeyPath_animation_(result, v8, v37, animation);
  }

  if (objc_msgSend_hasPrefix_(path, v8, @"/"))
  {
    if (!self->_rootNode)
    {
      goto LABEL_14;
    }

    return objc_msgSend_copyAnimationChannelForKeyPath_animation_(self->_rootNode, v19, path, animation);
  }

  hasPrefix = objc_msgSend_hasPrefix_(path, v19, @"children[");
  rootNode = self->_rootNode;
  if (hasPrefix)
  {
    if (!rootNode)
    {
LABEL_14:
      v23 = objc_msgSend_worldRef(self, v19, v20);
      v24 = v23;
      if (v23)
      {
        sub_1AF1CEA20(v23, v19);
      }

      if (!self->_rootNode)
      {
        v25 = self->_world;
        if (v25)
        {
          sub_1AF1CEA20(v25, v19);
          v28 = sub_1AF1CF7E8(self->_world, v26);
          if (v28)
          {
            v29 = objc_msgSend_nodeWithNodeRef_(VFXNode, v27, v28);
            self->_rootNode = v29;
            objc_msgSend_addWorldReference_(v29, v30, self);
          }

          else
          {
            v35 = objc_msgSend_node(VFXNode, v27, 0);
            objc_msgSend__setRootNode_immediate_(self, v36, v35, 1);
          }

          sub_1AF1CEA9C(self->_world, v31);
        }
      }

      if (v24)
      {
        sub_1AF1CEA9C(v24, v19);
      }
    }

    return objc_msgSend_copyAnimationChannelForKeyPath_animation_(self->_rootNode, v19, path, animation);
  }

  result = objc_msgSend_childNodeWithName_recursively_(rootNode, v19, v38, 1);
  if (result)
  {
    return objc_msgSend_copyAnimationChannelForKeyPath_animation_(result, v8, v37, animation);
  }

  return result;
}

- (id)copyAnimationChannelForKeyPath:(id)path property:(id)property
{
  if (self->_background == property)
  {
    v6 = off_1E7A7BE10;
  }

  else
  {
    if (self->_environment != property)
    {
      return 0;
    }

    v6 = off_1E7A7BE18;
  }

  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%@.%@", *v6, path);

  return sub_1AF291EF0(self, v7, v8);
}

- (id)valueForUndefinedKey:(id)key
{
  if (*(self + 16))
  {
    v18 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9C8C(v18, v19, v20, v21, v22, v23, v24, v25);
    }

    return 0;
  }

  else
  {
    hasPrefix = objc_msgSend_hasPrefix_(key, a2, @"/");
    rootNode = self->_rootNode;
    if (hasPrefix)
    {
      if (!rootNode)
      {
        v9 = objc_msgSend_worldRef(self, v5, v6);
        v10 = v9;
        if (v9)
        {
          sub_1AF1CEA20(v9, v5);
        }

        if (!self->_rootNode)
        {
          world = self->_world;
          if (world)
          {
            sub_1AF1CEA20(world, v5);
            v14 = sub_1AF1CF7E8(self->_world, v12);
            if (v14)
            {
              v15 = objc_msgSend_nodeWithNodeRef_(VFXNode, v13, v14);
              self->_rootNode = v15;
              objc_msgSend_addWorldReference_(v15, v16, self);
            }

            else
            {
              v28 = objc_msgSend_node(VFXNode, v13, 0);
              objc_msgSend__setRootNode_immediate_(self, v29, v28, 1);
            }

            sub_1AF1CEA9C(self->_world, v17);
          }
        }

        if (v10)
        {
          sub_1AF1CEA9C(v10, v5);
        }
      }

      userAttributes = self->_rootNode;
    }

    else
    {
      result = objc_msgSend_childNodeWithName_recursively_(rootNode, v5, key, 1);
      if (result)
      {
        return result;
      }

      userAttributes = self->_userAttributes;
    }

    return objc_msgSend_valueForKey_(userAttributes, v5, key);
  }
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  if (*(self + 16))
  {
    v6 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9D04(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    userAttributes = self->_userAttributes;

    objc_msgSend_setValue_forKey_(userAttributes, a2, value, key);
  }
}

- (id)_nodeWithIndexPath:(id)path
{
  if (*(self + 16))
  {
    v22 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9D7C(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    return 0;
  }

  v4 = objc_msgSend_rootNode(self, a2, path);
  v7 = objc_msgSend_length(path, v5, v6);
  if (v7 >= 1)
  {
    v9 = v7;
    v10 = 0;
    while (1)
    {
      v11 = objc_msgSend_indexAtPosition_(path, v8, v10);
      v14 = objc_msgSend_childNodes(v4, v12, v13);
      v17 = objc_msgSend_count(v14, v15, v16);
      if (v17 <= v11)
      {
        break;
      }

      ++v10;
      v20 = objc_msgSend_childNodes(v4, v18, v19);
      v4 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, v11);
      if (v9 == v10)
      {
        return v4;
      }
    }

    v30 = sub_1AF0D5194(v17, v18);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9DF4();
    }

    return 0;
  }

  return v4;
}

+ (id)_indexPathForNode:(id)node
{
  if (!node)
  {
    return 0;
  }

  nodeCopy = node;
  v4 = -1;
  v5 = -8;
  nodeCopy2 = node;
  do
  {
    nodeCopy2 = objc_msgSend_parentNode(nodeCopy2, a2, node);
    ++v4;
    v5 += 8;
  }

  while (nodeCopy2);
  if (v4)
  {
    v7 = malloc_type_malloc(v5, 0x100004000313F17uLL);
    v10 = objc_msgSend_parentNode(nodeCopy, v8, v9);
    if (!v10)
    {
      goto LABEL_9;
    }

    v12 = v4 + 1;
    do
    {
      v13 = v10;
      v7[v12 - 2] = objc_msgSend_indexOfChildNode_(v10, v11, nodeCopy);
      v10 = objc_msgSend_parentNode(v13, v14, v15);
      --v12;
      nodeCopy = v13;
    }

    while (v10);
    if (v12 != 1)
    {
LABEL_9:
      v16 = sub_1AF0D5194(v10, v11);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF9E30(v16, v17, v18, v19, v20, v21, v22, v23);
      }
    }

    v24 = objc_alloc(MEMORY[0x1E696AC88]);
    v26 = objc_msgSend_initWithIndexes_length_(v24, v25, v7, v4);
    free(v7);
    return v26;
  }

  else
  {
    v28 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9EA8();
    }

    return 0;
  }
}

- (id)_subnodeFromIndexPath:(id)path
{
  if (path)
  {
    return MEMORY[0x1EEE66B58](self, sel__nodeWithIndexPath_, path);
  }

  return self;
}

- (void)prepareForRenderer:(id)renderer progressHandler:(id)handler
{
  v42[1] = *MEMORY[0x1E69E9840];
  if ((*(self + 16) & 1) == 0)
  {
    v40 = 0;
    objc_opt_class();
    rendererCopy = renderer;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_10;
      }

      rendererCopy = objc_msgSend_renderer(renderer, v7, v10);
    }

    if (rendererCopy)
    {
      v11 = objc_msgSend__rendererForPrepare(renderer, v7, v8);
      objc_msgSend_prepareObject_shouldAbortBlock_(v11, v12, self, 0);
      objc_msgSend_lock(v11, v13, v14);
      objc_msgSend_lock(rendererCopy, v15, v16);
      v19 = objc_msgSend_worldRef(self, v17, v18);
      sub_1AF1CEA20(v19, v20);
      objc_msgSend_transferRenderGraphResourcesFrom_(rendererCopy, v21, v11);
      sub_1AF1CEA9C(v19, v22);
      objc_msgSend_unlock(rendererCopy, v23, v24);
      objc_msgSend_unlock(v11, v25, v26);
      v27 = 0;
      if (!handler)
      {
        return;
      }

LABEL_12:
      (*(handler + 2))(handler, v27, &v40, 1.0);
      return;
    }

LABEL_10:
    if (!handler)
    {
      return;
    }

    v36 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A250];
    v41 = *MEMORY[0x1E696A578];
    v42[0] = @"unknown renderer type";
    v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v42, &v41, 1);
    v27 = objc_msgSend_errorWithDomain_code_userInfo_(v36, v39, v37, 3328, v38);
    goto LABEL_12;
  }

  v28 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF9F10(v28, v29, v30, v31, v32, v33, v34, v35);
  }
}

- (void)prepareWithRenderer:(id)renderer
{
  if (*(self + 16))
  {
    v4 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF9F88(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else
  {

    objc_msgSend_prepareObject_shouldAbortBlock_(renderer, a2, self, 0);
  }
}

- (id)initForJavascript:(id)javascript
{
  v41.receiver = self;
  v41.super_class = VFXWorld;
  v4 = [(VFXWorld *)&v41 init];
  if (v4)
  {
    if (javascript)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        javascriptCopy = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v5, javascript);
        if (!objc_msgSend_scheme(javascriptCopy, v7, v8))
        {
          javascriptCopy = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v9, javascript);
        }
      }

      else
      {
        javascriptCopy = javascript;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = objc_msgSend_loader(VFXWorldLoader, v10, v11);
        WorldFromURL_options_statusHandler_error = objc_msgSend_loadWorldFromURL_options_statusHandler_error_(v12, v13, javascriptCopy, 0, 0, 0);
        v17 = objc_msgSend_rootNode(v4, v15, v16);
        v20 = objc_msgSend_assets(v4, v18, v19);
        v23 = objc_msgSend_rootNode(v20, v21, v22);
        objc_msgSend_mergeWorld_parentNode_parentAssetNode_(v4, v24, WorldFromURL_options_statusHandler_error, v17, v23);
      }
    }

    v25 = sub_1AF1CF520();
    *(v4 + 1) = v25;
    objc_msgSend_setWorld_(*(v4 + 27), v26, v25);
    v29 = *(v4 + 1);
    if (v29)
    {
      sub_1AF16CDFC(v29, v4);
    }

    objc_msgSend__updateModelFromPresentation(v4, v27, v28);
    if (!*(v4 + 9))
    {
      v31 = *(v4 + 1);
      if (v31)
      {
        sub_1AF1CEA20(v31, v30);
        v34 = sub_1AF1CF7E8(*(v4 + 1), v32);
        if (v34)
        {
          v35 = objc_msgSend_nodeWithNodeRef_(VFXNode, v33, v34);
          *(v4 + 9) = v35;
          objc_msgSend_addWorldReference_(v35, v36, v4);
        }

        else
        {
          v38 = objc_msgSend_node(VFXNode, v33, 0);
          objc_msgSend__setRootNode_immediate_(v4, v39, v38, 1);
        }

        sub_1AF1CEA9C(*(v4 + 1), v37);
      }
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInteger_forKey_(coder, a2, 1, @"version");
  objc_msgSend_endTime(self, v5, v6);
  objc_msgSend_encodeDouble_forKey_(coder, v7, @"endTime");
  objc_msgSend_startTime(self, v8, v9);
  objc_msgSend_encodeDouble_forKey_(coder, v10, @"startTime");
  objc_msgSend_frameRate(self, v11, v12);
  objc_msgSend_encodeDouble_forKey_(coder, v13, @"frameRate");
  defaultRenderGraph = self->_defaultRenderGraph;
  if (defaultRenderGraph)
  {
    objc_msgSend_encodeObject_forKey_(coder, v14, defaultRenderGraph, @"defaultRenderGraph");
  }

  defaultPointOfView = self->_defaultPointOfView;
  if (defaultPointOfView && objc_msgSend_world(defaultPointOfView, v14, defaultRenderGraph) == self)
  {
    objc_msgSend_encodeObject_forKey_(coder, v14, self->_defaultPointOfView, @"defaultPointOfView");
  }

  behaviorGraph = self->_behaviorGraph;
  if (behaviorGraph)
  {
    objc_msgSend_encodeObject_forKey_(coder, v14, behaviorGraph, @"behaviorGraph");
  }

  assetRegistry = self->_assetRegistry;
  if (assetRegistry)
  {
    objc_msgSend_encodeObject_forKey_(coder, v14, assetRegistry, @"assetRegistry");
  }

  preferredConfiguration = self->_preferredConfiguration;
  if (preferredConfiguration)
  {
    objc_msgSend_encodeObject_forKey_(coder, v14, preferredConfiguration, @"preferredConfiguration");
  }

  physicsWorld = self->_physicsWorld;
  if (physicsWorld && (objc_msgSend__isDefault(physicsWorld, v14, preferredConfiguration) & 1) == 0)
  {
    objc_msgSend_encodeObject_forKey_(coder, v14, self->_physicsWorld, @"physicsWorld");
  }

  rootNode = self->_rootNode;
  if (rootNode)
  {
    objc_msgSend_encodeObject_forKey_(coder, v14, rootNode, @"rootNode");
  }

  background = self->_background;
  if (background)
  {
    objc_msgSend_encodeObject_forKey_(coder, v14, background, @"background");
  }

  environment = self->_environment;
  if (environment)
  {
    objc_msgSend_encodeObject_forKey_(coder, v14, environment, @"environment");
  }

  userAttributes = self->_userAttributes;
  if (userAttributes)
  {
    objc_msgSend_encodeObject_forKey_(coder, v14, userAttributes, @"userAttributes");
  }

  stateManager = self->_stateManager;
  if (stateManager)
  {
    objc_msgSend_encodeObject_forKey_(coder, v14, stateManager, @"stateManager");
  }

  objc_msgSend_encodeDouble_forKey_(coder, v14, @"fogStartDistance", self->_fogStartDistance);
  objc_msgSend_encodeDouble_forKey_(coder, v26, @"fogEndDistance", self->_fogEndDistance);
  objc_msgSend_encodeDouble_forKey_(coder, v27, @"fogDensityExponent", self->_fogDensityExponent);
  fogColor = self->_fogColor;
  if (fogColor)
  {
    sub_1AF37266C(coder, fogColor, @"fogColor");
  }

  objc_msgSend_encodeBool_forKey_(coder, fogColor, self->_wantsScreenSpaceAmbientOcclusion, @"wantsScreenSpaceAmbientOcclusion");
  *&v29 = self->_screenSpaceAmbientOcclusionIntensity;
  objc_msgSend_encodeFloat_forKey_(coder, v30, @"screenSpaceAmbientOcclusionIntensity", v29);
  *&v31 = self->_screenSpaceAmbientOcclusionRadius;
  objc_msgSend_encodeFloat_forKey_(coder, v32, @"screenSpaceAmbientOcclusionRadius", v31);
  objc_msgSend_encodeBool_forKey_(coder, v33, self->_screenSpaceAmbientOcclusionEnableBentNormal, @"screenSpaceAmbientOcclusionEnableBentNormal");
  objc_msgSend_encodeInteger_forKey_(coder, v34, self->_screenSpaceAmbientOcclusionQuality, @"screenSpaceAmbientOcclusionQuality");
  objc_msgSend_encodeBool_forKey_(coder, v35, self->_wantsScreenSpaceReflection, @"wantsScreenSpaceReflection");
  objc_msgSend_encodeInteger_forKey_(coder, v36, self->_screenSpaceReflectionQuality, @"screenSpaceReflectionQuality");
  objc_msgSend_encodeInteger_forKey_(coder, v37, self->_screenSpaceReflectionThicknessMode, @"screenSpaceReflectionThicknessMode");
  *&v38 = self->_screenSpaceReflectionObjectThickness;
  objc_msgSend_encodeFloat_forKey_(coder, v39, @"screenSpaceReflectionObjectThickness", v38);
  objc_msgSend_encodeObject_forKey_(coder, v40, self->_shaderCacheConfigurations, @"shaderCacheConfigurations");
  triggerManager = self->_triggerManager;
  if (triggerManager)
  {
    objc_msgSend_encodeObject_forKey_(coder, v41, triggerManager, @"triggerManager");
  }

  sub_1AF3728B4(coder, self, triggerManager);

  sub_1AF372440(coder, self, v43);
}

- (VFXWorld)initWithCoder:(id)coder
{
  v186.receiver = self;
  v186.super_class = VFXWorld;
  v5 = [(VFXWorld *)&v186 init];
  if (!v5)
  {
    return v5;
  }

  v6 = objc_msgSend_valueForKey_(VFXTransaction, v4, @"VFXWorldLoadingContextKey");
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"VFXWorldLoaderDisableVFXCoreSupport");
  v11 = objc_msgSend_BOOLValue(v8, v9, v10);
  objc_msgSend_commonInit_(v5, v12, v11 ^ 1u);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    objc_msgSend__allowDecodingCyclesInSecureMode(coder, v13, v14);
  }

  v15 = objc_msgSend_immediateMode(VFXTransaction, v13, v14);
  objc_msgSend_setImmediateMode_(VFXTransaction, v16, 1);
  v18 = objc_msgSend_objectForKeyedSubscript_(v6, v17, @"VFXWorldLoaderLoadForAuthoring");
  if (objc_msgSend_BOOLValue(v18, v19, v20))
  {
    LODWORD(v22) = v11 | 2;
  }

  else
  {
    LODWORD(v22) = v11;
  }

  v23 = objc_msgSend_objectForKeyedSubscript_(v6, v21, @"kWorldInitOptionForRERendering");
  if (objc_msgSend_BOOLValue(v23, v24, v25))
  {
    v22 = v22 | 4;
  }

  else
  {
    v22 = v22;
  }

  v27 = objc_msgSend_objectForKeyedSubscript_(v6, v26, @"VFXWorldLoaderOptionMetalLibraryURL");
  v28 = sub_1AF1CF52C(v22, v27);
  *(v5 + 1) = v28;
  objc_msgSend_setWorld_(*(v5 + 27), v29, v28);
  if ((v11 & 1) == 0)
  {
    *(v5 + 33) = sub_1AF14E33C(*(v5 + 1));
  }

  v32 = *(v5 + 1);
  if (v32)
  {
    sub_1AF16CDFC(v32, v5);
  }

  objc_msgSend__updateModelFromPresentation(v5, v30, v31);
  v34 = objc_msgSend_valueForKey_(v6, v33, @"VFXWorldLoaderAssetPathResolver");
  if (v34)
  {
    objc_msgSend_setAssetPathResolver_(v5, v35, v34);
  }

  v36 = objc_msgSend_objectForKeyedSubscript_(v6, v35, @"url");
  if (v36)
  {
    v39 = v36;
    v40 = objc_msgSend_pathExtension(v36, v37, v38);
    v43 = objc_msgSend_lowercaseString(v40, v41, v42);
    if (objc_msgSend_isEqualToString_(v43, v44, @"vfx-world"))
    {
      v49 = objc_msgSend_mutableCopy(v6, v45, v46);
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_(v43, v45, @"vfxz-world");
      v49 = objc_msgSend_mutableCopy(v6, v51, v52);
      if (!isEqualToString)
      {
        v57 = *(v5 + 33);
        if (v57)
        {
          v58 = sub_1AF0FB884(v57);
        }

        else
        {
          v58 = 0;
        }

        PathComponent = objc_msgSend_URLByDeletingLastPathComponent(v39, v47, v48);
        objc_msgSend_initializeAssetManagerWithBundleURL_(v58, v60, PathComponent);
        v55 = objc_msgSend_assetPathResolver(v5, v61, v62);
        goto LABEL_26;
      }
    }

    v53 = objc_msgSend_URLByDeletingLastPathComponent(v39, v47, v48);
    v55 = objc_msgSend_resolverWithFolderURL_(VFXSimplePathResolver, v54, v53);
LABEL_26:
    objc_msgSend_setObject_forKeyedSubscript_(v49, v56, v55, @"VFXWorldLoaderAssetPathResolver");
    objc_msgSend_setValue_forKey_(VFXTransaction, v63, v49, @"VFXWorldLoadingContextKey");
  }

  if (objc_msgSend_containsValueForKey_(coder, v37, @"behaviorGraph"))
  {
    v64 = objc_opt_class();
    v66 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v65, v64, @"behaviorGraph");
    objc_msgSend_setBehaviorGraph_(v5, v67, v66);
  }

  v68 = objc_opt_class();
  *(v5 + 8) = objc_msgSend_decodeObjectOfClass_forKey_(coder, v69, v68, @"physicsWorld");
  if (objc_msgSend_containsValueForKey_(coder, v70, @"triggerManager"))
  {
    v71 = objc_opt_class();
    v73 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v72, v71, @"triggerManager");
  }

  else
  {
    v73 = objc_alloc_init(VFXTriggerManager);
  }

  *(v5 + 37) = v73;
  objc_msgSend_setWorld_(v73, v74, v5);
  if (objc_msgSend_containsValueForKey_(coder, v75, @"preferredConfiguration"))
  {
    v77 = objc_opt_class();
    *(v5 + 7) = objc_msgSend_decodeObjectOfClass_forKey_(coder, v78, v77, @"preferredConfiguration");
  }

  objc_msgSend_decodeDoubleForKey_(coder, v76, @"endTime");
  objc_msgSend_setEndTime_(v5, v79, v80);
  objc_msgSend_decodeDoubleForKey_(coder, v81, @"startTime");
  objc_msgSend_setStartTime_(v5, v82, v83);
  objc_msgSend_decodeDoubleForKey_(coder, v84, @"frameRate");
  objc_msgSend_setFrameRate_(v5, v85, v86);
  v87 = objc_opt_class();
  v89 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v88, v87, @"defaultRenderGraph");
  objc_msgSend_setDefaultRenderGraph_(v5, v90, v89);
  v91 = objc_opt_class();
  v93 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v92, v91, @"defaultPointOfView");
  objc_msgSend_setDefaultPointOfView_(v5, v94, v93);
  v96 = objc_msgSend_decodeIntegerForKey_(coder, v95, @"version");
  v97 = objc_opt_class();
  v99 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v98, v97, @"rootNode");
  if (v99)
  {
    objc_msgSend_setRootNode_(v5, v100, v99);
  }

  else
  {
    v103 = sub_1AF0D5194(0, v100);
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA000();
    }

    if (!*(v5 + 9))
    {
      v104 = *(v5 + 1);
      if (v104)
      {
        sub_1AF1CEA20(v104, v101);
        v107 = sub_1AF1CF7E8(*(v5 + 1), v105);
        if (v107)
        {
          v108 = objc_msgSend_nodeWithNodeRef_(VFXNode, v106, v107);
          *(v5 + 9) = v108;
          objc_msgSend_addWorldReference_(v108, v109, v5);
        }

        else
        {
          v111 = objc_msgSend_node(VFXNode, v106, 0);
          objc_msgSend__setRootNode_immediate_(v5, v112, v111, 1);
        }

        sub_1AF1CEA9C(*(v5 + 1), v110);
      }
    }
  }

  objc_msgSend__registerPhysicsJoints(*(v5 + 8), v101, v102);
  v113 = objc_opt_class();
  isKindOfClass = objc_msgSend_decodeObjectOfClass_forKey_(coder, v114, v113, @"background");
  *(v5 + 14) = isKindOfClass;
  if (!v96)
  {
    objc_msgSend_contents(isKindOfClass, v116, v117);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      isKindOfClass = objc_msgSend_setContents_(*(v5 + 14), v116, 0);
    }
  }

  v118 = sub_1AF37287C(isKindOfClass, v116);
  v120 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v119, v118, @"environment");
  *(v5 + 15) = v120;
  v122 = sub_1AF37287C(v120, v121);
  *(v5 + 16) = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v123, v122, @"userAttributes");
  objc_msgSend_decodeDoubleForKey_(coder, v124, @"fogStartDistance");
  *&v125 = v125;
  objc_msgSend_setFogStartDistance_(v5, v126, v127, v125);
  objc_msgSend_decodeDoubleForKey_(coder, v128, @"fogEndDistance");
  *&v129 = v129;
  objc_msgSend_setFogEndDistance_(v5, v130, v131, v129);
  objc_msgSend_decodeDoubleForKey_(coder, v132, @"fogDensityExponent");
  *&v133 = v133;
  objc_msgSend_setFogDensityExponent_(v5, v134, v135, v133);
  if (objc_msgSend_containsValueForKey_(coder, v136, @"wantsScreenSpaceAmbientOcclusion"))
  {
    v138 = objc_msgSend_decodeBoolForKey_(coder, v137, @"wantsScreenSpaceAmbientOcclusion");
    objc_msgSend_setWantsScreenSpaceAmbientOcclusion_(v5, v139, v138);
  }

  if (objc_msgSend_containsValueForKey_(coder, v137, @"screenSpaceAmbientOcclusionIntensity"))
  {
    objc_msgSend_decodeFloatForKey_(coder, v140, @"screenSpaceAmbientOcclusionIntensity");
    objc_msgSend_setScreenSpaceAmbientOcclusionIntensity_(v5, v141, v142);
  }

  if (objc_msgSend_containsValueForKey_(coder, v140, @"screenSpaceAmbientOcclusionRadius"))
  {
    objc_msgSend_decodeFloatForKey_(coder, v143, @"screenSpaceAmbientOcclusionRadius");
    objc_msgSend_setScreenSpaceAmbientOcclusionRadius_(v5, v144, v145);
  }

  if (objc_msgSend_containsValueForKey_(coder, v143, @"screenSpaceAmbientOcclusionEnableBentNormal"))
  {
    v147 = objc_msgSend_decodeBoolForKey_(coder, v146, @"screenSpaceAmbientOcclusionEnableBentNormal");
    objc_msgSend_setScreenSpaceAmbientOcclusionEnableBentNormal_(v5, v148, v147);
  }

  if (objc_msgSend_containsValueForKey_(coder, v146, @"screenSpaceAmbientOcclusionQuality"))
  {
    v150 = objc_msgSend_decodeIntegerForKey_(coder, v149, @"screenSpaceAmbientOcclusionQuality");
    objc_msgSend_setScreenSpaceAmbientOcclusionQuality_(v5, v151, v150);
  }

  if (objc_msgSend_containsValueForKey_(coder, v149, @"wantsScreenSpaceReflection"))
  {
    v153 = objc_msgSend_decodeBoolForKey_(coder, v152, @"wantsScreenSpaceReflection");
    objc_msgSend_setWantsScreenSpaceReflection_(v5, v154, v153);
  }

  if (objc_msgSend_containsValueForKey_(coder, v152, @"screenSpaceReflectionQuality"))
  {
    v156 = objc_msgSend_decodeIntForKey_(coder, v155, @"screenSpaceReflectionQuality");
    objc_msgSend_setScreenSpaceReflectionQuality_(v5, v157, v156);
  }

  if (objc_msgSend_containsValueForKey_(coder, v155, @"screenSpaceReflectionObjectThickness"))
  {
    objc_msgSend_decodeFloatForKey_(coder, v158, @"screenSpaceReflectionObjectThickness");
    objc_msgSend_setScreenSpaceReflectionObjectThickness_(v5, v159, v160);
  }

  if (objc_msgSend_containsValueForKey_(coder, v158, @"screenSpaceReflectionThicknessMode"))
  {
    v162 = objc_msgSend_decodeIntegerForKey_(coder, v161, @"screenSpaceReflectionThicknessMode");
    objc_msgSend_setScreenSpaceReflectionThicknessMode_(v5, v163, v162);
  }

  v164 = MEMORY[0x1E695DFD8];
  v165 = objc_opt_class();
  v167 = objc_msgSend_setWithObject_(v164, v166, v165);
  v168 = sub_1AF3726E8(coder, @"fogColor", v167);
  objc_msgSend_setFogColor_(v5, v169, v168);
  if (objc_msgSend_containsValueForKey_(coder, v170, @"assetRegistry"))
  {
    v171 = objc_opt_class();
    v173 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v172, v171, @"assetRegistry");
    *(v5 + 29) = v173;
    objc_msgSend_addWorldReference_(v173, v174, v5);
  }

  v175 = objc_opt_class();
  v177 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v176, v175, @"shaderCacheConfigurations");
  objc_msgSend_setShaderCacheConfigurations_(v5, v178, v177);
  if (objc_msgSend_containsValueForKey_(coder, v179, @"stateManager"))
  {
    v180 = objc_opt_class();
    v182 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v181, v180, @"stateManager");
    *(v5 + 31) = v182;
    objc_msgSend_setOwner_(v182, v183, v5);
  }

  sub_1AF37249C(coder, v5);
  sub_1AF372B94(coder, v5);
  objc_msgSend_setImmediateMode_(VFXTransaction, v184, v15);
  return v5;
}

- (void)setReplicationDelegate:(id)delegate
{
  v5 = sub_1AF1CFF64(self->_world, 1);
  if (v5)
  {
    v8 = sub_1AF0D5194(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF9478(v8, v6, v7, v9, v10, v11, v12, v13);
    }
  }

  v14 = objc_msgSend_worldRef(self, v6, v7);
  if (v14)
  {
    v16 = v14;
    sub_1AF1CEA20(v14, v15);
    sub_1AF14E460(self->_coreEntityManager, delegate);
    v18 = sub_1AF1CF8AC(self->_world, v17);
    sub_1AF14E46C(v18, delegate);
    sub_1AF1CEA9C(v16, v19);
  }

  else
  {
    sub_1AF14E460(self->_coreEntityManager, delegate);
    v21 = sub_1AF1CF8AC(self->_world, v20);
    sub_1AF14E46C(v21, delegate);
  }
}

- (id)presentationScene
{
  v2 = sub_1AF1CF8AC(self->_world, a2);

  return sub_1AF0FB884(v2);
}

- (void)resolveVFXCoreAndTagReferences
{
  v3 = sub_1AF1CFF64(self->_world, 1);
  if (v3)
  {
    v6 = sub_1AF0D5194(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF9478(v6, v4, v5, v7, v8, v9, v10, v11);
    }
  }

  v12 = objc_msgSend_scene(self, v4, v5);
  v15 = objc_msgSend_buildIdentifierRemapTable(self, v13, v14);
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v15, v16, &unk_1F24EC3C8);
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = sub_1AF34D730;
  v38[3] = &unk_1E7A7F478;
  v38[4] = v12;
  v38[5] = v17;
  v20 = objc_msgSend_assetRegistry(self, v18, v19);
  v23 = objc_msgSend_rootNode(v20, v21, v22);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_1AF34D8E4;
  v37[3] = &unk_1E7A7F4A0;
  v37[4] = v12;
  v37[5] = v17;
  v37[6] = v38;
  objc_msgSend_enumerateHierarchyUsingBlock_(v23, v24, v37);
  v27 = objc_msgSend_rootNode(self, v25, v26);
  objc_msgSend_enumerateHierarchyUsingBlock_(v27, v28, v38);
  v31 = objc_msgSend_behaviorGraph(self, v29, v30);
  v34 = objc_msgSend_coreEntityHandle(v31, v32, v33);
  objc_msgSend_resolveTag_remap_(v34, v35, v12, v17);
  objc_msgSend_resolveObjectReferencesWithRemapTableWithWorld_objectsByIdentifier_(v12, v36, self, v15);
}

- (BOOL)loadCoreEntityManagerFromURL:(id)l options:(id)options infoOut:(id)out error:(id *)error
{
  v11 = sub_1AF1CFF64(self->_world, 1);
  if (v11)
  {
    v13 = sub_1AF0D5194(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF9478(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  v21 = sub_1AF1CFF64(self->_world, 2);
  v22 = sub_1AF1CFF64(self->_world, 4);
  v25 = objc_msgSend_scene(self, v23, v24);
  objc_msgSend_stopReplication(self, v26, v27);
  if (v21)
  {
    v29 = 2;
  }

  else
  {
    v29 = 0;
  }

  if (v22)
  {
    return objc_msgSend_loadWithUrl_loadingFor_options_infoOut_error_(v25, v28, l, 1, options, out, error);
  }

  else
  {
    return objc_msgSend_loadWithUrl_loadingFor_options_infoOut_error_(v25, v28, l, v29, options, out, error);
  }
}

- (void)replicateToRuntimeAndStartReplicationWithOptions:(id)options
{
  objc_msgSend_cloneModelToPresentationAndStartReplicationStream(self, a2, options);
  v6 = objc_msgSend_objectForKeyedSubscript_(options, v5, @"VFXWorldLoaderReplicationDelegate");
  if (v6)
  {

    MEMORY[0x1EEE66B58](self, sel_setReplicationDelegate_, v6);
  }
}

- (id)scene
{
  result = self->_coreEntityManager;
  if (result)
  {
    return sub_1AF0FB884(result);
  }

  return result;
}

- (id)stateManager
{
  if (*(self + 16))
  {
    v6 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA03C(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    return 0;
  }

  else
  {
    result = self->_stateManager;
    if (!result)
    {
      v4 = objc_alloc_init(VFXStateManager);
      self->_stateManager = v4;
      objc_msgSend_setOwner_(v4, v5, self);
      return self->_stateManager;
    }
  }

  return result;
}

- (id)triggerManager
{
  result = self->_triggerManager;
  if (!result)
  {
    v4 = objc_alloc_init(VFXTriggerManager);
    self->_triggerManager = v4;
    objc_msgSend_setWorld_(v4, v5, self);
    return self->_triggerManager;
  }

  return result;
}

- (id)buildIdentifierRemapTable
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = objc_msgSend_rootNode(self, v4, v5);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1AF34DDE8;
  v41[3] = &unk_1E7A79810;
  v41[4] = v3;
  objc_msgSend_enumerateHierarchyUsingBlock_(v6, v7, v41);
  v10 = objc_msgSend_assets(self, v8, v9);
  v13 = objc_msgSend_rootNode(v10, v11, v12);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = sub_1AF34DF78;
  v40[3] = &unk_1E7A7F3C0;
  v40[4] = v3;
  objc_msgSend_enumerateHierarchyUsingBlock_(v13, v14, v40);
  if (objc_msgSend_identifier(self, v15, v16))
  {
    v19 = objc_msgSend_identifier(self, v17, v18);
    objc_msgSend_setValue_forKey_(v3, v20, self, v19);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = objc_msgSend_stateManager(self, v17, v18, 0);
  v24 = objc_msgSend_states(v21, v22, v23);
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v36, v42, 16);
  if (v26)
  {
    v29 = v26;
    v30 = *v37;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(v24);
        }

        v32 = *(*(&v36 + 1) + 8 * i);
        if (objc_msgSend_identifier(v32, v27, v28))
        {
          v33 = objc_msgSend_identifier(v32, v27, v28);
          objc_msgSend_setValue_forKey_(v3, v34, v32, v33);
        }
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v36, v42, 16);
    }

    while (v29);
  }

  return v3;
}

- (int64_t)presentationEntityFromModel:(int64_t)model
{
  v5 = sub_1AF1CFF64(self->_world, 1);
  if (v5)
  {
    v7 = sub_1AF0D5194(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF9478(v7, v6, v8, v9, v10, v11, v12, v13);
    }
  }

  return objc_msgSend_presentationEntityFromModel_(self->_modelToPresentationRemapTable, v6, model);
}

- (id)shaderCacheConfigurations
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_shaderCacheConfigurations;
  }

  v3 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDFA0B4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return 0;
}

- (void)setShaderCacheConfigurations:(id)configurations
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(self + 16))
  {
    v20 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA12C(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  else
  {
    shaderCacheConfigurations = self->_shaderCacheConfigurations;
    if (shaderCacheConfigurations != configurations)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(shaderCacheConfigurations, a2, &v32, v37, 16);
      if (v6)
      {
        v8 = v6;
        v9 = *v33;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v33 != v9)
            {
              objc_enumerationMutation(shaderCacheConfigurations);
            }

            objc_msgSend_setWorld_(*(*(&v32 + 1) + 8 * i), v7, 0);
          }

          v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(shaderCacheConfigurations, v7, &v32, v37, 16);
        }

        while (v8);
      }

      v13 = objc_msgSend_copy(configurations, v11, v12);
      self->_shaderCacheConfigurations = v13;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v28, v36, 16);
      if (v15)
      {
        v17 = v15;
        v18 = *v29;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(v13);
            }

            objc_msgSend_setWorld_(*(*(&v28 + 1) + 8 * j), v16, self);
          }

          v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v28, v36, 16);
        }

        while (v17);
      }
    }
  }
}

- (void)cleanupPrefabsReferences
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v8 = objc_alloc_init(VFXCopyContext);
  v11 = objc_msgSend_world(self, v9, v10);
  v14 = objc_msgSend_rootNode(v11, v12, v13);
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = sub_1AF34E6A4;
  v79[3] = &unk_1E7A7F478;
  v79[4] = v4;
  v79[5] = v5;
  objc_msgSend_enumerateHierarchyUsingBlock_(v14, v15, v79);
  v18 = objc_msgSend_world(self, v16, v17);
  v21 = objc_msgSend_rootNode(v18, v19, v20);
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = sub_1AF34E710;
  v78[3] = &unk_1E7A7F4C8;
  v78[4] = v7;
  sub_1AF345368(v21, 0, v78);
  v24 = objc_msgSend_world(self, v22, v23);
  v27 = objc_msgSend_assets(v24, v25, v26);
  v30 = objc_msgSend_rootNode(v27, v28, v29);
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = sub_1AF34E798;
  v77[3] = &unk_1E7A7F398;
  v77[4] = v3;
  v77[5] = v6;
  objc_msgSend_enumerateHierarchyUsingBlock_(v30, v31, v77);
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x2020000000;
  v76 = 0;
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x2020000000;
  v74 = 0;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x2020000000;
  v72 = 0;
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x2020000000;
  v70 = 0;
  v34 = objc_msgSend_world(self, v32, v33);
  v37 = objc_msgSend_assets(v34, v35, v36);
  v40 = objc_msgSend_rootNode(v37, v38, v39);
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = sub_1AF34E8C0;
  v68[3] = &unk_1E7A7F4F0;
  v68[4] = v7;
  v68[5] = v8;
  v68[6] = v71;
  v68[7] = v69;
  sub_1AF345368(v40, 0, v68);
  v43 = objc_msgSend_world(self, v41, v42);
  v46 = objc_msgSend_assets(v43, v44, v45);
  v49 = objc_msgSend_rootNode(v46, v47, v48);
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = sub_1AF34E954;
  v67[3] = &unk_1E7A7F4F0;
  v67[4] = v5;
  v67[5] = v3;
  v67[6] = v75;
  v67[7] = v73;
  sub_1AF345368(v49, 0, v67);
  v52 = objc_msgSend_world(self, v50, v51);
  v55 = objc_msgSend_assets(v52, v53, v54);
  v58 = objc_msgSend_rootNode(v55, v56, v57);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = sub_1AF34E9F8;
  v66[3] = &unk_1E7A7F4C8;
  v66[4] = v5;
  sub_1AF345368(v58, 0, v66);
  v61 = objc_msgSend_world(self, v59, v60);
  v64 = objc_msgSend_rootNode(v61, v62, v63);
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = sub_1AF34EA50;
  v65[3] = &unk_1E7A7F4F0;
  v65[4] = v6;
  v65[5] = v4;
  v65[6] = v75;
  v65[7] = v73;
  sub_1AF345368(v64, 0, v65);

  _Block_object_dispose(v69, 8);
  _Block_object_dispose(v71, 8);
  _Block_object_dispose(v73, 8);
  _Block_object_dispose(v75, 8);
}

- (int)peerPid
{
  v3 = objc_msgSend_scene(self, a2, v2);

  return objc_msgSend_peerPid(v3, v4, v5);
}

- (void)setPeerPid:(int)pid
{
  v3 = *&pid;
  v5 = objc_msgSend_scene(self, a2, *&pid);
  objc_msgSend_setPeerPid_(v5, v6, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF34ECA8;
  v8[3] = &unk_1E7A7E270;
  v8[4] = self;
  v9 = v3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
}

- (unsigned)peerTaskIdentity
{
  v3 = objc_msgSend_scene(self, a2, v2);

  return objc_msgSend_peerTaskIdentity(v3, v4, v5);
}

- (void)setPeerTaskIdentity:(unsigned int)identity
{
  v3 = *&identity;
  v5 = objc_msgSend_scene(self, a2, *&identity);
  objc_msgSend_setPeerTaskIdentity_(v5, v6, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF34EDA4;
  v8[3] = &unk_1E7A7E270;
  v8[4] = self;
  v9 = v3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
}

- (void)updateMemoryOwnership
{
  v4 = objc_msgSend_scene(self, a2, v2);
  objc_msgSend_updateMemoryOwnership(v4, v5, v6);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF34EE6C;
  v8[3] = &unk_1E7A7E1D0;
  v8[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
}

- (id)_exportAsMovieOperationWithDestinationURL:(id)l size:(CGSize)size attributes:(id)attributes delegate:(id)delegate didEndSelector:(SEL)selector userInfo:(void *)info
{
  height = size.height;
  width = size.width;
  v16 = objc_msgSend_rendererWithDevice_options_(VFXRenderer, a2, 0, 0);
  objc_msgSend_setWorld_(v16, v17, self);
  v18 = [VFXMovieExportOperation alloc];
  v20 = objc_msgSend_initWithRenderer_size_attributes_outputURL_(v18, v19, v16, attributes, l, width, height);
  objc_msgSend_setDelegate_(v20, v21, delegate);
  objc_msgSend_setUserInfo_(v20, v22, info);
  objc_msgSend_setDidEndSelector_(v20, v23, selector);
  return v20;
}

- (id)snapshotWithSize:(CGSize)size pointOfView:(id)view
{
  height = size.height;
  width = size.width;
  v8 = objc_msgSend_rendererWithDevice_options_(VFXRenderer, a2, 0, 0);
  objc_msgSend_setWorld_(v8, v9, self);
  objc_msgSend_setJitteringEnabled_(v8, v10, 0);
  objc_msgSend_setAutoenablesDefaultLighting_(v8, v11, 1);
  objc_msgSend_setAutoAdjustCamera_(v8, v12, 1);
  if (view)
  {
    objc_msgSend_setPointOfView_(v8, v13, view);
  }

  objc_msgSend_flush(VFXTransaction, v13, v14);

  return objc_msgSend_snapshotWithSize_(v8, v15, v16, width, height);
}

- (void)_sendSignalWithIdentifier:(id)identifier delay:(float)delay
{
  v6 = sub_1AFDFCEF8();
  v8 = v7;
  selfCopy = self;
  sub_1AF9B026C(v6, v8, delay);
}

- (NSArray)bridgedComponentNames
{
  v2 = sub_1AFDFD3F8();

  return v2;
}

- (BOOL)migrateCoreEntityManagerWithInfo:(id)info error:(id *)error
{
  infoCopy = info;
  selfCopy = self;
  sub_1AFCDBFE0(infoCopy);

  return 1;
}

- (BOOL)initializeCoreEntityManagerWithInfo:(id)info error:(id *)error
{
  infoCopy = info;
  selfCopy = self;
  sub_1AFCDC2AC(infoCopy);

  return 1;
}

@end