void sub_10007655C(unint64_t a1)
{
  v125 = type metadata accessor for DispatchWorkItemFlags();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v122 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for DispatchQoS();
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v120 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100072B00();
  v6 = sub_100091230(a1, v5);

  v7 = *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_captureDevice);
  v127 = v1;
  *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_captureDevice) = v6;
  v8 = v6;

  if (!v6)
  {
    goto LABEL_129;
  }

  v9 = [a1 outputs];
  sub_10005BBC4(0, &qword_1001D81E0, AVCaptureOutput_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  aBlock = _swiftEmptyArrayStorage;
  v126 = v10;
  if (v10 >> 62)
  {
    goto LABEL_110;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v12 = _swiftEmptyArrayStorage;
  v136 = v8;
  v129 = a1;
  if (v11)
  {
    v13 = 0;
    v132 = v126 & 0xFFFFFFFFFFFFFF8;
    v133 = v126 & 0xC000000000000001;
    v130 = v126 + 32;
    v131 = AVMediaTypeVideo;
    v128 = v11;
    while (1)
    {
      while (1)
      {
        if (v133)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *(v132 + 16))
          {
            goto LABEL_107;
          }

          v14 = *(v130 + 8 * v13);
        }

        v15 = v14;
        if (__OFADD__(v13++, 1))
        {
          goto LABEL_106;
        }

        v17 = [v14 connectionWithMediaType:v131];
        if (v17)
        {
          break;
        }

        if (v13 == v11)
        {
          goto LABEL_37;
        }
      }

      v134 = v15;
      v135 = v13;
      v18 = v17;
      v19 = [v17 inputPorts];

      sub_10005BBC4(0, &qword_1001D81E8, AVCaptureInputPort_ptr);
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v20 >> 62))
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          break;
        }

        goto LABEL_35;
      }

      v21 = _CocoaArrayWrapper.endIndex.getter();
      if (v21)
      {
        break;
      }

LABEL_35:

LABEL_36:
      a1 = v129;
      v11 = v128;
      v13 = v135;
      if (v135 == v128)
      {
LABEL_37:
        v12 = aBlock;
        goto LABEL_38;
      }
    }

    a1 = 0;
    v137 = v20 & 0xFFFFFFFFFFFFFF8;
    v138 = v20 & 0xC000000000000001;
    while (1)
    {
      if (v138)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a1 >= *(v137 + 16))
        {
          goto LABEL_105;
        }

        v22 = *(v20 + 8 * a1 + 32);
      }

      v23 = v22;
      v24 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        v11 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_4;
      }

      v25 = [v22 sourceDeviceType];
      v26 = [v8 deviceType];
      v27 = v26;
      if (!v25)
      {
        break;
      }

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
      if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
      {

        v8 = v136;
      }

      else
      {
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v8 = v136;
        if ((v33 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v34 = [v23 sourceDevicePosition];
      v35 = [v8 position];

      if (v34 == v35)
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_36;
      }

LABEL_17:
      ++a1;
      if (v24 == v21)
      {
        goto LABEL_35;
      }
    }

LABEL_16:
    goto LABEL_17;
  }

LABEL_38:

  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
    v36 = _CocoaArrayWrapper.endIndex.getter();
    if (v36)
    {
LABEL_41:
      v37 = 0;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v37 >= v12[2])
          {
            goto LABEL_109;
          }

          v38 = v12[v37 + 4];
        }

        v39 = v38;
        v8 = (v37 + 1);
        if (__OFADD__(v37, 1))
        {
          goto LABEL_108;
        }

        objc_opt_self();
        v40 = swift_dynamicCastObjCClass();
        if (v40)
        {
          v41 = v40;
          [v40 setMaxPhotoQualityPrioritization:3];
          v138 = *(v127 + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
          v42 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v43 = swift_allocObject();
          *(v43 + 16) = v42;
          *(v43 + 24) = v41;
          v145 = sub_100092E8C;
          v146 = v43;
          aBlock = _NSConcreteStackBlock;
          v142 = 1107296256;
          v143 = sub_1000B5F04;
          v144 = &unk_1001C27A8;
          v44 = _Block_copy(&aBlock);

          v45 = v39;
          v46 = v120;
          static DispatchQoS.unspecified.getter();
          v140 = _swiftEmptyArrayStorage;
          sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
          sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
          v47 = v122;
          v48 = v125;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v44);

          v49 = v47;
          a1 = v129;
          (*(v124 + 8))(v49, v48);
          (*(v121 + 8))(v46, v123);

          break;
        }

        ++v37;
      }

      while (v8 != v36);
    }
  }

  else
  {
    v36 = v12[2];
    if (v36)
    {
      goto LABEL_41;
    }
  }

  v50 = v136;
  sub_10007822C(a1, v136);
  v51 = [v50 deviceType];
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;
  if (v52 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v54 != v55)
  {
    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v56)
    {

      goto LABEL_56;
    }

    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;
    if (v58 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v60 == v61)
    {
      goto LABEL_59;
    }

    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v62 & 1) == 0)
    {
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;
      if (v63 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v65 == v66)
      {
LABEL_59:

LABEL_65:
        v68 = [v136 virtualDeviceSwitchOverVideoZoomFactors];
        sub_10005BBC4(0, &qword_1001D81C0, NSNumber_ptr);
        v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;
        if (v69 >> 62)
        {
          goto LABEL_125;
        }

        if (!*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_126;
        }

        goto LABEL_67;
      }

      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v67 & 1) == 0)
      {
        goto LABEL_129;
      }
    }

    goto LABEL_65;
  }

LABEL_56:
  v57 = 1.0;
  while (1)
  {
    v74 = v127;
    *(v127 + OBJC_IVAR____TtC6Tamale14ARCameraSource_minimumZoomFactor) = v57;
    v75 = OBJC_IVAR____TtC6Tamale14ARCameraSource_minimumZoomFactor;
    v76 = OBJC_IVAR____TtC6Tamale14ARCameraSource_targetZoomFactor;
    *(v74 + OBJC_IVAR____TtC6Tamale14ARCameraSource_targetZoomFactor) = v57;
    v77 = v74 + OBJC_IVAR____TtC6Tamale14ARCameraSource_configuration;
    swift_beginAccess();
    v78 = *(v77 + *(type metadata accessor for CameraControllerConfiguration(0) + 44)) - 1;
    v79 = [v136 deviceType];
    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;
    v85 = v80 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v82 == v83;
    if (v78 <= 1)
    {
      if (v85)
      {

LABEL_83:
        v68 = [v136 virtualDeviceSwitchOverVideoZoomFactors];
        sub_10005BBC4(0, &qword_1001D81C0, NSNumber_ptr);
        v87 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v87;
        if (v87 >> 62)
        {
          v88 = _CocoaArrayWrapper.endIndex.getter();
          if (v88)
          {
LABEL_85:

            v89 = v88 - 1;
            if (__OFSUB__(v88, 1))
            {
              goto LABEL_117;
            }

            if ((v70 & 0xC000000000000001) != 0)
            {
              goto LABEL_119;
            }

            v90 = v136;
            if ((v89 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_122:
              __break(1u);
            }

            else if (v89 < *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v91 = *(v70 + 8 * v89 + 32);
LABEL_90:

              [v91 doubleValue];
              v93 = v92;

              v94 = v93 * 3.0;
              goto LABEL_103;
            }

            __break(1u);
            goto LABEL_124;
          }
        }

        else
        {
          v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v88)
          {
            goto LABEL_85;
          }
        }

        __break(1u);
        goto LABEL_115;
      }

      v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v86)
      {
        goto LABEL_83;
      }

      v102 = *(v127 + v75);
      v103 = 6.0;
LABEL_102:
      v94 = v102 * v103;
      v90 = v136;
      goto LABEL_103;
    }

    if (v85)
    {
    }

    else
    {
      v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v95 & 1) == 0)
      {

        v102 = *(v127 + v75);
        v103 = 3.0;
        goto LABEL_102;
      }
    }

    v68 = [v136 virtualDeviceSwitchOverVideoZoomFactors];
    sub_10005BBC4(0, &qword_1001D81C0, NSNumber_ptr);
    v96 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v96;
    if (!(v96 >> 62))
    {
      v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v97)
      {
        goto LABEL_116;
      }

      goto LABEL_94;
    }

LABEL_115:
    v97 = _CocoaArrayWrapper.endIndex.getter();
    if (!v97)
    {
LABEL_116:

      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v90 = v136;
      goto LABEL_90;
    }

LABEL_94:

    v98 = v97 - 1;
    if (__OFSUB__(v97, 1))
    {
      goto LABEL_118;
    }

    if ((v70 & 0xC000000000000001) != 0)
    {
      break;
    }

    v90 = v136;
    if ((v98 & 0x8000000000000000) != 0)
    {
      goto LABEL_122;
    }

    if (v98 < *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v99 = *(v70 + 8 * v98 + 32);
      goto LABEL_99;
    }

LABEL_124:
    __break(1u);
LABEL_125:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_126:

      __break(1u);
      goto LABEL_127;
    }

LABEL_67:

    if ((v70 & 0xC000000000000001) == 0)
    {
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v71 = *(v70 + 32);
        goto LABEL_70;
      }

      __break(1u);
      while (1)
      {
LABEL_129:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

LABEL_127:
    v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_70:
    v72 = v71;

    [v72 doubleValue];
    v57 = v73;
  }

  v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v90 = v136;
LABEL_99:

  [v99 doubleValue];
  v101 = v100;

  v94 = v101;
LABEL_103:
  v104 = v127;
  *(v127 + OBJC_IVAR____TtC6Tamale14ARCameraSource_maximumZoomFactor) = v94;
  [v90 setMaxAvailableVideoZoomFactorOverride:?];
  sub_10007C870(0, *(v104 + v76));
  sub_10007BD28(a1, v90);
  aBlock = v90;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v105 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v106 = *(v104 + OBJC_IVAR____TtC6Tamale14ARCameraSource_systemPressureObservation);
  *(v104 + OBJC_IVAR____TtC6Tamale14ARCameraSource_systemPressureObservation) = v105;

  [a1 setAutomaticallyRunsDeferredStart:0];
  v107 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v108 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v109 = swift_allocObject();
  *(v109 + 16) = v107;
  *(v109 + 24) = v108;
  v110 = [v90 activeFormat];
  v111 = [v110 formatDescription];

  Dimensions = CMVideoFormatDescriptionGetDimensions(v111);
  v138 = *(v104 + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
  v113 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v114 = swift_allocObject();
  v114[2] = v113;
  v114[3] = Dimensions;
  v114[4] = sub_100092F78;
  v114[5] = v109;
  v145 = sub_100092FC0;
  v146 = v114;
  aBlock = _NSConcreteStackBlock;
  v142 = 1107296256;
  v143 = sub_1000B5F04;
  v144 = &unk_1001C2848;
  v115 = _Block_copy(&aBlock);

  v116 = v120;
  static DispatchQoS.unspecified.getter();
  v139 = _swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
  v117 = v90;
  v118 = v122;
  v119 = v125;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v115);

  (*(v124 + 8))(v118, v119);
  (*(v121 + 8))(v116, v123);
}

uint64_t sub_1000777C4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_10007786C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v23 = v8;
    sub_1000033A8(&qword_1001D8208, &qword_100177280);
    NSKeyValueObservedChange.newValue.getter();
    v13 = aBlock[0];
    if (aBlock[0])
    {
      v22 = *&v12[OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue];
      v14 = swift_allocObject();
      v21 = v4;
      v15 = v14;
      swift_beginAccess();
      v16 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v17 = swift_allocObject();
      *(v17 + 16) = v15;
      *(v17 + 24) = v13;
      aBlock[4] = sub_10009300C;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000B5F04;
      aBlock[3] = &unk_1001C2898;
      v18 = _Block_copy(aBlock);

      v20 = v13;
      static DispatchQoS.unspecified.getter();
      v24 = _swiftEmptyArrayStorage;
      sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v19 = v7;
      sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
      sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v18);

      (*(v21 + 8))(v6, v3);
      (*(v23 + 8))(v10, v19);
    }

    else
    {
    }
  }
}

void sub_100077C14(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_systemPressureLevel) = sub_100077C78();
  }
}

uint64_t sub_100077C78()
{
  v1 = [v0 level];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    return 0;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {

    return 0;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {

    return 1;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {

    return 1;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    return 2;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {

    return 2;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
    goto LABEL_23;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {

    return 3;
  }

  else
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
    if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
    {
LABEL_23:

      return 3;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

void sub_100077F4C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = *&v7[OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue];
      *v5 = v10;
      (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
      v11 = v10;
      LOBYTE(v10) = _dispatchPreconditionTest(_:)();
      (*(v3 + 8))(v5, v2);
      if ((v10 & 1) == 0)
      {
        __break(1u);
        return;
      }

      [v9 runDeferredStartWhenNeeded];

      v7 = v9;
    }
  }
}

void sub_1000780CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    *(Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_sensorOrientedBufferDimensions) = a2;
    if ((*(Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_safeAreaStrategy + 8) & 1) == 0)
    {
      type metadata accessor for CVCoordinator();
      static CVCoordinator.rectWithAspectRatioInsideDimensions(boundingDimensions:cropAspectRatio:)();
      static CVCoordinator.normalizedLocationOfRect(innerRect:outerRect:)();
      v9 = &v8[OBJC_IVAR____TtC6Tamale14ARCameraSource_safeArea];
      *v9 = v10;
      *(v9 + 1) = v11;
      *(v9 + 2) = v12;
      *(v9 + 3) = v13;
    }

    v14 = &v8[OBJC_IVAR____TtC6Tamale14ARCameraSource_synchronizer];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 1);
      ObjectType = swift_getObjectType();
      v17 = *(v15 + 24);

      v17(a3, a4, ObjectType, v15);
      swift_unknownObjectRelease();
    }
  }
}

void sub_10007822C(id a1, id a2)
{
  v99 = type metadata accessor for DispatchWorkItemFlags();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for DispatchQoS();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 outputs];
  sub_10005BBC4(0, &qword_1001D81E0, AVCaptureOutput_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v103 = v7;
  if (v7 >> 62)
  {
LABEL_73:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = &swift_getGenericMetadata_ptr;
  v104 = a1;
  v110 = a2;
  if (!v8)
  {
LABEL_37:

    goto LABEL_41;
  }

  v10 = 0;
  v11 = v103 & 0xC000000000000001;
  v109 = v103 & 0xFFFFFFFFFFFFFF8;
  v108 = v103 + 32;
  v106 = AVMediaTypeMetadataObject;
  v101 = v103 & 0xC000000000000001;
  v102 = v8;
  while (1)
  {
    if (v11)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v109 + 16))
      {
        goto LABEL_71;
      }

      v13 = *(v108 + 8 * v10);
    }

    v12 = v13;
    if (__OFADD__(v10++, 1))
    {
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v15 = [v12 connectionWithMediaType:v106];
      if (v15)
      {
        break;
      }
    }

LABEL_6:

    if (v10 == v8)
    {
      goto LABEL_37;
    }
  }

  v16 = v15;
  v17 = [v15 inputPorts];

  sub_10005BBC4(0, &qword_1001D81E8, AVCaptureInputPort_ptr);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v105 = v10;
  v107 = v12;
  if (!(v18 >> 62))
  {
    a1 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a1)
    {
      goto LABEL_15;
    }

    goto LABEL_5;
  }

  a1 = _CocoaArrayWrapper.endIndex.getter();
  if (!a1)
  {
LABEL_5:

    a1 = v104;
    v10 = v105;
    v9 = &swift_getGenericMetadata_ptr;
    v11 = v101;
    v8 = v102;
    v12 = v107;
    goto LABEL_6;
  }

LABEL_15:
  v19 = 0;
  v111 = v18 & 0xFFFFFFFFFFFFFF8;
  v112 = (v18 & 0xC000000000000001);
  while (1)
  {
    if (v112)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *(v111 + 16))
      {
        goto LABEL_69;
      }

      v20 = *(v18 + 8 * v19 + 32);
    }

    v21 = v20;
    v22 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v23 = [v20 sourceDeviceType];
    v24 = [a2 deviceType];
    v25 = v24;
    if (!v23)
    {

      goto LABEL_17;
    }

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
    if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
    {
      break;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a2 = v110;
    if (v31)
    {
      goto LABEL_31;
    }

LABEL_17:

LABEL_18:
    ++v19;
    if (v22 == a1)
    {
      goto LABEL_5;
    }
  }

  a2 = v110;
LABEL_31:
  v32 = [v21 sourceDevicePosition];
  v33 = [a2 position];

  if (v32 != v33)
  {
    goto LABEL_18;
  }

  v9 = &swift_getGenericMetadata_ptr;
  objc_opt_self();
  v34 = v107;
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    v36 = v35;
    v37 = v34;
    v108 = 0;
    v38 = v36;
    goto LABEL_77;
  }

  a1 = v104;
LABEL_41:
  v36 = [objc_allocWithZone(v9[381]) init];
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
LABEL_65:
    [a1 addOutput:v36];
    v38 = 0;
    v108 = 0;
    goto LABEL_77;
  }

  v39 = v36;
  [a1 addOutputWithNoConnections:v39];
  v40 = [a1 inputs];
  sub_10005BBC4(0, &qword_1001D81F0, AVCaptureInput_ptr);
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = sub_100079024(v41);
  v108 = 0;

  v107 = v39;
  if (!(v42 >> 62))
  {
    v36 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_44;
    }

LABEL_75:

    v36 = v107;

    goto LABEL_76;
  }

  v36 = _CocoaArrayWrapper.endIndex.getter();
  if (!v36)
  {
    goto LABEL_75;
  }

LABEL_44:
  v43 = 0;
  v111 = v42 & 0xFFFFFFFFFFFFFF8;
  v112 = (v42 & 0xC000000000000001);
  v109 = AVMediaTypeMetadataObject;
  while (2)
  {
    if (v112)
    {
      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      a1 = v110;
      a2 = (v43 + 1);
      if (__OFADD__(v43, 1))
      {
        goto LABEL_64;
      }
    }

    else
    {
      a1 = v110;
      if (v43 >= *(v111 + 16))
      {
        goto LABEL_72;
      }

      v44 = *(v42 + 8 * v43 + 32);
      a2 = (v43 + 1);
      if (__OFADD__(v43, 1))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }
    }

    v45 = [v44 sourceDeviceType];
    v46 = [a1 deviceType];
    v47 = v46;
    if (!v45)
    {

      goto LABEL_46;
    }

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;
    if (v48 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v50 != v51)
    {
      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v53)
      {
        goto LABEL_58;
      }

LABEL_46:

      ++v43;
      if (a2 == v36)
      {
        goto LABEL_75;
      }

      continue;
    }

    break;
  }

LABEL_58:
  v54 = [v44 mediaType];
  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;
  if (v55 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v57 != v58)
  {
    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v59)
    {
      goto LABEL_67;
    }

    goto LABEL_46;
  }

LABEL_67:

  sub_1000033A8(&qword_1001D5248, &qword_100172968);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_100176B10;
  *(v60 + 32) = v44;
  v61 = objc_allocWithZone(AVCaptureConnection);
  sub_10005BBC4(0, &qword_1001D81E8, AVCaptureInputPort_ptr);
  v62 = v44;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v36 = v107;
  v64 = [v61 initWithInputPorts:isa output:v107];

  [v104 addConnection:v64];
LABEL_76:
  v38 = 0;
LABEL_77:
  v65 = [v36 metadataObjectTypes];
  if (v65)
  {
    v66 = v65;
    type metadata accessor for ObjectType(0);
    v67 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = [v36 availableMetadataObjectTypes];
    v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock[0] = AVMetadataObjectTypeQRCode;
    __chkstk_darwin(v70);
    *(&v94 - 2) = aBlock;
    LOBYTE(v68) = sub_1000777C4(sub_100092E48, (&v94 - 4), v69);

    if (v68)
    {
      v71 = AVMetadataObjectTypeQRCode;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_100094F60(0, v67[2] + 1, 1, v67);
      }

      v72 = v36;
      v74 = v67[2];
      v73 = v67[3];
      if (v74 >= v73 >> 1)
      {
        v67 = sub_100094F60((v73 > 1), v74 + 1, 1, v67);
      }

      v67[2] = v74 + 1;
      v67[v74 + 4] = v71;
    }

    else
    {
      v72 = v36;
    }

    if ([v72 isAppClipCodeMetadataSupported])
    {
      [v72 setAppClipCodeMetadataObjectTypeAvailable:1];
      v75 = AVMetadataObjectTypeAppClipCode;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_100094F60(0, v67[2] + 1, 1, v67);
      }

      v77 = v67[2];
      v76 = v67[3];
      if (v77 >= v76 >> 1)
      {
        v67 = sub_100094F60((v76 > 1), v77 + 1, 1, v67);
      }

      v67[2] = v77 + 1;
      v67[v77 + 4] = v75;
    }

    if ([v72 isSceneClassificationMetadataSupported])
    {
      [v72 setSceneClassificationMetadataObjectTypeAvailable:1];
      v78 = AVMetadataObjectTypeSceneClassification;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_100094F60(0, v67[2] + 1, 1, v67);
      }

      v80 = v67[2];
      v79 = v67[3];
      v81 = v100;
      if (v80 >= v79 >> 1)
      {
        v93 = sub_100094F60((v79 > 1), v80 + 1, 1, v67);
        v81 = v100;
        v67 = v93;
      }

      v67[2] = v80 + 1;
      v67[v80 + 4] = v78;
    }

    else
    {
      v81 = v100;
    }

    v112 = v38;
    v82 = v81;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v84 = Strong;
      [v72 setMetadataObjectsDelegate:Strong queue:*(v82 + OBJC_IVAR____TtC6Tamale14ARCameraSource_metadataQueue)];
    }

    v85 = Array._bridgeToObjectiveC()().super.isa;

    [v72 setMetadataObjectTypes:v85];

    v86 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v87 = swift_allocObject();
    *(v87 + 16) = v86;
    *(v87 + 24) = v72;
    aBlock[4] = sub_100092E68;
    aBlock[5] = v87;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B5F04;
    aBlock[3] = &unk_1001C2758;
    v88 = _Block_copy(aBlock);

    v89 = v72;
    v90 = v94;
    static DispatchQoS.unspecified.getter();
    v113 = _swiftEmptyArrayStorage;
    sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
    sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
    v91 = v96;
    v92 = v99;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v88);

    (*(v98 + 8))(v91, v92);
    (*(v95 + 8))(v90, v97);
  }

  else
  {
    __break(1u);
  }
}

void *sub_100079024(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject ports];
      sub_10005BBC4(0, &qword_1001D81E8, AVCaptureInputPort_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v30 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v32 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_100013608(&qword_1001D8200, &qword_1001D81F8, qword_100177238, &protocol conformance descriptor for [A]);
            for (i = 0; i != v16; ++i)
            {
              sub_1000033A8(&qword_1001D81F8, qword_100177238);
              v19 = sub_1000907D4(v31, i, v8);
              v21 = *v20;
              (v19)(v31, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v32;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v32;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v30;
      if (v30 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return _swiftEmptyArrayStorage;
}

void sub_1000793B8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_72;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = _swiftEmptyArrayStorage;
    v30 = v1;
    while (1)
    {
      if (v32)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v4 = __OFADD__(v2, 1);
        v5 = v2 + 1;
        if (v4)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (v2 >= *(v31 + 16))
        {
          goto LABEL_66;
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_unknownObjectRetain();
        v4 = __OFADD__(v2, 1);
        v5 = v2 + 1;
        if (v4)
        {
          goto LABEL_65;
        }
      }

      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        swift_unknownObjectRetain();
        v8 = [v7 sensors];
        sub_10005BBC4(0, &qword_1001D95A0, ARImageSensor_ptr);
        v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v10 = v9 & 0xFFFFFFFFFFFFFF8;
        if (!(v9 >> 62))
        {
          goto LABEL_11;
        }

        v25 = _CocoaArrayWrapper.endIndex.getter();
        if (v25)
        {
          v26 = v25;
          v10 = sub_1000356C0(v25, 0);
          sub_1000908DC(v10 + 32, v26, v9);
          v28 = v27;

          if (v28 != v26)
          {
            __break(1u);
            return;
          }

LABEL_11:
          swift_unknownObjectRelease_n();
          if (v10 < 0)
          {
            goto LABEL_54;
          }

          goto LABEL_18;
        }

        swift_unknownObjectRelease_n();
      }

      else
      {
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (v11)
        {
          v12 = v11;
          sub_1000033A8(&qword_1001D5248, &qword_100172968);
          v10 = swift_allocObject();
          *(v10 + 16) = xmmword_100176B10;
          *(v10 + 32) = v12;
          if (v10 < 0)
          {
            goto LABEL_54;
          }

          goto LABEL_18;
        }

        swift_unknownObjectRelease();
      }

      v10 = _swiftEmptyArrayStorage;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }

LABEL_18:
      if ((v10 & 0x4000000000000000) != 0)
      {
LABEL_54:
        v14 = _CocoaArrayWrapper.endIndex.getter();
        v13 = 1;
        if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_56;
      }

      v13 = 0;
      v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
      {
LABEL_21:
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v15 = isUniquelyReferenced_nonNull_bridgeObject + v14;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
        {
          goto LABEL_67;
        }

        goto LABEL_22;
      }

LABEL_56:
      isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
      v15 = isUniquelyReferenced_nonNull_bridgeObject + v14;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
      {
        goto LABEL_67;
      }

LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v33 = v5;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
        {
          v16 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v15 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }
      }

      else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
      {
        goto LABEL_30;
      }

      _CocoaArrayWrapper.endIndex.getter();
LABEL_30:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v16 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_31:
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v13)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v19 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
LABEL_4:

          if (v14 > 0)
          {
            goto LABEL_68;
          }

          goto LABEL_5;
        }
      }

      if (((v18 >> 1) - v17) < v14)
      {
        goto LABEL_69;
      }

      v20 = (v16 + 8 * v17 + 32);
      if (v13)
      {
        break;
      }

      sub_10005BBC4(0, &qword_1001D95A0, ARImageSensor_ptr);
      swift_arrayInitWithCopy();

      if (v14 < 1)
      {
        goto LABEL_5;
      }

LABEL_49:
      v23 = *(v16 + 16);
      v4 = __OFADD__(v23, v14);
      v24 = v23 + v14;
      if (v4)
      {
        goto LABEL_70;
      }

      *(v16 + 16) = v24;
LABEL_5:
      v2 = v33;
      if (v33 == v1)
      {
        return;
      }
    }

    if (v19 < 1)
    {
      goto LABEL_71;
    }

    v21 = 0;
    if ((v10 & 0xC000000000000001) != 0)
    {
LABEL_39:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      ++v21;
      *v20 = isUniquelyReferenced_nonNull_bridgeObject;
      if (v21 != v19)
      {
        goto LABEL_44;
      }

LABEL_48:

      v1 = v30;
      if (v14 < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_49;
    }

    while ((v21 & 0x8000000000000000) == 0)
    {
      if (v21 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_64;
      }

      v22 = *(v10 + 32 + 8 * v21++);
      *v20 = v22;
      isUniquelyReferenced_nonNull_bridgeObject = v22;
      if (v21 == v19)
      {
        goto LABEL_48;
      }

LABEL_44:
      ++v20;
      if ((v10 & 0xC000000000000001) != 0)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v29;
  }
}

void sub_100079864(uint64_t a1, void *a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *a3;
    v7 = *(Strong + *a3);
    *(Strong + v6) = a2;
    v8 = Strong;
    v9 = a2;
  }
}

uint64_t sub_1000798D8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = type metadata accessor for CameraControllerConfiguration(0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000799B0, 0, 0);
}

uint64_t sub_1000799B0()
{
  v1 = v0[9];
  if (*(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceReplay))
  {
    v2 = v0[13];
    sub_1000138BC(v0[8] + *(v0[10] + 68), v2, &qword_1001D8020, &qword_1001728D0);
    v3 = type metadata accessor for URL();
    v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
    v5 = sub_10001370C(v2, &qword_1001D8020, &qword_1001728D0);
    if (v4 == 1)
    {
      sub_10006043C(v5, v6, v7);
      swift_allocError();
      *v8 = xmmword_100176B20;
LABEL_18:
      swift_willThrow();
      goto LABEL_20;
    }

    v1 = v0[9];
  }

  v9 = *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState);
  v10 = *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8);
  v11 = *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 16);
  if (v11 == 1 || (v11 == 3 ? (v12 = v9 == 2) : (v12 = 0), v12 ? (v13 = v10 == 0) : (v13 = 0), v13))
  {
    sub_100060424(v9, v10, v11);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Reconfigure unsupported when running.", v26, 2u);
    }

    sub_10006043C(v27, v28, v29);
    swift_allocError();
    *v30 = 0xD000000000000020;
    v30[1] = 0x800000010016D2C0;
    goto LABEL_18;
  }

  v14 = v0[12];
  v15 = v0[10];
  v16 = v0[8];
  v17 = OBJC_IVAR____TtC6Tamale14ARCameraSource_configuration;
  swift_beginAccess();
  sub_10009237C(v1 + v17, v14, type metadata accessor for CameraControllerConfiguration);
  *(v14 + v15[6]) = *(v16 + v15[6]);
  sub_100092D70(v16 + v15[21], v14 + v15[21]);
  sub_100092D70(v16 + v15[17], v14 + v15[17]);
  *(v14 + v15[13]) = *(v16 + v15[13]);
  *(v14 + v15[15]) = *(v16 + v15[15]);
  *(v14 + v15[19]) = *(v16 + v15[19]);
  *(v14 + v15[9]) = *(v16 + v15[9]);
  v18 = sub_10004B234(v14, v16);
  if (v18)
  {
    v21 = v0[12];
    v22 = v0[11];
    sub_10009237C(v0[8], v22, type metadata accessor for CameraControllerConfiguration);
    swift_beginAccess();
    sub_100092DE0(v22, v1 + v17, type metadata accessor for CameraControllerConfiguration);
    swift_endAccess();
    sub_100073560();
    sub_100092314(v21, type metadata accessor for CameraControllerConfiguration);

    v23 = v0[1];
    goto LABEL_21;
  }

  v31 = v0[12];
  sub_10006043C(v18, v19, v20);
  swift_allocError();
  *v32 = 0xD000000000000039;
  v32[1] = 0x800000010016D280;
  swift_willThrow();
  sub_100092314(v31, type metadata accessor for CameraControllerConfiguration);
LABEL_20:

  v23 = v0[1];
LABEL_21:

  return v23();
}

void sub_100079DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_synchronizer + 8) = a3;
    v5 = Strong;
    swift_unknownObjectWeakAssign();
  }
}

id sub_100079E48(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakAssign();
  result = *(a1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_metadataOutput);
  if (result)
  {
    v5 = *(a1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_metadataQueue);

    return [result setMetadataObjectsDelegate:a2 queue:v5];
  }

  return result;
}

void sub_100079EC0()
{
  v1 = v0;
  v2 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v11 = v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
    v12 = *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 16);
    if (v12 != 1)
    {
      if (v12 != 3 || (!*(v11 + 8) ? (v13 = *v11 == 2) : (v13 = 0), !v13))
      {
        v14 = *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration);
        if (v14)
        {
          if (*(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_trackManagerSupporting))
          {
            v15 = v14;

            sub_10008028C();
          }

          else
          {
            v27 = v14;
          }

          sub_10009DDBC();

          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            v28 = sub_100072B00();
            v29 = swift_allocObject();
            swift_unknownObjectWeakInit();
            aBlock[4] = sub_100092CBC;
            aBlock[5] = v29;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_10002C13C;
            aBlock[3] = &unk_1001C26E0;
            v30 = _Block_copy(aBlock);

            [v28 setBeforeRunningAVCaptureSession:v30];
            _Block_release(v30);
          }

          if (*(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceReplay))
          {
            v31 = type metadata accessor for TaskPriority();
            (*(*(v31 - 8) + 56))(v4, 1, 1, v31);
            type metadata accessor for MainActor();
            v32 = static MainActor.shared.getter();
            v33 = swift_allocObject();
            *(v33 + 16) = v32;
            *(v33 + 24) = &protocol witness table for MainActor;
            sub_1000154EC(0, 0, v4, &unk_100177230, v33);
          }

          v34 = sub_100072B00();
          [v34 runWithConfiguration:v14 options:7];

          v35 = *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource____lazy_storage___session);
          LOBYTE(v34) = sub_1000733F4(v35);

          *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_localizationState) = v34;
          v36 = *v11;
          v37 = *(v11 + 8);
          *v11 = v34;
          *(v11 + 8) = 0;
          v38 = *(v11 + 16);
          *(v11 + 16) = 1;
          sub_1000616E4(v36, v37, v38);
          sub_1000731B8();
        }

        else
        {
          v16 = Logger.logObject.getter();
          v17 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = 0;
            _os_log_impl(&_mh_execute_header, v16, v17, "AR configuration was not ready!", v18, 2u);
          }

          LOBYTE(aBlock[0]) = 0;
          sub_100092C68(v19, v20, v21);
          v22 = Error.localizedDescription.getter();
          v23 = *v11;
          v24 = *(v11 + 8);
          *v11 = v22;
          *(v11 + 8) = v25;
          v26 = *(v11 + 16);
          *(v11 + 16) = 2;
          sub_1000616E4(v23, v24, v26);
          sub_1000731B8();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10007A378(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10007655C(a1);
  }
}

double sub_10007A3D4()
{
  v1 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v1 - 8);
  v3 = &v10[-v2];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v11 = sub_100092BE8;
  v12 = v4;
  v5 = v0;
  OS_dispatch_queue.sync<A>(execute:)();

  if (v13 == 1)
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v5;
    v9 = v5;
    sub_1000154EC(0, 0, v3, &unk_100177220, v8);
  }

  return result;
}

BOOL sub_10007A56C(char *a1)
{
  v2 = sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = &a1[OBJC_IVAR____TtC6Tamale14ARCameraSource_configuration];
  swift_beginAccess();
  v6 = type metadata accessor for CameraControllerConfiguration(0);
  sub_1000138BC(&v5[*(v6 + 68)], v4, &qword_1001D8020, &qword_1001728D0);
  v7 = type metadata accessor for URL();
  LODWORD(v5) = (*(*(v7 - 8) + 48))(v4, 1, v7);
  sub_10001370C(v4, &qword_1001D8020, &qword_1001728D0);
  if (v5 != 1)
  {
    v8 = &a1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState];
    v9 = *&a1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState];
    v10 = *&a1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8];
    *v8 = xmmword_100176B30;
    v11 = v8[16];
    v8[16] = 3;
    sub_1000616E4(v9, v10, v11);
    sub_1000731B8();
  }

  v12 = &a1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState];
  v13 = a1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 16];
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v17 = os_log_type_enabled(v15, v16);
  if (v13 >= 3)
  {
    if (v17)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v29;
      *v28 = 136315138;
      v30 = *(v12 + 1);
      v31 = v12[16];
      v37 = *v12;
      v38 = v30;
      v39 = v31;
      sub_100060424(v37, v30, v31);
      v32 = String.init<A>(describing:)();
      v34 = sub_1000E0FE0(v32, v33, &v40);

      *(v28 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v15, v16, "pause: already in pause state (%s, ignoring", v28, 0xCu);
      sub_100006B44(v29);
    }
  }

  else
  {
    if (v17)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v40 = v19;
      *v18 = 136315138;
      v20 = *(v12 + 1);
      v21 = v12[16];
      v37 = *v12;
      v38 = v20;
      v39 = v21;
      sub_100060424(v37, v20, v21);
      v22 = String.init<A>(describing:)();
      v24 = sub_1000E0FE0(v22, v23, &v40);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "pause: transitioning from %s to .pauseRequested", v18, 0xCu);
      sub_100006B44(v19);
    }

    v25 = *v12;
    v26 = *(v12 + 1);
    *v12 = xmmword_100176B40;
    v27 = v12[16];
    v12[16] = 3;
    sub_1000616E4(v25, v26, v27);
    sub_1000731B8();
  }

  return v13 < 3;
}

uint64_t sub_10007A8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[16] = v7;
  *v7 = v4;
  v7[1] = sub_10007AA20;

  return sub_100071E98();
}

uint64_t sub_10007AA20(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_10007AB20, 0, 0);
}

uint64_t sub_10007AB20()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v13 = v0[14];
  v14 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v4 = sub_100072B00();
  [v4 pause];

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v0[6] = sub_100092258;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000B5F04;
  v0[5] = &unk_1001C2230;
  v7 = _Block_copy(v0 + 2);
  v10 = v1;

  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);

  (*(v12 + 8))(v3, v11);
  (*(v13 + 8))(v2, v14);

  v8 = v0[1];

  return v8();
}

void sub_10007ADC4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
    v6 = *(Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState);
    v7 = *(v5 + 8);
    *v5 = 0;
    *(v5 + 8) = 0;
    v8 = *(v5 + 16);
    *(v5 + 16) = 3;
    sub_1000616E4(v6, v7, v8);
    sub_1000731B8();
    v9 = &v4[OBJC_IVAR____TtC6Tamale14ARCameraSource_synchronizer];
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (a2)
      {
        v10 = *(v9 + 1);
        v11 = *&v4[OBJC_IVAR____TtC6Tamale14ARCameraSource_motionMonitor];
        v12 = *(v11 + 40);
        v13 = *(v11 + 48);
        v14 = v4[OBJC_IVAR____TtC6Tamale14ARCameraSource_systemPressureLevel];
        ObjectType = swift_getObjectType();
        v24 = a2;
        v16 = *v5;
        v15 = *(v5 + 8);
        v25[0] = v12;
        v25[1] = v13;
        v26 = v14;
        v27 = v16;
        v28 = v15;
        v17 = v15;
        v29 = *(v5 + 16);
        v21 = v29;
        v20 = *(v10 + 8);
        v23 = a2;
        sub_100092260(v12, v13);
        sub_100060424(v16, v17, v29);
        v18 = sub_10005BBC4(0, &qword_1001D7430, ARFrame_ptr);
        v19 = sub_10008BB9C(&qword_1001D7438, &qword_1001D7430, ARFrame_ptr, &protocol conformance descriptor for ARFrame);
        v20(&v24, v25, v18, v19, ObjectType, v10);

        swift_unknownObjectRelease();
        sub_100092274(v12, v13);
        sub_1000616E4(v16, v17, v21);

        return;
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_10007AFB4(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v13 = v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
    if (*(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 16))
    {
      v14 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceRecording);
      if (v14)
      {

        v15 = dispatch_semaphore_create(0);
        v16 = *(v14 + 16);
        if (v16)
        {
          v17 = swift_allocObject();
          *(v17 + 16) = v15;
          aBlock[4] = sub_100092BE0;
          aBlock[5] = v17;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10008DBBC;
          aBlock[3] = &unk_1001C2668;
          v18 = _Block_copy(aBlock);
          v19 = v16;
          v20 = v15;

          [v19 finishRecordingWithHandler:v18];
          _Block_release(v18);
        }

        [*(v14 + OBJC_IVAR____TtC6Tamale23ARCameraSourceRecording_session) pause];
        OS_dispatch_semaphore.wait()();
      }

      else
      {
        v15 = sub_100072B00();
        [v15 pause];
      }

      if (*(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceReplay))
      {
        v21 = type metadata accessor for TaskPriority();
        (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
        type metadata accessor for MainActor();
        v22 = static MainActor.shared.getter();
        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        *(v23 + 24) = &protocol witness table for MainActor;
        sub_1000154EC(0, 0, v6, &unk_100177218, v23);
      }

      v24 = *v13;
      v25 = *(v13 + 8);
      *v13 = a1;
      *(v13 + 8) = 0;
      v26 = *(v13 + 16);
      *(v13 + 16) = 0;
      sub_1000616E4(v24, v25, v26);
      sub_1000731B8();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10007B334()
{
  v1 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = OBJC_IVAR____TtC6Tamale14ARCameraSource_shutterSoundTask;

  Task.cancel()();

  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = *&v0[v4];
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;

  sub_1000154EC(0, 0, v3, &unk_1001772D0, v7);

  v8 = *&v0[OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue];
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000941F4;
  *(v10 + 24) = v9;
  aBlock[4] = sub_100094180;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100071D78;
  aBlock[3] = &unk_1001C2C30;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v13 = type metadata accessor for ARCameraSource(0);
    v14.receiver = v12;
    v14.super_class = v13;
    objc_msgSendSuper2(&v14, "dealloc");
  }
}

uint64_t sub_10007B5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10007B66C;

  return Task<>.value.getter(v4 + 24, a4, &type metadata for UInt32);
}

uint64_t sub_10007B66C()
{

  return _swift_task_switch(sub_10007B768, 0, 0);
}

uint64_t sub_10007B768()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    AudioServicesDisposeSystemSoundID(v1);
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_10007BD28(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 supportsControls] && !*(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_systemZoomSlider))
  {
    v30 = OBJC_IVAR____TtC6Tamale14ARCameraSource_systemZoomSlider;
    v28 = v6;
    sub_10005BBC4(0, &qword_1001D6B40, OS_dispatch_queue_ptr);
    v31 = v2;
    v9 = static OS_dispatch_queue.main.getter();
    v10 = v31;
    v11 = v9;
    [a1 setControlsDelegate:v31 queue:v9];

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = objc_allocWithZone(AVCaptureSystemZoomSlider);
    aBlock[4] = sub_100092AF4;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100090780;
    aBlock[3] = &unk_1001C25F0;
    v14 = _Block_copy(aBlock);

    v29 = [v13 initWithDevice:a2 action:v14];
    _Block_release(v14);

    sub_1000033A8(&qword_1001D81B0, &qword_100177200);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100170800;
    v16 = OBJC_IVAR____TtC6Tamale14ARCameraSource_minimumZoomFactor;
    *(inited + 32) = [objc_allocWithZone(NSNumber) initWithDouble:*(v10 + OBJC_IVAR____TtC6Tamale14ARCameraSource_minimumZoomFactor)];
    *(inited + 40) = [objc_allocWithZone(NSNumber) initWithDouble:1.0];
    v17 = OBJC_IVAR____TtC6Tamale14ARCameraSource_maximumZoomFactor;
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithDouble:*(v10 + OBJC_IVAR____TtC6Tamale14ARCameraSource_maximumZoomFactor)];
    v18 = *(v10 + v17) / *(v10 + v16);
    v19 = objc_allocWithZone(NSNumber);
    v20 = v29;
    *(inited + 56) = [v19 initWithDouble:v18];
    sub_100097458(inited);
    swift_setDeallocating();
    sub_1000033A8(&qword_1001D81B8, &qword_100177208);
    swift_arrayDestroy();
    sub_10005BBC4(0, &qword_1001D81C0, NSNumber_ptr);
    sub_10008BB9C(&qword_1001D81C8, &qword_1001D81C0, NSNumber_ptr, &protocol conformance descriptor for NSObject);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v20 setDisplayValuesByZoomFactorValue:isa];

    [v20 setMaxVideoZoomFactor:*(v10 + v17)];
    if ([a1 canAddControl:v20])
    {
      [a1 addControl:v20];
    }

    else
    {
      static Log.zoom.getter();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Could not add zoom slider control to capture session", v24, 2u);
      }

      (*(v28 + 8))(v8, v5);
      v10 = v31;
    }

    v25 = *(v10 + v30);
    *(v10 + v30) = v20;
    v26 = v20;

    [v26 setEnabled:(*(v10 + OBJC_IVAR____TtC6Tamale14ARCameraSource_cameraControlsDisabled) & 1) == 0];
  }
}

void sub_10007C1DC(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10007C244(2, a2);
  }
}

void sub_10007C244(int a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v47 = *(v10 - 8);
  __chkstk_darwin(v10);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + OBJC_IVAR____TtC6Tamale14ARCameraSource_minimumZoomFactor);
  if (v16 <= a2)
  {
    v16 = a2;
  }

  if (*(v3 + OBJC_IVAR____TtC6Tamale14ARCameraSource_maximumZoomFactor) >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = *(v3 + OBJC_IVAR____TtC6Tamale14ARCameraSource_maximumZoomFactor);
  }

  v18 = OBJC_IVAR____TtC6Tamale14ARCameraSource_targetZoomFactor;
  if (v17 != *(v3 + OBJC_IVAR____TtC6Tamale14ARCameraSource_targetZoomFactor))
  {
    v45 = a1;
    v43 = v10;
    v44 = v7;
    static Log.zoom.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    v21 = os_log_type_enabled(v19, v20);
    v42 = v9;
    if (v21)
    {
      v41 = v6;
      v22 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v22 = 134218242;
      *(v22 + 4) = v17;
      *(v22 + 12) = 2080;
      v23 = 0xE500000000000000;
      v24 = 0x7465736572;
      v25 = 0x800000010016D200;
      v26 = 0x65727574736567;
      if (v45 == 2)
      {
        v26 = 0xD000000000000013;
      }

      else
      {
        v25 = 0xE700000000000000;
      }

      if (!v45)
      {
        v24 = 0xD000000000000014;
        v23 = 0x800000010016D220;
      }

      if (v45 <= 1u)
      {
        v27 = v24;
      }

      else
      {
        v27 = v26;
      }

      if (v45 <= 1u)
      {
        v28 = v23;
      }

      else
      {
        v28 = v25;
      }

      v29 = sub_1000E0FE0(v27, v28, aBlock);

      *(v22 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v19, v20, "Setting zoom factor %f for %s", v22, 0x16u);
      sub_100006B44(v40);

      (*(v13 + 8))(v15, v12);
      v6 = v41;
    }

    else
    {

      (*(v13 + 8))(v15, v12);
    }

    *(v3 + v18) = v17;
    v30 = v44;
    if (v45 >= 2u)
    {
      if (v45 == 2)
      {
        return;
      }

      v31 = 1;
    }

    else
    {
      v31 = 0;
    }

    v32 = sub_100072B00();
    v33 = [v32 stateQueue];

    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v17;
    *(v35 + 32) = v31;
    aBlock[4] = sub_100092AE4;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B5F04;
    aBlock[3] = &unk_1001C25C8;
    v36 = _Block_copy(aBlock);

    v37 = v46;
    static DispatchQoS.unspecified.getter();
    v48 = _swiftEmptyArrayStorage;
    sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
    sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
    v38 = v42;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v36);

    (*(v30 + 8))(v38, v6);
    (*(v47 + 8))(v37, v43);
  }
}

void sub_10007C804(uint64_t a1, char a2, double a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10007C870(a2 & 1, a3);
  }
}

void sub_10007C870(char a1, double a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v38[-v11];
  v13 = __chkstk_darwin(v10);
  v15 = &v38[-v14];
  __chkstk_darwin(v13);
  v17 = &v38[-v16];
  v18 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_captureDevice);
  if (v18)
  {
    v19 = v18;
    [v19 maxAvailableVideoZoomFactor];
    if (v20 <= 1.0)
    {
      static Log.zoom.getter();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Zoom not supported", v30, 2u);
      }

      (*(v6 + 8))(v15, v5);
    }

    else
    {
      v39 = 0;
      if ([v19 lockForConfiguration:&v39])
      {
        v21 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_minimumZoomFactor);
        if (v21 <= a2)
        {
          v21 = a2;
        }

        if (*(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_maximumZoomFactor) >= v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_maximumZoomFactor);
        }

        v23 = v39;
        if (v22 == a2)
        {
          if (a1)
          {
LABEL_11:
            *&v24 = v22;
            [v19 rampToVideoZoomFactor:1 withTuning:v24];
LABEL_25:
            [v19 unlockForConfiguration];

            return;
          }
        }

        else
        {
          static Log.zoom.getter();
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 134218240;
            *(v37 + 4) = a2;
            *(v37 + 12) = 2048;
            *(v37 + 14) = v22;
            _os_log_impl(&_mh_execute_header, v35, v36, "Clamped desired zoom factor %f to allowed range: %f", v37, 0x16u);
          }

          (*(v6 + 8))(v17, v5);
          if (a1)
          {
            goto LABEL_11;
          }
        }

        [v19 setVideoZoomFactor:v22];
        goto LABEL_25;
      }

      v31 = v39;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static Log.zoom.getter();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Failed to lock device for zoom", v34, 2u);
      }

      (*(v6 + 8))(v9, v5);
    }
  }

  else
  {
    static Log.zoom.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to get AVCaptureDevice for zoom", v27, 2u);
    }

    (*(v6 + 8))(v12, v5);
  }
}

void sub_10007CD04(uint64_t a1, char a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v2[OBJC_IVAR____TtC6Tamale14ARCameraSource_zoomGestureState];
  if (v2[OBJC_IVAR____TtC6Tamale14ARCameraSource_zoomGestureState + 8])
  {
    if (a2)
    {
      return;
    }

    v11 = v7;
    static Log.zoom.getter();
    v12 = v2;
    v13 = v2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    v16 = &qword_1001D7000;
    if (os_log_type_enabled(v14, v15))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = *&v13[OBJC_IVAR____TtC6Tamale14ARCameraSource_targetZoomFactor];
      _os_log_impl(&_mh_execute_header, v14, v15, "Starting zoom gesture with initial factor %f", v17, 0xCu);
      v16 = &qword_1001D7000;
    }

    (*(v6 + 8))(v9, v11);
    *&v13[OBJC_IVAR____TtC6Tamale14ARCameraSource_zoomGestureInitialZoomFactor] = *&v13[v16[173]];
    v18 = *&a1;
    v2 = v12;
LABEL_9:
    *v10 = *&a1;
    *(v10 + 8) = 0;
    sub_10007C244(3, *&v2[OBJC_IVAR____TtC6Tamale14ARCameraSource_zoomGestureInitialZoomFactor] * v18);
    return;
  }

  if (a2)
  {
    *v10 = *&a1;
    *(v10 + 8) = 1;
    return;
  }

  v18 = *&a1;
  if (*v10 != *&a1)
  {
    goto LABEL_9;
  }
}

double sub_10007CF00(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100072B00();
  v14 = [v8 stateQueue];

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_100092AA0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C2578;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v12 = v14;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v16 + 8))(v4, v2);
  (*(v5 + 8))(v7, v15);

  return result;
}

void sub_10007D228(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_cameraControlsDisabled) = a2 & 1;
    v5 = *(Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_systemZoomSlider);
    if (v5)
    {
      v6 = v5;
      [v6 setEnabled:(a2 & 1) == 0];
    }
  }
}

uint64_t sub_10007D2F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100019340;

  return sub_1000798D8(a1);
}

uint64_t sub_10007D38C()
{
  v1 = *v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
  v2 = *v1;
  sub_100060424(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t sub_10007D3E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC6Tamale14ARCameraSource_runStateStreamInternal;
  v5 = sub_1000033A8(&qword_1001D6AF0, &qword_100175BA0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_10007D46C()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10009075C;
  *(v4 + 24) = v3;
  v7[4] = sub_100094180;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100071D78;
  v7[3] = &unk_1001C2140;
  v5 = _Block_copy(v7);
  v6 = v1;

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_10007D5E8()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000906E4;
  *(v4 + 24) = v3;
  v7[4] = sub_10009071C;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100071D78;
  v7[3] = &unk_1001C20C8;
  v5 = _Block_copy(v7);
  v6 = v1;

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

uint64_t sub_10007D7D0()
{
  v1 = v0;
  v2 = type metadata accessor for Corners();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RaycastAccuracy(0);
  __chkstk_darwin(v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009237C(v1, v8, type metadata accessor for RaycastAccuracy);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return 0x756363416C6C7566;
    }

    (*(v3 + 32))(v5, v8, v2);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v14[0] = 0xD000000000000016;
    v14[1] = 0x800000010016D0D0;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v3 + 32))(v5, v8, v2);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v14, "finalPosition ");
    HIBYTE(v14[1]) = -18;
LABEL_7:
    sub_100090580(&qword_1001D7FB8, &type metadata accessor for Corners, &protocol conformance descriptor for Corners);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v11 = v14[0];
    (*(v3 + 8))(v5, v2);
    return v11;
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  v10._countAndFlagsBits = 0x5064656D75737361;
  v10._object = 0xED000020656E616CLL;
  String.append(_:)(v10);
  Double.write<A>(to:)();
  return v14[0];
}

void sub_10007DAC4(uint64_t a1)
{
  v2 = type metadata accessor for Corners();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RaycastAccuracy(0);
  __chkstk_darwin(v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10009237C(v1, v8, type metadata accessor for RaycastAccuracy);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      Hasher._combine(_:)(0);
      return;
    }

    (*(v3 + 32))(v5, v8, v2);
    v12 = 3;
LABEL_9:
    Hasher._combine(_:)(v12);
    sub_100090580(&qword_1001D7FB0, &type metadata accessor for Corners, &protocol conformance descriptor for Corners);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v3 + 32))(v5, v8, v2);
    v12 = 2;
    goto LABEL_9;
  }

  v10 = *v8;
  Hasher._combine(_:)(1uLL);
  v11 = 0.0;
  if (v10 != 0.0)
  {
    v11 = v10;
  }

  Hasher._combine(_:)(*&v11);
}

Swift::Int sub_10007DCF4()
{
  Hasher.init(_seed:)();
  sub_10007DAC4(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10007DD38()
{
  Hasher.init(_seed:)();
  sub_10007DAC4(v1);
  return Hasher._finalize()();
}

uint64_t sub_10007DD78(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1000033A8(&qword_1001D8138, &qword_1001771A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v42 - v8;
  v10 = type metadata accessor for RaycastAccuracy(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v42 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v15 = &v42 - v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v43 = v17;
  v18 = sub_100095E6C(a1);
  v20 = v17[2];
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v3) = v19;
  if (v17[3] < v23)
  {
    sub_1000BDFCC(v23, isUniquelyReferenced_nonNull_native);
    v17 = v43;
    v18 = sub_100095E6C(a1);
    if ((v3 & 1) == (v24 & 1))
    {
      goto LABEL_6;
    }

    v18 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_6:
  *v4 = v17;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_7:
  v3 = v18;
  sub_1000C1940(v18, a1, 0, v17);
  v18 = v3;
LABEL_8:
  while (1)
  {
    v25 = v17[7];
    v26 = *(v25 + 8 * v18);
    v22 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v22)
    {
      break;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    v41 = v18;
    sub_1000C2188();
    v18 = v41;
    v17 = v43;
    *v4 = v43;
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v25 + 8 * v18) = v27;
  sub_1000138BC(a2, v9, &qword_1001D8138, &qword_1001771A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10001370C(v9, &qword_1001D8138, &qword_1001771A0);
  }

  sub_1000923E4(v9, v15, type metadata accessor for RaycastAccuracy);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v4[1];
  v30 = v43;
  v32 = sub_100095E00(v15);
  v33 = v30[2];
  v34 = (v31 & 1) == 0;
  v35 = v33 + v34;
  if (__OFADD__(v33, v34))
  {
    __break(1u);
    goto LABEL_27;
  }

  LOBYTE(a2) = v31;
  if (v30[3] >= v35)
  {
    if ((v29 & 1) == 0)
    {
      goto LABEL_28;
    }

    v4[1] = v30;
    if ((v31 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    sub_1000BDA48(v35, v29);
    v30 = v43;
    v36 = sub_100095E00(v15);
    if ((a2 & 1) != (v37 & 1))
    {
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v32 = v36;
    v4[1] = v30;
    if ((a2 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  while (1)
  {
    v38 = v30[7];
    v39 = *(v38 + 8 * v32);
    v22 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (!v22)
    {
      break;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    sub_1000C1F44();
    v30 = v43;
    v4[1] = v43;
    if ((a2 & 1) == 0)
    {
LABEL_18:
      v4 = v42;
      sub_10009237C(v15, v42, type metadata accessor for RaycastAccuracy);
      sub_1000C188C(v32, v4, 0, v30);
    }
  }

  *(v38 + 8 * v32) = v40;
  return sub_100092314(v15, type metadata accessor for RaycastAccuracy);
}

void sub_10007E124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v102 = a3;
  v5 = type metadata accessor for RaycastAccuracy(0);
  v107 = *(v5 - 8);
  v108 = v5;
  __chkstk_darwin(v5);
  v112 = v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1000033A8(&unk_1001D8150, &unk_1001771B0);
  v7 = __chkstk_darwin(v106);
  v113 = v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v105 = v100 - v9;
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  v109 = a2;
  if (v10)
  {
    v118 = _swiftEmptyArrayStorage;
    sub_1000595D0(0, v10, 0);
    v12 = v118;
    v13 = a1 + 64;
    v14 = _HashTable.startBucket.getter();
    v15 = 0;
    v16 = *(a1 + 36);
    v103 = 0x800000010016D1E0;
    v104 = a1 + 72;
    v110 = v10;
    v111 = v16;
    *&v114 = a1 + 64;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v18 = v14 >> 6;
      if ((*(v13 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_76;
      }

      if (v16 != *(a1 + 36))
      {
        goto LABEL_77;
      }

      v19 = *(*(a1 + 48) + v14);
      v115 = *(*(a1 + 56) + 8 * v14);
      v116 = dispatch thunk of CustomStringConvertible.description.getter();
      v117 = v20;
      v21._countAndFlagsBits = 32;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      if (v19 <= 2)
      {
        if (v19)
        {
          if (v19 == 1)
          {
            v23 = 0xD000000000000010;
            v22 = v103;
          }

          else
          {
            v22 = 0xE700000000000000;
            v23 = 0x64657461657263;
          }
        }

        else
        {
          v22 = 0xEA00000000006B6FLL;
          v23 = 0x5F74736163796172;
        }
      }

      else if (v19 > 4)
      {
        if (v19 == 5)
        {
          v22 = 0xE800000000000000;
          v23 = 0x6465737361707962;
        }

        else
        {
          v23 = 0x726F68636E616E75;
          v22 = 0xEA00000000006465;
        }
      }

      else if (v19 == 3)
      {
        v22 = 0xE800000000000000;
        v23 = 0x646563616C706572;
      }

      else
      {
        v22 = 0xE700000000000000;
        v23 = 0x6465766F6D6572;
      }

      v24 = v22;
      String.append(_:)(*&v23);

      v25 = v116;
      v26 = v117;
      v27 = v12;
      v118 = v12;
      v28 = v12[2];
      v29 = v27[3];
      if (v28 >= v29 >> 1)
      {
        sub_1000595D0((v29 > 1), v28 + 1, 1);
        v27 = v118;
      }

      v27[2] = v28 + 1;
      v30 = &v27[2 * v28];
      v30[4] = v25;
      v30[5] = v26;
      v17 = 1 << *(a1 + 32);
      if (v14 >= v17)
      {
        goto LABEL_78;
      }

      v13 = v114;
      v31 = *(v114 + 8 * v18);
      if ((v31 & (1 << v14)) == 0)
      {
        goto LABEL_79;
      }

      v12 = v27;
      LODWORD(v16) = v111;
      if (v111 != *(a1 + 36))
      {
        goto LABEL_80;
      }

      v32 = v31 & (-2 << (v14 & 0x3F));
      if (v32)
      {
        v17 = __clz(__rbit64(v32)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = v18 << 6;
        v34 = v18 + 1;
        v35 = (v104 + 8 * v18);
        while (v34 < (v17 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            sub_10009257C(v14, v111, 0);
            v17 = __clz(__rbit64(v36)) + v33;
            goto LABEL_4;
          }
        }

        sub_10009257C(v14, v111, 0);
      }

LABEL_4:
      ++v15;
      v14 = v17;
      if (v15 == v110)
      {
        a2 = v109;
        v11 = v12;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

LABEL_34:
  v116 = v11;
  v38 = sub_1000033A8(&unk_1001D6300, &unk_1001752C0);
  v39 = sub_100013608(&unk_1001D8160, &unk_1001D6300, &unk_1001752C0, &protocol conformance descriptor for [A]);
  v103 = BidirectionalCollection<>.joined(separator:)();
  v41 = v40;

  v42 = *(a2 + 16);
  v43 = _swiftEmptyArrayStorage;
  if (!v42)
  {
LABEL_61:
    v116 = v43;
    v73 = BidirectionalCollection<>.joined(separator:)();
    v75 = v74;

    v76 = *(v102 + 16);
    if (!v76)
    {
      v79 = 0;
      v80 = 0xE000000000000000;
LABEL_74:
      v116 = 0;
      v117 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v116 = 91;
      v117 = 0xE100000000000000;
      v95._countAndFlagsBits = v103;
      v95._object = v41;
      String.append(_:)(v95);

      v96._countAndFlagsBits = 0x617275636361205DLL;
      v96._object = 0xED00005B203A7963;
      String.append(_:)(v96);
      v97._countAndFlagsBits = v73;
      v97._object = v75;
      String.append(_:)(v97);

      v98._countAndFlagsBits = 93;
      v98._object = 0xE100000000000000;
      String.append(_:)(v98);
      v99._countAndFlagsBits = v79;
      v99._object = v80;
      String.append(_:)(v99);

      return;
    }

    if (v76 > 7)
    {
      v77 = v76 & 0x7FFFFFFFFFFFFFF8;
      v81 = v102 + 48;
      v78 = 0.0;
      v82 = v76 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v78 = (((((((v78 + COERCE_FLOAT(*(v81 - 16))) + COERCE_FLOAT(HIDWORD(*(v81 - 16)))) + COERCE_FLOAT(*(v81 - 8))) + COERCE_FLOAT(HIDWORD(*(v81 - 16)))) + COERCE_FLOAT(*v81)) + COERCE_FLOAT(HIDWORD(*v81))) + COERCE_FLOAT(*(v81 + 8))) + COERCE_FLOAT(HIDWORD(*v81));
        v81 += 32;
        v82 -= 8;
      }

      while (v82);
      if (v76 == v77)
      {
LABEL_70:
        v86 = v78 / v76;
        v87 = sub_10009CBC8(v102);
        if ((v87 & &_mh_execute_header) != 0)
        {
          v88 = 0.0;
        }

        else
        {
          v88 = *&v87;
        }

        v116 = 0;
        v117 = 0xE000000000000000;
        _StringGuts.grow(_:)(21);

        v116 = 0x203A6776612820;
        v117 = 0xE700000000000000;
        sub_1000033A8(&qword_1001D58A0, &qword_1001771C0);
        v89 = swift_allocObject();
        v114 = xmmword_100171DA0;
        *(v89 + 16) = xmmword_100171DA0;
        *(v89 + 56) = &type metadata for Float;
        *(v89 + 64) = &protocol witness table for Float;
        *(v89 + 32) = v86;
        v90._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v90);

        v91._countAndFlagsBits = 0x203A78616D202C6DLL;
        v91._object = 0xE800000000000000;
        String.append(_:)(v91);
        v92 = swift_allocObject();
        *(v92 + 16) = v114;
        *(v92 + 56) = &type metadata for Float;
        *(v92 + 64) = &protocol witness table for Float;
        *(v92 + 32) = v88;
        v93._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v93);

        v94._countAndFlagsBits = 10605;
        v94._object = 0xE200000000000000;
        String.append(_:)(v94);
        v79 = v116;
        v80 = v117;
        goto LABEL_74;
      }
    }

    else
    {
      v77 = 0;
      v78 = 0.0;
    }

    v83 = v76 - v77;
    v84 = (v102 + 4 * v77 + 32);
    do
    {
      v85 = *v84++;
      v78 = v78 + v85;
      --v83;
    }

    while (v83);
    goto LABEL_70;
  }

  v100[1] = v39;
  v100[2] = v38;
  v101 = v41;
  v118 = _swiftEmptyArrayStorage;
  sub_1000595D0(0, v42, 0);
  v43 = v118;
  v44 = a2 + 64;
  v45 = _HashTable.startBucket.getter();
  v46 = 0;
  v104 = a2 + 72;
  *&v114 = *(a2 + 36);
  v110 = v42;
  v111 = a2 + 64;
  while ((v45 & 0x8000000000000000) == 0 && v45 < 1 << *(a2 + 32))
  {
    v48 = v45 >> 6;
    if ((*(v44 + 8 * (v45 >> 6)) & (1 << v45)) == 0)
    {
      goto LABEL_82;
    }

    if (v114 != *(a2 + 36))
    {
      goto LABEL_83;
    }

    v49 = v105;
    sub_10009237C(*(a2 + 48) + *(v107 + 72) * v45, v105, type metadata accessor for RaycastAccuracy);
    v50 = *(*(a2 + 56) + 8 * v45);
    v51 = v49;
    v52 = v113;
    sub_1000923E4(v51, v113, type metadata accessor for RaycastAccuracy);
    *(v52 + *(v106 + 48)) = v50;
    v115 = v50;
    v116 = dispatch thunk of CustomStringConvertible.description.getter();
    v117 = v53;
    v54._countAndFlagsBits = 32;
    v54._object = 0xE100000000000000;
    String.append(_:)(v54);
    sub_10009237C(v52, v112, type metadata accessor for RaycastAccuracy);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v58 = type metadata accessor for Corners();
        (*(*(v58 - 8) + 8))(v112, v58);
        v56 = 0xE800000000000000;
        v57 = 0x656C626174736E75;
      }

      else
      {
        v56 = 0xE400000000000000;
        v57 = 1819047270;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v59 = type metadata accessor for Corners();
      (*(*(v59 - 8) + 8))(v112, v59);
      v56 = 0xE500000000000000;
      v57 = 0x6C616E6966;
    }

    else
    {
      v56 = 0xE500000000000000;
      v57 = 0x656E616C70;
    }

    v60 = v56;
    String.append(_:)(*&v57);

    v62 = v116;
    v61 = v117;
    sub_10001370C(v113, &unk_1001D8150, &unk_1001771B0);
    v118 = v43;
    v64 = v43[2];
    v63 = v43[3];
    if (v64 >= v63 >> 1)
    {
      sub_1000595D0((v63 > 1), v64 + 1, 1);
      v43 = v118;
    }

    v43[2] = v64 + 1;
    v65 = &v43[2 * v64];
    v65[4] = v62;
    v65[5] = v61;
    a2 = v109;
    v47 = 1 << *(v109 + 32);
    if (v45 >= v47)
    {
      goto LABEL_84;
    }

    v44 = v111;
    v66 = *(v111 + 8 * v48);
    if ((v66 & (1 << v45)) == 0)
    {
      goto LABEL_85;
    }

    if (v114 != *(v109 + 36))
    {
      goto LABEL_86;
    }

    v67 = v66 & (-2 << (v45 & 0x3F));
    if (v67)
    {
      v47 = __clz(__rbit64(v67)) | v45 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v68 = v48 << 6;
      v69 = v48 + 1;
      v70 = (v104 + 8 * v48);
      while (v69 < (v47 + 63) >> 6)
      {
        v72 = *v70++;
        v71 = v72;
        v68 += 64;
        ++v69;
        if (v72)
        {
          sub_10009257C(v45, v114, 0);
          v47 = __clz(__rbit64(v71)) + v68;
          goto LABEL_37;
        }
      }

      sub_10009257C(v45, v114, 0);
    }

LABEL_37:
    ++v46;
    v45 = v47;
    if (v46 == v110)
    {
      v41 = v101;
      goto LABEL_61;
    }
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
}

void sub_10007EC5C(uint64_t a1)
{
  v2 = v1;
  v31 = sub_1000033A8(&unk_1001D81A0, &qword_1001771F0);
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = v27 - v5;
  v29 = sub_1000033A8(&unk_1001D8190, &qword_1001771E0);
  v6 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = v27 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v2 + 64) = a1;

  v13 = *(v2 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (a1)
  {
    v15 = OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_predictionsStreamContinuations;
    swift_beginAccess();
    v28 = v2;
    v16 = *(v2 + v15);
    v17 = 1 << *(v16 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v16 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = (v4 + 8);
    v27[0] = v6 + 8;
    v27[1] = v6 + 16;
    swift_bridgeObjectRetain_n();
    v22 = 0;
    while (v19)
    {
      v23 = v22;
LABEL_10:
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v25 = v29;
      (*(v6 + 16))(v8, *(v16 + 56) + *(v6 + 72) * (v24 | (v23 << 6)), v29);
      v32 = *(v28 + 64);

      v26 = v30;
      AsyncStream.Continuation.yield(_:)();
      (*v21)(v26, v31);
      (*(v6 + 8))(v8, v25);
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v20)
      {

        return;
      }

      v19 = *(v16 + 64 + 8 * v23);
      ++v22;
      if (v19)
      {
        v22 = v23;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

double sub_10007EFEC@<D0>(uint64_t a1@<X8>)
{
  v22[0] = a1;
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v23 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000033A8(&unk_1001D9570, &qword_1001771D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - v6;
  v8 = sub_1000033A8(&unk_1001D8190, &qword_1001771E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v22 - v13;
  sub_1000033A8(&unk_1001D9580, &qword_1001771E8);
  (*(v5 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v4);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v5 + 8))(v7, v4);
  v22[0] = *(v22[1] + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(v12, v14, v8);
  v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  (*(v9 + 32))(v17 + v16, v12, v8);
  aBlock[4] = sub_100092858;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C24B0;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
  v19 = v23;
  v20 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v27 + 8))(v19, v20);
  (*(v24 + 8))(v3, v26);
  (*(v9 + 8))(v14, v8);

  return result;
}

uint64_t sub_10007F508(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000033A8(&unk_1001D81A0, &qword_1001771F0);
  v30 = *(v3 - 8);
  __chkstk_darwin(v3);
  v29 = &v25 - v4;
  v5 = sub_1000033A8(&unk_1001D9590, &qword_1001771F8);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    UUID.init()();
    v25 = v8;
    v26 = *(v9 + 16);
    v27 = a2;
    v26(v12, v14, v8);
    v17 = sub_1000033A8(&unk_1001D8190, &qword_1001771E0);
    v18 = *(v17 - 8);
    v28 = v3;
    v19 = v18;
    (*(v18 + 16))(v7, a2, v17);
    (*(v19 + 56))(v7, 0, 1, v17);
    swift_beginAccess();
    sub_1000B7B68(v7, v12);
    swift_endAccess();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = v25;
    v26(v12, v14, v25);
    v22 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    (*(v9 + 32))(v23 + v22, v12, v21);
    AsyncStream.Continuation.onTermination.setter();
    v31 = *(v16 + 64);

    v24 = v29;
    AsyncStream.Continuation.yield(_:)();

    (*(v30 + 8))(v24, v28);
    return (*(v9 + 8))(v14, v21);
  }

  return result;
}

double sub_10007F8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = *(Strong + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
    v24 = Strong;
    v16 = swift_allocObject();
    v22 = v5;
    v17 = v16;
    swift_weakInit();
    (*(v12 + 16))(&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v11);
    v18 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    (*(v12 + 32))(v19 + v18, &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
    aBlock[4] = sub_100092A04;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B5F04;
    aBlock[3] = &unk_1001C2528;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
    sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);
    (*(v22 + 8))(v7, v4);
    (*(v25 + 8))(v10, v26);
  }

  return result;
}

double sub_10007FCD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000033A8(&unk_1001D9590, &qword_1001771F8);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-v4];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v7 + 16))(v9, a2, v6);
    v11 = sub_1000033A8(&unk_1001D8190, &qword_1001771E0);
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    swift_beginAccess();
    sub_1000B7B68(v5, v9);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10007FE9C(uint64_t a1)
{
  v2 = v1;
  v14 = a1;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v3 - 8);
  v13 = v3;
  __chkstk_darwin(v3);
  v11 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  swift_unknownObjectWeakInit();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  sub_1000033A8(&qword_1001D80D8, &qword_100177150);
  default argument 0 of CircularBuffer.init(data:index:sizeMax:)();
  default argument 1 of CircularBuffer.init(data:index:sizeMax:)();
  *(v1 + 56) = TimestampDataBuffer.__allocating_init(data:index:sizeMax:)();
  *(v1 + 64) = sub_100096F20(_swiftEmptyArrayStorage);
  *(v1 + 72) = 1084227584;
  *(v1 + 80) = 3;
  static Log.arKit.getter();
  *(v1 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_predictionsStreamContinuations) = &_swiftEmptyDictionarySingleton;
  v10 = OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue;
  sub_10005BBC4(0, &qword_1001D6B40, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_100090580(&unk_1001D8040, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000033A8(&unk_1001D6B50, &unk_100175C40);
  sub_100013608(&unk_1001D8050, &unk_1001D6B50, &unk_100175C40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *(v1 + v10) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v7 = v14;
  sub_10009237C(v14, v1 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_configuration, type metadata accessor for CameraControllerConfiguration);
  *(v1 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_lastAnchoredTracksUpdateFrameTime) = 0xFFF0000000000000;
  type metadata accessor for UUID();
  type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  sub_100090580(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v8 = Dictionary.init(minimumCapacity:)();
  sub_100092314(v7, type metadata accessor for CameraControllerConfiguration);
  *(v2 + 48) = v8;
  return v2;
}

double sub_10008028C()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v2;
  aBlock[4] = sub_100092780;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C2460;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v15 + 8))(v5, v3);
  (*(v6 + 8))(v8, v14);

  return result;
}

void sub_1000805C0(uint64_t a1)
{
  v1 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  v60 = *(v1 - 8);
  v61 = v1;
  v2 = __chkstk_darwin(v1);
  v4 = (&v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v59 = &v54 - v5;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  v56 = OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue;
  v12 = *(Strong + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
  *v9 = v12;
  v13 = enum case for DispatchPredicate.onQueue(_:);
  v14 = v7 + 104;
  v58 = *(v7 + 104);
  v58(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v15 = v12;
  v16 = _dispatchPreconditionTest(_:)();
  v18 = *(v7 + 8);
  v17 = v7 + 8;
  v57 = v18;
  v18(v9, v6);
  if ((v16 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v54 = v14;
  v55 = v6;
  v19 = *(v11 + 48);
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v62 = v17;
  v63 = v19;

  v25 = 0;
LABEL_6:
  v26 = v58;
  if (!v23)
  {
    goto LABEL_8;
  }

  do
  {
    v27 = v25;
LABEL_11:
    v28 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v29 = v59;
    sub_10009237C(*(v63 + 56) + *(v60 + 72) * (v28 | (v27 << 6)), v59, type metadata accessor for ARCameraSource.Tracker.TrackState);
    sub_1000923E4(v29, v4, type metadata accessor for ARCameraSource.Tracker.TrackState);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = v13;
      v31 = *v4;
      v32 = sub_1000033A8(&qword_1001D8100, &qword_100177168);
      sub_100092314(v4 + *(v32 + 48), type metadata accessor for ARCameraSource.AnchorInformation);
      v33 = swift_unknownObjectWeakLoadStrong();
      if (v33)
      {
        v34 = v33;
        [v33 removeAnchor:v31];
      }

      v25 = v27;
      v13 = v30;
      goto LABEL_6;
    }

    sub_100092314(v4, type metadata accessor for ARCameraSource.Tracker.TrackState);
    v25 = v27;
  }

  while (v23);
  while (1)
  {
LABEL_8:
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v27 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v27);
    ++v25;
    if (v23)
    {
      goto LABEL_11;
    }
  }

  v36 = v55;
  v35 = v56;
  v37 = *(v11 + v56);
  *v9 = v37;
  v26(v9, v13, v36);
  v38 = v37;
  v39 = _dispatchPreconditionTest(_:)();
  v40 = v57;
  v57(v9, v36);
  if ((v39 & 1) == 0)
  {
    goto LABEL_26;
  }

  v41 = *(v11 + v35);
  *v9 = v41;
  v26(v9, v13, v36);
  v42 = v41;
  v43 = _dispatchPreconditionTest(_:)();
  v40(v9, v36);
  if ((v43 & 1) == 0)
  {
    goto LABEL_27;
  }

  *(v11 + 48) = &_swiftEmptyDictionarySingleton;

  v44 = *(v11 + v35);
  *v9 = v44;
  v26(v9, v13, v36);
  v45 = v44;
  v46 = _dispatchPreconditionTest(_:)();
  v40(v9, v36);
  if ((v46 & 1) == 0)
  {
    goto LABEL_28;
  }

  v64 = *(v11 + 48);

  sub_1000033A8(&unk_1001D8180, &qword_1001771D0);
  Dictionary.reserveCapacity(_:)(24);
  v47 = v64;
  v48 = *(v11 + v35);
  *v9 = v48;
  v26(v9, v13, v36);
  v49 = v48;
  LOBYTE(v48) = _dispatchPreconditionTest(_:)();
  v40(v9, v36);
  if (v48)
  {
    *(v11 + 48) = v47;

    sub_1000033A8(&qword_1001D80D8, &qword_100177150);
    default argument 0 of CircularBuffer.init(data:index:sizeMax:)();
    default argument 1 of CircularBuffer.init(data:index:sizeMax:)();
    v50 = TimestampDataBuffer.__allocating_init(data:index:sizeMax:)();
    v51 = *(v11 + v35);
    *v9 = v51;
    v26(v9, v13, v36);
    v52 = v51;
    v53 = _dispatchPreconditionTest(_:)();
    v57(v9, v36);
    if ((v53 & 1) == 0)
    {
      goto LABEL_30;
    }

    *(v11 + 56) = v50;

    *(v11 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_lastAnchoredTracksUpdateFrameTime) = 0xFFF0000000000000;

    return;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void **sub_100080BA8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = a1;
  v9 = type metadata accessor for CameraSourceFrameMetadata();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 - 8);
  __chkstk_darwin(v11);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = 0;
  v17 = v5;
  v56 = a4;
  v54 = sub_10008104C(v5, a2, a3, a4);
  v19 = v18;
  if (v18)
  {
    v58 = v18;
    v20 = v18;
    v21 = a2;
    v22 = v55;
  }

  else
  {
    (*(v14 + 16))(v16, a2, a3);
    sub_10005BBC4(0, &qword_1001D7430, ARFrame_ptr);
    v21 = a2;
    if (swift_dynamicCast())
    {
      v23 = v57;
      v24 = [v57 camera];
      [v24 transform];
      v52 = v26;
      v53 = v25;
      v50 = v28;
      v51 = v27;

      v29 = objc_allocWithZone(ARAnchor);
      v30 = [v29 initWithTransform:{*&v53, *&v52, *&v51, *&v50}];

      v58 = v30;
      v22 = v55;
    }

    else
    {
      dispatch thunk of CameraSourceFrame.metadata.getter();
      v31 = CameraSourceFrameMetadata.isHighResolutionStill.getter();
      (*(v10 + 8))(v13, v9);
      v22 = v55;
      if (v31)
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "High resolution still without ARFrame; using fallback anchor", v34, 2u);
        }
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong || (v38 = Strong, v39 = [Strong currentFrame], v38, !v39) || (v40 = objc_msgSend(v39, "camera"), v39, !v40))
        {

          goto LABEL_10;
        }

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&_mh_execute_header, v41, v42, "Using fallback anchor from session.currentFrame", v43, 2u);
        }

        [v40 transform];
        v52 = v45;
        v53 = v44;
        v50 = v47;
        v51 = v46;
        v48 = objc_allocWithZone(ARAnchor);
        v49 = [v48 initWithTransform:{*&v53, *&v52, *&v51, *&v50}];

        v58 = v49;
      }
    }
  }

  __chkstk_darwin(v20);
  v35 = v56;
  *(&v50 - 6) = a3;
  *(&v50 - 5) = v35;
  *(&v50 - 4) = v54;
  *(&v50 - 3) = v17;
  *(&v50 - 2) = &v58;
  *(&v50 - 1) = v21;

  v22 = sub_1000713D8(sub_1000926B8, &v50 - 8, v22);

LABEL_10:
  return v22;
}

uint64_t sub_10008104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000033A8(&qword_1001D8178, &qword_1001771C8);
  OS_dispatch_queue.sync<A>(execute:)();
  return v5;
}

void sub_1000810D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v26 = a4;
  v24 = a3;
  v25 = a2;
  v28 = a5;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = a1;
  v10 = *(a1 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
  *v9 = v10;
  v11 = enum case for DispatchPredicate.onQueue(_:);
  v12 = *(v7 + 104);
  v12(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v13 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v14 = *(v7 + 8);
  v14(v9, v6);
  if (v10)
  {
    *v28 = *(v27 + 48);
    *v9 = v13;
    v12(v9, v11, v6);

    v15 = _dispatchPreconditionTest(_:)();
    v16 = (v14)(v9, v6);
    if (v15)
    {
      __chkstk_darwin(v16);
      v17 = v25;
      v18 = v26;
      *(&v23 - 4) = v24;
      *(&v23 - 3) = v18;
      *(&v23 - 2) = v17;

      v19 = sub_100071970(sub_100092700);
      v21 = v20;

      v22 = v28;
      v28[1] = v19;
      v22[2] = v21;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000812F8(uint64_t *a1, uint64_t a2, uint64_t a3, id *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a3;
  v43 = a7;
  v40 = a5;
  v41 = a6;
  v45 = a4;
  v44 = type metadata accessor for CameraSourceFrameMetadata();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v46 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v19 = &v38 - v18;
  v20 = *a1;
  CVTrackedDetection.id.getter();
  if (*(a2 + 16) && (v21 = sub_100095B4C(v13), (v22 & 1) != 0))
  {
    sub_10009237C(*(a2 + 56) + *(v15 + 72) * v21, v19, type metadata accessor for ARCameraSource.Tracker.TrackState);
    (*(v11 + 8))(v13, v10);
    v23 = v46;
    sub_10009237C(v19, v46, type metadata accessor for ARCameraSource.Tracker.TrackState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100092314(v19, type metadata accessor for ARCameraSource.Tracker.TrackState);
      v24 = type metadata accessor for Corners();
      (*(*(v24 - 8) + 8))(v23, v24);
      v25 = 1;
    }

    else
    {
      v34 = *v23;
      v35 = *(sub_1000033A8(&qword_1001D8100, &qword_100177168) + 48);
      if (*v45)
      {
        v36 = *v45;
        v25 = sub_1000817EC(v36);
      }

      else
      {
        v37 = v39;
        dispatch thunk of CameraSourceFrame.metadata.getter();
        v25 = CameraSourceFrameMetadata.isHighResolutionStill.getter();

        (*(v42 + 8))(v37, v44);
      }

      sub_100092314(v19, type metadata accessor for ARCameraSource.Tracker.TrackState);
      sub_100092314(v23 + v35, type metadata accessor for ARCameraSource.AnchorInformation);
    }
  }

  else
  {
    (*(v11 + 8))(v13, v10);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v49 = v29;
      *v28 = 136315138;
      v48 = v20;
      type metadata accessor for CVTrackedDetection();
      sub_100090580(&qword_1001D8170, &type metadata accessor for CVTrackedDetection, &protocol conformance descriptor for CVTrackedDetection);
      v30 = CVTrackProviding.shortLoggingDescription.getter();
      v32 = sub_1000E0FE0(v30, v31, &v49);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "Did not find tracking information for track %s", v28, 0xCu);
      sub_100006B44(v29);
    }

    v25 = 0;
  }

  return v25 & 1;
}

BOOL sub_1000817EC(void *a1)
{
  [v1 transform];
  v13 = v3;
  [a1 transform];
  v12 = v4;
  [a1 transform];
  v14 = v5;
  [a1 transform];
  v11 = v6;
  [a1 transform];
  v7 = vsub_f32(vdup_lane_s32(*v13.f32, 1).u32[0], vzip2_s32(*v12.f32, v11));
  v8 = vsubq_f32(v13, v12);
  *v8.i8 = vmul_f32(vzip1_s32(*v8.i8, *&vextq_s8(v8, v8, 8uLL)), vsub_f32(0, vzip1_s32(v14, *&vextq_s8(v9, v9, 8uLL))));
  return vadd_f32(vadd_f32(*v8.i8, vmul_lane_f32(v7, v7, 1)), vdup_lane_s32(*v8.i8, 1)).f32[0] > 0.0;
}

void sub_1000818C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = type metadata accessor for CameraSourceFrameMetadata();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v13 - 8);
  v50 = v13;
  __chkstk_darwin(v13);
  v47 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  v15 = __chkstk_darwin(v48);
  v45 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v15);
  v51 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  aBlock[0] = a1;
  v55 = a3;
  v56 = a4;
  v44 = a5;
  v57 = a5;
  v58 = a6;
  v54 = a6;
  v52 = a2;
  v59 = a2;
  type metadata accessor for Array();

  swift_getWitnessTable();
  v22 = _ArrayProtocol.filter(_:)();
  aBlock[0] = v22;
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {

    (*(v17 + 16))(v51, v52, a4);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 134218242;
      *(v25 + 4) = Array.count.getter();

      *(v25 + 12) = 2080;
      v27 = v41;
      v28 = v51;
      dispatch thunk of CameraSourceFrame.metadata.getter();
      v29 = CameraSourceFrameMetadata.timeDescription.getter();
      v31 = v30;
      (*(v42 + 8))(v27, v43);
      (*(v17 + 8))(v28, a4);
      v32 = sub_1000E0FE0(v29, v31, aBlock);

      *(v25 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v23, v24, "Bypassed anchor establishment: filtered %ld to 0 tracks @ %s", v25, 0x16u);
      sub_100006B44(v26);
    }

    else
    {

      (*(v17 + 8))(v51, a4);
    }
  }

  else
  {
    v51 = *(v53 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
    v33 = swift_allocObject();
    swift_weakInit();
    (*(v17 + 16))(v21, v52, a4);
    v34 = (*(v17 + 80) + 64) & ~*(v17 + 80);
    v35 = swift_allocObject();
    *(v35 + 2) = a3;
    *(v35 + 3) = a4;
    v36 = v54;
    *(v35 + 4) = v44;
    *(v35 + 5) = v36;
    *(v35 + 6) = v33;
    *(v35 + 7) = v22;
    (*(v17 + 32))(&v35[v34], v21, a4);
    aBlock[4] = sub_100092674;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B5F04;
    aBlock[3] = &unk_1001C2410;
    v37 = _Block_copy(aBlock);

    v38 = v45;
    static DispatchQoS.unspecified.getter();
    v60 = _swiftEmptyArrayStorage;
    sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
    sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
    v39 = v47;
    v40 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v37);
    (*(v49 + 8))(v39, v40);
    (*(v46 + 8))(v38, v48);
  }
}

BOOL sub_100082000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = type metadata accessor for CVDetection();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of CVTrackProviding.latestDetection.getter();
  CVDetection.timestamp.getter();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  CameraSourceFrame.timestamp.getter();
  return v11 == v12;
}

double sub_100082130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000821D4(a2, a3, a4, a5, a6, a7);
  }

  return result;
}

void sub_1000821D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v439 = a6;
  v494 = a5;
  v433 = a2;
  v491 = a1;
  v9 = sub_1000033A8(&qword_1001D8130, &qword_100177198);
  __chkstk_darwin(v9 - 8);
  v448 = &v405 - v10;
  v444 = type metadata accessor for ARCameraSource.AnchorInformation(0);
  v478 = *(v444 - 8);
  v11 = __chkstk_darwin(v444);
  v426 = &v405 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v442 = &v405 - v14;
  __chkstk_darwin(v13);
  v424 = &v405 - v15;
  v460 = type metadata accessor for Corners();
  v487 = *(v460 - 8);
  __chkstk_darwin(v460);
  v458 = &v405 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000033A8(&qword_1001D8138, &qword_1001771A0);
  __chkstk_darwin(v17 - 8);
  v489 = &v405 - v18;
  v19 = sub_1000033A8(&qword_1001D8128, &qword_100177190);
  v20 = __chkstk_darwin(v19 - 8);
  v425 = &v405 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v432 = &v405 - v23;
  v24 = __chkstk_darwin(v22);
  v437 = &v405 - v25;
  v26 = __chkstk_darwin(v24);
  v420 = &v405 - v27;
  v28 = __chkstk_darwin(v26);
  v451 = &v405 - v29;
  __chkstk_darwin(v28);
  v473 = &v405 - v30;
  v476 = type metadata accessor for UUID();
  v455 = *(v476 - 8);
  v31 = __chkstk_darwin(v476);
  v443 = &v405 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v461 = &v405 - v34;
  v35 = __chkstk_darwin(v33);
  v431 = &v405 - v36;
  v37 = __chkstk_darwin(v35);
  v429 = &v405 - v38;
  __chkstk_darwin(v37);
  v495 = &v405 - v39;
  v481 = type metadata accessor for CVDetection();
  v486 = *(v481 - 8);
  __chkstk_darwin(v481);
  v480 = &v405 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v485 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  v464 = *(v485 - 8);
  v41 = __chkstk_darwin(v485);
  v441 = (v405.i64 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = __chkstk_darwin(v41);
  v422 = (&v405 - v44);
  v45 = __chkstk_darwin(v43);
  v423 = &v405 - v46;
  v47 = __chkstk_darwin(v45);
  v445 = &v405 - v48;
  v49 = __chkstk_darwin(v47);
  v436 = &v405 - v50;
  v51 = __chkstk_darwin(v49);
  v428 = &v405 - v52;
  v53 = __chkstk_darwin(v51);
  v466 = &v405 - v54;
  __chkstk_darwin(v53);
  v483 = &v405 - v55;
  v493 = type metadata accessor for RaycastAccuracy(0);
  v479 = *(v493 - 8);
  v56 = __chkstk_darwin(v493);
  v419 = &v405 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v56);
  v418 = &v405 - v59;
  v60 = __chkstk_darwin(v58);
  v467 = (v405.i64 - v61);
  v488 = *(a3 - 8);
  v62 = __chkstk_darwin(v60);
  v427 = &v405 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v470 = &v405 - v65;
  v408 = v66;
  __chkstk_darwin(v64);
  v471 = &v405 - v67;
  v68 = type metadata accessor for ARCamera.TrackingState();
  v69 = __chkstk_darwin(v68 - 8);
  v430 = &v405 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __chkstk_darwin(v69);
  v477 = &v405 - v72;
  v73 = __chkstk_darwin(v71);
  v475 = (&v405 - v74);
  v434 = a4;
  v438 = *(a4 - 8);
  v75 = __chkstk_darwin(v73);
  v414 = &v405 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __chkstk_darwin(v75);
  v482.i64[0] = &v405 - v78;
  v79 = __chkstk_darwin(v77);
  v490.i64[0] = &v405 - v80;
  v81 = __chkstk_darwin(v79);
  v496.i64[0] = &v405 - v82;
  __chkstk_darwin(v81);
  v84 = &v405 - v83;
  v85 = type metadata accessor for CameraSourceFrameMetadata();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v88 = &v405 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for DispatchPredicate();
  v90 = *(v89 - 8);
  __chkstk_darwin(v89);
  v92 = (v405.i64 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = *(v6 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
  *v92 = v93;
  v94 = *(v90 + 104);
  v500 = enum case for DispatchPredicate.onQueue(_:);
  v499 = v90 + 104;
  v498 = v94;
  v94(v92);
  v474 = v93;
  LOBYTE(v93) = _dispatchPreconditionTest(_:)();
  v95 = *(v90 + 8);
  v501 = v92;
  v503 = v89;
  v502 = v90 + 8;
  v497 = v95;
  v95(v92, v89);
  if ((v93 & 1) == 0)
  {
    goto LABEL_136;
  }

  v504 = v6;
  v96 = sub_100097550(_swiftEmptyArrayStorage);
  v97 = sub_100097630(_swiftEmptyArrayStorage);
  v507 = v96;
  v508 = v97;
  v509 = _swiftEmptyArrayStorage;
  v98 = v433;
  v99 = v434;
  dispatch thunk of CameraSourceFrame.metadata.getter();
  v484 = CameraSourceFrameMetadata.isHighResolutionStill.getter();
  v100 = *(v86 + 8);
  v416 = v88;
  v417 = v85;
  v421 = v86 + 8;
  v415 = v100;
  v100(v88, v85);
  v101 = v438 + 16;
  v102 = *(v438 + 16);
  v102(v84, v98, v99);
  sub_10005BBC4(0, &qword_1001D7430, ARFrame_ptr);
  p_name = &stru_1001CFFF8.name;
  v447 = swift_dynamicCast();
  v412 = v101;
  v411 = v102;
  v492 = a3;
  if (v447)
  {
    v104 = *&v505[0];
    v102(v496.i64[0], v98, v99);
    v105 = v490.i64[0];
    v102(v490.i64[0], v98, v99);
    v468 = v104;
    v106 = v104;

    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      LODWORD(v472) = v108;
      v465 = v106;
      v110 = v109;
      v482.i64[0] = swift_slowAlloc();
      v506 = v482.i64[0];
      *v110 = 134219010;
      *(v110 + 4) = Array.count.getter();

      *(v110 + 12) = 2080;
      v111 = v416;
      v469 = v107;
      v112 = v496.i64[0];
      dispatch thunk of CameraSourceFrame.metadata.getter();
      v113 = CameraSourceFrameMetadata.timeDescription.getter();
      v115 = v114;
      v116 = v417;
      v117 = v415;
      v415(v111, v417);
      v118 = *(v438 + 8);
      v118(v112, v99);
      v119 = sub_1000E0FE0(v113, v115, &v506);
      v120 = v116;

      *(v110 + 14) = v119;
      *(v110 + 22) = 2080;
      v121 = v465;
      v122 = [v465 camera];
      [v122 transform];
      v496 = v123;
      v463 = v124;
      v462 = v125;
      v459 = v126;

      v505[0] = v496;
      v505[1] = v463;
      v505[2] = v462;
      v505[3] = v459;
      type metadata accessor for simd_float4x4(0);
      v127 = String.init<A>(describing:)();
      v129 = sub_1000E0FE0(v127, v128, &v506);

      *(v110 + 24) = v129;
      *(v110 + 32) = 2048;
      v130 = v490.i64[0];
      dispatch thunk of CameraSourceFrame.metadata.getter();
      CameraSourceFrameMetadata.timestamp.getter();
      v132 = v131;
      v117(v111, v120);
      p_name = &stru_1001CFFF8.name;
      v410 = v118;
      v118(v130, v99);
      *(v110 + 34) = v132;
      *(v110 + 42) = 1024;
      v133 = [v121 camera];
      v134 = v475;
      ARCamera.trackingState.getter();

      v135 = type metadata accessor for ARCamera.TrackingState.Reason();
      v136 = v477;
      (*(*(v135 - 8) + 56))(v477, 2, 2, v135);
      LOBYTE(v133) = static ARCamera.TrackingState.== infix(_:_:)();
      sub_100092314(v136, &type metadata accessor for ARCamera.TrackingState);
      sub_100092314(v134, &type metadata accessor for ARCamera.TrackingState);

      *(v110 + 44) = v133 & 1;
      v137 = v469;
      _os_log_impl(&_mh_execute_header, v469, v472, "Establishing %ld tracks @ %s, frame.camera.transform: %s @ %f, frame.camera.trackingState == .normal: %{BOOL}d", v110, 0x30u);
      swift_arrayDestroy();
    }

    else
    {

      v121 = v106;
      v152 = *(v438 + 8);
      v152(v105, v99);
      v410 = v152;
      v152(v496.i64[0], v99);
    }

    v150 = v471;
    v151 = v473;
    v153 = v501;
    v154 = v474;
    *v501 = v474;
    v155 = v503;
    v498(v153, v500, v503);
    v156 = v154;
    LOBYTE(v154) = _dispatchPreconditionTest(_:)();
    v157 = v497(v153, v155);
    if ((v154 & 1) == 0)
    {
      goto LABEL_139;
    }

    __chkstk_darwin(v157);
    v158 = v434;
    *(&v405 - 6) = v492;
    *(&v405 - 5) = v158;
    v159 = v439;
    *(&v405 - 4) = v494;
    *(&v405 - 3) = v159;
    *(&v405 - 2) = v433;

    v160 = sub_100071970(sub_100092534);

    if (v160)
    {
      v161 = [v121 camera];
      [v160 transform];
      [v161 setTransform:?];
    }

    v162 = [v121 camera];
    [v162 transform];
    v457 = v163;
    v482 = v164;
    v490 = v165;
    v496 = v166;

    v167 = vmulq_f32(v457, 0);
    v457 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v457, 0, v482), 0, v490), 0, v496);
    v168 = vmlaq_f32(v167, 0, v482);
    v449 = vmlaq_f32(vaddq_f32(v490, v168), 0, v496);
    __asm { FMOV            V2.4S, #-1.0 }

    v450 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v167, _Q2, v482), 0, v490), 0, v496);
    __asm { FMOV            V0.4S, #-5.0 }

    v446 = vaddq_f32(v496, vmlaq_f32(v168, _Q0, v490));
    v148 = v491;
    v149 = v470;
    a3 = v492;
  }

  else
  {
    v138 = v482.i64[0];
    v102(v482.i64[0], v98, v99);
    v139 = v491;

    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v496.i64[0] = swift_slowAlloc();
      *&v505[0] = v496.i64[0];
      *v142 = 134218242;
      *(v142 + 4) = Array.count.getter();

      *(v142 + 12) = 2080;
      v143 = v416;
      dispatch thunk of CameraSourceFrame.metadata.getter();
      v144 = CameraSourceFrameMetadata.timeDescription.getter();
      v146 = v145;
      v415(v143, v417);
      v410 = *(v438 + 8);
      v410(v138, v99);
      v147 = sub_1000E0FE0(v144, v146, v505);
      p_name = (&stru_1001CFFF8 + 8);
      v148 = v491;

      *(v142 + 14) = v147;
      _os_log_impl(&_mh_execute_header, v140, v141, "Establishing %ld tracks @ %s", v142, 0x16u);
      sub_100006B44(v496.i64[0]);

      v468 = 0;
      v457 = 0u;
      v449 = 0u;
      v450 = 0u;
      v446 = 0u;
      v149 = v470;
      v150 = v471;
      v151 = v473;
    }

    else
    {

      v410 = *(v438 + 8);
      v410(v138, v99);
      v468 = 0;
      v457 = 0u;
      v449 = 0u;
      v450 = 0u;
      v446 = 0u;
      v149 = v470;
      v151 = v473;
      v148 = v139;
      v150 = v471;
    }
  }

  if (!Array.endIndex.getter())
  {
LABEL_119:
    v386 = v507;
    v387 = v508;
    v388 = v509;
    if (sub_1000914FC(v507))
    {
      v389 = v414;
      v390 = v434;
      v411(v414, v433, v434);

      v391 = Logger.logObject.getter();
      v392 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v391, v392))
      {

        v410(v389, v390);
        return;
      }

      v393 = swift_slowAlloc();
      v504 = swift_slowAlloc();
      *&v505[0] = v504;
      *v393 = 134218498;
      *(v393 + 4) = Array.count.getter();

      *(v393 + 12) = 2080;
      sub_10007E124(v386, v387, v388);
      v395 = v394;
      v397 = v396;

      v398 = sub_1000E0FE0(v395, v397, v505);

      *(v393 + 14) = v398;
      *(v393 + 22) = 2080;
      v399 = v416;
      v400 = v414;
      dispatch thunk of CameraSourceFrame.metadata.getter();
      v401 = CameraSourceFrameMetadata.timeDescription.getter();
      v403 = v402;
      v415(v399, v417);
      v410(v400, v390);
      v404 = sub_1000E0FE0(v401, v403, v505);

      *(v393 + 24) = v404;
      _os_log_impl(&_mh_execute_header, v391, v392, "Anchor operations for %ld tracks: %s @ %s", v393, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return;
  }

  v176 = 0;
  v490.i64[0] = v488 + 16;
  *&v462 = OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_logger;
  v482.i64[0] = v488 + 32;
  v477 = (v486 + 1);
  *&v459 = v487 + 1;
  v487 = v479 + 7;
  v479 = (v464 + 56);
  v472 = (v464 + 48);
  v475 = (v455 + 8);
  v486 = (v488 + 8);
  v440 = (v478 + 48);
  v435 = v455 + 16;
  *&v175 = 136315138;
  v413 = v175;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    v179 = v148 + ((*(v488 + 80) + 32) & ~*(v488 + 80)) + *(v488 + 72) * v176;
    v180 = *(v488 + 16);
    v180(v150, v179, a3);
    v177 = (v176 + 1);
    if (__OFADD__(v176, 1))
    {
      goto LABEL_125;
    }

LABEL_21:
    (*v482.i64[0])(v149, v150, a3);
    if (v484)
    {
      v181 = v176;
      v182 = v150;
      v478 = v181;
      v496.i64[0] = v177;
      v183 = *(sub_1000033A8(&qword_1001D8148, &qword_1001771A8) + 48);
      v184 = v480;
      v185 = v149;
      v186 = v151;
      dispatch thunk of CVTrackProviding.latestDetection.getter();
      v187 = v483;
      CVDetection.corners.getter();
      (*v477)(v184, v481);
      *(v187 + v183) = 0;
      v188 = v485;
      swift_storeEnumTagMultiPayload();
      v189 = v185;
      dispatch thunk of CVTrackIdentifying.id.getter();
      sub_10009237C(v187, v151, type metadata accessor for ARCameraSource.Tracker.TrackState);
      v190 = *v479;
      (*v479)(v151, 0, 1, v188);
      v191 = v501;
      v192 = v474;
      *v501 = v474;
      v193 = v503;
      v498(v191, v500, v503);
      v194 = v192;
      LOBYTE(v192) = _dispatchPreconditionTest(_:)();
      v497(v191, v193);
      if ((v192 & 1) == 0)
      {
        goto LABEL_126;
      }

      v195 = *(v504 + 48);
      if ((*v472)(v151, 1, v188) == 1)
      {

        sub_10001370C(v151, &qword_1001D8128, &qword_100177190);
        v196 = v495;
        v197 = sub_100095B4C(v495);
        if (v198)
        {
          v199 = v197;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v505[0] = v195;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1000C2630();
            v195 = *&v505[0];
          }

          v201 = *(v455 + 8);
          v202 = v476;
          v201(v195[6] + *(v455 + 72) * v199, v476);
          v203 = v451;
          sub_1000923E4(v195[7] + *(v464 + 72) * v199, v451, type metadata accessor for ARCameraSource.Tracker.TrackState);
          sub_1000C08B0(v199, v195);
          v201(v495, v202);
          v204 = 0;
          v205 = v485;
          v150 = v471;
          p_name = (&stru_1001CFFF8 + 8);
        }

        else
        {
          (*v475)(v196, v476);
          v204 = 1;
          v203 = v451;
          p_name = (&stru_1001CFFF8 + 8);
          v205 = v485;
          v150 = v182;
        }

        v190(v203, v204, 1, v205);
        sub_10001370C(v203, &qword_1001D8128, &qword_100177190);
        v151 = v473;
        v189 = v470;
        v177 = v496.i64[0];
      }

      else
      {
        sub_1000923E4(v151, v466, type metadata accessor for ARCameraSource.Tracker.TrackState);

        v229 = swift_isUniquelyReferenced_nonNull_native();
        *&v505[0] = v195;
        v230 = sub_100095B4C(v495);
        v232 = v195[2];
        v233 = (v231 & 1) == 0;
        _VF = __OFADD__(v232, v233);
        v234 = v232 + v233;
        p_name = (&stru_1001CFFF8 + 8);
        if (_VF)
        {
          goto LABEL_128;
        }

        v235 = v231;
        if (v195[3] >= v234)
        {
          if ((v229 & 1) == 0)
          {
            v385 = v230;
            sub_1000C2630();
            v230 = v385;
          }
        }

        else
        {
          sub_1000BE6FC(v234, v229);
          v230 = sub_100095B4C(v495);
          if ((v235 & 1) != (v236 & 1))
          {
            goto LABEL_142;
          }
        }

        v177 = v496.i64[0];
        v195 = *&v505[0];
        if (v235)
        {
          sub_100092DE0(v466, *(*&v505[0] + 56) + *(v464 + 72) * v230, type metadata accessor for ARCameraSource.Tracker.TrackState);
          (*v475)(v495, v476);
          v150 = v182;
        }

        else
        {
          *(*&v505[0] + 8 * (v230 >> 6) + 64) |= 1 << v230;
          v240 = v455;
          v241 = v230;
          v242 = v495;
          v243 = v476;
          (*(v455 + 16))(v195[6] + *(v455 + 72) * v230, v495, v476);
          sub_1000923E4(v466, v195[7] + *(v464 + 72) * v241, type metadata accessor for ARCameraSource.Tracker.TrackState);
          (*(v240 + 8))(v242, v243);
          v244 = v195[2];
          _VF = __OFADD__(v244, 1);
          v245 = v244 + 1;
          if (_VF)
          {
            goto LABEL_130;
          }

          v195[2] = v245;
          v150 = v471;
          v151 = v186;
          p_name = (&stru_1001CFFF8 + 8);
        }
      }

      v176 = v478;
      v246 = v501;
      *v501 = v194;
      v247 = v503;
      v498(v246, v500, v503);
      v248 = _dispatchPreconditionTest(_:)();
      v497(v246, v247);
      if ((v248 & 1) == 0)
      {
        goto LABEL_127;
      }

      *(v504 + 48) = v195;

      v249 = v489;
      (*v487)(v489, 1, 1, v493);
      sub_10007DD78(6, v249);
      sub_10001370C(v249, &qword_1001D8138, &qword_1001771A0);
      sub_100092314(v483, type metadata accessor for ARCameraSource.Tracker.TrackState);
      v149 = v189;
      v250 = v189;
      a3 = v492;
      (*v486)(v250, v492);
      goto LABEL_53;
    }

    if (!v468)
    {
      v237 = Logger.logObject.getter();
      v238 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v237, v238))
      {
        v239 = swift_slowAlloc();
        *v239 = 0;
        _os_log_impl(&_mh_execute_header, v237, v238, "Unexpected frame type: not ARFrame and not high-res still", v239, 2u);
      }

      (*v486)(v149, a3);
      goto LABEL_53;
    }

    v206 = v468;
    v207 = v480;
    dispatch thunk of CVTrackProviding.latestDetection.getter();
    v208 = v458;
    CVDetection.corners.getter();
    v463.i64[0] = *v477;
    (v463.i64[0])(v207, v481);
    Corners.center.getter();
    v210 = v209;
    v212 = v211;
    v456.i64[0] = *v459;
    (v456.i64[0])(v208, v460);
    v478 = v206;
    v213 = [v206 raycastQueryFromPoint:2 allowingTarget:2 alignment:{v210, v212}];
    Strong = swift_unknownObjectWeakLoadStrong();
    v496.i64[0] = v177;
    v469 = v213;
    if (!Strong)
    {
      v251 = v149;
      goto LABEL_61;
    }

    v215 = Strong;
    v216 = [Strong raycast:v213];

    sub_10005BBC4(0, &qword_1001D8140, ARRaycastResult_ptr);
    v217 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v217 >> 62))
    {
      if (*((v217 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      goto LABEL_60;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_32:
      if ((v217 & 0xC000000000000001) != 0)
      {
        v220 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v218 = v448;
        v219 = v504;
      }

      else
      {
        v218 = v448;
        v219 = v504;
        if (!*((v217 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_131;
        }

        v220 = *(v217 + 32);
      }

      [v220 worldTransform];
      v454 = v221;
      v453 = v222;
      v452 = v223;
      v463 = v224;
      v225 = v467;
      v226 = v493;
      swift_storeEnumTagMultiPayload();
      v227 = v225;
      v228 = v489;
      sub_10009237C(v227, v489, type metadata accessor for RaycastAccuracy);
      v465 = *v487;
      v465(v228, 0, 1, v226);
      sub_10007DD78(0, v228);

      sub_10001370C(v228, &qword_1001D8138, &qword_1001771A0);
LABEL_68:
      v281 = v149;
      dispatch thunk of CVTrackIdentifying.id.getter();
      v282 = v501;
      v283 = v474;
      *v501 = v474;
      v284 = v503;
      v498(v282, v500, v503);
      v285 = v283;
      LOBYTE(v283) = _dispatchPreconditionTest(_:)();
      v497(v282, v284);
      v151 = v473;
      if ((v283 & 1) == 0)
      {
        goto LABEL_129;
      }

      v286 = *(v219 + 48);
      v287 = v461;
      if (*(v286 + 16))
      {

        v288 = sub_100095B4C(v287);
        if (v289)
        {
          v290 = v423;
          sub_10009237C(*(v286 + 56) + *(v464 + 72) * v288, v423, type metadata accessor for ARCameraSource.Tracker.TrackState);
          v469 = *v475;
          (v469)(v287, v476);

          v291 = v422;
          sub_10009237C(v290, v422, type metadata accessor for ARCameraSource.Tracker.TrackState);
          v149 = v281;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100092314(v290, type metadata accessor for ARCameraSource.Tracker.TrackState);
            sub_100092314(v291, type metadata accessor for ARCameraSource.Tracker.TrackState);
            v218 = v448;
            v151 = v473;
            goto LABEL_75;
          }

          v409 = *v291;
          v362 = sub_1000033A8(&qword_1001D8100, &qword_100177168);
          sub_1000923E4(v291 + *(v362 + 48), v424, type metadata accessor for ARCameraSource.AnchorInformation);
          sub_10009237C(v467, v418, type metadata accessor for RaycastAccuracy);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          a3 = v492;
          if (EnumCaseMultiPayload > 1)
          {
            p_name = (&stru_1001CFFF8 + 8);
            if (EnumCaseMultiPayload == 2)
            {
              (v456.i64[0])(v418, v460);
              v407.i32[0] = 1;
              v374 = 1;
              v364 = 1;
            }

            else
            {
              v407.i32[0] = 0;
              v364 = 0;
LABEL_103:
              v374 = 1;
            }
          }

          else
          {
            p_name = (&stru_1001CFFF8 + 8);
            if (!EnumCaseMultiPayload)
            {
              v364 = 0;
              v407.i32[0] = 1;
              goto LABEL_103;
            }

            (v456.i64[0])(v418, v460);
            v407.i32[0] = 0;
            v374 = 0;
            v364 = 0;
          }

          sub_10009237C(v424, v419, type metadata accessor for RaycastAccuracy);
          v375 = swift_getEnumCaseMultiPayload();
          if (v375 > 1)
          {
            if (v375 == 2)
            {
              (v456.i64[0])(v419, v460);
            }

            else if (v407.i8[0])
            {
LABEL_117:

              sub_100092314(v424, type metadata accessor for ARCameraSource.AnchorInformation);
              sub_100092314(v423, type metadata accessor for ARCameraSource.Tracker.TrackState);
              sub_100092314(v467, type metadata accessor for RaycastAccuracy);
              (*v486)(v149, a3);
              v151 = v473;
              v148 = v491;
              v150 = v471;
              goto LABEL_18;
            }
          }

          else if (v375)
          {
            (v456.i64[0])(v419, v460);
            if (v374)
            {
              goto LABEL_117;
            }
          }

          else if (v364)
          {
            goto LABEL_117;
          }

          v376 = v409;
          [v409 transform];
          v511 = __invert_f4(v510);
          v405 = v511.columns[0];
          v406 = v511.columns[1];
          v407 = v511.columns[2];
          v456 = v511.columns[3];
          v377 = v489;
          sub_10009237C(v467, v489, type metadata accessor for RaycastAccuracy);
          v465(v377, 0, 1, v493);
          sub_10007DD78(3, v377);
          sub_10001370C(v377, &qword_1001D8138, &qword_1001771A0);
          v378 = v509;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v378 = sub_1000950B8(0, *(v378 + 2) + 1, 1, v378);
          }

          v379 = v423;
          v381 = *(v378 + 2);
          v380 = *(v378 + 3);
          if (v381 >= v380 >> 1)
          {
            v378 = sub_1000950B8((v380 > 1), v381 + 1, 1, v378);
          }

          v382 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v405, v463.f32[0]), v406, *v463.f32, 1), v407, v463, 2), v456, v463, 3);
          v383 = vmulq_f32(v382, v382);
          *(v378 + 2) = v381 + 1;
          *&v378[4 * v381 + 32] = sqrtf(v383.f32[2] + vaddv_f32(*v383.f32));
          v509 = v378;
          v384 = swift_unknownObjectWeakLoadStrong();
          [v384 removeAnchor:v376];

          sub_100092314(v424, type metadata accessor for ARCameraSource.AnchorInformation);
          sub_100092314(v379, type metadata accessor for ARCameraSource.Tracker.TrackState);
          v218 = v448;
          v151 = v473;
LABEL_76:
          v292 = objc_allocWithZone(ARAnchor);
          v293 = [v292 initWithTransform:{*v454.i64, *v453.i64, *v452.i64, *v463.i64}];
          v294 = v478;
          sub_100086134(v149, v293, v294, v467, a3, v494, v218);
          if ((*v440)(v218, 1, v444) == 1)
          {
            sub_10001370C(v218, &qword_1001D8130, &qword_100177198);
            v295 = Logger.logObject.getter();
            v296 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v295, v296))
            {
              v297 = swift_slowAlloc();
              *v297 = 0;
              _os_log_impl(&_mh_execute_header, v295, v296, "Could not get anchor points for corners", v297, 2u);
            }

            sub_100092314(v467, type metadata accessor for RaycastAccuracy);
            (*v486)(v149, a3);
          }

          else
          {

            v298 = v218;
            v299 = v426;
            sub_1000923E4(v298, v426, type metadata accessor for ARCameraSource.AnchorInformation);
            v300 = v299;
            v301 = v442;
            sub_1000923E4(v300, v442, type metadata accessor for ARCameraSource.AnchorInformation);
            v302 = *(sub_1000033A8(&qword_1001D8100, &qword_100177168) + 48);
            v303 = v441;
            *v441 = v293;
            sub_10009237C(v301, v303 + v302, type metadata accessor for ARCameraSource.AnchorInformation);
            v304 = v485;
            swift_storeEnumTagMultiPayload();
            v305 = v293;
            dispatch thunk of CVTrackIdentifying.id.getter();
            v306 = v425;
            sub_10009237C(v303, v425, type metadata accessor for ARCameraSource.Tracker.TrackState);
            (*v479)(v306, 0, 1, v304);
            v307 = v501;
            *v501 = v285;
            v308 = v503;
            v498(v307, v500, v503);
            v309 = v285;
            v310 = _dispatchPreconditionTest(_:)();
            v497(v307, v308);
            if ((v310 & 1) == 0)
            {
              goto LABEL_134;
            }

            v311 = *(v504 + 48);
            *&v505[0] = v311;
            if ((*v472)(v306, 1, v304) == 1)
            {

              sub_10001370C(v306, &qword_1001D8128, &qword_100177190);
              v312 = v437;
              v313 = v443;
              sub_1000BD898(v443, v437);
              sub_10001370C(v312, &qword_1001D8128, &qword_100177190);
              (v469)(v313, v476);
              v314 = *&v505[0];
            }

            else
            {
              v349 = v436;
              sub_1000923E4(v306, v436, type metadata accessor for ARCameraSource.Tracker.TrackState);

              v350 = swift_isUniquelyReferenced_nonNull_native();
              v506 = v311;
              v351 = v443;
              sub_1000C0F74(v349, v443, v350);
              (v469)(v351, v476);
              v314 = v506;
              *&v505[0] = v506;
            }

            v352 = v473;
            v353 = v470;
            v354 = v501;
            *v501 = v309;
            v355 = v503;
            v498(v354, v500, v503);
            v356 = _dispatchPreconditionTest(_:)();
            v497(v354, v355);
            if ((v356 & 1) == 0)
            {
              goto LABEL_135;
            }

            *(v504 + 48) = v314;

            v357 = v442;
            v358 = v489;
            sub_10009237C(v442, v489, type metadata accessor for RaycastAccuracy);
            v465(v358, 0, 1, v493);
            sub_10007DD78(2, v358);
            v359 = v358;
            v151 = v352;
            sub_10001370C(v359, &qword_1001D8138, &qword_1001771A0);
            v360 = swift_unknownObjectWeakLoadStrong();
            [v360 addAnchor:v305];

            sub_100092314(v441, type metadata accessor for ARCameraSource.Tracker.TrackState);
            sub_100092314(v357, type metadata accessor for ARCameraSource.AnchorInformation);
            sub_100092314(v467, type metadata accessor for RaycastAccuracy);
            v149 = v353;
            v361 = v353;
            a3 = v492;
            (*v486)(v361, v492);
          }

          v148 = v491;
          v150 = v471;
LABEL_17:
          p_name = &stru_1001CFFF8.name;
          v177 = v496.i64[0];
          goto LABEL_18;
        }
      }

      v469 = *v475;
      (v469)(v287, v476);
      v149 = v281;
LABEL_75:
      a3 = v492;
      goto LABEL_76;
    }

LABEL_60:
    v251 = v149;
LABEL_61:
    v253 = v489;
    v465 = *v487;
    v465(v489, 1, 1, v493);
    sub_10007DD78(1, v253);
    sub_10001370C(v253, &qword_1001D8138, &qword_1001771A0);
    v254 = v478;
    v255 = [v478 p_name[189]];
    [v255 imageResolution];

    v256 = [v254 p_name[189]];
    [v256 imageResolution];

    CGPoint.scale(to:)();
    if (!v447)
    {
      goto LABEL_141;
    }

    v257 = [v254 p_name[189]];
    v258 = ARCamera.unprojectPoint(_:ontoPlane:orientation:viewportSize:)();
    v260 = v259;
    v262 = v261;

    v149 = v251;
    if (v262)
    {
      v263 = *(sub_1000033A8(&qword_1001D8148, &qword_1001771A8) + 48);
      v264 = v480;
      a3 = v492;
      dispatch thunk of CVTrackProviding.latestDetection.getter();
      v265 = v445;
      CVDetection.corners.getter();
      (v463.i64[0])(v264, v481);
      *(v265 + v263) = 2;
      v266 = v485;
      swift_storeEnumTagMultiPayload();
      v267 = v431;
      dispatch thunk of CVTrackIdentifying.id.getter();
      v268 = v432;
      sub_10009237C(v265, v432, type metadata accessor for ARCameraSource.Tracker.TrackState);
      (*v479)(v268, 0, 1, v266);
      v269 = v501;
      v270 = v474;
      *v501 = v474;
      v271 = v503;
      v498(v269, v500, v503);
      v272 = v270;
      LOBYTE(v270) = _dispatchPreconditionTest(_:)();
      v497(v269, v271);
      if ((v270 & 1) == 0)
      {
        goto LABEL_132;
      }

      v463.i64[0] = v272;
      v273 = v504;
      v274 = *(v504 + 48);
      *&v505[0] = v274;
      if ((*v472)(v268, 1, v266) == 1)
      {

        sub_10001370C(v268, &qword_1001D8128, &qword_100177190);
        v275 = v437;
        sub_1000BD898(v267, v437);
        sub_10001370C(v275, &qword_1001D8128, &qword_100177190);
        (*v475)(v267, v476);
        v276 = *&v505[0];
      }

      else
      {
        v329 = v436;
        sub_1000923E4(v268, v436, type metadata accessor for ARCameraSource.Tracker.TrackState);

        v330 = swift_isUniquelyReferenced_nonNull_native();
        v506 = v274;
        sub_1000C0F74(v329, v267, v330);
        (*v475)(v267, v476);
        v276 = v506;
        *&v505[0] = v506;
      }

      v331 = v470;
      v332 = v501;
      *v501 = v463.i64[0];
      v333 = v503;
      v498(v332, v500, v503);
      v334 = _dispatchPreconditionTest(_:)();
      v497(v332, v333);
      if ((v334 & 1) == 0)
      {
        goto LABEL_133;
      }

      *(v273 + 48) = v276;

      v335 = v489;
      v465(v489, 1, 1, v493);
      sub_10007DD78(6, v335);
      sub_10001370C(v335, &qword_1001D8138, &qword_1001771A0);
      v336 = v427;
      v180(v427, v331, a3);
      v337 = Logger.logObject.getter();
      v338 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v337, v338))
      {

        v348 = *v486;
        (*v486)(v336, a3);
        sub_100092314(v445, type metadata accessor for ARCameraSource.Tracker.TrackState);
        v348(v331, a3);
        v149 = v331;
        v150 = v471;
        v151 = v473;
        p_name = (&stru_1001CFFF8 + 8);
        v177 = v496.i64[0];
LABEL_53:
        v148 = v491;
        goto LABEL_18;
      }

      v339 = swift_slowAlloc();
      v340 = v336;
      v341 = swift_slowAlloc();
      *&v505[0] = v341;
      *v339 = v413;
      v342 = CVTrackProviding.shortLoggingDescription.getter();
      v344 = v343;
      v345 = *v486;
      (*v486)(v340, a3);
      v346 = v342;
      v149 = v470;
      v347 = sub_1000E0FE0(v346, v344, v505);

      *(v339 + 4) = v347;
      _os_log_impl(&_mh_execute_header, v337, v338, "Storing track %s as unanchored due to unprojectPoint failure", v339, 0xCu);
      sub_100006B44(v341);

      sub_100092314(v445, type metadata accessor for ARCameraSource.Tracker.TrackState);
      v345(v149, a3);
      v148 = v491;
      v150 = v471;
      v151 = v473;
      goto LABEL_17;
    }

    v277 = [v254 p_name[189]];
    v278 = v430;
    ARCamera.trackingState.getter();

    v279 = type metadata accessor for ARCamera.TrackingState.Reason();
    if ((*(*(v279 - 8) + 48))(v278, 2, v279) == 2)
    {

      v280.i64[1] = __PAIR64__(1.0, v260);
      v280.i64[0] = v258;
      v463 = v280;
      sub_100092314(v278, &type metadata accessor for ARCamera.TrackingState);
      *v467 = 0x4014000000000000;
      swift_storeEnumTagMultiPayload();
      v454 = v457;
      v453 = v449;
      v452 = v450;
      v219 = v504;
      v218 = v448;
      v177 = v496.i64[0];
      goto LABEL_68;
    }

    sub_100092314(v278, &type metadata accessor for ARCamera.TrackingState);
    v315 = *(sub_1000033A8(&qword_1001D8148, &qword_1001771A8) + 48);
    v316 = v480;
    v317 = v492;
    dispatch thunk of CVTrackProviding.latestDetection.getter();
    v318 = v428;
    CVDetection.corners.getter();
    (v463.i64[0])(v316, v481);
    *(v318 + v315) = 1;
    v319 = v485;
    swift_storeEnumTagMultiPayload();
    dispatch thunk of CVTrackIdentifying.id.getter();
    v320 = v420;
    sub_10009237C(v318, v420, type metadata accessor for ARCameraSource.Tracker.TrackState);
    (*v479)(v320, 0, 1, v319);
    v321 = v501;
    v322 = v474;
    *v501 = v474;
    v323 = v503;
    v498(v321, v500, v503);
    v324 = v322;
    LOBYTE(v322) = _dispatchPreconditionTest(_:)();
    v497(v321, v323);
    if ((v322 & 1) == 0)
    {
      goto LABEL_137;
    }

    v325 = *(v504 + 48);
    *&v505[0] = v325;
    if ((*v472)(v320, 1, v319) == 1)
    {

      sub_10001370C(v320, &qword_1001D8128, &qword_100177190);
      v326 = v437;
      v327 = v429;
      sub_1000BD898(v429, v437);
      sub_10001370C(v326, &qword_1001D8128, &qword_100177190);
      (*v475)(v327, v476);
      v328 = *&v505[0];
    }

    else
    {
      v365 = v436;
      sub_1000923E4(v320, v436, type metadata accessor for ARCameraSource.Tracker.TrackState);

      v366 = swift_isUniquelyReferenced_nonNull_native();
      v506 = v325;
      v367 = v429;
      sub_1000C0F74(v365, v429, v366);
      (*v475)(v367, v476);
      v328 = v506;
      *&v505[0] = v506;
    }

    v368 = v470;
    v151 = v473;
    v150 = v471;
    v369 = v501;
    *v501 = v324;
    v370 = v503;
    v498(v369, v500, v503);
    v371 = _dispatchPreconditionTest(_:)();
    v497(v369, v370);
    if ((v371 & 1) == 0)
    {
      goto LABEL_138;
    }

    *(v504 + 48) = v328;

    v372 = v489;
    v465(v489, 1, 1, v493);
    sub_10007DD78(6, v372);

    sub_10001370C(v372, &qword_1001D8138, &qword_1001771A0);
    sub_100092314(v428, type metadata accessor for ARCameraSource.Tracker.TrackState);
    v149 = v368;
    v373 = v368;
    a3 = v317;
    (*v486)(v373, v317);
    v177 = v496.i64[0];
    v148 = v491;
    p_name = (&stru_1001CFFF8 + 8);
LABEL_18:
    ++v176;
    if (v177 == Array.endIndex.getter())
    {
      goto LABEL_119;
    }
  }

  v252 = _ArrayBuffer._getElementSlowPath(_:)();
  if (v408 != 8)
  {
    goto LABEL_140;
  }

  *&v505[0] = v252;
  v180 = *v490.i64[0];
  (*v490.i64[0])(v150, v505, a3);
  swift_unknownObjectRelease();
  v177 = (v176 + 1);
  if (!__OFADD__(v176, 1))
  {
    goto LABEL_21;
  }

LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100086134(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v57.i64[0] = a6;
  v56.i64[0] = a5;
  v55.i64[0] = a1;
  v58.i64[0] = type metadata accessor for Corners();
  v12 = *(v58.i64[0] - 8);
  __chkstk_darwin(v58.i64[0]);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for CVDetection();
  *&v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RaycastAccuracy(0);
  __chkstk_darwin(v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009237C(a4, v19, type metadata accessor for RaycastAccuracy);
  if (swift_getEnumCaseMultiPayload() - 1 < 2)
  {
    (*(v12 + 8))(v19, v58.i64[0]);
    sub_10009237C(a4, a7, type metadata accessor for RaycastAccuracy);
    v20 = type metadata accessor for ARCameraSource.AnchorInformation(0);
    v21 = v20;
    *(a7 + *(v20 + 20)) = 0;
LABEL_18:
    (*(*(v20 - 8) + 56))(a7, 0, 1, v21);
    return;
  }

  v60 = a4;
  v51 = a7;
  v54 = v7;
  v22 = [a3 camera];
  [v22 imageResolution];

  v59 = a3;
  v23 = [a3 camera];
  [v23 imageResolution];

  dispatch thunk of CVTrackProviding.latestDetection.getter();
  CVDetection.corners.getter();
  (*(v52 + 8))(v16, v53);
  v24 = Corners.allPointsClockwise.getter();
  (*(v12 + 8))(v14, v58.i64[0]);
  v26 = *(v24 + 16);
  v50 = v24;
  if (v26)
  {
    v53 = OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_logger;
    v27 = v24 + 40;
    v28 = _swiftEmptyArrayStorage;
    p_name = (&stru_1001CFFF8 + 8);
    *&v25 = 134218240;
    v52 = v25;
    do
    {
      CGPoint.scale(to:)();
      v32 = v31;
      v34 = v33;
      v35 = [v59 camera];
      [a2 p_name[216]];
      v36 = ARCamera.unprojectPoint(_:ontoPlane:orientation:viewportSize:)();
      v38 = v37;
      v40 = v39;

      if (v40)
      {
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = v52;
          *(v43 + 4) = v32;
          *(v43 + 12) = 2048;
          *(v43 + 14) = v34;
          _os_log_impl(&_mh_execute_header, v41, v42, "Could not get corner anchor point - (%f, %f).", v43, 0x16u);
        }
      }

      else
      {
        [a2 p_name[216]];
        v62 = __invert_f4(v61);
        v55 = v62.columns[0];
        v56 = v62.columns[1];
        v57 = v62.columns[3];
        v58 = v62.columns[2];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1000951BC(0, *(v28 + 2) + 1, 1, v28);
        }

        v45 = *(v28 + 2);
        v44 = *(v28 + 3);
        if (v45 >= v44 >> 1)
        {
          v28 = sub_1000951BC((v44 > 1), v45 + 1, 1, v28);
        }

        v46.i64[0] = v36;
        v46.i64[1] = v38;
        v47 = vaddq_f32(v57, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_f32(vdupq_n_s32(v36), v55), v56, v36, 1), v58, v46, 2));
        v47.i32[3] = 0;
        *(v28 + 2) = v45 + 1;
        *&v28[16 * v45 + 32] = v47;
      }

      v30 = v60;
      v27 += 16;
      --v26;
      p_name = &stru_1001CFFF8.name;
    }

    while (v26);
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
    v30 = v60;
  }

  if (*(v28 + 2) == 4)
  {
    v48 = v30;
    a7 = v51;
    sub_10009237C(v48, v51, type metadata accessor for RaycastAccuracy);
    v20 = type metadata accessor for ARCameraSource.AnchorInformation(0);
    v21 = v20;
    *(a7 + *(v20 + 20)) = v28;
    goto LABEL_18;
  }

  v49 = type metadata accessor for ARCameraSource.AnchorInformation(0);
  (*(*(v49 - 8) + 56))(v51, 1, 1, v49);
}

double sub_100086738(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_10009252C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C23C0;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);

  return result;
}

void sub_100086A50(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000033A8(&qword_1001D8128, &qword_100177190);
  __chkstk_darwin(v3 - 8);
  v84 = &v76 - v4;
  v102 = type metadata accessor for DispatchPredicate();
  v5 = *(v102 - 8);
  __chkstk_darwin(v102);
  v7 = (&v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = type metadata accessor for UUID();
  v78 = *(v97 - 8);
  v8 = __chkstk_darwin(v97);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v76 - v11;
  v91 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  v85 = *(v91 - 8);
  v13 = __chkstk_darwin(v91);
  v83 = (&v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v82 = &v76 - v16;
  __chkstk_darwin(v15);
  v90 = &v76 - v17;
  v18 = type metadata accessor for CVTrackSnapshot();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v103 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v22 = Strong;
  v88 = v10;
  v105 = _swiftEmptyArrayStorage;
  v77 = a2;
  v23 = *(a2 + 16);
  sub_100087508(v23);
  v76 = v23;
  if (v23)
  {
    v101 = OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue;
    v25 = *(v19 + 16);
    v24 = v19 + 16;
    v26 = v77 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v92 = *(v24 + 56);
    v99 = (v5 + 8);
    v100 = (v5 + 104);
    v27 = v25;
    v96 = (v78 + 8);
    v80 = (v85 + 56);
    v98 = enum case for DispatchPredicate.onQueue(_:);
    v95 = v24;
    v93 = (v24 - 8);
    v28 = v76;
    v81 = v12;
    v87 = v22;
    v94 = v18;
    v79 = v25;
    v25(v103, v26, v18);
    while (1)
    {
      CVTrackSnapshot.id.getter();
      v30 = v100;
      v31 = *(v22 + v101);
      *v7 = v31;
      v32 = *v30;
      v33 = v22;
      v34 = v102;
      (*v30)(v7, v98, v102);
      v35 = v31;
      v36 = _dispatchPreconditionTest(_:)();
      v37 = *v99;
      (*v99)(v7, v34);
      if ((v36 & 1) == 0)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v64 = _CocoaArrayWrapper.endIndex.getter();
        if (!v64)
        {
          goto LABEL_36;
        }

LABEL_26:
        if (v64 >= 1)
        {

          v65 = 0;
          do
          {
            if ((v37 & 0xC000000000000001) != 0)
            {
              v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v66 = *(v37 + 8 * v65 + 32);
            }

            v67 = v66;
            ++v65;
            v68 = swift_unknownObjectWeakLoadStrong();
            [v68 removeAnchor:v67];
          }

          while (v64 != v65);
          goto LABEL_37;
        }

        __break(1u);
LABEL_49:
        __break(1u);
        return;
      }

      v38 = *(v33 + 48);
      v22 = v33;
      if (!*(v38 + 16))
      {
        goto LABEL_5;
      }

      v39 = sub_100095B4C(v12);
      if ((v40 & 1) == 0)
      {
        break;
      }

      v41 = *(v38 + 56);
      v86 = *(v85 + 72);
      v42 = v82;
      sub_10009237C(v41 + v86 * v39, v82, type metadata accessor for ARCameraSource.Tracker.TrackState);
      v89 = *v96;
      v89(v12, v97);

      v43 = v90;
      sub_1000923E4(v42, v90, type metadata accessor for ARCameraSource.Tracker.TrackState);
      v44 = v83;
      sub_10009237C(v43, v83, type metadata accessor for ARCameraSource.Tracker.TrackState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100092314(v44, type metadata accessor for ARCameraSource.Tracker.TrackState);
      }

      else
      {
        v45 = *v44;
        v46 = sub_1000033A8(&qword_1001D8100, &qword_100177168);
        sub_100092314(v44 + *(v46 + 48), type metadata accessor for ARCameraSource.AnchorInformation);
        v47 = v45;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v48 = v88;
      CVTrackSnapshot.id.getter();
      v49 = v87;
      v50 = v102;
      v51 = *(v87 + v101);
      *v7 = v51;
      v32(v7, v98, v50);
      v52 = v51;
      LOBYTE(v51) = _dispatchPreconditionTest(_:)();
      (v37)(v7, v50);
      v53 = v84;
      if ((v51 & 1) == 0)
      {
        goto LABEL_33;
      }

      v54 = *(v49 + 48);

      v55 = sub_100095B4C(v48);
      if (v56)
      {
        v57 = v55;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v104 = v54;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1000C2630();
          v54 = v104;
        }

        v59 = v89;
        v89((*(v54 + 48) + *(v78 + 72) * v57), v97);
        sub_1000923E4(*(v54 + 56) + v57 * v86, v53, type metadata accessor for ARCameraSource.Tracker.TrackState);
        sub_1000C08B0(v57, v54);
        v59(v88, v97);
        v60 = 0;
        v49 = v87;
      }

      else
      {
        v89(v48, v97);
        v60 = 1;
      }

      v12 = v81;
      (*v80)(v53, v60, 1, v91);
      sub_10001370C(v53, &qword_1001D8128, &qword_100177190);
      v61 = v102;
      v62 = *(v49 + v101);
      *v7 = v62;
      v32(v7, v98, v61);
      v63 = v62;
      LOBYTE(v62) = _dispatchPreconditionTest(_:)();
      (v37)(v7, v61);
      sub_100092314(v90, type metadata accessor for ARCameraSource.Tracker.TrackState);
      v29 = v94;
      (*v93)(v103, v94);
      if ((v62 & 1) == 0)
      {
        goto LABEL_34;
      }

      *(v49 + 48) = v54;

      v22 = v49;
      v27 = v79;
LABEL_6:
      v26 += v92;
      if (!--v28)
      {
        goto LABEL_24;
      }

      v27(v103, v26, v29);
    }

LABEL_5:
    (*v96)(v12, v97);
    v29 = v94;
    (*v93)(v103, v94);
    goto LABEL_6;
  }

LABEL_24:
  v37 = v105;
  v7 = (v105 >> 62);
  if (v105 >> 62)
  {
    goto LABEL_35;
  }

  v64 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v64)
  {
    goto LABEL_26;
  }

LABEL_36:

LABEL_37:
  swift_bridgeObjectRetain_n();

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 134218496;
    if (v7)
    {
      v72 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v72 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v71 + 4) = v72;

    *(v71 + 12) = 2048;
    if (v7)
    {
      v73 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v73 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v74 = v76 - v73;
    if (__OFSUB__(v76, v73))
    {
      goto LABEL_49;
    }

    v75 = v76;
    *(v71 + 14) = v74;

    *(v71 + 22) = 2048;
    *(v71 + 24) = v75;

    _os_log_impl(&_mh_execute_header, v69, v70, "Removed %ld anchored tracks and %ld unanchored tracks from %ld total tracks", v71, 0x20u);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_100087508(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

double sub_1000875A4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_100092508;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C2370;
  v12 = _Block_copy(aBlock);

  v13 = a1;
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v17 + 8))(v6, v4);
  (*(v7 + 8))(v9, v16);

  return result;
}

double sub_1000878B8(uint64_t a1, char *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100087918(a2);
  }

  return result;
}

void sub_100087918(char *a1)
{
  v305 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  v300 = *(v305 - 8);
  v5 = __chkstk_darwin(v305);
  v7 = &v249 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v299 = &v249 - v8;
  v9 = sub_1000033A8(&qword_1001D8090, &qword_100177128);
  v10 = __chkstk_darwin(v9 - 8);
  v302 = &v249 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v301 = &v249 - v12;
  v264 = type metadata accessor for Corners();
  v258 = *(v264 - 8);
  v13 = __chkstk_darwin(v264);
  v263 = &v249 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v279 = &v249 - v15;
  v291 = type metadata accessor for CVTrackedDetection.Prediction();
  v266 = *(v291 - 8);
  v16 = __chkstk_darwin(v291);
  v262 = &v249 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v261 = &v249 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v249 - v21;
  __chkstk_darwin(v20);
  v267 = &v249 - v23;
  v286 = sub_1000033A8(&qword_1001D8098, &unk_100177130);
  v285 = *(v286 - 8);
  __chkstk_darwin(v286);
  v284 = &v249 - v24;
  v283 = sub_1000033A8(&unk_1001D80A0, &qword_100178A00);
  __chkstk_darwin(v283);
  v282 = &v249 - v25;
  v281 = type metadata accessor for ARCameraSource.AnchorInformation(0);
  __chkstk_darwin(v281);
  v280 = &v249 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v309 = type metadata accessor for UUID();
  v304 = *(v309 - 8);
  v27 = __chkstk_darwin(v309);
  v268 = &v249 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v306 = &v249 - v30;
  v31 = __chkstk_darwin(v29);
  v292 = (&v249 - v32);
  v33 = __chkstk_darwin(v31);
  v257 = &v249 - v34;
  v35 = __chkstk_darwin(v33);
  v303 = &v249 - v36;
  __chkstk_darwin(v35);
  v278 = &v249 - v37;
  v38 = type metadata accessor for ARCamera.TrackingState();
  v39 = __chkstk_darwin(v38 - 8);
  v41 = &v249 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v43 = &v249 - v42;
  p_name = type metadata accessor for DispatchPredicate();
  v45 = *(p_name - 8);
  __chkstk_darwin(p_name);
  v47 = (v249.n128_u64 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v295 = v1;
  v48 = *(v1 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_workQueue);
  *v47 = v48;
  v49 = *(v45 + 104);
  v288 = enum case for DispatchPredicate.onQueue(_:);
  v270 = v45 + 104;
  v287 = v49;
  v49(v47);
  v50 = v48;
  v51 = _dispatchPreconditionTest(_:)();
  v52 = *(v45 + 8);
  v271 = v47;
  v273 = p_name;
  v272 = v45 + 8;
  v269 = v52;
  v52(v47, p_name);
  if ((v51 & 1) == 0)
  {
    goto LABEL_107;
  }

  *&v307 = v7;
  p_name = &stru_1001CFFF8.name;
  v53 = [a1 camera];
  ARCamera.trackingState.getter();

  v54 = type metadata accessor for ARCamera.TrackingState.Reason();
  (*(*(v54 - 8) + 56))(v41, 2, 2, v54);
  LOBYTE(v53) = static ARCamera.TrackingState.== infix(_:_:)();
  sub_100092314(v41, &type metadata accessor for ARCamera.TrackingState);
  sub_100092314(v43, &type metadata accessor for ARCamera.TrackingState);
  if (v53)
  {
    v55 = OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_lastAnchoredTracksUpdateFrameTime;
    v56 = v295;
    v57 = *(v295 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_lastAnchoredTracksUpdateFrameTime);
    [a1 timestamp];
    if (v57 >= v58)
    {
      v162 = a1;

      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        *v165 = 134218240;
        v166 = *(v56 + v55);
        *(v165 + 4) = v166;
        *(v165 + 12) = 2048;
        [v162 timestamp];
        *(v165 + 14) = v166 - v167;
        _os_log_impl(&_mh_execute_header, v163, v164, "Received frame @ %f that is %f older than the last frame processed.", v165, 0x16u);
      }

      return;
    }

    [a1 timestamp];
    *(v56 + v55) = v59;
    v60 = [a1 anchors];
    sub_10005BBC4(0, &qword_1001D7D58, ARAnchor_ptr);
    v289 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v61 = v271;
    *v271 = v50;
    v62 = v273;
    v287(v61, v288, v273);
    v63 = v50;
    LOBYTE(v60) = _dispatchPreconditionTest(_:)();
    v269(v61, v62);
    if ((v60 & 1) == 0)
    {
      goto LABEL_112;
    }

    v64 = *(v56 + 80);
    v298 = *(v56 + 48);

    v65 = [a1 camera];
    [v65 imageResolution];
    v67 = v66;

    v68 = [a1 camera];
    [v68 imageResolution];
    v70 = v69;

    *&v308 = v64;
    if ((v64 - 1) >= 2)
    {
      v2 = v67;
    }

    else
    {
      v2 = v70;
    }

    if ((v64 - 1) >= 2)
    {
      v3 = v70;
    }

    else
    {
      v3 = v67;
    }

    if (v3 <= 0.0 || v2 <= 0.0)
    {
      goto LABEL_119;
    }

    v276 = sub_100089CC4(v298);
    sub_100090580(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v293 = Dictionary.init(minimumCapacity:)();
    v316 = &_swiftEmptyDictionarySingleton;
    v71 = v271;
    *v271 = v63;
    v72 = v273;
    v287(v71, v288, v273);
    p_name = v63;
    v73 = _dispatchPreconditionTest(_:)();
    v74 = v269;
    v269(v71, v72);
    if ((v73 & 1) == 0)
    {
      goto LABEL_113;
    }

    v256 = v22;

    v75 = dispatch thunk of CircularBuffer.count.getter();

    sub_1000033A8(&qword_1001D80B0, &qword_100177140);
    Dictionary.reserveCapacity(_:)(v75);
    v250 = p_name;
    *v71 = p_name;
    v287(v71, v288, v72);
    LOBYTE(v75) = _dispatchPreconditionTest(_:)();
    v74(v71, v72);
    if (v75)
    {

      sub_100071594(v76, &v316);

      p_name = v289;
      if (!(v289 >> 62))
      {
        v77 = *((v289 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
        v78 = v309;
        v259 = a1;
        v79 = v276;
        if (v77)
        {
          v255 = OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_logger;
          v297 = (p_name & 0xC000000000000001);
          v296 = v295 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_configuration;
          swift_beginAccess();
          v80 = 0;
          v275 = p_name & 0xFFFFFFFFFFFFFF8;
          v274 = p_name + 32;
          v294 = (v304 + 8);
          v260 = (v304 + 32);
          v252 = (v266 + 16);
          v251 = (v266 + 8);
          v81.n128_u64[0] = 136315138;
          v249 = v81;
          v277 = v77;
          v254 = v2;
          v253 = v3;
          do
          {
            if (v297)
            {
              v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v80 >= *(v275 + 16))
              {
                goto LABEL_106;
              }

              v91 = *(v274 + 8 * v80);
            }

            v92 = v91;
            v93 = __OFADD__(v80++, 1);
            if (v93)
            {
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
LABEL_107:
              __break(1u);
LABEL_108:
              __break(1u);
LABEL_109:
              __break(1u);
LABEL_110:
              __break(1u);
LABEL_111:
              __break(1u);
LABEL_112:
              __break(1u);
LABEL_113:
              __break(1u);
              goto LABEL_114;
            }

            if (*(v296 + *(type metadata accessor for CameraControllerConfiguration(0) + 36)) == 1)
            {
              v94 = [v92 name];
              if (v94)
              {
                v95 = v94;
                v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v98 = v97;

                if (v96 == 0x636E41656D617266 && v98 == 0xEB00000000726F68)
                {

                  v101 = v294;
LABEL_44:
                  v131 = [v92 identifier];
                  v132 = v278;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v133 = v316;
                  if (v316[2] && (v134 = sub_100095B4C(v132), (v135 & 1) != 0))
                  {
                    v136 = v133[7] + 16 * v134;
                    v137 = *(v136 + 8);
                    v138 = *v101;
                    v310.i64[0] = *v136;
                    (v138)(v132, v78);
                    v139 = v271;
                    v140 = v250;
                    *v271 = v250;
                    v141 = v273;
                    v287(v139, v288, v273);
                    v142 = v140;
                    LOBYTE(v140) = _dispatchPreconditionTest(_:)();
                    v143 = (v269)(v139, v141);
                    if ((v140 & 1) == 0)
                    {
                      goto LABEL_111;
                    }

                    v313 = v92;
                    v314 = v137;
                    sub_10009244C(v143, v144, v145);

                    default argument 1 of TimestampDataBuffer.insert(_:replacementFunction:)();
                    TimestampDataBuffer.insert(_:replacementFunction:)();

                    v146 = v315;
                    if (!v315)
                    {

                      goto LABEL_58;
                    }

                    v147 = [v315 identifier];
                    v148 = v303;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    v149 = [v92 identifier];
                    v150 = v257;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    sub_100090580(&qword_1001D80D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                    LOBYTE(v149) = dispatch thunk of static Equatable.== infix(_:_:)();
                    (v138)(v150, v78);
                    (v138)(v148, v78);
                    if (v149)
                    {

                      p_name = v289;
LABEL_58:
                      v77 = v277;
                      continue;
                    }

                    Strong = swift_unknownObjectWeakLoadStrong();
                    p_name = v289;
                    v77 = v277;
                    if (!Strong)
                    {

LABEL_51:
                      continue;
                    }

                    v161 = Strong;
                    [Strong removeAnchor:v146];
                  }

                  else
                  {
                    a1 = *v101;
                    (*v101)(v132, v78);
                    v92 = v92;
                    v146 = Logger.logObject.getter();
                    v151 = static os_log_type_t.error.getter();

                    if (!os_log_type_enabled(v146, v151))
                    {
                      goto LABEL_51;
                    }

                    v82 = swift_slowAlloc();
                    v83 = swift_slowAlloc();
                    v315 = v83;
                    *v82 = v249.n128_u32[0];
                    v84 = [v92 identifier];
                    v85 = v303;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    sub_100090580(&qword_1001D80C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                    v86 = dispatch thunk of CustomStringConvertible.description.getter();
                    v88 = v87;
                    v89 = v85;
                    p_name = v289;
                    (a1)(v89, v309);
                    v90 = sub_1000E0FE0(v86, v88, &v315);
                    v79 = v276;

                    *(v82 + 4) = v90;
                    _os_log_impl(&_mh_execute_header, v146, v151, "Received invalid updated for %s", v82, 0xCu);
                    sub_100006B44(v83);
                    v77 = v277;

                    v78 = v309;
                  }

LABEL_20:

                  continue;
                }

                v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v101 = v294;
                if (v100)
                {
                  goto LABEL_44;
                }
              }
            }

            if (!*(v79 + 16))
            {
              goto LABEL_20;
            }

            v102 = sub_100095ED8(v92);
            if ((v103 & 1) == 0)
            {
              goto LABEL_20;
            }

            v290 = v80;
            v104 = *(v79 + 56) + *(v285 + 72) * v102;
            v105 = v284;
            sub_1000138BC(v104, v284, &qword_1001D8098, &unk_100177130);
            v106 = *(v286 + 48);
            v107 = v283;
            v108 = *(v283 + 48);
            v109 = v78;
            v110 = *v260;
            a1 = v282;
            (*v260)(v282, v105, v109);
            v111 = v105 + v106;
            v112 = v280;
            sub_1000923E4(v111, &a1[v108], type metadata accessor for ARCameraSource.AnchorInformation);
            v113 = *(v107 + 48);
            v114 = v292;
            v110(v292, a1, v109);
            sub_1000923E4(&a1[v113], v112, type metadata accessor for ARCameraSource.AnchorInformation);
            v115 = *(v112 + *(v281 + 20));
            if (v115)
            {
              v116 = v115[1].i64[0];
              a1 = v259;
              v80 = v290;
              if (v116)
              {
                v315 = _swiftEmptyArrayStorage;
                sub_100059610(0, v116, 0);
                v117 = v315;
                v118 = v115 + 2;
                p_name = &stru_1001CFFF8.name;
                do
                {
                  v310 = *v118;
                  [v92 transform];
                  v310 = vaddq_f32(v122, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v119, v310.f32[0]), v120, *v310.f32, 1), v121, v310, 2));
                  v123 = [a1 camera];
                  [v123 projectPoint:v308 orientation:*v310.i64 viewportSize:{v2, v3}];

                  CGPoint.normalize(by:)();
                  v315 = v117;
                  isa = v117[2].isa;
                  v126 = v117[3].isa;
                  if (isa >= v126 >> 1)
                  {
                    v129 = v124;
                    v130 = v125;
                    sub_100059610((v126 > 1), isa + 1, 1);
                    v125 = v130;
                    v124 = v129;
                    v117 = v315;
                  }

                  v117[2].isa = (isa + 1);
                  v128 = &v117[2 * isa];
                  v128[4].isa = v124;
                  v128[5].isa = v125;
                  ++v118;
                  --v116;
                }

                while (v116);
                v114 = v292;
              }

              else
              {
                v117 = _swiftEmptyArrayStorage;
                p_name = &stru_1001CFFF8.name;
              }

              v152 = [a1 camera];
              [v92 transform];
              [v152 projectPoint:v308 orientation:v153 viewportSize:{v2, v3}];

              CGPoint.normalize(by:)();
              v154 = v117[2].isa;
              v78 = v309;
              if (!v154)
              {
                goto LABEL_108;
              }

              if (v154 == 1)
              {
                goto LABEL_109;
              }

              if (v154 < 4)
              {
                goto LABEL_110;
              }

              *v310.f32 = v117[7];
              v265 = v117[9].isa;

              v2 = v254;
              v3 = v253;
              Corners.init(topLeft:topRight:bottomLeft:bottomRight:)();
              [a1 timestamp];
              v155 = v267;
              CVTrackedDetection.Prediction.init(center:corners:timestamp:)();
              v156 = v256;
              v157 = v291;
              (*v252)(v256, v155, v291);
              v158 = v293;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v315 = v158;
              sub_1000C115C(v156, v114, isUniquelyReferenced_nonNull_native);

              (*v251)(v155, v157);
              (*v294)(v114, v78);
              v293 = v315;
              sub_100092314(v112, type metadata accessor for ARCameraSource.AnchorInformation);
              p_name = v289;
              v79 = v276;
              goto LABEL_58;
            }

            (*v294)(v114, v109);

            sub_100092314(v112, type metadata accessor for ARCameraSource.AnchorInformation);
            v78 = v109;
            p_name = v289;
            v79 = v276;
            v77 = v277;
            v80 = v290;
          }

          while (v80 != v77);
        }

        v168 = 0;
        v169 = *(v298 + 64);
        v294 = (v298 + 64);
        v170 = 1 << *(v298 + 32);
        v171 = -1;
        if (v170 < 64)
        {
          v171 = ~(-1 << v170);
        }

        v172 = v171 & v169;
        v173 = (v170 + 63) >> 6;
        v297 = (v304 + 16);
        v310.i64[0] = v304 + 32;
        *&v308 = v304 + 8;
        v292 = (v258 + 32);
        v290 = (v258 + 16);
        v289 = v266 + 16;
        v284 = v266 + 32;
        v286 = v266 + 8;
        v285 = v258 + 8;
        v283 = v266 + 40;
        v174 = v302;
        a1 = v301;
        v296 = v173;
        while (1)
        {
          v175 = v168;
          if (!v172)
          {
            if (v173 <= v168 + 1)
            {
              v177 = v168 + 1;
            }

            else
            {
              v177 = v173;
            }

            v168 = v177 - 1;
            while (1)
            {
              v176 = v175 + 1;
              if (__OFADD__(v175, 1))
              {
                break;
              }

              if (v176 >= v173)
              {
                v193 = sub_1000033A8(&qword_1001D80B8, &qword_100177148);
                (*(*(v193 - 8) + 56))(v174, 1, 1, v193);
                v172 = 0;
                goto LABEL_79;
              }

              v172 = v294[v176];
              ++v175;
              if (v172)
              {
                goto LABEL_78;
              }
            }

            __break(1u);
            goto LABEL_105;
          }

          v176 = v168;
LABEL_78:
          v178 = __clz(__rbit64(v172));
          v172 &= v172 - 1;
          v179 = v178 | (v176 << 6);
          v180 = v298;
          v181 = v304;
          v182 = v303;
          v183 = v309;
          (*(v304 + 16))(v303, *(v298 + 48) + *(v304 + 72) * v179, v309);
          v184 = v299;
          sub_10009237C(*(v180 + 56) + *(v300 + 72) * v179, v299, type metadata accessor for ARCameraSource.Tracker.TrackState);
          v185 = sub_1000033A8(&qword_1001D80B8, &qword_100177148);
          v186 = *(v185 + 48);
          v187 = *(v181 + 32);
          v174 = v302;
          v187(v302, v182, v183);
          sub_1000923E4(v184, v174 + v186, type metadata accessor for ARCameraSource.Tracker.TrackState);
          (*(*(v185 - 8) + 56))(v174, 0, 1, v185);
          v168 = v176;
          a1 = v301;
          v173 = v296;
LABEL_79:
          sub_10002091C(v174, a1, &qword_1001D8090, &qword_100177128);
          v188 = sub_1000033A8(&qword_1001D80B8, &qword_100177148);
          v189 = (*(*(v188 - 8) + 48))(a1, 1, v188);
          v190 = v307;
          if (v189 == 1)
          {
            break;
          }

          v191 = *(v188 + 48);
          v192 = v306;
          p_name = v309;
          (*v310.i64[0])(v306, a1, v309);
          sub_1000923E4(&a1[v191], v190, type metadata accessor for ARCameraSource.Tracker.TrackState);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v194 = v263;
            v195 = v190;
            v196 = v264;
            (*v292)(v263, v195, v264);
            Corners.center.getter();
            (*v290)(v279, v194, v196);
            [v259 timestamp];
            v197 = v261;
            CVTrackedDetection.Prediction.init(center:corners:timestamp:)();
            v198 = v192;
            v199 = *v297;
            (*v297)(v268, v198, p_name);
            (*v289)(v262, v197, v291);
            v200 = v293;
            v201 = swift_isUniquelyReferenced_nonNull_native();
            v315 = v200;
            v202 = sub_100095B4C(v268);
            v204 = v200[2].isa;
            v205 = (v203 & 1) == 0;
            v93 = __OFADD__(v204, v205);
            v206 = v204 + v205;
            if (v93)
            {
              __break(1u);
              goto LABEL_117;
            }

            v207 = v203;
            if (v200[3].isa >= v206)
            {
              if ((v201 & 1) == 0)
              {
                v220 = v202;
                sub_1000C2B6C();
                v202 = v220;
              }
            }

            else
            {
              sub_1000BEEB0(v206, v201);
              v202 = sub_100095B4C(v268);
              if ((v207 & 1) != (v208 & 1))
              {
                goto LABEL_122;
              }
            }

            v293 = v315;
            if (v207)
            {
              v209 = v266;
              v210 = v291;
              (*(v266 + 40))(v315[7].isa + *(v266 + 72) * v202, v262, v291);
              p_name = *v308;
              (*v308)(v268, v309);
              (*(v209 + 8))(v261, v210);
              (*v285)(v263, v264);
              (p_name)(v306, v309);
            }

            else
            {
              v315[(v202 >> 6) + 8].isa = (v315[(v202 >> 6) + 8].isa | (1 << v202));
              v211 = v202;
              v212 = v268;
              v199(v293[6].isa + *(v304 + 72) * v202, v268, v309);
              v213 = v266;
              v214 = v293[7].isa + *(v266 + 72) * v211;
              v215 = v291;
              (*(v266 + 32))(v214, v262, v291);
              v216 = *(v304 + 8);
              v217 = v212;
              p_name = v308;
              v216(v217, v309);
              (*(v213 + 8))(v261, v215);
              (*v285)(v263, v264);
              v216(v306, v309);
              v218 = v293[2].isa;
              v93 = __OFADD__(v218, 1);
              v219 = (v218 + 1);
              if (v93)
              {
                goto LABEL_118;
              }

              v293[2].isa = v219;
            }
          }

          else
          {
            (*v308)(v192, p_name);
            sub_100092314(v190, type metadata accessor for ARCameraSource.Tracker.TrackState);
          }
        }

        v221 = v295;
        sub_10007EC5C(v293);
        v222 = v221 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_configuration;
        swift_beginAccess();
        if (*(v222 + *(type metadata accessor for CameraControllerConfiguration(0) + 36)) != 1)
        {
LABEL_102:

          return;
        }

        v223 = v259;
        v224 = Logger.logObject.getter();
        v225 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v224, v225))
        {
          v226 = swift_slowAlloc();
          *v226 = 134217984;
          [v223 timestamp];
          *(v226 + 4) = v227;
          _os_log_impl(&_mh_execute_header, v224, v225, "Updating tracks for frame @ %f", v226, 0xCu);
        }

        v228 = [v223 camera];
        [v228 transform];
        v310 = v229;
        v309 = v230;
        v308 = v231;
        v307 = v232;

        v233 = objc_allocWithZone(ARAnchor);
        v234 = String._bridgeToObjectiveC()();
        v235 = [v233 initWithName:v234 transform:{*v310.i64, *&v309, *&v308, *&v307}];

        [v223 timestamp];
        v237 = v236;
        v238 = swift_unknownObjectWeakLoadStrong();
        [v238 addAnchor:v235];

        v239 = v271;
        v240 = v250;
        *v271 = v250;
        v241 = v273;
        v287(v239, v288, v273);
        v242 = v240;
        LOBYTE(v240) = _dispatchPreconditionTest(_:)();
        v269(v239, v241);
        if (v240)
        {
          v311 = v235;
          v312 = v237;

          TimestampDataBuffer.append(_:)();

          v243 = v313;
          if (v313)
          {
            v244 = swift_unknownObjectWeakLoadStrong();
            if (v244)
            {
              v245 = v244;
              v243 = v243;
              [v245 removeAnchor:v243];
            }
          }

          goto LABEL_102;
        }

LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        v246 = Logger.logObject.getter();
        v247 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v246, v247))
        {
          v248 = swift_slowAlloc();
          *v248 = 0;
          _os_log_impl(&_mh_execute_header, v246, v247, "ViewportSize not positive!", v248, 2u);
        }

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_122:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
LABEL_114:
      __break(1u);
    }

    v77 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_17;
  }
}

unint64_t sub_100089CC4(uint64_t a1)
{
  v77 = sub_1000033A8(&unk_1001D80A0, &qword_100178A00);
  v74 = *(v77 - 8);
  v2 = __chkstk_darwin(v77);
  v75 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v76 = &v71 - v4;
  v5 = type metadata accessor for ARCameraSource.AnchorInformation(0);
  __chkstk_darwin(v5 - 8);
  v85 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  v81 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v87 = (&v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v80 = &v71 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v78 = &v71 - v16;
  v17 = sub_1000033A8(&qword_1001D8090, &qword_100177128);
  v18 = __chkstk_darwin(v17 - 8);
  v86 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v88 = &v71 - v20;
  v95 = &_swiftEmptyDictionarySingleton;
  v21 = *(a1 + 16);
  sub_1000033A8(&qword_1001D80F8, &qword_100177160);
  Dictionary.reserveCapacity(_:)(v21);
  v22 = *(a1 + 64);
  v73 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v72 = (v23 + 63) >> 6;
  v91 = (v12 + 16);
  v93 = (v12 + 32);
  v79 = v12;
  v84 = (v12 + 8);
  v82 = a1;

  v26 = 0;
  v92 = v11;
  v89 = v15;
  v90 = v7;
  while (v25)
  {
    v27 = v26;
LABEL_14:
    v31 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v32 = v31 | (v27 << 6);
    v33 = v82;
    v34 = v78;
    v35 = v79;
    (*(v79 + 16))(v78, *(v82 + 48) + *(v79 + 72) * v32, v11);
    v36 = v11;
    v37 = v80;
    sub_10009237C(*(v33 + 56) + *(v81 + 72) * v32, v80, type metadata accessor for ARCameraSource.Tracker.TrackState);
    v38 = sub_1000033A8(&qword_1001D80B8, &qword_100177148);
    v39 = *(v38 + 48);
    v40 = *(v35 + 32);
    v41 = v86;
    v40(v86, v34, v36);
    v42 = v41;
    sub_1000923E4(v37, &v41[v39], type metadata accessor for ARCameraSource.Tracker.TrackState);
    (*(*(v38 - 8) + 56))(v41, 0, 1, v38);
    v29 = v27;
    v30 = v88;
    v15 = v89;
LABEL_15:
    sub_10002091C(v42, v30, &qword_1001D8090, &qword_100177128);
    v43 = sub_1000033A8(&qword_1001D80B8, &qword_100177148);
    v44 = (*(*(v43 - 8) + 48))(v30, 1, v43);
    v45 = v87;
    if (v44 == 1)
    {

      v69 = sub_10008A5E8(v95);

      return v69;
    }

    v46 = *(v43 + 48);
    v11 = v92;
    (*v93)(v15, v30, v92);
    sub_1000923E4(v30 + v46, v45, type metadata accessor for ARCameraSource.Tracker.TrackState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v84)(v15, v11);
      sub_100092314(v45, type metadata accessor for ARCameraSource.Tracker.TrackState);
      v26 = v29;
    }

    else
    {
      v83 = v29;
      v47 = *v45;
      v48 = sub_1000033A8(&qword_1001D8100, &qword_100177168);
      v49 = v85;
      sub_1000923E4(v45 + *(v48 + 48), v85, type metadata accessor for ARCameraSource.AnchorInformation);
      v50 = v76;
      v51 = *(v77 + 48);
      (*v91)(v76, v15, v11);
      sub_10009237C(v49, &v50[v51], type metadata accessor for ARCameraSource.AnchorInformation);
      v52 = v50;
      v53 = v75;
      sub_10002091C(v52, v75, &unk_1001D80A0, &qword_100178A00);
      v54 = v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = v54;
      v57 = sub_100095ED8(v47);
      v58 = v54[2];
      v59 = (v56 & 1) == 0;
      v60 = v58 + v59;
      if (__OFADD__(v58, v59))
      {
        goto LABEL_30;
      }

      v61 = v56;
      if (v54[3] >= v60)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000C2954();
        }
      }

      else
      {
        sub_1000BEB9C(v60, isUniquelyReferenced_nonNull_native);
        v62 = sub_100095ED8(v47);
        if ((v61 & 1) != (v63 & 1))
        {
          goto LABEL_32;
        }

        v57 = v62;
      }

      v11 = v92;
      v64 = v94;
      if (v61)
      {
        sub_1000924A0(v53, v94[7] + *(v74 + 72) * v57, &unk_1001D80A0, &qword_100178A00);

        sub_100092314(v85, type metadata accessor for ARCameraSource.AnchorInformation);
        v15 = v89;
        (*v84)(v89, v11);
        v95 = v64;
        v26 = v83;
      }

      else
      {
        v94[(v57 >> 6) + 8] |= 1 << v57;
        *(v64[6] + 8 * v57) = v47;
        sub_10002091C(v53, v64[7] + *(v74 + 72) * v57, &unk_1001D80A0, &qword_100178A00);
        sub_100092314(v85, type metadata accessor for ARCameraSource.AnchorInformation);
        v15 = v89;
        (*v84)(v89, v11);
        v65 = v64[2];
        v66 = __OFADD__(v65, 1);
        v67 = v65 + 1;
        if (v66)
        {
          goto LABEL_31;
        }

        v64[2] = v67;
        v95 = v64;
        v26 = v83;
      }
    }
  }

  if (v72 <= v26 + 1)
  {
    v28 = v26 + 1;
  }

  else
  {
    v28 = v72;
  }

  v29 = v28 - 1;
  v30 = v88;
  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v72)
    {
      v68 = sub_1000033A8(&qword_1001D80B8, &qword_100177148);
      v42 = v86;
      (*(*(v68 - 8) + 56))(v86, 1, 1, v68);
      v25 = 0;
      goto LABEL_15;
    }

    v25 = *(v73 + 8 * v27);
    ++v26;
    if (v25)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  sub_10005BBC4(0, &qword_1001D7D58, ARAnchor_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10008A5E8(uint64_t a1)
{
  v2 = sub_1000033A8(&unk_1001D80A0, &qword_100178A00);
  v98 = *(v2 - 8);
  v99 = v2;
  __chkstk_darwin(v2);
  v97 = &v82 - v3;
  v96 = sub_1000033A8(&qword_1001D8108, &qword_100177170);
  __chkstk_darwin(v96);
  v95 = &v82 - v4;
  v94 = sub_1000033A8(&qword_1001D8110, &qword_100177178);
  __chkstk_darwin(v94);
  v93 = &v82 - v5;
  v92 = sub_1000033A8(&qword_1001D8098, &unk_100177130);
  v89 = *(v92 - 8);
  v6 = __chkstk_darwin(v92);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v82 - v10;
  __chkstk_darwin(v9);
  v86 = (&v82 - v12);
  v91 = sub_1000033A8(&qword_1001D8118, &qword_100177180);
  v13 = __chkstk_darwin(v91);
  v88 = (&v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v87 = &v82 - v16;
  v17 = __chkstk_darwin(v15);
  v84 = (&v82 - v18);
  __chkstk_darwin(v17);
  v83 = &v82 - v19;
  if (*(a1 + 16))
  {
    sub_1000033A8(&qword_1001D8120, &qword_100177188);
    v20 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v20 = &_swiftEmptyDictionarySingleton;
  }

  v21 = sub_10005BBC4(0, &qword_1001D7D58, ARAnchor_ptr);
  v22 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & *(a1 + 64);
  v90 = a1;
  v26 = v23 + 63;
  if (v21 == &type metadata for String)
  {
    v56 = v26 >> 6;
    v88 = v20 + 8;

    v57 = 0;
    v82 = v11;
    while (v25)
    {
      v61 = v57;
LABEL_33:
      v62 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v63 = v62 | (v61 << 6);
      v64 = *(*(a1 + 48) + 8 * v63);
      v65 = *(a1 + 56) + *(v98 + 72) * v63;
      v66 = v91;
      v67 = v83;
      sub_1000138BC(v65, &v83[*(v91 + 48)], &unk_1001D80A0, &qword_100178A00);
      *v67 = v64;
      v68 = v84;
      sub_10002091C(v67, v84, &qword_1001D8118, &qword_100177180);
      v69 = *(v96 + 48);
      v70 = *v68;
      sub_10002091C(v68 + *(v66 + 48), v97, &unk_1001D80A0, &qword_100178A00);
      v71 = v64;
      v72 = v95;
      swift_dynamicCast();
      v73 = v93;
      v74 = *(v94 + 48);
      sub_10002091C(&v72[v69], &v93[v74], &qword_1001D8098, &unk_100177130);
      v75 = &v73[v74];
      v76 = v86;
      sub_10002091C(v75, v86, &qword_1001D8098, &unk_100177130);
      v77 = v82;
      sub_10002091C(v76, v82, &qword_1001D8098, &unk_100177130);
      result = sub_100095ED8(v70);
      if (v78)
      {
        v58 = v20[6];
        v59 = *(v58 + 8 * result);
        *(v58 + 8 * result) = v70;
        v60 = result;

        result = sub_1000924A0(v77, v20[7] + *(v89 + 72) * v60, &qword_1001D8098, &unk_100177130);
      }

      else
      {
        if (v20[2] >= v20[3])
        {
          goto LABEL_41;
        }

        *(v88 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
        *(v20[6] + 8 * result) = v70;
        result = sub_10002091C(v77, v20[7] + *(v89 + 72) * result, &qword_1001D8098, &unk_100177130);
        v79 = v20[2];
        v80 = __OFADD__(v79, 1);
        v81 = v79 + 1;
        if (v80)
        {
          goto LABEL_42;
        }

        v20[2] = v81;
      }

      v57 = v61;
      a1 = v90;
    }

    while (1)
    {
      v61 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v61 >= v56)
      {
LABEL_37:

        return v20;
      }

      v25 = *(v22 + 8 * v61);
      ++v57;
      if (v25)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v27 = (v26 >> 6);
    v28 = (v20 + 8);

    v30 = 0;
    v85 = v8;
    v86 = v20;
    v83 = v27;
    v84 = (a1 + 64);
    while (v25)
    {
LABEL_16:
      v33 = __clz(__rbit64(v25)) | (v30 << 6);
      v34 = *(a1 + 56);
      v35 = *(*(a1 + 48) + 8 * v33);
      v36 = v91;
      v37 = v87;
      sub_1000138BC(v34 + *(v98 + 72) * v33, &v87[*(v91 + 48)], &unk_1001D80A0, &qword_100178A00);
      *v37 = v35;
      v38 = v37;
      v39 = v88;
      sub_10002091C(v38, v88, &qword_1001D8118, &qword_100177180);
      v40 = *(v36 + 48);
      v41 = *(v96 + 48);
      v42 = *v39;
      sub_10002091C(v39 + v40, v97, &unk_1001D80A0, &qword_100178A00);
      v43 = v35;
      v44 = v95;
      swift_dynamicCast();
      v45 = *(v94 + 48);
      v46 = &v44[v41];
      v47 = v93;
      sub_10002091C(v46, &v93[v45], &qword_1001D8098, &unk_100177130);
      v48 = v85;
      sub_10002091C(&v47[v45], v85, &qword_1001D8098, &unk_100177130);
      v20 = v86;
      result = NSObject._rawHashValue(seed:)(v86[5]);
      v49 = -1 << *(v20 + 32);
      v50 = result & ~v49;
      v51 = v50 >> 6;
      if (((-1 << v50) & ~*&v28[8 * (v50 >> 6)]) == 0)
      {
        v52 = 0;
        v53 = (63 - v49) >> 6;
        a1 = v90;
        v22 = v84;
        while (++v51 != v53 || (v52 & 1) == 0)
        {
          v54 = v51 == v53;
          if (v51 == v53)
          {
            v51 = 0;
          }

          v52 |= v54;
          v55 = *&v28[8 * v51];
          if (v55 != -1)
          {
            v31 = __clz(__rbit64(~v55)) + (v51 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_39;
      }

      v31 = __clz(__rbit64((-1 << v50) & ~*&v28[8 * (v50 >> 6)])) | v50 & 0x7FFFFFFFFFFFFFC0;
      a1 = v90;
      v22 = v84;
LABEL_10:
      v25 &= v25 - 1;
      *&v28[(v31 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v31;
      *(v20[6] + 8 * v31) = v42;
      result = sub_10002091C(v48, v20[7] + *(v89 + 72) * v31, &qword_1001D8098, &unk_100177130);
      ++v20[2];
      v27 = v83;
    }

    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v32 >= v27)
      {
        goto LABEL_37;
      }

      v25 = *(v22 + 8 * v32);
      ++v30;
      if (v25)
      {
        v30 = v32;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_10008AE18()
{
  swift_unknownObjectWeakDestroy();
  sub_1000616E4(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  v1 = OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100092314(v0 + OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_configuration, type metadata accessor for CameraControllerConfiguration);
  return v0;
}

uint64_t sub_10008AEE8()
{
  sub_10008AE18();

  return swift_deallocClassInstance();
}

void sub_10008AF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CVTrackSnapshot();
  v9 = sub_100090580(&qword_1001D7FA0, &type metadata accessor for CVTrackSnapshot, &protocol conformance descriptor for CVTrackSnapshot);

  sub_1000818C0(a1, a2, v8, a3, v9, a4);
}

uint64_t sub_10008AFF8()
{
  v1 = [v0 availableSensors];
  sub_1000033A8(&qword_1001D7FD8, &qword_1001770B0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
LABEL_16:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v5 = *(v2 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        if ([v5 providedDataTypes])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v4;
      }

      while (v6 != v3);
    }
  }

  sub_1000793B8(_swiftEmptyArrayStorage);
  v8 = v7;

  v9 = sub_10009159C(v8);

  return v9;
}

uint64_t ARFrame.cameraImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 capturedImage];
  DataSize = CVPixelBufferGetDataSize(v3);

  if (DataSize)
  {
    [v1 capturedImage];
    type metadata accessor for CVBuffer(0);
    SendableTransfer.init(wrappedValue:)();
    v5 = enum case for CameraImage.pixelBuffer(_:);
    v6 = type metadata accessor for CameraImage();
    return (*(*(v6 - 8) + 104))(a1, v5, v6);
  }

  else
  {
    v8 = enum case for CameraImage.none(_:);
    v9 = type metadata accessor for CameraImage();
    v10 = *(*(v9 - 8) + 104);

    return v10(a1, v8, v9);
  }
}

uint64_t sub_10008B310()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1001D7420);
  swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    type metadata accessor for ARFrameAttachment();
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10001370C(v6, &unk_1001D8060, &qword_1001732E0);
    return 0;
  }
}

double sub_10008B3F4(char a1)
{
  v3 = sub_10008B310();
  if (!v3)
  {
    type metadata accessor for ARFrameAttachment();
    v4 = swift_allocObject();
    *(v4 + 16) = 2;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 1;
    swift_beginAccess();

    objc_setAssociatedObject(v1, &unk_1001D7420, v4, 1);
    swift_endAccess();

    v3 = v4;
  }

  *(v3 + 16) = a1 & 1;

  return result;
}

uint64_t ARFrame.metadata.getter()
{
  v1 = type metadata accessor for Angle();
  __chkstk_darwin(v1 - 8);
  v2 = [v0 camera];
  [v2 imageResolution];

  v3 = [v0 camera];
  [v3 imageResolution];

  static Angle.degrees(_:)();
  sub_10008B674();
  [v0 timestamp];
  v4 = sub_10008B310();
  if (v4 && (v5 = *(v4 + 16), , v5 != 2) && (v5 & 1) != 0)
  {
    v6 = sub_10008B310();
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    [v0 isHighResolution];
    v6 = sub_10008B310();
    if (!v6)
    {
LABEL_8:
      static CGRect.unitRect.getter();
      return CameraSourceFrameMetadata.init(imageResolution:rotationAngle:shouldAttemptDetection:timestamp:isHighResolutionStill:safeArea:)();
    }
  }

  v7 = *(v6 + 56);

  if (v7)
  {
    goto LABEL_8;
  }

  return CameraSourceFrameMetadata.init(imageResolution:rotationAngle:shouldAttemptDetection:timestamp:isHighResolutionStill:safeArea:)();
}

uint64_t sub_10008B674()
{
  v1 = type metadata accessor for ARCamera.TrackingState();
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v21 - v6;
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  type metadata accessor for RellenoGlobalSettings();
  static RellenoGlobalSettings.shared.getter();
  v10 = dispatch thunk of RellenoGlobalSettings.ignoreTrackingState.getter();

  v22 = v0;
  if (v10)
  {
    v11 = type metadata accessor for ARCamera.TrackingState.Reason();
    (*(*(v11 - 8) + 56))(v9, 2, 2, v11);
  }

  else
  {
    v12 = [v0 camera];
    ARCamera.trackingState.getter();
  }

  v13 = type metadata accessor for ARCamera.TrackingState.Reason();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v7, 2, 2, v13);
  v16 = static ARCamera.TrackingState.== infix(_:_:)();
  sub_100092314(v7, &type metadata accessor for ARCamera.TrackingState);
  sub_100092314(v9, &type metadata accessor for ARCamera.TrackingState);
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    static RellenoGlobalSettings.shared.getter();
    v18 = dispatch thunk of RellenoGlobalSettings.ignoreTrackingState.getter();

    if (v18)
    {
      v15(v4, 2, 2, v13);
    }

    else
    {
      v19 = [v22 camera];
      ARCamera.trackingState.getter();
    }

    (*(v14 + 104))(v7, enum case for ARCamera.TrackingState.Reason.initializing(_:), v13);
    v15(v7, 0, 2, v13);
    v17 = static ARCamera.TrackingState.== infix(_:_:)();
    sub_100092314(v7, &type metadata accessor for ARCamera.TrackingState);
    sub_100092314(v4, &type metadata accessor for ARCamera.TrackingState);
  }

  return v17 & 1;
}

ARFrame __swiftcall ARFrame.copyFrameWithoutImage()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [v0 camera];
  [v1 timestamp];
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCamera:v2 timestamp:v3];

  v5 = sub_10008B310();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    type metadata accessor for ARFrameAttachment();
    v6 = swift_allocObject();
    *(v6 + 16) = 2;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 1;
    swift_beginAccess();

    objc_setAssociatedObject(v4, &unk_1001D7420, v6, 1);
    swift_endAccess();
  }

  v7 = sub_10008B310();
  if (v7 && (v8 = *(v7 + 16), , v8 != 2) && (v8 & 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = [v1 isHighResolution];
  }

  *(v6 + 16) = v9;
  v10 = sub_10008B310();
  if (!v10 || (v11 = *(v10 + 24), v12 = *(v10 + 32), v13 = *(v10 + 40), v14 = *(v10 + 48), v15 = *(v10 + 56), , (v15 & 1) != 0))
  {
    static CGRect.unitRect.getter();
    v11 = v16;
    v12 = v17;
    v13 = v18;
    v14 = v19;
  }

  *(v6 + 24) = v11;
  *(v6 + 32) = v12;
  *(v6 + 40) = v13;
  *(v6 + 48) = v14;
  *(v6 + 56) = 0;

  return v4;
}

uint64_t sub_10008BB9C(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10005BBC4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10008BBE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = [v3 capturedImage];
  DataSize = CVPixelBufferGetDataSize(v4);

  if (DataSize)
  {
    [v3 capturedImage];
    type metadata accessor for CVBuffer(0);
    SendableTransfer.init(wrappedValue:)();
    v6 = enum case for CameraImage.pixelBuffer(_:);
    v7 = type metadata accessor for CameraImage();
    return (*(*(v7 - 8) + 104))(a1, v6, v7);
  }

  else
  {
    v9 = enum case for CameraImage.none(_:);
    v10 = type metadata accessor for CameraImage();
    v11 = *(*(v10 - 8) + 104);

    return v11(a1, v9, v10);
  }
}

ARFrame sub_10008BD50@<X0>(ARFrame *a1@<X8>)
{
  result.super.isa = ARFrame.copyFrameWithoutImage()().super.isa;
  a1->super.isa = result.super.isa;
  return result;
}

void sub_10008BDC8(uint64_t a1)
{
  type metadata accessor for CameraControllerConfiguration(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      type metadata accessor for LoggingSignposter();
      if (v3 <= 0x3F)
      {
        sub_10005FAB0(319, &unk_1001D6940, &type metadata accessor for AsyncStream);
        if (v4 <= 0x3F)
        {
          sub_10005FAB0(319, &qword_1001D7630, &type metadata accessor for AsyncStream.Continuation);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_10008C070(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CameraControllerConfiguration(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

double sub_10008C1A4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100092374;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C22F8;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);

  return result;
}

void sub_10008C474(void *a1)
{
  v1 = a1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    sub_100060424(*&v1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState], *&v1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8], v1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 16]);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000E0FE0(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "willCapturePhoto: transitioning from %s to .pausing", v4, 0xCu);
    sub_100006B44(v5);
  }

  v9 = &v1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState];
  v10 = *&v1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState];
  v11 = *&v1[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8];
  *v9 = xmmword_100176B30;
  v12 = v9[16];
  v9[16] = 3;
  sub_1000616E4(v10, v11, v12);
  sub_1000731B8();
}

uint64_t sub_10008C630(void *a1, void *a2)
{
  v3 = v2;
  v67 = a1;
  v5 = sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - v6;
  v8 = type metadata accessor for ARCamera.TrackingState();
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v65 - v12;
  static LoggingSignposter.arCameraSourceFrameHandler.getter();
  default argument 2 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  v14 = v2;
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  v15 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceReplay);
  if (v15)
  {
    v16 = v15;
    sub_10008EDD0(a2);
  }

  type metadata accessor for RellenoGlobalSettings();
  static RellenoGlobalSettings.shared.getter();
  v17 = dispatch thunk of RellenoGlobalSettings.ignoreTrackingState.getter();

  if (v17)
  {
    v18 = type metadata accessor for ARCamera.TrackingState.Reason();
    (*(*(v18 - 8) + 56))(v13, 2, 2, v18);
  }

  else
  {
    v19 = [a2 camera];
    ARCamera.trackingState.getter();
  }

  v20 = type metadata accessor for ARCamera.TrackingState.Reason();
  (*(*(v20 - 8) + 56))(v11, 2, 2, v20);
  v21 = static ARCamera.TrackingState.== infix(_:_:)();
  sub_100092314(v11, &type metadata accessor for ARCamera.TrackingState);
  sub_100092314(v13, &type metadata accessor for ARCamera.TrackingState);
  if (v21)
  {

    v22 = [a2 camera];
    [v22 transform];
    v71 = v24;
    v72 = v23;
    v70 = v25;
    v69 = v26;

    v27 = sub_10009D414(v72, v71, v70, v69);
    v29 = v28;
  }

  else
  {
    v29 = 0x800000010016D190;
    v27 = 0xD000000000000020;
  }

  v30 = *(v3 + OBJC_IVAR____TtC6Tamale14ARCameraSource_systemPressureLevelOverride);
  if (v30 == 4)
  {
    LOBYTE(v30) = *(v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_systemPressureLevel);
  }

  sub_100072A20(*(v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_safeArea), *(v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_safeArea + 8), *(v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_safeArea + 16), *(v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_safeArea + 24));
  v31 = v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_configuration;
  swift_beginAccess();
  v32 = type metadata accessor for CameraControllerConfiguration(0);
  sub_1000138BC(v31 + *(v32 + 68), v7, &qword_1001D8020, &qword_1001728D0);
  v33 = type metadata accessor for URL();
  LODWORD(v31) = (*(*(v33 - 8) + 48))(v7, 1, v33);
  sub_10001370C(v7, &qword_1001D8020, &qword_1001728D0);
  v34 = v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
  v35 = *(v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState);
  v36 = *(v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8);
  v37 = *(v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 16);
  if (v31 == 1)
  {
    LODWORD(v68) = 0;
  }

  else
  {
    v40 = v35 == 1 && v36 == 0 && v37 == 3;
    LODWORD(v68) = v40;
  }

  v76[0] = v27;
  v76[1] = v29;
  v77 = v30;
  v78 = v35;
  v79 = v36;
  v80 = v37;
  v72.i64[0] = v14;
  v41 = v14 + OBJC_IVAR____TtC6Tamale14ARCameraSource_synchronizer;
  Strong = swift_unknownObjectWeakLoadStrong();
  v73 = a2;
  v71.i32[0] = v37;
  v70.n128_u64[0] = v36;
  v69.i64[0] = v35;
  if (Strong)
  {
    v43 = v35;
    v44 = *(v41 + 8);
    ObjectType = swift_getObjectType();
    v74 = a2;
    v65 = *(v44 + 8);
    sub_100060424(v43, v36, v37);
    v45 = sub_10005BBC4(0, &qword_1001D7430, ARFrame_ptr);
    v46 = sub_10008BB9C(&qword_1001D7438, &qword_1001D7430, ARFrame_ptr, &protocol conformance descriptor for ARFrame);
    v65(&v74, v76, v45, v46, ObjectType, v44);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100060424(v35, v36, v37);
  }

  if (v68)
  {
    v47 = v73;
    sub_10008B3F4(1);
    v48 = swift_unknownObjectWeakLoadStrong();
    v49 = v70.n128_u64[0];
    if (v48)
    {
      v50 = *(v41 + 8);
      ObjectType = swift_getObjectType();
      v74 = v47;
      v65 = *(v50 + 8);
      v68 = v29;
      v51 = v27;
      v52 = sub_10005BBC4(0, &qword_1001D7430, ARFrame_ptr);
      v53 = sub_10008BB9C(&qword_1001D7438, &qword_1001D7430, ARFrame_ptr, &protocol conformance descriptor for ARFrame);
      v65(&v74, v76, v52, v53, ObjectType, v50);
      swift_unknownObjectRelease();
      v54 = v51;
      v55 = v68;
    }

    else
    {
      v54 = v27;
      v55 = v29;
    }

    sub_100092274(v54, v55);
    v57 = sub_1000616E4(v69.i64[0], v49, v71.i8[0]);
    [v67 pause];
    v58 = *v34;
    v59 = *(v34 + 8);
    *v34 = 0;
    *(v34 + 8) = 0;
    v60 = *(v34 + 16);
    *(v34 + 16) = 3;
    sub_1000616E4(v58, v59, v60);
    v56 = v72.i64[0];
    sub_1000731B8();
  }

  else
  {
    sub_100092274(v27, v29);
    sub_1000616E4(v69.i64[0], v70.n128_i64[0], v71.i8[0]);
    v47 = v73;
    v56 = v72.i64[0];
  }

  v61 = *v34;
  v62 = *(v34 + 8);
  v63 = *(v34 + 16);
  if (v63 == 1 || v63 == 3 && v61 == 2 && !v62)
  {
    if (*(v56 + OBJC_IVAR____TtC6Tamale14ARCameraSource_trackManagerSupporting))
    {
      sub_100060424(v61, v62, v63);

      sub_1000875A4(v47);
    }

    else
    {
      sub_100060424(v61, v62, v63);
    }
  }

  sub_100006AAC(v75, v75[3]);
  dispatch thunk of LoggingSignposter.Interval.end()();
  return sub_100006B44(v75);
}

void sub_10008CDEC()
{
  v1 = v0;
  v2 = type metadata accessor for ARCamera.TrackingState();
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v32 - v6;
  ARCamera.trackingState.getter();
  v8 = type metadata accessor for ARCamera.TrackingState.Reason();
  (*(*(v8 - 8) + 56))(v5, 1, 2, v8);
  v9 = static ARCamera.TrackingState.== infix(_:_:)();
  sub_100092314(v5, &type metadata accessor for ARCamera.TrackingState);
  sub_100092314(v7, &type metadata accessor for ARCamera.TrackingState);
  if (v9)
  {
    return;
  }

  v10 = sub_10008AFF8();
  v11 = v10;
  if ((v10 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_10005BBC4(0, &qword_1001D95A0, ARImageSensor_ptr);
    sub_10008BB9C(&unk_1001D8070, &qword_1001D95A0, ARImageSensor_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v11 = v37;
    v12 = v38;
    v13 = v39;
    v14 = v40;
    v15 = v41;
  }

  else
  {
    v14 = 0;
    v16 = -1 << *(v10 + 32);
    v12 = v10 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v10 + 56);
  }

  v32[0] = v13;
  v19 = (v13 + 64) >> 6;
  while (v11 < 0)
  {
    v29 = __CocoaSet.Iterator.next()();
    if (!v29 || (*&v34 = v29, sub_10005BBC4(0, &qword_1001D95A0, ARImageSensor_ptr), swift_dynamicCast(), v28 = *&v36[0], v26 = v14, v27 = v15, !*&v36[0]))
    {
LABEL_28:
      sub_100037980(v11);
      return;
    }

LABEL_21:
    if (objc_getAssociatedObject(v28, v28))
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    v36[0] = v34;
    v36[1] = v35;
    if (!*(&v35 + 1))
    {
      sub_10001370C(v36, &unk_1001D8060, &qword_1001732E0);
LABEL_10:
      v20 = type metadata accessor for WeakARImageSensorDelegateWrapper();
      v21 = objc_allocWithZone(v20);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v33.receiver = v21;
      v33.super_class = v20;
      v22 = v1;
      v23 = objc_msgSendSuper2(&v33, "init", v32[0]);
      objc_setAssociatedObject(v28, v28, v23, 1);

      goto LABEL_11;
    }

    type metadata accessor for WeakARImageSensorDelegateWrapper();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_10;
    }

    v30 = v32[1];
    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
LABEL_11:
    v14 = v26;
    v15 = v27;
  }

  v24 = v14;
  v25 = v15;
  v26 = v14;
  if (v15)
  {
LABEL_17:
    v27 = (v25 - 1) & v25;
    v28 = *(*(v11 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
    if (!v28)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v19)
    {
      goto LABEL_28;
    }

    v25 = *(v12 + 8 * v26);
    ++v24;
    if (v25)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_10008D288()
{
  if (objc_getAssociatedObject(v0, v0))
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
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_10001370C(v5, &unk_1001D8060, &qword_1001732E0);
  }

  return 0;
}

void sub_10008D428(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Session '%@' was interrupted", v6, 0xCu);
    sub_10001370C(v7, &unk_1001D8030, &qword_100177118);
  }

  v9 = v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
  v10 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState);
  v11 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8);
  *v9 = xmmword_100176B40;
  v12 = *(v9 + 16);
  *(v9 + 16) = 0;
  sub_1000616E4(v10, v11, v12);

  sub_1000731B8();
}

void sub_10008D5C8(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "Session '%@' is no longer interrupted", v7, 0xCu);
    sub_10001370C(v8, &unk_1001D8030, &qword_100177118);
  }

  if (qword_1001D31A0 != -1)
  {
    v10 = swift_once();
  }

  __chkstk_darwin(v10);
  sub_1000033A8(&qword_1001D8028, &qword_100177110);
  OS_dispatch_queue.sync<A>(execute:)();
  if (v15 == 2 || (v15 & 1) == 0)
  {
    v11 = v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
    v12 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState);
    v13 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8);
    *v11 = 0;
    *(v11 + 8) = 0;
  }

  else
  {
    v11 = v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
    v12 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState);
    v13 = *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8);
    *(v2 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState) = xmmword_100176B30;
  }

  v14 = *(v11 + 16);
  *(v11 + 16) = 1;
  sub_1000616E4(v12, v13, v14);
  sub_1000731B8();
}

void sub_10008D84C(uint64_t a1, unint64_t a2, double a3)
{
  if (*(*v3 + OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceRecording))
  {

    sub_10008DC28(a1, a2 | ((HIDWORD(a2) & 1) << 32), a3);
  }
}

id sub_10008D8EC(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(ARRecordingConfiguration);
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v8 = [v4 initWithBaseConfiguration:a1 fileURL:v6];

  [objc_msgSend(v8 "recordingTechnique")];
  swift_unknownObjectRelease();
  v9 = *(v2 + 16);
  *(v2 + 16) = v8;
  v10 = v8;

  [v10 startRecording];
  return v10;
}

Swift::Int sub_10008D9B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    static Log.cameraSource.getter();
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v17 = a2;
      v11 = v10;
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_1000E0FE0(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to save video: %s", v11, 0xCu);
      sub_100006B44(v12);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
  }

  return OS_dispatch_semaphore.signal()();
}

void sub_10008DBBC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_10008DC28(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v11 = *(v18 - 8);
  __chkstk_darwin(v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v4 + OBJC_IVAR____TtC6Tamale23ARCameraSourceRecording_frameQueue);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  *(v15 + 32) = a3;
  *(v15 + 40) = a2;
  *(v15 + 44) = BYTE4(a2) & 1;
  aBlock[4] = sub_1000922DC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C22A8;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v19 + 8))(v10, v8);
  (*(v11 + 8))(v13, v18);
}

void sub_10008DF60(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC6Tamale23ARCameraSourceRecording_session;
    if ([*(Strong + OBJC_IVAR____TtC6Tamale23ARCameraSourceRecording_session) state] == 1 && (v14 = *(v12 + 16)) != 0)
    {
      v15 = *(v12 + v13);
      v16 = v14;
      v17 = [v15 currentFrame];
      if (v17)
      {
        v18 = v17;
        static Log.cameraSource.getter();

        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v27 = v16;
          *v21 = 134217984;
          *(v21 + 4) = a4;
          _os_log_impl(&_mh_execute_header, v19, v20, "Logged custom metadata for frame timestamp %f", v21, 0xCu);
          v16 = v27;
        }

        (*(v8 + 8))(v10, v7);
        v22 = [v16 recordingTechnique];
        v23 = type metadata accessor for CustomARRecordingStreamingMetadata();
        v24 = objc_allocWithZone(v23);
        v25 = &v24[OBJC_IVAR____TtC6Tamale34CustomARRecordingStreamingMetadata_wrappedMetadata];
        *v25 = a2;
        v25[1] = a4;
        *(v25 + 4) = a3;
        *(v25 + 20) = BYTE4(a3) & 1;
        v28.receiver = v24;
        v28.super_class = v23;

        v26 = objc_msgSendSuper2(&v28, "init");
        [v22 recordCustomData:v26 forTimestamp:a4];

        swift_unknownObjectRelease();
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

uint64_t sub_10008E218()
{
  v1 = OBJC_IVAR____TtC6Tamale23ARCameraSourceRecording_fileURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10008E304(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10008E3E8()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008E47C, v2, v1);
}

uint64_t sub_10008E47C()
{

  type metadata accessor for LocationsHandler();
  static LocationsHandler.shared.getter();
  dispatch thunk of LocationsHandler.startSimulatingHeadingUpdates()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008E4FC()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008E590, v2, v1);
}

uint64_t sub_10008E590()
{

  type metadata accessor for LocationsHandler();
  static LocationsHandler.shared.getter();
  dispatch thunk of LocationsHandler.stopSimulatingHeadingUpdates()();

  v1 = *(v0 + 8);

  return v1();
}

id sub_10008E610(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2);
  objc_allocWithZone(ARReplayConfiguration);
  v10 = a1;
  v11 = sub_1000910DC(v10, v8);

  v12 = [v11 customSensors];
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v12;
  v29 = v11;
  sub_1000033A8(&qword_1001D7FD8, &qword_1001770B0);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = v3;
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_14:

    v11 = v29;
    v3 = v30;
LABEL_15:
    [v11 setDelegate:v3];
    [v11 play];
    v26 = *(v3 + OBJC_IVAR____TtC6Tamale20ARCameraSourceReplay_arReplayConfiguration);
    *(v3 + OBJC_IVAR____TtC6Tamale20ARCameraSourceReplay_arReplayConfiguration) = v11;
    v27 = v11;

    return v11;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v15 >= 1)
  {
    v16 = 0;
    v31 = xmmword_100171DA0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        v17 = v25;
        sub_1000033A8(&qword_1001D7FE0, &qword_100175388);
        v18 = swift_allocObject();
        *(v18 + 16) = v31;
        v19 = type metadata accessor for CustomARRecordingStreamingMetadata();
        *(v18 + 56) = sub_1000033A8(&qword_1001D7FE8, &qword_1001770D0);
        *(v18 + 32) = v19;
        v20 = objc_allocWithZone(NSSet);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v22 = [v20 initWithArray:isa];

        sub_10005BBC4(0, &qword_1001D7FF0, NSObject_ptr);
        sub_10008BB9C(&qword_1001D7FF8, &qword_1001D7FF0, NSObject_ptr, &protocol conformance descriptor for NSObject);
        v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10008EA28(v23);

        v24 = Set._bridgeToObjectiveC()().super.isa;

        [v17 setCustomDataClasses:v24];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v16;
    }

    while (v15 != v16);
    goto LABEL_14;
  }

  __break(1u);

  swift_getErrorValue();
  Error.localizedDescription.getter();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int sub_10008EA28(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = &_swiftEmptySetSingleton;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1000033A8(&unk_1001D8000, &unk_1001770D8);
  v3 = static _SetStorage.allocate(capacity:)();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  __CocoaSet.makeIterator()();
  sub_10005BBC4(0, &qword_1001D7FF0, NSObject_ptr);
  sub_10008BB9C(&qword_1001D7FF8, &qword_1001D7FF0, NSObject_ptr, &protocol conformance descriptor for NSObject);
  result = Set.Iterator.init(_cocoa:)();
  v1 = v30;
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
LABEL_11:
  v12 = (v3 + 7);
  while (v1 < 0)
  {
    v16 = __CocoaSet.Iterator.next()();
    if (!v16)
    {
LABEL_34:
      sub_100037980(v1);

      return v3;
    }

    *&v27 = v16;
    sub_10005BBC4(0, &qword_1001D7FF0, NSObject_ptr);
    swift_dynamicCast();
LABEL_25:
    sub_10005BBC4(0, &qword_1001D7FF0, NSObject_ptr);
    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v3[5]);
    v20 = -1 << *(v3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*&v12[8 * (v21 >> 6)]) != 0)
    {
      v13 = __clz(__rbit64((-1 << v21) & ~*&v12[8 * (v21 >> 6)])) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *&v12[8 * v22];
      }

      while (v26 == -1);
      v13 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *&v12[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
    v14 = v3[6] + 40 * v13;
    *(v14 + 32) = v29;
    *v14 = v27;
    *(v14 + 16) = v28;
    ++v3[2];
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}