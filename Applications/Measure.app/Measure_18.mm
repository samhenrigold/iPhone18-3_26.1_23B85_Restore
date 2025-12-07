void sub_100177FF8(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = *(v1 + 128);

    [v3 setState:0];
  }

  else
  {
    v4 = a1 & 0x101000000;
    if (qword_1004A0280 != -1)
    {
      swift_once();
    }

    _StringGuts.grow(_:)(19);

    v14._countAndFlagsBits = 0xD000000000000011;
    v14._object = 0x800000010040AA70;
    if (v4)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 1.0;
    }

    if (v4)
    {
      v6 = 0x65736C6166;
    }

    else
    {
      v6 = 1702195828;
    }

    if (v4)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    v8 = v7;
    String.append(_:)(*&v6);

    Log.debug(_:isPrivate:)(v14, 0);

    [*(v1 + 128) alpha];
    if (v9 != v5)
    {
      v10 = swift_allocObject();
      *(v10 + 16) = v2;
      *(v10 + 24) = v5;
      v11 = objc_allocWithZone(UIViewPropertyAnimator);
      v17 = sub_10017A1D8;
      v18 = v10;
      v14._countAndFlagsBits = _NSConcreteStackBlock;
      v14._object = 1107296256;
      v15 = sub_100041180;
      v16 = &unk_1004708F8;
      v12 = _Block_copy(&v14);

      v13 = [v11 initWithDuration:v12 dampingRatio:0.5 animations:0.6];
      _Block_release(v12);
      [v13 setInterruptible:0];
      [v13 startAnimation];
    }
  }
}

void sub_10017828C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(**(Strong + 80) + 144);

    v3(&v9, v4);

    v5 = v9;
    v6 = v10;
    v7 = v11;
    v8 = v12;
    sub_1001796A8(v9, v10);
  }
}

uint64_t sub_100178354()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D9B4();
  v9 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100179688;
  v13 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_1004708A8;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001785C4()
{

  v1 = v0 + qword_1004AC620;

  return sub_1000D7B28(v1);
}

uint64_t sub_10017863C(uint64_t a1)
{
  v1 = StateObserver.deinit();

  sub_1000D7B28(v1 + qword_1004AC620);
  return v1;
}

uint64_t sub_1001786BC(uint64_t a1)
{
  sub_10017863C(a1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReticleController(uint64_t a1)
{
  result = qword_1004AC650;
  if (!qword_1004AC650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10017875C(uint64_t a1)
{
  sub_100065060(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

unint64_t sub_100178874()
{
  result = qword_1004AC7D8;
  if (!qword_1004AC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC7D8);
  }

  return result;
}

unint64_t sub_1001788CC()
{
  result = qword_1004AC7E0;
  if (!qword_1004AC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC7E0);
  }

  return result;
}

void sub_100178920()
{

  StateValue.wrappedValue.getter();

  if (v2 >> 62 == 1)
  {
    sub_10001B360(v2);
  }

  else if (v2 >> 62 != 2 || v2 != 0x8000000000000020)
  {
    sub_10001B360(v2);
    *(v0 + 138) = 0;
  }
}

void sub_1001789C8(uint64_t a1)
{
  v1 = *(*(a1 + 128) + OBJC_IVAR____TtC7Measure11ReticleView_animator);
  if (v1)
  {
    v2 = v1;
    sub_10017523C();
  }

  else
  {
    __break(1u);
  }
}

void sub_100178A28(void *a1, void *a2, char a3, unsigned __int32 a4)
{
  v6 = v4;
  LODWORD(v111) = a4;
  v106 = a2;
  v107 = a1;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v105 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v110 = type metadata accessor for DispatchPredicate();
  *&v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  *&v108 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000F974(&unk_1004A3D90, &unk_1003DDD80);
  __chkstk_darwin(v12 - 8);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v104 - v16;
  __chkstk_darwin(v18);
  v20 = &v104 - v19;
  __chkstk_darwin(v21);
  *&v112 = &v104 - v22;
  __chkstk_darwin(v23);
  v25 = &v104 - v24;
  v26 = qword_1004AC620;
  if (a3)
  {
    swift_beginAccess();
    sub_1000D7AB8(v6 + v26, v25);
    if ((*(v9 + 48))(v25, 1, v8) == 1)
    {
      sub_1000D7B28(v25);
    }

    else
    {
      sub_1000D7B28(v25);
      v28 = *(v6 + 304);
      v29 = *(v6 + 320);
      v30 = *(v6 + 336);
      v31 = *(v6 + 352);
      LOBYTE(v114[0]) = 0;
      *(v6 + 144) = v28;
      *(v6 + 160) = v29;
      *(v6 + 176) = v30;
      *(v6 + 192) = v31;
      *(v6 + 208) = 0;
    }

    v32 = v112;
    Date.init()();
    (*(v9 + 56))(v32, 0, 1, v8);
    swift_beginAccess();
    sub_1000C1014(v32, v6 + v26);
    swift_endAccess();
    *(v6 + 137) = 0;
    v33 = *(*(v6 + 128) + OBJC_IVAR____TtC7Measure11ReticleView_animator);
    if (v33)
    {
      v34 = v33;
      sub_1001750B8();

      return;
    }

    goto LABEL_44;
  }

  v27 = (v9 + 48);
  if (v111)
  {
    swift_beginAccess();
    sub_1000D7AB8(v6 + v26, v20);
    if ((*v27)(v20, 1, v8) == 1)
    {
      sub_1000D7B28(v20);
    }

    else
    {
      sub_1000D7B28(v20);
      v48 = *(v6 + 304);
      v49 = *(v6 + 320);
      v50 = *(v6 + 336);
      v51 = *(v6 + 352);
      LOBYTE(v114[0]) = 0;
      *(v6 + 144) = v48;
      *(v6 + 160) = v49;
      *(v6 + 176) = v50;
      *(v6 + 192) = v51;
      *(v6 + 208) = 0;
    }

    v52 = v112;
    Date.init()();
    (*(v9 + 56))(v52, 0, 1, v8);
    swift_beginAccess();
    sub_1000C1014(v52, v6 + v26);
    swift_endAccess();
    if (qword_1004A0188 != -1)
    {
      swift_once();
    }

    v53 = qword_1004D4B20;
    sub_10004D9B4();
    v54 = static OS_dispatch_queue.main.getter();
    v9 = v108;
    *v108 = v54;
    v55 = v109;
    v56 = v110;
    (*(v109 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v110);
    v57 = _dispatchPreconditionTest(_:)();
    (*(v55 + 8))(v9, v56);
    if (v57)
    {
      v58 = *(**(v53 + 56) + 144);

      v58(v114, v59);

      v60 = BYTE3(v114[0]) | BYTE4(v114[0]);
      if (((BYTE3(v114[0]) | BYTE4(v114[0])) & 1) == 0)
      {
        sub_10008AF48(2);
      }

      *(v6 + 137) = (v60 & 1) == 0;
      v61 = *(*(v6 + 128) + OBJC_IVAR____TtC7Measure11ReticleView_animator);
      if (v61)
      {
        v62 = v61;
        sub_1001750CC();

        return;
      }

      goto LABEL_45;
    }

    __break(1u);
    goto LABEL_42;
  }

  v35 = qword_1004AC620;
  swift_beginAccess();
  sub_1000D7AB8(v6 + v26, v17);
  v36 = *v27;
  if ((*v27)(v17, 1, v8) == 1)
  {
    v37 = sub_1000D7B28(v17);
    v38 = *((swift_isaMask & *v107) + 0x2B0);
    *&v39 = (v38)(v37);
    LOBYTE(v115[0]) = 0;
    *(v6 + 144) = v39;
    *(v6 + 160) = v40;
    *(v6 + 176) = v41;
    *(v6 + 192) = v42;
    *(v6 + 208) = 0;
    v43 = v38();
LABEL_38:
    *(v6 + 304) = v44;
    *(v6 + 320) = v45;
    *(v6 + 336) = v46;
    *(v6 + 352) = v47;
    (*((swift_isaMask & *v106) + 0x200))(v43);
    goto LABEL_39;
  }

  sub_1000D7B28(v17);
  v63 = v105;
  Date.init()();
  sub_1000D7AB8(v6 + v35, v14);
  if (v36(v14, 1, v8) == 1)
  {
LABEL_46:
    __break(1u);
    return;
  }

  v17 = v35;
  Date.timeIntervalSince(_:)();
  v65 = v64;
  v66 = *(v9 + 8);
  v66(v63, v8);
  v66(v14, v8);
  v5 = fabs(v65);
  if (v5 > 0.1 && (*(v6 + 137) & 1) == 0 && *(v6 + 136) == 1)
  {
    if (qword_1004A0188 == -1)
    {
LABEL_25:
      v67 = qword_1004D4B20;
      sub_10004D9B4();
      v68 = static OS_dispatch_queue.main.getter();
      v69 = v108;
      *v108 = v68;
      v70 = v109;
      v71 = v110;
      (*(v109 + 104))(v69, enum case for DispatchPredicate.onQueue(_:), v110);
      v72 = _dispatchPreconditionTest(_:)();
      (*(v70 + 8))(v69, v71);
      if ((v72 & 1) == 0)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v73 = *(**(v67 + 56) + 144);

      v73(v115, v74);

      v75 = BYTE3(v115[0]) | BYTE4(v115[0]);
      if (((BYTE3(v115[0]) | BYTE4(v115[0])) & 1) == 0)
      {
        sub_10008AF48(1);
      }

      *(v6 + 137) = (v75 & 1) == 0;
      goto LABEL_29;
    }

LABEL_42:
    swift_once();
    goto LABEL_25;
  }

LABEL_29:
  if (v5 > 0.5)
  {
    v76 = *(v6 + 136);
    if (v76 == 3)
    {
      v77 = 2;
    }

    else
    {
      if (v76 != 1)
      {
LABEL_37:
        v89 = v112;
        (*(v9 + 56))(v112, 1, 1, v8);
        swift_beginAccess();
        sub_1000C1014(v89, &v17[v6]);
        v90 = swift_endAccess();
        v91 = v107;
        *(v6 + 137) = 0;
        v92 = *((swift_isaMask & *v91) + 0x2B0);
        *&v93 = (v92)(v90);
        LOBYTE(v115[0]) = 0;
        *(v6 + 144) = v93;
        *(v6 + 160) = v94;
        *(v6 + 176) = v95;
        *(v6 + 192) = v96;
        *(v6 + 208) = 0;
        *&v44 = v92();
        goto LABEL_38;
      }

      v77 = 0;
    }

    *(v6 + 136) = v77;
    goto LABEL_37;
  }

  if (*(v6 + 208))
  {
    return;
  }

  v78 = *(v6 + 192);
  v111 = *(v6 + 176);
  v112 = v78;
  v79 = *(v6 + 160);
  v109 = *(v6 + 144);
  v110 = v79;
  spring(tension:friction:velocity:elapsed:)(400.0, 40.0, 0.0, v5);
  (*((swift_isaMask & *v107) + 0x2B0))();
  slerp(transform1:transform2:percent:)();
  v111 = v81;
  v112 = v80;
  v109 = v83;
  v110 = v82;
  *(v6 + 304) = v80;
  *(v6 + 320) = v81;
  *(v6 + 336) = v82;
  *(v6 + 352) = v83;
  type metadata accessor for MeasureCamera();
  simd_float4x4.position.getter();
  v112 = v84;
  v85 = *(**(v6 + 88) + 144);

  v85(v115, v86);

  memcpy(v114, v115, sizeof(v114));
  sub_100013C4C(v114);
  v111 = v114[11];
  v110 = v114[12];
  v109 = v114[13];
  v108 = v114[14];
  v87 = *(**(v6 + 88) + 144);

  v87(v113, v88);

  memcpy(v115, v113, sizeof(v115));
  sub_100013C4C(v115);
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
LABEL_39:
  CGPoint.init(_:)();
  v98 = v97;
  v100 = v99;
  v101 = *(v6 + 128);
  v102 = objc_opt_self();
  [v102 begin];
  [v102 setAnimationDuration:0.0];
  [*(v101 + OBJC_IVAR____TtC7Measure11ReticleView_snapPointContainer) setPosition:{v98, v100}];
  v103 = (v101 + OBJC_IVAR____TtC7Measure11ReticleView_targetOffset);
  *v103 = v98;
  v103[1] = v100;
  [v102 commit];
}

double sub_100179538@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 152);

  return result;
}

double sub_100179564@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 152);

  return result;
}

uint64_t sub_1001795BC(unsigned __int8 *a1)
{
  v2 = &_mh_execute_header;
  if (!a1[4])
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if (!a1[3])
  {
    v3 = 0;
  }

  v4 = 0x10000;
  if (!a1[2])
  {
    v4 = 0;
  }

  v5 = 256;
  if (!a1[1])
  {
    v5 = 0;
  }

  return (*(v1 + 16))(v5 | *a1 | v4 | v3 | v2);
}

uint64_t sub_100179638()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

_BYTE *sub_100179678(_BYTE *result)
{
  if (!*result)
  {
    return sub_100178354();
  }

  return result;
}

double sub_100179690(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1001796A8(char *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10000F974(&unk_1004A3D90, &unk_1003DDD80);
  __chkstk_darwin(v6 - 8);
  v8 = v78 - v7;
  v9 = *(**(v2 + 96) + 144);

  v9(v93, v10);

  if (LOBYTE(v93[0]) != 1)
  {

    StateValue.wrappedValue.getter();

    v87 = v8;
    if (v93[0] >> 62 == 1)
    {
      sub_10001B360(v93[0]);
    }

    else if (v93[0] >> 62 != 2 || v93[0] != 0x8000000000000018 && v93[0] != 0x8000000000000020)
    {
      sub_10001B360(v93[0]);
      goto LABEL_9;
    }

    *(v2 + 138) = 1;
LABEL_9:
    v88 = a1;
    v11 = *(v2 + 376);
    if (!a2)
    {
      v23 = (v2 + 224);
      v90 = (v2 + 256);
      v91 = (v2 + 240);
      v89 = (v2 + 272);
      if ((v11 & 1) != 0 || (WorldPointType.isSnappable.getter() & 1) == 0)
      {
        v20 = 0;
        v86.i32[0] = 0;
        v24 = 0;
        v25 = 0;
      }

      else
      {
        v86.i32[0] = 0;
        v24 = 0;
        v25 = 0;
        *(v3 + 136) = 3;
        v20 = 1;
      }

      v22 = (v3 + 288);
      v27 = v88;
LABEL_33:
      v30 = *v22;
      v88 = v22;
      if ((v30 & 1) == 0)
      {
        simd_float4x4.position.getter();
        if (!a2)
        {
          goto LABEL_44;
        }

        if (*(v3 + 136) == 2)
        {
          *v32.f32 = v24;
          v32.i64[1] = v25;
          v33 = vsubq_f32(v32, v31);
          v34 = vsub_f32(v24, *v31.f32);
          if ((COERCE_FLOAT(vmulq_f32(v33, v33).i32[2]) + vaddv_f32(vmul_f32(v34, v34))) < 0.00000011921)
          {
            *(v3 + 368) = (*((swift_isaMask & *a2) + 0x2F0))();
            *(v3 + 376) = 0;
            (*((swift_isaMask & *a2) + 0x2B0))();
            v39 = 0;
            LOBYTE(v93[0]) = 0;
LABEL_49:
            *v23 = v35;
            v73 = v90;
            *v91 = v36;
            *v73 = v37;
            *v89 = v38;
            *v22 = v39;
            return;
          }
        }
      }

      if (v27 && a2)
      {
        v81.i32[0] = v20;
        v40 = *(**(v3 + 88) + 144);

        v41 = v27;
        v42 = a2;
        v40(v92);

        memcpy(v93, v92, 0x200uLL);
        v43 = sub_10008D4F0();
        v44 = sub_100013C4C(v93);
        if (v43)
        {
          v80.i64[0] = v41;
          v45.n128_f64[0] = (*((swift_isaMask & *v42) + 0x2B0))(v44);
          v84 = v46;
          v85 = v45;
          v82 = v48;
          v83 = v47;
          v49 = [v43 camera];
          [v49 transform];
          v78[2] = v51;
          v79 = v50;
          v78[0] = v53;
          v78[1] = v52;

          simd_float4x4.position.getter();
          v79 = v54;
          v55 = simd_float4x4.position.getter();
          v57 = vsubq_f32(v79, v56);
          v58 = vmulq_f32(v57, v57);
          v59 = sqrtf(v58.f32[2] + vaddv_f32(*v58.f32));
          v60 = *(v3 + 128);
          v61 = (*((swift_isaMask & *v42) + 0x2C0))(v55);
          v62 = (*(*v61 + 216))(v61);

          if (v62)
          {
            v63 = *(v62 + 48);
          }

          else
          {
            v63 = 7;
          }

          sub_10017AFBC(v63, v85, v84, v83, v82, v59);
          if (*(v3 + 138))
          {

            StateValue.wrappedValue.getter();

            if ((v92[0] & 0x8000000000000000) == 0)
            {
              sub_10001B360(v92[0]);
LABEL_60:
              v64 = v23;
              [v60 setState:0];
              *(v3 + 137) = 0;
              v74 = type metadata accessor for Date();
              v75 = v87;
              (*(*(v74 - 8) + 56))(v87, 1, 1, v74);
              v76 = qword_1004AC620;
              swift_beginAccess();
              sub_1000C1014(v75, v3 + v76);
              swift_endAccess();
              goto LABEL_61;
            }

            if (v92[0] != 0x8000000000000010)
            {
              goto LABEL_60;
            }
          }

          else if ((*((swift_isaMask & *v42) + 0xD0))() != 4)
          {
            v64 = v23;

            StateValue.wrappedValue.getter();

            if (!LOBYTE(v92[0]))
            {
              [v60 setState:1];
            }

            goto LABEL_61;
          }

          v64 = v23;
          [v60 setState:3];
LABEL_61:
          v77 = v80.i64[0];
          sub_100178A28(v42, v80.i64[0], v86.i8[0], v81.u32[0]);

          goto LABEL_45;
        }
      }

LABEL_44:
      v64 = v23;
      v60 = *(v3 + 128);
      [v60 setState:0];
      *(v3 + 137) = 0;
      v65 = type metadata accessor for Date();
      v66 = v87;
      (*(*(v65 - 8) + 56))(v87, 1, 1, v65);
      v67 = qword_1004AC620;
      swift_beginAccess();
      sub_1000C1014(v66, v3 + v67);
      swift_endAccess();
LABEL_45:
      v68 = *&v60[OBJC_IVAR____TtC7Measure11ReticleView_currentDiameter];
      v69 = *(**(v3 + 112) + 400);

      v70 = v69(v92);
      *v71 = v68;
      v70(v92, 0);

      if (a2)
      {
        *(v3 + 368) = (*((swift_isaMask & *a2) + 0x2F0))(v72);
        *(v3 + 376) = 0;
        (*((swift_isaMask & *a2) + 0x2B0))();
        v39 = 0;
        LOBYTE(v92[0]) = 0;
      }

      else
      {
        *(v3 + 368) = 0;
        v39 = 1;
        *(v3 + 376) = 1;
        v35 = 0uLL;
        v36 = 0uLL;
        v37 = 0uLL;
        v38 = 0uLL;
      }

      v23 = v64;
      v22 = v88;
      goto LABEL_49;
    }

    v12 = (*((swift_isaMask & *a2) + 0x2F0))();
    v13 = *(v2 + 224);
    v85 = *(v2 + 240);
    v86 = v13;
    v91 = (v2 + 240);
    v14 = *(v2 + 256);
    v90 = (v2 + 256);
    v83 = *(v2 + 272);
    v84 = v14;
    v89 = (v2 + 272);
    v15 = *(v2 + 288);
    (*((swift_isaMask & *a2) + 0x2B0))();
    LOBYTE(v93[0]) = 0;
    if (v11)
    {
      v20 = 0;
      if (WorldPointType.isSnappable.getter())
      {
        v21 = 1;
        v86.i32[0] = 1;
        v22 = (v2 + 288);
LABEL_26:
        v23 = (v2 + 224);
LABEL_27:
        v27 = v88;
LABEL_28:
        *(v2 + 136) = v21;
LABEL_32:
        (*((swift_isaMask & *a2) + 0x2B0))();
        simd_float4x4.position.getter();
        v25 = v28;
        v24 = v29;
        goto LABEL_33;
      }

      v86.i32[0] = 0;
      v22 = (v2 + 288);
      goto LABEL_31;
    }

    v79 = v17;
    v80 = v16;
    v81 = v19;
    v82 = v18;
    if ((WorldPointType.isSnappable.getter() & 1) == 0)
    {
      v20 = 0;
      v22 = (v2 + 288);
      if (WorldPointType.isSnappable.getter())
      {
        v21 = 1;
        v86.i32[0] = 1;
        goto LABEL_26;
      }

      v86.i32[0] = 0;
LABEL_31:
      v23 = (v2 + 224);
      v27 = v88;
      goto LABEL_32;
    }

    v22 = (v2 + 288);
    if ([objc_opt_self() jasperAvailable])
    {
      v23 = (v2 + 224);
      if ((v12 - 3) < 6)
      {
        if ((0x2Du >> (v12 - 3)))
        {
          v26 = 0;
          goto LABEL_64;
        }

        v26 = 1;
        if (!v12)
        {
LABEL_70:
          v86.i32[0] = 0;
          v20 = 1;
          v21 = 3;
          goto LABEL_27;
        }

LABEL_64:
        v20 = 0;
        if (v15)
        {
          v27 = v88;
          if (v26)
          {
LABEL_66:
            v21 = 1;
            v86.i32[0] = 1;
            goto LABEL_28;
          }
        }

        else
        {
          v27 = v88;
          if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v86, v80), vceqq_f32(v85, v79)), vandq_s8(vceqq_f32(v84, v82), vceqq_f32(v83, v81)))) & 0x80000000) == 0 && v26)
          {
            goto LABEL_66;
          }
        }

        v86.i32[0] = 0;
        goto LABEL_32;
      }

      v26 = 1;
    }

    else
    {
      v26 = v12 != 3;
      v23 = (v2 + 224);
    }

    if (!v12)
    {
      goto LABEL_70;
    }

    goto LABEL_64;
  }
}

uint64_t sub_10017A1A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10017A21C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10017A29C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MeasurementCapture(uint64_t a1)
{
  result = qword_1004AC850;
  if (!qword_1004AC850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10017A358(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10017A3C4(CGImage *a1, double a2, double a3)
{
  Width = CGImageGetWidth(a1);
  if (Width >= CGImageGetHeight(a1))
  {
    CGImageGetHeight(a1);
    CGImageGetHeight(a1);
    CGImageGetHeight(a1);
    CGSize.init(_:_:)();
    CGRect.init(centerPoint:size:)();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    CGImageGetWidth(a1);
    CGImageGetHeight(a1);
    CGSize.init(_:_:)();
    v30 = v29;
    v32 = v31;
    v41.origin.x = 0.0;
    v41.origin.y = 0.0;
    v41.size.width = v30;
    v41.size.height = v32;
    MinX = CGRectGetMinX(v41);
    v42.origin.x = v22;
    v42.origin.y = v24;
    v42.size.width = v26;
    v42.size.height = v28;
    v34 = MinX - CGRectGetMinX(v42);
    v43.origin.x = 0.0;
    v43.origin.y = 0.0;
    v43.size.width = v30;
    v43.size.height = v32;
    MaxX = CGRectGetMaxX(v43);
    v44.origin.x = v22;
    v44.origin.y = v24;
    v44.size.width = v26;
    v44.size.height = v28;
    v36 = CGRectGetMaxX(v44);
    if (v34 > 0.0 || MaxX - v36 < 0.0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    CGImageGetWidth(a1);
    CGImageGetWidth(a1);
    CGImageGetWidth(a1);
    CGSize.init(_:_:)();
    CGRect.init(centerPoint:size:)();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    CGImageGetWidth(a1);
    CGImageGetHeight(a1);
    CGSize.init(_:_:)();
    v14 = v13;
    v16 = v15;
    v37.origin.x = 0.0;
    v37.origin.y = 0.0;
    v37.size.width = v14;
    v37.size.height = v16;
    MinY = CGRectGetMinY(v37);
    v38.origin.x = v6;
    v38.origin.y = v8;
    v38.size.width = v10;
    v38.size.height = v12;
    v18 = MinY - CGRectGetMinY(v38);
    v39.origin.x = 0.0;
    v39.origin.y = 0.0;
    v39.size.width = v14;
    v39.size.height = v16;
    MaxY = CGRectGetMaxY(v39);
    v40.origin.x = v6;
    v40.origin.y = v8;
    v40.size.width = v10;
    v40.size.height = v12;
    v20 = CGRectGetMaxY(v40);
    if (v18 > 0.0 || MaxY - v20 < 0.0)
    {
LABEL_9:
      CGRect.centerPoint.getter();
      CGRect.init(centerPoint:size:)();
    }
  }
}

uint64_t sub_10017A6A8(double a1, double a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_10000F974(&qword_1004AC888, &unk_1003E0290);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5720;
  *(inited + 32) = kCGImageSourceCreateThumbnailWithTransform;
  *(inited + 40) = 1;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 72) = kCGImageSourceCreateThumbnailFromImageAlways;
  *(inited + 80) = 1;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = kCGImageSourceThumbnailMaxPixelSize;
  *(inited + 144) = &type metadata for Int;
  *(inited + 120) = 800;
  v7 = kCGImageSourceCreateThumbnailWithTransform;
  v8 = kCGImageSourceCreateThumbnailFromImageAlways;
  v9 = kCGImageSourceThumbnailMaxPixelSize;
  sub_10019A62C(inited);
  swift_setDeallocating();
  sub_10000F974(&qword_1004AE180, &unk_1003E14A0);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_10017AF10();
  v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = CGImageSourceCreateWithData(isa, 0);

  if (v12)
  {
    v13 = CGImageSourceCopyPropertiesAtIndex(v12, 0, 0);
    if (!v13)
    {
      goto LABEL_5;
    }

    v14 = v13;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v16 = 0;
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

LABEL_5:
      if ((a5 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if ((a5 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_10017AD48();
    goto LABEL_11;
  }

  if (a5)
  {
    goto LABEL_10;
  }

LABEL_11:

  return 0;
}

void sub_10017AD48()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = type metadata accessor for MeasurementCapture(0);
  URL._bridgeToObjectiveC()(*(v1 + 20));
  v3 = v2;
  v13 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v13];

  if (v4)
  {
    v5 = v13;
  }

  else
  {
    v7 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  URL._bridgeToObjectiveC()(v6);
  v9 = v8;
  v13 = 0;
  v10 = [v0 removeItemAtURL:v8 error:&v13];

  if (v10)
  {
    v11 = v13;
  }

  else
  {
    v12 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_10017AEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static URL.== infix(_:_:)();
}

unint64_t sub_10017AF10()
{
  result = qword_1004A0B80;
  if (!qword_1004A0B80)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A0B80);
  }

  return result;
}

void sub_10017AFBC(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, float a6)
{
  v7 = v6;
  v8 = a1;
  v10 = (1.0 / (a6 + 0.3)) + 0.5;
  if (qword_1004A0760 != -1)
  {
    swift_once();
  }

  v11 = v10;
  qword_1004D52E0(a6);
  if (qword_1004A0768 != -1)
  {
    v37 = v12;
    swift_once();
    v12 = v37;
  }

  v13 = v12;
  *&v6[OBJC_IVAR____TtC7Measure11ReticleView_currentDiameter] = (v12 * *&dword_1004D52F0) + (v12 * *&dword_1004D52F0);
  v14 = objc_opt_self();
  [v14 begin];
  [v14 setAnimationDuration:0.0];
  v15 = OBJC_IVAR____TtC7Measure11ReticleView_snapPointContainer;
  v16 = *&v7[OBJC_IVAR____TtC7Measure11ReticleView_snapPointContainer];
  CATransform3DMakeScale(__dst, v11, v11, 1.0);
  [v16 setTransform:__dst];

  [v14 commit];
  simd_float4x4.up.getter();
  simd_float4x4.position.getter();
  createTransform(normal:forward:position:)();
  simd_float4x4.up.getter();
  v17.i32[3] = 0;
  v41 = v17;
  simd_float4x4.forward.getter();
  v18.i32[3] = 0;
  v40 = v18;
  simd_float4x4.right.getter();
  v19.i64[0] = vsubq_f32(0, v19).u64[0];
  v19.f32[2] = 0.0 - v19.f32[2];
  v19.i32[3] = 0;
  v39 = v19;
  simd_float4x4.position.getter();
  v20.i32[3] = 1.0;
  v38 = v20;
  v21 = [objc_opt_self() jasperAvailable];
  v22 = &v7[OBJC_IVAR____TtC7Measure11ReticleView_currentReticleTransform];
  if (v21)
  {
    sub_10017D428(v8);
    slerp(transform1:transform2:percent:)();
  }

  else
  {
    v24 = v40;
    v25 = v41;
    v26 = v38;
    v23 = v39;
  }

  *v22 = v23;
  v22[1] = v24;
  v22[2] = v25;
  v22[3] = v26;
  type metadata accessor for MeasureCamera();
  v27 = *(**&v7[OBJC_IVAR____TtC7Measure11ReticleView__frameState] + 144);

  v27(__src, v28);

  memcpy(__dst, __src, sizeof(__dst));
  sub_100013C4C(__dst);
  static MeasureCamera.getLayerTransform(for:view:)();
  CATransform3DScale(__src, &aBlock, v13, v13, 1.0);
  if (![v7 state])
  {
    [*&v7[OBJC_IVAR____TtC7Measure11ReticleView_reticleParentLayer] removeAllAnimations];
    [*&v7[OBJC_IVAR____TtC7Measure11ReticleView_reticleBackingView] _removeAllRetargetableAnimations:1];
    [*&v7[v15] removeAllAnimations];
    sub_10017D4E4(&__src[0].m11);
  }

  v29 = objc_opt_self();
  v30 = swift_allocObject();
  v31 = *&__src[0].m33;
  *(v30 + 88) = *&__src[0].m31;
  *(v30 + 104) = v31;
  v32 = *&__src[0].m43;
  *(v30 + 120) = *&__src[0].m41;
  *(v30 + 136) = v32;
  v33 = *&__src[0].m13;
  *(v30 + 24) = *&__src[0].m11;
  *(v30 + 40) = v33;
  v34 = *&__src[0].m23;
  *(v30 + 56) = *&__src[0].m21;
  *(v30 + 16) = v7;
  *(v30 + 72) = v34;
  *&aBlock.m21 = sub_10017EBD8;
  *&aBlock.m22 = v30;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_100041180;
  *&aBlock.m14 = &unk_100470BB0;
  v35 = _Block_copy(&aBlock);
  v36 = v7;

  [v29 _animateUsingSpringInteractive:0 animations:v35 completion:0];
  _Block_release(v35);
}

unint64_t sub_10017B470@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10017E61C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_10017B508(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7Measure11ReticleView__state;
  if (*&v1[OBJC_IVAR____TtC7Measure11ReticleView__state] != a1)
  {
    v3 = v1;
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v8 = *&v1[OBJC_IVAR____TtC7Measure11ReticleView_animator];
        if (v8)
        {
          v7 = v8;
          sub_100175EBC([v3 state]);
          goto LABEL_15;
        }

        goto LABEL_18;
      }

      if (a1 == 3)
      {
        v10 = *&v1[OBJC_IVAR____TtC7Measure11ReticleView_animator];
        if (v10)
        {
          v7 = v10;
          sub_100176628([v3 state]);
          goto LABEL_15;
        }

        goto LABEL_20;
      }
    }

    else
    {
      if (!a1)
      {
        [v1 frame];
        v5 = CGRectGetWidth(v11) * 0.5;
        [v1 frame];
        [*&v1[OBJC_IVAR____TtC7Measure11ReticleView_snapPointContainer] setPosition:{v5, CGRectGetHeight(v12) * 0.5}];
        v6 = *&v1[OBJC_IVAR____TtC7Measure11ReticleView_animator];
        if (v6)
        {
          v7 = v6;
          sub_100175558([v3 state]);
LABEL_15:

          *&v3[v2] = a1;
          return;
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (a1 == 1)
      {
        v9 = *&v1[OBJC_IVAR____TtC7Measure11ReticleView_animator];
        if (v9)
        {
          v7 = v9;
          sub_100176C0C([v3 state]);
          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

LABEL_21:
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }
}

void sub_10017B6E0(unint64_t a1)
{
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if (static UIDevice.isIPad()())
  {
    if (a1 - 1 >= 4)
    {
      return;
    }

    goto LABEL_6;
  }

  if (a1 <= 4 && ((1 << a1) & 0x1A) != 0)
  {
LABEL_6:
    v3 = OBJC_IVAR____TtC7Measure11ReticleView__orientation;
    if (*&v1[OBJC_IVAR____TtC7Measure11ReticleView__orientation] != a1)
    {
      [v1 frame];
      v4 = CGRectGetWidth(v13) * 0.5;
      [v1 frame];
      v5 = CGRectGetHeight(v14) * 0.5;
      [*&v1[OBJC_IVAR____TtC7Measure11ReticleView_reticleParentLayer] setPosition:{v4, v5}];
      [*&v1[OBJC_IVAR____TtC7Measure11ReticleView_snapPointContainer] setPosition:{v4, v5}];
      SIMD2<>.init(_:)();
      *&v1[OBJC_IVAR____TtC7Measure11ReticleView_searchArea] = v6;
      v7 = *(**&v1[OBJC_IVAR____TtC7Measure11ReticleView__input] + 200);

      v9 = v7(v8);

      v10 = swift_allocObject();
      *(v10 + 16) = v1;
      v11 = *(*v9 + 280);
      v12 = v1;
      v11(sub_10017E664, v10);

      *&v1[v3] = a1;
    }
  }
}

void sub_10017B930(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC7Measure11ReticleView__state] = 0;
  v11 = OBJC_IVAR____TtC7Measure11ReticleView_currentDiameter;
  if (qword_1004A0768 != -1)
  {
    swift_once();
  }

  v12 = *&dword_1004D52F0;
  *&v5[v11] = *&dword_1004D52F0 + *&dword_1004D52F0;
  v13 = &v5[OBJC_IVAR____TtC7Measure11ReticleView_targetOffset];
  *v13 = 0;
  v13[1] = 0;
  *&v5[OBJC_IVAR____TtC7Measure11ReticleView_snapTimer] = 0;
  v14 = OBJC_IVAR____TtC7Measure11ReticleView_snapTimestamp;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC7Measure11ReticleView__frameState;
  KeyPath = swift_getKeyPath();
  v18 = sub_10000F974(&qword_1004A1200, &unk_1003D5600);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v19 = qword_1004D5058;
  v20 = *(v18 + 272);
  swift_retain_n();
  *&v5[v16] = v20(KeyPath, v19);
  v21 = OBJC_IVAR____TtC7Measure11ReticleView__input;
  v22 = swift_getKeyPath();
  v23 = sub_10000F974(&unk_1004A72D0, &qword_1003D5850);
  *&v5[v21] = (*(v23 + 272))(v22, v19);
  v24 = &v5[OBJC_IVAR____TtC7Measure11ReticleView_currentReticleTransform];
  v24[2] = 0u;
  v24[3] = 0u;
  *v24 = 0u;
  v24[1] = 0u;
  *&v5[OBJC_IVAR____TtC7Measure11ReticleView__orientation] = 0;
  v25 = OBJC_IVAR____TtC7Measure11ReticleView_reticleBoundsLayer;
  *&v5[v25] = [objc_allocWithZone(CATransformLayer) init];
  v26 = OBJC_IVAR____TtC7Measure11ReticleView_reticleParentLayer;
  *&v5[v26] = [objc_allocWithZone(CATransformLayer) init];
  v27 = OBJC_IVAR____TtC7Measure11ReticleView_reticleShapeLayer;
  *&v5[v27] = [objc_allocWithZone(CAShapeLayer) init];
  v28 = OBJC_IVAR____TtC7Measure11ReticleView_snapPointLayer;
  *&v5[v28] = [objc_allocWithZone(CAShapeLayer) init];
  v29 = OBJC_IVAR____TtC7Measure11ReticleView_snapPointContainer;
  *&v5[v29] = [objc_allocWithZone(CALayer) init];
  v5[OBJC_IVAR____TtC7Measure11ReticleView_isGoingActive] = 0;
  *&v5[OBJC_IVAR____TtC7Measure11ReticleView_transformChangeDuration] = 0x3FB999999999999ALL;
  *&v5[OBJC_IVAR____TtC7Measure11ReticleView_transformChangeDurationAfterIdle] = 0x3FC999999999999ALL;
  v30 = &v5[OBJC_IVAR____TtC7Measure11ReticleView_searchArea];
  *v30 = 0;
  *(v30 + 2) = 1106247680;
  v31 = OBJC_IVAR____TtC7Measure11ReticleView_reticleBackingView;
  *&v5[v31] = [objc_allocWithZone(type metadata accessor for TransformLayerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC7Measure11ReticleView_animatingProperties] = 0;
  *&v5[OBJC_IVAR____TtC7Measure11ReticleView_animator] = 0;
  v135.receiver = v5;
  v135.super_class = ObjectType;
  v118 = a2;
  v32 = a2;
  v33 = a3;
  v34 = a3;
  v35 = a4;
  v36 = objc_msgSendSuper2(&v135, "initWithFrame:", a1, v32, v34, a4);
  [v36 setAutoresizingMask:18];
  [v36 setUserInteractionEnabled:0];
  v37 = OBJC_IVAR____TtC7Measure11ReticleView_reticleBackingView;
  v38 = *&v36[OBJC_IVAR____TtC7Measure11ReticleView_reticleBackingView];
  [v36 bounds];
  [v38 setFrame:?];

  [v36 addSubview:*&v36[v37]];
  v39 = [*&v36[v37] layer];
  objc_opt_self();
  v40 = swift_dynamicCastObjCClassUnconditional();
  v41 = *&v36[OBJC_IVAR____TtC7Measure11ReticleView_reticleParentLayer];
  v121 = OBJC_IVAR____TtC7Measure11ReticleView_reticleParentLayer;
  *&v36[OBJC_IVAR____TtC7Measure11ReticleView_reticleParentLayer] = v40;
  v42 = v39;

  [v40 setAnchorPoint:{0.0, 0.0}];
  if (qword_1004A0770 != -1)
  {
    swift_once();
  }

  v43 = v12;
  v44 = *&qword_1004D52F8;
  v45 = [objc_allocWithZone(UIBezierPath) init];
  v46 = objc_opt_self();
  v47 = [v46 jasperAvailable];
  v48 = Float.degreesToRadians.unsafeMutableAddressor();
  v49 = *v48;
  v50 = ((v44 + 0.0) * *v48);
  v51 = objc_opt_self();
  v52 = v51;
  if (v47)
  {
    v53 = 180.0;
    v54 = ((180.0 - v44) * v49);
    v55 = v43;
    v56 = v50;
  }

  else
  {
    v57 = [v51 bezierPathWithArcCenter:1 radius:0.0 startAngle:0.0 endAngle:v43 clockwise:{v50, ((90.0 - v44) * v49)}];
    [v45 appendPath:v57];

    v58 = [v52 bezierPathWithArcCenter:1 radius:0.0 startAngle:0.0 endAngle:v43 clockwise:{((v44 + 90.0) * *v48), ((180.0 - v44) * *v48)}];
    [v45 appendPath:v58];

    v56 = ((v44 + 180.0) * *v48);
    v53 = 270.0;
    v54 = ((270.0 - v44) * *v48);
    v51 = v52;
    v55 = v43;
  }

  v59 = [v51 bezierPathWithArcCenter:1 radius:0.0 startAngle:0.0 endAngle:v55 clockwise:{v56, v54}];
  [v45 appendPath:v59];

  v60 = [v52 bezierPathWithArcCenter:1 radius:0.0 startAngle:0.0 endAngle:v43 clockwise:{((v53 + v44) * *v48), ((360.0 - v44) * *v48)}];
  [v45 appendPath:v60];

  v61 = [objc_allocWithZone(CALayer) init];
  v120 = [objc_allocWithZone(CALayer) init];
  v62 = OBJC_IVAR____TtC7Measure11ReticleView_reticleShapeLayer;
  v63 = *&v36[OBJC_IVAR____TtC7Measure11ReticleView_reticleShapeLayer];
  v64 = [v45 CGPath];
  [v63 setPath:v64];

  if ([v46 jasperAvailable])
  {
    [*&v36[v62] setLineCap:kCALineCapRound];
  }

  v65 = qword_1004A0758;
  v66 = *&v36[v62];
  if (v65 != -1)
  {
    swift_once();
  }

  [v66 setLineWidth:*&dword_1004D52DC];

  v67 = qword_1004A0710;
  v68 = *&v36[v62];
  if (v67 != -1)
  {
    swift_once();
  }

  v117 = v45;
  v69 = [qword_1004D52A0 CGColor];
  [v68 setFillColor:v69];

  v70 = qword_1004A0718;
  v71 = *&v36[v62];
  if (v70 != -1)
  {
    swift_once();
  }

  v72 = [qword_1004D52A8 CGColor];
  [v71 setStrokeColor:v72];

  [*&v36[v62] setCompositingFilter:kCAFilterPlusL];
  v73 = OBJC_IVAR____TtC7Measure11ReticleView_reticleBoundsLayer;
  v74 = *&v36[OBJC_IVAR____TtC7Measure11ReticleView_reticleBoundsLayer];
  CGPoint.init(_:)();
  v75 = v74;
  * infix(_:_:)();
  static CGPoint.- infix(_:_:)();
  [v75 setBounds:?];

  [*&v36[v121] addSublayer:*&v36[v73]];
  [*&v36[v121] addSublayer:v61];
  [v61 addSublayer:v120];
  [v120 addSublayer:*&v36[v62]];
  v136.origin.x = a1;
  v136.origin.y = v118;
  v136.size.width = v33;
  v136.size.height = v35;
  v76 = CGRectGetWidth(v136) * 0.5;
  v137.origin.x = a1;
  v137.origin.y = v118;
  v137.size.width = v33;
  v137.size.height = v35;
  [*&v36[v121] setPosition:{v76, CGRectGetHeight(v137) * 0.5}];
  [*&v36[v62] setPosition:{0.0, 0.0}];
  v119 = v61;
  [v61 setPosition:{0.0, 0.0}];
  [v120 setPosition:{0.0, 0.0}];
  SIMD2<>.init(_:)();
  *&v36[OBJC_IVAR____TtC7Measure11ReticleView_searchArea] = v77;
  v78 = *(**&v36[OBJC_IVAR____TtC7Measure11ReticleView__input] + 200);

  v80 = v78(v79);

  v81 = swift_allocObject();
  *(v81 + 16) = v36;
  v82 = *(*v80 + 280);
  v83 = v36;
  v82(sub_10017EC18, v81);

  if (qword_1004A0778 != -1)
  {
    swift_once();
  }

  v84 = [objc_opt_self() bezierPathWithArcCenter:1 radius:0.0 startAngle:0.0 endAngle:*&dword_1004D5300 clockwise:{0.0, 6.28318531}];
  v85 = OBJC_IVAR____TtC7Measure11ReticleView_snapPointLayer;
  v86 = *&v83[OBJC_IVAR____TtC7Measure11ReticleView_snapPointLayer];
  v116 = v84;
  v87 = [v84 CGPath];
  [v86 setPath:v87];

  v88 = qword_1004A0728;
  v89 = *&v83[v85];
  if (v88 != -1)
  {
    swift_once();
  }

  v90 = [qword_1004D52B8 CGColor];
  [v89 setFillColor:v90];

  v91 = *&v83[v85];
  v92 = objc_opt_self();
  v93 = v91;
  v94 = [v92 clearColor];
  v95 = [v94 CGColor];

  [v93 setStrokeColor:v95];
  v96 = [objc_allocWithZone(CALayer) init];
  v97 = OBJC_IVAR____TtC7Measure11ReticleView_snapPointContainer;
  v98 = *&v83[OBJC_IVAR____TtC7Measure11ReticleView_snapPointContainer];
  *&v83[OBJC_IVAR____TtC7Measure11ReticleView_snapPointContainer] = v96;
  v99 = v96;

  [v99 addSublayer:*&v83[v85]];
  [*&v83[v97] setPosition:{0.0, 0.0}];
  v100 = [v83 layer];
  [v100 addSublayer:*&v83[v97]];

  v101 = *&v36[v62];
  v102 = *&v83[v85];
  v103 = objc_allocWithZone(type metadata accessor for ReticleAnimator());
  v104 = v101;
  v105 = v119;
  v106 = v120;
  v107 = sub_100174858(v104, v105, v106, v102);
  v108 = *&v83[OBJC_IVAR____TtC7Measure11ReticleView_animator];
  *&v83[OBJC_IVAR____TtC7Measure11ReticleView_animator] = v107;

  [v83 setState:0];
  v109 = *&v36[v121];
  [v109 transform];
  v122[2] = v129;
  v122[3] = v130;
  v122[4] = v131;
  v122[0] = aBlock;
  v122[1] = v128;
  v125 = v133;
  v126 = v134;
  v123 = v132;
  v124 = 0xBF647AE147AE147BLL;
  [v109 setTransform:v122];

  sub_10017C944();
  v110 = objc_opt_self();
  v111 = swift_allocObject();
  *(v111 + 16) = v83;
  v112 = swift_allocObject();
  *(v112 + 16) = sub_10017E9FC;
  *(v112 + 24) = v111;
  *&v129 = sub_100031688;
  *(&v129 + 1) = v112;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v128 = sub_1000DC708;
  *(&v128 + 1) = &unk_100470A70;
  v113 = _Block_copy(&aBlock);
  v114 = v83;

  [v110 performWithoutAnimation:v113];
  _Block_release(v113);
  LOBYTE(v101) = swift_isEscapingClosureAtFileLocation();

  if (v101)
  {
    __break(1u);
  }

  else
  {
    v115 = [objc_opt_self() defaultCenter];
    [v115 addObserver:v114 selector:"updateForCurrentOrientation" name:UIDeviceOrientationDidChangeNotification object:0];
  }
}

void sub_10017C944()
{
  v0 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v55 = swift_allocObject();
  v1 = v0;
  swift_unknownObjectWeakInit();
  v2 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v53 = swift_allocObject();
  v4 = v3;
  swift_unknownObjectWeakInit();
  v5 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v61 = swift_allocObject();
  v6 = v5;
  swift_unknownObjectWeakInit();
  v7 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v60 = swift_allocObject();
  v8 = v7;
  swift_unknownObjectWeakInit();
  v26 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003E02A0;
  *(v11 + 32) = v1;
  *(v11 + 40) = v2;
  *(v11 + 48) = v4;
  *(v11 + 56) = v6;
  *(v11 + 64) = v8;
  *(v11 + 72) = v26;
  *(v11 + 80) = v24;
  *(v11 + 88) = v21;
  *(v11 + 96) = v37;
  *(v11 + 104) = v44;
  *(v11 + 112) = v42;
  *(v11 + 120) = v39;
  *(v11 + 128) = v35;
  *(v11 + 136) = v33;
  *(v11 + 144) = v9;
  *(v11 + 152) = v10;
  v20 = v11;
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = objc_opt_self();
  sub_100018630(0, &qword_1004AC9B0, UIViewFloatAnimatableProperty_ptr);
  v32 = v1;
  v31 = v2;
  v30 = v4;
  v29 = v6;
  v28 = v8;
  v27 = v26;
  v25 = v24;
  v22 = v21;
  v38 = v37;
  v45 = v44;
  v43 = v42;
  v40 = v39;
  v36 = v35;
  v34 = v33;
  v19 = v9;
  v18 = v10;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v12 = swift_allocObject();
  v12[2] = v55;
  v12[3] = v54;
  v12[4] = v53;
  v12[5] = v61;
  v12[6] = v60;
  v12[7] = v59;
  v12[8] = v57;
  v12[9] = v56;
  v12[10] = v58;
  v12[11] = v50;
  v12[12] = v52;
  v12[13] = v51;
  v12[14] = v48;
  v12[15] = v47;
  v12[16] = v46;
  v12[17] = v15;
  v12[18] = v41;
  v66 = sub_10017EA68;
  v67 = v12;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_100041180;
  v65 = &unk_100470B10;
  v16 = _Block_copy(&aBlock);

  v13 = swift_allocObject();
  v13[2] = v55;
  v13[3] = v54;
  v13[4] = v53;
  v13[5] = v61;
  v13[6] = v60;
  v13[7] = v59;
  v13[8] = v57;
  v13[9] = v56;
  v13[10] = v58;
  v13[11] = v50;
  v13[12] = v52;
  v13[13] = v51;
  v13[14] = v48;
  v13[15] = v47;
  v13[16] = v46;
  v13[17] = v15;
  v13[18] = v41;
  v66 = sub_10017EB38;
  v67 = v13;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_100041180;
  v65 = &unk_100470B60;
  v14 = _Block_copy(&aBlock);

  [v23 _createTransformerWithInputAnimatableProperties:isa modelValueSetter:v16 presentationValueSetter:v14];

  _Block_release(v14);
  _Block_release(v16);

  *(v49 + OBJC_IVAR____TtC7Measure11ReticleView_animatingProperties) = v20;
}

void sub_10017D2E4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 orientation];

  sub_10017B6E0(v1);
}

void sub_10017D428(char a1)
{
  if (a1 == 6)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    [v2 kReticleADSlerpFactor];
    v4 = v3;

    if (v4 > 0.0)
    {
      v5 = [v1 standardUserDefaults];
      [v5 kReticleADSlerpFactor];
    }
  }
}

void sub_10017D4E4(double *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Measure11ReticleView_animatingProperties);
  if (!v2)
  {
    return;
  }

  v4 = v2 & 0xC000000000000001;
  if ((v2 & 0xC000000000000001) != 0)
  {

    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_71;
    }

    v5 = *(v2 + 32);

    v6 = v5;
  }

  v7 = v6;
  [v6 setValue:*a1];

  if (v4)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v8 = *(v2 + 40);
LABEL_10:
  v9 = v8;
  [v8 setValue:a1[1]];

  if (v4)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v10 = *(v2 + 48);
LABEL_14:
  v11 = v10;
  [v10 setValue:a1[2]];

  if (v4)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_18;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v12 = *(v2 + 56);
LABEL_18:
  v13 = v12;
  [v12 setValue:a1[3]];

  if (v4)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_22;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v14 = *(v2 + 64);
LABEL_22:
  v15 = v14;
  [v14 setValue:a1[4]];

  if (v4)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_26;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v16 = *(v2 + 72);
LABEL_26:
  v17 = v16;
  [v16 setValue:a1[5]];

  if (v4)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_30;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 7uLL)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v18 = *(v2 + 80);
LABEL_30:
  v19 = v18;
  [v18 setValue:a1[6]];

  if (v4)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_34;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 8uLL)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v20 = *(v2 + 88);
LABEL_34:
  v21 = v20;
  [v20 setValue:a1[7]];

  if (v4)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_38;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 9uLL)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v22 = *(v2 + 96);
LABEL_38:
  v23 = v22;
  [v22 setValue:a1[8]];

  if (v4)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_42;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 0xAuLL)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v24 = *(v2 + 104);
LABEL_42:
  v25 = v24;
  [v24 setValue:a1[9]];

  if (v4)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_46;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 0xBuLL)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v26 = *(v2 + 112);
LABEL_46:
  v27 = v26;
  [v26 setValue:a1[10]];

  if (v4)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_50;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 0xCuLL)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v28 = *(v2 + 120);
LABEL_50:
  v29 = v28;
  [v28 setValue:a1[11]];

  if (v4)
  {
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_54;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 0xDuLL)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v30 = *(v2 + 128);
LABEL_54:
  v31 = v30;
  [v30 setValue:a1[12]];

  if (v4)
  {
    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_58;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 0xEuLL)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v32 = *(v2 + 136);
LABEL_58:
  v33 = v32;
  [v32 setValue:a1[13]];

  if (v4)
  {
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_62;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 0xFuLL)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v34 = *(v2 + 144);
LABEL_62:
  v35 = v34;
  [v34 setValue:a1[14]];

  if (!v4)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 0x10uLL)
    {
      v36 = *(v2 + 152);
      goto LABEL_66;
    }

LABEL_85:
    __break(1u);
    return;
  }

  v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_66:
  v37 = v36;

  [v37 setValue:a1[15]];
}

uint64_t type metadata accessor for ReticleView(uint64_t a1)
{
  result = qword_1004AC958;
  if (!qword_1004AC958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10017DAF4(uint64_t a1)
{
  sub_100065060(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_10017DC28(uint64_t a1)
{
  result = sub_10017DC50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10017DC50()
{
  result = qword_1004AC9A0;
  if (!qword_1004AC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC9A0);
  }

  return result;
}

unint64_t sub_10017DCAC()
{
  result = qword_1004AC9A8;
  if (!qword_1004AC9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC9A8);
  }

  return result;
}

void sub_10017DD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    [Strong value];
    v20 = v19;

    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      [v21 value];
      v24 = v23;

      swift_beginAccess();
      v25 = swift_unknownObjectWeakLoadStrong();
      if (v25)
      {
        v26 = v25;
        [v25 value];
        v28 = v27;

        swift_beginAccess();
        v29 = swift_unknownObjectWeakLoadStrong();
        if (v29)
        {
          v30 = v29;
          [v29 value];
          v32 = v31;

          swift_beginAccess();
          v33 = swift_unknownObjectWeakLoadStrong();
          if (v33)
          {
            v34 = v33;
            [v33 value];
            v36 = v35;

            swift_beginAccess();
            v37 = swift_unknownObjectWeakLoadStrong();
            if (v37)
            {
              v38 = v37;
              [v37 value];
              v40 = v39;

              swift_beginAccess();
              v41 = swift_unknownObjectWeakLoadStrong();
              if (v41)
              {
                v42 = v41;
                [v41 value];
                v44 = v43;

                swift_beginAccess();
                v45 = swift_unknownObjectWeakLoadStrong();
                if (v45)
                {
                  v46 = v45;
                  [v45 value];
                  v48 = v47;

                  swift_beginAccess();
                  v49 = swift_unknownObjectWeakLoadStrong();
                  if (v49)
                  {
                    v50 = v49;
                    [v49 value];
                    v83 = v51;

                    swift_beginAccess();
                    v52 = swift_unknownObjectWeakLoadStrong();
                    if (v52)
                    {
                      v53 = v52;
                      [v52 value];
                      v82 = v54;

                      swift_beginAccess();
                      v55 = swift_unknownObjectWeakLoadStrong();
                      if (v55)
                      {
                        v56 = v55;
                        [v55 value];
                        v81 = v57;

                        swift_beginAccess();
                        v58 = swift_unknownObjectWeakLoadStrong();
                        if (v58)
                        {
                          v59 = v58;
                          [v58 value];
                          v80 = v60;

                          swift_beginAccess();
                          v61 = swift_unknownObjectWeakLoadStrong();
                          if (v61)
                          {
                            v62 = v61;
                            [v61 value];
                            v79 = v63;

                            swift_beginAccess();
                            v64 = swift_unknownObjectWeakLoadStrong();
                            if (v64)
                            {
                              v65 = v64;
                              [v64 value];
                              v78 = v66;

                              swift_beginAccess();
                              v67 = swift_unknownObjectWeakLoadStrong();
                              if (v67)
                              {
                                v68 = v67;
                                [v67 value];
                                v77 = v69;

                                swift_beginAccess();
                                v70 = swift_unknownObjectWeakLoadStrong();
                                if (v70)
                                {
                                  v71 = v70;
                                  [v70 value];
                                  v76 = v72;

                                  swift_beginAccess();
                                  v73 = swift_unknownObjectWeakLoadStrong();
                                  if (v73)
                                  {
                                    v74 = v73;
                                    v75 = [v73 layer];

                                    v84[0] = v20;
                                    v84[1] = v24;
                                    v84[2] = v28;
                                    v84[3] = v32;
                                    v84[4] = v36;
                                    v84[5] = v40;
                                    v84[6] = v44;
                                    v84[7] = v48;
                                    v84[8] = v83;
                                    v84[9] = v82;
                                    v84[10] = v81;
                                    v84[11] = v80;
                                    v84[12] = v79;
                                    v84[13] = v78;
                                    v84[14] = v77;
                                    v84[15] = v76;
                                    [v75 setSublayerTransform:v84];
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10017E174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    [Strong presentationValue];
    v20 = v19;

    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      [v21 presentationValue];
      v24 = v23;

      swift_beginAccess();
      v25 = swift_unknownObjectWeakLoadStrong();
      if (v25)
      {
        v26 = v25;
        [v25 presentationValue];
        v28 = v27;

        swift_beginAccess();
        v29 = swift_unknownObjectWeakLoadStrong();
        if (v29)
        {
          v30 = v29;
          [v29 presentationValue];
          v32 = v31;

          swift_beginAccess();
          v33 = swift_unknownObjectWeakLoadStrong();
          if (v33)
          {
            v34 = v33;
            [v33 presentationValue];
            v36 = v35;

            swift_beginAccess();
            v37 = swift_unknownObjectWeakLoadStrong();
            if (v37)
            {
              v38 = v37;
              [v37 presentationValue];
              v40 = v39;

              swift_beginAccess();
              v41 = swift_unknownObjectWeakLoadStrong();
              if (v41)
              {
                v42 = v41;
                [v41 presentationValue];
                v44 = v43;

                swift_beginAccess();
                v45 = swift_unknownObjectWeakLoadStrong();
                if (v45)
                {
                  v46 = v45;
                  [v45 presentationValue];
                  v48 = v47;

                  swift_beginAccess();
                  v49 = swift_unknownObjectWeakLoadStrong();
                  if (v49)
                  {
                    v50 = v49;
                    [v49 presentationValue];
                    v84 = v51;

                    swift_beginAccess();
                    v52 = swift_unknownObjectWeakLoadStrong();
                    if (v52)
                    {
                      v53 = v52;
                      [v52 presentationValue];
                      v83 = v54;

                      swift_beginAccess();
                      v55 = swift_unknownObjectWeakLoadStrong();
                      if (v55)
                      {
                        v56 = v55;
                        [v55 presentationValue];
                        v82 = v57;

                        swift_beginAccess();
                        v58 = swift_unknownObjectWeakLoadStrong();
                        if (v58)
                        {
                          v59 = v58;
                          [v58 presentationValue];
                          v81 = v60;

                          swift_beginAccess();
                          v61 = swift_unknownObjectWeakLoadStrong();
                          if (v61)
                          {
                            v62 = v61;
                            [v61 presentationValue];
                            v80 = v63;

                            swift_beginAccess();
                            v64 = swift_unknownObjectWeakLoadStrong();
                            if (v64)
                            {
                              v65 = v64;
                              [v64 presentationValue];
                              v79 = v66;

                              swift_beginAccess();
                              v67 = swift_unknownObjectWeakLoadStrong();
                              if (v67)
                              {
                                v68 = v67;
                                [v67 presentationValue];
                                v78 = v69;

                                swift_beginAccess();
                                v70 = swift_unknownObjectWeakLoadStrong();
                                if (v70)
                                {
                                  v71 = v70;
                                  [v70 presentationValue];
                                  v77 = v72;

                                  swift_beginAccess();
                                  v73 = swift_unknownObjectWeakLoadStrong();
                                  if (v73)
                                  {
                                    v74 = v73;
                                    v85[0] = v20;
                                    v85[1] = v24;
                                    v85[2] = v28;
                                    v85[3] = v32;
                                    v85[4] = v36;
                                    v85[5] = v40;
                                    v85[6] = v44;
                                    v85[7] = v48;
                                    v85[8] = v84;
                                    v85[9] = v83;
                                    v85[10] = v82;
                                    v85[11] = v81;
                                    v85[12] = v80;
                                    v85[13] = v79;
                                    v85[14] = v78;
                                    v85[15] = v77;
                                    v75 = [objc_opt_self() valueWithCATransform3D:v85];
                                    v76 = String._bridgeToObjectiveC()();
                                    [v74 _setPresentationValue:v75 forKey:v76];
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10017E61C(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10017E62C()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10017E664(uint64_t a1)
{
  v2 = *(v1 + 16) + OBJC_IVAR____TtC7Measure11ReticleView_searchArea;
  result = *v2;
  v4 = *(v2 + 8);
  *(a1 + 24) = *v2;
  *(a1 + 32) = v4;
  return result;
}

void sub_10017E688()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC7Measure11ReticleView__state) = 0;
  v2 = OBJC_IVAR____TtC7Measure11ReticleView_currentDiameter;
  if (qword_1004A0768 != -1)
  {
    swift_once();
  }

  *(v1 + v2) = *&dword_1004D52F0 + *&dword_1004D52F0;
  v3 = (v1 + OBJC_IVAR____TtC7Measure11ReticleView_targetOffset);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC7Measure11ReticleView_snapTimer) = 0;
  v4 = OBJC_IVAR____TtC7Measure11ReticleView_snapTimestamp;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC7Measure11ReticleView__frameState;
  KeyPath = swift_getKeyPath();
  v8 = sub_10000F974(&qword_1004A1200, &unk_1003D5600);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v9 = qword_1004D5058;
  v10 = *(v8 + 272);
  swift_retain_n();
  *(v1 + v6) = v10(KeyPath, v9);
  v11 = OBJC_IVAR____TtC7Measure11ReticleView__input;
  v12 = swift_getKeyPath();
  v13 = sub_10000F974(&unk_1004A72D0, &qword_1003D5850);
  *(v1 + v11) = (*(v13 + 272))(v12, v9);
  v14 = (v1 + OBJC_IVAR____TtC7Measure11ReticleView_currentReticleTransform);
  v14[2] = 0u;
  v14[3] = 0u;
  *v14 = 0u;
  v14[1] = 0u;
  *(v1 + OBJC_IVAR____TtC7Measure11ReticleView__orientation) = 0;
  v15 = OBJC_IVAR____TtC7Measure11ReticleView_reticleBoundsLayer;
  *(v1 + v15) = [objc_allocWithZone(CATransformLayer) init];
  v16 = OBJC_IVAR____TtC7Measure11ReticleView_reticleParentLayer;
  *(v1 + v16) = [objc_allocWithZone(CATransformLayer) init];
  v17 = OBJC_IVAR____TtC7Measure11ReticleView_reticleShapeLayer;
  *(v1 + v17) = [objc_allocWithZone(CAShapeLayer) init];
  v18 = OBJC_IVAR____TtC7Measure11ReticleView_snapPointLayer;
  *(v1 + v18) = [objc_allocWithZone(CAShapeLayer) init];
  v19 = OBJC_IVAR____TtC7Measure11ReticleView_snapPointContainer;
  *(v1 + v19) = [objc_allocWithZone(CALayer) init];
  *(v1 + OBJC_IVAR____TtC7Measure11ReticleView_isGoingActive) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure11ReticleView_transformChangeDuration) = 0x3FB999999999999ALL;
  *(v1 + OBJC_IVAR____TtC7Measure11ReticleView_transformChangeDurationAfterIdle) = 0x3FC999999999999ALL;
  v20 = v1 + OBJC_IVAR____TtC7Measure11ReticleView_searchArea;
  *v20 = 0;
  *(v20 + 8) = 1106247680;
  v21 = OBJC_IVAR____TtC7Measure11ReticleView_reticleBackingView;
  *(v1 + v21) = [objc_allocWithZone(type metadata accessor for TransformLayerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC7Measure11ReticleView_animatingProperties) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure11ReticleView_animator) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_10017EA14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10017EA2C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_10017EA80()
{

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_10017EBA0()
{

  return _swift_deallocObject(v0, 152, 7);
}

void sub_10017EC30(uint64_t a1)
{
  v52 = type metadata accessor for UUID();
  v3 = *(v52 - 8);
  *&v4 = __chkstk_darwin(v52).n128_u64[0];
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v1 + OBJC_IVAR____TtC7Measure18SceneDebugObserver_sceneView);
  v6 = [v53 session];
  v7 = [v6 currentFrame];

  if (!v7)
  {
    return;
  }

  v47 = a1;
  v8 = objc_opt_self();
  [v8 lock];
  v9 = _swiftEmptyArrayStorage;
  v56 = _swiftEmptyArrayStorage;
  v10 = [objc_opt_self() standardUserDefaults];
  Defaults.drawDebugPlanes.unsafeMutableAddressor();

  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 BOOLForKey:v11];

  v13 = &off_100494000;
  if ((v12 & 1) == 0)
  {
    v14 = [v7 anchors];
    sub_100018630(0, &unk_1004A8730, ARAnchor_ptr);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v15 >> 62)
    {
      goto LABEL_42;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v45 = v8;
      v46 = v7;
      if (i < 1)
      {
        goto LABEL_56;
      }

      v8 = 0;
      v17 = 0;
      v54 = v15 & 0xC000000000000001;
      v50 = v3 + 1;
      v48 = _swiftEmptyArrayStorage;
      v49 = i;
      while (1)
      {
        if (v54)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v19 = *(v15 + 8 * v17 + 32);
        }

        v20 = v19;
        objc_opt_self();
        v21 = swift_dynamicCastObjCClass();
        if (!v21)
        {
          v18 = v20;
          goto LABEL_8;
        }

        v3 = v21;
        v9 = v13;
        v22 = [v53 v13[39]];
        v7 = [v22 rootNode];

        strcpy(v55, "arkit_plane_");
        HIBYTE(v55[6]) = 0;
        v55[7] = -5120;
        v23 = [v3 identifier];
        v24 = v51;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v25 = UUID.uuidString.getter();
        v27 = v26;
        (*v50)(v24, v52);
        v28._countAndFlagsBits = v25;
        v28._object = v27;
        String.append(_:)(v28);

        v29 = String._bridgeToObjectiveC()();

        v18 = [v7 childNodeWithName:v29 recursively:0];

        if (!v18)
        {
          v18 = v20;
          v13 = v9;
          goto LABEL_32;
        }

        if (qword_1004A0118 != -1)
        {
          swift_once();
        }

        v30 = qword_1004D4A80;
        v13 = v9;
        if (qword_1004D4A80 >> 62)
        {
          break;
        }

        v31 = *((qword_1004D4A80 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v31)
        {
          goto LABEL_37;
        }

LABEL_19:
        if (v8 == 0x8000000000000000 && v31 == -1)
        {
          goto LABEL_41;
        }

        v32 = v8 % v31;
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v32 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v33 = *(v30 + 8 * v32 + 32);
        }

        v7 = v33;
        v34 = sub_100050194(v33);

        if (!v34)
        {

LABEL_32:
          i = v49;
LABEL_8:

          goto LABEL_9;
        }

        [v18 addChildNode:v34];
        v3 = v34;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v7 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        if (__OFADD__(v8++, 1))
        {
          goto LABEL_40;
        }

        v48 = v56;
        i = v49;
LABEL_9:
        if (i == ++v17)
        {

          v8 = v45;
          v7 = v46;
          v9 = v48;
          goto LABEL_44;
        }
      }

      v31 = _CocoaArrayWrapper.endIndex.getter();
      if (v31)
      {
        goto LABEL_19;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      ;
    }
  }

LABEL_44:
  v36 = [v53 v13[39]];
  URL._bridgeToObjectiveC()(v37);
  v39 = v38;
  [v36 writeToURL:v38 options:0 delegate:0 progressHandler:0];

  if (v9 >> 62)
  {
    v40 = _CocoaArrayWrapper.endIndex.getter();
    if (v40)
    {
      goto LABEL_46;
    }

LABEL_53:

    [v8 unlock];

    return;
  }

  v40 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v40)
  {
    goto LABEL_53;
  }

LABEL_46:
  if (v40 >= 1)
  {
    for (j = 0; j != v40; ++j)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v42 = v9[j + 4];
      }

      v43 = v42;
      [(__objc2_prot *)v42 removeFromParentNode];
    }

    goto LABEL_53;
  }

  __break(1u);
LABEL_56:
  __break(1u);
}

char *sub_10017F280(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7Measure18SceneDebugObserver_keys;
  sub_10000F974(&qword_1004A3DB8, &qword_1003D7F30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1003D5720;
  v6 = Defaults.showStatistics.unsafeMutableAddressor();
  v8 = *v6;
  v7 = v6[1];
  *(v5 + 32) = v8;
  *(v5 + 40) = v7;

  v9 = Defaults.showFeaturePoints.unsafeMutableAddressor();
  v11 = *v9;
  v10 = v9[1];
  *(v5 + 48) = v11;
  *(v5 + 56) = v10;

  v12 = Defaults.exportSceneFilePath.unsafeMutableAddressor();
  v14 = *v12;
  v13 = v12[1];
  *(v5 + 64) = v14;
  *(v5 + 72) = v13;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC7Measure18SceneDebugObserver_sceneView] = a1;
  v19.receiver = v1;
  v19.super_class = ObjectType;

  v15 = a1;
  v16 = objc_msgSendSuper2(&v19, "init");
  sub_100018630(0, &unk_1004A7540, NSUserDefaults_ptr);
  v17 = v16;

  static NSUserDefaults.observe(observer:keys:)();

  return v17;
}

void sub_10017F590(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = Defaults.showStatistics.unsafeMutableAddressor();
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v11 = *(v2 + OBJC_IVAR____TtC7Measure18SceneDebugObserver_sceneView);
      v12 = [objc_opt_self() standardUserDefaults];
      v13 = String._bridgeToObjectiveC()();
      v14 = [v12 BOOLForKey:v13];

      [v11 setShowsStatistics:v14];
    }

    else
    {
      v15 = Defaults.showFeaturePoints.unsafeMutableAddressor();
      if (*v15 == a1 && v15[1] == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100018630(0, &unk_1004A7540, NSUserDefaults_ptr);
        v16 = *(v2 + OBJC_IVAR____TtC7Measure18SceneDebugObserver_sceneView);
        v24[1] = ARSCNDebugOptionShowFeaturePoints;
        v24[0] = [v16 debugOptions];
        type metadata accessor for SCNDebugOptions(0);
        sub_10017F974(&qword_1004AC9F0, type metadata accessor for SCNDebugOptions, &unk_1003D4E08);
        static NSUserDefaults.update<A>(_:key:feature:)();
        [v16 setDebugOptions:v24[0]];
      }

      else
      {
        v17 = Defaults.exportSceneFilePath.unsafeMutableAddressor();
        if (*v17 == a1 && v17[1] == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v18 = objc_opt_self();
          v19 = [v18 standardUserDefaults];

          v20 = String._bridgeToObjectiveC()();

          v21 = [v19 stringForKey:v20];

          if (v21)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            URL.init(fileURLWithPath:)();

            sub_10017EC30(v8);
            (*(v6 + 8))(v8, v5);
            v22 = [v18 standardUserDefaults];

            v23 = String._bridgeToObjectiveC()();

            [v22 removeObjectForKey:v23];
          }
        }
      }
    }
  }
}

uint64_t sub_10017F974(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10017F9CC(uint64_t a1)
{
  v2 = sub_100028DB8();

  return Context.description.getter(a1, v2);
}

unint64_t sub_10017FA08(uint64_t a1)
{
  result = sub_10017FA30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10017FA30()
{
  result = qword_1004AC9F8;
  if (!qword_1004AC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC9F8);
  }

  return result;
}

uint64_t sub_10017FA84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10017FAF8()
{
  v1 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = qword_1004ACA08;
  swift_beginAccess();
  sub_100085F70(v0 + v4, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v7 = sub_10000F974(&qword_1004A9310, &unk_1003DCB60);
      sub_1000223C4(*&v3[*(v7 + 64)], *&v3[*(v7 + 64) + 8]);
      v8 = type metadata accessor for URL();
      (*(*(v8 - 8) + 8))(v3, v8);
LABEL_8:
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v11) = 0;
      goto LABEL_11;
    }

LABEL_7:
    sub_100085FD4(v3);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_100085FD4(v3);
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = 2;
  }

  HIBYTE(v11) = v6;
LABEL_11:
  v9 = v0;
  return static Published.subscript.setter();
}

void sub_10017FCC0(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v72 = a1;
  v9 = type metadata accessor for URL();
  __chkstk_darwin(v9 - 8);
  v69 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000F974(&qword_1004ACE48, &qword_1003E06A8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v67 - v13;
  v15 = qword_1004ACA00;
  v73 = 2;
  Published.init(initialValue:)();
  (*(v12 + 32))(&v5[v15], v14, v11);
  type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  swift_storeEnumTagMultiPayload();
  v16 = qword_1004ACA10;
  sub_10000F974(&qword_1004ACE50, &qword_1003E06B0);
  swift_getKeyPath();
  v71 = type metadata accessor for DebugSessionCoordinator(0);
  *&v5[v16] = MutableStateValue.__allocating_init(_:_:)();
  v68 = qword_1004ACA18;
  *&v5[qword_1004ACA18] = 0;
  v70 = qword_1004ACA20;
  *&v5[qword_1004ACA20] = 0;
  v17 = qword_1004ACA28;
  *&v5[qword_1004ACA28] = 0;
  *&v5[qword_1004ACA30] = 0;
  v18 = &qword_1004D4000;
  *&v5[qword_1004D4F68] = 0;
  v5[qword_1004D4F70] = 0;
  v5[qword_1004D4F78] = 0;
  v19 = &v5[qword_1004ACA38];
  *v19 = a3;
  v19[1] = a4;

  v20 = v72;
  [v20 frame];
  v25 = [objc_allocWithZone(type metadata accessor for RecordingView()) initWithFrame:{v21, v22, v23, v24}];
  v26 = *&v5[v17];
  *&v5[v17] = v25;
  v27 = v25;

  if (!v27)
  {
    __break(1u);
    goto LABEL_23;
  }

  [v27 setHidden:1];

  v28 = [a2 view];
  if (!v28)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!*&v5[v17])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = v28;
  [v28 addSubview:?];

  if ([objc_opt_self() internalInstall])
  {
    v72 = v20;
    v30 = [objc_opt_self() standardUserDefaults];
    v31 = [v30 kHideTapToRadar];

    if (v31)
    {
      v20 = v72;
      goto LABEL_7;
    }

    v39 = v72;
    [v72 frame];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v48 = [objc_allocWithZone(type metadata accessor for TapToRadarView()) initWithFrame:{v41, v43, v45, v47}];
    v49 = *&v5[v70];
    *&v5[v70] = v48;
    v50 = v48;

    v51 = *&a2[qword_1004AF9A8];
    if (v51)
    {
      if (v50)
      {
        v67[1] = a4;
        v52 = v51;
        [v52 addSubview:v50];

        v53 = *&v5[v70];
        type metadata accessor for TapToRadarController(0);
        v54 = swift_allocObject();
        KeyPath = swift_getKeyPath();
        v56 = sub_10000F974(&qword_1004A11F8, &qword_1003D55D0);
        v57 = qword_1004A04D8;
        v58 = v53;
        if (v57 != -1)
        {
          swift_once();
        }

        v59 = qword_1004D5058;
        v60 = *(v56 + 272);

        *(v54 + 64) = v60(KeyPath, v59);
        *(v54 + 72) = v53;
        v74 = &type metadata for Configurations.Default;
        v75 = &protocol witness table for Configurations.Default;
        v61 = v58;
        v62 = StateObserver.init(configuration:)();
        v63 = *(v62 + 72);
        if (v63)
        {
          *(v63 + OBJC_IVAR____TtC7Measure14TapToRadarView_delegate + 8) = &off_100471CF0;
          swift_unknownObjectWeakAssign();
        }

        sub_1001AF504();

        v64 = v68;
        *&v5[v68] = v62;

        v32 = v71;
        v65 = *&v5[v70];
        v18 = &qword_1004D4000;
        v20 = v72;
        if (v65)
        {
          if (*&v5[v64])
          {
            v66 = &off_100471CF0;
          }

          else
          {
            v66 = 0;
          }

          *(v65 + OBJC_IVAR____TtC7Measure14TapToRadarView_delegate + 8) = v66;
          swift_unknownObjectWeakAssign();
        }

        goto LABEL_8;
      }

LABEL_26:
      __break(1u);
      return;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_7:

  v32 = v71;
LABEL_8:
  v76.receiver = v5;
  v76.super_class = v32;
  v33 = objc_msgSendSuper2(&v76, "init");
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 standardUserDefaults];
  LODWORD(v34) = [v36 kShouldReportMeasurements];

  if (v34)
  {
    type metadata accessor for ResultsReporter(0);
    v37 = v69;
    sub_1000CD58C();
    swift_allocObject();
    v38 = sub_1000CCB74(v37);

    *&v35[v18[493]] = v38;
  }

  else
  {
  }
}

void sub_10018031C()
{
  v1 = objc_allocWithZone(v0);
  Published.init(initialValue:)();
  type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  swift_storeEnumTagMultiPayload();
  sub_10000F974(&qword_1004ACE50, &qword_1003E06B0);
  swift_getKeyPath();
  MutableStateValue.__allocating_init(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100180400(void *a1)
{
  v22 = a1;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v6);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = qword_1004ACA08;
  swift_beginAccess();
  sub_100085F70(v1 + v9, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v13 = sub_10000F974(&qword_1004A9310, &unk_1003DCB60);
      v14 = (v8 + *(v13 + 64));
      v15 = *v14;
      v16 = v14[1];
      v17 = *(v8 + *(v13 + 48));
      (*(v3 + 32))(v5, v8, v2);
      v18 = sub_100180C7C(v22, v5, v17, v15, v16);
      v19 = sub_1000223C4(v15, v16);
      (*(v3 + 8))(v5, v2, v19);
      return v18;
    }

    v11 = *v8;
    if (*(*v8 + OBJC_IVAR____TtC7Measure15SessionRecorder_state))
    {
      v12 = sub_1000E13E4(v22);
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_100085FD4(v8);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v11 = *v8;
    if (*(*v8 + qword_1004A6B88))
    {
      v12 = sub_1000A6418(v22);
LABEL_11:
      v18 = v12;

      return v18;
    }

LABEL_13:
  }

  v21 = v22;

  return v21;
}

double sub_100180670()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  URL.path.getter();
  URL.init(fileURLWithPath:isDirectory:)();

  URL.appendingPathExtension(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  (*(v3 + 16))(v5, v8, v2);
  type metadata accessor for ResultsReporter(0);
  swift_allocObject();
  v10 = sub_1000CCB74(v5);
  v9(v8, v2);
  *(v1 + qword_1004D4F68) = v10;

  return result;
}

double sub_100180810()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  NSUserDefaults.recordReplayOption.unsafeMutableAddressor();
  RecordReplayOption.replayFile.getter();
  URL.path.getter();
  v12 = *(v3 + 8);
  v12(v8, v2);
  URL.init(fileURLWithPath:isDirectory:)();

  URL.appendingPathExtension(_:)();
  v12(v5, v2);
  (*(v3 + 16))(v8, v11, v2);
  type metadata accessor for ResultsReporter(0);
  swift_allocObject();
  v13 = sub_1000CCB74(v8);
  v12(v11, v2);
  *(v1 + qword_1004D4F68) = v13;

  return result;
}

id sub_100180A08(void *a1)
{
  v3 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v3);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = [v6 kShouldReportMeasurements];

  if (v7)
  {
    sub_100180810();
  }

  v8 = [objc_allocWithZone(type metadata accessor for SessionSimulator(0)) init];
  *v5 = v8;
  swift_storeEnumTagMultiPayload();
  v9 = qword_1004ACA08;
  swift_beginAccess();
  v10 = v8;
  sub_10018243C(v5, v1 + v9);
  swift_endAccess();
  sub_10017FAF8();
  sub_100085FD4(v5);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = sub_1000A5EFC(a1, sub_100182574, v11);

  return v12;
}

void sub_100180BA8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_opt_self() defaultCenter];
    if (qword_1004A03A8 != -1)
    {
      swift_once();
    }

    [v3 postNotificationName:qword_1004D4F60 object:0];

    v2[qword_1004D4F78] = 1;
  }
}

id sub_100180C7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v70 = a1;
  v10 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v10);
  v69 = (&v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for URL();
  v72 = *(v12 - 8);
  v73 = v12;
  __chkstk_darwin(v12);
  v65 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v64 - v15;
  __chkstk_darwin(v17);
  v19 = &v64 - v18;
  sub_100181930(1);
  sub_100181958(0);
  static RecordReplayOption.insertTimestamp(to:)();
  v20 = [objc_opt_self() defaultManager];
  URL.deletingLastPathComponent()();
  URL.path.getter();
  v21 = String._bridgeToObjectiveC()();

  v22 = [v20 fileExistsAtPath:v21];

  v71 = v20;
  if ((v22 & 1) == 0)
  {
    URL._bridgeToObjectiveC()(v23);
    v25 = v24;
    aBlock._countAndFlagsBits = 0;
    v26 = [v20 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:&aBlock];

    if (v26)
    {
      v27 = aBlock._countAndFlagsBits;
    }

    else
    {
      v66 = a3;
      v67 = a4;
      v68 = a5;
      v28 = aBlock._countAndFlagsBits;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1004A0270 != -1)
      {
        swift_once();
      }

      aBlock._countAndFlagsBits = 0;
      aBlock._object = 0xE000000000000000;
      _StringGuts.grow(_:)(44);

      aBlock._countAndFlagsBits = 0xD00000000000001BLL;
      aBlock._object = 0x800000010040AED0;
      sub_10018252C(&qword_1004ACE58, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);

      v30._countAndFlagsBits = 0x63657220726F6620;
      v30._object = 0xEF2E676E6964726FLL;
      String.append(_:)(v30);
      Log.error(_:isPrivate:)(aBlock, 0);

      a4 = v67;
      a5 = v68;
      a3 = v66;
      v20 = v71;
    }
  }

  URL.path.getter();
  v31 = String._bridgeToObjectiveC()();

  v32 = [v20 isWritableFileAtPath:v31];

  p_prots = (&OBJC_PROTOCOL___RPScreenRecorderDelegate + 16);
  v34 = &qword_1004D4000;
  if (v32)
  {
    goto LABEL_15;
  }

  v64 = v10;
  v66 = a3;
  v68 = a5;
  if (qword_1004A0270 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v67 = a4;
    aBlock._countAndFlagsBits = 0;
    aBlock._object = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v35._countAndFlagsBits = 0x6620746567726154;
    v35._object = 0xEE00207265646C6FLL;
    String.append(_:)(v35);
    v36._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v36);

    v37._countAndFlagsBits = 0xD000000000000021;
    v37._object = 0x800000010040AEF0;
    String.append(_:)(v37);
    if (qword_1004A01D8 != -1)
    {
      swift_once();
    }

    v38 = v73;
    sub_10001D4C4(v73, qword_1004D4B88);
    v39._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v39);

    Log.error(_:isPrivate:)(aBlock, 0);

    URL.lastPathComponent.getter();
    v40 = v65;
    URL.appendingPathComponent(_:)();

    v41 = v72;
    (*(v72 + 8))(v19, v38);
    (*(v41 + 32))(v19, v40, v38);
    [objc_opt_self() removeCachedObjectForKey:ARSessionRecordingFilePathDefaultsKey];
    aBlock._countAndFlagsBits = 0;
    aBlock._object = 0xE000000000000000;
    _StringGuts.grow(_:)(63);
    v42._object = 0x800000010040AF20;
    v42._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v42);
    v43._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v43);

    v44._countAndFlagsBits = 0xD000000000000026;
    v44._object = 0x800000010040AF40;
    String.append(_:)(v44);
    v45._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v45);

    v46 = String._bridgeToObjectiveC()();
    v47 = String._bridgeToObjectiveC()();

    v48 = [objc_opt_self() alertControllerWithTitle:v46 message:v47 preferredStyle:1];

    v49 = String._bridgeToObjectiveC()();
    v77 = nullsub_1;
    v78 = 0;
    aBlock._countAndFlagsBits = _NSConcreteStackBlock;
    aBlock._object = 1107296256;
    v75 = sub_1000508F8;
    v76 = &unk_100470D98;
    v50 = _Block_copy(&aBlock);

    v51 = [objc_opt_self() actionWithTitle:v49 style:0 handler:v50];
    _Block_release(v50);

    [v48 addAction:v51];
    p_prots = &OBJC_PROTOCOL___RPScreenRecorderDelegate.prots;
    if (qword_1004A0180 != -1)
    {
      swift_once();
    }

    v34 = &qword_1004D4000;
    result = *(&xmmword_1004D4AB8 + 1);
    a4 = v67;
    a5 = v68;
    LOBYTE(a3) = v66;
    if (!*(&xmmword_1004D4AB8 + 1))
    {
      break;
    }

    [*(&xmmword_1004D4AB8 + 1) presentViewController:v48 animated:1 completion:0];

LABEL_15:
    sub_100180670();
    if (p_prots[48] == -1)
    {
      v53 = v34[344];
      if (v53)
      {
        goto LABEL_17;
      }
    }

    else
    {
      swift_once();
      v53 = v34[344];
      if (v53)
      {
LABEL_17:
        v54 = objc_allocWithZone(type metadata accessor for SessionRecorder());
        v55 = sub_1000E0D5C(v53);
        v56 = v69;
        *v69 = v55;
        swift_storeEnumTagMultiPayload();
        v57 = qword_1004ACA08;
        swift_beginAccess();
        v58 = v55;
        sub_10018243C(v56, v6 + v57);
        swift_endAccess();
        sub_10017FAF8();
        sub_100085FD4(v56);
        v59 = URL.path.getter();
        v61 = sub_1000E0E18(v70, v59, v60, a3, a4, a5);

        v62 = v73;
        v63 = *(v72 + 8);
        v63(v16, v73);
        v63(v19, v62);
        return v61;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  __break(1u);
  return result;
}

void sub_1001815F0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v16[-v9];
  v11 = qword_1004ACA08;
  swift_beginAccess();
  sub_100085F70(v2 + v11, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v10;
    *v7 = v12;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v13 = v12;
    sub_10018243C(v7, v2 + v11);
    swift_endAccess();
    sub_10017FAF8();
    sub_100085FD4(v7);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a1;
    v15[4] = a2;

    sub_100038EBC(a1, a2);
    sub_1000E166C(sub_100182520, v15);
  }

  else
  {
    sub_100085FD4(v10);
  }
}

void sub_1001817C8(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v3);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_storeEnumTagMultiPayload();
    v8 = qword_1004ACA08;
    swift_beginAccess();
    sub_10018243C(v5, &v7[v8]);
    swift_endAccess();
    sub_10017FAF8();
    sub_100085FD4(v5);
    v9 = qword_1004D4F70;
    v7[qword_1004D4F70] = 1;
    sub_100181930(0);
    sub_100181958(1);
    v10 = *&v7[qword_1004ACA38];

    v10(v11);

    v7[v9] = 1;
    if (a2)
    {
      a2(v12);
    }
  }
}

uint64_t sub_100181980(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D9B4();
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = a1;
  aBlock[4] = v19;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = v20;
  v15 = _Block_copy(aBlock);
  v16 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10018252C(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v21);
}

double sub_100181C60()
{
  v1 = qword_1004ACA00;
  v2 = sub_10000F974(&qword_1004ACE48, &qword_1003E06A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100085FD4(v0 + qword_1004ACA08);

  return result;
}

id sub_100181D58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugSessionCoordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100181D90(uint64_t a1)
{
  v2 = qword_1004ACA00;
  v3 = sub_10000F974(&qword_1004ACE48, &qword_1003E06A8);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  sub_100085FD4(a1 + qword_1004ACA08);

  return result;
}

void sub_100181EAC(uint64_t a1)
{
  sub_100181FAC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DebugSessionCoordinator.RecordReplayState(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_100181FAC()
{
  if (!qword_1004ACA78)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1004ACA78);
    }
  }
}

void sub_100182074(uint64_t a1)
{
  sub_100182134(319);
  if (v1 <= 0x3F)
  {
    sub_1001821BC(319, &qword_1004ACE08, type metadata accessor for SessionRecorder);
    if (v2 <= 0x3F)
    {
      sub_1001821BC(319, &unk_1004ACE10, type metadata accessor for SessionSimulator);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100182134(uint64_t a1)
{
  if (!qword_1004ACDF8)
  {
    type metadata accessor for URL();
    sub_100013BB0(&qword_1004ACE00, &qword_1003E05D8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1004ACDF8);
    }
  }
}

void sub_1001821BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10018221C()
{
  result = qword_1004ACE40;
  if (!qword_1004ACE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACE40);
  }

  return result;
}

NSString sub_100182270()
{
  result = String._bridgeToObjectiveC()();
  qword_1004D4F60 = result;
  return result;
}

void sub_1001822AC(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100182330(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1001823A8()
{

  return _swift_deallocObject(v0, 25, 7);
}

double sub_1001823EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_100182410(void *a1)
{
  result = *(*(v1 + 16) + *a1);
  if (result)
  {
    return [result setHidden:(*(v1 + 24) & 1) == 0];
  }

  return result;
}

uint64_t sub_10018243C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001824A0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_1001824D8()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10018252C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100182594()
{
  v1 = OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___rayNode;
  v2 = *(v0 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___rayNode);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___rayNode);
  }

  else
  {
    v4 = sub_1001825F4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1001825F4()
{
  v1 = v0;
  v2 = [objc_opt_self() boxWithWidth:0.0003 height:0.0003 length:3.0 chamferRadius:0.0];
  v3 = [v2 materials];
  sub_100018630(0, &qword_1004AF720, SCNMaterial_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    goto LABEL_9;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_6:
    v7 = v6;

    v8 = [v7 diffuse];

    sub_100018630(0, &qword_1004A2930, UIColor_ptr);
    isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.14913, 0.0, 1.0).super.isa;
    [v8 setContents:isa];

LABEL_9:
    v10 = [objc_opt_self() nodeWithGeometry:v2];

    v11 = String._bridgeToObjectiveC()();
    [v10 setName:v11];

    [v10 position];
    [v10 setPosition:?];
    [v10 setHidden:1];
    v12 = [objc_allocWithZone(SCNNode) init];
    v13 = String._bridgeToObjectiveC()();
    [v12 setName:v13];

    [v12 addChildNode:v10];
    v14 = objc_opt_self();
    [v14 begin];
    [v1 addChildNode:v12];
    [v14 commit];

    return v12;
  }

  __break(1u);
  return result;
}

id sub_1001828C4(id a1)
{
  v3 = objc_opt_self();
  v4 = [v3 boxWithWidth:0.001 height:0.2 length:0.001 chamferRadius:0.0];
  v5 = [v4 materials];
  sub_100018630(0, &qword_1004AF720, SCNMaterial_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = &off_100494000;
  v29 = a1;
  if (v7)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_30;
      }

      v9 = *(v6 + 32);
    }

    v10 = v9;

    v11 = [v10 diffuse];
    [v11 setContents:a1];
  }

  else
  {
  }

  v5 = objc_opt_self();
  v6 = [v5 nodeWithGeometry:v4];

  v12 = String._bridgeToObjectiveC()();
  [v6 setName:v12];

  [v6 position];
  [v6 setPosition:?];
  v8 = [objc_opt_self() sphereWithRadius:0.01];
  v13 = [v8 materials];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v28 = v1;
    if (result)
    {
      goto LABEL_11;
    }

LABEL_17:

    goto LABEL_18;
  }

  result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v28 = v1;
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v16 = *(v14 + 32);
  }

  v17 = v16;

  v18 = [v17 diffuse];

  [v18 setContents:v29];
LABEL_18:
  a1 = [v5 nodeWithGeometry:{v8, v28}];

  v19 = String._bridgeToObjectiveC()();
  [a1 setName:v19];

  v1 = &selRef_setFrame_;
  [a1 setHidden:1];
  [a1 setOpacity:0.75];
  v3 = [v3 boxWithWidth:0.1 height:0.001 length:0.1 chamferRadius:0.0];
  v20 = [v3 materials];
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v21 >> 62))
  {
    result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_20;
    }

LABEL_25:

    goto LABEL_26;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((v21 & 0xC000000000000001) != 0)
  {
LABEL_30:
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_23;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v21 + 32);
LABEL_23:
    v23 = v22;

    v24 = [v23 diffuse];
    [v24 setContents:v29];

    [v23 setBlendMode:4];
LABEL_26:
    v25 = [v5 nodeWithGeometry:v3];

    v26 = String._bridgeToObjectiveC()();
    [v25 setName:v26];

    [v25 v1[1]];
    [v25 addChildNode:v6];
    [v25 addChildNode:a1];
    [v25 setOpacity:0.75];
    [v27 addChildNode:v25];

    return v25;
  }

LABEL_32:
  __break(1u);
  return result;
}

id sub_100182E3C(uint64_t *a1, Swift::Float a2, Swift::Float a3, Swift::Float a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v8 = v4;
    sub_100018630(0, &qword_1004A2930, UIColor_ptr);
    isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(a2, a3, a4, 1.0).super.isa;
    v13 = sub_1001828C4(isa);

    v14 = *(v8 + v5);
    *(v8 + v5) = v13;
    v7 = v13;

    v6 = 0;
  }

  v15 = v6;
  return v7;
}

id sub_100182F2C(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___rayNode;
  *&v3[OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___rayNode] = 0;
  v6 = OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___arKitNode;
  *&v3[OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___arKitNode] = 0;
  v7 = OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___mlNode;
  *&v3[OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___mlNode] = 0;
  v8 = OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___lpNode;
  *&v3[OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___lpNode] = 0;
  v9 = OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___fallbackNode;
  *&v3[OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___fallbackNode] = 0;
  v10 = OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___previousNode;
  *&v3[OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___previousNode] = 0;
  v11 = OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___patchNode;
  *&v3[OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___patchNode] = 0;
  v12 = OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___adNode;
  *&v3[OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___adNode] = 0;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    *&v3[OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger_sceneView] = v13;
    *&v3[OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger_planeSelector] = a3;
    v25.receiver = v3;
    v25.super_class = ObjectType;
    v14 = v13;
    v15 = a1;

    v16 = objc_msgSendSuper2(&v25, "init");
    v17 = String._bridgeToObjectiveC()();
    [v16 setName:v17];

    v18 = PlaneSelector.debugOptions.getter();
    [v16 setHidden:(*PlaneSelector.DebugOptions.showHitPoints.unsafeMutableAddressor() & ~v18) != 0];

    v19 = objc_opt_self();
    [v19 begin];
    v20 = [v14 scene];
    v21 = [v20 rootNode];

    [v21 addChildNode:v16];
    [v19 commit];
    sub_100018630(0, &unk_1004A7540, NSUserDefaults_ptr);
    PlaneSelector.DebugOptions.keys.unsafeMutableAddressor();

    static NSUserDefaults.observe(observer:keys:)();
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v16;
}

void sub_100183318(double a1)
{
  v2 = v1;
  ARFrame.getHitRay(cameraPoint:)();
  v6 = v3;
  v4 = sub_100182594();
  [v4 setHidden:0];

  v5 = OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___rayNode;
  [*(v2 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___rayNode) setSimdWorldPosition:v6];
  v7 = *(v2 + v5);
  SCNNode.setForwardDirection(direction:)();
}

void sub_1001833B4(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v9 = a5[5];
  v93 = a5[4];
  v94 = v9;
  v95 = a5[6];
  v96 = *(a5 + 28);
  v10 = a5[1];
  v89 = *a5;
  v90 = v10;
  v11 = a5[3];
  v91 = a5[2];
  v92 = v11;
  v12 = *a4;
  v13 = a4[1];
  v14 = a4[3];
  v99 = a4[2];
  v100 = v14;
  v97 = v12;
  v98 = v13;
  v15 = a4[4];
  v16 = a4[5];
  v17 = a4[6];
  v104 = *(a4 + 28);
  v102 = v16;
  v103 = v17;
  v101 = v15;
  v18 = *a3;
  v19 = a3[1];
  v20 = a3[3];
  v107 = a3[2];
  v108 = v20;
  v105 = v18;
  v106 = v19;
  v21 = a3[4];
  v22 = a3[5];
  v23 = a3[6];
  v112 = *(a3 + 28);
  v110 = v22;
  v111 = v23;
  v109 = v21;
  v24 = *a2;
  v25 = a2[1];
  v26 = a2[3];
  v115 = a2[2];
  v116 = v26;
  v113 = v24;
  v114 = v25;
  v27 = a2[4];
  v28 = a2[5];
  v29 = a2[6];
  v120 = *(a2 + 28);
  v118 = v28;
  v119 = v29;
  v117 = v27;
  v30 = *a1;
  v31 = a1[1];
  v32 = a1[3];
  v123 = a1[2];
  v124 = v32;
  v121 = v30;
  v122 = v31;
  v33 = a1[4];
  v34 = a1[5];
  v35 = a1[6];
  v128 = *(a1 + 28);
  v126 = v34;
  v127 = v35;
  v125 = v33;
  v36 = sub_100182E3C(&OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___lpNode, 0.21961, 0.0078431, 0.8549);
  v37 = v36;
  if (*(a1 + 13))
  {
    v67 = a1[2];
    v72 = a1[1];
    v59 = a1[4];
    v62 = a1[3];
    v85 = v125;
    v86 = v126;
    v87 = v127;
    v88 = v128;
    v81 = v121;
    v82 = v122;
    v83 = v123;
    v84 = v124;
    sub_100103724(&v81, v80);
    [v37 setSimdWorldTransform:{*&v72, *&v67, *&v62, *&v59}];
    [v37 setHidden:0];
    [v37 setRenderingOrder:1];
    v38 = String._bridgeToObjectiveC()();
    v39 = [v37 childNodeWithName:v38 recursively:0];

    if (v39)
    {
      [v39 setHidden:1];

      sub_100018F04(a1, &qword_1004A3E20, &unk_1003D7890);
    }

    else
    {

      sub_100018F04(a1, &qword_1004A3E20, &unk_1003D7890);
    }
  }

  else
  {
    [v36 setHidden:1];
    [v37 setRenderingOrder:1];
  }

  v40 = sub_100182E3C(&OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___arKitNode, 0.80784, 0.027451, 0.33333);
  v41 = v40;
  if (*(a2 + 13))
  {
    v68 = a2[2];
    v73 = a2[1];
    v60 = a2[4];
    v63 = a2[3];
    v85 = v117;
    v86 = v118;
    v87 = v119;
    v88 = v120;
    v81 = v113;
    v82 = v114;
    v83 = v115;
    v84 = v116;
    sub_100103724(&v81, v80);
    [v41 setSimdWorldTransform:{*&v73, *&v68, *&v63, *&v60}];
    [v41 setHidden:0];
    [v41 setRenderingOrder:1];
    v42 = String._bridgeToObjectiveC()();
    v43 = &off_100494000;
    v44 = [v41 childNodeWithName:v42 recursively:0];

    if (v44)
    {
      [v44 setHidden:1];

      sub_100018F04(a2, &qword_1004A3E20, &unk_1003D7890);
    }

    else
    {

      sub_100018F04(a2, &qword_1004A3E20, &unk_1003D7890);
    }
  }

  else
  {
    [v40 setHidden:1];
    [v41 setRenderingOrder:1];

    v43 = &off_100494000;
  }

  v45 = sub_100182E3C(&OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___mlNode, 0.46667, 0.76471, 0.26667);
  v46 = v45;
  if (*(a3 + 13))
  {
    v69 = a3[2];
    v74 = a3[1];
    v61 = a3[4];
    v64 = a3[3];
    v85 = v109;
    v86 = v110;
    v87 = v111;
    v88 = v112;
    v81 = v105;
    v82 = v106;
    v83 = v107;
    v84 = v108;
    sub_100103724(&v81, v80);
    [v46 setSimdWorldTransform:{*&v74, *&v69, *&v64, *&v61}];
    [v46 setHidden:0];
    [v46 setRenderingOrder:1];
    v47 = String._bridgeToObjectiveC()();
    v48 = [v46 v43[67]];

    if (v48)
    {
      [v48 setHidden:1];

      sub_100018F04(a3, &qword_1004A3E20, &unk_1003D7890);
    }

    else
    {

      sub_100018F04(a3, &qword_1004A3E20, &unk_1003D7890);
    }
  }

  else
  {
    [v45 setHidden:1];
    [v46 setRenderingOrder:1];
  }

  v49 = sub_100182E3C(&OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___fallbackNode, 1.0, 1.0, 1.0);
  [v49 setHidden:1];
  [v49 setRenderingOrder:1];

  v50 = sub_100182E3C(&OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___previousNode, 0.0, 0.0, 0.0);
  [v50 setHidden:1];
  [v50 setRenderingOrder:1];

  v51 = sub_100182E3C(&OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___patchNode, 1.0, 0.25279, 1.0);
  v52 = v51;
  if (*(a4 + 13))
  {
    v78 = a4[1];
    v70 = a4[3];
    v75 = a4[2];
    v65 = a4[4];
    v85 = v101;
    v86 = v102;
    v87 = v103;
    v88 = v104;
    v81 = v97;
    v82 = v98;
    v83 = v99;
    v84 = v100;
    sub_100103724(&v81, v80);
    [v52 setSimdWorldTransform:{*&v78, *&v75, *&v70, *&v65}];
    [v52 setHidden:0];
    [v52 setRenderingOrder:1];
    v53 = String._bridgeToObjectiveC()();
    v54 = [v52 v43[67]];

    [v54 setHidden:1];
    sub_100018F04(a4, &qword_1004A3E20, &unk_1003D7890);
  }

  else
  {
    [v51 setHidden:1];
    [v52 setRenderingOrder:1];
  }

  v55 = sub_100182E3C(&OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___adNode, 0.0, 0.99144, 1.0);
  v56 = v55;
  if (*(a5 + 13))
  {
    v79 = a5[1];
    v71 = a5[3];
    v76 = a5[2];
    v66 = a5[4];
    v85 = v93;
    v86 = v94;
    v87 = v95;
    v88 = v96;
    v81 = v89;
    v82 = v90;
    v83 = v91;
    v84 = v92;
    sub_100103724(&v81, v80);
    [v56 setSimdWorldTransform:{*&v79, *&v76, *&v71, *&v66}];
    [v56 setHidden:0];
    [v56 setRenderingOrder:1];
    v57 = String._bridgeToObjectiveC()();
    v58 = [v56 v43[67]];

    [v58 setHidden:1];
    sub_100018F04(a5, &qword_1004A3E20, &unk_1003D7890);
  }

  else
  {
    [v55 setHidden:1];
    [v56 setRenderingOrder:1];
  }
}

void sub_100183C78(__int128 *a1)
{
  v1 = a1[5];
  v47 = a1[4];
  v48 = v1;
  v49 = a1[6];
  v50 = *(a1 + 28);
  v2 = a1[1];
  v43 = *a1;
  v44 = v2;
  v3 = a1[3];
  v45 = a1[2];
  v46 = v3;
  v4 = *(a1 + 13);
  if (v4)
  {
    v6 = *(v4 + 48);
    v32 = a1[2];
    v33 = a1[1];
    v30 = a1[4];
    v31 = a1[3];
    if (v6 > 2)
    {
      if (v6 <= 4)
      {
        v7 = a1[5];
        v39 = a1[4];
        v40 = v7;
        v41 = a1[6];
        v42 = *(a1 + 28);
        v8 = a1[1];
        v35 = *a1;
        v36 = v8;
        v9 = a1[3];
        v37 = a1[2];
        v38 = v9;
        if (v6 == 3)
        {
          sub_100103724(&v35, v34);
          v10 = &OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___lpNode;
          v11 = 0.21961;
          v12 = 0.0078431;
          v13 = 0.8549;
        }

        else
        {
          sub_100103724(&v35, v34);
          v10 = &OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___previousNode;
          v11 = 0.0;
          v12 = 0.0;
          v13 = 0.0;
        }

        goto LABEL_16;
      }

      v17 = a1[5];
      v39 = a1[4];
      v40 = v17;
      v41 = a1[6];
      v42 = *(a1 + 28);
      v18 = a1[1];
      v35 = *a1;
      v36 = v18;
      v19 = a1[3];
      v37 = a1[2];
      v38 = v19;
      if (v6 == 5)
      {
        sub_100103724(&v35, v34);
        v10 = &OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___patchNode;
        v12 = 0.25279;
        v11 = 1.0;
      }

      else
      {
        sub_100103724(&v35, v34);
        v10 = &OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___adNode;
        v12 = 0.99144;
        v11 = 0.0;
      }

      goto LABEL_15;
    }

    if (v6)
    {
      if (v6 != 1)
      {
        v23 = a1[5];
        v39 = a1[4];
        v40 = v23;
        v41 = a1[6];
        v42 = *(a1 + 28);
        v24 = a1[1];
        v35 = *a1;
        v36 = v24;
        v25 = a1[3];
        v37 = a1[2];
        v38 = v25;
        sub_100103724(&v35, v34);
        v10 = &OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___fallbackNode;
        v11 = 1.0;
        v12 = 1.0;
LABEL_15:
        v13 = 1.0;
        goto LABEL_16;
      }

      v14 = a1[5];
      v39 = a1[4];
      v40 = v14;
      v41 = a1[6];
      v42 = *(a1 + 28);
      v15 = a1[1];
      v35 = *a1;
      v36 = v15;
      v16 = a1[3];
      v37 = a1[2];
      v38 = v16;
      sub_100103724(&v35, v34);
      v10 = &OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___mlNode;
      v11 = 0.46667;
      v12 = 0.76471;
      v13 = 0.26667;
    }

    else
    {
      v20 = a1[5];
      v39 = a1[4];
      v40 = v20;
      v41 = a1[6];
      v42 = *(a1 + 28);
      v21 = a1[1];
      v35 = *a1;
      v36 = v21;
      v22 = a1[3];
      v37 = a1[2];
      v38 = v22;
      sub_100103724(&v35, v34);
      v10 = &OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___arKitNode;
      v11 = 0.80784;
      v12 = 0.027451;
      v13 = 0.33333;
    }

LABEL_16:
    v26 = sub_100182E3C(v10, v11, v12, v13);
    sub_10018427C(a1, &v35);
    sub_10018427C(a1, &v35);
    v27 = v26;
    [v27 setSimdWorldTransform:{*&v33, *&v32, *&v31, *&v30}];
    [v27 setHidden:0];
    [v27 setRenderingOrder:-1];
    v28 = String._bridgeToObjectiveC()();
    v29 = [v27 childNodeWithName:v28 recursively:0];

    [v29 setHidden:0];
    sub_100018F04(a1, &qword_1004A3E20, &unk_1003D7890);
    sub_100018F04(a1, &qword_1004A3E20, &unk_1003D7890);
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v42 = v50;
    v35 = v43;
    v36 = v44;
    v37 = v45;
    v38 = v46;
    sub_1001842EC(&v35);
  }
}

id sub_1001841C4@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = objc_allocWithZone(v3);
  result = sub_100182F2C(a1, v8, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10018427C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A3E20, &unk_1003D7890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100184340()
{
  *(v0 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___rayNode) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___arKitNode) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___mlNode) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___lpNode) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___fallbackNode) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___previousNode) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___patchNode) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure25SCNPlaneSelectionDebugger____lazy_storage___adNode) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001843FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = v2;
    v6 = PlaneSelector.DebugOptions.keyForFeature.unsafeMutableAddressor();
    v7 = *v6;
    if (*(*v6 + 16))
    {

      v8 = sub_100198230(a1, a2);
      if (v9)
      {
        v10 = *(*(v7 + 56) + 8 * v8);

        sub_100018630(0, &unk_1004A7540, NSUserDefaults_ptr);
        v13 = PlaneSelector.debugOptions.getter();
        sub_100184580();
        v11 = static NSUserDefaults.update<A>(_:key:feature:)();
        PlaneSelector.debugOptions.setter();
        if (*PlaneSelector.DebugOptions.showHitPoints.unsafeMutableAddressor() == v10)
        {
          [v3 setHidden:{(v11 & 1) == 0, v13, v10}];
        }

        else if (*PlaneSelector.DebugOptions.showHitRay.unsafeMutableAddressor() == v10)
        {
          v12 = sub_100182594();
          [v12 setHidden:{(v11 & 1) == 0, v13, v10}];
        }
      }

      else
      {
      }
    }
  }
}

unint64_t sub_100184580()
{
  result = qword_1004ACED8;
  if (!qword_1004ACED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ACED8);
  }

  return result;
}

void sub_1001845D4(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  if (a1)
  {
    [*(v2 + 16) pause];
  }

  v9 = [*(v2 + 32) layer];
  CALayer.pauseAnimations()();

  if (qword_1004A0180 != -1)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (qword_1004D4AD0)
  {
    v10 = qword_1004D4AD0;
    sub_1001815F0(0, 0);
  }

  else
  {
    __break(1u);
  }
}

void sub_10018478C(__int16 a1, __n128 a2)
{
  v7 = sub_100185018();
  if ([objc_opt_self() jasperAvailable])
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = [v3 kPersonSegmentationAlwaysOn];

    if ((v4 & 1) != 0 || *NSUserDefaults.recordReplayOption.unsafeMutableAddressor() - 1 <= 3)
    {
      v5 = [v7 frameSemantics];
    }

    else
    {
      v5 = [v7 frameSemantics];
      if ((a1 & 0x100) == 0)
      {
        v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
        goto LABEL_6;
      }
    }

    v6 = v5 | 1;
LABEL_6:
    [v7 setFrameSemantics:v6];
  }

  sub_100184898(a1 & 1, v7);
}

void sub_100184898(char a1, void *a2)
{
  v3 = v2;
  v44 = a2;
  v5 = type metadata accessor for URL();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v8);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (&v41 - v12);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
  *v17 = static OS_dispatch_queue.main.getter();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v18 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v43 = v3;
    if (qword_1004A0260 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v45._countAndFlagsBits = 0xD000000000000014;
  v45._object = 0x800000010040B190;
  v19 = a1;
  if (a1)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (a1)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  v22 = v21;
  String.append(_:)(*&v20);

  Log.default(_:isPrivate:)(v45, 0);

  v23 = NSUserDefaults.recordReplayOption.unsafeMutableAddressor();
  if (*v23 - 1 > 1)
  {
    goto LABEL_15;
  }

  if (qword_1004A0180 != -1)
  {
    goto LABEL_37;
  }

  v24 = qword_1004D4AD0;
  if (!qword_1004D4AD0)
  {
    goto LABEL_38;
  }

LABEL_12:
  if ((*(v24 + qword_1004D4F70) & 1) == 0)
  {
    v25 = v23;
    v26 = qword_1004ACA08;
    swift_beginAccess();
    sub_100085F70(v24 + v26, v13);
    if (swift_getEnumCaseMultiPayload() - 1 >= 2)
    {
      sub_100085FD4(v13);
      if (qword_1004D4AD0)
      {
        v38 = *v25;
        v39 = qword_1004D4AD0;
        RecordReplayOption.recordFile.getter();
        v34 = sub_100180C7C(v44, v7, v38, 0, 0);

        (*(v41 + 8))(v7, v42);
        v29 = v19;
        goto LABEL_25;
      }

      goto LABEL_41;
    }

    v23 = v25;
  }

LABEL_15:
  v27 = qword_1004A0180;
  if (*v23 - 3 <= 1)
  {
    if (qword_1004A0180 != -1)
    {
      goto LABEL_39;
    }

    v28 = qword_1004D4AD0;
    if (qword_1004D4AD0)
    {
      goto LABEL_18;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  while (1)
  {
    v29 = v19;
    if (v27 != -1)
    {
      v23 = swift_once();
      v31 = qword_1004D4AD0;
      if (qword_1004D4AD0)
      {
        goto LABEL_23;
      }

      goto LABEL_36;
    }

    do
    {
      v31 = qword_1004D4AD0;
      if (qword_1004D4AD0)
      {
LABEL_23:
        v32 = v31;
        v33 = sub_100180400(v44);
        goto LABEL_24;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      v40 = v23;
      swift_once();
      v23 = v40;
      v24 = qword_1004D4AD0;
      if (qword_1004D4AD0)
      {
        goto LABEL_12;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      v23 = swift_once();
      v28 = qword_1004D4AD0;
      if (!qword_1004D4AD0)
      {
        goto LABEL_40;
      }

LABEL_18:
      v29 = v19;
    }

    while ((*(v28 + qword_1004D4F78) & 1) != 0);
    v30 = qword_1004ACA08;
    swift_beginAccess();
    sub_100085F70(v28 + v30, v10);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      break;
    }

    v27 = qword_1004A0180;
  }

  sub_100085FD4(v10);
  if (!qword_1004D4AD0)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v29 = v19;
  v32 = qword_1004D4AD0;
  v33 = sub_100180A08(v44);
LABEL_24:
  v34 = v33;

LABEL_25:
  v35 = v43;
  v36 = [*(v43 + 32) layer];
  CALayer.resumeAnimations()();

  if (v29)
  {
    *(v35 + 24) = 1;
    v37 = 3;
  }

  else
  {
    v37 = 0;
  }

  [*(v35 + 16) runWithConfiguration:v34 options:v37];
}

uint64_t sub_100184E50()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for Session.Configuration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for Session.Configuration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100185018()
{
  v0 = [objc_allocWithZone(ARWorldTrackingConfiguration) init];
  [v0 setPlaneDetection:3];
  v1 = v0;
  [v1 setLightEstimationEnabled:1];
  [v1 setMinVergenceAngle:1.5];
  [v1 setDisableOcclusionForPersonSegmentation:1];
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if ((static UIDevice.hasHWAcceleratedFeatureDetection()() & 1) == 0 && *MeasureCore.isTrackingVGAEnabled.unsafeMutableAddressor() == 1)
  {
    v2 = String._bridgeToObjectiveC()();
    [v1 setSlamConfiguration:v2];
  }

  v3 = objc_opt_self();
  [v1 setMlModelEnabled:{objc_msgSend(v3, "hasAppleNeuralEngine")}];
  if ([v3 jasperAvailable])
  {
    [v1 setFrameSemantics:8];
    [v1 setAllowCameraInMultipleForegroundAppLayout:1];
    if (static UIDevice.isIPhone()())
    {
      [v1 setLowQosSchedulingEnabled:1];
    }
  }

  if ((static UIDevice.shouldLockFramerate()() & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_100018630(0, &qword_1004A9360, ARWorldTrackingConfiguration_ptr);
  v4 = [swift_getObjCClassFromMetadata() supportedVideoFormats];
  sub_100018630(0, &qword_1004ACF90, ARVideoFormat_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 2)
    {
      goto LABEL_10;
    }

LABEL_15:

    goto LABEL_16;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < 2)
  {
    goto LABEL_15;
  }

LABEL_10:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v7 = *(v5 + 40);
LABEL_13:
    v8 = v7;

    [v1 setVideoFormat:v8];

LABEL_16:
    return v1;
  }

  __break(1u);
  return result;
}

Class sub_1001852C8(uint64_t a1)
{
  swift_beginAccess();
  sub_100018630(0, &qword_1004AD150, UIButton_ptr);

  v1.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v1.super.isa;
}

double sub_10018535C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100018630(0, &qword_1004AD150, UIButton_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = qword_1004ACFA0;
  swift_beginAccess();
  *(a1 + v5) = v4;

  return result;
}

id sub_1001853E0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[qword_1004ACF98] = 0;
  *&v4[qword_1004ACFA0] = _swiftEmptyArrayStorage;
  v11 = qword_1004ACFA8;
  v12 = objc_opt_self();
  *&v5[v11] = [v12 whiteColor];
  v13 = qword_1004ACFB0;
  *&v5[v13] = [v12 systemYellowColor];
  *&v5[qword_1004ACFB8] = 0x4042000000000000;
  *&v5[qword_1004ACFC0] = 0x4024000000000000;
  v14 = qword_1004ACFC8;
  v15 = sub_10000F974(&unk_1004AFC00, &qword_1003DCE40);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v17 = qword_1004D5058;
  v18 = *(v15 + 272);

  *&v5[v14] = v18(KeyPath, v17);
  v19 = qword_1004ACFD0;
  sub_10000F974(&qword_1004AD138, &qword_1003E07D0);
  swift_getKeyPath();
  *&v5[v19] = MutableStateValue.__allocating_init(_:_:)();
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  v21 = [v12 clearColor];
  [v20 setBackgroundColor:v21];

  v22 = [v20 layer];
  [v22 setCornerRadius:20.0];

  v23 = [v20 layer];
  [v23 setMasksToBounds:1];

  v24 = [v20 layer];
  [v24 setCornerCurve:kCACornerCurveContinuous];

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100185C4C();
  sub_1001858A8();
  v25 = [objc_opt_self() effectWithStyle:17];
  v26 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v25];
  [v20 bounds];
  [v26 setFrame:?];
  [v26 setAutoresizingMask:18];
  [v20 insertSubview:v26 atIndex:0];

  [v20 layoutIfNeeded];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:1];

  return v20;
}

double sub_1001857D8()
{

  StateValue.ifUpdated(_:)();

  return result;
}

_BYTE *sub_10018583C(_BYTE *result, char *a2)
{
  v2 = *result;
  if (!*result)
  {
    v3 = 0;
LABEL_7:
    *&a2[qword_1004ACF98] = v3;
    return [a2 updateHighlightState];
  }

  if (v2 == 1)
  {
    v3 = 1;
    goto LABEL_7;
  }

  if (v2 == 2)
  {
    v3 = 2;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1001858A8()
{
  v1 = v0;
  v2 = qword_1004ACFA0;
  swift_beginAccess();
  if (*&v1[v2] >> 62)
  {
    sub_100018630(0, &qword_1004A7550, UIView_ptr);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100018630(0, &qword_1004A7550, UIView_ptr);
  }

  v3 = objc_allocWithZone(UIStackView);
  sub_100018630(0, &qword_1004A7550, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithArrangedSubviews:isa];

  [v5 setAxis:1];
  [v5 setAlignment:0];
  [v5 setDistribution:1];
  [v5 setSpacing:0.0];
  v6 = v5;
  [v1 addSubview:v6];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v6 topAnchor];
  v8 = [v1 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:6.0];

  [v9 setActive:1];
  v10 = [v6 bottomAnchor];

  v11 = [v1 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:-6.0];

  [v12 setActive:1];
  v13 = [v6 leftAnchor];

  v14 = [v1 leftAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:10.0];

  [v15 setActive:1];
  v16 = [v6 rightAnchor];

  v17 = [v1 rightAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-10.0];

  [v18 setActive:1];
}

void sub_100185C4C()
{
  v1 = v0;
  v2 = qword_1004ACFA0;
  swift_beginAccess();
  *&v0[v2] = _swiftEmptyArrayStorage;

  v3 = [v0 subviews];
  sub_100018630(0, &qword_1004A7550, UIView_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 removeFromSuperview];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v10 = objc_opt_self();
  v12 = "changeSelectionWithSender:";
  v13 = *&v1[qword_1004ACFA8];
  if (qword_1004A03D0 != -1)
  {
    swift_once();
  }

  v14 = 0;
  if (byte_1004D4FA0 != 1)
  {
    goto LABEL_21;
  }

  if (qword_1004A03C0 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    if (!*(qword_1004D4F90 + 16))
    {
      __break(1u);
LABEL_41:
      swift_once();
      goto LABEL_22;
    }

    sub_10019C35C(v11);
    if (v15)
    {
      goto LABEL_24;
    }

    __break(1u);
LABEL_21:
    if (qword_1004A03B0 != -1)
    {
      goto LABEL_41;
    }

LABEL_22:
    if (!*(qword_1004D4F80 + 16))
    {
      break;
    }

    sub_10019C35C(v11);
    if ((v16 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_24:

    sub_10018616C(v14, v17);
    v14 = v18;
    v19 = [v10 buttonWithType:1];
    [v19 setImage:v14 forState:0];
    v20 = String._bridgeToObjectiveC()();

    [v19 setTitle:v20 forState:0];

    [v19 addTarget:v1 action:v12 forControlEvents:64];
    [v19 setTitleColor:v13 forState:0];
    v10 = &off_100494000;
    [v19 setTintColor:v13];
    v21 = [v19 titleLabel];
    if (v21)
    {
      v22 = v21;
      v12 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleCaption2 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
      [v22 setFont:v12];
    }

    sub_100186350(2.0, 10.0);
    swift_beginAccess();
    v13 = v19;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    swift_beginAccess();
    v23 = *&v1[v2];
    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_38;
      }

      v24 = *(v23 + 32);
    }

    v14 = v24;
    swift_endAccess();
    v25 = *&v1[qword_1004ACFB0];
    [v14 setTitleColor:v25 forState:0];

    swift_beginAccess();
    v26 = *&v1[v2];
    if ((v26 & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_34;
    }

    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(v26 + 32);
LABEL_34:
      v28 = v27;
      swift_endAccess();
      [v28 setTintColor:v25];

      return;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

void sub_10018616C(uint64_t a1, __n128 a2)
{
  if (qword_1004A03D0 != -1)
  {
    swift_once();
  }

  if (byte_1004D4FA0 != 1)
  {
    goto LABEL_10;
  }

  if (qword_1004A03C8 != -1)
  {
    swift_once();
  }

  if (*(qword_1004D4F98 + 16))
  {
    sub_10019C35C(a2);
    if ((v2 & 1) == 0)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v3 = String._bridgeToObjectiveC()();

    v4 = [objc_opt_self() imageNamed:v3];

    if (v4)
    {
      return;
    }

    __break(1u);
LABEL_10:
    if (qword_1004A03B8 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_16:
  swift_once();
LABEL_11:
  if (!*(qword_1004D4F88 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  sub_10019C35C(a2);
  if ((v5 & 1) == 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() imageNamed:v6];

  if (!v7)
  {
LABEL_20:
    __break(1u);
  }
}

void sub_100186350(double a1, double a2)
{
  v5 = [v2 imageView];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 image];

    if (v7)
    {
      [v7 size];
      v9 = v8;
      v11 = v10;

      v12 = [v2 titleLabel];
      if (v12)
      {
        v13 = v12;
        v33 = [v12 text];

        if (v33)
        {
          v14 = [v2 titleLabel];
          if (v14 && (v15 = v14, v16 = [v14 font], v15, v16))
          {
            v17 = [v2 effectiveUserInterfaceLayoutDirection];
            v18 = -v9;
            if (v17 == 1)
            {
              v19 = -v9;
            }

            else
            {
              v19 = 0.0;
            }

            if (v17 == 1)
            {
              v18 = 0.0;
            }

            v20 = v17;
            [v2 setTitleEdgeInsets:{0.0, v18, -(v11 + a1), v19, v33}];
            sub_10000F974(&qword_1004A7288, &qword_1003DAD28);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1003D5360;
            *(inited + 32) = NSFontAttributeName;
            *(inited + 64) = sub_100018630(0, &qword_1004A7290, UIFont_ptr);
            *(inited + 40) = v16;
            v22 = NSFontAttributeName;
            v23 = v16;
            sub_100199F34(inited);
            swift_setDeallocating();
            sub_100018F04(inited + 32, &qword_1004A7298, &qword_1003DAD30);
            type metadata accessor for Key(0);
            sub_100187410();
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            [v34 sizeWithAttributes:isa];
            v26 = v25;
            v28 = v27;

            if (v20 == 1)
            {
              v29 = 0.0;
            }

            else
            {
              v29 = -v26;
            }

            if (v20 == 1)
            {
              v30 = -v26;
            }

            else
            {
              v30 = 0.0;
            }

            v31 = v28 + a1;
            [v2 setImageEdgeInsets:{-v31, v30, 0.0, v29}];
            if (v26 >= v9)
            {
              v32 = v9;
            }

            else
            {
              v32 = v26;
            }

            [v2 setContentEdgeInsets:{v31 * 0.5 + a2, a2 - v32 * 0.5, v31 * 0.5 + a2, a2 - v32 * 0.5}];
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_10018665C(uint64_t a1)
{
  v2 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v2);
  v22 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = qword_1004ACFA0;
  swift_beginAccess();
  v5 = *&v1[v4];
  v23 = v1;
  v21[1] = v2;
  if (v5 >> 62)
  {
LABEL_25:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      sub_100018630(0, &qword_1004AE0D0, NSObject_ptr);
      if (static NSObject.== infix(_:_:)())
      {
        break;
      }

      ++v7;
      if (v10 == v6)
      {
        goto LABEL_15;
      }
    }

    if (v7)
    {

      goto LABEL_15;
    }

    if (qword_1004A0180 != -1)
    {
      swift_once();
    }

    if (qword_1004D4AD0)
    {
      v11 = qword_1004D4AD0;

      v12 = qword_1004ACA08;
      swift_beginAccess();
      v13 = v11 + v12;
      v14 = v22;
      sub_100085F70(v13, v22);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v15 = *v14;
        v16 = sub_1000E0CE8();

        sub_100072394(7, 0, 0, 1);
      }

      else
      {

        sub_100085FD4(v14);
      }

      v17 = v23;
      *(swift_allocObject() + 16) = 0;

      StateValue.mutateImmediatelyNotifyAsync(_:)();

      *&v17[qword_1004ACF98] = 0;
      [v17 updateHighlightState];
      v18 = *(**&v17[qword_1004ACFD0] + 400);

      v19 = v18(v24);
      sub_10008E8B4(0, v20);
      v19(v24, 0);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
LABEL_15:
  }
}

void sub_1001869D0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10018665C(v4);
}

double sub_100186A38()
{
  v1 = qword_1004ACFA0;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = qword_1004ACFA8;
    v13 = qword_1004ACF98;
    v4 = qword_1004ACFB0;

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = v12;
      if (v5 == *(v0 + v13))
      {
        v9 = v4;
      }

      v10 = *(v0 + v9);
      [v6 setTitleColor:v10 forState:0];
      [v7 setTintColor:v10];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  return result;
}

void sub_100186B98(void *a1)
{
  v1 = a1;
  sub_100186A38();
}

double sub_100186BE0()
{

  return result;
}

double sub_100186C50(uint64_t a1)
{

  return result;
}

uint64_t type metadata accessor for ModeControl(uint64_t a1)
{
  result = qword_1004AD000;
  if (!qword_1004AD000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100186DBC()
{
  result = sub_100186DDC();
  qword_1004D4F80 = result;
  return result;
}

void *sub_100186DDC()
{
  sub_10000F974(&qword_1004AD140, &qword_1003E0800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5720;
  *(inited + 32) = 0;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v16._object = 0x800000010040B2C0;
  v3._countAndFlagsBits = 0x5455415F45444F4DLL;
  v3._object = 0xE90000000000004FLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0xD000000000000020;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v16);

  *(inited + 40) = v5;
  *(inited + 56) = 1;
  v6 = [v1 mainBundle];
  v17._object = 0x800000010040B2F0;
  v7._countAndFlagsBits = 0x4E454C5F45444F4DLL;
  v7._object = 0xEB00000000485447;
  v17._countAndFlagsBits = 0xD000000000000022;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v17);

  *(inited + 64) = v9;
  *(inited + 80) = 2;
  v10 = [v1 mainBundle];
  v18._object = 0x800000010040B320;
  v11._countAndFlagsBits = 0x5255535F45444F4DLL;
  v11._object = 0xEC00000045434146;
  v18._countAndFlagsBits = 0xD000000000000023;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v18);

  *(inited + 88) = v13;
  v14 = sub_10019AFDC(inited);
  swift_setDeallocating();
  sub_10000F974(&qword_1004AD148, &qword_1003E0808);
  swift_arrayDestroy();
  return v14;
}

uint64_t sub_10018700C()
{
  v0 = sub_10019AFDC(&off_100465550);
  sub_10000F974(&qword_1004AD148, &qword_1003E0808);
  result = swift_arrayDestroy();
  qword_1004D4F88 = v0;
  return result;
}

uint64_t sub_100187068()
{
  sub_10000F974(&qword_1004AD140, &qword_1003E0800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5360;
  *(inited + 32) = 0;
  v1 = [objc_opt_self() mainBundle];
  v7._object = 0x800000010040B290;
  v2._countAndFlagsBits = 0x41454D5F45444F4DLL;
  v2._object = 0xEC00000045525553;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000023;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v7);

  *(inited + 40) = v4;
  v5 = sub_10019AFDC(inited);
  swift_setDeallocating();
  result = sub_100018F04(inited + 32, &qword_1004AD148, &qword_1003E0808);
  qword_1004D4F90 = v5;
  return result;
}

uint64_t sub_100187188()
{
  v0 = sub_10019AFDC(&off_100465518);
  result = sub_100018F04(&unk_100465538, &qword_1004AD148, &qword_1003E0808);
  qword_1004D4F98 = v0;
  return result;
}

void sub_1001871D8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 showsOnlyYukonEModes];

  byte_1004D4FA0 = v1;
}

void sub_100187234()
{
  v1 = v0;
  swift_getObjectType();
  *(v0 + qword_1004ACF98) = 0;
  *(v0 + qword_1004ACFA0) = _swiftEmptyArrayStorage;
  v2 = qword_1004ACFA8;
  v3 = objc_opt_self();
  *(v1 + v2) = [v3 whiteColor];
  v4 = qword_1004ACFB0;
  *(v1 + v4) = [v3 systemYellowColor];
  *(v1 + qword_1004ACFB8) = 0x4042000000000000;
  *(v1 + qword_1004ACFC0) = 0x4024000000000000;
  v5 = qword_1004ACFC8;
  v6 = sub_10000F974(&unk_1004AFC00, &qword_1003DCE40);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v8 = qword_1004D5058;
  v9 = *(v6 + 272);

  *(v1 + v5) = v9(KeyPath, v8);
  v10 = qword_1004ACFD0;
  sub_10000F974(&qword_1004AD138, &qword_1003E07D0);
  swift_getKeyPath();
  *(v1 + v10) = MutableStateValue.__allocating_init(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100187410()
{
  result = qword_1004A72A0;
  if (!qword_1004A72A0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A72A0);
  }

  return result;
}

uint64_t sub_10018747C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483643)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 4;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ARCamera.TrackingState();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_10018754C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483643)
  {
    *result = (a2 + 3);
  }

  else
  {
    v7 = type metadata accessor for ARCamera.TrackingState();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SessionState(uint64_t a1)
{
  result = qword_1004AD1B0;
  if (!qword_1004AD1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100187640(uint64_t a1)
{
  result = type metadata accessor for ARCamera.TrackingState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001876BC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001876D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100187728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_100187784(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1001877B4(__n128 a1)
{
  result = Contexts.UIKit.init()();
  qword_1004D4FA8 = result;
  return result;
}

id sub_1001877D4@<X0>(void *a1@<X8>)
{
  if (qword_1004A03D8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4FA8;
  *a1 = qword_1004D4FA8;

  return v2;
}

uint64_t sub_100187844(uint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 > 1)
  {
    if (v3 == 2)
    {
      if (v4 != 2)
      {
        return 0;
      }

      return static ARCamera.TrackingState.== infix(_:_:)();
    }

    if (v3 == 3)
    {
      if (v4 != 3)
      {
        return 0;
      }

      return static ARCamera.TrackingState.== infix(_:_:)();
    }
  }

  else
  {
    if (!v3)
    {
      if (!v4)
      {
        return static ARCamera.TrackingState.== infix(_:_:)();
      }

      return 0;
    }

    if (v3 == 1)
    {
      if (v4 != 1)
      {
        return 0;
      }

      return static ARCamera.TrackingState.== infix(_:_:)();
    }
  }

  if (v4 >= 4)
  {
    return static ARCamera.TrackingState.== infix(_:_:)();
  }

  return 0;
}

BOOL sub_1001878B8(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (!v2)
    {
      return !v3;
    }

    if (v2 == 1)
    {
      return v3 == 1;
    }

    return v3 > 3;
  }

  if (v2 != 2)
  {
    if (v2 == 3)
    {
      return v3 == 3;
    }

    return v3 > 3;
  }

  return v3 == 2;
}

unint64_t sub_100187934(uint64_t a1)
{
  result = sub_10018795C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10018795C()
{
  result = qword_1004AD210;
  if (!qword_1004AD210)
  {
    type metadata accessor for SessionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD210);
  }

  return result;
}

__n128 sub_1001879B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1001879C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100187A10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100187A64(unint64_t a1, id *a2, uint64_t a3, void *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = v9;
      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12 = [*a2 childNodes];
      sub_100018630(0, &qword_1004A1318, SCNNode_ptr);
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v13 >> 62)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v14 == a3)
      {
        v15 = [objc_allocWithZone(SCNNode) init];
        v16 = *a2;
        *a2 = v15;
        v17 = v15;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      [*a2 addChildNode:v10];

      if (v11 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

unint64_t sub_100187C54@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018C804(*a1);
  *a2 = result;
  return result;
}

void sub_100187CB8(void *a1)
{
  v309 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v302 = *(v1 - 8);
  v303 = v1;
  __chkstk_darwin(v1);
  v301 = &v272 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v296 = *(v3 - 8);
  v297 = v3;
  __chkstk_darwin(v3);
  v295 = &v272 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v293);
  v294 = &v272 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v300 = *(v6 - 8);
  __chkstk_darwin(v6);
  v299 = &v272 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() shaderWithFileNamed:v8];

  v10 = qword_1004D4FB0;
  qword_1004D4FB0 = v9;
  v11 = v9;

  if (v11)
  {
    sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1003D56B0;
    v13 = objc_allocWithZone(SKAttribute);
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 initWithName:v14 type:2];

    *(v12 + 32) = v15;
    sub_100018630(0, &qword_1004AD2C0, SKAttribute_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 setAttributes:isa];

    v17 = sub_10018C814();
    v19 = v18;
    v317 = sub_10018C814();
    v314 = v20;
    v315 = sub_10018C814();
    v306 = v21;
    v22 = sub_10018C814();
    v304 = v23;
    v305 = v22;
    v24 = [objc_allocWithZone(SCNMaterial) init];
    v319 = sub_10000F974(&qword_1004AD2C8, &qword_1003E0920);
    inited = swift_initStackObject();
    v318 = xmmword_1003D5360;
    *(inited + 16) = xmmword_1003D5360;
    *(inited + 32) = SCNShaderModifierEntryPointGeometry;
    v310 = v17;
    *(inited + 40) = v17;
    *(inited + 48) = v19;
    v26 = SCNShaderModifierEntryPointGeometry;
    v312 = v19;

    sub_10019B0F0(inited);
    swift_setDeallocating();
    sub_10018C98C(inited + 32);
    type metadata accessor for SCNShaderModifierEntryPoint(0);
    v28 = v27;
    v29 = sub_10018CA6C(&qword_1004A0C60, type metadata accessor for SCNShaderModifierEntryPoint, &unk_1003D4EF8);
    v320 = v28;
    v321 = v29;
    v30 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v24 setShaderModifiers:v30];

    v31 = [v24 diffuse];
    if (qword_1004A0648 != -1)
    {
      swift_once();
    }

    [v31 setContents:qword_1004D51C0];

    v32 = [v24 emission];
    if (qword_1004A0670 != -1)
    {
      swift_once();
    }

    v292 = v6;
    [v32 setContents:qword_1004D51E8];

    if (qword_1004A03E0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v33 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    v308 = v33;
    sub_1000BCA18(v33, 0, isUniquelyReferenced_nonNull_native, v35);
    off_1004AD218 = v329;
    swift_endAccess();
    v36 = [objc_allocWithZone(SCNMaterial) init];
    v37 = swift_initStackObject();
    *(v37 + 16) = v318;
    *(v37 + 32) = v26;
    *(v37 + 40) = v310;
    *(v37 + 48) = v312;

    sub_10019B0F0(v37);
    swift_setDeallocating();
    sub_10018C98C(v37 + 32);
    v38 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v36 setShaderModifiers:v38];

    v311 = objc_opt_self();
    v39 = [v311 jasperAvailable];
    swift_beginAccess();
    v40 = v36;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v40, 4, v41, v42);
    off_1004AD218 = v329;
    swift_endAccess();
    if (v39)
    {
      if (qword_1004A03E8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v43 = v40;
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v329 = off_1004AD220;
      off_1004AD220 = 0x8000000000000000;
      sub_1000BCA18(v43, 4, v44, v45);
      off_1004AD220 = v329;
      swift_endAccess();
    }

    v291 = v40;
    v46 = [objc_allocWithZone(SCNMaterial) init];
    v47 = swift_initStackObject();
    *(v47 + 16) = v318;
    *(v47 + 32) = v26;
    v48 = v314;
    *(v47 + 40) = v317;
    *(v47 + 48) = v48;
    v313 = v26;

    sub_10019B0F0(v47);
    swift_setDeallocating();
    sub_10018C98C(v47 + 32);
    v49 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v46 setShaderModifiers:v49];

    [v46 setLocksAmbientWithDiffuse:1];
    swift_beginAccess();
    v50 = v46;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    v307 = v50;
    sub_1000BCA18(v50, 1, v51, v52);
    off_1004AD218 = v329;
    swift_endAccess();
    v53 = [objc_allocWithZone(SCNMaterial) init];
    v54 = swift_initStackObject();
    *(v54 + 16) = v318;
    *(v54 + 32) = v313;
    *(v54 + 40) = v317;
    *(v54 + 48) = v48;

    sub_10019B0F0(v54);
    swift_setDeallocating();
    sub_10018C98C(v54 + 32);
    v55 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v53 setShaderModifiers:v55];

    [v53 setLocksAmbientWithDiffuse:1];
    LODWORD(v55) = [v311 jasperAvailable];
    swift_beginAccess();
    v56 = v53;
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v56, 5, v57, v58);
    off_1004AD218 = v329;
    swift_endAccess();
    if (v55)
    {
      if (qword_1004A03E8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v59 = v56;
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v329 = off_1004AD220;
      off_1004AD220 = 0x8000000000000000;
      sub_1000BCA18(v59, 5, v60, v61);
      off_1004AD220 = v329;
      swift_endAccess();
    }

    v290 = v56;
    v62 = [objc_allocWithZone(SCNMaterial) init];
    v63 = swift_initStackObject();
    v316 = xmmword_1003D5730;
    *(v63 + 16) = xmmword_1003D5730;
    *(v63 + 32) = v313;
    v64 = v306;
    *(v63 + 40) = v315;
    *(v63 + 48) = v64;
    v65 = v304;
    v66 = v305;
    *(v63 + 56) = SCNShaderModifierEntryPointFragment;
    *(v63 + 64) = v66;
    *(v63 + 72) = v65;
    v67 = SCNShaderModifierEntryPointFragment;
    sub_10019B0F0(v63);
    swift_setDeallocating();
    v315 = sub_10000F974(&qword_1004AD2D0, &qword_1003E0928);
    swift_arrayDestroy();
    v68 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v62 setShaderModifiers:v68];

    [v62 setLocksAmbientWithDiffuse:1];
    swift_beginAccess();
    v69 = v62;
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    v306 = v69;
    sub_1000BCA18(v69, 2, v70, v71);
    off_1004AD218 = v329;
    swift_endAccess();
    v72 = [objc_allocWithZone(SCNMaterial) init];
    [v72 setDoubleSided:1];
    [v72 setWritesToDepthBuffer:0];
    swift_beginAccess();
    v73 = v72;
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    v305 = v73;
    sub_1000BCA18(v73, 3, v74, v75);
    off_1004AD218 = v329;
    swift_endAccess();
    if (![v311 jasperAvailable])
    {

LABEL_35:
      v258 = [objc_allocWithZone(SCNScene) init];
      v321 = v258;
      v259 = v309;
      v260 = [objc_opt_self() rendererWithDevice:objc_msgSend(v309 options:{"device"), 0}];
      swift_unknownObjectRelease();
      [v260 setScene:v258];
      [v260 setAutoenablesDefaultLighting:{objc_msgSend(v259, "autoenablesDefaultLighting")}];
      sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
      v261 = v299;
      static DispatchQoS.unspecified.getter();
      v322[0] = _swiftEmptyArrayStorage;
      sub_10018CA6C(&qword_1004A4020, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_10000F974(&qword_1004ABEE0, &qword_1003DB8B0);
      sub_10001D47C(&qword_1004A4030, &qword_1004ABEE0, &qword_1003DB8B0, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v296 + 104))(v295, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v297);
      v262 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v263 = swift_allocObject();
      v264 = v298;
      v263[2] = v259;
      v263[3] = v264;
      v265 = v321;
      v263[4] = v321;
      v263[5] = v260;
      v263[6] = v262;
      v324 = sub_10018CA44;
      v325 = v263;
      v322[0] = _NSConcreteStackBlock;
      v322[1] = 1107296256;
      v322[2] = sub_100041180;
      v323 = &unk_100470FD0;
      v266 = _Block_copy(v322);
      v267 = v259;
      v321 = v265;
      v268 = v260;
      v269 = v262;
      static DispatchQoS.unspecified.getter();
      v329 = _swiftEmptyArrayStorage;
      sub_10018CA6C(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
      sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
      v270 = v301;
      v271 = v303;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v266);

      (*(v302 + 8))(v270, v271);
      (*(v300 + 8))(v261, v292);

      return;
    }

    v289 = v67;
    v76 = sub_10018C814();
    v287 = v77;
    v288 = v76;
    v78 = sub_10018C814();
    v281 = v79;
    v282 = v78;
    v80 = sub_10018C814();
    v275 = v81;
    v276 = v80;
    v82 = sub_10018C814();
    v277 = v83;
    v278 = v82;
    v84 = sub_10018C814();
    v279 = v85;
    v280 = v84;
    v272 = sub_10018C814();
    v87 = v86;
    v88 = sub_10018C814();
    v90 = v89;
    v91 = sub_10018C814();
    v273 = v92;
    v274 = v91;
    v93 = sub_10018C814();
    v283 = v94;
    v284 = v93;
    v95 = sub_10018C814();
    v285 = v96;
    v286 = v95;
    v311 = sub_10018C814();
    v304 = v97;
    v98 = objc_opt_self();
    v99 = [v98 standardUserDefaults];
    v100 = [v99 isLineOcclusionEnabled];

    if (v100)
    {
      v101 = swift_allocObject();
      v103 = v313;
      v102 = v314;
      *(v101 + 32) = v313;
      *(v101 + 16) = v316;
      *(v101 + 40) = v317;
      *(v101 + 48) = v102;
      v104 = v289;
      *(v101 + 56) = v289;
      *(v101 + 64) = v88;
      *(v101 + 72) = v90;
      v105 = v103;

      v106 = v104;
      sub_10019B0F0(v101);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
    }

    else
    {

      v107 = swift_initStackObject();
      *(v107 + 16) = v318;
      v103 = v313;
      v108 = v314;
      *(v107 + 32) = v313;
      *(v107 + 40) = v317;
      *(v107 + 48) = v108;
      v109 = v103;

      sub_10019B0F0(v107);
      swift_setDeallocating();
      sub_10018C98C(v107 + 32);
    }

    v110 = Dictionary._bridgeToObjectiveC()().super.isa;

    v111 = v307;
    [v307 setShaderModifiers:v110];

    swift_beginAccess();
    v112 = v111;
    v113 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v112, 1, v113, v114);
    off_1004AD218 = v329;
    swift_endAccess();
    if (qword_1004A03E8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v115 = v112;
    v116 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD220;
    off_1004AD220 = 0x8000000000000000;
    sub_1000BCA18(v115, 1, v116, v117);
    off_1004AD220 = v329;
    swift_endAccess();
    v118 = [v98 standardUserDefaults];
    LODWORD(v115) = [v118 isPointOcclusionEnabled];

    if (v115)
    {
      v119 = swift_allocObject();
      *(v119 + 32) = v103;
      *(v119 + 16) = v316;
      v120 = v312;
      *(v119 + 40) = v310;
      *(v119 + 48) = v120;
      v121 = v289;
      v122 = v272;
      *(v119 + 56) = v289;
      *(v119 + 64) = v122;
      *(v119 + 72) = v87;
      v123 = v103;
      v124 = v121;
      sub_10019B0F0(v119);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
    }

    else
    {

      v125 = swift_initStackObject();
      *(v125 + 16) = v318;
      *(v125 + 32) = v103;
      v126 = v312;
      *(v125 + 40) = v310;
      *(v125 + 48) = v126;
      v127 = v103;
      sub_10019B0F0(v125);
      swift_setDeallocating();
      sub_10018C98C(v125 + 32);
    }

    v128 = Dictionary._bridgeToObjectiveC()().super.isa;

    v129 = v308;
    [v308 setShaderModifiers:v128];

    swift_beginAccess();
    v130 = v129;
    v131 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v130, 0, v131, v132);
    off_1004AD218 = v329;
    swift_endAccess();
    swift_beginAccess();
    v133 = v130;
    v134 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD220;
    off_1004AD220 = 0x8000000000000000;
    sub_1000BCA18(v133, 0, v134, v135);
    off_1004AD220 = v329;
    swift_endAccess();
    v136 = [objc_allocWithZone(SCNMaterial) init];
    v137 = swift_initStackObject();
    *(v137 + 16) = v318;
    *(v137 + 32) = v103;
    v138 = v314;
    *(v137 + 40) = v317;
    *(v137 + 48) = v138;
    v317 = v103;
    sub_10019B0F0(v137);
    swift_setDeallocating();
    sub_10018C98C(v137 + 32);
    v139 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v136 setShaderModifiers:v139];

    swift_beginAccess();
    v140 = v136;
    v141 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v140, 6, v141, v142);
    off_1004AD218 = v329;
    swift_endAccess();
    swift_beginAccess();
    v143 = v140;
    v144 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD220;
    off_1004AD220 = 0x8000000000000000;
    v313 = v143;
    sub_1000BCA18(v143, 6, v144, v145);
    off_1004AD220 = v329;
    swift_endAccess();
    v146 = [objc_allocWithZone(SCNMaterial) init];
    v147 = swift_initStackObject();
    *(v147 + 16) = v318;
    v148 = v289;
    *(v147 + 32) = v289;
    v149 = v283;
    *(v147 + 40) = v284;
    *(v147 + 48) = v149;
    v150 = v148;
    sub_10019B0F0(v147);
    swift_setDeallocating();
    sub_10018C98C(v147 + 32);
    v151 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v146 setShaderModifiers:v151];

    swift_beginAccess();
    v152 = v146;
    v153 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v152, 7, v153, v154);
    off_1004AD218 = v329;
    swift_endAccess();
    swift_beginAccess();
    v155 = v152;
    v156 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD220;
    off_1004AD220 = 0x8000000000000000;
    v312 = v155;
    sub_1000BCA18(v155, 7, v156, v157);
    off_1004AD220 = v329;
    swift_endAccess();
    v158 = [objc_allocWithZone(SCNMaterial) init];
    v159 = swift_allocObject();
    *(v159 + 32) = v317;
    *(v159 + 16) = v316;
    v160 = v285;
    *(v159 + 40) = v286;
    *(v159 + 48) = v160;
    v161 = v311;
    *(v159 + 56) = v150;
    *(v159 + 64) = v161;
    *(v159 + 72) = v304;
    v314 = v150;

    sub_10019B0F0(v159);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v162 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v158 setShaderModifiers:v162];

    v163 = [v158 diffuse];
    [v163 setContents:sub_100191D2C(v309)];

    swift_unknownObjectRelease();
    v164 = [v158 emission];
    v289 = objc_opt_self();
    v165 = [v289 clearColor];
    [v164 setContents:v165];

    swift_beginAccess();
    v166 = v158;
    v167 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v166, 8, v167, v168);
    off_1004AD218 = v329;
    swift_endAccess();
    v169 = v322;
    swift_beginAccess();
    v170 = v166;
    v171 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD220;
    off_1004AD220 = 0x8000000000000000;
    v310 = v170;
    sub_1000BCA18(v170, 8, v171, v172);
    off_1004AD220 = v329;
    swift_endAccess();
    v173 = [objc_allocWithZone(SCNMaterial) init];
    v174 = swift_allocObject();
    *(v174 + 16) = v318;
    *(v174 + 32) = v314;
    v175 = v174 + 32;
    v176 = v304;
    *(v174 + 40) = v311;
    *(v174 + 48) = v176;
    sub_10019B0F0(v174);
    swift_setDeallocating();
    sub_10018C98C(v175);
    swift_deallocClassInstance();
    v177 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v173 setShaderModifiers:v177];

    if (qword_1004A04E8 != -1)
    {
      swift_once();
    }

    v178 = qword_1004AD940;
    v179 = swift_allocObject();
    v179[2] = 0;
    v179[3] = 0xE000000000000000;
    v180 = swift_allocObject();
    v180[2] = sub_10018CAEC;
    v180[3] = v179;
    v324 = sub_100038D64;
    v325 = v180;
    v322[0] = _NSConcreteStackBlock;
    v322[1] = 1107296256;
    v322[2] = sub_1001C5E40;
    v323 = &unk_100471048;
    v181 = _Block_copy(v322);

    v182 = [v178 imageWithActions:v181];
    _Block_release(v181);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v184 = [v182 CGImage];

      v169 = &off_100494000;
      if (v184)
      {
        v185 = [v173 diffuse];
        [v185 setContents:v184];

        v186 = [v173 diffuse];
        LODWORD(v322[0]) = 1065353216;
        *(&v322[1] + 4) = 0;
        *(v322 + 4) = 0;
        HIDWORD(v322[2]) = 1056964608;
        v324 = 0;
        v325 = 0;
        v323 = 0;
        v326 = 0;
        v327 = 1056964608;
        v328 = 1065353216;
        [v186 setContentsTransform:v322];
      }

      v187 = [v173 emission];
      v188 = [v289 clearColor];
      [v187 setContents:v188];

      swift_beginAccess();
      v189 = v173;
      v190 = swift_isUniquelyReferenced_nonNull_native();
      v329 = off_1004AD218;
      off_1004AD218 = 0x8000000000000000;
      sub_1000BCA18(v189, 9, v190, v191);
      off_1004AD218 = v329;
      swift_endAccess();
      swift_beginAccess();
      v192 = v189;
      v193 = swift_isUniquelyReferenced_nonNull_native();
      v329 = off_1004AD220;
      off_1004AD220 = 0x8000000000000000;
      v311 = v192;
      sub_1000BCA18(v192, 9, v193, v194);
      off_1004AD220 = v329;
      swift_endAccess();
      v173 = [objc_allocWithZone(SCNMaterial) init];
      v195 = swift_allocObject();
      v196 = v317;
      *(v195 + 32) = v317;
      *(v195 + 16) = v316;
      v197 = v287;
      *(v195 + 40) = v288;
      *(v195 + 48) = v197;
      v198 = v314;
      v199 = v273;
      v200 = v274;
      *(v195 + 56) = v314;
      *(v195 + 64) = v200;
      *(v195 + 72) = v199;
      v201 = v196;
      v202 = v198;
      isEscapingClosureAtFileLocation = v201;
      v180 = v202;

      sub_10019B0F0(v195);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v203 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v173 setShaderModifiers:v203];

      v179 = [v173 diffuse];
      if (qword_1004A05E0 == -1)
      {
        goto LABEL_32;
      }
    }

    swift_once();
LABEL_32:
    v204 = v169[48];
    *&v318 = qword_1004D5158;
    [v179 v204];

    v205 = [v173 emission];
    if (qword_1004A0618 != -1)
    {
      swift_once();
    }

    v314 = qword_1004D5190;
    [v205 v169[48]];

    swift_beginAccess();
    v206 = v173;
    v207 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v206, 10, v207, v208);
    off_1004AD218 = v329;
    swift_endAccess();
    swift_beginAccess();
    v209 = v206;
    v304 = v209;
    v210 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD220;
    off_1004AD220 = 0x8000000000000000;
    sub_1000BCA18(v209, 10, v210, v211);
    off_1004AD220 = v329;
    swift_endAccess();
    v212 = [objc_allocWithZone(SCNMaterial) init];
    v213 = swift_allocObject();
    *(v213 + 32) = isEscapingClosureAtFileLocation;
    *(v213 + 16) = v316;
    v214 = v287;
    *(v213 + 40) = v288;
    *(v213 + 48) = v214;
    v215 = v275;
    v216 = v276;
    *(v213 + 56) = v180;
    *(v213 + 64) = v216;
    *(v213 + 72) = v215;
    v217 = isEscapingClosureAtFileLocation;
    v218 = v180;
    v219 = v217;
    v288 = v217;
    v317 = v218;
    sub_10019B0F0(v213);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v220 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v212 setShaderModifiers:v220];

    v221 = [v212 diffuse];
    [v221 v169[48]];

    v222 = [v212 emission];
    v223 = v314;
    [v222 v169[48]];

    swift_beginAccess();
    v224 = v212;
    v225 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v224, 11, v225, v226);
    off_1004AD218 = v329;
    swift_endAccess();
    swift_beginAccess();
    v227 = v224;
    v289 = v227;
    v228 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD220;
    off_1004AD220 = 0x8000000000000000;
    sub_1000BCA18(v227, 11, v228, v229);
    off_1004AD220 = v329;
    swift_endAccess();
    v230 = [objc_allocWithZone(SCNMaterial) init];
    v231 = swift_allocObject();
    *(v231 + 32) = v219;
    *(v231 + 16) = v316;
    v232 = v279;
    v233 = v280;
    *(v231 + 40) = v280;
    *(v231 + 48) = v232;
    v234 = v277;
    v235 = v278;
    *(v231 + 56) = v317;
    *(v231 + 64) = v235;
    *(v231 + 72) = v234;

    sub_10019B0F0(v231);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v236 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v230 setShaderModifiers:v236];

    v237 = [v230 diffuse];
    [v237 setContents:v318];

    v238 = [v230 emission];
    [v238 setContents:v223];

    swift_beginAccess();
    v239 = v230;
    v240 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v239, 12, v240, v241);
    off_1004AD218 = v329;
    swift_endAccess();
    swift_beginAccess();
    v242 = v239;
    v243 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD220;
    off_1004AD220 = 0x8000000000000000;
    sub_1000BCA18(v242, 12, v243, v244);
    off_1004AD220 = v329;
    swift_endAccess();
    v245 = [objc_allocWithZone(SCNMaterial) init];
    v246 = swift_allocObject();
    *(v246 + 32) = v288;
    *(v246 + 16) = v316;
    *(v246 + 40) = v233;
    *(v246 + 48) = v232;
    v247 = v281;
    v248 = v282;
    *(v246 + 56) = v317;
    *(v246 + 64) = v248;
    *(v246 + 72) = v247;
    sub_10019B0F0(v246);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v249 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v245 setShaderModifiers:v249];

    v250 = [v245 diffuse];
    [v250 setContents:v318];

    v251 = [v245 emission];
    [v251 setContents:v314];

    swift_beginAccess();
    v252 = v245;
    v253 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD218;
    off_1004AD218 = 0x8000000000000000;
    sub_1000BCA18(v252, 13, v253, v254);
    off_1004AD218 = v329;
    swift_endAccess();
    swift_beginAccess();
    v255 = v252;
    v256 = swift_isUniquelyReferenced_nonNull_native();
    v329 = off_1004AD220;
    off_1004AD220 = 0x8000000000000000;
    sub_1000BCA18(v255, 13, v256, v257);
    off_1004AD220 = v329;
    swift_endAccess();

    goto LABEL_35;
  }

  __break(1u);
}

void sub_10018A4E4(void *a1, uint64_t a2, void *a3, double *a4, void *a5)
{
  v69 = a5;
  v62 = a4;
  v61 = a3;
  v60 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v68 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v59 = &v57 - v18;
  ariadne_trace(_:_:_:_:_:)();
  v19 = [objc_allocWithZone(MTLTextureDescriptor) init];
  [v19 setPixelFormat:55];
  [v19 setWidth:1];
  [v19 setHeight:1];
  v20 = [a1 device];
  if (v20)
  {
    v58 = v14;
    v67 = v19;
    v21 = [v20 newTextureWithDescriptor:v19];
    if (v21)
    {
      v22 = v21;
      v23 = v13;
      v64 = v11;
      v65 = v10;
      v66 = v7;
      swift_unknownObjectRelease();
      if (qword_1004A03E0 != -1)
      {
        swift_once();
      }

      v63 = v9;
      swift_beginAccess();

      sub_10018B7C4(v24);
      v26 = v25;

      v27 = _swiftEmptyArrayStorage;
      aBlock = _swiftEmptyArrayStorage;
      sub_10018C6F8(v26, 0, &aBlock, 1.0);
      v28 = aBlock;
      aBlock = _swiftEmptyArrayStorage;
      sub_10018C6F8(v26, 0, &aBlock, 0.5);

      v29 = aBlock;
      if (qword_1004A03E8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      aBlock = _swiftEmptyArrayStorage;
      swift_unknownObjectRetain();

      sub_10018C6F8(v30, v22, &aBlock, 1.0);

      v31 = aBlock;
      v78 = _swiftEmptyArrayStorage;
      swift_unknownObjectRetain();

      sub_10018C6F8(v32, v22, &v78, 0.5);

      swift_unknownObjectRelease_n();
      sub_100103E84(v31);
      sub_100103E84(v29);
      sub_100103E84(v28);
      v33 = sub_10018CB04(v78);

      v34 = 727056420;
      ariadne_trace(_:_:_:_:_:)();
      v35 = swift_allocObject();
      *(v35 + 16) = 0;
      v36 = (v35 + 16);
      if (v33 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() >= 1)
        {
LABEL_9:
          swift_beginAccess();
          v37 = *v36;
          if ((v33 & 0xC000000000000001) != 0)
          {
            v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v37 & 0x8000000000000000) != 0)
            {
              __break(1u);
              goto LABEL_27;
            }

            if (v37 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v38 = *&v33[v37 + 4];
          }

          v34 = v38;
          v39 = [v38 childNodes];
          sub_100018630(0, &qword_1004A1318, SCNNode_ptr);
          v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (!(v40 >> 62))
          {
            v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_15;
          }

LABEL_27:
          v41 = _CocoaArrayWrapper.endIndex.getter();
LABEL_15:

          v42 = v41 <= 0;
          v27 = v62;
          v23 = v61;
          v16 = _swiftEmptyArrayStorage;
          if (v42)
          {
            goto LABEL_20;
          }

          v43 = [v61 rootNode];
          [v43 addChildNode:v34];

          if ([v27 prepareObject:v23 shouldAbortBlock:0])
          {
            goto LABEL_19;
          }

          if (qword_1004A02C0 != -1)
          {
            goto LABEL_30;
          }

          while (1)
          {
            v44._object = 0x800000010040B4C0;
            v44._countAndFlagsBits = 0xD000000000000031;
            Log.error(_:isPrivate:)(v44, 0);
LABEL_19:
            [v34 removeFromParentNode];
LABEL_20:
            if (!__OFADD__(*v36, 1))
            {
              break;
            }

            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            swift_once();
          }

          *(v35 + 16) = *v36 + 1;
          v45 = swift_allocObject();
          v45[2] = v35;
          v45[3] = v33;
          v45[4] = v23;
          v45[5] = v27;
          v46 = v69;
          v47 = v60;
          v45[6] = v69;
          v45[7] = v47;
          v76 = sub_10018CC6C;
          v77 = v45;
          aBlock = _NSConcreteStackBlock;
          v73 = 1107296256;
          v74 = sub_100041180;
          v75 = &unk_1004710E8;
          v48 = _Block_copy(&aBlock);

          v49 = v23;
          v50 = v27;
          v46;
          v69 = v34;
          v51 = v68;
          static DispatchQoS.unspecified.getter();
          v70 = v16;
          sub_10018CA6C(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
          sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
          v52 = v63;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v48);
          swift_unknownObjectRelease();

          (*(v66 + 8))(v52, v6);
          (*(v64 + 8))(v51, v65);
          goto LABEL_24;
        }
      }

      else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
        goto LABEL_9;
      }

      ariadne_trace(_:_:_:_:_:)();
      static DispatchTime.now()();
      v62 = v35;
      v53 = v59;
      + infix(_:_:)();
      v61 = *(v58 + 8);
      v57 = v23;
      (v61)(v16, v23);
      v76 = sub_10018C1DC;
      v77 = 0;
      aBlock = _NSConcreteStackBlock;
      v73 = 1107296256;
      v74 = sub_100041180;
      v75 = &unk_100471098;
      v54 = _Block_copy(&aBlock);
      v55 = v68;
      static DispatchQoS.unspecified.getter();
      v71 = _swiftEmptyArrayStorage;
      sub_10018CA6C(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
      sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
      v56 = v63;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v54);
      swift_unknownObjectRelease();

      (*(v66 + 8))(v56, v6);
      (*(v64 + 8))(v55, v65);
      (v61)(v53, v57);
LABEL_24:

      ariadne_trace(_:_:_:_:_:)();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_10018AFF4(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, void (*a6)(char *, void *))
{
  v46 = a6;
  v47 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v10 - 8);
  v52 = v10;
  __chkstk_darwin(v10);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v49 = *(v12 - 8);
  v50 = v12;
  __chkstk_darwin(v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchTime();
  v16 = *(v15 - 1);
  __chkstk_darwin(v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v46 - v20;
  swift_beginAccess();
  v22 = *(a1 + 16);
  if (!(a2 >> 62))
  {
    if (v22 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_17:
    ariadne_trace(_:_:_:_:_:)();
    static DispatchTime.now()();
    + infix(_:_:)();
    v46 = *(v16 + 8);
    v46(v18, v15);
    v59 = sub_10018C1DC;
    v60 = 0;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_100041180;
    v58 = &unk_100471110;
    v41 = _Block_copy(&aBlock);
    v42 = v14;
    static DispatchQoS.unspecified.getter();
    v54 = _swiftEmptyArrayStorage;
    sub_10018CA6C(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
    v43 = v48;
    v44 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v41);
    (*(v51 + 8))(v43, v44);
    (*(v49 + 8))(v42, v50);
    v46(v21, v15);
    goto LABEL_18;
  }

  if (v22 >= _CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_17;
  }

LABEL_3:
  swift_beginAccess();
  v23 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v23 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v24 = *(a2 + 8 * v23 + 32);
  }

  v15 = v24;
  v25 = [v24 childNodes];
  sub_100018630(0, &qword_1004A1318, SCNNode_ptr);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v26 >> 62))
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_9;
  }

LABEL_21:
  v27 = _CocoaArrayWrapper.endIndex.getter();
LABEL_9:

  if (v27 <= 0)
  {
    goto LABEL_14;
  }

  v28 = [a3 rootNode];
  [v28 addChildNode:v15];

  if ([a4 prepareObject:a3 shouldAbortBlock:0])
  {
    goto LABEL_13;
  }

  if (qword_1004A02C0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v29._object = 0x800000010040B4C0;
    v29._countAndFlagsBits = 0xD000000000000031;
    Log.error(_:isPrivate:)(v29, 0);
LABEL_13:
    [v15 removeFromParentNode];
LABEL_14:
    swift_beginAccess();
    v30 = *(a1 + 16);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (!v31)
    {
      break;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  *(a1 + 16) = v32;
  v33 = swift_allocObject();
  v33[2] = a1;
  v33[3] = a2;
  v33[4] = a3;
  v33[5] = a4;
  v34 = v47;
  v35 = v46;
  v33[6] = v47;
  v33[7] = v35;
  v59 = sub_10018CEDC;
  v60 = v33;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_100041180;
  v58 = &unk_100471160;
  v36 = _Block_copy(&aBlock);

  v37 = a3;
  v38 = a4;
  v34;
  static DispatchQoS.unspecified.getter();
  v53 = _swiftEmptyArrayStorage;
  sub_10018CA6C(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
  v39 = v48;
  v40 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);

  (*(v51 + 8))(v39, v40);
  (*(v49 + 8))(v14, v50);
LABEL_18:

  return result;
}

void sub_10018B7C4(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_10018BADC(v7, v4, v2);

      return;
    }
  }

  __chkstk_darwin(a1);
  v6 = &v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_10018B924(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_10018B924(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = qword_1004A03E8;
    v15 = *(*(a3 + 56) + 8 * v13);
    if (v14 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (*(off_1004AD220 + 2) && (sub_10019C35C(v16), (v17 & 1) != 0))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();

      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        goto LABEL_21;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      sub_10018BFB8(a1, a2, v21, a3);
      return;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void *sub_10018BADC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_10018B924(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_10018BB54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000F974(&unk_1004A7410, &unk_1003DAFB0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  if (v10)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v16 = v13 | (v11 << 6);
      v17 = *(*(v4 + 48) + 8 * v16);
      memcpy(__dst, (*(v4 + 56) + 304 * v16), 0x130uLL);
      result = static Hasher._hash(seed:_:)();
      v18 = -1 << *(v9 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v9 + 48) + 8 * v21) = v17;
      result = memcpy((*(v9 + 56) + 304 * v21), __dst, 0x130uLL);
      ++*(v9 + 16);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_34;
      }

      if (!v5)
      {
        sub_1000C1C28(__dst, v27);
        return v9;
      }

      result = sub_1000C1C28(__dst, v27);
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    v22 = 0;
    v23 = (63 - v18) >> 6;
    while (++v20 != v23 || (v22 & 1) == 0)
    {
      v24 = v20 == v23;
      if (v20 == v23)
      {
        v20 = 0;
      }

      v22 |= v24;
      v25 = *(v12 + 8 * v20);
      if (v25 != -1)
      {
        v21 = __clz(__rbit64(~v25)) + (v20 << 6);
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_10:
    v14 = v11;
    while (1)
    {
      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v11 >= a2)
      {
        return v9;
      }

      v15 = a1[v11];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void sub_10018BDA0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = a3;
    if (a4[2] == a3)
    {
    }

    else
    {
      sub_10000F974(&qword_1004A7438, &qword_1003DAFD0);
      v8 = static _DictionaryStorage.allocate(capacity:)();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 64;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v16 = v13 | (v11 << 6);
        v17 = *(a4[6] + 8 * v16);
        v18 = *(a4[7] + 8 * v16);
        v19 = static Hasher._hash(seed:_:)();
        v20 = -1 << *(v9 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          v24 = 0;
          v25 = (63 - v20) >> 6;
          while (++v22 != v25 || (v24 & 1) == 0)
          {
            v26 = v22 == v25;
            if (v22 == v25)
            {
              v22 = 0;
            }

            v24 |= v26;
            v27 = *(v12 + 8 * v22);
            if (v27 != -1)
            {
              v23 = __clz(__rbit64(~v27)) + (v22 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        *(*(v9 + 48) + 8 * v23) = v17;
        *(*(v9 + 56) + 8 * v23) = v18;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        if (!v5)
        {
          return;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          return;
        }

        v15 = a1[v11];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }
}

Swift::Int sub_10018BFB8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000F974(&qword_1004A73D0, &qword_1003DAF70);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v28 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v17);
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    result = v18;
    v4 = v28;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id sub_10018C1EC(uint64_t a1)
{
  if (qword_1004A03E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = off_1004AD218;
  if (*(off_1004AD218 + 2) && (v3 = sub_10019C35C(v1), (v4 & 1) != 0))
  {
    v5 = *(v2[7] + 8 * v3);
    swift_endAccess();
    v6 = v5;
    static ComputedCameraProperties.shared.getter();
    isa = Float._bridgeToObjectiveC()().super.super.isa;
    v8 = String._bridgeToObjectiveC()();
    [v6 setValue:isa forKeyPath:v8];

    return v6;
  }

  else
  {
    swift_endAccess();
    return [objc_allocWithZone(SCNMaterial) init];
  }
}

id sub_10018C324(uint64_t a1)
{
  v2 = [objc_opt_self() planeWithWidth:0.01 height:0.01];
  v3 = sub_10018C1EC(a1);
  [v3 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100018630(0, &qword_1004AF720, SCNMaterial_ptr);
  if (swift_dynamicCast())
  {
    v4 = v7;
  }

  else
  {
    v4 = [objc_allocWithZone(SCNMaterial) init];
  }

  [v2 setFirstMaterial:v4];

  v5 = [objc_opt_self() nodeWithGeometry:v2];
  return v5;
}

void sub_10018C468(unsigned __int8 *a1, uint64_t a2, void *a3, double a4)
{
  v7 = *a1;
  if (qword_1004A03E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_1004AD220 + 2))
  {
    sub_10019C35C(v8);
    if (v9)
    {
      swift_endAccess();
      if (a2)
      {
        goto LABEL_8;
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
LABEL_8:
  v10 = sub_10018C324(v7);
  [v10 setOpacity:a4];
  if (a2)
  {
    swift_unknownObjectRetain();
    v11 = [v10 geometry];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 firstMaterial];

      if (v13)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v14 = _bridgeAnythingToObjectiveC<A>(_:)();
        v15 = [objc_opt_self() materialPropertyWithContents:v14];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v16 = String._bridgeToObjectiveC()();
        [v13 setValue:v15 forKey:v16];
      }
    }

    swift_unknownObjectRelease();
  }

  v17 = v10;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void sub_10018C6F8(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  if (v12)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = *(*(a1 + 48) + (__clz(__rbit64(v12)) | (v15 << 6)));
      sub_10018C468(&v16, a2, a3, a4);
      if (v4)
      {
        break;
      }

      v12 &= v12 - 1;
      v14 = v15;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {
        goto LABEL_11;
      }

      v12 = *(v9 + 8 * v15);
      ++v14;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

unint64_t sub_10018C804(unint64_t result)
{
  if (result >= 0xE)
  {
    return 14;
  }

  return result;
}

uint64_t sub_10018C814()
{
  v0 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v0 - 8);
  v1 = [objc_opt_self() mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 pathForResource:v2 ofType:v3];

  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String.Encoding.utf8.getter();
    v5 = String.init(contentsOfFile:encoding:)();

    return v5;
  }

  else
  {
    __break(1u);

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_10018C98C(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004AD2D0, &qword_1003E0928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10018C9F4()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_10018CA54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10018CA6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10018CAB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

double *sub_10018CB04(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = roundf(v2 / 3.0);
  if ((LODWORD(v3) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v3 <= -9.2234e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= 9.2234e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = _swiftEmptyArrayStorage;
  v7 = [objc_allocWithZone(SCNNode) init];
  v4 = v7;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_12:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_100187A64(a1, &v7, v3, &v8);
  v5 = v8;

  return v5;
}

uint64_t sub_10018CC70()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t getEnumTagSinglePayload for ShaderCache.Material(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShaderCache.Material(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10018CE70()
{
  result = qword_1004AD2E8;
  if (!qword_1004AD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD2E8);
  }

  return result;
}

uint64_t sub_10018CF18(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_10018CF74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_10018CFE8()
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v1 = *(&xmmword_1004D4AE8 + 1);
    qword_1004D4FC0 = Contexts.PrivateQueue.init(_:)();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10018D068@<X0>(void *a1@<X8>)
{
  if (qword_1004A03F0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4FC0;
  *a1 = qword_1004D4FC0;

  return v2;
}

uint64_t sub_10018D0D8(void **a1, void **a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_10018D1E0(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_10018D1E0(v2, v3, v4, v5);
}

unint64_t sub_10018D164(uint64_t a1)
{
  result = sub_10018D18C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10018D18C()
{
  result = qword_1004AD3B0;
  if (!qword_1004AD3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD3B0);
  }

  return result;
}

uint64_t sub_10018D1E0(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v7 = a1;
    type metadata accessor for ScreenPoint();
    v8 = a3;
    v9 = v7;
    LOBYTE(v7) = static NSObject.== infix(_:_:)();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  if (a2)
  {
    if (a4)
    {
      type metadata accessor for WorldPoint();
      v10 = a4;
      v11 = a2;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_10018D2E4()
{
  result = qword_1004AD3B8;
  if (!qword_1004AD3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD3B8);
  }

  return result;
}

void sub_10018D338(unsigned __int8 a1, __n128 a2)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v2 = *Float.piDiv2.unsafeMutableAddressor();
      SIMD3<>.up.unsafeMutableAddressor();
      v3 = 0.5;
    }

    else
    {
      v2 = *Float.piDiv2.unsafeMutableAddressor();
      SIMD3<>.up.unsafeMutableAddressor();
      v3 = -0.5;
    }

    __sincosf_stret(v2 * v3);
  }

  else if (a1)
  {
    vmulq_f32(*SIMD3<>.up.unsafeMutableAddressor(), 0);
  }

  else
  {
    SIMD3<>.up.unsafeMutableAddressor();
  }
}

void sub_10018D3EC()
{
  if ([objc_opt_self() jasperAvailable])
  {
    v0 = [objc_opt_self() standardUserDefaults];
    Defaults.divisionsEnabled.unsafeMutableAddressor();

    v1 = String._bridgeToObjectiveC()();

    v2 = [v0 BOOLForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  byte_1004D4FC8 = v2;
}

id sub_10018D4A8()
{
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  PublishedValue.wrappedValue.getter();

  result = sub_1000983B8();
  byte_1004D4FC9 = result == 1;
  return result;
}

uint64_t sub_10018D528()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 0.0127;
  if (byte_1004D4FC9)
  {
    v0 = 0.01;
  }

  dword_1004D4FCC = LODWORD(v0);
  return result;
}

float sub_10018D5A0()
{
  if (qword_1004A0408 != -1)
  {
    swift_once();
  }

  result = *&dword_1004D4FCC * 0.25;
  *&dword_1004D4FD0 = *&dword_1004D4FCC * 0.25;
  return result;
}

uint64_t sub_10018D60C()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 10;
  if (!byte_1004D4FC9)
  {
    v0 = 1;
  }

  qword_1004D4FD8 = v0;
  return result;
}

uint64_t sub_10018D670()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 0.35;
  if (byte_1004D4FC9)
  {
    v0 = 0.6;
  }

  dword_1004D4FE0 = LODWORD(v0);
  return result;
}

uint64_t sub_10018D6F4(uint64_t a1, float *a2)
{
  if (qword_1004A0400 != -1)
  {
    v3 = a2;
    result = swift_once();
    a2 = v3;
  }

  v2 = 0.3048;
  if (byte_1004D4FC9)
  {
    v2 = 0.1;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10018D778()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 12;
  if (byte_1004D4FC9)
  {
    v0 = 5;
  }

  qword_1004D4FE8 = v0;
  return result;
}

uint64_t sub_10018D7E0()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 24;
  if (byte_1004D4FC9)
  {
    v0 = 10;
  }

  qword_1004D4FF0 = v0;
  return result;
}

id sub_10018D848()
{
  result = [objc_opt_self() systemFontOfSize:100.0 weight:UIFontWeightSemibold];
  qword_1004D4FF8 = result;
  return result;
}

id sub_10018D898()
{
  result = [objc_opt_self() whiteColor];
  qword_1004D5000 = result;
  return result;
}

void sub_10018D8D4()
{
  SCNVector3.init(_:_:_:)(0.0001, 0.0001, 0.0001);
  * infix(_:_:)();
  if (qword_1004A0400 != -1)
  {
    swift_once();
  }

  * infix(_:_:)();
  dword_1004D5008 = v0;
  *algn_1004D500C = v1;
  dword_1004D5010 = v2;
}

uint64_t sub_10018D998()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 0.1;
  if (byte_1004D4FC9)
  {
    v0 = 0.5;
  }

  dword_1004D5014 = LODWORD(v0);
  return result;
}

uint64_t sub_10018DA28()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 0.2;
  if (!byte_1004D4FC9)
  {
    v0 = 0.25;
  }

  dword_1004D5020 = LODWORD(v0);
  return result;
}