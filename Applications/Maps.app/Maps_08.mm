unint64_t sub_100142260()
{
  result = qword_10190C550;
  if (!qword_10190C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C550);
  }

  return result;
}

unint64_t sub_1001422B4()
{
  result = qword_10190C5A0;
  if (!qword_10190C5A0)
  {
    sub_1000D6664(&qword_10190C598, &qword_1011E8D20);
    sub_100142340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C5A0);
  }

  return result;
}

unint64_t sub_100142340()
{
  result = qword_10190C5A8;
  if (!qword_10190C5A8)
  {
    sub_1000D6664(&qword_10190C5B0, &qword_1011E8D28);
    sub_1000414C8(&unk_1019105B0, &qword_10190C5B8, &unk_1011E8D30, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C5A8);
  }

  return result;
}

unint64_t sub_1001423F8()
{
  result = qword_1019106A0;
  if (!qword_1019106A0)
  {
    sub_1000D6664(&qword_10190C5C8, &qword_1012005E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019106A0);
  }

  return result;
}

uint64_t sub_10014247C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2, a3);
    a4();
    sub_100142CF0(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100142530()
{
  result = qword_10190C5D8;
  if (!qword_10190C5D8)
  {
    sub_1000D6664(&qword_10190C578, &qword_1011E8D00);
    sub_10014247C(&qword_10190C5C0, &qword_10190C568, &qword_1011E8CF0, sub_1001423F8);
    sub_10014247C(&qword_10190C5D0, &qword_10190C588, &qword_1011E8D10, sub_1001422B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C5D8);
  }

  return result;
}

void sub_100142614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v5 = a5;
  }
}

uint64_t sub_100142660@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1001426C4()
{
  result = qword_10190C610;
  if (!qword_10190C610)
  {
    sub_1000D6664(&qword_10190C608, &qword_1011E8DC8);
    sub_10014277C();
    sub_1000414C8(&qword_10190C628, &qword_10190FF20, &qword_1011E8DE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C610);
  }

  return result;
}

unint64_t sub_10014277C()
{
  result = qword_10190C618;
  if (!qword_10190C618)
  {
    sub_1000D6664(&unk_10190FE90, &unk_1011E8DD0);
    sub_1000414C8(&unk_10190FEA0, &qword_10190C620, &qword_10120FF90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C618);
  }

  return result;
}

unint64_t sub_100142834()
{
  result = qword_10190C660;
  if (!qword_10190C660)
  {
    sub_1000D6664(&qword_10190C648, &qword_1011E8E10);
    sub_1000D6664(&qword_10191D8F0, &qword_1011FA5C0);
    type metadata accessor for PlainButtonStyle();
    sub_1000414C8(&qword_10190C668, &qword_10191D8F0, &qword_1011FA5C0, &protocol conformance descriptor for Button<A>);
    sub_100142CF0(&qword_10190C670, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&unk_1019105B0, &qword_10190C5B8, &unk_1011E8D30, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C660);
  }

  return result;
}

unint64_t sub_1001429AC()
{
  result = qword_10190C678;
  if (!qword_10190C678)
  {
    sub_1000D6664(&qword_10191DF90, &qword_1011EF890);
    sub_100142CF0(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C678);
  }

  return result;
}

unint64_t sub_100142A98()
{
  result = qword_10190C698;
  if (!qword_10190C698)
  {
    sub_1000D6664(&qword_10190C690, &qword_1011E8E30);
    sub_10014247C(&qword_10190C5D0, &qword_10190C588, &qword_1011E8D10, sub_1001422B4);
    sub_100142B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C698);
  }

  return result;
}

unint64_t sub_100142B50()
{
  result = qword_10190C6A0;
  if (!qword_10190C6A0)
  {
    sub_1000D6664(&qword_10190C6A8, &qword_1011E8E38);
    sub_10014247C(&qword_10190C6B0, &qword_10190C6B8, &qword_1011E8E40, sub_100142C34);
    sub_10014247C(&qword_10190C5D0, &qword_10190C588, &qword_1011E8D10, sub_1001422B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C6A0);
  }

  return result;
}

unint64_t sub_100142C34()
{
  result = qword_10190C6C0;
  if (!qword_10190C6C0)
  {
    sub_1000D6664(&qword_10190C6C8, &unk_1011E8E48);
    sub_100142CF0(&qword_10190C6D0, &type metadata accessor for MapsDesignImage, &protocol conformance descriptor for MapsDesignImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C6C0);
  }

  return result;
}

uint64_t sub_100142CF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100142D38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100142D80(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_100142DD8(uint64_t a1, int a2)
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

uint64_t sub_100142E20(uint64_t result, int a2, int a3)
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

uint64_t sub_100142E78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_100142EC0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_100142F2C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100142F40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100142F88(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_100143000(_OWORD *a1)
{
  v25[0] = *a1;
  sub_1000CE6B8(&qword_10190C708, &qword_1011E8FF0);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *&v25[0] = v18;
  sub_100144578();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = v18[2];
  v3 = v18[3];
  v4 = v18[4];
  v5 = v18[5];
  v6 = v18[6];
  sub_100142614(*(*&v25[0] + 16), *(*&v25[0] + 24), *(*&v25[0] + 32), *(*&v25[0] + 40), *(*&v25[0] + 48));

  v7 = swift_allocObject();
  v8 = a1[5];
  v7[5] = a1[4];
  v7[6] = v8;
  v7[7] = a1[6];
  v9 = a1[1];
  v7[1] = *a1;
  v7[2] = v9;
  v10 = a1[3];
  v7[3] = a1[2];
  v7[4] = v10;
  v11 = swift_allocObject();
  v12 = a1[5];
  v11[5] = a1[4];
  v11[6] = v12;
  v11[7] = a1[6];
  v13 = a1[1];
  v11[1] = *a1;
  v11[2] = v13;
  v14 = a1[3];
  v11[3] = a1[2];
  v11[4] = v14;
  sub_10014369C(a1, v25);
  sub_10014369C(a1, v25);
  if (qword_101906578 != -1)
  {
    swift_once();
  }

  *&v19 = v2;
  *(&v19 + 1) = v3;
  *&v20 = v4;
  *(&v20 + 1) = v5;
  *v21 = v6;
  *&v21[8] = xmmword_10195FB40;
  *&v21[24] = qword_10195FB50;
  v22 = xmmword_10195FB58;
  *&v23 = sub_1001445D0;
  *(&v23 + 1) = v7;
  *&v24 = sub_100144600;
  *(&v24 + 1) = v11;

  v15 = Solarium.init()();
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  sub_1000CE6B8(&qword_10190C710, &qword_1011E9020);
  sub_100144640();
  sub_100144694();
  View.staticIf<A, B, C>(_:then:else:)();
  v25[4] = v22;
  v25[5] = v23;
  v25[6] = v24;
  v25[0] = v19;
  v25[1] = v20;
  v25[2] = *v21;
  v25[3] = *&v21[16];
  return sub_100144720(v25);
}

uint64_t sub_10014334C(__int128 *a1, void (*a2)(void *))
{
  sub_1000CE6B8(&qword_10190C708, &qword_1011E8FF0);
  v3 = State.wrappedValue.getter();
  a2(v3);
}

uint64_t sub_1001433B0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[5];
  v16[4] = a1[4];
  v16[5] = v6;
  v16[6] = a1[6];
  v7 = a1[1];
  v16[0] = *a1;
  v16[1] = v7;
  v8 = a1[3];
  v16[2] = a1[2];
  v16[3] = v8;
  v9 = static Edge.Set.all.getter();
  v15[0] = 0;
  v10 = a1[5];
  *(a3 + 64) = a1[4];
  *(a3 + 80) = v10;
  *(a3 + 96) = a1[6];
  v11 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v11;
  v12 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v12;
  *(a3 + 112) = v9;
  v13 = *(a2 + 48);
  *(a3 + 136) = *(a2 + 64);
  *(a3 + 120) = v13;
  *(a3 + 152) = 0;
  return sub_100142228(v16, v15);
}

uint64_t sub_100143450@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[5];
  v16[4] = a1[4];
  v16[5] = v6;
  v16[6] = a1[6];
  v7 = a1[1];
  v16[0] = *a1;
  v16[1] = v7;
  v8 = a1[3];
  v16[2] = a1[2];
  v16[3] = v8;
  v9 = static Edge.Set.all.getter();
  v15[0] = 0;
  v10 = a1[5];
  *(a3 + 64) = a1[4];
  *(a3 + 80) = v10;
  *(a3 + 96) = a1[6];
  v11 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v11;
  v12 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v12;
  *(a3 + 112) = v9;
  v13 = *(a2 + 16);
  *(a3 + 136) = *(a2 + 32);
  *(a3 + 120) = v13;
  *(a3 + 152) = 0;
  return sub_100142228(v16, v15);
}

double sub_1001434F0@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v17[4] = v1[4];
  v18 = v3;
  v19 = v1[6];
  v4 = v1[1];
  v17[0] = *v1;
  v17[1] = v4;
  v5 = v1[3];
  v17[2] = v1[2];
  v17[3] = v5;
  v6 = swift_allocObject();
  v7 = v1[5];
  v6[5] = v1[4];
  v6[6] = v7;
  v6[7] = v1[6];
  v8 = v1[1];
  v6[1] = *v1;
  v6[2] = v8;
  v9 = v1[3];
  v6[3] = v1[2];
  v6[4] = v9;
  v14 = v19;
  v15 = v18;
  sub_10014369C(v17, v16);
  v10 = static Edge.Set.all.getter();
  v16[0] = 0;
  v11 = a1 + *(sub_1000CE6B8(&qword_10190C6F0, &qword_1011E8FD8) + 36);
  sub_100143000(v17);
  *(v11 + *(sub_1000CE6B8(&qword_10190C6F8, &qword_1011E8FE0) + 36)) = 1;
  *a1 = sub_100143644;
  *(a1 + 8) = v6;
  *(a1 + 16) = v10;
  *(a1 + 40) = v14;
  *(a1 + 24) = v15;
  *(a1 + 56) = v16[0];
  v12 = a1 + *(sub_1000CE6B8(&qword_10190C700, &qword_1011E8FE8) + 36);
  result = 2.67239234e185;
  *v12 = xmmword_1011E8B60;
  *(v12 + 16) = 13;
  return result;
}

void *sub_100143644@<X0>(void *a1@<X8>)
{
  sub_1000CE6B8(&qword_10190C708, &qword_1011E8FF0);
  result = State.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1001436D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a4;
  v31 = a3;
  v32 = a1;
  v33 = a2;
  v36 = a5;
  v6 = type metadata accessor for ScrollBounceBehavior();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Section();
  v47 = &protocol witness table for EmptyView;
  v48 = a4;
  v49 = &protocol witness table for EmptyView;
  WitnessTable = swift_getWitnessTable();
  v43 = &type metadata for Never;
  v44 = v9;
  v45 = &protocol witness table for Never;
  v46 = WitnessTable;
  type metadata accessor for List();
  v11 = type metadata accessor for ModifiedContent();
  v12 = swift_getWitnessTable();
  v13 = sub_100109BFC();
  v41 = v12;
  v42 = v13;
  v14 = swift_getWitnessTable();
  v43 = v11;
  v44 = v14;
  swift_getOpaqueTypeMetadata2();
  v43 = v11;
  v44 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = type metadata accessor for ScrollView();
  v29 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  v18 = swift_getWitnessTable();
  v43 = v15;
  v44 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v29 - v24;
  v37 = v31;
  v38 = v30;
  v39 = v32;
  v40 = v33;
  static Axis.Set.vertical.getter();
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollBounceBehavior.basedOnSize.getter();
  v26 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v26)
  {
    Axis.Set.init(rawValue:)();
  }

  View.scrollBounceBehavior(_:axes:)();
  (*(v34 + 8))(v8, v35);
  (*(v29 + 8))(v17, v15);
  v43 = v15;
  v44 = v18;
  swift_getOpaqueTypeConformance2();
  sub_10010ADFC();
  v27 = *(v20 + 8);
  v27(v22, OpaqueTypeMetadata2);
  sub_10010ADFC();
  return (v27)(v25, OpaqueTypeMetadata2);
}

uint64_t sub_100143B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a4;
  v30 = a3;
  v31 = a1;
  v32 = a2;
  v33 = a5;
  v28 = type metadata accessor for Section();
  v44 = &protocol witness table for EmptyView;
  v45 = a4;
  v46 = &protocol witness table for EmptyView;
  WitnessTable = swift_getWitnessTable();
  v40 = &type metadata for Never;
  v41 = v28;
  v42 = &protocol witness table for Never;
  v43 = WitnessTable;
  v6 = type metadata accessor for List();
  v26 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ModifiedContent();
  v25 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = swift_getWitnessTable();
  v13 = sub_100109BFC();
  v38 = v12;
  v39 = v13;
  v14 = swift_getWitnessTable();
  v40 = v9;
  v41 = v14;
  v24 = &opaque type descriptor for <<opaque return type of View.listHasStackBehavior()>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v24 - v20;
  v34 = v30;
  v35 = v29;
  v36 = v31;
  v37 = v32;
  List<>.init(content:)();
  sub_1001CDF40(v6, v12);
  (*(v26 + 8))(v8, v6);
  View.listHasStackBehavior()();
  (*(v25 + 8))(v11, v9);
  v40 = v9;
  v41 = v14;
  swift_getOpaqueTypeConformance2();
  sub_10010ADFC();
  v22 = *(v16 + 8);
  v22(v18, OpaqueTypeMetadata2);
  sub_10010ADFC();
  return (v22)(v21, OpaqueTypeMetadata2);
}

uint64_t sub_100143F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Section();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v17[-v13];
  v18 = a3;
  v19 = a4;
  v20 = a1;
  v21 = a2;
  Section<>.init(content:)();
  v22 = &protocol witness table for EmptyView;
  v23 = a4;
  v24 = &protocol witness table for EmptyView;
  swift_getWitnessTable();
  sub_10010ADFC();
  v15 = *(v9 + 8);
  v15(v11, v8);
  sub_10010ADFC();
  return (v15)(v14, v8);
}

uint64_t sub_10014410C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  __chkstk_darwin(a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v14 - v9;
  v11(v8);
  sub_10010ADFC();
  v12 = *(v4 + 8);
  v12(v6, a3);
  sub_10010ADFC();
  return (v12)(v10, a3);
}

double sub_100144250@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;
  swift_bridgeObjectRetain_n();

  sub_100147330(v5, v6, v7, sub_100144B74, v8, v11);
  v9 = v11[1];
  *a3 = v11[0];
  *(a3 + 16) = v9;
  result = *&v12;
  *(a3 + 32) = v12;
  *(a3 + 48) = v13;
  return result;
}

uint64_t sub_100144310()
{
  swift_getKeyPath();
  sub_100144578();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000CE6B8(&qword_10190C7E0, &qword_1011E9190);
  sub_1000414C8(&qword_10190C7E8, &qword_10190C7E0, &qword_1011E9190, &protocol conformance descriptor for [A]);
  sub_100144ACC();
  sub_100144B20();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100144438@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100144578();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  sub_100142614(v4, v5, v6, v7, v8);
}

uint64_t sub_1001444CC(_OWORD *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100144578();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

unint64_t sub_100144578()
{
  result = qword_10190B9D0;
  if (!qword_10190B9D0)
  {
    type metadata accessor for UserProfileViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190B9D0);
  }

  return result;
}

unint64_t sub_100144640()
{
  result = qword_10190C718;
  if (!qword_10190C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C718);
  }

  return result;
}

unint64_t sub_100144694()
{
  result = qword_10190C720[0];
  if (!qword_10190C720[0])
  {
    sub_1000D6664(&qword_10190C710, &qword_1011E9020);
    sub_100144640();
    result = swift_getWitnessTable();
    atomic_store(result, qword_10190C720);
  }

  return result;
}

uint64_t sub_1001447A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001447F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100144814(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 96) = v3;
  return result;
}

unint64_t sub_100144868()
{
  result = qword_10190C7A8;
  if (!qword_10190C7A8)
  {
    sub_1000D6664(&qword_10190C700, &qword_1011E8FE8);
    sub_1001448F4();
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C7A8);
  }

  return result;
}

unint64_t sub_1001448F4()
{
  result = qword_10190C7B0;
  if (!qword_10190C7B0)
  {
    sub_1000D6664(&qword_10190C6F0, &qword_1011E8FD8);
    sub_1001449AC();
    sub_1000414C8(&qword_10190C7D8, &qword_10190C6F8, &qword_1011E8FE0, &unk_1011E66B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C7B0);
  }

  return result;
}

unint64_t sub_1001449AC()
{
  result = qword_10190C7B8;
  if (!qword_10190C7B8)
  {
    sub_1000D6664(&qword_10190C7C0, "2\a&");
    sub_1000414C8(&qword_10190C7C8, &qword_10190C7D0, &qword_1011E90E8, &unk_1011E90F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C7B8);
  }

  return result;
}

unint64_t sub_100144ACC()
{
  result = qword_10190C7F0;
  if (!qword_10190C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C7F0);
  }

  return result;
}

unint64_t sub_100144B20()
{
  result = qword_10190C7F8;
  if (!qword_10190C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C7F8);
  }

  return result;
}

unint64_t sub_100144BC4()
{
  result = qword_10190C800;
  if (!qword_10190C800)
  {
    sub_1000D6664(&qword_10190C808, &qword_1011E9198);
    sub_100144ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C800);
  }

  return result;
}

uint64_t sub_100144C48()
{
  swift_getKeyPath();
  sub_100146D04(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel, &unk_1011E9258);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_100144CF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100146D04(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel, &unk_1011E9258);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_100144DA4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 16) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100146D04(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel, &unk_1011E9258);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_100144F14()
{
  swift_getKeyPath();
  sub_100146D04(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel, &unk_1011E9258);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100144FB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100146D04(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel, &unk_1011E9258);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
}

uint64_t sub_100145064@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100146D04(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel, &unk_1011E9258);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100146A60(v1 + 40, a1);
}

uint64_t sub_100145124@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100146D04(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel, &unk_1011E9258);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100146A60(v3 + 40, a2);
}

uint64_t sub_1001451E4(uint64_t a1, uint64_t *a2)
{
  sub_100146A60(a1, v3);
  swift_getKeyPath();
  sub_100146D04(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel, &unk_1011E9258);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100146AEC(v3);
}

uint64_t sub_1001452C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_100146B54(a2, a1 + 40);
  return swift_endAccess();
}

uint64_t sub_100145328()
{
  swift_getKeyPath();
  sub_100146D04(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel, &unk_1011E9258);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1001453CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100146D04(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel, &unk_1011E9258);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 80);
}

uint64_t sub_100145478(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_100146D04(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel, &unk_1011E9258);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100145534(char a1)
{
  v2 = a1 & 1;
  v3 = type metadata accessor for TrailingAccessoryViewModel.TrailingAccessoryType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v11 = v1;
  sub_100146D04(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel, &unk_1011E9258);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 104) != v2)
  {
    sub_1000CE6B8(&unk_10190D580, &unk_1011E9400);
    type metadata accessor for TrailingAccessoryViewModel();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1011E1D30;
    swift_getKeyPath();
    v11 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *v6 = *(v1 + 104);
    (*(v4 + 104))(v6, enum case for TrailingAccessoryViewModel.TrailingAccessoryType.select(_:), v3);
    TrailingAccessoryViewModel.init(type:)();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v10 - 2) = v1;
    *(&v10 - 1) = v8;
    v11 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1001457F0()
{
  swift_getKeyPath();
  sub_100146D04(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel, &unk_1011E9258);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 104);
}

uint64_t sub_100145890(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 104);
  if (v3 == v2)
  {
    *(v1 + 104) = v2;

    return sub_100145534(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100146D04(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel, &unk_1011E9258);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001459C4(void *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TrailingAccessoryViewModel.TrailingAccessoryType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = _swiftEmptyArrayStorage;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0;
  *(v4 + 80) = _swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  v12 = objc_allocWithZone(type metadata accessor for UserGuide(0));
  v13 = a1;
  *(v4 + 88) = sub_100393FB8(v13);
  *(v4 + 96) = a2;
  *(v4 + 104) = a3;
  sub_1000CE6B8(&unk_10190D580, &unk_1011E9400);
  type metadata accessor for TrailingAccessoryViewModel();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1011E1D30;
  *v11 = a3;
  (*(v9 + 104))(v11, enum case for TrailingAccessoryViewModel.TrailingAccessoryType.select(_:), v8);
  v15 = a2;
  TrailingAccessoryViewModel.init(type:)();
  swift_getKeyPath();
  v18 = v4;
  v19 = v14;
  v20 = v4;
  sub_100146D04(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel, &unk_1011E9258);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100145CC8();
  swift_allocObject();
  swift_weakInit();
  withObservationTracking<A>(_:onChange:)();

  return v4;
}

uint64_t sub_100145CC8()
{
  v1 = v0;
  v2 = type metadata accessor for RichTextType();
  v19 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 88);
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC4Maps9UserGuide___observationRegistrar;
  v27[0] = v6;
  sub_100146D04(&qword_10190C910, type metadata accessor for UserGuide, &unk_1011FF7CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + OBJC_IVAR____TtC4Maps9UserGuide__title);
  v8 = *(v6 + OBJC_IVAR____TtC4Maps9UserGuide__title + 8);

  sub_100144DA4(v7, v8);
  sub_1000CE6B8(&unk_1019157F0, qword_1011E4FB0);
  v9 = swift_allocObject();
  v18 = xmmword_1011E1D30;
  *(v9 + 16) = xmmword_1011E1D30;
  sub_1000CE6B8(&qword_10190A070, &unk_1011E78E0);
  type metadata accessor for RichTextViewModel();
  v10 = swift_allocObject();
  *(v10 + 16) = v18;
  (*(v3 + 104))(v5, enum case for RichTextType.line(_:), v2);
  swift_getKeyPath();
  v27[0] = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  (*(v3 + 8))(v5, v19);
  *(v9 + 32) = v10;
  swift_getKeyPath();
  v23 = v1;
  v24 = v9;
  v27[0] = v1;
  sub_100146D04(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel, &unk_1011E9258);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v11 = *(v6 + OBJC_IVAR____TtC4Maps9UserGuide_collectionHandler);
  v12 = type metadata accessor for UserGuideCoverPhotoImageProvider(0);
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider__image] = 0;
  v14 = v11;
  ObservationRegistrar.init()();
  *&v13[OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider_collectionHandler] = v14;
  v26.receiver = v13;
  v26.super_class = v12;
  v15 = v14;
  v16 = objc_msgSendSuper2(&v26, "init");
  [v15 addObserver:v16];

  v27[3] = v12;
  v27[4] = sub_100146D04(&qword_10191F510, type metadata accessor for UserGuideCoverPhotoImageProvider, &unk_10120F134);
  v27[0] = v16;
  swift_getKeyPath();
  v21 = v1;
  v22 = v27;
  v25 = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100146AEC(v27);
}

uint64_t sub_100146194(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100145CC8();
  }

  return result;
}

uint64_t sub_1001461EC(uint64_t a1)
{
  v1 = sub_1000CE6B8(&unk_10190BA50, &unk_1011E4800);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;

  sub_10020AAE4(0, 0, v3, &unk_1011E9418, v7);
}

uint64_t sub_100146340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001463D8, v6, v5);
}

uint64_t sub_1001463D8()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_allocObject();
    swift_weakInit();
    withObservationTracking<A>(_:onChange:)();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001464D0()
{

  sub_100146AEC(v0 + 40);

  v1 = OBJC_IVAR____TtC4Maps23GuidePickerRowViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GuidePickerRowViewModel(uint64_t a1)
{
  result = qword_10190C840;
  if (!qword_10190C840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001465F0(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1001466C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_100146D04(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel, &unk_1011E9258);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100146A60(v3 + 40, a1);
}

uint64_t sub_100146788()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100146D04(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel, &unk_1011E9258);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_100146838()
{
  swift_getKeyPath();
  sub_100146D04(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel, &unk_1011E9258);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1001468E0()
{
  swift_getKeyPath();
  sub_100146D04(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel, &unk_1011E9258);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100146984@<X0>(void *a1@<X8>)
{
  v2 = (*(*v1 + 88) + OBJC_IVAR____TtC4Maps9UserGuide_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t sub_100146A20()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_100146A60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101921E90, &unk_1011EA9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100146AEC(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101921E90, &unk_1011EA9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100146B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101921E90, &unk_1011EA9D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100146C14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_100146340(a1, v4, v5, v6);
}

uint64_t sub_100146CC8()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_100146D04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100146D4C()
{
  *(*(v0 + 16) + 80) = *(v0 + 24);
}

uint64_t sub_100146D88()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 104);
  *(v1 + 104) = *(v0 + 24);
  return sub_100145534(v2);
}

uint64_t sub_100146E14@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_1000CE6B8(&qword_10190C918, &qword_1011E9548);
  v3 = *(v2 - 8);
  v22 = v2;
  v23 = v3;
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = sub_1000CE6B8(&qword_10190C920, &qword_1011E9550);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = sub_1000CE6B8(&qword_10190C928, &qword_1011E9558);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v24 = sub_1000CE6B8(&qword_10190C930, &qword_1011E9560);
  __chkstk_darwin(v24);
  v14 = &v22 - v13;
  v15 = *v1;
  v30 = *(v1 + 2);
  v28 = *(v1 + 40);
  v29 = v15;
  v16 = swift_allocObject();
  v17 = v1[1];
  *(v16 + 16) = *v1;
  *(v16 + 32) = v17;
  *(v16 + 48) = v1[2];
  *(v16 + 64) = *(v1 + 6);
  v26 = v1;
  sub_10014762C(&v29, v27);

  sub_100147688(&v28, v27);
  type metadata accessor for ProfileCell();
  sub_1001479EC(&qword_10190C938, &type metadata accessor for ProfileCell, &protocol conformance descriptor for ProfileCell);
  Button.init(action:label:)();
  static PrimitiveButtonStyle<>.navigationLink.getter();
  sub_1000414C8(&qword_10190C940, &qword_10190C920, &qword_1011E9550, &protocol conformance descriptor for Button<A>);
  sub_1000414C8(&qword_10190C948, &qword_10190C918, &qword_1011E9548, &protocol conformance descriptor for NavigationLinkButtonStyle<A>);
  v18 = v22;
  View.buttonStyle<A>(_:)();
  (*(v23 + 8))(v5, v18);
  (*(v7 + 8))(v9, v6);
  v19 = &v12[*(v10 + 36)];
  *v19 = 0;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0x4028000000000000;
  v19[32] = 0;
  *&v27[0] = 0xD00000000000001ELL;
  *(&v27[0] + 1) = 0x800000010121E6C0;
  v20._countAndFlagsBits = 1819043139;
  v20._object = 0xE400000000000000;
  String.append(_:)(v20);
  sub_1001476E4();
  View.accessibilityIdentifier(_:)();

  sub_100024F64(v12, &qword_10190C928, &qword_1011E9558);
  v27[0] = v28;
  sub_1000E5580();
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  return sub_100024F64(v14, &qword_10190C930, &qword_1011E9560);
}

uint64_t sub_10014727C(__int128 *a1)
{
  v7 = &type metadata for UserProfileRowViewModel;
  v2 = sub_10014786C();
  v5[1] = *a1;
  v3 = *(a1 + 2);
  v8 = v2;
  v6 = v3;
  v9 = *(a1 + 8);
  sub_1001478C0(&v9, v5);
  return ProfileCell.init(model:)();
}

uint64_t sub_100147330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{

  v29 = a1;
  sub_1003D6710(a1);
  v12 = 0;
  v31[0] = v13;
  v30 = a2;
  v31[1] = a2;
  v31[2] = a3;
  v14 = _swiftEmptyArrayStorage;
LABEL_2:
  v15 = &v31[2 * v12];
  while (++v12 != 3)
  {
    v16 = v15 + 2;
    v17 = *v15;
    v15 += 2;
    if (v17)
    {
      v28 = a3;
      v18 = a4;
      v19 = *(v16 - 3);

      v20 = a5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_100356258(0, *(v14 + 2) + 1, 1, v14);
      }

      v22 = *(v14 + 2);
      v21 = *(v14 + 3);
      if (v22 >= v21 >> 1)
      {
        v14 = sub_100356258((v21 > 1), v22 + 1, 1, v14);
      }

      *(v14 + 2) = v22 + 1;
      v23 = &v14[16 * v22];
      *(v23 + 4) = v19;
      *(v23 + 5) = v17;
      a5 = v20;
      a4 = v18;
      a3 = v28;
      goto LABEL_2;
    }
  }

  sub_1000CE6B8(&unk_10190D010, &unk_1011E94A0);
  swift_arrayDestroy();
  sub_1000CE6B8(&unk_101909C00, &unk_1011E4D40);
  sub_1000414C8(&qword_101918A70, &unk_101909C00, &unk_1011E4D40, &protocol conformance descriptor for [A]);
  v24 = BidirectionalCollection<>.joined(separator:)();
  v26 = v25;

  *a6 = v29;
  a6[1] = v30;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  a6[5] = v24;
  a6[6] = v26;
  return result;
}

__n128 sub_100147520(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10014753C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100147584(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001476E4()
{
  result = qword_10190C950;
  if (!qword_10190C950)
  {
    sub_1000D6664(&qword_10190C928, &qword_1011E9558);
    sub_1000D6664(&qword_10190C920, &qword_1011E9550);
    sub_1000D6664(&qword_10190C918, &qword_1011E9548);
    sub_1000414C8(&qword_10190C940, &qword_10190C920, &qword_1011E9550, &protocol conformance descriptor for Button<A>);
    sub_1000414C8(&qword_10190C948, &qword_10190C918, &qword_1011E9548, &protocol conformance descriptor for NavigationLinkButtonStyle<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190B010, &qword_10191DC10, &unk_1011E65D0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C950);
  }

  return result;
}

unint64_t sub_10014786C()
{
  result = qword_10190C958;
  if (!qword_10190C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C958);
  }

  return result;
}

uint64_t sub_1001478C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_10190D010, &unk_1011E94A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100147930()
{
  result = qword_10190C960;
  if (!qword_10190C960)
  {
    sub_1000D6664(&qword_10190C930, &qword_1011E9560);
    sub_1001476E4();
    sub_1001479EC(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190C960);
  }

  return result;
}

uint64_t sub_1001479EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100147A34()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_10190C970 = v1 == 0;
}

void sub_100147A98(uint64_t a1, __int16 a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  __chkstk_darwin(v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v47 - v19;
  v21 = *&v2[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_stateIndex];
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = *&v2[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_allStates];
  if (v21 >= *(v22 + 16))
  {
LABEL_15:
    __break(1u);
    return;
  }

  v23 = v22 + 16 * v21;
  if (*(v23 + 40))
  {
    if ((a2 & 0x100) != 0)
    {
      return;
    }

    v51 = v17;
    v52 = v9;
    v24 = v16;
    [*&v2[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_timer] invalidate];
    if (a2)
    {
      [*&v2[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_videoView] reset];
      sub_100014C84(0, &qword_10190B4F0, OS_dispatch_queue_ptr);
      v50 = v5;
      v48 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v51 = *(v51 + 8);
      (v51)(v14, v24);
      v25 = swift_allocObject();
      *(v25 + 16) = v2;
      v57 = sub_10014A9DC;
      v58 = v25;
      aBlock = _NSConcreteStackBlock;
      v54 = 1107296256;
      v55 = sub_100039C64;
      v56 = &unk_101606030;
      v26 = _Block_copy(&aBlock);
      v27 = v2;

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_1000DB364();
      sub_1000CE6B8(&unk_10190B500, &unk_1011E4610);
      sub_1000DB3BC();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v28 = v48;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v26);

      (*(v50 + 8))(v7, v4);
      (*(v52 + 8))(v11, v8);
      (v51)(v20, v24);
      return;
    }

    v38 = objc_opt_self();
    v39 = *&v2[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_imageView];
    v40 = *&v2[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_videoView];
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v57 = sub_10014AAEC;
    v58 = v41;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_1002ABAC8;
    v56 = &unk_1016060A8;
    v42 = _Block_copy(&aBlock);

    [v38 transitionFromView:v39 toView:v40 duration:5243136 options:v42 completion:1.0];
  }

  else
  {
    if ((a2 & 0x100) != 0)
    {
      return;
    }

    v52 = v9;
    v29 = *(v23 + 32);
    if (a2)
    {
      v49 = v16;
      v50 = v5;
      v30 = *&v2[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_imageView];
      v31 = v16;
      v51 = v17;
      v32 = sub_10014A9F8(v29);
      [v30 setImage:v32];

      sub_100014C84(0, &qword_10190B4F0, OS_dispatch_queue_ptr);
      v48 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v33 = *(v51 + 8);
      v33(v14, v31);
      v34 = swift_allocObject();
      *(v34 + 16) = v2;
      v57 = sub_10014AAE4;
      v58 = v34;
      aBlock = _NSConcreteStackBlock;
      v54 = 1107296256;
      v55 = sub_100039C64;
      v56 = &unk_101606080;
      v35 = _Block_copy(&aBlock);
      v36 = v2;

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_1000DB364();
      sub_1000CE6B8(&unk_10190B500, &unk_1011E4610);
      sub_1000DB3BC();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v37 = v48;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v35);

      (*(v50 + 8))(v7, v4);
      (*(v52 + 8))(v11, v8);
      v33(v20, v49);
      return;
    }

    v43 = objc_opt_self();
    v44 = *&v2[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_imageView];
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    *(v46 + 24) = v29;
    v57 = sub_10014AAF4;
    v58 = v46;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_100039C64;
    v56 = &unk_1016060F8;
    v42 = _Block_copy(&aBlock);

    [v43 transitionWithView:v44 duration:5242880 options:v42 animations:0 completion:1.0];
  }

  _Block_release(v42);
}

void sub_100148330()
{
  v114.receiver = v0;
  v114.super_class = type metadata accessor for HikingWelcomeViewController();
  objc_msgSendSuper2(&v114, "viewDidLoad");
  v5 = [v0 presentationController];
  if (v5)
  {
    v6 = v5;
    [v5 setDelegate:v0];
  }

  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v8 = v7;
  v9 = [objc_opt_self() systemBackgroundColor];
  [v8 setBackgroundColor:v9];

  v10 = *&v0[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_imageView];
  [v10 setClipsToBounds:1];
  [v10 setContentMode:2];
  v11 = *&v0[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_stateIndex];
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  v12 = *&v0[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_allStates];
  if (v11 >= *(v12 + 16))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_11;
  }

  v113 = v10;
  v13 = v12 + 16 * v11;
  if ((*(v13 + 40) & 1) == 0)
  {
    v14 = sub_10014A9F8(*(v13 + 32));
    [v10 setImage:v14];
  }

  v1 = *&v0[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_titleText];
  [v1 setNumberOfLines:0];
  [v1 setTextAlignment:1];
  v15 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleLargeTitle];
  v16 = [v15 fontDescriptorWithSymbolicTraits:2];

  if (v16)
  {
    v17 = [objc_opt_self() fontWithDescriptor:v16 size:0.0];
    [v1 setFont:v17];
  }

  sub_10014AF90();
  v18 = String._bridgeToObjectiveC()();

  [v1 setText:v18];

  v4 = &selRef_setCameraFrame_;
  LODWORD(v19) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v19];
  v2 = *&v0[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_bodyText];
  [v2 setTextAlignment:1];
  [v2 setNumberOfLines:0];
  v20 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v2 setFont:v20];

  sub_10014B108();
  v21 = String._bridgeToObjectiveC()();

  [v2 setText:v21];

  LODWORD(v22) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v22];
  v9 = [objc_opt_self() boldButton];
  [v9 addTarget:v0 action:"continueTapped" forControlEvents:64];
  v10 = "v16@?0@NSTimer8";
  v3 = 0x800000010121E900;
  if (qword_101906768 != -1)
  {
    goto LABEL_36;
  }

LABEL_11:
  v115._object = v3;
  v23._countAndFlagsBits = 0x65756E69746E6F43;
  v24._object = (v10 | 0x8000000000000000);
  v115._countAndFlagsBits = 0xD000000000000038;
  v24._countAndFlagsBits = 0xD000000000000017;
  v23._object = 0xE800000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, qword_1019600D8, v23, v115);
  v25 = String._bridgeToObjectiveC()();

  [v9 setTitle:v25 forState:0];

  v26 = v9;
  LODWORD(v27) = 1148846080;
  [v26 v4[309]];
  if (qword_101906580 != -1)
  {
    swift_once();
  }

  v111 = byte_10190C970;
  if ((byte_10190C970 & 1) == 0)
  {
    v28 = [v26 widthAnchor];
    v29 = [v28 constraintEqualToConstant:320.0];

    [v29 setActive:1];
  }

  sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1011E47C0;
  *(v30 + 32) = v1;
  *(v30 + 40) = v2;
  *(v30 + 48) = v26;
  v31 = objc_allocWithZone(UIStackView);
  sub_100014C84(0, &qword_10190CA10, UIView_ptr);
  v32 = v1;
  v33 = v2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v35 = [v31 initWithArrangedSubviews:isa];

  [v35 setAxis:1];
  [v35 setSpacing:14.0];
  v112 = v33;
  [v35 setCustomSpacing:v33 afterView:24.0];
  v36 = *&v0[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_bottomStackView];
  *&v0[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_bottomStackView] = v35;
  v37 = v35;

  [v113 setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = [v0 view];
  if (!v38)
  {
    goto LABEL_38;
  }

  v39 = v38;
  [v38 addSubview:v113];

  v40 = *&v0[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_videoView];
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = [v0 view];
  if (!v41)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v42 = v41;
  [v41 addSubview:v40];

  v43 = [v0 view];
  if (!v43)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v44 = v43;
  [v43 addSubview:*&v0[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_topContentGradientView]];

  v45 = [v0 view];
  if (!v45)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v46 = v45;
  [v45 addSubview:*&v0[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_titleToBodyGradientView]];

  v47 = v37;
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
  v48 = [v0 view];
  if (!v48)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v49 = v48;
  v110 = v26;
  [v48 addSubview:v47];

  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1011E9570;
  v51 = [v47 bottomAnchor];
  v52 = [v0 view];
  if (!v52)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v53 = v52;
  v54 = [v52 safeAreaLayoutGuide];

  v55 = [v54 bottomAnchor];
  v56 = [v51 constraintEqualToAnchor:v55 constant:-58.0];

  *(v50 + 32) = v56;
  v57 = [v47 leadingAnchor];
  v58 = [v0 view];
  if (!v58)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v59 = v58;
  v60 = [v58 layoutMarginsGuide];

  v61 = [v60 leadingAnchor];
  v62 = 44.0;
  if (v111)
  {
    v62 = 0.0;
  }

  v63 = [v57 constraintEqualToAnchor:v61 constant:v62];

  *(v50 + 40) = v63;
  v64 = [v47 trailingAnchor];

  v65 = [v0 view];
  if (!v65)
  {
    goto LABEL_45;
  }

  v66 = v65;
  v67 = [v65 layoutMarginsGuide];

  v68 = [v67 trailingAnchor];
  v69 = -44.0;
  if (v111)
  {
    v69 = 0.0;
  }

  v70 = [v64 constraintEqualToAnchor:v68 constant:v69];

  *(v50 + 48) = v70;
  v71 = [v113 topAnchor];
  v72 = [v0 view];
  if (!v72)
  {
    goto LABEL_46;
  }

  v73 = v72;
  v74 = [v72 topAnchor];

  v75 = [v71 constraintEqualToAnchor:v74];
  *(v50 + 56) = v75;
  v76 = [v113 leadingAnchor];
  v77 = [v0 view];
  if (!v77)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v78 = v77;
  v79 = [v77 leadingAnchor];

  v80 = [v76 constraintEqualToAnchor:v79];
  *(v50 + 64) = v80;
  v81 = [v113 trailingAnchor];
  v82 = [v0 view];
  if (!v82)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v83 = v82;
  v84 = [v82 trailingAnchor];

  v85 = [v81 constraintEqualToAnchor:v84];
  *(v50 + 72) = v85;
  v86 = [v113 bottomAnchor];
  v87 = [v112 topAnchor];
  v88 = [v86 constraintEqualToAnchor:v87];

  *(v50 + 80) = v88;
  v89 = [v40 topAnchor];
  v90 = [v0 view];
  if (!v90)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v91 = v90;
  v92 = [v90 topAnchor];

  v93 = [v89 constraintEqualToAnchor:v92];
  *(v50 + 88) = v93;
  v94 = [v40 leadingAnchor];
  v95 = [v0 view];
  if (!v95)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v96 = v95;
  v97 = [v95 leadingAnchor];

  v98 = [v94 constraintEqualToAnchor:v97];
  *(v50 + 96) = v98;
  v99 = [v40 trailingAnchor];
  v100 = [v0 view];
  if (v100)
  {
    v101 = v100;
    v102 = objc_opt_self();
    v103 = [v101 trailingAnchor];

    v104 = [v99 constraintEqualToAnchor:v103];
    *(v50 + 104) = v104;
    v105 = [v40 bottomAnchor];
    v106 = [v112 topAnchor];
    v107 = [v105 constraintEqualToAnchor:v106];

    *(v50 + 112) = v107;
    sub_100014C84(0, &qword_10190B720, NSLayoutConstraint_ptr);
    v108 = Array._bridgeToObjectiveC()().super.isa;

    [v102 activateConstraints:v108];

    sub_100149160();
    sub_100149288();
    sub_1000CE6B8(&unk_10190CA20, "zN#");
    v109 = swift_allocObject();
    *(v109 + 16) = xmmword_1011E1D30;
    *(v109 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
    *(v109 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
    UIViewController.registerForTraitChanges(_:action:)();
    swift_unknownObjectRelease();

    sub_1001495C4();

    return;
  }

LABEL_51:
  __break(1u);
}

void sub_100149160()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_videoView);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_10014B280;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100039C64;
  v5[3] = &unk_101606170;
  v3 = _Block_copy(v5);

  [v1 setPlaybackDidEndBlock:v3];
  _Block_release(v3);
  [v1 setAspectFill:1];
  sub_10014A4FC();
  v4 = String._bridgeToObjectiveC()();

  [v1 loadAssetNamed:v4];
}

void sub_100149288()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_topContentGradientView);
  [v2 setDisableReduceTransparency:1];
  [v2 setColors:0];
  sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1011E47C0;
  v4 = objc_opt_self();
  v5 = [v4 systemBackgroundColor];
  v6 = [v5 colorWithAlphaComponent:0.0];

  *(v3 + 32) = v6;
  v7 = [v4 systemBackgroundColor];
  v8 = [v7 colorWithAlphaComponent:0.2];

  *(v3 + 40) = v8;
  v9 = [v4 systemBackgroundColor];
  v10 = [v9 colorWithAlphaComponent:0.6];

  *(v3 + 48) = v10;
  sub_100014C84(0, &qword_10190CA00, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setColors:isa];

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1011E47C0;
  sub_100014C84(0, &qword_101909920, NSNumber_ptr);
  *(v12 + 32) = NSNumber.init(integerLiteral:)(0);
  *(v12 + 40) = NSNumber.init(floatLiteral:)(0.6);
  *(v12 + 48) = NSNumber.init(integerLiteral:)(1);
  v13 = Array._bridgeToObjectiveC()().super.isa;

  [v2 setLocations:v13];

  v14 = *(v1 + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_titleToBodyGradientView);
  [v14 setDisableReduceTransparency:1];
  [v14 setColors:0];
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1011E4FD0;
  v16 = [v4 systemBackgroundColor];
  v17 = [v16 colorWithAlphaComponent:0.6];

  *(v15 + 32) = v17;
  *(v15 + 40) = [v4 systemBackgroundColor];
  v18.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setColors:v18.super.isa];
}

void sub_1001495C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_stateIndex);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(v0 + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_allStates);
  if (v1 >= *(v2 + 16))
  {
LABEL_10:
    __break(1u);
    return;
  }

  v3 = v2 + 16 * v1;
  v4 = *(v3 + 40);
  if (v4)
  {
    [*(v0 + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_imageView) setHidden:1];
  }

  else
  {
    v5 = *(v3 + 32);
    v6 = *(v0 + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_imageView);
    [v6 setHidden:0];
    v7 = sub_10014A9F8(v5);
    [v6 setImage:v7];
  }

  v8 = *(v0 + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_videoView);

  [v8 setHidden:v4 ^ 1u];
}

void sub_1001496FC()
{
  v1 = [objc_opt_self() sharedConfiguration];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 currentCountrySupportsCuratedRoutes];

    if (v3)
    {
      v4 = 2.0;
    }

    else
    {
      v4 = 0.0;
    }

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10[4] = sub_10014A9D4;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1001FDE68;
    v10[3] = &unk_101605FE0;
    v7 = _Block_copy(v10);

    v8 = [v5 scheduledTimerWithTimeInterval:1 repeats:v7 block:v4];
    _Block_release(v7);
    v9 = *(v0 + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_timer);
    *(v0 + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_timer) = v8;
  }

  else
  {
    __break(1u);
  }
}

void sub_10014992C(uint64_t a1, uint64_t a2)
{
  v47.receiver = v2;
  v47.super_class = type metadata accessor for HikingWelcomeViewController();
  objc_msgSendSuper2(&v47, "viewDidLayoutSubviews");
  v3 = *&v2[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_bottomStackView];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 view];
    if (v5)
    {
      v6 = v5;
      [*&v2[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_titleText] frame];
      [v6 convertRect:v4 fromCoordinateSpace:?];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = [v2 view];
      if (v15)
      {
        v16 = v15;
        [*&v2[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_bodyText] frame];
        [v16 convertRect:v4 fromCoordinateSpace:?];

        v17 = *&v2[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_titleToBodyGradientView];
        v18 = v8;
        v48.origin.x = v8;
        v19 = v10;
        v48.origin.y = v10;
        v20 = v12;
        v48.size.width = v12;
        v21 = v14;
        v48.size.height = v14;
        MinY = CGRectGetMinY(v48);
        v22 = [v2 view];
        if (v22)
        {
          v23 = v22;
          [v22 frame];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;

          v49.origin.x = v25;
          v49.origin.y = v27;
          v49.size.width = v29;
          v49.size.height = v31;
          Width = CGRectGetWidth(v49);
          v50.origin.x = v18;
          v50.origin.y = v19;
          v50.size.width = v20;
          v50.size.height = v21;
          [v17 setFrame:{0.0, MinY, Width, CGRectGetHeight(v50) + 14.0}];
          [*&v2[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_imageView] frame];
          Height = CGRectGetHeight(v51);
          v34 = *&v2[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_topContentGradientView];
          [v17 frame];
          v35 = CGRectGetMinY(v52);
          v36 = [v2 view];
          if (v36)
          {
            v37 = v36;
            [v36 frame];
            v39 = v38;
            v41 = v40;
            v43 = v42;
            v45 = v44;

            v53.origin.x = v39;
            v53.origin.y = v41;
            v53.size.width = v43;
            v53.size.height = v45;
            [v34 setFrame:{0.0, v35 - Height / 3.0, CGRectGetWidth(v53), Height / 3.0}];

            return;
          }

LABEL_11:
          __break(1u);
          return;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }
}

id sub_100149CE4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HikingWelcomeViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100149E14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_imageView);
    v6 = sub_10014A9F8(a2);
    [v5 setImage:v6];
  }
}

uint64_t sub_100149EAC(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v22 = *(v5 - 8);
  v23 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v20 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  sub_100014C84(0, &qword_10190B4F0, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v16 = *(v9 + 8);
  v16(v11, v8);
  aBlock[4] = sub_10014AAFC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_101606120;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000DB364();
  sub_1000CE6B8(&unk_10190B500, &unk_1011E4610);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v17);

  (*(v24 + 8))(v4, v2);
  (*(v22 + 8))(v7, v23);
  return (v16)(v14, v20);
}

void sub_10014A210(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_videoView);

    [v3 play];
  }
}

void sub_10014A288(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = *(a1 + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_videoView);
  v4 = *(a1 + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_imageView);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_10014AB04;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1002ABAC8;
  v7[3] = &unk_101606148;
  v6 = _Block_copy(v7);

  [v2 transitionFromView:v3 toView:v4 duration:5243136 options:v6 completion:1.0];
  _Block_release(v6);
}

void sub_10014A3A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_videoView);

    [v4 reset];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_1001496FC();
  }
}

void sub_10014A454(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_allStates);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = *(Strong + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_stateIndex);
      v7 = v5 != 1;
      v8 = __OFADD__(v6, v7);
      v9 = v6 + v7;
      if (!v8)
      {
        *(Strong + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_stateIndex) = v9;
        if (v6 < v5)
        {
          sub_100147A98(*(v4 + 16 * v6 + 32), *(v4 + 16 * v6 + 40));

          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

id sub_10014A4FC()
{
  result = [objc_opt_self() sharedConfiguration];
  if (result)
  {
    v2 = result;
    v3 = [result currentCountrySupportsTopographicMap];

    v4 = [v0 traitCollection];
    v5 = [v4 userInterfaceStyle];

    v6 = 0xD000000000000018;
    if (v5 != 2)
    {
      v6 = 0xD000000000000013;
    }

    v7 = 0xD000000000000026;
    if (v5 != 2)
    {
      v7 = 0xD000000000000021;
    }

    if (v3)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10014A5F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_stateIndex);
    *(Strong + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_stateIndex) = 0;
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *(Strong + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_allStates);
      if (v3 < *(v4 + 16))
      {
        sub_100147A98(*(v4 + 16 * v3 + 32), *(v4 + 16 * v3 + 40));

        return;
      }
    }

    __break(1u);
  }
}

void sub_10014A750()
{
  [objc_opt_self() captureUserAction:127 target:134 value:0];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[4] = sub_10014A9CC;
  v3[5] = v1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100039C64;
  v3[3] = &unk_101605FB8;
  v2 = _Block_copy(v3);

  [v0 dismissViewControllerAnimated:1 completion:v2];
  _Block_release(v2);
}

void sub_10014A848(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_completionHandler);
    if (v3)
    {
      v4 = *(Strong + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_completionHandler + 8);

      v3(v5);
      sub_1000D3B90(v3, v4);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for HikingWelcomeViewController.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HikingWelcomeViewController.State(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HikingWelcomeViewController.State(uint64_t result, int a2, int a3)
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

uint64_t sub_10014A980(uint64_t a1)
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

uint64_t sub_10014A99C(uint64_t result, int a2)
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

id sub_10014A9F8(uint64_t a1)
{
  _StringGuts.grow(_:)(16);

  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    v4 = String._bridgeToObjectiveC()();

    v5 = [objc_opt_self() imageNamed:v4];

    return v5;
  }

  return result;
}

char *sub_10014AB0C()
{
  result = [objc_opt_self() sharedConfiguration];
  if (result)
  {
    v1 = result;
    v2 = [result currentCountrySupportsCuratedRoutes];

    if (v2)
    {
      v3 = sub_100356364(0, 1, 1, _swiftEmptyArrayStorage);
      v5 = *(v3 + 2);
      v4 = *(v3 + 3);
      v6 = v4 >> 1;
      v7 = v5 + 1;
      if (v4 >> 1 <= v5)
      {
        v3 = sub_100356364((v4 > 1), v5 + 1, 1, v3);
        v4 = *(v3 + 3);
        v6 = v4 >> 1;
      }

      *(v3 + 2) = v7;
      v8 = &v3[16 * v5];
      *(v8 + 4) = 0;
      v8[40] = 0;
      v9 = v5 + 2;
      if (v6 < (v5 + 2))
      {
        v3 = sub_100356364((v4 > 1), v5 + 2, 1, v3);
        v4 = *(v3 + 3);
        v6 = v4 >> 1;
      }

      *(v3 + 2) = v9;
      v10 = &v3[16 * v7];
      *(v10 + 4) = 1;
      v10[40] = 0;
      if (v6 < (v5 + 3))
      {
        v3 = sub_100356364((v4 > 1), v5 + 3, 1, v3);
      }

      *(v3 + 2) = v5 + 3;
      v11 = &v3[16 * v9];
      *(v11 + 4) = 2;
      v11[40] = 0;
    }

    else
    {
      v3 = _swiftEmptyArrayStorage;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_100356364(0, *(v3 + 2) + 1, 1, v3);
    }

    v13 = *(v3 + 2);
    v12 = *(v3 + 3);
    if (v13 >= v12 >> 1)
    {
      v3 = sub_100356364((v12 > 1), v13 + 1, 1, v3);
    }

    *(v3 + 2) = v13 + 1;
    v14 = &v3[16 * v13];
    *(v14 + 4) = 0;
    v14[40] = 1;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10014ACE4(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_stateIndex] = 0;
  v5 = OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_imageView;
  *&v2[v5] = [objc_allocWithZone(UIImageView) init];
  v6 = OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_videoView;
  *&v2[v6] = [objc_allocWithZone(MapsVideoPlayerView) init];
  *&v2[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_timer] = 0;
  v7 = OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_titleText;
  *&v2[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_bodyText;
  *&v2[v8] = [objc_allocWithZone(UILabel) init];
  *&v2[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_bottomStackView] = 0;
  v9 = OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_topContentGradientView;
  *&v2[v9] = [objc_allocWithZone(MUGradientView) init];
  v10 = OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_titleToBodyGradientView;
  *&v2[v10] = [objc_allocWithZone(MUGradientView) init];
  v11 = &v2[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_completionHandler];
  *v11 = a1;
  *(v11 + 1) = a2;
  sub_1000CD9D4(a1, a2);
  *&v2[OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_allStates] = sub_10014AB0C();
  v13.receiver = v2;
  v13.super_class = type metadata accessor for HikingWelcomeViewController();
  return objc_msgSendSuper2(&v13, "initWithNibName:bundle:", 0, 0);
}

void sub_10014AE4C()
{
  *(v0 + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_stateIndex) = 0;
  v1 = OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_imageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_videoView;
  *(v0 + v2) = [objc_allocWithZone(MapsVideoPlayerView) init];
  *(v0 + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_timer) = 0;
  v3 = OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_titleText;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_bodyText;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_bottomStackView) = 0;
  v5 = OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_topContentGradientView;
  *(v0 + v5) = [objc_allocWithZone(MUGradientView) init];
  v6 = OBJC_IVAR____TtC4Maps27HikingWelcomeViewController_titleToBodyGradientView;
  *(v0 + v6) = [objc_allocWithZone(MUGradientView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10014AF90()
{
  result = [objc_opt_self() sharedConfiguration];
  if (result)
  {
    v1 = result;
    v2 = [result currentCountrySupportsCuratedRoutes];

    if (v2)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v3.super.isa = qword_1019600D8;
      v9 = 0x800000010121EC20;
      v4 = 0x800000010121EBD0;
      v5 = 0xD000000000000023;
      v6 = 0x800000010121EBF0;
      v7 = 0xD000000000000040;
      v8 = 0xD000000000000014;
    }

    else
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v3.super.isa = qword_1019600D8;
      v9 = 0x800000010121EB80;
      v8 = 0xD00000000000002ALL;
      v4 = 0x800000010121EB30;
      v5 = 0xD000000000000019;
      v6 = 0x800000010121EB60;
      v7 = 0xD000000000000043;
    }

    return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, 0, v3, *&v5, *&v7)._countAndFlagsBits;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10014B108()
{
  result = [objc_opt_self() sharedConfiguration];
  if (result)
  {
    v1 = result;
    v2 = [result currentCountrySupportsCuratedRoutes];

    if (v2)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v3.super.isa = qword_1019600D8;
      v9 = 0x800000010121EAE0;
      v4 = 0x800000010121EA40;
      v5 = 0xD000000000000073;
      v6 = 0x800000010121EA60;
      v7 = 0xD000000000000044;
      v8 = 0xD000000000000018;
    }

    else
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v3.super.isa = qword_1019600D8;
      v9 = 0x800000010121E9F0;
      v8 = 0xD00000000000002ELL;
      v4 = 0x800000010121E940;
      v5 = 0xD000000000000078;
      v6 = 0x800000010121E970;
      v7 = 0xD000000000000047;
    }

    return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, 0, v3, *&v5, *&v7)._countAndFlagsBits;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10014B2B8()
{
  result = _swiftEmptyArrayStorage;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_nearbyTransitViewController);
  if (v2)
  {
    v3 = v2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    result = _swiftEmptyArrayStorage;
  }

  v4 = *(v0 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_onboardingViewController);
  if (v4)
  {
    v5 = v4;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    result = _swiftEmptyArrayStorage;
  }

  v6 = *(v0 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_incidentsViewController);
  if (v6)
  {
    v7 = v6;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_10014B68C()
{
  v1 = [v0 iosBasedChromeViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 settingsController];
    if (v3)
    {
      v7 = v3;
      [v3 setMapViewMode:*&v0[OBJC_IVAR____TtC4Maps20NearbyTransitContext_initialViewMode] animated:1];
      v4 = *&v0[OBJC_IVAR____TtC4Maps20NearbyTransitContext_nearbyTransitViewController];
      if (v4)
      {
        v5 = v4;
        [v2 unregisterAdditionalMapViewDelegate:v5];
      }

      v6 = v7;
    }

    else
    {
      v6 = v2;
    }
  }
}

uint64_t type metadata accessor for PlaceItemsView(uint64_t a1)
{
  result = qword_10190CA98;
  if (!qword_10190CA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10014B7EC(uint64_t a1)
{
  sub_10014BAB0(319, &qword_10190CAA8, type metadata accessor for PlaceItemsViewModel, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_10014BAB0(319, &qword_10190CAB0, &type metadata accessor for EditMode, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_10014BA5C(319, &qword_10190CAB8, &qword_10190CAC0, &qword_1011E95D0);
      if (v3 <= 0x3F)
      {
        sub_10014BA10(319, &qword_10190CAC8, &type metadata for String);
        if (v4 <= 0x3F)
        {
          sub_10014BA10(319, &unk_10191DAC0, &type metadata for Bool);
          if (v5 <= 0x3F)
          {
            sub_10014BA5C(319, &qword_10190CAD0, &qword_10190CAD8, &qword_1011E95D8);
            if (v6 <= 0x3F)
            {
              sub_10014BAB0(319, &qword_10190CAE0, &type metadata accessor for ActionBarViewModel, &type metadata accessor for State);
              if (v7 <= 0x3F)
              {
                sub_10014BAB0(319, &unk_10190CAE8, &type metadata accessor for InterfaceIdiom, &type metadata accessor for Environment);
                if (v8 <= 0x3F)
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

void sub_10014BA10(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10014BA5C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000D6664(a3, a4);
    v5 = type metadata accessor for State();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10014BAB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10014BB14(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10014BB38(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10014BB8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10014BC14@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156A44(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel, &unk_1011E5DE8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  *a2 = v4;
  return sub_100100D84(v4);
}

uint64_t sub_10014BCC0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100156A44(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel, &unk_1011E5DE8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10014BD8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156A44(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel, &unk_1011E5DE8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_10014BE5C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156A44(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel, &unk_1011E5DE8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001574D8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4, v5);
}

uint64_t sub_10014BF48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1001574D4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v2, v3);
  sub_100156A44(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel, &unk_1011E5DE8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v5, v4);
}

uint64_t sub_10014C0A4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156A44(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel, &unk_1011E5DE8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000F1DB8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4, v5);
}

uint64_t sub_10014C190(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1000F1DB0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v2, v3);
  sub_100156A44(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel, &unk_1011E5DE8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v5, v4);
}

uint64_t sub_10014C2EC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156A44(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel, &unk_1011E5DE8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100060ED0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4, v5);
}

uint64_t sub_10014C3D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1001552C0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v2, v3);
  sub_100156A44(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel, &unk_1011E5DE8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v5, v4);
}

uint64_t sub_10014C534@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156A44(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel, &unk_1011E5DE8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 192);
  v5 = *(v3 + 200);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001574D8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4, v5);
}

uint64_t sub_10014C620(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1001574D4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v2, v3);
  sub_100156A44(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel, &unk_1011E5DE8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v5, v4);
}

uint64_t sub_10014C77C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a1;
  v76 = a2;
  v79 = type metadata accessor for PlaceItemsView(0);
  v77 = *(v79 - 8);
  v80 = *(v77 + 64);
  __chkstk_darwin(v79);
  v69 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MapsDesignAccessibilityString();
  v66 = *(v4 - 8);
  v67 = v4;
  __chkstk_darwin(v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for ContainerBackgroundPlacement();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1000CE6B8(&qword_10190CB98, &qword_1011E96B8);
  __chkstk_darwin(v60);
  v10 = &v58 - v9;
  v64 = sub_1000CE6B8(&qword_10190CB90, &qword_1011E96B0);
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v12 = &v58 - v11;
  v62 = sub_1000CE6B8(&qword_10190CB80, &qword_1011E96A8);
  __chkstk_darwin(v62);
  v59 = &v58 - v13;
  v68 = sub_1000CE6B8(&qword_10190CB78, &qword_1011E96A0) - 8;
  __chkstk_darwin(v68);
  v78 = &v58 - v14;
  v71 = sub_1000CE6B8(&qword_10190CB68, &qword_1011E9698);
  __chkstk_darwin(v71);
  v72 = &v58 - v15;
  v70 = sub_1000CE6B8(&qword_10190CB58, &qword_1011E9690);
  __chkstk_darwin(v70);
  v73 = &v58 - v16;
  v75 = sub_1000CE6B8(&qword_10190CB40, &qword_1011E9688);
  __chkstk_darwin(v75);
  v74 = &v58 - v17;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v18 = sub_1000CE6B8(&qword_10190CBC0, &qword_1011E96C8);
  sub_10014D2B8(a1, &v10[*(v18 + 44)]);
  v83 = static Color.clear.getter();
  static ContainerBackgroundPlacement.navigation.getter();
  v19 = sub_1000414C8(&qword_10190CBA0, &qword_10190CB98, &qword_1011E96B8, &protocol conformance descriptor for VStack<A>);
  v20 = v60;
  View.containerBackground<A>(_:for:)();
  (*(v61 + 8))(v8, v63);

  sub_100024F64(v10, &qword_10190CB98, &qword_1011E96B8);
  strcpy(v6, "LibraryPlaces");
  *(v6 + 7) = -4864;
  v22 = v66;
  v21 = v67;
  (*(v66 + 104))(v6, enum case for MapsDesignAccessibilityString.view(_:), v67);
  v83 = v20;
  v84 = &type metadata for Color;
  v85 = v19;
  v86 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v23 = v59;
  v24 = v64;
  View.mapsDesignAXContainer(withID:)();
  v25 = v6;
  v26 = v69;
  (*(v22 + 8))(v25, v21);
  (*(v65 + 8))(v12, v24);
  v27 = v23 + *(v62 + 36);
  v28 = v81;
  sub_1001520B8(v81, v27);
  *(v27 + *(sub_1000CE6B8(&qword_10190CBB0, &qword_1011E96C0) + 36)) = 1;
  v29 = (v28 + *(v79 + 44));
  v31 = *v29;
  v30 = v29[1];
  v83 = v31;
  v84 = v30;
  sub_1000CE6B8(&qword_10190A148, &qword_1011E5130);
  State.wrappedValue.getter();
  sub_100154D94(v28, v26);
  v32 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v77 = *(v77 + 80);
  v33 = swift_allocObject();
  sub_100154DF8(v26, v33 + v32);
  sub_100154C14();
  v34 = v78;
  View.actionBar(_:onSelect:)();

  sub_100024F64(v23, &qword_10190CB80, &qword_1011E96A8);
  KeyPath = swift_getKeyPath();
  v36 = (v34 + *(v68 + 44));
  v37 = *(sub_1000CE6B8(&qword_10190A120, &qword_101208EF0) + 28);
  sub_1000CE6B8(&qword_10190CA30, &unk_101208E00);
  State.projectedValue.getter();
  v38 = sub_1000CE6B8(&qword_10190A168, &qword_1011E51A0);
  (*(*(v38 - 8) + 56))(v36 + v37, 0, 1, v38);
  *v36 = KeyPath;
  v39 = swift_getKeyPath();
  v40 = v28[1];
  v83 = *v28;
  v84 = v40;
  sub_1000CE6B8(&qword_10190CBD0, &qword_1011E9730);
  State.wrappedValue.getter();
  v41 = v82;
  swift_getKeyPath();
  v83 = v41;
  sub_100156A44(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel, &unk_1011E5DE8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v42 = *(v41 + 16);
  sub_100100D84(v42);

  if (v42 >= 2)
  {
    sub_100100D94(v42);
  }

  v43 = v72;
  sub_1000F11C4(v78, v72, &qword_10190CB78, &qword_1011E96A0);
  v44 = v43 + *(v71 + 36);
  *v44 = v39;
  *(v44 + 8) = v42 > 1;
  v45 = static Animation.spring(response:dampingFraction:blendDuration:)();
  v46 = v73;
  v47 = &v73[*(v70 + 36)];
  sub_1000CE6B8(&qword_10190A110, &unk_1011E5110);
  v48 = v81;
  State.wrappedValue.getter();
  *v47 = v45;
  sub_1000F11C4(v43, v46, &qword_10190CB68, &qword_1011E9698);
  sub_100154D94(v48, v26);
  v49 = swift_allocObject();
  sub_100154DF8(v26, v49 + v32);
  v50 = v74;
  sub_1000D2DFC(v46, v74, &qword_10190CB58, &qword_1011E9690);
  v51 = (v50 + *(v75 + 36));
  *v51 = sub_100154EDC;
  v51[1] = v49;
  v51[2] = 0;
  v51[3] = 0;
  sub_100024F64(v46, &qword_10190CB58, &qword_1011E9690);
  v52 = (v48 + *(v79 + 24));
  v54 = *v52;
  v53 = v52[1];
  v83 = v54;
  v84 = v53;
  sub_1000CE6B8(&qword_10190CBD8, &qword_1011E9760);
  State.wrappedValue.getter();
  if ((v82 & 0xC000000000000001) != 0)
  {
    v55 = __CocoaSet.count.getter();
  }

  else
  {
    v55 = *(v82 + 16);
  }

  v83 = v55;
  sub_100154D94(v81, v26);
  v56 = swift_allocObject();
  sub_100154DF8(v26, v56 + v32);
  sub_100155F08(&qword_10190CB48, &qword_10190CB40, &qword_1011E9688, sub_1001549B0);
  View.onChange<A>(of:initial:_:)();

  return sub_100024F64(v50, &qword_10190CB40, &qword_1011E9688);
}

uint64_t sub_10014D2B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v225 = a2;
  v226 = sub_1000CE6B8(&qword_10190CC18, &qword_1011E9800);
  __chkstk_darwin(v226);
  v215 = &v177 - v3;
  v204 = type metadata accessor for MapsDesignAccessibilityString();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v202 = (&v177 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v198 = type metadata accessor for ListSectionSpacing();
  v197 = *(v198 - 8);
  __chkstk_darwin(v198);
  v196 = &v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_1000CE6B8(&qword_10190CC20, &qword_1011E9808);
  __chkstk_darwin(v199);
  v200 = &v177 - v6;
  v201 = sub_1000CE6B8(&qword_10190CC28, &qword_1011E9810);
  __chkstk_darwin(v201);
  v205 = &v177 - v7;
  v8 = sub_1000CE6B8(&qword_10190CC30, &qword_1011E9818);
  __chkstk_darwin(v8 - 8);
  v206 = &v177 - v9;
  v220 = sub_1000CE6B8(&qword_10190CC38, &qword_1011E9820);
  __chkstk_darwin(v220);
  v208 = &v177 - v10;
  v211 = sub_1000CE6B8(&qword_10190CC40, &qword_1011E9828);
  v210 = *(v211 - 8);
  __chkstk_darwin(v211);
  v209 = &v177 - v11;
  v214 = sub_1000CE6B8(&qword_10190CC48, &qword_1011E9830);
  v213 = *(v214 - 8);
  __chkstk_darwin(v214);
  v212 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v221 = &v177 - v14;
  v195 = sub_1000CE6B8(&qword_10190CC50, &qword_1011E9838);
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v181 = &v177 - v15;
  v178 = sub_1000CE6B8(&qword_10190CC58, &unk_1012035E0);
  __chkstk_darwin(v178);
  v180 = &v177 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v179 = &v177 - v18;
  v19 = type metadata accessor for InterfaceIdiom();
  v188 = *(v19 - 8);
  __chkstk_darwin(v19);
  v186 = &v177 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v185 = &v177 - v22;
  v23 = sub_1000CE6B8(&qword_10190CC60, &qword_1011E9840);
  __chkstk_darwin(v23 - 8);
  v207 = &v177 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  countAndFlagsBits = &v177 - v26;
  v27 = sub_1000CE6B8(&qword_10190CC68, &qword_1011EBA30);
  __chkstk_darwin(v27 - 8);
  v187 = &v177 - v28;
  v183 = type metadata accessor for EmptyStateViewModel.Icon();
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v30 = (&v177 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for EmptyStateViewModel();
  __chkstk_darwin(v31 - 8);
  v184 = &v177 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218._object = sub_1000CE6B8(&qword_10190CC70, &qword_1011E9848);
  __chkstk_darwin(v218._object);
  v189 = &v177 - v33;
  v222 = sub_1000CE6B8(&qword_10190CC78, &qword_1011E9850);
  __chkstk_darwin(v222);
  v224 = &v177 - v34;
  v216 = sub_1000CE6B8(&qword_10190CC80, &qword_1011E9858);
  __chkstk_darwin(v216);
  v218._countAndFlagsBits = &v177 - v35;
  v223 = sub_1000CE6B8(&qword_10190CC88, &qword_1011E9860);
  __chkstk_darwin(v223);
  v219 = &v177 - v36;
  *&v217 = sub_1000CE6B8(&qword_10190CC90, &qword_1011E9868);
  __chkstk_darwin(v217);
  v38 = &v177 - v37;
  v39 = type metadata accessor for PlaceItemsView(0);
  v40 = *(v39 - 8);
  object = v39;
  v228 = v40;
  __chkstk_darwin(v39);
  v231 = v41;
  v229 = &v177 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000CE6B8(&qword_10191D860, &qword_1011E5510);
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v45 = &v177 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v48 = &v177 - v47;
  v49 = *a1;
  v50 = a1[1];
  v232 = a1;
  *&v233 = v49;
  v193 = v49;
  v192 = v50;
  *(&v233 + 1) = v50;
  v191 = sub_1000CE6B8(&qword_10190CBD0, &qword_1011E9730);
  State.wrappedValue.getter();
  v51 = v236;
  swift_getKeyPath();
  *&v233 = v51;
  v190 = sub_100156A44(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel, &unk_1011E5DE8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = *(v51 + 16);
  sub_100100D84(v52);

  if (v52)
  {
    if (v52 == 1)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v53.super.isa = qword_1019600D8;
      v54._countAndFlagsBits = 0xD000000000000020;
      v241._object = 0x800000010121EEA0;
      v54._object = 0x800000010121EE70;
      v238._countAndFlagsBits = 0xD00000000000005DLL;
      v55._countAndFlagsBits = 0x6C50206120646441;
      v55._object = 0xEB00000000656361;
      v56 = NSLocalizedString(_:tableName:bundle:value:comment:)(v54, 0, qword_1019600D8, v55, v238);
      countAndFlagsBits = v56._countAndFlagsBits;
      object = v56._object;
      v57._countAndFlagsBits = 0xD000000000000022;
      v241._object = 0x800000010121EF60;
      v57._object = 0x800000010121EF00;
      v58._object = 0x800000010121EF30;
      v239._countAndFlagsBits = 0xD00000000000004FLL;
      v58._countAndFlagsBits = 0xD00000000000002CLL;
      v59 = NSLocalizedString(_:tableName:bundle:value:comment:)(v57, 0, v53, v58, v239);
      v220 = v59._object;
      v221 = v59._countAndFlagsBits;
      v241._object = 0x800000010121EFE0;
      v60._countAndFlagsBits = 0xD00000000000002DLL;
      v60._object = 0x800000010121EFB0;
      v240._countAndFlagsBits = 0xD00000000000004ELL;
      v61._countAndFlagsBits = 0x6C50206120646441;
      v61._object = 0xEB00000000656361;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v60, 0, v53, v61, v240);
      *v30 = 0xD00000000000001ALL;
      v30[1] = 0x800000010121F030;
      (*(v182 + 104))(v30, enum case for EmptyStateViewModel.Icon.privateSystemIcon(_:), v183);
      v62 = v232;
      v63 = v229;
      sub_100154D94(v232, v229);
      v64 = (*(v228 + 80) + 16) & ~*(v228 + 80);
      v65 = swift_allocObject();
      sub_100154DF8(v63, v65 + v64);
      v66 = v187;
      EmptyStateViewModel.ButtonConfig.init(systemImage:label:tapAction:)();
      v67 = type metadata accessor for EmptyStateViewModel.ButtonConfig();
      (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
      EmptyStateViewModel.init(icon:title:details:button:)();
      v68 = v189;
      EmptyStateView.init(model:)();
      sub_100154D94(v62, v63);
      v69 = swift_allocObject();
      sub_100154DF8(v63, v69 + v64);
      v70 = (v68 + *(v218._object + 9));
      *v70 = sub_1001565A4;
      v70[1] = v69;
      v70[2] = 0;
      v70[3] = 0;
      sub_1000D2DFC(v68, v218._countAndFlagsBits, &qword_10190CC70, &qword_1011E9848);
      swift_storeEnumTagMultiPayload();
      sub_1000414C8(&qword_10190CDB0, &qword_10190CC90, &qword_1011E9868, &protocol conformance descriptor for TupleView<A>);
      sub_1001564D0();
      v71 = v219;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v71, v224, &qword_10190CC88, &qword_1011E9860);
      swift_storeEnumTagMultiPayload();
      sub_100156418();
      sub_1000414C8(&qword_10190CDC8, &qword_10190CC18, &qword_1011E9800, &protocol conformance descriptor for TupleView<A>);
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v71, &qword_10190CC88, &qword_1011E9860);
      v72 = v68;
      v73 = &qword_10190CC70;
      v74 = &qword_1011E9848;
    }

    else
    {
      v219 = v52;
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v83._object = 0xED0000736563616CLL;
      v241._object = 0x800000010121EE20;
      v83._countAndFlagsBits = 0x5020686372616553;
      v84._object = 0x800000010121EDF0;
      v241._countAndFlagsBits = 0xD000000000000042;
      v84._countAndFlagsBits = 0xD00000000000002CLL;
      v218 = NSLocalizedString(_:tableName:bundle:value:comment:)(v84, 0, qword_1019600D8, v83, v241);
      v85 = object;
      v86 = v232;
      v87 = v185;
      sub_1001550A4(&qword_10190CBC8, &qword_1011EB460, &type metadata accessor for InterfaceIdiom, v185);
      v88 = v186;
      static InterfaceIdiom.phone.getter();
      sub_100156A44(&qword_10190CC98, &type metadata accessor for InterfaceIdiom, &protocol conformance descriptor for InterfaceIdiom);
      v89 = dispatch thunk of static Equatable.== infix(_:_:)();
      v90 = *(v188 + 8);
      v90(v88, v19);
      v90(v87, v19);
      v91 = 1;
      if ((v89 & 1) == 0)
      {
        v92 = v86 + v85[7];
        v93 = *v92;
        v94 = *(v92 + 2);
        v236 = v93;
        v237 = v94;
        sub_1000CE6B8(&qword_10190CCA0, &unk_1011FA7D0);
        State.projectedValue.getter();
        v217 = v233;
        v216 = v234;
        v189 = v235;
        v95 = v86 + v85[9];
        v96 = *v95;
        v97 = *(v95 + 1);
        LOBYTE(v236) = v96;
        *(&v236 + 1) = v97;
        sub_1000CE6B8(&qword_10190A140, &qword_1011FA3D0);
        State.projectedValue.getter();
        v98 = v233;
        v99 = v234;
        v100 = type metadata accessor for LibrarySearchBar(0);
        v101 = *(v100 + 28);
        v102 = v218._object;

        v103 = v179;
        sub_1001550A4(&qword_10190CBC8, &qword_1011EB460, &type metadata accessor for InterfaceIdiom, &v179[v101]);
        v104 = v229;
        sub_100154D94(v232, v229);
        v105 = (*(v228 + 80) + 16) & ~*(v228 + 80);
        v106 = swift_allocObject();
        sub_100154DF8(v104, v106 + v105);
        *v103 = v217;
        v107 = v189;
        *(v103 + 16) = v216;
        *(v103 + 24) = v107;
        *(v103 + 32) = v98;
        *(v103 + 48) = v99;
        *(v103 + 56) = v218._countAndFlagsBits;
        *(v103 + 64) = v102;
        v108 = (v103 + *(v100 + 32));
        *v108 = sub_10015543C;
        v108[1] = v106;
        LOBYTE(v106) = static Edge.Set.horizontal.getter();
        EdgeInsets.init(_all:)();
        v109 = v103 + *(v178 + 36);
        *v109 = v106;
        *(v109 + 8) = v110;
        *(v109 + 16) = v111;
        *(v109 + 24) = v112;
        *(v109 + 32) = v113;
        *(v109 + 40) = 0;
        v114 = v180;
        sub_1000D2DFC(v103, v180, &qword_10190CC58, &unk_1012035E0);
        v115 = v181;
        sub_1000D2DFC(v114, v181, &qword_10190CC58, &unk_1012035E0);
        v116 = v115 + *(sub_1000CE6B8(&qword_10190CCA8, &qword_1011E9870) + 48);
        *v116 = 0;
        *(v116 + 8) = 1;
        sub_100024F64(v103, &qword_10190CC58, &unk_1012035E0);
        v117 = v114;
        v85 = object;
        v86 = v232;
        sub_100024F64(v117, &qword_10190CC58, &unk_1012035E0);
        sub_1001554C8(v115, countAndFlagsBits);
        v91 = 0;
      }

      (*(v194 + 56))(countAndFlagsBits, v91, 1, v195);
      v118 = (v86 + v85[6]);
      v120 = *v118;
      v119 = v118[1];
      *&v236 = v120;
      *(&v236 + 1) = v119;
      sub_1000CE6B8(&qword_10190CBD8, &qword_1011E9760);
      v121 = State.projectedValue.getter();
      __chkstk_darwin(v121);
      v176 = v86;
      type metadata accessor for PlaceItemRowViewModel(0);
      sub_1000CE6B8(&qword_10190CCB0, &qword_1011E9878);
      sub_100156A44(&qword_10190CCB8, type metadata accessor for PlaceItemRowViewModel, &protocol conformance descriptor for NSObject);
      v241._object = sub_100155540();
      v122 = v200;
      List.init(selection:content:)();
      v123 = v196;
      static ListSectionSpacing.compact.getter();
      v124 = *(sub_1000CE6B8(&qword_10190CCF0, &qword_1011E9890) + 36);
      v125 = v197;
      v126 = v198;
      (*(v197 + 16))(v122 + v124, v123, v198);
      v127 = *(v125 + 56);
      v127(v122 + v124, 0, 1, v126);
      KeyPath = swift_getKeyPath();
      v129 = (v122 + *(sub_1000CE6B8(&qword_10190CCF8, &qword_1011E98C8) + 36));
      v130 = *(sub_1000CE6B8(&qword_10190CD00, &unk_1011EEE90) + 28);
      (*(v125 + 32))(v129 + v130, v123, v126);
      v127(v129 + v130, 0, 1, v126);
      *v129 = KeyPath;
      v131 = static Animation.default.getter();
      *&v233 = v193;
      *(&v233 + 1) = v192;
      State.wrappedValue.getter();
      v132 = v236;
      swift_getKeyPath();
      *&v233 = v132;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v133 = *(v132 + 32);

      v134 = (v122 + *(v199 + 36));
      *v134 = v131;
      v134[1] = v133;
      v135 = v202;
      *v202 = 0x507972617262694CLL;
      v135[1] = 0xED0000736563616CLL;
      v136 = v203;
      v137 = v204;
      (*(v203 + 104))(v135, enum case for MapsDesignAccessibilityString.list(_:), v204);
      sub_100155B60();
      v138 = v205;
      View.mapsDesignAXID(_:)();
      (*(v136 + 8))(v135, v137);
      sub_100024F64(v122, &qword_10190CC20, &qword_1011E9808);
      v139 = swift_getKeyPath();
      v140 = (v138 + *(v201 + 36));
      v141 = *(sub_1000CE6B8(&qword_10190A120, &qword_101208EF0) + 28);
      sub_1000CE6B8(&qword_10190CA30, &unk_101208E00);
      v142 = v232;
      State.projectedValue.getter();
      v143 = sub_1000CE6B8(&qword_10190A168, &qword_1011E51A0);
      v144 = (*(*(v143 - 8) + 56))(v140 + v141, 0, 1, v143);
      *v140 = v139;
      __chkstk_darwin(v144);
      v145 = v142;
      v146 = v218._countAndFlagsBits;
      *(&v177 - 4) = v142;
      *(&v177 - 3) = v146;
      v147 = v218._object;
      v148 = v206;
      sub_10014FD38(0, sub_100155E40, v206);
      v149 = sub_100024F64(v138, &qword_10190CC28, &qword_1011E9810);
      __chkstk_darwin(v149);
      *(&v177 - 4) = v145;
      *(&v177 - 3) = v146;
      v150 = v145;
      v241._object = v147;
      v151 = v208;
      sub_100150D74(0, sub_100155E4C, v208);

      sub_100024F64(v148, &qword_10190CC30, &qword_1011E9818);
      v152 = v145;
      v153 = v229;
      sub_100154D94(v152, v229);
      v154 = (*(v228 + 80) + 16) & ~*(v228 + 80);
      v155 = swift_allocObject();
      sub_100154DF8(v153, v155 + v154);
      v156 = (v151 + *(v220 + 36));
      *v156 = sub_1001574D0;
      v156[1] = v155;
      v156[2] = 0;
      v156[3] = 0;
      v157 = v150 + object[7];
      v158 = *v157;
      v159 = *(v157 + 16);
      v233 = v158;
      v234 = v159;
      sub_1000CE6B8(&qword_10190CCA0, &unk_1011FA7D0);
      State.wrappedValue.getter();
      v233 = v236;
      sub_100154D94(v150, v153);
      v160 = swift_allocObject();
      sub_100154DF8(v153, v160 + v154);
      v161 = sub_100155F08(&qword_10190CD50, &qword_10190CC38, &qword_1011E9820, sub_100155F8C);
      v162 = v209;
      v163 = v220;
      View.onChange<A>(of:initial:_:)();

      sub_100024F64(v151, &qword_10190CC38, &qword_1011E9820);
      v164 = v219;
      *&v236 = v219;
      sub_100154D94(v232, v153);
      v165 = swift_allocObject();
      sub_100154DF8(v153, v165 + v154);
      sub_1000CE6B8(&qword_10190CD88, &qword_1011E9918);
      *&v233 = v163;
      *(&v233 + 1) = &type metadata for String;
      v234 = v161;
      v235 = &protocol witness table for String;
      swift_getOpaqueTypeConformance2();
      sub_100156364();
      v166 = v221;
      v167 = v211;
      View.onChange<A>(of:initial:_:)();

      sub_100100D94(v164);
      (*(v210 + 8))(v162, v167);
      v168 = v207;
      sub_1000D2DFC(countAndFlagsBits, v207, &qword_10190CC60, &qword_1011E9840);
      v169 = v213;
      v170 = *(v213 + 16);
      v171 = v212;
      v172 = v214;
      v170(v212, v166, v214);
      v173 = v215;
      sub_1000D2DFC(v168, v215, &qword_10190CC60, &qword_1011E9840);
      v174 = sub_1000CE6B8(&qword_10190CDA0, &qword_1011E9920);
      v170((v173 + *(v174 + 48)), v171, v172);
      v175 = *(v169 + 8);
      v175(v171, v172);
      sub_100024F64(v168, &qword_10190CC60, &qword_1011E9840);
      sub_1000D2DFC(v173, v224, &qword_10190CC18, &qword_1011E9800);
      swift_storeEnumTagMultiPayload();
      sub_100156418();
      sub_1000414C8(&qword_10190CDC8, &qword_10190CC18, &qword_1011E9800, &protocol conformance descriptor for TupleView<A>);
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v173, &qword_10190CC18, &qword_1011E9800);
      v175(v221, v172);
      v72 = countAndFlagsBits;
      v73 = &qword_10190CC60;
      v74 = &qword_1011E9840;
    }

    return sub_100024F64(v72, v73, v74);
  }

  else
  {
    ProgressView<>.init<>()();
    v75 = v229;
    sub_100154D94(v232, v229);
    v76 = (*(v228 + 80) + 16) & ~*(v228 + 80);
    v77 = swift_allocObject();
    sub_100154DF8(v75, v77 + v76);
    v78 = *(v43 + 16);
    v78(v45, v48, v42);
    *v38 = 0;
    v38[8] = 1;
    v79 = sub_1000CE6B8(&qword_10190CDD0, &qword_1011E9928);
    v78(&v38[*(v79 + 48)], v45, v42);
    v80 = &v38[*(v79 + 64)];
    *v80 = 0;
    v80[8] = 1;
    *(v80 + 2) = sub_1001574D0;
    *(v80 + 3) = v77;
    *(v80 + 4) = 0;
    *(v80 + 5) = 0;

    sub_1000CD9D4(sub_1001574D0, v77);
    sub_1000CD9D4(0, 0);
    sub_1000588AC(sub_1001574D0, v77);
    sub_1000588AC(0, 0);
    v232 = *(v43 + 8);
    (v232)(v45, v42);
    sub_1000D2DFC(v38, v218._countAndFlagsBits, &qword_10190CC90, &qword_1011E9868);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10190CDB0, &qword_10190CC90, &qword_1011E9868, &protocol conformance descriptor for TupleView<A>);
    sub_1001564D0();
    v81 = v219;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v81, v224, &qword_10190CC88, &qword_1011E9860);
    swift_storeEnumTagMultiPayload();
    sub_100156418();
    sub_1000414C8(&qword_10190CDC8, &qword_10190CC18, &qword_1011E9800, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();

    sub_100024F64(v81, &qword_10190CC88, &qword_1011E9860);
    sub_100024F64(v38, &qword_10190CC90, &qword_1011E9868);
    return (v232)(v48, v42);
  }
}

uint64_t sub_10014F26C(void *a1)
{
  sub_1000CE6B8(&qword_10190CBD0, &qword_1011E9730);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_100156A44(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel, &unk_1011E5DE8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v5 + 80);
  if (!v1)
  {
  }

  v2 = *(v5 + 88);

  v1(v3);

  return sub_1000588AC(v1, v2);
}

uint64_t sub_10014F36C(uint64_t a1)
{
  type metadata accessor for PlaceItemsView(0);
  sub_1000CE6B8(&qword_10190CCA0, &unk_1011FA7D0);
  State.wrappedValue.setter();
  sub_1000CE6B8(&qword_10190A140, &qword_1011FA3D0);
  return State.wrappedValue.setter();
}

uint64_t sub_10014F42C(uint64_t a1, uint64_t a2)
{
  sub_1000CE6B8(&qword_10190CCD0, &qword_1011E9880);
  sub_1001555D0();
  return Section<>.init(content:)();
}

uint64_t sub_10014F49C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceItemsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v10[1] = a1;
  swift_getKeyPath();
  sub_100154D94(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_100154DF8(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  sub_1000CE6B8(&qword_10190CD88, &qword_1011E9918);
  sub_1000CE6B8(&qword_10190CCE0, &qword_1011E9888);
  sub_1000414C8(&qword_10190CE08, &qword_10190CD88, &qword_1011E9918, &protocol conformance descriptor for [A]);
  sub_100156A44(&qword_10190CCB8, type metadata accessor for PlaceItemRowViewModel, &protocol conformance descriptor for NSObject);
  sub_100155654();
  return ForEach<>.init(_:id:content:)();
}

id sub_10014F68C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for PlaceItemsView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_100154D94(a2, v9);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  sub_100154DF8(v9, v13 + v11);
  *(v13 + v12) = v10;
  KeyPath = swift_getKeyPath();
  sub_100154D94(a2, v9);
  v15 = swift_allocObject();
  sub_100154DF8(v9, v15 + v11);
  *(v15 + v12) = v10;
  *a3 = v10;
  a3[1] = sub_100156B14;
  a3[2] = v13;
  a3[3] = KeyPath;
  a3[4] = sub_100156DC0;
  a3[5] = v15;
  v16 = v10;

  return v16;
}

uint64_t sub_10014F820(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for EditMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  type metadata accessor for PlaceItemsView(0);
  sub_1000CE6B8(&qword_10190CA30, &unk_101208E00);
  State.wrappedValue.getter();
  (*(v5 + 104))(v7, enum case for EditMode.inactive(_:), v4);
  v11 = static EditMode.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v7, v4);
  result = (v12)(v10, v4);
  if (v11)
  {
    v14 = a1[1];
    v23 = *a1;
    v24 = v14;
    sub_1000CE6B8(&qword_10190CBD0, &qword_1011E9730);
    State.wrappedValue.getter();
    v15 = v22[1];
    v16 = *(a2 + OBJC_IVAR____TtC4Maps21PlaceItemRowViewModel_placeItem);
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);

    v19 = sub_100124F70(v17, v18);

    if (v19)
    {
      swift_getKeyPath();
      v23 = v15;
      sub_100156A44(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel, &unk_1011E5DE8);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v20 = *(v15 + 64);
      if (v20)
      {
        v21 = *(v15 + 72);

        v20(v19);

        sub_1000588AC(v20, v21);
        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10014FAB4(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000CE6B8(&qword_10190CBD0, &qword_1011E9730);
  State.wrappedValue.getter();
  sub_1000FF4C4(a1, a3);
}

uint64_t sub_10014FB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19[2] = a5;
  v19[3] = a1;
  v20 = type metadata accessor for SearchFieldPlacement();
  v8 = *(v20 - 8);
  __chkstk_darwin(v20);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PlaceItemsView(0);
  v12 = (a2 + *(v11 + 28));
  v13 = *v12;
  v14 = *(v12 + 2);
  v24 = v13;
  v25 = v14;
  sub_1000CE6B8(&qword_10190CCA0, &unk_1011FA7D0);
  State.projectedValue.getter();
  v19[1] = v23;
  v15 = (a2 + *(v11 + 32));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v24) = v16;
  *(&v24 + 1) = v17;
  sub_1000CE6B8(&qword_10190A140, &qword_1011FA3D0);
  State.projectedValue.getter();
  v21 = a3;
  v22 = a4;
  static SearchFieldPlacement.automatic.getter();
  sub_1000CE6B8(&qword_10190CC28, &qword_1011E9810);
  sub_100156144();
  sub_1000E5580();
  View.searchable<A>(text:isPresented:placement:prompt:)();

  return (*(v8 + 8))(v10, v20);
}

uint64_t sub_10014FD38@<X0>(id a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v22 = a3;
  v5 = sub_1000CE6B8(&qword_10190CDF8, &qword_1011E9950);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_1000CE6B8(&qword_10190CE00, &unk_1011E9958);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == a1)
  {
    v21(v3);
    (*(v9 + 16))(v7, v11, v8);
    swift_storeEnumTagMultiPayload();
    v14 = sub_1000CE6B8(&qword_10190CC28, &qword_1011E9810);
    v15 = sub_100156144();
    v16 = sub_1000E5580();
    v23 = v14;
    v24 = &type metadata for String;
    v25 = v15;
    v26 = v16;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    sub_1000D2DFC(v3, v7, &qword_10190CC28, &qword_1011E9810);
    swift_storeEnumTagMultiPayload();
    v18 = sub_1000CE6B8(&qword_10190CC28, &qword_1011E9810);
    v19 = sub_100156144();
    v20 = sub_1000E5580();
    v23 = v18;
    v24 = &type metadata for String;
    v25 = v19;
    v26 = v20;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10015000C@<X0>(id a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v30[1] = a3;
  v6 = sub_1000CE6B8(&qword_10190CEE8, &qword_1011E9AA8);
  __chkstk_darwin(v6);
  v8 = v30 - v7;
  v30[0] = sub_1000CE6B8(&qword_10190CEF0, &qword_1011E9AB0);
  v9 = *(v30[0] - 8);
  __chkstk_darwin(v30[0]);
  v11 = v30 - v10;
  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == a1)
  {
    a2(v3);
    v14 = v30[0];
    (*(v9 + 16))(v8, v11, v30[0]);
    swift_storeEnumTagMultiPayload();
    v15 = sub_1000CE6B8(&qword_10190CED0, &unk_1011EB7C0);
    v16 = sub_1000D6664(&qword_10190CEC8, &qword_1011E9A98);
    v17 = sub_1000D6664(&qword_10190CED8, &qword_1011E9AA0);
    v18 = sub_1000414C8(&qword_10190CEE0, &qword_10190CED8, &qword_1011E9AA0, &protocol conformance descriptor for VStack<A>);
    v31 = v17;
    v32 = &type metadata for Color;
    v33 = v18;
    v34 = &protocol witness table for Color;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v20 = sub_1000E5580();
    v31 = v15;
    v32 = &type metadata for String;
    v33 = OpaqueTypeConformance2;
    v34 = v20;
    v21 = swift_getOpaqueTypeConformance2();
    v31 = v16;
    v32 = &type metadata for Bool;
    v33 = v21;
    v34 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v9 + 8))(v11, v14);
  }

  else
  {
    v23 = sub_1000CE6B8(&qword_10190CED0, &unk_1011EB7C0);
    (*(*(v23 - 8) + 16))(v8, v3, v23);
    swift_storeEnumTagMultiPayload();
    v24 = sub_1000D6664(&qword_10190CEC8, &qword_1011E9A98);
    v25 = sub_1000D6664(&qword_10190CED8, &qword_1011E9AA0);
    v26 = sub_1000414C8(&qword_10190CEE0, &qword_10190CED8, &qword_1011E9AA0, &protocol conformance descriptor for VStack<A>);
    v31 = v25;
    v32 = &type metadata for Color;
    v33 = v26;
    v34 = &protocol witness table for Color;
    v27 = swift_getOpaqueTypeConformance2();
    v28 = sub_1000E5580();
    v31 = v23;
    v32 = &type metadata for String;
    v33 = v27;
    v34 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v31 = v24;
    v32 = &type metadata for Bool;
    v33 = v29;
    v34 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100150490@<X0>(id a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v26 = a3;
  v5 = sub_1000CE6B8(&qword_10190CE98, &qword_1011E9A78);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_1000CE6B8(&qword_10190CEA0, &qword_1011E9A80);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == a1)
  {
    v25(v3);
    (*(v9 + 16))(v7, v11, v8);
    swift_storeEnumTagMultiPayload();
    v14 = sub_1000CE6B8(&qword_10190CE58, &unk_1011FA7A0);
    v15 = sub_1000D6664(&qword_10190CE50, &qword_1011E9A60);
    v16 = sub_100156FA8();
    v17 = sub_1000E5580();
    v27 = v14;
    v28 = &type metadata for String;
    v29 = v16;
    v30 = v17;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v27 = v15;
    v28 = &type metadata for Bool;
    v29 = OpaqueTypeConformance2;
    v30 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    sub_1000D2DFC(v3, v7, &qword_10190CE58, &unk_1011FA7A0);
    swift_storeEnumTagMultiPayload();
    v20 = sub_1000CE6B8(&qword_10190CE58, &unk_1011FA7A0);
    v21 = sub_1000D6664(&qword_10190CE50, &qword_1011E9A60);
    v22 = sub_100156FA8();
    v23 = sub_1000E5580();
    v27 = v20;
    v28 = &type metadata for String;
    v29 = v22;
    v30 = v23;
    v24 = swift_getOpaqueTypeConformance2();
    v27 = v21;
    v28 = &type metadata for Bool;
    v29 = v24;
    v30 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100150804@<X0>(id a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v22 = a4;
  v7 = sub_1000CE6B8(&qword_10190CF40, &qword_1011E9AD0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = sub_1000CE6B8(&qword_10190CF48, &qword_1011E9AD8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == a1)
  {
    a2(v4);
    (*(v11 + 16))(v9, v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_1000CE6B8(&qword_10190CF30, &qword_1012034E0);
    v16 = sub_1000D6664(&qword_10190CF18, &qword_1011E9AC8);
    v17 = sub_1001573C4();
    v23 = v16;
    v24 = &type metadata for Bool;
    v25 = v17;
    v26 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190CF28, &qword_10190CF30, &qword_1012034E0, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_1000D2DFC(v4, v9, &qword_10190CF30, &qword_1012034E0);
    swift_storeEnumTagMultiPayload();
    sub_1000CE6B8(&qword_10190CF30, &qword_1012034E0);
    v19 = sub_1000D6664(&qword_10190CF18, &qword_1011E9AC8);
    v20 = sub_1001573C4();
    v23 = v19;
    v24 = &type metadata for Bool;
    v25 = v20;
    v26 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190CF28, &qword_10190CF30, &qword_1012034E0, &protocol conformance descriptor for VStack<A>);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100150B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19[2] = a5;
  v19[3] = a1;
  v20 = type metadata accessor for SearchFieldPlacement();
  v8 = *(v20 - 8);
  __chkstk_darwin(v20);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PlaceItemsView(0);
  v12 = (a2 + *(v11 + 28));
  v13 = *v12;
  v14 = *(v12 + 2);
  v24 = v13;
  v25 = v14;
  sub_1000CE6B8(&qword_10190CCA0, &unk_1011FA7D0);
  State.projectedValue.getter();
  v19[1] = v23;
  v15 = (a2 + *(v11 + 36));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v24) = v16;
  *(&v24 + 1) = v17;
  sub_1000CE6B8(&qword_10190A140, &qword_1011FA3D0);
  State.projectedValue.getter();
  v21 = a3;
  v22 = a4;
  static SearchFieldPlacement.automatic.getter();
  sub_1000CE6B8(&qword_10190CC30, &qword_1011E9818);
  sub_100156068();
  sub_1000E5580();
  View.searchable<A>(text:isPresented:placement:prompt:)();

  return (*(v8 + 8))(v10, v20);
}

uint64_t sub_100150D74@<X0>(id a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v22 = a3;
  v5 = sub_1000CE6B8(&qword_10190CDE8, &qword_1011E9940);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = sub_1000CE6B8(&qword_10190CDF0, &qword_1011E9948);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == a1)
  {
    sub_1000D2DFC(v3, v11, &qword_10190CC30, &qword_1011E9818);
    swift_storeEnumTagMultiPayload();
    v14 = sub_1000CE6B8(&qword_10190CC30, &qword_1011E9818);
    v15 = sub_100156068();
    v16 = sub_1000E5580();
    v23 = v14;
    v24 = &type metadata for String;
    v25 = v15;
    v26 = v16;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v21(v3);
    (*(v6 + 16))(v11, v8, v5);
    swift_storeEnumTagMultiPayload();
    v18 = sub_1000CE6B8(&qword_10190CC30, &qword_1011E9818);
    v19 = sub_100156068();
    v20 = sub_1000E5580();
    v23 = v18;
    v24 = &type metadata for String;
    v25 = v19;
    v26 = v20;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100151048@<X0>(id a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = sub_1000CE6B8(&qword_10190CEA8, &qword_1011E9A88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_1000CE6B8(&qword_10190CEB0, &qword_1011E9A90);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == a1)
  {
    sub_1000D2DFC(v3, v11, &qword_10190CEB8, &unk_1011EB7B0);
    swift_storeEnumTagMultiPayload();
    v14 = sub_1000CE6B8(&qword_10190CEB8, &unk_1011EB7B0);
    v15 = sub_10015710C();
    v21 = v14;
    v22 = &type metadata for Bool;
    v23 = v15;
    v24 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v19(v3);
    (*(v6 + 16))(v11, v8, v5);
    swift_storeEnumTagMultiPayload();
    v17 = sub_1000CE6B8(&qword_10190CEB8, &unk_1011EB7B0);
    v18 = sub_10015710C();
    v21 = v17;
    v22 = &type metadata for Bool;
    v23 = v18;
    v24 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100151324@<X0>(id a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = sub_1000CE6B8(&qword_10190CE30, &qword_1011E9A50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_1000CE6B8(&qword_10190CE38, &qword_1011E9A58);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == a1)
  {
    sub_1000D2DFC(v3, v11, &qword_10190CE40, &unk_1011FA790);
    swift_storeEnumTagMultiPayload();
    v14 = sub_1000CE6B8(&qword_10190CE40, &unk_1011FA790);
    v15 = sub_100156E7C();
    v21 = v14;
    v22 = &type metadata for Bool;
    v23 = v15;
    v24 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v19(v3);
    (*(v6 + 16))(v11, v8, v5);
    swift_storeEnumTagMultiPayload();
    v17 = sub_1000CE6B8(&qword_10190CE40, &unk_1011FA790);
    v18 = sub_100156E7C();
    v21 = v17;
    v22 = &type metadata for Bool;
    v23 = v18;
    v24 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100151600@<X0>(id a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = sub_1000CE6B8(&qword_10190CEF8, &qword_1011E9AB8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_1000CE6B8(&qword_10190CF00, &qword_1011E9AC0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == a1)
  {
    sub_1000D2DFC(v3, v11, &qword_10190CF08, &unk_1012034D0);
    swift_storeEnumTagMultiPayload();
    v14 = sub_1000CE6B8(&qword_10190CF08, &unk_1012034D0);
    v15 = sub_1001572BC();
    v21 = v14;
    v22 = &type metadata for Bool;
    v23 = v15;
    v24 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v19(v3);
    (*(v6 + 16))(v11, v8, v5);
    swift_storeEnumTagMultiPayload();
    v17 = sub_1000CE6B8(&qword_10190CF08, &unk_1012034D0);
    v18 = sub_1001572BC();
    v21 = v17;
    v22 = &type metadata for Bool;
    v23 = v18;
    v24 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1001518DC()
{
  v0 = type metadata accessor for EditMode();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v4);
  v7 = &v9 - v6;
  (*(v1 + 104))(&v9 - v6, enum case for EditMode.inactive(_:), v0, v5);
  type metadata accessor for PlaceItemsView(0);
  (*(v1 + 16))(v3, v7, v0);
  sub_1000CE6B8(&qword_10190CA30, &unk_101208E00);
  State.wrappedValue.setter();
  return (*(v1 + 8))(v7, v0);
}

void *sub_100151A38()
{
  v1 = v0;
  v42 = type metadata accessor for DispatchTimeInterval();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = (&v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for DispatchTime();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = &v36 - v5;
  v45 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v45);
  v48 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlaceItemsView(0);
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  __chkstk_darwin(v7);
  v10 = (v0 + *(v9 + 40));
  v11 = *v10;
  v46 = v10[1];
  v47 = v11;
  aBlock = v11;
  v50 = v46;
  sub_1000CE6B8(&qword_10190CDE0, &qword_1011E9938);
  State.wrappedValue.getter();
  if (v55)
  {
    dispatch thunk of DispatchWorkItem.cancel()();
  }

  v12 = (v0 + *(v7 + 28));
  v14 = *v12;
  v13 = v12[1];
  v15 = v12[2];
  aBlock = *v12;
  v50 = v13;
  v51 = v15;
  sub_1000CE6B8(&qword_10190CCA0, &unk_1011FA7D0);
  State.wrappedValue.getter();
  v17 = v55;
  v16 = v56;

  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    aBlock = v14;
    v50 = v13;
    v51 = v15;
    State.wrappedValue.getter();
    v20 = v55;
    v19 = v56;
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  sub_100154D94(v1, &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v22 = swift_allocObject();
  sub_100154DF8(&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v23 = (v22 + ((v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v20;
  v23[1] = v19;
  v53 = sub_1001569B4;
  v54 = v22;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_100039C64;
  v52 = &unk_101606520;
  _Block_copy(&aBlock);
  v55 = _swiftEmptyArrayStorage;
  sub_100156A44(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500, &unk_1011E4610);
  sub_1000414C8(&qword_1019097E0, &unk_10190B500, &unk_1011E4610, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v24 = DispatchWorkItem.init(flags:block:)();

  v26 = v46;
  v25 = v47;
  aBlock = v47;
  v50 = v46;
  v55 = v24;
  State.wrappedValue.setter();
  aBlock = v25;
  v50 = v26;
  result = State.wrappedValue.getter();
  if (v55)
  {
    sub_100109428();
    v28 = static OS_dispatch_queue.main.getter();
    v29 = v37;
    static DispatchTime.now()();
    v31 = v39;
    v30 = v40;
    *v39 = 200;
    v32 = v42;
    (*(v30 + 104))(v31, enum case for DispatchTimeInterval.milliseconds(_:), v42);
    v33 = v38;
    + infix(_:_:)();
    (*(v30 + 8))(v31, v32);
    v34 = *(v41 + 8);
    v35 = v43;
    v34(v29, v43);
    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    return (v34)(v33, v35);
  }

  return result;
}

uint64_t sub_100151FD0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  type metadata accessor for PlaceItemsView(0);

  sub_1000CE6B8(&qword_10190CBD8, &qword_1011E9760);
  State.wrappedValue.getter();
  v4 = v8;
  if ((v8 & 0xC000000000000001) != 0)
  {
    if (v8 < 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = __CocoaSet.count.getter();
    v4 = sub_1003070E8(v5, v6);
  }

  sub_1001565A8(v3, v4);
  State.wrappedValue.setter();
}

uint64_t sub_1001520B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v132 = type metadata accessor for LeadingCardHeader();
  v102 = *(v132 - 8);
  __chkstk_darwin(v132);
  v101 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1000CE6B8(&qword_10190CBE0, &qword_1011E97B8);
  v105 = *(v133 - 8);
  __chkstk_darwin(v133);
  v104 = &v97 - v4;
  countAndFlagsBits = type metadata accessor for LeadingCardHeaderViewModel();
  v103 = *(countAndFlagsBits - 8);
  __chkstk_darwin(countAndFlagsBits);
  v99 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v108 = &v97 - v7;
  v8 = type metadata accessor for PlaceItemsView(0);
  v98 = *(v8 - 8);
  v9 = *(v98 + 64);
  __chkstk_darwin(v8);
  v107 = type metadata accessor for CardButtonViewModel();
  v100 = *(v107 - 8);
  __chkstk_darwin(v107);
  v106 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EditMode();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v97 - v16;
  v129 = sub_1000CE6B8(&qword_10190CBE8, &qword_1011E97C0);
  __chkstk_darwin(v129);
  v131 = &v97 - v18;
  v116 = sub_1000CE6B8(&qword_10190CBF0, &qword_1011E97C8);
  __chkstk_darwin(v116);
  v117 = &v97 - v19;
  v130 = sub_1000CE6B8(&qword_10190CBF8, &qword_1011E97D0);
  __chkstk_darwin(v130);
  v121 = &v97 - v20;
  v123 = type metadata accessor for MapsDesignAccessibilityString();
  v124 = *(v123 - 8);
  __chkstk_darwin(v123);
  v128 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for CenteredCardHeaderNavigation();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1000CE6B8(&qword_10190CC00, &unk_101203510);
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v97 - v23;
  v126 = type metadata accessor for CardHeaderSize();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v127 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for CenteredCardHeaderNavigationViewModel();
  v139 = *(v25 - 8);
  v140 = v25;
  __chkstk_darwin(v25);
  v112 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v138 = &v97 - v28;
  v29 = sub_1000CE6B8(&unk_101910FC0, &unk_1011EBBE0);
  __chkstk_darwin(v29 - 8);
  v31 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v110 = &v97 - v33;
  __chkstk_darwin(v34);
  v122 = &v97 - v35;
  v36 = type metadata accessor for CardHeaderTextViewModel();
  v136 = *(v36 - 8);
  v137 = v36;
  __chkstk_darwin(v36);
  v111 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v135 = &v97 - v39;
  v40 = (a1 + *(v8 + 32));
  v41 = *v40;
  v42 = *(v40 + 1);
  LOBYTE(v141) = v41;
  *(&v141 + 1) = v42;
  sub_1000CE6B8(&qword_10190A140, &qword_1011FA3D0);
  State.wrappedValue.getter();
  if (v144 == 1)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v145._object = 0x800000010121EDB0;
    v43._countAndFlagsBits = 0x5020686372616553;
    v43._object = 0xED0000736563616CLL;
    v44._countAndFlagsBits = 0xD000000000000020;
    v44._object = 0x800000010121ED80;
    v145._countAndFlagsBits = 0xD000000000000036;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, 0, qword_1019600D8, v43, v145)._countAndFlagsBits;
    v45 = v124;
    v46 = *(v124 + 104);
    v47 = v122;
    v48 = v123;
    v46(v122, enum case for MapsDesignAccessibilityString.titleLabel(_:), v123);
    v49 = *(v45 + 56);
    v49(v47, 0, 1, v48);
    v50 = v110;
    v46(v110, enum case for MapsDesignAccessibilityString.subtitleLabel(_:), v48);
    v49(v50, 0, 1, v48);
    v46(v31, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v48);
    v49(v31, 0, 1, v48);
    static HorizontalAlignment.center.getter();
    v51 = v135;
    CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
    (*(v136 + 16))(v111, v51, v137);
    (*(v125 + 104))(v127, enum case for CardHeaderSize.medium(_:), v126);
    v52 = v138;
    CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)();
    (*(v139 + 16))(v112, v52, v140);
    v53 = v113;
    CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)();
    v54 = v128;
    *v128 = 0xD000000000000011;
    *(v54 + 1) = 0x800000010121ECF0;
    v46(v54, enum case for MapsDesignAccessibilityString.header(_:), v48);
    v55 = sub_100156A44(&qword_10190CC10, &type metadata accessor for CenteredCardHeaderNavigation, &protocol conformance descriptor for CenteredCardHeaderNavigation);
    v56 = v118;
    v57 = v115;
    View.mapsDesignAXCombinedContainer(withID:)();
    (*(v45 + 8))(v54, v48);
    (*(v114 + 8))(v53, v57);
    v58 = v119;
    v59 = v120;
    (*(v119 + 16))(v117, v56, v120);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    *&v141 = v57;
    *(&v141 + 1) = v55;
    swift_getOpaqueTypeConformance2();
    v75 = v121;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v75, v131, &qword_10190CBF8, &qword_1011E97D0);
    swift_storeEnumTagMultiPayload();
    sub_100155358();
    v76 = sub_100156A44(&qword_10190AF00, &type metadata accessor for LeadingCardHeader, &protocol conformance descriptor for LeadingCardHeader);
    *&v141 = v132;
    *(&v141 + 1) = v76;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v75, &qword_10190CBF8, &qword_1011E97D0);
    (*(v58 + 8))(v56, v59);
    (*(v139 + 8))(v138, v140);
    return (*(v136 + 8))(v135, v137);
  }

  v97 = v9;
  v60 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CE6B8(&qword_10190CA30, &unk_101208E00);
  State.wrappedValue.getter();
  (*(v12 + 104))(v14, enum case for EditMode.active(_:), v11);
  v61 = static EditMode.== infix(_:_:)();
  v62 = *(v12 + 8);
  v62(v14, v11);
  v62(v17, v11);
  if (v61)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v146._object = 0x800000010121ED40;
    v63._countAndFlagsBits = 0x50207463656C6553;
    v63._object = 0xED0000736563616CLL;
    v64._countAndFlagsBits = 0xD000000000000020;
    v64._object = 0x800000010121ED10;
    v146._countAndFlagsBits = 0xD000000000000036;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v64, 0, qword_1019600D8, v63, v146)._countAndFlagsBits;
    v65 = v124;
    v66 = *(v124 + 104);
    v67 = v122;
    v68 = v123;
    v66(v122, enum case for MapsDesignAccessibilityString.titleLabel(_:), v123);
    v69 = *(v65 + 56);
    v69(v67, 0, 1, v68);
    v70 = v110;
    v66(v110, enum case for MapsDesignAccessibilityString.subtitleLabel(_:), v68);
    v69(v70, 0, 1, v68);
    v66(v31, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v68);
    v69(v31, 0, 1, v68);
    static HorizontalAlignment.center.getter();
    v71 = v135;
    CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
    (*(v136 + 16))(v111, v71, v137);
    (*(v125 + 104))(v127, enum case for CardHeaderSize.medium(_:), v126);
    v72 = v138;
    CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)();
    (*(v139 + 16))(v112, v72, v140);
    v73 = v113;
    CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)();
    v74 = v128;
    *v128 = 0xD000000000000011;
    *(v74 + 1) = 0x800000010121ECF0;
    v66(v74, enum case for MapsDesignAccessibilityString.header(_:), v68);
    v55 = sub_100156A44(&qword_10190CC10, &type metadata accessor for CenteredCardHeaderNavigation, &protocol conformance descriptor for CenteredCardHeaderNavigation);
    v56 = v118;
    v57 = v115;
    View.mapsDesignAXCombinedContainer(withID:)();
    (*(v65 + 8))(v74, v68);
    (*(v114 + 8))(v73, v57);
    v58 = v119;
    v59 = v120;
    (*(v119 + 16))(v117, v56, v120);
    goto LABEL_9;
  }

  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v147._object = 0x800000010121ECC0;
  v78._countAndFlagsBits = 0x6C50206465766153;
  v78._object = 0xEC00000073656361;
  v79._countAndFlagsBits = 0xD000000000000017;
  v79._object = 0x800000010121ECA0;
  v147._countAndFlagsBits = 0xD00000000000002ALL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v79, 0, qword_1019600D8, v78, v147);
  sub_100154D94(a1, v60);
  v80 = (*(v98 + 80) + 16) & ~*(v98 + 80);
  v81 = swift_allocObject();
  sub_100154DF8(v60, v81 + v80);
  v82 = v106;
  static CardButtonViewModel.close(tintColor:enabled:action:)();

  v83 = v124;
  v84 = v123;
  (*(v124 + 56))(v122, 1, 1, v123);
  (*(v125 + 104))(v127, enum case for CardHeaderSize.large(_:), v126);
  v143 = 0;
  v141 = 0u;
  v142 = 0u;
  sub_1000CE6B8(&qword_10191D770, &qword_1011E52E0);
  v85 = v100;
  v86 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1011E1D30;
  (*(v85 + 16))(v87 + v86, v82, v107);
  v88 = v108;
  LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
  v89 = v103;
  (*(v103 + 16))(v99, v88, countAndFlagsBits);
  v90 = v101;
  LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
  v91 = v128;
  *v128 = 0xD000000000000011;
  *(v91 + 1) = 0x800000010121ECF0;
  (*(v83 + 104))(v91, enum case for MapsDesignAccessibilityString.header(_:), v84);
  v92 = sub_100156A44(&qword_10190AF00, &type metadata accessor for LeadingCardHeader, &protocol conformance descriptor for LeadingCardHeader);
  v93 = v104;
  v94 = v132;
  View.mapsDesignAXCombinedContainer(withID:)();
  (*(v83 + 8))(v91, v84);
  (*(v102 + 8))(v90, v94);
  v95 = v105;
  v96 = v133;
  (*(v105 + 16))(v131, v93, v133);
  swift_storeEnumTagMultiPayload();
  sub_100155358();
  *&v141 = v94;
  *(&v141 + 1) = v92;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  (*(v95 + 8))(v93, v96);
  (*(v89 + 8))(v108, countAndFlagsBits);
  return (*(v85 + 8))(v106, v107);
}

uint64_t sub_100153798(uint64_t a1, void *a2)
{
  sub_1000CE6B8(&qword_10190CBD0, &qword_1011E9730);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_100156A44(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel, &unk_1011E5DE8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v6 + 48);
  if (!v2)
  {
  }

  v3 = *(v6 + 56);

  v2(v4);

  return sub_1000588AC(v2, v3);
}

void sub_100153898(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = type metadata accessor for EditMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = type metadata accessor for ActionBarItemType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of ActionBarItemViewModel.type.getter();
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == enum case for ActionBarItemType.addToList(_:))
  {
    v17 = a3[1];
    v39 = *a3;
    v40 = v17;
    sub_1000CE6B8(&qword_10190CBD0, &qword_1011E9730);
    State.wrappedValue.getter();
    v18 = v37;
    swift_getKeyPath();
    v39 = v18;
    sub_100156A44(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel, &unk_1011E5DE8);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(v18 + 80);
    if (v19)
    {
      v20 = *(v18 + 88);
LABEL_4:

      v19(v21);

      sub_1000588AC(v19, v20);
      return;
    }

LABEL_15:

    return;
  }

  if (v16 == enum case for ActionBarItemType.addToGuide(_:))
  {
    if (!a2)
    {
      return;
    }

    v22 = a3[1];
    v39 = *a3;
    v40 = v22;
    v23 = a2;
    sub_1000CE6B8(&qword_10190CBD0, &qword_1011E9730);
    State.wrappedValue.getter();
    v24 = (a3 + *(type metadata accessor for PlaceItemsView(0) + 24));
    v25 = *v24;
    v26 = v24[1];
    v39 = *v24;
    v40 = v26;
    sub_1000CE6B8(&qword_10190CBD8, &qword_1011E9760);
    State.wrappedValue.getter();
    v27 = sub_100415E14(v37);

    v28 = v23;
    sub_1000FF6C4(v27, a2);
LABEL_8:

    v39 = v25;
    v40 = v26;

    State.wrappedValue.getter();

    v37 = v25;
    v38 = v26;
    v36 = &_swiftEmptySetSingleton;
    State.wrappedValue.setter();

    return;
  }

  if (v16 == enum case for ActionBarItemType.select(_:))
  {
    v29 = &enum case for EditMode.active(_:);
    goto LABEL_11;
  }

  if (v16 == enum case for ActionBarItemType.sort(_:))
  {
    v30 = a3[1];
    v39 = *a3;
    v40 = v30;
    sub_1000CE6B8(&qword_10190CBD0, &qword_1011E9730);
    State.wrappedValue.getter();
    v31 = v37;
    swift_getKeyPath();
    v39 = v31;
    sub_100156A44(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel, &unk_1011E5DE8);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(v31 + 192);
    if (v19)
    {
      v20 = *(v31 + 200);
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  if (v16 != enum case for ActionBarItemType.delete(_:))
  {
    if (v16 != enum case for ActionBarItemType.done(_:))
    {
      (*(v13 + 8))(v15, v12);
      return;
    }

    v29 = &enum case for EditMode.inactive(_:);
LABEL_11:
    (*(v6 + 104))(v11, *v29, v5);
    type metadata accessor for PlaceItemsView(0);
    (*(v6 + 16))(v8, v11, v5);
    sub_1000CE6B8(&qword_10190CA30, &unk_101208E00);
    State.wrappedValue.setter();
    (*(v6 + 8))(v11, v5);
    return;
  }

  if (a2)
  {
    v32 = a3[1];
    v39 = *a3;
    v40 = v32;
    v33 = a2;
    sub_1000CE6B8(&qword_10190CBD0, &qword_1011E9730);
    State.wrappedValue.getter();
    v34 = (a3 + *(type metadata accessor for PlaceItemsView(0) + 24));
    v25 = *v34;
    v26 = v34[1];
    v39 = *v34;
    v40 = v26;
    sub_1000CE6B8(&qword_10190CBD8, &qword_1011E9760);
    State.wrappedValue.getter();
    v35 = sub_100415E14(v37);

    v28 = v33;
    sub_1000FFA0C(v35, a2);
    goto LABEL_8;
  }
}

uint64_t sub_100153E88(uint64_t a1)
{
  v2 = type metadata accessor for ActionBarItemType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1011E47C0;
  v9 = *(v3 + 104);
  v9(v5, enum case for ActionBarItemType.addToList(_:), v2);
  type metadata accessor for ActionBarItemViewModel();
  swift_allocObject();
  *(v8 + 32) = ActionBarItemViewModel.init(_:)();
  v9(v5, enum case for ActionBarItemType.select(_:), v2);
  swift_allocObject();
  *(v8 + 40) = ActionBarItemViewModel.init(_:)();
  v9(v5, enum case for ActionBarItemType.sort(_:), v2);
  swift_allocObject();
  *(v8 + 48) = ActionBarItemViewModel.init(_:)();
  if (v7)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1011E4FD0;
    v9(v5, enum case for ActionBarItemType.delete(_:), v2);
    swift_allocObject();
    *(v10 + 32) = ActionBarItemViewModel.init(_:disabled:)();
    v9(v5, enum case for ActionBarItemType.addToGuide(_:), v2);
    swift_allocObject();
    *(v10 + 40) = ActionBarItemViewModel.init(_:disabled:)();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1011E47B0;
    v9(v5, enum case for ActionBarItemType.done(_:), v2);
    swift_allocObject();
    *(v11 + 32) = ActionBarItemViewModel.init(_:)();
    type metadata accessor for ActionBarViewModel();
    swift_allocObject();
    v12 = ActionBarViewModel.init(leadingItems:centeredItems:trailingItems:leadingEditItems:centeredEditItems:trailingEditItems:forceExpandedSearch:)();
    v13 = (a1 + *(type metadata accessor for PlaceItemsView(0) + 44));
  }

  else
  {
    v14 = swift_allocObject();
    v21 = xmmword_1011E47B0;
    *(v14 + 16) = xmmword_1011E47B0;
    v9(v5, enum case for ActionBarItemType.search(_:), v2);
    swift_allocObject();
    *(v14 + 32) = ActionBarItemViewModel.init(_:)();
    v15 = swift_allocObject();
    v22 = a1;
    v16 = v15;
    *(v15 + 16) = xmmword_1011E4FD0;
    v9(v5, enum case for ActionBarItemType.delete(_:), v2);
    swift_allocObject();
    *(v16 + 32) = ActionBarItemViewModel.init(_:disabled:)();
    v9(v5, enum case for ActionBarItemType.addToGuide(_:), v2);
    swift_allocObject();
    *(v16 + 40) = ActionBarItemViewModel.init(_:disabled:)();
    v17 = swift_allocObject();
    *(v17 + 16) = v21;
    v9(v5, enum case for ActionBarItemType.done(_:), v2);
    swift_allocObject();
    *(v17 + 32) = ActionBarItemViewModel.init(_:)();
    type metadata accessor for ActionBarViewModel();
    swift_allocObject();
    v12 = ActionBarViewModel.init(leadingItems:centeredItems:trailingItems:leadingEditItems:centeredEditItems:trailingEditItems:forceExpandedSearch:)();
    v13 = (v22 + *(type metadata accessor for PlaceItemsView(0) + 44));
  }

  v19 = *v13;
  v18 = v13[1];
  v24 = v19;
  v25 = v18;
  v23 = v12;
  sub_1000CE6B8(&qword_10190A148, &qword_1011E5130);
  return State.wrappedValue.setter();
}

uint64_t sub_1001543CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  type metadata accessor for PlaceItemsView(0);
  sub_1000CE6B8(&qword_10190A148, &qword_1011E5130);
  State.wrappedValue.getter();
  sub_1000CE6B8(&qword_10190A178, &unk_1011E5200);
  v3 = type metadata accessor for ActionBarItemType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1011E1D60;
  v8 = v7 + v6;
  v9 = *(v4 + 104);
  v9(v8, enum case for ActionBarItemType.delete(_:), v3);
  v9(v8 + v5, enum case for ActionBarItemType.addToGuide(_:), v3);
  dispatch thunk of ActionBarViewModel.updateItems(with:disabled:)();
}

uint64_t sub_100154548(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000CE6B8(&qword_10190CBD0, &qword_1011E9730);
  State.wrappedValue.getter();
  sub_1000FFD54(a2, a3);
}

uint64_t sub_1001545BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for EditMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v28[0] = a1;
  type metadata accessor for PlaceItemsViewModel(0);
  State.init(wrappedValue:)();
  v13 = *(&v29 + 1);
  *a3 = v29;
  a3[1] = v13;
  v14 = type metadata accessor for PlaceItemsView(0);
  (*(v7 + 104))(v12, enum case for EditMode.inactive(_:), v6);
  (*(v7 + 16))(v9, v12, v6);
  State.init(wrappedValue:)();
  (*(v7 + 8))(v12, v6);
  v15 = (a3 + v14[6]);
  v28[0] = &_swiftEmptySetSingleton;
  sub_1000CE6B8(&qword_10190CAC0, &qword_1011E95D0);
  State.init(wrappedValue:)();
  v16 = *(&v29 + 1);
  *v15 = v29;
  v15[1] = v16;
  v17 = a3 + v14[7];
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  State.init(wrappedValue:)();
  v18 = v30;
  *v17 = v29;
  *(v17 + 2) = v18;
  v19 = a3 + v14[8];
  LOBYTE(v28[0]) = 0;
  State.init(wrappedValue:)();
  v20 = *(&v29 + 1);
  *v19 = v29;
  *(v19 + 1) = v20;
  v21 = a3 + v14[9];
  LOBYTE(v28[0]) = 0;
  State.init(wrappedValue:)();
  v22 = *(&v29 + 1);
  *v21 = v29;
  *(v21 + 1) = v22;
  v23 = v14[10];
  v28[0] = 0;
  sub_1000CE6B8(&qword_10190CAD8, &qword_1011E95D8);
  State.init(wrappedValue:)();
  *(a3 + v23) = v29;
  v24 = (a3 + v14[11]);
  v28[0] = a2;
  type metadata accessor for ActionBarViewModel();
  State.init(wrappedValue:)();
  v25 = *(&v29 + 1);
  *v24 = v29;
  v24[1] = v25;
  v26 = v14[12];
  *(a3 + v26) = swift_getKeyPath();
  sub_1000CE6B8(&qword_10190CBC8, &qword_1011EB460);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001548AC()
{
  sub_1000CE6B8(&qword_10190CB38, &qword_1011E9680);
  sub_1000D6664(&qword_10190CB40, &qword_1011E9688);
  sub_100155F08(&qword_10190CB48, &qword_10190CB40, &qword_1011E9688, sub_1001549B0);
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_1001549B0()
{
  result = qword_10190CB50;
  if (!qword_10190CB50)
  {
    sub_1000D6664(&qword_10190CB58, &qword_1011E9690);
    sub_100154A68();
    sub_1000414C8(&qword_10190A108, &qword_10190A110, &unk_1011E5110, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CB50);
  }

  return result;
}

unint64_t sub_100154A68()
{
  result = qword_10190CB60;
  if (!qword_10190CB60)
  {
    sub_1000D6664(&qword_10190CB68, &qword_1011E9698);
    sub_100154B20();
    sub_1000414C8(&qword_101916F20, &qword_10190CBB8, &unk_1011F6C40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CB60);
  }

  return result;
}

unint64_t sub_100154B20()
{
  result = qword_10190CB70;
  if (!qword_10190CB70)
  {
    sub_1000D6664(&qword_10190CB78, &qword_1011E96A0);
    sub_1000D6664(&qword_10190CB80, &qword_1011E96A8);
    sub_100154C14();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190A118, &qword_10190A120, &qword_101208EF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CB70);
  }

  return result;
}

unint64_t sub_100154C14()
{
  result = qword_10190CB88;
  if (!qword_10190CB88)
  {
    sub_1000D6664(&qword_10190CB80, &qword_1011E96A8);
    sub_1000D6664(&qword_10190CB90, &qword_1011E96B0);
    sub_1000D6664(&qword_10190CB98, &qword_1011E96B8);
    sub_1000414C8(&qword_10190CBA0, &qword_10190CB98, &qword_1011E96B8, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190CBA8, &qword_10190CBB0, &qword_1011E96C0, &unk_1011E66B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CB88);
  }

  return result;
}

uint64_t sub_100154D94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceItemsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100154DF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceItemsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100154E5C(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for PlaceItemsView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_100153898(a1, a2, v6);
}

double sub_100154F0C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  static os_log_type_t.fault.getter();
  v9 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_1000F1230(a1, 0);
  (*(v5 + 8))(v7, v4);
  return *&v10[1];
}

uint64_t sub_1001550A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000CE6B8(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_1000D2DFC(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1001552E8(uint64_t a1)
{
  v3 = *(type metadata accessor for PlaceItemsView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_100153798(a1, v4);
}

unint64_t sub_100155358()
{
  result = qword_10190CC08;
  if (!qword_10190CC08)
  {
    sub_1000D6664(&qword_10190CBF8, &qword_1011E97D0);
    type metadata accessor for CenteredCardHeaderNavigation();
    sub_100156A44(&qword_10190CC10, &type metadata accessor for CenteredCardHeaderNavigation, &protocol conformance descriptor for CenteredCardHeaderNavigation);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CC08);
  }

  return result;
}

uint64_t sub_100155454(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PlaceItemsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1001554C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190CC50, &qword_1011E9838);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100155540()
{
  result = qword_10190CCC0;
  if (!qword_10190CCC0)
  {
    sub_1000D6664(&qword_10190CCB0, &qword_1011E9878);
    sub_1001555D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CCC0);
  }

  return result;
}

unint64_t sub_1001555D0()
{
  result = qword_10190CCC8;
  if (!qword_10190CCC8)
  {
    sub_1000D6664(&qword_10190CCD0, &qword_1011E9880);
    sub_100155654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CCC8);
  }

  return result;
}

unint64_t sub_100155654()
{
  result = qword_10190CCD8;
  if (!qword_10190CCD8)
  {
    sub_1000D6664(&qword_10190CCE0, &qword_1011E9888);
    sub_10015570C();
    sub_1000414C8(&unk_10190D690, &qword_10190BE10, &qword_1011EBB00, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CCD8);
  }

  return result;
}

unint64_t sub_10015570C()
{
  result = qword_10190CCE8;
  if (!qword_10190CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CCE8);
  }

  return result;
}

uint64_t sub_100155774(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000CE6B8(&qword_10190CE10, &qword_1011E99D8);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = static Hasher._hash(seed:_:)();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + 8 * v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_100155974(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = &_swiftEmptySetSingleton;
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  sub_1000CE6B8(a5, a6);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = v11[5];
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = NSObject._rawHashValue(seed:)(v18);
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(v11[6] + 8 * v23) = v19;
    ++v11[2];
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_100155B60()
{
  result = qword_10190CD08;
  if (!qword_10190CD08)
  {
    sub_1000D6664(&qword_10190CC20, &qword_1011E9808);
    sub_100155C18();
    sub_1000414C8(&qword_10190A3B8, &qword_10190A3C0, &qword_1011E5630, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CD08);
  }

  return result;
}

unint64_t sub_100155C18()
{
  result = qword_10190CD10;
  if (!qword_10190CD10)
  {
    sub_1000D6664(&qword_10190CCF8, &qword_1011E98C8);
    sub_100155CD0();
    sub_1000414C8(&qword_10190CD48, &qword_10190CD00, &unk_1011EEE90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CD10);
  }

  return result;
}

unint64_t sub_100155CD0()
{
  result = qword_10190CD18;
  if (!qword_10190CD18)
  {
    sub_1000D6664(&qword_10190CCF0, &qword_1011E9890);
    sub_100155D88();
    sub_1000414C8(&qword_10190CD40, &unk_10191D9C0, &qword_1011FA960, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CD18);
  }

  return result;
}

unint64_t sub_100155D88()
{
  result = qword_10190CD20;
  if (!qword_10190CD20)
  {
    sub_1000D6664(&qword_10190CD28, &qword_1011E98F8);
    sub_1000414C8(&qword_10190CD30, &qword_10190CD38, &qword_1011E9900, &protocol conformance descriptor for List<A, B>);
    sub_100109BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CD20);
  }

  return result;
}

uint64_t sub_100155F08(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100155F8C()
{
  result = qword_10190CD58;
  if (!qword_10190CD58)
  {
    sub_1000D6664(&qword_10190CD60, &qword_1011E9908);
    sub_1000D6664(&qword_10190CC30, &qword_1011E9818);
    sub_100156068();
    sub_1000E5580();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CD58);
  }

  return result;
}

unint64_t sub_100156068()
{
  result = qword_10190CD68;
  if (!qword_10190CD68)
  {
    sub_1000D6664(&qword_10190CC30, &qword_1011E9818);
    sub_1000D6664(&qword_10190CC28, &qword_1011E9810);
    sub_100156144();
    sub_1000E5580();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CD68);
  }

  return result;
}

unint64_t sub_100156144()
{
  result = qword_10190CD70;
  if (!qword_10190CD70)
  {
    sub_1000D6664(&qword_10190CC28, &qword_1011E9810);
    sub_1001561FC();
    sub_1000414C8(&qword_10190A118, &qword_10190A120, &qword_101208EF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CD70);
  }

  return result;
}

unint64_t sub_1001561FC()
{
  result = qword_10190CD78;
  if (!qword_10190CD78)
  {
    sub_1000D6664(&qword_10190CD80, &qword_1011E9910);
    sub_100155B60();
    sub_100156A44(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CD78);
  }

  return result;
}

uint64_t sub_1001562D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for PlaceItemsView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_100156364()
{
  result = qword_10190CD90;
  if (!qword_10190CD90)
  {
    sub_1000D6664(&qword_10190CD88, &qword_1011E9918);
    sub_100156A44(&qword_10190CD98, type metadata accessor for PlaceItemRowViewModel, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CD90);
  }

  return result;
}

unint64_t sub_100156418()
{
  result = qword_10190CDA8;
  if (!qword_10190CDA8)
  {
    sub_1000D6664(&qword_10190CC88, &qword_1011E9860);
    sub_1000414C8(&qword_10190CDB0, &qword_10190CC90, &qword_1011E9868, &protocol conformance descriptor for TupleView<A>);
    sub_1001564D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CDA8);
  }

  return result;
}

unint64_t sub_1001564D0()
{
  result = qword_10190CDB8;
  if (!qword_10190CDB8)
  {
    sub_1000D6664(&qword_10190CC70, &qword_1011E9848);
    sub_100156A44(&qword_10190CDC0, &type metadata accessor for EmptyStateView, &protocol conformance descriptor for EmptyStateView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CDB8);
  }

  return result;
}

Swift::Int sub_1001565A8(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_100156748(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_100156980(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

Swift::Int sub_100156748(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 62)
  {
LABEL_25:
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v22 = a3;
    v29 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v22;
  }

  else
  {
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v29 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = a3;
  }

  v5 = 0;
  v6 = 0;
  v28 = v4 & 0xC000000000000001;
  v26 = v4 + 32;
  v30 = a4 + 56;
LABEL_4:
  v24 = v5;
  while (v6 != v29)
  {
    if (v28)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v27 + 16))
      {
        goto LABEL_24;
      }

      v7 = *(v26 + 8 * v6);
    }

    v8 = v7;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v10 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v11 = -1 << *(a4 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = 1 << v12;
    if (((1 << v12) & *(v30 + 8 * (v12 >> 6))) != 0)
    {
      type metadata accessor for PlaceItemRowViewModel(0);
      v15 = *(*(a4 + 48) + 8 * v12);
      v16 = static NSObject.== infix(_:_:)();

      if ((v16 & 1) == 0)
      {
        v17 = ~v11;
        do
        {
          v12 = (v12 + 1) & v17;
          v13 = v12 >> 6;
          v14 = 1 << v12;
          if (((1 << v12) & *(v30 + 8 * (v12 >> 6))) == 0)
          {
            goto LABEL_5;
          }

          v18 = *(*(a4 + 48) + 8 * v12);
          v19 = static NSObject.== infix(_:_:)();
        }

        while ((v19 & 1) == 0);
      }

      v20 = a1[v13];
      a1[v13] = v20 | v14;
      if ((v20 & v14) == 0)
      {
        v5 = v24 + 1;
        if (!__OFADD__(v24, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
        break;
      }
    }

    else
    {
LABEL_5:
    }
  }

  return sub_100155974(a1, a2, v24, a4, &qword_10190CDD8, &qword_1011E9930);
}

Swift::Int sub_100156980@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, Swift::Int *a3@<X8>)
{
  result = sub_100156748(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1001569B4()
{
  v1 = *(type metadata accessor for PlaceItemsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_100154548((v0 + v2), v4, v5);
}

uint64_t sub_100156A44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100156A94@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for PlaceItemsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10014F68C(a1, v6, a2);
}

uint64_t sub_100156B14()
{
  v1 = *(type metadata accessor for PlaceItemsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10014F820((v0 + v2), v3);
}

uint64_t sub_100156BA0()
{
  v1 = (type metadata accessor for PlaceItemsView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = type metadata accessor for EditMode();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1000CE6B8(&qword_10190CA30, &unk_101208E00);

  v7 = v1[14];
  sub_1000CE6B8(&qword_10190CBC8, &qword_1011EB460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for InterfaceIdiom();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v9 + 8, v2 | 7);
}

uint64_t sub_100156DC0(uint64_t a1)
{
  v3 = *(type metadata accessor for PlaceItemsView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10014FAB4(a1, (v1 + v4), v5);
}

unint64_t sub_100156E7C()
{
  result = qword_10190CE48;
  if (!qword_10190CE48)
  {
    sub_1000D6664(&qword_10190CE40, &unk_1011FA790);
    sub_1000D6664(&qword_10190CE50, &qword_1011E9A60);
    sub_1000D6664(&qword_10190CE58, &unk_1011FA7A0);
    sub_100156FA8();
    sub_1000E5580();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CE48);
  }

  return result;
}

unint64_t sub_100156FA8()
{
  result = qword_10190CE60;
  if (!qword_10190CE60)
  {
    sub_1000D6664(&qword_10190CE58, &unk_1011FA7A0);
    sub_10015702C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CE60);
  }

  return result;
}

unint64_t sub_10015702C()
{
  result = qword_10190CE68;
  if (!qword_10190CE68)
  {
    sub_1000D6664(&qword_10190CE70, &qword_1011E9A68);
    sub_1000414C8(&qword_10190CE78, &qword_10190CE80, &unk_1011FA7B0, &protocol conformance descriptor for VStack<A>);
    sub_1000414C8(&qword_10190CE88, &qword_10190CE90, &qword_1011E9A70, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CE68);
  }

  return result;
}

unint64_t sub_10015710C()
{
  result = qword_10190CEC0;
  if (!qword_10190CEC0)
  {
    sub_1000D6664(&qword_10190CEB8, &unk_1011EB7B0);
    sub_1000D6664(&qword_10190CEC8, &qword_1011E9A98);
    sub_1000D6664(&qword_10190CED0, &unk_1011EB7C0);
    sub_1000D6664(&qword_10190CED8, &qword_1011E9AA0);
    sub_1000414C8(&qword_10190CEE0, &qword_10190CED8, &qword_1011E9AA0, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000E5580();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CEC0);
  }

  return result;
}

unint64_t sub_1001572BC()
{
  result = qword_10190CF10;
  if (!qword_10190CF10)
  {
    sub_1000D6664(&qword_10190CF08, &unk_1012034D0);
    sub_1000D6664(&qword_10190CF18, &qword_1011E9AC8);
    sub_1001573C4();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190CF28, &qword_10190CF30, &qword_1012034E0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CF10);
  }

  return result;
}

unint64_t sub_1001573C4()
{
  result = qword_10190CF20;
  if (!qword_10190CF20)
  {
    sub_1000D6664(&qword_10190CF18, &qword_1011E9AC8);
    sub_1000414C8(&qword_10190CF28, &qword_10190CF30, &qword_1012034E0, &protocol conformance descriptor for VStack<A>);
    sub_10015747C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CF20);
  }

  return result;
}

unint64_t sub_10015747C()
{
  result = qword_10190CF38;
  if (!qword_10190CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190CF38);
  }

  return result;
}

id sub_1001574EC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_10015832C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v1 + OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider__state;
  v4 = *(v1 + OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider__state + 8);
  v5 = *(v1 + OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider__state + 32);
  v7 = *(v1 + OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider__state + 40);
  *a1 = *(v1 + OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider__state);
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v3 + 16);
  *(a1 + 32) = v5;
  *(a1 + 40) = v7;

  return v7;
}

uint64_t sub_1001575B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10015832C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider__state;
  v5 = *(v3 + OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider__state + 8);
  v7 = *(v3 + OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider__state + 32);
  v6 = *(v3 + OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider__state + 40);
  *a2 = *(v3 + OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider__state);
  *(a2 + 8) = v5;
  *(a2 + 16) = *(v4 + 16);
  *(a2 + 32) = v7;
  *(a2 + 40) = v6;
  v8 = v6;
}

uint64_t sub_100157664(_OWORD *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10015832C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_100157710(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = v2;
  v7 = *(a2 + 40);
  v3 = (a1 + OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider__state);
  v4 = *(a1 + OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider__state + 40);
  v5 = *(a2 + 32);
  v3[1] = *(a2 + 16);
  v3[2] = v5;
  *v3 = *a2;
  sub_1000D2DFC(&v9, v6, &unk_10190D010, &unk_1011E94A0);
  sub_1000D2DFC(&v8, v6, &unk_10190D010, &unk_1011E94A0);
  sub_1000D2DFC(&v7, v6, &unk_101916610, qword_1011E9BF0);
}

char *sub_1001577EC()
{
  ObjectType = swift_getObjectType();
  ObservationRegistrar.init()();
  v2 = [objc_opt_self() sharedInstance];
  v3 = &qword_10190C000;
  v4 = OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider_userInformationManager;
  *&v0[OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider_userInformationManager] = v2;
  v5 = [v2 loggedIn];
  v6 = [*&v0[v4] userName];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = [*&v0[v4] userEmail];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v3 = &qword_10190C000;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [*&v0[v4] loadedUserIcon];
  v17 = &v0[OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider__state];
  *v17 = v5;
  *(v17 + 1) = v8;
  *(v17 + 2) = v10;
  *(v17 + 3) = v13;
  *(v17 + 4) = v15;
  *(v17 + 5) = v16;
  v24.receiver = v0;
  v24.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v24, "init");
  v19 = *&v18[v3[491]];
  v20 = v18;
  v21 = [v19 observers];
  [v21 registerObserver:v20];

  sub_100157A98(&v25);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10015832C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v31 = v26;
  sub_100024F64(&v31, &unk_10190D010, &unk_1011E94A0);
  v30 = v27;
  sub_100024F64(&v30, &unk_10190D010, &unk_1011E94A0);
  v29 = v28;
  sub_100024F64(&v29, &unk_101916610, qword_1011E9BF0);

  return v20;
}

id sub_100157A98@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider_userInformationManager);
  v4 = [v3 loggedIn];
  v5 = [v3 userName];
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

  v10 = [v3 userEmail];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  result = [v3 loadedUserIcon];
  *a1 = v4;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 24) = v12;
  *(a1 + 32) = v14;
  *(a1 + 40) = result;
  return result;
}

id sub_100157BB4()
{
  ObjectType = swift_getObjectType();
  v2 = [*&v0[OBJC_IVAR____TtC4Maps34UserAccountInformationDataProvider_userInformationManager] observers];
  [v2 unregisterObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for UserAccountInformationDataProvider(uint64_t a1)
{
  result = qword_10190CF90;
  if (!qword_10190CF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100157DC4(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100157E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 112) = a4;
  type metadata accessor for MainActor();
  *(v4 + 120) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100157F04, v6, v5);
}

uint64_t sub_100157F04()
{
  v1 = *(v0 + 112);

  sub_100157A98(v0 + 16);
  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  *(v0 + 104) = v1;
  sub_10015832C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  *(v0 + 64) = *(v0 + 24);
  sub_100024F64(v0 + 64, &unk_10190D010, &unk_1011E94A0);
  *(v0 + 80) = *(v0 + 40);
  sub_100024F64(v0 + 80, &unk_10190D010, &unk_1011E94A0);
  *(v0 + 96) = *(v0 + 56);
  sub_100024F64(v0 + 96, &unk_101916610, qword_1011E9BF0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100158190(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1001581EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10015825C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_100157E6C(a1, v4, v5, v6);
}

unint64_t sub_10015832C()
{
  result = qword_10190D008;
  if (!qword_10190D008)
  {
    type metadata accessor for UserAccountInformationDataProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190D008);
  }

  return result;
}

uint64_t sub_10015839C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100158414()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100158488()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_1001585D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_pinnedLines);
  if (*(v1 + 16))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = objc_opt_self();

      v5 = [v4 standardUserDefaults];
      v6 = String._bridgeToObjectiveC()();
      v7 = [v5 BOOLForKey:v6];

      if ((v7 & 1) == 0)
      {
        if (*(v1 + 16))
        {
          v8 = swift_unknownObjectWeakLoadStrong();
          if (v8)
          {
            [v8 nearbyTransitViewControllerDidEncounterTeachableMoment:v3];
            swift_unknownObjectRelease();
          }
        }
      }

      swift_unknownObjectRelease();
    }
  }
}

id sub_100158710()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_1000CE6B8(&unk_10190D310, &qword_101200EE0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider__categories;
  v26 = _swiftEmptyArrayStorage;
  sub_1000CE6B8(&qword_10190D0B0, "l4&");
  Published.init(initialValue:)();
  (*(v9 + 32))(&v0[v12], v11, v8);
  v13 = OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_storeSubscriptionTypes;
  sub_100024578();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1011E1D30;
  *(v14 + 32) = type metadata accessor for CollectionTransitItem();
  *&v0[v13] = v14;
  *&v0[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_mapItemUpdater] = 0;
  *&v0[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_requestedLocation] = 0;
  v15 = &v0[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_requestedZoomLevel];
  *v15 = 0;
  v15[8] = 1;
  *&v0[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_geoNearbyTransitSchedule] = 0;
  *&v0[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_transitAttribution] = 0;
  *&v0[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_singleLocationUpdate] = 0;
  *&v0[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_pinnedLines] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v16 = &v0[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_viewDelegate];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v17 = [objc_opt_self() referenceDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  (*(v2 + 16))(v4, v7, v1);
  Published.init(initialValue:)();
  (*(v2 + 8))(v7, v1);
  swift_endAccess();
  swift_beginAccess();
  v25 = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  v0[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_isTrackingUser] = 0;
  v0[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_isActive] = 0;
  v18 = type metadata accessor for NearbyTransitDeparturesProvider(0);
  v24.receiver = v0;
  v24.super_class = v18;
  v19 = objc_msgSendSuper2(&v24, "init");
  type metadata accessor for MapsSyncStore();
  v20 = v19;
  v21 = static MapsSyncStore.sharedStore.getter();
  dispatch thunk of MapsSyncStore.subscribe(_:)();

  sub_1000CE6B8(&qword_1019083F0, &qword_1011E2EC0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v20 storeDidChange:isa];

  return v20;
}

id sub_100158B44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyTransitDeparturesProvider(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for NearbyTransitDeparturesProvider(uint64_t a1)
{
  result = qword_10190D090;
  if (!qword_10190D090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100158D70(uint64_t a1)
{
  sub_100158EC0(319);
  if (v1 <= 0x3F)
  {
    sub_100158F18(319);
    if (v2 <= 0x3F)
    {
      sub_100158F7C();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100158EC0(uint64_t a1)
{
  if (!qword_10190D0A0)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_10190D0A0);
    }
  }
}

void sub_100158F18(uint64_t a1)
{
  if (!qword_10190D0A8)
  {
    sub_1000D6664(&qword_10190D0B0, "l4&");
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_10190D0A8);
    }
  }
}

void sub_100158F7C()
{
  if (!qword_10190D0B8)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10190D0B8);
    }
  }
}

uint64_t sub_100158FCC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NearbyTransitDeparturesProvider(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

id sub_10015900C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedService];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v4 defaultTraits];

  if (!v6)
  {
    return v6;
  }

  v7 = [objc_allocWithZone(GEOTraitsTransitScheduleModeFilter) init];
  if (v7)
  {
    v8 = v7;
    [v7 setNumAdditionalDepartures:4];
    v9 = [objc_allocWithZone(GEOTraitsTransitScheduleTimeRange) init];
    [v8 setTimeRange:v9];

    v10 = [v8 timeRange];
    if (v10)
    {
      v11 = v10;
      [v10 setDuration:3600.0];
    }

    v12 = [v8 timeRange];
    if (v12)
    {
      v13 = v12;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      Date.timeIntervalSinceReferenceDate.getter();
      v15 = v14;
      (*(v1 + 8))(v3, v0);
      [v13 setStartTime:v15];
    }

    v16 = [objc_allocWithZone(GEOTraitsTransitScheduleFilter) init];
    v17 = v16;
    if (v16)
    {
      [v16 setHighFrequencyFilter:v8];
      [v17 setLowFrequencyFilter:v8];
    }

    [v6 setTransitTripStopTimeFilter:v17];
  }

  v18 = [v6 transitScheduleFilter];
  if (!v18)
  {
    return v6;
  }

  v19 = v18;
  result = [v18 highFrequencyFilter];
  if (result)
  {
    v21 = result;
    [result setNumAdditionalDepartures:4];

    result = [v19 lowFrequencyFilter];
    if (result)
    {
      v22 = result;
      [result setNumAdditionalDepartures:4];

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10015934C()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 sharedLocationManager];
  if (!v3)
  {
    __break(1u);
    goto LABEL_30;
  }

  v4 = v3;
  v5 = [v3 isLocationServicesAvailable];

  if ((v5 & 1) == 0)
  {
    if (qword_101906708 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100021540(v6, qword_10195FFB8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Requesting nearby departures based on the user location, but the location manager has insufficient privileges", v9, 2u);
    }
  }

  if (*(v1 + OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_isTrackingUser) == 1)
  {
    if (qword_101906708 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100021540(v10, qword_10195FFB8);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "Calling requestNearbyDeparturesForUserLocation, but already tracking the user's location", v12, 2u);
    }

    return;
  }

  *(v1 + OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_isTrackingUser) = 1;
  v13 = [v2 sharedLocationManager];
  if (!v13)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = [v13 hasLocation];

  if ((v15 & 1) != 0 || (v16 = [v2 sharedLocationManager]) == 0)
  {

    sub_1001598C0();
  }

  else
  {
    v17 = v16;
    if (qword_101906708 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100021540(v18, qword_10195FFB8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Location manager doesn't have a location yet, requesting a single update. Did we launch from the complication?", v21, 2u);
    }

    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10015E0F0;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100113C68;
    aBlock[3] = &unk_1016067C0;
    v23 = _Block_copy(aBlock);

    v24 = [v17 singleLocationUpdateWithHandler:v23];
    _Block_release(v23);
    *(v1 + OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_singleLocationUpdate) = v24;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (v24)
    {
      [v24 start];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1001597B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_101906708 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_10195FFB8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received a single location update, will request nearby departures", v6, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1001598C0();
  }
}

void sub_1001598C0()
{
  v1 = OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_isTrackingUser;
  if ((v0[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_requestedZoomLevel + 8] & 1) == 0 && (v0[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_isTrackingUser] & 1) == 0)
  {
    v2 = *&v0[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_requestedZoomLevel];
    GEOConfigGetDouble();
    if (v2 < v3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock[0]) = 6;
      v4 = v0;
      static Published.subscript.setter();
      return;
    }

    v1 = OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_isTrackingUser;
  }

  if (v0[v1] == 1)
  {
    v5 = [objc_opt_self() sharedLocationManager];
    if (!v5)
    {
      goto LABEL_9;
    }

    v6 = v5;
    v7 = [v5 currentLocation];

    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = *&v0[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_requestedLocation];
    v11 = v7;
    if (!v7)
    {
LABEL_9:
      if (qword_101906708 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100021540(v8, qword_10195FFB8);
      oslog = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v9, "Attempting to request nearby departures, but we don't have a lookup coordinate", v10, 2u);
      }

      goto LABEL_20;
    }
  }

  v12 = objc_opt_self();
  oslog = v7;
  v13 = [v12 sharedService];
  if (!v13)
  {

    goto LABEL_20;
  }

  v14 = v13;
  v15 = sub_10015900C();
  v16 = [objc_opt_self() sharedLocationManager];
  v17 = [v16 currentLocation];

  v18 = [v14 ticketForNearbyTransitDeparturesWithLookupOrigin:oslog userLocation:v17 traits:v15];
  if (!v18)
  {
LABEL_20:

    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 1;
  v19 = v0;
  static Published.subscript.setter();
  v20 = *&v19[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_mapItemUpdater];
  if (v20)
  {
    [v20 setActive:0];
  }

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10015E2E0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002B00C4;
  aBlock[3] = &unk_1016067E8;
  v22 = _Block_copy(aBlock);

  [v18 submitWithHandler:v22 networkActivity:0];
  _Block_release(v22);

  swift_unknownObjectRelease();
}

uint64_t sub_100159CD4(uint64_t a1)
{
  swift_getErrorValue();
  v1 = dispatch thunk of Error._domain.getter();
  v3 = v2;
  swift_getErrorValue();
  v4 = dispatch thunk of Error._code.getter();
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v5)
  {

    if (v4 == -1009)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) != 0 && v4 == -1009)
    {
      goto LABEL_16;
    }
  }

  v8 = GEOErrorDomain();
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v1 == v10 && v3 == v12)
    {

      if (v4 != -9)
      {
        goto LABEL_17;
      }

LABEL_16:
      v14 = 1;
      goto LABEL_24;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) != 0 && v4 == -9)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v15)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_24:

  return v14 & 1;
}

uint64_t sub_100159E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014C84(0, &qword_10190B4F0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a2;
  v13[4] = a1;
  aBlock[4] = sub_10015E2E8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_101606838;
  v14 = _Block_copy(aBlock);

  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100041318(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500, &unk_1011E4610);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v16);
}

void sub_10015A170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2)
    {
      swift_errorRetain();
      if (qword_101906708 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100021540(v7, qword_10195FFB8);
      swift_errorRetain();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v46[0] = v11;
        *v10 = 136315138;
        swift_getErrorValue();
        v12 = Error.localizedDescription.getter();
        v14 = sub_10004DEB8(v12, v13, v46);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v8, v9, "Error making request %s", v10, 0xCu);
        sub_10004E3D0(v11);
      }

      swift_getErrorValue();
      v15 = dispatch thunk of Error._domain.getter();
      v17 = v16;
      if (sub_100159CD4(a2))
      {

        swift_getKeyPath();
        swift_getKeyPath();
        v18 = 4;
LABEL_31:
        LOBYTE(v46[0]) = v18;
        static Published.subscript.setter();

        return;
      }

      v26 = GEOErrorDomain();
      if (v26)
      {
        v27 = v26;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        if (v15 == v28 && v17 == v30)
        {
        }

        else
        {
          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v35 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        swift_getErrorValue();
        if (dispatch thunk of Error._code.getter() == -8)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v18 = 5;
          goto LABEL_31;
        }
      }

      else
      {
      }

LABEL_30:
      swift_getKeyPath();
      swift_getKeyPath();
      v18 = 3;
      goto LABEL_31;
    }

    if (a3 && *(a3 + 16) && (sub_10004E374(a3 + 32, v46), sub_100014C84(0, &unk_101918390, MKMapItem_ptr), (swift_dynamicCast() & 1) != 0))
    {
      v19 = [v45 _transitInfo];
      if (v19 && (v20 = [v19 nearbySchedule], swift_unknownObjectRelease(), v20))
      {
        v21 = [objc_allocWithZone(MKTransitMapItemUpdater) initWithMapItem:v45 delegate:v6];
        [v21 setActive:v6[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_isActive]];
        v22 = *&v6[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_mapItemUpdater];
        *&v6[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_mapItemUpdater] = v21;
        v23 = v21;

        v24 = [v45 _transitAttribution];
        *&v6[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_transitAttribution] = v24;
        swift_unknownObjectRelease();
        *&v6[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_geoNearbyTransitSchedule] = v20;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        sub_10015A9C8();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (*(v46[0] + 16))
        {
          v25 = *(v46[0] + 48);
          swift_unknownObjectRetain();

          if (*(v25 + 16))
          {
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v46[0]) = 2;
            static Published.subscript.setter();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            return;
          }

          swift_unknownObjectRelease();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v46[0]) = 5;
        v40 = v6;
        static Published.subscript.setter();
        if (qword_101906708 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_100021540(v41, qword_10195FFB8);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v42, v43, "The first category has no groups", v44, 2u);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_101906708 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_100021540(v36, qword_10195FFB8);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "Missing schedule from response", v39, 2u);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v46[0]) = 5;
        static Published.subscript.setter();
      }
    }

    else
    {
      if (qword_101906708 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100021540(v31, qword_10195FFB8);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "No valid mapItems", v34, 2u);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v46[0]) = 5;
      static Published.subscript.setter();
    }
  }
}

id sub_10015A9C8()
{
  v1 = *&v0[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_geoNearbyTransitSchedule];
  if (!v1 || (v2 = [v1 categories]) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = static Published.subscript.modify();
    *v20 = _swiftEmptyArrayStorage;

    v19(&v26, 0);
  }

  v3 = v2;
  sub_1000CE6B8(&qword_10190D190, &unk_1011E9E68);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
LABEL_27:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_28:
    v25 = _swiftEmptyArrayStorage;
    goto LABEL_29;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_28;
  }

LABEL_5:
  v6 = 0;
  v25 = _swiftEmptyArrayStorage;
  do
  {
    v7 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v8 = *(v4 + 8 * v7 + 32);
        swift_unknownObjectRetain();
        v6 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      result = [v8 groups];
      if (!result)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v10 = result;
      sub_1000CE6B8(&qword_10190D198, &unk_1011E9E78);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = sub_10015AD18(v11);

      if (v12[2])
      {
        break;
      }

      swift_unknownObjectRelease();

      ++v7;
      if (v6 == v5)
      {
        goto LABEL_29;
      }
    }

    result = [v8 displayName];
    if (!result)
    {
      goto LABEL_31;
    }

    v13 = result;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v15;
    v24 = v14;

    v22 = [v8 artwork];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1003567F4(0, *(v25 + 2) + 1, 1, v25);
    }

    v17 = *(v25 + 2);
    v16 = *(v25 + 3);
    if (v17 >= v16 >> 1)
    {
      v25 = sub_1003567F4((v16 > 1), v17 + 1, 1, v25);
    }

    swift_unknownObjectRelease();
    *(v25 + 2) = v17 + 1;
    v18 = &v25[32 * v17];
    *(v18 + 4) = v24;
    *(v18 + 5) = v23;
    *(v18 + 6) = v12;
    *(v18 + 7) = v22;
  }

  while (v6 != v5);
LABEL_29:

  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v25;
  v21 = v0;
  return static Published.subscript.setter();
}

id sub_10015AD18(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  __chkstk_darwin(v4 - 8);
  v7 = &v187 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_276;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v8)
  {
    v10 = _swiftEmptyArrayStorage;
    v199 = _swiftEmptyArrayStorage;
LABEL_256:
    *&v231 = v10;
    sub_100247108(v199);
    return v231;
  }

  v9 = 0;
  v216 = OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_pinnedLines;
  v194 = a1 & 0xFFFFFFFFFFFFFF8;
  v195 = a1 & 0xC000000000000001;
  v193 = a1 + 32;
  v189 = "v24@?0@NSArray8@NSError16";
  v187 = a1;
  v188 = 0x800000010121F260;
  *&v5 = 136315138;
  v191 = v5;
  v199 = _swiftEmptyArrayStorage;
  v10 = _swiftEmptyArrayStorage;
  v213 = v2;
  v217 = v7;
  v192 = v8;
LABEL_5:
  v190 = v10;
  a1 = v9;
  while (1)
  {
    if (v195)
    {
      v221 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v11 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_274;
      }
    }

    else
    {
      if (a1 >= *(v194 + 16))
      {
        goto LABEL_275;
      }

      v221 = *(v193 + 8 * a1);
      swift_unknownObjectRetain();
      v11 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_274;
      }
    }

    v196 = a1;
    v197 = v11;
    v12 = v221;
    v219 = sub_10015FE24(v221);
    result = [v12 lineCells];
    if (!result)
    {
      goto LABEL_282;
    }

    v14 = result;
    sub_1000CE6B8(&qword_10190D200, &unk_1011E9E88);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v15 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v16)
    {
      if (qword_101906708 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100021540(v17, qword_10195FFB8);
      v18 = v221;
      swift_unknownObjectRetain();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        LODWORD(v229) = v20;
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *&v231 = v22;
        *v21 = v191;
        v23 = [v18 displayName];
        result = swift_unknownObjectRelease();
        if (!v23)
        {
          goto LABEL_288;
        }

        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        v27 = sub_10004DEB8(v24, v26, &v231);

        *(v21 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v19, v229, "Group %s has no line sections", v21, 0xCu);
        sub_10004E3D0(v22);

        v2 = v213;
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    result = [v221 lineCells];
    if (!result)
    {
      goto LABEL_281;
    }

    a1 = result;
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v28 >> 62)
    {
      break;
    }

    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v198 = v28;
    if (v29)
    {
      goto LABEL_22;
    }

LABEL_219:
    v204 = 0;
    v205 = 0;
    v206 = 1;
    v202 = &_swiftEmptySetSingleton;
    v203 = &_swiftEmptySetSingleton;
    v31 = _swiftEmptyArrayStorage;
    v200 = _swiftEmptyArrayStorage;
    v201 = _swiftEmptyArrayStorage;
LABEL_220:

    *&v231 = v201;

    sub_1002471FC(v143);
    v144 = v231;
    v145 = v203;

    v147 = sub_10015C77C(v146, v145);
    result = [v221 incidents];
    if (!result)
    {
      goto LABEL_283;
    }

    v148 = result;

    sub_1000CE6B8(&unk_10190A7F0, &unk_1011E9F00);
    v149 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v150 = sub_100160538(v149, v147, 0, 1);

    if (*(v144 + 16))
    {
      v207 = v31;
      v152 = v202;
      v151 = v203;
      if (v202[2] <= v203[2] >> 3)
      {
        *&v231 = v203;

        sub_10015F438(v152);
        v153 = v231;
      }

      else
      {

        v153 = sub_10015E854(v152, v151);
      }

      v154 = v221;
      v155 = sub_100160538(v150, v153, 1, 0);

      if ([swift_unknownObjectRetain() hasWalkingDetails])
      {
        v156 = sub_10040836C([v154 minWalkingTime], objc_msgSend(v154, "maxWalkingTime"));
        v158 = v157;
      }

      else
      {
        v156 = 0;
        v158 = 0;
      }

      result = [v154 displayName];
      if (!result)
      {
        goto LABEL_284;
      }

      v159 = result;
      v160 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v162 = v161;
      swift_unknownObjectRelease();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v199 = sub_1003563A0(0, *(v199 + 2) + 1, 1, v199);
      }

      v164 = *(v199 + 2);
      v163 = *(v199 + 3);
      if (v164 >= v163 >> 1)
      {
        v199 = sub_1003563A0((v163 > 1), v164 + 1, 1, v199);
      }

      v165 = v199;
      *(v199 + 2) = v164 + 1;
      v166 = &v165[64 * v164];
      *(v166 + 4) = v160;
      *(v166 + 5) = v162;
      *(v166 + 6) = v156;
      *(v166 + 7) = v158;
      *(v166 + 8) = v144;
      *(v166 + 9) = v155;
      v166[80] = 0;
      v167 = *(&v231 + 3);
      *(v166 + 81) = v231;
      *(v166 + 21) = v167;
      *(v166 + 11) = v196;
      v2 = v213;
      v7 = v217;
    }

    else
    {
    }

    if (*(v200 + 2))
    {
      if (v203[2] <= v202[2] >> 3)
      {
        *&v231 = v202;
        sub_10015F438(v203);

        v168 = v231;
      }

      else
      {
        v168 = sub_10015E854(v203, v202);
      }

      v229 = sub_100160538(v150, v168, 1, 0);

      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v239._object = v188;
      v169._object = (v189 | 0x8000000000000000);
      v239._countAndFlagsBits = 0xD000000000000023;
      v169._countAndFlagsBits = 0xD00000000000001DLL;
      v170._countAndFlagsBits = 0x4C2064656E6E6950;
      v170._object = 0xEC00000073656E69;
      v171 = NSLocalizedString(_:tableName:bundle:value:comment:)(v169, 0, qword_1019600D8, v170, v239);
      countAndFlagsBits = v171._countAndFlagsBits;
      object = v171._object;
      v174 = 0;
      v175 = 0;
      if ((v206 & 1) == 0)
      {
        v174 = sub_10040836C(v204, v205);
        v175 = v176;
      }

      v177 = v221;
      v178 = [v221 pinnedDisplayName];
      if (v178 || (v178 = [v177 displayName]) != 0)
      {
        v179 = v178;
        countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v181 = v180;

        object = v181;
      }

      else
      {
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v190 = sub_1003563A0(0, *(v190 + 2) + 1, 1, v190);
      }

      v183 = *(v190 + 2);
      v182 = *(v190 + 3);
      if (v183 >= v182 >> 1)
      {
        v190 = sub_1003563A0((v182 > 1), v183 + 1, 1, v190);
      }

      swift_unknownObjectRelease();
      v184 = v190;
      *(v190 + 2) = v183 + 1;
      v185 = &v184[64 * v183];
      *(v185 + 4) = countAndFlagsBits;
      *(v185 + 5) = object;
      *(v185 + 6) = v174;
      *(v185 + 7) = v175;
      v186 = v229;
      *(v185 + 8) = v200;
      *(v185 + 9) = v186;
      v185[80] = 1;
      LODWORD(v186) = *(&v231 + 3);
      *(v185 + 81) = v231;
      *(v185 + 21) = v186;
      v9 = v197;
      *(v185 + 11) = v196;
      v10 = v184;
      v2 = v213;
      if (v9 == v192)
      {
        goto LABEL_256;
      }

      goto LABEL_5;
    }

    swift_unknownObjectRelease();

    a1 = v197;
    if (v197 == v192)
    {
LABEL_262:
      v10 = v190;
      goto LABEL_256;
    }
  }

  v29 = _CocoaArrayWrapper.endIndex.getter();
  v198 = v28;
  if (!v29)
  {
    goto LABEL_219;
  }

LABEL_22:
  v204 = 0;
  v205 = 0;
  v210 = v28 & 0xFFFFFFFFFFFFFF8;
  v211 = v28 & 0xC000000000000001;
  v209 = v28 + 32;
  v30 = 0;
  v206 = 1;
  v200 = _swiftEmptyArrayStorage;
  v201 = _swiftEmptyArrayStorage;
  v31 = _swiftEmptyArrayStorage;
  v202 = &_swiftEmptySetSingleton;
  v203 = &_swiftEmptySetSingleton;
  v208 = v29;
  while (2)
  {
    v207 = v31;
    while (1)
    {
      if (v211)
      {
        v218 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v32 = __OFADD__(v30, 1);
        v33 = v30 + 1;
        if (v32)
        {
          goto LABEL_268;
        }
      }

      else
      {
        if (v30 >= *(v210 + 16))
        {
          goto LABEL_269;
        }

        v218 = *(v209 + 8 * v30);
        swift_unknownObjectRetain();
        v32 = __OFADD__(v30, 1);
        v33 = v30 + 1;
        if (v32)
        {
          goto LABEL_268;
        }
      }

      v235 = _swiftEmptyArrayStorage;
      v236 = _swiftEmptyArrayStorage;
      result = [v218 departureSequences];
      if (!result)
      {
        goto LABEL_280;
      }

      v34 = result;
      sub_1000CE6B8(&qword_10190D208, &qword_1011E9E98);
      v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v225 = v35 & 0xFFFFFFFFFFFFFF8;
      if (v35 >> 62)
      {
        v36 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v214 = v33;
      v215 = v35;
      v212 = v36 != 0;
      if (v36)
      {
        v37 = 0;
        LODWORD(v226) = 0;
        v38 = _swiftEmptyArrayStorage;
        v39 = 0;
        v223 = v35 + 32;
        v224 = v35 & 0xC000000000000001;
        v220 = _swiftEmptyArrayStorage;
        v40 = _swiftEmptyArrayStorage;
        v227 = _swiftEmptyArrayStorage;
        v222 = v36;
        while (1)
        {
          v229 = v40;
          if (v224)
          {
            v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v32 = __OFADD__(v37++, 1);
            if (v32)
            {
              goto LABEL_257;
            }
          }

          else
          {
            if (v37 >= *(v225 + 16))
            {
              goto LABEL_258;
            }

            v41 = *(v223 + 8 * v37);
            swift_unknownObjectRetain();
            v32 = __OFADD__(v37++, 1);
            if (v32)
            {
LABEL_257:
              __break(1u);
LABEL_258:
              __break(1u);
LABEL_259:
              __break(1u);
LABEL_260:
              __break(1u);
LABEL_261:
              __break(1u);
              goto LABEL_262;
            }
          }

          result = [v41 line];
          if (!result)
          {
            __break(1u);
            goto LABEL_278;
          }

          v42 = [result muid];
          swift_unknownObjectRelease();
          v43 = v229;
          v228 = v38;
          if (v229 >> 62)
          {
            v44 = _CocoaArrayWrapper.endIndex.getter();
            v43 = v229;
            if (!v44)
            {
              goto LABEL_45;
            }
          }

          else
          {
            v44 = *((v229 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v44)
            {
              goto LABEL_45;
            }
          }

          v32 = __OFSUB__(v44, 1);
          v45 = v44 - 1;
          if (v32)
          {
            goto LABEL_259;
          }

          if ((v43 & 0xC000000000000001) != 0)
          {
            v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v45 & 0x8000000000000000) != 0)
            {
              goto LABEL_260;
            }

            if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_261;
            }

            v46 = *(v43 + 8 * v45 + 32);
            swift_unknownObjectRetain();
          }

          v47 = [v46 muid];
          swift_unknownObjectRelease();
          if (v42 == v47)
          {
            goto LABEL_84;
          }

LABEL_45:
          v48 = [v41 line];
          if (!v48)
          {
            goto LABEL_84;
          }

          v49 = v48;
          swift_unknownObjectRetain();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v236 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v236 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v229 = v236;
          if ((v226 & 1) == 0)
          {
            v51 = *(v2 + v216);

            v52 = [v49 muid];
            if (!*(v51 + 16) || (v53 = v52, v54 = static Hasher._hash(seed:_:)(), v55 = -1 << *(v51 + 32), v56 = v54 & ~v55, ((*(v51 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0))
            {
LABEL_56:

              LODWORD(v226) = 0;
              a1 = v219;
              if (v39)
              {
                v50 = 1;
                goto LABEL_59;
              }

LABEL_58:
              v58 = [v218 isSignificant];
              v50 = v226 & v58;
              goto LABEL_59;
            }

            v57 = ~v55;
            while (*(*(v51 + 48) + 8 * v56) != v53)
            {
              v56 = (v56 + 1) & v57;
              if (((*(v51 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
              {
                goto LABEL_56;
              }
            }
          }

          LODWORD(v226) = 1;
          v50 = 1;
          a1 = v219;
          if ((v39 & 1) == 0)
          {
            goto LABEL_58;
          }

LABEL_59:
          v59 = [v49 muid];
          if (*(a1 + 16))
          {
            v60 = sub_100298E64(v59);
            if (v61)
            {
              v62 = *(*(a1 + 56) + 8 * v60);
              if (v62 >> 62)
              {
                v7 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v7 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              if (v220 >> 62)
              {
                if (__OFADD__(_CocoaArrayWrapper.endIndex.getter(), v7))
                {
LABEL_263:
                  __break(1u);
LABEL_264:
                  __break(1u);
LABEL_265:
                  __break(1u);
LABEL_266:
                  __break(1u);
LABEL_267:
                  __break(1u);
LABEL_268:
                  __break(1u);
LABEL_269:
                  __break(1u);
LABEL_270:
                  __break(1u);
LABEL_271:
                  __break(1u);
LABEL_272:
                  __break(1u);
LABEL_273:
                  __break(1u);
LABEL_274:
                  __break(1u);
LABEL_275:
                  __break(1u);
LABEL_276:
                  v8 = _CocoaArrayWrapper.endIndex.getter();
                  goto LABEL_3;
                }
              }

              else if (__OFADD__(*((v220 & 0xFFFFFFFFFFFFFF8) + 0x10), v7))
              {
                goto LABEL_263;
              }

              sub_10024A698();
              v220 = v235;
              v63 = v235 & 0xFFFFFFFFFFFFFF8;
              sub_1002491DC((v235 & 0xFFFFFFFFFFFFFF8) + 8 * *((v235 & 0xFFFFFFFFFFFFFF8) + 0x10) + 32, (*((v235 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v235 & 0xFFFFFFFFFFFFFF8) + 0x10), v62);
              a1 = v64;

              if (a1 < v7)
              {
                goto LABEL_264;
              }

              v7 = v217;
              if (a1 >= 1)
              {
                v65 = *(v63 + 16);
                v32 = __OFADD__(v65, a1);
                v66 = v65 + a1;
                if (v32)
                {
                  goto LABEL_267;
                }

                *(v63 + 16) = v66;
              }

              a1 = v219;
              v235 = v220;
            }
          }

          v67 = [v49 system];
          if (v67)
          {
            v68 = [v67 muid];
            if (*(a1 + 16))
            {
              v69 = sub_100298E64(v68);
              if (v70)
              {
                v7 = *(*(a1 + 56) + 8 * v69);
                if (v7 >> 62)
                {
                  v71 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v71 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if (v220 >> 62)
                {
                  v91 = _CocoaArrayWrapper.endIndex.getter();
                  v2 = v91 + v71;
                  if (__OFADD__(v91, v71))
                  {
                    goto LABEL_265;
                  }
                }

                else
                {
                  v72 = *((v220 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  v2 = v72 + v71;
                  if (__OFADD__(v72, v71))
                  {
                    goto LABEL_265;
                  }
                }

                sub_10024A698();
                v220 = v235;
                v2 = v235 & 0xFFFFFFFFFFFFFF8;
                sub_1002491DC((v235 & 0xFFFFFFFFFFFFFF8) + 8 * *((v235 & 0xFFFFFFFFFFFFFF8) + 0x10) + 32, (*((v235 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v235 & 0xFFFFFFFFFFFFFF8) + 0x10), v7);
                a1 = v73;

                if (a1 < v71)
                {
                  goto LABEL_266;
                }

                v7 = v217;
                if (a1 >= 1)
                {
                  v74 = *(v2 + 16);
                  v32 = __OFADD__(v74, a1);
                  v75 = v74 + a1;
                  if (v32)
                  {
                    goto LABEL_270;
                  }

                  *(v2 + 16) = v75;
                }

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                v235 = v220;
                v39 = v50;
                v2 = v213;
                goto LABEL_84;
              }
            }

            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          v39 = v50;
LABEL_84:
          swift_getKeyPath();
          swift_getKeyPath();
          swift_unknownObjectRetain();
          static Published.subscript.getter();

          sub_1004F5A8C(v41, v7, [v221 groupType], v237);
          if ((*(&v237[0] + 1) & 0x2000000000000000) != 0)
          {
            v76 = HIBYTE(*(&v237[0] + 1)) & 0xFLL;
          }

          else
          {
            v76 = *&v237[0] & 0xFFFFFFFFFFFFLL;
          }

          v38 = v228;
          if (v76)
          {
            sub_1001603D8(v237, &v231);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v227 = sub_1003566CC(0, *(v227 + 2) + 1, 1, v227);
            }

            v78 = *(v227 + 2);
            v77 = *(v227 + 3);
            v79 = v78 + 1;
            if (v78 >= v77 >> 1)
            {
              v80 = sub_1003566CC((v77 > 1), v78 + 1, 1, v227);
              v227 = v80;
            }

            else
            {
              v80 = v227;
            }
          }

          else
          {
            sub_1001603D8(v237, &v231);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v38 = sub_1003566CC(0, *(v38 + 2) + 1, 1, v38);
            }

            v78 = *(v38 + 2);
            v81 = *(v38 + 3);
            v79 = v78 + 1;
            if (v78 >= v81 >> 1)
            {
              v80 = sub_1003566CC((v81 > 1), v78 + 1, 1, v38);
              v38 = v80;
            }

            else
            {
              v80 = v38;
            }
          }

          *(v80 + 2) = v79;
          v82 = &v80[88 * v78];
          v83 = v237[1];
          *(v82 + 2) = v237[0];
          *(v82 + 3) = v83;
          v84 = v237[2];
          v85 = v237[3];
          v86 = v237[4];
          *(v82 + 14) = v238;
          *(v82 + 5) = v85;
          *(v82 + 6) = v86;
          *(v82 + 4) = v84;
          if ((v39 & 1) != 0 && [v41 hasWalkingETA])
          {
            v87 = v206;
            v88 = [v41 walkingETA];
            if (v87)
            {
              v205 = [v41 walkingETA];
              sub_100160434(v237);
              swift_unknownObjectRelease();
              v204 = v88;
            }

            else
            {
              sub_100160434(v237);
              swift_unknownObjectRelease();
              if (v204 >= v88)
              {
                v89 = v88;
              }

              else
              {
                v89 = v204;
              }

              v90 = v205;
              if (v205 <= v88)
              {
                v90 = v88;
              }

              v204 = v89;
              v205 = v90;
            }

            v206 = 0;
            v39 = 1;
            v40 = v229;
            if (v37 == v222)
            {
              goto LABEL_126;
            }
          }

          else
          {
            sub_100160434(v237);
            swift_unknownObjectRelease();
            v40 = v229;
            if (v37 == v222)
            {
              v212 = v39;
LABEL_126:
              v31 = v207;
              v92 = v227;
              goto LABEL_128;
            }
          }
        }
      }

      v38 = _swiftEmptyArrayStorage;
      v92 = _swiftEmptyArrayStorage;
      v229 = _swiftEmptyArrayStorage;
      v220 = _swiftEmptyArrayStorage;
LABEL_128:

      v93 = *(v92 + 2);
      v227 = v92;

      if (!v93)
      {
        v92 = v38;
      }

      v94 = v229;
      a1 = v229 >> 62;
      if (!(v229 >> 62))
      {
        result = *((v229 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          break;
        }

        goto LABEL_132;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      v94 = v229;
      if (result)
      {
        break;
      }

LABEL_132:

      swift_unknownObjectRelease();

      v30 = v214;
      if (v214 == v208)
      {
        goto LABEL_220;
      }
    }

    v225 = a1;
    v226 = v94 & 0xC000000000000001;
    LODWORD(v224) = v93 != 0;
    if ((v94 & 0xC000000000000001) != 0)
    {
      v223 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      a1 = v220;
LABEL_142:
      v228 = v38;
      *&v231 = _swiftEmptyArrayStorage;
      if (a1 >> 62)
      {
        v95 = _CocoaArrayWrapper.endIndex.getter();
        if (v95)
        {
LABEL_144:
          v96 = 0;
          v7 = v220 & 0xFFFFFFFFFFFFFF8;
          v2 = v220 + 32;
          while (v96 < *(v7 + 16))
          {
            if ([swift_unknownObjectRetain() isBlockingIncident])
            {
              swift_unknownObjectRelease();
            }

            else
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              a1 = &v231;
              specialized ContiguousArray._endMutation()();
            }

            if (v95 == ++v96)
            {
              goto LABEL_152;
            }
          }

          goto LABEL_271;
        }
      }

      else
      {
        v95 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v95)
        {
          goto LABEL_144;
        }
      }

LABEL_152:
      if ((v231 & 0x8000000000000000) != 0 || (v231 & 0x4000000000000000) != 0)
      {
        v97 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v97 = *(v231 + 16);
      }

      v98 = v218;
      result = [v221 displayName];
      if (!result)
      {
        goto LABEL_287;
      }

      v99 = result;

      v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v222 = v101;

      result = [swift_unknownObjectRetain() displayName];
      if (!result)
      {
        goto LABEL_286;
      }

      v102 = result;
      v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v105 = v104;

      result = [v98 artworks];
      if (!result)
      {
        goto LABEL_285;
      }

      v106 = result;
      v107 = v212 & v224;
      LODWORD(v215) = v97 != 0;
      LODWORD(v224) = v93 != 0;
      sub_1000CE6B8(&unk_10190D270, &unk_1011E9EF0);
      v108 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      swift_unknownObjectRelease();

      *&v231 = v103;
      *(&v231 + 1) = v105;
      *&v232 = v92;
      *(&v232 + 1) = v223;
      LOBYTE(v233) = v107;
      *(&v233 + 1) = v108;
      LOBYTE(v234[0]) = v215;
      *(&v234[0] + 1) = v100;
      *&v234[1] = v222;
      BYTE8(v234[1]) = v224;
      LODWORD(v224) = v107;
      if (v107)
      {
        sub_100160488(&v231, v230);
        v109 = v200;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v7 = v217;
        v111 = _swiftEmptyArrayStorage;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v109 = sub_1003564AC(0, *(v109 + 2) + 1, 1, v109);
        }

        v113 = *(v109 + 2);
        v112 = *(v109 + 3);
        v114 = v113 + 1;
        v115 = v229;
        if (v113 >= v112 >> 1)
        {
          v116 = sub_1003564AC((v112 > 1), v113 + 1, 1, v109);
          v115 = v229;
          v109 = v116;
        }

        else
        {
          v116 = v109;
        }

LABEL_173:
        *(v116 + 2) = v114;
        v121 = &v116[80 * v113];
        *(v121 + 2) = v231;
        v122 = v232;
        v123 = v233;
        v124 = v234[0];
        *(v121 + 89) = *(v234 + 9);
        *(v121 + 4) = v123;
        *(v121 + 5) = v124;
        *(v121 + 3) = v122;
        v125 = v225;
        if (v225)
        {
          v136 = _CocoaArrayWrapper.endIndex.getter();
          v115 = v229;
          v126 = v136;
          if (!v136)
          {
LABEL_175:
            v2 = v115 & 0xFFFFFFFFFFFFFF8;
            if (!v125)
            {
              goto LABEL_176;
            }

            goto LABEL_204;
          }
        }

        else
        {
          v126 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v126)
          {
            goto LABEL_175;
          }
        }

        v230[0] = _swiftEmptyArrayStorage;
        result = sub_100511374(0, v126 & ~(v126 >> 63), 0);
        if (v126 < 0)
        {
          goto LABEL_279;
        }

        v137 = 0;
        v111 = v230[0];
        do
        {
          if (v226)
          {
            v138 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v138 = *(v229 + 8 * v137 + 32);
            swift_unknownObjectRetain();
          }

          v139 = [v138 muid];
          swift_unknownObjectRelease();
          v230[0] = v111;
          v141 = v111[2];
          v140 = v111[3];
          if (v141 >= v140 >> 1)
          {
            sub_100511374((v140 > 1), v141 + 1, 1);
            v111 = v230[0];
          }

          ++v137;
          v111[2] = v141 + 1;
          v111[v141 + 4] = v139;
        }

        while (v126 != v137);
        v115 = v229;
        v2 = v229 & 0xFFFFFFFFFFFFFF8;
        if (!v225)
        {
LABEL_176:
          a1 = *(v2 + 16);
          v200 = v109;
          if (a1)
          {
            goto LABEL_177;
          }

          goto LABEL_205;
        }

LABEL_204:
        v142 = _CocoaArrayWrapper.endIndex.getter();
        v115 = v229;
        a1 = v142;
        v200 = v109;
        if (v142)
        {
LABEL_177:
          v127 = 0;
          v128 = _swiftEmptyArrayStorage;
          do
          {
            v129 = v127;
            while (1)
            {
              if (v226)
              {
                v130 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v127 = v129 + 1;
                if (__OFADD__(v129, 1))
                {
                  goto LABEL_272;
                }
              }

              else
              {
                if (v129 >= *(v2 + 16))
                {
                  goto LABEL_273;
                }

                v130 = *(v115 + 8 * v129 + 32);
                swift_unknownObjectRetain();
                v127 = v129 + 1;
                if (__OFADD__(v129, 1))
                {
                  goto LABEL_272;
                }
              }

              v131 = [v130 system];
              if (v131)
              {
                break;
              }

              swift_unknownObjectRelease();
              ++v129;
              v115 = v229;
              if (v127 == a1)
              {
                goto LABEL_206;
              }
            }

            v132 = [v131 muid];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v128 = sub_1003565C8(0, *(v128 + 2) + 1, 1, v128);
            }

            v134 = *(v128 + 2);
            v133 = *(v128 + 3);
            v115 = v229;
            if (v134 >= v133 >> 1)
            {
              v135 = sub_1003565C8((v133 > 1), v134 + 1, 1, v128);
              v115 = v229;
              v128 = v135;
            }

            *(v128 + 2) = v134 + 1;
            *&v128[8 * v134 + 32] = v132;
          }

          while (v127 != a1);
LABEL_206:

          v230[0] = v111;
          sub_1002472F4(v128);
          a1 = sub_100455250(v230[0]);

          if (v224)
          {
            v203 = sub_10015C77C(a1, v203);
          }

          else
          {
            v202 = sub_10015C77C(a1, v202);
          }

          v2 = v213;
          v30 = v214;
          v31 = v207;
          sub_1001604E4(&v231);
          swift_unknownObjectRelease();
          if (v30 == v208)
          {
            goto LABEL_220;
          }

          continue;
        }

LABEL_205:
        v128 = _swiftEmptyArrayStorage;
        goto LABEL_206;
      }

      v7 = v217;
      v111 = _swiftEmptyArrayStorage;
      if (v93)
      {
        sub_100160488(&v231, v230);
        v117 = v201;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v201 = sub_1003564AC(0, *(v117 + 2) + 1, 1, v117);
        }

        v109 = v200;
        v118 = v201;
        v113 = *(v201 + 2);
        v119 = *(v201 + 3);
        v114 = v113 + 1;
        if (v113 >= v119 >> 1)
        {
          v116 = sub_1003564AC((v119 > 1), v113 + 1, 1, v201);
          v201 = v116;
LABEL_172:
          v115 = v229;
          goto LABEL_173;
        }
      }

      else
      {
        sub_100160488(&v231, v230);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v207 = sub_1003564AC(0, *(v207 + 2) + 1, 1, v207);
        }

        v109 = v200;
        v118 = v207;
        v113 = *(v207 + 2);
        v120 = *(v207 + 3);
        v114 = v113 + 1;
        if (v113 >= v120 >> 1)
        {
          v116 = sub_1003564AC((v120 > 1), v113 + 1, 1, v207);
          v207 = v116;
          goto LABEL_172;
        }
      }

      v116 = v118;
      goto LABEL_172;
    }

    break;
  }

  a1 = v220;
  if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v223 = *(v94 + 32);
    swift_unknownObjectRetain();
    goto LABEL_142;
  }

LABEL_278:
  __break(1u);
LABEL_279:
  __break(1u);
LABEL_280:
  __break(1u);
LABEL_281:
  __break(1u);
LABEL_282:
  __break(1u);
LABEL_283:
  __break(1u);
LABEL_284:
  __break(1u);
LABEL_285:
  __break(1u);
LABEL_286:
  __break(1u);
LABEL_287:
  __break(1u);
LABEL_288:
  __break(1u);
  return result;
}

uint64_t sub_10015C77C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_100307530(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10015CB78()
{
  result = qword_10190D120;
  if (!qword_10190D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190D120);
  }

  return result;
}

uint64_t sub_10015CBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_10015CCE8, 0, 0);
}

uint64_t sub_10015CCE8()
{
  type metadata accessor for CollectionTransitItemRequest();
  *(v0 + 184) = CollectionTransitItemRequest.__allocating_init()();
  v3 = (&async function pointer to dispatch thunk of CollectionTransitItemRequest.fetch() + async function pointer to dispatch thunk of CollectionTransitItemRequest.fetch());
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_10015CDA0;

  return v3();
}

uint64_t sub_10015CDA0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_10015D154;
  }

  else
  {

    *(v4 + 208) = a1;
    v5 = sub_10015CED0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10015CED0()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[19];
  v13 = v0[21];
  v14 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  sub_100014C84(0, &qword_10190B4F0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v6 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v1;
  v0[6] = sub_100160AB0;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100039C64;
  v0[5] = &unk_1016068B0;
  v9 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[15] = _swiftEmptyArrayStorage;
  sub_100041318(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500, &unk_1011E4610);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v5 + 8))(v3, v4);
  (*(v13 + 8))(v2, v14);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10015D154()
{
  v12 = v0;

  if (qword_101906708 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FFB8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_10004DEB8(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error syncing transit lines : %s", v4, 0xCu);
    sub_10004E3D0(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}