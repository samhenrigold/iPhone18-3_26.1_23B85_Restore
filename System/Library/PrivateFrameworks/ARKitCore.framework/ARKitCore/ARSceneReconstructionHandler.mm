@interface ARSceneReconstructionHandler
- (ARSceneReconstructionDelegate)delegate;
- (ARSceneReconstructionHandler)initWithSceneReconstruction:(unint64_t)reconstruction options:(id)options slamSessionHandle:(CV3DSLAMSession *)handle;
- (BOOL)_canReconfigureExistingSessionForSceneReconstruction:(unint64_t)reconstruction options:(id)options;
- (BOOL)_configureMeshingConfiguration:(CV3DReconMeshingConfiguration *)configuration error:(id *)error;
- (BOOL)_lockAndExecuteBlock:(id)block;
- (BOOL)_lockAndExecuteCFErrorBlockWithErrorMessage:(id)message cfErrorBlock:(id)block failSession:(BOOL)session;
- (BOOL)_lockAndExecuteNSErrorBlock:(id)block;
- (BOOL)_reconfigureSession:(CV3DReconSession *)session error:(id *)error;
- (BOOL)_recreateReconstructionSessionWithError:(id *)error;
- (BOOL)queryOccupancyWithPoints:(id)points callback:(id)callback;
- (__CVBuffer)postProcessConfidenceBuffer:(__CVBuffer *)buffer fromSegmentationData:(id)data;
- (id).cxx_construct;
- (int64_t)_reconfigureSessionAndHandleError;
- (int64_t)_recreateSessionAndHandleError;
- (int64_t)reconfigureSceneReconstruction:(unint64_t)reconstruction options:(id)options;
- (uint64_t)bufferSlamState:(uint64_t)state;
- (void)_didReceiveKeyframeListUpdateCallbackWithKeyframeList:(CV3DReconKeyframeList *)list timestamp:(double)timestamp error:(__CFError *)error;
- (void)_didReceiveMeshListUpdateCallbackWithMeshList:(CV3DReconMeshList *)list timestamp:(double)timestamp error:(__CFError *)error;
- (void)_setupSLAMStateBuffering;
- (void)bufferSlamState:(CV3DSLAMStateContext *)state;
- (void)bufferSlamState:(std::__shared_weak_count *)state;
- (void)dealloc;
- (void)failWithError:(id)error;
- (void)handleCFError:(__CFError *)error withErrorMessage:(id)message failSession:(BOOL)session;
- (void)meshPlaneHarmonizationShouldEnable:(BOOL)enable;
- (void)pause;
- (void)processPlaneList:(CV3DPlaneDetectionPlaneList *)list;
- (void)pushDepth:(id)depth semanticSegmentation:(id)segmentation personSegmentation:(id)personSegmentation pose:(id)pose;
- (void)reset;
- (void)start;
- (void)swapSlamStateBuffers;
@end

@implementation ARSceneReconstructionHandler

- (ARSceneReconstructionHandler)initWithSceneReconstruction:(unint64_t)reconstruction options:(id)options slamSessionHandle:(CV3DSLAMSession *)handle
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = ARSceneReconstructionHandler;
  v10 = [(ARSceneReconstructionHandler *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_sessionActivated = 0;
    v10->_sceneReconstruction = reconstruction;
    objc_storeStrong(&v10->_options, options);
    v11->_slamSessionHandle = handle;
    CV3DSLAMSessionRetain();
    v11->_slamStateBufferBackLock._os_unfair_lock_opaque = 0;
    v11->_reconstructionSessionLock._os_unfair_lock_opaque = 0;
  }

  return v11;
}

- (void)bufferSlamState:(CV3DSLAMStateContext *)state
{
  CV3DSLAMStateRetain();
  stateCopy = state;
  operator new();
}

- (void)swapSlamStateBuffers
{
  v17 = *MEMORY[0x1E69E9840];
  p_slamStateBufferFront = &self->_slamStateBufferFront;
  if (self->_slamStateBufferFront.__begin_ != self->_slamStateBufferFront.__end_)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARSceneReconstructionHandler swapSlamStateBuffers];
    }

    v4 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v5 = _ARLogTechnique(self);
    v6 = v5;
    if (v4 == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v13 = 138543618;
        v14 = v8;
        v15 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unexpected non-empty slam state buffer; discarding...", &v13, 0x16u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v13 = 138543618;
      v14 = v10;
      v15 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unexpected non-empty slam state buffer; discarding...", &v13, 0x16u);
    }

    std::vector<std::shared_ptr<CV3DSLAMStateContext const>>::clear[abi:ne200100](p_slamStateBufferFront);
  }

  os_unfair_lock_lock_with_options();
  v11 = *&self->_slamStateBufferFront.__begin_;
  *&self->_slamStateBufferFront.__begin_ = *&self->_slamStateBufferBack.__begin_;
  *&self->_slamStateBufferBack.__begin_ = v11;
  cap = self->_slamStateBufferFront.__cap_;
  self->_slamStateBufferFront.__cap_ = self->_slamStateBufferBack.__cap_;
  self->_slamStateBufferBack.__cap_ = cap;
  os_unfair_lock_unlock(&self->_slamStateBufferBackLock);
}

- (BOOL)_recreateReconstructionSessionWithError:(id *)error
{
  v102 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_reconstructionSessionLock);
  CV3DReconSessionRelease();
  self->_reconstructionSession = 0;
  v95 = 0;
  sceneReconstruction = self->_sceneReconstruction;
  if ((sceneReconstruction & 0x80) != 0)
  {
    v6 = CV3DReconSessionConfigurationCreateWithPrivatePreset();
    if (sceneReconstruction & 1 | ((sceneReconstruction & 8) != 0))
    {
      [ARSceneReconstructionHandler _recreateReconstructionSessionWithError:];
    }
  }

  else
  {
    v6 = CV3DReconSessionConfigurationCreateWithPrivatePreset();
  }

  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v92 = __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke;
  v93 = &__block_descriptor_40_e5_v8__0l;
  v94 = v6;
  if (~self->_sceneReconstruction & 0x11) != 0 && (sceneReconstruction & 0x80) == 0 && (self->_sceneReconstruction & 0x18) != 0x18 || (CV3DReconSessionConfigurationAddPrivateMappingAttribute())
  {
    v8 = CV3DReconSlamAdapterCreate();
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v88 = __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_2;
    v89 = &__block_descriptor_40_e5_v8__0l;
    v90 = v8;
    objc_initWeak(&location, self);
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_3;
    v84[3] = &unk_1E817C9F8;
    objc_copyWeak(&v85, &location);
    v67 = MEMORY[0x1C691B4C0](v84);
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_4;
    v82[3] = &unk_1E817CA20;
    objc_copyWeak(&v83, &location);
    v66 = MEMORY[0x1C691B4C0](v82);
    if (CV3DReconSlamAdapterSetAnchoringCallbacks())
    {
      if (CV3DReconSessionConfigurationSetSlamAdapter())
      {
        if (CV3DReconSessionConfigurationAddMappingAttribute())
        {
          [(ARSceneReconstructionOptions *)self->_options lowQosSchedulingEnabled];
          if (CV3DReconSessionConfigurationEnableLowQosScheduling())
          {
            [(ARSceneReconstructionOptions *)self->_options minDepthUncertaintyThreshold];
            GetConfidenceFromUncertainty(v9);
            v11 = v10;
            if ((CV3DReconSessionConfigurationSetMinDepthConfidence() & 1) == 0)
            {
              v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error setting reconstruction session minimum depth confidence to %f", v11];
              ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(error, v95, v21);
              goto LABEL_35;
            }

            if ((sceneReconstruction & 1) == 0)
            {
LABEL_60:
              if ((sceneReconstruction & 0x80) == 0)
              {
                goto LABEL_78;
              }

              v38 = CV3DReconMeshingConfigurationCreateWithPrivatePreset();
              if (!v38)
              {
                ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(error, v95, @"Error creating meshing configuration");
                goto LABEL_31;
              }

              v74[0] = MEMORY[0x1E69E9820];
              v74[1] = 3221225472;
              v75 = __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_38;
              v76 = &__block_descriptor_40_e5_v8__0l;
              v77 = v38;
              if ([(ARSceneReconstructionHandler *)self _configureMeshingConfiguration:v38 error:error])
              {
                v39 = CV3DReconMeshingConfigurationAddPrivateMeshIntegrationAttribute();
                if (v39)
                {
                  if (CV3DReconSessionConfigurationSetMeshingConfiguration())
                  {
                    v40 = 1;
                    goto LABEL_77;
                  }

                  ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(error, v95, @"Error setting meshing configuration");
                }

                else
                {
                  if (ARShouldUseLogTypeError(void)::onceToken != -1)
                  {
                    [ARSceneReconstructionHandler _recreateReconstructionSessionWithError:];
                  }

                  v41 = ARShouldUseLogTypeError(void)::internalOSVersion;
                  v42 = _ARLogGeneral(v39);
                  if (v41 == 1)
                  {
                    v43 = v42;
                    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                    {
                      v44 = objc_opt_class();
                      v45 = NSStringFromClass(v44);
                      *buf = 138543874;
                      v97 = v45;
                      v98 = 2048;
                      selfCopy8 = self;
                      v100 = 2112;
                      v101 = v95;
                      loga = v45;
                      _os_log_impl(&dword_1C241C000, v43, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error adding color to reconstruction session meshing configuration: %@", buf, 0x20u);
                    }
                  }

                  else
                  {
                    v43 = v42;
                    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                    {
                      v46 = objc_opt_class();
                      v47 = NSStringFromClass(v46);
                      *buf = 138543874;
                      v97 = v47;
                      v98 = 2048;
                      selfCopy8 = self;
                      v100 = 2112;
                      v101 = v95;
                      logb = v47;
                      _os_log_impl(&dword_1C241C000, v43, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error adding color to reconstruction session meshing configuration: %@", buf, 0x20u);
                    }
                  }
                }
              }

              v40 = 0;
LABEL_77:
              v75(v74);
              if ((v40 & 1) == 0)
              {
                goto LABEL_31;
              }

LABEL_78:
              if ((CV3DReconSessionConfigurationEnableSynchronousScheduling() & 1) == 0)
              {
                ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(error, v95, @"Error setting scheduling mode in reconstruction session configuration");
                goto LABEL_31;
              }

              [(ARSceneReconstructionOptions *)self->_options deterministicMode];
              if (CV3DReconSessionConfigurationEnableDeterministicBehavior())
              {
                v48 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.sceneReconstruction.waitTillVIOIsStable"];
                if (CV3DReconSessionConfigurationEnableConsumeVIOMetadata())
                {
                  v49 = CV3DReconSessionCreateWithConfiguration();
                  v50 = v49;
                  if (v49)
                  {
                    v70[0] = MEMORY[0x1E69E9820];
                    v70[1] = 3221225472;
                    v71 = __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_54;
                    v72 = &__block_descriptor_40_e5_v8__0l;
                    v73 = v49;
                    if ((sceneReconstruction & 0x81) != 0 && CV3DReconSessionHasMeshingCapability())
                    {
                      v68[1] = MEMORY[0x1E69E9820];
                      v68[2] = 3221225472;
                      v68[3] = __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_2_55;
                      v68[4] = &unk_1E817CA48;
                      objc_copyWeak(&v69, &location);
                      if ((CV3DReconSessionAddOnMeshListUpdateCallback() & 1) == 0)
                      {
                        ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(error, v95, @"Error setting meshing list update callback");
                        objc_destroyWeak(&v69);
                        goto LABEL_110;
                      }

                      objc_destroyWeak(&v69);
                    }

                    if ((sceneReconstruction & 8) != 0 && CV3DReconSessionHasKeyframingCapability())
                    {
                      objc_copyWeak(v68, &location);
                      if ((CV3DReconSessionAddOnKeyframeListUpdateCallback() & 1) == 0)
                      {
                        ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(error, v95, @"Error setting keyframe list update callback");
                        objc_destroyWeak(v68);
                        goto LABEL_110;
                      }

                      objc_destroyWeak(v68);
                    }

                    if ([(ARSceneReconstructionHandler *)self _reconfigureSession:v50 error:error])
                    {
                      if ((sceneReconstruction & 0x80) != 0 && (CV3DReconSessionEnablePerFrameMeshColor() & 1) == 0)
                      {
                        v58 = v95;
                        v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error enabling per-frame mesh color"];
                        ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(error, v58, v59);
                      }

                      else
                      {
                        if (sceneReconstruction & 1) == 0 || (v51 = self->_sceneReconstruction & 0x11, (CV3DReconSessionEnablePerFrameMeshColor()))
                        {
                          CV3DReconSessionRetain();
                          self->_reconstructionSession = v50;
                          v7 = 1;
LABEL_111:
                          v71(v70);
                          goto LABEL_32;
                        }

                        v60 = v95;
                        v61 = @"disabling";
                        if (v51 == 17)
                        {
                          v61 = @"enabling";
                        }

                        v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error %@ per-frame mesh color", v61];
                        ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(error, v60, v62);
                      }
                    }

LABEL_110:
                    v7 = 0;
                    goto LABEL_111;
                  }

                  ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(error, v95, @"Error creating reconstruction session");
LABEL_31:
                  v7 = 0;
LABEL_32:

                  objc_destroyWeak(&v83);
                  objc_destroyWeak(&v85);
                  objc_destroyWeak(&location);
                  v88(v87);
                  goto LABEL_33;
                }

                v56 = v95;
                v57 = "disabling";
                if (v48)
                {
                  v57 = "enabling";
                }

                v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error %s consume VIO metadata in reconstruction session configuration", v57];
                ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(error, v56, v21);
              }

              else
              {
                v52 = v95;
                v53 = MEMORY[0x1E696AEC0];
                deterministicMode = [(ARSceneReconstructionOptions *)self->_options deterministicMode];
                v55 = "disabling";
                if (deterministicMode)
                {
                  v55 = "enabling";
                }

                v21 = [v53 stringWithFormat:@"Error %s deterministic mode in reconstruction session configuration", v55];
                ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(error, v52, v21);
              }

LABEL_35:

              goto LABEL_31;
            }

            v12 = CV3DReconMeshingConfigurationCreateWithPrivatePreset();
            if (!v12)
            {
              ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(error, v95, @"Error creating meshing configuration");
              goto LABEL_31;
            }

            v78[0] = MEMORY[0x1E69E9820];
            v78[1] = 3221225472;
            v79 = __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_5;
            v80 = &__block_descriptor_40_e5_v8__0l;
            v81 = v12;
            if (![(ARSceneReconstructionHandler *)self _configureMeshingConfiguration:v12 error:error])
            {
              goto LABEL_58;
            }

            v13 = CV3DReconMeshingConfigurationAddMeshIntegrationAttribute();
            if ((v13 & 1) == 0)
            {
              if (ARShouldUseLogTypeError(void)::onceToken != -1)
              {
                [ARSceneReconstructionHandler _recreateReconstructionSessionWithError:];
              }

              v22 = ARShouldUseLogTypeError(void)::internalOSVersion;
              v23 = _ARLogGeneral(v13);
              log = v23;
              if (v22 == 1)
              {
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  v24 = objc_opt_class();
                  v25 = NSStringFromClass(v24);
                  *buf = 138543874;
                  v97 = v25;
                  v98 = 2048;
                  selfCopy8 = self;
                  v100 = 2112;
                  v101 = v95;
                  _os_log_impl(&dword_1C241C000, log, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error adding semantics to reconstruction session meshing configuration: %@", buf, 0x20u);
                }
              }

              else if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                v28 = objc_opt_class();
                v29 = NSStringFromClass(v28);
                *buf = 138543874;
                v97 = v29;
                v98 = 2048;
                selfCopy8 = self;
                v100 = 2112;
                v101 = v95;
                _os_log_impl(&dword_1C241C000, log, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error adding semantics to reconstruction session meshing configuration: %@", buf, 0x20u);
              }

              goto LABEL_57;
            }

            if ((~self->_sceneReconstruction & 0x11) != 0)
            {
              v26 = CV3DReconMeshingConfigurationRemoveMeshIntegrationAttribute();
              if ((v26 & 1) == 0)
              {
                if (ARShouldUseLogTypeError(void)::onceToken != -1)
                {
                  [ARSceneReconstructionHandler _recreateReconstructionSessionWithError:];
                }

                v30 = ARShouldUseLogTypeError(void)::internalOSVersion;
                v31 = _ARLogGeneral(v26);
                log = v31;
                if (v30 == 1)
                {
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    v32 = objc_opt_class();
                    v33 = NSStringFromClass(v32);
                    *buf = 138543874;
                    v97 = v33;
                    v98 = 2048;
                    selfCopy8 = self;
                    v100 = 2112;
                    v101 = v95;
                    _os_log_impl(&dword_1C241C000, log, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error removing color to reconstruction session meshing configuration: %@", buf, 0x20u);
                  }
                }

                else if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                {
                  v36 = objc_opt_class();
                  v37 = NSStringFromClass(v36);
                  *buf = 138543874;
                  v97 = v37;
                  v98 = 2048;
                  selfCopy8 = self;
                  v100 = 2112;
                  v101 = v95;
                  _os_log_impl(&dword_1C241C000, log, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error removing color to reconstruction session meshing configuration: %@", buf, 0x20u);
                }

                goto LABEL_57;
              }
            }

            else
            {
              v14 = CV3DReconMeshingConfigurationAddPrivateMeshIntegrationAttribute();
              if ((v14 & 1) == 0)
              {
                if (ARShouldUseLogTypeError(void)::onceToken != -1)
                {
                  [ARSceneReconstructionHandler _recreateReconstructionSessionWithError:];
                }

                v15 = ARShouldUseLogTypeError(void)::internalOSVersion;
                v16 = _ARLogGeneral(v14);
                log = v16;
                if (v15 == 1)
                {
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                  {
                    v17 = objc_opt_class();
                    v18 = NSStringFromClass(v17);
                    *buf = 138543874;
                    v97 = v18;
                    v98 = 2048;
                    selfCopy8 = self;
                    v100 = 2112;
                    v101 = v95;
                    _os_log_impl(&dword_1C241C000, log, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error adding color to reconstruction session meshing configuration: %@", buf, 0x20u);
                  }
                }

                else if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
                {
                  v34 = objc_opt_class();
                  v35 = NSStringFromClass(v34);
                  *buf = 138543874;
                  v97 = v35;
                  v98 = 2048;
                  selfCopy8 = self;
                  v100 = 2112;
                  v101 = v95;
                  _os_log_impl(&dword_1C241C000, log, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error adding color to reconstruction session meshing configuration: %@", buf, 0x20u);
                }

LABEL_57:

                goto LABEL_58;
              }
            }

            if (CV3DReconSessionConfigurationSetMeshingConfiguration())
            {
              v27 = 1;
              goto LABEL_59;
            }

            ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(error, v95, @"Error setting meshing configuration");
LABEL_58:
            v27 = 0;
LABEL_59:
            v79(v78);
            if ((v27 & 1) == 0)
            {
              goto LABEL_31;
            }

            goto LABEL_60;
          }

          v19 = @"Error setting reconstruction session QoS scheduling mode";
        }

        else
        {
          v19 = @"Error adding reconstruction session configuration mapping attribute: semantic";
        }
      }

      else
      {
        v19 = @"Error setting reconstruction session configuration slam adapter";
      }
    }

    else
    {
      v19 = @"Error setting reconstruction session configuration slam adapter callbacks";
    }

    ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(error, v95, v19);
    goto LABEL_31;
  }

  ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(error, v95, @"Error enabling color attribute");
  v7 = 0;
LABEL_33:
  v92(v91);
  return v7;
}

void __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_3(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (CV3DSLAMSessionAddAnchor() & 1) == 0)
  {
    [WeakRetained handleCFError:0 withErrorMessage:@"Error adding anchor"];
  }
}

void __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (CV3DSLAMSessionRemoveAnchor() & 1) == 0)
  {
    [WeakRetained handleCFError:0 withErrorMessage:@"Error removing anchor"];
  }
}

void __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_2_55(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReceiveMeshListUpdateCallbackWithMeshList:a2 timestamp:a3 error:a4];
}

void __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_3_60(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReceiveKeyframeListUpdateCallbackWithKeyframeList:a2 timestamp:a3 error:a4];
}

- (void)_setupSLAMStateBuffering
{
  if (!self->_slamStateCbID.__engaged_)
  {
    objc_initWeak(&location, self);
    v5 = 0;
    objc_copyWeak(&v4, &location);
    v3 = CV3DSLAMSessionRegisterNewStateBlock();
    if (v3)
    {
      self->_slamStateCbID.var0.__val_ = v3;
      self->_slamStateCbID.__engaged_ = 1;
    }

    else
    {
      [(ARSceneReconstructionHandler *)self handleCFError:v5 withErrorMessage:@"Error setting slam state callback"];
    }

    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __56__ARSceneReconstructionHandler__setupSLAMStateBuffering__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bufferSlamState:a2];
}

- (BOOL)_canReconfigureExistingSessionForSceneReconstruction:(unint64_t)reconstruction options:(id)options
{
  optionsCopy = options;
  os_unfair_lock_assert_owner(&self->_reconstructionSessionLock);
  v7 = self->_reconstructionSession && [(ARSceneReconstructionOptions *)self->_options isEqual:optionsCopy]&& (self->_sceneReconstruction ^ reconstruction) == 2;

  return v7;
}

- (BOOL)_reconfigureSession:(CV3DReconSession *)session error:(id *)error
{
  os_unfair_lock_assert_owner(&self->_reconstructionSessionLock);
  if ((self->_sceneReconstruction & 1) == 0)
  {
    return 1;
  }

  v7 = self->_sceneReconstruction & 3;
  if (CV3DReconSessionEnablePerFrameMeshSemantics())
  {
    if (CV3DReconSessionEnablePerFrameMeshColor())
    {
      return 1;
    }

    v8 = @"disabling";
    if (v7 == 3)
    {
      v8 = @"enabling";
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error %@ per-frame mesh color", v8];
    ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(error, 0, v9);
  }

  else
  {
    v10 = @"disabling";
    if (v7 == 3)
    {
      v10 = @"enabling";
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error %@ per-frame mesh semantics", v10];
    ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(error, 0, v9);
  }

  return 0;
}

- (BOOL)_configureMeshingConfiguration:(CV3DReconMeshingConfiguration *)configuration error:(id *)error
{
  os_unfair_lock_assert_owner(&self->_reconstructionSessionLock);
  ARVoxelSizeForSceneReconstructionOptions(self->_options);
  if (CV3DReconMeshingConfigurationSetVoxelSize())
  {
    ARBucketsOrderOfMagnitudeForSceneReconstructionOptions(self->_options);
    v6 = CV3DReconMeshingConfigurationSetBucketsOrderOfMagnitude();
    if (v6)
    {
      if (ARDeviceIsiPad(v6, v7) && (CV3DReconMeshingConfigurationSetMinMeshingPeriod() & 1) == 0)
      {
        v8 = @"Error setting meshing configuration minimum meshing period on iPad";
      }

      else
      {
        [(ARSceneReconstructionOptions *)self->_options enableOccupancyMapping];
        if (CV3DReconMeshingConfigurationEnableOccupancyMapping())
        {
          self->_occupancyMappingEnabled = CV3DReconMeshingConfigurationHasOccupancyMapping();
          return 1;
        }

        v8 = @"Error enabling occupancy mapping";
      }
    }

    else
    {
      v8 = @"Error setting meshing configuration buckets order of magnitude";
    }
  }

  else
  {
    v8 = @"Error setting meshing configuration voxel size";
  }

  ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(error, 0, v8);
  return 0;
}

- (void)_didReceiveMeshListUpdateCallbackWithMeshList:(CV3DReconMeshList *)list timestamp:(double)timestamp error:(__CFError *)error
{
  v26 = *MEMORY[0x1E69E9840];
  if (error)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARSceneReconstructionHandler swapSlamStateBuffers];
    }

    v9 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v10 = _ARLogTechnique(self);
    v11 = v10;
    if (v9 == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        localizedFailureReason = [(__CFError *)error localizedFailureReason];
        v20 = 138543874;
        v21 = v13;
        v22 = 2048;
        selfCopy2 = self;
        v24 = 2112;
        v25 = localizedFailureReason;
        _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error received in mesh list update callback: %@", &v20, 0x20u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      localizedFailureReason2 = [(__CFError *)error localizedFailureReason];
      v20 = 138543874;
      v21 = v18;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2112;
      v25 = localizedFailureReason2;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error received in mesh list update callback: %@", &v20, 0x20u);
    }

    kdebug_trace();
    CV3DReconMeshListRelease();
  }

  else
  {
    CV3DReconMeshListGetCount();
    kdebug_trace();
    delegate = [(ARSceneReconstructionHandler *)self delegate];

    if (delegate)
    {
      delegate2 = [(ARSceneReconstructionHandler *)self delegate];
      [delegate2 sceneReconstructionHandler:self didOutputMeshList:list withTimestamp:timestamp];
    }

    else
    {
      CV3DReconMeshListRelease();
    }
  }
}

- (void)_didReceiveKeyframeListUpdateCallbackWithKeyframeList:(CV3DReconKeyframeList *)list timestamp:(double)timestamp error:(__CFError *)error
{
  v26 = *MEMORY[0x1E69E9840];
  if (error)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARSceneReconstructionHandler swapSlamStateBuffers];
    }

    v8 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v9 = _ARLogTechnique(self);
    v10 = v9;
    if (v8 == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        localizedFailureReason = [(__CFError *)error localizedFailureReason];
        v20 = 138543874;
        v21 = v12;
        v22 = 2048;
        selfCopy2 = self;
        v24 = 2112;
        v25 = localizedFailureReason;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error received in keyframe list update callback: %@", &v20, 0x20u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      localizedFailureReason2 = [(__CFError *)error localizedFailureReason];
      v20 = 138543874;
      v21 = v18;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2112;
      v25 = localizedFailureReason2;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error received in keyframe list update callback: %@", &v20, 0x20u);
    }

    goto LABEL_12;
  }

  delegate = [(ARSceneReconstructionHandler *)self delegate];

  if (!delegate)
  {
LABEL_12:
    CV3DReconKeyframeListRelease();
    goto LABEL_13;
  }

  delegate2 = [(ARSceneReconstructionHandler *)self delegate];
  [delegate2 sceneReconstructionHandler:self didOutputKeyframeList:list withTimestamp:timestamp];

LABEL_13:
}

- (void)start
{
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__ARSceneReconstructionHandler_start__block_invoke;
  v5[3] = &unk_1E817CA98;
  v5[4] = self;
  if (![(ARSceneReconstructionHandler *)self _lockAndExecuteBlock:v5]|| ([(ARSceneReconstructionHandler *)self _setupSLAMStateBuffering], v4[0] = MEMORY[0x1E69E9820], v4[1] = 3221225472, v4[2] = __37__ARSceneReconstructionHandler_start__block_invoke_2, v4[3] = &unk_1E817CAC0, v4[4] = self, [(ARSceneReconstructionHandler *)self _lockAndExecuteNSErrorBlock:v4]))
  {
    if (!self->_sessionActivated)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __37__ARSceneReconstructionHandler_start__block_invoke_3;
      v3[3] = &unk_1E817CAE8;
      v3[4] = self;
      self->_sessionActivated = [(ARSceneReconstructionHandler *)self _lockAndExecuteCFErrorBlockWithErrorMessage:@"Error enabling reconstruction session" cfErrorBlock:v3];
    }
  }
}

- (int64_t)reconfigureSceneReconstruction:(unint64_t)reconstruction options:(id)options
{
  optionsCopy = options;
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  if (self->_sceneReconstruction == reconstruction && [(ARSceneReconstructionOptions *)self->_options isEqual:optionsCopy])
  {
    v8 = 1;
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__ARSceneReconstructionHandler_reconfigureSceneReconstruction_options___block_invoke;
    v12[3] = &unk_1E817CB10;
    v12[4] = self;
    reconstructionCopy = reconstruction;
    v13 = optionsCopy;
    v9 = [(ARSceneReconstructionHandler *)self _lockAndExecuteBlock:v12];
    self->_sceneReconstruction = reconstruction;
    objc_storeStrong(&self->_options, options);
    if (v9)
    {
      _reconfigureSessionAndHandleError = [(ARSceneReconstructionHandler *)self _reconfigureSessionAndHandleError];
    }

    else
    {
      _reconfigureSessionAndHandleError = [(ARSceneReconstructionHandler *)self _recreateSessionAndHandleError];
    }

    v8 = _reconfigureSessionAndHandleError;
  }

  return v8;
}

- (int64_t)_reconfigureSessionAndHandleError
{
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__ARSceneReconstructionHandler__reconfigureSessionAndHandleError__block_invoke;
  v4[3] = &unk_1E817CAC0;
  v4[4] = self;
  if ([(ARSceneReconstructionHandler *)self _lockAndExecuteNSErrorBlock:v4])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)_recreateSessionAndHandleError
{
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  if (self->_sessionActivated)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__ARSceneReconstructionHandler__recreateSessionAndHandleError__block_invoke;
    v6[3] = &unk_1E817CAE8;
    v6[4] = self;
    if (![(ARSceneReconstructionHandler *)self _lockAndExecuteCFErrorBlockWithErrorMessage:@"Error disabling reconstruction session" cfErrorBlock:v6])
    {
      return 0;
    }

    self->_sessionActivated = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __62__ARSceneReconstructionHandler__recreateSessionAndHandleError__block_invoke_2;
    v5[3] = &unk_1E817CAE8;
    v5[4] = self;
    if (![(ARSceneReconstructionHandler *)self _lockAndExecuteCFErrorBlockWithErrorMessage:@"Error waiting on reconstruction session" cfErrorBlock:v5 failSession:0])
    {
      return 0;
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__ARSceneReconstructionHandler__recreateSessionAndHandleError__block_invoke_3;
  v4[3] = &unk_1E817CAC0;
  v4[4] = self;
  if ([(ARSceneReconstructionHandler *)self _lockAndExecuteNSErrorBlock:v4])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)pause
{
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  if (self->_sessionActivated)
  {
    os_unfair_lock_lock(&self->_reconstructionSessionLock);
    v3 = CV3DReconSessionDisable();
    os_unfair_lock_unlock(&self->_reconstructionSessionLock);
    if (v3)
    {
      self->_sessionActivated = 0;
    }

    else
    {
      [(ARSceneReconstructionHandler *)self handleCFError:0 withErrorMessage:@"Error disabling reconstruction session"];
    }
  }
}

- (void)reset
{
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  os_unfair_lock_lock(&self->_reconstructionSessionLock);
  kdebug_trace();
  v3 = CV3DReconSessionReset();
  kdebug_trace();
  os_unfair_lock_unlock(&self->_reconstructionSessionLock);
  if ((v3 & 1) == 0)
  {
    [(ARSceneReconstructionHandler *)self handleCFError:0 withErrorMessage:@"Error resetting reconstruction session"];
  }
}

- (void)meshPlaneHarmonizationShouldEnable:(BOOL)enable
{
  enableCopy = enable;
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  os_unfair_lock_lock(&self->_reconstructionSessionLock);
  v5 = CV3DReconSessionEnableMeshPlaneHarmony();
  os_unfair_lock_unlock(&self->_reconstructionSessionLock);
  if (v5)
  {
    v7 = _ARLogTechnique(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = "disabled";
      *buf = 138543874;
      v12 = v9;
      if (enableCopy)
      {
        v10 = "enabled";
      }

      v13 = 2048;
      selfCopy = self;
      v15 = 2080;
      v16 = v10;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Scene reconstruction plane harmonization is %s", buf, 0x20u);
    }
  }

  else
  {
    objc_msgSend_handleCFError_withErrorMessage_failSession_(self);
  }
}

- (void)pushDepth:(id)depth semanticSegmentation:(id)segmentation personSegmentation:(id)personSegmentation pose:(id)pose
{
  v73 = *MEMORY[0x1E69E9840];
  depthCopy = depth;
  segmentationCopy = segmentation;
  personSegmentationCopy = personSegmentation;
  poseCopy = pose;
  worldTrackingState = [poseCopy worldTrackingState];
  state = [worldTrackingState state];

  if (state == 2)
  {
    if ([segmentationCopy maskedSemanticsSampledForDepth])
    {
      sourceImageData = [depthCopy sourceImageData];
      objc_msgSend_timestamp(sourceImageData);
      kdebug_trace();

      sourceImageData2 = [depthCopy sourceImageData];
      [sourceImageData2 cameraIntrinsics];
      v51 = v17;
      v52 = v16;
      v50 = v18;
      sourceImageData3 = [depthCopy sourceImageData];
      [sourceImageData3 imageResolution];
      v21 = v20;
      v23 = v22;
      [depthCopy depthBufferSize];
      ARAdjustIntrinsicsForViewportSize(v52, v51, v50, v21, v23, v24, v25);
      v49 = v26;

      [poseCopy visionCameraTransform];
      kdebug_trace();
      kdebug_trace();
      kdebug_trace();
      kdebug_trace();
      kdebug_trace();
      sourceImageData4 = [segmentationCopy sourceImageData];
      objc_msgSend_timestamp(sourceImageData4);
      [depthCopy depthBufferSize];
      [depthCopy depthBufferSize];
      v28 = CV3DReconFrameBundleCreate();

      if (v28)
      {
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v65 = __87__ARSceneReconstructionHandler_pushDepth_semanticSegmentation_personSegmentation_pose___block_invoke;
        v66 = &__block_descriptor_40_e5_v8__0l;
        v67 = v28;
        *buf = 0;
        slamState = [poseCopy slamState];
        -[ARSceneReconstructionHandler bufferSlamState:](self, "bufferSlamState:", [slamState slamState]);

        [(ARSceneReconstructionHandler *)self swapSlamStateBuffers];
        begin = self->_slamStateBufferFront.__begin_;
        end = self->_slamStateBufferFront.__end_;
        if (begin == end)
        {
LABEL_11:
          std::vector<std::shared_ptr<CV3DSLAMStateContext const>>::clear[abi:ne200100](&self->_slamStateBufferFront);
          [depthCopy singleFrameDepthBuffer];
          if (CV3DReconFrameBundleSetDepthImage())
          {
            v35 = -[ARSceneReconstructionHandler postProcessConfidenceBuffer:fromSegmentationData:](self, "postProcessConfidenceBuffer:fromSegmentationData:", [depthCopy singleFrameConfidenceBuffer], personSegmentationCopy);
            v56[0] = MEMORY[0x1E69E9820];
            v56[1] = 3221225472;
            v57 = __87__ARSceneReconstructionHandler_pushDepth_semanticSegmentation_personSegmentation_pose___block_invoke_3;
            v58 = &__block_descriptor_40_e5_v8__0l;
            v59 = v35;
            if (![depthCopy normalsBuffer] || (objc_msgSend(depthCopy, "normalsBuffer"), (CV3DReconFrameBundleSetNormalsImage())) && CV3DReconFrameBundleSetDepthConfidenceImage() && (objc_msgSend(segmentationCopy, "maskedSemanticsSampledForDepth"), (CV3DReconFrameBundleSetSemanticsImage()))
            {
              sceneReconstruction = self->_sceneReconstruction;
              if (((~sceneReconstruction & 0x11) == 0 || (~sceneReconstruction & 0x18) == 0 || (sceneReconstruction & 0x80) != 0) && ([depthCopy sourceImageData], v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "pixelBuffer"), v38 = CV3DReconFrameBundleSetColorImage(), v37, (v38 & 1) == 0) || (CVPixelBufferGetWidth(objc_msgSend(depthCopy, "singleFrameDepthBuffer", v49)), CVPixelBufferGetHeight(objc_msgSend(depthCopy, "singleFrameDepthBuffer")), CVPixelBufferGetWidth(objc_msgSend(segmentationCopy, "maskedSemanticsSampledForDepth")), CVPixelBufferGetHeight(objc_msgSend(segmentationCopy, "maskedSemanticsSampledForDepth")), kdebug_trace(), kdebug_trace(), os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock), os_unfair_lock_lock(&self->_reconstructionSessionLock), objc_msgSend_timestamp(depthCopy), objc_msgSend(segmentationCopy, "sourceImageData"), v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend_timestamp(v47), kdebug_trace(), v47, v48 = CV3DReconSessionProcessFrameBundle(), os_unfair_lock_unlock(&self->_reconstructionSessionLock), kdebug_trace(), (v48 & 1) == 0))
              {
                objc_msgSend_handleCFError_withErrorMessage_failSession_(self);
              }
            }

            else
            {
              objc_msgSend_handleCFError_withErrorMessage_failSession_(self, v49);
            }

            v57(v56);
            goto LABEL_32;
          }
        }

        else
        {
          while (*begin)
          {
            v33 = CV3DReconSlamMetadataCreateFromSlamState();
            if (!v33)
            {
              objc_msgSend_handleCFError_withErrorMessage_failSession_(self, 0, *buf, @"Error: failed to convert slam state to recon slam metadata", 0);
              goto LABEL_32;
            }

            v60[0] = MEMORY[0x1E69E9820];
            v60[1] = 3221225472;
            v61 = __87__ARSceneReconstructionHandler_pushDepth_semanticSegmentation_personSegmentation_pose___block_invoke_2;
            v62 = &__block_descriptor_40_e5_v8__0l;
            v63 = v33;
            v34 = CV3DReconFrameBundleAddSlamMetadata();
            if ((v34 & 1) == 0)
            {
              objc_msgSend_handleCFError_withErrorMessage_failSession_(self);
            }

            v61(v60);
            if ((v34 & 1) == 0)
            {
              goto LABEL_32;
            }

            begin += 2;
            if (begin == end)
            {
              goto LABEL_11;
            }
          }
        }

        objc_msgSend_handleCFError_withErrorMessage_failSession_(self);
LABEL_32:
        v65(v64);
        goto LABEL_26;
      }

      v39 = _ARLogTechnique(v29);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        *buf = 138543618;
        *&buf[4] = v46;
        v69 = 2048;
        selfCopy3 = self;
        _os_log_impl(&dword_1C241C000, v39, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Error creating frame bundle, skipping pushing to spatial mapping", buf, 0x16u);
      }
    }

    else
    {
      v39 = _ARLogTechnique(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        *buf = 138543618;
        *&buf[4] = v44;
        v69 = 2048;
        selfCopy3 = self;
        _os_log_impl(&dword_1C241C000, v39, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Skipping pushing to spatial mapping since masked semantics sampled for depth is not available", buf, 0x16u);
      }
    }
  }

  else
  {
    v39 = _ARLogTechnique(v13);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      worldTrackingState2 = [poseCopy worldTrackingState];
      *buf = 138543874;
      *&buf[4] = v41;
      v69 = 2048;
      selfCopy3 = self;
      v71 = 2048;
      state2 = [worldTrackingState2 state];
      _os_log_impl(&dword_1C241C000, v39, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Skipping pushing to spatial mapping since world tracking state is not normal: %ld", buf, 0x20u);
    }
  }

LABEL_26:
}

- (__CVBuffer)postProcessConfidenceBuffer:(__CVBuffer *)buffer fromSegmentationData:(id)data
{
  v50 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = dataCopy;
  if (!dataCopy || ![dataCopy segmentationBuffer])
  {
    goto LABEL_32;
  }

  if (buffer)
  {
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
  }

  else
  {
    Width = *MEMORY[0x1E695F060];
    Height = *(MEMORY[0x1E695F060] + 8);
  }

  segmentationBuffer = [v7 segmentationBuffer];
  v11 = segmentationBuffer;
  if (segmentationBuffer)
  {
    v12 = CVPixelBufferGetWidth(segmentationBuffer);
    segmentationBuffer = CVPixelBufferGetHeight(v11);
    v13 = v12;
    v14 = segmentationBuffer;
  }

  else
  {
    v13 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
  }

  if (v13 != Width || v14 != Height)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARSceneReconstructionHandler swapSlamStateBuffers];
    }

    v16 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v17 = _ARLogTechnique(segmentationBuffer);
    v18 = v17;
    if (v16 == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v38 = 138544642;
        v39 = v20;
        v40 = 2048;
        selfCopy2 = self;
        v42 = 1024;
        v43 = v13;
        v44 = 1024;
        v45 = v14;
        v46 = 1024;
        v47 = Width;
        v48 = 1024;
        v49 = Height;
        _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Confidence buffer and person segmentation buffer do not match size. (%d,%d) vs. (%d,%d).", &v38, 0x2Eu);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v38 = 138544642;
      v39 = v35;
      v40 = 2048;
      selfCopy2 = self;
      v42 = 1024;
      v43 = v13;
      v44 = 1024;
      v45 = v14;
      v46 = 1024;
      v47 = Width;
      v48 = 1024;
      v49 = Height;
      _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Confidence buffer and person segmentation buffer do not match size. (%d,%d) vs. (%d,%d).", &v38, 0x2Eu);
    }

    v36 = CVPixelBufferRetain(buffer);
    goto LABEL_33;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v22 = ARCreateCVPixelBufferFromPool(&self->_postProcessedDepthConfidencePool, PixelFormatType, self, @"Post processed confidence buffer", Width, Height);
  if (!v22)
  {
LABEL_32:
    v36 = CVPixelBufferRetain(buffer);
LABEL_33:
    v22 = v36;
    goto LABEL_34;
  }

  CVPixelBufferLockBaseAddress([v7 segmentationBuffer], 1uLL);
  CVPixelBufferLockBaseAddress(v22, 0);
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(v22);
  v24 = CVPixelBufferGetBaseAddress(buffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  memcpy(BaseAddress, v24, (Height * BytesPerRow));
  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  v26 = CVPixelBufferGetBytesPerRow([v7 segmentationBuffer]);
  v27 = CVPixelBufferGetBytesPerRow(v22);
  v28 = 0;
  v29 = 0;
  for (i = 0; i < CVPixelBufferGetHeight(v22); ++i)
  {
    v31 = 0;
    v32 = CVPixelBufferGetBaseAddress([v7 segmentationBuffer]) + v29;
    v33 = CVPixelBufferGetBaseAddress(v22) + v28;
    while (CVPixelBufferGetWidth(v22) > v31)
    {
      if (v32[v31])
      {
        *&v33[4 * v31] = 0;
      }

      ++v31;
    }

    v29 += v26;
    v28 += v27;
  }

  CVPixelBufferUnlockBaseAddress([v7 segmentationBuffer], 1uLL);
  CVPixelBufferUnlockBaseAddress(v22, 0);
LABEL_34:

  return v22;
}

- (void)processPlaneList:(CV3DPlaneDetectionPlaneList *)list
{
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  os_unfair_lock_lock(&self->_reconstructionSessionLock);
  v4 = CV3DReconSessionProcessPlaneList();
  os_unfair_lock_unlock(&self->_reconstructionSessionLock);
  if ((v4 & 1) == 0)
  {
    objc_msgSend_handleCFError_withErrorMessage_failSession_(self);
  }
}

- (BOOL)queryOccupancyWithPoints:(id)points callback:(id)callback
{
  v27 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  callbackCopy = callback;
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  if (self->_occupancyMappingEnabled)
  {
    *buf = 0;
    v9 = MEMORY[0x1C6919230](pointsCopy);
    os_unfair_lock_lock(&self->_reconstructionSessionLock);
    OccupancyAsync = CV3DReconSessionQueryOccupancyAsync();
    os_unfair_lock_unlock(&self->_reconstructionSessionLock);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v11 = __66__ARSceneReconstructionHandler_queryOccupancyWithPoints_callback___block_invoke;
    v21 = __66__ARSceneReconstructionHandler_queryOccupancyWithPoints_callback___block_invoke;
    v22 = &__block_descriptor_40_e5_v8__0l;
    v23 = v9;
    if ((OccupancyAsync & 1) == 0)
    {
      objc_msgSend_handleCFError_withErrorMessage_failSession_(self);
      v11 = v21;
    }

    v11(v20);
  }

  else
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARSceneReconstructionHandler swapSlamStateBuffers];
    }

    v12 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v13 = _ARLogTechnique(v8);
    v14 = v13;
    if (v12 == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138543618;
        *&buf[4] = v16;
        v25 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Occupancy mapping is not enabled.", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138543618;
      *&buf[4] = v18;
      v25 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Occupancy mapping is not enabled.", buf, 0x16u);
    }

    OccupancyAsync = 0;
  }

  return OccupancyAsync;
}

- (void)failWithError:(id)error
{
  errorCopy = error;
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  delegate = [(ARSceneReconstructionHandler *)self delegate];
  [delegate sceneReconstructionHandler:self didFailWithError:errorCopy];
}

- (void)handleCFError:(__CFError *)error withErrorMessage:(id)message failSession:(BOOL)session
{
  sessionCopy = session;
  v22 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  if (error)
  {
    v10 = _ARLogGeneral(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      localizedFailureReason = [(__CFError *)error localizedFailureReason];
      v14 = 138544130;
      v15 = v12;
      v16 = 2048;
      selfCopy = self;
      v18 = 2112;
      v19 = messageCopy;
      v20 = 2112;
      v21 = localizedFailureReason;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@: %@", &v14, 0x2Au);
    }

    if (sessionCopy)
    {
      [(ARSceneReconstructionHandler *)self failWithError:error];
    }
  }
}

- (BOOL)_lockAndExecuteBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  os_unfair_lock_lock(&self->_reconstructionSessionLock);
  v5 = blockCopy[2](blockCopy);

  os_unfair_lock_unlock(&self->_reconstructionSessionLock);
  return v5;
}

- (BOOL)_lockAndExecuteNSErrorBlock:(id)block
{
  v46 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__1;
  v36 = __Block_byref_object_dispose__1;
  v37 = 0;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __60__ARSceneReconstructionHandler__lockAndExecuteNSErrorBlock___block_invoke;
  v29 = &unk_1E817CB38;
  v5 = blockCopy;
  v30 = v5;
  v31 = &v32;
  v6 = [(ARSceneReconstructionHandler *)self _lockAndExecuteBlock:&v26];
  v7 = v6;
  if ((v6 & 1) == 0)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARSceneReconstructionHandler _recreateReconstructionSessionWithError:];
    }

    v8 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v9 = _ARLogGeneral(v6);
    v10 = v9;
    if (v8 == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        localizedFailureReason = [v33[5] localizedFailureReason];
        underlyingErrors = [v33[5] underlyingErrors];
        firstObject = [underlyingErrors firstObject];
        localizedFailureReason2 = [firstObject localizedFailureReason];
        *buf = 138544130;
        v39 = v12;
        v40 = 2048;
        selfCopy2 = self;
        v42 = 2112;
        v43 = localizedFailureReason;
        v44 = 2112;
        v45 = localizedFailureReason2;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@: %@", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      localizedFailureReason3 = [v33[5] localizedFailureReason];
      underlyingErrors2 = [v33[5] underlyingErrors];
      firstObject2 = [underlyingErrors2 firstObject];
      localizedFailureReason4 = [firstObject2 localizedFailureReason];
      *buf = 138544130;
      v39 = v18;
      v40 = 2048;
      selfCopy2 = self;
      v42 = 2112;
      v43 = localizedFailureReason3;
      v44 = 2112;
      v45 = localizedFailureReason4;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@: %@", buf, 0x2Au);
    }

    underlyingErrors3 = [v33[5] underlyingErrors];
    firstObject3 = [underlyingErrors3 firstObject];
    [(ARSceneReconstructionHandler *)self failWithError:firstObject3];
  }

  _Block_object_dispose(&v32, 8);
  return v7;
}

uint64_t __60__ARSceneReconstructionHandler__lockAndExecuteNSErrorBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 8);
  obj = *(v2 + 40);
  v3 = (*(v1 + 16))(v1, &obj);
  objc_storeStrong((v2 + 40), obj);
  return v3;
}

- (BOOL)_lockAndExecuteCFErrorBlockWithErrorMessage:(id)message cfErrorBlock:(id)block failSession:(BOOL)session
{
  messageCopy = message;
  blockCopy = block;
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __101__ARSceneReconstructionHandler__lockAndExecuteCFErrorBlockWithErrorMessage_cfErrorBlock_failSession___block_invoke;
  v15 = &unk_1E817CB38;
  v9 = blockCopy;
  v16 = v9;
  v17 = v18;
  v10 = [(ARSceneReconstructionHandler *)self _lockAndExecuteBlock:&v12];
  if (!v10)
  {
    objc_msgSend_handleCFError_withErrorMessage_failSession_(self, v12, v13, v14, v15);
  }

  _Block_object_dispose(v18, 8);
  return v10;
}

- (void)dealloc
{
  CVPixelBufferPoolRelease(self->_postProcessedDepthConfidencePool);
  v4 = 0;
  if (self->_slamStateCbID.__engaged_ && (CV3DSLAMSessionDeregisterNewStateBlock() & 1) == 0)
  {
    objc_msgSend_handleCFError_withErrorMessage_failSession_(self);
  }

  if (self->_reconstructionSession)
  {
    if ((CV3DReconSessionDisable() & 1) == 0)
    {
      objc_msgSend_handleCFError_withErrorMessage_failSession_(self);
    }

    if ((CV3DReconSessionWait() & 1) == 0)
    {
      objc_msgSend_handleCFError_withErrorMessage_failSession_(self);
    }
  }

  CV3DReconSessionRelease();
  CV3DSLAMSessionRelease();
  v3.receiver = self;
  v3.super_class = ARSceneReconstructionHandler;
  [(ARSceneReconstructionHandler *)&v3 dealloc];
}

- (ARSceneReconstructionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 112) = 0;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 104) = 0;
  return self;
}

- (void)bufferSlamState:(std::__shared_weak_count *)state
{
  std::__shared_weak_count::~__shared_weak_count(state);

  JUMPOUT(0x1C691A790);
}

- (uint64_t)bufferSlamState:(uint64_t)state
{
  {
    return state;
  }

  else
  {
    return 0;
  }
}

@end