uint64_t sub_C2150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v17[0] = v2[2];
  v5 = v17[0];
  v17[1] = v6;
  v17[2] = v7;
  v17[3] = v8;
  v9 = *(type metadata accessor for SummaryFrame(0, v17) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v2 + v11);
  v13 = (v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  return sub_BBB44(a1, v2 + v10, v5, v6, v7, v8, a2, v12, v14, v15);
}

uint64_t sub_C2260()
{
  v1 = *(v0 + 32);
  v20[0] = *(v0 + 16);
  v20[1] = v1;
  v2 = type metadata accessor for SummaryFrame(0, v20);
  v3 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));
  type metadata accessor for PageBackground(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      v8 = *(sub_2EF0(&qword_316DA0, &unk_277640) + 48);
      v9 = sub_261180();
      (*(*(v9 - 8) + 8))(v3 + v8, v9);

      break;
    case 1:
      sub_57200(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 112));
      break;
    case 0:

      v5 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
      v6 = sub_261180();
      v7 = *(v6 - 8);
      if (!(*(v7 + 48))(v3 + v5, 1, v6))
      {
        (*(v7 + 8))(v3 + v5, v6);
      }

      break;
  }

  v10 = v3 + v2[13];
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v12 = sub_261690();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  v13 = v3 + v2[14];

  v14 = *(type metadata accessor for SummaryFrameViewModel(0) + 20);
  v15 = sub_260550();
  (*(*(v15 - 8) + 8))(v13 + v14, v15);

  v16 = v3 + v2[23];
  v17 = sub_2601E0();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  sub_2EF0(qword_31BDE8, &qword_271EC8);

  return swift_deallocObject();
}

uint64_t sub_C2628()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v9 = v0[2];
  v1 = v9;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v5 = *(type metadata accessor for SummaryFrame(0, &v9) - 8);
  v6 = *(v0 + ((*(v5 + 64) + ((*(v5 + 80) + 48) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v7 = type metadata accessor for SummaryFrame(0, &v9);
  return sub_B530C(v7, v6);
}

uint64_t sub_C26FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_C274C()
{
  result = qword_31BF88;
  if (!qword_31BF88)
  {
    sub_2F9C(&qword_31BF80, &qword_2721D8);
    sub_C2804();
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BF88);
  }

  return result;
}

unint64_t sub_C2804()
{
  result = qword_31BF90;
  if (!qword_31BF90)
  {
    sub_2F9C(&qword_31BF98, &qword_272210);
    sub_C2888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BF90);
  }

  return result;
}

unint64_t sub_C2888()
{
  result = qword_31BFA0;
  if (!qword_31BFA0)
  {
    sub_2F9C(&qword_31BFA8, &qword_272218);
    sub_8E38(&qword_31BFB0, &qword_31BFB8, &qword_272220, &protocol conformance descriptor for VStack<A>);
    sub_8E38(&qword_31BFC0, &qword_31BFC8, &qword_272228, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BFA0);
  }

  return result;
}

uint64_t sub_C2968(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_C29D0()
{
  result = qword_31C008;
  if (!qword_31C008)
  {
    sub_2F9C(&qword_31C000, &qword_272290);
    sub_C2A88();
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C008);
  }

  return result;
}

unint64_t sub_C2A88()
{
  result = qword_31C010;
  if (!qword_31C010)
  {
    sub_2F9C(&qword_3186C0, &qword_26B830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C010);
  }

  return result;
}

unint64_t sub_C2B20()
{
  result = qword_31C030;
  if (!qword_31C030)
  {
    sub_2F9C(&qword_31C020, &qword_2722D0);
    sub_C2BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C030);
  }

  return result;
}

unint64_t sub_C2BA4()
{
  result = qword_31C038;
  if (!qword_31C038)
  {
    sub_2F9C(&qword_31C040, &unk_2722E0);
    sub_8E38(&qword_31C048, &qword_31C050, &qword_28CCC0, &protocol conformance descriptor for CoverStackView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C038);
  }

  return result;
}

unint64_t sub_C2C5C()
{
  result = qword_31C058;
  if (!qword_31C058)
  {
    sub_2F9C(&qword_31C028, &qword_2722D8);
    sub_C2CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C058);
  }

  return result;
}

unint64_t sub_C2CE8()
{
  result = qword_31C060;
  if (!qword_31C060)
  {
    sub_2F9C(&qword_31C068, &qword_2722F0);
    sub_C2D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C060);
  }

  return result;
}

unint64_t sub_C2D74()
{
  result = qword_31C070;
  if (!qword_31C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C070);
  }

  return result;
}

unint64_t sub_C2DD4()
{
  result = qword_31C098;
  if (!qword_31C098)
  {
    sub_2F9C(&qword_31BE98, &qword_271FA0);
    sub_2F9C(&qword_31BE88, &qword_271F90);
    sub_8E38(&qword_31BEE0, &qword_31BE88, &qword_271F90, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_C26FC(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C098);
  }

  return result;
}

uint64_t View.useDarkColorSchemeWhenInVibrantContext(isEnabled:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier(0);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = *(v4 + 20);
  *&v6[v7] = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v6[*(v4 + 24)] = a1;
  sub_262E30();
  return sub_C3078(v6);
}

uint64_t type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier(uint64_t a1)
{
  result = qword_31C0F8;
  if (!qword_31C0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C3078(uint64_t a1)
{
  v2 = type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C30D4(uint64_t *a1)
{
  type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier(255);
  sub_261730();
  sub_C3140();
  return swift_getWitnessTable();
}

unint64_t sub_C3140()
{
  result = qword_319450;
  if (!qword_319450)
  {
    type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319450);
  }

  return result;
}

uint64_t sub_C31AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
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
    v8 = sub_2EF0(&qword_316F70, &unk_2693C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_C3274(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_2EF0(&qword_316F70, &unk_2693C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_C3320(uint64_t a1)
{
  sub_3E7AC();
  if (v1 <= 0x3F)
  {
    sub_50224(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_C33C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v7 = sub_261C90();
  v30 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261180();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier(0);
  if (*(v2 + *(v14 + 24)) != 1)
  {
    goto LABEL_4;
  }

  v15 = *v2;
  if (*(v2 + 8) == 1)
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    (*(v11 + 104))(v13, enum case for ColorScheme.dark(_:), v10);
    goto LABEL_9;
  }

  v29 = v14;

  sub_264900();
  v27 = v7;
  v18 = sub_2624B0();
  v28 = a1;
  v19 = v18;
  v7 = v27;
  sub_260D10();

  a1 = v28;
  sub_261C80();
  swift_getAtKeyPath();
  sub_4054(v15, 0);
  (*(v30 + 8))(v9, v7);
  v14 = v29;
  if (v32 == 1)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_C37E4(v2 + *(v14 + 20), v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v6, v10);
  }

  else
  {
    sub_264900();
    v16 = a1;
    v17 = sub_2624B0();
    sub_260D10();

    a1 = v16;
    sub_261C80();
    swift_getAtKeyPath();

    (*(v30 + 8))(v9, v7);
  }

LABEL_9:
  KeyPath = swift_getKeyPath();
  v21 = sub_2EF0(&qword_31C138, &unk_272438);
  v22 = v31;
  v23 = (v31 + *(v21 + 36));
  v24 = sub_2EF0(&qword_3173A0, &qword_26D0C0);
  (*(v11 + 32))(v23 + *(v24 + 28), v13, v10);
  *v23 = KeyPath;
  v25 = sub_2EF0(&qword_31C140, &qword_272448);
  return (*(*(v25 - 8) + 16))(v22, a1, v25);
}

uint64_t sub_C37E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_C3860()
{
  result = qword_31C148;
  if (!qword_31C148)
  {
    sub_2F9C(&qword_31C138, &unk_272438);
    sub_8E38(&qword_31C150, &qword_31C140, &qword_272448, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C148);
  }

  return result;
}

uint64_t sub_C3944@<X0>(void *a1@<X8>)
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

double sub_C3AB4()
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

uint64_t sub_C3C00@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for FlatCoverView(0);
  sub_8198(v1 + *(v10 + 28), v9, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_C51FC(v9, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t FlatCoverView.init(assetInfo:intrinsicSize:cornerRadius:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = swift_getKeyPath();
  *(a2 + 56) = 0;
  type metadata accessor for ProfileRestrictions(0);
  sub_C51B4(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *(a2 + 64) = sub_261900();
  *(a2 + 72) = v10;
  v11 = type metadata accessor for FlatCoverView(0);
  v12 = v11[7];
  *(a2 + v12) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  result = sub_F7CC(a1, a2 + v11[8]);
  v14 = (a2 + v11[9]);
  *v14 = a3;
  v14[1] = a4;
  *(a2 + v11[10]) = a5;
  return result;
}

void FlatCoverView.body.getter(void (**a1)(void *a1)@<X8>)
{
  v3 = type metadata accessor for FlatCoverView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_C40E4();
  sub_C514C(v1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FlatCoverView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_C51FC(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for FlatCoverView);
  type metadata accessor for ImageResourceLoader(0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  sub_2EF0(&qword_318728, &qword_26DBF0);
  v10 = swift_allocObject();
  *(v10 + 28) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v9 + 24) = v10;

  sub_2603B0();
  v13[1] = v9;

  sub_2631D0();

  v11 = v13[2];
  v12 = v13[3];
  *a1 = sub_C4BEC;
  a1[1] = v8;
  a1[2] = v6;
  a1[3] = v11;
  a1[4] = v12;
}

uint64_t sub_C40E4()
{
  v1 = type metadata accessor for FlatCoverView(0);
  v2 = (v0 + *(v1 + 32));
  sub_2E18(v2, v2[3]);
  v3 = sub_260900();
  v5 = v4;
  if (v4)
  {
    v6 = v3;
  }

  else
  {
    sub_2E18(v2, v2[3]);
    v6 = sub_2606E0();
  }

  v7 = v4;
  sub_C3944(v19);
  v8 = v20;
  v9 = v21;
  sub_2E18(v19, v20);
  v17[0] = v6;
  v17[1] = v7;
  v18 = v5 != 0;
  v10 = (v0 + *(v1 + 36));
  v11 = *v10;
  v12 = v10[1];
  v13 = sub_C3AB4();
  sub_C4548(&v16);
  v14 = (*(v9 + 16))(v17, &v16, v8, v9, v11, v12, v13);
  sub_6204(v6, v7);
  sub_3080(v19);
  return v14;
}

void sub_C4254(void *a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31C210, &qword_272540);
  __chkstk_darwin(v4);
  v6 = &v20[-v5];
  v7 = sub_2EF0(&qword_31C218, &qword_272548);
  __chkstk_darwin(v7);
  v9 = &v20[-v8];
  if (a1)
  {
    v10 = *(a2 + *(type metadata accessor for FlatCoverView(0) + 40));
    v11 = a1;
    UIImage.cornerRadius(_:)(v10);
    *v6 = sub_2630A0();
    swift_storeEnumTagMultiPayload();
    sub_C4FD4();

    sub_261F80();
  }

  else
  {
    v12 = _s7BooksUI14ColorConstantsV9booksGray05SwiftB00C0Vvg_0();
    v13 = type metadata accessor for FlatCoverView(0);
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    *&v21[22] = v23;
    *&v21[38] = v24;
    *&v21[6] = v22;
    v14 = *(a2 + *(v13 + 40));
    v15 = &v9[*(v7 + 36)];
    v16 = *(sub_2617E0() + 20);
    v17 = enum case for RoundedCornerStyle.continuous(_:);
    v18 = sub_261DD0();
    (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
    *v15 = v14;
    *(v15 + 1) = v14;
    *&v15[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
    *v9 = v12;
    *(v9 + 4) = 256;
    v19 = *&v21[16];
    *(v9 + 10) = *v21;
    *(v9 + 26) = v19;
    *(v9 + 42) = *&v21[32];
    *(v9 + 7) = *&v21[46];
    sub_8198(v9, v6, &qword_31C218, &qword_272548);
    swift_storeEnumTagMultiPayload();
    sub_C4FD4();
    sub_261F80();
    sub_8E80(v9, &qword_31C218, &qword_272548);
  }
}

void sub_C4548(_WORD *a1@<X8>)
{
  v33 = a1;
  v2 = sub_2EF0(&qword_31C238, &qword_274960);
  __chkstk_darwin(v2 - 8);
  v32 = &v31 - v3;
  v4 = sub_261180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + 64);
  if (v14)
  {
    v15 = 16710908;
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v14;
    sub_260FF0();

    if ((v34[0] & 1) == 0)
    {
      v17 = type metadata accessor for FlatCoverView(0);
      sub_2E18((v1 + *(v17 + 32)), *(v1 + *(v17 + 32) + 24));
      if (sub_260870())
      {
        sub_C3C00(v13);
        sub_C514C(v13, v10, type metadata accessor for ColorConstants.Environment);
        (*(v5 + 104))(v7, enum case for ColorScheme.dark(_:), v4);
        sub_C51B4(&qword_3183A0, &type metadata accessor for ColorScheme, &protocol conformance descriptor for ColorScheme);
        v18 = sub_264390();
        v19 = *(v5 + 8);
        v19(v7, v4);
        sub_60B08(v13);
        v19(v10, v4);
        v20 = v18 ^ 1;
        v21 = (v1 + *(v17 + 32));
        sub_2E18(v21, v21[3]);
        v22 = sub_260860();
        if (v22)
        {
          if (v22 == 1)
          {
            sub_30CC(v21, v34);
            sub_2EF0(&qword_31AEE8, &qword_28CD40);
            v23 = sub_260680();
            v24 = v32;
            v25 = swift_dynamicCast();
            v26 = *(*(v23 - 8) + 56);
            if (v25)
            {
              v27 = *(v23 - 8);
              v26(v24, 0, 1, v23);
              v28 = sub_260670();
              (*(v27 + 8))(v24, v23);
            }

            else
            {
              v26(v24, 1, 1, v23);
              sub_8E80(v24, &qword_31C238, &qword_274960);
              v28 = 0;
            }

            if (v18)
            {
              v29 = 0x10000;
            }

            else
            {
              v29 = 65792;
            }

            v15 = v29 & 0xFFFFFFFE | v28 & 1;
          }

          else
          {
            v15 = v20 & 1 | 0xFF800000;
          }
        }

        else
        {
          v15 = (v20 & 1 | 0x10100) + 4128768;
        }
      }
    }

    v30 = v33;
    *v33 = v15;
    *(v30 + 2) = BYTE2(v15);
  }

  else
  {
    type metadata accessor for ProfileRestrictions(0);
    sub_C51B4(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
    sub_2618F0();
    __break(1u);
  }
}

uint64_t type metadata accessor for FlatCoverView(uint64_t a1)
{
  result = qword_31C1B0;
  if (!qword_31C1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C4A90()
{
  v1 = type metadata accessor for FlatCoverView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    sub_3080((v0 + v2));
  }

  else
  {
  }

  sub_3074(*(v3 + 48), *(v3 + 56));

  v4 = *(v1 + 28);
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_261180();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_3080((v3 + *(v1 + 32)));

  return swift_deallocObject();
}

void sub_C4BEC(void *a1)
{
  v3 = *(type metadata accessor for FlatCoverView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_C4254(a1, v4);
}

uint64_t sub_C4C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_C4D80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 24) = (a2 - 1);
  }

  return result;
}

void sub_C4E4C(uint64_t a1)
{
  sub_5027C(319);
  if (v1 <= 0x3F)
  {
    sub_14C14();
    if (v2 <= 0x3F)
    {
      sub_95884(319);
      if (v3 <= 0x3F)
      {
        sub_C4F38(319);
        if (v4 <= 0x3F)
        {
          sub_44744();
          if (v5 <= 0x3F)
          {
            type metadata accessor for CGSize(319);
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

void sub_C4F38(uint64_t a1)
{
  if (!qword_316FE8)
  {
    type metadata accessor for ColorConstants(255);
    v1 = sub_2611E0();
    if (!v2)
    {
      atomic_store(v1, &qword_316FE8);
    }
  }
}

unint64_t sub_C4FD4()
{
  result = qword_31C220;
  if (!qword_31C220)
  {
    sub_2F9C(&qword_31C218, &qword_272548);
    sub_C508C();
    sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C220);
  }

  return result;
}

unint64_t sub_C508C()
{
  result = qword_31C228;
  if (!qword_31C228)
  {
    sub_2F9C(&qword_31C230, &qword_272550);
    sub_8E38(&qword_3188D8, &qword_3188C8, &qword_26BDE0, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C228);
  }

  return result;
}

uint64_t sub_C514C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_C51B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_C51FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_C5264@<X0>(char *a1@<X8>)
{
  v3 = sub_2EF0(&qword_316890, &qword_2725A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  v9 = sub_261690();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v38 = &v36 - v13;
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  v40 = type metadata accessor for RestrictedDynamicTypeSizeViewModifier(0);
  v20 = a1;
  sub_40CF0(a1);
  v41 = v1;
  sub_C5F44(v1, v8);
  v21 = v10[6];
  if (v21(v8, 1, v9) == 1)
  {
    v22 = v10;
    sub_8E80(v8, &qword_316890, &qword_2725A0);
  }

  else
  {
    v37 = v5;
    v36 = v10[4];
    v36(v19, v8, v9);
    sub_C6CF0(&qword_317538, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    v23 = sub_264370();
    v22 = v10;
    v24 = v10[1];
    if (v23)
    {
      v24(v19, v9);
      v25 = v16;
      v26 = v20;
    }

    else
    {
      v24(v20, v9);
      v25 = v16;
      v26 = v19;
    }

    v27 = v36;
    v36(v25, v26, v9);
    v27(v20, v16, v9);
    v5 = v37;
  }

  sub_C5F44(v41 + *(v40 + 20), v5);
  if (v21(v5, 1, v9) == 1)
  {
    return sub_8E80(v5, &qword_316890, &qword_2725A0);
  }

  v29 = v22[4];
  v30 = v38;
  v29(v38, v5, v9);
  sub_C6CF0(&qword_317538, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v31 = sub_264360();
  v32 = v22[1];
  if (v31)
  {
    v32(v30, v9);
    v33 = v39;
    v34 = v39;
    v35 = v20;
  }

  else
  {
    v32(v20, v9);
    v33 = v39;
    v34 = v39;
    v35 = v30;
  }

  v29(v34, v35, v9);
  return (v29)(v20, v33, v9);
}

uint64_t sub_C569C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2EF0(&qword_316890, &qword_2725A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  sub_C69EC();
  sub_261CB0();
  v5 = sub_261690();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  sub_261A60();
  result = (v7)(v4, 1, v5);
  if (result != 1)
  {
    return sub_8E80(v4, &qword_316890, &qword_2725A0);
  }

  return result;
}

uint64_t sub_C57FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2EF0(&qword_316890, &qword_2725A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  sub_C69EC();
  sub_261CB0();
  v5 = sub_261690();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  sub_261A60();
  result = (v7)(v4, 1, v5);
  if (result != 1)
  {
    return sub_8E80(v4, &qword_316890, &qword_2725A0);
  }

  return result;
}

uint64_t sub_C5960(uint64_t a1)
{
  v2 = sub_2EF0(&qword_316890, &qword_2725A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_261690();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 16);
  v10(v9, a1, v5, v7);
  (v10)(v4, v9, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_C69EC();
  sub_261CC0();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_C5AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = sub_261690();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_31C300, &qword_272658);
  __chkstk_darwin(v7);
  v9 = v15 - v8;
  KeyPath = swift_getKeyPath();
  v11 = &v9[*(v7 + 36)];
  v12 = sub_2EF0(&qword_31C308, &qword_272660);
  sub_40CF0((v11 + *(v12 + 28)));
  *v11 = KeyPath;
  v13 = sub_2EF0(&qword_31C310, &qword_272668);
  (*(*(v13 - 8) + 16))(v9, a1, v13);
  sub_C5264(v6);
  sub_C6908();
  sub_262B60();
  (*(v4 + 8))(v6, v3);
  return sub_8E80(v9, &qword_31C300, &qword_272658);
}

uint64_t View.restrictedDynamicTypeSize(min:max:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v6 = sub_2EF0(&qword_316890, &qword_2725A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for RestrictedDynamicTypeSizeViewModifier(0);
  __chkstk_darwin(v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_C5F44(a1, v11);
  sub_C5F44(a2, v8);
  v15 = sub_261690();
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  v17 = *(v12 + 20);
  v16(&v14[v17], 1, 1, v15);
  v18 = *(v12 + 24);
  *&v14[v18] = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  sub_C5FBC(v11, v14);
  sub_C5FBC(v8, &v14[v17]);
  sub_262E30();
  return sub_C602C(v14);
}

uint64_t type metadata accessor for RestrictedDynamicTypeSizeViewModifier(uint64_t a1)
{
  result = qword_31C2B8;
  if (!qword_31C2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C5F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316890, &qword_2725A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C5FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316890, &qword_2725A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_C602C(uint64_t a1)
{
  v2 = type metadata accessor for RestrictedDynamicTypeSizeViewModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.nonAXDynamicTypeSize()(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v2 = sub_2EF0(&qword_316890, &qword_2725A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for RestrictedDynamicTypeSizeViewModifier(0);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261690();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v7, 1, 1, v11);
  (*(v12 + 104))(v4, enum case for DynamicTypeSize.xxxLarge(_:), v11);
  v13(v4, 0, 1, v11);
  v13(v10, 1, 1, v11);
  v14 = *(v8 + 20);
  v13(&v10[v14], 1, 1, v11);
  v15 = *(v8 + 24);
  *&v10[v15] = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  sub_C5FBC(v7, v10);
  sub_C5FBC(v4, &v10[v14]);
  sub_262E30();
  return sub_C602C(v10);
}

uint64_t View.unrestrictedDynamicTypeSize()(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v2 = sub_2EF0(&qword_316890, &qword_2725A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for RestrictedDynamicTypeSizeViewModifier(0);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261690();
  v12 = *(*(v11 - 8) + 56);
  v12(v7, 1, 1, v11);
  v12(v4, 1, 1, v11);
  v12(v10, 1, 1, v11);
  v13 = *(v8 + 20);
  v12(&v10[v13], 1, 1, v11);
  v14 = *(v8 + 24);
  *&v10[v14] = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  sub_C5FBC(v7, v10);
  sub_C5FBC(v4, &v10[v13]);
  sub_262E30();
  return sub_C602C(v10);
}

uint64_t sub_C64F0(uint64_t *a1)
{
  type metadata accessor for RestrictedDynamicTypeSizeViewModifier(255);
  sub_261730();
  sub_C6CF0(&qword_31C258, type metadata accessor for RestrictedDynamicTypeSizeViewModifier, &unk_272608);
  return swift_getWitnessTable();
}

uint64_t sub_C65A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316890, &qword_2725A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2EF0(&qword_319858, &unk_2725D0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_C66BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316890, &qword_2725A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2EF0(&qword_319858, &unk_2725D0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

void sub_C67D0(uint64_t a1)
{
  sub_C688C(319, &qword_31C2C8, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_C688C(319, &qword_3198C8, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_C688C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_261690();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_C6908()
{
  result = qword_31C318;
  if (!qword_31C318)
  {
    sub_2F9C(&qword_31C300, &qword_272658);
    sub_8E38(&qword_31C320, &qword_31C310, &qword_272668, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_8E38(&qword_31C328, &qword_31C308, &qword_272660, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C318);
  }

  return result;
}

unint64_t sub_C69EC()
{
  result = qword_31C330;
  if (!qword_31C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C330);
  }

  return result;
}

uint64_t sub_C6A50()
{
  sub_2F9C(&qword_31C300, &qword_272658);
  sub_C6908();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_C6AB4()
{
  v0 = sub_2EF0(&qword_316890, &qword_2725A0);
  sub_B600(v0, qword_31C240);
  v1 = sub_B080(v0, qword_31C240);
  v2 = sub_261690();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_C6B54@<X0>(uint64_t a1@<X8>)
{
  if (qword_315928 != -1)
  {
    swift_once();
  }

  v2 = sub_2EF0(&qword_316890, &qword_2725A0);
  v3 = sub_B080(v2, qword_31C240);

  return sub_C5F44(v3, a1);
}

uint64_t sub_C6BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_C6C3C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_C6C3C()
{
  result = qword_31C338;
  if (!qword_31C338)
  {
    sub_2F9C(&qword_316890, &qword_2725A0);
    sub_C6CF0(&qword_317AB0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C338);
  }

  return result;
}

uint64_t sub_C6CF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ListItemMetadataTitleWithSubtitle.init(title:subtitle:size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v6;
  return result;
}

uint64_t ListItemMetadataTitleWithSubtitle.title(localizer:)()
{
  v1 = *v0;

  return v1;
}

uint64_t ListItemMetadataTitleWithSubtitle.subtitle(localizer:)()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_C6DF8()
{
  v1 = 0x656C746974627573;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_C6E48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_C7540(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_C6E70(uint64_t a1)
{
  v2 = sub_C7144();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C6EAC(uint64_t a1)
{
  v2 = sub_C7144();

  return CodingKey.debugDescription.getter(a1, v2);
}

void ListItemMetadataTitleWithSubtitle.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_31C340, &qword_2726D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_2E18(a1, a1[3]);
  sub_C7144();
  sub_265120();
  if (v2)
  {
    sub_3080(a1);
  }

  else
  {
    v22 = 0;
    v9 = sub_264DC0();
    v11 = v10;
    v18 = v9;
    v21 = 1;
    v12 = sub_264D70();
    v14 = v13;
    v17 = v12;
    v19 = 2;
    sub_C7198();
    sub_264DF0();
    (*(v6 + 8))(v8, v5);
    v15 = v20;
    v16 = v17;
    *a2 = v18;
    *(a2 + 8) = v11;
    *(a2 + 16) = v16;
    *(a2 + 24) = v14;
    *(a2 + 32) = v15;

    sub_3080(a1);
  }
}

unint64_t sub_C7144()
{
  result = qword_31C348;
  if (!qword_31C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C348);
  }

  return result;
}

unint64_t sub_C7198()
{
  result = qword_31C350;
  if (!qword_31C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C350);
  }

  return result;
}

unint64_t sub_C71EC(uint64_t a1)
{
  result = sub_C7214();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_C7214()
{
  result = qword_31C358;
  if (!qword_31C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C358);
  }

  return result;
}

unint64_t sub_C7268(uint64_t a1)
{
  result = sub_C7290();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_C7290()
{
  result = qword_31C360;
  if (!qword_31C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C360);
  }

  return result;
}

unint64_t sub_C72FC(uint64_t a1)
{
  result = sub_C7324();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_C7324()
{
  result = qword_31C368;
  if (!qword_31C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C368);
  }

  return result;
}

__n128 sub_C7378(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_C738C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_C73D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_C743C()
{
  result = qword_31C370;
  if (!qword_31C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C370);
  }

  return result;
}

unint64_t sub_C7494()
{
  result = qword_31C378;
  if (!qword_31C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C378);
  }

  return result;
}

unint64_t sub_C74EC()
{
  result = qword_31C380;
  if (!qword_31C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C380);
  }

  return result;
}

uint64_t sub_C7540(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void SeriesHeaderCoverStackLayout.init(covers:pageWidth:heroWidthScale:)(uint64_t a1@<X0>, char *a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  v5 = a1;
  v7 = *a2;
  v8 = *(a1 + 16);
  if (v8 >= 6)
  {
    sub_C8914(a1, a1 + 32, 0, 0xBuLL);
    v10 = v9;

    v8 = *(v10 + 16);
    v5 = v10;
  }

  if (v8)
  {
    memmove(v18, (v5 + 32), 0x80uLL);
    v11 = sub_2F8B8(v18);
    v12 = sub_2F950(v18);
    if (v11)
    {
      v13 = 1.0;
      if (v11 != 1)
      {
        v13 = 0.641025641;
      }
    }

    else
    {
      v13 = *(v12 + 16);
    }

    sub_C8DDC(v5, a4, dbl_272A80[v7] * a4, v13);
    v15 = v14;
    v17 = v16;

    *a3 = v17;
    *(a3 + 1) = v15;
    a3[2] = v13;
  }

  else
  {

    *a3 = 0.0;
    a3[1] = 0.0;
    a3[2] = 0.0;
  }
}

void SeriesHeaderCoverStackLayout.HeroWidthScale.init(rawValue:)(char *a1@<X8>, double a2@<D0>)
{
  if (a2 == 0.27)
  {
    *a1 = 0;
  }

  else if (a2 == 0.51)
  {
    *a1 = 1;
  }

  else if (a2 == 0.78)
  {
    *a1 = 2;
  }

  else
  {
    if (a2 == 1.0)
    {
      v2 = 3;
    }

    else
    {
      v2 = 4;
    }

    *a1 = v2;
  }
}

double sub_C7858@<D0>(double *a1@<X8>)
{
  result = dbl_272A80[*v1];
  *a1 = result;
  return result;
}

uint64_t SeriesHeaderCoverStackLayout.axIsSeries.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 < 2)
  {
    return 0;
  }

  memmove(__dst, (v1 + 96), 0x80uLL);
  v3 = sub_2F8B8(__dst);
  v4 = sub_2F950(__dst);
  if (v3)
  {
    return 0;
  }

  v6 = v4;
  result = *(v4 + 64);
  if (result)
  {
    v7 = *(v6 + 96);
    v8 = *(v6 + 104);

    v9 = 0;
    v10 = (v1 + 96);
    while (v9 < *(v1 + 16))
    {
      v11 = *(v10 - 4);
      v12 = *(v10 - 3);
      v13 = *(v10 - 1);
      v29[2] = *(v10 - 2);
      v29[3] = v13;
      v29[0] = v11;
      v29[1] = v12;
      v14 = *v10;
      v15 = v10[1];
      v16 = v10[3];
      v29[6] = v10[2];
      v29[7] = v16;
      v29[4] = v14;
      v29[5] = v15;
      v17 = v10[4];
      v18 = v10[5];
      v19 = v10[7];
      v29[10] = v10[6];
      v29[11] = v19;
      v29[8] = v17;
      v29[9] = v18;
      v20 = *v10;
      v21 = v10[1];
      v22 = v10[3];
      v30[2] = v10[2];
      v30[3] = v22;
      v30[0] = v20;
      v30[1] = v21;
      v23 = v10[4];
      v24 = v10[5];
      v25 = v10[7];
      v30[6] = v10[6];
      v30[7] = v25;
      v30[4] = v23;
      v30[5] = v24;
      v26 = sub_2F8B8(v30);
      v27 = sub_2F950(v30);
      if (v26)
      {
        sub_8E80(v6 + 56, &qword_31C388, &qword_2728F0);
        sub_C9340(v29);
        return 0;
      }

      if (!v27[8] || !v8 || (v28 = v27[13]) == 0 || ((result = v27[12], result != v7) || v28 != v8) && (result = sub_264F10(), (result & 1) == 0))
      {
        sub_8E80(v6 + 56, &qword_31C388, &qword_2728F0);
        return 0;
      }

      ++v9;
      v10 += 12;
      if (v2 == v9)
      {
        sub_8E80(v6 + 56, &qword_31C388, &qword_2728F0);
        return 1;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t SeriesHeaderCoverStackLayout.axLabel.getter()
{
  v1 = *v0;
  *v20 = *v0;
  *&v20[8] = *(v0 + 1);
  result = SeriesHeaderCoverStackLayout.axIsSeries.getter();
  if (result)
  {
    if (!*(v1 + 16))
    {
      __break(1u);
      return result;
    }

    v4 = *(v1 + 96);
    v3 = *(v1 + 112);
    v5 = *(v1 + 144);
    v25 = *(v1 + 128);
    v26 = v5;
    v6 = *(v1 + 160);
    v7 = *(v1 + 176);
    v8 = *(v1 + 208);
    v29 = *(v1 + 192);
    v30 = v8;
    v27 = v6;
    v28 = v7;
    v23 = v4;
    v24 = v3;
    v9 = *(v1 + 48);
    *v20 = *(v1 + 32);
    *&v20[16] = v9;
    v10 = *(v1 + 80);
    v21 = *(v1 + 64);
    v22 = v10;
    v11 = *(v1 + 176);
    v12 = *(v1 + 192);
    v31[4] = *(v1 + 160);
    v31[5] = v11;
    v13 = *(v1 + 208);
    v31[6] = v12;
    v31[7] = v13;
    v14 = *(v1 + 112);
    v31[0] = *(v1 + 96);
    v31[1] = v14;
    v15 = *(v1 + 144);
    v31[2] = *(v1 + 128);
    v31[3] = v15;
    v16 = sub_2F8B8(v31);
    v17 = sub_2F950(v31);
    if (!v16)
    {
      if (v17[8] && v17[13])
      {
        v18 = v17[12];

        return v18;
      }

      sub_C9394(v20, &v19);
    }

    sub_C9340(v20);
  }

  return 0;
}

double SeriesHeaderCoverStackLayout.intrinsicSize.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8) * *(v0 + 16);
  v3 = v2 + sub_C8D20(*v0);
  return v3 + sub_C8D7C(v1);
}

double SeriesHeaderCoverStackLayout.centeringOffset.getter()
{
  v1 = *v0;
  v2 = sub_C8D20(*v0);
  return (v2 - sub_C8D7C(v1)) * 0.5;
}

BOOL static SeriesHeaderCoverStackLayout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = sub_C7C54(*a1, *a2);
  result = 0;
  if ((v6 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

uint64_t sub_C7C54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = *(a1 + 176);
    v89 = *(a1 + 160);
    v90 = v3;
    v4 = *(a1 + 208);
    v91 = *(a1 + 192);
    v92 = v4;
    v5 = *(a1 + 112);
    v85 = *(a1 + 96);
    v86 = v5;
    v6 = *(a1 + 144);
    v87 = *(a1 + 128);
    v88 = v6;
    v7 = *(a1 + 48);
    v81 = *(a1 + 32);
    v82 = v7;
    v8 = *(a1 + 80);
    v83 = *(a1 + 64);
    v84 = v8;
    v9 = *(a2 + 160);
    v102 = *(a2 + 176);
    v10 = *(a2 + 208);
    v103 = *(a2 + 192);
    v104 = v10;
    v11 = *(a2 + 112);
    v97 = *(a2 + 96);
    v98 = v11;
    v12 = *(a2 + 144);
    v99 = *(a2 + 128);
    v100 = v12;
    v101 = v9;
    v13 = *(a2 + 48);
    v93 = *(a2 + 32);
    v94 = v13;
    v14 = *(a2 + 80);
    v95 = *(a2 + 64);
    v96 = v14;
    if (v81 == v93)
    {
      v15 = (a2 + 224);
      v16 = (a1 + 224);
      while (1)
      {
        if (*(&v81 + 1) != *(&v93 + 1) || *&v82 != *&v94 || *(&v82 + 1) != *(&v94 + 1) || v83 != v95 || *(&v83 + 1) != *(&v95 + 1) || *&v84 != *&v96 || *(&v84 + 1) != *(&v96 + 1))
        {
          return 0;
        }

        v17 = *(v16 - 5);
        v18 = *(v16 - 3);
        v68 = *(v16 - 4);
        v69 = v18;
        v19 = *(v16 - 3);
        v20 = *(v16 - 1);
        v70 = *(v16 - 2);
        v71 = v20;
        v21 = *(v16 - 7);
        v65[0] = *(v16 - 8);
        v65[1] = v21;
        v22 = *(v16 - 5);
        v24 = *(v16 - 8);
        v23 = *(v16 - 7);
        v66 = *(v16 - 6);
        v67 = v22;
        v25 = *(v15 - 5);
        v74 = *(v15 - 6);
        v75 = v25;
        v26 = *(v15 - 7);
        v72 = *(v15 - 8);
        v73 = v26;
        v27 = *(v15 - 1);
        v78 = *(v15 - 2);
        v79 = v27;
        v28 = *(v15 - 3);
        v76 = *(v15 - 4);
        v77 = v28;
        v80[2] = v66;
        v80[3] = v17;
        v80[0] = v24;
        v80[1] = v23;
        v29 = *(v16 - 1);
        v80[6] = v70;
        v80[7] = v29;
        v80[4] = v68;
        v80[5] = v19;
        v30 = sub_2F8B8(v80);
        if (!v30)
        {
          break;
        }

        if (v30 == 1)
        {
          v31 = *sub_2F950(v80);
          v56[2] = v99;
          v56[3] = v100;
          v56[0] = v97;
          v56[1] = v98;
          v56[6] = v103;
          v56[7] = v104;
          v56[4] = v101;
          v56[5] = v102;
          if (sub_2F8B8(v56) != 1)
          {
            goto LABEL_32;
          }

          v32 = *sub_2F950(v56);
          sub_8E80(v65, &qword_31C3F0, &unk_272A40);
          sub_C9340(&v81);
LABEL_26:
          if (v31 != v32)
          {
            return 0;
          }

          goto LABEL_27;
        }

        v35 = sub_2F950(v80);
        v36 = *v35;
        v37 = *(v35 + 8);
        v61 = v101;
        v62 = v102;
        v63 = v103;
        v64 = v104;
        v57 = v97;
        v58 = v98;
        v59 = v99;
        v60 = v100;
        if (sub_2F8B8(&v57) != 2)
        {
          goto LABEL_32;
        }

        v38 = sub_2F950(&v57);
        v39 = *v38;
        v40 = *(v38 + 8);
        sub_C9394(&v93, v56);
        sub_8E80(v65, &qword_31C3F0, &unk_272A40);
        if (v36 != v39)
        {
          return 0;
        }

        sub_C9340(&v93);
        sub_C9340(&v81);
        if (v37 != v40)
        {
          return 0;
        }

LABEL_27:
        if (!--v2)
        {
          return 1;
        }

        v42 = v16[9];
        v89 = v16[8];
        v90 = v42;
        v43 = v16[11];
        v91 = v16[10];
        v92 = v43;
        v44 = v16[5];
        v85 = v16[4];
        v86 = v44;
        v45 = v16[7];
        v87 = v16[6];
        v88 = v45;
        v46 = v16[1];
        v81 = *v16;
        v82 = v46;
        v47 = v16[3];
        v83 = v16[2];
        v84 = v47;
        v48 = v15[8];
        v102 = v15[9];
        v49 = v15[11];
        v103 = v15[10];
        v104 = v49;
        v50 = v15[5];
        v97 = v15[4];
        v98 = v50;
        v51 = v15[7];
        v99 = v15[6];
        v100 = v51;
        v101 = v48;
        v52 = v15[1];
        v93 = *v15;
        v94 = v52;
        v53 = v15[2];
        v54 = v15[3];
        v15 += 12;
        v16 += 12;
        v95 = v53;
        v96 = v54;
        if (v81 != v93)
        {
          return 0;
        }
      }

      v33 = sub_2F950(v80);
      v61 = v101;
      v62 = v102;
      v63 = v103;
      v64 = v104;
      v57 = v97;
      v58 = v98;
      v59 = v99;
      v60 = v100;
      if (sub_2F8B8(&v57))
      {
        sub_C9394(&v81, v56);
        sub_C9394(&v81, v56);
LABEL_32:
        sub_C9394(&v93, v56);
        sub_8E80(v65, &qword_31C3F0, &unk_272A40);
        sub_C9340(&v81);
        return 0;
      }

      v34 = sub_2F950(&v57);
      v31 = *(v33 + 120);
      v32 = *(v34 + 120);
      if (*v33 == *v34 && *(v33 + 8) == *(v34 + 8))
      {
        sub_C9394(&v81, v56);
        sub_C9394(&v93, v56);
        sub_8E80(v65, &qword_31C3F0, &unk_272A40);
      }

      else
      {
        v41 = sub_264F10();
        sub_C9394(&v81, v56);
        sub_C9394(&v93, v56);
        sub_8E80(v65, &qword_31C3F0, &unk_272A40);
        if ((v41 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_26;
    }
  }

  return 0;
}

uint64_t sub_C80DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = *(a1 + 176);
    v87 = *(a1 + 160);
    v88 = v3;
    v89 = *(a1 + 192);
    v4 = *(a1 + 112);
    v83 = *(a1 + 96);
    v84 = v4;
    v5 = *(a1 + 144);
    v85 = *(a1 + 128);
    v86 = v5;
    v6 = *(a1 + 48);
    v79 = *(a1 + 32);
    v80 = v6;
    v7 = *(a1 + 80);
    v81 = *(a1 + 64);
    v82 = v7;
    v8 = *(a2 + 176);
    *&v92[96] = *(a2 + 160);
    *&v92[112] = v8;
    *&v92[128] = *(a2 + 192);
    v9 = *(a2 + 112);
    *&v92[32] = *(a2 + 96);
    *&v92[48] = v9;
    v10 = *(a2 + 144);
    *&v92[64] = *(a2 + 128);
    *&v92[80] = v10;
    v11 = *(a2 + 48);
    v90 = *(a2 + 32);
    v91 = v11;
    v12 = *(a2 + 80);
    *v92 = *(a2 + 64);
    *&v92[16] = v12;
    if (v79 == v90)
    {
      v13 = (a2 + 200);
      v14 = (a1 + 200);
      while (1)
      {
        if (*(&v79 + 1) != *(&v90 + 1) || *&v80 != *&v91 || *(&v80 + 1) != *(&v91 + 1) || *&v81 != *v92)
        {
          return 0;
        }

        v15 = *(v14 - 5);
        v16 = *(v14 - 3);
        v66 = *(v14 - 4);
        v67 = v16;
        v17 = *(v14 - 3);
        v18 = *(v14 - 1);
        v68 = *(v14 - 2);
        v69 = v18;
        v19 = *(v14 - 7);
        v63[0] = *(v14 - 8);
        v63[1] = v19;
        v20 = *(v14 - 5);
        v22 = *(v14 - 8);
        v21 = *(v14 - 7);
        v64 = *(v14 - 6);
        v65 = v20;
        v23 = *(v13 - 5);
        v72 = *(v13 - 6);
        v73 = v23;
        v24 = *(v13 - 7);
        v70 = *(v13 - 8);
        v71 = v24;
        v25 = *(v13 - 1);
        v76 = *(v13 - 2);
        v77 = v25;
        v26 = *(v13 - 3);
        v74 = *(v13 - 4);
        v75 = v26;
        v78[2] = v64;
        v78[3] = v15;
        v78[0] = v22;
        v78[1] = v21;
        v27 = *(v14 - 1);
        v78[6] = v68;
        v78[7] = v27;
        v78[4] = v66;
        v78[5] = v17;
        v28 = sub_2F8B8(v78);
        if (!v28)
        {
          break;
        }

        if (v28 == 1)
        {
          v29 = *sub_2F950(v78);
          v57 = *&v92[40];
          v58 = *&v92[56];
          v55 = *&v92[8];
          v56 = *&v92[24];
          v61 = *&v92[104];
          v62 = *&v92[120];
          v59 = *&v92[72];
          v60 = *&v92[88];
          if (sub_2F8B8(&v55) != 1)
          {
            goto LABEL_30;
          }

          v30 = *sub_2F950(&v55);
LABEL_18:
          sub_C95C4(&v90, v54);
          sub_8E80(v63, &qword_31C3F0, &unk_272A40);
          goto LABEL_24;
        }

        v33 = sub_2F950(v78);
        v34 = *v33;
        v35 = *(v33 + 8);
        v59 = *&v92[72];
        v60 = *&v92[88];
        v61 = *&v92[104];
        v62 = *&v92[120];
        v55 = *&v92[8];
        v56 = *&v92[24];
        v57 = *&v92[40];
        v58 = *&v92[56];
        if (sub_2F8B8(&v55) != 2)
        {
          goto LABEL_30;
        }

        v36 = sub_2F950(&v55);
        v37 = *v36;
        v38 = *(v36 + 8);
        sub_C95C4(&v90, v54);
        sub_8E80(v63, &qword_31C3F0, &unk_272A40);
        if (v34 != v37 || v35 != v38)
        {
          return 0;
        }

LABEL_25:
        if (!--v2)
        {
          return 1;
        }

        v40 = v14[9];
        v87 = v14[8];
        v88 = v40;
        v41 = v14[5];
        v83 = v14[4];
        v84 = v41;
        v42 = v14[7];
        v85 = v14[6];
        v86 = v42;
        v43 = v14[1];
        v79 = *v14;
        v80 = v43;
        v44 = v14[3];
        v81 = v14[2];
        v82 = v44;
        v45 = v13[9];
        *&v92[96] = v13[8];
        *&v92[112] = v45;
        v46 = *(v13 + 20);
        v47 = v13[5];
        *&v92[32] = v13[4];
        *&v92[48] = v47;
        v48 = v13[7];
        *&v92[64] = v13[6];
        *&v92[80] = v48;
        v49 = v13[1];
        v90 = *v13;
        v91 = v49;
        v51 = v13[2];
        v50 = v13[3];
        v13 = (v13 + 168);
        v52 = *(v14 + 20);
        v14 = (v14 + 168);
        v89 = v52;
        *&v92[128] = v46;
        *v92 = v51;
        *&v92[16] = v50;
        if (v79 != v90)
        {
          return 0;
        }
      }

      v31 = sub_2F950(v78);
      v59 = *&v92[72];
      v60 = *&v92[88];
      v61 = *&v92[104];
      v62 = *&v92[120];
      v55 = *&v92[8];
      v56 = *&v92[24];
      v57 = *&v92[40];
      v58 = *&v92[56];
      if (sub_2F8B8(&v55))
      {
        sub_C95C4(&v79, v54);
LABEL_30:
        sub_C95C4(&v90, v54);
        sub_8E80(v63, &qword_31C3F0, &unk_272A40);
        return 0;
      }

      v32 = sub_2F950(&v55);
      v29 = *(v31 + 120);
      v30 = *(v32 + 120);
      if (*v31 == *v32 && *(v31 + 8) == *(v32 + 8))
      {
        sub_C95C4(&v79, v54);
        goto LABEL_18;
      }

      v39 = sub_264F10();
      sub_C95C4(&v79, v54);
      sub_C95C4(&v90, v54);
      sub_8E80(v63, &qword_31C3F0, &unk_272A40);
      if ((v39 & 1) == 0)
      {
        return 0;
      }

LABEL_24:
      if (v29 != v30)
      {
        return 0;
      }

      goto LABEL_25;
    }
  }

  return 0;
}

uint64_t sub_C851C(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 16);
  if (v6 != *(a2 + 16))
  {
    return 0;
  }

  if (!v6 || a1 == a2)
  {
    return 1;
  }

  v74 = v5;
  v75 = v4;
  v76 = v2;
  v77 = v3;
  v7 = (a1 + 32);
  v8 = (a2 + 32);
  for (i = v6 - 1; ; --i)
  {
    v10 = v7[3];
    v11 = v7[5];
    v60 = v7[4];
    v61 = v11;
    v12 = v7[5];
    v13 = v7[7];
    v62 = v7[6];
    v63 = v13;
    v14 = v7[1];
    v57[0] = *v7;
    v57[1] = v14;
    v15 = v7[3];
    v17 = *v7;
    v16 = v7[1];
    v58 = v7[2];
    v59 = v15;
    v18 = *v8;
    v19 = v8[1];
    v20 = v8[3];
    v66 = v8[2];
    v67 = v20;
    v21 = v8[1];
    v22 = v8[2];
    v23 = *v8;
    v64 = v18;
    v65 = v21;
    v24 = v8[5];
    v25 = v8[7];
    v70 = v8[6];
    v71 = v25;
    v26 = v8[3];
    v27 = v8[5];
    v68 = v8[4];
    v69 = v27;
    v28 = *v7;
    v29 = v7[1];
    v30 = v7[3];
    v72[2] = v7[2];
    v72[3] = v30;
    v72[0] = v28;
    v72[1] = v29;
    v31 = v7[7];
    v72[6] = v7[6];
    v72[7] = v31;
    v32 = v7[5];
    v72[4] = v7[4];
    v72[5] = v32;
    v72[10] = v22;
    v72[11] = v26;
    v72[8] = v23;
    v72[9] = v19;
    v33 = v8[7];
    v72[14] = v70;
    v72[15] = v33;
    v72[12] = v68;
    v72[13] = v24;
    v73[2] = v58;
    v73[3] = v10;
    v73[0] = v17;
    v73[1] = v16;
    v34 = v7[7];
    v73[6] = v62;
    v73[7] = v34;
    v73[4] = v60;
    v73[5] = v12;
    v35 = sub_2F8B8(v73);
    if (!v35)
    {
      break;
    }

    if (v35 == 1)
    {
      v36 = *sub_2F950(v73);
      sub_5757C(&v64, v48);
      sub_2F8C4(v57);
      v53 = v68;
      v54 = v69;
      v55 = v70;
      v56 = v71;
      v49 = v64;
      v50 = v65;
      v51 = v66;
      v52 = v67;
      if (sub_2F8B8(&v49) != 1)
      {
        goto LABEL_26;
      }

      v37 = *sub_2F950(&v49);
LABEL_13:
      sub_8E80(v72, &qword_31C3F0, &unk_272A40);
      goto LABEL_19;
    }

    v40 = sub_2F950(v73);
    v41 = *v40;
    v42 = *(v40 + 8);
    sub_5757C(&v64, v48);
    sub_2F8C4(v57);
    v53 = v68;
    v54 = v69;
    v55 = v70;
    v56 = v71;
    v49 = v64;
    v50 = v65;
    v51 = v66;
    v52 = v67;
    if (sub_2F8B8(&v49) != 2)
    {
      goto LABEL_26;
    }

    v43 = sub_2F950(&v49);
    v44 = *v43;
    v45 = *(v43 + 8);
    sub_8E80(v72, &qword_31C3F0, &unk_272A40);
    if (v41 != v44 || v42 != v45)
    {
      return 0;
    }

LABEL_20:
    if (!i)
    {
      return 1;
    }

    v8 += 8;
    v7 += 8;
  }

  v38 = sub_2F950(v73);
  v53 = v68;
  v54 = v69;
  v55 = v70;
  v56 = v71;
  v49 = v64;
  v50 = v65;
  v51 = v66;
  v52 = v67;
  if (!sub_2F8B8(&v49))
  {
    v39 = sub_2F950(&v49);
    v36 = *(v38 + 120);
    v37 = *(v39 + 120);
    if (*v38 == *v39 && *(v38 + 8) == *(v39 + 8))
    {
      sub_5757C(&v64, v48);
      sub_5757C(v57, v48);
      goto LABEL_13;
    }

    v46 = sub_264F10();
    sub_5757C(&v64, v48);
    sub_5757C(v57, v48);
    sub_8E80(v72, &qword_31C3F0, &unk_272A40);
    if ((v46 & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    if (v36 != v37)
    {
      return 0;
    }

    goto LABEL_20;
  }

  sub_5757C(&v64, v48);
  sub_5757C(v57, v48);
LABEL_26:
  sub_8E80(v72, &qword_31C3F0, &unk_272A40);
  return 0;
}

uint64_t sub_C887C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_264F10() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_C8914(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_2EF0(&qword_317290, &qword_2697F0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 + 95;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 7);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_C89EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_2EF0(&qword_31C3F8, &unk_272A50);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        sub_2EF0(&qword_31AEE8, &qword_28CD40);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void *sub_C8AE8(void *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = result;
    v5 = result[2];
    if (v5 % a2)
    {
      v6 = v5 / a2 + 1;
    }

    else
    {
      v6 = v5 / a2;
    }

    if (v6)
    {
      v8 = sub_E9C1C(v6, 0);
      v9 = sub_C8BA4(v10, v8 + 4, v6, v4, a2, a3);

      if (v9 == v6)
      {
        return v8;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

void *sub_C8BA4(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 < 0)
  {
    goto LABEL_33;
  }

  v8 = a2;
  v9 = result;
  if (!a2)
  {
LABEL_22:
    v12 = 0;
    v10 = 0;
    v15 = a6;
LABEL_27:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v12;
    v9[4] = v15;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    v15 = a6;
    goto LABEL_27;
  }

  if (a3 < 0)
  {
    goto LABEL_34;
  }

  v11 = 0;
  v12 = *(a4 + 16);
  v13 = 1;
  v18 = a6;
  v14 = a6;
  while (1)
  {
    v15 = v14;
    if (v11 == v12)
    {
      v10 = v13 - 1;
LABEL_26:
      a6 = v18;
      goto LABEL_27;
    }

    v14 = *(a4 + 16);
    if (v11 == v14)
    {
      break;
    }

    if (v14 < v11)
    {
      goto LABEL_29;
    }

    v16 = v14 - v15;
    if (v14 < v15)
    {
      goto LABEL_30;
    }

    if (a5 < 1)
    {
      if (v16 <= 0 && v16 > a5)
      {
        goto LABEL_17;
      }
    }

    else if ((v16 & 0x8000000000000000) == 0 && v16 < a5)
    {
      goto LABEL_17;
    }

    v14 = v15 + a5;
    if (__OFADD__(v15, a5))
    {
      goto LABEL_32;
    }

LABEL_17:
    if (v14 < v15)
    {
      goto LABEL_31;
    }

    *v8 = a4;
    v8[1] = a4 + 32;
    v8[2] = v11;
    v8[3] = (2 * v15) | 1;
    if (v10 == v13)
    {

      v12 = v15;
      v15 = v14;
      goto LABEL_26;
    }

    v8 += 4;

    v11 = v15;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

double sub_C8D20(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = 0.0;
  if (v1 >= 2)
  {
    v3 = a1 + 192 * (v1 & 0x3FFFFFFFFFFFFFELL);
    v4 = *(v3 - 160);
    if ((v4 - 1) < 2)
    {
      v5 = 0.25;
    }

    else
    {
      if ((v4 - 3) >= 2)
      {
        return result;
      }

      v5 = 0.45;
    }

    return *(v3 - 136) * *(v3 - 104) * v5;
  }

  return result;
}

double sub_C8D7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (v1 & 1) == 0;
  result = 0.0;
  v4 = v1 > v2;
  v5 = v1 - v2;
  if (v4)
  {
    v6 = a1 + 192 * v5;
    v7 = *(v6 - 160);
    if ((v7 - 1) < 2)
    {
      v8 = 0.25;
    }

    else
    {
      if ((v7 - 3) >= 2)
      {
        return result;
      }

      v8 = 0.45;
    }

    return *(v6 - 136) * *(v6 - 104) * v8;
  }

  return result;
}

void sub_C8DDC(uint64_t a1, double a2, double a3, double a4)
{
  v7 = a1;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = a1 + 32;
    v11 = _swiftEmptyArrayStorage;
    do
    {
      v12 = (v10 + (v9 << 7));
      v13 = v9;
      while (1)
      {
        if (v13 >= v8)
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v14 = v12[5];
        v106 = v12[4];
        v107 = v14;
        v15 = v12[7];
        v108 = v12[6];
        v109 = v15;
        v16 = v12[1];
        v102 = *v12;
        v103 = v16;
        v17 = v12[3];
        v104 = v12[2];
        v105 = v17;
        v9 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_41;
        }

        v18 = v12[5];
        v115 = v12[4];
        v116 = v18;
        v19 = v12[7];
        v117 = v12[6];
        v118 = v19;
        v20 = v12[1];
        v111 = *v12;
        v112 = v20;
        v21 = v12[3];
        v113 = v12[2];
        v114 = v21;
        v110 = v13;
        if (v13 <= 4)
        {
          break;
        }

        sub_5757C(&v102, &v86);
        sub_8E80(&v110, &qword_31C400, &qword_287460);
        ++v13;
        v12 += 8;
        if (v9 == v8)
        {
          goto LABEL_20;
        }
      }

      v22 = v12[5];
      v98 = v12[4];
      v99 = v22;
      v23 = v12[7];
      v100 = v12[6];
      v101 = v23;
      v24 = v12[1];
      v94 = *v12;
      v95 = v24;
      v25 = v12[3];
      v96 = v12[2];
      v97 = v25;
      v86 = v94;
      v87 = v24;
      v88 = v96;
      v89 = v25;
      v90 = v98;
      v91 = v22;
      v92 = v100;
      v93 = v23;
      v26 = sub_2F8B8(&v86);
      v27 = sub_2F950(&v86);
      if (v26)
      {
        v28 = 1.0;
        if (v26 != 1)
        {
          v28 = 0.641025641;
        }
      }

      else
      {
        v28 = *(v27 + 16);
      }

      v75 = v7;
      v82 = v98;
      v83 = v99;
      v84 = v100;
      v85 = v101;
      v78 = v94;
      v79 = v95;
      v80 = v96;
      v81 = v97;
      sub_5757C(&v102, v77);
      v29 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_E8E6C(0, *(v11 + 2) + 1, 1, v11);
      }

      v31 = *(v11 + 2);
      v30 = *(v11 + 3);
      if (v31 >= v30 >> 1)
      {
        v11 = sub_E8E6C((v30 > 1), v31 + 1, 1, v11);
      }

      *(v11 + 2) = v31 + 1;
      v32 = &v11[192 * v31];
      v32[32] = v13;
      v33 = *&v77[3];
      *(v32 + 33) = *v77;
      *(v32 + 9) = v33;
      *(v32 + 5) = v28;
      *(v32 + 6) = a4;
      *(v32 + 7) = a3;
      *(v32 + 8) = v8;
      *(v32 + 72) = xmmword_2728E0;
      *(v32 + 11) = 0x3FE4834834834834;
      v34 = v78;
      v35 = v79;
      v36 = v81;
      *(v32 + 8) = v80;
      *(v32 + 9) = v36;
      *(v32 + 6) = v34;
      *(v32 + 7) = v35;
      v37 = v82;
      v38 = v83;
      v39 = v85;
      *(v32 + 12) = v84;
      *(v32 + 13) = v39;
      *(v32 + 10) = v37;
      *(v32 + 11) = v38;
      v10 = v29;
      v7 = v75;
    }

    while (v9 != v8);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

LABEL_20:
  v40 = a3 * a4 + sub_C8D20(v11);
  v41 = v40 + sub_C8D7C(v11);
  if (v41 > a2)
  {

    v42 = a2 / v41 * a3;
    if (v8)
    {
      v43 = 0;
      v44 = v7 + 32;
      v45 = _swiftEmptyArrayStorage;
      v46 = 0x3FE4834834834834;
LABEL_23:
      v47 = (v44 + (v43 << 7));
      for (i = v43; i < v8; ++i)
      {
        v49 = v47[5];
        v106 = v47[4];
        v107 = v49;
        v50 = v47[7];
        v108 = v47[6];
        v109 = v50;
        v51 = v47[1];
        v102 = *v47;
        v103 = v51;
        v52 = v47[3];
        v104 = v47[2];
        v105 = v52;
        v43 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_43;
        }

        v53 = v47[5];
        v115 = v47[4];
        v116 = v53;
        v54 = v47[7];
        v117 = v47[6];
        v118 = v54;
        v55 = v47[1];
        v111 = *v47;
        v112 = v55;
        v56 = v47[3];
        v113 = v47[2];
        v114 = v56;
        v110 = i;
        if (i <= 4)
        {
          v57 = v47[5];
          v98 = v47[4];
          v99 = v57;
          v58 = v47[7];
          v100 = v47[6];
          v101 = v58;
          v59 = v47[1];
          v94 = *v47;
          v95 = v59;
          v60 = v47[3];
          v96 = v47[2];
          v97 = v60;
          v86 = v94;
          v87 = v59;
          v88 = v96;
          v89 = v60;
          v90 = v98;
          v91 = v57;
          v92 = v100;
          v93 = v58;
          v61 = sub_2F8B8(&v86);
          v62 = sub_2F950(&v86);
          if (v61)
          {
            v63 = 1.0;
            if (v61 != 1)
            {
              v63 = 0.641025641;
            }
          }

          else
          {
            v63 = *(v62 + 16);
          }

          v76 = v44;
          v82 = v98;
          v83 = v99;
          v84 = v100;
          v85 = v101;
          v78 = v94;
          v79 = v95;
          v80 = v96;
          v81 = v97;
          sub_5757C(&v102, v77);
          v64 = v46;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_E8E6C(0, *(v45 + 2) + 1, 1, v45);
          }

          v66 = *(v45 + 2);
          v65 = *(v45 + 3);
          if (v66 >= v65 >> 1)
          {
            v45 = sub_E8E6C((v65 > 1), v66 + 1, 1, v45);
          }

          *(v45 + 2) = v66 + 1;
          v67 = &v45[192 * v66];
          v67[32] = i;
          v68 = *&v77[3];
          *(v67 + 33) = *v77;
          *(v67 + 9) = v68;
          *(v67 + 5) = v63;
          *(v67 + 6) = a4;
          *(v67 + 7) = v42;
          *(v67 + 8) = v8;
          *(v67 + 72) = xmmword_2728E0;
          v46 = v64;
          *(v67 + 11) = v64;
          v69 = v78;
          v70 = v79;
          v71 = v81;
          *(v67 + 8) = v80;
          *(v67 + 9) = v71;
          *(v67 + 6) = v69;
          *(v67 + 7) = v70;
          v72 = v82;
          v73 = v83;
          v74 = v85;
          *(v67 + 12) = v84;
          *(v67 + 13) = v74;
          *(v67 + 10) = v72;
          *(v67 + 11) = v73;
          v44 = v76;
          if (v43 != v8)
          {
            goto LABEL_23;
          }

          return;
        }

        sub_5757C(&v102, &v86);
        sub_8E80(&v110, &qword_31C400, &qword_287460);
        v47 += 8;
        if (v43 == v8)
        {
          return;
        }
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }
  }
}

unint64_t sub_C93F4()
{
  result = qword_31C390;
  if (!qword_31C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C390);
  }

  return result;
}

unint64_t sub_C944C()
{
  result = qword_31C398;
  if (!qword_31C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C398);
  }

  return result;
}

unint64_t sub_C94A0(uint64_t a1)
{
  result = sub_C94C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_C94C8()
{
  result = qword_31C3E8;
  if (!qword_31C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C3E8);
  }

  return result;
}

uint64_t sub_C951C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_C9564(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_C9620(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

void static ListItemViewModel.perfHacks.getter(void *a1@<X8>)
{
  if (qword_315930 != -1)
  {
    swift_once();
  }

  if (byte_31C408 == 1)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = sub_264420();
    v4 = [v2 integerForKey:v3];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

__n128 ListItemViewModel.init(layout:thumbnailModel:metadataModel:accessoryModel:showOrdinal:assetInfo:cardInfo:origin:)@<Q0>(void *__src@<X2>, char *a2@<X0>, __int128 *a3@<X1>, uint64_t a4@<X3>, char a5@<W4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = a9 + 360;
  *(a9 + 360) = 0u;
  *(a9 + 376) = 0u;
  v16 = *a3;
  *(a9 + 24) = a3[1];
  v17 = a3[3];
  *(a9 + 40) = a3[2];
  *(a9 + 56) = v17;
  v18 = *a2;
  *(a9 + 392) = 0;
  *a9 = v18;
  *(a9 + 72) = *(a3 + 32);
  *(a9 + 8) = v16;
  memcpy((a9 + 80), __src, 0x118uLL);
  sub_82704(a4, v15);
  *(a9 + 400) = a5;
  sub_F7CC(a6, a9 + 408);
  v19 = type metadata accessor for ListItemViewModel(0);
  sub_22148(a7, a9 + *(v19 + 40), &qword_31A480, &qword_273520);
  v20 = a9 + *(v19 + 44);
  v21 = *(a8 + 112);
  *(v20 + 96) = *(a8 + 96);
  *(v20 + 112) = v21;
  *(v20 + 128) = *(a8 + 128);
  *(v20 + 144) = *(a8 + 144);
  v22 = *(a8 + 48);
  *(v20 + 32) = *(a8 + 32);
  *(v20 + 48) = v22;
  v23 = *(a8 + 80);
  *(v20 + 64) = *(a8 + 64);
  *(v20 + 80) = v23;
  result = *a8;
  v25 = *(a8 + 16);
  *v20 = *a8;
  *(v20 + 16) = v25;
  return result;
}

uint64_t sub_C9864()
{
  v1 = 0x656E6961746E6F63;
  if (*v0 != 1)
  {
    v1 = 1819042164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72616C75676572;
  }
}

uint64_t sub_C98BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_CC7EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_C98E4(uint64_t a1)
{
  v2 = sub_CA7C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C9920(uint64_t a1)
{
  v2 = sub_CA7C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_C9968(uint64_t a1)
{
  v2 = sub_CA868();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C99A4(uint64_t a1)
{
  v2 = sub_CA868();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_C9A10(uint64_t a1)
{
  v2 = sub_CA8BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C9A4C(uint64_t a1)
{
  v2 = sub_CA8BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_C9A88(uint64_t a1)
{
  v2 = sub_CA814();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C9AC4(uint64_t a1)
{
  v2 = sub_CA814();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ListItemViewModel.Layout.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = sub_2EF0(&qword_31C410, &qword_272AB0);
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v34 = &v28 - v4;
  v33 = sub_2EF0(&qword_31C418, &qword_272AB8);
  v30 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = &v28 - v5;
  v7 = sub_2EF0(&qword_31C420, &qword_272AC0);
  v29 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = sub_2EF0(&qword_31C428, &qword_272AC8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  sub_2E18(a1, v14);
  sub_CA7C0();
  v15 = v36;
  sub_265120();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_264E00();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_AFAC();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_264C10();
      swift_allocError();
      v24 = v23;
      sub_2EF0(&qword_315CD0, &qword_266E00);
      *v24 = &type metadata for ListItemViewModel.Layout;
      sub_264D60();
      sub_264BF0();
      (*(*(v22 - 8) + 104))(v24, enum case for DecodingError.typeMismatch(_:), v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_CA868();
          sub_264D50();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_CA814();
          v26 = v17;
          sub_264D50();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_CA8BC();
        sub_264D50();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return sub_3080(v37);
}

uint64_t ListItemViewModel.origin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ListItemViewModel(0) + 44);
  v4 = *(v3 + 112);
  v5 = *(v3 + 80);
  v22 = *(v3 + 96);
  v23 = v4;
  v6 = *(v3 + 112);
  v24 = *(v3 + 128);
  v7 = *(v3 + 48);
  v9 = *(v3 + 16);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v10 = *(v3 + 48);
  v11 = *(v3 + 80);
  v20 = *(v3 + 64);
  v12 = v20;
  v21 = v11;
  v13 = *(v3 + 16);
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  *(a1 + 96) = v22;
  *(a1 + 112) = v6;
  *(a1 + 128) = *(v3 + 128);
  *(a1 + 32) = v8;
  *(a1 + 48) = v10;
  *(a1 + 64) = v12;
  *(a1 + 80) = v5;
  v25 = *(v3 + 144);
  *(a1 + 144) = *(v3 + 144);
  *a1 = v14;
  *(a1 + 16) = v9;
  return sub_547C(v17, v16);
}

uint64_t sub_CA2BC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1[54];
  v4 = v1[55];
  sub_2E18(v1 + 51, v3);
  return a1(v3, v4);
}

uint64_t ListItemViewModel.isPurchased.getter()
{
  sub_2E18((v0 + 408), *(v0 + 432));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = sub_264A60();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-1] - v4;
  sub_2606D0();
  v6 = *(AssociatedTypeWitness - 8);
  if ((*(v6 + 48))(v5, 1, AssociatedTypeWitness) == 1)
  {
    (*(v3 + 8))(v5, v2);
    return 2;
  }

  else
  {
    v10[3] = AssociatedTypeWitness;
    v10[4] = swift_getAssociatedConformanceWitness();
    sub_10934(v10);
    (*(v6 + 32))();
    v7 = sub_2607F0() & 1;
    sub_3080(v10);
  }

  return v7;
}

BOOL sub_CA580(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_CA5B0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_CA5DC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void sub_CA6CC(uint64_t a1)
{
  if (sub_260770())
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v2 = sub_264420();
    v3 = [v1 integerForKey:v2];

    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  byte_31C408 = v4;
}

uint64_t type metadata accessor for ListItemViewModel(uint64_t a1)
{
  result = qword_31C4E0;
  if (!qword_31C4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_CA7C0()
{
  result = qword_31C430;
  if (!qword_31C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C430);
  }

  return result;
}

unint64_t sub_CA814()
{
  result = qword_31C438;
  if (!qword_31C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C438);
  }

  return result;
}

unint64_t sub_CA868()
{
  result = qword_31C440;
  if (!qword_31C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C440);
  }

  return result;
}

unint64_t sub_CA8BC()
{
  result = qword_31C448;
  if (!qword_31C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C448);
  }

  return result;
}

void ListItemViewModel.unscaledDividerInset(isCompact:isAX:)(char a1, char a2)
{
  if ((a1 & 1) == 0 || (a2 & 1) == 0)
  {
    ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)();
    ListItemThumbnailViewModel.unscaledTrailingPadding(isCompact:)(a1 & 1);
  }
}

uint64_t ListItemViewModel.actionForListItem()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v153 = a1;
  v156 = type metadata accessor for AssetAction(0);
  __chkstk_darwin(v156);
  v155 = (&v135 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v158 = sub_260560();
  v154 = *(v158 - 8);
  __chkstk_darwin(v158);
  v162 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_260600();
  v151 = *(v5 - 8);
  v152 = v5;
  __chkstk_darwin(v5);
  v157 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316B98, &unk_275840);
  __chkstk_darwin(v7 - 8);
  v138 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v139 = &v135 - v10;
  __chkstk_darwin(v11);
  v137 = &v135 - v12;
  v136 = type metadata accessor for AssetAction.Kind(0);
  __chkstk_darwin(v136);
  v150 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2601E0();
  v141 = *(v14 - 8);
  v142 = v14;
  __chkstk_darwin(v14);
  v140 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2EF0(&qword_31A480, &qword_273520);
  __chkstk_darwin(v16 - 8);
  v135 = &v135 - v17;
  v18 = sub_263DD0();
  __chkstk_darwin(v18 - 8);
  v148 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_263A10();
  v20 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2EF0(&qword_322C70, &qword_272AD0);
  __chkstk_darwin(v22 - 8);
  v24 = &v135 - v23;
  v164 = sub_263AF0();
  v160 = *(v164 - 8);
  __chkstk_darwin(v164);
  v159 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v161 = &v135 - v27;
  v28 = ListItemViewModel.isPurchased.getter();
  sub_2E18((v1 + 408), *(v1 + 432));
  v144 = sub_2606E0();
  v145 = v29;
  LODWORD(v146) = v28;
  v30 = v28 & 1;
  if (v28)
  {
    v31 = 20;
  }

  else
  {
    v31 = 18;
  }

  LODWORD(v143) = v31;
  sub_2EF0(&qword_3160C0, &qword_267D48);
  v32 = swift_allocObject();
  v163 = xmmword_267D30;
  *(v32 + 16) = xmmword_267D30;
  *(v32 + 32) = 0x5050557369;
  *(v32 + 40) = 0xE500000000000000;
  sub_2E18((v1 + 408), *(v1 + 432));
  v33 = sub_260990();
  *(v32 + 72) = &type metadata for Bool;
  *(v32 + 48) = v33 & 1;
  v34 = sub_E678(v32);
  swift_setDeallocating();
  sub_8E80(v32 + 32, &qword_3160C8, &unk_267D50);
  swift_deallocClassInstance();
  v35 = 0;
  v36 = 0;
  if (!v30)
  {
    sub_2E18((v1 + 408), *(v1 + 432));
    sub_2608C0();
    v37 = sub_260060();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v24, 1, v37) == 1)
    {
      sub_8E80(v24, &qword_322C70, &qword_272AD0);
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v35 = sub_260020();
      v36 = v39;
      (*(v38 + 8))(v24, v37);
    }
  }

  sub_30CC(v1 + 408, &v175);
  sub_2E18((v1 + 408), *(v1 + 432));
  v40 = sub_2609A0();
  sub_97050(&v175, v40, v41, 0, v186);
  *(&v176 + 1) = sub_2EF0(&qword_3160D0, &unk_270CF0);
  *&v175 = v34;
  sub_FBD8(&v175, v166);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v165 = &_swiftEmptyDictionarySingleton;
  sub_DC90(v166, 0x65446E6F69746361, 0xED0000736C696174, isUniquelyReferenced_nonNull_native);
  v43 = v165;
  if (v36)
  {
    *(&v176 + 1) = &type metadata for String;
    *&v175 = v35;
    *(&v175 + 1) = v36;
    sub_FBD8(&v175, v166);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v165 = v43;
    sub_DC90(v166, 0x72556E6F69746361, 0xE90000000000006CLL, v44);
    v43 = v165;
  }

  v185 = v143;
  v45 = Metrics.ClickActionType.rawValue.getter();
  *(&v176 + 1) = &type metadata for String;
  *&v175 = v45;
  *(&v175 + 1) = v46;
  sub_FBD8(&v175, v166);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v165 = v43;
  sub_DC90(v166, 0x79546E6F69746361, 0xEA00000000006570, v47);
  v48 = v165;
  sub_2EF0(&qword_317218, &unk_269760);
  v49 = swift_allocObject();
  *(v49 + 16) = v163;
  *(v49 + 32) = sub_1694E0();
  *(&v176 + 1) = sub_2EF0(&qword_319B10, &qword_2777B0);
  *&v175 = v49;
  sub_FBD8(&v175, v166);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v165 = v48;
  sub_DC90(v166, 0x6E6F697461636F6CLL, 0xE800000000000000, v50);
  if (qword_3158E0 != -1)
  {
    swift_once();
  }

  v51 = sub_2639E0();
  sub_B080(v51, qword_353F10);
  v52 = v147;
  sub_2639C0();

  sub_2EF0(&qword_3160D8, &qword_267D60);
  v53 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = v163;
  v55 = v149;
  (*(v20 + 16))(v54 + v53, v52, v149);
  sub_263DC0();
  v56 = v161;
  sub_263AD0();
  sub_98D34(v186);
  (*(v20 + 8))(v52, v55);
  v57 = v162;
  v58 = v159;
  if (v146)
  {
    *&v175 = 0;
    *(&v175 + 1) = 0xE000000000000000;
    sub_264BC0(32);

    *&v175 = 0xD00000000000001ELL;
    *(&v175 + 1) = 0x8000000000291C70;
    sub_2E18((v1 + 408), *(v1 + 432));
    v187._countAndFlagsBits = sub_2606E0();
    sub_264530(v187);

    v149 = *(&v175 + 1);
    *&v163 = v175;
    sub_2E18((v1 + 408), *(v1 + 432));
    v59 = sub_2606E0();
    v147 = v60;
    v148 = v59;
    v61 = type metadata accessor for ListItemViewModel(0);
    v62 = v135;
    sub_8198(v1 + *(v61 + 40), v135, &qword_31A480, &qword_273520);
    v63 = type metadata accessor for CardInfo(0);
    if ((*(*(v63 - 8) + 48))(v62, 1, v63) == 1)
    {
      sub_8E80(v62, &qword_31A480, &qword_273520);
      v145 = 0;
      v146 = 0;
    }

    else
    {
      v100 = *(v63 + 20);
      v101 = v140;
      v102 = v141;
      v103 = v142;
      (*(v141 + 16))(v140, v62 + v100, v142);
      sub_CBE74(v62, type metadata accessor for CardInfo);
      v104 = sub_2601C0();
      v145 = v105;
      v146 = v104;
      (*(v102 + 8))(v101, v103);
    }

    v106 = v160;
    sub_2E18((v2 + 408), *(v2 + 432));
    LODWORD(v144) = sub_260870();
    v143 = *(v106 + 16);
    v107 = v164;
    v143(v58, v56, v164);
    swift_storeEnumTagMultiPayload();
    (*(v151 + 104))(v157, enum case for ClickData.TargetType.navigate(_:), v152);
    v108 = *(v154 + 104);
    LODWORD(v151) = enum case for LinkActionType.click(_:);
    v142 = v108;
    v108(v162);
    v109 = v58;
    v110 = v137;
    sub_260610();
    v111 = sub_260620();
    v112 = *(v111 - 8);
    v113 = *(v112 + 56);
    v154 = v112 + 56;
    v152 = v113;
    v113(v110, 0, 1, v111);
    v114 = v156;
    v115 = v153;
    v153[3] = v156;
    v115[4] = sub_CBDC8(&qword_319B08, type metadata accessor for AssetAction, &protocol conformance descriptor for AssetAction);
    v153 = sub_10934(v115);
    v116 = v155;
    v118 = v148;
    v117 = v149;
    *v155 = v163;
    v116[1] = v117;
    v120 = v146;
    v119 = v147;
    v116[2] = v118;
    v116[3] = v119;
    v121 = v145;
    v116[4] = v120;
    v116[5] = v121;
    *(v116 + 48) = v144 & 1;
    v143(v116 + *(v114 + 32), v109, v107);
    v122 = *(v114 + 40);
    v123 = v150;
    v124 = v116 + v122;
    v125 = v110;
    sub_72428(v150, v124);
    v126 = v110;
    v127 = v138;
    sub_8198(v126, v138, &qword_316B98, &unk_275840);
    v128 = *(v112 + 48);
    if (v128(v127, 1, v111) == 1)
    {
      AssetAction.Kind.appAnalyticsClickTargetType.getter(v157);
      *&v163 = v128;
      v142(v162, v151, v158);
      v129 = v139;
      sub_260610();
      sub_8E80(v125, &qword_316B98, &unk_275840);
      sub_CBE74(v123, type metadata accessor for AssetAction.Kind);
      v130 = *(v160 + 8);
      v131 = v164;
      v130(v159, v164);
      v132 = v131;
      if ((v163)(v127, 1, v111) != 1)
      {
        sub_8E80(v127, &qword_316B98, &unk_275840);
      }
    }

    else
    {
      sub_8E80(v125, &qword_316B98, &unk_275840);
      sub_CBE74(v123, type metadata accessor for AssetAction.Kind);
      v130 = *(v160 + 8);
      v132 = v164;
      v130(v159, v164);
      v133 = v139;
      (*(v112 + 32))(v139, v127, v111);
      v129 = v133;
    }

    v152(v129, 0, 1, v111);
    v134 = v155;
    sub_22148(v129, v155 + *(v156 + 36), &qword_316B98, &unk_275840);
    sub_CBE10(v134, v153);
    return (v130)(v161, v132);
  }

  else
  {
    *&v175 = 0;
    *(&v175 + 1) = 0xE000000000000000;
    sub_264BC0(31);

    *&v175 = 0xD00000000000001DLL;
    *(&v175 + 1) = 0x8000000000291C50;
    sub_2E18((v1 + 408), *(v1 + 432));
    v188._countAndFlagsBits = sub_2606E0();
    sub_264530(v188);

    v159 = *(&v175 + 1);
    *&v163 = v175;
    v64 = type metadata accessor for FlowAction(0);
    v65 = v153;
    v153[3] = v64;
    v65[4] = sub_CBDC8(&qword_31C450, type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
    v66 = sub_10934(v65);
    v67 = v160;
    (*(v160 + 16))(v66 + v64[5], v56, v164);
    v68 = v64[6];
    (*(v151 + 104))(v157, enum case for ClickData.TargetType.navigate(_:), v152);
    (*(v154 + 104))(v57, enum case for LinkActionType.click(_:), v158);
    sub_260610();
    v69 = sub_260620();
    (*(*(v69 - 8) + 56))(v66 + v68, 0, 1, v69);
    v70 = v56;
    sub_2E18((v2 + 408), *(v2 + 432));
    v71 = sub_2606E0();
    v72 = (v66 + v64[7]);
    v72[3] = &type metadata for FlowAction.NewCardSetDestination;
    v72[4] = &protocol witness table for FlowAction.NewCardSetDestination;
    *v72 = v71;
    v72[1] = v73;
    v74 = v2 + *(type metadata accessor for ListItemViewModel(0) + 44);
    v75 = *(v74 + 112);
    v76 = *(v74 + 80);
    v171 = *(v74 + 96);
    v172 = v75;
    v77 = *(v74 + 112);
    v173 = *(v74 + 128);
    v78 = *(v74 + 48);
    v79 = *(v74 + 16);
    v167 = *(v74 + 32);
    v168 = v78;
    v80 = *(v74 + 48);
    v81 = *(v74 + 80);
    v169 = *(v74 + 64);
    v170 = v81;
    v82 = *(v74 + 16);
    v166[0] = *v74;
    v166[1] = v82;
    v181 = v171;
    v182 = v77;
    v183 = *(v74 + 128);
    v177 = v167;
    v178 = v80;
    v179 = v169;
    v180 = v76;
    v174 = *(v74 + 144);
    v184 = *(v74 + 144);
    v175 = v166[0];
    v176 = v79;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_547C(v166, &v165);
    v83 = v140;
    sub_2601D0();
    v84 = sub_2601C0();
    v86 = v85;
    (*(v141 + 8))(v83, v142);
    *v66 = v84;
    v66[1] = v86;
    v87 = v64[11];
    *(v66 + v87) = 0;

    v88 = v159;
    *v66 = v163;
    v66[1] = v88;
    v89 = v66 + v64[8];
    v90 = v176;
    *v89 = v175;
    *(v89 + 1) = v90;
    v91 = v177;
    v92 = v178;
    v93 = v180;
    *(v89 + 4) = v179;
    *(v89 + 5) = v93;
    *(v89 + 2) = v91;
    *(v89 + 3) = v92;
    v94 = v181;
    v95 = v182;
    v96 = v183;
    v89[144] = v184;
    *(v89 + 7) = v95;
    *(v89 + 8) = v96;
    *(v89 + 6) = v94;
    v97 = (v66 + v64[9]);
    *v97 = 0;
    v97[1] = 0;
    v98 = v66 + v64[10];
    strcpy(v98, "cardsPresent");
    v98[13] = 0;
    *(v98 + 7) = -5120;
    *(v66 + v87) = 0;
    return (*(v67 + 8))(v70, v164);
  }
}

uint64_t sub_CBDC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_CBE10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_CBE74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_CBED8()
{
  result = qword_31C458;
  if (!qword_31C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C458);
  }

  return result;
}

unint64_t sub_CBF2C(uint64_t a1)
{
  result = sub_CBF54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_CBF54()
{
  result = qword_31C460;
  if (!qword_31C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C460);
  }

  return result;
}

unint64_t sub_CBFAC()
{
  result = qword_31C468;
  if (!qword_31C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C468);
  }

  return result;
}

unint64_t sub_CC004()
{
  result = qword_31C470;
  if (!qword_31C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C470);
  }

  return result;
}

unint64_t sub_CC05C()
{
  result = qword_31C478;
  if (!qword_31C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C478);
  }

  return result;
}

unint64_t sub_CC0B4()
{
  result = qword_31C480;
  if (!qword_31C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C480);
  }

  return result;
}

uint64_t sub_CC11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 432);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2EF0(&qword_31A480, &qword_273520);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_CC1EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 432) = (a2 - 1);
  }

  else
  {
    v7 = sub_2EF0(&qword_31A480, &qword_273520);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_CC29C(uint64_t a1)
{
  sub_CC370(319);
  if (v1 <= 0x3F)
  {
    sub_44744();
    if (v2 <= 0x3F)
    {
      sub_CC3D4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_CC370(uint64_t a1)
{
  if (!qword_31C4F0)
  {
    sub_2F9C(&qword_31C4F8, &qword_272D68);
    v1 = sub_264A60();
    if (!v2)
    {
      atomic_store(v1, &qword_31C4F0);
    }
  }
}

void sub_CC3D4(uint64_t a1)
{
  if (!qword_31C500)
  {
    type metadata accessor for CardInfo(255);
    v1 = sub_264A60();
    if (!v2)
    {
      atomic_store(v1, &qword_31C500);
    }
  }
}

uint64_t getEnumTagSinglePayload for ListItemViewModel.PerfHacks(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ListItemViewModel.PerfHacks(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_CC4D8()
{
  result = qword_31C548;
  if (!qword_31C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C548);
  }

  return result;
}

unint64_t sub_CC530()
{
  result = qword_31C550;
  if (!qword_31C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C550);
  }

  return result;
}

unint64_t sub_CC588()
{
  result = qword_31C558;
  if (!qword_31C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C558);
  }

  return result;
}

unint64_t sub_CC5E0()
{
  result = qword_31C560;
  if (!qword_31C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C560);
  }

  return result;
}

unint64_t sub_CC638()
{
  result = qword_31C568;
  if (!qword_31C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C568);
  }

  return result;
}

unint64_t sub_CC690()
{
  result = qword_31C570;
  if (!qword_31C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C570);
  }

  return result;
}

unint64_t sub_CC6E8()
{
  result = qword_31C578;
  if (!qword_31C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C578);
  }

  return result;
}

unint64_t sub_CC740()
{
  result = qword_31C580;
  if (!qword_31C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C580);
  }

  return result;
}

unint64_t sub_CC798()
{
  result = qword_31C588;
  if (!qword_31C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C588);
  }

  return result;
}

uint64_t sub_CC7EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72616C75676572 && a2 == 0xE700000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xE900000000000064 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1819042164 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t PageUpdateAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_263AF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BooksAlertAction.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for BooksAlertAction(0) + 20));

  return v1;
}

uint64_t BooksAlertAction.message.getter()
{
  v1 = *(v0 + *(type metadata accessor for BooksAlertAction(0) + 24));

  return v1;
}

uint64_t BooksAlertAction.buttons.getter()
{
  type metadata accessor for BooksAlertAction(0);
}

uint64_t BooksAlertAction.dialogData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BooksAlertAction(0) + 32);
  v4 = sub_260470();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BooksAlertAction.actionOrigin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BooksAlertAction(0) + 36);
  v4 = *(v3 + 112);
  v5 = *(v3 + 80);
  v22 = *(v3 + 96);
  v23 = v4;
  v6 = *(v3 + 112);
  v24 = *(v3 + 128);
  v7 = *(v3 + 48);
  v9 = *(v3 + 16);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v10 = *(v3 + 48);
  v11 = *(v3 + 80);
  v20 = *(v3 + 64);
  v12 = v20;
  v21 = v11;
  v13 = *(v3 + 16);
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  *(a1 + 96) = v22;
  *(a1 + 112) = v6;
  *(a1 + 128) = *(v3 + 128);
  *(a1 + 32) = v8;
  *(a1 + 48) = v10;
  *(a1 + 64) = v12;
  *(a1 + 80) = v5;
  v25 = *(v3 + 144);
  *(a1 + 144) = *(v3 + 144);
  *a1 = v14;
  *(a1 + 16) = v9;
  return sub_547C(v17, v16);
}

double BooksAlertAction.init(actionMetrics:title:message:buttons:dialogType:actionOrigin:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  v38 = a5;
  v39 = a6;
  v37 = a4;
  v36 = a3;
  v14 = sub_260480();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a8[7];
  v46 = a8[6];
  v47 = v18;
  v48 = a8[8];
  v49 = *(a8 + 144);
  v19 = a8[3];
  v42 = a8[2];
  v43 = v19;
  v20 = a8[5];
  v44 = a8[4];
  v45 = v20;
  v21 = a8[1];
  v40 = *a8;
  v41 = v21;
  v22 = sub_263AF0();
  v23 = *(v22 - 8);
  (*(v23 + 16))(a9, a1, v22);
  v24 = type metadata accessor for BooksAlertAction(0);
  v25 = (a9 + v24[5]);
  v26 = v36;
  *v25 = a2;
  v25[1] = v26;
  v27 = (a9 + v24[6]);
  v29 = v38;
  v28 = v39;
  *v27 = v37;
  v27[1] = v29;
  *(a9 + v24[7]) = v28;
  (*(v15 + 16))(v17, a7, v14);
  sub_260460();
  (*(v15 + 8))(a7, v14);
  (*(v23 + 8))(a1, v22);
  v30 = a9 + v24[9];
  v31 = v47;
  *(v30 + 96) = v46;
  *(v30 + 112) = v31;
  *(v30 + 128) = v48;
  *(v30 + 144) = v49;
  v32 = v43;
  *(v30 + 32) = v42;
  *(v30 + 48) = v32;
  v33 = v45;
  *(v30 + 64) = v44;
  *(v30 + 80) = v33;
  result = *&v40;
  v35 = v41;
  *v30 = v40;
  *(v30 + 16) = v35;
  return result;
}

uint64_t sub_CCDBC()
{
  v1 = *v0;
  v2 = 0x654D6E6F69746361;
  v3 = 0x736E6F74747562;
  v4 = 0x6144676F6C616964;
  if (v1 != 4)
  {
    v4 = 0x724F6E6F69746361;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x6567617373656DLL;
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

uint64_t sub_CCE8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_CEDA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_CCEC0(uint64_t a1)
{
  v2 = sub_CD680();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CCEFC(uint64_t a1)
{
  v2 = sub_CD680();

  return CodingKey.debugDescription.getter(a1, v2);
}

void BooksAlertAction.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v32 = sub_260470();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_263AF0();
  v33 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2EF0(&qword_31C590, &qword_2730F0);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = &v29 - v7;
  v9 = type metadata accessor for BooksAlertAction(0);
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2E18(a1, a1[3]);
  sub_CD680();
  v36 = v8;
  v12 = v38;
  sub_265120();
  if (v12)
  {
    sub_3080(a1);
  }

  else
  {
    v13 = v4;
    v38 = v9;
    LOBYTE(v39) = 0;
    sub_CD788(&qword_31C5A0, &type metadata accessor for ActionMetrics, &protocol conformance descriptor for ActionMetrics);
    v14 = v34;
    sub_264DF0();
    (*(v33 + 32))(v11, v14, v5);
    LOBYTE(v39) = 1;
    v15 = sub_264D70();
    v16 = v38;
    v17 = &v11[v38[5]];
    *v17 = v15;
    v17[1] = v18;
    LOBYTE(v39) = 2;
    v34 = 0;
    v19 = sub_264D70();
    v20 = v35;
    v21 = &v11[v16[6]];
    *v21 = v19;
    v21[1] = v22;
    sub_2EF0(&qword_31C5A8, &unk_2730F8);
    v49 = 3;
    sub_CD6D4();
    sub_264DF0();
    *&v11[v16[7]] = v39;
    LOBYTE(v39) = 4;
    sub_CD788(&qword_31C5C0, &type metadata accessor for DialogData, &protocol conformance descriptor for DialogData);
    v23 = v32;
    sub_264DF0();
    (*(v31 + 32))(&v11[v16[8]], v13, v23);
    v49 = 5;
    sub_CD7F0();
    sub_264DF0();
    (*(v20 + 8))(v36, v37);
    v24 = &v11[v16[9]];
    v25 = v46;
    *(v24 + 6) = v45;
    *(v24 + 7) = v25;
    *(v24 + 8) = v47;
    v24[144] = v48;
    v26 = v42;
    *(v24 + 2) = v41;
    *(v24 + 3) = v26;
    v27 = v44;
    *(v24 + 4) = v43;
    *(v24 + 5) = v27;
    v28 = v40;
    *v24 = v39;
    *(v24 + 1) = v28;
    sub_CE0A0(v11, v30, type metadata accessor for BooksAlertAction);
    sub_3080(a1);
    sub_CE108(v11, type metadata accessor for BooksAlertAction);
  }
}

unint64_t sub_CD680()
{
  result = qword_31C598;
  if (!qword_31C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C598);
  }

  return result;
}

unint64_t sub_CD6D4()
{
  result = qword_31C5B0;
  if (!qword_31C5B0)
  {
    sub_2F9C(&qword_31C5A8, &unk_2730F8);
    sub_CD788(&qword_31C5B8, type metadata accessor for BooksAlertAction.Button, &protocol conformance descriptor for BooksAlertAction.Button);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C5B0);
  }

  return result;
}

uint64_t sub_CD788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_CD7F0()
{
  result = qword_31C5C8;
  if (!qword_31C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C5C8);
  }

  return result;
}

double BooksAlertAction.Button.action.getter@<D0>(uint64_t a1@<X8>)
{
  sub_811F0(v1 + 32, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t BooksAlertAction.Button.dialogActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BooksAlertAction.Button(0) + 28);
  v4 = sub_260590();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BooksAlertAction.Button.init(title:role:action:dialogActionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0;
  *(a7 + 32) = 0u;
  v14 = (a7 + 32);
  sub_3F990(v17, a7 + 32);
  *a7 = a1;
  *(a7 + 8) = a2;
  sub_3FA0C(a5, v17);
  sub_3FC70(v14);
  *v14 = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0;
  sub_3F990(v17, v14);
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  sub_2605A0();
  type metadata accessor for BooksAlertAction.Button(0);
  sub_260580();
  v15 = sub_2605B0();
  (*(*(v15 - 8) + 8))(a6, v15);
  return sub_CDA48(a5);
}

uint64_t sub_CDA48(uint64_t a1)
{
  v2 = sub_2EF0(&qword_315D38, &unk_266E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_CDAB0()
{
  v1 = 0x656C746974;
  v2 = 0x6E6F69746361;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 1701605234;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_CDB20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_CEFAC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_CDB54(uint64_t a1)
{
  v2 = sub_CDFF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CDB90(uint64_t a1)
{
  v2 = sub_CDFF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BooksAlertAction.Button.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = sub_260590();
  v17 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2EF0(&qword_31C5D0, &qword_273108);
  v19 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = v16 - v5;
  v7 = type metadata accessor for BooksAlertAction.Button(0);
  __chkstk_darwin(v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 2) = 0u;
  v10 = (v9 + 32);
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  *(v9 + 3) = 0u;
  *(v9 + 8) = 0;
  sub_3F990(v24, (v9 + 32));
  sub_2E18(a1, a1[3]);
  sub_CDFF8();
  v21 = v6;
  v11 = v23;
  sub_265120();
  if (v11)
  {
    sub_3080(a1);
    return sub_3FC70(v10);
  }

  else
  {
    v23 = v7;
    v12 = v19;
    v13 = v20;
    LOBYTE(v24[0]) = 0;
    *v9 = sub_264DC0();
    *(v9 + 1) = v14;
    v16[2] = v14;
    v26 = 1;
    sub_CE04C();
    sub_264DB0();
    *(v9 + 1) = v24[0];
    v26 = 2;
    sub_8127C();
    v16[1] = 0;
    sub_264DF0();
    sub_812D0(v24, v10);
    LOBYTE(v24[0]) = 3;
    sub_CD788(&qword_31C5E8, &type metadata accessor for DialogActionData, &protocol conformance descriptor for DialogActionData);
    sub_264DF0();
    (*(v12 + 8))(v21, v22);
    (*(v17 + 32))(&v9[*(v23 + 28)], v4, v13);
    sub_CE0A0(v9, v18, type metadata accessor for BooksAlertAction.Button);
    sub_3080(a1);
    return sub_CE108(v9, type metadata accessor for BooksAlertAction.Button);
  }
}

unint64_t sub_CDFF8()
{
  result = qword_31C5D8;
  if (!qword_31C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C5D8);
  }

  return result;
}

unint64_t sub_CE04C()
{
  result = qword_31C5E0;
  if (!qword_31C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C5E0);
  }

  return result;
}

uint64_t sub_CE0A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_CE108(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_CE1E8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

unint64_t sub_CE1F8()
{
  result = qword_31C5F0;
  if (!qword_31C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C5F0);
  }

  return result;
}

Swift::Int sub_CE24C()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

Swift::Int sub_CE2A0(uint64_t a1)
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

double sub_CE348@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_811F0(a1 + 32, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_CE3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_263AF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_260470();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_CE4E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_263AF0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  else
  {
    v11 = sub_260470();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_CE608(uint64_t a1)
{
  sub_263AF0();
  if (v1 <= 0x3F)
  {
    sub_CE950(319, &qword_316CB8, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_CE6D4(319);
      if (v3 <= 0x3F)
      {
        sub_260470();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_CE6D4(uint64_t a1)
{
  if (!qword_31C660)
  {
    type metadata accessor for BooksAlertAction.Button(255);
    v1 = sub_2646F0();
    if (!v2)
    {
      atomic_store(v1, &qword_31C660);
    }
  }
}

uint64_t sub_CE740(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_260590();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_CE800(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_260590();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_CE8A4(uint64_t a1)
{
  sub_CE950(319, &unk_31C708, &type metadata for BooksAlertAction.ButtonRole);
  if (v1 <= 0x3F)
  {
    sub_260590();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_CE950(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_264A60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_CE99C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_CE9E4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for LibraryAssetState.Ownership(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryAssetState.Ownership(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_CEB94()
{
  result = qword_31C740;
  if (!qword_31C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C740);
  }

  return result;
}

unint64_t sub_CEBEC()
{
  result = qword_31C748;
  if (!qword_31C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C748);
  }

  return result;
}

unint64_t sub_CEC44()
{
  result = qword_31C750;
  if (!qword_31C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C750);
  }

  return result;
}

unint64_t sub_CEC9C()
{
  result = qword_31C758;
  if (!qword_31C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C758);
  }

  return result;
}

unint64_t sub_CECF4()
{
  result = qword_31C760;
  if (!qword_31C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C760);
  }

  return result;
}

unint64_t sub_CED4C()
{
  result = qword_31C768;
  if (!qword_31C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C768);
  }

  return result;
}

uint64_t sub_CEDA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F74747562 && a2 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6144676F6C616964 && a2 == 0xEA00000000006174 || (sub_264F10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x724F6E6F69746361 && a2 == 0xEC0000006E696769)
  {

    return 5;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_CEFAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000291C90 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_CF110(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_315D38, &unk_266E30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_CF180()
{
  result = qword_31C770;
  if (!qword_31C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C770);
  }

  return result;
}

uint64_t SeriesQuickActionButtonViewModel.init(style:seriesInfo:seriesData:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_D0984(a1, a4, type metadata accessor for SeriesQuickActionButtonViewModel.Style);
  v7 = type metadata accessor for SeriesQuickActionButtonViewModel(0);
  v8 = *(v7 + 20);
  v9 = sub_2604A0();
  (*(*(v9 - 8) + 32))(a4 + v8, a3, v9);
  v10 = a4 + *(v7 + 24);

  return sub_F7CC(a2, v10);
}

uint64_t static SeriesQuickActionButtonViewModel.actionModelForOpenProductPage(for:cardInfo:seriesTitle:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *(&v56 + 1) = a4;
  *&v56 = a3;
  v59 = a2;
  v54 = a1;
  v6 = sub_263AF0();
  __chkstk_darwin(v6 - 8);
  v58 = sub_2601E0();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_260560();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_260600();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2EF0(&qword_31A480, &qword_273520);
  __chkstk_darwin(v12 - 8);
  v14 = &v49 - v13;
  v15 = type metadata accessor for CardInfo(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8198(v59, v14, &qword_31A480, &qword_273520);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_8E80(v14, &qword_31A480, &qword_273520);
    sub_263AC0();
    a5[3] = sub_263890();
    a5[4] = &protocol witness table for EmptyAction;
    sub_10934(a5);
    return sub_263880();
  }

  else
  {
    sub_D0984(v14, v18, type metadata accessor for CardInfo);
    sub_2E18(v54, v54[3]);
    v20 = sub_2606E0();
    v22 = v21;
    v23 = type metadata accessor for FlowAction(0);
    a5[3] = v23;
    a5[4] = sub_D09EC(v24);
    v25 = sub_10934(a5);
    sub_263AC0();
    v26 = v23[6];
    (*(v50 + 104))(v11, enum case for ClickData.TargetType.navigate(_:), v51);
    (*(v53 + 104))(v52, enum case for LinkActionType.click(_:), v55);
    sub_260610();
    v27 = sub_260620();
    (*(*(v27 - 8) + 56))(v25 + v26, 0, 1, v27);
    v28 = (v25 + v23[7]);
    v28[3] = type metadata accessor for FlowAction.NewSingleCardDestination(0);
    v28[4] = &protocol witness table for FlowAction.NewSingleCardDestination;
    v29 = sub_10934(v28);
    sub_D0A44(v18, v29);
    v60 = xmmword_273500;
    v61 = v56;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    *&v68 = v20;
    *(&v68 + 1) = v22;
    v69 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    sub_2601D0();
    v30 = sub_2601C0();
    v32 = v31;
    v33 = *(v57 + 8);
    v34 = v58;
    v33(v8, v58);
    *v25 = v30;
    v25[1] = v32;
    v35 = v23[11];
    *(v25 + v35) = 0;
    sub_2601D0();
    v36 = sub_2601C0();
    v38 = v37;
    v33(v8, v34);

    *v25 = v36;
    v25[1] = v38;
    v39 = v25 + v23[8];
    v40 = v61;
    *v39 = v60;
    *(v39 + 1) = v40;
    v41 = v62;
    v42 = v63;
    v43 = v65;
    *(v39 + 4) = v64;
    *(v39 + 5) = v43;
    *(v39 + 2) = v41;
    *(v39 + 3) = v42;
    v44 = v66;
    v45 = v67;
    v46 = v68;
    v39[144] = v69;
    *(v39 + 7) = v45;
    *(v39 + 8) = v46;
    *(v39 + 6) = v44;
    v47 = (v25 + v23[9]);
    *v47 = 0;
    v47[1] = 0;
    v48 = v25 + v23[10];
    strcpy(v48, "cardsPresent");
    v48[13] = 0;
    *(v48 + 7) = -5120;
    *(v25 + v35) = 0;
    return sub_D0AA8(v18);
  }
}

uint64_t static SeriesQuickActionButtonViewModel.impressionMetricsForSamples(for:in:with:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_263DD0();
  __chkstk_darwin(v10 - 8);
  v11 = sub_2601E0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_263E10();
  __chkstk_darwin(v15 - 8);
  if (*(a2 + 8) && *(a2 + 16) == 5)
  {
    v37 = a3;
    v38 = a4;
    v32 = v12;
    v33 = v11;
    v39 = a5;
    v16 = 0xE90000000000006BLL;
    v17 = 0x6F6F626F69647561;
    sub_2E18(a1, a1[3]);
    v35 = sub_2609B0();
    v34 = v18;
    sub_2E18(a1, a1[3]);
    v36 = sub_2606E0();
    v20 = v19;
    sub_2E18(a1, a1[3]);
    sub_260860();
    v21 = sub_2609D0();
    v23 = v22;
    if (v21 == sub_2609D0() && v23 == v24)
    {
    }

    else
    {
      v28 = sub_264F10();

      if ((v28 & 1) == 0)
      {
        v17 = 0x6B6F6F6265;
        v16 = 0xE500000000000000;
      }
    }

    v41[0] = v35;
    v41[1] = v34;
    v41[2] = v36;
    v41[3] = v20;
    v41[4] = 0x64695F737469;
    v41[5] = 0xE600000000000000;
    v42 = xmmword_273510;
    v43 = 0xE700000000000000;
    v44 = v17;
    v45 = v16;
    v46 = v37;
    v47 = v38;
    v50 = 0u;
    v48 = 0u;
    v49 = 0u;
    v51 = 0u;

    sub_8198(&v51, v40, &qword_31C778, &qword_273528);
    if (!v20)
    {
      sub_2601D0();
      sub_2601C0();
      (*(v32 + 8))(v14, v33);
    }

    sub_263E00();
    sub_169820();
    sub_263DC0();
    sub_D0B04(_swiftEmptyArrayStorage);
    sub_D0B04(_swiftEmptyArrayStorage);
    v29 = v39;
    sub_263E20();
    sub_D0C34(v41);
    v30 = sub_263E50();
    return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  }

  else
  {
    v25 = sub_263E50();
    v26 = *(*(v25 - 8) + 56);

    return v26(a5, 1, 1, v25);
  }
}

uint64_t static SeriesQuickActionButtonViewModel.preheader(for:seriesOrdering:isAudiobook:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v59 = a1;
  v60 = a2;
  v69 = a4;
  v4 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v58 - v8;
  v63 = sub_260BD0();
  v65 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = &v58 - v12;
  v13 = sub_264010();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_263FA0();
  v17 = *(v64 - 8);
  __chkstk_darwin(v64);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2607D0();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, v62, v20, v22);
  v25 = (*(v21 + 88))(v24, v20);
  v26 = v25 == enum case for SeriesOrdering.notAvailable(_:) || v25 == enum case for SeriesOrdering.nonSeries(_:);
  v66 = v6;
  v67 = v9;
  if (v26)
  {
    goto LABEL_8;
  }

  v62 = v17;
  if (v25 == enum case for SeriesOrdering.orderedSeries(_:))
  {
    v27 = swift_allocObject();
    *(v27 + 16) = v59;
    *(v27 + 24) = v60;

    sub_260B70();

    sub_263F90();
    LODWORD(v60) = enum case for LocalizerLookupStrategy.default(_:);
    v28 = v65;
    v29 = *(v14 + 104);
    v29(v16);
    sub_260B80();
    v59 = *(v14 + 8);
    v59(v16, v13);
    v62 = *(v62 + 8);
    v30 = v64;
    (v62)(v19, v64);
    v58 = "on.NextInSeries";
    sub_263F90();
    (v29)(v16, v60, v13);
    v31 = v66;
    v32 = v67;
    v33 = v61;
    sub_260B80();
    v59(v16, v13);
    v34 = v19;
    v35 = v31;
    (v62)(v34, v30);
    v36 = *(v28 + 32);
    v37 = v63;
    v36(v32, v68, v63);
    v38 = *(v28 + 56);
    v38(v32, 0, 1, v37);
    v36(v31, v33, v37);
    v39 = v37;
    v38(v31, 0, 1, v37);
    v40 = type metadata accessor for ShrinkableText(0);
    v41 = v69;
    v42 = v69 + *(v40 + 20);
    v38(v42, 1, 1, v39);
    v43 = v41 + *(v40 + 24);
    v38(v43, 1, 1, v39);
LABEL_9:
    sub_D0CC8(v32, v42);
    return sub_D0CC8(v35, v43);
  }

  v17 = v62;
  if (v25 == enum case for SeriesOrdering.unorderedSeries(_:))
  {
LABEL_8:
    sub_263F90();
    v44 = enum case for LocalizerLookupStrategy.default(_:);
    v62 = *(v14 + 104);
    (v62)(v16, enum case for LocalizerLookupStrategy.default(_:), v13);
    sub_260B80();
    v45 = *(v14 + 8);
    v59 = (v14 + 8);
    v61 = v45;
    (v45)(v16, v13);
    v60 = *(v17 + 8);
    v46 = v64;
    v60(v19, v64);
    v47 = v13;
    v48 = v65;
    v49 = v63;
    sub_263F90();
    (v62)(v16, v44, v47);
    v51 = v66;
    v50 = v67;
    v52 = v68;
    sub_260B80();
    (v61)(v16, v47);
    v53 = v19;
    v35 = v51;
    v32 = v50;
    v60(v53, v46);
    (*(v48 + 32))(v50, v52, v49);
    v54 = *(v48 + 56);
    v54(v50, 0, 1, v49);
    v54(v35, 1, 1, v49);
    v55 = type metadata accessor for ShrinkableText(0);
    v56 = v69;
    v42 = v69 + *(v55 + 20);
    v54(v42, 1, 1, v49);
    v43 = v56 + *(v55 + 24);
    v54(v43, 1, 1, v49);
    goto LABEL_9;
  }

  result = sub_264CD0();
  __break(1u);
  return result;
}

uint64_t sub_D064C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316220, &unk_273570);
  __chkstk_darwin(v6 - 8);
  v8 = v22 - v7;
  v9 = sub_263FA0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v13 = a1[3];
    v22[3] = a1[4];
    v14 = sub_2E18(a1, v13);
    v22[1] = "fo exposureData ";
    v22[2] = v14;
    sub_2EF0(&qword_31ACF0, &unk_26FF60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_267D30;
    strcpy((inited + 32), "sequenceLabel");
    *(inited + 46) = -4864;
    v22[4] = a2;
    v22[5] = a3;
    sub_2E18(a1, a1[3]);
    sub_2641F0();
    v16 = sub_260290();
    (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
    sub_10A84();
    v17 = sub_264A90();
    v19 = v18;
    sub_8E80(v8, &qword_316220, &unk_273570);
    *(inited + 48) = v17;
    *(inited + 56) = v19;
    sub_F13C(inited);
    swift_setDeallocating();
    sub_8E80(inited + 32, &qword_31ACF8, &qword_273580);
    sub_263F90();
    v20 = sub_264250();
  }

  else
  {
    sub_2E18(a1, a1[3]);
    sub_263F90();
    v20 = sub_264240();
  }

  (*(v10 + 8))(v12, v9);
  return v20;
}

uint64_t sub_D0984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_D09EC(__n128 a1)
{
  result = qword_31C450;
  if (!qword_31C450)
  {
    type metadata accessor for FlowAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C450);
  }

  return result;
}

uint64_t sub_D0A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D0AA8(uint64_t a1)
{
  v2 = type metadata accessor for CardInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_D0B04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2EF0(&qword_3161F8, &qword_267FC8);
    v3 = sub_264D10();
    v4 = a1 + 32;

    while (1)
    {
      sub_8198(v4, &v13, &qword_3160C8, &unk_267D50);
      v5 = v13;
      v6 = v14;
      result = sub_D410(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_FBD8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_D0C88()
{

  return swift_deallocObject();
}

uint64_t sub_D0CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316208, &qword_268BD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_D0D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SeriesQuickActionButtonViewModel.Style(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2604A0();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_D0E70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SeriesQuickActionButtonViewModel.Style(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2604A0();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_D0F7C(uint64_t a1)
{
  result = type metadata accessor for SeriesQuickActionButtonViewModel.Style(319);
  if (v2 <= 0x3F)
  {
    result = sub_2604A0();
    if (v3 <= 0x3F)
    {
      result = sub_D1174(319, &qword_31C7E8, &protocol descriptor for SeriesInfo);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_D1028(uint64_t a1)
{
  sub_D1174(319, &qword_31C7E8, &protocol descriptor for SeriesInfo);
  if (v1 <= 0x3F)
  {
    sub_D10D0(319);
    if (v2 <= 0x3F)
    {
      sub_D1174(319, &qword_3180B0, &protocol descriptor for AssetInfo);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_D10D0(uint64_t a1)
{
  if (!qword_31C8A0)
  {
    sub_2F9C(&qword_31AEE8, &qword_28CD40);
    sub_2F9C(&qword_31A480, &qword_273520);
    sub_2605E0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_31C8A0);
    }
  }
}

uint64_t sub_D1174(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_D11D0(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_3002F8;
  v7._object = a2;
  v4 = sub_264D40(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_D1224(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_D1244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D12B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D1324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D1394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D1404@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_D11D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_D1444@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D1224(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_D1498@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_D11D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_D14D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_448FC();
  *a1 = result;
  return result;
}

uint64_t sub_D1508(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_D155C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t PageUpdateInstruction<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v59 = a7;
  *&v76 = a2;
  *(&v76 + 1) = a3;
  v77 = a4;
  v78 = a5;
  v63 = a6;
  v79 = a6;
  _s10CodingKeysOMa_2(255, &v76);
  swift_getWitnessTable();
  v64 = sub_264E20();
  v61 = *(v64 - 8);
  __chkstk_darwin(v64);
  v13 = &v54 - v12;
  *&v76 = a2;
  *(&v76 + 1) = a3;
  v62 = a3;
  v57 = a4;
  v77 = a4;
  v78 = a5;
  v58 = a5;
  updated = type metadata accessor for PageUpdateInstruction(0, &v76);
  v60 = *(updated - 8);
  __chkstk_darwin(updated);
  v16 = (&v54 - v15);
  v17 = a1[3];
  v65 = a1;
  sub_2E18(a1, v17);
  v18 = v66;
  sub_265120();
  if (!v18)
  {
    v20 = v62;
    v19 = v63;
    v56 = v16;
    v66 = updated;
    LOBYTE(v76) = 0;
    v21 = v64;
    v22 = v13;
    v24 = sub_264DC0();
    v25 = v23;
    if (v24 == 0x506563616C706572 && v23 == 0xEB00000000656761)
    {

      v28 = v60;
      goto LABEL_9;
    }

    v27 = sub_264F10();
    v28 = v60;
    if (v27)
    {

LABEL_9:
      type metadata accessor for CodeAnyIntentModel(0, a2, v29, v30);
      LOBYTE(v74) = 1;
      swift_getWitnessTable();
      sub_264DF0();
      (*(v61 + 8))(v22, v21);
      v33 = v56;
      sub_F7CC(&v76, v56);
      v34 = v66;
LABEL_12:
      swift_storeEnumTagMultiPayload();
      v35 = v65;
      v36 = v59;
LABEL_23:
      (*(v28 + 32))(v36, v33, v34);
      v31 = v35;
      return sub_3080(v31);
    }

    if (v24 == 0x6853646E65707061 && v25 == 0xED00007365766C65)
    {

      v39 = v19;
      goto LABEL_20;
    }

    v38 = v24;
    v39 = v19;
    if (sub_264F10())
    {

LABEL_20:
      sub_2646F0();
      LOBYTE(v74) = 1;
      v67 = v39;
      swift_getWitnessTable();
      sub_264DF0();
      v35 = v65;
      v40 = v59;
      (*(v61 + 8))(v22, v21);
      v33 = v56;
      *v56 = v76;
      v34 = v66;
LABEL_21:
      swift_storeEnumTagMultiPayload();
      v36 = v40;
LABEL_22:
      v28 = v60;
      goto LABEL_23;
    }

    v41 = v38 == 0x536563616C706572 && v25 == 0xEE007365766C6568;
    if (v41 || (sub_264F10() & 1) != 0)
    {

      sub_2646F0();
      LOBYTE(v74) = 1;
      v68 = v19;
      swift_getWitnessTable();
      sub_264DF0();
      v35 = v65;
      v40 = v59;
      (*(v61 + 8))(v22, v21);
      v33 = v56;
      *v56 = v76;
      v34 = v66;
      goto LABEL_21;
    }

    v42 = v38 == 0x685365766F6D6572 && v25 == 0xED00007365766C65;
    if (v42 || (v43 = v38, (sub_264F10() & 1) != 0))
    {

      sub_2EF0(&qword_3160B0, &qword_267D40);
      LOBYTE(v74) = 1;
      sub_D2868();
      sub_264DF0();
      v35 = v65;
      v40 = v59;
      (*(v61 + 8))(v22, v21);
      v33 = v56;
      *v56 = v76;
      v34 = v66;
      goto LABEL_21;
    }

    v28 = v60;
    if (v43 == 0xD000000000000012 && 0x8000000000291ED0 == v25 || (sub_264F10() & 1) != 0)
    {

      LOBYTE(v76) = 1;
      v44 = v64;
      v45 = sub_264DC0();
      v47 = v46;
      (*(v61 + 8))(v22, v44);
      v33 = v56;
      *v56 = v45;
      v33[1] = v47;
      v34 = v66;
      goto LABEL_12;
    }

    if (v43 == 0x7449646E65707061 && v25 == 0xEB00000000736D65)
    {
    }

    else
    {
      v55 = v22;
      if ((sub_264F10() & 1) == 0)
      {
        if (v43 == 0x744965766F6D6572 && v25 == 0xEB00000000736D65 || (sub_264F10() & 1) != 0)
        {

          *&v76 = a2;
          *(&v76 + 1) = v20;
          v77 = v57;
          v78 = v58;
          type metadata accessor for PageUpdateInstruction.ShelfItemRemovalDescriptor(255, &v76);
          sub_2646F0();
          LOBYTE(v76) = 1;
          WitnessTable = swift_getWitnessTable();
          swift_getWitnessTable();
          sub_264DF0();
          (*(v61 + 8))(v55, v64);
          v33 = v56;
          *v56 = v74;
          v34 = v66;
        }

        else if (v43 == 0x496563616C706572 && v25 == 0xEC000000736D6574 || (sub_264F10() & 1) != 0)
        {

          *&v76 = a2;
          *(&v76 + 1) = v20;
          v77 = v57;
          v78 = v58;
          type metadata accessor for PageUpdateInstruction.ShelfItemUpdateDescriptor(255, &v76);
          sub_2646F0();
          LOBYTE(v76) = 1;
          v71 = swift_getWitnessTable();
          swift_getWitnessTable();
          sub_264DF0();
          (*(v61 + 8))(v55, v64);
          v33 = v56;
          *v56 = v74;
          v34 = v66;
        }

        else if (v43 == 0xD00000000000001BLL && 0x8000000000291EF0 == v25 || (sub_264F10() & 1) != 0)
        {

          sub_2EF0(&qword_31C8D0, &qword_273588);
          LOBYTE(v74) = 1;
          sub_D278C();
          sub_264DF0();
          (*(v61 + 8))(v55, v64);
          v33 = v56;
          *v56 = v76;
          v34 = v66;
        }

        else if (v43 == 0xD000000000000013 && 0x8000000000291F10 == v25 || (sub_264F10() & 1) != 0)
        {

          *&v76 = a2;
          *(&v76 + 1) = v20;
          v77 = v57;
          v78 = v58;
          type metadata accessor for PageUpdateInstruction.ShelfHeaderFooterUpdateDescriptor(255, &v76);
          sub_2646F0();
          LOBYTE(v76) = 1;
          v72 = swift_getWitnessTable();
          swift_getWitnessTable();
          sub_264DF0();
          (*(v61 + 8))(v55, v64);
          v33 = v56;
          *v56 = v74;
          v34 = v66;
        }

        else if (v43 == 0xD000000000000013 && 0x8000000000291F30 == v25 || (sub_264F10() & 1) != 0)
        {

          *&v76 = a2;
          *(&v76 + 1) = v20;
          v77 = v57;
          v78 = v58;
          type metadata accessor for PageUpdateInstruction.ShelfHeaderFooterUpdateDescriptor(255, &v76);
          sub_2646F0();
          LOBYTE(v76) = 1;
          v73 = swift_getWitnessTable();
          swift_getWitnessTable();
          sub_264DF0();
          (*(v61 + 8))(v55, v64);
          v33 = v56;
          *v56 = v74;
          v34 = v66;
        }

        else if (v43 == 0x646E756F706D6F63 && v25 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
        {

          sub_2646F0();
          LOBYTE(v74) = 1;
          v80 = v19;
          v75 = swift_getWitnessTable();
          swift_getWitnessTable();
          sub_264DF0();
          (*(v61 + 8))(v55, v64);
          v33 = v56;
          *v56 = v76;
          v34 = v66;
        }

        else if (v43 == 0xD000000000000010 && 0x8000000000291F50 == v25 || (sub_264F10() & 1) != 0)
        {
          (*(v61 + 8))(v55, v64);

          v33 = v56;
          v34 = v66;
        }

        else
        {
          if (v43 == 0x646E6550706F7473 && v25 == 0xEF61746144676E69)
          {
          }

          else
          {
            v49 = sub_264F10();

            if ((v49 & 1) == 0)
            {
              v50 = sub_264C10();
              swift_allocError();
              v52 = v51;
              v53 = v65;
              sub_2E18(v65, v65[3]);
              sub_2650E0();
              sub_264BF0();
              (*(*(v50 - 8) + 104))(v52, enum case for DecodingError.dataCorrupted(_:), v50);
              swift_willThrow();
              (*(v61 + 8))(v55, v64);
              v31 = v53;
              return sub_3080(v31);
            }
          }

          (*(v61 + 8))(v55, v64);
          v33 = v56;
          v34 = v66;
        }

        goto LABEL_46;
      }

      v22 = v55;
    }

    *&v76 = a2;
    *(&v76 + 1) = v20;
    v77 = v57;
    v78 = v58;
    type metadata accessor for PageUpdateInstruction.ShelfItemUpdateDescriptor(255, &v76);
    sub_2646F0();
    LOBYTE(v76) = 1;
    v69 = swift_getWitnessTable();
    swift_getWitnessTable();
    v48 = v64;
    sub_264DF0();
    (*(v61 + 8))(v22, v48);
    v33 = v56;
    *v56 = v74;
    v34 = v66;
LABEL_46:
    swift_storeEnumTagMultiPayload();
    v35 = v65;
    v36 = v59;
    goto LABEL_22;
  }

  v31 = v65;
  return sub_3080(v31);
}

unint64_t sub_D278C()
{
  result = qword_31C8D8;
  if (!qword_31C8D8)
  {
    sub_2F9C(&qword_31C8D0, &qword_273588);
    sub_D2810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C8D8);
  }

  return result;
}

unint64_t sub_D2810()
{
  result = qword_31C8E0;
  if (!qword_31C8E0)
  {
    type metadata accessor for ToolbarItemType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C8E0);
  }

  return result;
}

unint64_t sub_D2868()
{
  result = qword_31C8E8;
  if (!qword_31C8E8)
  {
    sub_2F9C(&qword_3160B0, &qword_267D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C8E8);
  }

  return result;
}

unint64_t sub_D28E4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_300348;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_D2934(unsigned __int8 a1)
{
  v1 = 0x736D657469;
  v2 = 0xD000000000000010;
  if (a1 != 2)
  {
    v2 = 0x657075646564;
  }

  if (a1)
  {
    v1 = 0x4449666C656873;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_D29D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D2A48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D2AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D2B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

unint64_t sub_D2B94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_D28E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_D2BD0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_D2934(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_D2C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_D2930(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_D2C60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_D2CB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t PageUpdateInstruction.ShelfItemUpdateDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v30 = a4;
  *&v35 = a2;
  *(&v35 + 1) = a3;
  *&v36 = a4;
  *(&v36 + 1) = a5;
  v27 = a5;
  _s10CodingKeysOMa_1(255, &v35);
  swift_getWitnessTable();
  v32 = sub_264E20();
  v28 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v23 - v8;
  sub_2E18(a1, a1[3]);
  v31 = v9;
  v10 = v51;
  sub_265120();
  if (v10)
  {
    v17 = a1;
  }

  else
  {
    v11 = v28;
    v51 = a3;
    v12 = a1;
    v13 = v29;
    LOBYTE(v47) = 0;
    sub_D30E4();
    sub_264DF0();
    v14 = v35;
    LOBYTE(v35) = 1;
    v24 = sub_264DC0();
    v25 = v15;
    v26 = v14;
    v46 = 2;
    sub_D3138();
    v16 = v31;
    sub_264DB0();
    v44 = v49;
    *v45 = v50[0];
    *&v45[9] = *(v50 + 9);
    v42 = v47;
    v43 = v48;
    sub_2EF0(&qword_31C900, &qword_273590);
    LOBYTE(v33[0]) = 3;
    sub_D318C();
    sub_264DB0();
    (*(v11 + 8))(v16, v32);
    if (v35 == 3)
    {
      v19 = 1;
    }

    else
    {
      v19 = (v35 == 2) | v35;
    }

    v33[2] = v44;
    v34[0] = *v45;
    *(v34 + 9) = *&v45[9];
    v33[0] = v42;
    v33[1] = v43;
    PageUpdateInstruction.ShelfItemUpdateDescriptor.init(items:shelfID:paginationUpdate:dedupe:)(v26, v24, v25, v33, v19 & 1, &v35);
    v20 = v38;
    v21 = v40;
    *(v13 + 64) = v39;
    *(v13 + 80) = v21;
    *(v13 + 96) = v41;
    v22 = v36;
    *v13 = v35;
    *(v13 + 16) = v22;
    *(v13 + 32) = v37;
    *(v13 + 48) = v20;
    v17 = v12;
  }

  return sub_3080(v17);
}

unint64_t sub_D30E4()
{
  result = qword_31C8F0;
  if (!qword_31C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C8F0);
  }

  return result;
}

unint64_t sub_D3138()
{
  result = qword_31C8F8;
  if (!qword_31C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C8F8);
  }

  return result;
}

unint64_t sub_D318C()
{
  result = qword_31C908;
  if (!qword_31C908)
  {
    sub_2F9C(&qword_31C900, &qword_273590);
    sub_D3210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C908);
  }

  return result;
}

unint64_t sub_D3210()
{
  result = qword_31C910;
  if (!qword_31C910)
  {
    sub_2F9C(&qword_31A0B8, &unk_279D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C910);
  }

  return result;
}

uint64_t sub_D328C(uint64_t a1)
{
  v2 = sub_2EF0(qword_31C918, &qword_273598);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D32F4(char a1)
{
  if (a1)
  {
    return 0x4449666C656873;
  }

  else
  {
    return 0x7344496D657469;
  }
}

uint64_t sub_D3348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D33BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D3428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D3498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D3514@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, Swift::OpaquePointer a3@<X3>, _BYTE *a4@<X8>)
{
  result = sub_D3918(*a1, a1[1], a2[2], a2[3], a2[4], a2[5], a3);
  *a4 = result;
  return result;
}

uint64_t sub_D3590@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, Swift::OpaquePointer a4@<X4>, _BYTE *a5@<X8>)
{
  result = sub_D3918(a1, a2, a3[2], a3[3], a3[4], a3[5], a4);
  *a5 = result;
  return result;
}

uint64_t sub_D35E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_D3634(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t PageUpdateInstruction.ShelfItemRemovalDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v19 = a6;
  *&v24 = a2;
  *(&v24 + 1) = a3;
  v21 = a4;
  v22 = a5;
  v25 = a4;
  v26 = a5;
  _s10CodingKeysOMa_0(255, &v24);
  swift_getWitnessTable();
  v23 = sub_264E20();
  v20 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = &v18 - v8;
  sub_2E18(a1, a1[3]);
  sub_265120();
  if (!v6)
  {
    v10 = v20;
    sub_2EF0(&qword_3160B0, &qword_267D40);
    v27 = 0;
    sub_D2868();
    sub_264DF0();
    v18 = v24;
    LOBYTE(v24) = 1;
    v11 = sub_264DC0();
    v12 = v9;
    v14 = v13;
    (*(v10 + 8))(v12, v23);
    PageUpdateInstruction.ShelfItemRemovalDescriptor.init(itemIDs:shelfID:)(v18, v11, v14, &v24);
    v15 = v25;
    v16 = v19;
    *v19 = v24;
    *(v16 + 2) = v15;
  }

  return sub_3080(a1);
}

uint64_t sub_D3918(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, Swift::OpaquePointer a7)
{
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  v9 = sub_264D40(a7, v12);

  if (v9 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  if (v9)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_D3968(char a1)
{
  if (a1)
  {
    return 0x4449666C656873;
  }

  else
  {
    return 0x6C65646F6DLL;
  }
}

uint64_t sub_D39C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D3A34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D3AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D3B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_D3BA4@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_D3C24@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t sub_D3C60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_D3CB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t PageUpdateInstruction.ShelfHeaderFooterUpdateDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19 = a6;
  *&v21 = a2;
  *(&v21 + 1) = a3;
  v17[0] = a4;
  v17[1] = a5;
  v22 = a4;
  v23 = a5;
  _s10CodingKeysOMa(255, &v21);
  swift_getWitnessTable();
  v24 = sub_264E20();
  v18 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = v17 - v8;
  sub_2E18(a1, a1[3]);
  sub_265120();
  if (!v6)
  {
    v11 = v18;
    v10 = v19;
    LOBYTE(v20[0]) = 0;
    sub_752E8();
    sub_264DF0();
    LOBYTE(v20[0]) = 1;
    v12 = (v11 + 8);
    v13 = sub_264DC0();
    v15 = v14;
    (*v12)(v9, v24);
    sub_F7CC(&v21, v20);
    PageUpdateInstruction.ShelfHeaderFooterUpdateDescriptor.init(model:shelfID:)(v20, v13, v15, v10);
  }

  return sub_3080(a1);
}

uint64_t (*static Defaults.shelfGridDebugUIEnabled.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_2EF0(&qword_31CB50, &qword_273B98);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_315938 != -1)
  {
    swift_once();
  }

  v9 = sub_B080(v4, qword_31CB20);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_260730();
  return sub_D4C14;
}

uint64_t sub_D42A0()
{
  v0 = sub_2EF0(&qword_31CB50, &qword_273B98);
  sub_B600(v0, qword_31CB20);
  sub_B080(v0, qword_31CB20);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_260760();
}

uint64_t sub_D4374(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2EF0(&qword_31CB50, &qword_273B98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = sub_B080(v5, a2);
  (*(v6 + 16))(v8, v9, v5);
  sub_260740();
  (*(v6 + 8))(v8, v5);
  return v11[15];
}

uint64_t sub_D44A8@<X0>(void *a1@<X3>, uint64_t a2@<X4>, _BYTE *a4@<X8>)
{
  v7 = sub_2EF0(&qword_31CB50, &qword_273B98);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-v9];
  if (*a1 != -1)
  {
    swift_once();
  }

  v11 = sub_B080(v7, a2);
  (*(v8 + 16))(v10, v11, v7);
  sub_260740();
  result = (*(v8 + 8))(v10, v7);
  *a4 = v13[15];
  return result;
}

uint64_t sub_D45EC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_2EF0(&qword_31CB50, &qword_273B98);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17[-v12];
  v14 = *a1;
  if (*a5 != -1)
  {
    swift_once();
  }

  v15 = sub_B080(v10, a6);
  (*(v11 + 16))(v13, v15, v10);
  v17[15] = v14;
  sub_260750();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_D4754(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2EF0(&qword_31CB50, &qword_273B98);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-v9];
  if (*a2 != -1)
  {
    swift_once();
  }

  v11 = sub_B080(v7, a3);
  (*(v8 + 16))(v10, v11, v7);
  v13[15] = a1 & 1;
  sub_260750();
  return (*(v8 + 8))(v10, v7);
}

uint64_t (*static Defaults.useOldCollageSwoosh.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_2EF0(&qword_31CB50, &qword_273B98);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_315940 != -1)
  {
    swift_once();
  }

  v9 = sub_B080(v4, qword_31CB38);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_260730();
  return sub_D49F8;
}

void sub_D49FC(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_D4A74()
{
  v0 = sub_2EF0(&qword_31CB50, &qword_273B98);
  sub_B600(v0, qword_31CB38);
  sub_B080(v0, qword_31CB38);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_260760();
}

uint64_t sub_D4C18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C797473;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6E6769736564;
    }

    else
    {
      v4 = 0x746867696577;
    }

    v5 = 0xE600000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 1702521203;
    }

    else
    {
      v4 = 0x656C797473;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x6E6769736564;
  if (a2 != 2)
  {
    v7 = 0x746867696577;
  }

  if (a2)
  {
    v2 = 1702521203;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_264F10();
  }

  return v10 & 1;
}

uint64_t sub_D4D38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 7368560;
  v6 = 0xE400000000000000;
  v7 = 1952867692;
  if (a1 != 4)
  {
    v7 = 0x7468676972;
    v6 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x64726177726F66;
  if (a1 != 1)
  {
    v9 = 1752397168;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1801675106;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE300000000000000;
      if (v10 != 7368560)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1952867692)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7468676972)
      {
LABEL_34:
        v13 = sub_264F10();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x64726177726F66)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1752397168)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1801675106)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_D4EE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F74747562;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xE400000000000000;
    v13 = 1802398060;
    if (a1 != 2)
    {
      v13 = 0x70756B636F6CLL;
      v12 = 0xE600000000000000;
    }

    v14 = 0x7265746C6966;
    if (!a1)
    {
      v14 = 0x6E6F74747562;
    }

    if (a1 <= 1u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 1)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0xE700000000000000;
    v5 = 0x6E6F6974636573;
    v6 = 0xE600000000000000;
    v7 = 0x68736F6F7773;
    if (a1 != 7)
    {
      v7 = 0x6B636F6C5F707075;
      v6 = 0xEA00000000007075;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0xE400000000000000;
    v9 = 1701273968;
    if (a1 != 4)
    {
      v9 = 0x77656976657270;
      v8 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE400000000000000;
        if (v10 != 1802398060)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v15 = 0xE600000000000000;
        if (v10 != 0x70756B636F6CLL)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    v15 = 0xE600000000000000;
    if (a2)
    {
      if (v10 != 0x7265746C6966)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v15 = 0xE400000000000000;
        if (v10 != 1701273968)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v15 = 0xE700000000000000;
        if (v10 != 0x77656976657270)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v15 = 0xE700000000000000;
      if (v10 != 0x6E6F6974636573)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v15 = 0xE600000000000000;
      if (v10 != 0x68736F6F7773)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v2 = 0x6B636F6C5F707075;
    v15 = 0xEA00000000007075;
  }

  if (v10 != v2)
  {
LABEL_49:
    v16 = sub_264F10();
    goto LABEL_50;
  }

LABEL_46:
  if (v11 != v15)
  {
    goto LABEL_49;
  }

  v16 = 1;
LABEL_50:

  return v16 & 1;
}

uint64_t sub_D5154(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F74747562;
  v3 = a1;
  v4 = 0xE700000000000000;
  v5 = 0x6E6F6974636573;
  v6 = 0xE600000000000000;
  if (a1 != 5)
  {
    v5 = 0x68736F6F7773;
    v4 = 0xE600000000000000;
  }

  v7 = 0x70756B636F6CLL;
  if (a1 != 3)
  {
    v7 = 0x77656976657270;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x6E6D756C6F63;
  if (a1 != 1)
  {
    v8 = 0x7265746C6966;
  }

  if (!a1)
  {
    v8 = 0x6E6F74747562;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v3 <= 2)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    v11 = 0xE600000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v9 != 0x6E6D756C6F63)
        {
          goto LABEL_36;
        }
      }

      else if (v9 != 0x7265746C6966)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v11 = 0xE700000000000000;
        if (v9 != 0x6E6F6974636573)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v11 = 0xE600000000000000;
        if (v9 != 0x68736F6F7773)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x70756B636F6CLL)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v11 = 0xE700000000000000;
    v2 = 0x77656976657270;
  }

  if (v9 != v2)
  {
LABEL_36:
    v12 = sub_264F10();
    goto LABEL_37;
  }

LABEL_33:
  if (v10 != v11)
  {
    goto LABEL_36;
  }

  v12 = 1;
LABEL_37:

  return v12 & 1;
}

uint64_t sub_D5344(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1802398060;
  v6 = 0xE600000000000000;
  v7 = 0x70756B636F6CLL;
  if (a1 != 4)
  {
    v7 = 0x77656976657270;
    v6 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x6954656C62627562;
  v9 = 0xE900000000000070;
  if (a1 != 1)
  {
    v8 = 0x7265746C6966;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E6F74747562;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1802398060)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x70756B636F6CLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x77656976657270)
      {
LABEL_34:
        v13 = sub_264F10();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000070;
      if (v10 != 0x6954656C62627562)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7265746C6966)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x6E6F74747562)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_D5510(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x656C746974627573;
    }

    else
    {
      v3 = 7107189;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6D496C6F626D7973;
    v4 = 0xEF646E694B656761;
  }

  else if (a1 == 3)
  {
    v3 = 0x7365527465737361;
    v4 = 0xED0000656372756FLL;
  }

  else
  {
    v3 = 0x7463656C65537369;
    v4 = 0xEA00000000006465;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656C746974627573;
    }

    else
    {
      v9 = 7107189;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x7365527465737361;
    v6 = 0xED0000656372756FLL;
    if (a2 != 3)
    {
      v5 = 0x7463656C65537369;
      v6 = 0xEA00000000006465;
    }

    if (a2 == 2)
    {
      v7 = 0x6D496C6F626D7973;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xEF646E694B656761;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_264F10();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_D56CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6B63616C62;
    }

    else
    {
      v4 = 0x746C7561666564;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1818322292;
  }

  else if (a1 == 3)
  {
    v3 = 0xE300000000000000;
    v4 = 6579570;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1702194274;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6B63616C62;
    }

    else
    {
      v9 = 0x746C7561666564;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v6 = 6579570;
    if (a2 != 3)
    {
      v6 = 1702194274;
      v5 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1818322292;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_264F10();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_D5820(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656E696C6E69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656772616CLL;
    }

    else
    {
      v4 = 0x6974616D6F747561;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE900000000000063;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x614C656E696C6E69;
    }

    else
    {
      v4 = 0x656E696C6E69;
    }

    if (v3)
    {
      v5 = 0xEB00000000656772;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x656772616CLL;
  if (a2 != 2)
  {
    v8 = 0x6974616D6F747561;
    v7 = 0xE900000000000063;
  }

  if (a2)
  {
    v2 = 0x614C656E696C6E69;
    v6 = 0xEB00000000656772;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264F10();
  }

  return v11 & 1;
}

uint64_t sub_D5970(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6564616568657270;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x727574616E676973;
    if (a1 == 6)
    {
      v12 = 0xE900000000000065;
    }

    else
    {
      v11 = 0xD000000000000011;
      v12 = 0x800000000028FE80;
    }

    v13 = 0xE800000000000000;
    v14 = 0x656372756F736572;
    if (a1 != 4)
    {
      v14 = 0xD000000000000011;
      v13 = 0x800000000028FE60;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0xE900000000000072;
    v6 = 0xE800000000000000;
    v7 = 0x656C746974627573;
    if (a1 != 2)
    {
      v7 = 0x6E49676E69746172;
      v6 = 0xEA00000000006F66;
    }

    v8 = 0x656C746974;
    if (a1)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v8 = 0x6564616568657270;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    if (v4 <= 1)
    {
      v10 = v5;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = 0x727574616E676973;
        goto LABEL_40;
      }

      v3 = 0xD000000000000011;
      v15 = "useLightColorText";
    }

    else
    {
      if (a2 == 4)
      {
        v2 = 0xE800000000000000;
        v3 = 0x656372756F736572;
        goto LABEL_40;
      }

      v3 = 0xD000000000000011;
      v15 = "reviewDescription";
    }

    v2 = (v15 - 32) | 0x8000000000000000;
    goto LABEL_40;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0xE800000000000000;
      v3 = 0x656C746974627573;
    }

    else
    {
      v3 = 0x6E49676E69746172;
      v2 = 0xEA00000000006F66;
    }
  }

  else if (a2)
  {
    v2 = 0xE500000000000000;
    v3 = 0x656C746974;
  }

  else
  {
    v2 = 0xE900000000000072;
  }

LABEL_40:
  if (v9 == v3 && v10 == v2)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_264F10();
  }

  return v16 & 1;
}

uint64_t sub_D5BB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006567;
  v3 = 0x6150736569726573;
  v4 = a1;
  v5 = 0xEF68736F6F775373;
  v6 = 0xD000000000000017;
  if (a1 == 5)
  {
    v6 = 0x7472616843706F74;
  }

  else
  {
    v5 = 0x800000000028FAB0;
  }

  v7 = 0x800000000028FA70;
  v8 = 0x7472616843706F74;
  if (a1 == 3)
  {
    v8 = 0xD000000000000017;
  }

  else
  {
    v7 = 0xED00007473694C73;
  }

  if (a1 > 4u)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0x800000000028FA50;
  v10 = 0xD000000000000012;
  if (a1 != 1)
  {
    v10 = 0x736E6F6974696465;
    v9 = 0xE800000000000000;
  }

  if (!a1)
  {
    v10 = 0x6150736569726573;
    v9 = 0xEA00000000006567;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x800000000028FA50;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x736E6F6974696465)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_36;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEF68736F6F775373;
        if (v11 != 0x7472616843706F74)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v2 = 0x800000000028FAB0;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_36;
    }

    if (a2 == 3)
    {
      v2 = 0x800000000028FA70;
      if (v11 != 0xD000000000000017)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v3 = 0x7472616843706F74;
    v2 = 0xED00007473694C73;
  }

  if (v11 != v3)
  {
LABEL_39:
    v13 = sub_264F10();
    goto LABEL_40;
  }

LABEL_36:
  if (v12 != v2)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_D5DFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0xE800000000000000;
      v5 = 0x4449736569726573;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0xD000000000000012;
      }

      else
      {
        v5 = 0xD000000000000013;
      }

      if (v2 == 4)
      {
        v6 = 0x800000000028FA10;
      }

      else
      {
        v6 = 0x800000000028FA30;
      }
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x656372756F736572;
    if (a1 != 1)
    {
      v4 = 0x4E6E6F6974636573;
      v3 = 0xEB00000000656D61;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0x747865746E6F63;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v7 = 0xE800000000000000;
      if (v5 != 0x4449736569726573)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (a2 == 4)
      {
        v8 = 0xD000000000000012;
      }

      else
      {
        v8 = 0xD000000000000013;
      }

      if (a2 == 4)
      {
        v7 = 0x800000000028FA10;
      }

      else
      {
        v7 = 0x800000000028FA30;
      }

      if (v5 != v8)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0xE800000000000000;
      if (v5 != 0x656372756F736572)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v7 = 0xEB00000000656D61;
      if (v5 != 0x4E6E6F6974636573)
      {
LABEL_39:
        v9 = sub_264F10();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    if (v5 != 0x747865746E6F63)
    {
      goto LABEL_39;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_39;
  }

  v9 = 1;
LABEL_40:

  return v9 & 1;
}

uint64_t sub_D5FF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE600000000000000;
    v12 = 0xE800000000000000;
    v13 = 0x63657053746E6F66;
    if (a1 != 2)
    {
      v13 = 0x6D614E6567616D69;
      v12 = 0xE900000000000065;
    }

    v14 = 0x7365527465737361;
    if (a1)
    {
      v11 = 0xED0000656372756FLL;
    }

    else
    {
      v14 = 0x6E6F69746361;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x656C746974627573;
    v5 = 0x6D496C6F626D7973;
    v6 = 0xEF646E694B656761;
    if (a1 != 7)
    {
      v5 = 0x656C746974;
      v6 = 0xE500000000000000;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0xE500000000000000;
    v8 = 0x73756E656DLL;
    if (a1 != 4)
    {
      v8 = 1701605234;
      v7 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE800000000000000;
        if (v9 != 0x63657053746E6F66)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE900000000000065;
        if (v9 != 0x6D614E6567616D69)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xED0000656372756FLL;
      if (v9 != 0x7365527465737361)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x6E6F69746361)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x73756E656DLL)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v9 != 1701605234)
      {
LABEL_52:
        v16 = sub_264F10();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xE800000000000000;
    if (v9 != 0x656C746974627573)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xEF646E694B656761;
    if (v9 != 0x6D496C6F626D7973)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xE500000000000000;
    if (v9 != 0x656C746974)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_D62C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000756E65;
  v3 = 0x4D747865746E6F63;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x70756B636F6CLL;
  if (a1 != 5)
  {
    v6 = 0xD000000000000016;
    v5 = 0x800000000028FB90;
  }

  v7 = 0x69576E6F74747562;
  v8 = 0xEF656C7469546874;
  if (a1 != 3)
  {
    v7 = 0x75426D6574737973;
    v8 = 0xEC0000006E6F7474;
  }

  if (a1 > 4u)
  {
    v9 = v5;
  }

  else
  {
    v6 = v7;
    v9 = v8;
  }

  v10 = 0xD000000000000014;
  v11 = 0x800000000028FB40;
  if (a1 != 1)
  {
    v10 = 0x69576E6F74747562;
    v11 = 0xEF6567616D496874;
  }

  if (!a1)
  {
    v10 = 0x4D747865746E6F63;
    v11 = 0xEB00000000756E65;
  }

  if (a1 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if (a2 > 2u)
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE600000000000000;
        if (v12 != 0x70756B636F6CLL)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0x800000000028FB90;
        if (v12 != 0xD000000000000016)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v14 = 0x6C7469546874;
      goto LABEL_30;
    }

    v3 = 0x75426D6574737973;
    v2 = 0xEC0000006E6F7474;
    goto LABEL_33;
  }

  if (!a2)
  {
LABEL_33:
    if (v12 != v3)
    {
LABEL_37:
      v15 = sub_264F10();
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  if (a2 != 1)
  {
    v14 = 0x67616D496874;
LABEL_30:
    v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
    if (v12 != 0x69576E6F74747562)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  v2 = 0x800000000028FB40;
  if (v12 != 0xD000000000000014)
  {
    goto LABEL_37;
  }

LABEL_34:
  if (v13 != v2)
  {
    goto LABEL_37;
  }

  v15 = 1;
LABEL_38:

  return v15 & 1;
}

uint64_t sub_D6518(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006570795464;
  v3 = 0x6E656E6F706D6F63;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x726550736D657469;
    }

    else
    {
      v5 = 0x67616C6C6F437369;
    }

    if (v4 == 2)
    {
      v6 = 0xEE006E6D756C6F43;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x697247666C656873;
    }

    else
    {
      v5 = 0x6E656E6F706D6F63;
    }

    if (v4)
    {
      v6 = 0xED00006570795464;
    }

    else
    {
      v6 = 0xED00006570795474;
    }
  }

  v7 = 0x726550736D657469;
  v8 = 0xEE006E6D756C6F43;
  if (a2 != 2)
  {
    v7 = 0x67616C6C6F437369;
    v8 = 0xE900000000000065;
  }

  if (a2)
  {
    v3 = 0x697247666C656873;
  }

  else
  {
    v2 = 0xED00006570795474;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264F10();
  }

  return v11 & 1;
}

uint64_t sub_D6684(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v7 = 0xE500000000000000;
        v6 = 0x6B72616D78;
      }

      else
      {
        v7 = 0x800000000028FD40;
        v6 = 0xD000000000000011;
      }
    }

    else if (a1 == 4)
    {
      v7 = 0xE400000000000000;
      v6 = 1937075312;
    }

    else
    {
      v7 = 0x800000000028FD20;
      v6 = 0xD000000000000013;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    if (a1 != 2)
    {
      v3 = 0xEF656C637269632ELL;
    }

    v4 = 0xD000000000000010;
    v5 = 0x800000000028FCE0;
    if (a1)
    {
      v4 = 0x72616D6B63656863;
      v5 = 0xE90000000000006BLL;
    }

    if (a1 <= 1u)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0x73697370696C6C65;
    }

    if (v2 <= 1)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v9 = 0xE500000000000000;
        if (v6 != 0x6B72616D78)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v9 = 0x800000000028FD40;
        if (v6 != 0xD000000000000011)
        {
LABEL_46:
          v10 = sub_264F10();
          goto LABEL_47;
        }
      }
    }

    else if (a2 == 4)
    {
      v9 = 0xE400000000000000;
      if (v6 != 1937075312)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v9 = 0x800000000028FD20;
      if (v6 != 0xD000000000000013)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = 0xE800000000000000;
      if (v6 != 0x73697370696C6C65)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v9 = 0xEF656C637269632ELL;
      if (v6 != 0x73697370696C6C65)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    if (a2)
    {
      v8 = 0x72616D6B63656863;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (a2)
    {
      v9 = 0xE90000000000006BLL;
    }

    else
    {
      v9 = 0x800000000028FCE0;
    }

    if (v6 != v8)
    {
      goto LABEL_46;
    }
  }

  if (v7 != v9)
  {
    goto LABEL_46;
  }

  v10 = 1;
LABEL_47:

  return v10 & 1;
}