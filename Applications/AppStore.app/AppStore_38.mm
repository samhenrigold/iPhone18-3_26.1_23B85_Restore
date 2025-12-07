double sub_100437388(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100005744(0, &qword_1009848D8, GKLeaderboard_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

uint64_t sub_10043742C(uint64_t a1)
{
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSLogger();
  sub_1000056A8(v1, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  return Promise.reject(_:)();
}

uint64_t sub_100437584(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v4 = Promise.__allocating_init()();
  type metadata accessor for GameCenter();
  v7[3] = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = static OS_dispatch_queue.main.getter();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = a2;

  static GameCenter.withLocalPlayer(on:_:)();

  sub_100007000(v7);
  return v4;
}

unint64_t sub_100437698()
{
  result = qword_100985760;
  if (!qword_100985760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100985760);
  }

  return result;
}

unint64_t sub_100437720()
{
  result = qword_100985768;
  if (!qword_100985768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100985768);
  }

  return result;
}

double static AppPromotionFormattedDateLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  swift_getObjectType();

  return sub_100438080(a1, a2, a3, a4);
}

uint64_t AppPromotionFormattedDateLayout.Metrics.init(textTopSpace:textBottomSpace:liveIndicatorTrailingMargin:liveIndicatorSize:layoutMargins:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>)
{
  sub_100005A38(a1, a4);
  sub_100005A38(a2, (a4 + 5));
  result = sub_100005A38(a3, (a4 + 10));
  a4[15] = a5;
  a4[16] = a6;
  a4[17] = a7;
  a4[18] = a8;
  a4[19] = a9;
  a4[20] = a10;
  return result;
}

uint64_t AppPromotionFormattedDateLayout.init(metrics:textLabel:liveIndicatorView:backgroundView:vibrancyView:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v21 = a6;
  v11 = type metadata accessor for Locale();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C9618(a1, v22);
  static Locale.storefront.getter();
  v15 = Locale.hasExtraTallWritingSystem.getter();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    sub_10002A400(a2, a2[3]);
    LayoutTextView.withLanguageAwareOutsets.getter();
    sub_1002C9674(a1);
  }

  else
  {
    sub_1002C9674(a1);
    sub_10002C0AC(a2, &v22[10] + 8);
  }

  v16 = *(a3 + 16);
  v22[13] = *a3;
  v22[14] = v16;
  *&v22[15] = *(a3 + 32);
  v17 = *a4;
  *(&v22[16] + 8) = a4[1];
  *(&v22[15] + 8) = v17;
  *(&v22[17] + 1) = *(a4 + 4);
  *&v22[20] = *(a5 + 32);
  v18 = *(a5 + 16);
  v22[18] = *a5;
  v22[19] = v18;
  memcpy(v21, v22, 0x148uLL);
  return sub_100007000(a2);
}

uint64_t AppPromotionFormattedDateLayout.placeChildren(relativeTo:in:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005FC74(v5 + 248, v55);
  if (v56)
  {
    sub_10002A400(v55, v56);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v55);
  }

  else
  {
    sub_10005FD2C(v55);
  }

  sub_10005FC74(v5 + 288, v55);
  if (v56)
  {
    sub_10002A400(v55, v56);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v55);
  }

  else
  {
    sub_10005FD2C(v55);
  }

  CGRect.subtracting(insets:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_10005FC74(v5 + 208, &v53);
  v51 = a2;
  v52 = a4;
  v49 = a3;
  v50 = a5;
  v46 = v15;
  v45 = v17;
  v44 = v19;
  v43 = v21;
  if (!v54)
  {
    sub_10005FD2C(&v53);
    goto LABEL_11;
  }

  sub_100005A38(&v53, v55);
  sub_10002A400(v55, v56);
  if (dispatch thunk of LayoutView.isHidden.getter())
  {
    sub_100007000(v55);
LABEL_11:
    v48 = v15;
    v22 = v17;
    Height = v21;
    goto LABEL_13;
  }

  v24 = *(v5 + 120);
  sub_10002A400((v5 + 80), *(v5 + 104));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v26 = v25;
  (*(v11 + 8))(v13, v10);
  v27 = v24 + v26;
  v57.origin.x = v15;
  v57.origin.y = v17;
  v57.size.width = v19;
  v57.size.height = v21;
  v48 = v27 + CGRectGetMinX(v57);
  v58.origin.x = v15;
  v58.origin.y = v17;
  v58.size.width = v19;
  v58.size.height = v21;
  MinY = CGRectGetMinY(v58);
  v59.origin.x = v15;
  v59.origin.y = v17;
  v59.size.width = v19;
  v59.size.height = v21;
  Width = CGRectGetWidth(v59);
  v60.size.width = v19;
  v19 = Width - v27;
  v60.origin.x = v15;
  v22 = MinY;
  v60.origin.y = v17;
  v60.size.height = v21;
  Height = CGRectGetHeight(v60);
  sub_100007000(v55);
LABEL_13:
  sub_10002A400((v5 + 168), *(v5 + 192));
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v31 = v30;
  v33 = v32;
  sub_10002A400(v5, *(v5 + 24));
  AnyDimension.topMargin(from:in:)();
  v47 = v34;
  v35 = v48;
  v61.origin.x = v48;
  v61.origin.y = v22;
  v61.size.width = v19;
  v61.size.height = Height;
  MinX = CGRectGetMinX(v61);
  v62.origin.x = v35;
  v62.origin.y = v22;
  v62.size.width = v19;
  v62.size.height = Height;
  v37 = CGRectGetMinY(v62);
  v63.origin.x = v35;
  v63.origin.y = v22;
  v63.size.width = v19;
  v63.size.height = Height;
  v38 = CGRectGetWidth(v63);
  if (v38 >= v31)
  {
    v39 = v31;
  }

  else
  {
    v39 = v38;
  }

  v40 = v47 + v37;
  sub_10002A400((v5 + 168), *(v5 + 192));
  v48 = v33;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_10005FC74(v5 + 208, &v53);
  if (v54)
  {
    sub_100005A38(&v53, v55);
    v47 = *(v5 + 120);
    v64.origin.x = MinX;
    v64.origin.y = v40;
    v64.size.width = v39;
    v41 = v48;
    v64.size.height = v48;
    CGRectGetMinY(v64);
    v65.origin.x = MinX;
    v65.origin.y = v40;
    v65.size.width = v39;
    v65.size.height = v41;
    CGRectGetHeight(v65);
    v66.origin.x = v46;
    v66.origin.y = v45;
    v66.size.width = v44;
    v66.size.height = v43;
    CGRectGetMinX(v66);
    sub_10002A400(v55, v56);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v55);
  }

  else
  {
    sub_10005FD2C(&v53);
  }

  return LayoutRect.init(representing:)();
}

double AppPromotionFormattedDateLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  sub_1004383F0(a1, v3, a2, a3);
  return result;
}

void AppPromotionFormattedDateLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = a3;
  v4[20] = a4;
}

double sub_100438080(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v25 = a2;
  v26 = type metadata accessor for VerticalMarginsMeasurable();
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StackMeasurable.Axis();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StackMeasurable();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for StackMeasurable.Axis.vertical(_:), v8, v14);
  sub_10002849C(&qword_100996330, qword_1007BAD70);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007B1890;
  sub_10002C0AC(a1, v33);
  v18 = type metadata accessor for VerticalSpaceMeasurable();
  *(v17 + 56) = v18;
  *(v17 + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_1000056E0((v17 + 32));
  VerticalSpaceMeasurable.init(_:multiplier:)();
  sub_10002C0AC(a1 + 40, v33);
  *(v17 + 96) = v18;
  *(v17 + 104) = &protocol witness table for VerticalSpaceMeasurable;
  sub_1000056E0((v17 + 72));
  VerticalSpaceMeasurable.init(_:multiplier:)();
  StackMeasurable.init(axis:skipEmptyChildren:children:)();
  v33[3] = v12;
  v33[4] = &protocol witness table for StackMeasurable;
  v19 = sub_1000056E0(v33);
  (*(v13 + 16))(v19, v16, v12);
  v20 = *(a1 + 136);
  v31 = &type metadata for CGFloat;
  v32 = &protocol witness table for CGFloat;
  v30 = v20;
  v21 = *(a1 + 152);
  v28 = &type metadata for CGFloat;
  v29 = &protocol witness table for CGFloat;
  v27 = v21;
  VerticalMarginsMeasurable.init(child:topMargin:bottomMargin:skipIfEmpty:shouldMeasureToBaseline:)();
  VerticalMarginsMeasurable.measurements(fitting:in:)();
  v23 = v22;
  (*(v5 + 8))(v7, v26);
  (*(v13 + 8))(v16, v12);
  return v23;
}

void sub_1004383F0(uint64_t a1, void *a2, double a3, double a4)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[17];
  v10[0] = a2[18];
  v10[1] = v9;
  CGSize.subtracting(insets:)();
  sub_10005FC74((a2 + 26), &v11);
  if (v12)
  {
    sub_100005A38(&v11, v13);
    sub_10002A400(v13, v13[3]);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
    {
      sub_10002A400(a2 + 10, a2[13]);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      (*(v6 + 8))(v8, v5);
    }

    sub_100007000(v13);
  }

  else
  {
    sub_10005FD2C(&v11);
  }

  sub_10002A400(a2 + 21, a2[24]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  sub_10002A400(a2, a2[3]);
  AnyDimension.topMargin(from:in:)();
  sub_10002A400(a2 + 5, a2[8]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  (*(v6 + 8))(v8, v5);
  CGSize.adding(outsets:)();
}

uint64_t sub_1004386E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10043872C(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004387E0(uint64_t a1)
{
  v30 = a1;
  v2 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v27 = &v26 - v6;
  v7 = sub_10002849C(&qword_10097E110, qword_1007C5430);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = sub_10002849C(&qword_10097E128, &unk_1007C5830);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v17 = OBJC_IVAR____TtC8AppStore45InteractiveSectionBackgroundScrollCoordinator_currentState;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v29 = v1;
  sub_100031660(v1 + v17, v16, &qword_10097E110, qword_1007C5430);
  sub_100031660(v30, &v16[v18], &qword_10097E110, qword_1007C5430);
  v19 = *(v3 + 48);
  if (v19(v16, 1, v2) == 1)
  {
    if (v19(&v16[v18], 1, v2) == 1)
    {
      return sub_10002B894(v16, &qword_10097E110, qword_1007C5430);
    }

    goto LABEL_6;
  }

  sub_100031660(v16, v12, &qword_10097E110, qword_1007C5430);
  if (v19(&v16[v18], 1, v2) == 1)
  {
    sub_1002B81D0(v12);
LABEL_6:
    v21 = &qword_10097E128;
    v22 = &unk_1007C5830;
    goto LABEL_13;
  }

  v23 = v27;
  sub_1002B816C(&v16[v18], v27);
  if (static ShelfBackground.== infix(_:_:)() & 1) != 0 && *&v12[*(v2 + 20)] == *(v23 + *(v2 + 20)) && (static IndexPath.== infix(_:_:)())
  {
    v24 = static ShelfBackground.== infix(_:_:)();
    sub_1002B81D0(v23);
    sub_1002B81D0(v12);
    result = sub_10002B894(v16, &qword_10097E110, qword_1007C5430);
    if (v24)
    {
      return result;
    }

    goto LABEL_14;
  }

  sub_1002B81D0(v23);
  sub_1002B81D0(v12);
  v21 = &qword_10097E110;
  v22 = qword_1007C5430;
LABEL_13:
  sub_10002B894(v16, v21, v22);
LABEL_14:
  sub_100031660(v29 + v17, v9, &qword_10097E110, qword_1007C5430);
  if (v19(v9, 1, v2) == 1)
  {
    return sub_10002B894(v9, &qword_10097E110, qword_1007C5430);
  }

  v25 = v28;
  sub_1002B816C(v9, v28);
  sub_100438BC0();
  return sub_1002B81D0(v25);
}

uint64_t sub_100438BC0()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.init(item:section:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v5 = Strong, type metadata accessor for InteractiveSectionBackgroundView(0), static UICollectionReusableView.elementKind.getter(), v6 = String._bridgeToObjectiveC()(), , isa = IndexPath._bridgeToObjectiveC()().super.isa, v8 = [v5 _visibleDecorationViewOfKind:v6 atIndexPath:isa], v5, v6, isa, !v8) || (*&v16[0] = v8, sub_1002B8230(), sub_10002849C(&unk_10097E150, qword_1007C5848), (swift_dynamicCast() & 1) == 0))
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  sub_100438E58(v18);
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9 || (v10 = v9, v11 = UICollectionElementKindSectionHeader, v12 = IndexPath._bridgeToObjectiveC()().super.isa, v13 = [v10 _visibleSupplementaryViewOfKind:v11 atIndexPath:v12], v10, v11, v12, !v13) || (v15[1] = v13, sub_1002B8230(), sub_10002849C(&unk_10097E150, qword_1007C5848), (swift_dynamicCast() & 1) == 0))
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
  }

  sub_100438E58(v16);
  (*(v1 + 8))(v3, v0);
  sub_10002B894(v16, &unk_10097E140, &unk_1007BD220);
  return sub_10002B894(v18, &unk_10097E140, &unk_1007BD220);
}

uint64_t sub_100438E58(uint64_t a1)
{
  v50 = sub_10002849C(&qword_10097E128, &unk_1007C5830);
  __chkstk_darwin(v50);
  v51 = &v44 - v3;
  v4 = sub_10002849C(&qword_10097E110, qword_1007C5430);
  __chkstk_darwin(v4 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v44 - v8;
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  __chkstk_darwin(v13);
  v15 = (&v44 - v14);
  v16 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v44 - v21;
  sub_100031660(a1, &v52, &unk_10097E140, &unk_1007BD220);
  if (!v53)
  {
    return sub_10002B894(&v52, &unk_10097E140, &unk_1007BD220);
  }

  v48 = v12;
  v49 = v22;
  sub_100177264(&v52, v55);
  v23 = OBJC_IVAR____TtC8AppStore45InteractiveSectionBackgroundScrollCoordinator_currentState;
  swift_beginAccess();
  sub_100031660(v1 + v23, v15, &qword_10097E110, qword_1007C5430);
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) == 1)
  {
    v25 = &qword_10097E110;
    v26 = qword_1007C5430;
    v27 = v15;
LABEL_21:
    sub_10002B894(v27, v25, v26);
    return sub_100007000(v55);
  }

  v44 = v19;
  v45 = v6;
  v46 = a1;
  v47 = v1;
  v29 = v49;
  sub_1002B816C(v15, v49);
  v30 = v56;
  v31 = v57;
  sub_10002A400(v55, v56);
  v32 = v48;
  (*(v31 + 8))(v30, v31);
  sub_1002AE770(v29, v9);
  (*(v17 + 56))(v9, 0, 1, v16);
  v33 = v51;
  v34 = *(v50 + 48);
  sub_100031660(v32, v51, &qword_10097E110, qword_1007C5430);
  sub_100031660(v9, v33 + v34, &qword_10097E110, qword_1007C5430);
  if (v24(v33, 1, v16) == 1)
  {
    sub_10002B894(v9, &qword_10097E110, qword_1007C5430);
    sub_10002B894(v32, &qword_10097E110, qword_1007C5430);
    if (v24((v33 + v34), 1, v16) == 1)
    {
      sub_10002B894(v33, &qword_10097E110, qword_1007C5430);
LABEL_8:
      sub_1002B81D0(v49);
      return sub_100007000(v55);
    }

    goto LABEL_11;
  }

  v35 = v45;
  sub_100031660(v33, v45, &qword_10097E110, qword_1007C5430);
  if (v24((v33 + v34), 1, v16) == 1)
  {
    sub_10002B894(v9, &qword_10097E110, qword_1007C5430);
    sub_10002B894(v48, &qword_10097E110, qword_1007C5430);
    sub_1002B81D0(v35);
LABEL_11:
    sub_10002B894(v33, &qword_10097E128, &unk_1007C5830);
    v36 = v47;
    goto LABEL_18;
  }

  v37 = v44;
  sub_1002B816C(v33 + v34, v44);
  v38 = static ShelfBackground.== infix(_:_:)();
  v36 = v47;
  if (v38 & 1) != 0 && *(v35 + *(v16 + 20)) == *(v37 + *(v16 + 20)) && (static IndexPath.== infix(_:_:)())
  {
    v39 = static ShelfBackground.== infix(_:_:)();
    sub_1002B81D0(v37);
    sub_10002B894(v9, &qword_10097E110, qword_1007C5430);
    sub_10002B894(v48, &qword_10097E110, qword_1007C5430);
    sub_1002B81D0(v35);
    sub_10002B894(v33, &qword_10097E110, qword_1007C5430);
    if (v39)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1002B81D0(v37);
    sub_10002B894(v9, &qword_10097E110, qword_1007C5430);
    sub_10002B894(v48, &qword_10097E110, qword_1007C5430);
    sub_1002B81D0(v35);
    sub_10002B894(v33, &qword_10097E110, qword_1007C5430);
  }

LABEL_18:
  sub_100031660(v46, &v52, &unk_10097E140, &unk_1007BD220);
  v40 = v53;
  if (!v53)
  {
    sub_1002B81D0(v49);
    v25 = &unk_10097E140;
    v26 = &unk_1007BD220;
    v27 = &v52;
    goto LABEL_21;
  }

  v41 = v54;
  sub_10002A400(&v52, v53);
  v42 = *(v36 + 80);
  v43 = v49;
  (*(v41 + 16))(v49, v42, v40, v41);
  sub_1002B81D0(v43);
  sub_100007000(&v52);
  return sub_100007000(v55);
}

uint64_t sub_10043946C()
{
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectRelease();
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore45InteractiveSectionBackgroundScrollCoordinator_currentState, &qword_10097E110, qword_1007C5430);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InteractiveSectionBackgroundScrollCoordinator(uint64_t a1)
{
  result = qword_100985838;
  if (!qword_100985838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10043954C(uint64_t a1)
{
  sub_1002AE2E8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100439620(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1002B6F50(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10043969C(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_10043969C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10002849C(&unk_10097E130, &qword_1007C5840);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1004399D4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1004397AC(0, v2, 1, a1);
  }
}

void sub_1004397AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for IndexPath();
  __chkstk_darwin(v33);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v28 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v34 = *a4;
    v14 = v34 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v30 = v14;
    v31 = a3;
    v16 = *(v34 + 8 * a3);
    v29 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = [v16 indexPath];
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = [v18 indexPath];
      v21 = v32;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v20) = static IndexPath.< infix(_:_:)();
      v22 = *v13;
      v23 = v21;
      v24 = v33;
      (*v13)(v23, v33);
      v22(v12, v24);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v14 = v30 + 8;
        v15 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v25;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1004399D4(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v120 = type metadata accessor for IndexPath();
  __chkstk_darwin(v120);
  v119 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v105 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v100 = a4;
    }

    else
    {
LABEL_121:
      v100 = sub_1002B6D90(a4);
    }

    v121 = v100;
    v101 = *(v100 + 2);
    if (v101 >= 2)
    {
      while (*v16)
      {
        a4 = *&v100[16 * v101];
        v102 = v100;
        v103 = *&v100[16 * v101 + 24];
        sub_10043A25C((*v16 + 8 * a4), (*v16 + 8 * *&v100[16 * v101 + 16]), (*v16 + 8 * v103), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v103 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_1002B6D90(v102);
        }

        if (v101 - 2 >= *(v102 + 2))
        {
          goto LABEL_115;
        }

        v104 = &v102[16 * v101];
        *v104 = a4;
        *(v104 + 1) = v103;
        v121 = v102;
        sub_1002B6D04(v101 - 1);
        v100 = v121;
        v101 = *(v121 + 2);
        if (v101 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v117 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v110 = a4;
  v106 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v115 = v13;
      v108 = v15;
      v109 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v114 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = [v18 indexPath];
      v22 = v118;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = [v20 indexPath];
      v24 = v119;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      LODWORD(v116) = static IndexPath.< infix(_:_:)();
      v25 = *v117;
      v26 = v120;
      (*v117)(v24, v120);
      v25(v22, v26);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v107 = v16;
      v27 = (v16 + 2);
      while (1)
      {
        v14 = v115;
        if (v115 == v27)
        {
          break;
        }

        v28 = *(v5 - 8);
        v29 = *v5;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v30 = [v29 indexPath];
        v31 = v118;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = [v28 indexPath];
        v33 = v119;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v32) = static IndexPath.< infix(_:_:)() & 1;
        v34 = v33;
        v35 = v120;
        v25(v34, v120);
        v25(v31, v35);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v27;
        v5 += 8;
        if ((v116 & 1) != v32)
        {
          v14 = (v27 - 1);
          break;
        }
      }

      v15 = v108;
      v6 = v109;
      a4 = v110;
      v16 = v107;
      v36 = v114;
      if (v116)
      {
        if (v14 < v107)
        {
          goto LABEL_118;
        }

        a3 = v106;
        if (v107 < v14)
        {
          v37 = 8 * v14 - 8;
          v38 = v14;
          v39 = v107;
          do
          {
            if (v39 != --v38)
            {
              v41 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v40 = *(v41 + v36);
              *(v41 + v36) = *(v41 + v37);
              *(v41 + v37) = v40;
            }

            v39 = (v39 + 1);
            v37 -= 8;
            v36 += 8;
          }

          while (v39 < v38);
        }
      }

      else
      {
        a3 = v106;
      }
    }

    v42 = a3[1];
    if (v14 < v42)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v43 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v43)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v56 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v56;
    }

    else
    {
      v15 = sub_100034940(0, *(v56 + 2) + 1, 1, v56);
    }

    a4 = *(v15 + 2);
    v57 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v57 >> 1)
    {
      v15 = sub_100034940((v57 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v58 = &v15[16 * a4];
    *(v58 + 4) = v16;
    *(v58 + 5) = v14;
    v59 = *v111;
    if (!*v111)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v60 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v61 = *(v15 + 4);
          v62 = *(v15 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_56:
          if (v64)
          {
            goto LABEL_105;
          }

          v77 = &v15[16 * v5];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_108;
          }

          v83 = &v15[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_112;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v87 = &v15[16 * v5];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_70:
        if (v82)
        {
          goto LABEL_107;
        }

        v90 = &v15[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_110;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v60 - 1;
        if (v60 - 1 >= v5)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v98 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v60 + 40];
        sub_10043A25C((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v60 + 32]), (*a3 + 8 * v16), v59);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_1002B6D90(v98);
        }

        if (a4 >= *(v98 + 2))
        {
          goto LABEL_102;
        }

        v99 = &v98[16 * a4];
        *(v99 + 4) = v5;
        *(v99 + 5) = v16;
        v121 = v98;
        a4 = &v121;
        sub_1002B6D04(v60);
        v15 = v121;
        v5 = *(v121 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v15[16 * v5 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_103;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_104;
      }

      v72 = &v15[16 * v5];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_106;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_109;
      }

      if (v76 >= v68)
      {
        v94 = &v15[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_113;
        }

        if (v63 < v97)
        {
          v60 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v110;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v108 = v15;
  v109 = v6;
  v116 = *a3;
  v44 = v116 + 8 * v14 - 8;
  v107 = v16;
  a4 = v16 - v14;
  v112 = v43;
LABEL_29:
  v114 = v44;
  v115 = v14;
  v5 = *(v116 + 8 * v14);
  v113 = a4;
  v45 = v44;
  while (1)
  {
    v46 = *v45;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v47 = [v5 indexPath];
    v48 = v118;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = [v46 indexPath];
    v50 = v119;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v49) = static IndexPath.< infix(_:_:)();
    v51 = *v117;
    v52 = v50;
    v53 = v120;
    (*v117)(v52, v120);
    v51(v48, v53);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v49 & 1) == 0)
    {
LABEL_28:
      v14 = v115 + 1;
      v44 = v114 + 8;
      a4 = v113 - 1;
      if ((v115 + 1) != v112)
      {
        goto LABEL_29;
      }

      v14 = v112;
      v15 = v108;
      v6 = v109;
      a3 = v106;
      v16 = v107;
      goto LABEL_36;
    }

    if (!v116)
    {
      break;
    }

    v54 = *v45;
    v5 = *(v45 + 8);
    *v45 = v5;
    *(v45 + 8) = v54;
    v45 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
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
}

uint64_t sub_10043A25C(void **a1, void **a2, void **a3, void **a4)
{
  v51 = type metadata accessor for IndexPath();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v45 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v52 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v54 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v52)
    {
      v46 = a4;
      v47 = (v8 + 8);
LABEL_27:
      v45 = a1;
      v29 = a1 - 1;
      v30 = (a3 - 1);
      v31 = v54;
      v48 = a1 - 1;
      do
      {
        v53 = v30;
        v32 = (v30 + 8);
        v33 = *--v31;
        v34 = *v29;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v35 = [v33 indexPath];
        v36 = v49;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = [v34 indexPath];
        v38 = v50;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v37) = static IndexPath.< infix(_:_:)();
        v39 = *v47;
        v40 = v38;
        v41 = v51;
        (*v47)(v40, v51);
        v39(v36, v41);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v37)
        {
          a4 = v46;
          a3 = v53;
          v43 = v48;
          if (v32 != v45)
          {
            *v53 = *v48;
          }

          if (v54 <= a4 || (a1 = v43, v43 <= v52))
          {
            a1 = v43;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v46;
        v42 = v53;
        if (v32 != v54)
        {
          *v53 = *v31;
        }

        v30 = v42 - 8;
        v54 = v31;
        v29 = v48;
      }

      while (v31 > a4);
      v54 = v31;
      a1 = v45;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v54 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v52 = a1;
        v17 = *a2;
        v18 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = [v17 indexPath];
        v20 = v49;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = [v18 indexPath];
        v22 = v50;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v21) = static IndexPath.< infix(_:_:)();
        v23 = *v16;
        v24 = v22;
        v25 = v51;
        (*v16)(v24, v51);
        v23(v20, v25);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v21 & 1) == 0)
        {
          break;
        }

        v26 = a2;
        v27 = v52;
        v28 = v52 == a2++;
        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v27 + 1;
        if (a4 >= v54 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v26 = a4;
      v27 = v52;
      v28 = v52 == a4++;
      if (v28)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v27 = *v26;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v54 - a4 + (v54 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v54 - a4));
  }

  return 1;
}

uint64_t sub_10043A6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for InteractiveSectionBackgroundScrollCoordinator(0);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC8AppStore45InteractiveSectionBackgroundScrollCoordinator_currentState;
  v23 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  *(v21 + 16) = a1;
  *(v21 + 24) = a5;
  *(v21 + 32) = a6;
  *(v21 + 40) = a7;
  *(v21 + 48) = a8;
  *(v21 + 64) = a9;
  swift_unknownObjectWeakAssign();
  *(v21 + 88) = a3;
  *(v21 + 96) = a12;
  *(v21 + 80) = a4;
  swift_unknownObjectRetain();
  *(v21 + 56) = dispatch thunk of ShelfPresenter.rowsPerColumn(for:)();
  return v21;
}

void sub_10043A81C(void (**a1)(char *, uint64_t), double a2)
{
  v3 = v2;
  v96 = a1;
  v5 = sub_10002849C(&qword_10097E110, qword_1007C5430);
  __chkstk_darwin(v5 - 8);
  v94 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v93 = v84 - v8;
  v9 = type metadata accessor for IndexPath();
  v103 = *(v9 - 8);
  __chkstk_darwin(v9);
  v98 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v95 = v84 - v12;
  __chkstk_darwin(v13);
  v99 = v84 - v14;
  __chkstk_darwin(v15);
  v100 = v84 - v16;
  __chkstk_darwin(v17);
  v101 = v84 - v18;
  v19 = type metadata accessor for ShelfBackground();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v91 = v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v97 = v84 - v23;
  __chkstk_darwin(v24);
  v102 = v84 - v25;
  __chkstk_darwin(v26);
  v28 = v84 - v27;
  __chkstk_darwin(v29);
  v31 = v84 - v30;
  v32 = *(v2 + 16);
  v33 = *(v2 + 88);
  v104 = v3;
  v34 = *(v3 + 96);
  ObjectType = swift_getObjectType();
  if (v32 >= dispatch thunk of ShelfPresenter.sectionCount.getter())
  {
    return;
  }

  v90 = v32;
  dispatch thunk of ShelfPresenter.background(for:)();
  (*(v20 + 104))(v28, enum case for ShelfBackground.interactive(_:), v19);
  v36 = static ShelfBackground.== infix(_:_:)();
  v92 = v20;
  v37 = *(v20 + 8);
  v37(v28, v19);
  v88 = v20 + 8;
  v87 = v37;
  v37(v31, v19);
  if ((v36 & 1) == 0)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v39 = Strong;
  v84[3] = ObjectType;
  v84[2] = v33;
  v84[1] = v34;
  v85 = v19;
  v40 = *(v104 + 32);

  v105[0] = sub_1002B6EA8(v41);
  sub_100439620(v105);
  v42 = v105[0];
  v89 = v9;
  if (v105[0] < 0 || (v105[0] & 0x4000000000000000) != 0)
  {
LABEL_41:
    v43 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v43 = *(v105[0] + 16);
  }

  v86 = v39;
  if (v43)
  {
    if (v43 < 1)
    {
      goto LABEL_43;
    }

    v44 = 0;
    v96 = (v103 + 8);
    v84[0] = v103 + 32;
    v45 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v39 = *(v42 + 8 * v44 + 32);
        swift_unknownObjectRetain();
      }

      if ([v39 representedElementCategory])
      {
        goto LABEL_21;
      }

      [v39 frame];
      v46 = CGRectGetMinX(v106) - *(v104 + 64) - a2;
      [v39 frame];
      v47 = CGRectGetMaxX(v107) - a2;
      if (v46 > v47)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v46 > v40 || v40 >= v47)
      {
        goto LABEL_21;
      }

      v48 = v45;
      v49 = [v39 indexPath];
      v50 = v101;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v51 = IndexPath.item.getter();
      (*v96)(v50, v89);
      v52 = *(v104 + 56);
      if (!v52)
      {
        goto LABEL_40;
      }

      v45 = v48;
      if (v51 == 0x8000000000000000 && v52 == -1)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);

        __break(1u);
        return;
      }

      if (v51 % v52)
      {
LABEL_21:
        swift_unknownObjectRelease();
      }

      else
      {
        v53 = [v39 indexPath];
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_10003421C(0, v48[2] + 1, 1, v48);
        }

        v55 = v45[2];
        v54 = v45[3];
        if (v55 >= v54 >> 1)
        {
          v45 = sub_10003421C((v54 > 1), v55 + 1, 1, v45);
        }

        swift_unknownObjectRelease();
        v45[2] = v55 + 1;
        (*(v103 + 32))(v45 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v55, v100, v89);
      }

      if (v43 == ++v44)
      {
        goto LABEL_30;
      }
    }
  }

  v45 = _swiftEmptyArrayStorage;
LABEL_30:

  if (v45[2])
  {
    v56 = v103;
    v57 = v45 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v58 = v95;
    v59 = v89;
    v101 = *(v103 + 16);
    (v101)(v95, v57, v89);

    v60 = v99;
    (*(v56 + 32))(v99, v58, v59);
    if (__OFADD__(IndexPath.item.getter(), *(v104 + 56)))
    {
      goto LABEL_44;
    }

    IndexPath.init(item:section:)();
    dispatch thunk of ShelfPresenter.interactiveShelfBackground(at:)();
    v61 = v97;
    dispatch thunk of ShelfPresenter.interactiveShelfBackground(at:)();
    v62 = v92;
    v63 = *(v92 + 16);
    v64 = v91;
    v65 = v85;
    v63(v91, v61, v85);
    LODWORD(v62) = (*(v62 + 88))(v64, v65);
    v66 = enum case for ShelfBackground.none(_:);
    v87(v64, v65);
    v67 = 1.0;
    if (v62 != v66)
    {
      v68 = *(v104 + 64);
      v69 = [v86 collectionViewLayout];
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v71 = [v69 layoutAttributesForItemAtIndexPath:isa];

      v60 = v99;
      if (v71)
      {
        [v71 frame];
        v72 = CGRectGetMinX(v108) - v40 - a2;
        [v71 frame];
        Width = CGRectGetWidth(v109);

        v67 = (v72 + v68 + Width) / (v68 + Width);
        if (v67 >= 1.0)
        {
          v67 = 1.0;
        }
      }
    }

    v74 = v93;
    v75 = v85;
    v63(v93, v102, v85);
    v76 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
    v77 = v89;
    (v101)(v74 + v76[6], v60, v89);
    v78 = v97;
    v63((v74 + v76[7]), v97, v75);
    *(v74 + v76[5]) = v67;
    (*(*(v76 - 1) + 56))(v74, 0, 1, v76);
    v79 = OBJC_IVAR____TtC8AppStore45InteractiveSectionBackgroundScrollCoordinator_currentState;
    v80 = v104;
    swift_beginAccess();
    v81 = v94;
    sub_100031660(v80 + v79, v94, &qword_10097E110, qword_1007C5430);
    swift_beginAccess();
    sub_1002B80FC(v74, v80 + v79);
    swift_endAccess();
    sub_1004387E0(v81);

    sub_10002B894(v81, &qword_10097E110, qword_1007C5430);
    sub_10002B894(v74, &qword_10097E110, qword_1007C5430);
    v82 = v87;
    v87(v78, v75);
    v82(v102, v75);
    v83 = *(v103 + 8);
    v83(v98, v77);
    v83(v60, v77);
  }

  else
  {
  }
}

uint64_t sub_10043B2F0()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10043B608();
  v4._countAndFlagsBits = 0x4E495F4E474953;
  v4._object = 0xE700000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  localizedString(_:comment:)(v4, v5);
  (*(v1 + 104))(v3, enum case for SystemImage.personCropCircle(_:), v0);
  static SystemImage.load(_:with:)();
  (*(v1 + 8))(v3, v0);
  memset(v7, 0, sizeof(v7));
  result = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  qword_1009D0410 = result;
  return result;
}

uint64_t sub_10043B47C()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10043B608();
  v4._countAndFlagsBits = 0x54554F5F4E474953;
  v4._object = 0xE800000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  localizedString(_:comment:)(v4, v5);
  (*(v1 + 104))(v3, enum case for SystemImage.rectanglePortraitAndArrowRight(_:), v0);
  static SystemImage.load(_:with:)();
  (*(v1 + 8))(v3, v0);
  memset(v7, 0, sizeof(v7));
  result = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  qword_1009D0418 = result;
  return result;
}

unint64_t sub_10043B608()
{
  result = qword_100985950;
  if (!qword_100985950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100985950);
  }

  return result;
}

uint64_t sub_10043B654()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10043B608();
  v4._object = 0x8000000100813610;
  v4._countAndFlagsBits = 0xD000000000000022;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  localizedString(_:comment:)(v4, v5);
  (*(v1 + 104))(v3, enum case for SystemImage.appstore(_:), v0);
  static SystemImage.load(_:with:)();
  (*(v1 + 8))(v3, v0);
  memset(v7, 0, sizeof(v7));
  result = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  qword_1009D0420 = result;
  return result;
}

uint64_t sub_10043B7E4()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10043B608();
  (*(v1 + 104))(v3, enum case for SystemImage.ant(_:), v0);
  static SystemImage.load(_:with:)();
  (*(v1 + 8))(v3, v0);
  memset(v5, 0, sizeof(v5));
  result = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  qword_1009D0428 = result;
  return result;
}

uint64_t type metadata accessor for FadeOutDynamicTypeLabel(uint64_t a1)
{
  result = qword_100985968;
  if (!qword_100985968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10043BA00(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a7;
  v27 = a8;
  v25 = a5;
  v24 = a3;
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v24 - v16;
  v18 = objc_allocWithZone(v8);
  v19 = qword_100985958;
  v20 = objc_allocWithZone(type metadata accessor for InvertedGradientLayer());
  *&v18[v19] = [v20 init];
  v21 = &v18[qword_100985960];
  *v21 = 0;
  v21[8] = 1;
  sub_1003DB684(a1, v17);
  (*(v12 + 16))(v14, a6, v11);
  v22 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  (*(v12 + 8))(a6, v11);
  sub_10025BAF0(a1);
  return v22;
}

void sub_10043BBE0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LabelPlaceholder();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TextAppearance();
  v60 = *(v63 - 8);
  __chkstk_darwin(v63);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v56 - v9;
  v11 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v56 - v12;
  v14 = type metadata accessor for FontUseCase();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, "layoutSubviews", v16);
  v19 = [v1 text];
  if (!v19)
  {
    goto LABEL_4;
  }

  v20 = v19;
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (v1[qword_100985960 + 8])
  {

LABEL_4:
    v23 = [v1 layer];
    [v23 setMask:0];

    return;
  }

  v56 = v22;
  v58 = v10;
  v24 = *&v1[qword_100985960];
  dispatch thunk of DynamicTypeLabel.fontUseCase.getter();
  v25 = *(v15 + 48);
  if (v25(v13, 1, v14) == 1)
  {
    *v18 = UIFontTextStyleBody;
    *(v18 + 2) = 0;
    (*(v15 + 104))(v18, enum case for FontUseCase.preferredFont(_:), v14);
    v26 = v25(v13, 1, v14);
    v27 = UIFontTextStyleBody;
    if (v26 != 1)
    {
      sub_10025BAF0(v13);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
  }

  sub_1000367E8();
  v28 = [v1 traitCollection];
  v29 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  (*(v15 + 8))(v18, v14);
  v30 = v29;
  [v1 bounds];
  CGRectGetWidth(v65);
  TextAppearance.init()();
  v31 = v58;
  TextAppearance.withFont(_:)();
  v32 = v60;
  v33 = v63;
  v57 = *(v60 + 8);
  v57(v7, v63);
  (*(v32 + 16))(v7, v31, v33);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  v34 = [v1 traitCollection];
  LabelPlaceholder.measure(toFit:with:)();
  v36 = v35;
  v38 = v37;

  (*(v61 + 8))(v5, v62);
  [v1 bounds];
  v66.size.width = v36;
  v66.size.height = v38;
  Height = CGRectGetHeight(v66);
  [v1 bounds];
  v40 = CGRectGetHeight(v67);
  v41 = [v1 layer];
  v42 = v41;
  if (v40 <= Height)
  {
    v44 = *&v1[qword_100985958];
    [v41 setMask:v44];

    [v30 lineHeight];
    *&v44[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_lineHeight] = v45;
    *&v44[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_gradientStart] = v24 + 20.0;
    *&v44[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_gradientEnd] = v24 + -5.0;
    v46 = v30;
    v47 = v31;
    v48 = [v1 textAlignment];
    v49 = [v1 traitCollection];
    v50 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v50)
    {
      v51 = 0;
    }

    else
    {
      v51 = 2;
    }

    v52 = v48 == v51;
    v53 = [v1 traitCollection];
    v54 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if ((v54 ^ v52))
    {
      v55 = 2;
    }

    else
    {
      v55 = 3;
    }

    *&v44[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_textDirection] = v55;
    [v1 bounds];
    [v44 setFrame:?];
    [v44 setNeedsDisplay];

    v43 = v47;
  }

  else
  {
    [v41 setMask:0];

    v43 = v31;
  }

  v57(v43, v63);
}

void sub_10043C278(void *a1)
{
  v1 = a1;
  sub_10043BBE0();
}

void sub_10043C2E8(CGContext *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CGPathFillRule();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 blackColor];
  v8 = [v7 CGColor];

  CGContextSetFillColorWithColor(a1, v8);
  [v1 bounds];
  x = v42.origin.x;
  width = v42.size.width;
  v12 = v11 - *&v1[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_lineHeight];
  v37 = a1;
  v42.size.height = v12;
  CGContextFillRect(a1, v42);
  v13 = *&v1[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_textDirection];
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007B15F0;
  if (v13 == 3)
  {
    v15 = &selRef_blackColor;
  }

  else
  {
    v15 = &selRef_clearColor;
  }

  if (v13 == 3)
  {
    v16 = &selRef_clearColor;
  }

  else
  {
    v16 = &selRef_blackColor;
  }

  if (v13 == 3)
  {
    v17 = &unk_1008B0070;
  }

  else
  {
    v17 = &unk_1008B00A0;
  }

  v18 = [v6 *v15];
  v19 = [v18 CGColor];

  *(v14 + 32) = v19;
  v20 = [v6 *v16];
  v21 = [v20 CGColor];

  *(v14 + 40) = v21;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  type metadata accessor for CGColor(0);
  v38 = DeviceRGB;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v24 = CGGradientCreateWithColors(v38, isa, v17);

  if (v24)
  {
    if (v13 == 3)
    {
      [v2 bounds];
      v25 = CGRectGetMaxX(v43) - *&v2[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_gradientStart];
      [v2 bounds];
      v26 = CGRectGetMaxX(v44) - *&v2[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_gradientEnd];
      v27 = 1;
    }

    else
    {
      v25 = *&v2[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_gradientEnd];
      v26 = *&v2[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_gradientStart];
      v27 = 2;
    }

    [v2 bounds];
    v46.size.height = CGRectGetHeight(v45);
    v29 = v37;
    v46.origin.x = x;
    v46.origin.y = v12;
    v46.size.width = width;
    CGContextAddRect(v37, v46);
    v31 = v34;
    v30 = v35;
    v32 = v36;
    (*(v35 + 104))(v34, enum case for CGPathFillRule.winding(_:), v36);
    CGContextRef.clip(using:)();
    (*(v30 + 8))(v31, v32);
    v40.y = 0.5;
    v41.y = 0.5;
    v40.x = v25;
    v41.x = v26;
    CGContextDrawLinearGradient(v29, v24, v40, v41, v27);
  }

  else
  {
    v28 = v38;
  }
}

id sub_10043C89C(void *a1)
{
  *&v1[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_lineHeight] = 0;
  *&v1[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_gradientStart] = 0;
  *&v1[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_gradientEnd] = 0;
  *&v1[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_textDirection] = 3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InvertedGradientLayer();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10043C964()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InvertedGradientLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10043C9C0()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_100005644(v4, qword_1009D0440);
  sub_1000056A8(v4, qword_1009D0440);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

double sub_10043CB60(uint64_t a1)
{
  v2 = objc_opt_self();
  [v2 setFlushTimerEnabled:1];
  [v2 setDisableBackgroundMetrics:0];
  if (*(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph))
  {
    type metadata accessor for AccountDeviceList();
    type metadata accessor for BaseObjectGraph();

    inject<A, B>(_:from:)();
    dispatch thunk of AccountDeviceList.allowFetches.setter();
  }

  return result;
}

void sub_10043CC28(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ReferrerData();
  v4 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100985B10, qword_1007C69E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for AppStoreDeepLink();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1001AF824(sub_1004438F8, v14);

  v15 = OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph;
  if (*(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph))
  {
    type metadata accessor for ASKBagContract();

    BaseObjectGraph.optional<A>(_:)();

    if (v26)
    {
      static ResilientDeepLinkController.fetchLatestResilientDeepLink(bag:)();
      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        (*(v11 + 32))(v13, v9, v10);
        type metadata accessor for MetricsActivity();
        v21 = v11;
        static MetricsActivity.current.getter();
        AppStoreDeepLink.referral.getter();
        dispatch thunk of MetricsActivity.setReferrerData(_:)();

        v20 = *(v4 + 8);
        v16 = v22;
        v20(v6, v22);
        v17 = v23;
        AppStoreDeepLink.url.getter();
        AppStoreDeepLink.referral.getter();
        sub_10043D93C(v17, v6);

        v20(v6, v16);
        (*(v24 + 8))(v17, v25);
        (*(v21 + 8))(v13, v10);
        if (!*(a1 + v15))
        {
          return;
        }

LABEL_8:
        type metadata accessor for UnifiedTabBadgingManager();

        BaseObjectGraph.optional<A>(_:)();

        v18 = v26;
        if (v26)
        {
          UnifiedTabBadgingManager.fetchInitalBadgesToDisplayPostLaunch()();
        }

        return;
      }

      sub_10002B894(v9, &qword_100985B10, qword_1007C69E8);
    }

    if (!*(a1 + v15))
    {
      return;
    }

    goto LABEL_8;
  }
}

double sub_10043D058(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
    v3 = Strong;

    if (v2)
    {
      type metadata accessor for ASKBagContract();
      BaseObjectGraph.inject<A>(_:)();
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
    v6 = v4;

    if (v5)
    {
      type metadata accessor for SheetEngagementManager();
      BaseObjectGraph.inject<A>(_:)();

      SheetEngagementManager.requestAppLaunchSheet(bag:)();
    }
  }

  return result;
}

double sub_10043D160(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph))
  {
    v2 = OBJC_IVAR____TtC8AppStore11AppDelegate_isOnboardingFinished;
    if (*(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_isOnboardingFinished))
    {
      type metadata accessor for ASKBagContract();
      type metadata accessor for BaseObjectGraph();

      inject<A, B>(_:from:)();
      sub_10061E708(v6, 0);
      sub_10002849C(&unk_10097A950, &qword_1007B1320);
      v3 = Array.isNotEmpty.getter();

      if (v3)
      {
        *(a1 + v2) = 0;
      }
    }

    else
    {
    }

    sub_100007D1C(0);
  }

  else
  {
    if (qword_10096DC28 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for OSLogger();
    sub_1000056A8(v4, qword_1009D0440);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();
  }

  return result;
}

uint64_t sub_10043D394(uint64_t a1)
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1001AF824(sub_1004438BC, v1);
}

double sub_10043D408(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
    v3 = Strong;

    if (v2)
    {
      type metadata accessor for ASKBagContract();
      BaseObjectGraph.optional<A>(_:)();
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
    v6 = v4;

    if (v5)
    {
      type metadata accessor for SheetEngagementManager();
      BaseObjectGraph.inject<A>(_:)();

      SheetEngagementManager.requestAppLaunchSheet(bag:)();
    }
  }

  return result;
}

double sub_10043D570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEnterMetricsEvent.EnterKind();
  v5 = *(v4 - 8);
  *&result = __chkstk_darwin(v4).n128_u64[0];
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
  if (v9)
  {

    sub_100181084(a2, v9, v10);
    type metadata accessor for InAppMessagesManager();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v11 = *(v15 + 16);
    v12 = [objc_allocWithZone(IAMApplicationDidBecomeActiveEvent) init];
    [v11 receiveEvent:v12];

    (*(v5 + 104))(v8, enum case for AppEnterMetricsEvent.EnterKind.taskSwitch(_:), v4);
    sub_100005E5C(&qword_100985B28, 255, &type metadata accessor for AppEnterMetricsEvent.EnterKind, &protocol conformance descriptor for AppEnterMetricsEvent.EnterKind);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v15 == v14[0] && v16 == v14[1])
    {
      (*(v5 + 8))(v8, v4);
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v5 + 8))(v8, v4);

      if ((v13 & 1) == 0)
      {
LABEL_7:

        return result;
      }
    }

    type metadata accessor for AppStoreEngagementManager();
    inject<A, B>(_:from:)();
    AppStoreEngagementManager.refreshBadgeIdentifiers(completion:)();

    goto LABEL_7;
  }

  return result;
}

void sub_10043D824(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
  if (v1)
  {
    v2 = objc_opt_self();

    v3 = [v2 sharedApplication];
    sub_100181348(v1, v3);
  }
}

void sub_10043D93C(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v52 = v38 - v5;
  v50 = type metadata accessor for FlowPresentationContext();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowOrigin();
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v49 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowAnimationBehavior();
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v46 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v12 - 8);
  v41 = v38 - v13;
  v14 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v14 - 8);
  v16 = v38 - v15;
  v17 = type metadata accessor for FlowPage();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for NavigationTab();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100583898(a1))
  {

    sub_10043F4D8();
  }

  else
  {
    v25 = *(v2 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
    if (v25)
    {
      v40 = a1;
      type metadata accessor for ASKBagContract();

      v39 = v25;
      BaseObjectGraph.optional<A>(_:)();
      if (v55)
      {
        static ResilientDeepLinkController.removeNonResilientDeepLinks(bag:)();
      }

      v26 = *(v22 + 104);
      v38[1] = v24;
      v26(v24, enum case for NavigationTab.loading(_:), v21);
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1007B0B70;
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
      (*(v18 + 104))(v20, enum case for FlowPage.unknown(_:), v17);
      v28 = type metadata accessor for URL();
      v29 = *(v28 - 8);
      (*(v29 + 16))(v16, v40, v28);
      (*(v29 + 56))(v16, 0, 1, v28);
      v30 = type metadata accessor for ReferrerData();
      v31 = *(v30 - 8);
      v32 = v41;
      (*(v31 + 16))(v41, v47, v30);
      (*(v31 + 56))(v32, 0, 1, v30);
      v53 = 0u;
      v54 = 0u;
      static ActionMetrics.notInstrumented.getter();
      (*(v42 + 104))(v46, enum case for FlowAnimationBehavior.never(_:), v43);
      (*(v44 + 104))(v49, enum case for FlowOrigin.external(_:), v45);
      (*(v48 + 104))(v51, enum case for FlowPresentationContext.infer(_:), v50);
      static FlowActionPresentation.stackPush.getter();
      type metadata accessor for FlowAction();
      swift_allocObject();
      *(v27 + 32) = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
      static ActionMetrics.notInstrumented.getter();
      type metadata accessor for TabChangeAction();
      swift_allocObject();
      v33 = TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)();
      v34 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      v35 = v52;
      v36 = v39;
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v37 = *(v34 - 8);
      if ((*(v37 + 48))(v35, 1, v34) == 1)
      {

        sub_10002B894(v35, &unk_100972A00, &unk_1007B3130);
      }

      else
      {
        sub_1005FA0E4(v33, 1, v36, v35);

        (*(v37 + 8))(v35, v34);
      }
    }
  }
}

uint64_t sub_10043E15C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ReferrerData();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  AppStoreDeepLink.referral.getter();
  dispatch thunk of MetricsActivity.setReferrerData(_:)();

  v8 = *(v5 + 8);
  v8(v7, v4);
  AppStoreDeepLink.url.getter();
  AppStoreDeepLink.referral.getter();
  sub_10043D93C(v3, v7);
  v8(v7, v4);
  return (*(v1 + 8))(v3, v0);
}

double sub_10043E4AC(uint64_t a1, void *a2, double result)
{
  v3 = *(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
  if (v3)
  {

    if (_sSo14NSUserActivityC8AppStoreE6handle04userB08asPartOfSbAB_9JetEngine15BaseObjectGraphCtFZ_0(a2, v3))
    {
      if (qword_10096D110 != -1)
      {
        swift_once();
      }
    }

    else if (qword_10096D110 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for OSLogger();
    sub_1000056A8(v5, qword_1009CE1E8);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    v8[3] = sub_100005744(0, &qword_100985B18, NSUserActivity_ptr);
    v8[0] = a2;
    v6 = a2;
    static LogMessage.traceableSensitive(_:)();
    sub_10002B894(v8, &unk_1009711D0, &unk_1007B1A10);
    Logger.error(_:)();
  }

  return v7;
}

uint64_t sub_10043E820(uint64_t a1, void *a2, uint64_t (*a3)(void, __n128))
{
  v6 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  if (!*(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_quickActionsController))
  {
    return a3(0, v7);
  }

  v10 = sub_1001BBB38(a2);

  if (!v10)
  {
    return a3(0, v7);
  }

  v11 = *(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
  if (!v11)
  {

    return a3(0, v7);
  }

  v12 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);

  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {

    return sub_10002B894(v9, &unk_100972A00, &unk_1007B3130);
  }

  else
  {
    sub_1005F9AF4(v10, 1, v11, v9);

    return (*(v13 + 8))(v9, v12);
  }
}

void sub_10043EAB4(uint64_t a1)
{
  v1 = ASKBuildTypeGetCurrent();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    goto LABEL_15;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_6:

    goto LABEL_16;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {
LABEL_15:

LABEL_16:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      sub_10043F4D8();
    }

    return;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      return;
    }
  }

  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  if (qword_10096E988 != -1)
  {
    swift_once();
  }

  v21 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  sub_1000056A8(v21, qword_1009D2A68);
  Preferences.subscript.getter();

  if (v22 != 2 && (v22 & 1) != 0)
  {
    goto LABEL_16;
  }
}

uint64_t sub_10043ED24()
{
  v1 = v0;
  v2 = type metadata accessor for BootstrapPhase();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096DC28 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for OSLogger();
  sub_1000056A8(v6, qword_1009D0440);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  *&v0[OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph] = 0;

  v7 = &v0[OBJC_IVAR____TtC8AppStore11AppDelegate_pptViewHierarchyProxy];
  v8 = *&v0[OBJC_IVAR____TtC8AppStore11AppDelegate_pptViewHierarchyProxy];
  *v7 = 0;
  *(v7 + 1) = 0;
  sub_100442854(v8);
  v9 = *&v0[OBJC_IVAR____TtC8AppStore11AppDelegate_tabBarController];
  *&v0[OBJC_IVAR____TtC8AppStore11AppDelegate_tabBarController] = 0;

  *&v0[OBJC_IVAR____TtC8AppStore11AppDelegate_freshnessWatchdog] = 0;

  v10 = OBJC_IVAR____TtC8AppStore11AppDelegate_isOnboardingFinished;
  v0[OBJC_IVAR____TtC8AppStore11AppDelegate_isOnboardingFinished] = 0;
  v0[OBJC_IVAR____TtC8AppStore11AppDelegate_isPresentingContentFinished] = 0;
  v11 = *&v0[OBJC_IVAR____TtC8AppStore11AppDelegate_window];
  if (v11)
  {
    v12 = v11;
    v13 = sub_100004B24();
    [v12 setRootViewController:v13];
  }

  *(swift_allocObject() + 16) = v1;
  v14 = enum case for BootstrapPhase.onboarding(_:);
  v20 = *(v3 + 104);
  v20(v5, enum case for BootstrapPhase.onboarding(_:), v2);
  v15 = v1;
  v19 = v10;
  v16 = v15;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  v17 = *(v3 + 8);
  v17(v5, v2);
  *(swift_allocObject() + 16) = v16;
  v20(v5, v14, v2);
  v16;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  v17(v5, v2);
  return sub_100007D1C(0);
}

double sub_10043F13C(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph;
  if (*(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph))
  {

    v4 = sub_100411AA4(v3);

    *(a1 + v1) = v4;
  }

  else
  {
    if (qword_10096DC28 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for OSLogger();
    sub_1000056A8(v6, qword_1009D0440);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();
  }

  return result;
}

void sub_10043F2D4(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph))
  {
    sub_10002849C(&unk_100989C70, &qword_1007D3160);

    BaseObjectGraph.optional<A>(_:)();

    if (v2)
    {
      v1 = [v2 fetchMediaToken];
      swift_unknownObjectRelease();
    }
  }
}

void sub_10043F370()
{
  if (*(v0 + OBJC_IVAR____TtC8AppStore11AppDelegate_isOnboardingFinished) == 1 && *(v0 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph))
  {
    sub_10002849C(&unk_100989C70, &qword_1007D3160);

    BaseObjectGraph.optional<A>(_:)();

    if (v2)
    {
      v1 = [v2 fetchMediaToken];
      swift_unknownObjectRelease();
    }
  }
}

void sub_10043F4D8()
{
  v0 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v0 - 8);
  v52 = &v42 - v1;
  v50 = type metadata accessor for FlowOrigin();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FlowAnimationBehavior();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FlowPresentationContext();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - v12;
  v14 = type metadata accessor for FlowPage();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = ASKBuildTypeGetCurrent();
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {
    goto LABEL_3;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_5;
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {
LABEL_3:

    goto LABEL_6;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
LABEL_5:

LABEL_6:
    v24 = *(v53 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
    if (v24)
    {
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      (*(v15 + 104))(v17, enum case for FlowPage.debugSettings(_:), v14);
      v25 = type metadata accessor for URL();
      (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
      v26 = type metadata accessor for ReferrerData();
      (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
      v54 = 0u;
      v55 = 0u;

      static ActionMetrics.notInstrumented.getter();
      (*(v43 + 104))(v47, enum case for FlowPresentationContext.presentModalFormSheet(_:), v44);
      (*(v45 + 104))(v49, enum case for FlowAnimationBehavior.infer(_:), v46);
      (*(v48 + 104))(v51, enum case for FlowOrigin.inapp(_:), v50);
      static FlowActionPresentation.stackPush.getter();
      type metadata accessor for FlowAction();
      swift_allocObject();
      v27 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
      v28 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      v29 = v52;
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v30 = *(v28 - 8);
      if ((*(v30 + 48))(v29, 1, v28) == 1)
      {

        sub_10002B894(v29, &unk_100972A00, &unk_1007B3130);
      }

      else
      {
        sub_1005F9C8C(v27, 1, v24, v29);

        (*(v30 + 8))(v29, v28);
      }
    }

    return;
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;
  if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
  {
  }

  else
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v40 & 1) == 0)
    {
      return;
    }
  }

  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  if (qword_10096E988 != -1)
  {
    swift_once();
  }

  v41 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  sub_1000056A8(v41, qword_1009D2A68);
  Preferences.subscript.getter();

  if (v56 != 2 && (v56 & 1) != 0)
  {
    goto LABEL_6;
  }
}

double sub_10043FCF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for OSSignpostError();
  v32 = *(v10 - 8);
  v33 = v10;
  __chkstk_darwin(v10);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for OSSignpostID();
  v35 = *(v13 - 8);
  v36 = v13;
  __chkstk_darwin(v13);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = type metadata accessor for OSSignposter();
  v16 = *(v34 - 8);
  __chkstk_darwin(v34);
  v18 = &v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v5 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph) = a4;

  v19 = *(v5 + OBJC_IVAR____TtC8AppStore11AppDelegate_tabBarController);
  *(v5 + OBJC_IVAR____TtC8AppStore11AppDelegate_tabBarController) = a1;
  v20 = a1;

  *(v5 + OBJC_IVAR____TtC8AppStore11AppDelegate_quickActionsController) = a2;

  *(v5 + OBJC_IVAR____TtC8AppStore11AppDelegate_freshnessWatchdog) = a3;

  v22 = OBJC_IVAR____TtC8AppStore11AppDelegate_didCreateState;
  if (*(v5 + OBJC_IVAR____TtC8AppStore11AppDelegate_didCreateState))
  {

    static Signposter.startup.getter();
    v23 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v24 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v31 = v24;

      checkForErrorAndConsumeState(state:)();

      v26 = v32;
      v25 = v33;
      if ((*(v32 + 88))(v12, v33) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v27 = "[Error] Interval already ended";
      }

      else
      {
        (*(v26 + 8))(v12, v25);
        v27 = "";
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, v31, v29, "StoreBootstrap", v27, v28, 2u);
    }

    (*(v35 + 8))(v15, v36);
    (*(v16 + 8))(v18, v34);
    *(v5 + v22) = 0;
  }

  return result;
}

void sub_100440094(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v2 - 8);
  v47 = &v35 - v3;
  v45 = type metadata accessor for FlowOrigin();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v46 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FlowAnimationBehavior();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v44 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for FlowPresentationContext();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v42 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v8 - 8);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v10 - 8);
  v38 = &v35 - v11;
  v12 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for FlowPage();
  v35 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096DA10 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_12:
    v25 = *(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
    if (v25)
    {
      type metadata accessor for ASKBagContract();
      type metadata accessor for BaseObjectGraph();

      inject<A, B>(_:from:)();
      sub_10061E708(v51, 0);
      sub_10002849C(&unk_10097A950, &qword_1007B1320);
      v26 = Array.isNotEmpty.getter();

      if (v26)
      {
        v27 = [objc_opt_self() sharedApplication];
        v28 = [v27 launchedToTest];

        if ((v28 & 1) == 0)
        {
          v53 = 0;
          v51 = 0u;
          v52 = 0u;
          (*(v35 + 104))(v17, enum case for FlowPage.onboarding(_:), v15);
          v29 = type metadata accessor for URL();
          (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
          v30 = type metadata accessor for ReferrerData();
          (*(*(v30 - 8) + 56))(v38, 1, 1, v30);
          v50 = &type metadata for OnboardingConfiguration;
          v49[0] = 0;
          static ActionMetrics.notInstrumented.getter();
          (*(v36 + 104))(v42, enum case for FlowPresentationContext.infer(_:), v37);
          (*(v40 + 104))(v44, enum case for FlowAnimationBehavior.infer(_:), v41);
          (*(v43 + 104))(v46, enum case for FlowOrigin.inapp(_:), v45);
          static FlowActionPresentation.stackPush.getter();
          type metadata accessor for FlowAction();
          swift_allocObject();
          v31 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
          v32 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
          v33 = v47;
          BaseObjectGraph.injectIfAvailable<A>(_:)();
          v34 = *(v32 - 8);
          if ((*(v34 + 48))(v33, 1, v32) == 1)
          {

            sub_10002B894(v33, &unk_100972A00, &unk_1007B3130);
          }

          else
          {
            sub_1005F9C8C(v31, 1, v25, v33);

            (*(v34 + 8))(v33, v32);
          }

          return;
        }
      }
    }

    sub_10044089C();
    return;
  }

  while (1)
  {
    v48 = Strong;
    v20 = [Strong viewIfLoaded];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 window];

      if (v22)
      {
        v23 = [v22 isHidden];

        if ((v23 & 1) == 0)
        {
          break;
        }
      }
    }

    v19 = [v48 presentedViewController];

    Strong = v19;
    if (!v19)
    {
      goto LABEL_12;
    }
  }

  v24 = v48;
}

uint64_t sub_10044089C()
{
  v1 = v0;
  v2 = type metadata accessor for BootstrapPhase();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  v12 = *(v7 + 8);
  v11 = (v7 + 8);
  v12(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = *(v1 + OBJC_IVAR____TtC8AppStore11AppDelegate_bootstrapPendingClosuresHandler);
  v9 = enum case for BootstrapPhase.onboarding(_:);
  v19 = *(v3 + 104);
  v19(v5, enum case for BootstrapPhase.onboarding(_:), v2);
  v14 = BootstrapPendingClosuresHandler.hasClosures(pending:)();
  v11 = *(v3 + 8);
  result = v11(v5, v2);
  v6 = OBJC_IVAR____TtC8AppStore11AppDelegate_isOnboardingFinished;
  if (*(v1 + OBJC_IVAR____TtC8AppStore11AppDelegate_isOnboardingFinished) != 1 || (v14 & 1) != 0)
  {
    v17[1] = v13;
    v18 = v1;
    if (qword_10096DC28 == -1)
    {
LABEL_5:
      v16 = type metadata accessor for OSLogger();
      v17[0] = sub_1000056A8(v16, qword_1009D0440);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      *(v18 + v6) = 1;
      v19(v5, v9, v2);
      BootstrapPendingClosuresHandler.didComplete(bootstrapPhase:)();
      return v11(v5, v2);
    }

LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  return result;
}

void sub_100440C28()
{
  v0 = type metadata accessor for OSSignpostError();
  v57 = *(v0 - 8);
  v58 = v0;
  __chkstk_darwin(v0);
  v56 = &v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = type metadata accessor for OSSignpostID();
  v62 = *(v66 - 8);
  __chkstk_darwin(v66);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v55 - v8;
  __chkstk_darwin(v10);
  v12 = &v55 - v11;
  v13 = type metadata accessor for OSSignposter();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v59 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v55 - v17;
  __chkstk_darwin(v19);
  v21 = &v55 - v20;
  static Signposter.startup.getter();
  static Signposter.startup.getter();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v22 = *(v14 + 8);
  v64 = v14 + 8;
  v65 = v13;
  v63 = v22;
  v22(v18, v13);
  v23 = OSSignposter.logHandle.getter();
  v24 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, v24, v26, "PresentContent", "", v25, 2u);
  }

  v27 = v62;
  v28 = v66;
  (*(v62 + 16))(v9, v12, v66);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v29 = *(v27 + 8);
  v29(v12, v28);
  v63(v21, v65);
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v30 = v61;
  v31 = *(v61 + OBJC_IVAR____TtC8AppStore11AppDelegate_tabBarController);
  if (!v31)
  {
    if (qword_10096DC28 == -1)
    {
LABEL_10:
      v47 = type metadata accessor for OSLogger();
      sub_1000056A8(v47, qword_1009D0440);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

LABEL_14:

      return;
    }

LABEL_20:
    swift_once();
    goto LABEL_10;
  }

  if (!*(v61 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph))
  {
    v48 = qword_10096DC28;
    v49 = v31;
    if (v48 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for OSLogger();
    sub_1000056A8(v50, qword_1009D0440);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    goto LABEL_14;
  }

  v32 = v31;

  sub_1001F3A9C(v33);
  v34 = objc_allocWithZone(type metadata accessor for MenuBarManager());
  v35 = v32;

  v37 = sub_100685788(v36, v35);
  v38 = *(v30 + OBJC_IVAR____TtC8AppStore11AppDelegate_menuBarManager);
  *(v30 + OBJC_IVAR____TtC8AppStore11AppDelegate_menuBarManager) = v37;

  sub_1004414EC();
  v39 = v59;
  static Signposter.startup.getter();
  v40 = OSSignposter.logHandle.getter();
  v41 = v60;
  OSSignpostIntervalState.signpostID.getter();
  v42 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    v43 = v56;
    checkForErrorAndConsumeState(state:)();

    v45 = v57;
    v44 = v58;
    if ((*(v57 + 88))(v43, v58) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v46 = "[Error] Interval already ended";
    }

    else
    {
      (*(v45 + 8))(v43, v44);
      v46 = "";
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = v60;
    v54 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, v42, v54, "PresentContent", v46, v52, 2u);

    v29(v53, v66);
    v51 = v59;
  }

  else
  {

    v29(v41, v66);
    v51 = v39;
  }

  v63(v51, v65);
}

uint64_t sub_1004414EC()
{
  v1 = v0;
  v2 = type metadata accessor for BootstrapPhase();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  v12 = *(v7 + 8);
  v11 = (v7 + 8);
  v12(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = *(v1 + OBJC_IVAR____TtC8AppStore11AppDelegate_bootstrapPendingClosuresHandler);
  v9 = enum case for BootstrapPhase.presentingContent(_:);
  v19 = *(v3 + 104);
  v19(v5, enum case for BootstrapPhase.presentingContent(_:), v2);
  v14 = BootstrapPendingClosuresHandler.hasClosures(pending:)();
  v11 = *(v3 + 8);
  result = v11(v5, v2);
  v6 = OBJC_IVAR____TtC8AppStore11AppDelegate_isPresentingContentFinished;
  if (*(v1 + OBJC_IVAR____TtC8AppStore11AppDelegate_isPresentingContentFinished) != 1 || (v14 & 1) != 0)
  {
    v17[1] = v13;
    v18 = v1;
    if (qword_10096DC28 == -1)
    {
LABEL_5:
      v16 = type metadata accessor for OSLogger();
      v17[0] = sub_1000056A8(v16, qword_1009D0440);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      *(v18 + v6) = 1;
      v19(v5, v9, v2);
      BootstrapPendingClosuresHandler.didComplete(bootstrapPhase:)();
      return v11(v5, v2);
    }

LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  return result;
}

void sub_100441A34(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v2 - 8);
  v36 = &v31 - v3;
  v4 = type metadata accessor for FlowOrigin();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for FlowAnimationBehavior();
  v6 = *(v32 - 8);
  __chkstk_darwin(v32);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowPresentationContext();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v14 - 8);
  v16 = &v31 - v15;
  v17 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v17 - 8);
  v19 = &v31 - v18;
  v20 = type metadata accessor for FlowPage();
  __chkstk_darwin(v20);
  v23 = *(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
  if (v23)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    (*(v22 + 104))(&v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.notificationSettings(_:));
    v24 = type metadata accessor for URL();
    (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
    v25 = type metadata accessor for ReferrerData();
    (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
    v37 = 0u;
    v38 = 0u;

    static ActionMetrics.notInstrumented.getter();
    (*(v10 + 104))(v12, enum case for FlowPresentationContext.presentModalFormSheet(_:), v9);
    (*(v6 + 104))(v8, enum case for FlowAnimationBehavior.infer(_:), v32);
    (*(v33 + 104))(v35, enum case for FlowOrigin.inapp(_:), v34);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v26 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    v27 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    v28 = v36;
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v29 = *(v27 - 8);
    if ((*(v29 + 48))(v28, 1, v27) == 1)
    {

      sub_10002B894(v28, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      sub_1005F9C8C(v26, 1, v23, v28);

      (*(v29 + 8))(v28, v27);
    }
  }

  else
  {
    if (qword_10096DC28 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for OSLogger();
    sub_1000056A8(v30, qword_1009D0440);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();
  }
}

void sub_1004422E0(void *a1)
{
  v2 = v1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for AppDelegate();
  objc_msgSendSuper2(&v9, "buildMenuWithBuilder:", a1);
  sub_100005744(0, &qword_100985B08, UIMenuSystem_ptr);
  swift_getObjectType();
  v4 = [a1 system];
  v5 = [objc_opt_self() mainSystem];
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    sub_1003DB6F4();
    v7 = *&v2[OBJC_IVAR____TtC8AppStore11AppDelegate_menuBarManager];
    if (v7)
    {
      v8 = v7;
      sub_100684878(a1);
    }
  }
}

uint64_t sub_100442460(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC8AppStore11AppDelegate_menuBarManager];
  if (v6)
  {
    v7 = v6;
    v8 = sub_100685654(a1);

    if (!v8)
    {
      return 1;
    }

    if (v8 == 1)
    {
      return 0;
    }
  }

  sub_10006C234(a2, v20);
  v10 = v21;
  if (v21)
  {
    v11 = sub_10002A400(v20, v21);
    v12 = *(v10 - 8);
    v13 = __chkstk_darwin(v11);
    v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v12 + 8))(v15, v10);
    sub_100007000(v20);
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for AppDelegate();
  v19.receiver = v3;
  v19.super_class = v17;
  v18 = objc_msgSendSuper2(&v19, "canPerformAction:withSender:", a1, v16);
  swift_unknownObjectRelease();
  return v18;
}

id sub_1004426A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004427B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = [objc_opt_self() sharedApplication];
  [v4 setNetworkActivityIndicatorVisible:a3 & 1];
}

double sub_100442854(void *a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_10044290C()
{
  v1 = type metadata accessor for BootstrapPhase();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC8AppStore11AppDelegate_appHasBeenInBackground] == 1 && *&v0[OBJC_IVAR____TtC8AppStore11AppDelegate_freshnessWatchdog])
  {

    JSFreshnessWatchdog.willEnterForeground()();
  }

  *(swift_allocObject() + 16) = v0;
  v5 = *(v2 + 104);
  v5(v4, enum case for BootstrapPhase.initialBootstrap(_:), v1);
  v6 = v0;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  v7 = *(v2 + 8);
  v7(v4, v1);
  *(swift_allocObject() + 16) = v6;
  v5(v4, enum case for BootstrapPhase.presentingContent(_:), v1);
  v8 = v6;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  return (v7)(v4, v1);
}

void sub_100442B6C()
{
  v1 = type metadata accessor for BootstrapPhase();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = v0;
  (*(v2 + 104))(v4, enum case for BootstrapPhase.presentingContent(_:), v1);
  v5 = v0;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  (*(v2 + 8))(v4, v1);
  if (v5[OBJC_IVAR____TtC8AppStore11AppDelegate_terminateWhenInBackground] == 1)
  {
    v6 = [objc_opt_self() sharedApplication];
    [v6 terminateWithSuccess];
  }

  v5[OBJC_IVAR____TtC8AppStore11AppDelegate_appHasBeenInBackground] = 1;
}

uint64_t sub_100442D30(char *a1, uint64_t a2)
{
  v3 = v2;
  v43 = a2;
  v5 = type metadata accessor for BootstrapPhase();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReferrerData();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v37 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for AppStoreDeepLink();
  v14 = *(v44 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v44);
  v40 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v37 - v17;
  v45 = a1;
  v19 = URL.scheme.getter();
  if (!v20)
  {
    goto LABEL_19;
  }

  if (v19 == 1953719668 && v20 == 0xE400000000000000)
  {

    return 0;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if ((v22 & 1) == 0)
  {
LABEL_19:
    if (v3[OBJC_IVAR____TtC8AppStore11AppDelegate_appHasBeenInBackground] == 1 && *&v3[OBJC_IVAR____TtC8AppStore11AppDelegate_freshnessWatchdog])
    {

      JSFreshnessWatchdog.willEnterForeground()();
    }

    (*(v11 + 16))(v13, v45, v10);

    AppStoreDeepLink.init(url:urlOptions:)();
    v23 = OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph;
    if (*&v3[OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph])
    {
      type metadata accessor for ASKBagContract();

      BaseObjectGraph.optional<A>(_:)();
    }

    static ResilientDeepLinkController.storeDeepLink(_:bag:)();

    if (v3[OBJC_IVAR____TtC8AppStore11AppDelegate_isPresentingContentFinished] == 1 && *&v3[v23] && *&v3[OBJC_IVAR____TtC8AppStore11AppDelegate_tabBarController])
    {
      type metadata accessor for MetricsActivity();
      static MetricsActivity.current.getter();
      v24 = v37;
      AppStoreDeepLink.referral.getter();
      dispatch thunk of MetricsActivity.setReferrerData(_:)();

      v25 = v39;
      v26 = *(v38 + 8);
      v26(v24, v39);
      AppStoreDeepLink.referral.getter();
      sub_10043D93C(v45, v24);
      v26(v24, v25);
      (*(v14 + 8))(v18, v44);
    }

    else
    {
      v27 = *(v14 + 16);
      v28 = v40;
      v29 = v18;
      v45 = v18;
      v30 = v44;
      v27(v40, v29, v44);
      v31 = (*(v14 + 80) + 16) & ~*(v14 + 80);
      v32 = (v15 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
      v33 = swift_allocObject();
      (*(v14 + 32))(v33 + v31, v28, v30);
      *(v33 + v32) = v3;
      v35 = v41;
      v34 = v42;
      (*(v41 + 104))(v7, enum case for BootstrapPhase.presentingContent(_:), v42);
      v36 = v3;
      BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

      (*(v35 + 8))(v7, v34);
      (*(v14 + 8))(v45, v30);
    }

    return 1;
  }

  return result;
}

uint64_t sub_100443298(void *a1)
{
  v3 = type metadata accessor for BootstrapPhase();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100985B10, qword_1007C69E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for AppStoreDeepLink();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  AppStoreDeepLink.init(userActivity:refApp:)();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10002B894(v9, &qword_100985B10, qword_1007C69E8);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    if (*&v1[OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph])
    {
      type metadata accessor for ASKBagContract();

      BaseObjectGraph.optional<A>(_:)();
    }

    static ResilientDeepLinkController.storeDeepLink(_:bag:)();

    (*(v11 + 8))(v13, v10);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = v14;
  (*(v4 + 104))(v6, enum case for BootstrapPhase.presentingContent(_:), v3);
  v16 = v14;
  v17 = v1;
  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  (*(v4 + 8))(v6, v3);
  return 1;
}

uint64_t sub_1004435D0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for BootstrapPhase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3[OBJC_IVAR____TtC8AppStore11AppDelegate_appHasBeenInBackground] == 1 && *&v3[OBJC_IVAR____TtC8AppStore11AppDelegate_freshnessWatchdog])
  {

    JSFreshnessWatchdog.willEnterForeground()();
  }

  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  (*(v8 + 104))(v10, enum case for BootstrapPhase.presentingContent(_:), v7);
  v12 = v3;
  v13 = a1;

  BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1004437B4()
{
  type metadata accessor for AppStoreDeepLink();

  return sub_10043E15C();
}

double sub_100443848()
{
  v1 = *(type metadata accessor for AppEnterMetricsEvent.EnterKind() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10043D570(v2, v3);
}

char *sub_10044390C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8AppStore27SeparatorSpacerReusableView_separatorInsets];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v10 = UIEdgeInsetsZero.top;
  v10[1] = left;
  v10[2] = bottom;
  v10[3] = right;
  v14 = OBJC_IVAR____TtC8AppStore27SeparatorSpacerReusableView_lineView;
  *&v4[v14] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  [v15 setUserInteractionEnabled:0];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v16 = OBJC_IVAR____TtC8AppStore27SeparatorSpacerReusableView_lineView;
  v17 = *&v15[OBJC_IVAR____TtC8AppStore27SeparatorSpacerReusableView_lineView];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 separatorColor];
  [v19 setBackgroundColor:v20];

  [v15 addSubview:*&v15[v16]];
  return v15;
}

void sub_100443B7C()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.subtracting(insets:)();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  static Separator.thickness(compatibleWith:)();

  v12.origin.x = v2;
  v12.origin.y = v4;
  v12.size.width = v6;
  v12.size.height = v8;
  CGRectGetMinX(v12);
  v13.origin.x = v2;
  v13.origin.y = v4;
  v13.size.width = v6;
  v13.size.height = v8;
  CGRectGetMidY(v13);
  v14.origin.x = v2;
  v14.origin.y = v4;
  v14.size.width = v6;
  v14.size.height = v8;
  CGRectGetWidth(v14);
  v10 = *&v0[OBJC_IVAR____TtC8AppStore27SeparatorSpacerReusableView_lineView];
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v10 setFrame:?];
}

char *sub_100443D5C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = type metadata accessor for FontUseCase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DirectionalTextAlignment();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v36 - v20;
  v22 = &v5[OBJC_IVAR____TtC8AppStore17SearchHeadingView_metrics];
  *(v22 + 3) = &type metadata for CGFloat;
  *(v22 + 4) = &protocol witness table for CGFloat;
  *v22 = 0;
  *(v22 + 8) = &type metadata for CGFloat;
  *(v22 + 9) = &protocol witness table for CGFloat;
  *(v22 + 5) = 0;
  v23 = &v5[OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler];
  *v23 = 0;
  *(v23 + 1) = 0;
  *v21 = UIFontTextStyleBody;
  *(v21 + 2) = 0;
  (*(v11 + 104))(v21, enum case for FontUseCase.preferredFont(_:), v10, v19);
  (*(v11 + 56))(v21, 0, 1, v10);
  (*(v15 + 104))(v17, enum case for DirectionalTextAlignment.none(_:), v14);
  objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v24 = UIFontTextStyleBody;
  *&v5[OBJC_IVAR____TtC8AppStore17SearchHeadingView_headingLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  type metadata accessor for HeaderButton(0);
  if (qword_10096DCD0 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v10, qword_1009D0608);
  (*(v11 + 16))(v13, v25, v10);
  *&v5[OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButton] = DynamicTypeButton.__allocating_init(useCase:)();
  v26 = type metadata accessor for SearchHeadingView();
  v36.receiver = v5;
  v36.super_class = v26;
  v27 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC8AppStore17SearchHeadingView_headingLabel]];
  v32 = OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButton;
  v33 = *&v31[OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButton];
  dispatch thunk of ImageAlignedButton.touchOutsideMargin.setter();

  [*&v31[v32] addTarget:v31 action:"didPressWithDetailButton:" forControlEvents:64];
  [v31 addSubview:*&v31[v32]];
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1007B10D0;
  *(v34 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v34 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v31;
}

uint64_t sub_1004442A4(uint64_t a1)
{
  v3 = type metadata accessor for FontUseCase();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100973860, &qword_1007B48A0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v26 - v9;
  v11 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v11 - 8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v26 - v15;
  __chkstk_darwin(v17);
  v19 = v26 - v18;
  v27 = v1;
  v26[1] = *&v1[OBJC_IVAR____TtC8AppStore17SearchHeadingView_headingLabel];
  dispatch thunk of DynamicTypeLabel.fontUseCase.getter();
  v20 = *(v8 + 56);
  sub_1003DB684(v19, v10);
  v28 = a1;
  sub_1003DB684(a1, &v10[v20]);
  v21 = *(v4 + 48);
  if (v21(v10, 1, v3) != 1)
  {
    sub_1003DB684(v10, v16);
    if (v21(&v10[v20], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v10[v20], v3);
      sub_1004463A8(&qword_100973878, &type metadata accessor for FontUseCase, &protocol conformance descriptor for FontUseCase);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v4 + 8);
      v25(v6, v3);
      sub_10002B894(v19, &qword_100972ED0, &unk_1007B17B0);
      v25(v16, v3);
      sub_10002B894(v10, &qword_100972ED0, &unk_1007B17B0);
      v22 = v28;
      if (v24)
      {
        return sub_10002B894(v22, &qword_100972ED0, &unk_1007B17B0);
      }

      goto LABEL_7;
    }

    sub_10002B894(v19, &qword_100972ED0, &unk_1007B17B0);
    (*(v4 + 8))(v16, v3);
LABEL_6:
    sub_10002B894(v10, &qword_100973860, &qword_1007B48A0);
    v22 = v28;
LABEL_7:
    sub_1003DB684(v22, v13);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    [v27 setNeedsLayout];
    return sub_10002B894(v22, &qword_100972ED0, &unk_1007B17B0);
  }

  sub_10002B894(v19, &qword_100972ED0, &unk_1007B17B0);
  if (v21(&v10[v20], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_10002B894(v10, &qword_100972ED0, &unk_1007B17B0);
  v22 = v28;
  return sub_10002B894(v22, &qword_100972ED0, &unk_1007B17B0);
}

uint64_t sub_100444690()
{
  v1 = type metadata accessor for LayoutRect();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchHeadingView();
  v16.receiver = v0;
  v16.super_class = v5;
  objc_msgSendSuper2(&v16, "layoutSubviews");
  sub_1000FDA3C(&v0[OBJC_IVAR____TtC8AppStore17SearchHeadingView_metrics], v11);
  v6 = *&v0[OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButton];
  v12 = *&v0[OBJC_IVAR____TtC8AppStore17SearchHeadingView_headingLabel];
  v13 = &protocol witness table for UIView;
  v14 = v6;
  v15 = &protocol witness table for UIView;
  v7 = v12;
  v8 = v6;
  LayoutMarginsAware<>.layoutFrame.getter();
  sub_100444FC4(v7, &protocol witness table for UIView, v8, &protocol witness table for UIView, v11, v0, v10);
  sub_10002A400(v10, v10[3]);
  dispatch thunk of Layout.placeChildren(relativeTo:in:)();
  (*(v2 + 8))(v4, v1);
  sub_100007000(v10);
  return sub_100446348(v11);
}

uint64_t SearchHeadingLayout.placeChildren(relativeTo:in:)(void *a1, double a2)
{
  sub_100444FC4(*(v2 + 80), *(v2 + 88), *(v2 + 96), *(v2 + 104), v2, a1, v4);
  sub_10002A400(v4, v4[3]);
  dispatch thunk of Layout.placeChildren(relativeTo:in:)();
  return sub_100007000(v4);
}

double sub_100444960(void *a1, double a2, double a3)
{
  sub_1000FDA3C(v3 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_metrics, v10);
  v5 = *(v3 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButton);
  v11 = *(v3 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_headingLabel);
  v12 = &protocol witness table for UIView;
  v13 = v5;
  v14 = &protocol witness table for UIView;
  sub_100444FC4(v11, &protocol witness table for UIView, v5, &protocol witness table for UIView, v10, a1, v9);
  sub_10002A400(v9, v9[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v7 = v6;
  sub_100007000(v9);
  sub_100446348(v10);
  return v7;
}

double SearchHeadingLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  sub_100444FC4(*(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), v3, a1, v7);
  sub_10002A400(v7, v7[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v5 = v4;
  sub_100007000(v7);
  return v5;
}

double sub_100444BB0(void *a1, double a2, double a3, uint64_t a4, NSString a5)
{
  v8 = [a1 traitCollection];
  if (qword_10096D648 != -1)
  {
    swift_once();
  }

  v9 = qword_10097E830;
  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  [v9 setTitle:a5 forState:0];

  [v9 setImage:0 forState:0];
  v10 = [v9 titleLabel];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = [v12 font];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v8];
    }

    else
    {
      v15 = 0;
    }

    [v12 setFont:v15];
  }

  [v9 sizeThatFits:{a2, a3}];
  v17 = v16;

  [v9 setTitle:0 forState:0];
  [v9 setImage:0 forState:0];

  return v17 + 0.0;
}

double sub_100444D84(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, void (*a5)(void, void), double a6, double a7)
{
  v10 = *(a4 + 8);
  sub_1000FDA3C(a2, v15);
  v16 = a3;
  v17 = v10;
  v18 = a5;
  v19 = &protocol witness table for LayoutViewPlaceholder;
  swift_unknownObjectRetain();

  sub_100444FC4(a3, v10, a5, &protocol witness table for LayoutViewPlaceholder, v15, a1, v14);
  sub_10002A400(v14, v14[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v12 = v11;
  sub_100007000(v14);
  sub_100446348(v15);
  return v12;
}

id sub_100444F14(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchHeadingView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100444FC4(void (*a1)(void, void)@<X0>, void (*a2)(void, void)@<X1>, void (*a3)(void, void)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v126 = a5;
  v124 = a4;
  v125 = a3;
  v118 = a2;
  v123 = a1;
  v127 = a7;
  v8 = type metadata accessor for HorizontalAlignmentLayout.SizingPolicy.Priority();
  v136 = *(v8 - 8);
  __chkstk_darwin(v8);
  v120 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for HorizontalAlignmentLayout.SizingPolicy();
  v135 = *(v113 - 8);
  __chkstk_darwin(v113);
  v121 = (&v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = type metadata accessor for HorizontalAlignmentLayout.HorizontalGravity();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v116 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for HorizontalAlignmentLayout.ContainerDestinationOffset();
  v131 = *(v115 - 8);
  __chkstk_darwin(v115);
  v109 = (&v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v114 = type metadata accessor for HorizontalAlignmentLayout.ChildSourceOffset();
  v129 = *(v114 - 8);
  __chkstk_darwin(v114);
  v106 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for HorizontalAlignmentLayout.VerticalAnchor();
  v132 = *(v117 - 8);
  __chkstk_darwin(v117);
  v112 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for HorizontalAlignmentLayout.Child();
  v119 = *(v122 - 8);
  __chkstk_darwin(v122);
  v110 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v130 = &v94 - v17;
  v18 = type metadata accessor for VerticalFlowLayout.ExclusionCondition();
  v108 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for VerticalFlowLayout.HorizontalPlacement();
  v128 = *(v107 - 1);
  __chkstk_darwin(v107);
  v22 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for VerticalFlowLayout.VerticalPlacement();
  v24 = *(v23 - 8);
  *&v25 = __chkstk_darwin(v23).n128_u64[0];
  v27 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [a6 traitCollection];
  v29 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v29)
  {
    sub_10002849C(&qword_10096FC30, &unk_1007B10E0);
    v30 = *(type metadata accessor for VerticalFlowLayout.Child() - 8);
    v134 = *(v30 + 72);
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1007B1890;
    v135 = v32;
    v136 = v32 + v31;
    v33 = v123;
    ObjectType = swift_getObjectType();
    v145 = v118;
    v143 = v33;
    *(&v141 + 1) = &type metadata for CGFloat;
    v142 = &protocol witness table for CGFloat;
    *&v140 = 0;
    v139 = 0;
    memset(v138, 0, sizeof(v138));
    v111 = v24;
    v34 = *(v24 + 13);
    v122 = (v24 + 104);
    v133 = v34;
    v105 = v23;
    (v34)(v27, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v23);
    LODWORD(v132) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v35 = v128;
    v131 = *(v128 + 104);
    v36 = v107;
    (v131)(v22);
    v137 = _swiftEmptyArrayStorage;
    v130 = sub_1004463A8(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
    swift_unknownObjectRetain();
    v129 = sub_10002849C(&unk_10098D830, &unk_1007B10F0);
    v123 = sub_1000364CC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v121 = *(v108 + 8);
    v121(v20, v18);
    v120 = *(v35 + 8);
    v128 = v35 + 8;
    (v120)(v22, v36);
    v37 = *(v111 + 1);
    v111 += 8;
    v119 = v37;
    v38 = v18;
    v39 = v105;
    (v37)(v27, v105);
    sub_10002B894(v138, &qword_1009799E0, qword_1007B5950);
    sub_100007000(&v140);
    sub_100007000(&v143);
    v40 = v125;
    ObjectType = swift_getObjectType();
    v145 = v124;
    v143 = v40;
    v142 = 0;
    v140 = 0u;
    v141 = 0u;
    (v133)(v27, enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:), v39);
    (v131)(v22, v132, v36);
    *&v138[0] = _swiftEmptyArrayStorage;
    swift_unknownObjectRetain();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v121(v20, v38);
    (v120)(v22, v36);
    (v119)(v27, v39);
    sub_10002B894(&v140, &qword_1009799E0, qword_1007B5950);
    sub_100007000(&v143);
    v41 = type metadata accessor for VerticalFlowLayout();
    v42 = v127;
    v127[3] = v41;
    v42[4] = &protocol witness table for VerticalFlowLayout;
    v42[5] = &protocol witness table for VerticalFlowLayout;
    sub_1000056E0(v42);
    VerticalFlowLayout.init(expandChildrenToFit:children:)();
  }

  else
  {
    ObjectType = &type metadata for CGFloat;
    v145 = &protocol witness table for CGFloat;
    v143 = 0;
    v43 = v129;
    v100 = *(v129 + 104);
    v128 = v129 + 104;
    v44 = v106;
    v45 = v114;
    v100(v106, enum case for HorizontalAlignmentLayout.ChildSourceOffset.minY(_:), v114);
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    v47 = v109;
    *v109 = v46;
    v48 = v8;
    v49 = v131;
    v50 = *(v131 + 104);
    v108 = v131 + 104;
    v111 = v50;
    v51 = v115;
    (v50)(v47, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.absolute(_:), v115);
    static HorizontalAlignmentLayout.VerticalAnchor.anchor(child:at:)();
    v52 = *(v49 + 8);
    v131 = v49 + 8;
    v107 = v52;
    (v52)(v47, v51);
    v53 = *(v43 + 8);
    v129 = v43 + 8;
    v105 = v53;
    v53(v44, v45);
    *(&v141 + 1) = &type metadata for Double;
    v142 = &protocol witness table for Double;
    *&v140 = 0;
    v54 = v133;
    v55 = v133[13];
    v103 = (v133 + 13);
    v104 = v55;
    v56 = v116;
    v55(v116, enum case for HorizontalAlignmentLayout.HorizontalGravity.leading(_:), v134);
    v57 = v135;
    v58 = v136;
    v59 = *(v136 + 104);
    v101 = v136 + 104;
    v102 = v59;
    v60 = v120;
    v95 = v48;
    v59(v120, enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.default(_:), v48);
    v61 = v121;
    static HorizontalAlignmentLayout.SizingPolicy.policy(priority:constrainedTo:)();
    v62 = *(v58 + 8);
    v136 = v58 + 8;
    v99 = v62;
    v62(v60, v48);
    v63 = v112;
    static HorizontalAlignmentLayout.Child.child(view:leadingSpace:trailingSpace:verticalAnchor:horizontalGravity:sizingPolicy:)();
    v64 = *(v57 + 8);
    v135 = v57 + 8;
    v123 = v64;
    v64(v61, v113);
    v65 = v54[1];
    v133 = v54 + 1;
    v118 = v65;
    v65(v56, v134);
    v66 = *(v132 + 8);
    v132 += 8;
    v98 = v66;
    v67 = v63;
    v66(v63, v117);
    sub_100007000(&v140);
    sub_100007000(&v143);
    v68 = enum case for HorizontalAlignmentLayout.ChildSourceOffset.firstBaseline(_:);
    v69 = v114;
    v70 = v100;
    v100(v44, enum case for HorizontalAlignmentLayout.ChildSourceOffset.firstBaseline(_:), v114);
    v71 = sub_10002849C(&qword_100985BB8, &qword_1007CD660);
    v72 = swift_allocBox();
    v74 = v73;
    v75 = *(v71 + 48);
    v96 = v119[2];
    v97 = (v119 + 2);
    v96(v73, v130, v122);
    v70(v74 + v75, v68, v69);
    *v47 = v72;
    v76 = v115;
    (v111)(v47, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.relative(_:), v115);
    static HorizontalAlignmentLayout.VerticalAnchor.anchor(child:at:)();
    (v107)(v47, v76);
    v105(v44, v69);
    v77 = v116;
    v78 = v134;
    v104(v116, enum case for HorizontalAlignmentLayout.HorizontalGravity.trailing(_:), v134);
    v79 = v120;
    v80 = v95;
    v102(v120, enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.high(_:), v95);
    v81 = v121;
    static HorizontalAlignmentLayout.SizingPolicy.policy(priority:constrainedTo:)();
    v99(v79, v80);
    v145 = &protocol witness table for Double;
    ObjectType = &type metadata for Double;
    v143 = 0;
    v82 = v110;
    static HorizontalAlignmentLayout.Child.child(view:leadingSpace:trailingSpace:verticalAnchor:horizontalGravity:sizingPolicy:)();
    v123(v81, v113);
    v118(v77, v78);
    v98(v67, v117);
    sub_100007000(&v143);
    sub_10002849C(&qword_100985BC0, qword_1007CD668);
    v83 = v119;
    v84 = v119[9];
    v85 = (*(v119 + 80) + 32) & ~*(v119 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_1007B1890;
    v87 = v86 + v85;
    v88 = v130;
    v89 = v122;
    v90 = v96;
    v96(v87, v130, v122);
    v90(v87 + v84, v82, v89);
    v91 = type metadata accessor for HorizontalAlignmentLayout();
    v92 = v127;
    v127[3] = v91;
    v92[4] = sub_1004463A8(&qword_100985BC8, &type metadata accessor for HorizontalAlignmentLayout, &protocol conformance descriptor for HorizontalAlignmentLayout);
    v92[5] = sub_1004463A8(&unk_100985BD0, &type metadata accessor for HorizontalAlignmentLayout, &protocol conformance descriptor for HorizontalAlignmentLayout);
    sub_1000056E0(v92);
    HorizontalAlignmentLayout.init(children:)();
    v93 = v83[1];
    v93(v82, v89);
    v93(v88, v89);
  }
}

__n128 sub_1004461A8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1004461CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100446214(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100446280(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10044629C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004462E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004463A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1004463F0@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Shelf();
  sub_10044A2D0(&qword_100985D70, &type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  v2 = dispatch thunk of ShelfModel.items.getter();
  if (*(v2 + 16))
  {
    sub_10002C0AC(v2 + 32, a1);
  }

  else
  {

    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1004464AC()
{
  v15 = v0;
  sub_10044A2D0(&qword_100985D70, &type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  v1 = dispatch thunk of ShelfModel.items.getter();
  if (*(v1 + 16))
  {
    sub_10002C0AC(v1 + 32, v14);

    sub_10002A400(v14, v14[3]);
    DynamicType = swift_getDynamicType();
    v3 = dispatch thunk of ShelfModel.items.getter();
    v4 = *(v3 + 16);
    v5 = v4 != 0;
    v6 = v4 - v5;
    if (v4 >= v5)
    {
      v7 = v4 - v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 + 1;
    result = v3 + 40 * v5 + 32;
    while (1)
    {
      v10 = v6 == 0;
      if (!v6)
      {
LABEL_9:

        sub_100007000(v14);
        return v10;
      }

      if (!--v8)
      {
        break;
      }

      v11 = result + 40;
      --v6;
      sub_10002C0AC(result, v13);
      sub_10002A400(v13, v13[3]);
      v12 = swift_getDynamicType();
      sub_100007000(v13);
      result = v11;
      if (v12 != DynamicType)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    return 1;
  }

  return result;
}

uint64_t sub_10044664C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004464AC();
  *a1 = result & 1;
  return result;
}

char *sub_10044667C(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC8AppStore23SearchActionContentView_iconView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8AppStore23SearchActionContentView_linkLabel;
  type metadata accessor for DynamicLabel();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC8AppStore23SearchActionContentView_metrics;
  if (qword_10096DC30 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v13 = sub_1000056A8(v12, qword_1009D0458);
  sub_10044A1A8(v13, &v4[v11]);
  v35.receiver = v4;
  v35.super_class = type metadata accessor for SearchActionContentView(0);
  v14 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = *&v18[OBJC_IVAR____TtC8AppStore23SearchActionContentView_iconView];
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v20 = swift_allocObject();
  v34 = xmmword_1007B0B70;
  *(v20 + 16) = xmmword_1007B0B70;
  *(v20 + 32) = v19;
  v21 = *&v18[OBJC_IVAR____TtC8AppStore23SearchActionContentView_linkLabel];
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007B0B70;
  *(v22 + 32) = v21;
  sub_10002849C(&qword_1009711E8, &unk_1007C1200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  *(inited + 32) = v20;
  *(inited + 40) = v22;
  v24 = v19;
  v25 = v21;
  sub_10071C0E4(inited);
  v27 = v26;
  swift_setDeallocating();
  sub_10002849C(&unk_1009711F0, &unk_1007B2720);
  result = swift_arrayDestroy();
  if (!(v27 >> 62))
  {
    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_5;
    }

LABEL_12:

    sub_1004483D8();
    sub_10002849C(&qword_10097B110, &unk_1007B27C0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1007B10D0;
    *(v33 + 32) = type metadata accessor for UITraitLegibilityWeight();
    *(v33 + 40) = &protocol witness table for UITraitLegibilityWeight;
    UIView.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();

    return v18;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v29 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v29 >= 1)
  {
    for (i = 0; i != v29; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v31 = *(v27 + 8 * i + 32);
      }

      v32 = v31;
      [v18 addSubview:{v31, v34}];
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_100446A44(double *a1)
{
  v2 = v1;
  v44 = type metadata accessor for DynamicTextAppearance();
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  __chkstk_darwin(v8);
  v47 = &v39 - v9;
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v43 = type metadata accessor for FontSource();
  v13 = *(v43 - 8);
  __chkstk_darwin(v43);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = (&v39 - v20);
  v22 = OBJC_IVAR____TtC8AppStore23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_10044A1A8(&v2[v22], v21);
  v23 = *a1 == *v21 && a1[1] == v21[1];
  if (v23 && a1[2] == v21[2] && (static FontUseCase.== infix(_:_:)() & 1) != 0 && *(a1 + v16[7]) == *(v21 + v16[7]) && *(a1 + v16[8]) == *(v21 + v16[8]))
  {
    v24 = v16[9];
    v25 = *(a1 + v24);
    v26 = *(v21 + v24);
    result = sub_10044A270(v21, type metadata accessor for SearchActionContentView.Layout.Metrics);
    if (v25 == v26)
    {
      return result;
    }
  }

  else
  {
    sub_10044A270(v21, type metadata accessor for SearchActionContentView.Layout.Metrics);
  }

  v41 = *&v2[OBJC_IVAR____TtC8AppStore23SearchActionContentView_iconView];
  v28 = [v2 traitCollection];
  sub_10044A1A8(&v2[v22], v18);
  v42 = v12;
  v29 = v44;
  v40 = v22;
  v30 = v16[6];
  v31 = type metadata accessor for FontUseCase();
  (*(*(v31 - 8) + 16))(v15, &v18[v30], v31);
  v32 = v43;
  (*(v13 + 104))(v15, enum case for FontSource.useCase(_:), v43);
  isa = FontSource.font(compatibleWith:)(v28).super.isa;
  (*(v13 + 8))(v15, v32);
  v34 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_10044A270(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  ArtworkView.preferredSymbolConfiguration.setter();
  [v2 setNeedsLayout];
  sub_10044A1A8(&v2[v40], v18);
  v35 = v45;
  DynamicTextAppearance.init()();
  v36 = v46;
  DynamicTextAppearance.withFontUseCase(_:)();
  v37 = *(v4 + 8);
  v37(v35, v29);
  v38 = v47;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v37(v36, v29);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v37(v38, v29);
  sub_10044A270(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  dispatch thunk of DynamicLabel.dynamicTextAppearance.setter();
  return [v2 setNeedsLayout];
}

uint64_t sub_100446F4C()
{
  v1 = type metadata accessor for SearchActionContentView.Layout(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for LayoutRect();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchActionContentView(0);
  v21.receiver = v0;
  v21.super_class = v9;
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v10 = *&v0[OBJC_IVAR____TtC8AppStore23SearchActionContentView_linkLabel];
  v4[8] = type metadata accessor for DynamicLabel();
  v4[9] = &protocol witness table for UILabel;
  v4[5] = v10;
  v11 = *&v0[OBJC_IVAR____TtC8AppStore23SearchActionContentView_iconView];
  v4[3] = type metadata accessor for ArtworkView();
  v4[4] = &protocol witness table for UIView;
  *v4 = v11;
  v12 = OBJC_IVAR____TtC8AppStore23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_10044A1A8(&v0[v12], v4 + *(v2 + 32));
  v13 = v10;
  v14 = v11;
  LayoutMarginsAware<>.layoutFrame.getter();
  sub_100447138(v0, v15, v16, v17, v18);
  sub_10044A270(v4, type metadata accessor for SearchActionContentView.Layout);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100447138(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  MinX = CGRectGetMinX(*&a2);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  MinY = CGRectGetMinY(v24);
  v13 = v5 + *(type metadata accessor for SearchActionContentView.Layout(0) + 24);
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v15 = *(v13 + *(v14 + 28));
  v16 = MinY + v15;
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  Width = CGRectGetWidth(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  v18 = CGRectGetHeight(v26) - v15 - *(v13 + *(v14 + 32));
  sub_100031660(v6, &v20, &qword_100975610, &qword_1007B5690);
  if (v21)
  {
    sub_100005A38(&v20, v22);
    sub_10002A400(v22, v23);
    Measurable.measuredSize(fitting:in:)();
    sub_10002A400(v22, v23);
    v27.origin.x = MinX;
    v27.origin.y = v16;
    v27.size.width = Width;
    v27.size.height = v18;
    CGRectGetMinX(v27);
    v28.origin.y = v16;
    v28.origin.x = MinX;
    v28.size.width = Width;
    v28.size.height = v18;
    CGRectGetMidY(v28);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v22);
  }

  else
  {
    sub_10002B894(&v20, &qword_100975610, &qword_1007B5690);
  }

  sub_10002A400((v6 + 40), *(v6 + 64));
  dispatch thunk of Measurable.measurements(fitting:in:)();
  sub_10002A400((v6 + 40), *(v6 + 64));
  v29.origin.y = v16;
  v29.origin.x = MinX;
  v29.size.width = Width;
  v29.size.height = v18;
  CGRectGetMidY(v29);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  return LayoutRect.init(representing:)();
}

double sub_100447490(void *a1, double a2, double a3)
{
  v6 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v6);
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FontSource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3 + *(type metadata accessor for SearchActionContentView.Layout(0) + 24);
  v13 = a2 + 0.0;
  sub_100031660(v3, &v23, &qword_100975610, &qword_1007B5690);
  if (v24)
  {
    sub_100005A38(&v23, v25);
    sub_10002A400(v25, v26);
    Measurable.measuredSize(fitting:in:)();
    sub_100007000(v25);
  }

  else
  {
    sub_10002B894(&v23, &qword_100975610, &qword_1007B5690);
  }

  sub_10002A400((v3 + 40), *(v3 + 64));
  v14 = a1;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v15 = v22;
  sub_10044A1A8(v12, v22);
  v16 = *(v6 + 24);
  v17 = type metadata accessor for FontUseCase();
  (*(*(v17 - 8) + 32))(v11, v15 + v16, v17);
  (*(v9 + 104))(v11, enum case for FontSource.useCase(_:), v8);
  v18 = [v14 traitCollection];
  v26 = v8;
  v27 = &protocol witness table for FontSource;
  v19 = sub_1000056E0(v25);
  (*(v9 + 16))(v19, v11, v8);
  CGFloat.scalingLike(_:with:)();

  (*(v9 + 8))(v11, v8);
  sub_100007000(v25);
  return v13;
}

void sub_100447800(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for FontSource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v22 = a2;

    v14 = [v2 traitCollection];
    v15 = &v2[OBJC_IVAR____TtC8AppStore23SearchActionContentView_metrics];
    swift_beginAccess();
    sub_10044A1A8(v15, v13);
    v16 = *(v10 + 24);
    v17 = type metadata accessor for FontUseCase();
    (*(*(v17 - 8) + 16))(v9, &v13[v16], v17);
    (*(v7 + 104))(v9, enum case for FontSource.useCase(_:), v6);
    v18 = v2;
    isa = FontSource.font(compatibleWith:)(v14).super.isa;
    (*(v7 + 8))(v9, v6);
    v20 = [objc_opt_self() configurationWithFont:isa scale:1];

    sub_10044A270(v13, type metadata accessor for SearchActionContentView.Layout.Metrics);
    dispatch thunk of Artwork.symbolImageMeasurements(using:fallBackSize:)();

    v21 = *&v18[OBJC_IVAR____TtC8AppStore23SearchActionContentView_iconView];
    [v21 contentMode];
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v21 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    type metadata accessor for ArtworkView();
    sub_10044A2D0(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }

  else
  {
    v23.value.super.isa = 0;
    v23.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v23, v11);
  }
}

uint64_t sub_100447BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for FontSource();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_10097F480, &unk_1007C4AB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v8);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v17 = *(v11 + 8);
  v17(v16, v10);
  if (!v42)
  {
    sub_10002B894(v41, &unk_10097DBE0, &unk_1007BCA00);
    goto LABEL_8;
  }

  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for SearchAdAction();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v32 = 1;
    v31 = v40;
    goto LABEL_9;
  }

  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v17(v13, v10);
  if (v41[0] != 1 || (, v18 = Action.artwork.getter(), , !v18))
  {

    goto LABEL_8;
  }

  v19 = ShelfLayoutContext.traitCollection.getter();
  v20 = type metadata accessor for ShelfLayoutContext();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v7, a1, v20);
  (*(v21 + 56))(v7, 0, 1, v20);
  v22 = v39;
  v23 = v19;
  sub_10044814C(v7, v39);
  sub_10002B894(v7, &qword_10097F480, &unk_1007C4AB0);
  v24 = *(v8 + 24);
  v25 = type metadata accessor for FontUseCase();
  v26 = v36;
  (*(*(v25 - 8) + 16))(v36, v22 + v24, v25);
  v28 = v37;
  v27 = v38;
  (*(v37 + 104))(v26, enum case for FontSource.useCase(_:), v38);
  isa = FontSource.font(compatibleWith:)(v23).super.isa;
  (*(v28 + 8))(v26, v27);
  v30 = [objc_opt_self() configurationWithFont:isa scale:1];

  dispatch thunk of Artwork.symbolImageMeasurements(using:fallBackSize:)();
  Artwork.contentMode.getter();
  v31 = v40;
  ComponentPrefetchSizing.init(size:contentMode:)();

  sub_10044A270(v22, type metadata accessor for SearchActionContentView.Layout.Metrics);
  v32 = 0;
LABEL_9:
  v33 = type metadata accessor for ComponentPrefetchSizing();
  return (*(*(v33 - 8) + 56))(v31, v32, 1, v33);
}

uint64_t sub_10044814C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_10097F480, &unk_1007C4AB0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) == 0)
  {
    sub_100031660(a1, v10, &qword_10097F480, &unk_1007C4AB0);
    v11 = type metadata accessor for ShelfLayoutContext();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_10002B894(v10, &qword_10097F480, &unk_1007C4AB0);
LABEL_8:
      if (qword_10096DC30 != -1)
      {
        swift_once();
      }

      v15 = qword_1009D0458;
      goto LABEL_11;
    }

    ShelfLayoutContext.contentPageGrid.getter();
    (*(v12 + 8))(v10, v11);
    PageGrid.columnCount.getter();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    if (v14 != 1.0)
    {
      goto LABEL_8;
    }
  }

  if (qword_10096DC38 != -1)
  {
    swift_once();
  }

  v15 = qword_1009D0470;
LABEL_11:
  v16 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v17 = sub_1000056A8(v16, v15);
  return sub_10044A1A8(v17, a2);
}

uint64_t sub_1004483D8()
{
  v1 = v0;
  v2 = type metadata accessor for DynamicTextAppearance();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v34 = &v32 - v5;
  __chkstk_darwin(v6);
  v35 = &v32 - v7;
  __chkstk_darwin(v8);
  v36 = &v32 - v9;
  v10 = type metadata accessor for FontSource();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v15 = v14 - 8;
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v0[OBJC_IVAR____TtC8AppStore23SearchActionContentView_iconView] setAccessibilityIgnoresInvertColors:{0, v16}];
  ArtworkView.shouldSymbolImageSelfSize.setter();
  v19 = [v0 traitCollection];
  v20 = OBJC_IVAR____TtC8AppStore23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_10044A1A8(&v0[v20], v18);
  v21 = *(v15 + 32);
  v22 = type metadata accessor for FontUseCase();
  (*(*(v22 - 8) + 16))(v13, &v18[v21], v22);
  (*(v11 + 104))(v13, enum case for FontSource.useCase(_:), v10);
  isa = FontSource.font(compatibleWith:)(v19).super.isa;
  (*(v11 + 8))(v13, v10);
  v24 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_10044A270(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  ArtworkView.preferredSymbolConfiguration.setter();
  [v1 setNeedsLayout];
  sub_10044A1A8(v1 + v20, v18);
  v25 = v33;
  DynamicTextAppearance.init()();
  v26 = v34;
  DynamicTextAppearance.withFontUseCase(_:)();
  v27 = *(v37 + 8);
  v28 = v25;
  v29 = v38;
  v27(v28, v38);
  v30 = v35;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v27(v26, v29);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v27(v30, v29);
  sub_10044A270(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  return dispatch thunk of DynamicLabel.dynamicTextAppearance.setter();
}

id sub_1004487FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchActionContentView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004488C0(uint64_t a1)
{
  result = type metadata accessor for SearchActionContentView.Layout.Metrics(319);
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

void sub_1004489C8(uint64_t a1)
{
  sub_100448A64(319);
  if (v1 <= 0x3F)
  {
    sub_100448AC8();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SearchActionContentView.Layout.Metrics(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100448A64(uint64_t a1)
{
  if (!qword_10098A3E0)
  {
    sub_10002D1A8(&unk_10097E960, &unk_1007B1330);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10098A3E0);
    }
  }
}

unint64_t sub_100448AC8()
{
  result = qword_10097E940;
  if (!qword_10097E940)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10097E940);
  }

  return result;
}

void sub_100448B54(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for FontUseCase();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_100448C3C(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  sub_100005644(v8, a2);
  v9 = sub_1000056A8(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FontUseCase();
  v11 = sub_1000056A8(v10, a4);
  (*(*(v10 - 8) + 16))(v9 + v8[6], v11, v10);
  __asm { FMOV            V0.2D, #21.0 }

  *v9 = result;
  v9[1].n128_u64[0] = 0x4024000000000000;
  *(v9->n128_u64 + v8[7]) = 0x401C000000000000;
  *(v9->n128_u64 + v8[8]) = 0x4018000000000000;
  *(v9->n128_u64 + v8[9]) = 0x404A800000000000;
  return result;
}

BOOL sub_100448D58(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    v6 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
    if ((static FontUseCase.== infix(_:_:)() & 1) != 0 && *(a1 + v6[7]) == *(a2 + v6[7]) && *(a1 + v6[8]) == *(a2 + v6[8]))
    {
      return *(a1 + v6[9]) == *(a2 + v6[9]);
    }
  }

  return 0;
}

double sub_100448E18(uint64_t a1)
{
  v2 = type metadata accessor for PageGrid();
  v83 = *(v2 - 8);
  __chkstk_darwin(v2);
  v82 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for SearchActionContentView.Layout(0);
  __chkstk_darwin(v81);
  v5 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DynamicTextAppearance();
  v79 = *(v6 - 8);
  v80 = v6;
  __chkstk_darwin(v6);
  v71 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v72 = v64 - v9;
  __chkstk_darwin(v10);
  v74 = v64 - v11;
  __chkstk_darwin(v12);
  v75 = v64 - v13;
  v14 = type metadata accessor for LabelPlaceholder();
  v76 = *(v14 - 8);
  v77 = v14;
  __chkstk_darwin(v14);
  v73 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for FontSource();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v17 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&qword_10097F480, &unk_1007C4AB0);
  __chkstk_darwin(v18 - 8);
  v20 = v64 - v19;
  v21 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  __chkstk_darwin(v21 - 8);
  v23 = v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v64 - v25;
  v27 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v27);
  v78 = v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchAdAction();
  sub_10044A2D0(&unk_100983980, &type metadata accessor for SearchAdAction, &protocol conformance descriptor for Action);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v85[0])
  {
    return 0.0;
  }

  v29 = Action.title.getter();
  if (v30)
  {
    v64[0] = v30;
    v64[1] = v29;
    v65 = v2;
    v66 = v5;
    v31 = type metadata accessor for ItemLayoutContext();
    v32 = *(v31 - 8);
    (*(v32 + 16))(v26, a1, v31);
    (*(v32 + 56))(v26, 0, 1, v31);
    swift_getKeyPath();
    v67 = a1;
    ItemLayoutContext.subscript.getter();

    v33 = v85[0];
    sub_100031660(v26, v23, &unk_1009731E0, &unk_1007B0B60);
    if ((*(v32 + 48))(v23, 1, v31) == 1)
    {
      sub_10002B894(v23, &unk_1009731E0, &unk_1007B0B60);
      v34 = 1;
    }

    else
    {
      ItemLayoutContext.parentShelfLayoutContext.getter();
      (*(v32 + 8))(v23, v31);
      v34 = 0;
    }

    v36 = type metadata accessor for ShelfLayoutContext();
    (*(*(v36 - 8) + 56))(v20, v34, 1, v36);
    v37 = v78;
    sub_10044814C(v20, v78);

    sub_10002B894(v20, &qword_10097F480, &unk_1007C4AB0);
    sub_10002B894(v26, &unk_1009731E0, &unk_1007B0B60);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v38 = v85[0];
    v39 = *(v27 + 24);
    v40 = type metadata accessor for FontUseCase();
    (*(*(v40 - 8) + 16))(v17, v37 + v39, v40);
    v41 = v68;
    v42 = v69;
    (*(v68 + 104))(v17, enum case for FontSource.useCase(_:), v69);
    isa = FontSource.font(compatibleWith:)(v38).super.isa;
    (*(v41 + 8))(v17, v42);
    v44 = [objc_opt_self() configurationWithFont:isa scale:1];

    v45 = Action.artwork.getter();

    v70 = v44;
    if (v45)
    {
      v46 = v44;
      dispatch thunk of Artwork.symbolImageMeasurements(using:fallBackSize:)();
    }

    v47 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v48 = LayoutViewPlaceholder.init(representing:)();
    v49 = v71;
    DynamicTextAppearance.init()();
    v50 = v72;
    DynamicTextAppearance.withFontUseCase(_:)();
    v51 = *(v79 + 8);
    v52 = v37;
    v53 = v80;
    v51(v49, v80);
    v54 = v74;
    DynamicTextAppearance.withNumberOfLines(_:)();
    v51(v50, v53);
    DynamicTextAppearance.withLineBreakMode(_:)();
    v51(v54, v53);
    LabelPlaceholder.Options.init(rawValue:)();
    v55 = v73;
    LabelPlaceholder.init(_:with:where:)();
    LabelPlaceholder.layoutTextView.getter();
    (*(v76 + 8))(v55, v77);
    v56 = v66;
    sub_10002C0AC(v85, (v66 + 5));
    v56[3] = v47;
    v56[4] = &protocol witness table for LayoutViewPlaceholder;
    *v56 = v48;
    sub_10044A1A8(v52, v56 + *(v81 + 24));
    swift_getKeyPath();

    v57 = v82;
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    v59 = v58;
    v61 = v60;
    (*(v83 + 8))(v57, v65);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    sub_100447490(v84, v59, v61);
    v35 = v62;

    swift_unknownObjectRelease();
    sub_10044A270(v56, type metadata accessor for SearchActionContentView.Layout);
    sub_100007000(v85);
    sub_10044A270(v52, type metadata accessor for SearchActionContentView.Layout.Metrics);
  }

  else
  {

    return 0.0;
  }

  return v35;
}

double sub_100449860(uint64_t a1, uint64_t a2)
{
  v5 = sub_10002849C(&qword_10097F480, &unk_1007C4AB0);
  __chkstk_darwin(v5 - 8);
  v7 = v26 - v6;
  v8 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  __chkstk_darwin(v8 - 8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v26 - v12;
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v14 - 8);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchAdAction();
  sub_10044A2D0(&unk_100983980, &type metadata accessor for SearchAdAction, &protocol conformance descriptor for Action);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v27)
  {

    v18 = Action.artwork.getter();

    if (v18)
    {
      v26[0] = v18;
      v26[1] = v2;
      v26[2] = a2;
      v19 = type metadata accessor for ItemLayoutContext();
      v20 = *(v19 - 8);
      (*(v20 + 16))(v13, a1, v19);
      (*(v20 + 56))(v13, 0, 1, v19);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v21 = v27;
      sub_100031660(v13, v10, &unk_1009731E0, &unk_1007B0B60);
      if ((*(v20 + 48))(v10, 1, v19) == 1)
      {
        sub_10002B894(v10, &unk_1009731E0, &unk_1007B0B60);
        v22 = 1;
      }

      else
      {
        ItemLayoutContext.parentShelfLayoutContext.getter();
        (*(v20 + 8))(v10, v19);
        v22 = 0;
      }

      v23 = type metadata accessor for ShelfLayoutContext();
      (*(*(v23 - 8) + 56))(v7, v22, 1, v23);
      sub_10044814C(v7, v16);

      sub_10002B894(v7, &qword_10097F480, &unk_1007C4AB0);
      sub_10002B894(v13, &unk_1009731E0, &unk_1007B0B60);
      v24 = Artwork.config(using:)();
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1007B0B70;
      *(v25 + 32) = v24;

      ArtworkLoader.prefetchArtwork(using:)(v25);

      sub_10044A270(v16, type metadata accessor for SearchActionContentView.Layout.Metrics);
    }

    else
    {
    }
  }

  return result;
}

double sub_100449CA8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10002849C(&qword_10097F480, &unk_1007C4AB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  type metadata accessor for SearchAdAction();
  sub_10044A2D0(&unk_100983980, &type metadata accessor for SearchAdAction, &protocol conformance descriptor for Action);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v37)
  {
    v34 = a1;
    v35 = ObjectType;
    v21 = *&v1[OBJC_IVAR____TtC8AppStore23SearchActionContentView_linkLabel];

    Action.title.getter();
    if (v22)
    {
      v23 = String._bridgeToObjectiveC()();
    }

    else
    {
      v23 = 0;
    }

    [v21 setText:v23];

    v24 = Action.presentationStyle.getter();

    v36 = v16;
    if ((v24 & 2) != 0)
    {
      [v21 _setTextColorFollowsTintColor:1];
    }

    else
    {
      [v21 _setTextColorFollowsTintColor:0];
      sub_100028BB8();
      v25 = static UIColor.primaryText.getter();
      [v21 setTextColor:v25];
    }

    v26 = type metadata accessor for ItemLayoutContext();
    v27 = *(v26 - 8);
    (*(v27 + 16))(v13, v34, v26);
    (*(v27 + 56))(v13, 0, 1, v26);
    v28 = [v2 traitCollection];
    sub_100031660(v13, v10, &unk_1009731E0, &unk_1007B0B60);
    if ((*(v27 + 48))(v10, 1, v26) == 1)
    {
      sub_10002B894(v10, &unk_1009731E0, &unk_1007B0B60);
      v29 = 1;
    }

    else
    {
      ItemLayoutContext.parentShelfLayoutContext.getter();
      (*(v27 + 8))(v10, v26);
      v29 = 0;
    }

    v30 = type metadata accessor for ShelfLayoutContext();
    (*(*(v30 - 8) + 56))(v7, v29, 1, v30);
    sub_10044814C(v7, v19);

    sub_10002B894(v7, &qword_10097F480, &unk_1007C4AB0);
    sub_10002B894(v13, &unk_1009731E0, &unk_1007B0B60);
    v31 = OBJC_IVAR____TtC8AppStore23SearchActionContentView_metrics;
    swift_beginAccess();
    v32 = v36;
    sub_10044A1A8(v2 + v31, v36);
    swift_beginAccess();
    sub_10044A20C(v19, v2 + v31);
    swift_endAccess();
    sub_100446A44(v32);
    sub_10044A270(v32, type metadata accessor for SearchActionContentView.Layout.Metrics);
    sub_10044A270(v19, type metadata accessor for SearchActionContentView.Layout.Metrics);
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_10044A1A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044A20C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044A270(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10044A2D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10044A318()
{
  v1 = OBJC_IVAR____TtC8AppStore23SearchActionContentView_iconView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC8AppStore23SearchActionContentView_linkLabel;
  type metadata accessor for DynamicLabel();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC8AppStore23SearchActionContentView_metrics;
  if (qword_10096DC30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v5 = sub_1000056A8(v4, qword_1009D0458);
  sub_10044A1A8(v5, v0 + v3);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10044A424(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v82 = a2;
  v76 = type metadata accessor for PageGrid.Direction();
  v5 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v69 - v8;
  v10 = type metadata accessor for PageGrid();
  v77 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v69 - v14;
  v16 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  __chkstk_darwin(v16 - 8);
  v81 = sub_10002849C(&qword_1009812D8, &qword_1007C8CB8);
  v17 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v69 - v18;
  type metadata accessor for Uber();
  sub_10044B678(&qword_1009812E0, &type metadata accessor for Uber, &protocol conformance descriptor for Uber);
  v83 = a1;
  ItemLayoutContext.typedModel<A>(as:)();
  v19 = v85[0];
  if (v85[0])
  {
    v73 = v17;
    v74 = v15;
    v78 = v10;
    v20 = OBJC_IVAR____TtC8AppStore22UberCollectionViewCell_uberView;
    swift_beginAccess();
    v21 = *(v3 + v20);
    v79 = v19;
    if (!v21 || (v22 = *(v21 + OBJC_IVAR____TtC8AppStore14UberHeaderView_uber), , v85[0] = v19, !v22) || (v85[5] = v22, sub_10044B678(&qword_100973B40, &type metadata accessor for Uber, &protocol conformance descriptor for Uber), , v23 = dispatch thunk of static Equatable.== infix(_:_:)(), , , (v23 & 1) == 0))
    {
      v24 = *(v3 + v20);
      v25 = type metadata accessor for ArtworkLoader();
      v26 = type metadata accessor for BaseObjectGraph();
      v27 = v24;
      v72 = v25;
      v71 = v26;
      inject<A, B>(_:from:)();
      if (v24)
      {
        v84 = v27;
        type metadata accessor for UberHeaderView();
        sub_10044B678(&qword_100970F28, type metadata accessor for UberHeaderView, &protocol conformance descriptor for NSObject);
        v28 = v27;
        AnyHashable.init<A>(_:)();
        ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();

        sub_10003D614(v85);
      }

      else
      {
      }

      ItemLayoutContext.state.getter();
      StateLens.init(_:)();
      swift_getKeyPath();
      sub_1001F1774();
      v29 = v79;

      StateLens<A>.subscript.getter();

      v30 = v85[0];
      v31 = objc_allocWithZone(type metadata accessor for UberHeaderView());
      v32 = v82;

      v33 = sub_100112C00(v29, (v30 & 1) == 0, v32);
      v34 = *(v3 + v20);
      *(v3 + v20) = v33;
      v35 = v33;
      sub_1005E2138(v34);

      v70 = v20;
      v69 = v3;
      v36 = *(v3 + v20);
      if (v36)
      {
        v37 = v36;
        v38 = Uber.title.getter();
        sub_1001136B0(v38, v39);
      }

      v40 = v5;
      v41 = *(v5 + 104);
      v42 = v76;
      v41(v9, enum case for PageGrid.Direction.vertical(_:), v76);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      PageGrid.componentMeasuringSize(spanning:)();
      v43 = *(v77 + 8);
      v44 = v78;
      v43(v12, v78);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      PageGrid.safeAreaInsets.getter();
      v45 = v44;
      v46 = v43;
      v43(v12, v45);
      (*(v40 + 16))(v75, v9, v42);
      sub_10069F96C(0.0);
      v47 = v74;
      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
      (*(v40 + 8))(v9, v42);
      v48 = v70;
      v49 = v69;
      v50 = *(v69 + v70);
      if (v50)
      {
        v51 = v50;
        PageGrid.horizontalMargins.getter();
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v60 = OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView;
        [*&v51[OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView] layoutMargins];
        if (v53 == v64 && v55 == v61 && v57 == v62 && v59 == v63 || ([*&v51[v60] setLayoutMargins:{v53, v55, v57, v59, v69, v70}], objc_msgSend(v51, "invalidateIntrinsicContentSize"), (v65 = *&v51[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver]) == 0))
        {
        }

        else
        {
          v66 = *&v51[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver + 8];

          v65(v67);

          sub_10001F63C(v65, v66);
        }
      }

      inject<A, B>(_:from:)();
      sub_10044AD38(v79, v83, v85[0]);

      swift_beginAccess();
      v68 = *(v49 + v48);
      if (v68)
      {
        swift_endAccess();
        [v68 setNeedsLayout];

        v46(v47, v78);
        (*(v73 + 8))(v80, v81);
        return;
      }

      v46(v47, v78);
      (*(v73 + 8))(v80, v81);
      swift_endAccess();
    }
  }
}

uint64_t sub_10044AD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  v5 = type metadata accessor for AspectRatio();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PageGrid();
  v46 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Uber.Style();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = &v41 - v13;
  v14 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  __chkstk_darwin(v14 - 8);
  v53 = sub_10002849C(&qword_1009812D8, &qword_1007C8CB8);
  v48 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v41 - v15;
  v16 = type metadata accessor for Uber.AssetType();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Uber.assetType.getter();
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 != enum case for Uber.AssetType.artwork(_:))
  {
    if (v20 == enum case for Uber.AssetType.video(_:))
    {
      result = Uber.video.getter();
      if (!result)
      {
        return result;
      }

      Video.preview.getter();
    }

    else
    {
      if (v20 != enum case for Uber.AssetType.icon(_:))
      {
        return (*(v17 + 8))(v19, v16);
      }

      result = Uber.iconArtwork.getter();
      if (!result)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v21 = v59;
  v22 = UITraitCollection.isSizeClassCompact.getter();

  if (v22)
  {
    result = Uber.compactArtwork.getter();
    if (!result)
    {
      return result;
    }

LABEL_12:

    v24 = OBJC_IVAR____TtC8AppStore22UberCollectionViewCell_uberView;
    swift_beginAccess();
    v25 = *(v4 + v24);
    if (!v25)
    {
    }

    v41 = v25;
    ItemLayoutContext.state.getter();
    StateLens.init(_:)();
    v26 = v47;
    Uber.style.getter();
    swift_getKeyPath();
    sub_1001F1774();
    StateLens<A>.subscript.getter();

    v27 = v56;
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    v29 = v28;
    v30 = *(v46 + 8);
    v30(v9, v7);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    v32 = v31;
    v30(v9, v7);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v33 = v58;
    sub_1001158BC(v58, v26, (v27 & 1) == 0, v32, v29, 0);
    v34 = UITraitCollection.isSizeClassCompact.getter();
    v36 = v49;
    v35 = v50;
    if (v34)
    {
      v37 = v42;
      (*(v49 + 104))(v42, enum case for Uber.Style.inline(_:), v50);
      sub_10044B678(&qword_100973B50, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v56 == v54 && v57 == v55)
      {
        (*(v36 + 8))(v37, v35);

LABEL_21:
        Artwork.config(_:mode:prefersLayeredImage:)();

        (*(v36 + 8))(v26, v35);
        type metadata accessor for UberHeaderView();
        sub_10044B678(&qword_100973B48, type metadata accessor for UberHeaderView, &unk_1007B2550);
        v40 = v41;
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

        return (*(v48 + 8))(v52, v53);
      }

      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v36 + 8))(v37, v35);

      if (v38)
      {
        goto LABEL_21;
      }
    }

    Artwork.size.getter();
    v39 = v43;
    AspectRatio.init(_:_:)();
    AspectRatio.width(fromHeight:)();
    (*(v44 + 8))(v39, v45);
    goto LABEL_21;
  }

  result = Uber.artwork.getter();
  if (result)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_10044B550@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore22UberCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_10044B5AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore22UberCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10044B678(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10044B6D4()
{
  result = qword_100985D78;
  if (!qword_100985D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100985D78);
  }

  return result;
}

unint64_t sub_10044B72C()
{
  result = qword_100985D80;
  if (!qword_100985D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100985D80);
  }

  return result;
}

void sub_10044B780(void *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore23PurchasesViewController_hideAllButton;
  v3 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_hideAllButton];
  *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_hideAllButton] = a1;
  v6 = a1;

  if (!*&v1[v2])
  {
    v4 = [v1 navigationItem];
    v5 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_doneButtonItem];
    [v4 setRightBarButtonItem:v5];
  }
}

void sub_10044B830(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  *(v3 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDataSource) = 0;
  *(v3 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDelegate) = 0;
  v7 = OBJC_IVAR____TtC8AppStore23PurchasesViewController_collectionViewTableLayout;
  *(v3 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_collectionViewTableLayout) = 0;
  v8 = OBJC_IVAR____TtC8AppStore23PurchasesViewController_navigationBarPalettePresenter;
  type metadata accessor for NavigationBarPalettePresenter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v9 + 50) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 24) = 0u;
  *(v4 + v8) = v9;
  *(v4 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_hideAllButton) = 0;
  *(v4 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_doneButtonItem) = 0;
  *(v4 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_emptyStateView) = 0;
  *(v4 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_flowPreviewing) = 0;
  *(v4 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_presenter) = a1;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  *(v4 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_artworkLoader) = v26;
  sub_10002849C(&qword_100985EF8, &qword_1007CDAC8);
  swift_allocObject();

  *(v4 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_shelfDataSource) = sub_1003C940C();
  *(v4 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_segmentedControlView) = [objc_allocWithZone(type metadata accessor for SegmentedControlView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v4 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_searchBar) = [objc_allocWithZone(type metadata accessor for SearchBar()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = [objc_allocWithZone(type metadata accessor for CollectionViewTableLayout()) init];
  v11 = *(v4 + v7);
  *(v4 + v7) = v10;
  v12 = v10;

  if (v12)
  {

    v13 = sub_1000659FC(v12, a2);

    swift_unknownObjectWeakAssign();
    sub_1004501DC(&qword_100985F00, v14, type metadata accessor for PurchasesViewController, &unk_1007CDA80);
    v15 = v13;
    PurchasesContentPresenter.view.setter();
    v16 = v15;
    PurchasesContentPresenter.pageTitle.getter();
    v17 = String._bridgeToObjectiveC()();

    [v16 setTitle:v17];

    *(v16 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle) = 0;
    v18 = [v16 navigationItem];
    [v18 setLargeTitleDisplayMode:2];

    v19 = sub_1004501DC(&qword_100985F08, 255, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = a1;
    v21[4] = v19;

    v22 = v16;
    v24 = sub_10045003C(a1, v22, sub_1002EA09C, v21, a2, v23);

    v25 = *&v22[OBJC_IVAR____TtC8AppStore23PurchasesViewController_flowPreviewing];
    *&v22[OBJC_IVAR____TtC8AppStore23PurchasesViewController_flowPreviewing] = v24;
  }

  else
  {
    __break(1u);
  }
}

void sub_10044BC28()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for PurchasesContentMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v101 - v8;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v101 - v12;
  v115.receiver = v1;
  v115.super_class = ObjectType;
  objc_msgSendSuper2(&v115, "viewDidLoad", v11);
  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  v16 = sub_100005744(0, &qword_100970180, UIColor_ptr);
  v17 = static UIColor.defaultBackground.getter();
  [v15 setBackgroundColor:v17];

  v18 = [v1 collectionView];
  if (!v18)
  {
    return;
  }

  v108 = v13;
  v109 = v9;
  v105 = v6;
  v106 = v3;
  v111 = v4;
  v112 = v16;
  v19 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_presenter];
  v20 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_shelfDataSource];
  v110 = v18;
  v21 = [v1 snapshotPageTraitEnvironment];
  v22 = *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
  v23 = type metadata accessor for PurchasesCollectionViewDataSource();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC8AppStore33PurchasesCollectionViewDataSource_presenter] = v19;
  *&v24[OBJC_IVAR____TtC8AppStore33PurchasesCollectionViewDataSource_shelfDataSource] = v20;

  v25 = [v21 snapshotPageTraitEnvironment];
  *&v24[OBJC_IVAR____TtC8AppStore33PurchasesCollectionViewDataSource_pageTraits] = v25;
  *&v24[OBJC_IVAR____TtC8AppStore33PurchasesCollectionViewDataSource_objectGraph] = v22;
  v114.receiver = v24;
  v114.super_class = v23;

  v26 = objc_msgSendSuper2(&v114, "init");
  swift_unknownObjectRelease();
  v27 = OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDataSource;
  v28 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDataSource];
  *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDataSource] = v26;

  v29 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_artworkLoader];
  v30 = [v1 snapshotPageTraitEnvironment];
  v31 = type metadata accessor for PurchasesCollectionViewDelegate();
  v32 = objc_allocWithZone(v31);
  v33 = &v32[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_didScrollHandler];
  *v33 = 0;
  *(v33 + 1) = 0;
  *&v32[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_objectGraph] = v22;
  *&v32[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_presenter] = v19;
  *&v32[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_shelfDataSource] = v20;
  *&v32[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_artworkLoader] = v29;
  v107 = v19;

  v34 = [v30 snapshotPageTraitEnvironment];
  *&v32[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_pageTraits] = v34;
  v113.receiver = v32;
  v113.super_class = v31;
  v35 = objc_msgSendSuper2(&v113, "init");
  swift_unknownObjectRelease();
  v36 = OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDelegate;
  v37 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDelegate];
  *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDelegate] = v35;
  v38 = v35;

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = &v38[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_didScrollHandler];
  v41 = *&v38[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_didScrollHandler];
  v42 = *&v38[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_didScrollHandler + 8];
  *v40 = sub_100450240;
  v40[1] = v39;

  sub_10001F63C(v41, v42);

  v43 = *&v1[v36];
  v44 = v43;
  sub_1000632CC(v43);
  v45 = *&v1[v27];
  v46 = v45;
  sub_1000632E0(v45);
  v47 = v110;
  v48 = v110;
  v49 = static UIColor.defaultBackground.getter();
  [v48 setBackgroundColor:v49];

  [v48 setAlwaysBounceVertical:1];
  v50 = OBJC_IVAR____TtC8AppStore23PurchasesViewController_collectionViewTableLayout;
  v51 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_collectionViewTableLayout];
  if (!v51)
  {
    goto LABEL_18;
  }

  [v51 setSeparatorInset:{0.0, 92.0, 0.0, 20.0}];
  v52 = *&v1[v50];
  v53 = v106;
  if (!v52)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  [v52 _setShowsAdditionalSeparators:0];
  sub_10002849C(&qword_100985F38, &unk_1007CDAE0);
  v54 = type metadata accessor for Shelf.ContentType();
  v55 = *(v54 - 8);
  v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1007B10D0;
  (*(v55 + 104))(v57 + v56, enum case for Shelf.ContentType.purchasesLockup(_:), v54);
  v58 = sub_1000833C4(v57);
  swift_setDeallocating();
  (*(v55 + 8))(v57 + v56, v54);
  swift_deallocClassInstance();
  v59 = v48;
  sub_100450248(v58, v47);

  sub_100450658(v47);

  PurchasesContentPresenter.didLoad()();
  v60 = v108;
  PurchasesContentPresenter.mode.getter();
  v61 = v111;
  v62 = v109;
  (*(v111 + 104))(v109, enum case for PurchasesContentMode.hidden(_:), v53);
  sub_1004501DC(&qword_100985F28, 255, &type metadata accessor for PurchasesContentMode, &protocol conformance descriptor for PurchasesContentMode);
  LOBYTE(v57) = dispatch thunk of static Equatable.== infix(_:_:)();
  v65 = *(v61 + 8);
  v63 = v61 + 8;
  v64 = v65;
  v65(v62, v53);
  v65(v60, v53);
  if ((v57 & 1) == 0)
  {
    v103 = v59;
    v104 = v64;
    v66 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_segmentedControlView];
    [v1 pageMarginInsets];
    [v66 setLayoutMargins:?];
    sub_10044C7EC();
    v67 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v112 = OBJC_IVAR____TtC8AppStore20SegmentedControlView_segmentedControl;
    v68 = *&v66[OBJC_IVAR____TtC8AppStore20SegmentedControlView_segmentedControl];

    [v68 removeTarget:v66 action:"selectedIndexChangedIn:" forControlEvents:4096];
    v69 = &v66[OBJC_IVAR____TtC8AppStore20SegmentedControlView_segmentDidChangeHandler];
    v70 = *&v66[OBJC_IVAR____TtC8AppStore20SegmentedControlView_segmentDidChangeHandler];
    v71 = *&v66[OBJC_IVAR____TtC8AppStore20SegmentedControlView_segmentDidChangeHandler + 8];
    *v69 = sub_100450894;
    v69[1] = v67;
    swift_retain_n();
    sub_10001F63C(v70, v71);

    v72 = v68;
    v73 = v66;
    [v72 addTarget:v66 action:"selectedIndexChangedIn:" forControlEvents:4096];

    v74 = PurchasesContentPresenter.purchasesContentModes.getter();
    v75 = *(v74 + 16);
    if (v75)
    {
      v101 = v1;
      v102 = v74;
      v76 = *(v111 + 16);
      v77 = v74 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
      v109 = *(v111 + 72);
      v110 = v76;
      v111 = v63;
      v79 = v104;
      v78 = v105;
      do
      {
        (v110)(v78, v77, v53);
        v80 = v73;
        v81 = *&v73[v112];
        PurchasesContentMode.displayTitle.getter();
        v82 = String._bridgeToObjectiveC()();

        v83 = PurchasesContentMode.segmentIndex.getter();
        v79(v78, v53);
        [v81 insertSegmentWithTitle:v82 atIndex:v83 animated:0];

        v73 = v80;
        v77 += v109;
        --v75;
      }

      while (v75);

      v1 = v101;
    }

    else
    {
    }

    v84 = *&v73[v112];
    v85 = v108;
    PurchasesContentPresenter.mode.getter();
    v86 = PurchasesContentMode.segmentIndex.getter();
    v104(v85, v53);
    [v84 setSelectedSegmentIndex:v86];

    v59 = v103;
  }

  v87 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_searchBar];
  v88._countAndFlagsBits = 0x484352414553;
  v88._object = 0xE600000000000000;
  v89._countAndFlagsBits = 0;
  v89._object = 0xE000000000000000;
  localizedString(_:comment:)(v88, v89);
  v90 = String._bridgeToObjectiveC()();

  [v87 setPlaceholder:v90];

  [v87 setHidden:1];
  [v87 setDelegate:v1];
  v91 = [objc_allocWithZone(UIImage) init];
  [v87 setBackgroundImage:v91];

  v92 = [v1 view];
  if (!v92)
  {
    goto LABEL_20;
  }

  v93 = v92;
  [v92 addSubview:v87];

  v94 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_flowPreviewing];
  if (v94)
  {
    v95 = objc_allocWithZone(UIContextMenuInteraction);
    v96 = v94;
    v97 = [v95 initWithDelegate:v96];
    [v59 addInteraction:v97];
  }

  v98 = [v1 navigationItem];
  v99 = [v98 rightBarButtonItem];

  v100 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_doneButtonItem];
  *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_doneButtonItem] = v99;
}

void sub_10044C6FC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong view];
    if (v5)
    {
      v6 = v5;
      [v5 endEditing:1];

      v7 = *&v4[OBJC_IVAR____TtC8AppStore23PurchasesViewController_searchBar];
      [a1 contentOffset];
      [v7 frame];
      CGRectGetHeight(v8);
      [v7 frame];
      [v7 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10044C7EC()
{
  v1 = v0;
  v2 = [v0 parentViewController];
  v3 = [v2 navigationController];

  if (!v3 || (v3, (v4 = [v1 parentViewController]) == 0) || (v5 = v4, v6 = objc_msgSend(v4, "navigationItem"), v5, (v7 = v6) == 0))
  {
    v7 = [v1 navigationItem];
  }

  v8 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_navigationBarPalettePresenter];
  v9 = v7;
  sub_1006E358C(v9, 0, 1);

  v10 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_segmentedControlView];
  v51[3] = type metadata accessor for SegmentedControlView();
  v51[4] = &protocol witness table for UIView;
  v51[0] = v10;
  sub_10002C0AC(v51, v50);
  sub_10002C0AC(v50, v49);
  v11 = swift_allocObject();
  sub_100177264(v50, v11 + 16);
  v12 = v10;
  sub_100007000(v51);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_100007000(v49);
    return;
  }

  v14 = Strong;
  v15 = *(v8 + 24);
  if (v15)
  {
    [v15 setHidden:1];
  }

  v16 = v12;
  [v16 setHidden:0];
  v17 = [v16 superview];
  v18 = [v14 contentView];
  v19 = v18;
  if (v17)
  {
    if (v18)
    {
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v19 = v17;
  }

  else if (!v18)
  {
    goto LABEL_18;
  }

LABEL_17:
  v21 = [v14 contentView];
  [v21 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [v16 setFrame:{v23, v25, v27, v29}];
  [v16 setAutoresizingMask:18];
  v30 = [v14 contentView];
  [v30 addSubview:v16];

LABEL_18:
  v31 = *(v8 + 24);
  *(v8 + 24) = v10;
  v32 = v16;

  if (*(v8 + 65))
  {
    v33 = [v14 contentView];
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    LayoutMarginsAware<>.layoutFrame.getter();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v52.origin.x = v35;
    v52.origin.y = v37;
    v52.size.width = v39;
    v52.size.height = v41;
    CGRectGetWidth(v52);
    v42 = [v14 contentView];
    sub_10002A400(v49, v49[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v44 = v43;

    [v14 setPreferredHeight:v44];
    [v14 preferredHeight];
    [v14 setMinimumHeight:?];
  }

  v45 = *(v8 + 32);
  v46 = *(v8 + 40);
  v47 = *(v8 + 48);
  v48 = *(v8 + 56);
  *(v8 + 32) = sub_100403924;
  *(v8 + 40) = v11;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  sub_10040392C(v45, v46, v47, v48);

  sub_100007000(v49);
}

void sub_10044CC24(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10044CC80(a1);
  }
}

id sub_10044CC80(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for PurchasesContentMode();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v10 = result;
  [result endEditing:1];

  v11 = [a1 selectedSegmentIndex];
  v12 = enum case for PurchasesContentMode.all(_:);
  v13 = *(v5 + 104);
  v13(v8, enum case for PurchasesContentMode.all(_:), v4);
  v14 = PurchasesContentMode.segmentIndex.getter();
  v15 = *(v5 + 8);
  v15(v8, v4);
  if (v14 == v11 || (v12 = enum case for PurchasesContentMode.notOnDevice(_:), v13(v8, enum case for PurchasesContentMode.notOnDevice(_:), v4), v16 = PurchasesContentMode.segmentIndex.getter(), v15(v8, v4), v16 == v11))
  {
    sub_10044B780(0);
LABEL_5:
    v13(v8, v12, v4);
    return PurchasesContentPresenter.mode.setter();
  }

  v12 = enum case for PurchasesContentMode.hidden(_:);
  v13(v8, enum case for PurchasesContentMode.hidden(_:), v4);
  v17 = PurchasesContentMode.segmentIndex.getter();
  result = (v15)(v8, v4);
  if (v17 == v11)
  {
    v18._object = 0x8000000100813E90;
    v18._countAndFlagsBits = 0xD000000000000014;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    localizedString(_:comment:)(v18, v19);
    v38 = ObjectType;
    v37[0] = v2;
    ObjectType = v2;
    v20 = String._bridgeToObjectiveC()();

    v21 = v38;
    if (v38)
    {
      v22 = sub_10002A400(v37, v38);
      v34[1] = v34;
      v35 = v20;
      v23 = *(v21 - 8);
      v24 = __chkstk_darwin(v22);
      v26 = v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v26, v24);
      v27 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v23 + 8))(v26, v21);
      v20 = v35;
      sub_100007000(v37);
    }

    else
    {
      v27 = 0;
    }

    v28 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v20 style:0 target:v27 action:"unhideAll"];

    swift_unknownObjectRelease();
    v29 = ObjectType;
    sub_10044B780(v28);
    v30 = [v29 navigationItem];
    v31 = *&v29[OBJC_IVAR____TtC8AppStore23PurchasesViewController_hideAllButton];
    [v30 setRightBarButtonItem:v31];

    v32 = [v29 navigationItem];
    v33 = [v32 rightBarButtonItem];

    [v33 setEnabled:1];
    goto LABEL_5;
  }

  return result;
}

void sub_10044D168(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v7 = *a4;
  v8 = v9.receiver;
  objc_msgSendSuper2(&v9, v7, a3);
  ArtworkLoader.isOccluded.setter();
}

void sub_10044D1F0(void *a1, uint64_t a2, const char **a3, uint64_t a4)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v5 = *a3;
  v6 = v7.receiver;
  objc_msgSendSuper2(&v7, v5);
  ArtworkLoader.isOccluded.setter();
}

void sub_10044D260()
{
  v49.receiver = v0;
  v49.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v49, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore23PurchasesViewController_searchBar];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v50.origin.x = v5;
  v50.origin.y = v7;
  v50.size.width = v9;
  v50.size.height = v11;
  CGRectGetWidth(v50);
  v12 = [v0 view];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;

  [v1 sizeThatFits:{v15, v17}];
  [v1 frame];
  [v1 setFrame:?];
  v18 = [v0 collectionView];
  if (v18)
  {
    v19 = v18;
    [v1 frame];
    Height = CGRectGetHeight(v51);
    [v19 contentInset];
    [v19 setContentInset:Height];
  }

  v21 = *&v0[OBJC_IVAR____TtC8AppStore23PurchasesViewController_emptyStateView];
  if (v21)
  {
    v22 = v21;
    v23 = [v0 view];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 safeAreaLayoutGuide];

      [v25 layoutFrame];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      [v0 pageMarginInsets];
      v36 = sub_1000CC354(v27, v29, v31, v33, v34, v35);
      v38 = v37;
      v40 = v39;
      v42 = v41;
      [v1 frame];
      MaxY = CGRectGetMaxY(v52);
      v53.origin.x = v36;
      v53.origin.y = v38;
      v53.size.width = v40;
      v53.size.height = v42;
      v44 = CGRectGetHeight(v53);
      [v1 frame];
      v45 = v44 - CGRectGetMaxY(v54);
      v46 = v22;
      [v0 pageMarginInsets];
      v48 = v47;
      v55.origin.x = v36;
      v55.origin.y = v38;
      v55.size.width = v40;
      v55.size.height = v42;
      [v46 setFrame:{v48, MaxY, CGRectGetWidth(v55), v45}];

      return;
    }

LABEL_11:
    __break(1u);
  }
}

void sub_10044D5A8(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v35.receiver = v4;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v8 = *&v4[OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDelegate];
  if (!v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = &selRef_setRequiresColorStatistics_;
  v11 = [v4 traitCollection];
  v12 = type metadata accessor for SnapshotPageTraitEnvironment();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v14 = a2;
  v14[1] = a3;
  *&v13[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v11;
  v34.receiver = v13;
  v34.super_class = v12;
  v15 = &StringUserDefaultsDebugSetting;
  v16 = objc_msgSendSuper2(&v34, "init");
  v17 = [v4 collectionView];
  v18 = [v16 snapshotPageTraitEnvironment];
  *&v9[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_pageTraits] = v18;
  v19 = swift_unknownObjectRelease();
  if (v17)
  {
    v31[1] = v31;
    v32 = *(*&v9[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_shelfDataSource] + 24);
    __chkstk_darwin(v19);
    v20 = v17;

    sub_10002849C(&unk_100980500, &unk_1007C5220);
    sub_100056080();
    v15 = &StringUserDefaultsDebugSetting;
    StateStore.performTransaction<A>(_:)();
    v10 = &selRef_setRequiresColorStatistics_;
  }

  else
  {
  }

  v21 = *&v4[OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDataSource];
  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = v21;
  v23 = [v4 v10[35]];
  v24 = objc_allocWithZone(v12);
  v25 = &v24[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v25 = a2;
  v25[1] = a3;
  *&v24[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v23;
  v33.receiver = v24;
  v33.super_class = v12;
  v26 = objc_msgSendSuper2(&v33, v15[40].base_prots);
  v27 = [v4 collectionView];
  v28 = [v26 snapshotPageTraitEnvironment];
  *&v22[OBJC_IVAR____TtC8AppStore33PurchasesCollectionViewDataSource_pageTraits] = v28;
  v29 = swift_unknownObjectRelease();
  if (v27)
  {
    v32 = *(*&v22[OBJC_IVAR____TtC8AppStore33PurchasesCollectionViewDataSource_shelfDataSource] + 24);
    __chkstk_darwin(v29);
    v30 = v27;

    sub_10002849C(&unk_100980500, &unk_1007C5220);
    sub_100056080();
    StateStore.performTransaction<A>(_:)();
  }

  else
  {
  }
}

void sub_10044D9F8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for PurchasesContentMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = v34 - v11;
  v36.receiver = v2;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, "traitCollectionDidChange:", a1, v10);
  PurchasesContentPresenter.mode.getter();
  (*(v6 + 104))(v8, enum case for PurchasesContentMode.hidden(_:), v5);
  sub_1004501DC(&qword_100985F28, 255, &type metadata accessor for PurchasesContentMode, &protocol conformance descriptor for PurchasesContentMode);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v12, v5);
  if ((a1 & 1) == 0)
  {
    v14 = *&v2[OBJC_IVAR____TtC8AppStore23PurchasesViewController_segmentedControlView];
    [v2 pageMarginInsets];
    [v14 setLayoutMargins:?];
  }

  v15 = *&v2[OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDelegate];
  if (!v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = &StringUserDefaultsDebugSetting;
  v18 = [v2 snapshotPageTraitEnvironment];
  v19 = [v2 collectionView];
  v20 = [v18 snapshotPageTraitEnvironment];
  *&v16[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_pageTraits] = v20;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v21 = *&v16[OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_shelfDataSource];
  v22 = [v20 snapshotPageTraitEnvironment];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v23 = [v19 reloadData];
  if (v19)
  {
    v34[1] = v34;
    v35 = *(v21 + 24);
    __chkstk_darwin(v23);
    v34[-2] = v19;
    v34[-1] = v21;
    v24 = v19;

    sub_10002849C(&unk_100980500, &unk_1007C5220);
    sub_100056080();
    v17 = &StringUserDefaultsDebugSetting;
    StateStore.performTransaction<A>(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v25 = *&v2[OBJC_IVAR____TtC8AppStore23PurchasesViewController_purchasesCollectionViewDataSource];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v2 v17[54].base_prots];
  v28 = [v2 collectionView];
  v29 = [v27 v17[54].base_prots];
  *&v26[OBJC_IVAR____TtC8AppStore33PurchasesCollectionViewDataSource_pageTraits] = v29;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v30 = *&v26[OBJC_IVAR____TtC8AppStore33PurchasesCollectionViewDataSource_shelfDataSource];
  v31 = [v29 v17[54].base_prots];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v32 = [v28 reloadData];
  if (v28)
  {
    v35 = *(v30 + 24);
    __chkstk_darwin(v32);
    v34[-2] = v28;
    v34[-1] = v30;
    v33 = v28;

    sub_10002849C(&unk_100980500, &unk_1007C5220);
    sub_100056080();
    StateStore.performTransaction<A>(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_10044E254()
{
  v1 = v0;
  v2 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v2 - 8);
  if (PurchasesContentPresenter.sectionCount.getter())
  {
    v3 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v4 = *&v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v5 = *&v0[v3];
    *&v0[v3] = 0;

    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];

      static ViewControllerContainment.add(_:to:frame:)();
      return;
    }

    __break(1u);
  }

  else
  {
    static JULoadingViewController.PresentationContext.placeholder.getter();
    v8 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
    v9 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
    v10 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v11 = *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v12 = *&v1[v10];
    *&v1[v10] = v9;
    v13 = v9;

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];

      static ViewControllerContainment.add(_:to:frame:)();
      return;
    }
  }

  __break(1u);
}

void sub_10044E454()
{
  v1 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  if (v2)
  {
    type metadata accessor for JULoadingViewController();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      static ViewControllerContainment.remove(_:)();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        static ViewControllerContainment.add(_:to:frame:)();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_10044E53C(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for JUContentUnavailableViewController();
  sub_1004501DC(&qword_100985F20, 255, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for BasePresenter);
  swift_errorRetain();

  v3 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
  v4 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v5 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v6 = *&v2[v4];
  *&v2[v4] = v3;
  v9 = v3;

  v7 = [v2 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    static ViewControllerContainment.add(_:to:frame:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_10044E6BC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore23PurchasesViewController_emptyStateView;
  v3 = *&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_emptyStateView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v1[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v2] = 0;

  v5 = [v1 collectionView];
  if (v5)
  {
    v6 = v5;
    [v5 setHidden:0];
  }

  sub_1006E3954();
  [*&v1[OBJC_IVAR____TtC8AppStore23PurchasesViewController_searchBar] setHidden:0];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1004501D4;
  *(v9 + 24) = v8;
  v11[4] = sub_10006F258;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000489A8;
  v11[3] = &unk_1008C36F0;
  v10 = _Block_copy(v11);

  [v7 performWithoutAnimation:v10];
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

void sub_10044E8B0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong collectionView];

    if (!v3)
    {
      __break(1u);
      return;
    }

    [v3 reloadData];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 collectionView];

    if (v6)
    {
      [v6 layoutIfNeeded];
    }
  }
}

void sub_10044E990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v14 = [v6 collectionView];
  if (v14)
  {
    v15 = v14;
    [v14 setHidden:1];
  }

  v16 = *&v7[OBJC_IVAR____TtC8AppStore23PurchasesViewController_navigationBarPalettePresenter];
  if (a5)
  {
    sub_1006E3954();
  }

  else
  {
    v17 = *(v16 + 24);
    if (v17)
    {
      if (*(v16 + 65) == 1)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          [v17 setHidden:1];
          [v19 setMinimumHeight:0.0];
          [v19 setPreferredHeight:0.0];

          *(v16 + 65) = 0;
        }
      }
    }
  }

  [*&v7[OBJC_IVAR____TtC8AppStore23PurchasesViewController_searchBar] setHidden:(a6 & 1) == 0];
  v20 = objc_allocWithZone(type metadata accessor for EmptyStateView(0));

  v21 = sub_1003D8D40(a1, a2, a3, a4);
  v22 = OBJC_IVAR____TtC8AppStore23PurchasesViewController_emptyStateView;
  v23 = *&v7[OBJC_IVAR____TtC8AppStore23PurchasesViewController_emptyStateView];
  if (v23)
  {
    [v23 removeFromSuperview];
    v24 = *&v7[v22];
  }

  else
  {
    v24 = 0;
  }

  *&v7[v22] = v21;
  v25 = v21;

  [v25 setUserInteractionEnabled:0];
  v26 = [v7 view];
  if (!v26)
  {
    __break(1u);
    goto LABEL_18;
  }

  v27 = v26;
  [v26 addSubview:v25];

  v28 = [v7 view];
  if (!v28)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v29 = v28;
  [v28 setNeedsLayout];
}

void sub_10044EBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = [v3 collectionView];
  if (v10)
  {
    v11 = v10;
    (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
    v12 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = a2;
    *(v13 + 3) = a3;
    *(v13 + 4) = v3;
    (*(v8 + 32))(&v13[v12], aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v14 = swift_allocObject();
    *(v14 + 16) = sub_10045016C;
    *(v14 + 24) = v13;
    aBlock[4] = sub_10006F094;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000489A8;
    aBlock[3] = &unk_1008C3678;
    v15 = _Block_copy(aBlock);
    v16 = v3;

    [v11 performBatchUpdates:v15 completion:0];
    _Block_release(v15);
  }
}

void sub_10044EDD4(void (*a1)(void), uint64_t a2, void *a3, uint64_t a4)
{
  a1();
  v6 = [a3 collectionView];
  if (v6)
  {
    v7 = v6;
    sub_10002849C(&qword_10096FCE8, qword_1007BCF50);
    v8 = type metadata accessor for IndexPath();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1007B10D0;
    (*(v9 + 16))(v11 + v10, a4, v8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 deleteItemsAtIndexPaths:isa];
  }
}

void sub_10044EF48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v65 - v8;
  v9 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v65 - v13;
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100031660(a2, v103, &unk_1009711D0, &unk_1007B1A10);
  if (v104)
  {
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    if (swift_dynamicCast())
    {
      v21 = v72;
      [v21 bounds];
      LOBYTE(v97) = 1;
      *&v79 = v21;
      *(&v79 + 1) = v22;
      *&v80 = v23;
      *(&v80 + 1) = v24;
      *&v81 = v25;
      BYTE8(v81) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v82 = _Q0;
      v83 = _Q0;
      v84 = 15;
      sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
      *v20 = static OS_dispatch_queue.main.getter();
      (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
      v31 = _dispatchPreconditionTest(_:)();
      (*(v18 + 8))(v20, v17);
      if (v31)
      {
        v87 = xmmword_100975F50;
        v88 = xmmword_100975F60;
        v89 = xmmword_100975F70;
        v85 = xmmword_100975F30;
        v86 = xmmword_100975F40;
        v93 = v81;
        v94 = v82;
        v95 = v83;
        v91 = v79;
        v92 = v80;
        v97 = xmmword_100975F30;
        v98 = xmmword_100975F40;
        v100 = xmmword_100975F60;
        v101 = xmmword_100975F70;
        v90 = qword_100975F80;
        v96 = v84;
        v102 = qword_100975F80;
        v99 = xmmword_100975F50;
        sub_100031660(&v85, &v73, &unk_10097F520, &unk_1007BA430);
        xmmword_100975F50 = v93;
        xmmword_100975F60 = v94;
        xmmword_100975F70 = v95;
        qword_100975F80 = v96;
        xmmword_100975F30 = v91;
        xmmword_100975F40 = v92;
        sub_10002B894(&v97, &unk_10097F520, &unk_1007BA430);
        v32 = *&v71[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
        v33 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
        sub_10019DADC(&v79, &v73);
        BaseObjectGraph.injectIfAvailable<A>(_:)();
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(v16, 1, v33) == 1)
        {
          sub_10002B894(v16, &unk_100972A00, &unk_1007B3130);
        }

        else
        {
          sub_1005F9AF4(a1, 1, v32, v16);

          (*(v34 + 8))(v16, v33);
        }

        v75 = xmmword_100975F50;
        v76 = xmmword_100975F60;
        v77 = xmmword_100975F70;
        v78 = qword_100975F80;
        v73 = xmmword_100975F30;
        v74 = xmmword_100975F40;
        xmmword_100975F30 = v85;
        xmmword_100975F40 = v86;
        xmmword_100975F50 = v87;
        xmmword_100975F60 = v88;
        xmmword_100975F70 = v89;
        qword_100975F80 = v90;
        sub_10002B894(&v73, &unk_10097F520, &unk_1007BA430);
        sub_10019DB38(&v79);

        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v66 = a1;
  }

  else
  {
    v66 = a1;
    sub_10002B894(v103, &unk_1009711D0, &unk_1007B1A10);
  }

  v35 = [v71 collectionView];
  if (!v35)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v36 = v35;
  v37 = [v35 indexPathsForSelectedItems];

  if (!v37)
  {
LABEL_20:
    v61 = *&v71[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
    v62 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v11, 1, v62) == 1)
    {
      sub_10002B894(v11, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      sub_1005F9AF4(v66, 1, v61, v11);

      (*(v63 + 8))(v11, v62);
    }

    return;
  }

  v38 = v70;
  v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v39 + 16))
  {

    goto LABEL_20;
  }

  v40 = v69;
  (*(v69 + 16))(v6, v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v38);

  v41 = *(v40 + 32);
  v42 = v68;
  v41(v68, v6, v38);
  v43 = [v71 collectionView];
  if (!v43)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = v42;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v47 = [v44 cellForItemAtIndexPath:isa];

  if (!v47)
  {
    (*(v69 + 8))(v45, v70);
    goto LABEL_20;
  }

  v48 = v47;
  [v48 bounds];
  LOBYTE(v97) = 1;
  *&v79 = v47;
  *(&v79 + 1) = v49;
  *&v80 = v50;
  *(&v80 + 1) = v51;
  *&v81 = v52;
  BYTE8(v81) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v82 = _Q0;
  v83 = _Q0;
  v84 = 15;
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  *v20 = static OS_dispatch_queue.main.getter();
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v54 = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if ((v54 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v87 = xmmword_100975F50;
  v88 = xmmword_100975F60;
  v89 = xmmword_100975F70;
  v85 = xmmword_100975F30;
  v86 = xmmword_100975F40;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v91 = v79;
  v92 = v80;
  v97 = xmmword_100975F30;
  v98 = xmmword_100975F40;
  v100 = xmmword_100975F60;
  v101 = xmmword_100975F70;
  v90 = qword_100975F80;
  v96 = v84;
  v102 = qword_100975F80;
  v99 = xmmword_100975F50;
  sub_100031660(&v85, &v73, &unk_10097F520, &unk_1007BA430);
  xmmword_100975F50 = v93;
  xmmword_100975F60 = v94;
  xmmword_100975F70 = v95;
  qword_100975F80 = v96;
  xmmword_100975F30 = v91;
  xmmword_100975F40 = v92;
  sub_10002B894(&v97, &unk_10097F520, &unk_1007BA430);
  v55 = *&v71[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
  v56 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  sub_10019DADC(&v79, &v73);
  v57 = v67;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v58 = *(v56 - 8);
  v59 = (*(v58 + 48))(v57, 1, v56);
  v60 = v68;
  if (v59 == 1)
  {
    sub_10002B894(v57, &unk_100972A00, &unk_1007B3130);
  }

  else
  {
    sub_1005F9AF4(v66, 1, v55, v57);

    (*(v58 + 8))(v57, v56);
  }

  v64 = v70;
  v75 = xmmword_100975F50;
  v76 = xmmword_100975F60;
  v77 = xmmword_100975F70;
  v78 = qword_100975F80;
  v73 = xmmword_100975F30;
  v74 = xmmword_100975F40;
  xmmword_100975F30 = v85;
  xmmword_100975F40 = v86;
  xmmword_100975F50 = v87;
  xmmword_100975F60 = v88;
  xmmword_100975F70 = v89;
  qword_100975F80 = v90;
  sub_10002B894(&v73, &unk_10097F520, &unk_1007BA430);
  sub_10019DB38(&v79);

  (*(v69 + 8))(v60, v64);
}

void sub_10044F9A0()
{

  v1 = *(v0 + OBJC_IVAR____TtC8AppStore23PurchasesViewController_flowPreviewing);
}

void sub_10044FCA4(void *a1, uint64_t a2)
{
  v36 = a2;
  v35 = sub_10002849C(&qword_100985F30, &unk_1007B1ED0);
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v26 - v4;
  v33 = type metadata accessor for IndexPath();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v31 = &v26 - v9;
  v37 = a1;
  v10 = [a1 visibleCells];
  sub_100005744(0, &qword_100978E10, UICollectionViewCell_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v14 = v11 & 0xC000000000000001;
    v28 = (v3 + 8);
    v29 = (v5 + 32);
    v27 = (v5 + 8);
    v30 = v11 & 0xC000000000000001;
    v15 = v33;
    do
    {
      if (v14)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v11 + 8 * v13 + 32);
      }

      v17 = v16;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v17 && (v18 = [v37 indexPathForCell:v17]) != 0)
      {
        v19 = v32;
        v20 = v18;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = v11;
        v22 = v31;
        (*v29)(v31, v19, v15);
        v38 = IndexPath.section.getter();
        AnyHashable.init<A>(_:)();
        v23 = v34;
        StatePath.init(component:)();
        TransientStateStore.removeState(at:recursively:)();

        v24 = v23;
        v14 = v30;
        (*v28)(v24, v35);
        v25 = v22;
        v11 = v21;
        (*v27)(v25, v15);
      }

      else
      {
      }

      ++v13;
    }

    while (v12 != v13);
  }
}

id sub_10045003C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v9 = sub_1004501DC(&qword_100985F08, 255, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  v10 = sub_10002849C(&unk_100985F10, &unk_1007CDAD0);
  v11 = objc_allocWithZone(v10);
  v12 = &v11[qword_1009816B8];
  *&v11[qword_1009816B8 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v13 = &v11[qword_1009816B0];
  *v13 = a3;
  *(v13 + 1) = a4;
  *(v12 + 1) = v9;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v11[qword_1009816C8] = a5;
  v15.receiver = v11;
  v15.super_class = v10;
  return objc_msgSendSuper2(&v15, "init");
}

void sub_10045016C()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_10044EDD4(v2, v3, v4, v5);
}

uint64_t sub_1004501DC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100450248(uint64_t a1, void *a2)
{
  v43 = a2;
  v3 = type metadata accessor for Shelf.ContentType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v32[-v7];
  __chkstk_darwin(v9);
  v39 = &v32[-v10];
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.utility(_:), v11);
  v15 = static OS_dispatch_queue.global(qos:)();
  v16 = v14;
  v17 = v8;
  (*(v12 + 8))(v16, v11);
  sub_10072411C(v15, a1);

  v18 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;
  v37 = v4 + 32;
  v38 = v4 + 16;
  v36 = v4 + 88;
  v35 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
  v33 = enum case for Shelf.ContentType.informationRibbon(_:);
  v40 = a1;
  v41 = (v4 + 8);

  v23 = 0;
  v34 = v4;
  while (v21)
  {
LABEL_10:
    v25 = v39;
    v26 = *(v4 + 16);
    v26(v39, *(v40 + 48) + *(v4 + 72) * (__clz(__rbit64(v21)) | (v23 << 6)), v3);
    (*(v4 + 32))(v17, v25, v3);
    v27 = v42;
    v26(v42, v17, v3);
    v28 = (*(v4 + 88))(v27, v3);
    if (v28 == v35)
    {
      type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    }

    else if (v28 == v33)
    {
      type metadata accessor for InformationRibbonCollectionViewCell(0);
    }

    else
    {
      (*v41)(v42, v3);
      if (!sub_1005D8420())
      {
        goto LABEL_4;
      }
    }

    if (v43)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      Shelf.ContentType.string.getter();
      v30 = v17;
      v31 = String._bridgeToObjectiveC()();

      [v43 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v31];

      v17 = v30;
      v4 = v34;
    }

LABEL_4:
    v21 &= v21 - 1;
    (*v41)(v17, v3);
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      return;
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      v23 = v24;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_100450658(void *a1)
{
  if (a1)
  {
    type metadata accessor for TitleHeaderView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = UICollectionElementKindSectionHeader;
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v4 = String._bridgeToObjectiveC()();

    [a1 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v3 withReuseIdentifier:v4];

    type metadata accessor for InteractiveTitleHeaderView(0);
    v5 = swift_getObjCClassFromMetadata();
    v6 = v3;
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v7 = String._bridgeToObjectiveC()();

    [a1 registerClass:v5 forSupplementaryViewOfKind:v6 withReuseIdentifier:v7];

    type metadata accessor for InfiniteScrollFooterView();
    v8 = swift_getObjCClassFromMetadata();
    v9 = UICollectionElementKindSectionFooter;
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v10 = String._bridgeToObjectiveC()();

    [a1 registerClass:v8 forSupplementaryViewOfKind:v9 withReuseIdentifier:v10];

    sub_100005744(0, &qword_10097F580, UICollectionReusableView_ptr);
    v11 = swift_getObjCClassFromMetadata();
    v12 = String._bridgeToObjectiveC()();
    v13 = String._bridgeToObjectiveC()();
    [a1 registerClass:v11 forSupplementaryViewOfKind:v12 withReuseIdentifier:v13];

    v14 = String._bridgeToObjectiveC()();
    v15 = String._bridgeToObjectiveC()();
    [a1 registerClass:v11 forSupplementaryViewOfKind:v14 withReuseIdentifier:v15];
  }
}

uint64_t sub_1004508BC()
{
  v0 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v40 = type metadata accessor for PageGrid.HorizontalMargins();
  v47 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  v15 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v45 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v37 = v17;
  *(v17 + 16) = xmmword_1007B23A0;
  v43 = v17 + v16;
  v49 = 0x4000000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4030000000000000;
  v49 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v46 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v23 = *(v47 + 104);
  v47 += 104;
  v44 = v23;
  v24 = v40;
  v23(v4);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v49) = 0;
  v39 = v2;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  v41 = v7;
  PageGrid.DirectionalValue.init(_:)();
  v38 = v14;
  v42 = v11;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v49 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4034000000000000;
  v49 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v44(v4, v46, v24);
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v27 = v45;
  top = UIEdgeInsetsZero.top;
  v36 = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v49 = 0x4008000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v34 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v34;
  v28 = v40;
  v29 = v44;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v33 = 2 * v27 + v45;
  v49 = 0x4008000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v4 = v34;
  v29(v4, v46, v28);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v33 = 4 * v45;
  v49 = 0x4010000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v34 = vdupq_n_s64(0x404A000000000000uLL);
  *v4 = v34;
  v30 = v40;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v49 = 0x4014000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v4 = v34;
  v44(v4, v46, v30);
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  result = PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  qword_100985F40 = v37;
  return result;
}

uint64_t sub_10045128C()
{
  v0 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v40 = type metadata accessor for PageGrid.HorizontalMargins();
  v47 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  v15 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v45 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v37 = v17;
  *(v17 + 16) = xmmword_1007B23A0;
  v43 = v17 + v16;
  v49 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4030000000000000;
  v49 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v46 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v23 = *(v47 + 104);
  v47 += 104;
  v44 = v23;
  v24 = v40;
  v23(v4);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v49) = 0;
  v39 = v2;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  v41 = v7;
  PageGrid.DirectionalValue.init(_:)();
  v38 = v14;
  v42 = v11;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v49 = 0x3FF8000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4034000000000000;
  v49 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v44(v4, v46, v24);
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v27 = v45;
  top = UIEdgeInsetsZero.top;
  v36 = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v49 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v34 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v34;
  v28 = v40;
  v29 = v44;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v33 = 2 * v27 + v45;
  v49 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v4 = v34;
  v29(v4, v46, v28);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v33 = 4 * v45;
  v49 = 0x4008000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v34 = vdupq_n_s64(0x404A000000000000uLL);
  *v4 = v34;
  v30 = v40;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v49 = 0x4010000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v4 = v34;
  v44(v4, v46, v30);
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  result = PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  qword_100985F48 = v37;
  return result;
}

id sub_100451C5C(char a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8AppStore14UpsellGridView_primaryIcon] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore14UpsellGridView_remainingIcons] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC8AppStore14UpsellGridView_artworkLoader] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore14UpsellGridView_impressionsCalculator] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore14UpsellGridView_iconViews] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC8AppStore14UpsellGridView_amsImpressionItems] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC8AppStore14UpsellGridView_isCompactSheet] = a1;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v8 = v4;
  [v8 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v8 setClipsToBounds:1];

  return v8;
}

uint64_t sub_100451DA4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v36 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for UpsellGridLayout();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for UpsellGridLayout.Metrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v30[-v15];
  v37.receiver = v1;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, "layoutSubviews", v14);
  [v1 bounds];
  width = v38.size.width;
  height = v38.size.height;
  result = CGRectIsEmpty(v38);
  if ((result & 1) == 0)
  {
    v20 = OBJC_IVAR____TtC8AppStore14UpsellGridView_iconViews;
    swift_beginAccess();
    v21 = *&v1[v20];
    if (!(v21 >> 62))
    {
      result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }

LABEL_4:
      v33 = v3;
      v22 = objc_opt_self();
      v31 = [v22 areAnimationsEnabled];
      v32 = v22;
      [v22 setAnimationsEnabled:0];
      v23 = [v1 traitCollection];
      v24 = UITraitCollection.isSizeClassCompact.getter();

      if (v24)
      {
        v25 = [v1 window];
        if (v25)
        {
          v26 = v25;
          [v25 frame];
          CGRectGetWidth(v39);
        }
      }

      UpsellGridLayout.Metrics.init(dimensionSmallIconCount:isExtendedHeight:iconScaleFactor:)();
      v27 = static UpsellGridLayout.iconCount(fitting:using:in:)();
      v28 = *&v1[v20];
      if (v28 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() == v27)
        {
          goto LABEL_10;
        }
      }

      else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) == v27)
      {
LABEL_10:
        (*(v10 + 16))(v12, v16, v9);

        sub_1002A51C0(v29);

        UpsellGridLayout.init(metrics:icons:)();
        UpsellGridLayout.placeChildren(relativeTo:in:)();
        (*(v36 + 8))(v5, v33);
        (*(v34 + 8))(v8, v35);
        (*(v10 + 8))(v16, v9);
        return [v32 setAnimationsEnabled:v31];
      }

      sub_10045222C(width, height);
      goto LABEL_10;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_10045222C(double a1, double a2)
{
  v4 = v2;
  v7 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v7 - 8);
  v75 = &v65 - v8;
  v9 = type metadata accessor for UpsellGridLayout.Metrics();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  __chkstk_darwin(v11);
  v14 = &v65 - v13;
  result = *&v2[OBJC_IVAR____TtC8AppStore14UpsellGridView_artworkLoader];
  if (!result)
  {
    return result;
  }

  v70 = v12;
  v73 = result;

  v16 = &selRef_setRequiresColorStatistics_;
  v17 = [v2 traitCollection];
  v18 = UITraitCollection.isSizeClassCompact.getter();

  v19 = &StringUserDefaultsDebugSetting;
  if (v18)
  {
    v20 = [v4 window];
    if (v20)
    {
      v21 = v20;
      [v20 frame];
      CGRectGetWidth(v82);
    }
  }

  UpsellGridLayout.Metrics.init(dimensionSmallIconCount:isExtendedHeight:iconScaleFactor:)();
  static UpsellGridLayout.largeIconSize(fitting:using:in:)();
  v22 = *(v10 + 8);
  v68 = v10 + 8;
  v67 = v22;
  v22(v14, v9);
  v80 = _swiftEmptyArrayStorage;
  v81 = _swiftEmptyArrayStorage;
  v79 = _swiftEmptyArrayStorage;
  v23 = OBJC_IVAR____TtC8AppStore14UpsellGridView_iconViews;
  swift_beginAccess();
  v24 = *&v23[v4];
  if (v24 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }
  }

  else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    sub_100453274();
    goto LABEL_10;
  }

  type metadata accessor for ArtworkView();
  v25 = static ArtworkView.iconArtworkView.getter();
LABEL_10:
  v26 = v25;
  swift_endAccess();
  v27 = v26;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_93:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v71 = v27;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v77 = v79;
  v78 = v23;
  if (!*(v4 + OBJC_IVAR____TtC8AppStore14UpsellGridView_primaryIcon))
  {
    v29 = _swiftEmptyArrayStorage;
    v74 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  swift_retain_n();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v74 = v81;
  v28 = v75;
  ImpressionableArtwork.impressionMetrics.getter();
  v3 = sub_100453A14(v28);
  sub_100453E30(v28);
  if (!v3)
  {
    v29 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v23 = [objc_allocWithZone(AMSUIDynamicImpressionItem) initWithFrame:v3 impressionMetrics:{0.0, 0.0, a1, a2}];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_110;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v29 = v80;
LABEL_19:
    ImpressionableArtwork.art.getter();
    Artwork.config(using:)();

    type metadata accessor for ArtworkView();
    sub_10009A098();
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

    v23 = v78;
LABEL_20:
    [v4 bounds];
    v30 = [v4 *(v16 + 280)];
    v31 = UITraitCollection.isSizeClassCompact.getter();

    if (v31)
    {
      v32 = [v4 *&v19[43].ivar_base_size];
      if (v32)
      {
        v33 = v32;
        [v32 frame];
        CGRectGetWidth(v83);
      }
    }

    v16 = v70;
    UpsellGridLayout.Metrics.init(dimensionSmallIconCount:isExtendedHeight:iconScaleFactor:)();
    v34 = static UpsellGridLayout.iconSizes(fitting:using:in:)();
    v35 = *(v34 + 16);
    v19 = v73;
    v69 = v34;
    if (v35 >= 2)
    {
      break;
    }

LABEL_76:
    sub_10045334C(v74, a1, a2);

    *(v4 + OBJC_IVAR____TtC8AppStore14UpsellGridView_amsImpressionItems) = v29;

    v51 = v77;
    if (v77 >> 62)
    {
      v58 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v77;
      v52 = v58;
      if (!v58)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v52 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v52)
      {
        goto LABEL_95;
      }
    }

    if (v52 < 1)
    {
      __break(1u);
      goto LABEL_109;
    }

    v53 = 0;
    v3 = v51 & 0xC000000000000001;
    do
    {
      if (v3)
      {
        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v56 = *(v51 + 8 * v53 + 32);
      }

      v55 = v56;
      v57 = [v56 superview];
      if (v57)
      {
        v54 = v57;

        v55 = v54;
      }

      else
      {
        [v4 addSubview:v55];
      }

      ++v53;

      v51 = v77;
    }

    while (v52 != v53);
LABEL_95:
    v23 = v78;
    v59 = *&v78[v4];
    if (v59 >> 62)
    {
      v64 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v77;
      v60 = v64;
      v19 = v73;
      if (!v64)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v73;
      if (!v60)
      {
        goto LABEL_104;
      }
    }

    if (v60 >= 1)
    {

      for (i = 0; i != v60; ++i)
      {
        if ((v59 & 0xC000000000000001) != 0)
        {
          v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v62 = *(v59 + 8 * i + 32);
        }

        v63 = v62;
        [v62 removeFromSuperview];
      }

      v51 = v77;
      v23 = v78;
LABEL_104:
      *&v23[v4] = v51;

      [v4 setNeedsLayout];

      return v67(v16, v9);
    }

LABEL_109:
    __break(1u);
LABEL_110:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v72 = v29;
  v66 = v9;
  v36 = OBJC_IVAR____TtC8AppStore14UpsellGridView_remainingIcons;
  v27 = v34;

  swift_beginAccess();
  v16 = 0;
  v76 = v35 - 1;
  v9 = v27 + 7;
  while (1)
  {
    v37 = *(v9 - 1);
    v38 = *v9;
    swift_beginAccess();
    v3 = *&v23[v4];
    v23 = (v3 >> 62);
    if (v3 >> 62)
    {
      break;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

LABEL_52:
    type metadata accessor for ArtworkView();
    v27 = static ArtworkView.iconArtworkView.getter();
    v23 = v78;
LABEL_53:
    swift_endAccess();
    v3 = v27;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v27 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v77 = v79;
    v43 = *(v4 + v36);
    if (v43 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    else if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v44 = *(v4 + v36);
    if (v44 >> 62)
    {
      v45 = _CocoaArrayWrapper.endIndex.getter();
      if (!v45)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
        goto LABEL_88;
      }
    }

    v46 = v16 % v45;
    swift_beginAccess();
    v47 = *(v4 + v36);
    if ((v47 & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v46 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_90;
      }

      v27 = *(v47 + 8 * v46 + 32);
    }

    swift_endAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v74 = v81;
    v48 = v75;
    ImpressionableArtwork.impressionMetrics.getter();
    v49 = sub_100453A14(v48);
    sub_100453E30(v48);
    if (v49)
    {
      v50 = [objc_allocWithZone(AMSUIDynamicImpressionItem) initWithFrame:v49 impressionMetrics:{0.0, 0.0, v37, v38}];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v72 = v80;
      v19 = v73;
    }

    ImpressionableArtwork.art.getter();
    Artwork.config(using:)();

    type metadata accessor for ArtworkView();
    sub_10009A098();
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

    v23 = v78;
LABEL_26:
    ++v16;
    v9 += 2;
    if (v76 == v16)
    {

      v9 = v66;
      v16 = v70;
      v29 = v72;
      goto LABEL_76;
    }
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_52;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_112;
    }

LABEL_29:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v39 = *(v3 + 32);
    }

    v27 = v39;
    if (v23)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_91;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_92;
      }

      v40 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v40 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v40)
      {
        goto LABEL_91;
      }
    }

    v41 = v40 - 1;
    if (__OFSUB__(v40, 1))
    {
      goto LABEL_89;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v78[v4] = v3;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v23)
      {
        if (v41 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v23 = v78;
LABEL_47:
          sub_1004A700C(0, 1, 0);
          *&v23[v4] = v3;
          goto LABEL_53;
        }

LABEL_44:
        v23 = v78;
LABEL_46:
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        *&v23[v4] = v3;
        goto LABEL_47;
      }
    }

    else if (!v23)
    {
      goto LABEL_44;
    }

    _CocoaArrayWrapper.endIndex.getter();
    v23 = v78;
    goto LABEL_46;
  }

  __break(1u);
LABEL_112:
  __break(1u);
  return result;
}

double sub_100452ECC(uint64_t a1, __n128 a2, double a3)
{
  v4 = v3;
  v5 = type metadata accessor for UpsellGridLayout.Metrics();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for UpsellGridLayout();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v3 bounds];
  v11 = [v3 traitCollection];
  v12 = UITraitCollection.isSizeClassCompact.getter();

  if (v12)
  {
    v13 = [v4 window];
    if (v13)
    {
      v14 = v13;
      [v13 frame];
      CGRectGetWidth(v20);
    }
  }

  UpsellGridLayout.Metrics.init(dimensionSmallIconCount:isExtendedHeight:iconScaleFactor:)();
  swift_beginAccess();

  sub_1002A51C0(v15);

  UpsellGridLayout.init(metrics:icons:)();
  UpsellGridLayout.measurements(fitting:in:)();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  return v17;
}

uint64_t sub_1004531B0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + OBJC_IVAR____TtC8AppStore14UpsellGridView_primaryIcon) = a1;

  v10 = OBJC_IVAR____TtC8AppStore14UpsellGridView_remainingIcons;
  swift_beginAccess();
  *(v5 + v10) = a2;

  *(v5 + OBJC_IVAR____TtC8AppStore14UpsellGridView_artworkLoader) = a3;

  return sub_10045222C(a4, a5);
}

void sub_100453274()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
      if (v3)
      {
        sub_1004A710C(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

void sub_10045334C(unint64_t a1, double a2, double a3)
{
  v5 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ImpressionMetrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC8AppStore14UpsellGridView_impressionsCalculator))
  {
    if (a1 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
      if (!v12)
      {
        return;
      }
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        return;
      }
    }

    if (v12 < 1)
    {
      __break(1u);
    }

    else
    {
      v19 = a1 & 0xC000000000000001;
      v13 = (v9 + 48);
      v17 = (v9 + 32);
      v14 = (v9 + 8);

      for (i = 0; i != v12; ++i)
      {
        if (v19)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        ImpressionableArtwork.impressionMetrics.getter();
        if ((*v13)(v7, 1, v8) == 1)
        {

          sub_100453E30(v7);
        }

        else
        {
          (*v17)(v11, v7, v8);
          ImpressionsCalculator.addElement(_:at:)();

          (*v14)(v11, v8);
        }
      }
    }
  }
}

void sub_10045371C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002849C(&qword_100982840, &qword_1007CA1F8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v11 = v10 | (v9 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_1000073E8(*(a1 + 56) + 32 * v11, v27);
        *&v26 = v13;
        *(&v26 + 1) = v14;
        v24 = v26;
        v25[0] = v27[0];
        v25[1] = v27[1];
        v15 = v26;
        sub_100056164(v25, &v22);

        sub_10002849C(&unk_100986010, &qword_1007DB8A0);
        swift_dynamicCast();
        v16 = v23;
        v17 = sub_1000072B8(v15, *(&v15 + 1));
        if (v18)
        {
          *(v2[6] + 16 * v17) = v15;
          v8 = v17;

          *(v2[7] + 8 * v8) = v16;
          swift_unknownObjectRelease();
          v7 = v9;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
          *(v2[6] + 16 * v17) = v15;
          *(v2[7] + 8 * v17) = v16;
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v9;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v9 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_100453968()
{
  *(v0 + OBJC_IVAR____TtC8AppStore14UpsellGridView_primaryIcon) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore14UpsellGridView_remainingIcons) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore14UpsellGridView_artworkLoader) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore14UpsellGridView_impressionsCalculator) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore14UpsellGridView_iconViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore14UpsellGridView_amsImpressionItems) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100453A14(uint64_t a1)
{
  v2 = type metadata accessor for ImpressionMetrics.ID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v34 - v7;
  __chkstk_darwin(v9);
  v11 = v34 - v10;
  v12 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v12 - 8);
  v14 = v34 - v13;
  v15 = type metadata accessor for ImpressionMetrics();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100453E98(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100453E30(v14);
    return 0;
  }

  else
  {
    v20 = *(v16 + 32);
    v35 = v15;
    v20(v18, v14, v15);
    ImpressionMetrics.id.getter();
    v34[1] = ImpressionMetrics.ID.parent.getter();
    v22 = v21;
    v23 = *(v3 + 8);
    v23(v11, v2);
    ImpressionMetrics.id.getter();
    v34[2] = ImpressionMetrics.ID.element.getter();
    v23(v8, v2);
    ImpressionMetrics.id.getter();
    v24 = ImpressionMetrics.ID.index.getter();
    v23(v5, v2);
    if (v22)
    {
      v25 = String._bridgeToObjectiveC()();
    }

    else
    {
      v25 = 0;
    }

    v26 = objc_allocWithZone(AMSUIDynamicImpressionMetricsIdentifier);
    v27 = String._bridgeToObjectiveC()();

    v28 = [v26 initWithParent:v25 element:v27 index:v24];

    v29 = ImpressionMetrics.fields.getter();
    sub_10045371C(v29);

    sub_100399214(_swiftEmptyArrayStorage);
    v30 = objc_allocWithZone(AMSUIDynamicImpressionMetrics);
    sub_10002849C(&unk_100986010, &qword_1007DB8A0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v32 = Dictionary._bridgeToObjectiveC()().super.isa;

    v33 = [v30 initWithIdentifier:v28 fields:isa custom:v32];

    (*(v16 + 8))(v18, v35);
    return v33;
  }
}

uint64_t sub_100453E30(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100453E98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100453F08()
{
  result = qword_100986020;
  if (!qword_100986020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100986020);
  }

  return result;
}

uint64_t sub_100453F64(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (qword_10096EAB8 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  v10 = sub_10003569C(&xmmword_1009D2DA0, a7, a1, a2);
  v11 = [objc_opt_self() absoluteDimension:v10];
  v12 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

  return v12;
}

uint64_t sub_1004540C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100454110()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_artworkView);
  v11.value.super.isa = 0;
  v11.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v11, v3);

  v4 = *(v1 + OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_displayName);
  GameCenterPlayer.displayName.getter();
  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  [v4 setText:v6];

  v7 = *(v1 + OBJC_IVAR____TtC8AppStore39LargeGameCenterPlayerCollectionViewCell_alias);
  GameCenterPlayer.alias.getter();
  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];
}