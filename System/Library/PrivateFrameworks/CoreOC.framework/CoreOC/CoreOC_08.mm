id ObjectCaptureSession.init(arSession:mtlDevice:motionManager:snapshotURL:configuration:)(void *a1, uint64_t a2, void *a3, uint64_t a4, unsigned __int8 *a5)
{
  v110 = a4;
  v111 = a3;
  v112 = a2;
  v108 = a1;
  v121 = sub_2460918F4();
  v107 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v113 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_2460919F4();
  MEMORY[0x28223BE20](v101);
  v100 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v105 = sub_246092034();
  *&v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  *&v103 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v102 = sub_246092004();
  MEMORY[0x28223BE20](v102);
  v99 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_246091A64();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_245F8E624(&qword_27EE3A9B8, &qword_246099CD0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v96 - v14;
  v106 = *a5;
  v16 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_observingPublishers;
  type metadata accessor for ObjectCaptureSessionObservingPublishers();
  v17 = swift_allocObject();
  v17[1] = 0u;
  v17[2] = 0u;
  v17[3] = 0u;
  v17[4] = 0u;
  v17[5] = 0u;
  v17[6] = 0u;
  v17[7] = 0u;
  v17[8] = 0u;
  *&v5[v16] = v17;
  v18 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_writingPublishers;
  type metadata accessor for ObjectCaptureSessionWritingPublishers();
  v19 = swift_allocObject();
  *&v5[v18] = v19;
  *&v5[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_spi] = 0;
  v20 = &v5[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_estimatedReconstructionTime];
  *v20 = 0;
  v20[8] = 1;
  v5[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectFlippable] = 1;
  v19[1] = 0u;
  v19[2] = 0u;
  v19[3] = 0u;
  v19[4] = 0u;
  v19[5] = 0u;
  v19[6] = 0u;
  v19[7] = 0u;
  v5[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isOverCaptureEnabled] = 0;
  v5[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isFreeformModeEnabled] = 0;
  v21 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__canTakeManualShot;
  LOBYTE(v116[0]) = 0;
  v22 = v5;
  sub_246091954();
  (*(v13 + 32))(&v5[v21], v15, v12);
  v98 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue;
  sub_245FA30EC(0, &qword_27EE3A220, 0x277D85C78);
  sub_246091A34();
  v116[0] = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A9D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_245F8E624(&unk_27EE3A230, &qword_246096660);
  v97 = MEMORY[0x277D83970];
  sub_245F9218C(&qword_27EE3A9E0, &unk_27EE3A230, &qword_246096660, MEMORY[0x277D83970]);
  sub_2460921A4();
  (*(v104 + 104))(v103, *MEMORY[0x277D85260], v105);
  *&v98[v22] = sub_246092074();
  sub_246091824();
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateOnPause] = 10;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateAfterFinishing] = 18;
  v23 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame;
  sub_246077C88(v117);
  memcpy(&v22[v23], v117, 0x4F0uLL);
  v24 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_planeMap;
  v25 = MEMORY[0x277D84F90];
  *&v22[v24] = sub_246077280(MEMORY[0x277D84F90], &qword_27EE3AEC8, &qword_24609AE58, &unk_27EE3ADB0, &qword_24609AD50);
  v26 = &v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform];
  v27 = *MEMORY[0x277D860B8];
  v104 = *(MEMORY[0x277D860B8] + 16);
  v28 = v104;
  v105 = v27;
  v29 = *(MEMORY[0x277D860B8] + 32);
  v102 = *(MEMORY[0x277D860B8] + 48);
  v30 = v102;
  v103 = v29;
  v117[1264] = 0;
  *v26 = v27;
  *(v26 + 1) = v28;
  *(v26 + 2) = v29;
  *(v26 + 3) = v30;
  v26[64] = 0;
  v31 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_metadataMap;
  *&v22[v31] = sub_246077064(v25);
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_frameIndex] = 0;
  v32 = &v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp];
  *v32 = 0;
  v32[8] = 1;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_needToStopMotionManager] = 0;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isHighQualityMacroModeSupported] = 2;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isToFSensorTypePeridot] = 0;
  v33 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_snapshotURL;
  v34 = sub_246091704();
  v35 = *(v34 - 8);
  v98 = *(v35 + 56);
  v99 = (v35 + 56);
  (v98)(&v22[v33], 1, 1, v34);
  v36 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_mobileSfMUserDefaultValue;
  v22[v36] = sub_245F92434();
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isClosed] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectInFOVRatio] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_centerOfObjectInFOV] = _Q0;
  v42 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_uuidToShotAnchorsMap;
  *&v22[v42] = sub_246077280(v25, &qword_27EE3AEB8, &qword_24609AE48, &qword_27EE3AD78, &qword_24609AD28);
  v43 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotUUIDToIDMap;
  *&v22[v43] = sub_246077460(v25);
  v44 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotIDToUUIDMap;
  *&v22[v44] = sub_246077648(v25);
  v45 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotFlippableMap;
  *&v22[v45] = sub_246077824(v25);
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_numInitialShotsBeforeFlippableDecision] = 10;
  v46 = &v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maxPhotoDimensions];
  *v46 = 0;
  v46[8] = 1;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPoseCorrectionUsingMobileSfMEnabled] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_numPoseUpdatesToCheckForConsistency] = 2;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_mobileSfMPoseUpdateRotationDiffThreshold] = 1065353216;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_mobileSfMPoseUpdateTranslationDiffThreshold] = 1000593162;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_waitTimeThresholdForPoseCorrectionInSec] = 0x4024000000000000;
  v47 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_poseCorrectionTimerWorkItem;
  v116[4] = nullsub_1;
  v116[5] = 0;
  v116[0] = MEMORY[0x277D85DD0];
  v116[1] = 1107296256;
  v116[2] = sub_245F913A4;
  v116[3] = &unk_2858E0CE8;
  _Block_copy(v116);
  v115 = v25;
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, v97);
  sub_2460921A4();
  sub_246091AE4();
  swift_allocObject();
  *&v22[v47] = sub_246091AC4();
  v48 = &v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_worldToMobileSfMTransform];
  *v48 = 0u;
  *(v48 + 1) = 0u;
  *(v48 + 2) = 0u;
  *(v48 + 3) = 0u;
  v48[64] = 1;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_consecutiveObjectFlippabilityCount] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_minConsecutiveObjectFlippabilityCount] = 5;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_minShotFlippableMapSize] = 5;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureOptions] = xmmword_246099B70;
  v49 = &v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition];
  *v49 = 0u;
  *(v49 + 1) = 0u;
  v49[32] = 0;
  v49[33] = 1;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_prevPlane] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_yDistanceThresholdBetweenPrevAndCurrPlanes] = 1008981770;
  v50 = &v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialCameraTransform];
  *(v50 + 2) = 0u;
  *(v50 + 3) = 0u;
  *v50 = 0u;
  *(v50 + 1) = 0u;
  v50[64] = 1;
  v51 = &v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox];
  *(v51 + 2) = 0u;
  *(v51 + 3) = 0u;
  *v51 = 0u;
  *(v51 + 1) = 0u;
  v51[64] = 1;
  v52 = &v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud];
  v52[3] = 0u;
  v52[4] = 0u;
  v52[1] = 0u;
  v52[2] = 0u;
  *v52 = 0u;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBoxAnchor] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_coverage] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID] = -1;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotsInCurrentSegment] = MEMORY[0x277D84F90];
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCircularBuffer] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudUpdateInterval] = 0x3FA10CB295E9E1B1;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCacheInterval] = 0x4008000000000000;
  v53 = &v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformBoundingBox];
  *(v53 + 2) = 0u;
  *(v53 + 3) = 0u;
  *v53 = 0u;
  *(v53 + 1) = 0u;
  v53[64] = 1;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldCreateFreeformMeshBuffersFromHeap] = 1;
  v118 = 1;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformMeshHeapVertexCapacity] = 400000;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformScanExtent] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformMeshRefinementInitialVoxelSize] = 1000593162;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformMeshRefinementVoxelSizeIncrement] = 1000593162;
  v119 = 1;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformMeshRefinementVoxelSizeScanExtentThreshold] = 1014350479;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformCanAutoCaptureStart] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurface] = 0;
  v54 = &v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceObjectOrigin];
  *v54 = 0;
  v54[1] = 0;
  v55 = &v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig];
  sub_246077C90(v120);
  *v55 = v120[0];
  v56 = v120[1];
  v57 = v120[2];
  v58 = v120[4];
  v55[3] = v120[3];
  v55[4] = v58;
  v55[1] = v56;
  v55[2] = v57;
  v59 = v120[5];
  v60 = v120[6];
  v61 = v120[8];
  v55[7] = v120[7];
  v55[8] = v61;
  v55[5] = v59;
  v55[6] = v60;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceDebugVoxelCloud] = 0;
  v62 = &v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pointCloud];
  v62[4] = 0u;
  v62[5] = 0u;
  v62[2] = 0u;
  v62[3] = 0u;
  *v62 = 0u;
  v62[1] = 0u;
  v63 = &v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_intrinsicsFromLastFrame];
  *(v63 + 1) = 0u;
  *(v63 + 2) = 0u;
  *v63 = 0u;
  v63[48] = 1;
  v64 = &v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_imageHeightFromLastFrame];
  *v64 = 0;
  v64[8] = 1;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldRestartVoxelIntegration] = 0;
  v65 = &v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelHashingRestartTime];
  *v65 = 0;
  v65[8] = 1;
  v66 = &v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_worldToObjectTransformFromMobileSfM];
  *v66 = 0u;
  *(v66 + 1) = 0u;
  *(v66 + 2) = 0u;
  *(v66 + 3) = 0u;
  v67 = v118;
  v66[64] = v118;
  v68 = &v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialWorldToMobileSfMTransform];
  *(v68 + 2) = 0u;
  *(v68 + 3) = 0u;
  *v68 = 0u;
  *(v68 + 1) = 0u;
  v68[64] = v67;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pauseTimeForPoseCorrection] = 0;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForNewPlane] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelIntegrationManager] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_explicitFeedbackManager] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_imageScaler] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_motionManager] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager] = 0;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPgManagerTornDown] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_meshManager] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager] = 0;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_traceDebugId] = 0;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugTapPosition] = 0;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugPlaneDetection] = 0;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugMaskingVoxel] = 0;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugCameraControl] = 0;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugDebugVoxels] = 0;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugTsdfDepth] = 0;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugSurfaceGeometryData] = 0;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugCoverageGuideVoxels] = 0;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugExplicitFeedbackEnabled] = 0;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugAutoCaptureEnabled] = 0;
  v69 = &v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugAdjustedCaptureCoolDown];
  *v69 = 0;
  v69[8] = 1;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugWriteAllFramesData] = 0;
  v70 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugOCBundleWriteDisabled;
  v22[v70] = *sub_245F926DC();
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__bypassAllAlgos] = 0;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__voxelIntegrationEnabled] = 1;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__explicitFeedbackEnabled] = 1;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__coverageEnabled] = 0;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__autoCaptureEnabled] = 1;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMEnabled] = 1;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMiPhoneOverride] = 0;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__captureRateControlEnabled] = 1;
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMPointCloudBuffer] = 0;
  v71 = &v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__scaleWorldToObjectTransform];
  v72 = v104;
  *v71 = v105;
  v71[1] = v72;
  v73 = v102;
  v71[2] = v103;
  v71[3] = v73;
  v74 = v98;
  (v98)(&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__replayVideoURL], 1, 1, v34);
  v74(&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__recordVideoURL], 1, 1, v34);
  *&v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__skippedFramesTimeStamps] = MEMORY[0x277D84FA0];
  v75 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_configuration;
  v22[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_configuration] = v106;
  v76 = sub_245FA3174();
  v77 = v107;
  (*(v107 + 16))(v113, v76, v121);
  v78 = v22;
  v79 = sub_2460918D4();
  v80 = sub_246091FC4();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v116[0] = v82;
    *v81 = 136380931;
    *(v81 + 4) = sub_245F8D3C0(0xD000000000000042, 0x80000002460A2550, v116);
    *(v81 + 12) = 2082;
    LOBYTE(v115) = v22[v75];
    v83 = sub_246091C54();
    v85 = v84;

    v86 = sub_245F8D3C0(v83, v85, v116);

    *(v81 + 14) = v86;
    _os_log_impl(&dword_245F8A000, v79, v80, "ObjectCaptureSession.%{private}s: Initialize with configuration: %{public}s.", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v82, -1, -1);
    MEMORY[0x24C1989D0](v81, -1, -1);
  }

  else
  {
  }

  (*(v77 + 8))(v113, v121);
  v87 = v111;
  v88 = v108;
  if (v108)
  {
    v89 = v108;
  }

  else
  {
    v89 = [objc_allocWithZone(MEMORY[0x277CE5370]) init];
  }

  *&v78[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession] = v89;
  swift_beginAccess();
  v115 = 10;
  v90 = v88;
  sub_246091954();
  swift_endAccess();
  v91 = type metadata accessor for ObjectCaptureSession(0);
  v114.receiver = v78;
  v114.super_class = v91;
  v92 = objc_msgSendSuper2(&v114, sel_init);
  v93 = v109;
  v94 = v110;
  sub_246078034(v112, v87, v110);
  sub_245F8E744(v94, &qword_27EE3A498, &unk_246097EB8);
  if (v93)
  {
  }

  swift_unknownObjectRelease();
  return v92;
}

id ObjectCaptureSession.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2460917D4();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  v24 = *(type metadata accessor for MemoryLogger() + 88);
  v24(0xD00000000000002CLL, 0x80000002460A25A0);
  sub_246057778();
  v9 = *&v0[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager];
  if (v9)
  {
    v10 = v2;
    v11 = *(*v9 + 704);

    v11(v12);
    v2 = v10;
  }

  v13 = [objc_opt_self() defaultCenter];
  [v13 removeObserver:v1 name:*MEMORY[0x277CCA600] object:0];

  v14 = sub_245FA3174();
  (*(v3 + 16))(v5, v14, v2);
  v15 = sub_2460918D4();
  v16 = sub_246091FC4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v2;
    v19 = v18;
    v27 = v18;
    *v17 = 136380675;
    *(v17 + 4) = sub_245F8D3C0(0x74696E696564, 0xE600000000000000, &v27);
    _os_log_impl(&dword_245F8A000, v15, v16, "ObjectCaptureSession.%{private}s: Session was destroyed.", v17, 0xCu);
    sub_245F8E6F4(v19);
    MEMORY[0x24C1989D0](v19, -1, -1);
    MEMORY[0x24C1989D0](v17, -1, -1);

    (*(v3 + 8))(v5, v23);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v24(0xD00000000000002FLL, 0x80000002460A25D0);
  sub_246040A34(v8, 0x74696E696564, 0xE600000000000000, "ObjectCaptureSession.%{private}s takes time = %{public}s ms");
  (*(v25 + 8))(v8, v26);
  v20 = type metadata accessor for ObjectCaptureSession(0);
  v28.receiver = v1;
  v28.super_class = v20;
  return objc_msgSendSuper2(&v28, sel_dealloc);
}

uint64_t sub_24603B598()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2460917D4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x4A8))(v8);
  if ((result & 1) != 0 && (*(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID) & 0x8000000000000000) == 0)
  {
    __break(1u);
  }

  else
  {
    sub_2460917A4();
    v12 = sub_245FA3174();
    (*(v3 + 16))(v5, v12, v2);
    v13 = sub_2460918D4();
    v14 = sub_246091FC4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v22 = v6;
      v16 = v15;
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136380675;
      *(v16 + 4) = sub_245F8D3C0(0x29286E7572, 0xE500000000000000, &v23);
      _os_log_impl(&dword_245F8A000, v13, v14, "ObjectCaptureSession.%{private}s: Called run().", v16, 0xCu);
      sub_245F8E6F4(v17);
      MEMORY[0x24C1989D0](v17, -1, -1);
      v18 = v16;
      v6 = v22;
      MEMORY[0x24C1989D0](v18, -1, -1);
    }

    v19 = (*(v3 + 8))(v5, v2);
    MEMORY[0x28223BE20](v19);
    *(&v21 - 2) = v10;
    *(&v21 - 1) = v1;
    sub_246092044();
    v20 = v23;
    (*(v7 + 8))(v10, v6);
    return v20;
  }

  return result;
}

uint64_t sub_24603B8BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v44 - v12;
  v14 = *((*MEMORY[0x277D85000] & *a2) + 0x410);
  v14(&v49, v11);
  if (v49 == 10)
  {
    sub_246077B30(0xA);
    v15 = 10;
LABEL_5:
    sub_246077B30(v15);
    (v14)(&v49);
    v16 = a3;
    if (v49 == 13)
    {
      sub_246077B30(0xD);
      sub_246077B30(0xD);
      sub_246059B88();
    }

    else
    {
      sub_246077B30(v49);
      sub_246077B30(0xD);
    }

    sub_246053240();
    v18 = v17;
    v19 = sub_2460544A0(v17);
    if (v19)
    {
      v20 = v19;
      [*(a2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession) runWithConfiguration:v19 options:0];
      v21 = sub_246059D18();
      if (v21)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_246091984();

        v22 = v49;
        swift_getKeyPath();
        swift_getKeyPath();
        v49 = 11;
        v23 = a2;
        sub_246091994();
        v49 = v22;
        sub_246036D70(&v49);

        sub_246077B30(v22);
      }

      else
      {
      }

      v24 = v21 & 1;
    }

    else
    {
      v25 = sub_245FA3174();
      (*(v7 + 16))(v9, v25, v6);
      v26 = sub_2460918D4();
      v27 = sub_246091FB4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v47 = a1;
        v30 = v29;
        v49 = v29;
        *v28 = 136380675;
        *(v28 + 4) = sub_245F8D3C0(0x29286E7572, 0xE500000000000000, &v49);
        _os_log_impl(&dword_245F8A000, v26, v27, "ObjectCaptureSession.%{private}s: Failed to configure AR session!", v28, 0xCu);
        sub_245F8E6F4(v30);
        v31 = v30;
        a1 = v47;
        MEMORY[0x24C1989D0](v31, -1, -1);
        MEMORY[0x24C1989D0](v28, -1, -1);
      }

      else
      {
      }

      (*(v7 + 8))(v9, v6);
      v24 = 0;
    }

    a3 = v16;
    goto LABEL_21;
  }

  sub_246077B30(v49);
  sub_246077B30(0xA);
  (v14)(&v49);
  if (v49 == 13)
  {
    sub_246077B30(0xD);
    v15 = 13;
    goto LABEL_5;
  }

  v47 = a1;
  sub_246077B30(v49);
  sub_246077B30(0xD);
  v32 = sub_245FA3174();
  (*(v7 + 16))(v13, v32, v6);
  v33 = a2;
  v34 = sub_2460918D4();
  v35 = sub_246091FB4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v46 = a3;
    v37 = v36;
    v45 = swift_slowAlloc();
    v49 = v45;
    *v37 = 136380931;
    *(v37 + 4) = sub_245F8D3C0(0x29286E7572, 0xE500000000000000, &v49);
    *(v37 + 12) = 2082;
    (v14)(&v48);
    v38 = sub_246091C54();
    v40 = sub_245F8D3C0(v38, v39, &v49);

    *(v37 + 14) = v40;
    _os_log_impl(&dword_245F8A000, v34, v35, "ObjectCaptureSession.%{private}s: Invalid state: %{public}s", v37, 0x16u);
    v41 = v45;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v41, -1, -1);
    v42 = v37;
    a3 = v46;
    MEMORY[0x24C1989D0](v42, -1, -1);
  }

  (*(v7 + 8))(v13, v6);
  v24 = 0;
  a1 = v47;
LABEL_21:
  *a3 = v24;
  return sub_246040A34(a1, 0x29286E7572, 0xE500000000000000, "ObjectCaptureSession.%{private}s: run() takes time = %{public}s ms");
}

uint64_t sub_24603BF00(char a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2460917D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  v12 = sub_245FA3174();
  (*(v5 + 16))(v7, v12, v4);
  v13 = sub_2460918D4();
  v14 = sub_246091FC4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = v2;
    v16 = a1;
    v17 = v15;
    v18 = swift_slowAlloc();
    v25 = v8;
    v19 = v18;
    v27 = v18;
    *v17 = 136380931;
    *(v17 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A2600, &v27);
    *(v17 + 12) = 1026;
    *(v17 + 14) = v16 & 1;
    _os_log_impl(&dword_245F8A000, v13, v14, "ObjectCaptureSession.%{private}s: Called pause(fastResuming: %{BOOL,public}d!", v17, 0x12u);
    sub_245F8E6F4(v19);
    v20 = v19;
    v8 = v25;
    MEMORY[0x24C1989D0](v20, -1, -1);
    v21 = v17;
    a1 = v16;
    v2 = v26;
    MEMORY[0x24C1989D0](v21, -1, -1);
  }

  v22 = (*(v5 + 8))(v7, v4);
  MEMORY[0x28223BE20](v22);
  *(&v25 - 4) = v11;
  *(&v25 - 24) = a1 & 1;
  *(&v25 - 2) = v2;
  sub_246092044();
  v23 = v27;
  (*(v9 + 8))(v11, v8);
  return v23;
}

uint64_t sub_24603C1F8@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, char *a4@<X8>)
{
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v93 = &v92 - v13;
  MEMORY[0x28223BE20](v14);
  v92 = &v92 - v15;
  MEMORY[0x28223BE20](v16);
  v94 = (&v92 - v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v92 - v19;
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v24 = &v92 - v23;
  if (a2)
  {
    v25 = sub_2460444F4();
    if ((v25 & 1) == 0)
    {
LABEL_18:
      v59 = sub_245FA3174();
      v9[2](v11, v59, v8);
      v60 = a3;
      v61 = sub_2460918D4();
      v62 = v8;
      v63 = sub_246091FB4();

      if (os_log_type_enabled(v61, v63))
      {
        v64 = swift_slowAlloc();
        v96 = a4;
        v65 = v64;
        v66 = swift_slowAlloc();
        v94 = v9;
        v67 = v66;
        v100[0] = v66;
        *v65 = 136380931;
        *(v65 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A2600, v100);
        *(v65 + 12) = 2082;
        v68 = *((*MEMORY[0x277D85000] & *v60) + 0x410);
        v95 = v62;
        v68(v99);
        v69 = sub_246091C54();
        v71 = sub_245F8D3C0(v69, v70, v100);

        *(v65 + 14) = v71;
        _os_log_impl(&dword_245F8A000, v61, v63, "ObjectCaptureSession.%{private}s: Invalid state: %{public}s", v65, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v67, -1, -1);
        v72 = v65;
        a4 = v96;
        MEMORY[0x24C1989D0](v72, -1, -1);

        (v94[1])(v11, v95);
      }

      else
      {

        (v9[1])(v11, v62);
      }

      v39 = 0;
LABEL_34:
      *a4 = v39;
      return sub_24603CDE4();
    }
  }

  else
  {
    v95 = v8;
    v96 = a4;
    v97 = a1;
    v26 = *(a3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession);
    v27 = [v26 configuration];
    if (v27 && (v28 = v27, objc_opt_self(), v29 = swift_dynamicCastObjCClass(), v28, v29) || (v30 = [v26 configuration]) != 0 && (v31 = v30, objc_opt_self(), v32 = swift_dynamicCastObjCClass(), v31, v32))
    {
      v33 = sub_245FA3174();
      v34 = v95;
      v9[2](v24, v33, v95);
      v35 = sub_2460918D4();
      v36 = sub_246091FB4();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v100[0] = v38;
        *v37 = 136380675;
        *(v37 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A2600, v100);
        _os_log_impl(&dword_245F8A000, v35, v36, "ObjectCaptureSession.%{private}s: Pause is not supported in ARRecordingConfiguration or ARReplayConfiguration!", v37, 0xCu);
        sub_245F8E6F4(v38);
        MEMORY[0x24C1989D0](v38, -1, -1);
        MEMORY[0x24C1989D0](v37, -1, -1);
      }

      (v9[1])(v24, v34);
      v39 = 0;
      a4 = v96;
      goto LABEL_34;
    }

    v40 = sub_2460444F4();
    a4 = v96;
    a1 = v97;
    v8 = v95;
    if (!v40)
    {
      goto LABEL_18;
    }

    v41 = sub_245FA3174();
    v9[2](v20, v41, v8);
    v42 = sub_2460918D4();
    v43 = sub_246091FC4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v100[0] = v45;
      *v44 = 136380675;
      *(v44 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A2600, v100);
      _os_log_impl(&dword_245F8A000, v42, v43, "ObjectCaptureSession.%{private}s: ARSession is paused.", v44, 0xCu);
      sub_245F8E6F4(v45);
      v46 = v45;
      a4 = v96;
      MEMORY[0x24C1989D0](v46, -1, -1);
      v47 = v44;
      a1 = v97;
      MEMORY[0x24C1989D0](v47, -1, -1);
    }

    (v9[1])(v20, v8);
    v25 = [*(a3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession) pause];
  }

  v97 = a1;
  (*((*MEMORY[0x277D85000] & *a3) + 0x410))(v100, v25);
  v48 = *(a3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateOnPause);
  *(a3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateOnPause) = v100[0];
  sub_246077B30(v48);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_246091984();

  v49 = v100[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v100[0] = 13;
  v50 = a3;
  sub_246091994();
  v100[0] = v49;
  sub_246036D70(v100);
  sub_246077B30(v49);
  if (*(v50 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPoseCorrectionUsingMobileSfMEnabled) != 1)
  {
    v73 = sub_245FA3174();
    v74 = v93;
    v9[2](v93, v73, v8);
    v75 = sub_2460918D4();
    v76 = sub_246091FC4();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v100[0] = v78;
      *v77 = 136380675;
      *(v77 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A2600, v100);
      _os_log_impl(&dword_245F8A000, v75, v76, "ObjectCaptureSession.%{private}s: Couldn't set shouldWaitForPoseCorrectionUsingMobileSfM because mobileSfM based pose correction is not enabled!", v77, 0xCu);
      sub_245F8E6F4(v78);
      MEMORY[0x24C1989D0](v78, -1, -1);
      MEMORY[0x24C1989D0](v77, -1, -1);
    }

    (v9[1])(v74, v8);
    v39 = 1;
    goto LABEL_34;
  }

  v96 = a4;
  sub_24603D144();
  *(v50 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM) = 1;
  v51 = sub_245FA3174();
  v52 = v94;
  v95 = v9[2];
  v95(v94, v51, v8);
  v53 = sub_2460918D4();
  v54 = sub_246091FC4();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v100[0] = v56;
    *v55 = 136380675;
    *(v55 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A2600, v100);
    _os_log_impl(&dword_245F8A000, v53, v54, "ObjectCaptureSession.%{private}s: Set shouldWaitForPoseCorrectionUsingMobileSfM.", v55, 0xCu);
    sub_245F8E6F4(v56);
    MEMORY[0x24C1989D0](v56, -1, -1);
    MEMORY[0x24C1989D0](v55, -1, -1);

    v57 = v9[1];
    v58 = v8;
    (v57)(v94, v8);
  }

  else
  {

    v79 = v52;
    v57 = v9[1];
    v58 = v8;
    (v57)(v79, v8);
  }

  v80 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame;
  swift_beginAccess();
  memcpy(v100, v50 + v80, 0x4F0uLL);
  result = sub_246081984(v100);
  if (result != 1)
  {
    v82 = *v100 * 1000.0;
    if (COERCE__INT64(fabs(*v100 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v82 > -9.22337204e18)
    {
      v94 = v9;
      if (v82 < 9.22337204e18)
      {
        v83 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pauseTimeForPoseCorrection;
        *(v50 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pauseTimeForPoseCorrection) = v82;
        v84 = v92;
        v95(v92, v51, v58);
        v85 = v84;
        v86 = v50;
        v87 = sub_2460918D4();
        v88 = sub_246091FC4();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v95 = v57;
          v91 = v90;
          v98 = v90;
          *v89 = 136380931;
          *(v89 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A2600, &v98);
          *(v89 + 12) = 2050;
          *(v89 + 14) = *(v50 + v83);

          _os_log_impl(&dword_245F8A000, v87, v88, "ObjectCaptureSession.%{private}s: Set pauseTimeForPoseCorrection = %{public}ld", v89, 0x16u);
          sub_245F8E6F4(v91);
          MEMORY[0x24C1989D0](v91, -1, -1);
          MEMORY[0x24C1989D0](v89, -1, -1);

          (v95)(v85, v58);
        }

        else
        {

          (v57)(v85, v58);
        }

        a4 = v96;
        v39 = 1;
        goto LABEL_34;
      }

      goto LABEL_37;
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24603CDE4()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2460917D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_246096460;
  sub_2460917B4();
  v9 = MEMORY[0x277D83A80];
  *(v8 + 56) = MEMORY[0x277D839F8];
  *(v8 + 64) = v9;
  *(v8 + 32) = v10 * 1000.0;
  v11 = sub_246091C24();
  v13 = v12;
  v14 = sub_245FA3174();
  (*(v1 + 16))(v3, v14, v0);

  v15 = sub_2460918D4();
  v16 = sub_246091FC4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v0;
    v18 = v17;
    v19 = swift_slowAlloc();
    v24 = v4;
    v20 = v19;
    v26 = v19;
    *v18 = 136380931;
    *(v18 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A2600, &v26);
    *(v18 + 12) = 2082;
    v21 = sub_245F8D3C0(v11, v13, &v26);

    *(v18 + 14) = v21;
    _os_log_impl(&dword_245F8A000, v15, v16, "ObjectCaptureSession.%{private}s: pause() takes time = %{public}s ms", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v20, -1, -1);
    MEMORY[0x24C1989D0](v18, -1, -1);

    (*(v1 + 8))(v3, v25);
    return (*(v5 + 8))(v7, v24);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24603D144()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  v4 = sub_246091AB4();

  if ((v4 & 1) == 0)
  {

    sub_246091AD4();

    v6 = sub_245FA3174();
    (*(v1 + 16))(v3, v6, v0);
    v7 = sub_2460918D4();
    v8 = sub_246091FC4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136380675;
      *(v9 + 4) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A4500, &v12);
      _os_log_impl(&dword_245F8A000, v7, v8, "ObjectCaptureSession.%{private}s: Cancelled existing pose correction timer.", v9, 0xCu);
      sub_245F8E6F4(v10);
      MEMORY[0x24C1989D0](v10, -1, -1);
      MEMORY[0x24C1989D0](v9, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_24603D340()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2460917D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  v10 = sub_245FA3174();
  (*(v3 + 16))(v5, v10, v2);
  v11 = sub_2460918D4();
  v12 = sub_246091FC4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = v1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136380675;
    *(v14 + 4) = sub_245F8D3C0(0x2928656D75736572, 0xE800000000000000, &v22);
    _os_log_impl(&dword_245F8A000, v11, v12, "ObjectCaptureSession.%{private}s: Called resume().", v14, 0xCu);
    sub_245F8E6F4(v15);
    MEMORY[0x24C1989D0](v15, -1, -1);
    v16 = v14;
    v1 = v21;
    MEMORY[0x24C1989D0](v16, -1, -1);
  }

  v17 = (*(v3 + 8))(v5, v2);
  MEMORY[0x28223BE20](v17);
  *(&v20 - 2) = v9;
  *(&v20 - 1) = v1;
  sub_246092044();
  v18 = v22;
  (*(v7 + 8))(v9, v6);
  return v18;
}

uint64_t sub_24603D604@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v55 = a3;
  v5 = sub_2460918F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  v16 = *((*MEMORY[0x277D85000] & *a2) + 0x410);
  v16(&v57, v13);
  if (v57 != 13)
  {
    sub_246077B30(v57);
    sub_246077B30(0xD);
    v33 = sub_245FA3174();
    (*(v6 + 16))(v15, v33, v5);
    v34 = a2;
    v54 = v5;
    v35 = v34;
    v36 = sub_2460918D4();
    v37 = sub_246091FB4();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v53 = a1;
      v40 = v39;
      v57 = v39;
      *v38 = 136380931;
      *(v38 + 4) = sub_245F8D3C0(0x2928656D75736572, 0xE800000000000000, &v57);
      *(v38 + 12) = 2082;
      (v16)(&v56);
      v41 = sub_246091C54();
      v43 = sub_245F8D3C0(v41, v42, &v57);

      *(v38 + 14) = v43;
      _os_log_impl(&dword_245F8A000, v36, v37, "ObjectCaptureSession.%{private}s: Invalid state: %{public}s", v38, 0x16u);
      swift_arrayDestroy();
      v44 = v40;
      a1 = v53;
      MEMORY[0x24C1989D0](v44, -1, -1);
      MEMORY[0x24C1989D0](v38, -1, -1);
    }

    (*(v6 + 8))(v15, v54);
    goto LABEL_15;
  }

  sub_246077B30(0xD);
  sub_246077B30(0xD);
  sub_246053240();
  v18 = v17;
  v19 = sub_2460544A0(v17);
  if (!v19)
  {
    v45 = sub_245FA3174();
    (*(v6 + 16))(v8, v45, v5);
    v46 = sub_2460918D4();
    v47 = v5;
    v48 = sub_246091FB4();
    if (os_log_type_enabled(v46, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v57 = v50;
      *v49 = 136380675;
      *(v49 + 4) = sub_245F8D3C0(0x2928656D75736572, 0xE800000000000000, &v57);
      _os_log_impl(&dword_245F8A000, v46, v48, "ObjectCaptureSession.%{private}s: Failed to configure AR session!", v49, 0xCu);
      sub_245F8E6F4(v50);
      MEMORY[0x24C1989D0](v50, -1, -1);
      MEMORY[0x24C1989D0](v49, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v47);
LABEL_15:
    v32 = 0;
    goto LABEL_17;
  }

  v20 = v19;
  v53 = a1;
  v54 = v5;
  [*(a2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession) runWithConfiguration:v19 options:0];
  v21 = *(a2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateOnPause);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2460818E4(v21);
  sub_246091984();

  v22 = v57;
  swift_getKeyPath();
  swift_getKeyPath();
  v57 = v21;
  v23 = a2;
  sub_246091994();
  v57 = v22;
  sub_246036D70(&v57);
  sub_246077B30(v22);
  if (*(v23 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPoseCorrectionUsingMobileSfMEnabled) == 1)
  {
    sub_24603DCBC();
    v24 = sub_245FA3174();
    v25 = v54;
    (*(v6 + 16))(v11, v24, v54);
    v26 = v23;
    v27 = sub_2460918D4();
    v28 = sub_246091FC4();

    v29 = os_log_type_enabled(v27, v28);
    a1 = v53;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v57 = v31;
      *v30 = 136380931;
      *(v30 + 4) = sub_245F8D3C0(0x2928656D75736572, 0xE800000000000000, &v57);
      *(v30 + 12) = 2050;
      *(v30 + 14) = 0x4024000000000000;
      _os_log_impl(&dword_245F8A000, v27, v28, "ObjectCaptureSession.%{private}s: Set set wait for pose correction timer to %{public}f seconds", v30, 0x16u);
      sub_245F8E6F4(v31);
      MEMORY[0x24C1989D0](v31, -1, -1);
      MEMORY[0x24C1989D0](v30, -1, -1);

      (*(v6 + 8))(v11, v54);
    }

    else
    {

      (*(v6 + 8))(v11, v25);
    }

    v32 = 1;
  }

  else
  {

    v32 = 1;
    a1 = v53;
  }

LABEL_17:
  *v55 = v32;
  return sub_246040A34(a1, 0x2928656D75736572, 0xE800000000000000, "ObjectCaptureSession.%{private}s: resume() takes time = %{public}s ms");
}

uint64_t sub_24603DCBC()
{
  v1 = sub_246091AA4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  sub_24603D144();
  *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_poseCorrectionTimerWorkItem) = sub_246043938();

  sub_246091A84();
  sub_246091B14();
  v8 = *(v2 + 8);
  v8(v4, v1);

  sub_246092014();

  return (v8)(v7, v1);
}

uint64_t sub_24603DE20(double a1, double a2)
{
  v3 = v2;
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2460917D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  v14 = sub_245FA3174();
  (*(v7 + 16))(v9, v14, v6);
  v15 = sub_2460918D4();
  v16 = sub_246091FC4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136381187;
    *(v18 + 4) = sub_245F8D3C0(0xD000000000000011, 0x80000002460A2620, &v26);
    *(v18 + 12) = 2050;
    *(v18 + 14) = a1;
    *(v18 + 22) = 2050;
    *(v18 + 24) = a2;
    _os_log_impl(&dword_245F8A000, v15, v16, "ObjectCaptureSession.%{private}s: Called detectObject() with imagePoint = (%{public}f, %{public}f)", v18, 0x20u);
    sub_245F8E6F4(v19);
    MEMORY[0x24C1989D0](v19, -1, -1);
    v20 = v18;
    v3 = v25;
    MEMORY[0x24C1989D0](v20, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_24608FC94();
  OCSignPostsAriadneDbgCode();
  v21 = kdebug_trace();
  MEMORY[0x28223BE20](v21);
  *(&v24 - 4) = v13;
  *(&v24 - 3) = v3;
  *(&v24 - 2) = a1;
  *(&v24 - 1) = a2;
  sub_246092044();
  v22 = v26;
  (*(v11 + 8))(v13, v10);
  return v22;
}

uint64_t sub_24603E130(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v43 = v5;
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v39[-v12];
  v14 = *((*MEMORY[0x277D85000] & *v2) + 0x410);
  v14(v48, v11);
  if (v48[0] == 12)
  {
    v42 = v4;
    sub_246077B30(0xC);
    v15 = 12;
    goto LABEL_5;
  }

  sub_246077B30(v48[0]);
  sub_246077B30(0xC);
  (v14)(v48);
  if (v48[0] == 14)
  {
    v42 = v4;
    sub_246077B30(0xE);
    v15 = 14;
LABEL_5:
    sub_246077B30(v15);
    sub_24608FCA0();
    OCSignPostsAriadneDbgCode();
    kdebug_trace();
    v46 = 1;
    memset(v45, 0, 64);
    LOBYTE(v45[8]) = 1;
    sub_246044B58(v45);
    v16 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_planeMap;
    swift_beginAccess();
    v17 = *(v2 + v16);
    v18 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame;
    swift_beginAccess();
    memcpy(v47, v2 + v18, sizeof(v47));
    memcpy(v45, v2 + v18, 0x4F0uLL);

    sub_245F8E7A4(v47, &v44, &qword_27EE3A9F0, &qword_246099CE0);
    sub_24603EAAC(v17);
    v20 = v19;

    memcpy(v48, v45, 0x4F0uLL);
    sub_245F8E744(v48, &qword_27EE3A9F0, &qword_246099CE0);
    if (v20)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_246091984();

      v21 = v45[0];
      swift_getKeyPath();
      swift_getKeyPath();
      v45[0] = 14;
      v22 = v2;
      sub_246091994();
      v45[0] = v21;
      sub_246036D70(v45);
      sub_246077B30(v21);
      *v43 = 1;
    }

    else
    {
      v23 = sub_245FA3174();
      (*(v7 + 16))(v9, v23, v6);
      v24 = sub_2460918D4();
      v25 = sub_246091FB4();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v45[0] = v27;
        *v26 = 136380675;
        *(v26 + 4) = sub_245F8D3C0(0xD000000000000011, 0x80000002460A2620, v45);
        _os_log_impl(&dword_245F8A000, v24, v25, "ObjectCaptureSession.%{private}s: Precheck failed!", v26, 0xCu);
        sub_245F8E6F4(v27);
        MEMORY[0x24C1989D0](v27, -1, -1);
        MEMORY[0x24C1989D0](v26, -1, -1);
      }

      (*(v7 + 8))(v9, v6);
      *v43 = 0;
    }

    return sub_24603E74C();
  }

  sub_246077B30(v48[0]);
  sub_246077B30(0xE);
  v28 = sub_245FA3174();
  (*(v7 + 16))(v13, v28, v6);
  v29 = v2;
  v30 = sub_2460918D4();
  v31 = sub_246091FB4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v42 = v4;
    v33 = v32;
    v41 = swift_slowAlloc();
    v48[0] = v41;
    *v33 = 136380931;
    *(v33 + 4) = sub_245F8D3C0(0xD000000000000011, 0x80000002460A2620, v48);
    *(v33 + 12) = 2082;
    v40 = v31;
    (v14)(v47);
    v34 = sub_246091C54();
    v36 = sub_245F8D3C0(v34, v35, v48);

    *(v33 + 14) = v36;
    _os_log_impl(&dword_245F8A000, v30, v40, "ObjectCaptureSession.%{private}s: Invalid state: %{public}s", v33, 0x16u);
    v37 = v41;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v37, -1, -1);
    MEMORY[0x24C1989D0](v33, -1, -1);
  }

  (*(v7 + 8))(v13, v6);
  *v43 = 0;
  return sub_24603E74C();
}

uint64_t sub_24603E74C()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2460917D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_246096460;
  sub_2460917B4();
  v9 = MEMORY[0x277D83A80];
  *(v8 + 56) = MEMORY[0x277D839F8];
  *(v8 + 64) = v9;
  *(v8 + 32) = v10 * 1000.0;
  v11 = sub_246091C24();
  v13 = v12;
  v14 = sub_245FA3174();
  (*(v1 + 16))(v3, v14, v0);

  v15 = sub_2460918D4();
  v16 = sub_246091FA4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v0;
    v18 = v17;
    v19 = swift_slowAlloc();
    v24 = v4;
    v20 = v19;
    v26 = v19;
    *v18 = 136380931;
    *(v18 + 4) = sub_245F8D3C0(0xD000000000000011, 0x80000002460A2620, &v26);
    *(v18 + 12) = 2082;
    v21 = sub_245F8D3C0(v11, v13, &v26);

    *(v18 + 14) = v21;
    _os_log_impl(&dword_245F8A000, v15, v16, "ObjectCaptureSession.%{private}s: detectObject() takes time = %{public}s ms", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v20, -1, -1);
    MEMORY[0x24C1989D0](v18, -1, -1);

    (*(v1 + 8))(v3, v25);
    return (*(v5 + 8))(v7, v24);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v4);
  }
}

void sub_24603EAAC(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1).n128_u64[0];
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v2;
  v11 = sub_2460918F4();
  v125 = *(v11 - 8);
  v126 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v110 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v110 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v110 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v110 - v24;
  MEMORY[0x28223BE20](v26);
  v123 = &v110 - v27;
  MEMORY[0x28223BE20](v28);
  v124 = &v110 - v29;
  memcpy(v146, v5, sizeof(v146));
  memcpy(v147, v5, 0x4F0uLL);
  if (sub_246081984(v147) != 1 && (v30 = *&v147[1]) != 0 && (v31 = *(&v147[1] + 1)) != 0)
  {
    LOBYTE(v137[0]) = v147[9];
    LOBYTE(v129[0]) = 5;
    sub_245F8E7A4(v146, v141, &qword_27EE3A9F0, &qword_246099CE0);
    v122 = v30;
    v32 = v31;
    if (static CameraTrackingState.== infix(_:_:)(v137, v129))
    {
      v33 = v126;
      if (*(v7 + 16))
      {
        *&v121 = v3;
        v145[0] = v147[2];
        v145[1] = v147[3];
        v145[2] = v147[4];
        v119 = v147[6];
        v120 = v147[5];
        v117 = v147[8];
        v118 = v147[7];
        v34 = *(&v147[0] + 1);
        sub_245F98A6C(&v138, v10, v9);
        if (!sub_245F98A80(v34, v122, v32, v145, v120, v119, v118, v117) || (v140 & 1) != 0)
        {
          v35 = sub_245FA3174();
          v36 = v125;
          (*(v125 + 16))(v22, v35, v33);
          v37 = sub_2460918D4();
          v38 = sub_246091FB4();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = v34;
            v41 = v32;
            v42 = swift_slowAlloc();
            *&v141[0] = v42;
            *v39 = 136380675;
            *(v39 + 4) = sub_245F8D3C0(0xD00000000000003CLL, 0x80000002460A49C0, v141);
            _os_log_impl(&dword_245F8A000, v37, v38, "ObjectCaptureSession.%{private}s: Failed to compute tap position in world, resetting the old tap position!", v39, 0xCu);
            sub_245F8E6F4(v42);
            MEMORY[0x24C1989D0](v42, -1, -1);
            MEMORY[0x24C1989D0](v39, -1, -1);

            sub_245F8E744(v146, &qword_27EE3A9F0, &qword_246099CE0);
            (*(v36 + 8))(v22, v126);
          }

          else
          {
            sub_245F8E744(v146, &qword_27EE3A9F0, &qword_246099CE0);

            (*(v36 + 8))(v22, v33);
          }

LABEL_20:
          v64 = v121;
          v65 = v121 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition;
          *(v65 + 32) = 0;
          *v65 = 0u;
          *(v65 + 16) = 0u;
          *(v65 + 33) = 1;
          LOBYTE(v141[0]) = 1;
          v66 = v64 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialCameraTransform;
          *v66 = 0u;
          *(v66 + 16) = 0u;
          *(v66 + 32) = 0u;
          *(v66 + 48) = 0u;
          *(v66 + 64) = 1;
          return;
        }

        v67 = v139;
        v68 = v139;
        if (*(v121 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugTapPosition) == 1)
        {
          v120 = v139;
          sub_24606B9B0();
          v141[0] = v67;
          sub_246091924();

          v68 = v120;
        }

        sub_246079E60(v7, v68);
        v116 = v32;
        if (!v69)
        {
          v82 = sub_245FA3174();
          v83 = v125;
          (*(v125 + 16))(v25, v82, v33);
          v84 = sub_2460918D4();
          v85 = sub_246091FB4();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            *&v141[0] = v87;
            *v86 = 136380675;
            *(v86 + 4) = sub_245F8D3C0(0xD00000000000003CLL, 0x80000002460A49C0, v141);
            _os_log_impl(&dword_245F8A000, v84, v85, "ObjectCaptureSession.%{private}s: Failed to compute nearest plane below tap position, resetting the old tap position!", v86, 0xCu);
            sub_245F8E6F4(v87);
            MEMORY[0x24C1989D0](v87, -1, -1);
            MEMORY[0x24C1989D0](v86, -1, -1);

            sub_245F8E744(v146, &qword_27EE3A9F0, &qword_246099CE0);
          }

          else
          {
            sub_245F8E744(v146, &qword_27EE3A9F0, &qword_246099CE0);
          }

          (*(v83 + 8))(v25, v33);
          goto LABEL_20;
        }

        v111 = v34;

        v143[0] = v138;
        v143[1] = v67;
        v144 = 0;
        sub_246044A5C(v143);
        v70 = v121;
        v71 = (v121 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame);
        swift_beginAccess();
        memcpy(v137, v71, sizeof(v137));
        v72 = v71[3];
        v134 = v71[2];
        v135 = v72;
        v136 = v71[4];
        v73 = *v71;
        v133 = v71[1];
        v132 = v73;
        v119 = v137[6];
        v120 = v137[5];
        v117 = v137[8];
        v118 = v137[7];
        memcpy(v131, v71 + 9, sizeof(v131));
        v74 = v71[3];
        v141[2] = v71[2];
        v141[3] = v74;
        v141[4] = v71[4];
        v75 = *v71;
        v141[1] = v71[1];
        v141[0] = v75;
        memcpy(v142, v71 + 9, sizeof(v142));
        v141[5] = v137[5];
        v141[6] = v137[6];
        v141[7] = v137[7];
        v141[8] = v137[8];
        if (sub_246081984(v141) == 1)
        {
          v76 = 1;
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          v77 = v125;
          v78 = v117;
          v79 = v118;
          v81 = v119;
          v80 = v120;
        }

        else
        {
          v76 = 0;
          v81 = v119;
          v80 = v120;
          v114 = v119;
          v115 = v120;
          v78 = v117;
          v79 = v118;
          v112 = v117;
          v113 = v118;
          v77 = v125;
        }

        v129[2] = v134;
        v129[3] = v135;
        v129[1] = v133;
        v129[0] = v132;
        v129[4] = v136;
        v129[5] = v80;
        v129[6] = v81;
        v129[7] = v79;
        v129[8] = v78;
        memcpy(v130, v131, sizeof(v130));
        sub_245F8E7A4(v137, v128, &qword_27EE3A9F0, &qword_246099CE0);
        sub_245F8E744(v129, &qword_27EE3A9F0, &qword_246099CE0);
        v88 = &v70[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialCameraTransform];
        v89 = v114;
        *v88 = v115;
        v88[1] = v89;
        v90 = v112;
        v88[2] = v113;
        v88[3] = v90;
        v88[4].i8[0] = v76;
        v91 = sub_245FA3174();
        v92 = v124;
        v120.i64[0] = *(v77 + 16);
        (v120.i64[0])(v124, v91, v33);
        v93 = v70;
        v94 = sub_2460918D4();
        v95 = sub_246091FC4();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v127 = v97;
          *v96 = 136380931;
          *(v96 + 4) = sub_245F8D3C0(0xD00000000000003CLL, 0x80000002460A49C0, &v127);
          *(v96 + 12) = 2082;
          v121 = *&v93[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition];
          v98 = v93[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition + 33];

          if (v98)
          {
            __break(1u);
            return;
          }

          v128[0] = v121;
          type metadata accessor for CGPoint();
          v99 = sub_246091C54();
          v101 = sub_245F8D3C0(v99, v100, &v127);

          *(v96 + 14) = v101;
          _os_log_impl(&dword_245F8A000, v94, v95, "ObjectCaptureSession.%{private}s: Set tap position with image point %{public}s.", v96, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1989D0](v97, -1, -1);
          MEMORY[0x24C1989D0](v96, -1, -1);

          v102 = *(v125 + 8);
          v33 = v126;
          v102(v124, v126);
        }

        else
        {

          v102 = *(v77 + 8);
          v102(v92, v33);
        }

        v103 = v123;
        (v120.i64[0])(v123, v91, v33);
        v104 = sub_2460918D4();
        v105 = sub_246091FC4();
        v106 = os_log_type_enabled(v104, v105);
        v107 = v111;
        if (v106)
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          *&v128[0] = v109;
          *v108 = 136380675;
          *(v108 + 4) = sub_245F8D3C0(0xD00000000000003CLL, 0x80000002460A49C0, v128);
          _os_log_impl(&dword_245F8A000, v104, v105, "ObjectCaptureSession.%{private}s: Set initial camera transform.", v108, 0xCu);
          sub_245F8E6F4(v109);
          MEMORY[0x24C1989D0](v109, -1, -1);
          MEMORY[0x24C1989D0](v108, -1, -1);

          sub_245F8E744(v146, &qword_27EE3A9F0, &qword_246099CE0);
        }

        else
        {
          sub_245F8E744(v146, &qword_27EE3A9F0, &qword_246099CE0);
        }

        v102(v103, v33);
      }

      else
      {
        v58 = sub_245FA3174();
        v59 = v125;
        (*(v125 + 16))(v19, v58, v33);
        v60 = sub_2460918D4();
        v61 = sub_246091FB4();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *&v141[0] = v63;
          *v62 = 136380675;
          *(v62 + 4) = sub_245F8D3C0(0xD00000000000003CLL, 0x80000002460A49C0, v141);
          _os_log_impl(&dword_245F8A000, v60, v61, "ObjectCaptureSession.%{private}s: No planes available!", v62, 0xCu);
          sub_245F8E6F4(v63);
          MEMORY[0x24C1989D0](v63, -1, -1);
          MEMORY[0x24C1989D0](v62, -1, -1);

          sub_245F8E744(v146, &qword_27EE3A9F0, &qword_246099CE0);
        }

        else
        {
          sub_245F8E744(v146, &qword_27EE3A9F0, &qword_246099CE0);
        }

        (*(v59 + 8))(v19, v33);
      }
    }

    else
    {
      v50 = sub_245FA3174();
      v52 = v125;
      v51 = v126;
      (*(v125 + 16))(v16, v50, v126);
      v53 = sub_2460918D4();
      v54 = sub_246091FB4();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = v32;
        v57 = swift_slowAlloc();
        *&v141[0] = v57;
        *v55 = 136380675;
        *(v55 + 4) = sub_245F8D3C0(0xD00000000000003CLL, 0x80000002460A49C0, v141);
        _os_log_impl(&dword_245F8A000, v53, v54, "ObjectCaptureSession.%{private}s: Camera tracking state is not normal, not setting tap point!", v55, 0xCu);
        sub_245F8E6F4(v57);
        MEMORY[0x24C1989D0](v57, -1, -1);
        MEMORY[0x24C1989D0](v55, -1, -1);

        sub_245F8E744(v146, &qword_27EE3A9F0, &qword_246099CE0);
      }

      else
      {
        sub_245F8E744(v146, &qword_27EE3A9F0, &qword_246099CE0);
      }

      (*(v52 + 8))(v16, v51);
    }
  }

  else
  {
    v43 = sub_245FA3174();
    v45 = v125;
    v44 = v126;
    (*(v125 + 16))(v13, v43, v126);
    v46 = sub_2460918D4();
    v47 = sub_246091FB4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v141[0] = v49;
      *v48 = 136380675;
      *(v48 + 4) = sub_245F8D3C0(0xD00000000000003CLL, 0x80000002460A49C0, v141);
      _os_log_impl(&dword_245F8A000, v46, v47, "ObjectCaptureSession.%{private}s: Invalid inputs!", v48, 0xCu);
      sub_245F8E6F4(v49);
      MEMORY[0x24C1989D0](v49, -1, -1);
      MEMORY[0x24C1989D0](v48, -1, -1);
    }

    (*(v45 + 8))(v13, v44);
  }
}

uint64_t sub_24603FA28(uint64_t a1)
{
  v16 = 0;
  v3 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = &v16;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_246079BC4;
  *(v5 + 24) = v4;
  v14 = sub_245FC4C80;
  v15 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_245FB4BFC;
  v13 = &unk_2858E0D60;
  v6 = _Block_copy(&aBlock);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    LOWORD(aBlock) = v16;
    v11 = 100;
    v9 = (*((*MEMORY[0x277D85000] & *v7) + 0x530))(a1, &aBlock);

    return v9 & 1;
  }

  return result;
}

CoreOC::ObjectCaptureSession::CaptureOptions __swiftcall ObjectCaptureSession.CaptureOptions.init()()
{
  *v0 = 0;
  *(v0 + 8) = 100;
  return result;
}

uint64_t sub_24603FC94(__n128 *a1, char *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 1);
  if (a1[4].n128_u8[0])
  {
    v6 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isFreeformModeEnabled;
    swift_beginAccess();
    *(v2 + v6) = 1;
    v13[0] = v3;
    v13[1] = v4;
    v14 = v5;
    v7 = sub_24604D390(v13);
  }

  else
  {
    v8 = a1[2];
    v9 = a1[3];
    v10 = *a1;
    v11 = a1[1];
    v15[0] = *a2;
    v15[1] = v4;
    v16 = v5;
    v7 = sub_24604FEAC(v15, v10, v11, v8, v9);
  }

  return v7 & 1;
}

uint64_t sub_24603FD38()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2460917D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  v10 = sub_245FA3174();
  (*(v3 + 16))(v5, v10, v2);
  v11 = sub_2460918D4();
  v12 = sub_246091FC4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v6;
    v14 = v1;
    v15 = v13;
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136380675;
    *(v15 + 4) = sub_245F8D3C0(0x29286873696E6966, 0xE800000000000000, &v23);
    _os_log_impl(&dword_245F8A000, v11, v12, "ObjectCaptureSession.%{private}s: Called finish().", v15, 0xCu);
    sub_245F8E6F4(v16);
    MEMORY[0x24C1989D0](v16, -1, -1);
    v17 = v15;
    v1 = v14;
    v6 = v22;
    MEMORY[0x24C1989D0](v17, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_24608FCC4();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  sub_24608FC34();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  v18 = sub_24607A0F0();
  MEMORY[0x28223BE20](v18);
  *(&v21 - 2) = v9;
  *(&v21 - 1) = v1;
  sub_246092044();
  v19 = v23;
  (*(v7 + 8))(v9, v6);
  return v19;
}

uint64_t sub_246040048@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2460444F4())
  {
    goto LABEL_4;
  }

  v10 = *((*MEMORY[0x277D85000] & *a2) + 0x410);
  v10(&v27);
  if (v27 == 13)
  {
    sub_246077B30(0xD);
    sub_246077B30(0xD);
LABEL_4:
    v27 = 17;
    sub_246057DD0(&v27);
    v11 = 1;
    goto LABEL_8;
  }

  v25 = a1;
  sub_246077B30(v27);
  sub_246077B30(0xD);
  v12 = sub_245FA3174();
  (*(v7 + 16))(v9, v12, v6);
  v13 = a2;
  v14 = sub_2460918D4();
  v15 = sub_246091FB4();

  v24 = v15;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136380931;
    *(v16 + 4) = sub_245F8D3C0(0x29286873696E6966, 0xE800000000000000, &v27);
    *(v16 + 12) = 2082;
    v23 = v14;
    v10(&v26);
    v18 = sub_246091C54();
    v20 = sub_245F8D3C0(v18, v19, &v27);

    *(v16 + 14) = v20;
    v14 = v23;
    _os_log_impl(&dword_245F8A000, v23, v24, "ObjectCaptureSession.%{private}s: Invalid state: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v17, -1, -1);
    MEMORY[0x24C1989D0](v16, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v11 = 0;
  a1 = v25;
LABEL_8:
  *a3 = v11;
  return sub_246040A34(a1, 0x29286873696E6966, 0xE800000000000000, "ObjectCaptureSession.%{private}s: finish() takes time = %{public}s ms");
}

uint64_t sub_246040350()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2460917D4();
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v30);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v29 = &v27 - v10;
  sub_2460917A4();
  v11 = sub_245FA3174();
  (*(v3 + 16))(v5, v11, v2);
  v12 = sub_2460918D4();
  v13 = sub_246091FC4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136380675;
    *(v15 + 4) = sub_245F8D3C0(0x29286C65636E6163, 0xE800000000000000, aBlock);
    _os_log_impl(&dword_245F8A000, v12, v13, "ObjectCaptureSession.%{private}s: Called cancel()", v15, 0xCu);
    sub_245F8E6F4(v16);
    MEMORY[0x24C1989D0](v16, -1, -1);
    v17 = v15;
    v1 = v28;
    MEMORY[0x24C1989D0](v17, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v18 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v20 = v29;
  v19 = v30;
  (*(v6 + 16))(v8, v29, v30);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = swift_allocObject();
  (*(v6 + 32))(v22 + v21, v8, v19);
  *(v22 + ((v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_24607A470;
  *(v23 + 24) = v22;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E0DD8;
  v24 = _Block_copy(aBlock);
  v25 = v1;

  dispatch_sync(v18, v24);
  _Block_release(v24);
  (*(v6 + 8))(v20, v19);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246040748(uint64_t a1, void *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2460444F4())
  {
    goto LABEL_4;
  }

  v8 = *((*MEMORY[0x277D85000] & *a2) + 0x410);
  v8(&v22);
  if (v22 == 13)
  {
    sub_246077B30(0xD);
    sub_246077B30(0xD);
LABEL_4:
    v22 = 4;
    sub_246057DD0(&v22);
    return sub_246040A34(a1, 0x29286C65636E6163, 0xE800000000000000, "ObjectCaptureSession.%{private}s: cancel() takes time = %{public}s ms");
  }

  sub_246077B30(v22);
  sub_246077B30(0xD);
  v9 = sub_245FA3174();
  (*(v5 + 16))(v7, v9, v4);
  v10 = a2;
  v11 = sub_2460918D4();
  v12 = sub_246091FB4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v13 = 136380931;
    *(v13 + 4) = sub_245F8D3C0(0x29286C65636E6163, 0xE800000000000000, &v22);
    *(v13 + 12) = 2082;
    HIDWORD(v19) = v12;
    v8(&v21);
    v14 = sub_246091C54();
    v16 = sub_245F8D3C0(v14, v15, &v22);

    *(v13 + 14) = v16;
    _os_log_impl(&dword_245F8A000, v11, BYTE4(v19), "ObjectCaptureSession.%{private}s: Invalid state: %{public}s", v13, 0x16u);
    v17 = v20;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v17, -1, -1);
    MEMORY[0x24C1989D0](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return sub_246040A34(a1, 0x29286C65636E6163, 0xE800000000000000, "ObjectCaptureSession.%{private}s: cancel() takes time = %{public}s ms");
}

uint64_t sub_246040A34(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4, ...)
{
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2460917D4();
  v8 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_246096460;
  sub_2460917B4();
  v12 = MEMORY[0x277D83A80];
  *(v11 + 56) = MEMORY[0x277D839F8];
  *(v11 + 64) = v12;
  *(v11 + 32) = v13 * 1000.0;
  v14 = sub_246091C24();
  v16 = v15;
  v17 = sub_245FA3174();
  (*(v5 + 16))(v7, v17, v4);

  v18 = sub_2460918D4();
  v19 = sub_246091FA4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v4;
    v22 = v21;
    v30 = v21;
    *v20 = 136380931;
    *(v20 + 4) = sub_245F8D3C0(v26, v27, &v30);
    *(v20 + 12) = 2082;
    v23 = sub_245F8D3C0(v14, v16, &v30);

    *(v20 + 14) = v23;
    _os_log_impl(&dword_245F8A000, v18, v19, v28, v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v22, -1, -1);
    MEMORY[0x24C1989D0](v20, -1, -1);

    (*(v5 + 8))(v7, v25);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return (*(v8 + 8))(v10, v29);
}

uint64_t sub_246040D68()
{
  v1 = v0;
  v2 = sub_2460919F4();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_246091A64();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2460917D4();
  v10 = *(v32 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v32);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v39 = &v31 - v14;
  sub_2460917A4();
  v15 = sub_245FA3174();
  (*(v7 + 16))(v9, v15, v6);
  v16 = sub_2460918D4();
  v17 = sub_246091FC4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v1;
    v20 = v19;
    aBlock[0] = v19;
    *v18 = 136380675;
    *(v18 + 4) = sub_245F8D3C0(0xD000000000000010, 0x80000002460A2640, aBlock);
    _os_log_impl(&dword_245F8A000, v16, v17, "ObjectCaptureSession.%{private}s: Called takeManualShot()", v18, 0xCu);
    sub_245F8E6F4(v20);
    v21 = v20;
    v1 = v31;
    MEMORY[0x24C1989D0](v21, -1, -1);
    MEMORY[0x24C1989D0](v18, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v31 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v22 = v32;
  (*(v10 + 16))(v12, v39, v32);
  v23 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v24 = swift_allocObject();
  (*(v10 + 32))(v24 + v23, v12, v22);
  *(v24 + ((v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  aBlock[4] = sub_24607A524;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E0E28;
  v25 = _Block_copy(aBlock);
  v26 = v1;
  v27 = v33;
  sub_246091A14();
  v40 = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
  v28 = v36;
  v29 = v38;
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v27, v28, v25);
  _Block_release(v25);
  (*(v37 + 8))(v28, v29);
  (*(v34 + 8))(v27, v35);
  (*(v10 + 8))(v39, v22);

  return 1;
}

uint64_t sub_2460412E8(uint64_t a1, void *a2)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v57 - v8;
  MEMORY[0x28223BE20](v9);
  v60 = &v57 - v10;
  MEMORY[0x28223BE20](v11);
  v59 = &v57 - v12;
  MEMORY[0x28223BE20](v13);
  v58 = &v57 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - v16;
  v18 = sub_245FA3174();
  v19 = *(v4 + 16);
  v63 = v18;
  v19(v17);
  v20 = sub_2460918D4();
  v21 = sub_246091FA4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v62 = v4;
    v57 = v3;
    v23 = v22;
    v24 = v19;
    v25 = v6;
    v26 = swift_slowAlloc();
    v64 = v26;
    *v23 = 136380675;
    *(v23 + 4) = sub_245F8D3C0(0xD000000000000010, 0x80000002460A2640, &v64);
    _os_log_impl(&dword_245F8A000, v20, v21, "ObjectCaptureSession.%{private}s: Enter scheduled takeManualShot() block.", v23, 0xCu);
    sub_245F8E6F4(v26);
    v27 = v26;
    v6 = v25;
    v19 = v24;
    MEMORY[0x24C1989D0](v27, -1, -1);
    v3 = v57;
    v4 = v62;
    MEMORY[0x24C1989D0](v23, -1, -1);
  }

  v28 = *(v4 + 8);
  v29 = v28(v17, v3);
  (*((*MEMORY[0x277D85000] & *a2) + 0x410))(&v64, v29);
  if (v64 == 15)
  {
    sub_246077B30(0xF);
    sub_246077B30(0xF);
    if ((sub_246044638() & 1) == 0)
    {
      v35 = v61;
      (v19)(v61, v63, v3);
      v47 = sub_2460918D4();
      v48 = sub_246091FB4();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v64 = v50;
        *v49 = 136380675;
        *(v49 + 4) = sub_245F8D3C0(0xD000000000000010, 0x80000002460A2640, &v64);
        _os_log_impl(&dword_245F8A000, v47, v48, "ObjectCaptureSession.%{private}s: Manual shot is not allowed. Could be either not in scanning mode, or max number of images reached on device and no over capture enabled, or no mesh anchor has been received in area mode!", v49, 0xCu);
        sub_245F8E6F4(v50);
        MEMORY[0x24C1989D0](v50, -1, -1);
        MEMORY[0x24C1989D0](v49, -1, -1);
      }

      goto LABEL_22;
    }

    v62 = v4;
    v30 = *(a2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager);
    if (v30)
    {
      v31 = swift_allocObject();
      *(v31 + 16) = a2;

      v32 = a2;
      v33 = sub_245FCCC80();
      v34 = (*(*v30 + 488))(v33 & 1, sub_246082E24, v31);

      if (v34)
      {
        v35 = v58;
        (v19)(v58, v63, v3);
        v36 = sub_2460918D4();
        v37 = sub_246091FC4();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v64 = v39;
          *v38 = 136380675;
          *(v38 + 4) = sub_245F8D3C0(0xD000000000000010, 0x80000002460A2640, &v64);
          v40 = "ObjectCaptureSession.%{private}s: Manual capture succeeded.";
LABEL_20:
          _os_log_impl(&dword_245F8A000, v36, v37, v40, v38, 0xCu);
          sub_245F8E6F4(v39);
          MEMORY[0x24C1989D0](v39, -1, -1);
          MEMORY[0x24C1989D0](v38, -1, -1);
        }
      }

      else
      {
        v35 = v59;
        (v19)(v59, v63, v3);
        v36 = sub_2460918D4();
        v37 = sub_246091FB4();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v64 = v39;
          *v38 = 136380675;
          *(v38 + 4) = sub_245F8D3C0(0xD000000000000010, 0x80000002460A2640, &v64);
          v40 = "ObjectCaptureSession.%{private}s: Manual capture failed!";
          goto LABEL_20;
        }
      }

LABEL_22:
      v46 = v35;
      goto LABEL_23;
    }

    v51 = v60;
    (v19)(v60, v63, v3);
    v52 = sub_2460918D4();
    v53 = sub_246091FB4();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v64 = v55;
      *v54 = 136380675;
      *(v54 + 4) = sub_245F8D3C0(0xD000000000000010, 0x80000002460A2640, &v64);
      _os_log_impl(&dword_245F8A000, v52, v53, "ObjectCaptureSession.%{private}s: Failed to take manual shot, capture manager has not been initialized!", v54, 0xCu);
      sub_245F8E6F4(v55);
      MEMORY[0x24C1989D0](v55, -1, -1);
      MEMORY[0x24C1989D0](v54, -1, -1);
    }

    v46 = v51;
  }

  else
  {
    sub_246077B30(v64);
    sub_246077B30(0xF);
    (v19)(v6, v63, v3);
    v41 = sub_2460918D4();
    v42 = sub_246091FB4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v6;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v64 = v45;
      *v44 = 136380675;
      *(v44 + 4) = sub_245F8D3C0(0xD000000000000010, 0x80000002460A2640, &v64);
      _os_log_impl(&dword_245F8A000, v41, v42, "ObjectCaptureSession.%{private}s: Received manual shot request outside of capturing mode, ignoring the request!", v44, 0xCu);
      sub_245F8E6F4(v45);
      MEMORY[0x24C1989D0](v45, -1, -1);
      MEMORY[0x24C1989D0](v44, -1, -1);

      v46 = v43;
    }

    else
    {

      v46 = v6;
    }
  }

LABEL_23:
  v28(v46, v3);
  return sub_246041B40();
}

uint64_t sub_246041B40()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2460917D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_246096460;
  sub_2460917B4();
  v9 = MEMORY[0x277D83A80];
  *(v8 + 56) = MEMORY[0x277D839F8];
  *(v8 + 64) = v9;
  *(v8 + 32) = v10 * 1000.0;
  v11 = sub_246091C24();
  v13 = v12;
  v14 = sub_245FA3174();
  (*(v1 + 16))(v3, v14, v0);

  v15 = sub_2460918D4();
  v16 = sub_246091FA4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v0;
    v18 = v17;
    v19 = swift_slowAlloc();
    v24 = v4;
    v20 = v19;
    v26 = v19;
    *v18 = 136446210;
    v21 = sub_245F8D3C0(v11, v13, &v26);

    *(v18 + 4) = v21;
    _os_log_impl(&dword_245F8A000, v15, v16, "=== ObjectCaptureSession takeManualShot() takes time = %{public}s ms", v18, 0xCu);
    sub_245F8E6F4(v20);
    MEMORY[0x24C1989D0](v20, -1, -1);
    MEMORY[0x24C1989D0](v18, -1, -1);

    (*(v1 + 8))(v3, v25);
    return (*(v5 + 8))(v7, v24);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_246041E64()
{
  v1 = v0;
  v2 = sub_2460919F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_246091A64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2460918F4();
  v10 = *(v29 - 8);
  v11 = MEMORY[0x28223BE20](v29);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x4A8))(v11);
  if (result)
  {
    __break(1u);
  }

  else
  {
    v25 = v9;
    v26 = v7;
    v27 = v5;
    v28 = v6;
    v15 = sub_245FA3174();
    (*(v10 + 16))(v13, v15, v29);
    v16 = sub_2460918D4();
    v17 = sub_246091FC4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v18 = 136380931;
      *(v18 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A2660, aBlock);
      *(v18 + 12) = 2081;
      *(v18 + 14) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A2660, aBlock);
      _os_log_impl(&dword_245F8A000, v16, v17, "ObjectCaptureSession.%{private}s: Called %{private}s.", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v19, -1, -1);
      MEMORY[0x24C1989D0](v18, -1, -1);
    }

    (*(v10 + 8))(v13, v29);
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    aBlock[4] = sub_24607A5DC;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F913A4;
    aBlock[3] = &unk_2858E0E78;
    v21 = _Block_copy(aBlock);
    v22 = v1;
    v23 = v25;
    sub_246091A14();
    v30 = MEMORY[0x277D84F90];
    sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
    v24 = v27;
    sub_2460921A4();
    MEMORY[0x24C1969D0](0, v23, v24, v21);
    _Block_release(v21);
    (*(v3 + 8))(v24, v2);
    (*(v26 + 8))(v23, v28);
  }

  return result;
}

uint64_t sub_246042354(char *a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = &v44 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v11 = sub_245FA3174();
  v12 = *(v3 + 16);
  v12(v10, v11, v2);
  v13 = sub_2460918D4();
  v14 = sub_246091FA4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v45 = v2;
    v47 = v3;
    v16 = v15;
    v17 = v5;
    v18 = swift_slowAlloc();
    v49 = v18;
    *v16 = 136380675;
    *(v16 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A2660, &v49);
    _os_log_impl(&dword_245F8A000, v13, v14, "ObjectCaptureSession.%{private}s: Enter scheduled resetCapturePoseGraph() block.", v16, 0xCu);
    sub_245F8E6F4(v18);
    v19 = v18;
    v5 = v17;
    MEMORY[0x24C1989D0](v19, -1, -1);
    v20 = v16;
    v3 = v47;
    v2 = v45;
    MEMORY[0x24C1989D0](v20, -1, -1);
  }

  v21 = *(v3 + 8);
  v21(v10, v2);
  if (sub_246044794())
  {
    v22 = *&a1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager];
    if (v22)
    {
      v23 = *(*v22 + 520);

      v23(v24);
    }

    v5 = v46;
    v12(v46, v11, v2);
    v39 = sub_2460918D4();
    v40 = sub_246091FB4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = v5;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v49 = v43;
      *v42 = 136380675;
      *(v42 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A2660, &v49);
      _os_log_impl(&dword_245F8A000, v39, v40, "ObjectCaptureSession.%{private}s: Failed to reset pose graph, capture manager has not been initialized", v42, 0xCu);
      sub_245F8E6F4(v43);
      MEMORY[0x24C1989D0](v43, -1, -1);
      MEMORY[0x24C1989D0](v42, -1, -1);

      v38 = v41;
      return (v21)(v38, v2);
    }

LABEL_12:
    v38 = v5;
    return (v21)(v38, v2);
  }

  v12(v5, v11, v2);
  v26 = a1;
  v27 = sub_2460918D4();
  v28 = sub_246091FB4();

  if (!os_log_type_enabled(v27, v28))
  {

    goto LABEL_12;
  }

  v29 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v49 = v46;
  *v29 = 136381187;
  *(v29 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A2660, &v49);
  *(v29 + 12) = 2082;
  (*((*MEMORY[0x277D85000] & *v26) + 0x410))(&v48);
  v30 = sub_246091C54();
  v45 = v5;
  v32 = sub_245F8D3C0(v30, v31, &v49);
  v47 = v3;
  v33 = v32;

  *(v29 + 14) = v33;
  *(v29 + 22) = 2082;
  v48 = *&v26[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateOnPause];
  sub_2460818E4(v48);
  v34 = sub_246091C54();
  v36 = sub_245F8D3C0(v34, v35, &v49);

  *(v29 + 24) = v36;
  _os_log_impl(&dword_245F8A000, v27, v28, "ObjectCaptureSession.%{private}s: Capture pose graph reset disallowed in state %{public}s (stateOnPause = %{public}s", v29, 0x20u);
  v37 = v46;
  swift_arrayDestroy();
  MEMORY[0x24C1989D0](v37, -1, -1);
  MEMORY[0x24C1989D0](v29, -1, -1);

  v38 = v45;
  return (v21)(v38, v2);
}

uint64_t sub_2460428E8(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v20 = a3;
  v21 = a4;
  v18 = a1;
  v19 = a2;
  v5 = sub_2460919F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_246091A64();
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *&v4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v12 = swift_allocObject();
  v13 = v19;
  *(v12 + 16) = v18;
  *(v12 + 32) = v13;
  v14 = v21;
  *(v12 + 48) = v20;
  *(v12 + 64) = v14;
  *(v12 + 80) = v4;
  aBlock[4] = sub_24607A61C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E0EC8;
  v15 = _Block_copy(aBlock);
  v16 = v4;
  sub_246091A14();
  v24 = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v11, v8, v15);
  _Block_release(v15);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v23);
}

void sub_246042BD0(void *a1, __n128 a2, __n128 a3, __n128 a4, int8x16_t a5)
{
  v27 = a4;
  v28 = a5;
  v25 = a2;
  v26 = a3;
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_246021E38(v10, v25, v26, v27, v28);
  if (v11)
  {
    OCBoundingBox.init(transform:)(&v29, v11);
    v12 = v29.transform.columns[1];
    v13 = v29.transform.columns[2];
    v14 = v29.transform.columns[3];
    v30 = 0;
    v15 = (a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformBoundingBox);
    *v15 = v29.transform.columns[0];
    v15[1] = v12;
    v15[2] = v13;
    v15[3] = v14;
    v15[4].i8[0] = 0;
    v16 = *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_meshManager);
    if (v16)
    {
      v17 = *((*MEMORY[0x277D85000] & *a1) + 0x4A8);

      if (v17(v18))
      {
        v19 = *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureOptions);
        if (v19 == 2)
        {
LABEL_13:
          __break(1u);
          return;
        }

        if ((v19 & 0x100) != 0)
        {
          (*(*v16 + 392))(v25, v26, v27, v28);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
    v20 = sub_245FA3174();
    (*(v7 + 16))(v9, v20, v6);
    v21 = sub_2460918D4();
    v22 = sub_246091FB4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29.transform.columns[0].i64[0] = v24;
      *v23 = 136380675;
      *(v23 + 4) = sub_245F8D3C0(0xD000000000000026, 0x80000002460A4870, &v29);
      _os_log_impl(&dword_245F8A000, v21, v22, "ObjectCaptureSession.%{private}s: Invalid bounding box in area mode!", v23, 0xCu);
      sub_245F8E6F4(v24);
      MEMORY[0x24C1989D0](v24, -1, -1);
      MEMORY[0x24C1989D0](v23, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_246042E9C()
{
  if (*(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugAdjustedCaptureCoolDown + 8) != 1)
  {
    return *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugAdjustedCaptureCoolDown);
  }

  v1 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager);
  if (!v1)
  {
    return 0;
  }

  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x4A8);

  v4 = v2(v3);
  v5 = (*(*v1 + 560))(v4 & 1);

  return *&v5;
}

uint64_t sub_246042FA0()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v68 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v64 = &v63 - v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v63 - v6;
  v8 = sub_2460917D4();
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_246096460;
  v65 = v10;
  sub_2460917B4();
  v12 = MEMORY[0x277D83A80];
  *(v11 + 56) = MEMORY[0x277D839F8];
  *(v11 + 64) = v12;
  *(v11 + 32) = v13 * 1000.0;
  v14 = sub_246091C24();
  v16 = v15;
  v17 = sub_245FA3174();
  v18 = *(v1 + 16);
  v71 = v17;
  v72 = (v1 + 16);
  v70 = v18;
  (v18)(v7);

  v19 = sub_2460918D4();
  v20 = sub_246091FA4();

  v21 = os_log_type_enabled(v19, v20);
  v69 = v1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v75 = v23;
    *v22 = 136380931;
    *(v22 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, &v75);
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_245F8D3C0(v14, v16, &v75);
    _os_log_impl(&dword_245F8A000, v19, v20, "ObjectCaptureSession.%{private}s: takes time = %{public}s ms", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v23, -1, -1);
    MEMORY[0x24C1989D0](v22, -1, -1);

    v24 = *(v69 + 8);
  }

  else
  {

    v24 = *(v1 + 8);
  }

  v24(v7, v0);
  v25 = sub_246091BD4();
  v26 = objc_opt_self();
  v27 = [v26 bundleWithIdentifier_];

  if (v27)
  {
    v28 = [v27 infoDictionary];

    if (v28)
    {
      v29 = sub_246091B64();

      if (*(v29 + 16) && (v30 = sub_245F8D968(0x656C646E75424643, 0xEF6E6F6973726556), (v31 & 1) != 0))
      {
        sub_245F8E5C8(*(v29 + 56) + 32 * v30, &v75);

        if (swift_dynamicCast())
        {
          v33 = v73;
          v32 = v74;
          goto LABEL_12;
        }
      }

      else
      {
      }
    }
  }

  v32 = 0xE500000000000000;
  v33 = 0x302E302E30;
LABEL_12:
  result = OCModulesGitHash();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v35 = sub_246091CE4();
  v37 = v36;
  v75 = v33;
  v76 = v32;

  MEMORY[0x24C196640](46, 0xE100000000000000);

  MEMORY[0x24C196640](v35, v37);

  v38 = v75;
  v39 = v76;
  v40 = v64;
  v70(v64, v71, v0);

  v41 = sub_2460918D4();
  v42 = sub_246091FA4();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v75 = v44;
    *v43 = 136380931;
    *(v43 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, &v75);
    *(v43 + 12) = 2082;
    v45 = sub_245F8D3C0(v38, v39, &v75);

    *(v43 + 14) = v45;
    _os_log_impl(&dword_245F8A000, v41, v42, "ObjectCaptureSession.%{private}s: CoreOCModules version: %{public}s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v44, -1, -1);
    MEMORY[0x24C1989D0](v43, -1, -1);
  }

  else
  {
  }

  v24(v40, v0);
  type metadata accessor for ObjectCaptureSession(0);
  v46 = [v26 bundleForClass_];
  v47 = [v46 infoDictionary];

  v48 = v68;
  if (!v47)
  {
    goto LABEL_22;
  }

  v49 = sub_246091B64();

  if (!*(v49 + 16) || (v50 = sub_245F8D968(0x656C646E75424643, 0xEF6E6F6973726556), (v51 & 1) == 0))
  {

    goto LABEL_22;
  }

  sub_245F8E5C8(*(v49 + 56) + 32 * v50, &v75);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v53 = 0xE500000000000000;
    v52 = 0x302E302E30;
    goto LABEL_23;
  }

  v52 = v73;
  v53 = v74;
LABEL_23:
  v54 = OCGitHash()();
  v75 = v52;
  v76 = v53;

  MEMORY[0x24C196640](46, 0xE100000000000000);

  MEMORY[0x24C196640](v54._countAndFlagsBits, v54._object);

  v55 = v75;
  v56 = v76;
  v70(v48, v71, v0);

  v57 = sub_2460918D4();
  v58 = sub_246091FA4();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v72 = v24;
    v61 = v60;
    v75 = v60;
    *v59 = 136380931;
    *(v59 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, &v75);
    *(v59 + 12) = 2082;
    v62 = sub_245F8D3C0(v55, v56, &v75);

    *(v59 + 14) = v62;
    _os_log_impl(&dword_245F8A000, v57, v58, "ObjectCaptureSession.%{private}s: CoreOC version:  %{public}s", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v61, -1, -1);
    MEMORY[0x24C1989D0](v59, -1, -1);

    v72(v48, v0);
  }

  else
  {

    v24(v48, v0);
  }

  sub_245F92E28();
  return (*(v66 + 8))(v65, v67);
}

uint64_t sub_246043938()
{
  v0 = sub_2460919F4();
  MEMORY[0x28223BE20](v0);
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_246082354;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E2B98;
  _Block_copy(aBlock);
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
  sub_2460921A4();
  sub_246091AE4();
  swift_allocObject();
  v2 = sub_246091AC4();

  return v2;
}

id sub_246043C14(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t))
{
  v12.receiver = a1;
  v12.super_class = a7(a1, a6);
  return objc_msgSendSuper2(&v12, sel_initWithTransform_, a2, a3, a4, a5);
}

id sub_246043C80(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void *, uint64_t))
{
  v14.receiver = a1;
  v14.super_class = a8(a1, a6);
  return objc_msgSendSuper2(&v14, sel_initWithName_transform_, a7, a2, a3, a4, a5);
}

id sub_246043CF4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6.receiver = a1;
  v6.super_class = a4(a1, a2);
  return objc_msgSendSuper2(&v6, sel_initWithAnchor_, a3);
}

id sub_246043D58(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t))
{
  v8.receiver = a1;
  v8.super_class = a4(a1, a2);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_246043DEC(void *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  v20 = a4;
  v21 = a5;
  v18 = a2;
  v19 = a3;
  v10 = sub_246091834();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_246091814();
  v14 = sub_246091804();
  v15 = a8();
  v22.receiver = a1;
  v22.super_class = v15;
  v16 = objc_msgSendSuper2(&v22, sel_initWithIdentifier_transform_, v14, v18.n128_f64[0], v19.n128_f64[0], v20.n128_f64[0], v21.n128_f64[0]);

  (*(v11 + 8))(v13, v10);
  return v16;
}

id sub_246043F28(void *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, uint64_t a6, uint64_t a7, void *a8, uint64_t (*a9)(void))
{
  v23 = a4;
  v24 = a5;
  v21 = a2;
  v22 = a3;
  v12 = sub_246091834();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_246091814();
  v16 = a8;
  v17 = sub_246091804();
  v18 = a9();
  v25.receiver = a1;
  v25.super_class = v18;
  v19 = objc_msgSendSuper2(&v25, sel_initWithIdentifier_transform_name_, v17, v16, v21.n128_f64[0], v22.n128_f64[0], v23.n128_f64[0], v24.n128_f64[0]);

  (*(v13 + 8))(v15, v12);
  return v19;
}

id sub_246044068(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t), __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  v11 = v9;
  v28 = a8;
  v29 = a9;
  v26 = a6;
  v27 = a7;
  v15 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - v16;
  sub_245F8E7A4(a1, &v26 - v16, &qword_27EE3A350, &unk_2460969A0);
  v18 = sub_246091834();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v17, 1, v18);
  v21 = 0;
  if (v20 != 1)
  {
    v21 = sub_246091804();
    v20 = (*(v19 + 8))(v17, v18);
  }

  if (a3)
  {
    v22 = sub_246091BD4();
  }

  else
  {
    v22 = 0;
  }

  v23 = a5(v20);
  v30.receiver = v11;
  v30.super_class = v23;
  v24 = objc_msgSendSuper2(&v30, sel_initWithIdentifier_transform_name_hiddenFromPublicDelegate_, v21, v22, a4 & 1, v26.n128_f64[0], v27.n128_f64[0], v28.n128_f64[0], v29.n128_f64[0]);

  sub_245F8E744(a1, &qword_27EE3A350, &unk_2460969A0);
  return v24;
}

id sub_24604424C(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t (*a10)(uint64_t))
{
  v25 = a3;
  v26 = a4;
  v23 = a1;
  v24 = a2;
  v14 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - v15;
  if (a7)
  {
    sub_246091814();
    v17 = sub_246091834();
    (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  }

  else
  {
    v18 = sub_246091834();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  }

  if (a8)
  {
    v19 = sub_246091C04();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  return sub_246044068(v16, v19, v21, a9, a10, v23, v24, v25, v26);
}

id sub_2460443C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2460444BC()
{
  type metadata accessor for PGManager(0);
  result = sub_245FD4A28();
  byte_27EE3DC18 = result & 1;
  return result;
}

BOOL sub_2460444F4()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x410);
  v1(&v6);
  if (v6 == 11)
  {
    sub_246077B30(0xB);
    v2 = 11;
LABEL_7:
    sub_246077B30(v2);
    return 1;
  }

  sub_246077B30(v6);
  sub_246077B30(0xB);
  v1(&v6);
  if (v6 == 12)
  {
    sub_246077B30(0xC);
    v2 = 12;
    goto LABEL_7;
  }

  sub_246077B30(v6);
  sub_246077B30(0xC);
  v1(&v6);
  if (v6 == 14)
  {
    sub_246077B30(0xE);
    v2 = 14;
    goto LABEL_7;
  }

  sub_246077B30(v6);
  sub_246077B30(0xE);
  v1(&v6);
  v4 = v6;
  v5 = v6 == 15;
  if (v6 != 15)
  {
    sub_2460818E4(v6);
  }

  sub_246077B30(v4);
  sub_246077B30(0xF);
  sub_246077B30(v4);
  return v5;
}

uint64_t sub_246044638()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x410))(v6);
  if (v6[0] != 15)
  {
    sub_246077B30(v6[0]);
    sub_246077B30(0xF);
LABEL_8:
    v4 = 0;
    return v4 & 1;
  }

  sub_246077B30(0xF);
  sub_246077B30(0xF);
  v2 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_uuidToShotAnchorsMap;
  swift_beginAccess();
  v3 = *(*(v0 + v2) + 16);
  if (qword_27EE3DC00 != -1)
  {
    swift_once();
  }

  if (v3 >= qword_27EE3DC08 && *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_configuration) != 1)
  {
    goto LABEL_8;
  }

  v4 = (*((*v1 & *v0) + 0x4A8))() ^ *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformCanAutoCaptureStart) ^ 1;
  return v4 & 1;
}

uint64_t sub_246044794()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x410);
  v1(&v5);
  if (v5 == 15)
  {
    goto LABEL_2;
  }

  sub_246077B30(v5);
  sub_246077B30(0xF);
  v1(&v5);
  if (v5 == 13)
  {
    sub_246077B30(0xD);
    sub_246077B30(0xD);
    v3 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateOnPause);
    if (v3 == 15)
    {
      sub_246077B30(0xF);
LABEL_2:
      sub_246077B30(0xF);
      sub_246077B30(0xF);
      return 1;
    }

    sub_2460818E4(*(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_stateOnPause));
    sub_2460818E4(v3);
    sub_246077B30(v3);
    sub_246077B30(0xF);
    v4 = v3;
  }

  else
  {
    sub_246077B30(v5);
    v4 = 13;
  }

  sub_246077B30(v4);
  return 0;
}

uint64_t sub_2460448B0()
{
  v1 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  if (qword_27EE3DC10 != -1)
  {
    swift_once();
  }

  if (byte_27EE3DC18 != 1)
  {
    goto LABEL_7;
  }

  v4 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_mobileSfMUserDefaultValue);
  if (v4 == 2)
  {
    if (*(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMEnabled) != 1 || (v5 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_snapshotURL, swift_beginAccess(), sub_245F8E7A4(v0 + v5, v3, &qword_27EE3A498, &unk_246097EB8), v6 = sub_246091704(), LODWORD(v5) = (*(*(v6 - 8) + 48))(v3, 1, v6), sub_245F8E744(v3, &qword_27EE3A498, &unk_246097EB8), v5 == 1))
    {
LABEL_7:
      LOBYTE(v4) = 0;
      return v4 & 1;
    }

    if (*sub_2460208E4())
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMiPhoneOverride);
    }
  }

  return v4 & 1;
}

void sub_246044A5C(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition;
  v3 = *(result + 16);
  *v2 = *result;
  *(v2 + 1) = v3;
  *(v2 + 16) = *(result + 32);
  if ((*(result + 33) & 1) == 0)
  {
    v4 = *((*MEMORY[0x277D85000] & *v1) + 0x410);
    v4(&v6);
    if (v6 == 12)
    {
      sub_246077B30(0xC);
      v5 = 12;
LABEL_6:
      sub_246077B30(v5);
      *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldRestartVoxelIntegration) = 1;
      return;
    }

    sub_246077B30(v6);
    sub_246077B30(0xC);
    v4(&v6);
    if (v6 == 14)
    {
      sub_246077B30(0xE);
      v5 = 14;
      goto LABEL_6;
    }

    sub_246077B30(v6);
    sub_246077B30(0xE);
  }
}

void sub_246044B58(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox;
  v3 = *(result + 16);
  *v2 = *result;
  *(v2 + 1) = v3;
  v4 = *(result + 48);
  *(v2 + 2) = *(result + 32);
  *(v2 + 3) = v4;
  v5 = *(result + 64);
  v2[64] = v5;
  if ((v5 & 1) == 0)
  {
    v8 = *(v2 + 1);
    v9 = *v2;
    v6 = *(v2 + 3);
    v7 = *(v2 + 2);
    (*((*MEMORY[0x277D85000] & *v1) + 0x410))(v10);
    if (*&v10[0] == 15)
    {
      sub_246077B30(0xF);
      sub_246077B30(0xF);
      v10[0] = v9;
      v10[1] = v8;
      v10[2] = v7;
      v10[3] = v6;
      sub_24608585C(*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID));
    }

    else
    {
      sub_246077B30(*&v10[0]);
      sub_246077B30(0xF);
    }
  }
}

void sub_246044C40()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBoxAnchor);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession);
    v7 = v5;
    [v6 addAnchor_];
    v8 = sub_245FA3174();
    (*(v2 + 16))(v4, v8, v1);
    v9 = v7;
    v10 = sub_2460918D4();
    v11 = sub_246091FC4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v12 = 136380931;
      *(v12 + 4) = sub_245F8D3C0(0xD000000000000011, 0x80000002460A3140, &v24);
      *(v12 + 12) = 2082;
      [v9 transform];
      v17 = sub_246020FBC(v13, v14, v15, v16);
      v18 = MEMORY[0x24C196760](v17);
      v20 = v19;

      v21 = sub_245F8D3C0(v18, v20, &v24);

      *(v12 + 14) = v21;
      _os_log_impl(&dword_245F8A000, v10, v11, "ObjectCaptureSession.%{private}s: Added bounding box anchor: %{public}s", v12, 0x16u);
      v22 = v23;
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v22, -1, -1);
      MEMORY[0x24C1989D0](v12, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_246044F20(const void *a1)
{
  v3 = sub_2460919F4();
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_246091A64();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v18, a1, 0x191uLL);
  v13[1] = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  memcpy((v9 + 32), a1, 0x191uLL);
  v17[4] = sub_246081FB0;
  v17[5] = v9;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_245F913A4;
  v17[3] = &unk_2858E2A58;
  v10 = _Block_copy(v17);
  v11 = v1;
  sub_245FCFDFC(v18, v16);
  sub_246091A14();
  v16[0] = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v8, v5, v10);
  _Block_release(v10);
  (*(v15 + 8))(v5, v3);
  (*(v6 + 8))(v8, v14);
}

uint64_t sub_24604522C(const void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2460919F4();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_246091A64();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  v51 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_246091834();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v49 = v12;
  v50 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v16 = sub_2460918F4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v59, a1, 0x191uLL);
  v20 = sub_245FA3174();
  v48 = v17;
  (*(v17 + 16))(v19, v20, v16);
  v47 = *(v11 + 16);
  v47(v15, a2, v10);
  v21 = sub_2460918D4();
  v46 = sub_246091FA4();
  if (os_log_type_enabled(v21, v46))
  {
    v22 = swift_slowAlloc();
    v45 = a2;
    v23 = v22;
    v44 = swift_slowAlloc();
    v57[0] = v44;
    *v23 = 136380931;
    *(v23 + 4) = sub_245F8D3C0(0xD000000000000020, 0x80000002460A4440, v57);
    *(v23 + 12) = 2082;
    sub_246077C40(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v42 = v21;
    v24 = sub_2460923D4();
    v43 = v16;
    v25 = v3;
    v27 = v26;
    (*(v11 + 8))(v15, v10);
    v28 = sub_245F8D3C0(v24, v27, v57);
    v3 = v25;

    *(v23 + 14) = v28;
    v29 = v42;
    _os_log_impl(&dword_245F8A000, v42, v46, "ObjectCaptureSession.%{private}s: Pushed oc capture data (stillImage) with identifier = %{public}s", v23, 0x16u);
    v30 = v44;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v30, -1, -1);
    v31 = v23;
    a2 = v45;
    MEMORY[0x24C1989D0](v31, -1, -1);

    (*(v48 + 8))(v19, v43);
  }

  else
  {

    (*(v11 + 8))(v15, v10);
    (*(v48 + 8))(v19, v16);
  }

  v32 = v50;
  v47(v50, a2, v10);
  v33 = (*(v11 + 80) + 433) & ~*(v11 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v3;
  memcpy((v34 + 32), v59, 0x191uLL);
  (*(v11 + 32))(v34 + v33, v32, v10);
  v58[4] = sub_246081DF4;
  v58[5] = v34;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 1107296256;
  v58[2] = sub_245F913A4;
  v58[3] = &unk_2858E2A08;
  v35 = _Block_copy(v58);
  v36 = v3;
  sub_245FCFDFC(v59, v57);
  v37 = v51;
  sub_246091A14();
  v57[0] = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
  v38 = v54;
  v39 = v56;
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v37, v38, v35);
  _Block_release(v35);
  (*(v55 + 8))(v38, v39);
  (*(v52 + 8))(v37, v53);
}

void sub_2460458D8(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v4 = v1;
  v6 = v5;
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v236 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_2460917D4();
  v265 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  Width = &v236 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v308, v6, 0x191uLL);
  sub_24608FC40();
  v14 = OCSignPostsAriadneDbgCode();
  v262 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_traceDebugId;
  v15 = sub_24608FD3C();
  if ((*v15 & 0x8000000000000000) != 0)
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  if ((*(v4 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_frameIndex) & 0x8000000000000000) != 0)
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v263.i64[0] = v10;
  v266.n128_u64[0] = v7;
  v267 = v11;
  v260 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_frameIndex;
  v261 = v15;
  kdebug_trace();
  v268 = Width;
  sub_2460917A4();
  v16 = *(&v308[0] + 1);
  v3 = *v308;
  v17 = v308[1];
  sub_246077AC8(v309);
  *&v305[88] = v309[5];
  *&v305[104] = v309[6];
  *&v305[120] = v309[7];
  *&v305[136] = v309[8];
  *&v305[24] = v309[1];
  *&v305[40] = v309[2];
  *&v305[56] = v309[3];
  *&v305[72] = v309[4];
  *&v305[8] = v309[0];
  sub_246077AE8(v310);
  memcpy(v318, v310, 0x2B0uLL);
  memcpy(v313, &v308[7], sizeof(v313));
  memset(v317, 0, 72);
  memset(&v317[5], 0, 168);
  memset(&v317[16], 0, 168);
  memset(&v317[27], 0, 160);
  LODWORD(v317[37]) = -1082130432;
  *(&v317[37] + 8) = 0u;
  DWORD2(v317[38]) = 0;
  BYTE12(v317[38]) = 1;
  sub_24601E8F4(&v308[7], v316);
  sub_24601E8F4(&v308[7], v316);
  v18 = v17;
  v19 = v16;
  v20 = *(&v17 + 1);
  sub_24608BC2C(&v317[39]);
  *(&v317[42] + 1) = MEMORY[0x277D84F90];
  memcpy(v311, v317, sizeof(v311));
  nullsub_1();
  memcpy(v312, v318, sizeof(v312));
  sub_245F8E744(v312, &unk_27EE3A980, &unk_246099C10);
  *(&v314[25] + 8) = *&v305[96];
  *(&v314[26] + 8) = *&v305[112];
  *(&v314[27] + 8) = *&v305[128];
  *(&v314[21] + 8) = *&v305[32];
  *(&v314[22] + 8) = *&v305[48];
  *(&v314[23] + 8) = *&v305[64];
  *(&v314[24] + 8) = *&v305[80];
  *(&v314[19] + 8) = *v305;
  *(&v314[20] + 8) = *&v305[16];
  *(&v314[28] + 1) = *&v305[144];
  memcpy(&v314[36], v311, 0x2B0uLL);
  *v314 = v3;
  v264[0] = v19;
  *(&v314[0] + 1) = v19;
  v314[1] = v17;
  memcpy(&v314[2], v313, 0x118uLL);
  LODWORD(v314[29]) = 0;
  *(&v314[29] + 8) = 0u;
  *(&v314[30] + 8) = 0u;
  *(&v314[31] + 8) = 0u;
  *(&v314[32] + 8) = 0u;
  *(&v314[33] + 8) = 0u;
  *(&v314[34] + 8) = 0u;
  *(&v314[35] + 1) = 0;
  nullsub_1();
  v21 = (v4 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame);
  swift_beginAccess();
  memcpy(v315, v21, sizeof(v315));
  v2 = v21;
  memcpy(v21, v314, 0x4F0uLL);
  sub_245F8E744(v315, &qword_27EE3A9F0, &qword_246099CE0);
  v22 = v4;
  v23 = sub_2460443FC(v305);
  v25 = v24;
  memmove(v316, v24, 0x4F0uLL);
  if (sub_246081984(v316) == 1)
  {
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  v26 = (v25 + 576);
  memmove(v306, v26, 0x2B0uLL);
  if (sub_246081ACC(v306) != 1)
  {
    v27 = v26[3];
    v318[2] = v26[2];
    v318[3] = v27;
    *&v318[4] = *(v26 + 8);
    v28 = *v26;
    v318[1] = v26[1];
    v318[0] = v28;
    v29 = v308[5];
    v26[2] = v308[4];
    v26[3] = v29;
    *(v26 + 8) = *&v308[6];
    v30 = v308[3];
    *v26 = v308[2];
    v26[1] = v30;
    sub_245F8E7A4(&v308[2], v317, &qword_27EE3B1B0, &unk_246099D60);
    sub_245F8E744(v318, &qword_27EE3B1B0, &unk_246099D60);
  }

  (v23)(v305, 0);
  v4 = v267;
  v31 = sub_2460443FC(v318);
  v33 = v32;
  memmove(v305, v32, 0x4F0uLL);
  if (sub_246081984(v305) == 1)
  {
    goto LABEL_184;
  }

  memmove(v304, v33 + 72, 0x2B0uLL);
  if (sub_246081ACC(v304) != 1)
  {
    v34 = *(&v308[24] + 1);
    v35 = v33[147];
    v33[147] = *(&v308[24] + 1);
    v36 = v34;
  }

  (v31)(v318, 0);
  LOBYTE(v318[0]) = v308[14];
  LOBYTE(v317[0]) = 5;
  sub_246081AE4();
  if ((sub_246091BB4() & 1) == 0)
  {
    sub_24601E950(&v308[7]);
    v41 = sub_245FA3174();
    v42 = v263.i64[0];
    v43 = v266.n128_u64[0];
    (*(v8 + 16))(v263.i64[0], v41, v266.n128_u64[0]);
    v44 = sub_2460918D4();
    v45 = sub_246091FA4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = v2;
      v48 = swift_slowAlloc();
      *&v318[0] = v48;
      *v46 = 136380675;
      *(v46 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A4270, v318);
      _os_log_impl(&dword_245F8A000, v44, v45, "ObjectCaptureSession.%{private}s: Camera tracking is not normal!", v46, 0xCu);
      sub_245F8E6F4(v48);
      v49 = v48;
      v2 = v47;
      MEMORY[0x24C1989D0](v49, -1, -1);
      MEMORY[0x24C1989D0](v46, -1, -1);

      (*(v8 + 8))(v42, v266.n128_u64[0]);
    }

    else
    {

      (*(v8 + 8))(v42, v43);
    }

    Width = v268;
    sub_24606B888();
    memcpy(v317, v2, sizeof(v317));
    memcpy(v318, v2, sizeof(v318));
    if (sub_246081984(v318) != 1)
    {
      memcpy(v301, v318, sizeof(v301));
      memcpy(v302, v317, sizeof(v302));
      sub_246081B38(v302, v303);
      sub_246091924();

      memcpy(v303, v301, sizeof(v303));
      sub_246081B70(v303);
      v56 = v22;
      goto LABEL_172;
    }

    goto LABEL_185;
  }

  v10 = v22;
  v8 = MEMORY[0x277D85000];
  v37 = (*MEMORY[0x277D85000] & *v22) + 1040;
  v263.i64[0] = *((*MEMORY[0x277D85000] & *v22) + 0x410);
  v266.n128_u64[0] = v37;
  (v263.i64[0])(v318);
  if (*&v318[0] == 11)
  {
    sub_246077B30(0xB);
    sub_246077B30(0xB);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_246091984();

    v38 = *&v318[0];
    swift_getKeyPath();
    swift_getKeyPath();
    *&v318[0] = 12;
    v39 = v22;
    sub_246091994();
    *&v318[0] = v38;
    sub_246036D70(v318);
    v40 = v38;
  }

  else
  {
    sub_246077B30(*&v318[0]);
    v40 = 11;
  }

  sub_246077B30(v40);
  v11 = v2;
  v258.n128_u64[0] = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager;
  if (*(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager) || ((*((*v8 & *v10) + 0x4A8))() & 1) == 0)
  {
    goto LABEL_25;
  }

  (v263.i64[0])(v318);
  if (*&v318[0] != 15)
  {
    sub_246077B30(*&v318[0]);
    sub_246077B30(0xF);
    goto LABEL_25;
  }

  sub_246077B30(0xF);
  sub_246077B30(0xF);
  if (*(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp + 8))
  {
    __break(1u);
    goto LABEL_183;
  }

  v50 = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl);
  if (!v50)
  {
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
    return;
  }

  v2 = v4;
  v51 = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp);
  type metadata accessor for CaptureManager();
  LOBYTE(v318[0]) = 1;
  memset(v307, 0, 64);
  v307[64] = 1;
  v52 = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager);
  v53 = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue);

  v54 = v53;

  v55 = sub_245FCBC94(v307, v50, v52, v54, v51);
  *(v10 + v258.n128_u64[0]) = v55;

  v4 = v2;
LABEL_25:
  if (((*((*v8 & *v10) + 0x4A8))() & 1) == 0)
  {
    memcpy(v303, v308, 0x191uLL);
    sub_24604860C(v303);
    memcpy(v303, v308, 0x191uLL);
    sub_246048D64(v303);
    sub_246049464(v57);
    memcpy(v317, v11, sizeof(v317));
    memcpy(v301, v11, 0x4A0uLL);
    v14 = *&v317[74];
    v58 = *(v11 + 1240);
    v293[2] = *(v11 + 1224);
    v293[3] = v58;
    *&v293[4] = *(v11 + 1256);
    v59 = *(v11 + 1192);
    v293[1] = *(v11 + 1208);
    v293[0] = v59;
    memcpy(v318, v11, 0x4A0uLL);
    v60 = *(v11 + 1240);
    *(&v318[76] + 8) = *(v11 + 1224);
    *(&v318[77] + 8) = v60;
    v61 = *(v11 + 1208);
    *(&v318[74] + 8) = *(v11 + 1192);
    *(&v318[75] + 8) = v61;
    *(&v318[78] + 1) = *(v11 + 1256);
    *&v318[74] = *&v317[74];
    if (sub_246081984(v318) != 1)
    {
      memcpy(v294, &v301[36], 0x260uLL);
      *(&v294[40] + 8) = v293[2];
      *(&v294[41] + 8) = v293[3];
      *(&v294[38] + 8) = v293[0];
      *(&v294[39] + 8) = v293[1];
      *(&v294[42] + 1) = *&v293[4];
      *&v294[38] = v14;
      if (sub_246081ACC(v294) == 1)
      {
        memcpy(v303, v301, 0x4A0uLL);
        *&v303[74] = v14;
        *(&v303[76] + 8) = v293[2];
        *(&v303[77] + 8) = v293[3];
        *(&v303[74] + 8) = v293[0];
        *(&v303[75] + 8) = v293[1];
        *(&v303[78] + 1) = *&v293[4];
        sub_245F8E7A4(v317, v302, &qword_27EE3A9F0, &qword_246099CE0);
        sub_246081B70(v303);
      }

      else
      {
        memcpy(v303, v301, 0x4A0uLL);
        *&v303[74] = v14;
        *(&v303[76] + 8) = v293[2];
        *(&v303[77] + 8) = v293[3];
        *(&v303[74] + 8) = v293[0];
        *(&v303[75] + 8) = v293[1];
        *(&v303[78] + 1) = *&v293[4];
        sub_245F8E7A4(v317, v302, &qword_27EE3A9F0, &qword_246099CE0);

        sub_246081B70(v303);
        if (v14)
        {
          v2 = v4;
          v62 = v264[0];
          Width = CVPixelBufferGetWidth(v264[0]);
          Height = CVPixelBufferGetHeight(v62);
          v7 = *(v14 + 2);
          if (v7)
          {
            v4 = Height;

            v64 = v14;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_32;
            }

            goto LABEL_181;
          }

          v64 = v14;
          goto LABEL_52;
        }
      }

      goto LABEL_36;
    }

    goto LABEL_191;
  }

LABEL_36:
  for (v259.i64[0] = 0; ; v259.i64[0] = *&v302[0])
  {
    if (*(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__explicitFeedbackEnabled) != 1)
    {
      goto LABEL_111;
    }

    v71 = v308[0];
    v255 = v308[8];
    v256 = v308[7];
    v253 = v308[10];
    v254 = v308[9];
    v251 = v308[12];
    v252 = v308[11];
    v250 = v308[13];
    v72 = *((*v8 & *v10) + 0x410);
    v72(v318);
    if (*&v318[0] == 12)
    {
      v248 = *(&v71 + 1);
      sub_246077B30(0xC);
      v73 = 12;
    }

    else
    {
      sub_246077B30(*&v318[0]);
      sub_246077B30(0xC);
      v72(v318);
      if (*&v318[0] == 14)
      {
        v248 = *(&v71 + 1);
        sub_246077B30(0xE);
        v73 = 14;
      }

      else
      {
        sub_246077B30(*&v318[0]);
        sub_246077B30(0xE);
        v72(v318);
        if (*&v318[0] != 15)
        {
          sub_246077B30(*&v318[0]);
          sub_246077B30(0xF);
          goto LABEL_111;
        }

        v248 = *(&v71 + 1);
        sub_246077B30(0xF);
        v73 = 15;
      }
    }

    sub_246077B30(v73);
    v2 = v4;
    sub_24608FCE8();
    OCSignPostsAriadneDbgCode();
    v74 = kdebug_trace();
    v295[0] = 1;
    if (((*((*v8 & *v10) + 0x4A8))(v74) & 1) == 0)
    {
      v90 = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform);
      v246 = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 16);
      v247 = v90;
      v91 = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 32);
      v244 = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 48);
      v245 = v91;
      v89 = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 64);
      v72(v294);
      if (*&v294[0] > 14 && *&v294[0] == 15)
      {
        sub_246077B30(0xF);
        sub_246077B30(0xF);
      }

      else
      {
        sub_246077B30(*&v294[0]);
        sub_246077B30(0xF);
        v246 = 0u;
        v247 = 0u;
        v89 = v295[0];
        v244 = 0u;
        v245 = 0u;
      }

      v72(v318);
      if (*&v318[0] == 15)
      {
        sub_246077B30(0xF);
        sub_246077B30(0xF);
        v92 = (v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox);
        if ((*(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 64) & 1) == 0)
        {
          v77 = 0;
          v93 = v92[2];
          v240 = v92[3];
          v241 = v93;
          v94 = *v92;
          v242 = v92[1];
          v243 = v94;
LABEL_59:
          v249 = v11;
          v95 = v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pointCloud;
          swift_beginAccess();
          v96 = *(v95 + 3);
          v318[2] = *(v95 + 2);
          v318[3] = v96;
          v97 = *(v95 + 5);
          v318[4] = *(v95 + 4);
          v318[5] = v97;
          v98 = *(v95 + 1);
          v318[0] = *v95;
          v318[1] = v98;
          if (*&v318[0])
          {
            v85 = 0;
            v238 = v318[3];
            v239 = v318[2];
            v236 = v318[5];
            v237 = v318[4];
          }

          else
          {
            v238 = 0u;
            v239 = 0u;
            v85 = v295[0];
            v236 = 0u;
            v237 = 0u;
          }

          *(v303 + 8) = *(v95 + 8);
          v99 = *(v95 + 3);
          *&v303[0] = *&v318[0];
          *(&v303[1] + 1) = v99;
          v303[2] = v318[2];
          v303[3] = v318[3];
          v303[4] = v318[4];
          v303[5] = v318[5];
          sub_245F8E7A4(v318, v317, &qword_27EE3A978, &qword_246099C08);
          sub_245F8E744(v303, &qword_27EE3A978, &qword_246099C08);
          v100 = *(v95 + 3);
          v317[2] = *(v95 + 2);
          v317[3] = v100;
          v101 = *(v95 + 5);
          v317[4] = *(v95 + 4);
          v317[5] = v101;
          v102 = *(v95 + 1);
          v317[0] = *v95;
          v317[1] = v102;
          v103 = *&v317[0];
          if (*&v317[0])
          {

            v257.n128_u64[0] = v103;
          }

          else
          {
            v257.n128_u64[0] = 0;
          }

          *(&v302[2] + 8) = *(v95 + 40);
          *(&v302[3] + 8) = *(v95 + 56);
          *(&v302[4] + 8) = *(v95 + 72);
          v104 = *(v95 + 11);
          *&v302[0] = v103;
          *(&v302[5] + 1) = v104;
          *(v302 + 8) = *(v95 + 8);
          *(&v302[1] + 8) = *(v95 + 24);
          sub_245F8E7A4(v317, v301, &qword_27EE3A978, &qword_246099C08);
          sub_245F8E744(v302, &qword_27EE3A978, &qword_246099C08);
          v11 = v249;
          v86 = v246;
          v75 = v247;
          v88 = v244;
          v87 = v245;
          v78 = v242;
          v76 = v243;
          v80 = v240;
          v79 = v241;
          v82 = v238;
          v81 = v239;
          v84 = v236;
          v83 = v237;
          goto LABEL_66;
        }
      }

      else
      {
        sub_246077B30(*&v318[0]);
        sub_246077B30(0xF);
      }

      v242 = 0u;
      v243 = 0u;
      v77 = v295[0];
      v240 = 0u;
      v241 = 0u;
      goto LABEL_59;
    }

    v257.n128_u64[0] = 0;
    v75 = 0uLL;
    v76 = 0uLL;
    v77 = v295[0];
    v78 = 0uLL;
    v79 = 0uLL;
    v80 = 0uLL;
    v81 = 0uLL;
    v82 = 0uLL;
    v83 = 0uLL;
    v84 = 0uLL;
    v85 = v295[0];
    v86 = 0uLL;
    v87 = 0uLL;
    v88 = 0uLL;
    v89 = v295[0];
LABEL_66:
    v294[0] = v75;
    v294[1] = v86;
    v294[2] = v87;
    v294[3] = v88;
    LOBYTE(v294[4]) = v89;
    v293[0] = v76;
    v293[1] = v78;
    v293[2] = v79;
    v293[3] = v80;
    LOBYTE(v293[4]) = v77;
    v292[0] = v81;
    v292[1] = v82;
    v292[2] = v83;
    v292[3] = v84;
    LOBYTE(v292[4]) = v85;
    v105 = [*(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession) configuration];
    if (!v105)
    {
      goto LABEL_192;
    }

    v106 = v105;
    v107 = [v105 videoFormat];

    v108 = [v107 device];
    v109 = &off_278E99000;
    [v108 ISO];
    *&v301[1] = 0;
    v301[0] = v248;
    v301[2] = v256;
    v301[3] = v255;
    v301[4] = v254;
    v301[5] = v253;
    v301[6] = v252;
    v301[7] = v251;
    v301[8] = v250;
    *&v301[9] = v71;
    DWORD2(v301[9]) = v110;
    v296 = sub_245FC6824();
    v297 = v111;
    v298[0] = 0;
    v299 = 0.0;
    __asm { FMOV            V0.2D, #-1.0 }

    v300 = _Q0;
    v117 = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_explicitFeedbackManager);
    if (v117)
    {
      v118 = *(*v117 + 128);

      if (v118(v301, v257.n128_u64[0], v292, v293, v294, &v296, v298))
      {
        if (v296 == 1)
        {
          v119 = (v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame);
          swift_beginAccess();
          memcpy(v318, v119, sizeof(v318));
          if (sub_246081984(v318) == 1)
          {
            goto LABEL_203;
          }

          v120 = v119[59];
          if ((v120 & 1) == 0)
          {
            v119[59] = v120 | 1;
          }
        }

        if (BYTE1(v296) == 1)
        {
          v121 = (v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame);
          swift_beginAccess();
          memcpy(v318, v121, sizeof(v318));
          if (sub_246081984(v318) == 1)
          {
            goto LABEL_204;
          }

          v122 = v121[59];
          if ((v122 & 2) == 0)
          {
            v121[59] = v122 | 2;
          }
        }

        if (BYTE2(v296) == 1)
        {
          v123 = (v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame);
          swift_beginAccess();
          memcpy(v318, v123, sizeof(v318));
          if (sub_246081984(v318) == 1)
          {
            goto LABEL_205;
          }

          v124 = v123[59];
          if ((v124 & 0x20) == 0)
          {
            v123[59] = v124 | 0x20;
          }
        }

        if (BYTE4(v296) == 1)
        {
          v125 = (v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame);
          swift_beginAccess();
          memcpy(v318, v125, sizeof(v318));
          if (sub_246081984(v318) == 1)
          {
            goto LABEL_206;
          }

          v126 = v125[59];
          if ((v126 & 8) == 0)
          {
            v125[59] = v126 | 8;
          }
        }

        if (BYTE3(v296) == 1)
        {
          v127 = (v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame);
          swift_beginAccess();
          memcpy(v318, v127, sizeof(v318));
          if (sub_246081984(v318) == 1)
          {
            goto LABEL_207;
          }

          v128 = v127[59];
          if ((v128 & 4) == 0)
          {
            v127[59] = v128 | 4;
          }
        }

        if (BYTE5(v296) == 1)
        {
          v129 = (v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame);
          swift_beginAccess();
          memcpy(v318, v129, sizeof(v318));
          if (sub_246081984(v318) == 1)
          {
            goto LABEL_208;
          }

          v130 = v129[59];
          if ((v130 & 0x10) == 0)
          {
            v129[59] = v130 | 0x10;
          }
        }

        v131 = v297;
        if (*(v297 + 16) < 3uLL)
        {
        }

        else
        {
          v132 = sub_2460443FC(v317);
          v134 = v133;
          memmove(v318, v133, 0x4F0uLL);
          if (sub_246081984(v318) == 1)
          {
            goto LABEL_209;
          }

          memmove(v303, v134 + 72, 0x2B0uLL);
          if (sub_246081ACC(v303) != 1)
          {
            v134[148] = v131;
          }

          (v132)(v317, 0);
          v135 = sub_2460443FC(v291);
          v137 = v136;
          memmove(v317, v136, 0x4F0uLL);
          if (sub_246081984(v317) == 1)
          {
            goto LABEL_210;
          }

          memmove(v302, v137 + 144, 0x2B0uLL);
          if (sub_246081ACC(v302) != 1)
          {
            v137[298] = v117[8];
            *(v137 + 1196) = 0;
          }

          (v135)(v291, 0);
        }

        v109 = &off_278E99000;
        *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectInFOVRatio) = v299;
        *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_centerOfObjectInFOV) = v300;
      }

      else
      {

        v109 = &off_278E99000;
      }
    }

    else
    {
    }

    sub_24608FCF4();
    OCSignPostsAriadneDbgCode();
    kdebug_trace();
    if (*(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugExplicitFeedbackEnabled) == 1)
    {
      if (v298[0])
      {
        v138 = v299 * 100.0;
      }

      else
      {
        v138 = -100.0;
      }

      sub_24606BAE0();
      [v108 v109[170]];
      *&v318[0] = __PAIR64__(LODWORD(v138), v139);
      sub_246091924();
    }

    v4 = v2;
LABEL_111:
    v8 = v263.i64[0];
    (v263.i64[0])(v318);
    if (*&v318[0] == 15)
    {
      sub_246077B30(0xF);
      sub_246077B30(0xF);
      v140 = (v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_centerOfObjectInFOV);
      v141 = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_centerOfObjectInFOV);
      if (v141 < 0.0 || v141 > 1.0 || (v142 = v140[1], v142 < 0.0) || v142 > 1.0)
      {
        v153 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl;
        v154 = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl);
        if (!v154)
        {
          goto LABEL_193;
        }

        v2 = v4;
        v155 = *(*v154 + 232);

        v155(v156, 0.5, 0.5);

        v157 = *(v10 + v153);
        if (!v157)
        {
          goto LABEL_194;
        }

        v158 = *(*v157 + 256);

        v158(v159, 0.5, 0.5);
      }

      else
      {
        v143 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl;
        v144 = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl);
        if (!v144)
        {
          goto LABEL_200;
        }

        v145 = v11;
        v146 = *(*v144 + 232);
        v2 = (*v144 + 232);

        v146(v147, v141, v142);

        v148 = *(v10 + v143);
        if (!v148)
        {
          goto LABEL_201;
        }

        v149 = *v140;
        v150 = v140[1];
        v151 = *(*v148 + 256);

        v151(v152, v149, v150);
        v11 = v145;
        v8 = v263.i64[0];
      }

      if (*(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugCameraControl) == 1)
      {
        v249 = v11;
        sub_24606BB78();
        v160 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl;
        v161 = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl);
        if (!v161)
        {
          goto LABEL_197;
        }

        v162 = v4;
        v163 = *(*v161 + 312);

        v165 = v163(v164);
        v167 = v166;

        v168 = *(v10 + v160);
        if (!v168)
        {
          goto LABEL_198;
        }

        v169 = *(*v168 + 120);
        v2 = (*v168 + 120);

        v171 = v169(v170);
        v173 = v172;

        v174 = *(v10 + v160);
        if (!v174)
        {
          goto LABEL_199;
        }

        v175 = *(*v174 + 128);

        v177 = v175(v176);
        v179 = v178;

        *&v318[0] = v165;
        *(&v318[0] + 1) = v167;
        *&v318[1] = v171;
        *(&v318[1] + 1) = v173;
        *&v318[2] = v177;
        *(&v318[2] + 1) = v179;
        sub_246091924();

        v4 = v162;
        v11 = v249;
        v8 = v263.i64[0];
      }

      memcpy(v318, v308, 0x191uLL);
      sub_246049AA4(v318);
      sub_24604A090();
    }

    else
    {
      sub_246077B30(*&v318[0]);
      sub_246077B30(0xF);
    }

    v180 = (v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox);
    if (*(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 64) & 1) != 0 || (v181 = v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform, (*(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 64)))
    {
    }

    else
    {
      v182 = *v180;
      v2 = v180[1];
      v183 = v180[2];
      v184 = v180[3];
      v185 = v180[4];
      v186 = v180[5];
      v187 = v180[7];
      v257.n128_u64[0] = v180[6];
      v188 = *v181;
      v255 = *(v181 + 1);
      v256 = v188;
      v189 = *(v181 + 2);
      v253 = *(v181 + 3);
      v254 = v189;
      memcpy(v318, v11, sizeof(v318));
      if (sub_246081984(v318) == 1)
      {
        goto LABEL_196;
      }

      *(&v303[0] + 1) = v2;
      *&v303[0] = v182;
      *(&v303[1] + 1) = v184;
      *&v303[1] = v183;
      *(&v303[2] + 1) = v186;
      *&v303[2] = v185;
      *(&v303[3] + 1) = v187;
      *&v303[3] = v257.n128_u64[0];
      v303[4] = v256;
      v303[5] = v255;
      v303[6] = v254;
      v303[7] = v253;
      LOBYTE(v303[8]) = 4;
      *(&v303[8] + 1) = v259.i64[0];
      nullsub_1();
      v190 = *(v11 + 432);
      v317[6] = *(v11 + 416);
      v317[7] = v190;
      v317[8] = *(v11 + 448);
      v191 = *(v11 + 368);
      v317[2] = *(v11 + 352);
      v317[3] = v191;
      v192 = *(v11 + 384);
      v317[5] = *(v11 + 400);
      v317[4] = v192;
      v193 = *(v11 + 320);
      v317[1] = *(v11 + 336);
      v317[0] = v193;
      v194 = v303[5];
      *(v11 + 384) = v303[4];
      *(v11 + 400) = v194;
      v195 = v303[7];
      *(v11 + 416) = v303[6];
      *(v11 + 432) = v195;
      *(v11 + 448) = v303[8];
      v196 = v303[3];
      *(v11 + 352) = v303[2];
      *(v11 + 368) = v196;
      v197 = v303[1];
      *(v11 + 320) = v303[0];
      *(v11 + 336) = v197;
      sub_245F8E744(v317, &qword_27EE3A970, &qword_246099C00);
      v4 = v267;
      v8 = v263.i64[0];
    }

    v198 = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_coverage);
    memcpy(v318, v11, sizeof(v318));
    if (sub_246081984(v318) == 1)
    {
      goto LABEL_186;
    }

    *(v11 + 464) = v198;
    v199 = sub_2460443FC(v303);
    v201 = v200;
    memmove(v317, v200, 0x4F0uLL);
    if (sub_246081984(v317) == 1)
    {
      goto LABEL_187;
    }

    memmove(v298, v201 + 72, 0x2B0uLL);
    if (sub_246081ACC(v298) != 1)
    {
      v202 = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane);
      v203 = v201[124];
      v201[124] = v202;
      v204 = v202;
    }

    (v199)(v303, 0);
    v205 = sub_2460443FC(v293);
    v207 = v206;
    memmove(v303, v206, 0x4F0uLL);
    if (sub_246081984(v303) == 1)
    {
      goto LABEL_188;
    }

    memmove(&v296, v207 + 36, 0x2B0uLL);
    if (sub_246081ACC(&v296) != 1)
    {
      v208 = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 48);
      v301[2] = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 32);
      v301[3] = v208;
      v301[4] = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 64);
      v209 = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud);
      v301[1] = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 16);
      v301[0] = v209;
      v210 = v207[69];
      v211 = v207[71];
      v302[2] = v207[70];
      v302[3] = v211;
      v302[4] = v207[72];
      v212 = v207[68];
      v302[1] = v210;
      v302[0] = v212;
      memmove(v207 + 68, v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud, 0x50uLL);
      sub_245F8E7A4(v301, v294, &qword_27EE3AB10, &qword_246096678);
      sub_245F8E744(v302, &qword_27EE3AB10, &qword_246096678);
    }

    (v205)(v293, 0);
    Width = v268;
    sub_246023B40(v264[0]);
    v214 = v213;
    v215 = sub_2460443FC(v301);
    v217 = v216;
    memmove(v302, v216, 0x4F0uLL);
    if (sub_246081984(v302) == 1)
    {
      goto LABEL_189;
    }

    memmove(v295, v217 + 144, 0x2B0uLL);
    if (sub_246081ACC(v295) != 1)
    {
      v217[292] = v214;
    }

    v218 = (v215)(v301, 0);
    (v8)(v301, v218);
    if (*&v301[0] == 15)
    {
      sub_246077B30(0xF);
      sub_246077B30(0xF);
      v219 = *(v10 + v258.n128_u64[0]);
      if (v219)
      {

        v220 = sub_2460443FC(v293);
        v2 = v221;
        memmove(v301, v221, 0x4F0uLL);
        if (sub_246081984(v301) == 1)
        {
          goto LABEL_195;
        }

        memmove(v294, v2 + 72, 0x2B0uLL);
        if (sub_246081ACC(v294) != 1)
        {
          v2[157] = (*(*v219 + 568))();
        }

        (v220)(v293, 0);

        Width = v268;
      }
    }

    else
    {
      sub_246077B30(*&v301[0]);
      sub_246077B30(0xF);
    }

    v14 = sub_24606B888();
    memcpy(v294, v11, sizeof(v294));
    memcpy(v301, v11, sizeof(v301));
    if (sub_246081984(v301) == 1)
    {
      goto LABEL_190;
    }

    memcpy(v292, v294, sizeof(v292));
    memcpy(v291, v301, sizeof(v291));
    sub_246081B38(v292, v293);
    sub_246091924();

    memcpy(v293, v291, sizeof(v293));
    v222 = sub_246081B70(v293);
    v288 = v308[17];
    v289 = v308[18];
    v290 = v308[19];
    v284 = v308[13];
    v285 = v308[14];
    v287 = v308[16];
    v286 = v308[15];
    v280 = v308[9];
    v281 = v308[10];
    v283 = v308[12];
    v282 = v308[11];
    v279 = v308[8];
    v278 = v308[7];
    v223 = v308[20];
    v224 = v308[21];
    v225 = v308[22];
    v226 = v308[23];
    v7 = LOBYTE(v308[24]);
    v277[0] = *(&v308[24] + 1);
    *(v277 + 3) = DWORD1(v308[24]);
    v227 = (v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_worldToMobileSfMTransform);
    if (*(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_worldToMobileSfMTransform + 64))
    {
      v258 = v308[23];
      v259 = v308[22];
      v263 = v308[21];
      *v264 = v308[20];
    }

    else
    {
      v7 = 0;
      v224 = v227[2];
      v223 = v227[3];
      v228 = *v227;
      v225 = v227[1];
      v229 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v227, *&v308[10]), v225, *&v308[10], 1), v224, v308[10], 2), v223, v308[10], 3);
      v263 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v227, *&v308[11]), v225, *&v308[11], 1), v224, v308[11], 2), v223, v308[11], 3);
      *v264 = v229;
      v230 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v228, *&v308[12]), v225, *&v308[12], 1), v224, v308[12], 2), v223, v308[12], 3);
      v226 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v228, *&v308[13]), v225, *&v308[13], 1), v224, v308[13], 2), v223, v308[13], 3);
      v258 = v226;
      v259 = v230;
      LOBYTE(v291[0]) = 0;
    }

    if (*(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugWriteAllFramesData) == 1)
    {
      v14 = v10;
      (v8)(&v276, v222, v223, v224, v225, v226);
      if (v276 == 15)
      {
        sub_246077B30(0xF);
        sub_246077B30(0xF);
        if (*&v308[2])
        {
          v270 = *&v308[2];
          v271 = *(&v308[2] + 8);
          v272 = *(&v308[3] + 8);
          v273 = *(&v308[4] + 8);
          v274 = *(&v308[5] + 8);
          v275[10] = v288;
          v275[11] = v289;
          v275[6] = v284;
          v275[7] = v285;
          v275[9] = v287;
          v275[8] = v286;
          v275[2] = v280;
          v275[3] = v281;
          v275[4] = v282;
          v275[5] = v283;
          v275[0] = v278;
          v275[1] = v279;
          v275[12] = v290;
          v275[13] = *v264;
          v275[14] = v263;
          v275[15] = v259;
          v275[16] = v258;
          LOBYTE(v275[17]) = v7;
          *(&v275[17] + 1) = v277[0];
          DWORD1(v275[17]) = *(v277 + 3);
          memcpy(v269, v275, 0x118uLL);
          sub_245F8E7A4(&v308[2], v291, &qword_27EE3B1B0, &unk_246099D60);
          sub_24601E8F4(v275, v291);
          sub_2460866B4(&v270, v269, v291, v3);
          v14 = sub_24606CCF0();
          memcpy(v269, v291, sizeof(v269));
          sub_246091924();

          sub_246081BA0(v291);
        }
      }

      else
      {
        sub_246077B30(v276);
        sub_246077B30(0xF);
      }
    }

    if (*sub_246020998() == 1)
    {
      v14 = v10;
      (v8)(v291);
      if (*&v291[0] == 15)
      {
        sub_246077B30(0xF);
        sub_246077B30(0xF);
        if (*(&v308[6] + 1))
        {
          v231 = *(&v308[6] + 1);
          DataBuffer = OCNonModularSPI_ADJasperPointCloud_CreateDataBuffer();
          if (DataBuffer)
          {
            v233 = DataBuffer;
            v8 = v4;
            type metadata accessor for TemporalDepthPointCloud();
            v275[0] = v308[7];
            v275[1] = v308[8];
            v266 = v308[10];
            v275[2] = v308[9];
            v256 = v308[12];
            v257 = v308[11];
            v255 = v308[13];
            v234 = v233;
            sub_245FC70B8(v275, v269, v266, v257, v256, v255, COERCE_DOUBLE(0x5A000000780));
            sub_245FC74AC(v234, v269, v3);
            v11 = v235;
            v2 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCircularBuffer;
            v14 = *(v10 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCircularBuffer);
            if (v14 || (sub_245F8E624(&qword_27EE3AD88, &unk_24609AD30), *&v291[0] = v11, , *(v2 + v10) = sub_24608EAF8(91, v291), , (v14 = *(v2 + v10)) != 0))
            {
              v270 = v11;
              v2 = *(*v14 + 264);

              (v2)(v291, &v270);

              v14 = *&v291[0];
            }

            else
            {
            }

            Width = v268;
          }

          else
          {

            Width = v268;
          }
        }
      }

      else
      {
        sub_246077B30(*&v291[0]);
        sub_246077B30(0xF);
      }
    }

    sub_24608FC4C();
    OCSignPostsAriadneDbgCode();
    if ((*v261 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    v64 = sub_246072624(v14);
LABEL_32:
    v65 = 0;
    v66 = 0;
    v67 = v4;
    v68 = *(v64 + 2);
    v4 = v2;
    do
    {
      if (v66 >= v68)
      {
        __break(1u);
        goto LABEL_177;
      }

      *&v69 = ((COERCE_FLOAT(*&v14[v65 + 32]) + COERCE_FLOAT(*&v14[v65 + 32])) / Width) + -1.0;
      ++v66;
      v70 = &v64[v65];
      *(v70 + 8) = v69;
      *(&v69 + 1) = ((*&v14[v65 + 36] + *&v14[v65 + 36]) / v67) + -1.0;
      *(v70 + 4) = v69;
      v65 += 8;
    }

    while (v7 != v66);

LABEL_52:
    ObjectContour.init(points:)(v64, v302);
  }

  if ((*(v10 + v260) & 0x8000000000000000) != 0)
  {
    goto LABEL_180;
  }

  kdebug_trace();
  v291[10] = v288;
  v291[11] = v289;
  v291[6] = v284;
  v291[7] = v285;
  v291[9] = v287;
  v291[8] = v286;
  v291[2] = v280;
  v291[3] = v281;
  v291[5] = v283;
  v291[4] = v282;
  v291[1] = v279;
  v291[0] = v278;
  v291[12] = v290;
  v291[13] = *v264;
  v291[14] = v263;
  v291[15] = v259;
  v291[16] = v258;
  LOBYTE(v291[17]) = v7;
  *(&v291[17] + 1) = v277[0];
  DWORD1(v291[17]) = *(v277 + 3);
  sub_24601E950(v291);
  v56 = v10;
LABEL_172:
  sub_2460482AC(v56);
  (*(v265 + 8))(Width, v4);
}

void sub_2460482AC(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2460917D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * *(a1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_frameIndex) + 0x888888888888888, 1) <= 0x888888888888888uLL)
  {
    sub_2460917A4();
    sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_246096460;
    sub_2460917B4();
    v11 = MEMORY[0x277D83A80];
    *(v10 + 56) = MEMORY[0x277D839F8];
    *(v10 + 64) = v11;
    *(v10 + 32) = v12 * 1000.0;
    v13 = sub_246091C24();
    v15 = v14;
    v16 = sub_245FA3174();
    (*(v3 + 16))(v5, v16, v2);

    v17 = sub_2460918D4();
    v18 = sub_246091FA4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v26 = v6;
      v20 = v19;
      v21 = swift_slowAlloc();
      v25 = v7;
      v22 = v21;
      v27 = v21;
      *v20 = 136446210;
      v23 = sub_245F8D3C0(v13, v15, &v27);

      *(v20 + 4) = v23;
      _os_log_impl(&dword_245F8A000, v17, v18, "=== ObjectCaptureSession processVideoData() takes time = %{public}s ms ===", v20, 0xCu);
      sub_245F8E6F4(v22);
      MEMORY[0x24C1989D0](v22, -1, -1);
      MEMORY[0x24C1989D0](v20, -1, -1);

      (*(v3 + 8))(v5, v2);
      (*(v25 + 8))(v9, v26);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
    }
  }
}

void sub_24604860C(__int128 *a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v14 = a1[11];
  v100 = a1[10];
  v101 = v14;
  v15 = a1[13];
  v102 = a1[12];
  v103 = v15;
  v16 = a1[7];
  v96 = a1[6];
  v97 = v16;
  v17 = a1[9];
  v98 = a1[8];
  v99 = v17;
  v18 = a1[3];
  v92 = a1[2];
  v93 = v18;
  v19 = a1[5];
  v94 = a1[4];
  v95 = v19;
  v20 = a1[1];
  v90 = *a1;
  v91 = v20;
  v21 = *(a1 + 224);
  v22 = *(a1 + 369);
  v87 = *(a1 + 353);
  v88 = v22;
  v89 = *(a1 + 385);
  v23 = *(a1 + 305);
  v83 = *(a1 + 289);
  v84 = v23;
  v24 = *(a1 + 337);
  v85 = *(a1 + 321);
  v86 = v24;
  v25 = *(a1 + 241);
  v79 = *(a1 + 225);
  v80 = v25;
  v26 = *(a1 + 273);
  v81 = *(a1 + 257);
  v82 = v26;
  v27 = MEMORY[0x277D85000];
  if ((*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__voxelIntegrationEnabled) & 1) == 0)
  {
    (*((*MEMORY[0x277D85000] & *v2) + 0x410))(&v52);
    if (v52.i64[0] == 15)
    {
      sub_246077B30(0xF);
      sub_246077B30(0xF);
      return;
    }

    sub_246077B30(v52.i64[0]);
    sub_246077B30(0xF);
  }

  if (*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldRestartVoxelIntegration) == 1)
  {
    v28 = sub_245FA3280();
    (*(v5 + 16))(v13, v28, v4);
    v29 = sub_2460918D4();
    v30 = sub_246091FC4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v50 = v5;
      v51 = v4;
      v32 = v31;
      v33 = v7;
      v34 = swift_slowAlloc();
      v52.i64[0] = v34;
      *v32 = 136380675;
      *(v32 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4320, &v52);
      _os_log_impl(&dword_245F8A000, v29, v30, "ObjectCaptureSession.%{private}s: Got new tap point, trying to restart voxel integration!", v32, 0xCu);
      sub_245F8E6F4(v34);
      v35 = v34;
      v7 = v33;
      MEMORY[0x24C1989D0](v35, -1, -1);
      v36 = v32;
      v5 = v50;
      v4 = v51;
      MEMORY[0x24C1989D0](v36, -1, -1);
    }

    (*(v5 + 8))(v13, v4);
    v62 = v100;
    v63 = v101;
    v64 = v102;
    v65 = v103;
    v58 = v96;
    v59 = v97;
    v60 = v98;
    v61 = v99;
    v54 = v92;
    v55 = v93;
    v56 = v94;
    v57 = v95;
    v52 = v90;
    v53 = v91;
    v75 = v87;
    v76 = v88;
    v77 = v89;
    v71 = v83;
    v72 = v84;
    v73 = v85;
    v74 = v86;
    v69 = v81;
    v70 = v82;
    v67 = v79;
    v66 = v21;
    v68 = v80;
    sub_24605CAF8(&v52);
    v27 = MEMORY[0x277D85000];
  }

  v37 = *((*v27 & *v2) + 0x410);
  v37(&v52);
  if (v52.i64[0] == 12)
  {
    sub_246077B30(0xC);
    v38 = 12;
    goto LABEL_15;
  }

  sub_246077B30(v52.i64[0]);
  sub_246077B30(0xC);
  v37(&v52);
  if (v52.i64[0] == 14)
  {
    sub_246077B30(0xE);
    v38 = 14;
    goto LABEL_15;
  }

  sub_246077B30(v52.i64[0]);
  sub_246077B30(0xE);
  v37(&v52);
  if (v52.i64[0] == 15)
  {
    sub_246077B30(0xF);
    v38 = 15;
LABEL_15:
    sub_246077B30(v38);
    v52.i8[0] = v21;
    v78 = 5;
    if (static CameraTrackingState.== infix(_:_:)(&v52, &v78))
    {
      v62 = v100;
      v63 = v101;
      v64 = v102;
      v65 = v103;
      v58 = v96;
      v59 = v97;
      v60 = v98;
      v61 = v99;
      v54 = v92;
      v55 = v93;
      v56 = v94;
      v57 = v95;
      v52 = v90;
      v53 = v91;
      v75 = v87;
      v76 = v88;
      v77 = v89;
      v71 = v83;
      v72 = v84;
      v73 = v85;
      v74 = v86;
      v69 = v81;
      v70 = v82;
      v67 = v79;
      v66 = v21;
      v68 = v80;
      sub_24605D558(&v52);
      sub_24605E6CC(v39);
    }

    else
    {
      v40 = sub_245FA3280();
      (*(v5 + 16))(v10, v40, v4);
      v41 = sub_2460918D4();
      v42 = sub_246091FC4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v52.i64[0] = v44;
        *v43 = 136380675;
        *(v43 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4320, &v52);
        _os_log_impl(&dword_245F8A000, v41, v42, "ObjectCaptureSession.%{private}s: Dropping the frame because ARKit tracking state is not normal!", v43, 0xCu);
        sub_245F8E6F4(v44);
        MEMORY[0x24C1989D0](v44, -1, -1);
        MEMORY[0x24C1989D0](v43, -1, -1);
      }

      (*(v5 + 8))(v10, v4);
    }

    return;
  }

  sub_246077B30(v52.i64[0]);
  sub_246077B30(0xF);
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_frameIndex) + 0x888888888888888, 1) <= 0x888888888888888uLL)
  {
    v45 = sub_245FA3280();
    (*(v5 + 16))(v7, v45, v4);
    v46 = sub_2460918D4();
    v47 = sub_246091FA4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v52.i64[0] = v49;
      *v48 = 136380675;
      *(v48 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4320, &v52);
      _os_log_impl(&dword_245F8A000, v46, v47, "ObjectCaptureSession.%{private}s: Didn't process input frame because the state is not ready, detecting or scanning!", v48, 0xCu);
      sub_245F8E6F4(v49);
      MEMORY[0x24C1989D0](v49, -1, -1);
      MEMORY[0x24C1989D0](v48, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

void sub_246048D64(const void *a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v53 - v12;
  (*((*MEMORY[0x277D85000] & *v1) + 0x410))(v74, v11);
  if (v74[0] == 14)
  {
    v72 = a1;
    sub_246077B30(0xE);
    sub_246077B30(0xE);
    v14 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane);
    if (!v14 || (v15 = v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition, (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition + 33) & 1) != 0) || (v16 = *(v15 + 2), v17 = *(v15 + 3), v18 = v15[32], v75 = *v15, v76 = v16, v77 = v17, v78 = v18 & 1, (v18 & 1) != 0) || (v70 = v4, v71 = v3, v19 = (v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pointCloud), v20 = v16, swift_beginAccess(), v21 = v19, v22 = v20, v4 = v70, v3 = v71, (v23 = *v21) == 0) || (v24 = (v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialCameraTransform), (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialCameraTransform + 64) & 1) != 0))
    {
      if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition + 33))
      {
        v25 = sub_245FA3174();
        (*(v4 + 16))(v6, v25, v3);
        v26 = sub_2460918D4();
        v27 = sub_246091FB4();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v74[0] = v29;
          *v28 = 136380675;
          *(v28 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4300, v74);
          _os_log_impl(&dword_245F8A000, v26, v27, "ObjectCaptureSession.%{private}s: Skipped bounding box detection because tap position is not available!", v28, 0xCu);
          sub_245F8E6F4(v29);
          MEMORY[0x24C1989D0](v29, -1, -1);
          MEMORY[0x24C1989D0](v28, -1, -1);
        }

        (*(v4 + 8))(v6, v3);
      }

      else if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_tapPosition + 32))
      {
        v30 = sub_245FA3174();
        (*(v4 + 16))(v9, v30, v3);
        v31 = sub_2460918D4();
        v32 = sub_246091FB4();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v74[0] = v34;
          *v33 = 136380675;
          *(v33 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4300, v74);
          _os_log_impl(&dword_245F8A000, v31, v32, "ObjectCaptureSession.%{private}s: Skipped bounding box detection because world point is not available!", v33, 0xCu);
          sub_245F8E6F4(v34);
          MEMORY[0x24C1989D0](v34, -1, -1);
          MEMORY[0x24C1989D0](v33, -1, -1);
        }

        (*(v4 + 8))(v9, v3);
      }

      else if (!v14)
      {
        v35 = sub_245FA3174();
        (*(v4 + 16))(v13, v35, v3);
        v36 = sub_2460918D4();
        v37 = sub_246091FB4();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v74[0] = v39;
          *v38 = 136380675;
          *(v38 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4300, v74);
          _os_log_impl(&dword_245F8A000, v36, v37, "ObjectCaptureSession.%{private}s: Skipped bounding box detection because plane is not available!", v38, 0xCu);
          sub_245F8E6F4(v39);
          MEMORY[0x24C1989D0](v39, -1, -1);
          MEMORY[0x24C1989D0](v38, -1, -1);
        }

        (*(v4 + 8))(v13, v3);
      }
    }

    else
    {
      v40 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager);
      if (v40)
      {
        v41.n128_u64[0] = v22;
        v41.n128_u64[1] = v17;
        v68 = v41;
        v42 = v21[1];
        v70 = v21[2];
        v71 = v42;
        v43 = v21[4];
        v67 = v21[3];
        v44 = v21[6];
        v54 = v21[5];
        v55 = v43;
        v45 = v21[8];
        v61 = v21[7];
        v62 = v44;
        v46 = v21[10];
        v69 = v21[9];
        v47 = v21[11];
        v66 = v24[3];
        v65 = v24[2];
        v64 = v24[1];
        v63 = *v24;
        v48 = v23;
        v56 = v23;
        memcpy(v74, v72, 0x191uLL);
        v73[0] = v48;
        v73[1] = v71;
        v49 = v70;
        v73[2] = v70;
        v73[4] = v43;
        v73[5] = v54;
        v73[6] = v62;
        v73[7] = v61;
        v59 = v47;
        v60 = v46;
        v73[10] = v46;
        v73[11] = v47;
        v73[8] = v45;
        v73[9] = v69;
        LODWORD(v72) = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugMaskingVoxel);
        v50 = *v40;
        v57 = *(*v40 + 288);
        v58 = v50 + 288;
        v51 = v14;
        v52 = v56;
        sub_246081C18(v56, v71, v49);

        v57(v74, v51, &v75, v73, v72, v68, v63, v64, v65, v66);

        sub_246079A84(v52, v71, v70);
      }
    }
  }

  else
  {
    sub_246077B30(v74[0]);
    sub_246077B30(0xE);
  }
}

void sub_246049464(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x277D85000] & *v1) + 0x410))(v57, v4);
  if (v57[0] == 15)
  {
    sub_246077B30(0xF);
    sub_246077B30(0xF);
    if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager) && (sub_2460448B0() & 1) != 0 && *sub_245F925DC() == 1)
    {
      v7 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__mobileSfMPointCloudBuffer);
      if (v7)
      {
        v8 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__scaleWorldToObjectTransform);
        v38 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__scaleWorldToObjectTransform + 16);
        v39 = v8;
        v9 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__scaleWorldToObjectTransform + 32);
        v36 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__scaleWorldToObjectTransform + 48);
        v37 = v9;
        v10 = (v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame);
        swift_beginAccess();
        memcpy(v57, v10, sizeof(v57));
        if (sub_246081984(v57) == 1)
        {
          __break(1u);
        }

        else
        {
          v11 = v10[33];
          v54[2] = v10[32];
          v54[3] = v11;
          v12 = v10[35];
          v54[4] = v10[34];
          v54[5] = v12;
          v13 = v10[31];
          v54[0] = v10[30];
          v54[1] = v13;
          v10[30].n128_u64[1] = 0;
          v10[31].n128_u64[0] = 0;
          v10[30].n128_u64[0] = v7;
          v14 = v38;
          v10[32] = v39;
          v10[33] = v14;
          v15 = v36;
          v10[34] = v37;
          v10[35] = v15;
          swift_retain_n();
          sub_245F8E744(v54, &qword_27EE3A978, &qword_246099C08);
          memcpy(v55, v10, sizeof(v55));
          memcpy(v53, v10, sizeof(v53));
          memcpy(v56, v10, 0x4F0uLL);
          if (sub_246081984(v56) != 1)
          {
            v48 = v53[32];
            v49 = v53[33];
            v50 = v53[34];
            v51 = v53[35];
            v47[0] = v53[30];
            v47[1] = v53[31];
            memcpy(v52, v53, sizeof(v52));
            sub_245F8E7A4(v55, v46, &qword_27EE3A9F0, &qword_246099CE0);
            sub_245F8E7A4(v47, v46, &qword_27EE3A978, &qword_246099C08);
            sub_246081B70(v52);
            v16 = *&v47[0];
            if (!*&v47[0])
            {

              return;
            }

            if (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugSurfaceGeometryData) != 1)
            {
LABEL_17:

              sub_245F8E744(v47, &qword_27EE3A978, &qword_246099C08);
              return;
            }

            v38 = v49;
            v39 = v48;
            v36 = v51;
            v37 = v50;
            v17 = sub_2460443FC(v41);
            v19 = v18;
            memmove(v46, v18, 0x4F0uLL);
            if (sub_246081984(v46) != 1)
            {
              memmove(v45, v19 + 36, 0x2B0uLL);
              if (sub_246081ACC(v45) != 1)
              {
                sub_246022048(v16, 0, v42);
                v20 = v19[44];
                v44[2] = v19[43];
                v44[3] = v20;
                v44[4] = v19[45];
                v21 = v19[42];
                v44[0] = v19[41];
                v44[1] = v21;
                v22 = v42[3];
                v19[43] = v42[2];
                v19[44] = v22;
                v19[45] = v42[4];
                v23 = v42[1];
                v19[41] = v42[0];
                v19[42] = v23;
                sub_245F8E744(v44, &qword_27EE3AB10, &qword_246096678);
              }

              (v17)(v41, 0);
              v24 = sub_2460443FC(v43);
              v26 = v25;
              memmove(v44, v25, 0x4F0uLL);
              if (sub_246081984(v44) != 1)
              {
                memmove(v42, v26 + 36, 0x2B0uLL);
                if (sub_246081ACC(v42) != 1)
                {
                  sub_246022454(v16, 0, v40, v39, v38, v37, v36);
                  v27 = v26[55];
                  v41[2] = v26[54];
                  v41[3] = v27;
                  v41[4] = v26[56];
                  v28 = v26[53];
                  v41[0] = v26[52];
                  v41[1] = v28;
                  v29 = v40[3];
                  v26[54] = v40[2];
                  v26[55] = v29;
                  v26[56] = v40[4];
                  v30 = v40[1];
                  v26[52] = v40[0];
                  v26[53] = v30;
                  sub_245F8E744(v41, &qword_27EE3AB18, &qword_246099D70);
                }

                (v24)(v43, 0);
                goto LABEL_17;
              }

              goto LABEL_27;
            }

LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
            return;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

      v31 = sub_245FA3174();
      (*(v3 + 16))(v6, v31, v2);
      v32 = sub_2460918D4();
      v33 = sub_246091FC4();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v57[0] = v35;
        *v34 = 136380675;
        *(v34 + 4) = sub_245F8D3C0(0xD000000000000025, 0x80000002460A42D0, v57);
        _os_log_impl(&dword_245F8A000, v32, v33, "ObjectCaptureSession.%{private}s: MobileSfM point cloud is not available.", v34, 0xCu);
        sub_245F8E6F4(v35);
        MEMORY[0x24C1989D0](v35, -1, -1);
        MEMORY[0x24C1989D0](v34, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    sub_246077B30(v57[0]);
    sub_246077B30(0xF);
  }
}

uint64_t sub_246049AA4(const void *a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  memcpy(v49, a1, 0x191uLL);
  v10 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager];
  if (v10)
  {

    if ((sub_246044638() & 1) == 0 || (v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__autoCaptureEnabled] & 1) == 0)
    {
    }

    v11 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 48];
    v47[2] = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 32];
    v47[3] = v11;
    v48 = v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 64];
    v12 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 16];
    v47[0] = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform];
    v47[1] = v12;
    memcpy(v45, a1, 0x191uLL);
    LOBYTE(v41[0]) = 4;
    v13 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame;
    swift_beginAccess();
    memcpy(v46, &v1[v13], sizeof(v46));
    result = sub_246081984(v46);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v43[0] = v46[59];
      v15 = *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectInFOVRatio];
      v16 = swift_allocObject();
      *(v16 + 16) = v1;
      v17 = *(*v10 + 480);
      v18 = v1;
      v19 = v17(v45, v47, v41, v43, sub_246081BF4, v16, v15);

      if ((v19 & 1) == 0)
      {
      }

      v20 = sub_245FA3174();
      (*(v4 + 16))(v9, v20, v3);
      sub_245FCFDFC(v49, v45);
      v21 = sub_2460918D4();
      v22 = sub_246091FC4();
      sub_245FCFE58(v49);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v45[0] = v40;
        *v23 = 136380931;
        *(v23 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A42B0, v45);
        *(v23 + 12) = 2082;
        v24 = sub_24602138C(v49[0]);
        v39 = v21;
        v26 = sub_245F8D3C0(v24, v25, v45);

        *(v23 + 14) = v26;
        v27 = v39;
        _os_log_impl(&dword_245F8A000, v39, v22, "ObjectCaptureSession.%{private}s: Taking automatic shot around video frame %{public}s", v23, 0x16u);
        v28 = v40;
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v28, -1, -1);
        MEMORY[0x24C1989D0](v23, -1, -1);
      }

      else
      {
      }

      (*(v4 + 8))(v9, v3);
      if (v18[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugAutoCaptureEnabled] != 1)
      {
      }

      v34 = sub_2460443FC(v44);
      v36 = v35;
      memmove(v45, v35, 0x4F0uLL);
      result = sub_246081984(v45);
      if (result != 1)
      {
        memmove(v43, v36 + 576, 0x2B0uLL);
        if (sub_246081ACC(v43) != 1)
        {
          (*(*v10 + 448))(v41);
          v37 = v41[1];
          *(v36 + 75) = v41[0];
          *(v36 + 76) = v37;
          *(v36 + 77) = *v42;
          *(v36 + 1245) = *&v42[13];
        }

        (v34)(v44, 0);
      }
    }

    __break(1u);
  }

  else
  {
    v29 = sub_245FA3174();
    (*(v4 + 16))(v6, v29, v3);
    v30 = sub_2460918D4();
    v31 = sub_246091FB4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v46[0] = v33;
      *v32 = 136380675;
      *(v32 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A42B0, v46);
      _os_log_impl(&dword_245F8A000, v30, v31, "ObjectCaptureSession.%{private}s: Failed to run automatic capture - capture manager has not been initialized!", v32, 0xCu);
      sub_245F8E6F4(v33);
      MEMORY[0x24C1989D0](v33, -1, -1);
      MEMORY[0x24C1989D0](v32, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_24604A090()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager);
  if (v6)
  {
    v7 = *((*MEMORY[0x277D85000] & *v1) + 0x4C0);

    v9 = v7(v8);
    if (sub_246044638())
    {
      v10 = (*(*v6 + 576))();
      if ((v9 & 1) == (v10 & 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if ((v9 & 1) == 0)
      {
LABEL_12:
      }

      v10 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v17[7] = v10 & 1;
    v1;
    sub_246091994();
    sub_246038590();
  }

  v11 = sub_245FA3174();
  (*(v3 + 16))(v5, v11, v2);
  v12 = sub_2460918D4();
  v13 = sub_246091FB4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136380675;
    *(v14 + 4) = sub_245F8D3C0(0xD000000000000018, 0x80000002460A4290, &v18);
    _os_log_impl(&dword_245F8A000, v12, v13, "ObjectCaptureSession.%{private}s: Failed to update manual shot status - capture manager has not been initialized!", v14, 0xCu);
    sub_245F8E6F4(v15);
    MEMORY[0x24C1989D0](v15, -1, -1);
    MEMORY[0x24C1989D0](v14, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

size_t sub_24604A384(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v1;
  v370.i64[0] = v4;
  v6 = v5;
  v7 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v304 - v8;
  v329 = sub_245F8E624(&unk_27EE3AD50, &unk_24609AD00);
  MEMORY[0x28223BE20](v329);
  v330 = &v304 - v10;
  v326 = sub_245F8E624(&qword_27EE3A738, &qword_246098890);
  MEMORY[0x28223BE20](v326);
  v327 = (&v304 - v11);
  v12 = sub_245F8E624(&qword_27EE3A5B8, &qword_246098418);
  MEMORY[0x28223BE20](v12 - 8);
  v313 = &v304 - v13;
  v14 = type metadata accessor for PhotogrammetrySample(0);
  v311 = *(v14 - 8);
  v312 = v14;
  MEMORY[0x28223BE20](v14);
  v306 = (&v304 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v308 = (&v304 - v17);
  v371.i64[0] = sub_246091834();
  v368.i64[0] = *(v371.i64[0] - 8);
  MEMORY[0x28223BE20](v371.i64[0]);
  v19 = &v304 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v335 = &v304 - v21;
  MEMORY[0x28223BE20](v22);
  v317 = &v304 - v23;
  MEMORY[0x28223BE20](v24);
  v337 = &v304 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v304 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v304 - v30;
  v32 = sub_2460918F4();
  isa = v32[-1].isa;
  MEMORY[0x28223BE20](v32);
  v304 = &v304 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v307 = &v304 - v35;
  MEMORY[0x28223BE20](v36);
  v331 = &v304 - v37;
  MEMORY[0x28223BE20](v38);
  v318 = &v304 - v39;
  MEMORY[0x28223BE20](v40);
  v336 = &v304 - v41;
  MEMORY[0x28223BE20](v42);
  v356 = &v304 - v43;
  MEMORY[0x28223BE20](v44);
  v46 = &v304 - v45;
  MEMORY[0x28223BE20](v47);
  v342 = &v304 - v48;
  v49 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  MEMORY[0x28223BE20](v49 - 8);
  v324 = &v304 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v305 = &v304 - v52;
  MEMORY[0x28223BE20](v53);
  v365.i64[0] = &v304 - v54;
  v361 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v328 = *(v361 - 8);
  MEMORY[0x28223BE20](v361);
  v367 = &v304 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v419, v6, 0x191uLL);
  v56 = *&v419[1];
  v325 = v46;
  v316 = v31;
  if (!*&v419[1])
  {
    goto LABEL_10;
  }

  v57 = v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maxPhotoDimensions;
  swift_beginAccess();
  LODWORD(v57) = v57[8];
  v58 = v56;
  if (v57 != 1)
  {
    goto LABEL_10;
  }

  v59 = v58;
  if (CVPixelBufferGetWidth(v59) == 256)
  {
    if (CVPixelBufferGetHeight(v59) == 192)
    {
      if (!*(&v419[1] + 1))
      {
LABEL_9:

        goto LABEL_10;
      }

      v60 = v28;
      v61 = v56;
      v62 = *(&v419[1] + 1);
      if (CVPixelBufferGetWidth(v62) != 256)
      {
        __break(1u);
        goto LABEL_119;
      }

      Height = CVPixelBufferGetHeight(v62);

      v56 = v61;
      v28 = v60;
      if (Height != 192)
      {
        __break(1u);
        goto LABEL_9;
      }

LABEL_10:
      v314 = v28;
      v359 = v56;
      v322 = v19;
      v323 = v9;
      v366 = v32;
      v64 = *(&v419[1] + 1);
      v357 = *(&v419[0] + 1);
      v334 = v64;
      v351 = v64;
      DataBuffer = OCNonModularSPI_ADJasperPointCloud_CreateDataBuffer();
      v2 = *&v419[0];
      v65 = 1;
      v410 = 1;
      *&v386[28] = v419[16];
      *&v386[44] = v419[17];
      *&v386[60] = v419[18];
      v386[76] = v419[19];
      *&v386[12] = v419[15];
      v411[0] = v419[7];
      v411[1] = v419[8];
      v411[2] = v419[9];
      v340 = v419[11];
      v341 = v419[10];
      v411[3] = v419[10];
      v411[4] = v419[11];
      v338 = v419[13];
      v339 = v419[12];
      v411[5] = v419[12];
      v411[6] = v419[13];
      LOBYTE(v411[7]) = v419[14];
      *(&v411[7] + 1) = *(&v419[19] + 1);
      LODWORD(v411[8]) = DWORD1(v419[24]);
      *(&v411[9] + 4) = *&v386[16];
      *(&v411[10] + 4) = *&v386[32];
      *(&v411[11] + 4) = *&v386[48];
      *(&v411[12] + 1) = *&v386[61];
      *(&v411[8] + 4) = *v386;
      memset(&v411[14], 0, 64);
      LOBYTE(v411[18]) = 1;
      memset(&v411[19], 0, 64);
      LOBYTE(v411[23]) = 1;
      *(&v411[23] + 1) = MEMORY[0x277D84F90];
      *&v411[24] = MEMORY[0x277D84F90];
      sub_245F97D94(v412);
      v407 = v412[6];
      v408 = v412[7];
      v66 = v414;
      v409 = v413;
      v403 = v412[2];
      v404 = v412[3];
      v406 = v412[5];
      v405 = v412[4];
      v402 = v412[1];
      v401 = v412[0];
      v67 = v415;
      v400 = v415;
      v416 = 1;
      v399 = 0;
      v68 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform);
      v354 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 16);
      v355 = v68;
      v69 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 32);
      v352 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 48);
      v353 = v69;
      v70 = MEMORY[0x277D85000];
      v71 = *MEMORY[0x277D85000] & *v3;
      v315 = (v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform);
      v362.i32[0] = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform + 64);
      v72 = v71 + 1192;
      v73 = *(v71 + 1192);
      v74 = sub_24601E8F4(&v419[7], v386);
      v309 = v73;
      v310 = v72;
      v75 = v73(v74);
      if (v75)
      {
        v76 = v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformBoundingBox;
        if (*(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformBoundingBox + 64))
        {
          v75 = OCNonModularSPI_Serialization_InvalidBoundingBoxTransform();
        }

        else
        {
          v87 = *(v76 + 1);
          v86 = *(v76 + 2);
          v88 = *v76;
          v90 = *(v76 + 6);
          v89 = *(v76 + 7);
          *v386 = v88;
          *&v386[16] = v87;
          *&v386[32] = v86;
          *&v386[56] = v89;
          *&v386[48] = v90;
          v91 = sub_246090E60();
          *&v77 = OCBoundingBox.scaledTransform(scale:)(COERCE_FLOAT(*v91));
        }

        v350 = v77;
        v347 = v79;
        v348 = v78;
        v346 = v80;
        v65 = 0;
        v386[0] = 1;
        LOBYTE(v385[0]) = 0;
        LODWORD(v349) = 1;
        v399 = 1;
      }

      else
      {
        v81 = v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox;
        if (*(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 64))
        {
          v82 = *MEMORY[0x277D860B8];
          v83 = *(MEMORY[0x277D860B8] + 16);
          v84 = *(MEMORY[0x277D860B8] + 32);
          v85 = *(MEMORY[0x277D860B8] + 48);
        }

        else
        {
          v93 = *(v81 + 1);
          v92 = *(v81 + 2);
          v94 = *v81;
          v96 = *(v81 + 6);
          v95 = *(v81 + 7);
          *v386 = v94;
          *&v386[16] = v93;
          *&v386[32] = v92;
          *&v386[56] = v95;
          *&v386[48] = v96;
          v97 = sub_246090EC4();
          *&v82 = OCBoundingBox.scaledTransform(scale:)(COERCE_FLOAT(*v97));
        }

        v350 = 0u;
        if (v362.i8[0])
        {
          LODWORD(v349) = 0;
          v347 = 0u;
          v348 = 0u;
          v346 = 0u;
        }

        else
        {
          v380[0] = 1;
          v385[0] = v82;
          v385[1] = v83;
          v385[2] = v84;
          v385[3] = v85;
          v385[4] = v355;
          v385[5] = v354;
          v385[6] = v353;
          v385[7] = v352;
          v385[8] = 0uLL;
          LOBYTE(v385[9]) = 1;
          nullsub_1();
          *&v386[96] = v407;
          *&v386[112] = v408;
          *&v386[32] = v403;
          *&v386[48] = v404;
          *&v386[80] = v406;
          *&v386[64] = v405;
          *&v386[16] = v402;
          *v386 = v401;
          *&v386[128] = v409;
          *&v386[136] = v66;
          v386[144] = v67;
          v75 = sub_245F8E744(v386, &qword_27EE3A990, &qword_246099C20);
          LODWORD(v349) = 0;
          v66 = *(&v385[8] + 1);
          v409 = *&v385[8];
          v407 = v385[6];
          v408 = v385[7];
          v403 = v385[2];
          v404 = v385[3];
          v406 = v385[5];
          v405 = v385[4];
          v402 = v385[1];
          v401 = v385[0];
          v347 = 0u;
          v348 = 0u;
          v67 = v385[9];
          v346 = 0u;
          v400 = v385[9];
        }
      }

      v98 = *((*v70 & *v3) + 0x410);
      v320 = (*v70 & *v3) + 1040;
      v321 = v98;
      (v98)(v385, v75);
      v345 = v65;
      if (*&v385[0] == 15)
      {
        sub_246077B30(0xF);
        sub_246077B30(0xF);
        *&v386[96] = v407;
        *&v386[112] = v408;
        *&v386[32] = v403;
        *&v386[48] = v404;
        *&v386[80] = v406;
        *&v386[64] = v405;
        *&v386[16] = v402;
        *v386 = v401;
        *&v386[128] = v409;
        *&v386[136] = v66;
        v386[144] = v67;
        if (sub_245F97C14(v386) != 1)
        {
          v66 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID);
          v400 = 0;
        }

        if ((v65 & 1) == 0)
        {
          v99 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID);
          v399 = 0;
          goto LABEL_28;
        }
      }

      else
      {
        sub_246077B30(*&v385[0]);
        sub_246077B30(0xF);
      }

      v99 = 0;
LABEL_28:
      v100 = v368.i64[0];
      v101 = *(v368.i64[0] + 16);
      v102 = v365.i64[0];
      v103 = v371.i64[0];
      v364 = v368.i64[0] + 16;
      v363 = v101;
      v101(v365.i64[0], v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_identifier, v371.i64[0]);
      v332 = *(v100 + 56);
      v333 = v100 + 56;
      result = v332(v102, 0, 1, v103);
      v395 = v407;
      v396 = v408;
      v391 = v403;
      v392 = v404;
      v394 = v406;
      v393 = v405;
      v390 = v402;
      v389 = v401;
      *&v397 = v409;
      *(&v397 + 1) = v66;
      v398 = v400;
      v369 = v3;
      v105 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_motionManager);
      if (!v105)
      {
        __break(1u);
        goto LABEL_121;
      }

      v106 = v399;
      sub_24601E2C0(v411, v386);
      sub_245F8E7A4(&v389, v386, &qword_27EE3A990, &qword_246099C20);
      v107 = [v105 deviceMotion];
      v108 = v107;
      v344 = v66;
      v343 = v106;
      if (v107)
      {
        [v107 gravity];
        v110 = v109;
        v112 = v111;
        v114 = v113;
      }

      else
      {
        v110 = 0;
        v112 = 0;
        v114 = 0;
      }

      v115 = v108 == 0;
      v3 = v369;
      v116 = &v369[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_currentFrame];
      swift_beginAccess();
      memcpy(v385, v116, sizeof(v385));
      memcpy(v384, v116, sizeof(v384));
      v117 = *(&v385[29] + 1);
      memcpy(v383, v116 + 480, sizeof(v383));
      memcpy(v386, v116, sizeof(v386));
      memcpy(v388, v116 + 480, sizeof(v388));
      v387 = *(&v385[29] + 1);
      v118 = sub_246081984(v386);
      v119 = v118 == 1;
      if (v118 == 1)
      {
        v120 = 0;
      }

      else
      {
        v120 = v117;
      }

      v121 = *(&v419[24] + 1);
      memcpy(v380, v384, sizeof(v380));
      v381 = v117;
      memcpy(v382, v383, sizeof(v382));
      v319 = *(&v419[24] + 1);
      sub_245F8E7A4(v385, v379, &qword_27EE3A9F0, &qword_246099CE0);
      sub_245F8E744(v380, &qword_27EE3A9F0, &qword_246099CE0);
      v9 = v367;
      *v367 = v2;
      memcpy(v9 + 16, v411, 0x188uLL);
      v122 = v361;
      sub_245FC5914(v365.i64[0], &v9[*(v361 + 24)], &qword_27EE3A350, &unk_2460969A0);
      v123 = &v9[v122[7]];
      v124 = v396;
      *(v123 + 6) = v395;
      *(v123 + 7) = v124;
      *(v123 + 8) = v397;
      v123[144] = v398;
      v125 = v392;
      *(v123 + 2) = v391;
      *(v123 + 3) = v125;
      v126 = v394;
      *(v123 + 4) = v393;
      *(v123 + 5) = v126;
      v127 = v390;
      *v123 = v389;
      *(v123 + 1) = v127;
      v128 = &v9[v122[8]];
      v130 = v347;
      v129 = v348;
      *v128 = v350;
      *(v128 + 1) = v129;
      v131 = v346;
      *(v128 + 2) = v130;
      *(v128 + 3) = v131;
      *(v128 + 8) = v99;
      v128[72] = v343;
      v128[73] = v345;
      v9[v122[9]] = v349;
      v132 = &v9[v122[10]];
      *v132 = v110;
      *(v132 + 1) = v112;
      *(v132 + 2) = v114;
      v132[24] = v115;
      *&v9[v122[11]] = v121;
      v133 = &v9[v122[12]];
      *v133 = v120;
      v133[8] = v119;
      v134 = v122[13];
      *&v9[v134] = MEMORY[0x277D84F90];
      v135 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager);
      v136 = v366;
      v137 = isa;
      if (v135)
      {
        memcpy(v379, v419, 0x191uLL);
        LOBYTE(v372[0]) = 4;

        v138 = sub_246023604(v372);
        v139 = v362.i8[0];
        v141 = v354;
        v140 = v355;
        v143 = v352;
        v142 = v353;
        if (!v138)
        {
          v140 = 0uLL;
          v139 = v410;
          v141 = 0uLL;
          v142 = 0uLL;
          v143 = 0uLL;
        }

        v417[0] = v140;
        v417[1] = v141;
        v417[2] = v142;
        v417[3] = v143;
        v418 = v139;
        v144 = (*(*v135 + 496))(v370.i64[0], v379, v417);
        v145 = v342;
        if (v144)
        {
          v146 = LOBYTE(v419[25]);
          v147 = sub_245FA3174();
          v148 = *(v137 + 2);
          v356 = v137 + 16;
          *&v350 = v148;
          if (v146 == 1)
          {
            v148(v145, v147, v136);
            v149 = v316;
            v150 = v371.i64[0];
            v363(v316, v370.i64[0], v371.i64[0]);
            v151 = sub_2460918D4();
            v365.i32[0] = sub_246091FC4();
            if (os_log_type_enabled(v151, v365.i8[0]))
            {
              v152 = swift_slowAlloc();
              v349 = swift_slowAlloc();
              *&v379[0] = v349;
              *v152 = 136380931;
              *(v152 + 4) = sub_245F8D3C0(0xD000000000000024, 0x80000002460A4240, v379);
              *(v152 + 12) = 2082;
              *&v347 = v151;
              v153 = sub_2460917F4();
              v155 = v154;
              *&v348 = *(v368.i64[0] + 8);
              (v348)(v149, v150);
              v156 = sub_245F8D3C0(v153, v155, v379);
              v136 = v366;

              *(v152 + 14) = v156;
              v157 = v347;
              _os_log_impl(&dword_245F8A000, v347, v365.i8[0], "ObjectCaptureSession.%{private}s: Added shot %{public}s taken by automatic capture.", v152, 0x16u);
              v158 = v349;
              swift_arrayDestroy();
              MEMORY[0x24C1989D0](v158, -1, -1);
              v159 = v152;
              v9 = v367;
              MEMORY[0x24C1989D0](v159, -1, -1);
            }

            else
            {

              *&v348 = *(v368.i64[0] + 8);
              (v348)(v149, v150);
            }

            v197 = *(v137 + 1);
            v198 = v197(v342, v136);
          }

          else
          {
            v148(v325, v147, v136);
            v186 = v314;
            v187 = v371.i64[0];
            v363(v314, v370.i64[0], v371.i64[0]);
            v188 = sub_2460918D4();
            v365.i32[0] = sub_246091FC4();
            if (os_log_type_enabled(v188, v365.i8[0]))
            {
              v189 = swift_slowAlloc();
              v349 = swift_slowAlloc();
              *&v379[0] = v349;
              *v189 = 136380931;
              *(v189 + 4) = sub_245F8D3C0(0xD000000000000024, 0x80000002460A4240, v379);
              *(v189 + 12) = 2082;
              *&v347 = v188;
              v190 = sub_2460917F4();
              v192 = v191;
              *&v348 = *(v368.i64[0] + 8);
              (v348)(v186, v187);
              v193 = sub_245F8D3C0(v190, v192, v379);
              v136 = v366;

              *(v189 + 14) = v193;
              v194 = v347;
              _os_log_impl(&dword_245F8A000, v347, v365.i8[0], "ObjectCaptureSession.%{private}s: Added  shot %{public}s taken by manual capture.", v189, 0x16u);
              v195 = v349;
              swift_arrayDestroy();
              MEMORY[0x24C1989D0](v195, -1, -1);
              v196 = v189;
              v9 = v367;
              MEMORY[0x24C1989D0](v196, -1, -1);
            }

            else
            {

              *&v348 = *(v368.i64[0] + 8);
              (v348)(v186, v187);
            }

            v197 = *(v137 + 1);
            v198 = v197(v325, v136);
          }

          if (*(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__captureRateControlEnabled) == 1)
          {
            if (*(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugAdjustedCaptureCoolDown + 8))
            {
              v199 = v309(v198);
              v200 = *v135;
              if (v199)
              {
                (*(v200 + 544))();
              }

              else
              {
                (*(v200 + 536))();
              }
            }

            else
            {
              (*(*v135 + 552))(v198, *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugAdjustedCaptureCoolDown));
            }
          }

          v201 = *sub_246020998();
          v365.i64[0] = MEMORY[0x277D84F90];
          v349 = v197;
          if (v201 != 1)
          {
LABEL_73:
            v31 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_uuidToShotAnchorsMap;
            swift_beginAccess();
            v59 = *(*&v31[v3] + 16);
            if (qword_27EE3DC00 == -1)
            {
              goto LABEL_74;
            }

            goto LABEL_117;
          }

          v202 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCircularBuffer;
          if (*(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_temporalDepthPointCloudCircularBuffer))
          {

            v203 = sub_24608F79C();

            v204 = *(v3 + v202);
            v365.i64[0] = v203;
            *&v9[v134] = v203;
            if (v204)
            {
              v205 = *(*v204 + 240);

              v205(v206);
              v3 = v369;
            }
          }

          else
          {
            v207 = MEMORY[0x277D84F90];
            *&v9[v134] = MEMORY[0x277D84F90];
            v365.i64[0] = v207;
          }

          v208 = v371.i64[0];
          v210 = v317;
          v209 = v318;
          v211 = sub_245FA3174();
          (v350)(v209, v211, v136);
          v363(v210, v370.i64[0], v208);
          v32 = sub_2460918D4();
          LOBYTE(v9) = sub_246091FC4();
          if (!os_log_type_enabled(v32, v9))
          {

            (v348)(v210, v208);
            v197(v209, v136);
            goto LABEL_72;
          }

          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *&v379[0] = v62;
          *v61 = 136381187;
          *(v61 + 4) = sub_245F8D3C0(0xD000000000000024, 0x80000002460A4240, v379);
          *(v61 + 12) = 2050;
          if (!(v365.i64[0] >> 62))
          {
            v212 = *((v365.i64[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_70:
            *(v61 + 14) = v212;
            *(v61 + 22) = 2082;
            v213 = v317;
            v214 = sub_2460917F4();
            v216 = v215;
            (v348)(v213, v371.i64[0]);
            v217 = sub_245F8D3C0(v214, v216, v379);

            *(v61 + 24) = v217;
            _os_log_impl(&dword_245F8A000, v32, v9, "ObjectCaptureSession.%{private}s: Added %{public}ld\nframes of temporal LiDAR point cloud to metadata of id = %{public}s.", v61, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x24C1989D0](v62, -1, -1);
            MEMORY[0x24C1989D0](v61, -1, -1);

            v349(v318, v366);
LABEL_72:
            v9 = v367;
            goto LABEL_73;
          }

LABEL_119:
          v212 = sub_246092354();
          goto LABEL_70;
        }
      }

      v160 = sub_245FA3174();
      v161 = *(v137 + 2);
      v162 = v356;
      v369 = v160;
      v365.i64[0] = v161;
      v161(v356);
      v163 = v337;
      v164 = v371.i64[0];
      v363(v337, v370.i64[0], v371.i64[0]);
      v165 = v137;
      v166 = sub_2460918D4();
      v167 = v136;
      v168 = sub_246091FB4();
      if (os_log_type_enabled(v166, v168))
      {
        v169 = swift_slowAlloc();
        v170 = v163;
        v171 = swift_slowAlloc();
        *&v379[0] = v171;
        *v169 = 136380931;
        *(v169 + 4) = sub_245F8D3C0(0xD000000000000024, 0x80000002460A4240, v379);
        *(v169 + 12) = 2082;
        v172 = sub_2460917F4();
        v173 = v164;
        v175 = v174;
        (*(v368.i64[0] + 8))(v170, v173);
        v176 = sub_245F8D3C0(v172, v175, v379);

        *(v169 + 14) = v176;
        _os_log_impl(&dword_245F8A000, v166, v168, "ObjectCaptureSession.%{private}s: Failed to add shot of id = %{public}s to automatic capture!", v169, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v171, -1, -1);
        v177 = v366;
        MEMORY[0x24C1989D0](v169, -1, -1);

        v178 = *(v165 + 1);
        v178(v356, v177);
        v179 = v359;
        v180 = v336;
      }

      else
      {

        (*(v368.i64[0] + 8))(v163, v164);
        v178 = *(v165 + 1);
        v178(v162, v167);
        v179 = v359;
        v180 = v336;
        v177 = v167;
      }

      (v365.i64[0])(v180, v369, v177);
      sub_245FCFDFC(v419, v379);
      v181 = sub_2460918D4();
      v182 = sub_246091FC4();
      sub_245FCFE58(v419);
      if (os_log_type_enabled(v181, v182))
      {
        v183 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        *&v379[0] = v184;
        *v183 = 136380931;
        *(v183 + 4) = sub_245F8D3C0(0xD000000000000024, 0x80000002460A4240, v379);
        *(v183 + 12) = 2050;
        *(v183 + 14) = v2;
        _os_log_impl(&dword_245F8A000, v181, v182, "ObjectCaptureSession.%{private}s: High-resolution pixel buffer %{public}f has been released because the shot has been rejected.", v183, 0x16u);
        sub_245F8E6F4(v184);
        MEMORY[0x24C1989D0](v184, -1, -1);
        MEMORY[0x24C1989D0](v183, -1, -1);

        sub_24601E31C(v411);
      }

      else
      {

        sub_24601E31C(v411);
      }

      v178(v180, v177);
      v185 = v367;
      goto LABEL_113;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_117:
  swift_once();
LABEL_74:
  v218 = qword_27EE3DC08;
  v219 = v331;
  if (v59 >= qword_27EE3DC08)
  {
    v222 = v3;
    v223 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPgManagerTornDown;
    if ((*(v222 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isPgManagerTornDown) & 1) == 0)
    {
      v224 = sub_245FA3174();
      v225 = v366;
      (v350)(v219, v224, v366);
      v226 = v369;
      *&v348 = v369;
      v227 = sub_2460918D4();
      v228 = sub_246091FC4();
      if (os_log_type_enabled(v227, v228))
      {
        v229 = swift_slowAlloc();
        v230 = swift_slowAlloc();
        *&v379[0] = v230;
        *v229 = 136381187;
        *(v229 + 4) = sub_245F8D3C0(0xD000000000000024, 0x80000002460A4240, v379);
        *(v229 + 12) = 2050;
        *(v229 + 14) = *(*&v31[v226] + 16);

        *(v229 + 22) = 2050;
        *(v229 + 24) = v218;
        _os_log_impl(&dword_245F8A000, v227, v228, "ObjectCaptureSession.%{private}s: Turned off mobileSfM because number of images (%{public}ld) exceeded the limit %{public}ld", v229, 0x20u);
        sub_245F8E6F4(v230);
        MEMORY[0x24C1989D0](v230, -1, -1);
        v231 = v229;
        v9 = v367;
        MEMORY[0x24C1989D0](v231, -1, -1);

        v232 = v331;
        v233 = v366;
      }

      else
      {

        v232 = v219;
        v233 = v225;
      }

      v349(v232, v233);
      v226[v223] = 1;
      v254 = *(v348 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager);
      if (v254)
      {
        v255 = *(*v254 + 640);

        v255(v256);
      }
    }
  }

  else
  {
    v220 = *(v3 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager);
    if (v220)
    {
      *&v379[0] = v2;
      *(&v379[0] + 1) = v357;
      *&v379[1] = v359;
      *(&v379[1] + 1) = v334;
      *&v379[2] = DataBuffer;
      swift_beginAccess();

      v221 = v313;
      static PhotogrammetrySample.makeSample(shot:shotMetadata:)(v379, v9, v313);
      if ((*(v311 + 48))(v221, 1, v312) == 1)
      {

        sub_245F8E744(v221, &qword_27EE3A5B8, &qword_246098418);
        if ((v362.i8[0] & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v234 = v308;
        sub_24608199C(v221, v308, type metadata accessor for PhotogrammetrySample);
        (*(*v220 + 616))(v234);
        v235 = *v234;
        v236 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotUUIDToIDMap;
        v237 = v369;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v372[0] = *&v237[v236];
        *&v237[v236] = 0x8000000000000000;
        v239 = v370.i64[0];
        sub_24607470C(v235, v370.i64[0], isUniquelyReferenced_nonNull_native);
        *&v237[v236] = *&v372[0];
        swift_endAccess();
        v240 = v305;
        v241 = v371.i64[0];
        v363(v305, v239, v371.i64[0]);
        v332(v240, 0, 1, v241);
        swift_beginAccess();
        v242 = v234;
        sub_24604CF20(v240, v235);
        swift_endAccess();
        v243 = sub_245FA3174();
        v244 = v307;
        v245 = v366;
        (v350)(v307, v243, v366);
        v246 = v234;
        v247 = v306;
        sub_246081A04(v246, v306, type metadata accessor for PhotogrammetrySample);
        v248 = sub_2460918D4();
        v249 = sub_246091FC4();
        if (os_log_type_enabled(v248, v249))
        {
          v250 = swift_slowAlloc();
          v251 = swift_slowAlloc();
          *&v379[0] = v251;
          *v250 = 136380931;
          *(v250 + 4) = sub_245F8D3C0(0xD000000000000024, 0x80000002460A4240, v379);
          *(v250 + 12) = 2050;
          v252 = *v247;
          sub_246081A6C(v247, type metadata accessor for PhotogrammetrySample);
          *(v250 + 14) = v252;
          _os_log_impl(&dword_245F8A000, v248, v249, "ObjectCaptureSession.%{private}s: Added shot sample of id = %{public}ld to mobileSfM.", v250, 0x16u);
          sub_245F8E6F4(v251);
          MEMORY[0x24C1989D0](v251, -1, -1);
          MEMORY[0x24C1989D0](v250, -1, -1);

          v349(v307, v245);
          v253 = v308;
        }

        else
        {
          sub_246081A6C(v247, type metadata accessor for PhotogrammetrySample);

          v349(v244, v245);
          v253 = v242;
        }

        sub_246081A6C(v253, type metadata accessor for PhotogrammetrySample);
        v9 = v367;
        if ((v362.i8[0] & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      goto LABEL_88;
    }
  }

  if ((v362.i8[0] & 1) == 0)
  {
LABEL_91:
    v420.columns[1] = v354;
    v420.columns[0] = v355;
    v420.columns[3] = v352;
    v420.columns[2] = v353;
    v421 = __invert_f4(v420);
    v362 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421.columns[0], v341.f32[0]), v421.columns[1], *v341.f32, 1), v421.columns[2], v341, 2), v421.columns[3], v341, 3);
    v355 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421.columns[0], v340.f32[0]), v421.columns[1], *v340.f32, 1), v421.columns[2], v340, 2), v421.columns[3], v340, 3);
    v353 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421.columns[0], v338.f32[0]), v421.columns[1], *v338.f32, 1), v421.columns[2], v338, 2), v421.columns[3], v338, 3);
    v354 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v421.columns[0], v339.f32[0]), v421.columns[1], *v339.f32, 1), v421.columns[2], v339, 2), v421.columns[3], v339, 3);
    v257 = v369;
    sub_24606BC10();
    v379[0] = v362;
    v379[1] = v355;
    v379[2] = v354;
    v258 = v353;
    goto LABEL_92;
  }

LABEL_88:
  v257 = v369;
  sub_24606BC10();
  v379[0] = v341;
  v379[1] = v340;
  v258 = v338;
  v379[2] = v339;
LABEL_92:
  v379[3] = v258;
  sub_246091924();

  v259 = v330;
  v260 = v321;
  v261 = objc_allocWithZone(type metadata accessor for ObjectCaptureSession.ShotAnchor());
  v262 = sub_246091804();
  v263 = [v261 initWithIdentifier:v262 transform:{*v341.i64, *v340.i64, *v339.i64, *v338.i64}];

  v260(v379);
  if (*&v379[0] == 15)
  {
    sub_246077B30(0xF);
    sub_246077B30(0xF);
    [*&v257[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession] addAnchor_];
  }

  else
  {
    sub_246077B30(*&v379[0]);
    sub_246077B30(0xF);
  }

  swift_beginAccess();
  v264 = v263;
  v265 = swift_isUniquelyReferenced_nonNull_native();
  *&v372[0] = *&v31[v257];
  *&v31[v257] = 0x8000000000000000;
  v362.i64[0] = v264;
  sub_2460743B8(v264, v370.i64[0], v265);
  *&v31[v257] = *&v372[0];
  swift_endAccess();
  sub_24606BFC0();
  swift_beginAccess();
  v266 = v327;
  v267 = *(v326 + 48);
  *v327 = v2;
  v268 = v357;
  v269 = v359;
  v266[1] = v357;
  v266[2] = v269;
  v270 = DataBuffer;
  v266[3] = v334;
  v266[4] = v270;
  sub_246081A04(v9, v266 + v267, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
  v355.i64[0] = v270;
  v271 = v268;
  v359 = v269;
  DataBuffer = v351;
  sub_246091924();

  sub_245F8E744(v266, &qword_27EE3A738, &qword_246098890);
  sub_24606C600();
  v272 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_planeMap;
  swift_beginAccess();
  v273 = *&v369[v272];
  v274 = *&v369[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_plane];
  if (v274)
  {

    v275 = [v274 identifier];
    v276 = v324;
    sub_246091814();

    v332(v276, 0, 1, v371.i64[0]);
  }

  else
  {
    v276 = v324;
    v332(v324, 1, 1, v371.i64[0]);
  }

  v277 = *(v329 + 48);
  v278 = *(v329 + 64);
  *v259 = v273;
  sub_245FC5914(v276, v259 + v277, &qword_27EE3A350, &unk_2460969A0);
  *(v259 + v278) = v2;
  sub_246091924();

  sub_245F8E744(v259, &unk_27EE3AD50, &unk_24609AD00);
  v279 = *&v419[2];
  v375 = *(&v419[2] + 8);
  v376 = *(&v419[3] + 8);
  v377 = *(&v419[4] + 8);
  v378 = *(&v419[5] + 8);
  v280 = v367;
  if (*&v419[2])
  {
    v373[2] = v419[4];
    v373[3] = v419[5];
    v374 = *&v419[6];
    v373[0] = v419[2];
    v373[1] = v419[3];
    sub_24601E370(v373, v379);
    sub_24606C850();
    *(v372 + 8) = v375;
    *(&v372[1] + 8) = v376;
    *(&v372[2] + 8) = v377;
    *(&v372[3] + 8) = v378;
    *&v372[0] = v279;
    *(&v372[4] + 1) = v2;
    sub_246091924();

    v379[2] = v372[2];
    v379[3] = v372[3];
    v379[4] = v372[4];
    v379[1] = v372[1];
    v379[0] = v372[0];
    sub_245F8E744(v379, &unk_27EE3AB00, &qword_246098D68);
  }

  v363(v335, v370.i64[0], v371.i64[0]);
  v281 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotsInCurrentSegment;
  v282 = v369;
  v283 = *&v369[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotsInCurrentSegment];
  v284 = swift_isUniquelyReferenced_nonNull_native();
  *&v282[v281] = v283;
  v285 = v366;
  if ((v284 & 1) == 0)
  {
    v283 = sub_2460722B8(0, v283[2] + 1, 1, v283);
    *&v369[v281] = v283;
  }

  v287 = v283[2];
  v286 = v283[3];
  if (v287 >= v286 >> 1)
  {
    v283 = sub_2460722B8((v286 > 1), v287 + 1, 1, v283);
  }

  v283[2] = v287 + 1;
  v288 = v283 + ((*(v368.i64[0] + 80) + 32) & ~*(v368.i64[0] + 80)) + *(v368.i64[0] + 72) * v287;
  v289 = v371.i64[0];
  (*(v368.i64[0] + 32))(v288, v335, v371.i64[0]);
  v290 = v369;
  *&v369[v281] = v283;
  v291 = v290;
  v292 = v361;
  *(v280 + *(v361 + 52)) = MEMORY[0x277D84F90];
  *(v280 + *(v292 + 44)) = 0;

  v293 = v322;
  v363(v322, v370.i64[0], v289);
  v294 = v323;
  sub_246081A04(v280, v323, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
  (*(v328 + 56))(v294, 0, 1, v292);
  swift_beginAccess();
  sub_24604D170(v294, v293);
  swift_endAccess();
  if (v291[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__coverageEnabled] != 1)
  {
    goto LABEL_111;
  }

  if (v315[4].i8[0])
  {

    sub_24601E31C(v411);
    goto LABEL_112;
  }

  v295 = *v315;
  v370 = v315[1];
  v371 = v295;
  v296 = v315[3];
  v368 = v315[2];
  v365 = v296;
  result = CVPixelBufferGetHeight(v271);
  if ((v291[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 64] & 1) == 0)
  {
    sub_24602181C(v379, v341, v340, v339, v338, *&v291[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox], *&v291[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 16], *&v291[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 32], *&v291[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 48], v371, v370, v368, v365);
    v371 = v379[3];
    v370 = v379[2];
    v368 = v379[1];
    v365 = v379[0];
    swift_beginAccess();
    if (OCProxySurfaceCoverageGuideAddCameraShot())
    {
      v297 = sub_245FA3174();
      v298 = v304;
      (v350)(v304, v297, v285);
      sub_245FCFDFC(v419, v379);
      v299 = sub_2460918D4();
      v300 = sub_246091FB4();
      sub_245FCFE58(v419);
      if (os_log_type_enabled(v299, v300))
      {
        v301 = v280;
        v302 = swift_slowAlloc();
        v303 = swift_slowAlloc();
        *&v379[0] = v303;
        *v302 = 136380931;
        *(v302 + 4) = sub_245F8D3C0(0xD000000000000024, 0x80000002460A4240, v379);
        *(v302 + 12) = 2050;
        *(v302 + 14) = v2;
        _os_log_impl(&dword_245F8A000, v299, v300, "ObjectCaptureSession.%{private}s: Failed to add camera for coverage guide at still image capture at timestamp %{public}f!", v302, 0x16u);
        sub_245F8E6F4(v303);
        MEMORY[0x24C1989D0](v303, -1, -1);
        MEMORY[0x24C1989D0](v302, -1, -1);

        sub_24601E31C(v411);
        v349(v298, v285);
        v185 = v301;
LABEL_113:
        sub_246081A6C(v185, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
        v379[6] = v407;
        v379[7] = v408;
        v379[2] = v403;
        v379[3] = v404;
        v379[5] = v406;
        v379[4] = v405;
        v379[1] = v402;
        v379[0] = v401;
        *&v379[8] = v409;
        *(&v379[8] + 1) = v344;
        LOBYTE(v379[9]) = v400;
        return sub_245F8E744(v379, &qword_27EE3A990, &qword_246099C20);
      }

      sub_24601E31C(v411);

      v349(v298, v285);
LABEL_112:
      v185 = v280;
      goto LABEL_113;
    }

LABEL_111:

    sub_24601E31C(v411);
    goto LABEL_112;
  }

LABEL_121:
  __break(1u);
  return result;
}

uint64_t sub_24604CF20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_246091834();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_245F8E744(a1, &qword_27EE3A350, &unk_2460969A0);
    v14 = sub_245FFF3EC(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_246074FD8();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_246073D04(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_245F8E744(v8, &qword_27EE3A350, &unk_2460969A0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_2460745A4(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_24604D170(uint64_t a1, uint64_t a2)
{
  v5 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_245F8E744(a1, &qword_27EE3ACE0, &unk_246098880);
    sub_246072638(a2, v7);
    v13 = sub_246091834();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_245F8E744(v7, &qword_27EE3ACE0, &unk_246098880);
  }

  else
  {
    sub_24608199C(a1, v11, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_2460741D0(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_246091834();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_24604D390(char *a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2460917D4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  LODWORD(v14) = a1[1];
  v38 = *(a1 + 1);
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x4A8))(v10);
  if (result)
  {
    v43 = 1;
    v16 = v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectTransform;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    *(v16 + 2) = 0u;
    *(v16 + 3) = 0u;
    v16[64] = 1;
    sub_2460917A4();
    v17 = sub_245FA3174();
    (*(v5 + 16))(v7, v17, v4);
    v37 = v7;
    v18 = sub_2460918D4();
    v19 = sub_246091FC4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v36 = v8;
      v21 = v20;
      v22 = swift_slowAlloc();
      v35 = v9;
      v33 = v22;
      v42[0] = v22;
      *v21 = 136380931;
      *(v21 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, v42);
      *(v21 + 12) = 2082;
      v39 = v13;
      v40 = v14;
      v41 = v38;
      v23 = sub_246091C54();
      v34 = v14;
      v14 = v5;
      v25 = sub_245F8D3C0(v23, v24, v42);
      v32 = v4;
      v26 = v25;

      *(v21 + 14) = v26;
      _os_log_impl(&dword_245F8A000, v18, v19, "ObjectCaptureSession.%{private}s: Called startCapturing in area mode with options = %{public}s", v21, 0x16u);
      v27 = v33;
      swift_arrayDestroy();
      v9 = v35;
      MEMORY[0x24C1989D0](v27, -1, -1);
      v28 = v21;
      v8 = v36;
      MEMORY[0x24C1989D0](v28, -1, -1);

      v29 = (*(v14 + 8))(v37, v32);
      LOBYTE(v14) = v34;
    }

    else
    {

      v29 = (*(v5 + 8))(v37, v4);
    }

    MEMORY[0x28223BE20](v29);
    *(&v31 - 4) = v12;
    *(&v31 - 24) = v13;
    *(&v31 - 23) = v14;
    *(&v31 - 2) = v38;
    *(&v31 - 1) = v2;
    sub_246092044();
    v30 = v39;
    (*(v9 + 8))(v12, v8);
    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_24604D794@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, _BYTE *a5@<X8>)
{
  v200 = a5;
  v201 = a1;
  v8 = sub_2460917D4();
  v197 = *(v8 - 8);
  v198 = v8;
  MEMORY[0x28223BE20](v8);
  v202 = &v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v204 = &v184 - v11;
  v12 = sub_2460918F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v184 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](&v184 - v17);
  v195 = &v184 - v18;
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v25 = &v184 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v184 - v27;
  MEMORY[0x28223BE20](v29);
  v36 = &v184 - v35;
  if (a2)
  {
    v37 = sub_245FA3174();
    (*(v13 + 16))(v15, v37, v12);
    v38 = sub_2460918D4();
    v39 = sub_246091FB4();
    v40 = v12;
    v41 = v13;
    if (os_log_type_enabled(v38, v39))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v209 = v43;
      *v42 = 136380675;
      *(v42 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, &v209);
      _os_log_impl(&dword_245F8A000, v38, v39, "ObjectCaptureSession.%{private}s: Plane filtering is not supported in area mode!", v42, 0xCu);
      sub_245F8E6F4(v43);
      MEMORY[0x24C1989D0](v43, -1, -1);
      MEMORY[0x24C1989D0](v42, -1, -1);
    }

    (*(v41 + 8))(v15, v40);
    *v200 = 0;
    return sub_24604EE90();
  }

  v193 = v30;
  v194 = v31;
  v192 = v34;
  v189 = v32;
  v190 = v33;
  v203 = v13;
  v196 = v12;
  v44 = &a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureOptions];
  *v44 = a2 & 0x100;
  v44[1] = a3;
  v199 = v44;
  sub_24608FCB8();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  v45 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager;
  v46 = *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager];
  if (v46)
  {
    v47 = *(*v46 + 280);

    v47(v48);
  }

  sub_24604F1F0();
  *&a4[v45] = 0;

  *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelIntegrationManager] = 0;

  v49 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformScanExtent;
  a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformScanExtent] = 0;
  sub_246053240();
  v51 = v50;
  v52 = *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession];
  v191 = v51;
  result = [v52 runWithConfiguration_options_];
  if (*v199 == 2)
  {
    __break(1u);
    goto LABEL_54;
  }

  v54 = sub_245F92B24();
  if ((v54 & 0x100000000) != 0)
  {
    v55 = 0.005;
    v58 = v196;
    v64 = sub_245F92BFC();
    if ((v64 & 0x100000000) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v188 = v49;
    v55 = *&v54;
    v56 = sub_245FA3174();
    v57 = v203;
    v58 = v196;
    (*(v203 + 16))(v36, v56, v196);
    v59 = sub_2460918D4();
    v60 = sub_246091FC4();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v209 = v62;
      *v61 = 136380931;
      *(v61 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, &v209);
      *(v61 + 12) = 2050;
      *(v61 + 14) = v55;
      _os_log_impl(&dword_245F8A000, v59, v60, "ObjectCaptureSession.%{private}s: Using initial voxel size for mesh refinement set by user default: %{public}f", v61, 0x16u);
      sub_245F8E6F4(v62);
      MEMORY[0x24C1989D0](v62, -1, -1);
      v63 = v61;
      v58 = v196;
      MEMORY[0x24C1989D0](v63, -1, -1);
    }

    (*(v57 + 8))(v36, v58);
    v49 = v188;
    v64 = sub_245F92BFC();
    if ((v64 & 0x100000000) != 0)
    {
LABEL_12:
      v65 = 0.005;
      v66 = v203;
      v67 = sub_245F92CD4();
      if ((v67 & 0x100000000) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }
  }

  v65 = *&v64;
  v80 = sub_245FA3174();
  v66 = v203;
  (*(v203 + 16))(v28, v80, v58);
  v81 = sub_2460918D4();
  v82 = sub_246091FC4();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *&v209 = v84;
    *v83 = 136380931;
    *(v83 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, &v209);
    *(v83 + 12) = 2050;
    *(v83 + 14) = v65;
    _os_log_impl(&dword_245F8A000, v81, v82, "ObjectCaptureSession.%{private}s: Using voxel size increment for mesh refinement set by user default: %{public}f", v83, 0x16u);
    sub_245F8E6F4(v84);
    v85 = v84;
    v58 = v196;
    MEMORY[0x24C1989D0](v85, -1, -1);
    MEMORY[0x24C1989D0](v83, -1, -1);
  }

  (*(v66 + 8))(v28, v58);
  v67 = sub_245F92CD4();
  if ((v67 & 0x100000000) != 0)
  {
LABEL_13:
    v68 = 0.015;
    v69 = sub_245F92A20();
    if ((v69 & 0x100000000) != 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    v91 = *&v69;
    v92 = sub_245FA3174();
    v93 = *(v66 + 16);
    v94 = v66;
    v95 = v58;
    v96 = v194;
    v93(v194, v92, v95);
    v97 = sub_2460918D4();
    v98 = sub_246091FB4();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *&v209 = v100;
      *v99 = 136380931;
      *(v99 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, &v209);
      *(v99 + 12) = 2048;
      *(v99 + 14) = v91;
      _os_log_impl(&dword_245F8A000, v97, v98, "ObjectCaptureSession.%{private}s: Using voxel size %fm read from ARKit scene reconstruction user defaults. Disabled automatic scan extent switching in area mode mesh\nmanager! Remove com.apple.recon3d.meshing.sdf_config.voxel_size or com.apple.arkit.sceneReconstruction.voxelSize user default to enable automatic scan extent switching.", v99, 0x16u);
      sub_245F8E6F4(v100);
      MEMORY[0x24C1989D0](v100, -1, -1);
      MEMORY[0x24C1989D0](v99, -1, -1);
    }

    (*(v94 + 8))(v96, v95);
    v58 = v95;
    result = OCMetalDevice();
    if (result)
    {
      v101 = result;
      result = sub_245F929D0();
      if (*v199 != 2)
      {
        v66 = v94;
        v102 = *result;
        v73 = v199[1];
        v74 = (*v199 >> 8) & 1;
        v78 = sub_245FB20F8();
        LOBYTE(v209) = 0;
        v76 = LODWORD(v91);
        v77 = v101;
        v79 = v102;
        goto LABEL_29;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    goto LABEL_55;
  }

LABEL_21:
  v68 = *&v67;
  v86 = sub_245FA3174();
  (*(v66 + 16))(v25, v86, v58);
  v87 = sub_2460918D4();
  v88 = sub_246091FC4();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *&v209 = v90;
    *v89 = 136380931;
    *(v89 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, &v209);
    *(v89 + 12) = 2050;
    *(v89 + 14) = v65;
    _os_log_impl(&dword_245F8A000, v87, v88, "ObjectCaptureSession.%{private}s: Using mesh refinement voxel size scan extent threshold set by user default: %{public}f", v89, 0x16u);
    sub_245F8E6F4(v90);
    MEMORY[0x24C1989D0](v90, -1, -1);
    MEMORY[0x24C1989D0](v89, -1, -1);
  }

  (*(v66 + 8))(v25, v58);
  v69 = sub_245F92A20();
  if ((v69 & 0x100000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  result = OCMetalDevice();
  if (!result)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v70 = result;
  v71 = a4[v49];
  result = sub_245F929D0();
  if (*v199 == 2)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v72 = *result;
  v73 = v199[1];
  v74 = (*v199 >> 8) & 1;
  v75 = sub_245FC5DA8();
  v76 = v75 | ((HIDWORD(v75) & 1) << 32);
  v77 = v70;
  v78 = v71;
  v79 = v72;
LABEL_29:
  sub_245FB2100(v77, v76, v78, v79, v74, v73, 1, 400000, v207, v55, v65, v68);
  v214[0] = v207[0];
  v214[1] = v207[1];
  v214[2] = v207[2];
  v215 = v208;
  type metadata accessor for FreeformMeshManager(0);
  sub_245FC4950(v207, &v209);
  v103 = sub_245FB2314(v214);
  v104 = v204;
  if (!v103)
  {
    v133 = sub_245FA3174();
    v134 = v193;
    (*(v66 + 16))(v193, v133, v58);
    v135 = sub_2460918D4();
    v136 = sub_246091FB4();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *&v209 = v138;
      *v137 = 136380675;
      *(v137 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, &v209);
      _os_log_impl(&dword_245F8A000, v135, v136, "ObjectCaptureSession.%{private}s: Failed to initialize MeshManager in area mode!", v137, 0xCu);
      sub_245F8E6F4(v138);
      MEMORY[0x24C1989D0](v138, -1, -1);
      MEMORY[0x24C1989D0](v137, -1, -1);

      sub_245FC4988(v207);
    }

    else
    {
      sub_245FC4988(v207);
    }

    (*(v66 + 8))(v134, v58);
    *v200 = 0;
    return sub_24604EE90();
  }

  v105 = v103;
  *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_meshManager] = v103;
  swift_retain_n();

  v106 = *(*v105 + 168);
  v107 = swift_unknownObjectRetain();
  v106(v107, &off_2858E1C98);

  v206 = 1;
  v211 = 0u;
  v212 = 0u;
  v210 = 0u;
  v209 = 0u;
  v213 = 1;
  sub_246044B58(&v209);
  sub_246079C60();
  v108 = *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBoxAnchor];
  *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBoxAnchor] = 0;

  sub_246044C40();
  sub_2460917A4();
  v185 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager;
  v109 = *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager];
  if (v109)
  {
    v110 = *(*v109 + 152);

    v110(v111);
  }

  v187 = v105;
  v112 = sub_245FA3174();
  v113 = *(v66 + 16);
  v114 = v66;
  v115 = v192;
  v199 = v112;
  v193 = v113;
  v194 = v66 + 16;
  v113(v192);
  v116 = sub_2460918D4();
  v117 = sub_246091FA4();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    *&v209 = v188;
    *v118 = 136380931;
    *(v118 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, &v209);
    *(v118 + 12) = 2082;
    sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_246096460;
    swift_beginAccess();
    v120 = v202;
    sub_2460917A4();
    sub_2460917B4();
    v122 = v121;
    v123 = v58;
    v124 = v197;
    v125 = *(v197 + 8);
    v186 = v117;
    v126 = v198;
    v125(v120, v198);
    v127 = MEMORY[0x277D83A80];
    *(v119 + 56) = MEMORY[0x277D839F8];
    *(v119 + 64) = v127;
    *(v119 + 32) = v122 * 1000.0;
    v128 = sub_246091C24();
    v130 = sub_245F8D3C0(v128, v129, &v209);

    *(v118 + 14) = v130;
    v104 = v204;
    _os_log_impl(&dword_245F8A000, v116, v186, "ObjectCaptureSession.%{private}s: motion manager init take time = %{public}s ms", v118, 0x16u);
    v131 = v188;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v131, -1, -1);
    MEMORY[0x24C1989D0](v118, -1, -1);

    v132 = v192;
    v192 = *(v203 + 8);
    v192(v132, v123);
  }

  else
  {

    v192 = *(v114 + 8);
    v192(v115, v58);
    v123 = v58;
    v124 = v197;
    v126 = v198;
    v120 = v202;
  }

  sub_2460917A4();
  swift_beginAccess();
  v188 = *(v124 + 40);
  v188(v104, v120, v126);
  sub_24604F680();
  v139 = v190;
  v193(v190, v199, v123);
  v140 = sub_2460918D4();
  v186 = sub_246091FA4();
  if (os_log_type_enabled(v140, v186))
  {
    v141 = v124;
    v142 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    *&v209 = v143;
    *v142 = 136380931;
    *(v142 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, &v209);
    *(v142 + 12) = 2082;
    sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
    v144 = swift_allocObject();
    *(v144 + 16) = xmmword_246096460;
    sub_2460917A4();
    v145 = v140;
    sub_2460917B4();
    v147 = v146;
    (*(v141 + 8))(v202, v198);
    v148 = MEMORY[0x277D83A80];
    *(v144 + 56) = MEMORY[0x277D839F8];
    *(v144 + 64) = v148;
    *(v144 + 32) = v147 * 1000.0;
    v149 = sub_246091C24();
    v151 = sub_245F8D3C0(v149, v150, &v209);

    *(v142 + 14) = v151;
    v104 = v204;
    _os_log_impl(&dword_245F8A000, v140, v186, "ObjectCaptureSession.%{private}s: Camera control init takes time = %{public}s ms", v142, 0x16u);
    swift_arrayDestroy();
    v152 = v196;
    MEMORY[0x24C1989D0](v143, -1, -1);
    v153 = v142;
    v120 = v202;
    v126 = v198;
    MEMORY[0x24C1989D0](v153, -1, -1);

    v154 = v139;
    v155 = v152;
    v192(v154, v152);
  }

  else
  {

    v192(v139, v123);
    v155 = v123;
  }

  sub_2460917A4();
  result = (v188)(v104, v120, v126);
  if (a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp + 8])
  {
    v156 = v189;
    v193(v189, v199, v155);
    v157 = sub_2460918D4();
    v158 = sub_246091FB4();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      *&v209 = v160;
      *v159 = 136380675;
      *(v159 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, &v209);
      _os_log_impl(&dword_245F8A000, v157, v158, "ObjectCaptureSession.%{private}s: Capture manager couldn't initialize because reference timestamp is nil. Will try again after getting reference timestamp.", v159, 0xCu);
      sub_245F8E6F4(v160);
      MEMORY[0x24C1989D0](v160, -1, -1);
      MEMORY[0x24C1989D0](v159, -1, -1);
    }

    v192(v156, v155);
    goto LABEL_46;
  }

  v161 = *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl];
  if (v161)
  {
    v162 = *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp];
    type metadata accessor for CaptureManager();
    LOBYTE(v205[0]) = 1;
    v209 = 0u;
    v210 = 0u;
    v211 = 0u;
    v212 = 0u;
    v213 = 1;
    v163 = *&a4[v185];
    v164 = *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];

    v165 = v164;

    *&a4[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager] = sub_245FCBC94(&v209, v161, v163, v165, v162);

LABEL_46:
    v166 = v195;
    v193(v195, v199, v155);
    v167 = sub_2460918D4();
    v168 = sub_246091FA4();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      v205[0] = v199;
      *v169 = 136380931;
      *(v169 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, v205);
      *(v169 + 12) = 2082;
      sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
      v170 = swift_allocObject();
      *(v170 + 16) = xmmword_246096460;
      v171 = v202;
      sub_2460917A4();
      v172 = v204;
      sub_2460917B4();
      v174 = v173;
      v175 = v197;
      v176 = v171;
      v177 = v198;
      (*(v197 + 8))(v176, v198);
      v178 = MEMORY[0x277D83A80];
      *(v170 + 56) = MEMORY[0x277D839F8];
      *(v170 + 64) = v178;
      *(v170 + 32) = v174 * 1000.0;
      v179 = sub_246091C24();
      v181 = sub_245F8D3C0(v179, v180, v205);

      *(v169 + 14) = v181;
      _os_log_impl(&dword_245F8A000, v167, v168, "ObjectCaptureSession.%{private}s: Init CaptureManager took = %{public}s ms", v169, 0x16u);
      v182 = v199;
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v182, -1, -1);
      MEMORY[0x24C1989D0](v169, -1, -1);

      v192(v195, v196);
    }

    else
    {

      v192(v166, v155);
      v175 = v197;
      v177 = v198;
      v172 = v204;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_246091984();

    v183 = v205[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v205[0] = 15;
    a4;
    sub_246091994();
    v205[0] = v183;
    sub_246036D70(v205);

    sub_245FC4988(v207);
    sub_246077B30(v183);
    (*(v175 + 8))(v172, v177);
    *v200 = 1;
    return sub_24604EE90();
  }

LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_24604EE90()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2460917D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_246096460;
  sub_2460917B4();
  v9 = MEMORY[0x277D83A80];
  *(v8 + 56) = MEMORY[0x277D839F8];
  *(v8 + 64) = v9;
  *(v8 + 32) = v10 * 1000.0;
  v11 = sub_246091C24();
  v13 = v12;
  v14 = sub_245FA3174();
  (*(v1 + 16))(v3, v14, v0);

  v15 = sub_2460918D4();
  v16 = sub_246091FA4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v0;
    v18 = v17;
    v19 = swift_slowAlloc();
    v24 = v4;
    v20 = v19;
    v26 = v19;
    *v18 = 136380931;
    *(v18 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A4980, &v26);
    *(v18 + 12) = 2082;
    v21 = sub_245F8D3C0(v11, v13, &v26);

    *(v18 + 14) = v21;
    _os_log_impl(&dword_245F8A000, v15, v16, "ObjectCaptureSession.%{private}s: startCapturing in area mode took time = %{public}s ms", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v20, -1, -1);
    MEMORY[0x24C1989D0](v18, -1, -1);

    (*(v1 + 8))(v3, v25);
    return (*(v5 + 8))(v7, v24);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24604F1F0()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v32 = sub_2460917D4();
  v9 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  v12 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurface;
  swift_beginAccess();
  v13 = *(v1 + v12);
  if (v13)
  {
    if (OCProxySurfaceDestroy())
    {
      v14 = sub_245FA3280();
      (*(v3 + 16))(v8, v14, v2);
      v15 = sub_2460918D4();
      v16 = sub_246091FB4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v31 = v9;
        v18 = v17;
        v19 = swift_slowAlloc();
        *&v33[0] = v19;
        *v18 = 136380675;
        *(v18 + 4) = sub_245F8D3C0(0xD000000000000016, 0x80000002460A4110, v33);
        _os_log_impl(&dword_245F8A000, v15, v16, "ObjectCaptureSession.%{private}s: Failed to destroy proxy surface!", v18, 0xCu);
        sub_245F8E6F4(v19);
        MEMORY[0x24C1989D0](v19, -1, -1);
        v9 = v31;
        MEMORY[0x24C1989D0](v18, -1, -1);
      }

      (*(v3 + 8))(v8, v2);
    }

    v20 = sub_245FA3280();
    (*(v3 + 16))(v5, v20, v2);
    v21 = sub_2460918D4();
    v22 = sub_246091FC4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v33[0] = v24;
      *v23 = 136380675;
      *(v23 + 4) = sub_245F8D3C0(0xD000000000000016, 0x80000002460A4110, v33);
      _os_log_impl(&dword_245F8A000, v21, v22, "ObjectCaptureSession.%{private}s: Successfully stopped voxel integration session.", v23, 0xCu);
      sub_245F8E6F4(v24);
      MEMORY[0x24C1989D0](v24, -1, -1);
      MEMORY[0x24C1989D0](v23, -1, -1);
    }

    v13 = (*(v3 + 8))(v5, v2);
  }

  (*((*MEMORY[0x277D85000] & *v1) + 0x410))(&v34, v13);
  if (v34 == 14)
  {
    sub_246077B30(0xE);
    sub_246077B30(0xE);
  }

  else
  {
    sub_246077B30(v34);
    sub_246077B30(0xE);
    v25 = (v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pointCloud);
    swift_beginAccess();
    v26 = v25[3];
    v33[2] = v25[2];
    v33[3] = v26;
    v27 = v25[5];
    v33[4] = v25[4];
    v33[5] = v27;
    v28 = v25[1];
    v33[0] = *v25;
    v33[1] = v28;
    *v25 = 0u;
    v25[1] = 0u;
    v25[2] = 0u;
    v25[3] = 0u;
    v25[4] = 0u;
    v25[5] = 0u;
    sub_245F8E744(v33, &qword_27EE3A978, &qword_246099C08);
  }

  sub_24605C798();
  return (*(v9 + 8))(v11, v32);
}

void sub_24604F680()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v67 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v66 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v66 - v9;
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v66 - v13;
  v15 = *&v0[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession];
  v16 = [v15 configuration];
  if (!v16)
  {
    __break(1u);
    goto LABEL_23;
  }

  v66 = v7;
  v69 = v2;

  v17 = [v15 configuration];
  if (!v17)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = v17;
  type metadata accessor for CameraControl();
  v19 = [v18 videoFormat];

  v20 = [v19 device];
  v21 = sub_246032A80(v20);
  v22 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl;
  *&v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl] = v21;

  (*(*v21 + 280))(v23);

  v24 = sub_245FA3174();
  v25 = *(v3 + 16);
  v70 = v24;
  v71 = v25;
  v26 = v69;
  (v25)(v14);
  v27 = sub_2460918D4();
  v28 = sub_246091FA4();
  v29 = os_log_type_enabled(v27, v28);
  v72 = v3;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v73 = v31;
    *v30 = 136380675;
    *(v30 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A49A0, &v73);
    _os_log_impl(&dword_245F8A000, v27, v28, "ObjectCaptureSession.%{private}s: Camera auto white balance is locked.", v30, 0xCu);
    sub_245F8E6F4(v31);
    MEMORY[0x24C1989D0](v31, -1, -1);
    MEMORY[0x24C1989D0](v30, -1, -1);

    v32 = *(v72 + 8);
  }

  else
  {

    v32 = *(v3 + 8);
  }

  v32(v14, v26);
  v33 = *&v1[v22];
  if (!v33)
  {
    goto LABEL_24;
  }

  v34 = *(*v33 + 200);

  v34(0);

  v35 = *&v1[v22];
  if (!v35)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v68 = v32;
  v36 = *(*v35 + 208);

  v36(v37);

  v38 = *&v1[v22];
  if (!v38)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v39 = *(*v38 + 304);

  v14 = v39(v40);

  v71(v10, v70, v26);
  v41 = sub_2460918D4();
  v42 = sub_246091FC4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v73 = v44;
    *v43 = 136380931;
    *(v43 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A49A0, &v73);
    *(v43 + 12) = 1026;
    *(v43 + 14) = v14 & 1;
    _os_log_impl(&dword_245F8A000, v41, v42, "ObjectCaptureSession.%{private}s: Camera face driven AF and AE disabled = %{BOOL,public}d", v43, 0x12u);
    sub_245F8E6F4(v44);
    MEMORY[0x24C1989D0](v44, -1, -1);
    MEMORY[0x24C1989D0](v43, -1, -1);
  }

  v45 = v68;
  v68(v10, v26);
  v46 = v26;
  v47 = sub_245F92510();
  if (v48)
  {
    goto LABEL_17;
  }

  v49 = *&v1[v22];
  if (v49)
  {
    v50 = *&v47;
    v51 = *(*v49 + 264);

    LOBYTE(v51) = v51(v52, v50);

    if (v51)
    {
      v53 = v66;
      v71(v66, v70, v26);
      v14 = v1;
      v54 = sub_2460918D4();
      v55 = sub_246091FC4();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v73 = v57;
        *v56 = 136380931;
        *(v56 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A49A0, &v73);
        *(v56 + 12) = 2050;
        v58 = *&v1[v22];
        if (v58)
        {

          v59 = (*(*v58 + 184))();

          *(v56 + 14) = v59;
          _os_log_impl(&dword_245F8A000, v54, v55, "ObjectCaptureSession.%{private}s: Camera active max exposure duration successfully set to %{public}f seconds", v56, 0x16u);
          sub_245F8E6F4(v57);
          MEMORY[0x24C1989D0](v57, -1, -1);
          MEMORY[0x24C1989D0](v56, -1, -1);

          v68(v66, v69);
          return;
        }

        goto LABEL_28;
      }

      v65 = v53;
LABEL_20:
      v45(v65, v46);
      return;
    }

LABEL_17:
    v60 = v67;
    v71(v67, v70, v26);
    v61 = sub_2460918D4();
    v62 = sub_246091FC4();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v73 = v64;
      *v63 = 136380675;
      *(v63 + 4) = sub_245F8D3C0(0xD000000000000014, 0x80000002460A49A0, &v73);
      _os_log_impl(&dword_245F8A000, v61, v62, "ObjectCaptureSession.%{private}s: Camera active max exposure duration un-specified, use auto exposure control.", v63, 0xCu);
      sub_245F8E6F4(v64);
      MEMORY[0x24C1989D0](v64, -1, -1);
      MEMORY[0x24C1989D0](v63, -1, -1);
    }

    v65 = v60;
    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
LABEL_28:

  __break(1u);
}

uint64_t sub_24604FEAC(unsigned __int8 *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v52 = a4;
  v53 = a5;
  v50 = a2;
  v51 = a3;
  v54 = sub_2460918F4();
  v7 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2460917D4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  v17 = *(a1 + 1);
  result = (*((*MEMORY[0x277D85000] & *v5) + 0x4A8))(v12);
  if (result)
  {
    __break(1u);
  }

  else
  {
    v46 = v5;
    v47 = v15;
    v49 = v16;
    v48 = v14;
    sub_2460917A4();
    v19 = sub_245FA3174();
    (*(v7 + 16))(v9, v19, v54);
    v20 = sub_2460918D4();
    v21 = sub_246091FC4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v45 = v10;
      v23 = v22;
      v24 = swift_slowAlloc();
      v44 = v11;
      v43 = v24;
      v59[0] = v24;
      *v23 = 136381187;
      *(v23 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, v59);
      *(v23 + 12) = 2082;
      v55 = v50;
      v56 = v51;
      v57 = v52;
      v58 = v53;
      type metadata accessor for simd_float4x4(0);
      v25 = sub_246091C54();
      v26 = v17;
      v28 = sub_245F8D3C0(v25, v27, v59);

      *(v23 + 14) = v28;
      *(v23 + 22) = 2082;
      v29 = v47;
      v55.n128_u8[0] = v47;
      v30 = v49;
      v55.n128_u8[1] = v49;
      v55.n128_u64[1] = v17;
      v31 = sub_246091C54();
      v33 = sub_245F8D3C0(v31, v32, v59);

      *(v23 + 24) = v33;
      v17 = v26;
      _os_log_impl(&dword_245F8A000, v20, v21, "ObjectCaptureSession.%{private}s: Called start capturing in object mode with boundingBox = %{public}s and options = %{public}s", v23, 0x20u);
      v34 = v43;
      swift_arrayDestroy();
      v11 = v44;
      MEMORY[0x24C1989D0](v34, -1, -1);
      v35 = v23;
      v10 = v45;
      MEMORY[0x24C1989D0](v35, -1, -1);

      (*(v7 + 8))(v9, v54);
    }

    else
    {

      (*(v7 + 8))(v9, v54);
      v30 = v49;
      v29 = v47;
    }

    sub_24608FCAC();
    OCSignPostsAriadneDbgCode();
    v36 = kdebug_trace();
    MEMORY[0x28223BE20](v36);
    v37 = v48;
    *(&v42 - 12) = v48;
    *(&v42 - 11) = v38;
    *(&v42 - 80) = v29;
    *(&v42 - 79) = v30;
    *(&v42 - 9) = v17;
    v39 = v51;
    *(&v42 - 4) = v50;
    *(&v42 - 3) = v39;
    v40 = v53;
    *(&v42 - 2) = v52;
    *(&v42 - 1) = v40;
    sub_246092044();
    v41 = v55.n128_u8[0];
    (*(v11 + 8))(v37, v10);
    return v41;
  }

  return result;
}

void sub_246050348(uint64_t a1@<X0>, char *a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>, __n128 a6@<Q0>, __n128 a7@<Q1>, __n128 a8@<Q2>, __n128 a9@<Q3>)
{
  v349 = a8;
  v350 = a9;
  v347 = a6;
  v348 = a7;
  v344 = a5;
  v345 = a1;
  v12 = sub_2460917D4();
  v352 = *(v12 - 8);
  v353 = v12;
  MEMORY[0x28223BE20](v12);
  v355 = &v325 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v325 - v15;
  v17 = sub_2460918F4();
  v356 = *(v17 - 8);
  v357 = v17;
  MEMORY[0x28223BE20](v17);
  v335 = &v325 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v330 = &v325 - v20;
  MEMORY[0x28223BE20](v21);
  v329 = &v325 - v22;
  MEMORY[0x28223BE20](v23);
  v332 = &v325 - v24;
  MEMORY[0x28223BE20](v25);
  v336.i64[0] = &v325 - v26;
  MEMORY[0x28223BE20](v27);
  v333.i64[0] = &v325 - v28;
  MEMORY[0x28223BE20](v29);
  v343.i64[0] = &v325 - v30;
  MEMORY[0x28223BE20](v31);
  v338.i64[0] = &v325 - v32;
  MEMORY[0x28223BE20](v33);
  v351 = &v325 - v34;
  MEMORY[0x28223BE20](v35);
  v337.i64[0] = &v325 - v36;
  MEMORY[0x28223BE20](v37);
  v331 = &v325 - v38;
  MEMORY[0x28223BE20](v39);
  v339.i64[0] = &v325 - v40;
  MEMORY[0x28223BE20](v41);
  v340.i64[0] = &v325 - v42;
  MEMORY[0x28223BE20](v43);
  v45 = &v325 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v325 - v47;
  v50 = MEMORY[0x28223BE20](v49);
  v52 = &v325 - v51;
  v53 = *((*MEMORY[0x277D85000] & *a2) + 0x410);
  v53(&v391, v50);
  v359 = a2;
  if (v391 == 14)
  {
    sub_246077B30(0xE);
    v54 = 14;
  }

  else
  {
    sub_246077B30(v391);
    sub_246077B30(0xE);
    (v53)(&v391);
    if (v391 != 12)
    {
      sub_246077B30(v391);
      sub_246077B30(0xC);
      v231 = sub_245FA3174();
      v232 = v356;
      v233 = v357;
      (v356[1].i64[0])(v52, v231, v357);
      v234 = a2;
      v235 = sub_2460918D4();
      v236 = sub_246091FB4();

      if (os_log_type_enabled(v235, v236))
      {
        v237 = swift_slowAlloc();
        v238 = swift_slowAlloc();
        *&v391 = v238;
        *v237 = 136380931;
        *(v237 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v391);
        *(v237 + 12) = 2082;
        LODWORD(v361) = v236;
        (v53)(&v386);
        v239 = sub_246091C54();
        v241 = sub_245F8D3C0(v239, v240, &v391);

        *(v237 + 14) = v241;
        _os_log_impl(&dword_245F8A000, v235, v361, "ObjectCaptureSession.%{private}s: Start object-centric capturing expected the state to be .detecting or .ready but got %{public}s.\nNot starting capture!", v237, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v238, -1, -1);
        MEMORY[0x24C1989D0](v237, -1, -1);

        (v232->i64[1])(v52, v357);
      }

      else
      {

        (v232->i64[1])(v52, v233);
      }

      goto LABEL_79;
    }

    sub_246077B30(0xC);
    v54 = 12;
  }

  sub_246077B30(v54);
  (v53)(&v391);
  if (v391 == 12)
  {
    sub_246077B30(0xC);
    sub_246077B30(0xC);
    if (a3)
    {
      v55 = sub_245FA3174();
      v57 = v356;
      v56 = v357;
      (v356[1].i64[0])(v48, v55, v357);
      v58 = sub_2460918D4();
      v59 = sub_246091FB4();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *&v391 = v61;
        *v60 = 136380675;
        *(v60 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v391);
        _os_log_impl(&dword_245F8A000, v58, v59, "ObjectCaptureSession.%{private}s: Plane filtering is not supported when starting object-centric capturing from .ready state!", v60, 0xCu);
        sub_245F8E6F4(v61);
        MEMORY[0x24C1989D0](v61, -1, -1);
        MEMORY[0x24C1989D0](v60, -1, -1);
      }

      (v57->i64[1])(v48, v56);
      goto LABEL_79;
    }
  }

  else
  {
    sub_246077B30(v391);
    sub_246077B30(0xC);
  }

  v62 = v359;
  v63 = &v359[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureOptions];
  *v63 = a3 & 0x101;
  *(v63 + 1) = a4;
  v328 = v63;
  sub_24608FCB8();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  v64 = sub_2460917A4();
  OCBoundingBox.init(transform:)(&v386, v64);
  v388 = 0;
  v391 = v386;
  v392 = *v387;
  v393 = *&v387[4];
  v394 = *&v387[8];
  LOBYTE(v395) = 0;
  sub_246044B58(&v391);
  v65 = &v62[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox];
  if ((v62[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBox + 64] & 1) == 0)
  {
    v67 = v65[2];
    v66 = v65[3];
    v68 = v65[1];
    v391 = *v65;
    v392 = v68;
    v393 = v67;
    v394 = v66;
    sub_24608585C(*&v62[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_staticSegmentID]);
  }

  v334.i64[0] = v65;
  v327 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager;
  v69 = *&v62[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager];
  v70 = v357;
  if (v69)
  {
    v71 = *(*v69 + 152);

    v71(v72);
  }

  v73 = objc_allocWithZone(type metadata accessor for ObjectCaptureSession.BoundingBoxAnchor());
  v74 = [v73 initWithTransform_];
  v75 = v359;
  sub_246079C60();
  v76 = *&v75[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBoxAnchor];
  *&v75[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBoxAnchor] = v74;
  v77 = v74;

  sub_246044C40();
  v78 = sub_245FA3174();
  v79 = v356;
  v80 = v356[1].i64[0];
  v360 = v78;
  v361 = v80;
  v354 = v356 + 1;
  (v80)(v45);
  v81 = sub_2460918D4();
  v82 = sub_246091FA4();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v358 = swift_slowAlloc();
    *&v391 = v358;
    *v83 = 136380931;
    *(v83 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v391);
    *(v83 + 12) = 2082;
    sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_246096460;
    swift_beginAccess();
    v346 = v45;
    v85 = v355;
    sub_2460917A4();
    sub_2460917B4();
    v87 = v86;
    v88 = v352;
    v89 = v353;
    (*(v352 + 8))(v85, v353);
    v90 = MEMORY[0x277D83A80];
    *(v84 + 56) = MEMORY[0x277D839F8];
    *(v84 + 64) = v90;
    *(v84 + 32) = v87 * 1000.0;
    v91 = sub_246091C24();
    v93 = sub_245F8D3C0(v91, v92, &v391);

    *(v83 + 14) = v93;
    _os_log_impl(&dword_245F8A000, v81, v82, "ObjectCaptureSession.%{private}s: BBox and motion manager init take time = %{public}s ms", v83, 0x16u);
    v94 = v358;
    swift_arrayDestroy();
    v95 = v94;
    v96 = v357;
    MEMORY[0x24C1989D0](v95, -1, -1);
    MEMORY[0x24C1989D0](v83, -1, -1);

    v358 = v356->i64[1];
    v358(v346, v96);
  }

  else
  {

    v358 = v79->i64[1];
    v358(v45, v70);
    v88 = v352;
    v89 = v353;
    v85 = v355;
  }

  sub_2460917A4();
  swift_beginAccess();
  v97 = *(v88 + 40);
  v346 = v16;
  v341 = v97;
  v342 = v88 + 40;
  v97(v16, v85, v89);
  v98 = *&v359[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession];
  v99 = [v98 configuration];
  if (!v99)
  {
    goto LABEL_85;
  }

  v100 = [v98 configuration];
  v101 = v356;
  v89 = v354;
  v102 = v340.i64[0];
  if (!v100)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v103 = v100;
  type metadata accessor for CameraControl();
  v104 = [v103 videoFormat];

  v105 = [v104 device];
  v106 = sub_246032A80(v105);
  v107 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl;
  v108 = v359;
  *&v359[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_cameraControl] = v106;

  (*(*v106 + 280))(v109);

  v110 = v357;
  v361(v102, v360, v357);
  v111 = sub_2460918D4();
  v112 = sub_246091FA4();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *&v391 = v114;
    *v113 = 136380675;
    *(v113 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v391);
    _os_log_impl(&dword_245F8A000, v111, v112, "ObjectCaptureSession.%{private}s: Camera auto white balance is locked.", v113, 0xCu);
    sub_245F8E6F4(v114);
    v115 = v114;
    v89 = v354;
    MEMORY[0x24C1989D0](v115, -1, -1);
    v116 = v113;
    v110 = v357;
    MEMORY[0x24C1989D0](v116, -1, -1);
  }

  v117 = v101;
  v358(v102, v110);
  v118 = *&v108[v107];
  if (!v118)
  {
    goto LABEL_87;
  }

  v119 = v108;
  v120 = *(*v118 + 200);

  v120(0);

  v121 = *&v119[v107];
  if (!v121)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v122 = *(*v121 + 208);

  v122(v123);

  v124 = *&v119[v107];
  if (!v124)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v125 = *(*v124 + 304);

  v127 = v125(v126);

  v128 = v339.i64[0];
  v361(v339.i64[0], v360, v110);
  v129 = sub_2460918D4();
  v130 = sub_246091FC4();
  v131 = v117;
  if (os_log_type_enabled(v129, v130))
  {
    v132 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    *&v391 = v133;
    *v132 = 136380931;
    *(v132 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v391);
    *(v132 + 12) = 1026;
    *(v132 + 14) = v127 & 1;
    _os_log_impl(&dword_245F8A000, v129, v130, "ObjectCaptureSession.%{private}s: Camera face driven AF and AE disabled = %{BOOL,public}d", v132, 0x12u);
    sub_245F8E6F4(v133);
    v134 = v133;
    v89 = v354;
    MEMORY[0x24C1989D0](v134, -1, -1);
    v135 = v132;
    v110 = v357;
    MEMORY[0x24C1989D0](v135, -1, -1);
  }

  v358(v128, v110);
  v136 = v351;
  v137 = sub_245F92510();
  v138 = v355;
  v326 = v107;
  if (v139)
  {
    goto LABEL_33;
  }

  v140 = *&v359[v107];
  if (!v140)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v141 = *&v137;
  v142 = *(*v140 + 264);

  LOBYTE(v142) = v142(v143, v141);

  v136 = v351;
  if ((v142 & 1) == 0)
  {
LABEL_33:
    v151 = v337.i64[0];
    v361(v337.i64[0], v360, v110);
    v152 = sub_2460918D4();
    v153 = sub_246091FC4();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      *&v391 = v155;
      *v154 = 136380675;
      *(v154 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v391);
      _os_log_impl(&dword_245F8A000, v152, v153, "ObjectCaptureSession.%{private}s: Camera active max exposure duration un-specified, use auto exposure control.", v154, 0xCu);
      sub_245F8E6F4(v155);
      v156 = v155;
      v110 = v357;
      MEMORY[0x24C1989D0](v156, -1, -1);
      v157 = v154;
      v136 = v351;
      MEMORY[0x24C1989D0](v157, -1, -1);
    }

    v358(v151, v110);
    goto LABEL_36;
  }

  v144 = v331;
  v361(v331, v360, v110);
  v145 = v359;
  v89 = v359;
  v146 = sub_2460918D4();
  v340.i32[0] = sub_246091FC4();
  if (!os_log_type_enabled(v146, v340.i8[0]))
  {

    v358(v144, v110);
    goto LABEL_36;
  }

  v147 = swift_slowAlloc();
  v148 = swift_slowAlloc();
  *&v391 = v148;
  *v147 = 136380931;
  *(v147 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v391);
  *(v147 + 12) = 2050;
  v149 = *&v145[v107];
  if (v149)
  {

    v150 = (*(*v149 + 184))();

    *(v147 + 14) = v150;
    _os_log_impl(&dword_245F8A000, v146, v340.i8[0], "ObjectCaptureSession.%{private}s: Camera active max exposure duration successfully set to %{public}f seconds", v147, 0x16u);
    sub_245F8E6F4(v148);
    MEMORY[0x24C1989D0](v148, -1, -1);
    MEMORY[0x24C1989D0](v147, -1, -1);

    v131 = v356;
    v110 = v357;
    v358(v331, v357);
    v138 = v355;
    v136 = v351;
LABEL_36:
    v361(v136, v360, v110);
    v158 = sub_2460918D4();
    v159 = v110;
    v160 = sub_246091FA4();
    if (os_log_type_enabled(v158, v160))
    {
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      *&v391 = v162;
      *v161 = 136380931;
      *(v161 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v391);
      *(v161 + 12) = 2082;
      sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
      v163 = swift_allocObject();
      *(v163 + 16) = xmmword_246096460;
      sub_2460917A4();
      v164 = v346;
      sub_2460917B4();
      v166 = v165;
      v167 = v353;
      (*(v352 + 8))(v355, v353);
      v168 = MEMORY[0x277D83A80];
      *(v163 + 56) = MEMORY[0x277D839F8];
      *(v163 + 64) = v168;
      *(v163 + 32) = v166 * 1000.0;
      v169 = sub_246091C24();
      v171 = sub_245F8D3C0(v169, v170, &v391);

      *(v161 + 14) = v171;
      v138 = v355;
      v172 = v356;
      _os_log_impl(&dword_245F8A000, v158, v160, "ObjectCaptureSession.%{private}s: Camera control init takes time = %{public}s ms", v161, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v162, -1, -1);
      MEMORY[0x24C1989D0](v161, -1, -1);

      v89 = v172;
      v358(v351, v159);
      v173 = v359;
      v174 = v159;
    }

    else
    {

      v89 = v131;
      v358(v136, v159);
      v164 = v346;
      v174 = v159;
      v167 = v353;
      v173 = v359;
    }

    sub_2460917A4();
    v341(v164, v138, v167);
    sub_24604F1F0();
    v175 = v173;
    v176 = &v173[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig];
    v386 = *&v173[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig];
    *v387 = *&v173[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 16];
    v177 = *&v173[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 24];
    *&v387[19] = *&v173[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 92];
    *&v387[23] = *&v173[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 108];
    *&v387[27] = *&v173[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 124];
    v387[31] = *&v173[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 140];
    *&v387[3] = *&v173[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 28];
    *&v387[7] = *&v173[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 44];
    *&v387[11] = *&v173[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 60];
    *&v387[15] = *&v173[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceConfig + 76];
    *&v387[2] = v177;
    if (sub_2460818C8(&v386) == 1)
    {
      goto LABEL_90;
    }

    v178 = v338.i64[0];
    v361(v338.i64[0], v360, v174);
    v179 = sub_2460918D4();
    v180 = sub_246091FC4();
    v181 = os_log_type_enabled(v179, v180);
    v182 = v358;
    if (v181)
    {
      v183 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      *&v391 = v184;
      *v183 = 136446466;
      *(v183 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v391);
      *(v183 + 12) = 2050;
      *(v183 + 14) = v177;
      _os_log_impl(&dword_245F8A000, v179, v180, "ObjectCaptureSession.%{public}s: Depth confidence threshold scanning mode = %{public}f", v183, 0x16u);
      sub_245F8E6F4(v184);
      v185 = v184;
      v174 = v357;
      MEMORY[0x24C1989D0](v185, -1, -1);
      MEMORY[0x24C1989D0](v183, -1, -1);
    }

    v182(v178, v174);
    if (*(v334.i64[0] + 64))
    {
      __break(1u);
      goto LABEL_83;
    }

    v358 = v182;
    v187 = *(v334.i64[0] + 32);
    v186 = *(v334.i64[0] + 48);
    v188 = *(v334.i64[0] + 16);
    v391 = *v334.i64[0];
    v392 = v188;
    v393 = v187;
    v394 = v186;
    *v189.f32 = OCBoundingBox.extent.getter();
    sub_246076B44(v175[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__coverageEnabled], v376, v189, v177);
    v383 = v376[6];
    v384 = v376[7];
    v385 = v376[8];
    v379 = v376[2];
    v380 = v376[3];
    v381 = v376[4];
    v382 = v376[5];
    v377 = v376[0];
    v378 = v376[1];
    nullsub_1();
    v190 = v384;
    *(v176 + 6) = v383;
    *(v176 + 7) = v190;
    *(v176 + 8) = v385;
    v191 = v380;
    *(v176 + 2) = v379;
    *(v176 + 3) = v191;
    v192 = v382;
    *(v176 + 4) = v381;
    *(v176 + 5) = v192;
    v193 = v378;
    *v176 = v377;
    *(v176 + 1) = v193;
    v194 = v343.i64[0];
    v89 = v354;
    v361(v343.i64[0], v360, v174);
    v195 = v175;
    v196 = sub_2460918D4();
    v197 = sub_246091FC4();
    v351 = v195;

    if (os_log_type_enabled(v196, v197))
    {
      v198 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *&v367 = v89;
      *v198 = 136380931;
      *(v198 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v367);
      *(v198 + 12) = 2050;
      v199 = *(v176 + 7);
      v397 = *(v176 + 6);
      v398 = v199;
      v399 = *(v176 + 8);
      v200 = *(v176 + 3);
      v393 = *(v176 + 2);
      v394 = v200;
      v201 = *(v176 + 5);
      v395 = *(v176 + 4);
      v396 = v201;
      v202 = *(v176 + 1);
      v391 = *v176;
      v392 = v202;
      if (sub_2460818C8(&v391) == 1)
      {
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      *(v198 + 14) = *(&v393 + 1);
      _os_log_impl(&dword_245F8A000, v196, v197, "ObjectCaptureSession.%{private}s: Voxel dimension = %{public}f", v198, 0x16u);
      sub_245F8E6F4(v89);
      MEMORY[0x24C1989D0](v89, -1, -1);
      MEMORY[0x24C1989D0](v198, -1, -1);

      v203 = v358;
      v358(v343.i64[0], v174);
      v89 = v354;
    }

    else
    {

      v203 = v358;
      v358(v194, v174);
    }

    v204 = *(v176 + 7);
    v373 = *(v176 + 6);
    v374 = v204;
    v375 = *(v176 + 8);
    v205 = *(v176 + 3);
    v369 = *(v176 + 2);
    v370 = v205;
    v206 = *(v176 + 5);
    v371 = *(v176 + 4);
    v372 = v206;
    v207 = *(v176 + 1);
    v367 = *v176;
    v368 = v207;
    if (sub_2460818C8(&v367) == 1)
    {
      goto LABEL_91;
    }

    v397 = v373;
    v398 = v374;
    v399 = v375;
    v393 = v369;
    v394 = v370;
    v395 = v371;
    v396 = v372;
    v391 = v367;
    v392 = v368;
    if (sub_246052D94(&v391))
    {
      v208 = v336.i64[0];
      v361(v336.i64[0], v360, v174);
      v209 = sub_2460918D4();
      v210 = sub_246091FA4();
      if (os_log_type_enabled(v209, v210))
      {
        v211 = swift_slowAlloc();
        v343.i64[0] = swift_slowAlloc();
        *&v362 = v343.i64[0];
        *v211 = 136380931;
        *(v211 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v362);
        *(v211 + 12) = 2082;
        sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
        v212 = swift_allocObject();
        *(v212 + 16) = xmmword_246096460;
        v213 = v355;
        sub_2460917A4();
        v214 = v346;
        sub_2460917B4();
        v216 = v215;
        v217 = v353;
        (*(v352 + 8))(v213, v353);
        v218 = MEMORY[0x277D83A80];
        *(v212 + 56) = MEMORY[0x277D839F8];
        *(v212 + 64) = v218;
        *(v212 + 32) = v216 * 1000.0;
        v219 = sub_246091C24();
        v221 = sub_245F8D3C0(v219, v220, &v362);

        *(v211 + 14) = v221;
        v203 = v358;
        _os_log_impl(&dword_245F8A000, v209, v210, "ObjectCaptureSession.%{private}s: Voxel integration restart takes time = %{public}s ms", v211, 0x16u);
        v222 = v343.i64[0];
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v222, -1, -1);
        MEMORY[0x24C1989D0](v211, -1, -1);

        v203(v336.i64[0], v357);
      }

      else
      {

        v203(v208, v174);
        v217 = v353;
        v213 = v355;
        v214 = v346;
      }

      sub_2460917A4();
      v341(v214, v213, v217);
      v242 = v351;
      sub_24605A078();
      v243 = *&v242[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pgManager];
      v89 = MEMORY[0x277D860B8];
      if (v243)
      {
        v244 = *(v176 + 1);
        v362 = *v176;
        v363 = v244;
        LODWORD(v364[0]) = *(v176 + 8);
        v245 = *(v176 + 9);
        *&v364[7] = *(v176 + 88);
        *&v364[9] = *(v176 + 104);
        *&v364[11] = *(v176 + 120);
        v364[13] = *(v176 + 17);
        *&v364[1] = *(v176 + 40);
        *&v364[3] = *(v176 + 56);
        *&v364[5] = *(v176 + 72);
        *(v364 + 1) = v245;
        if (sub_2460818C8(&v362) == 1)
        {
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v246 = *(*v243 + 736);

        v246(v247, v245);
        if (*(v334.i64[0] + 64))
        {
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        *v400.columns[0].i64 = sub_24602172C(*v334.i64[0], *(v334.i64[0] + 16), *(v334.i64[0] + 32), *(v334.i64[0] + 48), *v89, v89[1], v89[2], v89[3]);
        v401 = __invert_f4(v400);
        v338 = v401.columns[0];
        v339 = v401.columns[1];
        v340 = v401.columns[2];
        v343 = v401.columns[3];
        v248 = (*(*v243 + 728))();
        sub_2460219BC(v248);
        v333 = v249;
        v334 = v250;
        v336 = v251;
        v337 = v252;

        v253 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, v334.f32[0]), v339, *v334.f32, 1), v340, v334, 2), v343, v334, 3);
        v254 = v337;
        v255 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, v336.f32[0]), v339, *v336.f32, 1), v340, v336, 2), v343, v336, 3);
        v256 = v343;
        v257 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, v337.f32[0]), v339, *v337.f32, 1), v340, v337, 2);
        v258 = &v242[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__scaleWorldToObjectTransform];
        *v258 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v338, v333.f32[0]), v339, *v333.f32, 1), v340, v333, 2), v343, v333, 3);
        v258[1] = v253;
        v258[2] = v255;
        v258[3] = vmlaq_laneq_f32(v257, v256, v254, 3);
      }

      v259 = v332;
      v260 = v357;
      v361(v332, v360, v357);
      v261 = sub_2460918D4();
      v89 = sub_246091FA4();
      if (os_log_type_enabled(v261, v89))
      {
        v262 = swift_slowAlloc();
        v263 = swift_slowAlloc();
        *&v362 = v263;
        *v262 = 136380931;
        *(v262 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v362);
        *(v262 + 12) = 2082;
        sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
        v264 = swift_allocObject();
        *(v264 + 16) = xmmword_246096460;
        sub_2460917A4();
        v265 = v259;
        v266 = v346;
        sub_2460917B4();
        v268 = v267;
        v269 = v353;
        (*(v352 + 8))(v355, v353);
        v270 = MEMORY[0x277D83A80];
        *(v264 + 56) = MEMORY[0x277D839F8];
        *(v264 + 64) = v270;
        *(v264 + 32) = v268 * 1000.0;
        v271 = sub_246091C24();
        v273 = sub_245F8D3C0(v271, v272, &v362);
        v274 = v269;

        *(v262 + 14) = v273;
        v275 = v357;
        v203 = v358;
        _os_log_impl(&dword_245F8A000, v261, v89, "ObjectCaptureSession.%{private}s: Init PGManager if needed takes time = %{public}s ms", v262, 0x16u);
        swift_arrayDestroy();
        v276 = v263;
        v213 = v355;
        MEMORY[0x24C1989D0](v276, -1, -1);
        MEMORY[0x24C1989D0](v262, -1, -1);

        v203(v265, v275);
        v277 = v359;
      }

      else
      {

        v203(v259, v260);
        v274 = v353;
        v266 = v346;
        v277 = v359;
        v275 = v260;
      }

      sub_2460917A4();
      v341(v266, v213, v274);
      v278 = v351;
      if ((v351[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp + 8] & 1) == 0)
      {
        v279 = *&v277[v326];
        if (!v279)
        {
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v280 = *&v351[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp];
        type metadata accessor for CaptureManager();
        v366 = 0;
        v389[0] = v347;
        v389[1] = v348;
        v389[2] = v349;
        v389[3] = v350;
        v390 = 0;
        v281 = *&v277[v327];
        v282 = *&v278[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];

        v283 = v282;

        v284 = sub_245FCBC94(v389, v279, v281, v283, v280);
        v89 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager;
        *&v278[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_captureManager] = v284;

        if (*v328 != 2)
        {
          v285 = v275;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_246091984();

          v286 = v362;
          swift_getKeyPath();
          swift_getKeyPath();
          *&v362 = 15;
          v287 = v278;
          sub_246091994();
          *&v362 = v286;
          sub_246036D70(&v362);
          sub_246077B30(v286);
          OCVoxelCloud.init(voxels:transform:)(&v365, MEMORY[0x277D84F90], v288);
          v289 = v365.transform.columns[0];
          v290 = v365.transform.columns[1];
          v291 = v365.transform.columns[2];
          v292 = v365.transform.columns[3];
          v293 = &v287[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud];
          v294 = *&v287[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 16];
          v295 = *&v287[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 32];
          v296 = *&v287[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 64];
          *&v364[2] = *&v287[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud + 48];
          *&v364[4] = v296;
          *v364 = v295;
          v362 = *&v287[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingVoxelCloud];
          v363 = v294;
          v293->i64[0] = v365.voxels._rawValue;
          v293[1] = v289;
          v293[2] = v290;
          v293[3] = v291;
          v293[4] = v292;
          sub_245F8E744(&v362, &qword_27EE3AB10, &qword_246096678);
          v297 = *(v89->i64 + v278);
          if (v297 && (v298 = swift_allocObject(), *(v298 + 16) = v287, v299 = *(*v297 + 488), v300 = v287, , v301 = v299(1, sub_246082E24, v298), , , (v301 & 1) != 0))
          {
            v302 = v329;
            v361(v329, v360, v285);
            v303 = sub_2460918D4();
            v304 = sub_246091FC4();
            v305 = os_log_type_enabled(v303, v304);
            v306 = v355;
            if (v305)
            {
              v307 = swift_slowAlloc();
              v308 = swift_slowAlloc();
              v365.voxels._rawValue = v308;
              *v307 = 136380675;
              *(v307 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v365);
              v309 = "ObjectCaptureSession.%{private}s: AutomaticCapture: Take first shot success.";
LABEL_73:
              _os_log_impl(&dword_245F8A000, v303, v304, v309, v307, 0xCu);
              sub_245F8E6F4(v308);
              MEMORY[0x24C1989D0](v308, -1, -1);
              MEMORY[0x24C1989D0](v307, -1, -1);
            }
          }

          else
          {
            v302 = v330;
            v361(v330, v360, v285);
            v303 = sub_2460918D4();
            v304 = sub_246091FB4();
            v310 = os_log_type_enabled(v303, v304);
            v306 = v355;
            if (v310)
            {
              v307 = swift_slowAlloc();
              v308 = swift_slowAlloc();
              v365.voxels._rawValue = v308;
              *v307 = 136380675;
              *(v307 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v365);
              v309 = "ObjectCaptureSession.%{private}s: AutomaticCapture: Take first shot fail!";
              goto LABEL_73;
            }
          }

          v203(v302, v285);
          v311 = v335;
          v361(v335, v360, v285);
          v312 = sub_2460918D4();
          v313 = sub_246091FA4();
          if (os_log_type_enabled(v312, v313))
          {
            v314 = swift_slowAlloc();
            v315 = swift_slowAlloc();
            v365.voxels._rawValue = v315;
            *v314 = 136380931;
            *(v314 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v365);
            *(v314 + 12) = 2082;
            sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
            v316 = swift_allocObject();
            *(v316 + 16) = xmmword_246096460;
            sub_2460917A4();
            v317 = v346;
            sub_2460917B4();
            v319 = v318;
            v320 = v353;
            v361 = *(v352 + 8);
            (v361)(v306, v353);
            v321 = MEMORY[0x277D83A80];
            *(v316 + 56) = MEMORY[0x277D839F8];
            *(v316 + 64) = v321;
            *(v316 + 32) = v319 * 1000.0;
            v322 = sub_246091C24();
            v324 = sub_245F8D3C0(v322, v323, &v365);

            *(v314 + 14) = v324;
            _os_log_impl(&dword_245F8A000, v312, v313, "ObjectCaptureSession.%{private}s: Init CaptureManager and takes first shot take time = %{public}s ms", v314, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C1989D0](v315, -1, -1);
            MEMORY[0x24C1989D0](v314, -1, -1);

            v358(v335, v357);
            (v361)(v317, v320);
          }

          else
          {

            v203(v311, v285);
            (*(v352 + 8))(v346, v353);
          }

          *v344 = 1;
          goto LABEL_80;
        }

        goto LABEL_84;
      }

LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v223 = v333.i64[0];
    v361(v333.i64[0], v360, v174);
    v224 = sub_2460918D4();
    v225 = sub_246091FB4();
    if (os_log_type_enabled(v224, v225))
    {
      v226 = swift_slowAlloc();
      v227 = v174;
      v228 = v352;
      v229 = v226;
      v230 = swift_slowAlloc();
      *&v362 = v230;
      *v229 = 136380675;
      *(v229 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v362);
      _os_log_impl(&dword_245F8A000, v224, v225, "ObjectCaptureSession.%{private}s: Failed to start voxel integration!", v229, 0xCu);
      sub_245F8E6F4(v230);
      MEMORY[0x24C1989D0](v230, -1, -1);
      MEMORY[0x24C1989D0](v229, -1, -1);

      v203(v223, v227);
      (*(v228 + 8))(v346, v353);
    }

    else
    {

      v203(v223, v174);
      (*(v352 + 8))(v346, v353);
    }

LABEL_79:
    *v344 = 0;
LABEL_80:
    sub_246052A34();
    return;
  }

LABEL_97:

  __break(1u);
}

uint64_t sub_246052A34()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2460917D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_246096460;
  sub_2460917B4();
  v9 = MEMORY[0x277D83A80];
  *(v8 + 56) = MEMORY[0x277D839F8];
  *(v8 + 64) = v9;
  *(v8 + 32) = v10 * 1000.0;
  v11 = sub_246091C24();
  v13 = v12;
  v14 = sub_245FA3174();
  (*(v1 + 16))(v3, v14, v0);

  v15 = sub_2460918D4();
  v16 = sub_246091FA4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v0;
    v18 = v17;
    v19 = swift_slowAlloc();
    v24 = v4;
    v20 = v19;
    v26 = v19;
    *v18 = 136380931;
    *(v18 + 4) = sub_245F8D3C0(0xD000000000000029, 0x80000002460A48E0, &v26);
    *(v18 + 12) = 2082;
    v21 = sub_245F8D3C0(v11, v13, &v26);

    *(v18 + 14) = v21;
    _os_log_impl(&dword_245F8A000, v15, v16, "ObjectCaptureSession.%{private}s: start object-centric caputring takes time = %{public}s ms", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v20, -1, -1);
    MEMORY[0x24C1989D0](v18, -1, -1);

    (*(v1 + 8))(v3, v25);
    return (*(v5 + 8))(v7, v24);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v4);
  }
}

BOOL sub_246052D94(__int128 *a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = sub_2460917D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  v14 = a1[7];
  v15 = a1[8];
  v16 = a1[5];
  v48 = a1[6];
  v49 = v14;
  v50 = v15;
  v17 = a1[3];
  v44 = a1[2];
  v45 = v17;
  v18 = a1[5];
  v46 = a1[4];
  v47 = v18;
  v19 = a1[1];
  v42 = *a1;
  v43 = v19;
  *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_proxySurfaceObjectOrigin) = v16;
  swift_beginAccess();
  v20 = OCProxySurfaceCreate();
  swift_endAccess();
  if (v20)
  {
    v21 = sub_245FA3280();
    (*(v4 + 16))(v9, v21, v3);
    v22 = sub_2460918D4();
    v23 = sub_246091FB4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v39 = v10;
      v25 = v24;
      v26 = swift_slowAlloc();
      v41[0] = v26;
      *v25 = 136380675;
      *(v25 + 4) = sub_245F8D3C0(0xD000000000000019, 0x80000002460A4090, v41);
      _os_log_impl(&dword_245F8A000, v22, v23, "ObjectCaptureSession.%{private}s: Failed to create proxy surface!", v25, 0xCu);
      sub_245F8E6F4(v26);
      MEMORY[0x24C1989D0](v26, -1, -1);
      v27 = v25;
      v10 = v39;
      MEMORY[0x24C1989D0](v27, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
  }

  else
  {
    v40 = 1;
    v28 = v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_worldToObjectTransformFromMobileSfM;
    *(v28 + 32) = 0u;
    *(v28 + 48) = 0u;
    *v28 = 0u;
    *(v28 + 16) = 0u;
    *(v28 + 64) = 1;
    v29 = v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_initialWorldToMobileSfMTransform;
    *(v29 + 32) = 0u;
    *(v29 + 48) = 0u;
    *v29 = 0u;
    *(v29 + 16) = 0u;
    *(v29 + 64) = 1;
    *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForPoseCorrectionUsingMobileSfM) = 0;
    *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_pauseTimeForPoseCorrection) = 0;
    *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shouldWaitForNewPlane) = 0;
    v30 = sub_245FA3280();
    (*(v4 + 16))(v6, v30, v3);
    v31 = sub_2460918D4();
    v32 = sub_246091FA4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v39 = v10;
      v34 = v33;
      v35 = swift_slowAlloc();
      v41[0] = v35;
      *v34 = 136380675;
      *(v34 + 4) = sub_245F8D3C0(0xD000000000000019, 0x80000002460A4090, v41);
      _os_log_impl(&dword_245F8A000, v31, v32, "ObjectCaptureSession.%{private}s: Reset voxel integration subsession data.", v34, 0xCu);
      sub_245F8E6F4(v35);
      MEMORY[0x24C1989D0](v35, -1, -1);
      v36 = v34;
      v10 = v39;
      MEMORY[0x24C1989D0](v36, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }

  sub_24605C438();
  (*(v11 + 8))(v13, v10);
  return v20 == 0;
}

void sub_246053240()
{
  v1 = v0;
  v158 = sub_2460918F4();
  v2 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v154 = &v147 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v151 = &v147 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v147 - v7;
  MEMORY[0x28223BE20](v9);
  v150 = &v147 - v10;
  MEMORY[0x28223BE20](v11);
  v153 = &v147 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v147 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v147 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v147 - v20;
  type metadata accessor for ARWorldTrackingConfigurationForObjectCapture();
  v22 = sub_245FA2EBC();
  [v22 setFrameSemantics_];
  v23 = [swift_getObjCClassFromObject() recommendedVideoFormatForHighResolutionFrameCapturing];
  if (!v23)
  {
    goto LABEL_78;
  }

  v24 = v23;
  v25 = sub_245F92904();
  v157 = v8;
  if ((v26 & 1) == 0)
  {
    v152 = v21;
    v27 = v2;
    v28 = v15;
    v29 = v25;
    ObjectType = swift_getObjectType();
    v31 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maxPhotoDimensions;
    swift_beginAccess();
    v32 = (*(ObjectType + 80))(v29, &v1[v31]);
    swift_endAccess();
    if (v32)
    {

      v15 = v28;
      v2 = v27;
      v21 = v152;
      v8 = v157;
      v24 = v32;
    }

    else
    {
      v15 = v28;
      v2 = v27;
      v21 = v152;
      v8 = v157;
    }
  }

  [v22 setVideoFormat_];
  v33 = v22;
  [v33 setAlwaysUsePrimaryCameraForTracking_];
  v34 = v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isHighQualityMacroModeSupported];
  if (v34 == 2)
  {
    goto LABEL_79;
  }

  v35 = &off_278E99000;
  v155 = v24;
  v156 = v1;
  if (v34)
  {
    v148 = v15;
    [v33 setTimeOfFlightProjectorMode_];
    v36 = sub_245FA3174();
    v37 = *(v2 + 16);
    v37(v21, v36, v158);
    v38 = sub_2460918D4();
    v39 = sub_246091FC4();
    v40 = os_log_type_enabled(v38, v39);
    v149 = v2;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v152 = v21;
      v43 = v42;
      v160[0] = v42;
      *v41 = 136380675;
      *(v41 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4220, v160);
      _os_log_impl(&dword_245F8A000, v38, v39, "ObjectCaptureSession.%{private}s: Set high quality mode for LiDAR point cloud.", v41, 0xCu);
      sub_245F8E6F4(v43);
      MEMORY[0x24C1989D0](v43, -1, -1);
      MEMORY[0x24C1989D0](v41, -1, -1);

      v44 = *(v2 + 8);
      v44(v152, v158);
    }

    else
    {

      v44 = *(v2 + 8);
      v44(v21, v158);
    }

    v37(v18, v36, v158);
    v45 = sub_2460918D4();
    v46 = sub_246091FC4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v160[0] = v48;
      *v47 = 136380675;
      *(v47 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4220, v160);
      _os_log_impl(&dword_245F8A000, v45, v46, "ObjectCaptureSession.%{private}s: Set framerate = 120 for LiDAR point cloud.", v47, 0xCu);
      sub_245F8E6F4(v48);
      MEMORY[0x24C1989D0](v48, -1, -1);
      MEMORY[0x24C1989D0](v47, -1, -1);
    }

    v2 = v149;
    v44(v18, v158);
    v24 = v155;
    v1 = v156;
    v8 = v157;
    v15 = v148;
    v35 = &off_278E99000;
    [v33 setJasperFrameRate_];
  }

  if (v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isToFSensorTypePeridot] == 1)
  {
    [v33 v35[254]];
    v49 = sub_245FA3174();
    v50 = *(v2 + 16);
    v50(v15, v49, v158);
    v51 = sub_2460918D4();
    v52 = v15;
    v53 = sub_246091FC4();
    if (os_log_type_enabled(v51, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v160[0] = v55;
      *v54 = 136380675;
      *(v54 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4220, v160);
      _os_log_impl(&dword_245F8A000, v51, v53, "ObjectCaptureSession.%{private}s: Adjusted framerate = 60 for LiDAR point cloud.", v54, 0xCu);
      sub_245F8E6F4(v55);
      MEMORY[0x24C1989D0](v55, -1, -1);
      MEMORY[0x24C1989D0](v54, -1, -1);
    }

    v56 = *(v2 + 8);
    v56(v52, v158);
    [v33 setDepthSensorNumberOfPointsMode_];
    v57 = v153;
    v50(v153, v49, v158);
    v58 = v57;
    v59 = sub_2460918D4();
    v60 = sub_246091FC4();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v155;
    if (v61)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v160[0] = v64;
      *v63 = 136380675;
      *(v63 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4220, v160);
      _os_log_impl(&dword_245F8A000, v59, v60, "ObjectCaptureSession.%{private}s: Set number of points = high, for LiDAR point cloud.", v63, 0xCu);
      sub_245F8E6F4(v64);
      MEMORY[0x24C1989D0](v64, -1, -1);
      MEMORY[0x24C1989D0](v63, -1, -1);
    }

    v56(v58, v158);
    v1 = v156;
    v8 = v157;
    v24 = v62;
  }

  [v33 setFocusPixelBlurScoreDeliveryEnabled_];

  v65 = sub_246091BD4();
  [v33 setSlamConfiguration_];

  if ((*((*MEMORY[0x277D85000] & *v1) + 0x4A8))())
  {
    [v33 setPlaneDetection_];
    v66 = sub_245F92A20();
    if ((v66 & 0x100000000) != 0)
    {
      v79 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformScanExtent;
      v80 = sub_245F9DAE4(v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_freeformScanExtent]);
      v81 = sub_245FA3174();
      v152 = *(v2 + 16);
      v153 = ((v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
      v150 = v81;
      (v152)(v8);
      v82 = v1;
      v83 = sub_2460918D4();
      v84 = sub_246091FC4();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v160[0] = v148;
        *v85 = 136381187;
        *(v85 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4220, v160);
        *(v85 + 12) = 2080;
        sub_245F9DAC4(v80);
        v86 = sub_246091F04();
        v88 = v80;
        v89 = sub_245F8D3C0(v86, v87, v160);

        *(v85 + 14) = v89;
        *(v85 + 22) = 2082;
        v159 = v156[v79];
        v90 = sub_246091C54();
        v92 = sub_245F8D3C0(v90, v91, v160);

        *(v85 + 24) = v92;
        v80 = v88;
        _os_log_impl(&dword_245F8A000, v83, v84, "ObjectCaptureSession.%{private}s: Computed voxel size %s from scan extent: %{public}s.", v85, 0x20u);
        v93 = v148;
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v93, -1, -1);
        MEMORY[0x24C1989D0](v85, -1, -1);

        v77 = *(v2 + 8);
        v77(v157, v158);
      }

      else
      {

        v77 = *(v2 + 8);
        v77(v8, v158);
      }

      v94 = [v33 sceneReconstructionOptions];
      [v94 setVoxelSize_];

      v95 = v80;
      v96 = v151;
      v70 = v152;
      (v152)(v151, v150, v158);
      v97 = sub_2460918D4();
      v98 = sub_246091FC4();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = v95;
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v160[0] = v101;
        *v100 = 136380931;
        *(v100 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4220, v160);
        *(v100 + 12) = 2082;
        sub_245F9DAC4(v99);
        v102 = sub_246091F04();
        v104 = v77;
        v105 = sub_245F8D3C0(v102, v103, v160);

        *(v100 + 14) = v105;
        v77 = v104;
        _os_log_impl(&dword_245F8A000, v97, v98, "ObjectCaptureSession.%{private}s: Set ARKit scene reconstruction voxel size = %{public}s", v100, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v101, -1, -1);
        MEMORY[0x24C1989D0](v100, -1, -1);

        v104(v151, v158);
      }

      else
      {

        v77(v96, v158);
      }

      v24 = v155;
      v1 = v156;
      v78 = v154;
    }

    else
    {
      v67 = *&v66;
      v68 = v24;
      v69 = sub_245FA3174();
      v70 = *(v2 + 16);
      v153 = ((v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
      v71 = v150;
      (v70)(v150, v69, v158);
      v72 = sub_2460918D4();
      v73 = sub_246091FC4();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = v67;
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v160[0] = v76;
        *v75 = 136380931;
        *(v75 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4220, v160);
        *(v75 + 12) = 2050;
        *(v75 + 14) = v74;
        _os_log_impl(&dword_245F8A000, v72, v73, "ObjectCaptureSession.%{private}s: Using ARKit scene reconstruction voxel size %{public}f set by user default", v75, 0x16u);
        sub_245F8E6F4(v76);
        MEMORY[0x24C1989D0](v76, -1, -1);
        MEMORY[0x24C1989D0](v75, -1, -1);
      }

      v77 = *(v2 + 8);
      v77(v71, v158);
      v78 = v154;
      v24 = v68;
    }

    [v33 setSceneReconstruction_];

    v106 = sub_245FA3174();
    (v70)(v78, v106, v158);
    v107 = v78;
    v108 = sub_2460918D4();
    v109 = sub_246091FC4();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = v77;
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v160[0] = v112;
      *v111 = 136380675;
      *(v111 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4220, v160);
      _os_log_impl(&dword_245F8A000, v108, v109, "ObjectCaptureSession.%{private}s: Enabled scene reconstruction with object capture preset", v111, 0xCu);
      sub_245F8E6F4(v112);
      MEMORY[0x24C1989D0](v112, -1, -1);
      MEMORY[0x24C1989D0](v111, -1, -1);

      v110(v107, v158);
    }

    else
    {

      v77(v107, v158);
    }
  }

  else
  {
    [v33 setPlaneDetection_];
  }

  v113 = [v33 videoFormat];
  v114 = [v113 isRecommendedForHighResolutionFrameCapturing];

  if (!v114)
  {
    __break(1u);
    goto LABEL_63;
  }

  v115 = [v33 videoFormat];
  v116 = [v115 captureDevicePosition];

  if (v116 != 1)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v117 = [v33 videoFormat];
  v118 = [v117 captureDeviceType];

  v119 = sub_246091C04();
  v121 = v120;
  if (v119 == sub_246091C04() && v121 == v122)
  {

    goto LABEL_42;
  }

  v123 = sub_2460923E4();

  if ((v123 & 1) == 0)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_42:
  v124 = &v1[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maxPhotoDimensions];
  swift_beginAccess();
  if ((v124[8] & 1) == 0)
  {
LABEL_60:

    return;
  }

  v125 = [v33 videoFormat];
  v126 = [v125 framesPerSecond];

  if (v126 != 30)
  {
    goto LABEL_65;
  }

  v127 = [v33 videoFormat];
  [v127 imageResolution];
  v129 = v128;
  v130 = v128;

  if ((*&v130 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v129 <= -1.0)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v129 >= 4294967300.0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v129 != 1920)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v131 = [v33 videoFormat];
  [v131 imageResolution];
  v133 = v132;
  v134 = v132;

  if ((*&v134 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v133 <= -1.0)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v133 >= 4294967300.0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v133 != 1440)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v135 = [v33 videoFormat];
  v136 = [v135 deviceFormat];

  LOBYTE(v135) = [v136 isVideoBinned];
  if (v135)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v137 = [v33 videoFormat];
  v138 = [v137 deviceFormat];

  v139 = sub_246092094();
  if (*(v139 + 16) < 2uLL)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v140 = *(v139 + 40);

  v141 = sub_24601EF58();
  if (v140 < 0 || v140 != *v141)
  {
    goto LABEL_76;
  }

  v142 = [v33 videoFormat];
  v143 = [v142 deviceFormat];

  v144 = sub_246092094();
  if (*(v144 + 16) < 2uLL)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return;
  }

  v145 = *(v144 + 44);

  v146 = *sub_24601EF64();

  if (v145 < 0 || v145 != v146)
  {
    __break(1u);
    goto LABEL_60;
  }
}