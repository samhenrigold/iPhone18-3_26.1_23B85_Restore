uint64_t sub_50E30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  sub_50DD4(a1, v10);
  v3(v11, v10);
  sub_3080(v10);
  v4 = sub_2E18(v11, v11[3]);
  v5 = __chkstk_darwin(v4);
  (*(v7 + 16))(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v8 = sub_263310();
  result = sub_3080(v11);
  *a2 = v8;
  return result;
}

uint64_t static ShelfGridType.Swoosh.a1.getter@<X0>(void *a1@<X8>)
{
  if (qword_315958 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E5B8;
  v2 = qword_31E5C0;
  v3 = unk_31E5C8;
  v4 = qword_31E5D0;
  v5 = unk_31E5D8;
  *a1 = qword_31E5B0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t static ShelfGridType.Swoosh.a2.getter@<X0>(void *a1@<X8>)
{
  if (qword_315960 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E5E8;
  v2 = qword_31E5F0;
  v3 = unk_31E5F8;
  v4 = qword_31E600;
  v5 = unk_31E608;
  *a1 = qword_31E5E0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t static ShelfGridType.aSmall.getter@<X0>(void *a1@<X8>)
{
  if (qword_315968 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E618;
  v2 = qword_31E620;
  v3 = unk_31E628;
  v4 = qword_31E630;
  v5 = unk_31E638;
  *a1 = qword_31E610;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t static ShelfGridType.Swoosh.b.getter@<X0>(void *a1@<X8>)
{
  if (qword_315970 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E648;
  v2 = qword_31E650;
  v3 = unk_31E658;
  v4 = qword_31E660;
  v5 = unk_31E668;
  *a1 = qword_31E640;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t static ShelfGridType.Swoosh.e.getter@<X0>(void *a1@<X8>)
{
  if (qword_315988 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E6D8;
  v2 = qword_31E6E0;
  v3 = unk_31E6E8;
  v4 = qword_31E6F0;
  v5 = unk_31E6F8;
  *a1 = qword_31E6D0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t static ShelfGridType.Swoosh.h.getter@<X0>(void *a1@<X8>)
{
  if (qword_3159A0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E768;
  v2 = qword_31E770;
  v3 = unk_31E778;
  v4 = qword_31E780;
  v5 = unk_31E788;
  *a1 = qword_31E760;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t static ShelfGridLayout.swoosh(context:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ShelfGridLayoutContext(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v29[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 64);
  sub_51704(a1, v7);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_51870(v7, v10 + v9);
  v28 = sub_261E60();
  if (qword_315AA8 != -1)
  {
    swift_once();
  }

  v11 = qword_354020;
  v30 = *(a1 + 8);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v29[0] = *(a1 + 16);
  v29[1] = v12;
  v29[2] = v13;
  v29[3] = v14;
  v29[4] = v15;
  v29[5] = v16;
  v17 = *(v4 + 32);

  v18 = ShelfGridBreakpoint.resolveColumns(for:dynamicTypeSize:)(v29, a1 + v17);

  v19 = sub_2EF0(&qword_318750, &qword_26B8B0);
  v20 = (a2 + *(v19 + 48));
  v21 = (a2 + *(v19 + 64));
  *a2 = v8;
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  *(v22 + 24) = sub_518D4;
  *(v22 + 32) = v10;
  *(v22 + 40) = 1;
  *v20 = sub_519A0;
  v20[1] = v22;
  v23 = enum case for ShelfGridItemWidth.calculate(_:);
  v24 = sub_260C90();
  (*(*(v24 - 8) + 104))(v20, v23, v24);
  *v21 = v28;
  v21[1] = v11;
  v25 = enum case for ShelfGridLayout.horizontalWithAlignment(_:);
  v26 = sub_260B40();
  return (*(*(v26 - 8) + 104))(a2, v25, v26);
}

double sub_5161C@<D0>(uint64_t a2@<X1>, uint64_t *x8_0@<X8>)
{
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v13 = *(a2 + 16);
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v10 = *(type metadata accessor for ShelfGridLayoutContext(0) + 32);
  v12 = *(a2 + 8);

  sub_110348(a2 + v10, &v12, x8_0);

  return result;
}

uint64_t sub_51704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfGridLayoutContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_51768()
{
  v1 = (type metadata accessor for ShelfGridLayoutContext(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[10];
  v4 = sub_261690();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_51870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfGridLayoutContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_518D4@<D0>(uint64_t *x8_0@<X8>)
{
  v4 = *(type metadata accessor for ShelfGridLayoutContext(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_5161C(v5, x8_0);
}

uint64_t sub_51954()
{
  sub_51990(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

double sub_51990(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_519CC(uint64_t a1, int a2)
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

uint64_t sub_51A14(uint64_t result, int a2, int a3)
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

unint64_t sub_51A84()
{
  result = qword_318758;
  if (!qword_318758)
  {
    sub_2F9C(&qword_318748, &qword_26B8A8);
    sub_51B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318758);
  }

  return result;
}

unint64_t sub_51B10()
{
  result = qword_318760;
  if (!qword_318760)
  {
    sub_2F9C(&qword_318768, &qword_26B950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318760);
  }

  return result;
}

uint64_t sub_51B98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_51BE0(uint64_t a1)
{
  v2 = type metadata accessor for CoverView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_51C3C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_8198(v2, &v13 - v9, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_58190(v10, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_51E20@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_318780, &qword_26BAF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for HeroLockupView(0);
  sub_8198(v1 + *(v10 + 24), v9, &qword_318780, &qword_26BAF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_58190(v9, a1, type metadata accessor for FontConstants.Hero);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

__n128 HeroLockupView.init(id:model:segue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for HeroLockupView(0);
  v9 = a4 + v8[5];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = v8[6];
  *(a4 + v10) = swift_getKeyPath();
  sub_2EF0(&qword_318780, &qword_26BAF0);
  swift_storeEnumTagMultiPayload();
  v11 = a4 + v8[7];
  v12 = *(a1 + 16);
  *v11 = *a1;
  *(v11 + 1) = v12;
  *(v11 + 4) = *(a1 + 32);
  sub_58190(a2, a4 + v8[8], type metadata accessor for HeroLockupModel);
  v13 = a4 + v8[9];
  result = *a3;
  v15 = *(a3 + 16);
  *v13 = *a3;
  *(v13 + 1) = v15;
  *(v13 + 4) = *(a3 + 32);
  return result;
}

__n128 HeroLockupView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_318788, &qword_26BAF8);
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  *v5 = sub_261E60();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_2EF0(&qword_318790, &qword_26BB00);
  sub_52290(v1, &v5[*(v6 + 44)]);
  sub_263560();
  sub_261830();
  sub_22148(v5, a1, &qword_318788, &qword_26BAF8);
  v7 = a1 + *(sub_2EF0(&qword_318798, &qword_26BB08) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_52290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v56 = a2;
  v53 = sub_2617E0() - 8;
  __chkstk_darwin(v53);
  v54 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2EF0(&qword_318930, &qword_26BE78);
  __chkstk_darwin(v51);
  v5 = (v48 - v4);
  v6 = sub_2EF0(&qword_318938, &qword_26BE80);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v55 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = v48 - v10;
  v11 = type metadata accessor for HeroLockupView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = sub_2EF0(&qword_318940, &qword_26BE88);
  __chkstk_darwin(v14 - 8);
  v52 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v48 - v17;
  *v18 = sub_261E60();
  *(v18 + 1) = 0x4020000000000000;
  v18[16] = 0;
  v48[1] = *(sub_2EF0(&qword_318948, &qword_26BE90) + 44);
  sub_58200(a1, v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeroLockupView);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  sub_58190(v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for HeroLockupView);
  sub_2EF0(&qword_318950, &qword_26BE98);
  sub_260A70();
  sub_260A50();
  sub_8E38(&qword_318958, &qword_318950, &qword_26BE98, &protocol conformance descriptor for TupleView<A>);
  sub_579F0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_579F0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  sub_260A80();
  *v5 = sub_263540();
  v5[1] = v21;
  v22 = sub_2EF0(&qword_318960, &qword_26BEA0);
  sub_53FA0(v49, v5 + *(v22 + 44));
  sub_8E38(&qword_318968, &qword_318930, &qword_26BE78, &protocol conformance descriptor for ZStack<A>);
  v23 = v50;
  sub_262C30();
  sub_8E80(v5, &qword_318930, &qword_26BE78);
  v24 = *(v53 + 28);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = sub_261DD0();
  v27 = v54;
  (*(*(v26 - 8) + 104))(&v54[v24], v25, v26);
  __asm { FMOV            V0.2D, #12.0 }

  *v27 = _Q0;
  sub_262F80();
  v33 = sub_263000();

  v34 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v36 = v35;
  v37 = v23 + *(v7 + 44);
  sub_58200(v27, v37, &type metadata accessor for RoundedRectangle);
  v38 = v37 + *(sub_2EF0(&qword_318970, &unk_280C60) + 36);
  *v38 = v33;
  *(v38 + 8) = xmmword_26BA30;
  *(v38 + 24) = 0x4018000000000000;
  v39 = (v37 + *(sub_2EF0(&qword_318978, &qword_26BEA8) + 36));
  *v39 = v34;
  v39[1] = v36;
  sub_58128(v27, &type metadata accessor for RoundedRectangle);
  v40 = v52;
  sub_8198(v18, v52, &qword_318940, &qword_26BE88);
  v41 = v55;
  sub_8198(v23, v55, &qword_318938, &qword_26BE80);
  v42 = v40;
  v43 = v40;
  v44 = v56;
  sub_8198(v42, v56, &qword_318940, &qword_26BE88);
  v45 = sub_2EF0(&qword_318980, &qword_26BEB0);
  v46 = v44 + *(v45 + 48);
  *v46 = 0x4024000000000000;
  *(v46 + 8) = 0;
  sub_8198(v41, v44 + *(v45 + 64), &qword_318938, &qword_26BE80);
  sub_8E80(v23, &qword_318938, &qword_26BE80);
  sub_8E80(v18, &qword_318940, &qword_26BE88);
  sub_8E80(v41, &qword_318938, &qword_26BE80);
  return sub_8E80(v43, &qword_318940, &qword_26BE88);
}

uint64_t sub_52964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a1;
  v65 = a3;
  v5 = sub_2EF0(&qword_3189F0, &qword_26BF10);
  __chkstk_darwin(v5 - 8);
  v64 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v63 = (&v55 - v8);
  v9 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v9 - 8);
  v62 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v11 - 8);
  v13 = &v55 - v12;
  v14 = sub_262730();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FontConstants.Hero(0);
  __chkstk_darwin(v18 - 8);
  v20 = (&v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_260BD0();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for HeroLockupView(0);
  (*(v22 + 16))(v24, a2 + *(v25 + 32), v21);
  sub_30CC(a1, v73);
  v60 = sub_2627B0();
  v59 = v26;
  LOBYTE(v24) = v27;
  v58 = v28;
  sub_51E20(v20);
  (*(v15 + 104))(v17, enum case for Font.TextStyle.caption(_:), v14);
  v29 = enum case for Font.Design.rounded(_:);
  v30 = sub_2625C0();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v13, v29, v30);
  (*(v31 + 56))(v13, 0, 1, v30);
  sub_262680();
  sub_8E80(v13, &qword_318458, &unk_26B270);
  (*(v15 + 8))(v17, v14);
  sub_2625A0();

  sub_58128(v20, type metadata accessor for FontConstants.Hero);
  v32 = v60;
  v33 = v59;
  v34 = sub_262840();
  v55 = v34;
  v57 = v35;
  LOBYTE(v29) = v36;
  v38 = v37;
  v56 = v37;
  sub_39DBC(v32, v33, v24 & 1);

  KeyPath = swift_getKeyPath();
  v60 = KeyPath;
  v40 = v62;
  sub_51C3C(v62);
  v59 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  sub_58128(v40, type metadata accessor for ColorConstants);
  v41 = swift_getKeyPath();
  LOBYTE(v73[0]) = v29 & 1;
  LOBYTE(v68) = 0;
  v42 = sub_261E60();
  v43 = v63;
  *v63 = v42;
  *(v43 + 8) = 0;
  *(v43 + 16) = 1;
  v44 = sub_2EF0(&qword_3189F8, &qword_26BF48);
  sub_53024(a2, v61, v43 + *(v44 + 44));
  v45 = v64;
  sub_8198(v43, v64, &qword_3189F0, &qword_26BF10);
  v46 = v57;
  *&v68 = v34;
  *(&v68 + 1) = v57;
  LOBYTE(v69) = v29 & 1;
  *(&v69 + 1) = *v67;
  DWORD1(v69) = *&v67[3];
  *(&v69 + 1) = v38;
  *&v70 = KeyPath;
  *(&v70 + 1) = 1;
  LOBYTE(v71) = 0;
  *(&v71 + 1) = *v66;
  DWORD1(v71) = *&v66[3];
  v47 = v41;
  v48 = v59;
  *(&v71 + 1) = v41;
  v72 = v59;
  v49 = v65;
  *(v65 + 64) = v59;
  v50 = v69;
  *v49 = v68;
  v49[1] = v50;
  v51 = v71;
  v49[2] = v70;
  v49[3] = v51;
  v52 = v49;
  v53 = sub_2EF0(&qword_318A00, &qword_26BF50);
  sub_8198(v45, v52 + *(v53 + 48), &qword_3189F0, &qword_26BF10);
  sub_8198(&v68, v73, &qword_318A08, &qword_26BF58);
  sub_8E80(v43, &qword_3189F0, &qword_26BF10);
  sub_8E80(v45, &qword_3189F0, &qword_26BF10);
  v73[0] = v55;
  v73[1] = v46;
  v74 = v29 & 1;
  *v75 = *v67;
  *&v75[3] = *&v67[3];
  v76 = v56;
  v77 = v60;
  v78 = 1;
  v79 = 0;
  *v80 = *v66;
  *&v80[3] = *&v66[3];
  v81 = v47;
  v82 = v48;
  return sub_8E80(v73, &qword_318A08, &qword_26BF58);
}

uint64_t sub_53024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v164 = a2;
  v161 = a3;
  v4 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v4 - 8);
  v158 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v157 = &v134 - v7;
  v8 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v8 - 8);
  v165 = (&v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v163 = sub_25FF40();
  *(&v170 + 1) = *(v163 - 8);
  __chkstk_darwin(v163);
  v162 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v11 - 8);
  v147 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v134 - v14;
  v16 = sub_262730();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v145 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v148 = &v134 - v20;
  v21 = type metadata accessor for FontConstants.Hero(0);
  __chkstk_darwin(v21 - 8);
  v144 = (&v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v25 = (&v134 - v24);
  v26 = sub_260BD0();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v159 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v160 = &v134 - v30;
  __chkstk_darwin(v31);
  v33 = &v134 - v32;
  v34 = sub_2EF0(&qword_318A10, &qword_26BF60);
  v154 = *(v34 - 8);
  v155 = v34;
  __chkstk_darwin(v34);
  v153 = &v134 - v35;
  v152 = sub_2EF0(&qword_318A18, &qword_26BF68);
  __chkstk_darwin(v152);
  v168 = &v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v151 = &v134 - v38;
  __chkstk_darwin(v39);
  v171 = &v134 - v40;
  v41 = a1 + *(type metadata accessor for HeroLockupView(0) + 32);
  v42 = type metadata accessor for HeroLockupModel(0);
  v149 = v33;
  v150 = v42;
  v43 = *(v42 + 20);
  *&v170 = v27;
  v44 = *(v27 + 16);
  v166 = v41;
  v167 = v26;
  v141 = v44;
  v142 = v27 + 16;
  v44(v33, (v41 + v43), v26);
  v156 = v25;
  v45 = a1;
  v46 = v148;
  v169 = v45;
  sub_51E20(v25);
  v47 = *(v17 + 104);
  v139 = enum case for Font.TextStyle.title2(_:);
  v140 = v17 + 104;
  v138 = v47;
  v47(v46);
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v48 = sub_2625C0();
    (*(*(v48 - 8) + 56))(v15, 1, 1, v48);
  }

  else
  {
    v49 = enum case for Font.Design.serif (_:);
    v50 = v17;
    v51 = v16;
    v52 = sub_2625C0();
    v53 = *(v52 - 8);
    (*(v53 + 104))(v15, v49, v52);
    v54 = v52;
    v16 = v51;
    v17 = v50;
    (*(v53 + 56))(v15, 0, 1, v54);
  }

  v134 = v16;
  sub_262680();
  sub_8E80(v15, &qword_318458, &unk_26B270);
  v55 = *(v17 + 8);
  v146 = v17 + 8;
  v137 = v55;
  v55(v46, v16);
  v56 = sub_2625A0();

  sub_58128(v156, type metadata accessor for FontConstants.Hero);
  sub_30CC(v164, &v179);
  v57 = v149;
  v58 = sub_260BB0();
  v60 = v59;
  v136 = type metadata accessor for BooksHTMLConverter(0);
  v61 = objc_allocWithZone(v136);

  v62 = sub_19C6C8(v58, v60, v56);
  [*&v62[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
  v63 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
  swift_beginAccess();
  v64 = *(*(&v170 + 1) + 16);
  *(&v170 + 1) += 16;
  v135 = v64;
  v64(v162, &v62[v63], v163);

  v65 = sub_2628D0();
  v67 = v66;
  v69 = v68;

  sub_3080(&v179);
  v70 = *(v170 + 8);
  v156 = (v170 + 8);
  v143 = v70;
  v70(v57, v167);
  v71 = v165;
  sub_51C3C(v165);
  _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  sub_58128(v71, type metadata accessor for ColorConstants);
  LOBYTE(v71) = v69;
  v72 = sub_2627E0();
  v148 = v72;
  v74 = v73;
  LOBYTE(v60) = v75;
  v77 = v76;
  sub_39DBC(v65, v67, v71 & 1);

  v191 = v72;
  v192 = v74;
  v193 = v60 & 1;
  v194 = v77;
  v150 = *(v150 + 24);
  v78 = v157;
  sub_8198(v166 + v150, v157, &qword_316208, &qword_268BD0);
  v149 = *(v170 + 48);
  v79 = v167;
  (v149)(v78, 1, v167);
  sub_8E80(v78, &qword_316208, &qword_268BD0);
  v80 = v153;
  sub_262EA0();
  sub_39DBC(v148, v74, v60 & 1);

  sub_263580();
  sub_2613A0();
  v81 = v151;
  (*(v154 + 32))(v151, v80, v155);
  v82 = (v81 + *(v152 + 36));
  v83 = v196;
  *v82 = v195;
  v82[1] = v83;
  v82[2] = v197;
  sub_22148(v81, v171, &qword_318A18, &qword_26BF68);
  v84 = v79;
  v85 = v158;
  sub_8198(v166 + v150, v158, &qword_316208, &qword_268BD0);
  if ((v149)(v85, 1, v79) == 1)
  {
    sub_8E80(v85, &qword_316208, &qword_268BD0);
    v170 = 0uLL;
    v169 = 0;
    KeyPath = 0;
    v166 = 0;
    v167 = 0;
    v87 = 0;
    v164 = 0;
    v165 = 0;
    v162 = 0;
    v163 = 0;
    v88 = 0;
  }

  else
  {
    v89 = v160;
    (*(v170 + 32))(v160, v85, v79);
    v141(v159, v89, v79);
    v90 = v144;
    sub_51E20(v144);
    v91 = v145;
    v92 = v134;
    v138(v145, v139);
    if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
    {
      v93 = sub_2625C0();
      v94 = v147;
      (*(*(v93 - 8) + 56))(v147, 1, 1, v93);
    }

    else
    {
      v95 = enum case for Font.Design.serif (_:);
      v96 = sub_2625C0();
      v97 = *(v96 - 8);
      v94 = v147;
      (*(v97 + 104))(v147, v95, v96);
      (*(v97 + 56))(v94, 0, 1, v96);
    }

    v99 = v163;
    v98 = v164;
    v166 = 1;
    v100 = sub_262680();
    sub_8E80(v94, &qword_318458, &unk_26B270);
    v137(v91, v92);
    sub_58128(v90, type metadata accessor for FontConstants.Hero);
    sub_30CC(v98, &v179);
    v101 = v159;
    v102 = sub_260BB0();
    v104 = v103;
    v105 = objc_allocWithZone(v136);

    v106 = sub_19C6C8(v102, v104, v100);
    [*&v106[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
    v107 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
    swift_beginAccess();
    v135(v162, &v106[v107], v99);

    v108 = sub_2628D0();
    v110 = v109;
    v112 = v111;

    sub_3080(&v179);
    v113 = v143;
    v143(v101, v84);
    v114 = v165;
    sub_51C3C(v165);
    _s7BooksUI14ColorConstantsV9booksGray05SwiftB00C0Vvg_0();
    sub_58128(v114, type metadata accessor for ColorConstants);
    *&v170 = sub_2627E0();
    *(&v170 + 1) = v115;
    LOBYTE(v114) = v116;
    v169 = v117;
    sub_39DBC(v108, v110, v112 & 1);

    KeyPath = swift_getKeyPath();
    sub_263580();
    sub_2613A0();
    v113(v160, v84);
    LOBYTE(v179) = v114 & 1;
    LOBYTE(v172) = 0;
    v87 = v198;
    v167 = v199;
    v164 = v201;
    v165 = v200;
    v162 = v203;
    v163 = v202;
    v88 = v114 & 1;
  }

  v158 = v88;
  v159 = 0;
  v160 = KeyPath;
  v118 = v168;
  sub_8198(v171, v168, &qword_318A18, &qword_26BF68);
  v119 = v118;
  v120 = v161;
  sub_8198(v119, v161, &qword_318A18, &qword_26BF68);
  v121 = v120 + *(sub_2EF0(&qword_318A20, &unk_26BF70) + 48);
  v122 = v170;
  v172 = v170;
  v123 = v169;
  *&v173 = v88;
  *(&v173 + 1) = v169;
  *&v174 = KeyPath;
  v124 = v166;
  v125 = v167;
  *(&v174 + 1) = v166;
  *&v175 = 0;
  *(&v175 + 1) = v87;
  *&v176 = v167;
  v126 = v164;
  v127 = v165;
  *(&v176 + 1) = v165;
  *&v177 = v164;
  v128 = v162;
  v129 = v163;
  *(&v177 + 1) = v163;
  v178 = v162;
  *(v121 + 96) = v162;
  v130 = v173;
  *v121 = v172;
  *(v121 + 16) = v130;
  v131 = v175;
  *(v121 + 32) = v174;
  *(v121 + 48) = v131;
  v132 = v177;
  *(v121 + 64) = v176;
  *(v121 + 80) = v132;
  sub_8198(&v172, &v179, &qword_318A28, &qword_27CF30);
  sub_8E80(v171, &qword_318A18, &qword_26BF68);
  v179 = __PAIR128__(*(&v170 + 1), v122);
  v180 = v158;
  v181 = v123;
  v182 = v160;
  v183 = v124;
  v184 = v159;
  v185 = v87;
  v186 = v125;
  v187 = v127;
  v188 = v126;
  v189 = v129;
  v190 = v128;
  sub_8E80(&v179, &qword_318A28, &qword_27CF30);
  return sub_8E80(v168, &qword_318A18, &qword_26BF68);
}

uint64_t sub_53FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for HeroLockupView(0);
  v4 = v3 - 8;
  v58 = *(v3 - 8);
  __chkstk_darwin(v3);
  v59 = v5;
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_318988, &qword_26BEB8);
  v66 = *(v6 - 8);
  v67 = v6;
  __chkstk_darwin(v6);
  v62 = &v55 - v7;
  v8 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v55 - v9;
  v11 = sub_260BD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v57 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v64 = &v55 - v15;
  v16 = sub_2EF0(&qword_318990, &qword_26BEC0);
  __chkstk_darwin(v16 - 8);
  v65 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v63 = &v55 - v19;
  v20 = *(v4 + 40);
  v60 = a1;
  v21 = a1 + v20;
  v22 = type metadata accessor for HeroLockupModel(0);
  v23 = (v21 + *(v22 + 28));
  v24 = v23[7];
  v91 = v23[6];
  v92 = v24;
  v93 = v23[8];
  v94 = *(v23 + 18);
  v25 = v23[3];
  v87 = v23[2];
  v88 = v25;
  v26 = v23[5];
  v89 = v23[4];
  v90 = v26;
  v27 = v23[1];
  v85 = *v23;
  v86 = v27;
  v28 = objc_opt_self();
  sub_57A38(&v85, v70);
  v29 = [v28 quaternarySystemFillColor];
  v30 = sub_262EE0();
  v70[0] = swift_getKeyPath();
  v71 = 0;
  KeyPath = swift_getKeyPath();
  v81 = v91;
  v82 = v92;
  v83 = v93;
  v77 = v87;
  v78 = v88;
  v79 = v89;
  v80 = v90;
  v75 = v85;
  v72 = KeyPath;
  v73 = 0;
  v76 = v86;
  v84 = v94;
  v74 = v30;
  sub_8198(v21 + *(v22 + 32), v10, &qword_316208, &qword_268BD0);
  v32 = v12;
  v33 = v11;
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_8E80(v10, &qword_316208, &qword_268BD0);
    v34 = 1;
    v36 = v66;
    v35 = v67;
    v37 = v63;
  }

  else
  {
    v38 = *(v12 + 32);
    v39 = v64;
    v56 = v33;
    v38(v64, v10, v33);
    v40 = *(v12 + 16);
    v41 = v57;
    v40(v57, v39, v33);
    v42 = v61;
    sub_58200(v60, v61, type metadata accessor for HeroLockupView);
    v43 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v44 = (v13 + *(v58 + 80) + v43) & ~*(v58 + 80);
    v45 = swift_allocObject();
    v46 = v41;
    v47 = v56;
    v38((v45 + v43), v46, v56);
    sub_58190(v42, v45 + v44, type metadata accessor for HeroLockupView);
    sub_2EF0(&qword_3189A0, &qword_26BED0);
    sub_260A70();
    sub_260A50();
    sub_57F04();
    sub_579F0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
    sub_579F0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
    v48 = v62;
    sub_260A80();
    (*(v32 + 8))(v64, v47);
    v50 = v66;
    v49 = v67;
    v37 = v63;
    (*(v66 + 32))(v63, v48, v67);
    v34 = 0;
    v35 = v49;
    v36 = v50;
  }

  (*(v36 + 56))(v37, v34, 1, v35);
  sub_570BC(v70, v69);
  v51 = v65;
  sub_8198(v37, v65, &qword_318990, &qword_26BEC0);
  v52 = v68;
  sub_570BC(v69, v68);
  v53 = sub_2EF0(&qword_318998, &qword_26BEC8);
  sub_8198(v51, v52 + *(v53 + 48), &qword_318990, &qword_26BEC0);
  sub_8E80(v37, &qword_318990, &qword_26BEC0);
  sub_57A94(v70);
  sub_8E80(v51, &qword_318990, &qword_26BEC0);
  return sub_57A94(v69);
}

double sub_546C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61[1] = a3;
  v62 = a1;
  v6 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v6 - 8);
  v66 = (v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = sub_25FF40();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v9 - 8);
  v11 = v61 - v10;
  v12 = sub_262730();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FontConstants.Hero(0);
  __chkstk_darwin(v16 - 8);
  v18 = (v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61[0] = sub_260BD0();
  v19 = *(v61[0] - 8);
  v20 = __chkstk_darwin(v61[0]);
  v22 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, a2, v20);
  sub_51E20(v18);
  (*(v13 + 104))(v15, enum case for Font.TextStyle.footnote(_:), v12);
  v23 = sub_2625C0();
  (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  v24 = sub_262680();
  sub_8E80(v11, &qword_318458, &unk_26B270);
  (*(v13 + 8))(v15, v12);
  sub_58128(v18, type metadata accessor for FontConstants.Hero);
  sub_30CC(v62, v69);
  v25 = sub_260BB0();
  v27 = v26;
  v28 = objc_allocWithZone(type metadata accessor for BooksHTMLConverter(0));

  v29 = sub_19C6C8(v25, v27, v24);
  [*&v29[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
  v30 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
  swift_beginAccess();
  (*(v64 + 16))(v63, &v29[v30], v65);

  v31 = sub_2628D0();
  v33 = v32;
  LOBYTE(v30) = v34;

  sub_3080(v69);
  (*(v19 + 8))(v22, v61[0]);
  v35 = v66;
  sub_51C3C(v66);
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_58128(v35, type metadata accessor for ColorConstants);
  v36 = sub_2627E0();
  v38 = v37;
  LOBYTE(v22) = v39;
  v41 = v40;
  sub_39DBC(v31, v33, v30 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v24) = sub_262530();
  sub_2610C0();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  LOBYTE(v69[0]) = v22 & 1;
  v67[32] = 0;
  v67[24] = 0;
  LOBYTE(v13) = sub_262520();
  sub_2610C0();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v67[40] = 0;
  sub_263540();
  sub_2613A0();
  *&v68[7] = v69[0];
  *&v68[23] = v69[1];
  *&v68[39] = v69[2];
  *a4 = v36;
  *(a4 + 8) = v38;
  *(a4 + 16) = v22 & 1;
  *(a4 + 24) = v41;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 2;
  *(a4 + 48) = 0;
  *(a4 + 56) = v24;
  *(a4 + 64) = v44;
  *(a4 + 72) = v46;
  *(a4 + 80) = v48;
  *(a4 + 88) = v50;
  *(a4 + 96) = 0;
  *(a4 + 104) = v13;
  *(a4 + 112) = v52;
  *(a4 + 120) = v54;
  *(a4 + 128) = v56;
  *(a4 + 136) = v58;
  *(a4 + 144) = 0;
  v59 = *&v68[16];
  *(a4 + 145) = *v68;
  *(a4 + 161) = v59;
  result = *&v68[32];
  *(a4 + 177) = *&v68[32];
  *(a4 + 192) = *&v68[47];
  return result;
}

uint64_t sub_54D18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_261FA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_318860, &qword_26BDA0);
  __chkstk_darwin(v7);
  v9 = (&v29 - v8);
  sub_570BC(v1, v30);
  v10 = swift_allocObject();
  v11 = v30[11];
  *(v10 + 11) = v30[10];
  *(v10 + 12) = v11;
  v12 = v30[13];
  *(v10 + 13) = v30[12];
  *(v10 + 14) = v12;
  v13 = v30[7];
  *(v10 + 7) = v30[6];
  *(v10 + 8) = v13;
  v14 = v30[9];
  *(v10 + 9) = v30[8];
  *(v10 + 10) = v14;
  v15 = v30[3];
  *(v10 + 3) = v30[2];
  *(v10 + 4) = v15;
  v16 = v30[5];
  *(v10 + 5) = v30[4];
  *(v10 + 6) = v16;
  v17 = v30[1];
  *(v10 + 1) = v30[0];
  *(v10 + 2) = v17;
  v18 = v9 + *(sub_2EF0(&qword_318868, &qword_26BDA8) + 36);
  v19 = *(sub_2617E0() + 20);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = sub_261DD0();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #12.0 }

  *v18 = _Q0;
  *&v18[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  *v9 = sub_57308;
  v9[1] = v10;
  v27 = v9 + *(v7 + 36);
  *v27 = *(v2 + 216);
  *(v27 + 4) = 0;
  sub_2618C0();
  sub_57310();
  sub_579F0(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  sub_262AA0();
  (*(v4 + 8))(v6, v3);
  return sub_8E80(v9, &qword_318860, &qword_26BDA0);
}

uint64_t sub_55018(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_318890, &qword_26BDB8);
  __chkstk_darwin(v4);
  v6 = (&v25 - v5);
  v7 = sub_2EF0(&qword_318898, &qword_26BDC0);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  sub_261420();
  v11 = v10;
  v12 = *(a2 + 152);
  v13 = *(a2 + 184);
  v33[6] = *(a2 + 168);
  v33[7] = v13;
  v33[8] = *(a2 + 200);
  v14 = *(a2 + 88);
  v15 = *(a2 + 120);
  v33[2] = *(a2 + 104);
  v33[3] = v15;
  v33[4] = *(a2 + 136);
  v33[5] = v12;
  v33[0] = *(a2 + 72);
  v33[1] = v14;
  v16 = sub_57480(v33);
  v17 = sub_5748C(v33);
  if (v16 == 1)
  {
    v29 = *(v17 + 64);
    v30 = *(v17 + 80);
    v31 = *(v17 + 96);
    v32 = *(v17 + 112);
    v25 = *v17;
    v26 = *(v17 + 16);
    v27 = *(v17 + 32);
    v28 = *(v17 + 48);
    v18 = *(v17 + 128);
    v19 = *(v17 + 136);
    *v6 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    v6[1] = v20;
    v21 = sub_2EF0(&qword_3188A0, &qword_26BDC8);
    sub_55624(v18, v19, a2, a1, &v25, (v6 + *(v21 + 44)));
    sub_8198(v6, v9, &qword_318890, &qword_26BDB8);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_3188A8, &qword_26BDD0);
    sub_8E38(&qword_3188B0, &qword_3188A8, &qword_26BDD0, &protocol conformance descriptor for AsyncResourceImage<A>);
    sub_8E38(&qword_3188B8, &qword_318890, &qword_26BDB8, &protocol conformance descriptor for ZStack<A>);
    sub_261F80();
    return sub_8E80(v6, &qword_318890, &qword_26BDB8);
  }

  else
  {
    sub_553A4(*v17, *(v17 + 8), &v25, v11);
    v23 = v27;
    v24 = v26;
    *v9 = v25;
    *(v9 + 1) = v24;
    *(v9 + 4) = v23;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_3188A8, &qword_26BDD0);
    sub_8E38(&qword_3188B0, &qword_3188A8, &qword_26BDD0, &protocol conformance descriptor for AsyncResourceImage<A>);
    sub_8E38(&qword_3188B8, &qword_318890, &qword_26BDB8, &protocol conformance descriptor for ZStack<A>);
    return sub_261F80();
  }
}

void *sub_553A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  v9 = sub_261C90();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_40858(v29);
  v13 = v30;
  v14 = v31;
  sub_2E18(v29, v30);
  v27[0] = a1;
  v27[1] = a2;
  v28 = 1;
  v16 = *(v4 + 216);
  v17 = *(v4 + 48);
  if (*(v4 + 56) == 1)
  {
    v15.n128_u64[0] = *(v4 + 48);
  }

  else
  {

    sub_264900();
    v18 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v17, 0);
    (*(v10 + 8))(v12, v9);
    v15.n128_u64[0] = v26;
  }

  BYTE2(v26) = -2;
  LOWORD(v26) = -772;
  v19 = (*(v14 + 16))(v27, &v26, v13, v14, a4, a4 / v16, v15);
  sub_3080(v29);
  *a3 = sub_56584;
  a3[1] = 0;
  type metadata accessor for ImageResourceLoader(0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  sub_2EF0(&qword_318728, &qword_26DBF0);
  v21 = swift_allocObject();
  *(v21 + 28) = 0;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v20 + 24) = v21;
  sub_2603B0();
  v27[0] = v20;
  result = sub_2631D0();
  v23 = v29[0];
  v24 = v29[1];
  a3[2] = v19;
  a3[3] = v23;
  a3[4] = v24;
  return result;
}

void sub_55624(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, void *a6@<X8>)
{
  v131 = a4;
  v128 = a3;
  *&v115 = a1;
  v136 = a6;
  v133 = sub_2EF0(&qword_3188E0, &qword_274300);
  __chkstk_darwin(v133);
  v137 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v135 = (&v108 - v11);
  v12 = sub_2630C0();
  v126 = *(v12 - 8);
  v127 = v12;
  __chkstk_darwin(v12);
  v125 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_260D00();
  v123 = *(v14 - 8);
  v124 = v14;
  __chkstk_darwin(v14);
  v122 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_2EF0(&qword_3188E8, &qword_26BDE8);
  __chkstk_darwin(v129);
  v134 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v108 - v18;
  __chkstk_darwin(v20);
  v139 = &v108 - v21;
  v22 = sub_2EF0(&qword_3188F0, &qword_26BDF0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v121 = (&v108 - v24);
  v120 = sub_2EF0(&qword_3188F8, &qword_26BDF8);
  __chkstk_darwin(v120);
  v119 = &v108 - v25;
  v26 = sub_262F00();
  v116 = *(v26 - 8);
  v117 = v26;
  __chkstk_darwin(v26);
  v28 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_2EF0(&qword_318900, &qword_26BE00);
  __chkstk_darwin(v114);
  v30 = (&v108 - v29);
  v31 = sub_2EF0(&qword_318908, &qword_26BE08);
  __chkstk_darwin(v31 - 8);
  v118 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v108 - v34;
  v36 = sub_2EF0(&qword_318910, &qword_26BE10);
  __chkstk_darwin(v36 - 8);
  v132 = &v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v38);
  v138 = &v108 - v40;
  if (a2)
  {
    v109 = v28;
    v110 = v35;
    v112 = v23;
    v113 = v22;

    v41 = v115;
    v42 = Color.init(hexString:)(v115, a2);
    if (v42 && (*&v43 = Color.rgbaComponents.getter(v42), v130 = v43, v45 = v44, v111 = v46, , *&v47.f64[0] = v111, *&v47.f64[1] = v130, v48 = vmulq_f64(v47, vdupq_n_s64(0x406FE00000000000uLL)), v49 = vmulq_f64(v48, vmulq_f64(v48, xmmword_26BA40)), sqrt(v49.f64[0] + v49.f64[1] + v45 * 255.0 * (v45 * 255.0 * 0.587)) < 205.0))
    {
      *&v130 = sub_262F80();
    }

    else
    {
      *&v130 = 0;
    }

    v50 = v41;
    swift_bridgeObjectRetain_n();
    if (Color.init(hexString:)(v41, a2))
    {
      *&v111 = sub_263000();
      v50 = v41;
    }

    else
    {
      *&v111 = 0;
    }

    v51 = Color.init(hexString:)(v50, a2);
    if (v51 && (*&v52 = Color.rgbaComponents.getter(v51), v115 = v52, v54 = v53, v108 = v55, , *&v56.f64[0] = v108, *&v56.f64[1] = v115, v57 = vmulq_f64(v56, vdupq_n_s64(0x406FE00000000000uLL)), v58 = vmulq_f64(v57, vmulq_f64(v57, xmmword_26BA40)), sqrt(v58.f64[0] + v58.f64[1] + v54 * 255.0 * (v54 * 255.0 * 0.587)) < 205.0))
    {
      (*(v116 + 104))(v109, enum case for Color.RGBColorSpace.sRGB(_:), v117);
      v59 = sub_263060();
      v60 = &enum case for BlendMode.hardLight(_:);
    }

    else
    {
      (*(v116 + 104))(v109, enum case for Color.RGBColorSpace.sRGB(_:), v117);
      v59 = sub_263060();
      v60 = &enum case for BlendMode.colorBurn(_:);
    }

    v61 = *(v114 + 36);
    v62 = *v60;
    v63 = sub_263640();
    (*(*(v63 - 8) + 104))(v30 + v61, v62, v63);
    *v30 = v59;
    sub_8198(v30, v119, &qword_318900, &qword_26BE00);
    swift_storeEnumTagMultiPayload();
    sub_575D8();
    v64 = v110;
    sub_261F80();
    sub_8E80(v30, &qword_318900, &qword_26BE00);
    v65 = v118;
    sub_8198(v64, v118, &qword_318908, &qword_26BE08);
    v66 = v121;
    *v121 = v111;
    v67 = sub_2EF0(&qword_318928, &qword_26BE70);
    sub_8198(v65, v66 + *(v67 + 48), &qword_318908, &qword_26BE08);

    sub_8E80(v64, &qword_318908, &qword_26BE08);
    sub_8E80(v65, &qword_318908, &qword_26BE08);

    v68 = v138;
    sub_22148(v66, v138, &qword_3188F0, &qword_26BDF0);
    (*(v112 + 56))(v68, 0, 1, v113);
  }

  else
  {
    (*(v23 + 56))(v39);
    *&v130 = 0;
  }

  sub_57520();
  if (qword_315B28 != -1)
  {
    swift_once();
  }

  v69 = v124;
  v70 = sub_B080(v124, qword_354048);
  (*(v123 + 16))(v122, v70, v69);
  sub_264A00();
  sub_2630A0();
  v72 = v125;
  v71 = v126;
  v73 = v127;
  (*(v126 + 104))(v125, enum case for Image.ResizingMode.stretch(_:), v127);
  v74 = sub_263100();

  (*(v71 + 8))(v72, v73);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  v143 = 1;
  *&v142[54] = v147;
  *&v142[70] = v148;
  *&v142[86] = v149;
  *&v142[102] = v150;
  *&v142[6] = v144;
  *&v142[22] = v145;
  *&v142[38] = v146;
  v75 = *(v129 + 36);
  v76 = enum case for BlendMode.softLight(_:);
  v77 = sub_263640();
  (*(*(v77 - 8) + 104))(&v19[v75], v76, v77);
  v78 = *&v142[80];
  *(v19 + 82) = *&v142[64];
  *(v19 + 98) = v78;
  *(v19 + 114) = *&v142[96];
  v79 = *&v142[16];
  *(v19 + 18) = *v142;
  *(v19 + 34) = v79;
  v80 = *&v142[48];
  *(v19 + 50) = *&v142[32];
  *v19 = v74;
  *(v19 + 1) = 0;
  *(v19 + 8) = 257;
  *(v19 + 16) = *&v142[110];
  *(v19 + 66) = v80;
  sub_22148(v19, v139, &qword_3188E8, &qword_26BDE8);
  sub_261420();
  v81 = a5[5];
  v151[4] = a5[4];
  v151[5] = v81;
  v82 = a5[7];
  v151[6] = a5[6];
  v151[7] = v82;
  v83 = a5[1];
  v151[0] = *a5;
  v151[1] = v83;
  v84 = a5[3];
  v151[2] = a5[2];
  v151[3] = v84;
  sub_2F8B8(v151);
  sub_2F950(v151);
  KeyPath = swift_getKeyPath();
  v86 = v135;
  *v135 = KeyPath;
  *(v86 + 40) = 0;
  *(v86 + 48) = swift_getKeyPath();
  *(v86 + 56) = 0;
  v87 = type metadata accessor for CoverView(0);
  v88 = v87[6];
  *(v86 + v88) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v89 = v87[7];
  *(v86 + v89) = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v90 = (v86 + v87[8]);
  sub_5757C(a5, v141);
  type metadata accessor for ProfileRestrictions(0);
  sub_579F0(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v90 = sub_261900();
  v90[1] = v91;
  v92 = v86 + v87[9];
  v140 = 1;
  sub_2631D0();
  v93 = *(&v141[0] + 1);
  *v92 = v141[0];
  *(v92 + 8) = v93;
  v94 = (v86 + v87[10]);
  v95 = a5[5];
  v94[4] = a5[4];
  v94[5] = v95;
  v96 = a5[7];
  v94[6] = a5[6];
  v94[7] = v96;
  v97 = a5[1];
  *v94 = *a5;
  v94[1] = v97;
  v98 = a5[3];
  v94[2] = a5[2];
  v94[3] = v98;
  *(v86 + v87[11]) = 1;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v99 = v132;
  v100 = (v86 + *(v133 + 36));
  v101 = v141[1];
  *v100 = v141[0];
  v100[1] = v101;
  v100[2] = v141[2];
  v102 = v138;
  sub_8198(v138, v99, &qword_318910, &qword_26BE10);
  v103 = v139;
  v104 = v134;
  sub_8198(v139, v134, &qword_3188E8, &qword_26BDE8);
  v105 = v137;
  sub_8198(v86, v137, &qword_3188E0, &qword_274300);
  v106 = v136;
  *v136 = v130;
  v107 = sub_2EF0(&qword_318918, &qword_26BE68);
  sub_8198(v99, v106 + v107[12], &qword_318910, &qword_26BE10);
  sub_8198(v104, v106 + v107[16], &qword_3188E8, &qword_26BDE8);
  sub_8198(v105, v106 + v107[20], &qword_3188E0, &qword_274300);
  sub_8E80(v86, &qword_3188E0, &qword_274300);
  sub_8E80(v103, &qword_3188E8, &qword_26BDE8);
  sub_8E80(v102, &qword_318910, &qword_26BE10);
  sub_8E80(v105, &qword_3188E0, &qword_274300);
  sub_8E80(v104, &qword_3188E8, &qword_26BDE8);
  sub_8E80(v99, &qword_318910, &qword_26BE10);
}

double sub_56584@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_2630C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v8 = a1;
    sub_2630A0();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v9 = sub_263100();

    (*(v5 + 8))(v7, v4);
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    v17 = v22;
    v15 = v24;
    v13[8] = 0;
    *&v26 = v9;
    *(&v26 + 1) = v21;
    LOBYTE(v27) = v22;
    *(&v27 + 1) = *v16;
    DWORD1(v27) = *&v16[3];
    *(&v27 + 1) = v23;
    v28[0] = v24;
    *&v28[1] = *v14;
    *&v28[4] = *&v14[3];
    *&v28[8] = v25;
    v28[24] = 0;

    sub_2EF0(&qword_3188C0, &qword_26BDD8);
    sub_2EF0(&qword_3188C8, &qword_26BDE0);
    sub_5749C();
    sub_8E38(&qword_3188D8, &qword_3188C8, &qword_26BDE0, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_261F80();

    v26 = v18;
    v27 = v19;
    *v28 = *v20;
    *&v28[9] = *&v20[9];
  }

  else
  {
    v10 = _s7BooksUI14ColorConstantsV9booksGray05SwiftB00C0Vvg_0();
    LOBYTE(v21) = 1;
    *&v18 = v10;
    WORD4(v18) = 256;
    v20[24] = 1;
    sub_2EF0(&qword_3188C0, &qword_26BDD8);
    sub_2EF0(&qword_3188C8, &qword_26BDE0);
    sub_5749C();
    sub_8E38(&qword_3188D8, &qword_3188C8, &qword_26BDE0, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_261F80();
  }

  v11 = v27;
  *a2 = v26;
  a2[1] = v11;
  a2[2] = *v28;
  result = *&v28[9];
  *(a2 + 41) = *&v28[9];
  return result;
}

uint64_t type metadata accessor for HeroLockupView(uint64_t a1)
{
  result = qword_318800;
  if (!qword_318800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_56998(uint64_t a1, uint64_t a2, int *a3)
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

  v11 = sub_2EF0(&qword_3187A0, &qword_26BB68);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7] + 24);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for HeroLockupModel(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_56B3C(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  result = sub_2EF0(&qword_3187A0, &qword_26BB68);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 24) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for HeroLockupModel(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_56CCC(uint64_t a1)
{
  sub_56DD8(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v1 <= 0x3F)
  {
    sub_14C14();
    if (v2 <= 0x3F)
    {
      sub_56DD8(319, &unk_318810, type metadata accessor for FontConstants.Hero);
      if (v3 <= 0x3F)
      {
        type metadata accessor for HeroLockupModel(319);
        if (v4 <= 0x3F)
        {
          sub_56E2C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_56DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_56E2C(uint64_t a1)
{
  if (!qword_316A28)
  {
    sub_2F9C(&qword_316A30, &qword_2697B0);
    v1 = sub_264A60();
    if (!v2)
    {
      atomic_store(v1, &qword_316A28);
    }
  }
}

unint64_t sub_56E94()
{
  result = qword_318850;
  if (!qword_318850)
  {
    sub_2F9C(&qword_318798, &qword_26BB08);
    sub_8E38(&qword_318858, &qword_318788, &qword_26BAF8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318850);
  }

  return result;
}

uint64_t sub_56F64(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_56F94(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_56FD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_57018(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_570F4()
{
  if (*(v0 + 56))
  {
    sub_3080((v0 + 16));
  }

  else
  {
  }

  sub_3074(*(v0 + 64), *(v0 + 72));

  sub_57190(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224));

  return swift_deallocObject();
}

double sub_57190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if ((a15 & 0x2000000000000000) != 0)
  {
    sub_57200(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15 & 0xDFFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_57200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15)
{
  if (!(a15 >> 62))
  {

    sub_572B8(a8, a9, a10, a11, a12, a13, a14);
  }
}

double sub_572B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_57310()
{
  result = qword_318870;
  if (!qword_318870)
  {
    sub_2F9C(&qword_318860, &qword_26BDA0);
    sub_5739C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318870);
  }

  return result;
}

unint64_t sub_5739C()
{
  result = qword_318878;
  if (!qword_318878)
  {
    sub_2F9C(&qword_318868, &qword_26BDA8);
    sub_8E38(&qword_318880, &qword_318888, &qword_26BDB0, &protocol conformance descriptor for GeometryReader<A>);
    sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318878);
  }

  return result;
}

unint64_t sub_5749C()
{
  result = qword_3188D0;
  if (!qword_3188D0)
  {
    sub_2F9C(&qword_3188C0, &qword_26BDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3188D0);
  }

  return result;
}

unint64_t sub_57520()
{
  result = qword_316268;
  if (!qword_316268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_316268);
  }

  return result;
}

unint64_t sub_575D8()
{
  result = qword_318920;
  if (!qword_318920)
  {
    sub_2F9C(&qword_318900, &qword_26BE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318920);
  }

  return result;
}

uint64_t sub_5765C()
{
  v1 = type metadata accessor for HeroLockupView(0);
  v19 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v19 + 16) & ~v19);
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_261180();
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  else
  {
  }

  sub_3074(*(v2 + v1[5]), *(v2 + v1[5] + 8));
  v4 = v2 + v1[6];
  sub_2EF0(&qword_318780, &qword_26BAF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v6 = sub_261690();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  sub_3080((v2 + v1[7]));
  v7 = v2 + v1[8];
  v8 = sub_260BD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v7, v8);
  v11 = type metadata accessor for HeroLockupModel(0);
  v10(v7 + v11[5], v8);
  v12 = v11[6];
  v13 = *(v9 + 48);
  if (!v13(v7 + v12, 1, v8))
  {
    v10(v7 + v12, v8);
  }

  v14 = (v7 + v11[7]);
  v15 = sub_57190(*v14, v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10], v14[11], v14[12], v14[13], v14[14], v14[15], v14[16], v14[17]);
  v16 = v11[8];
  if (!(v13)(v7 + v16, 1, v8, v15))
  {
    v10(v7 + v16, v8);
  }

  v17 = (v2 + v1[9]);
  if (v17[3])
  {
    sub_3080(v17);
  }

  return swift_deallocObject();
}

uint64_t sub_57970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HeroLockupView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_52964(a1, v6, a2);
}

uint64_t sub_579F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_57AC4()
{
  v1 = sub_260BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for HeroLockupView(0);
  v23 = *(*(v5 - 1) + 80);
  v6 = (v3 + v4 + v23) & ~v23;
  v7 = *(v2 + 8);
  v7(v0 + v3, v1);
  v8 = v0 + v6;
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_261180();
    (*(*(v9 - 8) + 8))(v0 + v6, v9);
  }

  else
  {
  }

  sub_3074(*(v8 + v5[5]), *(v8 + v5[5] + 8));
  v10 = v8 + v5[6];
  sub_2EF0(&qword_318780, &qword_26BAF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v12 = sub_261690();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  sub_3080((v8 + v5[7]));
  v13 = v8 + v5[8];
  v7(v13, v1);
  v14 = type metadata accessor for HeroLockupModel(0);
  v15 = v7;
  v7(v13 + v14[5], v1);
  v16 = v14[6];
  v17 = *(v2 + 48);
  if (!v17(v13 + v16, 1, v1))
  {
    v15(v13 + v16, v1);
  }

  v18 = (v13 + v14[7]);
  v19 = sub_57190(*v18, v18[1], v18[2], v18[3], v18[4], v18[5], v18[6], v18[7], v18[8], v18[9], v18[10], v18[11], v18[12], v18[13], v18[14], v18[15], v18[16], v18[17]);
  v20 = v14[8];
  if (!(v17)(v13 + v20, 1, v1, v19))
  {
    v15(v13 + v20, v1);
  }

  v21 = (v8 + v5[9]);
  if (v21[3])
  {
    sub_3080(v21);
  }

  return swift_deallocObject();
}

double sub_57E20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for HeroLockupView(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_546C0(a1, v2 + v6, v9, a2);
}

unint64_t sub_57F04()
{
  result = qword_3189A8;
  if (!qword_3189A8)
  {
    sub_2F9C(&qword_3189A0, &qword_26BED0);
    sub_57FBC(&qword_3189B0, &qword_3189B8, &qword_26BED8, sub_58040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3189A8);
  }

  return result;
}

uint64_t sub_57FBC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_58070()
{
  result = qword_3189D0;
  if (!qword_3189D0)
  {
    sub_2F9C(&qword_3189D8, &unk_27CEE0);
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3189D0);
  }

  return result;
}

uint64_t sub_58128(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_58190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_58200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_58268()
{
  sub_2F9C(&qword_318860, &qword_26BDA0);
  sub_261FA0();
  sub_57310();
  sub_579F0(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_583D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = sub_2EF0(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_5846C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = sub_2EF0(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_58520(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_5894C(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_585A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_317870, &unk_26BFB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_317878, &unk_27E490);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 32);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_586E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_317870, &unk_26BFB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2EF0(&qword_317878, &unk_27E490);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 32) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_58828(uint64_t a1)
{
  sub_588E8(319);
  if (v1 <= 0x3F)
  {
    sub_3E7AC();
    if (v2 <= 0x3F)
    {
      sub_5894C(319, &qword_3178F8, &type metadata accessor for BlendMode);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_588E8(uint64_t a1)
{
  if (!qword_3178E8)
  {
    sub_2F9C(&qword_3178F0, &qword_269C90);
    v1 = sub_2611E0();
    if (!v2)
    {
      atomic_store(v1, &qword_3178E8);
    }
  }
}

void sub_5894C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_589A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_589E8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_58A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_2601E0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

double sub_58AD0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v61 = a5;
  v62 = a6;
  v52 = a3;
  v53 = a4;
  v59 = sub_2EF0(&qword_318D38, &qword_26C2B8) - 8;
  __chkstk_darwin(v59);
  v60 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  v63 = a1;
  v64 = a2;
  v51 = sub_10A84();

  v12 = sub_2628F0();
  v14 = v13;
  v16 = v15;
  sub_262580();
  v17 = sub_262840();
  v19 = v18;
  LOBYTE(a1) = v20;

  sub_39DBC(v12, v14, v16 & 1);

  v21 = sub_262830();
  v55 = v22;
  v56 = v21;
  v57 = v23;
  v58 = v24;
  sub_39DBC(v17, v19, a1 & 1);

  KeyPath = swift_getKeyPath();
  v63 = v52;
  v64 = v53;

  v25 = sub_2628F0();
  v27 = v26;
  v29 = v28;
  sub_262580();
  v30 = sub_262840();
  v32 = v31;
  v34 = v33;

  sub_39DBC(v25, v27, v29 & 1);

  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v35 = sub_2627E0();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  sub_39DBC(v30, v32, v34 & 1);

  v42 = swift_getKeyPath();
  type metadata accessor for BulletPointStack(0);
  sub_40A78(&v11[*(v59 + 44)]);
  *v11 = v35;
  *(v11 + 1) = v37;
  v11[16] = v39 & 1;
  *(v11 + 3) = v41;
  *(v11 + 4) = v42;
  *(v11 + 5) = 6;
  v11[48] = 0;
  v43 = v60;
  sub_8198(v11, v60, &qword_318D38, &qword_26C2B8);
  v44 = v62;
  v46 = v55;
  v45 = v56;
  *v62 = v56;
  v44[1] = v46;
  LOBYTE(v42) = v57 & 1;
  *(v44 + 16) = v57 & 1;
  v47 = KeyPath;
  v44[3] = v58;
  v44[4] = v47;
  v44[5] = 6;
  *(v44 + 48) = 0;
  v48 = v44;
  v49 = sub_2EF0(&qword_318D40, &qword_26C2F0);
  sub_8198(v43, v48 + *(v49 + 48), &qword_318D38, &qword_26C2B8);
  sub_43B58(v45, v46, v42);

  sub_8E80(v11, &qword_318D38, &qword_26C2B8);
  sub_8E80(v43, &qword_318D38, &qword_26C2B8);
  sub_39DBC(v45, v46, v42);

  return result;
}

double sub_58E68@<D0>(uint64_t a1@<X8>)
{
  v85 = sub_2EF0(&qword_318D48, &unk_26C2F8);
  __chkstk_darwin(v85);
  v4 = &v79 - v3;
  v5 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v5 - 8);
  v81 = &v79 - v6;
  v83 = sub_2EF0(&qword_318D50, &qword_26C308);
  __chkstk_darwin(v83);
  v82 = &v79 - v7;
  v90 = sub_2EF0(&qword_318D58, &qword_26C310);
  __chkstk_darwin(v90);
  v86 = &v79 - v8;
  v9 = sub_2EF0(&qword_318D60, &qword_26C318);
  __chkstk_darwin(v9);
  v11 = &v79 - v10;
  v89 = sub_2EF0(&qword_318D68, &qword_26C320);
  __chkstk_darwin(v89);
  v13 = &v79 - v12;
  v14 = *(type metadata accessor for BulletPointStack(0) + 28);
  v84 = v1;
  v15 = (v1 + v14);
  v17 = v15[1];
  v16 = v15[2];
  v18 = v15[3];
  if (v17)
  {
    v87 = v13;
    v88 = a1;
    v19 = *v15;
    if (v18)
    {

      *v4 = sub_261E50();
      *(v4 + 1) = 0x4018000000000000;
      v4[16] = 0;
      v20 = sub_2EF0(&qword_318D70, &qword_26C328);
      sub_5999C(v19, v17, v16, v18, v84, &v4[*(v20 + 44)]);

      v21 = &unk_26C2F8;
      sub_8198(v4, v82, &qword_318D48, &unk_26C2F8);
      swift_storeEnumTagMultiPayload();
      sub_5CD90();
      sub_8E38(&qword_318DB0, &qword_318D48, &unk_26C2F8, &protocol conformance descriptor for VStack<A>);
      v22 = v86;
      sub_261F80();
      sub_8198(v22, v87, &qword_318D58, &qword_26C310);
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_318DB8, &unk_26C350);
      sub_5CF8C();
      sub_5D018();
      sub_261F80();
      sub_8E80(v22, &qword_318D58, &qword_26C310);
      v23 = v4;
      v24 = &qword_318D48;
LABEL_6:
      sub_8E80(v23, v24, v21);
      return result;
    }

    *&v103 = *v15;
    *(&v103 + 1) = v17;
    sub_10A84();

    v47 = sub_2628F0();
    v49 = v48;
    v51 = v50;
    sub_262690();
    v52 = sub_262840();
    v54 = v53;
    v56 = v55;

    sub_39DBC(v47, v49, v51 & 1);

    v85 = sub_262830();
    v58 = v57;
    v60 = v59;
    v86 = v61;
    sub_39DBC(v52, v54, v56 & 1);

    if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
    {
      v62 = sub_2625C0();
      v63 = v81;
      (*(*(v62 - 8) + 56))(v81, 1, 1, v62);
    }

    else
    {
      v65 = enum case for Font.Design.serif (_:);
      v66 = sub_2625C0();
      v67 = *(v66 - 8);
      v63 = v81;
      (*(v67 + 104))(v81, v65, v66);
      (*(v67 + 56))(v63, 0, 1, v66);
    }

    v68 = v85;
    v69 = sub_2627C0();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    sub_39DBC(v68, v58, v60 & 1);

    sub_8E80(v63, &qword_318458, &unk_26B270);
    KeyPath = swift_getKeyPath();
    v102 = v73 & 1;
    v100 = 0;
    v99 = 1;
    v91 = v69;
    v92 = v71;
    v93 = v73 & 1;
    *v94 = *v101;
    *&v94[3] = *&v101[3];
    v95 = v75;
    v96 = KeyPath;
    v97 = 3;
    v98 = 256;
    sub_43B58(v69, v71, v73 & 1);

    sub_2EF0(&qword_3189D8, &unk_27CEE0);
    sub_58070();
    sub_261F80();
    v77 = v104;
    v78 = v87;
    *v87 = v103;
    v78[1] = v77;
    v78[2] = v105;
    *(v78 + 24) = v106;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_318DB8, &unk_26C350);
    sub_5CF8C();
    sub_5D018();
    sub_261F80();
    sub_39DBC(v69, v71, v73 & 1);
  }

  else
  {
    if (v18)
    {
      *&v103 = v15[2];
      *(&v103 + 1) = v18;
      sub_10A84();

      v25 = sub_2628F0();
      v81 = v9;
      v27 = v26;
      v29 = v28;
      sub_262580();
      v30 = sub_262840();
      v88 = a1;
      v31 = v30;
      v79 = v32;
      v87 = v13;
      v34 = v33;

      sub_39DBC(v25, v27, v29 & 1);

      _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
      v35 = v79;
      v36 = sub_2627E0();
      v80 = v37;
      v39 = v38;
      v41 = v40;

      sub_39DBC(v31, v35, v34 & 1);

      v42 = swift_getKeyPath();
      v43 = swift_getKeyPath();
      v39 &= 1u;
      LOBYTE(v103) = v39;
      LOBYTE(v91) = 0;
      sub_40A78(&v11[*(v81 + 9)]);
      v44 = v80;
      *v11 = v36;
      *(v11 + 1) = v44;
      v11[16] = v39;
      *(v11 + 3) = v41;
      *(v11 + 4) = v42;
      v11[40] = 1;
      *(v11 + 6) = v43;
      *(v11 + 7) = 3;
      v11[64] = 0;
      v21 = &qword_26C318;
      sub_8198(v11, v82, &qword_318D60, &qword_26C318);
      swift_storeEnumTagMultiPayload();
      sub_5CD90();
      sub_8E38(&qword_318DB0, &qword_318D48, &unk_26C2F8, &protocol conformance descriptor for VStack<A>);
      v45 = v86;
      sub_261F80();
      sub_8198(v45, v87, &qword_318D58, &qword_26C310);
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_318DB8, &unk_26C350);
      sub_5CF8C();
      sub_5D018();
      sub_261F80();
      sub_8E80(v45, &qword_318D58, &qword_26C310);
      v23 = v11;
      v24 = &qword_318D60;
      goto LABEL_6;
    }

    v101[0] = 0;
    HIBYTE(v98) = 0;
    sub_2EF0(&qword_3189D8, &unk_27CEE0);
    sub_58070();
    sub_261F80();
    v64 = v104;
    *v13 = v103;
    *(v13 + 1) = v64;
    *(v13 + 2) = v105;
    *(v13 + 24) = v106;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_318DB8, &unk_26C350);
    sub_5CF8C();
    sub_5D018();
    sub_261F80();
  }

  return result;
}

double sub_5999C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v74 = a5;
  v75 = a6;
  v71 = a3;
  v72 = a4;
  v73 = sub_2EF0(&qword_318D60, &qword_26C318);
  __chkstk_darwin(v73);
  v76 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v64 - v10;
  v12 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v12 - 8);
  v69 = &v64 - v13;
  v78 = a1;
  v79 = a2;
  v14 = sub_10A84();

  v70 = v14;
  v15 = sub_2628F0();
  v17 = v16;
  v19 = v18;
  sub_262690();
  v20 = sub_262840();
  v22 = v21;
  v24 = v23;

  sub_39DBC(v15, v17, v19 & 1);

  v25 = sub_262830();
  v27 = v26;
  v29 = v28;
  sub_39DBC(v20, v22, v24 & 1);

  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v30 = sub_2625C0();
    v31 = v69;
    (*(*(v30 - 8) + 56))(v69, 1, 1, v30);
  }

  else
  {
    v32 = enum case for Font.Design.serif (_:);
    v33 = sub_2625C0();
    v34 = *(v33 - 8);
    v31 = v69;
    (*(v34 + 104))(v69, v32, v33);
    (*(v34 + 56))(v31, 0, 1, v33);
  }

  v35 = sub_2627C0();
  v66 = v36;
  v67 = v35;
  v68 = v37;
  v69 = v38;
  sub_39DBC(v25, v27, v29 & 1);

  sub_8E80(v31, &qword_318458, &unk_26B270);
  KeyPath = swift_getKeyPath();
  v78 = v71;
  v79 = v72;

  v39 = sub_2628F0();
  v41 = v40;
  v43 = v42;
  sub_262580();
  v44 = sub_262840();
  v46 = v45;
  v48 = v47;

  sub_39DBC(v39, v41, v43 & 1);

  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v49 = sub_2627E0();
  v51 = v50;
  LOBYTE(v39) = v52;
  v54 = v53;

  sub_39DBC(v44, v46, v48 & 1);

  v55 = swift_getKeyPath();
  v56 = swift_getKeyPath();
  LOBYTE(v78) = v39 & 1;
  v77 = 0;
  type metadata accessor for BulletPointStack(0);
  sub_40A78(&v11[*(v73 + 36)]);
  *v11 = v49;
  *(v11 + 1) = v51;
  v11[16] = v39 & 1;
  *(v11 + 3) = v54;
  *(v11 + 4) = v55;
  v11[40] = 1;
  *(v11 + 6) = v56;
  *(v11 + 7) = 3;
  v11[64] = 0;
  v57 = v76;
  sub_8198(v11, v76, &qword_318D60, &qword_26C318);
  v58 = v75;
  v60 = v66;
  v59 = v67;
  *v75 = v67;
  v58[1] = v60;
  LOBYTE(v49) = v68 & 1;
  *(v58 + 16) = v68 & 1;
  v61 = KeyPath;
  v58[3] = v69;
  v58[4] = v61;
  v58[5] = 3;
  *(v58 + 48) = 0;
  v62 = sub_2EF0(&qword_318DD0, &qword_26C390);
  sub_8198(v57, v58 + *(v62 + 48), &qword_318D60, &qword_26C318);
  sub_43B58(v59, v60, v49);

  sub_8E80(v11, &qword_318D60, &qword_26C318);
  sub_8E80(v57, &qword_318D60, &qword_26C318);
  sub_39DBC(v59, v60, v49);

  return result;
}

uint64_t sub_59EE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2EF0(&qword_3174E0, &qword_26B310);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v10 = sub_261690();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  v37 = sub_2EF0(&qword_3174E8, &qword_269970);
  __chkstk_darwin(v37);
  v36 = &v32 - v17;
  v34 = sub_2EF0(&qword_318C68, &qword_26C1B8);
  __chkstk_darwin(v34);
  v19 = &v32 - v18;
  *v19 = sub_261E50();
  *(v19 + 1) = 0x4042800000000000;
  v19[16] = 0;
  v20 = *(sub_2EF0(&qword_318C70, &qword_26C1C0) + 44);
  v35 = v19;
  sub_5A3A0(v2, &v19[v20]);
  v21 = v11;
  v22 = *(v11 + 104);
  v22(v16, enum case for DynamicTypeSize.xSmall(_:), v10);
  v22(v13, enum case for DynamicTypeSize.accessibility1(_:), v10);
  sub_5CAD8(&qword_317538, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_264380();
  if (result)
  {
    v24 = *(v11 + 32);
    v24(v9, v16, v10);
    v24(&v9[*(v4 + 48)], v13, v10);
    sub_8198(v9, v6, &qword_3174E0, &qword_26B310);
    v33 = a1;
    v25 = *(v4 + 48);
    v26 = v36;
    v24(v36, v6, v10);
    v27 = *(v21 + 8);
    v27(&v6[v25], v10);
    sub_22148(v9, v6, &qword_3174E0, &qword_26B310);
    v24((v26 + *(v37 + 36)), &v6[*(v4 + 48)], v10);
    v27(v6, v10);
    sub_8E38(&qword_318C78, &qword_318C68, &qword_26C1B8, &protocol conformance descriptor for VStack<A>);
    sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970, &protocol conformance descriptor for ClosedRange<A>);
    v28 = v33;
    v29 = v35;
    sub_262B70();
    sub_8E80(v26, &qword_3174E8, &qword_269970);
    sub_8E80(v29, &qword_318C68, &qword_26C1B8);
    KeyPath = swift_getKeyPath();
    result = sub_2EF0(&qword_318C80, &qword_26C1F8);
    v31 = (v28 + *(result + 36));
    *v31 = KeyPath;
    v31[1] = 0x3FE0000000000000;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_5A3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for BulletPointStack(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_2EF0(&qword_318C88, &qword_26C200);
  __chkstk_darwin(v7 - 8);
  v28 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v27 - v10;
  v12 = sub_2EF0(&qword_318C90, &qword_26C208);
  __chkstk_darwin(v12 - 8);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v27 - v16;
  sub_58E68(v27 - v16);
  *v11 = sub_263580();
  *(v11 + 1) = v18;
  *(v11 + 2) = 0x4028000000000000;
  v11[24] = 0;
  *(v11 + 4) = 0x403A000000000000;
  v11[40] = 0;
  v27[2] = *(sub_2EF0(&qword_318C98, &qword_26C210) + 44);
  v32 = *(a1 + *(v4 + 36) + 32);
  sub_5C778(a1, v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BulletPointStack);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  sub_5C9F0(v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for BulletPointStack);

  v27[1] = sub_2EF0(&qword_318CA0, &qword_26C218);
  sub_2601E0();
  sub_2EF0(&qword_318CA8, &qword_26C220);
  sub_8E38(&qword_318CB0, &qword_318CA0, &qword_26C218, &protocol conformance descriptor for [A]);
  v21 = sub_2F9C(&qword_318CB8, &qword_26C228);
  v22 = sub_8E38(&qword_318CC0, &qword_318CB8, &qword_26C228, &protocol conformance descriptor for GridRow<A>);
  v30 = v21;
  v31 = v22;
  swift_getOpaqueTypeConformance2();
  sub_5CAD8(&qword_318CC8, type metadata accessor for BulletPointStack.Bullet, &unk_26C3C0);
  sub_2633C0();
  sub_8198(v17, v14, &qword_318C90, &qword_26C208);
  v23 = v28;
  sub_5CB40(v11, v28);
  v24 = v29;
  sub_8198(v14, v29, &qword_318C90, &qword_26C208);
  v25 = sub_2EF0(&qword_318CD0, &qword_26C230);
  sub_5CB40(v23, v24 + *(v25 + 48));
  sub_8E80(v11, &qword_318C88, &qword_26C200);
  sub_8E80(v17, &qword_318C90, &qword_26C208);
  sub_8E80(v23, &qword_318C88, &qword_26C200);
  return sub_8E80(v14, &qword_318C90, &qword_26C208);
}

uint64_t sub_5A810(void *a1, uint64_t a2)
{
  v4 = sub_262370();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_318CB8, &qword_26C228);
  __chkstk_darwin(v8);
  v10 = &v12 - v9;
  *v10 = sub_261D10();
  v10[8] = 0;
  sub_5A9C0(a2, a1, &v10[*(v8 + 36)]);
  sub_262350();
  sub_8E38(&qword_318CC0, &qword_318CB8, &qword_26C228, &protocol conformance descriptor for GridRow<A>);
  sub_262C70();
  (*(v5 + 8))(v7, v4);
  return sub_8E80(v10, &qword_318CB8, &qword_26C228);
}

uint64_t sub_5A9C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v101 = a3;
  v5 = sub_2EF0(&qword_318CD8, &qword_26C238);
  __chkstk_darwin(v5 - 8);
  v106 = (&v86 - v6);
  v104 = sub_2EF0(&qword_318CE0, &unk_26C240);
  __chkstk_darwin(v104);
  v108 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = &v86 - v9;
  __chkstk_darwin(v10);
  v107 = &v86 - v11;
  v109 = sub_262180();
  v97 = *(v109 - 8);
  __chkstk_darwin(v109);
  v88 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_2EF0(&qword_317970, &qword_269D00);
  __chkstk_darwin(v93);
  v98 = &v86 - v13;
  v14 = sub_2EF0(&qword_3178F0, &qword_269C90);
  __chkstk_darwin(v14 - 8);
  v89 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v91 = &v86 - v17;
  __chkstk_darwin(v18);
  v96 = (&v86 - v19);
  v20 = sub_2630C0();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_2EF0(&qword_318CE8, &qword_26C250);
  __chkstk_darwin(v92);
  v100 = &v86 - v24;
  v25 = sub_2EF0(&qword_318CF0, &qword_26C258);
  __chkstk_darwin(v25);
  v95 = &v86 - v26;
  v99 = sub_2EF0(&qword_318CF8, &qword_26C260);
  v102 = *(v99 - 8);
  __chkstk_darwin(v99);
  v94 = &v86 - v27;
  v28 = sub_261C90();
  v90 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2EF0(&qword_318D00, &qword_26C268);
  __chkstk_darwin(v31 - 8);
  v103 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v86 - v34;
  v36 = *(type metadata accessor for BulletPointStack(0) + 20);
  v110 = a1;
  v37 = a1 + v36;
  v38 = *v37;
  if (*(v37 + 8) != 1)
  {

    sub_264900();
    v86 = v28;
    v41 = sub_2624B0();
    v87 = v20;
    v42 = v41;
    sub_260D10();

    v20 = v87;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v38, 0);
    (v90[1])(v30, v86);
    if (v114)
    {
      goto LABEL_3;
    }

LABEL_5:
    v87 = v25;
    v90 = a2;

    sub_2630B0();
    (*(v21 + 104))(v23, enum case for Image.ResizingMode.stretch(_:), v20);
    v43 = sub_263100();

    (*(v21 + 8))(v23, v20);
    v44 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    KeyPath = swift_getKeyPath();
    v46 = v100;
    v47 = v91;
    sub_40A78((v100 + *(v92 + 36)));
    *v46 = v43;
    *(v46 + 8) = 0;
    *(v46 + 16) = 1;
    *(v46 + 24) = KeyPath;
    *(v46 + 32) = v44;
    v48 = v96;
    sub_408A8(v96);
    v49 = v97;
    v50 = v109;
    (*(v97 + 104))(v47, enum case for UserInterfaceSizeClass.compact(_:), v109);
    (*(v49 + 56))(v47, 0, 1, v50);
    v51 = *(v93 + 48);
    v52 = v98;
    sub_8198(v48, v98, &qword_3178F0, &qword_269C90);
    sub_8198(v47, v52 + v51, &qword_3178F0, &qword_269C90);
    v53 = *(v49 + 48);
    if (v53(v52, 1, v50) == 1)
    {
      sub_8E80(v47, &qword_3178F0, &qword_269C90);
      v54 = v98;
      sub_8E80(v48, &qword_3178F0, &qword_269C90);
      v55 = v53(v54 + v51, 1, v109);
      a2 = v90;
      if (v55 == 1)
      {
        sub_8E80(v54, &qword_3178F0, &qword_269C90);
LABEL_12:
        v62 = v87;
        v40 = v110;
        _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
        sub_2613A0();
        v63 = v95;
        sub_22148(v100, v95, &qword_318CE8, &qword_26C250);
        v64 = (v63 + *(v62 + 36));
        v65 = v112;
        *v64 = v111;
        v64[1] = v65;
        v64[2] = v113;
        sub_5CBB8();
        v66 = v94;
        sub_262C60();
        sub_8E80(v63, &qword_318CF0, &qword_26C258);
        sub_22148(v66, v35, &qword_318CF8, &qword_26C260);
        v39 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v56 = v89;
      sub_8198(v52, v89, &qword_3178F0, &qword_269C90);
      if (v53(v52 + v51, 1, v109) != 1)
      {
        v57 = v97;
        v58 = v52 + v51;
        v59 = v88;
        v60 = v109;
        (*(v97 + 32))(v88, v58, v109);
        sub_5CAD8(&qword_317AC0, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
        sub_264390();
        v61 = *(v57 + 8);
        v61(v59, v60);
        sub_8E80(v47, &qword_3178F0, &qword_269C90);
        sub_8E80(v96, &qword_3178F0, &qword_269C90);
        v61(v56, v60);
        sub_8E80(v52, &qword_3178F0, &qword_269C90);
        a2 = v90;
        goto LABEL_12;
      }

      sub_8E80(v47, &qword_3178F0, &qword_269C90);
      v54 = v98;
      sub_8E80(v96, &qword_3178F0, &qword_269C90);
      (*(v97 + 8))(v56, v109);
      a2 = v90;
    }

    sub_8E80(v54, &qword_317970, &qword_269D00);
    goto LABEL_12;
  }

  if ((v38 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v39 = 1;
  v40 = v110;
LABEL_13:
  (*(v102 + 56))(v35, v39, 1, v99);
  v67 = a2[2];
  v68 = a2[3];
  v69 = v35;
  v70 = a2[4];
  v71 = a2[5];
  v72 = sub_261E60();
  v73 = v106;
  *v106 = v72;
  *(v73 + 8) = 0x4000000000000000;
  *(v73 + 16) = 0;
  v74 = sub_2EF0(&qword_318D28, &qword_26C2A8);
  sub_58AD0(v67, v68, v70, v71, v40, (v73 + *(v74 + 44)));
  sub_263580();
  sub_261830();
  v75 = v105;
  sub_22148(v73, v105, &qword_318CD8, &qword_26C238);
  v76 = (v75 + *(v104 + 36));
  v77 = v119;
  v76[4] = v118;
  v76[5] = v77;
  v76[6] = v120;
  v78 = v115;
  *v76 = v114;
  v76[1] = v78;
  v79 = v117;
  v76[2] = v116;
  v76[3] = v79;
  v80 = v107;
  sub_22148(v75, v107, &qword_318CE0, &unk_26C240);
  v81 = v103;
  sub_8198(v69, v103, &qword_318D00, &qword_26C268);
  v82 = v108;
  sub_8198(v80, v108, &qword_318CE0, &unk_26C240);
  v83 = v101;
  sub_8198(v81, v101, &qword_318D00, &qword_26C268);
  v84 = sub_2EF0(&qword_318D30, &qword_26C2B0);
  sub_8198(v82, v83 + *(v84 + 48), &qword_318CE0, &unk_26C240);
  sub_8E80(v80, &qword_318CE0, &unk_26C240);
  sub_8E80(v69, &qword_318D00, &qword_26C268);
  sub_8E80(v82, &qword_318CE0, &unk_26C240);
  return sub_8E80(v81, &qword_318D00, &qword_26C268);
}

uint64_t sub_5B7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_404B8(v6);
  v7 = [objc_opt_self() quaternarySystemFillColor];
  v8 = sub_263070();
  sub_5C670(v6, type metadata accessor for ColorConstants);
  LOBYTE(v6) = sub_262500();
  v9 = sub_2EF0(&qword_318C50, &qword_26C198);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = a2 + *(sub_2EF0(&qword_318C58, &qword_26C1A0) + 36);
  *v10 = v8;
  *(v10 + 8) = v6;
  v11 = (a2 + *(sub_2EF0(&qword_318C60, &qword_26C1A8) + 36));
  v12 = *(sub_2617E0() + 20);
  v13 = enum case for RoundedCornerStyle.continuous(_:);
  v14 = sub_261DD0();
  (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
  __asm { FMOV            V0.2D, #22.0 }

  *v11 = _Q0;
  result = sub_2EF0(&qword_317DA8, &qword_26C1B0);
  *&v11[*(result + 36)] = 256;
  return result;
}

__n128 sub_5B9A0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ScrollingCardModifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_318BE8, &unk_26C120);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v23 - v14;
  (*(v11 + 16))(v23 - v14, a1, v10, v13);
  sub_5C778(v3, v9, type metadata accessor for ScrollingCardModifier);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + *(v7 + 80) + v16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v16, v15, v10);
  sub_5C9F0(v9, v18 + v17, type metadata accessor for ScrollingCardModifier);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  v19 = *(sub_2EF0(&qword_318BF0, &qword_26C130) + 36);
  *(a2 + v19) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  *a2 = sub_5C3A0;
  *(a2 + 8) = v18;
  v20 = v23[5];
  *(a2 + 80) = v23[4];
  *(a2 + 96) = v20;
  *(a2 + 112) = v23[6];
  v21 = v23[1];
  *(a2 + 16) = v23[0];
  *(a2 + 32) = v21;
  result = v23[3];
  *(a2 + 48) = v23[2];
  *(a2 + 64) = result;
  return result;
}

uint64_t sub_5BC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = sub_261FF0();
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_318BF8, &qword_26C168);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_2624E0();
  v16 = a2;
  v17 = a3;
  v18 = a1;
  sub_2EF0(&qword_318C00, &qword_26C170);
  sub_5C4A0();
  sub_261130();
  sub_261FE0();
  LOBYTE(a1) = sub_2624E0();
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != a1)
  {
    sub_2624D0();
  }

  sub_8E38(&qword_318C40, &qword_318BF8, &qword_26C168, &protocol conformance descriptor for ScrollView<A>);
  sub_262C80();
  (*(v6 + 8))(v8, v15);
  return (*(v10 + 8))(v12, v9);
}

__n128 sub_5BEC0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v4 - 8);
  v6 = (v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2EF0(&qword_318C18, &qword_26C178);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v29 - v9;
  *v10 = sub_261E50();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = *(sub_2EF0(&qword_318C48, &qword_26C190) + 44);
  v12 = sub_2EF0(&qword_318BE8, &unk_26C120);
  (*(*(v12 - 8) + 16))(&v10[v11], a1, v12);
  sub_40880(v6);
  sub_5C670(v6, type metadata accessor for SizeConstants.Spacing);
  v13 = sub_262500();
  sub_2610C0();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v10[*(sub_2EF0(&qword_318C28, &qword_26C180) + 36)];
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  sub_261420();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v23 = &v10[*(v8 + 44)];
  v24 = v29[1];
  *v23 = v29[0];
  *(v23 + 1) = v24;
  *(v23 + 2) = v29[2];
  sub_261420();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  sub_22148(v10, a2, &qword_318C18, &qword_26C178);
  v25 = a2 + *(sub_2EF0(&qword_318C00, &qword_26C170) + 36);
  v26 = v29[8];
  *(v25 + 64) = v29[7];
  *(v25 + 80) = v26;
  *(v25 + 96) = v29[9];
  v27 = v29[4];
  *v25 = v29[3];
  *(v25 + 16) = v27;
  result = v29[6];
  *(v25 + 32) = v29[5];
  *(v25 + 48) = result;
  return result;
}

uint64_t sub_5C1F8()
{
  v1 = sub_2EF0(&qword_318BE8, &unk_26C120);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for ScrollingCardModifier(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v8 = sub_261690();
    (*(*(v8 - 8) + 8))(v0 + v6 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_5C3A0(uint64_t a1)
{
  v3 = *(sub_2EF0(&qword_318BE8, &unk_26C120) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ScrollingCardModifier(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_5BC5C(a1, v1 + v4, v7);
}

unint64_t sub_5C4A0()
{
  result = qword_318C08;
  if (!qword_318C08)
  {
    sub_2F9C(&qword_318C00, &qword_26C170);
    sub_5C52C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318C08);
  }

  return result;
}

unint64_t sub_5C52C()
{
  result = qword_318C10;
  if (!qword_318C10)
  {
    sub_2F9C(&qword_318C18, &qword_26C178);
    sub_5C5B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318C10);
  }

  return result;
}

unint64_t sub_5C5B8()
{
  result = qword_318C20;
  if (!qword_318C20)
  {
    sub_2F9C(&qword_318C28, &qword_26C180);
    sub_8E38(&qword_318C30, &qword_318C38, &qword_26C188, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318C20);
  }

  return result;
}

uint64_t sub_5C670(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_5C778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_5C7E0()
{
  v1 = type metadata accessor for BulletPointStack(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_2EF0(&qword_3179B8, &unk_269D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_262180();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  else
  {
  }

  sub_4054(*(v3 + *(v1 + 20)), *(v3 + *(v1 + 20) + 8));
  v6 = *(v1 + 24);
  sub_2EF0(&qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_263640();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_5C9F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_5CA58(void *a1)
{
  v3 = *(type metadata accessor for BulletPointStack(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_5A810(a1, v4);
}

uint64_t sub_5CAD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5CB40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_318C88, &qword_26C200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_5CBB8()
{
  result = qword_318D08;
  if (!qword_318D08)
  {
    sub_2F9C(&qword_318CF0, &qword_26C258);
    sub_5CC44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318D08);
  }

  return result;
}

unint64_t sub_5CC44()
{
  result = qword_318D10;
  if (!qword_318D10)
  {
    sub_2F9C(&qword_318CE8, &qword_26C250);
    sub_5CCD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318D10);
  }

  return result;
}

unint64_t sub_5CCD0()
{
  result = qword_318D18;
  if (!qword_318D18)
  {
    sub_2F9C(&qword_318D20, &qword_26C2A0);
    sub_2F960();
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318D18);
  }

  return result;
}

unint64_t sub_5CD90()
{
  result = qword_318D78;
  if (!qword_318D78)
  {
    sub_2F9C(&qword_318D60, &qword_26C318);
    sub_5CE1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318D78);
  }

  return result;
}

unint64_t sub_5CE1C()
{
  result = qword_318D80;
  if (!qword_318D80)
  {
    sub_2F9C(&qword_318D88, &qword_26C330);
    sub_5CED4();
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318D80);
  }

  return result;
}

unint64_t sub_5CED4()
{
  result = qword_318D90;
  if (!qword_318D90)
  {
    sub_2F9C(&qword_318D98, &qword_26C338);
    sub_8E38(&qword_318DA0, &qword_318DA8, &unk_26C340, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318D90);
  }

  return result;
}

unint64_t sub_5CF8C()
{
  result = qword_318DC0;
  if (!qword_318DC0)
  {
    sub_2F9C(&qword_318DB8, &unk_26C350);
    sub_58070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318DC0);
  }

  return result;
}

unint64_t sub_5D018()
{
  result = qword_318DC8;
  if (!qword_318DC8)
  {
    sub_2F9C(&qword_318D58, &qword_26C310);
    sub_5CD90();
    sub_8E38(&qword_318DB0, &qword_318D48, &unk_26C2F8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318DC8);
  }

  return result;
}

uint64_t sub_5D0EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2601E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_5D1AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2601E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_5D250(uint64_t a1)
{
  result = sub_2601E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_5D2D8()
{
  result = qword_318E70;
  if (!qword_318E70)
  {
    sub_2F9C(&qword_318BF0, &qword_26C130);
    sub_5D394();
    sub_5CAD8(&qword_318E98, type metadata accessor for CardModifier, &unk_26C07C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318E70);
  }

  return result;
}

unint64_t sub_5D394()
{
  result = qword_318E78;
  if (!qword_318E78)
  {
    sub_2F9C(&qword_318E80, &qword_26C3A0);
    sub_8E38(&qword_318E88, &qword_318E90, &qword_26C3A8, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318E78);
  }

  return result;
}

unint64_t sub_5D450()
{
  result = qword_318EA0;
  if (!qword_318EA0)
  {
    sub_2F9C(&qword_318C60, &qword_26C1A8);
    sub_5D508();
    sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318EA0);
  }

  return result;
}

unint64_t sub_5D508()
{
  result = qword_318EA8;
  if (!qword_318EA8)
  {
    sub_2F9C(&qword_318C58, &qword_26C1A0);
    sub_8E38(&qword_318EB0, &qword_318C50, &qword_26C198, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_8E38(&qword_318EB8, &qword_318EC0, &unk_26C3B0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318EA8);
  }

  return result;
}

unint64_t sub_5D5F0()
{
  result = qword_318EC8;
  if (!qword_318EC8)
  {
    sub_2F9C(&qword_318C80, &qword_26C1F8);
    sub_2F9C(&qword_318C68, &qword_26C1B8);
    sub_2F9C(&qword_3174E8, &qword_269970);
    sub_8E38(&qword_318C78, &qword_318C68, &qword_26C1B8, &protocol conformance descriptor for VStack<A>);
    sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970, &protocol conformance descriptor for ClosedRange<A>);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_318ED0, &qword_318ED8, &unk_276230, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318EC8);
  }

  return result;
}

__n128 _CodeAnyIntentModel_OrNil.init(wrappedValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (*(a1 + 24))
  {
    sub_F7CC(a1, a2);
  }

  else
  {
    result = *a1;
    v3 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v3;
    *(a2 + 32) = *(a1 + 32);
  }

  return result;
}

__n128 _CodeAnyIntentModel_OrNil.wrappedValue.getter@<Q0>(uint64_t a1@<X8>)
{
  if (*(v1 + 24))
  {
    sub_30CC(v1, a1);
  }

  else
  {
    result = *v1;
    v3 = *(v1 + 16);
    *a1 = *v1;
    *(a1 + 16) = v3;
    *(a1 + 32) = *(v1 + 32);
  }

  return result;
}

__n128 _CodeAnyIntentModel_OrNil.wrappedValue.setter(uint64_t a1)
{
  v3 = *(a1 + 24);
  if (!*(v1 + 24))
  {
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_7:
    result = *a1;
    v5 = *(a1 + 16);
    *v1 = *a1;
    *(v1 + 16) = v5;
    *(v1 + 32) = *(a1 + 32);
    return result;
  }

  sub_3080(v1);
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:

  sub_F7CC(a1, v1);
  return result;
}

uint64_t _CodeAnyIntentModel_OrNil.description.getter(uint64_t a1)
{
  if (!*(v1 + 24))
  {
    v3 = *(v1 + 16);
    v5 = *v1;
    v6 = v3;
    v7 = *(v1 + 32);
    if (*(&v3 + 1))
    {
      goto LABEL_3;
    }

    return 7104878;
  }

  sub_30CC(v1, &v5);
  if (!*(&v6 + 1))
  {
    return 7104878;
  }

LABEL_3:
  sub_F7CC(&v5, v8);
  *&v5 = 0;
  *(&v5 + 1) = 0xE000000000000000;
  swift_getExtendedExistentialTypeMetadata();
  sub_264EE0();
  v2 = v5;
  sub_3080(v8);
  return v2;
}

double _CodeAnyIntentModel_OrNil.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  sub_30CC(a1, &v17);
  v9 = type metadata accessor for CodeAnyIntentModel(0, a2, v7, v8);
  swift_getWitnessTable();
  sub_264A70();
  if (v3)
  {
    sub_3080(a1);
    v12 = type metadata accessor for _CodeAnyIntentModel_OrNil(0, a2, v10, v11);
    (*(*(v12 - 8) + 8))(a3, v12);
    return result;
  }

  sub_3080(a1);
  if (v19)
  {
    sub_30CC(v18, &v20);
    (*(*(v9 - 8) + 8))(v18, v9);
  }

  else
  {
    v14 = sub_264A60();
    (*(*(v14 - 8) + 8))(v18, v14);
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
  }

  v15 = *(&v21 + 1);
  if (*(a3 + 24))
  {
    sub_3080(a3);
    if (v15)
    {
LABEL_8:
      sub_F7CC(&v20, a3);
      return result;
    }
  }

  else if (*(&v21 + 1))
  {
    goto LABEL_8;
  }

  result = *&v20;
  v16 = v21;
  *a3 = v20;
  *(a3 + 16) = v16;
  *(a3 + 32) = v22;
  return result;
}

double _CodeAnyIntentModel_OrNil.init(_partiallyFrom:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  sub_30CC(a1, &v15);
  v8 = type metadata accessor for CodeAnyIntentModel(0, a2, v6, v7);
  swift_getWitnessTable();
  sub_264A50();
  sub_3080(a1);
  if (v14)
  {
    sub_30CC(v13, &v15);
    (*(*(v8 - 8) + 8))(v13, v8);
  }

  else
  {
    v9 = sub_264A60();
    (*(*(v9 - 8) + 8))(v13, v9);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  v10 = *(&v16 + 1);
  if (*(a3 + 24))
  {
    sub_3080(a3);
    if (v10)
    {
LABEL_6:
      sub_F7CC(&v15, a3);
      return result;
    }
  }

  else if (*(&v16 + 1))
  {
    goto LABEL_6;
  }

  result = *&v15;
  v12 = v16;
  *a3 = v15;
  *(a3 + 16) = v12;
  *(a3 + 32) = v17;
  return result;
}

uint64_t sub_5DCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_5DD10(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_5DD28@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_8198(v2, &v13 - v9, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_60B64(v10, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_5DF0C()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ToolbarIconView(0) + 24);
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

uint64_t sub_5E064@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ToolbarIconView(0);
  sub_8198(v1 + *(v10 + 28), v9, &qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_261180();
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

uint64_t sub_5E26C@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_3179C0, &qword_269D60);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ToolbarIconView(0);
  sub_8198(v1 + *(v10 + 32), v9, &qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_263640();
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

uint64_t sub_5E474()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ToolbarIconView(0) + 40);
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

uint64_t sub_5E5CC()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ToolbarIconView(0) + 44);
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

uint64_t sub_5E724()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ToolbarIconView(0) + 48);
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

uint64_t ToolbarIconView.init(kind:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a2 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for ToolbarIconView(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_318F68, &qword_26C578);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = v4[7];
  *(a2 + v7) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v8 = v4[8];
  *(a2 + v8) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v4[9];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = a2 + v4[10];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = a2 + v4[11];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = a2 + v4[12];
  result = swift_getKeyPath();
  *v12 = result;
  v12[8] = 0;
  *(a2 + v4[13]) = v3;
  return result;
}

double ToolbarIconView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_261690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2EF0(&qword_318F70, &qword_26C6D0);
  __chkstk_darwin(v20);
  v7 = (&v19 - v6);
  v21 = sub_2EF0(&qword_318F78, &qword_26C6D8);
  v8 = *(v21 - 8);
  __chkstk_darwin(v21);
  v10 = &v19 - v9;
  *v7 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v7[1] = v11;
  v12 = sub_2EF0(&qword_318F80, &qword_26C6E0);
  sub_5ED14(v1, v7 + *(v12 + 44));
  v13 = sub_5DF0C();
  v14 = &enum case for DynamicTypeSize.large(_:);
  if ((v13 & 1) == 0)
  {
    v14 = &enum case for DynamicTypeSize.medium(_:);
  }

  (*(v3 + 104))(v5, *v14, v2);
  sub_8E38(&qword_318F88, &qword_318F70, &qword_26C6D0, &protocol conformance descriptor for ZStack<A>);
  sub_262B60();
  (*(v3 + 8))(v5, v2);
  sub_8E80(v7, &qword_318F70, &qword_26C6D0);
  sub_5F8C8();
  sub_5F8C8();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v15 = v22;
  (*(v8 + 32))(v22, v10, v21);
  v16 = (v15 + *(sub_2EF0(&qword_318F90, &qword_26C6E8) + 36));
  v17 = v24;
  *v16 = v23;
  v16[1] = v17;
  result = *&v25;
  v16[2] = v25;
  return result;
}

uint64_t sub_5ED14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v3 - 8);
  v97 = &v83[-v4];
  v98 = sub_262730();
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = &v83[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = sub_2EF0(&qword_319088, &qword_26C7F0);
  __chkstk_darwin(v99);
  v100 = &v83[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v91 = &v83[-v8];
  v9 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v9 - 8);
  v89 = &v83[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v83[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_261180();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v88 = &v83[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v92 = &v83[-v18];
  v19 = sub_2617E0();
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = &v83[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_2EF0(&qword_319090, &qword_26C7F8);
  __chkstk_darwin(v23);
  v25 = &v83[-v24];
  v90 = sub_2EF0(&qword_319098, &qword_26C800);
  __chkstk_darwin(v90);
  v94 = &v83[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v29 = &v83[-v28];
  __chkstk_darwin(v30);
  v93 = &v83[-v31];
  v32 = *(v20 + 28);
  v33 = enum case for RoundedCornerStyle.continuous(_:);
  v34 = sub_261DD0();
  (*(*(v34 - 8) + 104))(&v22[v32], v33, v34);
  __asm { FMOV            V0.2D, #6.0 }

  *v22 = _Q0;
  if (sub_5E474())
  {
    v40 = sub_5F630();
  }

  else
  {
    v102 = sub_262FA0();
    v40 = sub_2613B0();
  }

  v41 = v40;
  sub_60B64(v22, v25, &type metadata accessor for RoundedRectangle);
  *&v25[*(v23 + 52)] = v41;
  *&v25[*(v23 + 56)] = 256;
  if (sub_5E5CC())
  {
    v87 = a1;
    sub_5DD28(v13);
    v42 = v89;
    sub_60C74(v13, v89, type metadata accessor for ColorConstants.Environment);
    v43 = *(v15 + 104);
    v44 = v88;
    v84 = enum case for ColorScheme.dark(_:);
    v45 = v14;
    v85 = v43;
    v43(v88);
    sub_60AB0();
    v46 = sub_264390();
    v86 = v15;
    v47 = *(v15 + 8);
    v47(v44, v45);
    v48 = v13;
    v49 = v45;
    sub_60B08(v48);
    v47(v42, v45);
    if (v46)
    {
      v50 = enum case for ColorScheme.light(_:);
      v51 = v92;
      v52 = v92;
    }

    else
    {
      v51 = v92;
      v52 = v92;
      v50 = v84;
    }

    v85(v52, v50, v45);
    v15 = v86;
    a1 = v87;
  }

  else
  {
    v51 = v92;
    sub_5E064(v92);
    v49 = v14;
  }

  KeyPath = swift_getKeyPath();
  v54 = &v29[*(v90 + 36)];
  v55 = sub_2EF0(&qword_3173A0, &qword_26D0C0);
  (*(v15 + 32))(v54 + *(v55 + 28), v51, v49);
  *v54 = KeyPath;
  sub_22148(v25, v29, &qword_319090, &qword_26C7F8);
  v56 = v93;
  sub_22148(v29, v93, &qword_319098, &qword_26C800);
  LOBYTE(KeyPath) = *(a1 + *(type metadata accessor for ToolbarIconView(0) + 52));
  v57 = *(type metadata accessor for SymbolImage(0) + 20);
  v58 = swift_getKeyPath();
  v59 = v91;
  *&v91[v57] = v58;
  sub_2EF0(&qword_3190A0, &unk_283550);
  swift_storeEnumTagMultiPayload();
  *v59 = KeyPath;
  v60 = sub_5FA30();
  *&v59[*(sub_2EF0(&qword_3190A8, &qword_26C870) + 36)] = v60;
  v62 = v95;
  v61 = v96;
  v63 = v98;
  (*(v96 + 104))(v95, enum case for Font.TextStyle.body(_:), v98);
  v64 = sub_2625C0();
  v65 = v97;
  (*(*(v64 - 8) + 56))(v97, 1, 1, v64);
  sub_262630();
  v66 = sub_262680();
  sub_8E80(v65, &qword_318458, &unk_26B270);
  (*(v61 + 8))(v62, v63);
  v67 = swift_getKeyPath();
  v68 = &v59[*(sub_2EF0(&qword_3190B0, &qword_283590) + 36)];
  *v68 = v67;
  v68[1] = v66;
  sub_5FB34();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  LOBYTE(v66) = sub_262500();
  v77 = &v59[*(sub_2EF0(&qword_3190B8, &qword_26C8B0) + 36)];
  *v77 = v66;
  *(v77 + 1) = v70;
  *(v77 + 2) = v72;
  *(v77 + 3) = v74;
  *(v77 + 4) = v76;
  v77[40] = 0;
  sub_5E26C(&v59[*(v99 + 36)]);
  v78 = v94;
  sub_8198(v56, v94, &qword_319098, &qword_26C800);
  v79 = v100;
  sub_8198(v59, v100, &qword_319088, &qword_26C7F0);
  v80 = v101;
  sub_8198(v78, v101, &qword_319098, &qword_26C800);
  v81 = sub_2EF0(&qword_3190C0, &qword_26C8B8);
  sub_8198(v79, v80 + *(v81 + 48), &qword_319088, &qword_26C7F0);
  sub_8E80(v59, &qword_319088, &qword_26C7F0);
  sub_8E80(v56, &qword_319098, &qword_26C800);
  sub_8E80(v79, &qword_319088, &qword_26C7F0);
  return sub_8E80(v78, &qword_319098, &qword_26C800);
}

uint64_t sub_5F630()
{
  v0 = sub_261180();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v7 - 8);
  v9 = (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2634E0();
  __chkstk_darwin(v10);
  if (sub_5E5CC())
  {
    sub_2634D0();
  }

  else
  {
    sub_5DD28(v9);
    sub_60C74(v9, v6, type metadata accessor for ColorConstants.Environment);
    (*(v1 + 104))(v3, enum case for ColorScheme.dark(_:), v0);
    sub_60AB0();
    v11 = sub_264390();
    v12 = *(v1 + 8);
    v12(v3, v0);
    sub_60B08(v9);
    v12(v6, v0);
    if (v11)
    {
      _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
    }

    else
    {
      sub_262F80();
    }

    v13 = sub_263000();

    v15[1] = v13;
  }

  return sub_2613B0();
}

double sub_5F8C8()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ToolbarIconView(0) + 36);
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

  return dbl_26C910[v6];
}

uint64_t sub_5FA30()
{
  v0 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_5E724();
  v4 = sub_5E5CC();
  v5 = v4;
  if (v3)
  {
    sub_5DD28(v2);
    v6 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    if (v5)
    {
      v7 = sub_263000();

      sub_60B08(v2);
      return v7;
    }

    goto LABEL_6;
  }

  if (v4)
  {
    sub_5DD28(v2);
    v6 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
LABEL_6:
    sub_60B08(v2);
    return v6;
  }

  return _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
}

void sub_5FB34()
{
  v1 = *(v0 + *(type metadata accessor for ToolbarIconView(0) + 52));
  if (v1 <= 3 || v1 > 5 || v1 == 4)
  {
    v2 = sub_264F10();

    if ((v2 & 1) == 0)
    {
      return;
    }
  }

  else
  {
  }

  v3 = sub_264420();

  v4 = [objc_opt_self() systemImageNamed:v3];

  if (v4)
  {
    [v4 alignmentRectInsets];
  }
}

uint64_t sub_5FE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_60220();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

void *sub_5FE6C()
{
  sub_60C20();

  return sub_261CB0();
}

double View.toolbarIconButton(size:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_262A90();

  return result;
}

uint64_t type metadata accessor for ToolbarIconView(uint64_t a1)
{
  result = qword_319000;
  if (!qword_319000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_5FF7C@<X0>(_BYTE *a1@<X8>)
{
  sub_60BCC();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

void *sub_600D4@<X0>(_BYTE *a1@<X8>)
{
  sub_60C20();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

void *sub_60170@<X0>(_BYTE *a1@<X8>)
{
  sub_60BCC();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

unint64_t sub_60220()
{
  result = qword_318F98;
  if (!qword_318F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318F98);
  }

  return result;
}

uint64_t sub_602A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_318FA0, &unk_286050);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 254)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 > 1)
    {
      return (v15 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v16 = sub_2EF0(&qword_316F70, &unk_2693C0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[7];
    goto LABEL_5;
  }

  v17 = sub_2EF0(&qword_317878, &unk_27E490);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_604A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_2EF0(&qword_318FA0, &unk_286050);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
    return result;
  }

  v16 = sub_2EF0(&qword_316F70, &unk_2693C0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = sub_2EF0(&qword_317878, &unk_27E490);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

void sub_6068C(uint64_t a1)
{
  sub_6083C(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v1 <= 0x3F)
  {
    sub_6083C(319, &qword_319010, type metadata accessor for FontConstants.Navigation);
    if (v2 <= 0x3F)
    {
      sub_60890(319, &qword_3167D0, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        sub_6083C(319, &qword_316FF0, &type metadata accessor for ColorScheme);
        if (v4 <= 0x3F)
        {
          sub_6083C(319, &qword_3178F8, &type metadata accessor for BlendMode);
          if (v5 <= 0x3F)
          {
            sub_60890(319, &qword_319018, &type metadata for ToolbarIconView.Size);
            if (v6 <= 0x3F)
            {
              sub_60890(319, &unk_319020, &type metadata for HostingViewBarType);
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

void sub_6083C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_60890(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_608F0()
{
  result = qword_319070;
  if (!qword_319070)
  {
    sub_2F9C(&qword_318F90, &qword_26C6E8);
    sub_2F9C(&qword_318F70, &qword_26C6D0);
    sub_8E38(&qword_318F88, &qword_318F70, &qword_26C6D0, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319070);
  }

  return result;
}

uint64_t sub_609EC(uint64_t *a1)
{
  sub_2F9C(&qword_319078, &unk_26C7E0);
  sub_261730();
  sub_8E38(&qword_319080, &qword_319078, &unk_26C7E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  return swift_getWitnessTable();
}

unint64_t sub_60AB0()
{
  result = qword_3183A0;
  if (!qword_3183A0)
  {
    sub_261180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3183A0);
  }

  return result;
}

uint64_t sub_60B08(uint64_t a1)
{
  v2 = type metadata accessor for ColorConstants(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_60B64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_60BCC()
{
  result = qword_3190C8;
  if (!qword_3190C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3190C8);
  }

  return result;
}

unint64_t sub_60C20()
{
  result = qword_3190D0;
  if (!qword_3190D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3190D0);
  }

  return result;
}

uint64_t sub_60C74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_60D34()
{
  sub_2EF0(&qword_3190D8, &unk_26C9D0);
  sub_60DB8();
  sub_60E1C();
  return sub_262CC0();
}

unint64_t sub_60DB8()
{
  result = qword_3190E0;
  if (!qword_3190E0)
  {
    sub_2F9C(&qword_3190D8, &unk_26C9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3190E0);
  }

  return result;
}

unint64_t sub_60E1C()
{
  result = qword_3190E8;
  if (!qword_3190E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3190E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PageMarginConfiguration(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_60F24()
{
  sub_2F9C(&qword_3190D8, &unk_26C9D0);
  sub_60DB8();
  sub_60E1C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t BookCoverEffect.init(shadowScale:cornerRadius:)@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = *(type metadata accessor for BookCoverEffect(0) + 24);
  *(a1 + v6) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  result = swift_storeEnumTagMultiPayload();
  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t type metadata accessor for BookCoverEffect(uint64_t a1)
{
  result = qword_319198;
  if (!qword_319198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_61068@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for BookCoverEffect(0);
  sub_8198(v1 + *(v10 + 24), v9, &qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_261180();
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

uint64_t BookCoverEffect.body(cover:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_2EF0(&qword_3190F0, &qword_26CB60);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = type metadata accessor for BookCoverEffect(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  sub_61530(v3, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v12 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_61598(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  result = (*(v7 + 32))(v15 + v14, v9, v6);
  *a2 = sub_615FC;
  a2[1] = v15;
  return result;
}

double sub_61450@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_261420();
  v8 = v7;
  v10 = v9;
  *a4 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  a4[1] = v11;
  v12 = sub_2EF0(&qword_3191F0, &qword_26CBD8);
  sub_61600(a2, a3, a4 + *(v12 + 44), v8, v10);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v13 = (a4 + *(sub_2EF0(&qword_3191F8, &qword_26CBE0) + 36));
  *v13 = v15;
  v13[1] = v16;
  result = *&v17;
  v13[2] = v17;
  return result;
}

uint64_t sub_61530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookCoverEffect(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_61598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookCoverEffect(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_61600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_2EF0(&qword_319200, &qword_26CBE8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  v17 = sub_2EF0(&qword_319208, &qword_26CBF0);
  __chkstk_darwin(v17 - 8);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = (&v32 - v21);
  *v22 = sub_263560();
  v22[1] = v23;
  v24 = sub_2EF0(&qword_319210, &qword_26CBF8);
  sub_618D4(a1, a2, v22 + *(v24 + 44), a4, a5);
  sub_62450(a2, a1, v16, a5);
  v25 = *(a1 + 8);
  v26 = &v16[*(v11 + 44)];
  v27 = *(sub_2617E0() + 20);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = sub_261DD0();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  *v26 = v25;
  *(v26 + 1) = v25;
  *&v26[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  sub_8198(v22, v19, &qword_319208, &qword_26CBF0);
  sub_8198(v16, v13, &qword_319200, &qword_26CBE8);
  sub_8198(v19, a3, &qword_319208, &qword_26CBF0);
  v30 = sub_2EF0(&qword_319218, &qword_26CC00);
  sub_8198(v13, a3 + *(v30 + 48), &qword_319200, &qword_26CBE8);
  sub_8E80(v16, &qword_319200, &qword_26CBE8);
  sub_8E80(v22, &qword_319208, &qword_26CBF0);
  sub_8E80(v13, &qword_319200, &qword_26CBE8);
  return sub_8E80(v19, &qword_319208, &qword_26CBF0);
}

uint64_t sub_618D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v91 = a2;
  v103 = a3;
  v94 = sub_2EF0(&qword_319288, &qword_26CC30) - 8;
  __chkstk_darwin(v94);
  v90 = v76 - v8;
  v102 = sub_2EF0(&qword_319290, &qword_26CC38) - 8;
  __chkstk_darwin(v102);
  v99 = v76 - v9;
  v100 = sub_2EF0(&qword_319298, &qword_26CC40) - 8;
  __chkstk_darwin(v100);
  v97 = v76 - v10;
  v98 = sub_2EF0(&qword_3192A0, &qword_26CC48) - 8;
  __chkstk_darwin(v98);
  v95 = v76 - v11;
  v93 = sub_2EF0(&qword_3192A8, &qword_26CC50) - 8;
  __chkstk_darwin(v93);
  v101 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v92 = v76 - v14;
  __chkstk_darwin(v15);
  v96 = v76 - v16;
  v87 = sub_261180();
  v17 = *(v87 - 8);
  __chkstk_darwin(v87);
  v19 = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v76 - v21;
  v23 = sub_2EF0(&qword_3192B0, &unk_28E820);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v26 = v76 - v25;
  v82 = sub_2EF0(&qword_3192B8, &unk_2793C0) - 8;
  __chkstk_darwin(v82);
  v81 = v76 - v27;
  v28 = sub_2EF0(&qword_3192C0, &unk_28E830);
  v29 = v28 - 8;
  __chkstk_darwin(v28);
  v89 = v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v76 - v32;
  __chkstk_darwin(v34);
  v80 = v76 - v35;
  v36 = a1;
  v37 = *(a1 + 8);
  v88 = sub_2617E0();
  v38 = *(v88 + 20);
  v39 = enum case for RoundedCornerStyle.continuous(_:);
  v85 = enum case for RoundedCornerStyle.continuous(_:);
  v84 = sub_261DD0();
  v40 = *(v84 - 8);
  v83 = *(v40 + 104);
  v86 = v40 + 104;
  v83(&v26[v38], v39, v84);
  *v26 = v37;
  *(v26 + 1) = v37;
  v41 = sub_262F80();
  v42 = sub_2EF0(&qword_3192C8, &unk_2793D0);
  *&v26[*(v42 + 52)] = v41;
  *&v26[*(v42 + 56)] = 256;
  v43 = *v36;
  v79 = v36;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v44 = &v26[*(sub_2EF0(&qword_3192D0, &qword_28E840) + 36)];
  v45 = v105;
  *v44 = v104;
  *(v44 + 1) = v45;
  *(v44 + 2) = v106;
  v46 = &v26[*(v24 + 44)];
  *v46 = 0.0;
  v46[1] = (1.0 - v43) * a5 * -0.25;
  v47 = v22;
  sub_61068(v22);
  v78 = enum case for ColorScheme.dark(_:);
  v77 = *(v17 + 104);
  v48 = v87;
  v77(v19);
  v49 = v47;
  LOBYTE(v47) = sub_261170();
  v50 = *(v17 + 8);
  v76[1] = v17 + 8;
  v50(v19, v48);
  v50(v49, v48);
  if (v47)
  {
    v51 = 0.9;
  }

  else
  {
    v51 = 0.75;
  }

  v52 = v81;
  sub_22148(v26, v81, &qword_3192B0, &unk_28E820);
  *(v52 + *(v82 + 44)) = v51;
  sub_22148(v52, v33, &qword_3192B8, &unk_2793C0);
  v53 = &v33[*(v29 + 44)];
  *v53 = a4 * 0.1;
  v53[8] = 0;
  v54 = v80;
  sub_22148(v33, v80, &qword_3192C0, &unk_28E830);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v55 = sub_2EF0(&qword_3190F0, &qword_26CB60);
  v56 = v90;
  (*(*(v55 - 8) + 16))(v90, v91, v55);
  v57 = (v56 + *(sub_2EF0(&qword_319260, &qword_26CC10) + 36));
  v58 = v108;
  *v57 = v107;
  v57[1] = v58;
  v57[2] = v109;
  v59 = (v56 + *(v94 + 44));
  v83(&v59[*(v88 + 20)], v85, v84);
  *v59 = v37;
  *(v59 + 1) = v37;
  *&v59[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  sub_61068(v49);
  (v77)(v19, v78, v48);
  LOBYTE(v59) = sub_261170();
  v50(v19, v48);
  v50(v49, v48);
  if (v59)
  {
    v60 = 0.15;
  }

  else
  {
    v60 = 0.5;
  }

  v61 = v99;
  sub_22148(v56, v99, &qword_319288, &qword_26CC30);
  *(v61 + *(v102 + 44)) = v60;
  v62 = v61;
  v63 = v97;
  sub_22148(v62, v97, &qword_319290, &qword_26CC38);
  v64 = v63 + *(v100 + 44);
  *v64 = a4 * 0.1;
  *(v64 + 8) = 0;
  v65 = v95;
  sub_22148(v63, v95, &qword_319298, &qword_26CC40);
  *(v65 + *(v98 + 44)) = 0x3FF199999999999ALL;
  v66 = *(v93 + 44);
  v67 = enum case for BlendMode.color(_:);
  v68 = sub_263640();
  v69 = v92;
  (*(*(v68 - 8) + 104))(&v92[v66], v67, v68);
  sub_22148(v65, v69, &qword_3192A0, &qword_26CC48);
  v70 = v96;
  sub_22148(v69, v96, &qword_3192A8, &qword_26CC50);
  v71 = v89;
  sub_8198(v54, v89, &qword_3192C0, &unk_28E830);
  v72 = v101;
  sub_8198(v70, v101, &qword_3192A8, &qword_26CC50);
  v73 = v103;
  sub_8198(v71, v103, &qword_3192C0, &unk_28E830);
  v74 = sub_2EF0(qword_3192D8, &qword_26CC58);
  sub_8198(v72, v73 + *(v74 + 48), &qword_3192A8, &qword_26CC50);
  sub_8E80(v70, &qword_3192A8, &qword_26CC50);
  sub_8E80(v54, &qword_3192C0, &unk_28E830);
  sub_8E80(v72, &qword_3192A8, &qword_26CC50);
  return sub_8E80(v71, &qword_3192C0, &unk_28E830);
}

uint64_t AudiobookCoverEffect.shape.getter@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(sub_2617E0() + 20);
  v5 = enum case for RoundedCornerStyle.continuous(_:);
  v6 = sub_261DD0();
  result = (*(*(v6 - 8) + 104))(&a1[v4], v5, v6);
  *a1 = v3;
  *(a1 + 1) = v3;
  return result;
}

uint64_t sub_62450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a5@<D1>)
{
  v157 = a2;
  v172 = a3;
  v7 = sub_261180();
  v168 = *(v7 - 8);
  v169 = v7;
  __chkstk_darwin(v7);
  v167 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v165 = &v149 - v10;
  v186 = sub_2EF0(&qword_319220, &unk_279340) - 8;
  __chkstk_darwin(v186);
  v160 = (&v149 - v11);
  v166 = sub_2EF0(&qword_319228, &unk_28E790) - 8;
  __chkstk_darwin(v166);
  v164 = &v149 - v12;
  v163 = sub_2EF0(&qword_319230, &unk_279350) - 8;
  __chkstk_darwin(v163);
  v162 = &v149 - v13;
  v188 = sub_2EF0(&qword_319238, &unk_28E7A0) - 8;
  __chkstk_darwin(v188);
  v155 = &v149 - v14;
  v159 = sub_2EF0(&qword_319240, &unk_279360) - 8;
  __chkstk_darwin(v159);
  v158 = &v149 - v15;
  v161 = sub_2EF0(&qword_319248, &unk_28E7B0) - 8;
  __chkstk_darwin(v161);
  v171 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v170 = &v149 - v18;
  __chkstk_darwin(v19);
  v184 = (&v149 - v20);
  __chkstk_darwin(v21);
  v156 = &v149 - v22;
  __chkstk_darwin(v23);
  v182 = &v149 - v24;
  v154 = sub_2EF0(&qword_319250, &qword_279370) - 8;
  __chkstk_darwin(v154);
  v187 = &v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v190 = &v149 - v27;
  v153 = sub_2EF0(&qword_319258, &qword_26CC08) - 8;
  __chkstk_darwin(v153);
  v185 = &v149 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v149 - v30;
  v32 = sub_2EF0(&qword_319260, &qword_26CC10);
  v33 = v32 - 8;
  __chkstk_darwin(v32);
  v183 = &v149 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v149 - v36;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v38 = sub_2EF0(&qword_3190F0, &qword_26CB60);
  v39 = *(*(v38 - 8) + 16);
  v189 = v37;
  v39(v37, a1, v38);
  v40 = &v37[*(v33 + 44)];
  v41 = v230;
  *v40 = v229;
  *(v40 + 1) = v41;
  *(v40 + 2) = v231;
  sub_2EF0(&qword_319268, &qword_279380);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_26CB10;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v42 + 32) = sub_263450();
  *(v42 + 40) = v43;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v42 + 48) = sub_263450();
  *(v42 + 56) = v44;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v42 + 64) = sub_263450();
  *(v42 + 72) = v45;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v42 + 80) = sub_263450();
  *(v42 + 88) = v46;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v42 + 96) = sub_263450();
  *(v42 + 104) = v47;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v42 + 112) = sub_263450();
  *(v42 + 120) = v48;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v42 + 128) = sub_263450();
  *(v42 + 136) = v49;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v42 + 144) = sub_263450();
  *(v42 + 152) = v50;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v42 + 160) = sub_263450();
  *(v42 + 168) = v51;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v42 + 176) = sub_263450();
  *(v42 + 184) = v52;
  sub_263730();
  sub_263740();
  sub_263460();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v174 = a5;
  sub_2613A0();
  v53 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v180 = v54;
  v181 = v53;
  v55 = swift_allocObject();
  v177 = xmmword_269100;
  *(v55 + 16) = xmmword_269100;
  sub_262F80();
  sub_263000();

  *(v55 + 32) = sub_263450();
  *(v55 + 40) = v56;
  sub_262F80();
  sub_263000();

  *(v55 + 48) = sub_263450();
  *(v55 + 56) = v57;
  sub_263700();
  sub_263710();
  sub_263460();
  sub_261590();
  v179 = v232;
  v58 = v233;
  v59 = v234;
  v151 = v236;
  v152 = v235;
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_26CB20;
  sub_262F80();
  sub_263000();

  *(v60 + 32) = sub_263450();
  *(v60 + 40) = v61;
  sub_262F80();
  sub_263000();

  *(v60 + 48) = sub_263450();
  *(v60 + 56) = v62;
  sub_262F80();
  sub_263000();

  *(v60 + 64) = sub_263450();
  *(v60 + 72) = v63;
  sub_262F80();
  sub_263000();

  *(v60 + 80) = sub_263450();
  *(v60 + 88) = v64;
  sub_262F80();
  sub_263000();

  *(v60 + 96) = sub_263450();
  *(v60 + 104) = v65;
  sub_262F80();
  sub_263000();

  *(v60 + 112) = sub_263450();
  *(v60 + 120) = v66;
  sub_262F80();
  sub_263000();

  *(v60 + 128) = sub_263450();
  *(v60 + 136) = v67;
  sub_262F80();
  sub_263000();

  *(v60 + 144) = sub_263450();
  *(v60 + 152) = v68;
  sub_262F80();
  sub_263000();

  *(v60 + 160) = sub_263450();
  *(v60 + 168) = v69;
  sub_262F80();
  sub_263000();

  *(v60 + 176) = sub_263450();
  *(v60 + 184) = v70;
  sub_262F80();
  sub_263000();

  *(v60 + 192) = sub_263450();
  *(v60 + 200) = v71;
  sub_263730();
  sub_263740();
  sub_263460();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v72 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v74 = v73;
  v75 = swift_allocObject();
  *(v75 + 16) = v177;
  sub_262F80();
  sub_263000();

  *(v75 + 32) = sub_263450();
  *(v75 + 40) = v76;
  sub_262F80();
  sub_263000();

  *(v75 + 48) = sub_263450();
  *(v75 + 56) = v77;
  sub_263700();
  sub_263710();
  sub_263460();
  sub_261590();
  v78 = v237;
  v79 = *(sub_2EF0(&qword_319270, &qword_26CC18) + 36);
  v80 = enum case for BlendMode.plusDarker(_:);
  v81 = sub_263640();
  v82 = *(v81 - 8);
  v83 = *(v82 + 104);
  v84 = v82 + 104;
  v149 = v239;
  v150 = v238;
  v85 = &v31[v79];
  v86 = v81;
  v175 = v81;
  v83(v85, v80);
  v176 = v84;
  v173 = v83;
  v87 = v220;
  v178 = v31;
  *(v31 + 2) = v219;
  *(v31 + 3) = v87;
  *(v31 + 4) = v221;
  v88 = v222;
  v89 = v218;
  *v31 = v217;
  *(v31 + 1) = v89;
  *(v31 + 10) = v88;
  *(v31 + 11) = 0x3FD0000000000000;
  *(v31 + 12) = v72;
  *(v31 + 13) = v74;
  *(v31 + 14) = v78;
  v90 = v150;
  *(v31 + 136) = v149;
  *(v31 + 120) = v90;
  v31[*(v153 + 44)] = 1;
  v91 = swift_allocObject();
  *(v91 + 16) = v177;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v91 + 32) = sub_263450();
  *(v91 + 40) = v92;
  sub_262F80();
  sub_263000();

  *(v91 + 48) = sub_263450();
  *(v91 + 56) = v93;
  sub_263700();
  sub_263710();
  sub_263460();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v94 = v190;
  (v83)(v190 + *(v154 + 44), enum case for BlendMode.softLight(_:), v86);
  v95 = v214;
  *(v94 + 32) = v213;
  *(v94 + 48) = v95;
  *(v94 + 64) = v215;
  v96 = v216;
  v97 = v212;
  *v94 = v211;
  *(v94 + 16) = v97;
  *(v94 + 80) = v96;
  *(v94 + 88) = 0x3FD999999999999ALL;
  v98 = *(v157 + 8);
  *&v177 = sub_2617E0();
  v99 = *(v177 + 20);
  v100 = enum case for RoundedCornerStyle.continuous(_:);
  LODWORD(v153) = enum case for RoundedCornerStyle.continuous(_:);
  v101 = sub_261DD0();
  v102 = *(v101 - 8);
  *&v150 = *(v102 + 104);
  v154 = v102 + 104;
  v103 = v155;
  (v150)(&v155[v99], v100, v101);
  *v103 = v98;
  v103[1] = v98;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v104 = (v103 + *(v188 + 44));
  v105 = v241;
  *v104 = v240;
  v104[1] = v105;
  v104[2] = v242;
  v106 = sub_262F80();
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  v107 = v160;
  sub_261230();

  *v107 = v106;
  v108 = v165;
  sub_61068(v165);
  v110 = v167;
  v109 = v168;
  v111 = v169;
  (*(v168 + 104))(v167, enum case for ColorScheme.dark(_:), v169);
  LOBYTE(v91) = sub_261170();
  v112 = *(v109 + 8);
  v112(v110, v111);
  v112(v108, v111);
  if (v91)
  {
    v113 = 0.15;
  }

  else
  {
    v113 = 0.5;
  }

  v114 = v164;
  sub_22148(v107, v164, &qword_319220, &unk_279340);
  v115 = v166;
  *(v114 + *(v166 + 44)) = v113;
  v116 = v162;
  v117 = v163;
  (v173)(&v162[*(v163 + 44)], enum case for BlendMode.screen(_:), v175);
  sub_22148(v114, v116, &qword_319228, &unk_28E790);
  v118 = v158;
  v119 = v159;
  sub_22148(v116, &v158[*(v159 + 44)], &qword_319230, &unk_279350);
  sub_22148(v103, v118, &qword_319238, &unk_28E7A0);
  v120 = v118;
  v121 = v156;
  sub_22148(v120, v156, &qword_319240, &unk_279360);
  v122 = v161;
  *(v121 + *(v161 + 44)) = 1;
  v123 = v182;
  sub_22148(v121, v182, &qword_319248, &unk_28E7B0);
  v124 = v184;
  (v150)(v184 + *(v177 + 20), v153, v101);
  *v124 = v98;
  v124[1] = v98;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v125 = (v124 + *(v188 + 44));
  v126 = v244;
  *v125 = v243;
  v125[1] = v126;
  v125[2] = v245;
  v127 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_262F80();
  sub_263000();

  v128 = (v124 + *(v119 + 44));
  sub_261230();

  *v128 = v127;
  *(v128 + *(v115 + 44)) = 1048576000;
  (v173)(v128 + *(v117 + 44), enum case for BlendMode.darken(_:), v175);
  *(v124 + *(v122 + 44)) = 1;
  v129 = v183;
  sub_8198(v189, v183, &qword_319260, &qword_26CC10);
  v130 = v185;
  sub_8198(v178, v185, &qword_319258, &qword_26CC08);
  v131 = v187;
  sub_8198(v190, v187, &qword_319250, &qword_279370);
  v132 = v123;
  v133 = v170;
  sub_8198(v132, v170, &qword_319248, &unk_28E7B0);
  v134 = v171;
  sub_8198(v124, v171, &qword_319248, &unk_28E7B0);
  v135 = v129;
  v136 = v172;
  sub_8198(v135, v172, &qword_319260, &qword_26CC10);
  v137 = sub_2EF0(&qword_319278, &qword_26CC20);
  v138 = v136 + v137[12];
  v194 = v226;
  v195 = v227;
  v192 = v224;
  v193 = v225;
  v191 = v223;
  *&v196 = v228;
  *(&v196 + 1) = v181;
  *&v197 = v180;
  *(&v197 + 1) = v179;
  *&v198 = v58;
  *(&v198 + 1) = v59;
  v140 = v151;
  v139 = v152;
  *&v199 = v152;
  *(&v199 + 1) = v151;
  v200 = 1;
  v142 = v197;
  v141 = v198;
  v143 = v199;
  *(v138 + 144) = 1;
  *(v138 + 112) = v141;
  *(v138 + 128) = v143;
  v144 = v192;
  *v138 = v191;
  *(v138 + 16) = v144;
  v145 = v193;
  v146 = v194;
  v147 = v195;
  *(v138 + 80) = v196;
  *(v138 + 96) = v142;
  *(v138 + 48) = v146;
  *(v138 + 64) = v147;
  *(v138 + 32) = v145;
  sub_8198(v130, v136 + v137[16], &qword_319258, &qword_26CC08);
  sub_8198(v131, v136 + v137[20], &qword_319250, &qword_279370);
  sub_8198(v133, v136 + v137[24], &qword_319248, &unk_28E7B0);
  sub_8198(v134, v136 + v137[28], &qword_319248, &unk_28E7B0);
  sub_8198(&v191, v201, &qword_319280, &qword_26CC28);
  sub_8E80(v184, &qword_319248, &unk_28E7B0);
  sub_8E80(v182, &qword_319248, &unk_28E7B0);
  sub_8E80(v190, &qword_319250, &qword_279370);
  sub_8E80(v178, &qword_319258, &qword_26CC08);
  sub_8E80(v189, &qword_319260, &qword_26CC10);
  sub_8E80(v134, &qword_319248, &unk_28E7B0);
  sub_8E80(v133, &qword_319248, &unk_28E7B0);
  sub_8E80(v187, &qword_319250, &qword_279370);
  sub_8E80(v185, &qword_319258, &qword_26CC08);
  v201[2] = v225;
  v201[3] = v226;
  v201[4] = v227;
  v201[0] = v223;
  v201[1] = v224;
  v202 = v228;
  v203 = v181;
  v204 = v180;
  v205 = v179;
  v206 = v58;
  v207 = v59;
  v208 = v139;
  v209 = v140;
  v210 = 1;
  sub_8E80(v201, &qword_319280, &qword_26CC28);
  return sub_8E80(v183, &qword_319260, &qword_26CC10);
}

uint64_t sub_639F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v8 = sub_2EF0(&qword_3190F0, &qword_26CB60);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v15 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_61530(v5, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + *(v9 + 80)) & ~*(v9 + 80);
  v18 = swift_allocObject();
  sub_61598(v15, v18 + v16);
  result = (*(v9 + 32))(v18 + v17, v11, v8);
  *a3 = sub_64174;
  a3[1] = v18;
  return result;
}

uint64_t sub_63BD4(uint64_t a1)
{
  result = sub_63E8C(&qword_319138, type metadata accessor for BookCoverEffect, &protocol conformance descriptor for BookCoverEffect);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_63C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_63CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_63D60(uint64_t a1)
{
  sub_50224(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_63DE0()
{
  result = qword_3191D8;
  if (!qword_3191D8)
  {
    sub_2F9C(&qword_3191E0, &qword_26CBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3191D8);
  }

  return result;
}

uint64_t sub_63E8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_63ED4()
{
  v1 = (type metadata accessor for BookCoverEffect(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2EF0(&qword_3190F0, &qword_26CB60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v1[8];
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_261180();
    (*(*(v8 - 8) + 8))(v7 + v2, v8);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

double sub_64080@<D0>(uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for BookCoverEffect(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(sub_2EF0(&qword_3190F0, &qword_26CB60) - 8);
  v8 = v2 + ((v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_61450(v2 + v5, v8, a2);
}

uint64_t sub_64178(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(a1);
  (*(v2 + 16))(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = *(a1 + 16);
  (*(v2 + 32))(v6 + v5, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_2EF0(&qword_319368, &qword_26CD28);
  sub_260A70();
  sub_260A50();
  sub_6518C();
  sub_65440(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_65440(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

uint64_t sub_64398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v60 = a2;
  v61 = a1;
  v62 = a4;
  v6 = sub_2626C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FontConstants.ListItem(0);
  __chkstk_darwin(v10 - 8);
  v12 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = sub_2EF0(&qword_3193A0, &unk_26CD40);
  __chkstk_darwin(v56);
  v57 = &v51 - v13;
  v59 = sub_2EF0(&qword_319390, &qword_26CD38);
  __chkstk_darwin(v59);
  v58 = &v51 - v14;
  type metadata accessor for ListItemMetadataCreatorDescriptionView(0, a2, a3, v15);
  sub_404E0(v12);
  sub_262700();
  v16 = *(v7 + 104);
  v54 = enum case for Font.Leading.tight(_:);
  v53 = v16;
  v16(v9);
  v17 = sub_2626E0();

  v18 = *(v7 + 8);
  v55 = v6;
  v52 = v18;
  v18(v9, v6);
  sub_65488(v12);
  v19 = (*(a3 + 16))(v61, v17, v60, a3);
  v21 = v20;
  v23 = v22;
  v25 = v24;

  if (v25)
  {
    sub_404E0(v12);
    sub_262700();
    v26 = v55;
    v53(v9, v54, v55);
    sub_2626E0();

    v52(v9, v26);
    sub_65488(v12);
    v63 = v23 & 1;
    v27 = sub_262840();
    v28 = v19;
    v29 = v27;
    v31 = v30;
    v33 = v32;
    sub_39DBC(v28, v21, v23 & 1);

    _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    v34 = sub_2627E0();
    v36 = v35;
    v38 = v37;
    v40 = v39;

    sub_39DBC(v29, v31, v33 & 1);

    v41 = *(v56 + 36);
    KeyPath = swift_getKeyPath();
    v43 = v57;
    *&v57[v41] = KeyPath;
    sub_2EF0(&qword_3179C0, &qword_269D60);
    swift_storeEnumTagMultiPayload();
    *v43 = v34;
    *(v43 + 8) = v36;
    *(v43 + 16) = v38 & 1;
    *(v43 + 24) = v40;
    v44 = swift_getKeyPath();
    v45 = v58;
    sub_654F0(v43, v58);
    v46 = v45 + *(v59 + 36);
    *v46 = v44;
    *(v46 + 8) = 4;
    *(v46 + 16) = 0;
    sub_652CC();
    v47 = v62;
    sub_262C60();
    sub_65560(v45);
    v48 = 0;
  }

  else
  {
    v48 = 1;
    v47 = v62;
  }

  v49 = sub_2EF0(&qword_319380, &qword_26CD30);
  return (*(*(v49 - 8) + 56))(v47, v48, 1, v49);
}

uint64_t sub_64858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_2EF0(&qword_318170, &unk_26AF40);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for ListItemMetadataCreatorDescriptionView(0, a2, a3, v8);
  v10 = *(*(a2 - 8) + 32);
  v11 = a4 + *(v9 + 36);

  return v10(v11, a1, a2);
}

void sub_64938(uint64_t a1)
{
  sub_64EF0(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_649C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_261690() - 8);
  v7 = ((*(v6 + 64) + ((*(v6 + 80) + 2) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = *(*(a3 + 16) - 8);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 + v7 + 1;
  if (a2 <= v12)
  {
    goto LABEL_30;
  }

  v14 = (v13 & ~v10) + v11;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v18 < 2)
    {
LABEL_30:
      if (v9 > 0xFE)
      {
        v23 = *(*(*(a3 + 16) - 8) + 48);

        return v23((a1 + v13) & ~v10);
      }

      else
      {
        v22 = *(a1 + v7);
        if (v22 >= 2)
        {
          return (v22 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_30;
  }

LABEL_17:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v12 + (v21 | v19) + 1;
}

void sub_64C00(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_261690() - 8);
  v9 = ((*(v8 + 64) + ((*(v8 + 80) + 2) & ~*(v8 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = 8;
  if (v9 > 8)
  {
    v10 = v9;
  }

  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = v10 | 1;
  v16 = (v10 | 1) + v13;
  v17 = (v16 & ~v13) + *(v11 + 64);
  if (a3 <= v14)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v14 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_49:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_46;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v12 > 0xFE)
  {
    v24 = *(v11 + 56);

    v24(&a1[v16] & ~v13, a2);
  }

  else if (a2 > 0xFE)
  {
    v25 = a2 - 255;
    bzero(a1, v10 | 1);
    if (v15 <= 3)
    {
      *a1 = v25;
    }

    else
    {
      *a1 = v25;
    }
  }

  else
  {
    a1[v10] = -a2;
  }
}

void sub_64EF0(uint64_t a1)
{
  if (!qword_319360)
  {
    type metadata accessor for FontConstants.ListItem(255);
    v1 = sub_2611E0();
    if (!v2)
    {
      atomic_store(v1, &qword_319360);
    }
  }
}

uint64_t sub_64F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for ListItemMetadataCreatorDescriptionView(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  sub_2EF0(&qword_318170, &unk_26AF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v9 = sub_261690();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v7 + *(v6 + 36), v5);

  return swift_deallocObject();
}

uint64_t sub_650F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  type metadata accessor for ListItemMetadataCreatorDescriptionView(0, v6, v7, a2);

  return sub_64398(a1, v6, v7, a3);
}

unint64_t sub_6518C()
{
  result = qword_319370;
  if (!qword_319370)
  {
    sub_2F9C(&qword_319368, &qword_26CD28);
    sub_65210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319370);
  }

  return result;
}

unint64_t sub_65210()
{
  result = qword_319378;
  if (!qword_319378)
  {
    sub_2F9C(&qword_319380, &qword_26CD30);
    sub_652CC();
    sub_65440(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319378);
  }

  return result;
}

unint64_t sub_652CC()
{
  result = qword_319388;
  if (!qword_319388)
  {
    sub_2F9C(&qword_319390, &qword_26CD38);
    sub_65384();
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319388);
  }

  return result;
}

unint64_t sub_65384()
{
  result = qword_319398;
  if (!qword_319398)
  {
    sub_2F9C(&qword_3193A0, &unk_26CD40);
    sub_65440(&qword_3193A8, type metadata accessor for DefaultBlendModeModifier, &unk_28233C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319398);
  }

  return result;
}

uint64_t sub_65440(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_65488(uint64_t a1)
{
  v2 = type metadata accessor for FontConstants.ListItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_654F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_3193A0, &unk_26CD40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_65560(uint64_t a1)
{
  v2 = sub_2EF0(&qword_319390, &qword_26CD38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UberNavigationBackButtonView.body.getter()
{
  sub_2EF0(&qword_3193C0, &qword_26CDC0);
  sub_260A70();
  sub_260A50();
  sub_2F9C(&qword_3193C8, &qword_26CDC8);
  sub_2F9C(&qword_3193D0, &qword_26CDD0);
  sub_66424();
  sub_8E38(&qword_319408, &qword_3193D0, &qword_26CDD0, &protocol conformance descriptor for TupleView<A>);
  swift_getOpaqueTypeConformance2();
  sub_668A0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_668A0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

uint64_t sub_657E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v65 = a2;
  v2 = sub_260BD0();
  __chkstk_darwin(v2 - 8);
  v63 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_262370();
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v60 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261FA0();
  v7 = *(v6 - 8);
  v58 = v6;
  v59 = v7;
  __chkstk_darwin(v6);
  v55 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_261760();
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_263AF0();
  __chkstk_darwin(v11 - 8);
  v12 = sub_2EF0(&qword_316960, &unk_2689F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v15 = sub_2EF0(&qword_3193F0, &qword_26CDE8);
  v47 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = sub_2EF0(&qword_3193E8, &qword_26CDE0);
  v48 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v46 - v19;
  v49 = sub_2EF0(&qword_3193E0, &qword_26CDD8);
  v51 = *(v49 - 8);
  __chkstk_darwin(v49);
  v22 = &v46 - v21;
  v54 = sub_2EF0(&qword_319420, &qword_26CE80);
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v46 = &v46 - v23;
  v57 = sub_2EF0(&qword_3193C8, &qword_26CDC8);
  __chkstk_darwin(v57);
  v50 = &v46 - v24;
  v25 = sub_2610B0();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  sub_263AC0();
  sub_264170();
  v71 = sub_264180();
  v72 = &protocol witness table for Models.FlowBackAction;
  sub_10934(&v68);
  sub_264150();
  sub_2EF0(&qword_319428, &qword_26CE88);
  sub_666D8();
  sub_260AA0();
  sub_261750();
  v26 = sub_8E38(&qword_3193F8, &qword_3193F0, &qword_26CDE8, &protocol conformance descriptor for ActionButton<A>);
  v27 = sub_668A0(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v28 = v52;
  sub_262A50();
  (*(v53 + 8))(v10, v28);
  (*(v47 + 8))(v17, v15);
  v29 = v55;
  sub_2618C0();
  v68 = v15;
  v69 = v28;
  v70 = v26;
  v71 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_668A0(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v32 = v58;
  sub_262AA0();
  (*(v59 + 8))(v29, v32);
  (*(v48 + 8))(v20, v18);
  v33 = v60;
  sub_262350();
  v68 = v18;
  v69 = v32;
  v70 = OpaqueTypeConformance2;
  v71 = v31;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v46;
  v36 = v49;
  sub_262C70();
  (*(v61 + 8))(v33, v62);
  v37 = v36;
  (*(v51 + 8))(v22, v36);
  v67 = 0;
  SymbolImage.Kind.accessibilityLocalizable.getter();
  v38 = v64;
  sub_30CC(v64, &v68);
  v39 = sub_2627B0();
  v41 = v40;
  LOBYTE(v36) = v42;
  v68 = v37;
  v69 = v34;
  swift_getOpaqueTypeConformance2();
  v43 = v50;
  v44 = v54;
  sub_262BF0();
  sub_39DBC(v39, v41, v36 & 1);

  (*(v56 + 8))(v35, v44);
  v66 = v38;
  sub_2EF0(&qword_3193D0, &qword_26CDD0);
  sub_66424();
  sub_8E38(&qword_319408, &qword_3193D0, &qword_26CDD0, &protocol conformance descriptor for TupleView<A>);
  sub_262D60();
  return sub_668F0(v43);
}

uint64_t sub_66160@<X0>(_BYTE *a1@<X8>)
{
  v2 = &a1[*(sub_2EF0(&qword_319440, &unk_26CE90) + 36)];
  *v2 = swift_getKeyPath();
  v2[8] = 0;
  v3 = type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier(0);
  v4 = *(v3 + 20);
  *&v2[v4] = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v2[*(v3 + 24)] = 1;
  *a1 = 0;
  v5 = &a1[*(sub_2EF0(&qword_319428, &qword_26CE88) + 36)];
  v6 = *(sub_2EF0(&qword_317530, &qword_26FCC0) + 28);
  v7 = enum case for Image.Scale.medium(_:);
  v8 = sub_2630F0();
  (*(*(v8 - 8) + 104))(&v5[v6], v7, v8);
  result = swift_getKeyPath();
  *v5 = result;
  return result;
}

double sub_66298@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_260BD0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_2630B0();
  v13[47] = 0;
  SymbolImage.Kind.accessibilityLocalizable.getter();
  sub_30CC(a1, v13);
  v6 = sub_2627B0();
  v8 = v7;
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  v10 = v9 & 1;
  *(a2 + 24) = v9 & 1;
  *(a2 + 32) = v11;

  sub_43B58(v6, v8, v10);

  sub_39DBC(v6, v8, v10);

  return result;
}

uint64_t sub_663C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_errorRetain();

  return _JetLocalizeDefaultFailed.init(error:retry:)(a1, a2, a3);
}

unint64_t sub_66424()
{
  result = qword_3193D8;
  if (!qword_3193D8)
  {
    sub_2F9C(&qword_3193C8, &qword_26CDC8);
    sub_2F9C(&qword_3193E0, &qword_26CDD8);
    sub_2F9C(&qword_3193E8, &qword_26CDE0);
    sub_261FA0();
    sub_2F9C(&qword_3193F0, &qword_26CDE8);
    sub_261760();
    sub_8E38(&qword_3193F8, &qword_3193F0, &qword_26CDE8, &protocol conformance descriptor for ActionButton<A>);
    sub_668A0(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_668A0(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_668A0(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3193D8);
  }

  return result;
}

unint64_t sub_666D8()
{
  result = qword_319430;
  if (!qword_319430)
  {
    sub_2F9C(&qword_319428, &qword_26CE88);
    sub_66790();
    sub_8E38(&qword_317590, &qword_317530, &qword_26FCC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319430);
  }

  return result;
}

unint64_t sub_66790()
{
  result = qword_319438;
  if (!qword_319438)
  {
    sub_2F9C(&qword_319440, &unk_26CE90);
    sub_6684C();
    sub_668A0(&qword_319450, type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier, "ݨ\b");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319438);
  }

  return result;
}

unint64_t sub_6684C()
{
  result = qword_319448;
  if (!qword_319448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319448);
  }

  return result;
}

uint64_t sub_668A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_668F0(uint64_t a1)
{
  v2 = sub_2EF0(&qword_3193C8, &qword_26CDC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_66984(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2EF0(&qword_319458, &unk_26CF30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_66A54(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2EF0(&qword_319458, &unk_26CF30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AlignmentImageView(uint64_t a1)
{
  result = qword_3194B8;
  if (!qword_3194B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_66B50(uint64_t a1)
{
  sub_57520();
  if (v1 <= 0x3F)
  {
    sub_66BD4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_66BD4(uint64_t a1)
{
  if (!qword_3194C8)
  {
    sub_2616C0();
    v1 = sub_2611E0();
    if (!v2)
    {
      atomic_store(v1, &qword_3194C8);
    }
  }
}

uint64_t sub_66C48@<X0>(id *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2630C0();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2616C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = (&v40 - v13);
  v15 = *a1;
  [*a1 size];
  v42 = v17;
  v43 = v16;
  [v15 alignmentRectInsets];
  v41 = v18;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_261420();
  [v15 alignmentRectInsets];
  sub_2648C0();
  type metadata accessor for AlignmentImageView(0);
  sub_40CC8(v14);
  (*(v8 + 16))(v10, v14, v7);
  v25 = (*(v8 + 88))(v10, v7);
  v26 = UIUserInterfaceLayoutDirectionLeftToRight;
  if (v25 != enum case for LayoutDirection.leftToRight(_:))
  {
    if (v25 == enum case for LayoutDirection.rightToLeft(_:))
    {
      v26 = UIUserInterfaceLayoutDirectionRightToLeft;
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      v26 = UIUserInterfaceLayoutDirectionLeftToRight;
    }
  }

  sub_673B4(0.0, 0.0, v43, v42, v41, v20, v22, v24);
  sub_2648B0(v26);
  (*(v8 + 8))(v14, v7);
  v27 = v15;
  sub_2630A0();
  v29 = v44;
  v28 = v45;
  (*(v44 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v45);
  v30 = sub_263100();

  (*(v29 + 8))(v6, v28);
  sub_2610D0();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  result = sub_262500();
  *a2 = v30;
  *(a2 + 8) = result;
  *(a2 + 16) = v32;
  *(a2 + 24) = v34;
  *(a2 + 32) = v36;
  *(a2 + 40) = v38;
  *(a2 + 48) = 0;
  return result;
}

double sub_66FE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1 - 8);
  v7 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v9 = v8;
  sub_67150(v3, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_672D0(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = *v3;
  [v12 size];
  v14 = v13;
  v16 = v15;
  [v12 alignmentRectInsets];
  v21 = sub_673B4(0.0, 0.0, v14, v16, v17, v18, v19, v20);
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = sub_67334;
  *(a2 + 24) = v11;
  result = v21 / v22;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_67150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlignmentImageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_671B4()
{
  v1 = (type metadata accessor for AlignmentImageView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[7];
  sub_2EF0(&qword_316C18, &unk_26F830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_2616C0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_672D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlignmentImageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_67334@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AlignmentImageView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_66C48(v4, a1);
}

unint64_t sub_673CC()
{
  result = qword_3194F8;
  if (!qword_3194F8)
  {
    sub_2F9C(&qword_319500, &qword_26CFB0);
    sub_67458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3194F8);
  }

  return result;
}

unint64_t sub_67458()
{
  result = qword_319508;
  if (!qword_319508)
  {
    sub_2F9C(&qword_319510, &qword_26CFB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319508);
  }

  return result;
}

void *sub_674BC@<X0>(_BYTE *a1@<X8>)
{
  sub_2F264();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_67558()
{
  v1 = sub_260290();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = sub_264410();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  if (*(v0 + 56) == 3)
  {
    v15 = *(v0 + 40);
    v24 = *(v0 + 48);
    v25 = v15;

    sub_2643A0();
    sub_260260();
    (*(v9 + 16))(v11, v14, v8);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_260260();
    sub_264480("TOTAL_READING_TIME_PREFIX", 25, 2, v11, 0, 0, v17, v4, "Year in Review: TOTAL_READING_TIME_PREFIX. Sentence as seen in the UI: TOTAL_READING_TIME_PREFIX \\n <formatted, localized time duration> \\n TOTAL_READING_TIME_WITH_EXTRAS_SUFFIX OR TOTAL_READING_TIME_NO_EXTRAS_SUFFIX. Optionally this string supports including the localized year via the %@ parameter if it does not grammatically make sense for the year to be in in the TOTAL_READING_TIME_NO_EXTRAS_SUFFIX", 404, 2);
    (*(v2 + 8))(v7, v1);
    (*(v9 + 8))(v14, v8);
    sub_2EF0(&qword_316420, &qword_2681A0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_267D30;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_6C7C8();
    v19 = v24;
    *(v18 + 32) = v25;
    *(v18 + 40) = v19;
    v20 = sub_264430();
  }

  else
  {
    sub_2643A0();
    sub_260260();
    (*(v9 + 16))(v11, v14, v8);
    type metadata accessor for BundleFinder();
    v21 = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:v21];
    (*(v2 + 16))(v4, v7, v1);
    v20 = sub_264490();
    (*(v2 + 8))(v7, v1);
    (*(v9 + 8))(v14, v8);
  }

  return v20;
}

uint64_t sub_67E08()
{
  v1 = sub_260290();
  v20 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v7 = sub_264410();
  v21 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v13 = sub_2643F0();
  __chkstk_darwin(v13 - 8);
  v14 = *v0;
  v15 = *(v0 + 56);
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      v14 = *(v0 + 24);

      return v14;
    }

    goto LABEL_5;
  }

  if (v15 < 2)
  {
LABEL_5:

    return v14;
  }

  sub_2643E0();
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_2643D0(v23);
  v22 = v14;
  sub_2643B0();
  v24._countAndFlagsBits = 0x73656761700ALL;
  v24._object = 0xE600000000000000;
  sub_2643D0(v24);
  sub_264400();
  sub_260260();
  (*(v21 + 16))(v9, v12, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v18 = v20;
  (*(v20 + 16))(v3, v6, v1);
  v14 = sub_264490();
  (*(v18 + 8))(v6, v1);
  (*(v21 + 8))(v12, v7);
  return v14;
}

uint64_t sub_68170()
{
  v1 = v0;
  v43 = sub_260290();
  v2 = *(v43 - 8);
  __chkstk_darwin(v43);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  v44 = sub_264410();
  v8 = *(v44 - 8);
  __chkstk_darwin(v44);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  v14 = sub_2643F0();
  __chkstk_darwin(v14 - 8);
  v15 = *(v0 + 8);
  v16 = *(v0 + 16);
  v17 = *(v0 + 56);
  if (v17 <= 2)
  {
    v18 = *(v0 + 24);
    if (*(v0 + 56))
    {
      if (v17 == 1)
      {

        if (!v18)
        {
          return v16;
        }

        sub_2643E0();
        v46._countAndFlagsBits = 0xD000000000000030;
        v46._object = 0x8000000000290D80;
        sub_2643D0(v46);
        v47._countAndFlagsBits = v16;
        v47._object = v18;
        sub_2643C0(v47);

        v48._countAndFlagsBits = 0x2E676E6F6C20;
        v48._object = 0xE600000000000000;
        sub_2643D0(v48);
        sub_264400();
        sub_260260();
        v19 = v44;
        (*(v8 + 16))(v10, v13, v44);
        type metadata accessor for BundleFinder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        v21 = v43;
        (*(v2 + 16))(v4, v7, v43);
      }

      else
      {
        sub_2643E0();
        v53._countAndFlagsBits = 0xD000000000000024;
        v53._object = 0x8000000000290D10;
        sub_2643D0(v53);
        v45 = v15;
        sub_2643B0();
        v54._countAndFlagsBits = 0x6C20736567617020;
        v54._object = 0xEC0000002E676E6FLL;
        sub_2643D0(v54);
        sub_264400();
        sub_260260();
        v19 = v44;
        (*(v8 + 16))(v10, v13, v44);
        type metadata accessor for BundleFinder();
        v32 = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass:v32];
        v21 = v43;
        (*(v2 + 16))(v4, v7, v43);
      }
    }

    else
    {

      sub_2643E0();
      v50._countAndFlagsBits = 0x64656873696E6946;
      v50._object = 0xEC000000206E6F20;
      sub_2643D0(v50);
      v51._countAndFlagsBits = v16;
      v51._object = v18;
      sub_2643C0(v51);

      v52._countAndFlagsBits = 0;
      v52._object = 0xE000000000000000;
      sub_2643D0(v52);
      sub_264400();
      sub_260260();
      v19 = v44;
      (*(v8 + 16))(v10, v13, v44);
      type metadata accessor for BundleFinder();
      v24 = swift_getObjCClassFromMetadata();
      [objc_opt_self() bundleForClass:v24];
      v21 = v43;
      (*(v2 + 16))(v4, v7, v43);
    }

    goto LABEL_15;
  }

  if (v17 != 3)
  {
    if (v17 == 4)
    {
      sub_2643E0();
      v49._countAndFlagsBits = 0x6461657220756F59;
      v49._object = 0xE900000000000020;
      sub_2643D0(v49);
      v45 = v16;
      sub_2643B0();
      v22._countAndFlagsBits = 0xD000000000000016;
      v22._object = 0x8000000000290CC0;
    }

    else
    {
      sub_2643E0();
      v55._countAndFlagsBits = 0x6461657220756F59;
      v55._object = 0xE900000000000020;
      sub_2643D0(v55);
      v45 = v16;
      sub_2643B0();
      v22._object = 0x8000000000290C70;
      v22._countAndFlagsBits = 0xD000000000000015;
    }

    sub_2643D0(v22);
    sub_264400();
    sub_260260();
    v19 = v44;
    (*(v8 + 16))(v10, v13, v44);
    type metadata accessor for BundleFinder();
    v23 = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:v23];
    v21 = v43;
    (*(v2 + 16))(v4, v7, v43);
LABEL_15:
    v16 = sub_264490();
    (*(v2 + 8))(v7, v21);
    (*(v8 + 8))(v13, v19);
    return v16;
  }

  v25 = *(v0 + 48);
  v41 = *(v1 + 40);
  v26 = *v1;

  v42 = v25;

  if (v26 / 60.0 / 60.0 >= 5.0)
  {
    sub_2643A0();
    sub_260260();
    v34 = v44;
    (*(v8 + 16))(v10, v13, v44);
    type metadata accessor for BundleFinder();
    v35 = swift_getObjCClassFromMetadata();
    v36 = [objc_opt_self() bundleForClass:v35];
    sub_260260();
    sub_264480("TOTAL_READING_TIME_WITH_EXTRAS_SUFFIX", 37, 2, v10, 0, 0, v36, v4, "Year in Review: Reading Time Highlight's TOTAL_READING_TIME_SUFFIX. Sentence as seen in the UI: TOTAL_READING_TIME_PREFIX \\n <formatted, localized time duration> \\n TOTAL_READING_TIME_WITH_EXTRAS_SUFFIX.", 203, 2);
    (*(v2 + 8))(v7, v43);
    (*(v8 + 8))(v13, v34);
    sub_2EF0(&qword_316420, &qword_2681A0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_269100;
    *(v37 + 56) = &type metadata for String;
    v38 = sub_6C7C8();
    v39 = v42;
    *(v37 + 32) = v41;
    *(v37 + 40) = v39;
    *(v37 + 96) = &type metadata for String;
    *(v37 + 104) = v38;
    *(v37 + 64) = v38;
    *(v37 + 72) = v15;
    *(v37 + 80) = v16;
  }

  else
  {

    sub_2643A0();
    sub_260260();
    v27 = v44;
    (*(v8 + 16))(v10, v13, v44);
    type metadata accessor for BundleFinder();
    v28 = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass:v28];
    sub_260260();
    sub_264480("TOTAL_READING_TIME_NO_EXTRAS_SUFFIX", 35, 2, v10, 0, 0, v29, v4, "Year in Review: Reading Time Highlight's TOTAL_READING_TIME_SUFFIX. Sentence as seen in the UI: TOTAL_READING_TIME_PREFIX \\n <formatted, localized time duration> \\n TOTAL_READING_TIME_NO_EXTRAS_SUFFIX.", 201, 2);
    (*(v2 + 8))(v7, v43);
    (*(v8 + 8))(v13, v27);
    sub_2EF0(&qword_316420, &qword_2681A0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_267D30;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_6C7C8();
    v31 = v42;
    *(v30 + 32) = v41;
    *(v30 + 40) = v31;
  }

  v16 = sub_264430();

  return v16;
}

uint64_t HighlightFrameViewModel.init(kind:style:exposureData:lowAssetCount:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v9;
  *(a5 + 32) = a1[2];
  *(a5 + 41) = *(a1 + 41);
  v10 = type metadata accessor for HighlightFrameViewModel(0);
  sub_6B914(a2, a5 + *(v10 + 24), type metadata accessor for HighlightCoverStyle);
  v11 = *(v10 + 28);
  v12 = sub_260550();
  result = (*(*(v12 - 8) + 32))(a5 + v11, a3, v12);
  *(a5 + 57) = a4;
  return result;
}

uint64_t sub_68DB0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_8198(v2, &v14 - v9, &qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_261180();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_68FB0()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for HighlightFrame(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_264900();
    v7 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

BOOL sub_69108()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for HighlightFrame(0);
  v6 = v0 + *(v5 + 24);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    if (v7)
    {
      return 0;
    }
  }

  else
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v7, 0);
    (*(v2 + 8))(v4, v1);
    if (v13[15])
    {
      return 0;
    }
  }

  v9 = v0 + *(v5 + 28);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    if (v10)
    {
      return 0;
    }
  }

  else
  {

    sub_264900();
    v12 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v10, 0);
    (*(v2 + 8))(v4, v1);
    if (v13[14])
    {
      return 0;
    }
  }

  return !UIAccessibilityIsReduceMotionEnabled();
}

uint64_t HighlightFrame.id.getter()
{
  v1 = *(v0 + *(type metadata accessor for HighlightFrame(0) + 32));

  return v1;
}

uint64_t HighlightFrame.sharableView.getter()
{
  v1 = type metadata accessor for HighlightFrame(0);
  __chkstk_darwin(v1);
  sub_69890(v0, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HighlightFrame);
  sub_69594(&qword_319518, type metadata accessor for HighlightFrame, &protocol conformance descriptor for HighlightFrame);
  return sub_263310();
}

uint64_t HighlightFrame.exposureData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HighlightFrame(0) + 40);
  v4 = *(type metadata accessor for HighlightFrameViewModel(0) + 28);
  v5 = sub_260550();
  a1[3] = v5;
  a1[4] = sub_69594(&qword_317678, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  a1[5] = sub_69594(&qword_317680, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  v6 = sub_10934(a1);
  v7 = *(*(v5 - 8) + 16);

  return v7(v6, v3 + v4, v5);
}

uint64_t sub_69594(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HighlightFrame.background.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_316D98, &unk_269120);
  __chkstk_darwin(v3 - 8);
  v5 = &v27[-v4];
  v6 = type metadata accessor for HighlightCoverStyle(0);
  __chkstk_darwin(v6);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v1 + *(type metadata accessor for HighlightFrame(0) + 40);
  v10 = type metadata accessor for HighlightFrameViewModel(0);
  sub_69890(v9 + *(v10 + 24), v8, type metadata accessor for HighlightCoverStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *v8;
  if (EnumCaseMultiPayload == 1)
  {
    v13 = sub_2EF0(&qword_319520, &unk_26CFE8);
    sub_22148(v8 + *(v13 + 48), v5, &qword_316D98, &unk_269120);
    v14 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
    *a1 = v12;
    sub_22148(v5, a1 + v14, &qword_316D98, &unk_269120);
LABEL_6:
    type metadata accessor for PageBackground(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (!*(v12 + 16))
  {

    v23 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
    v24 = [objc_opt_self() systemGray6Color];
    *a1 = sub_262EE0();
    v25 = sub_261180();
    (*(*(v25 - 8) + 56))(a1 + v23, 1, 1, v25);
    goto LABEL_6;
  }

  v15 = *(v12 + 112);
  v32 = *(v12 + 96);
  v33 = v15;
  v16 = *(v12 + 144);
  v34 = *(v12 + 128);
  v35 = v16;
  v17 = *(v12 + 48);
  v28 = *(v12 + 32);
  v29 = v17;
  v18 = *(v12 + 80);
  v30 = *(v12 + 64);
  v31 = v18;
  sub_5757C(&v28, v27);

  v19 = v33;
  *(a1 + 64) = v32;
  *(a1 + 80) = v19;
  v20 = v35;
  *(a1 + 96) = v34;
  *(a1 + 112) = v20;
  v21 = v29;
  *a1 = v28;
  *(a1 + 16) = v21;
  v22 = v31;
  *(a1 + 32) = v30;
  *(a1 + 48) = v22;
  type metadata accessor for PageBackground(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_69890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t HighlightFrame.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2601E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for HighlightFrame(0);
  v9 = a2 + v8[5];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = a2 + v8[6];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = a2 + v8[7];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = (a2 + v8[8]);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_264BC0(17);

  v20 = 0x6867696C68676948;
  v21 = 0xEF2D656D61724674;
  sub_2601D0();
  v13 = sub_2601C0();
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  v22._countAndFlagsBits = v13;
  v22._object = v15;
  sub_264530(v22);

  v16 = v21;
  *v12 = v20;
  v12[1] = v16;
  v17 = (a2 + v8[9]);
  *v17 = sub_263550();
  v17[1] = v18;
  return sub_6B914(a1, a2 + v8[10], type metadata accessor for HighlightFrameViewModel);
}

void *sub_69B24@<X0>(_BYTE *a1@<X8>)
{
  sub_2F264();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t HighlightFrame.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for HighlightFrame(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_69890(v1, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HighlightFrame);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_6B914(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for HighlightFrame);
  KeyPath = swift_getKeyPath();
  v9 = (a1 + *(sub_2EF0(&qword_319528, &qword_26D0B8) + 36));
  v10 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v11 = enum case for ColorScheme.dark(_:);
  v12 = sub_261180();
  result = (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = KeyPath;
  *a1 = sub_6BA04;
  a1[1] = v7;
  return result;
}

__n128 sub_69D6C@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_2EF0(&qword_319750, &qword_26D2D0);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  *v7 = sub_261E50();
  *(v7 + 1) = 0x4040000000000000;
  v7[16] = 0;
  v8 = sub_2EF0(&qword_319758, &qword_26D2D8);
  sub_69ED8(a2, &v7[*(v8 + 44)]);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  sub_22148(v7, a3, &qword_319750, &qword_26D2D0);
  v9 = a3 + *(sub_2EF0(&qword_319760, &qword_26D2E0) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_69ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v94 = sub_2EF0(&qword_319768, &qword_26D2E8);
  __chkstk_darwin(v94);
  v4 = v80 - v3;
  v5 = sub_2EF0(&qword_319770, &qword_26D2F0);
  __chkstk_darwin(v5);
  v7 = v80 - v6;
  v8 = sub_2EF0(&qword_319778, &qword_26D2F8);
  __chkstk_darwin(v8);
  v91 = v80 - v9;
  v10 = sub_2EF0(&qword_319780, &qword_26D300);
  __chkstk_darwin(v10 - 8);
  v87 = (v80 - v11);
  v86 = sub_2EF0(&qword_319788, &qword_26D308);
  __chkstk_darwin(v86);
  v89 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v88 = v80 - v14;
  __chkstk_darwin(v15);
  v90 = v80 - v16;
  v17 = sub_2EF0(&qword_319790, &qword_26D310);
  __chkstk_darwin(v17 - 8);
  v19 = v80 - v18;
  v84 = sub_2EF0(&qword_319798, &qword_26D318);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v81 = v80 - v22;
  v23 = sub_2EF0(&qword_3197A0, &qword_26D320);
  __chkstk_darwin(v23 - 8);
  v85 = v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v93 = v80 - v26;
  v27 = type metadata accessor for HighlightCoverStyle(0);
  __chkstk_darwin(v27);
  v29 = (v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = a1 + *(type metadata accessor for HighlightFrame(0) + 40);
  v31 = type metadata accessor for HighlightFrameViewModel(0);
  sub_69890(v30 + *(v31 + 24), v29, type metadata accessor for HighlightCoverStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v33 = *v29;
  if (EnumCaseMultiPayload == 1)
  {

    v34 = *(sub_2EF0(&qword_319520, &unk_26CFE8) + 48);
    *v4 = sub_261E50();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v35 = sub_2EF0(&qword_3197A8, &qword_26D328);
    sub_6B234(&v4[*(v35 + 44)]);
    sub_8198(v4, v7, &qword_319768, &qword_26D2E8);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_3197B0, &qword_319778, &qword_26D2F8, &protocol conformance descriptor for TupleView<A>);
    sub_8E38(&qword_3197B8, &qword_319768, &qword_26D2E8, &protocol conformance descriptor for VStack<A>);
    sub_261F80();
    sub_8E80(v4, &qword_319768, &qword_26D2E8);
    v36 = &qword_316D98;
    v37 = &unk_269120;
    v38 = v29 + v34;
  }

  else
  {
    v80[1] = v5;
    v80[2] = v8;
    sub_261420();
    v40 = v39;
    sub_261420();
    sub_2649B0();
    if (v41 < 0.6 || v41 > 0.8)
    {
      if (v41 < 0.8 || v41 > 1.2)
      {
        if (v41 < 1.2)
        {
          v42 = 3;
        }

        else
        {
          v42 = 0;
        }
      }

      else
      {
        v42 = 1;
      }
    }

    else
    {
      v42 = 2;
    }

    v43 = *(v33 + 16);
    if (v43 >= 6)
    {
      sub_C8914(v33, v33 + 32, 0, 0xBuLL);
      v45 = v44;

      v43 = *(v45 + 16);
      v33 = v45;
    }

    if (v43)
    {
      v46 = v40 + -32.0;
      memmove(__dst, (v33 + 32), 0x80uLL);
      v47 = sub_2F8B8(__dst);
      v48 = sub_2F950(__dst);
      if (v47)
      {
        v49 = 1.0;
        if (v47 != 1)
        {
          v49 = 0.641025641;
        }
      }

      else
      {
        v49 = *(v48 + 16);
      }

      sub_C8DDC(v33, v46, v46 * dbl_26D468[v42], v49);
      v51 = v50;
      v53 = v52;

      *v19 = sub_261E50();
      *(v19 + 1) = 0;
      v19[16] = 1;
      v54 = sub_2EF0(&qword_3197C0, &qword_26D330);
      sub_6AAD0(v53, a1, &v19[*(v54 + 44)], v51, v49);

      _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      sub_261830();
      v55 = v82;
      sub_22148(v19, v82, &qword_319790, &qword_26D310);
      v56 = v84;
      v57 = (v55 + *(v84 + 36));
      v58 = __dst[13];
      v57[4] = __dst[12];
      v57[5] = v58;
      v57[6] = __dst[14];
      v59 = __dst[9];
      *v57 = __dst[8];
      v57[1] = v59;
      v60 = __dst[11];
      v57[2] = __dst[10];
      v57[3] = v60;
      v61 = v55;
      v62 = v81;
      sub_22148(v61, v81, &qword_319798, &qword_26D318);
      v63 = v62;
      v64 = v93;
      sub_22148(v63, v93, &qword_319798, &qword_26D318);
      (*(v83 + 56))(v64, 0, 1, v56);
    }

    else
    {

      (*(v83 + 56))(v93, 1, 1, v84);
    }

    v65 = sub_261D10();
    v66 = v87;
    *v87 = v65;
    *(v66 + 8) = 0x4030000000000000;
    *(v66 + 16) = 0;
    v67 = sub_2EF0(&qword_3197C8, &qword_26D338);
    sub_6AFE8((v66 + *(v67 + 44)));
    sub_261420();
    sub_263550();
    sub_261830();
    v68 = v88;
    sub_22148(v66, v88, &qword_319780, &qword_26D300);
    v69 = (v68 + *(v86 + 36));
    v70 = __dst[5];
    v69[4] = __dst[4];
    v69[5] = v70;
    v69[6] = __dst[6];
    v71 = __dst[1];
    *v69 = __dst[0];
    v69[1] = v71;
    v72 = __dst[3];
    v69[2] = __dst[2];
    v69[3] = v72;
    v73 = v90;
    sub_22148(v68, v90, &qword_319788, &qword_26D308);
    v74 = v93;
    v75 = v85;
    sub_8198(v93, v85, &qword_3197A0, &qword_26D320);
    v76 = v89;
    sub_8198(v73, v89, &qword_319788, &qword_26D308);
    v77 = v91;
    sub_8198(v75, v91, &qword_3197A0, &qword_26D320);
    v78 = sub_2EF0(&qword_3197D0, &qword_26D340);
    sub_8198(v76, v77 + *(v78 + 48), &qword_319788, &qword_26D308);
    sub_8E80(v76, &qword_319788, &qword_26D308);
    sub_8E80(v75, &qword_3197A0, &qword_26D320);
    sub_8198(v77, v7, &qword_319778, &qword_26D2F8);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_3197B0, &qword_319778, &qword_26D2F8, &protocol conformance descriptor for TupleView<A>);
    sub_8E38(&qword_3197B8, &qword_319768, &qword_26D2E8, &protocol conformance descriptor for VStack<A>);
    sub_261F80();
    sub_8E80(v77, &qword_319778, &qword_26D2F8);
    sub_8E80(v73, &qword_319788, &qword_26D308);
    v38 = v74;
    v36 = &qword_3197A0;
    v37 = &qword_26D320;
  }

  return sub_8E80(v38, v36, v37);
}

uint64_t sub_6AAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v52 = a3;
  v9 = type metadata accessor for HighlightFrame(0);
  v10 = *(v9 - 8);
  v51 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v45[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_2EF0(&qword_3197E0, &qword_26D400);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v45[-v15];
  v17 = sub_2EF0(&qword_3197E8, &qword_26D408);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v45[-v19];
  v21 = sub_2EF0(&qword_3197F0, &qword_26D410);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v48 = &v45[-v23];
  v50 = sub_2EF0(&qword_3197F8, &qword_26D418) - 8;
  __chkstk_darwin(v50);
  v49 = &v45[-v24];
  v25 = (v16 + *(v14 + 44));
  v26 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);

  sub_68DB0((v25 + v26));
  *v25 = swift_getKeyPath();
  *v16 = a1;
  v16[1] = a4;
  v16[2] = a5;
  *(v16 + 24) = 0;
  v27 = a2;
  if (sub_68FB0())
  {
    v28 = 1.0;
  }

  else
  {
    v28 = 0.8;
  }

  sub_263720();
  v30 = v29;
  v32 = v31;
  v47 = v20;
  sub_22148(v16, v20, &qword_3197E0, &qword_26D400);
  v33 = &v20[*(v18 + 44)];
  *v33 = v28;
  v33[1] = v28;
  *(v33 + 2) = v30;
  *(v33 + 3) = v32;
  v46 = sub_68FB0();
  sub_69890(a2, v12, type metadata accessor for HighlightFrame);
  v34 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v35 = swift_allocObject();
  sub_6B914(v12, v35 + v34, type metadata accessor for HighlightFrame);
  v36 = v48;
  sub_22148(v47, v48, &qword_3197E8, &qword_26D408);
  v37 = &v36[*(v22 + 44)];
  *v37 = v46 & 1;
  *(v37 + 1) = sub_6C824;
  *(v37 + 2) = v35;
  if (sub_68FB0())
  {
    v38 = 1.0;
  }

  else
  {
    v38 = 0.8;
  }

  v39 = v49;
  sub_22148(v36, v49, &qword_3197F0, &qword_26D410);
  *&v39[*(v50 + 44)] = v38;
  v40 = sub_68FB0();
  sub_69890(v27, v12, type metadata accessor for HighlightFrame);
  v41 = swift_allocObject();
  sub_6B914(v12, v41 + v34, type metadata accessor for HighlightFrame);
  v42 = v52;
  sub_22148(v39, v52, &qword_3197F8, &qword_26D418);
  result = sub_2EF0(&qword_319800, &qword_26D450);
  v44 = v42 + *(result + 36);
  *v44 = v40 & 1;
  *(v44 + 8) = sub_6C83C;
  *(v44 + 16) = v41;
  return result;
}

uint64_t sub_6AF34()
{
  if (sub_69108())
  {
    sub_263630();
    sub_2635B0();
  }

  return sub_261260();
}

uint64_t sub_6AF9C()
{
  if (sub_69108())
  {
    sub_2635D0();
  }

  return sub_261260();
}

uint64_t sub_6AFE8@<X0>(char *a1@<X8>)
{
  type metadata accessor for HighlightFrame(0);
  v2 = sub_67558();
  v29 = v3;
  v30 = v2;
  v28 = sub_67E08();
  v5 = v4;
  v6 = sub_68170();
  v8 = v7;
  v9 = type metadata accessor for TextLockup(0);
  v10 = v9[13];
  v11 = sub_2625C0();
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = sub_261E60();
  v13 = sub_263580();
  v15 = v14;
  v16 = v9[17];
  v17 = enum case for DynamicTypeSize.accessibility2(_:);
  v18 = sub_261690();
  (*(*(v18 - 8) + 104))(&a1[v16], v17, v18);
  *a1 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v19 = v9[5];
  *&a1[v19] = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v20 = &a1[v9[6]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &a1[v9[7]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &a1[v9[8]];
  result = swift_getKeyPath();
  *v22 = result;
  v22[8] = 0;
  a1[v9[9]] = 5;
  v24 = &a1[v9[10]];
  *v24 = v30;
  *(v24 + 1) = v29;
  v25 = &a1[v9[11]];
  *v25 = v28;
  *(v25 + 1) = v5;
  *(v25 + 2) = 0;
  v26 = &a1[v9[12]];
  *v26 = v6;
  *(v26 + 1) = v8;
  *&a1[v9[14]] = v12;
  v27 = &a1[v9[15]];
  *v27 = v13;
  *(v27 + 1) = v15;
  a1[v9[16]] = 0;
  return result;
}

uint64_t sub_6B234@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TextLockup(0);
  v3 = (v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v37 - v7);
  type metadata accessor for HighlightFrame(0);
  v9 = sub_67558();
  v41 = v10;
  v42 = v9;
  v11 = sub_67E08();
  v39 = v12;
  v40 = v11;
  v38 = sub_68170();
  v14 = v13;
  v15 = v3[15];
  v16 = sub_2625C0();
  (*(*(v16 - 8) + 56))(v8 + v15, 1, 1, v16);
  v17 = sub_261E60();
  v18 = sub_263580();
  v20 = v19;
  v21 = v3[19];
  v22 = enum case for DynamicTypeSize.accessibility2(_:);
  v23 = sub_261690();
  (*(*(v23 - 8) + 104))(v8 + v21, v22, v23);
  *v8 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v24 = v3[7];
  *(v8 + v24) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v25 = v8 + v3[8];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = v8 + v3[9];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = v8 + v3[10];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *(v8 + v3[11]) = 5;
  v28 = (v8 + v3[12]);
  v29 = v41;
  *v28 = v42;
  v28[1] = v29;
  v30 = (v8 + v3[13]);
  v31 = v39;
  *v30 = v40;
  v30[1] = v31;
  v30[2] = 0;
  v32 = (v8 + v3[14]);
  *v32 = v38;
  v32[1] = v14;
  *(v8 + v3[16]) = v17;
  v33 = (v8 + v3[17]);
  *v33 = v18;
  v33[1] = v20;
  *(v8 + v3[18]) = 0;
  sub_69890(v8, v5, type metadata accessor for TextLockup);
  *a1 = 0;
  *(a1 + 8) = 1;
  v34 = sub_2EF0(&qword_319808, &unk_26D458);
  sub_69890(v5, a1 + *(v34 + 48), type metadata accessor for TextLockup);
  v35 = a1 + *(v34 + 64);
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_6C8D8(v8);
  return sub_6C8D8(v5);
}

uint64_t sub_6B558(uint64_t a1)
{
  __chkstk_darwin(v1);
  sub_69890(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HighlightFrame);
  sub_69594(&qword_319518, type metadata accessor for HighlightFrame, &protocol conformance descriptor for HighlightFrame);
  return sub_263310();
}

uint64_t sub_6B620(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

uint64_t sub_6B66C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2 + *(a1 + 40);
  v5 = *(type metadata accessor for HighlightFrameViewModel(0) + 28);
  v6 = sub_260550();
  a2[3] = v6;
  a2[4] = sub_69594(&qword_317678, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  a2[5] = sub_69594(&qword_317680, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  v7 = sub_10934(a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(v7, v4 + v5, v6);
}

uint64_t sub_6B768@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_69890(v2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HighlightFrame);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_6B914(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for HighlightFrame);
  KeyPath = swift_getKeyPath();
  v9 = (a2 + *(sub_2EF0(&qword_319528, &qword_26D0B8) + 36));
  v10 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v11 = enum case for ColorScheme.dark(_:);
  v12 = sub_261180();
  result = (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = KeyPath;
  *a2 = sub_6C940;
  a2[1] = v7;
  return result;
}

uint64_t sub_6B914(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_6B980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a8 < 2u)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (a8 - 4 >= 2)
  {
    if (a8 != 3)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_6:

  return result;
}

uint64_t sub_6BA08(uint64_t a1)
{
  result = sub_69594(&qword_319530, type metadata accessor for HighlightFrame, &protocol conformance descriptor for HighlightFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_6BA60(uint64_t a1)
{
  result = sub_69594(&qword_319518, type metadata accessor for HighlightFrame, &protocol conformance descriptor for HighlightFrame);
  *(a1 + 8) = result;
  return result;
}

void sub_6BAD4(uint64_t a1)
{
  sub_6BB48();
  if (v1 <= 0x3F)
  {
    sub_6BBB4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_6BB48()
{
  if (!qword_3195B8)
  {
    sub_6C360(0, &qword_3195C0, &type metadata for CoverViewModel, &type metadata accessor for Array);
    if (!v1)
    {
      atomic_store(v0, &qword_3195B8);
    }
  }
}

void sub_6BBB4(uint64_t a1)
{
  if (!qword_3195C8)
  {
    sub_2F9C(&qword_316D98, &unk_269120);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_3195C8);
    }
  }
}

uint64_t sub_6BC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 57);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for HighlightCoverStyle(0);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 24);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_260550();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 28);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_6BD78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 57) = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for HighlightCoverStyle(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_260550();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_6BE98(uint64_t a1)
{
  result = type metadata accessor for HighlightCoverStyle(319);
  if (v2 <= 0x3F)
  {
    result = sub_260550();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_6BF40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 57))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 56);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_6BF88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_6C008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for HighlightFrameViewModel(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_6C150(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_316F70, &unk_2693C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for HighlightFrameViewModel(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_6C284(uint64_t a1)
{
  sub_50224(319);
  if (v1 <= 0x3F)
  {
    sub_6C360(319, &qword_3167D0, &type metadata for Bool, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      type metadata accessor for HighlightFrameViewModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_6C360(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_6C3B4()
{
  result = qword_319738;
  if (!qword_319738)
  {
    sub_2F9C(&qword_319528, &qword_26D0B8);
    sub_8E38(&qword_319740, &qword_319748, &qword_26D2C8, &protocol conformance descriptor for GeometryReader<A>);
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319738);
  }

  return result;
}

uint64_t sub_6C498()
{
  v1 = type metadata accessor for HighlightFrame(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_261180();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_4054(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  sub_4054(*(v3 + v1[6]), *(v3 + v1[6] + 8));
  sub_4054(*(v3 + v1[7]), *(v3 + v1[7] + 8));

  v5 = v3 + v1[10];
  sub_6B980(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));
  v6 = type metadata accessor for HighlightFrameViewModel(0);
  v7 = v5 + *(v6 + 24);
  type metadata accessor for HighlightCoverStyle(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v8 = *(sub_2EF0(&qword_319520, &unk_26CFE8) + 48);
    v9 = sub_261180();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v7 + v8, 1, v9))
    {
      (*(v10 + 8))(v7 + v8, v9);
    }
  }

  else
  {
  }

  v11 = *(v6 + 28);
  v12 = sub_260550();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return swift_deallocObject();
}

double sub_6C730@<D0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for HighlightFrame(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  *&result = sub_69D6C(v5, a2).n128_u64[0];
  return result;
}

unint64_t sub_6C7C8()
{
  result = qword_3197D8;
  if (!qword_3197D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3197D8);
  }

  return result;
}

uint64_t sub_6C854(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for HighlightFrame(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_6C8D8(uint64_t a1)
{
  v2 = type metadata accessor for TextLockup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ShelfGridBreakpoint.init(from:for:dynamicTypeSize:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v30 = a3;
  v6 = sub_2EF0(&qword_319810, &unk_26D490);
  __chkstk_darwin(v6 - 8);
  v8 = v29 - v7;
  v9 = sub_2EF0(&qword_317280, &qword_2697E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v29 - v14;
  v16 = a1[1];
  v29[1] = a1[2];
  v29[2] = v16;
  v17 = a1[3];
  v18 = a1[5];
  sub_2603E0();
  v20 = v19;
  v31 = a2;
  sub_6DF9C(sub_6DF7C, v18, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_6E10C(v8);
    v21 = *(v17 + 16);
    if (v21)
    {

      v22 = v17;
      goto LABEL_5;
    }

LABEL_11:
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_264BC0(33);

    v32 = 0xD00000000000001FLL;
    v33 = 0x8000000000291330;
    v34._countAndFlagsBits = sub_264790();
    sub_264530(v34);

    result = sub_264CD0();
    __break(1u);
    return result;
  }

  sub_6E174(v8, v15);
  sub_6E174(v15, v12);
  v22 = *(v12 + 1);
  v23 = *(v9 + 48);
  v24 = sub_261690();
  (*(*(v24 - 8) + 8))(&v12[v23], v24);

  v21 = *(v22 + 16);
  if (!v21)
  {

    goto LABEL_11;
  }

LABEL_5:
  v25 = *(v22 + 32);
  v26 = (v22 + 40);
  do
  {
    if (*v26 <= v20)
    {
      v25 = *(v26 - 8);
    }

    v26 += 2;
    --v21;
  }

  while (v21);

  v27 = sub_261690();
  result = (*(*(v27 - 8) + 8))(a2, v27);
  *v30 = v25;
  return result;
}

uint64_t ShelfGridBreakpoint.resolveColumns(for:dynamicTypeSize:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_2EF0(&qword_319810, &unk_26D490);
  __chkstk_darwin(v5 - 8);
  v7 = &v24[-v6];
  v8 = sub_2EF0(&qword_317280, &qword_2697E0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v24[-v13];
  v15 = *(a1 + 16);
  v16 = *(a1 + 40);
  v17 = *v2;
  v25 = a2;
  sub_6DF9C(sub_6F1FC, v16, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_6E10C(v7);
    if (!*(v15 + 16))
    {
      return 1;
    }
  }

  else
  {
    sub_6E174(v7, v14);
    sub_6E174(v14, v11);
    v15 = *v11;
    v18 = *(v8 + 48);
    v19 = sub_261690();
    (*(*(v19 - 8) + 8))(&v11[v18], v19);

    if (!*(v15 + 16))
    {
LABEL_7:
      v22 = 1;
      goto LABEL_8;
    }
  }

  v20 = sub_D30C(v17);
  if ((v21 & 1) == 0)
  {
    goto LABEL_7;
  }

  v22 = *(*(v15 + 56) + 8 * v20);
LABEL_8:

  return v22;
}

uint64_t sub_6CF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_6E4F0();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

void *EnvironmentValues.shelfGridBreakpoint.getter()
{
  sub_6E1E4();

  return sub_261CB0();
}

uint64_t EnvironmentValues.shelfGridColumnCount.getter()
{
  sub_6E238();
  sub_261CB0();
  return v1;
}

uint64_t sub_6D024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_6EB20();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_6D088()
{
  sub_6E28C();
  sub_261CB0();
  return v1;
}

double EnvironmentValues.shelfGridGutter.getter()
{
  v1 = type metadata accessor for SizeConstants.Gutter(0);
  __chkstk_darwin(v1 - 8);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  v11 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6E28C();
  sub_261CB0();
  if (v26 != 1)
  {
    return v25;
  }

  v14 = *(v5 + 16);
  v14(v10, v0, v4);
  v14(v7, v10, v4);
  *v13 = EnvironmentValues.isCompact.getter() & 1;
  sub_6E2E0();
  sub_261CA0();
  v13[1] = v24;
  v15 = type metadata accessor for SizeConstants.Environment(0);
  sub_261A60();
  sub_2619D0();
  *&v13[*(v15 + 28)] = v16;
  sub_B7C8();
  sub_261CB0();
  v17 = *(v5 + 8);
  v17(v7, v4);
  v17(v10, v4);
  v18 = v22[6];
  v19 = &v13[*(v15 + 32)];
  v19[2] = v23;
  *v19 = v18;
  sub_6EC60(v13, v3, type metadata accessor for SizeConstants.Environment);
  v20 = *v3;
  sub_6E388(v3, type metadata accessor for SizeConstants.Gutter);
  result = 24.0;
  if (v20)
  {
    return 16.0;
  }

  return result;
}

uint64_t sub_6D39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  v40 = a1;
  v4 = sub_261690();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ShelfGridBreakpointViewModifier(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v13 = v12;
  sub_6EBF8(v2, v11);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  sub_6EC60(v11, v15 + v14, type metadata accessor for ShelfGridBreakpointViewModifier);
  sub_6EBF8(v2, v11);
  v16 = swift_allocObject();
  sub_6EC60(v11, v16 + v14, type metadata accessor for ShelfGridBreakpointViewModifier);
  v17 = sub_2EF0(&qword_319928, &qword_26D730);
  v18 = v39;
  (*(*(v17 - 8) + 16))(v39, v40, v17);
  v19 = (v18 + *(sub_2EF0(&qword_319930, &qword_26D738) + 36));
  *v19 = sub_6ECC8;
  v19[1] = v15;
  v19[2] = sub_6EEA0;
  v19[3] = v16;
  v19[4] = v38;
  v19[5] = v13;
  KeyPath = swift_getKeyPath();
  v21 = v2 + *(v8 + 28);
  v22 = *(v21 + 8);
  v23 = *(v21 + 16);
  v43 = *v21;
  v44 = v22;
  LOBYTE(v45) = v23;
  sub_2EF0(&qword_319938, &qword_26D768);
  sub_263320();
  v24 = v50;
  v25 = v18 + *(sub_2EF0(&qword_319940, &qword_26D770) + 36);
  *v25 = KeyPath;
  *(v25 + 8) = v24;
  v26 = swift_getKeyPath();
  v27 = *(v21 + 8);
  v28 = *(v21 + 16);
  v43 = *v21;
  v44 = v27;
  LOBYTE(v45) = v28;
  sub_263320();
  v49 = v50;
  v29 = (v3 + *(v8 + 32));
  v30 = v29[1];
  v31 = v29[2];
  v32 = v29[3];
  v33 = v29[4];
  v34 = v29[5];
  v43 = *v29;
  v44 = v30;
  v45 = v31;
  v46 = v32;
  v47 = v33;
  v48 = v34;

  sub_40CF0(v6);
  v35 = ShelfGridBreakpoint.resolveColumns(for:dynamicTypeSize:)(&v43, v6);
  (*(v41 + 8))(v6, v42);

  result = sub_2EF0(&qword_319948, &qword_26D7A0);
  v37 = (v18 + *(result + 36));
  *v37 = v26;
  v37[1] = v35;
  return result;
}

uint64_t sub_6D770@<X0>(_BYTE *a1@<X8>)
{
  v43 = a1;
  v2 = sub_2EF0(&qword_319810, &unk_26D490);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - v3;
  v41 = sub_2EF0(&qword_317280, &qword_2697E0);
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v40 = &v40 - v9;
  v42 = sub_261690();
  v10 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_261FB0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262190();
  sub_261440();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  (*(v14 + 8))(v16, v13);
  v48.origin.x = v18;
  v48.origin.y = v20;
  v48.size.width = v22;
  v48.size.height = v24;
  CGRectGetWidth(v48);
  v25 = *(type metadata accessor for ShelfGridBreakpointViewModifier(0) + 24);
  v26 = *(v1 + v25 + 24);
  v27 = *(v1 + v25 + 40);
  sub_40CF0(v12);
  sub_2603E0();
  v29 = v28;
  v44 = v12;
  sub_6DF9C(sub_6F1FC, v27, v4);
  v30 = v41;
  if ((*(v5 + 48))(v4, 1, v41) == 1)
  {
    v31 = v42;
    sub_6E10C(v4);
    v32 = *(v26 + 16);
    if (v32)
    {

      goto LABEL_5;
    }

LABEL_11:
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_264BC0(33);

    v45 = 0xD00000000000001FLL;
    v46 = 0x8000000000291330;
    v47._countAndFlagsBits = sub_264790();
    sub_264530(v47);

    result = sub_264CD0();
    __break(1u);
    return result;
  }

  v33 = v40;
  sub_6E174(v4, v40);
  sub_6E174(v33, v7);
  v26 = *(v7 + 1);
  v34 = &v7[*(v30 + 48)];
  v31 = v42;
  (*(v10 + 8))(v34, v42);

  v32 = *(v26 + 16);
  if (!v32)
  {

    goto LABEL_11;
  }

LABEL_5:
  v35 = *(v26 + 32);
  v36 = (v26 + 40);
  do
  {
    v37 = *(v36 - 8);
    v38 = *v36;
    v36 += 2;
    if (v38 <= v29)
    {
      v35 = v37;
    }

    --v32;
  }

  while (v32);

  result = (*(v10 + 8))(v12, v31);
  *v43 = v35;
  return result;
}

double sub_6DC20(char *a1, uint64_t a2)
{
  type metadata accessor for ShelfGridBreakpointViewModifier(0);

  sub_2EF0(&qword_319938, &qword_26D768);
  sub_263330();

  return result;
}

uint64_t View.shelfGridBreakpoint(_:gridType:maxContentWidth:gutter:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v38 = a5;
  v35 = a7;
  v36 = a8;
  v40 = a6;
  v34 = a4;
  v33 = a3;
  v41 = a9;
  v11 = type metadata accessor for ShelfGridBreakpointViewModifier(0);
  __chkstk_darwin(v11);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_261730();
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v32 = &v31 - v14;
  v15 = *a1;
  v16 = a1[1];
  v17 = *(a1 + 16);
  v18 = a2[1];
  v31 = *a2;
  v20 = a2[2];
  v19 = a2[3];
  v21 = a2[4];
  v22 = a2[5];
  *v13 = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  v23 = v13 + v11[5];
  *v23 = v15;
  *(v23 + 1) = v16;
  v23[16] = v17;
  v24 = (v13 + v11[6]);
  *v24 = v31;
  v24[1] = v18;
  v24[2] = v20;
  v24[3] = v19;
  v24[4] = v21;
  v24[5] = v22;
  v25 = v13 + v11[7];
  *v25 = v33;
  v25[8] = v34 & 1;

  v26 = v32;
  v27 = v36;
  sub_262E30();
  sub_6E388(v13, type metadata accessor for ShelfGridBreakpointViewModifier);
  swift_getKeyPath();
  v44 = v38;
  v45 = v40 & 1;
  v28 = sub_6E494();
  v42 = v27;
  v43 = v28;
  v29 = v37;
  swift_getWitnessTable();
  sub_262A90();

  return (*(v39 + 8))(v26, v29);
}

uint64_t sub_6DF9C@<X0>(uint64_t (*a1)(unint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  for (i = *(a2 + 16) - 1; i != -1; --i)
  {
    v7 = sub_2EF0(&qword_317280, &qword_2697E0);
    v8 = *(v7 - 8);
    v9 = v8;
    v10 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v8 + 72) * i;
    result = a1(v10);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      sub_6EF20(v10, a3);
      return (*(v9 + 56))(a3, 0, 1, v7);
    }
  }

  v12 = sub_2EF0(&qword_317280, &qword_2697E0);
  return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
}

uint64_t sub_6E10C(uint64_t a1)
{
  v2 = sub_2EF0(&qword_319810, &unk_26D490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6E174(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317280, &qword_2697E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_6E1E4()
{
  result = qword_319818;
  if (!qword_319818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319818);
  }

  return result;
}

unint64_t sub_6E238()
{
  result = qword_319820;
  if (!qword_319820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319820);
  }

  return result;
}

unint64_t sub_6E28C()
{
  result = qword_319828;
  if (!qword_319828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319828);
  }

  return result;
}

unint64_t sub_6E2E0()
{
  result = qword_319830;
  if (!qword_319830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319830);
  }

  return result;
}

uint64_t type metadata accessor for ShelfGridBreakpointViewModifier(uint64_t a1)
{
  result = qword_3198B8;
  if (!qword_3198B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6E388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_6E3E8@<X0>(uint64_t a1@<X8>)
{
  sub_6E28C();
  result = sub_261CB0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

unint64_t sub_6E494()
{
  result = qword_319838;
  if (!qword_319838)
  {
    type metadata accessor for ShelfGridBreakpointViewModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319838);
  }

  return result;
}

unint64_t sub_6E4F0()
{
  result = qword_319840;
  if (!qword_319840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319840);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShelfGridBreakpoint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShelfGridBreakpoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_6E694(uint64_t *a1)
{
  type metadata accessor for ShelfGridBreakpointViewModifier(255);
  sub_261730();
  sub_2F9C(&qword_319848, &unk_26D5A0);
  sub_261730();
  sub_6E494();
  swift_getWitnessTable();
  sub_8E38(&qword_319850, &qword_319848, &unk_26D5A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  return swift_getWitnessTable();
}

uint64_t sub_6E798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_319858, &unk_2725D0);
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

uint64_t sub_6E878(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_319858, &unk_2725D0);
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

void sub_6E940(uint64_t a1)
{
  sub_6EA2C(319);
  if (v1 <= 0x3F)
  {
    sub_6EA84(319, &qword_3198D0, &type metadata for ShelfGridBreakpoint, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_6EA84(319, &unk_3198D8, &type metadata for CGFloat, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_6EA2C(uint64_t a1)
{
  if (!qword_3198C8)
  {
    sub_261690();
    v1 = sub_2611E0();
    if (!v2)
    {
      atomic_store(v1, &qword_3198C8);
    }
  }
}

void sub_6EA84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_6EB20()
{
  result = qword_319910;
  if (!qword_319910)
  {
    sub_2F9C(&qword_319918, &qword_273BF0);
    sub_6EBA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319910);
  }

  return result;
}

unint64_t sub_6EBA4()
{
  result = qword_319920;
  if (!qword_319920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319920);
  }

  return result;
}

uint64_t sub_6EBF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfGridBreakpointViewModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6EC60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_6ED3C()
{
  v1 = *(type metadata accessor for ShelfGridBreakpointViewModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_261690();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_6EEA0(char *a1)
{
  v3 = *(type metadata accessor for ShelfGridBreakpointViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_6DC20(a1, v4);
}

uint64_t sub_6EF20(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317280, &qword_2697E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_6EF94()
{
  result = qword_319950;
  if (!qword_319950)
  {
    sub_2F9C(&qword_319948, &qword_26D7A0);
    sub_6F04C();
    sub_8E38(&qword_319990, &qword_319998, &qword_26D7B8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319950);
  }

  return result;
}

unint64_t sub_6F04C()
{
  result = qword_319958;
  if (!qword_319958)
  {
    sub_2F9C(&qword_319940, &qword_26D770);
    sub_6F104();
    sub_8E38(&qword_319980, &qword_319988, &qword_26D7B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319958);
  }

  return result;
}

unint64_t sub_6F104()
{
  result = qword_319960;
  if (!qword_319960)
  {
    sub_2F9C(&qword_319930, &qword_26D738);
    sub_8E38(&qword_319968, &qword_319928, &qword_26D730, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_8E38(&qword_319970, &qword_319978, &qword_26D7A8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319960);
  }

  return result;
}