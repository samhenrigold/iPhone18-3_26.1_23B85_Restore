Swift::Void __swiftcall SVSHomePodIDViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SVSHomePodIDViewController();
  v17.receiver = v2;
  v17.super_class = v12;
  objc_msgSendSuper2(&v17, "viewDidDisappear:", a1);
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100093120;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100091194;
  aBlock[3] = &unk_1000F1988;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100014530();
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100014588();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

void sub_1000923E0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_session);

    [v3 stopRunning];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine);

    [v6 reset];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = *&v7[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine];
    *&v7[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine] = 0;
  }
}

Swift::Void __swiftcall SVSHomePodIDViewController.viewDidLayoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SVSHomePodIDViewController();
  objc_msgSendSuper2(&v12, "viewDidLayoutSubviews");
  v1 = [*&v0[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_preView] layer];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame:{v5, v7, v9, v11}];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SVSHomePodIDViewController.configureEngine()()
{
  v1 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine;
  if (!*(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_deviceModel);
    if (v2 == 1)
    {
      v3 = v0;
      v4 = [objc_allocWithZone(AnalysisEngine) initForType:1];
      if (v4)
      {
LABEL_7:
        v5 = v4;
        sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
        v6 = v5;
        v7 = static OS_dispatch_queue.main.getter();
        [v6 setDispatchQueue:v7];

        v8 = v3;
        v9 = *(v3 + v1);
        *(v8 + v1) = v6;
        v10 = v6;

        [v10 setUseRecognizer:1];
        LODWORD(v11) = 1045220557;
        [v10 setMotionRotationThreshold:v11];
        [v10 setUsingM7Motion:0];
        LODWORD(v12) = 1024416809;
        [v10 setMotionAccelerationThreshold:v12];
        v13 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v14 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        *(v15 + 24) = v13;
        v17[4] = sub_1000931A0;
        v17[5] = v15;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 1107296256;
        v17[2] = sub_100091194;
        v17[3] = &unk_1000F1A00;
        v16 = _Block_copy(v17);

        [v10 setRecognizingCompletionHandlerBlock:v16];

        _Block_release(v16);
        return;
      }

      __break(1u);
    }

    if (!v2)
    {
      v3 = v0;
      v4 = [objc_allocWithZone(AnalysisEngine) initForType:0];
      if (v4)
      {
        goto LABEL_7;
      }

      __break(1u);
    }

    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }
}

double sub_100092984(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong recognizingCompletionHandlerBlock];

    if (v5)
    {
      _Block_release(v5);
      swift_beginAccess();
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        [v6 setRecognizingCompletionHandlerBlock:0];
      }

      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        [v8 reset];
      }

      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = *&v10[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine];
        *&v10[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine] = 0;
      }

      swift_beginAccess();
      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        v13 = v12;
        v14 = *(v12 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_feedbackGenerator);

        [v14 notificationOccurred:0];
      }

      swift_beginAccess();
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        v16 = *(v15 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler);
        v17 = *(v15 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler + 8);
        v18 = v15;
        sub_100061704(v16, v17);

        if (v16)
        {
          v16();
          return sub_100061714(v16, v17);
        }
      }
    }
  }

  return result;
}

void sub_100092BD0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_session);
  [v2 beginConfiguration];
  v3 = *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_output);
  [v3 setAlwaysDiscardsLateVideoFrames:1];
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  v4 = static OS_dispatch_queue.main.getter();
  [v3 setSampleBufferDelegate:v1 queue:v4];

  [v2 addOutput:v3];
  value = AVCaptureSessionPresetHigh;
  [v2 setSessionPreset:AVCaptureSessionPresetHigh];
  v6 = objc_opt_self();
  v7 = [v6 defaultDeviceWithDeviceType:AVCaptureDeviceTypeBuiltInDualCamera mediaType:AVMediaTypeVideo position:1];
  v8 = v7;
  if (!v7)
  {
    v9 = [v6 defaultDeviceWithDeviceType:AVCaptureDeviceTypeBuiltInWideAngleCamera mediaType:AVMediaTypeVideo position:1];
    if (!v9)
    {
      v19 = 0;
      goto LABEL_8;
    }

    v8 = v9;
  }

  v10 = objc_allocWithZone(AVCaptureDeviceInput);
  v35.value = 0;
  v11 = v8;
  v12 = v7;
  v13 = [v10 initWithDevice:v11 error:&v35];
  if (!v13)
  {
    v33 = v35.value;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
LABEL_23:
    v34 = value;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = v35.value;

  if (![v2 canAddInput:v14])
  {
    __break(1u);
  }

  [v2 addInput:v14];
  v16 = *(v1 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_videoDeviceInput);
  *(v1 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_videoDeviceInput) = v14;
  v17 = v14;

  v18 = *(v1 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController__videoDevice);
  *(v1 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController__videoDevice) = v11;
  v19 = v11;

  [v2 setSessionPreset:AVCaptureSessionPresetHigh];
  v35.value = 0;
  v20 = [v19 lockForConfiguration:&v35];
  value = v35.value;
  if ((v20 & 1) == 0)
  {
    goto LABEL_23;
  }

  v21 = v35.value;
  v36 = CMTime.init(value:timescale:)(10, 300);
  v22 = v36.value;
  timescale = v36.timescale;
  epoch = v36.epoch;
  v35 = v36;
  v25 = HIDWORD(*&v36.timescale);
  [v19 setActiveVideoMinFrameDuration:&v35];
  v35.value = v22;
  *&v35.timescale = __PAIR64__(v25, timescale);
  v35.epoch = epoch;
  [v19 setActiveVideoMaxFrameDuration:&v35];
  [v19 unlockForConfiguration];

LABEL_8:
  v26 = [v3 connectionWithMediaType:AVMediaTypeVideo];
  if (v26)
  {
    v27 = v26;
    if ([v26 isVideoStabilizationSupported])
    {
      [v27 setPreferredVideoStabilizationMode:-1];
    }
  }

  v28 = [*(v1 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_preView) layer];
  objc_opt_self();
  v29 = [swift_dynamicCastObjCClassUnconditional() connection];

  if (v29)
  {
    if ([v29 isVideoOrientationSupported])
    {
      v30 = [objc_opt_self() sharedApplication];
      v31 = [v30 activeInterfaceOrientation];

      if ((v31 - 2) >= 3)
      {
        v32 = 1;
      }

      else
      {
        v32 = v31;
      }

      [v29 setVideoOrientation:v32];
    }
  }

  [v2 commitConfiguration];
}

uint64_t sub_100093094()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000930F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100093128()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100093160()
{

  return _swift_deallocObject(v0, 32, 7);
}

id SVSHomePodIDViewController.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_session] stopRunning];
  v1 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine;
  v2 = *&v0[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine];
  if (v2)
  {
    [v2 reset];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  v5.receiver = v0;
  v5.super_class = type metadata accessor for SVSHomePodIDViewController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

Swift::Void __swiftcall SVSHomePodIDViewController.captureOutput(_:didOutput:from:)(AVCaptureOutput _, CMSampleBufferRef didOutput, AVCaptureConnection from)
{
  if (*(v3 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_startIngesting) == 1)
  {
    _.super.isa = *(v3 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine);
    if (_.super.isa)
    {
      [(objc_class *)_.super.isa ingestVideoFrame:_._outputInternal, from.super.isa, from._internal];
    }
  }
}

unint64_t sub_10009340C()
{
  result = qword_1001044B8;
  if (!qword_1001044B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001044B8);
  }

  return result;
}

void sub_100093460()
{
  *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine) = 0;
  v1 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_preView;
  type metadata accessor for PreviewView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_setupSucceeded) = 0;
  v2 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_session;
  *(v0 + v2) = [objc_allocWithZone(AVCaptureSession) init];
  v3 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_feedbackGenerator;
  *(v0 + v3) = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
  v4 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_output;
  *(v0 + v4) = [objc_allocWithZone(AVCaptureVideoDataOutput) init];
  *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_videoDeviceInput) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController__videoDevice) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_startIngesting) = 0;
  v5 = (v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler);
  *v5 = 0;
  v5[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000935A0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100093610(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_10003AE18(0, &qword_100104620, UIImage_ptr);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_100093860()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_1001044D0);
  v1 = sub_100012AAC(v0, qword_1001044D0);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100093928()
{
  v1 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController____lazy_storage___disclaimerLabel;
  v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController____lazy_storage___disclaimerLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController____lazy_storage___disclaimerLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(PRXLabel) initWithStyle:3];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1000939A0()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v2 - 8);
  v4 = &v65 - v3;
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  v6 = *(v5 - 1);
  v7 = __chkstk_darwin(v5);
  v9 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v65 - v10;
  v12 = type metadata accessor for HomePodSetupSoundRecognitionViewController(0);
  v68.receiver = v1;
  v68.super_class = v12;
  objc_msgSendSuper2(&v68, "viewDidLoad");
  v13 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(&v1[v13], v4, &qword_100103420, &unk_1000BCE90);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000EBA4(v4, &qword_100103420, &unk_1000BCE90);
    if (qword_1001016F0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100012AAC(v14, qword_1001044D0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupSoundRecognitionViewController: viewDidLoad failed because viewModel not set.", v17, 2u);
    }
  }

  else
  {
    sub_100012BAC(v4, v11, type metadata accessor for HomePodSetupViewModel);
    if (qword_1001016F0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100012AAC(v18, qword_1001044D0);
    sub_100012AE4(v11, v9);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v67 = v22;
      *v21 = 136315138;
      v23 = v11;
      v24 = *v9;
      v25 = v9[1];

      sub_100012C14(v9, type metadata accessor for HomePodSetupViewModel);
      v26 = sub_1000B08A0(v24, v25, &v67);
      v11 = v23;

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "HomePodSetupSoundRecognitionViewController: viewDidLoad with title %s", v21, 0xCu);
      sub_10000E70C(v22);
    }

    else
    {

      sub_100012C14(v9, type metadata accessor for HomePodSetupViewModel);
    }

    sub_1000945D8(v11);
    v27 = *&v11[v5[10]];
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v27, sub_1000951D8, v28);

    if ((v11[v5[19]] & 2) == 0 && *&v11[v5[20] + 8])
    {
      v29 = String._bridgeToObjectiveC()();
      v30 = String._bridgeToObjectiveC()();
      v31 = String._bridgeToObjectiveC()();
      v32 = String._bridgeToObjectiveC()();
      v33 = [v1 dismissalConfirmationActionWithTitle:v29 message:v30 confirmButtonTitle:v31 cancelButtonTitle:v32];

      [v1 setDismissButtonAction:v33];
    }

    v34 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_myContentView;
    [*&v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_myContentView] setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = [v1 contentView];
    [v35 addSubview:*&v1[v34]];

    v36 = sub_100093928();
    v37 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption2];
    [v36 setFont:v37];

    v66 = v11;
    v38 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController____lazy_storage___disclaimerLabel;
    [*&v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController____lazy_storage___disclaimerLabel] setAdjustsFontSizeToFitWidth:1];
    [*&v1[v38] setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = [v1 contentView];
    [v39 addSubview:*&v1[v38]];

    v40 = [v1 contentView];
    v41 = [v40 mainContentGuide];

    v65 = objc_opt_self();
    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1000BEC10;
    v43 = [*&v1[v34] topAnchor];
    v44 = [v41 topAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];

    *(v42 + 32) = v45;
    v46 = [*&v1[v34] leadingAnchor];
    v47 = [v41 leadingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];

    *(v42 + 40) = v48;
    v49 = [*&v1[v34] trailingAnchor];
    v50 = [v41 trailingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    *(v42 + 48) = v51;
    v52 = [*&v1[v34] bottomAnchor];
    v53 = [*&v1[v38] topAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:-20.0];

    *(v42 + 56) = v54;
    v55 = [*&v1[v38] leadingAnchor];
    v56 = [v41 leadingAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];

    *(v42 + 64) = v57;
    v58 = [*&v1[v38] trailingAnchor];
    v59 = [v41 trailingAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];

    *(v42 + 72) = v60;
    v61 = [*&v1[v38] bottomAnchor];
    v62 = [v41 bottomAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];

    *(v42 + 80) = v63;
    sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v65 activateConstraints:isa];

    sub_100012C14(v66, type metadata accessor for HomePodSetupViewModel);
  }
}

uint64_t sub_100094328(char *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_1001016F0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_1001044D0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = sub_10000FEC4(v2);
    v10 = sub_1000B08A0(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupSoundRecognitionViewController: User tapped on button: %s", v6, 0xCu);
    sub_10000E70C(v7);
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  memset(v18, 0, sizeof(v18));
  LOBYTE(v17) = v2;
  sub_100012DA0(v15, v18, &qword_1001025D0, &unk_1000BD010);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_unknownObjectWeakLoadStrong();

    if (v13)
    {
      sub_10007A070(&v17);
      swift_unknownObjectRelease();
    }
  }

  return sub_100012E08(&v17);
}

id sub_1000945D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for AdjustedImage(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = String._bridgeToObjectiveC()();
  [v2 setTitle:v11];

  v12 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v12];

  v13 = sub_100093928();
  v14 = type metadata accessor for HomePodSetupViewModel(0);
  v15 = String._bridgeToObjectiveC()();
  [v13 setText:v15];

  [v2 setDismissalType:*(a1 + v14[19])];
  v16 = *(a1 + v14[11]);
  if (v16 >> 62)
  {
    v18 = *(a1 + v14[11]);
    v19 = _CocoaArrayWrapper.endIndex.getter();
    v16 = v18;
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_10000F25C(a1 + v14[28], v6, &unk_100102610, &unk_1000BD130);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_10000EBA4(v6, &unk_100102610, &unk_1000BD130);
    }

    sub_100012BAC(v6, v10, type metadata accessor for AdjustedImage);
    v20 = [objc_allocWithZone(SFAdjustedImageView) initWithImage:*v10];
    sub_100083828(v10 + *(v7 + 20));
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = *&v2[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_myContentView];
    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1000BCE00;
    *(v22 + 32) = v20;
    v23 = *&v21[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViews];
    *&v21[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViews] = v22;
    v24 = v21;
    v25 = v20;
    sub_10004781C(v23);

    return sub_100012C14(v10, type metadata accessor for AdjustedImage);
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_3:

  return sub_10009494C(v16);
}

id sub_10009494C(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_images;

  v5 = sub_100093610(v4, a1);

  if ((v5 & 1) == 0)
  {
    *&v1[v3] = a1;

    result = [v1 isViewLoaded];
    if (result)
    {
      v12 = _swiftEmptyArrayStorage;
      v7 = v1;

      sub_100094D10(v8, v7, &v12);

      v9 = *&v7[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_myContentView];
      v10 = *&v9[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViews];
      *&v9[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViews] = v12;
      v11 = v9;

      sub_10004781C(v10);
    }
  }

  return result;
}

id sub_100094AB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupSoundRecognitionViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupSoundRecognitionViewController(uint64_t a1)
{
  result = qword_100104528;
  if (!qword_100104528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100094BE8(uint64_t a1)
{
  sub_100012108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100094CBC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_100094D10(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v11 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_style;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [objc_allocWithZone(PRXImageView) initWithStyle:*(a2 + v11)];
      [v10 setImage:v8];
      [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      ++v6;
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

id sub_100094E9C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  if (qword_1001016F0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100012AAC(v7, qword_1001044D0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "HomePodSetupSoundRecognitionViewController: presenter:didUpdate viewModel", v10, 2u);
  }

  sub_100012AE4(a1, v6);
  v11 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v6, v2 + v12, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  result = [v2 isViewLoaded];
  if (result)
  {
    return sub_1000945D8(a1);
  }

  return result;
}

id sub_100095084(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_viewModel;
  v4 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_termsManager] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController____lazy_storage___moreInfoButton] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController____lazy_storage___disclaimerLabel] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_images] = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_myContentView;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for HomePodSetupIconContentView()) initWithCardStyle:0];
  *&v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_style] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for HomePodSetupSoundRecognitionViewController(0);
  return objc_msgSendSuper2(&v7, "initWithContentView:", a1);
}

uint64_t sub_1000951A0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id *sub_1000951E0(id *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = (*v1)[2];
  v5 = &v2[v4];
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= (v3[3] >> 1))
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = &v2[v4];
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000534EC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if (((v3[3] >> 1) - v3[2]) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = &v2[v7];
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000952D4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10009880C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000988AC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_1000953C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC14HDSViewService20HomePodInfoTableCell_titleLabel;
  *&v3[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC14HDSViewService20HomePodInfoTableCell_valueLabel;
  *&v3[v7] = [objc_allocWithZone(UILabel) init];
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for HomePodInfoTableCell();
  v9 = objc_msgSendSuper2(&v12, "initWithStyle:reuseIdentifier:", a1, v8);

  v10 = v9;
  sub_1000955A0();

  return v10;
}

id sub_1000954C4(void *a1)
{
  v3 = OBJC_IVAR____TtC14HDSViewService20HomePodInfoTableCell_titleLabel;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC14HDSViewService20HomePodInfoTableCell_valueLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v9.receiver = v1;
  v9.super_class = type metadata accessor for HomePodInfoTableCell();
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1000955A0();
  }

  return v6;
}

void sub_1000955A0()
{
  v1 = OBJC_IVAR____TtC14HDSViewService20HomePodInfoTableCell_titleLabel;
  [*&v0[OBJC_IVAR____TtC14HDSViewService20HomePodInfoTableCell_titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[v1] setNumberOfLines:0];
  v2 = *&v0[v1];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 labelColor];
  [v4 setTextColor:v5];

  v6 = [v0 contentView];
  [v6 addSubview:*&v0[v1]];

  v7 = OBJC_IVAR____TtC14HDSViewService20HomePodInfoTableCell_valueLabel;
  [*&v0[OBJC_IVAR____TtC14HDSViewService20HomePodInfoTableCell_valueLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[v7] setTextAlignment:2];
  [*&v0[v7] setNumberOfLines:0];
  v8 = *&v0[v7];
  v9 = [v3 secondaryLabelColor];
  [v8 setTextColor:v9];

  v10 = [v0 contentView];
  [v10 addSubview:*&v0[v7]];

  v33 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000BD420;
  v12 = [*&v0[v1] centerYAnchor];
  v13 = [v0 centerYAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v11 + 32) = v14;
  v15 = [*&v0[v1] leadingAnchor];
  v16 = [v0 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v11 + 40) = v17;
  v18 = [*&v0[v1] trailingAnchor];
  v19 = [*&v0[v7] leadingAnchor];
  v20 = [v18 constraintLessThanOrEqualToAnchor:v19];

  *(v11 + 48) = v20;
  v21 = [*&v0[v7] centerYAnchor];
  v22 = [v0 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v11 + 56) = v23;
  v24 = [*&v0[v7] trailingAnchor];
  v25 = [v0 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v11 + 64) = v26;
  sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v33 activateConstraints:isa];

  v28 = *&v0[v1];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 _preferredFontForTextStyle:UIFontTextStyleFootnote variant:1024];
  [v30 setFont:v31];

  v32 = *&v0[v7];
  v34 = [v29 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v32 setFont:v34];
}

id sub_100095AE0()
{
  [v0 setDelegate:v0];
  [v0 setDataSource:v0];
  [v0 setRowHeight:UITableViewAutomaticDimension];
  [v0 setEstimatedRowHeight:44.0];
  [v0 setAlwaysBounceVertical:0];
  type metadata accessor for HomePodInfoTableCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = String._bridgeToObjectiveC()();
  [v0 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v2];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 frame];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v7 = CGRectGetWidth(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  CGRectGetHeight(v15);
  v8 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, v7, 1.0}];
  [v0 setTableFooterView:v8];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;

  return [v0 setSeparatorInset:{UIEdgeInsetsZero.top, left, bottom, right}];
}

uint64_t sub_100095C9C(uint64_t *a1)
{
  sub_10000E6C4(&qword_100104638, qword_1000BED58);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000BD070;
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_100006658(v4);

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v10 = *a1;
  v9 = a1[1];
  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  *(v3 + 48) = v10;
  *(v3 + 56) = v9;

  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100006658(v11);

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v17 = a1[2];
  v16 = a1[3];
  *(v3 + 64) = v13;
  *(v3 + 72) = v15;
  *(v3 + 80) = v17;
  *(v3 + 88) = v16;

  v18 = String._bridgeToObjectiveC()();
  v19 = sub_100006658(v18);

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = String.uppercased()();
  *(v3 + 96) = v20;
  *(v3 + 104) = v22;
  *(v3 + 112) = v23;
  *(v1 + OBJC_IVAR____TtC14HDSViewService29HomePodSetupWiFiInfoTableView_elements) = v3;

  return sub_100095E28();
}

uint64_t sub_100095E28()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100098B20;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100091194;
  aBlock[3] = &unk_1000F1BB8;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100014530();
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100098B70(&qword_100104300, &unk_100102600, &qword_1000BE4E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

unint64_t sub_100096100(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [a1 dequeueReusableCellWithIdentifier:v3 forIndexPath:isa];

  type metadata accessor for HomePodInfoTableCell();
  v6 = swift_dynamicCastClassUnconditional();
  v7 = *(v6 + OBJC_IVAR____TtC14HDSViewService20HomePodInfoTableCell_titleLabel);
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = OBJC_IVAR____TtC14HDSViewService29HomePodSetupWiFiInfoTableView_elements;
  if (result >= *(*(v1 + OBJC_IVAR____TtC14HDSViewService29HomePodSetupWiFiInfoTableView_elements) + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v10 = String._bridgeToObjectiveC()();

  [v7 setText:v10];

  v11 = *(v6 + OBJC_IVAR____TtC14HDSViewService20HomePodInfoTableCell_valueLabel);
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < *(*(v1 + v9) + 16))
  {

    v12 = String._bridgeToObjectiveC()();

    [v11 setText:v12];

    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_10009652C()
{
  v1 = v0;
  v2 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_100098720;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009878C;
  aBlock[3] = &unk_1000F1B68;
  v3 = _Block_copy(aBlock);
  v4 = [v2 initWithDynamicProvider:v3];
  _Block_release(v3);

  v5 = objc_opt_self();
  v6 = [v5 configurationWithHierarchicalColor:v4];

  v7 = objc_opt_self();
  v8 = [v7 systemBlueColor];
  v9 = [v5 configurationWithHierarchicalColor:v8];

  v10 = *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_rssi] + 77.5;
  v11 = fabsf(sqrtf((v10 * v10) + 450.0));
  sub_100097F90(((v10 / (v11 + v11)) + 0.5));
  v13 = v12;
  v213.is_nil = sub_10003AE18(0, &qword_100104620, UIImage_ptr);
  v14._countAndFlagsBits = 1768319351;
  v14._object = 0xE400000000000000;
  v213.value.super.isa = 0;
  v15 = UIImage.init(systemName:variableValue:configuration:)(v14, v13 / 3.0, v213);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = [objc_allocWithZone(UIImage) init];
    v15 = 0;
  }

  v209 = v7;
  v17 = v15;
  v18 = [v16 imageByApplyingSymbolConfiguration:v6];

  if (!v18)
  {
    v18 = [objc_allocWithZone(UIImage) init];
  }

  v211 = v18;
  v19 = String._bridgeToObjectiveC()();
  v20 = objc_opt_self();
  v21 = [v20 _systemImageNamed:v19];

  v22 = v21;
  if (!v21)
  {
    v22 = [objc_allocWithZone(UIImage) init];
  }

  v23 = v21;
  v208 = v6;
  v24 = [v22 imageByApplyingSymbolConfiguration:v6];

  if (!v24)
  {
    v24 = [objc_allocWithZone(UIImage) init];
  }

  v25 = v24;
  v26 = String._bridgeToObjectiveC()();
  v27 = [v20 _systemImageNamed:v26];

  v28 = v27;
  if (!v27)
  {
    v28 = [objc_allocWithZone(UIImage) init];
  }

  v29 = v27;
  v207 = v9;
  v30 = [v28 imageByApplyingSymbolConfiguration:v9];

  if (!v30)
  {
    v30 = [objc_allocWithZone(UIImage) init];
  }

  v31 = v30;
  [v1 setSelectionStyle:0];
  v32 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_separatorView;
  v210 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_separatorView;
  v33 = *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_separatorView];
  v34 = [v1 traitCollection];
  v35 = [v34 userInterfaceStyle];

  v36 = &selRef_systemGray4Color;
  if (v35 != 2)
  {
    v36 = &selRef_systemGray6Color;
  }

  v37 = [v7 *v36];
  [v33 setBackgroundColor:v37];

  [*&v1[v32] setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = [objc_allocWithZone(UIImageView) initWithImage:v25];
  v206 = v25;

  v39 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_passwordProtectedImageView;
  v40 = *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_passwordProtectedImageView];
  *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_passwordProtectedImageView] = v38;

  v41 = [objc_allocWithZone(UIImageView) initWithImage:v211];
  v42 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_wifiIconImageView;
  v43 = *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_wifiIconImageView];
  *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_wifiIconImageView] = v41;

  v44 = [objc_allocWithZone(UIImageView) initWithImage:v31];
  v205 = v31;

  v45 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_selectedImageView;
  v46 = *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_selectedImageView];
  *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_selectedImageView] = v44;

  [*&v1[v39] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v1[v39] setContentMode:4];
  [*&v1[v39] setHidden:v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_hideLockIcon]];
  [*&v1[v42] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v1[v42] setContentMode:4];
  [*&v1[v45] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v1[v45] setContentMode:4];
  v47 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel;
  [*&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v1[v47] setNumberOfLines:1];
  v48 = *&v1[v47];
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 preferredFontForTextStyle:UIFontTextStyleBody];
  [v50 setFont:v51];

  v52 = *&v1[v47];
  v53 = [v209 labelColor];
  [v52 setTextColor:v53];

  v54 = v45;
  v55 = [v1 contentView];
  [v55 addSubview:*&v1[v39]];

  v56 = [v1 contentView];
  [v56 addSubview:*&v1[v42]];

  v57 = [v1 contentView];
  [v57 addSubview:*&v1[v45]];

  v58 = [v1 contentView];
  [v58 addSubview:*&v1[v210]];

  v59 = v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_isReachable];
  aBlock[0] = _swiftEmptyArrayStorage;
  if (v59 == 1)
  {
    v202 = v45;
    v203 = v39;
    v204 = v42;
    v60 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_subTitleLabel;
    [*&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_subTitleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&v1[v60] setNumberOfLines:1];
    v61 = *&v1[v60];
    v62 = [v49 preferredFontForTextStyle:UIFontTextStyleCaption1];
    [v61 setFont:v62];

    [*&v1[v60] setAdjustsFontSizeToFitWidth:0];
    v63 = *&v1[v60];
    v64 = [v209 secondaryLabelColor];
    [v63 setTextColor:v64];

    v65 = *&v1[v60];
    v66 = String._bridgeToObjectiveC()();
    v67 = sub_100006658(v66);

    if (!v67)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = String._bridgeToObjectiveC()();
    }

    [v65 setText:v67];

    v68 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_labelStackView;
    [*&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_labelStackView] addSubview:*&v1[v47]];
    [*&v1[v68] addSubview:*&v1[v60]];
    v201 = objc_opt_self();
    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1000BEC10;
    v70 = [*&v1[v47] leadingAnchor];
    v71 = [*&v1[v68] leadingAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];

    *(v69 + 32) = v72;
    v73 = [*&v1[v47] trailingAnchor];
    v74 = [*&v1[v68] trailingAnchor];
    v75 = [v73 constraintEqualToAnchor:v74];

    *(v69 + 40) = v75;
    v76 = [*&v1[v47] topAnchor];
    v77 = [*&v1[v68] topAnchor];
    v78 = [v76 constraintEqualToAnchor:v77];

    *(v69 + 48) = v78;
    v79 = [*&v1[v47] bottomAnchor];
    v80 = [*&v1[v60] topAnchor];
    v81 = [v79 constraintEqualToAnchor:v80];

    *(v69 + 56) = v81;
    v82 = [*&v1[v60] leadingAnchor];
    v83 = [*&v1[v68] leadingAnchor];
    v84 = [v82 constraintEqualToAnchor:v83];

    *(v69 + 64) = v84;
    v85 = [*&v1[v60] trailingAnchor];
    v86 = [*&v1[v68] trailingAnchor];
    v87 = [v85 constraintEqualToAnchor:v86];

    *(v69 + 72) = v87;
    v88 = [*&v1[v60] bottomAnchor];
    v89 = [*&v1[v68] bottomAnchor];
    v90 = [v88 constraintEqualToAnchor:v89 constant:0.0];

    *(v69 + 80) = v90;
    sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v201 activateConstraints:isa];

    v92 = v68;
    [*&v1[v68] setAlignment:1];
    [*&v1[v68] setAxis:1];
    [*&v1[v68] setDistribution:2];
    [*&v1[v68] setTranslatesAutoresizingMaskIntoConstraints:0];
    v93 = [v1 contentView];
    [v93 addSubview:*&v1[v68]];

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000BECA0;
    v95 = [*&v1[v202] leadingAnchor];
    v96 = [v1 leadingAnchor];
    v97 = [v95 constraintEqualToAnchor:v96 constant:20.0];

    *(inited + 32) = v97;
    v98 = [*&v1[v202] centerYAnchor];
    v99 = [v1 centerYAnchor];
    v100 = [v98 constraintEqualToAnchor:v99 constant:0.0];

    *(inited + 40) = v100;
    v101 = [*&v1[v202] widthAnchor];
    v102 = [v101 constraintEqualToConstant:10.0];

    *(inited + 48) = v102;
    v103 = [*&v1[v202] heightAnchor];
    v104 = [v103 constraintEqualToConstant:10.0];

    *(inited + 56) = v104;
    v105 = [*&v1[v68] leadingAnchor];
    v106 = [*&v1[v202] trailingAnchor];
    v107 = [v105 constraintEqualToAnchor:v106 constant:16.0];

    *(inited + 64) = v107;
    v108 = [*&v1[v68] centerYAnchor];
    v109 = [v1 centerYAnchor];
    v110 = [v108 constraintEqualToAnchor:v109 constant:0.0];

    *(inited + 72) = v110;
    v111 = [*&v1[v68] trailingAnchor];
    v112 = [*&v1[v203] leadingAnchor];
    v113 = [v111 constraintEqualToAnchor:v112 constant:-10.0];

    *(inited + 80) = v113;
    v114 = [*&v1[v203] centerYAnchor];
    v115 = [v1 centerYAnchor];
    v116 = [v114 constraintEqualToAnchor:v115 constant:0.0];

    *(inited + 88) = v116;
    v117 = [*&v1[v203] widthAnchor];
    v118 = [v117 constraintEqualToConstant:10.0];

    *(inited + 96) = v118;
    v119 = [*&v1[v203] heightAnchor];
    v120 = [v119 constraintEqualToConstant:10.0];

    *(inited + 104) = v120;
    v121 = [*&v1[v203] trailingAnchor];
    v122 = [*&v1[v204] leadingAnchor];
    v123 = [v121 constraintEqualToAnchor:v122 constant:-15.0];

    *(inited + 112) = v123;
    v124 = [*&v1[v204] centerYAnchor];
    v125 = [v1 centerYAnchor];
    v126 = [v124 constraintEqualToAnchor:v125 constant:0.0];

    *(inited + 120) = v126;
    v127 = [*&v1[v204] widthAnchor];
    v128 = [v127 constraintEqualToConstant:10.0];

    *(inited + 128) = v128;
    v129 = [*&v1[v204] heightAnchor];
    v130 = [v129 constraintEqualToConstant:10.0];

    *(inited + 136) = v130;
    v131 = [*&v1[v204] trailingAnchor];
    v132 = [v1 trailingAnchor];
    v133 = [v131 constraintEqualToAnchor:v132 constant:-30.0];

    *(inited + 144) = v133;
    v134 = v210;
    v135 = [*&v1[v210] leadingAnchor];
    v136 = [*&v1[v92] leadingAnchor];
    v137 = [v135 constraintEqualToAnchor:v136];

    *(inited + 152) = v137;
    v138 = [*&v1[v210] bottomAnchor];
    v139 = [v1 bottomAnchor];
    v140 = [v138 constraintEqualToAnchor:v139];

    *(inited + 160) = v140;
    v141 = [*&v1[v210] heightAnchor];
    v142 = &selRef_initWithSystemImageNamed_;
    v143 = [v141 constraintEqualToConstant:1.0];

    *(inited + 168) = v143;
    v144 = (inited + 176);
  }

  else
  {
    v145 = [v1 contentView];
    [v145 addSubview:*&v1[v47]];

    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000BEC90;
    v146 = [*&v1[v45] leadingAnchor];
    v147 = [v1 leadingAnchor];
    v148 = [v146 constraintEqualToAnchor:v147 constant:20.0];

    *(inited + 32) = v148;
    v149 = [*&v1[v54] centerYAnchor];
    v150 = [v1 centerYAnchor];
    v151 = [v149 constraintEqualToAnchor:v150 constant:0.0];

    *(inited + 40) = v151;
    v152 = [*&v1[v54] widthAnchor];
    v153 = [v152 constraintEqualToConstant:10.0];

    *(inited + 48) = v153;
    v154 = [*&v1[v54] heightAnchor];
    v155 = [v154 constraintEqualToConstant:10.0];

    *(inited + 56) = v155;
    v156 = [*&v1[v47] leadingAnchor];
    v157 = [*&v1[v54] trailingAnchor];
    v158 = [v156 constraintEqualToAnchor:v157 constant:16.0];

    *(inited + 64) = v158;
    v159 = [*&v1[v47] topAnchor];
    v160 = [v1 topAnchor];
    v161 = [v159 constraintEqualToAnchor:v160];

    *(inited + 72) = v161;
    v162 = [*&v1[v47] bottomAnchor];
    v163 = [v1 bottomAnchor];
    v164 = [v162 constraintEqualToAnchor:v163];

    *(inited + 80) = v164;
    v165 = [*&v1[v47] trailingAnchor];
    v166 = [*&v1[v39] leadingAnchor];
    v167 = [v165 constraintEqualToAnchor:v166 constant:-15.0];

    *(inited + 88) = v167;
    v168 = [*&v1[v39] centerYAnchor];
    v169 = [v1 centerYAnchor];
    v170 = [v168 constraintEqualToAnchor:v169 constant:0.0];

    *(inited + 96) = v170;
    v171 = [*&v1[v39] widthAnchor];
    v172 = [v171 constraintEqualToConstant:10.0];

    *(inited + 104) = v172;
    v173 = [*&v1[v39] heightAnchor];
    v174 = [v173 constraintEqualToConstant:10.0];

    *(inited + 112) = v174;
    v175 = [*&v1[v39] trailingAnchor];
    v176 = [*&v1[v42] leadingAnchor];
    v177 = [v175 constraintEqualToAnchor:v176 constant:-15.0];

    *(inited + 120) = v177;
    v178 = [*&v1[v42] centerYAnchor];
    v179 = [v1 centerYAnchor];
    v180 = [v178 constraintEqualToAnchor:v179 constant:0.0];

    *(inited + 128) = v180;
    v181 = [*&v1[v42] widthAnchor];
    v182 = [v181 constraintEqualToConstant:10.0];

    *(inited + 136) = v182;
    v183 = [*&v1[v42] heightAnchor];
    v184 = [v183 constraintEqualToConstant:10.0];

    *(inited + 144) = v184;
    v185 = [*&v1[v42] trailingAnchor];
    v186 = [v1 trailingAnchor];
    v187 = [v185 constraintEqualToAnchor:v186 constant:-30.0];

    *(inited + 152) = v187;
    v134 = v210;
    v188 = [*&v1[v210] leadingAnchor];
    v189 = [*&v1[v47] leadingAnchor];
    v190 = [v188 constraintEqualToAnchor:v189];

    *(inited + 160) = v190;
    v191 = [*&v1[v210] bottomAnchor];
    v192 = [v1 bottomAnchor];
    v193 = [v191 constraintEqualToAnchor:v192];

    *(inited + 168) = v193;
    v194 = [*&v1[v210] heightAnchor];
    v195 = [v194 constraintEqualToConstant:1.0];

    *(inited + 176) = v195;
    v144 = (inited + 184);
    v142 = &selRef_initWithSystemImageNamed_;
  }

  v196 = [*&v1[v134] trailingAnchor];
  v197 = [v1 trailingAnchor];
  v198 = [v196 constraintGreaterThanOrEqualToAnchor:v197 constant:-20.0];

  *v144 = v198;
  sub_1000952D4(inited);
  v199 = objc_opt_self();
  sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
  v200 = Array._bridgeToObjectiveC()().super.isa;

  [v199 v142[216]];
}

void sub_100097F90(double a1)
{
  if (a1 >= 0.0 && a1 <= 1.0)
  {
    v2 = a1;
    v3 = ceilf(v2 * 3.0);
    if ((LODWORD(v3) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v3 > -9.2234e18)
    {
      if (v3 < 9.2234e18)
      {
        return;
      }

LABEL_13:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_13;
  }
}

id sub_100098028(char a1, char a2)
{
  v16.receiver = v2;
  v16.super_class = type metadata accessor for HomePodWiFiTableCell();
  objc_msgSendSuper2(&v16, "setSelected:animated:", a1 & 1, a2 & 1);
  [v2 setBackgroundColor:0];
  v5 = *&v2[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_selectedImageView];
  if (a1)
  {
    [v5 setHidden:0];
    v6 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel;
    [*&v2[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel] setMinimumScaleFactor:0.0];
    [*&v2[v6] setAdjustsFontSizeToFitWidth:1];
  }

  else
  {
    [v5 setHidden:1];
    v7 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel;
    [*&v2[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel] setAdjustsFontSizeToFitWidth:0];
    v8 = *&v2[v7];
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 preferredFontForTextStyle:UIFontTextStyleBody];
    [v10 setFont:v11];

    [*&v2[v7] setMinimumScaleFactor:1.0];
    v12 = *&v2[v7];
    v13 = [v12 text];
    [v12 setText:v13];
  }

  v14 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel;
  [*&v2[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel] setNeedsDisplay];
  [*&v2[v14] layoutSubviews];
  [*&v2[v14] setNeedsLayout];
  return [*&v2[v14] layoutIfNeeded];
}

id sub_100098264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_separatorView;
  *&v3[v6] = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel;
  *&v3[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_subTitleLabel;
  *&v3[v8] = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_labelStackView;
  *&v3[v9] = [objc_allocWithZone(UIStackView) init];
  v10 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_selectedImageView;
  *&v3[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_passwordProtectedImageView;
  *&v3[v11] = [objc_allocWithZone(UIImageView) init];
  v12 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_wifiIconImageView;
  *&v3[v12] = [objc_allocWithZone(UIImageView) init];
  v3[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_isReachable] = 0;
  *&v3[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_rssi] = 0;
  v3[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_hideLockIcon] = 0;
  if (a3)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for HomePodWiFiTableCell();
  v14 = objc_msgSendSuper2(&v16, "initWithStyle:reuseIdentifier:", a1, v13);

  return v14;
}

uint64_t sub_100098410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return a5(a3, a4, v8);
}

id sub_10009846C(void *a1)
{
  v3 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_separatorView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_subTitleLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_labelStackView;
  *&v1[v6] = [objc_allocWithZone(UIStackView) init];
  v7 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_selectedImageView;
  *&v1[v7] = [objc_allocWithZone(UIImageView) init];
  v8 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_passwordProtectedImageView;
  *&v1[v8] = [objc_allocWithZone(UIImageView) init];
  v9 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_wifiIconImageView;
  *&v1[v9] = [objc_allocWithZone(UIImageView) init];
  v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_isReachable] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_rssi] = 0;
  v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_hideLockIcon] = 0;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for HomePodWiFiTableCell();
  v10 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);

  if (v10)
  {
  }

  return v10;
}

id sub_100098618(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100098720(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_systemWhiteColor;
  if (v1 != 2)
  {
    v3 = &selRef_systemBlackColor;
  }

  v4 = [v2 *v3];

  return v4;
}

id sub_10009878C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_1000987F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009880C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_1000988AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100098B70(&qword_100104630, &qword_100104628, &unk_1000BED48, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000E6C4(&qword_100104628, &unk_1000BED48);
            v9 = sub_100098A60(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_100098A60(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100098AE0;
  }

  __break(1u);
  return result;
}

uint64_t sub_100098AE8()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100098B20()
{
  v1 = *(v0 + 16);
  [v1 setSeparatorStyle:1];

  return [v1 reloadData];
}

uint64_t sub_100098B70(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000145EC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100098BC0(char a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a1 & 1) != 0 && (a4)
  {
    v6 = String._bridgeToObjectiveC()();
    v7 = sub_100006658(v6);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000E6C4(&qword_100102388, qword_1000BE250);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000BD050;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_100039F8C();
    *(v8 + 32) = a2;
    *(v8 + 40) = a3;

    a2 = String.init(format:_:)();
  }

  else
  {
  }

  return a2;
}

unint64_t sub_100098CC8(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_10000D778(_swiftEmptyArrayStorage);
  AnyHashable.init<A>(_:)();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100054E0C(0x6974704F6D6F6F52, 0xEA00000000006E6FLL, v16, isUniquelyReferenced_nonNull_native);
  sub_10000EA04(v16);
  AnyHashable.init<A>(_:)();

  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_100054E0C(a2, a3, v16, v10);
  sub_10000EA04(v16);
  v17 = v8;
  AnyHashable.init<A>(_:)();
  if (a1)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (a1)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  sub_10000F550(v11, v12, v16);
  AnyHashable.init<A>(_:)();
  if (a4)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (a4)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  sub_10000F550(v13, v14, v16);
  return v17;
}

uint64_t sub_100098ED4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = 0x676E697473697865;
  if (*v0)
  {
    v3 = 0x6574736567677573;
  }

  v6 = v3;

  v4._countAndFlagsBits = v1;
  v4._object = v2;
  String.append(_:)(v4);

  return v6;
}

uint64_t sub_100098F7C(char a1, uint64_t a2, void *a3, char a4)
{
  swift_bridgeObjectRetain_n();

  v8._countAndFlagsBits = a2;
  v8._object = a3;
  String.append(_:)(v8);

  v9._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 32;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 1031365995;
  strcpy(&v26, "<RoomOption ");
  v11._object = 0xE400000000000000;
  String.append(_:)(v11);

  countAndFlagsBits = v26._countAndFlagsBits;
  _StringGuts.grow(_:)(16);

  strcpy(&v26, "displayValue=");
  HIWORD(v26._object) = -4864;
  if (a1 & 1) != 0 && (a4)
  {
    v13 = String._bridgeToObjectiveC()();
    v14 = sub_100006658(v13);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000E6C4(&qword_100102388, qword_1000BE250);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000BD050;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100039F8C();
    *(v15 + 32) = a2;
    *(v15 + 40) = a3;
    String.init(format:_:)();
  }

  v16._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 32;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);

  String.append(_:)(v26);

  strcpy(&v26, "roomName=");
  WORD1(v26._object) = 0;
  HIDWORD(v26._object) = -385875968;
  v18._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 32;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);

  String.append(_:)(v26);

  strcpy(&v26, "isSuggested=");
  HIWORD(v26._object) = -5120;
  v20._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 32;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);

  String.append(_:)(v26);

  strcpy(&v26, "shouldMark=");
  HIDWORD(v26._object) = -352321536;
  v22._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 32;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);

  String.append(_:)(v26);

  v24._countAndFlagsBits = 62;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);

  return countAndFlagsBits;
}

uint64_t sub_100099428(uint64_t a1)
{
  AnyHashable.init<A>(_:)();
  sub_1000A303C(v11, 0x72206E776F6B6E75, 0xEF656D614E6D6F6FLL, a1);

  sub_10000EA04(v11);
  AnyHashable.init<A>(_:)();
  v2 = sub_1000A303C(v11, 0x65736C6166, 0xE500000000000000, a1);
  v4 = v3;

  sub_10000EA04(v11);
  if (v2 == 1702195828 && v4 == 0xE400000000000000)
  {

    v5 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 & 1;
  }

  AnyHashable.init<A>(_:)();
  v7 = sub_1000A303C(v11, 1702195828, 0xE400000000000000, a1);
  v9 = v8;

  sub_10000EA04(v11);
  if (v7 == 1702195828 && v9 == 0xE400000000000000)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5;
}

__n128 sub_100099674(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100099688(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000996D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100099724(void *a1)
{
  v2 = OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textField;
  v3 = *&v1[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textField];
  *&v1[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textField] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setSecureTextEntry:v1[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_isSecureText]];
    [v6 setSemanticContentAttribute:0];
    [v1 addSubview:v6];
    [v1 setNeedsUpdateConstraints];
  }

LABEL_4:
}

char *sub_100099820(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textViewConstraints] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_labelConstraints] = 0;
  v3 = OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_viewsGuide;
  *&v1[v3] = [objc_allocWithZone(UILayoutGuide) init];
  v1[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_isSecureText] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textField] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_label] = 0;
  v28.receiver = v1;
  v28.super_class = type metadata accessor for HomePodSetupTextFieldView();
  v4 = objc_msgSendSuper2(&v28, "initWithCardStyle:", a1);
  v5 = OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_viewsGuide;
  v6 = *&v4[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_viewsGuide];
  v7 = v4;
  [v7 addLayoutGuide:v6];
  v8 = [v7 mainContentGuide];
  v27 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000BD420;
  v10 = [*&v4[v5] topAnchor];
  v11 = [v8 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v9 + 32) = v12;
  v13 = [*&v4[v5] leadingAnchor];
  v14 = [v8 leadingAnchor];
  v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14];

  *(v9 + 40) = v15;
  v16 = [*&v4[v5] trailingAnchor];
  v17 = [v8 trailingAnchor];
  v18 = [v16 constraintLessThanOrEqualToAnchor:v17];

  *(v9 + 48) = v18;
  v19 = [*&v4[v5] centerXAnchor];
  v20 = [v8 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v9 + 56) = v21;
  v22 = [*&v4[v5] bottomAnchor];
  v23 = [v8 bottomAnchor];
  v24 = [v22 constraintLessThanOrEqualToAnchor:v23];

  *(v9 + 64) = v24;
  sub_1000163D8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];

  return v7;
}

void sub_100099BD0()
{
  v1 = v0;
  v61.receiver = v0;
  v61.super_class = type metadata accessor for HomePodSetupTextFieldView();
  objc_msgSendSuper2(&v61, "updateConstraints");
  v2 = OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textField;
  v3 = *&v0[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textField];
  v4 = &selRef_initWithSystemImageNamed_;
  if (v3)
  {
    v5 = OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textViewConstraints;
    if (*&v0[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textViewConstraints])
    {
      v6 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1000BD0A0;
      v8 = v3;
      v9 = [v8 leadingAnchor];
      v10 = v1;
      v11 = [v1 mainContentGuide];
      v12 = [v11 leadingAnchor];

      v13 = [v9 constraintEqualToAnchor:v12];
      *(v7 + 32) = v13;
      v14 = [v8 trailingAnchor];
      v15 = [v10 mainContentGuide];
      v16 = [v15 trailingAnchor];

      v4 = &selRef_initWithSystemImageNamed_;
      v17 = [v14 constraintEqualToAnchor:v16];

      *(v7 + 40) = v17;
      v18 = objc_opt_self();
      sub_1000163D8();
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v18 activateConstraints:isa];

      v1 = v10;
      *&v10[v5] = v7;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v6 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v20 = *&v1[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_label];
  if (v20)
  {
    v21 = *&v1[v2];
    if (v21)
    {
      v22 = OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_labelConstraints;
      if (!*&v1[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_labelConstraints])
      {
        sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1000BD430;
        v24 = v20;
        v59 = v21;
        v25 = v1;
        v26 = [v24 leadingAnchor];
        v27 = [v25 mainContentGuide];
        v28 = [v27 leadingAnchor];

        v29 = [v26 constraintEqualToAnchor:v28];
        *(v23 + 32) = v29;
        v30 = [v24 trailingAnchor];
        v31 = [v25 mainContentGuide];
        v32 = [v31 trailingAnchor];

        v33 = [v30 constraintEqualToAnchor:v32];
        *(v23 + 40) = v33;
        v34 = [v24 topAnchor];
        v35 = [v59 bottomAnchor];
        v36 = [v34 constraintEqualToAnchor:v35];

        *(v23 + 48) = v36;
        v37 = objc_opt_self();
        sub_1000163D8();
        v38 = Array._bridgeToObjectiveC()().super.isa;
        v39 = v37;
        v1 = v25;
        [v39 v4[216]];

        *&v25[v22] = v23;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v6 = _swiftEmptyArrayStorage;
      }
    }
  }

  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v40 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
      goto LABEL_16;
    }

LABEL_32:

    v6 = 0;
    goto LABEL_33;
  }

  v40 = _CocoaArrayWrapper.endIndex.getter();
  if (!v40)
  {
    goto LABEL_32;
  }

LABEL_16:
  if (v40 < 1)
  {
    __break(1u);
  }

  else
  {
    v60 = v1;
    v41 = 0;
    v42 = 0;
    v58 = OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_viewsGuide;
    v43 = PRXMainContentMargin;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v47 = _swiftEmptyArrayStorage[v42 + 4];
      }

      v48 = v47;
      if (v41)
      {
        v44 = [v47 topAnchor];
        v45 = [v41 bottomAnchor];
        v46 = [v44 constraintEqualToAnchor:v45 constant:v43];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
        v49 = [v47 topAnchor];
        v50 = [*&v60[v58] bottomAnchor];
        v51 = [v49 constraintEqualToAnchor:v50 constant:v43];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      ++v42;
      v41 = v48;
    }

    while (v40 != v42);

    v6 = v48;
    v52 = [v6 bottomAnchor];
    v53 = [v60 mainContentGuide];
    v54 = [v53 bottomAnchor];

    v55 = [v52 constraintLessThanOrEqualToAnchor:v54];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) < *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_30;
    }
  }

  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_30:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v4 = &selRef_initWithSystemImageNamed_;
LABEL_33:
  v56 = objc_opt_self();
  sub_1000163D8();
  v57 = Array._bridgeToObjectiveC()().super.isa;

  [v56 v4[216]];
}

id sub_10009A4A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupTextFieldView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10009A574()
{
  *(v0 + OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textViewConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_labelConstraints) = 0;
  v1 = OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_viewsGuide;
  *(v0 + v1) = [objc_allocWithZone(UILayoutGuide) init];
  *(v0 + OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_isSecureText) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textField) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_label) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10009A634()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_1001046F8);
  v1 = sub_100012AAC(v0, qword_1001046F8);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10009A6FC()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v2 - 8);
  v4 = &v38 - v3;
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  v6 = *(v5 - 1);
  v7 = __chkstk_darwin(v5);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  v12 = type metadata accessor for HomePodSetupProgressViewController(0);
  v41.receiver = v1;
  v41.super_class = v12;
  objc_msgSendSuper2(&v41, "viewDidLoad");
  v13 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(&v1[v13], v4, &qword_100103420, &unk_1000BCE90);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000EBA4(v4, &qword_100103420, &unk_1000BCE90);
    if (qword_1001016F8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100012AAC(v14, qword_1001046F8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupProgress: failed in viewDidLoad because viewModel not set.", v17, 2u);
    }
  }

  else
  {
    sub_100016310(v4, v11);
    v18 = &v11[v5[18]];
    if (v18[4])
    {
      v19 = 0;
    }

    else
    {
      v19 = *v18;
    }

    sub_10009BEA0(v19);
    v20 = String.init(cString:)();
    v22 = v21;
    if (qword_1001016F8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100012AAC(v23, qword_1001046F8);
    sub_100012AE4(v11, v9);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v39;
      *v26 = 136315394;
      v38 = v20;
      v27 = *v9;
      v28 = v9[1];

      sub_100016374(v9);
      v29 = sub_1000B08A0(v27, v28, &v40);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      v30 = sub_1000B08A0(v38, v22, &v40);

      *(v26 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "HomePodSetupProgress: viewDidLoad called with title %s progressEvent=%s", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100016374(v9);
    }

    sub_10006FF20(v11);
    sub_10009AEF4();
    if ((v11[v5[19]] & 2) == 0 && *&v11[v5[20] + 8])
    {
      v31 = String._bridgeToObjectiveC()();
      v32 = String._bridgeToObjectiveC()();
      v33 = String._bridgeToObjectiveC()();
      v34 = String._bridgeToObjectiveC()();
      v35 = [v1 dismissalConfirmationActionWithTitle:v31 message:v32 confirmButtonTitle:v33 cancelButtonTitle:v34];

      [v1 setDismissButtonAction:v35];
    }

    if ((v11[v5[17]] & 1) != 0 && isInternalBuild())
    {
      v36 = [objc_opt_self() scheduledTimerWithTimeInterval:v1 target:"handleTimer:" selector:0 userInfo:1 repeats:0.1];
      v37 = *&v1[OBJC_IVAR____TtC14HDSViewService34HomePodSetupProgressViewController_timer];
      *&v1[OBJC_IVAR____TtC14HDSViewService34HomePodSetupProgressViewController_timer] = v36;
    }

    sub_100016374(v11);
  }
}

uint64_t sub_10009ACB0(char a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100104750, &unk_1000BEE60);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for HomePodSetupProgressViewController(0);
  v12.receiver = v2;
  v12.super_class = v7;
  objc_msgSendSuper2(&v12, "viewDidAppear:", a1 & 1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10007EA04();
    swift_unknownObjectRelease();
  }

  Date.init()();
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = OBJC_IVAR____TtC14HDSViewService34HomePodSetupProgressViewController_startDate;
  swift_beginAccess();
  sub_10009CBCC(v6, v2 + v9);
  return swift_endAccess();
}

void sub_10009AECC(uint64_t a1)
{
  sub_10006FF20(a1);

  sub_10009AEF4();
}

void sub_10009AEF4()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v2 - 8);
  v4 = &v42 - v3;
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v9, v4, &qword_100103420, &unk_1000BCE90);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    sub_100016310(v4, v8);
    v14 = &v8[*(v5 + 72)];
    if (v14[4])
    {
      if (qword_1001016F8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100012AAC(v15, qword_1001046F8);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "HomePodSetupProgressViewController updatetTitleForProgressUI: progressEvent is nil", v18, 2u);
      }

      goto LABEL_68;
    }

    v19 = *v14;
    sub_10009BEA0(*v14);
    v20 = String.init(cString:)();
    v22 = v21;
    if (qword_1001016F8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100012AAC(v23, qword_1001046F8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42 = v27;
      *v26 = 136315138;
      v28 = sub_1000B08A0(v20, v22, &v42);

      *(v26 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "HomePodSetupProgressViewController updatetTitleForProgressUI: %s", v26, 0xCu);
      sub_10000E70C(v27);
    }

    else
    {
    }

    if (v19 <= 209)
    {
      if (v19 <= 119)
      {
        if (v19 != 40 && v19 != 60)
        {
          if (v19 == 80)
          {
            v31 = String._bridgeToObjectiveC()();
            v30 = sub_100006658(v31);

            if (!v30)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v30 = String._bridgeToObjectiveC()();
            }

            goto LABEL_60;
          }

          goto LABEL_69;
        }
      }

      else
      {
        if (v19 <= 123)
        {
          if (v19 != 120 && v19 != 122)
          {
            goto LABEL_69;
          }

          goto LABEL_62;
        }

        if (v19 != 124)
        {
          if (v19 == 200)
          {
            v32 = String._bridgeToObjectiveC()();
            v30 = sub_100006658(v32);

            if (!v30)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v30 = String._bridgeToObjectiveC()();
            }

            goto LABEL_60;
          }

          goto LABEL_69;
        }
      }
    }

    else
    {
      if (v19 <= 249)
      {
        if (v19 <= 229)
        {
          if (v19 == 210)
          {
            v35 = String._bridgeToObjectiveC()();
            v30 = sub_100006658(v35);

            if (!v30)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v30 = String._bridgeToObjectiveC()();
            }

            goto LABEL_60;
          }

          if (v19 == 220)
          {
            v29 = String._bridgeToObjectiveC()();
            v30 = sub_100006658(v29);

            if (!v30)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v30 = String._bridgeToObjectiveC()();
            }

LABEL_60:
            [v1 hideActivityIndicator];
            [v1 reloadInputViews];
            v36 = sub_100006658(v30);
            goto LABEL_65;
          }

LABEL_69:
          sub_100016374(v8);
          return;
        }

        if (v19 != 230)
        {
          if (v19 == 234)
          {
            v33 = String._bridgeToObjectiveC()();
            v30 = sub_100006658(v33);

            if (!v30)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v30 = String._bridgeToObjectiveC()();
            }

            goto LABEL_60;
          }

          goto LABEL_69;
        }

LABEL_62:
        [v1 hideActivityIndicator];
        [v1 reloadInputViews];
        v41 = String._bridgeToObjectiveC()();

        v16 = sub_100006658(v41);

        if (!v16)
        {
          goto LABEL_66;
        }

        goto LABEL_67;
      }

      if (v19 > 911)
      {
        if (v19 != 912)
        {
          if (v19 == 913)
          {
            v34 = String._bridgeToObjectiveC()();
            v30 = sub_100006658(v34);

            if (!v30)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v30 = String._bridgeToObjectiveC()();
            }

            goto LABEL_60;
          }

          goto LABEL_69;
        }
      }

      else
      {
        if (v19 == 250)
        {
          [v1 hideActivityIndicator];
          v37 = [objc_opt_self() configurationWithPointSize:40.0];
          v38 = String._bridgeToObjectiveC()();
          v39 = [objc_opt_self() systemImageNamed:v38 withConfiguration:v37];

          v16 = [objc_allocWithZone(UIImageView) initWithImage:v39];
          v40 = [objc_opt_self() systemGreenColor];
          [v16 setTintColor:v40];

          [v1 setBottomTrayImageView:v16];
LABEL_68:

          goto LABEL_69;
        }

        if (v19 != 906)
        {
          goto LABEL_69;
        }
      }
    }

    [v1 hideActivityIndicator];
    [v1 reloadInputViews];
    v30 = String._bridgeToObjectiveC()();
    v36 = sub_100006658(v30);
LABEL_65:
    v16 = v36;

    if (!v16)
    {
LABEL_66:
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = String._bridgeToObjectiveC()();
    }

LABEL_67:
    [v1 showActivityIndicatorWithStatus:v16];
    goto LABEL_68;
  }

  sub_10000EBA4(v4, &qword_100103420, &unk_1000BCE90);
  [v1 hideActivityIndicator];
  if (qword_1001016F8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100012AAC(v10, qword_1001046F8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "HomePodSetupProgress: failed to updatet progress UI because viewModel not set.", v13, 2u);
  }
}

id sub_10009BCD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupProgressViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupProgressViewController(uint64_t a1)
{
  result = qword_100104738;
  if (!qword_100104738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009BDAC(uint64_t a1)
{
  sub_10009BE48(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10009BE48(uint64_t a1)
{
  if (!qword_100104748)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100104748);
    }
  }
}

const char *sub_10009BEA0(int a1)
{
  if (a1 > 279)
  {
    if (a1 <= 709)
    {
      if (a1 <= 499)
      {
        if (a1 > 400)
        {
          if (a1 > 419)
          {
            switch(a1)
            {
              case 420:
                return "FileTransferReady";
              case 430:
                return "eSimExternal2FAStart";
              case 431:
                return "eSimExternal2FAStop";
            }
          }

          else
          {
            switch(a1)
            {
              case 401:
                return "PINPair";
              case 410:
                return "MigrateStart";
              case 411:
                return "MigrateStop";
            }
          }
        }

        else if (a1 > 299)
        {
          switch(a1)
          {
            case 300:
              return "BackupProgress";
            case 310:
              return "SyncProgress";
            case 400:
              return "StopSetup";
          }
        }

        else
        {
          switch(a1)
          {
            case 280:
              return "TVLCalFailed";
            case 281:
              return "TVLCalTryAgain";
            case 282:
              return "TVLCalFinal";
          }
        }
      }

      else if (a1 <= 554)
      {
        if (a1 > 529)
        {
          switch(a1)
          {
            case 530:
              return "SiriDialogBHome";
            case 540:
              return "SiriDialogBNews";
            case 550:
              return "SiriDialogBWeather";
          }
        }

        else
        {
          switch(a1)
          {
            case 500:
              return "SiriWelcome";
            case 510:
              return "SiriDialogA";
            case 520:
              return "SiriDialogBStart";
          }
        }
      }

      else if (a1 <= 569)
      {
        switch(a1)
        {
          case 555:
            return "SiriDialogBClock";
          case 558:
            return "SiriDialogBMusic";
          case 560:
            return "SiriDialogCMusic";
        }
      }

      else if (a1 > 599)
      {
        if (a1 == 600)
        {
          return "SiriSkipDemo";
        }

        if (a1 == 700)
        {
          return "StopSetupLEDs";
        }
      }

      else
      {
        if (a1 == 570)
        {
          return "SiriDialogCNews";
        }

        if (a1 == 580)
        {
          return "SiriDialogCWeather";
        }
      }

      return "?";
    }

    if (a1 <= 899)
    {
      if (a1 <= 802)
      {
        if (a1 == 710)
        {
          return "AudioPasscodeEnded";
        }

        if (a1 == 800)
        {
          return "AuthAccountsStart";
        }
      }

      else
      {
        switch(a1)
        {
          case 803:
            return "AuthAccountsiCloudProgress";
          case 804:
            return "AuthAccountsStoreProgress";
          case 805:
            return "AuthAccountsGameCenterProgress";
        }
      }

      return "?";
    }

    if (a1 > 999)
    {
      if (a1 <= 1099)
      {
        if (a1 == 1000)
        {
          return "SecureIntentStart";
        }

        if (a1 == 1001)
        {
          return "SecureIntentFinish";
        }
      }

      else
      {
        switch(a1)
        {
          case 1100:
            return "OneTimeCodeDetected";
          case 2000:
            return "DependentStart";
          case 2001:
            return "DependentEnd";
        }
      }

      return "?";
    }

    switch(a1)
    {
      case 900:
        result = "SU-No-SetupScanAttempt";
        break;
      case 901:
        result = "SU-No-SetupStatusUpdate";
        break;
      case 902:
        result = "SU-No-SetupWipeWifi";
        break;
      case 903:
        result = "SU-No-SetupCancelled";
        break;
      case 904:
        result = "SU-No-SetupObliterate";
        break;
      case 905:
        result = "SU-No-SetupCannotCancel";
        break;
      case 906:
        result = "SysDrop AirDrop Event";
        break;
      case 907:
        result = "SysDrop Sysdiagnose Event";
        break;
      case 908:
        result = "SysDrop Cancel Event";
        break;
      case 909:
        result = "File Transfer Progress Event";
        break;
      case 910:
        result = "File Transfer Completed Event";
        break;
      case 911:
        result = "iOSWiFiSetup";
        break;
      case 912:
        result = "HKPrimaryResidentSSIDFetchStart";
        break;
      case 913:
        result = "LoggingProfileTransfer";
        break;
      default:
        return "?";
    }
  }

  else
  {
    if (a1 > 121)
    {
      if (a1 <= 239)
      {
        if (a1 > 209)
        {
          if (a1 > 229)
          {
            switch(a1)
            {
              case 230:
                return "HomeKitStart";
              case 234:
                return "HomeKitSetupStart";
              case 236:
                return "CDPSetupStart";
            }
          }

          else
          {
            switch(a1)
            {
              case 210:
                return "ActivationStart";
              case 220:
                return "iCloudStart";
              case 224:
                return "AppleIDSetupStart";
            }
          }
        }

        else if (a1 > 139)
        {
          switch(a1)
          {
            case 140:
              return "RecognizeVoice";
            case 150:
              return "SiriForEveryone";
            case 200:
              return "WiFiStart";
          }
        }

        else
        {
          switch(a1)
          {
            case 122:
              return "CheckingAppleMusic";
            case 124:
              return "CheckingAccount";
            case 130:
              return "WiFiPoweredOff";
          }
        }
      }

      else if (a1 <= 269)
      {
        if (a1 > 249)
        {
          switch(a1)
          {
            case 250:
              return "ReportSuccess";
            case 260:
              return "TVLSStart";
            case 264:
              return "TVLSFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 240:
              return "BuddyStarting";
            case 241:
              return "BuddyProgress";
            case 242:
              return "BuddyFinished";
          }
        }
      }

      else
      {
        if (a1 > 275)
        {
          if (a1 > 277)
          {
            if (a1 == 278)
            {
              return "TVLCalStart";
            }

            else
            {
              return "TVLCalStep";
            }
          }

          else if (a1 == 276)
          {
            return "TVLSTryAgain";
          }

          else
          {
            return "TVLSToneBegan";
          }
        }

        switch(a1)
        {
          case 270:
            return "TVLSEstimateStart";
          case 272:
            return "TVLSEstimateFinal";
          case 274:
            return "TVLSEstimateFailed";
        }
      }

      return "?";
    }

    if (a1 > 69)
    {
      if (a1 <= 95)
      {
        if (a1 > 91)
        {
          switch(a1)
          {
            case '\\':
              return "StepStart";
            case '^':
              return "StepFinish";
            case '_':
              return "PreFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 'F':
              return "SecurityFinish";
            case 'P':
              return "BasicConfigStart";
            case 'Z':
              return "BasicConfigFinish";
          }
        }

        return "?";
      }

      if (a1 > 98)
      {
        switch(a1)
        {
          case 'c':
            return "SetupPeerSWUpdate";
          case 'd':
            return "Finished";
          case 'x':
            return "CheckingiCloud";
        }

        return "?";
      }

      if (a1 == 96)
      {
        return "SetupFinished";
      }

      else if (a1 == 97)
      {
        return "SetupResumed";
      }

      else
      {
        return "SetupSuspend";
      }
    }

    else
    {
      if (a1 > 32)
      {
        if (a1 > 49)
        {
          switch(a1)
          {
            case '2':
              return "PreAuthFinish";
            case '<':
              return "SecurityStart";
            case 'A':
              return "SecurityAPCLoopStart";
          }
        }

        else
        {
          switch(a1)
          {
            case '!':
              return "SessionSecured";
            case '#':
              return "ConnectStart";
            case '(':
              return "PreAuthStart";
          }
        }

        return "?";
      }

      if (a1 <= 29)
      {
        switch(a1)
        {
          case 0:
            return "Invalid";
          case 10:
            return "Start";
          case 20:
            return "Final";
        }

        return "?";
      }

      if (a1 == 30)
      {
        return "Error";
      }

      else if (a1 == 31)
      {
        return "SessionStarted";
      }

      else
      {
        return "SessionEnded";
      }
    }
  }

  return result;
}

uint64_t sub_10009C734()
{
  v1 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v1 - 8);
  v3 = &v29 - v2;
  v31 = type metadata accessor for HomePodSetupViewModel(0);
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000E6C4(&qword_100104750, &unk_1000BEE60);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v29 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v15 = OBJC_IVAR____TtC14HDSViewService34HomePodSetupProgressViewController_startDate;
  swift_beginAccess();
  sub_10000F25C(v0 + v15, v8, &qword_100104750, &unk_1000BEE60);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10000EBA4(v8, &qword_100104750, &unk_1000BEE60);
  }

  (*(v10 + 32))(v14, v8, v9);
  v17 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v0 + v17, v3, &qword_100103420, &unk_1000BCE90);
  v18 = v31;
  v19 = v14;
  if ((*(v4 + 48))(v3, 1, v31) == 1)
  {
    (*(v10 + 8))(v14, v9);
    return sub_10000EBA4(v3, &qword_100103420, &unk_1000BCE90);
  }

  v20 = v30;
  sub_100016310(v3, v30);
  if (*(v20 + *(v18 + 68)) != 1 || !isInternalBuild())
  {
    sub_100016374(v20);
    return (*(v10 + 8))(v14, v9);
  }

  v21 = v0;
  v33 = 0x3A64657370616C45;
  v34 = 0xE900000000000020;
  v22 = v29;
  Date.init()();
  Date.timeIntervalSince(_:)();
  v24 = v23;
  v25 = v23;
  v26 = *(v10 + 8);
  result = v26(v22, v9);
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v24 > -9.22337204e18)
  {
    if (v24 < 9.22337204e18)
    {
      v32 = v24;
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);

      v28 = String._bridgeToObjectiveC()();

      [v21 setSubtitle:v28];

      sub_100016374(v20);
      return v26(v19, v9);
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_10009CBCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E6C4(&qword_100104750, &unk_1000BEE60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009CC3C()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_10000E6C4(&qword_1001036C8, &unk_1000BEEA0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10009D080(v5);
    return 0;
  }
}

void *sub_10009CCFC(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for BaseProxFlowViewController();
  objc_msgSendSuper2(&v6, "viewDidAppear:", a1 & 1);
  v3 = sub_10009CC3C();
  if (v3)
  {
    [v3 setStatusBarHidden:1 withDuration:0.3];
    swift_unknownObjectRelease();
  }

  v4 = sub_10009CC3C();
  if (v4)
  {
    [v4 setAllowsBanners:1];
    swift_unknownObjectRelease();
  }

  result = sub_10009CC3C();
  if (result)
  {
    [result setDesiredHardwareButtonEvents:16 * (SFDeviceHomeButtonType() != 3)];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10009D028(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BaseProxFlowViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10009D080(uint64_t a1)
{
  v2 = sub_10000E6C4(&qword_1001036C0, &unk_1000BEE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009D0E8()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100104780);
  v1 = sub_100012AAC(v0, qword_100104780);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10009D1B0(void *a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_myContentView;
  *&v1[OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_myContentView] = 0;
  v4 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_viewModel;
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *&v1[OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_style] = 0;
  v6 = [objc_allocWithZone(type metadata accessor for HomePodSetupTextFieldView()) initWithCardStyle:0];
  v7 = *&v1[v3];
  *&v1[v3] = v6;
  v8 = v6;

  v9 = *&v1[v3];
  if (v9)
  {
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v12.receiver = v1;
  v12.super_class = type metadata accessor for HomePodSetupTextFieldViewController(0);
  v10 = objc_msgSendSuper2(&v12, "initWithContentView:", v8);

  return v10;
}

void sub_10009D308()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  v6 = *(v5 - 1);
  v7 = __chkstk_darwin(v5);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  v12 = type metadata accessor for HomePodSetupTextFieldViewController(0);
  v37.receiver = v1;
  v37.super_class = v12;
  objc_msgSendSuper2(&v37, "viewDidLoad");
  v13 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_viewModel;
  swift_beginAccess();
  sub_100016238(v1 + v13, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000162A8(v4);
    if (qword_100101700 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100012AAC(v14, qword_100104780);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupIconContent: viewDidLoad failed because viewModel not set.", v17, 2u);
    }
  }

  else
  {
    sub_100016310(v4, v11);
    if (qword_100101700 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100012AAC(v18, qword_100104780);
    sub_100012AE4(v11, v9);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36 = v22;
      *v21 = 136315138;
      v23 = *v9;
      v24 = v9[1];

      sub_100016374(v9);
      v25 = sub_1000B08A0(v23, v24, &v36);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "HomePodSetupIconContent: viewDidLoad with title %s", v21, 0xCu);
      sub_10000E70C(v22);
    }

    else
    {

      sub_100016374(v9);
    }

    v26 = String._bridgeToObjectiveC()();
    [v1 setTitle:v26];

    v27 = String._bridgeToObjectiveC()();
    [v1 setSubtitle:v27];

    v28 = *&v11[v5[19]];
    [v1 setDismissalType:v28];
    v29 = *&v11[v5[10]];
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v29, sub_10009E8BC, v30);

    if ((v28 & 2) == 0 && *&v11[v5[20] + 8])
    {
      v31 = String._bridgeToObjectiveC()();
      v32 = String._bridgeToObjectiveC()();
      v33 = String._bridgeToObjectiveC()();
      v34 = String._bridgeToObjectiveC()();
      v35 = [v1 dismissalConfirmationActionWithTitle:v31 message:v32 confirmButtonTitle:v33 cancelButtonTitle:v34];

      [v1 setDismissButtonAction:v35];
    }

    sub_10009E11C(v11[v5[46]]);
    sub_100016374(v11);
  }
}

void sub_10009D86C(char *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_100101700 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100104780);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136315138;
    v8 = sub_10000FEC4(v2);
    v10 = sub_1000B08A0(v8, v9, &v29);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupIconContent: User tapped on button: %s", v6, 0xCu);
    sub_10000E70C(v7);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *&Strong[OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_myContentView];
    if (v12 && (v13 = *(v12 + OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textField)) != 0)
    {
      v14 = Strong;
      v15 = [v13 text];
      if (v15)
      {
        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        if (String.count.getter() <= 0)
        {
        }

        else
        {
          swift_bridgeObjectRetain_n();
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            *v22 = 136315394;
            v23 = sub_10000FEC4(v2);
            v25 = sub_1000B08A0(v23, v24, &v29);

            *(v22 + 4) = v25;
            *(v22 + 12) = 2080;
            v26 = sub_1000B08A0(v17, v19, &v29);

            *(v22 + 14) = v26;
            _os_log_impl(&_mh_execute_header, v20, v21, "HomePodSetupPicker: User tapped on button: %s with selected option '%s'", v22, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v28[3] = &type metadata for SimpleOption;
          v28[4] = &off_1000EF0B8;
          v27 = swift_allocObject();
          v28[0] = v27;
          v27[2] = v17;
          v27[3] = v19;
          v27[4] = v17;
          v27[5] = v19;
          v27[6] = v17;
          v27[7] = v19;
          memset(v30, 0, sizeof(v30));
          LOBYTE(v29) = v2;
          sub_100012DA0(v28, v30, &qword_1001025D0, &unk_1000BD010);
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_10007A070(&v29);
            swift_unknownObjectRelease();
          }

          sub_100012E08(&v29);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_10009DC28(char a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for HomePodSetupTextFieldViewController(0);
  v14.receiver = v2;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1 & 1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10007EA04();
    swift_unknownObjectRelease();
  }

  v8 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_viewModel;
  swift_beginAccess();
  sub_100016238(&v2[v8], v6);
  v9 = type metadata accessor for HomePodSetupViewModel(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9))
  {
    sub_1000162A8(v6);
  }

  else
  {
    v12 = *&v6[*(v9 + 216)];
    sub_1000162A8(v6);
    if (v12)
    {
      sub_10009DDB4();
      return;
    }
  }

  v10 = *&v2[OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_myContentView];
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textField);
    if (v11)
    {
      [v11 becomeFirstResponder];
    }
  }
}

void sub_10009DDB4()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = sub_100006658(v1);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();
  v4 = sub_100006658(v3);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = String._bridgeToObjectiveC()();
  v9 = sub_100006658(v8);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  v11 = v7;
  v12 = String._bridgeToObjectiveC()();

  v15[4] = sub_100012D88;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10003DFD0;
  v15[3] = &unk_1000F1CF8;
  v13 = _Block_copy(v15);

  v14 = [objc_opt_self() actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v11 addAction:v14];
  [v11 setPreferredAction:v14];
  [v0 presentViewController:v11 animated:1 completion:0];
}

void sub_10009E11C(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_myContentView;
  v4 = *(v1 + OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_myContentView);
  if (v4)
  {
    *(v4 + OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_isSecureText) = a1 & 1;
  }

  v9 = [objc_allocWithZone(PRXTextField) init];
  sub_10009E268(0, 0);
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = String._bridgeToObjectiveC()();
  v6 = sub_100006658(v5);

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  [v9 setPlaceholder:v6];

  v7 = *(v2 + v3);
  v8 = v9;
  if (v7)
  {
    v8 = v7;
    sub_100099724(v9);
  }
}

void sub_10009E268(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = objc_allocWithZone(NSLocale);
    v4 = String._bridgeToObjectiveC()();
    v8 = [v3 initWithLocaleIdentifier:v4];

    v5 = v8;
  }

  else
  {
    v5 = [objc_opt_self() currentLocale];
    if (!v5)
    {
      __break(1u);
      return;
    }
  }

  v9 = v5;
  v6 = [v5 languageCode];
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  v7 = [objc_opt_self() characterDirectionForLanguage:v6] == 2;

  [v2 setTextAlignment:2 * v7];
}

id sub_10009E394()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupTextFieldViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupTextFieldViewController(uint64_t a1)
{
  result = qword_1001047D0;
  if (!qword_1001047D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009E47C(uint64_t a1)
{
  sub_100012108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10009E52C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_10009E580(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  if (qword_100101700 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100012AAC(v7, qword_100104780);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "HomePodSetupIconContent: presenter:didUpdate viewModel", v10, 2u);
  }

  sub_100012AE4(a1, v6);
  v11 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v6, v1 + v12, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  result = [v1 isViewLoaded];
  if (result)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "HomePodSetupIconContent: configureUI", v16, 2u);
    }

    v17 = String._bridgeToObjectiveC()();
    [v2 setTitle:v17];

    v18 = String._bridgeToObjectiveC()();
    [v2 setSubtitle:v18];

    return [v2 setDismissalType:*(a1 + *(v11 + 76))];
  }

  return result;
}

uint64_t sub_10009E834()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009E86C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009E884()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009E8C4()
{

  return _swift_deallocObject(v0, 64, 7);
}

id sub_10009E9C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupDoneViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupDoneViewController(uint64_t a1)
{
  result = qword_100104808;
  if (!qword_100104808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009EA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = v3;
    v19 = v22;
    v20 = objc_opt_self();
    v9 = (a1 + 56);
    do
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;
      v9 += 32;
      v14 = swift_allocObject();
      *(v14 + 16) = v10;
      *(v14 + 24) = v11;
      *(v14 + 32) = v12;
      *(v14 + 40) = v13;
      *(v14 + 48) = a2;
      *(v14 + 56) = a3;
      swift_bridgeObjectRetain_n();

      v15 = String._bridgeToObjectiveC()();

      v22[2] = sub_1000A27BC;
      v22[3] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v22[0] = sub_10003DFD0;
      v22[1] = &unk_1000F1DE8;
      v16 = _Block_copy(aBlock);
      v17 = [v20 actionWithTitle:v15 style:v12 handler:{v16, v19}];

      _Block_release(v16);

      v18 = [v5 addAction:v17];

      --v4;
    }

    while (v4);
  }
}

uint64_t sub_10009EC3C()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100104820);
  v1 = sub_100012AAC(v0, qword_100104820);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10009ED04(void *a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_options] = _swiftEmptyArrayStorage;
  v3 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_viewModel;
  v4 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_defaultIconImage] = 0;
  v5 = &v1[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_selectedIndex];
  *v5 = 0;
  v5[8] = 1;
  v6 = [objc_allocWithZone(type metadata accessor for HomePodSetupIconContentView()) initWithCardStyle:0];
  *&v1[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_myContentView] = v6;
  v7 = v6;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_contentTableView] = [objc_allocWithZone(type metadata accessor for HomePodWiFiTableView()) initWithCardStyle:0];
  v10.receiver = v1;
  v10.super_class = type metadata accessor for HomePodSetupTableViewController(0);
  v8 = objc_msgSendSuper2(&v10, "initWithContentView:", v7);

  return v8;
}

void sub_10009EE90()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  v6 = *(v5 - 1);
  v7 = __chkstk_darwin(v5);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = type metadata accessor for HomePodSetupTableViewController(0);
  v34.receiver = v1;
  v34.super_class = v12;
  objc_msgSendSuper2(&v34, "viewDidLoad");
  v13 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v13, v4, &qword_100103420, &unk_1000BCE90);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000EBA4(v4, &qword_100103420, &unk_1000BCE90);
    if (qword_100101708 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100012AAC(v14, qword_100104820);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupTableViewController: viewDidLoad failed because viewModel not set.", v17, 2u);
    }
  }

  else
  {
    sub_100016310(v4, v11);
    if (qword_100101708 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100012AAC(v18, qword_100104820);
    sub_100012AE4(v11, v9);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;
      v23 = *v9;
      v24 = v9[1];

      sub_100016374(v9);
      v25 = sub_1000B08A0(v23, v24, &v33);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "HomePodSetupTableViewController: viewDidLoad with title %s", v21, 0xCu);
      sub_10000E70C(v22);
    }

    else
    {

      sub_100016374(v9);
    }

    sub_1000A0DC0();
    sub_1000A0A18(v11);
    v26 = *&v11[v5[10]];
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v26, sub_1000A2774, v27);

    if ((v11[v5[19]] & 2) == 0 && *&v11[v5[20] + 8])
    {
      v28 = String._bridgeToObjectiveC()();
      v29 = String._bridgeToObjectiveC()();
      v30 = String._bridgeToObjectiveC()();
      v31 = String._bridgeToObjectiveC()();
      v32 = [v1 dismissalConfirmationActionWithTitle:v28 message:v29 confirmButtonTitle:v30 cancelButtonTitle:v31];

      [v1 setDismissButtonAction:v32];
    }

    [v1 setDismissalType:1];
    sub_100016374(v11);
  }
}

void sub_10009F384(char *a1, uint64_t a2)
{
  v4 = sub_10000E6C4(&unk_100104950, &qword_1000BD280);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v72 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = *(*(Strong + OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_contentTableView) + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView);
    if (!v17)
    {

      (*(v11 + 56))(v9, 1, 1, v10);
LABEL_9:
      sub_10000EBA4(v9, &unk_100104950, &qword_1000BD280);
      return;
    }

    v18 = [v17 indexPathForSelectedRow];
    if (v18)
    {
      v19 = v18;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = 0;
    }

    else
    {
      v20 = 1;
    }

    (*(v11 + 56))(v7, v20, 1, v10);
    sub_1000A2838(v7, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      goto LABEL_9;
    }

    (*(v11 + 32))(v13, v9, v10);
    v21 = IndexPath.row.getter();
    strcpy(&v84, "hds_hp_scn_nn");
    HIWORD(v84) = -4864;
    AnyHashable.init<A>(_:)();
    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_83;
    }

    v22 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_options;
    v23 = *&v16[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_options];
    if (v21 >= *(v23 + 16))
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v24 = *(v23 + 8 * v21 + 32);
    if (*(v24 + 16))
    {

      v25 = sub_100053B3C(&v89);
      if (v26)
      {
        sub_10000F25C(*(v24 + 56) + 32 * v25, &v91, &qword_1001036C0, &unk_1000BEE90);
        sub_10000EA04(&v89);

        v86 = v91;
        v87 = v92;
        if (!*(&v92 + 1))
        {
          (*(v11 + 8))(v13, v10);

          sub_10000EBA4(&v86, &qword_1001036C0, &unk_1000BEE90);
          return;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          (*(v11 + 8))(v13, v10);

          return;
        }

        v77 = v22;
        v78 = v84;
        v27 = qword_100101708;
        swift_bridgeObjectRetain_n();
        if (v27 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_100012AAC(v28, qword_100104820);

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();

        v75 = v30;
        v31 = os_log_type_enabled(v29, v30);
        v76 = v13;
        if (v31)
        {
          v32 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v89 = v74;
          *v32 = 136315394;
          v33 = sub_10000FEC4(v14);
          v35 = sub_1000B08A0(v33, v34, &v89);
          v73 = v29;
          v36 = v35;
          v37 = *(&v78 + 1);

          *(v32 + 4) = v36;
          *(v32 + 12) = 2080;
          v38 = v78;
          v39 = sub_1000B08A0(v78, v37, &v89);

          *(v32 + 14) = v39;
          v40 = v73;
          _os_log_impl(&_mh_execute_header, v73, v75, "HomePodSetupTableViewController: User tapped on button: %s with selected option '%s'", v32, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v38 = v78;
        }

        v41 = v77;
        *(&v87 + 1) = &type metadata for SimpleOption;
        v88 = &off_1000EF0B8;
        v42 = swift_allocObject();
        *&v86 = v42;
        v43 = *(&v78 + 1);
        v42[2] = v38;
        v42[3] = v43;
        v42[4] = v38;
        v42[5] = v43;
        v42[6] = v38;
        v42[7] = v43;
        memset(v90, 0, sizeof(v90));
        LOBYTE(v89) = v14;
        sub_100012DA0(&v86, v90, &qword_1001025D0, &unk_1000BD010);
        v44 = *&v16[v41];
        v45 = *(v44 + 16);
        if (v45)
        {
          *(&v78 + 1) = v16;

          v46 = 0;
          v13 = &qword_1001036C0;
          v16 = &unk_1000BEE90;
          v79 = v11;
          v80 = v10;
          while (v46 < *(v44 + 16))
          {
            v47 = *(v44 + 8 * v46 + 32);
            strcpy(v83, "hds_hp_scn_re");
            v83[7] = -4864;

            AnyHashable.init<A>(_:)();
            if (*(v47 + 16) && (v48 = sub_100053B3C(&v86), (v49 & 1) != 0))
            {
              sub_10000F25C(*(v47 + 56) + 32 * v48, &v84, &qword_1001036C0, &unk_1000BEE90);
              sub_10000EA04(&v86);

              v91 = v84;
              v92 = v85;
              if (*(&v85 + 1))
              {
                if (swift_dynamicCast())
                {
                  v11 = v79;
                  v10 = v80;
                  if (LOBYTE(v83[0]) == 1)
                  {
                    v71 = 1;
LABEL_41:

                    v13 = v76;
                    v16 = *(&v78 + 1);
                    goto LABEL_43;
                  }
                }

                else
                {
                  v11 = v79;
                  v10 = v80;
                }
              }

              else
              {
                sub_10000EBA4(&v91, &qword_1001036C0, &unk_1000BEE90);
                v10 = v80;
                v11 = v79;
              }
            }

            else
            {

              sub_10000EA04(&v86);
            }

            if (v45 == ++v46)
            {
              v71 = 0;
              goto LABEL_41;
            }
          }

          __break(1u);
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        v71 = 0;
        v13 = v76;
LABEL_43:
        swift_beginAccess();
        v50 = swift_unknownObjectWeakLoadStrong();
        if (!v50)
        {
          goto LABEL_58;
        }

        v51 = v50;
        v52 = IndexPath.row.getter();
        v53 = *&v51[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_options];

        if ((v52 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v52 < *(v53 + 16))
        {
          v54 = *(v53 + 8 * v52 + 32);

          strcpy(v82, "hds_hp_scn_re");
          HIWORD(v82[1]) = -4864;
          AnyHashable.init<A>(_:)();
          if (*(v54 + 16))
          {
            v55 = sub_100053B3C(&v86);
            if (v56)
            {
              sub_10000F25C(*(v54 + 56) + 32 * v55, &v84, &qword_1001036C0, &unk_1000BEE90);
              sub_10000EA04(&v86);
              v91 = v84;
              v92 = v85;
              if (!*(&v85 + 1))
              {

                goto LABEL_78;
              }

              if ((swift_dynamicCast() & 1) == 0)
              {

                goto LABEL_58;
              }

              v57 = LOBYTE(v82[0]);
              strcpy(v82, "hds_hp_scn_nn");
              HIWORD(v82[1]) = -4864;
              AnyHashable.init<A>(_:)();
              if (*(v54 + 16))
              {
                v58 = sub_100053B3C(&v86);
                if (v59)
                {
                  sub_10000F25C(*(v54 + 56) + 32 * v58, &v84, &qword_1001036C0, &unk_1000BEE90);
                  sub_10000EA04(&v86);

                  v91 = v84;
                  v92 = v85;
                  if (*(&v85 + 1))
                  {
                    if (swift_dynamicCast())
                    {
                      a2 = v82[1];
                      if (((v57 | v71 ^ 1) & 1) == 0)
                      {
LABEL_85:
                        v67 = v82[0];
                        goto LABEL_68;
                      }

                      if (swift_unknownObjectWeakLoadStrong())
                      {
LABEL_74:
                        sub_10007A070(&v89);

                        swift_unknownObjectRelease();
                        goto LABEL_76;
                      }

LABEL_75:

                      goto LABEL_76;
                    }

LABEL_58:
                    swift_beginAccess();
                    v60 = swift_unknownObjectWeakLoadStrong();
                    if (!v60)
                    {
                      goto LABEL_70;
                    }

                    v61 = v60;
                    v62 = IndexPath.row.getter();
                    strcpy(v81, "hds_hp_scn_nn");
                    v81[7] = -4864;
                    AnyHashable.init<A>(_:)();
                    v63 = *&v61[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_options];

                    if ((v62 & 0x8000000000000000) == 0)
                    {
                      if (v62 < *(v63 + 16))
                      {
                        v64 = *(v63 + 8 * v62 + 32);

                        if (*(v64 + 16))
                        {
                          v65 = sub_100053B3C(&v86);
                          if (v66)
                          {
                            sub_10000F25C(*(v64 + 56) + 32 * v65, &v84, &qword_1001036C0, &unk_1000BEE90);
                            sub_10000EA04(&v86);

                            if (*(&v85 + 1) != 1)
                            {
                              v91 = v84;
                              v92 = v85;
                              if (*(&v85 + 1))
                              {
                                if (swift_dynamicCast())
                                {
                                  a2 = *(&v86 + 1);
                                  if (v71)
                                  {
                                    v67 = v86;
LABEL_68:
                                    sub_10009FFE8(&v89, v67, a2);

LABEL_76:
                                    (*(v11 + 8))(v13, v10);
                                    sub_100012E08(&v89);
                                    return;
                                  }
                                }

LABEL_73:
                                if (swift_unknownObjectWeakLoadStrong())
                                {
                                  goto LABEL_74;
                                }

                                goto LABEL_75;
                              }

                              v68 = &qword_1001036C0;
                              v69 = &unk_1000BEE90;
                              v70 = &v91;
LABEL_72:
                              sub_10000EBA4(v70, v68, v69);
                              goto LABEL_73;
                            }

LABEL_71:
                            v68 = &unk_100104960;
                            v69 = &unk_1000BEFB8;
                            v70 = &v84;
                            goto LABEL_72;
                          }
                        }

                        sub_10000EA04(&v86);
LABEL_70:
                        v84 = 0uLL;
                        *&v85 = 0;
                        *(&v85 + 1) = 1;
                        goto LABEL_71;
                      }

                      goto LABEL_90;
                    }

LABEL_89:
                    __break(1u);
LABEL_90:
                    __break(1u);
                    return;
                  }

LABEL_78:
                  sub_10000EBA4(&v91, &qword_1001036C0, &unk_1000BEE90);
                  goto LABEL_58;
                }
              }
            }
          }

          sub_10000EA04(&v86);
          goto LABEL_58;
        }

        __break(1u);
        goto LABEL_89;
      }
    }

    else
    {
    }

    sub_10000EA04(&v89);
    (*(v11 + 8))(v13, v10);
  }
}

void sub_10009FFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000E6C4(&qword_100102388, qword_1000BE250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BD050;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_100039F8C();
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;

  sub_100038F50(inited, &aBlock, 0xD00000000000001CLL, 0x80000001000C7E70, 16421, 0xE200000000000000);
  swift_setDeallocating();
  sub_10000E6C4(&qword_1001023D8, &unk_1000BD290);
  swift_arrayDestroy();
  v8 = String._bridgeToObjectiveC()();
  v9 = sub_100006658(v8);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  v13 = String._bridgeToObjectiveC()();
  v14 = sub_100006658(v13);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000161DC(a1, &aBlock);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  v16 = v31;
  *(v15 + 24) = aBlock;
  *(v15 + 40) = v16;
  *(v15 + 56) = v32;
  *(v15 + 72) = v33;
  v17 = v3;
  v18 = String._bridgeToObjectiveC()();

  v29[4] = sub_1000A2940;
  v29[5] = v15;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 1107296256;
  v29[2] = sub_10003DFD0;
  v29[3] = &unk_1000F1E60;
  v19 = _Block_copy(v29);

  v20 = objc_opt_self();
  v21 = [v20 actionWithTitle:v18 style:1 handler:v19];
  _Block_release(v19);

  v22 = String._bridgeToObjectiveC()();
  v23 = sub_100006658(v22);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = swift_allocObject();
  *(v24 + 16) = v12;
  v25 = v12;
  v26 = String._bridgeToObjectiveC()();

  *&v32 = sub_100012D88;
  *(&v32 + 1) = v24;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v31 = sub_10003DFD0;
  *(&v31 + 1) = &unk_1000F1EB0;
  v27 = _Block_copy(&aBlock);

  v28 = [v20 actionWithTitle:v26 style:0 handler:v27];
  _Block_release(v27);

  [v25 addAction:v28];
  [v25 addAction:v21];
  [v25 setPreferredAction:v28];
  [v17 presentViewController:v25 animated:1 completion:0];
}

void sub_1000A04C4(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HomePodSetupTableViewController(0);
  v14.receiver = v2;
  v14.super_class = v8;
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1 & 1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10007EA04();
    swift_unknownObjectRelease();
  }

  v9 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_contentTableView;
  [*(*&v2[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_contentTableView] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView) reloadData];
  sub_1000A066C();
  if ((v10 & 1) == 0)
  {
    v11 = *(*&v2[v9] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView);
    if (v11)
    {
      v12 = v11;
      IndexPath.init(row:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v5 + 8))(v7, v4);
      [v12 selectRowAtIndexPath:isa animated:1 scrollPosition:1];
    }
  }
}

void sub_1000A066C()
{
  v1 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v0 + v4, v3, &qword_100103420, &unk_1000BCE90);
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5))
  {
    sub_10000EBA4(v3, &qword_100103420, &unk_1000BCE90);
    return;
  }

  v6 = &v3[*(v5 + 220)];
  v7 = *v6;
  v15 = *(v6 + 1);
  v16 = v7;

  sub_10000EBA4(v3, &qword_100103420, &unk_1000BCE90);
  v8 = *(v0 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_options);
  v9 = *(v8 + 16);

  if (!v9)
  {
LABEL_18:

    return;
  }

  v10 = 0;
  v17 = v9;
  while (v10 < *(v8 + 16))
  {
    v11 = *(v8 + 8 * v10 + 32);
    strcpy(v18, "hds_hp_scn_nn");
    HIWORD(v18[1]) = -4864;

    AnyHashable.init<A>(_:)();
    if (*(v11 + 16) && (v12 = sub_100053B3C(v19), (v13 & 1) != 0))
    {
      sub_10000F25C(*(v11 + 56) + 32 * v12, &v20, &qword_1001036C0, &unk_1000BEE90);
      sub_10000EA04(v19);

      v22[0] = v20;
      v22[1] = v21;
      if (!*(&v21 + 1))
      {
        sub_10000EBA4(v22, &qword_1001036C0, &unk_1000BEE90);
LABEL_17:
        v9 = v17;
        goto LABEL_6;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_17;
      }

      if (v18[0] == v16 && v18[1] == v15)
      {

        goto LABEL_20;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v9 = v17;
      if (v14)
      {

LABEL_20:

        return;
      }
    }

    else
    {

      sub_10000EA04(v19);
    }

LABEL_6:
    if (v9 == ++v10)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_1000A0A18(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomePodSetupViewModel(0);
  __chkstk_darwin(v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v7];

  *&v2[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_options] = *(a1 + *(v4 + 52));

  if (qword_100101708 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100012AAC(v8, qword_100104820);
  v9 = v2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v37 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v36 = v9;
    v15 = v14;
    v38 = v14;
    *v13 = 136315138;

    sub_10000E6C4(&unk_100104940, &qword_1000BEAC0);
    v16 = Array.description.getter();
    v18 = v17;

    v19 = sub_1000B08A0(v16, v18, &v38);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "HomePodSetupTableViewController: options %s", v13, 0xCu);
    sub_10000E70C(v15);
    v9 = v36;

    v4 = v37;
  }

  sub_100012AE4(a1, v6);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38 = v23;
    *v22 = 136315138;
    v24 = &v6[*(v4 + 188)];
    v25 = *v24;
    v26 = v24[1];

    sub_100016374(v6);
    v27 = sub_1000B08A0(v25, v26, &v38);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "HomePodSetupTableViewController: systemNameIconForPickerView %s", v22, 0xCu);
    sub_10000E70C(v23);
  }

  else
  {

    sub_100016374(v6);
  }

  v28 = (a1 + *(v4 + 188));
  v29 = *v28;
  v30 = v28[1];
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    v32 = String._bridgeToObjectiveC()();
    v33 = [objc_opt_self() systemImageNamed:v32];
  }

  else
  {
    v33 = 0;
  }

  v34 = *&v9[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_defaultIconImage];
  *&v9[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_defaultIconImage] = v33;
}

void sub_1000A0DC0()
{
  v1 = v0;
  v2 = type metadata accessor for HomePodSetupViewModel(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v6 - 8);
  v8 = &v71 - v7;
  v9 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_contentTableView;
  v10 = *&v0[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_contentTableView];
  v11 = objc_allocWithZone(PRXLabel);
  v12 = v10;
  sub_100051AE4([v11 initWithStyle:0]);

  v13 = *&v1[v9];
  v14 = *&v13[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_mainTitleLabel];
  if (v14)
  {
    v15 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_viewModel;
    swift_beginAccess();
    sub_10000F25C(&v1[v15], v8, &qword_100103420, &unk_1000BCE90);
    if ((*(v3 + 48))(v8, 1, v2))
    {
      v16 = v14;
      sub_10000EBA4(v8, &qword_100103420, &unk_1000BCE90);
      v17 = 0;
    }

    else
    {
      sub_100012AE4(v8, v5);
      v16 = v14;
      sub_10000EBA4(v8, &qword_100103420, &unk_1000BCE90);

      sub_100016374(v5);
      v17 = String._bridgeToObjectiveC()();
    }

    [v16 setText:v17];

    v13 = *&v1[v9];
  }

  v18 = objc_allocWithZone(UITableView);
  v19 = v13;
  sub_100051AF0([v18 init]);

  v20 = *(*&v1[v9] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView);
  if (v20)
  {
    [v20 setDelegate:v1];
    v21 = *(*&v1[v9] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView);
    if (v21)
    {
      [v21 setDataSource:v1];
      v22 = *(*&v1[v9] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView);
      if (v22)
      {
        [v22 setClipsToBounds:1];
        v23 = *(*&v1[v9] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView);
        if (v23)
        {
          v24 = [v23 layer];
          [v24 setMasksToBounds:1];

          v25 = *(*&v1[v9] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView);
          if (v25)
          {
            v26 = [v25 layer];
            [v26 setCornerRadius:30.0];

            v27 = *(*&v1[v9] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView);
            if (v27)
            {
              v28 = v27;
              v29 = [v1 traitCollection];
              v30 = [v29 userInterfaceStyle];

              v31 = objc_opt_self();
              v32 = &selRef_systemGray5Color;
              if (v30 != 2)
              {
                v32 = &selRef_systemGray6Color;
              }

              v33 = [v31 *v32];
              [v28 setBackgroundColor:v33];

              v34 = *(*&v1[v9] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView);
              if (v34)
              {
                [v34 setSeparatorStyle:0];
              }
            }
          }
        }
      }
    }
  }

  v35 = [v1 contentView];
  [v35 addSubview:*&v1[v9]];

  v36 = [v1 contentView];
  v37 = [v36 mainContentGuide];

  v38 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1000BD460;
  v40 = [*&v1[v9] topAnchor];
  v41 = [v37 topAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(v39 + 32) = v42;
  v43 = [*&v1[v9] bottomAnchor];
  v44 = [v37 bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v39 + 40) = v45;
  v46 = [*&v1[v9] leadingAnchor];
  v47 = [v37 leadingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v39 + 48) = v48;
  v49 = [*&v1[v9] trailingAnchor];
  v50 = [v37 trailingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v39 + 56) = v51;
  sub_1000163D8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v38 activateConstraints:isa];

  v53 = *&v1[v9];
  v54 = objc_allocWithZone(UILabel);
  v55 = v53;
  sub_100051BD0([v54 init]);

  v56 = *(*&v1[v9] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_label);
  if (v56)
  {
    v57 = v56;
    v58 = String._bridgeToObjectiveC()();
    v59 = sub_100006658(v58);

    if (!v59)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = String._bridgeToObjectiveC()();
    }

    [v57 setText:v59];

    v60 = *(*&v1[v9] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_label);
    if (v60)
    {
      [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
      v61 = *(*&v1[v9] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_label);
      if (v61)
      {
        [v61 setNumberOfLines:0];
        v62 = *(*&v1[v9] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_label);
        if (v62)
        {
          v63 = objc_opt_self();
          v64 = v62;
          v65 = [v63 preferredFontForTextStyle:UIFontTextStyleCaption1];
          [v64 setFont:v65];

          v66 = *(*&v1[v9] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_label);
          if (v66)
          {
            [v66 setAdjustsFontSizeToFitWidth:0];
            v67 = *(*&v1[v9] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_label);
            if (v67)
            {
              v68 = objc_opt_self();
              v69 = v67;
              v70 = [v68 secondaryLabelColor];
              [v69 setTextColor:v70];
            }
          }
        }
      }
    }
  }
}

void sub_1000A1760(void *a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_selectedIndex);
  if ((*(v1 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_selectedIndex + 8) & 1) == 0)
  {
    v8 = *v7;
    if (v8 != IndexPath.row.getter())
    {
      IndexPath.init(row:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v4 + 8))(v6, v3);
      [a1 deselectRowAtIndexPath:isa animated:1];
    }
  }

  *v7 = IndexPath.row.getter();
  *(v7 + 8) = 0;
  v10 = IndexPath._bridgeToObjectiveC()().super.isa;
  v11 = [a1 cellForRowAtIndexPath:v10];

  if (v11)
  {
    [v11 setSelected:1 animated:1];
  }
}

uint64_t sub_1000A1904(void *a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v4 = [a1 cellForRowAtIndexPath:isa];

  if (v4)
  {
    [v4 setSelected:0 animated:1];
  }

  v5 = v1 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_selectedIndex;
  v6 = *(v1 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_selectedIndex);
  v7 = *(v1 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_selectedIndex + 8);
  result = IndexPath.row.getter();
  if ((v7 & 1) == 0 && v6 == result)
  {
    *v5 = 0;
    *(v5 + 8) = 1;
  }

  return result;
}

uint64_t sub_1000A19C8(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v12, v11);

  return (*(v9 + 8))(v11, v8);
}

id sub_1000A1BDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupTableViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupTableViewController(uint64_t a1)
{
  result = qword_100104930;
  if (!qword_100104930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A1D04(uint64_t a1)
{
  sub_100012108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000A1DD0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1000A1E24(uint64_t a1, uint64_t a2, char *a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10007A070(a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1000A1E84(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v6 = *(a2 + 24);

  a3(&v6);

  return result;
}

void sub_1000A1EE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  if (qword_100101708 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100012AAC(v7, qword_100104820);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "HomePodSetupTableViewController: presenter:didUpdate viewModel", v10, 2u);
  }

  sub_100012AE4(a1, v6);
  v11 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v6, v2 + v12, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  if ([v2 isViewLoaded])
  {
    sub_1000A0A18(a1);
  }
}

unint64_t sub_1000A20C8()
{
  type metadata accessor for HomePodWiFiTableCell();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v3 = *(v0 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_options);
  if (result >= *(v3 + 16))
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v4 = *(v3 + 8 * result + 32);
  v5 = objc_opt_self();

  v6 = v1;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor:v7];

  strcpy(v20, "hds_hp_scn_nn");
  HIWORD(v20[1]) = -4864;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v8 = sub_100053B3C(v21), (v9 & 1) != 0))
  {
    sub_10000F25C(*(v4 + 56) + 32 * v8, &v22, &qword_1001036C0, &unk_1000BEE90);
    sub_10000EA04(v21);
    v24 = v22;
    v25 = v23;
    if (*(&v23 + 1))
    {
      if (swift_dynamicCast())
      {
        v10 = *&v6[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel];
        v11 = String._bridgeToObjectiveC()();

        goto LABEL_10;
      }
    }

    else
    {
      sub_10000EBA4(&v24, &qword_1001036C0, &unk_1000BEE90);
    }
  }

  else
  {
    sub_10000EA04(v21);
  }

  v10 = *&v6[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel];
  v11 = String._bridgeToObjectiveC()();
LABEL_10:
  [v10 setText:v11];

  strcpy(v20, "hds_hp_scn_re");
  HIWORD(v20[1]) = -4864;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v12 = sub_100053B3C(v21), (v13 & 1) != 0))
  {
    sub_10000F25C(*(v4 + 56) + 32 * v12, &v22, &qword_1001036C0, &unk_1000BEE90);
    sub_10000EA04(v21);
    v24 = v22;
    v25 = v23;
    if (*(&v23 + 1))
    {
      if (swift_dynamicCast())
      {
        v6[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_isReachable] = v20[0];
      }
    }

    else
    {
      sub_10000EBA4(&v24, &qword_1001036C0, &unk_1000BEE90);
    }
  }

  else
  {
    sub_10000EA04(v21);
  }

  v20[0] = 0x735F70685F736468;
  v20[1] = 0xEF697373725F6E63;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v14 = sub_100053B3C(v21), (v15 & 1) != 0))
  {
    sub_10000F25C(*(v4 + 56) + 32 * v14, &v22, &qword_1001036C0, &unk_1000BEE90);
    sub_10000EA04(v21);
    v24 = v22;
    v25 = v23;
    if (*(&v23 + 1))
    {
      if (swift_dynamicCast())
      {
        *&v6[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_rssi] = v20[0];
      }
    }

    else
    {
      sub_10000EBA4(&v24, &qword_1001036C0, &unk_1000BEE90);
    }
  }

  else
  {
    sub_10000EA04(v21);
  }

  strcpy(v20, "hds_hp_scn_io");
  HIWORD(v20[1]) = -4864;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v16 = sub_100053B3C(v21), (v17 & 1) != 0))
  {
    sub_10000F25C(*(v4 + 56) + 32 * v16, &v22, &qword_1001036C0, &unk_1000BEE90);
    sub_10000EA04(v21);

    v24 = v22;
    v25 = v23;
    if (*(&v23 + 1))
    {
      if (swift_dynamicCast())
      {
        isa = Int._bridgeToObjectiveC()().super.super.isa;
        v19 = [(objc_class *)isa BOOLValue];

        v6[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_hideLockIcon] = v19;
      }
    }

    else
    {
      sub_10000EBA4(&v24, &qword_1001036C0, &unk_1000BEE90);
    }
  }

  else
  {

    sub_10000EA04(v21);
  }

  sub_10009652C();
  return v6;
}

unint64_t sub_1000A25D8(uint64_t a1)
{
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(v1 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_options);
  if (result >= *(v3 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v4 = *(v3 + 8 * result + 32);
  strcpy(v7, "hds_hp_scn_re");
  v7[7] = -4864;

  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v5 = sub_100053B3C(v8), (v6 & 1) != 0))
  {
    sub_10000F25C(*(v4 + 56) + 32 * v5, &v9, &qword_1001036C0, &unk_1000BEE90);
    sub_10000EA04(v8);

    v11[0] = v9;
    v11[1] = v10;
    if (*(&v10 + 1))
    {
      return swift_dynamicCast();
    }

    else
    {
      return sub_10000EBA4(v11, &qword_1001036C0, &unk_1000BEE90);
    }
  }

  else
  {

    return sub_10000EA04(v8);
  }
}

uint64_t sub_1000A273C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A277C()
{

  return _swift_deallocObject(v0, 64, 7);
}

double sub_1000A27BC()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 40);

  v1(&v3);

  return result;
}

uint64_t sub_1000A2820(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A2838(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E6C4(&unk_100104950, &qword_1000BD280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A28A8()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A28F0()
{
  if (*(v0 + 56))
  {
    sub_10000E70C((v0 + 32));
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000A294C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A2994(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(a1);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    v7 = [v4 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = UUID.uuidString.getter();
    v10 = v9;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v10 = 0xE300000000000000;
    v8 = 7104878;
  }

  v13[0] = 0x5F656D6F68;
  v13[1] = 0xE500000000000000;
  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  return v13[0];
}

uint64_t sub_1000A2AD4()
{
  if (!*v0)
  {
    return 7104878;
  }

  v1 = [*v0 name];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1000A2B4C(void *a1)
{
  v2 = 7104878;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[0] = 1031365995;
  v37[1] = 0xE400000000000000;
  if (a1)
  {
    v7 = [a1 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = UUID.uuidString.getter();
    v10 = v9;
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v10 = 0xE300000000000000;
    v8 = 7104878;
  }

  v35 = 0x5F656D6F68;
  v36 = 0xE500000000000000;
  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = v37[0];
  v15 = v37[1];
  strcpy(v37, "<HomeOption ");
  BYTE5(v37[1]) = 0;
  HIWORD(v37[1]) = -5120;
  v14._object = v15;
  String.append(_:)(v14);

  v17 = v37[0];
  v16 = v37[1];
  v37[0] = 0;
  v37[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v37, "displayValue=");
  HIWORD(v37[1]) = -4864;
  if (a1)
  {
    v18 = [a1 name];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v20 = 0xE300000000000000;
  }

  v35 = v2;
  v36 = v20;
  v21._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 32;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v23 = v37[0];
  v24 = v37[1];
  v37[0] = v17;
  v37[1] = v16;

  v25._countAndFlagsBits = v23;
  v25._object = v24;
  String.append(_:)(v25);

  v27 = v37[0];
  v26 = v37[1];
  v37[0] = 0x3D656D6F68;
  v37[1] = 0xE500000000000000;
  v35 = a1;
  sub_10000E6C4(&qword_100104968, &qword_1000BEFE8);
  v28._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 32;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30 = v37[0];
  v31 = v37[1];
  v37[0] = v27;
  v37[1] = v26;

  v32._countAndFlagsBits = v30;
  v32._object = v31;
  String.append(_:)(v32);

  v33._countAndFlagsBits = 62;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);

  return v37[0];
}

uint64_t sub_1000A2EA0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000A2EB4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000A2F10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000A2F74()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100104970);
  v1 = sub_100012AAC(v0, qword_100104970);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000A303C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v7 = sub_100053B3C(a1);
    if (v8)
    {
      return *(*(a4 + 56) + 16 * v7);
    }
  }

  if (qword_100101710 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100012AAC(v9, qword_100104970);
  sub_10000FCF4(a1, v22);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = AnyHashable.description.getter();
    v15 = v14;
    sub_10000EA04(v22);
    v16 = sub_1000B08A0(v13, v15, &v21);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = Dictionary.description.getter();
    v19 = sub_1000B08A0(v17, v18, &v21);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Couldn't get value for key %s from %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000EA04(v22);
  }

  return a2;
}

double sub_1000A3260(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_1000A32B4()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100104988);
  v1 = sub_100012AAC(v0, qword_100104988);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000A337C()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = [objc_allocWithZone(CUSystemMonitor) init];
    v4 = *(v0 + 64);
    *(v0 + 64) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1000A33E8()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = objc_allocWithZone(NSUserDefaults);
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 initWithSuiteName:v4];

    if (!v5)
    {
      v5 = [objc_opt_self() standardUserDefaults];
    }

    v6 = *(v0 + 72);
    *(v0 + 72) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t *sub_1000A34AC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = 0;
  v1[3] = 0x4072C00000000000;
  v1[5] = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 56) = 0;
  v1[8] = 0;
  v1[9] = 0;
  v1[12] = 0;
  v1[13] = 0;
  v1[11] = 0;
  *(v1 + 112) = 1;
  swift_unknownObjectWeakInit();
  v1[17] = 0;
  v1[19] = &_swiftEmptySetSingleton;
  *(v1 + 160) = 0;
  *(v1 + 41) = 0;
  v1[21] = [objc_allocWithZone(AppleMusicServiceUtilities) init];
  *(v1 + 88) = 0;
  type metadata accessor for HomePodSetupModel(0);
  swift_allocObject();

  v1[6] = sub_10004B1D8(v9);
  v1[18] = [objc_allocWithZone(SFDeviceAssetManager) init];
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v11 = result;
  v46 = v4;
  v12 = [result aa_primaryAppleAccount];

  if (v12)
  {
    v13 = [v12 username];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        v19 = v2[6];
        *(v19 + 16) = v15;
        *(v19 + 24) = v17;
      }
    }
  }

  v20 = v2[6];

  *(v20 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_viewAppearedTicks) = mach_absolute_time();

  v21 = v2[6];

  *(v21 + 69) = sub_1000065B8();

  if (IsAppleInternalBuild())
  {
    v48 = 0x6172615074736574;
    v49 = 0xEA0000000000736DLL;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v22 = sub_100053B3C(aBlock), (v23 & 1) != 0))
    {
      sub_10000EA58(*(a1 + 56) + 32 * v22, v50);
      sub_10000EA04(aBlock);
      if (swift_dynamicCast())
      {
        v24 = v48;
        v25 = v49;
LABEL_16:
        if (qword_100101608 != -1)
        {
          v44 = v24;
          swift_once();
          v24 = v44;
        }

        sub_10003BE34(v24, v25);

        sub_10003D768(a1);
        goto LABEL_19;
      }
    }

    else
    {
      sub_10000EA04(aBlock);
    }

    v24 = 0;
    v25 = 0xE000000000000000;
    goto LABEL_16;
  }

LABEL_19:

  v26 = [objc_allocWithZone(HDSSetupSession) init];
  v2[10] = v26;
  type metadata accessor for HomePodSetupPreAuthFetcher();
  swift_allocObject();
  v27 = v26;
  v28 = sub_100014370(v27);

  v2[16] = v28;
  v29 = swift_allocObject();
  swift_weakInit();

  sub_100013918(sub_1000B3E1C, v29);

  v30 = [objc_allocWithZone(SFDevice) init];
  (*(v6 + 16))(v8, v2[6] + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceIdentifier, v5);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  [v30 setIdentifier:isa];

  [v30 setOsVersion:*(v2[6] + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_osVersion)];
  [v30 setDeviceModelCode:*(v2[6] + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode)];
  sub_1000A3D58(v30);
  [v2[10] preflight];
  if (IsAppleInternalBuild())
  {
    if (*(v2[6] + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoCounterpartColor))
    {
      LOBYTE(aBlock[0]) = *(v2[6] + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoCounterpartColor);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      sub_1000A5B90(v32, v33);
    }

    if (qword_100101608 != -1)
    {
      swift_once();
    }

    v34 = *(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_forcedPasscode + 8);
    v35 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v35 = *(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_forcedPasscode) & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {
      v36 = v2[10];

      v37 = String._bridgeToObjectiveC()();

      [v36 forcePassCode:v37];
    }
  }

  v38 = v2[21];
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = v38;

  v41 = swift_allocObject();
  v42 = v46;
  *(v41 + 16) = v39;
  *(v41 + 24) = v42;
  aBlock[4] = sub_1000B3E5C;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A3260;
  aBlock[3] = &unk_1000F2430;
  v43 = _Block_copy(aBlock);

  [v40 serviceEnabled:v43];
  _Block_release(v43);

  return v2;
}

uint64_t sub_1000A3BD8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v28 = v8;
    v29 = v7;
    v11 = v5;
    v12 = v3;
    v13 = *(Strong + 48);
    v14 = v6;
    v15 = v4;

    v16 = (v13 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation);
    v17 = *(v13 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation);
    v26 = *(v13 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 16);
    v27 = *(v13 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 8);
    v25 = *(v13 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 24);
    v24 = *(v13 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 32);
    v18 = v9;
    v19 = *(v13 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 40);
    *v16 = v12;
    v16[1] = v15;
    v16[2] = v11;
    v16[3] = v14;
    v16[4] = v29;
    v16[5] = v28;
    v16[6] = v18;
    sub_100014634(a1, v30);
    sub_10001466C(v17, v27, v26, v25, v24, v19);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = *(result + 48);

    v22 = a1[1];
    v23 = (v21 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceSerialNumber);
    *v23 = *a1;
    v23[1] = v22;
  }

  return result;
}

void sub_1000A3D58(uint64_t a1)
{
  v3 = *(v1 + 80);
  sub_10000E6C4(&qword_1001019C8, &unk_1000BD3E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000BD050;
  v176 = 0x734D67697274;
  v177 = 0xE600000000000000;
  v5 = v3;
  AnyHashable.init<A>(_:)();
  v6 = 1000 * *(*(v1 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_triggerSeconds);
  if (v6 == v6)
  {
    *(v4 + 96) = &type metadata for Int32;
    *(v4 + 72) = v6;
    sub_10000D8A8(v4);
    swift_setDeallocating();
    sub_10000EBA4(v4 + 32, &qword_100101970, &unk_1000BC240);
    swift_deallocClassInstance();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v5 setAdditionalMetrics:{isa, v176, v177}];

    [*(v1 + 80) setPeerDevice:a1];
    [*(v1 + 80) setTestFlags:0];
    [*(v1 + 80) setTouchRemoteEnabled:1];
    v8 = *(v1 + 80);
    Strong = swift_unknownObjectWeakLoadStrong();
    [v8 setPresentingViewController:Strong];

    v10 = *(v1 + 80);
    v11 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3E64;
    v181 = v11;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AADC8;
    v179 = &unk_1000F2458;
    v12 = _Block_copy(&v176);
    v13 = v10;

    [v13 setProgressHandler:v12];
    _Block_release(v12);

    v14 = [*(v1 + 80) sysDropSession];
    v15 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3E88;
    v181 = v15;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AADC8;
    v179 = &unk_1000F2480;
    v16 = _Block_copy(&v176);

    [v14 setProgressHandler:v16];
    _Block_release(v16);

    v17 = [*(v1 + 80) sysDropSession];
    v18 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3EAC;
    v181 = v18;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AB1E4;
    v179 = &unk_1000F24A8;
    v19 = _Block_copy(&v176);

    [v17 setSysdropFinishedHandler:v19];
    _Block_release(v19);

    v20 = *(v1 + 80);
    v21 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3EB4;
    v181 = v21;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AB430;
    v179 = &unk_1000F24D0;
    v22 = _Block_copy(&v176);
    v23 = v20;

    [v23 setPromptForAppleMusicHandler:v22];
    _Block_release(v22);

    v24 = *(v1 + 80);
    v25 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3EBC;
    v181 = v25;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AB744;
    v179 = &unk_1000F24F8;
    v26 = _Block_copy(&v176);
    v27 = v24;

    [v27 setPromptForHomeHandler:v26];
    _Block_release(v26);

    v28 = *(v1 + 80);
    v29 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3EC4;
    v181 = v29;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_10007DB0C;
    v179 = &unk_1000F2520;
    v30 = _Block_copy(&v176);
    v31 = v28;

    [v31 setPromptForHomeNameCreationHandler:v30];
    _Block_release(v30);

    v32 = *(v1 + 80);
    v33 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3ECC;
    v181 = v33;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AB1E4;
    v179 = &unk_1000F2548;
    v34 = _Block_copy(&v176);
    v35 = v32;

    [v35 setPromptForHomeInSameLocationHandler:v34];
    _Block_release(v34);

    v36 = *(v1 + 80);
    v37 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3ED4;
    v181 = v37;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2570;
    v38 = _Block_copy(&v176);
    v39 = v36;

    [v39 setPromptForHomeiCloudHandler:v38];
    _Block_release(v38);

    v40 = *(v1 + 80);
    v41 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3F00;
    v181 = v41;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2598;
    v42 = _Block_copy(&v176);
    v43 = v40;

    [v43 setPromptForiTunesSignInHandler:v42];
    _Block_release(v42);

    v44 = *(v1 + 80);
    v45 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3F2C;
    v181 = v45;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000A3260;
    v179 = &unk_1000F25C0;
    v46 = _Block_copy(&v176);
    v47 = v44;

    [v47 setPromptForLocationAlreadyEnabledHandler:v46];
    _Block_release(v46);

    v48 = *(v1 + 80);
    v49 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3F34;
    v181 = v49;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F25E8;
    v50 = _Block_copy(&v176);
    v51 = v48;

    [v51 setPromptForLocationEnableHandler:v50];
    _Block_release(v50);

    v52 = *(v1 + 80);
    v53 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3F60;
    v181 = v53;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2610;
    v54 = _Block_copy(&v176);
    v55 = v52;

    [v55 setPromptForPersonalRequestsHandler:v54];
    _Block_release(v54);

    v56 = *(v1 + 80);
    v57 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3F68;
    v181 = v57;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000ABEEC;
    v179 = &unk_1000F2638;
    v58 = _Block_copy(&v176);
    v59 = v56;

    [v59 setPromptForPINHandler:v58];
    _Block_release(v58);

    v60 = *(v1 + 80);
    v61 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3F70;
    v181 = v61;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AC398;
    v179 = &unk_1000F2660;
    v62 = _Block_copy(&v176);
    v63 = v60;

    [v63 setPromptForRoomHandlerDetailed:v62];
    _Block_release(v62);

    v64 = *(v1 + 80);
    v65 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3F78;
    v181 = v65;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AC72C;
    v179 = &unk_1000F2688;
    v66 = _Block_copy(&v176);
    v67 = v64;

    [v67 setPromptForWiFiPickerHandler:v66];
    _Block_release(v66);

    v68 = *(v1 + 80);
    v69 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3F80;
    v181 = v69;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F26B0;
    v70 = _Block_copy(&v176);
    v71 = v68;

    [v71 setPromptForSiriEnableHandler:v70];
    _Block_release(v70);

    v72 = *(v1 + 80);
    v73 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3F88;
    v181 = v73;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000ACB60;
    v179 = &unk_1000F26D8;
    v74 = _Block_copy(&v176);
    v75 = v72;

    [v75 setPromptForSiriLanguageHandler:v74];
    _Block_release(v74);

    v76 = *(v1 + 80);
    v77 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3F90;
    v181 = v77;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2700;
    v78 = _Block_copy(&v176);
    v79 = v76;

    [v79 setPromptForTermsHandler:v78];
    _Block_release(v78);

    v80 = *(v1 + 80);
    v81 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3FB8;
    v181 = v81;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2728;
    v82 = _Block_copy(&v176);
    v83 = v80;

    [v83 setPromptForTermsAndConditionsV2Disagree:v82];
    _Block_release(v82);

    v84 = *(v1 + 80);
    v85 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3FC0;
    v181 = v85;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2750;
    v86 = _Block_copy(&v176);
    v87 = v84;

    [v87 setPromptForHomePodSoftwareUpdateNonSetupAck:v86];
    _Block_release(v86);

    v88 = *(v1 + 80);
    v89 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3FE8;
    v181 = v89;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2778;
    v90 = _Block_copy(&v176);
    v91 = v88;

    [v91 setPromptForHomePodSoftwareUpdateNonSetupCompleted:v90];
    _Block_release(v90);

    v92 = *(v1 + 80);
    v93 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B4010;
    v181 = v93;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F27A0;
    v94 = _Block_copy(&v176);
    v95 = v92;

    [v95 setPromptForHomePodSoftwareUpdateNonSetupCancelled:v94];
    _Block_release(v94);

    v96 = *(v1 + 80);
    v97 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B4038;
    v181 = v97;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F27C8;
    v98 = _Block_copy(&v176);
    v99 = v96;

    [v99 setPromptForSoundRecognitionHandler:v98];
    _Block_release(v98);

    v100 = *(v1 + 80);
    v101 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B4060;
    v181 = v101;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F27F0;
    v102 = _Block_copy(&v176);
    v103 = v100;

    [v103 setPromptForAutomaticSoftwareUpdateHandler:v102];
    _Block_release(v102);

    v104 = *(v1 + 80);
    v105 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B4088;
    v181 = v105;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2818;
    v106 = _Block_copy(&v176);
    v107 = v104;

    [v107 setPromptForSoftwareUpdateHandler:v106];
    _Block_release(v106);

    v108 = *(v1 + 80);
    v109 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B40B0;
    v181 = v109;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2840;
    v110 = _Block_copy(&v176);
    v111 = v108;

    [v111 setPromptForCaptiveNetworkHandler:v110];
    _Block_release(v110);

    v112 = *(v1 + 80);
    v113 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B40D8;
    v181 = v113;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2868;
    v114 = _Block_copy(&v176);
    v115 = v112;

    [v115 setPromptForTVAudioHandler:v114];
    _Block_release(v114);

    v116 = *(v1 + 80);
    v117 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B4100;
    v181 = v117;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2890;
    v118 = _Block_copy(&v176);
    v119 = v116;

    [v119 setPromptForHH2UpsellHandler:v118];
    _Block_release(v118);

    v120 = *(v1 + 80);
    v121 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B4128;
    v181 = v121;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F28B8;
    v122 = _Block_copy(&v176);
    v123 = v120;

    [v123 setPromptToInstallHomeAppHandler:v122];
    _Block_release(v122);

    v124 = *(v1 + 80);
    v125 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B4154;
    v181 = v125;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000ACFE0;
    v179 = &unk_1000F28E0;
    v126 = _Block_copy(&v176);
    v127 = v124;

    [v127 setPromptToShareSettingsHandler:v126];
    _Block_release(v126);

    v128 = *(v1 + 80);
    v129 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B415C;
    v181 = v129;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2908;
    v130 = _Block_copy(&v176);
    v131 = v128;

    [v131 setPromptForStereoRoleHandler:v130];
    _Block_release(v130);

    v132 = *(v1 + 80);
    v133 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B4164;
    v181 = v133;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AD410;
    v179 = &unk_1000F2930;
    v134 = _Block_copy(&v176);
    v135 = v132;

    [v135 setPromptForStereoMultipleHandler:v134];
    _Block_release(v134);

    v136 = *(v1 + 80);
    v137 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B416C;
    v181 = v137;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000A3260;
    v179 = &unk_1000F2958;
    v138 = _Block_copy(&v176);
    v139 = v136;

    [v139 setPromptForVoiceRecognitionHandler:v138];
    _Block_release(v138);

    v140 = *(v1 + 80);
    v141 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B4174;
    v181 = v141;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2980;
    v142 = _Block_copy(&v176);
    v143 = v140;

    [v143 setPromptForWiFiPasswordHandler:v142];
    _Block_release(v142);

    v144 = *(v1 + 80);
    v145 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B419C;
    v181 = v145;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AD76C;
    v179 = &unk_1000F29A8;
    v146 = _Block_copy(&v176);
    v147 = v144;

    [v147 setPromptForWiFiSummaryHandler:v146];
    _Block_release(v146);

    v148 = *(v1 + 80);
    v149 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B41A4;
    v181 = v149;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AD76C;
    v179 = &unk_1000F29D0;
    v150 = _Block_copy(&v176);
    v151 = v148;

    [v151 setPromptForWiFiFailedHandler:v150];
    _Block_release(v150);

    v152 = *(v1 + 80);
    v153 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B41AC;
    v181 = v153;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000ADB48;
    v179 = &unk_1000F29F8;
    v154 = _Block_copy(&v176);
    v155 = v152;

    [v155 setPromptForSiriVoiceSelectionHandler:v154];
    _Block_release(v154);

    v156 = *(v1 + 80);
    v157 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B41B4;
    v181 = v157;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2A20;
    v158 = _Block_copy(&v176);
    v159 = v156;

    [v159 setPromptForLoggingProfileTransferAck:v158];
    _Block_release(v158);

    v160 = *(v1 + 80);
    v161 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B41DC;
    v181 = v161;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000ADEBC;
    v179 = &unk_1000F2A48;
    v162 = _Block_copy(&v176);
    v163 = v160;

    [v163 setPromptForWiFiSetupComplete:v162];
    _Block_release(v162);

    v164 = *(v1 + 80);
    v165 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B41E4;
    v181 = v165;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AE218;
    v179 = &unk_1000F2A70;
    v166 = _Block_copy(&v176);
    v167 = v164;

    [v167 setPromptForDataAndPrivacyHandler:v166];
    _Block_release(v166);

    v168 = *(v1 + 80);
    v169 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B41EC;
    v181 = v169;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AE598;
    v179 = &unk_1000F2A98;
    v170 = _Block_copy(&v176);
    v171 = v168;

    [v171 setPromptForSetLanguageHandler:v170];
    _Block_release(v170);

    v172 = *(v1 + 80);
    v173 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B41F4;
    v181 = v173;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AB1E4;
    v179 = &unk_1000F2AC0;
    v174 = _Block_copy(&v176);
    v175 = v172;

    [v175 setDeviceColorFoundHandler:v174];
    _Block_release(v174);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000A5B90(uint64_t a1, unint64_t a2)
{
  if (*(*(v2 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode) != 5)
  {
    return;
  }

  v4 = HIBYTE(a2) & 0xF;
  v5 = a1 & 0xFFFFFFFFFFFFLL;
  if (!((a2 & 0x2000000000000000) != 0 ? v4 : a1 & 0xFFFFFFFFFFFFLL))
  {
    return;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v9 = sub_1000B12D4(a1, a2, 10);

    if ((v9 & 0x100) != 0)
    {
      return;
    }

    goto LABEL_64;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    aBlock = a1;
    v40 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (v4)
      {
        if (--v4)
        {
          LOBYTE(v9) = 0;
          v16 = &aBlock + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            if (((10 * v9) & 0xF00) != 0)
            {
              break;
            }

            v9 = (10 * v9) + v17;
            if ((v9 >> 8))
            {
              break;
            }

            ++v16;
            if (!--v4)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_81:
      __break(1u);
      return;
    }

    if (a1 != 45)
    {
      if (v4)
      {
        LOBYTE(v9) = 0;
        p_aBlock = &aBlock;
        while (1)
        {
          v20 = *p_aBlock - 48;
          if (v20 > 9)
          {
            break;
          }

          if (((10 * v9) & 0xF00) != 0)
          {
            break;
          }

          v9 = (10 * v9) + v20;
          if ((v9 >> 8))
          {
            break;
          }

          p_aBlock = (p_aBlock + 1);
          if (!--v4)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    if (v4)
    {
      if (--v4)
      {
        LOBYTE(v9) = 0;
        v12 = &aBlock + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          if (((10 * v9) & 0xF00) != 0)
          {
            break;
          }

          v9 = (10 * v9) - v13;
          if ((v9 & 0xFFFFFF00) != 0)
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_79;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v7 = _StringObject.sharedUTF8.getter();
  }

  v8 = *v7;
  if (v8 == 43)
  {
    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v9 = 0;
        if (v7)
        {
          v14 = v7 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              goto LABEL_62;
            }

            if (((10 * v9) & 0xF00) != 0)
            {
              goto LABEL_62;
            }

            v9 = (10 * v9) + v15;
            if ((v9 >> 8))
            {
              goto LABEL_62;
            }

            ++v14;
            if (!--v4)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_54;
      }

      goto LABEL_62;
    }

    goto LABEL_80;
  }

  if (v8 == 45)
  {
    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v9 = 0;
        if (v7)
        {
          v10 = v7 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_62;
            }

            if (((10 * v9) & 0xF00) != 0)
            {
              goto LABEL_62;
            }

            v9 = (10 * v9) - v11;
            if ((v9 & 0xFFFFFF00) != 0)
            {
              goto LABEL_62;
            }

            ++v10;
            if (!--v4)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_54:
        LOBYTE(v4) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v5)
  {
    v9 = 0;
    if (v7)
    {
      while (1)
      {
        v18 = *v7 - 48;
        if (v18 > 9)
        {
          goto LABEL_62;
        }

        if (((10 * v9) & 0xF00) != 0)
        {
          goto LABEL_62;
        }

        v9 = (10 * v9) + v18;
        if ((v9 >> 8))
        {
          goto LABEL_62;
        }

        ++v7;
        if (!--v5)
        {
          goto LABEL_54;
        }
      }
    }

    goto LABEL_54;
  }

LABEL_62:
  v9 = 0;
  LOBYTE(v4) = 1;
LABEL_63:
  v45[1] = v4;
  if (v4)
  {
    return;
  }

LABEL_64:
  swift_beginAccess();
  if (!sub_1000AFBB0(v9, *(v2 + 152)))
  {
    if ((*(v2 + 160) & 1) == 0)
    {
      *(v2 + 160) = 1;
      [*(v2 + 144) activate];
    }

    v38 = v2;
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100012AAC(v21, qword_100104988);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 16777472;
      v24[4] = v9;
      _os_log_impl(&_mh_execute_header, v22, v23, "Found device with color: %hhu", v24, 5u);
    }

    swift_beginAccess();
    sub_1000B18A8(v45, v9);
    swift_endAccess();
    v25 = [objc_allocWithZone(SFDeviceAssetQuery) initWithSingleHomePodColor:v9 version:5];
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v9;
    *(v27 + 24) = v26;
    v28 = objc_allocWithZone(SFDeviceAssetRequestConfiguration);
    v43 = sub_1000B3DF0;
    v44 = v27;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_1000B0760;
    v42 = &unk_1000F2390;
    v29 = _Block_copy(&aBlock);

    v30 = [v28 initWithQueryResultHandler:v29];
    _Block_release(v29);

    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v9;
    *(v32 + 24) = v31;
    v43 = sub_1000B3DFC;
    v44 = v32;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_1000B06D4;
    v42 = &unk_1000F23E0;
    v33 = _Block_copy(&aBlock);

    [v30 setDownloadCompletionHandler:v33];
    _Block_release(v33);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 16777472;
      v36[4] = v9;
      _os_log_impl(&_mh_execute_header, v34, v35, "Starting single stereo image lookup for %hhu", v36, 5u);
    }

    [*(v38 + 144) getAssetBundleForDeviceQuery:v25 withRequestConfiguration:v30];
  }
}

double sub_1000A6274(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1000A33E8();
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 BOOLForKey:v7];

    if (v8)
    {
      if (qword_100101718 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100012AAC(v9, qword_100104988);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "HomePodSetupInteractor: forceMusicSubscription is true", v12, 2u);
      }

      a1 = 1;
    }

    v13 = *(v5 + 48);

    *(v13 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_subscribedToMusicService) = a1 & 1;
  }

  return result;
}

void sub_1000A640C()
{
  v1 = v0;
  *(v0 + 160) = 1;
  [*(v0 + 144) activate];
  [*(v0 + 80) setPauseAfterPreAuth:0];
  v2 = *(v0 + 80);
  Strong = swift_unknownObjectWeakLoadStrong();
  [v2 setPresentingViewController:Strong];

  [*(v1 + 80) activate];
  v4 = sub_1000A337C();
  [v4 setMeDeviceUseFindMyLocate:1];

  v5 = *(v1 + 64);
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100091194;
  aBlock[3] = &unk_1000F2340;
  v6 = _Block_copy(aBlock);
  v7 = v5;
  [v7 setMeDeviceChangedHandler:v6];
  _Block_release(v6);

  [*(v1 + 64) activateWithCompletion:0];
  if ((*(*(v1 + 48) + 68) & 1) == 0)
  {
    [*(v1 + 80) skipAudioPasscode];
  }

  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100012AAC(v8, qword_100104988);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = sub_1000B08A0(v13, v14, aBlock);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "HomePodSetupInteractor sessionStart device color %s", v11, 0xCu);
    sub_10000E70C(v12);
  }

  LOBYTE(aBlock[0]) = *(*(v1 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceColorCode);
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  sub_1000A5B90(v16, v17);

  sub_1000A8984();
}

uint64_t sub_1000A670C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100104988);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = *(v3 + 80);
    *(v9 + 4) = v11;
    *v10 = v11;
    v12 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "HomePodSetupInteractor: preAuth requested for session: %@", v9, 0xCu);
    sub_10000EBA4(v10, &qword_100101E38, &unk_1000BCF80);
  }

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;

  v15 = sub_100013918(sub_1000B3D54, v14);

  return v15 & 1;
}

uint64_t sub_1000A68EC(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v27 = a1[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + 48);
    v26 = v10;
    v13 = v9;
    v14 = v8;
    v15 = v7;
    v16 = v6;
    v17 = v5;

    v18 = (v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation);
    v19 = *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation);
    v24 = *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 16);
    v25 = *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 8);
    v23 = *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 24);
    v21 = *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 40);
    v22 = *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 32);
    *v18 = v17;
    v18[1] = v16;
    v18[2] = v15;
    v18[3] = v14;
    v18[4] = v13;
    v18[5] = v26;
    v18[6] = v27;
    sub_100014634(a1, v28);
    sub_10001466C(v19, v25, v24, v23, v22, v21);
  }

  return a3(a1);
}

void sub_1000A6A30(uint64_t a1, id **a2)
{
  v3 = v2[6][5];
  if (!v3)
  {
    return;
  }

  v21 = _swiftEmptyArrayStorage;
  if (v3 >> 62)
  {
    goto LABEL_34;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v5)
  {
    v6 = 0;
    v18 = v2;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v7 = *(v3 + v6 + 4);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_4;
      }

      v10 = v5;
      v11 = [v7 name];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v13;

      if (v12 == a1 && v2 == a2)
      {

        v5 = v10;
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v5 = v10;
        if ((v15 & 1) == 0)
        {

          goto LABEL_8;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = &v21;
      specialized ContiguousArray._endMutation()();
LABEL_8:
      ++v6;
      if (v9 == v5)
      {
        v16 = v21;
        v2 = v18;
        goto LABEL_23;
      }
    }
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_23:

  if ((v16 & 0x8000000000000000) != 0 || (v16 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_26;
    }

LABEL_36:

    return;
  }

  if (!v16[2])
  {
    goto LABEL_36;
  }

LABEL_26:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!v16[2])
    {
      __break(1u);
      return;
    }

    v17 = v16[4];
  }

  v20 = v17;

  [v2[10] homeKitSelectHome:v20];
}

void sub_1000A6CC0()
{
  v1 = *(v0 + 80);
  v2 = String._bridgeToObjectiveC()();
  [v1 homeKitSelectRoom:v2];

  v3 = *(v0 + 48);
  v4 = *(v0 + 80);

  v5 = [v4 acceptedMusicTerms];
  *(v3 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_acceptedMusicTerms) = v5;

  v6 = [*(v0 + 80) selectedHome];
  if (v6)
  {
    v7 = v6;
    v8 = *(v0 + 48);

    v9 = [v7 isUpdatedToROAR];
    *(v8 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedHomeIsROAR) = v9;

    v10 = *(v0 + 48);

    v11 = [v7 isLocationServicesEnabled];
    *(v10 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeHasLocationEnabled) = v11;

    v12 = *(v0 + 48);

    *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeHasExistingHomePods) = sub_1000B3A88(v7);

    v13 = *(v0 + 48);

    v14 = [v7 name];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = (v13 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeName);
    *v18 = v15;
    v18[1] = v17;

    v19 = *(v0 + 48);
    if (*(v19 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedHomeIsROAR))
    {
      v20 = 7562585;
    }

    else
    {
      v20 = 28494;
    }

    if (*(v19 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedHomeIsROAR))
    {
      v21 = 0xE300000000000000;
    }

    else
    {
      v21 = 0xE200000000000000;
    }

    if (*(v19 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeHasLocationEnabled))
    {
      v22 = 7562585;
    }

    else
    {
      v22 = 28494;
    }

    if (*(v19 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeHasLocationEnabled))
    {
      v23 = 0xE300000000000000;
    }

    else
    {
      v23 = 0xE200000000000000;
    }

    v24 = *(v19 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeHasExistingHomePods);
    if (v24)
    {
      v25 = 7562585;
    }

    else
    {
      v25 = 28494;
    }

    if (v24)
    {
      v26 = 0xE300000000000000;
    }

    else
    {
      v26 = 0xE200000000000000;
    }

    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100012AAC(v27, qword_100104988);

    oslog = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v29 = 136315650;
      v30 = sub_1000B08A0(v20, v21, &v34);

      *(v29 + 4) = v30;
      *(v29 + 12) = 2080;
      v31 = sub_1000B08A0(v22, v23, &v34);

      *(v29 + 14) = v31;
      *(v29 + 22) = 2080;
      v32 = sub_1000B08A0(v25, v26, &v34);

      *(v29 + 24) = v32;
      _os_log_impl(&_mh_execute_header, oslog, v28, "HomePodSetupInteractor: houseWasSelected isROAR:%s loc:%s hasHomePods:%s", v29, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

id sub_1000A7110(const char *a1, const char **a2)
{
  v5 = v2;
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100104988);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  v10 = *(v5 + 80);
  v11 = *a2;

  return [v10 v11];
}

id sub_1000A7210(char a1)
{
  v2 = v1;
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100012AAC(v4, qword_100104988);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 0x656C62616E65;
    }

    else
    {
      v9 = 0x656C6261736964;
    }

    if (a1)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    v11 = sub_1000B08A0(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "User chose to %s TV Audio", v7, 0xCu);
    sub_10000E70C(v8);
  }

  v12 = *(v2 + 80);

  return [v12 tvAudioEnabled:a1 & 1];
}

id sub_1000A73A8(uint64_t a1)
{
  v2 = v1;
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100012AAC(v4, qword_100104988);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "User chose Siri Voice", v7, 2u);
  }

  v8 = *(v2 + 80);

  return [v8 siriVoicePicked:a1];
}

id sub_1000A74B0()
{
  [*(v0 + 80) invalidate];
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100012AAC(v1, qword_100104988);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "HomePodSetup: 'Hello Siri' trigger re-enabled because cancelDeviceSetup was called.", v4, 2u);
  }

  v5 = objc_opt_self();

  return [v5 requestPhraseSpotterBypassing:0 timeout:0.0];
}

double sub_1000A75C4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  *(*(v1 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoRole) = a1;
  [*(v1 + 80) stereoRolePicked:a1];
  v4 = *(v1 + 48);
  v5 = *(v2 + 80);

  v6 = [v5 stereoCounterpartColor];
  *(v4 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoCounterpartColor) = v6;

  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100012AAC(v7, qword_100104988);

  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = v3;
    *(v9 + 8) = 256;
    *(v9 + 10) = [*(v2 + 80) stereoCounterpartColor];

    _os_log_impl(&_mh_execute_header, oslog, v8, "HomePodSetupInteractor stereoRoleSelected: role = %d | stereoCounterpartColor = %hhu", v9, 0xBu);
  }

  else
  {
  }

  return result;
}

void sub_1000A778C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v8 = (*(v4 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSiriLanguageCode);
  *v8 = a1;
  v8[1] = a2;

  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100012AAC(v9, qword_100104988);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1000B08A0(a3, a4, &v16);
    _os_log_impl(&_mh_execute_header, v10, v11, "HomePodSetupInteractor: siri language: %s", v12, 0xCu);
    sub_10000E70C(v13);
  }

  v14 = *(v5 + 80);
  v15 = String._bridgeToObjectiveC()();
  [v14 siriLanguagePicked:v15];
}

id sub_1000A7984()
{
  v1 = v0;
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100104988);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupInteractor: siriLanguagePicked user selected 'Don't Use Siri'", v5, 2u);
  }

  v6 = *(v1 + 80);

  return [v6 siriLanguagePicked:0];
}

void sub_1000A7A80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 80);

  v5 = [v4 selectedSiriLanguageCode];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = sub_10004DEE8(v7, v9);
  v12 = v11;

  v13 = [objc_opt_self() sharedInstance];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
    v16 = String._bridgeToObjectiveC()();
    v17 = String._bridgeToObjectiveC()();
    v18 = [objc_opt_self() mainBundle];
    v19 = String._bridgeToObjectiveC()();
    v20 = [v15 localizedStringForKey:v16 table:v17 bundle:v18 languageCode:v19];

    if (v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100012AAC(v21, qword_100104988);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315138;

    v26 = sub_1000B08A0(v10, v12, aBlock);

    *(v24 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v22, v23, "HomePodSetup: Speak Pincode with instructions in language %s", v24, 0xCu);
    sub_10000E70C(v25);
  }

  v27 = *(v3 + 80);
  v28 = String._bridgeToObjectiveC()();

  v29 = String._bridgeToObjectiveC()();

  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100091194;
  aBlock[3] = &unk_1000F2200;
  v30 = _Block_copy(aBlock);

  [v27 speakPasscodeWithInstructions:v28 languageCode:v29 completion:v30];
  _Block_release(v30);
}

void sub_1000A7E64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 80);

  v7 = [v6 selectedSiriLanguageCode];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = sub_10004DEE8(v9, v11);
  v14 = v13;

  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100012AAC(v15, qword_100104988);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1000B08A0(v12, v14, v23);
    _os_log_impl(&_mh_execute_header, v16, v17, "HomePodSetup: Speak Pincode in language (%s", v18, 0xCu);
    sub_10000E70C(v19);
  }

  v20 = *(v3 + 80);
  v21 = String._bridgeToObjectiveC()();

  v23[4] = a1;
  v23[5] = a2;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_100091194;
  v23[3] = &unk_1000F21D8;
  v22 = _Block_copy(v23);

  [v20 speakPasscodeWithLanguageCode:v21 completion:v22];
  _Block_release(v22);
}

void sub_1000A80E4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (isInternalBuild())
  {
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100012AAC(v6, qword_100104988);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1000B08A0(a1, a2, &v16);
      _os_log_impl(&_mh_execute_header, v7, v8, "HomePodSetup: Pincode %s was entered.", v9, 0xCu);
      sub_10000E70C(v10);

LABEL_10:
    }
  }

  else
  {
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100012AAC(v11, qword_100104988);
    v7 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, v12, "HomePodSetup: A pincode was entered.", v13, 2u);
      goto LABEL_10;
    }
  }

  v14 = *(v3 + 80);
  v15 = String._bridgeToObjectiveC()();
  [v14 pairSetupTryPIN:v15];
}

id *sub_1000A8320()
{
  sub_100012E5C((v0 + 4));

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_1000A83A0()
{
  sub_1000A8320();

  return swift_deallocClassInstance();
}

uint64_t sub_1000A83F8()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceActionType);
  if (sub_1000B3E08(v3))
  {
    v4 = *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode);
    if (v3 == 11)
    {
      if (*(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode))
      {
        if (qword_100101718 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        sub_100012AAC(v5, qword_100104988);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, v7, "HomePodSetupInteractor: Requires an upgrade becasue Legacy Setup and HomePod mini.", v8, 2u);
        }

        return 1;
      }

      return 0;
    }

    if (v4 < 9 && ((0x161u >> v4) & 1) != 0)
    {
      return 0;
    }

    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100012AAC(v15, qword_100104988);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 16777472;
      v12[4] = *(*(v1 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode);

      v13 = "HomePodSetupInteractor: Requires an upgrade because device %hhu is not known.";
      goto LABEL_20;
    }

LABEL_21:

    return 1;
  }

  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100012AAC(v9, qword_100104988);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v10, v11))
  {
    goto LABEL_21;
  }

  v12 = swift_slowAlloc();
  *v12 = 16777472;
  v12[4] = *(*(v1 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceActionType);

  v13 = "HomePodSetupInteractor: Requires an upgrade becasue setup action %hhu not HomePodSetup.";
LABEL_20:
  _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 5u);

  return 1;
}

uint64_t sub_1000A86D8()
{
  v1 = v0;
  if (qword_100101608 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);

  v3 = sub_10003D3B8(0, v2);
  v5 = v4;

  if (!v5)
  {
    return 70;
  }

  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100104988);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    v11 = sub_10007869C(v3);
    v13 = sub_1000B08A0(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "HomePodSetupInteractor: initialStateBasedOnTesting because testMode / testFlags next screen is: %s ", v9, 0xCu);
    sub_10000E70C(v10);
  }

  *(v1 + 48) = v5;

  return v3;
}

void sub_1000A88B8(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(v4 + 48);
  *(v6 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_allowsRandomVoiceSelection) = a1;
  v7 = (v6 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preferredSiriLanguageCode);
  *v7 = a2;
  v7[1] = a3;

  v8 = *(v4 + 48);
  v10 = *(v8 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_sfSession);
  *(v8 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_sfSession) = a4;

  v9 = a4;
}

void sub_1000A8984()
{
  v1 = *(v0 + 168);

  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();

  v4 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_1000B3D60;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000A3260;
  v6[3] = &unk_1000F2278;
  v5 = _Block_copy(v6);

  [v1 registerDevice:v2 model:v3 callback:v5];
  _Block_release(v5);
}

void sub_1000A8B18(uint64_t a1, char a2)
{
  if (*(v2 + 177))
  {
    return;
  }

  *(v2 + 177) = 1;
  v5 = *(v2 + 80);
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v6 = _convertErrorToNSError(_:)();

    if (*(v2 + 96))
    {
LABEL_4:

      v9 = String._bridgeToObjectiveC()();

      goto LABEL_7;
    }
  }

  else
  {
    v10 = v5;
    if (*(v2 + 96))
    {
      goto LABEL_4;
    }
  }

  v9 = 0;
LABEL_7:
  if (*(v2 + 112))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v2 + 104);
  }

  [v5 logMetricsForDismissal:v6 dismissType:a1 cardName:v9 cardDuration:v11];

  if (a2 != 70)
  {
    if (sub_10007869C(a2) != 0xD00000000000001BLL || 0x80000001000C0C80 != v12)
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_16;
      }

      if (sub_10007869C(a2) != 0x6B63695069666977 || v15 != 0xEA00000000007265)
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          return;
        }

        goto LABEL_16;
      }
    }

LABEL_16:
    v14 = *(v2 + 80);

    [v14 reportMetricsOnWiFiDismissal];
  }
}

void sub_1000A8CFC(int a1)
{
  if ((*(v1 + 176) & 1) == 0)
  {
    *(v1 + 176) = 1;
    LODWORD(v22) = a1;
    dispatch thunk of CustomStringConvertible.description.getter();
    v2 = objc_allocWithZone(NSString);
    v3 = String._bridgeToObjectiveC()();

    v4 = [v2 initWithString:v3];

    sub_1000A83F8();
    sub_10000E6C4(&qword_100104DE0, &qword_1000BF1C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000BF0A0;
    *(inited + 32) = 0x6574656C706D6F63;
    *(inited + 40) = 0xE900000000000064;
    sub_10003AE18(0, &unk_1001036D0, NSNumber_ptr);
    *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(0);
    *(inited + 56) = 0x73736563637573;
    *(inited + 64) = 0xE700000000000000;
    *(inited + 72) = NSNumber.init(BOOLeanLiteral:)(0);
    *(inited + 80) = 0x62614C726F727265;
    *(inited + 88) = 0xEA00000000006C65;
    v6 = objc_allocWithZone(NSString);
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 initWithString:v7];

    *(inited + 96) = v8;
    *(inited + 104) = 0xD000000000000014;
    *(inited + 112) = 0x80000001000C8250;
    *(inited + 120) = v4;
    *(inited + 128) = 0x6D6F44726F727265;
    *(inited + 136) = 0xEB000000006E6961;
    *(inited + 144) = NSOSStatusErrorDomain;
    *(inited + 152) = 0xD000000000000011;
    *(inited + 160) = 0x80000001000C8270;
    v9 = v4;
    v10 = NSOSStatusErrorDomain;
    *(inited + 168) = Bool._bridgeToObjectiveC()();
    strcpy((inited + 176), "setupErrorCode");
    *(inited + 191) = -18;
    *(inited + 192) = Int32._bridgeToObjectiveC()();
    sub_10000E880(inited);
    swift_setDeallocating();
    sub_10000E6C4(&qword_100104DE8, &unk_1000BF1D0);
    swift_arrayDestroy();
    v11 = String._bridgeToObjectiveC()();
    sub_10003AE18(0, &qword_100104DF0, NSObject_ptr);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    sub_10000891C(v11, isa);

    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100012AAC(v13, qword_100104988);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v18 = Dictionary.description.getter();
      v20 = v19;

      v21 = sub_1000B08A0(v18, v20, &v22);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "HomePodSetupInteractor: logRequiresUpdate %s", v16, 0xCu);
      sub_10000E70C(v17);
    }

    else
    {
    }
  }
}

double sub_1000A9170(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    return result;
  }

  v3 = v2;
  sub_1000B4318(a1);
  v145 = String.init(cString:)();
  v7 = v6;
  if (a2)
  {
    v143 = Dictionary.description.getter();
    v9 = v8;
  }

  else
  {
    v9 = 0xE300000000000000;
    v143 = 7104878;
  }

  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100012AAC(v10, qword_100104988);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_1000B08A0(v145, v7, &v147);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1000B08A0(v143, v9, &v147);
    _os_log_impl(&_mh_execute_header, v11, v12, "<loom:ViewService:matchSessionHandleProgress> HomePodSetupInteractor: progressHandler inEvent:%s and info:%s", v13, 0x16u);
    swift_arrayDestroy();
  }

  *(*(v3 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_progressEvent) = a1;
  if (a1 <= 199)
  {
    switch(a1)
    {
      case 20:

        v29 = [*(v3 + 80) bonjourTestState];
        *(*(v3 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_bonjourTestState) = v29;
        v30 = [*(v3 + 80) siriDataSharingEnabled];
        *(*(v3 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_siriDataSharingEnabled) = v30;
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v31, v32))
        {
          goto LABEL_63;
        }

        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "Setup finalized";
        goto LABEL_62;
      case 30:

        if (!a2)
        {
          v149 = 0u;
          v150 = 0u;
          sub_10000EBA4(&v149, &qword_1001036C0, &unk_1000BEE90);
          goto LABEL_133;
        }

        AnyHashable.init<A>(_:)();
        if (*(a2 + 16) && (v35 = sub_100053B3C(&v147), (v36 & 1) != 0))
        {
          sub_10000EA58(*(a2 + 56) + 32 * v35, &v149);
          sub_10000EA04(&v147);
          if (*(&v150 + 1))
          {
            if (swift_dynamicCast())
            {
              v37 = v148;
              v38 = (*(v3 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSSID);
              *v38 = v147;
              v38[1] = v37;
            }

            goto LABEL_114;
          }
        }

        else
        {
          sub_10000EA04(&v147);
          v149 = 0u;
          v150 = 0u;
        }

        sub_10000EBA4(&v149, &qword_1001036C0, &unk_1000BEE90);
LABEL_114:
        AnyHashable.init<A>(_:)();
        if (*(a2 + 16))
        {
          v95 = sub_100053B3C(&v147);
          if (v96)
          {
            sub_10000EA58(*(a2 + 56) + 32 * v95, &v149);
            sub_10000EA04(&v147);
            if (*(&v150 + 1))
            {
              sub_10003AE18(0, &qword_100104E08, NSError_ptr);
              if ((swift_dynamicCast() & 1) == 0)
              {
                return result;
              }

              v97 = v10;
              v98 = v147;
              v99 = *(v3 + 16);
              *(v3 + 16) = v147;
              v100 = v98;

              v101 = v100;
              v102 = Logger.logObject.getter();
              v103 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v102, v103))
              {
                v104 = swift_slowAlloc();
                v105 = swift_slowAlloc();
                *v104 = 138412290;
                *(v104 + 4) = v101;
                *v105 = v98;
                v106 = v101;
                _os_log_impl(&_mh_execute_header, v102, v103, "### Setup failed: %@", v104, 0xCu);
                sub_10000EBA4(v105, &qword_100101E38, &unk_1000BCF80);
              }

              v107 = v101;
              v108 = _convertErrorToNSError(_:)();

              v109 = NSErrorToOSStatus();
              AnyHashable.init<A>(_:)();
              if (*(a2 + 16) && (v110 = sub_100053B3C(&v147), (v111 & 1) != 0))
              {
                sub_10000EA58(*(a2 + 56) + 32 * v110, &v149);
                sub_10000EA04(&v147);
                if (*(&v150 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    v144 = v147;
                    v146 = v3;
                    Strong = swift_unknownObjectWeakLoadStrong();
                    if (!Strong)
                    {

LABEL_166:
                      *(v146 + 164) = v109;
                      return result;
                    }

                    v113 = Strong;
                    v142 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_finalScreenOfSetupFlowDisplayed;
                    if (*(Strong + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_finalScreenOfSetupFlowDisplayed) == 1)
                    {
                      if (qword_1001016D0 != -1)
                      {
                        swift_once();
                      }

                      sub_100012AAC(v97, qword_100103DD0);
                      v114 = Logger.logObject.getter();
                      v115 = static os_log_type_t.debug.getter();
                      if (os_log_type_enabled(v114, v115))
                      {
                        v116 = swift_slowAlloc();
                        *v116 = 67109120;
                        *(v116 + 4) = v109;
                        _os_log_impl(&_mh_execute_header, v114, v115, "HomePodSetupPresenter: didUpdateStatus called with a new status %d after final screen.", v116, 8u);
                      }

                      goto LABEL_165;
                    }

                    if (qword_1001016D0 != -1)
                    {
                      swift_once();
                    }

                    sub_100012AAC(v97, qword_100103DD0);
                    v131 = Logger.logObject.getter();
                    v132 = static os_log_type_t.default.getter();
                    if (os_log_type_enabled(v131, v132))
                    {
                      v133 = swift_slowAlloc();
                      v134 = swift_slowAlloc();
                      v147 = v134;
                      *v133 = 67109378;
                      *(v133 + 4) = v109;
                      *(v133 + 8) = 2080;
                      *(v133 + 10) = sub_1000B08A0(1702195828, 0xE400000000000000, &v147);
                      _os_log_impl(&_mh_execute_header, v131, v132, "<loom:ViewService:matchHomePodSetupPresenterProgress> HomePodSetupPresenter: Interactor called with a new status %d and final: %s", v133, 0x12u);
                      sub_10000E70C(v134);
                    }

                    v135 = *(v146 + 48);
                    *(v135 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_status) = v109;
                    v136 = *(v135 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_error);
                    *(v135 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_error) = v98;
                    v114 = v107;

                    if (v144 == 1)
                    {
                      AnyHashable.init<A>(_:)();
                      if (*(a2 + 16) && (v137 = sub_100053B3C(&v147), (v138 & 1) != 0))
                      {
                        sub_10000EA58(*(a2 + 56) + 32 * v137, &v149);
                        sub_10000EA04(&v147);
                        if (*(&v150 + 1))
                        {
                          if (swift_dynamicCast())
                          {
                            v139 = v148;
                            v140 = (*(v146 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_errorSSID);
                            *v140 = v147;
                            v140[1] = v139;
                          }

                          goto LABEL_164;
                        }
                      }

                      else
                      {
                        sub_10000EA04(&v147);
                        v149 = 0u;
                        v150 = 0u;
                      }

                      sub_10000EBA4(&v149, &qword_1001036C0, &unk_1000BEE90);
                    }

LABEL_164:
                    *(*(v146 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_errorCardType) = v144;
                    *(v113 + v142) = 1;
                    v141 = sub_100081B50(v109);
                    sub_10007E65C(v141);
LABEL_165:

                    swift_unknownObjectRelease();
                    goto LABEL_166;
                  }

LABEL_137:
                  v117 = swift_unknownObjectWeakLoadStrong();
                  if (v117)
                  {
                    v118 = v117;
                    v119 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_finalScreenOfSetupFlowDisplayed;
                    if (*(v117 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_finalScreenOfSetupFlowDisplayed) == 1)
                    {
                      if (qword_1001016D0 != -1)
                      {
                        swift_once();
                      }

                      sub_100012AAC(v97, qword_100103DD0);
                      v120 = Logger.logObject.getter();
                      v121 = static os_log_type_t.debug.getter();
                      if (os_log_type_enabled(v120, v121))
                      {
                        v122 = swift_slowAlloc();
                        *v122 = 67109120;
                        *(v122 + 4) = v109;
                        _os_log_impl(&_mh_execute_header, v120, v121, "HomePodSetupPresenter: didUpdateStatus called with a new status %d after final screen.", v122, 8u);
                      }
                    }

                    else
                    {
                      if (qword_1001016D0 != -1)
                      {
                        swift_once();
                      }

                      sub_100012AAC(v97, qword_100103DD0);
                      v123 = Logger.logObject.getter();
                      v124 = static os_log_type_t.default.getter();
                      if (os_log_type_enabled(v123, v124))
                      {
                        v125 = swift_slowAlloc();
                        v126 = v3;
                        v127 = swift_slowAlloc();
                        v147 = v127;
                        *v125 = 67109378;
                        *(v125 + 4) = v109;
                        *(v125 + 8) = 2080;
                        *(v125 + 10) = sub_1000B08A0(1702195828, 0xE400000000000000, &v147);
                        _os_log_impl(&_mh_execute_header, v123, v124, "<loom:ViewService:matchHomePodSetupPresenterProgress> HomePodSetupPresenter: Interactor called with a new status %d and final: %s", v125, 0x12u);
                        sub_10000E70C(v127);
                        v3 = v126;
                      }

                      v128 = *(v3 + 48);
                      *(v128 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_status) = v109;
                      v129 = *(v128 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_error);
                      *(v128 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_error) = v98;
                      v120 = v107;

                      *(v118 + v119) = 1;
                      v130 = sub_100081B50(v109);
                      sub_10007E65C(v130);
                    }

                    swift_unknownObjectRelease();
                    *(v3 + 164) = v109;
                  }

                  else
                  {

                    *(v3 + 164) = v109;
                  }

                  return result;
                }
              }

              else
              {
                sub_10000EA04(&v147);
                v149 = 0u;
                v150 = 0u;
              }

              sub_10000EBA4(&v149, &qword_1001036C0, &unk_1000BEE90);
              goto LABEL_137;
            }

LABEL_134:
            sub_10000EBA4(&v149, &qword_1001036C0, &unk_1000BEE90);
            return result;
          }
        }

        sub_10000EA04(&v147);
LABEL_133:
        v149 = 0u;
        v150 = 0u;
        goto LABEL_134;
      case 40:
      case 60:
      case 124:
        goto LABEL_34;
      case 50:
        [*(v3 + 80) homePodProductVersion];

        v58 = String.init(cString:)();
        v60 = v59;
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v64 = swift_slowAlloc();
          v65 = v3;
          v66 = swift_slowAlloc();
          v147 = v66;
          *v64 = 136315138;
          v67 = sub_1000B08A0(v58, v60, &v147);

          *(v64 + 4) = v67;
          _os_log_impl(&_mh_execute_header, v61, v62, "HomePodSetupInteractor sessionHandleProgress: setting homePodProductVersion = %s", v64, 0xCu);
          sub_10000E70C(v66);
          v3 = v65;
        }

        else
        {
        }

        v68 = *(v3 + 48);
        v69 = *(v3 + 80);

        v70 = [v69 homePodProductVersion];
        *(v68 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homePodProductVersion) = v70;

        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 67109120;
          *(v73 + 4) = [*(v3 + 80) forceSoftwareUpdateForADP];

          _os_log_impl(&_mh_execute_header, v71, v72, "HomePodSetupInteractor sessionHandleProgress: setting forcedADPSoftwareUpdate = %{BOOL}d", v73, 8u);
        }

        else
        {
        }

        v74 = *(v3 + 48);
        v75 = *(v3 + 80);

        v76 = [v75 forceSoftwareUpdateForADP];
        *(v74 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_forcedADPSoftwareUpdate) = v76;

        return result;
      case 55:

        if (!swift_unknownObjectWeakLoadStrong())
        {
          return result;
        }

        v28 = 18;
        goto LABEL_75;
      case 70:

        *(v3 + 56) = 1;
        return result;
      case 80:

        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 67109120;
          *(v49 + 4) = [*(v3 + 80) userOptedToHH2];

          _os_log_impl(&_mh_execute_header, v47, v48, "HomePodSetupInteractor sessionHandleProgress: setting homePodProductVersion = %{BOOL}d", v49, 8u);
        }

        else
        {
        }

        v77 = *(v3 + 48);
        v78 = *(v3 + 80);

        v79 = [v78 userOptedToHH2];
        *(v77 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_isHomeInHH2) = v79;

        [*(v3 + 80) homePodSUState];
        v80 = String.init(cString:)();
        v82 = v81;
        v83 = [*(v3 + 80) homePodProductVersion];

        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v84, v85))
        {
          v86 = v3;
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v147 = v88;
          *v87 = 136315138;
          v89 = sub_1000B08A0(v80, v82, &v147);

          *(v87 + 4) = v89;
          _os_log_impl(&_mh_execute_header, v84, v85, "HomePodSetupInteractor sessionHandleProgress: setting showHomepodSoftwareUpdate = %s", v87, 0xCu);
          sub_10000E70C(v88);

          v3 = v86;
        }

        else
        {
        }

        *(*(v3 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_showHomepodSoftwareUpdate) = v83 == 1;

        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v147 = v93;
          *v92 = 136315138;
          v94 = sub_1000B08A0(v145, v7, &v147);

          *(v92 + 4) = v94;
          _os_log_impl(&_mh_execute_header, v90, v91, "HomePodSetupInteractor sessionHandleProgress: setting up event = %s", v92, 0xCu);
          sub_10000E70C(v93);
        }

        else
        {
        }

        v17 = 80;
        goto LABEL_39;
      case 96:

        v39 = [*(v3 + 80) bonjourTestState];
        *(*(v3 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_bonjourTestState) = v39;
        v40 = [*(v3 + 80) siriDataSharingEnabled];
        *(*(v3 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_siriDataSharingEnabled) = v40;
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v31, v32))
        {
          goto LABEL_63;
        }

        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "Setup completed";
LABEL_62:
        _os_log_impl(&_mh_execute_header, v31, v32, v34, v33, 2u);

LABEL_63:

        v41 = swift_unknownObjectWeakLoadStrong();
        if (v41)
        {
          v42 = v41;
          v43 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_finalScreenOfSetupFlowDisplayed;
          if (*(v41 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_finalScreenOfSetupFlowDisplayed) == 1)
          {
            if (qword_1001016D0 != -1)
            {
              swift_once();
            }

            sub_100012AAC(v10, qword_100103DD0);
            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              *v46 = 67109120;
              _os_log_impl(&_mh_execute_header, v44, v45, "HomePodSetupPresenter: didUpdateStatus called with a new status %d after final screen.", v46, 8u);
            }

            swift_unknownObjectRelease();
          }

          else
          {
            if (qword_1001016D0 != -1)
            {
              swift_once();
            }

            sub_100012AAC(v10, qword_100103DD0);
            v50 = Logger.logObject.getter();
            v51 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v50, v51))
            {
              v52 = swift_slowAlloc();
              v53 = swift_slowAlloc();
              v147 = v53;
              *v52 = 67109378;
              *(v52 + 8) = 2080;
              *(v52 + 10) = sub_1000B08A0(1702195828, 0xE400000000000000, &v147);
              _os_log_impl(&_mh_execute_header, v50, v51, "<loom:ViewService:matchHomePodSetupPresenterProgress> HomePodSetupPresenter: Interactor called with a new status %d and final: %s", v52, 0x12u);
              sub_10000E70C(v53);
            }

            v54 = *(v3 + 48);
            *(v54 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_status) = 0;
            v55 = *(v54 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_error);
            *(v54 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_error) = 0;

            *(v42 + v43) = 1;

            v56 = sub_10004B0F0();

            if (v56)
            {
              v57 = 52;
            }

            else
            {
              v57 = 49;
            }

            sub_10007E65C(v57);
            swift_unknownObjectRelease();
          }
        }

        sub_1000AED38();
        return result;
      case 120:
      case 122:
        goto LABEL_18;
      case 140:

        if (!swift_unknownObjectWeakLoadStrong())
        {
          return result;
        }

        v28 = 25;
        goto LABEL_75;
      case 150:

        if (!swift_unknownObjectWeakLoadStrong())
        {
          return result;
        }

        v28 = 12;
LABEL_75:
        sub_10007E65C(v28);
        goto LABEL_76;
      default:
        goto LABEL_24;
    }
  }

  if (a1 > 900)
  {
    if (a1 > 908)
    {
      if ((a1 - 912) < 2)
      {
        goto LABEL_34;
      }

      if (a1 == 909)
      {

        v19 = "HomePodSetupInteractor: updateProgressForSysDropRPFileTransferProgress event:%u";
        v20 = sub_1000B3164;
        v21 = 909;
      }

      else
      {
        if (a1 != 910)
        {
          goto LABEL_24;
        }

        v19 = "HomePodSetupInteractor: updateProgressForSysDropRPFileTransferProgress event:%u";
        v20 = sub_1000B3164;
        v21 = 910;
      }
    }

    else if (a1 <= 905)
    {
      if (a1 != 901 && a1 != 905)
      {
        goto LABEL_24;
      }

      v19 = "HomePodSetupInteractor: updateProgressForHomePodSU event:%u";
      v20 = sub_1000B2350;
      v21 = a1;
    }

    else if (a1 == 906)
    {

      v19 = "HomePodSetupInteractor: updateProgressForSysDropAirDrop event:%u";
      v20 = sub_1000B27AC;
      v21 = 906;
    }

    else
    {
      if (a1 != 907)
      {
        goto LABEL_24;
      }

      v19 = "HomePodSetupInteractor: updateProgressForSysDropSysdiagnose event:%u";
      v20 = sub_1000B2D1C;
      v21 = 907;
    }

    sub_1000AEF40(v21, a2, v19, v20);
    return result;
  }

  if (a1 <= 499)
  {
    v14 = (a1 - 200);
    if (v14 <= 0x32)
    {
      if (((1 << (a1 + 56)) & 0x400100401) == 0)
      {
        if (v14 != 30)
        {
          if (v14 == 50)
          {

            v15 = [*(v3 + 80) bonjourTestState];
            *(*(v3 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_bonjourTestState) = v15;
            v16 = [*(v3 + 80) siriDataSharingEnabled];
            *(*(v3 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_siriDataSharingEnabled) = v16;
            v17 = 250;
LABEL_39:

            sub_1000AEE04(v17);
            return result;
          }

          goto LABEL_24;
        }

LABEL_18:

        if (*(*(v3 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_progressDetail) != 1)
        {
          return result;
        }

LABEL_38:
        v17 = a1;
        goto LABEL_39;
      }

LABEL_34:

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v147 = v25;
        *v24 = 136315138;
        v26 = sub_1000B08A0(v145, v7, &v147);

        *(v24 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v22, v23, "HomePodSetupInteractor sessionHandleProgress: setting up event = %s", v24, 0xCu);
        sub_10000E70C(v25);
      }

      else
      {
      }

      goto LABEL_38;
    }

LABEL_24:

    return result;
  }

  if (a1 != 500 && a1 != 510)
  {
    if (a1 == 900)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    sub_100081FB0(v3, a1, a2, v27);
LABEL_76:

    swift_unknownObjectRelease();
  }

  return result;
}