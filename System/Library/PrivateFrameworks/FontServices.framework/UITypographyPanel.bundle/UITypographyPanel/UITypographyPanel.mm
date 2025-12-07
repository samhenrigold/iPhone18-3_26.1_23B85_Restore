uint64_t sub_1660(uint64_t *a1)
{
  sub_684C(&qword_709A8, type metadata accessor for GlyphVariantsViewModel, &unk_5C670);

  return sub_58C50();
}

uint64_t sub_1700(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1750()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = type metadata accessor for GlyphVariantsViewModel(0);
  v4 = sub_684C(&qword_709A8, type metadata accessor for GlyphVariantsViewModel, &unk_5C670);

  return ObservedObject.projectedValue.getter(v1, v2, v3, v4);
}

uint64_t sub_17E0()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1828(int a1)
{
  sub_187C(&qword_709B0, &qword_5AB10);
  sub_59620();
  return v2;
}

uint64_t sub_187C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 sub_18D4@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_58EC0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v20[-v9];
  v11 = *(v2 + 24);
  v12 = *(v2 + 32);
  v13 = *(v2 + 40);
  v14 = swift_allocObject();
  v15 = *(v2 + 16);
  v14[1] = *v2;
  v14[2] = v15;
  v16 = *(v2 + 48);
  v14[3] = *(v2 + 32);
  v14[4] = v16;

  sub_1E48(v2, v20);
  sub_187C(&qword_709B8, &qword_5AB18);
  sub_1E80();
  sub_3CC80(1, v11, v12, v13, 0, 8, sub_1E40, v14, v21);
  sub_58EB0();
  (*(v5 + 16))(v8, v10, v4);
  sub_684C(&qword_70A30, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  v17 = sub_58C10();
  (*(v5 + 8))(v10, v4);
  v18 = v21[3];
  *(a1 + 32) = v21[2];
  *(a1 + 48) = v18;
  *(a1 + 64) = v21[4];
  result = v21[1];
  *a1 = v21[0];
  *(a1 + 16) = result;
  *(a1 + 80) = v17;
  return result;
}

uint64_t sub_1B04()
{
  v0 = sub_187C(&qword_70CD0, &qword_5AEC0);
  __chkstk_darwin(v0);
  v2 = &v22 - v1;
  v3 = sub_187C(&qword_709D0, &qword_5AB20);
  __chkstk_darwin(v3);
  v5 = &v22 - v4;
  v6 = *(sub_18E6C() + 16);

  if (v6)
  {
    sub_21F8(v5);
    sub_6610(v5, v2, &qword_709D0, &qword_5AB20);
    swift_storeEnumTagMultiPayload();
    sub_187C(&qword_70A10, &qword_5AB40);
    sub_2094(&qword_709C8, &qword_709D0, &qword_5AB20, sub_1FAC);
    sub_2094(&qword_70A08, &qword_70A10, &qword_5AB40, sub_2118);
    sub_59100();
    return sub_6678(v5, &qword_709D0, &qword_5AB20);
  }

  else
  {
    v26._object = 0x80000000000666D0;
    v26._countAndFlagsBits = 0xD000000000000021;
    v23 = sub_2B8E0(v26, 0xD000000000000034, 0x8000000000066700);
    v24 = v8;
    sub_66D8(v23, v8, v9);
    v10 = sub_59310();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    nullsub_1();
    v17 = sub_59210();
    sub_2BA00();
    sub_58B90();
    LOBYTE(v23) = v14 & 1;
    v25 = 0;
    *v2 = v10;
    *(v2 + 1) = v12;
    v2[16] = v14 & 1;
    *(v2 + 3) = v16;
    v2[32] = v17;
    *(v2 + 5) = v18;
    *(v2 + 6) = v19;
    *(v2 + 7) = v20;
    *(v2 + 8) = v21;
    v2[72] = 0;
    swift_storeEnumTagMultiPayload();
    sub_187C(&qword_70A10, &qword_5AB40);
    sub_2094(&qword_709C8, &qword_709D0, &qword_5AB20, sub_1FAC);
    sub_2094(&qword_70A08, &qword_70A10, &qword_5AB40, sub_2118);
    return sub_59100();
  }
}

unint64_t sub_1E80()
{
  result = qword_709C0;
  if (!qword_709C0)
  {
    sub_1F64(&qword_709B8, &qword_5AB18);
    sub_2094(&qword_709C8, &qword_709D0, &qword_5AB20, sub_1FAC);
    sub_2094(&qword_70A08, &qword_70A10, &qword_5AB40, sub_2118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_709C0);
  }

  return result;
}

uint64_t sub_1F64(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1FDC()
{
  result = qword_709E8;
  if (!qword_709E8)
  {
    sub_1F64(&qword_709F0, &qword_5AB30);
    sub_6ED0(&qword_709F8, &qword_70A00, &qword_5AB38, &protocol conformance descriptor for LazyVGrid<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_709E8);
  }

  return result;
}

uint64_t sub_2094(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1F64(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2118()
{
  result = qword_70A18;
  if (!qword_70A18)
  {
    v1 = sub_1F64(&qword_70A20, &unk_5AB48);
    sub_21A4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70A18);
  }

  return result;
}

unint64_t sub_21A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_70A28;
  if (!qword_70A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70A28);
  }

  return result;
}

uint64_t sub_21F8@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_59160();
  __chkstk_darwin(v1);
  v37[2] = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_59760();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_59770();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = *sub_2BE28();
  (*(v4 + 104))(v6, enum case for GridItem.Size.fixed(_:), v3);
  sub_59780();
  v11 = sub_59A40();
  *(v11 + 16) = 9;
  v12 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13 = *(v8 + 16);
  v13(v12, v10, v7);
  v14 = *(v8 + 72);
  v13(v12 + v14, v10, v7);
  v13(v12 + 2 * v14, v10, v7);
  v13(v12 + 3 * v14, v10, v7);
  v13(v12 + 4 * v14, v10, v7);
  v13(v12 + 5 * v14, v10, v7);
  v13(v12 + 6 * v14, v10, v7);
  v13(v12 + 7 * v14, v10, v7);
  (*(v8 + 32))(v12 + 8 * v14, v10, v7);
  v39 = v37[1];
  sub_58FD0();
  v40 = 0;
  sub_684C(&qword_70CE0, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  sub_59F70();
  sub_187C(&qword_70CE8, &qword_5AEC8);
  sub_6894();
  v15 = v38;
  sub_59830();
  v16 = sub_59210();
  sub_2B9C0();
  sub_58B90();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v15 + *(sub_187C(&qword_709E0, &qword_5AB28) + 36);
  *v25 = v16;
  *(v25 + 8) = v18;
  *(v25 + 16) = v20;
  *(v25 + 24) = v22;
  *(v25 + 32) = v24;
  *(v25 + 40) = 0;
  sub_2BA14();
  v26 = sub_59200();
  sub_58B90();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  result = sub_187C(&qword_709D0, &qword_5AB20);
  v36 = v15 + *(result + 36);
  *v36 = v26;
  *(v36 + 8) = v28;
  *(v36 + 16) = v30;
  *(v36 + 24) = v32;
  *(v36 + 32) = v34;
  *(v36 + 40) = 0;
  return result;
}

void *sub_2684@<X0>(char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  type metadata accessor for GlyphVariantsViewModel(0);
  sub_684C(&qword_709A8, type metadata accessor for GlyphVariantsViewModel, &unk_5C670);
  v11 = sub_58C50();
  v13 = v12;
  sub_187C(&qword_709B0, &qword_5AB10);
  result = sub_59620();
  *a6 = v11;
  *(a6 + 8) = v13;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  *(a6 + 48) = v15;
  *(a6 + 50) = v16;
  *(a6 + 56) = v17;
  return result;
}

uint64_t sub_27C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v88 = a1;
  v3 = sub_591A0();
  v89 = *(v3 - 8);
  v90 = v3;
  __chkstk_darwin(v3);
  v87 = (v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_187C(&qword_70CA0, &qword_5AE78);
  v81 = *(v5 - 8);
  v82 = v5;
  __chkstk_darwin(v5);
  v80 = v77 - v6;
  v84 = sub_187C(&qword_70A48, &qword_5AB68);
  __chkstk_darwin(v84);
  v83 = v77 - v7;
  v8 = sub_187C(&qword_70A38, &qword_5AB58);
  v85 = *(v8 - 8);
  v86 = v8;
  __chkstk_darwin(v8);
  v91 = v77 - v9;
  v92 = v1;
  v10 = *v1;
  v11 = *(v1 + 16);
  v12 = *(v11 + 16);
  if (v12)
  {
    *&v99 = _swiftEmptyArrayStorage;
    v13 = v10;
    sub_5BA4(0, v12, 0);
    v14 = v99;
    v15 = (v11 + 32);
    v16 = *(v99 + 16);
    do
    {
      v18 = *v15++;
      v17 = v18;
      *&v99 = v14;
      v19 = v14[3];
      if (v16 >= v19 >> 1)
      {
        sub_5BA4((v19 > 1), v16 + 1, 1);
        v14 = v99;
      }

      v14[2] = v16 + 1;
      *(v14 + v16++ + 16) = v17;
      --v12;
    }

    while (v12);
    v2 = v92;
  }

  else
  {
    v20 = v10;
    v14 = _swiftEmptyArrayStorage;
  }

  v21 = sub_2BE28();
  v79 = sub_2BA14();
  sub_2AA58(v14);
  v23 = v22;

  v25 = *(v2 + 3);
  v26 = *(v25 + 16);
  if (v26)
  {
    v77[0] = v21;
    v77[1] = v10;
    v27 = sub_52E4(v26, 0);
    v78 = sub_60FC(&v99, v27 + 16, v26, v25);
    v28 = v99;

    sub_61FC(v28);
    if (v78 != v26)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    *&v99 = v27;
    sub_51AC(&v99);
    v2 = v92;
  }

  v29 = fmin(v23, 1.0);
  sub_4964C(v24);
  nullsub_1();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = sub_59200();
  sub_58B90();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v106 = 0;
  sub_597D0();
  sub_58BF0();
  *(v107 + 7) = *(&v107[3] + 8);
  *(&v107[1] + 7) = *(&v107[4] + 8);
  *(&v107[2] + 7) = *(&v107[5] + 8);
  v47 = sub_59170();
  v99 = v2[2];
  sub_187C(&qword_70C88, &unk_5AE60);
  sub_59630();
  if ((v97[0] & 1) != 0 || (v99 = v92[3], sub_59630(), LOBYTE(v97[0]) == 1))
  {
    v48 = sub_2A0AC();
  }

  else
  {
    if (*sub_3A234() != 1)
    {
      v49 = sub_59530();
      goto LABEL_15;
    }

    v48 = sub_2A188();
  }

  v49 = *v48;

LABEL_15:
  v50 = v92;
  v51 = sub_59200();
  *&v99 = v31;
  WORD4(v99) = v33;
  *&v100 = v35;
  *(&v100 + 1) = v37;
  LOBYTE(v101) = v38;
  *(&v101 + 1) = v40;
  *&v102 = v42;
  *(&v102 + 1) = v44;
  *&v103[0] = v46;
  BYTE8(v103[0]) = 0;
  *(v103 + 9) = v107[0];
  *(&v103[1] + 9) = v107[1];
  *(&v103[2] + 9) = v107[2];
  *(&v103[3] + 1) = *(&v107[2] + 15);
  LODWORD(v104) = v47;
  *(&v104 + 1) = v49;
  v105 = v51;
  v52 = *sub_3A234();
  v53 = sub_187C(&qword_70A58, &qword_5AB70);
  v54 = sub_34B8();
  if (v52)
  {
    v55 = 2;
  }

  else
  {
    v55 = 3;
  }

  v56 = v80;
  sub_29CA0(v55, v53, v54);
  v97[7] = v103[3];
  v97[8] = v104;
  v97[3] = v102;
  v97[4] = v103[0];
  v98 = v105;
  v97[5] = v103[1];
  v97[6] = v103[2];
  v97[0] = v99;
  v97[1] = v100;
  v97[2] = v101;
  sub_6678(v97, &qword_70A58, &qword_5AB70);
  v57 = swift_allocObject();
  v58 = v50[1];
  *(v57 + 1) = *v50;
  *(v57 + 2) = v58;
  v59 = v50[3];
  *(v57 + 3) = v50[2];
  *(v57 + 4) = v59;
  v60 = v83;
  (*(v81 + 32))(v83, v56, v82);
  v61 = v84;
  v62 = (v60 + *(v84 + 36));
  *v62 = sub_620C;
  v62[1] = v57;
  v63 = swift_allocObject();
  v64 = v50[1];
  v63[1] = *v50;
  v63[2] = v64;
  v65 = v50[3];
  v63[3] = v50[2];
  v63[4] = v65;
  sub_62B8(v50, &v94);
  sub_62B8(v50, &v94);
  v66 = sub_33F0();
  sub_593D0();

  sub_62F0(v60);
  v93 = v50[3];
  sub_187C(&qword_70C88, &unk_5AE60);
  sub_59650();
  v83 = v95;
  LODWORD(v92) = v96;
  v67 = swift_allocObject();
  v68 = v50[1];
  *(v67 + 16) = *v50;
  *(v67 + 32) = v68;
  v69 = v50[3];
  *(v67 + 48) = v50[2];
  *(v67 + 64) = v69;
  *(v67 + 80) = v29;
  sub_62B8(v50, &v94);
  v70 = sub_59660();
  v71 = v87;
  *v87 = v70;
  v73 = v89;
  v72 = v90;
  (*(v89 + 104))(v71, enum case for PopoverAttachmentAnchor.rect(_:), v90);
  sub_59220();
  sub_187C(&qword_70A40, &qword_5AB60);
  v94 = v61;
  v95 = v66;
  swift_getOpaqueTypeConformance2();
  sub_38A0();
  v74 = v86;
  v75 = v91;
  sub_59380();

  (*(v73 + 8))(v71, v72);
  return (*(v85 + 8))(v75, v74);
}

uint64_t sub_3054@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_589A0();
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 8);
  LOWORD(a1) = *a1;
  v12 = *a2;
  sub_1DEC4();
  sub_1C43C(v10, v12, v11, a1, a3);
  LOBYTE(v10) = sub_3220(a1, *(a2 + 24));
  v27 = *(a2 + 48);
  sub_187C(&qword_70C88, &unk_5AE60);
  sub_59650();
  v13 = v24;
  v14 = v25;
  v15 = v26;
  v16 = type metadata accessor for PopoverGlyphVariantView(0);
  *(a3 + v16[5]) = a1;
  *(a3 + v16[6]) = v10 & 1;
  *(a3 + v16[7]) = a4;
  v17 = a3 + v16[8];
  *v17 = v13;
  *(v17 + 8) = v14;
  *(v17 + 16) = v15;
  v18 = a3 + v16[9];
  LOBYTE(v27) = 0;
  sub_59620();
  v19 = v25;
  *v18 = v24;
  *(v18 + 8) = v19;
  v20 = (a3 + v16[10]);
  type metadata accessor for TypographyPanelViewModel(0);
  sub_684C(&unk_70BA0, type metadata accessor for TypographyPanelViewModel, &unk_5CEF0);
  result = sub_58D50();
  *v20 = result;
  v20[1] = v22;
  return result;
}

BOOL sub_3220(unsigned __int16 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = sub_59EB0();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 2 * v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

unint64_t sub_33F0()
{
  result = qword_70A50;
  if (!qword_70A50)
  {
    sub_1F64(&qword_70A48, &qword_5AB68);
    sub_1F64(&qword_70A58, &qword_5AB70);
    sub_34B8();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_384C(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70A50);
  }

  return result;
}

unint64_t sub_34B8()
{
  result = qword_70A60;
  if (!qword_70A60)
  {
    sub_1F64(&qword_70A58, &qword_5AB70);
    sub_3570();
    sub_6ED0(&qword_70AD0, &qword_70AD8, &qword_5ABA8, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70A60);
  }

  return result;
}

unint64_t sub_3570()
{
  result = qword_70A68;
  if (!qword_70A68)
  {
    sub_1F64(&qword_70A70, &qword_5AB78);
    sub_3628();
    sub_6ED0(&qword_70AC0, &qword_70AC8, &qword_5ABA0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70A68);
  }

  return result;
}

unint64_t sub_3628()
{
  result = qword_70A78;
  if (!qword_70A78)
  {
    sub_1F64(&qword_70A80, &qword_5AB80);
    sub_36E0();
    sub_6ED0(&qword_70AB0, &qword_70AB8, &qword_5AB98, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70A78);
  }

  return result;
}

unint64_t sub_36E0()
{
  result = qword_70A88;
  if (!qword_70A88)
  {
    sub_1F64(&qword_70A90, &qword_5AB88);
    sub_376C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70A88);
  }

  return result;
}

unint64_t sub_376C()
{
  result = qword_70A98;
  if (!qword_70A98)
  {
    v1 = sub_1F64(&qword_70AA0, &qword_5AB90);
    sub_37F8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70A98);
  }

  return result;
}

unint64_t sub_37F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_70AA8;
  if (!qword_70AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70AA8);
  }

  return result;
}

unint64_t sub_384C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_70AE0;
  if (!qword_70AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70AE0);
  }

  return result;
}

unint64_t sub_38A0()
{
  result = qword_70AE8;
  if (!qword_70AE8)
  {
    sub_1F64(&qword_70A40, &qword_5AB60);
    sub_6ED0(&qword_70AF0, &qword_70AF8, qword_5ABB0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70AE8);
  }

  return result;
}

__n128 sub_3974(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_3988(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_39D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_3A34()
{
  result = qword_70B00;
  if (!qword_70B00)
  {
    sub_1F64(&qword_70B08, &qword_5AC78);
    sub_6ED0(&qword_70B10, &qword_70B18, &qword_5AC80, &unk_5E0E8);
    sub_6ED0(&qword_70B20, &qword_70B28, &qword_5AC88, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70B00);
  }

  return result;
}

uint64_t sub_3B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FontGlyphVariant(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_3C00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FontGlyphVariant(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for PopoverGlyphVariantView(uint64_t a1)
{
  result = qword_722E0;
  if (!qword_722E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3D08(uint64_t a1)
{
  type metadata accessor for FontGlyphVariant(319);
  if (v1 <= 0x3F)
  {
    sub_6D04(319, &qword_70B88, &type metadata for Bool, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_6D04(319, &qword_70B90, &type metadata for Bool, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_3E18(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_3E18(uint64_t a1)
{
  if (!qword_70B98)
  {
    type metadata accessor for TypographyPanelViewModel(255);
    sub_684C(&unk_70BA0, type metadata accessor for TypographyPanelViewModel, &unk_5CEF0);
    v1 = sub_58D60();
    if (!v2)
    {
      atomic_store(v1, &qword_70B98);
    }
  }
}

uint64_t sub_3EAC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_3EF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_3FEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v19 = sub_59130();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PopoverGlyphVariantView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_187C(&qword_70BE8, &qword_5ADA8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  sub_47B8(v2, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_4820(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v21 = v2;
  sub_187C(&qword_70BF0, &qword_5ADB0);
  sub_4C1C();
  sub_59670();
  sub_59120();
  sub_6ED0(&qword_70C60, &qword_70BE8, &qword_5ADA8, &protocol conformance descriptor for Button<A>);
  sub_684C(&qword_70C68, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v16 = v19;
  v15 = v20;
  sub_59350();
  (*(v3 + 8))(v5, v16);
  (*(v10 + 8))(v12, v9);
  v17 = (v15 + *(sub_187C(&qword_70C70, &qword_5ADE8) + 36));
  sub_187C(&qword_70C78, &qword_5ADF0);
  sub_58D10();
  result = swift_getKeyPath();
  *v17 = result;
  return result;
}

uint64_t sub_4348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for PopoverGlyphVariantView(0);
  v49 = *(v3 - 8);
  __chkstk_darwin(v3);
  v51 = v4;
  v52 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = sub_187C(&qword_70C80, &qword_5AE28);
  v5 = *(v50 - 8);
  __chkstk_darwin(v50);
  v7 = &v44[-v6];
  v8 = *(a1 + *(type metadata accessor for FontGlyphVariant(0) + 20));
  sub_4964C(v8);
  nullsub_1();
  v48 = v9;
  v47 = v10;
  v12 = v11;
  v46 = v13;
  sub_2BA14();
  v45 = sub_59200();
  sub_58B90();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  LOBYTE(v56) = 0;
  sub_2BE28();
  sub_597D0();
  sub_58BF0();
  *(v63 + 7) = *(&v63[3] + 8);
  *(&v63[1] + 7) = *(&v63[4] + 8);
  *(&v63[2] + 7) = *(&v63[5] + 8);
  v22 = *(a1 + *(v3 + 24));
  if (v22 == 1)
  {
    v23 = sub_2A024();
  }

  else
  {
    v23 = sub_29EDC();
  }

  v24 = *v23;

  KeyPath = swift_getKeyPath();
  if (v22)
  {
    v26 = sub_59520();
  }

  else
  {
    v26 = *sub_29F90();
  }

  v27 = sub_59200();
  v28 = (a1 + *(v3 + 36));
  v29 = *v28;
  v30 = *(v28 + 1);
  LOBYTE(v56) = v29;
  *(&v56 + 1) = v30;
  sub_187C(&qword_70C88, &unk_5AE60);
  sub_59630();
  if (LOBYTE(v54[0]) == 1)
  {
    v31 = *sub_2A0AC();
  }

  else
  {
    v31 = sub_59530();
  }

  v32 = sub_59200();
  *&v56 = v48;
  WORD4(v56) = v47;
  *&v57 = v12;
  *(&v57 + 1) = v46;
  LOBYTE(v58) = v45;
  *(&v58 + 1) = v15;
  *&v59 = v17;
  *(&v59 + 1) = v19;
  *&v60[0] = v21;
  BYTE8(v60[0]) = 0;
  *(v60 + 9) = v63[0];
  *(&v60[1] + 9) = v63[1];
  *(&v60[2] + 9) = v63[2];
  *(&v60[3] + 1) = *(&v63[2] + 15);
  *&v61 = KeyPath;
  *(&v61 + 1) = v24;
  *&v62[0] = v26;
  BYTE8(v62[0]) = v27;
  *&v62[1] = v31;
  WORD4(v62[1]) = v32;
  v33 = *sub_3A234();
  v34 = sub_187C(&qword_70C00, &qword_5ADB8);
  v35 = sub_4CE4();
  if (v33)
  {
    v36 = 1;
  }

  else
  {
    v36 = 2;
  }

  sub_29CA0(v36, v34, v35);
  v54[8] = v61;
  v55[0] = v62[0];
  *(v55 + 10) = *(v62 + 10);
  v54[4] = v60[0];
  v54[5] = v60[1];
  v54[6] = v60[2];
  v54[7] = v60[3];
  v54[0] = v56;
  v54[1] = v57;
  v54[2] = v58;
  v54[3] = v59;
  sub_6678(v54, &qword_70C00, &qword_5ADB8);
  v37 = a1;
  v38 = v52;
  sub_47B8(v37, v52);
  v39 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v40 = swift_allocObject();
  sub_4820(v38, v40 + v39);
  v41 = v53;
  (*(v5 + 32))(v53, v7, v50);
  result = sub_187C(&qword_70BF0, &qword_5ADB0);
  v43 = (v41 + *(result + 36));
  *v43 = sub_6054;
  v43[1] = v40;
  return result;
}

uint64_t sub_47B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverGlyphVariantView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverGlyphVariantView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4884()
{
  v1 = type metadata accessor for PopoverGlyphVariantView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = type metadata accessor for FontGlyphVariant(0);
  v4 = *(v2 + *(v3 + 20));
  v5 = sub_2A934(*(v2 + *(v3 + 24)));
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = v6;
  v8 = *(v2 + *(v1 + 20));
  v30 = v5;
  v9 = sub_598B0();
  v10 = CTGlyphInfoCreateWithGlyph(v8, v4, v9);

  if (!v10)
  {

LABEL_20:
    sub_187C(&qword_70C90, &qword_5DDD0);
    return sub_596F0();
  }

  v11 = *(v2 + *(v1 + 40));
  if (v11)
  {
    v12 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_rangeDescriptorsLookupTable;
    swift_beginAccess();
    v13 = *(v11 + v12);

    v14 = sub_52384();
    if (*(v13 + 16))
    {
      v16 = sub_500C(v14, v15);
      v18 = v17;

      if (v18)
      {
        v19 = *(*(v13 + 56) + 8 * v16);

        v20 = *(v19 + 16);
        if (v20)
        {
          v29 = v11;
          sub_5BC4(0, v20, 0);
          v21 = _swiftEmptyArrayStorage[2];
          v22 = 40;
          do
          {
            v23 = *(v19 + v22);
            v24 = _swiftEmptyArrayStorage[3];
            if (v21 >= v24 >> 1)
            {
              v28 = *(v19 + v22);
              sub_5BC4((v24 > 1), v21 + 1, 1);
              v23 = v28;
            }

            _swiftEmptyArrayStorage[2] = v21 + 1;
            *&_swiftEmptyArrayStorage[2 * v21 + 4] = v23;
            v22 += 32;
            ++v21;
            --v20;
          }

          while (v20);

          v11 = v29;
        }

        else
        {
        }

        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v25 = *(v11 + 24);
          ObjectType = swift_getObjectType();
          (*(v25 + 16))(v10, v30, v7, _swiftEmptyArrayStorage, nullsub_1, 0, ObjectType, v25);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }

    goto LABEL_20;
  }

  type metadata accessor for TypographyPanelViewModel(0);
  sub_684C(&unk_70BA0, type metadata accessor for TypographyPanelViewModel, &unk_5CEF0);
  result = sub_58D40();
  __break(1u);
  return result;
}

unint64_t sub_4C1C()
{
  result = qword_70BF8;
  if (!qword_70BF8)
  {
    sub_1F64(&qword_70BF0, &qword_5ADB0);
    sub_1F64(&qword_70C00, &qword_5ADB8);
    sub_4CE4();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_384C(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70BF8);
  }

  return result;
}

unint64_t sub_4CE4()
{
  result = qword_70C08;
  if (!qword_70C08)
  {
    sub_1F64(&qword_70C00, &qword_5ADB8);
    sub_4D9C();
    sub_6ED0(&qword_70AD0, &qword_70AD8, &qword_5ABA8, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70C08);
  }

  return result;
}

unint64_t sub_4D9C()
{
  result = qword_70C10;
  if (!qword_70C10)
  {
    sub_1F64(&qword_70C18, &qword_5ADC0);
    sub_4E54();
    sub_6ED0(&qword_70C50, &qword_70C58, &qword_5ADE0, &protocol conformance descriptor for _OverlayStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70C10);
  }

  return result;
}

unint64_t sub_4E54()
{
  result = qword_70C20;
  if (!qword_70C20)
  {
    sub_1F64(&qword_70C28, &qword_5ADC8);
    sub_4F0C();
    sub_6ED0(&qword_70AC0, &qword_70AC8, &qword_5ABA0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70C20);
  }

  return result;
}

unint64_t sub_4F0C()
{
  result = qword_70C30;
  if (!qword_70C30)
  {
    sub_1F64(&qword_70C38, &qword_5ADD0);
    sub_36E0();
    sub_6ED0(&qword_70C40, &qword_70C48, &qword_5ADD8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70C30);
  }

  return result;
}

unint64_t sub_4FC4(uint64_t a1)
{
  v1 = a1;
  v2 = sub_59EB0();

  return sub_5084(v1, v2);
}

unint64_t sub_500C(uint64_t a1, uint64_t a2)
{
  sub_59ED0();
  sub_59920();
  v4 = sub_59F10();

  return sub_50F4(a1, a2, v4);
}

unint64_t sub_5084(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_50F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_59E80())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

Swift::Int sub_51AC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_65FC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_59E50(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[2 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          *(v13 + 1) = v14;
          *v13 = v11;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_59A40();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_5360(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void *sub_52E4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_187C(&qword_70CC0, &unk_5AEB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

uint64_t sub_5360(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_5A8C(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_58B0((*a3 + 2 * *v77), (*a3 + 2 * *v79), (*a3 + 2 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 2 * v7);
      v11 = *(*a3 + 2 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 2 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 2 * v17);
            *(v20 + 2 * v17) = *(v20 + 2 * v16);
            *(v20 + 2 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_5AA0(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_5AA0((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        sub_58B0((*a3 + 2 * *v70), (*a3 + 2 * *v72), (*a3 + 2 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 2 * v7 - 2;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 2 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= v27)
    {
LABEL_29:
      ++v7;
      v22 += 2;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    v26[1] = v27;
    *v26-- = v24;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_58B0(char *__dst, char *__src, char *a3, unsigned __int16 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 2;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 2;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[2 * v9] <= a4)
    {
      memmove(a4, __dst, 2 * v9);
    }

    v12 = &v4[v9];
    if (v8 < 2)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v13 = *v6;
      if (v13 < *v4)
      {
        break;
      }

      LOWORD(v13) = *v4;
      v14 = v7 == v4++;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 2;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v14 = v7 == v6++;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    *v7 = v13;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[2 * v11] <= a4)
  {
    memmove(a4, __src, 2 * v11);
  }

  v12 = &v4[v11];
  if (v10 >= 2 && v6 > v7)
  {
LABEL_20:
    v15 = v6 - 1;
    v5 -= 2;
    v16 = v12;
    do
    {
      v17 = (v5 + 2);
      v19 = *(v16 - 2);
      v16 -= 2;
      v18 = v19;
      v20 = *v15;
      if (v19 < v20)
      {
        if (v17 != v6)
        {
          *v5 = v20;
        }

        if (v12 <= v4 || (--v6, v15 <= v7))
        {
          v6 = v15;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v17 != v12)
      {
        *v5 = v18;
      }

      v5 -= 2;
      v12 = v16;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v21 = v12 - v4 + ((v12 - v4) >> 63);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFFELL)))
  {
    memmove(v6, v4, 2 * (v21 >> 1));
  }

  return 1;
}

char *sub_5AA0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_187C(&qword_70CC8, &qword_5C720);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_5BA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_5BE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_5BC4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_5CE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_5BE4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_187C(&qword_70CC0, &unk_5AEB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_5CE0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_187C(&qword_70C98, &qword_5AE70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_5E08(uint64_t a1)
{
  v2 = sub_58D20();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_58DE0();
}

uint64_t sub_5ED0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_58D70();
  *a1 = result;
  return result;
}

uint64_t sub_5F28()
{
  v1 = *(type metadata accessor for PopoverGlyphVariantView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_589A0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_6054(char a1)
{
  type metadata accessor for PopoverGlyphVariantView(0);
  sub_187C(&qword_70C88, &unk_5AE60);
  return sub_59640();
}

void *sub_60FC(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 7) | (2 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_62F0(uint64_t a1)
{
  v2 = sub_187C(&qword_70A48, &qword_5AB68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6360@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v4 = *sub_2BE50();
  *a1 = sub_58F20();
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  sub_187C(&qword_70CA8, &unk_5AE80);
  v20 = *(v1 + 32);
  v21 = v20;
  swift_getKeyPath();
  v5 = swift_allocObject();
  v6 = *(v1 + 32);
  *(v5 + 16) = *(v1 + 16);
  *(v5 + 32) = v6;
  v7 = *(v1 + 64);
  *(v5 + 48) = *(v1 + 48);
  *(v5 + 64) = v7;
  *(v5 + 80) = v3;
  sub_6610(&v21, v19, &qword_70CB0, &qword_5C540);
  sub_62B8(v1 + 16, v19);
  sub_187C(&qword_70CB0, &qword_5C540);
  type metadata accessor for PopoverGlyphVariantView(0);
  sub_6ED0(&qword_70CB8, &qword_70CB0, &qword_5C540, &protocol conformance descriptor for [A]);
  sub_65A4();
  sub_59720();
  sub_2BA00();
  v8 = sub_59200();
  sub_58B90();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = sub_187C(&qword_70A40, &qword_5AB60);
  v18 = a1 + *(result + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_6534(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

unint64_t sub_65A4()
{
  result = qword_72408;
  if (!qword_72408)
  {
    type metadata accessor for PopoverGlyphVariantView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72408);
  }

  return result;
}

uint64_t sub_6610(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_187C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_6678(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_187C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_66D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_70CD8;
  if (!qword_70CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70CD8);
  }

  return result;
}

uint64_t sub_672C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v12 = sub_18E6C();
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = v2[3];
  v6 = *v2;
  v5 = v2[1];
  v3[3] = v2[2];
  v3[4] = v4;
  v3[1] = v6;
  v3[2] = v5;
  sub_1E48(v2, v11);
  sub_187C(&qword_70CB0, &qword_5C540);
  v7 = sub_6ED0(&qword_70CB8, &qword_70CB0, &qword_5C540, &protocol conformance descriptor for [A]);
  sub_6918(v7, v8, v9);
  return sub_59720();
}

uint64_t sub_684C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_6894()
{
  result = qword_70CF0;
  if (!qword_70CF0)
  {
    v1 = sub_1F64(&qword_70CE8, &qword_5AEC8);
    sub_6918(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70CF0);
  }

  return result;
}

unint64_t sub_6918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_72410;
  if (!qword_72410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72410);
  }

  return result;
}

uint64_t sub_696C()
{

  return _swift_deallocObject(v0, 80, 7);
}

void *sub_69BC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_187A0();
  v5 = sub_19030();
  if (*(v5 + 16) && (v6 = sub_4FC4(v3), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = sub_19260();
  if (*(v9 + 16) && (v10 = sub_4FC4(v3), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {

    sub_187C(&qword_70CC0, &unk_5AEB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_5AB00;
    *(inited + 32) = v3;
    v12 = sub_6B34(inited);
    swift_setDeallocating();
  }

  sub_59620();
  result = sub_59620();
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v8;
  *(a2 + 24) = v12;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v15;
  *(a2 + 56) = v16;
  return result;
}

uint64_t sub_6B34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_187C(&qword_70CF8, &qword_5AED0);
    v3 = sub_59C40();
    v4 = 0;
    v5 = v3 + 56;
    v6 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = *(a1 + 32 + 2 * v4);
      result = sub_59EB0();
      v12 = result & v6;
      v13 = (result & v6) >> 6;
      v14 = *(v5 + 8 * v13);
      v15 = 1 << (result & v6);
      v16 = *(v3 + 48);
      if ((v15 & v14) != 0)
      {
        while (*(v16 + 2 * v12) != v10)
        {
          v12 = (v12 + 1) & v6;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v13) = v15 | v14;
        *(v16 + 2 * v12) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

__n128 sub_6C5C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_6C6C(uint64_t a1, int a2)
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

uint64_t sub_6C8C(uint64_t result, int a2, int a3)
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

void sub_6D04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_6D58()
{
  result = qword_70D10;
  if (!qword_70D10)
  {
    sub_1F64(&qword_70C70, &qword_5ADE8);
    sub_1F64(&qword_70BE8, &qword_5ADA8);
    sub_59130();
    sub_6ED0(&qword_70C60, &qword_70BE8, &qword_5ADA8, &protocol conformance descriptor for Button<A>);
    sub_684C(&qword_70C68, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_6ED0(&qword_70D18, &qword_70C78, &qword_5ADF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70D10);
  }

  return result;
}

uint64_t sub_6ED0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1F64(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_6F18()
{
  sub_1F64(&qword_70A38, &qword_5AB58);
  sub_1F64(&qword_70A40, &qword_5AB60);
  sub_1F64(&qword_70A48, &qword_5AB68);
  sub_33F0();
  swift_getOpaqueTypeConformance2();
  sub_38A0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_7000(void *a1)
{
  if (swift_dynamicCast())
  {
    v2 = v4;
  }

  else if (swift_dynamicCast())
  {
    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  sub_EA60(a1);
  return v2;
}

uint64_t sub_70D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_785C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_7110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_785C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

Swift::Int sub_7164()
{
  v1 = *v0;
  sub_59ED0();
  sub_59EE0(v1);
  return sub_59F10();
}

Swift::Int sub_71D8(uint64_t a1)
{
  v2 = *v1;
  sub_59ED0();
  sub_59EE0(v2);
  return sub_59F10();
}

uint64_t sub_721C()
{
  if (*v0)
  {
    return 29807;
  }

  else
  {
    return 7627105;
  }
}

uint64_t sub_7244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7627105 && a2 == 0xE300000000000000;
  if (v5 || (sub_59E80() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 29807 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_59E80();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_7324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_77B4(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_7360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_77B4(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_739C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_7808(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_73D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_7808(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_7414(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((a3 & 1) == 0)
  {
    return (a1 == a4) & ~a6;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_59E80();
}

uint64_t sub_745C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v26 = a2;
  v27 = a4;
  v24 = a3;
  v25 = sub_187C(&qword_70D20, &qword_5AF20);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v6 = &v22 - v5;
  v7 = sub_187C(&qword_70D28, &qword_5AF28);
  v22 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = sub_187C(&qword_70D30, &qword_5AF30);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = sub_7770(a1, a1[3]);
  sub_77B4(v14, v15, v16);
  v17 = sub_59F30();
  if (v27)
  {
    v29 = 1;
    sub_7808(v17, v18, v19);
    sub_59E00();
    v20 = v25;
    sub_59E10();
    (*(v23 + 8))(v6, v20);
  }

  else
  {
    v28 = 0;
    sub_785C(v17, v18, v19);
    sub_59E00();
    sub_59E20();
    (*(v22 + 8))(v9, v7);
  }

  return (*(v11 + 8))(v13, v10);
}

void *sub_7770(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_77B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_72428;
  if (!qword_72428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72428);
  }

  return result;
}

unint64_t sub_7808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_72430;
  if (!qword_72430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72430);
  }

  return result;
}

unint64_t sub_785C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_72438;
  if (!qword_72438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72438);
  }

  return result;
}

void sub_78B0(uint64_t a1, Swift::UInt a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_59EE0(1uLL);

    sub_59920();
  }

  else
  {
    sub_59EE0(0);
    sub_59EE0(a2);
  }
}

Swift::Int sub_7928(Swift::UInt a1, uint64_t a2, char a3)
{
  sub_59ED0();
  if (a3)
  {
    sub_59EE0(1uLL);
    sub_59920();
  }

  else
  {
    sub_59EE0(0);
    sub_59EE0(a1);
  }

  return sub_59F10();
}

void *sub_79B0(void *a1)
{
  result = sub_AFA0(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

Swift::Int sub_79D8()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_59ED0();
  if (v2 == 1)
  {
    sub_59EE0(1uLL);
    sub_59920();
  }

  else
  {
    sub_59EE0(0);
    sub_59EE0(v1);
  }

  return sub_59F10();
}

void sub_7A60(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16) == 1)
  {
    sub_59EE0(1uLL);

    sub_59920();
  }

  else
  {
    sub_59EE0(0);
    sub_59EE0(v2);
  }
}

Swift::Int sub_7AE8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_59ED0();
  if (v3 == 1)
  {
    sub_59EE0(1uLL);
    sub_59920();
  }

  else
  {
    sub_59EE0(0);
    sub_59EE0(v2);
  }

  return sub_59F10();
}

void *sub_7B6C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_AFA0(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_7BC0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  if (*(a1 + 16) != 1)
  {
    return (v3 == v4) & ~v5;
  }

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if (v3 == v4 && v6 == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_59E80();
  }
}

uint64_t sub_7C20()
{
  v1 = *v0;
  sub_B4D0(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t sub_7C68()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_7CA8()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_7CDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 57);
    for (i = (a2 + 57); *(v3 - 25) == *(i - 25); i += 32)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      if (*(v3 - 17) == *(i - 17) && *(v3 - 9) == *(i - 9))
      {
        result = 0;
        if (v5 != v7)
        {
          return result;
        }
      }

      else
      {
        v10 = sub_59E80();
        result = 0;
        if (v10 & 1) == 0 || ((v5 ^ v7))
        {
          return result;
        }
      }

      if ((v6 ^ v8))
      {
        return result;
      }

      v3 += 32;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_7DC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  return result;
}

uint64_t sub_7DF8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_B4D0(v2, v3, v4);
}

uint64_t sub_7E0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_B4E0(v7, v9) & 1;
}

uint64_t sub_7EAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (a1 != a5)
  {
    return 0;
  }

  if (a2 == a6 && a3 == a7)
  {
    if ((a4 ^ a8))
    {
      return 0;
    }

    return ((a8 & 0x100) == 0) ^ ((a4 & 0x100) >> 8);
  }

  v9 = a4;
  v10 = a8;
  v11 = sub_59E80();
  result = 0;
  if (v11)
  {
    LOWORD(a8) = v10;
    LOWORD(a4) = v9;
    if (((v9 ^ v10) & 1) == 0)
    {
      return ((a8 & 0x100) == 0) ^ ((a4 & 0x100) >> 8);
    }
  }

  return result;
}

uint64_t sub_7F60(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 25);
  v4 = *(a2 + 24);
  v5 = *(a2 + 25);
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_59E80();
  result = 0;
  if ((v7 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

uint64_t *sub_801C()
{
  if (qword_72420 != -1)
  {
    swift_once();
  }

  return &qword_77BA8;
}

uint64_t sub_806C()
{
  if (qword_72420 != -1)
  {
    swift_once();
  }
}

uint64_t sub_80C8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  sub_B4D0(*a1, v3, v4);
  v5 = sub_B6F0(v2, v3, v4);
  if (v6 == 9)
  {
    if (sub_51F6C())
    {
      v7 = 0;
    }

    else
    {
      v7 = a1[3];
    }
  }

  else
  {
    v7 = v5;
  }

  sub_B818(a1);
  return v7;
}

uint64_t sub_8164(uint64_t a1, uint64_t a2)
{
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v5._countAndFlagsBits = 0xD000000000000010;
        v5._object = 0x8000000000066870;
        v6 = 0xD000000000000040;
        v7 = 0x8000000000066890;
        goto LABEL_22;
      }

      v4 = "OpenType stylistic sets";
      v5._countAndFlagsBits = 0x697473696C797453;
      LODWORD(v5._object) = 1699946595;
      goto LABEL_15;
    }

    switch(a2)
    {
      case 6:
        v5._countAndFlagsBits = 0xD000000000000017;
        v5._object = 0x80000000000667C0;
        v6 = 0xD000000000000047;
        v7 = 0x80000000000667E0;
        goto LABEL_22;
      case 7:
        v6 = 0xD000000000000030;
        v5._countAndFlagsBits = 0x726568744FLL;
        v7 = 0x8000000000066780;
        v5._object = 0xE500000000000000;
        goto LABEL_22;
      case 8:
        v4 = "tion is not possible";
        v5._countAndFlagsBits = 0x6156206870796C47;
        LODWORD(v5._object) = 1851877746;
LABEL_15:
        v5._object = (LODWORD(v5._object) | 0xEE00737400000000);
        v7 = v4 | 0x8000000000000000;
LABEL_17:
        v6 = 0xD00000000000003ELL;
        goto LABEL_22;
    }

LABEL_24:
    v8 = a1;
    goto LABEL_23;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v6 = 0xD000000000000037;
      v5._countAndFlagsBits = 0x20737265626D754ELL;
      v5._object = 0xED0000656C797453;
      v7 = 0x8000000000066950;
    }

    else
    {
      v5._countAndFlagsBits = 0xD000000000000011;
      v5._object = 0x80000000000668E0;
      v6 = 0xD000000000000041;
      v7 = 0x8000000000066900;
    }

    goto LABEL_22;
  }

  if (!a2)
  {
    v7 = 0x8000000000066990;
    v5._countAndFlagsBits = 1702060355;
    v5._object = 0xE400000000000000;
    goto LABEL_17;
  }

  if (a2 != 1)
  {
    goto LABEL_24;
  }

  v6 = 0xD000000000000037;
  v5._countAndFlagsBits = 0x20737265626D754ELL;
  v5._object = 0xEF676E6963617053;
  v7 = 0x8000000000066950;
LABEL_22:
  v8 = sub_2B8E0(v5, v6, v7);
LABEL_23:
  sub_B848(a1, a2);
  return v8;
}

uint64_t sub_83E4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x64656D616ELL;
    v6 = 0x726568746FLL;
    if (a1 != 8)
    {
      v6 = 0x7261566870796C67;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x697473696C797473;
    if (a1 != 5)
    {
      v7 = 0x73696C797453746FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x676E69736163;
    v2 = 0x53737265626D756ELL;
    v3 = 0xD000000000000010;
    if (a1 != 3)
    {
      v3 = 0x5679616C70736964;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x53737265626D756ELL;
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
}

uint64_t sub_8568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_C0E0(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_85A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_C0E0(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_85FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_B85C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_8630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD98(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_866C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD98(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_86A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BF90(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_86E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BF90(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_8720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BDEC(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_875C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BDEC(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

Swift::Int sub_879C()
{
  sub_59ED0();
  sub_59EE0(0);
  return sub_59F10();
}

Swift::Int sub_880C(uint64_t a1)
{
  sub_59ED0();
  sub_59EE0(0);
  return sub_59F10();
}

uint64_t sub_8850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_59E80();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_88DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BE94(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_8918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BE94(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_8954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_C08C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_8990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_C08C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_89CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_C038(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_8A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_C038(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_8A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BEE8(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_8A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BEE8(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_8ABC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_8AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BE40(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_8B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BE40(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_8B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BF3C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_8BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BF3C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_8BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BFE4(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_8C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BFE4(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_8C5C(void *a1, uint64_t a2, uint64_t a3)
{
  v85 = a3;
  v79 = a2;
  v4 = sub_187C(&qword_70D38, &qword_5AF38);
  v77 = *(v4 - 8);
  v78 = v4;
  __chkstk_darwin(v4);
  v75 = &v58 - v5;
  v73 = sub_187C(&qword_70D40, &qword_5AF40);
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v58 - v6;
  v76 = sub_187C(&qword_70D48, &qword_5AF48);
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v72 = &v58 - v7;
  v69 = sub_187C(&qword_70D50, &qword_5AF50);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v58 - v8;
  v66 = sub_187C(&qword_70D58, &qword_5AF58);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v58 - v9;
  v63 = sub_187C(&qword_70D60, &qword_5AF60);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v58 - v10;
  v60 = sub_187C(&qword_70D68, &qword_5AF68);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v84 = &v58 - v11;
  v12 = sub_187C(&qword_70D70, &qword_5AF70);
  v13 = *(v12 - 8);
  v82 = v12;
  v83 = v13;
  __chkstk_darwin(v12);
  v15 = &v58 - v14;
  v16 = sub_187C(&qword_70D78, &qword_5AF78);
  v81 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v58 - v17;
  v19 = sub_187C(&qword_70D80, &qword_5AF80);
  v80 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  v22 = sub_187C(&qword_70D88, &qword_5AF88);
  v23 = *(v22 - 8);
  v87 = v22;
  v88 = v23;
  __chkstk_darwin(v22);
  v25 = &v58 - v24;
  v26 = sub_7770(a1, a1[3]);
  sub_BD98(v26, v27, v28);
  v86 = v25;
  v29 = v85;
  v30 = sub_59F30();
  if (v29 > 3)
  {
    if (v29 <= 5)
    {
      if (v29 == 4)
      {
        v93 = 4;
        sub_BF90(v30, v31, v32);
        v51 = v61;
        v35 = v86;
        v34 = v87;
        sub_59E00();
        v44 = *(v62 + 8);
        v45 = v51;
        v46 = &v99;
      }

      else
      {
        v94 = 5;
        sub_BF3C(v30, v31, v32);
        v43 = v64;
        v35 = v86;
        v34 = v87;
        sub_59E00();
        v44 = *(v65 + 8);
        v45 = v43;
        v46 = &v100;
      }
    }

    else
    {
      if (v29 != 6)
      {
        if (v29 != 7)
        {
          if (v29 == 8)
          {
            v98 = 9;
            sub_BDEC(v30, v31, v32);
            v33 = v75;
            v35 = v86;
            v34 = v87;
            sub_59E00();
            (*(v77 + 8))(v33, v78);
            return (*(v88 + 8))(v35, v34);
          }

          goto LABEL_23;
        }

        v97 = 8;
        sub_BE40(v30, v31, v32);
        v53 = v70;
        v35 = v86;
        v34 = v87;
        sub_59E00();
        v44 = *(v71 + 8);
        v45 = v53;
        v52 = v73;
LABEL_21:
        v44(v45, v52);
        return (*(v88 + 8))(v35, v34);
      }

      v95 = 6;
      sub_BEE8(v30, v31, v32);
      v50 = v67;
      v35 = v86;
      v34 = v87;
      sub_59E00();
      v44 = *(v68 + 8);
      v45 = v50;
      v46 = &v101;
    }

    v52 = *(v46 - 32);
    goto LABEL_21;
  }

  v77 = v19;
  v78 = v16;
  v36 = v80;
  v37 = v81;
  v39 = v82;
  v38 = v83;
  v40 = v84;
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      v91 = 2;
      sub_C038(v30, v31, v32);
      v35 = v86;
      v34 = v87;
      sub_59E00();
      (*(v38 + 8))(v15, v39);
    }

    else
    {
      v92 = 3;
      sub_BFE4(v30, v31, v32);
      v42 = v40;
      v35 = v86;
      v34 = v87;
      sub_59E00();
      (*(v59 + 8))(v42, v60);
    }

    return (*(v88 + 8))(v35, v34);
  }

  if (!v29)
  {
    v89 = 0;
    sub_C0E0(v30, v31, v32);
    v47 = v86;
    v48 = v87;
    sub_59E00();
    (*(v36 + 8))(v21, v77);
    return (*(v88 + 8))(v47, v48);
  }

  if (v29 == 1)
  {
    v90 = 1;
    sub_C08C(v30, v31, v32);
    v41 = v18;
    v35 = v86;
    v34 = v87;
    sub_59E00();
    (*(v37 + 8))(v41, v78);
    return (*(v88 + 8))(v35, v34);
  }

LABEL_23:
  v96 = 7;
  sub_BE94(v30, v31, v32);
  v54 = v72;
  v56 = v86;
  v55 = v87;
  sub_59E00();
  v57 = v76;
  sub_59E10();
  (*(v74 + 8))(v54, v57);
  return (*(v88 + 8))(v56, v55);
}

void sub_969C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v3 = 2;
      }

      else
      {
        v3 = 3;
      }

      goto LABEL_20;
    }

    if (!a3)
    {
      v3 = 0;
      goto LABEL_20;
    }

    if (a3 == 1)
    {
      v3 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_20;
    }

    switch(a3)
    {
      case 6:
        v3 = 6;
        goto LABEL_20;
      case 7:
        v3 = 8;
        goto LABEL_20;
      case 8:
        v3 = 9;
LABEL_20:
        sub_59EE0(v3);
        return;
    }
  }

  sub_59EE0(7uLL);

  sub_59920();
}

Swift::Int sub_97A4(uint64_t a1, uint64_t a2)
{
  sub_59ED0();
  sub_969C(v5, a1, a2);
  return sub_59F10();
}

BOOL sub_9834(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 <= 3)
  {
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        if (a2 != 2)
        {
          v4 = 2;
          if (a2 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }

      else if (a2 != 3)
      {
        v4 = 3;
        if (a2 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_44;
    }

    if (!a4)
    {
      if (a2)
      {
        v4 = 0;
        if (a2 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_44;
    }

    if (a4 == 1)
    {
      if (a2 != 1)
      {
        v4 = 1;
        if (a2 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_44;
    }
  }

  else
  {
    if (a4 <= 5)
    {
      if (a4 == 4)
      {
        if (a2 != 4)
        {
          v4 = 4;
          if (a2 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }

      else if (a2 != 5)
      {
        v4 = 5;
        if (a2 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_44;
    }

    switch(a4)
    {
      case 6:
        if (a2 != 6)
        {
          v4 = 6;
          if (a2 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }

        goto LABEL_44;
      case 7:
        if (a2 != 7)
        {
          v4 = 8;
          if (a2 > 8)
          {
LABEL_40:
            v5 = 7;
            goto LABEL_41;
          }

LABEL_37:
          v5 = qword_5C070[a2];
LABEL_41:
          v6 = v4 < v5;
          return (v6 & 1) == 0;
        }

LABEL_44:
        v6 = 0;
        return (v6 & 1) == 0;
      case 8:
        if (a2 != 8)
        {
          v4 = 9;
          if (a2 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }

        goto LABEL_44;
    }
  }

  if (a2 < 9)
  {
    v4 = 7;
    goto LABEL_37;
  }

  if (a3 == a1 && a4 == a2)
  {
    goto LABEL_44;
  }

  if (sub_59E80())
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_59E80();
  }

  return (v6 & 1) == 0;
}

BOOL sub_9A44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (a4 != 2)
        {
          v4 = 2;
          if (a4 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }

      else if (a4 != 3)
      {
        v4 = 3;
        if (a4 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_44;
    }

    if (!a2)
    {
      if (a4)
      {
        v4 = 0;
        if (a4 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_44;
    }

    if (a2 == 1)
    {
      if (a4 != 1)
      {
        v4 = 1;
        if (a4 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_44;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        if (a4 != 4)
        {
          v4 = 4;
          if (a4 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }

      else if (a4 != 5)
      {
        v4 = 5;
        if (a4 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_44;
    }

    switch(a2)
    {
      case 6:
        if (a4 != 6)
        {
          v4 = 6;
          if (a4 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }

        goto LABEL_44;
      case 7:
        if (a4 != 7)
        {
          v4 = 8;
          if (a4 > 8)
          {
LABEL_40:
            v5 = 7;
            goto LABEL_41;
          }

LABEL_37:
          v5 = qword_5C070[a4];
LABEL_41:
          v6 = v4 < v5;
          return (v6 & 1) == 0;
        }

LABEL_44:
        v6 = 0;
        return (v6 & 1) == 0;
      case 8:
        if (a4 != 8)
        {
          v4 = 9;
          if (a4 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }

        goto LABEL_44;
    }
  }

  if (a4 < 9)
  {
    v4 = 7;
    goto LABEL_37;
  }

  if (a1 == a3 && a2 == a4)
  {
    goto LABEL_44;
  }

  if (sub_59E80())
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_59E80();
  }

  return (v6 & 1) == 0;
}

uint64_t sub_9C3C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 <= 3)
  {
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        if (a2 != 2)
        {
          v4 = 2;
          if (a2 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }

      else if (a2 != 3)
      {
        v4 = 3;
        if (a2 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      return 0;
    }

    if (!a4)
    {
      if (a2)
      {
        v4 = 0;
        if (a2 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      return 0;
    }

    if (a4 == 1)
    {
      if (a2 != 1)
      {
        v4 = 1;
        if (a2 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      return 0;
    }
  }

  else
  {
    if (a4 <= 5)
    {
      if (a4 == 4)
      {
        if (a2 != 4)
        {
          v4 = 4;
          if (a2 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }

      else if (a2 != 5)
      {
        v4 = 5;
        if (a2 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      return 0;
    }

    switch(a4)
    {
      case 6:
        if (a2 != 6)
        {
          v4 = 6;
          if (a2 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }

        return 0;
      case 7:
        if (a2 != 7)
        {
          v4 = 8;
          if (a2 > 8)
          {
LABEL_40:
            v5 = 7;
            return v4 < v5;
          }

LABEL_37:
          v5 = qword_5C070[a2];
          return v4 < v5;
        }

        return 0;
      case 8:
        if (a2 != 8)
        {
          v4 = 9;
          if (a2 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }

        return 0;
    }
  }

  if (a2 < 9)
  {
    v4 = 7;
    goto LABEL_37;
  }

  if (a3 == a1 && a4 == a2 || (sub_59E80() & 1) != 0)
  {
    return 0;
  }

  return sub_59E80();
}

Swift::Int sub_9E3C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_59ED0();
  sub_969C(v4, v1, v2);
  return sub_59F10();
}

Swift::Int sub_9E90(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_59ED0();
  sub_969C(v5, v2, v3);
  return sub_59F10();
}

char *sub_9EF4@<X0>(char **a1@<X8>, void *a2@<X0>)
{
  result = sub_C134(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

void *sub_9F34(uint64_t a1)
{
  if (qword_72420 != -1)
  {
    swift_once();
  }

  v1 = qword_77BA8;
  v2 = *(qword_77BA8 + 16);
  if (v2)
  {
    v16 = _swiftEmptyArrayStorage;
    sub_ACF8(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_B848(v5, *v4);
      v16 = v3;
      v8 = v3[2];
      v7 = v3[3];
      if (v8 >= v7 >> 1)
      {
        sub_ACF8((v7 > 1), v8 + 1, 1);
        v3 = v16;
      }

      v4 += 2;
      v3[2] = v8 + 1;
      v9 = &v3[3 * v8];
      v9[4] = v5;
      v9[5] = v6;
      v9[6] = _swiftEmptyArrayStorage;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
      v10 = _swiftEmptyDictionarySingleton;
      goto LABEL_11;
    }
  }

  sub_187C(&qword_70D90, &qword_5AF90);
  v10 = sub_59D60();
LABEL_11:
  v16 = v10;
  sub_A138(v3, 1, &v16);
  v11 = v16;

  v13 = sub_CF50(v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v11;
  sub_D2E8(v13, sub_AF58, 0, isUniquelyReferenced_nonNull_native, &v16);

  return v16;
}

uint64_t sub_A138(void *a1, char a2, void *a3)
{
  v36 = a1[2];
  if (!v36)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;
  sub_B848(v7, v6);

  v10 = sub_A4D8(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_A550(v15, v5 & 1);
    v10 = sub_A4D8(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_59EA0();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_A8DC();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_187C(&qword_70DB8, &qword_5BFD8);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_E9AC(v7, v6);
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v7;
  v21[1] = v6;
  *(v20[7] + 8 * v10) = v8;
  v22 = v20[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_59C70(30);
    v37._object = 0x8000000000066A30;
    v37._countAndFlagsBits = 0xD00000000000001BLL;
    sub_59950(v37);
    sub_59D10();
    v38._countAndFlagsBits = 39;
    v38._object = 0xE100000000000000;
    sub_59950(v38);
    result = sub_59D20();
    __break(1u);
    return result;
  }

  v20[2] = v23;
  if (v36 != 1)
  {
    v5 = a1 + 9;
    v24 = 1;
    while (v24 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v25 = *a3;
      sub_B848(v7, v6);

      v26 = sub_A4D8(v7, v6);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_A550(v30, 1);
        v26 = sub_A4D8(v7, v6);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v33 = (v32[6] + 16 * v26);
      *v33 = v7;
      v33[1] = v6;
      *(v32[7] + 8 * v26) = v8;
      v34 = v32[2];
      v14 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v24;
      v32[2] = v35;
      v5 += 3;
      if (v36 == v24)
      {
      }
    }

    goto LABEL_25;
  }
}

unint64_t sub_A4D8(uint64_t a1, unint64_t a2)
{
  sub_59ED0();
  sub_969C(v6, a1, a2);
  v4 = sub_59F10();

  return sub_AA4C(a1, a2, v4);
}

uint64_t sub_A550(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_187C(&qword_70D90, &qword_5AF90);
  v31 = v4;
  result = sub_59D50();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v17 = v8;
        while (1)
        {
          v8 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_56;
          }

          if (v8 >= v13)
          {
            break;
          }

          v18 = v9[v8];
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v12 = (v18 - 1) & v18;
            goto LABEL_15;
          }
        }

        if ((v31 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_54;
        }

        v30 = 1 << *(v5 + 32);
        v3 = v2;
        if (v30 >= 64)
        {
          bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v30;
        }

        *(v5 + 16) = 0;
        break;
      }

      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v32 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v31 & 1) == 0)
      {
        sub_B848(v32, v21);
      }

      sub_59ED0();
      if (v21 <= 3)
      {
        if (v21 > 1)
        {
          if (v21 == 2)
          {
            v22 = 2;
          }

          else
          {
            v22 = 3;
          }

          goto LABEL_36;
        }

        if (!v21)
        {
          v22 = 0;
          goto LABEL_36;
        }

        if (v21 == 1)
        {
          v22 = 1;
          goto LABEL_36;
        }
      }

      else
      {
        if (v21 <= 5)
        {
          if (v21 == 4)
          {
            v22 = 4;
          }

          else
          {
            v22 = 5;
          }

          goto LABEL_36;
        }

        switch(v21)
        {
          case 6:
            v22 = 6;
            goto LABEL_36;
          case 7:
            v22 = 8;
            goto LABEL_36;
          case 8:
            v22 = 9;
LABEL_36:
            sub_59EE0(v22);
            goto LABEL_37;
        }
      }

      sub_59EE0(7uLL);
      sub_59920();
LABEL_37:
      result = sub_59F10();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_56:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v32;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }
  }

LABEL_54:
  *v3 = v7;
  return result;
}

void *sub_A8DC()
{
  v1 = v0;
  sub_187C(&qword_70D90, &qword_5AF90);
  v2 = *v0;
  v3 = sub_59D40();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_B848(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_AA4C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12 <= 3)
      {
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            if (a2 == 2)
            {
              return v6;
            }
          }

          else if (a2 == 3)
          {
            return v6;
          }

          goto LABEL_4;
        }

        if (!v12)
        {
          if (!a2)
          {
            return v6;
          }

          goto LABEL_4;
        }

        if (v12 == 1)
        {
          if (a2 == 1)
          {
            return v6;
          }

          goto LABEL_4;
        }
      }

      else
      {
        if (v12 <= 5)
        {
          if (v12 == 4)
          {
            if (a2 == 4)
            {
              return v6;
            }
          }

          else if (a2 == 5)
          {
            return v6;
          }

          goto LABEL_4;
        }

        switch(v12)
        {
          case 6:
            if (a2 == 6)
            {
              return v6;
            }

            goto LABEL_4;
          case 7:
            if (a2 == 7)
            {
              return v6;
            }

            goto LABEL_4;
          case 8:
            if (a2 == 8)
            {
              return v6;
            }

            goto LABEL_4;
        }
      }

      if (a2 >= 9)
      {
        v13 = *v11 == a1 && v12 == a2;
        if (v13 || (sub_59E80() & 1) != 0)
        {
          return v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

char *sub_ABD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_187C(&qword_70DB0, &qword_5BFD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_ACF8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_AD18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_AD18(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_187C(&qword_70DC0, &qword_5BFE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_187C(&qword_70DC8, &qword_5BFE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_AE60(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_ABD0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_AF58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  sub_B848(v3, v2);
}

void *sub_AFA0(void *a1)
{
  v31 = sub_187C(&qword_70E30, &qword_5C050);
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v3 = &v30 - v2;
  v4 = sub_187C(&qword_70E38, &qword_5C058);
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v30 - v5;
  v7 = sub_187C(&qword_70E40, &unk_5C060);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = a1[3];
  v35 = a1;
  v12 = sub_7770(a1, v11);
  sub_77B4(v12, v13, v14);
  v15 = v34;
  sub_59F20();
  if (!v15)
  {
    v16 = v4;
    v34 = v8;
    v17 = v10;
    v18 = sub_59DF0();
    v21 = v7;
    if (*(v18 + 16) == 1)
    {
      if (*(v18 + 32))
      {
        LODWORD(v32) = *(v18 + 32);
        v37 = 1;
        sub_7808(v18, v19, v20);
        sub_59D90();
        v22 = v34;
        v28 = v31;
        v29 = sub_59DB0();
        v30 = 0;
        v12 = v29;
        (*(v33 + 8))(v3, v28);
        (*(v22 + 8))(v17, v21);
      }

      else
      {
        v33 = v18;
        v36 = 0;
        sub_785C(v18, v19, v20);
        sub_59D90();
        v27 = v34;
        v12 = sub_59DC0();
        (*(v32 + 8))(v6, v16);
        (*(v27 + 8))(v17, v7);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v23 = sub_59CA0();
      swift_allocError();
      v25 = v24;
      sub_187C(&qword_70E28, &qword_5C048);
      *v25 = &type metadata for FeatureIdentifier;
      v12 = v17;
      sub_59DA0();
      sub_59C90();
      (*(*(v23 - 8) + 104))(v25, enum case for DecodingError.typeMismatch(_:), v23);
      swift_willThrow();
      (*(v34 + 8))(v17, v7);
      swift_unknownObjectRelease();
    }
  }

  sub_EA60(v35);
  return v12;
}

uint64_t sub_B4D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_B4E0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (a1[2])
  {
    if ((a2[2] & 1) == 0)
    {
      return 0;
    }

    v6 = v4 == v5 && a1[1] == a2[1];
    if (!v6 && (sub_59E80() & 1) == 0)
    {
      return 0;
    }

LABEL_11:
    v8 = a1[3] == a2[3] && a1[4] == a2[4];
    if (v8 || (sub_59E80()) && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0 && (sub_7CDC(a1[6], a2[6]))
    {
      v9 = a1[8];
      v10 = a2[8];
      if (v9)
      {
        if (v10 && (a1[7] == a2[7] && v9 == v10 || (sub_59E80() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v10)
      {
        return 1;
      }
    }

    return 0;
  }

  result = 0;
  if ((a2[2] & 1) == 0 && v4 == v5)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_B5D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (a4 == 2)
        {
          return 1;
        }
      }

      else if (a4 == 3)
      {
        return 1;
      }

      return 0;
    }

    if (!a2)
    {
      return !a4;
    }

    if (a2 == 1)
    {
      return a4 == 1;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        if (a4 == 4)
        {
          return 1;
        }
      }

      else if (a4 == 5)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 6:
        return a4 == 6;
      case 7:
        return a4 == 7;
      case 8:
        return a4 == 8;
    }
  }

  if (a4 < 9)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_59E80();
  }
}

uint64_t sub_B6F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_598F0();
    v6._countAndFlagsBits = 30307;
    v6._object = 0xE200000000000000;
    sub_59990(v6);
    sub_EAAC(a1, a2, 1);

    return 0;
  }

  if (a1 > 32)
  {
    if (a1 > 36 || a1 == 33)
    {
      return 0;
    }

    if (a1 == 35)
    {
      return 0;
    }

    if (a1 != 36)
    {
      return 0;
    }

    return 0;
  }

  if (a1 > 9)
  {
    if (a1 == 10)
    {
      return 0;
    }

    if (a1 != 19)
    {
      if (a1 != 21)
      {
        return 0;
      }

      return 0;
    }

    return 0;
  }

  if (a1 == 3)
  {
    return 0;
  }

  if (a1 != 6)
  {
    if (a1 != 8)
    {
      return 0;
    }

    return 0;
  }

  return 0;
}

uint64_t sub_B848(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
  }

  return result;
}

uint64_t sub_B85C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69736163 && a2 == 0xE600000000000000;
  if (v4 || (sub_59E80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53737265626D756ELL && a2 == 0xEE00676E69636170 || (sub_59E80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53737265626D756ELL && a2 == 0xEC000000656C7974 || (sub_59E80() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000669F0 == a2 || (sub_59E80() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5679616C70736964 && a2 == 0xEF73746E61697261 || (sub_59E80() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x697473696C797473 && a2 == 0xED00007374655363 || (sub_59E80() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73696C797453746FLL && a2 == 0xEF73746553636974 || (sub_59E80() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64656D616ELL && a2 == 0xE500000000000000 || (sub_59E80() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000 || (sub_59E80() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7261566870796C67 && a2 == 0xED000073746E6169)
  {

    return 9;
  }

  else
  {
    v6 = sub_59E80();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_BBB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (a4 != 2)
        {
          v4 = 2;
          if (a4 <= 8)
          {
            goto LABEL_25;
          }

          goto LABEL_14;
        }
      }

      else if (a4 != 3)
      {
        v4 = 3;
        if (a4 <= 8)
        {
          goto LABEL_25;
        }

        goto LABEL_14;
      }

      return 0;
    }

    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_39;
      }

      if (a4 == 1)
      {
        return 0;
      }

      v4 = 1;
      if (a4 > 8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (!a4)
      {
        return 0;
      }

      v4 = 0;
      if (a4 > 8)
      {
        goto LABEL_14;
      }
    }

LABEL_25:
    v5 = qword_5C070[a4];
    return v4 < v5;
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      if (a4 != 4)
      {
        v4 = 4;
        if (a4 <= 8)
        {
          goto LABEL_25;
        }

        goto LABEL_14;
      }
    }

    else if (a4 != 5)
    {
      v4 = 5;
      if (a4 <= 8)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    return 0;
  }

  switch(a2)
  {
    case 6:
      if (a4 != 6)
      {
        v4 = 6;
        if (a4 <= 8)
        {
          goto LABEL_25;
        }

        goto LABEL_14;
      }

      return 0;
    case 7:
      if (a4 != 7)
      {
        v4 = 8;
        if (a4 <= 8)
        {
          goto LABEL_25;
        }

        goto LABEL_14;
      }

      return 0;
    case 8:
      if (a4 != 8)
      {
        v4 = 9;
        if (a4 <= 8)
        {
          goto LABEL_25;
        }

LABEL_14:
        v5 = 7;
        return v4 < v5;
      }

      return 0;
  }

LABEL_39:
  if (a4 < 9)
  {
    v4 = 7;
    goto LABEL_25;
  }

  if (a1 == a3 && a2 == a4 || (sub_59E80() & 1) != 0)
  {
    return 0;
  }

  return sub_59E80();
}

unint64_t sub_BD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_72440;
  if (!qword_72440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72440);
  }

  return result;
}

unint64_t sub_BDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_72448;
  if (!qword_72448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72448);
  }

  return result;
}

unint64_t sub_BE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_72450;
  if (!qword_72450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72450);
  }

  return result;
}

unint64_t sub_BE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_72458;
  if (!qword_72458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72458);
  }

  return result;
}

unint64_t sub_BEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_72460;
  if (!qword_72460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72460);
  }

  return result;
}

unint64_t sub_BF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_72468;
  if (!qword_72468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72468);
  }

  return result;
}

unint64_t sub_BF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_72470;
  if (!qword_72470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72470);
  }

  return result;
}

unint64_t sub_BFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_72478;
  if (!qword_72478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72478);
  }

  return result;
}

unint64_t sub_C038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_72480;
  if (!qword_72480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72480);
  }

  return result;
}

unint64_t sub_C08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_72488;
  if (!qword_72488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72488);
  }

  return result;
}

unint64_t sub_C0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_72490[0];
  if (!qword_72490[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_72490);
  }

  return result;
}

char *sub_C134(void *a1)
{
  v2 = sub_187C(&qword_70DD0, &qword_5BFF0);
  v81 = *(v2 - 8);
  v82 = v2;
  __chkstk_darwin(v2);
  v86 = &v59 - v3;
  v4 = sub_187C(&qword_70DD8, &qword_5BFF8);
  v79 = *(v4 - 8);
  v80 = v4;
  __chkstk_darwin(v4);
  v90 = &v59 - v5;
  v6 = sub_187C(&qword_70DE0, &qword_5C000);
  v77 = *(v6 - 8);
  v78 = v6;
  __chkstk_darwin(v6);
  v89 = &v59 - v7;
  v8 = sub_187C(&qword_70DE8, &qword_5C008);
  v75 = *(v8 - 8);
  v76 = v8;
  __chkstk_darwin(v8);
  v85 = &v59 - v9;
  v10 = sub_187C(&qword_70DF0, &qword_5C010);
  v73 = *(v10 - 8);
  v74 = v10;
  __chkstk_darwin(v10);
  v84 = &v59 - v11;
  v71 = sub_187C(&qword_70DF8, &qword_5C018);
  v72 = *(v71 - 8);
  __chkstk_darwin(v71);
  v83 = &v59 - v12;
  v69 = sub_187C(&qword_70E00, &qword_5C020);
  v70 = *(v69 - 8);
  __chkstk_darwin(v69);
  v88 = &v59 - v13;
  v67 = sub_187C(&qword_70E08, &qword_5C028);
  v68 = *(v67 - 8);
  __chkstk_darwin(v67);
  v87 = &v59 - v14;
  v66 = sub_187C(&qword_70E10, &qword_5C030);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v16 = &v59 - v15;
  v17 = sub_187C(&qword_70E18, &qword_5C038);
  v64 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v59 - v18;
  v20 = sub_187C(&qword_70E20, &qword_5C040);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v59 - v22;
  v24 = a1[3];
  v92 = a1;
  v25 = sub_7770(a1, v24);
  sub_BD98(v25, v26, v27);
  v28 = v91;
  sub_59F20();
  if (!v28)
  {
    v61 = v19;
    v60 = v17;
    v19 = v87;
    v29 = v88;
    v30 = v89;
    v62 = 0;
    v31 = v90;
    v91 = v21;
    v63 = v23;
    v32 = sub_59DF0();
    if (*(v32 + 16) != 1 || (v35 = *(v32 + 32), v35 == 10))
    {
      v19 = sub_59CA0();
      swift_allocError();
      v40 = v39;
      sub_187C(&qword_70E28, &qword_5C048);
      *v40 = &type metadata for FeatureGroup;
      v41 = v63;
      sub_59DA0();
      sub_59C90();
      (*(*(v19 - 1) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v19);
      swift_willThrow();
    }

    else
    {
      if (*(v32 + 32) > 4u)
      {
        if (*(v32 + 32) <= 6u)
        {
          v47 = v91;
          v48 = v63;
          if (v35 == 5)
          {
            v98 = 5;
            sub_BF3C(v32, v33, v34);
            v49 = v84;
            v50 = v62;
            sub_59D90();
            if (!v50)
            {
              (*(v73 + 8))(v49, v74);
              (*(v47 + 8))(v48, v20);
              swift_unknownObjectRelease();
              v19 = 0;
              goto LABEL_13;
            }
          }

          else
          {
            v99 = 6;
            sub_BEE8(v32, v33, v34);
            v56 = v85;
            v57 = v62;
            sub_59D90();
            if (!v57)
            {
              (*(v75 + 8))(v56, v76);
              (*(v47 + 8))(v48, v20);
              swift_unknownObjectRelease();
              v19 = 0;
              goto LABEL_13;
            }
          }

          v58 = *(v47 + 8);
          v19 = (v47 + 8);
          v58(v48, v20);
        }

        else
        {
          v43 = v91;
          v44 = v63;
          if (v35 == 7)
          {
            v100 = 7;
            sub_BE94(v32, v33, v34);
            v51 = v30;
            v52 = v62;
            sub_59D90();
            if (!v52)
            {
              v53 = v78;
              v19 = sub_59DB0();
              (*(v77 + 8))(v51, v53);
              (*(v43 + 8))(v44, v20);
              swift_unknownObjectRelease();
              goto LABEL_13;
            }
          }

          else if (v35 == 8)
          {
            v101 = 8;
            sub_BE40(v32, v33, v34);
            v19 = v31;
            v45 = v62;
            sub_59D90();
            if (!v45)
            {
              (*(v79 + 8))(v31, v80);
              (*(v43 + 8))(v44, v20);
              swift_unknownObjectRelease();
              v19 = 0;
              goto LABEL_13;
            }
          }

          else
          {
            v102 = 9;
            sub_BDEC(v32, v33, v34);
            v19 = v86;
            v55 = v62;
            sub_59D90();
            if (!v55)
            {
              (*(v81 + 8))(v19, v82);
              (*(v43 + 8))(v44, v20);
              swift_unknownObjectRelease();
              v19 = 0;
              goto LABEL_13;
            }
          }

          (*(v43 + 8))(v44, v20);
        }

        goto LABEL_12;
      }

      if (*(v32 + 32) > 1u)
      {
        v36 = v91;
        v37 = v62;
        if (v35 == 2)
        {
          v95 = 2;
          sub_C038(v32, v33, v34);
          v38 = v63;
          sub_59D90();
          if (!v37)
          {
            (*(v68 + 8))(v19, v67);
            (*(v36 + 8))(v38, v20);
            swift_unknownObjectRelease();
            v19 = 0;
            goto LABEL_13;
          }
        }

        else if (v35 == 3)
        {
          v96 = 3;
          sub_BFE4(v32, v33, v34);
          v38 = v63;
          sub_59D90();
          if (!v37)
          {
            (*(v70 + 8))(v29, v69);
            (*(v36 + 8))(v38, v20);
            swift_unknownObjectRelease();
            v19 = 0;
            goto LABEL_13;
          }
        }

        else
        {
          v97 = 4;
          sub_BF90(v32, v33, v34);
          v54 = v83;
          v38 = v63;
          sub_59D90();
          if (!v37)
          {
            (*(v72 + 8))(v54, v71);
            (*(v36 + 8))(v38, v20);
            swift_unknownObjectRelease();
            v19 = 0;
            goto LABEL_13;
          }
        }

        (*(v36 + 8))(v38, v20);
LABEL_12:
        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      v46 = v62;
      if (*(v32 + 32))
      {
        v94 = 1;
        sub_C08C(v32, v33, v34);
        v41 = v63;
        sub_59D90();
        if (!v46)
        {
          (*(v65 + 8))(v16, v66);
          (*(v91 + 8))(v41, v20);
          swift_unknownObjectRelease();
          v19 = 0;
          goto LABEL_13;
        }
      }

      else
      {
        v93 = 0;
        sub_C0E0(v32, v33, v34);
        v19 = v61;
        v41 = v63;
        sub_59D90();
        if (!v46)
        {
          (*(v64 + 8))(v19, v60);
          (*(v91 + 8))(v41, v20);
          swift_unknownObjectRelease();
          v19 = 0;
          goto LABEL_13;
        }
      }
    }

    (*(v91 + 8))(v41, v20);
    goto LABEL_12;
  }

LABEL_13:
  sub_EA60(v92);
  return v19;
}

void *sub_CF50(uint64_t a1)
{
  v1 = _swiftEmptyDictionarySingleton;
  v42 = _swiftEmptyDictionarySingleton;
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; i = (i + 72))
  {
    v8 = i[3];
    v37 = i[2];
    v38 = v8;
    v39 = *(i + 8);
    v9 = i[1];
    v35 = *i;
    v36 = v9;
    v40 = v35;
    v41 = *(i + 16);
    if (v41)
    {
      sub_598F0();
      sub_E9C0(&v35, v34);
      sub_E9F8(&v40, v34);
      v43._countAndFlagsBits = 30307;
      v43._object = 0xE200000000000000;
      sub_59990(v43);
      sub_EA30(&v40);
    }

    else
    {
      v11 = 0;
      if (v35 > 32)
      {
        if (v35 > 36)
        {
          if ((v35 - 37) < 2)
          {
            goto LABEL_31;
          }
        }

        else
        {
          switch(v35)
          {
            case '!':
              goto LABEL_31;
            case '#':
              v11 = 5;
              goto LABEL_31;
            case '$':
              goto LABEL_25;
          }
        }
      }

      else if (v35 > 9)
      {
        switch(v35)
        {
          case 0xALL:
            v11 = 3;
            goto LABEL_31;
          case 0x13:
LABEL_25:
            v11 = 4;
            goto LABEL_31;
          case 0x15:
            v11 = 2;
LABEL_31:
            sub_E9C0(&v35, v34);
            v10 = 0;
            goto LABEL_32;
        }
      }

      else
      {
        switch(v35)
        {
          case 3:
            goto LABEL_31;
          case 6:
            v11 = 1;
            goto LABEL_31;
          case 8:
            goto LABEL_25;
        }
      }

      sub_E9C0(&v35, v34);
    }

    if (sub_51F6C())
    {
      v10 = 0;
      v11 = 7;
    }

    else
    {
      v10 = *(&v36 + 1);
      v11 = v37;
    }

LABEL_32:
    v13 = sub_A4D8(v10, v11);
    v14 = v1[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      break;
    }

    v17 = v12;
    if (v1[3] < v16)
    {
      sub_A550(v16, 1);
      v1 = v42;
      v18 = sub_A4D8(v10, v11);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_46;
      }

      v13 = v18;
    }

    if (v17)
    {
      sub_E9AC(v10, v11);
      v20 = v1[7];
      v21 = *(v20 + 8 * v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8 * v13) = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_ABD0(0, *(v21 + 2) + 1, 1, v21);
        *(v20 + 8 * v13) = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = sub_ABD0((v23 > 1), v24 + 1, 1, v21);
        *(v20 + 8 * v13) = v21;
      }

      *(v21 + 2) = v24 + 1;
      v4 = &v21[72 * v24];
      *(v4 + 2) = v35;
      v5 = v36;
      v6 = v37;
      v7 = v38;
      *(v4 + 12) = v39;
      *(v4 + 4) = v6;
      *(v4 + 5) = v7;
      *(v4 + 3) = v5;
    }

    else
    {
      sub_187C(&qword_70DB0, &qword_5BFD0);
      v25 = swift_allocObject();
      v26 = v37;
      v27 = v38;
      v28 = v35;
      *(v25 + 48) = v36;
      *(v25 + 64) = v26;
      *(v25 + 80) = v27;
      *(v25 + 96) = v39;
      *(v25 + 16) = xmmword_5AB00;
      *(v25 + 32) = v28;
      v1[(v13 >> 6) + 8] |= 1 << v13;
      v29 = (v1[6] + 16 * v13);
      *v29 = v10;
      v29[1] = v11;
      *(v1[7] + 8 * v13) = v25;
      v30 = v1[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_45;
      }

      v1[2] = v32;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_59EA0();
  __break(1u);
  return result;
}

uint64_t sub_D2E8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v38 = a5;
  v39 = v7;
  v37 = v11;
  while (v10)
  {
    v47 = a4;
    v13 = v12;
LABEL_14:
    v15 = __clz(__rbit64(v10)) | (v13 << 6);
    v16 = *(*(a1 + 56) + 8 * v15);
    v45 = *(*(a1 + 48) + 16 * v15);
    v46 = v16;
    v17 = *(&v45 + 1);
    v18 = v45;
    sub_B848(v45, *(&v45 + 1));

    a2(&v42, &v45);
    sub_E9AC(v18, v17);

    v19 = v42;
    v20 = v43;
    v21 = v44;
    v22 = *a5;
    v24 = sub_A4D8(v42, v43);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v47 & 1) == 0)
      {
        sub_A8DC();
      }
    }

    else
    {
      sub_A550(v27, v47 & 1);
      v29 = sub_A4D8(v19, v20);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v10 &= v10 - 1;
    v31 = *a5;
    if (v28)
    {
      *&v45 = *(v31[7] + 8 * v24);

      sub_AE60(v21);
      sub_E9AC(v19, v20);
      *(v31[7] + 8 * v24) = v45;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      v32 = (v31[6] + 16 * v24);
      *v32 = v19;
      v32[1] = v20;
      *(v31[7] + 8 * v24) = v21;
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_26;
      }

      v31[2] = v35;
    }

    a4 = 1;
    v12 = v13;
    a5 = v38;
    v7 = v39;
    v11 = v37;
  }

  v14 = v12;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      sub_61FC(a1);
    }

    v10 = *(v7 + 8 * v13);
    ++v14;
    if (v10)
    {
      v47 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_59EA0();
  __break(1u);
  return result;
}

unint64_t sub_D5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_70D98;
  if (!qword_70D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70D98);
  }

  return result;
}

unint64_t sub_D600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_70DA0;
  if (!qword_70DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70DA0);
  }

  return result;
}

unint64_t sub_D660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_70DA8;
  if (!qword_70DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70DA8);
  }

  return result;
}

__n128 sub_D6C4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_D6D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_D720(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 sub_D780(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_D7A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_D7EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_D84C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_D860(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_D8A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_D8FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_D914(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 16))
  {
    return (*a1 + 2147483639);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_D96C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 8;
    }
  }

  return result;
}

void *sub_D9BC(void *result, int a2)
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

uint64_t getEnumTagSinglePayload for FeatureGroup.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureGroup.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UIMetrics.FeaturePreview.HorizontalSize(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UIMetrics.FeaturePreview.HorizontalSize(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s17UITypographyPanel12FeatureGroupO15NamedCodingKeysOwet_0(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s17UITypographyPanel12FeatureGroupO15NamedCodingKeysOwst_0(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_DE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_72C20[0];
  if (!qword_72C20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_72C20);
  }

  return result;
}

unint64_t sub_DEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_72E30[0];
  if (!qword_72E30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_72E30);
  }

  return result;
}

unint64_t sub_DF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_73040[0];
  if (!qword_73040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_73040);
  }

  return result;
}

unint64_t sub_DF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_73450[0];
  if (!qword_73450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_73450);
  }

  return result;
}

unint64_t sub_DFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_73D60[0];
  if (!qword_73D60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_73D60);
  }

  return result;
}

unint64_t sub_E010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_73E70;
  if (!qword_73E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73E70);
  }

  return result;
}

unint64_t sub_E068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_73E78;
  if (!qword_73E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73E78);
  }

  return result;
}

unint64_t sub_E0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_73F00;
  if (!qword_73F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73F00);
  }

  return result;
}

unint64_t sub_E118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_73F08[0];
  if (!qword_73F08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_73F08);
  }

  return result;
}

unint64_t sub_E170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_73F90;
  if (!qword_73F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73F90);
  }

  return result;
}

unint64_t sub_E1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_73F98[0];
  if (!qword_73F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_73F98);
  }

  return result;
}

unint64_t sub_E220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_74020;
  if (!qword_74020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_74020);
  }

  return result;
}

unint64_t sub_E278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_74028[0];
  if (!qword_74028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_74028);
  }

  return result;
}

unint64_t sub_E2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_740B0;
  if (!qword_740B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_740B0);
  }

  return result;
}

unint64_t sub_E328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_740B8[0];
  if (!qword_740B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_740B8);
  }

  return result;
}

unint64_t sub_E380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_74140;
  if (!qword_74140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_74140);
  }

  return result;
}

unint64_t sub_E3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_74148[0];
  if (!qword_74148[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_74148);
  }

  return result;
}

unint64_t sub_E430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_741D0;
  if (!qword_741D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_741D0);
  }

  return result;
}

unint64_t sub_E488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_741D8[0];
  if (!qword_741D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_741D8);
  }

  return result;
}

unint64_t sub_E4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_74260;
  if (!qword_74260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_74260);
  }

  return result;
}

unint64_t sub_E538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_74268[0];
  if (!qword_74268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_74268);
  }

  return result;
}

unint64_t sub_E590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_742F0;
  if (!qword_742F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_742F0);
  }

  return result;
}

unint64_t sub_E5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_742F8[0];
  if (!qword_742F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_742F8);
  }

  return result;
}

unint64_t sub_E640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_74380;
  if (!qword_74380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_74380);
  }

  return result;
}

unint64_t sub_E698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_74388[0];
  if (!qword_74388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_74388);
  }

  return result;
}

unint64_t sub_E6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_74410;
  if (!qword_74410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_74410);
  }

  return result;
}

unint64_t sub_E748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_74418[0];
  if (!qword_74418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_74418);
  }

  return result;
}

unint64_t sub_E7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_744A0;
  if (!qword_744A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_744A0);
  }

  return result;
}

unint64_t sub_E7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_744A8[0];
  if (!qword_744A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_744A8);
  }

  return result;
}

unint64_t sub_E850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_74530;
  if (!qword_74530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_74530);
  }

  return result;
}

unint64_t sub_E8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_74538[0];
  if (!qword_74538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_74538);
  }

  return result;
}

unint64_t sub_E900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_745C0;
  if (!qword_745C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_745C0);
  }

  return result;
}

unint64_t sub_E958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_745C8[0];
  if (!qword_745C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_745C8);
  }

  return result;
}

uint64_t sub_E9AC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
  }

  return result;
}

uint64_t sub_EA60(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_EAAC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_EAE0()
{
  if (qword_74658 != -1)
  {
    swift_once();
  }

  sub_59900();
  has_internal_content = os_variant_has_internal_content();

  byte_77BB0 = has_internal_content;
  return result;
}

char *sub_EB60()
{
  if (qword_74650 != -1)
  {
    swift_once();
  }

  return &byte_77BB0;
}

void sub_EBB0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_598E0();
    v4 = v3;

    qword_74660 = v2;
    qword_74668 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_EC40()
{
  v0 = sub_58A40();
  sub_F9D4(v0, qword_74678);
  sub_F15C(v0, qword_74678);
  if (qword_74658 != -1)
  {
    swift_once();
  }

  return sub_58A30();
}

void sub_ED00(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  if (qword_74650 != -1)
  {
    v27 = a3;
    swift_once();
    a3 = v27;
  }

  if (byte_77BB0 == 1)
  {
    v7 = &unk_74000;
    if ((a3 & 1) == 0)
    {
LABEL_14:
      if (v7[206] != -1)
      {
        swift_once();
      }

      v20 = sub_58A40();
      sub_F15C(v20, qword_74678);

      v21 = sub_58A20();
      v22 = sub_59AC0();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v23 = 136446466;
        *(v23 + 4) = sub_F2AC(a1, a2, &v29);
        *(v23 + 12) = 2082;
        v28 = a4;
        sub_187C(&qword_70E48, &qword_5C0C8);
        sub_F854();
        v24 = sub_59890();
        v26 = sub_F2AC(v24, v25, &v29);

        *(v23 + 14) = v26;
        _os_log_impl(&dword_0, v21, v22, "[%{public}s] %{public}s", v23, 0x16u);
        swift_arrayDestroy();
      }

      return;
    }

    v8 = [objc_opt_self() callStackSymbols];
    v9 = sub_59A10();

    v10 = *(v9 + 16);
    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v9;
      if (!isUniquelyReferenced_nonNull_native || (v10 - 1) > *(v9 + 24) >> 1)
      {
        v29 = sub_F1A0(isUniquelyReferenced_nonNull_native, v10, 1, v9);
      }

      sub_F8B8(0, 1, 0);
      if (qword_74670 == -1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_10:
    v12 = sub_58A40();
    sub_F15C(v12, qword_74678);

    v13 = sub_58A20();
    v14 = sub_59AC0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_F2AC(a1, a2, &v28);
      *(v15 + 12) = 2082;
      sub_187C(&qword_70E48, &qword_5C0C8);
      sub_F854();
      v16 = sub_59890();
      v18 = v17;

      v19 = sub_F2AC(v16, v18, &v28);

      *(v15 + 14) = v19;
      _os_log_impl(&dword_0, v13, v14, "[%{public}s] 🥞\n%{public}s", v15, 0x16u);
      swift_arrayDestroy();

      v7 = &unk_74000;
    }

    else
    {
    }

    goto LABEL_14;
  }
}

uint64_t sub_F15C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

char *sub_F1A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_187C(&qword_70E58, qword_5D880);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_F2AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_F378(v11, 0, 0, 1, a1, a2);
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
    sub_F978(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_EA60(v11);
  return v7;
}

unint64_t sub_F378(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_F484(a5, a6);
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
    result = sub_59CB0();
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

void *sub_F484(uint64_t a1, unint64_t a2)
{
  v3 = sub_F4D0(a1, a2);
  sub_F600(&off_6E8A0);
  return v3;
}

void *sub_F4D0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_F6EC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_59CB0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_59970();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_F6EC(v10, 0);
        result = sub_59C50();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_F600(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_F760(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_F6EC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_187C(&qword_70E60, &unk_5C0D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_F760(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_187C(&qword_70E60, &unk_5C0D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_F854()
{
  result = qword_70E50;
  if (!qword_70E50)
  {
    sub_1F64(&qword_70E48, &qword_5C0C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70E50);
  }

  return result;
}

unint64_t sub_F8B8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
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

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
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

uint64_t sub_F978(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_F9D4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_FA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypographyPanelViewModel(0);
  v5 = sub_17B64(&unk_70BA0, type metadata accessor for TypographyPanelViewModel, &unk_5CEF0);

  return ObservedObject.projectedValue.getter(a1, a2, v4, v5);
}

uint64_t sub_FACC(uint64_t a1, uint64_t a2)
{
  v2 = sub_591E0();
  sub_FC60(v2, v3, v4);
  return sub_58BA0();
}

uint64_t sub_FB38@<X0>(uint64_t *a2@<X8>)
{

  sub_801C();

  sub_15924(v3, v4, v5);

  type metadata accessor for TypographyPanelViewModel(0);
  sub_17B64(&unk_70BA0, type metadata accessor for TypographyPanelViewModel, &unk_5CEF0);
  v6 = sub_58C50();
  v8 = v7;
  sub_2B980();

  sub_187C(&qword_70E70, &qword_5C0E0);
  sub_159C0();
  sub_15A98();
  result = sub_58B80();
  *a2 = v6;
  a2[1] = v8;
  a2[2] = result;
  return result;
}

unint64_t sub_FC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_70E68;
  if (!qword_70E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70E68);
  }

  return result;
}

uint64_t sub_FCB4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TypographyPanelViewModel(0);
  sub_17B64(&unk_70BA0, type metadata accessor for TypographyPanelViewModel, &unk_5CEF0);
  v2 = sub_58C50();
  sub_2B980();

  sub_187C(&qword_70E70, &qword_5C0E0);
  sub_159C0();
  sub_15A98();
  sub_58B80();
  return v2;
}

uint64_t sub_FDAC(uint64_t a1)
{
  type metadata accessor for TypographyPanelViewModel(0);
  sub_17B64(&unk_70BA0, type metadata accessor for TypographyPanelViewModel, &unk_5CEF0);

  return sub_58C50();
}

uint64_t sub_FE28()
{
  v0 = sub_591E0();
  sub_FC60(v0, v1, v2);
  return sub_58BA0();
}

uint64_t sub_FE9C(uint64_t *a1)
{
  sub_17B64(&unk_70BA0, type metadata accessor for TypographyPanelViewModel, &unk_5CEF0);

  return sub_58C50();
}

uint64_t sub_FF34(uint64_t a1)
{
  sub_2B980();

  sub_187C(&qword_70E70, &qword_5C0E0);
  sub_159C0();
  sub_15A98();
  return sub_58B80();
}

uint64_t sub_FFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_187C(&qword_70E70, &qword_5C0E0);
  sub_58B50();
  return v4;
}

uint64_t (*sub_10058(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  a1[2] = a4;
  a1[3] = sub_187C(&qword_70E70, &qword_5C0E0);
  sub_58B50();
  return sub_100C4;
}

uint64_t sub_100C4(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_58B60();
  }

  else
  {

    return sub_58B60();
  }
}

uint64_t sub_10158()
{
  sub_801C();

  v3 = sub_15924(v0, v1, v2);

  return v3;
}

uint64_t sub_10198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_187C(&qword_70E70, &qword_5C0E0);
  sub_58B70();
  return v4;
}

uint64_t sub_101EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  sub_10590(sub_15B70, v11, a4);
  type metadata accessor for TypographyPanelViewModel(0);
  sub_17B64(&unk_70BA0, type metadata accessor for TypographyPanelViewModel, &unk_5CEF0);
  v6 = sub_58AA0();
  v7 = (a4 + *(sub_187C(&qword_70E98, &qword_5C0E8) + 36));
  *v7 = v6;
  v7[1] = a2;
  KeyPath = swift_getKeyPath();
  v9 = a4 + *(sub_187C(&qword_70EA0, qword_5C118) + 36);
  *v9 = KeyPath;
  *(v9 + 8) = 1;
}

uint64_t sub_102F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_187C(&qword_70F50, &qword_5C2B8);
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  v11 = sub_1F758();
  if (v11)
  {
    v12 = v11;
    v21 = sub_1FFE4();
    v19[1] = swift_getKeyPath();
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = a3;
    v13[5] = v12;

    sub_187C(&qword_70F68, &qword_5C2E8);
    sub_187C(&qword_70F60, &unk_5C2C0);
    v14 = sub_6ED0(&qword_70F70, &qword_70F68, &qword_5C2E8, &protocol conformance descriptor for [A]);
    sub_16500(v14, v15, v16);
    sub_6ED0(&qword_70F58, &qword_70F60, &unk_5C2C0, &unk_5E0E8);
    sub_59720();
    (*(v20 + 32))(a4, v10, v8);
    return (*(v20 + 56))(a4, 0, 1, v8);
  }

  else
  {
    v18 = *(v20 + 56);

    return v18(a4, 1, 1, v8);
  }
}

uint64_t sub_10590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v34[1] = a1;
  v41 = sub_187C(&qword_70F28, &qword_5C2A0);
  __chkstk_darwin(v41);
  v5 = v34 - v4;
  v6 = sub_59150();
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_187C(&qword_70EF8, &qword_5C288);
  v35 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v34 - v10;
  v40 = sub_187C(&qword_70EF0, &qword_5C280);
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v13 = v34 - v12;
  v14 = sub_187C(&qword_70F30, &qword_5C2A8);
  v39 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v34 - v15;
  v17 = *(sub_1FFE4() + 16);

  if (v17)
  {
    v34[0] = v14;
    __chkstk_darwin(v18);
    sub_187C(&qword_70F38, &qword_5C2B0);
    v36 = a3;
    sub_16114();
    sub_592A0();
    sub_59140();
    v19 = sub_6ED0(&qword_70F00, &qword_70EF8, &qword_5C288, &protocol conformance descriptor for List<A, B>);
    sub_59500();
    (*(v38 + 8))(v8, v6);
    (*(v35 + 8))(v11, v9);
    *&v46 = v9;
    *(&v46 + 1) = v6;
    *&v47 = v19;
    *(&v47 + 1) = &protocol witness table for InsetGroupedListStyle;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v21 = v40;
    sub_59470();
    (*(v37 + 8))(v13, v21);
    v22 = v39;
    v23 = v34[0];
    (*(v39 + 16))(v5, v16, v34[0]);
    swift_storeEnumTagMultiPayload();
    sub_187C(&qword_70EE0, &qword_5C278);
    sub_1600C();
    *&v46 = v21;
    *(&v46 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_59100();
    return (*(v22 + 8))(v16, v23);
  }

  else
  {
    v53._object = 0x8000000000066AA0;
    v53._countAndFlagsBits = 0xD000000000000010;
    sub_2B8E0(v53, 0xD000000000000039, 0x8000000000066AC0);
    j_nullsub_1();
    v26 = v25;
    v28 = v27;
    sub_597D0();
    sub_58D00();
    *v5 = v26;
    *(v5 + 1) = v28;
    v29 = v51;
    *(v5 + 5) = v50;
    *(v5 + 6) = v29;
    *(v5 + 7) = v52;
    v30 = v47;
    *(v5 + 1) = v46;
    *(v5 + 2) = v30;
    v31 = v49;
    *(v5 + 3) = v48;
    *(v5 + 4) = v31;
    swift_storeEnumTagMultiPayload();
    sub_187C(&qword_70EE0, &qword_5C278);
    sub_1600C();
    v32 = sub_6ED0(&qword_70F00, &qword_70EF8, &qword_5C288, &protocol conformance descriptor for List<A, B>);
    v42 = v9;
    v43 = v6;
    v44 = v32;
    v45 = &protocol witness table for InsetGroupedListStyle;
    v33 = swift_getOpaqueTypeConformance2();
    v42 = v40;
    v43 = v33;
    swift_getOpaqueTypeConformance2();
    return sub_59100();
  }
}

uint64_t sub_10C48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_299C8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a6;
  v62 = a2;
  v64 = a8;
  v65 = sub_187C(&qword_70F98, &qword_5C300);
  v13 = *(v65 - 8);
  __chkstk_darwin(v65);
  v15 = &v54 - v14;
  v16 = sub_187C(&qword_71030, &qword_5C348);
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    v56 = a7;
    v61 = a4;
    v57 = v15;
    v58 = v16;
    v59 = v13;
    v60 = &v54 - v17;
    v20 = 0;
    v21 = _swiftEmptyArrayStorage;
    v22 = 32;
    v55 = 32;
    do
    {
      v23 = v22 + 72 * v20;
      v24 = v20;
      while (1)
      {
        if (v24 >= v19)
        {
          __break(1u);
LABEL_20:
          __break(1u);

          __break(1u);
          return result;
        }

        v25 = *(a1 + v23 + 48);
        v67[2] = *(a1 + v23 + 32);
        v67[3] = v25;
        v68 = *(a1 + v23 + 64);
        v26 = *(a1 + v23 + 16);
        v67[0] = *(a1 + v23);
        v67[1] = v26;
        v20 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_20;
        }

        sub_E9C0(v67, v66);
        if (sub_35DA4(a5, v67))
        {
          break;
        }

        sub_B818(v67);
        ++v24;
        v23 += 72;
        if (v20 == v19)
        {
          goto LABEL_14;
        }
      }

      v27 = sub_340DC(v67);
      sub_B818(v67);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_14F20(0, *(v21 + 2) + 1, 1, v21);
      }

      v29 = *(v21 + 2);
      v28 = *(v21 + 3);
      if (v29 >= v28 >> 1)
      {
        v21 = sub_14F20((v28 > 1), v29 + 1, 1, v21);
      }

      *(v21 + 2) = v29 + 1;
      v21[v29 + 32] = v27;
      v22 = v55;
    }

    while (v20 != v19);
LABEL_14:
    v66[0] = v21;

    sub_14520(v66);

    v30 = *(v66[0] + 2);
    v31 = v60;
    if (v30)
    {
      v32 = v66[0][v30 + 31];
    }

    else
    {

      v32 = 2;
    }

    v43 = v61;
    v66[0] = a1;
    v44 = swift_allocObject();
    v45 = v63;
    *(v44 + 16) = a5;
    *(v44 + 24) = v45;
    v46 = v56;
    *(v44 + 32) = v56;
    *(v44 + 40) = a1;
    *(v44 + 48) = v32;
    *(v44 + 56) = v62;
    *(v44 + 64) = a3;
    *(v44 + 72) = v43;
    swift_bridgeObjectRetain_n();
    v47 = a5;
    sub_B848(v45, v46);

    sub_187C(&qword_71038, &qword_5C350);
    sub_187C(&qword_70FA8, &qword_5C308);
    sub_6ED0(&qword_71040, &qword_71038, &qword_5C350, &protocol conformance descriptor for [A]);
    v48 = sub_168B8();
    sub_1702C(v48, v49, v50);
    v51 = v57;
    sub_59730();
    v52 = v59;
    v53 = v65;
    (*(v59 + 16))(v31, v51, v65);
    swift_storeEnumTagMultiPayload();
    sub_187C(&qword_70A20, &unk_5AB48);
    sub_2118();
    sub_16834();
    sub_59100();
    return (*(v52 + 8))(v51, v53);
  }

  else
  {
    v69._object = 0x8000000000066B00;
    v69._countAndFlagsBits = 0xD000000000000016;
    *&v67[0] = sub_2B8E0(v69, 0xD00000000000002FLL, 0x8000000000066B20);
    *(&v67[0] + 1) = v33;
    sub_66D8(*&v67[0], v33, v34);
    v35 = sub_59310();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    nullsub_1();
    *v18 = v35;
    *(v18 + 1) = v37;
    v18[16] = v39 & 1;
    *(v18 + 3) = v41;
    swift_storeEnumTagMultiPayload();
    sub_187C(&qword_70A20, &unk_5AB48);
    sub_2118();
    sub_16834();
    return sub_59100();
  }
}

uint64_t sub_11250@<X0>(void *a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v202 = a5;
  v191 = a4;
  v190 = a3;
  v198 = a1;
  v196 = a6;
  v7 = sub_187C(&qword_71028, &qword_5C340);
  v187 = *(v7 - 8);
  __chkstk_darwin(v7);
  v186 = &v176 - v8;
  v9 = sub_187C(&qword_70FF0, &qword_5C328);
  v189 = *(v9 - 8);
  __chkstk_darwin(v9);
  v188 = &v176 - v10;
  v194 = sub_187C(&qword_71068, &qword_5C368);
  __chkstk_darwin(v194);
  v195 = &v176 - v11;
  v199 = sub_187C(&qword_71070, &qword_5C370);
  __chkstk_darwin(v199);
  v200 = (&v176 - v12);
  v193 = sub_187C(&qword_70FB8, &qword_5C310);
  __chkstk_darwin(v193);
  v14 = &v176 - v13;
  v192 = sub_187C(&qword_70FC8, &qword_5C318);
  __chkstk_darwin(v192);
  v16 = &v176 - v15;
  v17 = sub_187C(&qword_71078, &qword_5C378);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v176 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v176 - v21;
  result = sub_51BC4();
  v201 = a2;
  v197 = v7;
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  v182 = v20;
  v185 = v22;
  v181 = v16;
  v25 = *a2;
  v24 = *(a2 + 1);
  v26 = *(a2 + 16);
  sub_B4D0(*a2, v24, v26);
  v27 = a2;
  v28 = sub_51D10();
  if (!v30)
  {
    goto LABEL_6;
  }

  v32 = v28;
  v33 = v29;
  v34 = v30;
  v35 = v31;
  v36 = sub_51DE0();
  if (!v38)
  {

    v27 = v201;
LABEL_6:
    a2 = v27;
    if (!sub_51BB0() || (v47 = *(v27 + 48), !*(v47 + 16)))
    {
      result = sub_EAAC(v25, v24, v26);
      goto LABEL_14;
    }

    v183 = v14;
    v184 = v9;
    v48 = *(v47 + 40);
    v179 = *(v47 + 32);
    v49 = v179;
    v50 = *(v47 + 48);
    v51 = *(v47 + 56);
    v180 = *(v47 + 57);
    v52 = v202;
    swift_unownedRetainStrong();

    sub_B4D0(v25, v24, v26);
    sub_E9C0(a2, &v205);

    swift_unownedRetain();

    v53 = swift_allocObject();
    v54 = *a2;
    *(v53 + 104) = a2[1];
    v55 = a2[3];
    *(v53 + 120) = a2[2];
    *(v53 + 136) = v55;
    *(v53 + 16) = 0;
    *(v53 + 24) = 0;
    *(v53 + 32) = v25;
    *(v53 + 40) = v24;
    *(v53 + 48) = v26;
    *(v53 + 56) = v49;
    *(v53 + 64) = v48;
    v56 = v48;
    *(v53 + 72) = v50;
    *(v53 + 80) = v51;
    LOBYTE(v48) = v180;
    *(v53 + 81) = v180;
    v57 = *(a2 + 8);
    *(v53 + 88) = v54;
    *(v53 + 152) = v57;
    *(v53 + 160) = v52;
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    *(v58 + 24) = 0;
    *(v58 + 32) = v52;
    *(v58 + 40) = v25;
    *(v58 + 48) = v24;
    *(v58 + 56) = v26;
    *(v58 + 64) = v179;
    *(v58 + 72) = v56;
    *(v58 + 80) = v50;
    *(v58 + 88) = v51;
    *(v58 + 89) = v48;
    goto LABEL_9;
  }

  v183 = v14;
  v184 = v9;
  v40 = v202;
  v178 = v36;
  v180 = v39;
  v177 = v37;
  v179 = v38;
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v40;
  *(v41 + 40) = v25;
  *(v41 + 48) = v24;
  *(v41 + 56) = v26;
  *(v41 + 64) = v32;
  *(v41 + 72) = v33;
  *(v41 + 80) = v34;
  v42 = v35 & 1;
  *(v41 + 88) = v35 & 1;
  v43 = (v35 >> 8) & 1;
  *(v41 + 89) = v43;
  swift_unownedRetainStrong();
  sub_B4D0(v25, v24, v26);
  swift_unownedRetain();

  swift_unownedRelease();
  swift_unownedRetain();

  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = v40;
  *(v44 + 40) = v25;
  *(v44 + 48) = v24;
  *(v44 + 56) = v26;
  *(v44 + 64) = v32;
  *(v44 + 72) = v33;
  *(v44 + 80) = v34;
  *(v44 + 88) = v42;
  *(v44 + 89) = v43;
  v45 = v177;
  *(v44 + 96) = v178;
  *(v44 + 104) = v45;
  *(v44 + 112) = v179;
  v46 = BYTE1(v180);
  *(v44 + 120) = v180 & 1;
  *(v44 + 121) = v46 & 1;
LABEL_9:
  result = sub_59710();
  v59 = v207;
  a2 = v201;
  v9 = v184;
  v14 = v183;
  v60 = v181;
  v61 = v185;
  if (v206)
  {
    v189 = v206;
    v188 = v205;
    v62 = sub_51D10();
    if (v63)
    {
      v64 = v60;
      v65 = v61;
      v66 = v59;
      v67 = v182;
      sub_35570(v198, a2, v62, v182);

      v68 = type metadata accessor for FeaturePreviewConfiguration(0);
      v69 = *(v68 - 8);
      v70 = v67;
      v59 = v66;
      v61 = v65;
      v60 = v64;
      if ((*(v69 + 48))(v70, 1, v68) != 1)
      {
        sub_17FFC(v182, v61, type metadata accessor for FeaturePreviewConfiguration);
        (*(v69 + 56))(v61, 0, 1, v68);
LABEL_77:
        v167 = *(a2 + 3);
        v168 = *(a2 + 4);

        sub_E9C0(a2, &v205);
        v169 = v188;

        v170 = v189;

        sub_47354(v167, v168, a2, v191, v190 & 1, v169, v170, v59, v60);
        KeyPath = swift_getKeyPath();
        v172 = (v60 + *(v192 + 36));
        v173 = sub_187C(&qword_70FE0, &qword_5C320);
        v174 = v185;
        sub_6610(v185, v172 + *(v173 + 28), &qword_71078, &qword_5C378);
        *v172 = KeyPath;
        sub_6610(v60, v200, &qword_70FC8, &qword_5C318);
        swift_storeEnumTagMultiPayload();
        sub_169D0();
        sub_16AB8();
        sub_59100();
        sub_6610(v14, v195, &qword_70FB8, &qword_5C310);
        swift_storeEnumTagMultiPayload();
        sub_16944();
        sub_16C24();
        sub_59100();

        sub_6678(v14, &qword_70FB8, &qword_5C310);
        sub_6678(v60, &qword_70FC8, &qword_5C318);
        return sub_6678(v174, &qword_71078, &qword_5C378);
      }
    }

    else
    {
      v161 = type metadata accessor for FeaturePreviewConfiguration(0);
      (*(*(v161 - 8) + 56))(v182, 1, 1, v161);
    }

    v162 = sub_51DE0();
    if (v163)
    {
      sub_35570(v198, a2, v162, v61);
    }

    else
    {
      v164 = type metadata accessor for FeaturePreviewConfiguration(0);
      (*(*(v164 - 8) + 56))(v61, 1, 1, v164);
    }

    v165 = type metadata accessor for FeaturePreviewConfiguration(0);
    v166 = v182;
    if ((*(*(v165 - 8) + 48))(v182, 1, v165) != 1)
    {
      sub_6678(v166, &qword_71078, &qword_5C378);
    }

    goto LABEL_77;
  }

LABEL_14:
  if (*(a2 + 40))
  {
    result = sub_51BB0();
    if ((result & 1) == 0)
    {
      v183 = v14;
      v184 = v9;
      v71 = *(a2 + 6);
      v72 = *(v71 + 16);
      if (v72)
      {
        v73 = 0;
        v74 = v71 + 32;
        v75 = _swiftEmptyArrayStorage;
        while (v73 < v72)
        {
          v76 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            goto LABEL_82;
          }

          v77 = *(v74 + 32 * v73++);

          v78 = sub_1FAA4();
          if (*(v78 + 16))
          {
            v79 = sub_143B0(*v201, *(v201 + 8), *(v201 + 16));
            if (v80)
            {
              v81 = *(*(v78 + 56) + 8 * v79);

              if (*(v81 + 16))
              {
                v82 = 0;
                v83 = 1 << *(v81 + 32);
                if (v83 < 64)
                {
                  v84 = ~(-1 << v83);
                }

                else
                {
                  v84 = -1;
                }

                v85 = v84 & *(v81 + 56);
                v86 = (v83 + 63) >> 6;
                do
                {
                  if (!v85)
                  {
                    while (1)
                    {
                      v87 = v82 + 1;
                      if (__OFADD__(v82, 1))
                      {
                        break;
                      }

                      if (v87 >= v86)
                      {

                        goto LABEL_19;
                      }

                      v85 = *(v81 + 56 + 8 * v87);
                      ++v82;
                      if (v85)
                      {
                        v82 = v87;
                        goto LABEL_35;
                      }
                    }

                    __break(1u);
                    goto LABEL_79;
                  }

                  v87 = v82;
LABEL_35:
                  v88 = __clz(__rbit64(v85));
                  v85 &= v85 - 1;
                }

                while (*(*(v81 + 48) + ((v87 << 9) | (8 * v88))) != v77);

                v89 = swift_allocObject();
                v89[2] = 0;
                v89[3] = 0;
                v89[4] = v77;
                v90 = v202;
                swift_unownedRetainStrong();
                swift_unownedRetain();

                v91 = swift_allocObject();
                *(v91 + 16) = 0;
                *(v91 + 24) = 0;
                *(v91 + 32) = v90;
                v92 = v201;
                v93 = *v201;
                *(v91 + 56) = *(v201 + 16);
                v94 = *(v92 + 48);
                *(v91 + 72) = *(v92 + 32);
                *(v91 + 88) = v94;
                *(v91 + 104) = *(v92 + 64);
                *(v91 + 40) = v93;
                sub_E9C0(v92, &v205);
                sub_59710();

                v95 = v205;
                v96 = v206;
                v97 = v207;
                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_15014(0, v75[2] + 1, 1, v75);
                  v75 = result;
                }

                v99 = v75[2];
                v98 = v75[3];
                if (v99 >= v98 >> 1)
                {
                  result = sub_15014((v98 > 1), v99 + 1, 1, v75);
                  v75 = result;
                }

                v75[2] = v99 + 1;
                v100 = &v75[3 * v99];
                v100[4] = v95;
                v100[5] = v96;
                v100[6] = v97;
                if (v76 != v72)
                {
                  continue;
                }

                goto LABEL_45;
              }
            }
          }

LABEL_19:

          if (v76 == v72)
          {
            goto LABEL_45;
          }
        }

        goto LABEL_81;
      }

      v75 = _swiftEmptyArrayStorage;
LABEL_45:
      if (v75[2])
      {
        v101 = v201;
        v203 = *(v201 + 48);
        v204 = v203;
        v102 = swift_allocObject();
        v103 = v198;
        *(v102 + 16) = v202;
        *(v102 + 24) = v103;
        v104 = *(v101 + 48);
        *(v102 + 64) = *(v101 + 32);
        *(v102 + 80) = v104;
        v105 = *(v101 + 64);
        v106 = *(v101 + 16);
        *(v102 + 32) = *v101;
        *(v102 + 48) = v106;
        *(v102 + 96) = v105;
        *(v102 + 104) = v75;
        *(v102 + 112) = v191;
        sub_E9C0(v101, &v205);
        sub_6610(&v204, &v205, &qword_71090, &qword_5C3B0);

        v107 = v103;
        sub_187C(&qword_71090, &qword_5C3B0);
        sub_187C(&qword_71000, &qword_5C330);
        sub_6ED0(&qword_71098, &qword_71090, &qword_5C3B0, &protocol conformance descriptor for [A]);
        v108 = sub_16B3C();
        v175 = sub_174A8(v108, v109, v110);
        v111 = v188;
        sub_59730();
        v112 = v189;
        v113 = v184;
        (*(v189 + 16))(v200, v111, v184);
        swift_storeEnumTagMultiPayload();
        sub_169D0();
        sub_16AB8();
        v114 = v183;
        sub_59100();
        sub_6610(v114, v195, &qword_70FB8, &qword_5C310);
        swift_storeEnumTagMultiPayload();
        sub_16944();
        sub_16C24();
        sub_59100();
        sub_6678(v114, &qword_70FB8, &qword_5C310);
        return (*(v112 + 8))(v111, v113);
      }

      a2 = v201;
    }
  }

  v115 = *(a2 + 6);
  v116 = *(v115 + 16);
  if (!v116)
  {
    v200 = _swiftEmptyArrayStorage;
LABEL_70:
    v149 = v200;
    v204 = v200;
    swift_getKeyPath();
    v150 = swift_allocObject();
    v151 = v201;
    v152 = v202;
    v153 = *(v201 + 48);
    *(v150 + 48) = *(v201 + 32);
    *(v150 + 64) = v153;
    *(v150 + 80) = *(v151 + 64);
    v154 = *(v151 + 16);
    *(v150 + 16) = *v151;
    *(v150 + 32) = v154;
    *(v150 + 88) = v191;
    *(v150 + 96) = v149;
    *(v150 + 104) = v190 & 1;
    v155 = v198;
    *(v150 + 112) = v152;
    *(v150 + 120) = v155;
    v156 = swift_allocObject();
    *(v156 + 16) = sub_17350;
    *(v156 + 24) = v150;
    sub_E9C0(v151, &v205);

    v157 = v155;

    sub_187C(&qword_71080, &qword_5C3A8);
    sub_6ED0(&qword_71088, &qword_71080, &qword_5C3A8, &protocol conformance descriptor for [A]);
    v175 = sub_169D0();
    v158 = v186;
    sub_59720();
    v159 = v187;
    v160 = v197;
    (*(v187 + 16))(v195, v158, v197);
    swift_storeEnumTagMultiPayload();
    sub_16944();
    sub_16C24();
    sub_59100();
    return (*(v159 + 8))(v158, v160);
  }

  v117 = 0;
  v118 = v115 + 57;
  v200 = _swiftEmptyArrayStorage;
  v185 = (v115 + 57);
LABEL_50:
  v119 = (v118 + 32 * v117);
  v120 = v117;
  while (v120 < v116)
  {
    v117 = v120 + 1;
    if (__OFADD__(v120, 1))
    {
      goto LABEL_80;
    }

    v121 = *(v119 - 25);
    v122 = *(v119 - 17);
    v123 = *(v119 - 9);
    v124 = *(v119 - 1);
    v125 = *v119;
    if (*v119)
    {
      v126 = 256;
    }

    else
    {
      v126 = 0;
    }

    if (sub_51F88(v121, v122, v123, v126 | v124) == 2)
    {
      goto LABEL_62;
    }

    result = sub_51F88(v121, v122, v123, v126 | v124);
    if (result == 2)
    {
      goto LABEL_83;
    }

    if (result)
    {
LABEL_62:
      if (v116 != 2 || sub_51F88(v121, v122, v123, v126 | v124) != 2 || (v124 & 1) == 0)
      {
        v127 = v201;
        v128 = *(v201 + 8);
        v199 = *v201;
        v129 = v199;
        v188 = v128;
        v130 = *(v201 + 16);
        swift_unownedRetainStrong();

        v131 = v129;
        v132 = v188;
        LODWORD(v189) = v130;
        sub_B4D0(v131, v188, v130);
        sub_E9C0(v127, &v205);

        sub_B4D0(v199, v132, v130);
        swift_unownedRetain();

        v133 = swift_allocObject();
        v134 = *v127;
        *(v133 + 104) = *(v127 + 16);
        v135 = *(v127 + 48);
        *(v133 + 120) = *(v127 + 32);
        *(v133 + 136) = v135;
        *(v133 + 16) = 0;
        *(v133 + 24) = 0;
        v136 = v188;
        *(v133 + 32) = v199;
        *(v133 + 40) = v136;
        *(v133 + 48) = v189;
        *(v133 + 56) = v121;
        *(v133 + 64) = v122;
        *(v133 + 72) = v123;
        *(v133 + 80) = v124;
        *(v133 + 81) = v125;
        v137 = *(v127 + 64);
        *(v133 + 88) = v134;
        *(v133 + 152) = v137;
        *(v133 + 160) = v202;
        swift_unownedRetainStrong();
        v138 = swift_unownedRetain();

        v139 = swift_allocObject();
        *(v139 + 16) = 0;
        *(v139 + 24) = 0;
        v140 = v199;
        *(v139 + 32) = v138;
        *(v139 + 40) = v140;
        *(v139 + 48) = v136;
        *(v139 + 56) = v189;
        *(v139 + 64) = v121;
        *(v139 + 72) = v122;
        *(v139 + 80) = v123;
        *(v139 + 88) = v124;
        *(v139 + 89) = v125;
        sub_59710();
        v142 = v205;
        v141 = v206;
        LODWORD(v132) = v207;
        result = swift_isUniquelyReferenced_nonNull_native();
        v199 = v141;
        LODWORD(v189) = v132;
        if ((result & 1) == 0)
        {
          result = sub_1515C(0, v200[2] + 1, 1, v200);
          v200 = result;
        }

        v144 = v200[2];
        v143 = v200[3];
        if (v144 >= v143 >> 1)
        {
          result = sub_1515C((v143 > 1), v144 + 1, 1, v200);
          v200 = result;
        }

        v145 = v200;
        v200[2] = v144 + 1;
        v146 = &v145[7 * v144];
        v146[4] = v121;
        v146[5] = v122;
        v146[6] = v123;
        *(v146 + 56) = v124;
        *(v146 + 57) = v125;
        v147 = WORD2(v205);
        *(v146 + 58) = v205;
        *(v146 + 31) = v147;
        v148 = v199;
        v146[8] = v142;
        v146[9] = v148;
        *(v146 + 80) = v189;
        v118 = v185;
        if (v117 != v116)
        {
          goto LABEL_50;
        }

        goto LABEL_70;
      }
    }

    ++v120;
    v119 += 32;
    if (v117 == v116)
    {
      goto LABEL_70;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}