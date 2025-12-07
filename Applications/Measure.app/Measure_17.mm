unint64_t sub_10016398C(unsigned __int8 a1, unsigned __int8 a2, char a3)
{
  v3 = 0x1010101010102;
  if (a1 > 3u)
  {
    if (a1 != 6)
    {
      if (a1 == 5)
      {
LABEL_14:
        v3 = 0x20100010100;
        return v3 >> (8 * a3);
      }

      while (1)
      {
LABEL_9:
        while (a2 <= 2u)
        {
          if (a2 - 1 >= 2)
          {
            return v3 >> (8 * a3);
          }
        }

        if (a2 > 4u)
        {
          break;
        }

        if (a2 != 4)
        {
          goto LABEL_12;
        }
      }

      if (a2 == 5)
      {
        goto LABEL_14;
      }
    }

    v3 = 0x2010101010100;
    return v3 >> (8 * a3);
  }

  if (a1 - 1 < 2)
  {
    goto LABEL_9;
  }

  if (a1)
  {
LABEL_12:
    v3 = 0x10102010100;
  }

  return v3 >> (8 * a3);
}

void sub_100163A34(unint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a3 + 16) <= a4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = objc_opt_self();
  v8 = [v7 yellowColor];
  v9 = [objc_allocWithZone(CAShapeLayer) init];
  v10 = [objc_allocWithZone(UIBezierPath) init];
  CGPoint.init(_:)();
  [v10 moveToPoint:?];
  CGPoint.init(_:)();
  [v10 addLineToPoint:?];
  v11 = [v10 CGPath];
  [v9 setPath:v11];

  [v9 setLineWidth:1.0];
  v12 = [v8 CGColor];
  [v9 setStrokeColor:v12];

  v13 = [v7 clearColor];
  v14 = [v13 CGColor];

  [v9 setFillColor:v14];
  v15 = [a2 layer];
  [v15 addSublayer:v9];

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_7:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

void sub_100163CA8(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  v6 = *(a3[2] + 16);
  if (!v6)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = objc_opt_self();
  v8 = [v7 yellowColor];
  v9 = [objc_allocWithZone(CAShapeLayer) init];
  v10 = [objc_allocWithZone(UIBezierPath) init];
  CGPoint.init(_:)();
  [v10 moveToPoint:?];
  CGPoint.init(_:)();
  [v10 addLineToPoint:?];
  v11 = [v10 CGPath];
  [v9 setPath:v11];

  [v9 setLineWidth:1.0];
  v12 = [v8 CGColor];
  [v9 setStrokeColor:v12];

  v13 = [v7 clearColor];
  v14 = [v13 CGColor];

  [v9 setFillColor:v14];
  v15 = [a2 layer];
  [v15 addSublayer:v9];

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_7:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

double sub_100163F28@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 24);

  return result;
}

double sub_100163F38@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 208);

  return result;
}

double sub_100163F48@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 272);

  return result;
}

void sub_100163F58(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_100163FE4(void *a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v35 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v33);
  v34 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v32 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v39 = _swiftEmptyArrayStorage;
  sub_10000F974(&qword_1004ABEB0, &qword_1003DF258);
  swift_allocObject();
  v2[8] = CurrentValueSubject.init(_:)();
  KeyPath = swift_getKeyPath();
  v12 = sub_10000F974(&unk_1004A2520, &unk_1003D73A0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v13 = qword_1004D5058;
  v14 = *(v12 + 272);
  swift_retain_n();
  v3[9] = v14(KeyPath, v13);
  v15 = swift_getKeyPath();
  v16 = *(sub_10000F974(&qword_1004A7530, &unk_1003D58B0) + 272);

  v3[10] = v16(v15, v13);
  v17 = swift_getKeyPath();
  v18 = *(sub_10000F974(&unk_1004A1940, &unk_1003D65A0) + 272);

  v3[11] = v18(v17, v13);
  v19 = swift_getKeyPath();
  v20 = *(sub_10000F974(&unk_1004A3F40, &qword_1003D74C0) + 272);

  v3[12] = v20(v19, v13);
  v21 = swift_getKeyPath();
  v22 = sub_10000F974(&unk_1004ABEB8, &qword_1003DF8A8);
  v3[13] = (*(v22 + 272))(v21, v13);
  v23 = swift_getKeyPath();
  v24 = sub_10000F974(&qword_1004A3F80, &qword_1003D8258);
  v3[14] = (*(v24 + 272))(v23, v13);
  v3[16] = 0;
  v39 = 0uLL;
  sub_10000F974(&qword_1004ABEC8, &qword_1003DF8E0);
  swift_allocObject();
  v3[18] = Synchronized.init(wrappedValue:)();
  v3[19] = _swiftEmptyArrayStorage;
  *&v39 = _swiftEmptyArrayStorage;
  sub_10000F974(&unk_1004ABED0, &qword_1003DF8E8);
  swift_allocObject();
  v3[20] = Synchronized.init(wrappedValue:)();
  v3[23] = 0x3FF0000000000000;
  v3[15] = a1;
  v31[1] = sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
  *&v39 = 0;
  *(&v39 + 1) = 0xE000000000000000;
  v25 = a1;
  _StringGuts.grow(_:)(19);
  if (qword_1004A01C0 != -1)
  {
    swift_once();
  }

  v26 = xmmword_1004D4B58;

  v39 = v26;
  v27._object = 0x800000010040A1C0;
  v27._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v27);
  v31[0] = *(&v39 + 1);
  v28 = v38;
  (*(v9 + 16))(v32, v38, v8);
  *&v39 = _swiftEmptyArrayStorage;
  sub_100165990(&qword_1004A4020, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000F974(&qword_1004ABEE0, &qword_1003DB8B0);
  sub_100038C44(&qword_1004A4030, &qword_1004ABEE0, &qword_1003DB8B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v36 + 104))(v35, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v37);
  v3[17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_1004A0390 != -1)
  {
    swift_once();
  }

  v3[21] = qword_1004ABC00;
  v3[22] = 1;
  v40 = &type metadata for Configurations.Default;
  v41 = &protocol witness table for Configurations.Default;
  v29 = StateObserver.init(configuration:)();
  (*(v9 + 8))(v28, v8);
  return v29;
}

uint64_t sub_100164684(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v47 = a3;
  v45 = a2;
  v54 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v51 = (v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v44 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v43 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchTimeInterval();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = (v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for DispatchTime();
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v37 - v15;
  v17 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 32) = 0;
  v37[1] = sub_100018630(0, &qword_1004ABE70, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100165990(&qword_1004ABE78, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_10000F974(&qword_1004ABE80, &qword_1003DF7B8);
  sub_100038C44(&qword_1004ABE88, &qword_1004ABE80, &qword_1003DF7B8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v18 + 8))(v20, v17);
  v22 = v38;
  *(v38 + 16) = v21;
  swift_getObjectType();
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v39 + 8);
  v24 = v40;
  v23(v13, v40);
  *v11 = 0;
  v25 = v41;
  v26 = v42;
  (*(v41 + 104))(v11, enum case for DispatchTimeInterval.nanoseconds(_:), v42);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  swift_unknownObjectRelease();
  (*(v25 + 8))(v11, v26);
  v23(v16, v24);
  swift_getObjectType();
  aBlock[4] = v45;
  aBlock[5] = v47;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046FDB8;
  v27 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v28 = v43;
  static DispatchQoS.unspecified.getter();
  v29 = v44;
  sub_10015D7B0();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v27);
  swift_unknownObjectRelease();
  (*(v49 + 8))(v29, v50);
  (*(v46 + 8))(v28, v48);

  v31 = v53;
  v30 = v54;
  *(v22 + 24) = v54;
  v33 = v51;
  v32 = v52;
  *v51 = v30;
  v34 = v30;
  (*(v32 + 104))(v33, enum case for DispatchPredicate.onQueue(_:), v31);
  v35 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  result = (*(v32 + 8))(v33, v31);
  if (v34)
  {
    if ((*(v22 + 32) & 1) == 0)
    {
      *(v22 + 32) = 1;
      swift_getObjectType();
      OS_dispatch_source.resume()();
    }

    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100164D54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100164D9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100164DF4(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  return result;
}

void sub_100164E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a2;
  v82 = a3;
  v77 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v75);
  v74 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = &qword_1004D4000;
  v65 = v6;
  v66 = v4;
  if (v8)
  {
    v10 = 0;
    v68 = (v4 + 8);
    v69 = &v96;
    v67 = (v6 + 8);
    v71 = v8 - 1;
    v72 = (a1 + 32);
    v11 = _swiftEmptyArrayStorage;
    v70 = v8;
    while (1)
    {
      v12 = *(a1 + 8 * v10 + 32);
      if (v71 == v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = v10 + 1;
      }

      v14 = v72[v13];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1000689B8(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_1000689B8((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      *&v11[v16 + 4] = vsub_f32(vadd_f32(v12, v14), v12);
      if (qword_1004A0180 == -1)
      {
        v17 = v9[345];
        if (!v17)
        {
          goto LABEL_19;
        }
      }

      else
      {
        swift_once();
        v17 = v9[345];
        if (!v17)
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      v18 = *(v17 + 80);
      if (v18)
      {
        sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
        v19 = v18;
        v79 = static OS_dispatch_queue.main.getter();
        v20 = swift_allocObject();
        v20[2] = v78;
        v20[3] = v19;
        v20[4] = a1;
        v20[5] = v10;
        *&v97 = sub_10016593C;
        *(&v97 + 1) = v20;
        *&v95 = _NSConcreteStackBlock;
        *(&v95 + 1) = 1107296256;
        *&v96 = sub_100041180;
        *(&v96 + 1) = &unk_100470060;
        v21 = _Block_copy(&v95);
        *&v80 = v11 + 4;
        v22 = a1;
        v23 = v21;
        v73 = v19;

        v24 = v74;
        static DispatchQoS.unspecified.getter();
        *&v95 = _swiftEmptyArrayStorage;
        sub_100165990(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
        sub_100038C44(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0);
        v25 = v11;
        v27 = v76;
        v26 = v77;
        v8 = v70;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v28 = v79;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v29 = v23;
        a1 = v22;
        _Block_release(v29);

        v30 = v27;
        v11 = v25;
        (*v68)(v30, v26);
        v31 = v24;
        v9 = &qword_1004D4000;
        (*v67)(v31, v75);
      }

      MeasureCore.shared.unsafeMutableAddressor();
      if (!*(v11 + 2))
      {
        goto LABEL_49;
      }

      sub_100164DF4(&v95);
      v110 = v101;
      v111 = v102;
      v112 = v103;
      v106 = v97;
      v107 = v98;
      v108 = v99;
      v109 = v100;
      v104 = v95;
      v105 = v96;

      MeasureCore.hitTest(screenPoint:frame:orientation:context:planeTypes:)();

      if (v93)
      {
        break;
      }

      if (v8 == ++v10)
      {
        goto LABEL_21;
      }
    }

LABEL_46:
  }

  else
  {
LABEL_20:
    v11 = _swiftEmptyArrayStorage;
LABEL_21:
    static SIMD2<>.average(_:)();
    v33 = v32;
    v92 = _swiftEmptyArrayStorage;

    sub_100103D98(v34);

    sub_100103D98(v35);
    v36 = 0;
    v37 = v92;
    v38 = *(v92 + 2);
    v68 = (v66 + 8);
    v69 = &v84;
    v67 = (v65 + 8);
    v79 = v38 - 1;
    v39 = vdup_n_s32(0x3E19999Au);
    LODWORD(v40) = 1.0;
    v80 = v40;
    v70 = v92;
    v64 = v38;
    while (1)
    {
      v41 = v36;
      v42 = swift_allocObject();
      *(v42 + 16) = _swiftEmptyArrayStorage;
      v43 = (v42 + 16);
      if (v38)
      {
        break;
      }

LABEL_43:
      LODWORD(v63) = 2.0;
      v80 = v63;
      v36 = 1;
      if (v41)
      {

        return;
      }
    }

    v71 = v42;
    LODWORD(v66) = v41;
    if (*(v37 + 2))
    {
      v44 = 0;
      while (1)
      {
        v45 = *&v37[v44 + 4];
        swift_beginAccess();
        v46 = *v43;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v43 = v46;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v46 = sub_1000689B8(0, *(v46 + 2) + 1, 1, v46);
          *v43 = v46;
        }

        v49 = *(v46 + 2);
        v48 = *(v46 + 3);
        if (v49 >= v48 >> 1)
        {
          v46 = sub_1000689B8((v48 > 1), v49 + 1, 1, v46);
        }

        v50 = vadd_f32(v45, vmul_n_f32(vmul_f32(vsub_f32(v33, v45), v39), *&v80));
        *(v46 + 2) = v49 + 1;
        v46[v49 + 4] = *&v50;
        *v43 = v46;
        swift_endAccess();
        if (qword_1004A0180 == -1)
        {
          v51 = v9[345];
          if (!v51)
          {
            goto LABEL_50;
          }
        }

        else
        {
          swift_once();
          v51 = v9[345];
          if (!v51)
          {
            goto LABEL_50;
          }
        }

        v52 = *(v51 + 80);
        if (v52)
        {
          if (*(*v43 + 2) >= 2uLL)
          {
            sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
            v53 = v52;
            v73 = static OS_dispatch_queue.main.getter();
            v54 = swift_allocObject();
            v54[2] = v78;
            v54[3] = v53;
            v54[4] = v71;
            *&v85 = sub_1001658B0;
            *(&v85 + 1) = v54;
            *&v83 = _NSConcreteStackBlock;
            *(&v83 + 1) = 1107296256;
            *&v84 = sub_100041180;
            *(&v84 + 1) = &unk_100470010;
            v55 = _Block_copy(&v83);

            v72 = v53;

            v56 = v74;
            static DispatchQoS.unspecified.getter();
            *&v83 = _swiftEmptyArrayStorage;
            sub_100165990(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
            sub_100038C44(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0);
            v57 = v76;
            v58 = v11;
            v59 = v77;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v60 = v73;
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            v61 = v55;
            v9 = &qword_1004D4000;
            _Block_release(v61);

            v62 = v59;
            v11 = v58;
            v37 = v70;
            (*v68)(v57, v62);
            (*v67)(v56, v75);
          }
        }

        MeasureCore.shared.unsafeMutableAddressor();
        if (!*(*v43 + 2))
        {
          break;
        }

        sub_100164DF4(&v83);
        v101 = v89;
        v102 = v90;
        v103 = v91;
        v97 = v85;
        v98 = v86;
        v99 = v87;
        v100 = v88;
        v95 = v83;
        v96 = v84;

        MeasureCore.hitTest(screenPoint:frame:orientation:context:planeTypes:)();

        if (v94)
        {

          goto LABEL_46;
        }

        if (v79 == v44)
        {

          v38 = v64;
          LOBYTE(v41) = v66;
          goto LABEL_43;
        }

        if (++v44 >= *(v37 + 2))
        {
          goto LABEL_47;
        }
      }
    }

    else
    {
LABEL_47:
      __break(1u);
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }
}

uint64_t sub_1001657FC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10016585C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001658D8(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

double sub_100165958@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 24);

  return result;
}

double sub_100165970@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 272);

  return result;
}

double sub_100165980@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 208);

  return result;
}

uint64_t sub_100165990(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100165ABC(uint64_t a1)
{
  v3 = objc_opt_self();
  [v3 begin];
  v4 = 0.0;
  [v3 setAnimationDuration:0.0];
  v5 = OBJC_IVAR____TtC7Measure13RectangleFill_rectangleFill;
  v6 = [*(v1 + OBJC_IVAR____TtC7Measure13RectangleFill_rectangleFill) geometry];
  if (!v6)
  {
    goto LABEL_35;
  }

  v31 = v5;
  v32 = v1;
  v33 = v3;
  v30 = v6;
  v7 = [v6 materials];
  sub_100018630(0, &qword_1004AF720, SCNMaterial_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_34;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_34:

    v1 = v32;
    v3 = v33;
    v5 = v31;
LABEL_35:
    if ((a1 - 1) <= 8)
    {
      v4 = dbl_1003DF900[a1 - 1];
    }

    [*(v1 + v5) setOpacity:v4];

    [v3 commit];
    return;
  }

LABEL_4:
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = v8 & 0xC000000000000001;
    v12 = &off_100494000;
    v13 = &off_100494000;
    v34 = v9;
    while (1)
    {
      if (v11)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v8 + 8 * v10 + 32);
      }

      v17 = v16;
      v18 = [v16 v12[47]];
      if (a1 > 5)
      {
        if (a1 == 9)
        {
          if (qword_1004A05D0 != -1)
          {
            swift_once();
          }

          v15 = qword_1004D5148;
          goto LABEL_9;
        }

        if (a1 != 6)
        {
LABEL_29:
          v15 = [objc_opt_self() clearColor];
          goto LABEL_9;
        }

        if (qword_1004A07F8 != -1)
        {
          swift_once();
        }

        v19 = qword_1004D5370;
        v20 = *algn_1004D5378;
        if ((byte_1004D5380 & 1) == 0)
        {
LABEL_27:
          if (byte_1004AF8C0)
          {
            v14 = v20;
          }

          else
          {
            v14 = v19;
          }

          v15 = v14;
          goto LABEL_8;
        }

        v27 = byte_1004D5390;
        v28 = qword_1004D5388;
        v29 = byte_1004AF8C0;
        qword_1004D5370;
        v24 = v29;
        v25 = v28;
        v11 = v8 & 0xC000000000000001;
        v9 = v34;
        v26 = v27;
      }

      else
      {
        if (a1 != 5)
        {
          goto LABEL_29;
        }

        if (qword_1004A07F8 != -1)
        {
          swift_once();
        }

        v19 = qword_1004D5370;
        v20 = *algn_1004D5378;
        if ((byte_1004D5380 & 1) == 0)
        {
          goto LABEL_27;
        }

        v21 = byte_1004D5390;
        v22 = qword_1004D5388;
        v23 = byte_1004AF8C0;
        qword_1004D5370;
        v24 = v23;
        v25 = v22;
        v26 = v21;
        v11 = v8 & 0xC000000000000001;
        v9 = v34;
      }

      v15 = sub_10007836C(v24, v25, v26);
      sub_10009F954(v19, v20, 1);
LABEL_8:
      v12 = &off_100494000;
      v13 = &off_100494000;
LABEL_9:
      ++v10;
      [v18 v13[48]];

      if (v9 == v10)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
}

void sub_100165EA8(float32x4_t *a1, __n128 a2)
{
  v3 = v2;
  static SIMD3<>.average(_:)();
  v5 = a1[1].i64[0];
  if (!v5)
  {
    goto LABEL_15;
  }

  sub_1000A2774(0, v5, 0);
  v6 = 0;
  do
  {
    SCNVector3.init(_:)();
    v11 = _swiftEmptyArrayStorage[2];
    v10 = _swiftEmptyArrayStorage[3];
    if (*&v11 >= *&v10 >> 1)
    {
      v13 = v7;
      v14 = v8;
      v15 = v9;
      sub_1000A2774((*&v10 > 1uLL), *&v11 + 1, 1);
      v9 = v15;
      v8 = v14;
      v7 = v13;
    }

    ++v6;
    *&_swiftEmptyArrayStorage[2] = *&v11 + 1;
    v12 = _swiftEmptyArrayStorage + 3 * *&v11;
    v12[8] = v7;
    v12[9] = v8;
    v12[10] = v9;
  }

  while (v5 != v6);
  if (v5 == 2)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v5 == 1)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v16 = a1[2];
  v17 = vsubq_f32(a1[3], v16);
  v18 = vsubq_f32(a1[4], v16);
  v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), vnegq_f32(v17)), v18, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
  v20 = vmulq_f32(v19, v19);
  v20.f32[0] = sqrtf(v20.f32[1] + (v20.f32[2] + v20.f32[0]));
  v21.i32[0] = vextq_s8(v19, v19, 8uLL).u32[0];
  v21.i32[1] = v19.i32[0];
  *&v22 = vdiv_f32(v21, vdup_lane_s32(*v20.f32, 0));
  *(&v22 + 2) = v19.f32[1] / v20.f32[0];
  HIDWORD(v22) = 0;
  v54 = v22;
  sub_10000F974(&qword_1004A6AF0, &qword_1003DA4F8);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1003D5730;
  SCNVector3.init(_:)();
  *(v23 + 32) = v24;
  *(v23 + 36) = v25;
  *(v23 + 40) = v26;
  SCNVector3.init(_:)();
  *(v23 + 44) = v27;
  *(v23 + 48) = v28;
  *(v23 + 52) = v29;
  sub_100018630(0, &qword_1004A9DF8, SCNGeometrySource_ptr);
  isa = SCNGeometrySource.init(vertices:)(_swiftEmptyArrayStorage).super.isa;
  v31 = SCNGeometrySource.init(normals:)(v23).super.isa;
  v32 = sub_1001665B4(byte_100465208, 0x18uLL);
  v34 = v33;
  v35 = Data._bridgeToObjectiveC()().super.isa;
  v36 = [objc_opt_self() geometryElementWithData:v35 primitiveType:0 primitiveCount:2 bytesPerIndex:4];

  sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1003D6280;
  *(v37 + 32) = isa;
  *(v37 + 40) = v31;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1003D56B0;
  *(v38 + 32) = v36;
  v39 = isa;
  v40 = v31;
  v41 = v36;
  v42 = Array._bridgeToObjectiveC()().super.isa;

  sub_100018630(0, &qword_1004A9E00, SCNGeometryElement_ptr);
  v43 = Array._bridgeToObjectiveC()().super.isa;

  v44 = [objc_opt_self() geometryWithSources:v42 elements:v43];

  v45 = sub_10018C1EC(3);
  [v45 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100018630(0, &qword_1004AF720, SCNMaterial_ptr);
  if (swift_dynamicCast())
  {
    v46 = v55;
  }

  else
  {
    v46 = [objc_allocWithZone(SCNMaterial) init];
  }

  [v44 setFirstMaterial:{v46, v54}];

  v47 = OBJC_IVAR____TtC7Measure13RectangleFill_rectangleFill;
  [*&v3[OBJC_IVAR____TtC7Measure13RectangleFill_rectangleFill] removeFromParentNode];
  v48 = [objc_opt_self() nodeWithGeometry:v44];
  v49 = *&v3[v47];
  *&v3[v47] = v48;
  v50 = v48;

  [v50 setRenderingOrder:-1];
  v51 = *&v3[v47];
  v52 = [v3 state];
  v53 = 0.0;
  if ((v52 - 1) <= 8)
  {
    v53 = dbl_1003DF900[(v52 - 1)];
  }

  [v51 setOpacity:v53];

  [v3 addChildNode:*&v3[v47]];
  SCNVector3.init(_:)();
  [v3 setPosition:?];

  sub_100038FD4(v32, v34);
}

uint64_t sub_1001664FC(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_1001665B4(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1001664FC(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

void sub_100166664()
{
  if (*(v0 + 216))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(v0 + 520))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(v0 + 516) >= *(v0 + 212))
  {
    memcpy(__dst, (v0 + 384), sizeof(__dst));
    memcpy(__src, (v0 + 384), sizeof(__src));
    nullsub_1();
    memcpy(v7, (v0 + 704), sizeof(v7));
    sub_1000C1C28(__dst, v10);
    sub_100018F04(v7, &qword_1004AA300, &qword_1003DDED0);
    memcpy((v0 + 704), __src, 0x130uLL);
    memcpy(v8, (v0 + 80), sizeof(v8));
    v1 = (v0 + 80);
  }

  else
  {
    memcpy(__dst, (v0 + 80), sizeof(__dst));
    memcpy(__src, (v0 + 80), sizeof(__src));
    nullsub_1();
    memcpy(v7, (v0 + 704), sizeof(v7));
    sub_1000C1C28(__dst, v10);
    sub_100018F04(v7, &qword_1004AA300, &qword_1003DDED0);
    memcpy((v0 + 704), __src, 0x130uLL);
    memcpy(v8, (v0 + 384), sizeof(v8));
    v1 = (v0 + 384);
  }

  memcpy(v9, v1, sizeof(v9));
  nullsub_1();
  memcpy(v10, (v0 + 1008), sizeof(v10));
  sub_1000C1C28(v8, &v4);
  sub_100018F04(v10, &qword_1004AA300, &qword_1003DDED0);
  memcpy((v0 + 1008), v9, 0x130uLL);
  memcpy(v10, (v0 + 1008), sizeof(v10));
  if (sub_10012B5C4(v10) == 1)
  {
    goto LABEL_13;
  }

  if (v10[17])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v2 = *(&v10[16] + 1);
  memcpy(v9, (v0 + 704), sizeof(v9));
  if (sub_10012B5C4(v9) == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v9[17] & 1) == 0)
  {
    v3 = v2 / *(&v9[16] + 1);
    *(v0 + 1316) = v2 / *(&v9[16] + 1);
    *(v0 + 1313) = v3 >= 0.7;
    return;
  }

LABEL_16:
  __break(1u);
}

void sub_1001668AC(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v3 = 0;
  v85 = 0;
  if ((*(v1 + 40) & 1) == 0)
  {
    v3 = [objc_allocWithZone(UIView) initWithFrame:{*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32)}];
    v85 = _swiftEmptyArrayStorage;
    v4 = *(v1 + 688);
    v5 = objc_opt_self();
    v6 = [(float32x4_t *)v5 redColor];
    sub_10004DB70(v4, v6);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_64;
    }

    goto LABEL_3;
  }

  while (2)
  {
    memcpy(__dst, (v2 + 704), 0x130uLL);
    if (sub_10012B5C4(__dst) == 1 || (memcpy(v83, (v2 + 1008), sizeof(v83)), sub_10012B5C4(v83) == 1))
    {

      *(v2 + 1328) = 0;
      *(v2 + 1336) = 1;
LABEL_60:

      return;
    }

    v9 = *(v2 + 248);
    if (__dst[21])
    {
      if ((*(v2 + 248) & 1) == 0)
      {
LABEL_12:
        v10 = 688;
        v11 = 696;
        goto LABEL_17;
      }
    }

    else
    {
      if (*&__dst[20] != *(v2 + 240))
      {
        v9 = 1;
      }

      if (v9)
      {
        goto LABEL_12;
      }
    }

    v10 = 696;
    v11 = 688;
LABEL_17:
    v5 = __dst[3];
    if (!__dst[3])
    {
      goto LABEL_68;
    }

    v12 = *(v2 + v11);
    v72 = v2;
    v73 = v3;
    v13 = *(v2 + v10);
    v14 = *(__dst[3] + 16);
    if (!v14)
    {

      v16 = _swiftEmptyArrayStorage;
      if (v12[1].i64[0])
      {
        goto LABEL_24;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v86 = _swiftEmptyArrayStorage;

    sub_1000A2570(0, v14, 0);
    v16 = v86;
    v17 = v5 + 2;
    v18 = *(v86 + 2);
    do
    {
      v19 = *v17;
      v86 = v16;
      v20 = *(v16 + 3);
      if (v18 >= v20 >> 1)
      {
        v81 = v19;
        v82 = v15;
        sub_1000A2570((v20 > 1), v18 + 1, 1);
        v19 = v81;
        v15 = v82;
        v16 = v86;
      }

      v21 = vmulq_f32(v19, v19);
      *&v22 = v21.f32[2] + vaddv_f32(*v21.f32);
      *v21.f32 = vrsqrte_f32(v22);
      *v21.f32 = vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32)));
      v23 = vmulq_n_f32(v19, vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32))).f32[0]);
      v23.i32[3] = v15;
      *(v16 + 2) = v18 + 1;
      *&v16[2 * v18 + 4] = v23;
      ++v17;
      ++v18;
      --v14;
    }

    while (v14);
    if (!v12[1].i64[0])
    {
      goto LABEL_54;
    }

LABEL_24:
    v77 = v12[2];

    v2 = v13[1].i64[0];
    if (!v2)
    {
LABEL_55:

      v70 = 0;
LABEL_56:

      *(v72 + 1328) = v70;
      *(v72 + 1336) = 0;
      v71 = sub_10004DA58(v85, v73);
      if (!v71)
      {

        goto LABEL_60;
      }

      v5 = v71;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v72 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v72 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_58;
      }

      goto LABEL_66;
    }

    if (*(v16 + 2) < 2uLL)
    {
      __break(1u);
LABEL_66:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_58:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_60;
    }

    v74 = 0;
    v75 = 0;
    v27 = v77;
    v3 = v13 + 2;
    v76 = v5;
    while (1)
    {
      v28 = *v3;
      v30 = vsubq_f32(*v3, v27);
      v29 = COERCE_FLOAT(v3->i64[1]);
      v30.f32[2] = v29 - v77.f32[2];
      v31 = *(v16 + 4);
      v32 = vmulq_f32(v31, v30);
      v32.f32[0] = v32.f32[2] + vaddv_f32(*v32.f32);
      *&v26 = v77.f32[2] + vmuls_lane_f32(v32.f32[0], v31, 2);
      v33 = vadd_f32(*v27.f32, vmul_n_f32(*v31.f32, v32.f32[0]));
      v34 = 1;
      if (v32.f32[0] <= 0.0)
      {
        goto LABEL_34;
      }

      *v31.f32 = vsub_f32(*v28.f32, v33);
      v31.f32[2] = v29 - *&v26;
      v35 = vmulq_f32(v31, v31);
      v36 = sqrtf(v35.f32[2] + vaddv_f32(*v35.f32));
      if (v36 <= 0.0)
      {
        goto LABEL_34;
      }

      if (v5[1].i64[0] < 2uLL)
      {
        break;
      }

      v37 = vmulq_f32(v5[3], v5[3]);
      v34 = v36 >= sqrtf(v37.f32[2] + vaddv_f32(*v37.f32));
LABEL_34:
      v30.i32[3] = 0;
      v38 = *(v16 + 6);
      v39 = vmulq_f32(v30, v38);
      v39.f32[0] = v39.f32[2] + vaddv_f32(*v39.f32);
      *&v24 = v77.f32[2] + vmuls_lane_f32(v39.f32[0], v38, 2);
      v40 = vadd_f32(*v27.f32, vmul_n_f32(*v38.f32, v39.f32[0]));
      if (v39.f32[0] <= 0.0)
      {
        goto LABEL_45;
      }

      *v39.f32 = vsub_f32(*v28.f32, v40);
      v39.f32[2] = v29 - *&v24;
      v41 = vmulq_f32(v39, v39);
      v42 = sqrtf(v41.f32[2] + vaddv_f32(*v41.f32));
      if (v42 <= 0.0)
      {
        goto LABEL_45;
      }

      if (!v5[1].i64[0])
      {
        goto LABEL_62;
      }

      v43 = vmulq_f32(v5[2], v5[2]);
      if (v42 >= sqrtf(v43.f32[2] + vaddv_f32(*v43.f32)))
      {
        v34 = 1;
      }

      if (v34)
      {
        goto LABEL_45;
      }

      v75 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        goto LABEL_63;
      }

      if (v85)
      {
        v78 = v26;
        v79 = v24;
        v80 = v25;
        v44 = objc_opt_self();
        v45 = [v44 whiteColor];
        v46 = [v44 clearColor];
        type metadata accessor for MeasureCamera();
        static ComputedCameraProperties.shared.getter();
        static ComputedCameraProperties.shared.getter();
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        v47 = [objc_allocWithZone(CAShapeLayer) init];
        CGPoint.init(_:)();
        v50 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v48 startAngle:v49 endAngle:4.0 clockwise:{0.0, 6.28318531}];
        v51 = [v50 CGPath];
        [v47 setPath:v51];

        [v47 setLineWidth:1.0];
        v52 = [v45 CGColor];
        [v47 setStrokeColor:v52];

        v53 = [v46 CGColor];
        [v47 setFillColor:v53];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v74;
        v27 = v77;
        v24 = v79;
        v25 = v80;
        v26 = v78;
LABEL_45:
        if (v85)
        {
          v54 = objc_opt_self();
          v55 = [v54 purpleColor];
          type metadata accessor for MeasureCamera();
          static ComputedCameraProperties.shared.getter();
          static ComputedCameraProperties.shared.getter();
          static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
          static ComputedCameraProperties.shared.getter();
          static ComputedCameraProperties.shared.getter();
          static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
          v56 = [objc_allocWithZone(CAShapeLayer) init];
          v57 = [objc_allocWithZone(UIBezierPath) init];
          CGPoint.init(_:)();
          [v57 moveToPoint:?];
          CGPoint.init(_:)();
          [v57 addLineToPoint:?];
          v58 = [v57 CGPath];
          [v56 setPath:v58];

          [v56 setLineWidth:1.0];
          v59 = [v55 CGColor];
          [v56 setStrokeColor:v59];

          v60 = [v54 clearColor];
          v61 = [v60 CGColor];

          [v56 setFillColor:v61];
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (v85)
          {
            v62 = objc_opt_self();
            v63 = [v62 magentaColor];
            static ComputedCameraProperties.shared.getter();
            static ComputedCameraProperties.shared.getter();
            static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
            static ComputedCameraProperties.shared.getter();
            static ComputedCameraProperties.shared.getter();
            static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
            v64 = [objc_allocWithZone(CAShapeLayer) init];
            v65 = [objc_allocWithZone(UIBezierPath) init];
            CGPoint.init(_:)();
            [v65 moveToPoint:?];
            CGPoint.init(_:)();
            [v65 addLineToPoint:?];
            v66 = [v65 CGPath];
            [v64 setPath:v66];

            [v64 setLineWidth:1.0];
            v67 = [v63 CGColor];
            [v64 setStrokeColor:v67];

            v68 = [v62 clearColor];
            v69 = [v68 CGColor];

            [v64 setFillColor:v69];
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          v27 = v77;
          v5 = v76;
        }

        goto LABEL_29;
      }

      ++v74;
LABEL_29:
      ++v3;
      if (!--v2)
      {

        v70 = v75;
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_3:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v7 = *(v2 + 696);
    v8 = [(float32x4_t *)v5 greenColor];
    sub_10004DB70(v7, v8);

    if (v85)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      continue;
    }

    break;
  }

  __break(1u);
LABEL_68:
  __break(1u);
}

_BYTE *sub_100167594(_BYTE *result)
{
  if (!*result)
  {
    goto LABEL_6;
  }

  if (!*(*result + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result[224])
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

double *sub_10016760C(float32x4_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1].i64[0];
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    sub_1000A2570(0, v4, 0);
    result = _swiftEmptyArrayStorage;
    v7 = a1 + 2;
    v8 = *a3;
    while (v8)
    {
      if (!v8[1].i64[0])
      {
        __break(1u);
        break;
      }

      if (*(a3 + 224))
      {
        goto LABEL_12;
      }

      v9 = *v7;
      v10 = *(a3 + 208);
      v11.i64[0] = v10;
      v11.i64[1] = *(a3 + 216);
      v12 = v8[2];
      v20 = result;
      v14 = *(result + 2);
      v13 = *(result + 3);
      if (v14 >= v13 >> 1)
      {
        v18 = v11;
        v19 = *v7;
        v17 = v8[2];
        sub_1000A2570((v13 > 1), v14 + 1, 1);
        v12 = v17;
        v11 = v18;
        v9 = v19;
        result = v20;
      }

      v15 = vmulq_f32(vsubq_f32(v9, v12), v11);
      v15.f32[0] = v15.f32[2] + vaddv_f32(*v15.f32);
      v16 = vmuls_lane_f32(v15.f32[0], v11, 2);
      v11.i32[0] = v10;
      *v15.f32 = vsub_f32(*v9.f32, vmul_n_f32(*v11.f32, v15.f32[0]));
      v15.f32[2] = v9.f32[2] - v16;
      v15.i32[3] = 0;
      *(result + 2) = v14 + 1;
      *&result[2 * v14 + 4] = v15;
      ++v7;
      if (!--v4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

void sub_100167764(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *(&v46[1] + 8) = 0u;
  *(v46 + 8) = 0u;
  v46[2].i8[8] = 1;
  v46[3].i64[0] = _swiftEmptyArrayStorage;
  v46[3].i64[1] = _swiftEmptyArrayStorage;
  v46[4].i64[0] = _swiftEmptyArrayStorage;
  sub_10014952C(v50);
  memcpy(&v46[44], v50, 0x130uLL);
  memcpy(&v46[63], v50, 0x130uLL);
  v46[82].i16[0] = 0;
  v46[83].i64[0] = 0;
  *(v46[82].i64 + 4) = 0;
  v46[83].i8[8] = 1;
  v50[316] = 1;
  memset(&v46[84], 0, 76);
  v46[88].i8[12] = 1;
  v46[89].i64[0] = 0;
  v46[89].i8[8] = 0;
  v9 = v4[10].i8[8];
  if (*(v6 + 168))
  {
    if (v4[10].i8[8])
    {

      sub_1001494D8(v6);
      sub_1001494D8(v4);
LABEL_27:
      memcpy(__src, &v46[44], 0x130uLL);
      sub_100018F04(__src, &qword_1004AA300, &qword_1003DDED0);
      memcpy(__dst, &v46[63], 0x130uLL);
      sub_100018F04(__dst, &qword_1004AA300, &qword_1003DDED0);
      sub_100167EF4(v49);
LABEL_28:
      memcpy(v8, v49, 0x599uLL);
      return;
    }
  }

  else
  {
    if (*(v6 + 160) != *v4[10].i64)
    {
      v9 = 1;
    }

    if ((v9 & 1) == 0)
    {
      sub_1001494D8(v4);
      sub_1001494D8(v6);

      goto LABEL_27;
    }
  }

  if (*(v6 + 128))
  {
    goto LABEL_47;
  }

  if (v4[8].i8[0])
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (*(v6 + 232))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v4[14].i8[8])
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v10 = vsubq_f32(*(v6 + 112), v4[7]);
  v11 = vmulq_f32(v10, v10);
  if ((*(v6 + 228) + v4[14].f32[1]) < sqrtf(v11.f32[2] + vaddv_f32(*v11.f32)))
  {

    sub_1001494D8(v4);
    sub_1001494D8(v6);
    goto LABEL_27;
  }

  v40 = *(v6 + 112);
  v46[0].i64[0] = v2;
  if (v2)
  {
    v12 = v2;
    [v12 frame];
    v14 = v13;
    v16 = v15;
    [v12 frame];
    static CGSize.* infix(_:_:)();
    v46[0].i64[1] = v14;
    v46[1].i64[0] = v16;
    v46[1].i64[1] = v17;
    v46[2].i64[0] = v18;
    v46[2].i8[8] = 0;
  }

  v47 = *v6;
  v19 = v47;
  memcpy(&v46[5], v6, 0x130uLL);
  memcpy(&v46[24], v4, 0x130uLL);
  if (!v47)
  {
    goto LABEL_51;
  }

  v20 = v4->i64[0];
  sub_1000C1C28(v6, v49);
  sub_1000C1C28(v6, v49);
  sub_1000C1C28(v4, v49);
  sub_100167E84(&v47, v49);
  v21 = sub_10016760C(v19, v46, v6);
  sub_1001494D8(v6);
  sub_100018F04(&v47, &qword_1004AB4B0, &unk_1003DF950);
  v46[43].i64[0] = v21;
  if (!v20)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v41 = *(v6 + 208);
  v22 = *(v6 + 224);

  sub_1001494D8(v4);
  sub_1000C1C28(v6, v49);
  v23 = sub_10016760C(v20, v46, v6);
  sub_1001494D8(v6);
  sub_1001494D8(v6);

  v46[43].i64[1] = v23;
  if (v22)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v4[14].i8[0])
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v24 = vmulq_f32(v41, v4[13]);
  v24.f32[0] = v24.f32[2] + vaddv_f32(*v24.f32);
  v46[82].i8[9] = v24.f32[0] >= 0.8;
  if (v24.f32[0] < 0.8)
  {

    memcpy(__dst, &v46[5], 0x130uLL);
    sub_1001494D8(__dst);
    memcpy(v49, &v46[24], 0x130uLL);
    sub_1001494D8(v49);

    goto LABEL_27;
  }

  memcpy(v48, &v46[5], sizeof(v48));
  sub_100167594(v48);
  v26 = vsubq_f32(v40, v25);
  v27 = vmulq_f32(v26, v26);
  v46[82].i8[0] = sqrtf(v27.f32[2] + vaddv_f32(*v27.f32)) < 0.05;
  sub_100166664();
  if ((v46[17].i8[1] & 1) == 0 && !v46[36].i8[1])
  {
    if ((v46[8].i8[0] & 1) == 0)
    {
      if ((v46[27].i8[0] & 1) == 0)
      {
        v28 = vmulq_f32(v46[7], v46[26]);
        v29 = v28.f32[2] + vaddv_f32(*v28.f32);

LABEL_36:
        v39 = v29 >= 0.8;
        v46[82].i8[8] = v29 >= 0.8;
        if ((v46[82].i8[1] & 1) != 0 || v29 < 0.8)
        {
          v46[82].i8[11] = 0;
          v39 = v46[82].i8[0];
          if (v29 < 0.8)
          {
            v39 = 0;
          }
        }

        else
        {
          v46[82].i8[11] = v46[82].i8[0];
          if (v46[82].i8[0])
          {
            v46[83].i64[0] = 4;
            v46[83].i8[8] = 0;
          }

          else
          {
            v39 = 0;
          }
        }

        v46[89].i8[8] = v46[82].i8[1] & v39;
        memcpy(v43, v46, 0x599uLL);
        memcpy(__src, v46, 0x599uLL);
        nullsub_1();
        memcpy(__dst, v46, 0x599uLL);
        sub_100167EFC(v43, v49);
        sub_10014AA0C(__dst);
        memcpy(v49, __src, 0x599uLL);
        goto LABEL_28;
      }

      goto LABEL_57;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (!v46[6].i64[1])
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v30 = *(v46[6].i64[1] + 16);
  if (!v30)
  {
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if ((v46[27].i8[0] & 1) == 0)
  {
    if (v30 != 1)
    {
      v31 = *(v46[6].i64[1] + 32);
      v32 = *(v46[6].i64[1] + 48);
      v33 = vmulq_f32(v31, v31);
      v34 = vaddv_f32(*v33.f32);
      *v33.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v33.f32[2] + v34));
      *v33.f32 = vmul_f32(*v33.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v33.f32[2] + v34), vmul_f32(*v33.f32, *v33.f32)));
      v35 = vmulq_f32(vmulq_n_f32(v31, vmul_f32(*v33.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v33.f32[2] + v34), vmul_f32(*v33.f32, *v33.f32))).f32[0]), v46[26]);
      v36 = vmulq_f32(v32, v32);
      *&v37 = v36.f32[2] + vaddv_f32(*v36.f32);
      *v36.f32 = vrsqrte_f32(v37);
      *v36.f32 = vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32)));
      v38 = vmulq_f32(vmulq_n_f32(v32, vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32))).f32[0]), v46[26]);
      v42 = vadd_f32(vzip1_s32(*&vextq_s8(v35, v35, 8uLL), *&vextq_s8(v38, v38, 8uLL)), vadd_f32(vzip1_s32(*v35.i8, *v38.i8), vzip2_s32(*v35.i8, *v38.i8)));

      if (v42.f32[0] > v42.f32[1])
      {
        v29 = v42.f32[0];
      }

      else
      {
        v29 = v42.f32[1];
      }

      goto LABEL_36;
    }

    goto LABEL_46;
  }

LABEL_58:
  __break(1u);
}

uint64_t sub_100167E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004AB4B0, &unk_1003DF950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100167F34(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100167F60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1433))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100167FA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1432) = 0;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1433) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 1433) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100168174(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001681BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100168218(uint64_t a1)
{
  [*(v1 + 40) setState:a1];
  v63 = v1;
  v3 = *(v1 + 32);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v68 = a1;
  v10 = a1 - 1;
  v11 = &OBJC_IVAR____TtC7Measure11PointRender_state;
  v66 = v3;
  while (v7)
  {
    if (v10 > 8)
    {
LABEL_11:
      v12 = 1;
    }

    else
    {
LABEL_6:
      v12 = qword_1003DFAF0[v10];
    }

    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = *(*(v3 + 56) + 8 * (v14 | (v9 << 6)));
    v16 = *&v15[*v11];
    *&v15[*v11] = v12;
    if (v12 != v16)
    {
      v17 = v11;

      v18 = v15;
      sub_100133D20(v12);

      v11 = v17;
      v3 = v66;
    }
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v13);
    ++v9;
    if (v7)
    {
      v9 = v13;
      if (v10 <= 8)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  v19 = *(v63 + 8);
  v22 = *(v19 + 64);
  v21 = v19 + 64;
  v20 = v22;
  v23 = 1 << *(*(v63 + 8) + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;
  v64 = *(v63 + 8);

  v27 = 0;
  v67 = v10;
  while (v25)
  {
    if (v10 > 8)
    {
LABEL_25:
      v28 = 1;
    }

    else
    {
LABEL_20:
      v28 = qword_1003DFAF0[v10];
    }

    v30 = *(*(v64 + 56) + 8 * (__clz(__rbit64(v25)) | (v27 << 6)));
    v31 = OBJC_IVAR____TtC7Measure10LineRender_state;
    v32 = *&v30[OBJC_IVAR____TtC7Measure10LineRender_state];
    *&v30[OBJC_IVAR____TtC7Measure10LineRender_state] = v28;
    if (v32 == v28)
    {

      v33 = v30;
    }

    else
    {
      v34 = OBJC_IVAR____TtC7Measure10LineRender__needsRendering;
      v35 = v30[OBJC_IVAR____TtC7Measure10LineRender__needsRendering];

      v36 = v30;
      if (v35 != 1)
      {
        v37 = v36;
        v38 = sub_1000D2184();
        os_unfair_lock_lock(v38);
        v30[v34] = 1;
        os_unfair_lock_unlock(*&v37[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lock]);
        v28 = *&v30[v31];
      }
    }

    *&v30[v31] = v68;
    if (v28 != v68)
    {
      v39 = OBJC_IVAR____TtC7Measure10LineRender__needsRendering;
      if (v30[OBJC_IVAR____TtC7Measure10LineRender__needsRendering] != 1)
      {
        v40 = sub_1000D2184();
        os_unfair_lock_lock(v40);
        v30[v39] = 1;
        os_unfair_lock_unlock(*&v30[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lock]);
      }
    }

    v25 &= v25 - 1;
    sub_1000D34CC();

    v10 = v67;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v26)
    {

      v41 = *(v63 + 16);
      v44 = *(v41 + 64);
      v43 = v41 + 64;
      v42 = v44;
      v45 = 1 << *(*(v63 + 16) + 32);
      v46 = -1;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      v47 = v46 & v42;
      v48 = (v45 + 63) >> 6;
      v65 = *(v63 + 16);

      v49 = 0;
      while (v47)
      {
        if (v10 >= 9)
        {
LABEL_44:
          v50 = 1;
        }

        else
        {
LABEL_39:
          v50 = qword_1003DFAF0[v10];
        }

        v52 = *(*(v65 + 56) + 8 * (__clz(__rbit64(v47)) | (v49 << 6)));
        v53 = OBJC_IVAR____TtC7Measure10LineRender_state;
        v54 = *&v52[OBJC_IVAR____TtC7Measure10LineRender_state];
        *&v52[OBJC_IVAR____TtC7Measure10LineRender_state] = v50;
        if (v54 == v50)
        {

          v55 = v52;
        }

        else
        {
          v56 = OBJC_IVAR____TtC7Measure10LineRender__needsRendering;
          v57 = v52[OBJC_IVAR____TtC7Measure10LineRender__needsRendering];

          v58 = v52;
          if (v57 != 1)
          {
            v59 = v58;
            v60 = sub_1000D2184();
            os_unfair_lock_lock(v60);
            v52[v56] = 1;
            os_unfair_lock_unlock(*&v59[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lock]);
            v50 = *&v52[v53];
          }
        }

        *&v52[v53] = v68;
        if (v50 != v68)
        {
          v61 = OBJC_IVAR____TtC7Measure10LineRender__needsRendering;
          if (v52[OBJC_IVAR____TtC7Measure10LineRender__needsRendering] != 1)
          {
            v62 = sub_1000D2184();
            os_unfair_lock_lock(v62);
            v52[v61] = 1;
            os_unfair_lock_unlock(*&v52[OBJC_IVAR____TtC7Measure10LineRender____lazy_storage___lock]);
          }
        }

        v47 &= v47 - 1;
        sub_1000D34CC();

        v10 = v67;
      }

      while (1)
      {
        v51 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_57;
        }

        if (v51 >= v48)
        {

          return;
        }

        v47 = *(v43 + 8 * v51);
        ++v49;
        if (v47)
        {
          v49 = v51;
          if (v10 < 9)
          {
            goto LABEL_39;
          }

          goto LABEL_44;
        }
      }
    }

    v25 = *(v21 + 8 * v29);
    ++v27;
    if (v25)
    {
      v27 = v29;
      if (v10 <= 8)
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

void sub_1001686E0(void *a1)
{
  v3 = v1[5];
  [v3 worldTransform];
  [v3 removeFromParentNode];
  [a1 addChildNode:v3];
  [v3 setTransform:&v38];
  v4 = v1[4];
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(v4 + 56) + 8 * (v11 | (v10 << 6)));

      v13 = v12;
      [v13 worldTransform];
      [v13 removeFromParentNode];
      [a1 addChildNode:v13];
      v34 = v38;
      v35 = v39;
      v36 = v40;
      v37 = v41;
      [v13 setTransform:&v34];

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  v14 = v1[1];
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  while (v17)
  {
    v20 = v19;
LABEL_19:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = *(*(v14 + 56) + 8 * (v21 | (v20 << 6)));

    v23 = v22;
    [v23 worldTransform];
    [v23 removeFromParentNode];
    [a1 addChildNode:v23];
    v34 = v38;
    v35 = v39;
    v36 = v40;
    v37 = v41;
    [v23 setTransform:&v34];
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      v24 = v1[2];
      v25 = 1 << *(v24 + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      v27 = v26 & *(v24 + 64);
      v28 = (v25 + 63) >> 6;

      v29 = 0;
      while (v27)
      {
        v30 = v29;
LABEL_29:
        v31 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v32 = *(*(v24 + 56) + 8 * (v31 | (v30 << 6)));

        v33 = v32;
        [v33 worldTransform];
        [v33 removeFromParentNode];
        [a1 addChildNode:v33];
        v34 = v38;
        v35 = v39;
        v36 = v40;
        v37 = v41;
        [v33 setTransform:&v34];
      }

      while (1)
      {
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_34;
        }

        if (v30 >= v28)
        {

          return;
        }

        v27 = *(v24 + 64 + 8 * v30);
        ++v29;
        if (v27)
        {
          v29 = v30;
          goto LABEL_29;
        }
      }
    }

    v17 = *(v14 + 64 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_19;
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_100168AB4()
{
  v1 = v0;
  v2 = v0[5];
  v3 = [v2 parentNode];
  if (v3)
  {
    v4 = v3;
    SCNNode.removeAllChildren()();
  }

  [*&v2[OBJC_IVAR____TtC7Measure13RectangleFill_rectangleFill] removeFromParentNode];
  [v2 removeFromParentNode];
  v5 = v1[4];
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_11:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      [*(*(v5 + 56) + ((v11 << 9) | (8 * v12))) removeFromParentNode];
      if (!v8)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  v1[4] = _swiftEmptyDictionarySingleton;
  v13 = v1[1];
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  while (v16)
  {
    v19 = v18;
LABEL_21:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    [*(*(v13 + 56) + ((v19 << 9) | (8 * v20))) removeFromParentNode];
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      v1[1] = _swiftEmptyDictionarySingleton;
      v21 = v1[2];
      v22 = 1 << *(v21 + 32);
      v23 = -1;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      v24 = v23 & *(v21 + 64);
      v25 = (v22 + 63) >> 6;

      v26 = 0;
      while (v24)
      {
        v27 = v26;
LABEL_31:
        v28 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        [*(*(v21 + 56) + ((v27 << 9) | (8 * v28))) removeFromParentNode];
      }

      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_36;
        }

        if (v27 >= v25)
        {

          v1[2] = _swiftEmptyDictionarySingleton;
          return;
        }

        v24 = *(v21 + 64 + 8 * v27);
        ++v26;
        if (v24)
        {
          v26 = v27;
          goto LABEL_31;
        }
      }
    }

    v16 = *(v13 + 64 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_21;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_100168D60(void *a1)
{
  v2 = v1;
  sub_100018630(0, &qword_1004AE0D0, NSObject_ptr);
  v4 = *(v1 + 40);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10016979C;
    *(v6 + 24) = v5;
    v73 = sub_100169674;
    v74 = v6;
    aBlock = _NSConcreteStackBlock;
    v70 = 1107296256;
    v71 = sub_1001696A0;
    v72 = &unk_100470288;
    v7 = _Block_copy(&aBlock);
    v68 = a1;

    v8 = [v4 childNodesPassingTest:v7];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_63;
    }

    sub_100018630(0, &qword_1004A1318, SCNNode_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
      goto LABEL_64;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      if (i == 1)
      {
        break;
      }

      v12 = *(v2 + 16);
      v62 = v2;
      v63 = v12 + 64;
      v13 = 1 << *(v12 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v12 + 64);
      v2 = (v13 + 63) >> 6;
      v65 = v12;

      v16 = 0;
      while (v15)
      {
        v17 = v68;
LABEL_16:
        v19 = *(*(v65 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        if (static NSObject.== infix(_:_:)())
        {
LABEL_54:

LABEL_56:

          return;
        }

        v20 = swift_allocObject();
        *(v20 + 16) = v17;
        v21 = v17;
        v22 = swift_allocObject();
        *(v22 + 16) = sub_100169704;
        *(v22 + 24) = v20;
        v73 = sub_100169774;
        v74 = v22;
        aBlock = _NSConcreteStackBlock;
        v70 = 1107296256;
        v71 = sub_1001696A0;
        v72 = &unk_100470300;
        v23 = _Block_copy(&aBlock);
        v24 = v21;

        v25 = [v19 childNodesPassingTest:v23];
        _Block_release(v23);
        LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

        if (v23)
        {
          goto LABEL_61;
        }

        v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v26 >> 62)
        {
          v27 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v15 &= v15 - 1;

        if (v27 == 1)
        {
          goto LABEL_56;
        }
      }

      v17 = v68;
      while (1)
      {
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          goto LABEL_59;
        }

        if (v18 >= v2)
        {
          break;
        }

        v15 = *(v63 + 8 * v18);
        ++v16;
        if (v15)
        {
          v16 = v18;
          goto LABEL_16;
        }
      }

      v28 = *(v62 + 8);
      v29 = *(v28 + 64);
      v64 = v28 + 64;
      v30 = 1 << *(v28 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & v29;
      v2 = (v30 + 63) >> 6;
      v66 = *(v62 + 8);

      v33 = 0;
      while (v32)
      {
LABEL_31:
        v19 = *(*(v66 + 56) + ((v33 << 9) | (8 * __clz(__rbit64(v32)))));
        if (static NSObject.== infix(_:_:)())
        {
          goto LABEL_54;
        }

        v35 = swift_allocObject();
        *(v35 + 16) = v17;
        v36 = v17;
        v37 = swift_allocObject();
        *(v37 + 16) = sub_10016979C;
        *(v37 + 24) = v35;
        v73 = sub_100169774;
        v74 = v37;
        aBlock = _NSConcreteStackBlock;
        v70 = 1107296256;
        v71 = sub_1001696A0;
        v72 = &unk_100470378;
        v38 = _Block_copy(&aBlock);
        v39 = v36;

        v40 = [v19 childNodesPassingTest:v38];
        _Block_release(v38);
        LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

        if (v38)
        {
          goto LABEL_62;
        }

        v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v41 >> 62)
        {
          v42 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v32 &= v32 - 1;

        v17 = v68;
        if (v42 == 1)
        {
          goto LABEL_56;
        }
      }

      while (1)
      {
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v34 >= v2)
        {

          v43 = *(v62 + 32);
          v45 = *(v43 + 64);
          v2 = v43 + 64;
          v44 = v45;
          v46 = 1 << *(*(v62 + 32) + 32);
          v47 = -1;
          if (v46 < 64)
          {
            v47 = ~(-1 << v46);
          }

          v48 = v47 & v44;
          v49 = (v46 + 63) >> 6;
          v67 = *(v62 + 32);

          v50 = 0;
          while (v48)
          {
LABEL_46:
            v52 = *(*(v67 + 56) + ((v50 << 9) | (8 * __clz(__rbit64(v48)))));
            if (static NSObject.== infix(_:_:)())
            {

              goto LABEL_56;
            }

            v53 = swift_allocObject();
            *(v53 + 16) = v17;
            v54 = swift_allocObject();
            *(v54 + 16) = sub_10016979C;
            *(v54 + 24) = v53;
            v73 = sub_100169774;
            v74 = v54;
            aBlock = _NSConcreteStackBlock;
            v70 = 1107296256;
            v71 = sub_1001696A0;
            v72 = &unk_1004703F0;
            v55 = _Block_copy(&aBlock);
            v56 = v17;
            v57 = v55;
            v58 = v56;

            v59 = [v52 childNodesPassingTest:v57];
            _Block_release(v57);
            LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

            if (v57)
            {
              __break(1u);
              return;
            }

            v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (v60 >> 62)
            {
              v61 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v17 = v68;
            v48 &= v48 - 1;

            if (v61 == 1)
            {
              goto LABEL_56;
            }
          }

          while (1)
          {
            v51 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              goto LABEL_60;
            }

            if (v51 >= v49)
            {

              return;
            }

            v48 = *(v2 + 8 * v51);
            ++v50;
            if (v48)
            {
              v50 = v51;
              goto LABEL_46;
            }
          }
        }

        v32 = *(v64 + 8 * v34);
        ++v33;
        if (v32)
        {
          v33 = v34;
          goto LABEL_31;
        }
      }

LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      ;
    }
  }
}

uint64_t sub_10016963C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001696A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

double sub_1001696EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1001697A0(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
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
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_10016C050(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_100169894(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
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
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_10016C26C(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_100169988(uint64_t a1, void *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v39 = a2;
  while (v6)
  {
LABEL_11:
    v11 = __clz(__rbit64(v6)) | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);
    v16 = *&v15[OBJC_IVAR____TtC7Measure11PointRender_point];

    v41 = v15;
    [v16 position];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *a2;
    v42 = *a2;
    *a2 = 0x8000000000000000;
    v25 = sub_100198230(v14, v13);
    v27 = *(v24 + 16);
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_23;
    }

    v31 = v26;
    if (*(v24 + 24) < v30)
    {
      sub_1000B9738(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_100198230(v14, v13);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v33 = v42;
      if (v31)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v38 = v25;
    sub_1000BF470();
    v25 = v38;
    v33 = v42;
    if (v31)
    {
LABEL_4:
      v9 = (v33[7] + 12 * v25);
      *v9 = v18;
      v9[1] = v20;
      v9[2] = v22;
      goto LABEL_5;
    }

LABEL_17:
    v33[(v25 >> 6) + 8] |= 1 << v25;
    v34 = (v33[6] + 16 * v25);
    *v34 = v14;
    v34[1] = v13;
    v35 = (v33[7] + 12 * v25);
    *v35 = v18;
    v35[1] = v20;
    v35[2] = v22;
    v36 = v33[2];
    v29 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v29)
    {
      goto LABEL_24;
    }

    v33[2] = v37;

LABEL_5:
    v6 &= v6 - 1;
    a2 = v39;
    *v39 = v33;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100169C0C(uint64_t a1, void *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v44 = a2;
  while (v6)
  {
LABEL_11:
    v11 = __clz(__rbit64(v6)) | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);

    v46 = v15;
    SCNVector3.init(_:)();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    SCNVector3.init(_:)();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *a2;
    v47 = *a2;
    *a2 = 0x8000000000000000;
    v30 = sub_100198230(v14, v13);
    v32 = *(v29 + 16);
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_23;
    }

    v36 = v31;
    if (*(v29 + 24) < v35)
    {
      sub_1000B99F4(v35, isUniquelyReferenced_nonNull_native);
      v30 = sub_100198230(v14, v13);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v38 = v47;
      if (v36)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v43 = v30;
    sub_1000BF5F0();
    v30 = v43;
    v38 = v47;
    if (v36)
    {
LABEL_4:
      v9 = (v38[7] + 24 * v30);
      *v9 = v17;
      v9[1] = v19;
      v9[2] = v21;
      v9[3] = v23;
      v9[4] = v25;
      v9[5] = v27;
      goto LABEL_5;
    }

LABEL_17:
    v38[(v30 >> 6) + 8] |= 1 << v30;
    v39 = (v38[6] + 16 * v30);
    *v39 = v14;
    v39[1] = v13;
    v40 = (v38[7] + 24 * v30);
    *v40 = v17;
    v40[1] = v19;
    v40[2] = v21;
    v40[3] = v23;
    v40[4] = v25;
    v40[5] = v27;
    v41 = v38[2];
    v34 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v34)
    {
      goto LABEL_24;
    }

    v38[2] = v42;

LABEL_5:
    v6 &= v6 - 1;
    a2 = v44;
    *v44 = v38;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100169EB8(__n128 a1, float32x4_t a2)
{
  sub_10000F974(&qword_1004A7558, &qword_1003DFBD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5730;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 0;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v5;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 0;
  sub_10019AC90(inited);
  swift_setDeallocating();
  sub_10000F974(&qword_1004A7560, &unk_1003DF400);
  swift_arrayDestroy();
  v57 = v2;
  v6 = *(v2 + 56);
  SCNVector3.init(_:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  SCNVector3.init(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  LODWORD(v20) = v8;
  LODWORD(v21) = v10;
  LODWORD(v22) = v12;
  LODWORD(v23) = v14;
  LODWORD(v24) = v16;
  LODWORD(v25) = v18;
  v26 = [v6 hitTestWithSegmentFromPoint:isa toPoint:v20 options:{v21, v22, v23, v24, v25}];

  sub_100018630(0, &qword_1004AB4C8, SCNHitTestResult_ptr);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v27 >> 62))
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_3;
    }

LABEL_26:

    return 0;
  }

LABEL_25:
  v28 = _CocoaArrayWrapper.endIndex.getter();
  if (!v28)
  {
    goto LABEL_26;
  }

LABEL_3:
  v56 = v27 & 0xC000000000000001;
  swift_beginAccess();
  v29 = 0;
  v52 = v27 + 32;
  v53 = v27 & 0xFFFFFFFFFFFFFF8;
  v54 = v28;
  v55 = v27;
  while (1)
  {
    if (v56)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v29 >= *(v53 + 16))
      {
        goto LABEL_24;
      }

      v30 = *(v52 + 8 * v29);
    }

    v61 = v30;
    v31 = __OFADD__(v29, 1);
    v32 = v29 + 1;
    if (v31)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v58 = v32;
    v33 = *(v57 + 24);
    v36 = *(v33 + 64);
    v35 = v33 + 64;
    v34 = v36;
    v37 = 1 << *(*(v57 + 24) + 32);
    v38 = v37 < 64 ? ~(-1 << v37) : -1;
    v39 = v38 & v34;
    v40 = (v37 + 63) >> 6;
    v60 = *(v57 + 24);

    v41 = 0;
    if (v39)
    {
      break;
    }

    while (1)
    {
LABEL_15:
      v42 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v42 >= v40)
      {
        break;
      }

      v39 = *(v35 + 8 * v42);
      ++v41;
      if (v39)
      {
        goto LABEL_18;
      }
    }

    v27 = v55;
    v29 = v58;
    if (v58 == v54)
    {
      goto LABEL_26;
    }
  }

  while (1)
  {
    v42 = v41;
LABEL_18:
    v43 = __clz(__rbit64(v39)) | (v42 << 6);
    v59 = *(*(v60 + 48) + 16 * v43);
    v44 = *(v60 + 56) + 48 * v43;
    v45 = *(v44 + 16);
    v63 = *v44;
    v64 = v45;
    v65 = *(v44 + 32);
    v46 = *(v44 + 40);
    v66 = *(&v63 + 1);
    v67 = v45;
    v47 = *(&v65 + 1);
    v68[0] = v65;

    sub_10006C92C(&v66, v62, &qword_1004AC010, &qword_1003DFBB8);
    sub_10006C92C(&v67, v62, &qword_1004AC010, &qword_1003DFBB8);
    sub_10006C92C(&v67 + 8, v62, &qword_1004AC008, &qword_1003DFBB0);
    sub_10006C92C(v68, v62, &qword_1004AC018, &unk_1003DFBC0);
    v48 = v47;
    v49 = [v61 node];
    sub_100168D60(v49);
    v27 = v50;

    if (v27)
    {
      break;
    }

    v39 &= v39 - 1;

    v41 = v42;
    if (!v39)
    {
      goto LABEL_15;
    }
  }

  sub_100018F04(&v66, &qword_1004AC010, &qword_1003DFBB8);
  sub_100018F04(&v67, &qword_1004AC010, &qword_1003DFBB8);
  sub_100018F04(&v67 + 8, &qword_1004AC008, &qword_1003DFBB0);
  sub_100018F04(v68, &qword_1004AC018, &unk_1003DFBC0);

  return v59;
}

void sub_10016A400(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 24);
  if (!*(v8 + 16) || (v9 = sub_100198230(a2, a3), (v10 & 1) == 0))
  {
    swift_endAccess();
    return;
  }

  v11 = (*(v8 + 56) + 48 * v9);
  v12 = v11[1];
  v34 = *v11;
  v35 = v12;
  v36 = v11[2];
  v38 = *(&v34 + 1);
  v39 = v12;
  v13 = *(&v36 + 1);
  v40[0] = v36;
  swift_endAccess();
  if (v34 == a1)
  {
    sub_10006C92C(&v38, v37, &qword_1004AC010, &qword_1003DFBB8);
    sub_10006C92C(&v39, v37, &qword_1004AC010, &qword_1003DFBB8);
    sub_10006C92C(&v39 + 8, v37, &qword_1004AC008, &qword_1003DFBB0);
    sub_10006C92C(v40, v37, &qword_1004AC018, &unk_1003DFBC0);
    v14 = *(&v36 + 1);
  }

  else
  {
    sub_10006C92C(&v38, v37, &qword_1004AC010, &qword_1003DFBB8);
    sub_10006C92C(&v39, v37, &qword_1004AC010, &qword_1003DFBB8);
    sub_10006C92C(&v39 + 8, v37, &qword_1004AC008, &qword_1003DFBB0);
    sub_10006C92C(v40, v37, &qword_1004AC018, &unk_1003DFBC0);
    v15 = qword_1004A0238;
    v16 = *(&v36 + 1);
    if (v15 != -1)
    {
      swift_once();
    }

    v37[0]._countAndFlagsBits = 0;
    v37[0]._object = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v37[0]._countAndFlagsBits = 0x636552646C726F57;
    v37[0]._object = 0xEF20656C676E6174;
    v17._countAndFlagsBits = a2;
    v17._object = a3;
    String.append(_:)(v17);
    v18._object = 0x800000010040A390;
    v18._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v18);
    v19._countAndFlagsBits = MeasureObjectState.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 544175136;
    v20._object = 0xE400000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = MeasureObjectState.description.getter();
    String.append(_:)(v21);

    Log.default(_:isPrivate:)(v37[0], 0);
  }

  swift_beginAccess();
  v23 = sub_10016B69C(v33, a2, a3);
  object = v22->_object;
  if (object)
  {
    if (v22->_countAndFlagsBits != a1)
    {
      v37[0]._countAndFlagsBits = v22->_countAndFlagsBits;
      v37[0]._object = object;
      v25 = v22[2];
      v37[1] = v22[1];
      v37[2] = v25;
      v26 = v22;
      sub_100168218(a1);
      v22 = v26;
    }

    v22->_countAndFlagsBits = a1;
    (v23)(v33, 0);
  }

  else
  {
    (v23)(v33, 0);
  }

  swift_endAccess();
  v27 = [v13 state];
  if (v27 == 6)
  {
    v28 = *(v4 + 56);
    v29 = [v13 parentNode];
    if (!v29)
    {
LABEL_20:
      sub_1001686E0(v28);
      goto LABEL_21;
    }
  }

  else
  {
    if (v27 != 5)
    {
      goto LABEL_21;
    }

    v28 = *(v4 + 64);
    v29 = [v13 parentNode];
    if (!v29)
    {
      goto LABEL_20;
    }
  }

  v30 = v29;
  sub_100018630(0, &qword_1004A1318, SCNNode_ptr);
  v31 = v28;
  v32 = static NSObject.== infix(_:_:)();

  if ((v32 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  sub_100018F04(&v38, &qword_1004AC010, &qword_1003DFBB8);
  sub_100018F04(&v39, &qword_1004AC010, &qword_1003DFBB8);
  sub_100018F04(&v39 + 8, &qword_1004AC008, &qword_1003DFBB0);
  sub_100018F04(v40, &qword_1004AC018, &unk_1003DFBC0);
}

void sub_10016A890(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = (*((swift_isaMask & *a1) + 0xB8))();
  v10 = v9;
  swift_beginAccess();
  v11 = *(v3 + 24);
  if (!*(v11 + 16))
  {

    goto LABEL_10;
  }

  v12 = sub_100198230(v8, v10);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_10:
    swift_endAccess();
    return;
  }

  v44 = a2;
  v45 = a3;
  v15 = (*(v11 + 56) + 48 * v12);
  v16 = v15[1];
  v51 = *v15;
  v52 = v4;
  v17 = v15[2];
  v19 = v15[4];
  v18 = v15[5];
  v65[0] = v15[3];
  v48 = v65[0];
  swift_endAccess();
  v20 = objc_opt_self();

  sub_10006C92C(v65, &aBlock, &qword_1004AC008, &qword_1003DFBB0);

  v47 = v18;
  [v20 begin];
  v50 = v20;
  [v20 setAnimationDuration:0.0];
  v57 = swift_allocObject();
  *(v57 + 16) = _swiftEmptyDictionarySingleton;

  sub_100169988(v21, (v57 + 16));

  v56 = swift_allocObject();
  *(v56 + 16) = _swiftEmptyDictionarySingleton;
  v22 = *((swift_isaMask & *a1) + 0x230);
  v23 = v22();
  sub_1001697A0(v23, (v56 + 16));

  v55 = swift_allocObject();
  *(v55 + 16) = _swiftEmptyDictionarySingleton;

  sub_100169C0C(v24, (v55 + 16));

  v54 = swift_allocObject();
  *(v54 + 16) = _swiftEmptyDictionarySingleton;
  v25 = v22();
  sub_100169894(v25, (v54 + 16));

  v53 = swift_allocObject();
  *(v53 + 16) = _swiftEmptyDictionarySingleton;
  v26 = v17;

  sub_100169C0C(v27, (v53 + 16));

  v28 = swift_allocObject();
  *(v28 + 16) = _swiftEmptyDictionarySingleton;
  v29 = (*((swift_isaMask & *a1) + 0x248))();
  sub_100169894(v29, (v28 + 16));

  v46 = objc_opt_self();
  v30 = swift_allocObject();
  v30[2] = v57;
  v30[3] = v55;
  v30[4] = v53;
  v30[5] = 0x3FE0000000000000;
  v30[6] = a1;
  v30[7] = v56;
  v30[8] = v51;
  v30[9] = v16;
  v30[10] = v26;
  v30[11] = v48;
  v30[12] = v19;
  v30[13] = v47;
  v30[14] = v54;
  v30[15] = v28;
  v63 = sub_10016DF88;
  v64 = v30;
  aBlock = _NSConcreteStackBlock;
  v60 = 1107296256;
  v61 = sub_1000D1C58;
  v62 = &unk_1004704B8;
  v49 = _Block_copy(&aBlock);

  sub_10006C92C(v65, v58, &qword_1004AC008, &qword_1003DFBB0);

  v31 = v47;

  v32 = a1;

  v33 = [v46 customActionWithDuration:v49 actionBlock:0.5];
  _Block_release(v49);
  v34 = (*((swift_isaMask & *v32) + 0xD0))();
  v35 = 1.0;
  if (v34 == 5)
  {
    v35 = 3.0;
  }

  [v33 setSpeed:v35];
  [v33 setTimingMode:1];
  v36 = *(v52 + 56);
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 actionForKey:v37];

  if (!v38 || (v38, v34 == 5))
  {
    v39 = v34 == 5;
    v40 = String._bridgeToObjectiveC()();
    v41 = swift_allocObject();
    *(v41 + 16) = v44;
    *(v41 + 24) = v45;
    *(v41 + 32) = v39;
    *(v41 + 40) = v32;
    *(v41 + 48) = v52;
    v63 = sub_10016E02C;
    v64 = v41;
    aBlock = _NSConcreteStackBlock;
    v60 = 1107296256;
    v61 = sub_100041180;
    v62 = &unk_100470508;
    v42 = _Block_copy(&aBlock);
    v43 = v32;
    sub_100038EBC(v44, v45);

    [v36 runAction:v33 forKey:v40 completionHandler:v42];
    _Block_release(v42);
  }

  [v50 commit];

  sub_100018F04(v65, &qword_1004AC008, &qword_1003DFBB0);
}

unint64_t sub_10016AFDC(void *a1)
{
  v2 = v1;
  v3 = &swift_isaMask;
  v4 = *((swift_isaMask & *a1) + 0x230);
  result = v4();
  v6 = result;
  if (result >> 62)
  {
LABEL_26:
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
  }

  else
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v2;
  v44 = v4;
  if (v7)
  {
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = (*((*v3 & *v10) + 0x250))();
        if ((v12 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_26;
          }

          v13 = *(v12 + 32);
        }

        v14 = v13;

        v4 = v3;
        v16 = (*((*v3 & *v14) + 0xB8))(v15);
        v18 = v17;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100067C24(0, *(v9 + 2) + 1, 1, v9);
        }

        v2 = *(v9 + 2);
        v19 = *(v9 + 3);
        if (v2 >= v19 >> 1)
        {
          v9 = sub_100067C24((v19 > 1), v2 + 1, 1, v9);
        }

        ++v8;

        *(v9 + 2) = v2 + 1;
        v20 = &v9[2 * v2];
        *(v20 + 4) = v16;
        *(v20 + 5) = v18;
        v3 = v4;
        if (v7 == v8)
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_20:

  v22 = *((*v3 & *a1) + 0x260);
  (v22)(__src, v21);
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_10012B5C4(__dst);
  if (result == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v56 = __dst[0];
  sub_10006C92C(&v56, v54, &qword_1004AB4B0, &unk_1003DF950);
  result = sub_100018F04(__src, &qword_1004AA300, &qword_1003DDED0);
  v23 = v56;
  if (!v56)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v24 = type metadata accessor for RectangleFill();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC7Measure13RectangleFill_state] = 1;
  *&v25[OBJC_IVAR____TtC7Measure13RectangleFill_currentPoints] = 0;
  v26 = OBJC_IVAR____TtC7Measure13RectangleFill_rectangleFill;
  *&v25[v26] = [objc_allocWithZone(SCNNode) init];
  v51.receiver = v25;
  v51.super_class = v24;
  v27 = objc_msgSendSuper2(&v51, "init");
  *(v27 + OBJC_IVAR____TtC7Measure13RectangleFill_state) = 1;
  sub_100165EA8(v23, v28);
  sub_100018F04(&v56, &qword_1004AB4B0, &unk_1003DF950);
  v29 = v27;
  v22(v53);
  memcpy(v54, v53, sizeof(v54));
  result = sub_10012B5C4(v54);
  if (result == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v30 = v54[8];
  result = sub_100018F04(v53, &qword_1004AA300, &qword_1003DDED0);
  if ((v30 & 1) == 0)
  {
    SCNVector3.init(_:)();
    [v29 setPosition:?];

    v31 = objc_opt_self();
    [v31 begin];
    [v31 setAnimationDuration:0.0];
    v32 = *(v45 + 56);
    SCNNode.removeAllChildren()();
    v49 = _swiftEmptyDictionarySingleton;
    v50 = _swiftEmptyDictionarySingleton;
    v48 = _swiftEmptyDictionarySingleton;
    v33 = v44();

    sub_10016E064(v33, v45, &v50, &v49);

    v35 = (*((swift_isaMask & *a1) + 0x248))(v34);

    sub_10016E168(v35, v45, &v48);

    [v32 addChildNode:v29];
    [v31 commit];
    v36 = [v29 state];
    *&v57 = v36;
    *(&v57 + 1) = v49;
    v58 = v48;
    v59 = v9;
    v60 = v50;
    v61 = v29;
    v37 = v29;

    sub_100168218(v36);

    v39 = (*((swift_isaMask & *a1) + 0xB8))(v38);
    v41 = v40;
    swift_beginAccess();
    v42 = v37;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v45 + 24);
    *(v45 + 24) = 0x8000000000000000;
    sub_1000BC118(&v57, v39, v41, isUniquelyReferenced_nonNull_native);

    *(v45 + 24) = v47;
    swift_endAccess();

    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();
    return swift_bridgeObjectRelease_n();
  }

LABEL_31:
  __break(1u);
  return result;
}

void (*sub_10016B69C(uint64_t **a1, uint64_t a2, uint64_t a3))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10016D6C8(v6, a2, a3);
  return sub_10016B724;
}

void (*sub_10016B728(uint64_t **a1, double a2))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10016D778(v4, a2);
  return sub_10016EEA8;
}

double sub_10016B7A8(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0xB8);
  v2 = v1();
  v4 = v3;
  swift_beginAccess();
  v5 = sub_10016B69C(v12, v2, v4);
  if (*(v6 + 8))
  {
    sub_100168AB4();
  }

  (v5)(v12, 0);
  swift_endAccess();

  v8 = (v1)(v7);
  v10 = v9;
  swift_beginAccess();
  sub_1000C685C(v8, v10, v12);
  swift_endAccess();
  sub_100018F04(v12, &qword_1004AC000, &qword_1003DFBA8);

  return result;
}

void sub_10016B8F8(void **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = objc_allocWithZone(type metadata accessor for PointRender());
  v8 = sub_100134D08(0, 1);
  v9 = *((swift_isaMask & *v6) + 0x250);
  v10 = v9();
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_17:
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_10;
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;

  (*((swift_isaMask & *v12) + 0x2B0))(v13);
  v66 = v15;
  v67 = v14;
  v65 = v16;

  simd_float4x4.position.getter();
  SCNVector3.init(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [*&v8[OBJC_IVAR____TtC7Measure11PointRender_point] setWorldPosition:?];
  LODWORD(v23) = v18;
  LODWORD(v24) = v20;
  LODWORD(v25) = v22;
  [*&v8[OBJC_IVAR____TtC7Measure11PointRender_pointPrime] setWorldPosition:{v23, v24, v25}];
  v26 = *(a2 + 56);
  v27 = (v9)([v26 addChildNode:v8]);
  v68 = v26;
  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v28 = *(v27 + 32);
  }

  v29 = v28;

  v31 = (*((swift_isaMask & *v29) + 0xB8))(v30);
  v33 = v32;

  v8 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = *a3;
  *a3 = 0x8000000000000000;
  sub_1000BBBCC(v8, v31, v33, isUniquelyReferenced_nonNull_native);

  *a3 = v69;
  v36 = (v9)(v35);
  if ((v36 & 0xC000000000000001) != 0)
  {
    goto LABEL_17;
  }

  if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_21;
  }

  v37 = *(v36 + 32);
LABEL_10:

  v39.n128_f64[0] = (*((swift_isaMask & *v37) + 0x2B0))(v38);
  v66 = v40;
  v67 = v39;
  v65 = v41;
  v63 = v42;

  v43 = v9();
  if ((v43 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v44 = *(v43 + 40);
LABEL_13:
    v45 = v44;

    v47.n128_f64[0] = (*((swift_isaMask & *v45) + 0x2B0))(v46);
    v61 = v48;
    v62 = v47;
    v59 = v50;
    v60 = v49;

    v51 = objc_allocWithZone(type metadata accessor for LineRender(0));
    sub_1000D21C4(1, 0, 0, 0, 0, v67, v66, v65, v63, v62, v61, v60, v59);
    v53 = v52;
    v54 = [v68 addChildNode:v52];
    v55 = (*((swift_isaMask & *v6) + 0xB8))(v54);
    v57 = v56;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v70 = *a4;
    *a4 = 0x8000000000000000;
    sub_1000BBD7C(v53, v55, v57, v58);

    *a4 = v70;

    return;
  }

LABEL_21:
  __break(1u);
}

void sub_10016BDD0(void **a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *((swift_isaMask & **a1) + 0x250);
  v7 = v6();
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_11;
    }

    v8 = *(v7 + 32);
  }

  v9 = v8;

  v11.n128_f64[0] = (*((swift_isaMask & *v9) + 0x2B0))(v10);
  v38 = v11;
  v36 = v13;
  v37 = v12;
  v35 = v14;

  v15 = v6();
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v16 = *(v15 + 40);
LABEL_7:
    v17 = v16;

    v19.n128_f64[0] = (*((swift_isaMask & *v17) + 0x2B0))(v18);
    v33 = v20;
    v34 = v19;
    v31 = v22;
    v32 = v21;

    v23 = objc_allocWithZone(type metadata accessor for LineRender(0));
    sub_1000D21C4(1, 1, 0, 0, 0, v38, v37, v36, v35, v34, v33, v32, v31);
    v25 = v24;
    v26 = [*(a2 + 56) addChildNode:v24];
    v27 = (*((swift_isaMask & *v5) + 0xB8))(v26);
    v29 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *a3;
    *a3 = 0x8000000000000000;
    sub_1000BBD7C(v25, v27, v29, isUniquelyReferenced_nonNull_native);

    *a3 = v39;
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_10016C050(void **a1, uint64_t *a2)
{
  v3 = *((swift_isaMask & **a1) + 0x250);
  v4 = v3();
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_11;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  v8 = (*((swift_isaMask & *v6) + 0xB8))(v7);
  v10 = v9;

  v11 = v3();
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 32);
LABEL_7:
    v13 = v12;

    (*((swift_isaMask & *v13) + 0x2B0))(v14);

    simd_float4x4.position.getter();
    SCNVector3.init(_:)();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *a2;
    *a2 = 0x8000000000000000;
    sub_1000BC718(v8, v10, isUniquelyReferenced_nonNull_native, v16, v18, v20);

    *a2 = v22;

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_10016C26C(void **a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = (*((swift_isaMask & **a1) + 0xB8))();
  v6 = v5;
  v7 = *((swift_isaMask & *v3) + 0x250);
  v8 = v7();
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_11;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  (*((swift_isaMask & *v10) + 0x2B0))(v11);

  simd_float4x4.position.getter();
  v12 = SCNVector3.init(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = (v7)(v12);
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v20 = *(v19 + 40);
LABEL_7:
    v21 = v20;

    (*((swift_isaMask & *v21) + 0x2B0))(v22);

    simd_float4x4.position.getter();
    SCNVector3.init(_:)();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *a2;
    *a2 = 0x8000000000000000;
    v30[0] = v14;
    v30[1] = v16;
    v30[2] = v18;
    v30[3] = v24;
    v30[4] = v26;
    v30[5] = v28;
    sub_1000BC8A0(v30, v4, v6, isUniquelyReferenced_nonNull_native);

    *a2 = v31;

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_10016C4FC(double a1, double a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t *a9, char *a10, uint64_t a11)
{
  swift_beginAccess();
  if (*(a4[2] + 16) == 4)
  {
    swift_beginAccess();
    if (*(*(a5 + 16) + 16) == 4)
    {
      v18 = swift_beginAccess();
      if (*(*(a6 + 16) + 16) == 2)
      {
        v19 = a1 / a2;
        v74 = _swiftEmptyDictionarySingleton;
        v69 = a7;
        v66 = *((swift_isaMask & *a7) + 0x230);
        v20 = v66(v18);
        v21 = v20;
        if (v20 >> 62)
        {
          goto LABEL_58;
        }

        for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v67 = a9;
          v70 = a5;
          v19 = fmin(v19, 1.0);
          if (i)
          {
            break;
          }

          a5 = 0;
LABEL_16:

          v28 = v66(v27);
          a8 = v28;
          if (v28 >> 62)
          {
            a4 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            a4 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v21 = v67[1];
          v77 = v67[2];
          v78[0] = v21;
          v29 = v67[3];
          v30 = v67[4];
          v75 = v30;
          v76 = v29;
          v31 = v67[5];
          sub_10006C92C(v78, v73, &qword_1004AC010, &qword_1003DFBB8);
          sub_10006C92C(&v77, v73, &qword_1004AC010, &qword_1003DFBB8);
          sub_10006C92C(&v76, v73, &qword_1004AC008, &qword_1003DFBB0);
          sub_10006C92C(&v75, v73, &qword_1004AC018, &unk_1003DFBC0);
          v68 = v31;
          if (a4)
          {
            v32 = 0;
            a9 = (a8 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if ((a8 & 0xC000000000000001) != 0)
              {
                v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v32 >= *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_55;
                }

                v33 = *(a8 + 8 * v32 + 32);
              }

              v34 = v33;
              v35 = (v32 + 1);
              if (__OFADD__(v32, 1))
              {
                break;
              }

              v73[0] = v33;
              sub_10016E268(v73, v21, v30, &v74, (v70 + 16), a10 + 2, v19);

              ++v32;
              if (v35 == a4)
              {
                goto LABEL_27;
              }
            }

LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

LABEL_27:
          sub_100018F04(v78, &qword_1004AC010, &qword_1003DFBB8);
          sub_100018F04(&v77, &qword_1004AC010, &qword_1003DFBB8);
          sub_100018F04(&v76, &qword_1004AC008, &qword_1003DFBB0);
          sub_100018F04(&v75, &qword_1004AC018, &unk_1003DFBC0);

          v36 = (*((swift_isaMask & *v69) + 0x248))();
          v37 = v36;
          if (v36 >> 62)
          {
            v38 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a8 = v77;
          a9 = &qword_1004AC010;
          sub_10006C92C(v78, v73, &qword_1004AC010, &qword_1003DFBB8);
          sub_10006C92C(&v77, v73, &qword_1004AC010, &qword_1003DFBB8);
          sub_10006C92C(&v76, v73, &qword_1004AC008, &qword_1003DFBB0);
          sub_10006C92C(&v75, v73, &qword_1004AC018, &unk_1003DFBC0);
          a10 = v68;
          if (!v38)
          {
LABEL_38:
            sub_100018F04(v78, &qword_1004AC010, &qword_1003DFBB8);
            v41 = v76;
            sub_100018F04(&v77, &qword_1004AC010, &qword_1003DFBB8);
            sub_100018F04(&v76, &qword_1004AC008, &qword_1003DFBB0);
            sub_100018F04(&v75, &qword_1004AC018, &unk_1003DFBC0);

            sub_10000F974(&qword_1004A3E38, &qword_1003D7FA0);
            v42 = swift_allocObject();
            *(v42 + 16) = xmmword_1003D5230;
            v43 = v41[2];
            if (v43)
            {
              v44 = v74;
              if (v74[2])
              {
                v45 = v42;
                v46 = v41[4];
                v47 = v41[5];

                sub_100198230(v46, v47);
                v49 = v48;

                if (v49)
                {
                  SIMD3<>.init(_:)();
                  *(v45 + 32) = v50;
                  if (v43 != 1)
                  {
                    if (v44[2])
                    {
                      v51 = v41[6];
                      v52 = v41[7];

                      sub_100198230(v51, v52);
                      v54 = v53;

                      if (v54)
                      {
                        SIMD3<>.init(_:)();
                        *(v45 + 48) = v55;
                        if (v43 >= 3)
                        {
                          if (v44[2])
                          {
                            v56 = v41[8];
                            v57 = v41[9];

                            sub_100198230(v56, v57);
                            v59 = v58;

                            if (v59)
                            {
                              SIMD3<>.init(_:)();
                              *(v45 + 64) = v60;
                              if (v43 != 3)
                              {
                                if (v44[2])
                                {
                                  v61 = v41[10];
                                  v62 = v41[11];

                                  sub_100198230(v61, v62);
                                  v64 = v63;

                                  if (v64)
                                  {
                                    SIMD3<>.init(_:)();
                                    *(v45 + 80) = v65;
                                    sub_100165EA8(v45, v65);
                                    swift_setDeallocating();
                                    swift_deallocClassInstance();

                                    return;
                                  }

LABEL_72:
                                  __break(1u);
                                  return;
                                }

LABEL_71:
                                __break(1u);
                                goto LABEL_72;
                              }

LABEL_70:
                              __break(1u);
                              goto LABEL_71;
                            }

LABEL_69:
                            __break(1u);
                            goto LABEL_70;
                          }

LABEL_68:
                          __break(1u);
                          goto LABEL_69;
                        }

LABEL_67:
                        __break(1u);
                        goto LABEL_68;
                      }

LABEL_66:
                      __break(1u);
                      goto LABEL_67;
                    }

LABEL_65:
                    __break(1u);
                    goto LABEL_66;
                  }

LABEL_64:
                  __break(1u);
                  goto LABEL_65;
                }

LABEL_63:
                __break(1u);
                goto LABEL_64;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_63;
          }

          v39 = 0;
          v21 = v37 & 0xC000000000000001;
          while (1)
          {
            if (v21)
            {
              v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_57;
              }

              v40 = *(v37 + 8 * v39 + 32);
            }

            a4 = v40;
            a9 = (v39 + 1);
            if (__OFADD__(v39, 1))
            {
              break;
            }

            v73[0] = v40;
            sub_10016E968(v73, a8, (a6 + 16), (a11 + 16), v19);

            ++v39;
            if (a9 == v38)
            {
              goto LABEL_38;
            }
          }

LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          ;
        }

        v23 = 0;
        a5 = 0;
        a9 = (v21 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_53;
            }

            v24 = *(v21 + 8 * v23 + 32);
          }

          v25 = v24;
          v26 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          v78[0] = v24;
          sub_10016CCB4(v78, &v74, a4 + 2, (a8 + 16), v19);

          ++v23;
          if (v26 == i)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }
  }
}

void sub_10016CCB4(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, double a5)
{
  v8 = *((swift_isaMask & **a1) + 0x250);
  v9 = v8();
  v10 = v9;
  v54 = a4;
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }

    v11 = *(v9 + 32);
  }

  v12 = v11;

  v52 = (*((swift_isaMask & *v12) + 0xB8))(v13);
  v10 = v14;

  v15 = v8();
  if ((v15 & 0xC000000000000001) == 0)
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v15 + 32);
      goto LABEL_7;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v17 = v16;
  v51 = a2;

  v19 = (*((swift_isaMask & *v17) + 0xB8))(v18);
  v21 = v20;

  swift_beginAccess();
  if (!*(*a3 + 16))
  {
LABEL_28:

    goto LABEL_29;
  }

  sub_100198230(v19, v21);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_29:
    swift_endAccess();
    __break(1u);
    goto LABEL_30;
  }

  v24 = swift_endAccess();
  v25 = (v8)(v24);
  if ((v25 & 0xC000000000000001) != 0)
  {
    goto LABEL_24;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_26;
  }

  v26 = *(v25 + 32);
LABEL_12:
  v27 = v26;

  v29 = (*((swift_isaMask & *v27) + 0xB8))(v28);
  v31 = v30;

  swift_beginAccess();
  if (!*(*v54 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  sub_100198230(v29, v31);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
LABEL_31:
    swift_endAccess();
    __break(1u);
    goto LABEL_32;
  }

  v34 = swift_endAccess();
  v35 = (v8)(v34);
  if ((v35 & 0xC000000000000001) == 0)
  {
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v36 = *(v35 + 32);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_26:
  v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_17:
  v37 = v36;

  v39 = (*((swift_isaMask & *v37) + 0xB8))(v38);
  v41 = v40;

  swift_beginAccess();
  if (!*(*a3 + 16))
  {
LABEL_32:

    goto LABEL_33;
  }

  sub_100198230(v39, v41);
  v43 = v42;

  if (v43)
  {
    swift_endAccess();
    - infix(_:_:)();
    * infix(_:_:)();
    + infix(_:_:)();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = *v51;
    *v51 = 0x8000000000000000;
    sub_1000BC718(v52, v10, isUniquelyReferenced_nonNull_native, v45, v47, v49);

    *v51 = v53;

    return;
  }

LABEL_33:
  swift_endAccess();
  __break(1u);
}

double sub_10016D1B8(void (*a1)(void *, __n128), uint64_t a2, char a3, void *a4)
{
  if (a1 && (a3 & 1) != 0)
  {

    (a1)(a4);
    sub_1000223C4(a1, a2);
  }

  v7 = (*((swift_isaMask & *a4) + 0xD0))();
  v8 = (*((swift_isaMask & *a4) + 0xB8))();
  sub_10016A400(v7, v8, v9);

  return result;
}

uint64_t sub_10016D2B4()
{

  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

void sub_10016D344()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v13 = v1;
  while (v5)
  {
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(v1 + 56) + 48 * (v9 | (v7 << 6)));
    if (*v10 != 5)
    {
      v11 = v10[5];

      v12 = v11;
      [v12 removeFromParentNode];

      v1 = v13;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10016D4D0()
{
  swift_beginAccess();
  v16 = v0;
  v1 = *(v0 + 24);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v17 = v1;

  v7 = 0;
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = *(*(v17 + 56) + 48 * (v11 | (v10 << 6)) + 40);

        v13 = v12;
        v14 = [v13 parentNode];
        if (v14)
        {
          v15 = v14;

          v7 = v10;
          if (!v5)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v8 = *(v16 + 56);
          v9 = v13;
          [v8 addChildNode:v9];

          v7 = v10;
          if (!v5)
          {
            goto LABEL_6;
          }
        }

LABEL_10:
        v10 = v7;
      }
    }
  }

  __break(1u);
}

uint64_t (*sub_10016D6C8(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_10016DD9C(v7);
  v7[9] = sub_10016D87C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10016D774;
}

uint64_t (*sub_10016D778(uint64_t *a1, double a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_10016E03C(v5);
  v5[9] = sub_10016DBBC(v5 + 4, isUniquelyReferenced_nonNull_native, a2);
  return sub_10016EEAC;
}

void sub_10016D81C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10016D87C(void *a1, uint64_t a2, uint64_t a3, char a4))(char **a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0xB8uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[19] = a3;
  v10[20] = v4;
  v10[18] = a2;
  v12 = *v4;
  v13 = sub_100198230(a2, a3);
  *(v11 + 176) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1000BEBDC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1000B85A0(v18, a4 & 1);
    v13 = sub_100198230(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[21] = v13;
  if (v19)
  {
    v23 = *(*v5 + 56) + 48 * v13;
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *(v23 + 24);
    v27 = *(v23 + 40);
  }

  else
  {
    v24 = 0;
    v27 = 0;
    v25 = 0uLL;
    v26 = 0uLL;
  }

  v11[12] = v24;
  *(v11 + 13) = v25;
  *(v11 + 15) = v26;
  v11[17] = v27;
  return sub_10016DA00;
}

void sub_10016DA00(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v5 = *(*a1 + 13);
  v4 = *(*a1 + 14);
  v6 = *(*a1 + 15);
  v7 = *(*a1 + 16);
  v8 = *(*a1 + 17);
  v9 = (*a1)[176];
  if ((a2 & 1) == 0)
  {
    if (!v5)
    {
      if (((*a1)[176] & 1) == 0)
      {
        goto LABEL_15;
      }

      v25 = v2[21];
      v26 = *v2[20];
      v27 = *(*a1 + 12);
      v14 = *(*a1 + 14);
      v16 = *(*a1 + 15);
      sub_1000C1108(*(v26 + 48) + 16 * v25);
      sub_1000C740C(v25, v26, v28);
      goto LABEL_14;
    }

    v10 = v2[21];
    v11 = *v2[20];
    if ((v9 & 1) == 0)
    {
      v12 = v2[18];
      v29 = v2[19];
      v2[6] = v3;
      v2[7] = v5;
      v2[8] = v4;
      v2[9] = v6;
      v2[10] = v7;
      v2[11] = v8;
      v16 = v6;
      v17 = v2 + 6;
      v14 = v4;
      v15 = v29;
      goto LABEL_13;
    }

LABEL_7:
    v18 = (v11[7] + 48 * v10);
    *v18 = v3;
    v18[1] = v5;
    v18[2] = v4;
    v18[3] = v6;
    v18[4] = v7;
    v18[5] = v8;
    goto LABEL_15;
  }

  if (v5)
  {
    v10 = v2[21];
    v11 = *v2[20];
    if ((v9 & 1) == 0)
    {
      v12 = v2[18];
      v13 = v2[19];
      *v2 = v3;
      v2[1] = v5;
      v2[2] = v4;
      v2[3] = v6;
      v2[4] = v7;
      v2[5] = v8;
      v14 = v4;
      v15 = v13;
      v16 = v6;
      v17 = v2;
LABEL_13:
      v27 = v3;
      sub_1000BD620(v10, v12, v15, v17, v11);

LABEL_14:
      v6 = v16;
      v4 = v14;
      v3 = v27;
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  if ((*a1)[176])
  {
    v19 = v2[21];
    v20 = *v2[20];
    v21 = *(*a1 + 12);
    v22 = *(*a1 + 14);
    v23 = *(*a1 + 15);
    sub_1000C1108(*(v20 + 48) + 16 * v19);
    sub_1000C740C(v19, v20, v24);
    v6 = v23;
    v4 = v22;
    v3 = v21;
  }

LABEL_15:
  v30 = v2[12];
  v31 = v2[13];
  v33 = v2[14];
  v32 = v2[15];
  v34 = v2[16];
  v35 = v2[17];
  sub_10016DDD0(v3, v5, v4, v6, v7, v8);
  sub_10016DE48(v30, v31, v33, v32, v34, v35);

  free(v2);
}

void (*sub_10016DBBC(uint64_t *a1, char a2, double a3))(uint64_t **a1, __n128 a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 16) = v3;
  *(v8 + 8) = a3;
  v10 = *v3;
  v11 = sub_10019851C(a3);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a2 & 1) == 0)
  {
    if (v18 >= v16 && (a2 & 1) == 0)
    {
      v19 = v11;
      sub_1000BEF48();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1000B8E4C(v16, a2 & 1);
    v11 = sub_10019851C(a3);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_10016DD08;
}

void sub_10016DD08(uint64_t **a1, __n128 a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 32);
  if (v3)
  {
    v5 = v2[3];
    v6 = *v2[2];
    if (v4)
    {
      *(v6[7] + 8 * v5) = v3;
    }

    else
    {
      sub_1000BD67C(v5, v3, v6, *(v2 + 1));
    }
  }

  else if ((*a1)[4])
  {
    sub_1000C7754(v2[3], *v2[2], a2);
  }

  free(v2);
}

uint64_t (*sub_10016DD9C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10016DDC4;
}

void sub_10016DDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {

    v6 = a6;
  }
}

void sub_10016DE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
  }
}

uint64_t sub_10016DEC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10016DEF8()
{

  return _swift_deallocObject(v0, 128, 7);
}

double sub_10016DFC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10016DFDC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t (*sub_10016E03C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10016EE9C;
}

void sub_10016E064(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_10016B8F8(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_10016E168(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_10016BDD0(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_10016E268(uint64_t *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, double a7)
{
  v10 = *a1;
  v11 = *((swift_isaMask & **a1) + 0x250);
  v12 = v11();
  v87 = a5;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  v16 = (*((swift_isaMask & *v14) + 0xB8))(v15);
  v18 = v17;

  if (!a3[2])
  {
LABEL_40:

    __break(1u);
    goto LABEL_41;
  }

  v19 = sub_100198230(v16, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    goto LABEL_30;
  }

  a3 = *(a3[7] + 8 * v19);
  v22 = v11();
  if ((v22 & 0xC000000000000001) != 0)
  {
LABEL_31:
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v23 = *(v22 + 32);
LABEL_9:
  v24 = v23;

  v26 = (*((swift_isaMask & *v24) + 0xB8))(v25);
  v28 = v27;

  v29 = *a4;
  if (!*(*a4 + 16))
  {
LABEL_41:

    __break(1u);
    goto LABEL_42;
  }

  v30 = sub_100198230(v26, v28);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
    goto LABEL_33;
  }

  v36 = (*(v29 + 56) + 12 * v30);
  v37 = *v36;
  v38 = v36[1];
  v39 = v36[2];
  LODWORD(v33) = *v36;
  LODWORD(v34) = v38;
  LODWORD(v35) = v39;
  [*(a3 + OBJC_IVAR____TtC7Measure11PointRender_point) setWorldPosition:{v33, v34, v35}];
  v40 = *(a3 + OBJC_IVAR____TtC7Measure11PointRender_pointPrime);
  LODWORD(v41) = v37;
  LODWORD(v42) = v38;
  LODWORD(v43) = v39;
  [v40 setWorldPosition:{v41, v42, v43}];

  v44 = *((swift_isaMask & *v10) + 0xB8);
  v45 = v44();
  if (*(a2 + 16))
  {
    v47 = sub_100198230(v45, v46);
    v49 = v48;

    if (v49)
    {
      v50 = *(*(a2 + 56) + 8 * v47);
      v51 = v44();
      v53 = v52;
      swift_beginAccess();
      if (!*(*v87 + 16))
      {
LABEL_42:

        __break(1u);
        goto LABEL_43;
      }

      sub_100198230(v51, v53);
      if (v54)
      {
        swift_endAccess();

        v56 = (v44)(v55);
        v58 = v57;
        swift_beginAccess();
        if (!*(*a6 + 16))
        {
LABEL_43:

          __break(1u);
          goto LABEL_44;
        }

        sub_100198230(v56, v58);
        if (v59)
        {
          swift_endAccess();

          v61 = (v44)(v60);
          v63 = v62;
          swift_beginAccess();
          if (!*(*v87 + 16))
          {
LABEL_44:

            __break(1u);
            goto LABEL_45;
          }

          sub_100198230(v61, v63);
          if (v64)
          {
            swift_endAccess();

            - infix(_:_:)();
            * infix(_:_:)();
            + infix(_:_:)();
            v65 = SIMD3<>.init(_:)();
            v89 = v66;
            v67 = (v44)(v65);
            v69 = v68;
            swift_beginAccess();
            if (!*(*v87 + 16))
            {
LABEL_45:

              __break(1u);
              goto LABEL_46;
            }

            sub_100198230(v67, v69);
            if (v70)
            {
              swift_endAccess();

              v72 = (v44)(v71);
              v74 = v73;
              swift_beginAccess();
              if (!*(*a6 + 16))
              {
LABEL_46:

                __break(1u);
                goto LABEL_47;
              }

              sub_100198230(v72, v74);
              if (v75)
              {
                swift_endAccess();

                v77 = (v44)(v76);
                v79 = v78;
                swift_beginAccess();
                if (!*(*v87 + 16))
                {
LABEL_47:

                  __break(1u);
                  return;
                }

                sub_100198230(v77, v79);
                if (v80)
                {
                  swift_endAccess();

                  - infix(_:_:)();
                  * infix(_:_:)();
                  + infix(_:_:)();
                  SIMD3<>.init(_:)();
                  sub_1000D6818(v89, v81, v82, v83, v84, v85);

                  return;
                }

                goto LABEL_39;
              }

LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              goto LABEL_40;
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
  }

  else
  {
  }
}

void sub_10016E968(void **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, double a5)
{
  v8 = (*((swift_isaMask & **a1) + 0xB8))();
  v10 = v9;
  if (!*(a2 + 16) || (v11 = v8, v12 = sub_100198230(v8, v9), (v13 & 1) == 0))
  {

    return;
  }

  v14 = *(*(a2 + 56) + 8 * v12);
  swift_beginAccess();
  if (!*(*a3 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  sub_100198230(v11, v10);
  if ((v16 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_endAccess();
  swift_beginAccess();
  if (!*(*a4 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_100198230(v11, v10);
  if ((v17 & 1) == 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  swift_endAccess();
  swift_beginAccess();
  if (!*(*a3 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_100198230(v11, v10);
  if ((v18 & 1) == 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  swift_endAccess();
  - infix(_:_:)();
  * infix(_:_:)();
  + infix(_:_:)();
  SIMD3<>.init(_:)();
  v28 = v19;
  swift_beginAccess();
  if (!*(*a3 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_100198230(v11, v10);
  if ((v20 & 1) == 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  swift_endAccess();
  swift_beginAccess();
  if (!*(*a4 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_100198230(v11, v10);
  if ((v21 & 1) == 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  swift_endAccess();
  swift_beginAccess();
  if (*(*a3 + 16))
  {
    sub_100198230(v11, v10);
    if (v22)
    {
      swift_endAccess();

      - infix(_:_:)();
      * infix(_:_:)();
      + infix(_:_:)();
      SIMD3<>.init(_:)();
      sub_1000D6818(v28, v23, v24, v25, v26, v27);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_10016ED10(void *a1)
{
  v3 = [objc_opt_self() standardUserDefaults];
  Defaults.hideRectangleSuggestions.unsafeMutableAddressor();

  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 BOOLForKey:v4];

  *(v1 + 16) = v5;
  *(v1 + 24) = sub_10019A39C(_swiftEmptyArrayStorage);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = [objc_allocWithZone(SCNNode) init];
  *(v1 + 64) = [objc_allocWithZone(SCNNode) init];
  *(v1 + 72) = [objc_allocWithZone(SCNNode) init];
  *(v1 + 80) = a1;
  v6 = objc_opt_self();
  v7 = a1;
  [v6 begin];
  if ((*(v1 + 16) & 1) == 0)
  {
    [*(v1 + 72) addChildNode:*(v1 + 56)];
  }

  [*(v1 + 72) addChildNode:*(v1 + 64)];
  v8 = [v7 rootNode];
  [v8 addChildNode:*(v1 + 72)];

  [v6 commit];
  return v1;
}

void (*sub_10016EEB0())(const void *a1)
{
  v1 = (v0 + qword_1004AC020);
  v2 = *(v0 + qword_1004AC020);
  v3 = *(v0 + qword_1004AC020 + 8);
  if (v2)
  {
    v4 = *(v0 + qword_1004AC020);
  }

  else
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = *v1;
    v7 = v1[1];
    v4 = sub_100171D0C;
    *v1 = sub_100171D0C;
    v1[1] = v5;

    sub_1000223C4(v6, v7);
  }

  sub_100038EBC(v2, v3);
  return v4;
}

void sub_10016EF6C(const void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    Synchronized.wrappedValue.getter();

    Synchronized.wrappedValue.setter();

    type metadata accessor for RetainedFrame();
    v5 = swift_allocObject();
    *(v5 + 16) = sub_10008D4F0();
    memcpy((v5 + 32), a1, 0x200uLL);
    v6[64] = v5;
    sub_10004B20C(a1, v6);

    Synchronized.wrappedValue.setter();
  }
}

id sub_10016F0A0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = &v3[qword_1004AC020];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = qword_1004AC028;
  sub_10000F974(&qword_1004AC2D8, &qword_1003DFC28);
  swift_allocObject();
  *&v3[v9] = Synchronized.init(wrappedValue:)();
  v10 = qword_1004AC030;
  ComputedCameraProperties.init()();
  memcpy(&v25[1], __src, 0x1E0uLL);
  v27[0] = 0;
  v27[1] = 0xBFF0000000000000;
  v27[2] = 0;
  memcpy(&v27[3], v25, 0x1E8uLL);
  type metadata accessor for RetainedFrame();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10008D4F0();
  memcpy((v11 + 32), v27, 0x200uLL);
  v25[0] = v11;
  sub_10000F974(&qword_1004AC2E0, &qword_1003DFC30);
  swift_allocObject();
  *&v3[v10] = Synchronized.init(wrappedValue:)();
  v12 = qword_1004AC048;
  KeyPath = swift_getKeyPath();
  v14 = sub_10000F974(&qword_1004AC2E8, &qword_1003DFC60);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v15 = qword_1004D5058;
  v16 = *(v14 + 272);

  *&v4[v12] = v16(KeyPath, v15);
  v17 = qword_1004AC050;
  sub_10000F974(&qword_1004AC2F0, &qword_1003DFC68);
  swift_getKeyPath();
  *&v4[v17] = MutableStateValue.__allocating_init(_:_:)();
  v18 = qword_1004AC058;
  sub_10000F974(&qword_1004AC2F8, &qword_1003DFC98);
  swift_getKeyPath();
  *&v4[v18] = MutableStateValue.__allocating_init(_:_:)();
  v19 = &v4[qword_1004AC060];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  *&v4[qword_1004AC068] = 0;
  *&v4[qword_1004AC038] = a2;
  *&v4[qword_1004AC040] = a3;
  *&v4[qword_1004AC070] = a1;
  v24.receiver = v4;
  v24.super_class = ObjectType;

  v20 = a1;
  v21 = objc_msgSendSuper2(&v24, "init");
  [v20 setDelegate:v21];

  return v21;
}

void sub_10016F3D8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = (v0 + qword_1004AC020);
  *v2 = 0;
  v2[1] = 0;
  v3 = qword_1004AC028;
  sub_10000F974(&qword_1004AC2D8, &qword_1003DFC28);
  swift_allocObject();
  *(v0 + v3) = Synchronized.init(wrappedValue:)();
  v4 = qword_1004AC030;
  ComputedCameraProperties.init()();
  memcpy(&v14[1], __src, 0x1E0uLL);
  v16[0] = 0;
  v16[1] = 0xBFF0000000000000;
  v16[2] = 0;
  memcpy(&v16[3], v14, 0x1E8uLL);
  type metadata accessor for RetainedFrame();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10008D4F0();
  memcpy((v5 + 32), v16, 0x200uLL);
  v14[0] = v5;
  sub_10000F974(&qword_1004AC2E0, &qword_1003DFC30);
  swift_allocObject();
  *(v0 + v4) = Synchronized.init(wrappedValue:)();
  v6 = qword_1004AC048;
  KeyPath = swift_getKeyPath();
  v8 = sub_10000F974(&qword_1004AC2E8, &qword_1003DFC60);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v9 = qword_1004D5058;
  v10 = *(v8 + 272);

  *(v1 + v6) = v10(KeyPath, v9);
  v11 = qword_1004AC050;
  sub_10000F974(&qword_1004AC2F0, &qword_1003DFC68);
  swift_getKeyPath();
  *(v1 + v11) = MutableStateValue.__allocating_init(_:_:)();
  v12 = qword_1004AC058;
  sub_10000F974(&qword_1004AC2F8, &qword_1003DFC98);
  swift_getKeyPath();
  *(v1 + v12) = MutableStateValue.__allocating_init(_:_:)();
  v13 = v1 + qword_1004AC060;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  *(v1 + qword_1004AC068) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10016F678@<X0>(void *a1@<X8>, double a2@<D0>)
{

  Synchronized.wrappedValue.getter();

  v5 = __dst[0];

  Synchronized.wrappedValue.getter();

  v6 = __dst[0];
  v7 = [*(v2 + qword_1004AC070) session];
  v8 = [v7 currentFrame];

  memcpy(__dst, (__dst[0] + 32), 0x200uLL);
  v9 = v5[2];
  v10 = __dst[0];
  memcpy(__src, v5 + 7, 0x1E8uLL);
  if (v9)
  {
    sub_10004B20C(__dst, v68);
    v11 = v9;
    [v11 timestamp];
    v13 = v12;
    sub_10000F974(&qword_1004AC2D0, &qword_1003D7CA8);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v15 = v11;
    v16 = NSObject.hashValue.getter();

    sub_100013C4C(__dst);
    *(v14 + 24) = v16;
    v68[0] = v10;
    v68[1] = v13;
    v68[2] = v14;
  }

  else
  {
    v68[2] = 0;
    v68[0] = __dst[0];
    v68[1] = 0;
  }

  memcpy(&v68[3], __src, 0x1E8uLL);
  sub_100013C4C(v68);
  v17 = *&v68[1];
  if (*&v68[1] == a2)
  {
    memcpy(__src, v5 + 4, sizeof(__src));
    v18 = v5[2];
    v19 = __src[0];
    memcpy(v64, v5 + 7, 0x1E8uLL);
    if (v18)
    {
      sub_10004B20C(__src, v68);
      v20 = v18;
      [v20 timestamp];
      v22 = v21;
      sub_10000F974(&qword_1004AC2D0, &qword_1003D7CA8);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      v24 = v20;
      v25 = NSObject.hashValue.getter();

      sub_100013C4C(__src);

      *(v23 + 24) = v25;

      memcpy(&v65[3], v64, 0x1E8uLL);
      v65[0] = v19;
      v65[1] = v22;
      v65[2] = v23;
    }

    else
    {

      memcpy(&v65[3], v64, 0x1E8uLL);
      v65[2] = 0;
      v65[0] = v19;
      v65[1] = 0;
    }

    goto LABEL_28;
  }

  if (v6)
  {
    memcpy(__src, v6 + 4, sizeof(__src));
    v26 = v6[2];
    v27 = __src[0];
    memcpy(v65, v6 + 7, 0x1E8uLL);
    if (v26)
    {

      sub_10004B20C(__src, v68);
      v28 = v26;
      [v28 timestamp];
      v30 = v29;
      sub_10000F974(&qword_1004AC2D0, &qword_1003D7CA8);
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      v32 = v28;
      v33 = NSObject.hashValue.getter();

      sub_100013C4C(__src);
      *(v31 + 24) = v33;
      v68[0] = v27;
      v68[1] = v30;
      v68[2] = v31;
      memcpy(&v68[3], v65, 0x1E8uLL);
      sub_100013C4C(v68);
      v34 = *&v68[1];

      if (v34 == a2)
      {
LABEL_10:
        memcpy(v65, v6 + 4, 0x200uLL);
        v35 = v6[2];
        v36 = v65[0];
        memcpy(v63, v6 + 7, 0x1E8uLL);
        if (v35)
        {
          sub_10004B20C(v65, v68);
          v37 = v35;
          [v37 timestamp];
          v39 = v38;
          sub_10000F974(&qword_1004AC2D0, &qword_1003D7CA8);
          v40 = swift_allocObject();
          swift_unknownObjectWeakInit();
          swift_beginAccess();
          swift_unknownObjectWeakAssign();
          v41 = v37;
          v42 = NSObject.hashValue.getter();

          sub_100013C4C(v65);

          *(v40 + 24) = v42;

          memcpy(&v64[24], v63, 0x1E8uLL);
          *v64 = v36;
          *&v64[8] = v39;
          *&v64[16] = v40;
        }

        else
        {

          memcpy(&v64[24], v63, 0x1E8uLL);
          *&v64[16] = 0;
          *v64 = v36;
          *&v64[8] = 0;
        }

        nullsub_1();
        v55 = v64;
        goto LABEL_29;
      }
    }

    else
    {
      v68[2] = 0;
      v68[0] = __src[0];
      v68[1] = 0;
      memcpy(&v68[3], v65, 0x1E8uLL);
      sub_100013C4C(v68);
      v17 = *&v68[1];
      if (*&v68[1] == a2)
      {
        goto LABEL_10;
      }
    }
  }

  if (!v8)
  {
LABEL_24:

    sub_100171C54(v68);
    return memcpy(a1, v68, 0x200uLL);
  }

  [v8 timestamp];
  if (v43 != a2)
  {

    goto LABEL_24;
  }

  v44 = qword_1004A0850;
  result = v8;
  v46 = result;
  if (v44 != -1)
  {
    result = swift_once();
  }

  if ((*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80) & 1) == 0)
  {
    SIMD2<>.init(_:)();
    static ComputedCameraProperties.updateShared(_:viewportSize:)();

    memcpy(__src, v5 + 4, sizeof(__src));
    v47 = v5[2];
    v48 = __src[0];
    memcpy(v66, v5 + 7, sizeof(v66));
    if (v47)
    {
      sub_10004B20C(__src, v68);
      v49 = v47;
      [v49 timestamp];
      v51 = v50;
      sub_10000F974(&qword_1004AC2D0, &qword_1003D7CA8);
      v52 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      v53 = v49;
      v54 = NSObject.hashValue.getter();

      sub_100013C4C(__src);
      *(v52 + 24) = v54;
    }

    else
    {
      v52 = 0;
      v51 = 0;
    }

    *v64 = v48;
    *&v64[8] = v51;
    *&v64[16] = v52;
    memcpy(&v64[24], v66, 0x1E8uLL);
    v56 = v46;
    [v56 timestamp];
    v58 = v57;
    sub_10000F974(&qword_1004AC2D0, &qword_1003D7CA8);
    v59 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v60 = v56;
    v61 = NSObject.hashValue.getter();

    sub_100013C4C(v64);
    *(v59 + 24) = v61;
    v62 = v60;
    static ComputedCameraProperties.shared(for:)();

    result = memcpy(&v66[8], v63, 0x1E0uLL);
    if (v48 != -1)
    {
      memcpy(&v65[3], v66, 0x1E8uLL);
      v65[0] = v48 + 1;
      v65[1] = v58;
      v65[2] = v59;
LABEL_28:
      nullsub_1();
      v55 = v65;
LABEL_29:
      memcpy(v68, v55, sizeof(v68));
      return memcpy(a1, v68, 0x200uLL);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10016FEF8()
{
  sub_1000223C4(*(v0 + qword_1004AC020), *(v0 + qword_1004AC020 + 8));

  v1 = *(v0 + qword_1004AC070);
}

void sub_10016FFAC(uint64_t a1)
{
  sub_1000223C4(*(a1 + qword_1004AC020), *(a1 + qword_1004AC020 + 8));

  v2 = *(a1 + qword_1004AC070);
}

uint64_t type metadata accessor for RenderLoop(uint64_t a1)
{
  result = qword_1004AC0A0;
  if (!qword_1004AC0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100170144(uint64_t a1, double a2)
{
  v5 = v2;
  ariadne_trace(_:_:_:_:_:)();
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (!qword_1004D4AC8)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (*(qword_1004D4AC8 + 32))
  {

    sub_100050B38();
  }

  [*(v2 + qword_1004AC070) lastFrameTimestamp];
  sub_10016F678(__src, v8);
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_100171BD8(__dst) == 1)
  {

    Synchronized.wrappedValue.getter();

    v3 = v42[0].n128_u64[0];
    memcpy(v43, (v42[0].n128_u64[0] + 32), sizeof(v43));
    v9 = *(v42[0].n128_u64[0] + 16);
    v10 = v43[0];
    memcpy(v38, (v42[0].n128_u64[0] + 56), 0x1E8uLL);
    if (v9)
    {
      sub_10004B20C(v43, v42);
      v11 = v9;
      [v11 timestamp];
      v13 = v12;
      sub_10000F974(&qword_1004AC2D0, &qword_1003D7CA8);
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      v15 = v11;
      *(v14 + 24) = NSObject.hashValue.getter();

      sub_100013C4C(v43);

      memcpy(&v39[3], v38, 0x1E8uLL);
      v39[0] = v10;
      v39[1] = v13;
      v39[2] = v14;
    }

    else
    {

      memcpy(&v39[3], v38, 0x1E8uLL);
      v39[2] = 0;
      v39[0] = v10;
      v39[1] = 0;
    }
  }

  else
  {
    memcpy(v39, __src, sizeof(v39));
  }

  memcpy(v42, v39, sizeof(v42));
  v16 = sub_10008D4F0();
  if (!v16)
  {
    ariadne_trace(_:_:_:_:_:)();
    if (qword_1004A02B8 != -1)
    {
      swift_once();
    }

    v24._object = 0x800000010040A4B0;
    v24._countAndFlagsBits = 0xD00000000000003BLL;
    Log.default(_:isPrivate:)(v24, 0);
    sub_100013C4C(v39);
    v25 = qword_1004D4AC8;
    if (qword_1004D4AC8)
    {
      goto LABEL_35;
    }

    __break(1u);
LABEL_19:

    v22 = 0;
    v21 = 0;
    goto LABEL_20;
  }

  v3 = v16;

  Synchronized.wrappedValue.getter();

  v17 = v43[0];
  if (!v43[0])
  {
    goto LABEL_24;
  }

  memcpy(v38, (v43[0] + 32), sizeof(v38));
  v18 = *(v43[0] + 16);
  v4 = v38[0];
  memcpy(v37, (v43[0] + 56), sizeof(v37));
  if (!v18)
  {
    goto LABEL_19;
  }

  sub_10004B20C(v38, v43);
  v19 = v18;
  [v19 timestamp];
  v21 = v20;
  sub_10000F974(&qword_1004AC2D0, &qword_1003D7CA8);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v23 = v19;
  *(v22 + 24) = NSObject.hashValue.getter();

  sub_100013C4C(v38);

LABEL_20:
  v43[0] = v4;
  v43[1] = v21;
  v43[2] = v22;
  memcpy(&v43[3], v37, 0x1E8uLL);
  v17 = sub_10008D4F0();
  sub_100013C4C(v43);
  if (!v17 || (sub_100018630(0, &qword_1004AC2C8, ARFrame_ptr), v26 = v3, v27 = v17, v28 = static NSObject.== infix(_:_:)(), v26, v27, (v28 & 1) == 0))
  {
LABEL_24:
    if (qword_1004D4AC8)
    {
      if (*(qword_1004D4AC8 + 56))
      {
        type metadata accessor for WorldAnchor();

        static WorldAnchor.forEachAnchor(_:)();
      }

      MeasureCore.shared.unsafeMutableAddressor();

      MeasureCore.updatePlanes(with:)(v3);

      sub_100170904(v3, v17, v38);
      v29 = *(**(v5 + qword_1004AC050) + 392);

      v29(v38);

      if ([objc_opt_self() jasperAvailable])
      {
        if (qword_1004A03F8 != -1)
        {
          swift_once();
        }

        if (byte_1004D4FC8 == 1)
        {
          sub_100109F6C(v42);
        }
      }

      v30 = *(v5 + qword_1004AC038);
      v31 = SnapType.standard.unsafeMutableAddressor();
      if (*(v30 + 544) == 3)
      {
        LOBYTE(v38[0]) = sub_1000F7A14(*v31, v42) & 1;

        Synchronized.wrappedValue.setter();
      }

      sub_1000FAAC8();
      sub_1000FBAE0();
      sub_100109BB8();
      v32 = *(**(v5 + qword_1004AC058) + 200);

      v34 = v32(v33);

      v35 = swift_allocObject();
      *(v35 + 16) = a2;
      *(v35 + 24) = a1;
      memcpy((v35 + 32), v42, 0x200uLL);
      v36 = *(*v34 + 416);
      swift_unknownObjectRetain();
      sub_10004B20C(v39, v38);
      v36(sub_100171C3C, v35);

      sub_100013C4C(v39);
      v25 = qword_1004D4AC8;
      if (qword_1004D4AC8)
      {
        goto LABEL_35;
      }

LABEL_40:
      __break(1u);
      return;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  ariadne_trace(_:_:_:_:_:)();

  sub_100013C4C(v39);
  v25 = qword_1004D4AC8;
  if (!qword_1004D4AC8)
  {
    __break(1u);
    goto LABEL_24;
  }

LABEL_35:
  if (*(v25 + 32))
  {

    sub_100050B60();
  }

  ariadne_trace(_:_:_:_:_:)();
}

__n128 sub_100170904@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(**(v3 + qword_1004AC050) + 144);

  v7(v65, v8);

  v88 = v66;
  v89 = v67;
  v9 = v68;
  v10 = v69;
  v86[0] = *v70;
  *(v86 + 3) = *&v70[3];
  v83 = v71;
  v84 = v72;
  v11 = v73;
  v12 = v74;
  v81 = v76;
  v80 = v75;
  v13 = v77;
  v14 = v78;
  v87 = v69;
  v82 = v74;
  v79 = v78;
  v15 = [a1 camera];
  [v15 transform];
  v63 = v17;
  v64 = v16;
  v61 = v19;
  v62 = v18;

  v96 = 0;
  v20 = [a1 camera];
  [v20 eulerAngles];
  v60 = v21;

  v85 = 0;
  [a1 timestamp];
  if (a2 && (v23 = v22, [a2 timestamp], v25 = v24, vabdd_f64(v23, v24) > 2.22044605e-16))
  {
    v26 = [a1 camera];
    [v26 transform];

    simd_float4x4.position.getter();
    v52 = v27;
    simd_float4x4.forward.getter();
    v29.i64[0] = vaddq_f32(v52, vmulq_f32(v28, vdupq_n_s32(0xBE4CCCCD))).u64[0];
    v29.f32[2] = v52.f32[2] + vmuls_lane_f32(-0.2, v28, 2);
    v29.i32[3] = 0;
    v30 = (v58 + qword_1004AC060);
    v9 = 0.0;
    if ((*(v58 + qword_1004AC060 + 16) & 1) == 0)
    {
      v31 = vsubq_f32(*v30, v29);
      v32 = vmulq_f32(v31, v31);
      v33 = v23 - v25;
      v9 = sqrtf(v32.f32[2] + vaddv_f32(*v32.f32)) / v33;
    }

    v57 = v29;
    v87 = *(v58 + qword_1004AC060 + 16);
    v34 = *(**(v58 + qword_1004AC048) + 144);

    v34(v65, v35);

    v36 = v65[0];
    if (v65[0])
    {
      [v65[0] userAcceleration];
      v59 = v37;
      [v36 userAcceleration];
      v56 = v38;
      [v36 userAcceleration];
      v55 = v39;
      v82 = 0;
      [v36 rotationRate];
      v54 = v40;
      [v36 rotationRate];
      v53 = v41;
      [v36 rotationRate];
      v51 = v42;

      v43.f64[0] = v59;
      v43.f64[1] = v54;
      v44.f64[0] = v56;
      v44.f64[1] = v53;
      v45.f64[0] = v55;
      v45.f64[1] = v51;
      v46 = vcvt_f32_f64(vsqrtq_f64(vaddq_f64(vaddq_f64(vmulq_f64(v43, v43), vmulq_f64(v44, v44)), vmulq_f64(v45, v45))));
    }

    else
    {
      v82 = 1;
      v46 = 0;
    }

    v79 = v36 == 0;
    *v30 = v57;
    v30[1].i8[0] = 0;
    v94 = v88;
    v95 = v89;
    v10 = v87;
    LODWORD(v65[0]) = v86[0];
    *(v65 + 3) = *(v86 + 3);
    v47 = v85;
    v92 = v83;
    v93 = v84;
    v12 = v82;
    v90 = v80;
    v91 = v81;
    v14 = v79;
    v11 = v46.i32[0];
    v13 = v46.i32[1];
  }

  else
  {
    v94 = v88;
    v95 = v89;
    LODWORD(v65[0]) = v86[0];
    *(v65 + 3) = *(v86 + 3);
    v47 = v85;
    v92 = v83;
    v93 = v84;
    v90 = v80;
    v91 = v81;
  }

  *a3 = v64;
  *(a3 + 16) = v63;
  *(a3 + 32) = v62;
  *(a3 + 48) = v61;
  *(a3 + 64) = 0;
  *(a3 + 65) = v94;
  *(a3 + 67) = v95;
  *(a3 + 68) = v9;
  *(a3 + 72) = v10;
  *(a3 + 73) = v65[0];
  *(a3 + 76) = *(v65 + 3);
  result = v60;
  *(a3 + 80) = v60;
  *(a3 + 96) = v47;
  v49 = v92;
  *(a3 + 99) = v93;
  *(a3 + 97) = v49;
  *(a3 + 100) = v11;
  *(a3 + 104) = v12;
  v50 = v90;
  *(a3 + 107) = v91;
  *(a3 + 105) = v50;
  *(a3 + 108) = v13;
  *(a3 + 112) = v14;
  return result;
}

id *sub_100170DD8(id *result, id a2, uint64_t a3, double a4)
{
  *result = a4;
  v5 = result[62];
  v6 = __CFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    result[62] = v7;
    v10 = [a2 pointOfView];
    v11 = [v10 camera];

    v9[1] = v11;

    return memcpy(v9 + 2, (a3 + 32), 0x1E0uLL);
  }

  return result;
}

void sub_100171108(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void (*a6)(id, id))
{
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a5;
  v12 = a1;
  a6(v10, v11);
  swift_unknownObjectRelease();
}

void sub_100171234(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = qword_1004A0180;
    v31 = a2;
    if (v12 != -1)
    {
      swift_once();
    }

    if (qword_1004D4AC8 && *(qword_1004D4AC8 + 48))
    {

      sub_100050028(v11, a1);
    }

    if (qword_1004A0258 != -1)
    {
      swift_once();
    }

    v30[0] = *algn_1004D4D18;
    v30[1] = qword_1004D4D10;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v33._countAndFlagsBits = 0xD000000000000016;
    v33._object = 0x800000010040A490;
    v13 = qword_1004AC068;
    v32 = *(v3 + qword_1004AC068);
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 8236;
    v15._object = 0xE200000000000000;
    String.append(_:)(v15);
    v16 = [v11 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = UUID.uuidString.getter();
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);

    v21._countAndFlagsBits = 8236;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    v22 = [v11 geometry];
    ARPlaneGeometry.vertices.getter();

    sub_10000F974(&qword_1004A3EF0, &qword_1003D5610);
    v23 = Array.description.getter();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    Log.debug(_:isPrivate:)(v33, 0);

    v27 = *(v3 + v13);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      *(v3 + v13) = v29;
    }
  }
}

void sub_10017156C(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v38 = a2;
  v12 = [a1 childNodes];
  sub_100018630(0, &qword_1004A1318, SCNNode_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v13 >> 62))
  {
    v14 = &off_100494000;
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_17:

    goto LABEL_18;
  }

  v14 = &off_100494000;
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_17;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (!qword_1004D4AC8)
  {
    goto LABEL_24;
  }

  if (*(qword_1004D4AC8 + 48))
  {
    v17 = [v16 geometry];
    if (v17)
    {
      v18 = v17;
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (!v19)
      {

        goto LABEL_18;
      }

      v20 = v19;
      v21 = objc_opt_self();
      [v21 begin];
      v22 = [v11 geometry];
      [v20 updateFromPlaneGeometry:v22];

      v14 = &off_100494000;
      [v21 commit];
    }
  }

LABEL_18:
  v23 = v14;
  if (qword_1004A0258 != -1)
  {
    swift_once();
  }

  v37[1] = qword_1004D4D20;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  _StringGuts.grow(_:)(34);

  v40._countAndFlagsBits = 0xD000000000000018;
  v40._object = 0x800000010040A470;
  v39 = *(v3 + qword_1004AC068);
  v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v24);

  v25._countAndFlagsBits = 8236;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  v26 = [v11 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = UUID.uuidString.getter();
  v29 = v28;
  (*(v7 + 8))(v9, v6);
  v30._countAndFlagsBits = v27;
  v30._object = v29;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 8236;
  v31._object = 0xE200000000000000;
  String.append(_:)(v31);
  v32 = [v11 v23[65]];
  ARPlaneGeometry.vertices.getter();

  sub_10000F974(&qword_1004A3EF0, &qword_1003D5610);
  v33 = Array.description.getter();
  v35 = v34;

  v36._countAndFlagsBits = v33;
  v36._object = v35;
  String.append(_:)(v36);

  Log.debug(_:isPrivate:)(v40, 0);
}

double sub_1001719E8(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v8 = v6;
    v9 = qword_1004A0258;
    v10 = a1;
    if (v9 != -1)
    {
      swift_once();
    }

    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v16._countAndFlagsBits = 0xD000000000000017;
    v16._object = 0x800000010040A450;
    v11 = [v8 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = UUID.uuidString.getter();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    Log.debug(_:isPrivate:)(v16, 0);
  }

  return result;
}

uint64_t sub_100171BD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100171BFC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 544, 15);
}

_OWORD *sub_100171C54(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 24) = 0u;
  result = (a1 + 24);
  result[15] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  result[18] = 0u;
  result[19] = 0u;
  result[20] = 0u;
  result[21] = 0u;
  result[22] = 0u;
  result[23] = 0u;
  result[24] = 0u;
  result[25] = 0u;
  result[26] = 0u;
  result[27] = 0u;
  result[28] = 0u;
  result[29] = 0u;
  return result;
}

uint64_t sub_100171CD4(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_100171D14(uint64_t a1)
{
  v3 = type metadata accessor for MeasurementHistoryItem(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023338(a1, v6);
  memcpy(v66, &v6[*(v4 + 36)], 0x346uLL);
  if (sub_1000218D8(v66))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = sub_1000218E4(v66);
    v8 = [objc_opt_self() currentTraitCollection];
    v9 = [v8 preferredContentSizeCategory];

    LOBYTE(v8) = UIContentSizeCategory.isAccessibilityCategory.getter();
    if (v8)
    {
      v10 = *(v1 + OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_accessibleMeasureContent);
      v11 = v7[5];
      v60[2] = v7[6];
      v61 = v11;
      v12 = v7[7];
      v14 = v7[10];
      v13 = v7[11];
      v62 = v7[8];
      v63 = v13;
      v16 = v7[12];
      v15 = v7[13];
      v60[0] = v12;
      v60[1] = v16;
      v64 = v14;
      v65 = v15;
      v17 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
      v18 = *&v10[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel];
      v19 = v10;

      v20 = String._bridgeToObjectiveC()();
      [v18 setText:v20];

      v21 = *&v10[v17];
      v22 = String._bridgeToObjectiveC()();
      [v21 setAccessibilityLabel:v22];

      v23 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
      v24 = *&v19[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel];
      v25 = String._bridgeToObjectiveC()();
      [v24 setText:v25];

      v26 = *&v19[v23];
      if (v62)
      {
        v27 = String._bridgeToObjectiveC()();
      }

      else
      {
        v27 = 0;
      }

      [v26 setAccessibilityLabel:v27];

      v50 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
      v51 = *&v19[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel];
      v52 = String._bridgeToObjectiveC()();
      [v51 setText:v52];

      v53 = *&v19[v50];
      if (v65)
      {
        v54 = String._bridgeToObjectiveC()();
      }

      else
      {
        v54 = 0;
      }

      [v53 setAccessibilityLabel:v54];
    }

    else
    {
      v28 = OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_measureContent;
      v29 = *(*(v1 + OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_measureContent) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title);
      v30 = String._bridgeToObjectiveC()();
      [v29 setText:v30];

      v31 = *v7;
      v32 = v7[1];
      v33 = *(*(v1 + v28) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits);
      v34 = String._bridgeToObjectiveC()();
      [v33 setText:v34];

      v35 = *(*(v1 + v28) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels);
      v37 = v7[5];
      v36 = v7[6];
      v38 = v7[8];
      v61 = v7[7];
      v62 = v38;
      if (v31 == v37 && v32 == v36)
      {
        v39 = 1;
      }

      else
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v40 = v7[10];
      v64 = v7[11];
      v65 = v40;
      v41 = v7[12];
      v42 = v7[13];
      v63 = v41;
      v43 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
      v44 = *&v35[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel];
      v45 = v35;
      [v44 setHidden:v39 & 1];
      if ((v39 & 1) == 0)
      {
        v46 = *(*&v35[v43] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
        v47 = String._bridgeToObjectiveC()();
        [v46 setText:v47];

        v48 = *&v35[v43];
        if (v62)
        {
          v49 = String._bridgeToObjectiveC()();
        }

        else
        {
          v49 = 0;
        }

        [v48 setAccessibilityLabel:v49];
      }

      v55 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
      v56 = *(*&v45[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
      v57 = String._bridgeToObjectiveC()();
      [v56 setText:v57];

      v58 = *&v45[v55];
      if (v42)
      {
        v54 = String._bridgeToObjectiveC()();
      }

      else
      {
        v54 = 0;
      }

      [v58 setAccessibilityLabel:v54];
    }

    return sub_10002339C(v6);
  }

  return result;
}

id sub_100172344(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LineHistoryCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1001723A4()
{
  v1 = OBJC_IVAR____TtC7Measure14ClearAllButton_separator;
  type metadata accessor for SeparatorView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_1004A0060 != -1)
  {
    swift_once();
  }

  v2 = *&qword_1004D4980;
  v3 = [objc_opt_self() mainBundle];
  v13._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0x4C415F5241454C43;
  v4._object = 0xE90000000000004CLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v13);

  v7 = [objc_opt_self() systemRedColor];
  v8 = sub_10003C018(v7, v6._countAndFlagsBits, v6._object, 0.0, 0.0, 375.0, v2);

  v9 = v8;
  [v9 setRole:1];
  aBlock[4] = sub_10017259C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A1430;
  aBlock[3] = &unk_1004705A0;
  v10 = _Block_copy(aBlock);
  [v9 setPointerStyleProvider:v10];
  _Block_release(v10);

  return v9;
}

uint64_t sub_10017259C(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004A2D60, &unk_1003DEA40);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for UIPointerEffect();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = sub_10000F974(&qword_1004AC3B8, &qword_1003DFCF8);
  v13 = v12[12];
  v14 = v12[16];
  v15 = v12[20];
  *v11 = [objc_allocWithZone(UITargetedPreview) initWithView:a1];
  v16 = enum case for UIPointerEffect.TintMode.overlay(_:);
  v17 = type metadata accessor for UIPointerEffect.TintMode();
  (*(*(v17 - 8) + 104))(&v11[v13], v16, v17);
  v11[v14] = 0;
  v11[v15] = 0;
  (*(v6 + 104))(v11, enum case for UIPointerEffect.hover(_:), v5);
  sub_100040E00();
  (*(v6 + 16))(v8, v11, v5);
  v18 = type metadata accessor for UIPointerShape();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = UIPointerStyle.init(effect:shape:)();
  (*(v6 + 8))(v11, v5);
  return v19;
}

double sub_100172950(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100172978(__n128 a1)
{
  result = Contexts.UIKit.init()();
  qword_1004D4F48 = result;
  return result;
}

id sub_100172998@<X0>(void *a1@<X8>)
{
  if (qword_1004A0398 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4F48;
  *a1 = qword_1004D4F48;

  return v2;
}

unint64_t sub_100172A08(uint64_t a1)
{
  result = sub_100172A30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100172A30()
{
  result = qword_1004AC3E8;
  if (!qword_1004AC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC3E8);
  }

  return result;
}

uint64_t sub_100172A8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 504))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100172AE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 504) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 504) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_100172BCC()
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v1 = *(&xmmword_1004D4AE8 + 1);
    qword_1004D4F50 = Contexts.PrivateQueue.init(_:)();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100172C4C@<X0>(void *a1@<X8>)
{
  if (qword_1004A03A0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4F50;
  *a1 = qword_1004D4F50;

  return v2;
}

BOOL sub_100172CBC(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x1F8uLL);
  memcpy(__dst, a2, 0x1F8uLL);
  return sub_100172D90(v4, __dst);
}

unint64_t sub_100172D14(uint64_t a1)
{
  result = sub_100172D3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100172D3C()
{
  result = qword_1004AC418;
  if (!qword_1004AC418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC418);
  }

  return result;
}

BOOL sub_100172D90(double *a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v11 = v2;
  v12 = v3;
  v6 = *(a2 + 8);
  if (*(a1 + 1))
  {
    if (!v6)
    {
      sub_100172EAC(a2, v9);
      return 0;
    }

    sub_100172EE4();
    sub_100172EAC(a2, v9);
    sub_100172EAC(a1, v9);
    v7 = static NSObject.== infix(_:_:)();
    sub_100038ECC(a1);
    sub_100038ECC(a2);
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6)
    {
      return 0;
    }

    sub_100172EAC(a2, v9);
  }

  memcpy(v9, a1 + 2, 0x1E0uLL);
  memcpy(__dst, (a2 + 16), sizeof(__dst));
  if (static ComputedCameraProperties.__derived_struct_equals(_:_:)())
  {
    return *(a1 + 62) == *(a2 + 496);
  }

  return 0;
}

unint64_t sub_100172EE4()
{
  result = qword_1004AC420;
  if (!qword_1004AC420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004AC420);
  }

  return result;
}

id sub_100172F30()
{
  v1 = OBJC_IVAR____TtC7Measure17CardContainerView____lazy_storage___bottomStackViewInteraction;
  v2 = *(v0 + OBJC_IVAR____TtC7Measure17CardContainerView____lazy_storage___bottomStackViewInteraction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Measure17CardContainerView____lazy_storage___bottomStackViewInteraction);
  }

  else
  {
    v4 = [objc_allocWithZone(UIScrollEdgeElementContainerInteraction) init];
    Strong = swift_unknownObjectUnownedLoadStrong();
    [v4 setScrollView:Strong];

    [v4 setEdge:4];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100172FE8(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC7Measure17CardContainerView_titleView;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for CardTitleView()) init];
  v8 = OBJC_IVAR____TtC7Measure17CardContainerView_copyButton;
  v9 = objc_allocWithZone(type metadata accessor for PlatterCopyButton());
  *&v3[v8] = sub_1001A14D0();
  swift_unknownObjectUnownedInit();
  *&v3[OBJC_IVAR____TtC7Measure17CardContainerView_clearButton] = 0;
  *&v3[OBJC_IVAR____TtC7Measure17CardContainerView_bottomStackHeightConstraint] = 0;
  v10 = OBJC_IVAR____TtC7Measure17CardContainerView_bottomStackView;
  v11 = [objc_allocWithZone(UIGlassContainerEffect) init];
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v3[v10] = v12;
  v13 = OBJC_IVAR____TtC7Measure17CardContainerView_contentScrollView;
  *&v3[v13] = [objc_allocWithZone(UIScrollView) init];
  *&v3[OBJC_IVAR____TtC7Measure17CardContainerView____lazy_storage___bottomStackViewInteraction] = 0;
  *&v3[OBJC_IVAR____TtC7Measure17CardContainerView_actualContentView] = a1;
  v18.receiver = v3;
  v18.super_class = ObjectType;
  v14 = a1;
  v15 = objc_msgSendSuper2(&v18, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectUnownedAssign();
  v16 = v15;
  sub_1001731B0();
  sub_10017339C();

  return v16;
}

id sub_1001731B0()
{
  v1 = v0;
  v2 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor:v2];

  result = swift_unknownObjectUnownedLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  [v1 addSubview:result];

  Strong = swift_unknownObjectUnownedLoadStrong();
  if (!Strong || (v6 = Strong, v7 = *&v1[OBJC_IVAR____TtC7Measure17CardContainerView_actualContentView], sub_100018630(0, &qword_1004A7550, UIView_ptr), v8 = v7, v9 = static NSObject.== infix(_:_:)(), v6, v8, (v9 & 1) == 0))
  {
    result = swift_unknownObjectUnownedLoadStrong();
    if (!result)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v10 = result;
    [result addSubview:*&v1[OBJC_IVAR____TtC7Measure17CardContainerView_actualContentView]];
  }

  result = swift_unknownObjectUnownedLoadStrong();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = result;
  [result setScrollEnabled:1];

  [*&v1[OBJC_IVAR____TtC7Measure17CardContainerView_contentScrollView] setScrollEnabled:1];
  v12 = *&v1[OBJC_IVAR____TtC7Measure17CardContainerView_bottomStackView];
  v13 = [v12 contentView];
  [v13 addSubview:*&v1[OBJC_IVAR____TtC7Measure17CardContainerView_copyButton]];

  v14 = sub_100172F30();
  [v12 addInteraction:v14];

  return [v1 addSubview:v12];
}

void sub_10017339C()
{
  v1 = v0;
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = Strong;
  [Strong setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = *&v1[OBJC_IVAR____TtC7Measure17CardContainerView_bottomStackView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = *&v1[OBJC_IVAR____TtC7Measure17CardContainerView_actualContentView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = *&v1[OBJC_IVAR____TtC7Measure17CardContainerView_copyButton];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = swift_unknownObjectUnownedLoadStrong();
  if (!v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v7;
  [v7 setContentInset:{0.0, 0.0, 76.0, 0.0}];

  v9 = swift_unknownObjectUnownedLoadStrong();
  if (!v9)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = v9;
  v83 = v5;
  [v9 setVerticalScrollIndicatorInsets:{0.0, 0.0, 76.0, 0.0}];

  sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003D61E0;
  v12 = swift_unknownObjectUnownedLoadStrong();
  if (!v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = v12;
  v14 = [v12 topAnchor];

  v15 = [v1 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v11 + 32) = v16;
  v17 = swift_unknownObjectUnownedLoadStrong();
  if (!v17)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v1 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v11 + 40) = v21;
  v22 = swift_unknownObjectUnownedLoadStrong();
  if (!v22)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v23 = v22;
  v24 = [v22 trailingAnchor];

  v25 = [v1 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v11 + 48) = v26;
  v27 = swift_unknownObjectUnownedLoadStrong();
  if (!v27)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v1 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v11 + 56) = v31;
  v32 = [v4 leadingAnchor];
  v33 = [v1 leadingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v11 + 64) = v34;
  v35 = [v4 trailingAnchor];
  v36 = [v1 trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v11 + 72) = v37;
  v38 = [v4 bottomAnchor];
  v39 = [v1 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v11 + 80) = v40;
  v41 = [v6 heightAnchor];
  v42 = [v41 constraintEqualToConstant:48.0];

  *(v11 + 88) = v42;
  v43 = [v6 topAnchor];
  v44 = [v4 topAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v11 + 96) = v45;
  v46 = [v6 leadingAnchor];
  v47 = [v4 leadingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:28.0];

  *(v11 + 104) = v48;
  v49 = [v6 trailingAnchor];
  v50 = [v4 trailingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:-28.0];

  *(v11 + 112) = v51;
  v52 = [v4 heightAnchor];
  v53 = [v52 constraintEqualToConstant:76.0];

  v54 = *&v1[OBJC_IVAR____TtC7Measure17CardContainerView_bottomStackHeightConstraint];
  *&v1[OBJC_IVAR____TtC7Measure17CardContainerView_bottomStackHeightConstraint] = v53;
  v55 = v53;

  if (!v55)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v56 = swift_unknownObjectUnownedLoadStrong();
  if (v56)
  {
    v57 = v56;
    sub_100018630(0, &qword_1004A7550, UIView_ptr);
    v58 = v83;
    v59 = static NSObject.== infix(_:_:)();

    if (v59)
    {
      goto LABEL_18;
    }
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D6240;
  v61 = [v83 topAnchor];
  v62 = swift_unknownObjectUnownedLoadStrong();
  if (!v62)
  {
    goto LABEL_27;
  }

  v63 = v62;
  v64 = [v62 topAnchor];

  v65 = [v61 constraintEqualToAnchor:v64];
  *(inited + 32) = v65;
  v66 = [v83 bottomAnchor];
  v67 = swift_unknownObjectUnownedLoadStrong();
  if (!v67)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v68 = v67;
  v69 = [v67 bottomAnchor];

  v70 = [v66 constraintEqualToAnchor:v69];
  *(inited + 40) = v70;
  v71 = [v83 widthAnchor];
  v72 = swift_unknownObjectUnownedLoadStrong();
  if (!v72)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v73 = v72;
  v74 = [v72 widthAnchor];

  v75 = [v71 constraintEqualToAnchor:v74];
  *(inited + 48) = v75;
  v76 = [v83 centerXAnchor];
  v77 = swift_unknownObjectUnownedLoadStrong();
  if (v77)
  {
    v78 = v77;
    v79 = [v77 centerXAnchor];

    v80 = [v76 constraintEqualToAnchor:v79];
    *(inited + 56) = v80;
    sub_100103C58(inited);
LABEL_18:
    v81 = objc_opt_self();
    sub_100018630(0, &qword_1004A1838, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v81 activateConstraints:isa];

    return;
  }

LABEL_30:
  __break(1u);
}

void sub_100173DD8(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC7Measure17CardContainerView_clearButton;
  if (*(a1 + OBJC_IVAR____TtC7Measure17CardContainerView_clearButton))
  {
    return;
  }

  v5 = objc_allocWithZone(type metadata accessor for ClearAllButton());
  v6 = sub_1001723A4();
  v7 = *(a1 + v2);
  *(a1 + v2) = v6;

  v8 = *(a1 + v2);
  if (v8)
  {
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v9 = *(a1 + OBJC_IVAR____TtC7Measure17CardContainerView_bottomStackView);
  v10 = [v9 contentView];
  if (!*(a1 + v2))
  {
    goto LABEL_19;
  }

  v11 = v10;
  [v10 addSubview:?];

  v12 = *(a1 + OBJC_IVAR____TtC7Measure17CardContainerView_bottomStackHeightConstraint);
  if (v12)
  {
    [v12 setConstant:136.0];
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  if (!Strong)
  {
    goto LABEL_20;
  }

  v14 = Strong;
  [Strong setContentInset:{0.0, 0.0, 136.0, 0.0}];

  v15 = swift_unknownObjectUnownedLoadStrong();
  if (!v15)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 setVerticalScrollIndicatorInsets:{0.0, 0.0, 136.0, 0.0}];

  v17 = *(a1 + v2);
  if (!v17 || (v18 = [v17 heightAnchor], v19 = objc_msgSend(v18, "constraintEqualToConstant:", 48.0), v18, objc_msgSend(v19, "setActive:", 1), v19, (v20 = *(a1 + v2)) == 0) || (v21 = objc_msgSend(v20, "topAnchor"), v22 = objc_msgSend(*(a1 + OBJC_IVAR____TtC7Measure17CardContainerView_copyButton), "bottomAnchor"), v23 = objc_msgSend(v21, "constraintEqualToAnchor:constant:", v22, 12.0), v21, v22, objc_msgSend(v23, "setActive:", 1), v23, (v24 = *(a1 + v2)) == 0) || (v25 = objc_msgSend(v24, "leadingAnchor"), v26 = objc_msgSend(v9, "leadingAnchor"), v27 = objc_msgSend(v25, "constraintEqualToAnchor:constant:", v26, 28.0), v25, v26, objc_msgSend(v27, "setActive:", 1), v27, (v28 = *(a1 + v2)) == 0) || (v29 = objc_msgSend(v28, "trailingAnchor"), v30 = objc_msgSend(v9, "trailingAnchor"), v31 = objc_msgSend(v29, "constraintEqualToAnchor:constant:", v30, -28.0), v29, v30, objc_msgSend(v31, "setActive:", 1), v31, (v32 = *(a1 + v2)) == 0) || (v33 = objc_msgSend(v32, "bottomAnchor"), v34 = objc_msgSend(v9, "bottomAnchor"), v35 = objc_msgSend(v33, "constraintEqualToAnchor:constant:", v34, -28.0), v33, v34, objc_msgSend(v35, "setActive:", 1), v35, (v36 = *(a1 + v2)) == 0))
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  swift_unknownObjectWeakAssign();

  [v36 addTarget:a2 action:"clearAll" forControlEvents:64];
}

void sub_1001741E4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Measure17CardContainerView_titleView;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for CardTitleView()) init];
  v3 = OBJC_IVAR____TtC7Measure17CardContainerView_copyButton;
  v4 = objc_allocWithZone(type metadata accessor for PlatterCopyButton());
  *(v1 + v3) = sub_1001A14D0();
  swift_unknownObjectUnownedInit();
  *(v1 + OBJC_IVAR____TtC7Measure17CardContainerView_clearButton) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure17CardContainerView_bottomStackHeightConstraint) = 0;
  v5 = OBJC_IVAR____TtC7Measure17CardContainerView_bottomStackView;
  v6 = [objc_allocWithZone(UIGlassContainerEffect) init];
  v7 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v6];

  *(v1 + v5) = v7;
  v8 = OBJC_IVAR____TtC7Measure17CardContainerView_contentScrollView;
  *(v1 + v8) = [objc_allocWithZone(UIScrollView) init];
  *(v1 + OBJC_IVAR____TtC7Measure17CardContainerView____lazy_storage___bottomStackViewInteraction) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double *sub_100174334(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_1000A2590(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for MeasureObject();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 2);
        v6 = *(v3 + 3);
        if (v7 >= v6 >> 1)
        {
          sub_1000A2590((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 2) = v7 + 1;
        sub_1000C0FAC(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for MeasureObject();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 2);
        v10 = *(v3 + 3);
        if (v11 >= v10 >> 1)
        {
          sub_1000A2590((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 2) = v11 + 1;
        sub_1000C0FAC(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

double *sub_100174550(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    a2(0, v4, 0);
    v9 = a1 + 48;
    do
    {
      sub_10000F974(&qword_1004AC608, &qword_1003DFE48);
      sub_10000F974(a3, a4);
      swift_dynamicCast();
      v10 = v16;
      v11 = v17;
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (*&v13 >= *&v12 >> 1)
      {
        a2(*&v12 > 1uLL, *&v13 + 1, 1);
        v11 = v17;
        v10 = v16;
      }

      *&_swiftEmptyArrayStorage[2] = *&v13 + 1;
      v14 = &_swiftEmptyArrayStorage[4 * *&v13];
      *(v14 + 2) = v10;
      *(v14 + 3) = v11;
      v9 += 32;
      --v4;
    }

    while (v4);
  }

  return _swiftEmptyArrayStorage;
}

double *sub_100174688(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      Double._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

double *sub_100174730(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1000A2590(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    type metadata accessor for CATransform3D(0);
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 2);
      v5 = *(v2 + 3);
      if (v6 >= v5 >> 1)
      {
        sub_1000A2590((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 2) = v6 + 1;
      sub_1000C0FAC(&v8, &v2[4 * v6 + 4]);
      v4 += 128;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_100174858(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC7Measure15ReticleAnimator__reticlePulseState;
  KeyPath = swift_getKeyPath();
  v10 = sub_10000F974(&unk_1004AC5F0, &qword_1003DD618);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v11 = qword_1004D5058;
  v12 = *(v10 + 272);

  *&v5[v8] = v12(KeyPath, v11);
  v13 = &v5[OBJC_IVAR____TtC7Measure15ReticleAnimator_snapAnimationKey];
  *v13 = 0xD000000000000015;
  *(v13 + 1) = 0x800000010040A8F0;
  v14 = &v5[OBJC_IVAR____TtC7Measure15ReticleAnimator_unsnapAnimationKey];
  *v14 = 0xD000000000000017;
  *(v14 + 1) = 0x800000010040A910;
  v15 = &v5[OBJC_IVAR____TtC7Measure15ReticleAnimator_goodStateAnimationKey];
  *v15 = 0xD000000000000013;
  *(v15 + 1) = 0x800000010040A930;
  v16 = OBJC_IVAR____TtC7Measure15ReticleAnimator_continueAnimation;
  v17 = String._bridgeToObjectiveC()();
  v18 = objc_opt_self();
  v19 = [v18 animationWithKeyPath:v17];

  *&v5[v16] = v19;
  v20 = OBJC_IVAR____TtC7Measure15ReticleAnimator_snapPointAnimation;
  v21 = String._bridgeToObjectiveC()();
  v22 = objc_opt_self();
  v23 = [v22 animationWithKeyPath:v21];

  *&v5[v20] = v23;
  v24 = OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation;
  v25 = String._bridgeToObjectiveC()();
  v26 = [v22 animationWithKeyPath:v25];

  *&v5[v24] = v26;
  v27 = OBJC_IVAR____TtC7Measure15ReticleAnimator_idlePulsateAnimation;
  v28 = String._bridgeToObjectiveC()();
  v29 = [v18 animationWithKeyPath:v28];

  *&v5[v27] = v29;
  v30 = OBJC_IVAR____TtC7Measure15ReticleAnimator_scaleOutAnimation;
  v31 = String._bridgeToObjectiveC()();
  v32 = [v22 animationWithKeyPath:v31];

  *&v5[v30] = v32;
  *&v5[OBJC_IVAR____TtC7Measure15ReticleAnimator_reticleShapeLayer] = a1;
  *&v5[OBJC_IVAR____TtC7Measure15ReticleAnimator_snapPointLayer] = a4;
  *&v5[OBJC_IVAR____TtC7Measure15ReticleAnimator_pulsateLayer] = a2;
  *&v5[OBJC_IVAR____TtC7Measure15ReticleAnimator_dropLayer] = a3;
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v33 = a1;
  v34 = a4;
  v35 = a2;
  v36 = a3;
  v37 = objc_msgSendSuper2(&v42, "init");
  sub_100174BDC();

  return v37;
}

id sub_100174BDC()
{
  v1 = _swiftEmptyArrayStorage;
  for (i = &stru_100000020; ; i += 8)
  {
    CATransform3DMakeScale(&v35, *(&off_100465248 + i), *(&off_100465248 + i), 1.0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_100068CF4(0, *(v1 + 2) + 1, 1, v1);
    }

    v4 = *(v1 + 2);
    v3 = *(v1 + 3);
    if (v4 >= v3 >> 1)
    {
      v1 = sub_100068CF4((v3 > 1), v4 + 1, 1, v1);
    }

    *(v1 + 2) = v4 + 1;
    v5 = &v1[16 * v4];
    v6 = *&v35.m11;
    v7 = *&v35.m13;
    v8 = *&v35.m23;
    *(v5 + 4) = *&v35.m21;
    *(v5 + 5) = v8;
    *(v5 + 2) = v6;
    *(v5 + 3) = v7;
    v9 = *&v35.m31;
    v10 = *&v35.m33;
    v11 = *&v35.m43;
    *(v5 + 8) = *&v35.m41;
    *(v5 + 9) = v11;
    *(v5 + 6) = v9;
    *(v5 + 7) = v10;
    if (i == 304)
    {
      break;
    }
  }

  v12 = *(v0 + OBJC_IVAR____TtC7Measure15ReticleAnimator_continueAnimation);
  sub_100174688(&off_100465380);
  sub_100018630(0, &qword_1004AE140, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 setKeyTimes:isa];

  sub_100174730(v1);

  v14 = Array._bridgeToObjectiveC()().super.isa;

  [v12 setValues:v14];

  [v12 setDuration:1.0];
  v15 = _swiftEmptyArrayStorage;
  for (j = &stru_100000020; ; j += 8)
  {
    CATransform3DMakeScale(&v34, *(&off_100465248 + j), *(&off_100465248 + j), 1.0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_100068CF4(0, *(v15 + 2) + 1, 1, v15);
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_100068CF4((v17 > 1), v18 + 1, 1, v15);
    }

    *(v15 + 2) = v18 + 1;
    v19 = &v15[16 * v18];
    v20 = *&v34.m11;
    v21 = *&v34.m13;
    v22 = *&v34.m23;
    *(v19 + 4) = *&v34.m21;
    *(v19 + 5) = v22;
    *(v19 + 2) = v20;
    *(v19 + 3) = v21;
    v23 = *&v34.m31;
    v24 = *&v34.m33;
    v25 = *&v34.m43;
    *(v19 + 8) = *&v34.m41;
    *(v19 + 9) = v25;
    *(v19 + 6) = v23;
    *(v19 + 7) = v24;
    if (j == 304)
    {
      break;
    }
  }

  v26 = *(v0 + OBJC_IVAR____TtC7Measure15ReticleAnimator_idlePulsateAnimation);
  sub_100174688(&off_1004654B8);
  v27 = Array._bridgeToObjectiveC()().super.isa;

  [v26 setKeyTimes:v27];

  sub_100174730(v15);

  v28 = Array._bridgeToObjectiveC()().super.isa;

  [v26 setValues:v28];

  [v26 setDuration:1.0];
  v29 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v26 setTimingFunction:v29];

  v30 = *(v0 + OBJC_IVAR____TtC7Measure15ReticleAnimator_snapPointAnimation);
  [v30 setDamping:40.0];
  [v30 setStiffness:400.0];
  [v30 setDuration:0.5];
  [v30 setDelegate:v0];
  [v30 setRemovedOnCompletion:0];
  v31 = *(v0 + OBJC_IVAR____TtC7Measure15ReticleAnimator_scaleOutAnimation);
  [v31 setDamping:30.0];
  [v31 setStiffness:180.0];
  [v31 settlingDuration];
  [v31 setDuration:?];
  [v31 setDelegate:v0];
  [v31 setRemovedOnCompletion:0];
  v32 = *(v0 + OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation);
  [v32 setDamping:24.0];
  [v32 setStiffness:300.0];
  [v32 settlingDuration];
  [v32 setDuration:?];
  [v32 setDelegate:v0];

  return [v32 setRemovedOnCompletion:0];
}

void sub_1001750E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure15ReticleAnimator_snapPointAnimation);
  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v1 setFromValue:isa];

  v3 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v1 setToValue:v3];

  if ([v1 toValue])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000C0FAC(&v7, &v8);
    swift_dynamicCast();
    v4 = *(v0 + OBJC_IVAR____TtC7Measure15ReticleAnimator_snapPointLayer);
    CATransform3DMakeScale(&sx, sx.m11, sx.m11, 1.0);
    [v4 setTransform:&sx];
    v5 = String._bridgeToObjectiveC()();
    [v4 addAnimation:v1 forKey:v5];
  }

  else
  {
    __break(1u);
  }
}

void sub_10017523C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Measure15ReticleAnimator__reticlePulseState;
  v3 = *(**&v0[OBJC_IVAR____TtC7Measure15ReticleAnimator__reticlePulseState] + 144);

  v3(v15, v4);

  if (LOBYTE(v15[0]) != 1)
  {
    v5 = *(**&v0[v2] + 200);

    v7 = v5(v6);

    (*(*v7 + 280))(sub_100032520, 0);

    v8 = objc_opt_self();
    [v8 begin];
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    v15[4] = sub_100177658;
    v15[5] = v9;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_100041180;
    v15[3] = &unk_1004706A0;
    v10 = _Block_copy(v15);
    v11 = v1;

    [v8 setCompletionBlock:v10];
    _Block_release(v10);
    v12 = *&v11[OBJC_IVAR____TtC7Measure15ReticleAnimator_dropLayer];
    v13 = *&v11[OBJC_IVAR____TtC7Measure15ReticleAnimator_continueAnimation];
    v14 = String._bridgeToObjectiveC()();
    [v12 addAnimation:v13 forKey:v14];

    [v8 commit];
  }
}

double sub_100175488(uint64_t a1)
{
  v1 = *(**(a1 + OBJC_IVAR____TtC7Measure15ReticleAnimator__reticlePulseState) + 200);

  v3 = v1(v2);

  (*(*v3 + 280))(sub_10003258C, 0);

  return result;
}

void sub_100175558(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_reticleShapeLayer);
  [v3 removeAllAnimations];
  v4 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_snapPointLayer);
  [v4 removeAllAnimations];
  [*(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_pulsateLayer) removeAllAnimations];
  [*(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_dropLayer) removeAllAnimations];
  CATransform3DMakeScale(&v43, 1.0, 1.0, 1.0);
  [v4 setTransform:&v43];
  switch(a1)
  {
    case 1:
      v5 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation);
      if (qword_1004A0720 != -1)
      {
        swift_once();
      }

      v28 = [qword_1004D52B0 CGColor];
      [v5 setFromValue:v28];

      if (qword_1004A0718 != -1)
      {
        swift_once();
      }

      v29 = qword_1004D52A8;
      v30 = [qword_1004D52A8 CGColor];
      if (qword_1004A0728 != -1)
      {
        swift_once();
      }

      v31 = qword_1004D52B8;

      [v3 setStrokeColor:v30];
      v32 = [v3 strokeColor];
      [v5 setToValue:v32];

      v33 = sub_100175DCC();
      v34 = qword_1004A0730;
      v13 = v33;
      if (v34 != -1)
      {
        swift_once();
      }

      v35 = [qword_1004D52C0 CGColor];
      [v13 setFromValue:v35];

      v36 = [v31 CGColor];
      [v4 setFillColor:v36];

      v37 = [v4 fillColor];
      [v13 setToValue:v37];

      v17 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_scaleOutAnimation);
      CATransform3DMakeScale(&v43, 1.0, 1.0, 1.0);
      isa = CATransform3D._bridgeToObjectiveC()().super.isa;
      [v17 setFromValue:isa];

      v19 = 1.5;
      v20 = 1.5;
      v21 = 1.5;
      break;
    case 3:
      v22 = sub_100175DCC();
      v23 = qword_1004A0730;
      v13 = v22;
      if (v23 != -1)
      {
        swift_once();
      }

      v24 = [qword_1004D52C0 CGColor];
      [v13 setFromValue:v24];

      if (qword_1004A0718 != -1)
      {
        swift_once();
      }

      if (qword_1004A0728 != -1)
      {
        swift_once();
      }

      v25 = [qword_1004D52B8 CGColor];
      [v4 setFillColor:v25];

      v26 = [v4 fillColor];
      [v13 setToValue:v26];

      v27 = String._bridgeToObjectiveC()();
      [v4 addAnimation:v13 forKey:v27];
      goto LABEL_30;
    case 2:
      v5 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation);
      if (qword_1004A0720 != -1)
      {
        swift_once();
      }

      v6 = [qword_1004D52B0 CGColor];
      [v5 setFromValue:v6];

      if (qword_1004A0718 != -1)
      {
        swift_once();
      }

      v7 = qword_1004D52A8;
      v8 = [qword_1004D52A8 CGColor];
      if (qword_1004A0728 != -1)
      {
        swift_once();
      }

      v9 = qword_1004D52B8;

      [v3 setStrokeColor:v8];
      v10 = [v3 strokeColor];
      [v5 setToValue:v10];

      v11 = sub_100175DCC();
      v12 = qword_1004A0738;
      v13 = v11;
      if (v12 != -1)
      {
        swift_once();
      }

      v14 = [qword_1004D52C8 CGColor];
      [v13 setFromValue:v14];

      v15 = [v9 CGColor];
      [v4 setFillColor:v15];

      v16 = [v4 fillColor];
      [v13 setToValue:v16];

      v17 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_scaleOutAnimation);
      CATransform3DMakeScale(&v43, 1.0, 1.0, 1.0);
      v18 = CATransform3D._bridgeToObjectiveC()().super.isa;
      [v17 setFromValue:v18];

      v19 = 1.5;
      v20 = 1.5;
      v21 = 1.0;
      break;
    default:
      return;
  }

  CATransform3DMakeScale(&v42, v19, v20, v21);
  [v3 setTransform:&v42];
  CATransform3DMakeScale(&v42, 1.5, 1.5, 1.0);
  v39 = CATransform3D._bridgeToObjectiveC()().super.isa;
  [v17 setToValue:v39];

  v40 = String._bridgeToObjectiveC()();
  [v3 addAnimation:v5 forKey:v40];

  v41 = String._bridgeToObjectiveC()();
  [v4 addAnimation:v13 forKey:v41];

  v27 = String._bridgeToObjectiveC()();
  [v3 addAnimation:v17 forKey:v27];
LABEL_30:
}

id sub_100175DCC()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() animationWithKeyPath:v1];

  v3 = *(v0 + OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation);
  [v3 damping];
  [v2 setDamping:?];
  [v3 stiffness];
  [v2 setStiffness:?];
  v4 = v2;
  [v4 settlingDuration];
  [v4 setDuration:?];

  return v4;
}

void sub_100175EBC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC7Measure15ReticleAnimator_reticleShapeLayer);
  [v4 removeAllAnimations];
  v5 = *(v2 + OBJC_IVAR____TtC7Measure15ReticleAnimator_snapPointLayer);
  [v5 removeAllAnimations];
  v6 = *(v2 + OBJC_IVAR____TtC7Measure15ReticleAnimator_pulsateLayer);
  [v6 removeAllAnimations];
  [*(v2 + OBJC_IVAR____TtC7Measure15ReticleAnimator_dropLayer) removeAllAnimations];
  if (!a1 || a1 == 3)
  {
    v44 = v6;
    v22 = *(v2 + OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation);
    if (qword_1004A0718 != -1)
    {
      swift_once();
    }

    v23 = [qword_1004D52A8 CGColor];
    [v22 setFromValue:v23];

    if (qword_1004A0720 != -1)
    {
      swift_once();
    }

    v24 = qword_1004D52B0;
    v25 = [qword_1004D52B0 CGColor];
    if (qword_1004A0738 != -1)
    {
      swift_once();
    }

    [v4 setStrokeColor:v25];
    v26 = [v4 strokeColor];
    [v22 setToValue:v26];

    v27 = sub_100175DCC();
    v28 = qword_1004A0728;
    v29 = v27;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = [qword_1004D52B8 CGColor];
    [v29 setFromValue:v30];

    v31 = [qword_1004D52C8 CGColor];
    [v5 setFillColor:v31];

    v32 = [v5 fillColor];
    [v29 setToValue:v32];

    v33 = String._bridgeToObjectiveC()();
    [v4 addAnimation:v22 forKey:v33];

    v34 = String._bridgeToObjectiveC()();
    [v5 addAnimation:v29 forKey:v34];

    v35 = *(v2 + OBJC_IVAR____TtC7Measure15ReticleAnimator_scaleOutAnimation);
    CATransform3DMakeScale(&v46, 1.5, 1.5, 1.0);
    isa = CATransform3D._bridgeToObjectiveC()().super.isa;
    [v35 setFromValue:isa];

    CATransform3DMakeScale(&v45, 1.0, 1.0, 1.0);
    [v4 setTransform:&v45];
    CATransform3DMakeScale(&v45, 1.0, 1.0, 1.0);
    v37 = CATransform3D._bridgeToObjectiveC()().super.isa;
    [v35 setToValue:v37];

    v38 = String._bridgeToObjectiveC()();
    [v4 addAnimation:v35 forKey:v38];

    v39 = *(v2 + OBJC_IVAR____TtC7Measure15ReticleAnimator_idlePulsateAnimation);
    LODWORD(v40) = 2139095039;
    [v39 setRepeatCount:v40];
    v41 = String._bridgeToObjectiveC()();
    [v44 addAnimation:v39 forKey:v41];
  }

  else if (a1 == 1)
  {
    v43 = v6;
    v7 = *(v2 + OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation);
    if (qword_1004A0720 != -1)
    {
      swift_once();
    }

    v8 = qword_1004D52B0;
    v9 = [qword_1004D52B0 CGColor];
    [v7 setFromValue:v9];

    v10 = [v8 CGColor];
    if (qword_1004A0738 != -1)
    {
      swift_once();
    }

    [v4 setStrokeColor:v10];
    v11 = [v4 strokeColor];
    [v7 setToValue:v11];

    v12 = sub_100175DCC();
    v13 = qword_1004A0730;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = [qword_1004D52C0 CGColor];
    [v14 setFromValue:v15];

    v16 = [qword_1004D52C8 CGColor];
    [v5 setFillColor:v16];

    v17 = [v5 fillColor];
    [v14 setToValue:v17];

    v18 = String._bridgeToObjectiveC()();
    [v4 addAnimation:v7 forKey:v18];

    v19 = String._bridgeToObjectiveC()();
    [v5 addAnimation:v14 forKey:v19];

    v20 = *(v2 + OBJC_IVAR____TtC7Measure15ReticleAnimator_idlePulsateAnimation);
    LODWORD(v21) = 2139095039;
    [v20 setRepeatCount:v21];
    v42 = String._bridgeToObjectiveC()();
    [v43 addAnimation:v20 forKey:v42];
  }
}

void sub_100176628(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_reticleShapeLayer);
  [v3 removeAllAnimations];
  v4 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_snapPointLayer);
  [v4 removeAllAnimations];
  [*(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_pulsateLayer) removeAllAnimations];
  [*(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_dropLayer) removeAllAnimations];
  CATransform3DMakeScale(&v22, 1.0, 1.0, 1.0);
  [v4 setTransform:&v22];
  switch(a1)
  {
    case 0:
      v15 = sub_100175DCC();
      v16 = qword_1004A0728;
      v17 = v15;
      if (v16 != -1)
      {
        swift_once();
      }

      v18 = [qword_1004D52B8 CGColor];
      [v17 setFromValue:v18];

      if (qword_1004A0718 != -1)
      {
        swift_once();
      }

      if (qword_1004A0730 != -1)
      {
        swift_once();
      }

      v19 = [qword_1004D52C0 CGColor];
      [v4 setFillColor:v19];

      v20 = [v4 fillColor];
      [v17 setToValue:v20];

      v14 = String._bridgeToObjectiveC()();
      [v4 addAnimation:v17 forKey:v14];

      goto LABEL_23;
    case 1:
      v5 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation);
      if (qword_1004A0720 != -1)
      {
        swift_once();
      }

      v8 = [qword_1004D52B0 CGColor];
      [v5 setFromValue:v8];

      if (qword_1004A0718 != -1)
      {
        swift_once();
      }

      v7 = [qword_1004D52A8 CGColor];
      if (qword_1004A0730 == -1)
      {
        goto LABEL_15;
      }

      break;
    case 2:
      v5 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation);
      if (qword_1004A0720 != -1)
      {
        swift_once();
      }

      v6 = [qword_1004D52B0 CGColor];
      [v5 setFromValue:v6];

      if (qword_1004A0718 != -1)
      {
        swift_once();
      }

      v7 = [qword_1004D52A8 CGColor];
      if (qword_1004A0730 == -1)
      {
        goto LABEL_15;
      }

      break;
    default:
      return;
  }

  swift_once();
LABEL_15:

  [v3 setStrokeColor:v7];
  v9 = [v3 strokeColor];
  [v5 setToValue:v9];

  v10 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_scaleOutAnimation);
  CATransform3DMakeScale(&v22, 1.0, 1.0, 1.0);
  isa = CATransform3D._bridgeToObjectiveC()().super.isa;
  [v10 setFromValue:isa];

  CATransform3DMakeScale(&v21, 1.5, 1.5, 1.5);
  [v3 setTransform:&v21];
  CATransform3DMakeScale(&v21, 1.5, 1.5, 1.0);
  v12 = CATransform3D._bridgeToObjectiveC()().super.isa;
  [v10 setToValue:v12];

  v13 = String._bridgeToObjectiveC()();
  [v3 addAnimation:v5 forKey:v13];

  v14 = String._bridgeToObjectiveC()();
  [v3 addAnimation:v10 forKey:v14];
LABEL_23:
}

void sub_100176C0C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_reticleShapeLayer);
  [v3 removeAllAnimations];
  v4 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_snapPointLayer);
  [v4 removeAllAnimations];
  [*(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_pulsateLayer) removeAllAnimations];
  [*(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_dropLayer) removeAllAnimations];
  if (!a1 || a1 == 3)
  {
    v18 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation);
    if (qword_1004A0718 != -1)
    {
      swift_once();
    }

    v19 = [qword_1004D52A8 CGColor];
    [v18 setFromValue:v19];

    if (qword_1004A0720 != -1)
    {
      swift_once();
    }

    v20 = qword_1004D52B0;
    v21 = [qword_1004D52B0 CGColor];
    if (qword_1004A0730 != -1)
    {
      swift_once();
    }

    v22 = qword_1004D52C0;

    [v3 setStrokeColor:v21];
    v23 = [v3 strokeColor];
    [v18 setToValue:v23];

    v24 = sub_100175DCC();
    v25 = qword_1004A0728;
    v26 = v24;
    if (v25 != -1)
    {
      swift_once();
    }

    v27 = [qword_1004D52B8 CGColor];
    [v26 setFromValue:v27];

    v28 = [v22 CGColor];
    [v4 setFillColor:v28];

    v29 = [v4 fillColor];
    [v26 setToValue:v29];

    v30 = String._bridgeToObjectiveC()();
    [v3 addAnimation:v18 forKey:v30];

    v31 = String._bridgeToObjectiveC()();
    [v4 addAnimation:v26 forKey:v31];

    v32 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_scaleOutAnimation);
    CATransform3DMakeScale(&v38, 1.5, 1.5, 1.0);
    isa = CATransform3D._bridgeToObjectiveC()().super.isa;
    [v32 setFromValue:isa];

    CATransform3DMakeScale(&v37, 1.0, 1.0, 1.0);
    [v3 setTransform:&v37];
    CATransform3DMakeScale(&v37, 1.0, 1.0, 1.0);
    v34 = CATransform3D._bridgeToObjectiveC()().super.isa;
    [v32 setToValue:v34];

    v35 = String._bridgeToObjectiveC()();
    [v3 addAnimation:v32 forKey:v35];
  }

  else if (a1 == 2)
  {
    v5 = *(v1 + OBJC_IVAR____TtC7Measure15ReticleAnimator_colorChangeAnimation);
    if (qword_1004A0720 != -1)
    {
      swift_once();
    }

    v6 = qword_1004D52B0;
    v7 = [qword_1004D52B0 CGColor];
    [v5 setFromValue:v7];

    v8 = [v6 CGColor];
    if (qword_1004A0730 != -1)
    {
      swift_once();
    }

    v9 = qword_1004D52C0;

    [v3 setStrokeColor:v8];
    v10 = [v3 strokeColor];
    [v5 setToValue:v10];

    v11 = sub_100175DCC();
    v12 = qword_1004A0738;
    v13 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = [qword_1004D52C8 CGColor];
    [v13 setFromValue:v14];

    v15 = [v9 CGColor];
    [v4 setFillColor:v15];

    v16 = [v4 fillColor];
    [v13 setToValue:v16];

    v17 = String._bridgeToObjectiveC()();
    [v3 addAnimation:v5 forKey:v17];

    v36 = String._bridgeToObjectiveC()();
    [v4 addAnimation:v13 forKey:v36];
  }
}

void sub_100177430(void *a1, char a2)
{
  if (a2)
  {
    if (v4 = *(v2 + OBJC_IVAR____TtC7Measure15ReticleAnimator_snapPointLayer), v5 = String._bridgeToObjectiveC()(), v6 = [v4 animationForKey:v5], v5, v6) && (sub_100018630(0, &qword_1004AC600, CAAnimation_ptr), v7 = a1, v8 = static NSObject.== infix(_:_:)(), v6, v7, (v8) || (v9 = String._bridgeToObjectiveC()(), v10 = objc_msgSend(v4, "animationForKey:", v9), v9, v10) && (sub_100018630(0, &qword_1004AC600, CAAnimation_ptr), v11 = a1, v12 = static NSObject.== infix(_:_:)(), v10, v11, (v12))
    {

      [v4 removeAllAnimations];
    }
  }
}

uint64_t sub_100177620()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100177660(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001776A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000F974(&qword_1004A3F50, &qword_1003D8110);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v6 = qword_1004D5058;
  v7 = *(v4 + 272);
  swift_retain_n();
  *(v2 + 64) = v7(KeyPath, v6);
  v8 = sub_10000F974(&qword_1004A11D8, &qword_1003DD120);
  v9 = swift_getKeyPath();
  v10 = *(v8 + 272);

  *(v2 + 72) = v10(v9, v6);
  v11 = swift_getKeyPath();
  v12 = *(sub_10000F974(&qword_1004A11D0, &unk_1003D54E0) + 272);

  *(v2 + 80) = v12(v11, v6);
  v13 = swift_getKeyPath();
  v14 = *(sub_10000F974(&qword_1004A1200, &unk_1003D5600) + 272);

  *(v2 + 88) = v14(v13, v6);
  v15 = swift_getKeyPath();
  v16 = *(sub_10000F974(&qword_1004A72F8, &qword_1003DAE68) + 272);

  *(v2 + 96) = v16(v15, v6);
  v17 = sub_10000F974(&qword_1004A2890, &qword_1003D6FD0);
  v18 = swift_getKeyPath();
  *(v2 + 104) = (*(v17 + 272))(v18, v6);
  sub_10000F974(&qword_1004AC7E8, &qword_1003E01F0);
  swift_getKeyPath();
  *(v2 + 112) = MutableStateValue.__allocating_init(_:_:)();
  v19 = sub_10000F974(&qword_1004AC7F0, &qword_1003E0220);
  v20 = swift_getKeyPath();
  *(v2 + 120) = (*(v19 + 272))(v20, v6);
  *(v2 + 136) = 2;
  *(v2 + 138) = 0;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 1;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 1;
  *(v2 + 368) = 0;
  *(v2 + 376) = 1;
  v21 = qword_1004AC620;
  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 56))(v2 + v21, 1, 1, v22);
  *(v2 + 128) = a1;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 352) = 0u;
  return StateObserver.init(configuration:)();
}

void sub_100177A70()
{
  v1 = v0;
  v2 = sub_10000F974(&qword_1004A3F50, &qword_1003D8110);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v2 + 272);
  swift_retain_n();
  *(v1 + 64) = v5(KeyPath, v4);
  v6 = sub_10000F974(&qword_1004A11D8, &qword_1003DD120);
  v7 = swift_getKeyPath();
  v8 = *(v6 + 272);

  *(v1 + 72) = v8(v7, v4);
  v9 = swift_getKeyPath();
  v10 = *(sub_10000F974(&qword_1004A11D0, &unk_1003D54E0) + 272);

  *(v1 + 80) = v10(v9, v4);
  v11 = swift_getKeyPath();
  v12 = *(sub_10000F974(&qword_1004A1200, &unk_1003D5600) + 272);

  *(v1 + 88) = v12(v11, v4);
  v13 = swift_getKeyPath();
  v14 = *(sub_10000F974(&qword_1004A72F8, &qword_1003DAE68) + 272);

  *(v1 + 96) = v14(v13, v4);
  v15 = sub_10000F974(&qword_1004A2890, &qword_1003D6FD0);
  v16 = swift_getKeyPath();
  *(v1 + 104) = (*(v15 + 272))(v16, v4);
  sub_10000F974(&qword_1004AC7E8, &qword_1003E01F0);
  swift_getKeyPath();
  *(v1 + 112) = MutableStateValue.__allocating_init(_:_:)();
  v17 = sub_10000F974(&qword_1004AC7F0, &qword_1003E0220);
  v18 = swift_getKeyPath();
  *(v1 + 120) = (*(v17 + 272))(v18, v4);
  *(v1 + 136) = 2;
  *(v1 + 138) = 0;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 1;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 1;
  *(v1 + 368) = 0;
  *(v1 + 376) = 1;
  v19 = qword_1004AC620;
  v20 = type metadata accessor for Date();
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_100177E0C()
{

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  swift_allocObject();
  swift_weakInit();

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  return result;
}

void sub_100177F70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x8000000000000018 && *(a2 + 136) < 2u)
  {
    *(a2 + 136) = 2;
    v3 = *(*(a2 + 128) + OBJC_IVAR____TtC7Measure11ReticleView_animator);
    if (v3)
    {
      v4 = v3;
      sub_1001750CC();
    }

    else
    {
      __break(1u);
    }
  }
}