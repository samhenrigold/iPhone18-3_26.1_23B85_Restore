void DataModel.updateAutoCaptureState(oldFeedback:newFeedback:)(uint64_t a1, uint64_t a2)
{
  v13[1] = a2;
  v2 = type metadata accessor for ObjectCaptureSession.Frame.Feedback();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  static ObjectCaptureSession.Frame.Feedback.tooFast.getter();
  lazy protocol witness table accessor for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback(&lazy protocol witness table cache variable for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback, MEMORY[0x282217640], MEMORY[0x282217658]);
  v6 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v7 = *(v3 + 8);
  v8 = v7(v13 - v5, v2);
  if (v6)
  {
    MEMORY[0x28223BE20](v8);
    static ObjectCaptureSession.Frame.Feedback.tooFast.getter();
    v9 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v8 = v7(v13 - v5, v2);
    if ((v9 & 1) == 0)
    {
      DataModel.resumeAutoCapture()();
    }
  }

  MEMORY[0x28223BE20](v8);
  static ObjectCaptureSession.Frame.Feedback.tooFast.getter();
  v10 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v11 = v7(v13 - v5, v2);
  if ((v10 & 1) == 0)
  {
    MEMORY[0x28223BE20](v11);
    static ObjectCaptureSession.Frame.Feedback.tooFast.getter();
    v12 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v7(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    if (v12)
    {
      DataModel.pauseAutoCapture()();
    }
  }
}

void DataModel.pauseAutoCapture()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Pausing auto-capture...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (v6)
  {
    v7 = v6;
    if (dispatch thunk of ObjectCaptureSession.spi.getter())
    {
      dispatch thunk of ObjectCaptureSessionSPI.setAutoCapture(_:for:)();

      return;
    }
  }

  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23B824000, oslog, v8, "Can't pause auto-capture, no internal session connection!", v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }
}

void DataModel.resumeAutoCapture()()
{
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isAutoCaptureEnabled) != 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v9))
    {
      goto LABEL_19;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Ignoring the request to resume auto-capture because auto-capture is disabled!";
    goto LABEL_18;
  }

  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Resuming auto-capture...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (v6)
  {
    v7 = v6;
    if (dispatch thunk of ObjectCaptureSession.spi.getter())
    {
      dispatch thunk of ObjectCaptureSessionSPI.setAutoCapture(_:for:)();

      return;
    }
  }

  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Can't resume auto-capture, no internal session connection!";
LABEL_18:
    _os_log_impl(&dword_23B824000, oslog, v9, v11, v10, 2u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

LABEL_19:
}

void DataModel.updateDebugState(frame:)()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = [v1 session];
  v3 = [v2 configuration];

  if (v3)
  {
    v4 = [v3 videoFormat];

    v5 = [v4 device];
    [v5 ISO];

LABEL_4:
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    return;
  }

  __break(1u);
}

void DataModel.getDeviceOrientationCorrectedReticleAimVector()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v10);

  if (*&v10.a == INFINITY || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(&v10), , , *(&v10.a + 1) == INFINITY))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v10);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v10);

    CGAffineTransformMakeRotation(&v10, v10.a);
    CGAffineTransformInvert(&v9, &v10);
    tx = v9.tx;
    ty = v9.ty;
    v7 = *&v9.c;
    v8 = *&v9.a;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v10);

    v2 = *&v10.a;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v10);

    v11.y = *(&v10.a + 1);
    *&v10.a = v8;
    *&v10.c = v7;
    v10.tx = tx;
    v10.ty = ty;
    v11.x = v2;
    v3 = CGPointApplyAffineTransform(v11, &v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91BFD0;
    x = v3.x;
    y = v3.y;
    *(inited + 32) = x;
    *(inited + 36) = y;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
    swift_setDeallocating();
  }
}

uint64_t DataModel.getCurrentlySelectedBoundingBox()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DataModel.State(0);
  result = MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) != 1)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v6);

  v7 = type metadata accessor for DataModel.Error(0);
  result = (*(*(v7 - 8) + 48))(v6, 8, v7);
  if (result != 6)
  {
    if (result != 5)
    {
      LOBYTE(v18[0]) = 1;
      result = outlined destroy of DataModel.Error(v6, type metadata accessor for DataModel.State);
      v8 = v18[0];
      v11 = 0uLL;
      v12 = 0uLL;
      v9 = 0uLL;
      v10 = 0uLL;
      goto LABEL_9;
    }

    if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel))
    {

      DetectModeBoxModel.currentCaptureBox.getter(v18);
      v16 = v18[1];
      v17 = v18[0];
      v14 = v18[3];
      v15 = v18[2];
      v8 = v19;

      v10 = v14;
      v9 = v15;
      v12 = v16;
      v11 = v17;
LABEL_9:
      *a1 = v11;
      *(a1 + 16) = v12;
      *(a1 + 32) = v9;
      *(a1 + 48) = v10;
      *(a1 + 64) = v8;
      return result;
    }

    goto LABEL_11;
  }

  v13 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel);
  if (v13)
  {
    v11 = *(v13 + 144);
    v12 = *(v13 + 160);
    v9 = *(v13 + 176);
    v10 = *(v13 + 192);
    v8 = *(v13 + 208);
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t DataModel.filterFrameFeedback(feedback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ObjectCaptureSession.Frame.Feedback();
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v63 = v6 + 16;
  v64 = v7;
  result = (v7)(a2, a1, v5);
  v9 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator);
  v65 = a2;
  if (v9)
  {
    v62 = v2;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMR);
    v60 = &v56;
    v11 = MEMORY[0x28223BE20](v10 - 8);
    v13 = &v56 - v12;
    v59 = &v56;
    v14 = *(v6 + 64);
    MEMORY[0x28223BE20](v11);
    v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = v9;

    v16 = static ObjectCaptureSession.Frame.Feedback.tooFast.getter();
    v58 = &v56;
    v17 = MEMORY[0x28223BE20](v16);
    MEMORY[0x28223BE20](v17);
    v64(v15, a2, v5);
    lazy protocol witness table accessor for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback(&lazy protocol witness table cache variable for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback, MEMORY[0x282217640], MEMORY[0x282217658]);
    v18 = v6;
    dispatch thunk of SetAlgebra.intersection(_:)();
    if (dispatch thunk of SetAlgebra.isEmpty.getter())
    {
      v19 = *(v6 + 8);
      v19(v15, v5);
      v19(v15, v5);
      v20 = 1;
    }

    else
    {
      dispatch thunk of SetAlgebra.subtract(_:)();
      v19 = *(v6 + 8);
      v19(v15, v5);
      (*(v6 + 32))(v13, v15, v5);
      v20 = 0;
    }

    (*(v6 + 56))(v13, v20, 1, v5);
    v21 = outlined destroy of PerspectiveCameraComponent?(v13, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMR);
    if (*(v61 + 140) == 1)
    {
      v22 = MEMORY[0x28223BE20](v21);
      v23 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      MEMORY[0x28223BE20](v22);
      v25 = &v56 - v24;
      static ObjectCaptureSession.Frame.Feedback.tooFast.getter();
      specialized OptionSet<>.insert(_:)(v23, v25);

      v19(v25, v5);
      v26 = v23;
      v6 = v18;
      result = (v19)(v26, v5);
    }

    else
    {
    }

    v2 = v62;
  }

  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) == 2)
  {
    v27 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderManager);
    if (v27)
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMR);
      v60 = &v56;
      v29 = *(*(v28 - 8) + 64);
      v30 = MEMORY[0x28223BE20](v28 - 8);
      v32 = &v56 - v31;
      v59 = &v56;
      v33 = *(v6 + 64);
      MEMORY[0x28223BE20](v30);
      v34 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      v62 = v27;

      v35 = static ObjectCaptureSession.Frame.Feedback.tooClose.getter();
      v57 = &v56;
      v36 = MEMORY[0x28223BE20](v35);
      MEMORY[0x28223BE20](v36);
      (v64)(v34);
      lazy protocol witness table accessor for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback(&lazy protocol witness table cache variable for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback, MEMORY[0x282217640], MEMORY[0x282217658]);
      dispatch thunk of SetAlgebra.intersection(_:)();
      if (dispatch thunk of SetAlgebra.isEmpty.getter())
      {
        v37 = *(v6 + 8);
        v37(v34, v5);
        v61 = v37;
        v37(v34, v5);
        v38 = 1;
      }

      else
      {
        dispatch thunk of SetAlgebra.subtract(_:)();
        v61 = *(v6 + 8);
        v61(v34, v5);
        (*(v6 + 32))(v32, v34, v5);
        v38 = 0;
      }

      v58 = *(v6 + 56);
      (v58)(v32, v38, 1, v5);
      v39 = outlined destroy of PerspectiveCameraComponent?(v32, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMR);
      v60 = &v56;
      v40 = MEMORY[0x28223BE20](v39);
      v41 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      v59 = &v56;
      MEMORY[0x28223BE20](v40);
      v42 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      v43 = static ObjectCaptureSession.Frame.Feedback.tooFar.getter();
      v57 = &v56;
      v44 = MEMORY[0x28223BE20](v43);
      MEMORY[0x28223BE20](v44);
      v64(v42, v65, v5);
      dispatch thunk of SetAlgebra.intersection(_:)();
      if (dispatch thunk of SetAlgebra.isEmpty.getter())
      {
        v45 = v61;
        v61(v42, v5);
        v45(v42, v5);
        v46 = 1;
      }

      else
      {
        dispatch thunk of SetAlgebra.subtract(_:)();
        v61(v42, v5);
        (*(v6 + 32))(v41, v42, v5);
        v46 = 0;
      }

      (v58)(v41, v46, 1, v5);
      v47 = outlined destroy of PerspectiveCameraComponent?(v41, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMR);
      v48 = *(v62 + 64);
      if (v48 == 3)
      {
        v53 = MEMORY[0x28223BE20](v47);
        v50 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x28223BE20](v53);
        v52 = &v56 - v54;
        static ObjectCaptureSession.Frame.Feedback.tooFar.getter();
        goto LABEL_21;
      }

      if (v48 == 1)
      {
        v49 = MEMORY[0x28223BE20](v47);
        v50 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x28223BE20](v49);
        v52 = &v56 - v51;
        static ObjectCaptureSession.Frame.Feedback.tooClose.getter();
LABEL_21:
        specialized OptionSet<>.insert(_:)(v50, v52);

        v55 = v61;
        v61(v52, v5);
        return v55(v50, v5);
      }
    }
  }

  return result;
}

void DataModel.onShot(shot:shotMetadata:)()
{
  v1 = v0;
  if (DataModel.inCapturingMetaState.getter())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = static Published.subscript.modify();
    if (!__OFADD__(*v3, 1))
    {
      ++*v3;
      v2(v37, 0);

      swift_getKeyPath();
      swift_getKeyPath();
      v4 = static Published.subscript.modify();
      if (__OFADD__(*v5, 1))
      {
        __break(1u);
      }

      else
      {
        ++*v5;
        v4(v37, 0);

        if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle))
        {

          ObjectCaptureSession.Metadata.Shot.timestamp.getter();
          v7 = v6;
          v8 = type metadata accessor for ObjectCaptureSession.Metadata.Shot.Camera();
          v9 = *(v8 - 8);
          MEMORY[0x28223BE20](v8);
          v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
          ObjectCaptureSession.Metadata.Shot.camera.getter();
          ObjectCaptureSession.Metadata.Shot.Camera.transform.getter();
          v35 = v13;
          v36 = v12;
          v33 = v15;
          v34 = v14;
          v16 = (*(v9 + 8))(v11, v8);
          CaptureCircle.onShotTaken(at:cameraTransformWorld:)(v7, v16);
        }

        v17 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraPathManager);
        v18 = type metadata accessor for ObjectCaptureSession.Metadata.Shot.Camera();
        v19 = *(v18 - 8);
        MEMORY[0x28223BE20](v18);
        v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = v17;
        ObjectCaptureSession.Metadata.Shot.camera.getter();
        ObjectCaptureSession.Metadata.Shot.Camera.transform.getter();
        v35 = v24;
        v36 = v23;
        v33 = v26;
        v34 = v25;
        v27 = (*(v19 + 8))(v21, v18);
        v28 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime;
        CameraPathManager.addShot(_:t:)(v27, *&v36);

        v29 = *(v1 + v28);
        *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastShotTime) = v29;
        DataModel.startFreeformPulseIfNeeded(at:)(v29);
        if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_soundManager))
        {
          SoundManager.playShutterSound(volume:)(0.3);
        }

        if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_hapticManager))
        {
          HapticManager.playShotHaptic()();
        }

        if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) == 1)
        {
          DataModel.updateObjectFlippabilityFeedback()();
        }
      }

      return;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (one-time initialization token for logger != -1)
  {
LABEL_20:
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, logger);
  *&v36 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_23B824000, v36, v31, "onShot() called when not in .capturing  meta state!  Assuming this is a late callback and ignoring...", v32, 2u);
    MEMORY[0x23EEB0B70](v32, -1, -1);
  }
}

void DataModel.updateObjectFlippabilityFeedback()()
{
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanPassID))
  {
    if (one-time initialization token for logger != -1)
    {
LABEL_47:
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, logger);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(oslog, v2))
    {
      goto LABEL_25;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "Not first scan pass, not updating flippability.";
    goto LABEL_24;
  }

  v5 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isObjectFlippable;
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isObjectFlippable) != 2)
  {
LABEL_20:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, logger);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(oslog, v2))
    {
      goto LABEL_25;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "isObjectFlippable has already been set -- not updating.";
LABEL_24:
    _os_log_impl(&dword_23B824000, oslog, v2, v4, v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
LABEL_25:

    return;
  }

  v6 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle);
  if (v6)
  {
    swift_beginAccess();
    v7 = *(v6 + 72);
    if (v7 >> 62)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    v10 = 0;
    while (v8 != v9)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x23EEAFC40](v9, v7);
        if (__OFADD__(v9, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        if (__OFADD__(v9, 1))
        {
          goto LABEL_19;
        }
      }

      v12 = *(v11 + 36);

      ++v9;
      v13 = __OFADD__(v10, v12);
      v10 += v12;
      if (v13)
      {
        goto LABEL_46;
      }
    }

    v15 = *(v6 + 72);
    if (v15 >> 62)
    {
      v16 = __CocoaSet.count.getter();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v10 / v16;
    if (v17 >= 0.75)
    {
      v18 = v0;
      v19 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
      if (v19)
      {
        v20 = v19;
        v21 = dispatch thunk of ObjectCaptureSession.objectFlippable.getter();
      }

      else
      {
        v21 = 1;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, logger);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134218240;
        *(v29 + 4) = v17;
        *(v29 + 12) = 1024;
        *(v29 + 14) = v21 & 1;
        _os_log_impl(&dword_23B824000, v27, v28, "Setting the object flippability: current capture dial fill percent: %f  flippable=%{BOOL}d", v29, 0x12u);
        MEMORY[0x23EEB0B70](v29, -1, -1);
      }

      *(v18 + v5) = v21 & 1;
      return;
    }
  }

  else
  {
    v17 = -1.0;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, logger);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134218240;
    *(v25 + 4) = v17;
    *(v25 + 12) = 2048;
    *(v25 + 14) = 0x3FE8000000000000;
    _os_log_impl(&dword_23B824000, v23, v24, "Not enough capture percent to update flippability: %f < %f", v25, 0x16u);
    MEMORY[0x23EEB0B70](v25, -1, -1);
  }
}

uint64_t DataModel.updateShowMiniViewState(newState:newNumShotsInSegment:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DataModel.State(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, logger);
  outlined init with copy of DataModel.Error(a1, v11, type metadata accessor for DataModel.State);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v30[0] = v17;
    *v16 = 136446466;
    v28 = a1;
    outlined init with copy of DataModel.Error(v11, v9, type metadata accessor for DataModel.State);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    outlined destroy of DataModel.Error(v11, type metadata accessor for DataModel.State);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v30);

    *(v16 + 4) = v21;
    a1 = v28;
    *(v16 + 12) = 2050;
    *(v16 + 14) = a2;
    _os_log_impl(&dword_23B824000, v13, v14, "updateShowMiniViewState was called!  state=%{public}s  numShots: %{public}ld", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x23EEB0B70](v17, -1, -1);
    v22 = v16;
    v3 = v29;
    MEMORY[0x23EEB0B70](v22, -1, -1);
  }

  else
  {

    outlined destroy of DataModel.Error(v11, type metadata accessor for DataModel.State);
  }

  v23 = type metadata accessor for DataModel.Error(0);
  (*(*(v23 - 8) + 56))(v9, 6, 8, v23);
  v24 = specialized static DataModel.State.== infix(_:_:)(a1, v9);
  outlined destroy of DataModel.Error(v9, type metadata accessor for DataModel.State);
  v25 = v24 & (a2 > 0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v30);

  if (v25 != LOBYTE(v30[0]))
  {
    v27 = static Animation.easeInOut(duration:)();
    MEMORY[0x28223BE20](v27);
    *(&v28 - 16) = v25;
    *(&v28 - 1) = v3;
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t closure #1 in DataModel.updateShowMiniViewState(newState:newNumShotsInSegment:)(char a1, uint64_t a2)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = a1 & 1;
    _os_log_impl(&dword_23B824000, v4, v5, "Setting showMiniView to %{BOOL,public}d", v6, 8u);
    MEMORY[0x23EEB0B70](v6, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t DataModel.updateShowCenterReticleState(newState:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DataModel.State(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DataModel.Error(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 6, 8, v7);
  v9 = specialized static DataModel.State.== infix(_:_:)(a1, v6);
  outlined destroy of DataModel.Error(v6, type metadata accessor for DataModel.State);
  v11 = ((v9 & 1) != 0 || (v8(v6, 4, 8, v7), v10 = specialized static DataModel.State.== infix(_:_:)(a1, v6), outlined destroy of DataModel.Error(v6, type metadata accessor for DataModel.State), (v10 & 1) != 0)) && *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) != 2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v19);

  if (v11 != v19)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67240192;
      *(v16 + 4) = v11;
      _os_log_impl(&dword_23B824000, v14, v15, "Setting showCenterReticle to %{BOOL,public}d", v16, 8u);
      MEMORY[0x23EEB0B70](v16, -1, -1);
    }

    MEMORY[0x28223BE20](v17);
    *&v18[-16] = v2;
    v18[-8] = v11;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t closure #1 in DataModel.updateFeedback(frameFeedback:arCameraFeedback:)(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void DataModel.onDebugTapWorld(pointWorld:)(__n128 a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x277D84B08]);
    v7 = SIMD.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_23B824000, v3, v4, "onDebugTapWorld: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x23EEB0B70](v6, -1, -1);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);
  if (v10)
  {
    if (*(v10 + 200) == 1)
    {
      if (swift_weakLoadStrong())
      {
        v11 = *(v10 + 40);

        DataModel.addToScene(entity:)(v11);
      }

      else
      {
      }

      type metadata accessor for ModelEntity();
      HasTransform.setPosition(_:relativeTo:)();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t DataModel.onInternalSessionStateChange(newInternalState:)(uint64_t a1)
{
  v2 = type metadata accessor for DataModel.State(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v20 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = type metadata accessor for DataModel.Error(0);
  v20 = *(*(v11 - 8) + 56);
  v20(v10, 1, 8, v11);
  v12 = type metadata accessor for ObjectCaptureSession.State();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = *(v13 + 16);
  v21 = a1;
  v15(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  DataModel.State.init(from:)(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  outlined destroy of DataModel.Error(v10, type metadata accessor for DataModel.State);
  outlined init with take of DataModel.State(v8, v10, type metadata accessor for DataModel.State);
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v22;
  static Published.subscript.getter(v5);

  DataModel.performStateTransition(from:to:)(v5, v10);
  v17 = outlined destroy of DataModel.Error(v5, type metadata accessor for DataModel.State);
  MEMORY[0x28223BE20](v17);
  (*(v13 + 104))(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D00498], v12);
  v18 = MEMORY[0x23EEAE410](v21, &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 8))(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  if (v18)
  {
    *(v16 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isInternalSessionCompleted) = 1;
    DataModel.switchToCompletedIfFinishingComplete()();
  }

  return outlined destroy of DataModel.Error(v10, type metadata accessor for DataModel.State);
}

BOOL DataModel.addCaptureSubscriptions()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy19_RealityKit_SwiftUI9DataModelC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy19_RealityKit_SwiftUI9DataModelC5StateO_GMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v66 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v66 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v77 = v0;
  v78 = &v66 - v10;
  v11 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (v11)
  {
    v74 = v2;
    v75 = v1;
    v12 = one-time initialization token for logger;
    v76 = v11;
    v86 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v69 = v8;
    v70 = v6;
    v71 = v5;
    v73 = v4;
    v13 = type metadata accessor for Logger();
    v72 = __swift_project_value_buffer(v13, logger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23B824000, v14, v15, "Adding capture subscriptions...", v16, 2u);
      MEMORY[0x23EEB0B70](v16, -1, -1);
    }

    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy6CoreOC20ObjectCaptureSessionC5StateO_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy6CoreOC20ObjectCaptureSessionC5StateO_GSo17OS_dispatch_queueCGMR);
    v80 = &v66;
    v17 = *(v79 - 8);
    MEMORY[0x28223BE20](v79);
    v19 = &v66 - v18;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy6CoreOC20ObjectCaptureSessionC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy6CoreOC20ObjectCaptureSessionC5StateO_GMR);
    v85 = &v66;
    v21 = *(v20 - 8);
    MEMORY[0x28223BE20](v20);
    v23 = &v66 - v22;
    dispatch thunk of ObjectCaptureSession.$state.getter();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v24 = static OS_dispatch_queue.main.getter();
    v88 = v24;
    v84 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v25 = *(v84 - 8);
    v26 = *(v25 + 56);
    v82 = v25 + 56;
    v83 = v26;
    v27 = v78;
    v26(v78, 1, 1, v84);
    v68 = MEMORY[0x277CBCEC8];
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Published<ObjectCaptureSession.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy6CoreOC20ObjectCaptureSessionC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy6CoreOC20ObjectCaptureSessionC5StateO_GMR, MEMORY[0x277CBCEC8]);
    v81 = lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
    Publisher.receive<A>(on:options:)();
    outlined destroy of PerspectiveCameraComponent?(v27, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    (*(v21 + 8))(v23, v20);
    swift_allocObject();
    swift_weakInit();
    v85 = MEMORY[0x277CBCD60];
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<ObjectCaptureSession.State>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy6CoreOC20ObjectCaptureSessionC5StateO_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy6CoreOC20ObjectCaptureSessionC5StateO_GSo17OS_dispatch_queueCGMR, MEMORY[0x277CBCD60]);
    v28 = v79;
    Publisher<>.sink(receiveValue:)();

    (*(v17 + 8))(v19, v28);
    v80 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSessionSubscriptions;
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC5FrameVAJ5ErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC5FrameVAJ5ErrorOGSo17OS_dispatch_queueCGMR);
    v67 = &v66;
    v29 = *(v66 - 8);
    MEMORY[0x28223BE20](v66);
    v31 = &v66 - v30;
    ObjectCaptureSession.observingPublishers.getter();
    v32 = dispatch thunk of ObjectCaptureSessionObservingPublishers.framePublisher.getter();

    v88 = v32;
    v33 = static OS_dispatch_queue.main.getter();
    v87 = v33;
    v34 = v78;
    v83(v78, 1, 1, v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC5FrameVAF5ErrorOGMd, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC5FrameVAF5ErrorOGMR);
    v79 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AnyPublisher<ObjectCaptureSession.Frame, ObjectCaptureSession.Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC5FrameVAF5ErrorOGMd, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC5FrameVAF5ErrorOGMR, MEMORY[0x277CBCD90]);
    Publisher.receive<A>(on:options:)();
    v35 = v34;
    outlined destroy of PerspectiveCameraComponent?(v34, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<ObjectCaptureSession.Frame, ObjectCaptureSession.Error>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC5FrameVAJ5ErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC5FrameVAJ5ErrorOGSo17OS_dispatch_queueCGMR, v85);
    v36 = v66;
    Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v29 + 8))(v31, v36);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4MeshVs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4MeshVs5NeverOGSo17OS_dispatch_queueCGMR);
    v67 = &v66;
    v37 = *(v66 - 8);
    MEMORY[0x28223BE20](v66);
    v39 = &v66 - v38;
    ObjectCaptureSession.observingPublishers.getter();
    v40 = dispatch thunk of ObjectCaptureSessionObservingPublishers.meshPublisher.getter();

    v88 = v40;
    v41 = static OS_dispatch_queue.main.getter();
    v87 = v41;
    v83(v35, 1, 1, v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4MeshVs5NeverOGMd, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4MeshVs5NeverOGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AnyPublisher<ObjectCaptureSession.Mesh, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4MeshVs5NeverOGMd, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4MeshVs5NeverOGMR, v79);
    Publisher.receive<A>(on:options:)();
    outlined destroy of PerspectiveCameraComponent?(v35, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<ObjectCaptureSession.Mesh, Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4MeshVs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4MeshVs5NeverOGSo17OS_dispatch_queueCGMR, v85);
    v42 = v66;
    Publisher<>.sink(receiveValue:)();

    (*(v37 + 8))(v39, v42);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4ShotV_AJ8MetadataOAKVtAJ5ErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4ShotV_AJ8MetadataOAKVtAJ5ErrorOGSo17OS_dispatch_queueCGMR);
    v67 = &v66;
    v43 = *(v66 - 8);
    MEMORY[0x28223BE20](v66);
    v45 = &v66 - v44;
    ObjectCaptureSession.writingPublishers.getter();
    v46 = dispatch thunk of ObjectCaptureSessionWritingPublishers.shotPublisher.getter();

    v88 = v46;
    v47 = static OS_dispatch_queue.main.getter();
    v87 = v47;
    v83(v35, 1, 1, v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4ShotV_AF8MetadataOAGVtAF5ErrorOGMd, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4ShotV_AF8MetadataOAGVtAF5ErrorOGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AnyPublisher<(ObjectCaptureSession.Shot, ObjectCaptureSession.Metadata.Shot), ObjectCaptureSession.Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4ShotV_AF8MetadataOAGVtAF5ErrorOGMd, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4ShotV_AF8MetadataOAGVtAF5ErrorOGMR, v79);
    Publisher.receive<A>(on:options:)();
    outlined destroy of PerspectiveCameraComponent?(v35, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    swift_allocObject();
    swift_weakInit();
    v48 = swift_allocObject();
    swift_weakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = partial apply for closure #6 in DataModel.addCaptureSubscriptions();
    *(v49 + 24) = v48;
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<(ObjectCaptureSession.Shot, ObjectCaptureSession.Metadata.Shot), ObjectCaptureSession.Error>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4ShotV_AJ8MetadataOAKVtAJ5ErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4ShotV_AJ8MetadataOAKVtAJ5ErrorOGSo17OS_dispatch_queueCGMR, v85);
    v50 = v66;
    Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v43 + 8))(v45, v50);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC8MetadataO4ShotVAJ5ErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC8MetadataO4ShotVAJ5ErrorOGSo17OS_dispatch_queueCGMR);
    v67 = &v66;
    v51 = *(v66 - 8);
    MEMORY[0x28223BE20](v66);
    v53 = &v66 - v52;
    ObjectCaptureSession.writingPublishers.getter();
    v54 = dispatch thunk of ObjectCaptureSessionWritingPublishers.shotMetadataPublisher.getter();

    v88 = v54;
    v55 = static OS_dispatch_queue.main.getter();
    v87 = v55;
    v83(v35, 1, 1, v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC8MetadataO4ShotVAF5ErrorOGMd, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC8MetadataO4ShotVAF5ErrorOGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AnyPublisher<ObjectCaptureSession.Metadata.Shot, ObjectCaptureSession.Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC8MetadataO4ShotVAF5ErrorOGMd, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC8MetadataO4ShotVAF5ErrorOGMR, v79);
    Publisher.receive<A>(on:options:)();
    outlined destroy of PerspectiveCameraComponent?(v35, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<ObjectCaptureSession.Metadata.Shot, ObjectCaptureSession.Error>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC8MetadataO4ShotVAJ5ErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC8MetadataO4ShotVAJ5ErrorOGSo17OS_dispatch_queueCGMR, v85);
    v56 = v66;
    Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v51 + 8))(v53, v56);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
    v57 = v69;
    Published.projectedValue.getter();
    swift_endAccess();
    swift_allocObject();
    swift_weakInit();
    v58 = v68;
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Published<Int>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR, v68);
    v59 = v71;
    Publisher<>.sink(receiveValue:)();

    (*(v70 + 8))(v57, v59);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy19_RealityKit_SwiftUI9DataModelC5StateOGMd, &_s7Combine9PublishedVy19_RealityKit_SwiftUI9DataModelC5StateOGMR);
    v60 = v73;
    Published.projectedValue.getter();
    swift_endAccess();
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Published<DataModel.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy19_RealityKit_SwiftUI9DataModelC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy19_RealityKit_SwiftUI9DataModelC5StateO_GMR, v58);
    v61 = v75;
    Publisher<>.sink(receiveValue:)();

    (*(v74 + 8))(v60, v61);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_23B824000, v62, v63, "... done adding capture subscriptions.", v64, 2u);
      MEMORY[0x23EEB0B70](v64, -1, -1);
    }

    v11 = v76;
  }

  return v11 != 0;
}

uint64_t closure #1 in DataModel.addCaptureSubscriptions()(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t closure #4 in DataModel.addCaptureSubscriptions()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_meshManager);

    if (v3)
    {
      v4 = ObjectCaptureSession.Mesh.anchors.getter();
      FreeformMeshManager.add(meshAnchors:)(v4);
    }
  }

  return result;
}

uint64_t closure #2 in DataModel.addCaptureSubscriptions()(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_6CoreOC20ObjectCaptureSessionC5ErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_6CoreOC20ObjectCaptureSessionC5ErrorOGMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, &v18 - v6, &_s7Combine11SubscribersO10CompletionOy_6CoreOC20ObjectCaptureSessionC5ErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_6CoreOC20ObjectCaptureSessionC5ErrorOGMR);
  v8 = type metadata accessor for ObjectCaptureSession.Error();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  if (v10 == 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23B824000, v12, v13, a3, v14, 2u);
      MEMORY[0x23EEB0B70](v14, -1, -1);
    }

    return outlined destroy of PerspectiveCameraComponent?(v7, &_s7Combine11SubscribersO10CompletionOy_6CoreOC20ObjectCaptureSessionC5ErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_6CoreOC20ObjectCaptureSessionC5ErrorOGMR);
  }

  else
  {
    MEMORY[0x28223BE20](v10);
    v17 = &v18 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 32))(v17, v7, v8);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      specialized DataModel.onError(error:)(v17);
    }

    return (*(v9 + 8))(v17, v8);
  }
}

uint64_t closure #6 in DataModel.addCaptureSubscriptions()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DataModel.onShot(shot:shotMetadata:)();
  }

  return result;
}

uint64_t closure #8 in DataModel.addCaptureSubscriptions()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_weakLoadStrong();
}

uint64_t closure #9 in DataModel.addCaptureSubscriptions()(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for DataModel.State(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v5);

    DataModel.updateShowMiniViewState(newState:newNumShotsInSegment:)(v5, v6);

    return outlined destroy of DataModel.Error(v5, type metadata accessor for DataModel.State);
  }

  return result;
}

uint64_t closure #10 in DataModel.addCaptureSubscriptions()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v4);

    DataModel.updateShowMiniViewState(newState:newNumShotsInSegment:)(a1, v4);
    DataModel.updateShowCenterReticleState(newState:)(a1);
  }

  return result;
}

void DataModel.removeCaptureSubscriptions()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Removing capture subscriptions...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSessionSubscriptions;
  swift_beginAccess();
  while (1)
  {
    v7 = *(v1 + v6);
    if ((v7 & 0xC000000000000001) != 0)
    {

      v8 = __CocoaSet.count.getter();

      if (!v8)
      {
        break;
      }

      goto LABEL_11;
    }

    if (!*(v7 + 16))
    {
      break;
    }

LABEL_11:
    swift_beginAccess();
    v9 = *(v1 + v6);
    v10 = v9 & 0xC000000000000001;
    if ((v9 & 0xC000000000000001) != 0)
    {
      if (__CocoaSet.count.getter())
      {
        v11 = __CocoaSet.startIndex.getter();
        v13 = v12;
        goto LABEL_21;
      }

LABEL_6:
      swift_endAccess();
    }

    else
    {
      if (!*(v9 + 16))
      {
        goto LABEL_6;
      }

      v14 = 0;
      v15 = (v9 + 56);
      v11 = 1 << *(v9 + 32);
      v16 = (v11 + 63) >> 6;
      while (1)
      {
        v18 = *v15++;
        v17 = v18;
        if (v18)
        {
          break;
        }

        v14 -= 64;
        if (!--v16)
        {
          goto LABEL_20;
        }
      }

      v11 = __clz(__rbit64(v17)) - v14;
LABEL_20:
      v13 = *(v9 + 36);
LABEL_21:
      v19 = v10 != 0;
      specialized Set._Variant.remove(at:)(v11, v13, v19);
      swift_endAccess();
      outlined consume of [String : Entity.ConfigurationCatalog.ConfigurationSet].Index._Variant(v11, v13, v19);

      AnyCancellable.cancel()();
    }
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_23B824000, v20, v21, "... done removing capture subscriptions.", v22, 2u);
    MEMORY[0x23EEB0B70](v22, -1, -1);
  }
}

void DataModel.connectImageWriter()()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, logger);

  v53 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v51 = v1;
    v19 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v19 = 141558274;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2080;
    v20 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imagesURL;
    swift_beginAccess();
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v3 + v20, v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    LODWORD(v20) = (*(v12 + 48))(v10, 1, v11);

    if (v20 == 1)
    {
LABEL_16:
      __break(1u);
      return;
    }

    (*(v12 + 32))(v14, v10, v11);
    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v12 + 8))(v14, v11);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, aBlock);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_23B824000, v17, v18, "Creating HEIC image bundle writer for url=%{mask.hash}s...", v19, 0x16u);
    v25 = v50;
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    MEMORY[0x23EEB0B70](v25, -1, -1);
    MEMORY[0x23EEB0B70](v19, -1, -1);

    v2 = v51;
  }

  else
  {
  }

  v26 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (!v26)
  {
    __break(1u);
    goto LABEL_15;
  }

  v27 = v26;
  ObjectCaptureSession.writingPublishers.getter();

  v28 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imagesURL;
  swift_beginAccess();
  v29 = v3 + v28;
  v30 = v54;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v29, v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v12 + 48))(v30, 1, v11) == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  type metadata accessor for ObjectCaptureHEICBundleWriter();
  swift_allocObject();
  v31 = ObjectCaptureHEICBundleWriter.init(publishers:url:)();
  if (!v2)
  {
    v54 = 0;
    *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriter) = v31;

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation3URLV6CoreOC29ObjectCaptureHEICBundleWriterC5ErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation3URLV6CoreOC29ObjectCaptureHEICBundleWriterC5ErrorOGSo17OS_dispatch_queueCGMR);
    v51 = &v49;
    v33 = *(v32 - 8);
    v49 = v32;
    v50 = v33;
    MEMORY[0x28223BE20](v32);
    v35 = &v49 - v34;
    v36 = dispatch thunk of ObjectCaptureHEICBundleWriter.completionPublisher.getter();

    aBlock[0] = v36;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v37 = static OS_dispatch_queue.main.getter();
    v56 = v37;
    v38 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v39 = v52;
    (*(*(v38 - 8) + 56))(v52, 1, 1, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation3URLV6CoreOC29ObjectCaptureHEICBundleWriterC5ErrorOGMd, &_s7Combine12AnyPublisherVy10Foundation3URLV6CoreOC29ObjectCaptureHEICBundleWriterC5ErrorOGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AnyPublisher<URL, ObjectCaptureHEICBundleWriter.Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation3URLV6CoreOC29ObjectCaptureHEICBundleWriterC5ErrorOGMd, &_s7Combine12AnyPublisherVy10Foundation3URLV6CoreOC29ObjectCaptureHEICBundleWriterC5ErrorOGMR, MEMORY[0x277CBCD90]);
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
    Publisher.receive<A>(on:options:)();
    outlined destroy of PerspectiveCameraComponent?(v39, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<URL, ObjectCaptureHEICBundleWriter.Error>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation3URLV6CoreOC29ObjectCaptureHEICBundleWriterC5ErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation3URLV6CoreOC29ObjectCaptureHEICBundleWriterC5ErrorOGSo17OS_dispatch_queueCGMR, MEMORY[0x277CBCD60]);
    v40 = v49;
    Publisher.sink(receiveCompletion:receiveValue:)();

    (v50[1])(v35, v40);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriterCompleted) = 0;
    v41 = objc_opt_self();
    v42 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #3 in DataModel.connectImageWriter();
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    aBlock[3] = &block_descriptor_392;
    v43 = _Block_copy(aBlock);

    v44 = [v41 scheduledTimerWithTimeInterval:1 repeats:v43 block:5.0];
    _Block_release(v43);
    v45 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriterLoggingTimer);
    *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriterLoggingTimer) = v44;

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_23B824000, v46, v47, "... successfully create bundle writer.", v48, 2u);
      MEMORY[0x23EEB0B70](v48, -1, -1);
    }
  }
}

void closure #1 in DataModel.connectImageWriter()(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Got HEIC Bundle Writer Completion!", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    *(Strong + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriterCompleted) = 1;
    DataModel.switchToCompletedIfFinishingComplete()();
    v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriterLoggingTimer;
    [*(v7 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriterLoggingTimer) invalidate];
    v9 = *(v7 + v8);
    *(v7 + v8) = 0;
  }
}

void closure #2 in DataModel.connectImageWriter()(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  (*(v3 + 16))(v5, a1, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 141558274;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2080;
    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v16);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_23B824000, v7, v8, "HEIC Bundle Writer completed url=%{mask.hash}s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x23EEB0B70](v10, -1, -1);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t closure #3 in DataModel.connectImageWriter()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriter);

    if (v3)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, logger);

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 134349056;
        *(v7 + 4) = dispatch thunk of ObjectCaptureHEICBundleWriter.activeWriteQueueSize.getter();

        _os_log_impl(&dword_23B824000, v5, v6, "HEIC Bundle Writer's queue size: %{public}ld", v7, 0xCu);
        MEMORY[0x23EEB0B70](v7, -1, -1);
      }

      else
      {
      }
    }
  }

  return result;
}

void DataModel.setupDebugState()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys5SIMD3VySfGs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys5SIMD3VySfGs5NeverOGSo17OS_dispatch_queueCGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (v8)
  {
    v22 = v8;
    v9 = dispatch thunk of ObjectCaptureSession.spi.getter();
    if (v9)
    {
      v21[2] = v9;
      dispatch thunk of ObjectCaptureSessionSPI.setDebugTapPosition(_:for:)();
      ObjectCaptureSession.observingPublishers.getter();
      v10 = dispatch thunk of ObjectCaptureSessionObservingPublishers.tapPositionPublisher.getter();
      v21[1] = v10;

      v23 = v10;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v11 = static OS_dispatch_queue.main.getter();
      v24 = v11;
      v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVys5SIMD3VySfGs5NeverOGMd, &_s7Combine12AnyPublisherVys5SIMD3VySfGs5NeverOGMR);
      lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AnyPublisher<SIMD3<Float>, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVys5SIMD3VySfGs5NeverOGMd, &_s7Combine12AnyPublisherVys5SIMD3VySfGs5NeverOGMR, MEMORY[0x277CBCD90]);
      lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
      Publisher.receive<A>(on:options:)();
      outlined destroy of PerspectiveCameraComponent?(v3, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

      swift_allocObject();
      swift_weakInit();
      lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<SIMD3<Float>, Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys5SIMD3VySfGs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys5SIMD3VySfGs5NeverOGSo17OS_dispatch_queueCGMR, MEMORY[0x277CBCD60]);
      Publisher<>.sink(receiveValue:)();

      (*(v5 + 8))(v7, v4);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      if (specialized static ExperimentSettings.loadMobileSFMDisabled(default:)(0))
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        __swift_project_value_buffer(v13, logger);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_23B824000, v14, v15, "Disabling MobileSFM based on defaults setting!", v16, 2u);
          MEMORY[0x23EEB0B70](v16, -1, -1);
        }

        dispatch thunk of ObjectCaptureSessionSPI.setMobileSfMEnabled(_:for:)();
      }

      else
      {
      }

      return;
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, logger);
    v22 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23B824000, v22, v18, "setupDebugState called without a valid ObjectCaptureSession!", v19, 2u);
      MEMORY[0x23EEB0B70](v19, -1, -1);
    }
  }

  v20 = v22;
}

uint64_t closure #1 in DataModel.setupDebugState()(__n128 *a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DataModel.onDebugTapWorld(pointWorld:)(v3);
  }

  return result;
}

void DataModel.addGestureRecognizerIfNeeded()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Adding tap and pan recognizers...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_tapGesture;
  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_tapGesture))
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_23B824000, v7, v8, "... tapGesture already exists... nothing to do.", v9, 2u);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }
  }

  else
  {
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = objc_allocWithZone(type metadata accessor for RETapGesture());

    v13 = RETapGesture.init(model:onTap:)(v12, partial apply for closure #1 in DataModel.addGestureRecognizerIfNeeded(), v10);
    v14 = *(v1 + v6);
    *(v1 + v6) = v13;
    v7 = v13;

    v15 = *(v1 + 16);
    if (!v15)
    {
      __break(1u);
      goto LABEL_19;
    }

    v16 = v15;
    [v16 addGestureRecognizer_];
  }

  v17 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_panGesture;
  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_panGesture))
  {
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23B824000, oslog, v18, "... panGesture already exists... nothing to do.", v19, 2u);
      MEMORY[0x23EEB0B70](v19, -1, -1);
    }

    goto LABEL_15;
  }

  v20 = swift_allocObject();
  swift_weakInit();
  v21 = objc_allocWithZone(type metadata accessor for REPanGesture());
  v22 = REPanGesture.init(onPan:)(partial apply for closure #1 in DataModel.addGestureRecognizerIfNeeded(), v20);
  v23 = *(v1 + v17);
  *(v1 + v17) = v22;
  oslog = v22;

  v24 = *(v1 + 16);
  if (!v24)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v25 = v24;
  [v25 addGestureRecognizer_];

LABEL_15:
}

uint64_t closure #1 in DataModel.addGestureRecognizerIfNeeded()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DataModel.onGesture()();
  }

  return result;
}

void DataModel.removeGestureRecognizer()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Removing tap and pan recognizers...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_tapGesture;
  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_tapGesture))
  {
    v7 = *(v1 + 16);
    if (!v7)
    {
      __break(1u);
      goto LABEL_15;
    }

    [v7 removeGestureRecognizer_];
    v8 = *(v1 + v6);
    *(v1 + v6) = 0;
  }

  v9 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_panGesture;
  if (!*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_panGesture))
  {
    return;
  }

  v10 = *(v1 + 16);
  if (!v10)
  {
LABEL_15:
    __break(1u);
    return;
  }

  [v10 removeGestureRecognizer_];
  v11 = *(v1 + v9);
  *(v1 + v9) = 0;
}

void DataModel.onGesture()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DataModel.State(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v29 - v10);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v11);

  v12 = type metadata accessor for DataModel.Error(0);
  if ((*(*(v12 - 8) + 48))(v11, 8, v12) == 5)
  {
    v13 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel;
    v14 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);
    if (!v14)
    {
      goto LABEL_18;
    }

    if (*(v14 + 24) == 2)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, logger);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_23B824000, v16, v17, "A gesture detected in auto box mode: switching to manual box mode!", v18, 2u);
        MEMORY[0x23EEB0B70](v18, -1, -1);
      }

      v19 = *(v1 + v13);
      if (!v19)
      {
        goto LABEL_19;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);

      *v5 = static OS_dispatch_queue.main.getter();
      (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
      v20 = _dispatchPreconditionTest(_:)();
      (*(v3 + 8))(v5, v2);
      if (v20)
      {
        DetectModeBoxModel.performSwitchStateTransitions(from:to:)(*(v19 + 24), 3u);
        *(v19 + 24) = 3;

        return;
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, logger);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136446210;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v9);

      v26 = String.init<A>(describing:)();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v30);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_23B824000, v22, v23, "onGesture() called but nothing to do in state: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x23EEB0B70](v25, -1, -1);
      MEMORY[0x23EEB0B70](v24, -1, -1);
    }

    outlined destroy of DataModel.Error(v11, type metadata accessor for DataModel.State);
  }
}

uint64_t DataModel.switchToCompletedIfFinishingComplete()()
{
  v1 = v0;
  v2 = type metadata accessor for DataModel.State(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriterCompleted) == 1 && *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isInternalSessionCompleted) == 1)
    {
      v14 = type metadata accessor for DataModel.Error(0);
      (*(*(v14 - 8) + 56))(v7, 8, 8, v14);
      swift_getKeyPath();
      swift_getKeyPath();
      outlined init with copy of DataModel.Error(v7, v5, type metadata accessor for DataModel.State);

      static Published.subscript.setter();
      return outlined destroy of DataModel.Error(v7, type metadata accessor for DataModel.State);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DataModel.subscribeToUpdateEvents()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Subscribing to update events...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = v6;
    dispatch thunk of ARView.scene.getter();

    type metadata accessor for SceneEvents.Update();
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    swift_allocObject();
    swift_weakInit();
    Scene.subscribe<A>(to:on:_:)();

    outlined destroy of PerspectiveCameraComponent?(v9, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_updateSubscription;
    swift_beginAccess();
    outlined assign with take of Cancellable?(v11, v1 + v8, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in DataModel.subscribeToUpdateEvents()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SceneEvents.Update.deltaTime.getter();
    DataModel.update(deltaTime:)(v3);
  }

  return result;
}

uint64_t DataModel.unsubscribeFromUpdateEvents()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Unsubscribing from update events...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_updateSubscription;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v6, &v9, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  if (*(&v10 + 1))
  {
    outlined init with copy of Cancellable(&v9, v8);
    outlined destroy of PerspectiveCameraComponent?(&v9, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(&v9, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  }

  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v9, v1 + v6, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return swift_endAccess();
}

void DataModel.setMTLPixelFormat(to:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = [v3 layer];
  v5 = [v4 sublayers];

  if (v5)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CALayer, 0x277CD9ED0);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
LABEL_20:
      v7 = __CocoaSet.count.getter();
      if (v7)
      {
LABEL_5:
        v8 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x23EEAFC40](v8, v6);
            v10 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_14:
              __break(1u);
              return;
            }
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_20;
            }

            v9 = *(v6 + 8 * v8 + 32);
            v10 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_14;
            }
          }

          v13 = v9;
          objc_opt_self();
          v11 = swift_dynamicCastObjCClass();
          if (v11)
          {
            break;
          }

          ++v8;
          if (v10 == v7)
          {
            goto LABEL_21;
          }
        }

        v12 = v11;

        [v12 setPixelFormat_];

        return;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_5;
      }
    }

LABEL_21:
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DataModel.ARViewResolution@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DataModel.ARViewResolution.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t specialized RangeReplaceableCollection<>.removeLast()(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = String.index(before:)();

  return MEMORY[0x2821FBE70](a1);
}

uint64_t DataModel.arViewResolution.getter()
{
  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel____lazy_storage___arViewResolution;
  result = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel____lazy_storage___arViewResolution);
  if (result == 5)
  {
    v3 = MEMORY[0x23EEAF480](0x6C65646F6DLL, 0xE500000000000000);
    v4 = specialized static DataModel.getIOProperty(name:)(v3);
    v6 = v5;

    if (v6 && (v7 = specialized Sequence<>.starts<A>(with:)(0x3331656E6F685069, 0xE800000000000000, v4, v6), , (v7 & 1) != 0))
    {
      result = 3;
    }

    else
    {
      result = 4;
    }

    *(v0 + v1) = result;
  }

  return result;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  v4 = String.Iterator.next()();
  if (v4.value._object)
  {
    countAndFlagsBits = v4.value._countAndFlagsBits;
    object = v4.value._object;
    do
    {
      v9 = String.Iterator.next()();
      if (!v9.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v9.value._countAndFlagsBits && object == v9.value._object)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v8 = String.Iterator.next()();
      countAndFlagsBits = v8.value._countAndFlagsBits;
      object = v8.value._object;
    }

    while (v8.value._object);
  }

  v10 = String.Iterator.next()().value._object;

  if (!v10)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void DataModel.startObjectCapturing()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v82 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v80 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for DispatchQoS();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchTime();
  v77 = *(v84 - 8);
  v6 = MEMORY[0x28223BE20](v84);
  v75 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v76 = &v69 - v8;
  *&v83 = type metadata accessor for DataModel.State(0);
  v9 = MEMORY[0x28223BE20](v83);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v69 - v12);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v17 = static OS_dispatch_queue.main.getter();
  v18 = *(v15 + 104);
  LODWORD(v88) = *MEMORY[0x277D85200];
  v89 = (v15 + 104);
  v87 = v18;
  (v18)(v17);
  v19 = _dispatchPreconditionTest(_:)();
  v86 = *(v15 + 8);
  v86(v17, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_12;
  }

  v74 = v3;
  v90 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v13);

  v20 = type metadata accessor for DataModel.Error(0);
  (*(*(v20 - 8) + 56))(v11, 5, 8, v20);
  v21 = specialized static DataModel.State.== infix(_:_:)(v13, v11);
  outlined destroy of DataModel.Error(v11, type metadata accessor for DataModel.State);
  outlined destroy of DataModel.Error(v13, type metadata accessor for DataModel.State);
  if (v21)
  {
    v22 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
    if (!v22)
    {
      lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error, &protocol conformance descriptor for DataModel.Error);
      swift_allocError();
      *v37 = 0xD000000000000013;
      v37[1] = 0x800000023B9279A0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    }

    v23 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel;
    if (!*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel))
    {
      goto LABEL_36;
    }

    v24 = v22;
    DetectModeBoxModel.currentCaptureBox.getter(v97);

    if (v98)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, logger);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_23B824000, v26, v27, "startCapturing() called before the bounding box was settled. Please wait for the bounding box to settle before starting capture!", v28, 2u);
        MEMORY[0x23EEB0B70](v28, -1, -1);
      }

      return;
    }

    v70 = v24;
    v83 = v97[0];
    v73 = v97[1];
    v72 = v97[2];
    v71 = v97[3];
    type metadata accessor for CaptureCircle();
    swift_allocObject();
    v38 = CaptureCircle.init(numBins:binFillAnimDurationSecs:)(96, 0.25);
    v39 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle;
    *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle) = v38;

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, logger);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134349056;
      v44 = *(v2 + v39);
      if (!v44)
      {
LABEL_42:

        __break(1u);
        return;
      }

      *(v43 + 4) = *(v44 + 16);
      v45 = v43;

      _os_log_impl(&dword_23B824000, v41, v42, "... new orbit made a new CaptureCircle with id= %{public}ld", v45, 0xCu);
      MEMORY[0x23EEB0B70](v45, -1, -1);
    }

    else
    {
    }

    v96 = 0;
    v46 = (v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform);
    v47 = v73;
    *v46 = v83;
    v46[1] = v47;
    v48 = v71;
    v46[2] = v72;
    v46[3] = v48;
    *(v46 + 64) = 0;
    v49 = *(v2 + v23);
    if (!v49)
    {
      goto LABEL_37;
    }

    *v17 = static OS_dispatch_queue.main.getter();
    v87(v17, v88, v14);
    v50 = _dispatchPreconditionTest(_:)();
    v86(v17, v14);
    if (v50)
    {
      DetectModeBoxModel.performSwitchStateTransitions(from:to:)(*(v49 + 24), 0);
      *(v49 + 24) = 0;

      v51 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel;
      v52 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel);
      if (!v52)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v53 = v46[1];
      v92 = *v46;
      v93 = v53;
      v54 = v46[3];
      v94 = v46[2];
      v95 = v54;
      v55 = *(v46 + 64);
      if (v55)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      *v17 = static OS_dispatch_queue.main.getter();
      v87(v17, v88, v14);
      v56 = _dispatchPreconditionTest(_:)();
      v86(v17, v14);
      if (v56)
      {
        v57 = v93;
        *(v52 + 144) = v92;
        *(v52 + 160) = v57;
        v58 = v95;
        *(v52 + 176) = v94;
        *(v52 + 192) = v58;
        *(v52 + 208) = v55;
        CaptureModeBoxModel.updateCurrentEntityTransform()();

        if (!*(v2 + v51))
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        CaptureModeBoxModel.enable()();

        if (!*(v2 + v51))
        {
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        *v17 = static OS_dispatch_queue.main.getter();
        v87(v17, v88, v14);
        v59 = _dispatchPreconditionTest(_:)();
        v86(v17, v14);
        v60 = v70;
        if (v59)
        {
          CaptureModeBoxModel.executeSquish(duration:)(0.3);

          v88 = static OS_dispatch_queue.main.getter();
          v61 = v75;
          static DispatchTime.now()();
          v62 = v76;
          + infix(_:_:)();
          v89 = *(v77 + 8);
          v89(v61, v84);
          v63 = swift_allocObject();
          *(v63 + 16) = v2;
          *(v63 + 24) = v60;
          aBlock[4] = partial apply for closure #1 in DataModel.startObjectCapturing();
          aBlock[5] = v63;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
          aBlock[3] = &block_descriptor_6;
          v64 = _Block_copy(aBlock);
          v87 = v60;

          v65 = v78;
          static DispatchQoS.unspecified.getter();
          aBlock[0] = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
          v66 = v80;
          v67 = v74;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v68 = v88;
          MEMORY[0x23EEAF910](v62, v65, v66, v64);
          _Block_release(v64);

          (*(v82 + 8))(v66, v67);
          (*(v79 + 8))(v65, v81);
          v89(v62, v84);
          return;
        }

        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_32;
  }

LABEL_12:
  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, logger);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v92 = v33;
    *v32 = 136446210;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v13);

    v34 = String.init<A>(describing:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v92);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_23B824000, v30, v31, "startCapturing() called in state %{public}s != .detecting in object mode.  Dropping the call...", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    MEMORY[0x23EEB0B70](v33, -1, -1);
    MEMORY[0x23EEB0B70](v32, -1, -1);
  }
}

uint64_t closure #1 in DataModel.startObjectCapturing()(uint64_t a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    v7 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform + 48);
    v23 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform + 32);
    v24 = v7;
    v25 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform + 64);
    v8 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform + 16);
    v21 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform);
    v22 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13simd_float4x4aSgMd, &_sSo13simd_float4x4aSgMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v20);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_23B824000, v3, v4, "Start capturing... using box: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x23EEB0B70](v6, -1, -1);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v12 = type metadata accessor for ObjectCaptureSession.CaptureOptions();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectCaptureSession.CaptureOptions.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v21);

  ObjectCaptureSession.CaptureOptions.usePlaneFiltering.setter();
  ObjectCaptureSession.CaptureOptions.useFreeformScanVolume.setter();
  v16 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform + 48);
  v23 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform + 32);
  v24 = v16;
  v25 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform + 64);
  v17 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform + 16);
  v21 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform);
  v22 = v17;
  dispatch thunk of ObjectCaptureSession.startCapturing(inside:with:)();
  return (*(v13 + 8))(v15, v12);
}

void DataModel.startFreeformCapturing()()
{
  v1 = v0;
  v2 = type metadata accessor for DataModel.State(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = (v31 - v6);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v7);

  v13 = type metadata accessor for DataModel.Error(0);
  (*(*(v13 - 8) + 56))(v5, 4, 8, v13);
  v14 = specialized static DataModel.State.== infix(_:_:)(v7, v5);
  outlined destroy of DataModel.Error(v5, type metadata accessor for DataModel.State);
  outlined destroy of DataModel.Error(v7, type metadata accessor for DataModel.State);
  if (v14)
  {
    v15 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
    if (v15)
    {
      v16 = type metadata accessor for ObjectCaptureSession.CaptureOptions();
      v17 = *(v16 - 8);
      MEMORY[0x28223BE20](v16);
      v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = v15;
      ObjectCaptureSession.CaptureOptions.init()();
      ObjectCaptureSession.CaptureOptions.usePlaneFiltering.setter();
      ObjectCaptureSession.CaptureOptions.useFreeformScanVolume.setter();
      ObjectCaptureSession.CaptureOptions.freeformPointDensityThreshold.setter();
      LOBYTE(v31[0]) = 1;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 1;
      dispatch thunk of ObjectCaptureSession.startCapturing(inside:with:)();
      *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) = 2;
      DataModel.captureMode.didset();
      type metadata accessor for FreeformMeshManager();
      swift_allocObject();
      v21 = FreeformMeshManager.init(config:)();

      (*(v17 + 8))(v19, v16);
      *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_meshManager) = v21;
    }

    else
    {
      lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error, &protocol conformance descriptor for DataModel.Error);
      swift_allocError();
      *v30 = 0xD000000000000013;
      v30[1] = 0x800000023B9279A0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    return;
  }

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, logger);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31[0] = v26;
    *v25 = 136446210;
    swift_getKeyPath();
    v37 = v2;
    swift_getKeyPath();
    static Published.subscript.getter(v7);

    v27 = String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v31);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_23B824000, v23, v24, "startCapturing() called in state %{public}s != .ready in area mode.  Ignore the call...", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x23EEB0B70](v26, -1, -1);
    MEMORY[0x23EEB0B70](v25, -1, -1);
  }
}

void type metadata accessor for Published<DataModel.State>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for Published<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Published<CoveragePointRenderer?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance DataModel@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DataModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

char *RETapGesture.init(model:onTap:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12RETapGesture_model] = 0;
  v7 = &v3[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12RETapGesture_onTap];
  v8 = type metadata accessor for RETapGesture();
  *v7 = 0;
  *(v7 + 1) = 0;
  v16.receiver = v3;
  v16.super_class = v8;
  v9 = objc_msgSendSuper2(&v16, sel_initWithTarget_action_, 0, 0);
  v10 = OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12RETapGesture_model;
  swift_beginAccess();
  v11 = v9;

  swift_unownedRelease();
  *&v9[v10] = a1;
  swift_unownedRetain();
  swift_endAccess();

  v12 = &v11[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12RETapGesture_onTap];
  v13 = *&v11[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12RETapGesture_onTap];
  v14 = *&v11[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12RETapGesture_onTap + 8];
  *v12 = a2;
  *(v12 + 1) = a3;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v13, v14);
  [v11 addTarget:v11 action:sel_onUITap_];

  return v11;
}

void RETapGesture.onUITap(_:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12RETapGesture_model;
  swift_beginAccess();
  v5 = *(v2 + v4);
  swift_unownedRetainStrong();
  if (v5)
  {
    v6 = *(v5 + 16);

    [a1 locationInView_];
    v8 = v7;
    v10 = v9;

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      type metadata accessor for CGPoint(0);
      v16 = String.init<A>(describing:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v23);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_23B824000, v12, v13, "onTap at %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x23EEB0B70](v15, -1, -1);
      MEMORY[0x23EEB0B70](v14, -1, -1);
    }

    v19 = v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12RETapGesture_onTap;
    v20 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12RETapGesture_onTap);
    if (v20)
    {
      v21 = *(v19 + 8);

      v20(v22, v8, v10);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v20, v21);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

char *REPanGesture.init(onPan:)(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12REPanGesture_onPan];
  v6 = type metadata accessor for REPanGesture();
  *v5 = 0;
  *(v5 + 1) = 0;
  v13.receiver = v2;
  v13.super_class = v6;
  v7 = objc_msgSendSuper2(&v13, sel_initWithTarget_action_, 0, 0);
  v8 = &v7[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12REPanGesture_onPan];
  v9 = *&v7[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12REPanGesture_onPan];
  v10 = *&v7[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12REPanGesture_onPan + 8];
  *v8 = a1;
  *(v8 + 1) = a2;
  v11 = v7;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v9, v10);
  [v11 addTarget:v11 action:sel_onUIPan];

  return v11;
}

void REPanGesture.onUIPan()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "onPan", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12REPanGesture_onPan;
  v7 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12REPanGesture_onPan);
  if (v7)
  {
    v8 = *(v6 + 8);

    v7(v9);

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v7, v8);
  }

  else
  {
    __break(1u);
  }
}

void RELongPressGesture.onUILongPress(_:)(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D18RELongPressGesture_model);
  swift_unownedRetainStrong();
  if (v4)
  {
    v5 = *(v4 + 16);

    [a1 locationInView_];
    v7 = v6;
    v9 = v8;

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136446210;
      type metadata accessor for CGPoint(0);
      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v22);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_23B824000, v11, v12, "onLongPress at %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x23EEB0B70](v14, -1, -1);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }

    v18 = v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D18RELongPressGesture_onLongPress;
    v19 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D18RELongPressGesture_onLongPress);
    if (v19)
    {
      v20 = *(v18 + 8);

      v19(v21, v7, v9);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v19, v20);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void @objc RETapGesture.init(target:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

id DataModel.LocalARCoachingViewDelegate.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t @objc RETapGesture.__ivar_destroyer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_unownedRelease();
  v6 = (a1 + *a4);
  v7 = *v6;
  v8 = v6[1];

  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v7, v8);
}

uint64_t type metadata completion function for DataModel.State(uint64_t a1)
{
  v1 = type metadata accessor for DataModel.Error(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t type metadata completion function for DataModel.Error(uint64_t a1)
{
  result = type metadata accessor for ObjectCaptureSession.Error();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for (requiredBytes: Int64)();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DataModel.CaptureMode and conformance DataModel.CaptureMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type DataModel.CaptureMode and conformance DataModel.CaptureMode;
  if (!lazy protocol witness table cache variable for type DataModel.CaptureMode and conformance DataModel.CaptureMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataModel.CaptureMode and conformance DataModel.CaptureMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DataModel.ARViewResolution and conformance DataModel.ARViewResolution(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type DataModel.ARViewResolution and conformance DataModel.ARViewResolution;
  if (!lazy protocol witness table cache variable for type DataModel.ARViewResolution and conformance DataModel.ARViewResolution)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataModel.ARViewResolution and conformance DataModel.ARViewResolution);
  }

  return result;
}

uint64_t key path getter for DataModel.showMiniView : DataModel@<X0>(_BYTE *a4@<X8>)
{
  return key path getter for DataModel.showMiniView : DataModel(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  *a4 = v6;
  return result;
}

double key path getter for DataModel.miniViewScreenRotationAngle : DataModel@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for DataModel.miniViewScreenRotationAngle : DataModel(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for DataModel.coveragePointRenderer : DataModel@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for DataModel.coveragePointRenderer : DataModel(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return static Published.subscript.setter();
}

uint64_t key path getter for DataModel.id : DataModel@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);
}

uint64_t key path setter for DataModel.id : DataModel(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v10(v7, v9, v3);

  static Published.subscript.setter();
  return (*(v4 + 8))(v9, v3);
}

uint64_t key path getter for DataModel.numShotsTaken : DataModel@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  *a4 = v6;
  return result;
}

uint64_t key path setter for DataModel.numShotsTaken : DataModel(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for DataModel.showMiniView : DataModel(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double key path getter for DataModel.reticleAimVector : DataModel@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for DataModel.reticleAimVector : DataModel(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void key path setter for DataModel.shouldShowARKitCoachingView : DataModel(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  DataModel.shouldShowARKitCoachingView.didset();
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, uint64_t a2)
{

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Combine14AnyCancellableC_Tt1g5(v4, v3);
  v12 = v5;
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);

  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v5 + 48) + 8 * v8);
  specialized _NativeSet._delete(at:)(v8);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v2 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackOGMd, &_ss11_SetStorageCy19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero(v7, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackOGMd, &_ss11_SetStorageCy19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x23EEAFE40](v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
      do
      {
        v10 = dispatch thunk of Hashable._rawHashValue(seed:)() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        MEMORY[0x23EEAFE40](v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Combine14AnyCancellableC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCancellable();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t specialized Set._Variant.remove(at:)(unint64_t result, uint64_t a2, char a3)
{
  v4 = result;
  v5 = *v3;
  if ((*v3 & 0xC000000000000001) == 0)
  {
    v8 = a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    v10 = result;
    v11 = *v3;
    if (a3)
    {
      v12 = v3;
      v13 = type metadata accessor for AnyCancellable();
      result = __CocoaSet.Index.age.getter();
      if (result != *(v11 + 36))
      {
        __break(1u);
        goto LABEL_25;
      }

      __CocoaSet.Index.element.getter();
      swift_dynamicCast();
      v8 = v17;
      v18 = v17;
      lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
      v3 = &v18;
      v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v15 = -1 << *(v11 + 32);
      v4 = v14 & ~v15;
      if ((*(v11 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
      {
        v16 = ~v15;
        lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
        do
        {
          v3 = v13;
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            goto LABEL_19;
          }

          v4 = (v4 + 1) & v16;
        }

        while (((*(v11 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
      }

      __break(1u);
    }

    if ((v4 & 0x8000000000000000) == 0 && 1 << *(v11 + 32) > v4)
    {
      if ((*(v11 + 8 * (v4 >> 6) + 56) >> v4))
      {
        v12 = v3;
        if (*(v11 + 36) == v8)
        {
LABEL_20:
          v18 = v11;
          if (!v10)
          {
            specialized _NativeSet.copy()();
            v11 = v18;
          }

          v7 = *(*(v11 + 48) + 8 * v4);
          specialized _NativeSet._delete(at:)(v4);
          *v12 = v18;
          return v7;
        }

        __break(1u);
LABEL_19:

        goto LABEL_20;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (a3)
  {
    if (v5 < 0)
    {
      v6 = *v3;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x23EEAFB70](result, a2, v6);
    type metadata accessor for AnyCancellable();

    swift_dynamicCast();
    v7 = specialized Set._Variant._migrateToNative(_:removing:)(v6, v18);

    return v7;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized static DataModel.Error.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataModel.Error(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v37 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = (&v37 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI9DataModelC5ErrorO_AEtMd, &_s19_RealityKit_SwiftUI9DataModelC5ErrorO_AEtMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = (&v37 + *(v17 + 56) - v18);
  outlined init with copy of DataModel.Error(a1, &v37 - v18, type metadata accessor for DataModel.Error);
  outlined init with copy of DataModel.Error(a2, v20, type metadata accessor for DataModel.Error);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        if (swift_getEnumCaseMultiPayload() != 5)
        {
          goto LABEL_28;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        outlined init with copy of DataModel.Error(v19, v7, type metadata accessor for DataModel.Error);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v22 = *v7 == *v20;
LABEL_22:
          outlined destroy of DataModel.Error(v19, type metadata accessor for DataModel.Error);
          return v22 & 1;
        }

        goto LABEL_28;
      }

      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_30;
  }

  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of DataModel.Error(v19, v15, type metadata accessor for DataModel.Error);
    v24 = *v15;
    v23 = v15[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_9;
    }

LABEL_19:

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with copy of DataModel.Error(v19, v10, type metadata accessor for DataModel.Error);
    v29 = swift_getEnumCaseMultiPayload();
    v30 = type metadata accessor for ObjectCaptureSession.Error();
    v31 = v30;
    v32 = *(v30 - 8);
    if (v29 == 2)
    {
      MEMORY[0x28223BE20](v30);
      v34 = &v37 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v32 + 32))(v34, v20, v31);
      v22 = MEMORY[0x23EEAE2C0](v10, v34);
      v35 = *(v32 + 8);
      v35(v34, v31);
      v35(v10, v31);
      goto LABEL_22;
    }

    (*(*(v30 - 8) + 8))(v10, v30);
LABEL_28:
    outlined destroy of PerspectiveCameraComponent?(v19, &_s19_RealityKit_SwiftUI9DataModelC5ErrorO_AEtMd, &_s19_RealityKit_SwiftUI9DataModelC5ErrorO_AEtMR);
    v22 = 0;
    return v22 & 1;
  }

  outlined init with copy of DataModel.Error(v19, v13, type metadata accessor for DataModel.Error);
  v24 = *v13;
  v23 = v13[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_19;
  }

LABEL_9:
  v25 = *v20;
  v26 = v20[1];
  if (v24 == v25 && v23 == v26)
  {

    goto LABEL_30;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
LABEL_30:
    outlined destroy of DataModel.Error(v19, type metadata accessor for DataModel.Error);
    v22 = 1;
    return v22 & 1;
  }

  outlined destroy of DataModel.Error(v19, type metadata accessor for DataModel.Error);
  v22 = 0;
  return v22 & 1;
}

uint64_t specialized static DataModel.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataModel.Error(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DataModel.State(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI9DataModelC5StateO_AEtMd, &_s19_RealityKit_SwiftUI9DataModelC5StateO_AEtMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of DataModel.Error(a1, &v20 - v13, type metadata accessor for DataModel.State);
  outlined init with copy of DataModel.Error(a2, &v14[v15], type metadata accessor for DataModel.State);
  v16 = *(v5 + 48);
  v17 = v16(v14, 8, v4);
  if (v17 <= 3)
  {
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        if (v16(&v14[v15], 8, v4) != 2)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      if (v16(&v14[v15], 8, v4) == 3)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (!v17)
      {
        outlined init with copy of DataModel.Error(v14, v10, type metadata accessor for DataModel.State);
        if (!v16(&v14[v15], 8, v4))
        {
          outlined init with take of DataModel.State(&v14[v15], v7, type metadata accessor for DataModel.Error);
          v18 = specialized static DataModel.Error.== infix(_:_:)(v10, v7);
          outlined destroy of DataModel.Error(v7, type metadata accessor for DataModel.Error);
          outlined destroy of DataModel.Error(v10, type metadata accessor for DataModel.Error);
          outlined destroy of DataModel.Error(v14, type metadata accessor for DataModel.State);
          return v18 & 1;
        }

        outlined destroy of DataModel.Error(v10, type metadata accessor for DataModel.Error);
        goto LABEL_22;
      }

      if (v16(&v14[v15], 8, v4) == 1)
      {
        goto LABEL_18;
      }
    }

LABEL_22:
    outlined destroy of PerspectiveCameraComponent?(v14, &_s19_RealityKit_SwiftUI9DataModelC5StateO_AEtMd, &_s19_RealityKit_SwiftUI9DataModelC5StateO_AEtMR);
    v18 = 0;
    return v18 & 1;
  }

  if (v17 <= 5)
  {
    if (v17 == 4)
    {
      if (v16(&v14[v15], 8, v4) != 4)
      {
        goto LABEL_22;
      }
    }

    else if (v16(&v14[v15], 8, v4) != 5)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (v17 == 6)
  {
    if (v16(&v14[v15], 8, v4) == 6)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  if (v17 == 7)
  {
    if (v16(&v14[v15], 8, v4) != 7)
    {
      goto LABEL_22;
    }
  }

  else if (v16(&v14[v15], 8, v4) != 8)
  {
    goto LABEL_22;
  }

LABEL_18:
  outlined destroy of DataModel.Error(v14, type metadata accessor for DataModel.State);
  v18 = 1;
  return v18 & 1;
}

void specialized DataModel.setCustomRenderOptions(on:)()
{
  v0 = type metadata accessor for ARView.RenderOptions();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v15[-v5];
  static ARView.RenderOptions.disableGroundingShadows.getter();
  v7 = ARView.renderOptions.modify();
  specialized OptionSet<>.insert(_:)(v6, v4);
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  v7(v15, 0);
  static ARView.RenderOptions.disableDepthOfField.getter();
  v9 = ARView.renderOptions.modify();
  specialized OptionSet<>.insert(_:)(v6, v4);
  v8(v4, v0);
  v8(v6, v0);
  v9(v15, 0);
  static ARView.RenderOptions.disablePersonOcclusion.getter();
  v10 = ARView.renderOptions.modify();
  specialized OptionSet<>.insert(_:)(v6, v4);
  v8(v4, v0);
  v8(v6, v0);
  v10(v15, 0);
  static ARView.RenderOptions.disableAREnvironmentLighting.getter();
  v11 = ARView.renderOptions.modify();
  specialized OptionSet<>.insert(_:)(v6, v4);
  v8(v4, v0);
  v8(v6, v0);
  v11(v15, 0);
  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (!v13)
  {
    static ARView.RenderOptions.disableMotionBlur.getter();
    v14 = ARView.renderOptions.modify();
    specialized OptionSet<>.insert(_:)(v6, v4);
    v8(v4, v0);
    v8(v6, v0);
    v14(v15, 0);
  }
}

CFTypeRef specialized static DataModel.getIOProperty(name:)(const __CFString *a1)
{
  v2 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *MEMORY[0x277CD2898];
  v4 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v3, v4);
  result = IORegistryEntryCreateCFProperty(MatchingService, a1, *MEMORY[0x277CBECE8], 0);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = swift_unknownObjectRetain_n();
  v9 = CFGetTypeID(v8);
  if (v9 != CFStringGetTypeID())
  {
    v10 = CFGetTypeID(v7);
    swift_unknownObjectRelease();
    if (v10 != CFDataGetTypeID() || (swift_unknownObjectRetain(), !swift_dynamicCast()))
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v11 = v20;
    static String.Encoding.utf8.getter();
    v12 = String.init(data:encoding:)();
    v21 = v12;
    if (!v13)
    {
      v18 = v12;
      swift_unknownObjectRelease();
      outlined consume of Data._Representation(v11, v22);
      return v18;
    }

    v14 = v12;
    v15 = specialized BidirectionalCollection.last.getter(v12, v13);
    if (v16)
    {
      if (!v15 && v16 == 0xE100000000000000)
      {

LABEL_18:
        specialized RangeReplaceableCollection<>.removeLast()(v17);
        swift_unknownObjectRelease();
        outlined consume of Data._Representation(v11, v22);

        return v21;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_18;
      }
    }

    swift_unknownObjectRelease();
    outlined consume of Data._Representation(v11, v22);
    return v14;
  }

  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    return v20;
  }

  else
  {
    return 0;
  }
}

void specialized DataModel.computeFactorScale(arViewResolution:)()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  CGRectGetWidth(v1);
  [v0 bounds];
  CGRectGetHeight(v2);
  [v0 scale];
}

void specialized DataModel.captureSession.setter(void *a1)
{
  DataModel.removeCaptureSubscriptions()();
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriter) = 0;

  v3 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession;
  v4 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession) = a1;
  v5 = a1;

  if (*(v1 + v3))
  {
    DataModel.addCaptureSubscriptions()();

    DataModel.setupDebugState()();
  }
}

uint64_t specialized DataModel.throwIfInsufficientStorage(imagesDirectory:checkpointDirectory:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v93 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static PhotogrammetryFileHelpers.requiredBytesForImagesCaptureDirectory.getter();
  v12 = static PhotogrammetryFileHelpers.requiredBytesCheckpointDir(maxNumImagesBytes:)();
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v97 = a2;
    v98 = v12;
    v99 = v8;
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  v102 = __swift_project_value_buffer(v14, logger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  v17 = os_log_type_enabled(v15, v16);
  v100 = v10;
  v101 = v7;
  v96 = v2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v103 = v95;
    *v18 = 136446210;
    v19 = static PhotogrammetryFileHelpers.byteFormatter.getter();
    v20 = v6;
    v21 = v13;
    v22 = [v19 stringFromByteCount_];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v13 = v21;
    v6 = v20;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v103);

    *(v18 + 4) = v26;
    _os_log_impl(&dword_23B824000, v15, v16, "Checking that we have sufficient storage for %{public}s...", v18, 0xCu);
    v27 = v95;
    __swift_destroy_boxed_opaque_existential_0Tm(v95);
    MEMORY[0x23EEB0B70](v27, -1, -1);
    MEMORY[0x23EEB0B70](v18, -1, -1);
  }

  v28 = static PhotogrammetryFileHelpers.getAvailableStorage(ofDir:)();
  v29 = Logger.logObject.getter();
  if (v28 >= v13)
  {
    v42 = static os_log_type_t.info.getter();
    v43 = os_log_type_enabled(v29, v42);
    v94 = v13;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v103 = v45;
      *v44 = 136446210;
      v46 = static PhotogrammetryFileHelpers.byteFormatter.getter();
      v47 = [v46 stringFromByteCount_];

      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v103);

      *(v44 + 4) = v51;
      _os_log_impl(&dword_23B824000, v29, v42, "... Success!  We have %{public}s available.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      MEMORY[0x23EEB0B70](v45, -1, -1);
      MEMORY[0x23EEB0B70](v44, -1, -1);
    }

    v52 = v100;
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v97, v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v53 = v99;
    v54 = *(v99 + 48);
    v55 = v101;
    if (v54(v6, 1, v101) == 1)
    {
      static PhotogrammetryFileHelpers.temporaryDirectory.getter();
      if (v54(v6, 1, v55) != 1)
      {
        outlined destroy of PerspectiveCameraComponent?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      }
    }

    else
    {
      (*(v53 + 32))(v52, v6, v55);
    }

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v103 = v59;
      *v58 = 136446210;
      v60 = static PhotogrammetryFileHelpers.byteFormatter.getter();
      v61 = v98;
      v62 = [v60 stringFromByteCount_];

      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &v103);

      *(v58 + 4) = v66;
      v52 = v100;
      _os_log_impl(&dword_23B824000, v56, v57, "Checking that we have sufficient storage for checkpoint dir.  Required space = %{public}s...", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      MEMORY[0x23EEB0B70](v59, -1, -1);
      v67 = v58;
      v53 = v99;
      MEMORY[0x23EEB0B70](v67, -1, -1);
    }

    else
    {

      v61 = v98;
    }

    v68 = static PhotogrammetryFileHelpers.getAvailableStorage(ofDir:)();
    v69 = Logger.logObject.getter();
    if (v68 >= v61)
    {
      v83 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v69, v83))
      {
        v84 = swift_slowAlloc();
        v85 = v52;
        v86 = swift_slowAlloc();
        v103 = v86;
        *v84 = 136446210;
        v87 = static PhotogrammetryFileHelpers.byteFormatter.getter();
        v88 = [v87 stringFromByteCount_];

        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;

        v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v91, &v103);

        *(v84 + 4) = v92;
        _os_log_impl(&dword_23B824000, v69, v83, "... Success!  We have %{public}s available.", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v86);
        MEMORY[0x23EEB0B70](v86, -1, -1);
        MEMORY[0x23EEB0B70](v84, -1, -1);

        return (*(v53 + 8))(v85, v101);
      }

      else
      {

        return (*(v53 + 8))(v52, v101);
      }
    }

    else
    {
      v70 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v103 = v72;
        *v71 = 136446210;
        v73 = static PhotogrammetryFileHelpers.byteFormatter.getter();
        v74 = [v73 stringFromByteCount_];

        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v76;

        v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, &v103);

        *(v71 + 4) = v78;
        _os_log_impl(&dword_23B824000, v69, v70, "... Error insufficient storage!  We had: %{public}s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v72);
        v79 = v72;
        v52 = v100;
        MEMORY[0x23EEB0B70](v79, -1, -1);
        MEMORY[0x23EEB0B70](v71, -1, -1);
      }

      v80 = v94;
      v81 = v101;
      type metadata accessor for DataModel.Error(0);
      lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error, &protocol conformance descriptor for DataModel.Error);
      swift_allocError();
      *v82 = v80;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (*(v53 + 8))(v52, v81);
    }
  }

  else
  {
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v103 = v32;
      *v31 = 136446210;
      v33 = static PhotogrammetryFileHelpers.byteFormatter.getter();
      v34 = [v33 stringFromByteCount_];

      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v13;
      v38 = v37;

      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v38, &v103);
      v13 = v36;

      *(v31 + 4) = v39;
      _os_log_impl(&dword_23B824000, v29, v30, "... Error insufficient storage!  We had: %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x23EEB0B70](v32, -1, -1);
      MEMORY[0x23EEB0B70](v31, -1, -1);
    }

    type metadata accessor for DataModel.Error(0);
    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error, &protocol conformance descriptor for DataModel.Error);
    swift_allocError();
    *v40 = v13;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

void specialized RangefinderObserver.zoneDidChange(_:)(char a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, logger);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = String.init<A>(describing:)();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_23B824000, oslog, v2, "Rangefinder zoneDidChange: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    MEMORY[0x23EEB0B70](v4, -1, -1);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  else
  {
  }
}

void specialized static DataModel.makeDeviceMotionEstimatorDesc(captureMode:)(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = 0x3F80000000000000;
LABEL_5:
    v9 = v3;
    v4 = specialized static ExperimentSettings.loadMotionFilterDurationSecs(default:)(1.0);
    v5 = v4 * 60.0;
    if (COERCE_UNSIGNED_INT64(fabs(v4 * 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        v6 = v5;
        v7 = specialized static ExperimentSettings.loadMinBadMotionScore(default:)(0.2618);
        v8 = specialized static ExperimentSettings.loadMaxBadMotionScore(default:)(0.5236);
        *a2 = v9;
        *(a2 + 4) = v9;
        *(a2 + 16) = v6;
        *(a2 + 24) = v4;
        *(a2 + 32) = 2;
        *(a2 + 40) = v7;
        *(a2 + 44) = v8;
        return;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a1 == 2)
  {
    v3 = 1056964608;
    goto LABEL_5;
  }

LABEL_12:
  __break(1u);
}

uint64_t specialized DataModel.LocalARCoachingViewDelegate.coachingOverlayViewDidRequestSessionReset(_:)()
{
  v0 = type metadata accessor for DataModel.Error(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_23B824000, v4, v5, "coachingOverlayViewDidRequestSessionReset: Will invalidate the session!", v6, 2u);
    MEMORY[0x23EEB0B70](v6, -1, -1);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    swift_storeEnumTagMultiPayload();
    DataModel.invalidateSession(error:)(v2);

    return outlined destroy of DataModel.Error(v2, type metadata accessor for DataModel.Error);
  }

  return result;
}

void specialized DataModel.LocalARCoachingViewDelegate.coachingOverlayViewWillActivate(_:)(const char *a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23B824000, oslog, v3, a1, v4, 2u);
    MEMORY[0x23EEB0B70](v4, -1, -1);
  }
}

void specialized DataModel.updateReticleAimSystem(at:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMd, &_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v32 - v4;
  v6 = type metadata accessor for CoveragePointCloud(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 16);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__latestCoveragePointCloud;
    swift_beginAccess();
    v11 = *(v3 + 16);
    v11(v5, v1 + v10, v2);
    v34 = v9;
    Atomic.wrappedValue.getter();
    v12 = *(v3 + 8);
    v12(v5, v2);
    v13 = CoveragePointCloud.isValid()();
    outlined destroy of DataModel.Error(v8, type metadata accessor for CoveragePointCloud);
    if (v13)
    {
      v33 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_userFeedbackSystem;
      v11(v5, v1 + v10, v2);

      Atomic.wrappedValue.getter();
      v12(v5, v2);
      *&v14 = CoveragePointCloud.bboxWorld.getter();
      v32[2] = v15;
      v32[3] = v14;
      v32[0] = v17;
      v32[1] = v16;
      outlined destroy of DataModel.Error(v8, type metadata accessor for CoveragePointCloud);
      v18.n128_f64[0] = Transform.init(matrix:)();
      v19 = v34;
      specialized UserFeedbackSystem.update(at:arView:bboxWorld:)(v34, v18, v20, v21);

      v22 = *(*(v1 + v33) + 16);
      swift_getKeyPath();
      swift_getKeyPath();
      v35 = v22;

      static Published.subscript.setter();
    }

    else
    {
      v27 = v34;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, logger);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_23B824000, v29, v30, "Point cloud is not valid, can't compute reticle aim score!", v31, 2u);
        MEMORY[0x23EEB0B70](v31, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, logger);
    v34 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_23B824000, v34, v24, "Can't update reticle aim system since no ARView!", v25, 2u);
      MEMORY[0x23EEB0B70](v25, -1, -1);
    }

    v26 = v34;
  }
}

void specialized DataModel.onError(error:)(uint64_t a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = type metadata accessor for ObjectCaptureSession.Error();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = *(v4 + 16);
  v7(v17 - v6, a1, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17[1] = v17;
    v18 = v11;
    v19 = v11;
    *v10 = 136315138;
    MEMORY[0x28223BE20](v11);
    v7(v17 - v6, v17 - v6, v3);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    (*(v4 + 8))(v17 - v6, v3);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v19);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_23B824000, v8, v9, "onError: %s", v10, 0xCu);
    v16 = v18;
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x23EEB0B70](v16, -1, -1);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v17 - v6, v3);
  }
}

unint64_t specialized DataModel.ARViewResolution.init(rawValue:)(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t outlined destroy of DataModel.Error(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined init with copy of DataModel.Error(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Shot, @in_guaranteed ObjectCaptureSession.Metadata.Shot) -> ()(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC4ShotV_AC8MetadataOADVtMd, &_s6CoreOC20ObjectCaptureSessionC4ShotV_AC8MetadataOADVtMR);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t lazy protocol witness table accessor for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of DataModel.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with copy of CoveragePointCloud(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void DetectModeBoxModel.detectedBoundingBox.didset()
{
  if ((*(v0 + 144) & 1) == 0 && *(v0 + 24) == 2)
  {
    v1 = *(v0 + 80);
    v2 = *(v0 + 96);
    v3 = *(v0 + 112);
    v4 = *(v0 + 128);
    v5 = vextq_s8(v3, v3, 8uLL);
    v6 = vextq_s8(v4, v4, 0xCuLL);
    v7 = vextq_s8(v3, v3, 0xCuLL);
    v8 = vextq_s8(v4, v4, 8uLL);
    v9 = vextq_s8(v4, v4, 4uLL);
    v10 = vextq_s8(v3, v3, 4uLL);
    v11 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(vextq_s8(v2, v2, 8uLL), vmlaq_f32(vmulq_f32(v6, vnegq_f32(v10)), v9, v7)), vmlaq_f32(vmulq_f32(v8, vnegq_f32(v7)), v6, v5), vextq_s8(v2, v2, 4uLL)), vmlaq_f32(vmulq_f32(v9, vnegq_f32(v5)), v8, v10), vextq_s8(v2, v2, 0xCuLL)), v1);
    v8.i64[0] = vextq_s8(v11, v11, 8uLL).u64[0];
    if (vaddv_f32(vsub_f32(vzip1_s32(*v11.i8, *v8.f32), vzip2_s32(*v11.i8, *v8.f32))) < 0.0)
    {
      v16 = *(v0 + 128);
      v17 = *(v0 + 112);
      v18 = *(v0 + 96);
      v19 = *(v0 + 80);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, logger);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_23B824000, v13, v14, "Bounding box transform was not right-handed!  Fixing...", v15, 2u);
        MEMORY[0x23EEB0B70](v15, -1, -1);
      }

      v2 = v18;
      v1 = v19;
      v4 = v16;
      v3 = v17;
    }

    specialized static BoundingBoxHelpers.ensuringPositiveDeterminant(matrix:)(v1, v2, v3, v4);

    DetectModeBoxModel.updateAutomaticEntityWithBoundingBox(srtMatrix:)();
  }
}

void DetectModeBoxModel.TransitionAnimation.state.didset()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    v4 = String.init<A>(describing:)();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_23B824000, oslog, v1, "DetectBox TransitionAnimation.State = %{public}s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    MEMORY[0x23EEB0B70](v3, -1, -1);
    MEMORY[0x23EEB0B70](v2, -1, -1);
  }

  else
  {
  }
}

void DetectModeBoxModel.TransitionAnimation.startAnimation(at:to:)(double a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = v4;
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v7 = type metadata accessor for AnimationTimingFunction();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4[1].n128_u8[0])
  {
    __break(1u);
  }

  else if (one-time initialization token for logger == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, logger);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v33 = v7;
    v16 = v15;
    v40[0] = v15;
    *v14 = 136446466;
    v17 = v5[3];
    v18 = v5[4];
    v37 = v5[2];
    v38 = v17;
    v39 = v18;
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v40);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2082;
    v37 = v34;
    v38 = v35;
    v39 = v36;
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v40);

    *(v14 + 14) = v24;
    _os_log_impl(&dword_23B824000, v12, v13, "Start transition anim from: %{public}s to: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    v25 = v16;
    v7 = v33;
    MEMORY[0x23EEB0B70](v25, -1, -1);
    MEMORY[0x23EEB0B70](v14, -1, -1);
  }

  v26 = v35;
  v5[7] = v34;
  v5[8] = v26;
  v5[9] = v36;
  v5[10].n128_u8[0] = 0;
  v5[10].n128_f64[1] = a1;
  v5[11].n128_u8[0] = 0;
  *&v27 = specialized simd_float4x4.init(translation:rotation:scale:)(v5[4], v5[3], v5[2]);
  v32[2] = v28;
  v33 = v27;
  v32[1] = v29;
  v32[0] = v30;
  type metadata accessor for Entity();
  HasTransform.setTransformMatrix(_:relativeTo:)();
  static AnimationTimingFunction.default.getter();
  v31 = HasTransform.move(to:relativeTo:duration:timingFunction:)();
  (*(v8 + 8))(v10, v7);
  v5[11].n128_u64[1] = v31;

  v5[1].n128_u8[0] = 1;
  DetectModeBoxModel.TransitionAnimation.state.didset();
}

void DetectModeBoxModel.TransitionAnimation.update(t:)(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for __EntityRef();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 16);
  if (v9 == 2)
  {
    v16 = *(v1 + 168) + 0.5;
    if (*(v1 + 176))
    {
      v16 = INFINITY;
    }

    v17 = a1 - v16 + a1 - v16;
    if (v17 <= 1.0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 1.0;
    }

    if (v17 > 0.0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0.0;
    }

    if (*(v1 + 96))
    {
      v20 = v6;

      dispatch thunk of Entity.__coreEntity.getter();
      MEMORY[0x23EEAC640](&v27, MEMORY[0x277D841D8], MEMORY[0x277D841D8]);
      (*(v5 + 8))(v8, v20);
      REHierarchicalFadeComponentGetComponentType();
      v21 = REEntityGetOrAddComponentByClass();
      REHierarchicalFadeComponentSetOpacity();
      MEMORY[0x23EEB00C0](v21);
    }

    if (v19 >= 1.0)
    {
      *(v2 + 16) = 3;
      DetectModeBoxModel.TransitionAnimation.state.didset();
    }
  }

  else if (v9 == 1)
  {
    if (*(v1 + 184))
    {

      v10 = dispatch thunk of AnimationPlaybackController.isComplete.getter();

      if (v10)
      {
        if (*(v1 + 96))
        {
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v11 = type metadata accessor for Logger();
          __swift_project_value_buffer(v11, logger);
          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v12, v13))
          {
            v14 = swift_slowAlloc();
            *v14 = 0;
            _os_log_impl(&dword_23B824000, v12, v13, "Done transform transition, start fading handles in...", v14, 2u);
            MEMORY[0x23EEB0B70](v14, -1, -1);
          }

          v15 = 2;
        }

        else
        {
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v22 = type metadata accessor for Logger();
          __swift_project_value_buffer(v22, logger);
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&dword_23B824000, v23, v24, "No fade target entity, completing transition.", v25, 2u);
            MEMORY[0x23EEB0B70](v25, -1, -1);
          }

          v15 = 3;
        }

        *(v2 + 16) = v15;

        DetectModeBoxModel.TransitionAnimation.state.didset();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void DetectModeBoxModel.TransitionAnimation.cancel()()
{
  v1 = v0;
  v2 = type metadata accessor for __EntityRef();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23B824000, v7, v8, "TransitionAnimation cancel() called!", v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  if (*(v1 + 184))
  {

    dispatch thunk of AnimationPlaybackController.stop()();
  }

  *(v1 + 184) = 0;

  if (*(v1 + 96))
  {

    dispatch thunk of Entity.__coreEntity.getter();
    MEMORY[0x23EEAC640](&v12, MEMORY[0x277D841D8], MEMORY[0x277D841D8]);
    (*(v3 + 8))(v5, v2);
    REHierarchicalFadeComponentGetComponentType();
    v10 = REEntityGetOrAddComponentByClass();
    REHierarchicalFadeComponentSetOpacity();
    MEMORY[0x23EEB00C0](v10);
  }

  *(v1 + 16) = 3;
  DetectModeBoxModel.TransitionAnimation.state.didset();
}

uint64_t DetectModeBoxModel.TransitionAnimation.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DetectModeBoxModel.StartDetectionAnimation.start()()
{
  v1 = v0;
  v2 = type metadata accessor for AnimationTimingFunction();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Entity();
  HasTransform.transformMatrix(relativeTo:)();
  *&v6 = Transform.init(matrix:)();
  v33 = v7;
  v34 = v6;
  v32 = v8;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v31 = v2;
    v14 = v13;
    v38 = v13;
    *v12 = 136446466;
    v35 = v34;
    v36 = v33;
    v37 = v32;
    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v38);
    *&v34 = v3;
    v18 = v17;

    *(v12 + 4) = v18;
    *(v12 + 12) = 2082;
    v19 = *(v1 + 48);
    v20 = *(v1 + 64);
    v35 = *(v1 + 32);
    v36 = v19;
    v37 = v20;
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v38);

    *(v12 + 14) = v23;
    v3 = v34;
    _os_log_impl(&dword_23B824000, v10, v11, "Starting detection animation: \n fromXform=%{public}s \n toXform=%{public}s", v12, 0x16u);
    swift_arrayDestroy();
    v24 = v14;
    v2 = v31;
    MEMORY[0x23EEB0B70](v24, -1, -1);
    MEMORY[0x23EEB0B70](v12, -1, -1);
  }

  v25 = *(v1 + 32);
  v33 = *(v1 + 48);
  v34 = v25;
  v32 = *(v1 + 64);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DetectModeBoxModel.StartDetectionAnimation.start());
  v31 = v26;
  static simd_quatf.identity.getter();
  static AnimationTimingFunction.linear.getter();
  v27 = HasTransform.move(to:relativeTo:duration:timingFunction:)();
  v28 = *(v3 + 8);
  v28(v5, v2);
  *(v1 + 88) = v27;

  static AnimationTimingFunction.linear.getter();
  v29 = HasTransform.move(to:relativeTo:duration:timingFunction:)();
  v28(v5, v2);
  *(v1 + 96) = v29;
}

void DetectModeBoxModel.StartDetectionAnimation.stop()()
{
  if (*(v0 + 88))
  {

    dispatch thunk of AnimationPlaybackController.stop()();

    *(v0 + 88) = 0;

    if (*(v0 + 96))
    {

      dispatch thunk of AnimationPlaybackController.stop()();
    }

    *(v0 + 96) = 0;
  }
}

uint64_t DetectModeBoxModel.StartDetectionAnimation.__deallocating_deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 104), *(v0 + 112));

  return swift_deallocClassInstance();
}

void DetectModeBoxModel.currentCaptureBox.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  if (v2 == 1 || v2 == 2)
  {
    v9 = *(v1 + 80);
    v8 = *(v1 + 96);
    v11 = *(v1 + 112);
    v10 = *(v1 + 128);
    v12 = *(v1 + 144);
  }

  else if (v2 == 3 && *(v1 + 32))
  {
    v3 = a1;
    type metadata accessor for Entity();

    HasTransform.transformMatrix(relativeTo:)();
    v15 = v5;
    v16 = v4;
    v13 = v7;
    v14 = v6;

    v8 = v15;
    v9 = v16;
    v10 = v13;
    v11 = v14;
    a1 = v3;
    v12 = 0;
  }

  else
  {
    v10 = 0uLL;
    v12 = 1;
    v11 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 16) = v8;
  *(a1 + 32) = v11;
  *(a1 + 48) = v10;
  *(a1 + 64) = v12;
}

Swift::Void __swiftcall DetectModeBoxModel.onDetectedBoundingBox(box:)(simd_float4x4 *box)
{
  if (*(v1 + 144))
  {
    v15 = v2;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    v6 = v1;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      type metadata accessor for simd_float4x4(0);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_23B824000, v8, v9, "First detected bounding box: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x23EEB0B70](v11, -1, -1);
      MEMORY[0x23EEB0B70](v10, -1, -1);

      v2 = v15;
      v3 = v16;
      v4 = v17;
      v5 = v18;
      v1 = v6;
    }

    else
    {

      v4 = v17;
      v5 = v18;
      v2 = v15;
      v3 = v16;
    }
  }

  *(v1 + 80) = v2;
  *(v1 + 96) = v3;
  *(v1 + 112) = v4;
  *(v1 + 128) = v5;
  *(v1 + 144) = 0;
  DetectModeBoxModel.detectedBoundingBox.didset();
}

Swift::Void __swiftcall DetectModeBoxModel.setVisible(_:)(Swift::Bool a1)
{
  v2 = type metadata accessor for __EntityRef();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32))
  {

    dispatch thunk of Entity.__coreEntity.getter();
    v6 = MEMORY[0x277D841D8];
    MEMORY[0x23EEAC640](&v11, MEMORY[0x277D841D8], MEMORY[0x277D841D8]);
    v7 = *(v3 + 8);
    v7(v5, v2);
    REHierarchicalFadeComponentGetComponentType();
    v8 = REEntityGetOrAddComponentByClass();
    REHierarchicalFadeComponentSetOpacity();
    MEMORY[0x23EEB00C0](v8);

    dispatch thunk of Entity.__coreEntity.getter();
    MEMORY[0x23EEAC640](&v11, v6, v6);
    v7(v5, v2);
    REHierarchicalFadeComponentGetComponentType();
    v9 = REEntityGetOrAddComponentByClass();
    REHierarchicalFadeComponentSetOpacity();
    MEMORY[0x23EEB00C0](v9);
  }
}

Swift::Void __swiftcall DetectModeBoxModel.startRaycastManualBoxFlow()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v0 + 24) <= 1u)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    *v5 = static OS_dispatch_queue.main.getter();
    (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
    v6 = _dispatchPreconditionTest(_:)();
    (*(v3 + 8))(v5, v2);
    if (v6)
    {
      DetectModeBoxModel.performSwitchStateTransitions(from:to:)(*(v1 + 24), 1u);
      *(v1 + 24) = 1;
      DetectModeBoxModel.startManualBoxFlow()();
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void DetectModeBoxModel.updateAutomaticEntityWithBoundingBox(srtMatrix:)()
{
  if (*(v1 + 24) != 2)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (*(v1 + 216))
  {
    return;
  }

  if (*(v1 + 224))
  {
    return;
  }

  v0 = *(v1 + 272);
  if (!v0)
  {
    return;
  }

  if ((*(v0 + 16) & 1) == 0)
  {
    v2 = one-time initialization token for logger;

    if (v2 == -1)
    {
LABEL_9:
      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, logger);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_23B824000, v4, v5, "Starting bounding box animated updater...", v6, 2u);
        MEMORY[0x23EEB0B70](v6, -1, -1);
      }

      *(v0 + 16) = 1;
      if (*(v0 + 96))
      {
        __break(1u);
        return;
      }

      BoundingBoxAnimatedUpdater.startNewAnimationIfNeeded()();
      goto LABEL_13;
    }

LABEL_17:
    swift_once();
    goto LABEL_9;
  }

LABEL_13:
  v7.n128_f64[0] = Transform.init(matrix:)();
  BoundingBoxAnimatedUpdater.setTargetWorld(transform:)(v7, v8, v9);
}

void DetectModeBoxModel.performSwitchStateTransitions(from:to:)(int a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_52:
    swift_once();
LABEL_4:
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v54[0] = v15;
      *v14 = 136315138;
      v53 = a1;
      v16 = String.init<A>(describing:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v54);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_23B824000, v12, v13, "Punting transition since states match: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x23EEB0B70](v15, -1, -1);
      v19 = v14;
LABEL_38:
      MEMORY[0x23EEB0B70](v19, -1, -1);
      goto LABEL_39;
    }

    goto LABEL_39;
  }

  if (a1 == a2)
  {
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_52;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = off_284E43808[0];
    type metadata accessor for DataModel.LocalDetectBoxDelegate();
    v20(a2 == 3);
    swift_unknownObjectRelease();
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, logger);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v52 = a1;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v54[0] = v26;
    *v25 = 136315394;
    v53 = a1;
    v27 = String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v54);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v53 = a2;
    v30 = String.init<A>(describing:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v54);

    *(v25 + 14) = v32;
    _os_log_impl(&dword_23B824000, v22, v23, "Switching from %s to %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v26, -1, -1);
    MEMORY[0x23EEB0B70](v25, -1, -1);
  }

  if (!*(v3 + 64))
  {
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    return;
  }

  type metadata accessor for Entity();

  HasTransform.transformMatrix(relativeTo:)();
  Transform.init(matrix:)();
  v50 = v34;
  v51 = v33;
  HasTransform.scale(relativeTo:)();
  v49 = v35;

  v36 = v52;
  if (v52 > 1u)
  {
    if (v52 == 2)
    {
      DetectModeBoxModel.removeGestureRecognizers()();
      v37 = *(v3 + 272);
      if (v37)
      {
        if (*(v37 + 96))
        {

          dispatch thunk of AnimationPlaybackController.stop()();

          *(v37 + 96) = 0;
        }

        else
        {
        }

        *(v37 + 16) = 0;
      }
    }

    else
    {
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_23B824000, v38, v39, "Removing the manual box manipulator and gestures...", v40, 2u);
        MEMORY[0x23EEB0B70](v40, -1, -1);
      }

      DetectModeBoxModel.removeGestureRecognizers()();
      DetectModeBoxModel.enableBoxManipulator(state:)(0);
      BoundingBoxScaleManipulator.detach()();
    }
  }

  else if (v52)
  {
    if (*(v3 + 32))
    {

      HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
    }

    type metadata accessor for ModelEntity();
    HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
    BoundingBoxScaleManipulator.detach()();
    DetectModeBoxModel.detachFrontFaceRotationWidget()();
  }

  if (!swift_weakLoadStrong())
  {
    v12 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_23B824000, v12, v45, "DataModel is nil!", v46, 2u);
      v19 = v46;
      goto LABEL_38;
    }

LABEL_39:

    return;
  }

  if (a2 - 2 < 2)
  {
    if (v36 != 1)
    {
LABEL_35:
      DetectModeBoxModel.installGestureRecognizers()();
      return;
    }

    v41 = *(v3 + 48);
    *(v3 + 32) = v41;
    swift_retain_n();

    if (*(v3 + 32))
    {
      if (swift_weakLoadStrong())
      {
        v42 = swift_retain_n();
        DataModel.addToScene(entity:)(v42);
      }
    }

    v43 = v49;
    v43.n128_u32[1] = 981668463;
    DetectModeBoxModel.scheduleTransitionAnimation(from:)(v43, v51, v50);
    if (v41)
    {
      type metadata accessor for BoundingBoxAnimatedUpdater();
      swift_allocObject();
      v44 = specialized BoundingBoxAnimatedUpdater.init(entity:duration:autoStart:)(v41, 0, 1.0);

      *(v3 + 272) = v44;

      goto LABEL_35;
    }

    goto LABEL_54;
  }

  if (a2)
  {
    LOBYTE(v54[0]) = 1;
    *(v3 + 80) = 0u;
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
    *(v3 + 128) = 0u;
    *(v3 + 144) = 1;
    DetectModeBoxModel.detectedBoundingBox.didset();
    BoundingBoxScaleManipulator.detach()();
    DetectModeBoxModel.removeGestureRecognizers()();
    DetectModeBoxModel.cancelAnimations()();
    DetectModeBoxModel.subscribeToUpdateEvents()();
    if (*(v3 + 32))
    {

      HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
    }

    type metadata accessor for ModelEntity();
    HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
    BoundingBoxScaleManipulator.detach()();
    DetectModeBoxModel.detachFrontFaceRotationWidget()();
    v47 = *(v3 + 64);
    if (!v47)
    {
      goto LABEL_55;
    }

    *(v3 + 32) = v47;

    if (*(v3 + 32) && swift_weakLoadStrong())
    {
      v48 = swift_retain_n();
      DataModel.addToScene(entity:)(v48);
    }

    *(v3 + 232) = *(v3 + 208);
  }

  else
  {
    LOBYTE(v54[0]) = 1;
    *(v3 + 80) = 0u;
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
    *(v3 + 128) = 0u;
    *(v3 + 144) = 1;
    DetectModeBoxModel.detectedBoundingBox.didset();
    BoundingBoxScaleManipulator.detach()();
    DetectModeBoxModel.removeGestureRecognizers()();
    DetectModeBoxModel.cancelAnimations()();
    if (*(v3 + 32))
    {

      HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
    }

    type metadata accessor for ModelEntity();
    HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
    BoundingBoxScaleManipulator.detach()();
    DetectModeBoxModel.detachFrontFaceRotationWidget()();
    DetectModeBoxModel.unsubscribeFromUpdateEvents()();
  }
}

Swift::Void __swiftcall DetectModeBoxModel.setBoundingBoxMatrix(box:)(simd_float4x4 *box)
{
  if (*(v1 + 24) != 3)
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = *(v1 + 272);
  if (v2 && *(v2 + 16) == 1)
  {
    v3 = one-time initialization token for logger;

    if (v3 == -1)
    {
LABEL_5:
      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, logger);
      oslog = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_23B824000, oslog, v5, "Bounding box is being directly set while an animation on it is running!", v6, 2u);
        MEMORY[0x23EEB0B70](v6, -1, -1);
      }

      return;
    }

LABEL_16:
    swift_once();
    goto LABEL_5;
  }

  if (*(v1 + 32))
  {
    type metadata accessor for Entity();

    HasTransform.setTransformMatrix(_:relativeTo:)();
  }
}

uint64_t @objc DetectModeBoxModel.handleRotate(_:)(uint64_t a1, uint64_t a2, void *a3, const char *a4, uint64_t a5, const char *a6)
{
  v9 = a3;

  specialized DetectModeBoxModel.handleRotate(_:)(a4, a5, a6);
}

void DetectModeBoxModel.installGestureRecognizers()()
{
  v1 = v0;
  v2 = type metadata accessor for ARView.EntityGestures();
  isa = v2[-1].isa;
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
LABEL_40:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v59 = __swift_project_value_buffer(v6, logger);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23B824000, v7, v8, "Connecting the RealityKit EntityGestureRecognizers (translate and rotate)...", v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  if (!v1[4])
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v63 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_23B824000, v63, v50, "DataModel is nil!", v51, 2u);
      MEMORY[0x23EEB0B70](v51, -1, -1);
    }

    v52 = v63;

    return;
  }

  v53 = Strong;
  v11 = *(Strong + 16);
  if (!v11)
  {
    goto LABEL_43;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit6ARViewC14EntityGesturesVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit6ARViewC14EntityGesturesVGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23B91A6F0;
  v13 = v11;
  static ARView.EntityGestures.rotation.getter();
  v65 = v12;
  lazy protocol witness table accessor for type ARView.EntityGestures and conformance ARView.EntityGestures();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit6ARViewC14EntityGesturesVGMd, &_sSay10RealityKit6ARViewC14EntityGesturesVGMR);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [ARView.EntityGestures] and conformance [A], &_sSay10RealityKit6ARViewC14EntityGesturesVGMd, &_sSay10RealityKit6ARViewC14EntityGesturesVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  if (!v1[6])
  {
LABEL_44:
    __break(1u);
    return;
  }

  v14 = ARView.installGestures(_:for:)();

  v15 = *(isa + 8);
  isa += 8;
  v15(v5, v2);
  v58 = *(v14 + 16);
  if (v58)
  {
    v16 = 0;
    v57 = v14 + 32;
    v54 = v1;
    do
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v17 = *(v57 + 16 * v16);
      isa = type metadata accessor for EntityTranslationGestureRecognizer();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        v62 = v17;
        v63 = v18;
        v19 = v17;
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_23B824000, v20, v21, "Connected EntityTranslateGestureRecognizer handleTranslate selector and delegate!", v22, 2u);
          MEMORY[0x23EEB0B70](v22, -1, -1);
        }

        v23 = v16;

        v61 = v19;
        v24 = v63;
        [v63 addTarget:v1 action:sel_handleTranslate_];
        v25 = v1[33];
        if (!v25)
        {
          __break(1u);
          goto LABEL_42;
        }

        v5 = v1[30];
        v60 = type metadata accessor for EntityGestureRecognizerDelegate();
        v26 = objc_allocWithZone(v60);
        v27 = OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_D3054C8CC2B5FD3485D9DD74FE19D26731EntityGestureRecognizerDelegate_entityTranslateGesture;
        *&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_D3054C8CC2B5FD3485D9DD74FE19D26731EntityGestureRecognizerDelegate_entityTranslateGesture] = 0;
        *&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_D3054C8CC2B5FD3485D9DD74FE19D26731EntityGestureRecognizerDelegate_entityRecognizers] = v14;
        *&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_D3054C8CC2B5FD3485D9DD74FE19D26731EntityGestureRecognizerDelegate_boxScaleManipulator] = v5;
        *&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_D3054C8CC2B5FD3485D9DD74FE19D26731EntityGestureRecognizerDelegate_boxRotateManipulator] = v25;
        v28 = *(v14 + 16);
        if (v28)
        {
          swift_beginAccess();
          v55 = v5;
          swift_retain_n();
          v56 = v25;
          swift_retain_n();
          swift_bridgeObjectRetain_n();
          v29 = 0;
          v30 = 32;
          do
          {
            v31 = *(v14 + v30);
            v32 = swift_dynamicCastClass();
            if (v32)
            {
              v33 = v32;
              *&v26[v27] = v32;
              v34 = v31;

              v29 = v33;
            }

            v30 += 16;
            --v28;
          }

          while (v28);
          swift_endAccess();

          v1 = v54;
          v5 = v55;
          v24 = v63;
          v2 = v56;
        }

        else
        {
          swift_retain_n();
          swift_retain_n();

          v2 = v25;
        }

        v64.receiver = v26;
        v64.super_class = v60;
        v41 = objc_msgSendSuper2(&v64, sel_init, v53);

        v42 = v1[35];
        v1[35] = v41;

        [v24 setDelegate:v1[35]];
        v16 = v23;
        v17 = v62;
      }

      else
      {
        type metadata accessor for EntityRotationGestureRecognizer();
        v35 = swift_dynamicCastClass();
        v36 = v17;
        v2 = Logger.logObject.getter();
        if (v35)
        {
          v37 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v2, v37))
          {
            v38 = v17;
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&dword_23B824000, v2, v37, "Connected EntityTranslateGestureRecognizer handleRotate selector.", v39, 2u);
            v40 = v39;
            v17 = v38;
            MEMORY[0x23EEB0B70](v40, -1, -1);
          }

          [v35 addTarget:v1 action:{sel_handleRotate_, v53}];
        }

        else
        {
          v43 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v2, v43))
          {
            v44 = v17;
            v45 = swift_slowAlloc();
            *v45 = 0;
            _os_log_impl(&dword_23B824000, v2, v43, "Unknown EntityGestureRecognizer found!", v45, 2u);
            v46 = v45;
            v17 = v44;
            MEMORY[0x23EEB0B70](v46, -1, -1);
          }
        }
      }

      ++v16;
    }

    while (v16 != v58);
  }

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_23B824000, v47, v48, "... done adding EntityTranslateGestureRecognizer gesture recognizers.", v49, 2u);
    MEMORY[0x23EEB0B70](v49, -1, -1);
  }
}

void DetectModeBoxModel.removeGestureRecognizers()()
{
  v1 = v0;
  v2 = type metadata accessor for ARView.EntityGestures();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23B824000, v7, v8, "Trying to remove EntityTranslateGestureRecognizer gesture recognizers...", v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 16);
    v12 = v11;

    if (v11)
    {
      v13[1] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type ARView.EntityGestures and conformance ARView.EntityGestures();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit6ARViewC14EntityGesturesVGMd, &_sSay10RealityKit6ARViewC14EntityGesturesVGMR);
      lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [ARView.EntityGestures] and conformance [A], &_sSay10RealityKit6ARViewC14EntityGesturesVGMd, &_sSay10RealityKit6ARViewC14EntityGesturesVGMR, MEMORY[0x277D83970]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      if (*(v1 + 48))
      {
        ARView.installGestures(_:for:)();

        (*(v3 + 8))(v5, v2);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t DetectModeBoxModel.loadWireframeAsync()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23B824000, v1, v2, "Async loading wire frame box...", v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  type metadata accessor for Entity();
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v4 = static BoundingBoxHelpers.bundle;
  MEMORY[0x23EEAD3D0](0x676E69646E756F42, 0xEF65627543786F42, static BoundingBoxHelpers.bundle);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = 1056964608;
  *(v6 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type LoadRequest<ModelEntity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR, MEMORY[0x277CDABA0]);
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23B824000, v7, v8, "Async loading wire frame reticle...", v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  MEMORY[0x23EEAD3D0](0xD000000000000010, 0x800000023B926890, v4);
  swift_allocObject();
  swift_weakInit();
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t closure #2 in DetectModeBoxModel.loadWireframeAsync()(uint64_t *a1, uint64_t a2, float a3)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "... done loading wire frame box.", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23B91A6F0;
  type metadata accessor for BoundingBoxHelpers();
  static BoundingBoxHelpers.makeBoxMaterial()((v8 + 32));
  type metadata accessor for ModelEntity();
  v9 = HasModel.model.modify();
  v11 = v10;
  v12 = type metadata accessor for ModelComponent();
  result = (*(*(v12 - 8) + 48))(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    ModelComponent.materials.setter();
    v9(v17, 0);
    type metadata accessor for Entity();
    swift_allocObject();
    Entity.init()();
    HasHierarchy.addChild(_:preservingWorldTransform:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91A6D0;
    *(inited + 32) = a3;
    *(inited + 36) = a3;
    *(inited + 40) = a3;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
    swift_setDeallocating();
    HasTransform.setScale(_:relativeTo:)();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v16 = *(Strong + 48);

    if (v16)
    {
      HasHierarchy.addChild(_:preservingWorldTransform:)();
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #4 in DetectModeBoxModel.loadWireframeAsync()(uint64_t *a1, uint64_t a2)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "... done loading wire frame reticle.", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_23B91A6F0;
    type metadata accessor for BoundingBoxHelpers();
    static BoundingBoxHelpers.makeBoxMaterial()((v8 + 32));
    type metadata accessor for ModelEntity();
    v9 = HasModel.model.modify();
    v11 = v10;
    v12 = type metadata accessor for ModelComponent();
    result = (*(*(v12 - 8) + 48))(v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      ModelComponent.materials.setter();
      v9(v13, 0);
      type metadata accessor for Entity();
      swift_allocObject();
      Entity.init()();
      HasHierarchy.addChild(_:preservingWorldTransform:)();
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of closure #4 in DetectModeBoxModel.loadWireframeAsync());
      result = HasTransform.scale.setter();
      if (*(v7 + 64))
      {

        HasHierarchy.addChild(_:preservingWorldTransform:)();
      }
    }

    __break(1u);
  }

  return result;
}

void DetectModeBoxModel.scheduleTransitionAnimation(from:)(__n128 a1, float32x4_t a2, float32x4_t a3)
{
  if (*(v3 + 216))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, logger);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_23B824000, oslog, v5, "scheduleTransitionAnimation called when there was already one!  Punting...", v6, 2u);
      MEMORY[0x23EEB0B70](v6, -1, -1);
    }
  }

  else
  {
    v7 = v3;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446210;
      v13 = String.init<A>(describing:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_23B824000, v9, v10, "scheduleTransitionAnimation from: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x23EEB0B70](v12, -1, -1);
      MEMORY[0x23EEB0B70](v11, -1, -1);
    }

    if (*(v7 + 32) && (, specialized simd_float4x4.init(translation:rotation:scale:)(a3, a2, a1), type metadata accessor for Entity(), HasTransform.setTransformMatrix(_:relativeTo:)(), , (v16 = *(v7 + 32)) != 0))
    {
      type metadata accessor for DetectModeBoxModel.TransitionAnimation();
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      *(v17 + 112) = 0u;
      *(v17 + 128) = 0u;
      *(v17 + 144) = 0u;
      *(v17 + 160) = 1;
      *(v17 + 168) = 0;
      *(v17 + 176) = 1;
      *(v17 + 184) = 0;
      *(v17 + 96) = 0;
      *(v17 + 104) = 0x3FE0000000000000;
      *(v17 + 32) = a1;
      *(v17 + 48) = a2;
      *(v17 + 64) = a3;
      *(v17 + 80) = 0x3FE0000000000000;
      *(v17 + 88) = v16;
      *(v7 + 216) = v17;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t DetectModeBoxModel.cancelAnimations()()
{
  if (v0[27])
  {

    DetectModeBoxModel.TransitionAnimation.cancel()();
  }

  v0[27] = 0;

  if (v0[28])
  {

    DetectModeBoxModel.StartDetectionAnimation.stop()();
  }

  v0[28] = 0;

  v0[29] = 0xFFF0000000000000;
  return result;
}

double DetectModeBoxModel.viewportCenterPoint.getter()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 16);
    if (v1)
    {
      v2 = v1;
      [v2 bounds];
      v3 = CGRectGetWidth(v9) * 0.5;
      [v2 bounds];
      CGRectGetHeight(v10);

      return v3;
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "No model or ARView: using (512, 512) for viewport center...", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  return 512.0;
}

double DetectModeBoxModel.computeScreenPointFromNormalized(pointNDC:)(float64_t a1, float64_t a2)
{
  Strong = swift_weakLoadStrong();
  result = 0.0;
  if (Strong)
  {
    v4 = *(Strong + 16);
    if (v4)
    {
      v5 = v4;
      [v5 bounds];
      Width = CGRectGetWidth(v19);
      [v5 bounds];
      Height = CGRectGetHeight(v20);

      v6.f64[0] = a1;
      v6.f64[1] = a2;
      __asm { FMOV            V0.2D, #1.0 }

      v12 = vaddq_f64(v6, _Q0);
      __asm { FMOV            V1.2D, #0.5 }

      v14 = vmulq_f64(v12, _Q1);
      _Q1.f64[0] = Width;
      _Q1.f64[1] = Height;
      *&result = *&vmulq_f64(v14, _Q1);
    }

    else
    {

      return 0.0;
    }
  }

  return result;
}

void DetectModeBoxModel.update(deltaTime:)(double a1)
{
  *(v1 + 208) = *(v1 + 208) + a1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(v1 + 24) == 1)
    {
      DetectModeBoxModel.updateDetectingState(model:)(Strong);
    }

    DetectModeBoxModel.updateAnimations(t:)(*(v1 + 208));
    if (*(v1 + 32))
    {
      type metadata accessor for Entity();

      HasTransform.transformMatrix(relativeTo:)();
      if (!*(v1 + 264))
      {
LABEL_35:
        __break(1u);
        return;
      }

      v3 = *(v1 + 208);

      BoundingBoxRotateManipulator.update(time:box:)(v3, v4);

      v5 = *(v1 + 240);
      v6 = swift_weakLoadStrong();
      if (v6)
      {
        v7 = v6;
        HasTransform.setTransformMatrix(_:relativeTo:)();
        HasTransform.scale(relativeTo:)();
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DetectModeBoxModel.update(deltaTime:));
        HasTransform.setScale(_:relativeTo:)();
        v8 = *(v5 + 48);
        v9 = *(v7 + 16);
        v20 = v9;
        *v10.i64 = Transform.init(matrix:)();
        v21 = v12;
        v22 = v11;
        *oslog = v10;
        BoundingBoxScaleManipulator.FaceHandleContainer.setScaleFromScreenConstraints(arView:extents:)(v9, v10);
        swift_beginAccess();
        v13 = *(v8 + 40);
        if (v13 >> 62)
        {
          v14 = __CocoaSet.count.getter();
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v14)
        {
LABEL_26:

          *(v8 + 64) = *oslog;
          *(v8 + 80) = v22;
          *(v8 + 96) = v21;
          *(v8 + 112) = 0;
          return;
        }

        v15 = 0;
        while (1)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            MEMORY[0x23EEAFC40](v15, v13);
            v16 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }
          }

          else
          {
            if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_32;
            }

            v16 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_19;
            }
          }

          if (*(v8 + 120))
          {
            break;
          }

          BoundingBoxScaleManipulator.FaceHandle.setPositionLocal(extents:minDistance:)(*oslog, *(v8 + 116));

          ++v15;
          if (v16 == v14)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
        goto LABEL_35;
      }
    }
  }

  else
  {
LABEL_20:
    if (one-time initialization token for logger != -1)
    {
LABEL_32:
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, logger);
    osloga = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(osloga, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23B824000, osloga, v18, "Model is nil!", v19, 2u);
      MEMORY[0x23EEB0B70](v19, -1, -1);
    }
  }
}

void DetectModeBoxModel.updateAnimations(t:)(double a1)
{
  v2 = v1;
  v3 = *(v1 + 216);
  if (!v3)
  {
    goto LABEL_15;
  }

  if (*(v3 + 16) == 3)
  {
    *(v1 + 216) = 0;
    DetectModeBoxModel.attachBoxManipulator()();
    DetectModeBoxModel.enableBoxManipulator(state:)(1);
LABEL_14:

    goto LABEL_15;
  }

  if (*(v3 + 16))
  {
    v17 = *(v1 + 208);

    DetectModeBoxModel.TransitionAnimation.update(t:)(v17);
    goto LABEL_14;
  }

  if (*(v1 + 32) && (*(v1 + 144) & 1) == 0)
  {
    v5 = one-time initialization token for logger;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136446210;
      type metadata accessor for simd_float4x4(0);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v20);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_23B824000, v7, v8, "updateAnimation(): got box, starting anim to: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    if (*(v2 + 144))
    {
      __break(1u);
      return;
    }

    v14.n128_f64[0] = Transform.init(matrix:)();
    DetectModeBoxModel.TransitionAnimation.startAnimation(at:to:)(a1, v14, v15, v16);
    goto LABEL_14;
  }

LABEL_15:
  v18 = *(v2 + 272);
  if (v18 && *(v18 + 16) == 1)
  {
    if (*(v18 + 96))
    {

      if ((AnimationPlaybackController.isPlaying.getter() & 1) != 0 && (dispatch thunk of AnimationPlaybackController.isComplete.getter() & 1) == 0)
      {
      }

      else
      {
        v19 = dispatch thunk of AnimationPlaybackController.isComplete.getter();

        if (v19)
        {
          *(v18 + 96) = 0;
        }
      }
    }

    else
    {

      BoundingBoxAnimatedUpdater.startNewAnimationIfNeeded()();
    }
  }
}

void DetectModeBoxModel.updateDetectingState(model:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 224);
  if (v3)
  {
    if (*(v3 + 88))
    {

      v4 = dispatch thunk of AnimationPlaybackController.isComplete.getter();

      if (v4)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        __swift_project_value_buffer(v5, logger);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&dword_23B824000, v6, v7, "StartDetectionAnimation complete! Finishing...", v8, 2u);
          MEMORY[0x23EEB0B70](v8, -1, -1);
        }

        v9 = *(v2 + 224);
        if (v9)
        {
          v10 = *(v9 + 104);
          if (v10)
          {
            v11 = *(v9 + 112);

            v10(v12);
            outlined consume of (@escaping @callee_guaranteed () -> ())?(v10, v11);
          }
        }

        *(v2 + 224) = 0;
      }
    }
  }

  else
  {
    DetectModeBoxModel.stickReticleModelToScreenCoordinates(model:)(a1);
    if (*(v1 + 144))
    {
      v13 = *(v1 + 232) + 0.5;
      if (v13 <= *(v1 + 208))
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, logger);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_23B824000, v23, v24, "Didn't get an automatic box in time.  Starting manual box flow...", v25, 2u);
          MEMORY[0x23EEB0B70](v25, -1, -1);
        }

        DetectModeBoxModel.startManualBoxFlow()();
      }

      else
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        __swift_project_value_buffer(v14, logger);

        oslog = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(oslog, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 134217984;
          *(v16 + 4) = v13 - *(v2 + 208);
          _os_log_impl(&dword_23B824000, oslog, v15, "... waiting for automatic detected box arrival.  Time remaining: %fs", v16, 0xCu);
          MEMORY[0x23EEB0B70](v16, -1, -1);
        }
      }
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, logger);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_23B824000, v18, v19, "Starting automatic bounding box flow...", v20, 2u);
        MEMORY[0x23EEB0B70](v20, -1, -1);
      }

      if (*(v2 + 144))
      {
        __break(1u);
      }

      else
      {
        *osloga = *(v2 + 80);
        v28 = *(v2 + 96);
        v27 = *(v2 + 112);
        v26 = *(v2 + 128);
        v21 = swift_allocObject();
        swift_weakInit();

        DetectModeBoxModel.startTransitionAnim(toBox:onFinish:)(partial apply for closure #1 in DetectModeBoxModel.startAutomaticBoxFlow(), v21, *osloga, v28, v27, v26);

        if (swift_weakLoadStrong())
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.setter();
        }
      }
    }
  }
}

void DetectModeBoxModel.startTransitionAnim(toBox:onFinish:)(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  *&v9 = specialized static BoundingBoxHelpers.getSquishedBoxBottomTransform(boxWorld:)(a3, a4, a5, a6);
  v16 = v10;
  v17 = v9;
  v15 = v11;
  v12 = v6[8];
  if (v12)
  {
    v13 = v6[9];
    type metadata accessor for DetectModeBoxModel.StartDetectionAnimation();
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    *(v14 + 32) = v17;
    *(v14 + 48) = v16;
    *(v14 + 64) = v15;
    *(v14 + 80) = 0x3FE0000000000000;
    *(v14 + 88) = 0;
    *(v14 + 96) = 0;
    *(v14 + 104) = a1;
    *(v14 + 112) = a2;
    v6[28] = v14;

    outlined copy of (@escaping @callee_guaranteed () -> ())?(a1, a2);

    DetectModeBoxModel.StartDetectionAnimation.start()();
  }

  else
  {
    __break(1u);
  }
}

void DetectModeBoxModel.startManualBoxFlow()()
{
  if (*(v0 + 24) != 1)
  {
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_11;
  }

  v1 = v0;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 16);
    v4 = v3;

    if (v3)
    {
      specialized static ManualBoxHelper.createDefaultManualBoxAtCurrentView(arView:)(v4, v36);
      if (v37)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        __swift_project_value_buffer(v5, logger);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&dword_23B824000, v6, v7, "Cannot create a manual box with a raycast!  Using a default!", v8, 2u);
          MEMORY[0x23EEB0B70](v8, -1, -1);
        }

        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DetectModeBoxModel.startManualBoxFlow());
        *oslog = v9;
        LODWORD(v10) = 0;
        v12.n128_u32[2] = 0;
        HIDWORD(v10) = v11;
        v32 = v10;
        v12.n128_u64[0] = 0;
        v13.n128_u64[0] = 0;
        v13.n128_u64[1] = v14;
        v12.n128_u32[3] = v15;
        v30 = v13;
        v31 = v12;
      }

      else
      {
        v32 = v36[1];
        *oslog = v36[0];
        v30 = v36[2];
        v31 = v36[3];
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v19 = off_284E43810[0];
        type metadata accessor for DataModel.LocalDetectBoxDelegate();
        v19();
        swift_unknownObjectRelease();
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, logger);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v35 = v24;
        *v23 = 136315138;
        Transform.init(matrix:)();
        v25 = String.init<A>(describing:)();
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v35);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_23B824000, v21, v22, "Using manual box: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        MEMORY[0x23EEB0B70](v24, -1, -1);
        MEMORY[0x23EEB0B70](v23, -1, -1);
      }

      *(v1 + 80) = *oslog;
      *(v1 + 96) = v32;
      *(v1 + 112) = v30;
      *(v1 + 128) = v31;
      *(v1 + 144) = 0;
      DetectModeBoxModel.detectedBoundingBox.didset();
      v28 = swift_weakLoadStrong();
      if (v28)
      {
        DetectModeBoxModel.stickReticleModelToScreenCoordinates(model:)(v28);

        v29 = swift_allocObject();
        swift_weakInit();

        DetectModeBoxModel.startTransitionAnim(toBox:onFinish:)(partial apply for closure #1 in DetectModeBoxModel.startManualBoxFlow(), v29, *oslog, v32, v30, v31);

        if (swift_weakLoadStrong())
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v35) = 1;
          static Published.subscript.setter();
        }
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_28;
  }

LABEL_11:
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, logger);
  osloga = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(osloga, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_23B824000, osloga, v17, "Cannot start manual box flow without a valid ARView!", v18, 2u);
    MEMORY[0x23EEB0B70](v18, -1, -1);
  }
}

uint64_t closure #1 in DetectModeBoxModel.startAutomaticBoxFlow()(uint64_t a1, const char *a2, unsigned __int8 a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23B824000, v10, v11, a2, v12, 2u);
    MEMORY[0x23EEB0B70](v12, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    *v8 = static OS_dispatch_queue.main.getter();
    (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
    v15 = _dispatchPreconditionTest(_:)();
    result = (*(v6 + 8))(v8, v5);
    if ((v15 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    DetectModeBoxModel.performSwitchStateTransitions(from:to:)(*(v14 + 24), a3);
    *(v14 + 24) = a3;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = swift_weakLoadStrong();

    if (v17)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v18[15] = 0;
      return static Published.subscript.setter();
    }
  }

  return result;
}

void DetectModeBoxModel.attachBoxManipulator()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
LABEL_24:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Attaching box face handle manipulator...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = *(v1 + 240);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_27;
  }

  v8 = *(v1 + 32);
  if (v8)
  {
    v9 = Strong;

    BoundingBoxScaleManipulator.attach(model:target:enabled:)(v9, v8, 0);

    DetectModeBoxModel.currentCaptureBox.getter(&v25);
    if ((v26 & 1) == 0)
    {
      v10 = swift_weakLoadStrong();
      if (v10)
      {
        v11 = v10;
        type metadata accessor for Entity();
        HasTransform.setTransformMatrix(_:relativeTo:)();
        HasTransform.scale(relativeTo:)();
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DetectModeBoxModel.attachBoxManipulator());
        HasTransform.setScale(_:relativeTo:)();
        v12 = *(v6 + 48);
        v13 = *(v11 + 16);
        v21 = v13;
        *v14.i64 = Transform.init(matrix:)();
        v22 = v16;
        v23 = v15;
        v24 = v14;
        BoundingBoxScaleManipulator.FaceHandleContainer.setScaleFromScreenConstraints(arView:extents:)(v13, v14);
        swift_beginAccess();
        v17 = *(v12 + 40);
        if (v17 >> 62)
        {
          v18 = __CocoaSet.count.getter();
        }

        else
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v18)
        {
          v19 = 0;
          while (1)
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              MEMORY[0x23EEAFC40](v19, v17);
              v20 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
LABEL_20:
                __break(1u);
                goto LABEL_21;
              }
            }

            else
            {
              if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_24;
              }

              v20 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                goto LABEL_20;
              }
            }

            if (*(v12 + 120))
            {
              break;
            }

            BoundingBoxScaleManipulator.FaceHandle.setPositionLocal(extents:minDistance:)(*v24.i64, *(v12 + 116));

            ++v19;
            if (v20 == v18)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_21:

        *(v12 + 64) = v24;
        *(v12 + 80) = v23;
        *(v12 + 96) = v22;
        *(v12 + 112) = 0;
      }
    }

    DetectModeBoxModel.attachFrontFaceRotationWidget()();
    return;
  }

LABEL_28:
  __break(1u);
}

void DetectModeBoxModel.enableBoxManipulator(state:)(char a1)
{
  v2 = v1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "Removing completed TransitionAnimation and enabling face handles!", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  v8 = *(v2 + 240);
  v9 = *(v8 + 96);
  *(v8 + 96) = a1 & 1;
  if (v9 != (a1 & 1))
  {
    if (a1)
    {
      BoundingBoxScaleManipulator.attachGestures()();
    }

    else
    {
      BoundingBoxScaleManipulator.detachGestures()();
    }
  }
}

void DetectModeBoxModel.attachFrontFaceRotationWidget()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "attachFrontFaceIndicator called...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(v1 + 264))
    {
      v7 = Strong;

      BoundingBoxRotateManipulator.attach(model:)(v7);

      v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_pointCloudsBySegment;
      swift_beginAccess();
      v9 = *(*(v7 + v8) + 16);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      v12 = os_log_type_enabled(v10, v11);
      if (v9 != 1)
      {
        if (v12)
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_23B824000, v10, v11, "Not showing the box front face indicator since this is not the first segment.", v16, 2u);
          MEMORY[0x23EEB0B70](v16, -1, -1);
        }

        v17 = *(v1 + 264);
        if (v17)
        {
          v15 = *(v17 + 256);

          BoundingBoxRotateManipulator.showFrontFaceIndicator.willset(0);
          *(v17 + 256) = 0;
          goto LABEL_16;
        }

LABEL_20:
        __break(1u);
        return;
      }

      if (v12)
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_23B824000, v10, v11, "Showing the box front face indicator since this is the first segment.", v13, 2u);
        MEMORY[0x23EEB0B70](v13, -1, -1);
      }

      v14 = *(v1 + 264);
      if (v14)
      {
        v15 = *(v14 + 256);
        *(v14 + 256) = 1;

LABEL_16:
        BoundingBoxRotateManipulator.showFrontFaceIndicator.didset(v15);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }
}

void DetectModeBoxModel.detachFrontFaceRotationWidget()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "detachFrontFaceIndicator...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  if (*(v1 + 264))
  {

    BoundingBoxRotateManipulator.detach()();
  }

  else
  {
    __break(1u);
  }
}

void DetectModeBoxModel.stickReticleModelToScreenCoordinates(model:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "Sticking reticle model to screen...", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = v8;
    DetectModeBoxModel.computeWorldScaleForTargetReticle(arView:reticleEdgeNDC:offsetToPlane:)(0.9, 0.02);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91A6D0;
    *(inited + 32) = 0;
    *(inited + 40) = -1130113270;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
    *oslogb = v11;
    swift_setDeallocating();
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DetectModeBoxModel.stickReticleModelToScreenCoordinates(model:));
    v47 = v12;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DetectModeBoxModel.makePlane(origin:normal:));
    v50 = v13;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of DetectModeBoxModel.makePlane(origin:normal:));
    *v15.i64 = simd_quaternion(v47, v14);
    v48 = v15;
    static simd_quatf.identity.getter();
    specialized simd_float4x4.init(translation:rotation:scale:)(*oslogb, v48, v50);
    DetectModeBoxModel.viewportCenterPoint.getter();
    v16 = ARView.unproject(_:ontoPlane:relativeToCamera:)();
    if (v18)
    {

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v57 = v22;
        *v21 = 136315138;
        DetectModeBoxModel.viewportCenterPoint.getter();
        type metadata accessor for CGPoint(0);
        v23 = String.init<A>(describing:)();
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v57);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_23B824000, v19, v20, "Can't unproject viewport center: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v22);
        MEMORY[0x23EEB0B70](v22, -1, -1);
        MEMORY[0x23EEB0B70](v21, -1, -1);
      }
    }

    else
    {
      v28 = v16;
      v29 = v17;
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of DetectModeBoxModel.stickReticleModelToScreenCoordinates(model:));
      *oslogc = v30;
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of DetectModeBoxModel.stickReticleModelToScreenCoordinates(model:));
      *v32.i64 = simd_quaternion(*oslogc, v31);
      oslogd = v32;
      dispatch thunk of ARView.cameraTransform.getter();
      v33 = vnegq_f32(oslogd);
      v34 = vtrn2q_s32(oslogd, vtrn1q_s32(oslogd, v33));
      v36 = vrev64q_s32(oslogd);
      v36.i32[0] = v33.i32[1];
      v36.i32[3] = v33.i32[2];
      osloga = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(oslogd, v33, 8uLL), *v35.f32, 1), vextq_s8(v34, v34, 8uLL), v35.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(oslogd, v35, 3), v36, v35, 2));
      static simd_quatf.identity.getter();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v57 = v40;
        *v39 = 136315138;
        v41 = String.init<A>(describing:)();
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v57);

        *(v39 + 4) = v43;
        _os_log_impl(&dword_23B824000, v37, v38, "transformWorld: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
        MEMORY[0x23EEB0B70](v40, -1, -1);
        MEMORY[0x23EEB0B70](v39, -1, -1);
      }

      v44 = *(v2 + 64);
      if (v44)
      {
        v45.i64[0] = v28;
        v45.i64[1] = v29;
        v51 = v45;
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #3 of DetectModeBoxModel.stickReticleModelToScreenCoordinates(model:));
        v49 = v46;
        outlined copy of DetectModeBoxModel.TargetReticleEntity?(v44);
        specialized simd_float4x4.init(translation:rotation:scale:)(v51, osloga, v49);
        type metadata accessor for Entity();
        HasTransform.setTransformMatrix(_:relativeTo:)();
        HasTransform.setScale(_:relativeTo:)();
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_23B824000, oslog, v26, "ARView was nil!", v27, 2u);
      MEMORY[0x23EEB0B70](v27, -1, -1);
    }
  }
}

__n128 DetectModeBoxModel.computeWorldScaleForTargetReticle(arView:reticleEdgeNDC:offsetToPlane:)(float a1, float a2)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DetectModeBoxModel.computeWorldScaleForTargetReticle(arView:reticleEdgeNDC:offsetToPlane:));
  v39 = v4;
  DetectModeBoxModel.computeScreenPointFromNormalized(pointNDC:)(0.0, 0.0);
  if (v5 & 1) != 0 || (DetectModeBoxModel.computeScreenPointFromNormalized(pointNDC:)(a1, 0.0), (v6))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_8;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Can't get screen points from normalized points!";
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6D0;
  *(inited + 32) = 0;
  *(inited + 40) = -a2;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
  v38 = v14;
  swift_setDeallocating();
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of DetectModeBoxModel.computeWorldScaleForTargetReticle(arView:reticleEdgeNDC:offsetToPlane:));
  v35 = v15;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DetectModeBoxModel.makePlane(origin:normal:));
  v37 = v16;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of DetectModeBoxModel.makePlane(origin:normal:));
  *v18.i64 = simd_quaternion(v35, v17);
  v36 = v18;
  static simd_quatf.identity.getter();
  specialized simd_float4x4.init(translation:rotation:scale:)(v38, v36, v37);
  v19 = ARView.unproject(_:ontoPlane:relativeToCamera:)();
  if ((v21 & 1) == 0)
  {
    v22 = v19;
    v23 = v20;
    v24 = ARView.unproject(_:ontoPlane:relativeToCamera:)();
    if ((v26 & 1) == 0)
    {
      v28.i64[0] = v22;
      v28.i64[1] = v23;
      v29.i64[0] = v24;
      v29.i64[1] = v25;
      v30 = vsubq_f32(v28, v29);
      v31 = vmulq_f32(v30, v30);
      v31.f32[0] = sqrtf(v31.f32[2] + (((*&v22 - *&v24) * (*&v22 - *&v24)) + v31.f32[1]));
      v32 = v31.f32[0] + v31.f32[0];
      v33 = swift_initStackObject();
      *(v33 + 16) = xmmword_23B91A6D0;
      *(v33 + 32) = v32;
      *(v33 + 36) = v32;
      *(v33 + 40) = v32;
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v33);
      v39 = v34;
      swift_setDeallocating();
      return v39;
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, logger);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Can't get unproject screen points into 3D view points!";
LABEL_7:
    _os_log_impl(&dword_23B824000, v8, v9, v11, v10, 2u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

LABEL_8:

  return v39;
}

uint64_t DetectModeBoxModel.subscribeToUpdateEvents()()
{
  v1 = v0;
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);
    v4 = v3;

    if (v3)
    {
      dispatch thunk of ARView.scene.getter();

      type metadata accessor for SceneEvents.Update();
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      swift_allocObject();
      swift_weakInit();
      Scene.subscribe<A>(to:on:_:)();

      outlined destroy of PerspectiveCameraComponent?(v5, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
      swift_beginAccess();
      outlined assign with take of Cancellable?(v7, v1 + 160);
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in DetectModeBoxModel.subscribeToUpdateEvents()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SceneEvents.Update.deltaTime.getter();
    DetectModeBoxModel.update(deltaTime:)(v3);
  }

  return result;
}

uint64_t DetectModeBoxModel.unsubscribeFromUpdateEvents()()
{
  swift_beginAccess();
  outlined init with copy of Cancellable?(v0 + 160, &v3);
  if (*(&v4 + 1))
  {
    outlined init with copy of Cancellable(&v3, v2);
    outlined destroy of PerspectiveCameraComponent?(&v3, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(&v3, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  }

  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v3, v0 + 160);
  return swift_endAccess();
}

uint64_t DetectModeBoxModel.deinit()
{
  swift_weakDestroy();

  outlined consume of DetectModeBoxModel.TargetReticleEntity?(*(v0 + 64));

  outlined destroy of PerspectiveCameraComponent?(v0 + 160, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  outlined destroy of weak RangefinderDelegate?(v0 + 248);

  return v0;
}

uint64_t DetectModeBoxModel.__deallocating_deinit()
{
  DetectModeBoxModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t EntityGestureRecognizerDelegate.gestureRecognizer(_:shouldRequireFailureOf:)(void *a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  v7 = a1;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v53 = v7;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v54[0] = v12;
    *v11 = 136315394;
    v13 = v7;
    v52 = v3;
    v14 = v8;
    v15 = [v13 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v54);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2080;
    v20 = v14;
    v21 = [v20 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v54);
    v8 = v14;
    v3 = v52;

    *(v11 + 14) = v25;
    _os_log_impl(&dword_23B824000, v9, v10, "GestureRecognizerDelegate got %s shouldRequireFailureOf %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v12, -1, -1);
    MEMORY[0x23EEB0B70](v11, -1, -1);
  }

  v26 = OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_D3054C8CC2B5FD3485D9DD74FE19D26731EntityGestureRecognizerDelegate_entityTranslateGesture;
  swift_beginAccess();
  v27 = *(v3 + v26);
  if (v27)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIGestureRecognizer, 0x277D75548);
    v28 = v53;
    v29 = v27;
    v30 = static NSObject.== infix(_:_:)();

    if (v30)
    {
      v31 = BoundingBoxScaleManipulator.panGesture.getter();
      v32 = v8;
      v33 = static NSObject.== infix(_:_:)();

      if (v33)
      {
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          v37 = "GestureRecognizerDelegate: EntityTranslate gesture must wait for the GrabHandle gesture to fail!";
LABEL_19:
          _os_log_impl(&dword_23B824000, v34, v35, v37, v36, 2u);
          MEMORY[0x23EEB0B70](v36, -1, -1);
          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

    v38 = *(v3 + v26);
    if (v38)
    {
      v39 = v28;
      v40 = v38;
      v41 = static NSObject.== infix(_:_:)();

      if (v41)
      {
        v42 = BoundingBoxRotateManipulator.panGesture.getter();
        v43 = v8;
        v44 = static NSObject.== infix(_:_:)();

        if (v44)
        {
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            v37 = "GestureRecognizerDelegate: EntityTranslate gesture must wait for the GrabRotateWidget gesture to fail!";
            goto LABEL_19;
          }

LABEL_20:

          return 1;
        }
      }
    }
  }

  v45 = BoundingBoxScaleManipulator.panGesture.getter();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIGestureRecognizer, 0x277D75548);
  v46 = v53;
  v47 = static NSObject.== infix(_:_:)();

  if (v47)
  {
    v48 = BoundingBoxRotateManipulator.panGesture.getter();
    v49 = v8;
    v50 = static NSObject.== infix(_:_:)();

    if (v50)
    {
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        v37 = "GestureRecognizerDelegate: GrabHandle gesture must wait for the GrabRotateWidget gesture to fail!";
        goto LABEL_19;
      }

      goto LABEL_20;
    }
  }

  return 0;
}

id EntityGestureRecognizerDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntityGestureRecognizerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type DetectModeBoxModel.State and conformance DetectModeBoxModel.State(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type DetectModeBoxModel.State and conformance DetectModeBoxModel.State;
  if (!lazy protocol witness table cache variable for type DetectModeBoxModel.State and conformance DetectModeBoxModel.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetectModeBoxModel.State and conformance DetectModeBoxModel.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DetectModeBoxModel.TransitionAnimation.State and conformance DetectModeBoxModel.TransitionAnimation.State(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type DetectModeBoxModel.TransitionAnimation.State and conformance DetectModeBoxModel.TransitionAnimation.State;
  if (!lazy protocol witness table cache variable for type DetectModeBoxModel.TransitionAnimation.State and conformance DetectModeBoxModel.TransitionAnimation.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetectModeBoxModel.TransitionAnimation.State and conformance DetectModeBoxModel.TransitionAnimation.State);
  }

  return result;
}

uint64_t key path getter for DataModel.isBoundingBoxAnimationPlaying : DataModel@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for DataModel.isBoundingBoxAnimationPlaying : DataModel(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t outlined copy of DetectModeBoxModel.TargetReticleEntity?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t specialized DetectModeBoxModel.init(model:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a3;
  v36 = a2;
  v34 = a1;
  v5 = type metadata accessor for Entity.ComponentSet();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UnlitMaterial();
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MaterialScalarParameter();
  MEMORY[0x28223BE20](v11 - 8);
  swift_weakInit();
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  type metadata accessor for MeshResource();
  static MeshResource.generateSphere(radius:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
  v12 = swift_allocObject();
  v33 = xmmword_23B91A6F0;
  *(v12 + 16) = xmmword_23B91A6F0;
  v13 = [objc_opt_self() redColor];
  MaterialScalarParameter.init(floatLiteral:)();
  v14 = type metadata accessor for SimpleMaterial();
  v15 = MEMORY[0x277CDAC50];
  *(v12 + 56) = v14;
  *(v12 + 64) = v15;
  __swift_allocate_boxed_opaque_existential_1((v12 + 32));
  SimpleMaterial.init(color:roughness:isMetallic:)();
  type metadata accessor for ModelEntity();
  swift_allocObject();
  v16 = v8;
  v17 = v32;
  *(v3 + 40) = ModelEntity.init(mesh:materials:)();
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  v37 = 1;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 1;
  *(v3 + 152) = MEMORY[0x277D84FA0];
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0;
  *(v3 + 200) = specialized static ExperimentSettings.loadDebugBoxSeedEnabled(default:)(0) & 1;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0xFFF0000000000000;
  type metadata accessor for BoundingBoxScaleManipulator();
  swift_allocObject();
  *(v3 + 240) = BoundingBoxScaleManipulator.init()();
  *(v3 + 256) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 264) = 0;
  *(v3 + 272) = 0;
  *(v3 + 280) = 0;
  swift_weakAssign();
  *(v3 + 256) = v35;
  swift_unknownObjectWeakAssign();
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
  UnlitMaterial.init(color:)();
  static MeshResource.generateBox(size:cornerRadius:)();
  v18 = swift_allocObject();
  *(v18 + 16) = v33;
  v19 = MEMORY[0x277CDAC30];
  *(v18 + 56) = v16;
  *(v18 + 64) = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v18 + 32));
  (*(v17 + 16))(boxed_opaque_existential_1, v10, v16);
  swift_allocObject();
  v21 = ModelEntity.init(mesh:materials:)();
  v22 = MEMORY[0x277CDABB0];
  *(v3 + 48) = v21;
  *(v3 + 56) = v22;

  Entity.generateCollisionShapes(recursive:)(0);

  if (*(v3 + 48))
  {
    dispatch thunk of Entity.components.getter();
    type metadata accessor for ModelComponent();
    Entity.ComponentSet.remove(_:)();
    (*(v30 + 8))(v7, v31);
    type metadata accessor for Entity();
    swift_allocObject();
    v24 = Entity.init()();
    swift_allocObject();

    v25 = Entity.init()();

    HasHierarchy.addChild(_:preservingWorldTransform:)();

    v26 = *(v3 + 64);
    *(v3 + 64) = v24;
    *(v3 + 72) = v25;
    outlined consume of DetectModeBoxModel.TargetReticleEntity?(v26);
    type metadata accessor for BoundingBoxRotateManipulator();
    swift_allocObject();

    v28 = specialized BoundingBoxRotateManipulator.init(parent:)(v27);

    *(v4 + 264) = v28;

    DetectModeBoxModel.loadWireframeAsync()();
    (*(v17 + 8))(v10, v16);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized static ManualBoxHelper.createDefaultManualBoxAtCurrentView(arView:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 center];
  ARView.ray(through:)();
  if (v60)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, logger);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_18;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Can't generate ray through screen center!  Cannot make dynamic manual box!";
LABEL_17:
    _os_log_impl(&dword_23B824000, v5, v6, v8, v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
LABEL_18:

    v21 = 1;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
LABEL_19:
    *a2 = v22;
    *(a2 + 16) = v23;
    *(a2 + 32) = v24;
    *(a2 + 48) = v25;
    *(a2 + 64) = v21;
    return;
  }

  v9 = [a1 session];
  v10 = [v9 currentFrame];

  if (!v10 || (v11 = [v10 sceneDepth], v10, !v11) || (v12 = objc_msgSend(v11, sel_depthMap), v11, !v12))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, logger);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_18;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Cannot get a depth buffer to cast the manual box ray!";
    goto LABEL_17;
  }

  Width = CVPixelBufferGetWidth(v12);
  Height = CVPixelBufferGetHeight(v12);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v12);
  v16 = CVPixelBufferLockBaseAddress(v12, 1uLL);
  if (v16 != noErr.getter())
  {
    v19 = INFINITY;
LABEL_21:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, logger);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = v19;
      _os_log_impl(&dword_23B824000, v27, v28, "Manual box raycast hit world at depth %fm", v29, 0xCu);
      MEMORY[0x23EEB0B70](v29, -1, -1);
    }

    v30 = 5.0;
    if (v19 <= 5.0)
    {
      if (v19 >= 0.1)
      {
LABEL_34:
        Transform.init()();
        *v35.i64 = Ray3D.point(t:)(v19, v58, v59);
        v54 = v35;
        v36 = v19 * 0.25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_23B91A6D0;
        *(inited + 32) = v36;
        *(inited + 36) = v36;
        *(inited + 40) = v36;
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
        v52 = v38;
        swift_setDeallocating();
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 134217984;
          *(v41 + 4) = v36;
          _os_log_impl(&dword_23B824000, v39, v40, "Making a default box cube of size %fm", v41, 0xCu);
          MEMORY[0x23EEB0B70](v41, -1, -1);
        }

        v42 = v59;
        v42.i32[1] = 0;
        v43 = vmulq_f32(v42, v42);
        *&v44 = v43.f32[2] + vaddv_f32(*v43.f32);
        *v43.f32 = vrsqrte_f32(v44);
        *v43.f32 = vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32)));
        v56 = vmulq_n_f32(v42, vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32))).f32[0]);
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static ManualBoxHelper.createDefaultManualBoxAtCurrentView(arView:));
        *v46.i64 = simd_quaternion(v45, v56);
        *&v47 = specialized simd_float4x4.init(translation:rotation:scale:)(v54, v46, v52);
        v55 = v48;
        v57 = v47;
        v51 = v50;
        v53 = v49;

        v25 = v51;
        v24 = v53;
        v23 = v55;
        v22 = v57;
        v21 = 0;
        goto LABEL_19;
      }

      v31 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v31, v34))
      {
        v30 = 0.1;
        goto LABEL_33;
      }

      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = 0x3FB99999A0000000;
      _os_log_impl(&dword_23B824000, v31, v34, "Constraining the default box raycast by min depth to: %f m.", v33, 0xCu);
      v30 = 0.1;
    }

    else
    {
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v31, v32))
      {
LABEL_33:

        v19 = v30;
        goto LABEL_34;
      }

      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = 0x4014000000000000;
      _os_log_impl(&dword_23B824000, v31, v32, "Constraining the default box raycast by max depth to: %f m.", v33, 0xCu);
    }

    MEMORY[0x23EEB0B70](v33, -1, -1);
    goto LABEL_33;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(v12);
  if (BaseAddress)
  {
    v18 = Height / 2 * BytesPerRow;
    if ((Height / 2 * BytesPerRow) >> 64 == v18 >> 63)
    {
      v19 = *&BaseAddress[4 * (Width / 2) + v18];
      CVPixelBufferUnlockBaseAddress(v12, 1uLL);
      goto LABEL_21;
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type ARView.EntityGestures and conformance ARView.EntityGestures()
{
  result = lazy protocol witness table cache variable for type ARView.EntityGestures and conformance ARView.EntityGestures;
  if (!lazy protocol witness table cache variable for type ARView.EntityGestures and conformance ARView.EntityGestures)
  {
    type metadata accessor for ARView.EntityGestures();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.EntityGestures and conformance ARView.EntityGestures);
  }

  return result;
}

void specialized DetectModeBoxModel.handleRotate(_:)(const char *a1, uint64_t a2, const char *a3)
{
  v7 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  DetectModeBoxModel.currentCaptureBox.getter(v35);
  if (v36)
  {
    if (one-time initialization token for logger != -1)
    {
LABEL_32:
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, logger);
    v34[0] = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34[0], v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23B824000, v34[0], v13, a3, v14, 2u);
      MEMORY[0x23EEB0B70](v14, -1, -1);
    }

    v15 = v34[0];

    return;
  }

  if (*(v3 + 24) == 2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, logger);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23B824000, v17, v18, a1, v19, 2u);
      MEMORY[0x23EEB0B70](v19, -1, -1);
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    *v11 = static OS_dispatch_queue.main.getter();
    (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
    v20 = _dispatchPreconditionTest(_:)();
    (*(v9 + 8))(v11, v8);
    if (v20)
    {
      DetectModeBoxModel.performSwitchStateTransitions(from:to:)(*(v7 + 24), 3u);
      *(v7 + 24) = 3;
      return;
    }

    __break(1u);
  }

  else
  {
    v33 = v35[1];
    *v34 = v35[0];
    v31 = v35[3];
    v32 = v35[2];
    v21 = *(v3 + 240);
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v23 = Strong;
    type metadata accessor for Entity();
    HasTransform.setTransformMatrix(_:relativeTo:)();
    HasTransform.scale(relativeTo:)();
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(a2);
    HasTransform.setScale(_:relativeTo:)();
    v8 = *(v21 + 48);
    v24 = *(v23 + 16);
    v11 = v24;
    *v25.i64 = Transform.init(matrix:)();
    v32 = v27;
    v33 = v26;
    *v34 = v25;
    BoundingBoxScaleManipulator.FaceHandleContainer.setScaleFromScreenConstraints(arView:extents:)(v24, v25);
    swift_beginAccess();
    a1 = *(v8 + 40);
    if (!(a1 >> 62))
    {
      a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_18;
    }
  }

  a3 = __CocoaSet.count.getter();
LABEL_18:

  if (a3)
  {
    v28 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EEAFC40](v28, a1);
        v29 = (v28 + 1);
        if (__OFADD__(v28, 1))
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      else
      {
        if (v28 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_32;
        }

        v29 = (v28 + 1);
        if (__OFADD__(v28, 1))
        {
          goto LABEL_28;
        }
      }

      if (*(v8 + 120))
      {
        break;
      }

      BoundingBoxScaleManipulator.FaceHandle.setPositionLocal(extents:minDistance:)(*v34, *(v8 + 116));

      ++v28;
      if (v29 == a3)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_29:

    v30 = v33;
    *(v8 + 64) = *v34;
    *(v8 + 80) = v30;
    *(v8 + 96) = v32;
    *(v8 + 112) = 0;
  }
}

uint64_t outlined consume of DetectModeBoxModel.TargetReticleEntity?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 24))
  {
    outlined init with take of Animation(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v10;
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(a1, &_s19_RealityKit_SwiftUI14AnimationState_pSgMd, &_s19_RealityKit_SwiftUI14AnimationState_pSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, a4, v11);

    return outlined destroy of PerspectiveCameraComponent?(v11, &_s19_RealityKit_SwiftUI14AnimationState_pSgMd, &_s19_RealityKit_SwiftUI14AnimationState_pSgMR);
  }

  return result;
}

uint64_t ImplicitAnimationCompletion.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void ImplicitAnimationComponent.update(context:)(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_12:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = v12 | (v9 << 6);
      v14 = *(a2 + 48) + 24 * v13;
      v15 = *(v14 + 16);
      v19 = *v14;
      outlined init with copy of Cancellable(*(a2 + 56) + 40 * v13, v20);
      v21 = v19;
      *&v22 = v15;
      outlined init with take of Animation(v20, &v22 + 8);

      v11 = v9;
LABEL_13:
      v25 = v21;
      v26[0] = v22;
      v26[1] = v23;
      v26[2] = v24;
      v16 = v21;
      if (!v21)
      {
        break;
      }

      outlined init with take of Animation((v26 + 8), &v21);
      v17 = *(&v22 + 1);
      v18 = v23;
      __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));

      SceneUpdateContext.deltaTime.getter();
      (*(v18 + 8))(v16, v17, v18);

      __swift_destroy_boxed_opaque_existential_0Tm(&v21);
      v8 = v11;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v7 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v7;
    }

    v11 = v10 - 1;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
        v6 = 0;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        goto LABEL_13;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t protocol witness for System.init(scene:) in conformance ImplicitAnimationSystem@<X0>(uint64_t *a1@<X8>)
{

  type metadata accessor for ImplicitAnimationSystem();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t ImplicitAnimationState.AnimationEntry.init(oldValue:newValue:animation:completion:animationState:floatContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = type metadata accessor for ComponentAnimatableData();
  v17 = *(*(v16 - 8) + 32);
  v17(a9, a1, v16);
  v19 = type metadata accessor for ImplicitAnimationState.AnimationEntry(0, a7, a8, v18);
  v17(a9 + v19[9], a2, v16);
  *(a9 + v19[10]) = a3;
  *(a9 + v19[11]) = a4;
  v20 = v19[12];
  v22 = type metadata accessor for ImplicitAnimationState.State(0, a7, a8, v21);
  (*(*(v22 - 8) + 32))(a9 + v20, a5, v22);
  v23 = v19[13];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16AnimationContextVySfGMd, &_s7SwiftUI16AnimationContextVySfGMR);
  v25 = *(*(v24 - 8) + 32);

  return v25(a9 + v23, a6, v24);
}

uint64_t static ImplicitAnimationState.State.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ImplicitAnimationState.State(0, a3, a4, v11);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v37 = &v32 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v19 = &v32 - v18;
  v35 = v13;
  v36 = v17;
  v20 = *(v17 + 48);
  v21 = *(v13 + 16);
  v21(&v32 - v18, a1, v12);
  v21(&v19[v20], a2, v12);
  v22 = *(v9 + 48);
  v23 = v22(v19, 2, v8);
  if (!v23)
  {
    v33 = v9;
    v21(v37, v19, v12);
    v24 = v8;
    if (!v22(&v19[v20], 2, v8))
    {
      v27 = v33;
      v28 = &v19[v20];
      v29 = v34;
      (*(v33 + 32))(v34, v28, v8);
      v30 = v37;
      v25 = static Date.== infix(_:_:)();
      v31 = *(v27 + 8);
      v31(v29, v24);
      v31(v30, v24);
      v16 = v35;
      goto LABEL_10;
    }

    (*(v33 + 8))(v37, v8);
    goto LABEL_9;
  }

  if (v23 == 1)
  {
    if (v22(&v19[v20], 2, v8) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v22(&v19[v20], 2, v8) != 2)
  {
LABEL_9:
    v25 = 0;
    v12 = v36;
    goto LABEL_10;
  }

  v25 = 1;
  v16 = v35;
LABEL_10:
  (*(v16 + 8))(v19, v12);
  return v25 & 1;
}

uint64_t ImplicitAnimationState.addAnimation(oldValue:newValue:animation:completion:)(void (*a1)(char *, uint64_t, uint64_t, uint64_t), void (*a2)(char *, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v51 = a4;
  v53 = a3;
  v56 = a1;
  v7 = *v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14AnimationStateVySfGMd, &_s7SwiftUI14AnimationStateVySfGMR);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16AnimationContextVySfGMd, &_s7SwiftUI16AnimationContextVySfGMR);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = &v47 - v10;
  v11 = *(v7 + 80);
  v12 = *(v7 + 88);
  v54 = type metadata accessor for ImplicitAnimationState.State(0, v11, v12, v13);
  v57 = *(v54 - 8);
  v14 = MEMORY[0x28223BE20](v54);
  v55 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  v60 = v12;
  v49 = v11;
  v18 = type metadata accessor for ComponentAnimatableData();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v22;
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v59 = type metadata accessor for ImplicitAnimationState.AnimationEntry(0, v11, v12, v25);
  v61 = *(v59 - 8);
  v26 = MEMORY[0x28223BE20](v59);
  v48 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v58 = &v47 - v28;
  v29 = *(v19 + 16);
  v29(v24, v56, v18);
  v29(v22, a2, v18);
  v30 = type metadata accessor for Date();
  v31 = *(v30 - 8);
  v56 = *(v31 + 56);
  v50 = v31 + 56;
  v32 = v17;
  v56(v17, 1, 2, v30);
  v33 = v51;

  v34 = v53;

  AnimationState.init()();
  v35 = v52;
  AnimationContext.init(state:environment:isLogicallyComplete:)();
  v36 = v58;
  v37 = v33;
  v38 = v32;
  v39 = v49;
  ImplicitAnimationState.AnimationEntry.init(oldValue:newValue:animation:completion:animationState:floatContext:)(v24, v47, v34, v37, v32, v35, v49, v60, v58);
  (*(v61 + 16))(v48, v36, v59);
  swift_beginAccess();
  type metadata accessor for Array();
  v40 = v54;
  Array.append(_:)();
  swift_endAccess();
  v41 = *(*v5 + 112);
  swift_beginAccess();
  v42 = v57;
  (*(v57 + 16))(v38, &v5[v41], v40);
  v43 = v55;
  v53 = v30;
  v56(v55, 2, 2, v30);
  v44 = v38;
  LOBYTE(v38) = static ImplicitAnimationState.State.== infix(_:_:)(v38, v43, v39, v60);
  v45 = *(v42 + 8);
  v45(v43, v40);
  v45(v44, v40);
  result = (*(v61 + 8))(v58, v59);
  if (v38)
  {
    v56(v44, 1, 2, v53);
    swift_beginAccess();
    (*(v57 + 40))(&v5[v41], v44, v40);
    return swift_endAccess();
  }

  return result;
}

uint64_t ImplicitAnimationState.deinit()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for ComponentAnimatableData();
  (*(*(v4 - 8) + 8))(v0 + v1, v4);

  v5 = *(*v0 + 112);
  v7 = type metadata accessor for ImplicitAnimationState.State(0, v2, v3, v6);
  (*(*(v7 - 8) + 8))(v0 + v5, v7);
  return v0;
}

uint64_t ImplicitAnimationState.__deallocating_deinit()
{
  ImplicitAnimationState.deinit();

  return swift_deallocClassInstance();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ImplicitAnimationComponent.Key()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  type metadata accessor for Entity();
  lazy protocol witness table accessor for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation(&lazy protocol witness table cache variable for type Entity and conformance Entity, 255, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D0]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEAFE40](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ImplicitAnimationComponent.Key(uint64_t a1)
{
  v2 = *(v1 + 8);
  type metadata accessor for Entity();
  lazy protocol witness table accessor for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation(&lazy protocol witness table cache variable for type Entity and conformance Entity, 255, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D0]);
  dispatch thunk of Hashable.hash(into:)();
  return MEMORY[0x23EEAFE40](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ImplicitAnimationComponent.Key(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  type metadata accessor for Entity();
  lazy protocol witness table accessor for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation(&lazy protocol witness table cache variable for type Entity and conformance Entity, 255, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D0]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEAFE40](v2);
  return Hasher._finalize()();
}

uint64_t SwiftUIImplicitAnimation.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static Entity.animate(_:body:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SwiftUIImplicitAnimation();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  if (a4)
  {
    type metadata accessor for ImplicitAnimationCompletion();
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    *(v10 + 24) = a5;
    *(v10 + 32) = 0;
  }

  else
  {
    v10 = 0;
  }

  *(v9 + 24) = v10;
  v11 = lazy protocol witness table accessor for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation(&lazy protocol witness table cache variable for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation, v8, type metadata accessor for SwiftUIImplicitAnimation, &protocol conformance descriptor for SwiftUIImplicitAnimation);
  MEMORY[0x28223BE20](v11);

  outlined copy of (@escaping @callee_guaranteed () -> ())?(a4, a5);
  static ImplicitAnimationStack.withModifier<A>(_:operation:)();
}

uint64_t type metadata completion function for ImplicitAnimationState(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for ComponentAnimatableData();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for ImplicitAnimationState.State(319, v1, v2, v4);
    if (v6 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void type metadata completion function for ImplicitAnimationState.AnimationEntry(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for ComponentAnimatableData();
  if (v3 <= 0x3F)
  {
    type metadata accessor for ImplicitAnimationCompletion?(319);
    if (v5 <= 0x3F)
    {
      type metadata accessor for ImplicitAnimationState.State(319, v1, v2, v4);
      if (v6 <= 0x3F)
      {
        type metadata accessor for AnimationContext<Float>();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for ImplicitAnimationCompletion?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ImplicitAnimationCompletion?)
  {
    type metadata accessor for ImplicitAnimationCompletion();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ImplicitAnimationCompletion?);
    }
  }
}

void type metadata accessor for AnimationContext<Float>()
{
  if (!lazy cache variable for type metadata for AnimationContext<Float>)
  {
    v0 = type metadata accessor for AnimationContext();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationContext<Float>);
    }
  }
}

uint64_t type metadata completion function for ImplicitAnimationState.State(uint64_t a1)
{
  v1 = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v8, v7);
  *v2 = v7;
  return v9;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    v13 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v13;
    }

    outlined init with take of Animation((*(v11 + 56) + 40 * v9), a4);
    specialized _NativeDictionary._delete(at:)(v9, v11);
    *v5 = v11;
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FreeformMeshManager.MeshAnchor(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVGMR);
  v43 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        outlined init with take of FreeformMeshManager.MeshAnchor(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        outlined init with copy of FreeformMeshManager.MeshAnchor(v29 + v28 * v24, v47);
      }

      lazy protocol witness table accessor for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = outlined init with take of FreeformMeshManager.MeshAnchor(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10RealityKit6EntityCGMd, &_ss18_DictionaryStorageCySi10RealityKit6EntityCGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = MEMORY[0x23EEAFE20](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}