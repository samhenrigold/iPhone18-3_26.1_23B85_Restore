uint64_t sub_1005D6E90(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  sub_10000EA04(v7, &qword_1008E5C70, qword_1006F0480);
  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v8 = sub_1005D72B8;
  }

  else
  {
    v8 = sub_1005D7038;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1005D7038()
{
  super_class = v0[11].super_class;
  v2 = *(super_class + 2);
  if (v2)
  {
    v3 = v0[3].super_class;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = *(v3 + 2);
    v3 = (v3 + 16);
    v5 = super_class + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v18 = *(v3 + 7);
    v19 = v4;
    v17 = (v3 - 8);
    do
    {
      receiver = v0[4].receiver;
      v6 = v0[4].super_class;
      v8 = v0[3].receiver;
      v19(v6, v5, v8);
      v19(receiver, v6, v8);
      v9 = type metadata accessor for InferenceRecordBridge(0);
      v10 = objc_allocWithZone(v9);
      v19(&v10[OBJC_IVAR___CHInferenceRecordBridge_inferenceRecord], receiver, v8);
      v0[1].receiver = v10;
      v0[1].super_class = v9;
      objc_msgSendSuper2(v0 + 1, "init");
      v11 = *v17;
      (*v17)(receiver, v8);
      v11(v6, v8);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 += v18;
      --v2;
    }

    while (v2);
    (*(v0[10].receiver + 1))(v0[10].super_class, v0[9].super_class);
  }

  else
  {
    v13 = v0[10].receiver;
    v12 = v0[10].super_class;
    v14 = v0[9].super_class;

    v13[1](v12, v14);
  }

  v15 = v0->super_class;

  return v15(_swiftEmptyArrayStorage);
}

uint64_t sub_1005D72B8()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1005D7520(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1005D75E4;

  return sub_1005D6A50(v6);
}

uint64_t sub_1005D75E4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for InferenceRecordBridge(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v3 + 32);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1005D785C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v5 = *a3;
  v6 = (a4)(0, a2);
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_1005D7908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1005D799C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002BACC;

  return sub_1005D7520(v2, v3, v4);
}

uint64_t sub_1005D7A50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10002BBC0;

  return v6();
}

uint64_t sub_1005D7B38(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10002BACC;

  return v7();
}

uint64_t sub_1005D7C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10056CCD0(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000EA04(v11, &qword_1008E1760, &qword_1006D4490);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10000EA04(a3, &qword_1008E1760, &qword_1006D4490);

    return v21;
  }

LABEL_8:
  sub_10000EA04(a3, &qword_1008E1760, &qword_1006D4490);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1005D7F0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002BBC0;

  return sub_100281490(a1, v4);
}

uint64_t sub_1005D7FC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002BACC;

  return sub_100281490(a1, v4);
}

void *sub_1005D8214(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v46 = a5;
  v24 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v48 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v31 = result;
    v32 = [objc_opt_self() polylineWithPoints:a4 + 32 count:*(a4 + 16)];
    v44 = v32;
    sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
    v45 = static OS_dispatch_queue.main.getter();
    v33 = swift_allocObject();
    *(v33 + 16) = a2;
    *(v33 + 24) = v31;
    *(v33 + 32) = v32;
    *(v33 + 40) = a7;
    *(v33 + 48) = a8;
    *(v33 + 56) = a9;
    *(v33 + 64) = a10;
    *(v33 + 72) = a11;
    *(v33 + 80) = a12;
    *(v33 + 88) = a13;
    v34 = v46;
    *(v33 + 96) = a1;
    *(v33 + 104) = v34;
    *(v33 + 112) = a6;
    aBlock[4] = sub_1005DA704;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_100863138;
    v35 = _Block_copy(aBlock);
    v36 = v29;
    v37 = v47;
    v46 = v27;
    v38 = v35;
    swift_errorRetain();
    v39 = a1;

    v40 = v31;
    v41 = v44;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000261C4();
    sub_100140278(&unk_1008E7F50, &qword_1006D8190);
    sub_10002621C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v42 = v45;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v38);

    (*(v37 + 8))(v26, v24);
    return (*(v48 + 8))(v36, v46);
  }

  return result;
}

void sub_1005D85B4(uint64_t a1, double a2, double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8, uint64_t a9, void *a10, void *a11, void (*a12)(void))
{
  if (a1)
  {
    swift_errorRetain();
    v21 = static os_log_type_t.error.getter();
    v22 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, v21))
    {
      v23 = v22;
      v24 = swift_slowAlloc();
      v25 = a12;
      v26 = swift_slowAlloc();
      v39 = v26;
      *v24 = 136315138;
      swift_getErrorValue();
      v27 = Error.errorDescription.getter();
      v29 = sub_10000AFDC(v27, v28, &v39);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v21, "[routes] Error generating snapshot: %s. Rendering polyline without map.", v24, 0xCu);
      sub_100005A40(v26);
      a12 = v25;
    }

    v30 = sub_1005D932C(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a11)
  {
    v32 = a11;
    v33 = static os_log_type_t.info.getter();
    v34 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, v33))
    {
      v35 = v34;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v32;
      *v37 = a11;
      v38 = v32;
      _os_log_impl(&_mh_execute_header, v35, v33, "[routes] Received snapshot back from MKMapSnapshotter: %@", v36, 0xCu);
      sub_1001F3454(v37);
    }

    v30 = sub_1005D8D34(a10, v32, a2, a3, a4, a5, a6);
  }

  else
  {
    v30 = 0;
  }

  a12(v30);
}

void sub_1005D896C(uint64_t a1, double a2, double a3, float64_t a4, float64_t a5, float64_t a6, float64_t a7)
{
  v10 = *(a1 + 16);
  v11 = (a1 + 32);
  v12 = [objc_opt_self() polylineWithPoints:a1 + 32 count:v10];
  [v12 boundingMapRect];
  if (v15 == 0.0 || v16 == 0.0)
  {
    goto LABEL_30;
  }

  v17 = 0.0;
  v18 = &v11[2 * v10];
  v19 = 0.0;
  if (v10)
  {
    v19 = *(a1 + 40);
    if (*(v18 - 1) < v19)
    {
      v19 = *(v18 - 1);
    }
  }

  if (15.0 / a3 * v16 - (v19 - v14) >= 0.0)
  {
    v17 = 15.0 / a3 * v16 - (v19 - v14);
  }

  v20 = v17 * 1.5;
  v21 = 7.5 / a2 * v15;
  if (v10)
  {
    v22 = *v11;
    v23 = *(v18 - 2);
    if (v23 >= *v11)
    {
      v24 = *v11;
    }

    else
    {
      v24 = *(v18 - 2);
    }

    v25 = v21 - (v24 - v13);
    if (v25 < 0.0)
    {
      v25 = 0.0;
    }

    if (v22 <= v23)
    {
      v22 = *(v18 - 2);
    }

    v26 = v24 + -15.0;
  }

  else
  {
    v22 = 0.0;
    v25 = v21 - (0.0 - v13);
    if (v25 < 0.0)
    {
      v25 = 0.0;
    }

    v26 = -15.0;
  }

  v27 = v14 - v20;
  v28 = v16 + v20;
  v29 = v21 + v22 - (v13 + v15);
  if (v29 < 0.0)
  {
    v29 = 0.0;
  }

  v30 = v25 * 1.5;
  v31 = v29 * 1.5;
  if (v26 < v13)
  {
    v30 = v30 * 1.5;
  }

  v32 = v13 - v30;
  if (v15 + v32 < v22 + 15.0)
  {
    v31 = v31 * 1.5;
  }

  v33 = v15 + v30 + v31;
  v34.f64[0] = a4;
  v34.f64[1] = a5;
  v35.f64[0] = a6;
  v35.f64[1] = a7;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&UIEdgeInsetsZero.top, v34), vceqq_f64(*&UIEdgeInsetsZero.bottom, v35)))))
  {
    v36 = v15 + v30 + v31;
    MKMapRectInset(*(&v27 - 1), v33 * -0.05, v28 * -0.05);
  }

  else
  {
    if (a2 - a5 - a7 > 0.0 && a3 - a4 - a6 > 0.0)
    {
LABEL_30:

      return;
    }

    v37 = static os_log_type_t.error.getter();
    v38 = HKLogWorkouts;
    os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "[routes] invalid insets", 23, 2, _swiftEmptyArrayStorage);
  }
}

unint64_t sub_1005D8D34(void *a1, void *a2, double a3, double a4, double a5, double a6, double a7)
{
  v11 = *(v7 + OBJC_IVAR___CHWorkoutRouteMapGenerator_locationReadings);
  if (!v11)
  {
    return 0;
  }

  v17 = v11;
  v18 = [v17 allValidLocations];
  sub_1000059F8(0, &qword_1008E55D0, CLLocation_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_29;
    }
  }

  else if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v20 = *(v19 + 32);
  }

  v21 = v20;

  v8 = &selRef_initWithLayer_;
  [v21 coordinate];
  v9 = v22;
  v10 = v23;

  v24 = [v17 allValidLocations];
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v25 >> 62))
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_9;
    }

LABEL_29:

    return 0;
  }

  v26 = _CocoaArrayWrapper.endIndex.getter();
  if (!v26)
  {
    goto LABEL_29;
  }

LABEL_9:
  v27 = __OFSUB__(v26, 1);
  result = v26 - 1;
  if (v27)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if ((v25 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v29 = *(v25 + 8 * result + 32);
      goto LABEL_14;
    }

    __break(1u);
    return result;
  }

LABEL_33:
  v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
  v30 = v29;

  [v30 v8[122]];
  v66 = v32;
  v67 = v31;

  v33 = [a2 image];
  [v33 size];
  v35 = v34;
  v37 = v36;

  v38 = [objc_opt_self() mainScreen];
  [v38 scale];
  v40 = v39;

  v70.width = v35;
  v70.height = v37;
  UIGraphicsBeginImageContextWithOptions(v70, 0, v40);
  v41 = [a2 image];
  [v41 size];
  v43 = v42;

  v44 = [a2 image];
  [v44 size];
  v46 = v45;

  v47 = [a2 image];
  [v47 drawInRect:{0.0, 0.0, v43, v46}];

  v48 = UIGraphicsGetCurrentContext();
  if (!v48)
  {

    return 0;
  }

  v49 = v48;
  v50 = &selRef_currentItem;
  v51 = &selRef_localizedStringForDate_relativeToDate_;
  if ([v17 count] >= 2)
  {
    v52 = (*(*(v7 + OBJC_IVAR___CHWorkoutRouteMapGenerator_pathRendererClass) + 88))(a1, v17);
    __chkstk_darwin(v52);
    (*((swift_isaMask & *v53) + 0x78))(v49, sub_1005DA6C0, a4, a5, a6, a7, a3);
    v50 = &selRef_currentItem;

    CGContextStrokePath(v49);
    v54 = type metadata accessor for WorkoutEndLocationAnnotation();
    v55 = [objc_allocWithZone(v54) init];
    if (*(v7 + OBJC_IVAR___CHWorkoutRouteMapGenerator_isForDive) == 1)
    {
      v56 = [objc_allocWithZone(v54) init];
      v57 = [objc_allocWithZone(type metadata accessor for DivingLocationAnnotationView()) initWithAnnotation:v56 reuseIdentifier:0];
    }

    else
    {
      v57 = [objc_allocWithZone(type metadata accessor for WorkoutLocationAnnotationView()) initWithAnnotation:v55 reuseIdentifier:0];
    }

    v51 = &selRef_localizedStringForDate_relativeToDate_;

    [a2 pointForCoordinate:{v67, v66}];
    sub_1005DA5A8(v57, v49, v58, v59);
  }

  v60 = [objc_allocWithZone(type metadata accessor for WorkoutStartLocationAnnotation()) v50[463]];
  if (*(v7 + OBJC_IVAR___CHWorkoutRouteMapGenerator_isForDive) == 1)
  {
    v61 = [objc_allocWithZone(type metadata accessor for WorkoutEndLocationAnnotation()) v50[463]];
    v62 = [objc_allocWithZone(type metadata accessor for DivingLocationAnnotationView()) initWithAnnotation:v61 reuseIdentifier:0];
  }

  else
  {
    v62 = [objc_allocWithZone(type metadata accessor for WorkoutLocationAnnotationView()) initWithAnnotation:v60 reuseIdentifier:0];
  }

  [a2 v51[37]];
  sub_1005DA5A8(v62, v49, v63, v64);
  v65 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v65;
}

unint64_t sub_1005D932C(void *a1, double a2, double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8)
{
  v10 = *(v8 + OBJC_IVAR___CHWorkoutRouteMapGenerator_locationReadings);
  if (!v10)
  {
    return 0;
  }

  v18 = v10;
  v19 = [v18 allValidLocations];
  sub_1000059F8(0, &qword_1008E55D0, CLLocation_ptr);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_32;
    }
  }

  else if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_35;
    }

    v21 = *(v20 + 32);
  }

  v22 = v21;

  v9 = &selRef_initWithLayer_;
  [v22 coordinate];
  v24 = v23;
  v62.longitude = v25;

  v26 = [v18 allValidLocations];
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v27 >> 62))
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_9;
    }

LABEL_32:

    return 0;
  }

  v28 = _CocoaArrayWrapper.endIndex.getter();
  if (!v28)
  {
    goto LABEL_32;
  }

LABEL_9:
  v29 = __OFSUB__(v28, 1);
  result = v28 - 1;
  if (v29)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v62.latitude = v24;
  if ((v27 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v31 = *(v27 + 8 * result + 32);
      goto LABEL_14;
    }

    __break(1u);
    return result;
  }

LABEL_36:
  v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
  v32 = v31;

  [v32 v9[122]];
  v58 = v34;
  v60 = v33;

  v35 = [objc_opt_self() mainScreen];
  [v35 scale];
  v37 = v36;

  v63.width = a7;
  v63.height = a8;
  UIGraphicsBeginImageContextWithOptions(v63, 0, v37);
  v38 = UIGraphicsGetCurrentContext();
  if (!v38)
  {

    return 0;
  }

  v39 = v38;
  if (a7 / a8 < a5 / a6)
  {
    v40 = a7 / a5;
  }

  else
  {
    v40 = a8 / a6;
  }

  v41 = (a7 - v40 * a5) * 0.5;
  v42 = (a8 - v40 * a6) * 0.5;
  if ([v18 count] >= 2)
  {
    v43 = *(*(v8 + OBJC_IVAR___CHWorkoutRouteMapGenerator_pathRendererClass) + 88);
    v44 = v18;
    v45 = a1;
    v46 = v43();
    v47 = __chkstk_darwin([v45 boundingMapRect]);
    (*((swift_isaMask & *v46) + 0x78))(v39, sub_1005DA69C, v47);

    CGContextStrokePath(v39);
    v48 = type metadata accessor for WorkoutEndLocationAnnotation();
    v49 = [objc_allocWithZone(v48) init];
    if (*(v8 + OBJC_IVAR___CHWorkoutRouteMapGenerator_isForDive) == 1)
    {
      v50 = [objc_allocWithZone(v48) init];
      v51 = [objc_allocWithZone(type metadata accessor for DivingLocationAnnotationView()) initWithAnnotation:v50 reuseIdentifier:0];
    }

    else
    {
      v51 = [objc_allocWithZone(type metadata accessor for WorkoutLocationAnnotationView()) initWithAnnotation:v49 reuseIdentifier:0];
    }

    v64.latitude = v61;
    v64.longitude = v59;
    v52 = MKMapPointForCoordinate(v64);
    sub_1005DA5A8(v51, v39, v41 + v40 * (v52.x - a3), v42 + v40 * (v52.y - a4));
  }

  v53 = [objc_allocWithZone(type metadata accessor for WorkoutStartLocationAnnotation()) init];
  if (*(v8 + OBJC_IVAR___CHWorkoutRouteMapGenerator_isForDive) == 1)
  {
    v54 = [objc_allocWithZone(type metadata accessor for WorkoutEndLocationAnnotation()) init];
    v55 = [objc_allocWithZone(type metadata accessor for DivingLocationAnnotationView()) initWithAnnotation:v54 reuseIdentifier:0];
  }

  else
  {
    v55 = [objc_allocWithZone(type metadata accessor for WorkoutLocationAnnotationView()) initWithAnnotation:v53 reuseIdentifier:0];
  }

  v56 = MKMapPointForCoordinate(v62);
  sub_1005DA5A8(v55, v39, v41 + v40 * (v56.x - a3), v42 + v40 * (v56.y - a4));
  v57 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v57;
}

id sub_1005D98F4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorkoutRouteMapGenerator();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1005D9998(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, float64_t a7, float64_t a8, float64_t a9, float64_t a10)
{
  v64 = a6;
  v19 = type metadata accessor for DispatchQoS.QoSClass();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v23[2] = a3;
  v24 = *(a2 + OBJC_IVAR___CHWorkoutRouteMapGenerator_locationReadings);
  if (v24)
  {
    if (!*(a2 + OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSize + 16))
    {
      a4 = *(a2 + OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSize);
      a5 = *(a2 + OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSize + 8);
    }

    v25 = a3;
    v26 = v24;
    v27 = [v26 allValidLocations];
    sub_1000059F8(0, &qword_1008E55D0, CLLocation_ptr);
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v28 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v62 = a1;
    v63 = v26;
    v60 = v22;
    v61 = v20;
    if (v29)
    {
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10018609C(0, v29 & ~(v29 >> 63), 0);
      if (v29 < 0)
      {
        __break(1u);
        return;
      }

      v59 = v19;
      v65 = v23;
      v30 = 0;
      v31 = aBlock[0];
      do
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v32 = *(v28 + 8 * v30 + 32);
        }

        v33 = v32;
        [v32 coordinate];
        v34 = MKMapPointForCoordinate(v68);

        aBlock[0] = v31;
        v36 = v31[2];
        v35 = v31[3];
        if (v36 >= v35 >> 1)
        {
          sub_10018609C((v35 > 1), v36 + 1, 1);
          v31 = aBlock[0];
        }

        ++v30;
        v31[2] = v36 + 1;
        *&v31[2 * v36 + 4] = v34;
      }

      while (v29 != v30);

      v23 = v65;
      v19 = v59;
    }

    else
    {

      v31 = _swiftEmptyArrayStorage;
    }

    sub_1005D896C(v31, a4, a5, a7, a8, a9, a10);
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v65 = [objc_allocWithZone(MKMapSnapshotOptions) init];
    [v65 setTraitCollection:v62];
    [v65 setMapRect:{v39, v41, v43, v45}];
    [v65 setMapType:5];
    [v65 setSize:{a4, a5}];
    v46 = OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSnapshotter;
    [*(a2 + OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSnapshotter) cancel];
    v47 = *(a2 + v46);
    *(a2 + v46) = 0;

    v48 = objc_allocWithZone(MKMapSnapshotter);
    v49 = [v48 initWithOptions:v65];
    v50 = *(a2 + v46);
    *(a2 + v46) = v49;
    v51 = v49;

    if (v51)
    {
      sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
      v53 = v60;
      v52 = v61;
      (*(v61 + 104))(v60, enum case for DispatchQoS.QoSClass.userInitiated(_:), v19);
      v54 = static OS_dispatch_queue.global(qos:)();
      (*(v52 + 8))(v53, v19);
      v55 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      *(v56 + 24) = v31;
      *(v56 + 32) = v64;
      *(v56 + 40) = v39;
      *(v56 + 48) = v41;
      *(v56 + 56) = v43;
      *(v56 + 64) = v45;
      *(v56 + 72) = a4;
      *(v56 + 80) = a5;
      *(v56 + 88) = sub_1005DA728;
      *(v56 + 96) = v23;
      aBlock[4] = sub_1005DA798;
      aBlock[5] = v56;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100212B08;
      aBlock[3] = &unk_1008631B0;
      v57 = _Block_copy(aBlock);

      [v51 startWithQueue:v54 completionHandler:v57];

      _Block_release(v57);
    }

    else
    {

      v58 = v65;
    }
  }

  else
  {
    v37 = a3;
    sub_100522DB8(0);
  }
}

void sub_1005D9F98(uint64_t a1, uint64_t a2, void (**a3)(void, void), double a4, double a5, double a6, float64_t a7, float64_t a8, float64_t a9, float64_t a10)
{
  v62 = a6;
  v19 = type metadata accessor for DispatchQoS.QoSClass();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v23[2] = a3;
  v24 = *(a2 + OBJC_IVAR___CHWorkoutRouteMapGenerator_locationReadings);
  if (v24)
  {
    if (!*(a2 + OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSize + 16))
    {
      a4 = *(a2 + OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSize);
      a5 = *(a2 + OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSize + 8);
    }

    _Block_copy(a3);
    v25 = v24;
    v26 = [v25 allValidLocations];
    sub_1000059F8(0, &qword_1008E55D0, CLLocation_ptr);
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v27 >> 62)
    {
      v28 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v60 = a1;
    v61 = v25;
    v58 = v22;
    v59 = v20;
    if (v28)
    {
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10018609C(0, v28 & ~(v28 >> 63), 0);
      if (v28 < 0)
      {
        __break(1u);
        return;
      }

      v57 = v19;
      v63 = v23;
      v29 = 0;
      v30 = aBlock[0];
      do
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v31 = *(v27 + 8 * v29 + 32);
        }

        v32 = v31;
        [v31 coordinate];
        v33 = MKMapPointForCoordinate(v66);

        aBlock[0] = v30;
        v35 = v30[2];
        v34 = v30[3];
        if (v35 >= v34 >> 1)
        {
          sub_10018609C((v34 > 1), v35 + 1, 1);
          v30 = aBlock[0];
        }

        ++v29;
        v30[2] = v35 + 1;
        *&v30[2 * v35 + 4] = v33;
      }

      while (v28 != v29);

      v23 = v63;
      v19 = v57;
    }

    else
    {

      v30 = _swiftEmptyArrayStorage;
    }

    sub_1005D896C(v30, a4, a5, a7, a8, a9, a10);
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v63 = [objc_allocWithZone(MKMapSnapshotOptions) init];
    [v63 setTraitCollection:v60];
    [v63 setMapRect:{v37, v39, v41, v43}];
    [v63 setMapType:5];
    [v63 setSize:{a4, a5}];
    v44 = OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSnapshotter;
    [*(a2 + OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSnapshotter) cancel];
    v45 = *(a2 + v44);
    *(a2 + v44) = 0;

    v46 = objc_allocWithZone(MKMapSnapshotter);
    v47 = [v46 initWithOptions:v63];
    v48 = *(a2 + v44);
    *(a2 + v44) = v47;
    v49 = v47;

    if (v49)
    {
      sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
      v51 = v58;
      v50 = v59;
      (*(v59 + 104))(v58, enum case for DispatchQoS.QoSClass.userInitiated(_:), v19);
      v52 = static OS_dispatch_queue.global(qos:)();
      (*(v50 + 8))(v51, v19);
      v53 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v54 = swift_allocObject();
      *(v54 + 16) = v53;
      *(v54 + 24) = v30;
      *(v54 + 32) = v62;
      *(v54 + 40) = v37;
      *(v54 + 48) = v39;
      *(v54 + 56) = v41;
      *(v54 + 64) = v43;
      *(v54 + 72) = a4;
      *(v54 + 80) = a5;
      *(v54 + 88) = sub_1001FE648;
      *(v54 + 96) = v23;
      aBlock[4] = sub_1005DA700;
      aBlock[5] = v54;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100212B08;
      aBlock[3] = &unk_1008630E8;
      v55 = _Block_copy(aBlock);

      [v49 startWithQueue:v52 completionHandler:v55];

      _Block_release(v55);
    }

    else
    {

      v56 = v63;
    }
  }

  else
  {
    _Block_copy(a3);
    a3[2](a3, 0);
  }
}

void sub_1005DA5A8(void *a1, CGContext *a2, double a3, double a4)
{
  [a1 bounds];
  v8 = a3 - CGRectGetMidX(v16);
  [a1 centerOffset];
  v10 = v8 + v9;
  [a1 bounds];
  v11 = a4 - CGRectGetMidY(v17);
  [a1 centerOffset];
  v13 = v11 + v12;
  CGContextSaveGState(a2);
  CGContextTranslateCTM(a2, v10, v13);
  [a1 prepareForSnapshotting];
  v14 = [a1 layer];
  [v14 renderInContext:a2];

  CGContextRestoreGState(a2);
}

float64_t sub_1005DA69C(float64x2_t a1, float64_t a2)
{
  a1.f64[1] = a2;
  *&a1.f64[0] = *&vaddq_f64(vmulq_n_f64(vsubq_f64(a1, *(v2 + 16)), *(v2 + 48)), *(v2 + 56));
  return a1.f64[0];
}

id sub_1005DA6C0(double a1, double a2)
{
  v3 = *(v2 + 16);
  v4 = MKCoordinateForMapPoint(*&a1);

  return [v3 pointForCoordinate:{v4.latitude, v4.longitude}];
}

uint64_t sub_1005DA730()
{

  return _swift_deallocObject(v0, 104, 7);
}

__n128 sub_1005DA79C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

BOOL sub_1005DA7F0(uint64_t a1, char a2)
{
  v3 = a1;
  if (a1 == 8 && (!a2 || a2 == 3 || *v2 <= 2.22044605e-16))
  {
    v6 = static os_log_type_t.fault.getter();
    v7 = HKLogActivity;
    result = os_log_type_enabled(HKLogActivity, v6);
    if (!result)
    {
      return result;
    }

    v9 = v7;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v50[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10000AFDC(0xD000000000000024, 0x8000000100765E20, v50);
    _os_log_impl(&_mh_execute_header, v9, v6, "%s found unexpected flight type; re-enable TrendsPairedWatchManager.populate()", v10, 0xCu);
    sub_100005A40(v11);

    return 0;
  }

  if (qword_1008DAFA8 != -1)
  {
    swift_once();
  }

  if (byte_1008F8689)
  {
    v4 = 1;
    v5 = 1;
  }

  else
  {
    v4 = qword_1006FE000[v3];
    v5 = qword_1006FE048[v3];
  }

  v12 = *(v2 + 32);
  v46 = *(v2 + 16);
  v47 = v12;
  v48 = *(v2 + 48);
  v49 = *(v2 + 64);
  v50[0] = v46;
  v50[1] = v12;
  v50[2] = v48;
  v51 = v49;
  v13 = *(v46 + 16);
  if (v13 < 0xB6)
  {
    sub_10006C958();
    v15 = *(v14 + 16);

    return v15 >= v5;
  }

  sub_10057EB58(v13 - 183, v13 - 1, &v27);
  v17 = v27;
  if (!v27)
  {
    return 0;
  }

  v35 = v28;
  v36 = v29;
  v37 = v30;
  sub_10057EB58(v13 - 91, v13 - 1, &v31);
  v18 = v31;
  if (!v31 || (v43 = v32, v44 = v33, v45 = v34, v38 = v17, v39 = v35, v40 = v36, v41 = v37, sub_10006C958(), v20 = *(v19 + 16), , v42 = v18, sub_10006C958(), v22 = v21, sub_1005DAC64(&v31), v23 = *(v22 + 16), , v20 == v23))
  {
    sub_1005DAC64(&v27);
    return 0;
  }

  sub_10006C958();
  v25 = v24;
  sub_1005DAC64(&v27);
  v26 = *(v25 + 16);

  return v26 >= v4;
}

uint64_t sub_1005DAAC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  v15[10] = *(a1 + 160);
  v15[11] = v2;
  v16 = *(a1 + 192);
  v3 = *(a1 + 112);
  v15[6] = *(a1 + 96);
  v15[7] = v3;
  v4 = *(a1 + 144);
  v15[8] = *(a1 + 128);
  v15[9] = v4;
  v5 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v5;
  v6 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v6;
  v7 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v7;
  v8 = *(a2 + 176);
  v17[10] = *(a2 + 160);
  v17[11] = v8;
  v18 = *(a2 + 192);
  v9 = *(a2 + 112);
  v17[6] = *(a2 + 96);
  v17[7] = v9;
  v10 = *(a2 + 144);
  v17[8] = *(a2 + 128);
  v17[9] = v10;
  v11 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v11;
  v12 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v12;
  v13 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v13;
  return sub_1005DAB6C(v15, v17) & 1;
}

uint64_t sub_1005DAB6C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if ((sub_10031B088(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_10031B100(v4, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 80);
  v8 = *(a1 + 128);
  v7 = *(a1 + 136);
  v9 = *(a2 + 80);
  v11 = *(a2 + 128);
  v10 = *(a2 + 136);
  if ((sub_10031B088(*(a1 + 72), *(a2 + 72)) & 1) == 0 || (sub_10031B100(v6, v9) & 1) == 0 || (sub_10031B088(v8, v11) & 1) == 0 || (sub_10031B100(v7, v10) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a2 + 192);
  v13 = *(a1 + 192);

  return sub_100412680(v13, v12);
}

uint64_t sub_1005DAC64(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008F5138, &unk_1006FDFF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005DACCC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1005DAD40()
{
  v1[26] = v0;
  v2 = type metadata accessor for CatalogLockupPlaceholder();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v3 = sub_100140278(&qword_1008DE528, &unk_1006D7CA0);
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();
  v4 = sub_100140278(&qword_1008DD8D8, &qword_1006F3890);
  v1[33] = v4;
  v1[34] = *(v4 - 8);
  v1[35] = swift_task_alloc();
  sub_100140278(&qword_1008EB540, &unk_1006D5E20);
  v1[36] = swift_task_alloc();
  v5 = type metadata accessor for Locale();
  v1[37] = v5;
  v1[38] = *(v5 - 8);
  v1[39] = swift_task_alloc();
  v6 = type metadata accessor for PersonalizationCandidate();
  v1[40] = v6;
  v1[41] = *(v6 - 8);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v7 = type metadata accessor for PersonalizationShelfDescriptor();
  v1[45] = v7;
  v1[46] = *(v7 - 8);
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  type metadata accessor for UUID();
  v1[50] = swift_task_alloc();
  v8 = type metadata accessor for PersonalizationInferenceRequestOptions();
  v1[51] = v8;
  v1[52] = *(v8 - 8);
  v1[53] = swift_task_alloc();
  v9 = sub_100140278(&qword_1008EEE68, &qword_1006F38A0);
  v1[54] = v9;
  v1[55] = *(v9 - 8);
  v1[56] = swift_task_alloc();
  v10 = type metadata accessor for PersonalizationInferenceResponse();
  v1[57] = v10;
  v1[58] = *(v10 - 8);
  v1[59] = swift_task_alloc();
  v1[60] = type metadata accessor for MainActor();
  v1[61] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[62] = v12;
  v1[63] = v11;

  return _swift_task_switch(sub_1005DB1D0, v12, v11);
}

uint64_t sub_1005DB1D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v0[8];
  if (v1 - 2 >= 2 && v1 != 0)
  {
    if (v1 == 1)
    {

LABEL_16:

      v11 = v0[1];

      return v11();
    }

    sub_100487A28(v1);
  }

  sub_1000066AC((v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_networkEvaluator), *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_networkEvaluator + 24));
  dispatch thunk of NetworkEvaluating.queryNetworkConditions()();
  v3 = NetworkConditions.rawValue.getter();
  v5 = v4;
  if (v3 == NetworkConditions.rawValue.getter() && v5 == v6)
  {

LABEL_15:

    v9 = v0[26];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[25] = 3;
    v10 = v9;
    static Published.subscript.setter();
    goto LABEL_16;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    goto LABEL_15;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v0[9];
  if (v13 > 1)
  {
    if (v13 == 3)
    {
      goto LABEL_27;
    }

    if (v13 != 2)
    {
LABEL_26:
      sub_100487A28(v13);
      goto LABEL_27;
    }

LABEL_25:
    v14 = v0[26];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[24] = 1;
    v15 = v14;
    static Published.subscript.setter();
    goto LABEL_27;
  }

  if (!v13)
  {
    goto LABEL_25;
  }

  if (v13 != 1)
  {
    goto LABEL_26;
  }

LABEL_27:
  v17 = v0[52];
  v16 = v0[53];
  v18 = v0[51];
  sub_1000066AC((v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_recommendationClient), *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_recommendationClient + 24));
  UUID.init()();
  static RecommendationConstants.personalizationHeroContentRequestVersion.getter();
  PersonalizationInferenceRequestOptions.init(correlationKey:eventType:source:trigger:version:)();
  dispatch thunk of RecommendationClientProtocol.fetchPersonalizationInferenceResponse(options:)();
  (*(v17 + 8))(v16, v18);

  return _swift_task_switch(sub_1005DB5DC, 0, 0);
}

uint64_t sub_1005DB5DC()
{
  v1 = v0[56];
  v2 = swift_task_alloc();
  v0[64] = v2;
  *(v2 + 16) = "FitnessApp/FitnessPlusCardDataProvider.swift";
  *(v2 + 24) = 44;
  *(v2 + 32) = 2;
  *(v2 + 40) = 266;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[65] = v3;
  *v3 = v0;
  v3[1] = sub_1005DB6EC;
  v4 = v0[59];
  v5 = v0[57];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000013, 0x8000000100751490, sub_1005E751C, v2, v5);
}

uint64_t sub_1005DB6EC()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {

    v3 = sub_1005DC3D8;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v2[55];
    v6 = v2[56];
    v8 = v2[54];

    (*(v7 + 8))(v6, v8);
    v4 = v2[62];
    v5 = v2[63];
    v3 = sub_1005DB850;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1005DB850()
{
  v1 = PersonalizationInferenceResponse.shelves.getter();
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_10:
    v9 = *(v0 + 464);
    v8 = *(v0 + 472);
    v10 = *(v0 + 456);
    v11 = *(v0 + 208);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 184) = 2;
    v12 = v11;
    static Published.subscript.setter();
    (*(v9 + 8))(v8, v10);
LABEL_28:

    v51 = *(v0 + 8);

    return v51();
  }

  v3 = 0;
  v4 = *(v0 + 368);
  v65 = (v4 + 8);
  while (1)
  {
    if (v3 >= *(v1 + 16))
    {
      goto LABEL_45;
    }

    (*(v4 + 16))(*(v0 + 376), v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, *(v0 + 360));
    if (PersonalizationShelfDescriptor.displayStyle.getter() == 0x4C4553554F524143 && v5 == 0xE800000000000000)
    {
      break;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      goto LABEL_12;
    }

    ++v3;
    (*v65)(*(v0 + 376), *(v0 + 360));
    if (v2 == v3)
    {
      goto LABEL_10;
    }
  }

LABEL_12:
  v14 = *(v0 + 384);
  v13 = *(v0 + 392);
  v16 = *(v0 + 368);
  v15 = *(v0 + 376);
  v17 = *(v0 + 360);

  v18 = *(v16 + 32);
  v18(v14, v15, v17);
  v18(v13, v14, v17);
  v19 = PersonalizationShelfDescriptor.candidates.getter();
  v68 = *(v19 + 16);
  if (v68)
  {
    v20 = 0;
    v21 = *(v0 + 328);
    v66 = (v21 + 32);
    v67 = v19;
    while (v20 < *(v19 + 16))
    {
      v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v23 = *(v21 + 72);
      (*(v21 + 16))(*(v0 + 352), v19 + v22 + v23 * v20, *(v0 + 320));
      v24 = PersonalizationCandidate.referenceType.getter();
      v26 = v25;
      *(v0 + 16) = v24;
      *(v0 + 24) = v25;
      v28 = v27 & 1;
      *(v0 + 32) = v27 & 1;
      *(v0 + 40) = xmmword_1006D4AC0;
      *(v0 + 56) = 1;
      sub_1005E7534();
      sub_1005E7588();
      v29 = static PortableEnum<>.== infix(_:_:)();
      sub_1003A7344(v24, v26, v28);
      if (v29)
      {
        v30 = *v66;
        (*v66)(*(v0 + 344), *(v0 + 352), *(v0 + 320));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100186210(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v32 = _swiftEmptyArrayStorage[2];
        v31 = _swiftEmptyArrayStorage[3];
        if (v32 >= v31 >> 1)
        {
          sub_100186210((v31 > 1), v32 + 1, 1);
        }

        v33 = *(v0 + 344);
        v34 = *(v0 + 320);
        _swiftEmptyArrayStorage[2] = v32 + 1;
        v30(_swiftEmptyArrayStorage + v22 + v32 * v23, v33, v34);
      }

      else
      {
        (*(v21 + 8))(*(v0 + 352), *(v0 + 320));
      }

      ++v20;
      v19 = v67;
      if (v68 == v20)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_23:
  v35 = *(v0 + 208);

  v36 = OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_candidates;
  *(v0 + 536) = OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_candidates;
  *(v35 + v36) = _swiftEmptyArrayStorage;

  if (!*(*(v35 + v36) + 16))
  {
    v45 = *(v0 + 464);
    v44 = *(v0 + 472);
    v46 = *(v0 + 456);
    v47 = *(v0 + 392);
    v48 = *(v0 + 360);
    v49 = *(v0 + 208);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 176) = 2;
    v50 = v49;
    static Published.subscript.setter();
    (*v65)(v47, v48);
    (*(v45 + 8))(v44, v46);
    goto LABEL_28;
  }

  v37 = *(*(v0 + 208) + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeBodyFocusMapTask);
  *(v0 + 544) = v37;
  if (v37)
  {

    v38 = swift_task_alloc();
    *(v0 + 552) = v38;
    v39 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v40 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v38 = v0;
    v38[1] = sub_1005DC628;
    v41 = v0 + 96;
LABEL_26:
    v42 = v37;
    v43 = v39;
LABEL_33:

    return Task.value.getter(v41, v42, v43, v40, &protocol self-conformance witness table for Error);
  }

  *(v0 + 568) = sub_1004A8614(_swiftEmptyArrayStorage);
  v53 = *(*(v0 + 208) + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_queryLocaleTask);
  *(v0 + 576) = v53;
  if (v53)
  {

    v54 = swift_task_alloc();
    *(v0 + 584) = v54;
    v40 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v54 = v0;
    v54[1] = sub_1005DCD00;
    v41 = *(v0 + 288);
    v43 = *(v0 + 296);
    v42 = v53;
    goto LABEL_33;
  }

  v55 = *(v0 + 304);
  v57 = *(v0 + 288);
  v56 = *(v0 + 296);
  (*(v55 + 56))(v57, 1, 1, v56);
  static Locale.autoupdatingCurrent.getter();
  if ((*(v55 + 48))(v57, 1, v56) != 1)
  {
    sub_10000EA04(*(v0 + 288), &qword_1008EB540, &unk_1006D5E20);
  }

  v37 = *(*(v0 + 208) + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeModalityMapTask);
  *(v0 + 600) = v37;
  if (v37)
  {

    v58 = swift_task_alloc();
    *(v0 + 608) = v58;
    v39 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v40 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v58 = v0;
    v58[1] = sub_1005DD2E8;
    v41 = v0 + 104;
    goto LABEL_26;
  }

  *(v0 + 624) = sub_1004A8614(_swiftEmptyArrayStorage);
  v37 = *(*(v0 + 208) + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeMusicGenreMapTask);
  *(v0 + 632) = v37;
  if (v37)
  {

    v59 = swift_task_alloc();
    *(v0 + 640) = v59;
    v39 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v40 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v59 = v0;
    v59[1] = sub_1005DD808;
    v41 = v0 + 112;
    goto LABEL_26;
  }

  *(v0 + 656) = sub_1004A8614(_swiftEmptyArrayStorage);
  v37 = *(*(v0 + 208) + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeSkillLevelMapTask);
  *(v0 + 664) = v37;
  if (v37)
  {

    v60 = swift_task_alloc();
    *(v0 + 672) = v60;
    v39 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v40 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v60 = v0;
    v60[1] = sub_1005DDC78;
    v41 = v0 + 120;
    goto LABEL_26;
  }

LABEL_46:
  *(v0 + 688) = sub_1004A8614(_swiftEmptyArrayStorage);
  v37 = *(*(v0 + 208) + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeThemeMapTask);
  *(v0 + 696) = v37;
  if (v37)
  {

    v61 = swift_task_alloc();
    *(v0 + 704) = v61;
    v39 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v40 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v61 = v0;
    v61[1] = sub_1005DE040;
    v41 = v0 + 128;
    goto LABEL_26;
  }

  *(v0 + 720) = sub_1004A8614(_swiftEmptyArrayStorage);
  v37 = *(*(v0 + 208) + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeTrainerMapTask);
  *(v0 + 728) = v37;
  if (v37)
  {

    v62 = swift_task_alloc();
    *(v0 + 736) = v62;
    v39 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v40 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v62 = v0;
    v62[1] = sub_1005DE358;
    v41 = v0 + 136;
    goto LABEL_26;
  }

  *(v0 + 752) = sub_1004A8614(_swiftEmptyArrayStorage);
  *(v0 + 760) = static MainActor.shared.getter();
  v64 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 768) = v64;
  *(v0 + 776) = v63;

  return _swift_task_switch(sub_1005DE594, v64, v63);
}

uint64_t sub_1005DC3D8()
{
  (*(v0[55] + 8))(v0[56], v0[54]);
  v1 = v0[62];
  v2 = v0[63];

  return _swift_task_switch(sub_1005DC44C, v1, v2);
}

uint64_t sub_1005DC44C()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v0[10];
  sub_100487A28(v1);
  if (v1 < 4)
  {
    v2 = v0[26];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[11] = 2;
    v3 = v2;
    static Published.subscript.setter();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1005DC628()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  v3 = *(v2 + 504);
  v4 = *(v2 + 496);
  if (v0)
  {
    v5 = sub_1005DF408;
  }

  else
  {
    v5 = sub_1005DC77C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1005DC77C()
{
  v0[71] = v0[12];
  v1 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_queryLocaleTask);
  v0[72] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[73] = v2;
    v3 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v2 = v0;
    v2[1] = sub_1005DCD00;
    v4 = v0[36];
    v5 = v0[37];
    v6 = v1;
LABEL_16:

    return Task.value.getter(v4, v6, v5, v3, &protocol self-conformance witness table for Error);
  }

  v7 = v0[38];
  v9 = v0[36];
  v8 = v0[37];
  (*(v7 + 56))(v9, 1, 1, v8);
  static Locale.autoupdatingCurrent.getter();
  if ((*(v7 + 48))(v9, 1, v8) != 1)
  {
    sub_10000EA04(v0[36], &qword_1008EB540, &unk_1006D5E20);
  }

  v10 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeModalityMapTask);
  v0[75] = v10;
  if (v10)
  {

    v11 = swift_task_alloc();
    v0[76] = v11;
    v12 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v3 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v11 = v0;
    v11[1] = sub_1005DD2E8;
    v4 = v0 + 13;
LABEL_15:
    v6 = v10;
    v5 = v12;
    goto LABEL_16;
  }

  v0[78] = sub_1004A8614(_swiftEmptyArrayStorage);
  v10 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeMusicGenreMapTask);
  v0[79] = v10;
  if (v10)
  {

    v13 = swift_task_alloc();
    v0[80] = v13;
    v12 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v3 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v13 = v0;
    v13[1] = sub_1005DD808;
    v4 = v0 + 14;
    goto LABEL_15;
  }

  v0[82] = sub_1004A8614(_swiftEmptyArrayStorage);
  v10 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeSkillLevelMapTask);
  v0[83] = v10;
  if (v10)
  {

    v14 = swift_task_alloc();
    v0[84] = v14;
    v12 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v3 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v14 = v0;
    v14[1] = sub_1005DDC78;
    v4 = v0 + 15;
    goto LABEL_15;
  }

  v0[86] = sub_1004A8614(_swiftEmptyArrayStorage);
  v10 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeThemeMapTask);
  v0[87] = v10;
  if (v10)
  {

    v15 = swift_task_alloc();
    v0[88] = v15;
    v12 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v3 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v15 = v0;
    v15[1] = sub_1005DE040;
    v4 = v0 + 16;
    goto LABEL_15;
  }

  v0[90] = sub_1004A8614(_swiftEmptyArrayStorage);
  v10 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeTrainerMapTask);
  v0[91] = v10;
  if (v10)
  {

    v16 = swift_task_alloc();
    v0[92] = v16;
    v12 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v3 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v16 = v0;
    v16[1] = sub_1005DE358;
    v4 = v0 + 17;
    goto LABEL_15;
  }

  v0[94] = sub_1004A8614(_swiftEmptyArrayStorage);
  v0[95] = static MainActor.shared.getter();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[96] = v18;
  v0[97] = v17;

  return _swift_task_switch(sub_1005DE594, v18, v17);
}

uint64_t sub_1005DCD00()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {

    v3 = *(v2 + 496);
    v4 = *(v2 + 504);
    v5 = sub_1005DF624;
  }

  else
  {
    v3 = *(v2 + 496);
    v4 = *(v2 + 504);
    v5 = sub_1005DCE28;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005DCE28()
{
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[36];
  v3 = v0[37];

  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v5 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeModalityMapTask);
  v0[75] = v5;
  if (v5)
  {

    v6 = swift_task_alloc();
    v0[76] = v6;
    v7 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v8 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v6 = v0;
    v6[1] = sub_1005DD2E8;
    v9 = v0 + 13;
LABEL_11:

    return Task.value.getter(v9, v5, v7, v8, &protocol self-conformance witness table for Error);
  }

  v0[78] = sub_1004A8614(_swiftEmptyArrayStorage);
  v5 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeMusicGenreMapTask);
  v0[79] = v5;
  if (v5)
  {

    v10 = swift_task_alloc();
    v0[80] = v10;
    v7 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v8 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v10 = v0;
    v10[1] = sub_1005DD808;
    v9 = v0 + 14;
    goto LABEL_11;
  }

  v0[82] = sub_1004A8614(_swiftEmptyArrayStorage);
  v5 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeSkillLevelMapTask);
  v0[83] = v5;
  if (v5)
  {

    v11 = swift_task_alloc();
    v0[84] = v11;
    v7 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v8 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v11 = v0;
    v11[1] = sub_1005DDC78;
    v9 = v0 + 15;
    goto LABEL_11;
  }

  v0[86] = sub_1004A8614(_swiftEmptyArrayStorage);
  v5 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeThemeMapTask);
  v0[87] = v5;
  if (v5)
  {

    v12 = swift_task_alloc();
    v0[88] = v12;
    v7 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v8 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v12 = v0;
    v12[1] = sub_1005DE040;
    v9 = v0 + 16;
    goto LABEL_11;
  }

  v0[90] = sub_1004A8614(_swiftEmptyArrayStorage);
  v5 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeTrainerMapTask);
  v0[91] = v5;
  if (v5)
  {

    v13 = swift_task_alloc();
    v0[92] = v13;
    v7 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v8 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v13 = v0;
    v13[1] = sub_1005DE358;
    v9 = v0 + 17;
    goto LABEL_11;
  }

  v0[94] = sub_1004A8614(_swiftEmptyArrayStorage);
  v0[95] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[96] = v15;
  v0[97] = v14;

  return _swift_task_switch(sub_1005DE594, v15, v14);
}

uint64_t sub_1005DD2E8()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    (*(v2[38] + 8))(v2[39], v2[37]);

    v3 = v2[62];
    v4 = v2[63];
    v5 = sub_1005DF840;
  }

  else
  {

    v3 = v2[62];
    v4 = v2[63];
    v5 = sub_1005DD44C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005DD44C()
{
  v0[78] = v0[13];
  v1 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeMusicGenreMapTask);
  v0[79] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[80] = v2;
    v3 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v4 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v2 = v0;
    v2[1] = sub_1005DD808;
    v5 = v0 + 14;
LABEL_9:

    return Task.value.getter(v5, v1, v3, v4, &protocol self-conformance witness table for Error);
  }

  v0[82] = sub_1004A8614(_swiftEmptyArrayStorage);
  v1 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeSkillLevelMapTask);
  v0[83] = v1;
  if (v1)
  {

    v6 = swift_task_alloc();
    v0[84] = v6;
    v3 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v4 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v6 = v0;
    v6[1] = sub_1005DDC78;
    v5 = v0 + 15;
    goto LABEL_9;
  }

  v0[86] = sub_1004A8614(_swiftEmptyArrayStorage);
  v1 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeThemeMapTask);
  v0[87] = v1;
  if (v1)
  {

    v7 = swift_task_alloc();
    v0[88] = v7;
    v3 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v4 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v7 = v0;
    v7[1] = sub_1005DE040;
    v5 = v0 + 16;
    goto LABEL_9;
  }

  v0[90] = sub_1004A8614(_swiftEmptyArrayStorage);
  v1 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeTrainerMapTask);
  v0[91] = v1;
  if (v1)
  {

    v8 = swift_task_alloc();
    v0[92] = v8;
    v3 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v4 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v8 = v0;
    v8[1] = sub_1005DE358;
    v5 = v0 + 17;
    goto LABEL_9;
  }

  v0[94] = sub_1004A8614(_swiftEmptyArrayStorage);
  v0[95] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[96] = v10;
  v0[97] = v9;

  return _swift_task_switch(sub_1005DE594, v10, v9);
}

uint64_t sub_1005DD808()
{
  v2 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    (*(v2[38] + 8))(v2[39], v2[37]);

    v3 = v2[62];
    v4 = v2[63];
    v5 = sub_1005DFA5C;
  }

  else
  {

    v3 = v2[62];
    v4 = v2[63];
    v5 = sub_1005DD978;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005DD978()
{
  v0[82] = v0[14];
  v1 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeSkillLevelMapTask);
  v0[83] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[84] = v2;
    v3 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v4 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v2 = v0;
    v2[1] = sub_1005DDC78;
    v5 = v0 + 15;
LABEL_7:

    return Task.value.getter(v5, v1, v3, v4, &protocol self-conformance witness table for Error);
  }

  v0[86] = sub_1004A8614(_swiftEmptyArrayStorage);
  v1 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeThemeMapTask);
  v0[87] = v1;
  if (v1)
  {

    v6 = swift_task_alloc();
    v0[88] = v6;
    v3 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v4 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v6 = v0;
    v6[1] = sub_1005DE040;
    v5 = v0 + 16;
    goto LABEL_7;
  }

  v0[90] = sub_1004A8614(_swiftEmptyArrayStorage);
  v1 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeTrainerMapTask);
  v0[91] = v1;
  if (v1)
  {

    v7 = swift_task_alloc();
    v0[92] = v7;
    v3 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v4 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v7 = v0;
    v7[1] = sub_1005DE358;
    v5 = v0 + 17;
    goto LABEL_7;
  }

  v0[94] = sub_1004A8614(_swiftEmptyArrayStorage);
  v0[95] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[96] = v9;
  v0[97] = v8;

  return _swift_task_switch(sub_1005DE594, v9, v8);
}

uint64_t sub_1005DDC78()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    (*(v2[38] + 8))(v2[39], v2[37]);

    v3 = v2[62];
    v4 = v2[63];
    v5 = sub_1005DFC78;
  }

  else
  {

    v3 = v2[62];
    v4 = v2[63];
    v5 = sub_1005DDDFC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005DDDFC()
{
  v0[86] = v0[15];
  v1 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeThemeMapTask);
  v0[87] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[88] = v2;
    v3 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v4 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v2 = v0;
    v2[1] = sub_1005DE040;
    v5 = v0 + 16;
LABEL_5:

    return Task.value.getter(v5, v1, v3, v4, &protocol self-conformance witness table for Error);
  }

  v0[90] = sub_1004A8614(_swiftEmptyArrayStorage);
  v1 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeTrainerMapTask);
  v0[91] = v1;
  if (v1)
  {

    v6 = swift_task_alloc();
    v0[92] = v6;
    v3 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v4 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v6 = v0;
    v6[1] = sub_1005DE358;
    v5 = v0 + 17;
    goto LABEL_5;
  }

  v0[94] = sub_1004A8614(_swiftEmptyArrayStorage);
  v0[95] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[96] = v8;
  v0[97] = v7;

  return _swift_task_switch(sub_1005DE594, v8, v7);
}

uint64_t sub_1005DE040()
{
  v2 = *v1;
  *(*v1 + 712) = v0;

  if (v0)
  {
    (*(v2[38] + 8))(v2[39], v2[37]);

    v3 = v2[62];
    v4 = v2[63];
    v5 = sub_1005DFE94;
  }

  else
  {

    v3 = v2[62];
    v4 = v2[63];
    v5 = sub_1005DE1D0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005DE1D0()
{
  v0[90] = v0[16];
  v1 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeTrainerMapTask);
  v0[91] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[92] = v2;
    v3 = sub_100140278(&qword_1008F5238, &unk_1006FE300);
    v4 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v2 = v0;
    v2[1] = sub_1005DE358;

    return Task.value.getter(v0 + 17, v1, v3, v4, &protocol self-conformance witness table for Error);
  }

  else
  {
    v0[94] = sub_1004A8614(_swiftEmptyArrayStorage);
    v0[95] = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[96] = v6;
    v0[97] = v5;

    return _swift_task_switch(sub_1005DE594, v6, v5);
  }
}

uint64_t sub_1005DE358()
{
  v2 = *v1;
  *(*v1 + 744) = v0;

  if (v0)
  {
    (*(v2[38] + 8))(v2[39], v2[37]);

    v3 = v2[62];
    v4 = v2[63];
    v5 = sub_1005E00B0;
  }

  else
  {

    v3 = v2[62];
    v4 = v2[63];
    v5 = sub_1005DE4FC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005DE4FC(uint64_t a1)
{
  v1[94] = v1[17];
  v1[95] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[96] = v3;
  v1[97] = v2;

  return _swift_task_switch(sub_1005DE594, v3, v2);
}

uint64_t sub_1005DE594()
{
  v1 = v0[26];
  v2 = *&v1[v0[67]];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[41];
    v5 = v0[28];

    sub_1001861CC(0, v3, 0);
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v21 = *(v4 + 56);
    v22 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = v0[42];
      v10 = v0[40];
      v22(v9, v7, v10);
      PersonalizationCandidate.identifier.getter();
      CatalogLockupPlaceholder.init(identifier:referenceType:editorialCardIdentifier:)();
      (*v8)(v9, v10);
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_1001861CC((v11 > 1), v12 + 1, 1);
      }

      v13 = v0[29];
      v14 = v0[27];
      _swiftEmptyArrayStorage[2] = v12 + 1;
      (*(v5 + 32))(_swiftEmptyArrayStorage + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v13, v14);
      v7 += v21;
      --v3;
    }

    while (v3);
    v15 = v0[26];

    sub_1000066AC((v15 + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_catalogClient), *(v15 + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_catalogClient + 24));
    dispatch thunk of CatalogClientProtocol.fetchRemoteCatalogLockups(displayStyle:placeholders:)();

    v16 = sub_1005DE9E4;
    v17 = 0;
    v18 = 0;
  }

  else
  {

    swift_getKeyPath();
    swift_getKeyPath();
    v0[21] = 2;
    v19 = v1;
    static Published.subscript.setter();
    (*(v0[38] + 8))(v0[39], v0[37]);
    v17 = v0[62];
    v18 = v0[63];
    v16 = sub_1005DE878;
  }

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_1005DE878()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[57];
  v4 = v0[49];
  v5 = v0[45];
  v6 = v0[46];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005DE9E4()
{
  v1 = v0[35];
  v2 = swift_task_alloc();
  v0[98] = v2;
  *(v2 + 16) = "FitnessApp/FitnessPlusCardDataProvider.swift";
  *(v2 + 24) = 44;
  *(v2 + 32) = 2;
  *(v2 + 40) = 320;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[99] = v3;
  v4 = sub_100140278(&qword_1008ECFF0, &unk_1006FE310);
  *v3 = v0;
  v3[1] = sub_1005DEB00;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 18, 0, 0, 0xD000000000000013, 0x8000000100751490, sub_1005E75DC, v2, v4);
}

uint64_t sub_1005DEB00()
{
  v2 = *v1;
  *(*v1 + 800) = v0;

  if (v0)
  {

    v3 = sub_1005DF0E8;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v2[34];
    v6 = v2[35];
    v8 = v2[33];
    v2[101] = v2[18];

    (*(v7 + 8))(v6, v8);
    v5 = v2[97];
    v4 = v2[96];
    v3 = sub_1005DECC4;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1005DECC4()
{
  v43 = v0;
  v1 = v0;
  v2 = v0[101];

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[101];
    v5 = v0[31];
    v38 = v0[30];
    v40 = v0[32];
    v42 = _swiftEmptyArrayStorage;
    sub_10018618C(0, v3, 0);
    v6 = _swiftEmptyArrayStorage;
    v36 = type metadata accessor for CatalogLockup();
    v7 = *(v36 - 8);
    v34 = *(v7 + 16);
    v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    do
    {
      v10 = v0[32];
      v34(v10 + *(v38 + 48), v8, v36);
      *v10 = CatalogLockup.identifier.getter();
      *(v40 + 8) = v11;
      v42 = v6;
      v13 = v6[2];
      v12 = v6[3];
      if (v13 >= v12 >> 1)
      {
        sub_10018618C((v12 > 1), v13 + 1, 1);
        v6 = v42;
      }

      v14 = v0[32];
      v6[2] = v13 + 1;
      sub_1005E75F4(v14, v6 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13);
      v8 += v9;
      --v3;
    }

    while (v3);

    if (v6[2])
    {
      sub_100140278(&qword_1008EEE50, &qword_1006F3880);
      v15 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v15 = &_swiftEmptyDictionarySingleton;
    }

    v18 = v0[100];
    v42 = v15;

    sub_1005E7664(v19, 1, &v42);
    if (v18)
    {

      return _swift_unexpectedError(v18, "Swift/Dictionary.swift", 22, 1, 490);
    }

    v20 = v0[94];
    v35 = v0[86];
    v37 = v0[90];
    v21 = v0[82];
    v22 = v0[78];
    v23 = v0[67];
    v24 = v0[39];
    v25 = v1[26];
    v39 = v1[71];
    v41 = v25;

    v26 = v42;
    v27 = *&v25[v23];
    v28 = swift_task_alloc();
    v28[2] = v26;
    v28[3] = v39;
    v28[4] = v24;
    v28[5] = v22;
    v28[6] = v21;
    v28[7] = v35;
    v28[8] = v37;
    v28[9] = v20;

    v29 = sub_100666970(sub_1005E7BB0, v28, v27);

    swift_getKeyPath();
    swift_getKeyPath();
    v1[19] = v29;
    v30 = v41;
  }

  else
  {
    v16 = v0[26];

    swift_getKeyPath();
    swift_getKeyPath();
    v1[20] = 2;
    v17 = v16;
  }

  static Published.subscript.setter();
  (*(v1[38] + 8))(v1[39], v1[37]);
  v31 = v1[62];
  v32 = v1[63];

  return _swift_task_switch(sub_1005DE878, v31, v32);
}

uint64_t sub_1005DF0E8()
{
  (*(v0[34] + 8))(v0[35], v0[33]);
  v1 = v0[97];
  v2 = v0[96];

  return _swift_task_switch(sub_1005DF160, v2, v1);
}

uint64_t sub_1005DF160()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];

  (*(v2 + 8))(v1, v3);
  v4 = v0[62];
  v5 = v0[63];

  return _swift_task_switch(sub_1005DF1EC, v4, v5);
}

uint64_t sub_1005DF1EC()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[57];
  v4 = v0[49];
  v5 = v0[45];
  v6 = v0[46];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v0[10];
  sub_100487A28(v7);
  if (v7 < 4)
  {
    v8 = v0[26];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[11] = 2;
    v9 = v8;
    static Published.subscript.setter();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005DF408()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[57];
  v4 = v0[49];
  v5 = v0[45];
  v6 = v0[46];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v0[10];
  sub_100487A28(v7);
  if (v7 < 4)
  {
    v8 = v0[26];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[11] = 2;
    v9 = v8;
    static Published.subscript.setter();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005DF624()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[57];
  v4 = v0[49];
  v5 = v0[45];
  v6 = v0[46];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v0[10];
  sub_100487A28(v7);
  if (v7 < 4)
  {
    v8 = v0[26];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[11] = 2;
    v9 = v8;
    static Published.subscript.setter();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005DF840()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[57];
  v4 = v0[49];
  v5 = v0[45];
  v6 = v0[46];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v0[10];
  sub_100487A28(v7);
  if (v7 < 4)
  {
    v8 = v0[26];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[11] = 2;
    v9 = v8;
    static Published.subscript.setter();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005DFA5C()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[57];
  v4 = v0[49];
  v5 = v0[45];
  v6 = v0[46];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v0[10];
  sub_100487A28(v7);
  if (v7 < 4)
  {
    v8 = v0[26];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[11] = 2;
    v9 = v8;
    static Published.subscript.setter();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005DFC78()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[57];
  v4 = v0[49];
  v5 = v0[45];
  v6 = v0[46];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v0[10];
  sub_100487A28(v7);
  if (v7 < 4)
  {
    v8 = v0[26];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[11] = 2;
    v9 = v8;
    static Published.subscript.setter();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005DFE94()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[57];
  v4 = v0[49];
  v5 = v0[45];
  v6 = v0[46];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v0[10];
  sub_100487A28(v7);
  if (v7 < 4)
  {
    v8 = v0[26];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[11] = 2;
    v9 = v8;
    static Published.subscript.setter();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005E00B0()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[57];
  v4 = v0[49];
  v5 = v0[45];
  v6 = v0[46];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v0[10];
  sub_100487A28(v7);
  if (v7 < 4)
  {
    v8 = v0[26];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[11] = 2;
    v9 = v8;
    static Published.subscript.setter();
  }

  v10 = v0[1];

  return v10();
}

void sub_1005E02CC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
    Hasher._combine(_:)(2uLL);
    v3 = *(a2 + 16);
    Hasher._combine(_:)(v3);
    if (v3)
    {
      v4 = *(type metadata accessor for CatalogLockup() - 8);
      v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      sub_1000715B8(&qword_1008E78F8, &type metadata accessor for CatalogLockup, &protocol conformance descriptor for CatalogLockup);
      do
      {
        dispatch thunk of Hashable.hash(into:)();
        v5 += v6;
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    Hasher._combine(_:)(qword_1006FE450[a2]);
  }
}

Swift::Int sub_1005E03F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1005E02CC(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1005E0440(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1005E02CC(v4, v2);
  return Hasher._finalize()();
}

char *sub_1005E0484(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  v42 = a5;
  v43 = a8;
  v41 = a7;
  v37 = a6;
  v38 = a2;
  v34 = a4;
  v39 = a1;
  ObjectType = swift_getObjectType();
  v14 = type metadata accessor for Locale();
  v35 = *(v14 - 8);
  v36 = v14;
  __chkstk_darwin(v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100140278(&qword_1008EBF48, &qword_1006FE250);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v34 - v19;
  *&v9[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeBodyFocusMapTask] = 0;
  *&v9[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeModalityMapTask] = 0;
  *&v9[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeMusicGenreMapTask] = 0;
  *&v9[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeSkillLevelMapTask] = 0;
  *&v9[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeThemeMapTask] = 0;
  *&v9[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeTrainerMapTask] = 0;
  *&v9[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_queryLocaleTask] = 0;
  v21 = OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider__state;
  v45[0] = 0;
  Published.init(initialValue:)();
  (*(v18 + 32))(&v9[v21], v20, v17);
  *&v9[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_candidates] = _swiftEmptyArrayStorage;
  v9[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_hasActivated] = 0;
  v22 = OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_numberFormatter;
  *&v9[v22] = [objc_allocWithZone(NSNumberFormatter) init];
  sub_100007C5C(a1, &v9[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_catalogClient]);
  sub_100007C5C(a2, &v9[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_contentAvailabilityClient]);
  v23 = &v9[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_eventHub];
  v24 = v34;
  *v23 = a3;
  v23[1] = v24;
  sub_100007C5C(v42, &v9[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_networkEvaluator]);
  sub_100007C5C(a6, &v9[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_recommendationClient]);
  sub_100007C5C(v43, &v9[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_subscriptionClient]);
  v25 = v41;
  sub_100007C5C(v41, &v9[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_storefrontLocalizer]);
  type metadata accessor for SubscriptionToken();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  *&v9[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_subscriptionToken] = SubscriptionToken.init(eventHub:)();
  [*&v9[v22] setNumberStyle:1];
  v26 = *&v9[v22];
  sub_1000066AC(v25, v25[3]);
  v27 = v26;
  dispatch thunk of StorefrontLocalizing.activeLanguageCode.getter();
  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v35[1](v16, v36);
  [v27 setLocale:isa];

  v46.receiver = v9;
  v46.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v46, "init");
  v30 = swift_getObjectType();
  type metadata accessor for AchievementEnvironmentCacheUpdated();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v29;
  ObjectType = v29;
  v35 = v31;

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  sub_100005A40(v45);

  type metadata accessor for ActiveWorkoutPlanUpdated();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v36 = v30;
  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  sub_100005A40(v45);

  type metadata accessor for AllowedContentRatingsUpdated();
  swift_allocObject();
  v32 = v35;
  swift_unknownObjectWeakInit();

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  sub_100005A40(v45);

  type metadata accessor for AppActiveOccurred();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000715B8(&qword_1008F5218, &type metadata accessor for AppActiveOccurred, &protocol conformance descriptor for AppActiveOccurred);

  v40 = a3;
  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  sub_100005A40(v45);

  type metadata accessor for CatalogDeleted();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  sub_100005A40(v45);

  type metadata accessor for ContentAvailabilityUpdated();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  sub_100005A40(v45);

  type metadata accessor for NetworkConditionsChanged();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  sub_100005A40(v45);

  type metadata accessor for OnboardingSurveyResultsUpdated();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  sub_100005A40(v45);

  type metadata accessor for PersonalizationPrivacyPreferenceUpdated();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  sub_100005A40(v45);

  type metadata accessor for ServiceSubscriptionUpdated();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  sub_100005A40(v45);

  type metadata accessor for WheelchairStatusUpdated();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1000715B8(&qword_1008F5220, &type metadata accessor for WheelchairStatusUpdated, &protocol conformance descriptor for WheelchairStatusUpdated);

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();
  swift_unknownObjectRelease();

  sub_100005A40(v43);
  sub_100005A40(v37);
  sub_100005A40(v42);
  sub_100005A40(v38);
  sub_100005A40(v39);
  sub_100005A40(v45);

  sub_100005A40(v41);
  return v32;
}

uint64_t sub_1005E1068()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1005E8218;

    return sub_1005DAD40();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1005E1170()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1005E1258;

    return sub_1005DAD40();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1005E1258()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1005E1388()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v2 = Strong;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v0[8];
  if (v3 > 1)
  {
    if (v3 == 3)
    {
      goto LABEL_13;
    }

    if (v3 != 2)
    {
LABEL_12:
      sub_100487A28(v3);
      goto LABEL_13;
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_12;
    }

LABEL_13:
    v7 = v0[1];

    return v7();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  v0[10] = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1005E1520;

  return sub_1005DAD40();
}

uint64_t sub_1005E1520()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1005E1630(uint64_t a1)
{
  v1 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "[FitnessPlusCardDataProvider] Activating on service subscription updated", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v14;
    sub_10026E198(0, 0, v3, &unk_1006EE0F0, v15);
  }
}

uint64_t sub_1005E1894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[35] = a4;
  sub_100140278(&qword_1008E1760, &qword_1006D4490);
  v4[36] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v4[37] = v5;
  v4[38] = *(v5 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();

  return _swift_task_switch(sub_1005E19A4, 0, 0);
}

uint64_t sub_1005E19A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[42] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[43] = v2;
    *v2 = v0;
    v2[1] = sub_1005E1B64;

    return sub_1005E2718();
  }

  else
  {
    static Log.default.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[38];
    v7 = v0[39];
    v9 = v0[37];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "[FitnessPlusCardDataProvider] Skipping activation - not subscribed", v10, 2u);
    }

    (*(v8 + 8))(v7, v9);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1005E1B64(char a1)
{
  v2 = *(*v1 + 336);
  *(*v1 + 368) = a1;

  return _swift_task_switch(sub_1005E1C80, 0, 0);
}

uint64_t sub_1005E1C80(uint64_t a1)
{
  if (*(v1 + 368) != 1)
  {
    static Log.default.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v4, v5);
    v9 = *(v1 + 304);
    v7 = *(v1 + 312);
    v8 = *(v1 + 296);
    if (v12)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "[FitnessPlusCardDataProvider] Skipping activation - not subscribed";
      goto LABEL_8;
    }

LABEL_9:

    (*(v9 + 8))(v7, v8);
LABEL_10:

    v13 = *(v1 + 8);

    return v13();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v3 = Strong[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_hasActivated], Strong, (v3 & 1) != 0))
  {
    static Log.default.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v1 + 320);
    v8 = *(v1 + 296);
    v9 = *(v1 + 304);
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "[FitnessPlusCardDataProvider] Skipping activation - already activated";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v4, v5, v11, v10, 2u);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  static Log.default.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "[FitnessPlusCardDataProvider] Activating", v17, 2u);
  }

  v18 = *(v1 + 328);
  v19 = *(v1 + 296);
  v20 = *(v1 + 304);

  (*(v20 + 8))(v18, v19);
  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v21[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_hasActivated] = 1;
  }

  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    v24 = *(v1 + 288);
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v23;
    v27 = v23;
    *&v27[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeBodyFocusMapTask] = sub_100654280(0, 0, v24, &unk_1006FE380, v26);
  }

  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    v30 = *(v1 + 288);
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v29;
    v33 = v29;
    *&v33[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeModalityMapTask] = sub_100654280(0, 0, v30, &unk_1006FE390, v32);
  }

  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    v36 = *(v1 + 288);
    v37 = type metadata accessor for TaskPriority();
    (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v35;
    v39 = v35;
    *&v39[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeMusicGenreMapTask] = sub_100654280(0, 0, v36, &unk_1006FE3A0, v38);
  }

  swift_beginAccess();
  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40)
  {
    v41 = v40;
    v42 = *(v1 + 288);
    v43 = type metadata accessor for TaskPriority();
    (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v44[4] = v41;
    v45 = v41;
    *&v45[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeSkillLevelMapTask] = sub_100654280(0, 0, v42, &unk_1006FE3B0, v44);
  }

  swift_beginAccess();
  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46)
  {
    v47 = v46;
    v48 = *(v1 + 288);
    v49 = type metadata accessor for TaskPriority();
    (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
    v50 = swift_allocObject();
    v50[2] = 0;
    v50[3] = 0;
    v50[4] = v47;
    v51 = v47;
    *&v51[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeThemeMapTask] = sub_100654280(0, 0, v48, &unk_1006FE3C0, v50);
  }

  swift_beginAccess();
  v52 = swift_unknownObjectWeakLoadStrong();
  if (v52)
  {
    v53 = v52;
    v54 = *(v1 + 288);
    v55 = type metadata accessor for TaskPriority();
    (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
    v56 = swift_allocObject();
    v56[2] = 0;
    v56[3] = 0;
    v56[4] = v53;
    v57 = v53;
    *&v57[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_makeTrainerMapTask] = sub_100654280(0, 0, v54, &unk_1006FE3D0, v56);
  }

  swift_beginAccess();
  v58 = swift_unknownObjectWeakLoadStrong();
  if (v58)
  {
    v59 = v58;
    v60 = *(v1 + 288);
    v61 = type metadata accessor for TaskPriority();
    (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
    v62 = swift_allocObject();
    v62[2] = 0;
    v62[3] = 0;
    v62[4] = v59;
    v63 = v59;
    *&v63[OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_queryLocaleTask] = sub_1006544FC(0, 0, v60, &unk_1006FE3E0, v62);
  }

  swift_beginAccess();
  v64 = swift_unknownObjectWeakLoadStrong();
  *(v1 + 352) = v64;
  if (!v64)
  {
    goto LABEL_10;
  }

  v65 = swift_task_alloc();
  *(v1 + 360) = v65;
  *v65 = v1;
  v65[1] = sub_1005E2594;

  return sub_1005DAD40();
}

uint64_t sub_1005E2594()
{
  v1 = *(*v0 + 352);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1005E2718()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_100140278(&unk_1008E4F30, &unk_1006E3490);
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = type metadata accessor for ServiceSubscription();
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();
  v6 = type metadata accessor for ServiceSubscriptionRequest();
  v1[15] = v6;
  v1[16] = *(v6 - 8);
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_1005E2954, 0, 0);
}

uint64_t sub_1005E2954()
{
  v1 = v0[11];
  v2 = v0[2];
  ServiceSubscriptionRequest.init(authenticationBehavior:cacheBehavior:)();
  sub_1000066AC((v2 + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_subscriptionClient), *(v2 + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_subscriptionClient + 24));
  dispatch thunk of ServiceSubscriptionClientProtocol.fetchServiceSubscription(with:)();
  v3 = swift_task_alloc();
  v0[18] = v3;
  *(v3 + 16) = "FitnessApp/FitnessPlusCardDataProvider.swift";
  *(v3 + 24) = 44;
  *(v3 + 32) = 2;
  *(v3 + 40) = 152;
  *(v3 + 48) = v1;
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1005E2AB0;
  v5 = v0[14];
  v6 = v0[12];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000013, 0x8000000100751490, sub_1005E81E8, v3, v6);
}

uint64_t sub_1005E2AB0()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1005E2D18;
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
    v3 = sub_1005E2C00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005E2C00(uint64_t a1)
{
  v3 = v1[13];
  v2 = v1[14];
  v4 = v1[12];
  v6 = v1[7];
  v5 = v1[8];
  v7 = v1[6];
  Date.init()();
  v8 = ServiceSubscription.isSubscribed(date:)();
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  (*(v1[16] + 8))(v1[17], v1[15]);

  v9 = v1[1];

  return v9(v8 & 1);
}

uint64_t sub_1005E2D18()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);
  static Log.default.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "[FitnessPlusCardDataProvider] Failed checking subscription status: %@", v6, 0xCu);
    sub_10000EA04(v7, &unk_1008DB8B0, &unk_1006DBD30);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_1005E2F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v5 = type metadata accessor for BodyFocus();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_100140278(&qword_1008EEEE0, &qword_1006F3918);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1005E303C, 0, 0);
}

uint64_t sub_1005E303C()
{
  v1 = v0[10];
  sub_1000066AC((v0[4] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_catalogClient), *(v0[4] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_catalogClient + 24));
  dispatch thunk of CatalogClientProtocol.queryAllBodyFocuses()();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = "FitnessApp/FitnessPlusCardDataProvider.swift";
  *(v2 + 24) = 44;
  *(v2 + 32) = 2;
  *(v2 + 40) = 163;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = sub_100140278(&qword_1008F5290, &unk_1006FE440);
  *v3 = v0;
  v3[1] = sub_1005E3190;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000013, 0x8000000100751490, sub_1005E81D0, v2, v4);
}

uint64_t sub_1005E3190()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {

    v3 = sub_1005E821C;
  }

  else
  {
    v5 = v2[9];
    v4 = v2[10];
    v6 = v2[8];
    v2[14] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_1005E32F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1005E32F0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 48);
  v3 = sub_1004A8614(_swiftEmptyArrayStorage);
  v4 = v1 + 56;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 56);
  v8 = (63 - v6) >> 6;
  v36 = v2;
  v35 = (v2 + 8);
  v37 = v1;

  v9 = 0;
  if (v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v12 >= v8)
    {
      v33 = v40[3];

      *v33 = v3;

      v34 = v40[1];

      v34();
      return;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
  }

  while (!v7);
  while (1)
  {
    (*(v36 + 16))(v40[7], *(v37 + 48) + *(v36 + 72) * (__clz(__rbit64(v7)) | (v12 << 6)), v40[5]);
    v13 = BodyFocus.identifier.getter();
    v15 = v14;
    v38 = BodyFocus.name.getter();
    v39 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v3;
    v18 = sub_100066F20(v13, v15);
    v20 = *(v3 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      break;
    }

    v24 = v19;
    if (*(v3 + 24) >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v18;
        sub_10049636C();
        v18 = v32;
      }
    }

    else
    {
      sub_10048EDB0(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_100066F20(v13, v15);
      if ((v24 & 1) != (v25 & 1))
      {

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }
    }

    v7 &= v7 - 1;
    v26 = v40[7];
    v27 = v40[5];
    if (v24)
    {
      v10 = v18;

      v3 = v41;
      v11 = (v41[7] + 16 * v10);
      *v11 = v38;
      v11[1] = v39;

      (*v35)(v26, v27);
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v3 = v41;
      v41[(v18 >> 6) + 8] |= 1 << v18;
      v28 = (v41[6] + 16 * v18);
      *v28 = v13;
      v28[1] = v15;
      v29 = (v41[7] + 16 * v18);
      *v29 = v38;
      v29[1] = v39;
      (*v35)(v26, v27);
      v30 = v41[2];
      v22 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v22)
      {
        goto LABEL_28;
      }

      v41[2] = v31;
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v12 = v9;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1005E3644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v5 = type metadata accessor for CatalogModalityReference();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_100140278(&qword_1008EEED0, &qword_1006F3908);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1005E376C, 0, 0);
}

uint64_t sub_1005E376C()
{
  v1 = v0[10];
  sub_1000066AC((v0[4] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_catalogClient), *(v0[4] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_catalogClient + 24));
  dispatch thunk of CatalogClientProtocol.queryAllCatalogModalityReferences()();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = "FitnessApp/FitnessPlusCardDataProvider.swift";
  *(v2 + 24) = 44;
  *(v2 + 32) = 2;
  *(v2 + 40) = 173;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = sub_100140278(&qword_1008F5288, &unk_1006FE430);
  *v3 = v0;
  v3[1] = sub_1005E38C0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000013, 0x8000000100751490, sub_1005E81B8, v2, v4);
}

uint64_t sub_1005E38C0()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {

    v3 = sub_1005E821C;
  }

  else
  {
    v5 = v2[9];
    v4 = v2[10];
    v6 = v2[8];
    v2[14] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_1005E3A20;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1005E3A20()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 48);
  v3 = sub_1004A8614(_swiftEmptyArrayStorage);
  v4 = v1 + 56;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 56);
  v8 = (63 - v6) >> 6;
  v36 = v2;
  v35 = (v2 + 8);
  v37 = v1;

  v9 = 0;
  if (v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v12 >= v8)
    {
      v33 = v40[3];

      *v33 = v3;

      v34 = v40[1];

      v34();
      return;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
  }

  while (!v7);
  while (1)
  {
    (*(v36 + 16))(v40[7], *(v37 + 48) + *(v36 + 72) * (__clz(__rbit64(v7)) | (v12 << 6)), v40[5]);
    v13 = CatalogModalityReference.identifier.getter();
    v15 = v14;
    v38 = CatalogModalityReference.name.getter();
    v39 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v3;
    v18 = sub_100066F20(v13, v15);
    v20 = *(v3 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      break;
    }

    v24 = v19;
    if (*(v3 + 24) >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v18;
        sub_10049636C();
        v18 = v32;
      }
    }

    else
    {
      sub_10048EDB0(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_100066F20(v13, v15);
      if ((v24 & 1) != (v25 & 1))
      {

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }
    }

    v7 &= v7 - 1;
    v26 = v40[7];
    v27 = v40[5];
    if (v24)
    {
      v10 = v18;

      v3 = v41;
      v11 = (v41[7] + 16 * v10);
      *v11 = v38;
      v11[1] = v39;

      (*v35)(v26, v27);
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v3 = v41;
      v41[(v18 >> 6) + 8] |= 1 << v18;
      v28 = (v41[6] + 16 * v18);
      *v28 = v13;
      v28[1] = v15;
      v29 = (v41[7] + 16 * v18);
      *v29 = v38;
      v29[1] = v39;
      (*v35)(v26, v27);
      v30 = v41[2];
      v22 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v22)
      {
        goto LABEL_28;
      }

      v41[2] = v31;
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v12 = v9;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1005E3D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v5 = type metadata accessor for MusicGenre();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_100140278(&qword_1008EEEC0, &qword_1006F38F8);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1005E3E9C, 0, 0);
}

uint64_t sub_1005E3E9C()
{
  v1 = v0[10];
  sub_1000066AC((v0[4] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_catalogClient), *(v0[4] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_catalogClient + 24));
  dispatch thunk of CatalogClientProtocol.queryAllMusicGenres()();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = "FitnessApp/FitnessPlusCardDataProvider.swift";
  *(v2 + 24) = 44;
  *(v2 + 32) = 2;
  *(v2 + 40) = 183;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = sub_100140278(&qword_1008F5280, &unk_1006FE420);
  *v3 = v0;
  v3[1] = sub_1005E3FF0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000013, 0x8000000100751490, sub_1005E81A0, v2, v4);
}

uint64_t sub_1005E3FF0()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {

    v3 = sub_1005E821C;
  }

  else
  {
    v5 = v2[9];
    v4 = v2[10];
    v6 = v2[8];
    v2[14] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_1005E4150;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1005E4150()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 48);
  v3 = sub_1004A8614(_swiftEmptyArrayStorage);
  v4 = v1 + 56;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 56);
  v8 = (63 - v6) >> 6;
  v36 = v2;
  v35 = (v2 + 8);
  v37 = v1;

  v9 = 0;
  if (v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v12 >= v8)
    {
      v33 = v40[3];

      *v33 = v3;

      v34 = v40[1];

      v34();
      return;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
  }

  while (!v7);
  while (1)
  {
    (*(v36 + 16))(v40[7], *(v37 + 48) + *(v36 + 72) * (__clz(__rbit64(v7)) | (v12 << 6)), v40[5]);
    v13 = MusicGenre.identifier.getter();
    v15 = v14;
    v38 = MusicGenre.name.getter();
    v39 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v3;
    v18 = sub_100066F20(v13, v15);
    v20 = *(v3 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      break;
    }

    v24 = v19;
    if (*(v3 + 24) >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v18;
        sub_10049636C();
        v18 = v32;
      }
    }

    else
    {
      sub_10048EDB0(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_100066F20(v13, v15);
      if ((v24 & 1) != (v25 & 1))
      {

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }
    }

    v7 &= v7 - 1;
    v26 = v40[7];
    v27 = v40[5];
    if (v24)
    {
      v10 = v18;

      v3 = v41;
      v11 = (v41[7] + 16 * v10);
      *v11 = v38;
      v11[1] = v39;

      (*v35)(v26, v27);
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v3 = v41;
      v41[(v18 >> 6) + 8] |= 1 << v18;
      v28 = (v41[6] + 16 * v18);
      *v28 = v13;
      v28[1] = v15;
      v29 = (v41[7] + 16 * v18);
      *v29 = v38;
      v29[1] = v39;
      (*v35)(v26, v27);
      v30 = v41[2];
      v22 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v22)
      {
        goto LABEL_28;
      }

      v41[2] = v31;
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v12 = v9;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1005E44A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v5 = type metadata accessor for SkillLevel();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_100140278(&qword_1008EEEB0, &qword_1006F38E8);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1005E45CC, 0, 0);
}

uint64_t sub_1005E45CC()
{
  v1 = v0[10];
  sub_1000066AC((v0[4] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_catalogClient), *(v0[4] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_catalogClient + 24));
  dispatch thunk of CatalogClientProtocol.queryAllSkillLevels()();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = "FitnessApp/FitnessPlusCardDataProvider.swift";
  *(v2 + 24) = 44;
  *(v2 + 32) = 2;
  *(v2 + 40) = 193;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = sub_100140278(&qword_1008F5278, &unk_1006FE410);
  *v3 = v0;
  v3[1] = sub_1005E4720;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000013, 0x8000000100751490, sub_1005E8188, v2, v4);
}

uint64_t sub_1005E4720()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {

    v3 = sub_1005E821C;
  }

  else
  {
    v5 = v2[9];
    v4 = v2[10];
    v6 = v2[8];
    v2[14] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_1005E4880;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1005E4880()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 48);
  v3 = sub_1004A8614(_swiftEmptyArrayStorage);
  v4 = v1 + 56;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 56);
  v8 = (63 - v6) >> 6;
  v36 = v2;
  v35 = (v2 + 8);
  v37 = v1;

  v9 = 0;
  if (v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v12 >= v8)
    {
      v33 = v40[3];

      *v33 = v3;

      v34 = v40[1];

      v34();
      return;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
  }

  while (!v7);
  while (1)
  {
    (*(v36 + 16))(v40[7], *(v37 + 48) + *(v36 + 72) * (__clz(__rbit64(v7)) | (v12 << 6)), v40[5]);
    v13 = SkillLevel.identifier.getter();
    v15 = v14;
    v38 = SkillLevel.name.getter();
    v39 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v3;
    v18 = sub_100066F20(v13, v15);
    v20 = *(v3 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      break;
    }

    v24 = v19;
    if (*(v3 + 24) >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v18;
        sub_10049636C();
        v18 = v32;
      }
    }

    else
    {
      sub_10048EDB0(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_100066F20(v13, v15);
      if ((v24 & 1) != (v25 & 1))
      {

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }
    }

    v7 &= v7 - 1;
    v26 = v40[7];
    v27 = v40[5];
    if (v24)
    {
      v10 = v18;

      v3 = v41;
      v11 = (v41[7] + 16 * v10);
      *v11 = v38;
      v11[1] = v39;

      (*v35)(v26, v27);
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v3 = v41;
      v41[(v18 >> 6) + 8] |= 1 << v18;
      v28 = (v41[6] + 16 * v18);
      *v28 = v13;
      v28[1] = v15;
      v29 = (v41[7] + 16 * v18);
      *v29 = v38;
      v29[1] = v39;
      (*v35)(v26, v27);
      v30 = v41[2];
      v22 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v22)
      {
        goto LABEL_28;
      }

      v41[2] = v31;
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v12 = v9;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1005E4BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v5 = type metadata accessor for CatalogTheme();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_100140278(&qword_1008EEEA0, &qword_1006F38D8);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1005E4CFC, 0, 0);
}

uint64_t sub_1005E4CFC()
{
  v1 = v0[10];
  sub_1000066AC((v0[4] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_catalogClient), *(v0[4] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_catalogClient + 24));
  dispatch thunk of CatalogClientProtocol.queryAllCatalogThemes()();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = "FitnessApp/FitnessPlusCardDataProvider.swift";
  *(v2 + 24) = 44;
  *(v2 + 32) = 2;
  *(v2 + 40) = 203;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = sub_100140278(&qword_1008F5270, &unk_1006FE400);
  *v3 = v0;
  v3[1] = sub_1005E4E50;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000013, 0x8000000100751490, sub_1005E8170, v2, v4);
}

uint64_t sub_1005E4E50()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {

    v3 = sub_1005E4FB0;
  }

  else
  {
    v5 = v2[9];
    v4 = v2[10];
    v6 = v2[8];
    v2[14] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_1005E5038;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005E4FB0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

void sub_1005E5038()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 48);
  v3 = sub_1004A8614(_swiftEmptyArrayStorage);
  v4 = v1 + 56;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 56);
  v8 = (63 - v6) >> 6;
  v36 = v2;
  v35 = (v2 + 8);
  v37 = v1;

  v9 = 0;
  if (v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v12 >= v8)
    {
      v33 = v40[3];

      *v33 = v3;

      v34 = v40[1];

      v34();
      return;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
  }

  while (!v7);
  while (1)
  {
    (*(v36 + 16))(v40[7], *(v37 + 48) + *(v36 + 72) * (__clz(__rbit64(v7)) | (v12 << 6)), v40[5]);
    v13 = CatalogTheme.identifier.getter();
    v15 = v14;
    v38 = CatalogTheme.name.getter();
    v39 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v3;
    v18 = sub_100066F20(v13, v15);
    v20 = *(v3 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      break;
    }

    v24 = v19;
    if (*(v3 + 24) >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v18;
        sub_10049636C();
        v18 = v32;
      }
    }

    else
    {
      sub_10048EDB0(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_100066F20(v13, v15);
      if ((v24 & 1) != (v25 & 1))
      {

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }
    }

    v7 &= v7 - 1;
    v26 = v40[7];
    v27 = v40[5];
    if (v24)
    {
      v10 = v18;

      v3 = v41;
      v11 = (v41[7] + 16 * v10);
      *v11 = v38;
      v11[1] = v39;

      (*v35)(v26, v27);
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v3 = v41;
      v41[(v18 >> 6) + 8] |= 1 << v18;
      v28 = (v41[6] + 16 * v18);
      *v28 = v13;
      v28[1] = v15;
      v29 = (v41[7] + 16 * v18);
      *v29 = v38;
      v29[1] = v39;
      (*v35)(v26, v27);
      v30 = v41[2];
      v22 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v22)
      {
        goto LABEL_28;
      }

      v41[2] = v31;
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v12 = v9;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1005E538C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v5 = type metadata accessor for TrainerReference();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_100140278(&qword_1008EEE90, &qword_1006F38C8);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1005E54B4, 0, 0);
}

uint64_t sub_1005E54B4()
{
  v1 = v0[10];
  sub_1000066AC((v0[4] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_catalogClient), *(v0[4] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_catalogClient + 24));
  dispatch thunk of CatalogClientProtocol.queryAllTrainerReferences()();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = "FitnessApp/FitnessPlusCardDataProvider.swift";
  *(v2 + 24) = 44;
  *(v2 + 32) = 2;
  *(v2 + 40) = 213;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = sub_100140278(&qword_1008F5268, &unk_1006FE3F0);
  *v3 = v0;
  v3[1] = sub_1005E5608;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000013, 0x8000000100751490, sub_1005E8158, v2, v4);
}

uint64_t sub_1005E5608()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {

    v3 = sub_1005E821C;
  }

  else
  {
    v5 = v2[9];
    v4 = v2[10];
    v6 = v2[8];
    v2[14] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_1005E5768;
  }

  return _swift_task_switch(v3, 0, 0);
}

unint64_t sub_1005E5768()
{
  v1 = v0[14];
  v2 = v0[6];
  v3 = sub_1004A8614(_swiftEmptyArrayStorage);
  v4 = v1 + 56;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 56);
  v8 = (63 - v6) >> 6;
  v47 = (v2 + 8);
  v48 = v1;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    (*(v2 + 16))(v0[7], *(v48 + 48) + *(v2 + 72) * (v11 | (v9 << 6)), v0[5]);
    v12 = TrainerReference.identifier.getter();
    v14 = v13;
    v15 = TrainerReference.informalName.getter();
    if (v16)
    {
      v41 = v15;
      v42 = v16;
      v20 = v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v3;
      result = sub_100066F20(v12, v14);
      v23 = *(v3 + 16);
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      v27 = v22;
      if (*(v20 + 24) >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v46 = result;
          sub_10049636C();
          result = v46;
        }
      }

      else
      {
        sub_10048EDB0(v26, isUniquelyReferenced_nonNull_native);
        result = sub_100066F20(v12, v14);
        if ((v27 & 1) != (v28 & 1))
        {
LABEL_28:

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v30 = v0[7];
      v31 = v0[5];
      if (v27)
      {
        v32 = result;
        v33 = v0[5];

        v3 = v49;
        v34 = (v49[7] + 16 * v32);
        *v34 = v41;
        v34[1] = v42;

        (*v47)(v30, v33);
      }

      else
      {
        v3 = v49;
        v49[(result >> 6) + 8] |= 1 << result;
        v35 = (v49[6] + 16 * result);
        *v35 = v12;
        v35[1] = v14;
        v36 = (v49[7] + 16 * result);
        *v36 = v41;
        v36[1] = v42;
        result = (*v47)(v30, v31);
        v37 = v49[2];
        v25 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v25)
        {
          goto LABEL_32;
        }

        v49[2] = v38;
      }
    }

    else
    {
      v17 = sub_100066F20(v12, v14);
      v19 = v18;

      if (v19)
      {
        v29 = v3;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_10049636C();
          v29 = v3;
        }

        v43 = v0[5];
        v45 = v0[7];

        v3 = v29;
        sub_10056EC3C(v17, v29);
        (*v47)(v45, v43);
      }

      else
      {
        (*v47)(v0[7], v0[5]);
      }
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  v39 = v0[3];

  *v39 = v3;

  v40 = v0[1];

  return v40();
}

uint64_t sub_1005E5B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a4;
  v5 = sub_100140278(&qword_1008EEE80, &qword_1006F38B8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1005E5C38, 0, 0);
}

uint64_t sub_1005E5C38()
{
  v1 = v0[8];
  sub_1000066AC((v0[5] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_contentAvailabilityClient), *(v0[5] + OBJC_IVAR____TtC10FitnessApp27FitnessPlusCardDataProvider_contentAvailabilityClient + 24));
  dispatch thunk of ContentAvailabilityClientProtocol.queryStorefrontLanguageCode()();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = "FitnessApp/FitnessPlusCardDataProvider.swift";
  *(v2 + 24) = 44;
  *(v2 + 32) = 2;
  *(v2 + 40) = 222;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1005E5D7C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000013, 0x8000000100751490, sub_1005E8140, v2, &type metadata for String);
}

uint64_t sub_1005E5D7C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  *(*v1 + 88) = v0;

  if (v0)
  {

    v4 = sub_1005E60A0;
  }

  else
  {
    v5 = v2[8];
    v6 = v2[6];
    v7 = v2[3];
    v2[12] = v2[2];
    v2[13] = v7;

    (*(v3 + 8))(v5, v6);
    v4 = sub_1005E5EE0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005E5EE0()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  isa = [v2 localizations];

  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v5 = v0[12];
  v4 = v0[13];
  sub_100140278(&qword_1008DCF58, &qword_1006D7B40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006D46C0;
  *(v6 + 32) = v5;
  *(v6 + 40) = v4;
  v7 = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v1 preferredLocalizationsFromArray:isa forPreferences:v7];

  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v9 + 16))
  {

    Locale.init(identifier:)();
  }

  else
  {

    static Locale.autoupdatingCurrent.getter();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005E60A0()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1005E6120@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>, uint64_t a9)
{
  v78 = a6;
  v79 = a7;
  v76 = a4;
  v77 = a5;
  v74 = a2;
  v75 = a3;
  v88 = a8;
  v10 = sub_100140278(&qword_1008F5240, &qword_1006FE320);
  __chkstk_darwin(v10 - 8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v73 = &v71 - v14;
  v15 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  __chkstk_darwin(v15 - 8);
  v84 = &v71 - v16;
  v17 = sub_100140278(&unk_1008EAF20, &unk_1006E33E0);
  __chkstk_darwin(v17 - 8);
  v83 = &v71 - v18;
  v19 = sub_100140278(&qword_1008F5248, &qword_1006FE328);
  __chkstk_darwin(v19 - 8);
  v86 = &v71 - v20;
  v21 = sub_100140278(&qword_1008F5250, &unk_1006FE330);
  __chkstk_darwin(v21 - 8);
  v82 = &v71 - v22;
  v23 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v23 - 8);
  v85 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v81 = &v71 - v26;
  v27 = sub_100140278(&qword_1008F5258, &qword_1006FE340);
  __chkstk_darwin(v27 - 8);
  v80 = &v71 - v28;
  v29 = sub_100140278(&qword_1008F5260, &qword_1006FE348);
  __chkstk_darwin(v29 - 8);
  v31 = &v71 - v30;
  v32 = type metadata accessor for CatalogLockup();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v87 = &v71 - v37;
  v38 = PersonalizationCandidate.identifier.getter();
  if (!*(a1 + 16))
  {

    return (*(v33 + 56))(v88, 1, 1, v32);
  }

  v72 = v12;
  v40 = sub_100066F20(v38, v39);
  v42 = v41;

  if ((v42 & 1) == 0)
  {
    return (*(v33 + 56))(v88, 1, 1, v32);
  }

  (*(v33 + 16))(v35, *(a1 + 56) + *(v33 + 72) * v40, v32);
  v43 = *(v33 + 32);
  v43(v87, v35, v32);
  PersonalizationCandidate.reason.getter();
  v44 = type metadata accessor for PersonalizationText();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v31, 1, v44) == 1)
  {
    sub_10000EA04(v31, &qword_1008F5260, &qword_1006FE348);
LABEL_9:
    v70 = v88;
    v43(v88, v87, v32);
    v68 = *(v33 + 56);
    v69 = v70;
    return v68(v69, 0, 1, v32);
  }

  v47 = PersonalizationText.localizeFillers(bodyFocusMap:locale:modalityMap:musicGenreMap:skillLevelMap:themeMap:trainerMap:)();
  v49 = v48;
  (*(v45 + 8))(v31, v44);
  if (!v49)
  {
    goto LABEL_9;
  }

  v50 = type metadata accessor for ArtworkDescriptor();
  (*(*(v50 - 8) + 56))(v80, 1, 1, v50);
  v51 = type metadata accessor for Date();
  v52 = *(*(v51 - 8) + 56);
  v52(v81, 1, 1, v51);
  v53 = type metadata accessor for AssetBundleProgress();
  (*(*(v53 - 8) + 56))(v82, 1, 1, v53);
  v52(v85, 1, 1, v51);
  sub_100140278(&qword_1008EB278, &unk_1006FE350);
  v54 = *(type metadata accessor for MediaTag() - 8);
  v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v56 = swift_allocObject();
  v79 = v56;
  *(v56 + 16) = xmmword_1006D46C0;
  v57 = (v56 + v55);
  *v57 = v47;
  v57[1] = v49;
  swift_storeEnumTagMultiPayload();
  v58 = type metadata accessor for CatalogLink();
  (*(*(v58 - 8) + 56))(v86, 1, 1, v58);
  v59 = type metadata accessor for Artwork();
  (*(*(v59 - 8) + 56))(v83, 1, 1, v59);
  v60 = type metadata accessor for URL();
  (*(*(v60 - 8) + 56))(v84, 1, 1, v60);
  v61 = type metadata accessor for TextAttribute();
  v62 = *(*(v61 - 8) + 56);
  v63 = v73;
  v62(v73, 1, 1, v61);
  v64 = v72;
  v62(v72, 1, 1, v61);
  v65 = v82;
  v67 = v80;
  v66 = v81;
  CatalogLockup.copyWith(accessibilityTitle:actionTags:artworkDescriptor:availableAudioLanguages:bundleDateRequested:bundleLoadStatus:bundleProgress:bundleReason:completedCount:contentRating:contextMenuSubtitleTags:contextMenuTitleTags:dateBookmarked:detailTags:duration:dynamicBrickDisplayStyle:editorialCardIdentifier:healthKitActivityTypes:identifier:isIncompletePlanWorkout:link:mediaType:recencyTag:referenceType:sampleContentIdentifier:streamingArtwork:streamingArtworkCropCode:streamingSubtitle:streamingTitle:streamingURL:subtitleTags:subtitleTextAttribute:titleTags:titleTextAttribute:)();

  sub_10000EA04(v64, &qword_1008F5240, &qword_1006FE320);
  sub_10000EA04(v63, &qword_1008F5240, &qword_1006FE320);
  sub_10000EA04(v84, &unk_1008EB5B0, &unk_1006D2BF0);
  sub_10000EA04(v83, &unk_1008EAF20, &unk_1006E33E0);
  sub_10000EA04(v86, &qword_1008F5248, &qword_1006FE328);
  sub_10000EA04(v85, &unk_1008F73A0, &unk_1006DB450);
  sub_10000EA04(v65, &qword_1008F5250, &unk_1006FE330);
  sub_10000EA04(v66, &unk_1008F73A0, &unk_1006DB450);
  sub_10000EA04(v67, &qword_1008F5258, &qword_1006FE340);
  (*(v33 + 8))(v87, v32);
  v68 = *(v33 + 56);
  v69 = v88;
  return v68(v69, 0, 1, v32);
}

uint64_t type metadata accessor for FitnessPlusCardDataProvider(uint64_t a1)
{
  result = qword_1008F5200;
  if (!qword_1008F5200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005E6D2C(uint64_t a1)
{
  sub_1005E6E20();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005E6E20()
{
  if (!qword_1008F5210)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008F5210);
    }
  }
}

uint64_t sub_1005E6E70(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1005E6EC4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1005E6F34@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1005E6F74()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002BBC0;

  return sub_1005E1048(v0);
}

uint64_t sub_1005E7004()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002BBC0;

  return sub_1005E1150(v0);
}

uint64_t sub_1005E7094()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002BBC0;

  return sub_1005E1048(v0);
}

uint64_t sub_1005E7124()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002BBC0;

  return sub_1005E1368(v0);
}

uint64_t sub_1005E71B4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002BBC0;

  return sub_1005E1048(v0);
}

uint64_t sub_1005E7244()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002BBC0;

  return sub_1005E1048(v0);
}

uint64_t sub_1005E72D4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002BBC0;

  return sub_1005E1048(v0);
}

uint64_t sub_1005E7364()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002BBC0;

  return sub_1005E1048(v0);
}

uint64_t sub_1005E73F4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002BBC0;

  return sub_1005E1048(v0);
}

uint64_t sub_1005E748C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002BBC0;

  return sub_1005E1048(v0);
}

unint64_t sub_1005E7534()
{
  result = qword_1008F5228;
  if (!qword_1008F5228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5228);
  }

  return result;
}

unint64_t sub_1005E7588()
{
  result = qword_1008F5230;
  if (!qword_1008F5230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5230);
  }

  return result;
}

uint64_t sub_1005E75F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DE528, &unk_1006D7CA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005E7664(uint64_t a1, char a2, void *a3)
{
  v61 = type metadata accessor for CatalogLockup();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008DE528, &unk_1006D7CA0);
  v58 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v52 - v10);
  v56 = *(a1 + 16);
  if (!v56)
  {
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v58 + 80);
  v57 = a1;
  v14 = (v59 + 32);
  v54 = a1 + ((v13 + 32) & ~v13);
  sub_1005E7BE4(v54, v11);
  v15 = v11[1];
  v64 = *v11;
  v16 = v64;
  v65 = v15;
  v17 = *v14;
  v55 = v12;
  v53 = v17;
  v17(v60, v11 + v12, v61);
  v18 = *a3;
  v20 = sub_100066F20(v16, v15);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_100494548();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_10048C114(v23, a2 & 1);
  v25 = sub_100066F20(v16, v15);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v29 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v30 = (v29[6] + 16 * v20);
      *v30 = v16;
      v30[1] = v15;
      v53((v29[7] + *(v59 + 72) * v20), v60, v61);
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v29[2] = v33;
      if (v56 != 1)
      {
        v34 = 1;
        while (v34 < *(v57 + 16))
        {
          sub_1005E7BE4(v54 + *(v58 + 72) * v34, v11);
          v35 = v11[1];
          v64 = *v11;
          v36 = v64;
          v65 = v35;
          v37 = *v14;
          (*v14)(v60, v11 + v55, v61);
          v38 = *a3;
          v39 = sub_100066F20(v36, v35);
          v41 = v38[2];
          v42 = (v40 & 1) == 0;
          v32 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v32)
          {
            goto LABEL_26;
          }

          v44 = v40;
          if (v38[3] < v43)
          {
            sub_10048C114(v43, 1);
            v39 = sub_100066F20(v36, v35);
            if ((v44 & 1) != (v45 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v44)
          {
            goto LABEL_11;
          }

          v46 = *a3;
          *(*a3 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v47 = (v46[6] + 16 * v39);
          *v47 = v36;
          v47[1] = v35;
          v37((v46[7] + *(v59 + 72) * v39), v60, v61);
          v48 = v46[2];
          v32 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v32)
          {
            goto LABEL_27;
          }

          ++v34;
          v46[2] = v49;
          if (v56 == v34)
          {
          }
        }

        goto LABEL_25;
      }
    }

LABEL_11:
    v27 = swift_allocError();
    swift_willThrow();
    v66 = v27;
    swift_errorRetain();
    sub_100140278(&qword_1008EB640, &qword_1006D6730);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v59 + 8))(v60, v61);
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v50._object = 0x8000000100766060;
  v50._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v50);
  _print_unlocked<A, B>(_:_:)();
  v51._countAndFlagsBits = 39;
  v51._object = 0xE100000000000000;
  String.append(_:)(v51);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005E7BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DE528, &unk_1006D7CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005E7C54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_1005E2F14(a1, v4, v5, v6);
}

uint64_t sub_1005E7D08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_1005E3644(a1, v4, v5, v6);
}

uint64_t sub_1005E7DBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_1005E3D74(a1, v4, v5, v6);
}

uint64_t sub_1005E7E70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_1005E44A4(a1, v4, v5, v6);
}

uint64_t sub_1005E7F24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_1005E4BD4(a1, v4, v5, v6);
}

uint64_t sub_1005E7FD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_1005E538C(a1, v4, v5, v6);
}

uint64_t sub_1005E808C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_1005E5B6C(a1, v4, v5, v6);
}

uint64_t sub_1005E8224(uint64_t *a1)
{
  v5 = *a1;
  sub_1005E94C4(a1, v4);
  v1 = swift_allocObject();
  v2 = v4[1];
  v1[1] = v4[0];
  v1[2] = v2;
  v1[3] = v4[2];

  sub_100140278(&qword_1008F5308, qword_1006FE5B8);
  type metadata accessor for UUID();
  sub_100140278(&qword_1008F52E8, &qword_1006FE5A8);
  sub_10014A6B0(&qword_1008F5310, &qword_1008F5308, qword_1006FE5B8, &protocol conformance descriptor for [A]);
  sub_1005E9400();
  sub_1005E9514(&qword_1008F5318, &type metadata accessor for InferenceRecord, &protocol conformance descriptor for InferenceRecord);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1005E8390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a3;
  v23[0] = type metadata accessor for Date.FormatStyle.TimeStyle();
  v5 = *(v23[0] - 8);
  __chkstk_darwin(v23[0]);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.FormatStyle.DateStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[4] = a1;
  v23[5] = a2;
  InferenceRecord.createdAt.getter();
  static Date.FormatStyle.DateStyle.abbreviated.getter();
  static Date.FormatStyle.TimeStyle.standard.getter();
  v16 = Date.formatted(date:time:)();
  v18 = v17;
  (*(v5 + 8))(v7, v23[0]);
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
  v24 = v16;
  v25 = v18;
  sub_10000FCBC();
  v24 = Text.init<A>(_:)();
  v25 = v19;
  v26 = v20 & 1;
  v27 = v21;
  sub_100140278(&qword_1008F52F8, &qword_1006FE5B0);
  sub_10014A6B0(&qword_1008F52F0, &qword_1008F52F8, &qword_1006FE5B0, &protocol conformance descriptor for NavigationLink<A, B>);
  return Section<>.init(header:content:)();
}

uint64_t sub_1005E8674(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for InferenceRecord();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for InferenceRecordFeedbackView();
  v9 = __chkstk_darwin(v8);
  v16 = a1;
  (*(v5 + 16))(v7, a1, v4, v9);
  v10 = a2[4];
  v11 = a2[5];
  v12 = sub_1000066AC(a2 + 1, v10);
  v17[3] = v10;
  v17[4] = *(v11 + 8);
  v13 = sub_100005994(v17);
  (*(*(v10 - 8) + 16))(v13, v12, v10);
  InferenceRecordFeedbackView.init(inferenceRecord:feedbackClient:)();
  sub_100140278(&qword_1008F4098, &qword_1006FB6A0);
  sub_10014A6B0(&qword_1008F40A0, &qword_1008F4098, &qword_1006FB6A0, &protocol conformance descriptor for VStack<A>);
  sub_1005E9514(&qword_1008F5320, &type metadata accessor for InferenceRecordFeedbackView, &protocol conformance descriptor for InferenceRecordFeedbackView);
  return NavigationLink.init(destination:label:)();
}

__n128 sub_1005E88BC@<Q0>(uint64_t a2@<X8>)
{
  v3 = static HorizontalAlignment.leading.getter();
  sub_1005E8950(v6);
  *&v5[55] = v6[3];
  *&v5[39] = v6[2];
  *&v5[23] = v6[1];
  *&v5[7] = v6[0];
  *(a2 + 33) = *&v5[16];
  result = *&v5[32];
  *(a2 + 49) = *&v5[32];
  *(a2 + 65) = *&v5[48];
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 80) = *&v5[63];
  *(a2 + 17) = *v5;
  return result;
}

uint64_t sub_1005E8950@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for InferenceResult();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  InferenceRecord.result.getter();
  v7 = InferenceResult.text.getter();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  v55 = v7;
  v56 = v9;
  sub_10000FCBC();
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  LODWORD(v55) = static HierarchicalShapeStyle.primary.getter();
  v15 = Text.foregroundStyle<A>(_:)();
  v54 = v16;
  v18 = v17;
  v20 = v19;
  sub_10004642C(v10, v12, v14 & 1);

  v21 = InferenceRecord.feedbackId.getter();
  v23 = v22;
  if (v22)
  {
    v24 = v21;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25._countAndFlagsBits = 0x6B63616264656546;
    v25._object = 0xED0000203A444920;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v25);
    v26._countAndFlagsBits = v24;
    v26._object = v23;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v26);

    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v27);
    LocalizedStringKey.init(stringInterpolation:)();
    v28 = Text.init(_:tableName:bundle:comment:)();
    v30 = v29;
    v32 = v31;
    LODWORD(v55) = static HierarchicalShapeStyle.secondary.getter();
    v33 = Text.foregroundStyle<A>(_:)();
    v35 = v34;
    v51 = v18;
    v37 = v36;
    v53 = v20;
    sub_10004642C(v28, v30, v32 & 1);

    static Font.caption.getter();
    v38 = Text.font(_:)();
    v40 = v39;
    v52 = a1;
    v41 = v15;
    v43 = v42;
    v23 = v44;

    v45 = v37 & 1;
    LOBYTE(v18) = v51;
    sub_10004642C(v33, v35, v45);
    v20 = v53;

    v46 = v43 & 1;
    v15 = v41;
    a1 = v52;
    sub_10006965C(v38, v40, v46);
  }

  else
  {
    v38 = 0;
    v40 = 0;
    v46 = 0;
  }

  v47 = v18 & 1;
  v48 = v54;
  sub_10006965C(v15, v54, v47);

  sub_1001E53F8(v38, v40, v46, v23);
  sub_1001E543C(v38, v40, v46, v23);
  LOBYTE(v55) = v47;
  *a1 = v15;
  *(a1 + 8) = v48;
  *(a1 + 16) = v47;
  *(a1 + 24) = v20;
  *(a1 + 32) = v38;
  *(a1 + 40) = v40;
  *(a1 + 48) = v46;
  *(a1 + 56) = v23;
  sub_1001E543C(v38, v40, v46, v23);
  sub_10004642C(v15, v48, v47);
}

uint64_t sub_1005E8D3C()
{
  v1 = sub_100140278(&qword_1008F52C8, &qword_1006FE598);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6[-v3];
  v7 = v0;
  sub_100140278(&qword_1008F52D0, &qword_1006FE5A0);
  sub_1005E937C();
  List<>.init(content:)();
  LocalizedStringKey.init(stringLiteral:)();
  sub_10014A6B0(&qword_1008F5300, &qword_1008F52C8, &qword_1006FE598, &protocol conformance descriptor for List<A, B>);
  View.navigationTitle(_:)();

  return (*(v2 + 8))(v4, v1);
}

void *sub_1005E8FD4(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceRecord();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  if (a1 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
LABEL_16:
    v25 = OBJC_IVAR___CHInferenceRecordController_inferenceClient;
    v26 = type metadata accessor for InferenceClient();
    v34[3] = v26;
    v34[4] = &protocol witness table for InferenceClient;
    v27 = sub_100005994(v34);
    (*(*(v26 - 8) + 16))(v27, a2 + v25, v26);
    v33 = v12;
    v28 = objc_allocWithZone(sub_100140278(&qword_1008F52C0, &qword_1006FE4F8));
    return UIHostingController.init(rootView:)();
  }

  v33 = _swiftEmptyArrayStorage;
  result = sub_100186530(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v30 = a2;
    v12 = v33;
    v14 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      v31 = v5 + 32;
      v32 = (v5 + 16);
      do
      {
        v16 = v14;
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        (*v32)(v10, v17 + OBJC_IVAR___CHInferenceRecordBridge_inferenceRecord, v4);
        swift_unknownObjectRelease();
        v33 = v12;
        v19 = v12[2];
        v18 = v12[3];
        if (v19 >= v18 >> 1)
        {
          sub_100186530((v18 > 1), v19 + 1, 1);
          v12 = v33;
        }

        ++v15;
        v12[2] = v19 + 1;
        (*(v5 + 32))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v10, v4);
        v14 = v16;
      }

      while (v11 != v15);
    }

    else
    {
      v20 = (a1 + 32);
      v21 = *(v5 + 16);
      v32 = (v5 + 32);
      do
      {
        v21(v7, *v20 + OBJC_IVAR___CHInferenceRecordBridge_inferenceRecord, v4);
        v33 = v12;
        v22 = v4;
        v24 = v12[2];
        v23 = v12[3];
        if (v24 >= v23 >> 1)
        {
          sub_100186530((v23 > 1), v24 + 1, 1);
          v12 = v33;
        }

        v12[2] = v24 + 1;
        (*(v5 + 32))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, v7, v22);
        ++v20;
        --v11;
        v4 = v22;
      }

      while (v11);
    }

    a2 = v30;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_1005E937C()
{
  result = qword_1008F52D8;
  if (!qword_1008F52D8)
  {
    sub_100141EEC(&qword_1008F52D0, &qword_1006FE5A0);
    sub_1005E9400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F52D8);
  }

  return result;
}

unint64_t sub_1005E9400()
{
  result = qword_1008F52E0;
  if (!qword_1008F52E0)
  {
    sub_100141EEC(&qword_1008F52E8, &qword_1006FE5A8);
    sub_10014A6B0(&qword_1008F52F0, &qword_1008F52F8, &qword_1006FE5B0, &protocol conformance descriptor for NavigationLink<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F52E0);
  }

  return result;
}

uint64_t sub_1005E9514(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1005E955C()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_100926088 = result;
  return result;
}

void *sub_1005E9598(void *a1)
{
  if (qword_1008DAEF0 != -1)
  {
    swift_once();
  }

  v2 = qword_100926088;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 dictionaryForKey:v3];

  if (!v4)
  {
    v21 = static os_log_type_t.default.getter();
    v22 = HKLogWorkouts;
    v38 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "ChartableMetrics for all activity types not present in user defaults. Will use system defaults.", 95, 2, _swiftEmptyArrayStorage);

    return v38;
  }

  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [a1 uniqueIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!*(v5 + 16))
  {

    goto LABEL_10;
  }

  v10 = sub_100066F20(v7, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_10:

    v23 = static os_log_type_t.default.getter();
    v24 = HKLogWorkouts;
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1006D46C0;
    *(v25 + 56) = sub_1000059F8(0, &qword_1008E1768, FIUIWorkoutActivityType_ptr);
    *(v25 + 64) = sub_1005EA300();
    *(v25 + 32) = a1;
    v26 = a1;
    v27 = v24;
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v27, "ChartableMetrics for activity type not present in user defaults. Will use system defaults. activity_type=%@", 107, 2, v25);

    return _swiftEmptyArrayStorage;
  }

  sub_10000B1B4(*(v5 + 56) + 32 * v10, v44);

  sub_1001AA76C(v44, &v45);
  v13 = objc_opt_self();
  sub_1000066AC(&v45, v46);
  v14 = _bridgeAnythingToObjectiveC<A>(_:)();
  *&v44[0] = 0;
  v15 = [v13 dataWithPropertyList:v14 format:100 options:0 error:v44];
  swift_unknownObjectRelease();
  v16 = *&v44[0];
  if (!v15)
  {
    v28 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v29 = static os_log_type_t.error.getter();
    v30 = HKLogWorkouts;
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1006D1F70;
    *(v31 + 56) = sub_1000059F8(0, &qword_1008E1768, FIUIWorkoutActivityType_ptr);
    *(v31 + 64) = sub_1005EA300();
    *(v31 + 32) = a1;
    swift_getErrorValue();
    v32 = a1;
    v33 = v30;
    v34 = Error.errorDescription.getter();
    v36 = v35;
    *(v31 + 96) = &type metadata for String;
    *(v31 + 104) = sub_10000A788();
    *(v31 + 72) = v34;
    *(v31 + 80) = v36;
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v33, "Failed to decode ChartableMetrics for activityType=%@. Will use system defaults. error=%@", 89, 2, v31);

    sub_100005A40(&v45);
    return _swiftEmptyArrayStorage;
  }

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v20 = sub_100140278(&qword_1008F1958, &qword_1006F7400);
  sub_1005EA3CC(&qword_1008F5348, sub_1005EA444, &protocol conformance descriptor for <A> [A]);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v38 = *&v44[0];
  v39 = static os_log_type_t.default.getter();
  v40 = HKLogWorkouts;
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1006D1F70;
  *(v41 + 56) = v20;
  *(v41 + 64) = sub_1005EA368();
  *(v41 + 32) = v38;
  *(v41 + 96) = sub_1000059F8(0, &qword_1008E1768, FIUIWorkoutActivityType_ptr);
  *(v41 + 104) = sub_1005EA300();
  *(v41 + 72) = a1;
  v42 = v40;

  v43 = a1;
  os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v42, "Successfully read user chartableMetrics=%@ for activityType=%@", 62, 2, v41);

  sub_10000AF88(v17, v19);
  sub_100005A40(&v45);
  return v38;
}

void *sub_1005E9B90(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(NSMutableOrderedSet) init];
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      if (sub_100357560(v7, a2))
      {
        [v4 addObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
      }

      --v5;
    }

    while (v5);
  }

  sub_10019FFC4(a2);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 addObjectsFromArray:isa];

  v9 = [v4 array];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = sub_1001A00BC(v10);

  return v11;
}

uint64_t sub_1005E9CE0(uint64_t a1, void *a2, __n128 a3)
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v45[0] = a1;
  v5 = sub_100140278(&qword_1008F1958, &qword_1006F7400);
  sub_1005EA3CC(&qword_1008F5328, sub_1005EA2AC, &protocol conformance descriptor for <A> [A]);
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v8 = v7;

  v18 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v44[0] = 0;
  v20 = [v18 propertyListWithData:isa options:0 format:0 error:v44];

  v21 = *&v44[0];
  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    if (qword_1008DAEF0 != -1)
    {
      swift_once();
    }

    v22 = qword_100926088;
    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 dictionaryForKey:v23];

    if (v24)
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      sub_1002FC244(_swiftEmptyArrayStorage);
    }

    v26 = [a2 uniqueIdentifier];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    sub_10000B1B4(v45, v44);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1004910A8(v44, v27, v29, isUniquelyReferenced_nonNull_native);

    v31 = qword_100926088;
    v32 = Dictionary._bridgeToObjectiveC()().super.isa;

    v33 = String._bridgeToObjectiveC()();
    [v31 setObject:v32 forKey:v33];

    v34 = qword_100926088;
    v35 = objc_opt_self();
    v36 = v34;
    v37 = [v35 standardUserDefaults];
    sub_1000059F8(0, &qword_1008E6E18, NSUserDefaults_ptr);
    LOBYTE(v33) = static NSObject.== infix(_:_:)();

    if (v33)
    {
      v38 = String._bridgeToObjectiveC()();
      [v35 fu_backupStandardUserDefaultsKey:v38];
    }

    v39 = static os_log_type_t.default.getter();
    v40 = HKLogWorkouts;
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1006D1F70;
    *(v41 + 56) = sub_1000059F8(0, &qword_1008E1768, FIUIWorkoutActivityType_ptr);
    *(v41 + 64) = sub_1005EA300();
    *(v41 + 32) = a2;
    *(v41 + 96) = v5;
    *(v41 + 104) = sub_1005EA368();
    *(v41 + 72) = a1;
    v42 = v40;
    v43 = a2;

    os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v42, "Saved ChartableMetrics to user defaults for activityType=%@ chartableMetrics=%@", 79, 2, v41);
    sub_10000AF88(v6, v8);

    return sub_100005A40(v45);
  }

  else
  {
    v25 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10000AF88(v6, v8);
    v9 = static os_log_type_t.error.getter();
    v10 = HKLogWorkouts;
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1006D1F70;
    *(v11 + 56) = sub_1000059F8(0, &qword_1008E1768, FIUIWorkoutActivityType_ptr);
    *(v11 + 64) = sub_1005EA300();
    *(v11 + 32) = a2;
    swift_getErrorValue();
    v12 = a2;
    v13 = v10;
    v14 = Error.errorDescription.getter();
    v16 = v15;
    *(v11 + 96) = &type metadata for String;
    *(v11 + 104) = sub_10000A788();
    *(v11 + 72) = v14;
    *(v11 + 80) = v16;
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v13, "Failed to encode and save ChartableMetrics for activityType=%@. error=%@", 72, 2, v11);
  }
}

unint64_t sub_1005EA2AC()
{
  result = qword_1008F5330;
  if (!qword_1008F5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5330);
  }

  return result;
}

unint64_t sub_1005EA300()
{
  result = qword_1008F5338;
  if (!qword_1008F5338)
  {
    sub_1000059F8(255, &qword_1008E1768, FIUIWorkoutActivityType_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5338);
  }

  return result;
}

unint64_t sub_1005EA368()
{
  result = qword_1008F5340;
  if (!qword_1008F5340)
  {
    sub_100141EEC(&qword_1008F1958, &qword_1006F7400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5340);
  }

  return result;
}

uint64_t sub_1005EA3CC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(&qword_1008F1958, &qword_1006F7400);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005EA444()
{
  result = qword_1008F5350;
  if (!qword_1008F5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5350);
  }

  return result;
}

unint64_t sub_1005EA49C()
{
  result = qword_1008F5358;
  if (!qword_1008F5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5358);
  }

  return result;
}

unint64_t sub_1005EA4F4()
{
  result = qword_1008F5360;
  if (!qword_1008F5360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5360);
  }

  return result;
}

uint64_t sub_1005EA57C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100202054;

  return sub_1005EAA00(a1);
}

uint64_t sub_1005EA624(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  type metadata accessor for Date();
  *(v2 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1005EA6B4, 0, 0);
}

uint64_t sub_1005EA6B4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100140278(&qword_1008DF230, &unk_1006D8FF0);
  v3 = *(type metadata accessor for ActivityRingEntity(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006D46C0;
  Date.init()();
  sub_1005739C8(v1, v5 + v4);
  *v2 = v5;

  v6 = v0[1];

  return v6();
}

unint64_t sub_1005EA7CC()
{
  result = qword_1008F5368;
  if (!qword_1008F5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5368);
  }

  return result;
}

uint64_t sub_1005EA854(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ActivityRingEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005EA89C()
{
  result = qword_1008F5370;
  if (!qword_1008F5370)
  {
    sub_100141EEC(&qword_1008F5378, qword_1006FE638);
    sub_1005EA854(&qword_1008F3060, &unk_1006F9F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5370);
  }

  return result;
}

uint64_t sub_1005EA93C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100572584();
  *v5 = v2;
  v5[1] = sub_10002BACC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1005EAA00(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = *(type metadata accessor for ActivityRingEntity(0) - 8);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1005EAB30, 0, 0);
}

uint64_t sub_1005EAB30()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v22 = (v3 + 32);
    v23 = v0[3];
    v20 = (v3 + 8);
    v21 = (v3 + 16);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 40;
    do
    {
      v7 = qword_1008DAE28;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = qword_100925EC8;
      v9 = String._bridgeToObjectiveC()();

      v10 = [v8 dateFromString:v9];

      if (v10)
      {
        v12 = v0[8];
        v11 = v0[9];
        v13 = v0[7];
        v15 = v0[4];
        v14 = v0[5];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*v22)(v11, v12, v14);
        (*v21)(v13, v11, v14);
        sub_1005739C8(v13, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1001A3AE8(0, v4[2] + 1, 1, v4);
        }

        v17 = v4[2];
        v16 = v4[3];
        if (v17 >= v16 >> 1)
        {
          v4 = sub_1001A3AE8((v16 > 1), v17 + 1, 1, v4);
        }

        v6 = v0[4];
        (*v20)(v0[9], v0[5]);
        v4[2] = v17 + 1;
        sub_1005777F4(v6, v4 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v17);
      }

      v5 += 16;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v18 = v0[1];

  return v18(v4);
}

uint64_t sub_1005EADD8(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.startIndex.getter();
    v9 = v8;
    v10 = __CocoaSet.endIndex.getter();
    v12 = v11;
    v13 = static __CocoaSet.Index.== infix(_:_:)();
    sub_100453590(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_100453590(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v7 = _HashTable.startBucket.getter();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1005F09D8(v7, v9, v6 != 0, a1, a2, a3);
  v16 = v15;
  sub_100453590(v7, v9, v6 != 0);
  return v16;
}

uint64_t sub_1005EAF0C(void *a1)
{
  v2 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  sub_1005EB210(a1, v8);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1005F2C44;
  *(v13 + 24) = v12;
  (*(v3 + 16))(v5, v8, v2);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = (v4 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v3 + 32))(v16 + v14, v5, v2);
  v17 = (v16 + v15);
  *v17 = sub_100173A14;
  v17[1] = v13;
  Promise.init(asyncOperation:)();
  v18 = *(v3 + 8);
  v18(v8, v2);
  v19 = Promise.operation.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  v19(sub_100173F20, v20);

  return (v18)(v11, v2);
}

double sub_1005EB1B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1005EFE14();
  }

  return result;
}

uint64_t sub_1005EB210@<X0>(void *a1@<X0>, uint64_t x8_0@<X8>)
{
  v5 = type metadata accessor for NavigationAnnotation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v13._countAndFlagsBits = 0xD00000000000001DLL;
  v13._object = 0x8000000100766310;
  v14._object = 0x8000000100766330;
  v14._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v13, v14);
  (*(v10 + 8))(v12, v9);
  v15 = [a1 userActivities];
  sub_1000059F8(0, &qword_1008F5538, NSUserActivity_ptr);
  sub_10001D4A8(&unk_1008F5540, &qword_1008F5538, NSUserActivity_ptr);
  v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = sub_1005EADD8(v16, &qword_1008F5538, NSUserActivity_ptr);

  if (v17)
  {
    sub_100140278(&unk_1008F2040, &qword_1006F8890);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1006D46C0;
    static NavigationAnnotation.appLaunch.getter();
    v28 = v18;
    sub_1005F0BF0(&qword_1008F2370, &type metadata accessor for NavigationAnnotation, &protocol conformance descriptor for NavigationAnnotation);
    sub_100140278(&qword_1008F2020, &unk_1006F8878);
    sub_100282B7C(&qword_1008F2380, &qword_1008F2020, &unk_1006F8878);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_1005ED2BC(v17, v8, x8_0);
  }

  else
  {
    v19 = [a1 URLContexts];
    sub_1000059F8(0, &qword_1008F2028, UIOpenURLContext_ptr);
    sub_10001D4A8(&qword_1008F2030, &qword_1008F2028, UIOpenURLContext_ptr);
    v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = sub_1005EADD8(v20, &qword_1008F2028, UIOpenURLContext_ptr);

    if (!v21)
    {
      v24 = type metadata accessor for NavigationError();
      sub_1005F0BF0(&qword_1008F54E8, &type metadata accessor for NavigationError, &protocol conformance descriptor for NavigationError);
      v25 = swift_allocError();
      (*(*(v24 - 8) + 104))(v26, enum case for NavigationError.noNavigation(_:), v24);
      *(swift_allocObject() + 16) = v25;
      return Promise.init(synchronousOperation:)();
    }

    sub_100140278(&unk_1008F2040, &qword_1006F8890);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1006D46C0;
    static NavigationAnnotation.appLaunch.getter();
    v28 = v22;
    sub_1005F0BF0(&qword_1008F2370, &type metadata accessor for NavigationAnnotation, &protocol conformance descriptor for NavigationAnnotation);
    sub_100140278(&qword_1008F2020, &unk_1006F8878);
    sub_100282B7C(&qword_1008F2380, &qword_1008F2020, &unk_1006F8878);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_1005EE14C(v21, v8, x8_0);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1005EB798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a1;
  v104 = a2;
  v91 = type metadata accessor for NavigationSource();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for NavigationPriority();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v88 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for NavigationRoutingBehavior();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v84 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for NavigationIntent();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v79 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for NavigationRequest();
  v87 = *(v100 - 8);
  __chkstk_darwin(v100);
  v81 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v7;
  __chkstk_darwin(v8);
  v83 = &v71 - v9;
  v102 = type metadata accessor for NavigationResource();
  v82 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v71 - v12;
  v74 = sub_100140278(&unk_1008F5520, &qword_1006F0738);
  v73 = *(v74 - 8);
  v14 = *(v73 + 64);
  __chkstk_darwin(v74);
  v71 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v72 = &v71 - v16;
  v103 = type metadata accessor for NavigationAnnotation();
  v96 = *(v103 - 8);
  v17 = *(v96 + 64);
  __chkstk_darwin(v103);
  v92 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v105 = &v71 - v19;
  v99 = sub_100140278(qword_1008F2390, &qword_1006F8C40);
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v95 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v20;
  __chkstk_darwin(v21);
  v97 = &v71 - v22;
  v23 = type metadata accessor for TrainerTipsGalleryNavigationBegan();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  TrainerTipsGalleryNavigationBegan.init()();
  sub_1005F0BF0(&unk_1008F4F90, &type metadata accessor for TrainerTipsGalleryNavigationBegan, &protocol conformance descriptor for TrainerTipsGalleryNavigationBegan);
  dispatch thunk of EventHubProtocol.publish<A>(_:)();
  (*(v24 + 8))(v26, v23);
  v106 = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = [Strong navigateToSeymourTab];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v28)
      {
        goto LABEL_4;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v45 = type metadata accessor for NavigationError();
    sub_1005F0BF0(&qword_1008F54E8, &type metadata accessor for NavigationError, &protocol conformance descriptor for NavigationError);
    v46 = swift_allocError();
    (*(*(v45 - 8) + 104))(v47, enum case for NavigationError.tabUnavailable(_:), v45);
    *(swift_allocObject() + 16) = v46;
    return Promise.init(synchronousOperation:)();
  }

LABEL_4:
  sub_1000066AC((v106 + 88), *(v106 + 112));
  dispatch thunk of MetricSceneLifecycleReporting.reportDidSelectTab()();
  v29 = v105;
  static NavigationAnnotation.tabSwitch.getter();
  v30 = *(v93 + 8);
  if (v30)
  {
    v31 = *(v93 + 24);
    v32 = *(v93 + 32);
    v33 = *(v93 + 16);
    *v13 = *v93;
    *(v13 + 1) = v30;
    v13[16] = v33;
    *(v13 + 3) = v31;
    *(v13 + 4) = v32;
    v34 = v82;
    v35 = v102;
    (*(v82 + 104))(v13, enum case for NavigationResource.trainerTipsEditorialGallery(_:), v102);
    (*(v34 + 16))(v101, v13, v35);
    v36 = v79;
    *v79 = 1;
    (*(v75 + 104))(v36, enum case for NavigationIntent.push(_:), v76);
    (*(v77 + 104))(v84, enum case for NavigationRoutingBehavior.takeover(_:), v78);
    (*(v85 + 104))(v88, enum case for NavigationPriority.takeover(_:), v86);
    v37 = v96;
    (*(v96 + 16))(v92, v29, v103);
    (*(v89 + 104))(v90, enum case for NavigationSource.default(_:), v91);

    v38 = v83;
    NavigationRequest.init(resource:intent:source:routingBehavior:priority:annotation:)();
    v39 = v87;
    v40 = v81;
    v41 = v100;
    (*(v87 + 16))(v81, v38, v100);
    v42 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v43 = swift_allocObject();
    (*(v39 + 32))(v43 + v42, v40, v41);
    v44 = v97;
    Promise.init(synchronousOperation:)();
    (*(v39 + 8))(v38, v41);
    (*(v34 + 8))(v13, v102);
    (*(v37 + 8))(v105, v103);
  }

  else
  {
    sub_100140278(&qword_1008ED278, &unk_1006F08A0);
    Dependencies.resolve<A>(failureHandler:)();
    sub_100140278(&qword_1008F5530, &unk_1006FDC60);
    Dependencies.resolve<A>(failureHandler:)();
    sub_1000066AC(v109, v109[3]);
    v49 = v72;
    dispatch thunk of CatalogClientProtocol.fetchRemoteExploreTrainerTipShelfLockupDescriptor()();
    sub_100007C5C(&v108, &v107);
    v50 = v96;
    v51 = v92;
    v52 = v103;
    (*(v96 + 16))(v92, v29, v103);
    v53 = (*(v50 + 80) + 56) & ~*(v50 + 80);
    v54 = swift_allocObject();
    sub_1001AB740(&v107, v54 + 16);
    (*(v50 + 32))(v54 + v53, v51, v52);
    v55 = swift_allocObject();
    *(v55 + 16) = sub_1005F2D2C;
    *(v55 + 24) = v54;
    v56 = v73;
    v57 = v71;
    v58 = v74;
    (*(v73 + 16))(v71, v49, v74);
    v59 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v60 = (v14 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    (*(v56 + 32))(v61 + v59, v57, v58);
    v62 = (v61 + v60);
    *v62 = sub_1005F2D28;
    v62[1] = v55;
    v44 = v97;
    Promise.init(asyncOperation:)();
    (*(v56 + 8))(v49, v58);
    sub_100005A40(&v108);
    (*(v50 + 8))(v105, v52);
    sub_100005A40(v109);
  }

  v63 = v98;
  v64 = v95;
  v65 = v99;
  (*(v98 + 16))(v95, v44, v99);
  v66 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v67 = (v94 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  (*(v63 + 32))(v68 + v66, v64, v65);
  v69 = (v68 + v67);
  v70 = v106;
  *v69 = sub_1005F2A80;
  v69[1] = v70;

  Promise.init(asyncOperation:)();
  return (*(v63 + 8))(v44, v65);
}

uint64_t sub_1005EC5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v83 = type metadata accessor for NavigationSource();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for NavigationPriority();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v80 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for NavigationRoutingBehavior();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v75 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for NavigationIntent();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for NavigationRequest();
  v79 = *(v86 - 8);
  __chkstk_darwin(v86);
  v73 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v7;
  __chkstk_darwin(v8);
  v77 = &v57 - v9;
  v87 = type metadata accessor for NavigationResource();
  v74 = *(v87 - 8);
  __chkstk_darwin(v87);
  v66 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v57 - v12;
  v65 = sub_100140278(&unk_1008F5520, &qword_1006F0738);
  v64 = *(v65 - 8);
  v14 = *(v64 + 64);
  __chkstk_darwin(v65);
  v62 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v63 = &v57 - v16;
  v17 = type metadata accessor for NavigationAnnotation();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v57 - v22;
  v24 = type metadata accessor for URL();
  v25 = __chkstk_darwin(v24);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27, a1, v25);
  v29 = v88;
  sub_1002DF3E4(v27, *(v88 + 128), &v93);
  v30 = v94;
  if (v94 == 1)
  {
    swift_getObjectType();
    sub_1005ED1E4(v31);
    AMSBagProtocol.makeNavigationRequest(with:annotation:)();
    return (*(v18 + 8))(v20, v17);
  }

  else
  {
    v60 = v18;
    v84 = v17;
    v59 = v93;
    v58 = v95;
    v57 = v96;
    v61 = v97;
    sub_1000066AC((v29 + 88), *(v29 + 112));
    dispatch thunk of MetricSceneLifecycleReporting.reportDidSelectTab()();
    v85 = v23;
    static NavigationAnnotation.tabSwitch.getter();
    if (v30)
    {
      *v13 = v59;
      *(v13 + 1) = v30;
      v13[16] = v58;
      v33 = v61;
      *(v13 + 3) = v57;
      *(v13 + 4) = v33;
      v34 = v74;
      v35 = v87;
      (*(v74 + 104))(v13, enum case for NavigationResource.trainerTipsEditorialGallery(_:), v87);
      (*(v34 + 16))(v66, v13, v35);
      v36 = v71;
      *v71 = 1;
      (*(v67 + 104))(v36, enum case for NavigationIntent.push(_:), v68);
      (*(v69 + 104))(v75, enum case for NavigationRoutingBehavior.takeover(_:), v70);
      (*(v76 + 104))(v80, enum case for NavigationPriority.takeover(_:), v78);
      v37 = v60;
      (*(v60 + 16))(v20, v85, v84);
      (*(v81 + 104))(v82, enum case for NavigationSource.default(_:), v83);

      v38 = v77;
      NavigationRequest.init(resource:intent:source:routingBehavior:priority:annotation:)();
      v39 = v79;
      v40 = v73;
      v41 = v86;
      (*(v79 + 16))(v73, v38, v86);
      v42 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v43 = swift_allocObject();
      (*(v39 + 32))(v43 + v42, v40, v41);
      Promise.init(synchronousOperation:)();
      sub_10000EA04(&v93, &unk_1008F5510, &qword_1006FE7E0);
      (*(v39 + 8))(v38, v41);
      (*(v34 + 8))(v13, v87);
      return (*(v37 + 8))(v85, v84);
    }

    else
    {
      sub_100140278(&qword_1008ED278, &unk_1006F08A0);
      Dependencies.resolve<A>(failureHandler:)();
      sub_100140278(&qword_1008F5530, &unk_1006FDC60);
      Dependencies.resolve<A>(failureHandler:)();
      sub_1000066AC(v92, v92[3]);
      v44 = v63;
      dispatch thunk of CatalogClientProtocol.fetchRemoteExploreTrainerTipShelfLockupDescriptor()();
      sub_100007C5C(&v91, &v90);
      v45 = v60;
      v46 = v84;
      (*(v60 + 16))(v20, v85, v84);
      v47 = (*(v45 + 80) + 56) & ~*(v45 + 80);
      v48 = swift_allocObject();
      sub_1001AB740(&v90, v48 + 16);
      (*(v45 + 32))(v48 + v47, v20, v46);
      v49 = swift_allocObject();
      *(v49 + 16) = sub_1005F2940;
      *(v49 + 24) = v48;
      v50 = v64;
      v51 = v62;
      v52 = v65;
      (*(v64 + 16))(v62, v44, v65);
      v53 = (*(v50 + 80) + 16) & ~*(v50 + 80);
      v54 = (v14 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
      v55 = swift_allocObject();
      (*(v50 + 32))(v55 + v53, v51, v52);
      v56 = (v55 + v54);
      *v56 = sub_1005F2958;
      v56[1] = v49;
      Promise.init(asyncOperation:)();
      (*(v50 + 8))(v44, v52);
      sub_100005A40(&v91);
      (*(v45 + 8))(v85, v46);
      return sub_100005A40(v92);
    }
  }
}

uint64_t sub_1005ED1E4(__n128 a1)
{
  type metadata accessor for NavigationAnnotation();
  sub_1005F0BF0(&qword_1008F2370, &type metadata accessor for NavigationAnnotation, &protocol conformance descriptor for NavigationAnnotation);
  sub_100140278(&qword_1008F2020, &unk_1006F8878);
  sub_100282B7C(&qword_1008F2380, &qword_1008F2020, &unk_1006F8878);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1005ED2BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v79 = a2;
  v81 = a3;
  v7 = type metadata accessor for NavigationAnnotation();
  v74 = *(v7 - 8);
  v75 = v7;
  __chkstk_darwin(v7);
  v72 = v8;
  v73 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(qword_1008F2390, &qword_1006F8C40);
  v76 = *(v9 - 8);
  v77 = v9;
  v10 = *(v76 + 64);
  __chkstk_darwin(v9);
  v70 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v71 = &v63 - v12;
  __chkstk_darwin(v13);
  v80 = &v63 - v14;
  v15 = type metadata accessor for URL();
  v78 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v63 - v19;
  __chkstk_darwin(v21);
  v23 = &v63 - v22;
  sub_1000066AC((v4 + 144), *(v4 + 168));
  if ((dispatch thunk of SiriUserActivityHandling.canHandleActivity(_:)() & 1) == 0)
  {
    v25 = [a1 webpageURL];
    v26 = v81;
    v27 = a1;
    if (v25)
    {
      v28 = v25;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = v78;
      v78[4](v23, v20, v15);
      v29[2](v17, v23, v15);
      sub_1002DF3E4(v17, *(v5 + 128), &v82);
      if (v83 != 1)
      {
        v86[0] = v82;
        v86[1] = v83;
        v87 = v84;
        v88 = v85;
        sub_1005EB798(v86, v26);
        sub_10000EA04(&v82, &unk_1008F5510, &qword_1006FE7E0);
        return (v29[1])(v23, v15);
      }

      (v29[1])(v23, v15);
    }

    v30 = [v27 activityType];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
    {
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v35 & 1) == 0)
      {
        sub_1005F2358(v27);
        v60 = type metadata accessor for NavigationError();
        sub_1005F0BF0(&qword_1008F54E8, &type metadata accessor for NavigationError, &protocol conformance descriptor for NavigationError);
        v61 = swift_allocError();
        (*(*(v60 - 8) + 104))(v62, enum case for NavigationError.tabUnavailable(_:), v60);
        *(swift_allocObject() + 16) = v61;
        return Promise.init(synchronousOperation:)();
      }
    }

    swift_getObjectType();
    v36 = v71;
    v69 = v5;
    AMSBagProtocol.makeNavigationRequest(with:annotation:)();
    v37 = swift_allocObject();
    *(v37 + 16) = v5;
    *(v37 + 24) = v27;
    v38 = v76;
    v39 = *(v76 + 16);
    v68 = v76 + 16;
    v78 = v39;
    v40 = v70;
    v41 = v77;
    (v39)(v70, v36, v77);
    v42 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v67 = *(v38 + 80);
    v43 = v10 + v42;
    v44 = v42;
    v66 = v42;
    v45 = (v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = v45;
    v46 = swift_allocObject();
    v65 = *(v38 + 32);
    v65(v46 + v44, v40, v41);
    v47 = (v46 + v45);
    *v47 = sub_1005F2670;
    v47[1] = v37;
    type metadata accessor for NavigationRequest();
    v48 = v69;

    v70 = v27;
    Promise.init(asyncOperation:)();
    v76 = *(v38 + 8);
    (v76)(v36, v41);
    v49 = v73;
    v50 = v74;
    v51 = v75;
    (*(v74 + 16))(v73, v79, v75);
    v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = v48;
    v54 = v70;
    *(v53 + 24) = v70;
    (*(v50 + 32))(v53 + v52, v49, v51);
    v55 = v80;
    (v78)(v36, v80, v41);
    v56 = v64;
    v57 = swift_allocObject();
    v65(v57 + v66, v36, v41);
    v58 = (v57 + v56);
    *v58 = sub_1005F2744;
    v58[1] = v53;

    v59 = v54;
    Promise.init(asyncOperation:)();
    return (v76)(v55, v41);
  }

  return sub_1005EFAF8(a1);
}

uint64_t sub_1005EDACC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v23 = a4;
  v24 = type metadata accessor for NavigationRequest();
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v24);
  v8 = type metadata accessor for TrainerTipsGalleryNavigationBegan();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  if (NavigationRequest.isTrainerTipsGalleryRequest.getter())
  {
    swift_getObjectType();
    TrainerTipsGalleryNavigationBegan.init()();
    sub_1005F0BF0(&unk_1008F4F90, &type metadata accessor for TrainerTipsGalleryNavigationBegan, &protocol conformance descriptor for TrainerTipsGalleryNavigationBegan);
    dispatch thunk of EventHubProtocol.publish<A>(_:)();
    (*(v9 + 8))(v11, v8);
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_6;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v13 = [Strong navigateToSeymourTab];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v13)
  {
LABEL_8:
    sub_1005F2358(v21);
    v17 = type metadata accessor for NavigationError();
    sub_1005F0BF0(&qword_1008F54E8, &type metadata accessor for NavigationError, &protocol conformance descriptor for NavigationError);
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, enum case for NavigationError.tabUnavailable(_:), v17);
    *(swift_allocObject() + 16) = v18;
    return Promise.init(synchronousOperation:)();
  }

LABEL_6:
  sub_1000066AC(a2 + 11, a2[14]);
  dispatch thunk of MetricSceneLifecycleReporting.reportContinueUserActivity()();
  v14 = v24;
  (*(v6 + 16))(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v24);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v15, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  return Promise.init(synchronousOperation:)();
}

uint64_t sub_1005EDE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a4;
  v31 = a5;
  v28 = a3;
  v7 = type metadata accessor for NavigationRequest();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v29 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v10 = *(v29 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v29);
  v27 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  sub_1000066AC((a2 + 48), *(a2 + 72));
  AppCoordinator.navigateToUserActivity(_:annotation:)();
  v15 = a1;
  v16 = v7;
  (*(v8 + 16))(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v7);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v8 + 32))(v18 + v17, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v19 = v27;
  v20 = v29;
  (*(v10 + 16))(v27, v14, v29);
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = (v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v10 + 32))(v23 + v21, v19, v20);
  v24 = (v23 + v22);
  *v24 = sub_1005F2D68;
  v24[1] = v18;

  Promise.init(asyncOperation:)();
  return (*(v10 + 8))(v14, v20);
}

uint64_t sub_1005EE14C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a3;
  v109 = a2;
  v5 = type metadata accessor for NavigationAnnotation();
  v112 = *(v5 - 8);
  v113 = v5;
  __chkstk_darwin(v5);
  v103 = v6;
  v111 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_100140278(qword_1008F2390, &qword_1006F8C40);
  v114 = *(v105 - 8);
  v7 = *(v114 + 64);
  __chkstk_darwin(v105);
  v101 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v102 = &v93 - v9;
  __chkstk_darwin(v10);
  v110 = &v93 - v11;
  v12 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v107 = *(v12 - 8);
  v108 = v12;
  v13 = *(v107 + 64);
  __chkstk_darwin(v12);
  v104 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v106 = &v93 - v15;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v93 - v21;
  *&v24 = __chkstk_darwin(v23).n128_u64[0];
  v26 = &v93 - v25;
  v27 = a1;
  v28 = [a1 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = URL.scheme.getter();
  v31 = v30;
  v117 = *(v17 + 8);
  v117(v26, v16);
  v32 = static OpenLinkConstants.scheme.getter();
  if (!v31)
  {

    goto LABEL_11;
  }

  if (v29 == v32 && v31 == v33)
  {
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v35 = [v27 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = URL.host.getter();
  v38 = v37;
  v117(v22, v16);
  v39 = static OpenLinkConstants.multiUserHost.getter();
  if (v38)
  {
    if (v36 == v39 && v38 == v40)
    {

LABEL_14:
      v47 = v115;
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_17:
        sub_1000066AC((v47 + 48), *(v47 + 72));
        v50 = [v27 URL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v122[0] = _swiftEmptyArrayStorage;
        sub_1005F0BF0(&qword_1008F2370, &type metadata accessor for NavigationAnnotation, &protocol conformance descriptor for NavigationAnnotation);
        sub_100140278(&qword_1008F2020, &unk_1006F8878);
        sub_100282B7C(&qword_1008F2380, &qword_1008F2020, &unk_1006F8878);
        v51 = v111;
        v52 = v113;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        AppCoordinator.navigateToURL(_:annotation:)();
        (*(v112 + 8))(v51, v52);
        return (v117)(v19, v16);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v49 = [Strong navigateToSeymourTab];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v49)
        {
          goto LABEL_17;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

LABEL_11:
      v41 = [v27 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1005F1164(v19);
      v117(v19, v16);
      v42 = type metadata accessor for NavigationError();
      sub_1005F0BF0(&qword_1008F54E8, &type metadata accessor for NavigationError, &protocol conformance descriptor for NavigationError);
      v43 = swift_allocError();
      (*(*(v42 - 8) + 104))(v44, enum case for NavigationError.tabUnavailable(_:), v42);
      *(swift_allocObject() + 16) = v43;
      return Promise.init(synchronousOperation:)();
    }

    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v46)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v53 = [v27 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v54 = v115;
  sub_1002DF3E4(v19, *(v115 + 128), &v118);
  if (v119 == 1)
  {
    swift_getObjectType();
    v55 = v102;
    AMSBagProtocol.makeNavigationRequest(with:annotation:)();
    v56 = swift_allocObject();
    *(v56 + 16) = v54;
    *(v56 + 24) = v27;
    v94 = v27;
    v57 = v114;
    v58 = *(v114 + 16);
    v100 = v114 + 16;
    v117 = v58;
    v59 = v101;
    v60 = v105;
    (v58)(v101, v55, v105);
    v61 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v99 = *(v57 + 80);
    v97 = v61;
    v62 = (v7 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = v62;
    v63 = swift_allocObject();
    v96 = *(v57 + 32);
    v98 = v57 + 32;
    v64 = v63 + v61;
    v65 = v60;
    v96(v64, v59, v60);
    v66 = (v63 + v62);
    *v66 = sub_1005F2594;
    v66[1] = v56;
    type metadata accessor for NavigationRequest();
    v67 = v54;

    v68 = v94;
    Promise.init(asyncOperation:)();
    v69 = *(v57 + 8);
    v114 = v57 + 8;
    v101 = v69;
    (v69)(v55, v65);
    v71 = v111;
    v70 = v112;
    v72 = v113;
    (*(v112 + 16))(v111, v109, v113);
    v73 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = v67;
    *(v74 + 24) = v68;
    (*(v70 + 32))(v74 + v73, v71, v72);
    v75 = v55;
    v76 = v55;
    v77 = v110;
    v78 = v65;
    (v117)(v76, v110, v65);
    v79 = v95;
    v80 = swift_allocObject();
    v96(v80 + v97, v75, v78);
    v81 = (v80 + v79);
    *v81 = sub_1005F25C4;
    v81[1] = v74;

    v82 = v68;
    v83 = v106;
    Promise.init(asyncOperation:)();
    (v101)(v77, v78);
    v84 = swift_allocObject();
    *(v84 + 16) = v67;
    *(v84 + 24) = v82;
    v86 = v107;
    v85 = v108;
    v87 = v104;
    (*(v107 + 16))(v104, v83, v108);
    v88 = (*(v86 + 80) + 16) & ~*(v86 + 80);
    v89 = (v13 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
    v90 = swift_allocObject();
    (*(v86 + 32))(v90 + v88, v87, v85);
    v91 = (v90 + v89);
    *v91 = sub_1005F2604;
    v91[1] = v84;

    v92 = v82;
    Promise.init(asyncOperation:)();
    return (*(v86 + 8))(v83, v85);
  }

  else
  {
    v122[0] = v118;
    v122[1] = v119;
    v123 = v120;
    v124 = v121;
    sub_1005EB798(v122, v116);
    return sub_10000EA04(&v118, &unk_1008F5510, &qword_1006FE7E0);
  }
}

uint64_t sub_1005EEE30(uint64_t a1, void *a2, void *a3)
{
  v26 = a3;
  v5 = type metadata accessor for URL();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v27 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NavigationRequest();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v30 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TrainerTipsGalleryNavigationBegan();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  if (NavigationRequest.isTrainerTipsGalleryRequest.getter())
  {
    v25[1] = a2[5];
    swift_getObjectType();
    TrainerTipsGalleryNavigationBegan.init()();
    sub_1005F0BF0(&unk_1008F4F90, &type metadata accessor for TrainerTipsGalleryNavigationBegan, &protocol conformance descriptor for TrainerTipsGalleryNavigationBegan);
    dispatch thunk of EventHubProtocol.publish<A>(_:)();
    (*(v11 + 8))(v13, v10);
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_6;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v15 = [Strong navigateToSeymourTab];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_8:
    v19 = [v26 URL];
    v20 = v27;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1005F1164(v20);
    (*(v28 + 8))(v20, v29);
    v21 = type metadata accessor for NavigationError();
    sub_1005F0BF0(&qword_1008F54E8, &type metadata accessor for NavigationError, &protocol conformance descriptor for NavigationError);
    v22 = swift_allocError();
    (*(*(v21 - 8) + 104))(v23, enum case for NavigationError.tabUnavailable(_:), v21);
    *(swift_allocObject() + 16) = v22;
    return Promise.init(synchronousOperation:)();
  }

LABEL_6:
  sub_1000066AC(a2 + 11, a2[14]);
  dispatch thunk of MetricSceneLifecycleReporting.reportOpenURLContexts()();
  v16 = v30;
  (*(v8 + 16))(v30, v31, v7);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v17, v16, v7);
  return Promise.init(synchronousOperation:)();
}

uint64_t sub_1005EF2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v35 = a1;
  v36 = a5;
  v34 = type metadata accessor for NavigationRequest();
  v7 = *(v34 - 8);
  v33 = *(v7 + 64);
  __chkstk_darwin(v34);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for URL();
  v9 = *(v29 - 8);
  __chkstk_darwin(v29);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v12 = *(v30 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v30);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  sub_1000066AC((a2 + 48), *(a2 + 72));
  v18 = [a3 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  AppCoordinator.navigateToURL(_:annotation:)();
  (*(v9 + 8))(v11, v29);
  v19 = v31;
  v20 = v34;
  (*(v7 + 16))(v31, v35, v34);
  v21 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  (*(v7 + 32))(v22 + v21, v19, v20);
  v23 = v30;
  (*(v12 + 16))(v14, v17, v30);
  v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v25 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  (*(v12 + 32))(v26 + v24, v14, v23);
  v27 = (v26 + v25);
  *v27 = sub_1005F263C;
  v27[1] = v22;

  Promise.init(asyncOperation:)();
  return (*(v12 + 8))(v17, v23);
}

uint64_t sub_1005EF638@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v36 = a3;
  v6 = type metadata accessor for NavigationAnnotation();
  v35 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v12 = *(v34 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v34);
  v31 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v29 = &v28 - v15;
  v30 = a1;
  sub_1000066AC((a1 + 48), *(a1 + 72));
  v16 = [a2 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = _swiftEmptyArrayStorage;
  sub_1005F0BF0(&qword_1008F2370, &type metadata accessor for NavigationAnnotation, &protocol conformance descriptor for NavigationAnnotation);
  sub_100140278(&qword_1008F2020, &unk_1006F8878);
  sub_100282B7C(&qword_1008F2380, &qword_1008F2020, &unk_1006F8878);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = v29;
  AppCoordinator.navigateToURL(_:annotation:)();
  (*(v35 + 8))(v8, v6);
  (*(v32 + 8))(v11, v33);
  v18 = swift_allocObject();
  v19 = v30;
  *(v18 + 16) = sub_1005F260C;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1001CE888;
  *(v20 + 24) = v18;
  v21 = v31;
  v22 = v17;
  v23 = v34;
  (*(v12 + 16))(v31, v17, v34);
  v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v25 = swift_allocObject();
  (*(v12 + 32))(v25 + v24, v21, v23);
  v26 = (v25 + ((v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_1001CE8A4;
  v26[1] = v20;

  Promise.init(asyncOperation:)();
  return (*(v12 + 8))(v22, v23);
}

uint64_t sub_1005EFA7C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong navigateToSeymourTab];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005EFAF8(void *a1)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_4:
    sub_1000066AC((v1 + 144), *(v1 + 168));
    dispatch thunk of SiriUserActivityHandling.handleActivity(_:)();

    return static Promise<>.success.getter();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = [Strong navigateToSeymourTab];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_1005F2358(a1);
  v6 = type metadata accessor for NavigationError();
  sub_1005F0BF0(&qword_1008F54E8, &type metadata accessor for NavigationError, &protocol conformance descriptor for NavigationError);
  v7 = swift_allocError();
  (*(*(v6 - 8) + 104))(v8, enum case for NavigationError.tabUnavailable(_:), v6);
  *(swift_allocObject() + 16) = v7;

  return Promise.init(synchronousOperation:)();
}

void sub_1005EFCBC(uint64_t a1)
{
  v2 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = [objc_opt_self() defaultWorkspace];
  if (v5)
  {
    v6 = v5;
    sub_1005BE4A8(a1, v4);
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    v10 = 0;
    if ((*(v8 + 48))(v4, 1, v7) != 1)
    {
      URL._bridgeToObjectiveC()(v9);
      v10 = v11;
      (*(v8 + 8))(v4, v7);
    }

    [v6 openSensitiveURL:v10 withOptions:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005EFE14()
{
  v1 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v61 = *(v1 - 8);
  __chkstk_darwin(v1);
  v60 = &v38 - v2;
  v3 = type metadata accessor for NavigationRoutingBehavior();
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin(v3);
  v56 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for NavigationSource();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for NavigationAnnotation();
  v45 = *(v50 - 8);
  __chkstk_darwin(v50);
  v52 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for NavigationPriority();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v48 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for NavigationIntent();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for NavigationResource();
  v9 = *(v40 - 8);
  __chkstk_darwin(v40);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for NavigationRequest();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v47 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SeymourAvailabilityManager.State(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ContentAvailability();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v38 - v21;
  v59 = v0;
  v23 = *(v0 + 136);
  if (v23)
  {
    v39 = v1;
    v24 = OBJC_IVAR____TtC10FitnessApp26SeymourAvailabilityManager_state;
    swift_beginAccess();
    sub_1001B3F54(v23 + v24, v15);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      return sub_1001B3FB8(v15);
    }

    (*(v17 + 32))(v22, v15, v16);
    (*(v17 + 104))(v19, enum case for ContentAvailability.available(_:), v16);
    sub_1005F0BF0(&qword_1008F54E0, &type metadata accessor for ContentAvailability, &protocol conformance descriptor for ContentAvailability);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v64 == v62 && v65 == v63)
    {
      v26 = *(v17 + 8);
      v26(v19, v16);
      v26(v22, v16);

      v1 = v39;
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v28 = *(v17 + 8);
      v28(v19, v16);
      v28(v22, v16);

      v1 = v39;
      if ((v27 & 1) == 0)
      {
        return result;
      }
    }
  }

  v29 = v59;
  sub_1000066AC((v59 + 88), *(v59 + 112));
  dispatch thunk of MetricSceneLifecycleReporting.reportDefaultLaunch()();
  v30 = enum case for NavigationRootResourceState.automatic(_:);
  v31 = type metadata accessor for NavigationRootResourceState();
  (*(*(v31 - 8) + 104))(v11, v30, v31);
  (*(v9 + 104))(v11, enum case for NavigationResource.root(_:), v40);
  v32 = v46;
  *v46 = 0;
  (*(v41 + 104))(v32, enum case for NavigationIntent.reset(_:), v42);
  (*(v43 + 104))(v48, enum case for NavigationPriority.takeover(_:), v44);
  sub_100140278(&unk_1008F2040, &qword_1006F8890);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1006D46C0;
  static NavigationAnnotation.appLaunch.getter();
  v64 = v33;
  sub_1005F0BF0(&qword_1008F2370, &type metadata accessor for NavigationAnnotation, &protocol conformance descriptor for NavigationAnnotation);
  sub_100140278(&qword_1008F2020, &unk_1006F8878);
  sub_100282B7C(&qword_1008F2380, &qword_1008F2020, &unk_1006F8878);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v53 + 104))(v54, enum case for NavigationSource.default(_:), v55);
  (*(v57 + 104))(v56, enum case for NavigationRoutingBehavior.default(_:), v58);
  v34 = v47;
  NavigationRequest.init(resource:intent:source:routingBehavior:priority:annotation:)();
  sub_1000066AC((v29 + 48), *(v29 + 72));
  v35 = v60;
  AppCoordinator.navigateToRequest(_:)();
  v36 = Promise.operation.getter();
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  v36(sub_100173A1C, v37);

  (*(v61 + 8))(v35, v1);
  return (*(v49 + 8))(v34, v51);
}

uint64_t sub_1005F0828()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_100005A40((v0 + 48));
  sub_100005A40((v0 + 88));

  sub_100005A40((v0 + 144));
  sub_1000A7304(v0 + 184);

  return swift_deallocClassInstance();
}

unint64_t sub_1005F08BC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  sub_100140278(&unk_1008EE6B0, &qword_1006D58A0);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  if (a3 < 1)
  {
    return sub_10000EA04(a4, &qword_1008F5550, qword_1006FE7E8);
  }

  result = sub_100007C5C(a4, v10);
  if (a3 == 1)
  {
    return sub_10000EA04(a4, &qword_1008F5550, qword_1006FE7E8);
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1005F09D8(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1000059F8(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000059F8(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

uint64_t sub_1005F0BF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_1005F0C38(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
    }
  }

  return result;
}

unint64_t sub_1005F0CAC(unint64_t result, uint64_t a2, uint64_t a3)
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
  v14 = 24 * v12;
  v15 = v13 + 24 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_1005F0D80(char *result, uint64_t a2, uint64_t a3)
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

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
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

void sub_1005F0E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for WorkoutDurationMetrics();
  swift_arrayDestroy();
  v13 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      v14 = v5[2];
      v15 = v14 - v7;
      if (!__OFSUB__(v14, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    v20 = _CocoaArrayWrapper.endIndex.getter();
    v15 = v20 - v7;
    if (!__OFSUB__(v20, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v19 = v5[2];
      }

      if (!__OFADD__(v19, v11))
      {
        v5[2] = v19 + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }
}

unint64_t sub_1005F0F44(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 72 * result;
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

  result = v8 + 72 * a3;
  v13 = (v7 + 32 + 72 * a2);
  if (result != v13 || result >= v13 + 72 * v12)
  {
    result = memmove(result, v13, 72 * v12);
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

unint64_t sub_1005F101C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for URLQueryItem();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_1005F1164(uint64_t (*a1)(void, void, void))
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v114 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for DispatchQoS();
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for DispatchQoS.QoSClass();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for URL();
  v103 = *(v116 - 8);
  __chkstk_darwin(v116);
  v102 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for Logger();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v117 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  v106 = *(v9 - 8);
  __chkstk_darwin(v9);
  v108 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v92 - v12);
  v107 = v14;
  __chkstk_darwin(v15);
  v121 = &v92 - v16;
  v129 = type metadata accessor for URLQueryItem();
  v127 = *(v129 - 8);
  __chkstk_darwin(v129);
  v118 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v119 = &v92 - v19;
  __chkstk_darwin(v20);
  v120 = &v92 - v21;
  __chkstk_darwin(v22);
  v128 = &v92 - v23;
  __chkstk_darwin(v24);
  v26 = &v92 - v25;
  v27 = sub_100140278(&unk_1008EAF30, &qword_1006DE210);
  __chkstk_darwin(v27 - 8);
  v29 = &v92 - v28;
  v124 = type metadata accessor for URLComponents();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = URL.host.getter();
  v33 = v32;
  v34 = static NavigationConstants.host.getter();
  if (v33)
  {
    v97 = v9;
    v98 = v3;
    if (v31 == v34 && v33 == v35)
    {
    }

    else
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v36 & 1) == 0)
      {
        return;
      }
    }

    sub_100140278(&unk_1008F54F0, &qword_1006D7B50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006D64F0;
    *(inited + 32) = static NavigationConstants.sharingURLScheme.getter();
    *(inited + 40) = v38;
    *(inited + 48) = static NavigationConstants.secureSharingURLScheme.getter();
    *(inited + 56) = v39;
    *(inited + 64) = static OpenLinkConstants.scheme.getter();
    *(inited + 72) = v40;
    aBlock = URL.scheme.getter();
    v132 = v41;
    __chkstk_darwin(aBlock);
    *(&v92 - 2) = &aBlock;
    v42 = sub_100321F8C(sub_100288EB8, (&v92 - 4), inited);
    swift_setDeallocating();
    sub_100140278(&qword_1008DC8F8, &qword_1006D50B0);
    swift_arrayDestroy();

    if (v42)
    {
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      v43 = v123;
      v44 = v124;
      if ((*(v123 + 48))(v29, 1, v124) == 1)
      {
        sub_10000EA04(v29, &unk_1008EAF30, &qword_1006DE210);
        return;
      }

      v96 = v2;
      (*(v43 + 32))(v122, v29, v44);
      v45 = URLComponents.queryItems.getter();
      if (v45)
      {
        v46 = v45;
      }

      else
      {
        v46 = _swiftEmptyArrayStorage;
      }

      v47 = *(v46 + 2);
      if (v47)
      {
        v48 = 0;
        v49 = (v127 + 8);
        v50 = 29548;
        v51 = v129;
        v100 = a1;
        v99 = v13;
        v126 = v127 + 16;
        while (1)
        {
          p_aBlock = *(v46 + 2);
          if (v48 >= p_aBlock)
          {
            __break(1u);
            goto LABEL_60;
          }

          v101 = (*(v127 + 80) + 32) & ~*(v127 + 80);
          v125 = *(v127 + 72);
          a1 = *(v127 + 16);
          a1(v26, &v46[v101 + v125 * v48], v51);
          if (URLQueryItem.name.getter() == 29548 && v53 == 0xE200000000000000)
          {
            break;
          }

          v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v13 = *v49;
          v51 = v129;
          (*v49)(v26, v129);
          if (v54)
          {
            goto LABEL_26;
          }

          ++v48;
          a1 = v100;
          v13 = v99;
          if (v47 == v48)
          {
            v26 = *(v46 + 2);
            v48 = v26;
            goto LABEL_24;
          }
        }

        v13 = *v49;
        v51 = v129;
        (*v49)(v26, v129);
LABEL_26:
        v26 = v48 + 1;
        p_aBlock = *(v46 + 2);
        if (p_aBlock - 1 == v48)
        {
          v50 = v117;
          v47 = v116;
          a1 = v100;
          v13 = v99;
          goto LABEL_46;
        }

        v93 = (v127 + 40);
        v47 = v101 + v125 * v26;
        v50 = 29548;
        v94 = v49;
        while (v26 < p_aBlock)
        {
          a1(v128, &v46[v47], v51);
          if (URLQueryItem.name.getter() == 29548 && v55 == 0xE200000000000000)
          {

            v51 = v129;
            v13(v128, v129);
          }

          else
          {
            v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v51 = v129;
            v13(v128, v129);
            if ((v56 & 1) == 0)
            {
              if (v26 != v48)
              {
                if (v48 < 0)
                {
                  __break(1u);
LABEL_66:
                  __break(1u);
LABEL_67:
                  __break(1u);
LABEL_68:
                  __break(1u);
                  return;
                }

                v57 = *(v46 + 2);
                if (v48 >= v57)
                {
                  goto LABEL_66;
                }

                v58 = v48 * v125;
                v59 = v129;
                a1(v119, &v46[v101 + v48 * v125], v129);
                if (v26 >= v57)
                {
                  goto LABEL_67;
                }

                v95 = v58;
                a1(v118, &v46[v47], v59);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v46 = sub_10057F6D0(v46);
                }

                v60 = *v93;
                v51 = v129;
                (*v93)(&v46[v101 + v95], v118, v129);
                if (v26 >= *(v46 + 2))
                {
                  goto LABEL_68;
                }

                v60(&v46[v47], v119, v51);
                v50 = 29548;
              }

              ++v48;
            }
          }

          ++v26;
          p_aBlock = *(v46 + 2);
          v47 += v125;
          if (v26 == p_aBlock)
          {
            v50 = v117;
            v47 = v116;
            a1 = v100;
            p_aBlock = &aBlock;
            v13 = v99;
            if (v26 < v48)
            {
              goto LABEL_61;
            }

            if (v48 < 0)
            {
              goto LABEL_62;
            }

            goto LABEL_46;
          }
        }

LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
      }

      else
      {
        v26 = 0;
        v48 = 0;
LABEL_24:
        v50 = v117;
        v47 = v116;
LABEL_46:
        p_aBlock = v48 - v26;
        v51 = v48;
        if (!__OFADD__(v26, v48 - v26))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v137 = v46;
          if (!isUniquelyReferenced_nonNull_native || v48 > *(v46 + 3) >> 1)
          {
            if (v26 <= v48)
            {
              v62 = v48;
            }

            else
            {
              v62 = v26;
            }

            v46 = sub_1001A3980(isUniquelyReferenced_nonNull_native, v62, 1, v46);
            v137 = v46;
          }

          sub_1005F101C(v48, v26, 0);
          URLQueryItem.init(name:value:)();
          v51 = *(v46 + 2);
          p_aBlock = *(v46 + 3);
          v26 = v51 + 1;
          if (v51 < p_aBlock >> 1)
          {
            goto LABEL_54;
          }

          goto LABEL_64;
        }
      }

      __break(1u);
LABEL_64:
      v46 = sub_1001A3980((p_aBlock > 1), v26, 1, v46);
LABEL_54:
      v63 = v102;
      *(v46 + 2) = v26;
      (*(v127 + 32))(&v46[((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v51], v120, v129);
      URLComponents.queryItems.setter();
      static NavigationConstants.secureSharingURLScheme.getter();
      URLComponents.scheme.setter();
      v64 = v121;
      URLComponents.url.getter();
      static Log.engagement.getter();
      v65 = v103;
      (*(v103 + 16))(v63, a1, v47);
      sub_1005BE4A8(v64, v13);
      v66 = Logger.logObject.getter();
      v67 = v63;
      v68 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v66, v68))
      {
        v69 = v65;
        v70 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v70 = 136315394;
        sub_1005F0BF0(&unk_1008F5500, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v72 = v47;
        v74 = v73;
        (*(v69 + 8))(v67, v72);
        v75 = sub_10000AFDC(v71, v74, &aBlock);

        *(v70 + 4) = v75;
        *(v70 + 12) = 2080;
        v76 = Optional.description.getter();
        v78 = v77;
        sub_10000EA04(v13, &unk_1008EB5B0, &unk_1006D2BF0);
        v79 = sub_10000AFDC(v76, v78, &aBlock);

        *(v70 + 14) = v79;
        _os_log_impl(&_mh_execute_header, v66, v68, "Tab hidden, launching URL as fallback: %s, normalized URL %s", v70, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10000EA04(v13, &unk_1008EB5B0, &unk_1006D2BF0);
        (*(v65 + 8))(v67, v47);
      }

      (*(v104 + 8))(v50, v105);
      v80 = v96;
      v81 = v111;
      v82 = v110;
      v83 = v109;
      v84 = v108;
      sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
      (*(v82 + 104))(v83, enum case for DispatchQoS.QoSClass.default(_:), v81);
      v85 = static OS_dispatch_queue.global(qos:)();
      (*(v82 + 8))(v83, v81);
      v86 = v121;
      sub_1005BE4A8(v121, v84);
      v87 = (*(v106 + 80) + 16) & ~*(v106 + 80);
      v88 = swift_allocObject();
      sub_1005BE518(v84, v88 + v87);
      v135 = sub_1005F2528;
      v136 = v88;
      aBlock = _NSConcreteStackBlock;
      v132 = 1107296256;
      v133 = sub_1000449A8;
      v134 = &unk_1008635C8;
      v89 = _Block_copy(&aBlock);
      v90 = v112;
      static DispatchQoS.unspecified.getter();
      v130 = _swiftEmptyArrayStorage;
      sub_1005F0BF0(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100140278(&unk_1008E7F50, &qword_1006D8190);
      sub_100282B7C(&qword_1008E33C0, &unk_1008E7F50, &qword_1006D8190);
      v91 = v114;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v89);

      (*(v98 + 8))(v91, v80);
      (*(v113 + 8))(v90, v115);
      sub_10000EA04(v86, &unk_1008EB5B0, &unk_1006D2BF0);
      (*(v123 + 8))(v122, v124);
    }
  }

  else
  {
  }
}

id sub_1005F2358(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v19 - v8;
  v10 = [a1 activityType];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      return result;
    }
  }

  result = [a1 webpageURL];
  if (result)
  {
    v18 = result;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v9, v5, v2);
    sub_1005F1164(v9);
    return (*(v3 + 8))(v9, v2);
  }

  return result;
}

void sub_1005F2528()
{
  v1 = *(sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1005EFCBC(v2);
}

uint64_t sub_1005F2678(__n128 a1)
{
  v2 = type metadata accessor for NavigationAnnotation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1005F275C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), __n128 a3)
{
  v5 = *(type metadata accessor for NavigationAnnotation() - 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a2(a1, v6, v7, v8);
}

uint64_t sub_1005F27F4()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1005F28B8()
{
  type metadata accessor for NavigationRequest();
  sub_1000066AC((*(v0 + 16) + 48), *(*(v0 + 16) + 72));
  return AppCoordinator.navigateToRequest(_:)();
}

uint64_t sub_1005F2988()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1005F2ACC(__n128 a1)
{
  v2 = type metadata accessor for NavigationAnnotation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v3 + 64);
  sub_100005A40((v1 + 16));
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1005F2C60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_100140278(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t type metadata accessor for TrainingLoadInfoPaneDetailView(uint64_t a1)
{
  result = qword_1008F55B0;
  if (!qword_1008F55B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005F2DFC(uint64_t a1)
{
  sub_10017B148(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1005F2E84@<X0>(__int128 **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v81[0] = **a1;
  v6 = v3[2];
  v5 = v3[3];
  v7 = *(v3 + 57);
  v81[1] = v3[1];
  *(v82 + 9) = v7;
  v81[2] = v6;
  v82[0] = v5;
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  *(&__src[3] + 9) = *(v3 + 57);
  __src[3] = v11;
  __src[1] = v9;
  __src[2] = v10;
  __src[0] = v8;
  v83[0] = *v4;
  v12 = v4[1];
  v13 = v4[2];
  v14 = v4[3];
  *(v84 + 9) = *(v4 + 57);
  v83[2] = v13;
  v84[0] = v14;
  v83[1] = v12;
  v15 = *v4;
  v16 = v4[1];
  v17 = v4[2];
  v18 = v4[3];
  *(&__src[8] + 9) = *(v4 + 57);
  __src[7] = v17;
  __src[8] = v18;
  __src[5] = v15;
  __src[6] = v16;
  v19 = a1[2];
  v20 = a1[3];
  v85[0] = *v19;
  v22 = v19[2];
  v21 = v19[3];
  v23 = v19[1];
  *(v86 + 9) = *(v19 + 57);
  v85[2] = v22;
  v86[0] = v21;
  v85[1] = v23;
  v24 = *v19;
  v25 = v19[1];
  v26 = v19[2];
  v27 = v19[3];
  *(&__src[13] + 9) = *(v19 + 57);
  __src[12] = v26;
  __src[13] = v27;
  __src[10] = v24;
  __src[11] = v25;
  v87[0] = *v20;
  v29 = v20[2];
  v28 = v20[3];
  v30 = *(v20 + 57);
  v87[1] = v20[1];
  *(v88 + 9) = v30;
  v87[2] = v29;
  v88[0] = v28;
  v31 = v20[2];
  v32 = v20[3];
  *(&__src[18] + 9) = *(v20 + 57);
  v34 = *v20;
  v33 = v20[1];
  v35 = a1[4];
  v36 = a1[5];
  v89[0] = *v35;
  v38 = v35[2];
  v37 = v35[3];
  v39 = v35[1];
  *(v90 + 9) = *(v35 + 57);
  v89[2] = v38;
  v90[0] = v37;
  v89[1] = v39;
  *(&__src[23] + 9) = *(v35 + 57);
  __src[17] = v31;
  __src[18] = v32;
  __src[15] = v34;
  __src[16] = v33;
  v40 = v35[3];
  v42 = *v35;
  v41 = v35[1];
  __src[22] = v35[2];
  __src[23] = v40;
  __src[20] = v42;
  __src[21] = v41;
  v91[0] = *v36;
  v44 = v36[2];
  v43 = v36[3];
  v45 = v36[1];
  *(v92 + 9) = *(v36 + 57);
  v91[2] = v44;
  v92[0] = v43;
  v91[1] = v45;
  v46 = v36[2];
  v47 = v36[3];
  *(&__src[28] + 9) = *(v36 + 57);
  v49 = *v36;
  v48 = v36[1];
  __src[27] = v46;
  __src[28] = v47;
  __src[25] = v49;
  __src[26] = v48;
  v50 = a1[6];
  v51 = a1[7];
  v93[0] = *v50;
  v53 = v50[2];
  v52 = v50[3];
  v54 = *(v50 + 57);
  v93[1] = v50[1];
  *(v94 + 9) = v54;
  v93[2] = v53;
  v94[0] = v52;
  v55 = v50[2];
  v56 = v50[3];
  *(&__src[33] + 9) = *(v50 + 57);
  v58 = *v50;
  v57 = v50[1];
  __src[32] = v55;
  __src[33] = v56;
  __src[30] = v58;
  __src[31] = v57;
  v95[0] = *v51;
  v60 = v51[2];
  v59 = v51[3];
  v61 = v51[1];
  *(v96 + 9) = *(v51 + 57);
  v95[2] = v60;
  v96[0] = v59;
  v95[1] = v61;
  v62 = v51[2];
  v63 = v51[3];
  *(&__src[38] + 9) = *(v51 + 57);
  v65 = *v51;
  v64 = v51[1];
  __src[37] = v62;
  __src[38] = v63;
  __src[35] = v65;
  __src[36] = v64;
  v66 = a1[8];
  v67 = a1[9];
  v97[0] = *v66;
  v69 = v66[2];
  v68 = v66[3];
  v70 = v66[1];
  *(v98 + 9) = *(v66 + 57);
  v97[2] = v69;
  v98[0] = v68;
  v97[1] = v70;
  v71 = v66[2];
  v72 = v66[3];
  *(&__src[43] + 9) = *(v66 + 57);
  v74 = *v66;
  v73 = v66[1];
  __src[42] = v71;
  __src[43] = v72;
  __src[40] = v74;
  __src[41] = v73;
  v75 = *v67;
  v79 = *(v67 + 8);
  v76 = v79;
  memcpy(a2, __src, 0x2D0uLL);
  *(a2 + 720) = v75;
  *(a2 + 728) = v76;
  sub_10001B104(v81, v78, &qword_1008DC4C0, &unk_1006D4960);
  sub_10001B104(v83, v78, &qword_1008DC4C0, &unk_1006D4960);
  sub_10001B104(v85, v78, &qword_1008DC4C0, &unk_1006D4960);
  sub_10001B104(v87, v78, &qword_1008DC4C0, &unk_1006D4960);
  sub_10001B104(v89, v78, &qword_1008DC4C0, &unk_1006D4960);
  sub_10001B104(v91, v78, &qword_1008DC4C0, &unk_1006D4960);
  sub_10001B104(v93, v78, &qword_1008DC4C0, &unk_1006D4960);
  sub_10001B104(v95, v78, &qword_1008DC4C0, &unk_1006D4960);
  return sub_10001B104(v97, v78, &qword_1008DC4C0, &unk_1006D4960);
}

uint64_t sub_1005F31D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008F5600, &qword_1006FE898);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - v7;
  v9 = sub_100140278(&qword_1008F55F8, &qword_1006FE890);
  v10 = *(v9 - 8);
  v37 = v9;
  v38 = v10;
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v13 = sub_100140278(&qword_1008F55F0, &qword_1006FE888);
  v14 = *(v13 - 8);
  v39 = v13;
  v40 = v14;
  __chkstk_darwin(v13);
  v16 = &v37 - v15;
  static Axis.Set.vertical.getter();
  sub_100140278(&qword_1008F5610, &qword_1006FE8B0);
  sub_1005F558C();
  ScrollView.init(_:showsIndicators:content:)();
  v45 = a1;
  v17 = sub_100140278(&qword_1008F0478, &unk_1006FE8A0);
  v18 = sub_10014A6B0(&qword_1008F5608, &qword_1008F5600, &qword_1006FE898, &protocol conformance descriptor for ScrollView<A>);
  v19 = sub_100141EEC(&qword_1008F0500, &qword_1006F5658);
  v20 = sub_10014A6B0(&qword_1008F0508, &qword_1008F0500, &qword_1006F5658, &protocol conformance descriptor for ToolbarItem<A, B>);
  v46 = v19;
  v47 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  (*(v6 + 8))(v8, v5);
  v22 = [objc_opt_self() mainBundle];
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 localizedStringForKey:v23 value:0 table:0];

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v50 = v25;
  v51 = v27;
  v46 = v5;
  v47 = v17;
  v48 = v18;
  v49 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = sub_10000FCBC();
  v30 = v37;
  View.navigationTitle<A>(_:)();

  v31 = v30;
  (*(v38 + 8))(v12, v30);
  v32 = v41;
  v33 = v42;
  v34 = v43;
  (*(v42 + 104))(v41, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v43);
  v46 = v31;
  v47 = &type metadata for String;
  v48 = v28;
  v49 = v29;
  swift_getOpaqueTypeConformance2();
  v35 = v39;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v33 + 8))(v32, v34);
  return (*(v40 + 8))(v16, v35);
}

void *sub_1005F3730@<X0>(uint64_t a2@<X8>)
{
  v3 = static HorizontalAlignment.leading.getter();
  v27 = 0;
  sub_1005F3894(__src);
  memcpy(__dst, __src, 0x2D9uLL);
  memcpy(v29, __src, 0x2D9uLL);
  sub_10001B104(__dst, &v24, &qword_1008F5640, &unk_1006FE908);
  sub_10000EA04(v29, &qword_1008F5640, &unk_1006FE908);
  memcpy(&v26[7], __dst, 0x2D9uLL);
  v4 = v27;
  v5 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  LOBYTE(__src[0]) = 0;
  v14 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  result = memcpy((a2 + 17), v26, 0x2E0uLL);
  *(a2 + 760) = v5;
  *(a2 + 768) = v7;
  *(a2 + 776) = v9;
  *(a2 + 784) = v11;
  *(a2 + 792) = v13;
  *(a2 + 800) = 0;
  *(a2 + 808) = v14;
  *(a2 + 816) = v16;
  *(a2 + 824) = v18;
  *(a2 + 832) = v20;
  *(a2 + 840) = v22;
  *(a2 + 848) = 0;
  return result;
}

uint64_t sub_1005F3894@<X0>(uint64_t a1@<X8>)
{
  v290 = a1;
  v1 = type metadata accessor for Font.Leading();
  v2 = *(v1 - 8);
  v296 = v1;
  v297 = v2;
  __chkstk_darwin(v1);
  v295 = &v231 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = objc_opt_self();
  v4 = [v299 mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 localizedStringForKey:v5 value:0 table:0];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v338 = v7;
  v339 = v9;
  v298 = sub_10000FCBC();
  v10 = Text.init<A>(_:)();
  v12 = v11;
  LOBYTE(v6) = v13;
  static Font.body.getter();
  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;

  sub_10004642C(v10, v12, v6 & 1);

  LODWORD(v338) = static HierarchicalShapeStyle.secondary.getter();
  v19 = Text.foregroundStyle<A>(_:)();
  v288 = v20;
  v289 = v19;
  LOBYTE(v10) = v21;
  v287 = v22;
  sub_10004642C(v14, v16, v18 & 1);

  v286 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v283 = v24;
  v284 = v23;
  v281 = v26;
  v282 = v25;
  v285 = v10 & 1;
  LOBYTE(v338) = v10 & 1;
  LOBYTE(v364[0]) = 0;
  v27 = [v299 mainBundle];
  v28 = String._bridgeToObjectiveC()();
  v29 = [v27 localizedStringForKey:v28 value:0 table:0];

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v338 = v30;
  v339 = v32;
  v33 = Text.init<A>(_:)();
  v35 = v34;
  v37 = v36;
  static Font.body.getter();
  v292 = enum case for Font.Leading.tight(_:);
  v39 = v296;
  v38 = v297;
  v40 = *(v297 + 104);
  v293 = v297 + 104;
  v294 = v40;
  v41 = v295;
  v40(v295);
  Font.leading(_:)();

  v42 = *(v38 + 8);
  v297 = v38 + 8;
  v291 = v42;
  v42(v41, v39);
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v43 = Text.font(_:)();
  v45 = v44;
  LOBYTE(v41) = v46;

  sub_10004642C(v33, v35, v37 & 1);

  v338 = static Color.white.getter();
  v47 = Text.foregroundStyle<A>(_:)();
  v279 = v48;
  v280 = v47;
  LOBYTE(v30) = v49;
  v278 = v50;
  sub_10004642C(v43, v45, v41 & 1);

  v277 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v274 = v52;
  v275 = v51;
  v272 = v54;
  v273 = v53;
  v276 = v30 & 1;
  LOBYTE(v338) = v30 & 1;
  LOBYTE(v364[0]) = 0;
  v55 = [v299 mainBundle];
  v56 = String._bridgeToObjectiveC()();
  v57 = [v55 localizedStringForKey:v56 value:0 table:0];

  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  v338 = v58;
  v339 = v60;
  v61 = Text.init<A>(_:)();
  v63 = v62;
  LOBYTE(v57) = v64;
  static Font.body.getter();
  v65 = Text.font(_:)();
  v67 = v66;
  v69 = v68;

  sub_10004642C(v61, v63, v57 & 1);

  LODWORD(v338) = static HierarchicalShapeStyle.secondary.getter();
  v70 = Text.foregroundStyle<A>(_:)();
  v265 = v71;
  v266 = v70;
  LOBYTE(v61) = v72;
  v264 = v73;
  sub_10004642C(v65, v67, v69 & 1);

  v271 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v269 = v75;
  v270 = v74;
  v267 = v77;
  v268 = v76;
  v263 = v61 & 1;
  LOBYTE(v338) = v61 & 1;
  LOBYTE(v364[0]) = 0;
  v78 = [v299 mainBundle];
  v79 = String._bridgeToObjectiveC()();
  v80 = [v78 localizedStringForKey:v79 value:0 table:0];

  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  v338 = v81;
  v339 = v83;
  v84 = Text.init<A>(_:)();
  v86 = v85;
  v88 = v87;
  static Font.body.getter();
  v90 = v295;
  v89 = v296;
  v294(v295, v292, v296);
  Font.leading(_:)();

  v291(v90, v89);
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v91 = Text.font(_:)();
  v93 = v92;
  LOBYTE(v90) = v94;

  sub_10004642C(v84, v86, v88 & 1);

  v338 = static Color.white.getter();
  v95 = Text.foregroundStyle<A>(_:)();
  v261 = v96;
  v262 = v95;
  LOBYTE(v81) = v97;
  v260 = v98;
  sub_10004642C(v91, v93, v90 & 1);

  v259 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v257 = v100;
  v258 = v99;
  v255 = v102;
  v256 = v101;
  v254 = v81 & 1;
  LOBYTE(v338) = v81 & 1;
  LOBYTE(v364[0]) = 0;
  v103 = [v299 mainBundle];
  v104 = String._bridgeToObjectiveC()();
  v105 = [v103 localizedStringForKey:v104 value:0 table:0];

  v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v108 = v107;

  v338 = v106;
  v339 = v108;
  v109 = Text.init<A>(_:)();
  v111 = v110;
  LOBYTE(v105) = v112;
  static Font.body.getter();
  v113 = Text.font(_:)();
  v115 = v114;
  v117 = v116;

  sub_10004642C(v109, v111, v105 & 1);

  LODWORD(v338) = static HierarchicalShapeStyle.secondary.getter();
  v118 = Text.foregroundStyle<A>(_:)();
  v252 = v119;
  v253 = v118;
  LOBYTE(v109) = v120;
  v251 = v121;
  sub_10004642C(v113, v115, v117 & 1);

  v250 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v248 = v123;
  v249 = v122;
  v246 = v125;
  v247 = v124;
  v245 = v109 & 1;
  LOBYTE(v338) = v109 & 1;
  LOBYTE(v364[0]) = 0;
  v126 = [v299 mainBundle];
  v127 = String._bridgeToObjectiveC()();
  v128 = [v126 localizedStringForKey:v127 value:0 table:0];

  v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v131 = v130;

  v338 = v129;
  v339 = v131;
  v132 = Text.init<A>(_:)();
  v134 = v133;
  v136 = v135;
  static Font.body.getter();
  v138 = v295;
  v137 = v296;
  v294(v295, v292, v296);
  Font.leading(_:)();

  v291(v138, v137);
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v139 = Text.font(_:)();
  v141 = v140;
  LOBYTE(v138) = v142;

  sub_10004642C(v132, v134, v136 & 1);

  v338 = static Color.white.getter();
  v143 = Text.foregroundStyle<A>(_:)();
  v243 = v144;
  v244 = v143;
  LOBYTE(v129) = v145;
  v242 = v146;
  sub_10004642C(v139, v141, v138 & 1);

  v241 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v239 = v148;
  v240 = v147;
  v237 = v150;
  v238 = v149;
  v236 = v129 & 1;
  LOBYTE(v338) = v129 & 1;
  LOBYTE(v364[0]) = 0;
  v151 = [v299 mainBundle];
  v152 = String._bridgeToObjectiveC()();
  v153 = [v151 localizedStringForKey:v152 value:0 table:0];

  v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v156 = v155;

  v338 = v154;
  v339 = v156;
  v157 = Text.init<A>(_:)();
  v159 = v158;
  LOBYTE(v153) = v160;
  static Font.body.getter();
  v161 = Text.font(_:)();
  v163 = v162;
  v165 = v164;

  sub_10004642C(v157, v159, v153 & 1);

  LODWORD(v338) = static HierarchicalShapeStyle.secondary.getter();
  v166 = Text.foregroundStyle<A>(_:)();
  v234 = v167;
  v235 = v166;
  LOBYTE(v157) = v168;
  v233 = v169;
  sub_10004642C(v161, v163, v165 & 1);

  v232 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v171 = v170;
  v173 = v172;
  v175 = v174;
  v177 = v176;
  v231 = v157 & 1;
  LOBYTE(v338) = v157 & 1;
  LOBYTE(v364[0]) = 0;
  v178 = [v299 mainBundle];
  v179 = String._bridgeToObjectiveC()();
  v180 = [v178 localizedStringForKey:v179 value:0 table:0];

  v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v183 = v182;

  v338 = v181;
  v339 = v183;
  v184 = Text.init<A>(_:)();
  v186 = v185;
  LOBYTE(v178) = v187;
  static Font.body.getter();
  v188 = v295;
  v189 = v296;
  v294(v295, v292, v296);
  Font.leading(_:)();

  v291(v188, v189);
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v190 = Text.font(_:)();
  v192 = v191;
  LOBYTE(v180) = v193;

  sub_10004642C(v184, v186, v178 & 1);

  v338 = static Color.white.getter();
  v194 = Text.foregroundStyle<A>(_:)();
  v296 = v195;
  v297 = v194;
  LOBYTE(v184) = v196;
  v295 = v197;
  sub_10004642C(v190, v192, v180 & 1);

  LODWORD(v294) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v199 = v198;
  v201 = v200;
  v203 = v202;
  v205 = v204;
  LODWORD(v293) = v184 & 1;
  LOBYTE(v338) = v184 & 1;
  LOBYTE(v364[0]) = 0;
  v206 = [v299 mainBundle];
  v207 = String._bridgeToObjectiveC()();
  v208 = [v206 localizedStringForKey:v207 value:0 table:0];

  v209 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v211 = v210;

  v338 = v209;
  v339 = v211;
  v212 = Text.init<A>(_:)();
  v214 = v213;
  LOBYTE(v208) = v215;
  static Font.body.getter();
  v216 = Text.font(_:)();
  v218 = v217;
  LOBYTE(v183) = v219;

  sub_10004642C(v212, v214, v208 & 1);

  LODWORD(v338) = static HierarchicalShapeStyle.secondary.getter();
  v220 = Text.foregroundStyle<A>(_:)();
  v222 = v221;
  LOBYTE(v211) = v223;
  v225 = v224;
  sub_10004642C(v216, v218, v183 & 1);

  LOBYTE(v186) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  *(&v336 + 1) = v284;
  *&v337[0] = v283;
  *(&v337[0] + 1) = v282;
  *&v337[1] = v281;
  *(&v332 + 1) = v275;
  *&v333[0] = v274;
  *(&v333[0] + 1) = v273;
  *&v333[1] = v272;
  *&v334 = v289;
  *(&v334 + 1) = v288;
  LOBYTE(v335) = v285;
  *(&v335 + 1) = v287;
  LOBYTE(v336) = v286;
  *&v330 = v280;
  *(&v330 + 1) = v279;
  LOBYTE(v331) = v276;
  *(&v331 + 1) = v278;
  LOBYTE(v332) = v277;
  *&v326 = v266;
  *(&v326 + 1) = v265;
  LOBYTE(v327) = v263;
  *(&v327 + 1) = v264;
  v338 = &v334;
  LOBYTE(v364[0]) = 0;
  BYTE8(v337[1]) = 0;
  BYTE8(v333[1]) = 0;
  v339 = &v330;
  LOBYTE(v328) = v271;
  *(&v328 + 1) = v270;
  *&v329[0] = v269;
  *(&v329[0] + 1) = v268;
  *&v329[1] = v267;
  BYTE8(v329[1]) = 0;
  *&v322 = v262;
  *(&v322 + 1) = v261;
  LOBYTE(v323) = v254;
  *(&v323 + 1) = v260;
  LOBYTE(v324) = v259;
  *(&v324 + 1) = v258;
  *&v325[0] = v257;
  *(&v325[0] + 1) = v256;
  *&v325[1] = v255;
  BYTE8(v325[1]) = 0;
  v340 = &v326;
  v341 = &v322;
  *&v318 = v253;
  *(&v318 + 1) = v252;
  LOBYTE(v319) = v245;
  *(&v319 + 1) = v251;
  LOBYTE(v320) = v250;
  *(&v320 + 1) = v249;
  *&v321[0] = v248;
  *(&v321[0] + 1) = v247;
  *&v321[1] = v246;
  BYTE8(v321[1]) = 0;
  *&v314 = v244;
  *(&v314 + 1) = v243;
  LOBYTE(v315) = v236;
  *(&v315 + 1) = v242;
  LOBYTE(v316) = v241;
  *(&v316 + 1) = v240;
  *&v317[0] = v239;
  *(&v317[0] + 1) = v238;
  *&v317[1] = v237;
  BYTE8(v317[1]) = 0;
  v342 = &v318;
  v343 = &v314;
  *&v310 = v235;
  *(&v310 + 1) = v234;
  LOBYTE(v311) = v231;
  *(&v311 + 1) = v233;
  LOBYTE(v312) = v232;
  *(&v312 + 1) = v171;
  *&v313[0] = v173;
  *(&v313[0] + 1) = v175;
  *&v313[1] = v177;
  BYTE8(v313[1]) = 0;
  *&v306 = v297;
  *(&v306 + 1) = v296;
  LOBYTE(v307) = v293;
  *(&v307 + 1) = v295;
  LOBYTE(v308) = v294;
  *(&v308 + 1) = v199;
  *&v309[0] = v201;
  *(&v309[0] + 1) = v203;
  *&v309[1] = v205;
  BYTE8(v309[1]) = 0;
  v344 = &v310;
  v345 = &v306;
  *&v302 = v220;
  *(&v302 + 1) = v222;
  LOBYTE(v303) = v211 & 1;
  *(&v303 + 1) = v225;
  LOBYTE(v304) = v186;
  *(&v304 + 1) = v226;
  *&v305[0] = v227;
  *(&v305[0] + 1) = v228;
  *&v305[1] = v229;
  BYTE8(v305[1]) = 0;
  v300 = 0;
  v301 = 1;
  v346 = &v302;
  v347 = &v300;
  sub_1005F2E84(&v338, v290);
  v348[2] = v304;
  v349[0] = v305[0];
  *(v349 + 9) = *(v305 + 9);
  v348[1] = v303;
  v348[0] = v302;
  sub_10000EA04(v348, &qword_1008DC4C0, &unk_1006D4960);
  v350[2] = v308;
  v351[0] = v309[0];
  *(v351 + 9) = *(v309 + 9);
  v350[1] = v307;
  v350[0] = v306;
  sub_10000EA04(v350, &qword_1008DC4C0, &unk_1006D4960);
  v352[2] = v312;
  v353[0] = v313[0];
  *(v353 + 9) = *(v313 + 9);
  v352[1] = v311;
  v352[0] = v310;
  sub_10000EA04(v352, &qword_1008DC4C0, &unk_1006D4960);
  v354[2] = v316;
  v355[0] = v317[0];
  *(v355 + 9) = *(v317 + 9);
  v354[1] = v315;
  v354[0] = v314;
  sub_10000EA04(v354, &qword_1008DC4C0, &unk_1006D4960);
  v356[2] = v320;
  v357[0] = v321[0];
  *(v357 + 9) = *(v321 + 9);
  v356[1] = v319;
  v356[0] = v318;
  sub_10000EA04(v356, &qword_1008DC4C0, &unk_1006D4960);
  v358[2] = v324;
  v359[0] = v325[0];
  *(v359 + 9) = *(v325 + 9);
  v358[1] = v323;
  v358[0] = v322;
  sub_10000EA04(v358, &qword_1008DC4C0, &unk_1006D4960);
  v360[2] = v328;
  v361[0] = v329[0];
  *(v361 + 9) = *(v329 + 9);
  v360[1] = v327;
  v360[0] = v326;
  sub_10000EA04(v360, &qword_1008DC4C0, &unk_1006D4960);
  v362[2] = v332;
  v363[0] = v333[0];
  *(v363 + 9) = *(v333 + 9);
  v362[1] = v331;
  v362[0] = v330;
  sub_10000EA04(v362, &qword_1008DC4C0, &unk_1006D4960);
  v364[2] = v336;
  v365[0] = v337[0];
  *(v365 + 9) = *(v337 + 9);
  v364[0] = v334;
  v364[1] = v335;
  return sub_10000EA04(v364, &qword_1008DC4C0, &unk_1006D4960);
}