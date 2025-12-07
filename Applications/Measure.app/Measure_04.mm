void sub_10005FC14(uint64_t a1, float32x4_t a2)
{
  v130 = a2;
  v4 = sub_10000F974(&unk_1004A3D90, &unk_1003DDD80);
  __chkstk_darwin(v4 - 8);
  v129 = &v124[-v5];
  *&v136 = type metadata accessor for ARPlaneAnchor.Classification();
  v6 = *(v136 - 8);
  __chkstk_darwin(v136);
  v8 = &v124[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v124[-v10];
  v133 = sub_10008D4F0();
  if (!v133)
  {
    return;
  }

  v131 = v8;
  v125 = a1;
  v132 = v2;
  MeasureCore.shared.unsafeMutableAddressor();

  v12 = MeasureCore.allPlaneAnchors.getter();

  v13 = 0;
  v139[0] = _swiftEmptyArrayStorage;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  *&v135 = v6 + 88;
  v18 = enum case for ARPlaneAnchor.Classification.floor(_:);
  v134 = (v6 + 8);
  if (v16)
  {
    while (1)
    {
      v19 = v13;
LABEL_9:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = *(*(v12 + 56) + ((v19 << 9) | (8 * v20)));
      ARPlaneAnchor.classification.getter();
      v22 = v136;
      if ((*v135)(v11, v136) == v18)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        a1 = *(v139[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v13 = v19;
        if (!v16)
        {
          goto LABEL_6;
        }
      }

      else
      {

        (*v134)(v11, v22);
        v13 = v19;
        if (!v16)
        {
          goto LABEL_6;
        }
      }
    }
  }

  while (1)
  {
LABEL_6:
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v12 + 64 + 8 * v19);
    ++v13;
    if (v16)
    {
      goto LABEL_9;
    }
  }

  *&v137 = v139[0];
  v23 = [v133 camera];
  [v23 transform];
  v138 = v24;
  *v128 = v25;
  v127 = v26;
  v126 = v27;

  simd_float4x4.position.getter();
  v29 = vsubq_f32(v130, v28);
  v30 = v29;
  v30.i32[1] = vmuls_lane_f32(0.0, *v29.f32, 1);
  v30.i32[2] = v29.i32[2];
  v31 = vmulq_f32(v30, v30);
  *&v32 = v31.f32[2] + vaddv_f32(*v31.f32);
  *v31.f32 = vrsqrte_f32(v32);
  *v31.f32 = vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32)));
  v33 = vmulq_n_f32(v30, vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32))).f32[0]);
  *v30.f32 = vadd_f32(*v130.f32, vmul_f32(*v33.f32, 0xBF000000BF000000));
  v30.f32[2] = v130.f32[2] + vmuls_lane_f32(-0.5, v33, 2);
  v30.i32[3] = 0;
  v138 = v30;
  v34 = SIMD3<>.up.unsafeMutableAddressor();
  HIDWORD(v35) = 0;
  *&v35 = vsubq_f32(0, *v34).u64[0];
  *(&v35 + 2) = 0.0 - COERCE_FLOAT(v34->i64[1]);
  *v128 = v35;
  v36 = objc_allocWithZone(ARRaycastQuery);
  v37 = [v36 initWithOrigin:0 direction:0 allowingTarget:*v138.i64 alignment:*v128];
  v38 = [*(v132 + qword_1004A3918) session];
  v128[0] = v37;
  v39 = [v38 raycast:v37];

  sub_100018630(0, &qword_1004A3EE8, ARRaycastResult_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  a1 = _swiftEmptyArrayStorage;
  v139[0] = _swiftEmptyArrayStorage;
  if (!(v17 >> 62))
  {
    v40 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
      goto LABEL_16;
    }

LABEL_37:

    v134 = 0;
    v50 = a1 & 0x4000000000000000;
    v49 = a1;
    goto LABEL_38;
  }

LABEL_36:
  v40 = _CocoaArrayWrapper.endIndex.getter();
  if (!v40)
  {
    goto LABEL_37;
  }

LABEL_16:
  v41 = 0;
  v138.i64[0] = v17 & 0xC000000000000001;
  v42 = (v17 & 0xFFFFFFFFFFFFFF8);
  do
  {
    if (v138.i64[0])
    {
      v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v41 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v43 = *(v17 + 8 * v41 + 32);
    }

    a1 = v43;
    v44 = (v41 + 1);
    if (__OFADD__(v41, 1))
    {
      goto LABEL_34;
    }

    v45 = [v43 anchor];
    if (!v45)
    {
LABEL_17:

      goto LABEL_18;
    }

    v46 = v45;
    objc_opt_self();
    v47 = swift_dynamicCastObjCClass();
    if (v47)
    {
      v142 = v47;
      __chkstk_darwin(v47);
      *&v124[-16] = &v142;
      v48 = sub_1001038E8(sub_10006C3A8, &v124[-32], v137);

      if ((v48 & 1) == 0)
      {
        goto LABEL_17;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

LABEL_18:
    ++v41;
  }

  while (v44 != v40);
  v49 = v139[0];

  v50 = v49 & 0x4000000000000000;
  if ((v49 & 0x8000000000000000) == 0 && !v50)
  {
    if (*(v49 + 16))
    {
      goto LABEL_32;
    }

LABEL_100:

    v108 = 0;
    v51 = enum case for ARPlaneAnchor.Classification.none(_:);
    v109 = v131;
    while (1)
    {
      if (v138.i64[0])
      {
        v110 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v108 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_117;
        }

        v110 = *(v17 + 8 * v108 + 32);
      }

      v111 = v110;
      v44 = (v108 + 1);
      if (__OFADD__(v108, 1))
      {
        break;
      }

      v112 = [v110 anchor];
      if (v112)
      {
        v113 = v112;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          ARPlaneAnchor.classification.getter();
          v114 = v136;

          if ((*v135)(v109, v114) == v51)
          {

            (*v134)(v109, v114);
            v76 = v129;
            Date.init()();

            v115 = type metadata accessor for Date();
            (*(*(v115 - 8) + 56))(v76, 0, 1, v115);
            v116 = qword_1004A3900;
            v117 = v132;
            swift_beginAccess();
            v78 = v117 + v116;
            goto LABEL_115;
          }

          (*v134)(v109, v114);
        }

        else
        {
        }
      }

      else
      {
      }

      ++v108;
      if (v44 == v40)
      {

        return;
      }
    }

    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    v72 = _CocoaArrayWrapper.endIndex.getter();
    v73 = v132;
    if (v72 <= 1)
    {
      v72 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_120;
    }

LABEL_69:
    if (v125)
    {
      v74 = *(**(v73 + qword_1004A3840) + 144);

      v74(v139, v75);

      if (v141)
      {

        v76 = v129;
        Date.init()();

        v44(v76, 0, 1, v51);
        v77 = qword_1004A38F8;
        swift_beginAccess();
        v78 = v73 + v77;
LABEL_115:
        sub_10006CA08(v76, v78, &unk_1004A3D90, &unk_1003DDD80);
        swift_endAccess();
        return;
      }

      v93 = v140;
      v94 = v129;
      v44(v129, 1, 1, v51);
      v95 = qword_1004A38F8;
      swift_beginAccess();
      sub_10006CA08(v94, v73 + v95, &unk_1004A3D90, &unk_1003DDD80);
      swift_endAccess();
      v139[0] = v42;
      sub_1000A2570(0, v72, 0);
      v96 = 0;
      v97 = v139[0];
      do
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v98 = *(v17 + 8 * v96 + 32);
        }

        v99 = v98;
        [v98 worldTransform];
        v138 = v100;
        v137 = v101;
        v136 = v102;
        v135 = v103;

        simd_float4x4.position.getter();
        v139[0] = v97;
        v106 = *(v97 + 16);
        v105 = *(v97 + 24);
        if (v106 >= v105 >> 1)
        {
          v138 = v104;
          sub_1000A2570((v105 > 1), v106 + 1, 1);
          v104 = v138;
          v97 = v139[0];
        }

        ++v96;
        *(v97 + 16) = v106 + 1;
        *(v97 + 16 * v106 + 32) = v104;
      }

      while (v72 != v96);

      v139[0] = v97;

      v107 = v134;
      sub_100054808(v139, v93);
      if (v107)
      {
        goto LABEL_129;
      }
    }

    else
    {
      v139[0] = v42;
      sub_1000A2570(0, v72, 0);
      v79 = 0;
      v80 = v139[0];
      do
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v81 = *(v17 + 8 * v79 + 32);
        }

        v82 = v81;
        [v81 worldTransform];
        v138 = v83;
        v137 = v84;
        v136 = v85;
        v135 = v86;

        simd_float4x4.position.getter();
        v139[0] = v80;
        v89 = *(v80 + 16);
        v88 = *(v80 + 24);
        if (v89 >= v88 >> 1)
        {
          v138 = v87;
          sub_1000A2570((v88 > 1), v89 + 1, 1);
          v87 = v138;
          v80 = v139[0];
        }

        ++v79;
        *(v80 + 16) = v89 + 1;
        *(v80 + 16 * v89 + 32) = v87;
      }

      while (v72 != v79);

      v139[0] = v80;

      v90 = v134;
      sub_100054884(v139);
      if (v90)
      {
        goto LABEL_129;
      }

      v91 = 0;
      while (*(v139[0] + 16) != v91)
      {
        v92 = (v139[0] + 16 * v91++);
        if (fabsf(COERCE_FLOAT(vsubq_f32(v130, v92[32]).i32[1])) < 2.5)
        {
          v138 = v92[2];

          return;
        }
      }
    }

LABEL_85:

    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_100;
  }

LABEL_32:
  v134 = 0;

  a1 = _swiftEmptyArrayStorage;
LABEL_38:
  v51 = type metadata accessor for Date();
  v52 = *(v51 - 8);
  v44 = *(v52 + 56);
  v53 = v129;
  v131 = (v52 + 56);
  v44(v129, 1, 1, v51);
  v54 = qword_1004A3900;
  v55 = v132;
  swift_beginAccess();
  sub_10006CA08(v53, v55 + v54, &unk_1004A3D90, &unk_1003DDD80);
  swift_endAccess();
  v139[0] = a1;
  if (v49 < 0 || v50)
  {
LABEL_98:
    v56 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v56 = *(v49 + 16);
  }

  v42 = _swiftEmptyArrayStorage;
  if (!v56)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_66;
  }

  *&v126 = v44;
  *&v127 = v51;
  v57 = 0;
  v44 = (v49 & 0xC000000000000001);
  *&v135 = v49 + 32;
  while (1)
  {
LABEL_44:
    if (v44)
    {
      v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v57 >= *(v49 + 16))
      {
        goto LABEL_97;
      }

      v58 = *(v135 + 8 * v57);
    }

    v59 = v58;
    if (__OFADD__(v57++, 1))
    {
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    *&v136 = [v58 anchor];
    if (v136)
    {
      break;
    }

LABEL_43:

    if (v57 == v56)
    {
      goto LABEL_64;
    }
  }

  LODWORD(v137) = 0;
  v61 = 0;
  while (2)
  {
    while (2)
    {
      if (v44)
      {
        v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v61 >= *(v49 + 16))
        {
          __break(1u);
          goto LABEL_96;
        }

        v62 = *(v49 + 8 * v61 + 32);
      }

      v63 = v62;
      v64 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
        goto LABEL_85;
      }

      v65 = [v62 anchor];
      if (!v65)
      {
LABEL_51:

        ++v61;
        if (v64 == v56)
        {
          goto LABEL_60;
        }

        continue;
      }

      break;
    }

    v51 = v65;
    [v59 worldTransform];
    simd_float4x4.position.getter();
    v138 = v66;
    [v63 worldTransform];
    simd_float4x4.position.getter();
    if (fabsf(COERCE_FLOAT(vsubq_f32(v138, v67).i32[1])) >= 0.5)
    {

      goto LABEL_51;
    }

    [v136 lastUpdateTimestamp];
    v69 = v68;
    [v51 lastUpdateTimestamp];
    v71 = v70;

    LODWORD(v137) = (v69 < v71) | v137;
    ++v61;
    if (v64 != v56)
    {
      continue;
    }

    break;
  }

LABEL_60:

  if (v137)
  {
    goto LABEL_43;
  }

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  if (v57 != v56)
  {
    goto LABEL_44;
  }

LABEL_64:
  v17 = v139[0];
  v51 = v127;
  v44 = v126;
  v42 = _swiftEmptyArrayStorage;
LABEL_66:

  if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
  {
    goto LABEL_118;
  }

  v72 = *(v17 + 16);
  v73 = v132;
  if (v72 > 1)
  {
    goto LABEL_69;
  }

LABEL_120:
  if (v72)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v118 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_124:
      v119 = v118;

      [v119 worldTransform];
      v138 = v120;
      v137 = v121;
      v136 = v122;
      v135 = v123;

      simd_float4x4.position.getter();
    }

    else
    {
      if (*(v17 + 16))
      {
        v118 = *(v17 + 32);
        goto LABEL_124;
      }

      __break(1u);
LABEL_129:

      __break(1u);
    }
  }

  else
  {
  }
}

void sub_100060E40(void *a1@<X8>)
{
  type metadata accessor for MeasureCamera();

  StateValue.wrappedValue.getter();

  memcpy(__dst, __src, sizeof(__dst));
  sub_100013C4C(__dst);

  StateValue.wrappedValue.getter();

  memcpy(__src, v19, sizeof(__src));
  sub_100013C4C(__src);
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  CGPoint.init(xy:)();
  if (qword_1004A0850 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
  if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
  {
    __break(1u);
    goto LABEL_9;
  }

  CGRect.center.getter();
  if (*(v4 + 80))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  CGRect.center.getter();
  if (*(v4 + 80))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  static CGPoint.- infix(_:_:)();
  CGPoint.length()();
  CGPoint.normalized()();
  if ((*(v4 + 80) & 1) == 0)
  {
    CGPoint.multiply(by:)();
    CGPoint.multiply(by:)();
    static CGPoint.- prefix(_:)();
    CGPoint.multiply(by:)();
    static CGPoint.- prefix(_:)();
    static CGPoint.+ infix(_:_:)();
    static CGPoint.+ infix(_:_:)();
    v18 = v5;
    v17 = v6;
    static CGPoint.+ infix(_:_:)();
    static CGPoint.+ infix(_:_:)();
    v15 = v8;
    v16 = v7;
    static CGPoint.+ infix(_:_:)();
    static CGPoint.+ infix(_:_:)();
    v10 = v9;
    v12 = v11;
    static CGPoint.+ infix(_:_:)();
    static CGPoint.+ infix(_:_:)();
    *a1 = v18;
    a1[1] = v17;
    a1[2] = v16;
    a1[3] = v15;
    a1[4] = v10;
    a1[5] = v12;
    a1[6] = v13;
    a1[7] = v14;
    return;
  }

LABEL_11:
  __break(1u);
}

double sub_100061180(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v22 = a3;
  v23 = a4;
  v20 = a1;
  v21 = a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000F974(&unk_1004A3D90, &unk_1003DDD80);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v20 - v13;
  v15 = sub_1000558A4();
  if (v15)
  {

    sub_100055A10(0xD000000000000019, 0x8000000100402950);
    sub_10005931C();
  }

  v16 = qword_1004A3908;
  swift_beginAccess();
  sub_10006C92C(v4 + v16, v14, &unk_1004A3D90, &unk_1003DDD80);
  v17 = (*(v6 + 48))(v14, 1, v5);
  sub_100018F04(v14, &unk_1004A3D90, &unk_1003DDD80);
  if (v17 == 1)
  {
    Date.init()();
    (*(v6 + 56))(v11, 0, 1, v5);
    swift_beginAccess();
    sub_10006CA08(v11, v4 + v16, &unk_1004A3D90, &unk_1003DDD80);
    swift_endAccess();
  }

  sub_10006154C(v20, v21, v22, v23);
  Date.init()();
  v18 = qword_1004A38C8;
  swift_beginAccess();
  (*(v6 + 40))(v4 + v18, v8, v5);
  swift_endAccess();
  return result;
}

void sub_100061414(uint64_t a1, void **a2, double a3, double a4, double a5, double a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v11 = *a2;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 1;
  *(a1 + 360) = a3;
  *(a1 + 368) = a4;
  *(a1 + 376) = a5;
  *(a1 + 384) = a6;
  *(a1 + 392) = 0;
  [v11 boundingBox];
  CGRect.center.getter();
  v13 = v12;
  if (qword_1004A0850 != -1)
  {
    swift_once();
  }

  v14 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
  if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
  {
    __break(1u);
  }

  else
  {
    Width = CGRectGetWidth(*(v14 + 48));
    [v11 boundingBox];
    CGRect.center.getter();
    if ((*(v14 + 80) & 1) == 0)
    {
      v17 = v16;
      Height = CGRectGetHeight(*(v14 + 48));
      *(a1 + 8) = v13 * Width;
      *(a1 + 16) = v17 * Height;
      *(a1 + 24) = 0;
      *(a1 + 128) = a7;
      *(a1 + 144) = a8;
      *(a1 + 160) = a9;
      *(a1 + 176) = a10;
      *(a1 + 192) = 0;
      return;
    }
  }

  __break(1u);
}

void sub_10006154C(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = v4;
  v6 = objc_allocWithZone(type metadata accessor for WorldPerson());
  v7 = WorldPerson.init(_:)();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v10 = *((swift_isaMask & *v7) + 0xF0);
  v11 = v7;

  v10(sub_10006C2F8, v9);

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v14 = *((swift_isaMask & *v11) + 0x108);
  v15 = v11;

  v14(sub_10006C300, v13);

  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v5;
  v17 = *((swift_isaMask & *v15) + 0x138);
  v18 = v15;
  v19 = v5;
  v17(sub_10006C348, v16);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v18;
  v22 = *((swift_isaMask & *v18) + 0x180);
  v23 = v18;

  v22(sub_10006C350, v21);

  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  *(v24 + 24) = v23;
  v25 = *((swift_isaMask & *v23) + 0x1C8);
  v26 = v23;
  v27 = v19;
  v25(sub_10006C358, v24);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v26;
  v30 = *((swift_isaMask & *v26) + 0x1B0);
  v31 = v26;

  v30(sub_10006C3A0, v29);

  (*((swift_isaMask & *v31) + 0x150))(nullsub_1, 0);
  (*((swift_isaMask & *v31) + 0x168))(nullsub_1, 0);
  (*((swift_isaMask & *v31) + 0x1E0))(sub_100066294, 0);
  (*((swift_isaMask & *v31) + 0x198))(sub_100066294, 0);

  if (qword_1004A0230 != -1)
  {
    swift_once();
  }

  _StringGuts.grow(_:)(22);

  _._countAndFlagsBits = 0xD000000000000014;
  _._object = 0x8000000100402970;

  StateValue.wrappedValue.getter();

  memcpy(__dst, __src, sizeof(__dst));
  sub_100013C4C(__dst);
  __src[0] = __dst[0];
  v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v32);

  Log.debug(_:isPrivate:)(_, 0);

  v33 = *(**&v27[qword_1004A3848] + 400);

  v34 = v33(__src);
  v36 = v35;
  v37 = v31;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v34(__src, 0);

  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  sub_100123A94(v37);
}

void sub_100061D14(__n128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D2>, CGFloat a4@<D3>)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v184 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v184 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = a1;
  v16 = sub_10008D4F0();
  v17 = 0uLL;
  if (!v16)
  {
    v37 = 0;
    v38 = 0;
    v36 = 1;
    goto LABEL_14;
  }

  v18 = v16;
  v199 = v15;
  v19 = [v16 segmentationBuffer];
  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = v19;
  v21 = [v18 sceneDepth];
  if (!v21 || (v194 = v13, v22 = v21, v23 = [v21 depthMap], v22, !v23))
  {

LABEL_12:
    v37 = 0;
    v38 = 0;
    v36 = 1;
    goto LABEL_13;
  }

  v24 = v23;
  CGRect.center.getter();
  v26 = v25;
  v28 = v27;
  if (qword_1004A0850 != -1)
  {
    goto LABEL_156;
  }

LABEL_6:
  v29 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
  if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
  {
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
    return;
  }

  v189 = v11;
  v190 = v12;
  v191 = v9;
  v192 = v8;
  Width = CGRectGetWidth(*(v29 + 48));
  if (*(v29 + 80))
  {
    goto LABEL_159;
  }

  v31 = Width;
  Height = CGRectGetHeight(*(v29 + 48));
  CVPixelBufferLockBaseAddress(v20, 1uLL);
  CVPixelBufferLockBaseAddress(v24, 1uLL);
  *&v224 = CVPixelBufferGetWidth(v20);
  BaseAddress = CVPixelBufferGetBaseAddress(v20);
  v11 = CVPixelBufferGetBaseAddress(v24);
  v33 = v24;
  v34 = *(**&v222[qword_1004A3820] + 144);

  v34(&v225, v35);

  if (v227)
  {
    v36 = 1;
    CVPixelBufferUnlockBaseAddress(v20, 1uLL);
    CVPixelBufferUnlockBaseAddress(v33, 1uLL);

    v37 = 0;
    v38 = 0;
LABEL_13:
    v17 = 0uLL;
    goto LABEL_14;
  }

  v223 = a4;
  v188 = v24;
  v39 = COERCE_FLOAT(vdupq_n_s64(v226).i32[2]);
  v40 = Float.piDiv2.unsafeMutableAddressor();
  CGAffineTransformMakeRotation(&v225, (v39 + (*v40 * 3.0)));
  if (*(v29 + 80))
  {
    goto LABEL_160;
  }

  v210 = a3;
  v217 = v28 * Height;
  *v218.i64 = v26 * v31;
  v41 = v224;
  v42 = v224;
  v43 = CGRectGetHeight(*(v29 + 48));
  *&a3 = v42 / v43;
  CGPoint.divide(by:)();
  static CGPoint.- prefix(_:)();
  v28 = v44;
  v193 = *&a3;
  CGPoint.divide(by:)();
  v220 = v46;
  v221 = v45;
  *&v224 = v41;
  v47 = -1;
  v48 = 0.0;
  v8 = 0x7FEFFFFFFFFFFFFFLL;
  v9 = 0xC3E0000000000001;
  v12 = 0x43E0000000000000;
  do
  {
    CGPoint.multiply(by:)();
    CGPoint.add(_:)();
    v26 = v49;
    CGPoint.multiply(by:)();
    CGPoint.add(_:)();
    a4 = v50;
    v52 = v51;
    v24 = v222;
    sub_1000555A0(&v229);
    v225 = v229;
    v238.x = a4;
    v238.y = v52;
    v53 = CGPointApplyAffineTransform(v238, &v225);
    v54 = round(v53.x) + round(v53.y) * *&v224;
    if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      swift_once();
      goto LABEL_6;
    }

    if (v54 <= -9.22337204e18)
    {
      goto LABEL_139;
    }

    if (v54 >= 9.22337204e18)
    {
      goto LABEL_140;
    }

    LODWORD(a3) = *&v11[4 * v54];
    CGPoint.multiply(by:)();
    CGPoint.add(_:)();
    a4 = v55;
    v57 = v56;
    v24 = v222;
    sub_1000555A0(&v229);
    v225 = v229;
    v239.x = a4;
    v239.y = v57;
    v58 = CGPointApplyAffineTransform(v239, &v225);
    v59 = round(v58.x) + round(v58.y) * *&v224;
    if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_138;
    }

    if (v59 <= -9.22337204e18)
    {
      goto LABEL_139;
    }

    if (v59 >= 9.22337204e18)
    {
      goto LABEL_140;
    }

    LODWORD(a4) = *&v11[4 * v59];
    CGPoint.multiply(by:)();
    CGPoint.add(_:)();
    v26 = v60;
    v62 = v61;
    v24 = v222;
    sub_1000555A0(&v229);
    v225 = v229;
    v240.x = v26;
    v240.y = v62;
    v63 = CGPointApplyAffineTransform(v240, &v225);
    v64 = round(v63.x) + round(v63.y) * *&v224;
    if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_138;
    }

    if (v64 <= -9.22337204e18)
    {
      goto LABEL_139;
    }

    if (v64 >= 9.22337204e18)
    {
      goto LABEL_140;
    }

    v48 = ((v48 + *&a3) + *&a4) + *&v11[4 * v64];
    ++v47;
  }

  while (v47 != 2);
  v186 = v20;
  v187 = v18;
  v185 = a2;
  v65 = v223;
  v66 = v207[7];
  v215 = v207[8];
  v216 = v66;
  v67 = v207[9];
  v213 = v207[10];
  v214 = v67;
  v68 = v207[19].n128_f64[0];
  v69 = v207[19].n128_f64[1];
  a4 = v207[20].n128_f64[0];
  v70 = v207[20].n128_f64[1];
  v71 = v207[29];
  v211 = v207[30];
  v212 = v71;
  v209 = v207[31];
  *&v223 = v48 / 9.0;
  v72 = v68;
  v73 = v69;
  v71.n128_f64[0] = a4;
  v74 = v70;
  v75 = CGRectGetHeight(*(&v71 - 1));
  v76 = v65 * v75;
  v77 = v210;
  v244.origin.x = v68;
  v244.origin.y = v69;
  v244.size.width = a4;
  v244.size.height = v70;
  v78 = CGRectGetWidth(v244);
  v79 = v77 * v78;
  if (v76 > v79)
  {
    v79 = v76;
  }

  *&a4 = roundf(v193 * (v79 * 0.5));
  static CGPoint.- prefix(_:)();
  v26 = v80;
  v20 = &v222[qword_1004A3948];
  v81 = 0.0;
  v9 = 1;
  v24 = 0x7FEFFFFFFFFFFFFFLL;
  LODWORD(a3) = 1.0;
  v8 = 0x43E0000000000000;
  v12 = 1041865114;
  v18 = 0x4070000000000000;
  a2 = 0x4068000000000000;
  do
  {
    v82 = v81;
    v81 = v81 + 1.0;
    CGPoint.multiply(by:)();
    static CGPoint.+ infix(_:_:)();
    v83 = v20[1];
    *&v225.a = *v20;
    *&v225.c = v83;
    *&v225.tx = v20[2];
    v84 = CGPointApplyAffineTransform(v241, &v225);
    v85 = round(v84.x) + round(v84.y) * *&v224;
    if ((*&v85 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_144;
    }

    if (v85 <= -9.22337204e18)
    {
      goto LABEL_145;
    }

    if (v85 >= 9.22337204e18)
    {
      goto LABEL_146;
    }

    v86 = BaseAddress[v85];
    v87 = vabds_f32(*&v11[4 * v85], *&v223);
    v89 = v86 > 1 && v87 < 0.15;
    v90 = v84.x >= 0.0;
    if (v84.x >= 256.0)
    {
      v90 = 0;
    }

    v91 = v84.y >= 0.0;
    if (v84.y >= 192.0)
    {
      v91 = 0;
    }

    v92 = v89 & v90 & v91;
    if (v92 != 1 && (v9 & 1) == 0)
    {
      break;
    }

    v9 = v92;
  }

  while (*&a4 > fabsf(v82));
  CGPoint.multiply(by:)();
  static CGPoint.+ infix(_:_:)();
  v205 = v94;
  v206 = v93;
  v26 = 0.0;
  v9 = 1;
  v24 = 0x7FEFFFFFFFFFFFFFLL;
  LODWORD(a3) = 1.0;
  v8 = 0x43E0000000000000;
  v12 = 1041865114;
  v18 = 0x4070000000000000;
  a2 = 0x4068000000000000;
  do
  {
    v95 = *&v26;
    *&v26 = *&v26 + 1.0;
    CGPoint.multiply(by:)();
    static CGPoint.+ infix(_:_:)();
    v96 = v20[1];
    *&v225.a = *v20;
    *&v225.c = v96;
    *&v225.tx = v20[2];
    v97 = CGPointApplyAffineTransform(v242, &v225);
    v98 = round(v97.x) + round(v97.y) * *&v224;
    if ((*&v98 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_147;
    }

    if (v98 <= -9.22337204e18)
    {
      goto LABEL_148;
    }

    if (v98 >= 9.22337204e18)
    {
      goto LABEL_149;
    }

    v99 = BaseAddress[v98];
    v100 = vabds_f32(*&v11[4 * v98], *&v223);
    v102 = v99 > 1 && v100 < 0.15;
    v103 = v97.x >= 0.0;
    if (v97.x >= 256.0)
    {
      v103 = 0;
    }

    v104 = v97.y >= 0.0;
    if (v97.y >= 192.0)
    {
      v104 = 0;
    }

    v105 = v102 & v103 & v104;
    if (v105 != 1 && (v9 & 1) == 0)
    {
      break;
    }

    v9 = v105;
  }

  while (*&a4 > fabsf(v95));
  CGPoint.multiply(by:)();
  static CGPoint.+ infix(_:_:)();
  v203 = v107;
  v204 = v106;
  static CGPoint.+ infix(_:_:)();
  / infix(_:_:)();
  v109 = v108;
  v26 = v110;
  v111 = 0.0;
  v24 = 1;
  LODWORD(a4) = 1.0;
  v8 = 0xC3E0000000000001;
  v9 = 0x43E0000000000000;
  v12 = 1041865114;
  v18 = 0x4070000000000000;
  a2 = 0x4068000000000000;
  do
  {
    *&a3 = v111;
    v111 = v111 + 1.0;
    CGPoint.multiply(by:)();
    static CGPoint.+ infix(_:_:)();
    v112 = v20[1];
    *&v225.a = *v20;
    *&v225.c = v112;
    *&v225.tx = v20[2];
    v113 = CGPointApplyAffineTransform(v243, &v225);
    v114 = round(v113.x) + round(v113.y) * *&v224;
    if ((*&v114 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_141;
    }

    if (v114 <= -9.22337204e18)
    {
      goto LABEL_142;
    }

    if (v114 >= 9.22337204e18)
    {
      goto LABEL_143;
    }

    v115 = BaseAddress[v114];
    v116 = vabds_f32(*&v11[4 * v114], *&v223);
    v118 = v115 > 1 && v116 < 0.15;
    v119 = v113.x >= 0.0;
    if (v113.x >= 256.0)
    {
      v119 = 0;
    }

    v120 = v113.y >= 0.0;
    if (v113.y >= 192.0)
    {
      v120 = 0;
    }

    v121 = v118 & v119 & v120;
    v122 = v121 | v24;
    v24 = v121;
  }

  while ((v122 & 1) != 0);
  CGPoint.multiply(by:)();
  static CGPoint.+ infix(_:_:)();
  v201 = v124;
  v202 = v123;
  v8 = v222;
  v184 = qword_1004A3968;
  if (v222[qword_1004A3968] == 1)
  {
    sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.main.getter();
    v125 = swift_allocObject();
    *(v125 + 16) = v8;
    v126 = v205;
    *(v125 + 24) = v206;
    *(v125 + 32) = v126;
    v127 = v203;
    *(v125 + 40) = v204;
    *(v125 + 48) = v127;
    v128 = v201;
    *(v125 + 56) = v202;
    *(v125 + 64) = v128;
    v129 = v217;
    *(v125 + 72) = v218.i64[0];
    *(v125 + 80) = v129;
    *(v125 + 88) = v109;
    *(v125 + 96) = v26;
    *&v225.tx = sub_10006C8B0;
    *&v225.ty = v125;
    *&v225.a = _NSConcreteStackBlock;
    *&v225.b = 1107296256;
    *&v225.c = sub_100041180;
    *&v225.d = &unk_10046A1A0;
    v130 = _Block_copy(&v225);
    v131 = v8;

    v12 = v199;
    static DispatchQoS.unspecified.getter();
    *&v225.a = _swiftEmptyArrayStorage;
    v218.i64[0] = sub_10006C9C0(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
    v132 = v189;
    v133 = v192;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v130);

    v134 = v132;
    v8 = v222;
    (*(v191 + 8))(v134, v133);
    (*(v194 + 8))(v12, v190);
  }

  *&v200 = 0;
  v198 = 0;
  v217 = *&qword_1004A3940;
  v210 = v209.n128_f64[1];
  v9 = -3;
  v195 = 1;
  v196 = 0.0;
  v197 = 0.0;
  a2 = 0x4068000000000000;
  v24 = BaseAddress;
  *&a3 = v193;
  while (2)
  {
    CGPoint.multiply(by:)();
    static CGPoint.+ infix(_:_:)();
    v26 = v135;
    static CGPoint.distance(_:_:)();
    v137 = *&a3 * (v136 * 0.5);
    if ((LODWORD(v137) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      goto LABEL_150;
    }

    if (v137 <= -9.2234e18)
    {
      goto LABEL_151;
    }

    if (v137 >= 9.2234e18)
    {
      goto LABEL_152;
    }

    v138 = v137;
    if (v137 < 0)
    {
      v139 = __OFSUB__(0, v138);
      v138 = -v138;
      if (v139)
      {
        goto LABEL_155;
      }
    }

    v12 = -v138;
    if (__OFSUB__(0, v138))
    {
      goto LABEL_153;
    }

    if (v138 < v12)
    {
      goto LABEL_154;
    }

    v208 = v9;
    v18 = 2 * v138;
    v9 = _swiftEmptyArrayStorage;
    while (1)
    {
      CGPoint.multiply(by:)();
      static CGPoint.+ infix(_:_:)();
      v141 = v140;
      v143 = v142;
      v144 = v20[1];
      *&v225.a = *v20;
      *&v225.c = v144;
      *&v225.tx = v20[2];
      *&v144 = v143;
      v145 = CGPointApplyAffineTransform(*&v140, &v225);
      if (v145.x < 0.0 || v145.x >= 256.0)
      {
        goto LABEL_108;
      }

      if (v145.y < 0.0 || v145.y >= 192.0)
      {
        goto LABEL_108;
      }

      v148 = round(v145.x) + round(v145.y) * *&v224;
      if ((*&v148 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_135;
      }

      if (v148 <= -9.22337204e18)
      {
        goto LABEL_136;
      }

      if (v148 >= 9.22337204e18)
      {
        goto LABEL_137;
      }

      v149 = *(v24 + v148);
      LODWORD(a4) = *&v11[4 * v148];
      v150 = vabds_f32(*&a4, *&v223);
      if (v149 < 2 || v150 >= 0.15)
      {
LABEL_108:
        if (!v18)
        {
          break;
        }

        goto LABEL_109;
      }

      if (!*(v8 + *&v217))
      {
        __break(1u);
        goto LABEL_158;
      }

      v152 = DepthProcessor.transformer.getter();
      v234[0] = v212;
      v234[1] = v211;
      v235 = v209.n128_u64[0];
      v236 = v210;
      v237 = 0;
      *v153.i64 = (*(*v152 + 584))(v234, v141, v143, *&a4, v216, v215, v214, v213);
      v218 = v153;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100067D30(0, *(v9 + 16) + 1, 1, v9);
      }

      v155 = *(v9 + 16);
      v154 = *(v9 + 24);
      if (v155 >= v154 >> 1)
      {
        v9 = sub_100067D30((v154 > 1), v155 + 1, 1, v9);
      }

      *(v9 + 16) = v155 + 1;
      v156 = (v9 + 48 * v155);
      v156[2] = v218;
      v156[3].i32[0] = LODWORD(a4);
      *&v156[3].i64[1] = v141;
      *v156[4].i64 = v143;
      v8 = v222;
      v24 = BaseAddress;
      if (!v18)
      {
        break;
      }

LABEL_109:
      --v18;
      v139 = __OFADD__(v12++, 1);
      if (v139)
      {
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }
    }

    if (*(v9 + 16) < 4uLL)
    {

      if (v208 != 3)
      {
        v9 = v208 + 1;
        if (!__OFADD__(v208, 1))
        {
          continue;
        }

        goto LABEL_128;
      }

LABEL_129:
      if (v195)
      {
        v36 = 1;
        v166 = v186;
        CVPixelBufferUnlockBaseAddress(v186, 1uLL);
        v167 = v188;
        CVPixelBufferUnlockBaseAddress(v188, 1uLL);

        v37 = 0;
        v38 = 0;
        a2 = v185;
        goto LABEL_13;
      }
    }

    else
    {
      v157 = *SIMD3<>.zero.unsafeMutableAddressor();
      v159 = *(v9 + 16);
      if (v159)
      {
        v160 = (v9 + 32);
        v161 = *(v9 + 16);
        do
        {
          v162 = *v160;
          v160 += 3;
          v157 = vaddq_f32(v157, v162);
          v157.i32[3] = 0;
          --v161;
        }

        while (v161);
      }

      v218 = v157;
      if (v159)
      {
        v12 = v9 + 64;
        v18 = v159;
        do
        {
          static CGPoint.+ infix(_:_:)();
          v12 += 48;
          --v18;
        }

        while (v18);
      }

      *&v158 = v159;
      v200 = v158;
      v163.i64[0] = vdivq_f32(v218, vdupq_lane_s32(*&v158, 0)).u64[0];
      v163.f32[2] = v218.f32[2] / v159;
      v163.i32[3] = 0;
      v218 = v163;

      CGPoint.divide(by:)();
      v196 = v165;
      v197 = v164;
      v198 = v218.i64[1];
      *&v200 = v218.i64[0];
      if (v208 != 3)
      {
        v195 = 0;
        v24 = BaseAddress;
        v9 = v208 + 1;
        if (!__OFADD__(v208, 1))
        {
          continue;
        }

LABEL_128:
        __break(1u);
        goto LABEL_129;
      }
    }

    break;
  }

  v168 = *(v8 + *&v217);
  v169 = v187;
  v170 = v8;
  a2 = v185;
  v171 = v186;
  if (!v168)
  {
    goto LABEL_161;
  }

  v172 = DepthProcessor.transformer.getter();
  v230[1] = v211;
  v230[0] = v212;
  v231 = v209.n128_u64[0];
  v232 = v210;
  v233 = 0;
  *&v173 = (*(*v172 + 584))(v230, v197, v196, *&v223, v216, v215, v214, v213);
  v224 = v173;

  v174 = v199;
  if (*(v170 + v184) == 1)
  {
    sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
    v223 = COERCE_DOUBLE(static OS_dispatch_queue.main.getter());
    v175 = swift_allocObject();
    *(v175 + 16) = v224;
    v176 = v207;
    memcpy((v175 + 32), v207, 0x200uLL);
    *(v175 + 544) = v170;
    v228[4] = sub_10006C868;
    v228[5] = v175;
    v228[0] = _NSConcreteStackBlock;
    v228[1] = 1107296256;
    v228[2] = sub_100041180;
    v228[3] = &unk_10046A150;
    v222 = _Block_copy(v228);
    v177 = v170;
    sub_10004B20C(v176, &v225);

    static DispatchQoS.unspecified.getter();
    *&v225.a = _swiftEmptyArrayStorage;
    sub_10006C9C0(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
    v178 = v174;
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
    v179 = v189;
    v171 = v186;
    v169 = v187;
    v180 = v192;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v182 = v222;
    v181 = v223;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v182);

    (*(v191 + 8))(v179, v180);
    (*(v194 + 8))(v178, v190);
  }

  CVPixelBufferUnlockBaseAddress(v171, 1uLL);
  v183 = v188;
  CVPixelBufferUnlockBaseAddress(v188, 1uLL);

  v36 = 0;
  v17 = v224;
  v37 = v200;
  v38 = v198;
LABEL_14:
  *a2 = v37;
  *(a2 + 8) = v38;
  *(a2 + 16) = v17;
  *(a2 + 32) = v36;
}

void sub_1000631A0(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  v20 = sub_100055518();
  sub_1001B8C90();

  v21 = qword_1004A3910;
  v22 = *(a1 + qword_1004A3910);
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 redColor];
  sub_1001B8D80(v25, a2, a3, 3.0);

  v26 = *(a1 + v21);
  v27 = [v23 greenColor];
  sub_1001B8D80(v27, a4, a5, 3.0);

  v28 = *(a1 + v21);
  v29 = [v23 blueColor];
  sub_1001B8D80(v29, a6, a7, 3.0);

  v30 = *(a1 + v21);
  v31 = [v23 orangeColor];
  sub_1001B8D80(v31, a8, a9, 3.0);

  v32 = *(a1 + v21);
  v33 = [v23 yellowColor];
  sub_1001B8D80(v33, a10, a11, 3.0);
}

void sub_1000633A0(__n128 *a1, __n128 a2)
{
  type metadata accessor for MeasureCamera();
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  CGPoint.init(xy:)();
  v3 = v2;
  v5 = v4;
  v6 = sub_100055518();
  v7 = [objc_opt_self() grayColor];
  sub_1001B8D80(v7, v3, v5, 3.0);
}

void sub_10006345C(uint64_t a1, uint64_t a2, float a3, uint64_t a4, char a5, char a6)
{
  *(a1 + 436) = a3;
  *(a1 + 440) = 0;
  if (*(a1 + 192))
  {
    __break(1u);
  }

  else
  {
    v8 = HIDWORD(a2);
    simd_float4x4.position.getter();
    v10.f32[0] = a3 * 0.0;
    v10.f32[1] = a3;
    *&v12 = vsub_f32(v11, v10);
    *(&v12 + 2) = v13 - (a3 * 0.0);
    HIDWORD(v12) = 0;
    *(a1 + 512) = v12;
    *(a1 + 528) = 0;
    v14 = v8;
    if (a5)
    {
      v14 = 0;
    }

    *(a1 + 444) = v14;
    *(a1 + 448) = a5 & 1;
    *(a1 + 529) = a6;
  }
}

void sub_100063534()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v4 = *(v19 - 8);
  __chkstk_darwin(v19);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  aBlock[4] = sub_10006CA70;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046A218;
  v8 = _Block_copy(aBlock);
  v9 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006C9C0(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v10 = v18;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v20 + 8))(v3, v1);
  (*(v4 + 8))(v6, v19);
  v11 = MTLCreateSystemDefaultDevice();
  if (!v11)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = qword_1004A3920;
  *&v9[qword_1004A3920] = v11;
  swift_unknownObjectRelease();
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (!*(&xmmword_1004D4AB8 + 1))
  {
    goto LABEL_8;
  }

  v13 = *(&xmmword_1004D4AB8 + 1);
  v14 = sub_1001CC738();

  v15 = *&v9[v12];
  if (v15)
  {
    type metadata accessor for PersonHeightDebugNode();
    swift_allocObject();
    v16 = v9;
    swift_unknownObjectRetain();
    *&v16[qword_1004A3928] = sub_10013C03C(v14, v16, v15);

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_100063904(uint64_t a1)
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v2 = qword_1004D4AC8;
  if (!qword_1004D4AC8)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = *(qword_1004D4AC8 + 88);
  if (v3)
  {
    [v3 frame];
    MaxY = CGRectGetMaxY(v12);
    v2 = qword_1004D4AC8;
    if (!qword_1004D4AC8)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v5 = MaxY;
    v6 = *(a1 + qword_1004A3918);

    [v6 frame];
    v14 = CGRectOffset(v13, 0.0, v5);
  }

  else
  {
    v7 = *(a1 + qword_1004A3918);

    [v7 frame];
  }

  v8 = [objc_allocWithZone(type metadata accessor for PersonHeightDebugStatsView(0)) initWithFrame:{v14.origin.x, v14.origin.y, v14.size.width, v14.size.height}];
  v9 = *(v2 + 24);
  *(v2 + 24) = v8;

  if (!qword_1004D4AC8)
  {
    goto LABEL_14;
  }

  if (!*(qword_1004D4AC8 + 24))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(qword_1004D4AC8 + 16);

  [v10 addSubview:?];
}

double sub_100063A78(uint64_t a1, char a2)
{
  v4 = ~a2;
  v5 = qword_1004A3838;
  v6 = *(**(a1 + qword_1004A3838) + 400);

  v7 = v6(v13);
  *v8 = (a2 & 1) == 0;
  v7(v13, 0);

  if ((v4 & 1) == 0)
  {
    v10 = *(**(a1 + v5) + 400);

    v11 = v10(v13);
    *(v12 + 1) = 0;
    v11(v13, 0);
  }

  return result;
}

uint64_t sub_100063B98(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + qword_1004A3928);
  if (a1)
  {
    if (v9)
    {
      swift_beginAccess();
      v9[32] = 0;
      swift_beginAccess();
      v9[33] = 0;
      swift_beginAccess();
      v9[34] = 0;
    }

    sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
    v10 = static OS_dispatch_queue.main.getter();
    v21 = sub_100063F8C;
    v22 = 0;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v11 = &unk_10046A268;
  }

  else
  {
    if (v9)
    {
      swift_beginAccess();
      v9[32] = 1;
      swift_beginAccess();
      v9[33] = 1;
      swift_beginAccess();
      v9[34] = 1;
    }

    sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
    v10 = static OS_dispatch_queue.main.getter();
    v21 = sub_100064008;
    v22 = 0;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v11 = &unk_10046A240;
  }

  v19 = sub_100041180;
  v20 = v11;
  v12 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10006C9C0(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v16 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v15);
}

void sub_100063F8C()
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (qword_1004D4AC8)
  {
    v0 = *(qword_1004D4AC8 + 24);
    if (v0)
    {

      [v0 removeFromSuperview];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100064008()
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (!qword_1004D4AC8)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!*(qword_1004D4AC8 + 24))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v0 = *(qword_1004D4AC8 + 16);

  [v0 addSubview:?];
}

void sub_100064084(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;

  Synchronized.wrappedValue.getter();

  if ((__dst[8] & 1) == 0)
  {
    v7 = *__dst;
    v8 = *&__dst[1];
    v5 = *&__dst[2];
    v6 = *&__dst[3];
    v3 = *&__dst[4];
    v4 = *&__dst[5];
    v1 = *&__dst[6];
    v2 = *&__dst[7];
    v11 = *(**&v10[qword_1004A3838] + 144);

    v11(__src, v12);

    memcpy(__dst, __src, 0x213uLL);
    sub_10006BE28(__dst);
    if (LOBYTE(__dst[49]) != 1)
    {
      CGRect.center.getter();
      if (qword_1004A0850 != -1)
      {
        goto LABEL_48;
      }

      goto LABEL_9;
    }
  }

  if (qword_1004A0180 != -1)
  {
    goto LABEL_46;
  }

  v13 = qword_1004D4AC8;
  if (!qword_1004D4AC8)
  {
    goto LABEL_47;
  }

LABEL_6:
  v14 = *(v13 + 24);
  if (v14)
  {
    v15 = &v14[qword_1004AA5C0];
    v16 = *&v14[qword_1004AA5C0];
    v17 = v14;
    [v16 removeFromSuperview];
    [v15[1] removeFromSuperview];
    [v15[2] removeFromSuperview];
    [v15[3] removeFromSuperview];
    [*&v17[qword_1004AA5D0] removeFromSuperview];
  }

  while (1)
  {
    if (qword_1004A0180 == -1)
    {
      v36 = qword_1004D4AC8;
      if (qword_1004D4AC8)
      {
        break;
      }

      goto LABEL_45;
    }

    swift_once();
    v36 = qword_1004D4AC8;
    if (qword_1004D4AC8)
    {
      break;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
    v13 = qword_1004D4AC8;
    if (qword_1004D4AC8)
    {
      goto LABEL_6;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
LABEL_9:
    v18 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
    if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
    {
      goto LABEL_56;
    }

    if (qword_1004A0180 == -1)
    {
      v19 = qword_1004D4AC8;
      if (!qword_1004D4AC8)
      {
        goto LABEL_50;
      }
    }

    else
    {
      swift_once();
      v19 = qword_1004D4AC8;
      if (!qword_1004D4AC8)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

    v20 = *(v19 + 24);
    if (v20)
    {
      v52 = v2;
      v53 = v1;
      if (*(v18 + 80))
      {
        goto LABEL_57;
      }

      v1 = *(v18 + 64);
      v2 = *(v18 + 72);
      v21 = &v20[qword_1004AA5C0];
      v22 = *&v20[qword_1004AA5C0];
      v23 = v20;
      v24 = [v22 superview];
      if (v24)
      {

        v2 = v2 * 0.5;
        v1 = v1 * 0.5;
        [*v21 setCenter:{v7, v8}];
        [v21[1] setCenter:{v5, v6}];
        [v21[2] setCenter:{v3, v4}];
        [v21[3] setCenter:{v53, v52}];
        v25 = *&v23[qword_1004AA5D0];
        [v25 setCenter:{v1, v2}];
LABEL_26:

        goto LABEL_27;
      }

      v26 = [v23 superview];
      if (v26)
      {
        v27 = v26;
        [v26 addSubview:*v21];
      }

      v28 = [v23 superview];
      if (v28)
      {
        v29 = v28;
        [v28 addSubview:v21[1]];
      }

      v30 = [v23 superview];
      if (v30)
      {
        v31 = v30;
        [v30 addSubview:v21[2]];
      }

      v32 = [v23 superview];
      if (v32)
      {
        v33 = v32;
        [v32 addSubview:v21[3]];
      }

      v34 = [v23 superview];
      if (v34)
      {
        v35 = v34;
        v25 = *&v23[qword_1004AA5D0];
        [v35 addSubview:v25];

        goto LABEL_26;
      }

LABEL_27:
    }
  }

  v37 = *(v36 + 24);
  if (v37)
  {
    v38 = v37;
    v39 = sub_1000558A4();
    sub_10012DF68(v39);

    v36 = qword_1004D4AC8;
    if (!qword_1004D4AC8)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return;
    }
  }

  v40 = *(v36 + 24);
  if (v40)
  {
    v41 = v10[qword_1004A3870];
    v42 = v40;
    sub_10012E12C(v41);

    v36 = qword_1004D4AC8;
    if (!qword_1004D4AC8)
    {
      goto LABEL_52;
    }
  }

  v43 = *(v36 + 24);
  if (v43)
  {
    v44 = v43;
    sub_10012E740();

    v36 = qword_1004D4AC8;
    if (!qword_1004D4AC8)
    {
      goto LABEL_53;
    }
  }

  v45 = *(v36 + 24);
  if (v45)
  {
    v46 = v45;
    sub_10012EDAC();

    v36 = qword_1004D4AC8;
    if (!qword_1004D4AC8)
    {
      goto LABEL_54;
    }
  }

  v47 = *(v36 + 24);
  if (v47)
  {
    swift_beginAccess();
    v48 = v47;

    sub_10012EEB0(v49);

    v36 = qword_1004D4AC8;
    if (!qword_1004D4AC8)
    {
      goto LABEL_55;
    }
  }

  v50 = *(v36 + 24);
  if (v50)
  {
    v51 = v50;
    sub_10012F040();
  }
}

double sub_10006468C()
{

  sub_100018F04(v0 + qword_1004A3878, &qword_1004A3EB8, &qword_1003D8020);

  v1 = qword_1004A3890;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  sub_100018F04(v0 + qword_1004A38A0, &unk_1004A3D90, &unk_1003DDD80);
  sub_100018F04(v0 + qword_1004A38A8, &unk_1004A3D90, &unk_1003DDD80);

  v3(v0 + qword_1004A38C8, v2);

  sub_100018F04(v0 + qword_1004A38D8, &unk_1004A3D90, &unk_1003DDD80);

  sub_100018F04(v0 + qword_1004A38F0, &unk_1004A3D90, &unk_1003DDD80);
  sub_100018F04(v0 + qword_1004A38F8, &unk_1004A3D90, &unk_1003DDD80);
  sub_100018F04(v0 + qword_1004A3900, &unk_1004A3D90, &unk_1003DDD80);
  sub_100018F04(v0 + qword_1004A3908, &unk_1004A3D90, &unk_1003DDD80);

  swift_unknownObjectRelease();

  v3(v0 + qword_1004A3938, v2);

  return result;
}

double sub_1000649F8(uint64_t a1)
{

  sub_100018F04(a1 + qword_1004A3878, &qword_1004A3EB8, &qword_1003D8020);

  v2 = qword_1004A3890;
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 8);
  v4(a1 + v2, v3);
  sub_100018F04(a1 + qword_1004A38A0, &unk_1004A3D90, &unk_1003DDD80);
  sub_100018F04(a1 + qword_1004A38A8, &unk_1004A3D90, &unk_1003DDD80);

  v4(a1 + qword_1004A38C8, v3);

  sub_100018F04(a1 + qword_1004A38D8, &unk_1004A3D90, &unk_1003DDD80);

  sub_100018F04(a1 + qword_1004A38F0, &unk_1004A3D90, &unk_1003DDD80);
  sub_100018F04(a1 + qword_1004A38F8, &unk_1004A3D90, &unk_1003DDD80);
  sub_100018F04(a1 + qword_1004A3900, &unk_1004A3D90, &unk_1003DDD80);
  sub_100018F04(a1 + qword_1004A3908, &unk_1004A3D90, &unk_1003DDD80);

  swift_unknownObjectRelease();

  v4(a1 + qword_1004A3938, v3);

  return result;
}

uint64_t type metadata accessor for PersonHeightInstrument(uint64_t a1)
{
  result = qword_1004A39C0;
  if (!qword_1004A39C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100064DB4(uint64_t a1)
{
  sub_100064FFC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_100065060(319);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

id sub_100064F8C@<X0>(void *a1@<X8>)
{
  if (qword_1004A02D8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1004D4E90;
  *a1 = qword_1004D4E90;

  return v1;
}

void sub_100064FFC(uint64_t a1)
{
  if (!qword_1004A39D0)
  {
    sub_100013BB0(&qword_1004A39D8, &qword_1003D7D80);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1004A39D0);
    }
  }
}

void sub_100065060(uint64_t a1)
{
  if (!qword_1004A39E0)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1004A39E0);
    }
  }
}

uint64_t sub_1000650C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A0130 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for UUID();
  v3 = sub_10001D4C4(v2, qword_1004D4A88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100065178()
{
  sub_10000F974(&qword_1004A3DC0, &qword_1003D7F38);
  sub_10001D47C(&qword_1004A3DC8, &qword_1004A3DC0, &qword_1003D7F38, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_10006520C(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  sub_10000F974(&unk_1004A3D70, &qword_1003DA860);
  swift_allocObject();
  v4 = v1;
  return Future.init(_:)();
}

BOOL sub_10006529C(float a1)
{

  Synchronized.wrappedValue.getter();

  RingBuffer<A>.average()();
  v3 = v2;

  return v3 < (a1 + 1.5);
}

BOOL sub_100065320(float a1)
{

  Synchronized.wrappedValue.getter();

  RingBuffer<A>.average()();
  v3 = v2;

  return (3.0 - a1) < v3;
}

BOOL sub_1000653A4()
{

  Synchronized.wrappedValue.getter();

  RingBuffer<A>.average()();
  v1 = v0;

  return v1 > 5.0;
}

void *sub_100065420(uint64_t a1, void *a2)
{
  v3 = sub_10000F974(&unk_1004A3D90, &unk_1003DDD80);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    v7 = *((swift_isaMask & *a2) + 0xD0);
    result = v7();
    if (result != 6)
    {
      result = v7();
      if (result != 5)
      {
        if (qword_1004A0230 != -1)
        {
          swift_once();
        }

        v8._object = 0x8000000100402A00;
        v8._countAndFlagsBits = 0xD000000000000019;
        Log.debug(_:isPrivate:)(v8, 0);
        (*((swift_isaMask & *a2) + 0xD8))(6);
        Date.init()();
        v9 = type metadata accessor for Date();
        (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
        return (*((swift_isaMask & *a2) + 0x248))(v5);
      }
    }
  }

  return result;
}

void sub_100065638(uint64_t a1, void *a2)
{
  v3 = sub_10000F974(&unk_1004A3D90, &unk_1003DDD80);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;

    Synchronized.wrappedValue.getter();

    if (v28)
    {
    }

    else
    {
      *&v26 = v27;
      if (qword_1004A0850 != -1)
      {
        swift_once();
      }

      if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
      {
        __break(1u);
      }

      else
      {
        SIMD2<>.init(_:)();
        SIMD2<>.init(_:)();
        v16 = v15;
        SIMD2<>.init(_:)();
        SIMD2<>.init(_:)();
        v18 = v17;
        SIMD2<>.init(_:)();
        v20 = v19;
        sub_10000F974(&qword_1004A3E10, &qword_1003D7F80);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1003D5730;
        v22 = vsub_f32(v18, v20);
        *(inited + 32) = v22;
        *(inited + 40) = vsub_f32(v16, v20);
        *&v23 = vmul_f32(v22, v22);
        v26 = v23;

        (*((swift_isaMask & *a2) + 0x240))(v24);
        if ((*(v7 + 48))(v5, 1, v6) == 1)
        {

          sub_100018F04(v5, &unk_1004A3D90, &unk_1003DDD80);
        }

        else
        {
          (*(v7 + 32))(v12, v5, v6);
          Date.init()();
          Date.timeIntervalSince(_:)();

          v25 = *(v7 + 8);
          v25(v9, v6);
          v25(v12, v6);
        }
      }
    }
  }
}

double sub_100065B08(void *a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *a1) + 0xD0);
  if (v4() == 6 || v4() == 5)
  {
    if (qword_1004A0230 != -1)
    {
      swift_once();
    }

    v6._object = 0x80000001004029C0;
    v6._countAndFlagsBits = 0xD00000000000003ALL;
    Log.debug(_:isPrivate:)(v6, 0);
    (*((swift_isaMask & *a1) + 0xD8))(5);
    v7 = *(a2 + qword_1004A3860);
    v9 = 0x8000000000000020;
    v8 = *(*v7 + 392);

    v8(&v9);
  }

  return result;
}

void sub_100065C88(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1004A0230 != -1)
    {
      swift_once();
    }

    v5._object = 0x8000000100402990;
    v5._countAndFlagsBits = 0xD000000000000023;
    Log.debug(_:isPrivate:)(v5, 0);
    sub_100065D74(a2);

    Synchronized.wrappedValue.setter();
  }
}

void sub_100065D74(void *a1)
{
  v2 = v1;
  v4 = sub_10000F974(&qword_1004A3EB8, &qword_1003D8020);
  __chkstk_darwin(v4 - 8);
  v6 = v16 - v5;
  type metadata accessor for MeasureCamera();
  (*((swift_isaMask & *a1) + 0x210))();
  simd_float4x4.position.getter();
  v16[4] = v7;

  StateValue.wrappedValue.getter();

  memcpy(v18, v19, sizeof(v18));
  sub_100013C4C(v18);
  v16[2] = v18[12];
  v16[3] = v18[11];
  v16[0] = v18[14];
  v16[1] = v18[13];

  StateValue.wrappedValue.getter();

  memcpy(v19, v17, sizeof(v19));
  sub_100013C4C(v19);
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  CGPoint.init(xy:)();
  v9 = v8;
  v11 = v10;
  if (qword_1004A0850 != -1)
  {
    swift_once();
  }

  if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
  {
    __break(1u);
  }

  else
  {
    v20.x = v9;
    v20.y = v11;
    if (CGRectContainsPoint(*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 48), v20))
    {
      v12 = sub_10000F974(&qword_1004A39D8, &qword_1003D7D80);
      v13 = *(v12 + 48);
      Date.init()();
      *&v6[v13] = a1;
      (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
      v14 = qword_1004A3878;
      swift_beginAccess();
      v15 = a1;
      sub_10006CA08(v6, v2 + v14, &qword_1004A3EB8, &qword_1003D8020);
      swift_endAccess();
    }
  }
}

double sub_100066024(uint64_t a1, void *a2)
{

  StateValue.wrappedValue.getter();

  memcpy(__dst, __src, sizeof(__dst));
  sub_100013C4C(__dst);
  SCNMatrix4.init(_:)();
  v3 = SCNMatrix4.forward.getter();
  v10 = v4;
  (*((swift_isaMask & *a2) + 0x210))(v3);
  simd_float4x4.position.getter();
  v9 = v5;
  SCNMatrix4.position.getter();
  v7 = vmulq_f32(v10, vsubq_f32(v9, v6));
  return fabsf(v7.f32[2] + vaddv_f32(*v7.f32));
}

void sub_100066128(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *((swift_isaMask & *a2) + 0x210);
    v6 = *(Strong + qword_1004A3918);
    v5();
    simd_float4x4.position.getter();
    SCNVector3.init(_:)();
    [v6 projectPoint:?];

    if (qword_1004A0850 != -1)
    {
      swift_once();
    }

    if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
    {
      __break(1u);
    }

    else
    {
      CGRect.center.getter();
      static CGPoint.- infix(_:_:)();
      CGPoint.length()();
    }
  }
}

void sub_1000662B0()
{

  Synchronized.wrappedValue.getter();

  v0 = *(v12 + 16);
  if (!v0)
  {

    return;
  }

  sub_1000A2550(0, v0, 0);
  for (i = 0; i != v0; ++i)
  {
    RingBuffer.subscript.getter();
    v3 = _swiftEmptyArrayStorage[2];
    v2 = _swiftEmptyArrayStorage[3];
    if (*&v3 >= *&v2 >> 1)
    {
      sub_1000A2550((*&v2 > 1uLL), *&v3 + 1, 1);
    }

    *&_swiftEmptyArrayStorage[2] = *&v3 + 1;
    *(&_swiftEmptyArrayStorage[4] + *&v3) = v11;
  }

  if (*&v3 > 6uLL)
  {
    v4 = (*&v3 + 1) & 0x7FFFFFFFFFFFFFF8;
    v6 = &_swiftEmptyArrayStorage[6];
    v5 = 0.0;
    v7 = v4;
    do
    {
      v5 = (((((((v5 + COERCE_FLOAT(*(v6 - 1))) + COERCE_FLOAT(HIDWORD(*(v6 - 2)))) + COERCE_FLOAT(*(v6 - 1))) + COERCE_FLOAT(HIDWORD(*(v6 - 1)))) + COERCE_FLOAT(*v6)) + COERCE_FLOAT(HIDWORD(*v6))) + COERCE_FLOAT(*(v6 + 1))) + COERCE_FLOAT(HIDWORD(*v6));
      v6 += 4;
      v7 -= 8;
    }

    while (v7);
    if (*&v3 + 1 == v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0.0;
  }

  v8 = *&v3 - v4 + 1;
  v9 = &_swiftEmptyArrayStorage[4] + v4;
  do
  {
    v10 = *v9++;
    v5 = v5 + v10;
    --v8;
  }

  while (v8);
LABEL_14:
}

__n128 sub_10006648C()
{

  Synchronized.wrappedValue.getter();

  v0 = *(v12 + 16);
  if (v0)
  {
    sub_1000A2570(0, v0, 0);
    for (i = 0; i != v0; ++i)
    {
      RingBuffer.subscript.getter();
      v2 = v12;
      v4 = _swiftEmptyArrayStorage[2];
      v3 = _swiftEmptyArrayStorage[3];
      if (*&v4 >= *&v3 >> 1)
      {
        sub_1000A2570((*&v3 > 1uLL), *&v4 + 1, 1);
        v2 = v12;
      }

      *&_swiftEmptyArrayStorage[2] = *&v4 + 1;
      *&_swiftEmptyArrayStorage[2 * *&v4 + 4] = v2;
    }

    v5 = *SIMD3<>.zero.unsafeMutableAddressor();
    v6 = _swiftEmptyArrayStorage[2];
    if (v6 != 0.0)
    {
      v7 = &_swiftEmptyArrayStorage[4];
      do
      {
        v8 = *v7;
        v7 += 2;
        v5 = vaddq_f32(v5, v8);
        v5.i32[3] = 0;
        --*&v6;
      }

      while (v6 != 0.0);
    }

    v11 = v5;

    v9 = *(v12 + 16);

    result.n128_f32[0] = v9;
    result.n128_u64[0] = vdivq_f32(v11, vdupq_lane_s32(result.n128_u64[0], 0)).u64[0];
  }

  else
  {

    return *SIMD3<>.zero.unsafeMutableAddressor();
  }

  return result;
}

__n128 sub_100066618()
{

  Synchronized.wrappedValue.getter();

  v0 = *(v12 + 16);
  if (v0)
  {
    sub_1000A2570(0, v0, 0);
    for (i = 0; i != v0; ++i)
    {
      RingBuffer.subscript.getter();
      v2 = v13;
      v4 = _swiftEmptyArrayStorage[2];
      v3 = _swiftEmptyArrayStorage[3];
      if (*&v4 >= *&v3 >> 1)
      {
        sub_1000A2570((*&v3 > 1uLL), *&v4 + 1, 1);
        v2 = v13;
      }

      *&_swiftEmptyArrayStorage[2] = *&v4 + 1;
      *&_swiftEmptyArrayStorage[2 * *&v4 + 4] = v2;
    }

    v5 = *SIMD3<>.zero.unsafeMutableAddressor();
    v6 = _swiftEmptyArrayStorage[2];
    if (v6 != 0.0)
    {
      v7 = &_swiftEmptyArrayStorage[4];
      do
      {
        v8 = *v7;
        v7 += 2;
        v5 = vaddq_f32(v5, v8);
        v5.i32[3] = 0;
        --*&v6;
      }

      while (v6 != 0.0);
    }

    v11 = v5;

    v9 = *(v12 + 16);

    result.n128_f32[0] = v9;
    result.n128_u64[0] = vdivq_f32(v11, vdupq_lane_s32(result.n128_u64[0], 0)).u64[0];
  }

  else
  {

    return *SIMD3<>.zero.unsafeMutableAddressor();
  }

  return result;
}

unint64_t sub_1000667A4()
{
  sub_1000662B0();
  v1 = v0;

  Synchronized.wrappedValue.getter();

  v2 = *(v61 + 16);
  if (!v2)
  {

    v6 = _swiftEmptyArrayStorage[2];
    if (v6 != 0.0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v8 = 0.0;
    goto LABEL_16;
  }

  sub_1000A2550(0, v2, 0);
  for (i = 0; i != v2; ++i)
  {
    RingBuffer.subscript.getter();
    v5 = _swiftEmptyArrayStorage[2];
    v4 = _swiftEmptyArrayStorage[3];
    if (*&v5 >= *&v4 >> 1)
    {
      sub_1000A2550((*&v4 > 1uLL), *&v5 + 1, 1);
    }

    *&_swiftEmptyArrayStorage[2] = *&v5 + 1;
    *(&_swiftEmptyArrayStorage[4] + *&v5) = (v60 - v1) * (v60 - v1);
  }

  v6 = _swiftEmptyArrayStorage[2];
  if (v6 == 0.0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (*&v6 <= 7uLL)
  {
    v7 = 0;
    v8 = 0.0;
LABEL_14:
    v11 = *&v6 - v7;
    v12 = &_swiftEmptyArrayStorage[4] + v7;
    do
    {
      v13 = *v12++;
      v8 = v8 + v13;
      --v11;
    }

    while (v11);
    goto LABEL_16;
  }

  v7 = *&v6 & 0x7FFFFFFFFFFFFFF8;
  v9 = &_swiftEmptyArrayStorage[6];
  v8 = 0.0;
  v10 = *&v6 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v8 = (((((((v8 + COERCE_FLOAT(*(v9 - 1))) + COERCE_FLOAT(HIDWORD(*(v9 - 2)))) + COERCE_FLOAT(*(v9 - 1))) + COERCE_FLOAT(HIDWORD(*(v9 - 1)))) + COERCE_FLOAT(*v9)) + COERCE_FLOAT(HIDWORD(*v9))) + COERCE_FLOAT(*(v9 + 1))) + COERCE_FLOAT(HIDWORD(*v9));
    v9 += 4;
    v10 -= 8;
  }

  while (v10);
  if (*&v6 != v7)
  {
    goto LABEL_14;
  }

LABEL_16:

  Synchronized.wrappedValue.getter();

  v14 = *(v61 + 16);

  v15 = sqrtf(v8 / (v14 - 1));
  if (v15 > 0.1)
  {

    Synchronized.wrappedValue.getter();
    sub_10000F974(&qword_1004A3DA8, &qword_1003D7F20);
    RingBuffer.clear()();
    Synchronized.wrappedValue.setter();

LABEL_85:
    v23 = 0;
    v22 = v15;
    return LODWORD(v22) | (v23 << 32);
  }

  if (v15 <= 0.01)
  {
    v22 = 0.0;
    v23 = 1;
    return LODWORD(v22) | (v23 << 32);
  }

  Synchronized.wrappedValue.getter();

  v16 = *(v61 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = _swiftEmptyArrayStorage;
    do
    {
      RingBuffer.subscript.getter();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_100067648(0, *(v18 + 2) + 1, 1, v18);
      }

      v20 = *(v18 + 2);
      v19 = *(v18 + 3);
      if (v20 >= v19 >> 1)
      {
        v18 = sub_100067648((v19 > 1), v20 + 1, 1, v18);
      }

      *(v18 + 2) = v20 + 1;
      v21 = &v18[6 * v20];
      *(v21 + 8) = v60;
      ++v17;
      *(v21 + 3) = v61;
      *(v21 + 4) = v62;
    }

    while (v16 != v17);

    v24 = v18[2];
    if (v24 != 0.0)
    {
      goto LABEL_29;
    }

LABEL_80:
    v27 = v18;
LABEL_81:

    Synchronized.wrappedValue.getter();
    sub_10000F974(&qword_1004A3DA8, &qword_1003D7F20);
    RingBuffer.clear()();
    Synchronized.wrappedValue.setter();

    v56 = *(v27 + 16);
    if (v56)
    {
      v57 = v27 + 64;
      do
      {

        Synchronized.wrappedValue.getter();
        RingBuffer.append(_:)();
        Synchronized.wrappedValue.setter();

        v57 += 48;
        --v56;
      }

      while (v56);
    }

    goto LABEL_85;
  }

  v18 = _swiftEmptyArrayStorage;
  v24 = _swiftEmptyArrayStorage[2];
  if (v24 == 0.0)
  {
    goto LABEL_80;
  }

LABEL_29:

  v26 = 0;
  v27 = v18;
  while (v26 < *(v18 + 2))
  {
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = (v27 + 32);
      v30 = 0.0;
      v31 = *(v27 + 16);
      do
      {
        v32 = *v29;
        v29 += 12;
        v30 = v30 + v32;
        --v31;
      }

      while (v31);
    }

    else
    {
      v30 = 0.0;
    }

    v33 = &v18[6 * v26 + 4];
    if (vabds_f32(*v33, v30 / v28) <= 0.01)
    {
      goto LABEL_30;
    }

    if (v28)
    {
      v34 = 0;
      v36 = *(v33 + 16);
      v35 = *(v33 + 32);
      v36.i32[3] = *v33;
      v37 = (v27 + 64);
      v38 = 112;
      while (1)
      {
        v39 = v37[-1];
        v39.i32[3] = v37[-2].i32[0];
        if (vminv_u16(vmovn_s32(vceqq_f32(v39, v36))))
        {
          v40 = vmovn_s32(vceqq_f32(*v37, v35));
          if (v40.i8[0] & 1) != 0 && (v40.i8[2] & 1) != 0 && (v40.i8[4])
          {
            break;
          }
        }

        ++v34;
        v37 += 3;
        v38 += 48;
        if (v28 == v34)
        {
          goto LABEL_53;
        }
      }

      v41 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_94;
      }

      v58 = v35;
      v59 = v36;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10006B818(v27);
        v27 = result;
      }

      v28 = *(v27 + 16);
      if (v41 != v28)
      {
        v47 = (v27 + v38);
        while (v41 < v28)
        {
          v52 = v47[-1];
          v53 = *v47;
          v54 = v52;
          v54.i32[3] = v47[-2].i32[0];
          if ((vminv_u16(vmovn_s32(vceqq_f32(v54, v59))) & 1) == 0 || (v55 = vmovn_s32(vceqq_f32(v53, v58)), (v55.i8[0] & 1) == 0) || (v55.i8[2] & 1) == 0 || (v55.i8[4] & 1) == 0)
          {
            if (v41 != v34)
            {
              if (v34 >= v28)
              {
                goto LABEL_89;
              }

              v48 = v27 + 32 + 48 * v34;
              v49 = *v48;
              v50 = *(v48 + 16);
              v51 = *(v48 + 32);
              *v48 = v47[-2].i32[0];
              *(v48 + 16) = v52;
              *(v48 + 32) = v53;
              v47[-2].i32[0] = v49;
              v47[-1] = v50;
              *v47 = v51;
              v28 = *(v27 + 16);
            }

            ++v34;
          }

          ++v41;
          v47 += 3;
          if (v41 == v28)
          {
            goto LABEL_50;
          }
        }

        __break(1u);
        break;
      }

      v28 = v34 + 1;
LABEL_50:
      if (v28 < v34)
      {
        goto LABEL_91;
      }

      if (v34 < 0)
      {
        goto LABEL_92;
      }
    }

    else
    {
LABEL_53:
      v34 = *(v27 + 16);
    }

    v42 = v34 - v28;
    if (__OFADD__(v28, v34 - v28))
    {
      goto LABEL_90;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v34 <= *(v27 + 24) >> 1)
    {
      if (v34 == v28)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v28 <= v34)
      {
        v43 = v34;
      }

      else
      {
        v43 = v28;
      }

      result = sub_100067648(result, v43, 1, v27);
      v27 = result;
      if (v34 == v28)
      {
        goto LABEL_30;
      }
    }

    result = memmove((v27 + 32 + 48 * v34), (v27 + 32 + 48 * v28), 48 * (*(v27 + 16) - v28));
    v44 = *(v27 + 16);
    v45 = __OFADD__(v44, v42);
    v46 = v44 + v42;
    if (v45)
    {
      goto LABEL_93;
    }

    *(v27 + 16) = v46;
LABEL_30:
    if (++v26 == *&v24)
    {

      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
  return result;
}

uint64_t sub_100066F20()
{

  return swift_deallocClassInstance();
}

__n128 sub_100066F7C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

unint64_t sub_100066FB4()
{
  result = qword_1004A3D68;
  if (!qword_1004A3D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A3D68);
  }

  return result;
}

uint64_t sub_100067008()
{

  return _swift_deallocObject(v0, 25, 7);
}

double sub_100067058(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_10006707C(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 16) = v3;
}

void sub_1000670C0()
{
  v0 = sub_100055518();
  [v0 toggleViewVisibilityWithIsVisible:0];
}

double *sub_100067114(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3E98, &qword_1003D8000);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

double *sub_100067218(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3DD8, &qword_1003D7F48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

double *sub_10006731C(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3E70, &qword_1003D7FD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

double *sub_100067410(double *result, int64_t a2, char a3, double *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3E88, &qword_1003D7FF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_10000F974(&qword_1004A3E90, &qword_1003D7FF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_100067544(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3DE0, &qword_1003D7F50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

double *sub_100067648(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3EB0, &qword_1003D8018);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

double *sub_100067788(double *result, int64_t a2, char a3, double *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3FB8, &qword_1003D8290);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_10000F974(&qword_1004A3FC0, &qword_1003D8298);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1000678E4(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3E00, &unk_1003D7F70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_100067A00(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&unk_1004ABEA0, &qword_1003D7F68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

double *sub_100067B04(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3E28, &qword_1003D7F98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_100067C24(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3DB8, &qword_1003D7F30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_100067D30(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&unk_1004A3F20, &unk_1003D8040);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  v14 = 48 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

double *sub_100067E40(double *result, int64_t a2, char a3, double *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3EE0, &qword_1003D8038);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[14 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 112 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_10000F974(&qword_1004A3ED8, &qword_1003D8030);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_100067F8C(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A4018, &unk_1003D82F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

double *sub_1000680B4(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 3);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 2);
  if (v13 <= v14)
  {
    v15 = *(a4 + 2);
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10000F974(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    *(v16 + 2) = v14;
    *(v16 + 3) = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_10000F974(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

double *sub_1000681E8(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A4010, &qword_1003D82E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

double *sub_100068304(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A4008, &qword_1003D82E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_100068410(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A4000, &qword_1003D5620);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

double *sub_100068514(double *result, int64_t a2, char a3, double *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3FF0, &qword_1003D82C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_10000F974(&qword_1004A3FF8, &unk_1003D82D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_10006865C(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3FE8, &qword_1003D82C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  v15 = v8 << 6;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

double *sub_10006875C(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3E08, &qword_1003DF270);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 304);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[304 * v8])
    {
      memmove(v12, v13, 304 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_100068884(double *result, int64_t a2, char a3, double *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&unk_1004A3E40, &qword_1003D7FA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_10000F974(&unk_1004ABAC0, &qword_1003D7FB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1000689B8(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3E10, &qword_1003D7F80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_100068ABC(double *result, int64_t a2, char a3, double *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3E18, &unk_1003D7F88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[16 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 7);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_10000F974(&qword_1004A3E20, &unk_1003D7890);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_100068BF0(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3E38, &qword_1003D7FA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

double *sub_100068CF4(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3E80, &qword_1003D7FE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 7);
  }

  return v10;
}

double *sub_100068E20(double *result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000F974(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  *(v17 + 2) = v12;
  *(v17 + 3) = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

double *sub_100068FFC(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3E58, &qword_1003D7FC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_100069130(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000F974(&qword_1004A4040, &qword_1003D8308);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

double *sub_100069274(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000F974(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double *sub_100069384(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000F974(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

double *sub_100069400(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000F974(&qword_1004A3E78, &qword_1003D7FE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

unint64_t sub_100069484(unint64_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_100068E20(isUniquelyReferenced_nonNull_native, v14, 1, v5, &qword_1004A3E50, &qword_1003D7FB8, type metadata accessor for SpatialPlattersHistoryItem);
    *v3 = v5;
  }

  result = sub_10006957C(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_10006957C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for SpatialPlattersHistoryItem(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_100018F04(a4, &qword_1004A3E60, &qword_1003D7FC8);
  }

  if (v17 < 1)
  {
    return sub_100018F04(a4, &qword_1004A3E60, &qword_1003D7FC8);
  }

  result = sub_10006C020(a4, v15, type metadata accessor for SpatialPlattersHistoryItem);
  if (v12 >= v17)
  {
    return sub_100018F04(a4, &qword_1004A3E60, &qword_1003D7FC8);
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_100069708(uint64_t *a1, float a2)
{
  v4 = a1[1];
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      if (v4 <= 1)
      {
        v7 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000F974(&qword_1004A3EF0, &qword_1003D5610);
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v7 + 2) = v4 / 2;
      }

      v9[0] = (v7 + 4);
      v9[1] = (v4 / 2);
      v8 = v7;
      sub_100069E00(v9, a2, v10, a1, v6);
      v8[2] = 0.0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_100069824(0, v4, 1, a1, a2);
  }
}

uint64_t sub_100069824(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, float a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *a4 + 16 * a3 - 16;
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 16 * a3);
    v9 = vabds_f32(COERCE_FLOAT(HIDWORD(*(v5 + 16 * a3))), a5);
    v10 = v7;
    v11 = v6;
    while (1)
    {
      if (v9 >= vabds_f32(*(v11 + 4), a5))
      {
LABEL_4:
        ++a3;
        v6 += 16;
        --v7;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      *(v11 + 16) = *v11;
      *v11 = v8;
      v11 -= 16;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_10006989C(float *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_1000A4894(v9);
    }

    v80 = v9 + 2;
    v81 = *(v9 + 2);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = &v9[2 * v81];
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_10006AF2C((*a3 + 16 * *v82), (*a3 + 16 * *v84), (*a3 + 16 * v85), a1);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v85 < v83)
        {
          goto LABEL_112;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_113;
        }

        *v82 = v83;
        *(v82 + 1) = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_114;
        }

        v81 = *v80 - 1;
        memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = 16 * v10;
      v12 = *a3 + 16 * v10;
      v13 = *(*a3 + 16 * v8 + 4);
      v14 = *(v12 + 4);
      v15 = v10 + 2;
      v16 = (v12 + 36);
      v17 = v13;
      while (v6 != v15)
      {
        v18 = *v16;
        v16 += 4;
        v19 = v18 >= v17;
        ++v15;
        v17 = v18;
        if ((((v13 < v14) ^ v19) & 1) == 0)
        {
          v8 = v15 - 1;
          if (v13 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v13 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v20 = 16 * v8 - 16;
        v21 = v8;
        v22 = v10;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100067218(0, *(v9 + 2) + 1, 1, v9);
    }

    v34 = *(v9 + 2);
    v33 = *(v9 + 3);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      v9 = sub_100067218((v33 > 1), v34 + 1, 1, v9);
    }

    *(v9 + 2) = v35;
    v36 = &v9[2 * v34];
    *(v36 + 4) = v10;
    *(v36 + 5) = v8;
    v37 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v34)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v9 + 4);
          v40 = *(v9 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_103;
          }

          v55 = &v9[2 * v35];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = &v9[2 * v38 + 4];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_110;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v65 = &v9[2 * v35];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_71:
        if (v60)
        {
          goto LABEL_105;
        }

        v68 = &v9[2 * v38];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_108;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_78:
        v76 = v38 - 1;
        if (v38 - 1 >= v35)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v77 = v9[2 * v76 + 4];
        v78 = v9[2 * v38 + 5];
        sub_10006AF2C((*a3 + 16 * *&v77), (*a3 + 16 * *&v9[2 * v38 + 4]), (*a3 + 16 * *&v78), v37);
        if (v4)
        {
          goto LABEL_97;
        }

        if (*&v78 < *&v77)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000A4894(v9);
        }

        if (v76 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v79 = &v9[2 * v76];
        v79[4] = v77;
        v79[5] = v78;
        sub_1000A4808(v38);
        v35 = *(v9 + 2);
        if (v35 <= 1)
        {
          goto LABEL_3;
        }
      }

      v43 = &v9[2 * v35 + 4];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_101;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_102;
      }

      v50 = &v9[2 * v35];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_104;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = &v9[2 * v38 + 4];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_111;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v8 - 16;
  v27 = v10 - v8;
LABEL_30:
  v28 = *(v25 + 16 * v8);
  LODWORD(v29) = HIDWORD(*(v25 + 16 * v8));
  v30 = v27;
  v31 = v26;
  while (1)
  {
    if (v29 >= *(v31 + 4))
    {
LABEL_29:
      ++v8;
      v26 += 16;
      --v27;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    *(v31 + 16) = *v31;
    *v31 = v28;
    v31 -= 16;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

void sub_100069E00(float **a1, float a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = a4[1];
  if (v9 < 1)
  {
    v12 = _swiftEmptyArrayStorage;
LABEL_88:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v12 = sub_1000A4894(v12);
    }

    v81 = *(v12 + 2);
    if (v81 >= 2)
    {
      while (*a4)
      {
        v82 = v12[2 * v81];
        v83 = v12[2 * v81 + 3];
        sub_10006B130((*a4 + 16 * *&v82), (*a4 + 16 * *&v12[2 * v81 + 2]), (*a4 + 16 * *&v83), v6, a2);
        if (v5)
        {
          goto LABEL_98;
        }

        if (*&v83 < *&v82)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1000A4894(v12);
        }

        if (v81 - 2 >= *(v12 + 2))
        {
          goto LABEL_114;
        }

        v84 = &v12[2 * v81];
        *v84 = v82;
        v84[1] = v83;
        sub_1000A4808(v81 - 1);
        v81 = *(v12 + 2);
        if (v81 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v10 = a5;
  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (1)
  {
    v13 = v11++;
    if (v11 < v9)
    {
      v14 = 16 * v13;
      v15 = *a4 + 16 * v13;
      v16 = *(*a4 + 16 * v11 + 4);
      v17 = vabds_f32(v16, a2);
      v18 = vabds_f32(*(v15 + 4), a2);
      v19 = v13 + 2;
      v20 = (v15 + 36);
      while (v9 != v19)
      {
        v21 = *v20;
        v20 += 4;
        v22 = vabds_f32(v21, a2) >= vabds_f32(v16, a2);
        ++v19;
        v16 = v21;
        if ((((v17 < v18) ^ v22) & 1) == 0)
        {
          v11 = v19 - 1;
          if (v17 >= v18)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v11 = v9;
      if (v17 >= v18)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v11 < v13)
      {
        goto LABEL_117;
      }

      if (v13 < v11)
      {
        v23 = 16 * v11 - 16;
        v24 = v11;
        v25 = v13;
        do
        {
          if (v25 != --v24)
          {
            v27 = *a4;
            if (!*a4)
            {
              goto LABEL_123;
            }

            v26 = *(v27 + v14);
            *(v27 + v14) = *(v27 + v23);
            *(v27 + v23) = v26;
          }

          ++v25;
          v23 -= 16;
          v14 += 16;
        }

        while (v25 < v24);
        v9 = a4[1];
      }
    }

LABEL_20:
    if (v11 < v9)
    {
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_116;
      }

      if (v11 - v13 < v10)
      {
        if (__OFADD__(v13, v10))
        {
          goto LABEL_118;
        }

        if (v13 + v10 < v9)
        {
          v9 = v13 + v10;
        }

        if (v9 < v13)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v11 != v9)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v11 < v13)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_100067218(0, *(v12 + 2) + 1, 1, v12);
    }

    v6 = *(v12 + 2);
    v36 = *(v12 + 3);
    v37 = v6 + 1;
    if (v6 >= v36 >> 1)
    {
      v12 = sub_100067218((v36 > 1), v6 + 1, 1, v12);
    }

    *(v12 + 2) = v37;
    v38 = &v12[2 * v6];
    *(v38 + 4) = v13;
    *(v38 + 5) = v11;
    v39 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v6)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v12 + 4);
          v42 = *(v12 + 5);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_57:
          if (v44)
          {
            goto LABEL_104;
          }

          v57 = &v12[2 * v37];
          v59 = *v57;
          v58 = *(v57 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_107;
          }

          v63 = &v12[2 * v40 + 4];
          v65 = *v63;
          v64 = *(v63 + 1);
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_111;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v67 = &v12[2 * v37];
        v69 = *v67;
        v68 = *(v67 + 1);
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_71:
        if (v62)
        {
          goto LABEL_106;
        }

        v70 = &v12[2 * v40];
        v72 = *(v70 + 4);
        v71 = *(v70 + 5);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_109;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_78:
        v78 = v40 - 1;
        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a4)
        {
          goto LABEL_122;
        }

        v79 = *&v12[2 * v78 + 4];
        v6 = *&v12[2 * v40 + 5];
        sub_10006B130((*a4 + 16 * v79), (*a4 + 16 * *&v12[2 * v40 + 4]), (*a4 + 16 * v6), v39, a2);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v6 < v79)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1000A4894(v12);
        }

        if (v78 >= *(v12 + 2))
        {
          goto LABEL_101;
        }

        v80 = &v12[2 * v78];
        *(v80 + 4) = v79;
        *(v80 + 5) = v6;
        sub_1000A4808(v40);
        v37 = *(v12 + 2);
        if (v37 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = &v12[2 * v37 + 4];
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_102;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_103;
      }

      v52 = &v12[2 * v37];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_105;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_108;
      }

      if (v56 >= v48)
      {
        v74 = &v12[2 * v40 + 4];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_112;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v9 = a4[1];
    v10 = a5;
    if (v11 >= v9)
    {
      goto LABEL_88;
    }
  }

  v28 = *a4;
  v29 = *a4 + 16 * v11 - 16;
  v30 = v13 - v11;
LABEL_30:
  v31 = *(v28 + 16 * v11);
  v32 = vabds_f32(COERCE_FLOAT(HIDWORD(*(v28 + 16 * v11))), a2);
  v33 = v30;
  v34 = v29;
  while (1)
  {
    if (v32 >= vabds_f32(*(v34 + 4), a2))
    {
LABEL_29:
      ++v11;
      v29 += 16;
      --v30;
      if (v11 != v9)
      {
        goto LABEL_30;
      }

      v11 = v9;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    *(v34 + 16) = *v34;
    *v34 = v31;
    v34 -= 16;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

void sub_10006A3A0(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1000A4894(v8);
    }

    v76 = v8 + 2;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[2 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_10006B350((*a3 + 4 * *v78), (*a3 + 4 * *v80), (*a3 + 4 * v81), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = v13 >= v14;
        ++v12;
        v13 = v14;
        if ((((v11 < v10) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 4 * v7 - 4;
        v17 = 4 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 4;
          v17 += 4;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100067218(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v30 = *(v8 + 3);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      v8 = sub_100067218((v30 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v31;
    v32 = v8 + 4;
    v33 = &v8[2 * v5 + 4];
    *v33 = v9;
    *(v33 + 1) = v7;
    v85 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 4);
          v35 = *(v8 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[2 * v31];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[2 * v5];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[2 * v31];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[2 * v5];
        v65 = *v63;
        v64 = *(v63 + 1);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[2 * v5 - 2];
        v72 = *v71;
        v73 = &v32[2 * v5];
        v74 = *(v73 + 1);
        sub_10006B350((*a3 + 4 * *v71), (*a3 + 4 * *v73), (*a3 + 4 * v74), v85);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        *(v71 + 1) = v74;
        v75 = *(v8 + 2);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        memmove(&v32[2 * v5], v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 2) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[2 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[2 * v31];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[2 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 4 * v7 - 4;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 4 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (*v27 >= v25)
    {
LABEL_29:
      ++v7;
      v23 += 4;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

void sub_10006A8FC(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v91 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_1000A4894(v7);
    }

    v82 = v7 + 2;
    v83 = *(v7 + 2);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = &v7[2 * v83];
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_10006B544((*a3 + 112 * *v84), (*a3 + 112 * *v86), (*a3 + 112 * v87), v91);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 112 * v6 + 96);
      v10 = 112 * v8;
      v11 = *a3 + 112 * v8;
      v12 = *(v11 + 96);
      v13 = v8 + 2;
      v14 = (v11 + 208);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[28];
        v14 += 28;
        ++v13;
        if (v9 < v12 == v16 >= v15)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 112 * v6 - 112;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = v21 + v17;
            v100 = *(v21 + v10 + 64);
            *v102 = *(v21 + v10 + 80);
            *&v102[13] = *(v21 + v10 + 93);
            v92 = *(v21 + v10);
            v94 = *(v21 + v10 + 16);
            v96 = *(v21 + v10 + 32);
            v98 = *(v21 + v10 + 48);
            memmove((v21 + v10), (v21 + v17), 0x70uLL);
            *(v20 + 64) = v100;
            *(v20 + 80) = *v102;
            *(v20 + 93) = *&v102[13];
            *v20 = v92;
            *(v20 + 16) = v94;
            *(v20 + 32) = v96;
            *(v20 + 48) = v98;
          }

          ++v19;
          v17 -= 112;
          v10 += 112;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100067218(0, *(v7 + 2) + 1, 1, v7);
    }

    v35 = *(v7 + 2);
    v34 = *(v7 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      v7 = sub_100067218((v34 > 1), v35 + 1, 1, v7);
    }

    *(v7 + 2) = v36;
    v37 = v7 + 4;
    v38 = &v7[2 * v35 + 4];
    *v38 = v8;
    *(v38 + 1) = v6;
    v91 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v7 + 4);
          v41 = *(v7 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = &v7[2 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = &v37[2 * v39];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v66 = &v7[2 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = &v37[2 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = &v37[2 * v39 - 2];
        v78 = *v77;
        v79 = &v37[2 * v39];
        v80 = *(v79 + 1);
        sub_10006B544((*a3 + 112 * *v77), (*a3 + 112 * *v79), (*a3 + 112 * v80), v91);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v39 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *(v7 + 2);
        if (v39 >= v81)
        {
          goto LABEL_101;
        }

        v36 = v81 - 1;
        memmove(&v37[2 * v39], v79 + 2, 16 * (v81 - 1 - v39));
        *(v7 + 2) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v37[2 * v36];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = &v7[2 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = &v37[2 * v39];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 112 * v6;
  v24 = v8 - v6;
LABEL_30:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (*(v26 + 96) >= *(v26 - 16))
    {
LABEL_29:
      ++v6;
      v23 += 112;
      --v24;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    v27 = v26 - 112;
    v101 = *(v26 + 64);
    *v103 = *(v26 + 80);
    *&v103[13] = *(v26 + 93);
    v93 = *v26;
    v95 = *(v26 + 16);
    v97 = *(v26 + 32);
    v99 = *(v26 + 48);
    v28 = *(v26 - 96);
    *v26 = *(v26 - 112);
    *(v26 + 16) = v28;
    v29 = *(v26 - 80);
    v30 = *(v26 - 64);
    v31 = *(v26 - 16);
    *(v26 + 80) = *(v26 - 32);
    *(v26 + 96) = v31;
    v32 = *(v26 - 48);
    *(v26 + 48) = v30;
    *(v26 + 64) = v32;
    *(v26 + 32) = v29;
    *(v27 + 64) = v101;
    *(v27 + 80) = *v103;
    *(v27 + 93) = *&v103[13];
    *v27 = v93;
    *(v27 + 16) = v95;
    v26 -= 112;
    *(v27 + 32) = v97;
    *(v27 + 48) = v99;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_10006AF2C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v6[1] < v4[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    do
    {
      v18 = v5 + 4;
      if (*(v14 - 3) < *(v6 - 3))
      {
        if (v18 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 4;
      if (v18 != v14)
      {
        *v5 = *v19;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_10006B130(float *__dst, float *__src, float *a3, float *a4, float a5)
{
  v5 = a4;
  v6 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 4;
  v13 = a3 - __src;
  v14 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 4;
  if (v12 < v14 >> 4)
  {
    if (a4 != __dst || &__dst[4 * v12] <= a4)
    {
      memmove(a4, __dst, 16 * v12);
    }

    v16 = &v5[4 * v12];
    if (v10 < 16)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_35;
    }

    while (1)
    {
      if (v8 >= v6)
      {
        goto LABEL_10;
      }

      if (vabds_f32(v8[1], a5) < vabds_f32(v5[1], a5))
      {
        break;
      }

      v17 = v5;
      v18 = v9 == v5;
      v5 += 4;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 += 4;
      if (v5 >= v16)
      {
        goto LABEL_10;
      }
    }

    v17 = v8;
    v18 = v9 == v8;
    v8 += 4;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v15] <= a4)
  {
    memmove(a4, __src, 16 * v15);
  }

  v16 = &v5[4 * v15];
  if (v13 >= 16 && v8 > v9)
  {
LABEL_24:
    v19 = v8 - 4;
    v6 -= 4;
    do
    {
      v20 = v6 + 4;
      if (vabds_f32(*(v16 - 3), a5) < vabds_f32(*(v8 - 3), a5))
      {
        if (v20 != v8)
        {
          *v6 = *v19;
        }

        if (v16 <= v5 || (v8 -= 4, v19 <= v9))
        {
          v8 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v21 = v16 - 4;
      if (v20 != v16)
      {
        *v6 = *v21;
      }

      v6 -= 4;
      v16 -= 4;
    }

    while (v21 > v5);
    v16 = v21;
  }

LABEL_35:
  v22 = v16 - v5 + (v16 - v5 < 0 ? 0xFuLL : 0);
  if (v8 != v5 || v8 >= (v5 + (v22 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v8, v5, 16 * (v22 >> 4));
  }

  return 1;
}

uint64_t sub_10006B350(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 4);
      v18 -= 4;
      v21 = v20;
      if (*v17 < v20)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFFCLL)))
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_10006B544(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 112;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 112;
  if (v9 >= v11)
  {
    v16 = 28 * v11;
    if (a4 != __src || &__src[v16] <= a4)
    {
      memmove(a4, __src, 112 * v11);
    }

    v13 = &v4[v16];
    if (v10 >= 112 && v6 > v7)
    {
LABEL_21:
      v5 -= 28;
      do
      {
        v17 = v5 + 28;
        if (*(v13 - 4) < *(v6 - 4))
        {
          v19 = v6 - 28;
          if (v17 != v6)
          {
            memmove(v5, v6 - 28, 0x70uLL);
          }

          if (v13 <= v4 || (v6 -= 28, v19 <= v7))
          {
            v6 = v19;
            goto LABEL_33;
          }

          goto LABEL_21;
        }

        v18 = (v13 - 28);
        if (v17 != v13)
        {
          memmove(v5, v13 - 28, 0x70uLL);
        }

        v5 -= 28;
        v13 -= 28;
      }

      while (v18 > v4);
      v13 = v18;
    }
  }

  else
  {
    v12 = 28 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 4);
    }

    v13 = &v4[v12];
    if (v8 < 112)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while (v6[24] < v4[24])
        {
          v14 = v6;
          v15 = v7 == v6;
          v6 += 28;
          if (!v15)
          {
            goto LABEL_12;
          }

LABEL_13:
          v7 += 28;
          if (v4 >= v13 || v6 >= v5)
          {
            goto LABEL_15;
          }
        }

        v14 = v4;
        v15 = v7 == v4;
        v4 += 28;
        if (v15)
        {
          goto LABEL_13;
        }

LABEL_12:
        memmove(v7, v14, 0x70uLL);
        goto LABEL_13;
      }

LABEL_15:
      v6 = v7;
    }
  }

LABEL_33:
  v20 = 28 * ((v13 - v4) / 112);
  if (v6 != v4 || v6 >= &v4[v20])
  {
    memmove(v6, v4, v20 * 4);
  }

  return 1;
}

uint64_t sub_10006B878(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_10006B950(float32_t a1, float32x4_t a2, float32x4_t a3, float32_t a4, float32x4_t a5, float32x4_t a6)
{
  a2.f32[3] = a1;
  a5.f32[3] = a4;
  if ((vminv_u16(vmovn_s32(vceqq_f32(a2, a5))) & 1) == 0)
  {
    return 0;
  }

  v7 = vmovn_s32(vceqq_f32(a3, a6));
  return (v7.i16[0] & v7.i16[1]) & v7.i16[2] & 1;
}

unint64_t sub_10006B998(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_10006BA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_100018630(0, &qword_1004A3E30, UILabel_ptr);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10006BBAC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_10010B5E0(result, 1);

  return sub_10006BA9C(v5, v3, 0);
}

unint64_t sub_10006BC84(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_10006BD44(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_10006BE7C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_10006BEB4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10006BF78()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_10005AD50(v2, v3);
}

uint64_t sub_10006BFDC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006C020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006C088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006C0F0(uint64_t a1)
{
  v2 = type metadata accessor for MetricsManager.PersonHeightMetric(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006C14C()
{

  return _swift_deallocObject(v0, 560, 15);
}

uint64_t sub_10006C1AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A39D8, &qword_1003D7D80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C21C()
{

  return _swift_deallocObject(v0, 224, 15);
}

void sub_10006C25C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 128);
  v7 = *(v1 + 144);
  v8 = *(v1 + 148);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *(v1 + 72);
  v12 = *(v1 + 88);
  v13 = *(v1 + 104);
  v14 = v6;
  v15 = v7;
  v16 = v8;
  sub_100061414(a1, &v9, v2, v3, v4, v5, *(v1 + 160), *(v1 + 176), *(v1 + 192), *(v1 + 208));
}

__n128 sub_10006C2E4(uint64_t a1)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *(a1 + 400) = result;
  *(a1 + 416) = v3;
  *(a1 + 432) = 0;
  return result;
}

uint64_t sub_10006C308()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006C360()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006C418()
{

  return _swift_deallocObject(v0, 544, 15);
}

uint64_t sub_10006C47C()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10006C4CC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 4 * result + 4 * a3;
  v10 = (v6 + 32 + 4 * a2);
  if (result != v10 || result >= v10 + 4 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 4 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_10006C574(void *a1)
{
  v2 = v1;
  v4 = sub_10000F974(&unk_1004A3D90, &unk_1003DDD80);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  v14 = qword_1004A38D8;
  swift_beginAccess();
  sub_10006C92C(v2 + v14, v6, &unk_1004A3D90, &unk_1003DDD80);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100018F04(v6, &unk_1004A3D90, &unk_1003DDD80);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v16 = v15;
    v17 = *(v8 + 8);
    v17(v10, v7);
    if (v16 < 2.0)
    {
      v19 = 0;

      Synchronized.wrappedValue.setter();

      v17(v13, v7);
      return;
    }

    v17(v13, v7);
  }

  v19 = a1;

  v18 = a1;
  Synchronized.wrappedValue.setter();
}

uint64_t sub_10006C828()
{

  return _swift_deallocObject(v0, 552, 15);
}

uint64_t sub_10006C878()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10006C8EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006C92C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000F974(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10006C9C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006CA08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000F974(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_10006CA78(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 304 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 304 * a3;
  v13 = (v7 + 32 + 304 * a2);
  if (result != v13 || result >= v13 + 304 * v12)
  {
    result = memmove(result, v13, 304 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_10006CBCC@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v29 = a4;
  v28 = a1;
  v25 = *(a3 - 8);
  __chkstk_darwin(a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  __chkstk_darwin(v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v6, v19);
  v23 = 1;
  if ((*(v14 + 48))(v21, 1, v13) != 1)
  {
    (*(v14 + 32))(v17, v21, v13);
    v28(v17, v11);
    (*(v14 + 8))(v17, v13);
    if (v7)
    {
      return (*(v25 + 32))(v26, v11, a3);
    }

    v23 = 0;
  }

  return (*(*(v29 - 8) + 56))(a6, v23, 1);
}

uint64_t SendableTransfer.unwrapped<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v9 = *(*(a1 + 16) + 16);
  v5 = type metadata accessor for SendableTransfer(0, v9, a3, a4);
  return sub_10006CBCC(sub_10006D0A0, &v8, &type metadata for Never, v5, v6, a2);
}

uint64_t sub_10006CFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v6);
  return (*(v5 + 32))(a3, v8, a2);
}

uint64_t sub_10006D0E0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10006D150(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_10006D290(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

void sub_10006D498()
{
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v40 = v0;
  if ((v1 & 1) == 0)
  {
    v3 = &v0[OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_measureContent];
    v28 = *(*&v0[OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_measureContent] + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title);
    v29 = objc_opt_self();
    v30 = v28;
    v31 = [v29 labelColor];
    [v30 setTextColor:v31];

    v32 = *v3;
    v33 = *(*v3 + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_horizontalConstraints);
    if (v33 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v32 = v32;

      if (!i)
      {
        break;
      }

      v35 = 0;
      while (1)
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v36 = *(v33 + 8 * v35 + 32);
        }

        v37 = v36;
        v38 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        [v36 setConstant:0.0];

        ++v35;
        if (v38 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_16:

    v26 = v40;
    v27 = [v40 contentView];
    goto LABEL_17;
  }

  v3 = &v0[OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_accessibleMeasureContent];
  v4 = *(*&v0[OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_accessibleMeasureContent] + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 preferredFontForTextStyle:UIFontTextStyleBody];
  v8 = [v7 fontDescriptor];

  v9 = [v8 fontDescriptorWithSymbolicTraits:2];
  if (!v9)
  {
    __break(1u);
    goto LABEL_24;
  }

  v10 = [v5 fontWithDescriptor:v9 size:0.0];

  [v6 setFont:v10];
  v11 = *(*v3 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
  v12 = [v5 preferredFontForTextStyle:UIFontTextStyleLargeTitle];
  [v11 setFont:v12];

  v13 = *(*v3 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
  v14 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v15 = [v14 fontDescriptor];

  v16 = [v15 fontDescriptorWithSymbolicTraits:2];
  if (!v16)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v17 = [v5 fontWithDescriptor:v16 size:0.0];

  [v13 setFont:v17];
  v18 = *(*v3 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 labelColor];
  [v20 setTextColor:v21];

  v22 = *(*v3 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
  v23 = [v19 labelColor];
  [v22 setTextColor:v23];

  v24 = *(*v3 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
  v25 = [v19 secondaryLabelColor];
  [v24 setTextColor:v25];

  v26 = v40;
  v27 = [v40 contentView];
LABEL_17:
  v39 = v27;
  [v39 addSubview:*&v26[OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_sketchView]];

  v41 = [v26 contentView];
  [v41 addSubview:*v3];
}