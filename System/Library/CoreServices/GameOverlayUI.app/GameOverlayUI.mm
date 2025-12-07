uint64_t sub_1000025D0(uint64_t *a1)
{
  if (sub_1000E13F8(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_100002638(uint64_t *a1)
{
  if (sub_1000E13F8(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    sub_10000272C();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    sub_100003F30(&qword_10012CC50, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

unint64_t sub_10000272C()
{
  result = qword_10012CC48;
  if (!qword_10012CC48)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CC48);
  }

  return result;
}

uint64_t sub_10000277C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (sub_1000E13F8(2, 26, 4, 0))
  {
    v38 = a7;
    v39 = a8;
    v40 = v9;
    v37 = type metadata accessor for _TaskModifier2();
    v18 = *(v37 - 8);
    __chkstk_darwin(v37);
    v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v42[0] = 0;
      v42[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v42, "View.task @ ");
      BYTE5(v42[1]) = 0;
      HIWORD(v42[1]) = -5120;
      v27._countAndFlagsBits = a4;
      v27._object = a5;
      String.append(_:)(v27);
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v41 = a6;
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);
    }

    v30 = type metadata accessor for TaskPriority();
    v31 = __chkstk_darwin(v30);
    (*(v33 + 16))(&v36 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v31);

    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    v34 = sub_100002B38(&qword_10012CC58, &qword_1000E9FB0);
    (*(*(v34 - 8) + 16))(a9, v40, v34);
    v35 = sub_100002B38(&qword_10012CC60, &qword_1000E8E60);
    return (*(v18 + 32))(a9 + *(v35 + 36), v20, v37);
  }

  else
  {
    v21 = (a9 + *(sub_100002B38(&qword_10012CC68, &qword_1000E8E68) + 36));
    v22 = *(type metadata accessor for _TaskModifier() + 20);
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 16))(&v21[v22], a3, v23);
    *v21 = a7;
    *(v21 + 1) = a8;
    v24 = sub_100002B38(&qword_10012CC58, &qword_1000E9FB0);
    v25 = *(*(v24 - 8) + 16);

    return v25(a9, v9, v24);
  }
}

uint64_t sub_100002B38(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002B80@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (sub_1000E13F8(2, 26, 4, 0))
  {
    v35 = a7;
    v36 = a8;
    v37 = v9;
    v34 = type metadata accessor for _TaskModifier2();
    v18 = *(v34 - 8);
    __chkstk_darwin(v34);
    v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v39, "View.task @ ");
      BYTE5(v39[1]) = 0;
      HIWORD(v39[1]) = -5120;
      v25._countAndFlagsBits = a4;
      v25._object = a5;
      String.append(_:)(v25);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      v38 = a6;
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);
    }

    v28 = type metadata accessor for TaskPriority();
    v29 = __chkstk_darwin(v28);
    (*(v31 + 16))(&v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v29);

    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    sub_1000035B4(v37, a9, &qword_10012CC70, &unk_1000E8E70);
    v32 = sub_100002B38(&qword_10012CC78, &qword_1000EDC40);
    return (*(v18 + 32))(a9 + *(v32 + 36), v20, v34);
  }

  else
  {
    v21 = (a9 + *(sub_100002B38(&qword_10012CC80, &unk_1000E8E80) + 36));
    v22 = *(type metadata accessor for _TaskModifier() + 20);
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 16))(&v21[v22], a3, v23);
    *v21 = a7;
    *(v21 + 1) = a8;
    return sub_1000035B4(v9, a9, &qword_10012CC70, &unk_1000E8E70);
  }
}

uint64_t sub_100002EBC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (sub_1000E13F8(2, 26, 4, 0))
  {
    v38 = a7;
    v39 = a8;
    v40 = v9;
    v37 = type metadata accessor for _TaskModifier2();
    v18 = *(v37 - 8);
    __chkstk_darwin(v37);
    v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v42[0] = 0;
      v42[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v42, "View.task @ ");
      BYTE5(v42[1]) = 0;
      HIWORD(v42[1]) = -5120;
      v27._countAndFlagsBits = a4;
      v27._object = a5;
      String.append(_:)(v27);
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v41 = a6;
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);
    }

    v30 = type metadata accessor for TaskPriority();
    v31 = __chkstk_darwin(v30);
    (*(v33 + 16))(&v36 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v31);

    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    v34 = sub_100002B38(&qword_10012CC88, &unk_1000EDBA0);
    (*(*(v34 - 8) + 16))(a9, v40, v34);
    v35 = sub_100002B38(&qword_10012CC90, &qword_1000E8E90);
    return (*(v18 + 32))(a9 + *(v35 + 36), v20, v37);
  }

  else
  {
    v21 = (a9 + *(sub_100002B38(&qword_10012CC98, &qword_1000E8E98) + 36));
    v22 = *(type metadata accessor for _TaskModifier() + 20);
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 16))(&v21[v22], a3, v23);
    *v21 = a7;
    *(v21 + 1) = a8;
    v24 = sub_100002B38(&qword_10012CC88, &unk_1000EDBA0);
    v25 = *(*(v24 - 8) + 16);

    return v25(a9, v9, v24);
  }
}

uint64_t sub_100003278@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (sub_1000E13F8(2, 26, 4, 0))
  {
    v35 = a7;
    v36 = a8;
    v37 = v9;
    v34 = type metadata accessor for _TaskModifier2();
    v18 = *(v34 - 8);
    __chkstk_darwin(v34);
    v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v39, "View.task @ ");
      BYTE5(v39[1]) = 0;
      HIWORD(v39[1]) = -5120;
      v25._countAndFlagsBits = a4;
      v25._object = a5;
      String.append(_:)(v25);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      v38 = a6;
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);
    }

    v28 = type metadata accessor for TaskPriority();
    v29 = __chkstk_darwin(v28);
    (*(v31 + 16))(&v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v29);

    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    sub_1000035B4(v37, a9, &qword_10012CCA0, &qword_1000E8EA0);
    v32 = sub_100002B38(&qword_10012CCA8, &qword_1000E8EA8);
    return (*(v18 + 32))(a9 + *(v32 + 36), v20, v34);
  }

  else
  {
    v21 = (a9 + *(sub_100002B38(&qword_10012CCB0, &unk_1000E8EB0) + 36));
    v22 = *(type metadata accessor for _TaskModifier() + 20);
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 16))(&v21[v22], a3, v23);
    *v21 = a7;
    *(v21 + 1) = a8;
    return sub_1000035B4(v9, a9, &qword_10012CCA0, &qword_1000E8EA0);
  }
}

uint64_t sub_1000035B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002B38(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000361C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (sub_1000E13F8(2, 26, 4, 0))
  {
    v38 = a7;
    v39 = a8;
    v40 = v9;
    v37 = type metadata accessor for _TaskModifier2();
    v18 = *(v37 - 8);
    __chkstk_darwin(v37);
    v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v42[0] = 0;
      v42[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v42, "View.task @ ");
      BYTE5(v42[1]) = 0;
      HIWORD(v42[1]) = -5120;
      v27._countAndFlagsBits = a4;
      v27._object = a5;
      String.append(_:)(v27);
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v41 = a6;
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);
    }

    v30 = type metadata accessor for TaskPriority();
    v31 = __chkstk_darwin(v30);
    (*(v33 + 16))(&v36 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v31);

    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    v34 = sub_100002B38(&qword_10012CCB8, &unk_1000EDC90);
    (*(*(v34 - 8) + 16))(a9, v40, v34);
    v35 = sub_100002B38(&qword_10012CCC0, &unk_1000E8EC0);
    return (*(v18 + 32))(a9 + *(v35 + 36), v20, v37);
  }

  else
  {
    v21 = (a9 + *(sub_100002B38(&qword_10012CCC8, &unk_1000EDD50) + 36));
    v22 = *(type metadata accessor for _TaskModifier() + 20);
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 16))(&v21[v22], a3, v23);
    *v21 = a7;
    *(v21 + 1) = a8;
    v24 = sub_100002B38(&qword_10012CCB8, &unk_1000EDC90);
    v25 = *(*(v24 - 8) + 16);

    return v25(a9, v9, v24);
  }
}

uint64_t variable initialization expression of OverlayFlowAuthorityProvider.flowAuthority@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = type metadata accessor for FlowOrigin();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v24 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FlowAnimationBehavior();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FlowPresentationContext();
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100002B38(&qword_10012CCD0, &unk_1000E8ED0);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = type metadata accessor for FlowPage();
  __chkstk_darwin(v16);
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  (*(v18 + 104))(&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.page(_:));
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  v20 = type metadata accessor for ReferrerData();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v28 = 0u;
  v29 = 0u;
  static ActionMetrics.notInstrumented.getter();
  static FlowActionPresentation.tabSelect.getter();
  (*(v6 + 104))(v8, enum case for FlowPresentationContext.infer(_:), v22);
  (*(v3 + 104))(v5, enum case for FlowAnimationBehavior.infer(_:), v23);
  (*(v25 + 104))(v24, enum case for FlowOrigin.inapp(_:), v26);
  type metadata accessor for FlowAction();
  swift_allocObject();
  *&v30 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  sub_100003F30(&qword_10012CCD8, &type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
  sub_100003F30(&qword_10012CCE0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
  return FlowAuthority.init(content:)();
}

uint64_t sub_100003F30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100003F90@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BootstrapResult();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double variable initialization expression of DashboardRequest.deepLinkDestination@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 3;
  return result;
}

__n128 sub_10000408C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004098(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000040B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ChildSlideTransition(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ChildSlideTransition.Track(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ChildSlideTransition.Track(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_1000041F0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100004268(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 initializeBufferWithCopyOfBuffer for ParentPushPopAnimator.Track(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100004294(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1000042F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100004370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = static VerticalAlignment.center.getter();
  sub_10000548C(v40, v4, v5);

  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  static Font.title2.getter();
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_1000054E0(v6, v8, v10 & 1);

  sub_1000054F0(v11, v13, v15 & 1);

  sub_1000054E0(v11, v13, v15 & 1);

  v41 = v15 & 1;
  v39 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v37 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  static Color.white.getter();
  v26 = Color.opacity(_:)();

  LOBYTE(v6) = static Edge.Set.all.getter();
  v27 = (a3 + *(sub_100002B38(&qword_10012CD68, &qword_1000E9098) + 36));
  v28 = *(type metadata accessor for RoundedRectangle() + 20);
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = type metadata accessor for RoundedCornerStyle();
  (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
  __asm { FMOV            V0.2D, #20.0 }

  *v27 = _Q0;
  result = sub_100002B38(&qword_10012CDE0, &qword_1000E90D0);
  *&v27[*(result + 36)] = 256;
  *a3 = v40;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = v11;
  *(a3 + 32) = v13;
  *(a3 + 40) = v41;
  *(a3 + 48) = v17;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  *(a3 + 72) = KeyPath;
  *(a3 + 80) = v39;
  *(a3 + 88) = v37;
  *(a3 + 96) = v19;
  *(a3 + 104) = v21;
  *(a3 + 112) = v23;
  *(a3 + 120) = v25;
  *(a3 + 128) = 0;
  *(a3 + 136) = v26;
  *(a3 + 144) = v6;
  return result;
}

double sub_1000045E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v8 = sub_100002B38(&qword_10012CD48, &qword_1000E9078);
  sub_100004690(a1, a2, a3 + *(v8 + 44), a4);
  LOBYTE(a2) = static Edge.Set.all.getter();
  v9 = a3 + *(sub_100002B38(&qword_10012CD18, &qword_1000E9058) + 36);
  *v9 = a2;
  result = 0.0;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 1;
  return result;
}

uint64_t sub_100004690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v41 = a3;
  v7 = sub_100002B38(&qword_10012CD50, &qword_1000E9080);
  v39 = *(v7 - 8);
  v8 = v39;
  v40 = v7;
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = sub_100002B38(&qword_10012CD58, &qword_1000E9088);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  *v20 = static VerticalAlignment.center.getter();
  *(v20 + 1) = 0x4030000000000000;
  v20[16] = 0;
  v21 = sub_100002B38(&qword_10012CD60, &qword_1000E9090);
  sub_1000049F8(a1, a2, &v20[*(v21 + 44)], a4);
  v22 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v23 = &v20[*(v15 + 44)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  *(v28 + 24) = a1;
  *(v28 + 32) = a2;
  sub_10000519C(a1, a2);
  sub_100002B38(&qword_10012CD68, &qword_1000E9098);
  sub_1000051AC();
  ForEach<>.init(_:content:)();
  sub_1000035B4(v20, v17, &qword_10012CD58, &qword_1000E9088);
  v29 = *(v8 + 16);
  v30 = v13;
  v31 = v13;
  v32 = v40;
  v29(v10, v30, v40);
  v33 = v41;
  sub_1000035B4(v17, v41, &qword_10012CD58, &qword_1000E9088);
  v34 = sub_100002B38(&qword_10012CDE8, &qword_1000E90D8);
  v29((v33 + *(v34 + 48)), v10, v32);
  v35 = v33 + *(v34 + 64);
  *v35 = 0;
  *(v35 + 8) = 1;
  v36 = *(v39 + 8);
  v36(v31, v32);
  sub_100005688(v20, &qword_10012CD58, &qword_1000E9088);
  v36(v10, v32);
  return sub_100005688(v17, &qword_10012CD58, &qword_1000E9088);
}

uint64_t sub_1000049F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v44 = a1;
  v45 = a2;
  v6 = type metadata accessor for PlainButtonStyle();
  v7 = *(v6 - 8);
  v49 = v6;
  v50 = v7;
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100002B38(&qword_10012CDF8, &qword_1000E9110);
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v11 = &v40 - v10;
  v12 = sub_100002B38(&qword_10012CE00, &qword_1000E9118);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v47 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  LocalizedStringKey.init(stringLiteral:)();
  v18 = Text.init(_:tableName:bundle:comment:)();
  v20 = v19;
  v22 = v21;
  static Font.title.getter();
  v23 = Text.font(_:)();
  v40 = v24;
  v41 = v23;
  v42 = v25;
  v43 = v26;

  sub_1000054E0(v18, v20, v22 & 1);

  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  v28 = v44;
  v29 = v45;
  *(v27 + 24) = v44;
  *(v27 + 32) = v29;
  sub_10000519C(v28, v29);
  sub_100002B38(&qword_10012CE08, &unk_1000E9120);
  sub_100005578();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_1000057D8(&qword_10012CE28, &qword_10012CDF8, &qword_1000E9110, &protocol conformance descriptor for Button<A>);
  sub_100005630();
  v30 = v46;
  v31 = v49;
  View.buttonStyle<A>(_:)();
  (*(v50 + 8))(v9, v31);
  (*(v48 + 8))(v11, v30);
  v32 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v34 = &v17[*(v13 + 44)];
  *v34 = KeyPath;
  v34[1] = v32;
  v35 = v47;
  sub_1000035B4(v17, v47, &qword_10012CE00, &qword_1000E9118);
  v37 = v40;
  v36 = v41;
  *a3 = v41;
  *(a3 + 8) = v37;
  LOBYTE(v32) = v42 & 1;
  *(a3 + 16) = v42 & 1;
  *(a3 + 24) = v43;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v38 = sub_100002B38(&qword_10012CE38, &qword_1000E9130);
  sub_1000035B4(v35, a3 + *(v38 + 64), &qword_10012CE00, &qword_1000E9118);
  sub_1000054F0(v36, v37, v32);

  sub_100005688(v17, &qword_10012CE00, &qword_1000E9118);
  sub_100005688(v35, &qword_10012CE00, &qword_1000E9118);
  sub_1000054E0(v36, v37, v32);
}

uint64_t sub_100004E64@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = static Font.largeTitle.getter();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_100004EC8@<X0>(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  sub_100004370(0x206E6F6974636553, 0xE800000000000000, a1);
}

uint64_t sub_100004FA4@<X0>(uint64_t a1@<X8>)
{
  static Axis.Set.vertical.getter();
  sub_100002B38(&qword_10012CD18, &qword_1000E9058);
  sub_10000508C();
  ScrollView.init(_:showsIndicators:content:)();
  v2 = a1 + *(sub_100002B38(&qword_10012CD38, &qword_1000E9068) + 36);
  static Material.regular.getter();
  v3 = static Edge.Set.all.getter();
  result = sub_100002B38(&qword_10012CD40, &qword_1000E9070);
  *(v2 + *(result + 36)) = v3;
  return result;
}

unint64_t sub_10000508C()
{
  result = qword_10012CD20;
  if (!qword_10012CD20)
  {
    sub_100005144(&qword_10012CD18, &qword_1000E9058);
    sub_1000057D8(&qword_10012CD28, &qword_10012CD30, &qword_1000E9060, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CD20);
  }

  return result;
}

uint64_t sub_100005144(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000519C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000051AC()
{
  result = qword_10012CD70;
  if (!qword_10012CD70)
  {
    sub_100005144(&qword_10012CD68, &qword_1000E9098);
    sub_100005264();
    sub_1000057D8(&qword_10012CDD8, &qword_10012CDE0, &qword_1000E90D0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CD70);
  }

  return result;
}

unint64_t sub_100005264()
{
  result = qword_10012CD78;
  if (!qword_10012CD78)
  {
    sub_100005144(&qword_10012CD80, &qword_1000E90A0);
    sub_10000531C();
    sub_1000057D8(&qword_10012CDC8, &qword_10012CDD0, &qword_1000E90C8, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CD78);
  }

  return result;
}

unint64_t sub_10000531C()
{
  result = qword_10012CD88;
  if (!qword_10012CD88)
  {
    sub_100005144(&qword_10012CD90, &qword_1000E90A8);
    sub_1000053A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CD88);
  }

  return result;
}

unint64_t sub_1000053A8()
{
  result = qword_10012CD98;
  if (!qword_10012CD98)
  {
    sub_100005144(&qword_10012CDA0, &qword_1000E90B0);
    sub_1000057D8(&qword_10012CDA8, &qword_10012CDB0, &qword_1000E90B8, &protocol conformance descriptor for HStack<A>);
    sub_1000057D8(&qword_10012CDB8, &qword_10012CDC0, &qword_1000E90C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CD98);
  }

  return result;
}

unint64_t sub_10000548C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012CDF0;
  if (!qword_10012CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CDF0);
  }

  return result;
}

uint64_t sub_1000054E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000054F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100005508()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100005548()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_100005578()
{
  result = qword_10012CE10;
  if (!qword_10012CE10)
  {
    sub_100005144(&qword_10012CE08, &unk_1000E9120);
    sub_1000057D8(&qword_10012CE18, &qword_10012CE20, &qword_1000EC110, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CE10);
  }

  return result;
}

unint64_t sub_100005630()
{
  result = qword_10012CE30;
  if (!qword_10012CE30)
  {
    type metadata accessor for PlainButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CE30);
  }

  return result;
}

uint64_t sub_100005688(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002B38(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000056F4()
{
  result = qword_10012CE40;
  if (!qword_10012CE40)
  {
    sub_100005144(&qword_10012CD38, &qword_1000E9068);
    sub_1000057D8(&qword_10012CE48, &qword_10012CE50, &unk_1000E9168, &protocol conformance descriptor for ScrollView<A>);
    sub_1000057D8(&qword_10012CE58, &qword_10012CD40, &qword_1000E9070, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CE40);
  }

  return result;
}

uint64_t sub_1000057D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for AccessPointShaderTransitionView.AnimationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessPointShaderTransitionView.AnimationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000059A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[14];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[16];
    goto LABEL_7;
  }

  v11 = type metadata accessor for AccessPointContainer();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[17];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[18]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100005B24(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[14];
  }

  else
  {
    v12 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[16];
    }

    else
    {
      result = type metadata accessor for AccessPointContainer();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[18]) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[17];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

void sub_100005CA8(uint64_t a1)
{
  sub_100005F3C(319, &qword_10012CED0, type metadata accessor for RemoteAlertAccessPointContext, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100013714(319, &qword_10012CED8, &type metadata for AccessPointShaderTransitionView.AnimationState, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_100013714(319, &qword_10012CEE0, &type metadata for Int, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_100013714(319, &qword_10012CEE8, &type metadata for Bool, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_100005F3C(319, &qword_10012CEF0, type metadata accessor for CGPoint, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_100005F3C(319, &qword_10012CEF8, &type metadata accessor for AccessPointAnchoring, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_100005F3C(319, &unk_10012CF00, &type metadata accessor for Game, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                type metadata accessor for AccessPointContainer();
                if (v8 <= 0x3F)
                {
                  type metadata accessor for GameDashboardLaunchContext();
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for BaseObjectGraph();
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

void sub_100005F3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100005FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012CF68;
  if (!qword_10012CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CF68);
  }

  return result;
}

double sub_100005FF8@<D0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  v42 = 1;
  sub_10000633C(&v26);
  v56 = v38;
  v57 = v39;
  v58[0] = v40[0];
  *(v58 + 9) = *(v40 + 9);
  v52 = v34;
  v53 = v35;
  v54 = v36;
  v55 = v37;
  v48 = v30;
  v49 = v31;
  v50 = v32;
  v51 = v33;
  v44 = v26;
  v45 = v27;
  v46 = v28;
  v47 = v29;
  v59[12] = v38;
  v59[13] = v39;
  v60[0] = v40[0];
  *(v60 + 9) = *(v40 + 9);
  v59[8] = v34;
  v59[9] = v35;
  v59[10] = v36;
  v59[11] = v37;
  v59[4] = v30;
  v59[5] = v31;
  v59[6] = v32;
  v59[7] = v33;
  v59[0] = v26;
  v59[1] = v27;
  v59[2] = v28;
  v59[3] = v29;
  sub_1000035B4(&v44, &v25, &qword_10012D510, &qword_1000E98B8);
  sub_100005688(v59, &qword_10012D510, &qword_1000E98B8);
  *&v41[199] = v56;
  *&v41[215] = v57;
  *&v41[231] = v58[0];
  *&v41[240] = *(v58 + 9);
  *&v41[135] = v52;
  *&v41[151] = v53;
  *&v41[167] = v54;
  *&v41[183] = v55;
  *&v41[71] = v48;
  *&v41[87] = v49;
  *&v41[103] = v50;
  *&v41[119] = v51;
  *&v41[7] = v44;
  *&v41[23] = v45;
  *&v41[39] = v46;
  *&v41[55] = v47;
  v3 = v42;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v43[7] = v26;
  *&v43[23] = v27;
  *&v43[39] = v28;
  static Color.white.getter();
  v4 = Color.opacity(_:)();

  v5 = static Edge.Set.all.getter();
  v6 = (a1 + *(sub_100002B38(&qword_10012D500, &qword_1000E98A8) + 36));
  v7 = *(type metadata accessor for RoundedRectangle() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  *&v6[*(sub_100002B38(&qword_10012CDE0, &qword_1000E90D0) + 36)] = 256;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  v15 = *&v41[208];
  *(a1 + 209) = *&v41[192];
  *(a1 + 225) = v15;
  v16 = *&v41[240];
  *(a1 + 241) = *&v41[224];
  *(a1 + 257) = v16;
  v17 = *&v41[144];
  *(a1 + 145) = *&v41[128];
  *(a1 + 161) = v17;
  v18 = *&v41[176];
  *(a1 + 177) = *&v41[160];
  *(a1 + 193) = v18;
  v19 = *&v41[80];
  *(a1 + 81) = *&v41[64];
  *(a1 + 97) = v19;
  v20 = *&v41[112];
  *(a1 + 113) = *&v41[96];
  *(a1 + 129) = v20;
  v21 = *&v41[16];
  *(a1 + 17) = *v41;
  *(a1 + 33) = v21;
  v22 = *&v41[48];
  *(a1 + 49) = *&v41[32];
  *(a1 + 65) = v22;
  v23 = *&v43[16];
  *(a1 + 273) = *v43;
  *(a1 + 289) = v23;
  result = *&v43[32];
  *(a1 + 305) = *&v43[32];
  *(a1 + 320) = *&v43[47];
  *(a1 + 328) = v4;
  *(a1 + 336) = v5;
  return result;
}

uint64_t sub_10000633C@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(_:bundle:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v72[0]) = 1;
  *&v55[6] = v57;
  *&v55[22] = v58;
  *&v55[38] = v59;
  LOBYTE(v2) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = static HorizontalAlignment.center.getter();
  LOBYTE(v72[0]) = 1;
  sub_10000680C(v60);
  *&v54[7] = v60[0];
  *&v54[23] = v60[1];
  *&v54[39] = v60[2];
  *&v54[55] = v60[3];
  LOBYTE(v3) = v72[0];
  v16 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v62[0] = v6;
  v62[1] = 0;
  LOWORD(v63[0]) = 257;
  *(v63 + 2) = *v55;
  *(&v63[1] + 2) = *&v55[16];
  *(&v63[2] + 2) = *&v55[32];
  *&v63[3] = *&v55[46];
  BYTE8(v63[3]) = v2;
  HIDWORD(v63[3]) = *&v56[3];
  *(&v63[3] + 9) = *v56;
  *&v64 = v8;
  *(&v64 + 1) = v10;
  *&v65 = v12;
  *(&v65 + 1) = v14;
  LOBYTE(v53[0]) = 0;
  v51 = v64;
  v52 = v65;
  v50 = v63[3];
  v48 = v63[1];
  v49 = v63[2];
  v46 = v6;
  v47 = v63[0];
  v67[0] = v15;
  v67[1] = 0;
  LOBYTE(v68[0]) = v3;
  v17 = *v54;
  *(v68 + 1) = *v54;
  *&v68[4] = *&v54[63];
  v18 = *&v54[48];
  *(&v68[3] + 1) = *&v54[48];
  v19 = *&v54[32];
  *(&v68[2] + 1) = *&v54[32];
  v20 = *&v54[16];
  *(&v68[1] + 1) = *&v54[16];
  BYTE8(v68[4]) = v16;
  HIDWORD(v68[4]) = *&v61[3];
  *(&v68[4] + 9) = *v61;
  *&v69 = v21;
  *(&v69 + 1) = v22;
  *&v70 = v23;
  *(&v70 + 1) = v24;
  *(&v53[7] + 8) = v70;
  BYTE8(v53[8]) = 0;
  *(&v53[6] + 8) = v69;
  *(&v53[5] + 8) = v68[4];
  *(v53 + 8) = v15;
  *(&v53[4] + 8) = v68[3];
  *(&v53[3] + 8) = v68[2];
  *(&v53[2] + 8) = v68[1];
  *(&v53[1] + 8) = v68[0];
  v25 = v53[6];
  a1[12] = v53[5];
  a1[13] = v25;
  a1[14] = v53[7];
  *(a1 + 233) = *(&v53[7] + 9);
  v26 = v53[2];
  a1[8] = v53[1];
  a1[9] = v26;
  v27 = v53[4];
  a1[10] = v53[3];
  a1[11] = v27;
  v28 = v51;
  a1[4] = v50;
  a1[5] = v28;
  v29 = v53[0];
  a1[6] = v52;
  a1[7] = v29;
  v30 = v47;
  *a1 = v46;
  a1[1] = v30;
  v31 = v49;
  a1[2] = v48;
  a1[3] = v31;
  v66 = 0;
  v71 = 0;
  v72[0] = v15;
  v72[1] = 0;
  v73 = v3;
  v75 = v20;
  v76 = v19;
  *v77 = v18;
  *&v77[15] = *&v54[63];
  v74 = v17;
  v78 = v16;
  *v79 = *v61;
  *&v79[3] = *&v61[3];
  v80 = v21;
  v81 = v22;
  v82 = v23;
  v83 = v24;
  v84 = 0;
  sub_1000035B4(v62, v34, &qword_10012D518, &qword_1000E98C0);
  sub_1000035B4(v67, v34, &qword_10012D520, &qword_1000E98C8);
  sub_100005688(v72, &qword_10012D520, &qword_1000E98C8);
  v34[0] = v6;
  v34[1] = 0;
  v35 = 257;
  v36 = *v55;
  v37 = *&v55[16];
  *v38 = *&v55[32];
  *&v38[14] = *&v55[46];
  v39 = v2;
  *v40 = *v56;
  *&v40[3] = *&v56[3];
  v41 = v8;
  v42 = v10;
  v43 = v12;
  v44 = v14;
  v45 = 0;
  return sub_100005688(v34, &qword_10012D518, &qword_1000E98C0);
}

uint64_t sub_10000680C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.headline.getter();
  v7 = Text.font(_:)();
  v25 = v8;
  v26 = v7;
  v24 = v9;
  v27 = v10;

  sub_1000054E0(v2, v4, v6 & 1);

  LocalizedStringKey.init(stringLiteral:)();
  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v15 = v14;
  static Font.footnote.getter();
  v16 = Text.font(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_1000054E0(v11, v13, v15 & 1);

  *a1 = v26;
  *(a1 + 8) = v25;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v27;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18;
  *(a1 + 48) = v20 & 1;
  *(a1 + 56) = v22;
  sub_1000054F0(v26, v25, v24 & 1);

  sub_1000054F0(v16, v18, v20 & 1);

  sub_1000054E0(v16, v18, v20 & 1);

  sub_1000054E0(v26, v25, v24 & 1);
}

uint64_t sub_100006A18@<X0>(uint64_t a3@<X8>)
{
  v28 = a3;
  v3 = sub_100002B38(&qword_10012D528, &qword_1000E98D0);
  __chkstk_darwin(v3 - 8);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v26 = &v25 - v6;
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  __chkstk_darwin(v16);
  v18 = &v25 - v17;
  *v18 = static HorizontalAlignment.center.getter();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = sub_100002B38(&qword_10012D530, &qword_1000E98D8);
  sub_100006CE8(&v18[*(v19 + 44)]);
  *v15 = static HorizontalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  sub_100006CE8(&v15[*(v19 + 44)]);
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  sub_100006CE8(&v12[*(v19 + 44)]);
  sub_1000035B4(v18, v9, &qword_10012D528, &qword_1000E98D0);
  v20 = v26;
  sub_1000035B4(v15, v26, &qword_10012D528, &qword_1000E98D0);
  v21 = v27;
  sub_1000035B4(v12, v27, &qword_10012D528, &qword_1000E98D0);
  v22 = v28;
  sub_1000035B4(v9, v28, &qword_10012D528, &qword_1000E98D0);
  v23 = sub_100002B38(&qword_10012D538, &qword_1000E98E0);
  sub_1000035B4(v20, v22 + *(v23 + 48), &qword_10012D528, &qword_1000E98D0);
  sub_1000035B4(v21, v22 + *(v23 + 64), &qword_10012D528, &qword_1000E98D0);
  sub_100005688(v12, &qword_10012D528, &qword_1000E98D0);
  sub_100005688(v15, &qword_10012D528, &qword_1000E98D0);
  sub_100005688(v18, &qword_10012D528, &qword_1000E98D0);
  sub_100005688(v21, &qword_10012D528, &qword_1000E98D0);
  sub_100005688(v20, &qword_10012D528, &qword_1000E98D0);
  return sub_100005688(v9, &qword_10012D528, &qword_1000E98D0);
}

uint64_t sub_100006CE8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002B38(&qword_10012D500, &qword_1000E98A8);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  sub_100005FF8(&v16 - v12);
  sub_100005FF8(v10);
  sub_1000035B4(v13, v7, &qword_10012D500, &qword_1000E98A8);
  sub_1000035B4(v10, v4, &qword_10012D500, &qword_1000E98A8);
  sub_1000035B4(v7, a1, &qword_10012D500, &qword_1000E98A8);
  v14 = sub_100002B38(&qword_10012D508, &qword_1000E98B0);
  sub_1000035B4(v4, a1 + *(v14 + 48), &qword_10012D500, &qword_1000E98A8);
  sub_100005688(v10, &qword_10012D500, &qword_1000E98A8);
  sub_100005688(v13, &qword_10012D500, &qword_1000E98A8);
  sub_100005688(v4, &qword_10012D500, &qword_1000E98A8);
  return sub_100005688(v7, &qword_10012D500, &qword_1000E98A8);
}

uint64_t sub_100006E94@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_100002B38(&qword_10012D4E8, &qword_1000E9890);
  __chkstk_darwin(v1 - 8);
  v25 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = &v23 - v4;
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  *v16 = static VerticalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = sub_100002B38(&qword_10012D4F0, &qword_1000E9898);
  sub_100006CE8(&v16[*(v17 + 44)]);
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_100006CE8(&v13[*(v17 + 44)]);
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_100006CE8(&v10[*(v17 + 44)]);
  sub_1000035B4(v16, v7, &qword_10012D4E8, &qword_1000E9890);
  v18 = v24;
  sub_1000035B4(v13, v24, &qword_10012D4E8, &qword_1000E9890);
  v19 = v25;
  sub_1000035B4(v10, v25, &qword_10012D4E8, &qword_1000E9890);
  v20 = v26;
  sub_1000035B4(v7, v26, &qword_10012D4E8, &qword_1000E9890);
  v21 = sub_100002B38(&qword_10012D4F8, &qword_1000E98A0);
  sub_1000035B4(v18, v20 + *(v21 + 48), &qword_10012D4E8, &qword_1000E9890);
  sub_1000035B4(v19, v20 + *(v21 + 64), &qword_10012D4E8, &qword_1000E9890);
  sub_100005688(v10, &qword_10012D4E8, &qword_1000E9890);
  sub_100005688(v13, &qword_10012D4E8, &qword_1000E9890);
  sub_100005688(v16, &qword_10012D4E8, &qword_1000E9890);
  sub_100005688(v19, &qword_10012D4E8, &qword_1000E9890);
  sub_100005688(v18, &qword_10012D4E8, &qword_1000E9890);
  return sub_100005688(v7, &qword_10012D4E8, &qword_1000E9890);
}

uint64_t sub_100007164@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v6 = sub_100002B38(&qword_10012D418, &qword_1000E97F0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v37 - v7);
  v9 = sub_100002B38(&qword_10012D420, &qword_1000E97F8);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  v12 = sub_100002B38(&qword_10012D428, &qword_1000E9800);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v37 - v14;
  v16 = sub_100002B38(&qword_10012D430, &qword_1000E9808);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v37 - v18;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  *v8 = static Alignment.topTrailing.getter();
  v8[1] = v20;
  v21 = sub_100002B38(&qword_10012D438, &qword_1000E9810);
  sub_100007548(a2, a3, v8 + *(v21 + 44));
  static Alignment.center.getter();
  v22 = &v11[*(sub_100002B38(&qword_10012D440, &qword_1000E9818) + 44)];
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100014830(v8, v22, &qword_10012D418, &qword_1000E97F0);
  v23 = (v22 + *(sub_100002B38(&qword_10012D448, &qword_1000E9820) + 36));
  v24 = v43;
  v23[4] = v42;
  v23[5] = v24;
  v23[6] = v44;
  v25 = v39;
  *v23 = v38;
  v23[1] = v25;
  v26 = v41;
  v23[2] = v40;
  v23[3] = v26;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100014830(v11, v15, &qword_10012D420, &qword_1000E97F8);
  v27 = &v15[*(v13 + 44)];
  v28 = v50;
  *(v27 + 4) = v49;
  *(v27 + 5) = v28;
  *(v27 + 6) = v51;
  v29 = v46;
  *v27 = v45;
  *(v27 + 1) = v29;
  v30 = v48;
  *(v27 + 2) = v47;
  *(v27 + 3) = v30;
  v31 = static Color.teal.getter();
  LOBYTE(v13) = static Edge.Set.all.getter();
  sub_100014830(v15, v19, &qword_10012D428, &qword_1000E9800);
  v32 = &v19[*(v17 + 44)];
  *v32 = v31;
  v32[8] = v13;
  v33 = static SafeAreaRegions.all.getter();
  LOBYTE(v13) = static Edge.Set.all.getter();
  v34 = v37;
  sub_100014830(v19, v37, &qword_10012D430, &qword_1000E9808);
  result = sub_100002B38(&qword_10012D450, &qword_1000E9828);
  v36 = v34 + *(result + 36);
  *v36 = v33;
  *(v36 + 8) = v13;
  return result;
}

uint64_t sub_100007548@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v76 = a1;
  v77 = a2;
  v74 = a3;
  v68 = type metadata accessor for Image.ResizingMode();
  v3 = *(v68 - 8);
  __chkstk_darwin(v68);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&qword_10012D458, &qword_1000E9830);
  v72 = *(v6 - 8);
  v73 = v6;
  __chkstk_darwin(v6);
  v71 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v70 = &v68 - v9;
  v10 = sub_100002B38(&qword_10012D460, &qword_1000E9838);
  __chkstk_darwin(v10);
  v12 = &v68 - v11;
  v13 = sub_100002B38(&qword_10012D468, &qword_1000E9840);
  __chkstk_darwin(v13);
  v15 = &v68 - v14;
  v16 = sub_100002B38(&qword_10012D470, &qword_1000E9848);
  __chkstk_darwin(v16);
  v18 = &v68 - v17;
  v19 = sub_100002B38(&qword_10012D478, &qword_1000E9850);
  __chkstk_darwin(v19 - 8);
  v69 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v75 = &v68 - v22;
  GeometryProxy.size.getter();
  v24 = v23;
  GeometryProxy.size.getter();
  if (v25 >= v24)
  {
    *v12 = static VerticalAlignment.center.getter();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v36 = sub_100002B38(&qword_10012D480, &qword_1000E9858);
    sub_100006A18(&v12[*(v36 + 44)]);
    v37 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v38 = &v12[*(v10 + 36)];
    *v38 = v37;
    *(v38 + 1) = v39;
    *(v38 + 2) = v40;
    *(v38 + 3) = v41;
    *(v38 + 4) = v42;
    v38[40] = 0;
    sub_1000035B4(v12, v15, &qword_10012D460, &qword_1000E9838);
    swift_storeEnumTagMultiPayload();
    sub_100014898();
    sub_100014950();
    _ConditionalContent<>.init(storage:)();
    v33 = v12;
    v34 = &qword_10012D460;
    v35 = &qword_1000E9838;
  }

  else
  {
    *v18 = static HorizontalAlignment.center.getter();
    *(v18 + 1) = 0;
    v18[16] = 1;
    v26 = sub_100002B38(&qword_10012D4E0, &qword_1000E9888);
    sub_100006E94(&v18[*(v26 + 44)]);
    v27 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v28 = &v18[*(v16 + 36)];
    *v28 = v27;
    *(v28 + 1) = v29;
    *(v28 + 2) = v30;
    *(v28 + 3) = v31;
    *(v28 + 4) = v32;
    v28[40] = 0;
    sub_1000035B4(v18, v15, &qword_10012D470, &qword_1000E9848);
    swift_storeEnumTagMultiPayload();
    sub_100014898();
    sub_100014950();
    _ConditionalContent<>.init(storage:)();
    v33 = v18;
    v34 = &qword_10012D470;
    v35 = &qword_1000E9848;
  }

  sub_100005688(v33, v34, v35);
  Image.init(systemName:)();
  v43 = v68;
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v68);
  v44 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v43);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v45 = v90;
  v46 = v91;
  v47 = v92;
  v48 = v93;
  v49 = v94;
  v50 = v95;
  v51 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v87 = v46;
  v86 = v48;
  v85 = 0;
  *&v78 = v44;
  *(&v78 + 1) = v45;
  LOBYTE(v79) = v46;
  *(&v79 + 1) = v47;
  LOBYTE(v80) = v48;
  *(&v80 + 1) = v49;
  *&v81 = v50;
  BYTE8(v81) = v51;
  *&v82 = v52;
  *(&v82 + 1) = v53;
  *&v83 = v54;
  *(&v83 + 1) = v55;
  v84 = 0;
  v56 = swift_allocObject();
  *(v56 + 16) = v76;
  *(v56 + 24) = v77;

  sub_100002B38(&qword_10012D4B8, &qword_1000E9870);
  sub_100014A08();
  v57 = v70;
  View.onTapGesture(count:perform:)();

  v88[4] = v82;
  v88[5] = v83;
  v89 = v84;
  v88[0] = v78;
  v88[1] = v79;
  v88[2] = v80;
  v88[3] = v81;
  sub_100005688(v88, &qword_10012D4B8, &qword_1000E9870);
  v58 = v75;
  v59 = v69;
  sub_1000035B4(v75, v69, &qword_10012D478, &qword_1000E9850);
  v61 = v71;
  v60 = v72;
  v62 = *(v72 + 16);
  v63 = v73;
  v62(v71, v57, v73);
  v64 = v74;
  sub_1000035B4(v59, v74, &qword_10012D478, &qword_1000E9850);
  v65 = sub_100002B38(&qword_10012D4D8, &qword_1000E9880);
  v62((v64 + *(v65 + 48)), v61, v63);
  v66 = *(v60 + 8);
  v66(v57, v63);
  sub_100005688(v58, &qword_10012D478, &qword_1000E9850);
  v66(v61, v63);
  return sub_100005688(v59, &qword_10012D478, &qword_1000E9850);
}

uint64_t sub_100007C9C@<X0>(uint64_t (**a1)@<X0>(uint64_t a2@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_100014828;
  a1[1] = v5;
}

Swift::Int sub_100007D1C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100007D90(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

double sub_100007DF0()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;

  sub_100002B38(&qword_10012D008, &qword_1000E9430);
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  return v4 / v2;
}

void *sub_100007EC8()
{
  v1 = v0;
  v2 = type metadata accessor for AccessPointShaderTransitionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v26 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 48);
  LOBYTE(v28) = *(v0 + 40);
  *(&v28 + 1) = v12;
  sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
  result = State.wrappedValue.getter();
  if (!v27)
  {
    v28 = *(v0 + 56);
    sub_100002B38(&qword_10012CFE0, &qword_1000E9390);
    State.wrappedValue.getter();
    v14 = v27;
    v15 = *(AccessPointContainer.items.getter() + 16);

    if (v14 < v15)
    {
      v16 = v3;
      v17 = *(v1 + 8);
      v18 = *(v1 + 16);

      if ((v18 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v19 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v16 = v3;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v9 + 8))(v11, v8);
        v17 = v28;
      }

      swift_getKeyPath();
      *&v28 = v17;
      sub_1000113C0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v17 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) == 1)
      {
        swift_getKeyPath();
        *&v28 = v17;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v20 = *(v17 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);

        if (v20 > 0)
        {
          return result;
        }

        v21 = type metadata accessor for TaskPriority();
        (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
        v22 = v26;
        sub_100013BE4(v1, v26, type metadata accessor for AccessPointShaderTransitionView);
        type metadata accessor for MainActor();
        v23 = static MainActor.shared.getter();
        v24 = (*(v16 + 80) + 32) & ~*(v16 + 80);
        v25 = swift_allocObject();
        *(v25 + 16) = v23;
        *(v25 + 24) = &protocol witness table for MainActor;
        sub_10001212C(v22, v25 + v24, type metadata accessor for AccessPointShaderTransitionView);
        sub_100014BBC(0, 0, v7, &unk_1000E93A0, v25);
      }
    }
  }

  return result;
}

uint64_t sub_100008330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for AccessPointShaderTransitionView(0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v8;
  v4[14] = v7;

  return _swift_task_switch(sub_100008468, v8, v7);
}

uint64_t sub_100008468()
{
  *(v0 + 16) = *(*(v0 + 40) + 56);
  sub_100002B38(&qword_10012CFE0, &qword_1000E9390);
  State.wrappedValue.getter();
  v2 = floor(AccessPointContainer.displayDuration(for:)(*(v0 + 32)) * 1000000000.0);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v1);
  }

  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_100008594;
  v1 = v3;

  return static Task<>.sleep(nanoseconds:)(v1);
}

uint64_t sub_100008594()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_100014BB8;
  }

  else
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1000086B8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000086B8()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[5];

  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_100013BE4(v4, v1, type metadata accessor for AccessPointShaderTransitionView);
  v6 = static MainActor.shared.getter();
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_10001212C(v1, v8 + v7, type metadata accessor for AccessPointShaderTransitionView);
  sub_100014BBC(0, 0, v2, &unk_1000E93B0, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100008828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  v5 = type metadata accessor for AccessPointUseCase();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v6 = type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[30] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000899C, v8, v7);
}

void *sub_10000899C()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 208);

  type metadata accessor for AccessPointShaderTransitionView(0);
  dispatch thunk of GameDashboardLaunchContext.launchTarget.getter();
  (*(v3 + 104))(v2, enum case for GameDashboardLaunchContext.LaunchTarget.dashboard(_:), v4);
  sub_1000113C0(&qword_10012CFB8, &type metadata accessor for GameDashboardLaunchContext.LaunchTarget, &protocol conformance descriptor for GameDashboardLaunchContext.LaunchTarget);
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  v6 = *(v3 + 8);
  v6(v2, v4);
  v6(v1, v4);
  if ((v5 & 1) == 0)
  {
    v7 = *(v0 + 160);
    v9 = *(v7 + 56);
    v8 = *(v7 + 64);
    *(v0 + 16) = v9;
    *(v0 + 24) = v8;
    sub_100002B38(&qword_10012CFE0, &qword_1000E9390);
    State.wrappedValue.getter();
    v10 = *(v0 + 128);
    v11 = *(AccessPointContainer.items.getter() + 16);

    if (v10 >= v11 - 1)
    {
      v25 = *(v0 + 176);
      v24 = *(v0 + 184);
      v27 = *(v0 + 160);
      v26 = *(v0 + 168);
      AccessPointContainer.useCase.getter();
      v28 = AccessPointUseCase.isEphemeral.getter();
      (*(v25 + 8))(v24, v26);
      if (v28)
      {
        v29 = 2;
      }

      else
      {
        v29 = 1;
      }

      v30 = *(v27 + 48);
      *(v0 + 32) = *(v27 + 40);
      *(v0 + 40) = v30;
      *(v0 + 248) = v29;
      sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
      State.wrappedValue.setter();
      goto LABEL_15;
    }

    *(v0 + 48) = v9;
    *(v0 + 56) = v8;

    result = State.wrappedValue.getter();
    v13 = *(v0 + 136);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      __break(1u);
      return result;
    }

    *(v0 + 64) = v9;
    *(v0 + 72) = v8;
    *(v0 + 144) = v15;
    State.wrappedValue.setter();

    *(v0 + 80) = v9;
    *(v0 + 88) = v8;
    State.wrappedValue.getter();
    if (*(v0 + 152) != 1)
    {
      goto LABEL_14;
    }

    v16 = *(v0 + 192);
    v17 = *(v0 + 168);
    v18 = *(v0 + 176);
    AccessPointContainer.useCase.getter();
    (*(v18 + 104))(v16, enum case for AccessPointUseCase.welcomeBannerAndAccessPoint(_:), v17);
    sub_1000113C0(&qword_10012CFE8, &type metadata accessor for AccessPointUseCase, &protocol conformance descriptor for AccessPointUseCase);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v20 = *(v0 + 192);
    v19 = *(v0 + 200);
    v21 = *(v0 + 168);
    v22 = *(v0 + 176);
    if (*(v0 + 96) == *(v0 + 112) && *(v0 + 104) == *(v0 + 120))
    {
      v23 = *(v22 + 8);
      v23(*(v0 + 192), *(v0 + 168));
      v23(v19, v21);
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v32 = *(v22 + 8);
      v32(v20, v21);
      v32(v19, v21);

      if ((v31 & 1) == 0)
      {
LABEL_14:
        sub_100007EC8();
        goto LABEL_15;
      }
    }

    v33 = *(v0 + 160);
    static Animation.spring(response:dampingFraction:blendDuration:)();
    *(swift_task_alloc() + 16) = v33;
    withAnimation<A>(_:_:)();

    goto LABEL_14;
  }

LABEL_15:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_100008E1C()
{
  v0 = type metadata accessor for AccessPointAnchoring();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v8 - v5;
  type metadata accessor for AccessPointShaderTransitionView(0);
  sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  State.wrappedValue.getter();
  (*(v1 + 16))(v3, v6, v0);
  State.wrappedValue.setter();
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_100008F80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v99 = a1;
  v3 = type metadata accessor for AccessPointAnchoring();
  v75 = *(v3 - 8);
  v76 = v3;
  __chkstk_darwin(v3);
  v74 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002B38(&qword_10012D118, &qword_1000E9508);
  v91 = *(v5 - 8);
  v92 = v5;
  __chkstk_darwin(v5);
  v88 = &v73 - v6;
  v73 = type metadata accessor for AccessPointShaderTransitionView(0);
  v7 = *(v73 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v73);
  v9 = sub_100002B38(&qword_10012D120, &qword_1000E9510);
  __chkstk_darwin(v9);
  v11 = &v73 - v10;
  v12 = sub_100002B38(&qword_10012D128, &qword_1000E9518);
  v93 = *(v12 - 8);
  v94 = v12;
  __chkstk_darwin(v12);
  v86 = &v73 - v13;
  v90 = sub_100002B38(&qword_10012D130, &unk_1000E9520);
  __chkstk_darwin(v90);
  v95 = &v73 - v14;
  v85 = static HorizontalAlignment.center.getter();
  sub_100013BE4(v2, &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointShaderTransitionView);
  v15 = *(v7 + 80);
  v16 = (v15 + 16) & ~v15;
  v96 = v8;
  v87 = v15;
  v17 = swift_allocObject();
  v89 = v16;
  v84 = v17;
  v97 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001212C(v97, v17 + v16, type metadata accessor for AccessPointShaderTransitionView);
  v83 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v112 = 0;
  v111 = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v113[3] + 7) = *(&v113[10] + 8);
  *(&v113[4] + 7) = *(&v113[11] + 8);
  *(&v113[5] + 7) = *(&v113[12] + 8);
  *(&v113[6] + 7) = *(&v113[13] + 8);
  *(v113 + 7) = *(&v113[7] + 8);
  *(&v113[1] + 7) = *(&v113[8] + 8);
  *(&v113[2] + 7) = *(&v113[9] + 8);
  v27 = *(v2 + 48);
  v106[0] = *(v2 + 40);
  v26 = v106[0];
  v107 = v27;
  sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
  v98 = v2;
  State.projectedValue.getter();
  v81 = v102;
  v82 = v101;
  v80 = v103;
  LOBYTE(v101) = v26;
  v102 = v27;
  State.wrappedValue.getter();
  v106[0] = v106[0] == 1;
  State.init(wrappedValue:)();
  v78 = v101;
  v79 = v102;
  v28 = static Color.clear.getter();
  v29 = &v11[*(v9 + 36)];
  v30 = v29 + *(sub_100002B38(&qword_10012D138, &unk_1000EA180) + 36);
  GameLayerBackgroundBlurView.init()();
  v31 = static Alignment.center.getter();
  v33 = v32;
  v34 = &v30[*(sub_100002B38(&qword_10012D140, &qword_1000E9530) + 36)];
  *v34 = v31;
  v34[1] = v33;
  *v29 = v28;
  v35 = v29 + *(sub_100002B38(&qword_10012D148, &unk_1000EA190) + 36);
  v36 = *(type metadata accessor for RoundedRectangle() + 20);
  v37 = enum case for RoundedCornerStyle.continuous(_:);
  v38 = type metadata accessor for RoundedCornerStyle();
  v39 = *(*(v38 - 8) + 104);
  v77 = v9;
  v39(&v35[v36], v37, v38);
  __asm { FMOV            V0.2D, #30.0 }

  *v35 = _Q0;
  *&v35[*(sub_100002B38(&qword_10012CDE0, &qword_1000E90D0) + 36)] = 256;
  v45 = static Alignment.center.getter();
  v47 = v46;
  v48 = (v29 + *(sub_100002B38(&qword_10012D150, &qword_1000E9538) + 36));
  *v48 = v45;
  v48[1] = v47;
  *v11 = v85;
  *(v11 + 1) = 0;
  v11[16] = 0;
  *(v11 + 5) = *&v106[3];
  *(v11 + 17) = *v106;
  v49 = v84;
  *(v11 + 3) = sub_100012828;
  *(v11 + 4) = v49;
  v11[40] = v83;
  *(v11 + 11) = *&v110[3];
  *(v11 + 41) = *v110;
  *(v11 + 6) = v19;
  *(v11 + 7) = v21;
  *(v11 + 8) = v23;
  *(v11 + 9) = v25;
  v11[80] = 0;
  v50 = v113[5];
  *(v11 + 145) = v113[4];
  *(v11 + 161) = v50;
  *(v11 + 177) = v113[6];
  v51 = *(&v113[6] + 15);
  v52 = v113[1];
  *(v11 + 81) = v113[0];
  *(v11 + 97) = v52;
  v53 = v113[3];
  *(v11 + 113) = v113[2];
  *(v11 + 129) = v53;
  v54 = v81;
  v55 = v82;
  *(v11 + 24) = v51;
  *(v11 + 25) = v55;
  *(v11 + 26) = v54;
  v11[216] = v80;
  *(v11 + 55) = *&v109[3];
  *(v11 + 217) = *v109;
  v11[224] = v78;
  *(v11 + 57) = *&v108[3];
  *(v11 + 225) = *v108;
  *(v11 + 29) = v79;
  v104 = type metadata accessor for Capsule();
  v105 = sub_1000113C0(&qword_10012D158, &type metadata accessor for Capsule, &protocol conformance descriptor for Capsule);
  v56 = sub_100012854(&v101);
  v57 = v98;
  v39(v56, v37, v38);
  sub_1000128B8();
  v58 = v88;
  StrokeFocusEffect.init(shape:)();
  sub_1000057D8(&qword_10012D1B8, &qword_10012D118, &qword_1000E9508, &protocol conformance descriptor for StrokeFocusEffect<A>);
  v59 = v86;
  v60 = v92;
  View.focusEffect<A>(_:)();
  (*(v91 + 8))(v58, v60);
  sub_100005688(v11, &qword_10012D120, &qword_1000E9510);
  v61 = *(v57 + 136);
  LOBYTE(v101) = *(v57 + 128);
  v102 = v61;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  v62 = 0.0;
  if ((v100 & 1) == 0)
  {
    sub_100002B38(&qword_10012CE60, qword_1000E91C0);
    v63 = v74;
    State.wrappedValue.getter();
    v64 = AccessPointAnchoring.bottom.getter();
    (*(v75 + 8))(v63, v76);
    if (v64)
    {
      v62 = 200.0;
    }

    else
    {
      v62 = -200.0;
    }
  }

  v65 = v95;
  (*(v93 + 32))(v95, v59, v94);
  v66 = v65 + *(v90 + 36);
  *v66 = 0;
  *(v66 + 8) = v62;
  v67 = v97;
  sub_100013BE4(v57, v97, type metadata accessor for AccessPointShaderTransitionView);
  v68 = v89;
  v69 = swift_allocObject();
  sub_10001212C(v67, v69 + v68, type metadata accessor for AccessPointShaderTransitionView);
  v70 = v99;
  sub_100014830(v65, v99, &qword_10012D130, &unk_1000E9520);
  result = sub_100002B38(&qword_10012D1C0, &qword_1000E9560);
  v72 = (v70 + *(result + 36));
  *v72 = sub_100012B34;
  v72[1] = v69;
  v72[2] = 0;
  v72[3] = 0;
  return result;
}

uint64_t sub_100009964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v50 = a3;
  v4 = type metadata accessor for AccessPointShaderTransitionView(0);
  v5 = v4 - 8;
  v44 = *(v4 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v4);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for GeometryProxy();
  v7 = *(v39 - 8);
  v41 = *(v7 + 64);
  __chkstk_darwin(v39);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TapGesture();
  v10 = *(v9 - 8);
  v46 = v9;
  v47 = v10;
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002B38(&qword_10012D1C8, &qword_1000E9568);
  v14 = *(v13 - 8);
  v48 = v13;
  v49 = v14;
  __chkstk_darwin(v13);
  v40 = &v37 - v15;
  v16 = type metadata accessor for AccessPointContentView(0);
  __chkstk_darwin(v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v5 + 76);
  v20 = type metadata accessor for AccessPointContainer();
  (*(*(v20 - 8) + 16))(v18, a2 + v19, v20);
  v21 = *(a2 + 64);
  v53 = *(a2 + 56);
  v22 = v53;
  v54 = v21;
  sub_100002B38(&qword_10012CFE0, &qword_1000E9390);
  State.projectedValue.getter();
  v37 = v51;
  v23 = v52;
  *&v51 = v22;
  *(&v51 + 1) = v21;
  State.wrappedValue.getter();
  v24 = &v18[*(v16 + 20)];
  *v24 = v37;
  *(v24 + 2) = v23;
  v25 = *(v16 + 24);
  State.init(wrappedValue:)();
  *&v18[v25] = v51;
  TapGesture.init(count:)();
  v27 = v38;
  v26 = v39;
  (*(v7 + 16))(v38, v43, v39);
  v28 = v42;
  sub_100013BE4(a2, v42, type metadata accessor for AccessPointShaderTransitionView);
  v29 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v30 = (v41 + *(v44 + 80) + v29) & ~*(v44 + 80);
  v31 = swift_allocObject();
  (*(v7 + 32))(v31 + v29, v27, v26);
  sub_10001212C(v28, v31 + v30, type metadata accessor for AccessPointShaderTransitionView);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_100012F00;
  *(v32 + 24) = v31;
  v33 = v40;
  v34 = v46;
  Gesture.onEnded(_:)();

  (*(v47 + 8))(v12, v34);
  static GestureMask.all.getter();
  sub_1000113C0(&qword_10012D1D0, type metadata accessor for AccessPointContentView, &unk_1000E9638);
  sub_1000057D8(&qword_10012D1D8, &qword_10012D1C8, &qword_1000E9568, &protocol conformance descriptor for _EndedGesture<A>);
  v35 = v48;
  View.simultaneousGesture<A>(_:including:)();
  (*(v49 + 8))(v33, v35);
  return sub_100012FF4(v18);
}

uint64_t sub_100009EC8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GlobalCoordinateSpace();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v4 + 8))(v6, v3);
  v22.origin.x = v8;
  v22.origin.y = v10;
  v22.size.width = v12;
  v22.size.height = v14;
  MidX = CGRectGetMidX(v22);
  v23.origin.x = v8;
  v23.origin.y = v10;
  v23.size.width = v12;
  v23.size.height = v14;
  MidY = CGRectGetMidY(v23);
  v17 = *(a2 + 120);
  v20 = *(a2 + 104);
  v21 = v17;
  *v19 = MidX;
  *&v19[1] = MidY;
  sub_100002B38(&qword_10012D008, &qword_1000E9430);
  return State.wrappedValue.setter();
}

void *sub_10000A03C(uint64_t a1)
{
  sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
  result = State.wrappedValue.getter();
  if (!v3)
  {
    v2 = static Animation.spring(response:dampingFraction:blendDuration:)();
    __chkstk_darwin(v2);
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_10000A11C@<X0>(uint64_t a2@<X8>)
{
  v57 = a2;
  v56 = sub_100002B38(&qword_10012D0A8, &qword_1000E94B8);
  __chkstk_darwin(v56);
  v44 = (&v44 - v2);
  v50 = sub_100002B38(&qword_10012D0B0, &qword_1000E94C0);
  __chkstk_darwin(v50);
  v45 = &v44 - v3;
  v53 = sub_100002B38(&qword_10012D0B8, &qword_1000E94C8);
  __chkstk_darwin(v53);
  v55 = &v44 - v4;
  v47 = sub_100002B38(&qword_10012D0C0, &qword_1000E94D0);
  __chkstk_darwin(v47);
  v49 = &v44 - v5;
  v54 = sub_100002B38(&qword_10012D0C8, &qword_1000E94D8);
  __chkstk_darwin(v54);
  v51 = &v44 - v6;
  v48 = sub_100002B38(&qword_10012D0D0, &qword_1000E94E0);
  __chkstk_darwin(v48);
  v46 = (&v44 - v7);
  v52 = sub_100002B38(&qword_10012D0D8, &qword_1000E94E8);
  __chkstk_darwin(v52);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v13 = type metadata accessor for AccessPointAnchoring();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccessPointShaderTransitionView(0);
  sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  State.wrappedValue.getter();
  v17 = AccessPointAnchoring.centered.getter();
  v18 = *(v14 + 8);
  v18(v16, v13);
  if (v17)
  {
    sub_100008F80(v12);
    v19 = Namespace.wrappedValue.getter();
    v20 = static MatchedGeometryProperties.frame.getter();
    static UnitPoint.center.getter();
    v21 = &v12[*(v52 + 36)];
    *v21 = 1936683112;
    *(v21 + 1) = 0xE400000000000000;
    *(v21 + 2) = v19;
    *(v21 + 6) = v20;
    *(v21 + 4) = v22;
    *(v21 + 5) = v23;
    v21[48] = 1;
    sub_1000035B4(v12, v9, &qword_10012D0D8, &qword_1000E94E8);
    v24 = v46;
    *v46 = 0;
    *(v24 + 8) = 0;
    v25 = sub_100002B38(&qword_10012D110, &qword_1000E9500);
    sub_1000035B4(v9, v24 + *(v25 + 48), &qword_10012D0D8, &qword_1000E94E8);
    v26 = v24 + *(v25 + 64);
    *v26 = 0;
    *(v26 + 8) = 0;
    sub_100005688(v9, &qword_10012D0D8, &qword_1000E94E8);
    sub_1000035B4(v24, v49, &qword_10012D0D0, &qword_1000E94E0);
    swift_storeEnumTagMultiPayload();
    sub_1000057D8(&qword_10012D0F0, &qword_10012D0D0, &qword_1000E94E0, &protocol conformance descriptor for TupleView<A>);
    sub_1000057D8(&qword_10012D0F8, &qword_10012D0B0, &qword_1000E94C0, &protocol conformance descriptor for TupleView<A>);
    v27 = v51;
    _ConditionalContent<>.init(storage:)();
    sub_1000035B4(v27, v55, &qword_10012D0C8, &qword_1000E94D8);
    swift_storeEnumTagMultiPayload();
    sub_100012748();
    sub_1000057D8(&qword_10012D100, &qword_10012D0A8, &qword_1000E94B8, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_100005688(v27, &qword_10012D0C8, &qword_1000E94D8);
    sub_100005688(v24, &qword_10012D0D0, &qword_1000E94E0);
    v28 = v12;
  }

  else
  {
    State.wrappedValue.getter();
    v29 = AccessPointAnchoring.leading.getter();
    v18(v16, v13);
    sub_100008F80(v12);
    v30 = Namespace.wrappedValue.getter();
    v31 = static MatchedGeometryProperties.frame.getter();
    static UnitPoint.center.getter();
    v32 = &v12[*(v52 + 36)];
    *v32 = 1936683112;
    *(v32 + 1) = 0xE400000000000000;
    *(v32 + 2) = v30;
    *(v32 + 6) = v31;
    *(v32 + 4) = v33;
    *(v32 + 5) = v34;
    v32[48] = 1;
    sub_1000035B4(v12, v9, &qword_10012D0D8, &qword_1000E94E8);
    v28 = v12;
    if (v29)
    {
      v35 = v45;
      sub_1000035B4(v9, v45, &qword_10012D0D8, &qword_1000E94E8);
      v36 = v35 + *(sub_100002B38(&qword_10012D108, &qword_1000E94F8) + 48);
      *v36 = 0;
      *(v36 + 8) = 0;
      sub_100005688(v9, &qword_10012D0D8, &qword_1000E94E8);
      v37 = &qword_10012D0B0;
      v38 = &qword_1000E94C0;
      sub_1000035B4(v35, v49, &qword_10012D0B0, &qword_1000E94C0);
      swift_storeEnumTagMultiPayload();
      sub_1000057D8(&qword_10012D0F0, &qword_10012D0D0, &qword_1000E94E0, &protocol conformance descriptor for TupleView<A>);
      sub_1000057D8(&qword_10012D0F8, &qword_10012D0B0, &qword_1000E94C0, &protocol conformance descriptor for TupleView<A>);
      v39 = v51;
      _ConditionalContent<>.init(storage:)();
      sub_1000035B4(v39, v55, &qword_10012D0C8, &qword_1000E94D8);
      swift_storeEnumTagMultiPayload();
      sub_100012748();
      sub_1000057D8(&qword_10012D100, &qword_10012D0A8, &qword_1000E94B8, &protocol conformance descriptor for TupleView<A>);
      _ConditionalContent<>.init(storage:)();
      sub_100005688(v39, &qword_10012D0C8, &qword_1000E94D8);
      v40 = v35;
    }

    else
    {
      v41 = v44;
      *v44 = 0;
      *(v41 + 8) = 0;
      v42 = sub_100002B38(&qword_10012D0E0, &qword_1000E94F0);
      sub_1000035B4(v9, v41 + *(v42 + 48), &qword_10012D0D8, &qword_1000E94E8);
      sub_100005688(v9, &qword_10012D0D8, &qword_1000E94E8);
      v37 = &qword_10012D0A8;
      v38 = &qword_1000E94B8;
      sub_1000035B4(v41, v55, &qword_10012D0A8, &qword_1000E94B8);
      swift_storeEnumTagMultiPayload();
      sub_100012748();
      sub_1000057D8(&qword_10012D100, &qword_10012D0A8, &qword_1000E94B8, &protocol conformance descriptor for TupleView<A>);
      _ConditionalContent<>.init(storage:)();
      v40 = v41;
    }

    sub_100005688(v40, v37, v38);
  }

  return sub_100005688(v28, &qword_10012D0D8, &qword_1000E94E8);
}

uint64_t sub_10000AA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v134 = a2;
  v131 = a3;
  v116 = type metadata accessor for GlobalCoordinateSpace();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for AccessPointAnchoring();
  v111 = *(v130 - 8);
  __chkstk_darwin(v130);
  v110 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for EnvironmentValues();
  v108 = *(v109 - 1);
  __chkstk_darwin(v109);
  v107 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for GeometryProxy();
  v133 = *(v121 - 8);
  __chkstk_darwin(v121);
  v128 = v7;
  v132 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessPointShaderTransitionView(0);
  v127 = *(v8 - 8);
  v9 = *(v127 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_100002B38(&qword_10012D010, &qword_1000E9438);
  __chkstk_darwin(v135);
  v12 = &v98 - v11;
  v13 = sub_100002B38(&qword_10012D018, &qword_1000E9440);
  v113 = *(v13 - 8);
  __chkstk_darwin(v13);
  v129 = &v98 - v14;
  v15 = sub_100002B38(&qword_10012D020, &qword_1000E9448);
  v118 = *(v15 - 8);
  __chkstk_darwin(v15);
  v117 = &v98 - v16;
  v17 = sub_100002B38(&qword_10012D028, &qword_1000E9450);
  v120 = *(v17 - 8);
  __chkstk_darwin(v17);
  v119 = &v98 - v18;
  v19 = sub_100002B38(&qword_10012D030, &qword_1000E9458);
  __chkstk_darwin(v19);
  v21 = &v98 - v20;
  v22 = *(a1 + 96);
  LOBYTE(v140) = *(a1 + 88);
  v141 = v22;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  if (v136 == 1)
  {
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CGRect(255);
    v24 = v23;
    v25 = sub_100012558();
    v26 = sub_1000113C0(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring, &protocol conformance descriptor for AccessPointAnchoring);
    v140 = v135;
    v141 = v130;
    v142 = v25;
    v143 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v28 = sub_1000113C0(&qword_10012D058, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
    v140 = v13;
    v141 = v24;
    v142 = OpaqueTypeConformance2;
    v143 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v32 = sub_100005FA4(v29, v30, v31);
    v140 = v15;
    v141 = &type metadata for AccessPointShaderTransitionView.AnimationState;
    v142 = v29;
    v143 = v32;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v102 = v19;
    v103 = v13;
    v104 = v21;
    v105 = v15;
    v106 = v17;
    *v12 = static HorizontalAlignment.center.getter();
    *(v12 + 1) = 0;
    v12[16] = 0;
    v34 = sub_100002B38(&qword_10012D038, &qword_1000E9460);
    sub_10000B9C8(&v12[*(v34 + 44)]);
    sub_100013BE4(a1, &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointShaderTransitionView);
    v36 = v132;
    v35 = v133;
    v37 = *(v133 + 16);
    v38 = v121;
    v126 = v133 + 16;
    v125 = v37;
    v37(v132, v134, v121);
    v39 = *(v127 + 80);
    v40 = (v39 + 16) & ~v39;
    v41 = *(v35 + 80);
    v42 = (v9 + v41 + v40) & ~v41;
    v123 = v39 | v41;
    v124 = v42 + v128;
    v43 = swift_allocObject();
    v127 = v40;
    v112 = v10;
    sub_10001212C(v10, v43 + v40, type metadata accessor for AccessPointShaderTransitionView);
    v45 = *(v35 + 32);
    v44 = v35 + 32;
    v128 = v42;
    v122 = v45;
    v45(v43 + v42, v36, v38);
    v46 = v135[9];
    v101 = v12;
    v47 = &v12[v46];
    *v47 = sub_1000121B4;
    *(v47 + 1) = v43;
    *(v47 + 2) = 0;
    *(v47 + 3) = 0;
    v48 = *(a1 + 8);
    LOBYTE(v42) = *(a1 + 16);

    v49 = v38;
    v50 = a1;
    if ((v42 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v51 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v52 = v107;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v108 + 1))(v52, v109);
      v48 = v140;
    }

    swift_getKeyPath();
    v140 = v48;
    sub_1000113C0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v53 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
    swift_beginAccess();
    v54 = v111;
    v55 = v110;
    v56 = v130;
    (*(v111 + 16))(v110, v48 + v53, v130);

    v109 = type metadata accessor for AccessPointShaderTransitionView;
    v57 = v112;
    sub_100013BE4(v50, v112, type metadata accessor for AccessPointShaderTransitionView);
    v58 = v132;
    v59 = v50;
    v60 = v134;
    v125(v132, v134, v49);
    v61 = swift_allocObject();
    v108 = type metadata accessor for AccessPointShaderTransitionView;
    sub_10001212C(v57, v61 + v127, type metadata accessor for AccessPointShaderTransitionView);
    v122(v61 + v128, v58, v49);
    v99 = sub_100012558();
    v62 = sub_1000113C0(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring, &protocol conformance descriptor for AccessPointAnchoring);
    v133 = v44;
    v63 = v59;
    v100 = v59;
    v107 = v62;
    v64 = v135;
    v65 = v101;
    View.onChange<A>(of:initial:_:)();

    (*(v54 + 8))(v55, v56);
    sub_100005688(v65, &qword_10012D010, &qword_1000E9438);
    v66 = v114;
    static CoordinateSpaceProtocol<>.global.getter();
    v67 = v116;
    GeometryProxy.frame<A>(in:)();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    (*(v115 + 8))(v66, v67);
    v140 = v69;
    v141 = v71;
    v142 = v73;
    v143 = v75;
    v76 = v112;
    sub_100013BE4(v63, v112, v109);
    v77 = v132;
    v78 = v60;
    v79 = v121;
    v125(v132, v78, v121);
    v80 = swift_allocObject();
    sub_10001212C(v76, v80 + v127, v108);
    v122(v80 + v128, v77, v79);
    type metadata accessor for CGRect(0);
    v116 = v81;
    v136 = v64;
    v137 = v56;
    v138 = v99;
    v139 = v107;
    v135 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
    v82 = swift_getOpaqueTypeConformance2();
    v83 = sub_1000113C0(&qword_10012D058, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
    v84 = v117;
    v85 = v103;
    v86 = v129;
    View.onChange<A>(of:initial:_:)();

    (*(v113 + 8))(v86, v85);
    v87 = v100;
    v88 = *(v100 + 48);
    LOBYTE(v140) = *(v100 + 40);
    v141 = v88;
    sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
    State.wrappedValue.getter();
    sub_100013BE4(v87, v76, v109);
    v125(v77, v134, v79);
    v89 = swift_allocObject();
    sub_10001212C(v76, v89 + v127, v108);
    v122(v89 + v128, v77, v79);
    v140 = v85;
    v141 = v116;
    v142 = v82;
    v143 = v83;
    v90 = swift_getOpaqueTypeConformance2();
    v93 = sub_100005FA4(v90, v91, v92);
    v94 = v119;
    v95 = v105;
    View.onChange<A>(of:initial:_:)();

    (*(v118 + 8))(v84, v95);
    v96 = v120;
    v97 = v106;
    (*(v120 + 16))(v104, v94, v106);
    swift_storeEnumTagMultiPayload();
    v140 = v95;
    v141 = &type metadata for AccessPointShaderTransitionView.AnimationState;
    v142 = v90;
    v143 = v93;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v96 + 8))(v94, v97);
  }
}

uint64_t sub_10000B9C8@<X0>(uint64_t a2@<X8>)
{
  v36 = a2;
  v35 = sub_100002B38(&qword_10012D060, &qword_1000E9480);
  __chkstk_darwin(v35);
  v32 = &v31 - v2;
  v33 = sub_100002B38(&qword_10012D068, &qword_1000E9488);
  __chkstk_darwin(v33);
  v4 = &v31 - v3;
  v34 = sub_100002B38(&qword_10012D070, &qword_1000E9490);
  __chkstk_darwin(v34);
  v6 = &v31 - v5;
  v7 = sub_100002B38(&qword_10012D078, &qword_1000E9498);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for AccessPointAnchoring();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccessPointShaderTransitionView(0);
  sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  State.wrappedValue.getter();
  v18 = AccessPointAnchoring.bottom.getter();
  (*(v15 + 8))(v17, v14);
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v19 = sub_100002B38(&qword_10012D080, &qword_1000E94A0);
  sub_10000A11C(&v13[*(v19 + 44)]);
  v20 = Namespace.wrappedValue.getter();
  LODWORD(v14) = static MatchedGeometryProperties.frame.getter();
  static UnitPoint.center.getter();
  v21 = &v13[*(v8 + 44)];
  *v21 = 1936683126;
  *(v21 + 1) = 0xE400000000000000;
  *(v21 + 2) = v20;
  *(v21 + 6) = v14;
  *(v21 + 4) = v22;
  *(v21 + 5) = v23;
  v21[48] = 1;
  sub_1000035B4(v13, v10, &qword_10012D078, &qword_1000E9498);
  if (v18)
  {
    *v6 = 0;
    v6[8] = 1;
    v24 = sub_100002B38(&qword_10012D0A0, &qword_1000E94B0);
    sub_1000035B4(v10, &v6[*(v24 + 48)], &qword_10012D078, &qword_1000E9498);
    sub_100005688(v10, &qword_10012D078, &qword_1000E9498);
    v25 = &qword_10012D070;
    v26 = &qword_1000E9490;
    sub_1000035B4(v6, v4, &qword_10012D070, &qword_1000E9490);
    swift_storeEnumTagMultiPayload();
    sub_1000057D8(&qword_10012D090, &qword_10012D070, &qword_1000E9490, &protocol conformance descriptor for TupleView<A>);
    sub_1000057D8(&qword_10012D098, &qword_10012D060, &qword_1000E9480, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    v27 = v6;
  }

  else
  {
    v28 = v32;
    sub_1000035B4(v10, v32, &qword_10012D078, &qword_1000E9498);
    v29 = v28 + *(sub_100002B38(&qword_10012D088, &qword_1000E94A8) + 48);
    *v29 = 0;
    *(v29 + 8) = 1;
    sub_100005688(v10, &qword_10012D078, &qword_1000E9498);
    v25 = &qword_10012D060;
    v26 = &qword_1000E9480;
    sub_1000035B4(v28, v4, &qword_10012D060, &qword_1000E9480);
    swift_storeEnumTagMultiPayload();
    sub_1000057D8(&qword_10012D090, &qword_10012D070, &qword_1000E9490, &protocol conformance descriptor for TupleView<A>);
    sub_1000057D8(&qword_10012D098, &qword_10012D060, &qword_1000E9480, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    v27 = v28;
  }

  sub_100005688(v27, v25, v26);
  return sub_100005688(v13, &qword_10012D078, &qword_1000E9498);
}

uint64_t sub_10000BEFC(uint64_t a1)
{
  v2 = v1;
  v50[1] = a1;
  v3 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v3 - 8);
  v55 = v50 - v4;
  v5 = type metadata accessor for AccessPointAnchoring();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v52 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GlobalCoordinateSpace();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 8);
  v16 = *(v1 + 16);

  v51 = v16;
  if ((v16 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    v50[0] = v8;
    v18 = v17;
    os_log(_:dso:log:_:_:)();

    v8 = v50[0];
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v12 + 8))(v14, v11);
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    static CoordinateSpaceProtocol<>.global.getter();
    GeometryProxy.frame<A>(in:)();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    (*(v8 + 8))(v10, v7);
    if (*(v2 + 24) >= v26)
    {
      v29 = v26;
    }

    else
    {
      v29 = *(v2 + 24);
    }

    if ((v51 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v30 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v12 + 8))(v14, v11);
      v15 = v59;
    }

    swift_getKeyPath();
    v59 = v15;
    sub_1000113C0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
    swift_beginAccess();
    v33 = v52;
    v32 = v53;
    v34 = v15 + v31;
    v35 = v54;
    (*(v53 + 16))(v52, v34, v54);

    v36 = (*(v32 + 88))(v33, v35);
    if (v36 == enum case for AccessPointAnchoring.topTrailing(_:))
    {
      v60.origin.x = v22;
      v60.origin.y = v24;
      v60.size.width = v26;
      v60.size.height = v28;
      MaxX = CGRectGetMaxX(v60);
      v38 = *(v2 + 48);
      v57 = *(v2 + 40);
      v58 = v38;
      sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
      State.wrappedValue.getter();
      v39 = v29;
      if (v56 == 1)
      {
        v39 = *(v2 + 32);
      }

      v22 = MaxX - v39;
      goto LABEL_20;
    }

    if (v36 != enum case for AccessPointAnchoring.bottomLeading(_:))
    {
      if (v36 != enum case for AccessPointAnchoring.bottomTrailing(_:))
      {
        (*(v32 + 8))(v33, v35);
        goto LABEL_20;
      }

      v61.origin.x = v22;
      v61.origin.y = v24;
      v61.size.width = v26;
      v61.size.height = v28;
      v40 = CGRectGetMaxX(v61);
      v41 = *(v2 + 48);
      v57 = *(v2 + 40);
      v58 = v41;
      sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
      State.wrappedValue.getter();
      v42 = v29;
      if (v56 == 1)
      {
        v42 = *(v2 + 32);
      }

      v22 = v40 - v42;
    }

    v62.origin.x = v22;
    v62.origin.y = v24;
    v62.size.width = v26;
    v62.size.height = v28;
    v24 = CGRectGetMaxY(v62) - *(v2 + 32);
LABEL_20:
    v43 = *(v2 + 48);
    v57 = *(v2 + 40);
    v58 = v43;
    sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
    State.wrappedValue.getter();
    v44 = *(v2 + 32);
    if (v56 == 1)
    {
      v45 = *(v2 + 32);
    }

    else
    {
      v45 = v29;
    }

    v46 = type metadata accessor for TaskPriority();
    v47 = v55;
    (*(*(v46 - 8) + 56))(v55, 1, 1, v46);
    type metadata accessor for MainActor();
    swift_unknownObjectRetain();
    v48 = static MainActor.shared.getter();
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = &protocol witness table for MainActor;
    *(v49 + 32) = Strong;
    *(v49 + 40) = v22;
    *(v49 + 48) = v24;
    *(v49 + 56) = v45;
    *(v49 + 64) = v44;
    sub_100014BBC(0, 0, v47, &unk_1000E9478, v49);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000C5D0@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v101 = type metadata accessor for AccessPointAnchoring();
  v84 = *(v101 - 8);
  __chkstk_darwin(v101);
  v83 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for EnvironmentValues();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v85 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessPointShaderTransitionView(0);
  v97 = *(v4 - 8);
  __chkstk_darwin(v4);
  v102 = v5;
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
  v100 = *(v80 - 8);
  __chkstk_darwin(v80);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002B38(&qword_10012CF70, &qword_1000E92B8);
  __chkstk_darwin(v9 - 8);
  v11 = (&v75 - v10);
  v12 = sub_100002B38(&qword_10012CF78, &qword_1000E92C0);
  __chkstk_darwin(v12);
  v14 = &v75 - v13;
  v95 = sub_100002B38(&qword_10012CF80, &qword_1000E92C8);
  v81 = *(v95 - 8);
  __chkstk_darwin(v95);
  v79 = &v75 - v15;
  v98 = sub_100002B38(&qword_10012CF88, &qword_1000E92D0);
  v82 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = (&v75 - v16);
  v87 = sub_100002B38(&qword_10012CF90, &qword_1000E92D8);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v99 = &v75 - v17;
  v92 = sub_100002B38(&qword_10012CF98, &qword_1000E92E0);
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v89 = &v75 - v18;
  *v11 = static Alignment.topLeading.getter();
  v11[1] = v19;
  v20 = v11 + *(sub_100002B38(&qword_10012CFA0, &qword_1000E92E8) + 44);
  v103 = v1;
  sub_10000D4FC(v1, v20);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v77 = v14;
  sub_100014830(v11, v14, &qword_10012CF70, &qword_1000E92B8);
  v76 = v12;
  v21 = &v14[*(v12 + 36)];
  v22 = v114;
  v23 = v115;
  *(v21 + 4) = v113;
  *(v21 + 5) = v22;
  *(v21 + 6) = v23;
  v24 = v110;
  *v21 = v109;
  *(v21 + 1) = v24;
  v25 = v112;
  *(v21 + 2) = v111;
  *(v21 + 3) = v25;
  v26 = v8;
  dispatch thunk of GameDashboardLaunchContext.launchTarget.getter();
  v94 = type metadata accessor for AccessPointShaderTransitionView;
  sub_100013BE4(v1, v6, type metadata accessor for AccessPointShaderTransitionView);
  v27 = *(v97 + 80);
  v28 = ((v27 + 16) & ~v27);
  v29 = swift_allocObject();
  v78 = type metadata accessor for AccessPointShaderTransitionView;
  v30 = v6;
  sub_10001212C(v6, v28 + v29, type metadata accessor for AccessPointShaderTransitionView);
  v31 = sub_100011090();
  v32 = sub_1000113C0(&qword_10012CFB8, &type metadata accessor for GameDashboardLaunchContext.LaunchTarget, &protocol conformance descriptor for GameDashboardLaunchContext.LaunchTarget);
  v33 = v80;
  v34 = v77;
  View.onChange<A>(of:initial:_:)();

  (*(v100 + 8))(v26, v33);
  sub_100005688(v34, &qword_10012CF78, &qword_1000E92C0);
  v35 = v103;
  v36 = *(v103 + 48);
  LOBYTE(v105) = *(v103 + 40);
  v106 = v36;
  sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
  State.wrappedValue.getter();
  sub_100013BE4(v35, v30, v94);
  v97 = v27;
  v37 = swift_allocObject();
  v94 = v28;
  v100 = v30;
  sub_10001212C(v30, v28 + v37, v78);
  v105 = v76;
  v106 = v33;
  v107 = v31;
  v108 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_100005FA4(OpaqueTypeConformance2, v39, v40);
  v42 = v95;
  v43 = v79;
  View.onChange<A>(of:initial:_:)();

  (*(v81 + 8))(v43, v42);
  v44 = *(v35 + 8);
  LODWORD(v43) = *(v35 + 16);

  v45 = v44;
  LODWORD(v81) = v43;
  if ((v43 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v46 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v47 = v85;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v88 + 8))(v47, v90);
    v45 = v105;
  }

  swift_getKeyPath();
  v105 = v45;
  sub_1000113C0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
  swift_beginAccess();
  v49 = v84;
  v50 = v83;
  v51 = v101;
  (*(v84 + 16))(v83, v45 + v48, v101);

  v52 = v100;
  sub_100013BE4(v103, v100, type metadata accessor for AccessPointShaderTransitionView);
  v53 = v94;
  v54 = swift_allocObject();
  sub_10001212C(v52, v53 + v54, type metadata accessor for AccessPointShaderTransitionView);
  v105 = v95;
  v106 = &type metadata for AccessPointShaderTransitionView.AnimationState;
  v107 = OpaqueTypeConformance2;
  v108 = v41;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = sub_1000113C0(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring, &protocol conformance descriptor for AccessPointAnchoring);
  v57 = v98;
  v95 = v55;
  v58 = v96;
  View.onChange<A>(of:initial:_:)();

  (*(v49 + 8))(v50, v51);
  (*(v82 + 8))(v58, v57);

  if ((v81 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v59 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v60 = v85;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v88 + 8))(v60, v90);
    v44 = v105;
  }

  swift_getKeyPath();
  v105 = v44;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v44 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) == 1)
  {
    swift_getKeyPath();
    v105 = v44;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v61 = *(v44 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);

    v62 = v61 > 0;
  }

  else
  {

    v62 = 1;
  }

  v104 = v62;
  v96 = type metadata accessor for AccessPointShaderTransitionView;
  v63 = v103;
  v64 = v100;
  sub_100013BE4(v103, v100, type metadata accessor for AccessPointShaderTransitionView);
  v65 = v94;
  v66 = swift_allocObject();
  sub_10001212C(v64, v65 + v66, type metadata accessor for AccessPointShaderTransitionView);
  v105 = v98;
  v106 = v101;
  v107 = v95;
  v108 = v56;
  swift_getOpaqueTypeConformance2();
  v67 = v89;
  v68 = v87;
  v69 = v99;
  View.onChange<A>(of:initial:_:)();

  (*(v86 + 8))(v69, v68);
  sub_100013BE4(v63, v64, v96);
  v70 = swift_allocObject();
  sub_10001212C(v64, v65 + v70, type metadata accessor for AccessPointShaderTransitionView);
  v71 = sub_100002B38(&qword_10012CFD8, &qword_1000E9358);
  v72 = v93;
  v73 = (v93 + *(v71 + 36));
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v73 = &unk_1000E9350;
  v73[1] = v70;
  return (*(v91 + 32))(v72, v67, v92);
}

uint64_t sub_10000D4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = type metadata accessor for RippleView(0);
  v43 = *(v40 - 8);
  __chkstk_darwin(v40);
  v5 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100002B38(&qword_10012CFF8, &qword_1000E9420);
  __chkstk_darwin(v6 - 8);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v42 = &v39 - v9;
  v10 = type metadata accessor for AccessPointShaderTransitionView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_100013BE4(a1, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointShaderTransitionView);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  sub_10001212C(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for AccessPointShaderTransitionView);
  v41 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v48 = 0;
  v23 = *(a1 + 80);
  v46 = *(a1 + 72);
  v47 = v23;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  if (v45 == 1)
  {
    v24 = sub_100007DF0();
    v26 = v25;
    v27 = *(v10 + 64);
    v28 = v40;
    sub_1000035B4(a1 + v27, v5 + *(v40 + 20), &qword_100132410, &unk_1000E9F30);
    sub_100013BE4(a1, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointShaderTransitionView);
    v29 = swift_allocObject();
    sub_10001212C(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v13, type metadata accessor for AccessPointShaderTransitionView);
    *v5 = v24;
    *(v5 + 1) = v26;
    *(v5 + *(v28 + 24)) = 1.0;
    Date.init()();
    v30 = (v5 + *(v28 + 32));
    *v30 = sub_100012114;
    v30[1] = v29;
    v31 = v42;
    sub_10001212C(v5, v42, type metadata accessor for RippleView);
    v32 = 0;
    v33 = v28;
    v34 = v31;
  }

  else
  {
    v32 = 1;
    v33 = v40;
    v34 = v42;
  }

  (*(v43 + 56))(v34, v32, 1, v33);
  v35 = v48;
  v36 = v44;
  sub_1000035B4(v34, v44, &qword_10012CFF8, &qword_1000E9420);
  *a2 = sub_100012094;
  *(a2 + 8) = v14;
  *(a2 + 16) = v41;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  *(a2 + 40) = v20;
  *(a2 + 48) = v22;
  *(a2 + 56) = v35;
  v37 = sub_100002B38(&qword_10012D000, &qword_1000E9428);
  sub_1000035B4(v36, a2 + *(v37 + 48), &qword_10012CFF8, &qword_1000E9420);

  sub_100005688(v34, &qword_10012CFF8, &qword_1000E9420);
  sub_100005688(v36, &qword_10012CFF8, &qword_1000E9420);
}

double sub_10000D960(uint64_t a1)
{

  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  State.wrappedValue.setter();

  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();

  return result;
}

uint64_t sub_10000DA5C(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointAnchoring();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v25 = &v23 - v5;
  v6 = type metadata accessor for AccessPointUseCase();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccessPointShaderTransitionView(0);
  (*(v11 + 104))(v13, enum case for GameDashboardLaunchContext.LaunchTarget.none(_:), v10);
  dispatch thunk of GameDashboardLaunchContext.launchTarget.setter();
  v14 = *(AccessPointContainer.items.getter() + 16);

  v28 = *(a1 + 56);
  v29 = v14 - 1;
  sub_100002B38(&qword_10012CFE0, &qword_1000E9390);
  State.wrappedValue.setter();
  AccessPointContainer.useCase.getter();
  LOBYTE(v13) = AccessPointUseCase.isEphemeral.getter();
  (*(v7 + 8))(v9, v6);
  if (v13)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v17 = *(a1 + 48);
  LOBYTE(v28) = *(a1 + 40);
  v16 = v28;
  *(&v28 + 1) = v17;
  LOBYTE(v29) = v15;
  sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
  State.wrappedValue.setter();
  LOBYTE(v28) = v16;
  *(&v28 + 1) = v17;
  State.wrappedValue.getter();
  if (v29 == 2)
  {
    v18 = *(a1 + 136);
    LOBYTE(v28) = *(a1 + 128);
    *(&v28 + 1) = v18;
    LOBYTE(v29) = 0;
    sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
    State.wrappedValue.setter();
    v20 = v25;
    v19 = v26;
    v21 = v27;
    (*(v26 + 104))(v25, enum case for AccessPointAnchoring.topCentered(_:), v27);
    (*(v19 + 16))(v24, v20, v21);
    sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  }

  else
  {
    sub_100002B38(&qword_10012CE60, qword_1000E91C0);
    v20 = v25;
    State.wrappedValue.getter();
    v19 = v26;
    v21 = v27;
    (*(v26 + 16))(v24, v20, v27);
  }

  State.wrappedValue.setter();
  return (*(v19 + 8))(v20, v21);
}

void sub_10000DE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v6 - 8);
  v52 = v47 - v7;
  v8 = type metadata accessor for EnvironmentValues();
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v49 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v11 + 104);
  (v15)(v14, enum case for GameDashboardLaunchContext.LaunchTarget.onboarding(_:), v10, v12);
  v16 = static GameDashboardLaunchContext.LaunchTarget.== infix(_:_:)();
  v17 = *(v11 + 8);
  v17(v14, v10);
  if (v16)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100011F80(v18, qword_100135C88);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Requesting invocation of onboarding flow from client.", v21, 2u);
    }

    v22 = *(a3 + 16);

    if ((v22 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v23 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v24 = v49;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v50 + 8))(v24, v51);
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v26 = type metadata accessor for TaskPriority();
      v27 = v52;
      (*(*(v26 - 8) + 56))(v52, 1, 1, v26);
      type metadata accessor for MainActor();
      swift_unknownObjectRetain();
      v28 = static MainActor.shared.getter();
      v29 = swift_allocObject();
      v29[2] = v28;
      v29[3] = &protocol witness table for MainActor;
      v29[4] = Strong;
      sub_100014BBC(0, 0, v27, &unk_1000E9418, v29);

LABEL_18:
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v47[2] = a1;
    v48 = enum case for GameDashboardLaunchContext.LaunchTarget.dashboard(_:);
    v15(v14);
    v30 = static GameDashboardLaunchContext.LaunchTarget.== infix(_:_:)();
    v17(v14, v10);
    if (v30)
    {
      v47[0] = v15;
      v47[1] = a2;
      v32 = *(a3 + 80);
      LOBYTE(v56) = *(a3 + 72);
      v31 = v56;
      v57 = v32;

      sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
      State.wrappedValue.getter();
      v54 = v31;
      v15 = v47[0];
      v55 = v32;
      v53 = (v58 & 1) == 0;
      State.wrappedValue.setter();
    }

    v33 = *(a3 + 16);

    if ((v33 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v34 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v35 = v49;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v50 + 8))(v35, v51);
    }

    v36 = swift_unknownObjectWeakLoadStrong();

    if (v36)
    {
      v37 = v48;
      (v15)(v14, v48, v10);
      v38 = static GameDashboardLaunchContext.LaunchTarget.== infix(_:_:)();
      v17(v14, v10);
      if (v38 & 1) != 0 || ((v15)(v14, v37, v10), v39 = static GameDashboardLaunchContext.LaunchTarget.== infix(_:_:)(), v17(v14, v10), (v39))
      {
        sub_100011E2C();
        (v15)(v14, v37, v10);
        v40 = static GameDashboardLaunchContext.LaunchTarget.== infix(_:_:)();
        v17(v14, v10);
        isa = NSNumber.init(BOOLeanLiteral:)(v40 & 1).super.super.isa;
        v42 = type metadata accessor for TaskPriority();
        v43 = v52;
        (*(*(v42 - 8) + 56))(v52, 1, 1, v42);
        type metadata accessor for MainActor();
        swift_unknownObjectRetain();
        v44 = isa;
        v45 = static MainActor.shared.getter();
        v46 = swift_allocObject();
        v46[2] = v45;
        v46[3] = &protocol witness table for MainActor;
        v46[4] = v36;
        v46[5] = v44;
        sub_100014BBC(0, 0, v43, &unk_1000E9408, v46);
      }

      goto LABEL_18;
    }
  }
}

uint64_t sub_10000E5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000E648, v6, v5);
}

uint64_t sub_10000E648()
{
  v1 = *(v0 + 16);

  [v1 requireOnboardingFlow];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000E6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000E750, v7, v6);
}

uint64_t sub_10000E750()
{
  v1 = v0[3];
  v2 = v0[2];

  [v2 isPresentingDashboardFromAccessPoint:v1];
  v3 = v0[1];

  return v3();
}

void *sub_10000E7C8(uint64_t a1)
{
  v2 = type metadata accessor for AnimationCompletionCriteria();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AccessPointShaderTransitionView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = *(a1 + 48);
  v17 = *(a1 + 40);
  v18 = v9;
  sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
  result = State.wrappedValue.getter();
  if (v16 == 2)
  {
    v11 = *(a1 + 80);
    v17 = *(a1 + 72);
    v18 = v11;
    sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
    result = State.wrappedValue.getter();
    if ((v16 & 1) == 0)
    {
      v12 = static Animation.spring(response:dampingFraction:blendDuration:)();
      __chkstk_darwin(v12);
      *&v15[-16] = a1;
      sub_100013BE4(a1, &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AccessPointShaderTransitionView);
      v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v14 = swift_allocObject();
      sub_10001212C(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13, type metadata accessor for AccessPointShaderTransitionView);
      static AnimationCompletionCriteria.logicallyComplete.getter();
      withAnimation<A>(_:completionCriteria:_:completion:)();

      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

double sub_10000EA90(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointShaderTransitionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);

  if ((v14 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    v26 = a1;
    v16 = v8;
    v17 = v5;
    v18 = v3;
    v19 = v15;
    os_log(_:dso:log:_:_:)();

    v3 = v18;
    v5 = v17;
    v8 = v16;
    a1 = v26;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    v13 = v27;
  }

  swift_getKeyPath();
  v27 = v13;
  sub_1000113C0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v13 + 24);

  if (v20)
  {

    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    sub_100013BE4(a1, v5, type metadata accessor for AccessPointShaderTransitionView);
    type metadata accessor for MainActor();
    v23 = static MainActor.shared.getter();
    v24 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = &protocol witness table for MainActor;
    sub_10001212C(v5, v25 + v24, type metadata accessor for AccessPointShaderTransitionView);
    sub_100014BBC(0, 0, v8, &unk_1000E93F0, v25);
  }

  return result;
}

uint64_t sub_10000EE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = type metadata accessor for EnvironmentValues();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v7;
  v4[9] = v6;

  return _swift_task_switch(sub_10000EF34, v7, v6);
}

uint64_t sub_10000EF34()
{
  if (qword_10012CC38 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = qword_100135CD8;
  v0[10] = qword_100135CD8;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);

  if ((v4 & 1) == 0)
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v5, v7);
    v3 = v0[2];
  }

  v0[11] = v3;

  return _swift_task_switch(sub_10000F088, v2, 0);
}

uint64_t sub_10000F088()
{
  sub_10002CE40(v0[11], 1, v0[10]);

  v1 = v0[8];
  v2 = v0[9];

  return _swift_task_switch(sub_10000F0FC, v1, v2);
}

uint64_t sub_10000F0FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000F164(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointAnchoring();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v37 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v36 = &v27 - v6;
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v34 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 8);
  v40 = a1;
  v11 = *(a1 + 16);

  v12 = v10;
  v32 = v11;
  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v14 = v34;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v8 + 8))(v14, v7);
    v12 = v39;
  }

  v27 = v8;
  v28 = v7;
  v33 = v10;
  swift_getKeyPath();
  v39 = v12;
  v30 = sub_1000113C0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
  swift_beginAccess();
  v16 = *(v3 + 16);
  v17 = v36;
  v16(v36, v12 + v15, v2);

  v35 = type metadata accessor for AccessPointShaderTransitionView(0);
  v18 = v37;
  v31 = v16;
  v29 = v3 + 16;
  v16(v37, v17, v2);
  sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  State.wrappedValue.setter();
  v19 = *(v3 + 8);
  v19(v17, v2);
  v35 = *(v35 + 56);
  State.wrappedValue.getter();
  (*(v3 + 104))(v18, enum case for AccessPointAnchoring.topCentered(_:), v2);
  sub_1000113C0(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring, &protocol conformance descriptor for AccessPointAnchoring);
  LOBYTE(v15) = dispatch thunk of static Equatable.== infix(_:_:)();
  v19(v18, v2);
  result = (v19)(v17, v2);
  if ((v15 & 1) == 0)
  {
    v21 = v33;

    if ((v32 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v22 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v23 = v34;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v27 + 8))(v23, v28);
      v21 = v38;
    }

    swift_getKeyPath();
    v38 = v21;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
    swift_beginAccess();
    v25 = v36;
    v26 = v31;
    v31(v36, v21 + v24, v2);

    v26(v37, v25, v2);
    State.wrappedValue.setter();
    return (v19)(v25, v2);
  }

  return result;
}

void *sub_10000F6CC(uint64_t a1)
{
  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();

  return sub_100007EC8();
}

uint64_t sub_10000F754(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v6 = v14;
  }

  swift_getKeyPath();
  v14 = v6;
  sub_1000113C0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v6 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) == 1)
  {
    swift_getKeyPath();
    v14 = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v6 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);

    v10 = v9 > 0;
  }

  else
  {

    v10 = 1;
  }

  v11 = *(a1 + 96);
  LOBYTE(v14) = *(a1 + 88);
  v15 = v11;
  v13[15] = v10;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  return State.wrappedValue.setter();
}

uint64_t sub_10000F9BC(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000FA54, v3, v2);
}

uint64_t sub_10000FA54()
{

  sub_100007EC8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000FAB8(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 16) = a8;
  type metadata accessor for MainActor();
  *(v8 + 56) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000FB58, v10, v9);
}

id sub_10000FB58()
{
  result = BSValueWithRect();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);

    [v3 updateAccessPointFrameCoordinates:v2];

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000FBF8(uint64_t a1)
{
  v3 = sub_100002B38(&qword_10012D330, &qword_1000E96D8);
  __chkstk_darwin(v3);
  v5 = &v18[-1] - v4;
  v24 = *(v1 + 24);
  v20 = *(v1 + 24);
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = sub_100002B38(&qword_10012D338, &qword_1000E96E0);
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  v7 = &v5[*(v3 + 36)];
  v8 = v21;
  *v7 = v20;
  *(v7 + 1) = v8;
  *(v7 + 2) = v22;
  v10 = *(v1 + 8);
  LOBYTE(v7) = *(v1 + 16);
  v18[0] = *v1;
  v9 = v18[0];
  v18[1] = v10;
  v19 = v7;
  sub_100002B38(&qword_10012D340, &qword_1000E96E8);
  Binding.wrappedValue.getter();
  v23 = v9;
  v11 = swift_allocObject();
  v12 = *(v1 + 16);
  *(v11 + 16) = *v1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v1 + 32);
  sub_100013A6C(&v23, v18);

  sub_1000035B4(&v24, v18, &qword_10012CFF0, &qword_1000ED780);
  v13 = sub_100013AC8();
  sub_100005FA4(v13, v14, v15);
  View.onChange<A>(of:initial:_:)();

  return sub_100005688(v5, &qword_10012D330, &qword_1000E96D8);
}

double sub_10000FE5C(__int128 *a1)
{
  sub_100002B38(&qword_10012D340, &qword_1000E96E8);
  Binding.wrappedValue.getter();
  if (v3 == 1)
  {
    v2 = static Animation.spring(response:dampingFraction:blendDuration:)();
    __chkstk_darwin(v2);
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_10000FF6C()
{
  v1 = v0;
  v2 = type metadata accessor for AccessPointContentView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = sub_100002B38(&qword_10012D358, &qword_1000E96F0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = sub_100002B38(&qword_10012D360, &qword_1000E96F8);
  sub_1000101C0(v1, &v8[*(v9 + 44)]);
  *&v8[*(v6 + 36)] = static Color.white.getter();
  v10 = v1 + *(v3 + 28);
  v11 = *v10;
  v12 = *(v10 + 16);
  v17 = v11;
  v18 = v12;
  sub_100002B38(&qword_10012D368, &qword_1000E9700);
  Binding.wrappedValue.getter();
  sub_100013BE4(v1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointContentView);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_10001212C(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for AccessPointContentView);
  sub_100013D94();
  View.onChange<A>(of:initial:_:)();

  return sub_100005688(v8, &qword_10012D358, &qword_1000E96F0);
}

uint64_t sub_1000101C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_100002B38(&qword_10012D398, &qword_1000E9718);
  __chkstk_darwin(v23);
  v4 = &v22 - v3;
  v5 = sub_100002B38(&qword_10012D3A0, &qword_1000E9720);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_100002B38(&qword_10012D3A8, &qword_1000E9728);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  v15 = *(type metadata accessor for AccessPointContentView(0) + 24);
  v22 = a1;
  v16 = (a1 + v15);
  v18 = v16[1];
  v25 = *v16;
  v17 = v25;
  v26 = v18;
  sub_100002B38(&qword_10012CFE0, &qword_1000E9390);
  State.wrappedValue.getter();
  v25 = v17;
  v26 = v18;
  State.wrappedValue.getter();
  AccessPointContainer.componentView(for:)();
  (*(v6 + 16))(v4, v8, v5);
  swift_storeEnumTagMultiPayload();
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  (*(v6 + 8))(v8, v5);
  sub_1000035B4(v14, v11, &qword_10012D3A8, &qword_1000E9728);
  v19 = v24;
  sub_1000035B4(v11, v24, &qword_10012D3A8, &qword_1000E9728);
  v20 = v19 + *(sub_100002B38(&qword_10012D3B0, &qword_1000E9730) + 48);
  *v20 = 0;
  *(v20 + 8) = 0;
  sub_100005688(v14, &qword_10012D3A8, &qword_1000E9728);
  return sub_100005688(v11, &qword_10012D3A8, &qword_1000E9728);
}

double sub_1000104D8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();

  return result;
}

uint64_t sub_100010540(uint64_t a1)
{
  type metadata accessor for AccessPointContentView(0);
  sub_100002B38(&qword_10012D368, &qword_1000E9700);
  Binding.wrappedValue.getter();
  sub_100002B38(&qword_10012CFE0, &qword_1000E9390);
  return State.wrappedValue.setter();
}

uint64_t sub_1000105F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = type metadata accessor for RippleView(0);
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AnimationTimelineSchedule();
  v11 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  AnimationTimelineSchedule.init(minimumInterval:paused:)();
  sub_100013BE4(a2, v10, type metadata accessor for RippleView);
  v16 = a1;
  v17 = v5;
  (*(v6 + 16))(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v5);
  v18 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v19 = (v9 + *(v6 + 80) + v18) & ~*(v6 + 80);
  v20 = swift_allocObject();
  sub_10001212C(v10, v20 + v18, type metadata accessor for RippleView);
  (*(v6 + 32))(v20 + v19, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v21 = v26;
  (*(v11 + 16))(v25, v15, v26);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_100014168;
  *(v22 + 24) = v20;
  sub_100002B38(&qword_10012D3B8, &qword_1000E9738);
  sub_1000113C0(&qword_10012D3C0, &type metadata accessor for AnimationTimelineSchedule, &protocol conformance descriptor for AnimationTimelineSchedule);
  sub_10001428C();
  TimelineView<>.init(_:content:)();
  return (*(v11 + 8))(v15, v21);
}

uint64_t sub_100010984@<X0>(double *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v26 = a2;
  v33 = a3;
  v4 = type metadata accessor for ShaderFunction();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Shader();
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v24 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RippleView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002B38(&qword_10012D3F8, &qword_1000E9758);
  v29 = *(v13 - 8);
  v30 = v13;
  __chkstk_darwin(v13);
  v25 = &v24 - v14;
  sub_100013BE4(a1, v12, type metadata accessor for RippleView);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  sub_10001212C(v12, v16 + v15, type metadata accessor for RippleView);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v34 = sub_1000145D8;
  *(&v34 + 1) = v16;
  static ShaderLibrary.subscript.getter();
  sub_100002B38(&qword_10012D400, &qword_1000E9760);
  type metadata accessor for Shader.Argument();
  *(swift_allocObject() + 16) = xmmword_1000E91A0;
  Date.timeIntervalSinceNow.getter();
  static Shader.Argument._float(_:)();
  GeometryProxy.size.getter();
  static Shader.Argument._float2(_:_:)();
  static Shader.Argument._float2(_:_:)();
  v17 = v24;
  ShaderFunction.dynamicallyCall(withArguments:)();

  (*(v27 + 8))(v6, v28);
  Date.timeIntervalSinceNow.getter();
  sub_100002B38(&qword_10012D3D0, &qword_1000E9740);
  sub_100014388(&qword_10012D3D8, &qword_10012D3D0, &qword_1000E9740, sub_10001440C);
  v18 = v25;
  View.layerEffect(_:maxSampleOffset:isEnabled:)();
  (*(v31 + 8))(v17, v32);
  v42[4] = v38;
  v42[5] = v39;
  v42[6] = v40;
  v42[7] = v41;
  v42[0] = v34;
  v42[1] = v35;
  v42[2] = v36;
  v42[3] = v37;
  sub_100005688(v42, &qword_10012D3D0, &qword_1000E9740);
  v19 = static SafeAreaRegions.all.getter();
  v20 = static Edge.Set.all.getter();
  v21 = v33;
  (*(v29 + 32))(v33, v18, v30);
  result = sub_100002B38(&qword_10012D3B8, &qword_1000E9738);
  v23 = v21 + *(result + 36);
  *v23 = v19;
  *(v23 + 8) = v20;
  return result;
}

uint64_t sub_100010EF8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100013BE4(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RippleView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10001212C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for RippleView);
  *a2 = sub_100013E98;
  a2[1] = v7;
  return result;
}

void sub_100011010(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AccessPointShaderTransitionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_10000DE88(a1, a2, v6);
}

unint64_t sub_100011090()
{
  result = qword_10012CFA8;
  if (!qword_10012CFA8)
  {
    sub_100005144(&qword_10012CF78, &qword_1000E92C0);
    sub_1000057D8(&qword_10012CFB0, &qword_10012CF70, &qword_1000E92B8, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CFA8);
  }

  return result;
}

uint64_t sub_100011148()
{
  v1 = type metadata accessor for AccessPointShaderTransitionView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[14];
  v4 = type metadata accessor for AccessPointAnchoring();
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  sub_100002B38(&qword_10012CE60, qword_1000E91C0);

  v5(v2 + v1[15], v4);

  v6 = v1[16];
  v7 = type metadata accessor for Game();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v9 = v1[17];
  v10 = type metadata accessor for AccessPointContainer();
  (*(*(v10 - 8) + 8))(v2 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_1000113C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000114E4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AccessPointShaderTransitionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100011558()
{
  v2 = *(type metadata accessor for AccessPointShaderTransitionView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014BAC;

  return sub_10000F9BC(v0 + v3);
}

uint64_t sub_100011630(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointShaderTransitionView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011720;

  return sub_100008330(a1, v6, v7, v1 + v5);
}

uint64_t sub_100011720()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100011814()
{
  v1 = type metadata accessor for AccessPointShaderTransitionView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v0 + v2 + v1[14];
  v5 = type metadata accessor for AccessPointAnchoring();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  sub_100002B38(&qword_10012CE60, qword_1000E91C0);

  v6(v0 + v2 + v1[15], v5);

  v7 = v1[16];
  v8 = type metadata accessor for Game();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  v10 = v1[17];
  v11 = type metadata accessor for AccessPointContainer();
  (*(*(v11 - 8) + 8))(v3 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_100011A74(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointShaderTransitionView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100008828(a1, v6, v7, v1 + v5);
}

uint64_t sub_100011BF4(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointShaderTransitionView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_10000EE40(a1, v6, v7, v1 + v5);
}

uint64_t sub_100011CE4(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_100002B38(&qword_10012D3E8, &qword_1000E9748);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = sub_100002B38(&qword_10012D3F0, &qword_1000E9750);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100011E2C()
{
  result = qword_100131140;
  if (!qword_100131140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100131140);
  }

  return result;
}

uint64_t sub_100011E78()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100011EC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_10000E6B8(a1, v4, v5, v7, v6);
}

uint64_t sub_100011F80(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100011FC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014BAC;

  return sub_10000E5B0(a1, v4, v5, v6);
}

uint64_t sub_100012094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccessPointShaderTransitionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000AA14(v6, a1, a2);
}

uint64_t sub_10001212C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000121B8()
{
  v1 = type metadata accessor for AccessPointShaderTransitionView(0);
  v2 = *(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  v16 = type metadata accessor for GeometryProxy();
  v3 = *(v16 - 8);
  v4 = *(v3 + 80);
  v17 = v0;
  v5 = v0 + ((v2 + 16) & ~v2);

  v6 = v5 + v1[14];
  v7 = type metadata accessor for AccessPointAnchoring();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  sub_100002B38(&qword_10012CE60, qword_1000E91C0);

  v8(v5 + v1[15], v7);

  v9 = v1[16];
  v10 = type metadata accessor for Game();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v1[17];
  v13 = type metadata accessor for AccessPointContainer();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  (*(v3 + 8))(v17 + ((((v2 + 16) & ~v2) + v15 + v4) & ~v4), v16);

  return swift_deallocObject();
}

uint64_t sub_100012498()
{
  v1 = *(type metadata accessor for AccessPointShaderTransitionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for GeometryProxy() - 8);
  return sub_10000BEFC(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

unint64_t sub_100012558()
{
  result = qword_10012D040;
  if (!qword_10012D040)
  {
    sub_100005144(&qword_10012D010, &qword_1000E9438);
    sub_1000057D8(&qword_10012D048, &qword_10012D050, &qword_1000E9468, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D040);
  }

  return result;
}

uint64_t sub_100012618(uint64_t a1)
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100012664(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014BAC;

  return sub_10000FAB8(v7, v8, v9, v10, a1, v4, v5, v6);
}

unint64_t sub_100012748()
{
  result = qword_10012D0E8;
  if (!qword_10012D0E8)
  {
    sub_100005144(&qword_10012D0C8, &qword_1000E94D8);
    sub_1000057D8(&qword_10012D0F0, &qword_10012D0D0, &qword_1000E94E0, &protocol conformance descriptor for TupleView<A>);
    sub_1000057D8(&qword_10012D0F8, &qword_10012D0B0, &qword_1000E94C0, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D0E8);
  }

  return result;
}

uint64_t *sub_100012854(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1000128B8()
{
  result = qword_10012D160;
  if (!qword_10012D160)
  {
    sub_100005144(&qword_10012D120, &qword_1000E9510);
    sub_100012970();
    sub_1000057D8(&qword_10012D1B0, &qword_10012D150, &qword_1000E9538, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D160);
  }

  return result;
}

unint64_t sub_100012970()
{
  result = qword_10012D168;
  if (!qword_10012D168)
  {
    sub_100005144(&qword_10012D170, &qword_1000E9540);
    v3 = sub_100014388(&qword_10012D178, &qword_10012D180, &qword_1000E9548, sub_100012A28);
    sub_100012AE0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D168);
  }

  return result;
}

unint64_t sub_100012A28()
{
  result = qword_10012D188;
  if (!qword_10012D188)
  {
    sub_100005144(&qword_10012D190, &qword_1000E9550);
    sub_1000057D8(&qword_10012D198, &qword_10012D1A0, &qword_1000E9558, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D188);
  }

  return result;
}

unint64_t sub_100012AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012D1A8;
  if (!qword_10012D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D1A8);
  }

  return result;
}

uint64_t sub_100012BF0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012C28()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for AccessPointShaderTransitionView(0);
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;

  v8 = v0 + v6 + v5[14];
  v9 = type metadata accessor for AccessPointAnchoring();
  v10 = *(*(v9 - 8) + 8);
  v10(v8, v9);
  sub_100002B38(&qword_10012CE60, qword_1000E91C0);

  v10(v0 + v6 + v5[15], v9);

  v11 = v5[16];
  v12 = type metadata accessor for Game();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v6 + v11, 1, v12))
  {
    (*(v13 + 8))(v7 + v11, v12);
  }

  v14 = v5[17];
  v15 = type metadata accessor for AccessPointContainer();
  (*(*(v15 - 8) + 8))(v7 + v14, v15);

  return swift_deallocObject();
}

uint64_t sub_100012F00()
{
  v1 = *(type metadata accessor for GeometryProxy() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AccessPointShaderTransitionView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100009EC8(v0 + v2, v5);
}

uint64_t sub_100012FF4(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointContentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100013064(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Date();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_10001318C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for Date();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_10001329C(uint64_t a1)
{
  type metadata accessor for CGPoint(319);
  if (v1 <= 0x3F)
  {
    sub_100005F3C(319, &unk_10012CF00, &type metadata accessor for Game, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
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

unint64_t sub_100013388()
{
  result = qword_10012D248;
  if (!qword_10012D248)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10012D248);
  }

  return result;
}

__n128 sub_1000133D8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000133EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100013434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000134A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessPointContainer();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100013574(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessPointContainer();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100013630(uint64_t a1)
{
  type metadata accessor for AccessPointContainer();
  if (v1 <= 0x3F)
  {
    sub_100013714(319, &unk_10012D2F0, &type metadata for Int, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_100013714(319, &qword_10012CEE0, &type metadata for Int, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100013714(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_100013768()
{
  result = qword_10012D328;
  if (!qword_10012D328)
  {
    sub_100005144(&qword_10012CFD8, &qword_1000E9358);
    sub_100005144(&qword_10012CF90, &qword_1000E92D8);
    sub_100005144(&qword_10012CF88, &qword_1000E92D0);
    type metadata accessor for AccessPointAnchoring();
    sub_100005144(&qword_10012CF80, &qword_1000E92C8);
    sub_100005144(&qword_10012CF78, &qword_1000E92C0);
    type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
    sub_100011090();
    sub_1000113C0(&qword_10012CFB8, &type metadata accessor for GameDashboardLaunchContext.LaunchTarget, &protocol conformance descriptor for GameDashboardLaunchContext.LaunchTarget);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_100005FA4(OpaqueTypeConformance2, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_1000113C0(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring, &protocol conformance descriptor for AccessPointAnchoring);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000113C0(&qword_10012CC50, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D328);
  }

  return result;
}

uint64_t sub_100013A1C()
{

  return swift_deallocObject();
}

unint64_t sub_100013AC8()
{
  result = qword_10012D348;
  if (!qword_10012D348)
  {
    sub_100005144(&qword_10012D330, &qword_1000E96D8);
    sub_1000057D8(&qword_10012D350, &qword_10012D338, &qword_1000E96E0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D348);
  }

  return result;
}

uint64_t sub_100013BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100013C4C()
{
  v1 = *(type metadata accessor for AccessPointContentView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for AccessPointContainer();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

unint64_t sub_100013D94()
{
  result = qword_10012D370;
  if (!qword_10012D370)
  {
    sub_100005144(&qword_10012D358, &qword_1000E96F0);
    sub_1000057D8(&qword_10012D378, &qword_10012D380, &qword_1000E9708, &protocol conformance descriptor for HStack<A>);
    sub_1000057D8(&qword_10012D388, &qword_10012D390, &qword_1000E9710, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D370);
  }

  return result;
}

uint64_t sub_100013EC4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_100013F5C()
{
  v1 = type metadata accessor for RippleView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 8) + 64);
  v15 = type metadata accessor for GeometryProxy();
  v4 = *(v15 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v3;
  v7 = *(v1 + 20);
  v8 = type metadata accessor for Game();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v10 = (v3 + v14 + v5) & ~v5;
  v11 = *(v1 + 28);
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v6 + v11, v12);

  (*(v4 + 8))(v0 + v10, v15);

  return swift_deallocObject();
}

uint64_t sub_100014168@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RippleView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for GeometryProxy() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100010984((v1 + v4), v7, a1);
}

uint64_t sub_10001424C()
{

  return swift_deallocObject();
}

unint64_t sub_10001428C()
{
  result = qword_10012D3C8;
  if (!qword_10012D3C8)
  {
    sub_100005144(&qword_10012D3B8, &qword_1000E9738);
    sub_100005144(&qword_10012D3D0, &qword_1000E9740);
    sub_100014388(&qword_10012D3D8, &qword_10012D3D0, &qword_1000E9740, sub_10001440C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D3C8);
  }

  return result;
}

uint64_t sub_100014388(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_10001440C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012D3E0;
  if (!qword_10012D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D3E0);
  }

  return result;
}

uint64_t sub_100014460()
{
  v1 = type metadata accessor for RippleView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 20);
  v4 = type metadata accessor for Game();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = *(v1 + 28);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_100014644(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10001468C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000146D8()
{
  sub_100005144(&qword_10012D330, &qword_1000E96D8);
  v3 = sub_100013AC8();
  sub_100005FA4(v3, v0, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100014750()
{
  sub_100005144(&qword_10012D358, &qword_1000E96F0);
  sub_100013D94();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100014830(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002B38(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100014898()
{
  result = qword_10012D488;
  if (!qword_10012D488)
  {
    sub_100005144(&qword_10012D470, &qword_1000E9848);
    sub_1000057D8(&qword_10012D490, &qword_10012D498, &qword_1000E9860, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D488);
  }

  return result;
}

unint64_t sub_100014950()
{
  result = qword_10012D4A0;
  if (!qword_10012D4A0)
  {
    sub_100005144(&qword_10012D460, &qword_1000E9838);
    sub_1000057D8(&qword_10012D4A8, &qword_10012D4B0, &qword_1000E9868, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D4A0);
  }

  return result;
}

unint64_t sub_100014A08()
{
  result = qword_10012D4C0;
  if (!qword_10012D4C0)
  {
    sub_100005144(&qword_10012D4B8, &qword_1000E9870);
    sub_100014A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D4C0);
  }

  return result;
}

unint64_t sub_100014A94()
{
  result = qword_10012D4C8;
  if (!qword_10012D4C8)
  {
    sub_100005144(&qword_10012D4D0, &qword_1000E9878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D4C8);
  }

  return result;
}

uint64_t sub_100014BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000035B4(a3, v25 - v10, &unk_100130F10, &qword_1000EA660);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005688(v11, &unk_100130F10, &qword_1000EA660);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100005688(a3, &unk_100130F10, &qword_1000EA660);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005688(a3, &unk_100130F10, &qword_1000EA660);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100014EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000035B4(a3, v25 - v10, &unk_100130F10, &qword_1000EA660);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005688(v11, &unk_100130F10, &qword_1000EA660);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100002B38(&qword_10012DC90, &qword_1000E9F20);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100005688(a3, &unk_100130F10, &qword_1000EA660);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005688(a3, &unk_100130F10, &qword_1000EA660);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100002B38(&qword_10012DC90, &qword_1000E9F20);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000151D0(uint64_t a1)
{
  result = static Animation.spring(response:dampingFraction:blendDuration:)();
  qword_10012D550 = result;
  return result;
}

uint64_t sub_100015200(uint64_t a1)
{
  result = static Animation.spring(response:dampingFraction:blendDuration:)();
  qword_10012D558 = result;
  return result;
}

uint64_t sub_100015238(uint64_t a1)
{
  result = static Animation.spring(response:dampingFraction:blendDuration:)();
  qword_10012D560 = result;
  return result;
}

uint64_t sub_100015268(uint64_t a1)
{
  result = static Animation.spring(response:dampingFraction:blendDuration:)();
  qword_10012D568 = result;
  return result;
}

uint64_t sub_10001529C(uint64_t a1)
{
  result = static Animation.spring(response:dampingFraction:blendDuration:)();
  qword_10012D570 = result;
  return result;
}

uint64_t sub_1000152D4(uint64_t a1)
{
  result = static Animation.spring(response:dampingFraction:blendDuration:)();
  qword_10012D578 = result;
  return result;
}

uint64_t sub_100015384()
{
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);
}

void sub_10001542C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);
}

double sub_1000154DC(unsigned __int8 a1)
{
  if (*(v1 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100015678(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

void sub_100015718(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
}

void sub_1000157F4(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100015948@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  swift_beginAccess();
  v7 = type metadata accessor for AccessPointAnchoring();
  return (*(*(v7 - 8) + 16))(a3, v9 + v6, v7);
}

uint64_t sub_100015A40@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a3;
  swift_beginAccess();
  v8 = type metadata accessor for AccessPointAnchoring();
  return (*(*(v8 - 8) + 16))(a4, v6 + v7, v8);
}

uint64_t sub_100015B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = type metadata accessor for AccessPointAnchoring();
  v8 = __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1, v8);
  return a5(v10);
}

uint64_t sub_100015C38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v18[0] = a3;
  v18[1] = a4;
  v6 = v4;
  v8 = type metadata accessor for AccessPointAnchoring();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  swift_beginAccess();
  v13 = *(v9 + 16);
  v13(v11, v6 + v12, v8);
  sub_10002B454(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring, &protocol conformance descriptor for AccessPointAnchoring);
  v19 = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v9 + 8);
  v14(v11, v8);
  if (a1)
  {
    v13(v11, v19, v8);
    swift_beginAccess();
    (*(v9 + 40))(v6 + v12, v11, v8);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v16 = v19;
    v18[-2] = v6;
    v18[-1] = v16;
    v20 = v6;
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v14)(v19, v8);
}

uint64_t sub_100015EC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = type metadata accessor for AccessPointAnchoring();
  (*(*(v6 - 8) + 24))(a1 + v5, a2, v6);
  return swift_endAccess();
}

uint64_t sub_100015F60()
{
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID);

  return v1;
}

uint64_t sub_10001601C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID);
  a2[1] = v4;
}

uint64_t sub_1000160D4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID);
  v6 = *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_100016264(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100016308@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
}

double sub_1000163E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10001651C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__accessPointHidden) = 0;
  type metadata accessor for APAnimationController();
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller) = APAnimationController.init(highlightIndex:)();
  *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state) = 0;
  *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__collapsed) = 1;
  *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__showDashboard) = 0;
  *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal) = 0;
  v6 = (v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID);
  type metadata accessor for BasicImpressionsTracker();
  *v6 = 0;
  v6[1] = 0;
  *(v3 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__tracker) = BasicImpressionsTracker.__allocating_init(threshold:)();
  ObservationRegistrar.init()();
  v7 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  v8 = type metadata accessor for AccessPointContainer();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  v9 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__destAnchor;
  v10 = type metadata accessor for AccessPointAnchoring();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v3 + v9, a2, v10);
  (*(v11 + 32))(v3 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor, a2, v10);
  return v3;
}

void sub_1000166C8()
{
  v1 = v0;
  v2 = type metadata accessor for ImpressionsContext();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v42 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v40 - v5;
  v45 = type metadata accessor for Date();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002B38(&qword_10012DC88, &qword_1000E9EB0);
  __chkstk_darwin(v7 - 8);
  v48 = &v40 - v8;
  v9 = type metadata accessor for ImpressionMetrics();
  v50 = *(v9 - 8);
  v51 = v9;
  __chkstk_darwin(v9);
  v49 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002B38(&qword_10012DC78, &unk_1000E9E50);
  __chkstk_darwin(v11 - 8);
  v13 = &v40 - v12;
  v14 = type metadata accessor for AccessPointContainer();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AccessPointHighlight();
  v52 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v21 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel___observationRegistrar;
  v53[0] = v1;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  v40 = v21;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = dispatch thunk of APAnimationController.highlightIndex.getter();

  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
    return;
  }

  v25 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  (*(v15 + 16))(v17, v1 + v25, v14);
  v26 = AccessPointContainer.items.getter();
  (*(v15 + 8))(v17, v14);
  if (v24 >= *(v26 + 16))
  {
LABEL_12:
    __break(1u);
    return;
  }

  sub_10002E8A8(v26 + 40 * v24 + 32, v53);

  sub_100002B38(&qword_10012DC80, &qword_1000ED7F0);
  v27 = swift_dynamicCast();
  v28 = v52;
  v29 = *(v52 + 56);
  if ((v27 & 1) == 0)
  {
    v29(v13, 1, 1, v18);
    v32 = &qword_10012DC78;
    v33 = &unk_1000E9E50;
    goto LABEL_8;
  }

  v29(v13, 0, 1, v18);
  (*(v28 + 32))(v20, v13, v18);
  v13 = v48;
  AccessPointHighlight.impressionMetrics.getter();
  v31 = v50;
  v30 = v51;
  if ((*(v50 + 48))(v13, 1, v51) == 1)
  {
    (*(v28 + 8))(v20, v18);
    v32 = &qword_10012DC88;
    v33 = &qword_1000E9EB0;
LABEL_8:
    sub_100005688(v13, v32, v33);
    return;
  }

  (*(v31 + 32))(v49, v13, v30);
  swift_getKeyPath();
  v53[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v34 = v41;
  Date.init()();
  v35 = v42;
  ImpressionsContext.init()();
  v36 = v44;
  ImpressionsContext.withPosition(_:)();
  v37 = v47;
  v38 = *(v46 + 8);
  v38(v35, v47);
  v39 = v49;
  BasicImpressionsTracker.elementDidLeaveView(_:on:with:)();

  v38(v36, v37);
  (*(v43 + 8))(v34, v45);
  (*(v50 + 8))(v39, v51);
  (*(v52 + 8))(v20, v18);
}

uint64_t sub_100016DAC()
{
  v1 = v0;
  v52 = type metadata accessor for ImpressionsContext();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v47 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v49 = v45 - v4;
  v50 = type metadata accessor for Date();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v46 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&qword_10012DC88, &qword_1000E9EB0);
  __chkstk_darwin(v6 - 8);
  v53 = v45 - v7;
  v57 = type metadata accessor for ImpressionMetrics();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002B38(&qword_10012DC78, &unk_1000E9E50);
  __chkstk_darwin(v9 - 8);
  v58 = v45 - v10;
  v62 = type metadata accessor for AccessPointHighlight();
  v59 = *(v62 - 8);
  __chkstk_darwin(v62);
  v56 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccessPointContainer();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v61 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v45 - v16;
  sub_1000166C8();
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel___observationRegistrar;
  v65[0] = v0;
  v19 = sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  v64 = v18;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v63 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller;

  v20 = dispatch thunk of APAnimationController.highlightIndex.getter();

  v21 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  v60 = *(v13 + 16);
  v60(v17, v0 + v21, v12);
  v22 = AccessPointContainer.items.getter();
  v23 = *(v13 + 8);
  v23(v17, v12);
  v24 = *(v22 + 16);

  if (v20 < v24)
  {
    swift_getKeyPath();
    v65[0] = v1;
    v45[1] = v19;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v26 = dispatch thunk of APAnimationController.highlightIndex.getter();

    v27 = v61;
    v60(v61, v1 + v21, v12);
    v28 = AccessPointContainer.items.getter();
    result = (v23)(v27, v12);
    if ((v26 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v26 < *(v28 + 16))
    {
      sub_10002E8A8(v28 + 40 * v26 + 32, v65);

      sub_100002B38(&qword_10012DC80, &qword_1000ED7F0);
      v29 = v58;
      v30 = v62;
      v31 = swift_dynamicCast();
      v32 = v59;
      v33 = *(v59 + 56);
      if (v31)
      {
        v33(v29, 0, 1, v30);
        v34 = v56;
        (*(v32 + 32))(v56, v29, v30);
        v35 = v53;
        AccessPointHighlight.impressionMetrics.getter();
        v36 = v55;
        v37 = v57;
        if ((*(v55 + 48))(v35, 1, v57) == 1)
        {
          (*(v32 + 8))(v34, v30);
          return sub_100005688(v35, &qword_10012DC88, &qword_1000E9EB0);
        }

        else
        {
          (*(v36 + 32))(v54, v35, v37);
          swift_getKeyPath();
          v65[0] = v1;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v38 = v46;
          Date.init()();
          v39 = v47;
          ImpressionsContext.init()();
          swift_getKeyPath();
          v65[0] = v1;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          dispatch thunk of APAnimationController.highlightIndex.getter();

          v40 = v49;
          ImpressionsContext.withPosition(_:)();
          v41 = *(v51 + 8);
          v42 = v39;
          v43 = v52;
          v41(v42, v52);
          v44 = v54;
          BasicImpressionsTracker.elementDidEnterView(_:on:with:)();

          v41(v40, v43);
          (*(v48 + 8))(v38, v50);
          (*(v36 + 8))(v44, v57);
          return (*(v32 + 8))(v56, v62);
        }
      }

      else
      {
        v33(v29, 1, 1, v30);
        return sub_100005688(v29, &qword_10012DC78, &unk_1000E9E50);
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100017618()
{
  v1 = v0;
  v2 = type metadata accessor for PageMetrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessPointContainer();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  (*(v7 + 16))(v9, v1 + v10, v6);
  AccessPointContainer.pageMetrics.getter();
  (*(v7 + 8))(v9, v6);
  v11 = PageMetrics.pageFields.getter();
  (*(v3 + 8))(v5, v2);
  if (v11)
  {
    if (*(v11 + 16))
    {
      swift_getKeyPath();
      v12 = v1;
      sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      v12 = v1;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      static AccessPointMetricsHelper.postImpressionsEvent(pageFields:hostApp:tracker:)();
    }

    else
    {
    }
  }
}

uint64_t sub_1000178D8()
{
  v1 = v0;
  v2 = sub_100002B38(&qword_10012DC70, &qword_1000E9E48);
  __chkstk_darwin(v2 - 8);
  v37 = v34 - v3;
  v4 = type metadata accessor for PageMetrics();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v35 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v36 = v34 - v7;
  v8 = sub_100002B38(&qword_10012DC78, &unk_1000E9E50);
  __chkstk_darwin(v8 - 8);
  v10 = v34 - v9;
  v11 = type metadata accessor for AccessPointContainer();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AccessPointHighlight();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v38 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel___observationRegistrar;
  v41[0] = v1;
  v34[0] = sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  v34[1] = v18;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = dispatch thunk of APAnimationController.highlightIndex.getter();

  v20 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  (*(v12 + 16))(v14, v1 + v20, v11);
  v21 = AccessPointContainer.items.getter();
  result = (*(v12 + 8))(v14, v11);
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v19 < *(v21 + 16))
  {
    sub_10002E8A8(v21 + 40 * v19 + 32, v41);

    sub_100002B38(&qword_10012DC80, &qword_1000ED7F0);
    v23 = swift_dynamicCast();
    v24 = *(v16 + 56);
    if (v23)
    {
      v25 = v16;
      v24(v10, 0, 1, v15);
      v26 = *(v16 + 32);
      v27 = v38;
      v26(v38, v10, v15);
      v28 = v37;
      AccessPointHighlight.pageMetrics.getter();
      v30 = v39;
      v29 = v40;
      if ((*(v39 + 48))(v28, 1, v40) != 1)
      {
        v31 = v36;
        (*(v30 + 32))(v36, v28, v29);
        v32 = PageMetrics.pageFields.getter();
        if (v32)
        {
          if (*(v32 + 16))
          {
            v37 = v32;
            sub_100017618();
            (*(v30 + 16))(v35, v31, v29);
            swift_beginAccess();
            AccessPointContainer.pageMetrics.setter();
            swift_endAccess();
            type metadata accessor for BasicImpressionsTracker();
            v33 = BasicImpressionsTracker.__allocating_init(threshold:)();
            sub_1000163C0(v33);
            swift_getKeyPath();
            v41[0] = v1;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            static AccessPointMetricsHelper.postPageEvent(hostApp:pageFields:)();

            (*(v30 + 8))(v31, v29);
            (*(v25 + 8))(v27, v15);
            return sub_100016DAC();
          }
        }

        (*(v30 + 8))(v31, v29);
        (*(v25 + 8))(v27, v15);
        return sub_100016DAC();
      }

      (*(v25 + 8))(v27, v15);
      sub_100005688(v28, &qword_10012DC70, &qword_1000E9E48);
    }

    else
    {
      v24(v10, 1, 1, v15);
      sub_100005688(v10, &qword_10012DC78, &unk_1000E9E50);
    }

    return sub_100016DAC();
  }

  __break(1u);
  return result;
}

uint64_t sub_100017F24()
{
  v1 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  v2 = type metadata accessor for AccessPointContainer();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor;
  v4 = type metadata accessor for AccessPointAnchoring();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__destAnchor, v4);

  v6 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel___observationRegistrar;
  v7 = type metadata accessor for ObservationRegistrar();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocClassInstance();
}

uint64_t sub_1000180CC(uint64_t a1)
{
  result = type metadata accessor for AccessPointContainer();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AccessPointAnchoring();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ObservationRegistrar();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_100018204()
{
  swift_getKeyPath();
  sub_10002B454(&qword_10012DC68, type metadata accessor for GameModeNotifier, &unk_1000E9BB4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

void sub_1000182A4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002B454(&qword_10012DC68, type metadata accessor for GameModeNotifier, &unk_1000E9BB4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

void sub_100018374(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DC68, type metadata accessor for GameModeNotifier, &unk_1000E9BB4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100018484()
{
  type metadata accessor for GameModeNotifier(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = ObservationRegistrar.init()();
  qword_100135BA8 = v0;
  return result;
}

uint64_t sub_1000184D4(__n128 a1)
{
  v2 = OBJC_IVAR____TtC13GameOverlayUI16GameModeNotifier___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_100018598(uint64_t a1, __n128 a2)
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

  return result;
}

uint64_t getEnumTagSinglePayload for AccessPointModel.AnimationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessPointModel.AnimationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100018798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002B38(&qword_10012DA68, &unk_1000E99C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100018878(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002B38(&qword_10012DA68, &unk_1000E99C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100018960(uint64_t a1)
{
  sub_100018A6C(319, &qword_10012DAD8, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100018A6C(319, &unk_10012DAE0, type metadata accessor for AccessPointModel, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_10002F480(319, &qword_10012CEE8, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100018A6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 sub_100018ADC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100018B00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100018B48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_100018BC8()
{
  v1 = type metadata accessor for AccessPointAnimationView(0);
  v2 = v1 - 8;
  v38 = *(v1 - 8);
  __chkstk_darwin(v1);
  v39 = v3;
  v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v4 - 8);
  v37 = &v36 - v5;
  v6 = type metadata accessor for EnvironmentValues();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessPointContainer();
  v45 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 36);
  v44 = v0;
  v12 = (v0 + v11);
  v14 = *v12;
  v13 = v12[1];
  v48 = *v12;
  v49 = v13;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v15 = v46;
  swift_getKeyPath();
  v48 = v15;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v15 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

  if (!v16)
  {
    v48 = v14;
    v49 = v13;
    State.wrappedValue.getter();
    v18 = v46;
    swift_getKeyPath();
    v48 = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = dispatch thunk of APAnimationController.highlightIndex.getter();

    v48 = v14;
    v49 = v13;
    State.wrappedValue.getter();
    v20 = v46;
    v21 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
    swift_beginAccess();
    v22 = v45;
    (*(v45 + 16))(v10, v20 + v21, v8);

    v23 = AccessPointContainer.items.getter();
    (*(v22 + 8))(v10, v8);
    v24 = *(v23 + 16);

    if (v19 < v24)
    {
      v25 = *(v44 + 8);
      v26 = *(v44 + 16);

      if ((v26 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v27 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v28 = v41;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v42 + 8))(v28, v43);
        v25 = v46;
      }

      swift_getKeyPath();
      v46 = v25;
      sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v25 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) == 1)
      {
        swift_getKeyPath();
        v46 = v25;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v29 = *(v25 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);

        if (v29 > 0)
        {
          return result;
        }

        v46 = v14;
        v47 = v13;
        State.wrappedValue.getter();
        sub_100016DAC();

        v30 = type metadata accessor for TaskPriority();
        v31 = v37;
        (*(*(v30 - 8) + 56))(v37, 1, 1, v30);
        v32 = v40;
        sub_10002D940(v44, v40, type metadata accessor for AccessPointAnimationView);
        type metadata accessor for MainActor();
        v33 = static MainActor.shared.getter();
        v34 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v35 = swift_allocObject();
        *(v35 + 16) = v33;
        *(v35 + 24) = &protocol witness table for MainActor;
        sub_10002D7B8(v32, v35 + v34, type metadata accessor for AccessPointAnimationView);
        sub_100014BBC(0, 0, v31, &unk_1000EA0A0, v35);
      }
    }
  }

  return result;
}

uint64_t sub_100019220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for AccessPointAnimationView(0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v8;
  v4[14] = v7;

  return _swift_task_switch(sub_100019358, v8, v7);
}

uint64_t sub_100019358()
{
  v1 = (v0[5] + *(v0[6] + 28));
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v4 = sub_100019728(v0[4]);

  v6 = floor(v4 * 1000000000.0);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v5);
  }

  v7 = v6;
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_100019498;
  v5 = v7;

  return static Task<>.sleep(nanoseconds:)(v5);
}

uint64_t sub_100019498()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1000321E4;
  }

  else
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1000195BC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000195BC()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[5];

  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_10002D940(v4, v1, type metadata accessor for AccessPointAnimationView);
  v6 = static MainActor.shared.getter();
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_10002D7B8(v1, v8 + v7, type metadata accessor for AccessPointAnimationView);
  sub_100014BBC(0, 0, v2, &unk_1000EA0B0, v8);

  v9 = v0[1];

  return v9();
}

double sub_100019728(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointContainer();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AccessPointAnimationView(0);
  sub_10007A024(v9);
  v10 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v11 = 1.5;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  (*(v3 + 16))(v5, a1 + v12, v2);
  swift_getKeyPath();
  v16 = a1;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = dispatch thunk of APAnimationController.highlightIndex.getter();

  v14 = AccessPointContainer.displayDuration(for:)(v13);
  (*(v3 + 8))(v5, v2);
  return v11 * v14;
}

uint64_t sub_1000199A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[57] = a4;
  v5 = type metadata accessor for AccessPointAnchoring();
  v4[58] = v5;
  v4[59] = *(v5 - 8);
  v4[60] = swift_task_alloc();
  v6 = type metadata accessor for EnvironmentValues();
  v4[61] = v6;
  v4[62] = *(v6 - 8);
  v4[63] = swift_task_alloc();
  v7 = type metadata accessor for AccessPointUseCase();
  v4[64] = v7;
  v4[65] = *(v7 - 8);
  v4[66] = swift_task_alloc();
  v8 = type metadata accessor for AccessPointContainer();
  v4[67] = v8;
  v4[68] = *(v8 - 8);
  v4[69] = swift_task_alloc();
  v9 = type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
  v4[70] = v9;
  v4[71] = *(v9 - 8);
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[74] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100019C14, v11, v10);
}

uint64_t sub_100019C14()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];

  v5 = type metadata accessor for AccessPointAnimationView(0);
  dispatch thunk of GameDashboardLaunchContext.launchTarget.getter();
  (*(v3 + 104))(v2, enum case for GameDashboardLaunchContext.LaunchTarget.dashboard(_:), v4);
  sub_10002B454(&qword_10012CFB8, &type metadata accessor for GameDashboardLaunchContext.LaunchTarget, &protocol conformance descriptor for GameDashboardLaunchContext.LaunchTarget);
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  v7 = *(v3 + 8);
  v7(v2, v4);
  v7(v1, v4);
  if ((v6 & 1) == 0)
  {
    v8 = (v0[57] + *(v5 + 28));
    v10 = *v8;
    v9 = v8[1];
    v0[17] = *v8;
    v11 = v0[69];
    v82 = v0[68];
    v78 = v0[67];
    v0[18] = v9;
    sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
    State.wrappedValue.getter();
    v12 = v0[55];
    swift_getKeyPath();
    v0[51] = v12;
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = dispatch thunk of APAnimationController.highlightIndex.getter();

    v14 = v9;

    v15 = v10;
    v0[33] = v10;
    v0[34] = v9;
    State.wrappedValue.getter();
    v16 = v0[49];
    v17 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
    swift_beginAccess();
    v18 = *(v82 + 16);
    v18(v11, v16 + v17, v78);

    v19 = AccessPointContainer.items.getter();
    v81 = *(v82 + 8);
    v81(v11, v78);
    v20 = *(v19 + 16);

    v77 = v18;
    if (v13 >= v20 - 1)
    {
      v78 = v9;
      v83 = v15;
      v39 = v0[57];
      v40 = *(v39 + 8);
      v41 = *(v39 + 16);

      if ((v41 & 1) == 0)
      {
        v43 = v0[62];
        v42 = v0[63];
        v44 = v0[61];
        static os_log_type_t.fault.getter();
        v45 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v43 + 8))(v42, v44);
        v40 = v0[37];
      }

      v46 = v0[69];
      v47 = v0[67];
      v48 = v0[66];
      v49 = v0[65];
      v50 = v0[64];
      *(v40 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) = 0;

      v0[21] = v83;
      v0[22] = v9;
      State.wrappedValue.getter();
      v51 = v0[53];
      v52 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
      swift_beginAccess();
      v77(v46, v51 + v52, v47);

      AccessPointContainer.useCase.getter();
      v81(v46, v47);
      LOBYTE(v51) = AccessPointUseCase.isEphemeral.getter();
      (*(v49 + 8))(v48, v50);
      if (v51)
      {
        v0[19] = v83;
        v0[20] = v9;
        State.wrappedValue.getter();
        v53 = v0[40];
        if (*(v53 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state) == 2)
        {
LABEL_19:

          goto LABEL_26;
        }

        swift_getKeyPath();
        v54 = swift_task_alloc();
        *(v54 + 16) = v53;
        *(v54 + 24) = 2;
        v0[41] = v53;
LABEL_22:
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        goto LABEL_26;
      }

      v57 = v0[59];
      v58 = v0[60];
      v59 = v0[58];
      v14 = v83;
      v0[27] = v83;
      v0[28] = v78;
      State.wrappedValue.getter();
      v60 = v0[46];
      swift_getKeyPath();
      v0[42] = v60;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v61 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__destAnchor;
      swift_beginAccess();
      (*(v57 + 16))(v58, v60 + v61, v59);

      LOBYTE(v61) = AccessPointAnchoring.bottom.getter();
      (*(v57 + 8))(v58, v59);
      if (v61)
      {
LABEL_18:
        v0[35] = v14;
        v0[36] = v78;
        State.wrappedValue.getter();
        v63 = v0[39];
        if (*(v63 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state) == 1)
        {
          goto LABEL_19;
        }

        swift_getKeyPath();
        v69 = swift_task_alloc();
        *(v69 + 16) = v63;
        *(v69 + 24) = 1;
        v0[38] = v63;
        goto LABEL_22;
      }

      if (qword_10012CB40 == -1)
      {
LABEL_17:
        v62 = v0[57];
        *(swift_task_alloc() + 16) = v62;
        withAnimation<A>(_:_:)();

        goto LABEL_18;
      }
    }

    else
    {
      v0[31] = v15;
      v0[32] = v9;
      State.wrappedValue.getter();
      v21 = v0[43];
      swift_getKeyPath();
      v0[44] = v21;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v22 = dispatch thunk of APAnimationController.highlightIndex.getter();

      if (!__OFADD__(v22, 1))
      {
        v79 = v0[69];
        v76 = v0[67];
        swift_getKeyPath();
        v0[45] = v21;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        dispatch thunk of APAnimationController.highlightIndex.setter();

        v0[29] = v15;
        v0[30] = v9;
        State.wrappedValue.getter();
        v23 = v0[47];
        swift_getKeyPath();
        v0[48] = v23;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v24 = dispatch thunk of APAnimationController.highlightIndex.getter();

        v0[25] = v15;
        v0[26] = v9;
        State.wrappedValue.getter();
        v25 = v0[50];
        v26 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
        swift_beginAccess();
        v18(v79, v25 + v26, v76);

        v27 = AccessPointContainer.items.getter();
        v81(v79, v76);
        v28 = *(v27 + 16);

        if (v24 < v28 - 1 && (v29 = v0[69], v30 = v0[67], v31 = v0[66], v32 = v0[65], v80 = v0[64], v0[23] = v15, v0[24] = v9, State.wrappedValue.getter(), v33 = v0[54], v34 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container, swift_beginAccess(), v77(v29, v33 + v34, v30), , AccessPointContainer.useCase.getter(), v81(v29, v30), LOBYTE(v33) = AccessPointUseCase.isEphemeral.getter(), (*(v32 + 8))(v31, v80), (v33 & 1) != 0))
        {
          v35 = v0[57];
          v36 = *(v35 + 8);
          v37 = *(v35 + 16);

          if (v37)
          {
            v38 = 1;
LABEL_25:
            *(v36 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) = v38;

            sub_100018BC8();
            goto LABEL_26;
          }

          v64 = v0 + 56;
          v70 = v0[62];
          v71 = v0[63];
          v72 = v0[61];
          static os_log_type_t.fault.getter();
          v73 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v70 + 8))(v71, v72);
          v38 = 1;
        }

        else
        {
          v55 = v0[57];
          v36 = *(v55 + 8);
          v56 = *(v55 + 16);

          if (v56)
          {
            v38 = 0;
            goto LABEL_25;
          }

          v64 = v0 + 52;
          v65 = v0[62];
          v66 = v0[63];
          v67 = v0[61];
          static os_log_type_t.fault.getter();
          v68 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v65 + 8))(v66, v67);
          v38 = 0;
        }

        v36 = *v64;
        goto LABEL_25;
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_17;
  }

LABEL_26:

  v74 = v0[1];

  return v74();
}

double sub_10001A7EC(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointAnchoring();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for AccessPointAnimationView(0) + 28));
  v8 = v6[1];
  v13 = *v6;
  v7 = v13;
  v14 = v8;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v13 = v7;
  v14 = v8;
  State.wrappedValue.getter();
  v9 = v15;
  swift_getKeyPath();
  v13 = v9;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__destAnchor;
  swift_beginAccess();
  (*(v3 + 16))(v5, v9 + v10, v2);

  sub_10001590C(v5);

  return result;
}

uint64_t sub_10001A9C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v127 = a1;
  v3 = type metadata accessor for AccessPointAnimationView(0);
  v4 = v3 - 8;
  v126 = *(v3 - 8);
  v125 = *(v126 + 64);
  __chkstk_darwin(v3);
  v124 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_100002B38(&qword_10012DED8, &qword_1000EA238);
  v123 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v86 - v6;
  v111 = type metadata accessor for DefaultGlassEffectShape();
  v112 = *(v111 - 8);
  __chkstk_darwin(v111);
  v106 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Glass();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v105 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for AccessPointContainer();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_100002B38(&qword_10012DEE0, &qword_1000EA240);
  __chkstk_darwin(v103);
  v11 = &v86 - v10;
  v110 = sub_100002B38(&qword_10012DEE8, &qword_1000EA248);
  v114 = *(v110 - 8);
  __chkstk_darwin(v110);
  v104 = &v86 - v12;
  v113 = sub_100002B38(&qword_10012DEF0, &qword_1000EA250) - 8;
  __chkstk_darwin(v113);
  v107 = &v86 - v13;
  v116 = sub_100002B38(&qword_10012DEF8, &qword_1000EA258) - 8;
  __chkstk_darwin(v116);
  v115 = &v86 - v14;
  v118 = sub_100002B38(&qword_10012DF00, &qword_1000EA260) - 8;
  __chkstk_darwin(v118);
  v117 = &v86 - v15;
  v121 = sub_100002B38(&qword_10012DF08, &qword_1000EA268);
  __chkstk_darwin(v121);
  v119 = &v86 - v16;
  v17 = (v2 + *(v4 + 36));
  v130 = v2;
  v18 = v17[1];
  v132 = *v17;
  v133 = v18;
  v19 = v132;
  v20 = sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.projectedValue.getter();
  v99 = v136;
  v98 = v137;
  v136 = v19;
  *&v137 = v18;
  State.wrappedValue.getter();
  v21 = v132;
  swift_getKeyPath();
  v136 = v21;
  v131 = sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = dispatch thunk of APAnimationController.highlightIndex.getter();

  type metadata accessor for AccessPointHighlightComponent.GestureHandler();
  swift_allocObject();
  v23 = AccessPointHighlightComponent.GestureHandler.init()();
  type metadata accessor for RemoteAlertAccessPointContext(0);
  sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  v97 = Environment.init<A>(_:)();
  v25 = v24;
  v132 = v22;
  State.init(wrappedValue:)();
  v96 = v136;
  v95 = v137;
  LOBYTE(v132) = 0;
  State.init(wrappedValue:)();
  v94 = v136;
  v93 = v137;
  v132 = v23;
  State.init(wrappedValue:)();
  v90 = v136;
  v92 = v137;
  LOBYTE(v21) = v25 & 1;
  v140 = v25 & 1;
  v91 = Namespace.wrappedValue.getter();
  v89 = static MatchedGeometryProperties.frame.getter();
  static UnitPoint.center.getter();
  v27 = v26;
  v29 = v28;
  v132 = v19;
  v133 = v18;
  v128 = v20;
  v129 = v18;
  State.projectedValue.getter();
  v30 = v136;
  v88 = v137;
  v136 = v19;
  *&v137 = v18;
  v31 = v19;
  State.wrappedValue.getter();
  v32 = v132;
  v33 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  v34 = v101;
  v35 = v100;
  v36 = v102;
  (*(v101 + 16))(v100, v32 + v33, v102);
  swift_getKeyPath();
  v136 = v32;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v37 = dispatch thunk of APAnimationController.highlightIndex.getter();

  LOBYTE(v33) = AccessPointContainer.isCollapsibleItem(at:)(v37);

  (*(v34 + 8))(v35, v36);
  v38 = v103;
  v39 = &v11[*(v103 + 36)];
  *v39 = swift_getKeyPath();
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  swift_storeEnumTagMultiPayload();
  v40 = type metadata accessor for CollapsibleContentFrame(0);
  v41 = v39 + v40[5];
  *v41 = v30;
  *(v41 + 8) = v88;
  v42 = v39 + v40[6];
  LOBYTE(v132) = v33 & 1;
  State.init(wrappedValue:)();
  v43 = v137;
  *v42 = v136;
  *(v42 + 1) = v43;
  v44 = v39 + v40[7];
  LOBYTE(v132) = 0;
  State.init(wrappedValue:)();
  v45 = v137;
  *v44 = v136;
  *(v44 + 1) = v45;
  *v11 = v97;
  v11[8] = v21;
  *(v11 + 2) = v99;
  *(v11 + 24) = v98;
  v46 = v95;
  *(v11 + 5) = v96;
  *(v11 + 6) = v46;
  v11[56] = v94;
  v47 = v90;
  *(v11 + 8) = v93;
  *(v11 + 9) = v47;
  *(v11 + 10) = v92;
  *(v11 + 11) = 0x3FF0000000000000;
  *(v11 + 12) = 0x7974696361706FLL;
  *(v11 + 13) = 0xE700000000000000;
  *(v11 + 14) = v91;
  *(v11 + 30) = v89;
  *(v11 + 16) = v27;
  *(v11 + 17) = v29;
  v11[144] = 1;
  v48 = v105;
  static Glass.regular.getter();
  v49 = v106;
  DefaultGlassEffectShape.init()();
  v50 = sub_100031820();
  v51 = sub_10002B454(&qword_10012DF58, &type metadata accessor for DefaultGlassEffectShape, &protocol conformance descriptor for DefaultGlassEffectShape);
  v52 = v104;
  v53 = v111;
  View.glassEffect<A>(_:in:)();
  (*(v112 + 8))(v49, v53);
  (*(v108 + 8))(v48, v109);
  sub_100005688(v11, &qword_10012DEE0, &qword_1000EA240);
  v138 = type metadata accessor for Capsule();
  v139 = sub_10002B454(&qword_10012D158, &type metadata accessor for Capsule, &protocol conformance descriptor for Capsule);
  v54 = sub_100012854(&v136);
  v55 = enum case for RoundedCornerStyle.continuous(_:);
  v56 = type metadata accessor for RoundedCornerStyle();
  (*(*(v56 - 8) + 104))(v54, v55, v56);
  v132 = v38;
  v133 = v53;
  v134 = v50;
  v135 = v51;
  swift_getOpaqueTypeConformance2();
  v57 = v120;
  v58 = v110;
  StrokeFocusEffect.init(shape:)();
  sub_1000057D8(&qword_10012DF60, &qword_10012DED8, &qword_1000EA238, &protocol conformance descriptor for StrokeFocusEffect<A>);
  v59 = v107;
  v60 = v122;
  View.focusEffect<A>(_:)();
  (*(v123 + 8))(v57, v60);
  (*(v114 + 8))(v52, v58);
  v61 = v130;
  sub_10001B9EC();
  v63 = v62;
  static UnitPoint.center.getter();
  v64 = &v59[*(v113 + 44)];
  *v64 = v63;
  *(v64 + 1) = v63;
  *(v64 + 2) = v65;
  *(v64 + 3) = v66;
  v87 = v31;
  v67 = v129;
  v136 = v31;
  *&v137 = v129;
  State.wrappedValue.getter();
  v68 = v132;
  swift_getKeyPath();
  v136 = v68;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v55) = *(v68 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

  if (v55 == 3)
  {
    v69 = -200.0;
  }

  else
  {
    v69 = 0.0;
  }

  v70 = v59;
  v71 = v115;
  sub_100014830(v70, v115, &qword_10012DEF0, &qword_1000EA250);
  v72 = v71 + *(v116 + 44);
  *v72 = 0;
  *(v72 + 8) = v69;
  v136 = v31;
  *&v137 = v67;
  State.wrappedValue.getter();
  v73 = v132;
  swift_getKeyPath();
  v136 = v73;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v74 = *(v73 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal);

  if (v74)
  {
    v75 = 1.0;
  }

  else
  {
    v75 = 0.5;
  }

  v76 = v117;
  sub_100014830(v71, v117, &qword_10012DEF8, &qword_1000EA258);
  *(v76 + *(v118 + 44)) = v75;
  v77 = v124;
  sub_10002D940(v61, v124, type metadata accessor for AccessPointAnimationView);
  v78 = (*(v126 + 80) + 16) & ~*(v126 + 80);
  v79 = swift_allocObject();
  sub_10002D7B8(v77, v79 + v78, type metadata accessor for AccessPointAnimationView);
  v80 = v119;
  sub_100014830(v76, v119, &qword_10012DF00, &qword_1000EA260);
  v81 = (v80 + *(v121 + 36));
  *v81 = sub_100031A74;
  v81[1] = v79;
  v81[2] = 0;
  v81[3] = 0;
  v136 = v87;
  *&v137 = v129;
  State.wrappedValue.getter();
  v82 = v132;
  swift_getKeyPath();
  v136 = v82;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v83 = dispatch thunk of APAnimationController.highlightIndex.getter();

  v136 = v83;
  sub_10002D940(v130, v77, type metadata accessor for AccessPointAnimationView);
  v84 = swift_allocObject();
  sub_10002D7B8(v77, v84 + v78, type metadata accessor for AccessPointAnimationView);
  sub_100031ACC();
  View.onChange<A>(of:initial:_:)();

  return sub_100005688(v80, &qword_10012DF08, &qword_1000EA268);
}

void sub_10001B9EC()
{
  type metadata accessor for AccessPointAnimationView(0);
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal);

  if (v0 == 1)
  {
    sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
    State.wrappedValue.getter();
    if (v1 == 1)
    {
      static AccessPointHighlightComponent.highlightScaleFactor.getter();
    }
  }
}

double sub_10001BB3C(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v27 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (a1 + *(type metadata accessor for AccessPointAnimationView(0) + 28));
  v6 = *v5;
  v24 = v5[1];
  v25 = v6;
  v29 = v6;
  v30 = v24;
  v23[1] = sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v7 = v28;
  v8 = *(a1 + 8);
  v23[0] = a1;
  v9 = *(a1 + 16);

  v10 = v8;
  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v27 + 8))(v4, v2);
    v10 = v29;
  }

  v26 = v2;
  swift_getKeyPath();
  v29 = v10;
  sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v10 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active))
  {
    swift_getKeyPath();
    v29 = v10;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = *(v10 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);

    v13 = v12 > 0;
    v14 = (v7 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__accessPointHidden);
    if (((v13 ^ *(v7 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__accessPointHidden)) & 1) == 0)
    {
LABEL_5:
      *v14 = v13;

      goto LABEL_8;
    }
  }

  else
  {

    v14 = (v7 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__accessPointHidden);
    LOBYTE(v13) = 1;
    if (*(v7 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__accessPointHidden))
    {
      goto LABEL_5;
    }
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v23[-2] = v7;
  LOBYTE(v23[-1]) = v13;
  v29 = v7;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_8:

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v27 + 8))(v4, v26);
    v8 = v29;
  }

  swift_getKeyPath();
  v29 = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v8 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) == 1)
  {
    swift_getKeyPath();
    v29 = v8;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = *(v8 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);

    if (v17 <= 0)
    {
      v29 = v25;
      v30 = v24;
      State.wrappedValue.getter();
      v19 = v28;
      swift_getKeyPath();
      v29 = v19;
      sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v20 = *(v19 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

      if (!v20 || (v29 = v25, v30 = v24, State.wrappedValue.getter(), v21 = v28, swift_getKeyPath(), v29 = v21, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v22 = *(v21 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state), , v22 == 1))
      {
        if (qword_10012CB48 != -1)
        {
          swift_once();
        }

        __chkstk_darwin(qword_10012D558);
        v23[-2] = v23[0];
        withAnimation<A>(_:_:)();
      }
    }
  }

  else
  {
  }

  return result;
}

void sub_10001C184(uint64_t a1)
{
  type metadata accessor for AccessPointAnimationView(0);
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  if (*(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal) == 1)
  {
    *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_10001C2F8(uint64_t a1)
{
  v14 = type metadata accessor for AnimationCompletionCriteria();
  v2 = *(v14 - 8);
  __chkstk_darwin(v14);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AccessPointAnimationView(0);
  v5 = *(v15 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v15);
  if (qword_10012CB60 != -1)
  {
    v7 = swift_once();
  }

  __chkstk_darwin(v7);
  *(&v14 - 2) = a1;
  sub_10002D940(a1, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointAnimationView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_10002D7B8(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for AccessPointAnimationView);
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  (*(v2 + 8))(v4, v14);
  if (qword_10012CB40 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10012D550);
  *(&v14 - 2) = a1;
  withAnimation<A>(_:_:)();
  v10 = (a1 + *(v15 + 28));
  v12 = *v10;
  v11 = v10[1];
  v16 = v12;
  v17 = v11;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  sub_1000178D8();

  return result;
}

uint64_t sub_10001C624(uint64_t a1, char a2)
{
  type metadata accessor for AccessPointAnimationView(0);
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  return State.wrappedValue.setter();
}

uint64_t sub_10001C6A8(uint64_t a1)
{
  v26 = a1;
  v2 = type metadata accessor for AccessPointContainer();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessPointAnimationView(0);
  v7 = (a1 + *(v6 + 28));
  v8 = v7[1];
  *&v31 = *v7;
  v9 = v31;
  *(&v31 + 1) = v8;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v10 = v27;
  v11 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  (*(v3 + 16))(v5, v10 + v11, v2);

  *&v31 = v9;
  *(&v31 + 1) = v8;
  State.wrappedValue.getter();
  v12 = v27;
  swift_getKeyPath();
  *&v31 = v12;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  dispatch thunk of APAnimationController.highlightIndex.getter();

  AccessPointContainer.cornerRadii(for:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v3 + 8))(v5, v2);
  v21 = v26 + *(v6 + 60);
  v22 = *(v21 + 32);
  v23 = *(v21 + 16);
  v31 = *v21;
  v32 = v23;
  v33 = v22;
  v27 = v14;
  v28 = v16;
  v29 = v18;
  v30 = v20;
  sub_100002B38(&qword_10012DF88, &qword_1000EA2B8);
  return State.wrappedValue.setter();
}

uint64_t sub_10001C938@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  v54 = sub_100002B38(&qword_10012DEC8, &qword_1000EA228);
  __chkstk_darwin(v54);
  v55 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = &v48 - v5;
  v6 = type metadata accessor for AccessPointAnchoring();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v48 - v11;
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = *(type metadata accessor for AccessPointAnimationView(0) + 28);
  v53 = a1;
  v17 = (a1 + v16);
  v18 = v17[1];
  v59 = *v17;
  v69 = v59;
  v70 = v18;
  v58 = sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v19 = v67;
  swift_getKeyPath();
  v69 = v19;
  v60 = sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor;
  swift_beginAccess();
  v21 = *(v7 + 16);
  v21(v15, v19 + v20, v6);

  LOBYTE(v19) = AccessPointAnchoring.centered.getter();
  v22 = *(v7 + 8);
  v22(v15, v6);
  v50 = v12;
  v57 = v7 + 8;
  v51 = v22;
  if (v19)
  {
    v52 = 0;
  }

  else
  {
    v67 = v59;
    v68 = v18;
    v49 = v9;
    v23 = v22;
    State.wrappedValue.getter();
    v24 = v65;
    swift_getKeyPath();
    v67 = v24;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor;
    swift_beginAccess();
    v21(v12, v24 + v25, v6);

    v52 = AccessPointAnchoring.leading.getter();
    v23(v12, v6);
    v9 = v49;
  }

  v26 = v61;
  sub_10001A9C8(v61);
  v27 = Namespace.wrappedValue.getter();
  v28 = static MatchedGeometryProperties.frame.getter();
  static UnitPoint.center.getter();
  v29 = v26 + *(v54 + 36);
  *v29 = 1936683112;
  *(v29 + 8) = 0xE400000000000000;
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  *(v29 + 32) = v30;
  *(v29 + 40) = v31;
  *(v29 + 48) = 1;
  v32 = v59;
  v65 = v59;
  v66 = v18;
  State.wrappedValue.getter();
  v33 = v62;
  swift_getKeyPath();
  v65 = v33;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v34 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor;
  swift_beginAccess();
  v21(v9, v33 + v34, v6);

  LOBYTE(v33) = AccessPointAnchoring.centered.getter();
  v35 = v51;
  v51(v9, v6);
  if (v33)
  {
    v36 = 0;
  }

  else
  {
    v62 = v32;
    v63 = v18;
    v37 = v35;
    State.wrappedValue.getter();
    v38 = v64;
    swift_getKeyPath();
    v62 = v38;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v39 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor;
    swift_beginAccess();
    v40 = v38 + v39;
    v41 = v50;
    v21(v50, v40, v6);

    LOBYTE(v38) = AccessPointAnchoring.leading.getter();
    v37(v41, v6);
    v36 = v38 ^ 1;
  }

  v42 = v61;
  v43 = v55;
  sub_1000035B4(v61, v55, &qword_10012DEC8, &qword_1000EA228);
  v44 = v56;
  *v56 = 0;
  *(v44 + 8) = 0;
  *(v44 + 9) = v52 & 1;
  v45 = sub_100002B38(&qword_10012DED0, &qword_1000EA230);
  sub_1000035B4(v43, v44 + *(v45 + 48), &qword_10012DEC8, &qword_1000EA228);
  v46 = v44 + *(v45 + 64);
  *v46 = 0;
  v46[8] = 0;
  v46[9] = v36 & 1;
  sub_100005688(v42, &qword_10012DEC8, &qword_1000EA228);
  return sub_100005688(v43, &qword_10012DEC8, &qword_1000EA228);
}

uint64_t sub_10001CF5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v131 = a3;
  v132 = a2;
  v117 = type metadata accessor for GlobalCoordinateSpace();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessPointAnchoring();
  v113 = *(v5 - 8);
  __chkstk_darwin(v5);
  v112 = v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for EnvironmentValues();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for GeometryProxy();
  v135 = *(v122 - 8);
  __chkstk_darwin(v122);
  v129 = v8;
  v107 = v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessPointAnimationView(0);
  v10 = v9 - 8;
  v125 = *(v9 - 8);
  __chkstk_darwin(v9);
  v128 = v11;
  v106 = v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_100002B38(&qword_10012DE68, &qword_1000EA1C8);
  __chkstk_darwin(v133);
  v13 = v97 - v12;
  v14 = sub_100002B38(&qword_10012DE70, &qword_1000EA1D0);
  v114 = *(v14 - 8);
  __chkstk_darwin(v14);
  v130 = v97 - v15;
  v16 = sub_100002B38(&qword_10012DE78, &qword_1000EA1D8);
  v119 = *(v16 - 8);
  __chkstk_darwin(v16);
  v118 = v97 - v17;
  v18 = sub_100002B38(&qword_10012DE80, &qword_1000EA1E0);
  v121 = *(v18 - 8);
  __chkstk_darwin(v18);
  v120 = v97 - v19;
  v20 = sub_100002B38(&qword_10012DE88, &qword_1000EA1E8);
  __chkstk_darwin(v20);
  v22 = v97 - v21;
  v23 = *(v10 + 36);
  v134 = a1;
  v24 = (a1 + v23);
  v26 = *v24;
  v25 = v24[1];
  v111 = v26;
  v140 = v26;
  v141 = v25;
  v110 = v25;
  v109 = sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v27 = v136;
  swift_getKeyPath();
  v140 = v27;
  v108 = sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v10) = *(v27 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__accessPointHidden);

  if (v10 == 1)
  {
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CGRect(255);
    v29 = v28;
    v30 = sub_10003163C();
    v31 = sub_10002B454(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring, &protocol conformance descriptor for AccessPointAnchoring);
    v140 = v133;
    v141 = v5;
    v142 = v30;
    v143 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v33 = sub_10002B454(&qword_10012D058, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
    v140 = v14;
    v141 = v29;
    v142 = OpaqueTypeConformance2;
    v143 = v33;
    v34 = swift_getOpaqueTypeConformance2();
    v37 = sub_10002B3AC(v34, v35, v36);
    v140 = v16;
    v141 = &type metadata for AccessPointModel.AnimationState;
    v142 = v34;
    v143 = v37;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v97[1] = v20;
    v98 = v5;
    v99 = v14;
    v100 = v22;
    v101 = v16;
    v102 = v18;
    *v13 = static HorizontalAlignment.center.getter();
    *(v13 + 1) = 0;
    v13[16] = 0;
    v39 = sub_100002B38(&qword_10012DE90, &qword_1000EA1F0);
    v40 = v134;
    sub_10001DFEC(v134, &v13[*(v39 + 44)]);
    v41 = v106;
    sub_10002D940(v40, v106, type metadata accessor for AccessPointAnimationView);
    v42 = v135;
    v43 = *(v135 + 16);
    v44 = v107;
    v45 = v122;
    v127 = v135 + 16;
    v126 = v43;
    v43(v107, v132, v122);
    v46 = *(v125 + 80);
    v47 = (v46 + 16) & ~v46;
    v48 = *(v42 + 80);
    v49 = (v128 + v48 + v47) & ~v48;
    v124 = v46 | v48;
    v125 = v49 + v129;
    v50 = swift_allocObject();
    v128 = v47;
    sub_10002D7B8(v41, v50 + v47, type metadata accessor for AccessPointAnimationView);
    v51 = *(v42 + 32);
    v135 = v42 + 32;
    v129 = v49;
    v123 = v51;
    v51(v50 + v49, v44, v45);
    v52 = v133[9];
    v97[0] = v13;
    v53 = &v13[v52];
    *v53 = sub_1000312C4;
    *(v53 + 1) = v50;
    *(v53 + 2) = 0;
    *(v53 + 3) = 0;
    v54 = v40[1];
    v55 = *(v40 + 16);

    v56 = v44;
    if ((v55 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v57 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v58 = v103;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v104 + 1))(v58, v105);
      v54 = v140;
    }

    swift_getKeyPath();
    v140 = v54;
    sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v59 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
    swift_beginAccess();
    v60 = v113;
    v61 = v112;
    v62 = v98;
    (*(v113 + 16))(v112, v54 + v59, v98);

    v63 = v41;
    v104 = type metadata accessor for AccessPointAnimationView;
    sub_10002D940(v134, v41, type metadata accessor for AccessPointAnimationView);
    v64 = v132;
    v126(v56, v132, v45);
    v65 = swift_allocObject();
    sub_10002D7B8(v63, v65 + v128, type metadata accessor for AccessPointAnimationView);
    v123(v65 + v129, v56, v45);
    v105 = sub_10003163C();
    v66 = sub_10002B454(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring, &protocol conformance descriptor for AccessPointAnchoring);
    v67 = v133;
    v68 = v97[0];
    View.onChange<A>(of:initial:_:)();

    (*(v60 + 8))(v61, v62);
    sub_100005688(v68, &qword_10012DE68, &qword_1000EA1C8);
    v69 = v115;
    static CoordinateSpaceProtocol<>.global.getter();
    v70 = v117;
    GeometryProxy.frame<A>(in:)();
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;
    (*(v116 + 8))(v69, v70);
    v140 = v72;
    v141 = v74;
    v142 = v76;
    v143 = v78;
    v79 = v104;
    sub_10002D940(v134, v63, v104);
    v80 = v122;
    v126(v56, v64, v122);
    v81 = swift_allocObject();
    v82 = v79;
    sub_10002D7B8(v63, v81 + v128, v79);
    v123(v81 + v129, v56, v80);
    type metadata accessor for CGRect(0);
    v116 = v83;
    v136 = v67;
    v137 = v62;
    v138 = v105;
    v139 = v66;
    v133 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
    v115 = swift_getOpaqueTypeConformance2();
    v117 = sub_10002B454(&qword_10012D058, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
    v84 = v118;
    v85 = v99;
    v86 = v130;
    View.onChange<A>(of:initial:_:)();

    (*(v114 + 8))(v86, v85);
    v140 = v111;
    v141 = v110;
    State.wrappedValue.getter();
    v87 = v136;
    swift_getKeyPath();
    v140 = v87;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v86) = *(v87 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

    LOBYTE(v136) = v86;
    sub_10002D940(v134, v63, v82);
    v126(v56, v132, v80);
    v88 = swift_allocObject();
    sub_10002D7B8(v63, v88 + v128, v82);
    v123(v88 + v129, v56, v80);
    v140 = v85;
    v141 = v116;
    v142 = v115;
    v143 = v117;
    v89 = swift_getOpaqueTypeConformance2();
    v92 = sub_10002B3AC(v89, v90, v91);
    v93 = v120;
    v94 = v101;
    View.onChange<A>(of:initial:_:)();

    (*(v119 + 8))(v84, v94);
    v95 = v121;
    v96 = v102;
    (*(v121 + 16))(v100, v93, v102);
    swift_storeEnumTagMultiPayload();
    v140 = v94;
    v141 = &type metadata for AccessPointModel.AnimationState;
    v142 = v89;
    v143 = v92;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v95 + 8))(v93, v96);
  }
}

uint64_t sub_10001DFEC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v36 = a1;
  v44 = a2;
  v3 = sub_100002B38(&qword_10012DEB0, &qword_1000EA210);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = type metadata accessor for AccessPointAnchoring();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 + *(type metadata accessor for AccessPointAnimationView(0) + 28));
  v14 = *v13;
  v41 = v13[1];
  v42 = v14;
  v48 = v14;
  v49 = v41;
  v40 = sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v15 = v45;
  swift_getKeyPath();
  v48 = v15;
  v37 = sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor;
  swift_beginAccess();
  v17 = *(v10 + 16);
  v17(v12, v15 + v16, v9);

  v18 = AccessPointAnchoring.bottom.getter();
  LOBYTE(v16) = v18;
  v39 = v18;
  v19 = *(v10 + 8);
  v19(v12, v9);
  v38 = v16 & 1;
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v20 = sub_100002B38(&qword_10012DEB8, &qword_1000EA218);
  sub_10001C938(v36, &v8[*(v20 + 44)]);
  v21 = Namespace.wrappedValue.getter();
  v22 = static MatchedGeometryProperties.frame.getter();
  static UnitPoint.center.getter();
  v23 = &v8[*(v4 + 44)];
  *v23 = 1936683126;
  *(v23 + 1) = 0xE400000000000000;
  *(v23 + 2) = v21;
  *(v23 + 6) = v22;
  *(v23 + 4) = v24;
  *(v23 + 5) = v25;
  v23[48] = 1;
  v45 = v42;
  v46 = v41;
  State.wrappedValue.getter();
  v26 = v47;
  swift_getKeyPath();
  v45 = v26;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor;
  swift_beginAccess();
  v17(v12, v26 + v27, v9);

  LOBYTE(v26) = AccessPointAnchoring.bottom.getter();
  v19(v12, v9);
  v28 = v43;
  sub_1000035B4(v8, v43, &qword_10012DEB0, &qword_1000EA210);
  v29 = v44;
  *v44 = 0;
  v30 = v39;
  *(v29 + 8) = v38;
  *(v29 + 9) = (v30 & 1) == 0;
  v31 = v29;
  v32 = sub_100002B38(&qword_10012DEC0, &qword_1000EA220);
  sub_1000035B4(v28, v31 + *(v32 + 48), &qword_10012DEB0, &qword_1000EA210);
  v33 = v31 + *(v32 + 64);
  *v33 = 0;
  *(v33 + 8) = (v26 & 1) == 0;
  *(v33 + 9) = v26 & 1;
  sub_100005688(v8, &qword_10012DEB0, &qword_1000EA210);
  return sub_100005688(v28, &qword_10012DEB0, &qword_1000EA210);
}

void sub_10001E434(uint64_t a1)
{
  v74 = a1;
  v2 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v2 - 8);
  v73 = &v66 - v3;
  v4 = type metadata accessor for AccessPointAnchoring();
  v70 = *(v4 - 8);
  v71 = v4;
  __chkstk_darwin(v4);
  v69 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DynamicTypeSize();
  v6 = *(v68 - 8);
  __chkstk_darwin(v68);
  v8 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for GlobalCoordinateSpace();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EnvironmentValues();
  v75 = *(v13 - 8);
  v76 = v13;
  __chkstk_darwin(v13);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 8);
  v72 = v1;
  v17 = *(v1 + 16);

  if ((v17 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v75 + 8))(v15, v76);
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v67 = Strong;
    static CoordinateSpaceProtocol<>.global.getter();
    GeometryProxy.frame<A>(in:)();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    (*(v10 + 8))(v12, v9);
    static AccessPointHighlightComponent.maxAccessPointExpandedWidth.getter();
    if (v28 >= v25)
    {
      v29 = v25;
    }

    else
    {
      v29 = v28;
    }

    v30 = type metadata accessor for AccessPointAnimationView(0);
    v31 = v72;
    sub_10007A024(v8);
    static AccessPointHighlightComponent.accessPointHeight(for:)();
    v33 = v32;
    (*(v6 + 8))(v8, v68);

    if ((v17 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v34 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v75 + 8))(v15, v76);
      v16 = v80;
    }

    swift_getKeyPath();
    v80 = v16;
    sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v35 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
    swift_beginAccess();
    v37 = v69;
    v36 = v70;
    v38 = v16 + v35;
    v39 = v71;
    (*(v70 + 16))(v69, v38, v71);

    v40 = (*(v36 + 88))(v37, v39);
    if (v40 == enum case for AccessPointAnchoring.topTrailing(_:))
    {
      v81.origin.x = v21;
      v81.origin.y = v23;
      v81.size.width = v25;
      v81.size.height = v27;
      MaxX = CGRectGetMaxX(v81);
      v42 = (v31 + *(v30 + 28));
      v44 = *v42;
      v43 = v42[1];
      v78 = v44;
      v79 = v43;
      sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
      State.wrappedValue.getter();
      v45 = v77;
      swift_getKeyPath();
      v78 = v45;
      sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v46 = *(v45 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

      if (v46 == 1)
      {
        v47 = v33;
      }

      else
      {
        v47 = v29;
      }

      v21 = MaxX - v47;
      goto LABEL_22;
    }

    if (v40 != enum case for AccessPointAnchoring.bottomLeading(_:))
    {
      if (v40 != enum case for AccessPointAnchoring.bottomTrailing(_:))
      {
        (*(v36 + 8))(v37, v39);
        goto LABEL_22;
      }

      v82.origin.x = v21;
      v82.origin.y = v23;
      v82.size.width = v25;
      v82.size.height = v27;
      v48 = CGRectGetMaxX(v82);
      v49 = (v31 + *(v30 + 28));
      v51 = *v49;
      v50 = v49[1];
      v78 = v51;
      v79 = v50;
      sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
      State.wrappedValue.getter();
      v52 = v77;
      swift_getKeyPath();
      v78 = v52;
      sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v53 = *(v52 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

      if (v53 == 1)
      {
        v54 = v33;
      }

      else
      {
        v54 = v29;
      }

      v21 = v48 - v54;
    }

    v83.origin.x = v21;
    v83.origin.y = v23;
    v83.size.width = v25;
    v83.size.height = v27;
    v23 = CGRectGetMaxY(v83) - v33;
LABEL_22:
    v55 = (v31 + *(v30 + 28));
    v57 = *v55;
    v56 = v55[1];
    v78 = v57;
    v79 = v56;
    sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
    State.wrappedValue.getter();
    v58 = v77;
    swift_getKeyPath();
    v78 = v58;
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v59 = *(v58 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

    if (v59 == 1)
    {
      v60 = v33;
    }

    else
    {
      v60 = v29;
    }

    v61 = type metadata accessor for TaskPriority();
    v62 = v73;
    (*(*(v61 - 8) + 56))(v73, 1, 1, v61);
    type metadata accessor for MainActor();
    v63 = v67;
    swift_unknownObjectRetain();
    v64 = static MainActor.shared.getter();
    v65 = swift_allocObject();
    *(v65 + 16) = v64;
    *(v65 + 24) = &protocol witness table for MainActor;
    *(v65 + 32) = v63;
    *(v65 + 40) = v21;
    *(v65 + 48) = v23;
    *(v65 + 56) = v60;
    *(v65 + 64) = v33;
    sub_100014BBC(0, 0, v62, &unk_1000EA208, v65);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10001ED10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v136 = a1;
  v135 = sub_100002B38(&qword_10012CC58, &qword_1000E9FB0);
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v146 = &v124 - v3;
  v133 = sub_100002B38(&qword_10012DD68, &qword_1000E9FB8);
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v145 = &v124 - v4;
  v144 = sub_100002B38(&qword_10012DD70, &qword_1000E9FC0);
  v131 = *(v144 - 8);
  __chkstk_darwin(v144);
  v143 = &v124 - v5;
  v142 = sub_100002B38(&qword_10012DD78, &qword_1000E9FC8);
  v130 = *(v142 - 8);
  __chkstk_darwin(v142);
  v141 = &v124 - v6;
  v140 = sub_100002B38(&qword_10012DD80, &qword_1000E9FD0);
  v129 = *(v140 - 8);
  __chkstk_darwin(v140);
  v139 = &v124 - v7;
  v137 = sub_100002B38(&qword_10012DD88, &qword_1000E9FD8);
  __chkstk_darwin(v137);
  v9 = (&v124 - v8);
  *v9 = static Alignment.center.getter();
  v9[1] = v10;
  v11 = sub_100002B38(&qword_10012DD90, &unk_1000E9FE0);
  sub_100020320(v1, v9 + *(v11 + 44));
  v12 = type metadata accessor for AccessPointAnimationView(0);
  v13 = (v1 + *(v12 + 40));
  v14 = *v13;
  v15 = v13[1];
  v153 = v14;
  v154 = v15;
  sub_100002B38(&qword_10012DD98, &qword_1000EA650);
  State.wrappedValue.getter();
  v16 = v152;
  v17 = sub_100002B38(&qword_10012DDA0, &qword_1000E9FF0);
  *(v9 + *(v17 + 36)) = v16;
  v18 = *(v12 - 8);
  v149 = (v12 - 8);
  v19 = v18;
  v20 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_10002D940(v2, &v124 - v21, type metadata accessor for AccessPointAnimationView);
  v22 = *(v19 + 80);
  v23 = (v22 + 16) & ~v22;
  v24 = swift_allocObject();
  sub_10002D7B8(&v124 - v21, v24 + v23, type metadata accessor for AccessPointAnimationView);
  v25 = sub_100002B38(&qword_10012DDA8, &qword_1000E9FF8);
  v26 = (v9 + *(v25 + 36));
  *v26 = sub_10002F4EC;
  v26[1] = v24;
  v26[2] = 0;
  v26[3] = 0;
  __chkstk_darwin(v25);
  v138 = v21;
  sub_10002D940(v2, &v124 - v21, type metadata accessor for AccessPointAnimationView);
  v27 = swift_allocObject();
  sub_10002D7B8(&v124 - v21, v27 + v23, type metadata accessor for AccessPointAnimationView);
  v28 = (v9 + *(v137 + 36));
  *v28 = 0;
  v28[1] = 0;
  v28[2] = sub_10002F738;
  v28[3] = v27;
  v29 = v2;
  v150 = v2;
  v125 = type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
  v30 = *(v125 - 8);
  __chkstk_darwin(v125);
  v32 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = dispatch thunk of GameDashboardLaunchContext.launchTarget.getter();
  __chkstk_darwin(v33);
  v128 = type metadata accessor for AccessPointAnimationView;
  sub_10002D940(v29, &v124 - v21, type metadata accessor for AccessPointAnimationView);
  v34 = swift_allocObject();
  sub_10002D7B8(&v124 - v21, v34 + v23, type metadata accessor for AccessPointAnimationView);
  v127 = sub_10002F81C();
  v126 = sub_10002B454(&qword_10012CFB8, &type metadata accessor for GameDashboardLaunchContext.LaunchTarget, &protocol conformance descriptor for GameDashboardLaunchContext.LaunchTarget);
  v35 = v137;
  v36 = v125;
  View.onChange<A>(of:initial:_:)();

  v37 = v36;
  (*(v30 + 8))(v32, v36);
  sub_100005688(v9, &qword_10012DD88, &qword_1000E9FD8);
  v38 = v150;
  v39 = (v150 + *(v149 + 9));
  v41 = *v39;
  v40 = v39[1];
  v153 = v41;
  v154 = v40;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v42 = v152;
  swift_getKeyPath();
  v153 = v42;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v24) = *(v42 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

  LOBYTE(v152) = v24;
  __chkstk_darwin(v43);
  v44 = &v124 - v138;
  v45 = v128;
  sub_10002D940(v38, &v124 - v138, v128);
  v148 = v22;
  v149 = v20;
  v46 = swift_allocObject();
  v147 = v23;
  sub_10002D7B8(v44, v46 + v23, v45);
  v153 = v35;
  v154 = v37;
  v155 = v127;
  v156 = v126;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = sub_10002B3AC(OpaqueTypeConformance2, v48, v49);
  v51 = v140;
  v137 = OpaqueTypeConformance2;
  v128 = v50;
  v52 = v139;
  View.onChange<A>(of:initial:_:)();

  (v129[1])(v52, v51);
  v53 = *(v38 + 8);
  LODWORD(v51) = *(v38 + 16);

  v54 = v53;
  LODWORD(v139) = v51;
  if ((v51 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v55 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v56 = type metadata accessor for EnvironmentValues();
    v57 = *(v56 - 8);
    __chkstk_darwin(v56);
    v59 = &v124 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v57 + 8))(v59, v56);
    v54 = v153;
  }

  v60 = type metadata accessor for AccessPointAnchoring();
  v129 = &v124;
  v61 = *(v60 - 8);
  __chkstk_darwin(v60);
  v63 = &v124 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v153 = v54;
  sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v64 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
  swift_beginAccess();
  (*(v61 + 16))(v63, v54 + v64, v60);

  __chkstk_darwin(v65);
  v66 = &v124 - v138;
  sub_10002D940(v150, &v124 - v138, type metadata accessor for AccessPointAnimationView);
  v67 = v147;
  v68 = swift_allocObject();
  sub_10002D7B8(v66, v67 + v68, type metadata accessor for AccessPointAnimationView);
  v153 = v140;
  v154 = &type metadata for AccessPointModel.AnimationState;
  v155 = v137;
  v156 = v128;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = sub_10002B454(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring, &protocol conformance descriptor for AccessPointAnchoring);
  v71 = v142;
  v140 = v69;
  v72 = v141;
  View.onChange<A>(of:initial:_:)();

  (*(v61 + 8))(v63, v60);
  (*(v130 + 8))(v72, v71);

  v73 = v53;
  if ((v139 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v74 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v75 = type metadata accessor for EnvironmentValues();
    v76 = *(v75 - 8);
    __chkstk_darwin(v75);
    v78 = &v124 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v76 + 8))(v78, v75);
    v73 = v153;
  }

  swift_getKeyPath();
  v153 = v73;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v73 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) == 1)
  {
    swift_getKeyPath();
    v153 = v73;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v79 = *(v73 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);

    v81 = v79 > 0;
  }

  else
  {

    v81 = 1;
  }

  v82 = v149;
  v141 = ~v148;
  LOBYTE(v151) = v81;
  __chkstk_darwin(v80);
  v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_10002D940(v150, &v124 - v83, type metadata accessor for AccessPointAnimationView);
  v84 = v147;
  v85 = swift_allocObject();
  sub_10002D7B8(&v124 - v83, v84 + v85, type metadata accessor for AccessPointAnimationView);
  v153 = v142;
  v154 = v60;
  v155 = v140;
  v156 = v70;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = v144;
  v88 = v143;
  View.onChange<A>(of:initial:_:)();

  (*(v131 + 8))(v88, v87);

  if ((v139 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v89 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v90 = type metadata accessor for EnvironmentValues();
    v91 = *(v90 - 8);
    __chkstk_darwin(v90);
    v93 = &v124 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v91 + 8))(v93, v90);
    v53 = v153;
  }

  v94 = *(v53 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsVersion);

  v151 = v94;
  __chkstk_darwin(v95);
  v96 = v150;
  sub_10002D940(v150, &v124 - v83, type metadata accessor for AccessPointAnimationView);
  v97 = v147;
  v98 = v148;
  v99 = swift_allocObject();
  sub_10002D7B8(&v124 - v83, v97 + v99, type metadata accessor for AccessPointAnimationView);
  v153 = v144;
  v154 = &type metadata for Bool;
  v155 = v86;
  v156 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v100 = v145;
  v101 = v133;
  View.onChange<A>(of:initial:_:)();

  v102 = (*(v132 + 8))(v100, v101);
  v147 = &v124;
  __chkstk_darwin(v102);
  v103 = &v124 - v83;
  sub_10002D940(v96, &v124 - v83, type metadata accessor for AccessPointAnimationView);
  type metadata accessor for MainActor();
  v104 = static MainActor.shared.getter();
  v105 = (v98 + 32) & v141;
  v106 = swift_allocObject();
  *(v106 + 16) = v104;
  *(v106 + 24) = &protocol witness table for MainActor;
  sub_10002D7B8(v103, v106 + v105, type metadata accessor for AccessPointAnimationView);
  v107 = type metadata accessor for TaskPriority();
  v108 = *(v107 - 8);
  v109 = *(v108 + 64);
  __chkstk_darwin(v107);
  v110 = (v109 + 15) & 0xFFFFFFFFFFFFFFF0;
  v111 = &v124 - v110;
  static TaskPriority.userInitiated.getter();
  if (sub_1000E13F8(2, 26, 4, 0))
  {
    v148 = type metadata accessor for _TaskModifier2();
    v149 = &v124;
    v145 = *(v148 - 8);
    __chkstk_darwin(v148);
    v150 = &v124;
    v113 = &v124 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
    v153 = 0;
    v154 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v153 = 0xD000000000000039;
    v154 = 0x80000001000E6F30;
    v151 = 452;
    v114._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v114);

    v116 = __chkstk_darwin(v115);
    (*(v108 + 16))(&v124 - v110, &v124 - v110, v107, v116);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v108 + 8))(&v124 - v110, v107);
    v117 = v136;
    (*(v134 + 32))(v136, v146, v135);
    v118 = sub_100002B38(&qword_10012CC60, &qword_1000E8E60);
    return (*(v145 + 4))(v117 + *(v118 + 36), v113, v148);
  }

  else
  {
    v120 = sub_100002B38(&qword_10012CC68, &qword_1000E8E68);
    v121 = v136;
    v122 = (v136 + *(v120 + 36));
    v123 = type metadata accessor for _TaskModifier();
    (*(v108 + 32))(&v122[*(v123 + 20)], v111, v107);
    *v122 = &unk_1000EA068;
    *(v122 + 1) = v106;
    return (*(v134 + 32))(v121, v146, v135);
  }
}

uint64_t sub_100020320@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v61 = sub_100002B38(&qword_10012DDF0, &qword_1000EA160);
  __chkstk_darwin(v61);
  v4 = &v59 - v3;
  v60 = sub_100002B38(&qword_10012DDF8, &qword_1000EA168);
  __chkstk_darwin(v60);
  v6 = &v59 - v5;
  v7 = type metadata accessor for AccessPointAnimationView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v11 = (a1 + *(v10 + 36));
  v13 = *v11;
  v12 = v11[1];
  *&v88[0] = v13;
  *(&v88[0] + 1) = v12;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v14 = v77;
  swift_getKeyPath();
  *&v88[0] = v14;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v14 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__collapsed);

  if (v15 == 1)
  {
    sub_10002D940(a1, &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointAnimationView);
    v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v17 = swift_allocObject();
    sub_10002D7B8(&v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AccessPointAnimationView);
    v18 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v88[0]) = 0;
    *v6 = sub_100031240;
    *(v6 + 1) = v17;
    v6[16] = v18;
    *(v6 + 3) = v19;
    *(v6 + 4) = v20;
    *(v6 + 5) = v21;
    *(v6 + 6) = v22;
    v6[56] = 0;
    swift_storeEnumTagMultiPayload();
    sub_100002B38(&qword_10012DE20, &qword_1000EA1B0);
    sub_100031018();
    sub_1000310D0();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v59 = static HorizontalAlignment.center.getter();
    v76 = 0;
    sub_1000209CC(a1, &v64);
    v85 = v72;
    v86 = v73;
    v81 = v68;
    v82 = v69;
    v83 = v70;
    v84 = v71;
    v77 = v64;
    v78 = v65;
    v79 = v66;
    v80 = v67;
    v88[8] = v72;
    v88[9] = v73;
    v88[4] = v68;
    v88[5] = v69;
    v88[6] = v70;
    v88[7] = v71;
    v88[0] = v64;
    v88[1] = v65;
    v87 = v74;
    v89 = v74;
    v88[2] = v66;
    v88[3] = v67;
    sub_1000035B4(&v77, &v63, &qword_10012DE00, &qword_1000EA170);
    sub_100005688(v88, &qword_10012DE00, &qword_1000EA170);
    *&v75[119] = v84;
    *&v75[135] = v85;
    *&v75[151] = v86;
    *&v75[55] = v80;
    *&v75[71] = v81;
    *&v75[87] = v82;
    *&v75[103] = v83;
    *&v75[7] = v77;
    *&v75[23] = v78;
    v75[167] = v87;
    *&v75[39] = v79;
    v24 = v76;
    v25 = static Color.clear.getter();
    v26 = &v4[*(sub_100002B38(&qword_10012DE08, &qword_1000EA178) + 36)];
    v27 = v26 + *(sub_100002B38(&qword_10012D138, &unk_1000EA180) + 36);
    GameLayerBackgroundBlurView.init()();
    v28 = static Alignment.center.getter();
    v30 = v29;
    v31 = &v27[*(sub_100002B38(&qword_10012D140, &qword_1000E9530) + 36)];
    *v31 = v28;
    v31[1] = v30;
    *v26 = v25;
    v32 = v26 + *(sub_100002B38(&qword_10012D148, &unk_1000EA190) + 36);
    v33 = *(type metadata accessor for RoundedRectangle() + 20);
    v34 = enum case for RoundedCornerStyle.continuous(_:);
    v35 = type metadata accessor for RoundedCornerStyle();
    (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
    __asm { FMOV            V0.2D, #20.0 }

    *v32 = _Q0;
    *&v32[*(sub_100002B38(&qword_10012CDE0, &qword_1000E90D0) + 36)] = 256;
    v41 = Namespace.wrappedValue.getter();
    LODWORD(v32) = static MatchedGeometryProperties.frame.getter();
    static UnitPoint.center.getter();
    v43 = v42;
    v45 = v44;
    v46 = v26 + *(sub_100002B38(&qword_10012DE10, &qword_1000EA1A0) + 36);
    *v46 = 0x756F72676B636162;
    *(v46 + 1) = 0xEA0000000000646ELL;
    *(v46 + 2) = v41;
    *(v46 + 6) = v32;
    *(v46 + 4) = v43;
    *(v46 + 5) = v45;
    v46[48] = 1;
    v47 = static Alignment.center.getter();
    v49 = v48;
    v50 = (v26 + *(sub_100002B38(&qword_10012DE18, &qword_1000EA1A8) + 36));
    *v50 = v47;
    v50[1] = v49;
    v51 = *&v75[48];
    *(v4 + 49) = *&v75[32];
    v52 = *v75;
    *(v4 + 33) = *&v75[16];
    *(v4 + 17) = v52;
    v53 = *&v75[112];
    *(v4 + 113) = *&v75[96];
    v54 = *&v75[64];
    *(v4 + 97) = *&v75[80];
    *(v4 + 81) = v54;
    *(v4 + 65) = v51;
    v55 = *&v75[128];
    *(v4 + 161) = *&v75[144];
    *(v4 + 145) = v55;
    *v4 = v59;
    *(v4 + 1) = 0;
    v4[16] = v24;
    *(v4 + 177) = *&v75[160];
    *(v4 + 129) = v53;
    v56 = static SafeAreaRegions.all.getter();
    v57 = static Edge.Set.all.getter();
    v58 = &v4[*(v61 + 36)];
    *v58 = v56;
    v58[8] = v57;
    sub_1000035B4(v4, v6, &qword_10012DDF0, &qword_1000EA160);
    swift_storeEnumTagMultiPayload();
    sub_100002B38(&qword_10012DE20, &qword_1000EA1B0);
    sub_100031018();
    sub_1000310D0();
    _ConditionalContent<>.init(storage:)();
    return sub_100005688(v4, &qword_10012DDF0, &qword_1000EA160);
  }
}

uint64_t sub_1000209CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AccessPointAnimationView(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  *&v33[8] = v5;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *v33 = v51;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v51 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__showDashboard);

  if (v6 == 1)
  {
    sub_100031E4C(v33);
  }

  else
  {
    *(&v51 + 1) = v5;
    State.projectedValue.getter();
    v29 = *v33;
    v28 = *&v33[8];
    *&v33[8] = v5;
    State.wrappedValue.getter();
    swift_getKeyPath();
    *v33 = v4;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    dispatch thunk of APAnimationController.highlightIndex.getter();

    type metadata accessor for AccessPointHighlightComponent.GestureHandler();
    swift_allocObject();
    v7 = AccessPointHighlightComponent.GestureHandler.init()();
    type metadata accessor for RemoteAlertAccessPointContext(0);
    sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
    v27 = Environment.init<A>(_:)();
    v9 = v8;
    State.init(wrappedValue:)();
    v10 = v5;
    v26 = *v33;
    State.init(wrappedValue:)();
    v11 = v33[0];
    v12 = *&v33[8];
    *&v51 = v7;
    State.init(wrappedValue:)();
    v13 = *v33;
    v14 = Namespace.wrappedValue.getter();
    v15 = static MatchedGeometryProperties.frame.getter();
    static UnitPoint.center.getter();
    *v33 = v27;
    v33[8] = v9 & 1;
    *&v33[24] = v28;
    *&v33[16] = v29;
    *&v33[40] = v26;
    *&v34 = v10;
    BYTE8(v34) = v11;
    *&v35 = v12;
    *(&v35 + 1) = v13;
    v36 = *(&v13 + 1);
    *&v37 = 0x7974696361706FLL;
    *(&v37 + 1) = 0xE700000000000000;
    *&v38 = v14;
    DWORD2(v38) = v15;
    *&v39 = v16;
    *(&v39 + 1) = v17;
    LOBYTE(v40) = 1;
    sub_100031E40(v33);
  }

  v47 = v37;
  v48 = v38;
  v49 = v39;
  v50 = v40;
  v43 = *&v33[32];
  v44 = v34;
  v45 = v35;
  v46 = v36;
  v41 = *v33;
  v42 = *&v33[16];
  sub_100002B38(&qword_10012DF20, &qword_1000EA2A0);
  sub_1000318DC();
  _ConditionalContent<>.init(storage:)();
  v47 = v57;
  v48 = v58;
  v18 = v58;
  v49 = v59;
  v43 = v53;
  v19 = v53;
  v44 = v54;
  v45 = v55;
  v46 = v56;
  v41 = v51;
  v42 = v52;
  v31[6] = v57;
  v31[7] = v58;
  v31[8] = v59;
  v31[2] = v53;
  v31[3] = v54;
  v31[4] = v55;
  v31[5] = v56;
  v31[0] = v51;
  v31[1] = v52;
  v37 = v57;
  v38 = v58;
  v39 = v59;
  *&v33[32] = v53;
  v34 = v54;
  v35 = v55;
  v36 = v56;
  v50 = v60;
  v32 = v60;
  LOWORD(v40) = v60;
  *v33 = v51;
  *&v33[16] = v52;
  v30[152] = 1;
  *(a2 + 96) = v57;
  *(a2 + 112) = v18;
  *(a2 + 128) = v39;
  v20 = v40;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  *(a2 + 32) = v19;
  *(a2 + 48) = v21;
  *(a2 + 64) = v22;
  *(a2 + 80) = v23;
  v24 = *&v33[16];
  *a2 = *v33;
  *(a2 + 16) = v24;
  *(a2 + 144) = v20;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  sub_1000035B4(v31, v30, &qword_10012DF90, &unk_1000EA2C0);
  return sub_100005688(&v41, &qword_10012DF90, &unk_1000EA2C0);
}

uint64_t sub_100020E68(uint64_t a1)
{
  v43 = type metadata accessor for AnimationCompletionCriteria();
  v46 = *(v43 - 8);
  __chkstk_darwin(v43);
  v45 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for AccessPointAnimationView(0);
  v40 = *(v47 - 8);
  v44 = *(v40 + 64);
  __chkstk_darwin(v47);
  v48 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PageMetrics();
  v42 = *(v4 - 8);
  __chkstk_darwin(v4);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessPointContainer();
  v39 = *(v6 - 8);
  __chkstk_darwin(v6);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);

  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    v37 = v6;
    v15 = v14;
    os_log(_:dso:log:_:_:)();

    v6 = v37;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v12 = v52;
  }

  swift_getKeyPath();
  v52 = v12;
  sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v12 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active);

  if ((v16 & 1) == 0)
  {
    sub_1000215B4();
  }

  v17 = (a1 + *(v47 + 28));
  v18 = *v17;
  v19 = v17[1];
  v52 = *v17;
  v53 = v19;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v20 = v50;
  v21 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  v22 = v38;
  v23 = v39;
  (*(v39 + 16))(v38, v20 + v21, v6);

  v24 = v41;
  AccessPointContainer.pageMetrics.getter();
  (*(v23 + 8))(v22, v6);
  v25 = PageMetrics.pageFields.getter();
  (*(v42 + 8))(v24, v4);
  if (v25)
  {
    v50 = v18;
    v51 = v19;
    State.wrappedValue.getter();
    v26 = v49;
    swift_getKeyPath();
    v50 = v26;
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    static AccessPointMetricsHelper.postPageEvent(hostApp:pageFields:)();
  }

  v27 = v48;
  sub_10002D940(a1, v48, type metadata accessor for AccessPointAnimationView);
  v28 = *(v40 + 80);
  v29 = swift_allocObject();
  sub_10002D7B8(v27, v29 + ((v28 + 16) & ~v28), type metadata accessor for AccessPointAnimationView);
  v30 = dispatch thunk of GameOverlayDashboardVisibilityMonitor.start(handler:)();

  if (qword_10012CB50 != -1)
  {
    v31 = swift_once();
  }

  __chkstk_darwin(v31);
  *(&v37 - 2) = a1;
  *(&v37 - 8) = v30 & 1;
  v32 = a1;
  v33 = v48;
  sub_10002D940(v32, v48, type metadata accessor for AccessPointAnimationView);
  v34 = swift_allocObject();
  *(v34 + 16) = v30 & 1;
  sub_10002D7B8(v33, v34 + ((v28 + 17) & ~v28), type metadata accessor for AccessPointAnimationView);
  v35 = v45;
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v46 + 8))(v35, v43);
}

double sub_1000215B4()
{
  v1 = v0;
  v34 = type metadata accessor for AccessPointAnchoring();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AccessPointUseCase();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessPointContainer();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100011F80(v9, qword_100135C88);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Pre-empting highlights animations because the access point is being displayed after a recent deactivation.", v12, 2u);
  }

  v13 = (v1 + *(type metadata accessor for AccessPointAnimationView(0) + 28));
  v14 = v13[1];
  v49 = *v13;
  v50 = v14;
  v15 = v49;
  v35 = v49;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v16 = v47;
  v49 = v15;
  v50 = v14;
  State.wrappedValue.getter();
  v17 = v47;
  v18 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  v37 = *(v6 + 16);
  v37(v8, &v17[v18], v5);

  AccessPointContainer.items.getter();
  v36 = *(v6 + 8);
  v36(v8, v5);

  swift_getKeyPath();
  v47 = v16;
  v38 = sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel, &unk_1000E9BD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  dispatch thunk of APAnimationController.highlightIndex.setter();
  v19 = v35;

  v47 = v19;
  v48 = v14;
  State.wrappedValue.getter();
  v20 = v45;
  v21 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  v37(v8, &v20[v21], v5);

  v22 = v39;
  AccessPointContainer.useCase.getter();
  v36(v8, v5);
  LOBYTE(v20) = AccessPointUseCase.isEphemeral.getter();
  (*(v40 + 8))(v22, v41);
  if ((v20 & 1) == 0)
  {
    v45 = v19;
    v46 = v14;
    State.wrappedValue.getter();
    v45 = v19;
    v46 = v14;
    State.wrappedValue.getter();
    v25 = v43;
    swift_getKeyPath();
    v45 = v25;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v26 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__destAnchor;
    swift_beginAccess();
    v27 = &v25[v26];
    v28 = v32;
    (*(v33 + 16))(v32, v27, v34);

    sub_10001590C(v28);

    v43 = v19;
    v44 = v14;
    State.wrappedValue.getter();
    v29 = v42;
    if (v42[OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state] != 1)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v32 - 2) = v29;
      *(&v32 - 8) = 1;
      v43 = v29;
      goto LABEL_11;
    }

LABEL_9:

    return result;
  }

  v45 = v19;
  v46 = v14;
  State.wrappedValue.getter();
  v23 = v43;
  if (v43[OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state] == 2)
  {
    goto LABEL_9;
  }

  v24 = swift_getKeyPath();
  __chkstk_darwin(v24);
  *(&v32 - 2) = v23;
  *(&v32 - 8) = 2;
  v45 = v23;
LABEL_11:
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_100021C98(char a1, uint64_t a2)
{
  v15 = type metadata accessor for AnimationCompletionCriteria();
  v4 = *(v15 - 8);
  __chkstk_darwin(v15);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessPointAnimationView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  if (qword_10012CB50 != -1)
  {
    v10 = swift_once();
  }

  v14[1] = v14;
  __chkstk_darwin(v10);
  v14[-2] = a2;
  LOBYTE(v14[-1]) = a1 & 1;
  sub_10002D940(a2, v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointAnimationView);
  v11 = (*(v8 + 80) + 17) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a1 & 1;
  sub_10002D7B8(v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for AccessPointAnimationView);
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v4 + 8))(v6, v15);
}

double sub_100021F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for AccessPointAnimationView(0);
  v59 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v60 = v5;
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v6 - 8);
  v62 = &v56 - v7;
  v8 = type metadata accessor for EnvironmentValues();
  v57 = *(v8 - 8);
  v58 = v8;
  __chkstk_darwin(v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v12 + 104);
  v16(v15, enum case for GameDashboardLaunchContext.LaunchTarget.onboarding(_:), v11, v13);
  v17 = static GameDashboardLaunchContext.LaunchTarget.== infix(_:_:)();
  v18 = *(v12 + 8);
  v18(v15, v11);
  if (v17)
  {
    v19 = *(a3 + 16);

    v20 = a3;
    if ((v19 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v21 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v57 + 8))(v10, v58);
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      if (qword_10012CC18 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100011F80(v24, qword_100135C88);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Requesting invocation of onboarding flow from client.", v27, 2u);
      }

      v28 = type metadata accessor for TaskPriority();
      v29 = v62;
      (*(*(v28 - 8) + 56))(v62, 1, 1, v28);
      v30 = v61;
      sub_10002D940(v20, v61, type metadata accessor for AccessPointAnimationView);
      type metadata accessor for MainActor();
      swift_unknownObjectRetain();
      v31 = static MainActor.shared.getter();
      v32 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v33 = (v60 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      *(v34 + 16) = v31;
      *(v34 + 24) = &protocol witness table for MainActor;
      sub_10002D7B8(v30, v34 + v32, type metadata accessor for AccessPointAnimationView);
      *(v34 + v33) = Strong;
      sub_100014BBC(0, 0, v29, &unk_1000EA120, v34);

      goto LABEL_10;
    }
  }

  else
  {
    (v16)(v15, enum case for GameDashboardLaunchContext.LaunchTarget.dashboard(_:), v11);
    v35 = static GameDashboardLaunchContext.LaunchTarget.== infix(_:_:)();
    v18(v15, v11);
    if (v35)
    {
      v36 = a3;
      v37 = *(a3 + 16);

      if ((v37 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v38 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v57 + 8))(v10, v58);
      }

      v39 = swift_unknownObjectWeakLoadStrong();

      if (v39)
      {
        v40 = sub_1000228C4();
        v41 = DashboardRequest.minimalInitialState()();
        v43 = v42;

        if (v43 >> 60 == 15)
        {
LABEL_10:
          swift_unknownObjectRelease();
          return result;
        }

        if (qword_10012CC18 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        sub_100011F80(v44, qword_100135C88);
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "Requesting full screen dashboard presentation from access point.", v47, 2u);
        }

        v48 = type metadata accessor for TaskPriority();
        (*(*(v48 - 8) + 56))(v62, 1, 1, v48);
        v49 = v61;
        sub_10002D940(v36, v61, type metadata accessor for AccessPointAnimationView);
        type metadata accessor for MainActor();
        swift_unknownObjectRetain();
        sub_1000304CC(v41, v43);
        v50 = static MainActor.shared.getter();
        v51 = v41;
        v52 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v53 = (v60 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
        v54 = swift_allocObject();
        *(v54 + 16) = v50;
        *(v54 + 24) = &protocol witness table for MainActor;
        sub_10002D7B8(v49, v54 + v52, type metadata accessor for AccessPointAnimationView);
        *(v54 + v53) = v39;
        v55 = (v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8));
        *v55 = v51;
        v55[1] = v43;
        sub_100014BBC(0, 0, v62, &unk_1000EA110, v54);
        swift_unknownObjectRelease();
        sub_10003091C(v51, v43);
      }
    }
  }

  return result;
}