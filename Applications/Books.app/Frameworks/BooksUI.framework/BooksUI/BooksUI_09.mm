void *sub_EF224@<X0>(_BYTE *a1@<X8>)
{
  sub_EFDF0();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

double EnvironmentValues.appliedPageMargin.getter()
{
  sub_EF2FC();
  sub_261CB0();
  return v1;
}

unint64_t sub_EF2FC()
{
  result = qword_31D738;
  if (!qword_31D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D738);
  }

  return result;
}

double sub_EF350@<D0>(double *a1@<X8>)
{
  sub_EF2FC();
  sub_261CB0();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_EF3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_6EBA4();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.pageMaxContentWidth.getter()
{
  sub_EF494();
  sub_261CB0();
  return v1;
}

unint64_t sub_EF494()
{
  result = qword_31D740;
  if (!qword_31D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D740);
  }

  return result;
}

double EnvironmentValues.pageContentWidthWithinMargins.getter()
{
  sub_261930();
  v1 = v0;
  sub_EF494();
  sub_261CB0();
  if (v7 == 1)
  {
    *&v2 = COERCE_DOUBLE(sub_261950());
    if (v3)
    {
      goto LABEL_7;
    }

    v4 = *&v2;
  }

  else
  {
    v4 = v6;
  }

  if (v4 < v1)
  {
    v1 = v4;
  }

LABEL_7:
  sub_EF2FC();
  sub_261CB0();
  return v1 - (v6 + v6);
}

uint64_t View.applyPageMargin(_:marginType:)(char a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  *&v7 = swift_getKeyPath();
  BYTE8(v7) = 0;
  *&v8 = swift_getKeyPath();
  BYTE8(v8) = 0;
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  *&v9[16] = swift_getKeyPath();
  v9[24] = 0;
  v9[25] = a1;
  v9[26] = v5;
  sub_262E30();
  v10[0] = v7;
  v10[1] = v8;
  v11[0] = *v9;
  *(v11 + 11) = *&v9[11];
  return sub_EF908(v10);
}

void *sub_EF694@<X0>(_BYTE *a1@<X8>)
{
  sub_EFDF0();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

double sub_EF730@<D0>(double *a1@<X8>)
{
  sub_EF2FC();
  sub_261CB0();
  result = v3;
  *a1 = v3;
  return result;
}

void *sub_EF7D0@<X0>(_BYTE *a1@<X8>)
{
  sub_EFD9C();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

void *sub_EF820@<X0>(_BYTE *a1@<X8>)
{
  sub_EFD9C();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

unint64_t sub_EF93C()
{
  result = qword_31D748;
  if (!qword_31D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D748);
  }

  return result;
}

void *sub_EF990@<X0>(uint64_t a1@<X8>)
{
  sub_EF494();
  result = sub_261CB0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_EFA4C(void *a1)
{
  sub_261730();
  sub_EFAB0();
  return swift_getWitnessTable();
}

unint64_t sub_EFAB0()
{
  result = qword_31D750;
  if (!qword_31D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D750);
  }

  return result;
}

__n128 sub_EFB04(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_EFB20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 59))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_EFB68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 59) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 59) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_EFC0C()
{
  result = qword_31D778;
  if (!qword_31D778)
  {
    sub_2F9C(&qword_31D758, &qword_276200);
    sub_8E38(&qword_31D780, &qword_31D770, &qword_276218, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D778);
  }

  return result;
}

uint64_t sub_EFCC4(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31D758, &qword_276200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EFD2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31D768, &qword_276210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_EFD9C()
{
  result = qword_31D790;
  if (!qword_31D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D790);
  }

  return result;
}

unint64_t sub_EFDF0()
{
  result = qword_31D798;
  if (!qword_31D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D798);
  }

  return result;
}

unint64_t sub_EFE48()
{
  result = qword_31D7A0;
  if (!qword_31D7A0)
  {
    sub_2F9C(&qword_31D788, &qword_276220);
    sub_EFF00();
    sub_8E38(&qword_318ED0, &qword_318ED8, &unk_276230, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D7A0);
  }

  return result;
}

unint64_t sub_EFF00()
{
  result = qword_31D7A8;
  if (!qword_31D7A8)
  {
    sub_2F9C(&qword_31D768, &qword_276210);
    sub_2F9C(&qword_31D758, &qword_276200);
    sub_EFC0C();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31D7B0, &qword_31D7B8, &qword_276228, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D7A8);
  }

  return result;
}

double PageMarginConfiguration.basicMargin(isCompact:isInModal:)(uint64_t a1, char a2, __n128 a3)
{
  if (a2)
  {
    v4 = sub_2634F0();
    result = 32.0;
    if (v4)
    {
      return 20.0;
    }
  }

  else
  {
    result = 32.0;
    if (*v3)
    {
      result = 16.0;
    }

    if ((a1 & 1) == 0)
    {
      return 40.0;
    }
  }

  return result;
}

void *EnvironmentValues.pageMarginConfiguration.getter()
{
  sub_EFDF0();

  return sub_261CB0();
}

uint64_t static PageMarginConfiguration.default.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_31D7C0;
  return result;
}

uint64_t static PageMarginConfiguration.default.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_31D7C0 = v1;
  return result;
}

uint64_t (*EnvironmentValues.pageMarginConfiguration.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_EFDF0();
  sub_261CB0();
  return sub_F0244;
}

uint64_t sub_F027C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_31D7C0;
  return result;
}

uint64_t sub_F02C8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_31D7C0 = v1;
  return result;
}

double View.animateIn()(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_262A90();

  return result;
}

uint64_t EnvironmentValues.isAnimatableIn.getter()
{
  sub_F0520();
  sub_261CB0();
  return v1;
}

void *sub_F03E8@<X0>(_BYTE *a1@<X8>)
{
  sub_F0520();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

void *sub_F0438@<X0>(_BYTE *a1@<X8>)
{
  sub_F0520();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

unint64_t sub_F0520()
{
  result = qword_31D7C8;
  if (!qword_31D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D7C8);
  }

  return result;
}

uint64_t (*EnvironmentValues.isAnimatableIn.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_F0520();
  sub_261CB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_F0618;
}

uint64_t sub_F0650(uint64_t *a1)
{
  sub_2F9C(&qword_3171D8, &qword_26B730);
  sub_261730();
  sub_F06C8();
  return swift_getWitnessTable();
}

unint64_t sub_F06C8()
{
  result = qword_3171E0;
  if (!qword_3171E0)
  {
    sub_2F9C(&qword_3171D8, &qword_26B730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3171E0);
  }

  return result;
}

void *sub_F073C@<X0>(_BYTE *a1@<X8>)
{
  sub_6E1E4();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

double sub_F07D8()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (v0[8] == 1)
  {
    return *v0;
  }

  sub_264900();
  v7 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_3074(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

uint64_t sub_F0924()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v0 + 16);
  v6 = *(v0 + 24);
  if (*(v0 + 25) != 1)
  {
    v7 = *(v0 + 16);

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    v9 = sub_F5DAC(v7, v6, 0);
    (*(v2 + 8))(v4, v1, v9);
    return v10;
  }

  return result;
}

uint64_t sub_F0A80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_318148, &unk_26AEE0);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_F65FC(v2 + *(a1 + 60), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_261690();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_264900();
    v14 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_F0C6C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 64);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_264900();
    v11 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

void ShelfCollage.columnWidth.getter(uint64_t a1)
{
  v3 = sub_261690();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_F0C6C(a1, &v15);
  v7 = (v1 + *(a1 + 84));
  v8 = v7[1];
  v9 = v7[2];
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[5];
  v14[0] = *v7;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v10;
  v14[4] = v11;
  v14[5] = v12;

  sub_F0A80(a1, v6);
  ShelfGridBreakpoint.resolveColumns(for:dynamicTypeSize:)(v14, v6);
  (*(v4 + 8))(v6, v3);

  sub_260C10();
  sub_260BE0();
  sub_260BF0();
  sub_F07D8();
}

__n128 ShelfCollage.init(_:padding:spacing:gridType:itemContent:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = *a4;
  v32 = a4[5];
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  *(a9 + 16) = swift_getKeyPath();
  *(a9 + 24) = 0;
  v35[0] = a7;
  v35[1] = a8;
  v35[2] = a10;
  v35[3] = a11;
  v19 = type metadata accessor for ShelfCollage(0, v35);
  v20 = v19[14];
  *(a9 + v20) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v21 = v19[15];
  *(a9 + v21) = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  v22 = a9 + v19[16];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  (*(*(a7 - 8) + 32))(a9 + v19[17], a1, a7);
  v23 = v19[18];
  v24 = sub_260C00();
  v30 = *(a4 + 3);
  v31 = *(a4 + 1);
  (*(*(v24 - 8) + 32))(a9 + v23, a2, v24);
  v25 = v19[19];
  v26 = sub_260C50();
  (*(*(v26 - 8) + 32))(a9 + v25, a3, v26);
  v27 = a9 + v19[21];
  *v27 = v18;
  result = v30;
  *(v27 + 8) = v31;
  *(v27 + 24) = v30;
  *(v27 + 40) = v32;
  v29 = (a9 + v19[20]);
  *v29 = a5;
  v29[1] = a6;
  return result;
}

double ShelfCollage.body.getter(uint64_t a1)
{
  ShelfCollage.columnWidth.getter(a1);
  sub_260C10();
  sub_261E50();
  sub_2F9C(&qword_31D7D0, &qword_276468);
  sub_2F9C(&qword_31D7D8, &qword_276470);
  sub_8E38(&qword_31D7E0, &qword_31D7D8, &qword_276470, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  sub_2633D0();
  sub_8E38(&qword_31D7E8, &qword_31D7D0, &qword_276468, &protocol conformance descriptor for _LayoutRoot<A>);
  sub_2614C0();
  sub_8E38(qword_31D7F0, &qword_31D7D0, &qword_276468, &protocol conformance descriptor for _LayoutRoot<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_261120();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_261730();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_261800();
  swift_getWitnessTable();
  sub_2632D0();
  sub_2632E0();
  swift_getWitnessTable();
  sub_1609C();

  sub_1609C();

  return result;
}

double sub_F161C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30[1] = a6;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v11 = type metadata accessor for ShelfCollage(0, &v38);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v30 - v14;
  (*(v12 + 16))(v30 - v14, a1, v11, v13);
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  (*(v12 + 32))(&v17[v16], v15, v11);
  sub_2F9C(&qword_31D7D0, &qword_276468);
  v18 = sub_2F9C(&qword_31D7D8, &qword_276470);
  v19 = sub_8E38(&qword_31D7E0, &qword_31D7D8, &qword_276470, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  v38 = v18;
  v39 = &type metadata for AnyHashable;
  v40 = a3;
  v41 = v19;
  v42 = &protocol witness table for AnyHashable;
  sub_2633D0();
  sub_8E38(&qword_31D7E8, &qword_31D7D0, &qword_276468, &protocol conformance descriptor for _LayoutRoot<A>);
  sub_2614C0();
  v20 = sub_8E38(qword_31D7F0, &qword_31D7D0, &qword_276468, &protocol conformance descriptor for _LayoutRoot<A>);
  v37 = a5;
  WitnessTable = swift_getWitnessTable();
  v35 = v20;
  v36 = WitnessTable;
  swift_getWitnessTable();
  v22 = sub_261120();
  v23 = swift_getWitnessTable();
  v38 = v22;
  v39 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = v22;
  v39 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = OpaqueTypeMetadata2;
  v39 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeMetadata2();
  v38 = OpaqueTypeMetadata2;
  v39 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v38 = v26;
  v39 = v27;
  swift_getOpaqueTypeMetadata2();
  sub_261730();
  v38 = v26;
  v39 = v27;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = &protocol witness table for _FlexFrameLayout;
  swift_getWitnessTable();
  v31 = sub_2617F0();
  v32 = v28;
  sub_261800();
  swift_getWitnessTable();
  sub_1609C();

  v31 = v38;
  v32 = v39;
  sub_1609C();

  return result;
}

uint64_t sub_F1A98@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v73 = a5;
  v72 = a4;
  v71 = a3;
  v70 = a2;
  v74 = a1;
  v69 = a6;
  v68 = sub_262320();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_261FF0();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v54 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2F9C(&qword_31D7D0, &qword_276468);
  v10 = sub_2F9C(&qword_31D7D8, &qword_276470);
  v11 = sub_8E38(&qword_31D7E0, &qword_31D7D8, &qword_276470, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  v86 = v10;
  v87 = &type metadata for AnyHashable;
  v88 = a3;
  v89 = v11;
  v90 = &protocol witness table for AnyHashable;
  sub_2633D0();
  sub_8E38(&qword_31D7E8, &qword_31D7D0, &qword_276468, &protocol conformance descriptor for _LayoutRoot<A>);
  v12 = sub_2614C0();
  v13 = sub_8E38(qword_31D7F0, &qword_31D7D0, &qword_276468, &protocol conformance descriptor for _LayoutRoot<A>);
  v85 = a5;
  WitnessTable = swift_getWitnessTable();
  v83 = v13;
  v84 = WitnessTable;
  v52 = v12;
  v51 = swift_getWitnessTable();
  v15 = sub_261120();
  v53 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  v18 = swift_getWitnessTable();
  v86 = v15;
  v87 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v22 = &v51 - v21;
  v86 = v15;
  v87 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = OpaqueTypeMetadata2;
  v87 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeMetadata2();
  v56 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v51 - v25;
  v86 = OpaqueTypeMetadata2;
  v87 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v55 = v24;
  v86 = v24;
  v87 = v27;
  v57 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v61 = *(v28 - 8);
  __chkstk_darwin(v28);
  v58 = &v51 - v29;
  v62 = v30;
  v31 = sub_261730();
  v63 = *(v31 - 8);
  __chkstk_darwin(v31);
  v59 = &v51 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v60 = &v51 - v34;
  v35 = sub_2624C0();
  v76 = v70;
  v77 = v71;
  v78 = v72;
  v79 = v73;
  v80 = v74;
  sub_1D16D8(v35, sub_F5E74, v75, v52, v51);
  v36 = v54;
  sub_261FE0();
  sub_2624C0();
  sub_262C80();
  (*(v64 + 8))(v36, v65);
  v37 = v15;
  v38 = v26;
  (*(v53 + 8))(v17, v37);
  sub_262C40();
  (*(v20 + 8))(v22, OpaqueTypeMetadata2);
  v39 = v66;
  sub_262300();
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  LOBYTE(OpaqueTypeMetadata2) = sub_2624E0();
  *(inited + 32) = OpaqueTypeMetadata2;
  v41 = sub_2624C0();
  *(inited + 33) = v41;
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != OpaqueTypeMetadata2)
  {
    sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v41)
  {
    sub_2624D0();
  }

  v42 = v58;
  v43 = v55;
  v44 = v57;
  sub_262BA0();
  (*(v67 + 8))(v39, v68);
  (*(v56 + 8))(v38, v43);
  v86 = v70;
  v87 = v71;
  v88 = v72;
  v89 = v73;
  type metadata accessor for ShelfCollage(0, &v86);
  sub_F0924();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v86 = v43;
  v87 = v44;
  v50 = swift_getOpaqueTypeConformance2();
  v45 = v62;
  v46 = v59;
  sub_262DB0();
  (*(v61 + 8))(v42, v45);
  v81 = v50;
  v82 = &protocol witness table for _FlexFrameLayout;
  swift_getWitnessTable();
  v47 = v60;
  sub_1609C();
  v48 = *(v63 + 8);
  v48(v46, v31);
  sub_1609C();
  return (v48)(v47, v31);
}

uint64_t sub_F24B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a5;
  v41 = a4;
  v40 = a2;
  v42 = a1;
  v46 = a6;
  v8 = type metadata accessor for CollageLayout(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2F9C(&qword_31D7D0, &qword_276468);
  v12 = sub_2F9C(&qword_31D7D8, &qword_276470);
  v13 = sub_8E38(&qword_31D7E0, &qword_31D7D8, &qword_276470, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  v56 = v12;
  v57 = &type metadata for AnyHashable;
  v58 = a3;
  v59 = v13;
  v60 = &protocol witness table for AnyHashable;
  v44 = sub_2633D0();
  sub_8E38(&qword_31D7E8, &qword_31D7D0, &qword_276468, &protocol conformance descriptor for _LayoutRoot<A>);
  v14 = sub_2614C0();
  v45 = *(v14 - 8);
  __chkstk_darwin(v14);
  v39 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v43 = &v37 - v17;
  v18 = v40;
  v56 = v40;
  v57 = a3;
  v19 = v41;
  v58 = v41;
  v59 = a5;
  v20 = type metadata accessor for ShelfCollage(0, &v56);
  v21 = *(v20 + 72);
  v22 = sub_260C00();
  v23 = v42;
  (*(*(v22 - 8) + 16))(v11, v42 + v21, v22);
  v24 = *(v20 + 76);
  v25 = *(v9 + 28);
  v26 = sub_260C50();
  (*(*(v26 - 8) + 16))(&v11[v25], v23 + v24, v26);
  v27 = v23;
  ShelfCollage.columnWidth.getter(v20);
  *&v11[*(v9 + 32)] = v28;
  v29 = v38;
  v30 = sub_F28EC(v11, v18, a3, v19, v38);
  sub_F5E8C(v11);
  v48 = v18;
  v49 = a3;
  v50 = v19;
  v51 = v29;
  v52 = v27;
  v31 = v39;
  (v30)(sub_F5EE8, v47);

  v32 = sub_8E38(qword_31D7F0, &qword_31D7D0, &qword_276468, &protocol conformance descriptor for _LayoutRoot<A>);
  v55 = v29;
  WitnessTable = swift_getWitnessTable();
  v53 = v32;
  v54 = WitnessTable;
  swift_getWitnessTable();
  v34 = v43;
  sub_1609C();
  v35 = *(v45 + 8);
  v35(v31, v14);
  sub_1609C();
  return (v35)(v34, v14);
}

uint64_t (*sub_F28EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = type metadata accessor for CollageLayout(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  sub_F6314(a1, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  sub_F6490(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  return sub_F64F4;
}

uint64_t sub_F2A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v9 = type metadata accessor for CollageLayout(0);
  sub_2F9C(&qword_31D7D8, &qword_276470);
  sub_8E38(&qword_31D7E0, &qword_31D7D8, &qword_276470, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  v10 = sub_2633D0();
  v11 = sub_F65A4(&qword_31D978, type metadata accessor for CollageLayout, &unk_276550);
  WitnessTable = swift_getWitnessTable();
  return sub_F2B5C(a1, a2, v9, v10, v11, WitnessTable, x8_0);
}

uint64_t sub_F2B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  __chkstk_darwin(a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_261290();
  v17 = __chkstk_darwin(v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_2612A0();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_2614D0();
}

uint64_t sub_F2D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a5;
  v41 = a6;
  v33 = a3;
  v34 = a1;
  v44 = a2;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v32[0] = a4;
  v8 = type metadata accessor for ShelfCollage(0, &v44);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v32 - v10;
  v12 = sub_2EF0(&qword_31D7D8, &qword_276470);
  v38 = v12;
  __chkstk_darwin(v12);
  v42 = v32 - v13;
  v37 = sub_8E38(&qword_31D7E0, &qword_31D7D8, &qword_276470, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  v44 = v12;
  v45 = &type metadata for AnyHashable;
  v46 = a3;
  v47 = v37;
  v48 = &protocol witness table for AnyHashable;
  v14 = sub_2633D0();
  v39 = *(v14 - 8);
  __chkstk_darwin(v14);
  v35 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v36 = v32 - v17;
  v18 = v34;
  v19 = a2;
  v44 = sub_263850();
  sub_2EF0(&qword_31D968, &qword_2765F0);
  sub_8E38(&qword_31D970, &qword_31D968, &qword_2765F0, &protocol conformance descriptor for [A]);
  sub_260CC0();
  v32[1] = swift_getKeyPath();
  v20 = v18;
  v21 = v8;
  (*(v9 + 16))(v11, v20, v8);
  v22 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v23 = swift_allocObject();
  v24 = v33;
  *(v23 + 2) = v19;
  *(v23 + 3) = v24;
  v25 = v32[0];
  v26 = v40;
  *(v23 + 4) = v32[0];
  *(v23 + 5) = v26;
  (*(v9 + 32))(&v23[v22], v11, v21);
  v27 = swift_allocObject();
  v27[2] = v19;
  v27[3] = v24;
  v27[4] = v25;
  v27[5] = v26;
  v27[6] = sub_F61E8;
  v27[7] = v23;
  v28 = v35;
  sub_2633B0();
  v43 = v26;
  swift_getWitnessTable();
  v29 = v36;
  sub_1609C();
  v30 = *(v39 + 8);
  v30(v28, v14);
  sub_1609C();
  return (v30)(v29, v14);
}

uint64_t sub_F3130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  __chkstk_darwin(a1);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v21 - v12;
  v21[0] = v14;
  v21[1] = v15;
  v21[2] = v16;
  v21[3] = v17;
  v18 = type metadata accessor for ShelfCollage(0, v21);
  (*(a3 + *(v18 + 80)))(a2);
  sub_1609C();
  v19 = *(v8 + 8);
  v19(v10, a5);
  sub_1609C();
  return (v19)(v13, a5);
}

char *sub_F3294(uint64_t (**a1)(char *, char *, uint64_t))
{
  v132 = a1;
  v1 = sub_2EF0(&qword_31D930, &qword_2765C8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v116 = (&v109 - v3);
  v127 = sub_261490();
  v4 = *(v127 - 8);
  __chkstk_darwin(v127);
  v111 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v129 = &v109 - v7;
  __chkstk_darwin(v8);
  v130 = &v109 - v9;
  __chkstk_darwin(v10);
  v117 = &v109 - v11;
  v12 = sub_2EF0(&qword_31D938, &qword_2765D0);
  __chkstk_darwin(v12 - 8);
  v122 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v109 - v15;
  v17 = sub_261570();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2EF0(&qword_31D940, &qword_2765D8);
  __chkstk_darwin(v21 - 8);
  v23 = &v109 - v22;
  v24 = sub_2EF0(&qword_31D948, &qword_2765E0);
  v25 = v24 - 8;
  v26 = __chkstk_darwin(v24);
  v28 = &v109 - v27;
  (*(v18 + 16))(v23, v132, v17, v26);
  (*(v18 + 32))(v20, v23, v17);
  v29 = v17;
  sub_F65A4(&qword_31D950, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_2645E0();
  v30 = *(v25 + 44);
  v31 = v28;
  v115 = v30;
  *&v28[v30] = 0;
  v32 = *(sub_2EF0(&qword_31D958, &qword_2765E8) + 36);
  v33 = v127;
  v34 = sub_F65A4(&qword_31D960, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  v128 = (v4 + 16);
  v132 = (v4 + 32);
  v125 = (v2 + 56);
  v126 = 0;
  v124 = (v2 + 48);
  v119 = v4;
  v123 = (v4 + 8);
  v35 = v16;
  v36 = v122;
  v37 = 0.0;
  v38 = 0.0;
  v114 = _swiftEmptyArrayStorage;
  v131 = _swiftEmptyArrayStorage;
  v120 = v34;
  v118 = v16;
  v121 = v32;
LABEL_2:
  v39 = v37;
LABEL_3:
  v40 = v1;
  while (1)
  {
    sub_264860();
    if (*(v31 + v32) == v134[0])
    {
      v41 = 1;
      v1 = v40;
      goto LABEL_8;
    }

    v42 = sub_2648A0();
    v43 = v117;
    (*v128)(v117);
    v42(v134, 0);
    sub_264870();
    v1 = v40;
    v44 = *(v40 + 48);
    v45 = v116;
    v46 = v126;
    *v116 = v126;
    result = (*v132)((v45 + v44), v43, v33);
    if (__OFADD__(v46, 1))
    {
      break;
    }

    v126 = v46 + 1;
    *(v31 + v115) = v46 + 1;
    sub_22148(v45, v36, &qword_31D930, &qword_2765C8);
    v41 = 0;
LABEL_8:
    (*v125)(v36, v41, 1, v1);
    sub_22148(v36, v35, &qword_31D938, &qword_2765D0);
    v48 = (*v124)(v35, 1, v1);
    v49 = v130;
    if (v48 == 1)
    {
      sub_F5D40(v31);
      type metadata accessor for CollageLayout(0);
      sub_260C10();
      sub_260BE0();
      sub_260BF0();

      return v114;
    }

    v50 = v31;
    v51 = v29;
    v52 = *v35;
    v53 = *v132;
    (*v132)(v130, &v35[*(v1 + 48)], v33);
    if (0xCCCCCCCCCCCCCCCDLL * v52 + 0x1999999999999999 <= 0x3333333333333332)
    {
      v62 = *(v113 + *(type metadata accessor for CollageLayout(0) + 24));
      sub_260C10();
      v63 = v62 + v62;
      LOBYTE(v134[0]) = 0;
      v133 = 1;
      sub_261470();
      v65 = v64;
      v37 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v114 = sub_E91CC(0, *(v114 + 2) + 1, 1, v114);
      }

      v29 = v51;
      v68 = *(v114 + 2);
      v67 = *(v114 + 3);
      v31 = v50;
      if (v68 >= v67 >> 1)
      {
        v114 = sub_E91CC((v67 > 1), v68 + 1, 1, v114);
      }

      v32 = v121;
      v69 = v114;
      *(v114 + 2) = v68 + 1;
      v70 = &v69[32 * v68];
      *(v70 + 4) = v38;
      *(v70 + 5) = 0;
      *(v70 + 6) = v65;
      *(v70 + 7) = v37;
      v71 = COERCE_DOUBLE(sub_260C10());
      if (v72)
      {
        v73 = 0.0;
      }

      else
      {
        v73 = v71;
      }

      *&v74 = COERCE_DOUBLE(sub_260C10());
      v76 = v75;
      v77 = v127;
      (*v123)(v49, v127);
      v78 = *&v74;
      v79 = (v76 & 1) == 0;
      v33 = v77;
      if (!v79)
      {
        v78 = 0.0;
      }

      v38 = v38 + v63 + v73 + v78;
      if (v39 > v37)
      {
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    v54 = v49;
    v40 = v1;
    v55 = *v128;
    (*v128)(v129, v54, v33);
    v56 = v131;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_E91A4(0, v56[2] + 1, 1, v56);
    }

    v58 = v56[2];
    v57 = v56[3];
    if (v58 >= v57 >> 1)
    {
      v56 = sub_E91A4((v57 > 1), v58 + 1, 1, v56);
    }

    v56[2] = v58 + 1;
    v59 = *(v119 + 80);
    v131 = v56;
    v60 = v56 + ((v59 + 32) & ~v59);
    v61 = *(v119 + 72);
    v33 = v127;
    v53(&v60[v61 * v58], v129, v127);
    if (v58 == 1)
    {
      v110 = type metadata accessor for CollageLayout(0);
      v80 = *(v113 + *(v110 + 24));
      v81 = v111;
      (v55)(v111, v60, v33);
      LOBYTE(v134[0]) = 0;
      v133 = 1;
      v109 = v80;
      sub_261470();
      v83 = v82;
      v85 = v84;
      v112 = *v123;
      result = (v112)(v81, v33);
      if (v131[2] < 2uLL)
      {
        goto LABEL_50;
      }

      (v55)(v81, &v60[v61], v33);
      LOBYTE(v134[0]) = 0;
      v133 = 1;
      sub_261470();
      v87 = v86;
      v89 = v88;
      v112(v81, v33);
      *&v90 = COERCE_DOUBLE(sub_260C40());
      if (v91)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v93 = 0.0;
      }

      else
      {
        v93 = *&v90;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      }

      v1 = v40;
      v29 = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v114 = sub_E91CC(0, *(v114 + 2) + 1, 1, v114);
      }

      v36 = v122;
      v35 = v118;
      v31 = v50;
      v95 = *(v114 + 2);
      v94 = *(v114 + 3);
      v96 = v94 >> 1;
      v97 = v95 + 1;
      v32 = v121;
      if (v94 >> 1 <= v95)
      {
        v114 = sub_E91CC((v94 > 1), v95 + 1, 1, v114);
        v94 = *(v114 + 3);
        v96 = v94 >> 1;
      }

      v98 = v114;
      *(v114 + 2) = v97;
      v99 = &v98[32 * v95];
      *(v99 + 4) = v38;
      *(v99 + 5) = -(v89 + v93);
      *(v99 + 6) = v83;
      *(v99 + 7) = v85;
      if (v96 < (v95 + 2))
      {
        v114 = sub_E91CC((v94 > 1), v95 + 2, 1, v114);
      }

      v100 = v114;
      *(v114 + 2) = v95 + 2;
      v101 = &v100[32 * v97];
      *(v101 + 4) = v38;
      *(v101 + 5) = 0;
      *(v101 + 6) = v87;
      *(v101 + 7) = v89;
      v102 = COERCE_DOUBLE(sub_260C10());
      if (v103)
      {
        v102 = 0.0;
      }

      v38 = v38 + v80 + v102;
      v104 = v85 + v89;
      v105 = COERCE_DOUBLE(sub_260C40());
      v107 = v104 + v105;
      if (v106)
      {
        v108 = v104;
      }

      else
      {
        v108 = v104 + v105;
      }

      if (v106)
      {
        v107 = v104 + 0.0;
      }

      if (v39 > v108)
      {
        v37 = v39;
      }

      else
      {
        v37 = v107;
      }

      v33 = v127;
      v112(v130, v127);

      v131 = _swiftEmptyArrayStorage;
      goto LABEL_2;
    }

    (*v123)(v130, v33);
    v36 = v122;
    v35 = v118;
    v29 = v51;
    v31 = v50;
    v32 = v121;
  }

  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

char *sub_F3F74@<X0>(uint64_t (**a1)(char *, char *, uint64_t)@<X0>, char **a2@<X8>)
{
  result = sub_F3294(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

char *sub_F3FA0(char **a1, uint64_t (**a2)(char *, char *, uint64_t))
{

  result = sub_F3294(a2);
  *a1 = result;
  a1[1] = v5;
  a1[2] = v6;
  return result;
}

uint64_t (*sub_F40B0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261040();
  return sub_F4138;
}

void sub_F4138(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_F4184(void *a1@<X8>)
{
  sub_261930();
  *a1 = v2;
  a1[1] = v3;
}

void sub_F41B0(void *a1@<X8>)
{
  sub_261930();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_F41DC@<X0>(uint64_t a2@<X8>)
{
  result = sub_261950();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void *sub_F4234@<X0>(_BYTE *a1@<X8>)
{
  sub_6E1E4();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

void sub_F432C(uint64_t a1)
{
  sub_60890(319, &qword_316308, &type metadata for CGFloat);
  if (v1 <= 0x3F)
  {
    sub_F4D48(319);
    if (v2 <= 0x3F)
    {
      sub_F4DAC(319, &qword_317C68, type metadata accessor for SizeConstants);
      if (v3 <= 0x3F)
      {
        sub_F4DAC(319, &qword_3198C8, &type metadata accessor for DynamicTypeSize);
        if (v4 <= 0x3F)
        {
          sub_60890(319, &qword_31D880, &type metadata for ShelfGridBreakpoint);
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              sub_260C00();
              if (v7 <= 0x3F)
              {
                sub_260C50();
                if (v8 <= 0x3F)
                {
                  sub_16D28();
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

uint64_t sub_F44BC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(sub_261690() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = ((v7 + ((v6 + 2) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 11;
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v44 = *(a3 + 16);
  v45 = v8;
  v9 = *(v44 - 8);
  if (v7 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v7;
  }

  v11 = *(v9 + 84);
  v43 = sub_260C00();
  v12 = *(v43 - 8);
  v13 = *(v12 + 84);
  if (v11 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = v11;
  }

  v15 = *(sub_260C50() - 8);
  v16 = *(v15 + 84);
  v17 = *(v9 + 80);
  v18 = *(v9 + 64);
  v19 = *(v12 + 80);
  v20 = *(v15 + 80);
  if (v14 <= v16)
  {
    v21 = *(v15 + 84);
  }

  else
  {
    v21 = v14;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = v6 | 7;
  v23 = v45 + 1;
  v24 = v10 + 8;
  v25 = *(v12 + 64) + v20;
  v26 = *(v15 + 64) + 7;
  if (v21 >= a2)
  {
    goto LABEL_37;
  }

  v27 = ((((v26 + ((v25 + ((v18 + v19 + ((v17 + ((v24 + ((v23 + v22 + ((v22 + 26) & ~v22)) & ~v22)) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v17)) & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 48;
  v28 = v27 & 0xFFFFFFF8;
  if ((v27 & 0xFFFFFFF8) != 0)
  {
    v29 = 2;
  }

  else
  {
    v29 = a2 - v21 + 1;
  }

  if (v29 >= 0x10000)
  {
    v30 = 4;
  }

  else
  {
    v30 = 2;
  }

  if (v29 < 0x100)
  {
    v30 = 1;
  }

  if (v29 >= 2)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (v31 <= 1)
  {
    if (!v31)
    {
      goto LABEL_37;
    }

    v32 = *(a1 + v27);
    if (!v32)
    {
      goto LABEL_37;
    }

LABEL_34:
    v34 = v32 - 1;
    if (v28)
    {
      v34 = 0;
      v35 = *a1;
    }

    else
    {
      v35 = 0;
    }

    return v21 + (v35 | v34) + 1;
  }

  if (v31 == 2)
  {
    v32 = *(a1 + v27);
    if (v32)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v32 = *(a1 + v27);
    if (v32)
    {
      goto LABEL_34;
    }
  }

LABEL_37:
  v36 = (((v24 + (((((a1 & 0xFFFFFFFFFFFFFFF8) + v22 + 26) & ~v22) + v22 + v23) & ~v22)) & 0xFFFFFFFFFFFFFFF8) + v17 + 9) & ~v17;
  if (v11 == v21)
  {
    v37 = *(v9 + 48);
    v38 = v11;
    v39 = v44;
LABEL_41:

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v18 + v19) & ~v19;
  if (v13 == v21)
  {
    v37 = *(v12 + 48);
    v38 = v13;
    v39 = v43;
    goto LABEL_41;
  }

  v40 = (v25 + v36) & ~v20;
  if (v16 == v21)
  {
    v41 = *(v15 + 48);

    return v41(v40);
  }

  else
  {
    v42 = *((v26 + v40) & 0xFFFFFFFFFFFFFFF8);
    if (v42 >= 0xFFFFFFFF)
    {
      LODWORD(v42) = -1;
    }

    return (v42 + 1);
  }
}

void sub_F48CC(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_261690() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (((v7 + ((v6 + 2) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 11 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = ((v7 + ((v6 + 2) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 11;
  }

  v35 = *(a4 + 16);
  v9 = *(v35 - 8);
  if (v7 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v7;
  }

  v36 = *(v35 - 8);
  v11 = *(v9 + 84);
  v12 = *(sub_260C00() - 8);
  v13 = *(v12 + 84);
  if (v11 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = v11;
  }

  v15 = *(sub_260C50() - 8);
  v16 = *(v15 + 84);
  v17 = *(v9 + 80);
  v18 = *(v9 + 64);
  v19 = *(v12 + 80);
  v20 = *(v15 + 80);
  if (v14 <= v16)
  {
    v21 = *(v15 + 84);
  }

  else
  {
    v21 = v14;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  v22 = *(v12 + 64) + v20;
  v23 = *(v15 + 64) + 7;
  v24 = ((((v23 + ((v22 + ((v18 + v19 + ((v17 + ((v10 + 8 + ((v8 + 1 + (v6 | 7) + (((v6 | 7) + 26) & ~(v6 | 7))) & ~(v6 | 7))) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v17)) & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v21 >= a3)
  {
    v27 = 0;
  }

  else
  {
    if (((((v23 + ((v22 + ((v18 + v19 + ((v17 + ((v10 + 8 + ((v8 + 1 + (v6 | 7) + (((v6 | 7) + 26) & ~(v6 | 7))) & ~(v6 | 7))) & 0xFFFFFFF8) + 9) & ~v17)) & ~v19)) & ~v20)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v25 = a3 - v21 + 1;
    }

    else
    {
      v25 = 2;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }
  }

  if (a2 > v21)
  {
    if (((((v23 + ((v22 + ((v18 + v19 + ((v17 + ((v10 + 8 + ((v8 + 1 + (v6 | 7) + (((v6 | 7) + 26) & ~(v6 | 7))) & ~(v6 | 7))) & 0xFFFFFFF8) + 9) & ~v17)) & ~v19)) & ~v20)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v28 = a2 - v21;
    }

    else
    {
      v28 = 1;
    }

    if (v24)
    {
      v29 = ~v21 + a2;
      bzero(a1, v24);
      *a1 = v29;
    }

    if (v27 > 1)
    {
      if (v27 == 2)
      {
        *(a1 + v24) = v28;
      }

      else
      {
        *(a1 + v24) = v28;
      }
    }

    else if (v27)
    {
      *(a1 + v24) = v28;
    }

    return;
  }

  if (v27 <= 1)
  {
    if (v27)
    {
      *(a1 + v24) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

LABEL_45:
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (v27 == 2)
  {
    *(a1 + v24) = 0;
    goto LABEL_45;
  }

  *(a1 + v24) = 0;
  if (!a2)
  {
    return;
  }

LABEL_46:
  v30 = (((v10 + 8 + (((((a1 & 0xFFFFFFFFFFFFFFF8) + (v6 | 7) + 26) & ~(v6 | 7)) + (v6 | 7) + v8 + 1) & ~(v6 | 7))) & 0xFFFFFFFFFFFFFFF8) + v17 + 9) & ~v17;
  if (v11 == v21)
  {
    v31 = *(v36 + 56);

LABEL_49:
    v31(v30);
    return;
  }

  v30 = (v30 + v18 + v19) & ~v19;
  if (v13 == v21)
  {
    v31 = *(v12 + 56);

    goto LABEL_49;
  }

  v32 = (v22 + v30) & ~v20;
  if (v16 == v21)
  {
    v33 = *(v15 + 56);

    v33(v32);
  }

  else
  {
    v34 = ((v23 + v32) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v34 = a2 & 0x7FFFFFFF;
      v34[1] = 0;
    }

    else
    {
      *v34 = a2 - 1;
    }
  }
}

void sub_F4D48(uint64_t a1)
{
  if (!qword_31D878)
  {
    sub_2F9C(&qword_319918, &qword_273BF0);
    v1 = sub_2611E0();
    if (!v2)
    {
      atomic_store(v1, &qword_31D878);
    }
  }
}

void sub_F4DAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_F4E00(uint64_t a1)
{
  sub_2F9C(&qword_31D7D0, &qword_276468);
  sub_2F9C(&qword_31D7D8, &qword_276470);
  sub_8E38(&qword_31D7E0, &qword_31D7D8, &qword_276470, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  sub_2633D0();
  sub_8E38(&qword_31D7E8, &qword_31D7D0, &qword_276468, &protocol conformance descriptor for _LayoutRoot<A>);
  sub_2614C0();
  sub_8E38(qword_31D7F0, &qword_31D7D0, &qword_276468, &protocol conformance descriptor for _LayoutRoot<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_261120();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_261730();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_261800();
  swift_getWitnessTable();
  sub_2632E0();
  return swift_getWitnessTable();
}

uint64_t sub_F5144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260C00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_260C50();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_F5248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_260C00();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_260C50();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for CollageLayout(uint64_t a1)
{
  result = qword_31D8E0;
  if (!qword_31D8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F5390(uint64_t a1)
{
  result = sub_260C00();
  if (v2 <= 0x3F)
  {
    result = sub_260C50();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_F5420()
{
  result = qword_31D920;
  if (!qword_31D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D920);
  }

  return result;
}

uint64_t sub_F54BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  __chkstk_darwin(a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v15 - v10;
  v12(v9);
  sub_1609C();
  v13 = *(v5 + 8);
  v13(v7, a4);
  sub_1609C();
  return (v13)(v11, a4);
}

uint64_t sub_F55F0(uint64_t (**a1)(char *, char *, uint64_t), uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v55 = a2;
  v63 = a1;
  v10 = sub_2EF0(&qword_31D930, &qword_2765C8);
  v58 = *(v10 - 8);
  __chkstk_darwin(v10);
  v60 = &v47 - v11;
  v49 = sub_261490();
  v57 = *(v49 - 8);
  __chkstk_darwin(v49);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v53 = &v47 - v15;
  v16 = sub_2EF0(&qword_31D938, &qword_2765D0);
  __chkstk_darwin(v16 - 8);
  v48 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  v21 = sub_261570();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2EF0(&qword_31D940, &qword_2765D8);
  __chkstk_darwin(v25 - 8);
  v27 = &v47 - v26;
  v28 = sub_2EF0(&qword_31D948, &qword_2765E0);
  v29 = v28 - 8;
  v30 = __chkstk_darwin(v28);
  v32 = &v47 - v31;
  (*(v22 + 16))(v27, v63, v21, v30);
  (*(v22 + 32))(v24, v27, v21);
  v33 = v49;
  sub_F65A4(&qword_31D950, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  v62 = v21;
  sub_2645E0();
  v34 = *(v29 + 44);
  v35 = v48;
  v51 = v34;
  *&v32[v34] = 0;
  v61 = *(sub_2EF0(&qword_31D958, &qword_2765E8) + 36);
  v36 = sub_F65A4(&qword_31D960, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  v37 = 0;
  v52 = (v57 + 16);
  v63 = (v57 + 32);
  v38 = v58;
  v58 += 6;
  v59 = (v38 + 7);
  v54 = (v57 + 8);
  v56 = v20;
  v57 = v36;
  v50 = v13;
  while (1)
  {
    sub_264860();
    if (*&v32[v61] == v65[0])
    {
      v39 = 1;
      goto LABEL_8;
    }

    v40 = sub_2648A0();
    v41 = v53;
    (*v52)(v53);
    v40(v65, 0);
    sub_264870();
    v42 = *(v10 + 48);
    v43 = v60;
    *v60 = v37;
    result = (*v63)(&v43[v42], v41, v33);
    if (__OFADD__(v37++, 1))
    {
      break;
    }

    *&v32[v51] = v37;
    sub_22148(v60, v35, &qword_31D930, &qword_2765C8);
    v39 = 0;
    v20 = v56;
LABEL_8:
    (*v59)(v35, v39, 1, v10);
    sub_22148(v35, v20, &qword_31D938, &qword_2765D0);
    if ((*v58)(v20, 1, v10) == 1)
    {
      return sub_F5D40(v32);
    }

    v46 = *v20;
    result = (*v63)(v13, &v20[*(v10 + 48)], v33);
    if (v46 >= *(*v55 + 16))
    {
      v66.origin.x = a3;
      v66.origin.y = a4;
      v66.size.width = a5;
      v66.size.height = a6;
      CGRectGetMinY(v66);
      sub_2636F0();
      LOBYTE(v65[0]) = 0;
      v64 = 0;
    }

    else
    {
      if (v46 < 0)
      {
        goto LABEL_14;
      }

      v67.origin.x = a3;
      v67.origin.y = a4;
      v67.size.width = a5;
      v67.size.height = a6;
      CGRectGetMinX(v67);
      sub_260BE0();
      v68.origin.x = a3;
      v68.origin.y = a4;
      v68.size.width = a5;
      v68.size.height = a6;
      CGRectGetMaxY(v68);
      sub_2636F0();
      LOBYTE(v65[0]) = 0;
      v64 = 0;
      v20 = v56;
      v13 = v50;
    }

    sub_261480();
    (*v54)(v13, v33);
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_F5D40(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31D948, &qword_2765E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_F5DAC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_F5DB8@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for ShelfCollage(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_F1A98(v8, v3, v4, v5, v6, a1);
}

uint64_t sub_F5E8C(uint64_t a1)
{
  v2 = type metadata accessor for CollageLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F5F1C()
{
  v1 = *(v0 + 32);
  v14 = *(v0 + 16);
  v15[0] = v14;
  v15[1] = v1;
  v2 = type metadata accessor for ShelfCollage(0, v15);
  v3 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));
  sub_3074(*v3, *(v3 + 8));
  sub_F5DAC(*(v3 + 16), *(v3 + 24), *(v3 + 25));
  v4 = v3 + v2[14];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v6 = sub_261690();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v2[15];
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_261690();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  sub_3074(*(v3 + v2[16]), *(v3 + v2[16] + 8));
  (*(*(v14 - 8) + 8))(v3 + v2[17]);
  v9 = v2[18];
  v10 = sub_260C00();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);
  v11 = v2[19];
  v12 = sub_260C50();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);

  return swift_deallocObject();
}

uint64_t sub_F61E8(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for ShelfCollage(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_F3130(a1, a2, v10, v5, v6);
}

uint64_t sub_F62AC()
{

  return swift_deallocObject();
}

uint64_t sub_F6314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollageLayout(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F6378()
{
  v1 = (type metadata accessor for CollageLayout(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));
  v3 = sub_260C00();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  v5 = sub_260C50();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_F6490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollageLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_F64F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for CollageLayout(0);

  return sub_F2A04(a1, a2, a3);
}

uint64_t sub_F65A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_F65FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_318148, &unk_26AEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HeroLockupModel.init(eyebrow:title:subtitle:artworkModel:footnote:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_260BD0();
  v13 = *(*(v12 - 8) + 32);
  v13(a6, a1, v12);
  v14 = type metadata accessor for HeroLockupModel(0);
  v13(a6 + v14[5], a2, v12);
  sub_A96C8(a3, a6 + v14[6]);
  v15 = a6 + v14[7];
  v16 = *(a4 + 112);
  *(v15 + 96) = *(a4 + 96);
  *(v15 + 112) = v16;
  *(v15 + 128) = *(a4 + 128);
  *(v15 + 144) = *(a4 + 144);
  v17 = *(a4 + 48);
  *(v15 + 32) = *(a4 + 32);
  *(v15 + 48) = v17;
  v18 = *(a4 + 80);
  *(v15 + 64) = *(a4 + 64);
  *(v15 + 80) = v18;
  v19 = *(a4 + 16);
  *v15 = *a4;
  *(v15 + 16) = v19;
  v20 = a6 + v14[8];

  return sub_A96C8(a5, v20);
}

uint64_t type metadata accessor for HeroLockupModel(uint64_t a1)
{
  result = qword_31DA40;
  if (!qword_31DA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL HeroLockupModel.isSingleBookHero.getter()
{
  v1 = (v0 + *(type metadata accessor for HeroLockupModel(0) + 28));
  v2 = v1[7];
  v7[6] = v1[6];
  v7[7] = v2;
  v7[8] = v1[8];
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v4 = v1[5];
  v7[4] = v1[4];
  v7[5] = v4;
  v5 = v1[1];
  v7[0] = *v1;
  v7[1] = v5;
  return sub_57480(v7) == 1;
}

uint64_t sub_F6850()
{
  v1 = *v0;
  v2 = 0x776F7262657965;
  v3 = 0x656C746974627573;
  v4 = 0x4D6B726F77747261;
  if (v1 != 3)
  {
    v4 = 0x65746F6E746F6F66;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_F68F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_F8FE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_F6918(uint64_t a1)
{
  v2 = sub_F7080();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F6954(uint64_t a1)
{
  v2 = sub_F7080();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HeroLockupModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v3 - 8);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = &v38 - v6;
  v7 = sub_260BD0();
  v44 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v38 - v11;
  v46 = sub_2EF0(&qword_31D980, &qword_276658);
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v13 = &v38 - v12;
  v14 = type metadata accessor for HeroLockupModel(0);
  __chkstk_darwin(v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2E18(a1, a1[3]);
  sub_F7080();
  v48 = v13;
  v17 = v61;
  sub_265120();
  if (v17)
  {
    return sub_3080(a1);
  }

  v18 = v9;
  v40 = v14;
  v19 = v16;
  v61 = a1;
  LOBYTE(v51) = 0;
  v20 = sub_F84B8(&qword_315D90, &type metadata accessor for LocalizerRequest, &protocol conformance descriptor for LocalizerRequest);
  v21 = v46;
  sub_264DF0();
  v22 = *(v44 + 32);
  v39 = v19;
  v22(v19, v47, v7);
  LOBYTE(v51) = 1;
  v23 = v18;
  v24 = v20;
  sub_264DF0();
  v22((v39 + v40[5]), v23, v7);
  LOBYTE(v51) = 2;
  v25 = v43;
  v26 = v24;
  v47 = 0;
  sub_264DB0();
  v27 = v61;
  v28 = v45;
  v38 = v26;
  v29 = v39;
  sub_A96C8(v25, v39 + v40[6]);
  v50 = 3;
  sub_F716C();
  sub_264DF0();
  v30 = v40;
  v31 = v29 + v40[7];
  v32 = v58;
  *(v31 + 96) = v57;
  *(v31 + 112) = v32;
  *(v31 + 128) = v59;
  *(v31 + 144) = v60;
  v33 = v54;
  *(v31 + 32) = v53;
  *(v31 + 48) = v33;
  v34 = v56;
  *(v31 + 64) = v55;
  *(v31 + 80) = v34;
  v35 = v52;
  *v31 = v51;
  *(v31 + 16) = v35;
  v49 = 4;
  v36 = v42;
  sub_264DB0();
  (*(v28 + 8))(v48, v21);
  sub_A96C8(v36, v29 + v30[8]);
  sub_F71C0(v29, v41);
  sub_3080(v27);
  return sub_F7224(v29);
}

unint64_t sub_F7080()
{
  result = qword_31D988;
  if (!qword_31D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D988);
  }

  return result;
}

uint64_t sub_F7104(uint64_t a1)
{
  v2 = sub_2EF0(&qword_316208, &qword_268BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_F716C()
{
  result = qword_31D990;
  if (!qword_31D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D990);
  }

  return result;
}

uint64_t sub_F71C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeroLockupModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F7224(uint64_t a1)
{
  v2 = type metadata accessor for HeroLockupModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 HeroArtworkModel.init(aspectRatio:artworkType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 144) = a3;
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  *(a2 + 128) = *(a1 + 128);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_F72C8()
{
  if (*v0)
  {
    return 0x7265766F63;
  }

  else
  {
    return 0x6169726F74696465;
  }
}

void sub_F7304(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6169726F74696465 && a2 == 0xE90000000000006CLL;
  if (v6 || (sub_264F10() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7265766F63 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_264F10();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_F73E4(uint64_t a1)
{
  v2 = sub_F7DCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F7420(uint64_t a1)
{
  v2 = sub_F7DCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_F745C()
{
  if (*v0)
  {
    return 0x756F72676B636162;
  }

  else
  {
    return 0x6569567265766F63;
  }
}

void sub_F74B0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6569567265766F63 && a2 == 0xEE006C65646F4D77;
  if (v6 || (sub_264F10() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_264F10();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_F759C(uint64_t a1)
{
  v2 = sub_F7E20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F75D8(uint64_t a1)
{
  v2 = sub_F7E20();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_F7624(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_264F10();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_F76AC(uint64_t a1)
{
  v2 = sub_F7E74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F76E8(uint64_t a1)
{
  v2 = sub_F7E74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HeroArtworkModel.ArtworkType.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v41 = a2;
  v38 = sub_2EF0(&qword_31D998, &qword_276660);
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = &v37 - v3;
  v5 = sub_2EF0(&qword_31D9A0, &qword_276668);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v37 - v6;
  v8 = sub_2EF0(&qword_31D9A8, &unk_276670);
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = a1[3];
  v44 = a1;
  sub_2E18(a1, v11);
  sub_F7DCC();
  v12 = v43;
  sub_265120();
  if (v12)
  {
    return sub_3080(v44);
  }

  v13 = v41;
  v14 = sub_264E00();
  v15 = (2 * *(v14 + 16)) | 1;
  v79 = v14;
  v80 = v14 + 32;
  v81 = 0;
  v82 = v15;
  v16 = sub_AFA8();
  v17 = v10;
  if (v16 == 2 || v81 != v82 >> 1)
  {
    v19 = v8;
    v20 = sub_264C10();
    swift_allocError();
    v22 = v21;
    sub_2EF0(&qword_315CD0, &qword_266E00);
    *v22 = &type metadata for HeroArtworkModel.ArtworkType;
    sub_264D60();
    sub_264BF0();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v42 + 8))(v17, v19);
    swift_unknownObjectRelease();
    return sub_3080(v44);
  }

  if (v16)
  {
    LOBYTE(v45) = 1;
    sub_F7E20();
    sub_264D50();
    v18 = v42;
    v26 = v13;
    v84 = 0;
    sub_EAB10();
    v27 = v38;
    sub_264DF0();
    v58 = v66;
    v59 = v67;
    v60 = v68;
    v61 = v69;
    v54 = v62;
    v55 = v63;
    v56 = v64;
    v57 = v65;
    v83 = 1;
    v37 = sub_264D70();
    v39 = v29;
    v43 = 0;
    (*(v40 + 8))(v4, v27);
    (*(v18 + 8))(v10, v8);
    swift_unknownObjectRelease();
    v49 = v58;
    v50 = v59;
    v51 = v60;
    v52 = v61;
    v45 = v54;
    v46 = v55;
    v47 = v56;
    v48 = v57;
    *&v53 = v37;
    *(&v53 + 1) = v39;
    sub_7DE48(&v45);
  }

  else
  {
    LOBYTE(v45) = 0;
    sub_F7E74();
    v24 = v7;
    sub_264D50();
    v26 = v13;
    v25 = v42;
    v40 = v8;
    v28 = sub_264DC0();
    v43 = 0;
    v30 = v28;
    v32 = v31;
    (*(v39 + 8))(v24, v5);
    (*(v25 + 8))(v10, v40);
    swift_unknownObjectRelease();
    *&v45 = v30;
    *(&v45 + 1) = v32;
    sub_7DE1C(&v45);
  }

  v76 = v51;
  v77 = v52;
  v78 = v53;
  v72 = v47;
  v73 = v48;
  v74 = v49;
  v75 = v50;
  v70 = v45;
  v71 = v46;
  v33 = v52;
  v26[6] = v51;
  v26[7] = v33;
  v26[8] = v78;
  v34 = v73;
  v26[2] = v72;
  v26[3] = v34;
  v35 = v75;
  v26[4] = v74;
  v26[5] = v35;
  v36 = v71;
  *v26 = v70;
  v26[1] = v36;
  return sub_3080(v44);
}

unint64_t sub_F7DCC()
{
  result = qword_31D9B0;
  if (!qword_31D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D9B0);
  }

  return result;
}

unint64_t sub_F7E20()
{
  result = qword_31D9B8;
  if (!qword_31D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D9B8);
  }

  return result;
}

unint64_t sub_F7E74()
{
  result = qword_31D9C0;
  if (!qword_31D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D9C0);
  }

  return result;
}

uint64_t sub_F7EE0()
{
  if (*v0)
  {
    return 0x6152746365707361;
  }

  else
  {
    return 0x546B726F77747261;
  }
}

void sub_F7F2C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x546B726F77747261 && a2 == 0xEB00000000657079;
  if (v6 || (sub_264F10() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_264F10();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_F8010(uint64_t a1)
{
  v2 = sub_F8388();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F804C(uint64_t a1)
{
  v2 = sub_F8388();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HeroArtworkModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = sub_2EF0(&qword_31D9C8, &qword_276680);
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v18 - v6;
  sub_2E18(a1, a1[3]);
  sub_F8388();
  sub_265120();
  if (v2)
  {
    return sub_3080(a1);
  }

  v8 = v5;
  v33 = 0;
  sub_F83DC();
  v9 = v19;
  sub_264DF0();
  v49 = v40;
  v50 = v41;
  v51 = v42;
  v45 = v36;
  v46 = v37;
  v47 = v38;
  v48 = v39;
  v43 = v34;
  v44 = v35;
  v31 = 1;
  sub_6E08();
  sub_264DF0();
  (*(v8 + 8))(v7, v9);
  v25 = v49;
  v26 = v50;
  v27 = v51;
  v21 = v45;
  v22 = v46;
  v10 = v48;
  v23 = v47;
  v24 = v48;
  v11 = v44;
  v20[0] = v43;
  v20[1] = v44;
  v12 = v50;
  *(a2 + 96) = v49;
  *(a2 + 112) = v12;
  *(a2 + 128) = v27;
  v13 = v22;
  v14 = v23;
  v15 = v20[0];
  *(a2 + 32) = v21;
  *(a2 + 48) = v13;
  v16 = v32;
  v28 = v32;
  *(a2 + 64) = v14;
  *(a2 + 80) = v10;
  *a2 = v15;
  *(a2 + 16) = v11;
  *(a2 + 144) = v28;
  sub_57A38(v20, v29);
  sub_3080(a1);
  v29[6] = v49;
  v29[7] = v50;
  v29[8] = v51;
  v29[2] = v45;
  v29[3] = v46;
  v29[4] = v47;
  v29[5] = v48;
  v29[0] = v43;
  v29[1] = v44;
  v30 = v16;
  return sub_F70D4(v29);
}

unint64_t sub_F8388()
{
  result = qword_31D9D0;
  if (!qword_31D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D9D0);
  }

  return result;
}

unint64_t sub_F83DC()
{
  result = qword_31D9D8;
  if (!qword_31D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D9D8);
  }

  return result;
}

uint64_t sub_F8460(uint64_t a1)
{
  result = sub_F84B8(&qword_31D9E0, type metadata accessor for HeroLockupModel, &protocol conformance descriptor for HeroLockupModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_F84B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_F852C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260BD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_2EF0(&qword_316208, &qword_268BD0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28) + 24);
      v15 = (v14 >> 3) & 0xFFFFFF80 | (v14 >> 1);
      if (v15 > 0x80000000)
      {
        return -v15;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

double sub_F8660(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_260BD0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_2EF0(&qword_316208, &qword_268BD0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      v16 = a1 + *(a4 + 28);
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *(v16 + 24) = (8 * -a2) & 0x7FFFFFC00 | (2 * (-a2 & 0x7FLL));
      result = 0.0;
      *(v16 + 32) = 0u;
      *(v16 + 48) = 0u;
      *(v16 + 64) = 0u;
      *(v16 + 80) = 0u;
      *(v16 + 96) = 0u;
      *(v16 + 112) = 0u;
      *(v16 + 128) = 0u;
      return result;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  v11(v12, a2, a2, v10);
  return result;
}

void sub_F879C(uint64_t a1)
{
  sub_260BD0();
  if (v1 <= 0x3F)
  {
    sub_95918(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_F8830(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_F8864(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 3) & 0xFFFFFF80 | (*(a1 + 24) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_F88B8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 152) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = (8 * -a2) & 0x7FFFFFC00 | (2 * (-a2 & 0x7FLL));
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      return result;
    }

    *(a1 + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_F8950(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_F897C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 3) & 0xFFFFFF80 | (*(a1 + 24) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_F89D0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 144) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = (8 * -a2) & 0x7FFFFFC00 | (2 * (-a2 & 0x7FLL));
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      return result;
    }

    *(a1 + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_F8ABC()
{
  result = qword_31DA88;
  if (!qword_31DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DA88);
  }

  return result;
}

unint64_t sub_F8B14()
{
  result = qword_31DA90;
  if (!qword_31DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DA90);
  }

  return result;
}

unint64_t sub_F8B6C()
{
  result = qword_31DA98;
  if (!qword_31DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DA98);
  }

  return result;
}

unint64_t sub_F8BC4()
{
  result = qword_31DAA0;
  if (!qword_31DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAA0);
  }

  return result;
}

unint64_t sub_F8C1C()
{
  result = qword_31DAA8;
  if (!qword_31DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAA8);
  }

  return result;
}

unint64_t sub_F8C74()
{
  result = qword_31DAB0;
  if (!qword_31DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAB0);
  }

  return result;
}

unint64_t sub_F8CCC()
{
  result = qword_31DAB8;
  if (!qword_31DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAB8);
  }

  return result;
}

unint64_t sub_F8D24()
{
  result = qword_31DAC0;
  if (!qword_31DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAC0);
  }

  return result;
}

unint64_t sub_F8D7C()
{
  result = qword_31DAC8;
  if (!qword_31DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAC8);
  }

  return result;
}

unint64_t sub_F8DD4()
{
  result = qword_31DAD0;
  if (!qword_31DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAD0);
  }

  return result;
}

unint64_t sub_F8E2C()
{
  result = qword_31DAD8;
  if (!qword_31DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAD8);
  }

  return result;
}

unint64_t sub_F8E84()
{
  result = qword_31DAE0;
  if (!qword_31DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAE0);
  }

  return result;
}

unint64_t sub_F8EDC()
{
  result = qword_31DAE8;
  if (!qword_31DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAE8);
  }

  return result;
}

unint64_t sub_F8F34()
{
  result = qword_31DAF0;
  if (!qword_31DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAF0);
  }

  return result;
}

unint64_t sub_F8F8C()
{
  result = qword_31DAF8;
  if (!qword_31DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAF8);
  }

  return result;
}

uint64_t sub_F8FE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F7262657965 && a2 == 0xE700000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4D6B726F77747261 && a2 == 0xEC0000006C65646FLL || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746F6E746F6F66 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t Text.withTrailingForwardChevron(_:layoutDirection:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = sub_261D90();
  __chkstk_darwin(v11 - 8);
  v12 = sub_2616C0();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v13 + 16))(v16, a2, v12, v14);
    v17 = (*(v13 + 88))(v16, v12);
    if (v17 == enum case for LayoutDirection.leftToRight(_:))
    {
      sub_261D80();
      v65._countAndFlagsBits = 0xA881E2A681E2;
      v65._object = 0xA600000000000000;
      sub_261D70(v65);
      sub_261D60();
      v66._countAndFlagsBits = 0xA0C2A981E2;
      v66._object = 0xA500000000000000;
      sub_261D70(v66);
      sub_2630B0();
      v18 = sub_262900();
      v20 = v19;
      v22 = v21;
      v23 = [objc_opt_self() tertiaryLabelColor];
      v64 = sub_263070();
      v24 = sub_2627F0();
      v26 = v25;
      v28 = v27;
      sub_39DBC(v18, v20, v22 & 1);

      sub_261D60();
      sub_39DBC(v24, v26, v28 & 1);

      v67._countAndFlagsBits = 11108834;
      v67._object = 0xA300000000000000;
      sub_261D70(v67);
      sub_261DA0();
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v30 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    }

    else
    {
      if (v17 != enum case for LayoutDirection.rightToLeft(_:))
      {
        sub_261D80();
        v71._countAndFlagsBits = 0;
        v71._object = 0xE000000000000000;
        sub_261D70(v71);
        sub_261D60();
        v72._countAndFlagsBits = 41154;
        v72._object = 0xA200000000000000;
        sub_261D70(v72);
        sub_2630B0();
        v44 = sub_262900();
        v46 = v45;
        v61 = v47;
        v62 = v48;
        v49 = [objc_opt_self() tertiaryLabelColor];
        v64 = sub_263070();
        v50 = v46;
        v51 = sub_2627F0();
        v53 = v52;
        v55 = v54;
        v63 = v56;
        sub_39DBC(v44, v50, v61 & 1);

        sub_261D60();
        sub_39DBC(v51, v53, v55 & 1);

        v73._countAndFlagsBits = 0;
        v73._object = 0xE000000000000000;
        sub_261D70(v73);
        sub_261DA0();
        type metadata accessor for BundleFinder();
        v57 = swift_getObjCClassFromMetadata();
        v58 = [objc_opt_self() bundleForClass:v57];
        a3 = sub_2628C0();
        (*(v13 + 8))(v16, v12);
        return a3;
      }

      sub_261D80();
      v68._countAndFlagsBits = 0xA881E2A781E2;
      v68._object = 0xA600000000000000;
      sub_261D70(v68);
      sub_261D60();
      v69._countAndFlagsBits = 0xA0C2A981E2;
      v69._object = 0xA500000000000000;
      sub_261D70(v69);
      sub_2630B0();
      v31 = sub_262900();
      v33 = v32;
      v35 = v34;
      v36 = [objc_opt_self() tertiaryLabelColor];
      v64 = sub_263070();
      v37 = sub_2627F0();
      v39 = v38;
      v41 = v40;
      sub_39DBC(v31, v33, v35 & 1);

      sub_261D60();
      sub_39DBC(v37, v39, v41 & 1);

      v70._countAndFlagsBits = 11108834;
      v70._object = 0xA300000000000000;
      sub_261D70(v70);
      sub_261DA0();
      type metadata accessor for BundleFinder();
      v42 = swift_getObjCClassFromMetadata();
      v43 = [objc_opt_self() bundleForClass:v42];
    }

    return sub_2628C0();
  }

  else
  {
    sub_43B58(a3, a4, a5 & 1);
  }

  return a3;
}

Swift::Int sub_F98E8(unsigned __int8 a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

Swift::Int sub_F99FC(unsigned __int8 a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

Swift::Int sub_F9AE0(unsigned __int8 a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_F9C14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListItemViewModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_F9CBC(uint64_t a1)
{
  sub_264500();

  return result;
}

unint64_t sub_F9DC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_FB604(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_F9DF0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x747865746E6F63;
  v5 = 0xE800000000000000;
  v6 = 0x4449736569726573;
  v7 = 0xD000000000000012;
  v8 = 0x800000000028FA10;
  if (v2 != 4)
  {
    v7 = 0xD000000000000013;
    v8 = 0x800000000028FA30;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656372756F736572;
  if (v2 != 1)
  {
    v10 = 0x4E6E6F6974636573;
    v9 = 0xEB00000000656D61;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_F9EBC()
{
  v1 = *v0;
  v2 = 0x747865746E6F63;
  v3 = 0x4449736569726573;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656372756F736572;
  if (v1 != 1)
  {
    v5 = 0x4E6E6F6974636573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_F9F84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_FB604(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_F9FAC(uint64_t a1)
{
  v2 = sub_FAF30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F9FE8(uint64_t a1)
{
  v2 = sub_FAF30();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_FA03C(uint64_t a1)
{
  sub_264500();

  return result;
}

unint64_t sub_FA170@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_FB6A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_FA1A0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006567;
  v4 = 0x6150736569726573;
  v5 = 0xEF68736F6F775373;
  v6 = 0x7472616843706F74;
  if (v2 != 5)
  {
    v6 = 0xD000000000000017;
    v5 = 0x800000000028FAB0;
  }

  v7 = 0x800000000028FA70;
  v8 = 0x7472616843706F74;
  if (v2 == 3)
  {
    v8 = 0xD000000000000017;
  }

  else
  {
    v7 = 0xED00007473694C73;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x800000000028FA50;
  v10 = 0xD000000000000012;
  if (v2 != 1)
  {
    v10 = 0x736E6F6974696465;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t CodeListItemViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = sub_2EF0(&qword_31A480, &qword_273520);
  __chkstk_darwin(v3 - 8);
  v75 = &v71 - v4;
  v5 = type metadata accessor for ListItemViewModel(0);
  __chkstk_darwin(v5);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_31DB00, &qword_276F08);
  v77 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v71 - v9;
  v11 = type metadata accessor for CodeListItemViewModel(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v78 = a1;
  sub_2E18(a1, v14);
  sub_FAF30();
  v15 = v97;
  sub_265120();
  if (v15)
  {
    goto LABEL_3;
  }

  v73 = v5;
  v74 = v13;
  v97 = v7;
  v16 = v77;
  sub_2EF0(&qword_317FB8, &unk_26AA50);
  LOBYTE(v91[0]) = 1;
  sub_8E38(&qword_317FC0, &qword_317FB8, &unk_26AA50, &protocol conformance descriptor for MResourceDecoder<A>);
  sub_264DF0();
  v17 = v8;
  v20 = *v90;
  sub_260810();
  if (!*&v90[24])
  {
    sub_8E80(v90, &qword_316D40, &unk_268FC0);
    v21 = sub_264C10();
    v72 = v8;
    v22 = v21;
    swift_allocError();
    v23 = v20;
    v25 = v24;
    sub_264D60();
    sub_4401C();
    swift_allocError();
    *v26 = 0;
    sub_264BF0();
    (*(*(v22 - 8) + 104))(v25, enum case for DecodingError.dataCorrupted(_:), v22);
    swift_willThrow();

    (*(v16 + 8))(v10, v72);
    goto LABEL_3;
  }

  sub_F7CC(v90, v95);
  LOBYTE(v91[0]) = 0;
  sub_FAF84();
  sub_264DF0();
  v71 = 0;
  v27 = v16;
  if (v90[0] <= 2u)
  {
    if (!v90[0])
    {
      v90[0] = 3;
      v37 = v71;
      v38 = sub_264DC0();
      v71 = v37;
      v41 = v40;
      v42 = v38;
      sub_30CC(v95, v90);
      v43 = v75;
      CardInfo.init(with:alwaysPresentNewCardSet:)(v90, 1, v75);
      v44 = v20;
      v45 = v97;
      static ListItemViewModel.seriesPage(seriesID:assetInfo:cardInfo:)(v42, v41, v95, v43, v97);

      sub_8E80(v43, &qword_31A480, &qword_273520);
      v46 = v8;
      v30 = v45;
      v31 = v74;
      (*(v27 + 8))(v10, v46);
      v32 = v76;
LABEL_23:
      v35 = v78;
      goto LABEL_24;
    }

    if (v90[0] != 1)
    {
      sub_2EF0(&qword_31DB18, &qword_276F10);
      LOBYTE(v91[0]) = 5;
      sub_FB040();
      v39 = v71;
      sub_264DF0();
      if (!v39)
      {
        v47 = *v90;
        v90[0] = 4;
        v48 = sub_264D70();
        v71 = 0;
        v52 = v51;
        v53 = v48;
        v75 = v20;
        v72 = v17;
        sub_30CC(v95, v91);
        *(&v92 + 1) = 0;
        LOBYTE(v93) = 1;
        *(&v93 + 1) = 0;
        v94 = 255;
        v89 = 0;
        memset(v88, 0, sizeof(v88));
        sub_2E18(v95, v96);
        v54 = sub_2608E0();
        if (!v55)
        {
          sub_2E18(v95, v96);
          v54 = sub_2609A0();
        }

        v56 = v54;
        v57 = v55;
        v87[3] = &type metadata for ListItemMetadataTitleWithSubtitle;
        v87[4] = sub_2E5C();
        v58 = swift_allocObject();
        v87[0] = v58;
        *(v58 + 16) = v56;
        *(v58 + 24) = v57;
        *(v58 + 32) = 0;
        *(v58 + 40) = 0;
        *(v58 + 48) = 0;
        v59 = sub_2EF0(&qword_31DB40, &qword_276F20);
        v85 = v59;
        v86 = sub_8E38(&qword_31DB48, &qword_31DB40, &qword_276F20, &protocol conformance descriptor for ListItemMetadataEditionsDescriptor<A>);
        v60 = sub_10934(v84);
        sub_30CC(v95, v60);
        v60[5] = v53;
        v60[6] = v52;
        v60[7] = v47;
        v61 = (v60 + *(v59 + 44));
        *v61 = swift_getKeyPath();
        sub_2EF0(&qword_316DC8, &qword_276F60);
        swift_storeEnumTagMultiPayload();
        v62 = *(type metadata accessor for ListItemEditionsDescriptorExternals(0) + 20);
        *(v61 + v62) = swift_getKeyPath();
        sub_2EF0(&qword_318170, &unk_26AF40);
        swift_storeEnumTagMultiPayload();
        memset(v83, 0, 40);
        v82 = 0;
        memset(v81, 0, sizeof(v81));
        v80 = 0;
        memset(v79, 0, sizeof(v79));
        memset(v90, 0, sizeof(v90));
        sub_34A0(v88, v90, &qword_315B58, &unk_266540);
        sub_34A0(v87, &v90[40], &qword_315B60, &unk_276FA0);
        sub_34A0(v84, &v90[80], &qword_315B68, &unk_266550);
        sub_34A0(v83, &v90[160], &qword_315B70, &unk_276FB0);
        sub_34A0(v81, &v90[200], &qword_315B78, &unk_266560);
        sub_34A0(v79, &v90[240], &qword_315B80, &qword_276FC0);
        v85 = &type metadata for ListItemAccessoryBuyButton;
        v86 = sub_825A0();
        v63 = swift_allocObject();
        v84[0] = v63;
        sub_30CC(v95, v63 + 32);
        *(v63 + 16) = swift_getKeyPath();
        *(v63 + 24) = 0;
        v30 = v97;
        sub_30CC(v95, (v97 + 408));
        sub_30CC(v95, v83);
        v64 = v73;
        CardInfo.init(with:alwaysPresentNewCardSet:)(v83, 1, v30 + *(v73 + 40));
        sub_2E18(v95, v96);
        v65 = sub_2606E0();
        v67 = v66;

        (*(v27 + 8))(v10, v72);
        v68 = v91[0];
        *(v30 + 24) = v91[1];
        v69 = v93;
        *(v30 + 40) = v92;
        *(v30 + 56) = v69;
        *v30 = 0;
        *(v30 + 360) = 0u;
        *(v30 + 376) = 0u;
        *(v30 + 392) = 0;
        *(v30 + 72) = v94;
        *(v30 + 8) = v68;
        memcpy((v30 + 80), v90, 0x118uLL);
        sub_34A0(v84, v30 + 360, &qword_31A488, &unk_272AA0);
        *(v30 + 400) = 0;
        v70 = v30 + *(v64 + 44);
        *(v70 + 96) = 0u;
        *(v70 + 112) = 0u;
        *(v70 + 64) = 0u;
        *(v70 + 80) = 0u;
        *(v70 + 32) = 0u;
        *(v70 + 48) = 0u;
        *v70 = xmmword_276EF0;
        *(v70 + 16) = 0u;
        *(v70 + 128) = v65;
        *(v70 + 136) = v67;
        *(v70 + 144) = 2;
        v32 = v76;
        v35 = v78;
        v31 = v74;
        goto LABEL_24;
      }

      (*(v16 + 8))(v10, v8);

      sub_3080(v95);
      v18 = v78;
      return sub_3080(v18);
    }

    sub_4401C();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();

    (*(v16 + 8))(v10, v8);
    sub_3080(v95);
LABEL_3:
    v18 = v78;
    return sub_3080(v18);
  }

  v28 = v20;
  v29 = v8;
  v30 = v97;
  v31 = v74;
  if (v90[0] > 4u)
  {
    v32 = v76;
    if (v90[0] == 5)
    {
      static ListItemViewModel.topChartsSwoosh(assetInfo:)(v95, v97);
    }

    else
    {
      static ListItemViewModel.topChartsGroupingSwoosh(assetInfo:)(v95, v97);
    }

    goto LABEL_22;
  }

  v32 = v76;
  if (v90[0] != 3)
  {
    static ListItemViewModel.topChartsList(assetInfo:)(v95, v97);
LABEL_22:

    (*(v16 + 8))(v10, v29);
    goto LABEL_23;
  }

  v90[0] = 2;
  v33 = v71;
  v34 = sub_264DC0();
  v35 = v78;
  v71 = v33;
  v49 = v97;
  static ListItemViewModel.recommendationsPage(sectionName:assetInfo:)(v34, v50, v95, v97);

  v30 = v49;
  v31 = v74;
  (*(v27 + 8))(v10, v29);
LABEL_24:
  sub_FAFD8(v30, v31, type metadata accessor for ListItemViewModel);
  sub_3080(v95);
  sub_FAFD8(v31, v32, type metadata accessor for CodeListItemViewModel);
  return sub_3080(v35);
}

uint64_t type metadata accessor for CodeListItemViewModel(uint64_t a1)
{
  result = qword_31DBB0;
  if (!qword_31DBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_FAF30()
{
  result = qword_31DB08;
  if (!qword_31DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DB08);
  }

  return result;
}

unint64_t sub_FAF84()
{
  result = qword_31DB10;
  if (!qword_31DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DB10);
  }

  return result;
}

uint64_t sub_FAFD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_FB040()
{
  result = qword_31DB20;
  if (!qword_31DB20)
  {
    sub_2F9C(&qword_31DB18, &qword_276F10);
    sub_FB0C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DB20);
  }

  return result;
}

unint64_t sub_FB0C4()
{
  result = qword_31DB28;
  if (!qword_31DB28)
  {
    sub_2F9C(&qword_31DB30, &qword_276F18);
    sub_FB148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DB28);
  }

  return result;
}

unint64_t sub_FB148()
{
  result = qword_31DB38;
  if (!qword_31DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DB38);
  }

  return result;
}

uint64_t sub_FB19C()
{

  return swift_deallocObject();
}

uint64_t sub_FB260()
{
  sub_4054(*(v0 + 16), *(v0 + 24));
  sub_3080((v0 + 32));

  return swift_deallocObject();
}

unint64_t sub_FB2B0()
{
  result = qword_31DB50;
  if (!qword_31DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DB50);
  }

  return result;
}

uint64_t sub_FB318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListItemViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_FB398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListItemViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_FB408(uint64_t a1)
{
  result = type metadata accessor for ListItemViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_FB4A8()
{
  result = qword_31DBE8;
  if (!qword_31DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DBE8);
  }

  return result;
}

unint64_t sub_FB500()
{
  result = qword_31DBF0;
  if (!qword_31DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DBF0);
  }

  return result;
}

unint64_t sub_FB558()
{
  result = qword_31DBF8;
  if (!qword_31DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DBF8);
  }

  return result;
}

unint64_t sub_FB5B0()
{
  result = qword_31DC00;
  if (!qword_31DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DC00);
  }

  return result;
}

unint64_t sub_FB604(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_3004E8;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_FB650()
{
  result = qword_31DC08;
  if (!qword_31DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DC08);
  }

  return result;
}

unint64_t sub_FB6A4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_300598;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_FB6F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 TransitionFrameViewModel.init(section:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_FB764()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v17[-v5];
  v7 = sub_264410();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v17[-v12];
  sub_2643A0();
  sub_260260();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v15 = sub_264490();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v15;
}

uint64_t sub_FBB6C@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 8);
  if (v3 == 1)
  {
    v10 = sub_2EF0(&qword_316DA0, &unk_277640);
    v11 = *(v10 + 48);
    v6 = *(v10 + 64);
    *a1 = 0xD00000000000001CLL;
    *(a1 + 1) = 0x8000000000292610;
    v12 = enum case for ColorScheme.light(_:);
    v13 = sub_261180();
    (*(*(v13 - 8) + 104))(&a1[v11], v12, v13);
    v9 = [objc_opt_self() secondarySystemBackgroundColor];
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = sub_2EF0(&qword_316DA0, &unk_277640);
    v5 = *(v4 + 48);
    v6 = *(v4 + 64);
    *a1 = 0xD000000000000018;
    *(a1 + 1) = 0x8000000000292630;
    v7 = enum case for ColorScheme.light(_:);
    v8 = sub_261180();
    (*(*(v8 - 8) + 104))(&a1[v5], v7, v8);
    v9 = [objc_opt_self() secondarySystemBackgroundColor];
LABEL_5:
    v14 = v9;
    *&a1[v6] = sub_262EE0();
    goto LABEL_7;
  }

  v15 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
  v16 = [objc_opt_self() secondarySystemBackgroundColor];
  *a1 = sub_262EE0();
  v17 = enum case for ColorScheme.light(_:);
  v18 = sub_261180();
  v19 = *(v18 - 8);
  (*(v19 + 104))(&a1[v15], v17, v18);
  (*(v19 + 56))(&a1[v15], 0, 1, v18);
LABEL_7:
  type metadata accessor for PageBackground(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_FBDE8()
{
  v1 = sub_2EF0(&qword_31DCF8, &qword_277628);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v7 = sub_2EF0(&qword_31DD00, &unk_277630);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v13 = *(v0 + 8);
  v14 = sub_260650();
  v15 = *(v14 - 8);
  v16 = &enum case for FrameName.transitionHighlight(_:);
  v17 = &enum case for FrameName.transitionReadingInsights(_:);
  if (v13 != 1)
  {
    v17 = &enum case for FrameName.transitionReaderType(_:);
  }

  if (v13)
  {
    v16 = v17;
  }

  (*(*(v14 - 8) + 104))(v12, *v16, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  v18 = sub_260490();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_8198(v12, v9, &qword_31DD00, &unk_277630);
  sub_8198(v6, v3, &qword_31DCF8, &qword_277628);
  sub_260540();
  sub_8E80(v6, &qword_31DCF8, &qword_277628);
  return sub_8E80(v12, &qword_31DD00, &unk_277630);
}

uint64_t type metadata accessor for TransitionFrame(uint64_t a1)
{
  result = qword_31DC80;
  if (!qword_31DC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TransitionFrame.exposureData.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TransitionFrame(0);
  a1[3] = sub_260550();
  a1[4] = sub_FD9AC(&qword_317678, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  a1[5] = sub_FD9AC(&qword_317680, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  sub_10934(a1);
  return sub_FBDE8();
}

uint64_t TransitionFrame.textAlignment.getter()
{
  if (*(v0 + *(type metadata accessor for TransitionFrame(0) + 20) + 8) >= 2uLL)
  {

    return sub_261D30();
  }

  else
  {

    return sub_261D10();
  }
}

uint64_t TransitionFrame.id.getter()
{
  type metadata accessor for TransitionFrame(0);
  sub_2EF0(&qword_31DC10, &qword_277340);
  v1._countAndFlagsBits = sub_2644B0();
  sub_264530(v1);

  v2._countAndFlagsBits = 45;
  v2._object = 0xE100000000000000;
  sub_264530(v2);
  sub_264CC0();
  return 0;
}

double sub_FC324()
{
  v1 = v0;
  v2 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  v12 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8198(v1, v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_FDB2C(v11, v14, type metadata accessor for SizeConstants);
  }

  else
  {
    sub_264900();
    v15 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  sub_FDB2C(v14, v4, type metadata accessor for SizeConstants.Environment);
  sub_FDACC(v4, type metadata accessor for SizeConstants.Spacing);
  return 16.0;
}

uint64_t TransitionFrame.init(model:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *a2 = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for TransitionFrame(0);
  v6 = (a2 + *(result + 20));
  *v6 = v3;
  v6[1] = v4;
  return result;
}

uint64_t TransitionFrame.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for TransitionFrame(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_FC890(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_FDB2C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for TransitionFrame);
  *a1 = sub_FC8F8;
  a1[1] = v7;
  return result;
}

uint64_t sub_FC74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PageBackground(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_261E50();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v9 = sub_2EF0(&qword_31DCC8, &qword_2774E8);
  sub_FC8FC(a2, a1, (a3 + *(v9 + 44)));
  KeyPath = swift_getKeyPath();
  v14 = *(a2 + *(type metadata accessor for TransitionFrame(0) + 20));
  sub_FBB6C(v8);
  v11 = (a3 + *(sub_2EF0(&qword_31DCD0, &unk_277520) + 36));
  v12 = sub_2EF0(&qword_3173A0, &qword_26D0C0);
  PageBackground.resolvedColorScheme.getter(v11 + *(v12 + 28));
  result = sub_FDACC(v8, type metadata accessor for PageBackground);
  *v11 = KeyPath;
  return result;
}

uint64_t sub_FC890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitionFrame(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_FC8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v69[2] = a2;
  v81 = a3;
  v4 = type metadata accessor for TextLockup(0);
  __chkstk_darwin(v4);
  v6 = (v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = sub_2EF0(&qword_31DCD8, &qword_277530);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v8 = v69 - v7;
  v70 = sub_2EF0(&qword_31DCE0, &qword_277538);
  __chkstk_darwin(v70);
  v10 = v69 - v9;
  v77 = sub_2EF0(&qword_31DCE8, &qword_277540);
  __chkstk_darwin(v77);
  v80 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v76 = v69 - v13;
  __chkstk_darwin(v14);
  v16 = v69 - v15;
  v17 = *(type metadata accessor for TransitionFrame(0) + 20);
  v69[1] = a1;
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v79 = v16;
  if (v19 >= 2)
  {
    sub_261D30();
  }

  else
  {
    sub_261D10();
  }

  v71 = v8;
  v78 = v10;
  sub_261D10();
  v75 = sub_261D00();
  v74 = v18;
  *&v82 = *v18;
  *(&v82 + 1) = v19;
  v20 = sub_FB764();
  v22 = v21;
  v23 = Color.init(hexString:)(0x653231384646, 0xE600000000000000);
  if (!v23)
  {
    v23 = sub_262FF0();
  }

  v24 = v23 | 0x8000000000000000;
  v25 = v4[13];
  v26 = sub_2625C0();
  (*(*(v26 - 8) + 56))(v6 + v25, 1, 1, v26);
  v27 = sub_261E60();
  v28 = sub_263580();
  v30 = v29;
  v31 = v4[17];
  v32 = enum case for DynamicTypeSize.accessibility2(_:);
  v33 = sub_261690();
  (*(*(v33 - 8) + 104))(v6 + v31, v32, v33);
  *v6 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v34 = v4[5];
  *(v6 + v34) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v35 = v6 + v4[6];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  v36 = v6 + v4[7];
  *v36 = swift_getKeyPath();
  v36[8] = 0;
  v37 = v6 + v4[8];
  *v37 = swift_getKeyPath();
  v37[8] = 0;
  *(v6 + v4[9]) = 5;
  v38 = (v6 + v4[10]);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v6 + v4[11]);
  *v39 = v20;
  v39[1] = v22;
  v39[2] = v24;
  v40 = (v6 + v4[12]);
  *v40 = 0;
  v40[1] = 0;
  *(v6 + v4[14]) = v27;
  v41 = (v6 + v4[15]);
  *v41 = v28;
  v41[1] = v30;
  *(v6 + v4[16]) = 0;
  sub_FD9AC(&qword_31BF50, type metadata accessor for TextLockup, &unk_28406C);
  v42 = v71;
  sub_262C10();
  sub_FDACC(v6, type metadata accessor for TextLockup);
  sub_261420();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  v43 = v78;
  (*(v72 + 32))(v78, v42, v73);
  v44 = (v43 + *(v70 + 36));
  v45 = v87;
  v44[4] = v86;
  v44[5] = v45;
  v44[6] = v88;
  v46 = v83;
  *v44 = v82;
  v44[1] = v46;
  v47 = v85;
  v44[2] = v84;
  v44[3] = v47;
  v48 = sub_262510();
  v49 = v74;
  v50 = v79;
  if (v74[1] >= 2uLL)
  {
    sub_261D30();
  }

  else
  {
    sub_261D10();
  }

  sub_261D10();
  if (sub_261D00())
  {
    sub_FC324();
  }

  sub_2610C0();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v76;
  sub_22148(v43, v76, &qword_31DCE0, &qword_277538);
  v60 = v59 + *(v77 + 36);
  *v60 = v48;
  *(v60 + 8) = v52;
  *(v60 + 16) = v54;
  *(v60 + 24) = v56;
  *(v60 + 32) = v58;
  *(v60 + 40) = 0;
  sub_22148(v59, v50, &qword_31DCE8, &qword_277540);
  if (v49[1] >= 2uLL)
  {
    sub_261D30();
  }

  else
  {
    sub_261D10();
  }

  v61 = v75;
  v62 = (v75 & 1) == 0;
  sub_261D20();
  v63 = sub_261D00();
  v64 = v80;
  sub_FD9F4(v50, v80);
  v65 = v81;
  *v81 = 0;
  *(v65 + 8) = v62;
  *(v65 + 9) = v61 & 1;
  v66 = sub_2EF0(&qword_31DCF0, &qword_277620);
  sub_FD9F4(v64, v65 + *(v66 + 48));
  v67 = v65 + *(v66 + 64);
  *v67 = 0;
  v67[8] = (v63 & 1) == 0;
  v67[9] = v63 & 1;
  sub_FDA64(v50);
  return sub_FDA64(v64);
}

uint64_t sub_FD0B0(uint64_t a1)
{
  result = sub_FD9AC(&qword_31DC18, type metadata accessor for TransitionFrame, &protocol conformance descriptor for TransitionFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_FD144@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_260550();
  a1[4] = sub_FD9AC(&qword_317678, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  a1[5] = sub_FD9AC(&qword_317680, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  sub_10934(a1);
  return sub_FBDE8();
}

uint64_t sub_FD1FC(uint64_t a1)
{
  result = sub_FD9AC(&qword_31DC20, type metadata accessor for TransitionFrame, &protocol conformance descriptor for TransitionFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_FD270@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_FC890(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_FDB2C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for TransitionFrame);
  *a2 = sub_FDB98;
  a2[1] = v7;
  return result;
}

uint64_t sub_FD370(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_FD388(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_FD3E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_FD440(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_FD494(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_FD4F0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_FD534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_317BF8, &unk_26F930);
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

    v11 = v10 - 2;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_FD620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_317BF8, &unk_26F930);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 + 1);
  }

  return result;
}

void sub_FD6E8(uint64_t a1)
{
  sub_3E754(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_FD760()
{
  result = qword_31DCB8;
  if (!qword_31DCB8)
  {
    sub_2F9C(&qword_31DCC0, &qword_2774E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DCB8);
  }

  return result;
}

uint64_t sub_FD7C4()
{
  v1 = type metadata accessor for TransitionFrame(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v4 = sub_261690();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  if (*(v2 + *(v1 + 20) + 8) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_FD904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TransitionFrame(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_FC74C(a1, v6, a2);
}

uint64_t sub_FD9AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_FD9F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31DCE8, &qword_277540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_FDA64(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31DCE8, &qword_277540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_FDACC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_FDB2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t View.clipShape<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v13 - v10;
  (*(a5 + 48))(a3, a5, v9);
  swift_getAssociatedConformanceWitness();
  sub_262E90();
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t View.coverEffect<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v8 = *(a3 - 8);
  __chkstk_darwin(a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _CoverEffectViewModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v21 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  _CoverEffectViewModifier.init(effect:)(v10, a3, a5, v19, v18);
  sub_262E30();
  return (*(v15 + 8))(v18, v14);
}

uint64_t _CoverEffectViewModifier.init(effect:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(type metadata accessor for _CoverEffectViewModifier(0, a2, a3, a4) + 36);
  *(a5 + v8) = swift_getKeyPath();
  sub_2EF0(&qword_31DD08, &qword_277680);
  swift_storeEnumTagMultiPayload();
  v9 = *(*(a2 - 8) + 32);

  return v9(a5, a1, a2);
}

double Image.coverEffect<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a4;
  v24 = a1;
  v25 = a5;
  v6 = *(a3 - 8);
  __chkstk_darwin(a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _CoverEffectViewModifier(0, v9, v10, v10);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  v15 = sub_2630C0();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, enum case for Image.ResizingMode.stretch(_:), v15, v17);
  v20 = sub_263100();
  (*(v16 + 8))(v19, v15);
  v26 = v20;
  (*(v6 + 16))(v8, v24, a3);
  _CoverEffectViewModifier.init(effect:)(v8, a3, v23, v21, v14);
  sub_262E30();
  (*(v12 + 8))(v14, v11);

  return result;
}

uint64_t sub_FE1F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_31DD08, &qword_277680);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_FF4CC(v2 + *(a1 + 36), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2617C0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_264900();
    v14 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_FE424(uint64_t a1)
{
  v2 = sub_2617C0();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_261AB0();
}

uint64_t _CoverEffectViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v46 = a3;
  v4 = *(a2 + 24);
  v43 = *(a2 + 16);
  v44 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = &v35 - v9;
  swift_getWitnessTable();
  v10 = sub_2620B0();
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v35 = &v35 - v13;
  v14 = sub_2617C0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v35 - v19;
  v45 = sub_261F90();
  v42 = *(v45 - 8);
  __chkstk_darwin(v45);
  v40 = &v35 - v21;
  sub_FE1F0(a2, v20);
  sub_2617A0();
  sub_FEA60();
  v22 = sub_264AF0();
  v23 = *(v15 + 8);
  v23(v17, v14);
  v23(v20, v14);
  if (v22)
  {
    WitnessTable = swift_getWitnessTable();
    v25 = v35;
    sub_1609C();
    v26 = v36;
    sub_1609C();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v28 = v40;
    sub_1D738(v26, v10, AssociatedTypeWitness, WitnessTable, AssociatedConformanceWitness);
    v29 = *(v37 + 8);
    v29(v26, v10);
    v29(v25, v10);
  }

  else
  {
    (*(v44 + 56))(v41, v43, v44);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v30 = v38;
    sub_1609C();
    v31 = *(v39 + 8);
    v31(v7, AssociatedTypeWitness);
    sub_1609C();
    v32 = swift_getWitnessTable();
    v28 = v40;
    sub_1D830(v7, v10, AssociatedTypeWitness, v32, AssociatedConformanceWitness);
    v31(v7, AssociatedTypeWitness);
    v31(v30, AssociatedTypeWitness);
  }

  v47 = swift_getWitnessTable();
  v48 = AssociatedConformanceWitness;
  v33 = v45;
  swift_getWitnessTable();
  sub_1609C();
  return (*(v42 + 8))(v28, v33);
}

unint64_t sub_FEA60()
{
  result = qword_31DD10[0];
  if (!qword_31DD10[0])
  {
    sub_2617C0();
    result = swift_getWitnessTable();
    atomic_store(result, qword_31DD10);
  }

  return result;
}

void sub_FEB28(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_FF14C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_FEBB0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_2617C0() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  if (v7 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(v8 + 80) & 0xF8 | 7;
  v12 = *(v6 + 64) + v11;
  if (a2 <= v10)
  {
    goto LABEL_30;
  }

  v13 = v9 + (v12 & ~v11) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_30:
      if (v7 < 0xFE)
      {
        v22 = *(((a1 + v12) & ~v11) + v9);
        if (v22 >= 2)
        {
          return (v22 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v21 = *(v6 + 48);

        return v21(a1, v7, v5);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_30;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v18) + 1;
}

void sub_FEE00(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_2617C0() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v10 + 80) & 0xF8 | 7;
  v14 = *(v8 + 64) + v13;
  v15 = v11 + 1;
  v16 = (v14 & ~v13) + v11 + 1;
  if (a3 <= v12)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v12 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v16] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0xFE)
  {
    v24 = (&a1[v14] & ~v13);
    if (a2 > 0xFE)
    {
      if (v15 <= 3)
      {
        v25 = ~(-1 << (8 * v15));
      }

      else
      {
        v25 = -1;
      }

      if (v15)
      {
        v26 = v25 & (a2 - 255);
        if (v15 <= 3)
        {
          v27 = v15;
        }

        else
        {
          v27 = 4;
        }

        bzero(v24, v15);
        if (v27 > 2)
        {
          if (v27 == 3)
          {
            *v24 = v26;
            v24[2] = BYTE2(v26);
          }

          else
          {
            *v24 = v26;
          }
        }

        else if (v27 == 1)
        {
          *v24 = v26;
        }

        else
        {
          *v24 = v26;
        }
      }
    }

    else
    {
      v24[v11] = -a2;
    }
  }

  else
  {
    v23 = *(v28 + 56);

    v23(a1, a2, v9, v7);
  }
}

void sub_FF14C(uint64_t a1)
{
  if (!qword_31DD98)
  {
    sub_2617C0();
    v1 = sub_2611E0();
    if (!v2)
    {
      atomic_store(v1, &qword_31DD98);
    }
  }
}

uint64_t sub_FF1A4(uint64_t *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_261280();
  sub_261730();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_FF28C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _CoverEffectViewModifier(255, a1[1], a1[3], a4);
  sub_261730();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_FF320(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _CoverEffectViewModifier(255, *a1, a1[1], a4);
  sub_261730();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_FF3B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _CoverEffectViewModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_2620B0();
  swift_getAssociatedTypeWitness();
  sub_261F90();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t sub_FF4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31DD08, &qword_277680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_FF5A0()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 72);
  if (*(v0 + 80) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_264900();
    v7 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_1FED0(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_FF6F0()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24[15] = *(v0 + 63);
  v5 = v0[3];
  v23[2] = v0[2];
  *v24 = v5;
  v6 = v0[1];
  v23[0] = *v0;
  v23[1] = v6;
  if (v24[18])
  {
    v7 = v0[3];
    v20 = v0[2];
    v21 = v7;
    v22 = *(v0 + 32);
    v8 = v0[1];
    v18 = *v0;
    v19 = v8;
    v16 = v20;
    v17[0] = v7;
    *(v17 + 15) = *(v0 + 63);
    v14 = v18;
    v15 = v8;
    sub_8198(&v14, &v13, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v9 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v23, &qword_317F40, &qword_26E9D0);
    (*(v2 + 8))(v4, v1);
  }

  v14 = v18;
  v15 = v19;
  v16 = v20;
  v17[0] = v21;
  LOWORD(v17[1]) = v22;
  if (*(&v18 + 1))
  {
    v10 = BYTE2(v17[0]);
    sub_8E80(&v14, &qword_317F48, &qword_26A9A0);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t WantToReadToolbarButton.init(assetInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v178 = a2;
  v3 = sub_260560();
  v175 = *(v3 - 8);
  v176 = v3;
  __chkstk_darwin(v3);
  v174 = &v143 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_260600();
  __chkstk_darwin(v5 - 8);
  v172 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_2601E0();
  v200 = *(v193 - 8);
  __chkstk_darwin(v193);
  v192 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316B98, &unk_275840);
  __chkstk_darwin(v8 - 8);
  v173 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v177 = &v143 - v11;
  __chkstk_darwin(v12);
  v171 = &v143 - v13;
  __chkstk_darwin(v14);
  v166 = &v143 - v15;
  __chkstk_darwin(v16);
  v180 = &v143 - v17;
  __chkstk_darwin(v18);
  v165 = &v143 - v19;
  v189 = type metadata accessor for AssetAction.Kind(0);
  __chkstk_darwin(v189);
  v170 = (&v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v162 = (&v143 - v22);
  v23 = sub_263DD0();
  __chkstk_darwin(v23 - 8);
  v188 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_263A10();
  v198 = *(v187 - 8);
  __chkstk_darwin(v187);
  v186 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2EF0(&qword_322C70, &qword_272AD0);
  __chkstk_darwin(v26 - 8);
  v167 = &v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v143 - v29;
  v194 = sub_263AF0();
  v199 = *(v194 - 8);
  __chkstk_darwin(v194);
  v181 = &v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v184 = &v143 - v33;
  v201 = type metadata accessor for AssetAction(0);
  __chkstk_darwin(v201);
  v168 = (&v143 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v169 = &v143 - v36;
  __chkstk_darwin(v37);
  v183 = (&v143 - v38);
  __chkstk_darwin(v39);
  v164 = &v143 - v40;
  ToolbarButton = type metadata accessor for WantToReadToolbarButton(0);
  __chkstk_darwin(ToolbarButton);
  v42 = &v143 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v218 = 0;
  *v42 = KeyPath;
  v42[66] = 0;
  *(v42 + 9) = swift_getKeyPath();
  v190 = v42;
  v42[80] = 0;
  sub_2E18(a1, a1[3]);
  v185 = sub_2606E0();
  v179 = v44;
  sub_2E18(a1, a1[3]);
  v45 = sub_2606E0();
  v146 = v46;
  v147 = v45;
  sub_2E18(a1, a1[3]);
  LODWORD(v145) = sub_260870();
  sub_2E18(a1, a1[3]);
  v197 = sub_2606E0();
  LOBYTE(v217[0]) = 26;
  v47 = _s7BooksUI7MetricsO13actionDetails3for9assetInfoSDySSypGSgAC15ClickActionTypeO_14BookFoundation05AssetH0_ptFZ_0(v217, a1);
  sub_2E18(a1, a1[3]);
  sub_2608C0();
  v48 = sub_260060();
  v49 = *(v48 - 8);
  v160 = *(v49 + 48);
  v161 = v49 + 48;
  v50 = v160(v30, 1, v48);
  v163 = v48;
  if (v50 == 1)
  {
    sub_8E80(v30, &qword_322C70, &qword_272AD0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v51 = sub_260020();
    v52 = v53;
    (*(v49 + 8))(v30, v48);
  }

  v144 = v49;
  if (qword_315900 != -1)
  {
    swift_once();
  }

  v217[8] = xmmword_31ADC0;
  v217[9] = xmmword_31ADD0;
  v217[10] = xmmword_31ADE0;
  v217[4] = xmmword_31AD80;
  v217[5] = xmmword_31AD90;
  v217[6] = xmmword_31ADA0;
  v217[7] = xmmword_31ADB0;
  v217[0] = xmmword_31AD40;
  v217[1] = *algn_31AD50;
  v217[2] = xmmword_31AD60;
  v217[3] = xmmword_31AD70;
  v54 = &_swiftEmptyDictionarySingleton;
  if (v47)
  {
    *(&v207 + 1) = sub_2EF0(&qword_3160D0, &unk_270CF0);
    *&v206 = v47;
    sub_FBD8(&v206, &v204);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v203[0] = &_swiftEmptyDictionarySingleton;
    sub_DC90(&v204, 0x65446E6F69746361, 0xED0000736C696174, isUniquelyReferenced_nonNull_native);
    v54 = *&v203[0];
  }

  if (v52)
  {
    *(&v207 + 1) = &type metadata for String;
    *&v206 = v51;
    *(&v206 + 1) = v52;
    sub_FBD8(&v206, &v204);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    *&v203[0] = v54;
    sub_DC90(&v204, 0x72556E6F69746361, 0xE90000000000006CLL, v56);
    v54 = *&v203[0];
  }

  v57 = v184;
  v182 = a1;
  *(&v207 + 1) = &type metadata for String;
  *&v206 = 0xD000000000000014;
  *(&v206 + 1) = 0x800000000028F900;
  sub_FBD8(&v206, &v204);
  v58 = swift_isUniquelyReferenced_nonNull_native();
  *&v203[0] = v54;
  sub_DC90(&v204, 0x79546E6F69746361, 0xEA00000000006570, v58);
  v59 = *&v203[0];
  v159 = sub_2EF0(&qword_317218, &unk_269760);
  v60 = swift_allocObject();
  v195 = xmmword_267D30;
  *(v60 + 16) = xmmword_267D30;
  *(v60 + 32) = sub_1694E0();
  v158 = sub_2EF0(&qword_319B10, &qword_2777B0);
  *(&v207 + 1) = v158;
  *&v206 = v60;
  sub_FBD8(&v206, &v204);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *&v203[0] = v59;
  sub_DC90(&v204, 0x6E6F697461636F6CLL, 0xE800000000000000, v61);
  if (qword_3158E0 != -1)
  {
    swift_once();
  }

  v62 = sub_2639E0();
  v63 = sub_B080(v62, qword_353F10);
  v64 = v186;
  v157 = v63;
  sub_2639C0();

  v65 = sub_2EF0(&qword_3160D8, &qword_267D60);
  v66 = v198;
  v67 = *(v198 + 72);
  v68 = (*(v198 + 80) + 32) & ~*(v198 + 80);
  v154 = *(v198 + 80);
  v155 = v65;
  v153 = v68 + v67;
  v69 = swift_allocObject();
  *(v69 + 16) = v195;
  v70 = *(v66 + 16);
  v156 = v68;
  v71 = v187;
  v151 = v70;
  v152 = v66 + 16;
  v70(v69 + v68, v64, v187);
  sub_263DC0();
  sub_263AD0();
  v72 = *(v66 + 8);
  v198 = v66 + 8;
  v150 = v72;
  v72(v64, v71);
  v73 = v162;
  *v162 = 0xD00000000000001ALL;
  *(v73 + 8) = 0x8000000000291540;
  v149 = 0x8000000000291540;
  *(v73 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  v74 = v57;
  v75 = sub_260620();
  v76 = *(v75 - 8);
  v77 = v165;
  v196 = *(v76 + 56);
  v197 = v76 + 56;
  v196(v165, 1, 1, v75);
  v78 = v192;
  sub_2601D0();
  v79 = sub_2601C0();
  v81 = v80;
  v82 = *(v200 + 8);
  v200 += 8;
  v148 = v82;
  v82(v78, v193);
  v83 = v183;
  *v183 = v79;
  v83[1] = v81;
  v84 = v179;
  v83[2] = v185;
  v83[3] = v84;
  v85 = v146;
  v83[4] = v147;
  v83[5] = v85;
  *(v83 + 48) = v145 & 1;
  v86 = v201;
  v87 = v83 + *(v201 + 32);
  v88 = v194;
  v146 = *(v199 + 16);
  v147 = v199 + 16;
  v146(v87, v74, v194);
  v89 = *(v86 + 40);
  v90 = v73;
  sub_102D04(v73, v83 + v89, type metadata accessor for AssetAction.Kind);
  v91 = v77;
  v92 = v166;
  sub_8198(v77, v166, &qword_316B98, &unk_275840);
  v94 = (v76 + 48);
  v93 = *(v76 + 48);
  v95 = v93(v92, 1, v75);
  v185 = v75;
  v145 = v76;
  v179 = v93;
  if (v95 == 1)
  {
    AssetAction.Kind.appAnalyticsClickTargetType.getter(v172);
    (*(v175 + 104))(v174, enum case for LinkActionType.click(_:), v176);
    sub_260610();
    sub_8E80(v91, &qword_316B98, &unk_275840);
    v75 = v185;
    sub_7248C(v90);
    v165 = *(v199 + 8);
    (v165)(v184, v194);
    v96 = v93(v92, 1, v75);
    v97 = v167;
    v98 = v94;
    if (v96 != 1)
    {
      sub_8E80(v92, &qword_316B98, &unk_275840);
    }

    v99 = v180;
    v100 = v182;
  }

  else
  {
    sub_8E80(v91, &qword_316B98, &unk_275840);
    sub_7248C(v90);
    v165 = *(v199 + 8);
    (v165)(v184, v88);
    v99 = v180;
    (*(v76 + 32))(v180, v92, v75);
    v97 = v167;
    v100 = v182;
    v98 = v94;
  }

  v196(v99, 0, 1, v75);
  v101 = v183;
  sub_22148(v99, v183 + *(v201 + 36), &qword_316B98, &unk_275840);
  v102 = v101;
  v103 = v164;
  sub_102678(v102, v164, type metadata accessor for AssetAction);
  sub_102678(v103, &v190[*(ToolbarButton + 24)], type metadata accessor for AssetAction);
  sub_2E18(v100, v100[3]);
  v183 = sub_2606E0();
  v180 = v104;
  sub_2E18(v100, v100[3]);
  v105 = sub_2606E0();
  v166 = v106;
  v167 = v105;
  sub_2E18(v100, v100[3]);
  LODWORD(v164) = sub_260870();
  sub_2E18(v100, v100[3]);
  v162 = sub_2606E0();
  LOBYTE(v206) = 1;
  v107 = _s7BooksUI7MetricsO13actionDetails3for9assetInfoSDySSypGSgAC15ClickActionTypeO_14BookFoundation05AssetH0_ptFZ_0(&v206, v100);
  sub_2E18(v100, v100[3]);
  sub_2608C0();
  v108 = v163;
  if (v160(v97, 1, v163) == 1)
  {
    sub_8E80(v97, &qword_322C70, &qword_272AD0);
    v109 = 0;
    v110 = 0;
  }

  else
  {
    v109 = sub_260020();
    v110 = v111;
    (*(v144 + 8))(v97, v108);
  }

  v184 = v98;
  v214 = xmmword_31ADC0;
  v215 = xmmword_31ADD0;
  v216 = xmmword_31ADE0;
  v210 = xmmword_31AD80;
  v211 = xmmword_31AD90;
  v212 = xmmword_31ADA0;
  v213 = xmmword_31ADB0;
  v206 = xmmword_31AD40;
  v207 = *algn_31AD50;
  v208 = xmmword_31AD60;
  v209 = xmmword_31AD70;
  v112 = &_swiftEmptyDictionarySingleton;
  if (v107)
  {
    v205 = sub_2EF0(&qword_3160D0, &unk_270CF0);
    *&v204 = v107;
    sub_FBD8(&v204, v203);
    v113 = swift_isUniquelyReferenced_nonNull_native();
    v202 = &_swiftEmptyDictionarySingleton;
    sub_DC90(v203, 0x65446E6F69746361, 0xED0000736C696174, v113);
    v112 = v202;
  }

  v114 = v173;
  v115 = v181;
  if (v110)
  {
    v205 = &type metadata for String;
    *&v204 = v109;
    *(&v204 + 1) = v110;
    sub_FBD8(&v204, v203);
    v116 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v112;
    sub_DC90(v203, 0x72556E6F69746361, 0xE90000000000006CLL, v116);
    v112 = v202;
  }

  v205 = &type metadata for String;
  *&v204 = 0x6E61576F54646461;
  *(&v204 + 1) = 0xEF646165526F5474;
  sub_FBD8(&v204, v203);
  v117 = swift_isUniquelyReferenced_nonNull_native();
  v202 = v112;
  sub_DC90(v203, 0x79546E6F69746361, 0xEA00000000006570, v117);
  v118 = v202;
  v119 = swift_allocObject();
  *(v119 + 16) = v195;
  *(v119 + 32) = sub_1694E0();
  v205 = v158;
  *&v204 = v119;
  sub_FBD8(&v204, v203);
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v202 = v118;
  sub_DC90(v203, 0x6E6F697461636F6CLL, 0xE800000000000000, v120);
  v121 = v186;
  sub_2639C0();

  v122 = swift_allocObject();
  *(v122 + 16) = v195;
  v123 = v187;
  v151(v122 + v156, v121, v187);
  sub_263DC0();
  sub_263AD0();
  v150(v121, v123);
  v124 = v170;
  v125 = v149;
  *v170 = 0xD00000000000001ALL;
  *(v124 + 8) = v125;
  *(v124 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  v126 = v171;
  v127 = v185;
  v196(v171, 1, 1, v185);
  v128 = v192;
  sub_2601D0();
  v129 = sub_2601C0();
  v131 = v130;
  v132 = v128;
  v133 = v127;
  v148(v132, v193);
  v134 = v168;
  *v168 = v129;
  *(v134 + 8) = v131;
  v135 = v180;
  *(v134 + 16) = v183;
  *(v134 + 24) = v135;
  v136 = v166;
  *(v134 + 32) = v167;
  *(v134 + 40) = v136;
  *(v134 + 48) = v164 & 1;
  v137 = v201;
  v138 = v194;
  v146(v134 + *(v201 + 32), v115, v194);
  sub_102D04(v124, v134 + *(v137 + 40), type metadata accessor for AssetAction.Kind);
  sub_8198(v126, v114, &qword_316B98, &unk_275840);
  if (v179(v114, 1, v127) == 1)
  {
    AssetAction.Kind.appAnalyticsClickTargetType.getter(v172);
    (*(v175 + 104))(v174, enum case for LinkActionType.click(_:), v176);
    v139 = v177;
    v133 = v185;
    sub_260610();
    sub_8E80(v126, &qword_316B98, &unk_275840);
    sub_7248C(v124);
    (v165)(v181, v138);
    if (v179(v114, 1, v133) != 1)
    {
      sub_8E80(v114, &qword_316B98, &unk_275840);
    }
  }

  else
  {
    sub_8E80(v126, &qword_316B98, &unk_275840);
    sub_7248C(v124);
    (v165)(v115, v138);
    v139 = v177;
    (*(v145 + 32))(v177, v114, v127);
  }

  v196(v139, 0, 1, v133);
  sub_22148(v139, v134 + *(v201 + 36), &qword_316B98, &unk_275840);
  v140 = v169;
  sub_102678(v134, v169, type metadata accessor for AssetAction);
  v141 = v190;
  sub_102678(v140, &v190[*(ToolbarButton + 28)], type metadata accessor for AssetAction);
  sub_102678(v141, v178, type metadata accessor for WantToReadToolbarButton);
  return sub_3080(v182);
}

uint64_t WantToReadToolbarButton.body.getter()
{
  v1 = sub_2EF0(&qword_31DDA0, &qword_2777B8);
  __chkstk_darwin(v1);
  v3 = &v5[-v2];
  sub_101044(v0, &v5[-v2]);
  v6 = v0;
  sub_260B00();
  sub_1026E8();
  sub_102CBC(&qword_3184E0, &type metadata accessor for LocalizedText, &protocol conformance descriptor for LocalizedText);
  sub_262BE0();
  return sub_102930(v3);
}

uint64_t sub_101044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v73 = sub_2EF0(&qword_31DDF0, &qword_2777E0);
  v3 = *(v73 - 8);
  __chkstk_darwin(v73);
  v63 = (v60 - v4);
  v76 = sub_2EF0(&qword_31DE90, &unk_277870);
  __chkstk_darwin(v76);
  v77 = v60 - v5;
  v6 = sub_263EE0();
  v70 = *(v6 - 8);
  v71 = v6;
  __chkstk_darwin(v6);
  v68 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = v60 - v9;
  v10 = sub_2604E0();
  __chkstk_darwin(v10 - 8);
  ToolbarButton = type metadata accessor for WantToReadToolbarButton(0);
  v64 = *(ToolbarButton - 8);
  v12 = *(v64 + 64);
  __chkstk_darwin(ToolbarButton);
  v13 = sub_2EF0(&qword_316960, &unk_2689F0);
  __chkstk_darwin(v13 - 8);
  v15 = v60 - v14;
  v72 = sub_2EF0(&qword_31DDC8, &qword_2777D0);
  __chkstk_darwin(v72);
  v17 = v60 - v16;
  v74 = sub_2EF0(&qword_31DDC0, &qword_2777C8);
  v66 = *(v74 - 8);
  __chkstk_darwin(v74);
  v65 = v60 - v18;
  v75 = sub_2EF0(&qword_31DE98, &qword_277880);
  v19 = *(v75 - 8);
  __chkstk_darwin(v75);
  v67 = v60 - v20;
  v21 = a1;
  v22 = sub_FF5A0();
  if (v22)
  {

    v23 = sub_2610B0();
    (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
    *(&v81 + 1) = type metadata accessor for AssetAction(0);
    v82 = sub_102CBC(&qword_319AE8, type metadata accessor for AssetAction, &protocol conformance descriptor for AssetAction);
    v24 = sub_10934(&v80);
    v63 = v19;
    v25 = sub_FF6F0();
    v26 = 28;
    if (v25)
    {
      v26 = 24;
    }

    sub_102D04(a1 + *(ToolbarButton + v26), v24, type metadata accessor for AssetAction);
    v62 = a1;
    sub_102D04(a1, v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WantToReadToolbarButton);
    v27 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v28 = swift_allocObject();
    sub_102678(v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for WantToReadToolbarButton);
    sub_2604C0();
    sub_260420();
    v29 = v72;
    v30 = &v17[*(v72 + 36)];
    *v30 = swift_getKeyPath();
    v30[8] = 0;
    v31 = v29[10];
    *&v17[v31] = swift_getKeyPath();
    sub_2EF0(&qword_316930, &qword_2689A0);
    swift_storeEnumTagMultiPayload();
    v32 = &v17[v29[11]];
    *v32 = swift_getKeyPath();
    v32[40] = 0;
    v33 = &v17[v29[12]];
    v34 = sub_2EF0(&qword_31DEA0, &unk_2778F0);
    v33[3] = v34;
    v33[4] = sub_8E38(&qword_31DEA8, &qword_31DEA0, &unk_2778F0, &unk_268B6C);
    v35 = sub_10934(v33);
    v36 = sub_22148(v15, v35, &qword_316960, &unk_2689F0);
    v60[1] = v60;
    v37 = (v35 + *(v34 + 36));
    *v37 = sub_1031A4;
    v37[1] = v28;
    v38 = &v17[v29[13]];
    v39 = v81;
    *v38 = v80;
    *(v38 + 1) = v39;
    *(v38 + 4) = v82;
    __chkstk_darwin(v36);
    v60[-2] = v21;
    v64 = sub_2EF0(&qword_31DDD0, &qword_2777D8);
    v61 = sub_8E38(&qword_31DDD8, &qword_31DDC8, &qword_2777D0, &protocol conformance descriptor for BooksActionButton<A>);
    v40 = sub_8E38(&qword_31DDE0, &qword_31DDD0, &qword_2777D8, &protocol conformance descriptor for TupleView<A>);
    v41 = v65;
    sub_262D60();
    sub_8E80(v17, &qword_31DDC8, &qword_2777D0);
    v80 = 0u;
    v81 = 0u;
    memset(v79, 0, sizeof(v79));
    v42 = v68;
    sub_263EA0();
    sub_8E80(v79, &qword_316200, &qword_267FD0);
    sub_8E80(&v80, &qword_316200, &qword_267FD0);
    v43 = sub_FF6F0();
    *(&v81 + 1) = &type metadata for Bool;
    LOBYTE(v80) = v43 & 1;
    v44 = v69;
    sub_263ED0();
    v45 = *(v70 + 8);
    v46 = v42;
    v47 = v71;
    v45(v46, v71);
    sub_8E80(&v80, &qword_316200, &qword_267FD0);
    *&v80 = v29;
    *(&v80 + 1) = v64;
    *&v81 = v61;
    *(&v81 + 1) = v40;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = v67;
    v50 = v74;
    sub_262930();
    v45(v44, v47);
    (*(v66 + 8))(v41, v50);
    v51 = v63;
    v52 = v75;
    v63[2](v77, v49, v75);
    swift_storeEnumTagMultiPayload();
    *&v80 = v50;
    *(&v80 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31DDE8, &qword_31DDF0, &qword_2777E0, &protocol conformance descriptor for Button<A>);
    sub_261F80();
    return v51[1](v49, v52);
  }

  else
  {
    __chkstk_darwin(0);
    v60[-2] = a1;
    sub_6684C();
    v54 = v63;
    sub_263230();
    v55 = v73;
    (*(v3 + 16))(v77, v54, v73);
    swift_storeEnumTagMultiPayload();
    v56 = sub_2F9C(&qword_31DDD0, &qword_2777D8);
    v57 = sub_8E38(&qword_31DDD8, &qword_31DDC8, &qword_2777D0, &protocol conformance descriptor for BooksActionButton<A>);
    v58 = sub_8E38(&qword_31DDE0, &qword_31DDD0, &qword_2777D8, &protocol conformance descriptor for TupleView<A>);
    *&v80 = v72;
    *(&v80 + 1) = v56;
    *&v81 = v57;
    *(&v81 + 1) = v58;
    v59 = swift_getOpaqueTypeConformance2();
    *&v80 = v74;
    *(&v80 + 1) = v59;
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31DDE8, &qword_31DDF0, &qword_2777E0, &protocol conformance descriptor for Button<A>);
    sub_261F80();
    return (*(v3 + 8))(v54, v55);
  }
}

double sub_101C6C@<D0>(uint64_t *a1@<X8>)
{
  v2 = sub_260BD0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_260B00();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v15[-v8];
  sub_1022EC(&v17);
  v10 = sub_2630B0();
  sub_1022EC(&v16);
  SymbolImage.Kind.accessibilityLocalizable.getter();
  sub_260B10();
  v11 = *(v4 + 16);
  v11(v6, v9, v3);
  *a1 = v10;
  v12 = sub_2EF0(&qword_31DEB0, &unk_277900);
  v11(a1 + *(v12 + 48), v6, v3);
  v13 = *(v4 + 8);

  v13(v9, v3);
  v13(v6, v3);

  return result;
}

void sub_101F54()
{
  if (qword_315868 != -1)
  {
    swift_once();
  }

  v0 = sub_260D50();
  sub_B080(v0, qword_315FE8);
  oslog = sub_260D30();
  v1 = sub_2648F0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "Attempt to use CircularWantToReadButton without analytics tracker", v2, 2u);
  }
}

uint64_t sub_10203C@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28[15] = *(a1 + 63);
  v8 = a1[3];
  v27[2] = a1[2];
  *v28 = v8;
  v9 = a1[1];
  v27[0] = *a1;
  v27[1] = v9;
  if (v28[18])
  {
    v10 = a1[3];
    v24 = a1[2];
    v25 = v10;
    v26 = *(a1 + 32);
    v11 = a1[1];
    v22 = *a1;
    v23 = v11;
    v20 = v24;
    v21[0] = v10;
    *(v21 + 15) = *(a1 + 63);
    v18 = v22;
    v19 = v11;
    result = sub_8198(&v18, &v17, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v27, &qword_317F40, &qword_26E9D0);
    result = (*(v5 + 8))(v7, v4);
  }

  v18 = v22;
  v19 = v23;
  v20 = v24;
  v21[0] = v25;
  LOWORD(v21[1]) = v26;
  if (*(&v22 + 1) && (v14 = BYTE2(v21[0]), result = sub_8E80(&v18, &qword_317F48, &qword_26A9A0), (v14 & 1) != 0))
  {
    v15 = 1;
  }

  else
  {
    v15 = 4;
  }

  *a2 = v15;
  return result;
}

uint64_t sub_102254()
{
  v0 = sub_260BD0();
  __chkstk_darwin(v0 - 8);
  sub_1022EC(&v2);
  SymbolImage.Kind.accessibilityLocalizable.getter();
  return sub_260B10();
}

uint64_t sub_1022EC@<X0>(char *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27[15] = *(v1 + 63);
  v7 = v1[3];
  v26[2] = v1[2];
  *v27 = v7;
  v8 = v1[1];
  v26[0] = *v1;
  v26[1] = v8;
  if (v27[18])
  {
    v9 = v1[3];
    v23 = v1[2];
    v24 = v9;
    v25 = *(v1 + 32);
    v10 = v1[1];
    v21 = *v1;
    v22 = v10;
    v19 = v23;
    v20[0] = v9;
    *(v20 + 15) = *(v1 + 63);
    v17 = v21;
    v18 = v10;
    result = sub_8198(&v17, &v16, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v12 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v26, &qword_317F40, &qword_26E9D0);
    result = (*(v4 + 8))(v6, v3);
  }

  v17 = v21;
  v18 = v22;
  v19 = v23;
  v20[0] = v24;
  LOWORD(v20[1]) = v25;
  if (*(&v21 + 1) && (v13 = BYTE2(v20[0]), result = sub_8E80(&v17, &qword_317F48, &qword_26A9A0), (v13 & 1) != 0))
  {
    v14 = 1;
  }

  else
  {
    v14 = 4;
  }

  *a1 = v14;
  return result;
}

uint64_t sub_102500()
{
  v1 = sub_2EF0(&qword_31DDA0, &qword_2777B8);
  __chkstk_darwin(v1);
  v3 = &v5[-v2];
  sub_101044(v0, &v5[-v2]);
  v6 = v0;
  sub_260B00();
  sub_1026E8();
  sub_102CBC(&qword_3184E0, &type metadata accessor for LocalizedText, &protocol conformance descriptor for LocalizedText);
  sub_262BE0();
  return sub_102930(v3);
}

uint64_t type metadata accessor for WantToReadToolbarButton(uint64_t a1)
{
  result = qword_31DE50;
  if (!qword_31DE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_102678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1026E8()
{
  result = qword_31DDA8;
  if (!qword_31DDA8)
  {
    sub_2F9C(&qword_31DDA0, &qword_2777B8);
    sub_10276C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DDA8);
  }

  return result;
}

unint64_t sub_10276C()
{
  result = qword_31DDB0;
  if (!qword_31DDB0)
  {
    sub_2F9C(&qword_31DDB8, &qword_2777C0);
    sub_2F9C(&qword_31DDC0, &qword_2777C8);
    sub_2F9C(&qword_31DDC8, &qword_2777D0);
    sub_2F9C(&qword_31DDD0, &qword_2777D8);
    sub_8E38(&qword_31DDD8, &qword_31DDC8, &qword_2777D0, &protocol conformance descriptor for BooksActionButton<A>);
    sub_8E38(&qword_31DDE0, &qword_31DDD0, &qword_2777D8, &protocol conformance descriptor for TupleView<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31DDE8, &qword_31DDF0, &qword_2777E0, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DDB0);
  }

  return result;
}

uint64_t sub_102930(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31DDA0, &qword_2777B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1029C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 66);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for AssetAction(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_102A80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 66) = -a2;
  }

  else
  {
    v7 = type metadata accessor for AssetAction(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_102B20(uint64_t a1)
{
  sub_78DC8(319, &qword_31A6A0, &qword_317F48, &qword_26A9A0);
  if (v1 <= 0x3F)
  {
    sub_78DC8(319, &qword_316A00, &qword_316A08, &unk_277860);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AssetAction(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_102BEC()
{
  sub_2F9C(&qword_31DDA0, &qword_2777B8);
  sub_260B00();
  sub_1026E8();
  sub_102CBC(&qword_3184E0, &type metadata accessor for LocalizedText, &protocol conformance descriptor for LocalizedText);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_102CBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_102D04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_102D6C()
{
  ToolbarButton = type metadata accessor for WantToReadToolbarButton(0);
  v23 = *(*(ToolbarButton - 8) + 80);
  v2 = v0 + ((v23 + 16) & ~v23);
  sub_3060(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 66));
  sub_1FED0(*(v2 + 72), *(v2 + 80));
  v3 = v2 + *(ToolbarButton + 24);

  v4 = type metadata accessor for AssetAction(0);
  v5 = v4[8];
  v6 = sub_263AF0();
  v22 = *(*(v6 - 8) + 8);
  v22(v3 + v5, v6);
  v7 = v4[9];
  v8 = sub_260620();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  v11 = v3 + v4[10];
  type metadata accessor for AssetAction.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 3)
      {

        v14 = *(v11 + 24);
        goto LABEL_15;
      }

LABEL_14:
      v14 = *v11;
LABEL_15:

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
LABEL_19:

      goto LABEL_20;
    }

    v13 = sub_260060();
LABEL_18:
    (*(*(v13 - 8) + 8))(v11, v13);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 7)
  {
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 9 || EnumCaseMultiPayload == 10)
  {
    v13 = sub_2601B0();
    goto LABEL_18;
  }

LABEL_20:
  v15 = v2 + *(ToolbarButton + 28);

  v22(v15 + v4[8], v6);
  v16 = v4[9];
  if (!v10(v15 + v16, 1, v8))
  {
    (*(v9 + 8))(v15 + v16, v8);
  }

  v17 = v15 + v4[10];
  v18 = swift_getEnumCaseMultiPayload();
  if (v18 <= 4)
  {
    if (v18 > 1)
    {
      if (v18 == 3)
      {

        v20 = *(v17 + 24);
        goto LABEL_34;
      }

LABEL_33:
      v20 = *v17;
LABEL_34:

      goto LABEL_39;
    }

    if (v18)
    {
      if (v18 != 1)
      {
        goto LABEL_39;
      }

      goto LABEL_33;
    }

    goto LABEL_38;
  }

  if (v18 <= 6)
  {
    if (v18 == 5)
    {
LABEL_38:

      goto LABEL_39;
    }

    v19 = sub_260060();
LABEL_37:
    (*(*(v19 - 8) + 8))(v17, v19);
    goto LABEL_39;
  }

  if (v18 == 7)
  {
    goto LABEL_33;
  }

  if (v18 == 9 || v18 == 10)
  {
    v19 = sub_2601B0();
    goto LABEL_37;
  }

LABEL_39:

  return swift_deallocObject();
}

BOOL ColorConstants.isLight.getter()
{
  v1 = v0;
  v2 = sub_261180();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(v1, v8);
  (*(v3 + 104))(v5, enum case for ColorScheme.dark(_:), v2);
  sub_60AB0();
  LOBYTE(v1) = sub_264390();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v9(v8, v2);
  return (v1 & 1) == 0;
}

uint64_t EnvironmentValues.colors.getter()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v12 - v7;
  v9 = *(v2 + 16);
  (v9)(&v12 - v7, v0, v1, v6);
  v9(v4, v8, v1);
  sub_261990();
  v10 = *(v2 + 8);
  v10(v4, v1);
  return (v10)(v8, v1);
}

uint64_t ColorConstants.Environment.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261180();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ColorConstants.Environment.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_261180();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1035F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorConstants.Environment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_103718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_1037B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_103840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1038C4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8198(v2, v10, &qword_3173E0, &qword_26B890);
  if (v11 == 1)
  {
    return sub_F7CC(v10, a1);
  }

  sub_264900();
  v9 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

double sub_103A34()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);
  if (*(v0 + 56) == 1)
  {
    return *(v0 + 48);
  }

  sub_264900();
  v7 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_3074(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

uint64_t sub_103B80@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for LabelItemComponent(0);
  sub_8198(v1 + *(v10 + 28), v9, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1084B4(v9, a1, type metadata accessor for SizeConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_103D6C@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for LabelItemComponent(0);
  sub_8198(v1 + *(v10 + 32), v9, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1084B4(v9, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_103F58()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for LabelItemComponent(0) + 36);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_264900();
    v7 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

double sub_1040B0()
{
  v1 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LabelItemComponent(0);
  sub_8198(v0 + *(v14 + 28), v10, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1084B4(v10, v13, type metadata accessor for SizeConstants);
  }

  else
  {
    sub_264900();
    v15 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  sub_1084B4(v13, v3, type metadata accessor for SizeConstants.Environment);
  sub_107024(v3, type metadata accessor for SizeConstants.Spacing);
  return 12.0;
}

uint64_t LabelItemComponent.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 40) = 0;
  *(a1 + 48) = swift_getKeyPath();
  *(a1 + 56) = 0;
  v2 = type metadata accessor for LabelItemComponent(0);
  v3 = v2[6];
  *(a1 + v3) = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  v4 = v2[7];
  *(a1 + v4) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v5 = v2[8];
  *(a1 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v2[9];
  result = swift_getKeyPath();
  *v6 = result;
  *(v6 + 8) = 0;
  return result;
}

uint64_t LabelItemComponent.content(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v4 = sub_2EF0(&qword_316890, &qword_2725A0);
  __chkstk_darwin(v4 - 8);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v53 = &v51 - v7;
  __chkstk_darwin(v8);
  v52 = &v51 - v9;
  v10 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v10 - 8);
  v51 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_2EF0(&qword_31DFD8, &qword_277AE8);
  __chkstk_darwin(v12 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  v18 = sub_2EF0(&qword_31DFE0, &qword_277AF0);
  __chkstk_darwin(v18 - 8);
  v20 = &v51 - v19;
  v21 = sub_2EF0(&qword_31DFE8, &qword_277AF8);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v56 = &v51 - v23;
  *v20 = sub_261E50();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v24 = &v20[*(sub_2EF0(&qword_31DFF0, &qword_277B00) + 44)];
  *v17 = sub_261D30();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v25 = sub_2EF0(&qword_31DFF8, &qword_277B08);
  sub_104A28(v2, a1, &v17[*(v25 + 44)]);
  sub_8198(v17, v14, &qword_31DFD8, &qword_277AE8);
  *v24 = 0;
  v24[8] = 1;
  v26 = sub_2EF0(&qword_31E000, &qword_277B10);
  sub_8198(v14, &v24[*(v26 + 48)], &qword_31DFD8, &qword_277AE8);
  v27 = &v24[*(v26 + 64)];
  *v27 = 0;
  v27[8] = 1;
  sub_8E80(v17, &qword_31DFD8, &qword_277AE8);
  sub_8E80(v14, &qword_31DFD8, &qword_277AE8);
  v28 = v51;
  sub_103B80(v51);
  LOBYTE(v24) = *v28;
  sub_107024(v28, type metadata accessor for SizeConstants);
  LOBYTE(v26) = v24 | sub_103F58();
  KeyPath = swift_getKeyPath();
  v60 = 0;
  v30 = swift_getKeyPath();
  v59 = 0;
  v31 = swift_getKeyPath();
  v58 = 0;
  v32 = swift_getKeyPath();
  v57 = 0;
  v33 = v60;
  LOBYTE(v14) = v59;
  v34 = v58;
  v35 = v20;
  v36 = v56;
  sub_22148(v35, v56, &qword_31DFE0, &qword_277AF0);
  v37 = v36 + *(v22 + 44);
  *v37 = KeyPath;
  *(v37 + 8) = v33;
  *(v37 + 16) = v30;
  *(v37 + 24) = v14;
  *(v37 + 32) = v31;
  *(v37 + 40) = v34;
  *(v37 + 48) = v32;
  *(v37 + 56) = 0;
  *(v37 + 57) = v26 & 1;
  *(v37 + 58) = 0;
  v38 = sub_261690();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v41 = v52;
  v40(v52, 1, 1, v38);
  v42 = v53;
  (*(v39 + 104))(v53, enum case for DynamicTypeSize.xxxLarge(_:), v38);
  v40(v42, 0, 1, v38);
  v43 = v54;
  sub_22148(v42, v54, &qword_316890, &qword_2725A0);
  v44 = sub_2EF0(&qword_31E008, &qword_277BB8);
  v45 = v55;
  v46 = v55 + *(v44 + 36);
  v40(v46, 1, 1, v38);
  v47 = type metadata accessor for RestrictedDynamicTypeSizeViewModifier(0);
  v48 = *(v47 + 20);
  v40((v46 + v48), 1, 1, v38);
  v49 = *(v47 + 24);
  *(v46 + v49) = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  sub_C5FBC(v41, v46);
  sub_C5FBC(v43, v46 + v48);
  return sub_22148(v56, v45, &qword_31DFE8, &qword_277AF8);
}

uint64_t sub_104A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a3;
  v5 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v5 - 8);
  v75 = (&v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = sub_262060();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v86 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v82 = &v67 - v9;
  v74 = sub_260BD0();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_260B00();
  v76 = *(v85 - 8);
  __chkstk_darwin(v85);
  v84 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v81 = &v67 - v13;
  v14 = type metadata accessor for LabelItemComponent(0);
  v70 = *(v14 - 8);
  v71 = *(v70 + 64);
  __chkstk_darwin(v14 - 8);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LabelItemComponentModel(0);
  v18 = v17 - 8;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2EF0(&qword_31E1D0, &qword_277DC0);
  __chkstk_darwin(v22 - 8);
  v68 = (&v67 - v23);
  v24 = sub_2EF0(&qword_31E1D8, &qword_277DC8);
  v25 = v24 - 8;
  __chkstk_darwin(v24);
  v83 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v67 - v28;
  __chkstk_darwin(v30);
  v80 = &v67 - v31;
  v32 = *(v18 + 36);
  v33 = a2;
  v69 = a2;
  v34 = (a2 + v32);
  v35 = v34[1];
  v100[0] = *v34;
  v100[1] = v35;
  *v101 = v34[2];
  *&v101[9] = *(v34 + 41);
  sub_108084(v33, v21, type metadata accessor for LabelItemComponentModel);
  sub_108084(a1, v16, type metadata accessor for LabelItemComponent);
  v36 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v37 = (v20 + *(v70 + 80) + v36) & ~*(v70 + 80);
  v38 = swift_allocObject();
  sub_1084B4(v21, v38 + v36, type metadata accessor for LabelItemComponentModel);
  sub_1084B4(v16, v38 + v37, type metadata accessor for LabelItemComponent);
  v39 = v68;
  sub_105C80(v100, sub_10851C, v38, v68);

  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  sub_22148(v39, v29, &qword_31E1D0, &qword_277DC0);
  v40 = &v29[*(v25 + 44)];
  v41 = v92;
  *v40 = v91;
  *(v40 + 1) = v41;
  *(v40 + 2) = v93;
  v42 = v80;
  sub_22148(v29, v80, &qword_31E1D8, &qword_277DC8);
  (*(v73 + 16))(v72, v69 + *(v18 + 40), v74);
  v43 = v81;
  sub_260B10();
  v44 = sub_1040B0();
  v45 = v82;
  sub_262050();
  v46 = v75;
  sub_103B80(v75);
  LOBYTE(a1) = *v46;
  sub_107024(v46, type metadata accessor for SizeConstants);
  v47 = sub_103F58();
  if ((a1 & 1) == 0 && (v47 & 1) == 0)
  {
    sub_1040B0();
  }

  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v75 = v94;
  v74 = v96;
  v73 = v98;
  v72 = v99;
  v90 = 1;
  v89 = v95;
  v88 = v97;
  v48 = v83;
  sub_8198(v42, v83, &qword_31E1D8, &qword_277DC8);
  v49 = v76;
  v50 = *(v76 + 16);
  v51 = v84;
  v52 = v85;
  v50(v84, v43, v85);
  v87 = 0;
  v53 = v77;
  v68 = *(v77 + 16);
  v54 = v45;
  v55 = v79;
  (v68)(v86, v54, v79);
  LODWORD(v69) = v90;
  LODWORD(v70) = v89;
  LODWORD(v71) = v88;
  v56 = v78;
  sub_8198(v48, v78, &qword_31E1D8, &qword_277DC8);
  v57 = sub_2EF0(&qword_31E1E0, &qword_277DD0);
  v50((v56 + v57[12]), v51, v52);
  v58 = v56 + v57[16];
  v59 = v87;
  *v58 = v44;
  *(v58 + 8) = v59;
  v60 = v86;
  (v68)(v56 + v57[20], v86, v55);
  v61 = v56 + v57[24];
  *v61 = 0;
  *(v61 + 8) = v69;
  *(v61 + 16) = v75;
  *(v61 + 24) = v70;
  *(v61 + 32) = v74;
  *(v61 + 40) = v71;
  v62 = v72;
  *(v61 + 48) = v73;
  *(v61 + 56) = v62;
  v63 = *(v53 + 8);
  v63(v82, v55);
  v64 = *(v49 + 8);
  v65 = v85;
  v64(v81, v85);
  sub_8E80(v80, &qword_31E1D8, &qword_277DC8);
  v63(v60, v55);
  v64(v84, v65);
  return sub_8E80(v83, &qword_31E1D8, &qword_277DC8);
}

uint64_t sub_1053F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a3;
  v59 = a4;
  v60 = a1;
  v5 = sub_261180();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v7 - 8);
  v52 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_2EF0(&qword_31E248, &qword_277E28);
  __chkstk_darwin(v61);
  v63 = (&v52 - v9);
  v62 = sub_2EF0(&qword_318560, &unk_26B530);
  __chkstk_darwin(v62);
  v11 = (&v52 - v10);
  v12 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v12 - 8);
  v56 = (&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v57 = (&v52 - v15);
  v16 = sub_2EF0(&qword_31E250, &qword_277E30);
  __chkstk_darwin(v16 - 8);
  v18 = &v52 - v17;
  v19 = sub_2630C0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2EF0(&qword_31E258, &qword_277E38);
  __chkstk_darwin(v23 - 8);
  v25 = &v52 - v24;
  v26 = sub_2630F0();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a2 + *(type metadata accessor for LabelItemComponentModel(0) + 28);
  if (*(v30 + 56) == 1)
  {
    (*(v27 + 104))(v25, **(&off_309440 + *(v30 + 40)), v26);
    (*(v27 + 56))(v25, 0, 1, v26);
    (*(v27 + 32))(v29, v25, v26);
    KeyPath = swift_getKeyPath();
    v32 = (v11 + *(v62 + 36));
    v33 = sub_2EF0(&qword_317530, &qword_26FCC0);
    (*(v27 + 16))(v32 + *(v33 + 28), v29, v26);
    *v32 = KeyPath;
    *v11 = v60;
    sub_8198(v11, v63, &qword_318560, &unk_26B530);
    swift_storeEnumTagMultiPayload();

    sub_2EF0(&qword_31E220, &unk_277DF8);
    sub_10868C();
    sub_108744();
    sub_261F80();
    sub_8E80(v11, &qword_318560, &unk_26B530);
    return (*(v27 + 8))(v29, v26);
  }

  else
  {
    (*(v27 + 56))(v25, 1, 1, v26);
    sub_8E80(v25, &qword_31E258, &qword_277E38);
    (*(v20 + 104))(v22, enum case for Image.ResizingMode.stretch(_:), v19);
    sub_263100();
    (*(v20 + 8))(v22, v19);
    v35 = enum case for Image.TemplateRenderingMode.template(_:);
    v36 = sub_2630E0();
    v37 = *(v36 - 8);
    (*(v37 + 104))(v18, v35, v36);
    (*(v37 + 56))(v18, 0, 1, v36);
    v38 = sub_2630D0();

    sub_8E80(v18, &qword_31E250, &qword_277E30);
    v39 = v57;
    sub_103D6C(v57);
    if (*(v30 + 32))
    {
      v40 = *(v30 + 24);
      v41 = *(v30 + 32);
    }

    else
    {
      v40 = 0;
      v41 = 0xE000000000000000;
    }

    v42 = ColorConstants.subscript.getter(v40, v41);

    sub_107024(v39, type metadata accessor for ColorConstants);
    v43 = v63;
    if (!v42)
    {
      v62 = v38;
      v44 = v56;
      sub_103D6C(v56);
      v45 = v52;
      sub_108084(v44, v52, type metadata accessor for ColorConstants.Environment);
      v47 = v53;
      v46 = v54;
      v48 = v55;
      (*(v54 + 104))(v53, enum case for ColorScheme.dark(_:), v55);
      sub_1070CC(&qword_3183A0, &type metadata accessor for ColorScheme, &protocol conformance descriptor for ColorScheme);
      LOBYTE(v44) = sub_264390();
      v49 = *(v46 + 8);
      v49(v47, v48);
      v49(v45, v48);
      if (v44)
      {
        v50 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
      }

      else
      {
        v50 = sub_262F80();
      }

      v42 = v50;
      sub_107024(v56, type metadata accessor for ColorConstants);
      v38 = v62;
    }

    v51 = swift_getKeyPath();
    *v43 = v38;
    v43[1] = v51;
    v43[2] = v42;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_31E220, &unk_277DF8);
    sub_10868C();
    sub_108744();
    return sub_261F80();
  }
}

uint64_t sub_105C80@<X0>(uint64_t (**a1)(void *a1)@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a3;
  v43 = a4;
  v39 = sub_2EF0(&qword_31E1E8, &qword_277DD8);
  __chkstk_darwin(v39);
  v7 = &v38 - v6;
  v8 = sub_2EF0(&qword_31E1F0, &qword_277DE0);
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v42 = sub_2EF0(&qword_31E1F8, &qword_277DE8);
  __chkstk_darwin(v42);
  v12 = &v38 - v11;
  v13 = sub_2EF0(&qword_31E200, &qword_277DF0);
  __chkstk_darwin(v13);
  v15 = (&v38 - v14);
  v16 = *a1;
  v17 = a1[1];
  v18 = *(a1 + 16);
  v41 = v19;
  if (v18 < 0)
  {
    v47 = v16;
    v48 = v17;
    v44 = 8218235;
    v45 = 0xE300000000000000;
    v51[0] = 6778480;
    v51[1] = 0xE300000000000000;
    sub_10A84();
    v21 = sub_264AA0();
    v23 = v22;
    sub_1038C4(&v47);
    v24 = v49;
    v25 = v50;
    sub_2E18(&v47, v49);
    v44 = v21;
    v45 = v23;
    v46 = 1;
    v26 = sub_103A34();
    BYTE2(v51[0]) = -2;
    LOWORD(v51[0]) = -772;
    v27 = (*(v25 + 16))(&v44, v51, v24, v25, 186.0, 186.0, v26);

    sub_3080(&v47);
    v28 = swift_allocObject();
    v29 = v40;
    *(v28 + 16) = a2;
    *(v28 + 24) = v29;
    type metadata accessor for ImageResourceLoader(0);
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    sub_2EF0(&qword_318728, &qword_26DBF0);
    v31 = swift_allocObject();
    *(v31 + 28) = 0;
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    *(v30 + 24) = v31;

    sub_2603B0();
    v44 = v30;

    sub_2631D0();

    v32 = v47;
    v33 = v48;
    *v15 = sub_1088B8;
    v15[1] = v28;
    v15[2] = v27;
    v15[3] = v32;
    v15[4] = v33;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_31E228, &unk_277E08);
    sub_8E38(&qword_31E230, &qword_31E228, &unk_277E08, &protocol conformance descriptor for AsyncResourceImage<A>);
    sub_1087FC();
    return sub_261F80();
  }

  else
  {
    v38 = a2;
    if (v18)
    {

      v20 = sub_2630B0();
    }

    else
    {
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v36 = objc_opt_self();

      v37 = [v36 bundleForClass:{ObjCClassFromMetadata, v38, v39}];
      v20 = sub_263110();
    }

    v38(v20);

    sub_8198(v10, v7, &qword_31E1F0, &qword_277DE0);
    swift_storeEnumTagMultiPayload();
    sub_108600();
    sub_261F80();
    sub_8E80(v10, &qword_31E1F0, &qword_277DE0);
    sub_8198(v12, v15, &qword_31E1F8, &qword_277DE8);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_31E228, &unk_277E08);
    sub_8E38(&qword_31E230, &qword_31E228, &unk_277E08, &protocol conformance descriptor for AsyncResourceImage<A>);
    sub_1087FC();
    sub_261F80();
    return sub_8E80(v12, &qword_31E1F8, &qword_277DE8);
  }
}

uint64_t sub_10623C(void *a1, void (*a2)(void))
{
  v4 = sub_2EF0(&qword_31E240, &unk_277E18);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_2EF0(&qword_31E1F0, &qword_277DE0);
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  if (a1)
  {
    v10 = a1;
    sub_2630A0();
    a2();

    sub_8198(v9, v6, &qword_31E1F0, &qword_277DE0);
    swift_storeEnumTagMultiPayload();
    sub_108600();
    sub_261F80();

    return sub_8E80(v9, &qword_31E1F0, &qword_277DE0);
  }

  else
  {
    *v6 = 0;
    v6[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_108600();
    return sub_261F80();
  }
}

uint64_t sub_10641C(uint64_t a1)
{
  __chkstk_darwin(v1);
  sub_108084(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LabelItemComponent);
  sub_1070CC(&qword_31E038, type metadata accessor for LabelItemComponent, &protocol conformance descriptor for LabelItemComponent);
  return sub_260B30();
}

uint64_t LabelItemComponent._ButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = type metadata accessor for LabelItemButtonStyle(0);
  __chkstk_darwin(v3);
  v5 = (v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2624A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_31E010, &qword_282730);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v18 - v13;
  (*(v7 + 16))(v9, a1, v6, v12);
  sub_263240();
  *v5 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v15 = v3[5];
  *(v5 + v15) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v16 = v3[6];
  *(v5 + v16) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  *(v5 + v3[7]) = 0;
  sub_8E38(&qword_31E018, &qword_31E010, &qword_282730, &protocol conformance descriptor for Button<A>);
  sub_1070CC(&qword_31E020, type metadata accessor for LabelItemButtonStyle, "9X\b");
  sub_262A60();
  sub_107024(v5, type metadata accessor for LabelItemButtonStyle);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_10682C()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261180();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_108084(v1, v12, type metadata accessor for ColorConstants.Environment);
  (*(v7 + 104))(v9, enum case for ColorScheme.dark(_:), v6);
  sub_1070CC(&qword_3183A0, &type metadata accessor for ColorScheme, &protocol conformance descriptor for ColorScheme);
  LOBYTE(v1) = sub_264390();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v12, v6);
  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  if ((v1 & 1) == 0)
  {
    return sub_263060();
  }

  sub_263060();
  v14 = sub_263000();

  return v14;
}

uint64_t sub_106AF8@<X0>(uint64_t a1@<X8>)
{
  v48[1] = a1;
  v1 = sub_261FA0();
  v49 = *(v1 - 8);
  v50 = v1;
  __chkstk_darwin(v1);
  v3 = v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v4 - 8);
  v6 = (v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2EF0(&qword_31E190, &qword_277DA0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v48 - v9;
  v11 = sub_2EF0(&qword_31E198, &qword_277DA8);
  __chkstk_darwin(v11);
  v13 = v48 - v12;
  v14 = sub_2EF0(&qword_31E1A0, &qword_277DB0);
  __chkstk_darwin(v14);
  v16 = v48 - v15;
  sub_2622A0();
  v17 = sub_2624F0();
  sub_2610C0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v10[*(sub_2EF0(&qword_31E1A8, &qword_277DB8) + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_262560();
  sub_2610C0();
  v28 = *(v8 + 44);
  v29 = v48[0];
  v30 = &v10[v28];
  *v30 = v27;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  v35 = sub_2622B0();
  sub_404B8(v6);
  if (v35)
  {
    v36 = sub_10682C();
  }

  else
  {
    v37 = [objc_opt_self() systemBackgroundColor];
    v36 = sub_263070();
  }

  v38 = v36;
  sub_107024(v6, type metadata accessor for ColorConstants);
  v39 = sub_262500();
  sub_22148(v10, v13, &qword_31E190, &qword_277DA0);
  v40 = &v13[*(v11 + 36)];
  *v40 = v38;
  v40[8] = v39;
  v41 = *(v29 + *(type metadata accessor for LabelItemButtonStyle(0) + 28));
  v42 = &v16[*(v14 + 36)];
  v43 = *(sub_2617E0() + 20);
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = sub_261DD0();
  (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
  *v42 = v41;
  *(v42 + 1) = v41;
  *&v42[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  sub_22148(v13, v16, &qword_31E198, &qword_277DA8);
  sub_2618C0();
  sub_107DCC();
  sub_1070CC(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v46 = v50;
  sub_262AA0();
  (*(v49 + 8))(v3, v46);
  return sub_8E80(v16, &qword_31E1A0, &qword_277DB0);
}

uint64_t sub_106FA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261960();
  *a1 = result & 1;
  return result;
}

uint64_t sub_107024(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1070CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10717C()
{
  result = qword_31E030;
  if (!qword_31E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E030);
  }

  return result;
}

uint64_t sub_107280(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 40);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_2EF0(&qword_319858, &unk_2725D0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_2EF0(&qword_316F68, &unk_269C50);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_10741C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 40) = -a2;
    return result;
  }

  v8 = sub_2EF0(&qword_319858, &unk_2725D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_2EF0(&qword_316F68, &unk_269C50);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

void sub_1075A8(uint64_t a1)
{
  sub_5027C(319);
  if (v1 <= 0x3F)
  {
    sub_60890(319, &qword_316308, &type metadata for CGFloat);
    if (v2 <= 0x3F)
    {
      sub_107D5C(319, &qword_3198C8, &type metadata accessor for DynamicTypeSize);
      if (v3 <= 0x3F)
      {
        sub_107D5C(319, &qword_317C68, type metadata accessor for SizeConstants);
        if (v4 <= 0x3F)
        {
          sub_107D5C(319, &qword_316FE8, type metadata accessor for ColorConstants);
          if (v5 <= 0x3F)
          {
            sub_60890(319, &qword_3167D0, &type metadata for Bool);
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

unint64_t sub_107714()
{
  result = qword_31E0E0;
  if (!qword_31E0E0)
  {
    sub_2F9C(&qword_31E008, &qword_277BB8);
    sub_1077D0();
    sub_1070CC(&qword_31C258, type metadata accessor for RestrictedDynamicTypeSizeViewModifier, &unk_272608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E0E0);
  }

  return result;
}

unint64_t sub_1077D0()
{
  result = qword_31E0E8;
  if (!qword_31E0E8)
  {
    sub_2F9C(&qword_31DFE8, &qword_277AF8);
    sub_8E38(&qword_31E0F0, &qword_31DFE0, &qword_277AF0, &protocol conformance descriptor for VStack<A>);
    sub_EFAB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E0E8);
  }

  return result;
}

uint64_t sub_107888()
{
  sub_2F9C(&qword_31E010, &qword_282730);
  type metadata accessor for LabelItemButtonStyle(255);
  sub_8E38(&qword_31E018, &qword_31E010, &qword_282730, &protocol conformance descriptor for Button<A>);
  sub_1070CC(&qword_31E020, type metadata accessor for LabelItemButtonStyle, "9X\b");
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10797C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_107AF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_107C64(uint64_t a1)
{
  sub_107D5C(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v1 <= 0x3F)
  {
    sub_107D5C(319, &qword_316FF0, &type metadata accessor for ColorScheme);
    if (v2 <= 0x3F)
    {
      sub_107D5C(319, &qword_317C68, type metadata accessor for SizeConstants);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_107D5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_107DCC()
{
  result = qword_31E1B0;
  if (!qword_31E1B0)
  {
    sub_2F9C(&qword_31E1A0, &qword_277DB0);
    sub_107E84();
    sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E1B0);
  }

  return result;
}

unint64_t sub_107E84()
{
  result = qword_31E1B8;
  if (!qword_31E1B8)
  {
    sub_2F9C(&qword_31E198, &qword_277DA8);
    sub_107F3C();
    sub_8E38(&qword_318EB8, &qword_318EC0, &unk_26C3B0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E1B8);
  }

  return result;
}

unint64_t sub_107F3C()
{
  result = qword_31E1C0;
  if (!qword_31E1C0)
  {
    sub_2F9C(&qword_31E190, &qword_277DA0);
    sub_107FC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E1C0);
  }

  return result;
}

unint64_t sub_107FC8()
{
  result = qword_31E1C8;
  if (!qword_31E1C8)
  {
    sub_2F9C(&qword_31E1A8, &qword_277DB8);
    sub_1070CC(&qword_3183C0, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E1C8);
  }

  return result;
}

uint64_t sub_108084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1080EC()
{
  v1 = type metadata accessor for LabelItemComponentModel(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for LabelItemComponent(0);
  v5 = *(*(v4 - 1) + 80);
  v6 = v2 + v3 + v5;
  v7 = (v0 + v2);
  sub_3080(v7);
  if (*(v7 + 8))
  {
    sub_3080(v7 + 5);
  }

  v8 = v6 & ~v5;
  v9 = v1[6];
  v10 = sub_263E50();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(&v7[v9], 1, v10))
  {
    (*(v11 + 8))(&v7[v9], v10);
  }

  sub_6204(*&v7[v1[7]], *&v7[v1[7] + 8]);

  v12 = v1[8];
  v13 = sub_260BD0();
  (*(*(v13 - 8) + 8))(&v7[v12], v13);
  v14 = v0 + v8;
  if (*(v0 + v8 + 40))
  {
    sub_3080((v0 + v8));
  }

  else
  {
  }

  sub_3074(*(v14 + 48), *(v14 + 56));
  v15 = v4[6];
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_261690();
    (*(*(v16 - 8) + 8))(v14 + v15, v16);
  }

  else
  {
  }

  v17 = v14 + v4[7];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v19 = sub_261690();
    (*(*(v19 - 8) + 8))(v17 + v18, v19);
  }

  else
  {
  }

  v20 = v4[8];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_261180();
    (*(*(v21 - 8) + 8))(v14 + v20, v21);
  }

  else
  {
  }

  sub_3074(*(v14 + v4[9]), *(v14 + v4[9] + 8));

  return swift_deallocObject();
}

uint64_t sub_1084B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10851C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LabelItemComponentModel(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for LabelItemComponent(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1053F4(a1, v2 + v6, v9, a2);
}

unint64_t sub_108600()
{
  result = qword_31E208;
  if (!qword_31E208)
  {
    sub_2F9C(&qword_31E1F0, &qword_277DE0);
    sub_10868C();
    sub_108744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E208);
  }

  return result;
}

unint64_t sub_10868C()
{
  result = qword_31E210;
  if (!qword_31E210)
  {
    sub_2F9C(&qword_318560, &unk_26B530);
    sub_8E38(&qword_317590, &qword_317530, &qword_26FCC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E210);
  }

  return result;
}

unint64_t sub_108744()
{
  result = qword_31E218;
  if (!qword_31E218)
  {
    sub_2F9C(&qword_31E220, &unk_277DF8);
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E218);
  }

  return result;
}

unint64_t sub_1087FC()
{
  result = qword_31E238;
  if (!qword_31E238)
  {
    sub_2F9C(&qword_31E1F8, &qword_277DE8);
    sub_108600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E238);
  }

  return result;
}

uint64_t sub_108880()
{

  return swift_deallocObject();
}

uint64_t sub_1088D0()
{
  sub_2F9C(&qword_31E1A0, &qword_277DB0);
  sub_261FA0();
  sub_107DCC();
  sub_1070CC(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  return swift_getOpaqueTypeConformance2();
}

uint64_t type metadata accessor for DelayAction(uint64_t a1)
{
  result = qword_31E2B8;
  if (!qword_31E2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DelayAction.init(actionMetrics:seconds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_263AF0();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for DelayAction(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t sub_108A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_263AF0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_108B04(uint64_t a1, uint64_t a2)
{
  v4 = sub_263AF0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_108B74(uint64_t a1)
{
  result = sub_263AF0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_108BE8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E6F69746361;
    v6 = 0x63657053746E6F66;
    if (a1 != 2)
    {
      v6 = 0x6D614E6567616D69;
    }

    if (a1)
    {
      v5 = 0x7365527465737361;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656C746974627573;
    v2 = 0x6D496C6F626D7973;
    if (a1 != 7)
    {
      v2 = 0x656C746974;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x73756E656DLL;
    if (a1 != 4)
    {
      v3 = 1701605234;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_108D0C()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

Swift::Int sub_108D68(uint64_t a1)
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

void sub_108DB0(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v6._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_300870;
  v6._object = v3;
  v5 = sub_264D40(v4, v6);

  *a2 = v5 != 0;
}

void sub_108E28(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v7._countAndFlagsBits = a1;
  v5._rawValue = &off_3008A8;
  v7._object = a2;
  v6 = sub_264D40(v5, v7);

  *a3 = v6 != 0;
}

uint64_t sub_108E80(uint64_t a1)
{
  v2 = sub_10B098();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_108EBC(uint64_t a1)
{
  v2 = sub_10B098();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_108EF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72756769666E6F63;
  }

  else
  {
    v3 = 1684957547;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xED00006E6F697461;
  }

  if (*a2)
  {
    v5 = 0x72756769666E6F63;
  }

  else
  {
    v5 = 1684957547;
  }

  if (*a2)
  {
    v6 = 0xED00006E6F697461;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_264F10();
  }

  return v8 & 1;
}

Swift::Int sub_108FA4()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

double sub_10902C(uint64_t a1)
{
  sub_264500();

  return result;
}

Swift::Int sub_1090A0(uint64_t a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

void sub_109130(uint64_t *a1@<X8>)
{
  v2 = 1684957547;
  if (*v1)
  {
    v2 = 0x72756769666E6F63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xED00006E6F697461;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_109174()
{
  if (*v0)
  {
    return 0x72756769666E6F63;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_1091C0(uint64_t a1)
{
  v2 = sub_10B0EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1091FC(uint64_t a1)
{
  v2 = sub_10B0EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_109244()
{
  v1 = *v0;
  sub_265050();
  sub_1E2A48(v3, v1);
  return sub_265080();
}

Swift::Int sub_109294(uint64_t a1)
{
  v2 = *v1;
  sub_265050();
  sub_1E2A48(v4, v2);
  return sub_265080();
}

unint64_t sub_1092D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10CFB4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_109308@<X0>(uint64_t *a1@<X8>)
{
  result = sub_108BE8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_109350@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10CFB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_109378(uint64_t a1)
{
  v2 = sub_10B194();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1093B4(uint64_t a1)
{
  v2 = sub_10B194();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_109408(uint64_t a1)
{
  sub_264500();

  return result;
}

unint64_t sub_109550@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10D0A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_109580(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000756E65;
  v4 = 0x4D747865746E6F63;
  v5 = 0xE600000000000000;
  v6 = 0x70756B636F6CLL;
  if (v2 != 5)
  {
    v6 = 0xD000000000000016;
    v5 = 0x800000000028FB90;
  }

  v7 = 0xEF656C7469546874;
  v8 = 0x69576E6F74747562;
  if (v2 != 3)
  {
    v8 = 0x75426D6574737973;
    v7 = 0xEC0000006E6F7474;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xD000000000000014;
  v10 = 0x800000000028FB40;
  if (v2 != 1)
  {
    v9 = 0x69576E6F74747562;
    v10 = 0xEF6567616D496874;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1096F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D7269666E6F63;
  }

  else
  {
    v3 = 0x65736F6C63;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D7269666E6F63;
  }

  else
  {
    v5 = 0x65736F6C63;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_264F10();
  }

  return v8 & 1;
}

Swift::Int sub_109794()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

double sub_109814(uint64_t a1)
{
  sub_264500();

  return result;
}

Swift::Int sub_109880(uint64_t a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

void sub_109908(uint64_t *a1@<X8>)
{
  v2 = 0x65736F6C63;
  if (*v1)
  {
    v2 = 0x6D7269666E6F63;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ToolbarItemType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v3 = sub_2610B0();
  v118 = *(v3 - 8);
  v119 = v3;
  __chkstk_darwin(v3);
  v115 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v128 = &v111 - v6;
  __chkstk_darwin(v7);
  v114 = &v111 - v8;
  v9 = sub_2EF0(&qword_31E2F0, &qword_277EF0);
  __chkstk_darwin(v9 - 8);
  v116 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v117 = (&v111 - v12);
  v13 = sub_2EF0(&qword_31E2F8, &qword_277EF8);
  v122 = *(v13 - 8);
  v123 = v13;
  __chkstk_darwin(v13);
  v124 = &v111 - v14;
  v15 = sub_2EF0(&qword_31E300, &qword_277F00);
  v125 = *(v15 - 8);
  v126 = v15;
  __chkstk_darwin(v15);
  v130 = &v111 - v16;
  v129 = sub_2EF0(&qword_31E308, &qword_277F08);
  v127 = *(v129 - 8);
  __chkstk_darwin(v129);
  v18 = &v111 - v17;
  v120 = type metadata accessor for ToolbarItemType(0);
  __chkstk_darwin(v120);
  v20 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = (&v111 - v22);
  __chkstk_darwin(v24);
  v26 = &v111 - v25;
  __chkstk_darwin(v27);
  v29 = (&v111 - v28);
  v30 = a1[3];
  v131 = a1;
  sub_2E18(a1, v30);
  sub_10B098();
  v31 = v155;
  sub_265120();
  if (!v31)
  {
    v112 = v26;
    v113 = v23;
    v32 = v128;
    v111 = v20;
    v155 = v29;
    v33 = v127;
    sub_10B0EC();
    v34 = v129;
    sub_264D50();
    LOBYTE(v132[0]) = 0;
    sub_10B140();
    sub_264DF0();
    v35 = v134;
    LOBYTE(v134) = 1;
    sub_10B194();
    sub_264D50();
    if (v35 <= 2)
    {
      v42 = v123;
      if (v35)
      {
        if (v35 != 1)
        {
          LOBYTE(v134) = 3;
          v128 = sub_264DC0();
          v54 = v53;
          LOBYTE(v132[0]) = 5;
          sub_10C5A0();
          sub_264DB0();
          v55 = v134;
          LOBYTE(v152[0]) = 0;
          sub_3FC1C();
          sub_264DF0();
          sub_F7CC(v132, &v134);
          v74 = sub_2EF0(&qword_31B7C0, &unk_270F60);
          v116 = v74[12];
          v117 = v74;
          v75 = v113;
          *v113 = v128;
          v75[1] = v54;
          if (v55 == 2)
          {
            (*(v122 + 8))(v124, v42);
            (*(v125 + 8))(v130, v126);
            (*(v33 + 8))(v18, v34);
            v76 = 1;
            v77 = v121;
            v79 = v118;
            v78 = v119;
            v80 = v113;
            v81 = v116;
          }

          else
          {
            v82 = v115;
            if (v55)
            {
              sub_2610A0();
            }

            else
            {
              sub_261090();
            }

            (*(v122 + 8))(v124, v123);
            (*(v125 + 8))(v130, v126);
            (*(v33 + 8))(v18, v34);
            v79 = v118;
            v80 = v113;
            v81 = v116;
            v94 = v82;
            v78 = v119;
            (*(v118 + 32))(v113 + v116, v94, v119);
            v76 = 0;
            v77 = v121;
          }

          (*(v79 + 56))(v80 + v81, v76, 1, v78);
          sub_F7CC(&v134, v80 + v117[16]);
          swift_storeEnumTagMultiPayload();
          v67 = v155;
          sub_10C800(v80, v155, type metadata accessor for ToolbarItemType);
          v72 = v131;
          v73 = v77;
          goto LABEL_24;
        }

        LOBYTE(v134) = 8;
        v43 = v124;
        v44 = v123;
        v128 = sub_264DC0();
        v52 = v51;
        sub_2EF0(&qword_31BA80, &unk_277F20);
        LOBYTE(v132[0]) = 4;
        sub_10C650();
        sub_264DF0();
        (*(v122 + 8))(v43, v44);
        (*(v125 + 8))(v130, v126);
        (*(v33 + 8))(v18, v34);
        v66 = v134;
        v67 = v155;
        *v155 = v128;
        v67[1] = v52;
        v67[2] = v66;
      }

      else
      {
        LOBYTE(v132[0]) = 7;
        sub_10B1E8();
        v46 = v124;
        sub_264DF0();
        v47 = v42;
        v48 = v134;
        sub_2EF0(&qword_31BA80, &unk_277F20);
        LOBYTE(v132[0]) = 4;
        sub_10C650();
        sub_264DF0();
        (*(v122 + 8))(v46, v47);
        (*(v125 + 8))(v130, v126);
        (*(v33 + 8))(v18, v34);
        v49 = v134;
        v67 = v155;
        *v155 = v48;
        v67[1] = v49;
      }

      goto LABEL_22;
    }

    v38 = v123;
    if (v35 > 4)
    {
      if (v35 != 5)
      {
        LOBYTE(v132[0]) = 7;
        sub_10B1E8();
        v50 = v124;
        sub_264DF0();
        v64 = v134;
        LOBYTE(v152[0]) = 0;
        sub_3FC1C();
        sub_264DF0();
        v65 = v125;
        (*(v122 + 8))(v50, v38);
        (*(v65 + 8))(v130, v126);
        (*(v33 + 8))(v18, v129);
        sub_F7CC(v132, &v134);
        v67 = v155;
        v70 = v155;
        *v155 = v64;
        sub_F7CC(&v134, (v70 + 1));
LABEL_22:
        swift_storeEnumTagMultiPayload();
        v72 = v131;
LABEL_23:
        v73 = v121;
LABEL_24:
        sub_10C800(v67, v73, type metadata accessor for ToolbarItemType);
        v36 = v72;
        return sub_3080(v36);
      }

      LOBYTE(v134) = 8;
      v45 = sub_264DC0();
      v61 = v60;
      v128 = v18;
      v119 = v45;
      LOBYTE(v134) = 6;
      v62 = sub_264DC0();
      v69 = v68;
      v118 = v62;
      sub_2EF0(&qword_317FB8, &unk_26AA50);
      v153 = 1;
      sub_43FB8();
      sub_264DF0();
      v115 = 0;
      v116 = v69;
      v117 = v154;
      sub_260810();
      if (v151)
      {
        sub_F7CC(&v150, v152);
        sub_2E18(v152, v152[3]);
        sub_260950();
        sub_30CC(v152, &v134);
        CoverViewModel.CoverImageInfo.init(assetInfo:)(&v134, v132);
        (*(v122 + 8))(v124, v38);
        (*(v125 + 8))(v130, v126);
        (*(v33 + 8))(v128, v129);
        v139 = v132[5];
        v140 = v132[6];
        v134 = v132[0];
        v135 = v132[1];
        v136 = v132[2];
        v137 = v132[3];
        v138 = v132[4];
        *&v141 = v133;
        *(&v141 + 1) = 0x404B000000000000;
        sub_230A8(&v134);
        v146 = v138;
        v147 = v139;
        v148 = v140;
        v149 = v141;
        v142 = v134;
        v143 = v135;
        v144 = v136;
        v145 = v137;
        sub_3080(v152);
      }

      else
      {
        sub_8E80(&v150, &qword_316D40, &unk_268FC0);
        if (qword_315860 != -1)
        {
          swift_once();
        }

        v87 = sub_260D50();
        sub_B080(v87, qword_315FD0);
        v88 = v117;
        v89 = sub_260D30();
        v90 = sub_2648F0();

        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          *v91 = 138543362;
          *(v91 + 4) = v88;
          *v92 = v88;
          v93 = v88;
          _os_log_impl(&dword_0, v89, v90, "Failed to convert store asset to assetInfo: %{public}@", v91, 0xCu);
          sub_8E80(v92, &qword_316450, &qword_2681E0);
        }

        sub_2606A0();
        if (swift_dynamicCastClass())
        {
          (*(v122 + 8))(v124, v123);
          (*(v125 + 8))(v130, v126);
          (*(v33 + 8))(v128, v129);
          *&v134 = 0x4046000000000000;
          sub_23050(&v134);
        }

        else
        {
          v95 = [v88 pagesAreRTL];
          (*(v122 + 8))(v124, v123);
          (*(v125 + 8))(v130, v126);
          (*(v33 + 8))(v128, v129);
          *&v134 = 0x404B000000000000;
          BYTE8(v134) = v95;
          sub_2307C(&v134);
        }

        v146 = v138;
        v147 = v139;
        v148 = v140;
        v149 = v141;
        v142 = v134;
        v143 = v135;
        v144 = v136;
        v145 = v137;
      }

      v96 = v111;
      sub_2606A0();
      v97 = v117;
      v98 = swift_dynamicCastClass() != 0;

      v99 = v147;
      *(v96 + 4) = v146;
      *(v96 + 5) = v99;
      v100 = v149;
      *(v96 + 6) = v148;
      *(v96 + 7) = v100;
      v101 = v143;
      *v96 = v142;
      *(v96 + 1) = v101;
      v102 = v145;
      *(v96 + 2) = v144;
      *(v96 + 3) = v102;
      v103 = v118;
      v96[16] = v119;
      v96[17] = v61;
      v104 = v116;
      v96[18] = v103;
      v96[19] = v104;
      *(v96 + 160) = v98;
    }

    else
    {
      v39 = v35 == 3;
      v40 = v33;
      if (!v39)
      {
        LOBYTE(v132[0]) = 5;
        sub_10C5A0();
        sub_264DF0();
        LODWORD(v117) = v134;
        LOBYTE(v152[0]) = 0;
        sub_3FC1C();
        sub_264DF0();
        v63 = v122;
        sub_F7CC(v132, &v134);
        if (v117)
        {
          sub_2610A0();
        }

        else
        {
          sub_261090();
        }

        v67 = v155;
        v71 = *(sub_2EF0(&qword_31B7B8, &unk_277F10) + 48);
        (*(v63 + 8))(v124, v123);
        (*(v125 + 8))(v130, v126);
        (*(v40 + 8))(v18, v129);
        (*(v118 + 32))(v67, v32, v119);
        sub_F7CC(&v134, v67 + v71);
        goto LABEL_22;
      }

      LOBYTE(v134) = 8;
      v41 = sub_264DC0();
      v128 = v18;
      v56 = v41;
      v58 = v57;
      LOBYTE(v132[0]) = 5;
      sub_10C5A0();
      sub_264DB0();
      LODWORD(v113) = v134;
      v59 = type metadata accessor for FontSpec(0);
      LOBYTE(v134) = 2;
      sub_10C868(&qword_31E340, type metadata accessor for FontSpec, &protocol conformance descriptor for FontSpec);
      v111 = v59;
      sub_264DB0();
      LOBYTE(v152[0]) = 0;
      sub_3FC1C();
      sub_264DF0();
      v115 = 0;
      sub_F7CC(v132, &v134);
      v83 = sub_2EF0(&qword_31B7C8, &qword_270F70);
      v84 = v83[12];
      v85 = v112;
      *v112 = v56;
      v85[1] = v58;
      if (v113 == 2)
      {
        (*(v122 + 8))(v124, v123);
        (*(v125 + 8))(v130, v126);
        (*(v33 + 8))(v128, v129);
        v86 = 1;
      }

      else
      {
        if (v113)
        {
          sub_2610A0();
        }

        else
        {
          sub_261090();
        }

        (*(v122 + 8))(v124, v123);
        (*(v125 + 8))(v130, v126);
        (*(v33 + 8))(v128, v129);
        (*(v118 + 32))(v112 + v84, v114, v119);
        v86 = 0;
      }

      v105 = v112;
      (*(v118 + 56))(v112 + v84, v86, 1, v119);
      v106 = v83[20];
      sub_F7CC(&v134, v105 + v83[16]);
      v107 = v116;
      sub_22148(v117, v116, &qword_31E2F0, &qword_277EF0);
      if ((*(*(v111 - 1) + 48))(v107, 1) == 1)
      {
        sub_8E80(v116, &qword_31E2F0, &qword_277EF0);
        v108 = 0;
      }

      else
      {
        v109 = v116;
        v108 = *v116;

        sub_10C5F4(v109);
      }

      v96 = v112;
      *(v112 + v106) = v108;
    }

    swift_storeEnumTagMultiPayload();
    v110 = v96;
    v67 = v155;
    sub_10C800(v110, v155, type metadata accessor for ToolbarItemType);
    v72 = v131;
    goto LABEL_23;
  }

  v36 = v131;
  return sub_3080(v36);
}

unint64_t sub_10B098()
{
  result = qword_31E310;
  if (!qword_31E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E310);
  }

  return result;
}

unint64_t sub_10B0EC()
{
  result = qword_31E318;
  if (!qword_31E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E318);
  }

  return result;
}

unint64_t sub_10B140()
{
  result = qword_31E320;
  if (!qword_31E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E320);
  }

  return result;
}

unint64_t sub_10B194()
{
  result = qword_31E328;
  if (!qword_31E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E328);
  }

  return result;
}

unint64_t sub_10B1E8()
{
  result = qword_31E330;
  if (!qword_31E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E330);
  }

  return result;
}

uint64_t sub_10B254(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1635017060;
  }

  else
  {
    v2 = 1684957547;
  }

  if (*a2)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 1684957547;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_264F10();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10B2CC()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

double sub_10B334(uint64_t a1)
{
  sub_264500();

  return result;
}

Swift::Int sub_10B380(uint64_t a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

void sub_10B3F0(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v4 = a1[1];
  v8._object = v4;
  v6 = sub_264D40(a2, v8);

  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v6)
  {
    v7 = 0;
  }

  *a3 = v7;
}

void sub_10B44C(uint64_t *a1@<X8>)
{
  v2 = 1684957547;
  if (*v1)
  {
    v2 = 1635017060;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}