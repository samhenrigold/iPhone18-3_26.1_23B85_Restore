uint64_t sub_176334(uint64_t a1)
{
  result = sub_175DD4(&qword_3212C8, type metadata accessor for NothingToReviewFrame, &protocol conformance descriptor for NothingToReviewFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_17638C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *(type metadata accessor for NothingToReviewFrameViewModel(0) + 20);
  v6 = sub_260550();
  a2[3] = v6;
  a2[4] = sub_175DD4(&qword_317678, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  a2[5] = sub_175DD4(&qword_317680, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  v7 = sub_10934(a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(v7, v4 + v5, v6);
}

uint64_t sub_176488(uint64_t a1)
{
  result = sub_175DD4(&qword_3212D0, type metadata accessor for NothingToReviewFrame, &protocol conformance descriptor for NothingToReviewFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_176510(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_260550();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1765D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_260550();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_176674(uint64_t a1)
{
  result = sub_260550();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_176704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PageBackground(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for NothingToReviewFrameViewModel(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_176808(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PageBackground(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for NothingToReviewFrameViewModel(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_176904(uint64_t a1)
{
  result = type metadata accessor for PageBackground(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NothingToReviewFrameViewModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_17698C()
{
  result = qword_3213F8;
  if (!qword_3213F8)
  {
    sub_2F9C(&qword_3212C0, &unk_27E940);
    sub_8E38(&qword_321400, &qword_321408, &qword_27EA28, &protocol conformance descriptor for VStack<A>);
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3213F8);
  }

  return result;
}

uint64_t sub_176A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_176AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_321410, &qword_27EA30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_176B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_321410, &qword_27EA30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_176BD0(uint64_t a1)
{
  v2 = sub_2EF0(&qword_321410, &qword_27EA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_176C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  result = type metadata accessor for GridItemInfobarView(0, a4, a5, v11);
  v13 = (a6 + *(result + 36));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t sub_176D24(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_263260();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v13[-v9];
  v14 = v3;
  v15 = v2;
  v16 = v1;
  sub_261D30();
  sub_263250();
  swift_getWitnessTable();
  sub_1609C();
  v11 = *(v5 + 8);
  v11(v7, v4);
  sub_1609C();
  return (v11)(v10, v4);
}

uint64_t sub_176F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v14 = type metadata accessor for GridItemInfobarView(0, a2, a3, v13);
  (*(a3 + 24))(*(a1 + *(v14 + 36)), *(a1 + *(v14 + 36) + 8), a2, a3);
  swift_getAssociatedConformanceWitness();
  sub_1609C();
  v15 = *(v7 + 8);
  v15(v9, AssociatedTypeWitness);
  sub_1609C();
  return (v15)(v12, AssociatedTypeWitness);
}

uint64_t sub_1770CC(void *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_263260();

  return swift_getWitnessTable();
}

uint64_t static GridItemViewModel.gridPage(assetInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2E18(a1, a1[3]);
  v4 = sub_2609A0();
  v6 = v5;
  sub_2E18(a1, a1[3]);
  v7 = sub_2609B0();
  v9 = v8;
  v19 = &type metadata for GridItemMetadataTitleWithSubtitle;
  v20 = sub_2004C();
  v10 = swift_allocObject();
  v18[0] = v10;
  v10[1].i64[0] = v4;
  v10[1].i64[1] = v6;
  v10[2].i64[0] = v7;
  v10[2].i64[1] = v9;
  v10[3] = vdupq_n_s64(2uLL);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  sub_34A0(v18, a2, &qword_316BC0, &qword_2707C0);
  *(a2 + 40) = 0;
  v19 = &type metadata for GridItemInfobarPricePill;
  v20 = sub_1773E4();
  v18[0] = swift_allocObject();
  sub_30CC(a1, v18[0] + 16);
  sub_30CC(a1, a2 + 96);
  sub_30CC(a1, v17);
  v11 = type metadata accessor for GridItemViewModel(0);
  CardInfo.init(with:alwaysPresentNewCardSet:)(v17, 1, a2 + v11[8]);
  v12 = v11[12];
  v13 = sub_260570();
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  v14 = v11[11];
  v15 = sub_2605C0();
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  *(a2 + 80) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 48) = 0u;
  result = sub_34A0(v18, a2 + 48, &qword_316D48, &unk_28CD20);
  *(a2 + 88) = 0;
  *(a2 + v11[9]) = 0;
  *(a2 + v11[10]) = 0;
  return result;
}

uint64_t sub_1773A4()
{

  return swift_deallocObject();
}

unint64_t sub_1773E4()
{
  result = qword_3214A0;
  if (!qword_3214A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3214A0);
  }

  return result;
}

uint64_t sub_177438()
{
  sub_3080((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_177470@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle(0);
  v43 = *(v3 - 8);
  __chkstk_darwin(v3);
  v44 = v4;
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2EF0(&qword_321668, &qword_27EED8);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v41 - v10;
  v42 = sub_2EF0(&qword_321670, &qword_27EEE0);
  __chkstk_darwin(v42);
  v13 = &v41 - v12;
  v14 = sub_2EF0(&qword_321678, &qword_27EEE8);
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  sub_2622A0();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v17 = &v11[*(sub_2EF0(&qword_318350, &qword_26B1C0) + 36)];
  v18 = v48;
  *v17 = v47;
  *(v17 + 1) = v18;
  *(v17 + 2) = v49;
  v19 = sub_1778CC();
  v20 = sub_262500();
  v21 = &v11[*(v9 + 44)];
  *v21 = v19;
  v21[8] = v20;
  LOBYTE(v9) = sub_2622B0();
  sub_404B8(v7);
  if (v9)
  {
    v22 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  }

  else
  {
    v22 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  }

  v23 = v22;
  sub_178DEC(v7, type metadata accessor for ColorConstants);
  KeyPath = swift_getKeyPath();
  sub_22148(v11, v13, &qword_321668, &qword_27EED8);
  v25 = &v13[*(v42 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  v26 = &v16[*(v14 + 36)];
  v27 = *(sub_2617E0() + 20);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = sub_261DD0();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  __asm { FMOV            V0.2D, #6.0 }

  *v26 = _Q0;
  *&v26[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  sub_22148(v13, v16, &qword_321670, &qword_27EEE0);
  v35 = v45;
  sub_179828(v2, v45, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle);
  v36 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v37 = swift_allocObject();
  sub_179A28(v35, v37 + v36, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle);
  v38 = v46;
  sub_22148(v16, v46, &qword_321678, &qword_27EEE8);
  result = sub_2EF0(&qword_321680, &unk_27EEF0);
  v40 = (v38 + *(result + 36));
  *v40 = sub_179A90;
  v40[1] = v37;
  return result;
}

uint64_t sub_1778CC()
{
  v1 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_261180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v19[-v9];
  v11 = *(v0 + 8);
  v19[16] = *v0;
  v20 = v11;
  sub_2EF0(&qword_3210B8, &qword_27EE90);
  sub_2631E0();
  if (v19[15] != 1)
  {
    return sub_262FA0();
  }

  type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle(0);
  sub_40830(v10);
  (*(v5 + 104))(v7, enum case for ColorScheme.dark(_:), v4);
  v12 = sub_261170();
  v13 = *(v5 + 8);
  v13(v7, v4);
  v13(v10, v4);
  sub_404B8(v3);
  v14 = objc_opt_self();
  if (v12)
  {
    v15 = [v14 tertiarySystemFillColor];
  }

  else
  {
    v15 = [v14 quaternarySystemFillColor];
  }

  v17 = v15;
  v18 = sub_263070();
  sub_178DEC(v3, type metadata accessor for ColorConstants);
  return v18;
}

uint64_t sub_177B28@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = type metadata accessor for ShelfGridPaddleButtonView.PaddleOnArtworkButtonStyle(0);
  v3 = *(v2 - 8);
  v50 = v2;
  v51 = v3;
  __chkstk_darwin(v2);
  v52 = v4;
  v53 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v5 - 8);
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2634E0();
  __chkstk_darwin(v45);
  v7 = sub_2EF0(&qword_318350, &qword_26B1C0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v45 - v9;
  v46 = sub_2EF0(&qword_321648, &qword_27EE78);
  __chkstk_darwin(v46);
  v12 = &v45 - v11;
  v48 = sub_2EF0(&qword_321650, &qword_27EE80);
  __chkstk_darwin(v48);
  v14 = &v45 - v13;
  v47 = sub_2EF0(&qword_321658, &qword_27EE88);
  __chkstk_darwin(v47);
  v16 = &v45 - v15;
  sub_2622A0();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v17 = &v10[*(v8 + 44)];
  v18 = v59;
  *v17 = v58;
  *(v17 + 1) = v18;
  *(v17 + 2) = v60;
  v19 = v1;
  v20 = *(v1 + 8);
  LOBYTE(v56) = *v1;
  v57 = v20;
  sub_2EF0(&qword_3210B8, &qword_27EE90);
  sub_2631E0();
  if (v55 == 1)
  {
    if (sub_2622B0())
    {
      sub_2634B0();
    }

    else
    {
      sub_2634C0();
    }

    v22 = v49;
    v21 = sub_2613B0();
  }

  else
  {
    v56 = sub_262FA0();
    v21 = sub_2613B0();
    v22 = v49;
  }

  v23 = sub_262500();
  sub_22148(v10, v12, &qword_318350, &qword_26B1C0);
  v24 = &v12[*(v46 + 36)];
  *v24 = v21;
  v24[8] = v23;
  v25 = sub_2622B0();
  sub_404B8(v22);
  v26 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  if ((v25 & 1) == 0)
  {
    v27 = sub_263000();

    v26 = v27;
  }

  sub_178DEC(v22, type metadata accessor for ColorConstants);
  KeyPath = swift_getKeyPath();
  sub_22148(v12, v14, &qword_321648, &qword_27EE78);
  v29 = &v14[*(v48 + 36)];
  *v29 = KeyPath;
  v29[1] = v26;
  v30 = &v16[*(v47 + 36)];
  v31 = *(sub_2617E0() + 20);
  v32 = enum case for RoundedCornerStyle.continuous(_:);
  v33 = sub_261DD0();
  (*(*(v33 - 8) + 104))(&v30[v31], v32, v33);
  __asm { FMOV            V0.2D, #6.0 }

  *v30 = _Q0;
  *&v30[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  sub_22148(v14, v16, &qword_321650, &qword_27EE80);
  v39 = v53;
  sub_179828(v19, v53, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnArtworkButtonStyle);
  v40 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v41 = swift_allocObject();
  sub_179A28(v39, v41 + v40, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnArtworkButtonStyle);
  v42 = v54;
  sub_22148(v16, v54, &qword_321658, &qword_27EE88);
  result = sub_2EF0(&qword_321660, &qword_27EED0);
  v44 = (v42 + *(result + 36));
  *v44 = sub_179810;
  v44[1] = v41;
  return result;
}

uint64_t ShelfGridPaddleButtonView.action.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

_BYTE *ShelfGridPaddleButtonView.init(direction:context:action:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  *a5 = *result;
  *(a5 + 1) = v5;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  return result;
}

void sub_1781AC(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v4 = a1;
  v6 = sub_261D30();
  sub_178268(v4 & 1, &v15);
  v14 = v15;
  v7 = v16;
  v8 = v17;
  v9 = sub_2624F0();
  sub_2610C0();
  *a4 = v6;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 24) = v14;
  *(a4 + 40) = v7;
  *(a4 + 48) = v8;
  *(a4 + 56) = v9;
  *(a4 + 64) = v10;
  *(a4 + 72) = v11;
  *(a4 + 80) = v12;
  *(a4 + 88) = v13;
  *(a4 + 96) = 0;
}

double sub_178268@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  if (a1)
  {
    v7 = sub_2630B0();
    v8 = sub_2625C0();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = sub_262670();
    sub_179B10(v6);
    KeyPath = swift_getKeyPath();
    v18 = v7;
    v19 = KeyPath;
    v20 = v9;
    v21 = 1;
  }

  else
  {
    v11 = sub_2630B0();
    v12 = sub_2625C0();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    v13 = sub_262670();
    sub_179B10(v6);
    v14 = swift_getKeyPath();
    v18 = v11;
    v19 = v14;
    v20 = v13;
    v21 = 0;
  }

  sub_2EF0(&qword_317578, &unk_269A20);
  sub_3076C();
  sub_261F80();
  result = *&v22;
  v16 = v23;
  v17 = v24;
  *a2 = v22;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  return result;
}

uint64_t ShelfGridPaddleButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v43 = type metadata accessor for ShelfGridPaddleButtonView.PaddleOnArtworkButtonStyle(0);
  __chkstk_darwin(v43);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2EF0(&qword_3214A8, &qword_27EB80);
  v38 = *(v44 - 8);
  __chkstk_darwin(v44);
  v37 = &v36 - v4;
  v39 = sub_2EF0(&qword_3214B0, &qword_27EB88);
  __chkstk_darwin(v39);
  v42 = &v36 - v5;
  v40 = type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle(0);
  __chkstk_darwin(v40);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_3214B8, &qword_27EB90);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  v41 = sub_2EF0(&qword_3214C0, &qword_27EB98);
  v12 = *(v41 - 8);
  __chkstk_darwin(v41);
  v14 = &v36 - v13;
  LOBYTE(v13) = *v1;
  v15 = *(v1 + 1);
  v17 = *(v1 + 8);
  v16 = *(v1 + 16);
  v46 = v13;
  if (v15)
  {
    v47 = 1;
    v48 = v17;
    v49 = v16;

    sub_2EF0(&qword_3214C8, &qword_27EBA0);
    sub_178CC0();
    sub_263230();
    v54 = 0;
    sub_2631D0();
    v18 = v51;
    *v3 = v50;
    *(v3 + 1) = v18;
    v19 = v43;
    v20 = *(v43 + 20);
    *&v3[v20] = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v21 = sub_8E38(&qword_3214E8, &qword_3214B8, &qword_27EB90, &protocol conformance descriptor for Button<A>);
    v22 = sub_178D7C(&qword_3214F0, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnArtworkButtonStyle, &unk_27EE34);
    v23 = v37;
    sub_262A60();
    sub_178DEC(v3, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnArtworkButtonStyle);
    (*(v9 + 8))(v11, v8);
    v24 = v38;
    v25 = v44;
    (*(v38 + 16))(v42, v23, v44);
    swift_storeEnumTagMultiPayload();
    v26 = sub_178D7C(&qword_3214F8, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle, &unk_27EDFC);
    v50 = v8;
    v51 = v40;
    v52 = v21;
    v53 = v26;
    swift_getOpaqueTypeConformance2();
    v50 = v8;
    v51 = v19;
    v52 = v21;
    v53 = v22;
    swift_getOpaqueTypeConformance2();
    sub_261F80();
    return (*(v24 + 8))(v23, v25);
  }

  else
  {
    v47 = 0;
    v48 = v17;
    v49 = v16;

    sub_2EF0(&qword_3214C8, &qword_27EBA0);
    sub_178CC0();
    sub_263230();
    v54 = 0;
    sub_2631D0();
    v28 = v51;
    *v7 = v50;
    *(v7 + 1) = v28;
    v29 = v40;
    v30 = *(v40 + 20);
    *&v7[v30] = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v31 = *(v29 + 24);
    *&v7[v31] = swift_getKeyPath();
    sub_2EF0(&qword_316DC0, &qword_2691C0);
    swift_storeEnumTagMultiPayload();
    v32 = sub_8E38(&qword_3214E8, &qword_3214B8, &qword_27EB90, &protocol conformance descriptor for Button<A>);
    v33 = sub_178D7C(&qword_3214F8, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle, &unk_27EDFC);
    sub_262A60();
    sub_178DEC(v7, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle);
    (*(v9 + 8))(v11, v8);
    v34 = v41;
    (*(v12 + 16))(v42, v14, v41);
    swift_storeEnumTagMultiPayload();
    v50 = v8;
    v51 = v29;
    v52 = v32;
    v53 = v33;
    swift_getOpaqueTypeConformance2();
    v35 = sub_178D7C(&qword_3214F0, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnArtworkButtonStyle, &unk_27EE34);
    v50 = v8;
    v51 = v43;
    v52 = v32;
    v53 = v35;
    swift_getOpaqueTypeConformance2();
    sub_261F80();
    return (*(v12 + 8))(v14, v34);
  }
}

unint64_t sub_178CC0()
{
  result = qword_3214D0;
  if (!qword_3214D0)
  {
    sub_2F9C(&qword_3214C8, &qword_27EBA0);
    sub_8E38(&qword_3214D8, &qword_3214E0, &qword_27EBA8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3214D0);
  }

  return result;
}

uint64_t sub_178D7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_178DC4(uint64_t a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_1781AC(v2 | *(v1 + 16), a1);
}

uint64_t sub_178DEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_178E50()
{
  result = qword_321500;
  if (!qword_321500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321500);
  }

  return result;
}

unint64_t sub_178EA8()
{
  result = qword_321508;
  if (!qword_321508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321508);
  }

  return result;
}

unint64_t sub_178F50()
{
  result = qword_321510;
  if (!qword_321510)
  {
    sub_2F9C(&qword_321518, &unk_27EDB0);
    sub_2F9C(&qword_3214B8, &qword_27EB90);
    type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle(255);
    sub_8E38(&qword_3214E8, &qword_3214B8, &qword_27EB90, &protocol conformance descriptor for Button<A>);
    sub_178D7C(&qword_3214F8, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle, &unk_27EDFC);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for ShelfGridPaddleButtonView.PaddleOnArtworkButtonStyle(255);
    sub_178D7C(&qword_3214F0, type metadata accessor for ShelfGridPaddleButtonView.PaddleOnArtworkButtonStyle, &unk_27EE34);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321510);
  }

  return result;
}

uint64_t sub_179108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_2EF0(&qword_316F68, &unk_269C50);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_2EF0(&qword_316F70, &unk_2693C0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_179264(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_2EF0(&qword_316F68, &unk_269C50);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_2EF0(&qword_316F70, &unk_2693C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1793A0(uint64_t a1)
{
  sub_1715CC();
  if (v1 <= 0x3F)
  {
    sub_4BC68(319, &qword_316FE8, type metadata accessor for ColorConstants);
    if (v2 <= 0x3F)
    {
      sub_4BC68(319, &qword_316FF0, &type metadata accessor for ColorScheme);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_179488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_2EF0(&qword_316F68, &unk_269C50);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_179564(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_2EF0(&qword_316F68, &unk_269C50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_179614(uint64_t a1)
{
  sub_1715CC();
  if (v1 <= 0x3F)
  {
    sub_4BC68(319, &qword_316FE8, type metadata accessor for ColorConstants);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1796F4()
{
  v1 = (type metadata accessor for ShelfGridPaddleButtonView.PaddleOnArtworkButtonStyle(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_261180();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_179828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_179890()
{
  v1 = type metadata accessor for ShelfGridPaddleButtonView.PaddleOnFillButtonStyle(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_261180();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 24);
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_261180();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_179A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_179B10(uint64_t a1)
{
  v2 = sub_2EF0(&qword_318458, &unk_26B270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_179BC4()
{
  result = qword_321690;
  if (!qword_321690)
  {
    sub_2F9C(&qword_321658, &qword_27EE88);
    sub_179C7C();
    sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321690);
  }

  return result;
}

unint64_t sub_179C7C()
{
  result = qword_321698;
  if (!qword_321698)
  {
    sub_2F9C(&qword_321650, &qword_27EE80);
    sub_179D34();
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321698);
  }

  return result;
}

unint64_t sub_179D34()
{
  result = qword_3216A0;
  if (!qword_3216A0)
  {
    sub_2F9C(&qword_321648, &qword_27EE78);
    sub_4BEE4();
    sub_8E38(&qword_3216A8, &qword_3216B0, &unk_27EF30, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3216A0);
  }

  return result;
}

unint64_t sub_179DEC()
{
  result = qword_3216B8;
  if (!qword_3216B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3216B8);
  }

  return result;
}

uint64_t sub_179E84(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    sub_179DEC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_179F08()
{
  result = qword_3216C8;
  if (!qword_3216C8)
  {
    sub_2F9C(&qword_321678, &qword_27EEE8);
    sub_179FC0();
    sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3216C8);
  }

  return result;
}

unint64_t sub_179FC0()
{
  result = qword_3216D0;
  if (!qword_3216D0)
  {
    sub_2F9C(&qword_321670, &qword_27EEE0);
    sub_17A078();
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3216D0);
  }

  return result;
}

unint64_t sub_17A078()
{
  result = qword_3216D8;
  if (!qword_3216D8)
  {
    sub_2F9C(&qword_321668, &qword_27EED8);
    sub_4BEE4();
    sub_8E38(&qword_318EB8, &qword_318EC0, &unk_26C3B0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3216D8);
  }

  return result;
}

uint64_t ListItemAccessoryMoreButtonView.init(assetInfo:contextActionMenuView:showDownloadProgress:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a4;
  v25 = a2;
  v26 = a3;
  v24 = a1;
  v6 = sub_262730();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0x4034000000000000;
  v11 = enum case for Font.TextStyle.subheadline(_:);
  v12 = *(v7 + 104);
  (v12)(v10, enum case for Font.TextStyle.subheadline(_:), v6, v8);
  sub_40130();
  sub_2612E0();
  v13 = type metadata accessor for ListItemAccessoryMoreButtonView(0);
  v28 = 0x4000000000000000;
  v12(v10, v11, v6);
  sub_2612E0();
  v14 = v13[6];
  *(a5 + v14) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v15 = v13[7];
  *(a5 + v15) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v16 = a5 + v13[8];
  KeyPath = swift_getKeyPath();
  LOBYTE(v28) = 0;
  *v16 = KeyPath;
  *(v16 + 66) = 0;
  v18 = (a5 + v13[9]);
  type metadata accessor for ProfileRestrictions(0);
  sub_17CD94(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v18 = sub_261900();
  v18[1] = v19;
  result = sub_F7CC(v24, a5 + v13[10]);
  v21 = (a5 + v13[11]);
  v22 = v26;
  *v21 = v25;
  v21[1] = v22;
  *(a5 + v13[12]) = v27;
  return result;
}

uint64_t type metadata accessor for ListItemAccessoryMoreButtonView(uint64_t a1)
{
  result = qword_321758;
  if (!qword_321758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_17A40C@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ListItemAccessoryMoreButtonView(0);
  sub_8198(v1 + *(v10 + 24), v9, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_17CF44(v9, a1, type metadata accessor for SizeConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_17A5F8@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ListItemAccessoryMoreButtonView(0);
  sub_8198(v1 + *(v10 + 28), v9, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_17CF44(v9, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ListItemAccessoryMoreButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v48 = sub_2EF0(&qword_31B578, &qword_270C30);
  __chkstk_darwin(v48);
  v47 = &v38 - v2;
  v46 = type metadata accessor for SizeConstants.Environment(0);
  __chkstk_darwin(v46);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_262730();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v38 - v14);
  v43 = sub_2EF0(&qword_31B4C0, &qword_27C030);
  __chkstk_darwin(v43);
  v17 = &v38 - v16;
  v51 = sub_2EF0(&qword_3216E0, &qword_27EFC8);
  __chkstk_darwin(v51);
  v45 = (&v38 - v18);
  v49 = sub_2EF0(&qword_3216E8, &qword_27EFD0);
  __chkstk_darwin(v49);
  v50 = &v38 - v19;
  v20 = type metadata accessor for ListItemAccessoryMoreButtonView(0);
  sub_2E18(&v1[*(v20 + 40)], *&v1[*(v20 + 40) + 24]);
  if (sub_260870())
  {
    v21 = *&v1[*(v20 + 36)];
    if (!v21)
    {
      type metadata accessor for ProfileRestrictions(0);
      sub_17CD94(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
      result = sub_2618F0();
      __break(1u);
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v22 = v21;
    sub_260FF0();

    if ((v53 & 1) == 0)
    {
      swift_storeEnumTagMultiPayload();
      sub_8E38(&qword_3216F8, &qword_3216E0, &qword_27EFC8, &protocol conformance descriptor for HStack<A>);
      return sub_261F80();
    }
  }

  v40 = v15;
  v41 = v1;
  sub_17A40C(v15);
  (*(v5 + 104))(v9, enum case for Font.TextStyle.subheadline(_:), v4);
  v23 = v12;
  sub_17CE68(v15, v12, type metadata accessor for SizeConstants);
  v24 = v42;
  (*(v5 + 16))(v42, v9, v4);
  sub_17CE68(v12, v17, type metadata accessor for SizeConstants);
  v39 = type metadata accessor for SizeConstants.Environment;
  v25 = v12;
  v26 = v44;
  sub_17CE68(v25, v44, type metadata accessor for SizeConstants.Environment);
  v27 = *(v46 + 24);
  v28 = sub_1CF30(v24, v26 + v27);
  v29 = *(v5 + 8);
  v29(v24, v4);
  sub_17CEE4(v23, type metadata accessor for SizeConstants);
  v30 = sub_261690();
  (*(*(v30 - 8) + 8))(v26 + v27, v30);
  v31 = 1.0;
  if ((*&v28 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v31 = v28;
  }

  if ((~*&v28 & 0x7FF0000000000000) == 0)
  {
    v28 = v31;
  }

  *&v17[*(v43 + 36)] = v28;
  v29(v9, v4);
  sub_17CEE4(v40, type metadata accessor for SizeConstants);
  v32 = v47;
  sub_17CE68(v17, v47, v39);
  sub_8E80(v17, &qword_31B4C0, &qword_27C030);
  *(v32 + *(v48 + 36)) = v28;
  v33 = sub_21FA68(12.0);
  sub_8E80(v32, &qword_31B578, &qword_270C30);
  v34 = sub_261D30();
  v35 = v45;
  *v45 = v34;
  *(v35 + 8) = v33;
  *(v35 + 16) = 0;
  v36 = sub_2EF0(&qword_3216F0, &qword_27EFD8);
  sub_17AF04(v41, v35 + *(v36 + 44));
  sub_8198(v35, v50, &qword_3216E0, &qword_27EFC8);
  swift_storeEnumTagMultiPayload();
  sub_8E38(&qword_3216F8, &qword_3216E0, &qword_27EFC8, &protocol conformance descriptor for HStack<A>);
  sub_261F80();
  return sub_8E80(v35, &qword_3216E0, &qword_27EFC8);
}

uint64_t sub_17AF04@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a2;
  v141 = type metadata accessor for MoreButtonView(0);
  __chkstk_darwin(v141);
  v140 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v142 = (&v114 - v5);
  v132 = sub_2EF0(&qword_3217C0, &qword_27F0C0);
  __chkstk_darwin(v132);
  v7 = &v114 - v6;
  v139 = sub_2EF0(&qword_3217C8, &qword_27F0C8);
  __chkstk_darwin(v139);
  v133 = &v114 - v8;
  v131 = sub_2EF0(&qword_3217D0, &qword_27F0D0);
  __chkstk_darwin(v131);
  v114 = &v114 - v9;
  v126 = type metadata accessor for DeterminateProgressViewStyle(0);
  __chkstk_darwin(v126);
  v115 = (&v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = sub_2EF0(&qword_3217D8, &qword_27F0D8);
  v116 = *(v129 - 8);
  __chkstk_darwin(v129);
  v119 = &v114 - v11;
  v135 = sub_2EF0(&qword_3217E0, &qword_27F0E0);
  __chkstk_darwin(v135);
  v137 = &v114 - v12;
  v123 = sub_2EF0(&qword_3217E8, &qword_27F0E8);
  __chkstk_darwin(v123);
  v125 = &v114 - v13;
  v136 = sub_2EF0(&qword_3217F0, &unk_27F0F0);
  __chkstk_darwin(v136);
  v127 = &v114 - v14;
  v122 = type metadata accessor for InDeterminateProgressViewStyle(0);
  __chkstk_darwin(v122);
  v117 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_2EF0(&qword_3210A0, &unk_27E580);
  v121 = *(v124 - 8);
  __chkstk_darwin(v124);
  v120 = &v114 - v16;
  v17 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v17 - 8);
  v128 = (&v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = sub_2EF0(&qword_3217F8, &qword_27F100);
  v118 = *(v130 - 8);
  __chkstk_darwin(v130);
  v134 = &v114 - v19;
  v20 = sub_261C90();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2EF0(&qword_321800, &qword_27F108);
  __chkstk_darwin(v24 - 8);
  v138 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v145 = &v114 - v27;
  v146 = type metadata accessor for ListItemAccessoryMoreButtonView(0);
  v28 = &a1[v146[8]];
  *&v198[15] = *(v28 + 63);
  v29 = *(v28 + 3);
  v197[2] = *(v28 + 2);
  *v198 = v29;
  v30 = *(v28 + 1);
  v197[0] = *v28;
  v197[1] = v30;
  v144 = v20;
  if (v198[18])
  {
    v31 = *(v28 + 3);
    v194 = *(v28 + 2);
    v195 = v31;
    v196 = *(v28 + 32);
    v32 = *(v28 + 1);
    v192 = *v28;
    v193 = v32;
    v184 = v32;
    v185 = v194;
    v186[0] = v31;
    *(v186 + 15) = *(v28 + 63);
    v183 = v192;
    sub_8198(&v183, &v171, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v33 = v23;
    v34 = v21;
    v35 = sub_2624B0();
    sub_260D10();

    v21 = v34;
    v23 = v33;
    sub_261C80();
    v20 = v144;
    swift_getAtKeyPath();
    sub_8E80(v197, &qword_317F40, &qword_26E9D0);
    (*(v21 + 8))(v33, v20);
  }

  v187 = v192;
  v188 = v193;
  v189 = v194;
  v190 = v195;
  v191 = v196;
  if (*(&v192 + 1) && (v36 = v188, sub_8E80(&v187, &qword_317F48, &qword_26A9A0), v36 == 3) && a1[v146[12]] == 1)
  {
    v37 = v128;
    sub_17A5F8(v128);
    v38 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_17CEE4(v37, type metadata accessor for ColorConstants);
    sub_2EF0(&qword_318288, &unk_27F080);
    sub_261300();
    v39 = v183;
    sub_261300();
    v40 = v183;
    v41 = v120;
    sub_2612D0();
    LOBYTE(v171) = 1;
    v144 = v38;

    sub_2631D0();
    v42 = *(&v183 + 1);
    v43 = v117;
    *v117 = v183;
    *(v43 + 8) = v42;
    v44 = v122;
    v45 = *(v122 + 20);
    *(v43 + v45) = swift_getKeyPath();
    sub_2EF0(&qword_3179C0, &qword_269D60);
    swift_storeEnumTagMultiPayload();
    *(v43 + v44[6]) = v38;
    *(v43 + v44[7]) = 0;
    *(v43 + v44[8]) = v39;
    *(v43 + v44[9]) = v40;
    v46 = sub_8E38(&qword_3210A8, &qword_3210A0, &unk_27E580, &protocol conformance descriptor for ProgressView<A, B>);
    v47 = sub_17CD94(&qword_3210B0, type metadata accessor for InDeterminateProgressViewStyle, &protocol conformance descriptor for InDeterminateProgressViewStyle);
    v48 = v134;
    v49 = v124;
    sub_2629E0();

    sub_17CEE4(v43, type metadata accessor for InDeterminateProgressViewStyle);
    (*(v121 + 8))(v41, v49);
    v50 = v118;
    (*(v118 + 16))(v125, v48, v130);
    swift_storeEnumTagMultiPayload();
    *&v183 = v49;
    *(&v183 + 1) = v44;
    *&v184 = v46;
    *(&v184 + 1) = v47;
    swift_getOpaqueTypeConformance2();
    v51 = sub_17CD94(&qword_321818, type metadata accessor for DeterminateProgressViewStyle, &protocol conformance descriptor for DeterminateProgressViewStyle);
    *&v183 = v49;
    *(&v183 + 1) = v126;
    *&v184 = v46;
    *(&v184 + 1) = v51;
    swift_getOpaqueTypeConformance2();
    v52 = v127;
    v53 = v130;
    sub_261F80();
    sub_8198(v52, v137, &qword_3217F0, &unk_27F0F0);
    swift_storeEnumTagMultiPayload();
    sub_17CBF0();
    sub_17CDDC();
    v54 = v145;
    sub_261F80();
    sub_8E80(v52, &qword_3217F0, &unk_27F0F0);
    (*(v50 + 8))(v134, v53);
  }

  else
  {
    v134 = a1;
    *(v186 + 15) = *(v28 + 63);
    v55 = *(v28 + 3);
    v185 = *(v28 + 2);
    v186[0] = v55;
    v56 = *(v28 + 1);
    v183 = *v28;
    v184 = v56;
    if (BYTE2(v186[1]))
    {
      v57 = *(v28 + 3);
      v180 = *(v28 + 2);
      v181 = v57;
      v182 = *(v28 + 32);
      v58 = *(v28 + 1);
      v178 = *v28;
      v179 = v58;
      v172 = v58;
      v173 = v180;
      v174[0] = v57;
      *(v174 + 15) = *(v28 + 63);
      v171 = v178;
      sub_8198(&v171, &v157, &qword_317F48, &qword_26A9A0);
    }

    else
    {

      sub_264900();
      v59 = sub_2624B0();
      v20 = v144;
      sub_260D10();

      sub_261C80();
      swift_getAtKeyPath();
      sub_8E80(&v183, &qword_317F40, &qword_26E9D0);
      (*(v21 + 8))(v23, v20);
    }

    v175[0] = v178;
    v175[1] = v179;
    v175[2] = v180;
    v176 = v181;
    v177 = v182;
    if (!*(&v178 + 1) || (v60 = *(&v176 + 1), v61 = v177, sub_8E80(v175, &qword_317F48, &qword_26A9A0), (v61 & 1) != 0) || v134[v146[12]] != 1)
    {
      *(v174 + 15) = *(v28 + 63);
      v80 = *(v28 + 3);
      v173 = *(v28 + 2);
      v174[0] = v80;
      v81 = *(v28 + 1);
      v171 = *v28;
      v172 = v81;
      if (BYTE2(v174[1]))
      {
        v82 = *(v28 + 3);
        v168 = *(v28 + 2);
        v169 = v82;
        v170 = *(v28 + 32);
        v83 = *(v28 + 1);
        v166 = *v28;
        v167 = v83;
        v159 = v168;
        v160[0] = v82;
        *(v160 + 15) = *(v28 + 63);
        v157 = v166;
        v158 = v83;
        sub_8198(&v157, &v148, &qword_317F48, &qword_26A9A0);
      }

      else
      {

        sub_264900();
        v84 = sub_2624B0();
        sub_260D10();

        sub_261C80();
        swift_getAtKeyPath();
        sub_8E80(&v171, &qword_317F40, &qword_26E9D0);
        (*(v21 + 8))(v23, v20);
      }

      v54 = v145;
      v161 = v166;
      v162 = v167;
      v163 = v168;
      v164 = v169;
      v165 = v170;
      if (*(&v166 + 1))
      {
        v85 = v163;
        v86 = *(&v162 + 1);
        sub_8E80(&v161, &qword_317F48, &qword_26A9A0);
        if ((v85 & 1) == 0 || v86 >= 2)
        {
          *(v160 + 15) = *(v28 + 63);
          v87 = *(v28 + 3);
          v159 = *(v28 + 2);
          v160[0] = v87;
          v88 = *(v28 + 1);
          v157 = *v28;
          v158 = v88;
          if (BYTE2(v160[1]))
          {
            v89 = *(v28 + 3);
            v154 = *(v28 + 2);
            v155 = v89;
            v156 = *(v28 + 32);
            v90 = *(v28 + 1);
            v152 = *v28;
            v153 = v90;
            v150 = v154;
            v151[0] = v89;
            *(v151 + 15) = *(v28 + 63);
            v148 = v152;
            v149 = v90;
            sub_8198(&v148, v147, &qword_317F48, &qword_26A9A0);
          }

          else
          {

            sub_264900();
            v91 = sub_2624B0();
            sub_260D10();

            sub_261C80();
            swift_getAtKeyPath();
            sub_8E80(&v157, &qword_317F40, &qword_26E9D0);
            (*(v21 + 8))(v23, v144);
          }

          v148 = v152;
          v149 = v153;
          v150 = v154;
          v151[0] = v155;
          LOWORD(v151[1]) = v156;
          if (*(&v152 + 1))
          {
            v92 = v7;
            v93 = v149;
            sub_8E80(&v148, &qword_317F48, &qword_26A9A0);
            if (v93 < 2)
            {
              v147[0] = sub_2630B0();
              sub_262650();
              v94 = v114;
              sub_262A20();

              v95 = v128;
              a1 = v134;
              sub_17A5F8(v128);
              v96 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
              sub_17CEE4(v95, type metadata accessor for ColorConstants);
              KeyPath = swift_getKeyPath();
              v98 = (v94 + *(v131 + 36));
              *v98 = KeyPath;
              v98[1] = v96;
              sub_8198(v94, v92, &qword_3217D0, &qword_27F0D0);
              swift_storeEnumTagMultiPayload();
              sub_17CB08();
              v99 = v133;
              sub_261F80();
              sub_8198(v99, v137, &qword_3217C8, &qword_27F0C8);
              swift_storeEnumTagMultiPayload();
              sub_17CBF0();
              sub_17CDDC();
              sub_261F80();
              v54 = v145;
              sub_8E80(v99, &qword_3217C8, &qword_27F0C8);
              sub_8E80(v94, &qword_3217D0, &qword_27F0D0);
              goto LABEL_29;
            }

            v7 = v92;
          }
        }
      }

      *v7 = xmmword_26F1B0;
      v7[16] = 0;
      *(v7 + 3) = _swiftEmptyArrayStorage;
      swift_storeEnumTagMultiPayload();
      sub_17CB08();
      v100 = v133;
      sub_261F80();
      sub_8198(v100, v137, &qword_3217C8, &qword_27F0C8);
      swift_storeEnumTagMultiPayload();
      sub_17CBF0();
      sub_17CDDC();
      sub_261F80();
      sub_8E80(v100, &qword_3217C8, &qword_27F0C8);
      a1 = v134;
      goto LABEL_29;
    }

    v62 = v128;
    a1 = v134;
    sub_17A5F8(v128);
    v63 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_17CEE4(v62, type metadata accessor for ColorConstants);
    sub_2EF0(&qword_318288, &unk_27F080);
    sub_261300();
    v64 = v171;
    sub_261300();
    v65 = v171;
    *&v171 = v60;
    BYTE8(v171) = 0;
    *&v157 = 0x3FF0000000000000;
    sub_40130();
    v66 = v120;
    sub_2612C0();
    v67 = swift_getKeyPath();
    v68 = v115;
    *v115 = v67;
    sub_2EF0(&qword_316C18, &unk_26F830);
    swift_storeEnumTagMultiPayload();
    v69 = v126;
    v70 = *(v126 + 20);
    *(v68 + v70) = swift_getKeyPath();
    sub_2EF0(&qword_3179C0, &qword_269D60);
    swift_storeEnumTagMultiPayload();
    v71 = v68 + v69[6];
    *v71 = 0;
    *(v71 + 8) = 0;
    *(v71 + 16) = 1;
    *(v68 + v69[7]) = v63;
    *(v68 + v69[8]) = 0;
    *(v68 + v69[9]) = v64;
    *(v68 + v69[10]) = v65;
    v72 = sub_8E38(&qword_3210A8, &qword_3210A0, &unk_27E580, &protocol conformance descriptor for ProgressView<A, B>);
    v73 = sub_17CD94(&qword_321818, type metadata accessor for DeterminateProgressViewStyle, &protocol conformance descriptor for DeterminateProgressViewStyle);
    v74 = v119;
    v75 = v124;
    sub_2629E0();
    sub_17CEE4(v68, type metadata accessor for DeterminateProgressViewStyle);
    (*(v121 + 8))(v66, v75);
    v76 = v116;
    (*(v116 + 16))(v125, v74, v129);
    swift_storeEnumTagMultiPayload();
    v77 = sub_17CD94(&qword_3210B0, type metadata accessor for InDeterminateProgressViewStyle, &protocol conformance descriptor for InDeterminateProgressViewStyle);
    *&v171 = v75;
    *(&v171 + 1) = v122;
    *&v172 = v72;
    *(&v172 + 1) = v77;
    swift_getOpaqueTypeConformance2();
    *&v171 = v75;
    *(&v171 + 1) = v69;
    *&v172 = v72;
    *(&v172 + 1) = v73;
    swift_getOpaqueTypeConformance2();
    v78 = v127;
    v79 = v129;
    sub_261F80();
    sub_8198(v78, v137, &qword_3217F0, &unk_27F0F0);
    swift_storeEnumTagMultiPayload();
    sub_17CBF0();
    sub_17CDDC();
    v54 = v145;
    sub_261F80();
    sub_8E80(v78, &qword_3217F0, &unk_27F0F0);
    (*(v76 + 8))(v119, v79);
  }

LABEL_29:
  v101 = v146;
  v102 = v141;
  v103 = v142;
  sub_30CC(&a1[v146[10]], v142 + *(v141 + 24));
  v104 = &a1[v101[11]];
  v106 = *v104;
  v105 = *(v104 + 1);
  *v103 = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v107 = *(v102 + 20);
  *(v103 + v107) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v108 = (v103 + *(v102 + 28));
  *v108 = v106;
  v108[1] = v105;
  v109 = v138;
  sub_8198(v54, v138, &qword_321800, &qword_27F108);
  v110 = v140;
  sub_17CE68(v103, v140, type metadata accessor for MoreButtonView);
  v111 = v143;
  sub_8198(v109, v143, &qword_321800, &qword_27F108);
  v112 = sub_2EF0(&qword_321828, &qword_27F110);
  sub_17CE68(v110, v111 + *(v112 + 48), type metadata accessor for MoreButtonView);

  sub_17CEE4(v103, type metadata accessor for MoreButtonView);
  sub_8E80(v54, &qword_321800, &qword_27F108);
  sub_17CEE4(v110, type metadata accessor for MoreButtonView);
  return sub_8E80(v109, &qword_321800, &qword_27F108);
}

uint64_t sub_17C608(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_318288, &unk_27F080);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[10] + 24);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_17C798(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_318288, &unk_27F080);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_2EF0(&qword_317BF8, &unk_26F930);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = sub_2EF0(&qword_316F68, &unk_269C50);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[10] + 24) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_17C910(uint64_t a1)
{
  sub_4BCBC(319);
  if (v1 <= 0x3F)
  {
    sub_14B364(319, &qword_317C68, type metadata accessor for SizeConstants);
    if (v2 <= 0x3F)
    {
      sub_14B364(319, &qword_316FE8, type metadata accessor for ColorConstants);
      if (v3 <= 0x3F)
      {
        sub_869BC(319);
        if (v4 <= 0x3F)
        {
          sub_95884(319);
          if (v5 <= 0x3F)
          {
            sub_44744();
            if (v6 <= 0x3F)
            {
              sub_16D28();
              if (v7 <= 0x3F)
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

unint64_t sub_17CA50()
{
  result = qword_3217B0;
  if (!qword_3217B0)
  {
    sub_2F9C(&qword_3217B8, &qword_27F0B8);
    sub_8E38(&qword_3216F8, &qword_3216E0, &qword_27EFC8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3217B0);
  }

  return result;
}

unint64_t sub_17CB08()
{
  result = qword_321808;
  if (!qword_321808)
  {
    sub_2F9C(&qword_3217D0, &qword_27F0D0);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321808);
  }

  return result;
}

unint64_t sub_17CBF0()
{
  result = qword_321810;
  if (!qword_321810)
  {
    sub_2F9C(&qword_3217F0, &unk_27F0F0);
    sub_2F9C(&qword_3210A0, &unk_27E580);
    type metadata accessor for InDeterminateProgressViewStyle(255);
    sub_8E38(&qword_3210A8, &qword_3210A0, &unk_27E580, &protocol conformance descriptor for ProgressView<A, B>);
    sub_17CD94(&qword_3210B0, type metadata accessor for InDeterminateProgressViewStyle, &protocol conformance descriptor for InDeterminateProgressViewStyle);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for DeterminateProgressViewStyle(255);
    sub_17CD94(&qword_321818, type metadata accessor for DeterminateProgressViewStyle, &protocol conformance descriptor for DeterminateProgressViewStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321810);
  }

  return result;
}

uint64_t sub_17CD94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_17CDDC()
{
  result = qword_321820;
  if (!qword_321820)
  {
    sub_2F9C(&qword_3217C8, &qword_27F0C8);
    sub_17CB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321820);
  }

  return result;
}

uint64_t sub_17CE68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_17CEE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_17CF44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FlowAction.PageDestination.pageMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 57);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t FlowAction.PageDestination.init(intent:pageMetadata:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  result = sub_F7CC(a1, a3);
  *(a3 + 40) = v4;
  *(a3 + 48) = v5;
  *(a3 + 56) = v6;
  *(a3 + 57) = v7;
  return result;
}

unint64_t sub_17D018(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_301070;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_17D068(unsigned __int8 a1)
{
  v1 = 1701273968;
  v2 = 0x6174654D65676170;
  v3 = 0xD000000000000016;
  if (a1 != 3)
  {
    v3 = 0xD000000000000012;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x746E65746E69;
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

unint64_t sub_17D10C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_301108;
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

unint64_t sub_17D15C(unsigned __int8 a1)
{
  v1 = 12383;
  v2 = 0xD000000000000016;
  if (a1 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (a1)
  {
    v1 = 0x6174654D65676170;
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

uint64_t sub_17D1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_17D254(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_17D2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_17D330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

unint64_t sub_17D3A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_17D018(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_17D3D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_17D068(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_17D428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_17D064(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_17D458@<X0>(_BYTE *a2@<X8>)
{
  result = sub_17EC78();
  *a2 = result;
  return result;
}

uint64_t sub_17D484(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_17D4D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_17D52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_17D5A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_17D60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_17D67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

unint64_t sub_17D6EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_17D10C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_17D724@<X0>(unint64_t *a1@<X8>)
{
  result = sub_17D15C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_17D760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_17D158(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_17D790@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D40E4();
  *a1 = result;
  return result;
}

uint64_t sub_17D7BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_17D810(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t FlowAction.PageDestination.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v47 = a4;
  _s15PageDestinationV16LegacyCodingKeysOMa(255, a2, a3, a5);
  WitnessTable = swift_getWitnessTable();
  v51 = sub_264E20();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v9 = &v46 - v8;
  v53 = a2;
  v48 = a3;
  _s15PageDestinationV10CodingKeysOMa(255, a2, a3, v10);
  swift_getWitnessTable();
  v11 = sub_264E20();
  v50 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = a1[3];
  v55 = a1;
  sub_2E18(a1, v14);
  v15 = v54;
  sub_265120();
  if (v15)
  {
    return sub_3080(v55);
  }

  v54 = v9;
  v16 = v51;
  v17 = v50;
  v18 = v53;
  LOBYTE(v56) = 0;
  v19 = v13;
  if (sub_264E10())
  {
    LOBYTE(v56) = 0;
    v22 = v54;
    sub_264D50();
    WitnessTable = v19;
    type metadata accessor for CodeAnyIntentModel(0, v18, v25, v26);
    v63 = 0;
    swift_getWitnessTable();
    sub_264DF0();
    sub_F7CC(&v56, v58);
    LOBYTE(v56) = 2;
    if (sub_264E10())
    {
      LOBYTE(v56) = 3;
      v27 = sub_264D70();
      v28 = v22;
      v29 = WitnessTable;
      v42 = v41;
      (*(v49 + 8))(v28, v16);
      (*(v17 + 8))(v29, v11);
      LOBYTE(v34) = 0;
      v59 = v27;
      v60 = v42;
      goto LABEL_14;
    }

    sub_2EF0(&qword_321830, &qword_27F1B0);
    v63 = 1;
    sub_17E620(&qword_321838, &qword_321830, &qword_27F1B0, sub_17E080);
    v39 = v54;
    sub_264DB0();
    (*(v49 + 8))(v39, v16);
    (*(v17 + 8))(WitnessTable, v11);
    v35 = *(&v56 + 1);
    if (*(&v56 + 1) != 2)
    {
      v36 = v56;
      v37 = v57;
      v38 = v47;
      if (*(&v56 + 1) == 1)
      {
        sub_17E1B8(v56, 1);
        LOBYTE(v37) = 0;
        v35 = 0;
        v36 = 0;
        LOBYTE(v34) = 3;
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    LOBYTE(v37) = 0;
    v35 = 0;
    v36 = 0;
    goto LABEL_21;
  }

  type metadata accessor for CodeAnyIntentModel(0, v18, v20, v21);
  v23 = v13;
  v63 = 1;
  swift_getWitnessTable();
  sub_264DF0();
  v24 = v17;
  sub_F7CC(&v56, v58);
  LOBYTE(v56) = 3;
  if ((sub_264E10() & 1) == 0)
  {
    sub_2EF0(&qword_321830, &qword_27F1B0);
    v63 = 2;
    sub_17E620(&qword_321838, &qword_321830, &qword_27F1B0, sub_17E080);
    sub_264DB0();
    (*(v17 + 8))(v23, v11);
    v35 = *(&v56 + 1);
    if (*(&v56 + 1) != 2)
    {
      v36 = v56;
      v37 = v57;
      v38 = v47;
      if (*(&v56 + 1) == 1)
      {
        sub_17E1B8(v56, 1);
        LOBYTE(v37) = 0;
        v36 = 0;
        v35 = 0;
        LOBYTE(v34) = 3;
LABEL_22:
        v43 = v48;
        v59 = v36;
        v60 = v35;
        v61 = v37 & 1;
        goto LABEL_23;
      }

LABEL_18:
      v34 = v37 >> 8;
      goto LABEL_22;
    }

    LOBYTE(v37) = 0;
    v36 = 0;
    v35 = 0;
LABEL_21:
    LOBYTE(v34) = 3;
    v38 = v47;
    goto LABEL_22;
  }

  LOBYTE(v56) = 4;
  v30 = sub_264D70();
  v32 = v31;
  (*(v24 + 8))(v19, v11);
  LOBYTE(v34) = 0;
  v59 = v30;
  v60 = v32;
LABEL_14:
  v61 = 1;
  v38 = v47;
  v43 = v48;
LABEL_23:
  v62 = v34;
  v44 = type metadata accessor for FlowAction.PageDestination(0, v18, v43, v33);
  v45 = *(v44 - 8);
  (*(v45 + 16))(v38, v58, v44);
  sub_3080(v55);
  return (*(v45 + 8))(v58, v44);
}

uint64_t PageMetadata.init(title:shouldReportFigaro:navigationBarTitleStyle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 17) = v5;
  return result;
}

void static PageMetadata.fallback.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 768;
}

unint64_t sub_17E080()
{
  result = qword_321840;
  if (!qword_321840)
  {
    sub_2F9C(&qword_321848, &qword_27F1B8);
    sub_17E104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321840);
  }

  return result;
}

unint64_t sub_17E104()
{
  result = qword_321850;
  if (!qword_321850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321850);
  }

  return result;
}

double sub_17E1B8(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_17E1C8(a1, a2);
  }

  return result;
}

double sub_17E1C8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_17E1FC()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
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

uint64_t sub_17E25C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_17EC80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_17E284(uint64_t a1)
{
  v2 = sub_17E5CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_17E2C0(uint64_t a1)
{
  v2 = sub_17E5CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void PageMetadata.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_321858, &qword_27F1C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - v7;
  sub_2E18(a1, a1[3]);
  sub_17E5CC();
  sub_265120();
  if (!v2)
  {
    sub_2EF0(&qword_321868, &unk_2891C0);
    v14 = 0;
    sub_17E620(&qword_321870, &qword_321868, &unk_2891C0, sub_17E69C);
    sub_264DF0();
    v10 = v12[0];
    v9 = v12[1];
    sub_2EF0(&qword_321880, &qword_27F1C8);
    v14 = 1;
    sub_17E718();
    sub_264DF0();
    v13 = LOBYTE(v12[0]);
    LOBYTE(v12[0]) = 2;
    sub_2EF0(&qword_321890, &qword_27F1D0);
    sub_17E794();
    sub_264DB0();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
    if (v14 == 4)
    {
      v11 = 3;
    }

    *a2 = v10;
    *(a2 + 8) = v9;
    *(a2 + 16) = v13;
    *(a2 + 17) = v11;
  }

  sub_3080(a1);
}

unint64_t sub_17E5CC()
{
  result = qword_321860;
  if (!qword_321860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321860);
  }

  return result;
}

uint64_t sub_17E620(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_17E69C()
{
  result = qword_321878;
  if (!qword_321878)
  {
    sub_2F9C(&qword_316DD0, &qword_2692C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321878);
  }

  return result;
}

unint64_t sub_17E718()
{
  result = qword_321888;
  if (!qword_321888)
  {
    sub_2F9C(&qword_321880, &qword_27F1C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321888);
  }

  return result;
}

unint64_t sub_17E794()
{
  result = qword_321898[0];
  if (!qword_321898[0])
  {
    sub_2F9C(&qword_321890, &qword_27F1D0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_321898);
  }

  return result;
}

uint64_t sub_17E7F8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_17E834(uint64_t a1)
{
  result = sub_17E104();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_17E874@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

void sub_17E880(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_17E8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_17E930(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_17E94C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_17E994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_17E9E4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_17E9F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
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

uint64_t sub_17EA54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_17EB04()
{
  result = qword_321A20;
  if (!qword_321A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321A20);
  }

  return result;
}

unint64_t sub_17EB5C()
{
  result = qword_321A28;
  if (!qword_321A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321A28);
  }

  return result;
}

unint64_t sub_17EBB4()
{
  result = qword_321A30;
  if (!qword_321A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321A30);
  }

  return result;
}

uint64_t sub_17EC80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000293D10 == a2 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000000293D30 == a2)
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

double SwooshItemViewModel.coverViewModel.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_2E18(v1, v1[3]);
  sub_260950();
  sub_30CC(v1, v8);
  CoverViewModel.CoverImageInfo.init(assetInfo:)(v8, v9);
  *(&v15 + 1) = 0x4068000000000000;
  sub_230A8(v9);
  v3 = v13;
  a1[4] = v12;
  a1[5] = v3;
  v4 = v15;
  a1[6] = v14;
  a1[7] = v4;
  v5 = v9[1];
  *a1 = v9[0];
  a1[1] = v5;
  result = *&v10;
  v7 = v11;
  a1[2] = v10;
  a1[3] = v7;
  return result;
}

uint64_t _CodeAnyComponentModel_Many.description.getter()
{
  sub_2EF0(&qword_317250, &unk_2697A0);

  return sub_2646A0();
}

void _CodeAnyComponentModel_Many.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  sub_30CC(a1, v13);
  sub_752E8();
  v5 = sub_264700();
  if (v2)
  {
    sub_3080(a1);
  }

  else
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      v14 = _swiftEmptyArrayStorage;
      v7 = v5;
      sub_2DA64(0, v6, 0);
      v8 = v14;
      v9 = v7 + 32;
      do
      {
        sub_7568C(v9, v12);
        sub_30CC(v12, v13);
        sub_756E8(v12);
        v14 = v8;
        v11 = v8[2];
        v10 = v8[3];
        if (v11 >= v10 >> 1)
        {
          sub_2DA64((v10 > 1), v11 + 1, 1);
          v8 = v14;
        }

        v8[2] = v11 + 1;
        sub_F7CC(v13, &v8[5 * v11 + 4]);
        v9 += 40;
        --v6;
      }

      while (v6);
      sub_3080(a1);

      *a2 = v8;
    }

    else
    {

      sub_3080(a1);
      *a2 = _swiftEmptyArrayStorage;
    }
  }
}

void _CodeAnyComponentModel_Many.init(_partiallyFrom:)(void *a1@<X0>, void *a2@<X8>)
{
  sub_30CC(a1, v12);
  sub_752E8();
  v4 = sub_2646E0();
  v5 = *(v4 + 16);
  if (v5)
  {
    v11 = _swiftEmptyArrayStorage;
    sub_2DA64(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = v4 + 32;
    do
    {
      sub_7568C(v7, v10);
      sub_30CC(v10, v12);
      sub_756E8(v10);
      v11 = v6;
      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        sub_2DA64((v8 > 1), v9 + 1, 1);
        v6 = v11;
      }

      v6[2] = v9 + 1;
      sub_F7CC(v12, &v6[5 * v9 + 4]);
      v7 += 40;
      --v5;
    }

    while (v5);
    sub_3080(a1);
  }

  else
  {

    sub_3080(a1);
    v6 = _swiftEmptyArrayStorage;
  }

  *a2 = v6;
}

uint64_t LocalizerRequest.init(from:)(void *a1)
{
  sub_2E18(a1, a1[3]);
  sub_2650F0();
  if (!v1)
  {
    sub_2E18(v4, v4[3]);
    sub_264F20();
    sub_260BC0();

    sub_3080(v4);
  }

  return sub_3080(a1);
}

uint64_t SymbolImage.init(kind:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(type metadata accessor for SymbolImage(0) + 20);
  *&a2[v4] = swift_getKeyPath();
  sub_2EF0(&qword_3190A0, &unk_283550);
  result = swift_storeEnumTagMultiPayload();
  *a2 = v3;
  return result;
}

uint64_t type metadata accessor for SymbolImage(uint64_t a1)
{
  result = qword_321AB8;
  if (!qword_321AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SymbolImage.Kind.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v4 = 0x6B72616D78;
    if (v1 != 6)
    {
      v4 = 0xD000000000000011;
    }

    v5 = 0xD000000000000013;
    if (v1 == 4)
    {
      v5 = 1937075312;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0x72616D6B63656863;
    if (!*v0)
    {
      v2 = 0xD000000000000010;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return 0x73697370696C6C65;
    }
  }
}

double View.symbol(imageScale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_262A90();

  return result;
}

uint64_t SymbolImage.Kind.accessibilityText(localizer:)(uint64_t a1)
{
  v3 = sub_260BD0();
  __chkstk_darwin(v3 - 8);
  v5[47] = *v1;
  SymbolImage.Kind.accessibilityLocalizable.getter();
  sub_30CC(a1, v5);
  return sub_2627B0();
}

uint64_t SymbolImage.Kind.image.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2630B0();
  *a1 = result;
  return result;
}

uint64_t SymbolImage.Kind.accessibilityLocalizable.getter()
{
  v0 = sub_264010();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_263FA0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_263F90();
  (*(v1 + 104))(v3, enum case for LocalizerLookupStrategy.default(_:), v0);
  sub_260B80();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

BooksUI::SymbolImage::Kind_optional __swiftcall SymbolImage.Kind.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_301188;
  v8._object = object;
  v5 = sub_264D40(v4, v8);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t sub_17FA88@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_3190A0, &unk_283550);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SymbolImage(0);
  sub_180884(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2630F0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_17FCAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v7 = 0xE500000000000000;
    v8 = 0x6B72616D78;
    if (v2 != 6)
    {
      v8 = 0xD000000000000011;
      v7 = 0x800000000028FD40;
    }

    v9 = 0xE400000000000000;
    v10 = 0xD000000000000013;
    if (v2 == 4)
    {
      v10 = 1937075312;
    }

    else
    {
      v9 = 0x800000000028FD20;
    }

    if (*v1 <= 5u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;
    }

    if (*v1 <= 5u)
    {
      v7 = v9;
    }

    *a1 = v11;
    a1[1] = v7;
  }

  else
  {
    v3 = 0xE90000000000006BLL;
    v4 = 0x72616D6B63656863;
    v5 = 0xE800000000000000;
    if (v2 != 2)
    {
      v5 = 0xEF656C637269632ELL;
    }

    if (!*v1)
    {
      v4 = 0xD000000000000010;
      v3 = 0x800000000028FCE0;
    }

    if (*v1 <= 1u)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0x73697370696C6C65;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v6;
    a1[1] = v3;
  }
}

uint64_t SymbolImage.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2630B0();
  v3 = (a1 + *(sub_2EF0(&qword_318560, &unk_26B530) + 36));
  v4 = sub_2EF0(&qword_317530, &qword_26FCC0);
  sub_17FA88((v3 + *(v4 + 28)));
  result = swift_getKeyPath();
  *v3 = result;
  *a1 = v2;
  return result;
}

uint64_t sub_17FFAC()
{
  v0 = sub_2630F0();
  sub_B600(v0, qword_321A38);
  v1 = sub_B080(v0, qword_321A38);
  v2 = enum case for Image.Scale.small(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_180034@<X0>(uint64_t a1@<X8>)
{
  if (qword_315A68 != -1)
  {
    swift_once();
  }

  v2 = sub_2630F0();
  v3 = sub_B080(v2, qword_321A38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1800DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_180958();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

void *sub_180140()
{
  sub_1808F4();

  return sub_261CB0();
}

uint64_t sub_180208(uint64_t a1)
{
  v2 = sub_2630F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  sub_1808F4();
  sub_261CC0();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_180398(uint64_t a1)
{
  v2 = sub_2630F0();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_261980();
}

unint64_t sub_180468()
{
  result = qword_321A50;
  if (!qword_321A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321A50);
  }

  return result;
}

uint64_t sub_1804EC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 >= 8)
    {
      return v4 - 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_2EF0(&qword_321A58, &unk_27F9A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1805B4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = sub_2EF0(&qword_321A58, &unk_27F9A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_180660(uint64_t a1)
{
  sub_1806DC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1806DC(uint64_t a1)
{
  if (!qword_321AC8)
  {
    sub_2630F0();
    v1 = sub_2611E0();
    if (!v2)
    {
      atomic_store(v1, &qword_321AC8);
    }
  }
}

unint64_t sub_180754()
{
  result = qword_317590;
  if (!qword_317590)
  {
    sub_2F9C(&qword_317530, &qword_26FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317590);
  }

  return result;
}

uint64_t sub_1807B8(uint64_t *a1)
{
  sub_2F9C(&qword_317530, &qword_26FCC0);
  sub_261730();
  sub_180754();
  return swift_getWitnessTable();
}

unint64_t sub_180830()
{
  result = qword_321AF8;
  if (!qword_321AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321AF8);
  }

  return result;
}

uint64_t sub_180884(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_3190A0, &unk_283550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1808F4()
{
  result = qword_321B00;
  if (!qword_321B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321B00);
  }

  return result;
}

unint64_t sub_180958()
{
  result = qword_321B08[0];
  if (!qword_321B08[0])
  {
    sub_2630F0();
    result = swift_getWitnessTable();
    atomic_store(result, qword_321B08);
  }

  return result;
}

uint64_t sub_1809B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1809EC(uint64_t a1, unsigned int a2)
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

uint64_t sub_180A48(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AccessibilityConditionalTraits(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AccessibilityConditionalTraits(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_180B58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_180BA0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_180C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_260A70();
  sub_260A50();
  sub_182550(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_182550(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

uint64_t sub_180D40@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_261E20();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v14[-v8];
  v16 = sub_2EF0(&qword_321BE8, &qword_27FCC8);
  __chkstk_darwin(v16);
  v11 = &v14[-v10];
  if (a1)
  {
    sub_261E00();
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
    sub_182550(&qword_321BC0, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
    v15 = a1;
    sub_2EF0(&qword_321BC8, &qword_27FCB8);
    sub_8E38(&qword_321BD0, &qword_321BC8, &qword_27FCB8, &protocol conformance descriptor for [A]);
    LOBYTE(a1) = v15;
    sub_264B10();
  }

  sub_2EF0(&qword_321BF0, &qword_27FCD0);
  sub_8E38(&qword_321BF8, &qword_321BF0, &qword_27FCD0, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_262CE0();
  v12 = *(v4 + 8);
  v12(v9, v3);
  if (a1)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_182550(&qword_321BC0, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
    sub_2EF0(&qword_321BC8, &qword_27FCB8);
    sub_8E38(&qword_321BD0, &qword_321BC8, &qword_27FCB8, &protocol conformance descriptor for [A]);
    sub_264B10();
  }

  else
  {
    sub_261E00();
  }

  sub_261720();
  v12(v6, v3);
  return sub_8E80(v11, &qword_321BE8, &qword_27FCC8);
}

uint64_t sub_1810DC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v14 = a3;
  v15 = a4;
  v17 = a2;
  v16 = a1;
  v6 = sub_2EF0(&qword_321BB8, &qword_27FCB0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  v9 = sub_261E20();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _swiftEmptyArrayStorage;
  sub_182550(&qword_321BC0, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_2EF0(&qword_321BC8, &qword_27FCB8);
  sub_8E38(&qword_321BD0, &qword_321BC8, &qword_27FCB8, &protocol conformance descriptor for [A]);
  sub_264B10();
  sub_2EF0(&qword_321BD8, &qword_27FCC0);
  sub_8E38(&qword_321BE0, &qword_321BD8, &qword_27FCC0, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_262CE0();
  result = (*(v10 + 8))(v12, v9);
  if (v17)
  {
    v18 = v14;
    v19 = v15;
    sub_10A84();
    sub_2616F0();
    sub_8E80(a5, &qword_321BB8, &qword_27FCB0);
    return sub_22148(v8, a5, &qword_321BB8, &qword_27FCB0);
  }

  return result;
}

uint64_t sub_1813D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = a2;
  v16 = a1;
  v15 = sub_2EF0(&qword_321C20, &qword_27FD78);
  __chkstk_darwin(v15);
  v7 = &v13 - v6;
  v8 = sub_261E20();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _swiftEmptyArrayStorage;
  sub_182550(&qword_321BC0, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_2EF0(&qword_321BC8, &qword_27FCB8);
  sub_8E38(&qword_321BD0, &qword_321BC8, &qword_27FCB8, &protocol conformance descriptor for [A]);
  sub_264B10();
  sub_2EF0(&qword_321C28, &qword_27FD80);
  sub_8E38(&qword_321C30, &qword_321C28, &qword_27FD80, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_262CE0();
  result = (*(v9 + 8))(v11, v8);
  if (a3)
  {
    v17 = v14;
    v18 = a3;
    sub_10A84();
    sub_2616F0();
    sub_8E80(a4, &qword_321C20, &qword_27FD78);
    return sub_22148(v7, a4, &qword_321C20, &qword_27FD78);
  }

  return result;
}

uint64_t sub_181688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v45 = a3;
  v46 = a4;
  v43 = a1;
  v44 = a2;
  v47 = a7;
  v41 = a5;
  v42 = a6;
  type metadata accessor for AccessibilityHintFromPreference(255, a5, a6, a4);
  swift_getWitnessTable();
  v7 = sub_2620B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v39 - v10;
  sub_261730();
  sub_182114();
  sub_262330();
  v12 = sub_261730();
  v13 = sub_260A70();
  v14 = sub_260A50();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1821C8();
  v56 = WitnessTable;
  v57 = v16;
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v54 = v17;
  v55 = v18;
  v40 = v12;
  v19 = swift_getWitnessTable();
  v39 = v19;
  v20 = sub_182550(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  v21 = sub_182550(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  v48 = v12;
  v49 = v13;
  v50 = v14;
  v51 = v19;
  v52 = v20;
  v53 = v21;
  v22 = sub_260A90();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v29 = &v39 - v28;
  v30 = v11;
  (*(v8 + 16))(v11, v43, v7, v27);
  v31 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v32 = (v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = v42;
  *(v33 + 16) = v41;
  *(v33 + 24) = v34;
  (*(v8 + 32))(v33 + v31, v30, v7);
  v35 = (v33 + v32);
  v36 = v45;
  *v35 = v44;
  v35[1] = v36;
  v35[2] = v46;

  sub_180C1C(sub_1822F8, v33, v40, v39);
  swift_getWitnessTable();
  sub_1609C();
  v37 = *(v23 + 8);
  v37(v25, v22);
  sub_1609C();
  return (v37)(v29, v22);
}

uint64_t sub_181AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v33 = a5;
  v34 = a3;
  v35 = a7;
  v36 = a2;
  v37 = a1;
  v43 = a8;
  type metadata accessor for AccessibilityHintFromPreference(255, a6, a7, a4);
  swift_getWitnessTable();
  sub_2620B0();
  v12 = sub_261730();
  v42 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v38 = sub_182114();
  v40 = sub_262330();
  v15 = sub_261730();
  v41 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v39 = &v32 - v19;
  *&v48 = a3;
  *(&v48 + 1) = a4;
  v49 = a5;
  sub_2EF0(&qword_317300, &unk_269840);
  sub_2631E0();
  v20 = v50;
  v21 = v51;
  WitnessTable = swift_getWitnessTable();
  *&v48 = v20;
  *(&v48 + 1) = v21;
  sub_262E30();

  sub_30CC(v37, &v48);
  v23 = swift_allocObject();
  v24 = v34;
  v25 = v35;
  v23[2] = a6;
  v23[3] = v25;
  v23[4] = v24;
  v23[5] = a4;
  v23[6] = v33;
  sub_F7CC(&v48, (v23 + 7));
  v26 = sub_1821C8();
  v46 = WitnessTable;
  v47 = v26;

  v27 = swift_getWitnessTable();
  sub_262C20();

  (*(v42 + 8))(v14, v12);
  v28 = swift_getWitnessTable();
  v44 = v27;
  v45 = v28;
  swift_getWitnessTable();
  v29 = v39;
  sub_1609C();
  v30 = *(v41 + 8);
  v30(v17, v15);
  sub_1609C();
  return (v30)(v29, v15);
}

uint64_t sub_181EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v9 - 8);
  v11 = v18 - v10;
  sub_104B0(a1, v18 - v10);
  v12 = sub_260BD0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_8E80(v11, &qword_316208, &qword_268BD0);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = sub_260BB0();
    v15 = v16;
    (*(v13 + 8))(v11, v12);
  }

  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[1] = v14;
  v18[2] = v15;
  sub_2EF0(&qword_317300, &unk_269840);
  return sub_2631F0();
}

uint64_t sub_182060()
{
  v1 = *v0;
  sub_2EF0(&qword_321B90, &qword_27FCA8);
  sub_8E38(&qword_321B98, &qword_321B90, &qword_27FCA8, &protocol conformance descriptor for _ViewModifier_Content<A>);
  if (v1 == 1)
  {
    return sub_262CD0();
  }

  else
  {
    return sub_262D30();
  }
}

unint64_t sub_182114()
{
  result = qword_321BA0;
  if (!qword_321BA0)
  {
    sub_2F9C(&qword_316208, &qword_268BD0);
    sub_182550(&qword_321BA8, &type metadata accessor for LocalizerRequest, &protocol conformance descriptor for LocalizerRequest);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321BA0);
  }

  return result;
}

unint64_t sub_1821C8()
{
  result = qword_321BB0;
  if (!qword_321BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321BB0);
  }

  return result;
}

uint64_t sub_18221C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AccessibilityHintFromPreference(255, *(v4 + 16), *(v4 + 24), a4);
  swift_getWitnessTable();
  v5 = sub_2620B0();
  (*(*(v5 - 8) + 8))(v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_1822F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  type metadata accessor for AccessibilityHintFromPreference(255, v6, v7, a2);
  swift_getWitnessTable();
  v8 = *(sub_2620B0() - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = (v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];

  return sub_181AC8(a1, v3 + v9, v11, v12, v13, v6, v7, a3);
}

uint64_t sub_1823F8()
{

  sub_3080((v0 + 56));

  return swift_deallocObject();
}

unint64_t sub_182468()
{
  result = qword_321C00;
  if (!qword_321C00)
  {
    sub_2F9C(&qword_321C08, &qword_27FD20);
    sub_8E38(&qword_321B98, &qword_321B90, &qword_27FCA8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_182550(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321C00);
  }

  return result;
}

uint64_t sub_182550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_182598(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AccessibilityHintFromPreference(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_2620B0();
  sub_261730();
  sub_182114();
  sub_262330();
  sub_261730();
  sub_260A70();
  sub_260A50();
  swift_getWitnessTable();
  sub_1821C8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_182550(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_182550(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  sub_260A90();
  return swift_getWitnessTable();
}

unint64_t sub_18279C()
{
  result = qword_321C10;
  if (!qword_321C10)
  {
    sub_2F9C(&qword_321BB8, &qword_27FCB0);
    sub_8E38(&qword_321BE0, &qword_321BD8, &qword_27FCC0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_182550(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321C10);
  }

  return result;
}

unint64_t sub_182888()
{
  result = qword_321C18;
  if (!qword_321C18)
  {
    sub_2F9C(&qword_321BE8, &qword_27FCC8);
    sub_8E38(&qword_321BF8, &qword_321BF0, &qword_27FCD0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_182550(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321C18);
  }

  return result;
}

unint64_t sub_182990()
{
  result = qword_321C38;
  if (!qword_321C38)
  {
    sub_2F9C(&qword_321C20, &qword_27FD78);
    sub_8E38(&qword_321C30, &qword_321C28, &qword_27FD80, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_182550(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321C38);
  }

  return result;
}

uint64_t NativeIntentDispatcher.withBuiltInIntentImplementations.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_263FF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_182AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2EF0(&qword_316408, &qword_26DE30);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_8198(a3, v25 - v10, &qword_316408, &qword_26DE30);
  v12 = sub_264770();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_8E80(v11, &qword_316408, &qword_26DE30);
  }

  else
  {
    sub_264760();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_264730();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2644C0() + 32;
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

      sub_8E80(a3, &qword_316408, &qword_26DE30);

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

  sub_8E80(a3, &qword_316408, &qword_26DE30);
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

uint64_t HighlightAttributionViewLoader.__allocating_init(id:provider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  HighlightAttributionViewLoader.init(id:provider:)(a1, a2, a3);
  return v6;
}

void *sub_182E3C()
{
  swift_getKeyPath();
  sub_EDD48();
  sub_260380();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_182EB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_EDD48();
  sub_260380();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_182F3C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_182F6C(v1);
}

void sub_182F6C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_EDD48();
    sub_260370();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_15C98(0, &qword_321DD0, SWAttributionView_ptr);
  v5 = v4;
  v6 = a1;
  v7 = sub_264A20();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

void *HighlightAttributionViewLoader.init(id:provider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2EF0(&qword_316408, &qword_26DE30);
  __chkstk_darwin(v9 - 8);
  v11 = &v17[-v10];
  v3[2] = 0;
  v3[3] = &_swiftEmptySetSingleton;
  sub_2603B0();
  sub_8198(a3, &v18, &qword_31D640, qword_275B88);
  if (v19)
  {
    sub_F7CC(&v18, v20);
    v12 = sub_264770();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    sub_30CC(v20, &v18);
    sub_264750();

    v13 = sub_264740();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v4;
    v14[5] = a1;
    v14[6] = a2;
    sub_F7CC(&v18, (v14 + 7));
    v14[12] = v8;
    sub_182AE4(0, 0, v11, &unk_27FDC0, v14);

    sub_8E80(a3, &qword_31D640, qword_275B88);
    sub_3080(v20);
  }

  else
  {

    sub_8E80(&v18, &qword_31D640, qword_275B88);
    if (v3[2])
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v17[-16] = v3;
      *&v17[-8] = 0;
      v20[0] = v3;
      sub_EDD48();
      sub_260370();
    }

    sub_8E80(a3, &qword_31D640, qword_275B88);
  }

  return v4;
}

void sub_18339C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_182F6C(v1);
}

uint64_t type metadata accessor for HighlightAttributionViewLoader(uint64_t a1)
{
  result = qword_321C78;
  if (!qword_321C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_183418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  sub_2EF0(&qword_321DA0, &qword_27FEC8);
  v8[12] = swift_task_alloc();
  v9 = sub_2EF0(&qword_321DA8, &qword_27FED0);
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  sub_264750();
  v8[16] = sub_264740();
  v11 = sub_264730();

  return (_swift_task_switch)(sub_183558, v11, v10);
}

uint64_t sub_183558()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];

  v4 = v2[3];
  v5 = v2[4];
  sub_2E18(v2, v4);
  v6 = (*(v5 + 16))(v3, v1, v4, v5);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = v2[3];
    v11 = v2[4];
    sub_2E18(v0[10], v10);
    v12 = (*(v11 + 24))(v8, v9, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  v27 = v0[14];
  v28 = v0[15];
  v13 = v0[12];
  v14 = v0[10];
  v25 = v0[11];
  v26 = v0[13];
  v23 = v0[8];
  v24 = v0[9];
  sub_182F6C(v12);
  v16 = v2[3];
  v15 = v2[4];
  sub_2E18(v14, v16);
  v0[5] = (*(v15 + 8))(v16, v15);
  sub_15C98(0, &qword_316430, OS_dispatch_queue_ptr);
  v17 = sub_264960();
  v0[6] = v17;
  v18 = sub_264940();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  sub_2EF0(&qword_321DB0, &qword_27FED8);
  sub_8E38(&qword_321DB8, &qword_321DB0, &qword_27FED8, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_184164();
  sub_261020();
  sub_8E80(v13, &qword_321DA0, &qword_27FEC8);

  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v23;
  v20[4] = v24;
  v20[5] = v25;
  sub_8E38(&qword_321DC8, &qword_321DA8, &qword_27FED0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  sub_261030();

  (*(v27 + 8))(v28, v26);
  swift_beginAccess();
  sub_260FA0();
  swift_endAccess();

  v21 = v0[1];

  return v21();
}

uint64_t sub_183904()
{
  swift_unknownObjectRelease();

  sub_3080((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_183954(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_156D0;

  return sub_183418(a1, v4, v5, v6, v7, v8, (v1 + 7), v9);
}

double sub_183A30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v8 = a1[3];
    v9 = a1[4];
    sub_2E18(a1, v8);
    v10 = (*(v9 + 16))(a3, a4, v8, v9);
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      v14 = a1[3];
      v15 = a1[4];
      sub_2E18(a1, v14);
      v16 = (*(v15 + 24))(v12, v13, v14, v15);
    }

    else
    {
      v16 = 0;
    }

    sub_182F6C(v16);
  }

  return result;
}

uint64_t HighlightAttributionViewLoader.deinit()
{

  v1 = OBJC_IVAR____TtC7BooksUI30HighlightAttributionViewLoader___observationRegistrar;
  v2 = sub_2603C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t HighlightAttributionViewLoader.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC7BooksUI30HighlightAttributionViewLoader___observationRegistrar;
  v2 = sub_2603C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_183C60()
{
  qword_353F50 = 0;
  result = 0.0;
  xmmword_353F30 = 0u;
  unk_353F40 = 0u;
  return result;
}

uint64_t sub_183C78@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_315A70 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_8198(&xmmword_353F30, v1, &qword_31D640, qword_275B88);
}

uint64_t View.sharedWithYouController(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_2EF0(&qword_321C48, &qword_27FDF0);
  sub_263C70();
  sub_264190();
  sub_262A90();

  return sub_8E80(v4, &qword_31D640, qword_275B88);
}

void *sub_183DB8()
{
  sub_1840D8();

  return sub_261CB0();
}

uint64_t sub_183E80(uint64_t a1)
{
  sub_8198(a1, v3, &qword_31D640, qword_275B88);
  sub_8198(v3, &v2, &qword_31D640, qword_275B88);
  sub_1840D8();
  sub_261CC0();
  return sub_8E80(v3, &qword_31D640, qword_275B88);
}

uint64_t sub_183F58(uint64_t a1)
{
  result = sub_2603C0();
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

uint64_t sub_18402C(uint64_t *a1)
{
  sub_2F9C(&qword_321D88, &qword_27FEA8);
  sub_261730();
  sub_8E38(&qword_321D90, &qword_321D88, &qword_27FEA8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  return swift_getWitnessTable();
}

unint64_t sub_1840D8()
{
  result = qword_321D98;
  if (!qword_321D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321D98);
  }

  return result;
}

uint64_t sub_18412C()
{

  return swift_deallocObject();
}

unint64_t sub_184164()
{
  result = qword_321DC0;
  if (!qword_321DC0)
  {
    sub_15C98(255, &qword_316430, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321DC0);
  }

  return result;
}

uint64_t sub_1841CC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_184204()
{

  return swift_deallocObject();
}

uint64_t ButtonViewModel.init(size:shape:kind:style:content:isEnabled:action:)@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, unsigned __int8 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = a7;
  v34 = a6;
  v33 = a5;
  v13 = sub_262730();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v15) = *a2;
  v30 = *a1;
  v31 = v15;
  v32 = *a3;
  v36 = 0x403C000000000000;
  v17 = enum case for Font.TextStyle.subheadline(_:);
  v18 = *(v14 + 104);
  v19 = *a4;
  v28 = a4[1];
  v29 = v19;
  v18(v16, enum case for Font.TextStyle.subheadline(_:), v13);
  sub_40130();
  sub_2612E0();
  v20 = type metadata accessor for ButtonViewModel(0);
  v36 = 0x4008000000000000;
  v18(v16, v17, v13);
  sub_2612E0();
  v21 = v20[6];
  *(a8 + v21) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v22 = v20[14];
  v23 = sub_260BD0();
  (*(*(v23 - 8) + 56))(a8 + v22, 1, 1, v23);
  v24 = v31;
  *(a8 + v20[7]) = v30;
  *(a8 + v20[8]) = v24;
  *(a8 + v20[9]) = v32;
  v25 = (a8 + v20[10]);
  v26 = v28;
  *v25 = v29;
  v25[1] = v26;
  sub_184BA4(v33, a8 + v20[11], type metadata accessor for ButtonViewModel.Content);
  *(a8 + v20[12]) = v34;
  return sub_184BA4(v35, a8 + v20[13], type metadata accessor for ButtonViewModel.ActionKind);
}

void ButtonViewModel.theme.getter(uint64_t *a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v56 = type metadata accessor for ButtonViewModel.Content(0);
  __chkstk_darwin(v56);
  v49 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v50 = &v48 - v5;
  __chkstk_darwin(v6);
  v51 = &v48 - v7;
  v8 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (&v48 - v12);
  __chkstk_darwin(v14);
  v16 = (&v48 - v15);
  __chkstk_darwin(v17);
  v19 = (&v48 - v18);
  __chkstk_darwin(v20);
  v22 = (&v48 - v21);
  v23 = type metadata accessor for ButtonViewModel(0);
  v24 = v23;
  v25 = (v1 + *(v23 + 40));
  v27 = *v25;
  v26 = v25[1];
  v28 = v25[2];
  v29 = v25[3];
  v54 = v28;
  v55 = v26;
  v53 = v29;
  switch(v27)
  {
    case 0uLL:
      v37 = sub_185084();
      sub_184C2C(v22);
      v52 = ColorConstants.booksButtonBackground.getter();
      sub_185798(v22, type metadata accessor for ColorConstants);
      sub_184C2C(v19);
      v33 = sub_1852E0();
      sub_185798(v19, type metadata accessor for ColorConstants);
      sub_184C2C(v16);
      v38 = [objc_opt_self() tertiaryLabelColor];
      v29 = sub_263070();
      v36 = v16;
      v32 = v37;
      goto LABEL_8;
    case 1uLL:
      sub_184C2C(v22);
      v48 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
      sub_185798(v22, type metadata accessor for ColorConstants);
      sub_184C2C(v19);
      v52 = ColorConstants.booksSecondaryButtonBackground.getter();
      sub_185798(v19, type metadata accessor for ColorConstants);
      sub_184C2C(v16);
      v33 = sub_1852E0();
      v34 = v16;
      v32 = v48;
      sub_185798(v34, type metadata accessor for ColorConstants);
      sub_184C2C(v13);
      v35 = [objc_opt_self() tertiaryLabelColor];
      v29 = sub_263070();
      v36 = v13;
LABEL_8:
      sub_185798(v36, type metadata accessor for ColorConstants);
      break;
    case 2uLL:
      v30 = *(v23 + 36);
      v31 = *(v2 + v30);
      sub_184C2C(v22);
      if (v31 == 1)
      {
        _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
        v32 = sub_263000();
      }

      else
      {
        v32 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
      }

      sub_185798(v22, type metadata accessor for ColorConstants);
      sub_184C2C(v10);
      v52 = ColorConstants.vibrantButtonBackground.getter();
      sub_185798(v10, type metadata accessor for ColorConstants);
      sub_184C2C(v22);
      ColorConstants.vibrantButtonBackground.getter();
      sub_185798(v22, type metadata accessor for ColorConstants);
      v33 = sub_263000();

      v39 = *(v2 + v30);
      sub_184C2C(v22);
      if (v39 == 1)
      {
        _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
        sub_263000();
      }

      else
      {
        _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
      }

      sub_185798(v22, type metadata accessor for ColorConstants);
      v29 = sub_263000();

      break;
    default:
      v32 = v27;
      v33 = v28;
      v52 = v26;
      break;
  }

  if (*(v2 + *(v24 + 28)) != 2)
  {
    sub_185734(v27, v55, v54, v53);
LABEL_21:
    v45 = v52;
    goto LABEL_22;
  }

  v40 = *(v24 + 44);
  v41 = v51;
  sub_18692C(v2 + v40, v51, type metadata accessor for ButtonViewModel.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_185734(v27, v55, v54, v53);
  sub_185798(v41, type metadata accessor for ButtonViewModel.Content);
  if (EnumCaseMultiPayload != 1)
  {
    v43 = v50;
    sub_18692C(v2 + v40, v50, type metadata accessor for ButtonViewModel.Content);
    v44 = swift_getEnumCaseMultiPayload();
    sub_185798(v43, type metadata accessor for ButtonViewModel.Content);
    if (v44 != 7)
    {
      sub_18692C(v2 + v40, v49, type metadata accessor for ButtonViewModel.Content);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        sub_185798(v49, type metadata accessor for ButtonViewModel.Content);
        goto LABEL_21;
      }
    }
  }

  v45 = sub_262FA0();

  v46 = sub_262FA0();

  v33 = v46;
LABEL_22:
  v47 = v57;
  *v57 = v32;
  v47[1] = v45;
  v47[2] = v33;
  v47[3] = v29;
}

BOOL static ButtonViewModel.Size.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t sub_184BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_184C2C@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ButtonViewModel(0);
  sub_186994(v1 + *(v10 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_184BA4(v9, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_184E00(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

void *ButtonViewModel.progressViewModel(foregroundColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ButtonViewModel(0);
  v9 = v8;
  if ((*(v2 + v8[9]) & 1) != 0 || *(v2 + v8[7]) == 2)
  {
    sub_184C2C(v7);
    v10 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_185798(v7, type metadata accessor for ColorConstants);
    v11 = v2 + v9[10];
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    if (*v11 == 2)
    {
      v16 = 2;
    }

    else
    {
      sub_185734(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24));
      v16 = v13;
    }

    sub_185B20(v16, v12, v14, v15);
    sub_185B20(2uLL, 0, 0, 0);
    sub_2EF0(&qword_318288, &unk_27F080);
    sub_261300();
    v17 = v29;
    result = sub_261300();
    v19 = v29;
    *a2 = v10;
    *(a2 + 8) = v13 == 2;
    *(a2 + 16) = v17;
    *(a2 + 24) = v19;
  }

  else
  {
    v20 = v2 + v8[10];
    v22 = *v20;
    v21 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = *(v20 + 24);
    if (*v20 == 2)
    {
      v25 = 2;
    }

    else
    {
      sub_185734(*v20, *(v20 + 8), *(v20 + 16), *(v20 + 24));
      v25 = v22;
    }

    sub_185B20(v25, v21, v23, v24);
    sub_185B20(2uLL, 0, 0, 0);
    sub_2EF0(&qword_318288, &unk_27F080);
    sub_261300();
    v26 = v29;
    sub_261300();
    v27 = v29;
    *a2 = a1;
    *(a2 + 8) = v22 == 2;
    *(a2 + 16) = v26;
    *(a2 + 24) = v27;
  }

  return result;
}

uint64_t sub_185084()
{
  v1 = sub_261180();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (&v19 - v12);
  if (*(v0 + *(type metadata accessor for ButtonViewModel(0) + 36)) == 1)
  {
    sub_184C2C(v13);
    sub_18692C(v13, v7, type metadata accessor for ColorConstants.Environment);
    (*(v2 + 104))(v4, enum case for ColorScheme.dark(_:), v1);
    sub_60AB0();
    v14 = sub_264390();
    v15 = *(v2 + 8);
    v15(v4, v1);
    v15(v7, v1);
    if (v14)
    {
      v16 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
    }

    else
    {
      v16 = ColorConstants.booksButtonBackground.getter();
    }

    v17 = v16;
  }

  else
  {
    sub_184C2C(v10);
    v17 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
    v13 = v10;
  }

  sub_185798(v13, type metadata accessor for ColorConstants);
  return v17;
}

uint64_t sub_1852E0()
{
  v1 = v0;
  v2 = sub_262F00();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261180();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18692C(v1, v12, type metadata accessor for ColorConstants.Environment);
  (*(v7 + 104))(v9, enum case for ColorScheme.dark(_:), v6);
  sub_60AB0();
  sub_264390();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v12, v6);
  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  return sub_263060();
}

uint64_t ButtonTheme.init(foregroundColor:backgroundColor:disabledBackgroundColor:disabledForegroundColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ButtonViewModel.useClearBackgroundColor.getter()
{
  v1 = type metadata accessor for ButtonViewModel.Content(0);
  __chkstk_darwin(v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for ButtonViewModel(0);
  if (*(v0 + *(v10 + 28)) == 2)
  {
    v11 = *(v10 + 44);
    sub_18692C(v0 + v11, v9, type metadata accessor for ButtonViewModel.Content);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_185798(v9, type metadata accessor for ButtonViewModel.Content);
    if (EnumCaseMultiPayload == 1)
    {
      return 1;
    }

    sub_18692C(v0 + v11, v6, type metadata accessor for ButtonViewModel.Content);
    v13 = swift_getEnumCaseMultiPayload();
    sub_185798(v6, type metadata accessor for ButtonViewModel.Content);
    if (v13 == 7)
    {
      return 1;
    }

    sub_18692C(v0 + v11, v3, type metadata accessor for ButtonViewModel.Content);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return 1;
    }

    sub_185798(v3, type metadata accessor for ButtonViewModel.Content);
  }

  return 0;
}

unint64_t sub_185734(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_185798(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7BooksUI11ButtonThemeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if ((sub_262F10() & 1) == 0 || (sub_262F10() & 1) == 0 || (sub_262F10() & 1) == 0)
  {
    return 0;
  }

  return sub_262F10();
}

BOOL _s7BooksUI15ButtonViewModelV5StyleO2eeoiySbAE_AEtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if (!*a1)
  {
    if (!v7)
    {
      sub_185B20(0, v2, v5, v4);
      v10 = 0;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      if (v7 == 2)
      {
        sub_185B20(2uLL, v2, v5, v4);
        v10 = 2;
LABEL_10:
        sub_185B20(v10, v6, v9, v8);
        return 1;
      }
    }

    else if (v7 >= 3)
    {
      sub_185734(*a2, a2[1], v9, v8);
      sub_185734(v3, v2, v5, v4);
      sub_185734(v7, v6, v9, v8);
      sub_185734(v3, v2, v5, v4);
      if (sub_262F10() & 1) != 0 && (sub_262F10() & 1) != 0 && (sub_262F10())
      {
        v17 = sub_262F10();
        sub_185B20(v3, v2, v5, v4);
        sub_185B20(v7, v6, v9, v8);
        sub_185B20(v7, v6, v9, v8);
        sub_185B20(v3, v2, v5, v4);
        return (v17 & 1) != 0;
      }

      sub_185B20(v3, v2, v5, v4);
      sub_185B20(v7, v6, v9, v8);
      sub_185B20(v7, v6, v9, v8);
      v12 = v3;
      v13 = v2;
      v14 = v5;
      v15 = v4;
LABEL_13:
      sub_185B20(v12, v13, v14, v15);
      return 0;
    }

LABEL_12:
    sub_185734(*a2, a2[1], v9, v8);
    sub_185734(v3, v2, v5, v4);
    sub_185B20(v3, v2, v5, v4);
    v12 = v7;
    v13 = v6;
    v14 = v9;
    v15 = v8;
    goto LABEL_13;
  }

  if (v7 != 1)
  {
    goto LABEL_12;
  }

  v11 = 1;
  sub_185B20(1uLL, v2, v5, v4);
  sub_185B20(1uLL, v6, v9, v8);
  return v11;
}

double sub_185B20(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >= 3)
  {
  }

  return result;
}

unint64_t sub_185B88()
{
  result = qword_321DD8;
  if (!qword_321DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321DD8);
  }

  return result;
}

unint64_t sub_185BE0()
{
  result = qword_321DE0;
  if (!qword_321DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321DE0);
  }

  return result;
}

uint64_t sub_185C48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_318288, &unk_27F080);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 2147483644)
  {
    v15 = *(a1 + a3[10]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 3;
    if (v16 < 0)
    {
      v16 = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = type metadata accessor for ButtonViewModel.Content(0);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[11];
      goto LABEL_5;
    }

    v18 = type metadata accessor for ButtonViewModel.ActionKind(0);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[13];
      goto LABEL_5;
    }

    v19 = sub_2EF0(&qword_316208, &qword_268BD0);
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[14];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_185E90(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_318288, &unk_27F080);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 2147483644)
  {
    *(a1 + a4[10]) = (a2 + 2);
    return result;
  }

  v16 = type metadata accessor for ButtonViewModel.Content(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[11];
    goto LABEL_5;
  }

  v17 = type metadata accessor for ButtonViewModel.ActionKind(0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[13];
    goto LABEL_5;
  }

  v18 = sub_2EF0(&qword_316208, &qword_268BD0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[14];

  return v19(v20, a2, a2, v18);
}

void sub_1860B8(uint64_t a1)
{
  sub_4BCBC(319);
  if (v1 <= 0x3F)
  {
    sub_186218(319, &qword_316FE8, type metadata accessor for ColorConstants, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ButtonViewModel.Content(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ButtonViewModel.ActionKind(319);
        if (v4 <= 0x3F)
        {
          sub_186218(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_186218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_18627C(uint64_t a1)
{
  sub_1862F0(319);
  if (v1 <= 0x3F)
  {
    sub_260060();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1862F0(uint64_t a1)
{
  if (!qword_31A7D0)
  {
    sub_2F9C(&qword_316BA8, &unk_275850);
    v1 = sub_264A60();
    if (!v2)
    {
      atomic_store(v1, &qword_31A7D0);
    }
  }
}

uint64_t getEnumTagSinglePayload for ButtonViewModel.Size(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ButtonViewModel.Size(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1864C8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1864E4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_18651C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_186534(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 32))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_186590(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1865E4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[2] = 0;
    result[3] = 0;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void sub_186618(uint64_t a1)
{
  sub_260BD0();
  if (v1 <= 0x3F)
  {
    sub_1866E4(319);
    if (v2 <= 0x3F)
    {
      sub_1867AC(319);
      if (v3 <= 0x3F)
      {
        sub_186818(319);
        if (v4 <= 0x3F)
        {
          sub_186884(319);
          if (v5 <= 0x3F)
          {
            sub_1868EC();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1866E4(uint64_t a1)
{
  if (!qword_321FC8)
  {
    sub_186760();
    sub_260BD0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_321FC8);
    }
  }
}

unint64_t sub_186760()
{
  result = qword_321FD0;
  if (!qword_321FD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_321FD0);
  }

  return result;
}

void sub_1867AC(uint64_t a1)
{
  if (!qword_321FD8)
  {
    sub_260BD0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_321FD8);
    }
  }
}

void sub_186818(uint64_t a1)
{
  if (!qword_321FE0)
  {
    sub_260BD0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_321FE0);
    }
  }
}

void sub_186884(uint64_t a1)
{
  if (!qword_321FE8)
  {
    sub_260BD0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_321FE8);
    }
  }
}

void *sub_1868EC()
{
  result = qword_321FF0;
  if (!qword_321FF0)
  {
    result = &type metadata for Double;
    atomic_store(&type metadata for Double, &qword_321FF0);
  }

  return result;
}

uint64_t sub_18692C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_186994(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316C00, &qword_26A520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ListItemMetadataEditionsDescriptor.init<>(authorName:assetInfo:additionalDescriptors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[5] = a1;
  a5[6] = a2;
  sub_F7CC(a3, a5);
  a5[7] = a4;
  v7 = (a5 + *(sub_2EF0(&qword_31DB40, &qword_276F20) + 44));
  *v7 = swift_getKeyPath();
  sub_2EF0(&qword_316DC8, &qword_276F60);
  swift_storeEnumTagMultiPayload();
  v8 = *(type metadata accessor for ListItemEditionsDescriptorExternals(0) + 20);
  *(v7 + v8) = swift_getKeyPath();
  sub_2EF0(&qword_318170, &unk_26AF40);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ListItemEditionsDescriptorExternals.spacing.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316DC8, &qword_276F60);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_8198(v2, &v13 - v9, &qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_186FAC(v10, a1, type metadata accessor for SizeConstants.Spacing);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t ListItemEditionsDescriptorExternals.fonts.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_318170, &unk_26AF40);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ListItemEditionsDescriptorExternals(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_318170, &unk_26AF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_186FAC(v9, a1, type metadata accessor for FontConstants.ListItem);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ListItemEditionsDescriptorExternals.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_2EF0(&qword_316DC8, &qword_276F60);
  swift_storeEnumTagMultiPayload();
  v2 = *(type metadata accessor for ListItemEditionsDescriptorExternals(0) + 20);
  *(a1 + v2) = swift_getKeyPath();
  sub_2EF0(&qword_318170, &unk_26AF40);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for ListItemEditionsDescriptorExternals(uint64_t a1)
{
  result = qword_3220F8;
  if (!qword_3220F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_186FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ListItemMetadataEditionsDescriptor.content(localizer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261E60();
  v12 = *(a2 + 24);
  v16[0] = *(a2 + 16);
  v11 = v16[0];
  v16[1] = v12;
  KeyPath = swift_getKeyPath();
  swift_getWitnessTable();
  ViewModelWithExternals.subscript.getter(KeyPath);

  sub_18A7C4(v9, type metadata accessor for SizeConstants.Spacing);
  *a3 = v10;
  *(a3 + 8) = 0x4000000000000000;
  *(a3 + 16) = 0;
  v14 = sub_2EF0(&qword_322020, &qword_2802F8);
  return sub_1871F4(v3, a1, v11, v12, a3 + *(v14 + 44));
}

__n128 sub_1871E8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1871F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v77 = a2;
  v92 = a5;
  v94 = a3;
  v95 = a4;
  v6 = type metadata accessor for ListItemMetadataEditionsDescriptor(0, a3, a4, a4);
  v87 = *(v6 - 8);
  v83 = *(v87 + 64);
  __chkstk_darwin(v6);
  v84 = v74 - v7;
  v86 = sub_2EF0(&qword_322260, &unk_280820);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v91 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v90 = v74 - v10;
  v11 = sub_2626C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FontConstants.ListItem(0);
  __chkstk_darwin(v15 - 8);
  v17 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2EF0(&qword_319FD8, &qword_26E010);
  v82 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = v74 - v19;
  v21 = sub_2EF0(&qword_319FD0, &qword_280830);
  __chkstk_darwin(v21 - 8);
  v89 = v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v74 - v24;
  v26 = *(a1 + 48);
  v88 = v6;
  v79 = v11;
  v78 = v12;
  v93 = v74 - v24;
  v76 = v14;
  v80 = v17;
  if (v26)
  {
    v75 = v18;
    v74[1] = *(a1 + 40);
    __chkstk_darwin(v25);
    KeyPath = swift_getKeyPath();
    v81 = a1;
    v28 = KeyPath;

    swift_getWitnessTable();
    ViewModelWithExternals.subscript.getter(v28);

    sub_262700();
    (*(v12 + 104))(v14, enum case for Font.Leading.tight(_:), v11);
    sub_2626E0();

    (*(v12 + 8))(v14, v11);
    sub_18A7C4(v17, type metadata accessor for FontConstants.ListItem);
    v29 = sub_262840();
    v31 = v30;
    v33 = v32;

    LODWORD(v100) = sub_262140();
    v34 = sub_2627F0();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_39DBC(v29, v31, v33 & 1);

    v41 = swift_getKeyPath();
    v42 = v75;
    v43 = *(v75 + 36);
    *&v20[v43] = swift_getKeyPath();
    sub_2EF0(&qword_3179C0, &qword_269D60);
    swift_storeEnumTagMultiPayload();
    *v20 = v34;
    *(v20 + 1) = v36;
    v20[16] = v38 & 1;
    *(v20 + 3) = v40;
    *(v20 + 4) = v41;
    a1 = v81;
    *(v20 + 5) = 2;
    v20[48] = 0;
    v44 = v93;
    sub_76B24(v20, v93);
    (*(v82 + 56))(v44, 0, 1, v42);
  }

  else
  {
    (*(v82 + 56))(v25, 1, 1, v18);
  }

  sub_30CC(a1, &v100);
  AssetMetadataRatingInfo.init(assetInfo:)(&v100, &v96);
  v45 = a1;
  if (v97)
  {
    goto LABEL_5;
  }

  v47 = *(&v96 + 1);
  v48 = v96;
  if (qword_315930 != -1)
  {
    swift_once();
  }

  v49 = v80;
  if (byte_31C408 == 1 && (v50 = [objc_opt_self() standardUserDefaults], v51 = sub_264420(), v52 = objc_msgSend(v50, "integerForKey:", v51), v50, v51, (v52 & 0x10) != 0))
  {
LABEL_5:
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    v102 = 0u;
    v100 = 0u;
    v101 = 0u;
    v46 = v88;
  }

  else
  {
    sub_30CC(v77, v98);
    *&v96 = swift_getKeyPath();
    BYTE8(v96) = 0;
    *&v97 = v48;
    *(&v97 + 1) = v47;
    __chkstk_darwin(v96);
    v53 = swift_getKeyPath();
    v46 = v88;
    swift_getWitnessTable();
    ViewModelWithExternals.subscript.getter(v53);

    sub_2626F0();
    v54 = v78;
    v55 = v76;
    v56 = v79;
    (*(v78 + 104))(v76, enum case for Font.Leading.tight(_:), v79);
    v57 = sub_2626E0();

    (*(v54 + 8))(v55, v56);
    sub_18A7C4(v49, type metadata accessor for FontConstants.ListItem);
    *(&v99 + 1) = swift_getKeyPath();
    v105 = v57;
    v102 = v98[0];
    v103 = v98[1];
    v100 = v96;
    v101 = v97;
    v104 = v99;
  }

  *&v96 = *(v45 + 56);
  v58 = v87;
  v59 = v84;
  (*(v87 + 16))(v84, v45, v46);
  v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v61 = swift_allocObject();
  v62 = v95;
  *(v61 + 16) = v94;
  *(v61 + 24) = v62;
  (*(v58 + 32))(v61 + v60, v59, v46);

  sub_2EF0(&qword_31DB30, &qword_276F18);
  sub_2EF0(&qword_322268, &qword_280838);
  sub_8E38(&qword_322270, &qword_31DB30, &qword_276F18, &protocol conformance descriptor for [A]);
  sub_18A5E8();
  sub_18A71C();
  v63 = v90;
  sub_2633C0();
  v64 = v93;
  v65 = v89;
  sub_8198(v93, v89, &qword_319FD0, &qword_280830);
  sub_8198(&v100, &v96, &qword_322288, &qword_280840);
  v66 = v85;
  v67 = *(v85 + 16);
  v68 = v91;
  v69 = v86;
  v67(v91, v63, v86);
  v70 = v92;
  sub_8198(v65, v92, &qword_319FD0, &qword_280830);
  v71 = sub_2EF0(&qword_322290, &qword_280848);
  sub_8198(&v96, v70 + *(v71 + 48), &qword_322288, &qword_280840);
  v67((v70 + *(v71 + 64)), v68, v69);
  v72 = *(v66 + 8);
  v72(v63, v69);
  sub_8E80(&v100, &qword_322288, &qword_280840);
  sub_8E80(v64, &qword_319FD0, &qword_280830);
  v72(v68, v69);
  sub_8E80(&v96, &qword_322288, &qword_280840);
  return sub_8E80(v65, &qword_319FD0, &qword_280830);
}

uint64_t sub_187DC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a4;
  v61 = a3;
  v67 = a2;
  v74 = a5;
  v6 = sub_262370();
  v70 = *(v6 - 8);
  v71 = v6;
  __chkstk_darwin(v6);
  v69 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2626C0();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FontConstants.ListItem(0);
  __chkstk_darwin(v9 - 8);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2EF0(&qword_322298, &qword_280938);
  v72 = *(v11 - 8);
  v73 = v11;
  __chkstk_darwin(v11);
  v63 = &v56 - v12;
  v14 = a1[2];
  v13 = a1[3];
  v15 = a1[5];
  v58 = a1[4];
  v64 = v15;

  sub_2630B0();
  v16 = sub_262900();
  v18 = v17;
  v20 = v19;
  v21 = sub_262820();
  v23 = v22;
  v25 = v24;
  sub_39DBC(v16, v18, v20 & 1);

  swift_bridgeObjectRetain_n();
  v57 = v14;
  v26 = sub_262820();
  v75 = v27;
  LODWORD(v18) = v28;
  v30 = v29;
  v68 = v13;

  sub_39DBC(v21, v23, v25 & 1);

  v31 = v61;
  v32 = v62;
  v76 = v61;
  v77 = v62;
  KeyPath = swift_getKeyPath();
  type metadata accessor for ListItemMetadataEditionsDescriptor(0, v31, v32, v34);
  swift_getWitnessTable();
  v35 = v59;
  ViewModelWithExternals.subscript.getter(KeyPath);

  sub_2626F0();
  v36 = v65;
  v37 = v60;
  v38 = v66;
  (*(v65 + 104))(v60, enum case for Font.Leading.tight(_:), v66);
  sub_2626E0();

  (*(v36 + 8))(v37, v38);
  sub_18A7C4(v35, type metadata accessor for FontConstants.ListItem);
  LODWORD(v65) = v18;
  v66 = v26;
  v67 = v30;
  v39 = sub_262840();
  v41 = v40;
  LOBYTE(v30) = v42;

  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v43 = sub_2627E0();
  v45 = v44;
  LOBYTE(v35) = v46;
  v48 = v47;

  sub_39DBC(v39, v41, v30 & 1);
  v49 = v63;

  v80 = v43;
  v81 = v45;
  LOBYTE(KeyPath) = v35 & 1;
  v82 = v35 & 1;
  v83 = v48;
  v50 = v69;
  sub_262340();
  sub_262C70();
  v51 = v64;
  (*(v70 + 8))(v50, v71);
  sub_39DBC(v43, v45, KeyPath);

  if (v51)
  {

    v52 = v58;
    v53 = v51;
  }

  else
  {
    v53 = v68;
    v52 = v57;
  }

  v80 = v52;
  v81 = v53;
  v78 = &type metadata for Text;
  v79 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  sub_10A84();
  v54 = v73;
  sub_262C00();
  sub_39DBC(v66, v75, v65 & 1);

  return (*(v72 + 8))(v49, v54);
}

unint64_t sub_188408(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_301268;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_188458(char a1)
{
  if (!a1)
  {
    return 0x614E726F68747561;
  }

  if (a1 == 1)
  {
    return 0x666E497465737361;
  }

  return 0xD000000000000015;
}

uint64_t sub_1884C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_188538(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1885A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_188614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

unint64_t sub_188684@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_188408(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1886BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_188458(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1886F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_188454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_188728(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_18877C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t ListItemMetadataEditionsDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v59 = a1;
  v50 = a4;
  type metadata accessor for ListItemMetadataEditionsDescriptor.CodingKeys(255, a2, a3, a5);
  WitnessTable = swift_getWitnessTable();
  v7 = sub_264E20();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v58 = &v49 - v8;
  v9 = sub_264A60();
  v53 = *(v9 - 8);
  v54 = v9;
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  v12 = type metadata accessor for ListItemEditionsDescriptorExternals(0);
  __chkstk_darwin(v12);
  v14 = (&v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a2 - 8);
  __chkstk_darwin(v16);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for ListItemMetadataEditionsDescriptor(0, a2, a3, v19);
  v49 = *(v57 - 8);
  __chkstk_darwin(v57);
  v21 = &v49 - v20;
  *v14 = swift_getKeyPath();
  sub_2EF0(&qword_316DC8, &qword_276F60);
  swift_storeEnumTagMultiPayload();
  v22 = *(v12 + 20);
  *(v14 + v22) = swift_getKeyPath();
  sub_2EF0(&qword_318170, &unk_26AF40);
  swift_storeEnumTagMultiPayload();
  v23 = swift_dynamicCast();
  v24 = *(v15 + 56);
  if (v23)
  {
    v24(v11, 0, 1, a2);
    (*(v15 + 32))(v18, v11, a2);
    v25 = *(v15 + 16);
    v26 = v21;
    v54 = *(v57 + 44);
    v25(&v21[v54], v18, a2);
    v27 = v59;
    sub_2E18(v59, v59[3]);
    v28 = v56;
    sub_265120();
    v29 = v27;
    v30 = v15;
    if (v28)
    {
      v31 = *(v15 + 8);
      v31(v18, a2);
      sub_3080(v29);
      return (v31)(&v21[v54], a2);
    }

    else
    {
      v56 = v18;
      LOBYTE(v62[0]) = 0;
      v37 = v21;
      *(v21 + 5) = sub_264D70();
      *(v21 + 6) = v38;
      sub_2EF0(&qword_317FB8, &unk_26AA50);
      LOBYTE(v60) = 1;
      sub_8E38(&qword_317FC0, &qword_317FB8, &unk_26AA50, &protocol conformance descriptor for MResourceDecoder<A>);
      sub_264DF0();
      v40 = v62[0];
      sub_260810();
      if (v61)
      {
        sub_F7CC(&v60, v62);
        sub_30CC(v62, v26);
        sub_2EF0(&qword_31DB30, &qword_276F18);
        v63 = 2;
        sub_18914C();
        v41 = v52;
        v42 = v58;
        sub_264DF0();

        sub_3080(v62);
        (*(v51 + 8))(v42, v41);
        (*(v30 + 8))(v56, a2);
        *(v37 + 7) = v60;
        v47 = v49;
        v48 = v57;
        (*(v49 + 16))(v50, v37, v57);
        sub_3080(v59);
        return (*(v47 + 8))(v37, v48);
      }

      else
      {
        sub_8E80(&v60, &qword_316D40, &unk_268FC0);
        v43 = sub_264C10();
        swift_allocError();
        v45 = v44;
        v57 = sub_264D60();
        sub_4401C();
        swift_allocError();
        *v46 = 0;
        sub_264BF0();
        (*(*(v43 - 8) + 104))(v45, enum case for DecodingError.dataCorrupted(_:), v43);
        swift_willThrow();

        (*(v51 + 8))(v58, v52);
        v39 = *(v30 + 8);
        v39(v56, a2);
        sub_3080(v59);

        return (v39)(v26 + v54, a2);
      }
    }
  }

  else
  {
    v24(v11, 1, 1, a2);
    (*(v53 + 8))(v11, v54);
    v33 = sub_264C10();
    swift_allocError();
    v35 = v34;
    sub_2EF0(&qword_315CD0, &qword_266E00);
    *v35 = a2;
    v36 = v59;
    sub_2E18(v59, v59[3]);
    sub_2650E0();
    v62[0] = 0;
    v62[1] = 0xE000000000000000;
    sub_264BC0(88);
    v64._countAndFlagsBits = 0xD000000000000056;
    v64._object = 0x8000000000293F40;
    sub_264530(v64);
    v65._countAndFlagsBits = sub_265260();
    sub_264530(v65);

    sub_264BF0();
    (*(*(v33 - 8) + 104))(v35, enum case for DecodingError.typeMismatch(_:), v33);
    swift_willThrow();
    return sub_3080(v36);
  }
}

unint64_t sub_18914C()
{
  result = qword_322028;
  if (!qword_322028)
  {
    sub_2F9C(&qword_31DB30, &qword_276F18);
    sub_FB148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322028);
  }

  return result;
}

unint64_t sub_1891F0()
{
  v1 = 1954047348;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x614E6C6F626D7973;
  }
}

uint64_t sub_18924C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_18A324(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_189274(uint64_t a1)
{
  v2 = sub_18958C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1892B0(uint64_t a1)
{
  v2 = sub_18958C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void ListItemMetadataDescriptorModel.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2EF0(&qword_322030, &qword_280300);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_2E18(a1, a1[3]);
  sub_18958C();
  sub_265120();
  if (v2)
  {
    sub_3080(a1);
  }

  else
  {
    LOBYTE(v20) = 0;
    v9 = sub_264DC0();
    v11 = v10;
    v19 = v9;
    LOBYTE(v20) = 1;
    v17 = sub_264DC0();
    v18 = v12;
    sub_2EF0(&qword_321868, &unk_2891C0);
    v22 = 2;
    sub_1895E0();
    sub_264DF0();
    (*(v6 + 8))(v8, v5);
    v13 = v20;
    v14 = v21;
    v15 = v18;
    *a2 = v19;
    a2[1] = v11;
    a2[2] = v17;
    a2[3] = v15;
    a2[4] = v13;
    a2[5] = v14;

    sub_3080(a1);
  }
}

unint64_t sub_18958C()
{
  result = qword_322038;
  if (!qword_322038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322038);
  }

  return result;
}

unint64_t sub_1895E0()
{
  result = qword_321870;
  if (!qword_321870)
  {
    sub_2F9C(&qword_321868, &unk_2891C0);
    sub_17E69C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_321870);
  }

  return result;
}

uint64_t sub_189664(uint64_t a1)
{
  result = sub_18A6D4(&qword_322040, type metadata accessor for ListItemEditionsDescriptorExternals, &protocol conformance descriptor for ListItemEditionsDescriptorExternals);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_189700(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_189748(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_189784(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1897C0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1897FC(uint64_t a1)
{
  result = sub_FB148();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_189824@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_189848@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

void sub_189854(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
}

uint64_t sub_1898D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F78, &unk_269C60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2EF0(&qword_322098, &unk_28B530);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1899F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316F78, &unk_269C60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2EF0(&qword_322098, &unk_28B530);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_189B04(uint64_t a1)
{
  sub_189BC0(319, &qword_317008, type metadata accessor for SizeConstants.Spacing);
  if (v1 <= 0x3F)
  {
    sub_189BC0(319, &qword_319360, type metadata accessor for FontConstants.ListItem);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_189BC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_189C14(uint64_t a1)
{
  sub_44744();
  if (v1 <= 0x3F)
  {
    sub_18A114(319, &qword_316CB8, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_18A114(319, &qword_3221B0, &type metadata for ListItemMetadataDescriptorModel, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_189D14(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 64) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_189EA8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 64) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

void sub_18A114(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_18A1E8()
{
  result = qword_322248;
  if (!qword_322248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322248);
  }

  return result;
}

unint64_t sub_18A240()
{
  result = qword_322250;
  if (!qword_322250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322250);
  }

  return result;
}

unint64_t sub_18A298()
{
  result = qword_322258;
  if (!qword_322258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322258);
  }

  return result;
}

uint64_t sub_18A324(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000293FA0 == a2)
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

uint64_t sub_18A44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for ListItemMetadataEditionsDescriptor(0, v5, *(v4 + 24), a4) - 8);
  v7 = (v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80)));
  sub_3080(v7);

  (*(*(v5 - 8) + 8))(&v7[v6[13]], v5);

  return swift_deallocObject();
}

uint64_t sub_18A54C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for ListItemMetadataEditionsDescriptor(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_187DC4(a1, v9, v6, v7, a3);
}

unint64_t sub_18A5E8()
{
  result = qword_322278;
  if (!qword_322278)
  {
    sub_2F9C(&qword_322268, &qword_280838);
    swift_getOpaqueTypeConformance2();
    sub_18A6D4(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322278);
  }

  return result;
}

uint64_t sub_18A6D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_18A71C()
{
  result = qword_322280;
  if (!qword_322280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322280);
  }

  return result;
}

uint64_t sub_18A7C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PaddleButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v37 = sub_25FFD0();
  v29 = *(v37 - 8);
  v2 = v29;
  __chkstk_darwin(v37);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v30 = sub_2EF0(&qword_3222A0, &qword_280940);
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v8 = &v28 - v7;
  v33 = sub_2EF0(&qword_3222A8, &qword_280948);
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v28 = &v28 - v9;
  v11 = v1[1];
  LOBYTE(v39) = *v1;
  v10 = v39;

  sub_18AC4C(v6);
  v38 = v6;
  sub_263230();
  v31 = *(v2 + 8);
  v12 = v37;
  v31(v6, v37);
  v44[0] = 0;
  sub_2631D0();
  v13 = v39;
  v14 = v40;
  KeyPath = swift_getKeyPath();
  LOBYTE(v39) = v10;
  BYTE1(v39) = v11;
  LOBYTE(v40) = v13;
  v41 = v14;
  v42 = KeyPath;
  v43 = 0;
  v16 = sub_18B300();
  v17 = sub_18B364();
  v18 = v30;
  sub_262A60();
  v19 = v42;
  v20 = v43;

  sub_4054(v19, v20);
  (*(v32 + 8))(v8, v18);
  v44[0] = v10;
  sub_18AC4C(v6);
  (*(v29 + 16))(v34, v6, v12);
  v21 = sub_2628E0();
  v23 = v22;
  LOBYTE(v8) = v24;
  v39 = v18;
  v40 = &type metadata for PaddleButton.Style;
  v41 = v16;
  v42 = v17;
  swift_getOpaqueTypeConformance2();
  v25 = v33;
  v26 = v28;
  sub_262BF0();
  sub_39DBC(v21, v23, v8 & 1);

  v31(v6, v37);
  return (*(v35 + 8))(v26, v25);
}

uint64_t sub_18AC4C@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v19 = sub_25FFC0();
  v1 = *(v19 - 8);
  __chkstk_darwin(v19);
  v3 = (&v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_260290();
  v4 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v22 = sub_264410();
  v10 = *(v22 - 8);
  __chkstk_darwin(v22);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v18 - v14;
  sub_2643A0();
  sub_260260();
  (*(v10 + 16))(v12, v15, v22);
  v16 = v20;
  (*(v4 + 16))(v6, v9, v20);
  *v3 = type metadata accessor for BundleFinder();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v19);
  sub_25FFE0();
  (*(v4 + 8))(v9, v16);
  return (*(v10 + 8))(v15, v22);
}

uint64_t sub_18AFF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 16);
  *v18 = *v1;
  *&v18[16] = v7;
  v19 = *(v1 + 32);
  v8 = *(v1 + 24);
  v20 = v8;
  v21 = v19;
  if (v19 == 1)
  {
    if ((v8 & 1) == 0)
    {
LABEL_3:
      v9 = 0;
      goto LABEL_10;
    }
  }

  else
  {

    sub_264900();
    v10 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_18B604(&v20);
    (*(v4 + 8))(v6, v3);
    if (v17[0] != 1)
    {
      goto LABEL_3;
    }
  }

  if (sub_2622B0())
  {
    v9 = 3;
  }

  else
  {
    *v17 = *&v18[8];
    sub_2EF0(&qword_3210B8, &qword_27EE90);
    sub_2631E0();
    if (v16[15])
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

LABEL_10:
  v11 = v18[0];
  v12 = v18[1];
  v13 = swift_allocObject();
  v14 = *&v18[16];
  *(v13 + 16) = *v18;
  *(v13 + 32) = v14;
  *(v13 + 48) = v19;
  *a1 = v11;
  *(a1 + 1) = v12;
  *(a1 + 2) = v9;
  *(a1 + 8) = sub_18B6B0;
  *(a1 + 16) = v13;
  return sub_18B704(v18, v17);
}

uint64_t sub_18B218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25FFD0();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = sub_2628E0();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

unint64_t sub_18B300()
{
  result = qword_3222B0;
  if (!qword_3222B0)
  {
    sub_2F9C(&qword_3222A0, &qword_280940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3222B0);
  }

  return result;
}

unint64_t sub_18B364()
{
  result = qword_3222B8;
  if (!qword_3222B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3222B8);
  }

  return result;
}

unint64_t sub_18B3E8()
{
  result = qword_3222C0;
  if (!qword_3222C0)
  {
    sub_2F9C(&qword_3222C8, &qword_280A10);
    sub_2F9C(&qword_3222A0, &qword_280940);
    sub_18B300();
    sub_18B364();
    swift_getOpaqueTypeConformance2();
    sub_18B4CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3222C0);
  }

  return result;
}

unint64_t sub_18B4CC()
{
  result = qword_3173C8;
  if (!qword_3173C8)
  {
    sub_262420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3173C8);
  }

  return result;
}

uint64_t sub_18B524(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_18B580(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_18B604(uint64_t a1)
{
  v2 = sub_2EF0(&qword_3222D0, &unk_28CA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B66C()
{

  sub_4054(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

unint64_t sub_18B740()
{
  result = qword_3222D8;
  if (!qword_3222D8)
  {
    sub_2F9C(&qword_3222E0, &qword_280AC8);
    sub_18B7CC();
    sub_179DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3222D8);
  }

  return result;
}

unint64_t sub_18B7CC()
{
  result = qword_3222E8[0];
  if (!qword_3222E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_3222E8);
  }

  return result;
}

uint64_t sub_18B874(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18B8B0@<X0>(void *a1@<X8>)
{
  result = static SynchronousStaticIntent.kind.getter();
  *a1 = 0xD000000000000012;
  a1[1] = v3;
  return result;
}

uint64_t sub_18B8EC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18B95C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_18BA9C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_18BCBC@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SeriesEntityCardView(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_18D338(v9, a1, type metadata accessor for SizeConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t SeriesEntityCardView.init(seriesIDForLogging:preheader:title:subtitle:footnote:coverViewModels:allowDoubleWide:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v29 = a8;
  v28 = a7;
  v16 = sub_262730();
  v17 = __chkstk_darwin(v16);
  v30 = 0x3FF0000000000000;
  (*(v19 + 104))(&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Font.TextStyle.largeTitle(_:), v17);
  sub_78E78();
  sub_2612E0();
  v20 = type metadata accessor for SeriesEntityCardView(0);
  v21 = v20[5];
  *(a9 + v21) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v22 = (a9 + v20[6]);
  *v22 = a1;
  v22[1] = a2;
  v23 = v20[7];
  v24 = sub_260BD0();
  v25 = *(*(v24 - 8) + 32);
  v25(a9 + v23, a3, v24);
  v25(a9 + v20[8], a4, v24);
  sub_22148(a5, a9 + v20[9], &qword_316208, &qword_268BD0);
  result = sub_22148(a6, a9 + v20[10], &qword_316208, &qword_268BD0);
  *(a9 + v20[11]) = v28;
  *(a9 + v20[12]) = v29;
  return result;
}

uint64_t sub_18C0FC()
{
  v29 = type metadata accessor for SizeConstants.Environment(0);
  __chkstk_darwin(v29);
  v26 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_261C90();
  v2 = *(v27 - 8);
  __chkstk_darwin(v27);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for SeriesEntityCardView(0);
  v15 = *(v14 + 20);
  v28 = v0;
  sub_8198(v0 + v15, v7, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_18D338(v7, v13, type metadata accessor for SizeConstants);
  }

  else
  {
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v27);
  }

  v17 = v29;
  v18 = &v13[*(v29 + 32)];
  v19 = *v18 | (v18[2] << 16);
  if (*v18 == 2)
  {
    result = sub_264CD0();
    __break(1u);
  }

  else
  {
    sub_18D3B0(v13, type metadata accessor for SizeConstants.Environment);
    if ((v19 & 0x10000) != 0 && *(v28 + *(v14 + 48)) == 1)
    {
      sub_18BCBC(v10);
      v20 = v26;
      sub_18D338(v10, v26, type metadata accessor for SizeConstants.Environment);
      v21 = *(v17 + 24);
      v22 = sub_261660();
      v23 = sub_261690();
      (*(*(v23 - 8) + 8))(v20 + v21, v23);
      v24 = v22 ^ 1;
    }

    else
    {
      v24 = 0;
    }

    return v24 & 1;
  }

  return result;
}

uint64_t SeriesEntityCardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v130 = a1;
  v3 = sub_261D50();
  v127 = *(v3 - 8);
  v128 = v3;
  __chkstk_darwin(v3);
  v126 = &v110[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SizeConstants.CornerRadius(0);
  __chkstk_darwin(v5 - 8);
  v129 = &v110[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v7 - 8);
  v137 = &v110[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v115 = type metadata accessor for SeriesEntityCardView.TextLockupViewModel(0);
  __chkstk_darwin(v115);
  v117 = &v110[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v116 = type metadata accessor for SeriesEntityCardView.CardContents(0);
  __chkstk_darwin(v116);
  v119 = &v110[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v118 = sub_2EF0(&qword_322370, &qword_280BB8);
  __chkstk_darwin(v118);
  v12 = &v110[-v11];
  v120 = sub_2EF0(&qword_322378, &qword_280BC0);
  __chkstk_darwin(v120);
  v14 = &v110[-v13];
  *&v132 = sub_2EF0(&qword_322380, &qword_280BC8);
  __chkstk_darwin(v132);
  v135 = &v110[-v15];
  v134 = sub_2EF0(&qword_322388, &qword_280BD0);
  __chkstk_darwin(v134);
  v136 = &v110[-v16];
  v121 = sub_2EF0(&qword_322390, &qword_280BD8);
  __chkstk_darwin(v121);
  v122 = &v110[-v17];
  v18 = sub_2EF0(&qword_322398, &unk_280BE0);
  v124 = *(v18 - 8);
  v125 = v18;
  __chkstk_darwin(v18);
  v123 = &v110[-v19];
  v20 = type metadata accessor for SeriesEntityCardView(0);
  __chkstk_darwin(v20);
  v22 = &v110[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_315868 != -1)
  {
    swift_once();
  }

  v131 = v12;
  v23 = sub_260D50();
  sub_B080(v23, qword_315FE8);
  sub_191910(v2, v22, type metadata accessor for SeriesEntityCardView);
  v24 = sub_260D30();
  v25 = sub_2648E0();
  v26 = os_log_type_enabled(v24, v25);
  v133 = v14;
  if (v26)
  {
    v27 = v2;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v171 = v29;
    *v28 = 136315138;
    v30 = &v22[v20[6]];
    v31 = *v30;
    v32 = v30[1];

    sub_18D3B0(v22, type metadata accessor for SeriesEntityCardView);
    v33 = sub_191368(v31, v32, &v171);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_0, v24, v25, "SwiftUI::SeriesEntityCardView::body evaluated, series=%s", v28, 0xCu);
    sub_3080(v29);

    v2 = v27;
  }

  else
  {

    sub_18D3B0(v22, type metadata accessor for SeriesEntityCardView);
  }

  v34 = (v2 + v20[6]);
  v35 = *v34;
  v112 = v34[1];
  v113 = v35;

  v36 = v2;
  v111 = sub_18C0FC();
  v37 = v20[7];
  v38 = v115;
  v39 = *(v115 + 20);
  v40 = sub_260BD0();
  v41 = *(*(v40 - 8) + 16);
  v42 = v117;
  v41(&v117[v39], v2 + v37, v40);
  v41(&v42[v38[6]], v2 + v20[8], v40);
  sub_8198(v2 + v20[9], &v42[v38[7]], &qword_316208, &qword_268BD0);
  sub_8198(v2 + v20[10], &v42[v38[8]], &qword_316208, &qword_268BD0);
  *v42 = (v111 & 1) == 0;
  v43 = *(v2 + v20[11]);

  v44 = sub_18C0FC();
  KeyPath = swift_getKeyPath();
  v46 = v119;
  *v119 = KeyPath;
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v47 = v116;
  v48 = (v46 + *(v116 + 20));
  v49 = v112;
  *v48 = v113;
  v48[1] = v49;
  sub_18D338(v42, v46 + v47[6], type metadata accessor for SeriesEntityCardView.TextLockupViewModel);
  *(v46 + v47[7]) = v43;
  *(v46 + v47[8]) = v44 & 1;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  v50 = v131;
  sub_18D338(v46, v131, type metadata accessor for SeriesEntityCardView.CardContents);
  v51 = (v50 + *(v118 + 36));
  v52 = v184;
  v51[4] = v183;
  v51[5] = v52;
  v51[6] = v185;
  v53 = v180;
  *v51 = v179;
  v51[1] = v53;
  v54 = v182;
  v51[2] = v181;
  v51[3] = v54;
  if (sub_18C0FC())
  {
    sub_2EF0(&qword_31A020, &qword_26E220);
    sub_261300();
    v55 = *&v171;
    v56 = 2.0;
  }

  else
  {
    sub_2EF0(&qword_31A020, &qword_26E220);
    sub_261300();
    v55 = *&v171 * 4.0;
    v56 = 3.0;
  }

  v57 = v56 / v55;
  v58 = v133;
  sub_22148(v50, v133, &qword_322370, &qword_280BB8);
  v59 = v58 + *(v120 + 36);
  *v59 = v57;
  *(v59 + 4) = 0;
  if (*(v43 + 2))
  {
    v60 = v43[7];
    v159 = v43[6];
    v160 = v60;
    v61 = v43[9];
    v161 = v43[8];
    v162 = v61;
    v62 = v43[3];
    v155 = v43[2];
    v156 = v62;
    v63 = v43[5];
    v157 = v43[4];
    v158 = v63;
    memmove(&v163, v43 + 2, 0x80uLL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_5757C(&v155, &v171);
    v175 = v167;
    v176 = v168;
    v177 = v169;
    v178 = v170;
    v171 = v163;
    v172 = v164;
    v173 = v165;
    v174 = v166;
  }

  else
  {
    sub_7DC78(&v171);
  }

  v64 = [objc_opt_self() systemGroupedBackgroundColor];
  v65 = sub_262EE0();
  v167 = v175;
  v168 = v176;
  v169 = v177;
  v170 = v178;
  v163 = v171;
  v164 = v172;
  v165 = v173;
  v166 = v174;
  if (sub_7E6BC(&v163) == 1)
  {
    sub_7DC78(&v155);
  }

  else
  {
    v142 = v167;
    v143 = v168;
    v144 = v169;
    v145 = v170;
    v138 = v163;
    v139 = v164;
    v140 = v165;
    v141 = v166;
    sub_7DE1C(&v138);
    v151 = v142;
    v152 = v143;
    v153 = v144;
    v154 = v145;
    v147 = v138;
    v148 = v139;
    v149 = v140;
    v150 = v141;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v159 = v151;
    v160 = v152;
    v161 = v153;
    v162 = v154;
    v155 = v147;
    v156 = v148;
    v157 = v149;
    v158 = v150;
  }

  v151 = v159;
  v152 = v160;
  v153 = v161;
  v154 = v162;
  v147 = v155;
  v148 = v156;
  v149 = v157;
  v150 = v158;
  v66 = swift_getKeyPath();
  LOBYTE(v138) = 0;
  v67 = swift_getKeyPath();
  v146 = 0;
  v68 = v58;
  v69 = v135;
  sub_22148(v68, v135, &qword_322378, &qword_280BC0);
  v70 = &v69[*(v132 + 36)];
  v71 = v152;
  *(v70 + 4) = v151;
  *(v70 + 5) = v71;
  v72 = v154;
  *(v70 + 6) = v153;
  *(v70 + 7) = v72;
  v73 = v148;
  *v70 = v147;
  *(v70 + 1) = v73;
  v74 = v150;
  *(v70 + 2) = v149;
  *(v70 + 3) = v74;
  *(v70 + 16) = v65;
  v70[136] = 1;
  *(v70 + 18) = v66;
  v70[184] = v138;
  *(v70 + 24) = v67;
  v70[200] = v146;
  v75 = &v136[*(v134 + 9)];
  v76 = sub_2EF0(&qword_3223A0, &unk_280C48);
  sub_261880();
  v77 = v137;
  sub_18BCBC(v137);
  v134 = type metadata accessor for SizeConstants.Environment;
  v78 = v129;
  sub_18D338(v77, v129, type metadata accessor for SizeConstants.Environment);
  v133 = type metadata accessor for SizeConstants.CornerRadius;
  sub_18D3B0(v78, type metadata accessor for SizeConstants.CornerRadius);
  v131 = sub_2617E0();
  v79 = *(v131 + 5);
  v114 = v36;
  v80 = enum case for RoundedCornerStyle.continuous(_:);
  v81 = sub_261DD0();
  v82 = *(v81 - 8);
  v117 = *(v82 + 104);
  v118 = v81;
  v83 = v82 + 104;
  LODWORD(v119) = v80;
  (v117)(v75 + v79, v80, v81);
  v120 = v83;
  __asm { FMOV            V0.2D, #16.0 }

  v132 = _Q0;
  *v75 = _Q0;
  *(v75 + *(v76 + 36)) = 0;
  v89 = v136;
  sub_22148(v135, v136, &qword_322380, &qword_280BC8);
  v90 = v137;
  sub_18BCBC(v137);
  sub_18D338(v90, v78, v134);
  sub_18D3B0(v78, v133);
  v91 = v122;
  v92 = &v122[*(v121 + 36)];
  v93 = v81;
  v94 = v117;
  (v117)(v92 + *(v131 + 5), v80, v93);
  *v92 = v132;
  *(v92 + *(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)) = 256;
  sub_22148(v89, v91, &qword_322388, &qword_280BD0);
  v96 = v126;
  v95 = v127;
  v97 = v128;
  (*(v127 + 104))(v126, enum case for ColorRenderingMode.nonLinear(_:), v128);
  sub_18D410();
  v98 = v123;
  sub_262AD0();
  (*(v95 + 8))(v96, v97);
  sub_8E80(v91, &qword_322390, &qword_280BD8);
  v99 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v101 = v100;
  v102 = sub_2EF0(&qword_3223E0, &qword_280C58);
  v103 = v130;
  v104 = (v130 + *(v102 + 36));
  v105 = v137;
  sub_18BCBC(v137);
  sub_18D338(v105, v78, v134);
  sub_18D3B0(v78, v133);
  (v94)(v104 + *(v131 + 5), v119, v118);
  *v104 = v132;
  sub_262F80();
  v106 = sub_263000();

  v107 = v104 + *(sub_2EF0(&qword_318970, &unk_280C60) + 36);
  *v107 = v106;
  *(v107 + 8) = xmmword_26BA30;
  *(v107 + 3) = 0x4018000000000000;
  v108 = (v104 + *(sub_2EF0(&qword_318978, &qword_26BEA8) + 36));
  *v108 = v99;
  v108[1] = v101;
  return (*(v124 + 32))(v103, v98, v125);
}

uint64_t sub_18D338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18D3B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_18D410()
{
  result = qword_3223A8;
  if (!qword_3223A8)
  {
    sub_2F9C(&qword_322390, &qword_280BD8);
    sub_18D4C8();
    sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3223A8);
  }

  return result;
}

unint64_t sub_18D4C8()
{
  result = qword_3223B0;
  if (!qword_3223B0)
  {
    sub_2F9C(&qword_322388, &qword_280BD0);
    sub_18D580();
    sub_8E38(&qword_3223D8, &qword_3223A0, &unk_280C48, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3223B0);
  }

  return result;
}

unint64_t sub_18D580()
{
  result = qword_3223B8;
  if (!qword_3223B8)
  {
    sub_2F9C(&qword_322380, &qword_280BC8);
    sub_18D60C();
    sub_7DEDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3223B8);
  }

  return result;
}

unint64_t sub_18D60C()
{
  result = qword_3223C0;
  if (!qword_3223C0)
  {
    sub_2F9C(&qword_322378, &qword_280BC0);
    sub_18D698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3223C0);
  }

  return result;
}

unint64_t sub_18D698()
{
  result = qword_3223C8;
  if (!qword_3223C8)
  {
    sub_2F9C(&qword_322370, &qword_280BB8);
    sub_1934A8(&qword_3223D0, type metadata accessor for SeriesEntityCardView.CardContents, &unk_280D8C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3223C8);
  }

  return result;
}

uint64_t sub_18D758@<X0>(uint64_t a1@<X8>)
{
  v27[1] = a1;
  v2 = type metadata accessor for SeriesEntityCardView.CardContents(0);
  v3 = v2 - 8;
  v27[0] = *(v2 - 8);
  v4 = *(v27[0] + 64);
  __chkstk_darwin(v2);
  v5 = sub_2EF0(&qword_3225F8, &qword_280DE0);
  __chkstk_darwin(v5);
  v7 = (v27 - v6);
  v8 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v8 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v11 - 8);
  v13 = (v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_2EF0(&qword_322600, &qword_280DE8);
  __chkstk_darwin(v14);
  v16 = v27 - v15;
  if (*(v1 + *(v3 + 40)) == 1)
  {
    sub_40CA0(v13);
    sub_18D338(v13, v10, type metadata accessor for SizeConstants.Environment);
    sub_18D3B0(v10, type metadata accessor for SizeConstants.Spacing);
    *v16 = sub_261D30();
    *(v16 + 1) = 0x4034000000000000;
    v16[16] = 0;
    v17 = sub_2EF0(&qword_322630, &qword_280E00);
    sub_18DBD0(v1, &v16[*(v17 + 44)]);
    v18 = sub_262530();
    sub_40CA0(v13);
    sub_18D338(v13, v10, type metadata accessor for SizeConstants.Environment);
    sub_18D3B0(v10, type metadata accessor for SizeConstants.Spacing);
    sub_2610C0();
    v19 = &v16[*(v14 + 36)];
    *v19 = v18;
    *(v19 + 1) = v20;
    *(v19 + 2) = v21;
    *(v19 + 3) = v22;
    *(v19 + 4) = v23;
    v19[40] = 0;
    sub_8198(v16, v7, &qword_322600, &qword_280DE8);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_322608, &qword_280DF0);
    sub_192980();
    sub_8E38(&qword_322628, &qword_322608, &qword_280DF0, &protocol conformance descriptor for GeometryReader<A>);
    sub_261F80();
    return sub_8E80(v16, &qword_322600, &qword_280DE8);
  }

  else
  {
    sub_191910(v1, v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SeriesEntityCardView.CardContents);
    v25 = (*(v27[0] + 80) + 16) & ~*(v27[0] + 80);
    v26 = swift_allocObject();
    sub_18D338(v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for SeriesEntityCardView.CardContents);
    *v7 = sub_192900;
    v7[1] = v26;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_322608, &qword_280DF0);
    sub_192980();
    sub_8E38(&qword_322628, &qword_322608, &qword_280DF0, &protocol conformance descriptor for GeometryReader<A>);
    return sub_261F80();
  }
}

uint64_t sub_18DBD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for SeriesEntityCardView.CardContents(0);
  v4 = v3 - 8;
  v62 = *(v3 - 8);
  v61 = *(v62 + 64);
  __chkstk_darwin(v3);
  v60 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v6 - 8);
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v8 - 8);
  v57 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for SeriesEntityCardView.TextLockupView(0);
  v11 = (v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_2EF0(&qword_322638, &qword_280E08);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v57 - v19;
  v21 = sub_2EF0(&qword_322640, &qword_280E10);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v58 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v57 - v25;
  __chkstk_darwin(v27);
  v29 = &v57 - v28;
  sub_191910(a1 + *(v4 + 32), v13 + v11[9], type metadata accessor for SeriesEntityCardView.TextLockupViewModel);
  *v13 = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v30 = v11[7];
  *(v13 + v30) = swift_getKeyPath();
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  swift_storeEnumTagMultiPayload();
  v31 = v11[8];
  *(v13 + v31) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  sub_263580();
  sub_261830();
  sub_18D338(v13, v17, type metadata accessor for SeriesEntityCardView.TextLockupView);
  v32 = &v17[*(v15 + 44)];
  v33 = v69;
  *(v32 + 4) = v68;
  *(v32 + 5) = v33;
  *(v32 + 6) = v70;
  v34 = v65;
  *v32 = v64;
  *(v32 + 1) = v34;
  v35 = v67;
  *(v32 + 2) = v66;
  *(v32 + 3) = v35;
  sub_262F60();

  sub_22148(v17, v20, &qword_322638, &qword_280E08);
  LOBYTE(v31) = sub_262560();
  v36 = v57;
  sub_40CA0(v57);
  v37 = v36;
  v38 = v59;
  sub_18D338(v37, v59, type metadata accessor for SizeConstants.Environment);
  sub_18D3B0(v38, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_22148(v20, v26, &qword_322638, &qword_280E08);
  v47 = &v26[*(v22 + 44)];
  *v47 = v31;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  sub_22148(v26, v29, &qword_322640, &qword_280E10);
  v48 = v60;
  sub_191910(a1, v60, type metadata accessor for SeriesEntityCardView.CardContents);
  v49 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v50 = swift_allocObject();
  sub_18D338(v48, v50 + v49, type metadata accessor for SeriesEntityCardView.CardContents);
  v51 = v58;
  sub_8198(v29, v58, &qword_322640, &qword_280E10);
  v52 = v51;
  v53 = v51;
  v54 = v63;
  sub_8198(v52, v63, &qword_322640, &qword_280E10);
  v55 = (v54 + *(sub_2EF0(&qword_322648, &qword_280E78) + 48));
  *v55 = sub_192CB0;
  v55[1] = v50;

  sub_8E80(v29, &qword_322640, &qword_280E10);

  return sub_8E80(v53, &qword_322640, &qword_280E10);
}

double sub_18E210@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + *(type metadata accessor for SeriesEntityCardView.CardContents(0) + 28));

  sub_261420();
  if (v11 <= 50.0)
  {
    v11 = 50.0;
  }

  SeriesCardCoverStackLayout.init(covers:containingWidth:)(v10, &v48, v11);
  v12 = v49;
  if (v49)
  {
    v13 = sub_262510();
    sub_40CA0(v9);
    sub_18D338(v9, v6, type metadata accessor for SizeConstants.Environment);
    sub_18D3B0(v6, type metadata accessor for SizeConstants.Spacing);
    sub_2610C0();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    LOBYTE(v40) = 0;
    sub_262F30();

    v26 = v48;
    v28 = v50;
    v39 = 0;
    v27 = v12;
    v29 = v51;
    v30 = v52;
    v31 = 0;
    v32 = v13;
    v33 = v15;
    v34 = v17;
    v35 = v19;
    v36 = v21;
    v37 = 0;
  }

  else
  {
    v39 = 0;
    v38 = 1;
    v26 = xmmword_26F1B0;
    LOBYTE(v27) = 0;
    *&v28 = _swiftEmptyArrayStorage;
    HIBYTE(v37) = 1;
  }

  sub_2EF0(&qword_322650, &qword_280E80);
  sub_192D30();
  sub_261F80();
  v22 = v45;
  *(a2 + 64) = v44;
  *(a2 + 80) = v22;
  *(a2 + 96) = v46;
  *(a2 + 112) = v47;
  v23 = v41;
  *a2 = v40;
  *(a2 + 16) = v23;
  result = *&v42;
  v25 = v43;
  *(a2 + 32) = v42;
  *(a2 + 48) = v25;
  return result;
}

uint64_t sub_18E488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v30 = a3;
  v5 = sub_261460();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SeriesEntityCardView.CardContents(0);
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_315868 != -1)
  {
    swift_once();
  }

  v12 = sub_260D50();
  sub_B080(v12, qword_315FE8);
  sub_191910(a2, v11, type metadata accessor for SeriesEntityCardView.CardContents);
  (*(v6 + 16))(v8, a1, v5);
  v13 = sub_260D30();
  v14 = sub_2648E0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = a2;
    v18 = v17;
    v31 = v17;
    *v16 = 136315394;
    v19 = &v11[*(v9 + 20)];
    v20 = *v19;
    v21 = v19[1];

    sub_18D3B0(v11, type metadata accessor for SeriesEntityCardView.CardContents);
    v22 = sub_191368(v20, v21, &v31);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2048;
    sub_261420();
    v24 = v23;
    (*(v6 + 8))(v8, v5);
    *(v16 + 14) = v24;
    _os_log_impl(&dword_0, v13, v14, "SwiftUI::SeriesEntityCardView::body evaluated, series=%s, width=%f", v16, 0x16u);
    sub_3080(v18);
    a2 = v28;

    a1 = v29;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    sub_18D3B0(v11, type metadata accessor for SeriesEntityCardView.CardContents);
  }

  v25 = v30;
  *v30 = xmmword_280B70;
  *(v25 + 2) = 0x4018000000000000;
  v26 = sub_2EF0(&qword_322670, &qword_280E90);
  return sub_18E7D8(a2, a1, v25 + *(v26 + 44));
}

uint64_t sub_18E7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47[1] = a2;
  v48 = a3;
  v4 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v4 - 8);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v7 - 8);
  v9 = (v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2EF0(&qword_322678, &qword_280E98);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v49 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (v47 - v14);
  v47[0] = type metadata accessor for SeriesEntityCardView.CardContents(0);
  v16 = *(v47[0] + 24);
  v17 = type metadata accessor for SeriesEntityCardView.TextLockupView(0);
  sub_191910(a1 + v16, v15 + v17[7], type metadata accessor for SeriesEntityCardView.TextLockupViewModel);
  *v15 = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v18 = v17[5];
  *(v15 + v18) = swift_getKeyPath();
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  swift_storeEnumTagMultiPayload();
  v19 = v17[6];
  *(v15 + v19) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  sub_262F60();

  v20 = sub_2624F0();
  sub_40CA0(v9);
  sub_18D338(v9, v6, type metadata accessor for SizeConstants.Environment);
  sub_18D3B0(v6, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v21 = v15 + *(v11 + 44);
  *v21 = v20;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  sub_261420();
  v27 = v26;
  sub_40CA0(v9);
  sub_18D338(v9, v6, type metadata accessor for SizeConstants.Environment);
  sub_18D3B0(v6, type metadata accessor for SizeConstants.Spacing);
  if (v27 + -48.0 > 50.0)
  {
    v28 = v27 + -48.0;
  }

  else
  {
    v28 = 50.0;
  }

  SeriesCardCoverStackLayout.init(covers:containingWidth:)(v29, &v74, v28);
  v30 = v75;
  if (v75)
  {
    sub_262F30();

    v31 = sub_2624F0();
    sub_40CA0(v9);
    sub_18D338(v9, v6, type metadata accessor for SizeConstants.Environment);
    sub_18D3B0(v6, type metadata accessor for SizeConstants.Spacing);
    sub_2610C0();
    LOBYTE(v66) = 0;
    LOBYTE(v58[0]) = 0;
    v60 = v74;
    *(v61 + 8) = v76;
    *(&v61[1] + 8) = v77;
    *&v61[0] = v30;
    *(&v61[2] + 1) = v78;
    LOBYTE(v62) = 0;
    BYTE8(v62) = v31;
    *&v63 = v32;
    *(&v63 + 1) = v33;
    *&v64 = v34;
    *(&v64 + 1) = v35;
    v65 = 0;
  }

  else
  {
    LOBYTE(v58[0]) = 0;
    LOBYTE(v50) = 1;
    v60 = xmmword_26F1B0;
    LOBYTE(v61[0]) = 0;
    *(&v61[0] + 1) = _swiftEmptyArrayStorage;
    HIBYTE(v65) = 1;
  }

  sub_2EF0(&qword_322650, &qword_280E80);
  sub_192D30();
  sub_261F80();
  v36 = v49;
  sub_8198(v15, v49, &qword_322678, &qword_280E98);
  v54 = v70;
  v55 = v71;
  v56 = v72;
  v57 = v73;
  v50 = v66;
  v51 = v67;
  v52 = v68;
  v53 = v69;
  v37 = v48;
  sub_8198(v36, v48, &qword_322678, &qword_280E98);
  v38 = v37 + *(sub_2EF0(&qword_322680, &qword_280EA0) + 48);
  v39 = v54;
  v40 = v55;
  v58[4] = v54;
  v58[5] = v55;
  v41 = v56;
  v58[6] = v56;
  v42 = v57;
  v59 = v57;
  v43 = v50;
  v44 = v51;
  v58[0] = v50;
  v58[1] = v51;
  v45 = v53;
  v58[2] = v52;
  v58[3] = v53;
  *(v38 + 32) = v52;
  *(v38 + 48) = v45;
  *v38 = v43;
  *(v38 + 16) = v44;
  *(v38 + 112) = v42;
  *(v38 + 80) = v40;
  *(v38 + 96) = v41;
  *(v38 + 64) = v39;
  sub_8198(v58, &v60, &qword_322688, &qword_280EA8);
  sub_8E80(v15, &qword_322678, &qword_280E98);
  v62 = v54;
  v63 = v55;
  v64 = v56;
  v65 = v57;
  v60 = v50;
  v61[0] = v51;
  v61[1] = v52;
  v61[2] = v53;
  sub_8E80(&v60, &qword_322688, &qword_280EA8);
  return sub_8E80(v36, &qword_322678, &qword_280E98);
}

void sub_18ED70(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9)
{
  v16 = sub_261490();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261570();
  sub_1934A8(&qword_31D960, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_264820();
  sub_264860();
  if (sub_264850() == 2)
  {
    v28.origin.x = a3;
    v28.origin.y = a4;
    v28.size.width = a5;
    v28.size.height = a6;
    if (CGRectGetHeight(v28) > 0.0)
    {
      sub_261580();
      v20 = a2 & 1;
      LOBYTE(v27) = v20;
      LOBYTE(v26) = 0;
      sub_261470();
      v25[2] = v21;
      *&v25[4] = a9;
      v22 = *(v17 + 8);
      v22(v19, v16);
      sub_261580();
      LOBYTE(v27) = v20;
      LOBYTE(v26) = 0;
      sub_261470();
      v25[5] = v23;
      v25[3] = v24;
      v22(v19, v16);
      sub_261580();
      v29.origin.x = a3;
      v29.origin.y = a4;
      v29.size.width = a5;
      v29.size.height = a6;
      CGRectGetMidX(v29);
      *&v25[1] = a8;
      v30.origin.x = a3;
      v30.origin.y = a4;
      v30.size.width = a5;
      v30.size.height = a6;
      CGRectGetMinY(v30);
      sub_263700();
      LOBYTE(v27) = 0;
      LOBYTE(v26) = 0;
      sub_261480();
      v22(v19, v16);
      v31.origin.x = a3;
      v31.origin.y = a4;
      v31.size.width = a5;
      v31.size.height = a6;
      CGRectGetHeight(v31);
      sub_261580();
      v32.origin.x = a3;
      v32.origin.y = a4;
      v32.size.width = a5;
      v32.size.height = a6;
      CGRectGetMidX(v32);
      v33.origin.x = a3;
      v33.origin.y = a4;
      v33.size.width = a5;
      v33.size.height = a6;
      CGRectGetMinY(v33);
      sub_263700();
      LOBYTE(v27) = 0;
      LOBYTE(v26) = 0;
      sub_261480();
      v22(v19, v16);
    }
  }
}

double sub_18F108(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_18F148(uint64_t *a1))(void *a1)
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

uint64_t sub_18F1D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2EF0(&qword_322748, &qword_281018);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_2EF0(&qword_322750, &qword_281020);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = *(v2 + *(type metadata accessor for SeriesEntityCardView.TextLockupView(0) + 28));
  if (v10)
  {
    v11 = sub_261E50();
  }

  else
  {
    v11 = sub_261E60();
  }

  *v6 = v11;
  *(v6 + 1) = 0;
  v6[16] = 0;
  v12 = sub_2EF0(&qword_322758, &qword_281028);
  sub_18F3DC(v2, &v6[*(v12 + 44)]);
  KeyPath = swift_getKeyPath();
  sub_22148(v6, v9, &qword_322748, &qword_281018);
  v14 = &v9[*(v7 + 36)];
  *v14 = KeyPath;
  v14[8] = v10;
  v15 = swift_getKeyPath();
  v16 = (a1 + *(sub_2EF0(&qword_322760, &unk_281090) + 36));
  v17 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v18 = enum case for ColorScheme.dark(_:);
  v19 = sub_261180();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = v15;
  return sub_22148(v9, a1, &qword_322750, &qword_281020);
}

uint64_t sub_18F3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v155 = a2;
  v162 = sub_2EF0(&qword_322768, &qword_2810A0);
  v152 = *(v162 - 8);
  __chkstk_darwin(v162);
  v139 = &v117 - v3;
  v4 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v4 - 8);
  v149 = &v117 - v5;
  v6 = sub_2EF0(&qword_322770, &qword_2810A8);
  __chkstk_darwin(v6 - 8);
  v154 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v151 = &v117 - v9;
  v147 = sub_2EF0(&qword_322778, &unk_2810B0) - 8;
  __chkstk_darwin(v147);
  v153 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v161 = &v117 - v12;
  v13 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v13 - 8);
  v146 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v15 - 8);
  v145 = (&v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v17 - 8);
  v156 = (&v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v160 = sub_2626C0();
  v163 = *(v160 - 8);
  __chkstk_darwin(v160);
  v159 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v20 - 8);
  v22 = &v117 - v21;
  v158 = sub_262730();
  v23 = *(v158 - 8);
  __chkstk_darwin(v158);
  v25 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for FontConstants(0);
  __chkstk_darwin(v26 - 8);
  v157 = (&v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_260BD0();
  v142 = v28;
  v141 = *(v28 - 8);
  v29 = v141;
  __chkstk_darwin(v28);
  v138 = &v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v117 - v32;
  v148 = (sub_2EF0(&qword_322780, &qword_2810C0) - 8);
  __chkstk_darwin(v148);
  v150 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v117 - v36;
  v38 = type metadata accessor for SeriesEntityCardView.TextLockupView(0);
  v143 = (a1 + v38[7]);
  v39 = v143;
  v144 = type metadata accessor for SeriesEntityCardView.TextLockupViewModel(0);
  v40 = *(v29 + 16);
  v41 = &v39[*(v144 + 20)];
  v133 = v29 + 16;
  v132 = v40;
  v40(v33, v41, v28);
  v134 = v33;
  sub_260B10();
  v42 = a1;
  v43 = v157;
  v131 = a1 + v38[5];
  sub_40D40(v157);
  v44 = *(v23 + 104);
  v129 = enum case for Font.TextStyle.footnote(_:);
  v45 = v158;
  v130 = v23 + 104;
  v128 = v44;
  v44(v25);
  v46 = sub_2625C0();
  v47 = *(v46 - 8);
  v48 = *(v47 + 56);
  v127 = v46;
  v126 = v48;
  v125 = v47 + 56;
  (v48)(v22, 1, 1);
  sub_262650();
  sub_262680();
  v137 = v22;
  sub_8E80(v22, &qword_318458, &unk_26B270);
  v49 = *(v23 + 8);
  v136 = v25;
  v135 = v23 + 8;
  v124 = v49;
  v49(v25, v45);
  v50 = v163;
  v51 = *(v163 + 104);
  v52 = v159;
  v122 = enum case for Font.Leading.tight(_:);
  v53 = v160;
  v123 = v163 + 104;
  v121 = v51;
  v51(v159);
  v54 = sub_2626E0();

  v55 = *(v50 + 8);
  v163 = v50 + 8;
  v120 = v55;
  v55(v52, v53);
  sub_18D3B0(v43, type metadata accessor for FontConstants);
  KeyPath = swift_getKeyPath();
  v119 = sub_2EF0(&qword_318470, &qword_26FBB0);
  v57 = &v37[*(v119 + 36)];
  *v57 = KeyPath;
  v57[1] = v54;
  v58 = swift_getKeyPath();
  v118 = sub_2EF0(&qword_322788, &qword_281130);
  v59 = &v37[*(v118 + 36)];
  *v59 = v58;
  *(v59 + 1) = 1;
  v59[16] = 0;
  v60 = v42 + v38[6];
  v61 = v156;
  sub_404B8(v156);
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v62 = sub_263000();

  v63 = v61;
  sub_18D3B0(v61, type metadata accessor for ColorConstants);
  v64 = swift_getKeyPath();
  v65 = &v37[*(v162 + 36)];
  *v65 = v64;
  v65[1] = v62;
  LOBYTE(v61) = sub_262520();
  v66 = v145;
  sub_40CA0(v145);
  v140 = type metadata accessor for SizeConstants.Environment;
  v67 = v146;
  sub_18D338(v66, v146, type metadata accessor for SizeConstants.Environment);
  sub_18D3B0(v67, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v68 = *(v148 + 11);
  v148 = v37;
  v69 = &v37[v68];
  v70 = v141;
  *v69 = v61;
  *(v69 + 1) = v71;
  *(v69 + 2) = v72;
  *(v69 + 3) = v73;
  *(v69 + 4) = v74;
  v69[40] = 0;
  sub_262F90();

  v75 = v161;
  sub_190318(v42, v161);
  v117 = v60;
  sub_404B8(v63);
  v76 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  sub_18D3B0(v63, type metadata accessor for ColorConstants);
  v77 = swift_getKeyPath();
  v78 = (v75 + *(sub_2EF0(&qword_322790, &qword_281168) + 36));
  *v78 = v77;
  v78[1] = v76;
  LOBYTE(v77) = sub_262520();
  sub_40CA0(v66);
  sub_18D338(v66, v67, v140);
  v79 = v142;
  sub_18D3B0(v67, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v80 = v75 + *(v147 + 44);
  *v80 = v77;
  v81 = v149;
  *(v80 + 8) = v82;
  *(v80 + 16) = v83;
  *(v80 + 24) = v84;
  *(v80 + 32) = v85;
  *(v80 + 40) = 0;
  LODWORD(v147) = *v143;
  sub_8198(&v143[*(v144 + 32)], v81, &qword_316208, &qword_268BD0);
  if ((*(v70 + 48))(v81, 1, v79) == 1)
  {
    sub_8E80(v81, &qword_316208, &qword_268BD0);
    v86 = 1;
    v87 = v151;
    v88 = v162;
  }

  else
  {
    v89 = v138;
    (*(v70 + 32))(v138, v81, v79);
    v132(v134, v89, v79);
    v90 = v139;
    sub_260B10();
    v91 = v157;
    sub_40D40(v157);
    v92 = v136;
    v93 = v158;
    v128(v136, v129, v158);
    v94 = v137;
    v126(v137, 1, 1, v127);
    sub_262630();
    sub_262680();
    sub_8E80(v94, &qword_318458, &unk_26B270);
    v124(v92, v93);
    v95 = v159;
    v96 = v160;
    v121(v159, v122, v160);
    v97 = sub_2626E0();

    v120(v95, v96);
    sub_18D3B0(v91, type metadata accessor for FontConstants);
    v98 = swift_getKeyPath();
    v99 = (v90 + *(v119 + 36));
    *v99 = v98;
    v99[1] = v97;
    v100 = swift_getKeyPath();
    v101 = v90 + *(v118 + 36);
    *v101 = v100;
    *(v101 + 8) = 1;
    *(v101 + 16) = 0;
    v102 = v156;
    sub_404B8(v156);
    _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    v103 = sub_263000();

    sub_18D3B0(v102, type metadata accessor for ColorConstants);
    v104 = swift_getKeyPath();
    v105 = v162;
    v106 = (v90 + *(v162 + 36));
    *v106 = v104;
    v106[1] = v103;
    sub_262F90();

    (*(v70 + 8))(v89, v79);
    v87 = v151;
    sub_22148(v90, v151, &qword_322768, &qword_2810A0);
    v86 = 0;
    v88 = v105;
  }

  (*(v152 + 56))(v87, v86, 1, v88);
  v107 = v147;
  LODWORD(v163) = v147 ^ 1;
  v108 = v148;
  v109 = v150;
  sub_8198(v148, v150, &qword_322780, &qword_2810C0);
  v110 = v161;
  v111 = v153;
  sub_8198(v161, v153, &qword_322778, &unk_2810B0);
  v112 = v154;
  sub_8198(v87, v154, &qword_322770, &qword_2810A8);
  v113 = v155;
  sub_8198(v109, v155, &qword_322780, &qword_2810C0);
  v114 = sub_2EF0(&qword_322798, &qword_281170);
  sub_8198(v111, v113 + v114[12], &qword_322778, &unk_2810B0);
  v115 = v113 + v114[16];
  *v115 = 0;
  *(v115 + 8) = v163;
  *(v115 + 9) = v107;
  sub_8198(v112, v113 + v114[20], &qword_322770, &qword_2810A8);
  sub_8E80(v87, &qword_322770, &qword_2810A8);
  sub_8E80(v110, &qword_322778, &unk_2810B0);
  sub_8E80(v108, &qword_322780, &qword_2810C0);
  sub_8E80(v112, &qword_322770, &qword_2810A8);
  sub_8E80(v111, &qword_322778, &unk_2810B0);
  return sub_8E80(v109, &qword_322780, &qword_2810C0);
}

uint64_t sub_190318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v3 - 8);
  v96 = &v77 - v4;
  v5 = sub_2EF0(&qword_3227A0, &qword_281178);
  __chkstk_darwin(v5 - 8);
  v102 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v101 = &v77 - v8;
  v107 = sub_2626C0();
  v109 = *(v107 - 8);
  __chkstk_darwin(v107);
  v106 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v10 - 8);
  v12 = &v77 - v11;
  v105 = sub_262730();
  v13 = *(v105 - 8);
  __chkstk_darwin(v105);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FontConstants(0);
  __chkstk_darwin(v16 - 8);
  v92 = (&v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_260BD0();
  v104 = v18;
  v95 = *(v18 - 8);
  v19 = v95;
  __chkstk_darwin(v18);
  v98 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v77 - v22;
  v108 = sub_2EF0(&qword_322788, &qword_281130);
  v99 = *(v108 - 8);
  __chkstk_darwin(v108);
  v97 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v77 - v26;
  v28 = a1 + *(type metadata accessor for SeriesEntityCardView.TextLockupView(0) + 28);
  v93 = v28;
  v94 = type metadata accessor for SeriesEntityCardView.TextLockupViewModel(0);
  v29 = *(v19 + 16);
  v30 = (v28 + *(v94 + 24));
  v87 = v19 + 16;
  v86 = v29;
  v29(v23, v30, v18);
  v88 = v23;
  sub_260B10();
  v31 = v92;
  sub_40D40(v92);
  v32 = *(v13 + 104);
  v33 = v105;
  v85 = v13 + 104;
  v84 = v32;
  v32(v15, enum case for Font.TextStyle.title3(_:), v105);
  v34 = enum case for Font.Design.serif (_:);
  v35 = sub_2625C0();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v12, v34, v35);
  v81 = *(v36 + 56);
  v81(v12, 0, 1, v35);
  sub_262680();
  v91 = v12;
  sub_8E80(v12, &qword_318458, &unk_26B270);
  v37 = *(v13 + 8);
  v89 = v15;
  v90 = v13 + 8;
  v83 = v37;
  v37(v15, v33);
  v38 = v31;
  v39 = v109;
  v40 = *(v109 + 104);
  v41 = v106;
  v80 = enum case for Font.Leading.tight(_:);
  v42 = v107;
  v82 = v109 + 104;
  v79 = v40;
  v40(v106);
  v43 = sub_2626E0();

  v44 = v39 + 8;
  v45 = *(v39 + 8);
  v109 = v44;
  v45(v41, v42);
  v46 = v38;
  sub_18D3B0(v38, type metadata accessor for FontConstants);
  KeyPath = swift_getKeyPath();
  v78 = sub_2EF0(&qword_318470, &qword_26FBB0);
  v48 = &v27[*(v78 + 36)];
  *v48 = KeyPath;
  v48[1] = v43;
  v49 = v96;
  v50 = v104;
  v51 = swift_getKeyPath();
  v52 = *(v108 + 36);
  v100 = v27;
  v53 = &v27[v52];
  *v53 = v51;
  *(v53 + 1) = 3;
  v53[16] = 0;
  sub_262F90();

  sub_8198(v93 + *(v94 + 28), v49, &qword_316208, &qword_268BD0);
  v54 = v95;
  v55 = v50;
  if ((*(v95 + 48))(v49, 1, v50) == 1)
  {
    sub_8E80(v49, &qword_316208, &qword_268BD0);
    v56 = 1;
    v57 = v101;
    v58 = v97;
  }

  else
  {
    v59 = v98;
    (*(v54 + 32))(v98, v49, v55);
    v86(v88, v59, v55);
    v60 = v97;
    sub_260B10();
    v61 = v46;
    sub_40D40(v46);
    v62 = v89;
    v63 = v105;
    v84(v89, enum case for Font.TextStyle.subheadline(_:), v105);
    v64 = v91;
    v81(v91, 1, 1, v35);
    sub_262630();
    sub_262680();
    sub_8E80(v64, &qword_318458, &unk_26B270);
    v83(v62, v63);
    v66 = v106;
    v65 = v107;
    v79(v106, v80, v107);
    v67 = sub_2626E0();

    v45(v66, v65);
    sub_18D3B0(v61, type metadata accessor for FontConstants);
    v68 = swift_getKeyPath();
    v69 = (v60 + *(v78 + 36));
    *v69 = v68;
    v69[1] = v67;
    v70 = swift_getKeyPath();
    v71 = v60 + *(v108 + 36);
    *v71 = v70;
    *(v71 + 8) = 2;
    *(v71 + 16) = 0;
    sub_262F90();

    (*(v54 + 8))(v98, v104);
    v57 = v101;
    sub_22148(v60, v101, &qword_322788, &qword_281130);
    v56 = 0;
    v58 = v60;
  }

  (*(v99 + 56))(v57, v56, 1, v108);
  v72 = v100;
  sub_8198(v100, v58, &qword_322788, &qword_281130);
  v73 = v102;
  sub_8198(v57, v102, &qword_3227A0, &qword_281178);
  v74 = v103;
  sub_8198(v58, v103, &qword_322788, &qword_281130);
  v75 = sub_2EF0(&qword_3227A8, &qword_281180);
  sub_8198(v73, v74 + *(v75 + 48), &qword_3227A0, &qword_281178);
  sub_8E80(v57, &qword_3227A0, &qword_281178);
  sub_8E80(v72, &qword_322788, &qword_281130);
  sub_8E80(v73, &qword_3227A0, &qword_281178);
  return sub_8E80(v58, &qword_322788, &qword_281130);
}

uint64_t static ShelfGridLayout.seriesEntityCard(context:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ShelfGridLayoutContext(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = *(a1 + 64);
  sub_191910(a1, &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShelfGridLayoutContext);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_18D338(&v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ShelfGridLayoutContext);
  v27 = *(a1 + 8);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v26[0] = *(a1 + 16);
  v26[1] = v11;
  v26[2] = v12;
  v26[3] = v13;
  v26[4] = v14;
  v26[5] = v15;
  v16 = *(v5 + 40);

  v17 = ShelfGridBreakpoint.resolveColumns(for:dynamicTypeSize:)(v26, a1 + v16);

  v18 = (a2 + *(sub_2EF0(&qword_3223E8, &qword_280C70) + 48));
  *a2 = v8;
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = sub_191A80;
  *(v19 + 32) = v10;
  *(v19 + 40) = 1;
  *v18 = sub_519A0;
  v18[1] = v19;
  v20 = enum case for ShelfGridItemWidth.calculate(_:);
  v21 = sub_260C90();
  (*(*(v21 - 8) + 104))(v18, v20, v21);
  v22 = enum case for ShelfGridLayout.horizontal(_:);
  v23 = sub_260B40();
  return (*(*(v23 - 8) + 104))(a2, v22, v23);
}

void sub_191000(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_319810, &unk_26D490);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_2EF0(&qword_317280, &qword_2697E0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = *a1 < 1;
  v15 = *a1 - 1;
  v31 = a2;
  if (v14)
  {
    goto LABEL_5;
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    if (v15 / v16 > 2)
    {
      v17 = 0;
      goto LABEL_6;
    }

LABEL_5:
    v17 = *(a1 + *(type metadata accessor for ShelfGridLayoutContext(0) + 36) + 2);
LABEL_6:
    v18 = *(a1 + 56);
    v19 = type metadata accessor for ShelfGridLayoutContext(0);
    v20 = a1 + *(v19 + 32);
    __chkstk_darwin(v19);
    *(&v31 - 2) = v20;
    sub_6DF9C(sub_6DF7C, v18, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_8E80(v6, &qword_319810, &unk_26D490);
      v21 = v31;
      if (v17)
      {
        v22 = 0;
        v23 = xmmword_280B80;
LABEL_11:
        *v21 = v23;
        *(v21 + 16) = v22;
        return;
      }
    }

    else
    {
      sub_22148(v6, v13, &qword_317280, &qword_2697E0);
      sub_22148(v13, v10, &qword_317280, &qword_2697E0);
      v24 = *(v7 + 48);
      v25 = sub_261690();
      (*(*(v25 - 8) + 8))(&v10[v24], v25);

      v21 = v31;
    }

    v26 = *(a1 + 24);
    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    v29 = *(a1 + 48);
    v30 = *(a1 + 56);
    v33 = *(a1 + 16);
    v34 = v26;
    v35 = v27;
    v36 = v28;
    v37 = v29;
    v38 = v30;
    v32 = *(a1 + 8);

    sub_110348(v20, &v32, &v39);

    v23 = v39;
    v22 = v40;
    goto LABEL_11;
  }

  __break(1u);
}

unint64_t sub_191368(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_191434(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_A7C18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_3080(v11);
  return v7;
}

unint64_t sub_191434(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_191540(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_264C20();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}