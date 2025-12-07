uint64_t sub_10006404C@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v38 = a1;
  v5 = sub_100002B38(&qword_10012F300, &qword_1000EBBD8);
  v6 = *(v5 - 8);
  v36 = v5;
  v37 = v6;
  __chkstk_darwin(v5);
  v35 = &v33 - v7;
  v8 = type metadata accessor for Spring();
  __chkstk_darwin(v8 - 8);
  v40 = sub_100002B38(&qword_10012F318, &qword_1000EBBF0);
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v39 = &v33 - v12;
  v13 = sub_100002B38(&qword_10012F348, &qword_1000EBC20);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  __chkstk_darwin(v20);
  v41 = &v33 - v21;
  v43 = a2;
  MoveKeyframe.init(_:)();
  v22 = sub_1000057D8(&qword_10012F358, &qword_10012F348, &qword_1000EBC20, &protocol conformance descriptor for MoveKeyframe<A>);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v23 = *(v14 + 8);
  v33 = v14 + 8;
  v23(v19, v13);
  v24 = v23;
  v48 = a3;
  Spring.init(duration:bounce:)();
  v43 = 0.0;
  LOBYTE(v44) = 1;
  SpringKeyframe.init(_:duration:spring:startVelocity:)();
  v25 = sub_1000057D8(&qword_10012F360, &qword_10012F318, &qword_1000EBBF0, &protocol conformance descriptor for SpringKeyframe<A>);
  v26 = v40;
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v27 = *(v42 + 8);
  v42 += 8;
  v34 = v27;
  v27(v10, v26);
  v43 = a3;
  MoveKeyframe.init(_:)();
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v24(v16, v13);
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  v28 = v35;
  v29 = v40;
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v43 = COERCE_DOUBLE(&type metadata for Double);
  v44 = v13;
  v45 = v29;
  v46 = v22;
  v47 = v25;
  swift_getOpaqueTypeConformance2();
  v30 = v28;
  v31 = v36;
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  (*(v37 + 8))(v30, v31);
  v24(v16, v13);
  v24(v19, v13);
  v34(v39, v29);
  return (v24)(v41, v13);
}

uint64_t sub_1000645A4@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v43 = a1;
  v7 = sub_100002B38(&qword_10012F290, &qword_1000EBB90);
  v8 = *(v7 - 8);
  v41 = v7;
  v42 = v8;
  __chkstk_darwin(v7);
  v40 = &v37 - v9;
  v10 = type metadata accessor for Spring();
  __chkstk_darwin(v10 - 8);
  v39 = sub_100002B38(&qword_10012F298, &qword_1000EBB98);
  v47 = *(v39 - 8);
  __chkstk_darwin(v39);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v45 = &v37 - v14;
  v15 = sub_100002B38(&qword_10012F2A0, &qword_1000EBBA0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v37 - v20;
  __chkstk_darwin(v22);
  v46 = &v37 - v23;
  v48 = a2;
  sub_10006CE68(v24, v25, v26);
  MoveKeyframe.init(_:)();
  v27 = sub_1000057D8(&qword_10012F2B0, &qword_10012F2A0, &qword_1000EBBA0, &protocol conformance descriptor for MoveKeyframe<A>);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v28 = *(v16 + 8);
  v44 = v16 + 8;
  v37 = v28;
  v28(v21, v15);
  v53[0] = a3;
  Spring.init(duration:bounce:)();
  v48 = 0.0;
  LOBYTE(v49) = 1;
  SpringKeyframe.init(_:duration:spring:startVelocity:)();
  v29 = sub_1000057D8(&qword_10012F2B8, &qword_10012F298, &qword_1000EBB98, &protocol conformance descriptor for SpringKeyframe<A>);
  v30 = v39;
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v31 = *(v47 + 8);
  v47 += 8;
  v38 = v31;
  v31(v12, v30);
  v48 = a4;
  MoveKeyframe.init(_:)();
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v32 = v37;
  v37(v18, v15);
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  v33 = v40;
  v34 = v45;
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v48 = COERCE_DOUBLE(&type metadata for CGFloat);
  v49 = v15;
  v50 = v30;
  v51 = v27;
  v52 = v29;
  swift_getOpaqueTypeConformance2();
  v35 = v41;
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  (*(v42 + 8))(v33, v35);
  v32(v18, v15);
  v32(v21, v15);
  v38(v34, v30);
  return (v32)(v46, v15);
}

uint64_t sub_100064AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D1>)
{
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.overlayContentWidth.getter();
  v7 = v6 * a3;
  if (v7 < 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  v9 = sub_100002B38(&qword_10012F558, &qword_1000EBD50);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  result = sub_100002B38(&qword_10012F538, &qword_1000EBD48);
  v11 = a2 + *(result + 36);
  *v11 = v8;
  *(v11 + 8) = 0;
  return result;
}

uint64_t sub_100064BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10006DA58(a1, a2, a3);

  return static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_100064C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10006DA58(a1, a2, a3);

  return static ViewModifier<>._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_100064CBC(uint64_t a1)
{
  v11[1] = a1;
  v2 = sub_100002B38(&qword_10012F528, &qword_1000EBD38);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - v4;
  if (*v1 == 1)
  {
    if (qword_10012CB88 != -1)
    {
      swift_once();
    }

    v6 = qword_10012E790;
  }

  else
  {
    if (qword_10012CB90 != -1)
    {
      swift_once();
    }

    v6 = qword_10012E7A8;
  }

  v7 = sub_100011F80(v2, v6);
  (*(v3 + 16))(v5, v7, v2);
  v8 = KeyframeTimeline.value(progress:)();
  *&v9 = __chkstk_darwin(v8);
  *&v11[-2] = v9;
  sub_100002B38(&qword_10012F530, &qword_1000EBD40);
  sub_100002B38(&qword_10012F538, &qword_1000EBD48);
  sub_1000057D8(&qword_10012F540, &qword_10012F530, &qword_1000EBD40, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_10006D9A0();
  View.animation<A>(_:body:)();
  return (*(v3 + 8))(v5, v2);
}

double (*sub_100064F38(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_100070328;
}

uint64_t sub_100064FB0@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v40 = a1;
  v7 = sub_100002B38(&qword_10012F300, &qword_1000EBBD8);
  v8 = *(v7 - 8);
  v38 = v7;
  v39 = v8;
  __chkstk_darwin(v7);
  v37 = v35 - v9;
  v10 = type metadata accessor for Spring();
  __chkstk_darwin(v10 - 8);
  v42 = sub_100002B38(&qword_10012F318, &qword_1000EBBF0);
  v44 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v41 = v35 - v14;
  v15 = sub_100002B38(&qword_10012F348, &qword_1000EBC20);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v35 - v20;
  __chkstk_darwin(v22);
  v43 = v35 - v23;
  v45 = a2;
  MoveKeyframe.init(_:)();
  v24 = sub_1000057D8(&qword_10012F358, &qword_10012F348, &qword_1000EBC20, &protocol conformance descriptor for MoveKeyframe<A>);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v25 = *(v16 + 8);
  v35[1] = v16 + 8;
  v25(v21, v15);
  v26 = v25;
  v50[0] = a3;
  Spring.init(duration:bounce:)();
  v45 = 0.0;
  LOBYTE(v46) = 1;
  SpringKeyframe.init(_:duration:spring:startVelocity:)();
  v27 = sub_1000057D8(&qword_10012F360, &qword_10012F318, &qword_1000EBBF0, &protocol conformance descriptor for SpringKeyframe<A>);
  v28 = v42;
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v29 = *(v44 + 8);
  v44 += 8;
  v36 = v29;
  v29(v12, v28);
  v45 = a4;
  MoveKeyframe.init(_:)();
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v26(v18, v15);
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  v30 = v37;
  v31 = v42;
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v45 = COERCE_DOUBLE(&type metadata for Double);
  v46 = v15;
  v47 = v31;
  v48 = v24;
  v49 = v27;
  swift_getOpaqueTypeConformance2();
  v32 = v30;
  v33 = v38;
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  (*(v39 + 8))(v32, v33);
  v26(v18, v15);
  v26(v21, v15);
  v36(v41, v31);
  return (v26)(v43, v15);
}

uint64_t sub_100065518(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_100002B38(&qword_10012F4C8, &qword_1000EBCE8);
  sub_10006D8E0(v4, a2);
  sub_100011F80(v4, a2);
  sub_100002B38(&qword_10012F510, &qword_1000EBD10);
  sub_1000057D8(&qword_10012F518, &qword_10012F510, &qword_1000EBD10, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  return KeyframeTimeline.init<A>(initialValue:content:)();
}

uint64_t sub_10006560C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[3] = a1;
  v16[4] = a2;
  v2 = sub_100002B38(&qword_10012F510, &qword_1000EBD10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v16 - v7;
  v16[2] = swift_getKeyPath();
  v16[1] = sub_100002B38(&qword_10012F2F8, &qword_1000EBBD0);
  v16[0] = sub_100005144(&qword_10012F300, &qword_1000EBBD8);
  v9 = sub_100005144(&qword_10012F348, &qword_1000EBC20);
  v10 = sub_100005144(&qword_10012F318, &qword_1000EBBF0);
  v11 = sub_1000057D8(&qword_10012F358, &qword_10012F348, &qword_1000EBC20, &protocol conformance descriptor for MoveKeyframe<A>);
  v12 = sub_1000057D8(&qword_10012F360, &qword_10012F318, &qword_1000EBBF0, &protocol conformance descriptor for SpringKeyframe<A>);
  v17 = &type metadata for Double;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = &type metadata for Double;
  v18 = v16[0];
  v19 = v9;
  v20 = OpaqueTypeConformance2;
  v21 = v11;
  swift_getOpaqueTypeConformance2();
  KeyframeTrack.init(_:content:)();
  sub_1000057D8(&qword_10012F518, &qword_10012F510, &qword_1000EBD10, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  static KeyframesBuilder.buildExpression<A>(_:)();
  v14 = *(v3 + 8);
  v14(v5, v2);
  static KeyframesBuilder.buildPartialBlock<A>(first:)();
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  v14(v5, v2);
  return (v14)(v8, v2);
}

uint64_t sub_100065914(uint64_t a1, char a2, double a3)
{
  v14 = a1;
  v5 = sub_100002B38(&qword_10012F4C8, &qword_1000EBCE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  if (a2)
  {
    if (qword_10012CB98 != -1)
    {
      swift_once();
    }

    v9 = qword_10012E7C0;
  }

  else
  {
    if (qword_10012CBA0 != -1)
    {
      swift_once();
    }

    v9 = qword_10012E7D8;
  }

  v10 = sub_100011F80(v5, v9);
  (*(v6 + 16))(v8, v10, v5);
  v11 = KeyframeTimeline.value(progress:)();
  v12 = __chkstk_darwin(v11);
  *(&v14 - 32) = a2 & 1;
  *(&v14 - 3) = a3;
  *(&v14 - 2) = v12;
  sub_100002B38(&qword_10012F4D0, &qword_1000EBCF0);
  sub_100002B38(&qword_10012F4D8, &qword_1000EBCF8);
  sub_1000057D8(&qword_10012F4E0, &qword_10012F4D0, &qword_1000EBCF0, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_10006D7FC();
  View.animation<A>(_:body:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100065BA8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>, double a5@<D1>)
{
  v8 = static Alignment.topLeading.getter();
  v10 = v9;
  v11 = (a3 + *(sub_100002B38(&qword_10012F4D8, &qword_1000EBCF8) + 36));
  v12 = sub_100002B38(&qword_10012F508, &qword_1000EBD08);
  sub_100065C9C(v11 + *(v12 + 36), a5);
  *v11 = v8;
  v11[1] = v10;
  v13 = sub_100002B38(&qword_10012F4F8, &qword_1000EBD00);
  v14 = *(*(v13 - 8) + 16);

  return v14(a3, a1, v13);
}

uint64_t sub_100065C9C@<X0>(uint64_t a1@<X8>, double a2@<D1>)
{
  v4 = sub_100002B38(&qword_10012F3C0, &qword_1000EBC60);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v73 - v6;
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.cornerRadius.getter();
  v9 = v8;
  v10 = *(type metadata accessor for RoundedRectangle() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = type metadata accessor for RoundedCornerStyle();
  (*(*(v12 - 8) + 104))(&v7[v10], v11, v12);
  *v7 = v9;
  *(v7 + 1) = v9;
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.initialFrame.getter();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v74.origin.x = v14;
  v74.origin.y = v16;
  v74.size.width = v18;
  v74.size.height = v20;
  CGRectGetWidth(v74);
  static ZoomCoordinator.overlayContentWidth.getter();
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.initialFrame.getter();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v75.origin.x = v22;
  v75.origin.y = v24;
  v75.size.width = v26;
  v75.size.height = v28;
  CGRectGetWidth(v75);
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.initialFrame.getter();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v76.origin.x = v30;
  v76.origin.y = v32;
  v76.size.width = v34;
  v76.size.height = v36;
  CGRectGetHeight(v76);
  static ZoomCoordinator.containerSize.getter();
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.initialFrame.getter();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v77.origin.x = v38;
  v77.origin.y = v40;
  v77.size.width = v42;
  v77.size.height = v44;
  CGRectGetHeight(v77);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v45 = &v7[*(sub_100002B38(&qword_10012F3F0, &qword_1000EBC78) + 36)];
  v46 = v73[1];
  *v45 = v73[0];
  *(v45 + 1) = v46;
  *(v45 + 2) = v73[2];
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.initialFrame.getter();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  v78.origin.x = v48;
  v78.origin.y = v50;
  v78.size.width = v52;
  v78.size.height = v54;
  v55 = 1.0 - a2;
  v56 = (1.0 - a2) * CGRectGetMinX(v78);
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.initialFrame.getter();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;

  v79.origin.x = v58;
  v79.origin.y = v60;
  v79.size.width = v62;
  v79.size.height = v64;
  MinY = CGRectGetMinY(v79);
  v66 = &v7[*(v5 + 44)];
  *v66 = v56;
  v66[1] = v55 * MinY;
  v67 = static Edge.Set.all.getter();
  v68 = [objc_opt_self() currentDevice];
  v69 = [v68 userInterfaceIdiom];

  if (v69)
  {
    v67 = Edge.Set.init(rawValue:)();
  }

  v70 = static SafeAreaRegions.all.getter();
  sub_100014830(v7, a1, &qword_10012F3C0, &qword_1000EBC60);
  result = sub_100002B38(&qword_10012F3C8, &qword_1000EBC68);
  v72 = a1 + *(result + 36);
  *v72 = v70;
  *(v72 + 8) = v67;
  return result;
}

uint64_t sub_10006605C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10006D944(a1, a2, a3);

  return static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_1000660E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10006D944(a1, a2, a3);

  return static ViewModifier<>._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

double sub_100066170@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double sub_10006617C(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

double (*sub_100066188(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_1000661B4;
}

double sub_1000661B4(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 8) = *a1;
  return result;
}

void sub_1000661C4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_10012E7F0 = v1 == 1;
}

uint64_t sub_10006624C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Alignment.center.getter();
  v6 = v5;
  v7 = static SafeAreaRegions.all.getter();
  v8 = static Edge.Set.all.getter();
  sub_1000035B4(a1, a2, &qword_10012EB08, &qword_1000EAFA0);
  result = sub_100002B38(&qword_10012EB38, &qword_1000EAFD0);
  v10 = a2 + *(result + 36);
  *v10 = v4;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  return result;
}

uint64_t sub_1000662E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = static Alignment.topLeading.getter();
  v8 = v7;
  v9 = (a2 + *(sub_100002B38(&qword_10012F1F0, &qword_1000EBAD8) + 36));
  v10 = (v9 + *(sub_100002B38(&qword_10012F210, &qword_1000EBAE0) + 36));
  v11 = *(type metadata accessor for RoundedRectangle() + 20);
  v12 = enum case for RoundedCornerStyle.continuous(_:);
  v13 = type metadata accessor for RoundedCornerStyle();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = a3;
  v10[1] = a3;
  *v9 = v6;
  v9[1] = v8;
  return sub_1000035B4(a1, a2, &qword_10012F1E8, &qword_1000EBAD0);
}

uint64_t sub_100066408(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 *a5, uint64_t a6)
{
  if (*a4 == -1)
  {
    return *a5;
  }

  swift_once();
  return *a5;
}

void sub_100066458()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_100135BB8 = v1 == 0;
}

uint64_t sub_1000664BC()
{
  swift_getKeyPath();
  sub_10006778C(&qword_10012EA10, type metadata accessor for NavigationPopEventCoordinator, &unk_1000EADB0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_10006656C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10006778C(&qword_10012EA10, type metadata accessor for NavigationPopEventCoordinator, &unk_1000EADB0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_100066618(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10006778C(&qword_10012EA10, type metadata accessor for NavigationPopEventCoordinator, &unk_1000EADB0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100066778@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10006778C(&qword_10012EA10, type metadata accessor for NavigationPopEventCoordinator, &unk_1000EADB0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC13GameOverlayUI29NavigationPopEventCoordinator__toolbarProxyContainer;
  swift_beginAccess();
  return sub_100068240(v5 + v3, a1, type metadata accessor for NavigationPopEventCoordinator.Container);
}

uint64_t sub_100066854@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10006778C(&qword_10012EA10, type metadata accessor for NavigationPopEventCoordinator, &unk_1000EADB0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC13GameOverlayUI29NavigationPopEventCoordinator__toolbarProxyContainer;
  swift_beginAccess();
  return sub_100068240(v3 + v4, a2, type metadata accessor for NavigationPopEventCoordinator.Container);
}

uint64_t sub_100066930(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPopEventCoordinator.Container(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100068240(a1, v4, type metadata accessor for NavigationPopEventCoordinator.Container);
  return sub_1000669D0(v4);
}

uint64_t sub_1000669D0(void *a1)
{
  v3 = type metadata accessor for NavigationPopEventCoordinator.Container(0);
  __chkstk_darwin(v3 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (v14 - v7);
  v9 = OBJC_IVAR____TtC13GameOverlayUI29NavigationPopEventCoordinator__toolbarProxyContainer;
  swift_beginAccess();
  sub_100068240(v1 + v9, v8, type metadata accessor for NavigationPopEventCoordinator.Container);
  if (*v8 == *a1 && v8[1] == a1[1])
  {
    sub_100069B78(v8, type metadata accessor for NavigationPopEventCoordinator.Container);
    goto LABEL_8;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_100069B78(v8, type metadata accessor for NavigationPopEventCoordinator.Container);
  if (v11)
  {
LABEL_8:
    sub_100068240(a1, v5, type metadata accessor for NavigationPopEventCoordinator.Container);
    swift_beginAccess();
    sub_1000677D4(v5, v1 + v9);
    swift_endAccess();
    return sub_100069B78(a1, type metadata accessor for NavigationPopEventCoordinator.Container);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v14[-2] = v1;
  v14[-1] = a1;
  v14[1] = v1;
  sub_10006778C(&qword_10012EA10, type metadata accessor for NavigationPopEventCoordinator, &unk_1000EADB0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100069B78(a1, type metadata accessor for NavigationPopEventCoordinator.Container);
}

uint64_t sub_100066C2C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13GameOverlayUI29NavigationPopEventCoordinator__toolbarProxyContainer;
  swift_beginAccess();
  sub_100067838(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100066C98()
{
  type metadata accessor for NavigationPopEventCoordinator(0);
  swift_allocObject();
  result = sub_100066CD8();
  qword_100135BC0 = result;
  return result;
}

uint64_t sub_100066CD8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002B38(&qword_10012E960, &qword_1000EAD08);
  __chkstk_darwin(v5 - 8);
  v7 = v23 - v6;
  v24 = v23 - v6;
  v8 = type metadata accessor for NavigationPopEventCoordinator.Container(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v12 = type metadata accessor for ToolbarProxy_V1();
  v13 = *(*(v12 - 8) + 56);
  v13(v7, 1, 1, v12);
  UUID.init()();
  UUID.uuidString.getter();
  v14 = v2 + 8;
  v15 = *(v2 + 8);
  v23[0] = v14;
  v23[1] = v16;
  v15(v4, v1);
  v17 = *(v9 + 28);
  v13(v11 + v17, 1, 1, v12);
  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  v15(v4, v1);

  *v11 = v18;
  v11[1] = v20;
  sub_1000676F8(v24, v11 + v17);
  v21 = v25;
  sub_10006B690(v11, v25 + OBJC_IVAR____TtC13GameOverlayUI29NavigationPopEventCoordinator__toolbarProxyContainer, type metadata accessor for NavigationPopEventCoordinator.Container);
  ObservationRegistrar.init()();
  return v21;
}

uint64_t sub_100066F50(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&qword_10012E960, &qword_1000EAD08);
  __chkstk_darwin(v6 - 8);
  v8 = v23 - v7;
  v24 = v23 - v7;
  v9 = type metadata accessor for NavigationPopEventCoordinator.Container(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for ToolbarProxy_V1();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8, a1, v13);
  v15 = *(v14 + 56);
  v15(v8, 0, 1, v13);
  UUID.init()();
  UUID.uuidString.getter();
  v23[1] = v16;
  v17 = *(v3 + 8);
  v17(v5, v2);
  v18 = *(v10 + 28);
  v15(v12 + v18, 1, 1, v13);
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  v17(v5, v2);

  *v12 = v19;
  v12[1] = v21;
  sub_1000676F8(v24, v12 + v18);
  return sub_1000669D0(v12);
}

uint64_t sub_1000671B8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1000671E8()
{

  sub_100069B78(v0 + OBJC_IVAR____TtC13GameOverlayUI29NavigationPopEventCoordinator__toolbarProxyContainer, type metadata accessor for NavigationPopEventCoordinator.Container);
  v1 = OBJC_IVAR____TtC13GameOverlayUI29NavigationPopEventCoordinator___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000672D8(uint64_t a1)
{
  result = type metadata accessor for NavigationPopEventCoordinator.Container(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000673E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002B38(&qword_10012E960, &qword_1000EAD08);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000674B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002B38(&qword_10012E960, &qword_1000EAD08);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100067564(uint64_t a1)
{
  sub_100067EA8(319, &unk_10012E9D0, &type metadata accessor for ToolbarProxy_V1, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000676A0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityReduceMotion.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000676F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012E960, &qword_1000EAD08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006778C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000677D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationPopEventCoordinator.Container(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100067838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationPopEventCoordinator.Container(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000678A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100066618(v1, v2);
}

uint64_t sub_1000678E0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t initializeBufferWithCopyOfBuffer for DragState(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DragState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DragState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100067984(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000679A0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1000679F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _NavigationStackStyleConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100002B38(&qword_10012EA18, &qword_1000EAEE0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100067B38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for _NavigationStackStyleConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_100002B38(&qword_10012EA18, &qword_1000EAEE0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100067C68(uint64_t a1)
{
  type metadata accessor for _NavigationStackStyleConfiguration();
  if (v1 <= 0x3F)
  {
    type metadata accessor for BaseObjectGraph();
    if (v2 <= 0x3F)
    {
      sub_10006A924(319, &qword_10012EA88, &type metadata for String, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_10006A924(319, &qword_10012EA90, &type metadata for DragState, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_10006A924(319, &qword_10012EA98, &type metadata for CGFloat, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_10006A924(319, &qword_10012CEE8, &type metadata for Bool, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_100067EA8(319, &qword_10012EAA0, &type metadata accessor for AppFocusState, &type metadata accessor for State);
              if (v7 <= 0x3F)
              {
                sub_10006A924(319, &qword_10012EAA8, &type metadata for Bool, &type metadata accessor for Environment);
                if (v8 <= 0x3F)
                {
                  sub_100067EA8(319, &unk_10012EAB0, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_100067EA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100067F70()
{
  result = qword_10012EB40;
  if (!qword_10012EB40)
  {
    sub_100005144(&qword_10012EB08, &qword_1000EAFA0);
    v3 = sub_100067FFC();
    sub_1000680E0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EB40);
  }

  return result;
}

unint64_t sub_100067FFC()
{
  result = qword_10012EB48;
  if (!qword_10012EB48)
  {
    sub_100005144(&qword_10012EB28, &qword_1000EAFC0);
    sub_1000057D8(&qword_10012EB50, &qword_10012EB58, &qword_1000EAFD8, &protocol conformance descriptor for ZStack<A>);
    sub_1000057D8(&qword_10012EB60, &qword_10012EB68, &qword_1000EAFE0, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EB48);
  }

  return result;
}

unint64_t sub_1000680E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012EB70;
  if (!qword_10012EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EB70);
  }

  return result;
}

unint64_t sub_100068134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012EB78;
  if (!qword_10012EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EB78);
  }

  return result;
}

unint64_t sub_100068188()
{
  result = qword_10012EB80;
  if (!qword_10012EB80)
  {
    sub_100005144(&qword_10012EB38, &qword_1000EAFD0);
    sub_100067F70();
    sub_1000057D8(&qword_10012EB88, &qword_10012EB90, &qword_1000EAFE8, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EB80);
  }

  return result;
}

uint64_t sub_100068240(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1000682AC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000682E4()
{
  v1 = (type metadata accessor for OverlayStack(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = type metadata accessor for _NavigationStackStyleConfiguration();
  (*(*(v3 - 8) + 8))(v2, v3);

  sub_1000682AC(*(v2 + v1[13]), *(v2 + v1[13] + 8));
  v4 = v1[14];
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for LayoutDirection();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000684E4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_100068598()
{
  result = qword_10012EBA8;
  if (!qword_10012EBA8)
  {
    sub_100005144(&qword_10012EB10, &qword_1000EAFA8);
    sub_100068650();
    sub_1000057D8(&qword_10012EBC8, &qword_10012EBD0, &qword_1000EB008, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EBA8);
  }

  return result;
}

unint64_t sub_100068650()
{
  result = qword_10012EBB0;
  if (!qword_10012EBB0)
  {
    sub_100005144(&qword_10012EB98, &qword_1000EAFF0);
    sub_100005144(&qword_10012EB08, &qword_1000EAFA0);
    sub_100005144(&qword_10012EB38, &qword_1000EAFD0);
    v3 = sub_100067F70();
    sub_100068134(v3, v1, v2);
    sub_100068188();
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012EBB8, &qword_10012EBC0, &qword_1000EB000, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EBB0);
  }

  return result;
}

unint64_t sub_10006878C()
{
  result = qword_10012EBD8;
  if (!qword_10012EBD8)
  {
    sub_100005144(&qword_10012EBA0, &qword_1000EAFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EBD8);
  }

  return result;
}

unint64_t sub_100068860()
{
  result = qword_10012EBE0;
  if (!qword_10012EBE0)
  {
    sub_100005144(&qword_10012EB18, &qword_1000EAFB0);
    sub_100005144(&qword_10012EB10, &qword_1000EAFA8);
    sub_100005144(&qword_10012EBA0, &qword_1000EAFF8);
    sub_100068598();
    sub_10006878C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EBE0);
  }

  return result;
}

void sub_100068954(uint64_t a1)
{
  v47 = sub_100002B38(&qword_10012ED78, &qword_1000EB128);
  __chkstk_darwin(v47);
  v46 = (v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v6 = v39 - v5;
  v7 = _swiftEmptyArrayStorage;
  v45 = *(a1 + 16);
  if (v45)
  {
    v8 = v4;
    v9 = *(v4 + 80);
    v39[1] = v9;
    v40 = (v9 + 32) & ~v9;
    v10 = _swiftEmptyArrayStorage + v40;
    v11 = 0;
    v12 = 0;
    v44 = type metadata accessor for _NavigationStackStyleConfiguration.Item();
    v13 = *(v44 - 8);
    v14 = *(v13 + 16);
    v42 = v13 + 16;
    v43 = v14;
    v15 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v41 = *(v13 + 72);
    v16 = _swiftEmptyArrayStorage;
    v39[0] = v8;
    while (1)
    {
      v19 = v46;
      v20 = *(v47 + 48);
      *v46 = v11;
      v43(v19 + v20, v15, v44);
      sub_100014830(v19, v6, &qword_10012ED78, &qword_1000EB128);
      if (v12)
      {
        v7 = v16;
        v17 = v8;
        v18 = __OFSUB__(v12--, 1);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v21 = v16[3];
        if (((v21 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v22 = v6;
        v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
        if (v23 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v23;
        }

        sub_100002B38(&qword_10012EE38, &qword_1000EB1F0);
        v25 = *(v8 + 72);
        v26 = v40;
        v7 = swift_allocObject();
        v27 = j__malloc_size(v7);
        if (!v25)
        {
          goto LABEL_34;
        }

        v28 = v27 - v26;
        if (v27 - v26 == 0x8000000000000000 && v25 == -1)
        {
          goto LABEL_35;
        }

        v30 = v28 / v25;
        v7[2] = v24;
        v7[3] = 2 * (v28 / v25);
        v31 = v7 + v26;
        v32 = v16[3] >> 1;
        v33 = v32 * v25;
        if (v16[2])
        {
          if (v7 < v16 || v31 >= v16 + v40 + v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v7 != v16)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v16[2] = 0;
        }

        v10 = &v31[v33];
        v35 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        v17 = v39[0];
        v6 = v22;
        v18 = __OFSUB__(v35, 1);
        v12 = v35 - 1;
        if (v18)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v11;
      sub_100014830(v6, v10, &qword_10012ED78, &qword_1000EB128);
      v8 = v17;
      v10 += *(v17 + 72);
      v15 += v41;
      v16 = v7;
      if (v45 == v11)
      {
        goto LABEL_29;
      }
    }
  }

  v12 = 0;
LABEL_29:
  v36 = v7[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v18 = __OFSUB__(v37, v12);
    v38 = v37 - v12;
    if (v18)
    {
      goto LABEL_36;
    }

    v7[2] = v38;
  }
}

uint64_t sub_100068C9C()
{
  v1 = (type metadata accessor for OverlayStack(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 24) & ~*(*v1 + 80));
  v3 = type metadata accessor for _NavigationStackStyleConfiguration();
  (*(*(v3 - 8) + 8))(v2, v3);

  sub_1000682AC(*(v2 + v1[13]), *(v2 + v1[13] + 8));
  v4 = v1[14];
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for LayoutDirection();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_100068E70(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for OverlayStack(0) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  sub_10004F520(a1, a2, v8, v9, a3);
}

uint64_t sub_100068EFC(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_100002B38(&qword_10012ED78, &qword_1000EB128);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_100068F64()
{
  result = qword_10012EC48;
  if (!qword_10012EC48)
  {
    sub_100005144(&qword_10012EC38, &qword_1000EB088);
    sub_100005144(&qword_10012EC50, &qword_1000EB090);
    sub_100069040();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EC48);
  }

  return result;
}

unint64_t sub_100069040()
{
  result = qword_10012EC58;
  if (!qword_10012EC58)
  {
    sub_100005144(&qword_10012EC50, &qword_1000EB090);
    sub_100005144(&qword_10012EC60, &qword_1000EB098);
    type metadata accessor for AppFocusState();
    sub_100069184();
    sub_10006778C(&qword_10012ED50, &type metadata accessor for AppFocusState, &protocol conformance descriptor for AppFocusState);
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012E640, &qword_10012E648, &unk_1000EAAD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EC58);
  }

  return result;
}

unint64_t sub_100069184()
{
  result = qword_10012EC68;
  if (!qword_10012EC68)
  {
    sub_100005144(&qword_10012EC60, &qword_1000EB098);
    sub_10006923C();
    sub_1000057D8(&qword_10012E640, &qword_10012E648, &unk_1000EAAD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EC68);
  }

  return result;
}

unint64_t sub_10006923C()
{
  result = qword_10012EC70;
  if (!qword_10012EC70)
  {
    sub_100005144(&qword_10012EC78, &qword_1000EB0A0);
    v3 = sub_1000692C8();
    sub_1000699A8(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EC70);
  }

  return result;
}

unint64_t sub_1000692C8()
{
  result = qword_10012EC80;
  if (!qword_10012EC80)
  {
    sub_100005144(&qword_10012EC88, &qword_1000EB0A8);
    sub_100069380();
    sub_1000057D8(&qword_10012ED38, &qword_10012ED40, &unk_1000EB108, &protocol conformance descriptor for _IgnoredByLayoutEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EC80);
  }

  return result;
}

unint64_t sub_100069380()
{
  result = qword_10012EC90;
  if (!qword_10012EC90)
  {
    sub_100005144(&qword_10012EC98, &qword_1000EB0B0);
    sub_100069438();
    sub_1000057D8(&qword_10012DB70, &qword_10012DB78, &qword_1000EB100, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EC90);
  }

  return result;
}

unint64_t sub_100069438()
{
  result = qword_10012ECA0;
  if (!qword_10012ECA0)
  {
    sub_100005144(&qword_10012ECA8, &qword_1000EB0B8);
    v3 = sub_1000694C4();
    sub_100069954(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ECA0);
  }

  return result;
}

unint64_t sub_1000694C4()
{
  result = qword_10012ECB0;
  if (!qword_10012ECB0)
  {
    sub_100005144(&qword_10012ECB8, &qword_1000EB0C0);
    sub_100005144(&qword_10012ECC0, &qword_1000EB0C8);
    sub_1000695B8();
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012ED20, &qword_10012ED28, &unk_1000ED420, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ECB0);
  }

  return result;
}

unint64_t sub_1000695B8()
{
  result = qword_10012ECC8;
  if (!qword_10012ECC8)
  {
    sub_100005144(&qword_10012ECC0, &qword_1000EB0C8);
    sub_100069670();
    sub_1000057D8(&qword_10012ED10, &qword_10012ED18, &unk_1000EB0F0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ECC8);
  }

  return result;
}

unint64_t sub_100069670()
{
  result = qword_10012ECD0;
  if (!qword_10012ECD0)
  {
    sub_100005144(&qword_10012ECD8, &qword_1000EB0D0);
    type metadata accessor for OverlayNavigationStackItem(255);
    sub_100005144(&qword_10012ECE0, &qword_1000EB0D8);
    sub_100005144(&qword_10012ECE8, &qword_1000EB0E0);
    v1 = sub_10006778C(&qword_10012ECF0, type metadata accessor for OverlayNavigationStackItem, &unk_1000EB808);
    sub_100069844(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_100005144(&qword_10012ED00, &qword_1000EB0E8);
    sub_100069898();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ECD0);
  }

  return result;
}

unint64_t sub_100069844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012ECF8;
  if (!qword_10012ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ECF8);
  }

  return result;
}

unint64_t sub_100069898()
{
  result = qword_10012ED08;
  if (!qword_10012ED08)
  {
    sub_100005144(&qword_10012ED00, &qword_1000EB0E8);
    sub_10006778C(&qword_10012ECF0, type metadata accessor for OverlayNavigationStackItem, &unk_1000EB808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ED08);
  }

  return result;
}

unint64_t sub_100069954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012ED30;
  if (!qword_10012ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ED30);
  }

  return result;
}

unint64_t sub_1000699A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012ED48;
  if (!qword_10012ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ED48);
  }

  return result;
}

unint64_t sub_1000699FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012ED60;
  if (!qword_10012ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ED60);
  }

  return result;
}

unint64_t sub_100069A50()
{
  result = qword_10012ED68;
  if (!qword_10012ED68)
  {
    v1 = sub_100005144(&qword_10012ED58, &qword_1000EB118);
    sub_1000699FC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ED68);
  }

  return result;
}

uint64_t sub_100069B78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100069BD8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.shouldZoomOnSegue.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100069C30@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isTopmostViewInOverlay.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100069CB4()
{
  v1 = (type metadata accessor for OverlayStack(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 17) & ~*(*v1 + 80));
  v3 = type metadata accessor for _NavigationStackStyleConfiguration();
  (*(*(v3 - 8) + 8))(v2, v3);

  sub_1000682AC(*(v2 + v1[13]), *(v2 + v1[13] + 8));
  v4 = v1[14];
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for LayoutDirection();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100069E88()
{
  v1 = *(type metadata accessor for OverlayStack(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80));

  return sub_100051618(v2, v3);
}

unint64_t sub_100069EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012EDA8;
  if (!qword_10012EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EDA8);
  }

  return result;
}

unint64_t sub_100069F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012EDB0;
  if (!qword_10012EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EDB0);
  }

  return result;
}

unint64_t sub_100069F94()
{
  result = qword_10012EDE8;
  if (!qword_10012EDE8)
  {
    sub_100005144(&qword_10012EDC8, &qword_1000EB1C8);
    sub_10006A020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EDE8);
  }

  return result;
}

unint64_t sub_10006A020()
{
  result = qword_10012EDF0;
  if (!qword_10012EDF0)
  {
    sub_100005144(&qword_10012EDC0, &qword_1000EB1C0);
    sub_10006A0AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EDF0);
  }

  return result;
}

unint64_t sub_10006A0AC()
{
  result = qword_10012EDF8;
  if (!qword_10012EDF8)
  {
    sub_100005144(&qword_10012EDE0, &qword_1000EB1E0);
    sub_10006A138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EDF8);
  }

  return result;
}

unint64_t sub_10006A138()
{
  result = qword_10012EE00;
  if (!qword_10012EE00)
  {
    sub_100005144(&qword_10012EDD0, &qword_1000EB1D0);
    sub_1000057D8(&qword_10012EE08, &qword_10012EDD8, &qword_1000EB1D8, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EE00);
  }

  return result;
}

uint64_t sub_10006A220(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for OverlayStack(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

__n128 initializeBufferWithCopyOfBuffer for ZoomableGlassPlatterModifier(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

__n128 sub_10006A3B4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10006A3E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_10006A428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006A494(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10006A4E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10006A54C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10006A5A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10006A60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _NavigationStackStyleConfiguration.Item();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10006A6DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for _NavigationStackStyleConfiguration.Item();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_10006A794(uint64_t a1)
{
  type metadata accessor for _NavigationStackStyleConfiguration.Item();
  if (v1 <= 0x3F)
  {
    sub_10006FDD8(319, &qword_10012E528, &qword_10012E530, &unk_1000EA9A0, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for BaseObjectGraph();
      if (v3 <= 0x3F)
      {
        sub_10006A924(319, &unk_10012EEA8, &type metadata for Bool, &type metadata accessor for Binding);
        if (v4 <= 0x3F)
        {
          sub_10006A924(319, &qword_10012DD08, &type metadata for Double, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_10006A924(319, &qword_10012EA98, &type metadata for CGFloat, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10006A924(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10006A974()
{
  sub_100005144(&qword_10012EB18, &qword_1000EAFB0);
  sub_100068860();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10006A9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012EEF8;
  if (!qword_10012EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EEF8);
  }

  return result;
}

unint64_t sub_10006AA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012EF00;
  if (!qword_10012EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF00);
  }

  return result;
}

unint64_t sub_10006AAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012EF08;
  if (!qword_10012EF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF08);
  }

  return result;
}

unint64_t sub_10006ABD0()
{
  result = qword_10012EF38;
  if (!qword_10012EF38)
  {
    v1 = sub_100005144(&qword_10012EF30, &qword_1000EB8F8);
    sub_100069844(v1, v2, v3);
    sub_10006AC70();
    sub_10006AF60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF38);
  }

  return result;
}

unint64_t sub_10006AC70()
{
  result = qword_10012EF40;
  if (!qword_10012EF40)
  {
    sub_100005144(&qword_10012EF48, &qword_1000EB900);
    sub_10006AD28();
    sub_1000057D8(&qword_10012DB70, &qword_10012DB78, &qword_1000EB100, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF40);
  }

  return result;
}

unint64_t sub_10006AD28()
{
  result = qword_10012EF50;
  if (!qword_10012EF50)
  {
    sub_100005144(&qword_10012EF58, &qword_1000EB908);
    v3 = sub_10006ADB4();
    sub_1000699A8(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF50);
  }

  return result;
}

unint64_t sub_10006ADB4()
{
  result = qword_10012EF60;
  if (!qword_10012EF60)
  {
    sub_100005144(&qword_10012EF68, &qword_1000EB910);
    sub_10006AE40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF60);
  }

  return result;
}

unint64_t sub_10006AE40()
{
  result = qword_10012EF70;
  if (!qword_10012EF70)
  {
    v1 = sub_100005144(&qword_10012EF78, &qword_1000EB918);
    sub_10006AF0C(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF70);
  }

  return result;
}

unint64_t sub_10006AF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012EF80;
  if (!qword_10012EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF80);
  }

  return result;
}

unint64_t sub_10006AF60()
{
  result = qword_10012EF88;
  if (!qword_10012EF88)
  {
    sub_100005144(&qword_10012EF90, &qword_1000EB920);
    sub_10006B018();
    sub_1000057D8(&qword_10012DB70, &qword_10012DB78, &qword_1000EB100, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF88);
  }

  return result;
}

unint64_t sub_10006B018()
{
  result = qword_10012EF98;
  if (!qword_10012EF98)
  {
    sub_100005144(&qword_10012EFA0, &qword_1000EB928);
    v3 = sub_10006B0A4();
    sub_1000699A8(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF98);
  }

  return result;
}

unint64_t sub_10006B0A4()
{
  result = qword_10012EFA8;
  if (!qword_10012EFA8)
  {
    sub_100005144(&qword_10012EFB0, &qword_1000EB930);
    sub_100005144(&qword_10012EFB8, &qword_1000EB938);
    type metadata accessor for RoundedRectangle();
    sub_10006B1BC();
    sub_10006778C(&qword_10012EFD8, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EFA8);
  }

  return result;
}

unint64_t sub_10006B1BC()
{
  result = qword_10012EFC0;
  if (!qword_10012EFC0)
  {
    sub_100005144(&qword_10012EFB8, &qword_1000EB938);
    sub_1000057D8(&qword_10012EFC8, &qword_10012EFD0, &qword_1000EB940, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EFC0);
  }

  return result;
}

uint64_t sub_10006B2A4(uint64_t (*a1)(void, void, void))
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return a1(v2 | *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

unint64_t sub_10006B2F8()
{
  result = qword_10012F060;
  if (!qword_10012F060)
  {
    sub_100005144(&qword_10012EFF0, &qword_1000EB958);
    sub_10006B384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F060);
  }

  return result;
}

unint64_t sub_10006B384()
{
  result = qword_10012F068;
  if (!qword_10012F068)
  {
    sub_100005144(&qword_10012EFE8, &qword_1000EB950);
    sub_10006B410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F068);
  }

  return result;
}

unint64_t sub_10006B410()
{
  result = qword_10012F070;
  if (!qword_10012F070)
  {
    sub_100005144(&qword_10012EFE0, &qword_1000EB948);
    sub_10006778C(&qword_10012F078, &type metadata accessor for _NavigationStackStyleConfiguration.Item, &protocol conformance descriptor for _NavigationStackStyleConfiguration.Item);
    sub_1000057D8(&qword_10012F080, &qword_10012F088, &qword_1000EB9F8, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F070);
  }

  return result;
}

unint64_t sub_10006B4F8()
{
  result = qword_10012F0A0;
  if (!qword_10012F0A0)
  {
    sub_100005144(&qword_10012F098, &qword_1000EBA08);
    sub_10006D098(&qword_10012F0A8, &qword_10012F0B0, &qword_1000EBA10, &protocol witness table for _FrameLayout);
    sub_1000057D8(&qword_10012F0B8, &qword_10012F0C0, &qword_1000EBA18, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F0A0);
  }

  return result;
}

unint64_t sub_10006B5D0()
{
  result = qword_10012F0C8;
  if (!qword_10012F0C8)
  {
    sub_100005144(&qword_10012F058, &qword_1000EB9F0);
    sub_10006B2F8();
    sub_10006778C(&qword_10012F0D0, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F0C8);
  }

  return result;
}

uint64_t sub_10006B690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006B724()
{
  v1 = type metadata accessor for OverlayNavigationStackItem(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = type metadata accessor for _NavigationStackStyleConfiguration.Item();
  (*(*(v3 - 8) + 8))(v2, v3);
  if (*(v2 + *(v1 + 32)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10006B8A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

unint64_t sub_10006B93C()
{
  result = qword_10012F0D8;
  if (!qword_10012F0D8)
  {
    sub_100005144(&qword_10012F000, &qword_1000EB968);
    sub_100005144(&qword_10012EFF0, &qword_1000EB958);
    sub_100005144(&qword_10012F050, &qword_1000EB9E8);
    sub_100005144(&qword_10012F058, &qword_1000EB9F0);
    sub_10006B2F8();
    sub_100005144(&qword_10012F090, &qword_1000EBA00);
    sub_100005144(&qword_10012F098, &qword_1000EBA08);
    sub_10006B4F8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10006B5D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F0D8);
  }

  return result;
}

unint64_t sub_10006BAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012F0E0;
  if (!qword_10012F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F0E0);
  }

  return result;
}

unint64_t sub_10006BB74()
{
  result = qword_10012F0E8;
  if (!qword_10012F0E8)
  {
    sub_100005144(&qword_10012F040, &qword_1000EB9A8);
    sub_10006BC00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F0E8);
  }

  return result;
}

unint64_t sub_10006BC00()
{
  result = qword_10012F0F0;
  if (!qword_10012F0F0)
  {
    sub_100005144(&qword_10012F038, &qword_1000EB9A0);
    sub_10006BC8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F0F0);
  }

  return result;
}

unint64_t sub_10006BC8C()
{
  result = qword_10012F0F8;
  if (!qword_10012F0F8)
  {
    sub_100005144(&qword_10012F030, &qword_1000EB998);
    sub_100005144(&qword_10012F020, &qword_1000EB988);
    sub_100005144(&qword_10012ECE0, &qword_1000EB0D8);
    sub_100005144(&qword_10012F100, &qword_1000EBA20);
    sub_100005144(&qword_10012F108, &qword_1000EBA28);
    sub_100005144(&qword_10012F0B0, &qword_1000EBA10);
    sub_10006BE68();
    sub_10006D098(&qword_10012F0A8, &qword_10012F0B0, &qword_1000EBA10, &protocol witness table for _FrameLayout);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_100069844(OpaqueTypeConformance2, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_10006C064();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F0F8);
  }

  return result;
}

unint64_t sub_10006BE68()
{
  result = qword_10012F110;
  if (!qword_10012F110)
  {
    sub_100005144(&qword_10012F108, &qword_1000EBA28);
    sub_10006BEF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F110);
  }

  return result;
}

unint64_t sub_10006BEF4()
{
  result = qword_10012F118;
  if (!qword_10012F118)
  {
    sub_100005144(&qword_10012F120, &qword_1000EBA30);
    sub_10006BF80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F118);
  }

  return result;
}

unint64_t sub_10006BF80()
{
  result = qword_10012F128;
  if (!qword_10012F128)
  {
    sub_100005144(&qword_10012F130, &qword_1000EBA38);
    sub_1000057D8(&qword_10012F138, &qword_10012F140, &qword_1000EBA40, &protocol conformance descriptor for ScrollViewReader<A>);
    sub_1000057D8(&qword_10012F080, &qword_10012F088, &qword_1000EB9F8, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F128);
  }

  return result;
}

unint64_t sub_10006C064()
{
  result = qword_10012F148;
  if (!qword_10012F148)
  {
    sub_100005144(&qword_10012F100, &qword_1000EBA20);
    sub_10006C0F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F148);
  }

  return result;
}

unint64_t sub_10006C0F0()
{
  result = qword_10012F150;
  if (!qword_10012F150)
  {
    sub_100005144(&qword_10012F158, &unk_1000EBA48);
    sub_100005144(&qword_10012F108, &qword_1000EBA28);
    sub_100005144(&qword_10012F0B0, &qword_1000EBA10);
    sub_10006BE68();
    sub_10006D098(&qword_10012F0A8, &qword_10012F0B0, &qword_1000EBA10, &protocol witness table for _FrameLayout);
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012CDD8, &qword_10012CDE0, &qword_1000E90D0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F150);
  }

  return result;
}

uint64_t sub_10006C238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for OverlayNavigationStackItem(0);

  return sub_1000561BC(a1, a2);
}

uint64_t sub_10006C2E4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_10006C360()
{
  v1 = type metadata accessor for OverlayNavigationStackItem(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = type metadata accessor for _NavigationStackStyleConfiguration.Item();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  if (*(v0 + v2 + *(v1 + 32)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10006C4C4(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for OverlayNavigationStackItem(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100056C28(a1, a2, v2 + v6, v7);
}

double sub_10006C574(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_10006C5BC()
{
  v1 = type metadata accessor for ToolbarProxy_V1();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10006C680(uint64_t a1)
{
  v4 = *(type metadata accessor for ToolbarProxy_V1() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100056838(a1, v6, v7, v1 + v5);
}

uint64_t sub_10006C770()
{
  v1 = type metadata accessor for ScrollViewProxy();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10006C858()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10006C890()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014BAC;

  return sub_100057744();
}

uint64_t sub_10006C94C@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_10005D764(a1, a2, v4 | *(v3 + 16), *(v3 + 24), *(v3 + 32), a3);
}

uint64_t sub_10006C98C@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 16);
  if (*(v1 + 18))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return sub_10005DE48(v3 | v4, *(v1 + 24), *(v1 + 32), a1);
}

unint64_t sub_10006C9CC()
{
  result = qword_10012F1B0;
  if (!qword_10012F1B0)
  {
    sub_100005144(&qword_10012F198, &qword_1000EBAA8);
    sub_10006CADC();
    sub_100005144(&qword_10012F1E8, &qword_1000EBAD0);
    sub_100005144(&qword_10012F1F0, &qword_1000EBAD8);
    v3 = sub_10006CC20();
    sub_100068134(v3, v1, v2);
    sub_10006CCAC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F1B0);
  }

  return result;
}

unint64_t sub_10006CADC()
{
  result = qword_10012F1B8;
  if (!qword_10012F1B8)
  {
    sub_100005144(&qword_10012F1C0, &qword_1000EBAB8);
    sub_10006CB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F1B8);
  }

  return result;
}

unint64_t sub_10006CB68()
{
  result = qword_10012F1C8;
  if (!qword_10012F1C8)
  {
    sub_100005144(&qword_10012F1D0, &qword_1000EBAC0);
    sub_1000057D8(&qword_10012F1D8, &qword_10012F1E0, &qword_1000EBAC8, &protocol conformance descriptor for PlaceholderContentView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F1C8);
  }

  return result;
}

unint64_t sub_10006CC20()
{
  result = qword_10012F1F8;
  if (!qword_10012F1F8)
  {
    sub_100005144(&qword_10012F1E8, &qword_1000EBAD0);
    sub_10006CB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F1F8);
  }

  return result;
}

unint64_t sub_10006CCAC()
{
  result = qword_10012F200;
  if (!qword_10012F200)
  {
    sub_100005144(&qword_10012F1F0, &qword_1000EBAD8);
    sub_10006CC20();
    sub_1000057D8(&qword_10012F208, &qword_10012F210, &qword_1000EBAE0, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F200);
  }

  return result;
}

uint64_t sub_10006CD64()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 16);
  if (*(v0 + 18))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_10005E78C(v2 | v3, *(v0 + 24), *(v0 + 32));
}

uint64_t sub_10006CE04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void, uint64_t, void, double)@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  if (*(v5 + 17))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 | *(v5 + 16);
  if (*(v5 + 18))
  {
    v8 = 0x10000;
  }

  else
  {
    v8 = 0;
  }

  return sub_1000622E4(v7 | v8, *(v5 + 24), *(v5 + 32), a1, a2, a3, a4, a5);
}

unint64_t sub_10006CE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012F2A8;
  if (!qword_10012F2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F2A8);
  }

  return result;
}

unint64_t sub_10006CEC4()
{
  result = qword_10012F3D8;
  if (!qword_10012F3D8)
  {
    sub_100005144(&qword_10012F3C8, &qword_1000EBC68);
    sub_10006CF50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F3D8);
  }

  return result;
}

unint64_t sub_10006CF50()
{
  result = qword_10012F3E0;
  if (!qword_10012F3E0)
  {
    sub_100005144(&qword_10012F3C0, &qword_1000EBC60);
    sub_10006CFDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F3E0);
  }

  return result;
}

unint64_t sub_10006CFDC()
{
  result = qword_10012F3E8;
  if (!qword_10012F3E8)
  {
    sub_100005144(&qword_10012F3F0, &qword_1000EBC78);
    sub_10006778C(&qword_10012F3F8, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F3E8);
  }

  return result;
}

uint64_t sub_10006D098(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100005144(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006D108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012F408;
  if (!qword_10012F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F408);
  }

  return result;
}

unint64_t sub_10006D240()
{
  result = qword_10012F460;
  if (!qword_10012F460)
  {
    sub_100005144(&qword_10012F410, &qword_1000EBC80);
    sub_10006D2CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F460);
  }

  return result;
}

unint64_t sub_10006D2CC()
{
  result = qword_10012F468;
  if (!qword_10012F468)
  {
    sub_100005144(&qword_10012F458, &qword_1000EBCC8);
    sub_10006D358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F468);
  }

  return result;
}

unint64_t sub_10006D358()
{
  result = qword_10012F470;
  if (!qword_10012F470)
  {
    sub_100005144(&qword_10012F450, &qword_1000EBCC0);
    sub_10006D410();
    sub_1000057D8(&qword_10012F4A0, &qword_10012F4A8, &qword_1000EBCD8, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F470);
  }

  return result;
}

unint64_t sub_10006D410()
{
  result = qword_10012F478;
  if (!qword_10012F478)
  {
    sub_100005144(&qword_10012F448, &qword_1000EBCB8);
    sub_10006D4C8();
    sub_1000057D8(&qword_10012F490, &qword_10012F498, &qword_1000EBCD0, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F478);
  }

  return result;
}

unint64_t sub_10006D4C8()
{
  result = qword_10012F480;
  if (!qword_10012F480)
  {
    sub_100005144(&qword_10012F440, &qword_1000EBCB0);
    sub_10006778C(&qword_10012F488, type metadata accessor for OverlayNavigationBar, &unk_1000EBEA8);
    sub_1000057D8(&qword_10012DB70, &qword_10012DB78, &qword_1000EB100, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F480);
  }

  return result;
}

uint64_t sub_10006D5B0()
{

  return swift_deallocObject();
}

unint64_t sub_10006D628()
{
  result = qword_10012F4B8;
  if (!qword_10012F4B8)
  {
    sub_100005144(&qword_10012F420, &qword_1000EBC90);
    sub_100005144(&qword_10012F410, &qword_1000EBC80);
    sub_10006D240();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1000699A8(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F4B8);
  }

  return result;
}

unint64_t sub_10006D704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012F4C0;
  if (!qword_10012F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F4C0);
  }

  return result;
}

unint64_t sub_10006D7FC()
{
  result = qword_10012F4E8;
  if (!qword_10012F4E8)
  {
    sub_100005144(&qword_10012F4D8, &qword_1000EBCF8);
    sub_1000057D8(&qword_10012F4F0, &qword_10012F4F8, &qword_1000EBD00, &protocol conformance descriptor for PlaceholderContentView<A>);
    sub_1000057D8(&qword_10012F500, &qword_10012F508, &qword_1000EBD08, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F4E8);
  }

  return result;
}

uint64_t *sub_10006D8E0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_10006D944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012F520;
  if (!qword_10012F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F520);
  }

  return result;
}

unint64_t sub_10006D9A0()
{
  result = qword_10012F548;
  if (!qword_10012F548)
  {
    sub_100005144(&qword_10012F538, &qword_1000EBD48);
    sub_1000057D8(&qword_10012F550, &qword_10012F558, &qword_1000EBD50, &protocol conformance descriptor for PlaceholderContentView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F548);
  }

  return result;
}

unint64_t sub_10006DA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012F588;
  if (!qword_10012F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F588);
  }

  return result;
}

unint64_t sub_10006DAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012F590;
  if (!qword_10012F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F590);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParentPushPopAnimator.Track(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ParentPushPopAnimator.Track(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_10006DBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002B38(&qword_10012F598, &qword_1000EBE28);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10006DC70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002B38(&qword_10012F598, &qword_1000EBE28);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10006DD20(uint64_t a1)
{
  sub_10006FDD8(319, &qword_10012E528, &qword_10012E530, &unk_1000EA9A0, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for BaseObjectGraph();
    if (v2 <= 0x3F)
    {
      sub_10006A924(319, &unk_10012EEA8, &type metadata for Bool, &type metadata accessor for Binding);
      if (v3 <= 0x3F)
      {
        sub_10006A924(319, &qword_10012CEE8, &type metadata for Bool, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_10006A924(319, &qword_10012DD08, &type metadata for Double, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_10006A924(319, &qword_10012EA98, &type metadata for CGFloat, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_10006FDD8(319, &qword_10012F608, &qword_10012E960, &qword_1000EAD08, &type metadata accessor for State);
              if (v7 <= 0x3F)
              {
                sub_10006FDD8(319, &qword_10012F610, &qword_10012F430, &qword_1000EBCA0, &type metadata accessor for State);
                if (v8 <= 0x3F)
                {
                  sub_10006FDD8(319, &qword_10012F618, &qword_10012F438, &qword_1000EBCA8, &type metadata accessor for State);
                  if (v9 <= 0x3F)
                  {
                    sub_10006DFCC();
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_10006DFCC()
{
  if (!qword_10012F620)
  {
    v0 = type metadata accessor for FocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_10012F620);
    }
  }
}

unint64_t sub_10006E028()
{
  result = qword_10012F690;
  if (!qword_10012F690)
  {
    sub_100005144(&qword_10012EF10, &qword_1000EB8D8);
    sub_1000057D8(&qword_10012F698, &qword_10012EF20, &qword_1000EB8E8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000057D8(&qword_10012F6A0, &qword_10012EF18, &qword_1000EB8E0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F690);
  }

  return result;
}

unint64_t sub_10006E110()
{
  result = qword_10012F6A8;
  if (!qword_10012F6A8)
  {
    sub_100005144(&qword_10012F6B0, &qword_1000EBE48);
    sub_100005144(&qword_10012F040, &qword_1000EB9A8);
    sub_10006BB74();
    swift_getOpaqueTypeConformance2();
    sub_100005144(&qword_10012F008, &qword_1000EB970);
    sub_100005144(&qword_10012F000, &qword_1000EB968);
    v1 = sub_10006B93C();
    sub_10006BAF4(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F6A8);
  }

  return result;
}

unint64_t sub_10006E28C()
{
  result = qword_10012F6B8;
  if (!qword_10012F6B8)
  {
    sub_100005144(&qword_10012F250, &qword_1000EBB08);
    sub_10006E318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F6B8);
  }

  return result;
}

unint64_t sub_10006E318()
{
  result = qword_10012F6C0;
  if (!qword_10012F6C0)
  {
    sub_100005144(&qword_10012F188, &qword_1000EBA98);
    sub_100005144(&qword_10012F190, &qword_1000EBAA0);
    sub_100005144(&qword_10012F198, &qword_1000EBAA8);
    sub_100005144(&qword_10012F1A0, &qword_1000EBAB0);
    sub_1000057D8(&qword_10012F1A8, &qword_10012F190, &qword_1000EBAA0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_10006C9CC();
    sub_100005144(&qword_10012F218, &qword_1000EBAE8);
    sub_100005144(&qword_10012F220, &qword_1000EBAF0);
    sub_100005144(&qword_10012F228, &qword_1000EBAF8);
    sub_100005144(&qword_10012F230, &qword_1000EBB00);
    sub_1000057D8(&qword_10012F238, &qword_10012F228, &qword_1000EBAF8, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
    sub_1000057D8(&qword_10012F240, &qword_10012F230, &qword_1000EBB00, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012F248, &qword_10012F220, &qword_1000EBAF0, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012F6C8, &qword_10012F6D0, &qword_1000EBE50, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F6C0);
  }

  return result;
}

unint64_t sub_10006E5F8()
{
  result = qword_10012F6D8;
  if (!qword_10012F6D8)
  {
    sub_100005144(&qword_10012F3A0, &qword_1000EBC40);
    sub_1000057D8(&qword_10012F6E0, &qword_10012F3B0, &qword_1000EBC50, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000057D8(&qword_10012F6E8, &qword_10012F3A8, &qword_1000EBC48, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F6D8);
  }

  return result;
}

unint64_t sub_10006E6E0()
{
  result = qword_10012F6F0;
  if (!qword_10012F6F0)
  {
    sub_100005144(&qword_10012F6F8, qword_1000EBE58);
    sub_100005144(&qword_10012F420, &qword_1000EBC90);
    v3 = sub_10006D628();
    sub_10006D704(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F6F0);
  }

  return result;
}

uint64_t sub_10006E7BC()
{
  sub_100005144(&qword_10012F4D0, &qword_1000EBCF0);
  sub_100005144(&qword_10012F4D8, &qword_1000EBCF8);
  sub_1000057D8(&qword_10012F4E0, &qword_10012F4D0, &qword_1000EBCF0, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_10006D7FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10006E878()
{
  sub_100005144(&qword_10012F530, &qword_1000EBD40);
  sub_100005144(&qword_10012F538, &qword_1000EBD48);
  sub_1000057D8(&qword_10012F540, &qword_10012F530, &qword_1000EBD40, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_10006D9A0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10006E974()
{
  result = qword_10012F730;
  if (!qword_10012F730)
  {
    sub_100005144(&qword_10012F700, &qword_1000EBEF8);
    sub_10006EA30();
    sub_10006778C(&qword_10012F760, type metadata accessor for OverlayNavigationBarPadding, &unk_1000EC178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F730);
  }

  return result;
}

unint64_t sub_10006EA30()
{
  result = qword_10012F738;
  if (!qword_10012F738)
  {
    sub_100005144(&qword_10012F728, &qword_1000EBF20);
    sub_1000057D8(&qword_10012F740, &qword_10012F748, &qword_1000EBF60, &protocol conformance descriptor for VStack<A>);
    sub_1000057D8(&qword_10012F750, &qword_10012F758, &qword_1000EBF68, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F738);
  }

  return result;
}

uint64_t sub_10006EB34()
{
  v1 = type metadata accessor for OverlayNavigationBar(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  if (*(v2 + 8))
  {
  }

  v3 = v2 + v1[15];
  v4 = type metadata accessor for ToolbarProxy_V1();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  sub_100002B38(&qword_10012F598, &qword_1000EBE28);

  v6 = v2 + v1[16];
  if (*(v6 + 24))
  {
    sub_1000054E0(*v6, *(v6 + 8), *(v6 + 16));
  }

  if (*(v2 + v1[18] + 24))
  {
    sub_10002E6CC((v2 + v1[18]));
  }

  if (*(v2 + v1[19] + 24))
  {
    sub_10002E6CC((v2 + v1[19]));
  }

  if (*(v2 + v1[20] + 24))
  {
    sub_10002E6CC((v2 + v1[20]));
  }

  return swift_deallocObject();
}

double sub_10006ED80(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for OverlayNavigationBar(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10005B764(a1, a2, v6);
}

uint64_t sub_10006EE2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

uint64_t sub_10006EEDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for OverlayNavigationBar(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_10006EF70()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10006EFB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011720;

  return sub_10005B9DC(a1, v4, v5, v7, v6);
}

unint64_t sub_10006F10C()
{
  result = qword_10012F810;
  if (!qword_10012F810)
  {
    sub_100005144(&qword_10012F818, &qword_1000EC040);
    sub_10006F198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F810);
  }

  return result;
}

unint64_t sub_10006F198()
{
  result = qword_10012F820;
  if (!qword_10012F820)
  {
    sub_100005144(&qword_10012F828, &qword_1000EC048);
    sub_10006F248(&qword_10012F830, &qword_10012F838, &qword_1000EC050, sub_10006F2C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F820);
  }

  return result;
}

uint64_t sub_10006F248(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005144(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006F2C4()
{
  result = qword_10012F840;
  if (!qword_10012F840)
  {
    sub_100005144(&qword_10012F848, &qword_1000EC058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F840);
  }

  return result;
}

unint64_t sub_10006F348()
{
  result = qword_10012F850;
  if (!qword_10012F850)
  {
    sub_100005144(&qword_10012F7C8, &qword_1000EC008);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F850);
  }

  return result;
}

uint64_t sub_10006F3EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_10006F404(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_10006F404(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_1000054F0(a1, a2, a3 & 1);
  }
}

void sub_10006F454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 254)
  {
    sub_10006F468(a1, a2, a3, a4, a5);
  }
}

void sub_10006F468(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    sub_10006F480(result, a2, a3, a4, a5 & 1);
  }
}

void sub_10006F480(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_1000054E0(a1, a2, a3 & 1);
  }
}

uint64_t sub_10006F4D0()
{

  return swift_deallocObject();
}

unint64_t sub_10006F508()
{
  result = qword_10012F908;
  if (!qword_10012F908)
  {
    sub_100005144(&qword_10012F900, &qword_1000EC0E8);
    sub_100005144(&qword_10012F910, &qword_1000EC0F0);
    sub_100005144(&qword_10012F918, &qword_1000EC0F8);
    sub_100005144(&qword_10012F920, &unk_1000EC100);
    sub_10006F668();
    sub_10006F6F4();
    sub_10006F838();
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012F968, &qword_10012F970, &qword_1000EC130, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F908);
  }

  return result;
}

unint64_t sub_10006F668()
{
  result = qword_10012F928;
  if (!qword_10012F928)
  {
    sub_100005144(&qword_10012F910, &qword_1000EC0F0);
    sub_100005578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F928);
  }

  return result;
}

unint64_t sub_10006F6F4()
{
  result = qword_10012F930;
  if (!qword_10012F930)
  {
    v1 = sub_100005144(&qword_10012F918, &qword_1000EC0F8);
    sub_100069844(v1, v2, v3);
    sub_100005144(&qword_10012F910, &qword_1000EC0F0);
    v6 = sub_10006F668();
    sub_10006F7E4(v6, v4, v5);
    swift_getOpaqueTypeConformance2();
    sub_10006F838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F930);
  }

  return result;
}

unint64_t sub_10006F7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012F938;
  if (!qword_10012F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F938);
  }

  return result;
}

unint64_t sub_10006F838()
{
  result = qword_10012F940;
  if (!qword_10012F940)
  {
    sub_100005144(&qword_10012F920, &unk_1000EC100);
    sub_10006F8F0();
    sub_1000057D8(&qword_10012F958, &qword_10012F960, &qword_1000EC128, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F940);
  }

  return result;
}

unint64_t sub_10006F8F0()
{
  result = qword_10012F948;
  if (!qword_10012F948)
  {
    sub_100005144(&qword_10012F950, &unk_1000EC118);
    sub_10006F668();
    sub_1000057D8(&qword_10012CE58, &qword_10012CD40, &qword_1000E9070, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F948);
  }

  return result;
}

unint64_t sub_10006F9A8()
{
  result = qword_10012F978;
  if (!qword_10012F978)
  {
    sub_100005144(&qword_10012F898, &qword_1000EC0A0);
    sub_1000057D8(&qword_10012F980, &qword_10012F988, &qword_1000EC138, &protocol conformance descriptor for Button<A>);
    sub_1000057D8(&qword_10012F080, &qword_10012F088, &qword_1000EB9F8, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F978);
  }

  return result;
}

unint64_t sub_10006FA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012F990;
  if (!qword_10012F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F990);
  }

  return result;
}

unint64_t sub_10006FAE0()
{
  result = qword_10012F9A8;
  if (!qword_10012F9A8)
  {
    sub_100005144(&qword_10012F8A8, &qword_1000EC0B0);
    sub_100005144(&qword_10012F8A0, &qword_1000EC0A8);
    sub_100005144(&qword_10012F890, &qword_1000EC098);
    sub_1000057D8(&qword_10012F998, &qword_10012F890, &qword_1000EC098, &protocol conformance descriptor for StrokeFocusEffect<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F9A8);
  }

  return result;
}

uint64_t sub_10006FC38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012E0E0, qword_1000EA510);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10006FCC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012E0E0, qword_1000EA510);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10006FD40(uint64_t a1)
{
  sub_10006FDD8(319, &qword_10012E158, &qword_100132550, &qword_1000EC170, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10006FDD8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100005144(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10006FE3C()
{
  sub_100005144(&qword_10012F718, &qword_1000EBF10);
  type metadata accessor for NavigationPopEventCoordinator.Container(255);
  sub_100005144(&qword_10012F710, &qword_1000EBF08);
  sub_100005144(&qword_10012F708, &qword_1000EBF00);
  sub_100005144(&qword_10012F700, &qword_1000EBEF8);
  type metadata accessor for ZoomCoordinator.ScrollGeometry();
  sub_10006E974();
  sub_10006778C(&qword_10012F168, &type metadata accessor for ZoomCoordinator.ScrollGeometry, &protocol conformance descriptor for ZoomCoordinator.ScrollGeometry);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10006778C(&qword_10012F768, type metadata accessor for NavigationPopEventCoordinator.Container, &unk_1000EAD88);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100070024()
{
  result = qword_10012FA58;
  if (!qword_10012FA58)
  {
    sub_100005144(&qword_10012FA48, &qword_1000EC1C8);
    sub_1000700B0();
    sub_10007013C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FA58);
  }

  return result;
}

unint64_t sub_1000700B0()
{
  result = qword_10012FA60;
  if (!qword_10012FA60)
  {
    sub_100005144(&qword_10012FA68, &qword_1000EC1D8);
    sub_10007013C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FA60);
  }

  return result;
}

unint64_t sub_10007013C()
{
  result = qword_10012FA70;
  if (!qword_10012FA70)
  {
    sub_100005144(&qword_10012FA50, &qword_1000EC1D0);
    sub_1000057D8(&qword_10012FA78, &qword_10012FA80, &qword_1000EC1E0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FA70);
  }

  return result;
}

unint64_t sub_1000701F8()
{
  result = qword_10012FA90;
  if (!qword_10012FA90)
  {
    v1 = sub_100005144(&qword_10012FA98, &qword_1000EC1F8);
    sub_100069844(v1, v2, v3);
    sub_100070024();
    sub_10007013C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FA90);
  }

  return result;
}

uint64_t OverlayFlowAuthorityProvider.selectedTabId.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider, &protocol conformance descriptor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100067644(v1 + 16, a1);
}

uint64_t sub_10007043C(uint64_t a1)
{
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  swift_getKeyPath();
  v4[0] = v1;
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider, &protocol conformance descriptor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100067644(v1 + 16, v4);
  dispatch thunk of ZoomCoordinator.save(for:)();

  sub_1000708BC(v4);
  swift_beginAccess();
  sub_100072CD8(a1, v1 + 16);
  swift_endAccess();
  static ZoomCoordinator.shared.getter();
  swift_getKeyPath();
  v4[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100067644(v1 + 16, v4);
  dispatch thunk of ZoomCoordinator.load(with:)();

  sub_1000708BC(a1);
  return sub_1000708BC(v4);
}

uint64_t sub_1000705E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider, &protocol conformance descriptor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100067644(v3 + 16, a2);
}

uint64_t type metadata accessor for OverlayFlowAuthorityProvider(uint64_t a1)
{
  result = qword_10012FAE8;
  if (!qword_10012FAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OverlayFlowAuthorityProvider.selectedTabId.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_100067644(v1 + 16, v6);
  v3 = static AnyHashable.== infix(_:_:)();
  sub_1000708BC(v6);
  if (v3)
  {
    sub_100067644(a1, v6);
    sub_10007043C(v6);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v6[0] = v1;
    sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider, &protocol conformance descriptor for OverlayFlowAuthorityProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return sub_1000708BC(a1);
}

void (*OverlayFlowAuthorityProvider.selectedTabId.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  swift_getKeyPath();
  v4[14] = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider___observationRegistrar;
  *v4 = v1;
  v4[15] = sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider, &protocol conformance descriptor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100067644(v1 + 16, v4);
  return sub_100070A74;
}

void sub_100070A74(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    sub_100067644(*a1, (v2 + 5));
    sub_10007043C((v2 + 5));
    sub_1000708BC(v2);
  }

  else
  {
    sub_10007043C(*a1);
  }

  *v2 = v3;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v2);
}

uint64_t OverlayFlowAuthorityProvider.flowAuthority.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider, &protocol conformance descriptor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__flowAuthority;
  swift_beginAccess();
  v4 = sub_100002B38(&qword_10012FAB0, &qword_1000EC250);
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_100070C28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider, &protocol conformance descriptor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__flowAuthority;
  swift_beginAccess();
  v5 = sub_100002B38(&qword_10012FAB0, &qword_1000EC250);
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100070D30(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100002B38(&qword_10012FAB0, &qword_1000EC250);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-v7];
  (*(v5 + 16))(&v11[-v7], a1, v4, v6);
  v9 = *a2;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  v14 = v9;
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider, &protocol conformance descriptor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return (*(v5 + 8))(v8, v4);
}

uint64_t OverlayFlowAuthorityProvider.flowAuthority.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider, &protocol conformance descriptor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v2 = sub_100002B38(&qword_10012FAB0, &qword_1000EC250);
  return (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t sub_100070FD0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__flowAuthority;
  swift_beginAccess();
  v5 = sub_100002B38(&qword_10012FAB0, &qword_1000EC250);
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t (*OverlayFlowAuthorityProvider.flowAuthority.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider, &protocol conformance descriptor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_1000711DC;
}

void sub_1000711DC(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t OverlayFlowAuthorityProvider.tabs.getter()
{
  swift_getKeyPath();
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider, &protocol conformance descriptor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10007130C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider, &protocol conformance descriptor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__tabs);
}

uint64_t sub_10007141C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__tabs;

  v5 = sub_100071B08(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider, &protocol conformance descriptor for OverlayFlowAuthorityProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t OverlayFlowAuthorityProvider.__allocating_init(tabsInfoProvider:defaultTab:objectGraph:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v9 = sub_100071D1C(a1, a2, a3, a4);

  return v9;
}

uint64_t OverlayFlowAuthorityProvider.init(tabsInfoProvider:defaultTab:objectGraph:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_100071D1C(a1, a2, a3, a4);

  return v5;
}

void sub_100071654(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_getKeyPath();
    *&v6[0] = v4;
    sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider, &protocol conformance descriptor for OverlayFlowAuthorityProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    sub_100067644(v4 + 16, v6);

    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  else
  {
    AnyHashable.init<A>(_:)();
  }
}

uint64_t sub_1000717A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_100067644(a1, v10);
    swift_beginAccess();
    sub_100067644(v6 + 16, v9);
    v7 = static AnyHashable.== infix(_:_:)();
    sub_1000708BC(v9);
    if (v7)
    {
      sub_100067644(v10, v9);
      sub_10007043C(v9);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v9[0] = v6;
      sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider, &protocol conformance descriptor for OverlayFlowAuthorityProvider);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    return sub_1000708BC(v10);
  }

  return result;
}

uint64_t OverlayFlowAuthorityProvider.deinit()
{
  sub_1000708BC(v0 + 16);
  v1 = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__flowAuthority;
  v2 = sub_100002B38(&qword_10012FAB0, &qword_1000EC250);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t OverlayFlowAuthorityProvider.__deallocating_deinit()
{
  sub_1000708BC(v0 + 16);
  v1 = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__flowAuthority;
  v2 = sub_100002B38(&qword_10012FAB0, &qword_1000EC250);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_100071B08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreTab();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_100072C44(&qword_10012FB98, &type metadata accessor for StoreTab, &protocol conformance descriptor for StoreTab);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100071D1C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v79 = a4;
  v74 = a3;
  v75 = a2;
  v76 = a1;
  v60 = type metadata accessor for StoreTab.Identifier();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  __chkstk_darwin(v7 - 8);
  v71 = &v57 - v8;
  v70 = type metadata accessor for StoreTab();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v57 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for FlowOrigin();
  v68 = *(v72 - 8);
  __chkstk_darwin(v72);
  v67 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for FlowAnimationBehavior();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for FlowPresentationContext();
  v12 = *(v63 - 8);
  __chkstk_darwin(v63);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v15 - 8);
  v16 = sub_100002B38(&qword_10012CCD0, &unk_1000E8ED0);
  __chkstk_darwin(v16 - 8);
  v18 = &v57 - v17;
  v19 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  __chkstk_darwin(v19 - 8);
  v21 = &v57 - v20;
  v61 = &v57 - v20;
  v22 = type metadata accessor for FlowPage();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v25;
  v26 = sub_100002B38(&qword_10012FAB0, &qword_1000EC250);
  v77 = *(v26 - 8);
  v78 = v26;
  __chkstk_darwin(v26);
  v73 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v57 - v29;
  *&v82[0] = 0;
  *(&v82[0] + 1) = 0xE000000000000000;
  AnyHashable.init<A>(_:)();
  v31 = v84;
  *(v5 + 16) = v83;
  *(v5 + 32) = v31;
  *(v5 + 48) = v85;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  (*(v23 + 104))(v25, enum case for FlowPage.page(_:), v22);
  v32 = type metadata accessor for URL();
  (*(*(v32 - 8) + 56))(v21, 1, 1, v32);
  v33 = type metadata accessor for ReferrerData();
  (*(*(v33 - 8) + 56))(v18, 1, 1, v33);
  memset(v82, 0, 32);
  static ActionMetrics.notInstrumented.getter();
  static FlowActionPresentation.tabSelect.getter();
  (*(v12 + 104))(v14, enum case for FlowPresentationContext.infer(_:), v63);
  (*(v65 + 104))(v64, enum case for FlowAnimationBehavior.infer(_:), v66);
  (*(v68 + 104))(v67, enum case for FlowOrigin.inapp(_:), v72);
  type metadata accessor for FlowAction();
  swift_allocObject();
  *&v83 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  sub_100072C44(&qword_10012CCD8, &type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
  v67 = sub_100072C44(&qword_10012CCE0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
  FlowAuthority.init(content:)();
  v34 = *(v77 + 32);
  v72 = v30;
  v34(v5 + OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__flowAuthority, v30, v78);
  *(v5 + OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__tabs) = _swiftEmptyArrayStorage;
  v68 = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider___observationRegistrar;
  ObservationRegistrar.init()();
  v35 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v36 = static MainActor.shared.getter();
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = &protocol witness table for MainActor;
  v37[4] = v35;

  v38 = swift_allocObject();
  swift_weakInit();

  v39 = static MainActor.shared.getter();
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = &protocol witness table for MainActor;
  v41 = v71;
  v42 = v69;
  v40[4] = v38;
  v43 = v70;

  Binding.init(get:set:)();
  sub_1000035B4(v79, v41, &qword_10012E650, &qword_1000EDA30);
  if ((*(v42 + 48))(v41, 1, v43) == 1)
  {
    v44 = v76;

    sub_100005688(v41, &qword_10012E650, &qword_1000EDA30);
  }

  else
  {
    v45 = v57;
    (*(v42 + 32))(v57, v41, v43);
    v44 = v76;

    v46 = v58;
    StoreTab.identifier.getter();
    v47 = StoreTab.Identifier.rawValue.getter();
    v49 = v48;
    (*(v59 + 8))(v46, v60);
    v80 = v47;
    v81 = v49;
    AnyHashable.init<A>(_:)();
    sub_100002B38(&qword_10012FB90, &qword_1000EC300);
    Binding.wrappedValue.setter();
    (*(v42 + 8))(v45, v43);
  }

  v75(v44);
  sub_1000035B4(&v83, v82, &qword_10012FB90, &qword_1000EC300);
  v50 = v73;
  FlowAuthority.init(tabSelection:tabContent:)();
  sub_100005688(&v83, &qword_10012FB90, &qword_1000EC300);
  v52 = v77;
  v51 = v78;
  v53 = v72;
  (*(v77 + 16))(v72, v50, v78);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *&v83 = v5;
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider, &protocol conformance descriptor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v55 = *(v52 + 8);
  v55(v53, v51);
  sub_10007141C(v44);
  sub_100005688(v79, &qword_10012E650, &qword_1000EDA30);
  v55(v50, v51);
  return v5;
}

void sub_1000729BC(uint64_t a1)
{
  sub_100072AA0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100072AA0(uint64_t a1)
{
  if (!qword_10012FAF8)
  {
    type metadata accessor for FlowAction();
    sub_100072C44(&qword_10012CCD8, &type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
    sub_100072C44(&qword_10012CCE0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
    v1 = type metadata accessor for FlowAuthority();
    if (!v2)
    {
      atomic_store(v1, &qword_10012FAF8);
    }
  }
}

uint64_t sub_100072B6C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100072BB4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100072C00()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__tabs) = *(v0 + 24);
}

uint64_t sub_100072C44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100072D68@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002B38(&unk_100132500, &unk_1000EA640);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for DashboardContentView(0);
  sub_1000035B4(v1 + *(v10 + 40), v9, &unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10007A9C0(v9, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100072F40@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v3 = type metadata accessor for DashboardContentView(0);
  v70 = *(v3 - 8);
  v69 = *(v70 + 64);
  v71 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v68 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002B38(&qword_10012FFD0, &qword_1000EC530);
  __chkstk_darwin(v5 - 8);
  v6 = sub_100002B38(&qword_10012FE28, &unk_1000EC390);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v67 - v8;
  v72 = sub_100002B38(&qword_10012FF78, &qword_1000EC510);
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v11 = &v67 - v10;
  v74 = sub_100002B38(&qword_10012FF60, &qword_1000EC508);
  __chkstk_darwin(v74);
  v13 = &v67 - v12;
  v78 = sub_100002B38(&qword_10012FF50, &qword_1000EC500);
  __chkstk_darwin(v78);
  v15 = &v67 - v14;
  v79 = sub_100002B38(&qword_10012FF48, &qword_1000EC4F8);
  v80 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v67 - v16;
  v82 = sub_100002B38(&qword_10012FF40, &qword_1000EC4F0);
  v83 = *(v82 - 8);
  __chkstk_darwin(v82);
  v75 = &v67 - v17;
  v84 = sub_100002B38(&qword_10012FF30, &qword_1000EC4E8);
  __chkstk_darwin(v84);
  v81 = &v67 - v18;
  v89 = sub_100002B38(&qword_10012FF20, &qword_1000EC4D8);
  v86 = *(v89 - 8);
  __chkstk_darwin(v89);
  v77 = &v67 - v19;
  v20 = sub_100002B38(&qword_10012FF18, &qword_1000EC4D0);
  v87 = *(v20 - 8);
  v88 = v20;
  __chkstk_darwin(v20);
  v85 = &v67 - v21;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v7 + 8))(v9, v6);
  v22 = v68;
  sub_100079A18(v2, v68);
  v23 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v24 = swift_allocObject();
  sub_100079D7C(v22, v24 + v23);
  type metadata accessor for FlowAction();
  sub_100002B38(&qword_10012FFD8, &qword_1000EC568);
  sub_1000798F8(&qword_10012CCD8, &type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
  sub_1000798F8(&qword_10012CCE0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
  sub_100079E60();
  FlowView.init(following:tabLabels:destinations:)();
  v92 = v2;
  sub_100002B38(&qword_10012FF88, &qword_1000EC518);
  sub_1000057D8(&qword_10012FF80, &qword_10012FF88, &qword_1000EC518, &protocol conformance descriptor for FlowFullScreenCoverViewModifier<A>);
  v25 = v72;
  FlowView.customPresentation<A>(_:)();
  (*(v73 + 8))(v11, v25);
  v26 = *v2;
  v91 = v2;
  v27 = v2;
  v67 = v2;
  type metadata accessor for BaseObjectGraph();
  sub_100079814();
  View.actionDispatcher<A>(with:implementations:)();
  sub_100005688(v13, &qword_10012FF60, &qword_1000EC508);
  v28 = static MoltresTint.standard.getter();
  KeyPath = swift_getKeyPath();
  v93 = v28;
  v30 = AnyShapeStyle.init<A>(_:)();
  v31 = v78;
  v32 = &v15[*(v78 + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  v33 = type metadata accessor for GSKDeepLinkWithReferrerIntent();
  v34 = sub_100079708();
  v35 = sub_1000798F8(&qword_10012FFA0, &type metadata accessor for GSKDeepLinkWithReferrerIntent, &protocol conformance descriptor for GSKDeepLinkWithReferrerIntent);
  v36 = v76;
  View.onDeepLink<A>(prepare:recover:)();
  sub_100005688(v15, &qword_10012FF50, &qword_1000EC500);
  v93 = v31;
  v94 = v33;
  v95 = v34;
  v96 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v75;
  v78 = v26;
  v39 = v79;
  View.videoPlaybackCoordinator(objectGraph:)();
  (*(v80 + 8))(v36, v39);
  v40 = v71;
  v41 = (v27 + *(v71 + 56));
  v43 = v41[1];
  v93 = *v41;
  v42 = v93;
  v94 = v43;
  sub_100002B38(&qword_100130018, &qword_1000EC5C0);
  State.wrappedValue.getter();
  type metadata accessor for DashboardTabViewState(0);
  v93 = v39;
  v94 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
  v44 = v81;
  v45 = v82;
  View.environment<A>(_:)();

  (*(v83 + 8))(v38, v45);
  v46 = swift_getKeyPath();
  v93 = v42;
  v94 = v43;
  State.wrappedValue.getter();
  v48 = *(v98 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_bundleID);
  v47 = *(v98 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_bundleID + 8);

  v49 = v84;
  v50 = &v44[*(v84 + 36)];
  v51 = v44;
  *v50 = v46;
  v50[1] = v48;
  v50[2] = v47;
  v52 = sub_1000794F4();
  v55 = sub_100079940(v52, v53, v54);
  v56 = v77;
  View.tabViewStyle<A>(_:)();
  sub_100005688(v51, &qword_10012FF30, &qword_1000EC4E8);
  sub_1000035B4(v67 + *(v40 + 40), &v93, &unk_100131120, &unk_1000EAAF0);
  v57 = v96;
  if (v96)
  {
    v58 = v97;
    sub_10002D754(&v93, v96);
    v59 = (*(v58 + 24))(v57, v58) & 1;
    sub_10002E6CC(&v93);
  }

  else
  {
    sub_100005688(&v93, &unk_100131120, &unk_1000EAAF0);
    v59 = 2;
  }

  LOBYTE(v98) = v59;
  v60 = sub_100002B38(&qword_10012FF28, &qword_1000EC4E0);
  v93 = v49;
  v94 = &type metadata for GameOverlayTabViewStyle;
  v95 = v52;
  v96 = v55;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = sub_100079994();
  v63 = v85;
  v64 = v89;
  View.onChange<A>(of:initial:_:)();
  (*(v86 + 8))(v56, v64);
  v93 = v64;
  v94 = v60;
  v95 = v61;
  v96 = v62;
  swift_getOpaqueTypeConformance2();
  v65 = v88;
  View.withInternalSettingsGesture(using:)();
  return (*(v87 + 8))(v63, v65);
}

uint64_t sub_100073C24@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v78 = a1;
  v81 = a3;
  v3 = sub_100002B38(&qword_100130060, &qword_1000EC630);
  __chkstk_darwin(v3);
  v5 = &v60 - v4;
  done = type metadata accessor for FlowSheetDoneButtonLabelStyle();
  v72 = *(done - 8);
  v73 = done;
  __chkstk_darwin(done);
  v71 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DashboardContentView(0);
  v9 = *(v8 - 8);
  v65 = v8;
  v66 = v9;
  __chkstk_darwin(v8);
  v67 = v10;
  v68 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100002B38(&qword_10012FFF8, &qword_1000EC578);
  __chkstk_darwin(v69);
  v70 = (&v60 - v11);
  v12 = sub_100002B38(&qword_10012FFF0, &qword_1000EC570);
  __chkstk_darwin(v12);
  v74 = &v60 - v13;
  v80 = type metadata accessor for FlowDestination();
  v76 = *(v80 - 8);
  v14 = *(v76 + 64);
  __chkstk_darwin(v80);
  v64 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v75 = &v60 - v16;
  __chkstk_darwin(v17);
  v19 = &v60 - v18;
  v20 = type metadata accessor for FlowAction.Destination();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v79 = (&v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __chkstk_darwin(v23);
  v26 = &v60 - v25;
  v27 = *(v21 + 16);
  v27(&v60 - v25, v78, v20, v24);
  if ((*(v21 + 88))(v26, v20) != enum case for FlowAction.Destination.games(_:))
  {
    goto LABEL_5;
  }

  v62 = v12;
  v63 = v5;
  v78 = v3;
  v28 = v79;
  (v27)(v79, v26, v20);
  (*(v21 + 96))(v28, v20);
  if (!swift_dynamicCast())
  {
    sub_10002E6CC(v79);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    sub_100079EEC();
    _ConditionalContent<>.init(storage:)();
    return (*(v21 + 8))(v26, v20, v58);
  }

  v29 = v76;
  v60 = *(v76 + 32);
  v30 = v75;
  v31 = v80;
  v60(v75, v19, v80);
  v32 = v77;
  v33 = (v77 + *(v65 + 28));
  v35 = *v33;
  v34 = v33[1];
  v65 = v35;
  v61 = v34;
  v36 = v64;
  (*(v29 + 16))(v64, v30, v31);
  v37 = v68;
  sub_100079A18(v32, v68);
  v38 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v39 = (v14 + *(v66 + 80) + v38) & ~*(v66 + 80);
  v40 = swift_allocObject();
  v60((v40 + v38), v36, v31);
  v41 = v40;
  sub_100079D7C(v37, v40 + v39);
  KeyPath = swift_getKeyPath();
  v43 = v70;
  *v70 = KeyPath;
  sub_100002B38(&qword_100130068, &qword_1000EC668);
  swift_storeEnumTagMultiPayload();
  v44 = swift_getKeyPath();
  v45 = v69;
  v46 = v43 + *(v69 + 36);
  *v46 = v44;
  *(v46 + 8) = 0;
  v47 = (v43 + *(v45 + 40));
  v48 = v65;
  v49 = v61;
  *v47 = v65;
  v47[1] = v49;
  v50 = (v43 + *(v45 + 44));
  *v50 = sub_10007A834;
  v50[1] = v41;
  v51 = v71;
  v52 = v72;
  v53 = v73;
  (*(v72 + 104))(v71, enum case for FlowSheetDoneButtonLabelStyle.iconOnly(_:), v73);
  sub_10000519C(v48, v49);
  sub_1000057D8(&qword_100130000, &qword_10012FFF8, &qword_1000EC578, &unk_1000EC7C0);
  v54 = v74;
  View.flowSheetDoneButtonLabelStyle(_:)();
  (*(v52 + 8))(v51, v53);
  sub_100005688(v43, &qword_10012FFF8, &qword_1000EC578);
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v55 = v82;
  sub_1000798F8(&qword_100130070, &type metadata accessor for ArtworkLoader, &protocol conformance descriptor for ArtworkLoader);
  v56 = static ObservableObject.environmentStore.getter();
  v57 = (v54 + *(v62 + 36));
  *v57 = v56;
  v57[1] = v55;
  sub_10007A950(v54, v63);
  swift_storeEnumTagMultiPayload();
  sub_100079EEC();
  _ConditionalContent<>.init(storage:)();
  sub_100005688(v54, &qword_10012FFF0, &qword_1000EC570);
  (*(v76 + 8))(v75, v80);
  v58.n128_f64[0] = sub_10002E6CC(v79);
  return (*(v21 + 8))(v26, v20, v58);
}

uint64_t sub_10007441C(uint64_t a1, uint64_t a2)
{
  v2 = sub_100002B38(&qword_100130030, &qword_1000EC610);
  __chkstk_darwin(v2 - 8);
  type metadata accessor for DashboardContentView(0);
  sub_100002B38(&qword_10012FE20, &qword_1000EC388);
  State.projectedValue.getter();

  sub_100002B38(&qword_10012FFD8, &qword_1000EC568);
  sub_100079E60();
  return FlowFullScreenCoverViewModifier.init(following:destinations:)();
}

uint64_t sub_100074514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v58 = a2;
  v2 = sub_100002B38(&qword_100130020, &qword_1000EC600);
  v3 = *(v2 - 8);
  v56 = v2;
  v57 = v3;
  __chkstk_darwin(v2);
  v55 = v46 - v4;
  v5 = sub_100002B38(&qword_100130028, &qword_1000EC608);
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  __chkstk_darwin(v5);
  v52 = v46 - v7;
  v8 = sub_100002B38(&qword_100130030, &qword_1000EC610);
  __chkstk_darwin(v8 - 8);
  v49 = sub_100002B38(&qword_100130038, &qword_1000EC618);
  v51 = *(v49 - 8);
  __chkstk_darwin(v49);
  v10 = v46 - v9;
  v11 = sub_100002B38(&qword_10012EBF8, &qword_1000EC620);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v62 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v61 = v46 - v15;
  __chkstk_darwin(v16);
  v18 = v46 - v17;
  __chkstk_darwin(v19);
  v21 = v46 - v20;
  v50 = type metadata accessor for DashboardContentView(0);
  v46[2] = *(v50 + 44);
  v46[1] = sub_100002B38(&qword_10012FE20, &qword_1000EC388);
  State.projectedValue.getter();
  v22 = type metadata accessor for BaseObjectGraph();
  FullScreenCoverFlowActionImplementation.init(following:)();
  ActionDispatcher.init()();
  v59 = *(v12 + 16);
  v64 = v21;
  v59(v21, v18, v11);
  sub_1000057D8(&qword_100130040, &qword_100130038, &qword_1000EC618, &protocol conformance descriptor for FullScreenCoverFlowActionImplementation<A>);
  v23 = v49;
  ActionDispatcher.add<A>(_:)();
  v24 = *(v12 + 8);
  v24(v18, v11);
  (*(v51 + 8))(v10, v23);
  State.projectedValue.getter();
  v25 = v52;
  FullScreenCoverFlowBackActionImplementation.init(following:)();
  v26 = v61;
  ActionDispatcher.init()();
  v27 = v18;
  v63 = v18;
  v28 = v26;
  v29 = v59;
  v59(v27, v26, v11);
  sub_1000057D8(&qword_100130048, &qword_100130028, &qword_1000EC608, &protocol conformance descriptor for FullScreenCoverFlowBackActionImplementation<A>);
  v30 = v53;
  ActionDispatcher.add<A>(_:)();
  v47 = v24;
  v24(v28, v11);
  (*(v54 + 8))(v25, v30);
  Strong = swift_unknownObjectWeakLoadStrong();
  v32 = [Strong rootViewController];

  v33 = v55;
  v48 = v22;
  GamesSignInActionImplementation.init(hostViewController:)();
  v34 = v62;
  ActionDispatcher.init()();
  v35 = v28;
  v29(v28, v34, v11);
  sub_1000057D8(&qword_100130050, &qword_100130020, &qword_1000EC600, &protocol conformance descriptor for GamesSignInActionImplementation<A>);
  v36 = v33;
  v37 = v56;
  v38 = v35;
  ActionDispatcher.add<A>(_:)();
  v24(v34, v11);
  (*(v57 + 8))(v36, v37);
  sub_100002B38(&qword_100130058, &qword_1000EC628);
  v39 = *(v12 + 72);
  v40 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v57 = 2 * v39;
  v60 = swift_allocObject();
  v41 = v60 + v40;
  v42 = v59;
  v59((v60 + v40), v64, v11);
  v42(v41 + v39, v63, v11);
  v42(v41 + 2 * v39, v38, v11);
  ActionDispatcher.init()();
  v43 = v62;
  v42(v62, v41, v11);
  ActionDispatcher.add(contentsOf:)();
  v44 = v47;
  v47(v43, v11);
  v42(v43, (v41 + v39), v11);
  ActionDispatcher.add(contentsOf:)();
  v44(v43, v11);
  v42(v43, (v41 + v57), v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  ActionDispatcher.add(contentsOf:)();
  v44(v43, v11);
  v44(v61, v11);
  v44(v63, v11);
  return (v44)(v64, v11);
}

uint64_t sub_100074CC0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for DeepLink();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100074D80, 0, 0);
}

uint64_t sub_100074D80()
{
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  GSKDeepLinkWithReferrerIntent.init(with:)();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100074E0C@<X0>(uint64_t *a4@<X8>)
{
  a4[3] = type metadata accessor for Models.AlertAction();
  a4[4] = &protocol witness table for Models.AlertAction;
  sub_100012854(a4);
  swift_errorRetain();

  return Models.AlertAction.init(contentUnavailableError:retry:)();
}

double sub_100074E84(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ZoomCoordinator.DashboardVisibilityState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *a2;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100011F80(v10, qword_100135C88);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109376;
    v14 = v8 != 2 && (v8 & 1) != 0;
    *(v13 + 4) = v14;
    *(v13 + 8) = 1024;
    v15 = v9 != 2 && (v9 & 1) != 0;
    *(v13 + 10) = v15;
    _os_log_impl(&_mh_execute_header, v11, v12, "GameCenterDashboard: Observed a change of remoteAlertContext.dismissDashboardRequested (%{BOOL}d -> %{BOOL}d)", v13, 0xEu);
  }

  if (v9 != 2 && (v9 & 1) != 0)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "GameCenterDashboard: Calling dismissHandler..", v19, 2u);
    }

    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.shared.getter();
    (*(v5 + 104))(v7, enum case for ZoomCoordinator.DashboardVisibilityState.closed(_:), v4);
    dispatch thunk of ZoomCoordinator.dashboardVisibility.setter();
  }

  return result;
}

uint64_t sub_100075104@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v42 = sub_100002B38(&qword_10012FF08, &qword_1000EC4B8);
  __chkstk_darwin(v42);
  v44 = &v40 - v2;
  v3 = sub_100002B38(&qword_10012FF10, &unk_1000EC4C0);
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v43 = &v40 - v4;
  v5 = type metadata accessor for UserInterfaceSizeClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&qword_10012E1A0, &qword_1000EC1F0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v40 - v10;
  v12 = sub_100002B38(&qword_100132550, &qword_1000EC170);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  v41 = v1;
  sub_100072D68((&v40 - v19));
  (*(v6 + 104))(v17, enum case for UserInterfaceSizeClass.compact(_:), v5);
  (*(v6 + 56))(v17, 0, 1, v5);
  v21 = *(v9 + 56);
  sub_1000035B4(v20, v11, &qword_100132550, &qword_1000EC170);
  sub_1000035B4(v17, &v11[v21], &qword_100132550, &qword_1000EC170);
  v22 = *(v6 + 48);
  if (v22(v11, 1, v5) != 1)
  {
    sub_1000035B4(v11, v14, &qword_100132550, &qword_1000EC170);
    if (v22(&v11[v21], 1, v5) != 1)
    {
      v25 = v40;
      (*(v6 + 32))(v40, &v11[v21], v5);
      sub_1000798F8(&qword_10012E1C8, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v6 + 8);
      v26(v25, v5);
      sub_100005688(v17, &qword_100132550, &qword_1000EC170);
      sub_100005688(v20, &qword_100132550, &qword_1000EC170);
      v26(v14, v5);
      sub_100005688(v11, &qword_100132550, &qword_1000EC170);
      v24 = v45;
      v23 = v46;
      goto LABEL_8;
    }

    sub_100005688(v17, &qword_100132550, &qword_1000EC170);
    sub_100005688(v20, &qword_100132550, &qword_1000EC170);
    (*(v6 + 8))(v14, v5);
    goto LABEL_6;
  }

  sub_100005688(v17, &qword_100132550, &qword_1000EC170);
  sub_100005688(v20, &qword_100132550, &qword_1000EC170);
  if (v22(&v11[v21], 1, v5) != 1)
  {
LABEL_6:
    sub_100005688(v11, &qword_10012E1A0, &qword_1000EC1F0);
    v24 = v45;
    v23 = v46;
    goto LABEL_8;
  }

  sub_100005688(v11, &qword_100132550, &qword_1000EC170);
  v24 = v45;
  v23 = v46;
LABEL_8:
  v27 = v43;
  sub_100072F40(v43);
  (*(v24 + 16))(v44, v27, v23);
  swift_storeEnumTagMultiPayload();
  v28 = sub_100005144(&qword_10012FF18, &qword_1000EC4D0);
  v29 = sub_100005144(&qword_10012FF20, &qword_1000EC4D8);
  v30 = sub_100005144(&qword_10012FF28, &qword_1000EC4E0);
  v31 = sub_100005144(&qword_10012FF30, &qword_1000EC4E8);
  v32 = sub_1000794F4();
  v35 = sub_100079940(v32, v33, v34);
  v48 = v31;
  v49 = &type metadata for GameOverlayTabViewStyle;
  v50 = v32;
  v51 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_100079994();
  v48 = v29;
  v49 = v30;
  v50 = OpaqueTypeConformance2;
  v51 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  v48 = v28;
  v49 = v38;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v24 + 8))(v27, v23);
}

uint64_t sub_1000757DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005144(&qword_100130138, qword_1000EC810);
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = v23 - v14;
  (*(v2 + *(a1 + 44)))(v13);
  v16 = static Alignment.center.getter();
  v17 = *(a1 + 24);
  sub_10007B558(v16, v18, v19);
  View.background<A>(_:alignment:)();
  (*(v5 + 8))(v7, v4);
  v20 = sub_1000057D8(&qword_100130148, &qword_100130138, qword_1000EC810, &protocol conformance descriptor for _BackgroundModifier<A>);
  v23[2] = v17;
  v23[3] = v20;
  swift_getWitnessTable();
  sub_10009B680();
  v21 = *(v9 + 8);
  v21(v11, v8);
  sub_10009B680();
  return (v21)(v15, v8);
}

uint64_t sub_100075A68()
{
  swift_getKeyPath();
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__tabLayout);
}

void sub_100075B4C(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__tabLayout) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__tabLayout) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100075C64(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  __chkstk_darwin(v3 - 8);
  v24 = &v21[-v4];
  v5 = type metadata accessor for StoreTab.Identifier();
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v21[-v9];
  v11 = type metadata accessor for StoreTab();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v32 = v1;
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
  swift_beginAccess();
  v16 = *(v12 + 16);
  v26 = v2;
  v23 = v16;
  v16(v14, v2 + v15, v11);
  StoreTab.identifier.getter();
  (*(v12 + 8))(v14, v11);
  static StoreTab.Identifier.overlayActiveCallPage.getter();
  sub_1000798F8(&qword_100130080, &type metadata accessor for StoreTab.Identifier, &protocol conformance descriptor for StoreTab.Identifier);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v30 == v28 && v31 == v29)
  {
    v17 = *(v27 + 8);
    v17(v7, v5);
    v17(v10, v5);
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v18 = *(v27 + 8);
    v18(v7, v5);
    v18(v10, v5);

    if ((v22 & 1) == 0)
    {
      return result;
    }
  }

  v20 = v24;
  v23(v24, v25, v11);
  (*(v12 + 56))(v20, 0, 1, v11);
  return sub_100076A34(v20);
}

uint64_t sub_100076050@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
  swift_beginAccess();
  v4 = type metadata accessor for StoreTab();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_100076148@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
  swift_beginAccess();
  v5 = type metadata accessor for StoreTab();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100076240(uint64_t a1)
{
  v2 = type metadata accessor for StoreTab();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_10007630C(v5);
}

uint64_t sub_10007630C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StoreTab();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  sub_1000798F8(&qword_10012FB98, &type metadata accessor for StoreTab, &protocol conformance descriptor for StoreTab);
  v19 = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v5 + 8);
  v18(v10, v4);
  if (a1)
  {
    v12(v10, v19, v4);
    v12(v7, v2 + v11, v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v11, v10, v4);
    swift_endAccess();
    sub_100075C64(v7);
    v13 = v18;
    v18(v7, v4);
    v13(v10, v4);
    return (v13)(v19, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v16 = v19;
    *(&v17 - 2) = v2;
    *(&v17 - 1) = v16;
    v20 = v2;
    sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return (v18)(v19, v4);
  }
}

uint64_t sub_100076628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreTab();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v8);
  v11 = &v16[-v10];
  v12 = *(v5 + 16);
  v12(&v16[-v10], a2, v4, v9);
  v13 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
  swift_beginAccess();
  (v12)(v7, a1 + v13, v4);
  swift_beginAccess();
  (*(v5 + 24))(a1 + v13, v11, v4);
  swift_endAccess();
  sub_100075C64(v7);
  v14 = *(v5 + 8);
  v14(v7, v4);
  return (v14)(v11, v4);
}

uint64_t sub_1000767D8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__previousSelectedTab;
  swift_beginAccess();
  return sub_1000035B4(v5 + v3, a1, &qword_10012E650, &qword_1000EDA30);
}

uint64_t sub_1000768B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__previousSelectedTab;
  swift_beginAccess();
  return sub_1000035B4(v3 + v4, a2, &qword_10012E650, &qword_1000EDA30);
}

uint64_t sub_100076988(uint64_t a1)
{
  v2 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000035B4(a1, &v6 - v3, &qword_10012E650, &qword_1000EDA30);
  return sub_100076A34(v4);
}

uint64_t sub_100076A34(uint64_t a1)
{
  v3 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__previousSelectedTab;
  swift_beginAccess();
  sub_1000035B4(v1 + v6, v5, &qword_10012E650, &qword_1000EDA30);
  v7 = sub_10007AB98(v5, a1);
  sub_100005688(v5, &qword_10012E650, &qword_1000EDA30);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000035B4(a1, v5, &qword_10012E650, &qword_1000EDA30);
    swift_beginAccess();
    sub_10007AEB8(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_100005688(a1, &qword_10012E650, &qword_1000EDA30);
}

uint64_t sub_100076C3C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__previousSelectedTab;
  swift_beginAccess();
  sub_10007AF4C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100076CA8()
{
  swift_getKeyPath();
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange);
}

void sub_100076D64(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
}

void sub_100076E40(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_100076F68()
{
  swift_getKeyPath();
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__gameControllerObserver);

  return v1;
}

id sub_100077020@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__gameControllerObserver);
  *a2 = v4;

  return v4;
}

void sub_1000770E0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__gameControllerObserver;
  v5 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__gameControllerObserver);
  type metadata accessor for GameControllerObserver();
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_10007725C(uint64_t a1, double a2)
{
  if (DynamicTypeSize.isAccessibilitySize.getter())
  {
    if (*(v2 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__tabLayout))
    {
      goto LABEL_5;
    }

    *(v2 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__tabLayout) = 0;
  }

  else
  {
    if (((a2 > 500.0) ^ *(v2 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__tabLayout)))
    {
LABEL_5:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return;
    }

    *(v2 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__tabLayout) = a2 > 500.0;
  }
}

void sub_10007747C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a2;
  v29 = a1;
  v27 = type metadata accessor for StoreTab.Identifier();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StoreTab();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OverlayCallCenter();
  static OverlayCallCenter.shared.getter();
  LODWORD(v28) = OverlayCallCenter.hasActiveCalls.getter();

  v9 = *(v2 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_tabs);
  v10 = *(v9 + 16);
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState___observationRegistrar;
  v31 = v3;
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
  v20[1] = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
  swift_beginAccess();
  v22 = *(v6 + 16);
  v22(v8, v3 + v12, v5);
  v13 = sub_100077864(v8, v9);
  v15 = v14;
  v23 = v6;
  v21 = *(v6 + 8);
  v21(v8, v5);
  if (v15)
  {
    return;
  }

  v16 = v13 + v29;
  if (__OFADD__(v13, v29))
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = (v28 & 1) == 0;
  if (v10 <= v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v16 >= v17 && v10 > v16)
  {
    if (*(v3 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange) == 1)
    {
      *(v3 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange) = 1;
    }

    else
    {
      v29 += v13;
      KeyPath = swift_getKeyPath();
      v28 = v20;
      __chkstk_darwin(KeyPath);
      v20[-2] = v3;
      LOBYTE(v20[-1]) = 1;
      v30 = v3;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v16 = v29;
    }

    if (v16 < *(v9 + 16))
    {
      v22(v8, v9 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v16, v5);
      v19 = v24;
      StoreTab.identifier.getter();
      v21(v8, v5);
      sub_100077984(v19, v26);
      (*(v25 + 8))(v19, v27);
      return;
    }

LABEL_14:
    __break(1u);
  }
}

uint64_t sub_100077864(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(type metadata accessor for StoreTab() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_1000798F8(&qword_10012FB98, &type metadata accessor for StoreTab, &protocol conformance descriptor for StoreTab);
  v7 = 0;
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_100077984(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v83 = a2;
  v87 = a1;
  v84 = sub_100002B38(&qword_10012EBF0, &unk_1000EB020);
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = v64 - v4;
  v68 = sub_100002B38(&qword_10012EBF8, &qword_1000EC620);
  v86 = *(v68 - 8);
  __chkstk_darwin(v68);
  v85 = v64 - v5;
  v78 = type metadata accessor for FlowOrigin();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v80 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for FlowAnimationBehavior();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v76 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for FlowPresentationContext();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v75 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v9 - 8);
  v72 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002B38(&qword_10012E4A0, &unk_1000EA940);
  __chkstk_darwin(v11 - 8);
  v69 = v64 - v12;
  v13 = sub_100002B38(&qword_10012CCD0, &unk_1000E8ED0);
  __chkstk_darwin(v13 - 8);
  v88 = v64 - v14;
  v15 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  __chkstk_darwin(v15 - 8);
  v90 = v64 - v16;
  v66 = type metadata accessor for FlowPage();
  v17 = *(v66 - 8);
  __chkstk_darwin(v66);
  v89 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for StoreTab.Identifier();
  v19 = *(v67 - 8);
  __chkstk_darwin(v67);
  v21 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v64 - v23;
  v25 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  __chkstk_darwin(v25 - 8);
  v27 = v64 - v26;
  v28 = type metadata accessor for StoreTab();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v79 = v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v64 - v32;
  v34 = v3;
  v35 = *(v3 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_tabs);
  v91 = v87;
  sub_1000979E8(sub_10007AA30, v35, v27);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    return sub_100005688(v27, &qword_10012E650, &qword_1000EDA30);
  }

  v64[1] = 0;
  v65 = v29;
  v37 = *(v29 + 32);
  v87 = v28;
  v37(v33, v27, v28);
  StoreTab.identifier.getter();
  v38 = StoreTab.Identifier.rawValue.getter();
  v40 = v39;
  v41 = *(v19 + 8);
  v42 = v67;
  v41(v24, v67);
  *&v92 = v38;
  *(&v92 + 1) = v40;
  v43 = v34;
  AnyHashable.init<A>(_:)();
  (*(v17 + 104))(v89, enum case for FlowPage.games(_:), v66);
  v44 = type metadata accessor for URL();
  (*(*(v44 - 8) + 56))(v90, 1, 1, v44);
  v45 = type metadata accessor for ReferrerData();
  (*(*(v45 - 8) + 56))(v88, 1, 1, v45);
  v66 = v33;
  StoreTab.identifier.getter();
  v46 = v69;
  StoreTab.Identifier.overlayTabDestination(player:bundleID:commonOnboardingStatus:isGamesAppInstalled:)();
  v41(v21, v42);
  v47 = type metadata accessor for FlowDestination();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {
    sub_100005688(v46, &qword_10012E4A0, &unk_1000EA940);
    v92 = 0u;
    v93 = 0u;
  }

  else
  {
    *(&v93 + 1) = v47;
    v49 = sub_100012854(&v92);
    (*(v48 + 32))(v49, v46, v47);
  }

  v50 = v68;
  v51 = v85;
  static ActionMetrics.notInstrumented.getter();
  static FlowActionPresentation.tabSelect.getter();
  (*(v70 + 104))(v75, enum case for FlowPresentationContext.infer(_:), v71);
  (*(v73 + 104))(v76, enum case for FlowAnimationBehavior.infer(_:), v74);
  (*(v77 + 104))(v80, enum case for FlowOrigin.inapp(_:), v78);
  v52 = type metadata accessor for FlowAction();
  swift_allocObject();
  v53 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  BaseObjectGraph.inject<A>(_:)();
  v94[3] = v52;
  v94[4] = sub_1000798F8(&qword_100130078, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
  v94[0] = v53;
  v54 = v82;
  v55 = v81;
  v56 = v84;
  (*(v82 + 104))(v81, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v84);

  ActionDispatcher.perform(_:withMetrics:asPartOf:)();

  (*(v54 + 8))(v55, v56);
  sub_10002E6CC(v94);
  swift_getKeyPath();
  v94[0] = v43;
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v57 = *(v43 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__gameControllerObserver);
  v58 = GameControllerObserver.controller.getter();

  if (v58)
  {
  }

  if (((v58 != 0) ^ *(v43 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange)))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v94[0] = v43;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v43 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange) = v58 != 0;
  }

  v60 = v87;
  v61 = v65;
  v62 = v66;
  v63 = v79;
  (*(v65 + 16))(v79, v66, v87);
  sub_10007630C(v63);

  (*(v86 + 8))(v51, v50);
  return (*(v61 + 8))(v62, v60);
}

uint64_t sub_10007868C()
{
  v0 = type metadata accessor for StoreTab.Identifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  StoreTab.identifier.getter();
  sub_1000798F8(&qword_100130080, &type metadata accessor for StoreTab.Identifier, &protocol conformance descriptor for StoreTab.Identifier);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v6[2] == v6[0] && v6[3] == v6[1])
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*(v1 + 8))(v3, v0);

  return v4 & 1;
}

uint64_t sub_100078818()
{
  sub_100005688(v0 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_player, &qword_10012E478, &unk_1000EA8E0);

  v1 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_commonOnboardingStatus;
  v2 = type metadata accessor for CommonOnboardingStatus();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
  v4 = type metadata accessor for StoreTab();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_100005688(v0 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__previousSelectedTab, &qword_10012E650, &qword_1000EDA30);

  v5 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_10007897C()
{
  sub_100078818();

  return swift_deallocClassInstance();
}

void sub_1000789FC(uint64_t a1)
{
  sub_100078C14(319, &qword_10012FC08, &type metadata accessor for Player, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CommonOnboardingStatus();
    if (v2 <= 0x3F)
    {
      type metadata accessor for StoreTab();
      if (v3 <= 0x3F)
      {
        sub_100078C14(319, &unk_10012FC10, &type metadata accessor for StoreTab, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ObservationRegistrar();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_100078C14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for DashboardTabViewState.OverlayTabLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DashboardTabViewState.OverlayTabLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100078DE8(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = sub_100002B38(&qword_10012E0E0, qword_1000EA510);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = sub_100002B38(&qword_10012FE20, &qword_1000EC388);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = sub_100002B38(&qword_10012FE28, &unk_1000EC390);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[13]];

  return v16(v17, a2, v15);
}

char *sub_100078FE0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = sub_100002B38(&qword_10012E0E0, qword_1000EA510);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = sub_100002B38(&qword_10012FE20, &qword_1000EC388);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = sub_100002B38(&qword_10012FE28, &unk_1000EC390);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[13]];

  return v16(v17, a2, a2, v15);
}

void sub_1000791E4(uint64_t a1)
{
  type metadata accessor for BaseObjectGraph();
  if (v1 <= 0x3F)
  {
    sub_10007B340(319, &qword_10012E3B8, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100078C14(319, &qword_10012FC08, &type metadata accessor for Player, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_10007B2DC(319, &qword_10012E528, &qword_10012E530, &unk_1000EA9A0, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_10007B2DC(319, &qword_10012E3D8, &qword_10012E0C0, &qword_1000EA820, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_10007B2DC(319, &qword_10012E158, &qword_100132550, &qword_1000EC170, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              sub_10007B2DC(319, &qword_10012FE98, &qword_10012FEA0, &qword_1000EC3D8, &type metadata accessor for State);
              if (v7 <= 0x3F)
              {
                sub_100078C14(319, &qword_10012FEA8, type metadata accessor for DashboardTabViewState, &type metadata accessor for State);
                if (v8 <= 0x3F)
                {
                  sub_100078C14(319, &unk_10012FEB0, type metadata accessor for OverlayFlowAuthorityProvider, &type metadata accessor for Bindable);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

unint64_t sub_1000794A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012FF00;
  if (!qword_10012FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FF00);
  }

  return result;
}

unint64_t sub_1000794F4()
{
  result = qword_10012FF38;
  if (!qword_10012FF38)
  {
    sub_100005144(&qword_10012FF30, &qword_1000EC4E8);
    sub_100005144(&qword_10012FF40, &qword_1000EC4F0);
    type metadata accessor for DashboardTabViewState(255);
    sub_100005144(&qword_10012FF48, &qword_1000EC4F8);
    sub_100005144(&qword_10012FF50, &qword_1000EC500);
    type metadata accessor for GSKDeepLinkWithReferrerIntent();
    sub_100079708();
    sub_1000798F8(&qword_10012FFA0, &type metadata accessor for GSKDeepLinkWithReferrerIntent, &protocol conformance descriptor for GSKDeepLinkWithReferrerIntent);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012FFB0, &qword_10012FFB8, &qword_1000EC528, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FF38);
  }

  return result;
}

unint64_t sub_100079708()
{
  result = qword_10012FF58;
  if (!qword_10012FF58)
  {
    sub_100005144(&qword_10012FF50, &qword_1000EC500);
    sub_100005144(&qword_10012FF60, &qword_1000EC508);
    type metadata accessor for BaseObjectGraph();
    sub_100079814();
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012FF90, &qword_10012FF98, &qword_1000EC520, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FF58);
  }

  return result;
}

unint64_t sub_100079814()
{
  result = qword_10012FF68;
  if (!qword_10012FF68)
  {
    sub_100005144(&qword_10012FF60, &qword_1000EC508);
    sub_1000057D8(&qword_10012FF70, &qword_10012FF78, &qword_1000EC510, &protocol conformance descriptor for FlowView<A, B, C>);
    sub_1000057D8(&qword_10012FF80, &qword_10012FF88, &qword_1000EC518, &protocol conformance descriptor for FlowFullScreenCoverViewModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FF68);
  }

  return result;
}

uint64_t sub_1000798F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100079940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012FFC0;
  if (!qword_10012FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FFC0);
  }

  return result;
}

unint64_t sub_100079994()
{
  result = qword_10012FFC8;
  if (!qword_10012FFC8)
  {
    sub_100005144(&qword_10012FF28, &qword_1000EC4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FFC8);
  }

  return result;
}

uint64_t sub_100079A18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DashboardContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100079A7C()
{
  v1 = type metadata accessor for DashboardContentView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[6];
  v4 = type metadata accessor for Player();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  if (*(v2 + v1[7]))
  {
  }

  v6 = (v2 + v1[8]);
  if (v6[3])
  {
    sub_10002E6CC(v6);
  }

  swift_unknownObjectWeakDestroy();
  v7 = v1[10];
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v2 + v7, 1, v8))
    {
      (*(v9 + 8))(v2 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v2 + v1[11];
  v11 = sub_100002B38(&qword_10012FEA0, &qword_1000EC3D8);
  (*(*(v11 - 8) + 8))(v10, v11);
  sub_100002B38(&qword_10012FE20, &qword_1000EC388);

  v12 = v1[13];
  v13 = sub_100002B38(&qword_10012FE28, &unk_1000EC390);
  (*(*(v13 - 8) + 8))(v2 + v12, v13);

  return swift_deallocObject();
}

uint64_t sub_100079D7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DashboardContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100079DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DashboardContentView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_100073C24(a1, v6, a2);
}

unint64_t sub_100079E60()
{
  result = qword_10012FFE0;
  if (!qword_10012FFE0)
  {
    sub_100005144(&qword_10012FFD8, &qword_1000EC568);
    sub_100079EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FFE0);
  }

  return result;
}

unint64_t sub_100079EEC()
{
  result = qword_10012FFE8;
  if (!qword_10012FFE8)
  {
    sub_100005144(&qword_10012FFF0, &qword_1000EC570);
    sub_100005144(&qword_10012FFF8, &qword_1000EC578);
    sub_1000057D8(&qword_100130000, &qword_10012FFF8, &qword_1000EC578, &unk_1000EC7C0);
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_100130008, &qword_100130010, &qword_1000EC580, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FFE8);
  }

  return result;
}

uint64_t sub_10007A024@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&qword_100132570, &unk_1000E9C70);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000035B4(v2, &v14 - v9, &qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10007A224@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&unk_100132500, &unk_1000EA640);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_1000035B4(v2, &v13 - v9, &unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10007A9C0(v10, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10007A3F4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10007A44C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.dashboardGameBundleIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10007A4B8()
{
  v1 = type metadata accessor for FlowDestination();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for DashboardContentView(0);
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;

  v8 = v5[6];
  v9 = type metadata accessor for Player();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  if (*(v7 + v5[7]))
  {
  }

  v11 = (v7 + v5[8]);
  if (v11[3])
  {
    sub_10002E6CC(v11);
  }

  swift_unknownObjectWeakDestroy();
  v12 = v5[10];
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for UserInterfaceSizeClass();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v7 + v12, 1, v13))
    {
      (*(v14 + 8))(v7 + v12, v13);
    }
  }

  else
  {
  }

  v15 = v7 + v5[11];
  v16 = sub_100002B38(&qword_10012FEA0, &qword_1000EC3D8);
  (*(*(v16 - 8) + 8))(v15, v16);
  sub_100002B38(&qword_10012FE20, &qword_1000EC388);

  v17 = v5[13];
  v18 = sub_100002B38(&qword_10012FE28, &unk_1000EC390);
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  return swift_deallocObject();
}

uint64_t sub_10007A834()
{
  type metadata accessor for FlowDestination();
  type metadata accessor for DashboardContentView(0);
  return FlowDestination.callAsFunction(asPartOf:)();
}

uint64_t sub_10007A920@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isAtFlowTabRoot.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10007A950(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012FFF0, &qword_1000EC570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007A9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_100132550, &qword_1000EC170);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10007AB58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__gameControllerObserver);
  *(v1 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__gameControllerObserver) = v2;
  v4 = v2;
}

uint64_t sub_10007AB98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreTab();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100002B38(&qword_100130088, &qword_1000EC768);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1000035B4(a1, &v21 - v12, &qword_10012E650, &qword_1000EDA30);
  sub_1000035B4(a2, &v13[v15], &qword_10012E650, &qword_1000EDA30);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1000035B4(v13, v10, &qword_10012E650, &qword_1000EDA30);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1000798F8(&qword_10012FB98, &type metadata accessor for StoreTab, &protocol conformance descriptor for StoreTab);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_100005688(v13, &qword_10012E650, &qword_1000EDA30);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100005688(v13, &qword_100130088, &qword_1000EC768);
    v17 = 1;
    return v17 & 1;
  }

  sub_100005688(v13, &qword_10012E650, &qword_1000EDA30);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10007AEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007AF4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10007AFE0(uint64_t a1)
{
  sub_10007B2DC(319, &qword_100130118, &qword_100130120, qword_1000EC7A0, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10007B340(319, &qword_10012EAA8, &type metadata for Bool, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10007B2DC(319, &qword_10012E528, &qword_10012E530, &unk_1000EA9A0, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100013388();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10007B124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002B38(qword_100130090, &unk_1000EC770);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10007B200(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002B38(qword_100130090, &unk_1000EC770);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

void sub_10007B2DC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100005144(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10007B340(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10007B394()
{
  result = qword_100130128;
  if (!qword_100130128)
  {
    sub_100005144(&qword_100130130, &qword_1000EC7B8);
    sub_100005144(&qword_10012FF18, &qword_1000EC4D0);
    sub_100005144(&qword_10012FF20, &qword_1000EC4D8);
    sub_100005144(&qword_10012FF28, &qword_1000EC4E0);
    sub_100005144(&qword_10012FF30, &qword_1000EC4E8);
    v1 = sub_1000794F4();
    sub_100079940(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_100079994();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130128);
  }

  return result;
}

unint64_t sub_10007B558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100130140;
  if (!qword_100130140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130140);
  }

  return result;
}

uint64_t sub_10007B5DC(uint64_t *a1)
{
  sub_100005144(&qword_100130138, qword_1000EC810);
  type metadata accessor for ModifiedContent();
  sub_1000057D8(&qword_100130148, &qword_100130138, qword_1000EC810, &protocol conformance descriptor for _BackgroundModifier<A>);
  return swift_getWitnessTable();
}

uint64_t sub_10007B6CC()
{
  type metadata accessor for GameOverlayUIConfig.SharedResources();
  result = GameOverlayUIConfig.SharedResources.__allocating_init()();
  qword_100130158 = result;
  return result;
}

char *sub_10007B74C(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC13GameOverlayUI20GameOverlayUIService_listener] = 0;
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v31, "init");
  v29[2] = a1;
  v29[3] = a2;
  v29[4] = a3;
  v29[5] = a4;
  v29[6] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10007D2F8;
  *(v12 + 24) = v29;
  aBlock[4] = sub_10007D344;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007D340;
  aBlock[3] = &unk_100122F08;
  v13 = _Block_copy(aBlock);
  v14 = objc_opt_self();
  v15 = v11;

  v16 = [v14 listenerWithConfigurator:v13];
  _Block_release(v13);

  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = *&v15[OBJC_IVAR____TtC13GameOverlayUI20GameOverlayUIService_listener];
  *&v15[OBJC_IVAR____TtC13GameOverlayUI20GameOverlayUIService_listener] = v16;
  a4 = v16;

  if (a4)
  {
    if (qword_10012CC18 == -1)
    {
LABEL_4:
      v18 = type metadata accessor for Logger();
      sub_100011F80(v18, qword_100135C88);
      v19 = a4;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        *(v22 + 4) = v19;
        *v23 = v16;
        v24 = v19;
        _os_log_impl(&_mh_execute_header, v20, v21, "Listener activated: %@", v22, 0xCu);
        sub_10007D290(v23);
      }

      [v19 activate];
      goto LABEL_11;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100011F80(v25, qword_100135C88);
  v19 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v19, v26, "Failed to create listener", v27, 2u);
  }

LABEL_11:

  return v15;
}

id sub_10007BADC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = String._bridgeToObjectiveC()();
  [a1 setDomain:v8];

  v9 = String._bridgeToObjectiveC()();
  [a1 setService:v9];

  return [a1 setDelegate:a6];
}

uint64_t sub_10007BB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return _swift_task_switch(sub_10007BBAC, 0, 0);
}

uint64_t sub_10007BBAC()
{
  if (qword_10012CBC8 != -1)
  {
    swift_once();
  }

  v0[11] = qword_100130158;
  type metadata accessor for GameOverlayUIConfig.SharedResources();
  sub_10007D124();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[12] = v2;
  v0[13] = v1;

  return _swift_task_switch(sub_10007BC6C, v2, v1);
}

uint64_t sub_10007BC6C()
{
  v0[14] = dispatch thunk of GameOverlayUIConfig.SharedResources.interface(kind:)();
  v1 = v0[12];
  v2 = v0[13];

  return _swift_task_switch(sub_10007BCD8, v1, v2);
}

uint64_t sub_10007BCD8()
{
  *(v0 + 120) = dispatch thunk of GameOverlayUIConfig.SharedResources.connectionQueue(kind:)();

  return _swift_task_switch(sub_10007BD48, 0, 0);
}

void sub_10007BD48()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[9];
  v4 = v0[10];
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10007D1C4;
  *(v6 + 24) = v5;
  v0[6] = sub_10007D1D0;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10007D340;
  v0[5] = &unk_100122DF0;
  v7 = _Block_copy(v0 + 2);
  v8 = v2;
  v9 = v1;
  v10 = v4;

  [v3 configureConnection:v7];
  _Block_release(v7);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[14];
    v11 = v0[15];
    [v0[9] activate];

    v13 = v0[1];

    v13();
  }
}

void sub_10007BF04(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  [a1 setTargetQueue:a2];
  v7 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v7];

  [a1 setInterface:a3];
  [a1 setInterfaceTarget:a4];
  v19 = sub_10007C174;
  v20 = 0;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10007C2B0;
  v18 = &unk_100122E18;
  v8 = _Block_copy(&v15);
  [a1 setActivationHandler:v8];
  _Block_release(v8);
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  v19 = sub_10007D248;
  v20 = v9;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10007C2B0;
  v18 = &unk_100122E68;
  v10 = _Block_copy(&v15);
  v11 = a4;

  [a1 setInvalidationHandler:v10];
  _Block_release(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v19 = sub_10007D26C;
  v20 = v12;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10007C2B0;
  v18 = &unk_100122EB8;
  v13 = _Block_copy(&v15);
  v14 = v11;

  [a1 setInterruptionHandler:v13];
  _Block_release(v13);
}

void sub_10007C174(void *a1)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100011F80(v2, qword_100135C88);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "GameOverlayUI Activation Handler: %@", v5, 0xCu);
    sub_10007D290(v6);
  }
}

void sub_10007C2B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_10007C318(void *a1, uint64_t a2, const char *a3)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100011F80(v5, qword_100135C88);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, a3, v9, 0xCu);
    sub_10007D290(v10);
  }

  return [v6 invalidate];
}

uint64_t sub_10007C468(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

id sub_10007C550()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13GameOverlayUI20GameOverlayUIService_listener;
  v3 = *&v0[OBJC_IVAR____TtC13GameOverlayUI20GameOverlayUIService_listener];
  if (v3)
  {
    [v3 invalidate];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

uint64_t sub_10007C628(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = [objc_opt_self() currentContext];
  if (v6 && (v7 = v6, v8 = [v6 remoteToken], v7, v8))
  {
    v9 = sub_1000DFEF0(v5, a2, a3);

    return v9;
  }

  else
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100011F80(v11, qword_100135C88);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Could not find a valid audit token for the client request", v14, 2u);
    }

    return 0;
  }
}

uint64_t sub_10007C790(uint64_t a1)
{
  v1 = a1;
  v2 = [objc_opt_self() currentContext];
  if (v2 && (v3 = v2, v4 = [v2 remoteToken], v3, v4))
  {
    v5 = sub_1000E00D4(v1);

    return v5;
  }

  else
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100011F80(v7, qword_100135C88);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Could not find a valid audit token for the client request", v10, 2u);
    }

    return 0;
  }
}

void sub_10007C8DC(uint64_t a1, uint64_t a2)
{
  if (qword_10012CBC0 != -1)
  {
    swift_once();
  }

  v4 = GameOverlayUIConfig.ServiceKind.rawValue.getter();
  v6 = v5;
  swift_beginAccess();
  if (*(off_100130150 + 2))
  {
    sub_1000C547C(v4, v6);
    v8 = v7;

    if (v8)
    {
      swift_endAccess();
      return;
    }
  }

  else
  {
  }

  swift_endAccess();

  v9 = GameOverlayUIConfig.ServiceKind.rawValue.getter();
  v11 = v10;
  v12 = objc_allocWithZone(type metadata accessor for GameOverlayUIService());
  v13 = sub_10007B74C(a1, a2, v9, v11);
  v14 = GameOverlayUIConfig.ServiceKind.rawValue.getter();
  v16 = v15;
  swift_beginAccess();
  v17 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = off_100130150;
  off_100130150 = 0x8000000000000000;
  sub_1000CE954(v17, v14, v16, isUniquelyReferenced_nonNull_native);

  off_100130150 = v19;
  swift_endAccess();
}

uint64_t sub_10007CA7C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v4 - 8);
  v48 = &v44 - v5;
  v6 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  __chkstk_darwin(v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v44 - v11;
  v13 = [a1 remoteToken];
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100011F80(v14, qword_100135C88);
  v15 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  v18 = os_log_type_enabled(v16, v17);
  v52 = v2;
  v47 = v15;
  if (v18)
  {
    v19 = v7;
    v45 = a1;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v53 = v21;
    *v20 = 136315138;
    v22 = [v15 bundleID];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v26 = 0xE700000000000000;
      v24 = 0x6E776F6E6B6E75;
    }

    v27 = sub_1000BA5C8(v24, v26, &v53);

    *(v20 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "Service listener did receive connection for remote process: %s", v20, 0xCu);
    sub_10002E6CC(v21);

    a1 = v45;
    v7 = v19;
  }

  else
  {
  }

  v28 = [a1 service];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v46 = v12;
  static GameOverlayUIConfig.ServiceKind.from(name:)();

  v29 = type metadata accessor for TaskPriority();
  v30 = v48;
  (*(*(v29 - 8) + 56))(v48, 1, 1, v29);
  v31 = a1;
  v32 = v49;
  v33 = v12;
  v34 = v50;
  (*(v49 + 16))(v8, v33, v50);
  v35 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v36 = (v7 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  (*(v32 + 32))(v38 + v35, v8, v34);
  *(v38 + v36) = v31;
  v39 = ObjectType;
  v40 = v52;
  *(v38 + v37) = v52;
  *(v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)) = v39;
  v41 = v31;
  v42 = v40;
  sub_100014BBC(0, 0, v30, &unk_1000EC860, v38);

  return (*(v32 + 8))(v46, v34);
}

uint64_t sub_10007CEE0()
{
  v1 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10007CFD8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for GameOverlayUIConfig.ServiceKind() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100011720;

  return sub_10007BB88(a1, v8, v9, v1 + v6, v10, v11);
}

unint64_t sub_10007D124()
{
  result = qword_100130260;
  if (!qword_100130260)
  {
    type metadata accessor for GameOverlayUIConfig.SharedResources();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130260);
  }

  return result;
}

uint64_t sub_10007D17C()
{

  return swift_deallocObject();
}

uint64_t sub_10007D1F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007D210()
{

  return swift_deallocObject();
}

uint64_t sub_10007D290(uint64_t a1)
{
  v2 = sub_100002B38(&qword_100131110, &unk_1000EC870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007D398@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OverlayTabBar(0);
  sub_1000035B4(v1 + *(v10 + 20), v9, &qword_10012EA08, &unk_1000ED3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for LayoutDirection();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10007D5A0@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002B38(&qword_100132570, &unk_1000E9C70);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OverlayTabBar(0);
  sub_1000035B4(v1 + *(v10 + 24), v9, &qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10007D7A8@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002B38(&unk_100132500, &unk_1000EA640);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for OverlayTabBar(0);
  sub_1000035B4(v1 + *(v10 + 28), v9, &unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10007A9C0(v9, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

double sub_10007D980()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for OverlayTabBar(0) + 32);
  v7 = *v5;
  v6 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (*(v5 + 32) == 1)
  {
    return *v5;
  }

  static os_log_type_t.fault.getter();
  v11 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  v12 = sub_10008A7A0(v7, v6, v9, v8, 0);
  (*(v2 + 8))(v4, v1, v12);
  return v13;
}

uint64_t sub_10007DB0C@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v45 = *(v1 - 8);
  v46 = v1;
  __chkstk_darwin(v1);
  v43 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002B38(&qword_10012E1A0, &qword_1000EC1F0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v44 = &v42 - v5;
  v6 = sub_100002B38(&qword_100132550, &qword_1000EC170);
  __chkstk_darwin(v6 - 8);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v52 = &v42 - v9;
  __chkstk_darwin(v10);
  v12 = (&v42 - v11);
  v13 = sub_100002B38(&qword_100130678, &qword_1000ECA98);
  __chkstk_darwin(v13 - 8);
  v15 = &v42 - v14;
  v16 = type metadata accessor for Margins();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v42 - v21;
  v23 = type metadata accessor for PageLayout.MarginSpec();
  v49 = *(v23 - 8);
  v50 = v23;
  v24 = __chkstk_darwin(v23);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = enum case for Margins.overlay(_:);
  v28 = *(v17 + 104);
  (v28)(v22, enum case for Margins.overlay(_:), v16, v24);
  v28(v19, v27, v16);
  v29 = v45;
  v30 = v46;
  v31 = type metadata accessor for GSKShelf.DisplayStyle();
  (*(*(v31 - 8) + 56))(v15, 1, 1, v31);
  v48 = v26;
  v32 = v44;
  PageLayout.MarginSpec.init(pageMargins:shelfMargins:shelfDisplayStyle:)();
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.overlayContentWidth.getter();
  sub_10007D7A8(v12);
  v33 = v52;
  (*(v29 + 104))(v52, enum case for UserInterfaceSizeClass.compact(_:), v30);
  (*(v29 + 56))(v33, 0, 1, v30);
  v34 = *(v4 + 56);
  sub_1000035B4(v12, v32, &qword_100132550, &qword_1000EC170);
  sub_1000035B4(v33, v32 + v34, &qword_100132550, &qword_1000EC170);
  v35 = *(v29 + 48);
  if (v35(v32, 1, v30) != 1)
  {
    sub_1000035B4(v32, v47, &qword_100132550, &qword_1000EC170);
    if (v35(v32 + v34, 1, v30) != 1)
    {
      v36 = v32 + v34;
      v37 = v43;
      (*(v29 + 32))(v43, v36, v30);
      sub_10008DB20(&qword_10012E1C8, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v38 = v47;
      dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v29 + 8);
      v39(v37, v30);
      sub_100005688(v52, &qword_100132550, &qword_1000EC170);
      sub_100005688(v12, &qword_100132550, &qword_1000EC170);
      v39(v38, v30);
      sub_100005688(v32, &qword_100132550, &qword_1000EC170);
      goto LABEL_8;
    }

    sub_100005688(v52, &qword_100132550, &qword_1000EC170);
    sub_100005688(v12, &qword_100132550, &qword_1000EC170);
    (*(v29 + 8))(v47, v30);
    goto LABEL_6;
  }

  sub_100005688(v33, &qword_100132550, &qword_1000EC170);
  sub_100005688(v12, &qword_100132550, &qword_1000EC170);
  if (v35(v32 + v34, 1, v30) != 1)
  {
LABEL_6:
    sub_100005688(v32, &qword_10012E1A0, &qword_1000EC1F0);
    goto LABEL_8;
  }

  sub_100005688(v32, &qword_100132550, &qword_1000EC170);
LABEL_8:
  sub_10007D980();
  sub_10007D980();
  static PageLayout.MarginSpec.maxContainerWidth.getter();
  v40 = v48;
  PageLayout.MarginSpec.resolve(in:isVerticalSizeClassCompact:hasHorizontalSafeArea:maxContainerWidth:)();
  return (*(v49 + 8))(v40, v50);
}

uint64_t sub_10007E1E4@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v57 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  __chkstk_darwin(v57);
  v56 = &v46 - v2;
  v3 = type metadata accessor for OverlayTabBar(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v59 = v3 - 8;
  __chkstk_darwin(v3);
  v7 = v6;
  v8 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002B38(&qword_100130580, &qword_1000EC9C8);
  v49 = v9;
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  v12 = sub_100002B38(&qword_100130588, &qword_1000EC9D0);
  v13 = *(v12 - 8);
  v52 = v12;
  v53 = v13;
  __chkstk_darwin(v12);
  v61 = &v46 - v14;
  v15 = sub_100002B38(&qword_100130590, &qword_1000EC9D8);
  v16 = *(v15 - 8);
  v54 = v15;
  v55 = v16;
  __chkstk_darwin(v15);
  v60 = &v46 - v17;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v18 = sub_100002B38(&qword_100130598, &qword_1000EC9E0);
  sub_10007E8A4(v1, &v11[*(v18 + 44)]);
  sub_100002B38(&qword_1001305A0, &qword_1000EC9E8);
  static ShapeStyle<>.componentForeground.getter();
  v19 = v1;
  sub_10008CEA4(v1, v8, type metadata accessor for OverlayTabBar);
  v20 = *(v5 + 80);
  v21 = (v20 + 16) & ~v20;
  v48 = v7;
  v22 = v20;
  v23 = swift_allocObject();
  sub_10008A7AC(v8, v23 + v21);
  v24 = &v11[*(v9 + 36)];
  *v24 = sub_10007FC78;
  v24[1] = 0;
  v24[2] = sub_10008A810;
  v24[3] = v23;
  v25 = v19 + *(v4 + 52);
  v26 = v19;
  v27 = *v25;
  v28 = *(v25 + 8);
  LOBYTE(v25) = *(v25 + 16);
  LOBYTE(v62) = v27;
  v63 = v28;
  LOBYTE(v64) = v25;
  sub_100002B38(&qword_10012F9A0, &qword_1000EC140);
  FocusState.wrappedValue.getter();
  LOBYTE(v62) = v66;
  v47 = v8;
  v51 = type metadata accessor for OverlayTabBar;
  sub_10008CEA4(v19, v8, type metadata accessor for OverlayTabBar);
  v50 = v22;
  v29 = swift_allocObject();
  sub_10008A7AC(v8, v29 + v21);
  v30 = sub_10008A880();
  v31 = v49;
  View.onChange<A>(of:initial:_:)();

  sub_100005688(v11, &qword_100130580, &qword_1000EC9C8);
  v32 = v19 + *(v59 + 48);
  v33 = *v32;
  v34 = *(v32 + 8);
  LOBYTE(v32) = *(v32 + 16);
  LOBYTE(v62) = v33;
  v63 = v34;
  LOBYTE(v64) = v32;
  FocusState.wrappedValue.getter();
  v35 = v47;
  sub_10008CEA4(v26, v47, type metadata accessor for OverlayTabBar);
  v36 = swift_allocObject();
  sub_10008A7AC(v35, v36 + v21);
  v62 = v31;
  v63 = &type metadata for Bool;
  v64 = v30;
  v65 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v52;
  v39 = v61;
  View.onChange<A>(of:initial:_:)();

  v40 = v38;
  (*(v53 + 8))(v39, v38);
  sub_100002B38(&qword_100130468, &qword_1000EC940);
  v41 = v56;
  FocusState.wrappedValue.getter();
  sub_10008CEA4(v26, v35, v51);
  v42 = swift_allocObject();
  sub_10008A7AC(v35, v42 + v21);
  v62 = v40;
  v63 = &type metadata for Bool;
  v64 = OpaqueTypeConformance2;
  v65 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_10008AA7C(&qword_1001305D8, &qword_10012FB98, &protocol conformance descriptor for StoreTab, &protocol conformance descriptor for <A> A?);
  v43 = v54;
  v44 = v60;
  View.onChange<A>(of:initial:_:)();

  sub_100005688(v41, &qword_10012E650, &qword_1000EDA30);
  return (*(v55 + 8))(v44, v43);
}

uint64_t sub_10007E8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = type metadata accessor for PlainButtonStyle();
  v92 = *(v3 - 8);
  v93 = v3;
  __chkstk_darwin(v3);
  v91 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for FocusInteractions();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_100002B38(&qword_1001305E0, &qword_1000ECA28);
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v7 = &v71 - v6;
  v82 = sub_100002B38(&qword_1001305E8, &qword_1000ECA30);
  v79 = *(v82 - 8);
  __chkstk_darwin(v82);
  v72 = &v71 - v8;
  v86 = sub_100002B38(&qword_1001305F0, &qword_1000ECA38);
  v80 = *(v86 - 8);
  __chkstk_darwin(v86);
  v77 = &v71 - v9;
  v90 = sub_100002B38(&qword_1001305F8, &qword_1000ECA40);
  v87 = *(v90 - 8);
  __chkstk_darwin(v90);
  v84 = &v71 - v10;
  v11 = sub_100002B38(&qword_100130600, &qword_1000ECA48);
  v88 = *(v11 - 8);
  v89 = v11;
  __chkstk_darwin(v11);
  v85 = &v71 - v12;
  v13 = sub_100002B38(&qword_100130608, &qword_1000ECA50);
  v95 = *(v13 - 8);
  v96 = v13;
  __chkstk_darwin(v13);
  v83 = &v71 - v14;
  v15 = sub_100002B38(&qword_100130610, &qword_1000ECA58);
  __chkstk_darwin(v15 - 8);
  v97 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v71 - v18;
  v20 = type metadata accessor for PageLayout.ResolvedMarginSpec();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100002B38(&qword_100130618, &qword_1000ECA60);
  v25 = v24 - 8;
  __chkstk_darwin(v24);
  v94 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v71 - v28;
  sub_10007F44C(&v71 - v28);
  v30 = static Edge.Set.horizontal.getter();
  sub_10007DB0C(v23);
  PageLayout.ResolvedMarginSpec.horizontalMargin.getter();
  (*(v21 + 8))(v23, v20);
  EdgeInsets.init(_all:)();
  v31 = &v29[*(v25 + 44)];
  *v31 = v30;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  v36 = type metadata accessor for OverlayTabBar(0);
  v37 = *(v36 + 48);
  v81 = a1;
  v38 = (a1 + v37);
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v100) = v39;
  v101 = v40;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  if (v99 == 1)
  {
    sub_100002B38(&qword_100130628, &qword_1000ECA70);
    v41 = sub_100005144(&qword_100130630, &qword_1000ECA78);
    v42 = sub_10008AB20();
    v100 = v41;
    v101 = v42;
    swift_getOpaqueTypeConformance2();
    v43 = v7;
    Button.init(action:label:)();
    v71 = v36;
    v44 = v74;
    static FocusInteractions.automatic.getter();
    v45 = sub_1000057D8(&qword_100130670, &qword_1001305E0, &qword_1000ECA28, &protocol conformance descriptor for Button<A>);
    v46 = v72;
    v47 = v75;
    View.componentFocusable(_:interactions:)();
    (*(v76 + 8))(v44, v78);
    (*(v73 + 8))(v43, v47);
    v48 = v91;
    PlainButtonStyle.init()();
    v100 = v47;
    v101 = v45;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v50 = sub_10008DB20(&qword_10012CE30, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v51 = v77;
    v52 = v82;
    v53 = v93;
    View.buttonStyle<A>(_:)();
    (*(v92 + 8))(v48, v53);
    (*(v79 + 8))(v46, v52);
    v100 = v52;
    v101 = v53;
    v102 = OpaqueTypeConformance2;
    v103 = v50;
    v54 = swift_getOpaqueTypeConformance2();
    v55 = v84;
    v56 = v86;
    View.focusEffectDisabled(_:)();
    (*(v80 + 8))(v51, v56);
    v57 = v81 + *(v71 + 44);
    v58 = *v57;
    v59 = *(v57 + 8);
    LOBYTE(v57) = *(v57 + 16);
    LOBYTE(v100) = v58;
    v101 = v59;
    LOBYTE(v102) = v57;
    sub_100002B38(&qword_10012F9A0, &qword_1000EC140);
    FocusState.projectedValue.getter();
    v100 = v56;
    v101 = v54;
    v60 = swift_getOpaqueTypeConformance2();
    v61 = v85;
    v62 = v90;
    View.focused(_:)();

    (*(v87 + 8))(v55, v62);
    v100 = v62;
    v101 = v60;
    swift_getOpaqueTypeConformance2();
    v63 = v83;
    v64 = v89;
    View.accessibilityHidden(_:)();
    (*(v88 + 8))(v61, v64);
    sub_100014830(v63, v19, &qword_100130608, &qword_1000ECA50);
    v65 = 0;
  }

  else
  {
    v65 = 1;
  }

  (*(v95 + 56))(v19, v65, 1, v96);
  v66 = v94;
  sub_1000035B4(v29, v94, &qword_100130618, &qword_1000ECA60);
  v67 = v97;
  sub_1000035B4(v19, v97, &qword_100130610, &qword_1000ECA58);
  v68 = v98;
  sub_1000035B4(v66, v98, &qword_100130618, &qword_1000ECA60);
  v69 = sub_100002B38(&qword_100130620, &qword_1000ECA68);
  sub_1000035B4(v67, v68 + *(v69 + 48), &qword_100130610, &qword_1000ECA58);
  sub_100005688(v19, &qword_100130610, &qword_1000ECA58);
  sub_100005688(v29, &qword_100130618, &qword_1000ECA60);
  sub_100005688(v67, &qword_100130610, &qword_1000ECA58);
  return sub_100005688(v66, &qword_100130618, &qword_1000ECA60);
}

uint64_t sub_10007F44C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v60 = sub_100002B38(&qword_100130680, &qword_1000ECAA0);
  __chkstk_darwin(v60);
  v59 = &v59 - v3;
  v62 = sub_100002B38(&qword_100130688, &qword_1000ECAA8);
  __chkstk_darwin(v62);
  v61 = (&v59 - v4);
  v64 = sub_100002B38(&qword_100130690, &qword_1000ECAB0);
  __chkstk_darwin(v64);
  v6 = &v59 - v5;
  v63 = sub_100002B38(&qword_100130698, &qword_1000ECAB8);
  __chkstk_darwin(v63);
  v8 = (&v59 - v7);
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  v14 = *(v2 + 8);

  if ((v14 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    v13 = v66;
  }

  swift_getKeyPath();
  v66 = v13;
  sub_10008DB20(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v13 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__tabLayout);

  if (v16 == 1)
  {
    v17 = static HorizontalAlignment.center.getter();
    v18 = static VerticalAlignment.lastTextBaseline.getter();
    *v8 = v17;
    v8[1] = v18;
    v19 = sub_100002B38(&qword_100130720, &qword_1000ECB20);
    sub_1000804D8(v8 + *(v19 + 44));
    sub_1000035B4(v8, v6, &qword_100130698, &qword_1000ECAB8);
    swift_storeEnumTagMultiPayload();
    sub_1000057D8(&qword_1001306E0, &qword_100130698, &qword_1000ECAB8, &protocol conformance descriptor for ZStack<A>);
    sub_10008AE60();
    _ConditionalContent<>.init(storage:)();
    v20 = v8;
    v21 = &qword_100130698;
    v22 = &qword_1000ECAB8;
  }

  else
  {
    v23 = static VerticalAlignment.lastTextBaseline.getter();
    v24 = v61;
    *v61 = v23;
    *(v24 + 8) = 0;
    *(v24 + 16) = 1;
    v25 = sub_100002B38(&qword_1001306A0, &qword_1000ECAE8);
    sub_100082238((v24 + *(v25 + 44)));
    v26 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = v24 + *(sub_100002B38(&qword_1001306A8, &qword_1000ECAF0) + 36);
    *v35 = v26;
    *(v35 + 8) = v28;
    *(v35 + 16) = v30;
    *(v35 + 24) = v32;
    *(v35 + 32) = v34;
    *(v35 + 40) = 0;
    v36 = static Alignment.center.getter();
    v38 = v37;
    v39 = v24 + *(sub_100002B38(&qword_1001306B0, &qword_1000ECAF8) + 36);
    v40 = static Color.clear.getter();
    v41 = v59;
    v42 = &v59[*(v60 + 36)];
    sub_100002B38(&qword_10012EDD8, &qword_1000EB1D8);
    static ContentShapeKinds.interaction.getter();
    *v42 = 0;
    *v41 = v40;
    *(v41 + 8) = 1;
    sub_10008AD24();
    View.onTapGesture(count:perform:)();
    sub_100005688(v41, &qword_100130680, &qword_1000ECAA0);
    v43 = (v39 + *(sub_100002B38(&qword_1001306D0, &qword_1000ECB08) + 36));
    *v43 = v36;
    v43[1] = v38;
    LOBYTE(v36) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = v24 + *(sub_100002B38(&qword_1001306D8, &qword_1000ECB10) + 36);
    *v52 = v36;
    *(v52 + 8) = v45;
    *(v52 + 16) = v47;
    *(v52 + 24) = v49;
    *(v52 + 32) = v51;
    *(v52 + 40) = 0;
    LOBYTE(v36) = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v53 = v24 + *(v62 + 36);
    *v53 = v36;
    *(v53 + 8) = v54;
    *(v53 + 16) = v55;
    *(v53 + 24) = v56;
    *(v53 + 32) = v57;
    *(v53 + 40) = 0;
    sub_1000035B4(v24, v6, &qword_100130688, &qword_1000ECAA8);
    swift_storeEnumTagMultiPayload();
    sub_1000057D8(&qword_1001306E0, &qword_100130698, &qword_1000ECAB8, &protocol conformance descriptor for ZStack<A>);
    sub_10008AE60();
    _ConditionalContent<>.init(storage:)();
    v20 = v24;
    v21 = &qword_100130688;
    v22 = &qword_1000ECAA8;
  }

  return sub_100005688(v20, v21, v22);
}

uint64_t sub_10007FAB4(uint64_t a1)
{
  v1 = static Color.clear.getter();
  v2 = static Color.clear.getter();
  v3 = static Edge.Set.all.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v16[55] = v21;
  *&v16[71] = v22;
  *&v16[87] = v23;
  *&v16[103] = v24;
  *&v16[7] = v18;
  *&v16[23] = v19;
  *&v16[39] = v20;
  v4 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  *&v11[73] = *&v16[64];
  *&v11[89] = *&v16[80];
  *&v11[105] = *&v16[96];
  *&v11[9] = *v16;
  *&v11[25] = *&v16[16];
  *&v11[41] = *&v16[32];
  v17 = 0;
  *&v10 = v1;
  WORD4(v10) = 256;
  *v11 = v2;
  v11[8] = v3;
  *&v11[120] = *(&v24 + 1);
  *&v11[57] = *&v16[48];
  LOBYTE(v12) = v4;
  *(&v12 + 1) = v5;
  *v13 = v6;
  *&v13[8] = v7;
  *&v13[16] = v8;
  v13[24] = 0;
  sub_100002B38(&qword_100130630, &qword_1000ECA78);
  sub_10008AB20();
  View.focusable(_:)();
  v14[8] = *&v11[112];
  v14[9] = v12;
  v15[0] = *v13;
  *(v15 + 9) = *&v13[9];
  v14[4] = *&v11[48];
  v14[5] = *&v11[64];
  v14[6] = *&v11[80];
  v14[7] = *&v11[96];
  v14[0] = v10;
  v14[1] = *v11;
  v14[2] = *&v11[16];
  v14[3] = *&v11[32];
  return sub_100005688(v14, &qword_100130630, &qword_1000ECA78);
}

uint64_t sub_10007FCA4(double *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a2 + 8);

  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
  }

  sub_10007D5A0(v7);
  sub_10007725C(v7, v12);

  return (*(v5 + 8))(v7, v4);
}

void *sub_10007FEB4()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  __chkstk_darwin(v6 - 8);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v17 = type metadata accessor for OverlayTabBar(0);
  v18 = v0 + v17[11];
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v18) = v18[16];
  LOBYTE(v51) = v19;
  v52 = v20;
  v53 = v18;
  v50 = sub_100002B38(&qword_10012F9A0, &qword_1000EC140);
  FocusState.wrappedValue.getter();
  if (v54 == 1)
  {
    v21 = v0 + v17[12];
    v22 = *v21;
    v23 = *(v21 + 1);
    LOBYTE(v51) = v22;
    v52 = v23;
    LOBYTE(v54) = 0;
    sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
    State.wrappedValue.setter();
    v24 = *v0;
    v25 = *(v0 + 8);

    if ((v25 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v26 = static Log.runtimeIssuesLog.getter();
      v48 = v10;
      v27 = v3;
      v28 = v26;
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v27 + 8))(v5, v2);
      v10 = v48;
      v24 = v51;
    }

    swift_getKeyPath();
    v51 = v24;
    sub_10008DB20(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v29 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
    swift_beginAccess();
    v30 = type metadata accessor for StoreTab();
    v31 = *(v30 - 8);
    (*(v31 + 16))(v16, v24 + v29, v30);

    (*(v31 + 56))(v16, 0, 1, v30);
    sub_1000035B4(v16, v13, &qword_10012E650, &qword_1000EDA30);
    sub_100002B38(&qword_100130468, &qword_1000EC940);
    FocusState.wrappedValue.setter();
    sub_100005688(v16, &qword_10012E650, &qword_1000EDA30);
  }

  v32 = v1 + v17[12];
  v33 = *v32;
  v34 = *(v32 + 1);
  LOBYTE(v54) = *v32;
  v55 = v34;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  if (v57 == 1)
  {
    sub_100002B38(&qword_100130468, &qword_1000EC940);
    FocusState.wrappedValue.getter();
    v35 = type metadata accessor for StoreTab();
    v36 = (*(*(v35 - 8) + 48))(v10, 1, v35);
    sub_100005688(v10, &qword_10012E650, &qword_1000EDA30);
    if (v36 != 1 || (v37 = v1 + v17[10], v38 = *v37, v39 = *(v37 + 1), LOBYTE(v37) = v37[16], LOBYTE(v54) = v38, v55 = v39, v56 = v37, FocusState.wrappedValue.getter(), v57 == 1))
    {
      LOBYTE(v54) = v33;
      v55 = v34;
      v57 = 0;
      return State.wrappedValue.setter();
    }
  }

  LOBYTE(v54) = v33;
  v55 = v34;
  result = State.wrappedValue.getter();
  if ((v57 & 1) == 0)
  {
    sub_100002B38(&qword_100130468, &qword_1000EC940);
    v41 = v49;
    FocusState.wrappedValue.getter();
    v42 = type metadata accessor for StoreTab();
    v43 = (*(*(v42 - 8) + 48))(v41, 1, v42);
    result = sub_100005688(v41, &qword_10012E650, &qword_1000EDA30);
    if (v43 == 1)
    {
      v44 = v1 + v17[10];
      v45 = *v44;
      v46 = *(v44 + 1);
      LOBYTE(v44) = v44[16];
      LOBYTE(v54) = v45;
      v55 = v46;
      v56 = v44;
      result = FocusState.wrappedValue.getter();
      if ((v57 & 1) == 0)
      {
        LOBYTE(v54) = v33;
        v55 = v34;
        v57 = 1;
        return State.wrappedValue.setter();
      }
    }
  }

  return result;
}

uint64_t sub_1000804D8@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = type metadata accessor for LayoutDirection();
  v38 = *(v1 - 8);
  v39 = v1;
  __chkstk_darwin(v1);
  v34 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100002B38(&qword_100130728, &qword_1000ECB28);
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v41 = &v34 - v6;
  v7 = sub_100002B38(&qword_100130730, &qword_1000ECB30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = sub_100002B38(&qword_100130738, &qword_1000ECB38);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  *v19 = static VerticalAlignment.center.getter();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = &v19[*(sub_100002B38(&qword_100130740, &qword_1000ECB40) + 44)];
  sub_100080930(v13);
  v21 = *(v8 + 16);
  v21(v10, v13, v7);
  v21(v20, v10, v7);
  v22 = &v20[*(sub_100002B38(&qword_100130748, &qword_1000ECB48) + 48)];
  *v22 = 0;
  v22[8] = 1;
  v23 = *(v8 + 8);
  v23(v13, v7);
  v23(v10, v7);
  v24 = v34;
  sub_10007D398(v34);
  v25 = v41;
  sub_1000812C4(v24, v41);
  (*(v38 + 8))(v24, v39);
  sub_1000035B4(v19, v16, &qword_100130738, &qword_1000ECB38);
  v26 = v35;
  v27 = v36;
  v28 = *(v36 + 16);
  v29 = v37;
  v28(v35, v25, v37);
  v30 = v40;
  sub_1000035B4(v16, v40, &qword_100130738, &qword_1000ECB38);
  v31 = sub_100002B38(&qword_100130750, &qword_1000ECB50);
  v28((v30 + *(v31 + 48)), v26, v29);
  v32 = *(v27 + 8);
  v32(v41, v29);
  sub_100005688(v19, &qword_100130738, &qword_1000ECB38);
  v32(v26, v29);
  return sub_100005688(v16, &qword_100130738, &qword_1000ECB38);
}

uint64_t sub_100080930@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v2 = type metadata accessor for AutomationSemantics();
  v72 = *(v2 - 8);
  v73 = v2;
  __chkstk_darwin(v2);
  v70 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RoundedRectangle();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for FillFocusButtonStyle();
  v66 = *(v65 - 8);
  __chkstk_darwin(v65);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OverlayTabBar(0);
  v11 = *(v10 - 8);
  v71 = v10 - 8;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v58 = sub_100002B38(&qword_1001308D0, &qword_1000ECCE0);
  v61 = *(v58 - 8);
  __chkstk_darwin(v58);
  v14 = &v55 - v13;
  v64 = sub_100002B38(&qword_1001308D8, &qword_1000ECCE8);
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v56 = &v55 - v15;
  v59 = sub_100002B38(&qword_1001308E0, &qword_1000ECCF0);
  __chkstk_darwin(v59);
  v17 = &v55 - v16;
  v67 = sub_100002B38(&qword_1001308E8, &qword_1000ECCF8);
  v68 = *(v67 - 8);
  __chkstk_darwin(v67);
  v57 = &v55 - v18;
  v69 = sub_100002B38(&qword_1001308F0, &qword_1000ECD00);
  __chkstk_darwin(v69);
  v63 = &v55 - v19;
  v60 = v1;
  sub_10008CEA4(v1, &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OverlayTabBar);
  v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v21 = swift_allocObject();
  sub_10008A7AC(&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v75 = v1;
  sub_100002B38(&qword_1001308F8, &qword_1000ECD08);
  v22 = sub_100005144(&qword_100130900, &qword_1000ECD10);
  v23 = sub_10008CDC0();
  *&v77 = v22;
  *(&v77 + 1) = v23;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v24 = *(v5 + 28);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = type metadata accessor for RoundedCornerStyle();
  (*(*(v26 - 8) + 104))(&v7[v24], v25, v26);
  __asm { FMOV            V0.2D, #12.0 }

  *v7 = _Q0;
  v32 = type metadata accessor for RoundedRectangle._Inset();
  v76[3] = v32;
  v76[4] = sub_10008DB20(&qword_100130930, &type metadata accessor for RoundedRectangle._Inset, &protocol conformance descriptor for RoundedRectangle._Inset);
  v33 = sub_100012854(v76);
  sub_10008CEA4(v7, v33, &type metadata accessor for RoundedRectangle);
  *(v33 + *(v32 + 20)) = 0xC024000000000000;
  sub_10008CF0C(v7);
  static Color.focusColor.getter();
  Color.opacity(_:)();

  FillFocusButtonStyle.init(id:shape:color:)();
  sub_1000057D8(&qword_100130938, &qword_1001308D0, &qword_1000ECCE0, &protocol conformance descriptor for Button<A>);
  sub_10008DB20(&qword_1001307F8, &type metadata accessor for FillFocusButtonStyle, &protocol conformance descriptor for FillFocusButtonStyle);
  v34 = v56;
  v35 = v58;
  v36 = v65;
  View.buttonStyle<A>(_:)();
  (*(v66 + 8))(v9, v36);
  v37 = (*(v61 + 8))(v14, v35);
  *(&v78 + 1) = &type metadata for GameOverlayUIFeatureFlags;
  v79 = sub_10003F1EC(v37, v38, v39);
  LOBYTE(v77) = 0;
  LOBYTE(v32) = isFeatureEnabled(_:)();
  sub_10002E6CC(&v77);
  if (v32)
  {
    v40 = 1.0;
  }

  else
  {
    v40 = 0.0;
  }

  (*(v62 + 32))(v17, v34, v64);
  v41 = v59;
  *&v17[*(v59 + 36)] = v40;
  *(&v78 + 1) = &type metadata for String;
  *&v77 = 0xD000000000000011;
  *(&v77 + 1) = 0x80000001000E7590;
  v42 = v70;
  static AutomationSemantics.tabBar(tabName:)();
  sub_10002E6CC(&v77);
  v43 = sub_10008CF68();
  v44 = v57;
  View.automationSemantics(_:)();
  (*(v72 + 8))(v42, v73);
  sub_100005688(v17, &qword_1001308E0, &qword_1000ECCF0);
  *&v77 = static GameStoreKitLocalizedStrings.GAME_MODE_TITLE()();
  *(&v77 + 1) = v45;
  v76[0] = v41;
  v76[1] = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10000548C(OpaqueTypeConformance2, v47, v48);
  v49 = v63;
  v50 = v67;
  View.accessibilityLabel<A>(_:)();

  (*(v68 + 8))(v44, v50);
  v51 = v60 + *(v71 + 48);
  v52 = *v51;
  v53 = *(v51 + 8);
  LOBYTE(v51) = *(v51 + 16);
  LOBYTE(v77) = v52;
  *(&v77 + 1) = v53;
  LOBYTE(v78) = v51;
  sub_100002B38(&qword_10012F9A0, &qword_1000EC140);
  FocusState.projectedValue.getter();
  sub_10008D0B4();
  View.focused(_:)();

  return sub_100005688(v49, &qword_1001308F0, &qword_1000ECD00);
}

uint64_t sub_1000812C4@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v108 = a1;
  v101 = a2;
  v98 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  __chkstk_darwin(v98);
  v95 = &v80 - v4;
  v91 = type metadata accessor for StoreTab();
  v87 = *(v91 - 8);
  __chkstk_darwin(v91);
  v85 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OverlayTabBar(0);
  v112 = *(v6 - 8);
  __chkstk_darwin(v6);
  v110 = v7;
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnvironmentValues();
  v84 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002B38(&qword_100130758, &qword_1000ECB58);
  __chkstk_darwin(v12 - 8);
  v14 = &v80 - v13;
  v103 = sub_100002B38(&qword_100130760, &qword_1000ECB60);
  __chkstk_darwin(v103);
  OpaqueTypeConformance2 = &v80 - v15;
  v89 = sub_100002B38(&qword_100130768, &qword_1000ECB68);
  v86 = *(v89 - 8);
  __chkstk_darwin(v89);
  v105 = &v80 - v16;
  v93 = sub_100002B38(&qword_100130770, &qword_1000ECB70);
  v90 = *(v93 - 8);
  __chkstk_darwin(v93);
  v88 = &v80 - v17;
  v96 = sub_100002B38(&qword_100130778, &qword_1000ECB78);
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v92 = &v80 - v18;
  v100 = sub_100002B38(&qword_100130780, &qword_1000ECB80);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v80 - v19;
  v20 = static VerticalAlignment.lastTextBaseline.getter();
  v104 = type metadata accessor for OverlayCallCenter();
  static OverlayCallCenter.shared.getter();
  v21 = OverlayCallCenter.hasActiveCalls.getter();

  v22 = 72;
  if (v21)
  {
    v22 = 76;
  }

  v107 = v6;
  v23 = *(v2 + *(v6 + v22));
  *v14 = v20;
  *(v14 + 1) = v23;
  v14[16] = 0;
  v24 = *v2;
  v83 = *(v2 + 8);
  v82 = v9;
  v81 = v11;
  if (v83 == 1)
  {
    v114 = v24;

    v26 = v24;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v84[1](v11, v9);
    v26 = v114;
  }

  sub_100002B38(&qword_100130788, &unk_1000ECB88);
  v27 = *(v26 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_tabs);

  v114 = v27;
  swift_getKeyPath();
  v109 = v3;
  sub_10008CEA4(v3, v8, type metadata accessor for OverlayTabBar);
  v28 = *(v112 + 80);
  v29 = (v28 + 16) & ~v28;
  v110 += v29;
  v111 = v28;
  v30 = swift_allocObject();
  v112 = v29;
  v106 = v8;
  sub_10008A7AC(v8, v30 + v29);
  sub_100002B38(&qword_10012E658, &qword_1000EAB00);
  sub_100002B38(&qword_100130790, &qword_1000ECBB0);
  sub_1000057D8(&qword_100130798, &qword_10012E658, &qword_1000EAB00, &protocol conformance descriptor for [A]);
  sub_10008DB20(&qword_100130450, &type metadata accessor for StoreTab, &protocol conformance descriptor for StoreTab);
  sub_10008B168();
  ForEach<>.init(_:id:content:)();
  KeyPath = swift_getKeyPath();
  v32 = OpaqueTypeConformance2;
  v33 = &OpaqueTypeConformance2[v103[9]];
  v34 = *(sub_100002B38(&qword_100130808, &qword_1000ECBE8) + 28);
  v35 = type metadata accessor for LayoutDirection();
  (*(*(v35 - 8) + 16))(v33 + v34, v108, v35);
  *v33 = KeyPath;
  sub_100014830(v14, v32, &qword_100130758, &qword_1000ECB58);

  if ((v83 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v37 = v81;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v84[1](v37, v82);
    v24 = v114;
  }

  swift_getKeyPath();
  v114 = v24;
  sub_10008DB20(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
  swift_beginAccess();
  v39 = v87;
  v40 = v85;
  v41 = v91;
  (*(v87 + 16))(v85, v24 + v38, v91);

  v108 = type metadata accessor for OverlayTabBar;
  v42 = v109;
  v43 = v106;
  sub_10008CEA4(v109, v106, type metadata accessor for OverlayTabBar);
  v44 = swift_allocObject();
  sub_10008A7AC(v43, v44 + v112);
  v45 = sub_10008B5E0();
  v84 = &protocol conformance descriptor for StoreTab;
  v46 = sub_10008DB20(&qword_10012FB98, &type metadata accessor for StoreTab, &protocol conformance descriptor for StoreTab);
  v47 = OpaqueTypeConformance2;
  v48 = v103;
  View.onChange<A>(of:initial:_:)();

  (*(v39 + 8))(v40, v41);
  sub_100005688(v47, &qword_100130760, &qword_1000ECB60);
  sub_100002B38(&qword_100130468, &qword_1000EC940);
  v49 = v95;
  FocusState.wrappedValue.getter();
  v50 = v42;
  v51 = v108;
  sub_10008CEA4(v50, v43, v108);
  v52 = swift_allocObject();
  sub_10008A7AC(v43, v52 + v112);
  v114 = v48;
  v115 = v41;
  v116 = v45;
  v117 = v46;
  v103 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = sub_10008AA7C(&qword_1001305D8, &qword_10012FB98, v84, &protocol conformance descriptor for <A> A?);
  v54 = v88;
  v55 = v89;
  v56 = v98;
  v57 = v105;
  View.onChange<A>(of:initial:_:)();

  sub_100005688(v49, &qword_10012E650, &qword_1000EDA30);
  (*(v86 + 8))(v57, v55);
  static OverlayCallCenter.shared.getter();
  LOBYTE(v39) = OverlayCallCenter.hasActiveCalls.getter();

  LOBYTE(v113) = v39 & 1;
  v58 = v43;
  sub_10008CEA4(v109, v43, v51);
  v59 = swift_allocObject();
  v60 = v112;
  sub_10008A7AC(v58, v59 + v112);
  v114 = v55;
  v115 = v56;
  v116 = OpaqueTypeConformance2;
  v117 = v53;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v92;
  v63 = v93;
  View.onChange<A>(of:initial:_:)();

  (*(v90 + 8))(v54, v63);
  static OverlayCallCenter.shared.getter();
  v64 = OverlayCallCenter.callInvitesCount.getter();

  v113 = v64;
  v65 = v109;
  v66 = v106;
  sub_10008CEA4(v109, v106, v108);
  v67 = swift_allocObject() + v60;
  v68 = v66;
  sub_10008A7AC(v66, v67);
  v114 = v63;
  v115 = &type metadata for Bool;
  v116 = v61;
  v117 = &protocol witness table for Bool;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v97;
  v71 = v96;
  View.onChange<A>(of:initial:_:)();

  (*(v94 + 8))(v62, v71);
  v72 = (v65 + *(v107 + 52));
  v74 = *v72;
  v73 = v72[1];
  v114 = v74;
  v115 = v73;
  sub_100002B38(&qword_100130828, &qword_1000ECBF0);
  State.wrappedValue.getter();
  v75 = v113;
  v76 = GameControllerObserver.controller.getter();

  v113 = v76;
  sub_10008CEA4(v65, v68, v108);
  v77 = swift_allocObject();
  sub_10008A7AC(v68, v77 + v112);
  sub_100002B38(&qword_100130830, &unk_1000ECF10);
  v114 = v71;
  v115 = &type metadata for Int;
  v116 = v69;
  v117 = &protocol witness table for Int;
  swift_getOpaqueTypeConformance2();
  sub_10008B8B4();
  v78 = v100;
  View.onChange<A>(of:initial:_:)();

  return (*(v99 + 8))(v70, v78);
}

uint64_t sub_100082238@<X0>(char *a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for LayoutDirection();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_100002B38(&qword_100130728, &qword_1000ECB28);
  v29 = *(v32 - 8);
  v5 = v29;
  __chkstk_darwin(v32);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v28 = &v28 - v8;
  v10 = sub_100002B38(&qword_100130730, &qword_1000ECB30);
  v30 = *(v10 - 8);
  v11 = v30;
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  sub_100080930(&v28 - v15);
  sub_10007D398(v4);
  sub_1000812C4(v4, v9);
  (*(v2 + 8))(v4, v1);
  v17 = *(v11 + 16);
  v17(v13, v16, v10);
  v18 = *(v5 + 16);
  v19 = v31;
  v20 = v9;
  v21 = v32;
  v18(v31, v20, v32);
  v22 = v33;
  v17(v33, v13, v10);
  v23 = sub_100002B38(&qword_1001309C8, qword_1000ECDB0);
  v24 = &v22[*(v23 + 48)];
  *v24 = 0;
  v24[8] = 1;
  v18(&v22[*(v23 + 64)], v19, v21);
  v25 = *(v29 + 8);
  v25(v28, v21);
  v26 = *(v30 + 8);
  v26(v16, v10);
  v25(v19, v21);
  return (v26)(v13, v10);
}

double sub_100082590(uint64_t a1, double a2)
{
  v3 = type metadata accessor for OverlayTabBar(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_10008CEA4(a1, v6, type metadata accessor for OverlayTabBar);
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_10008A7AC(v6, v13 + v12);
  sub_1000C7860(0, 0, v9, &unk_1000ECDA8, v13);

  return result;
}

uint64_t sub_10008275C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_100002B38(&qword_10012EBF0, &unk_1000EB020);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for ActionOutcome();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  type metadata accessor for ActionMetrics();
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for OpenURLAction();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v8 = type metadata accessor for EnvironmentValues();
  v4[20] = v8;
  v4[21] = *(v8 - 8);
  v4[22] = swift_task_alloc();
  v9 = sub_100002B38(&qword_10012EBF8, &qword_1000EC620);
  v4[23] = v9;
  v4[24] = *(v9 - 8);
  v4[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[26] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[27] = v11;
  v4[28] = v10;

  return _swift_task_switch(sub_100082A04, v11, v10);
}

uint64_t sub_100082A04()
{
  v1 = *(v0 + 72);
  v2 = *v1;
  *(v0 + 232) = *v1;
  v3 = *(v1 + 8);
  *(v0 + 288) = v3;

  if ((v3 & 1) == 0)
  {
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v6 = *(v0 + 160);
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v4, v6);
    v2 = *(v0 + 56);
  }

  *(v0 + 240) = *(v2 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_objectGraph);

  v8 = swift_task_alloc();
  *(v0 + 248) = v8;
  *v8 = v0;
  v8[1] = sub_100082B80;
  v9 = *(v0 + 200);

  return BaseObjectGraph.inject<A>(_:)(v9);
}

uint64_t sub_100082B80()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_100083184;
  }

  else
  {

    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_100082C9C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100082C9C(uint64_t a1)
{
  v20 = *(v1 + 288);
  v2 = *(v1 + 232);
  v4 = *(v1 + 144);
  v3 = *(v1 + 152);
  v5 = *(v1 + 136);
  v7 = *(v1 + 88);
  v6 = *(v1 + 96);
  v8 = *(v1 + 80);
  static ActionMetrics.notInstrumented.getter();
  OpenURLAction.init(url:actionMetrics:)();
  *(v1 + 40) = v5;
  *(v1 + 48) = sub_10008DB20(&qword_1001309C0, &type metadata accessor for OpenURLAction, &protocol conformance descriptor for OpenURLAction);
  v9 = sub_100012854((v1 + 16));
  (*(v4 + 16))(v9, v3, v5);
  (*(v7 + 104))(v6, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v8);

  if ((v20 & 1) == 0)
  {
    v11 = *(v1 + 168);
    v10 = *(v1 + 176);
    v12 = *(v1 + 160);
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v11 + 8))(v10, v12);
    v2 = *(v1 + 64);
  }

  v14 = *(v2 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_objectGraph);
  *(v1 + 264) = v14;

  v15 = swift_task_alloc();
  *(v1 + 272) = v15;
  *v15 = v1;
  v15[1] = sub_100082EE8;
  v16 = *(v1 + 184);
  v17 = *(v1 + 120);
  v18 = *(v1 + 96);

  return ActionDispatcher.perform(_:withMetrics:asPartOf:)(v17, v1 + 16, v18, v14, v16);
}

uint64_t sub_100082EE8()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    (*(v2[11] + 8))(v2[12], v2[10]);

    v3 = v2[27];
    v4 = v2[28];
    v5 = sub_100083244;
  }

  else
  {
    v7 = v2[14];
    v6 = v2[15];
    v9 = v2[12];
    v8 = v2[13];
    v10 = v2[10];
    v11 = v2[11];

    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v6, v8);
    sub_10002E6CC(v2 + 2);
    v3 = v2[27];
    v4 = v2[28];
    v5 = sub_100083084;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100083084()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[24];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100083184()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100083244()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[24];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  sub_10002E6CC(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10008333C(uint64_t a1)
{
  v1 = type metadata accessor for FocusInteractions();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002B38(&qword_100130900, &qword_1000ECD10);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  *v7 = static VerticalAlignment.lastTextBaseline.getter();
  *(v7 + 1) = 0x4010000000000000;
  v7[16] = 0;
  v8 = sub_100002B38(&qword_100130950, &qword_1000ECD28);
  sub_1000834E4(&v7[*(v8 + 44)]);
  v7[*(v5 + 36)] = 0;
  static FocusInteractions.automatic.getter();
  sub_10008CDC0();
  View.componentFocusable(_:interactions:)();
  (*(v2 + 8))(v4, v1);
  return sub_100005688(v7, &qword_100130900, &qword_1000ECD10);
}

uint64_t sub_1000834E4@<X0>(char *a2@<X8>)
{
  v57 = a2;
  v58 = sub_100002B38(&qword_100130958, &qword_1000ECD30);
  __chkstk_darwin(v58);
  v62 = &v47 - v2;
  v3 = sub_100002B38(&qword_100130960, &qword_1000ECD38);
  v56 = *(v3 - 8);
  __chkstk_darwin(v3);
  v60 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v59 = &v47 - v6;
  v61 = sub_100002B38(&qword_10012E1D0, &qword_1000EA5D0);
  __chkstk_darwin(v61);
  v8 = &v47 - v7;
  v9 = type metadata accessor for Image.ResizingMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002B38(&qword_100130968, &qword_1000ECD40);
  v54 = *(v13 - 8);
  v55 = v13;
  __chkstk_darwin(v13);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v63 = &v47 - v16;
  type metadata accessor for OverlayTabBar(0);
  sub_100002B38(&qword_100130478, &unk_1000EC950);
  ScaledMetric.wrappedValue.getter();
  Image.init(_:bundle:)();
  (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
  v17 = Image.resizable(capInsets:resizingMode:)();

  (*(v10 + 8))(v12, v9);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v66[38] = v72;
  *&v66[22] = v71;
  *&v66[6] = v70;
  *&v65[2] = *v66;
  v67 = 1;
  v64 = v17;
  *v65 = 1;
  *&v65[18] = *&v66[16];
  *&v65[34] = *&v66[32];
  *&v65[48] = *(&v72 + 1);
  v18 = enum case for DynamicTypeSize.xxLarge(_:);
  v19 = type metadata accessor for DynamicTypeSize();
  v20 = *(v19 - 8);
  v21 = *(v20 + 104);
  v22 = v20 + 104;
  v21(v8, v18, v19);
  v23 = sub_10008DB20(&qword_10012E260, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v48 = v3;
    v51 = v21;
    v52 = v23;
    sub_100002B38(&qword_100130970, &qword_1000ECD48);
    sub_10008D1AC();
    v50 = v22;
    v49 = v18;
    v47 = sub_1000057D8(&qword_10012E278, &qword_10012E1D0, &qword_1000EA5D0, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_100005688(v8, &qword_10012E1D0, &qword_1000EA5D0);
    v68[2] = *&v65[16];
    v68[3] = *&v65[32];
    v69 = *&v65[48];
    v68[0] = v64;
    v68[1] = *v65;
    sub_100005688(v68, &qword_100130970, &qword_1000ECD48);
    v25 = Image.init(_internalSystemName:)();
    v26 = static Font.body.getter();
    KeyPath = swift_getKeyPath();
    *&v64 = v25;
    *(&v64 + 1) = KeyPath;
    *v65 = v26;
    static Font.Weight.semibold.getter();
    sub_100002B38(&qword_10012CE08, &unk_1000E9120);
    sub_100005578();
    v28 = v62;
    View.fontWeight(_:)();

    v29 = &v28[*(sub_100002B38(&qword_100130990, &qword_1000ECD58) + 36)];
    v30 = *(sub_100002B38(&qword_10012E320, &qword_1000EA788) + 28);
    v31 = enum case for Image.Scale.small(_:);
    v32 = type metadata accessor for Image.Scale();
    (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
    *v29 = swift_getKeyPath();
    static ShapeStyle<>.secondaryComponentForeground.getter();
    v51(v8, v49, v19);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      sub_10008D440();
      v33 = v59;
      v34 = v62;
      View.dynamicTypeSize<A>(_:)();
      sub_100005688(v8, &qword_10012E1D0, &qword_1000EA5D0);
      sub_100005688(v34, &qword_100130958, &qword_1000ECD30);
      v36 = v53;
      v35 = v54;
      v37 = *(v54 + 16);
      v38 = v55;
      v37(v53, v63, v55);
      v39 = v56;
      v62 = *(v56 + 16);
      v40 = v33;
      v41 = v48;
      (v62)(v60, v40, v48);
      v42 = v57;
      v37(v57, v36, v38);
      v43 = &v42[*(sub_100002B38(&qword_1001309B8, &qword_1000ECD98) + 48)];
      v44 = v60;
      (v62)(v43, v60, v41);
      v45 = *(v39 + 8);
      v45(v59, v41);
      v46 = *(v35 + 8);
      v46(v63, v38);
      v45(v44, v41);
      return (v46)(v36, v38);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100083D3C(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v32 = sub_100002B38(&qword_100130860, &qword_1000ECC60);
  __chkstk_darwin(v32);
  v4 = &v24[-v3];
  v5 = sub_100002B38(&qword_1001307C0, &qword_1000ECBC0);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v26 = &v24[-v6];
  v31 = sub_100002B38(&qword_1001307B0, &qword_1000ECBB8);
  __chkstk_darwin(v31);
  v30 = &v24[-v7];
  v8 = type metadata accessor for StoreTab.Identifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v24[-v13];
  v27 = a1;
  StoreTab.identifier.getter();
  static StoreTab.Identifier.overlayActiveCallPage.getter();
  sub_10008DB20(&qword_100130080, &type metadata accessor for StoreTab.Identifier, &protocol conformance descriptor for StoreTab.Identifier);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v34 == v33)
  {
    v15 = *(v9 + 8);
    v15(v11, v8);
    v15(v14, v8);
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v16 = *(v9 + 8);
    v16(v11, v8);
    v16(v14, v8);

    if ((v25 & 1) == 0)
    {
      v19 = v26;
      sub_1000841C8(v27, v26);
      v21 = &qword_1001307C0;
      v22 = &qword_1000ECBC0;
      sub_1000035B4(v19, v4, &qword_1001307C0, &qword_1000ECBC0);
      goto LABEL_9;
    }
  }

  type metadata accessor for OverlayCallCenter();
  static OverlayCallCenter.shared.getter();
  v17 = OverlayCallCenter.hasActiveCalls.getter();

  if (v17)
  {
    v18 = v26;
    sub_1000841C8(v27, v26);
    v19 = v30;
    sub_100014830(v18, v30, &qword_1001307C0, &qword_1000ECBC0);
    v20 = 0;
  }

  else
  {
    v20 = 1;
    v19 = v30;
  }

  (*(v29 + 56))(v19, v20, 1, v5);
  v21 = &qword_1001307B0;
  v22 = &qword_1000ECBB8;
  sub_1000035B4(v19, v4, &qword_1001307B0, &qword_1000ECBB8);
LABEL_9:
  swift_storeEnumTagMultiPayload();
  sub_10008B1F4();
  sub_10008B278();
  _ConditionalContent<>.init(storage:)();
  return sub_100005688(v19, v21, v22);
}

uint64_t sub_1000841C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v4 = type metadata accessor for StoreTab.Identifier();
  v133 = *(v4 - 8);
  v134 = v4;
  __chkstk_darwin(v4);
  v132 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AutomationSemantics();
  v130 = *(v6 - 8);
  v131 = v6;
  __chkstk_darwin(v6);
  v129 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for AccessibilityTraits();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for AccessibilityChildBehavior();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for RoundedCornerStyle();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for FillFocusButtonStyle();
  v122 = *(v121 - 8);
  __chkstk_darwin(v121);
  v118 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  __chkstk_darwin(v103);
  v100 = &v90 - v12;
  v13 = sub_100002B38(&qword_100130868, &qword_1000ECC68);
  __chkstk_darwin(v13 - 8);
  v97 = &v90 - v14;
  v15 = type metadata accessor for StoreTab();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OverlayTabBar(0);
  v20 = *(v19 - 8);
  v94 = v19 - 8;
  v92 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100002B38(&qword_1001307E8, &qword_1000ECBE0);
  v99 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v90 - v23;
  v106 = sub_100002B38(&qword_1001307E0, &qword_1000ECBD8);
  v107 = *(v106 - 8);
  __chkstk_darwin(v106);
  v95 = &v90 - v24;
  v109 = sub_100002B38(&qword_1001307D8, &qword_1000ECBD0);
  v110 = *(v109 - 8);
  __chkstk_darwin(v109);
  v101 = &v90 - v25;
  v112 = sub_100002B38(&qword_100130870, &qword_1000ECC70);
  v114 = *(v112 - 8);
  __chkstk_darwin(v112);
  v104 = &v90 - v26;
  v113 = sub_100002B38(&qword_1001307C8, &qword_1000ECBC8);
  __chkstk_darwin(v113);
  v105 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v108 = &v90 - v29;
  v119 = sub_100002B38(&qword_100130878, &qword_1000ECC78);
  v120 = *(v119 - 8);
  __chkstk_darwin(v119);
  v111 = &v90 - v30;
  sub_10008CEA4(v2, v22, type metadata accessor for OverlayTabBar);
  v91 = *(v16 + 16);
  v91(v18, a1, v15);
  v31 = (*(v92 + 80) + 16) & ~*(v92 + 80);
  v32 = (v21 + *(v16 + 80) + v31) & ~*(v16 + 80);
  v33 = swift_allocObject();
  sub_10008A7AC(v22, v33 + v31);
  v34 = v15;
  (*(v16 + 32))(v33 + v32, v18, v15);
  v102 = v2;
  v136 = v2;
  v137 = a1;
  v35 = a1;
  v98 = a1;
  sub_100002B38(&qword_100130880, &qword_1000ECC80);
  sub_10008C55C();
  v36 = v93;
  Button.init(action:label:)();
  sub_100002B38(&qword_100130468, &qword_1000EC940);
  v37 = v97;
  FocusState.projectedValue.getter();
  v38 = v100;
  v91(v100, v35, v34);
  v39 = v38;
  (*(v16 + 56))(v38, 0, 1, v34);
  v40 = sub_1000057D8(&qword_1001307F0, &qword_1001307E8, &qword_1000ECBE0, &protocol conformance descriptor for Button<A>);
  v41 = sub_10008AA7C(&qword_100130500, &qword_100130450, &protocol conformance descriptor for StoreTab, &protocol conformance descriptor for <A> A?);
  v42 = v95;
  v43 = v96;
  v44 = v103;
  View.focused<A>(_:equals:)();
  sub_100005688(v39, &qword_10012E650, &qword_1000EDA30);
  sub_100005688(v37, &qword_100130868, &qword_1000ECC68);
  v45 = v43;
  (*(v99 + 8))(v36, v43);
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v46 = v116;
  v47 = v115;
  v48 = v117;
  (*(v116 + 104))(v115, enum case for RoundedCornerStyle.continuous(_:), v117);
  v49 = type metadata accessor for RoundedRectangle();
  v138[3] = v49;
  v138[4] = sub_10008DB20(&qword_10012EFD8, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  v50 = sub_100012854(v138);
  (*(v46 + 16))(v50 + *(v49 + 20), v47, v48);
  __asm { FMOV            V0.2D, #12.0 }

  *v50 = _Q0;
  (*(v46 + 8))(v47, v48);
  static Color.focusColor.getter();
  Color.opacity(_:)();

  v56 = v118;
  FillFocusButtonStyle.init(id:shape:color:)();
  *&v139 = v45;
  *(&v139 + 1) = v44;
  *&v140 = v40;
  *(&v140 + 1) = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = sub_10008DB20(&qword_1001307F8, &type metadata accessor for FillFocusButtonStyle, &protocol conformance descriptor for FillFocusButtonStyle);
  v59 = v101;
  v60 = v106;
  v61 = v121;
  View.buttonStyle<A>(_:)();
  (*(v122 + 8))(v56, v61);
  (*(v107 + 8))(v42, v60);
  v62 = v123;
  static AccessibilityChildBehavior.combine.getter();
  *&v139 = v60;
  *(&v139 + 1) = v61;
  *&v140 = OpaqueTypeConformance2;
  *(&v140 + 1) = v58;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = v104;
  v65 = v109;
  View.accessibilityElement(children:)();
  (*(v124 + 8))(v62, v125);
  (*(v110 + 8))(v59, v65);
  v66 = v126;
  static AccessibilityTraits.isButton.getter();
  *&v139 = v65;
  *(&v139 + 1) = v63;
  swift_getOpaqueTypeConformance2();
  v67 = v105;
  v68 = v112;
  v69 = v64;
  View.accessibilityAddTraits(_:)();
  v70 = *(v127 + 8);
  v71 = v66;
  v72 = v66;
  v73 = v128;
  v70(v71, v128);
  (*(v114 + 8))(v69, v68);
  static AccessibilityTraits.isImage.getter();
  v74 = v108;
  v75 = v113;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v70(v72, v73);
  sub_100005688(v67, &qword_1001307C8, &qword_1000ECBC8);
  v76 = StoreTab.id.getter();
  *(&v140 + 1) = &type metadata for String;
  *&v139 = v76;
  *(&v139 + 1) = v77;
  v78 = v129;
  static AutomationSemantics.tabBar(tabName:)();
  sub_10002E6CC(&v139);
  v79 = sub_10008B370();
  v80 = v111;
  View.automationSemantics(_:)();
  (*(v130 + 8))(v78, v131);
  sub_100005688(v74, &qword_1001307C8, &qword_1000ECBC8);
  v81 = v132;
  StoreTab.identifier.getter();
  v82 = sub_100089428(v81);
  v84 = v83;
  (*(v133 + 8))(v81, v134);
  *&v139 = v82;
  *(&v139 + 1) = v84;
  v138[0] = v75;
  v138[1] = v79;
  v85 = swift_getOpaqueTypeConformance2();
  sub_10000548C(v85, v86, v87);
  v88 = v119;
  View.accessibilityLabel<A>(_:)();

  return (*(v120 + 8))(v80, v88);
}

double sub_100085244(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = type metadata accessor for StoreTab();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = *(v38 + 64);
  __chkstk_darwin(v5);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OverlayTabBar(0);
  v35 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v36 = v8;
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  v18 = *(a3 + 8);

  if ((v18 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    v34 = v12;
    v20 = v9;
    v21 = a2;
    v22 = v19;
    os_log(_:dso:log:_:_:)();

    a2 = v21;
    v9 = v20;
    v12 = v34;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v13);
    v17 = v40;
  }

  swift_getKeyPath();
  v40 = v17;
  sub_10008DB20(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = *(v17 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange);

  if (v23 == 1)
  {
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
    sub_10008CEA4(a3, v9, type metadata accessor for OverlayTabBar);
    v27 = v37;
    v26 = v38;
    v28 = v39;
    (*(v38 + 16))(v37, a2, v39);
    type metadata accessor for MainActor();
    v29 = static MainActor.shared.getter();
    v30 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v31 = (v36 + *(v26 + 80) + v30) & ~*(v26 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v29;
    *(v32 + 24) = &protocol witness table for MainActor;
    sub_10008A7AC(v9, v32 + v30);
    (*(v26 + 32))(v32 + v31, v27, v28);
    sub_100014BBC(0, 0, v12, &unk_1000ECC58, v32);
  }

  return result;
}

uint64_t sub_1000856B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100085754, v7, v6);
}

uint64_t sub_100085754()
{
  v3 = *(v0 + 24);

  static Animation.spring(response:dampingFraction:blendDuration:)();
  Animation.delay(_:)();

  *(swift_task_alloc() + 16) = v3;
  withAnimation<A>(_:_:)();

  v1 = *(v0 + 8);

  return v1();
}

double sub_100085850(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v21 = *(v4 - 8);
  v22 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v13 = type metadata accessor for StoreTab();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a2, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  type metadata accessor for OverlayTabBar(0);
  sub_1000035B4(v12, v9, &qword_10012E650, &qword_1000EDA30);
  sub_100002B38(&qword_100130468, &qword_1000EC940);
  FocusState.wrappedValue.setter();
  sub_100005688(v12, &qword_10012E650, &qword_1000EDA30);
  v15 = *a1;
  v16 = *(a1 + 8);

  if ((v16 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v21 + 8))(v6, v22);
    v15 = v23;
  }

  if (*(v15 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v20 - 2) = v15;
    *(&v20 - 8) = 0;
    v23 = v15;
    sub_10008DB20(&qword_10012FFA8, type metadata accessor for DashboardTabViewState, &unk_1000EC498);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v15 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange) = 0;
  }

  return result;
}

void sub_100085BDC(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v113 = a3;
  v119 = a1;
  v4 = type metadata accessor for EnvironmentValues();
  v111 = *(v4 - 8);
  v112 = v4;
  __chkstk_darwin(v4);
  v110 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoreTab.Identifier();
  v7 = *(v6 - 8);
  v120 = v6;
  v121 = v7;
  __chkstk_darwin(v6);
  v114 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v108 = &v102 - v10;
  v118 = sub_100002B38(&qword_100130858, &qword_1000ECC20);
  __chkstk_darwin(v118);
  v109 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v102 - v13;
  __chkstk_darwin(v14);
  v105 = &v102 - v15;
  v16 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  __chkstk_darwin(v16 - 8);
  v107 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v104 = &v102 - v19;
  __chkstk_darwin(v20);
  v117 = (&v102 - v21);
  __chkstk_darwin(v22);
  v115 = &v102 - v23;
  __chkstk_darwin(v24);
  v26 = &v102 - v25;
  __chkstk_darwin(v27);
  v29 = &v102 - v28;
  __chkstk_darwin(v30);
  v32 = &v102 - v31;
  v33 = type metadata accessor for StoreTab();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = (&v102 - v38);
  v40 = a2;
  v42 = v41;
  sub_1000035B4(a2, v32, &qword_10012E650, &qword_1000EDA30);
  v116 = *(v34 + 48);
  if (v116(v32, 1, v42) == 1)
  {
    v43 = v42;
    sub_100005688(v32, &qword_10012E650, &qword_1000EDA30);
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100011F80(v44, qword_100135C88);
    v45 = v115;
    sub_1000035B4(v119, v115, &qword_10012E650, &qword_1000EDA30);
    v46 = v117;
    sub_1000035B4(v40, v117, &qword_10012E650, &qword_1000EDA30);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      LODWORD(v114) = v48;
      v49 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v122[0] = v113;
      *v49 = 136315394;
      v50 = v104;
      sub_1000035B4(v45, v104, &qword_10012E650, &qword_1000EDA30);
      v51 = v43;
      v52 = v116(v50, 1, v43);
      v119 = v47;
      if (v52 == 1)
      {
        sub_100005688(v50, &qword_10012E650, &qword_1000EDA30);
        v53 = 1;
        v54 = v106;
      }

      else
      {
        v54 = v106;
        StoreTab.identifier.getter();
        (*(v34 + 8))(v50, v43);
        v53 = 0;
      }

      v66 = *(v121 + 56);
      v121 += 56;
      v66(v54, v53, 1, v120);
      v67 = String.init<A>(describing:)();
      v69 = v68;
      sub_100005688(v115, &qword_10012E650, &qword_1000EDA30);
      v70 = sub_1000BA5C8(v67, v69, v122);

      *(v49 + 4) = v70;
      *(v49 + 12) = 2080;
      v71 = v117;
      v72 = v107;
      sub_1000035B4(v117, v107, &qword_10012E650, &qword_1000EDA30);
      if (v116(v72, 1, v51) == 1)
      {
        sub_100005688(v72, &qword_10012E650, &qword_1000EDA30);
        v73 = 1;
        v74 = v109;
      }

      else
      {
        v74 = v109;
        StoreTab.identifier.getter();
        (*(v34 + 8))(v72, v51);
        v73 = 0;
      }

      v66(v74, v73, 1, v120);
      v97 = String.init<A>(describing:)();
      v99 = v98;
      sub_100005688(v71, &qword_10012E650, &qword_1000EDA30);
      v100 = sub_1000BA5C8(v97, v99, v122);

      *(v49 + 14) = v100;
      v101 = v119;
      _os_log_impl(&_mh_execute_header, v119, v114, "unable to move tabs, focusedTab was changed from %s to %s", v49, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100005688(v46, &qword_10012E650, &qword_1000EDA30);
      sub_100005688(v45, &qword_10012E650, &qword_1000EDA30);
    }
  }

  else
  {
    (*(v34 + 32))(v39, v32, v42);
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100011F80(v55, qword_100135C88);
    sub_1000035B4(v119, v29, &qword_10012E650, &qword_1000EDA30);
    v56 = *(v34 + 16);
    v119 = v39;
    v56(v36, v39, v42);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    v59 = os_log_type_enabled(v57, v58);
    v103 = v42;
    if (v59)
    {
      v60 = v42;
      v61 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v122[0] = v117;
      *v61 = 136315394;
      sub_1000035B4(v29, v26, &qword_10012E650, &qword_1000EDA30);
      if (v116(v26, 1, v60) == 1)
      {
        sub_100005688(v26, &qword_10012E650, &qword_1000EDA30);
        v62 = 1;
        v63 = v34;
        v64 = v105;
      }

      else
      {
        v75 = v105;
        StoreTab.identifier.getter();
        v64 = v75;
        v63 = v34;
        (*(v34 + 8))(v26, v60);
        v62 = 0;
      }

      (*(v121 + 56))(v64, v62, 1, v120);
      v76 = String.init<A>(describing:)();
      v78 = v77;
      sub_100005688(v29, &qword_10012E650, &qword_1000EDA30);
      v79 = sub_1000BA5C8(v76, v78, v122);

      *(v61 + 4) = v79;
      *(v61 + 12) = 2080;
      StoreTab.identifier.getter();
      v80 = String.init<A>(describing:)();
      v82 = v81;
      v83 = v60;
      v65 = *(v63 + 8);
      v65(v36, v83);
      v84 = sub_1000BA5C8(v80, v82, v122);

      *(v61 + 14) = v84;
      _os_log_impl(&_mh_execute_header, v57, v58, "focusedTab was changed from %s to %s", v61, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v65 = *(v34 + 8);
      v65(v36, v42);
      sub_100005688(v29, &qword_10012E650, &qword_1000EDA30);
    }

    v85 = *v113;
    v86 = *(v113 + 8);

    v87 = v114;
    if (v86 == 1)
    {
      v88 = v119;
      StoreTab.identifier.getter();
    }

    else
    {
      static os_log_type_t.fault.getter();
      v89 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v90 = v110;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      v91 = v112;
      v117 = *(v111 + 8);
      (v117)(v90, v112);
      v118 = v65;
      v92 = v119;
      StoreTab.identifier.getter();

      static os_log_type_t.fault.getter();
      v93 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      v94 = v90;
      v88 = v92;
      v65 = v118;
      (v117)(v94, v91);
      v85 = v122[0];
    }

    v95 = v103;
    v96 = *(v85 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_objectGraph);

    sub_100077984(v87, v96);

    (*(v121 + 8))(v87, v120);
    v65(v88, v95);
  }
}