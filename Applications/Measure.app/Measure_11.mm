uint64_t sub_1000E4310(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1000E4358(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000E43A8()
{
  v1 = v0 + qword_1004A8480;
  if ((*(v0 + qword_1004A8480 + 16) & 1) == 0)
  {

    Synchronized.wrappedValue.getter();

    if (v21)
    {
      if (qword_1004A02D0 != -1)
      {
        swift_once();
      }

      _StringGuts.grow(_:)(88);
      v2._countAndFlagsBits = 0xD000000000000029;
      v2._object = 0x8000000100406700;
      String.append(_:)(v2);
      v3 = *(*(v0 + qword_1004A8460) + 16);
      v4 = [v3 description];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8._countAndFlagsBits = v5;
      v8._object = v7;
      String.append(_:)(v8);

      v9._countAndFlagsBits = 0x20726574666120;
      v9._object = 0xE700000000000000;
      String.append(_:)(v9);
    }

    else
    {
      if (CACurrentMediaTime() - v20 <= 1.0)
      {
        return;
      }

      if (qword_1004A02D0 != -1)
      {
        swift_once();
      }

      _StringGuts.grow(_:)(84);
      v10._countAndFlagsBits = 0xD000000000000025;
      v10._object = 0x8000000100406760;
      String.append(_:)(v10);
      v11 = *(*(v0 + qword_1004A8460) + 16);
      v12 = [v11 description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16._countAndFlagsBits = v13;
      v16._object = v15;
      String.append(_:)(v16);

      v17._countAndFlagsBits = 0x20726574666120;
      v17._object = 0xE700000000000000;
      String.append(_:)(v17);
    }

    Double.write<A>(to:)();
    v18._object = 0x8000000100406730;
    v18._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    Log.error(_:isPrivate:)(v19, 0);

    *(v1 + 16) = 1;
  }
}

void sub_1000E46B4(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v20 = Strong;
    sub_1000E254C();
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    v11 = swift_unknownObjectWeakLoadStrong();
    if (!v11)
    {
      return;
    }

    v20 = v11;
    sub_1000E25F8();
LABEL_7:
    v13 = v20;

    return;
  }

  v20 = v8;
  if (a1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
    v14 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1000E5858;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_10046DAC0;
    v16 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000E5860(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
    sub_100031864();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v10, v20);
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      sub_1000E254C();
    }
  }
}

void sub_1000E4A74(unint64_t a1)
{
  v3 = *(**(v1 + qword_1004A8420) + 400);

  v4 = v3(v14);
  v6 = *v5;
  *v5 = a1;
  swift_errorRetain();
  sub_1000E5770(v6);
  v4(v14, 0);

  if (qword_1004A0260 != -1)
  {
    swift_once();
  }

  v14[0]._countAndFlagsBits = 0;
  v14[0]._object = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  v14[0]._countAndFlagsBits = 0xD00000000000001CLL;
  v14[0]._object = 0x80000001004067B0;
  swift_getErrorValue();
  v7._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v7);

  Log.error(_:isPrivate:)(v14[0], 0);

  v8 = _convertErrorToNSError(_:)();
  v14[0]._countAndFlagsBits = v8;
  type metadata accessor for ARError(0);
  sub_1000E5860(&qword_1004A8740, type metadata accessor for ARError, &unk_1003D4D08);
  _BridgedStoredNSError.code.getter();
  v9 = *(v1 + qword_1004A8428);
  if (v13 == 102)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  v12 = v10;
  v11 = *(*v9 + 392);

  v11(&v12);

  sub_1000E25F8();
}

void sub_1000E4CDC()
{
  v1 = *(**(v0 + qword_1004A8420) + 400);

  v2 = v1(v8);
  v4 = *v3;
  *v3 = 2;
  sub_1000E5770(v4);
  v2(v8, 0);

  if (qword_1004A0260 != -1)
  {
    swift_once();
  }

  v5._object = 0x8000000100406790;
  v5._countAndFlagsBits = 0xD000000000000018;
  Log.error(_:isPrivate:)(v5, 0);
  v6 = *(v0 + qword_1004A8428);
  v8[0] = 0;
  v7 = *(*v6 + 392);

  v7(v8);

  sub_1000E254C();
}

double sub_1000E4E50(void *a1, Swift::OpaquePointer a2)
{
  ariadne_trace(_:_:_:_:_:)();
  v4 = [a1 currentFrame];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 worldTrackingState];
    if (v6)
    {
      v7 = v6;
      if (([v6 majorRelocalization] & 1) != 0 || objc_msgSend(v7, "minorRelocalization"))
      {
        type metadata accessor for WorldAnchor();
        static WorldAnchor.resetPlanesConfidence()();
        v8 = v7;
      }

      else
      {
        v8 = v5;
        v5 = v7;
      }
    }
  }

  MeasureCore.shared.unsafeMutableAddressor();

  MeasureCore.didUpdate(anchors:)(a2);

  v9 = [a1 currentFrame];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 camera];

    [v11 transform];
  }

  type metadata accessor for WorldAnchor();
  static WorldAnchor.didUpdate(anchors:camera:forceUpdate:)();

  ariadne_trace(_:_:_:_:_:)();
  return result;
}

double sub_1000E5044(uint64_t a1)
{
  v45 = type metadata accessor for ARPlaneAnchor.Classification();
  v2 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MeasureCore.shared.unsafeMutableAddressor();

  MeasureCore.didAdd(anchors:)(a1);

  type metadata accessor for WorldAnchor();
  static WorldAnchor.didAdd(anchors:)();
  if (qword_1004A0350 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v4 = qword_1004D4F08 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
    swift_beginAccess();
    v5 = *(v4 + 73);
    v42 = v4;
    v43 = a1 >> 62;
    if (v5)
    {
      break;
    }

    if (v43)
    {
      goto LABEL_55;
    }

    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      break;
    }

LABEL_5:
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
          goto LABEL_34;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();

      if (v11)
      {
        *(v42 + 73) = 1;
        goto LABEL_15;
      }

      ++v7;
      if (v10 == v6)
      {
        goto LABEL_15;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  while (1)
  {
LABEL_15:
    v46 = _swiftEmptyArrayStorage;
    if (v43)
    {
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (!v13)
      {
LABEL_37:
        v42 = _swiftEmptyArrayStorage;
        goto LABEL_38;
      }
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_37;
      }
    }

    v14 = 0;
    v42 = _swiftEmptyArrayStorage;
    do
    {
      v15 = v14;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *(v12 + 16))
          {
            goto LABEL_32;
          }

          v16 = *(a1 + 8 * v15 + 32);
        }

        v17 = v16;
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v15;
        if (v14 == v13)
        {
          goto LABEL_38;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v42 = v46;
    }

    while (v14 != v13);
LABEL_38:
    v18 = v42;
    if (v42 >> 62)
    {
      break;
    }

    a1 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a1)
    {
      goto LABEL_53;
    }

LABEL_40:
    if (a1 >= 1)
    {
      v19 = 0;
      v40 = qword_1004A8430;
      v43 = v18 & 0xC000000000000001;
      v20 = (v2 + 88);
      v21 = enum case for ARPlaneAnchor.Classification.floor(_:);
      v39 = enum case for ARPlaneAnchor.Classification.ceiling(_:);
      v38 = (v2 + 8);
      while (1)
      {
        if (v43)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v28 = *(v18 + 8 * v19 + 32);
        }

        v29 = v28;
        v30 = v44;
        ARPlaneAnchor.classification.getter();
        v31 = (*v20)(v30, v45);
        if (v31 == v21)
        {
          v22 = *(**(v41 + v40) + 200);

          v24 = v22(v23);

          v25 = swift_allocObject();
          *(v25 + 16) = v29;
          v26 = *(*v24 + 280);
          v27 = v29;
          v26(sub_1000E56C4, v25);

          v18 = v42;
        }

        else
        {
          if (v31 != v39)
          {

            (*v38)(v44, v45);
            goto LABEL_44;
          }

          v32 = *(**(v41 + v40) + 200);

          v34 = v32(v33);

          v35 = swift_allocObject();
          *(v35 + 16) = v29;
          v36 = *(*v34 + 280);
          v27 = v29;
          v36(sub_1000E567C, v35);
          v18 = v42;
        }

LABEL_44:
        if (a1 == ++v19)
        {
          goto LABEL_53;
        }
      }
    }

    __break(1u);
LABEL_55:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  a1 = _CocoaArrayWrapper.endIndex.getter();
  if (a1)
  {
    goto LABEL_40;
  }

LABEL_53:

  return result;
}

uint64_t sub_1000E5644()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000E567C(uint64_t a1)
{
  result = [*(v1 + 16) transform];
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  *(a1 + 112) = v6;
  *(a1 + 128) = v7;
  *(a1 + 144) = 0;
  return result;
}

id sub_1000E56C4(uint64_t a1)
{
  result = [*(v1 + 16) transform];
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_1000E570C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ARCamera.TrackingState();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000E5770(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t sub_1000E5780(__n128 a1)
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v1, 24, 7);
}

void sub_1000E57B8()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_1000E43A8();
}

double sub_1000E5804(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000E5820(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_1000E5860(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E58C4(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v2 = *(a1 + 112);
  v7[6] = *(a1 + 96);
  v7[7] = v2;
  v7[8] = *(a1 + 128);
  v8 = *(a1 + 144);
  v3 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v3;
  v4 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v7[5] = v4;
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  return a2(v7);
}

double sub_1000E5928()
{
  v9 = sub_1000E7D64;
  v10 = v0;

  StateValue.ifUpdated(_:)();

  v1 = *(**(v0 + 96) + 200);

  v3 = v1(v2);

  v7 = sub_1000E7D9C;
  v8 = v0;
  v4 = *(*v3 + 296);

  v4(sub_1000E7DA0, v6);

  StateValue.ifUpdated(_:)();

  return result;
}

void sub_1000E5AC4(__int128 *a1)
{
  v2 = v1;
  v3 = a1[5];
  v4 = a1[7];
  v81 = a1[6];
  v82 = v4;
  v5 = a1[1];
  v6 = a1[3];
  v77 = a1[2];
  v78 = v6;
  v8 = a1[3];
  v7 = a1[4];
  v9 = v7;
  v80 = a1[5];
  v79 = v7;
  v10 = *a1;
  v11 = *a1;
  v76 = a1[1];
  v75 = v10;
  v12 = a1[7];
  v90 = v81;
  v91 = v12;
  v86 = v77;
  v87 = v8;
  v88 = v9;
  v89 = v3;
  v83 = *(a1 + 128);
  v92 = *(a1 + 128);
  v84 = v11;
  v85 = v5;
  if (sub_10001376C(&v84) != 1)
  {
    if (v87)
    {
      sub_100013784(&v75, v70);
LABEL_16:
      v57 = *(v1 + 120);
      *(v1 + 120) = v75;

      return;
    }

    v16 = v86;
    v62 = DWORD1(v85);
    v17 = v85;
    v63 = v85;
    v60 = v86;
    sub_100013784(&v75, v70);
    v18 = v84;
    v19 = *((swift_isaMask & *v84) + 0x2A0);
    sub_100013784(&v75, v70);
    v71[6] = v81;
    v71[7] = v82;
    v72 = v83;
    v71[2] = v77;
    v71[3] = v78;
    v71[5] = v80;
    v71[4] = v79;
    v71[1] = v76;
    v71[0] = v75;
    sub_100013784(&v75, v70);
    sub_100013784(&v75, v70);
    v20 = sub_1000E7E0C(v71, v70);
    v19(v20);
    sub_1000137F4(&v75);
    simd_float4x4.position.getter();
    v21 = *((swift_isaMask & *v18) + 0x2A8);
    v73[3] = v78;
    v73[2] = v77;
    v73[0] = v75;
    v73[1] = v76;
    v74 = v83;
    v73[7] = v82;
    v73[6] = v81;
    v73[4] = v79;
    v73[5] = v80;
    v22 = sub_1000E7E0C(v73, v70);
    v21(v22);
    sub_1000137F4(&v75);
    simd_float4x4.position.getter();
    closestPointOnLine(lineP1:lineP2:point:)();
    v24 = vsubq_f32(v23, v63);
    v61 = __PAIR64__(v62, v17);
    *v23.f32 = vsub_f32(*v23.f32, v61);
    v25 = COERCE_FLOAT(vmulq_f32(v24, v24).i32[2]) + vaddv_f32(vmul_f32(*v23.f32, *v23.f32));
    v26 = sub_1000E7E0C(&v84, v70);
    v19(v26);
    sub_1000137F4(&v75);
    simd_float4x4.position.getter();
    v27 = sub_1000E7E0C(&v84, v70);
    v21(v27);
    sub_1000137F4(&v75);
    simd_float4x4.position.getter();
    closestPointOnLine(lineP1:lineP2:point:)();
    v58 = v28;
    sub_1000137F4(&v75);
    if (v25 < 0.0001)
    {
      v29 = vsub_f32(*v58.f32, __PAIR64__(v60.n128_u32[1], v16));
      v30 = vsubq_f32(v58, v60);
      if ((COERCE_FLOAT(vmulq_f32(v30, v30).i32[2]) + vaddv_f32(vmul_f32(v29, v29))) < 0.0001)
      {
        type metadata accessor for MeasureCamera();
        v31 = *(**(v1 + 80) + 144);

        v31(__src, v32);

        memcpy(__dst, __src, sizeof(__dst));
        sub_100013C4C(__dst);
        v33 = *(**(v1 + 80) + 144);

        v33(__src, v34);

        memcpy(v68, __src, sizeof(v68));
        sub_100013C4C(v68);
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        v59 = v35;
        v36 = *(**(v1 + 80) + 144);

        v36(__src, v37);

        memcpy(v69, __src, sizeof(v69));
        sub_100013C4C(v69);
        v38 = *(**(v1 + 80) + 144);

        v38(__src, v39);

        memcpy(v70, __src, sizeof(v70));
        sub_100013C4C(v70);
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        v41 = vsub_f32(v59, v40);
        v42 = vaddv_f32(vmul_f32(v41, v41));
        sub_1000137F4(&v75);
        if (v42 <= 900.0)
        {
LABEL_15:
          sub_1000137F4(&v75);
          goto LABEL_16;
        }

        v43 = sub_1000E7E0C(&v84, __src);
        v21(v43);
        sub_1000137F4(&v75);
        simd_float4x4.position.getter();
        v45 = vsub_f32(__PAIR64__(v60.n128_u32[1], v16), *v44.i8);
        v46 = vsub_f32(*&vextq_s8(v60, v60, 8uLL), *&vextq_s8(v44, v44, 8uLL));
        v47 = sub_1000E7E0C(&v84, __src);
        v21(v47);
        sub_1000137F4(&v75);
        simd_float4x4.position.getter();
        v49 = vsub_f32(v61, *v48.i8);
        *v48.i8 = vsub_f32(*&vextq_s8(v63, v63, 8uLL), *&vextq_s8(v48, v48, 8uLL));
        v50 = vmul_f32(v45, v45);
        v51 = vmul_f32(v49, v49);
        *v48.i8 = vadd_f32(vzip1_s32(vmul_f32(v46, v46), vmul_f32(*v48.i8, *v48.i8)), vadd_f32(vzip1_s32(v50, v51), vzip2_s32(v50, v51)));
        if (vcgt_f32(vdup_lane_s32(*v48.i8, 1), *v48.i8).u8[0])
        {
          v52 = sub_1000E7E0C(&v84, __src);
          v21(v52);
        }

        else
        {
          v53 = sub_1000E7E0C(&v84, __src);
          v19(v53);
        }

        sub_1000137F4(&v75);
        simd_float4x4.position.getter();
        v64 = v54;
        v55 = *((swift_isaMask & *v18) + 0x2E0);
        __src[6] = v81;
        __src[7] = v82;
        LOBYTE(__src[8]) = v83;
        __src[2] = v77;
        __src[3] = v78;
        __src[4] = v79;
        __src[5] = v80;
        __src[0] = v75;
        __src[1] = v76;
        v56 = sub_1000E7E0C(__src, v65);
        v55(v56, v60, v64);
      }
    }

    sub_1000137F4(&v75);
    goto LABEL_15;
  }

  v13 = *(v1 + 120);
  if (v13)
  {
    v14 = *((swift_isaMask & *v13) + 0x2E0);
    v15 = v13;
    v14(0, 0);

    v13 = *(v2 + 120);
  }

  *(v2 + 120) = 0;
}

void sub_1000E62A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x8000000000000010)
  {

    StateValue.wrappedValue.getter();

    v3 = v8;

    if (v9)
    {
      (*((swift_isaMask & *v9) + 0x2B0))();

      simd_float4x4.position.getter();
    }

    else
    {
      v4 = 0uLL;
    }

    v5 = v9 == 0;
    *(a2 + 128) = v4;
  }

  else
  {
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    v5 = 1;
  }

  *(a2 + 144) = v5;
}

uint64_t sub_1000E63A4()
{
  v1 = v0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  KeyPath = swift_getKeyPath();
  v3 = sub_10000F974(&qword_1004A1200, &unk_1003D5600);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v3 + 272);
  swift_retain_n();
  *(v1 + 80) = v5(KeyPath, v4);
  v6 = swift_getKeyPath();
  v7 = *(sub_10000F974(&qword_1004A8950, &qword_1003DC580) + 272);

  *(v1 + 88) = v7(v6, v4);
  sub_10000F974(&qword_1004A8958, &qword_1003DC588);
  swift_getKeyPath();
  *(v1 + 96) = MutableStateBinding.__allocating_init(_:_:)();
  v8 = sub_10000F974(&qword_1004A2C60, &qword_1003E1620);
  v9 = swift_getKeyPath();
  *(v1 + 104) = (*(v8 + 272))(v9, v4);
  v10 = sub_10000F974(&qword_1004A11D8, &qword_1003DD120);
  v11 = swift_getKeyPath();
  *(v1 + 112) = (*(v10 + 272))(v11, v4);
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 1;
  v12 = StateObserver.init(configuration:)();
  type metadata accessor for EdgeGuidesInstrument(0);
  swift_allocObject();

  sub_10000FFA8();
  *(v12 + 64) = v13;

  type metadata accessor for VerticalGuidesInstrument(0);
  v14 = swift_allocObject();
  *(v12 + 72) = sub_1000E7E68(v14);

  return v12;
}

void sub_1000E6664()
{
  v1 = v0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  KeyPath = swift_getKeyPath();
  v3 = sub_10000F974(&qword_1004A1200, &unk_1003D5600);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v3 + 272);
  swift_retain_n();
  *(v1 + 80) = v5(KeyPath, v4);
  v6 = swift_getKeyPath();
  v7 = *(sub_10000F974(&qword_1004A8950, &qword_1003DC580) + 272);

  *(v1 + 88) = v7(v6, v4);
  sub_10000F974(&qword_1004A8958, &qword_1003DC588);
  swift_getKeyPath();
  *(v1 + 96) = MutableStateBinding.__allocating_init(_:_:)();
  v8 = sub_10000F974(&qword_1004A2C60, &qword_1003E1620);
  v9 = swift_getKeyPath();
  *(v1 + 104) = (*(v8 + 272))(v9, v4);
  v10 = sub_10000F974(&qword_1004A11D8, &qword_1003DD120);
  v11 = swift_getKeyPath();
  *(v1 + 112) = (*(v10 + 272))(v11, v4);
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000E689C()
{

  StateValue.wrappedValue.getter();

  v1 = v96;

  if (v96)
  {
    v2 = *(**(v0 + 96) + 144);

    v2(&v95, v3);

    v4 = v95;
    *v111 = v102;
    *&v111[16] = v103;
    v112 = v104;
    v107 = v98;
    v108 = v99;
    v109 = v100;
    v110 = v101;
    v105 = v96;
    v106 = v97;
    v119 = v101;
    v115 = v97;
    v118 = v100;
    v120[0] = v102;
    *(v120 + 9) = *&v111[9];
    v114 = v96;
    v116 = v98;
    v117 = v99;
    v113 = v95;
    if (sub_10001376C(&v113) == 1)
    {

      v101 = v110;
      v102 = *v111;
      v103 = *&v111[16];
      v104 = v112;
      v97 = v106;
      v98 = v107;
      v99 = v108;
      v100 = v109;
      v95 = v4;
      v96 = v105;
      sub_100013BF8(&v95);
      return;
    }

    v101 = v110;
    v102 = *v111;
    v103 = *&v111[16];
    v104 = v112;
    v97 = v106;
    v98 = v107;
    v99 = v108;
    v100 = v109;
    v95 = v4;
    v96 = v105;
    v5 = v4;
    v6 = sub_100013BF8(&v95);
    if ((*((swift_isaMask & *v5) + 0x240))(v6))
    {
      v7 = *((swift_isaMask & *v5) + 0x2A0);
      v7();
      v8 = simd_float4x4.position.getter();
      v90 = v9;
      v10 = *((swift_isaMask & *v5) + 0x2A8);
      v10(v8);
      v11 = simd_float4x4.position.getter();
      v83 = v12;
      (v7)(v11);
      v13 = simd_float4x4.position.getter();
      v15 = vsubq_f32(v83, v14);
      v16 = vmulq_f32(v15, v15);
      *&v17 = v16.f32[2] + vaddv_f32(*v16.f32);
      *v16.f32 = vrsqrte_f32(v17);
      *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
      v84 = vmulq_n_f32(v15, vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).f32[0]);
      (*((swift_isaMask & *v1) + 0x2B0))(v13);
      v18 = simd_float4x4.position.getter();
      *v20.f32 = vsub_f32(v19, vadd_f32(*&v90, vmul_f32(*v84.f32, vdup_n_s32(0x3E99999Au))));
      v20.f32[2] = v21 - (*(&v90 + 2) + vmuls_lane_f32(0.3, v84, 2));
      v91 = v20;
      v10(v18);
      v22 = simd_float4x4.position.getter();
      v85 = v23;
      (v7)(v22);
      v24 = simd_float4x4.position.getter();
      v26 = vsubq_f32(v85, v25);
      v27 = vmulq_f32(v26, v26);
      *&v28 = v27.f32[2] + vaddv_f32(*v27.f32);
      *v27.f32 = vrsqrte_f32(v28);
      *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
      v29 = vmulq_f32(v91, vmulq_n_f32(v26, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]));
      v27.f32[0] = vaddv_f32(*v29.f32);
      if ((v29.f32[2] + v27.f32[0]) >= 0.0)
      {
        (v7)(v24);
        v30 = simd_float4x4.position.getter();
        v10(v30);
        v31 = simd_float4x4.position.getter();
        (v7)(v31);
        v32 = simd_float4x4.position.getter();
        v33.n128_f64[0] = (v7)(v32);
        v86 = v34;
        v92 = v33;
        v78 = v36;
        v80 = v35;
        v7();
        v37 = simd_float4x4.translated(to:)();
        (*((swift_isaMask & *v5) + 0x2D0))(v37, v92, v86, v80, v78, v38, v39, v40, v41);
LABEL_20:

        return;
      }

LABEL_8:

      return;
    }

    v42 = (*((swift_isaMask & *v5) + 0x2B0))(v121);
    if (v122)
    {
      goto LABEL_8;
    }

    v81 = v121[1];
    v87 = v121[0];
    v43 = *((swift_isaMask & *v1) + 0x2B0);
    v43(v42);
    v44 = simd_float4x4.position.getter();
    v93 = v45;
    *v45.i8 = vsub_f32(*v45.i8, *v87.f32);
    v46 = vmul_f32(*v45.i8, *v45.i8);
    v43(v44);
    v47 = simd_float4x4.position.getter();
    v49 = vsub_f32(*v48.i8, *v81.f32);
    v50 = vmul_f32(v49, v49);
    *v48.i8 = vsub_f32(vzip1_s32(*&vextq_s8(v93, v93, 8uLL), *&vextq_s8(v48, v48, 8uLL)), vzip1_s32(*&vextq_s8(v87, v87, 8uLL), *&vextq_s8(v81, v81, 8uLL)));
    *v48.i8 = vsqrt_f32(vadd_f32(vmul_f32(*v48.i8, *v48.i8), vadd_f32(vzip1_s32(v46, v50), vzip2_s32(v46, v50))));
    v51 = vcgt_f32(vdup_lane_s32(*v48.i8, 1), *v48.i8).u8[0];
    if (v51)
    {
      v52 = -1;
    }

    else
    {
      v52 = 0;
    }

    v94 = vbslq_s8(vdupq_n_s32(v52), v87, v81);
    v53 = vsubq_f32(v81, v87);
    v54 = vmulq_f32(v53, v53);
    *&v55 = v54.f32[2] + vaddv_f32(*v54.f32);
    v56 = vrsqrte_f32(v55);
    v57 = vmul_f32(v56, vrsqrts_f32(v55, vmul_f32(v56, v56)));
    v58 = vmulq_n_f32(v53, vmul_f32(v57, vrsqrts_f32(v55, vmul_f32(v57, v57))).f32[0]);
    if (v51)
    {
      *v59.f32 = vsub_f32(0, *v58.f32);
      v59.f32[2] = 0.0 - v58.f32[2];
      v59.i32[3] = 0;
      v58 = v59;
    }

    v88 = v58;
    v60 = v94.f32[2] + vmuls_lane_f32(0.3, v58, 2);
    v43(v47);
    v61 = simd_float4x4.position.getter();
    v63 = vsubq_f32(v62, vaddq_f32(v94, vmulq_f32(v88, vdupq_n_s32(0x3E99999Au))));
    v63.f32[2] = v62.f32[2] - v60;
    v64 = vmulq_f32(v88, v63);
    if ((v64.f32[2] + vaddv_f32(*v64.f32)) <= 0.0)
    {
      if ((v51 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if ((v51 & 1) == 0)
    {
LABEL_16:
      (*((swift_isaMask & *v5) + 0x2A0))(v61);
      v65 = simd_float4x4.position.getter();
LABEL_19:
      v66 = *((swift_isaMask & *v5) + 0x2A0);
      v66(v65);
      v67 = simd_float4x4.translated(to:)();
      v82 = v69;
      v89 = v68;
      v77 = v71;
      v79 = v70;
      v66(v67);
      v72 = simd_float4x4.translated(to:)();
      (*((swift_isaMask & *v5) + 0x2D0))(v72, v89, v82, v79, v77, v73, v74, v75, v76);
      goto LABEL_20;
    }

    (*((swift_isaMask & *v5) + 0x2A8))(v61);
    v65 = simd_float4x4.position.getter();
    goto LABEL_19;
  }
}

void sub_1000E7234()
{
  v1 = v0;
  v92 = type metadata accessor for ARPlaneAnchor.Classification();
  v2 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  StateValue.wrappedValue.getter();

  v4 = v121[0];
  v5 = v121[1];

  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = *(**(v1 + 96) + 144);

  v6(v121, v7);

  v8 = v121[0];
  v111[0] = *&v121[13];
  v111[1] = *&v121[15];
  v112 = *&v121[17];
  v107 = *&v121[5];
  v108 = *&v121[7];
  v109 = *&v121[9];
  v110 = *&v121[11];
  v105 = *&v121[1];
  v106 = *&v121[3];
  v119 = *&v121[11];
  v115 = *&v121[3];
  v118 = *&v121[9];
  v120[0] = *&v121[13];
  *(v120 + 9) = *(v111 + 9);
  v114 = *&v121[1];
  v116 = *&v121[5];
  v117 = *&v121[7];
  v113 = v121[0];
  if (sub_10001376C(&v113) == 1)
  {
    *&v121[11] = v110;
    *&v121[13] = v111[0];
    *&v121[15] = v111[1];
    *&v121[17] = v112;
    *&v121[3] = v106;
    *&v121[5] = v107;
    *&v121[7] = v108;
    *&v121[9] = v109;
    v121[0] = v8;
    *&v121[1] = v105;
    sub_100013BF8(v121);
LABEL_4:
    v9 = *(**(v1 + 96) + 400);

    v10 = v9(v121);
    *(v11 + 144) = _swiftEmptyArrayStorage;

    v10(v121, 0);
LABEL_5:

    return;
  }

  v101 = v110;
  v102 = v111[0];
  v103 = v111[1];
  v104 = v112;
  v97 = v106;
  v98 = v107;
  v99 = v108;
  v100 = v109;
  v95 = v8;
  v96 = v105;
  v12 = v8;
  v13 = sub_100013BF8(&v95);
  v14 = *((swift_isaMask & *v12) + 0x2A8);
  v14(v13);
  v15 = simd_float4x4.position.getter();
  v93 = v16;
  v17 = *((swift_isaMask & *v12) + 0x2A0);
  v17(v15);
  v18 = simd_float4x4.position.getter();
  v89 = v19;
  v17(v18);
  v20 = simd_float4x4.position.getter();
  v90 = v21;
  v14(v20);
  simd_float4x4.position.getter();
  v88 = v22;
  v23 = *(**(v1 + 80) + 144);

  v23(v94, v24);

  memcpy(v121, v94, 0x200uLL);
  v25 = sub_10008D4F0();
  sub_100013C4C(v121);
  if (!v25)
  {

    v67 = *(**(v1 + 96) + 400);

    v68 = v67(v94);
    *(v69 + 144) = _swiftEmptyArrayStorage;

    v68(v94, 0);
    goto LABEL_5;
  }

  v86.i64[0] = v2;
  v77 = v12;
  v26 = vsubq_f32(v93, v89);
  v27 = vmulq_f32(v26, v26);
  *&v28 = v27.f32[2] + vaddv_f32(*v27.f32);
  *v27.f32 = vrsqrte_f32(v28);
  *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
  v89 = vmulq_n_f32(v26, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
  v29 = vaddq_f32(v90, v88);
  v27.i64[0] = 0x3F0000003F000000;
  v27.i64[1] = 0x3F0000003F000000;
  v30.i64[0] = vmulq_f32(v29, v27).u64[0];
  v30.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(0.5, v29, 2));
  v93 = v30;
  v31 = [v25 _hitTestFromOrigin:32 withDirection:*v30.i64 types:*v89.i64];
  sub_1000E8790();
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = [v25 _hitTestFromOrigin:32 withDirection:*v93.i64 types:{COERCE_DOUBLE(vsub_f32(0, *v89.f32))}];
  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v94[0] = v32;
  sub_100103C88(v34);
  v35 = v94[0];
  v76 = v25;
  if (!(v94[0] >> 62))
  {
    v36 = *((v94[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_9;
    }

LABEL_38:
    v90.i64[0] = _swiftEmptyArrayStorage;
LABEL_39:

    v70 = *(**(v1 + 96) + 400);
    v71 = v90.i64[0];

    v72 = v70(v94);
    *(v73 + 144) = v71;

    v72(v94, 0);

    goto LABEL_5;
  }

  v36 = _CocoaArrayWrapper.endIndex.getter();
  if (!v36)
  {
    goto LABEL_38;
  }

LABEL_9:
  if (v36 >= 1)
  {
    v37 = 0;
    v38 = v35 & 0xC000000000000001;
    v88.i64[0] = v86.i64[0] + 88;
    v87 = enum case for ARPlaneAnchor.Classification.wall(_:);
    v82 = enum case for ARPlaneAnchor.Classification.floor(_:);
    v80 = enum case for ARPlaneAnchor.Classification.table(_:);
    v81 = enum case for ARPlaneAnchor.Classification.ceiling(_:);
    v90.i64[0] = _swiftEmptyArrayStorage;
    v75 = (v86.i64[0] + 8);
    v78 = enum case for ARPlaneAnchor.Classification.door(_:);
    v79 = v1;
    while (1)
    {
      if (v38)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v39 = *(v35 + 8 * v37 + 32);
      }

      v40 = v39;
      v41 = [v39 anchor];
      if (v41)
      {
        v42 = v41;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v93.i64[0] = v42;
          v43 = v35;
          v44 = v36;
          v45 = v38;
          v46 = v1;
          v47 = v91;
          ARPlaneAnchor.classification.getter();
          v48 = v47;
          v1 = v46;
          v38 = v45;
          v36 = v44;
          v35 = v43;
          v49 = (*v88.i64[0])(v48, v92);
          if (v49 == v87)
          {
            goto LABEL_19;
          }

          if (v49 == v82 || v49 == v81 || v49 == v80)
          {
            if (SIMD3<>.isAlmostVertical(withinDegrees:)())
            {
LABEL_28:
              if ((*(v1 + 144) & 1) != 0 || (v51 = (v1 + 136), v52 = *(v1 + 128), *&v50 = v52, v85 = v50, v53 = vld1q_dup_f64(v51), v86 = v53, [v40 worldTransform], simd_float4x4.position.getter(), *v55.f32 = vsub_f32(__PAIR64__(DWORD1(v85), v52), *v54.f32), v55.i32[2] = vsubq_f32(v86, v54).i32[2], v56 = vmulq_f32(v55, v55), sqrtf(v56.f32[2] + vaddv_f32(*v56.f32)) >= 0.0001))
              {
                [v40 worldTransform];
                v85 = v58;
                v86 = v57;
                v83 = v60;
                v84 = v59;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v90.i64[0] = sub_100067114(0, *(v90.i64[0] + 16) + 1, 1, v90.i64[0]);
                }

                v62 = *(v90.i64[0] + 16);
                v61 = *(v90.i64[0] + 24);
                if (v62 >= v61 >> 1)
                {
                  v90.i64[0] = sub_100067114((v61 > 1), v62 + 1, 1, v90.i64[0]);
                }

                v63 = v90.i64[0];
                *(v90.i64[0] + 16) = v62 + 1;
                v64 = v63 + (v62 << 6);
                v65 = v85;
                *(v64 + 32) = v86;
                *(v64 + 48) = v65;
                v66 = v83;
                *(v64 + 64) = v84;
                *(v64 + 80) = v66;
                v1 = v79;
                goto LABEL_12;
              }
            }

LABEL_30:

            goto LABEL_12;
          }

          if (v49 == v78)
          {
LABEL_19:
            if (SIMD3<>.isAlmostHorizontal(withinDegrees:)())
            {
              goto LABEL_28;
            }

            goto LABEL_30;
          }

          (*v75)(v91, v92);
        }

        else
        {
        }
      }

      else
      {
      }

LABEL_12:
      if (v36 == ++v37)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
}

void sub_1000E7BA4()
{

  v1 = *(v0 + 120);
}

uint64_t sub_1000E7C04()
{
  v0 = StateObserver.deinit();

  return v0;
}

uint64_t sub_1000E7C6C()
{
  sub_1000E7C04();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GuidesCoordinator(uint64_t a1)
{
  result = qword_1004A8808;
  if (!qword_1004A8808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E7DA0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return v2(v8);
}

uint64_t sub_1000E7E68(uint64_t *a1)
{
  v24[3] = &type metadata for Configurations.Default;
  v24[4] = &protocol witness table for Configurations.Default;
  a1[8] = _swiftEmptyArrayStorage;
  v25 = 1;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 144) = 1;
  KeyPath = swift_getKeyPath();
  v3 = sub_10000F974(&qword_1004A11D0, &unk_1003D54E0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v3 + 272);
  swift_retain_n();
  a1[19] = v5(KeyPath, v4);
  v6 = sub_10000F974(&qword_1004A11D8, &qword_1003DD120);
  v7 = swift_getKeyPath();
  v8 = *(v6 + 272);

  a1[20] = v8(v7, v4);
  sub_10000F974(&qword_1004A8968, &qword_1003DD150);
  swift_getKeyPath();
  a1[21] = MutableStateValue.__allocating_init(_:_:)();
  v9 = sub_10000F974(&qword_1004A8970, &qword_1003DC620);
  v10 = swift_getKeyPath();
  v11 = *(v9 + 272);

  a1[22] = v11(v10, v4);
  v12 = swift_getKeyPath();
  v13 = sub_10000F974(&qword_1004A11F8, &qword_1003D55D0);
  a1[23] = (*(v13 + 272))(v12, v4);
  v14 = swift_getKeyPath();
  v15 = sub_10000F974(&qword_1004A1200, &unk_1003D5600);
  a1[24] = (*(v15 + 272))(v14, v4);
  *(a1 + 50) = 0;
  *(a1 + 204) = 1;
  __asm { FMOV            V0.2S, #10.0 }

  a1[26] = _D0;
  sub_1000336B4(v24, &v23);
  v21 = StateObserver.init(configuration:)();
  sub_10000FF00(v24);
  return v21;
}

void sub_1000E8138(void *a1)
{
  v2 = v1;
  sub_1000E689C();
  sub_1000E7234();
  if (!a1)
  {
    return;
  }

  (*((swift_isaMask & *a1) + 0x200))();
  if (*(v1 + 144))
  {
    return;
  }

  v5 = v4;
  type metadata accessor for MeasureCamera();
  v6 = *(**(v1 + 80) + 144);

  v6(__src, v7);

  memcpy(__dst, __src, sizeof(__dst));
  sub_100013C4C(__dst);
  v8 = *(**(v1 + 80) + 144);

  v8(__src, v9);

  memcpy(v70, __src, 0x200uLL);
  sub_100013C4C(v70);
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  v49 = v10;
  v11 = *(**(v1 + 88) + 144);

  v11(__src, v12);

  v13 = __src[0];

  v14 = *(**(v1 + 88) + 144);

  v14(__src, v15);

  v16 = __src[2];

  __src[0] = v13;
  sub_100103A50(v16);
  v17 = __src[0];
  if (__src[0] >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_25:

    return;
  }

  v18 = *((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_25;
  }

LABEL_5:
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = vsub_f32(v49, v5);
    v21 = vaddv_f32(vmul_f32(v20, v20));
    v22 = v17 & 0xC000000000000001;
    v46 = v1;
    v47 = v17 & 0xC000000000000001;
    v45 = v17;
    v48 = v18;
    while (1)
    {
      v27 = v22 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v17 + 8 * v19 + 32);
      v28 = v27;
      if (v21 > 900.0)
      {
        break;
      }

      (*((swift_isaMask & *v27) + 0x2A0))();
      v23 = simd_float4x4.position.getter();
      v50 = v24;
      (*((swift_isaMask & *v28) + 0x2A8))(v23);
      v25 = simd_float4x4.position.getter();
      (*((swift_isaMask & *v28) + 0x2E0))(v25, v50, v26);

LABEL_8:
      if (v18 == ++v19)
      {
        goto LABEL_25;
      }
    }

    v29 = *(**(v2 + 96) + 144);

    v29(__src, v30);

    v31 = __src[0];
    *v58 = *&__src[13];
    *&v58[16] = *&__src[15];
    v59 = *&__src[17];
    v54 = *&__src[5];
    v55 = *&__src[7];
    v56 = *&__src[9];
    v57 = *&__src[11];
    v52 = *&__src[1];
    v53 = *&__src[3];
    v65 = *&__src[9];
    v66 = *&__src[11];
    v67[0] = *&__src[13];
    *(v67 + 9) = *&v58[9];
    v61 = *&__src[1];
    v62 = *&__src[3];
    v63 = *&__src[5];
    v64 = *&__src[7];
    v60 = __src[0];
    if (sub_10001376C(&v60) == 1)
    {
      __src[0] = v31;
      *&__src[13] = *v58;
      *&__src[15] = *&v58[16];
      *&__src[17] = v59;
      *&__src[5] = v54;
      *&__src[7] = v55;
      *&__src[9] = v56;
      *&__src[11] = v57;
      *&__src[1] = v52;
      *&__src[3] = v53;
      v32 = sub_100013BF8(__src);
LABEL_15:
      (*((swift_isaMask & *v28) + 0x2E0))(v32, 0, 0);

LABEL_22:
      v18 = v48;
      v22 = v47;
      goto LABEL_8;
    }

    __src[0] = v31;
    *&__src[13] = *v58;
    *&__src[15] = *&v58[16];
    *&__src[17] = v59;
    *&__src[5] = v54;
    *&__src[7] = v55;
    *&__src[9] = v56;
    *&__src[11] = v57;
    *&__src[1] = v52;
    *&__src[3] = v53;
    v33 = v31;
    sub_100013BF8(__src);
    v34 = *((swift_isaMask & *v33) + 0xB8);
    v35 = v33;
    v36 = v34();
    v38 = v37;
    v51 = v35;

    v39 = *((swift_isaMask & *v28) + 0xB8);
    v40 = v28;
    v41 = v39();
    v43 = v42;

    if (v36 == v41 && v38 == v43)
    {
    }

    else
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v44 & 1) == 0)
      {
        v2 = v46;
        v17 = v45;
        goto LABEL_15;
      }
    }

    v2 = v46;
    v17 = v45;
    goto LABEL_22;
  }

  __break(1u);
}

unint64_t sub_1000E8790()
{
  result = qword_1004A8960;
  if (!qword_1004A8960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004A8960);
  }

  return result;
}

void sub_1000E87E4(uint64_t a1)
{
  v2 = *(v1 + qword_1004A4F58);
  if (v2)
  {
    switch(a1)
    {
      case 2:
        v4 = 3.14159265;
        break;
      case 4:
        CGFloat.piDiv2.unsafeMutableAddressor();
        v4 = -*CGFloat.piDiv2.unsafeMutableAddressor();
        break;
      case 3:
        CGFloat.piDiv2.unsafeMutableAddressor();
        v4 = *CGFloat.piDiv2.unsafeMutableAddressor();
        break;
      default:
        v4 = 0.0;
        break;
    }

    CGAffineTransformMakeRotation(&v32, v4);
    v29 = *&v32.m13;
    v30 = *&v32.m11;
    v28 = *&v32.m21;
    v5 = v2;
    *&m.a = v30;
    *&m.c = v29;
    *&m.tx = v28;
    CATransform3DMakeAffineTransform(&v32, &m);
    v6 = sub_1000E8A2C();
    v7 = v1 + qword_1004A8978;
    *v7 = v6;
    *(v7 + 8) = v8;
    v9 = sub_1000E8D40();
    CATransform3DMakeTranslation(&v32, v9, v10, 0.0);
    sub_1000E8FA0();
    v12 = v11;
    v14 = v13;
    sub_1000E91C8();
    v16 = v15;
    v18 = v17;
    v19 = objc_opt_self();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v5;
    v22 = *&v32.m33;
    *(v21 + 96) = *&v32.m31;
    *(v21 + 112) = v22;
    v23 = *&v32.m43;
    *(v21 + 128) = *&v32.m41;
    *(v21 + 144) = v23;
    v24 = *&v32.m13;
    *(v21 + 32) = *&v32.m11;
    *(v21 + 48) = v24;
    v25 = *&v32.m23;
    *(v21 + 64) = *&v32.m21;
    *(v21 + 80) = v25;
    *(v21 + 160) = v16;
    *(v21 + 168) = v18;
    *(v21 + 176) = a1;
    *(v21 + 184) = v12;
    *(v21 + 192) = v14;
    *&m.tx = sub_1000EA880;
    *&m.ty = v21;
    *&m.a = _NSConcreteStackBlock;
    *&m.b = 1107296256;
    *&m.c = sub_100041180;
    *&m.d = &unk_10046DBB0;
    v26 = _Block_copy(&m);
    v27 = v5;

    [v19 animateWithDuration:0 delay:v26 options:0 animations:0.25 completion:0.25];
    _Block_release(v26);
  }
}

double sub_1000E8A2C()
{

  StateValue.wrappedValue.getter();

  if (v12 == 2)
  {
    if (qword_1004A0510 != -1)
    {
      swift_once();
    }

    v6 = *&qword_1004D5080;
    if (qword_1004A0518 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  if (v12 != 4)
  {
    if (v12 == 3)
    {
      [v0 bounds];
      Width = CGRectGetWidth(v13);
      if (qword_1004A0518 != -1)
      {
        v10 = Width;
        swift_once();
        Width = v10;
      }

      v2 = Width - *&qword_1004D5088;
      [v0 bounds];
      CGRectGetHeight(v14);
      if (qword_1004A0510 != -1)
      {
        swift_once();
      }

      return v2 * 0.5;
    }

    [v0 bounds];
    v7 = CGRectGetWidth(v16);
    if (qword_1004A0510 != -1)
    {
      v11 = v7;
      swift_once();
      v7 = v11;
    }

    v6 = v7 - *&qword_1004D5080;
    if (qword_1004A0518 == -1)
    {
LABEL_21:
      v3 = v6 - *&qword_1004D5088 * 0.5;
      [v0 bounds];
      CGRectGetHeight(v17);
      return v3;
    }

LABEL_23:
    swift_once();
    goto LABEL_21;
  }

  [v0 bounds];
  v4 = CGRectGetWidth(v15);
  if (qword_1004A0518 != -1)
  {
    v9 = v4;
    swift_once();
    v4 = v9;
  }

  v5 = v4 - *&qword_1004D5088;
  if (qword_1004A0510 != -1)
  {
    swift_once();
  }

  return v5 * 0.5;
}

double sub_1000E8D40()
{
  v1 = *(v0 + qword_1004A4F58);
  if (!v1)
  {
    return 0.0;
  }

  v2 = (v0 + qword_1004A8978);
  v3 = *(v0 + qword_1004A8978);
  v4 = qword_1004A0518;
  v5 = v1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = *&qword_1004D5088;
  v7 = v3 + *&qword_1004D5088 * 0.5;

  StateValue.wrappedValue.getter();

  if (v33 == 2)
  {
    [v5 frame];
    Width = CGRectGetWidth(v35);

    return v7 + Width * -0.5;
  }

  else
  {
    if (v33 == 4)
    {
      v13 = *v2 + -40.0;
      v5 = v5;
      [v5 frame];
      v8 = v13 - CGRectGetHeight(v34);
      [v5 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v9 = v15;
      v10 = v17;
      v11 = v19;
      v12 = v21;
    }

    else
    {
      if (v33 != 3)
      {
        v23 = v5;
        [v23 frame];
        v8 = v7 + CGRectGetWidth(v36) * -0.5;
        [v23 frame];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;

        v37.origin.x = v25;
        v37.origin.y = v27;
        v37.size.width = v29;
        v37.size.height = v31;
        CGRectGetHeight(v37);

        return v8;
      }

      v8 = v6 + *v2 + 40.0;
      [v5 frame];
    }

    CGRectGetHeight(*&v9);
  }

  return v8;
}

void sub_1000E8FA0()
{
  if (qword_1004A0518 != -1)
  {
    swift_once();
  }

  StateValue.wrappedValue.getter();

  if (v0 == 2)
  {
    if (qword_1004A0538 != -1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v0 != 4)
    {
      if (v0 == 3)
      {
        if (qword_1004A0538 == -1)
        {
          return;
        }
      }

      else if (qword_1004A0538 == -1)
      {
        return;
      }

LABEL_13:
      swift_once();
      return;
    }

    if (qword_1004A0538 != -1)
    {
      goto LABEL_13;
    }
  }
}

void sub_1000E91C8()
{
  sub_1000E8FA0();
  if (qword_1004A0538 != -1)
  {
    swift_once();
  }

  StateValue.wrappedValue.getter();
}

void sub_1000E92D4(uint64_t a1, void *a2, _OWORD *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  v17 = [a2 layer];
  v18 = a3[5];
  v44 = a3[4];
  v45 = v18;
  v19 = a3[7];
  v46 = a3[6];
  v47 = v19;
  v20 = a3[1];
  *&v42.a = *a3;
  *&v42.c = v20;
  v21 = a3[3];
  *&v42.tx = a3[2];
  v43 = v21;
  [v17 setTransform:&v42];

  v22 = qword_1004A4F48;
  v23 = *&v16[qword_1004A4F48];
  if (v23)
  {
    v24 = *(v23 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad);
    if (v24)
    {
      v25 = v16;
      v26 = v24;
      [v26 frame];
      [v26 setFrame:{a5, a6}];

      v23 = *&v16[v22];
      if (!v23)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v28 = v16;
    }

    v29 = *(v23 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad);
    if (v29)
    {
      switch(a4)
      {
        case 2:
          v30 = 3.14159265;
          break;
        case 4:
          v30 = -*CGFloat.piDiv2.unsafeMutableAddressor();
          break;
        case 3:
          v30 = *CGFloat.piDiv2.unsafeMutableAddressor();
          break;
        default:
          v30 = 0.0;
          break;
      }

      CGAffineTransformMakeRotation(&v42, v30);
      [v29 setTransform:&v42];
    }

    goto LABEL_17;
  }

  v27 = v16;
LABEL_17:
  v31 = qword_1004A4F38;
  v32 = *&v16[qword_1004A4F38];
  if (v32)
  {
    v33 = *(v32 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton);
    if (!v33 || (v34 = v33, [v34 frame], objc_msgSend(v34, "setFrame:", a7, a8), v34, (v32 = *&v16[v31]) != 0))
    {
      v35 = *(v32 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton);
      if (v35)
      {
        switch(a4)
        {
          case 2:
            v36 = 3.14159265;
            break;
          case 4:
            v36 = -*CGFloat.piDiv2.unsafeMutableAddressor();
            break;
          case 3:
            v36 = *CGFloat.piDiv2.unsafeMutableAddressor();
            break;
          default:
            v36 = 0.0;
            break;
        }

        CGAffineTransformMakeRotation(&v42, v36);
        [v35 setTransform:&v42];
      }
    }
  }

  v37 = *&v16[qword_1004A4F50];
  v38 = v37;

  if (v37)
  {
    v39 = *&v38[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton];

    v40 = *&v16[qword_1004A8978];
    v41 = *&v16[qword_1004A8978 + 8];
    [v39 frame];
    [v39 setFrame:{v40, v41}];
  }
}

uint64_t sub_1000E95EC()
{
  v1 = sub_1000E8A2C();
  v3 = v2;
  if (qword_1004A0518 != -1)
  {
    swift_once();
  }

  v4 = *&qword_1004D5088;
  v5 = objc_allocWithZone(type metadata accessor for EditButtonSolarium());
  v6 = sub_10013772C(v1, v3, v4, v4);
  v7 = *(v0 + qword_1004A4F50);
  *(v0 + qword_1004A4F50) = v6;

  return _objc_release_x1(v6, v7);
}

uint64_t sub_1000E96A8()
{
  sub_1000E8FA0();
  v2 = v1;
  v4 = v3;
  if (qword_1004A0538 != -1)
  {
    swift_once();
  }

  v5 = *&qword_1004D50A8;
  v6 = objc_allocWithZone(type metadata accessor for UndoButtonSolarium());
  v7 = sub_1001B2FB4(v2, v4, v5, v5);
  v8 = *(v0 + qword_1004A4F38);
  *(v0 + qword_1004A4F38) = v7;

  return _objc_release_x1(v7, v8);
}

void sub_1000E9764()
{
  v1 = v0;
  sub_1000E91C8();
  v3 = v2;
  v5 = v4;
  if (qword_1004A0538 != -1)
  {
    swift_once();
  }

  v6 = *&qword_1004D50A8;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = objc_allocWithZone(type metadata accessor for HistoryButtonSolarium());
  v9 = sub_10008A4A4(sub_1000EA7D4, v7, v3, v5, v6, v6);

  v10 = *(v1 + qword_1004A4F48);
  *(v1 + qword_1004A4F48) = v9;
}

void sub_1000E9870(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10000F974(&unk_1004AFBD0, &unk_1003E3320);
    sub_1000EA7DC();
    Subject<>.send()();
  }
}

double sub_1000E9900()
{
  v1 = qword_1004A8988;
  v2 = *(**(v0 + qword_1004A8988) + 144);

  v2(&v14, v3);

  if (v15 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(**(Strong + 80) + 200);
      v7 = Strong;

      v9 = v6(v8);

      v10 = *(*v9 + 280);
      swift_unknownObjectRetain();
      v10(sub_1000889E4, v7);
    }

    v11 = *(**(v0 + v1) + 400);

    v12 = v11(&v14);
    *(v13 + 8) = 0;
    v12(&v14, 0);
  }

  return result;
}

double sub_1000E9ABC()
{
  v9 = v0;

  StateValue.ifUpdated(_:)();

  v8 = v0;

  StateValue.ifUpdated(_:)();

  v7 = v0;

  StateValue.ifUpdated(_:)();

  v1 = *(**(v0 + qword_1004A8988) + 200);

  v3 = v1(v2);

  v6 = v0;
  (*(*v3 + 296))(sub_1000EA5A8, v5);

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  return result;
}

void sub_1000E9D00(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1 - 1;
  if (a2[qword_1004A89B0] != v2 < 3)
  {
    a2[qword_1004A89B0] = v2 < 3;
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1000EA634;
    *(v6 + 24) = v5;
    v9[4] = sub_100031688;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1000DC708;
    v9[3] = &unk_10046DB38;
    v7 = _Block_copy(v9);
    v8 = a2;

    [v4 performWithoutAnimation:v7];
    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }
}

void sub_1000E9E94(uint64_t a1)
{

  StateValue.wrappedValue.getter();

  sub_1000E87E4(v1);
}

id sub_1000E9EEC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v4[qword_1004A8978];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v4[qword_1004A8980];
  *v12 = 0;
  v12[1] = 0;
  v13 = qword_1004A8988;
  sub_10000F974(&qword_1004A8DE8, &qword_1003E1110);
  swift_getKeyPath();
  *&v4[v13] = MutableStateBinding.__allocating_init(_:_:)();
  v14 = qword_1004A8990;
  v15 = sub_10000F974(&qword_1004A2C80, &qword_1003E1140);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v17 = qword_1004D5058;
  v18 = *(v15 + 272);
  swift_retain_n();
  *&v5[v14] = v18(KeyPath, v17);
  v19 = qword_1004A8998;
  v20 = sub_10000F974(&qword_1004A3F50, &qword_1003D8110);
  v21 = swift_getKeyPath();
  *&v5[v19] = (*(v20 + 272))(v21, v17);
  v22 = qword_1004A89A0;
  sub_10000F974(&unk_1004AFBD0, &unk_1003E3320);
  swift_allocObject();
  *&v5[v22] = PassthroughSubject.init()();
  v23 = qword_1004A89A8;
  v24 = sub_10000F974(&qword_1004A8DF0, &qword_1003E11A0);
  v25 = swift_getKeyPath();
  *&v5[v23] = (*(v24 + 272))(v25, v17);
  v5[qword_1004A89B0] = 1;
  v27.receiver = v5;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1000EA160(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v1[qword_1004A8978];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[qword_1004A8980];
  *v6 = 0;
  v6[1] = 0;
  v7 = qword_1004A8988;
  sub_10000F974(&qword_1004A8DE8, &qword_1003E1110);
  swift_getKeyPath();
  *&v1[v7] = MutableStateBinding.__allocating_init(_:_:)();
  v8 = qword_1004A8990;
  v9 = sub_10000F974(&qword_1004A2C80, &qword_1003E1140);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v11 = qword_1004D5058;
  v12 = *(v9 + 272);
  swift_retain_n();
  *&v2[v8] = v12(KeyPath, v11);
  v13 = qword_1004A8998;
  v14 = sub_10000F974(&qword_1004A3F50, &qword_1003D8110);
  v15 = swift_getKeyPath();
  *&v2[v13] = (*(v14 + 272))(v15, v11);
  v16 = qword_1004A89A0;
  sub_10000F974(&unk_1004AFBD0, &unk_1003E3320);
  swift_allocObject();
  *&v2[v16] = PassthroughSubject.init()();
  v17 = qword_1004A89A8;
  v18 = sub_10000F974(&qword_1004A8DF0, &qword_1003E11A0);
  v19 = swift_getKeyPath();
  *&v2[v17] = (*(v18 + 272))(v19, v11);
  v2[qword_1004A89B0] = 1;
  v22.receiver = v2;
  v22.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v22, "initWithCoder:", a1);

  if (v20)
  {
  }

  return v20;
}

double sub_1000EA3D4()
{
  sub_1000223C4(*(v0 + qword_1004A8980), *(v0 + qword_1004A8980 + 8));

  return result;
}

double sub_1000EA458(uint64_t a1)
{
  sub_1000223C4(*(a1 + qword_1004A8980), *(a1 + qword_1004A8980 + 8));

  return result;
}

uint64_t type metadata accessor for EditViewSpatial(uint64_t a1)
{
  result = qword_1004A89E0;
  if (!qword_1004A89E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EA5FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1000EA64C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1000EA664()
{
  v1 = v0;
  v2 = *(**(v0 + qword_1004A8988) + 144);

  v2(&v11, v3);

  if (v11 < 1)
  {
    v5 = 0;
  }

  else
  {

    StateValue.wrappedValue.getter();

    v4 = *(v11 + 16);

    v5 = v4 == 0;
  }

  v6 = *(v1 + qword_1004A4F48);
  if (v6)
  {
    v7 = *&v6[OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPhone];
    v8 = v6;
    if (v7)
    {
      [v7 setEnabled:v5];
    }

    v9 = *&v6[OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad];
    if (v9)
    {
      v10 = v9;
      [v10 setEnabled:v5];
    }
  }
}

uint64_t sub_1000EA79C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

unint64_t sub_1000EA7DC()
{
  result = qword_1004A8DE0;
  if (!qword_1004A8DE0)
  {
    sub_100013BB0(&unk_1004AFBD0, &unk_1003E3320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8DE0);
  }

  return result;
}

uint64_t sub_1000EA840()
{

  return _swift_deallocObject(v0, 200, 7);
}

void sub_1000EA924()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 setAllowsSelection:0];

    v3 = [v0 tableView];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for SwitchCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = String._bridgeToObjectiveC()();

      [v4 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v6];

      v7 = [v0 tableView];
      if (v7)
      {
        v8 = v7;
        type metadata accessor for SliderCell();
        v9 = swift_getObjCClassFromMetadata();
        v10 = String._bridgeToObjectiveC()();

        [v8 registerClass:v9 forCellReuseIdentifier:v10];

        v11 = [v0 tableView];
        if (v11)
        {
          v12 = v11;
          type metadata accessor for ColorCell();
          v13 = swift_getObjCClassFromMetadata();
          v14 = String._bridgeToObjectiveC()();

          [v12 registerClass:v13 forCellReuseIdentifier:v14];

          return;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1000EAD4C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Measure22DefaultsViewController_groups);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(v3 + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = *(v3 + 24 * result + 48);

  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < *(v5 + 16))
  {
    v6 = v5 + 48 * result;
    v8 = *(v6 + 32);
    v7 = *(v6 + 40);
    v10 = *(v6 + 48);
    v9 = *(v6 + 56);
    v11 = *(v6 + 64);
    v12 = *(v6 + 72);

    v13 = String._bridgeToObjectiveC()();

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v15 = [a1 dequeueReusableCellWithIdentifier:v13 forIndexPath:isa];

    type metadata accessor for DefaultCell();
    v16 = swift_dynamicCastClassUnconditional();
    v17 = v16 + OBJC_IVAR____TtC7Measure11DefaultCell_def;
    v18 = *(v16 + OBJC_IVAR____TtC7Measure11DefaultCell_def);
    v19 = *(v16 + OBJC_IVAR____TtC7Measure11DefaultCell_def + 8);
    v20 = *(v16 + OBJC_IVAR____TtC7Measure11DefaultCell_def + 16);
    v21 = *(v16 + OBJC_IVAR____TtC7Measure11DefaultCell_def + 24);
    *v17 = v8;
    *(v17 + 1) = v7;
    *(v17 + 2) = v10;
    *(v17 + 3) = v9;
    *(v17 + 4) = v11;
    v17[40] = v12;
    sub_1000464DC(v18, v19, v20, v21);
    (*((swift_isaMask & *v16) + 0x110))();
    return v16;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1000EB294()
{
  v1 = OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_fadeOutAnimator;
  v2 = *(v0 + OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_fadeOutAnimator);
  if (v2)
  {
    [v2 stopAnimation:1];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }

  v4 = *(v0 + OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_touchDownCallback);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_touchDownCallback + 8);

    v4(v6);

    sub_1000223C4(v4, v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000EB320()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v14 = sub_1000EB784;
  v15 = v2;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_100041180;
  v13 = &unk_10046DC00;
  v3 = _Block_copy(&v10);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v14 = sub_1000EB7A4;
  v15 = v5;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_10002E9EC;
  v13 = &unk_10046DC50;
  v6 = _Block_copy(&v10);
  v7 = v4;

  v8 = [v1 runningPropertyAnimatorWithDuration:0x20000 delay:v3 options:v6 animations:0.2 completion:0.0];
  _Block_release(v6);
  _Block_release(v3);
  v9 = *&v7[OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_fadeOutAnimator];
  *&v7[OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_fadeOutAnimator] = v8;
}

void sub_1000EB5B8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_touchUpCallback);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_touchUpCallback + 8);

    v1(v3);

    sub_1000223C4(v1, v2);
  }

  else
  {
    __break(1u);
  }
}

id sub_1000EB690()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialPlatterTitleButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000EB74C()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1000EB78C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1000EB7A4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_fadeOutAnimator);
  *(v1 + OBJC_IVAR____TtC7Measure25SpatialPlatterTitleButton_fadeOutAnimator) = 0;
}

uint64_t sub_1000EB7D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 531))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 496);
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

uint64_t sub_1000EB82C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 520) = 0;
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
    *(result + 530) = 0;
    *(result + 528) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 531) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 531) = 0;
    }

    if (a2)
    {
      *(result + 496) = a2;
    }
  }

  return result;
}

id sub_1000EB920()
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v1 = *(&xmmword_1004D4AE8 + 1);
    qword_1004D4E90 = Contexts.PrivateQueue.init(_:)();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000EB9A0@<X0>(void *a1@<X8>)
{
  if (qword_1004A02D8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4E90;
  *a1 = qword_1004D4E90;

  return v2;
}

uint64_t sub_1000EBA10(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x213uLL);
  memcpy(__dst, a2, 0x213uLL);
  return sub_1000EBAE4(v4, __dst) & 1;
}

unint64_t sub_1000EBA68(uint64_t a1)
{
  result = sub_1000EBA90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000EBA90()
{
  result = qword_1004A8EA0;
  if (!qword_1004A8EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8EA0);
  }

  return result;
}

uint64_t sub_1000EBAE4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || ((a1[1] ^ a2[1]) & 1) != 0 || ((a1[2] ^ a2[2]))
  {
    return 0;
  }

  if (a1[24])
  {
    if ((a2[24] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[24])
    {
      return 0;
    }

    v3 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
    if (!v3)
    {
      return 0;
    }
  }

  if (a1[48])
  {
    if ((a2[48] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[48] & 1) != 0 || *(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5))
  {
    return 0;
  }

  if (a1[72])
  {
    if ((a2[72] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[72] & 1) != 0 || *(a1 + 7) != *(a2 + 7) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (a1[96])
  {
    if ((a2[96] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[96] & 1) != 0 || *(a1 + 10) != *(a2 + 10) || *(a1 + 11) != *(a2 + 11))
  {
    return 0;
  }

  if (a1[120])
  {
    if ((a2[120] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[120] & 1) != 0 || *(a1 + 13) != *(a2 + 13) || *(a1 + 14) != *(a2 + 14))
  {
    return 0;
  }

  if (a1[192])
  {
    if ((a2[192] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a2[192] & 1) != 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + 9), *(a2 + 9)), vceqq_f32(*(a1 + 8), *(a2 + 8))), vandq_s8(vceqq_f32(*(a1 + 10), *(a2 + 10)), vceqq_f32(*(a1 + 11), *(a2 + 11))))) & 0x80000000) == 0)
  {
    return 0;
  }

  if (a1[272])
  {
    if (a2[272])
    {
      goto LABEL_48;
    }

    return 0;
  }

  if ((a2[272] & 1) != 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + 14), *(a2 + 14)), vceqq_f32(*(a1 + 13), *(a2 + 13))), vandq_s8(vceqq_f32(*(a1 + 15), *(a2 + 15)), vceqq_f32(*(a1 + 16), *(a2 + 16))))) & 0x80000000) == 0)
  {
    return 0;
  }

LABEL_48:
  if (a1[352])
  {
    if ((a2[352] & 1) == 0)
    {
      goto LABEL_104;
    }
  }

  else if ((a2[352] & 1) != 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + 19), *(a2 + 19)), vceqq_f32(*(a1 + 18), *(a2 + 18))), vandq_s8(vceqq_f32(*(a1 + 20), *(a2 + 20)), vceqq_f32(*(a1 + 21), *(a2 + 21))))) & 0x80000000) == 0)
  {
    goto LABEL_104;
  }

  if (a1[392])
  {
    if ((a2[392] & 1) == 0)
    {
      goto LABEL_104;
    }
  }

  else if ((a2[392] & 1) != 0 || !CGRectEqualToRect(*(a1 + 360), *(a2 + 360)))
  {
    goto LABEL_104;
  }

  if (a1[432])
  {
    if ((a2[432] & 1) == 0)
    {
      goto LABEL_104;
    }
  }

  else if ((a2[432] & 1) != 0 || !CGRectEqualToRect(*(a1 + 400), *(a2 + 400)))
  {
    goto LABEL_104;
  }

  v4 = a2[440];
  if (a1[440])
  {
    if (!a2[440])
    {
      return v4 & 1;
    }
  }

  else
  {
    if (*(a1 + 109) != *(a2 + 109))
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_104;
    }
  }

  v4 = a2[448];
  if (a1[448])
  {
    if (!a2[448])
    {
      return v4 & 1;
    }
  }

  else
  {
    if (*(a1 + 111) != *(a2 + 111))
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_104;
    }
  }

  v4 = a2[456];
  if (a1[456])
  {
    if (!a2[456])
    {
      return v4 & 1;
    }
  }

  else
  {
    if (*(a1 + 113) != *(a2 + 113))
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_104;
    }
  }

  if (a1[480])
  {
    v5 = a2;
    v6 = a1;
    if ((a2[480] & 1) == 0)
    {
      goto LABEL_104;
    }
  }

  else
  {
    if (a2[480])
    {
      goto LABEL_104;
    }

    v4 = 0;
    if (COERCE_FLOAT(*(a1 + 58)) != COERCE_FLOAT(*(a2 + 58)))
    {
      return v4 & 1;
    }

    v7 = vmovn_s32(vceqq_f32(*(a1 + 29), *(a2 + 29)));
    if ((v7.i8[2] & 1) == 0)
    {
      return v4 & 1;
    }

    v5 = a2;
    v6 = a1;
    if ((v7.i8[4] & 1) == 0)
    {
      return v4 & 1;
    }
  }

  v8 = *(v6 + 62);
  v9 = *(v5 + 62);
  if (v8)
  {
    if (!v9 || (*(a1 + 61) != *(a2 + 61) || v8 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_104;
    }
  }

  else if (v9)
  {
    goto LABEL_104;
  }

  if (a1[528])
  {
    v10 = a2;
    v11 = a1;
    if ((a2[528] & 1) == 0)
    {
      goto LABEL_104;
    }

LABEL_102:
    v13 = v11[529];
    v14 = v10[529];
    if (v13 == 2)
    {
      v3 = v14 == 2;
      v15 = a2;
      v16 = a1;
      if (!v3)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v4 = 0;
      if (v14 == 2)
      {
        return v4 & 1;
      }

      v17 = v14 ^ v13;
      v15 = a2;
      v16 = a1;
      if (v17)
      {
        return v4 & 1;
      }
    }

    v4 = v16[530] ^ v15[530] ^ 1;
    return v4 & 1;
  }

  if ((a2[528] & 1) == 0)
  {
    v4 = 0;
    if (COERCE_FLOAT(*(a1 + 64)) != COERCE_FLOAT(*(a2 + 64)))
    {
      return v4 & 1;
    }

    v12 = vmovn_s32(vceqq_f32(*(a1 + 32), *(a2 + 32)));
    if ((v12.i8[2] & 1) == 0)
    {
      return v4 & 1;
    }

    v10 = a2;
    v11 = a1;
    if ((v12.i8[4] & 1) == 0)
    {
      return v4 & 1;
    }

    goto LABEL_102;
  }

LABEL_104:
  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1000EC0CC()
{

  sub_100027EDC(v0 + 24);

  return swift_deallocClassInstance();
}

double sub_1000EC180(uint64_t a1)
{
  swift_beginAccess();
  sub_100027D74(a1, v1 + 24);
  swift_endAccess();
  return result;
}

double sub_1000EC220()
{
  swift_beginAccess();

  return result;
}

double sub_1000EC258(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MeasureAppState(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MeasureAppState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MeasureAppState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000EC3F8()
{
  result = Contexts.UIKit.init()();
  qword_1004D4E98 = result;
  return result;
}

id sub_1000EC418@<X0>(void *a1@<X8>)
{
  if (qword_1004A02E0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4E98;
  *a1 = qword_1004D4E98;

  return v2;
}

uint64_t sub_1000EC488(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = &_mh_execute_header;
  if (a1[4])
  {
    v12 = &_mh_execute_header;
  }

  else
  {
    v12 = 0;
  }

  v13 = v5 == 0;
  v14 = 0x1000000;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0x1000000;
  }

  v13 = v4 == 0;
  v16 = 0x10000;
  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0x10000;
  }

  v13 = v3 == 0;
  v18 = 256;
  if (v13)
  {
    v19 = 0;
  }

  else
  {
    v19 = 256;
  }

  v20 = v19 | v2 | v17 | v15;
  if (!v10)
  {
    v11 = 0;
  }

  if (!v9)
  {
    v14 = 0;
  }

  if (!v8)
  {
    v16 = 0;
  }

  if (!v7)
  {
    v18 = 0;
  }

  return sub_1000EC5A0(v20 | v12, v18 | v6 | v16 | v14 | v11);
}

unint64_t sub_1000EC524(uint64_t a1)
{
  result = sub_1000EC54C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000EC54C()
{
  result = qword_1004A9040;
  if (!qword_1004A9040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9040);
  }

  return result;
}

uint64_t sub_1000EC5A0(unint64_t a1, unint64_t a2)
{
  if (a2 != a1)
  {
    return 0;
  }

  if ((a1 & 0x100) != 0)
  {
    v3 = 0x6C6576656CLL;
  }

  else
  {
    v3 = 0x6572757361656DLL;
  }

  if ((a1 & 0x100) != 0)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if ((a2 & 0x100) != 0)
  {
    v5 = 0x6C6576656CLL;
  }

  else
  {
    v5 = 0x6572757361656DLL;
  }

  if ((a2 & 0x100) != 0)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v7 = a2;
    v8 = (a2 >> 16) & 1;
    v9 = a1;
    v10 = (a1 >> 16) & 1;

    result = 0;
    if (v10 != v8 || ((v9 >> 24) & 1) != ((v7 >> 24) & 1))
    {
      return result;
    }

    return BYTE4(v9) & 1 ^ ((v7 & &_mh_execute_header) == 0);
  }

  v7 = a2;
  v11 = (a2 >> 16) & 1;
  v13 = (a1 >> 16) & 1;
  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v13 == v11 && (v14 & 1) != 0)
  {
    BYTE4(v9) = BYTE4(a1);
    if (((a1 >> 24) & 1) == ((v7 >> 24) & 1))
    {
      return BYTE4(v9) & 1 ^ ((v7 & &_mh_execute_header) == 0);
    }
  }

  return result;
}

unint64_t sub_1000EC6F8()
{
  result = qword_1004A9048;
  if (!qword_1004A9048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9048);
  }

  return result;
}

char *sub_1000EC74C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label;
  type metadata accessor for InteractiveLabel();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ViewWithInteractiveLabel();
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label;
  v12 = *&v10[OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label];
  v13 = v10;
  [v12 setUserInteractionEnabled:1];
  [v13 addSubview:*&v10[v11]];
  [*&v10[v11] setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000EC994();

  return v13;
}

char *sub_1000EC878(void *a1)
{
  v3 = OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label;
  type metadata accessor for InteractiveLabel();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ViewWithInteractiveLabel();
  v4 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label;
    v7 = *&v4[OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label];
    v8 = v4;
    [v7 setUserInteractionEnabled:1];
    [v8 addSubview:*&v5[v6]];
    [*&v5[v6] setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_1000EC994();
  }

  return v5;
}

void sub_1000EC994()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1003D6290;
  v4 = *&v1[OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label];
  v5 = [v4 bottomAnchor];
  v6 = [v1 bottomAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v3 + 32) = v7;
  v8 = [v4 leadingAnchor];
  v9 = [v1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v3 + 40) = v10;
  v11 = [v4 trailingAnchor];
  v12 = [v1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v3 + 48) = v13;
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

id sub_1000ECB80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewWithInteractiveLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000ECCB8(void *a1)
{
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    sub_1000ECDC0();
    v7 = v6;
    v9 = v8;
    v10 = OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label;
    [*&v5[OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label] setFont:v6];
    [*&v5[v10] setTextColor:v9];

    a1 = v7;
  }

  return v4;
}

void sub_1000ECDC0()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v2 = [v1 fontDescriptor];

  v3 = [v2 fontDescriptorWithSymbolicTraits:2];
  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v3 pointSize];

  v4 = [v0 preferredFontForTextStyle:UIFontTextStyleTitle3];
  v5 = [v4 fontDescriptor];

  v6 = [v5 fontDescriptorWithSymbolicTraits:2];
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = [v0 fontWithDescriptor:v6 size:0.0];

  [v7 pointSize];
  v8 = [v0 preferredFontForTextStyle:UIFontTextStyleTitle3];
  v9 = [v8 fontDescriptor];

  v10 = [v9 fontDescriptorWithSymbolicTraits:2];
  if (v10)
  {
    [v0 fontWithDescriptor:v10 size:0.0];

    v11 = [objc_opt_self() secondaryLabelColor];
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1000ECFF4()
{
  v1 = v0;
  static PlaneSelector.DebuggerClass[0] = type metadata accessor for SCNPlaneSelectionDebugger();
  static PlaneSelector.DebuggerClass[1] = &off_100470DC0;
  static LocalPlaneDetector.DebuggerClass[0] = type metadata accessor for SCNLocalPlaneDebugger();
  static LocalPlaneDetector.DebuggerClass[1] = &off_100468B80;
  static SegmentationProcessor.DebuggerClass[0] = type metadata accessor for SCNSegmentationDebugger();
  static SegmentationProcessor.DebuggerClass[1] = &protocol witness table for SCNSegmentationDebugger;
  static PatchTracker.DebuggerClass[0] = type metadata accessor for SCNPatchDebugger();
  static PatchTracker.DebuggerClass[1] = &protocol witness table for SCNPatchDebugger;
  v2 = [objc_opt_self() sharedApplication];
  [v2 setIdleTimerDisabled:1];

  sub_1000F31E4();
  if (qword_1004A0280 != -1)
  {
    swift_once();
  }

  _StringGuts.grow(_:)(17);

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = [v3 dictionaryRepresentation];

  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = Dictionary.description.getter();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x6665442072657355;
  v9._object = 0xEF0A3A73746C7561;
  Log.debug(_:isPrivate:)(v9, 0);

  type metadata accessor for LinesRenderer(0);
  v10 = swift_allocObject();
  *(v1 + 232) = sub_1000F2F8C(v10);

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  qword_1004D4AD8 = *(v1 + 232);

  sub_1000EDAA0();
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if (static UIDevice.isIPhone()())
  {
    sub_1000EDDC4();
    sub_1000EDEF0();
    v11 = *(v1 + 112);
    if (!v11)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1003D6280;
    v13 = *(v1 + 96);
    if (!v13)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    *(v12 + 32) = v13;
    v14 = *(v1 + 104);
    if (!v14)
    {
LABEL_24:
      __break(1u);
      return;
    }

    *(v12 + 40) = v14;
    sub_100018630(0, &qword_1004A9320, UIViewController_ptr);
    v15 = v11;
    v16 = v13;
    v17 = v14;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 setViewControllers:isa];
  }

  sub_1000EE140();
  v19 = [objc_opt_self() currentDevice];
  v20 = [v19 userInterfaceIdiom];

  if (v20 == 1)
  {
    goto LABEL_13;
  }

  v21 = *(v1 + 112);
  if (!v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ([v21 selectedIndex] == 1)
  {
LABEL_13:
    *(v1 + 80) = 1;
    v22 = *(v1 + 120);
    if (v22)
    {
      v23 = [v22 view];
      if (v23)
      {
        v24 = v23;
        [v23 setAlpha:0.0];

        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_16:
  v25 = xmmword_1004D4AE8;
  *&xmmword_1004D4AE8 = *(v1 + 120);
  v26 = xmmword_1004D4AE8;

  v27 = *(v1 + 64);
  [v27 setRootViewController:*(v1 + 120)];
  [v27 makeKeyAndVisible];
  [v27 setOverrideUserInterfaceStyle:2];

  sub_1000EE3C0();
}

uint64_t sub_1000ED4B8()
{
  v1 = qword_1004A90C8;
  if (*(v0 + qword_1004A90C8))
  {
    v2 = *(v0 + qword_1004A90C8);
  }

  else
  {
    sub_1000ED520(v0);
    v2 = v3;
    *(v0 + v1) = v3;
  }

  return v2;
}

void sub_1000ED520(void *a1)
{
  sub_10000F974(&qword_1004A9368, &qword_1003DCDF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5720;
  *(inited + 32) = 0;
  sub_10000F974(&qword_1004A9370, &qword_1003DCE00);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1003D5230;
  v4 = a1[24];
  v5 = &off_100469D00;
  if (!v4)
  {
    v5 = 0;
  }

  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = a1[26];
  if (v6)
  {
    v7 = &off_10046E520;
  }

  else
  {
    v7 = 0;
  }

  *(v3 + 48) = v6;
  *(v3 + 56) = v7;
  v10 = a1 + 21;
  v8 = a1[21];
  v9 = v10[1];
  if (v9)
  {
    v11 = &off_10046EFF8;
  }

  else
  {
    v11 = 0;
  }

  *(v3 + 64) = v9;
  *(v3 + 72) = v11;
  v12 = &off_10046E0D0;
  if (!v8)
  {
    v12 = 0;
  }

  *(v3 + 80) = v8;
  *(v3 + 88) = v12;
  *(inited + 40) = v3;
  *(inited + 48) = 1;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1003D5360;
  *(v13 + 32) = v6;
  *(v13 + 40) = v7;
  *(inited + 56) = v13;
  *(inited + 64) = 2;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1003D5360;
  *(v14 + 32) = v9;
  *(v14 + 40) = v11;
  *(inited + 72) = v14;
  v15 = sub_10019A4F8(inited);
  swift_setDeallocating();

  swift_retain_n();
  swift_retain_n();
  v16 = v4;
  sub_10000F974(&qword_1004A9378, &unk_1003DCE08);
  swift_arrayDestroy();
  type metadata accessor for InstrumentationCoordinator(0);
  swift_allocObject();
  sub_1000A78DC(v15);
}

uint64_t sub_1000ED700(uint64_t a1)
{
  v2 = v1;
  *(v1 + 72) = [objc_allocWithZone(type metadata accessor for TabBarControllerDelegate(0)) init];
  *(v1 + 80) = 0;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  v4 = sub_10000F974(&qword_1004A9318, &qword_1003DCB78);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v6 = qword_1004D5058;
  v7 = *(v4 + 272);
  swift_retain_n();
  *(v2 + 216) = v7(KeyPath, v6);
  *(v2 + 224) = 0;
  *(v2 + 232) = 0;
  *(v2 + 240) = _swiftEmptyArrayStorage;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  v8 = sub_10000F974(&qword_1004A1638, &qword_1003D8080);
  v9 = swift_getKeyPath();
  v10 = *(v8 + 272);

  *(v2 + 264) = v10(v9, v6);
  v11 = sub_10000F974(&qword_1004A3F50, &qword_1003D8110);
  v12 = swift_getKeyPath();
  v13 = *(v11 + 272);

  *(v2 + 272) = v13(v12, v6);
  v14 = swift_getKeyPath();
  v15 = *(sub_10000F974(&unk_1004A3F30, &qword_1003DCC30) + 272);

  *(v2 + 280) = v15(v14, v6);
  v16 = swift_getKeyPath();
  v17 = *(sub_10000F974(&unk_1004A72D0, &qword_1003D5850) + 272);

  *(v2 + 288) = v17(v16, v6);
  v18 = qword_1004A90A8;
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 56))(v2 + v18, 1, 1, v19);
  v20 = qword_1004A90B0;
  v21 = sub_10000F974(&qword_1004A53F8, &qword_1003D9528);
  v22 = swift_getKeyPath();
  *(v2 + v20) = (*(v21 + 272))(v22, v6);
  v23 = qword_1004A90B8;
  v24 = swift_getKeyPath();
  v25 = sub_10000F974(&unk_1004A2520, &unk_1003D73A0);
  *(v2 + v23) = (*(v25 + 272))(v24, v6);
  *(v2 + qword_1004A90C0) = 0;
  *(v2 + qword_1004A90C8) = 0;
  *(v2 + 64) = a1;
  *(v2 + 296) = 2;
  *(v2 + 297) = 0;
  return StateObserver.init(configuration:)();
}

void sub_1000EDAA0()
{
  if (qword_1004A0280 != -1)
  {
    swift_once();
  }

  v1._object = 0x8000000100407020;
  v1._countAndFlagsBits = 0xD000000000000018;
  Log.debug(_:isPrivate:)(v1, 0);
  v2 = objc_allocWithZone(type metadata accessor for ViewController(0));
  v3 = sub_1000F2548(v2);
  v4 = *(v0 + 88);
  *(v0 + 88) = v3;
  v5 = v3;

  v6 = [v5 tabBarItem];
  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = [objc_opt_self() mainBundle];
  v28._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0x4552555341454DLL;
  v8._object = 0xE700000000000000;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v28);

  v10 = String._bridgeToObjectiveC()();

  [v6 setTitle:v10];

  v11 = *(v0 + 88);
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = [v11 tabBarItem];
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  v14 = String._bridgeToObjectiveC()();
  v15 = objc_opt_self();
  v16 = [v15 systemImageNamed:v14];

  [v13 setImage:v16];
  v17 = *(v0 + 88);
  if (!v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = [v17 tabBarItem];
  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = v18;
  v20 = String._bridgeToObjectiveC()();
  v21 = [v15 systemImageNamed:v20];

  [v19 setLandscapeImagePhone:v21];
  v22 = *(v0 + 88);
  if (!v22)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v23 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v22];
  v24 = *(v0 + 96);
  *(v0 + 96) = v23;

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v26 = *(&xmmword_1004D4AB8 + 1);
  *(&xmmword_1004D4AB8 + 1) = *(v0 + 88);
  v25 = *(&xmmword_1004D4AB8 + 1);
}

void sub_1000EDDC4()
{
  v1 = [objc_allocWithZone(UITabBarController) init];
  v2 = *(v0 + 112);
  *(v0 + 112) = v1;
  v3 = v1;

  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  [v3 setDelegate:*(v0 + 72)];

  v4 = *(v0 + 112);
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = [v4 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v5 setAccessibilityIgnoresInvertColors:1];

  v7 = *(v0 + 112);
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = [v7 tabBar];
  v9 = [objc_opt_self() whiteColor];
  [v8 setTintColor:v9];
}

void sub_1000EDEF0()
{
  v1 = [objc_allocWithZone(LevelPageViewController) init];
  v2 = *(v0 + 104);
  *(v0 + 104) = v1;
  v3 = v1;

  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = [v3 tabBarItem];

  if (!v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = [objc_opt_self() mainBundle];
  v21._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0x4C4556454CLL;
  v6._object = 0xE500000000000000;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v21);

  v8 = String._bridgeToObjectiveC()();

  [v4 setTitle:v8];

  v9 = *(v0 + 104);
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = [v9 tabBarItem];
  if (!v10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v10;
  v12 = String._bridgeToObjectiveC()();
  v13 = objc_opt_self();
  v14 = [v13 systemImageNamed:v12];

  [v11 setImage:v14];
  v15 = *(v0 + 104);
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = [v15 tabBarItem];
  if (!v16)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = String._bridgeToObjectiveC()();
  v19 = [v13 systemImageNamed:v18];

  [v17 setLandscapeImagePhone:v19];
}

void sub_1000EE140()
{
  v1 = v0;
  v2 = [objc_allocWithZone(OrientationLockedViewController) init];
  v3 = v0[15];
  v0[15] = v2;
  v4 = v2;

  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = swift_allocObject();
  swift_weakInit();
  v17[4] = sub_1000F3A30;
  v17[5] = v5;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1000F0800;
  v17[3] = &unk_10046E0A8;
  v6 = _Block_copy(v17);

  [v4 setIsAutorotationEnabled:v6];
  _Block_release(v6);

  v7 = v1[15];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = qword_1004A0180;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  [v9 setOrientationToLockTo:qword_1004D4AE0];

  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  v10 = static UIDevice.isIPhone()();
  v11 = v1[15];
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1003D56B0;
  v13 = v1[14];
  if (v13)
  {
LABEL_11:
    *(v12 + 32) = v13;
    sub_100018630(0, &qword_1004A9320, UIViewController_ptr);
    v14 = v11;
    v15 = v13;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 setViewControllers:isa];

    return;
  }

  __break(1u);
LABEL_9:
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1003D56B0;
  v13 = v1[11];
  if (v13)
  {
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
}

void sub_1000EE3C0()
{
  v1 = v0;
  v2 = sub_10000F974(&qword_1004A6F50, &qword_1003DCCB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v126 - v3;
  v5 = sub_10000F974(&qword_1004A9328, &qword_1003DCCB8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v126 - v7;
  v9 = sub_10000F974(&qword_1004A9330, &unk_1003DCCC0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v126 - v11;
  v13 = v1[11];
  if (!v13)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v140 = v8;
  v14 = v13;
  v15 = sub_1001CC7B0();

  if (qword_1004A0850 != -1)
  {
    swift_once();
  }

  v16 = qword_1004D5428;
  [v15 center];
  v18 = v17;
  v20 = v19;
  [v15 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [v15 bounds];
  v146 = 0;
  v29 = v16 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
  *v29 = v18;
  *(v29 + 8) = v20;
  *(v29 + 16) = v22;
  *(v29 + 24) = v24;
  *(v29 + 32) = v26;
  *(v29 + 40) = v28;
  *(v29 + 48) = v30;
  *(v29 + 56) = v31;
  *(v29 + 64) = v32;
  *(v29 + 72) = v33;
  *(v29 + 80) = 0;
  type metadata accessor for CVController();
  swift_allocObject();
  v34 = v15;
  v35 = sub_10004B2A8(v34);

  v1[28] = v35;

  type metadata accessor for MotionObserver(0);
  v36 = swift_allocObject();
  v1[16] = sub_1001D264C(v36);

  if (!v1[28])
  {
    goto LABEL_31;
  }

  v139 = v6;
  v37 = v1[29];
  if (!v37)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  type metadata accessor for LinesInstrument(0);
  swift_allocObject();

  v1[21] = sub_1000F5698(v38, v37);

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  qword_1004D4B08 = v1[21];

  type metadata accessor for MeasurementsStateReducer(0);
  v39 = swift_allocObject();
  v1[20] = sub_1000F29E4(v39);

  v40 = MeasureCore.shared.unsafeMutableAddressor();
  if (!v1[16])
  {
    goto LABEL_33;
  }

  v41 = v40;
  v42 = v34;

  MeasureCore.initialize(sceneView:motion:)();

  type metadata accessor for RectangleInstrument(0);
  swift_allocObject();
  v43 = v42;
  sub_10013F754(v43);
  v1[22] = v44;

  v138 = objc_opt_self();
  if (![v138 jasperAvailable])
  {
    goto LABEL_17;
  }

  type metadata accessor for HistoryTracker(0);
  v45 = swift_allocObject();
  v46 = sub_1000F2D98(v45);
  v1[25] = v46;

  v47 = v1[29];
  if (!v47)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  sub_1001D2798(v46, v47, v48);

  type metadata accessor for GuidesCoordinator(0);
  swift_allocObject();
  v1[23] = sub_1000E63A4();

  v49 = *v41;
  swift_beginAccess();
  if (!*(v49 + 112))
  {
LABEL_14:
    v55 = [objc_opt_self() standardUserDefaults];
    v56 = [v55 kPersonHeightEnabled];

    if (v56)
    {
      sub_100018630(0, &qword_1004A9360, ARWorldTrackingConfiguration_ptr);
      if ([swift_getObjCClassFromMetadata() supportsFrameSemantics:1])
      {
        v57 = objc_allocWithZone(type metadata accessor for PersonHeightInstrument(0));
        v58 = sub_100055BA8(v43);
        v59 = v1[24];
        v1[24] = v58;
      }
    }

LABEL_17:
    v137 = v5;
    type metadata accessor for Session();
    v60 = swift_allocObject();
    *(v60 + 24) = 0;
    *(v60 + 32) = v43;
    v61 = v43;
    v62 = [v61 session];
    *(v60 + 16) = v62;
    v63 = WorldAnchor.arSession.unsafeMutableAddressor();
    swift_beginAccess();
    v64 = *v63;
    *v63 = v62;
    v65 = v62;

    v1[19] = v60;

    v66 = v1[21];
    if (v66)
    {
      v136 = v12;
      v67 = v1[29];
      if (v67)
      {
        objc_allocWithZone(type metadata accessor for RenderLoop(0));
        v68 = v61;

        v69 = sub_10016F0A0(v68, v66, v67);
        v70 = v1[18];
        v1[18] = v69;
        v71 = v69;

        v72 = v1[19];
        if (v72)
        {

          v135 = sub_10016EEB0();
          v74 = v73;

          v75 = v1[21];
          if (v75)
          {
            v134 = v72;
            v76 = v1[28];
            if (v76)
            {
              v131 = v4;
              v132 = v10;
              v133 = v9;
              v77 = v1[29];
              if (v77)
              {
                v128 = v1;
                v130 = v74;
                v78 = type metadata accessor for MainLoop(0);
                v79 = objc_allocWithZone(v78);
                v80 = qword_1004A8410;
                KeyPath = swift_getKeyPath();
                v82 = sub_10000F974(&unk_1004A1940, &unk_1003D65A0);
                v83 = qword_1004A04D8;
                v127 = v68;

                v129 = v76;

                v141 = v75;
                if (v83 != -1)
                {
                  swift_once();
                }

                v84 = qword_1004D5058;
                v85 = *(v82 + 272);
                swift_retain_n();
                *&v79[v80] = v85(KeyPath, v84);
                v86 = qword_1004A8418;
                sub_10000F974(&qword_1004A8758, &unk_1003DCCD0);
                swift_getKeyPath();
                v87 = v78;
                *&v79[v86] = MutableStateValue.__allocating_init(_:_:)();
                v88 = qword_1004A8420;
                sub_10000F974(&qword_1004A8760, &qword_1003DC418);
                swift_getKeyPath();
                *&v79[v88] = MutableStateValue.__allocating_init(_:_:)();
                v89 = qword_1004A8428;
                sub_10000F974(&qword_1004A8768, &qword_1003DCCE0);
                swift_getKeyPath();
                *&v79[v89] = MutableStateValue.__allocating_init(_:_:)();
                v90 = qword_1004A8430;
                v91 = swift_getKeyPath();
                v92 = sub_10000F974(&qword_1004A8770, &qword_1003DCD10);
                *&v79[v90] = (*(v92 + 272))(v91, v84);
                v79[qword_1004A8468] = 0;
                *&v79[qword_1004A8478] = 0;
                v93 = &v79[qword_1004A8480];
                v142 = 0;
                v143 = 1;
                sub_10000F974(&qword_1004A8778, &unk_1003DC480);
                swift_allocObject();
                v94 = Synchronized.init(wrappedValue:)();
                *v93 = 0;
                *(v93 + 1) = v94;
                v93[16] = 0;
                v95 = v134;
                *&v79[qword_1004A8460] = v134;
                v96 = v127;
                *&v79[qword_1004A8458] = v127;
                v97 = &v79[qword_1004A8438];
                v98 = v130;
                *v97 = v135;
                v97[1] = v98;
                *&v79[qword_1004A8448] = v141;
                *&v79[qword_1004A8450] = v129;
                *&v79[qword_1004A8440] = v77;
                v99 = objc_allocWithZone(type metadata accessor for MainLoop.InternalObserver());
                v100 = v96;

                v101 = [v99 init];
                *&v79[qword_1004A8470] = v101;
                v145.receiver = v79;
                v145.super_class = v87;
                v102 = objc_msgSendSuper2(&v145, "init");
                v103 = qword_1004A8470;
                swift_unknownObjectWeakAssign();
                v104 = *(v95 + 16);
                v105 = v102;
                [v104 setDelegate:v105];
                [*(v95 + 16) _addObserver:*&v102[v103]];

                v135 = v100;

                v106 = v128;
                v107 = v128[17];
                v128[17] = v102;

                if ([v138 jasperAvailable])
                {
                  v108 = [objc_opt_self() standardUserDefaults];
                  swift_getKeyPath();
                  swift_allocObject();
                  swift_weakInit();
                  sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
                  v109 = static OS_dispatch_queue.main.getter();
                  NSUserDefaults.performOnChange<A>(to:on:action:)();
                }

                v110 = sub_1000ED4B8();
                v142 = *(v110 + 64);
                v111 = swift_allocObject();
                *(v111 + 16) = sub_1000F3870;
                *(v111 + 24) = v110;

                sub_10000F974(&qword_1004A6FD8, &qword_1003DA880);
                sub_10001D47C(&qword_1004A9338, &qword_1004A6FD8, &qword_1003DA880, &protocol conformance descriptor for PassthroughSubject<A, B>);
                v112 = v140;
                Publisher.map<A>(_:)();

                sub_10001D47C(&qword_1004A9340, &qword_1004A9328, &qword_1003DCCB8, &protocol conformance descriptor for Publishers.Map<A, B>);
                v113 = v137;
                v114 = Publisher.eraseToAnyPublisher()();

                (*(v139 + 8))(v112, v113);
                v142 = v114;
                sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
                v115 = static OS_dispatch_queue.main.getter();
                v144 = v115;
                v116 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
                v117 = v131;
                (*(*(v116 - 8) + 56))(v131, 1, 1, v116);
                sub_10000F974(&qword_1004A9348, qword_1003DCD18);
                sub_10001D47C(&qword_1004A9350, &qword_1004A9348, qword_1003DCD18, &protocol conformance descriptor for AnyPublisher<A, B>);
                sub_1000F38F4();
                v118 = v136;
                Publisher.receive<A>(on:options:)();
                sub_100018F04(v117, &qword_1004A6F50, &qword_1003DCCB0);

                sub_10001D47C(&qword_1004A9358, &qword_1004A9330, &unk_1003DCCC0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

                v119 = v133;
                Publisher<>.sink(receiveValue:)();

                (*(v132 + 8))(v118, v119);
                swift_beginAccess();
                sub_10000F974(&qword_1004A3270, &qword_1003DCB70);
                sub_10001D47C(&qword_1004A3278, &qword_1004A3270, &qword_1003DCB70, &protocol conformance descriptor for [A]);
                AnyCancellable.store<A>(in:)();
                swift_endAccess();

                v120 = *(v106 + 88);
                if (v120)
                {
                  v121 = v120;
                  v122 = sub_1001CC7B0();

                  v123 = *(v106 + 88);
                  if (v123)
                  {
                    objc_allocWithZone(type metadata accessor for DebugSessionCoordinator(0));

                    sub_10017FCC0(v122, v123, sub_1000F3990, v106);
                    v124 = qword_1004D4AD0;
                    qword_1004D4AD0 = v125;

                    return;
                  }

                  goto LABEL_41;
                }

LABEL_40:
                __break(1u);
LABEL_41:
                __break(1u);
                goto LABEL_42;
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

  v50 = v1[11];
  if (v50)
  {

    v51 = v50;
    v52 = sub_1001CC738();

    OverlayMetalView.populateScene(depthProcessor:)();
    type metadata accessor for EdgeInstrument(0);
    swift_allocObject();
    sub_100114DD8();
    v54 = v53;

    v1[26] = v54;

    goto LABEL_14;
  }

LABEL_43:
  __break(1u);
}

void sub_1000EF428()
{
  v1 = v0;
  *(v0 + 72) = [objc_allocWithZone(type metadata accessor for TabBarControllerDelegate(0)) init];
  *(v0 + 80) = 0;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  v2 = sub_10000F974(&qword_1004A9318, &qword_1003DCB78);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v2 + 272);
  swift_retain_n();
  *(v1 + 216) = v5(KeyPath, v4);
  *(v1 + 224) = 0;
  *(v1 + 232) = 0;
  *(v1 + 240) = _swiftEmptyArrayStorage;
  *(v1 + 248) = 0;
  *(v1 + 256) = 0;
  v6 = sub_10000F974(&qword_1004A1638, &qword_1003D8080);
  v7 = swift_getKeyPath();
  v8 = *(v6 + 272);

  *(v1 + 264) = v8(v7, v4);
  v9 = sub_10000F974(&qword_1004A3F50, &qword_1003D8110);
  v10 = swift_getKeyPath();
  v11 = *(v9 + 272);

  *(v1 + 272) = v11(v10, v4);
  v12 = swift_getKeyPath();
  v13 = *(sub_10000F974(&unk_1004A3F30, &qword_1003DCC30) + 272);

  *(v1 + 280) = v13(v12, v4);
  v14 = swift_getKeyPath();
  v15 = *(sub_10000F974(&unk_1004A72D0, &qword_1003D5850) + 272);

  *(v1 + 288) = v15(v14, v4);
  v16 = qword_1004A90A8;
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = qword_1004A90B0;
  v19 = sub_10000F974(&qword_1004A53F8, &qword_1003D9528);
  v20 = swift_getKeyPath();
  *(v1 + v18) = (*(v19 + 272))(v20, v4);
  v21 = qword_1004A90B8;
  v22 = swift_getKeyPath();
  v23 = sub_10000F974(&unk_1004A2520, &unk_1003D73A0);
  *(v1 + v21) = (*(v23 + 272))(v22, v4);
  *(v1 + qword_1004A90C0) = 0;
  *(v1 + qword_1004A90C8) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1000EF7B8()
{

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  if ([objc_opt_self() jasperAvailable])
  {

    StateValue.ifUpdated(_:)();
  }

  return result;
}

void sub_1000EF8A4(char *a1, _BYTE *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a1;
  sub_1000F0BD8(*a1);
  sub_1000F178C(v3);
  a2[296] = v7;
  a2[297] = v3;
  a2[298] = v4;
  a2[299] = v5;
  a2[300] = v6;
}

void sub_1000EF90C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 == 5)
  {
    return;
  }

  if (qword_1004A0260 != -1)
  {
    swift_once();
  }

  _StringGuts.grow(_:)(48);
  v4._object = 0x8000000100406EE0;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  String.append(_:)(v4);
  _print_unlocked<A, B>(_:_:)();
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  Log.default(_:isPrivate:)(v5, 0);

  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        sub_1000F1E88(0, 0);
        sub_1000F1A6C(1);
      }

      else
      {
        v8._countAndFlagsBits = 0xD00000000000003ALL;
        v8._object = 0x8000000100406F10;
        Log.default(_:isPrivate:)(v8, 0);
        sub_1000EFBA0(0, 0x3FF0000000000000, 0);
      }
    }

    return;
  }

  if (!v2)
  {
    v6 = *(a2 + 88);
    if (v6)
    {
      v7 = v6;
      sub_1001CCEC0();

      if (qword_1004A0180 != -1)
      {
        swift_once();
      }

      if (qword_1004D4AF8)
      {

        sub_1000C22A4(0);
      }

      return;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  v9 = *(a2 + 88);
  if (!v9)
  {
    goto LABEL_20;
  }

  if (*&v9[qword_1004AF958])
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v11 = v9;

    sub_1001390A0(0, 1, sub_1000F3390, v10);
  }
}

void sub_1000EFBA0(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v24 - v18;
  sub_1000F1E88((a1 & 1) == 0, 0);
  if ((a3 & 1) != 0 || *&a2 <= 0.0)
  {

    sub_1000F1A6C(1);
  }

  else
  {
    sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
    v25 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v20 = *(v14 + 8);
    v26 = v14 + 8;
    v27 = v20;
    v20(v16, v13);
    aBlock[4] = sub_1000F33DC;
    aBlock[5] = v4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_10046DEF0;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10003180C();
    sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
    v22 = v28;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = v25;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v21);

    (*(v31 + 8))(v9, v22);
    (*(v29 + 8))(v12, v30);
    v27(v19, v13);
  }
}

void sub_1000EFFA4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v3);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v23[-v7];
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v9 = qword_1004D4AD0;
  if (qword_1004D4AD0)
  {
    v10 = qword_1004ACA08;
    swift_beginAccess();
    sub_100085F70(v9 + v10, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v13 = &v8[*(sub_10000F974(&qword_1004A9310, &unk_1003DCB60) + 64)];
        v14 = *v13;
        v15 = v13[1];
        v16 = v9;
        sub_1000223C4(v14, v15);
        v17 = type metadata accessor for URL();
        (*(*(v17 - 8) + 8))(v8, v17);
        goto LABEL_12;
      }
    }

    else if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v12 = v8;
LABEL_25:
        sub_1000F340C(v12, type metadata accessor for DebugSessionCoordinator.RecordReplayState);
        return;
      }

      v19 = v9;
LABEL_12:
      sub_100085F70(v9 + v10, v5);

      v20 = swift_getEnumCaseMultiPayload();
      if (v20 <= 1)
      {
        if (!v20)
        {
          v21 = sub_10000F974(&qword_1004A9310, &unk_1003DCB60);
          sub_1000223C4(*&v5[*(v21 + 64)], *&v5[*(v21 + 64) + 8]);
          v22 = type metadata accessor for URL();
          (*(*(v22 - 8) + 8))(v5, v22);
          return;
        }
      }

      else if (v20 != 2)
      {
        if (v20 == 3)
        {
          sub_1000F340C(v5, type metadata accessor for DebugSessionCoordinator.RecordReplayState);
        }

        goto LABEL_16;
      }

      v12 = v5;
      goto LABEL_25;
    }

    v18 = v9;
    sub_1000F340C(v8, type metadata accessor for DebugSessionCoordinator.RecordReplayState);
    goto LABEL_12;
  }

LABEL_16:

  StateValue.wrappedValue.getter();

  memcpy(v25, v24, 0x213uLL);
  sub_10006BE28(v25);
  if (v25[2])
  {
    if (v25[1])
    {
      return;
    }
  }

  else if ((v25[1] & 1) == 0)
  {
    return;
  }

  if (*(a2 + 248) == 1)
  {
    sub_1000F2424(0);
  }
}

double sub_1000F02D0()
{

  sub_100018F04(v0 + qword_1004A90A8, &unk_1004A3D90, &unk_1003DDD80);

  return result;
}

id *sub_1000F0418()
{
  v0 = StateObserver.deinit();

  sub_100018F04(v0 + qword_1004A90A8, &unk_1004A3D90, &unk_1003DDD80);

  return v0;
}

uint64_t sub_1000F0568()
{
  sub_1000F0418();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MeasureCoordinator(uint64_t a1)
{
  result = qword_1004A90F8;
  if (!qword_1004A90F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F0608(uint64_t a1)
{
  sub_100065060(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

BOOL sub_1000F073C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v2 = *(**(Strong + qword_1004A90B8) + 144);

  v2(&v6, v3);

  v4 = v6 != 0x8000000000000018;
  sub_10001B360(v6);

  return v4;
}

uint64_t sub_1000F0800(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

void sub_1000F0840(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 192);
    if (!v4)
    {

      return;
    }

    if (v2)
    {
      v5 = qword_1004A0180;
      v6 = v4;
      if (v5 != -1)
      {
        swift_once();
      }

      if (!qword_1004D4AC8)
      {
        __break(1u);
        return;
      }

      if (!*(qword_1004D4AC8 + 24))
      {
        sub_100063534();
        goto LABEL_12;
      }

      v7 = 0;
    }

    else
    {
      v6 = v4;
      v7 = 1;
    }

    sub_100063B98(v7);
LABEL_12:
  }
}

uint64_t sub_1000F0928(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v5 = *(v11 - 8);
  __chkstk_darwin(v11);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1000F3A00;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046E080;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v12 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v11);
}

void sub_1000F0BD8(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_10000F974(&unk_1004A3D90, &unk_1003DDD80);
  __chkstk_darwin(v3 - 8);
  v80 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = &v70 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v81 = v7;
  v82 = v8;
  __chkstk_darwin(v7);
  v76 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v70 - v11;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v78 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v77 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchTime();
  __chkstk_darwin(v19);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v70 - v24;
  v83 = v1;
  v26 = v1[296];
  if (v26 == v2)
  {
    return;
  }

  if ((v2 - 2) < 2)
  {
    v27 = [objc_opt_self() jasperAvailable];
    v28 = v83;
    if (v2 == 2)
    {
      if (v27)
      {
        v29 = v80;
        Date.init()();
        (*(v82 + 56))(v29, 0, 1, v81);
        v30 = qword_1004A90A8;
        swift_beginAccess();
        sub_10006CA08(v29, &v28[v30], &unk_1004A3D90, &unk_1003DDD80);
        swift_endAccess();
      }
    }

    sub_1000F1E88(1, v2 == 3);
    return;
  }

  if (v2)
  {
    v36 = v83;
    v40 = *(v83 + 21);
    if (!v40)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (*(v40 + 208))
    {
LABEL_48:
      v68 = *(v36 + 11);
      if (v68)
      {
        v69 = v68;
        sub_1001CCEC0();

        return;
      }

      goto LABEL_55;
    }

    v41 = *(v40 + 72);
    swift_beginAccess();
    v42 = *(v41 + 64);
    if (v42 >> 62)
    {
      v43 = _CocoaArrayWrapper.endIndex.getter();
      if (v43)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v43)
      {
LABEL_18:
        if (v43 < 1)
        {
          __break(1u);
LABEL_52:
          swift_once();
LABEL_41:
          v57._object = 0x8000000100406FB0;
          v57._countAndFlagsBits = 0xD000000000000020;
          Log.default(_:isPrivate:)(v57, 0);
          v58 = *(v36 + 11);
          v59 = v82;
          if (!v58)
          {
LABEL_57:
            __break(1u);
            return;
          }

          v60 = *&v58[qword_1004AF910];
          if (!v60 || (v61 = objc_opt_self(), v62 = swift_allocObject(), *(v62 + 16) = v60, v63 = swift_allocObject(), *(v63 + 16) = sub_1000F3830, *(v63 + 24) = v62, v88 = sub_100031688, v89 = v63, aBlock = _NSConcreteStackBlock, v85 = 1107296256, v86 = sub_1000DC708, v87 = &unk_10046DFE0, v64 = _Block_copy(&aBlock), v65 = v60, v66 = v58, , , [v61 performWithoutAnimation:v64], _Block_release(v64), LOBYTE(v61) = swift_isEscapingClosureAtFileLocation(), v65, v66, , , (v61 & 1) == 0))
          {
            sub_1000F1E88(1, 0);
            sub_1000F1A6C(1);
            v67 = v80;
            (*(v59 + 56))(v80, 1, 1, v81);
            swift_beginAccess();
            sub_10006CA08(v67, &v36[v13], &unk_1004A3D90, &unk_1003DDD80);
            swift_endAccess();
LABEL_36:

            StateValue.wrappedValue.getter();

            if (BYTE1(aBlock) == 1)
            {
            }

            else
            {
              v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v56 & 1) == 0)
              {
                return;
              }
            }

            sub_1000F1D78();
            return;
          }

          __break(1u);
          goto LABEL_54;
        }

        for (i = 0; i != v43; ++i)
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v45 = *(v42 + 8 * i + 32);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v46 = *(v45 + 24);
            ObjectType = swift_getObjectType();
            (*(v46 + 120))(1, ObjectType, v46);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        goto LABEL_47;
      }
    }

LABEL_47:
    *(v40 + 208) = 1;

    goto LABEL_48;
  }

  if ((v26 - 2) < 2)
  {
    if (v83[80] == 1)
    {
      v83[80] = 0;
      v31 = v23;
      sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
      v74 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v32 = *(v31 + 8);
      v73 = v31 + 8;
      v75 = v32;
      v32(v21, v19);
      v88 = sub_1000F3848;
      v89 = v83;
      aBlock = _NSConcreteStackBlock;
      v85 = 1107296256;
      v86 = sub_100041180;
      v87 = &unk_10046E008;
      v71 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      v72 = sub_10003180C();
      sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
      sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v33 = v71;
      v34 = v74;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v33);

      (*(v78 + 8))(v15, v13);
      (*(v77 + 8))(v18, v16);
      v75(v25, v19);
    }

    v35 = [objc_opt_self() jasperAvailable];
    v36 = v83;
    if (!v35)
    {
      goto LABEL_35;
    }

    v13 = qword_1004A90A8;
    swift_beginAccess();
    v37 = v79;
    sub_1000D7AB8(&v36[v13], v79);
    v39 = v81;
    v38 = v82;
    if ((*(v82 + 48))(v37, 1, v81) == 1)
    {
      sub_100018F04(v37, &unk_1004A3D90, &unk_1003DDD80);
LABEL_35:
      v55 = sub_1000F346C();
      sub_1000F1A6C(v55 & 1);
      goto LABEL_36;
    }

    (*(v38 + 32))(v12, v37, v39);
    v51 = v76;
    Date.init()();
    Date.distance(to:)();
    v53 = v52;
    v54 = *(v38 + 8);
    v54(v51, v39);
    v54(v12, v39);
    if (v53 < 600.0)
    {
      goto LABEL_35;
    }

    if (qword_1004A0260 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_52;
  }

  if (!v1[296])
  {
    return;
  }

  v48 = *(v83 + 11);
  if (!v48)
  {
    goto LABEL_56;
  }

  if (*&v48[qword_1004AF958])
  {
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    v83 = v48;

    sub_1001390A0(0, 0, sub_1000F3A70, v49);

    v50 = v83;
  }
}

void sub_1000F178C(char a1)
{
  v3 = type metadata accessor for SessionState(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v6 = 0x6C6576656CLL;
  }

  else
  {
    v6 = 0x6572757361656DLL;
  }

  if (a1)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (*(v1 + 297))
  {
    v8 = 0x6C6576656CLL;
  }

  else
  {
    v8 = 0x6572757361656DLL;
  }

  if (*(v1 + 297))
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v6 != v8 || v7 != v9)
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return;
    }

    if (a1)
    {
      v12 = v1;
      sub_1000F1D78();
      goto LABEL_33;
    }

    v13 = *(v1 + 256);
    if (v13)
    {
      [v13 invalidate];
      v14 = *(v1 + 256);
    }

    else
    {
      v14 = 0;
    }

    *(v1 + 256) = 0;

    v12 = v1;
    v15 = *(**(v1 + 280) + 144);

    v15(v16);

    v17 = *v5;
    sub_1000F33FC(*v5);
    sub_1000F340C(v5, type metadata accessor for SessionState);
    if (v17 - 2 >= 2 && v17 != 0)
    {
      if (v17 == 1)
      {
        goto LABEL_33;
      }

      sub_1000E5770(v17);
    }

    v19 = sub_1000F346C();
    sub_1000F1A6C(v19 & 1);
LABEL_33:
    v20 = *(v12 + 88);
    if (v20)
    {
      if (*&v20[qword_1004AF958])
      {
        v21 = swift_allocObject();
        *(v21 + 16) = v20;
        v22 = v20;

        sub_1001390A0(0, 1, sub_1000F3A70, v21);
      }
    }

    else
    {
      __break(1u);
    }

    return;
  }
}

void sub_1000F1A00(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = [v1 view];
  if (!v2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = v2;
  [v2 setAlpha:1.0];
}

void sub_1000F1A6C(char a1)
{
  if ((*(v1 + 248) & 1) == 0)
  {
    v2 = v1;
    if (a1)
    {
      v3 = *(**(v1 + 288) + 200);
      v4 = a1;

      v6 = v3(v5);

      (*(*v6 + 280))(sub_1000F23FC, 0);

      a1 = v4;
    }

    sub_1000F2424(a1 & 1);
    if (*(v1 + 128))
    {

      sub_10012BA10();

      v7 = *(v1 + 176);
      if (v7)
      {
        v8 = objc_opt_self();

        v9 = [v8 processInfo];
        v10 = [v9 thermalState];

        if (v10 < 4)
        {
          v11 = swift_allocObject();
          *(v11 + 16) = v7;
          *(v11 + 24) = 0x20303u >> (8 * v10);
          sub_10000F974(&unk_1004A3D70, &qword_1003DA860);
          swift_allocObject();
          Future.init(_:)();
          sub_10001D47C(&qword_1004A6F90, &unk_1004A3D70, &qword_1003DA860, &protocol conformance descriptor for Future<A, B>);
          Publisher<>.sink(receiveValue:)();

          swift_beginAccess();
          sub_10000F974(&qword_1004A3270, &qword_1003DCB70);
          sub_10001D47C(&qword_1004A3278, &qword_1004A3270, &qword_1003DCB70, &protocol conformance descriptor for [A]);
          AnyCancellable.store<A>(in:)();
          swift_endAccess();

          *(v2 + 248) = 1;
          return;
        }

LABEL_11:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1000F1D78()
{
  if (!*(v0 + 256))
  {
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    swift_weakInit();
    v6[4] = sub_1000F3828;
    v6[5] = v2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1000508F8;
    v6[3] = &unk_10046DF68;
    v3 = _Block_copy(v6);

    v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:5.0];
    _Block_release(v3);
    v5 = *(v0 + 256);
    *(v0 + 256) = v4;
  }
}

void sub_1000F1E88(char a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v3 + 248) == 1)
  {
    if (a1)
    {
      v14 = *(v3 + 88);
      if (!v14)
      {
LABEL_21:
        __break(1u);
        return;
      }

      v15 = v14;
      sub_1001CCEC0();
    }

    if (*(v3 + 224))
    {
      v31 = a2;
      v32 = v9;
      v33 = v7;
      v30 = v6;

      sub_100049F50();

      v16 = *(v3 + 176);
      if (v16)
      {
        v17 = swift_allocObject();
        *(v17 + 16) = v16;
        *(v17 + 24) = 0;
        sub_10000F974(&unk_1004A3D70, &qword_1003DA860);
        swift_allocObject();

        v34 = Future.init(_:)();
        sub_10001D47C(&qword_1004A6F90, &unk_1004A3D70, &qword_1003DA860, &protocol conformance descriptor for Future<A, B>);
        Publisher<>.sink(receiveValue:)();

        swift_beginAccess();
        sub_10000F974(&qword_1004A3270, &qword_1003DCB70);
        sub_10001D47C(&qword_1004A3278, &qword_1004A3270, &qword_1003DCB70, &protocol conformance descriptor for [A]);
        AnyCancellable.store<A>(in:)();
        swift_endAccess();

        if (qword_1004A0188 != -1)
        {
          swift_once();
        }

        v18 = qword_1004D4B20;
        swift_beginAccess();
        v19 = *(v18 + 24);
        *v13 = v19;
        (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
        v20 = v19;
        LOBYTE(v19) = _dispatchPreconditionTest(_:)();
        (*(v11 + 8))(v13, v10);
        v22 = v32;
        v21 = v33;
        v23 = v31;
        if (v19)
        {
          *(v18 + 32) = 0;
          swift_endAccess();

          if (qword_1004A0248 == -1)
          {
            goto LABEL_11;
          }
        }

        else
        {
          __break(1u);
        }

        swift_once();
LABEL_11:
        v24._object = 0x8000000100406F50;
        v24._countAndFlagsBits = 0xD000000000000025;
        Log.default(_:isPrivate:)(v24, 0);
        v25 = *(v3 + 128);
        if (v25)
        {
          [*(v25 + 80) stopDeviceMotionUpdates];
          if (*(v3 + 152))
          {

            sub_1001845D4(v23 & 1);

            v26 = [objc_opt_self() standardUserDefaults];
            Date.init()();
            isa = Date._bridgeToObjectiveC()().super.isa;
            (*(v21 + 8))(v22, v30);
            Defaults.dateLastUse.unsafeMutableAddressor();

            v28 = String._bridgeToObjectiveC()();

            [v26 setObject:isa forKey:v28];

            *(v3 + 248) = 0;
            return;
          }

          goto LABEL_20;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }
}

void sub_1000F2390(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000F1E88(1, 1);
    v4 = *(v3 + 256);
    *(v3 + 256) = 0;
  }
}

void sub_1000F2424(char a1)
{
  if ([objc_opt_self() jasperAvailable])
  {

    StateValue.wrappedValue.getter();

    memcpy(__dst, __src, 0x213uLL);
    sub_10006BE28(__dst);
    if (*(v1 + 152))
    {
      if (__dst[1])
      {
        v3 = 256;
      }

      else
      {
        v3 = 0;
      }

      sub_10018478C(v3 & 0xFFFE | a1 & 1, v4);

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (!*(v1 + 152))
  {
    goto LABEL_12;
  }

  v5 = sub_100185018();
  sub_100184898(a1 & 1, v5);
}

char *sub_1000F2548(char *a1)
{
  swift_getObjectType();
  *&a1[qword_1004AF900] = 0;
  *&a1[qword_1004AF908] = 0;
  *&a1[qword_1004AF910] = 0;
  v2 = qword_1004AF918;
  v3 = sub_10000F974(&unk_1004AFBE0, &qword_1003E3330);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v5 = qword_1004D5058;
  v6 = *(v3 + 272);
  swift_retain_n();
  *&a1[v2] = v6(KeyPath, v5);
  *&a1[qword_1004AF920] = 0;
  *&a1[qword_1004AF928] = 0;
  *&a1[qword_1004AF930] = 0;
  *&a1[qword_1004AF938] = 0;
  *&a1[qword_1004AF940] = 0;
  *&a1[qword_1004AF948] = 0;
  *&a1[qword_1004AF950] = 0;
  *&a1[qword_1004AF958] = 0;
  *&a1[qword_1004AF960] = 0;
  *&a1[qword_1004AF968] = 0;
  *&a1[qword_1004AF970] = 0;
  *&a1[qword_1004AF978] = 0;
  *&a1[qword_1004AF980] = 0;
  *&a1[qword_1004AF988] = 0;
  *&a1[qword_1004AF990] = 0;
  v7 = qword_1004AF998;
  type metadata accessor for MotionObserver(0);
  v8 = swift_allocObject();
  *&a1[v7] = sub_1001D264C(v8);
  a1[qword_1004AF9A0] = 0;
  *&a1[qword_1004AF9A8] = 0;
  v9 = qword_1004AF9B0;
  sub_10000F974(&qword_1004A93B0, &qword_1003E3360);
  swift_getKeyPath();
  *&a1[v9] = MutableStateValue.__allocating_init(_:_:)();
  v10 = qword_1004AF9B8;
  sub_10000F974(&unk_1004AFBF0, &unk_1003DCF80);
  swift_getKeyPath();
  *&a1[v10] = MutableStateValue.__allocating_init(_:_:)();
  v11 = qword_1004AF9C0;
  sub_10000F974(&qword_1004A93B8, &qword_1003E33C0);
  swift_getKeyPath();
  *&a1[v11] = MutableStateValue.__allocating_init(_:_:)();
  v12 = qword_1004AF9C8;
  v13 = sub_10000F974(&unk_1004AFC00, &qword_1003DCE40);
  v14 = swift_getKeyPath();
  *&a1[v12] = (*(v13 + 272))(v14, v5);
  v15 = qword_1004AF9D0;
  v16 = swift_getKeyPath();
  v17 = sub_10000F974(&qword_1004A7530, &unk_1003D58B0);
  *&a1[v15] = (*(v17 + 272))(v16, v5);

  return sub_1000F288C(a1);
}

char *sub_1000F288C(char *a1)
{
  v8[3] = &type metadata for Configurations.Default;
  v8[4] = &protocol witness table for Configurations.Default;
  *&a1[qword_1004AD840] = _swiftEmptyArrayStorage;
  v1 = &a1[qword_1004AD848];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v7.receiver = a1;
  v7.super_class = sub_10000F974(&qword_1004A93C0, &unk_1003DCFC0);
  v2 = objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
  sub_1000336B4(v8, v6);
  v3 = qword_1004AD848;
  swift_beginAccess();
  v4 = v2;
  sub_10006CA08(v6, &v2[v3], &qword_1004A1BE0, &unk_1003D8FB0);
  swift_endAccess();
  sub_10001D47C(&qword_1004A93C8, &qword_1004A93C0, &unk_1003DCFC0, &unk_1003E0FA0);
  StateObserving.setup()();

  sub_10000FF00(v8);
  return v4;
}

uint64_t sub_1000F29E4(uint64_t *a1)
{
  v21[3] = &type metadata for Configurations.Default;
  v21[4] = &protocol witness table for Configurations.Default;
  v2 = sub_10000F974(&qword_1004A2890, &qword_1003D6FD0);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v2 + 272);
  swift_retain_n();
  a1[8] = v5(KeyPath, v4);
  v6 = sub_10000F974(&qword_1004A1638, &qword_1003D8080);
  v7 = swift_getKeyPath();
  v8 = *(v6 + 272);

  a1[9] = v8(v7, v4);
  v9 = sub_10000F974(&unk_1004AFC00, &qword_1003DCE40);
  v10 = swift_getKeyPath();
  v11 = *(v9 + 272);

  a1[10] = v11(v10, v4);
  sub_10000F974(&qword_1004A9380, &qword_1003DCE70);
  swift_getKeyPath();
  a1[11] = MutableStateValue.__allocating_init(_:_:)();
  v12 = swift_getKeyPath();
  v13 = *(sub_10000F974(&qword_1004A11D0, &unk_1003D54E0) + 272);

  a1[12] = v13(v12, v4);
  v14 = swift_getKeyPath();
  v15 = sub_10000F974(&unk_1004A72D0, &qword_1003D5850);
  a1[13] = (*(v15 + 272))(v14, v4);
  sub_10000F974(&qword_1004A9388, &qword_1003DCED0);
  swift_getKeyPath();
  a1[14] = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004A9390, &qword_1003DCF00);
  swift_getKeyPath();
  a1[15] = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004A9398, &qword_1003DCF08);
  swift_getKeyPath();
  a1[16] = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004A93A0, &qword_1003DCF10);
  swift_getKeyPath();
  a1[17] = MutableStateValue.__allocating_init(_:_:)();
  v16 = sub_10000F974(&qword_1004A93A8, &qword_1003DCF18);
  v17 = swift_getKeyPath();
  a1[18] = (*(v16 + 272))(v17, v4);
  *(a1 + 19) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 23) = 0u;
  *(a1 + 25) = 0u;
  sub_1000336B4(v21, &v20);
  v18 = StateObserver.init(configuration:)();
  sub_10000FF00(v21);
  return v18;
}

uint64_t sub_1000F2D98(uint64_t *a1)
{
  v13[3] = &type metadata for Configurations.Default;
  v13[4] = &protocol witness table for Configurations.Default;
  sub_10000F974(&qword_1004A6AF8, &qword_1003DA500);
  swift_getKeyPath();
  a1[8] = MutableStateBinding.__allocating_init(_:_:)();
  v2 = sub_10000F974(&qword_1004A6B00, &qword_1003DA530);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v2 + 272);
  swift_retain_n();
  a1[9] = v5(KeyPath, v4);
  v6 = swift_getKeyPath();
  v7 = sub_10000F974(&qword_1004A8770, &qword_1003DCD10);
  a1[10] = (*(v7 + 272))(v6, v4);
  v8 = swift_getKeyPath();
  v9 = sub_10000F974(&unk_1004A72E0, &qword_1003DCDF0);
  a1[11] = (*(v9 + 272))(v8, v4);
  sub_1000336B4(v13, &v12);
  v10 = StateObserver.init(configuration:)();
  sub_10000FF00(v13);
  return v10;
}

uint64_t sub_1000F2F8C(uint64_t *a1)
{
  v13[3] = &type metadata for Configurations.Default;
  v13[4] = &protocol witness table for Configurations.Default;
  a1[8] = _swiftEmptyArrayStorage;
  sub_10000F974(&qword_1004A93D0, &qword_1003DCFD0);
  swift_getKeyPath();
  a1[9] = MutableStateValue.__allocating_init(_:_:)();
  a1[10] = _swiftEmptyDictionarySingleton;
  type metadata accessor for WorldLine();
  a1[11] = OrderedDictionary.init()();
  a1[12] = v2;
  a1[13] = v3;
  v12 = _swiftEmptyDictionarySingleton;
  sub_10000F974(&qword_1004A93D8, &qword_1003DCFD8);
  swift_allocObject();
  a1[14] = Synchronized.init(wrappedValue:)();
  KeyPath = swift_getKeyPath();
  v5 = sub_10000F974(&qword_1004A8950, &qword_1003DC580);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v6 = qword_1004D5058;
  v7 = *(v5 + 272);
  swift_retain_n();
  a1[15] = v7(KeyPath, v6);
  a1[16] = _swiftEmptyArrayStorage;
  sub_10000F974(&qword_1004A93E0, &qword_1003DD010);
  swift_getKeyPath();
  a1[17] = MutableStateValue.__allocating_init(_:_:)();
  v8 = swift_getKeyPath();
  v9 = sub_10000F974(&qword_1004A1200, &unk_1003D5600);
  a1[18] = (*(v9 + 272))(v8, v6);
  *(a1 + 152) = 1;
  sub_1000336B4(v13, &v12);
  v10 = StateObserver.init(configuration:)();
  sub_10000FF00(v13);
  return v10;
}

void sub_1000F31E4()
{
  static DefaultsManager.registerDefaults()();
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  Defaults.resetDefaultSettingsOnStart.unsafeMutableAddressor();

  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    static DefaultsManager.reset()();
  }

  v4 = [v0 standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  [v4 setBool:1 forKey:v5];

  v6 = [v0 standardUserDefaults];

  v7 = String._bridgeToObjectiveC()();

  [v6 setBool:0 forKey:v7];
}

uint64_t sub_1000F3358()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F3398()
{

  return _swift_deallocObject(v0, 25, 7);
}

double sub_1000F33E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1000F33FC(unint64_t result)
{
  if (result >= 4)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_1000F340C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000F346C()
{
  v0 = sub_10000F974(&unk_1004A3D90, &unk_1003DDD80);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = [objc_opt_self() standardUserDefaults];
  Defaults.dateLastUse.unsafeMutableAddressor();

  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (!*(&v18 + 1))
  {
    sub_100018F04(v19, &unk_1004A6970, &unk_1003D5710);
    (*(v4 + 56))(v2, 1, 1, v3);
    goto LABEL_10;
  }

  v13 = swift_dynamicCast();
  (*(v4 + 56))(v2, v13 ^ 1u, 1, v3);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
LABEL_10:
    sub_100018F04(v2, &unk_1004A3D90, &unk_1003DDD80);
    return 0;
  }

  (*(v4 + 32))(v9, v2, v3);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v14 = *(v4 + 8);
  v14(v6, v3);
  if (qword_1004A0260 != -1)
  {
    swift_once();
  }

  v15._object = 0x8000000100406F80;
  v15._countAndFlagsBits = 0xD000000000000023;
  Log.default(_:isPrivate:)(v15, 0);
  v14(v9, v3);
  return 1;
}

uint64_t sub_1000F37F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F3878()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F38B0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 1));
  *a2 = result & 1;
  a2[1] = BYTE1(result) & 1;
  return result;
}

unint64_t sub_1000F38F4()
{
  result = qword_1004A6F80;
  if (!qword_1004A6F80)
  {
    sub_100018630(255, &qword_1004A3F00, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6F80);
  }

  return result;
}

void sub_1000F395C(_BYTE *a1)
{
  v2 = a1[1];
  v3 = (v1 + qword_1004A90C0);
  *v3 = *a1;
  v3[1] = v2;
  if (*(v1 + 248) == 1)
  {
    sub_1000F2424(0);
  }
}

id sub_1000F39A4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 kPersonHeightDebugViewEnabled];
  *a2 = result;
  return result;
}

void sub_1000F3A00()
{
  if (*(v0 + 248) == 1)
  {
    sub_1000F2424(0);
  }
}

uint64_t sub_1000F3AB4(void *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1000A527C(a1, v3);
  v6 = __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_1000F4788(v8, v2, v3, v4);
  sub_10000FF00(a1);
  return v10;
}

double sub_1000F3BB8()
{
  v1 = *(**(v0 + 184) + 200);

  v3 = v1(v2);

  v7 = sub_1000F4AA0;
  v8 = v0;
  v4 = *(*v3 + 296);

  v4(sub_1000F4AA8, v6);

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  return result;
}

double sub_1000F3D30(unsigned __int8 a1, uint64_t a2)
{
  if (a1 >= 2u)
  {
    v8[8] = v2;
    v8[9] = v3;
    v4 = *(**(a2 + 168) + 400);

    v5 = v4(v8);
    *(v6 + 16) = _swiftEmptyArrayStorage;

    v5(v8, 0);
  }

  return result;
}

double sub_1000F3DE0(uint64_t a1)
{
  v2 = v1;
  if (a1 == 0x8000000000000010)
  {
    v3 = *(**(v1 + 152) + 144);

    v3(v27, v4);

    v5 = v27[0];
    v6 = v27[1];

    if (v6)
    {
      v7 = *((swift_isaMask & *v6) + 0x2C0);
      v8 = *v7();
      (*(v8 + 368))();

      if (simd_float4x4.isAlmostHorizontal(marginInDegrees:)(10.0) && (*((swift_isaMask & *v6) + 0x2F0))() < 3 && (v9 = v7(), *&v10 = (*(*v9 + 368))(v9), v25 = v11, v26 = v10, v23 = v13, v24 = v12, v14 = , v28 = 0, *(v2 + 80) = v26, *(v2 + 96) = v25, *(v2 + 112) = v24, *(v2 + 128) = v23, *(v2 + 144) = 0, (v15 = sub_1000F4384(v14)) != 0))
      {
        v16 = v15;
        swift_beginAccess();
        *(v2 + 64) = _swiftEmptyArrayStorage;

        swift_beginAccess();
        v17 = v16;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v2 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }

      else
      {
      }
    }
  }

  else
  {
    swift_beginAccess();
    *(v1 + 64) = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  v18 = *(v2 + 64);
  v19 = *(**(v2 + 168) + 400);

  v20 = v19(v27);
  *(v21 + 16) = v18;

  v20(v27, 0);

  return result;
}

void sub_1000F4158(__n128 *a1)
{
  v2 = v1;
  v3 = *(v1 + 200);
  v4 = *(v1 + 204);
  v5 = a1[9].n128_u8[0];
  if (v5)
  {
    if (v4)
    {
      return;
    }

    v6 = 0;
  }

  else
  {
    simd_float4x4.position.getter();
    if ((v4 & 1) == 0 && vabds_f32(v3, v7) <= 0.00000011921)
    {
      return;
    }

    simd_float4x4.position.getter();
    v6 = v8;
  }

  *(v2 + 200) = v6;
  *(v2 + 204) = v5 & 1;
  swift_beginAccess();
  v9 = *(v2 + 64);
  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10 < 1)
    {
      return;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 < 1)
    {
      return;
    }
  }

  if ((*(v2 + 144) & 1) == 0)
  {
    v11 = sub_1000F4384(v10);
    if (v11)
    {
      v12 = v11;
      *(v2 + 64) = _swiftEmptyArrayStorage;

      swift_beginAccess();
      v13 = v12;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v2 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = *(v2 + 64);
      swift_endAccess();
      v15 = *(**(v2 + 168) + 400);

      v16 = v15(v18);
      *(v17 + 16) = v14;

      v16(v18, 0);
    }
  }
}

void *sub_1000F4384(uint64_t a1)
{
  if (*(v1 + 144))
  {
    return 0;
  }

  v3 = 10.0;
  if ((*(v1 + 204) & 1) == 0)
  {
    v4 = *(v1 + 200);
    simd_float4x4.position.getter();
    v3 = v4 - v5;
  }

  *(v1 + 212) = v3;
  simd_float4x4.position.getter();
  SIMD3<>.up.unsafeMutableAddressor();
  simd_float4x4.translated(to:)();
  v6 = objc_allocWithZone(type metadata accessor for WorldLineGuide());
  LOBYTE(v16) = 1;
  v2 = WorldLineGuide.init(guideType:end1:end2:primarySegmentEnd1:primarySegmentEnd2:backingPlanes:anchorState:)();
  v7 = *(**(v1 + 192) + 144);

  v7(__src, v8);

  memcpy(__dst, __src, sizeof(__dst));
  v9 = sub_10008D4F0();
  sub_100013C4C(__dst);
  if (v9)
  {
    v10 = [v9 camera];

    [v10 transform];
    v19 = v12;
    v20 = v11;
    v17 = v14;
    v18 = v13;

    if (qword_1004A0350 != -1)
    {
      swift_once();
    }

    sub_1001248D0(v2, v20, v19, v18, v17);
  }

  return v2;
}

double sub_1000F45D0()
{

  return result;
}

void *sub_1000F4628()
{
  v0 = StateObserver.deinit();

  return v0;
}

uint64_t sub_1000F4688()
{
  sub_1000F4628();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VerticalGuidesInstrument(uint64_t a1)
{
  result = qword_1004A9410;
  if (!qword_1004A9410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F4788(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v30[3] = a3;
  v30[4] = a4;
  v7 = sub_1000315D4(v30);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  a2[8] = _swiftEmptyArrayStorage;
  v31 = 1;
  *(a2 + 5) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 7) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 144) = 1;
  KeyPath = swift_getKeyPath();
  v9 = sub_10000F974(&qword_1004A11D0, &unk_1003D54E0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v10 = qword_1004D5058;
  v11 = *(v9 + 272);
  swift_retain_n();
  a2[19] = v11(KeyPath, v10);
  v12 = sub_10000F974(&qword_1004A11D8, &qword_1003DD120);
  v13 = swift_getKeyPath();
  v14 = *(v12 + 272);

  a2[20] = v14(v13, v10);
  sub_10000F974(&qword_1004A8968, &qword_1003DD150);
  swift_getKeyPath();
  a2[21] = MutableStateValue.__allocating_init(_:_:)();
  v15 = sub_10000F974(&qword_1004A8970, &qword_1003DC620);
  v16 = swift_getKeyPath();
  v17 = *(v15 + 272);

  a2[22] = v17(v16, v10);
  v18 = swift_getKeyPath();
  v19 = sub_10000F974(&qword_1004A11F8, &qword_1003D55D0);
  a2[23] = (*(v19 + 272))(v18, v10);
  v20 = swift_getKeyPath();
  v21 = sub_10000F974(&qword_1004A1200, &unk_1003D5600);
  a2[24] = (*(v21 + 272))(v20, v10);
  *(a2 + 50) = 0;
  *(a2 + 204) = 1;
  __asm { FMOV            V0.2S, #10.0 }

  a2[26] = _D0;
  sub_1000336B4(v30, &v29);
  v27 = StateObserver.init(configuration:)();
  sub_10000FF00(v30);
  return v27;
}

void sub_1000F4AD8(uint64_t a1)
{
  v1 = *(a1 + 112);
  v5[6] = *(a1 + 96);
  v5[7] = v1;
  v6[0] = *(a1 + 128);
  *(v6 + 9) = *(a1 + 137);
  v2 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v2;
  v3 = *(a1 + 80);
  v5[4] = *(a1 + 64);
  v5[5] = v3;
  v4 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v4;
  sub_1000F4158(v5);
}

uint64_t sub_1000F4B48(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1000F4C70(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000F4D4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  sub_1000A527C(a1, *(a1 + 24));
  sub_10000F974(a3, a4);
  sub_10001D47C(a5, a3, a4, &protocol conformance descriptor for MeasurementEvent<A>);
  return dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
}

void sub_1000F4E00(ARFrame a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v62 = *(v8 - 8);
  __chkstk_darwin(v8);
  v61 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004D9B4();
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_4;
  }

  MeasureCore.shared.unsafeMutableAddressor();

  MeasureCore.didUpdate(with:)(a1);

  if (![objc_opt_self() jasperAvailable])
  {
    goto LABEL_6;
  }

  if (qword_1004A0180 != -1)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (!*(&xmmword_1004D4AB8 + 1))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v15 = *(&xmmword_1004D4AB8 + 1);
  v16 = sub_1001CC738();

  OverlayMetalView.didUpdate(frame:)(a1);
LABEL_6:

  Synchronized.wrappedValue.getter();

  if (aBlock != 1)
  {
    return;
  }

  v56 = v7;
  v17 = *(**(v2 + 128) + 144);

  v17(&aBlock, v18);

  v19 = aBlock;
  v20 = v65;

  v59 = v4;
  v60 = v2;
  v57 = v8;
  v58 = v5;
  if (v19)
  {
    if (v20)
    {
      v21 = *((swift_isaMask & *v20) + 0x2C0);
      v22 = v20;
      v23 = v19;
      v24 = v22;
      v25 = v23;
      v26 = v21();
      type metadata accessor for WorldAnchor();

      v27 = WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)();
      v28 = *((swift_isaMask & *v25) + 0x200);

      v28(v29);
      v30 = objc_allocWithZone(type metadata accessor for ScreenPoint());
      v31 = ScreenPoint.init(_:)();
      (*((swift_isaMask & *v24) + 0x2F0))();
      v2 = v60;
      (*((swift_isaMask & *v24) + 0xD0))();
      v32 = objc_allocWithZone(type metadata accessor for WorldPoint());
      v55 = v27;
      v33 = WorldPoint.init(anchor:type:state:)();

      goto LABEL_13;
    }

    v35 = v19;
  }

  else
  {
    v34 = v20;
  }

  v26 = 0;
  v55 = 0;
  v33 = 0;
  v31 = 0;
LABEL_13:
  v36 = *(**(v2 + 128) + 200);

  v38 = v36(v37);

  v39 = swift_allocObject();
  *(v39 + 16) = v31;
  *(v39 + 24) = v33;
  v40 = *(*v38 + 280);
  v54 = v33;
  v53 = v31;
  v40(sub_100103884, v39);

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v41 = *(&xmmword_1004D4AE8 + 1);
  if (!*(&xmmword_1004D4AE8 + 1))
  {
    goto LABEL_21;
  }

  v52 = Contexts.PrivateQueue.init(_:)();
  v42 = swift_allocObject();
  v42[2] = v19;
  v42[3] = v20;
  v42[4] = v55;
  v42[5] = v26;
  v68 = nullsub_1;
  v69 = v42;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_100041180;
  v67 = &unk_10046E340;
  v43 = _Block_copy(&aBlock);

  v44 = v20;
  v45 = v19;
  v46 = v41;

  v51 = v26;
  v47 = v61;
  static DispatchQoS.unspecified.getter();
  v63 = _swiftEmptyArrayStorage;
  sub_1001030D4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
  v48 = v56;
  v49 = v59;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v50 = v52;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v43);

  (*(v58 + 8))(v48, v49);
  (*(v62 + 8))(v47, v57);

  LOBYTE(aBlock) = 0;

  Synchronized.wrappedValue.setter();
}

uint64_t sub_1000F564C()
{
  v0 = type metadata accessor for UUID();
  sub_10001D4FC(v0, qword_1004D4EA0);
  sub_10001D4C4(v0, qword_1004D4EA0);
  return UUID.init()();
}

uint64_t sub_1000F5698(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10000F974(&qword_1004A3FA8, &qword_1003D8280);
  swift_allocObject();
  *(v2 + 64) = Synchronized.init(wrappedValue:)();
  sub_10000F974(&qword_1004A97D0, &qword_1003DD440);
  swift_getKeyPath();
  *(v2 + 88) = MutableStateValue.__allocating_init(_:_:)();
  KeyPath = swift_getKeyPath();
  v7 = sub_10000F974(&qword_1004A7530, &unk_1003D58B0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v8 = qword_1004D5058;
  v9 = *(v7 + 272);
  swift_retain_n();
  *(v3 + 96) = v9(KeyPath, v8);
  sub_10000F974(&qword_1004A97D8, &qword_1003DD498);
  swift_getKeyPath();
  *(v3 + 104) = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004A97E0, &qword_1003DD4C8);
  swift_getKeyPath();
  *(v3 + 112) = MutableStateValue.__allocating_init(_:_:)();
  v10 = swift_getKeyPath();
  v11 = *(sub_10000F974(&unk_1004A72D0, &qword_1003D5850) + 272);

  *(v3 + 120) = v11(v10, v8);
  sub_10000F974(&qword_1004A97E8, &qword_1003DD520);
  swift_getKeyPath();
  *(v3 + 128) = MutableStateValue.__allocating_init(_:_:)();
  v12 = swift_getKeyPath();
  v13 = *(sub_10000F974(&unk_1004A3F30, &qword_1003DCC30) + 272);

  *(v3 + 136) = v13(v12, v8);
  v14 = swift_getKeyPath();
  v15 = *(sub_10000F974(&qword_1004A1200, &unk_1003D5600) + 272);

  *(v3 + 144) = v15(v14, v8);
  v16 = swift_getKeyPath();
  v17 = *(sub_10000F974(&unk_1004A3F40, &qword_1003D74C0) + 272);

  *(v3 + 152) = v17(v16, v8);
  v18 = sub_10000F974(&qword_1004A3F50, &qword_1003D8110);
  v19 = swift_getKeyPath();
  v20 = *(v18 + 272);

  *(v3 + 160) = v20(v19, v8);
  v21 = swift_getKeyPath();
  v22 = *(sub_10000F974(&unk_1004AC5F0, &qword_1003DD618) + 272);

  *(v3 + 168) = v22(v21, v8);
  v23 = swift_getKeyPath();
  v24 = *(sub_10000F974(&qword_1004A8950, &qword_1003DC580) + 272);

  *(v3 + 176) = v24(v23, v8);
  v25 = sub_10000F974(&qword_1004A93A8, &qword_1003DCF18);
  v26 = swift_getKeyPath();
  *(v3 + 184) = (*(v25 + 272))(v26, v8);
  v27 = swift_getKeyPath();
  v28 = sub_10000F974(&qword_1004A7DD0, &qword_1003DB7E8);
  *(v3 + 192) = (*(v28 + 272))(v27, v8);
  sub_10000F974(&qword_1004A97F0, &qword_1003DD698);
  swift_getKeyPath();
  *(v3 + 200) = MutableStateValue.__allocating_init(_:_:)();
  *(v3 + 208) = 0;
  *(v3 + 216) = 0u;
  v29 = matrix_identity_float4x4.columns[1];
  v30 = matrix_identity_float4x4.columns[2];
  v31 = matrix_identity_float4x4.columns[3];
  *(v3 + 240) = matrix_identity_float4x4.columns[0];
  *(v3 + 256) = v29;
  *(v3 + 272) = v30;
  *(v3 + 288) = v31;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0;
  *(v3 + 322) = 0;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 0u;
  *(v3 + 368) = 0u;
  *(v3 + 384) = 0u;
  *(v3 + 400) = 0u;
  *(v3 + 416) = 0u;
  *(v3 + 432) = 0u;
  *(v3 + 448) = 0;
  *(v3 + 456) = 0u;
  *(v3 + 472) = 1106247680;
  *(v3 + 480) = 0u;
  *(v3 + 496) = 0u;
  *(v3 + 512) = xmmword_1003D9060;
  v32 = [objc_opt_self() standardUserDefaults];
  Defaults.snapReticleToEdges.unsafeMutableAddressor();

  v33 = String._bridgeToObjectiveC()();

  LOBYTE(v8) = [v32 BOOLForKey:v33];

  *(v3 + 528) = v8;
  *(v3 + 536) = 0x8000000000000000;
  *(v3 + 544) = 3;
  sub_10000F974(&qword_1004A3DC0, &qword_1003D7F38);
  swift_allocObject();
  *(v3 + 552) = PassthroughSubject.init()();
  *(v3 + 560) = 0u;
  *(v3 + 576) = 1;
  *(v3 + 72) = a2;
  *(v3 + 80) = a1;
  return StateObserver.init(configuration:)();
}

void sub_1000F5D04()
{
  v1 = v0;
  sub_10000F974(&qword_1004A3FA8, &qword_1003D8280);
  swift_allocObject();
  *(v0 + 64) = Synchronized.init(wrappedValue:)();
  sub_10000F974(&qword_1004A97D0, &qword_1003DD440);
  swift_getKeyPath();
  *(v0 + 88) = MutableStateValue.__allocating_init(_:_:)();
  KeyPath = swift_getKeyPath();
  v3 = sub_10000F974(&qword_1004A7530, &unk_1003D58B0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v3 + 272);
  swift_retain_n();
  *(v1 + 96) = v5(KeyPath, v4);
  sub_10000F974(&qword_1004A97D8, &qword_1003DD498);
  swift_getKeyPath();
  *(v1 + 104) = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004A97E0, &qword_1003DD4C8);
  swift_getKeyPath();
  *(v1 + 112) = MutableStateValue.__allocating_init(_:_:)();
  v6 = swift_getKeyPath();
  v7 = *(sub_10000F974(&unk_1004A72D0, &qword_1003D5850) + 272);

  *(v1 + 120) = v7(v6, v4);
  sub_10000F974(&qword_1004A97E8, &qword_1003DD520);
  swift_getKeyPath();
  *(v1 + 128) = MutableStateValue.__allocating_init(_:_:)();
  v8 = swift_getKeyPath();
  v9 = *(sub_10000F974(&unk_1004A3F30, &qword_1003DCC30) + 272);

  *(v1 + 136) = v9(v8, v4);
  v10 = swift_getKeyPath();
  v11 = *(sub_10000F974(&qword_1004A1200, &unk_1003D5600) + 272);

  *(v1 + 144) = v11(v10, v4);
  v12 = swift_getKeyPath();
  v13 = *(sub_10000F974(&unk_1004A3F40, &qword_1003D74C0) + 272);

  *(v1 + 152) = v13(v12, v4);
  v14 = sub_10000F974(&qword_1004A3F50, &qword_1003D8110);
  v15 = swift_getKeyPath();
  v16 = *(v14 + 272);

  *(v1 + 160) = v16(v15, v4);
  v17 = swift_getKeyPath();
  v18 = *(sub_10000F974(&unk_1004AC5F0, &qword_1003DD618) + 272);

  *(v1 + 168) = v18(v17, v4);
  v19 = swift_getKeyPath();
  v20 = *(sub_10000F974(&qword_1004A8950, &qword_1003DC580) + 272);

  *(v1 + 176) = v20(v19, v4);
  v21 = sub_10000F974(&qword_1004A93A8, &qword_1003DCF18);
  v22 = swift_getKeyPath();
  *(v1 + 184) = (*(v21 + 272))(v22, v4);
  v23 = swift_getKeyPath();
  v24 = sub_10000F974(&qword_1004A7DD0, &qword_1003DB7E8);
  *(v1 + 192) = (*(v24 + 272))(v23, v4);
  sub_10000F974(&qword_1004A97F0, &qword_1003DD698);
  swift_getKeyPath();
  *(v1 + 200) = MutableStateValue.__allocating_init(_:_:)();
  *(v1 + 208) = 0;
  *(v1 + 216) = 0u;
  v25 = matrix_identity_float4x4.columns[1];
  v26 = matrix_identity_float4x4.columns[2];
  v27 = matrix_identity_float4x4.columns[3];
  *(v1 + 240) = matrix_identity_float4x4.columns[0];
  *(v1 + 256) = v25;
  *(v1 + 272) = v26;
  *(v1 + 288) = v27;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0;
  *(v1 + 322) = 0;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 0u;
  *(v1 + 384) = 0u;
  *(v1 + 400) = 0u;
  *(v1 + 416) = 0u;
  *(v1 + 432) = 0u;
  *(v1 + 448) = 0;
  *(v1 + 456) = 0u;
  *(v1 + 472) = 1106247680;
  *(v1 + 480) = 0u;
  *(v1 + 496) = 0u;
  *(v1 + 512) = xmmword_1003D9060;
  v28 = [objc_opt_self() standardUserDefaults];
  Defaults.snapReticleToEdges.unsafeMutableAddressor();

  v29 = String._bridgeToObjectiveC()();

  LOBYTE(v4) = [v28 BOOLForKey:v29];

  *(v1 + 528) = v4;
  *(v1 + 536) = 0x8000000000000000;
  *(v1 + 544) = 3;
  sub_10000F974(&qword_1004A3DC0, &qword_1003D7F38);
  swift_allocObject();
  *(v1 + 552) = PassthroughSubject.init()();
  *(v1 + 560) = 0u;
  *(v1 + 576) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000F6340(void (*a1)(void, __n128), uint64_t a2, uint64_t a3, int a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 0xFE) == 2)
  {
    goto LABEL_6;
  }

  v27 = a2;
  if (qword_1004A0180 != -1)
  {
    v21 = v14;
    swift_once();
    v14 = v21;
  }

  v24 = v14;
  v25 = v9;
  v26 = a4;
  v28 = a1;
  v17 = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v23 = Contexts.PrivateQueue.init(_:)();
    aBlock[4] = sub_1000FC9F0;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_10046E138;
    v18 = _Block_copy(aBlock);
    v19 = v17;

    static DispatchQoS.unspecified.getter();
    v29 = _swiftEmptyArrayStorage;
    sub_1001030D4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v23;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v25 + 8))(v11, v8);
    (*(v13 + 8))(v16, v24);

    a1 = v28;
    LOBYTE(a4) = v26;
LABEL_6:
    *(a3 + 544) = a4;
    LOBYTE(aBlock[0]) = 0;
    (a1)(aBlock);
    return;
  }

  __break(1u);
}

uint64_t sub_1000F669C(uint64_t a1)
{
  v1 = *(**(a1 + 144) + 144);

  v1(v4, v2);

  memcpy(__dst, v4, sizeof(__dst));
  sub_1000F673C(&off_100465140, __dst);
  return sub_100013C4C(__dst);
}

void sub_1000F673C(uint64_t a1, __n128 *a2)
{
  v3 = v2;
  v148 = a2;
  v5 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v5);
  v7 = (&v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v146 = (&v144 - v9);
  __chkstk_darwin(v10);
  v145 = (&v144 - v11);
  v12 = *(**(v2 + 120) + 144);

  v12(v150, v13);

  v14 = v150[3];
  v15 = v151;

  *(v2 + 464) = v14;
  *(v2 + 472) = v15;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return;
  }

  v17 = (a1 + 32);
  v147 = v5;
  while (1)
  {
    v20 = *v17++;
    v19 = v20;
    if (*(v3 + 544) <= 1u)
    {
      if (v19 != 9)
      {
        return;
      }

      goto LABEL_8;
    }

    if (v19 <= 6)
    {
      if (v19 != 4)
      {
        if (v19 != 6)
        {
          goto LABEL_5;
        }

        if (qword_1004A0188 != -1)
        {
          swift_once();
        }

        LOBYTE(v150[0]) = 1;

        Synchronized.wrappedValue.setter();

        v45 = SnapType.standard.unsafeMutableAddressor();
        v46 = v148;
        sub_1000F7A14(*v45, v148);
        sub_1000FAAC8();
        sub_1000FB540(v46);
        v47 = *(**(v3 + 88) + 144);

        v47(v150, v48);

        if ((v150[0] & 0x8000000000000000) != 0)
        {
          if (v150[0] == 0x8000000000000018)
          {
LABEL_81:
            LOBYTE(v150[0]) = 0;

            Synchronized.wrappedValue.setter();

            goto LABEL_5;
          }
        }

        else
        {
          sub_10001B360(v150[0]);
        }

        if (qword_1004A0850 != -1)
        {
          swift_once();
        }

        if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
        {
          goto LABEL_132;
        }

        SIMD2<>.init(_:)();
        *(v3 + 464) = v102;
        *(v3 + 472) = 1106247680;
        v103 = *(**(v3 + 120) + 200);

        v105 = v103(v104);

        v106 = *(*v105 + 280);

        v106(sub_100103904, v3);

        goto LABEL_81;
      }

      v94 = *(**(v3 + 88) + 144);

      v94(v150, v95);

      v96 = v150[0];
      if (v150[0] == 0x8000000000000018)
      {
        goto LABEL_5;
      }

      v97 = *(**(v3 + 88) + 144);

      v97(v150, v98);

      if ((v150[0] >> 62) <= 1)
      {
        sub_10001B360(v150[0]);
LABEL_99:
        if (qword_1004A0180 != -1)
        {
          swift_once();
        }

        if (!qword_1004D4AD0)
        {
          goto LABEL_133;
        }

        v127 = qword_1004D4AD0;
        sub_10001B360(v96);
        v128 = qword_1004ACA08;
        swift_beginAccess();
        v129 = v127 + v128;
        v130 = v145;
        sub_1001033BC(v129, v145, type metadata accessor for DebugSessionCoordinator.RecordReplayState);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v131 = *v130;
          v132 = sub_1000E0CE8();

          sub_100072394(1, 0, 0, 1);
          goto LABEL_5;
        }

LABEL_113:
        v18 = v130;
LABEL_4:
        sub_100103424(v18, type metadata accessor for DebugSessionCoordinator.RecordReplayState);
        goto LABEL_5;
      }

      v118 = __ROR8__(v150[0] ^ 0x8000000000000000, 3);
      if (v118 < 2)
      {
        v124 = v150[0];
        sub_100100CBC(v148);
        v125 = *(v3 + 104);
        LOBYTE(v150[0]) = 3;
        v126 = *(*v125 + 392);

        v126(v150);
        sub_10001B360(v124);
      }

      else
      {
        if (v118 - 3 < 2)
        {
          goto LABEL_99;
        }

        sub_1000FFB8C(v148);
        if (qword_1004A0350 != -1)
        {
          swift_once();
        }

        v119 = qword_1004D4F08;
        v120 = OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
        swift_beginAccess();
        *(v119 + v120) = *(v119 + v120) + 1.0;
        v121 = *(v3 + 104);
        LOBYTE(v150[0]) = 3;
        v122 = *(*v121 + 392);

        v122(v150);
      }

      goto LABEL_99;
    }

    if (v19 != 7)
    {
      break;
    }

    sub_1000FCCD8(1, v148);
    if (qword_1004A0850 != -1)
    {
      swift_once();
    }

    if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
    {
      goto LABEL_131;
    }

    SIMD2<>.init(_:)();
    *(v3 + 464) = v61;
    *(v3 + 472) = 1106247680;
    v62 = *(**(v3 + 120) + 200);

    v64 = v62(v63);

    v65 = *(*v64 + 280);

    v65(sub_100102FCC, v3);

LABEL_5:
    if (!--v16)
    {
      return;
    }
  }

  if (v19 == 8)
  {
    v66 = *(**(v3 + 88) + 144);

    v66(v150, v67);

    if ((v150[0] >> 62) <= 1)
    {
      sub_10001B360(v150[0]);
LABEL_48:
      v68 = *(**(v3 + 88) + 144);

      v68(v150, v69);

      v70 = v150[0];
      if (!(v150[0] >> 62) || v150[0] >> 62 == 2 && (v150[0] == 0x8000000000000008 || v150[0] == 0x8000000000000010))
      {
        v71 = *(v3 + 72);
        v72 = *(**(v71 + 72) + 144);

        v72(v150, v73);

        v149 = v150[0];

        sub_10000F974(&qword_1004A1648, &unk_1003D7F10);
        sub_10000F974(&qword_1004A1650, &unk_1003D5980);
        swift_dynamicCast();
        v74 = v150[0];
        if (v150[0] >> 62)
        {
          v75 = _CocoaArrayWrapper.endIndex.getter();
          if (v75)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v75 = *((v150[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v75)
          {
LABEL_54:
            v56 = __OFSUB__(v75, 1);
            v76 = v75 - 1;
            if (v56)
            {
              goto LABEL_124;
            }

            v144 = v71;
            if ((v74 & 0xC000000000000001) != 0)
            {
              v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if ((v76 & 0x8000000000000000) != 0)
              {
                goto LABEL_125;
              }

              if (v76 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_126;
              }

              v77 = *(v74 + 8 * v76 + 32);
            }

            v78 = v77;

            v80 = *((swift_isaMask & *v78) + 0x250);
            v81 = v80(v79);
            if ((v81 & 0xC000000000000001) != 0)
            {
              v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (!*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_127;
              }

              v82 = *(v81 + 32);
            }

            v83 = v82;

            sub_100102734(v78, v83);

            v85 = v80(v84);
            if ((v85 & 0xC000000000000001) != 0)
            {
              v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
              {
                goto LABEL_128;
              }

              v86 = *(v85 + 40);
            }

            v87 = v86;

            sub_100102734(v78, v87);

            v88 = *((swift_isaMask & *v78) + 0xB8);
            v89 = v78;
            v90 = v88(v89);
            v92 = v91;

            sub_100104964(v90, v92);

            v93 = *(v3 + 312);
            *(v3 + 312) = 0;

            sub_100105B08();
            sub_10001B360(v70);

LABEL_108:
            if (qword_1004A0180 != -1)
            {
              swift_once();
            }

            v134 = qword_1004D4AD0;
            if (!qword_1004D4AD0)
            {
              goto LABEL_5;
            }

            v135 = qword_1004ACA08;
            swift_beginAccess();
            v136 = v134 + v135;
            v130 = v146;
            sub_1001033BC(v136, v146, type metadata accessor for DebugSessionCoordinator.RecordReplayState);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v137 = *v130;
              v138 = v134;
              v39 = sub_1000E0CE8();

              v40 = 4;
              goto LABEL_17;
            }

            goto LABEL_113;
          }
        }
      }

      sub_10001B360(v70);
      goto LABEL_108;
    }

    if (v150[0] != 0x8000000000000010)
    {
      goto LABEL_48;
    }

    if (qword_1004A0188 != -1)
    {
      swift_once();
    }

    Synchronized.wrappedValue.getter();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = v150[0];
    v149 = v150[0];
    v110 = sub_10019C35C(v109);
    v112 = *(v108 + 16);
    v113 = (v111 & 1) == 0;
    v56 = __OFADD__(v112, v113);
    v114 = v112 + v113;
    if (v56)
    {
      goto LABEL_129;
    }

    v115 = v111;
    if (*(v108 + 24) >= v114)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v139 = v110;
        sub_1000BDC8C();
        v110 = v139;
        v123 = v149;
        if (v115)
        {
          goto LABEL_96;
        }

        goto LABEL_118;
      }
    }

    else
    {
      sub_1000B6BBC(v114, isUniquelyReferenced_nonNull_native);
      v110 = sub_10019C35C(v116);
      if ((v115 & 1) != (v117 & 1))
      {
        goto LABEL_134;
      }
    }

    v123 = v149;
    if (v115)
    {
LABEL_96:
      *(v123[7] + v110) = 1;
LABEL_120:
      v149 = v123;
      Synchronized.wrappedValue.setter();

      v142 = *(v3 + 88);
      v150[0] = 0x8000000000000008;
      v143 = *(*v142 + 392);

      v143(v150);

      goto LABEL_48;
    }

LABEL_118:
    v123[(v110 >> 6) + 8] |= 1 << v110;
    *(v123[6] + v110) = 7;
    *(v123[7] + v110) = 1;
    v140 = v123[2];
    v56 = __OFADD__(v140, 1);
    v141 = v140 + 1;
    if (v56)
    {
      goto LABEL_130;
    }

    v123[2] = v141;
    goto LABEL_120;
  }

  if (v19 != 9)
  {
    goto LABEL_5;
  }

LABEL_8:
  v21 = *(**(v3 + 88) + 144);

  v21(v150, v22);

  if ((v150[0] >> 62) <= 1)
  {
    sub_10001B360(v150[0]);
    goto LABEL_10;
  }

  if (v150[0] != 0x8000000000000010)
  {
LABEL_10:
    v23 = *(**(v3 + 88) + 144);

    v23(v150, v24);

    v25 = v150[0];
    if ((v150[0] & 0x8000000000000000) != 0)
    {
      if (v150[0] != 0x8000000000000010)
      {
        goto LABEL_12;
      }

      v41 = *(**(v3 + 88) + 144);

      v41(v150, v42);

      v25 = v150[0];
      if (!(v150[0] >> 62) || v150[0] >> 62 == 2 && (v150[0] == 0x8000000000000008 || v150[0] == 0x8000000000000010))
      {
        v44 = v150[0];
        sub_100102544(v43);
        v25 = v44;
      }
    }

    sub_10001B360(v25);
LABEL_12:
    v26 = *(v3 + 224);
    *(v3 + 224) = 0;

    v27 = *(v3 + 312);
    *(v3 + 312) = 0;

    sub_100104278();
    v28 = *(**(v3 + 128) + 400);

    v29 = v28(v150);
    v31 = *(v30 + 16);
    v32 = *(v30 + 24);
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;

    v29(v150, 0);

    v33 = *(v3 + 88);
    v150[0] = 0x8000000000000000;
    v34 = *(*v33 + 392);

    v34(v150);

    if (qword_1004A0180 != -1)
    {
      swift_once();
    }

    v35 = qword_1004D4AD0;
    if (!qword_1004D4AD0)
    {
      goto LABEL_5;
    }

    v36 = qword_1004ACA08;
    swift_beginAccess();
    sub_1001033BC(v35 + v36, v7, type metadata accessor for DebugSessionCoordinator.RecordReplayState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = *v7;
      v38 = v35;
      v39 = sub_1000E0CE8();

      v40 = 3;
LABEL_17:
      sub_100072394(v40, 0, 0, 1);

      goto LABEL_5;
    }

    v18 = v7;
    goto LABEL_4;
  }

  if (qword_1004A0188 != -1)
  {
    swift_once();
  }

  Synchronized.wrappedValue.getter();
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v50 = v150[0];
  v149 = v150[0];
  v52 = sub_10019C35C(v51);
  v54 = *(v50 + 16);
  v55 = (v53 & 1) == 0;
  v56 = __OFADD__(v54, v55);
  v57 = v54 + v55;
  if (!v56)
  {
    v58 = v53;
    if (*(v50 + 24) >= v57)
    {
      if ((v49 & 1) == 0)
      {
        v133 = v52;
        sub_1000BDC8C();
        v52 = v133;
      }
    }

    else
    {
      sub_1000B6BBC(v57, v49);
      v52 = sub_10019C35C(v59);
      if ((v58 & 1) != (v60 & 1))
      {
        goto LABEL_134;
      }
    }

    v99 = v149;
    if (v58)
    {
      *(*(v149 + 56) + v52) = 1;
    }

    else
    {
      *(v149 + 8 * (v52 >> 6) + 64) |= 1 << v52;
      *(v99[6] + v52) = 7;
      *(v99[7] + v52) = 1;
      v100 = v99[2];
      v56 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (v56)
      {
        goto LABEL_123;
      }

      v99[2] = v101;
    }

    v149 = v99;
    Synchronized.wrappedValue.setter();

    goto LABEL_10;
  }

  __break(1u);
LABEL_123:
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
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000F79C8(void **a1, void *a2, void *a3)
{
  v6 = *a1;
  v7 = a2;
  v8 = a3;

  *a1 = a2;
  a1[1] = a3;
}

uint64_t sub_1000F7A14(uint64_t a1, float32x4_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ARCamera.TrackingState.Reason();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v312 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v329.n128_u64[0] = &v312 - v11;
  v12 = type metadata accessor for ARCamera.TrackingState();
  __chkstk_darwin(v12 - 8);
  v14 = &v312 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SessionState(0);
  __chkstk_darwin(v15);
  v17 = &v312 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v331 = a2;
  v18 = sub_10008D4F0();
  if (!v18)
  {
    return v18 != 0;
  }

  v328 = a1;
  v330 = v18;

  v332 = v3;
  v19 = *(**(v3 + 136) + 144);

  v19(v20);

  sub_1001033BC(&v17[*(v15 + 20)], v14, &type metadata accessor for ARCamera.TrackingState);
  sub_100103424(v17, type metadata accessor for SessionState);
  v21 = (*(v7 + 48))(v14, 2, v6);
  if (!v21)
  {
    v22 = v329.n128_u64[0];
    (*(v7 + 32))(v329.n128_u64[0], v14, v6);
    (*(v7 + 16))(v9, v22, v6);
    v23 = (*(v7 + 88))(v9, v6);
    if (v23 != enum case for ARCamera.TrackingState.Reason.initializing(_:) && v23 != enum case for ARCamera.TrackingState.Reason.relocalizing(_:))
    {
      (*(v7 + 8))(v9, v6);
LABEL_35:
      sub_1000FCA10();
      (*(v7 + 8))(v22, v6);
      goto LABEL_173;
    }

    v24 = v332;
    if (v332[208])
    {
      goto LABEL_35;
    }

    v19 = *(v332 + 9);
    swift_beginAccess();
    v29 = *(v19 + 8);
    if (v29 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
      if (v15)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v15 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_24:
        if (v15 < 1)
        {
          __break(1u);
          goto LABEL_152;
        }

        for (i = 0; i != v15; ++i)
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v31 = *(v29 + 8 * i + 32);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v32 = *(v31 + 24);
            ObjectType = swift_getObjectType();
            (*(v32 + 120))(1, ObjectType, v32);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        v24 = v332;
        v22 = v329.n128_u64[0];
      }
    }

    *(v24 + 208) = 1;
    goto LABEL_35;
  }

  if (v21 == 1)
  {
    sub_1000FCA10();
    sub_100103424(v14, &type metadata accessor for ARCamera.TrackingState);
LABEL_173:
    v18 = v330;
    return v18 != 0;
  }

  v9 = v332;

  StateValue.wrappedValue.getter();

  if ((BYTE3(v379) & 1) == 0 && v9[208] == 1)
  {
    v24 = *(v9 + 9);
    swift_beginAccess();
    v6 = *(v24 + 64);
    if (v6 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
      if (v22)
      {
LABEL_12:
        if (v22 >= 1)
        {

          for (j = 0; j != v22; ++j)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v26 = *(v6 + 8 * j + 32);
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              v27 = *(v26 + 24);
              v28 = swift_getObjectType();
              (*(v27 + 120))(0, v28, v27);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          v9 = v332;
          goto LABEL_37;
        }

LABEL_152:
        __break(1u);
        goto LABEL_153;
      }
    }

    else
    {
      v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_12;
      }
    }

LABEL_37:
    v9[208] = 0;
  }

  v15 = v367;
  v22 = v365;
  v378 = 0;
  v34 = *(**(v9 + 16) + 144);

  v34(&v379, v35);

  v36 = *(&v379 + 1);
  v37 = v380;

  v323[0] = objc_opt_self();
  if ([v323[0] jasperAvailable])
  {
    sub_10004B268(v367);
    v374 = *&v367[96];
    v375 = *&v367[112];
    v376.n128_u8[0] = v367[128];
    v370 = *&v367[32];
    v371 = *&v367[48];
    v372 = *&v367[64];
    v373 = *&v367[80];
    v368 = *v367;
    v369 = *&v367[16];
    v376.n128_u64[1] = 0;
    v377 = _swiftEmptyArrayStorage;
    nullsub_1();
    v385 = v374;
    v386 = v375;
    v387 = v376;
    v388 = v377;
    v381 = v370;
    v382 = v371;
    v383 = v372;
    v384 = v373;
    v379 = v368;
    v380 = v369;
  }

  else
  {
    sub_100103484(&v379);
  }

  v374 = v385;
  v375 = v386;
  v376 = v387;
  v377 = v388;
  v370 = v381;
  v371 = v382;
  v372 = v383;
  v373 = v384;
  v368 = v379;
  v369 = v380;
  v38 = *(**(v9 + 19) + 144);

  v38(v367, v39);

  v433 = *&v367[64];
  v434 = *&v367[80];
  v435 = *&v367[96];
  v436 = v367[112];
  v429 = *v367;
  v430 = *&v367[16];
  v431 = *&v367[32];
  v432 = *&v367[48];
  v40 = sub_100077EAC();
  v324 = v37.n128_u64[1];
  v318.i32[0] = v40;
  if (v40)
  {
    goto LABEL_70;
  }

  v41 = v323[0];
  if ([v323[0] jasperAvailable])
  {
    v42 = *(**(v9 + 25) + 144);

    v42(v367, v43);

    v419 = *v367;
    v420 = *&v367[16];
    v421 = *&v367[32];
    v422 = *&v367[48];
    v44 = v367[128];
    v410[0] = *&v367[129];
    *(v410 + 15) = *&v367[144];
    *&v365[32] = *&v367[32];
    *&v365[48] = *&v367[48];
    *v365 = *v367;
    *&v365[16] = *&v367[16];
    v325 = *&v367[64];
    v326 = *&v367[80];
    *&v365[64] = *&v367[64];
    *&v365[80] = *&v367[80];
    v327 = *&v367[96];
    *&v365[96] = *&v367[96];
    *&v365[112] = *&v367[112];
    v329 = *&v367[112];
    v365[128] = v367[128];
    if (sub_10001376C(v365) == 1)
    {
      *v367 = v419;
      *&v367[16] = v420;
      *&v367[32] = v421;
      *&v367[48] = v422;
      *&v367[64] = v325;
      *&v367[80] = v326;
      *&v367[96] = v327;
      *&v367[112] = v329;
      v367[128] = v44;
      *&v367[129] = v410[0];
      *&v367[144] = *(v410 + 15);
      sub_100013BF8(v367);
    }

    else
    {
      *v367 = v419;
      *&v367[16] = v420;
      *&v367[32] = v421;
      *&v367[48] = v422;
      *&v367[64] = v325;
      *&v367[80] = v326;
      *&v367[96] = v327;
      *&v367[112] = v329;
      v367[128] = v44;
      *&v367[129] = v410[0];
      *&v367[144] = *(v410 + 15);
      sub_100013BF8(v367);
      if ((v44 & 1) == 0)
      {
        v45 = *(**(v9 + 25) + 144);

        v45(v352, v46);

        v47 = *v352;
        v398[0] = *&v352[104];
        v398[1] = *&v352[120];
        v399 = *&v352[136];
        v394 = *&v352[40];
        v395 = *&v352[56];
        v396 = *&v352[72];
        v397 = *&v352[88];
        v392 = *&v352[8];
        v393 = *&v352[24];
        *(&v363[5] + 8) = *&v352[88];
        *(&v363[1] + 8) = *&v352[24];
        *(&v363[4] + 8) = *&v352[72];
        *(&v363[6] + 8) = *&v352[104];
        *(&v363[7] + 1) = *(v398 + 9);
        *(v363 + 8) = *&v352[8];
        *(&v363[2] + 8) = *&v352[40];
        *(&v363[3] + 8) = *&v352[56];
        *&v363[0] = *v352;
        if (sub_10001376C(v363) == 1)
        {
          *&v352[88] = v397;
          *&v352[104] = v398[0];
          *&v352[120] = v398[1];
          *&v352[136] = v399;
          *&v352[24] = v393;
          *&v352[40] = v394;
          *&v352[56] = v395;
          *&v352[72] = v396;
          *v352 = v47;
          *&v352[8] = v392;
          sub_100013BF8(v352);
        }

        else
        {
          *&v352[88] = v397;
          *&v352[104] = v398[0];
          *&v352[120] = v398[1];
          *&v352[136] = v399;
          *&v352[24] = v393;
          *&v352[40] = v394;
          *&v352[56] = v395;
          *&v352[72] = v396;
          *v352 = v47;
          *&v352[8] = v392;
          v48 = v47;
          sub_100013BF8(v352);
          type metadata accessor for MeasureCamera();
          simd_float4x4.position.getter();
          static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
          v50 = vsub_f32(*v49.f32, *(v9 + 464));
          if (vaddv_f32(vmul_f32(v50, v50)) < 900.0)
          {
            LOBYTE(v417[0]) = 1;
            v424 = 0u;
            v425 = 0u;
            v426 = 0u;
            v427 = 0u;
            v428 = 1;
            v322 = v49;
            type metadata accessor for WorldAnchor();
            swift_allocObject();
            v51 = WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)();
            sub_1000FE3C4(v51, 8, 3, *v322.i64);
            sub_1000FE180(v9, &v389);
            v321 = v390;
            v322 = v389;
            v52 = v391;

            v339 = v374;
            v340 = v375;
            v341 = v376;
            v342 = v377;
            v335 = v370;
            v336 = v371;
            v337 = v372;
            v338 = v373;
            v333 = v368;
            v334 = v369;
            if (sub_1001034A4(&v333) == 1)
            {

              v53 = 1;
              goto LABEL_71;
            }

            LOBYTE(v412) = 0;
            LOBYTE(v415[0]) = v52;
            *&v343 = v48;
            v344 = v322;
            v345 = v321;
            v346.n128_u8[0] = v52;
            v347 = v325;
            v348 = v326;
            v349 = v327;
            v350 = v329;
            v351 = 0;
            nullsub_1();
            v359 = v374;
            v360 = v375;
            LOBYTE(v361) = v376.n128_u8[0];
            v355 = v370;
            v356 = v371;
            v357 = v372;
            v358 = v373;
            v353 = v368;
            v354 = v369;
            sub_100018F04(&v353, &qword_1004A1208, &qword_1003D6DF0);
            v374 = v349;
            v375 = v350;
            v376.n128_u8[0] = v351;
            v370 = v345;
            v371 = v346;
            v372 = v347;
            v373 = v348;
            v172 = v343;
            v171 = v344;
            goto LABEL_145;
          }
        }
      }
    }

    v41 = v323[0];
  }

  if (![v41 jasperAvailable])
  {
LABEL_70:
    v53 = 0;
    goto LABEL_71;
  }

  v54 = *(**(v9 + 25) + 144);

  v54(v367, v55);

  v56 = *v367;
  v398[0] = *&v367[104];
  v398[1] = *&v367[120];
  v399 = *&v367[136];
  v394 = *&v367[40];
  v395 = *&v367[56];
  v396 = *&v367[72];
  v397 = *&v367[88];
  v392 = *&v367[8];
  v393 = *&v367[24];
  *&v365[88] = *&v367[88];
  *&v365[24] = *&v367[24];
  *&v365[72] = *&v367[72];
  *&v365[104] = *&v367[104];
  *&v365[113] = *(v398 + 9);
  *&v365[8] = *&v367[8];
  *&v365[40] = *&v367[40];
  *&v365[56] = *&v367[56];
  *v365 = *v367;
  if (sub_10001376C(v365) == 1)
  {
    *&v367[88] = v397;
    *&v367[104] = v398[0];
    *&v367[120] = v398[1];
    *&v367[136] = v399;
    *&v367[24] = v393;
    *&v367[40] = v394;
    *&v367[56] = v395;
    *&v367[72] = v396;
    *v367 = v56;
    *&v367[8] = v392;
    sub_100013BF8(v367);
    goto LABEL_70;
  }

  *&v352[88] = v397;
  *&v352[104] = v398[0];
  *&v352[120] = v398[1];
  *&v352[136] = v399;
  *&v352[24] = v393;
  *&v352[40] = v394;
  *&v352[56] = v395;
  *&v352[72] = v396;
  *v352 = v56;
  *&v352[8] = v392;
  v313 = v56;
  sub_100013BF8(v352);
  v57 = 1;
  LOBYTE(v343) = 1;
  v424 = 0u;
  v425 = 0u;
  v426 = 0u;
  v427 = 0u;
  v317 = 0u;
  v428 = 1;
  v58 = *(**(v9 + 25) + 144);

  v58(&v333, v59);

  *&v367[96] = v339;
  *&v367[112] = v340;
  *&v367[128] = v341;
  *&v367[144] = v342;
  *&v367[32] = v335;
  *&v367[48] = v336;
  *&v367[64] = v337;
  *&v367[80] = v338;
  *v367 = v333;
  *&v367[16] = v334;
  v60 = v342;

  sub_100013BF8(v367);
  v61 = v60[1].n128_i64[0];
  if (!v61)
  {

    goto LABEL_70;
  }

  type metadata accessor for MeasureCamera();
  v62 = 0.0;
  v63 = v331[11];
  v321 = v331[12];
  v322 = v63;
  v64 = v60 + 5;
  v65 = 900.0;
  v66 = 1;
  v315 = 0u;
  v316 = 0u;
  v67 = v331[13];
  v319 = v331[14];
  v320 = v67;
  v314 = 0u;
  do
  {
    v68 = v64[-2];
    v69 = v64[-1];
    v70 = *v64;
    v329 = v64[-3];
    v326 = v69;
    v327 = v68;
    v325 = v70;
    simd_float4x4.position.getter();
    static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    v72 = vsub_f32(v71, *(v332 + 464));
    v73 = vaddv_f32(vmul_f32(v72, v72));
    if (v74 < 1.0 && v73 < v65)
    {
      v57 = 0;
      v66 = 0;
      v62 = *&v71;
      v316 = v327;
      v317 = v329;
      v314 = v325;
      v315 = v326;
      v65 = v73;
    }

    v64 += 4;
    --v61;
  }

  while (v61);

  if (v57)
  {

    v53 = 0;
    v9 = v332;
    goto LABEL_71;
  }

  v9 = v332;
  v76 = v313;
  if (v66)
  {

    goto LABEL_70;
  }

  type metadata accessor for WorldAnchor();
  swift_allocObject();
  v167 = WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)();
  sub_1000FE3C4(v167, 8, 3, v62);
  sub_1000FE180(v9, &v389);
  v327 = v390;
  v329 = v389;
  v168 = v391;

  v339 = v374;
  v340 = v375;
  v341 = v376;
  v342 = v377;
  v335 = v370;
  v336 = v371;
  v337 = v372;
  v338 = v373;
  v333 = v368;
  v334 = v369;
  if (sub_1001034A4(&v333) == 1)
  {

    v53 = 1;
    goto LABEL_71;
  }

  LOBYTE(v410[0]) = 0;
  LOBYTE(v419) = v168;
  *&v353 = v76;
  v354 = v329;
  v355 = v327;
  v356.n128_u8[0] = v168;
  v357 = v317;
  v358 = v316;
  v359 = v315;
  v360 = v314;
  LOBYTE(v361) = 0;
  nullsub_1();
  v363[6] = v374;
  v363[7] = v375;
  LOBYTE(v363[8]) = v376.n128_u8[0];
  v363[2] = v370;
  v363[3] = v371;
  v363[4] = v372;
  v363[5] = v373;
  v363[0] = v368;
  v363[1] = v369;
  sub_100018F04(v363, &qword_1004A1208, &qword_1003D6DF0);
  v374 = v359;
  v375 = v360;
  v376.n128_u8[0] = v361;
  v370 = v355;
  v371 = v356;
  v372 = v357;
  v373 = v358;
  v172 = v353;
  v171 = v354;
LABEL_145:
  v53 = 1;
  v368 = v172;
  v369 = v171;
LABEL_71:
  v77 = *(**(v9 + 22) + 144);

  v77(v367, v78);

  v79 = *&v367[8];

  v80 = *(**(v9 + 22) + 144);

  v80(v367, v81);

  v82 = *v367;

  *v367 = v79;
  sub_100103A50(v82);
  v83 = *v367;
  v84 = *(**(v9 + 22) + 144);

  v84(v367, v85);

  v86 = *&v367[16];

  *v367 = v83;
  sub_100103A50(v86);
  v87 = *v367;
  if (v53)
  {
    v9 = 0;
    v6 = 0;
    v329.n128_u64[0] = 0;
    LOBYTE(v88) = 1;
    v89 = v324;
    goto LABEL_163;
  }

  v89 = v324;
  if (v318.i8[0])
  {
    goto LABEL_103;
  }

  if (![v323[0] jasperAvailable])
  {
LABEL_86:
    if ((*SnapType.userPoint.unsafeMutableAddressor() & ~v328) == 0)
    {
      v108 = *(v9 + 464);
      v109 = *(v9 + 118);
      swift_beginAccess();

      sub_10008FA10(v110, v331, v108, v109);
      v6 = v111;
      v113 = v112;

      if (v6)
      {
        v327.i64[0] = v87;
        if (v89 == v6)
        {
          goto LABEL_159;
        }

        v329.n128_u64[0] = v113;
        v114 = *(**(v9 + 11) + 144);

        v114(v367, v115);

        if ((*v367 >> 62) > 1)
        {
          if (*v367 == 0x8000000000000010)
          {
            sub_100104098(v6);
          }
        }

        else
        {
          sub_10001B360(*v367);
        }

        sub_100104508(v6);
        v116 = *(v9 + 39);
        if (!v116)
        {
          goto LABEL_159;
        }

        v19 = &swift_isaMask;
        v7 = *((swift_isaMask & *v116) + 0x238);
        v9 = v116;
        v117 = (v7)();
        v24 = v117;
        if (!(v117 >> 62))
        {
          if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_94;
          }

          goto LABEL_154;
        }

LABEL_153:
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_94:
          if ((v24 & 0xC000000000000001) != 0)
          {
            v118 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_276;
            }

            v118 = *(v24 + 32);
          }

          v119 = v118;

          v121 = (*((*v19 & *v119) + 0x250))(v120);

          if (v121 >> 62)
          {
            v173 = _CocoaArrayWrapper.endIndex.getter();
            v122 = v329.n128_u64[0];
            if (v173)
            {
LABEL_99:
              if ((v121 & 0xC000000000000001) == 0)
              {
                if (!*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_278;
                }

                v123 = *(v121 + 32);
                goto LABEL_102;
              }

LABEL_276:
              v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_102:
              v124 = v123;

              sub_100104508(v124);

LABEL_158:
              v9 = v332;
              goto LABEL_159;
            }
          }

          else
          {
            v122 = v329.n128_u64[0];
            if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_99;
            }
          }

          goto LABEL_158;
        }

LABEL_154:

        v9 = v332;
LABEL_159:
        v174 = objc_allocWithZone(type metadata accessor for ScreenPoint());
        v175 = ScreenPoint.init(_:)();
        v176 = *(**(v9 + 16) + 400);
        v9 = v175;

        v177 = v6;
        v178 = v176(v367);
        v180 = *(v179 + 16);
        v181 = *(v179 + 24);
        *(v179 + 16) = v175;
        *(v179 + 24) = v6;

        v178(v367, 0);

        v89 = v324;
        if (v324)
        {
          v182 = *((swift_isaMask & *v324) + 0xD8);
          v183 = v324;
          v182(2);
        }

        v329.n128_u64[0] = 0;
        LOBYTE(v88) = 1;
        goto LABEL_162;
      }
    }

LABEL_103:
    if (v89)
    {
      v125 = *((swift_isaMask & *v89) + 0x2F0);
      v126 = v89;
      v125();

      if (!WorldPointType.isSnap()())
      {
        v127 = *((swift_isaMask & *v126) + 0xD8);
        v128 = v126;
        v127(0);

        v129 = *(v9 + 39);
        if (v129)
        {
          v130 = v129;
          sub_100104098(v130);

          v131 = *(v9 + 39);
          if (!v131)
          {
            __break(1u);
LABEL_280:
            __break(1u);
            goto LABEL_281;
          }

          v132 = v131;
          sub_100104508(v132);
        }

        v133 = *(**(v9 + 16) + 400);

        v134 = v133(v367);
        v136 = *(v135 + 16);
        v137 = *(v135 + 24);
        *(v135 + 16) = 0;
        *(v135 + 24) = 0;

        v134(v367, 0);
      }
    }

    if (qword_1004A03F8 != -1)
    {
      swift_once();
    }

    v22 = v365;
    if (byte_1004D4FC8 == 1)
    {
      v138 = *(**(v9 + 24) + 144);

      v138(v352, v139);

      *&v367[96] = *&v352[96];
      *&v367[112] = *&v352[112];
      *&v367[128] = *&v352[128];
      v367[144] = v352[144];
      *&v367[32] = *&v352[32];
      *&v367[48] = *&v352[48];
      *&v367[64] = *&v352[64];
      *&v367[80] = *&v352[80];
      *v367 = *v352;
      *&v367[16] = *&v352[16];
      sub_1000D1340(v367);
      if (v367[1] == 1)
      {
        v140 = *(**(v9 + 24) + 144);

        v140(v365, v141);

        *&v352[96] = *&v365[96];
        *&v352[112] = *&v365[112];
        *&v352[128] = *&v365[128];
        v352[144] = v366;
        *&v352[32] = *&v365[32];
        *&v352[48] = *&v365[48];
        *&v352[64] = *&v365[64];
        *&v352[80] = *&v365[80];
        *v352 = *v365;
        *&v352[16] = *&v365[16];
        v142 = *&v365[48];
        v143 = *&v365[48];
        sub_1000D1340(v352);
        if (v142)
        {
          v326.i64[0] = v143;
          v329.n128_u64[0] = v142;
          v327.i64[0] = v87;
          v144 = *(**(v9 + 24) + 144);

          v144(v363, v145);

          *&v365[96] = v363[6];
          *&v365[112] = v363[7];
          *&v365[128] = v363[8];
          v366 = v364;
          *&v365[32] = v363[2];
          *&v365[48] = v363[3];
          *&v365[64] = v363[4];
          *&v365[80] = v363[5];
          *v365 = v363[0];
          *&v365[16] = v363[1];
          sub_1000D1340(v365);
          if ((v365[128] & 1) == 0)
          {
            v325 = *&v365[64];
            v321 = *&v365[96];
            v322 = *&v365[80];
            v320 = *&v365[112];
            v146 = *(**(v9 + 24) + 144);

            v146(&v353, v147);

            v363[6] = v359;
            v363[7] = v360;
            v363[8] = v361;
            v364 = v362;
            v363[2] = v355;
            v363[3] = v356;
            v363[4] = v357;
            v363[5] = v358;
            v363[0] = v353;
            v363[1] = v354;
            sub_1000D1340(v363);
            if (v364 != 1)
            {
              v169 = *(&v363[8] + 1);
              LOBYTE(v88) = 1;
              LOBYTE(v343) = 1;
              v353 = 0u;
              v354 = 0u;
              v355 = 0u;
              v356 = 0u;
              v357.n128_u8[0] = 1;
              type metadata accessor for WorldAnchor();
              swift_allocObject();
              v170 = WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)();
              sub_1000FE3C4(v170, 7, 3, v169);

              v378 = v329.n128_u64[0];
              [v323[0] jasperAvailable];
              v9 = 0;
              v6 = 0;
              goto LABEL_162;
            }
          }

          v87 = v327.i64[0];
        }
      }
    }

    v148 = v323[0];
    if ([v323[0] jasperAvailable])
    {
      if (v318.i8[0])
      {
LABEL_133:
        LOBYTE(v88) = 0;
        goto LABEL_134;
      }

      v149 = SnapType.guideLine.unsafeMutableAddressor();
      v150 = v328;
      LODWORD(v88) = (*v149 & ~v328) == 0;
    }

    else
    {
      LODWORD(v88) = 0;
      if (v318.i8[0])
      {
        goto LABEL_134;
      }

      v150 = v328;
    }

    if ((*SnapType.userLine.unsafeMutableAddressor() & ~v150) == 0)
    {
      v151 = *(v9 + 464);
      v152 = *(v9 + 118);
      v153 = *(v9 + 9);
      swift_beginAccess();
      v154 = *(v153 + 88);
      v155 = *(v153 + 96);

      sub_10008FD20(v154, v155, &v343, v151, v152);

      v148 = v323[0];

      v156 = v343;
      if (v343)
      {
        v157 = v348.n128_f64[0];
        v329 = v347;
        v326 = v345;
        v327 = v346;
        v325 = v344;
        LOBYTE(v88) = 1;
        v367[0] = 1;
        v353 = 0u;
        v354 = 0u;
        v355 = 0u;
        v356 = 0u;
        v357.n128_u8[0] = 1;
        type metadata accessor for WorldAnchor();
        swift_allocObject();
        v158 = WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)();
        sub_1000FE3C4(v158, 0, 3, v157);

        v9 = 0;
        v6 = 0;
        v329.n128_u64[0] = v156;
        v378 = v156;
        goto LABEL_163;
      }
    }

    if (v88)
    {
      if ([v148 jasperAvailable])
      {
        sub_1000FEB6C(v331, &v353);
        v6 = v353;
        if (!v353)
        {
          LOBYTE(v88) = 0;
          v9 = 0;
          v329.n128_u64[0] = 0;
          goto LABEL_163;
        }

        v159 = v9;
        v327.i64[0] = v87;
        v160 = v358.n128_f64[0];
        v329 = v357;
        v325 = v355;
        v326 = v356;
        *v323 = v354;
        LOBYTE(v363[0]) = 1;
        v419 = 0u;
        v420 = 0u;
        v421 = 0u;
        v422 = 0u;
        v423 = 1;
        type metadata accessor for WorldAnchor();
        swift_allocObject();
        v161 = WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)();
        v162 = *((swift_isaMask & *v6) + 0x258);
        v163 = v6;
        v164 = v162();
        sub_100018F04(&v353, &qword_1004A97B8, &qword_1003DD430);
        if (v164 == 3)
        {
          v165 = 6;
        }

        else
        {
          v165 = 5;
        }

        sub_1000FE3C4(v161, v165, 3, v160);
        sub_1000FE180(v159, &v401);
        v326 = v402;
        v329 = v401;
        v166 = v403;

        *&v367[96] = v374;
        *&v367[112] = v375;
        *&v367[128] = v376;
        *&v367[144] = v377;
        *&v367[32] = v370;
        *&v367[48] = v371;
        *&v367[64] = v372;
        *&v367[80] = v373;
        *v367 = v368;
        *&v367[16] = v369;
        if (sub_1001034A4(v367) == 1)
        {
          sub_100018F04(&v353, &qword_1004A97B8, &qword_1003DD430);
          v9 = 0;
          v6 = 0;
          v329.n128_u64[0] = 0;
          LOBYTE(v88) = 1;
        }

        else
        {
          LOBYTE(v410[0]) = v166;
          *v365 = v163;
          *&v365[16] = v329;
          *&v365[32] = v326;
          v365[48] = v166;
          memset(&v365[64], 0, 64);
          v365[128] = 1;
          nullsub_1();
          *&v352[96] = v374;
          *&v352[112] = v375;
          v352[128] = v376.n128_u8[0];
          *&v352[32] = v370;
          *&v352[48] = v371;
          *&v352[64] = v372;
          *&v352[80] = v373;
          *v352 = v368;
          *&v352[16] = v369;
          sub_100018F04(v352, &qword_1004A1208, &qword_1003D6DF0);
          v9 = 0;
          v6 = 0;
          v329.n128_u64[0] = 0;
          v374 = *&v365[96];
          v375 = *&v365[112];
          v376.n128_u8[0] = v365[128];
          v370 = *&v365[32];
          v371 = *&v365[48];
          v372 = *&v365[64];
          v373 = *&v365[80];
          LOBYTE(v88) = 1;
          v368 = *v365;
          v369 = *&v365[16];
        }

        v89 = v324;
LABEL_162:
        v87 = v327.i64[0];
        goto LABEL_163;
      }

      goto LABEL_133;
    }

LABEL_134:
    v9 = 0;
    v6 = 0;
    v329.n128_u64[0] = 0;
    goto LABEL_163;
  }

  v90 = *(**(v9 + 25) + 144);

  v90(v367, v91);

  v92 = *v367;
  *&v365[96] = *&v367[104];
  *&v365[112] = *&v367[120];
  *&v365[128] = *&v367[136];
  *&v365[32] = *&v367[40];
  *&v365[48] = *&v367[56];
  *&v365[64] = *&v367[72];
  *&v365[80] = *&v367[88];
  *v365 = *&v367[8];
  *&v365[16] = *&v367[24];
  *(&v363[5] + 8) = *&v367[88];
  *(&v363[1] + 8) = *&v367[24];
  *(&v363[4] + 8) = *&v367[72];
  *(&v363[6] + 8) = *&v367[104];
  *(&v363[7] + 1) = *&v365[105];
  *(v363 + 8) = *&v367[8];
  *(&v363[2] + 8) = *&v367[40];
  *(&v363[3] + 8) = *&v367[56];
  *&v363[0] = *v367;
  if (sub_10001376C(v363) == 1)
  {
    *&v367[88] = *&v365[80];
    *&v367[104] = *&v365[96];
    *&v367[120] = *&v365[112];
    *&v367[136] = *&v365[128];
    *&v367[24] = *&v365[16];
    *&v367[40] = *&v365[32];
    *&v367[56] = *&v365[48];
    *&v367[72] = *&v365[64];
    *v367 = v92;
    *&v367[8] = *v365;
    sub_100013BF8(v367);
    goto LABEL_86;
  }

  *&v367[88] = *&v365[80];
  *&v367[104] = *&v365[96];
  *&v367[120] = *&v365[112];
  *&v367[136] = *&v365[128];
  *&v367[24] = *&v365[16];
  *&v367[40] = *&v365[32];
  *&v367[56] = *&v365[48];
  *&v367[72] = *&v365[64];
  *v367 = v92;
  *&v367[8] = *v365;
  v88 = v92;
  v93 = sub_100013BF8(v367);
  *v352 = v88;
  __chkstk_darwin(v93);
  v310 = v352;
  if ((sub_1000F4B48(sub_1001034BC, (&v312 - 4), v87) & 1) == 0 || (sub_1000FE730(v88, v331, &v392), v339 = v398[0], v340 = v398[1], v341 = v399, LOBYTE(v342) = v400, v335 = v394, v336 = v395, v337 = v396, v338 = v397, v333 = v392, v334 = v393, sub_100103514(&v333) == 1) || (v101 = vsub_f32(*(v9 + 464), *&v333), vaddv_f32(vmul_f32(v101, v101)) >= 900.0))
  {

    goto LABEL_86;
  }

  *v323 = v333;
  v329 = sub_100103530(v331, *&v333, v334, v335, v336, v337, v338, v339, v340, v94, v95, v96, v97, v98, v99, v100, v341);
  v326 = v103;
  v327 = v102;
  v325 = v104;
  LOBYTE(v410[0]) = 1;
  v419 = 0u;
  v420 = 0u;
  v421 = 0u;
  v422 = 0u;
  v423 = 1;
  type metadata accessor for WorldAnchor();
  swift_allocObject();
  v105 = WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)();
  if ((*((swift_isaMask & *v88) + 0x258))() == 3)
  {
    v106 = 6;
  }

  else
  {
    v106 = 5;
  }

  sub_1000FE3C4(v105, v106, 3, *v323);
  sub_1000FE180(v9, &v401);
  v327 = v402;
  v329 = v401;
  v107 = v403;

  *&v352[96] = v374;
  *&v352[112] = v375;
  *&v352[128] = v376;
  *&v352[144] = v377;
  *&v352[32] = v370;
  *&v352[48] = v371;
  *&v352[64] = v372;
  *&v352[80] = v373;
  *v352 = v368;
  *&v352[16] = v369;
  if (sub_1001034A4(v352) == 1)
  {

    v9 = 0;
    v6 = 0;
    v329.n128_u64[0] = 0;
    LOBYTE(v88) = 1;
  }

  else
  {
    LOBYTE(v417[0]) = v107;
    *&v343 = v88;
    v344 = v329;
    v345 = v327;
    v346.n128_u8[0] = v107;
    v347 = 0u;
    v348 = 0u;
    v349 = 0u;
    v350 = 0u;
    v351 = 1;
    nullsub_1();
    v359 = v374;
    v360 = v375;
    LOBYTE(v361) = v376.n128_u8[0];
    v355 = v370;
    v356 = v371;
    v357 = v372;
    v358 = v373;
    v353 = v368;
    v354 = v369;
    sub_100018F04(&v353, &qword_1004A1208, &qword_1003D6DF0);
    v9 = 0;
    v6 = 0;
    v329.n128_u64[0] = 0;
    v376.n128_u8[0] = v351;
    v374 = v349;
    v375 = v350;
    v370 = v345;
    v371 = v346;
    v372 = v347;
    v373 = v348;
    LOBYTE(v88) = 1;
    v368 = v343;
    v369 = v344;
  }

LABEL_163:
  v184 = v332;

  StateValue.wrappedValue.getter();

  if ((v367[3] & 1) != 0 || *(v184 + 544) != 3)
  {
    goto LABEL_168;
  }

  v185 = [objc_opt_self() processInfo];
  v186 = [v185 thermalState];

  if (v186 < 3)
  {
    v327.i64[0] = v87;
    v187 = *(**(v332 + 11) + 144);

    v187(v367, v188);

    if ((*v367 & 0x8000000000000000) != 0)
    {
      if (*v367 == 0x8000000000000008)
      {
LABEL_192:
        v221 = *(**(v332 + 16) + 144);

        v221(v367, v222);

        v223 = *&v367[16];
        if (v223)
        {
          (*((swift_isaMask & *v223) + 0x200))();

          CGPoint.init(_:)();
          v325.i64[0] = v224;
          v323[0] = v225;
        }

        else
        {
          v325.i64[0] = 0;
          v323[0] = 0;
        }

        v226 = v332;
        CGPoint.init(_:)();
        v228 = v227;
        v230 = v229;
        v231 = *(v226 + 80);

        v326.i64[0] = v231;
        sub_10004A05C(v363);

        v232 = v363[7];
        *(v22 + 96) = v363[6];
        *(v22 + 112) = v232;
        v365[128] = v363[8];
        v233 = v363[3];
        *(v22 + 32) = v363[2];
        *(v22 + 48) = v233;
        v234 = v363[5];
        *(v22 + 64) = v363[4];
        *(v22 + 80) = v234;
        v235 = v363[1];
        *v22 = v363[0];
        *(v22 + 16) = v235;
        if (sub_10001376C(v365) == 1)
        {

          v189 = v328;
          v89 = v324;
          if (v88)
          {
            goto LABEL_172;
          }

          goto LABEL_169;
        }

        v236 = *(v22 + 112);
        *&v352[96] = *(v22 + 96);
        *&v352[112] = v236;
        v352[128] = v365[128];
        v237 = *(v22 + 48);
        *&v352[32] = *(v22 + 32);
        *&v352[48] = v237;
        v238 = *(v22 + 80);
        *&v352[64] = *(v22 + 64);
        *&v352[80] = v238;
        v239 = *(v22 + 16);
        *v352 = *v22;
        *&v352[16] = v239;
        v322.i64[0] = *(v226 + 512);
        v240 = SnapType.worldCorner.unsafeMutableAddressor();
        v189 = v328;
        if ((*v240 & ~v328) != 0)
        {
          v321.i64[0] = 0;
          v244 = 0;
          v246 = 0;
          v248 = 2;
        }

        else
        {
          v241 = *(v226 + 496);
          v417[0] = *(v226 + 480);
          v417[1] = v241;
          v418 = *(v226 + 512);
          v242.n128_u64[1] = *(&v418 + 1);
          v242.n128_u64[0] = v228;
          sub_100078828(v325.i64[0], v323[0], v223 == 0, v417, v331, v242, v230);
          v244 = v243;
          v246 = v245;
          v248 = v247;
          v321.i64[0] = 3;
        }

        if ((*SnapType.worldEdge.unsafeMutableAddressor() & ~v189) != 0)
        {
          v265 = v246;
        }

        else
        {
          v265 = v246;
          if (v248 == 2)
          {
            v266 = *(v332 + 31);
            v415[0] = *(v332 + 30);
            v415[1] = v266;
            v416 = *(v332 + 32);
            v267.n128_u64[1] = *(&v416 + 1);
            v267.n128_u64[0] = v228;
            sub_100078C58(v325.i64[0], v323[0], v223 == 0, v415, v267, v230);
            v244 = v268;
            v265 = v269;
            v248 = v270;
            v321.i64[0] = 4;
          }
        }

        v271 = v332;
        v272 = *(v332 + 31);
        v412 = *(v332 + 30);
        v413 = v272;
        v414 = *(v332 + 32);
        v325.i64[0] = v244;
        v320.i64[0] = v265;
        LODWORD(v323[0]) = v248;
        sub_1000790B8(&v404);
        v273 = v405;
        v274 = v406;
        v275 = v407;
        v276 = v408;
        v277 = v409;
        *(v271 + 60) = v404;
        *(v271 + 61) = v273;
        v271[62] = v274;
        v271[63] = v275;
        *(v271 + 64) = v276;
        *(v271 + 65) = v277;
        if (v318.i8[0])
        {

          if ((v88 & 1) == 0)
          {
            goto LABEL_219;
          }

          goto LABEL_214;
        }

        if (v88)
        {

LABEL_214:
          v327.i32[0] = 1;
          v278 = v332;
LABEL_215:
          LOBYTE(v7) = v323[0];
          v279 = v325.i64[0];
          v280 = v320.i64[0];
          goto LABEL_220;
        }

        if (v332[528] != 1 || v276 == 2)
        {

LABEL_219:
          v279 = 0;
          v280 = 0;
          v327.i32[0] = 0;
          v278 = v332;
          *(v332 + 30) = 0u;
          *(v278 + 496) = 0u;
          *(v278 + 512) = xmmword_1003D9060;
          LOBYTE(v7) = 2;
LABEL_220:
          v323[0] = (v322.i8[0] & 0xFE);
          v281 = *(v278 + 216);

          v325.i64[0] = v279;
          sub_10004AB68(v279, v280, v7, v331, v281);

          if (v7 == 2)
          {
            if (v323[0] == 2)
            {
              sub_100018F04(v363, &qword_1004A33F0, &qword_1003D8DD0);
              goto LABEL_260;
            }

            if (qword_1004A02B0 != -1)
            {
              swift_once();
            }

            strcpy(v367, "Unsnapped ");
            v367[11] = 0;
            *&v367[12] = -369098752;
            if (v322.i8[0])
            {
              v289 = 0x72656E726F63;
            }

            else
            {
              v289 = 1701274725;
            }

            if (v322.i8[0])
            {
              v290 = 0xE600000000000000;
            }

            else
            {
              v290 = 0xE400000000000000;
            }

            v291 = v290;
            String.append(_:)(*&v289);

            v287 = *v367;
            v288 = *&v367[8];
            goto LABEL_241;
          }

          v22 = 1701274725;
          if (v323[0] == 2)
          {
LABEL_224:
            v122 = 0x72656E726F63;
            if (qword_1004A02B0 == -1)
            {
LABEL_225:
              v326.i64[0] = qword_1004D4E28;
              *v367 = 0;
              *&v367[8] = 0xE000000000000000;
              _StringGuts.grow(_:)(25);

              strcpy(v367, "Snapped to ");
              *&v367[12] = -352321536;
              if (v7)
              {
                v282 = v122;
              }

              else
              {
                v282 = v22;
              }

              if (v7)
              {
                v283 = 0xE600000000000000;
              }

              else
              {
                v283 = 0xE400000000000000;
              }

              v284 = v283;
              String.append(_:)(*&v282);

              v285._countAndFlagsBits = 0x6120746E696F7020;
              v285._object = 0xEA00000000002074;
              String.append(_:)(v285);
              v286._countAndFlagsBits = CGPoint.debugDescription.getter();
              String.append(_:)(v286);

              v287 = *v367;
              v288 = *&v367[8];
LABEL_241:
              Log.default(_:isPrivate:)(*&v287, 0);
              sub_100018F04(v363, &qword_1004A33F0, &qword_1003D8DD0);

LABEL_259:
              v189 = v328;
LABEL_260:
              v89 = v324;
              if (v327.i8[0])
              {
                goto LABEL_172;
              }

LABEL_169:
              v190 = v332;
              sub_1000FF9D0(v331);
              v191 = *(**(v190 + 128) + 144);

              v191(v367, v192);

              v193 = *&v367[8];
              v194 = *&v367[16];
              v195 = *&v367[24];

              if (v195)
              {
              }

              else
              {
                v201 = *(**(v190 + 88) + 144);

                v201(v367, v202);

                if (*v367 >> 62)
                {
                  v89 = v324;
                  if (*v367 >> 62 == 1)
                  {
                    sub_10001B360(*v367);
                    goto LABEL_172;
                  }

                  if (*v367 != 0x8000000000000010)
                  {
                    goto LABEL_172;
                  }

                  v208 = v332;
                  v203.i64[0] = *(v332 + 58);
                  v327 = v203;
                  Float.piDiv2.unsafeMutableAddressor();
                  static simd_float4x4.makeRotation(_:_:_:_:)();
                  v212 = v209;
                  v213 = v210;
                  v214 = v211;
                  v215 = *(v208 + 304);
                  if (v215)
                  {
                    v325 = v210;
                    v326 = v211;
                    *v323 = v209;
                    simd_float4x4.position.getter();
                    v322 = v216;
                    v217 = *((swift_isaMask & *v215) + 0x2B0);
                    v218 = v215;
                    v217();
                    simd_float4x4.position.getter();
                    v321 = v219;

                    v212 = *v323;
                    v213 = v325;
                    v214 = v326;
                    v220 = vsubq_f32(v322, v321);
                    v209 = vmulq_f32(v220, v220);
                    v209.f32[0] = sqrtf(v209.f32[2] + vaddv_f32(*v209.f32));
                  }

                  else
                  {
                    v209.i32[0] = 1050253722;
                  }

                  v317 = v209;
                  v249 = v331[15];
                  v325 = v331[16];
                  v326 = v249;
                  v250 = v331[17];
                  v322 = v331[18];
                  *v323 = v250;
                  v251 = v331[21];
                  v252 = v331[22];
                  v253 = v331[23];
                  v321 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v251, v212.f32[0]), v252, *v212.f32, 1), v253, v212, 2), xmmword_1003DD210, v212, 3);
                  v319 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v251, v214.f32[0]), v252, *v214.f32, 1), v253, v214, 2), xmmword_1003DD210, v214, 3);
                  v320 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v251, v213.f32[0]), v252, *v213.f32, 1), v253, v213, 2), xmmword_1003DD210, v213, 3);
                  type metadata accessor for MeasureCamera();
                  static MeasureCamera.unprojectPoint(_:viewProjectionInv:viewportSize:)();
                  v318 = v254;
                  static MeasureCamera.unprojectPoint(_:viewProjectionInv:viewportSize:)();
                  v256 = vsubq_f32(v255, v318);
                  v257 = vmulq_f32(v256, v256);
                  *&v258 = v257.f32[2] + vaddv_f32(*v257.f32);
                  *v257.f32 = vrsqrte_f32(v258);
                  *v257.f32 = vmul_f32(*v257.f32, vrsqrts_f32(v258, vmul_f32(*v257.f32, *v257.f32)));
                  v259 = vmulq_n_f32(v256, vmul_f32(*v257.f32, vrsqrts_f32(v258, vmul_f32(*v257.f32, *v257.f32))).f32[0]);
                  *v260.f32 = vadd_f32(*v318.f32, vmul_n_f32(*v259.f32, v317.n128_f32[0]));
                  v260.f32[2] = v318.f32[2] + vmuls_lane_f32(v317.n128_f32[0], v259, 2);
                  v260.i32[3] = 1.0;
                  v326 = v260;
                  v367[0] = 1;
                  memset(v410, 0, sizeof(v410));
                  v411 = 1;
                  type metadata accessor for WorldAnchor();
                  swift_allocObject();
                  v261 = WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)();
                  sub_1000FE3C4(v261, 0, 4, *v327.i64);
                  v262 = *(v208 + 312);
                  if (v262)
                  {
                    v263 = *((swift_isaMask & *v262) + 0xD8);
                    v264 = v262;
                    v263(4);
                  }

                  v189 = v328;
                }

                else
                {
                  sub_10001B360(*v367);
                }
              }

              v89 = v324;
LABEL_172:
              sub_1000FDB20(v332, &v378, v89, v331, v189, &v368);

              v196 = *(v15 + 272);
              *(v15 + 96) = *(v15 + 256);
              *(v15 + 112) = v196;
              *(v15 + 128) = *(v15 + 288);
              *&v367[144] = v377;
              v197 = *(v15 + 208);
              *(v15 + 32) = *(v15 + 192);
              *(v15 + 48) = v197;
              v198 = *(v15 + 240);
              *(v15 + 64) = *(v15 + 224);
              *(v15 + 80) = v198;
              v199 = *(v15 + 176);
              *v15 = *(v15 + 160);
              *(v15 + 16) = v199;
              sub_100018F04(v367, &qword_1004A97B0, &qword_1003DD428);
              goto LABEL_173;
            }

LABEL_278:
            swift_once();
            goto LABEL_225;
          }

          if (v7)
          {
            v292 = 0x72656E726F63;
          }

          else
          {
            v292 = 1701274725;
          }

          if (v7)
          {
            v293 = 0xE600000000000000;
          }

          else
          {
            v293 = 0xE400000000000000;
          }

          if (v322.i8[0])
          {
            v294 = 0x72656E726F63;
          }

          else
          {
            v294 = 1701274725;
          }

          if (v322.i8[0])
          {
            v295 = 0xE600000000000000;
          }

          else
          {
            v295 = 0xE400000000000000;
          }

          if (v292 == v294 && v293 == v295)
          {
          }

          else
          {
            v296 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v296 & 1) == 0)
            {
              goto LABEL_224;
            }
          }

          sub_100018F04(v363, &qword_1004A33F0, &qword_1003D8DD0);
          goto LABEL_259;
        }

        if (qword_1004A0180 != -1)
        {
          swift_once();
        }

        if (*(&xmmword_1004D4AB8 + 1))
        {
          v297 = *(&xmmword_1004D4AB8 + 1);

          v298 = *&v297[qword_1004AF960];
          if (v298)
          {
            v299 = v274;
            v300 = v275;
            v301 = OBJC_IVAR____TtC7Measure11ReticleView_reticleBoundsLayer;
            v302 = *&v298[OBJC_IVAR____TtC7Measure11ReticleView_reticleBoundsLayer];
            v303 = v298;
            [v302 convertPoint:0 fromLayer:{v299, v300}];
            v305 = v304;
            v307 = v306;
            v308 = *&v298[v301];
            LOBYTE(v302) = [v308 containsPoint:{v305, v307}];

            v189 = v328;
            if ((v302 & 1) == 0)
            {
              goto LABEL_219;
            }

            SIMD2<>.init(_:)();
            sub_1000FF0D4(v331, v367, v309);
            if (v367[8])
            {

              goto LABEL_219;
            }

            if (!*&v367[16])
            {
              goto LABEL_219;
            }

            if (!v367[32])
            {
              v278 = v332;
              sub_1000FE3C4(*&v367[16], v321.i64[0], *&v367[24], *v367);

              v327.i32[0] = 1;
              v189 = v328;
              goto LABEL_215;
            }
          }

          else
          {
          }

          v189 = v328;
          goto LABEL_219;
        }

        goto LABEL_280;
      }
    }

    else
    {
      sub_10001B360(*v367);
    }

    v204 = *(**(v332 + 11) + 144);

    v204(v367, v205);

    v206 = *v367;
    if ((*v367 >> 62) < 2)
    {

      sub_10001B360(v206);
      v189 = v328;
      if (v88)
      {
        goto LABEL_172;
      }

      goto LABEL_169;
    }

    v207 = __ROR8__(*v367 ^ 0x8000000000000000, 3);
    if (v207 > 1)
    {
      if (v207 != 2)
      {
        v189 = v328;
        goto LABEL_184;
      }

      goto LABEL_192;
    }

LABEL_168:

    v189 = v328;
    if (v88)
    {
      goto LABEL_172;
    }

    goto LABEL_169;
  }

  v189 = v328;
  if (v186 == 3)
  {
LABEL_184:

    if (v88)
    {
      goto LABEL_172;
    }

    goto LABEL_169;
  }

LABEL_281:
  v311 = 0;
  v310 = 102;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}