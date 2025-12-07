double sub_86150@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v92 = a5;
  v93 = a2;
  v8 = sub_1158D0();
  v88 = *(v8 - 8);
  v89 = v8;
  __chkstk_darwin(v8);
  v85 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_115760();
  v86 = *(v10 - 8);
  v87 = v10;
  __chkstk_darwin(v10);
  v83 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v84 = &v80 - v13;
  __chkstk_darwin(v14);
  v91 = &v80 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = sub_117620();
  v17 = *(v90 - 1);
  __chkstk_darwin(v90);
  v19 = &v80 - v18;
  v20 = *(a3 - 8);
  __chkstk_darwin(v21);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v25);
  v27 = &v80 - v26;
  v81 = type metadata accessor for DynamicUsageView(0, a3, a4, v28);
  sub_116DC0();
  v82 = a1;
  sub_116D60();
  (*(a4 + 56))(a3, a4);
  v29 = v23;
  v30 = v24;
  (*(v20 + 8))(v29, a3);
  if ((*(v24 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v17 + 8))(v19, v90);
LABEL_8:
    v63 = sub_8D8B4()[3];
    isa = sub_1156B0().super.isa;
    v65 = [v63 stringFromDate:isa];

    v66 = sub_1171B0();
    v68 = v67;

    *&v100 = v66;
    *(&v100 + 1) = v68;
    sub_4869C(v69, v70, v71);
    v94 = sub_116900();
    v95 = v72;
    v96 = v73 & 1;
    v97 = v74;
    v98 = 257;
    v99 = 1;
    sub_46F9C(&qword_184328, &qword_1280D0);
    sub_8C768();
    sub_116470();
    goto LABEL_9;
  }

  (*(v24 + 32))(v27, v19, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 32))(AssociatedTypeWitness);
  if (v32)
  {
    (*(v24 + 8))(v27, AssociatedTypeWitness);
    goto LABEL_8;
  }

  v90 = v27;
  v33 = v85;
  sub_1158A0();
  sub_115830();
  v34 = v89;
  v35 = *(v88 + 8);
  v35(v33, v89);
  sub_1158A0();
  v36 = v83;
  sub_115700();
  v37 = v84;
  sub_115830();
  v38 = *(v86 + 8);
  v39 = v36;
  v40 = v87;
  v38(v39, v87);
  v35(v33, v34);
  v41 = v91;
  LOBYTE(v35) = sub_115720();
  v38(v37, v40);
  v38(v41, v40);
  if ((v35 & 1) == 0)
  {
    (*(v30 + 8))(v90, AssociatedTypeWitness);
    goto LABEL_8;
  }

  v42 = sub_8D8B4()[3];
  v43 = sub_1156B0().super.isa;
  v44 = [v42 stringFromDate:v43];

  v45 = sub_1171B0();
  v47 = v46;

  *&v100 = v45;
  *(&v100 + 1) = v47;
  sub_4869C(v48, v49, v50);
  v51 = sub_116900();
  v53 = v52;
  LOBYTE(v44) = v54;
  v55 = v90;
  *&v100 = sub_82754(v90, v81);
  v91 = sub_116890();
  v57 = v56;
  v93 = AssociatedTypeWitness;
  v59 = v58;
  v60 = v30;
  v62 = v61;
  sub_48928(v51, v53, v44 & 1);

  v94 = v91;
  v95 = v57;
  v96 = v59 & 1;
  v97 = v62;
  v98 = 257;
  v99 = 0;
  sub_46F9C(&qword_184328, &qword_1280D0);
  sub_8C768();
  sub_116470();
  (*(v60 + 8))(v55, v93);
LABEL_9:
  result = *&v100;
  v76 = v101;
  v77 = v102;
  v78 = v103;
  v79 = v92;
  *v92 = v100;
  v79[1] = v76;
  *(v79 + 16) = v77;
  *(v79 + 34) = v78;
  return result;
}

uint64_t sub_868E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v23 = a1;
  v24 = a4;
  v25 = a5;
  v7 = type metadata accessor for DynamicUsageView(0, a3, a4, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  v11 = sub_115A20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v23, v11, v14);
  (*(v8 + 16))(v10, a2, v7);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = (v13 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = v24;
  *(v18 + 16) = a3;
  *(v18 + 24) = v19;
  (*(v12 + 32))(v18 + v16, v15, v11);
  result = (*(v8 + 32))(v18 + v17, v10, v7);
  v21 = v25;
  *v25 = sub_8BA44;
  v21[1] = v18;
  return result;
}

uint64_t sub_86AFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v63 = a4;
  v64 = a3;
  v50 = a2;
  v62 = a5;
  v57 = sub_116490();
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DynamicUsageView(0, a3, a4, v10);
  v45 = *(v59 - 8);
  v61 = *(v45 + 64);
  __chkstk_darwin(v59);
  v12 = &v42 - v11;
  v13 = sub_115A20();
  v14 = *(v13 - 8);
  v60 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  sub_1159F0();
  type metadata accessor for CGRect(0);
  sub_1160A0();

  v17 = v74;
  v18 = v75;
  v19 = sub_116B50();
  sub_1167F0();
  *&v65 = v19;
  WORD4(v65) = 256;
  *(&v65 + 10) = v72;
  HIWORD(v65) = v73;
  v66 = v69;
  v67 = v70;
  v68 = v71;
  v20 = *(v14 + 16);
  v53 = v14 + 16;
  v55 = v20;
  v44 = v16;
  v20(v16, a1, v13);
  v21 = v45;
  v22 = *(v45 + 16);
  v49 = v45 + 16;
  v51 = v22;
  v43 = v12;
  v23 = v59;
  v22(v12, a2, v59);
  v48 = *(v14 + 80);
  v24 = (v48 + 64) & ~v48;
  v47 = *(v21 + 80);
  v25 = (v60 + v47 + v24) & ~v47;
  v52 = v48 | v47;
  v26 = swift_allocObject();
  v27 = v63;
  *(v26 + 16) = v64;
  *(v26 + 24) = v27;
  *(v26 + 32) = v17;
  *(v26 + 48) = v18;
  v46 = *(v14 + 32);
  v28 = v16;
  v29 = v13;
  v46(v26 + v24, v28, v13);
  v30 = *(v21 + 32);
  v30(v26 + v25, v12, v23);
  v31 = v56;
  sub_1164F0();
  sub_46F9C(&qword_184280, &unk_128080);
  sub_8BF50();
  v32 = v57;
  sub_116A10();

  (*(v58 + 8))(v31, v32);
  v74 = v65;
  v75 = v66;
  v76 = v67;
  v77 = v68;
  sub_488C8(&v74, &qword_184280, &unk_128080);
  v33 = v43;
  v34 = v59;
  v51(v43, v50, v59);
  v35 = v44;
  v55(v44, v54, v29);
  v36 = (v47 + 32) & ~v47;
  v37 = (v61 + v48 + v36) & ~v48;
  v38 = swift_allocObject();
  v39 = v63;
  *(v38 + 16) = v64;
  *(v38 + 24) = v39;
  v30(v38 + v36, v33, v34);
  v46(v38 + v37, v35, v29);
  result = sub_46F9C(&qword_1842B0, &qword_128098);
  v41 = (v62 + *(result + 36));
  *v41 = sub_8C324;
  v41[1] = v38;
  v41[2] = 0;
  v41[3] = 0;
  return result;
}

void sub_8712C(uint64_t a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __chkstk_darwin(a1);
  v16 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  __chkstk_darwin(v16 - 8);
  v18 = &v28 - v17;
  v19 = sub_115760();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v28 - v24;
  v29.origin.x = a3;
  v29.origin.y = a4;
  v29.size.width = a5;
  v29.size.height = a6;
  MinX = CGRectGetMinX(v29);
  v30.origin.x = a3;
  v30.origin.y = a4;
  v30.size.width = a5;
  v30.size.height = a6;
  MaxX = CGRectGetMaxX(v30);
  if (MinX > MaxX)
  {
    __break(1u);
  }

  else if (MinX <= a2 && MaxX > a2)
  {
    v31.origin.x = a3;
    v31.origin.y = a4;
    v31.size.width = a5;
    v31.size.height = a6;
    CGRectGetMinX(v31);
    sub_115A00();
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_488C8(v18, &qword_182EF0, &unk_124BB0);
    }

    else
    {
      (*(v20 + 32))(v25, v18, v19);
      (*(v20 + 16))(v22, v25, v19);
      sub_116DC0();
      sub_116D60();
      (*(*(a9 + 8) + 56))(v22, a8);
      sub_116D70();
      (*(v20 + 8))(v25, v19);
    }
  }
}

uint64_t sub_87430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_46F9C(&qword_184128, &qword_127D40);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_115A20();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  type metadata accessor for DynamicUsageView(0, a3, a4, v12);
  return sub_7D9E0(v9);
}

void sub_87554(uint64_t a1)
{
  v2 = sub_115760();
  v69 = *(v2 - 8);
  v70 = v2;
  __chkstk_darwin(v2);
  v68 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v66 = v65 - v6;
  v7 = sub_117620();
  v80 = v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v71 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v74 = v65 - v8;
  v79 = *(v7 - 8);
  __chkstk_darwin(v9);
  v76 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v65 - v12;
  __chkstk_darwin(v14);
  v72 = v65 - v15;
  v16 = *(v4 - 8);
  __chkstk_darwin(v17);
  v19 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v65 - v21;
  sub_116DC0();
  sub_116D60();
  (*(v5 + 56))(v4, v5);
  v23 = *(v16 + 8);
  v23(v22, v4);
  v24 = v74;
  sub_116D60();
  v25 = *(v5 + 48);
  v67 = v5;
  v26 = v25(v4, v5);
  v65[1] = v4;
  v23(v19, v4);
  v81 = v26;
  v27 = AssociatedTypeWitness;
  sub_1173A0();
  swift_getWitnessTable();
  sub_1170F0();

  v28 = *(TupleTypeMetadata2 + 48);
  v29 = v79;
  v30 = *(v79 + 16);
  v31 = v72;
  v32 = v80;
  v30(v24);
  v73 = v28;
  (v30)(&v24[v28], v13, v32);
  v33 = *(v77 + 48);
  if (v33(v24, 1, v27) == 1)
  {
    v34 = *(v29 + 8);
    v35 = v13;
    v36 = v80;
    v34(v35, v80);
    v34(v31, v36);
    v37 = v24;
    if (v33(&v24[v73], 1, v27) == 1)
    {
      v34(v24, v80);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v38 = v31;
  (v30)(v76, v24, v80);
  v39 = v73;
  v37 = v24;
  if (v33(&v24[v73], 1, v27) == 1)
  {
    v40 = v80;
    v41 = *(v79 + 8);
    v41(v13, v80);
    v41(v38, v40);
    (*(v77 + 8))(v76, v27);
LABEL_6:
    (*(v71 + 8))(v37, TupleTypeMetadata2);
LABEL_7:
    v42 = sub_117170();
    v43 = BatteryUILocalization(v42);

    if (v43)
    {
      sub_1171B0();

      return;
    }

    __break(1u);
    goto LABEL_13;
  }

  v44 = v77;
  v45 = v66;
  (*(v77 + 32))(v66, &v24[v39], v27);
  swift_getAssociatedConformanceWitness();
  v46 = v76;
  v47 = sub_117160();
  v48 = *(v44 + 8);
  v48(v45, v27);
  v49 = *(v79 + 8);
  v50 = v13;
  v51 = v80;
  v49(v50, v80);
  v49(v38, v51);
  v48(v46, v27);
  v49(v24, v51);
  if ((v47 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v52 = sub_117170();
  v53 = BatteryUILocalization(v52);

  if (v53)
  {
    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_124890;
    v55 = sub_8D8B4()[2];
    v56 = v68;
    sub_115750();
    isa = sub_1156B0().super.isa;
    (*(v69 + 8))(v56, v70);
    v58 = [v55 stringFromDate:isa];

    v59 = sub_1171B0();
    v61 = v60;

    *(v54 + 56) = &type metadata for String;
    *(v54 + 64) = sub_53EE8(v62, v63, v64);
    *(v54 + 32) = v59;
    *(v54 + 40) = v61;
    sub_117180();

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_87D88(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_117620();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v9);
  v12 = &v23[-v11];
  v26 = (*(a2 + 48))(a1, a2, v10);
  v24 = a1;
  v25 = a2;
  sub_1173A0();
  swift_getWitnessTable();
  sub_1172C0();

  (*(v6 + 16))(v8, v12, v5);
  v13 = *(AssociatedTypeWitness - 8);
  if ((*(v13 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v6 + 8))(v8, v5);
    v15 = 0.0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v19 = v18;
    result = (*(v13 + 8))(v8, AssociatedTypeWitness);
    v15 = 0.0;
    if ((v19 & 1) == 0)
    {
      v15 = *&v17;
    }
  }

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = v15;
  if (v15 < 101)
  {
    goto LABEL_13;
  }

  v15 = ceil(v15 / 50.0) * 50.0;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_25;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = 0x43E0000000000000;
  if (v15 < 9.22337204e18)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_13:
  if (v20 < 51)
  {
    goto LABEL_18;
  }

  v15 = ceil(v15 / 50.0) * 50.0;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v15 < 9.22337204e18)
  {
LABEL_21:
    v21 = v15;
    sub_46F9C(&qword_183D08, &unk_127E20);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1246D0;
    *(v22 + 32) = 0;
    *(v22 + 40) = v21 / 2;
    *(v22 + 48) = v21;
    (*(v6 + 8))(v12, v5);
    return v22;
  }

  __break(1u);
LABEL_18:
  v15 = ceil(v15 / 10.0) * 10.0;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v15 < 9.22337204e18)
  {
    goto LABEL_21;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_881D0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1158D0();
  v55 = *(v5 - 8);
  v56 = v5;
  __chkstk_darwin(v5);
  v54 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_115760();
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = &v45 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_117620();
  v52 = *(v12 - 8);
  v53 = v12;
  __chkstk_darwin(v12);
  v50 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v45 - v16;
  v18 = *(a2 + 32);
  v51 = v2;
  v19 = a1;
  v49 = v18;
  v60 = (v18)(a1, a2, v15);
  sub_1173A0();
  swift_getWitnessTable();
  sub_117490();

  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 48);
  if (v21(v17, 1, AssociatedTypeWitness) == 1)
  {
    v22 = v17;
LABEL_3:
    (*(v52 + 8))(v22, v53);
    goto LABEL_5;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = *(AssociatedConformanceWitness + 32);
  v47 = AssociatedConformanceWitness;
  v45 = v24(AssociatedTypeWitness);
  v26 = v25;
  v46 = *(v20 + 8);
  v46(v17, AssociatedTypeWitness);
  if (v26)
  {
    goto LABEL_5;
  }

  v60 = v49(v19, a2);
  swift_getWitnessTable();
  v22 = v50;
  sub_1170F0();

  if (v21(v22, 1, AssociatedTypeWitness) == 1)
  {
    goto LABEL_3;
  }

  (*(v47 + 40))(AssociatedTypeWitness);
  v37 = v36;
  v46(v22, AssociatedTypeWitness);
  if ((v37 & 1) == 0)
  {
    v38 = v57;
    sub_115700();
    v39 = v48;
    sub_115700();
    sub_46F9C(&qword_184260, &unk_128570);
    v40 = v58;
    v41 = *(v58 + 72);
    v42 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1248A0;
    v43 = v28 + v42;
    v44 = v59;
    (*(v40 + 16))(v43, v38, v59);
    (*(v40 + 32))(v43 + v41, v39, v44);
    (*(v40 + 8))(v38, v44);
    return v28;
  }

LABEL_5:
  sub_46F9C(&qword_184260, &unk_128570);
  v27 = v58;
  v53 = *(v58 + 72);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1248A0;
  v29 = v54;
  sub_1158A0();
  v30 = v57;
  sub_1156F0();
  sub_115830();
  v31 = *(v27 + 8);
  v32 = v59;
  v31(v30, v59);
  v33 = v56;
  v34 = *(v55 + 8);
  v34(v29, v56);
  sub_1158A0();
  sub_1156F0();
  sub_115830();
  v31(v30, v32);
  v34(v29, v33);
  return v28;
}

BOOL sub_887E0(uint64_t a1, double a2, double a3)
{
  v6 = sub_1158D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_115760();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_115710();
  v18 = v17;
  sub_115710();
  if (v18 < a2 || v19 > a3)
  {
    return 0;
  }

  v21 = v19;
  sub_1158A0();
  sub_115700();
  sub_115830();
  v22 = *(v11 + 8);
  v22(v13, v10);
  (*(v7 + 8))(v9, v6);
  sub_115710();
  v24 = v23;
  v22(v16, v10);
  return v21 <= v24;
}

uint64_t sub_88A14(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_117620();
  v4 = __chkstk_darwin(v3);
  (*(v6 + 16))(&v8 - v5, a1, v3, v4);
  sub_116CF0();
  return sub_116CD0();
}

unint64_t sub_88B20()
{
  result = qword_1841F8;
  if (!qword_1841F8)
  {
    sub_47A1C(&qword_1841D0, &qword_127DB0);
    sub_47A1C(&qword_184200, &qword_127DD8);
    sub_47A1C(&qword_184208, &unk_127DE0);
    sub_47A1C(&qword_184210, &qword_128640);
    sub_47A1C(&qword_184158, &unk_1285C0);
    sub_115E00();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_4869C(OpaqueTypeConformance2, v1, v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1841F8);
  }

  return result;
}

unint64_t sub_88CFC()
{
  result = qword_184220;
  if (!qword_184220)
  {
    sub_47A1C(&qword_184218, &qword_127DF0);
    sub_48800(&qword_184228, &qword_184230, &qword_127DF8, &protocol conformance descriptor for AxisMarks<A>);
    sub_48800(&qword_1841A8, &qword_1841B0, &unk_127D90, &protocol conformance descriptor for AxisMarks<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184220);
  }

  return result;
}

void sub_88DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for DynamicUsageView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  sub_82E10(v8, v5, v6);
}

uint64_t sub_88EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t (**a3)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for DynamicUsageView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_868E0(a1, v9, v6, v7, a3);
}

BOOL sub_88F3C()
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 16);
  v2 = swift_checkMetadataState();
  v3 = COERCE_DOUBLE(v1(v2, AssociatedConformanceWitness));
  if (v4)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  v6 = COERCE_DOUBLE(v1(v2, AssociatedConformanceWitness));
  if (v7)
  {
    v6 = 0.0;
  }

  return v5 < v6;
}

uint64_t sub_89088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_89108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_89188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_891EC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_115A20() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 80);
  v15 = *(v9 + 64);
  if (v11)
  {
    v16 = 7;
  }

  else
  {
    v16 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v9 + 80) & 0xF8 | 7;
  v18 = ((v14 + 16) & ~v14) + *(v6 + 64) + v17;
  if (v13 >= a2)
  {
    goto LABEL_36;
  }

  v19 = ((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + (v18 & ~v17) + 8;
  v20 = v19 & 0xFFFFFFF8;
  if ((v19 & 0xFFFFFFF8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = a2 - v13 + 1;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_36;
      }
    }

LABEL_33:
    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v13 + (v27 | v26) + 1;
  }

  if (v23)
  {
    v24 = *(a1 + v19);
    if (v24)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  if (v12 <= v8)
  {
    v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 & 0x80000000) != 0)
    {
      v31 = *(v6 + 48);

      return v31((v29 + v14 + 8) & ~v14, v7, v5);
    }

    else
    {
      v30 = *v29;
      if (v30 >= 0xFFFFFFFF)
      {
        LODWORD(v30) = -1;
      }

      return (v30 + 1);
    }
  }

  else
  {
    v28 = (*(v10 + 48))((a1 + v18) & ~v17);
    if (v28 >= 2)
    {
      return v28 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_8946C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v36 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = sub_115A20();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 80);
  if (v14)
  {
    v16 = v14 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= v10)
  {
    v18 = v10;
  }

  else
  {
    v18 = v17;
  }

  v19 = ((v15 + 16) & ~v15) + *(v8 + 64);
  v20 = *(v13 + 80) & 0xF8 | 7;
  if (v14)
  {
    v21 = *(*(v11 - 8) + 64);
  }

  else
  {
    v21 = *(*(v11 - 8) + 64) + 1;
  }

  v22 = ((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v19 + v20) & ~v20) + 8;
  if (v18 < a3)
  {
    if (((v21 + 7) & 0xFFFFFFF8) + ((v19 + v20) & ~v20) == -8)
    {
      v23 = a3 - v18 + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v12 = v24;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 > v18)
  {
    if (((v21 + 7) & 0xFFFFFFF8) + ((v19 + v20) & ~v20) == -8)
    {
      v25 = a2 - v18;
    }

    else
    {
      v25 = 1;
    }

    if (((v21 + 7) & 0xFFFFFFF8) + ((v19 + v20) & ~v20) != -8)
    {
      v26 = ~v18 + a2;
      bzero(a1, v22);
      *a1 = v26;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        *&a1[v22] = v25;
      }

      else
      {
        *&a1[v22] = v25;
      }
    }

    else if (v12)
    {
      a1[v22] = v25;
    }

    return;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v22] = 0;
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

  if (v12 == 2)
  {
    *&a1[v22] = 0;
    goto LABEL_45;
  }

  *&a1[v22] = 0;
  if (!a2)
  {
    return;
  }

LABEL_46:
  if (v16 <= v10)
  {
    if (v10 >= a2)
    {
      v32 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0x80000000) != 0)
      {
        v35 = *(v36 + 56);

        v35((v32 + v15 + 8) & ~v15, a2, v9, v7);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v33 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v33 = (a2 - 1);
        }

        *v32 = v33;
      }
    }

    else
    {
      if (v19 <= 3)
      {
        v29 = ~(-1 << (8 * v19));
      }

      else
      {
        v29 = -1;
      }

      if (v19)
      {
        v28 = v29 & (~v10 + a2);
        if (v19 <= 3)
        {
          v30 = v19;
        }

        else
        {
          v30 = 4;
        }

        bzero(a1, v19);
        if (v30 <= 2)
        {
          if (v30 != 1)
          {
LABEL_74:
            *a1 = v28;
            return;
          }

LABEL_60:
          *a1 = v28;
          return;
        }

LABEL_82:
        if (v30 == 3)
        {
          *a1 = v28;
          a1[2] = BYTE2(v28);
          return;
        }

        goto LABEL_84;
      }
    }
  }

  else
  {
    a1 = (&a1[v19 + v20] & ~v20);
    if (v17 < a2)
    {
      v27 = (v21 + 7) & 0xFFFFFFF8;
      if (v27 == -8)
      {
        return;
      }

      v28 = ~v17 + a2;
      bzero(a1, (v27 + 8));
LABEL_84:
      *a1 = v28;
      return;
    }

    if (v16 >= a2)
    {
      v34 = *(v13 + 56);

      v34(a1, (a2 + 1));
    }

    else
    {
      if (v21 <= 3)
      {
        v31 = ~(-1 << (8 * v21));
      }

      else
      {
        v31 = -1;
      }

      if (v21)
      {
        v28 = v31 & (~v16 + a2);
        if (v21 <= 3)
        {
          v30 = v21;
        }

        else
        {
          v30 = 4;
        }

        bzero(a1, v21);
        if (v30 <= 2)
        {
          if (v30 != 1)
          {
            goto LABEL_74;
          }

          goto LABEL_60;
        }

        goto LABEL_82;
      }
    }
  }
}

void sub_89878(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_116DC0();
  if (v7 <= 0x3F)
  {
    sub_8AAEC(319, a4, &qword_184128, &qword_127D40, a5);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_89928(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_115A20() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 80);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v15 | 7;
  v19 = ((v14 + 16) & ~v14) + *(v6 + 64) + (v15 | 7);
  if (a2 <= v13)
  {
    goto LABEL_37;
  }

  v20 = v17 + ((v15 + 16) & ~v15) + (v19 & ~v18);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((a2 - v13 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v24 < 2)
    {
LABEL_37:
      if (v12 <= v8)
      {
        v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v7 & 0x80000000) != 0)
        {
          v31 = *(v6 + 48);

          return v31((v29 + v14 + 8) & ~v14, v7, v5);
        }

        else
        {
          v30 = *v29;
          if (v30 >= 0xFFFFFFFF)
          {
            LODWORD(v30) = -1;
          }

          return (v30 + 1);
        }
      }

      else
      {
        v28 = (*(v10 + 48))((v15 + ((((a1 + v19) & ~v18) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15);
        if (v28 >= 2)
        {
          return v28 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_37;
  }

LABEL_24:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = v20;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v13 + (v27 | v25) + 1;
}

void sub_89C04(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v42 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = 0;
  v12 = *(sub_115A20() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v8 + 80);
  v19 = ((v18 + 16) & ~v18) + *(v8 + 64);
  v20 = *(v12 + 80);
  v21 = v19 + (v20 | 7);
  v22 = (v20 + 16) & ~v20;
  v23 = *(v12 + 64);
  if (v14)
  {
    v24 = v23;
  }

  else
  {
    v24 = v23 + 1;
  }

  v25 = v22 + v24;
  v26 = (v21 & ~(v20 | 7)) + v22 + v24;
  if (a3 <= v17)
  {
    goto LABEL_30;
  }

  if (v26 > 3)
  {
    v11 = 1;
    if (v17 >= a2)
    {
      goto LABEL_19;
    }

LABEL_31:
    v29 = ~v17 + a2;
    if (v26 >= 4)
    {
      bzero(a1, v26);
      *a1 = v29;
      v30 = 1;
      if (v11 > 1)
      {
        goto LABEL_33;
      }

LABEL_87:
      if (v11)
      {
        a1[v26] = v30;
      }

      return;
    }

    v30 = (v29 >> (8 * v26)) + 1;
    if (v26)
    {
      v35 = v29 & ~(-1 << (8 * v26));
      bzero(a1, v26);
      if (v26 != 3)
      {
        if (v26 == 2)
        {
          *a1 = v35;
          if (v11 <= 1)
          {
            goto LABEL_87;
          }
        }

        else
        {
          *a1 = v29;
          if (v11 <= 1)
          {
            goto LABEL_87;
          }
        }

LABEL_33:
        if (v11 == 2)
        {
          *&a1[v26] = v30;
        }

        else
        {
          *&a1[v26] = v30;
        }

        return;
      }

      *a1 = v35;
      a1[2] = BYTE2(v35);
    }

    if (v11 <= 1)
    {
      goto LABEL_87;
    }

    goto LABEL_33;
  }

  v27 = ((a3 - v17 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
  if (!HIWORD(v27))
  {
    if (v27 < 0x100)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }

    if (v27 >= 2)
    {
      v11 = v28;
    }

    else
    {
      v11 = 0;
    }

LABEL_30:
    if (v17 < a2)
    {
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  v11 = 4;
  if (v17 < a2)
  {
    goto LABEL_31;
  }

LABEL_19:
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *&a1[v26] = 0;
  }

  else if (v11)
  {
    a1[v26] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v15 <= v10)
  {
    if (v10 >= a2)
    {
      v38 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0x80000000) != 0)
      {
        v41 = *(v42 + 56);

        v41((v38 + v18 + 8) & ~v18, a2, v9, v7);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v39 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v39 = (a2 - 1);
        }

        *v38 = v39;
      }
    }

    else
    {
      if (v19 <= 3)
      {
        v36 = ~(-1 << (8 * v19));
      }

      else
      {
        v36 = -1;
      }

      if (v19)
      {
        v32 = v36 & (~v10 + a2);
        if (v19 <= 3)
        {
          v33 = v19;
        }

        else
        {
          v33 = 4;
        }

        v34 = a1;
        v24 = v19;
        goto LABEL_76;
      }
    }
  }

  else
  {
    a1 = (&a1[v21] & ~(v20 | 7));
    if (v16 >= a2)
    {
      a1 = ((v20 + ((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v20);
      if (v15 >= a2)
      {
        v40 = *(v13 + 56);

        v40(a1, (a2 + 1));
      }

      else
      {
        if (v24 <= 3)
        {
          v37 = ~(-1 << (8 * v24));
        }

        else
        {
          v37 = -1;
        }

        if (v24)
        {
          v32 = v37 & (~v15 + a2);
          if (v24 <= 3)
          {
            v33 = v24;
          }

          else
          {
            v33 = 4;
          }

          v34 = a1;
          goto LABEL_76;
        }
      }
    }

    else
    {
      if (v25 <= 3)
      {
        v31 = ~(-1 << (8 * v25));
      }

      else
      {
        v31 = -1;
      }

      if (v25)
      {
        v32 = v31 & (~v16 + a2);
        if (v25 <= 3)
        {
          v33 = v22 + v24;
        }

        else
        {
          v33 = 4;
        }

        v34 = a1;
        v24 += v22;
LABEL_76:
        bzero(v34, v24);
        if (v33 > 2)
        {
          if (v33 == 3)
          {
            *a1 = v32;
            a1[2] = BYTE2(v32);
          }

          else
          {
            *a1 = v32;
          }
        }

        else if (v33 == 1)
        {
          *a1 = v32;
        }

        else
        {
          *a1 = v32;
        }
      }
    }
  }
}

void sub_8A0B0(uint64_t a1)
{
  sub_116DC0();
  if (v1 <= 0x3F)
  {
    sub_8AAEC(319, &qword_184270, &qword_184128, &qword_127D40, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      sub_1173A0();
      if (v3 <= 0x3F)
      {
        sub_117620();
        sub_116CF0();
        if (v4 <= 0x3F)
        {
          sub_8AAEC(319, &qword_184278, &qword_1835B0, &qword_127DA0, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_8A210(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v43 = *(v4 + 84);
  if (v43 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v41 = sub_115A20();
  v6 = *(v41 - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v42 = v8;
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v44 = v5;
  if (v9 > v5)
  {
    v5 = v9;
  }

  v10 = *(v41 - 8);
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v5)
  {
    v14 = v5;
  }

  v15 = *(v4 + 80);
  v16 = *(v10 + 80);
  if (v7)
  {
    v17 = *(v6 + 64);
  }

  else
  {
    v17 = *(v6 + 64) + 1;
  }

  v18 = *(v11 + 64);
  if (v13)
  {
    v19 = 7;
  }

  else
  {
    v19 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v16 | 7;
  v21 = ((v15 + 16) & ~v15) + *(v4 + 64) + (v16 | 7);
  v22 = v17 + ((v16 + 16) & ~v16) + 7;
  v23 = *(v11 + 80) & 0xF8;
  v24 = ~v23 & 0xFFFFFFFFFFFFFFF8;
  v25 = v23 + 15;
  if (v14 < a2)
  {
    v26 = ((v19 + v18) & 0xFFFFFFFFFFFFFFF8) + ((v25 + ((v22 + (v21 & ~v20)) & 0xFFFFFFFFFFFFFFF8)) & v24) + 24;
    v27 = v26 & 0xFFFFFFF8;
    if ((v26 & 0xFFFFFFF8) != 0)
    {
      v28 = 2;
    }

    else
    {
      v28 = a2 - v14 + 1;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v31 = *(a1 + v26);
        if (!v31)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v31 = *(a1 + v26);
        if (!v31)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      if (!v30)
      {
        goto LABEL_44;
      }

      v31 = *(a1 + v26);
      if (!v31)
      {
        goto LABEL_44;
      }
    }

    v33 = v31 - 1;
    if (v27)
    {
      v33 = 0;
      v34 = *a1;
    }

    else
    {
      v34 = 0;
    }

    return v14 + (v34 | v33) + 1;
  }

LABEL_44:
  if (v44 == v14)
  {
    v35 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v43 & 0x80000000) != 0)
    {
      v36 = *(v4 + 48);

      return v36((v35 + v15 + 8) & ~v15);
    }

    goto LABEL_51;
  }

  v37 = (a1 + v21) & ~v20;
  if (v9 != v14)
  {
    v39 = ((v22 + v37) & 0xFFFFFFFFFFFFFFF8);
    if ((v14 & 0x80000000) == 0)
    {
      v38 = *v39;
      goto LABEL_54;
    }

    v40 = (*(v12 + 48))((v39 + v25) & v24);
LABEL_61:
    if (v40 >= 2)
    {
      return v40 - 1;
    }

    else
    {
      return 0;
    }
  }

  v35 = ((v37 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v42 & 0x80000000) != 0)
  {
    v40 = (*(v10 + 48))((v35 + v16 + 8) & ~v16, v7, v41);
    goto LABEL_61;
  }

LABEL_51:
  v38 = *v35;
LABEL_54:
  if (v38 >= 0xFFFFFFFF)
  {
    LODWORD(v38) = -1;
  }

  return (v38 + 1);
}

void sub_8A5CC(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v48 = *(v4 + 84);
  if (v48 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v46 = sub_115A20();
  v6 = *(v46 - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v47 = v8;
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  if (v9 <= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v9;
  }

  v11 = 0;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 84);
  v14 = *(v4 + 80);
  v15 = *(v6 + 80);
  v16 = *(v12 + 80);
  if (v13)
  {
    v17 = v13 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  if (v17 <= v10)
  {
    v18 = v10;
  }

  else
  {
    v18 = v17;
  }

  if (v7)
  {
    v19 = *(v6 + 64);
  }

  else
  {
    v19 = *(v6 + 64) + 1;
  }

  v20 = ((v14 + 16) & ~v14) + *(v4 + 64) + (v15 | 7);
  v21 = ((v15 + 16) & ~v15) + v19 + 7;
  v22 = ~(v16 & 0xF8) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v16 & 0xF8) + 15;
  if (v13)
  {
    v24 = *(v12 + 64);
  }

  else
  {
    v24 = *(v12 + 64) + 1;
  }

  v25 = ((v24 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v23 + ((v21 + (v20 & ~(v15 | 7))) & 0xFFFFFFFFFFFFFFF8)) & v22) + 24;
  if (v18 < a3)
  {
    if (((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((v21 + (v20 & ~(v15 | 7))) & 0xFFFFFFF8)) & v22) == -24)
    {
      v26 = a3 - v18 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v11 = v27;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > v18)
  {
    if (((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((v21 + (v20 & ~(v15 | 7))) & 0xFFFFFFF8)) & v22) == -24)
    {
      v28 = a2 - v18;
    }

    else
    {
      v28 = 1;
    }

    if (((v24 + 7) & 0xFFFFFFF8) + ((v23 + ((v21 + (v20 & ~(v15 | 7))) & 0xFFFFFFF8)) & v22) != -24)
    {
      v29 = ~v18 + a2;
      bzero(a1, v25);
      *a1 = v29;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(a1 + v25) = v28;
      }

      else
      {
        *(a1 + v25) = v28;
      }
    }

    else if (v11)
    {
      *(a1 + v25) = v28;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_56;
    }

    *(a1 + v25) = 0;
  }

  else if (v11)
  {
    *(a1 + v25) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_56;
  }

  if (!a2)
  {
    return;
  }

LABEL_56:
  if (v5 == v18)
  {
    v30 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v48 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) == 0)
      {
LABEL_59:
        *v30 = a2 - 1;
        return;
      }

LABEL_63:
      *v30 = a2 & 0x7FFFFFFF;
      return;
    }

    v34 = *(v4 + 56);

    v34((v30 + v14 + 8) & ~v14, a2);
  }

  else
  {
    v31 = (a1 + v20) & ~(v15 | 7);
    if (v9 == v18)
    {
      v30 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v47 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_63;
      }

      v35 = v30 + v15 + 8;
      v36 = (v35 & ~v15);
      if (v47 >= a2)
      {
        v44 = *(v6 + 56);

        v44(v35 & ~v15, a2 + 1, v7, v46);
      }

      else
      {
        if (v19 <= 3)
        {
          v37 = ~(-1 << (8 * v19));
        }

        else
        {
          v37 = -1;
        }

        if (v19)
        {
          v38 = v37 & (~v47 + a2);
          if (v19 <= 3)
          {
            v39 = v19;
          }

          else
          {
            v39 = 4;
          }

          bzero(v36, v19);
          if (v39 > 2)
          {
            if (v39 == 3)
            {
              *v36 = v38;
              v36[2] = BYTE2(v38);
            }

            else
            {
              *v36 = v38;
            }
          }

          else if (v39 == 1)
          {
            *v36 = v38;
          }

          else
          {
            *v36 = v38;
          }
        }
      }
    }

    else
    {
      v32 = ((v21 + v31) & 0xFFFFFFFFFFFFFFF8);
      if ((v18 & 0x80000000) != 0)
      {
        v40 = ((v32 + v23) & v22);
        if (v17 >= a2)
        {
          v45 = *(v12 + 56);

          v45(v40, a2 + 1);
        }

        else
        {
          v41 = (v24 + 7) & 0xFFFFFFF8;
          if (v41 != -8)
          {
            v42 = ~v17 + a2;
            v43 = v40;
            bzero(v40, (v41 + 8));
            *v43 = v42;
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v33 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v33 = a2 - 1;
        }

        *v32 = v33;
      }
    }
  }
}

void sub_8AAEC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_47A1C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_8AB50(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for FullDayUsageView(255, *a1, v5, a4);
  type metadata accessor for DynamicUsageView(255, v4, v5, v6);
  swift_getTupleTypeMetadata2();
  sub_116F20();
  swift_getWitnessTable();
  sub_116D50();

  return swift_getWitnessTable();
}

uint64_t sub_8AC18(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_1173A0();
  sub_47A1C(&qword_184140, &qword_127D58);
  swift_getWitnessTable();
  sub_116E30();
  sub_7DCA0();
  swift_getWitnessTable();
  sub_115DD0();
  sub_47A1C(&qword_184160, &unk_127D70);
  swift_getWitnessTable();
  sub_7DDE8();
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_184178, &qword_1285D0);
  swift_getOpaqueTypeConformance2();
  sub_7DEA4();
  swift_getOpaqueTypeMetadata2();
  sub_116480();
  sub_47A1C(&qword_184188, &qword_127D80);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_7DF20();
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_1841B8, &qword_1285E0);
  swift_getOpaqueTypeConformance2();
  sub_7E000();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_8AF6C(uint64_t *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_1173A0();
  sub_47A1C(&qword_1841D0, &qword_127DB0);
  swift_getWitnessTable();
  sub_116E30();
  sub_47A1C(&qword_1841D8, &qword_127DB8);
  swift_getAssociatedTypeWitness();
  sub_47A1C(&qword_1841E0, &qword_127DC0);
  sub_47A1C(&qword_1841E8, &qword_127DC8);
  sub_47A1C(&qword_1841F0, &qword_127DD0);
  sub_115E70();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_4869C(OpaqueTypeConformance2, v2, v3);
  swift_getOpaqueTypeMetadata2();
  sub_117620();
  sub_115A60();
  sub_88B20();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_115DD0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_184160, &unk_127D70);
  swift_getOpaqueTypeConformance2();
  sub_7DDE8();
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_184178, &qword_1285D0);
  swift_getOpaqueTypeConformance2();
  sub_7DEA4();
  swift_getOpaqueTypeMetadata2();
  sub_116480();
  sub_47A1C(&qword_184218, &qword_127DF0);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_88CFC();
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_1841B8, &qword_1285E0);
  swift_getOpaqueTypeConformance2();
  sub_7E000();
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_184238, &qword_127E00);
  swift_getOpaqueTypeConformance2();
  sub_48800(&qword_184240, &qword_184238, &qword_127E00, &protocol conformance descriptor for AxisMarks<A>);
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_184248, &qword_127E08);
  swift_getOpaqueTypeConformance2();
  sub_48800(&qword_184250, &qword_184248, &qword_127E08, &protocol conformance descriptor for GeometryReader<A>);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_8B74C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_115A20();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v8 = type metadata accessor for DynamicUsageView(0, v2, v1, v7);
  v9 = *(*(v8 - 8) + 80);
  v18 = *(v4 + 8);
  v18(v0 + v5, v3);
  v10 = v0 + ((v6 + v9) & ~v9);

  v11 = sub_116DC0();
  (*(*(v2 - 8) + 8))(v10 + *(v11 + 32), v2);
  v12 = v10 + *(v8 + 36);

  v13 = *(sub_46F9C(&qword_184130, &qword_127D48) + 32);
  if (!(*(v4 + 48))(v12 + v13, 1, v3))
  {
    v18(v12 + v13, v3);
  }

  v14 = v10 + *(v8 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  if (!(*(v16 + 48))(v14, 1, AssociatedTypeWitness))
  {
    (*(v16 + 8))(v14, AssociatedTypeWitness);
  }

  sub_117620();
  sub_116CF0();

  return swift_deallocObject();
}

uint64_t sub_8BA44@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_115A20() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v9 = *(type metadata accessor for DynamicUsageView(0, v3, v4, v8) - 8);
  v10 = v1 + ((v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_86AFC(v1 + v6, v10, v3, v4, a1);
}

uint64_t sub_8BB58()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_115A20();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v8 = type metadata accessor for DynamicUsageView(0, v2, v1, v7);
  v9 = *(*(v8 - 8) + 80);
  v18 = *(v4 + 8);
  v18(v0 + v5, v3);
  v10 = v0 + ((v6 + v9) & ~v9);

  v11 = sub_116DC0();
  (*(*(v2 - 8) + 8))(v10 + *(v11 + 32), v2);
  v12 = v10 + *(v8 + 36);

  v13 = *(sub_46F9C(&qword_184130, &qword_127D48) + 32);
  if (!(*(v4 + 48))(v12 + v13, 1, v3))
  {
    v18(v12 + v13, v3);
  }

  v14 = v10 + *(v8 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  if (!(*(v16 + 48))(v14, 1, AssociatedTypeWitness))
  {
    (*(v16 + 8))(v14, AssociatedTypeWitness);
  }

  sub_117620();
  sub_116CF0();

  return swift_deallocObject();
}

void sub_8BE50(double a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(sub_115A20() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v9 = *(type metadata accessor for DynamicUsageView(0, v3, v4, v8) - 8);
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[6];
  v13 = v1[7];
  v14 = v1 + ((v7 + *(v9 + 80)) & ~*(v9 + 80));

  sub_8712C(v1 + v6, a1, v10, v11, v12, v13, v14, v3, v4);
}

unint64_t sub_8BF50()
{
  result = qword_184288;
  if (!qword_184288)
  {
    sub_47A1C(&qword_184280, &unk_128080);
    sub_48800(&qword_184290, &qword_184298, &unk_129B80, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_48800(&qword_1842A0, &qword_1842A8, &qword_128090, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184288);
  }

  return result;
}

uint64_t sub_8C034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for DynamicUsageView(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v19 = *(*(v6 - 8) + 64);
  v8 = sub_115A20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v4 + ((v7 + 32) & ~v7);

  v12 = sub_116DC0();
  (*(*(v5 - 8) + 8))(v11 + *(v12 + 32), v5);
  v13 = v11 + *(v6 + 36);

  v14 = *(sub_46F9C(&qword_184130, &qword_127D48) + 32);
  if (!(*(v9 + 48))(v13 + v14, 1, v8))
  {
    (*(v9 + 8))(v13 + v14, v8);
  }

  v15 = v11 + *(v6 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  if (!(*(v17 + 48))(v15, 1, AssociatedTypeWitness))
  {
    (*(v17 + 8))(v15, AssociatedTypeWitness);
  }

  sub_117620();
  sub_116CF0();

  (*(v9 + 8))(v4 + ((((v7 + 32) & ~v7) + v19 + v10) & ~v10), v8);

  return swift_deallocObject();
}

uint64_t sub_8C324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for DynamicUsageView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_115A20() - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_87430(v4 + v8, v11, v5, v6);
}

uint64_t sub_8C420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for DynamicUsageView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_84E90(a1, v9, v6, v7, a3);
}

unint64_t sub_8C4BC()
{
  result = qword_1842C8;
  if (!qword_1842C8)
  {
    sub_47A1C(&qword_1842C0, &qword_1280A0);
    sub_8C540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1842C8);
  }

  return result;
}

unint64_t sub_8C540()
{
  result = qword_1842D0;
  if (!qword_1842D0)
  {
    sub_47A1C(&qword_1842D8, &qword_1280A8);
    sub_48800(&qword_1842E0, &qword_1842E8, &qword_1280B0, &protocol conformance descriptor for AxisValueLabel<A>);
    sub_8C5F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1842D0);
  }

  return result;
}

unint64_t sub_8C5F8()
{
  result = qword_1842F0;
  if (!qword_1842F0)
  {
    sub_47A1C(&qword_1842F8, &qword_1280B8);
    sub_48800(&qword_1842E0, &qword_1842E8, &qword_1280B0, &protocol conformance descriptor for AxisValueLabel<A>);
    sub_48800(&qword_184300, &qword_184308, &qword_1280C0, &protocol conformance descriptor for AxisValueLabel<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1842F0);
  }

  return result;
}

unint64_t sub_8C6E4()
{
  result = qword_184318;
  if (!qword_184318)
  {
    sub_47A1C(&qword_184310, &qword_1280C8);
    sub_8C768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184318);
  }

  return result;
}

unint64_t sub_8C768()
{
  result = qword_184320;
  if (!qword_184320)
  {
    sub_47A1C(&qword_184328, &qword_1280D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184320);
  }

  return result;
}

double sub_8C7F0@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = sub_1163E0();
  v14 = 1;
  sub_857E8(v5, v6, v3, v4, v13);
  v17 = *&v13[32];
  v18[0] = *&v13[48];
  *(v18 + 10) = *&v13[58];
  v15 = *v13;
  v16 = *&v13[16];
  v19[2] = *&v13[32];
  v20[0] = *&v13[48];
  *(v20 + 10) = *&v13[58];
  v19[0] = *v13;
  v19[1] = *&v13[16];
  sub_479B4(&v15, &v12, &qword_184350, &qword_1280F0);
  sub_488C8(v19, &qword_184350, &qword_1280F0);
  *&v13[7] = v15;
  *&v13[65] = *(v18 + 10);
  *&v13[55] = v18[0];
  *&v13[39] = v17;
  *&v13[23] = v16;
  v8 = *&v13[48];
  *(a1 + 49) = *&v13[32];
  *(a1 + 65) = v8;
  *(a1 + 81) = *&v13[64];
  result = *v13;
  v10 = *&v13[16];
  *(a1 + 17) = *v13;
  v11 = v14;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 97) = v13[80];
  *(a1 + 33) = v10;
  return result;
}

uint64_t sub_8C910(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_488B8(a1, a2, a3 & 1);
}

uint64_t sub_8C94C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_48928(a1, a2, a3 & 1);
}

uint64_t sub_8C988(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_8C9D0()
{
  result = qword_184378;
  if (!qword_184378)
  {
    sub_47A1C(&qword_184380, &qword_128108);
    sub_48800(&qword_184388, &qword_184390, &qword_128110, &protocol conformance descriptor for AxisValueLabel<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184378);
  }

  return result;
}

uint64_t sub_8CAB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_8CACC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_46F9C(&qword_1843B8, &qword_12B290);
    v3 = sub_117870();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_64F08(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_8CBD0()
{
  result = qword_1843C0;
  if (!qword_1843C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1843C0);
  }

  return result;
}

uint64_t sub_8CC48()
{

  return swift_deallocObject();
}

uint64_t sub_8CCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for DynamicUsageView(0, v5, *(v4 + 24), a4);
  v16 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);

  v7 = sub_116DC0();
  (*(*(v5 - 8) + 8))(v4 + v16 + *(v7 + 32), v5);
  v8 = v4 + v16 + *(v6 + 36);

  v9 = *(sub_46F9C(&qword_184130, &qword_127D48) + 32);
  v10 = sub_115A20();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v8 + v9, 1, v10))
  {
    (*(v11 + 8))(v8 + v9, v10);
  }

  v12 = v4 + v16 + *(v6 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  if (!(*(v14 + 48))(v12, 1, AssociatedTypeWitness))
  {
    (*(v14 + 8))(v12, AssociatedTypeWitness);
  }

  sub_117620();
  sub_116CF0();

  return swift_deallocObject();
}

uint64_t sub_8CF34@<X0>(uint64_t a1@<X3>, char *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for DynamicUsageView(0, v4, v5, a1) - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_829B8(v7, v4, v5, a2);
}

uint64_t sub_8D014(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    sub_115A40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_8D0E4()
{
  result = qword_1843F8;
  if (!qword_1843F8)
  {
    sub_47A1C(&qword_184400, &qword_128188);
    sub_47A1C(&qword_184390, &qword_128110);
    sub_48800(&qword_184388, &qword_184390, &qword_128110, &protocol conformance descriptor for AxisValueLabel<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1843F8);
  }

  return result;
}

uint64_t sub_8D1EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_184400, &qword_128188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8D25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_184400, &qword_128188);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8D2CC(uint64_t a1)
{
  v2 = sub_46F9C(&qword_184400, &qword_128188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8D334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_4869C(a1, a2, a3);

  result = sub_116900();
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v8;
  return result;
}

uint64_t sub_8D3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for FullDayUsageView(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  v8 = sub_116DC0();
  (*(*(v5 - 8) + 8))(v7 + *(v8 + 32), v5);
  v9 = v7 + v6[11];

  v10 = *(sub_46F9C(&qword_184130, &qword_127D48) + 32);
  v11 = sub_115A20();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v9 + v10, 1, v11))
  {
    (*(v12 + 8))(v9 + v10, v11);
  }

  return swift_deallocObject();
}

uint64_t sub_8D570(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(a3(0, v7, v8) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return a4(a1, a2, v10, v7, v8);
}

id sub_8D6FC()
{
  v10 = sub_8D904();
  v9 = sub_8DB20();
  v8 = sub_8DD88();
  v7 = sub_8DF68(0x4545454545, 0xE500000000000000);
  v6 = sub_8DF68(1162167621, 0xE400000000000000);
  v0 = sub_8DF68(6565709, 0xE300000000000000);
  v1 = sub_8DF68(0x64204D4D4D4DLL, 0xE600000000000000);
  v2 = sub_8DF68(0x79202C64204D4D4DLL, 0xEB00000000797979);
  v3 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v3 setUnitsStyle:1];
  [v3 setIncludesApproximationPhrase:0];
  [v3 setIncludesTimeRemainingPhrase:0];
  [v3 setAllowedUnits:96];
  v4 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v4 setUnitsStyle:1];
  [v4 setIncludesApproximationPhrase:0];
  [v4 setIncludesTimeRemainingPhrase:0];
  result = [v4 setAllowedUnits:32];
  qword_191E50 = v10;
  *algn_191E58 = v9;
  qword_191E60 = v8;
  unk_191E68 = v7;
  qword_191E70 = v6;
  unk_191E78 = v0;
  qword_191E80 = v1;
  unk_191E88 = v2;
  qword_191E90 = v3;
  unk_191E98 = v4;
  return result;
}

uint64_t *sub_8D8B4()
{
  if (qword_18CB80 != -1)
  {
    swift_once();
  }

  return &qword_191E50;
}

id sub_8D904()
{
  v0 = sub_1158D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_115820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1157E0();
  isa = sub_1157D0().super.isa;
  (*(v5 + 8))(v7, v4);
  [v8 setLocale:isa];

  sub_115870();
  v10 = sub_115860().super.isa;
  (*(v1 + 8))(v3, v0);
  [v8 setCalendar:v10];

  [objc_opt_self() is24HourClock];
  v11 = sub_117170();
  [v8 setDateFormat:v11];

  return v8;
}

id sub_8DB20()
{
  v0 = sub_1158D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_115820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1157E0();
  isa = sub_1157D0().super.isa;
  (*(v5 + 8))(v7, v4);
  [v8 setLocale:isa];

  sub_115870();
  v10 = sub_115860().super.isa;
  (*(v1 + 8))(v3, v0);
  [v8 setCalendar:v10];

  v11 = sub_117170();
  [v8 setAMSymbol:v11];

  v12 = sub_117170();
  [v8 setPMSymbol:v12];

  [objc_opt_self() is24HourClock];
  v13 = sub_117170();
  [v8 setDateFormat:v13];

  return v8;
}

id sub_8DD88()
{
  v0 = sub_1158D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_115820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1157E0();
  isa = sub_1157D0().super.isa;
  (*(v5 + 8))(v7, v4);
  [v8 setLocale:isa];

  sub_115870();
  v10 = sub_115860().super.isa;
  (*(v1 + 8))(v3, v0);
  [v8 setCalendar:v10];

  [v8 setTimeStyle:1];
  return v8;
}

id sub_8DF68(uint64_t a1, uint64_t a2)
{
  v2 = sub_1158D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_115820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1157E0();
  isa = sub_1157D0().super.isa;
  (*(v7 + 8))(v9, v6);
  [v10 setLocale:isa];

  sub_115870();
  v12 = sub_115860().super.isa;
  (*(v3 + 8))(v5, v2);
  [v10 setCalendar:v12];

  v13 = sub_117170();
  [v10 setLocalizedDateFormatFromTemplate:v13];

  return v10;
}

__n128 sub_8E16C(uint64_t a1, uint64_t a2)
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

uint64_t sub_8E188(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_8E1D0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_8E234@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a7;
  v42 = a6;
  v35 = a3;
  v36 = a2;
  v38 = a1;
  v37 = *(a4 - 8);
  __chkstk_darwin(a1);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v17 = *(v16 - 8);
  __chkstk_darwin(v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v35 - v22;
  v40 = sub_116480();
  v24 = *(v40 - 8);
  v25 = __chkstk_darwin(v40);
  v27 = &v35 - v26;
  if (v38)
  {
    v36(v39, v25);
    v28 = *(v17 + 16);
    v28(v23, v20, a5);
    v39 = a8;
    v29 = *(v17 + 8);
    v29(v20, a5);
    v28(v20, v23, a5);
    sub_8E5C4(v20, a5, a4, v41, v42);
    v29(v20, a5);
    v29(v23, a5);
    a8 = v39;
  }

  else
  {
    v30 = v37;
    v31 = *(v37 + 16);
    v31(v15, v39, a4, v25);
    (v31)(v12, v15, a4);
    sub_8E6BC(v12, a5, a4, v41, v42);
    v32 = *(v30 + 8);
    v32(v12, a4);
    v32(v15, a4);
  }

  v43 = v41;
  v44 = v42;
  v33 = v40;
  swift_getWitnessTable();
  (*(v24 + 16))(a8, v27, v33);
  return (*(v24 + 8))(v27, v33);
}

uint64_t sub_8E5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_116460();
  v8 = __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_116470();
}

uint64_t sub_8E6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_116460();
  v8 = __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_116470();
}

uint64_t sub_8E7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v32 = a4;
  v30 = a3;
  v31 = a2;
  v33 = a9;
  sub_116450();
  v18 = sub_116170();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v29 - v23;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v38 = v30;
  v39 = v32;
  v40 = a1;
  v41 = v31;
  v42 = a10;
  v43 = a11;
  sub_116EB0();
  sub_1169D0();
  WitnessTable = swift_getWitnessTable();
  v44 = a7;
  v45 = WitnessTable;
  swift_getWitnessTable();
  v26 = *(v19 + 16);
  v26(v24, v21, v18);
  v27 = *(v19 + 8);
  v27(v21, v18);
  v26(v33, v24, v18);
  return (v27)(v24, v18);
}

uint64_t sub_8E9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v14(v12, v13, v9);
  v15 = *(v5 + 16);
  v15(v11, v7, a2);
  v16 = *(v5 + 8);
  v16(v7, a2);
  v15(a3, v11, a2);
  return (v16)(v11, a2);
}

uint64_t sub_8EB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, char *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v27 = a5;
  sub_47A1C(&qword_183CF0, &qword_1273E0);
  v12 = sub_116170();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  v28 = a1;
  v29 = a2;
  v30 = a6;
  v31 = a7;
  v19 = sub_116EB0();
  sub_8EDAC(v19, v20, v21);
  sub_1169D0();
  v22 = sub_48800(&qword_183CE8, &qword_183CF0, &qword_1273E0, &protocol conformance descriptor for _BackgroundModifier<A>);
  v32 = a4;
  v33 = v22;
  swift_getWitnessTable();
  v23 = *(v13 + 16);
  v23(v18, v15, v12);
  v24 = *(v13 + 8);
  v24(v15, v12);
  v23(v27, v18, v12);
  return (v24)(v18, v12);
}

uint64_t sub_8ED68@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 32);
}

unint64_t sub_8EDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_184440;
  if (!qword_184440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184440);
  }

  return result;
}

__n128 sub_8EE00@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;

  sub_116EB0();
  sub_116190();
  *a3 = sub_8F12C;
  *(a3 + 8) = v10;
  *(a3 + 80) = v16;
  *(a3 + 96) = v17;
  *(a3 + 112) = v18;
  *(a3 + 16) = v12;
  *(a3 + 32) = v13;
  result = v15;
  *(a3 + 48) = v14;
  *(a3 + 64) = v15;
  return result;
}

uint64_t sub_8EEF4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_116090();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_116B50();
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  (*(v11 + 32))(v16 + v15, v13, v10);
  v21[3] = v14;
  v21[4] = sub_8F498;
  v21[5] = v16;
  v21[6] = 0;
  v21[7] = 0;

  sub_116080();
  v21[1] = v17;
  v21[2] = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;

  sub_46F9C(&qword_184468, &qword_128360);
  type metadata accessor for CGSize(0);
  sub_8F5FC();
  sub_8F680();
  sub_116AE0();
}

uint64_t sub_8F1D0(uint64_t *a1)
{
  sub_116450();
  sub_116170();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_8F264(uint64_t *a1)
{
  sub_47A1C(&qword_183CF0, &qword_1273E0);
  sub_116170();
  sub_48800(&qword_183CE8, &qword_183CF0, &qword_1273E0, &protocol conformance descriptor for _BackgroundModifier<A>);
  return swift_getWitnessTable();
}

unint64_t sub_8F314()
{
  result = qword_184448;
  if (!qword_184448)
  {
    sub_47A1C(&qword_184450, &qword_128350);
    sub_48800(&qword_184458, &qword_184460, &qword_128358, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184448);
  }

  return result;
}

uint64_t sub_8F3CC()
{
  v1 = sub_116090();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_8F498()
{
  sub_116090();

  sub_116080();
  sub_46F9C(&qword_184480, &qword_128368);
  sub_116D70();
}

uint64_t sub_8F55C()
{

  return swift_deallocObject();
}

unint64_t sub_8F5FC()
{
  result = qword_184470;
  if (!qword_184470)
  {
    sub_47A1C(&qword_184468, &qword_128360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184470);
  }

  return result;
}

unint64_t sub_8F680()
{
  result = qword_184478;
  if (!qword_184478)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184478);
  }

  return result;
}

uint64_t sub_8F6DC(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  sub_115930();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_8F72C(void *a1)
{
  v3 = *(v1 + 16);
  if (!v3 || (v4 = a1[3], v5 = a1[4], sub_66DE0(a1, v4), result = (*(v5 + 24))(v4, v5), v42 = result, (v43 = v7) == 0))
  {
    type metadata accessor for AppDetailViewModel(0);
    sub_719FC(a1, v62);
    v39 = _swiftEmptyArrayStorage;
    v40 = v62;
    return sub_F77AC(v39, 0, 1, v40);
  }

  v41 = a1;
  v45 = *(v3 + 16);
  if (!v45)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_20:

    type metadata accessor for AppDetailViewModel(0);
    sub_719FC(v41, &v52);
    v40 = &v52;
    v39 = v10;
    return sub_F77AC(v39, 0, 1, v40);
  }

  v8 = 0;
  v9 = v3 + 64;
  v10 = _swiftEmptyArrayStorage;
  v44 = v3;
  while (v8 < *(v3 + 16))
  {
    v47 = *(v9 - 16);
    v46 = *(v9 - 8);
    v11 = *v9;
    v12 = *(v9 + 8);
    v13 = *(v9 + 32);
    v14 = *(v9 + 48);
    if (*(v13 + 16))
    {

      v15 = v14;
      v16 = sub_64F08(v42, v43);
      if (v17)
      {
        v18 = (*(v13 + 56) + 152 * v16);
        v19 = v18[1];
        v48[0] = *v18;
        v48[1] = v19;
        v20 = v18[5];
        v22 = v18[2];
        v21 = v18[3];
        v48[4] = v18[4];
        v48[5] = v20;
        v48[2] = v22;
        v48[3] = v21;
        v23 = v18[6];
        v24 = v18[7];
        v25 = v18[8];
        v49 = *(v18 + 72);
        v48[7] = v24;
        v48[8] = v25;
        v48[6] = v23;
        memmove(__dst, v18, 0x92uLL);
        nullsub_4();
        sub_6B280(v48, &v52);
      }

      else
      {
        sub_68BEC(__dst);
      }

      v58 = __dst[6];
      v59 = __dst[7];
      v60 = __dst[8];
      v61 = v51;
      v54 = __dst[2];
      v55 = __dst[3];
      v56 = __dst[4];
      v57 = __dst[5];
      v52 = __dst[0];
      v53 = __dst[1];
    }

    else
    {
      sub_68BEC(&v52);

      v15 = v14;
    }

    v64[6] = v58;
    v64[7] = v59;
    v64[8] = v60;
    v65 = v61;
    v64[2] = v54;
    v64[3] = v55;
    v64[4] = v56;
    v64[5] = v57;
    v64[0] = v52;
    v64[1] = v53;
    sub_63060(v47, v46, v11, v12, v64, v62);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_71108(0, v10[2] + 1, 1, v10);
      v10 = result;
    }

    v3 = v44;
    v27 = v10[2];
    v26 = v10[3];
    if (v27 >= v26 >> 1)
    {
      result = sub_71108((v26 > 1), v27 + 1, 1, v10);
      v10 = result;
    }

    ++v8;
    v10[2] = v27 + 1;
    v28 = &v10[27 * v27];
    v29 = v62[1];
    *(v28 + 2) = v62[0];
    *(v28 + 3) = v29;
    v30 = v62[2];
    v31 = v62[3];
    v32 = v62[5];
    *(v28 + 6) = v62[4];
    *(v28 + 7) = v32;
    *(v28 + 4) = v30;
    *(v28 + 5) = v31;
    v33 = v62[6];
    v34 = v62[7];
    v35 = v62[9];
    *(v28 + 10) = v62[8];
    *(v28 + 11) = v35;
    *(v28 + 8) = v33;
    *(v28 + 9) = v34;
    v36 = v62[10];
    v37 = v62[11];
    v38 = v62[12];
    *(v28 + 120) = v63;
    *(v28 + 13) = v37;
    *(v28 + 14) = v38;
    *(v28 + 12) = v36;
    v9 += 120;
    if (v45 == v8)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_8FB78()
{

  v1 = OBJC_IVAR____TtC14BatteryUsageUI26OverviewBreakdownViewModel___observationRegistrar;
  v2 = sub_115940();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_8FC60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_46F9C(&qword_184580, &unk_129100);
    v3 = sub_117870();
    v4 = a1 + 32;

    while (1)
    {
      sub_8FF18(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_64F08(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_543D8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_8FD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_184488;
  if (!qword_184488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184488);
  }

  return result;
}

unint64_t sub_8FDC4()
{
  result = qword_184490;
  if (!qword_184490)
  {
    type metadata accessor for OverviewBreakdownViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184490);
  }

  return result;
}

uint64_t type metadata accessor for OverviewBreakdownViewModel(uint64_t a1)
{
  result = qword_18CCA0;
  if (!qword_18CCA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8FE70(uint64_t a1)
{
  result = sub_115940();
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

uint64_t sub_8FF18(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_184588, &unk_1283F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8FFA8(void *a1)
{
  type metadata accessor for UsageSummaryViewModel(0);
  swift_allocObject();
  v2 = a1;
  sub_94D40(v2);

  sub_116CB0();

  return v4;
}

uint64_t sub_9002C(void *a1)
{
  v2 = swift_allocObject();
  sub_94D40(a1);
  return v2;
}

uint64_t sub_9006C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v23 = a3;
  v22 = sub_46F9C(&qword_184590, &qword_128448);
  __chkstk_darwin(v22);
  v6 = &v22 - v5;
  *v6 = sub_1163F0();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = &v6[*(sub_46F9C(&qword_184598, &qword_128450) + 44)];
  v24 = a1;
  sub_90348(a1, a2, v7);
  v29 = a1;
  v30 = a2;
  sub_46F9C(&qword_1845A0, &qword_128458);
  sub_116CE0();
  v8 = v25;
  v9 = v26;
  v10 = v27;
  swift_getKeyPath();
  v29 = v8;
  v30 = v9;
  v31 = v10;
  sub_46F9C(&qword_1845A8, &qword_128488);
  sub_116D80();

  v11 = v25;
  v12 = v26;
  v13 = v27;
  v14 = v28;

  v15 = sub_46F9C(&qword_1845B0, &qword_128490);
  v16 = sub_48800(&qword_1845B8, &qword_184590, &qword_128448, &protocol conformance descriptor for VStack<A>);
  v17 = sub_A70D0(&qword_1845C0, &qword_1845B0, &qword_128490, sub_8EDAC);
  v18 = v23;
  sub_8E7B4(v11, v12, sub_92DA0, 0, v22, v15, v16, v17, v23, v13, v14);

  sub_488C8(v6, &qword_184590, &qword_128448);
  *&v18[*(sub_46F9C(&qword_1845C8, &qword_128498) + 36)] = 256;
  v19 = swift_allocObject();
  *(v19 + 16) = v24;
  *(v19 + 24) = a2;
  v20 = &v18[*(sub_46F9C(&qword_1845D0, &qword_1284A0) + 36)];
  *v20 = sub_957EC;
  v20[1] = v19;
  v20[2] = 0;
  v20[3] = 0;
}

void sub_90348(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v172 = a3;
  v5 = sub_46F9C(&qword_184E80, &qword_129160);
  v169 = *(v5 - 8);
  __chkstk_darwin(v5);
  v161 = &v134 - v6;
  v7 = sub_46F9C(&qword_184E88, &qword_129168);
  __chkstk_darwin(v7 - 8);
  v171 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v170 = &v134 - v10;
  v168 = sub_46F9C(&qword_184E90, &qword_129170);
  v11 = *(v168 - 8);
  __chkstk_darwin(v168);
  v160 = &v134 - v12;
  v13 = sub_46F9C(&qword_184E98, &qword_129178);
  v158 = *(v13 - 8);
  v159 = v13;
  __chkstk_darwin(v13);
  v152 = &v134 - v14;
  v162 = sub_46F9C(&qword_184EA0, &qword_129180);
  __chkstk_darwin(v162);
  v164 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v163 = &v134 - v17;
  v18 = sub_1163D0();
  v150 = *(v18 - 8);
  v151 = v18;
  __chkstk_darwin(v18);
  v149 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_46F9C(&qword_184EA8, &qword_129188);
  v142 = *(v20 - 8);
  v143 = v20;
  __chkstk_darwin(v20);
  v141 = &v134 - v21;
  v140 = sub_46F9C(&qword_184EB0, &qword_129190);
  __chkstk_darwin(v140);
  v145 = &v134 - v22;
  v144 = sub_46F9C(&qword_184EB8, &qword_129198);
  __chkstk_darwin(v144);
  v146 = &v134 - v23;
  v147 = sub_46F9C(&qword_184EC0, &qword_1291A0);
  __chkstk_darwin(v147);
  v148 = &v134 - v24;
  v25 = sub_46F9C(&qword_184EC8, &qword_1291A8);
  __chkstk_darwin(v25 - 8);
  v154 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v153 = &v134 - v28;
  v29 = sub_46F9C(&qword_184ED0, &qword_1291B0);
  __chkstk_darwin(v29 - 8);
  v157 = &v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v156 = &v134 - v32;
  v33 = sub_46F9C(&qword_184ED8, &qword_1291B8);
  __chkstk_darwin(v33 - 8);
  v155 = &v134 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v134 - v36;
  v38 = sub_46F9C(&qword_184EE0, &qword_1291C0);
  __chkstk_darwin(v38 - 8);
  v167 = &v134 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v134 - v41;
  v187 = a1;
  v188 = a2;
  v43 = sub_46F9C(&qword_1845A0, &qword_128458);
  v44 = sub_116CC0();
  (*(*v182 + 216))(&v182, v44);

  v45 = v183;
  v46 = 1;
  v165 = v42;
  v166 = v5;
  if (v183 != 1)
  {
    v136 = v11;
    v187 = v182;
    v188 = v183;
    v189 = v184;
    v190 = v185;
    v191 = v186;
    *v37 = sub_1163F0();
    *(v37 + 1) = 0;
    v37[16] = 1;
    v47 = *(sub_46F9C(&qword_184EF8, &qword_1291D8) + 44);
    v135 = v37;
    sub_91634(&v187, a1, a2, &v37[v47]);
    v138 = a1;
    v175 = a1;
    *&v176 = a2;
    v48 = sub_116CC0();
    v49 = (*(*v181[0] + 192))(v48);

    v139 = a2;
    v137 = v43;
    if (v49)
    {
      v50 = *(v49 + 16);
      if (v50)
      {
        if (v50 >= 3)
        {
          v51 = 3;
        }

        else
        {
          v51 = *(v49 + 16);
        }

        sub_1179F0();
        swift_unknownObjectRetain_n();

        v52 = swift_dynamicCastClass();
        if (!v52)
        {
          swift_unknownObjectRelease();
          v52 = _swiftEmptyArrayStorage;
        }

        v53 = v52[2];

        if (v53 == v51)
        {
          v54 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v54)
          {
LABEL_13:
            v55 = sub_5A754();
            swift_beginAccess();
            v56 = *v55;

            v57 = sub_117170();
            v58 = BatteryUILocalization(v57);

            if (!v58)
            {
              __break(1u);
              return;
            }

            v134 = v54;
            v192 = v45;
            sub_488C8(&v192, &qword_1845D8, &qword_1284A8);
            v193 = v191;
            sub_488C8(&v193, &qword_1845E0, &qword_1284B0);
            v194[0] = *(&v191 + 1);
            sub_488C8(v194, &qword_1845E8, &qword_1284B8);

            v59 = sub_1171B0();
            v61 = v60;

            v62 = v141;
            (*(*v56 + 528))(v59, v61);

            v63 = sub_116BC0();
            KeyPath = swift_getKeyPath();
            v65 = v145;
            (*(v142 + 32))(v145, v62, v143);
            v66 = (v65 + *(v140 + 36));
            *v66 = KeyPath;
            v66[1] = v63;
            sub_46F9C(&qword_182E10, &qword_1247F0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1248A0;
            LOBYTE(v62) = sub_116620();
            *(inited + 32) = v62;
            v68 = sub_116610();
            *(inited + 33) = v68;
            v69 = sub_116640();
            sub_116640();
            if (sub_116640() != v62)
            {
              v69 = sub_116640();
            }

            sub_116640();
            v70 = sub_116640();
            v71 = v138;
            if (v70 != v68)
            {
              v69 = sub_116640();
            }

            sub_115FD0();
            v73 = v72;
            v75 = v74;
            v77 = v76;
            v79 = v78;
            v80 = v146;
            sub_548D0(v65, v146, &qword_184EB0, &qword_129190);
            v81 = v80 + *(v144 + 36);
            *v81 = v69;
            *(v81 + 8) = v73;
            *(v81 + 16) = v75;
            *(v81 + 24) = v77;
            *(v81 + 32) = v79;
            *(v81 + 40) = 0;
            v82 = sub_116600();
            v83 = v148;
            sub_548D0(v80, v148, &qword_184EB8, &qword_129198);
            v84 = v83 + *(v147 + 36);
            *v84 = v82;
            *(v84 + 8) = 0u;
            *(v84 + 24) = 0u;
            *(v84 + 40) = 1;
            v85 = v149;
            sub_1163C0();
            sub_A70D0(&qword_184F08, &qword_184EC0, &qword_1291A0, sub_A7154);
            v86 = v153;
            sub_116A90();
            (*(v150 + 8))(v85, v151);
            sub_488C8(v83, &qword_184EC0, &qword_1291A0);
            v87 = v163;
            sub_116DD0();
            v88 = sub_116600();
            v89 = v87 + *(v162 + 36);
            *v89 = v88;
            *(v89 + 8) = 0u;
            *(v89 + 24) = 0u;
            *(v89 + 40) = 1;
            v173 = v71;
            *&v174 = v139;
            sub_116CE0();
            v173 = v175;
            v174 = v176;
            v90 = type metadata accessor for UsageSummaryViewModel(0);
            v93 = sub_6A95C(v90, v91, v92);
            sub_EE22C(v134, &v173, v90, &type metadata for BreakdownAppInfo, &off_167B80, v93, &v175);
            LODWORD(v151) = v175;
            v149 = *(&v176 + 1);
            v150 = v176;
            v95 = v177;
            v94 = v178;
            v96 = v179;
            v97 = v180;
            v98 = v154;
            sub_479B4(v86, v154, &qword_184EC8, &qword_1291A8);
            v99 = v164;
            sub_479B4(v87, v164, &qword_184EA0, &qword_129180);
            v100 = v98;
            v101 = v152;
            sub_479B4(v100, v152, &qword_184EC8, &qword_1291A8);
            v102 = sub_46F9C(&qword_184F20, &qword_129218);
            sub_479B4(v99, v101 + *(v102 + 48), &qword_184EA0, &qword_129180);
            v103 = v101 + *(v102 + 64);
            *v103 = v151;
            v104 = v149;
            *(v103 + 8) = v150;
            *(v103 + 16) = v104;
            *(v103 + 24) = v95;
            *(v103 + 32) = v94;
            *(v103 + 40) = v96;
            *(v103 + 48) = v97;

            sub_488C8(v87, &qword_184EA0, &qword_129180);
            sub_488C8(v153, &qword_184EC8, &qword_1291A8);

            sub_488C8(v99, &qword_184EA0, &qword_129180);
            sub_488C8(v154, &qword_184EC8, &qword_1291A8);
            v105 = v156;
            sub_548D0(v101, v156, &qword_184E98, &qword_129178);
            v106 = 0;
            goto LABEL_22;
          }

          v54 = _swiftEmptyArrayStorage;
        }

        else
        {
          swift_unknownObjectRelease();
          sub_A1830(v49, v49 + 32, 0, (2 * v51) | 1);
          v54 = v133;
        }

        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      v194[0] = v45;
      sub_488C8(v194, &qword_1845D8, &qword_1284A8);
      v173 = v191;
      sub_488C8(&v173, &qword_1845E0, &qword_1284B0);
      v181[0] = *(&v191 + 1);
      sub_488C8(v181, &qword_1845E8, &qword_1284B8);
    }

    else
    {
      v194[0] = v45;
      sub_488C8(v194, &qword_1845D8, &qword_1284A8);
      v173 = v191;
      sub_488C8(&v173, &qword_1845E0, &qword_1284B0);
      v181[0] = *(&v191 + 1);
      sub_488C8(v181, &qword_1845E8, &qword_1284B8);
    }

    v106 = 1;
    v105 = v156;
LABEL_22:
    v107 = v135;
    (*(v158 + 56))(v105, v106, 1, v159);
    v108 = v155;
    sub_479B4(v107, v155, &qword_184ED8, &qword_1291B8);
    v109 = v157;
    sub_479B4(v105, v157, &qword_184ED0, &qword_1291B0);
    v110 = v160;
    sub_479B4(v108, v160, &qword_184ED8, &qword_1291B8);
    v111 = sub_46F9C(&qword_184F00, &qword_1291E0);
    sub_479B4(v109, v110 + *(v111 + 48), &qword_184ED0, &qword_1291B0);
    sub_488C8(v105, &qword_184ED0, &qword_1291B0);
    sub_488C8(v107, &qword_184ED8, &qword_1291B8);
    sub_488C8(v109, &qword_184ED0, &qword_1291B0);
    sub_488C8(v108, &qword_184ED8, &qword_1291B8);
    v42 = v165;
    sub_548D0(v110, v165, &qword_184E90, &qword_129170);
    v46 = 0;
    v5 = v166;
    a1 = v138;
    a2 = v139;
    v11 = v136;
  }

  v112 = *(v11 + 56);
  v113 = 1;
  v112(v42, v46, 1, v168);
  v175 = a1;
  *&v176 = a2;
  v114 = sub_116CC0();
  v115 = (*(*v181[3] + 144))(v114);

  v116 = v170;
  if (v115 != 1)
  {
    v117 = v163;
    sub_116DD0();
    v118 = sub_116600();
    v119 = v117 + *(v162 + 36);
    *v119 = v118;
    *(v119 + 8) = 0u;
    *(v119 + 24) = 0u;
    *(v119 + 40) = 1;
    sub_46FE4(v115, 0, &v175);
    v120 = v164;
    sub_479B4(v117, v164, &qword_184EA0, &qword_129180);
    v121 = v175;
    v122 = v176;
    v123 = BYTE8(v176);
    v124 = v177;
    v125 = v178;
    v126 = v161;
    sub_479B4(v120, v161, &qword_184EA0, &qword_129180);
    v127 = v126 + *(sub_46F9C(&qword_184EF0, &qword_1291D0) + 48);
    *v127 = v121;
    *(v127 + 8) = v122;
    *(v127 + 16) = v123 & 1;
    *(v127 + 24) = v124 & 1;
    *(v127 + 32) = v125;

    sub_488C8(v117, &qword_184EA0, &qword_129180);

    v5 = v166;

    v128 = v120;
    v42 = v165;
    sub_488C8(v128, &qword_184EA0, &qword_129180);
    sub_548D0(v126, v116, &qword_184E80, &qword_129160);
    v113 = 0;
  }

  (*(v169 + 56))(v116, v113, 1, v5);
  v129 = v167;
  sub_479B4(v42, v167, &qword_184EE0, &qword_1291C0);
  v130 = v171;
  sub_479B4(v116, v171, &qword_184E88, &qword_129168);
  v131 = v172;
  sub_479B4(v129, v172, &qword_184EE0, &qword_1291C0);
  v132 = sub_46F9C(&qword_184EE8, &qword_1291C8);
  sub_479B4(v130, v131 + *(v132 + 48), &qword_184E88, &qword_129168);
  sub_488C8(v116, &qword_184E88, &qword_129168);
  sub_488C8(v42, &qword_184EE0, &qword_1291C0);
  sub_488C8(v130, &qword_184E88, &qword_129168);
  sub_488C8(v129, &qword_184EE0, &qword_1291C0);
}

void sub_91634(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v84 = a2;
  v85 = a3;
  v83 = a4;
  v86 = sub_46F9C(&qword_184F28, &qword_129220);
  v82 = *(v86 - 8);
  __chkstk_darwin(v86);
  v77 = &v76 - v5;
  v6 = sub_46F9C(&qword_184F30, &qword_129228);
  __chkstk_darwin(v6 - 8);
  v80 = &v76 - v7;
  v8 = type metadata accessor for SummaryChartViewModel(0);
  v78 = *(v8 - 8);
  v79 = v8;
  __chkstk_darwin(v8);
  v76 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_46F9C(&qword_184F38, &unk_129230);
  __chkstk_darwin(v10 - 8);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v76 - v14;
  v16 = sub_46F9C(&qword_184F40, &unk_12C690);
  __chkstk_darwin(v16);
  v81 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v76 - v19;
  v21 = *a1;
  if (v21 == 1)
  {
    v22 = v15;
    v23 = objc_opt_self();
    v24 = sub_117170();
    v25 = [v23 modelSpecificLocalizedStringKeyForKey:v24];

    v26 = BatteryUILocalization(v25);
    if (!v26)
    {
      __break(1u);
      return;
    }

    v27 = sub_1171B0();
    v89 = v28;
    v90 = v27;

    v15 = v22;
  }

  else
  {
    sub_A2458(*a1);
    v89 = v30;
    v90 = v29;
  }

  v88 = sub_116610();
  sub_115FD0();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  LOBYTE(v96) = 0;
  v87 = sub_116600();
  sub_116DD0();
  v39 = sub_116620();
  sub_115FD0();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = &v20[*(sub_46F9C(&qword_184EA0, &qword_129180) + 36)];
  *v48 = v39;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  v49 = sub_116600();
  v50 = &v20[*(v16 + 36)];
  *v50 = v49;
  *(v50 + 8) = 0u;
  *(v50 + 24) = 0u;
  v50[40] = 1;
  v96 = v84;
  v97 = v85;
  sub_46F9C(&qword_1845A0, &qword_128458);
  v51 = sub_116CC0();
  v52 = (*(*v91 + 144))(v51);

  v53 = 1;
  if (v52 != 1)
  {
    v54 = a1[1];
    v55 = a1[7];
    v115 = a1[6];
    v116 = v54;
    v114 = v55;
    sub_479B4(&v116, &v96, &qword_1845D8, &qword_1284A8);
    sub_479B4(&v115, &v96, &qword_1845E0, &qword_1284B0);
    sub_479B4(&v114, &v96, &qword_1845E8, &qword_1284B8);
    v56 = v80;
    sub_91F08(a1, v52, v21, v80);
    if ((*(v78 + 48))(v56, 1, v79) == 1)
    {
      sub_488C8(v56, &qword_184F30, &qword_129228);
      v53 = 1;
    }

    else
    {
      v57 = v56;
      v58 = v76;
      sub_A2BF0(v57, v76, type metadata accessor for SummaryChartViewModel);
      v59 = v77;
      sub_A3714(v58, v77, type metadata accessor for SummaryChartViewModel);
      v96 = v84;
      v97 = v85;
      v60 = sub_116CC0();
      v61 = (*(*v91 + 248))(v60);

      v62 = type metadata accessor for SummaryChart(0);
      *(v59 + *(v62 + 20)) = v61;
      v63 = *(v62 + 24);
      v64 = sub_5A754();
      swift_beginAccess();
      *(v59 + v63) = *v64;

      LOBYTE(v64) = sub_116620();
      v65 = v59 + *(sub_46F9C(&qword_184F58, &qword_129250) + 36);
      *v65 = v64;
      *(v65 + 8) = 0u;
      *(v65 + 24) = 0u;
      *(v65 + 40) = 1;
      LOBYTE(v64) = sub_116600();
      sub_A68C8(v58, type metadata accessor for SummaryChartViewModel);
      v66 = v59 + *(v86 + 36);
      *v66 = v64;
      *(v66 + 8) = 0u;
      *(v66 + 24) = 0u;
      *(v66 + 40) = 1;
      sub_548D0(v59, v15, &qword_184F28, &qword_129220);
      v53 = 0;
    }
  }

  (*(v82 + 56))(v15, v53, 1, v86);
  v67 = v20;
  v68 = v20;
  v69 = v81;
  sub_479B4(v68, v81, &qword_184F40, &unk_12C690);
  sub_479B4(v15, v12, &qword_184F38, &unk_129230);
  *&v91 = v90;
  *(&v91 + 1) = v89;
  LOBYTE(v92) = v88;
  *(&v92 + 1) = *v113;
  DWORD1(v92) = *&v113[3];
  *(&v92 + 1) = v32;
  *&v93 = v34;
  *(&v93 + 1) = v36;
  *&v94 = v38;
  BYTE8(v94) = 0;
  *(&v94 + 9) = *v112;
  HIDWORD(v94) = *&v112[3];
  LOBYTE(v95[0]) = v87;
  DWORD1(v95[0]) = *&v111[3];
  *(v95 + 1) = *v111;
  *(v95 + 8) = 0u;
  *(&v95[1] + 8) = 0u;
  BYTE8(v95[2]) = 1;
  v70 = v92;
  v71 = v83;
  *v83 = v91;
  v71[1] = v70;
  v72 = v93;
  v73 = v94;
  *(v71 + 89) = *(&v95[1] + 9);
  v74 = v95[1];
  v71[4] = v95[0];
  v71[5] = v74;
  v71[2] = v72;
  v71[3] = v73;
  v75 = sub_46F9C(&qword_184F48, &qword_129240);
  sub_479B4(v69, v71 + *(v75 + 48), &qword_184F40, &unk_12C690);
  sub_479B4(v12, v71 + *(v75 + 64), &qword_184F38, &unk_129230);
  sub_479B4(&v91, &v96, &qword_184F50, &qword_129248);
  sub_488C8(v15, &qword_184F38, &unk_129230);
  sub_488C8(v67, &qword_184F40, &unk_12C690);
  sub_488C8(v12, &qword_184F38, &unk_129230);
  sub_488C8(v69, &qword_184F40, &unk_12C690);
  v96 = v90;
  v97 = v89;
  v98 = v88;
  *v99 = *v113;
  *&v99[3] = *&v113[3];
  v100 = v32;
  v101 = v34;
  v102 = v36;
  v103 = v38;
  v104 = 0;
  *v105 = *v112;
  *&v105[3] = *&v112[3];
  v106 = v87;
  *&v107[3] = *&v111[3];
  *v107 = *v111;
  v108 = 0u;
  v109 = 0u;
  v110 = 1;
  sub_488C8(&v96, &qword_184F50, &qword_129248);
}

uint64_t sub_91F08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v113 = type metadata accessor for SummaryChartBucket(0);
  v9 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v114 = &v93 - v12;
  v13 = sub_115760();
  v115 = *(v13 - 8);
  v116 = v13;
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  v19 = &v93 - v18;
  if (!a2)
  {
    v119[0] = a1[1];
    sub_488C8(v119, &qword_1845D8, &qword_1284A8);
    v118 = a1[6];
    sub_488C8(&v118, &qword_1845E0, &qword_1284B0);
    v117 = a1[7];
    sub_488C8(&v117, &qword_1845E8, &qword_1284B8);
LABEL_62:
    v53 = type metadata accessor for SummaryChartViewModel(0);
    return (*(*(v53 - 8) + 56))(a4, 1, 1, v53);
  }

  v100 = v17;
  v101 = v16;
  v102 = a3;
  v20 = *(a2 + 16);
  v112 = a1;
  if (v20)
  {
    v21 = 0;
    v22 = (a2 + 88);
    v23 = _swiftEmptyArrayStorage;
    while (v21 < *(a2 + 16))
    {
      v24 = *v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_A0060(0, *(v23 + 2) + 1, 1, v23);
      }

      v26 = *(v23 + 2);
      v25 = *(v23 + 3);
      v4 = (v26 + 1);
      if (v26 >= v25 >> 1)
      {
        v23 = sub_A0060((v25 > 1), v26 + 1, 1, v23);
      }

      v21 = (v21 + 1);
      *(v23 + 2) = v4;
      *&v23[8 * v26 + 32] = v24;
      v22 += 15;
      if (v20 == v21)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_107;
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_13:
  v108 = v9;

  v27 = *(v23 + 2);
  v28 = v112;
  if (v27)
  {
    v29 = (v23 + 32);
    v30 = _swiftEmptyArrayStorage;
    do
    {
      v31 = *v29;
      v32 = trunc(*v29);
      if (*v29 > -9.22337204e18 && v31 < 9.22337204e18 && v31 == v32)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_A0164(0, *(v30 + 16) + 1, 1, v30);
        }

        v36 = *(v30 + 16);
        v35 = *(v30 + 24);
        if (v36 >= v35 >> 1)
        {
          v30 = sub_A0164((v35 > 1), v36 + 1, 1, v30);
        }

        *(v30 + 16) = v36 + 1;
        *(v30 + 8 * v36 + 32) = v31;
      }

      ++v29;
      --v27;
    }

    while (v27);
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  v37 = v28[6];
  if (!v37)
  {
    v119[0] = v28[1];
    sub_488C8(v119, &qword_1845D8, &qword_1284A8);
    v118 = v28[7];
    sub_488C8(&v118, &qword_1845E8, &qword_1284B8);
LABEL_61:

    goto LABEL_62;
  }

  v38 = *(v37 + 16);
  v111 = v30;
  if (!v38)
  {
    v41 = _swiftEmptyArrayStorage;
    v38 = _swiftEmptyArrayStorage[2];
    if (!v38)
    {
      goto LABEL_58;
    }

LABEL_50:
    v109 = a4;
    goto LABEL_51;
  }

  v39 = 0;
  v40 = (v37 + 32);
  v41 = _swiftEmptyArrayStorage;
  do
  {
    if (v39 >= *(v37 + 16))
    {
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v42 = *v40;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_A0164(0, *(v41 + 2) + 1, 1, v41);
    }

    v30 = *(v41 + 2);
    v43 = *(v41 + 3);
    v23 = (v30 + 1);
    if (v30 >= v43 >> 1)
    {
      v41 = sub_A0164((v43 > 1), v30 + 1, 1, v41);
    }

    ++v39;
    *(v41 + 2) = v23;
    *&v41[8 * v30 + 32] = v42;
    v40 += 2;
  }

  while (v38 != v39);
  v23 = *(v37 + 16);
  if (v23)
  {
    v44 = 0;
    v30 = v37 + 40;
    v39 = _swiftEmptyArrayStorage;
    do
    {
      if (v44 >= *(v37 + 16))
      {
        goto LABEL_112;
      }

      v45 = *v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_A0060(0, *(v39 + 16) + 1, 1, v39);
      }

      v47 = *(v39 + 16);
      v46 = *(v39 + 24);
      v38 = (v47 + 1);
      if (v47 >= v46 >> 1)
      {
        v39 = sub_A0060((v46 > 1), v47 + 1, 1, v39);
      }

      ++v44;
      *(v39 + 16) = v38;
      *(v39 + 8 * v47 + 32) = v45;
      v30 += 16;
    }

    while (v23 != v44);
    v109 = a4;
LABEL_51:
    v119[0] = _swiftEmptyArrayStorage;
    sub_A0984(0, v38, 0);
    v23 = v119[0];
    v48 = 32;
    do
    {
      sub_115700();
      v119[0] = v23;
      v50 = *(v23 + 2);
      v49 = *(v23 + 3);
      if (v50 >= v49 >> 1)
      {
        sub_A0984((v49 > 1), v50 + 1, 1);
        v23 = v119[0];
      }

      *(v23 + 2) = v50 + 1;
      (*(v115 + 32))(&v23[((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v50], v19, v116);
      v48 += 8;
      --v38;
    }

    while (v38);

    a4 = v109;
    v30 = v111;
    v28 = v112;
    if (v112[3])
    {
      goto LABEL_56;
    }

    goto LABEL_59;
  }

  v30 = v111;
  v28 = v112;
  v38 = _swiftEmptyArrayStorage[2];
  if (v38)
  {
    goto LABEL_50;
  }

LABEL_58:
  v23 = _swiftEmptyArrayStorage;

  if (v28[3])
  {
LABEL_56:
    v119[0] = v28[1];
    sub_488C8(v119, &qword_1845D8, &qword_1284A8);

    v118 = v28[7];
    sub_488C8(&v118, &qword_1845E8, &qword_1284B8);
LABEL_60:

    goto LABEL_61;
  }

LABEL_59:
  v38 = v28[4];
  v51 = *(v28 + 40);
  v52 = v28[2];
  v119[0] = v28[1];
  sub_488C8(v119, &qword_1845D8, &qword_1284A8);

  v118 = v28[7];
  sub_488C8(&v118, &qword_1845E8, &qword_1284B8);
  if (v51)
  {
    goto LABEL_60;
  }

  v55 = *(v30 + 16);
  if (!v55)
  {
    goto LABEL_60;
  }

  v56 = *(v41 + 2);
  if (!v56)
  {
    goto LABEL_60;
  }

  v97 = v52;
  v96 = v38;
  if (v56 >= v55)
  {
    v19 = v55;
  }

  else
  {
    v19 = v56;
  }

  if (v19 >= 8)
  {
    v39 = 8;
  }

  else
  {
    v39 = v19;
  }

  if (v39 > *(v23 + 2))
  {
    goto LABEL_117;
  }

  v57 = v114;
  v58 = *(v115 + 16);
  v37 = (*(v115 + 80) + 32) & ~*(v115 + 80);
  v59 = v113;
  v60 = *(v113 + 24);
  v107 = *(v115 + 72);
  v95 = &v23[v37];
  v105 = v58;
  v106 = v115 + 16;
  (v58)(v114 + v60);
  *v57 = v97;
  *(v57 + 8) = 0;
  *(v57 + 16) = 1;
  *(v57 + *(v59 + 28)) = 0;
  v38 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_118;
  }

  while (1)
  {
    v62 = *(v38 + 2);
    v61 = *(v38 + 3);
    v112 = v38;
    v38 = (v62 + 1);
    if (v62 >= v61 >> 1)
    {
      v112 = sub_9FE84((v61 > 1), v62 + 1, 1, v112, &qword_184E38, &unk_129110, type metadata accessor for SummaryChartBucket);
    }

    v63 = v112;
    v112[2] = v38;
    v104 = (*(v108 + 80) + 32) & ~*(v108 + 80);
    v103 = v108[9];
    sub_A2BF0(v114, v63 + v104 + v103 * v62, type metadata accessor for SummaryChartBucket);
    v94 = v37;
    if (v19 == &dword_0 + 1)
    {
      break;
    }

    v99 = (v30 + 32);
    v98 = -v39;
    v77 = v41 + 40;
    v39 = &v23[v107 + v37];
    v37 = -1;
    v78 = 1;
    v64 = v97;
    v30 = v112;
    v109 = a4;
    while (1)
    {
      v79 = *(v111 + 2);
      v80 = v79 + v37;
      if (__OFADD__(v79, v37))
      {
        break;
      }

      v81 = __OFSUB__(v80, 1);
      v82 = v80 - 1;
      if (v81)
      {
        goto LABEL_114;
      }

      if (v82 >= v79)
      {
        goto LABEL_115;
      }

      if (v78 >= *(v41 + 2))
      {
        goto LABEL_116;
      }

      v83 = v99[v82];
      v108 = v77;
      v84 = *v77;
      if (*v77 <= v64)
      {
        v85 = v64;
      }

      else
      {
        v85 = *v77;
      }

      if (v85 <= v83)
      {
        v85 = v83;
      }

      v112 = v85;
      v19 = v30;
      v86 = v113;
      v87 = v114;
      v105(v114 + *(v113 + 24), v39, v116);
      *v87 = v84;
      *(v87 + 8) = v83;
      *(v87 + 16) = 0;
      v88 = *(v86 + 28);
      v30 = v19;
      *(v87 + v88) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_9FE84(0, *(v19 + 2) + 1, 1, v19, &qword_184E38, &unk_129110, type metadata accessor for SummaryChartBucket);
      }

      a4 = v109;
      v90 = *(v30 + 16);
      v89 = *(v30 + 24);
      v38 = (v90 + 1);
      if (v90 >= v89 >> 1)
      {
        v30 = sub_9FE84((v89 > 1), v90 + 1, 1, v30, &qword_184E38, &unk_129110, type metadata accessor for SummaryChartBucket);
      }

      *(v30 + 16) = v38;
      sub_A2BF0(v114, v30 + v104 + v103 * v90, type metadata accessor for SummaryChartBucket);
      --v37;
      v77 = v108 + 1;
      v39 += v107;
      ++v78;
      v64 = v112;
      if (v98 == v37)
      {
        goto LABEL_77;
      }
    }

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
    v38 = sub_9FE84(0, *(v38 + 2) + 1, 1, v38, &qword_184E38, &unk_129110, type metadata accessor for SummaryChartBucket);
  }

  v64 = v97;
  v30 = v112;
LABEL_77:
  v20 = v64;

  v19 = v30;
  if (*(v30 + 16) <= 7uLL)
  {
    v65 = *(v23 + 2);
    v4 = v96;
    v9 = v97;
    if (!v65)
    {

LABEL_109:
      v91 = v102;
      goto LABEL_110;
    }

    v66 = v100;
    v67 = v116;
    v105(v100, &v95[(v65 - 1) * v107], v116);

    v23 = v101;
    (*(v115 + 32))(v101, v66, v67);
    v68 = sub_A2718(v23, 8 - *(v19 + 2), 1);
    v69 = v68[2];
    if (v69)
    {
      v70 = v68 + v94;
      v71 = v110;
      do
      {
        v72 = v113;
        v105(v71 + *(v113 + 24), v70, v116);
        *v71 = 0;
        *(v71 + 8) = 0;
        *(v71 + 16) = 1;
        *(v71 + *(v72 + 28)) = 1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v74 = sub_9FE84(0, *(v19 + 2) + 1, 1, v19, &qword_184E38, &unk_129110, type metadata accessor for SummaryChartBucket);
        }

        v76 = *(v74 + 2);
        v75 = *(v74 + 3);
        if (v76 >= v75 >> 1)
        {
          v74 = sub_9FE84((v75 > 1), v76 + 1, 1, v74, &qword_184E38, &unk_129110, type metadata accessor for SummaryChartBucket);
        }

        *(v74 + 2) = v76 + 1;
        v19 = v74;
        v71 = v110;
        sub_A2BF0(v110, &v74[v104 + v76 * v103], type metadata accessor for SummaryChartBucket);
        v70 += v107;
        --v69;
      }

      while (v69);

      v23 = v101;
      v4 = v96;
      v9 = v97;
      goto LABEL_108;
    }

LABEL_107:

LABEL_108:
    (*(v115 + 8))(v23, v116);
    goto LABEL_109;
  }

  v91 = v102;
  v4 = v96;
  v9 = v97;
LABEL_110:
  v92 = type metadata accessor for SummaryChartViewModel(0);
  sub_115750();
  *a4 = v19;
  *(a4 + 8) = v9;
  *(a4 + 16) = v4;
  *(a4 + 24) = v91;
  *(a4 + *(v92 + 36)) = v20;
  return (*(*(v92 - 8) + 56))(a4, 0, 1, v92);
}

uint64_t sub_92DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_116600();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = v10;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 1;
}

unsigned __int8 *sub_92E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_116FA0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v106 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_116FE0();
  v105 = *(v7 - 8);
  __chkstk_darwin(v7);
  v104 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_116FB0();
  v102 = *(v9 - 8);
  v103 = v9;
  __chkstk_darwin(v9);
  v101 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v123[0] = a1;
  *(&v123[0] + 1) = a2;
  sub_46F9C(&qword_1845A0, &qword_128458);
  v11 = sub_116CC0();
  (*(*v108 + 216))(&v116, v11);

  if (v117 != 1)
  {
    v14 = v118;
    v13 = v119;
    v15 = v116;
    v120 = v117;
    sub_488C8(&v120, &qword_1845D8, &qword_1284A8);
    v121 = v14;
    sub_488C8(&v121, &qword_1845E0, &qword_1284B0);
    v122 = v13;
    result = sub_488C8(&v122, &qword_1845E8, &qword_1284B8);
    if (v15 >= 2)
    {
      v99 = v7;
      v100 = v5;
      sub_46F9C(&qword_184E48, &qword_129120);
      inited = swift_initStackObject();
      v107 = xmmword_124890;
      *(inited + 16) = xmmword_124890;
      *(inited + 32) = 0x6D75536567617355;
      v17 = inited + 32;
      *(inited + 40) = 0xEC0000007972616DLL;
      *(inited + 48) = v15 - 1;
      v18 = sub_A2E90(inited);
      swift_setDeallocating();
      sub_488C8(v17, &qword_184E50, &unk_129128);
      v115 = v18;
      if (v15 != 4)
      {
        goto LABEL_103;
      }

      *&v123[0] = a1;
      *(&v123[0] + 1) = a2;
      v19 = sub_116CC0();
      v20 = (*(*v108 + 192))(v19);

      if (!v20)
      {
        goto LABEL_103;
      }

      if (*(v20 + 16) >= 3uLL)
      {
        v21 = 3;
      }

      else
      {
        v21 = *(v20 + 16);
      }

      sub_1179F0();
      swift_unknownObjectRetain_n();
      v22 = swift_dynamicCastClass();
      if (!v22)
      {
        swift_unknownObjectRelease();
        v22 = _swiftEmptyArrayStorage;
      }

      v23 = v22[2];

      if (v23 == v21)
      {
        v24 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v24)
        {
          goto LABEL_14;
        }

        v24 = _swiftEmptyArrayStorage;
      }

      else
      {
        swift_unknownObjectRelease();
        sub_A1830(v20, v20 + 32, 0, (2 * v21) | 1);
        v24 = v95;
      }

      swift_unknownObjectRelease();
LABEL_14:
      v25 = v24[2];
      if (v25)
      {
        v26 = v4;
        v114 = _swiftEmptyArrayStorage;
        sub_A09C4(0, v25, 0);
        v27 = 4;
        v28 = v114;
        do
        {
          v29 = *&v24[v27 + 2];
          v123[0] = *&v24[v27];
          v123[1] = v29;
          v30 = *&v24[v27 + 4];
          v31 = *&v24[v27 + 6];
          v32 = *&v24[v27 + 10];
          v123[4] = *&v24[v27 + 8];
          v123[5] = v32;
          v123[2] = v30;
          v123[3] = v31;
          v33 = *&v24[v27 + 12];
          v34 = *&v24[v27 + 14];
          v35 = *&v24[v27 + 16];
          v124 = v24[v27 + 18];
          v123[7] = v34;
          v123[8] = v35;
          v123[6] = v33;
          sub_6B280(v123, &v108);
          v36 = sub_5FAE8();
          sub_6AAAC(v123);
          v114 = v28;
          v38 = v28[2];
          v37 = v28[3];
          if (v38 >= v37 >> 1)
          {
            sub_A09C4((v37 > 1), v38 + 1, 1);
            v28 = v114;
          }

          v28[2] = v38 + 1;
          *(v28 + v38 + 32) = v36;
          v27 += 19;
          --v25;
        }

        while (v25);

        v4 = v26;
      }

      else
      {

        v28 = _swiftEmptyArrayStorage;
      }

      v39 = v28[2];
      v108 = 0x7FFFFFFFFFFFFFFFLL;
      sub_1179B0();
      v40 = sub_117210();

      if (v39 >= v40 / 2)
      {

        v50 = -1;
        goto LABEL_102;
      }

      v98 = v28;
      if (v39)
      {
        v108 = _swiftEmptyArrayStorage;
        sub_7122C(0, v39, 0);
        v41 = v108;
        v42 = (v98 + 4);
        do
        {
          v44 = *v42++;
          v43 = v44;
          if (v44 == 26)
          {
            v45 = 0;
          }

          else
          {
            v45 = sub_5E934(v43);
          }

          v108 = v41;
          v47 = v41[2];
          v46 = v41[3];
          v48 = v47 + 1;
          if (v47 >= v46 >> 1)
          {
            v49 = v45;
            sub_7122C((v46 > 1), v47 + 1, 1);
            v45 = v49;
            v41 = v108;
          }

          v41[2] = v48;
          v41[v47 + 4] = v45;
          --v39;
        }

        while (v39);
        v97 = v4;
      }

      else
      {
        v48 = _swiftEmptyArrayStorage[2];
        if (!v48)
        {
          v52 = _swiftEmptyArrayStorage;

          goto LABEL_39;
        }

        v97 = v4;
        v41 = _swiftEmptyArrayStorage;
      }

      v108 = _swiftEmptyArrayStorage;
      sub_A09A4(0, v48, 0);
      v51 = 4;
      v52 = v108;
      do
      {
        v53 = v41[v51];
        sub_46F9C(&qword_182EF8, &unk_125990);
        v54 = swift_allocObject();
        *(v54 + 16) = v107;
        *(v54 + 56) = &type metadata for Int;
        *(v54 + 64) = &protocol witness table for Int;
        *(v54 + 32) = v53;
        v55 = sub_1171C0();
        v57 = v56;
        v108 = v52;
        v59 = v52[2];
        v58 = v52[3];
        if (v59 >= v58 >> 1)
        {
          sub_A09A4((v58 > 1), v59 + 1, 1);
          v52 = v108;
        }

        v52[2] = v59 + 1;
        v60 = &v52[2 * v59];
        v60[4] = v55;
        v60[5] = v57;
        ++v51;
        --v48;
      }

      while (v48);

      v4 = v97;
LABEL_39:
      v108 = v52;
      sub_46F9C(&qword_183878, &unk_126950);
      sub_48800(&qword_184E60, &qword_183878, &unk_126950, &protocol conformance descriptor for [A]);
      v61 = sub_117110();
      v63 = v62;

      v64 = HIBYTE(v63) & 0xF;
      v65 = v61 & 0xFFFFFFFFFFFFLL;
      if ((v63 & 0x2000000000000000) != 0)
      {
        v66 = HIBYTE(v63) & 0xF;
      }

      else
      {
        v66 = v61 & 0xFFFFFFFFFFFFLL;
      }

      if (!v66)
      {

        goto LABEL_103;
      }

      if ((v63 & 0x1000000000000000) != 0)
      {
        LOBYTE(v114) = 0;
        v50 = sub_A0DBC(v61, v63, 10);
        v85 = v96;
LABEL_101:

        if (v85)
        {
LABEL_103:
          sub_A6F9C();
          v87 = v101;
          v86 = v102;
          v88 = v103;
          (*(v102 + 104))(v101, enum case for DispatchQoS.QoSClass.background(_:), v103);
          v89 = sub_117570();
          (*(v86 + 8))(v87, v88);
          v90 = v115;
          v91 = swift_allocObject();
          *(v91 + 16) = v90;
          v112 = sub_A7020;
          v113 = v91;
          v108 = _NSConcreteStackBlock;
          v109 = 1107296256;
          v110 = sub_4E4A8;
          v111 = &unk_168128;
          v92 = _Block_copy(&v108);
          v93 = v104;
          sub_116FC0();
          v114 = _swiftEmptyArrayStorage;
          sub_A3C98(&qword_182ED0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_46F9C(&qword_182ED8, &unk_124BA0);
          sub_48800(&qword_182EE0, &qword_182ED8, &unk_124BA0, &protocol conformance descriptor for [A]);
          v94 = v106;
          sub_117680();
          sub_117550();
          _Block_release(v92);

          (*(v100 + 8))(v94, v4);
          (*(v105 + 8))(v93, v99);
        }

LABEL_102:
        sub_93E84(v50, 0, 0x656966696C617551, 0xEA00000000007372);
        goto LABEL_103;
      }

      if ((v63 & 0x2000000000000000) != 0)
      {
        v108 = v61;
        v109 = v63 & 0xFFFFFFFFFFFFFFLL;
        if (v61 == 43)
        {
          if (v64)
          {
            if (--v64)
            {
              v50 = 0;
              v77 = &v108 + 1;
              while (1)
              {
                v78 = *v77 - 48;
                if (v78 > 9)
                {
                  break;
                }

                v79 = 10 * v50;
                if ((v50 * 10) >> 64 != (10 * v50) >> 63)
                {
                  break;
                }

                v50 = v79 + v78;
                if (__OFADD__(v79, v78))
                {
                  break;
                }

                ++v77;
                if (!--v64)
                {
                  goto LABEL_100;
                }
              }
            }

            goto LABEL_99;
          }

LABEL_113:
          __break(1u);
          return result;
        }

        if (v61 != 45)
        {
          if (v64)
          {
            v50 = 0;
            v82 = &v108;
            while (1)
            {
              v83 = *v82 - 48;
              if (v83 > 9)
              {
                break;
              }

              v84 = 10 * v50;
              if ((v50 * 10) >> 64 != (10 * v50) >> 63)
              {
                break;
              }

              v50 = v84 + v83;
              if (__OFADD__(v84, v83))
              {
                break;
              }

              v82 = (v82 + 1);
              if (!--v64)
              {
                goto LABEL_100;
              }
            }
          }

          goto LABEL_99;
        }

        if (v64)
        {
          if (--v64)
          {
            v50 = 0;
            v71 = &v108 + 1;
            while (1)
            {
              v72 = *v71 - 48;
              if (v72 > 9)
              {
                break;
              }

              v73 = 10 * v50;
              if ((v50 * 10) >> 64 != (10 * v50) >> 63)
              {
                break;
              }

              v50 = v73 - v72;
              if (__OFSUB__(v73, v72))
              {
                break;
              }

              ++v71;
              if (!--v64)
              {
                goto LABEL_100;
              }
            }
          }

          goto LABEL_99;
        }
      }

      else
      {
        if ((v61 & 0x1000000000000000) != 0)
        {
          result = ((v63 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          result = sub_117740();
        }

        v67 = *result;
        if (v67 == 43)
        {
          if (v65 >= 1)
          {
            v64 = v65 - 1;
            if (v65 != 1)
            {
              v50 = 0;
              if (result)
              {
                v74 = result + 1;
                while (1)
                {
                  v75 = *v74 - 48;
                  if (v75 > 9)
                  {
                    goto LABEL_99;
                  }

                  v76 = 10 * v50;
                  if ((v50 * 10) >> 64 != (10 * v50) >> 63)
                  {
                    goto LABEL_99;
                  }

                  v50 = v76 + v75;
                  if (__OFADD__(v76, v75))
                  {
                    goto LABEL_99;
                  }

                  ++v74;
                  if (!--v64)
                  {
                    goto LABEL_100;
                  }
                }
              }

              goto LABEL_91;
            }

            goto LABEL_99;
          }

          goto LABEL_112;
        }

        if (v67 != 45)
        {
          if (v65)
          {
            v50 = 0;
            if (result)
            {
              while (1)
              {
                v80 = *result - 48;
                if (v80 > 9)
                {
                  goto LABEL_99;
                }

                v81 = 10 * v50;
                if ((v50 * 10) >> 64 != (10 * v50) >> 63)
                {
                  goto LABEL_99;
                }

                v50 = v81 + v80;
                if (__OFADD__(v81, v80))
                {
                  goto LABEL_99;
                }

                ++result;
                if (!--v65)
                {
                  goto LABEL_91;
                }
              }
            }

            goto LABEL_91;
          }

LABEL_99:
          v50 = 0;
          LOBYTE(v64) = 1;
          goto LABEL_100;
        }

        if (v65 >= 1)
        {
          v64 = v65 - 1;
          if (v65 != 1)
          {
            v50 = 0;
            if (result)
            {
              v68 = result + 1;
              while (1)
              {
                v69 = *v68 - 48;
                if (v69 > 9)
                {
                  goto LABEL_99;
                }

                v70 = 10 * v50;
                if ((v50 * 10) >> 64 != (10 * v50) >> 63)
                {
                  goto LABEL_99;
                }

                v50 = v70 - v69;
                if (__OFSUB__(v70, v69))
                {
                  goto LABEL_99;
                }

                ++v68;
                if (!--v64)
                {
                  goto LABEL_100;
                }
              }
            }

LABEL_91:
            LOBYTE(v64) = 0;
LABEL_100:
            LOBYTE(v114) = v64;
            v85 = v64;
            goto LABEL_101;
          }

          goto LABEL_99;
        }

        __break(1u);
      }

      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }
  }

  return result;
}

uint64_t sub_93AD8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x65707954707041;
  v6 = 0x656966696C617571;
  v7 = 0xED00006570795472;
  if (a1 != 4)
  {
    v6 = 0xD000000000000011;
    v7 = 0x8000000000135160;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656C746974627553;
  if (a1 != 1)
  {
    v8 = 0x4449656C646E7542;
  }

  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v8 = 0x656C746954;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x65707954707041)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xED00006570795472;
      if (v9 != 0x656966696C617571)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0x8000000000135160;
      if (v9 != 0xD000000000000011)
      {
LABEL_34:
        v12 = sub_1179E0();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE800000000000000;
    if (a2 == 1)
    {
      if (v9 != 0x656C746974627553)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 0x4449656C646E7542)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE500000000000000;
    if (v9 != 0x656C746954)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_93CCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x4C7972616D6D7553;
    }

    else
    {
      v4 = 0xD000000000000015;
    }

    if (v2)
    {
      v3 = 0xEB00000000747369;
    }

    else
    {
      v3 = 0x8000000000128400;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x80000000001350F0;
    v4 = 0xD000000000000011;
  }

  else if (a1 == 3)
  {
    v3 = 0x8000000000135110;
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x437972616D6D7553;
    v3 = 0xEC00000074726168;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x4C7972616D6D7553;
    }

    else
    {
      v6 = 0xD000000000000015;
    }

    if (a2)
    {
      v5 = 0xEB00000000747369;
    }

    else
    {
      v5 = 0x8000000000128400;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000000001350F0;
    if (v4 != 0xD000000000000011)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x8000000000135110;
    if (v4 != 0xD000000000000013)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEC00000074726168;
    if (v4 != 0x437972616D6D7553)
    {
LABEL_31:
      v7 = sub_1179E0();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_93E84(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_64F08(a3, a4);
    v10 = v9;

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v5;
      v16 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_A081C();
        v13 = v16;
      }

      result = sub_A0508(v8, v13);
      *v5 = v13;
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_A06B8(a1, a3, a4, v15);

    *v4 = v17;
  }

  return result;
}

void sub_93F78(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v28 = a1;
  *(&v28 + 1) = a2;
  sub_4869C(a1, a2, a3);

  v5 = sub_116900();
  v7 = v6;
  v9 = v8;
  sub_116670();
  v10 = sub_1168C0();
  v12 = v11;
  v14 = v13;

  sub_48928(v5, v7, v9 & 1);

  sub_1166C0();
  v15 = sub_116810();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_48928(v10, v12, v14 & 1);

  sub_116EC0();
  sub_116190();
  v22 = v19 & 1;
  v23 = sub_116620();
  sub_115FD0();
  *a4 = v15;
  *(a4 + 8) = v17;
  *(a4 + 16) = v22;
  *(a4 + 24) = v21;
  *(a4 + 96) = v32;
  *(a4 + 112) = v33;
  *(a4 + 128) = v34;
  *(a4 + 32) = v28;
  *(a4 + 48) = v29;
  *(a4 + 64) = v30;
  *(a4 + 80) = v31;
  *(a4 + 144) = v23;
  *(a4 + 152) = v24;
  *(a4 + 160) = v25;
  *(a4 + 168) = v26;
  *(a4 + 176) = v27;
  *(a4 + 184) = 0;
}

uint64_t sub_94190()
{
  swift_getKeyPath();
  (*(*v0 + 296))();

  swift_beginAccess();
  v1 = v0[3];
  sub_A2C78(v1);
  return v1;
}

uint64_t sub_9421C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_94268(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);
  sub_A2C78(*a1);
  return v3(v2);
}

uint64_t sub_942C4(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 304))();
  sub_A2E2C(a1);
}

uint64_t (*sub_9436C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 296))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI21UsageSummaryViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_A3C98(&qword_1845F0, type metadata accessor for UsageSummaryViewModel, &unk_128B8C);
  sub_115920();

  v4[7] = sub_94140(v4);
  return sub_944BC;
}

uint64_t sub_94518()
{
  swift_getKeyPath();
  (*(*v0 + 296))();

  swift_beginAccess();
}

uint64_t sub_9459C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_945E8(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 200);

  return v2(v3);
}

uint64_t sub_9463C(uint64_t a1)
{
  swift_beginAccess();
  if (v1[4])
  {
    if (a1)
    {

      v4 = sub_71350(v3, a1);

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v6 = __chkstk_darwin(KeyPath);
    v8 = v1;
    v9 = a1;
    (*(*v1 + 304))(v6);
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v1[4] = a1;
}

uint64_t sub_94778(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
}

uint64_t (*sub_947D8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 296))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI21UsageSummaryViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_A3C98(&qword_1845F0, type metadata accessor for UsageSummaryViewModel, &unk_128B8C);
  sub_115920();

  v4[7] = sub_944C8(v4);
  return sub_94928;
}

uint64_t sub_94934@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = xmmword_128400;
  if (v3 && *(v3 + 16))
  {
    v5 = *(v3 + 32);
    v12 = *(v3 + 40);
    v6 = *(v3 + 64);
    v7 = *(v3 + 80);
    v8 = *(v3 + 88);
    v9 = *(v3 + 56);
    v10 = *(v3 + 72);

    v4 = v12;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v10 = 0;
    v9 = 0;
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = v10;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  return result;
}

double sub_94A58()
{
  swift_getKeyPath();
  (*(*v0 + 296))();

  swift_beginAccess();
  return v0[5];
}

uint64_t sub_94AD8(double a1, double a2)
{
  result = swift_beginAccess();
  if (v2[5] == a1 && v2[6] == a2)
  {
    v2[5] = a1;
    v2[6] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = __chkstk_darwin(KeyPath);
    (*(*v2 + 304))(v8);
  }

  return result;
}

uint64_t (*sub_94BE4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 296))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI21UsageSummaryViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_A3C98(&qword_1845F0, type metadata accessor for UsageSummaryViewModel, &unk_128B8C);
  sub_115920();

  v4[7] = sub_94A08(v4);
  return sub_94D34;
}

uint64_t sub_94D40(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SummaryItem(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[3] = (&dword_0 + 1);
  v2[4] = 0;
  v117 = v2 + 4;
  v2[5] = 0;
  v2[6] = 0;
  sub_115930();
  v119[0] = 0;
  v118 = a1;
  v8 = sub_117060();
  v11 = v119[0];
  if (!v119[0])
  {
    v8 = sub_8FC60(_swiftEmptyArrayStorage);
    v11 = v8;
  }

  v12 = sub_8FD70(v8, v9, v10);
  sub_61EC0(v11, &type metadata for DailyCoalescedBreakdown, v12, &v122);
  v13 = v122;
  v119[0] = 0;
  v14 = sub_117060();
  v17 = v119[0];
  if (!v119[0])
  {
    v14 = sub_8FC60(_swiftEmptyArrayStorage);
    v17 = v14;
  }

  v18 = sub_A2E3C(v14, v15, v16);
  sub_61EC0(v17, &type metadata for DailyUsageSummary, v18, &v122);
  v60 = v122;
  sub_A2E2C(v2[3]);
  v2[3] = v13;

  v2[2] = v60;
  v19 = (*(*v2 + 18))(v61);
  if (v19 == 1)
  {
    goto LABEL_46;
  }

  v20 = v19;

  sub_A2E2C(v21);
  if (!v20)
  {
    goto LABEL_46;
  }

  v22 = *(v20 + 16);
  if (!v22)
  {

LABEL_46:
    v97 = v117;
    swift_beginAccess();
    if (*v97 && (v98 = , v99 = sub_71350(v98, _swiftEmptyArrayStorage), , (v99 & 1) != 0))
    {
      *v97 = _swiftEmptyArrayStorage;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v101 = __chkstk_darwin(KeyPath);
      *(&v108 - 2) = v2;
      *(&v108 - 1) = _swiftEmptyArrayStorage;
      (*(*v2 + 38))(v101);
    }

    goto LABEL_58;
  }

  v113 = 0;
  v111 = v60;
  v23 = v20 + 120 * v22;
  v25 = *(v23 - 24);
  v24 = *(v23 - 16);
  v26 = *(v23 - 8);
  v110 = *(v23 + 8);

  v116 = v24;

  v109 = v26;

  v132 = _swiftEmptyArrayStorage;
  (*(*v2 + 27))(&v133, v27);
  v28 = v134;
  if (v134 == 1 || (v29 = v136, v137 = v134, v138 = v135, sub_488C8(&v138, &qword_1845E0, &qword_1284B0), v139[0] = v29, sub_488C8(v139, &qword_1845E8, &qword_1284B8), !v28))
  {
    v62 = v116;
    v63 = *(v116 + 16);

    if (!v63)
    {
      v67 = _swiftEmptyArrayStorage;
      goto LABEL_52;
    }

    v65 = 0;
    v66 = v62 + 40;
    v67 = _swiftEmptyArrayStorage;
    v114 = (v63 - 1);
    v115 = v62 + 40;
    while (1)
    {
      v68 = (v66 + 16 * v65);
      v69 = v65;
      while (1)
      {
        if (v69 >= *(v62 + 16))
        {
          __break(1u);
          return result;
        }

        if (*(v67 + 2) >= 3uLL)
        {
          goto LABEL_52;
        }

        if (*(v25 + 16))
        {
          v70 = *(v68 - 1);
          v71 = *v68;

          v72 = sub_64F08(v70, v71);
          v74 = v73;
          v62 = v116;

          if (v74)
          {
            v75 = *(v25 + 56) + 152 * v72;
            v76 = *(v75 + 16);
            v122 = *v75;
            v123 = v76;
            v77 = *(v75 + 80);
            v79 = *(v75 + 32);
            v78 = *(v75 + 48);
            v126 = *(v75 + 64);
            v127 = v77;
            v124 = v79;
            v125 = v78;
            v80 = *(v75 + 96);
            v81 = *(v75 + 112);
            v82 = *(v75 + 128);
            v131 = *(v75 + 144);
            v129 = v81;
            v130 = v82;
            v128 = v80;
            if (*(&v80 + 1) > 0.0)
            {
              break;
            }
          }
        }

LABEL_28:
        v69 = (v69 + 1);
        v68 += 2;
        if (v63 == v69)
        {
          goto LABEL_52;
        }
      }

      v83 = v122;
      if (v122 == 6)
      {
        goto LABEL_27;
      }

      v121 = v122;
      v120 = 0;
      v84 = sub_6B280(&v122, v119);
      sub_68F60(v84, v85, v86);
      if ((sub_117160() & 1) == 0)
      {
        LOBYTE(v119[0]) = v83;
        v121 = 1;
        if ((sub_117160() & 1) == 0)
        {
          LOBYTE(v119[0]) = v83;
          v121 = 4;
          if ((sub_117160() & 1) == 0)
          {
            break;
          }
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_70EC8(0, *(v67 + 2) + 1, 1, v67);
        v67 = result;
      }

      v66 = v115;
      v88 = *(v67 + 2);
      v87 = *(v67 + 3);
      if (v88 >= v87 >> 1)
      {
        result = sub_70EC8((v87 > 1), v88 + 1, 1, v67);
        v67 = result;
      }

      v65 = (v69 + 1);
      *(v67 + 2) = v88 + 1;
      v89 = &v67[152 * v88];
      v90 = v123;
      *(v89 + 2) = v122;
      *(v89 + 3) = v90;
      v91 = v124;
      v92 = v125;
      v93 = v127;
      *(v89 + 6) = v126;
      *(v89 + 7) = v93;
      *(v89 + 4) = v91;
      *(v89 + 5) = v92;
      v94 = v128;
      v95 = v129;
      v96 = v130;
      *(v89 + 88) = v131;
      *(v89 + 9) = v95;
      *(v89 + 10) = v96;
      *(v89 + 8) = v94;
      v132 = v67;
      v62 = v116;
      if (v114 == v69)
      {
LABEL_52:

        goto LABEL_53;
      }
    }

    result = sub_6AAAC(&v122);
LABEL_27:
    v62 = v116;
    goto LABEL_28;
  }

  v30 = *(v28 + 16);
  v115 = v25;
  if (v30)
  {
    v31 = &v7[*(v4 + 40)];
    v32 = v28 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v33 = *(v5 + 72);
    v112 = _swiftEmptyArrayStorage;
    v114 = v31;
    do
    {
      sub_A3714(v32, v7, type metadata accessor for SummaryItem);
      v34 = *v31;
      v35 = v31[1];

      sub_A68C8(v7, type metadata accessor for SummaryItem);
      if (v35)
      {
        v36 = v115;
        if (*(v115 + 16))
        {
          v37 = v7;
          v38 = sub_64F08(v34, v35);
          v40 = v39;

          if ((v40 & 1) != 0 && (v41 = *(v36 + 56) + 152 * v38, v42 = *(v41 + 16), v122 = *v41, v123 = v42, v43 = *(v41 + 80), v45 = *(v41 + 32), v44 = *(v41 + 48), v126 = *(v41 + 64), v127 = v43, v124 = v45, v125 = v44, v46 = *(v41 + 96), v47 = *(v41 + 112), v48 = *(v41 + 128), v131 = *(v41 + 144), v129 = v47, v130 = v48, v128 = v46, *(&v46 + 1) > 0.0))
          {
            sub_6B280(&v122, v119);
            v7 = v37;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v112 = sub_70EC8(0, *(v112 + 2) + 1, 1, v112);
            }

            v31 = v114;
            v50 = *(v112 + 2);
            v49 = *(v112 + 3);
            if (v50 >= v49 >> 1)
            {
              v112 = sub_70EC8((v49 > 1), v50 + 1, 1, v112);
            }

            v51 = v112;
            *(v112 + 2) = v50 + 1;
            v52 = &v51[152 * v50];
            v53 = v123;
            *(v52 + 2) = v122;
            *(v52 + 3) = v53;
            v54 = v124;
            v55 = v125;
            v56 = v127;
            *(v52 + 6) = v126;
            *(v52 + 7) = v56;
            *(v52 + 4) = v54;
            *(v52 + 5) = v55;
            v57 = v128;
            v58 = v129;
            v59 = v130;
            *(v52 + 88) = v131;
            *(v52 + 9) = v58;
            *(v52 + 10) = v59;
            *(v52 + 8) = v57;
            v132 = v51;
          }

          else
          {
            v7 = v37;
            v31 = v114;
          }
        }

        else
        {
        }
      }

      v32 += v33;
      --v30;
    }

    while (v30);
  }

  sub_488C8(&v137, &qword_1845D8, &qword_1284A8);
  v102 = v113;
  sub_957F4(&v132);
  v113 = v102;
  v67 = v132;
LABEL_53:
  v103 = v117;
  swift_beginAccess();
  if (*v103 && (v104 = , v105 = sub_71350(v104, v67), , (v105 & 1) != 0))
  {
    *v117 = v67;
  }

  else
  {
    v106 = swift_getKeyPath();
    v107 = __chkstk_darwin(v106);
    *(&v108 - 2) = v2;
    *(&v108 - 1) = v67;
    (*(*v2 + 38))(v107);
  }

  v60 = v111;
LABEL_58:
  sub_A2E2C(v60);
  return v2;
}

uint64_t sub_957AC()
{

  return swift_deallocObject();
}

Swift::Int sub_957F4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_A2210(v2);
  }

  v3 = *(v2 + 2);
  v44[0] = (v2 + 32);
  v44[1] = v3;
  result = sub_1179A0(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 184;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 - 6) >= *(v12 + 13))
          {
            break;
          }

          v13 = v12 - 152;
          v14 = *(v12 + 1);
          v34 = *v12;
          v35 = v14;
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v17 = *(v12 + 5);
          v38 = *(v12 + 4);
          v39 = v17;
          v36 = v15;
          v37 = v16;
          v18 = *(v12 + 6);
          v19 = *(v12 + 7);
          v20 = *(v12 + 8);
          v43 = *(v12 + 72);
          v42 = v20;
          v40 = v18;
          v41 = v19;
          v21 = *(v12 - 72);
          *(v12 + 4) = *(v12 - 88);
          *(v12 + 5) = v21;
          v22 = *(v12 - 104);
          *(v12 + 2) = *(v12 - 120);
          *(v12 + 3) = v22;
          *(v12 + 18) = *(v12 - 1);
          v23 = *(v12 - 24);
          *(v12 + 7) = *(v12 - 40);
          *(v12 + 8) = v23;
          *(v12 + 6) = *(v12 - 56);
          v24 = *(v12 - 136);
          *v12 = *(v12 - 152);
          *(v12 + 1) = v24;
          v25 = v35;
          *v13 = v34;
          *(v13 + 1) = v25;
          v26 = v36;
          v27 = v37;
          v28 = v39;
          *(v13 + 4) = v38;
          *(v13 + 5) = v28;
          *(v13 + 2) = v26;
          *(v13 + 3) = v27;
          v29 = v40;
          v30 = v41;
          v31 = v42;
          *(v13 + 72) = v43;
          *(v13 + 7) = v30;
          *(v13 + 8) = v31;
          *(v13 + 6) = v29;
          v12 -= 152;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 152;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_117350();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v34 = v7 + 4;
    *(&v34 + 1) = v6;
    sub_A1920(&v34, v33, v44, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_959C4(void *a1)
{
  v3 = (*(*v1 + 144))();
  if (v3 < 2)
  {
    goto LABEL_19;
  }

  v4 = v3;
  v5 = a1[3];
  v6 = a1[4];
  sub_66DE0(a1, v5);
  v43 = (*(v6 + 24))(v5, v6);
  v44 = v7;
  if (!v7)
  {
    sub_A2E2C(v4);
LABEL_19:
    type metadata accessor for AppDetailViewModel(0);
    sub_719FC(a1, v63);
    v40 = _swiftEmptyArrayStorage;
    v41 = v63;
    return sub_F77AC(v40, 0, 1, v41);
  }

  v42 = a1;
  result = v4;
  v46 = *(v4 + 16);
  if (!v46)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_21:
    sub_A2E2C(result);

    type metadata accessor for AppDetailViewModel(0);
    sub_719FC(v42, &v53);
    v41 = &v53;
    v40 = v11;
    return sub_F77AC(v40, 0, 1, v41);
  }

  v9 = 0;
  v10 = v4 + 64;
  v11 = _swiftEmptyArrayStorage;
  v45 = result;
  while (v9 < *(result + 16))
  {
    v48 = *(v10 - 16);
    v47 = *(v10 - 8);
    v12 = *v10;
    v13 = *(v10 + 8);
    v14 = *(v10 + 32);
    v15 = *(v10 + 48);
    if (*(v14 + 16))
    {

      v16 = v15;
      v17 = sub_64F08(v43, v44);
      if (v18)
      {
        v19 = (*(v14 + 56) + 152 * v17);
        v20 = v19[1];
        v49[0] = *v19;
        v49[1] = v20;
        v21 = v19[5];
        v23 = v19[2];
        v22 = v19[3];
        v49[4] = v19[4];
        v49[5] = v21;
        v49[2] = v23;
        v49[3] = v22;
        v24 = v19[6];
        v25 = v19[7];
        v26 = v19[8];
        v50 = *(v19 + 72);
        v49[7] = v25;
        v49[8] = v26;
        v49[6] = v24;
        memmove(__dst, v19, 0x92uLL);
        nullsub_4();
        sub_6B280(v49, &v53);
      }

      else
      {
        sub_68BEC(__dst);
      }

      v59 = __dst[6];
      v60 = __dst[7];
      v61 = __dst[8];
      v62 = v52;
      v55 = __dst[2];
      v56 = __dst[3];
      v57 = __dst[4];
      v58 = __dst[5];
      v53 = __dst[0];
      v54 = __dst[1];
    }

    else
    {
      sub_68BEC(&v53);

      v16 = v15;
    }

    v65[6] = v59;
    v65[7] = v60;
    v65[8] = v61;
    v66 = v62;
    v65[2] = v55;
    v65[3] = v56;
    v65[4] = v57;
    v65[5] = v58;
    v65[0] = v53;
    v65[1] = v54;
    sub_63060(v48, v47, v12, v13, v65, v63);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_71108(0, *(v11 + 2) + 1, 1, v11);
    }

    result = v45;
    v28 = *(v11 + 2);
    v27 = *(v11 + 3);
    if (v28 >= v27 >> 1)
    {
      v11 = sub_71108((v27 > 1), v28 + 1, 1, v11);
      result = v45;
    }

    ++v9;
    *(v11 + 2) = v28 + 1;
    v29 = &v11[216 * v28];
    v30 = v63[1];
    *(v29 + 2) = v63[0];
    *(v29 + 3) = v30;
    v31 = v63[2];
    v32 = v63[3];
    v33 = v63[5];
    *(v29 + 6) = v63[4];
    *(v29 + 7) = v33;
    *(v29 + 4) = v31;
    *(v29 + 5) = v32;
    v34 = v63[6];
    v35 = v63[7];
    v36 = v63[9];
    *(v29 + 10) = v63[8];
    *(v29 + 11) = v36;
    *(v29 + 8) = v34;
    *(v29 + 9) = v35;
    v37 = v63[10];
    v38 = v63[11];
    v39 = v63[12];
    *(v29 + 120) = v64;
    *(v29 + 13) = v38;
    *(v29 + 14) = v39;
    *(v29 + 12) = v37;
    v10 += 120;
    if (v46 == v9)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_95D70()
{
  v1 = *(*v0 + 216);
  v1(&v13);
  if (v14 == 1)
  {
    return sub_116BC0();
  }

  v2 = v15;
  v3 = v16;
  v4 = v17;
  v5 = v18;
  v25 = v14;
  sub_488C8(&v25, &qword_1845D8, &qword_1284A8);
  v26 = v4;
  sub_488C8(&v26, &qword_1845E0, &qword_1284B0);
  v27 = v5;
  v6 = sub_488C8(&v27, &qword_1845E8, &qword_1284B8);
  if (v3)
  {
    return sub_116BC0();
  }

  (v1)(&v19, v6);
  if (v20 == 1)
  {
    return sub_116BC0();
  }

  v7 = v21;
  v8 = v22;
  v9 = v23;
  v10 = v24;
  v28 = v20;
  sub_488C8(&v28, &qword_1845D8, &qword_1284A8);
  v29 = v9;
  sub_488C8(&v29, &qword_1845E0, &qword_1284B0);
  v30 = v10;
  sub_488C8(&v30, &qword_1845E8, &qword_1284B8);
  if ((v8 & 1) != 0 || v7 >= v2)
  {
    return sub_116BC0();
  }

  v11 = [objc_opt_self() systemOrangeColor];
  return sub_116BE0();
}

uint64_t sub_96038()
{

  sub_A2E2C(*(v0 + 24));

  v1 = OBJC_IVAR____TtC14BatteryUsageUI21UsageSummaryViewModel___observationRegistrar;
  v2 = sub_115940();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

Swift::Int sub_96138()
{
  sub_117A90();
  sub_117200();
  return sub_117AD0();
}

Swift::Int sub_96190(unsigned __int8 a1)
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

Swift::Int sub_962C0(uint64_t a1)
{
  sub_117A90();
  sub_117200();
  return sub_117AD0();
}

Swift::Int sub_96314(uint64_t a1, unsigned __int8 a2)
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_96424@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_167900;
  v7._object = v3;
  v5 = sub_117890(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_964B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_167938;
  v8._object = a2;
  v6 = sub_117890(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_9650C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_A6F48(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_96548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_A6F48(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

void *sub_96584@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_A2F8C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::Int sub_965D4()
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_966CC(uint64_t a1)
{
  sub_117200();
}

Swift::Int sub_967B0(uint64_t a1)
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

unint64_t sub_968A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_A313C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_968D4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000747369;
  v4 = 0x4C7972616D6D7553;
  v5 = 0x80000000001350F0;
  v6 = 0x8000000000135110;
  v7 = 0xD000000000000013;
  if (v2 != 3)
  {
    v7 = 0x437972616D6D7553;
    v6 = 0xEC00000074726168;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v5 = v6;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x8000000000128400;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_96988()
{
  v1 = *v0;
  v2 = 0x4C7972616D6D7553;
  v3 = 0xD000000000000013;
  if (v1 != 3)
  {
    v3 = 0x437972616D6D7553;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

unint64_t sub_96A38@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_A313C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_96A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_A6D70(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_96AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_A6D70(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

double sub_96AE4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_A3188(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

Swift::Int sub_96B30()
{
  v1 = *v0;
  sub_117A90();
  sub_117AA0(v1 - 1);
  return sub_117AD0();
}

Swift::Int sub_96BA8(uint64_t a1)
{
  v2 = *v1;
  sub_117A90();
  sub_117AA0(v2 - 1);
  return sub_117AD0();
}

uint64_t sub_96BEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_A34B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_96C9C(uint64_t a1)
{
  sub_117200();
}

unint64_t sub_96DA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_A351C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_96DD0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746954;
  v5 = 0xE700000000000000;
  v6 = 0x65707954707041;
  v7 = 0xED00006570795472;
  v8 = 0x656966696C617571;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000000135160;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x656C746974627553;
  if (v2 != 1)
  {
    v9 = 0x4449656C646E7542;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_96E9C()
{
  v1 = *v0;
  v2 = 0x656C746954;
  v3 = 0x65707954707041;
  v4 = 0x656966696C617571;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974627553;
  if (v1 != 1)
  {
    v5 = 0x4449656C646E7542;
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

unint64_t sub_96F64@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_A351C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_96F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_A34C8(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_96FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_A34C8(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_97004@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = sub_46F9C(&qword_184600, &qword_128510);
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v7 = &v37 - v6;
  v8 = type metadata accessor for SummaryItem(0);
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v11 + 20);
  sub_115790();
  v12 = &v10[v8[11]];
  *v12 = 0;
  v12[1] = 0;
  v13 = a1[3];
  v42 = a1;
  v14 = sub_66DE0(a1, v13);
  sub_A34C8(v14, v15, v16);
  sub_117AF0();
  if (v2)
  {
    sub_6ACB4(v42);
    v19 = sub_1157A0();
    (*(*(v19 - 8) + 8))(&v10[v41], v19);
  }

  else
  {
    v38 = a2;
    v39 = v5;
    v50 = 0;
    v17 = v40;
    v18 = sub_1178F0();
    v20 = &v10[v8[6]];
    *v20 = v18;
    v20[1] = v21;
    v49 = 1;
    v22 = sub_1178A0();
    v23 = &v10[v8[7]];
    *v23 = v22;
    v23[1] = v24;
    v48 = 2;
    v25 = sub_1178A0();
    v26 = &v10[v8[10]];
    *v26 = v25;
    v26[1] = v27;
    v46 = 3;
    sub_6B160(v25, v27, v28);
    v29 = sub_1178E0();
    *v10 = v47;
    v44 = 4;
    sub_6B22C(v29, v30, v31);
    sub_1178E0();
    v10[v8[8]] = v45;
    v43 = 5;
    v32 = sub_1178C0();
    v34 = v33;
    v35 = &v10[v8[9]];
    (*(v39 + 8))(v7, v17);
    *v35 = v32;
    v35[8] = v34 & 1;
    sub_A3714(v10, v38, type metadata accessor for SummaryItem);
    sub_6ACB4(v42);
    return sub_A68C8(v10, type metadata accessor for SummaryItem);
  }
}

uint64_t sub_97464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1157A0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_974DC(double a1)
{
  sub_117710(19);
  v2._countAndFlagsBits = 0x203A6E69617264;
  v2._object = 0xE700000000000000;
  sub_117220(v2);
  v3._countAndFlagsBits = sub_1179B0();
  sub_117220(v3);

  v4._countAndFlagsBits = 0x203A65746164202CLL;
  v4._object = 0xE800000000000000;
  sub_117220(v4);
  sub_117430();
  return 0;
}

uint64_t sub_975B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1702125892;
  }

  else
  {
    v3 = 0x6E69617244;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1702125892;
  }

  else
  {
    v5 = 0x6E69617244;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
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
    v8 = sub_1179E0();
  }

  return v8 & 1;
}

Swift::Int sub_97650()
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_976C8(uint64_t a1)
{
  sub_117200();
}

Swift::Int sub_9772C(uint64_t a1)
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_977A0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_167AB8;
  v8._object = v3;
  v5 = sub_117890(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_97800(uint64_t *a1@<X8>)
{
  v2 = 1702125892;
  if (!*v1)
  {
    v2 = 0x6E69617244;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_97834()
{
  if (*v0)
  {
    return 1702125892;
  }

  else
  {
    return 0x6E69617244;
  }
}

uint64_t sub_97864@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_167AB8;
  v9._object = a2;
  v6 = sub_117890(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_978C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_A6D1C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_97904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_A6D1C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

void sub_97940(uint64_t *a1@<X8>, void *a2@<X0>)
{
  v5 = sub_A3568(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
  }
}

Swift::Int sub_9797C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_117A90();
  sub_117AA0(v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  sub_117AC0(*&v3);
  return sub_117AD0();
}

void sub_979E8()
{
  v1 = *(v0 + 8);
  sub_117AA0(*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_117AC0(*&v2);
}

Swift::Int sub_97A34(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_117A90();
  sub_117AA0(v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  sub_117AC0(*&v4);
  return sub_117AD0();
}

void sub_97AC8(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v65 = type metadata accessor for DynamicDaySummaryView(0);
  __chkstk_darwin(v65);
  v69 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v68 = &v58 - v6;
  v64 = type metadata accessor for FullDaySummaryView(0);
  __chkstk_darwin(v64);
  v67 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v66 = &v58 - v9;
  v10 = sub_46F9C(&qword_184DA8, &qword_129078);
  __chkstk_darwin(v10 - 8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v70 = (&v58 - v14);
  v15 = sub_116320();
  LOBYTE(v71) = 0;
  v63 = *(a1 + 16);
  v16 = *(a1 + 24);
  v62 = sub_116BC0();
  v17 = sub_117170();
  v18 = BatteryUILocalization(v17);

  if (v18)
  {
    v59 = v12;
    v60 = v15;
    v61 = a2;
    v19 = sub_1171B0();
    v21 = v20;

    v22 = *(a1 + 8);
    v23 = sub_A377C();

    v24 = sub_117170();
    v25 = BatteryUILocalization(v24);

    if (v25)
    {
      v26 = v16 == 1;
      v27 = sub_1171B0();
      v29 = v28;

      *&v80 = v63;
      BYTE8(v80) = v26;
      *&v81 = v62;
      *(&v81 + 1) = v19;
      *&v82 = v21;
      *(&v82 + 1) = v22;
      LOBYTE(v83) = 0;
      *(&v83 + 1) = v23;
      *&v84 = v27;
      *(&v84 + 1) = v29;
      v85 = v63;
      v86 = v26;
      v87 = v62;
      v88 = v19;
      v89 = v21;
      v90 = v22;
      v91 = 0;
      v92 = v23;
      v93 = v27;
      v94 = v29;
      sub_479B4(&v80, &v73, &qword_184DB0, &qword_129080);
      sub_488C8(&v85, &qword_184DB0, &qword_129080);
      *&v79[23] = v81;
      *&v79[39] = v82;
      *&v79[55] = v83;
      *&v79[71] = v84;
      *&v79[7] = v80;
      v30 = v71;
      v31 = *(*a1 + 16);
      v32 = *(a1 + *(type metadata accessor for SummaryChart(0) + 20));
      v33 = v32 * 0.6875 * v31 * 0.125;
      v34 = fmin(v33 / v31 + -12.0, 22.0);
      v35 = sub_116E90();
      v36 = v70;
      *v70 = v35;
      *(v36 + 8) = v37;
      v38 = v36 + *(sub_46F9C(&qword_184DB8, &qword_129088) + 44);
      v39 = v66;
      sub_A3714(a1, v66, type metadata accessor for SummaryChartViewModel);
      v40 = v64;
      *(v39 + *(v64 + 20)) = v31;
      *(v39 + *(v40 + 24)) = v33;
      *(v39 + *(v40 + 28)) = v34;
      v41 = v68;
      sub_A3714(a1, v68, type metadata accessor for SummaryChartViewModel);
      v42 = v65;
      *(v41 + *(v65 + 20)) = v32;
      *(v41 + v42[6]) = v31;
      *(v41 + v42[7]) = v33;
      *(v41 + v42[8]) = v34;
      v43 = v41 + v42[9];
      type metadata accessor for CGSize(0);
      v71 = 0uLL;
      sub_116CB0();
      v44 = *v74;
      *v43 = v73;
      *(v43 + 16) = v44;
      v45 = v67;
      sub_A3714(v39, v67, type metadata accessor for FullDaySummaryView);
      v46 = v69;
      sub_A3714(v41, v69, type metadata accessor for DynamicDaySummaryView);
      sub_A3714(v45, v38, type metadata accessor for FullDaySummaryView);
      v47 = sub_46F9C(&qword_184DC0, &qword_129090);
      sub_A3714(v46, v38 + *(v47 + 48), type metadata accessor for DynamicDaySummaryView);
      sub_A68C8(v41, type metadata accessor for DynamicDaySummaryView);
      sub_A68C8(v39, type metadata accessor for FullDaySummaryView);
      sub_A68C8(v46, type metadata accessor for DynamicDaySummaryView);
      sub_A68C8(v45, type metadata accessor for FullDaySummaryView);
      v48 = v59;
      sub_479B4(v36, v59, &qword_184DA8, &qword_129078);
      v49 = v60;
      *&v71 = v60;
      *(&v71 + 1) = 0x4044000000000000;
      v72[0] = v30;
      *&v72[1] = *v79;
      *&v72[17] = *&v79[16];
      *&v72[65] = *&v79[64];
      *&v72[49] = *&v79[48];
      *&v72[33] = *&v79[32];
      v50 = *&v79[79];
      *&v72[80] = *&v79[79];
      v51 = *v72;
      v52 = v61;
      *v61 = v71;
      v52[1] = v51;
      v53 = *&v72[16];
      v54 = *&v72[32];
      v55 = *&v72[48];
      v56 = *&v72[64];
      *(v52 + 12) = v50;
      v52[4] = v55;
      v52[5] = v56;
      v52[2] = v53;
      v52[3] = v54;
      v57 = sub_46F9C(&qword_184DC8, &qword_129098);
      sub_479B4(v48, v52 + *(v57 + 48), &qword_184DA8, &qword_129078);
      sub_479B4(&v71, &v73, &qword_184DD0, &qword_1290A0);
      sub_488C8(v36, &qword_184DA8, &qword_129078);
      sub_488C8(v48, &qword_184DA8, &qword_129078);
      v76 = *&v79[32];
      v77 = *&v79[48];
      *v78 = *&v79[64];
      *&v74[1] = *v79;
      *&v73 = v49;
      *(&v73 + 1) = 0x4044000000000000;
      v74[0] = v30;
      *&v78[15] = *&v79[79];
      v75 = *&v79[16];
      sub_488C8(&v73, &qword_184DD0, &qword_1290A0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_9817C(uint64_t a2@<X8>)
{
  *a2 = sub_1163F0();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = sub_46F9C(&qword_184608, &qword_128518);
  sub_97AC8(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_981D0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v58 = a1;
  v5 = sub_46F9C(&qword_184610, &qword_128520);
  __chkstk_darwin(v5);
  v7 = &v45 - v6;
  v8 = sub_46F9C(&qword_184618, &qword_128528);
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  v11 = sub_115CD0();
  v56 = *(v11 - 8);
  v57 = v11;
  __chkstk_darwin(v11);
  v55 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_115760();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_46F9C(&qword_184620, &qword_128530);
  v53 = *(v17 - 8);
  v54 = v17;
  __chkstk_darwin(v17);
  v52 = &v45 - v18;
  v19 = sub_46F9C(&qword_184628, &unk_128538);
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  if (a2)
  {
    sub_5A754();
    swift_beginAccess();
    sub_116EB0();
    sub_116070();
    v22 = sub_46F9C(&qword_184630, &qword_128548);
    (*(*(v22 - 8) + 16))(v7, v58, v22);
    v23 = &v7[*(v5 + 36)];
    v24 = v60;
    *v23 = v59;
    *(v23 + 1) = v24;
    *(v23 + 2) = v61;
    sub_479B4(v7, v10, &qword_184610, &qword_128520);
    swift_storeEnumTagMultiPayload();
    sub_A3828();
    sub_A3990();
    sub_116470();
    return sub_488C8(v7, &qword_184610, &qword_128520);
  }

  else
  {
    v49 = v21;
    sub_46F9C(&qword_184258, &unk_127E10);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1248A0;
    *(v26 + 32) = 0x796144206C6C41;
    *(v26 + 40) = 0xE700000000000000;
    v27 = sub_5A754();
    swift_beginAccess();
    *(v26 + 48) = *(*v27 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_fullDayUsageColor);
    *&v59 = 0x796220796C696144;
    *(&v59 + 1) = 0xE900000000000020;

    v28 = sub_8D8B4()[2];
    v51 = v5;
    v29 = v28;
    sub_115750();
    v30.super.isa = sub_1156B0().super.isa;
    v50 = a3;
    isa = v30.super.isa;
    (*(v14 + 8))(v16, v13);
    v32 = [v29 stringFromDate:isa];

    v33 = sub_1171B0();
    v35 = v34;

    v62._countAndFlagsBits = v33;
    v62._object = v35;
    sub_117220(v62);

    v36 = *(&v59 + 1);
    *(v26 + 56) = v59;
    *(v26 + 64) = v36;
    swift_beginAccess();
    *(v26 + 72) = *(*v27 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_usageByTimeColor);

    v37 = sub_46F9C(&qword_184630, &qword_128548);
    v38 = sub_48800(&qword_184638, &qword_184630, &qword_128548, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v46 = v19;
    v48 = v8;
    v47 = v10;
    v39 = v52;
    sub_1169A0();

    v40 = v55;
    sub_115CC0();
    sub_116EC0();
    *&v59 = v37;
    *(&v59 + 1) = &type metadata for String;
    *&v60 = &type metadata for Color;
    *(&v60 + 1) = v38;
    *&v61 = &protocol witness table for String;
    *(&v61 + 1) = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v41 = v49;
    v42 = v54;
    sub_116940();
    (*(v56 + 8))(v40, v57);
    (*(v53 + 8))(v39, v42);
    swift_beginAccess();
    sub_116EB0();
    sub_116070();
    v43 = (v41 + *(v46 + 36));
    v44 = v60;
    *v43 = v59;
    v43[1] = v44;
    v43[2] = v61;
    sub_479B4(v41, v47, &qword_184628, &unk_128538);
    swift_storeEnumTagMultiPayload();
    sub_A3828();
    sub_A3990();
    sub_116470();
    return sub_488C8(v41, &qword_184628, &unk_128538);
  }
}

uint64_t sub_989D8()
{
  v1 = v0;
  v2 = sub_116530();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1163F0();
  v20 = 0;
  sub_98C54(v1, &v29);
  v24 = v31;
  v25 = v32;
  v26[0] = v33[0];
  *(v26 + 9) = *(v33 + 9);
  v22 = v29;
  v23 = v30;
  *(v28 + 9) = *(v33 + 9);
  v27[2] = v31;
  v27[3] = v32;
  v28[0] = v33[0];
  v27[0] = v29;
  v27[1] = v30;
  sub_479B4(&v22, &v14, &qword_184650, &qword_128550);
  sub_488C8(v27, &qword_184650, &qword_128550);
  *(&v19[2] + 7) = v24;
  *(&v19[3] + 7) = v25;
  *(&v19[4] + 7) = v26[0];
  v19[5] = *(v26 + 9);
  *(v19 + 7) = v22;
  *(&v19[1] + 7) = v23;
  v7 = v20;
  LOBYTE(v1) = sub_116620();
  sub_115FD0();
  *(&v15[2] + 1) = v19[2];
  *(&v15[3] + 1) = v19[3];
  *(&v15[4] + 1) = v19[4];
  *(&v15[5] + 1) = v19[5];
  *(v15 + 1) = v19[0];
  v21 = 0;
  *&v14 = v6;
  *(&v14 + 1) = 0x4000000000000000;
  LOBYTE(v15[0]) = v7;
  *(&v15[1] + 1) = v19[1];
  BYTE8(v15[6]) = v1;
  *&v16 = v8;
  *(&v16 + 1) = v9;
  *&v17 = v10;
  *(&v17 + 1) = v11;
  v18 = 0;
  sub_116520();
  sub_46F9C(&qword_184658, &qword_128558);
  sub_A3A48();
  sub_116A80();
  (*(v3 + 8))(v5, v2);
  v33[4] = v16;
  v33[5] = v17;
  v34 = v18;
  v33[0] = v15[3];
  v33[1] = v15[4];
  v33[2] = v15[5];
  v33[3] = v15[6];
  v29 = v14;
  v30 = v15[0];
  v31 = v15[1];
  v32 = v15[2];
  return sub_488C8(&v29, &qword_184658, &qword_128558);
}

uint64_t sub_98C54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = sub_46F9C(&qword_182FF8, &qword_124E30);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v6 = sub_116740();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v10 = *(a1 + 32);
  *&v47 = *(a1 + 24);
  *(&v47 + 1) = v10;
  sub_4869C(v11, v12, v13);

  v14 = sub_116900();
  v16 = v15;
  v18 = v17;
  (*(v7 + 104))(v9, enum case for Font.TextStyle.footnote(_:), v6);
  v19 = sub_116690();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  sub_1166B0();
  sub_1166E0();
  sub_488C8(v5, &qword_182FF8, &qword_124E30);
  (*(v7 + 8))(v9, v6);
  v20 = sub_1168C0();
  v22 = v21;
  LOBYTE(v5) = v23;

  sub_48928(v14, v16, v18 & 1);

  v24 = v42;
  v25 = sub_116880();
  v27 = v26;
  LOBYTE(v16) = v28;
  sub_48928(v20, v22, v5 & 1);

  sub_1166C0();
  v29 = sub_116810();
  v31 = v30;
  LOBYTE(a1) = v32;
  v34 = v33;
  sub_48928(v25, v27, v16 & 1);

  v35 = sub_116300();
  sub_99014(v24, &v47);
  v36 = v47;
  v37 = *v48;
  v46 = 1;
  v45 = v48[16];
  LOBYTE(a1) = a1 & 1;
  v44[64] = a1;
  v47 = v35;
  v48[0] = 1;
  *&v48[8] = v36;
  *&v48[24] = v37;
  v48[40] = v45;
  v38 = v43;
  *v43 = v29;
  v38[1] = v31;
  *(v38 + 16) = a1;
  v38[3] = v34;
  v39 = *v48;
  *(v38 + 2) = v47;
  *(v38 + 3) = v39;
  *(v38 + 4) = *&v48[16];
  *(v38 + 73) = *&v48[25];
  sub_488B8(v29, v31, a1);

  sub_479B4(&v47, v44, &qword_184DA0, &qword_129068);
  sub_8C94C(v36, *(&v36 + 1), v37, *(&v37 + 1));
  sub_48928(v29, v31, a1);
}

double sub_99014@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_115520();
  __chkstk_darwin(v4 - 8);
  v6 = (v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_46F9C(&qword_182FF8, &qword_124E30);
  __chkstk_darwin(v7 - 8);
  v9 = v47 - v8;
  v10 = sub_116740();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
  {
    sub_116370();
    v14 = sub_1168E0();
    v47[1] = v15;
    v47[2] = a1;
    v16 = v14;
    v18 = v17;
    v20 = v19;
    (*(v11 + 104))(v13, enum case for Font.TextStyle.title2(_:), v10);
    v21 = enum case for Font.Design.rounded(_:);
    v22 = sub_116690();
    v48 = a2;
    v23 = v22;
    v24 = *(v22 - 8);
    (*(v24 + 104))(v9, v21, v22);
    (*(v24 + 56))(v9, 0, 1, v23);
    sub_1166E0();
    sub_488C8(v9, &qword_182FF8, &qword_124E30);
    (*(v11 + 8))(v13, v10);
    v25 = sub_1168C0();
    v27 = v26;
    v29 = v28;

    sub_48928(v16, v18, v20 & 1);

    sub_1166C0();
    v30 = sub_116810();
    v32 = v31;
    LOBYTE(v16) = v33;
    sub_48928(v25, v27, v29 & 1);

    v34 = sub_116880();
    v36 = v35;
    LOBYTE(v27) = v37;
    v39 = v38;
    v40 = v30;
    a2 = v48;
    sub_48928(v40, v32, v16 & 1);

    v49 = v34;
    v50 = v36;
    v51 = v27 & 1;
    v52 = v39;
    v53 = 0;
  }

  else
  {
    sub_993F8(v6);
    v49 = sub_1168F0();
    v50 = v42;
    v51 = v41 & 1;
    v52 = v43;
    v53 = 1;
  }

  sub_116470();
  result = *&v54;
  v45 = v55;
  v46 = v56;
  *a2 = v54;
  *(a2 + 16) = v45;
  *(a2 + 32) = v46;
  return result;
}

uint64_t sub_993F8@<X0>(void *a1@<X8>)
{
  v73 = a1;
  v2 = sub_46F9C(&qword_182FE0, &unk_127BB0);
  __chkstk_darwin(v2 - 8);
  v75 = &v61 - v3;
  v4 = sub_46F9C(&qword_182FE8, &unk_124E20);
  __chkstk_darwin(v4 - 8);
  v76 = &v61 - v5;
  v77 = sub_46F9C(&qword_182FF0, &unk_127BC0);
  v74 = *(v77 - 8);
  __chkstk_darwin(v77);
  v71 = &v61 - v6;
  v7 = sub_46F9C(&qword_182FF8, &qword_124E30);
  __chkstk_darwin(v7 - 8);
  v9 = &v61 - v8;
  v78 = sub_116740();
  v10 = *(v78 - 8);
  __chkstk_darwin(v78);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_46F9C(&qword_184020, &unk_127BD0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v61 - v15;
  v17 = sub_46F9C(&qword_183560, &qword_129070);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v61 - v19;
  v80[0] = *v1;
  sub_ECF08();
  sub_1155C0();
  v21 = (*(v18 + 8))(v20, v17);
  sub_66C80(v21, v22, v23);
  sub_48800(&qword_184028, &qword_184020, &unk_127BD0, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Attributed);
  sub_117040();
  (*(v14 + 8))(v16, v13);
  v24 = v78;
  v66 = *(v10 + 104);
  v66(v12, enum case for Font.TextStyle.title2(_:), v78);
  v25 = enum case for Font.Design.rounded(_:);
  v26 = sub_116690();
  v27 = *(v26 - 8);
  v28 = *(v27 + 104);
  v65 = v25;
  v63 = v28;
  v64 = v27 + 104;
  v28(v9, v25, v26);
  v62 = *(v27 + 56);
  v62(v9, 0, 1, v26);
  sub_1166C0();
  v29 = sub_1166E0();
  v68 = v9;
  sub_488C8(v9, &qword_182FF8, &qword_124E30);
  v30 = *(v10 + 8);
  v69 = v12;
  v70 = v10 + 8;
  v61 = v30;
  v31 = (v30)(v12, v24);
  *&v80[0] = v29;
  v67 = sub_5481C(v31, v32, v33);
  v34 = sub_115540();
  v35 = *(v72 + 16);
  v80[0] = v35;
  v38 = sub_547C8(v34, v36, v37);
  swift_retain_n();
  sub_115540();
  v39 = [objc_allocWithZone(NSNumberFormatter) init];
  v40 = [v39 percentSymbol];

  if (v40)
  {
    v41 = sub_1171B0();
    v43 = v42;
  }

  else
  {
    v43 = -1.7573882e159;
    v41 = 37;
  }

  *&v80[0] = v41;
  v80[1] = v43;
  v44 = sub_115820();
  v45 = v75;
  (*(*(v44 - 8) + 56))(v75, 1, 1, v44);
  sub_115520();
  v46 = sub_A3C98(&unk_183010, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  sub_4869C(v46, v47, v48);
  v49 = v76;
  sub_1155B0();
  sub_488C8(v45, &qword_182FE0, &unk_127BB0);

  if ((*(v74 + 48))(v49, 1, v77) == 1)
  {

    v50 = &qword_182FE8;
    v51 = &unk_124E20;
    v52 = v49;
  }

  else
  {
    v53 = v71;
    sub_548D0(v49, v71, &qword_182FF0, &unk_127BC0);
    v76 = v38;
    v54 = v69;
    v55 = v78;
    v66(v69, enum case for Font.TextStyle.subheadline(_:), v78);
    v56 = v68;
    v63(v68, v65, v26);
    v62(v56, 0, 1, v26);
    sub_1166C0();
    v57 = sub_1166E0();
    sub_488C8(v56, &qword_182FF8, &qword_124E30);
    v61(v54, v55);
    sub_48800(&qword_183020, &qword_182FF0, &unk_127BC0, &protocol conformance descriptor for Range<A>);
    v58 = sub_115550();
    v79 = *&v57;
    sub_115580();
    v58(v80, 0);
    v59 = sub_115550();
    v79 = v35;
    sub_115580();
    v59(v80, 0);
    v52 = v53;
    v50 = &qword_182FF0;
    v51 = &unk_127BC0;
  }

  return sub_488C8(v52, v50, v51);
}

void *sub_99CC4()
{
  v1 = v0;
  v2 = sub_1158B0();
  v71 = *(v2 - 8);
  __chkstk_darwin(v2);
  v66 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1158D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v64 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v57 - v8;
  v10 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  __chkstk_darwin(v10 - 8);
  v65 = &v57 - v11;
  v12 = sub_115760();
  __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v15 = &v57 - v14;
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v19 = &v57 - v18;
  __chkstk_darwin(v20);
  v25 = &v57 - v24;
  v26 = *v1;
  v27 = *(*v1 + 16);
  if (!v27)
  {
    return _swiftEmptyArrayStorage;
  }

  v63 = v21;
  v67 = v2;
  v28 = v27 - 1;
  v70 = v22;
  v29 = v23;
  v30 = type metadata accessor for SummaryChartBucket(0);
  v72 = v5;
  v68 = v9;
  v69 = v4;
  v31 = v30 - 8;
  v32 = v26 + ((*(*(v30 - 8) + 80) + 32) & ~*(*(v30 - 8) + 80));
  v33 = v32 + *(*(v30 - 8) + 72) * v28;
  v34 = *(v30 + 24);
  v59 = v29;
  v35 = *(v29 + 16);
  v57 = v29 + 16;
  v35(v19, v33 + v34, v12);
  v36 = *(v29 + 32);
  v62 = v25;
  v36(v25, v19, v12);
  v37 = v32 + *(v31 + 32);
  v58 = v35;
  v35(v15, v37, v12);
  v61 = v36;
  v36(v70, v15, v12);
  v38 = v68;
  sub_1158A0();
  v39 = v66;
  (*(v71 + 13))(v66, enum case for Calendar.Component.day(_:), v67);
  v40 = v64;
  sub_1158A0();
  sub_115830();
  v41 = *(v72 + 8);
  v72 += 8;
  v42 = v69;
  v41(v40, v69);
  v43 = v65;
  sub_115890();
  v44 = v59;
  v64 = *(v59 + 8);
  v60 = v59 + 8;
  (v64)(v15, v12);
  (*(v71 + 1))(v39, v67);
  v71 = v41;
  v41(v38, v42);
  v45 = *(v44 + 48);
  if (v45(v43, 1, v12) == 1)
  {
    v46 = v63;
    v58(v63, v70, v12);
    v47 = v45(v43, 1, v12);
    v48 = v61;
    if (v47 != 1)
    {
      sub_488C8(v43, &qword_182EF0, &unk_124BB0);
    }
  }

  else
  {
    v46 = v63;
    v48 = v61;
    v61(v63, v43, v12);
  }

  sub_46F9C(&qword_184260, &unk_128570);
  v50 = *(v44 + 72);
  v51 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1248A0;
  v52 = v49 + v51;
  v53 = v68;
  sub_1158A0();
  v54 = v62;
  sub_115830();
  v71(v53, v69);
  v48(v52 + v50, v46, v12);
  v55 = v64;
  (v64)(v70, v12);
  v55(v54, v12);
  return v49;
}

uint64_t sub_9A2E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v83 = a1;
  v3 = sub_46F9C(&qword_184138, &qword_127D50);
  __chkstk_darwin(v3 - 8);
  v84 = &v63 - v4;
  v5 = type metadata accessor for FullDaySummaryView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_46F9C(&qword_184678, &qword_128580);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v63 - v10;
  v71 = sub_46F9C(&qword_184680, &qword_128588);
  v70 = *(v71 - 1);
  __chkstk_darwin(v71);
  v13 = &v63 - v12;
  v73 = sub_46F9C(&qword_184688, &qword_128590);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = &v63 - v14;
  v15 = sub_46F9C(&qword_184690, &qword_128598);
  v75 = *(v15 - 8);
  v76 = v15;
  __chkstk_darwin(v15);
  v74 = &v63 - v16;
  v17 = sub_46F9C(&qword_184698, &qword_1285A0);
  v78 = *(v17 - 8);
  v79 = v17;
  __chkstk_darwin(v17);
  v77 = &v63 - v18;
  v19 = sub_46F9C(&qword_1846A0, &qword_1285A8);
  v81 = *(v19 - 8);
  v82 = v19;
  __chkstk_darwin(v19);
  v80 = &v63 - v20;
  v85 = v2;
  sub_46F9C(&qword_1846A8, &unk_1285B0);
  sub_A3B08();
  sub_115DC0();
  sub_A3714(v2, &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FullDaySummaryView);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = swift_allocObject();
  sub_A2BF0(&v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for FullDaySummaryView);
  v23 = sub_46F9C(&qword_184160, &unk_127D70);
  v24 = sub_48800(&qword_1846C0, &qword_184678, &qword_128580, &protocol conformance descriptor for Chart<A>);
  v25 = sub_7DDE8();
  v68 = v13;
  sub_116990();

  (*(v9 + 8))(v11, v8);
  result = type metadata accessor for SummaryChartViewModel(0);
  v27 = *(v2 + *(result + 36));
  if (v27 < 0)
  {
    __break(1u);
  }

  else
  {
    v28 = v2;
    v92 = 0;
    v93 = v27;
    v66 = sub_115F00();
    v29 = *(v66 - 8);
    v65 = *(v29 + 56);
    v67 = v29 + 56;
    v30 = v84;
    v65(v84, 1, 1, v66);
    v31 = sub_46F9C(&qword_184178, &qword_1285D0);
    v86 = v8;
    v87 = v23;
    v88 = v24;
    v89 = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v33 = sub_7DEA4();
    v34 = v69;
    v35 = v71;
    v36 = v68;
    sub_116970();
    sub_488C8(v30, &qword_184138, &qword_127D50);
    v37 = (v70[1])(v36, v35);
    v70 = &v63;
    __chkstk_darwin(v37);
    *(&v63 - 2) = v28;
    v64 = v28;
    v38 = sub_46F9C(&qword_1846C8, &qword_1285D8);
    v86 = v35;
    v87 = v31;
    v88 = OpaqueTypeConformance2;
    v89 = v33;
    v39 = swift_getOpaqueTypeConformance2();
    v71 = &protocol conformance descriptor for AxisMarks<A>;
    v40 = sub_48800(&qword_1846D0, &qword_1846C8, &qword_1285D8, &protocol conformance descriptor for AxisMarks<A>);
    v41 = v74;
    v42 = v73;
    sub_116930();
    (*(v72 + 8))(v34, v42);
    v92 = sub_99CC4();
    v43 = v84;
    v65(v84, 1, 1, v66);
    v44 = sub_46F9C(&qword_1841B8, &qword_1285E0);
    v86 = v42;
    v87 = v38;
    v88 = v39;
    v89 = v40;
    v45 = swift_getOpaqueTypeConformance2();
    v46 = sub_7E000();
    v47 = v76;
    v48 = v77;
    sub_116960();
    sub_488C8(v43, &qword_184138, &qword_127D50);

    v49 = (*(v75 + 8))(v41, v47);
    v84 = &v63;
    __chkstk_darwin(v49);
    v50 = v64;
    *(&v63 - 2) = v64;
    v51 = sub_46F9C(&qword_1846D8, &qword_1285E8);
    v86 = v47;
    v87 = v44;
    v88 = v45;
    v89 = v46;
    v52 = swift_getOpaqueTypeConformance2();
    v53 = sub_48800(&qword_1846E0, &qword_1846D8, &qword_1285E8, v71);
    v55 = v79;
    v54 = v80;
    sub_116910();
    (*(v78 + 8))(v48, v55);
    v56 = *(v50 + 24) != 1;
    v57 = sub_46F9C(&qword_1846E8, &qword_1285F0);
    v86 = v55;
    v87 = v51;
    v88 = v52;
    v89 = v53;
    v58 = swift_getOpaqueTypeConformance2();
    v59 = sub_47A1C(&qword_1846F0, &qword_1285F8);
    v60 = v82;
    v86 = v82;
    v87 = &type metadata for String;
    v88 = &type metadata for Color;
    v89 = v58;
    v90 = &protocol witness table for String;
    v91 = &protocol witness table for Color;
    v61 = swift_getOpaqueTypeConformance2();
    v86 = v59;
    v87 = v61;
    v62 = swift_getOpaqueTypeConformance2();
    sub_8E234(v56, sub_9CD0C, 0, v60, v57, v58, v62, v83);
    return (*(v81 + 8))(v54, v60);
  }

  return result;
}

uint64_t sub_9ADF0(uint64_t *a1, __n128 a2)
{
  v3 = type metadata accessor for FullDaySummaryView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v20 = *a1;
  swift_getKeyPath();
  sub_A3714(a1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FullDaySummaryView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_A2BF0(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for FullDaySummaryView);

  sub_46F9C(&qword_184D30, &qword_129010);
  sub_46F9C(&qword_184D98, &unk_129058);
  sub_48800(&qword_184D40, &qword_184D30, &qword_129010, &protocol conformance descriptor for [A]);
  sub_A3C98(&qword_183548, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v8 = sub_47A1C(&qword_184150, &unk_127D60);
  v9 = sub_116180();
  v10 = sub_47A1C(&qword_184158, &unk_1285C0);
  v16 = sub_115E00();
  v17 = &protocol witness table for BarMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = v10;
  v17 = &type metadata for Color;
  v18 = OpaqueTypeConformance2;
  v19 = &protocol witness table for Color;
  v12 = swift_getOpaqueTypeConformance2();
  v13 = sub_A3C98(&qword_1846B8, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  v16 = v8;
  v17 = v9;
  v18 = v12;
  v19 = v13;
  swift_getOpaqueTypeConformance2();
  return sub_116E00();
}

uint64_t sub_9B114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a2;
  v54 = a1;
  v64 = a3;
  v63 = sub_116180();
  __chkstk_darwin(v63);
  v62 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_116390();
  v60 = *(v65 - 8);
  __chkstk_darwin(v65);
  v59 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_46F9C(&qword_1843D0, &qword_128FE0);
  __chkstk_darwin(v5 - 8);
  v53 = v48 - v6;
  v7 = sub_46F9C(&qword_1842B8, &qword_129030);
  __chkstk_darwin(v7 - 8);
  v9 = v48 - v8;
  v10 = sub_1158B0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_46F9C(&qword_1843C8, &qword_128140);
  __chkstk_darwin(v14 - 8);
  v48[1] = v48 - v15;
  v51 = sub_115E00();
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_46F9C(&qword_184158, &unk_1285C0);
  v19 = *(v18 - 8);
  v55 = v18;
  v56 = v19;
  __chkstk_darwin(v18);
  v49 = v48 - v20;
  v21 = sub_46F9C(&qword_184150, &unk_127D60);
  v22 = *(v21 - 8);
  v57 = v21;
  v58 = v22;
  __chkstk_darwin(v21);
  v50 = v48 - v23;
  sub_116370();
  type metadata accessor for SummaryChartBucket(0);
  (*(v11 + 104))(v13, enum case for Calendar.Component.day(_:), v10);
  v24 = sub_1158D0();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  v25 = v54;
  sub_115C40();

  sub_488C8(v9, &qword_1842B8, &qword_129030);
  (*(v11 + 8))(v13, v10);
  sub_116370();
  v26 = *(v25 + 8) & ~(*(v25 + 8) >> 63);
  if (*(v25 + 16))
  {
    v26 = 0;
  }

  v66 = v26;
  sub_115C60();

  type metadata accessor for FullDaySummaryView(0);
  sub_115760();
  sub_115DF0();
  v27 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = v59;
  v28 = v60;
  v30 = *(v60 + 104);
  v31 = v65;
  v30(v59, enum case for RoundedCornerStyle.continuous(_:), v65);
  v32 = v49;
  v33 = v51;
  sub_115AE0();
  (*(v28 + 8))(v29, v31);
  (*(v52 + 8))(v17, v33);
  v34 = sub_5A754();
  swift_beginAccess();
  v70 = *(*v34 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_fullDayUsageColor);
  v66 = v33;
  v67 = &protocol witness table for BarMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v50;
  v37 = v55;
  sub_115AF0();
  v38 = v32;
  v39 = v37;
  (*(v56 + 8))(v38, v37);
  v40 = v62;
  v30(&v62[*(v63 + 20)], v27, v65);
  __asm { FMOV            V0.2D, #4.0 }

  *v40 = _Q0;
  v66 = v39;
  v67 = &type metadata for Color;
  v68 = OpaqueTypeConformance2;
  v69 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  sub_A3C98(&qword_1846B8, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  v46 = v57;
  sub_115B90();
  sub_A68C8(v40, &type metadata accessor for RoundedRectangle);
  return (*(v58 + 8))(v36, v46);
}

uint64_t sub_9B930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[0] = a1;
  v20[1] = a2;
  v2 = sub_115C80();
  __chkstk_darwin(v2 - 8);
  v3 = sub_115BE0();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for FullDaySummaryView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_46F9C(&qword_1842B8, &qword_129030);
  __chkstk_darwin(v7 - 8);
  v9 = v20 - v8;
  v10 = sub_1158B0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_115C10();
  v15 = __chkstk_darwin(v14 - 8);
  (*(v11 + 104))(v13, enum case for Calendar.Component.day(_:), v10, v15);
  v16 = sub_1158D0();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  sub_115BF0();
  sub_488C8(v9, &qword_1842B8, &qword_129030);
  (*(v11 + 8))(v13, v10);
  sub_A3714(v20[0], v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FullDaySummaryView);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  sub_A2BF0(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for FullDaySummaryView);
  sub_115BD0();
  sub_115C70();
  sub_46F9C(&qword_184D58, &qword_129038);
  sub_A6ADC();
  return sub_115E90();
}

uint64_t sub_9BCF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v19[2] = a1;
  v20 = a2;
  v2 = sub_115D00();
  __chkstk_darwin(v2 - 8);
  v3 = sub_115DA0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_46F9C(&qword_184D70, &qword_129040);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - v6;
  v8 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  v11 = sub_115760();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_115EB0();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_488C8(v10, &qword_182EF0, &unk_124BB0);
    return (*(v5 + 56))(v20, 1, 1, v4);
  }

  else
  {
    v16 = (*(v12 + 32))(v14, v10, v11);
    v19[1] = v19;
    __chkstk_darwin(v16);
    sub_115D90();
    sub_115CF0();
    v18[2] = sub_46F9C(&qword_184D78, &qword_129048);
    v18[3] = sub_A6B94();
    v18[0] = sub_A6B8C;
    v18[1] = v18;
    sub_115C30();
    v17 = v20;
    (*(v5 + 32))(v20, v7, v4);
    (*(v5 + 56))(v17, 0, 1, v4);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_9C0C4@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, _OWORD *a3@<X8>)
{
  v145 = a2;
  v133 = a3;
  v134 = type metadata accessor for SummaryChartBucket(0);
  v143 = *(v134 - 8);
  __chkstk_darwin(v134);
  v140 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1158D0();
  v5 = *(v142 - 8);
  __chkstk_darwin(v142);
  v7 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_115760();
  v8 = *(v144 - 8);
  __chkstk_darwin(v144);
  v10 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v132 - v12;
  __chkstk_darwin(v14);
  v16 = &v132 - v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v132 - v19;
  v21 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_12;
  }

  v136 = a1;
  v22 = *(v134 + 24);
  v23 = *(v8 + 16);
  v138 = v21 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
  v24 = v144;
  v23(v16, v138 + v22, v144, v18);
  (*(v8 + 32))(v20, v16, v24);
  sub_1158A0();
  sub_115830();
  v26 = v5 + 8;
  v25 = *(v5 + 8);
  v27 = v142;
  v25(v7, v142);
  sub_1158A0();
  sub_115830();
  v139 = v26;
  v137 = v25;
  v25(v7, v27);
  LOBYTE(v27) = sub_115720();
  v28 = *(v8 + 8);
  v28(v10, v24);
  v141 = v8 + 8;
  v28(v13, v24);
  if (v27)
  {
    v29 = sub_8D8B4()[3];
    isa = sub_1156B0().super.isa;
    v31 = [v29 stringFromDate:isa];

    v32 = sub_1171B0();
    v34 = v33;

    *&v149 = v32;
    *(&v149 + 1) = v34;
    sub_4869C(v35, v36, v37);
    v38 = sub_116900();
    v40 = v39;
    LOBYTE(v31) = v41;
    v145 = v20;
    sub_116710();
    v42 = v28;
    v43 = sub_1168C0();
    v45 = v44;
    v47 = v46;

    sub_48928(v38, v40, v31 & 1);

    sub_1166C0();
    v48 = sub_116810();
    v50 = v49;
    v52 = v51;
    sub_48928(v43, v45, v47 & 1);

    *&v149 = sub_A377C();

    v53 = sub_116890();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    sub_48928(v48, v50, v52 & 1);

    *&v146 = v53;
    *(&v146 + 1) = v55;
    *&v147 = v57 & 1;
    *(&v147 + 1) = v59;
    LOBYTE(v148) = 0;
    sub_488B8(v53, v55, v57 & 1);

    sub_116470();
    v146 = v149;
    v147 = v150;
    v148 = v151;
    sub_46F9C(&qword_184D90, &qword_129050);
    sub_A6C20();
    sub_116470();
    sub_48928(v53, v55, v57 & 1);

    result = v42(v145, v144);
LABEL_13:
    v128 = v150;
    v129 = v151;
    v130 = v152;
    v131 = v133;
    *v133 = v149;
    v131[1] = v128;
    *(v131 + 32) = v129;
    *(v131 + 33) = v130;
    return result;
  }

  result = (v28)(v20, v144);
  v136 = *(v21 + 16);
  if (!v136)
  {
LABEL_12:
    v97 = sub_8D8B4()[3];
    v98 = sub_1156B0().super.isa;
    v99 = [v97 stringFromDate:v98];

    v100 = sub_1171B0();
    v102 = v101;

    *&v149 = v100;
    *(&v149 + 1) = v102;
    sub_4869C(v103, v104, v105);
    v106 = sub_116900();
    v108 = v107;
    LOBYTE(v99) = v109;
    sub_116710();
    v110 = sub_1168C0();
    v112 = v111;
    v114 = v113;

    sub_48928(v106, v108, v99 & 1);

    sub_1166C0();
    v115 = sub_116810();
    v117 = v116;
    v119 = v118;
    sub_48928(v110, v112, v114 & 1);

    v120 = sub_5A754();
    swift_beginAccess();
    *&v149 = *(*v120 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_usageByTimeColor);

    v121 = sub_116890();
    v123 = v122;
    v125 = v124;
    v127 = v126;
    sub_48928(v115, v117, v119 & 1);

    *&v146 = v121;
    *(&v146 + 1) = v123;
    *&v147 = v125 & 1;
    *(&v147 + 1) = v127;
    v148 = 256;
    sub_46F9C(&qword_184D90, &qword_129050);
    sub_A6C20();
    result = sub_116470();
    goto LABEL_13;
  }

  v61 = 0;
  v135 = *(v134 + 24);
  while (v61 < *(v21 + 16))
  {
    v62 = v140;
    sub_A3714(v138 + *(v143 + 72) * v61, v140, type metadata accessor for SummaryChartBucket);
    sub_1158A0();
    sub_115830();
    v63 = v142;
    v64 = v137;
    v137(v7, v142);
    sub_1158A0();
    sub_115830();
    v64(v7, v63);
    LOBYTE(v63) = sub_115720();
    v65 = v144;
    v28(v10, v144);
    v28(v13, v65);
    if (v63)
    {
      v66 = *(v62 + *(v134 + 28));
      result = sub_A68C8(v62, type metadata accessor for SummaryChartBucket);
      if ((v66 & 1) == 0)
      {
        v67 = sub_8D8B4()[3];
        v68 = sub_1156B0().super.isa;
        v69 = [v67 stringFromDate:v68];

        v70 = sub_1171B0();
        v72 = v71;

        *&v149 = v70;
        *(&v149 + 1) = v72;
        sub_4869C(v73, v74, v75);
        v76 = sub_116900();
        v78 = v77;
        LOBYTE(v69) = v79;
        sub_116710();
        v80 = sub_1168C0();
        v82 = v81;
        v84 = v83;

        sub_48928(v76, v78, v69 & 1);

        sub_1166C0();
        v85 = sub_116810();
        v87 = v86;
        v89 = v88;
        sub_48928(v80, v82, v84 & 1);

        v90 = [objc_opt_self() systemGrayColor];
        *&v149 = sub_116BE0();
        v91 = sub_116890();
        v93 = v92;
        LOBYTE(v80) = v94;
        v96 = v95;
        sub_48928(v85, v87, v89 & 1);

        *&v146 = v91;
        *(&v146 + 1) = v93;
        *&v147 = v80 & 1;
        *(&v147 + 1) = v96;
        LOBYTE(v148) = 1;
        sub_488B8(v91, v93, v80 & 1);

        sub_116470();
        v146 = v149;
        v147 = v150;
        v148 = v151;
        sub_46F9C(&qword_184D90, &qword_129050);
        sub_A6C20();
        sub_116470();
        sub_48928(v91, v93, v80 & 1);

        goto LABEL_13;
      }
    }

    else
    {
      result = sub_A68C8(v62, type metadata accessor for SummaryChartBucket);
    }

    if (v136 == ++v61)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_9CD0C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v3 = sub_115CD0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v67 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_115760();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_46F9C(&qword_1846F0, &qword_1285F8);
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v55 - v10;
  sub_46F9C(&qword_184258, &unk_127E10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1248A0;
  v12 = sub_117170();
  v13 = BatteryUILocalization(v12);

  if (v13)
  {
    v60 = a2;
    v61 = v4;
    v62 = v3;
    v14 = sub_1171B0();
    v16 = v15;

    *(v11 + 32) = v14;
    *(v11 + 40) = v16;
    v17 = sub_5A754();
    swift_beginAccess();
    *(v11 + 48) = *(*v17 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_fullDayUsageColor);

    v18 = sub_117170();
    v19 = BatteryUILocalization(v18);

    if (v19)
    {
      sub_1171B0();

      sub_46F9C(&qword_182EF8, &unk_125990);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_124890;
      v21 = sub_8D8B4()[2];
      sub_115750();
      isa = sub_1156B0().super.isa;
      (*(v7 + 8))(v9, v6);
      v23 = [v21 stringFromDate:isa];

      v24 = sub_1171B0();
      v26 = v25;

      *(v20 + 56) = &type metadata for String;
      *(v20 + 64) = sub_53EE8(v27, v28, v29);
      *(v20 + 32) = v24;
      *(v20 + 40) = v26;
      v30 = sub_117180();
      v32 = v31;

      *(v11 + 56) = v30;
      *(v11 + 64) = v32;
      swift_beginAccess();
      *(v11 + 72) = *(*v17 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_usageByTimeColor);

      v59 = sub_46F9C(&qword_1846A0, &qword_1285A8);
      v58 = sub_47A1C(&qword_184698, &qword_1285A0);
      v57 = sub_47A1C(&qword_1846D8, &qword_1285E8);
      v56 = sub_47A1C(&qword_184690, &qword_128598);
      v33 = sub_47A1C(&qword_1841B8, &qword_1285E0);
      v34 = sub_47A1C(&qword_184688, &qword_128590);
      v35 = sub_47A1C(&qword_1846C8, &qword_1285D8);
      v36 = sub_47A1C(&qword_184680, &qword_128588);
      v37 = sub_47A1C(&qword_184178, &qword_1285D0);
      v38 = sub_47A1C(&qword_184678, &qword_128580);
      v39 = sub_47A1C(&qword_184160, &unk_127D70);
      v40 = sub_48800(&qword_1846C0, &qword_184678, &qword_128580, &protocol conformance descriptor for Chart<A>);
      v41 = sub_7DDE8();
      v68 = v38;
      v69 = v39;
      v70 = v40;
      v71 = v41;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v43 = sub_7DEA4();
      v68 = v36;
      v69 = v37;
      v70 = OpaqueTypeConformance2;
      v71 = v43;
      v44 = swift_getOpaqueTypeConformance2();
      v45 = sub_48800(&qword_1846D0, &qword_1846C8, &qword_1285D8, &protocol conformance descriptor for AxisMarks<A>);
      v68 = v34;
      v69 = v35;
      v70 = v44;
      v71 = v45;
      v46 = swift_getOpaqueTypeConformance2();
      v47 = sub_7E000();
      v68 = v56;
      v69 = v33;
      v70 = v46;
      v71 = v47;
      v48 = swift_getOpaqueTypeConformance2();
      v49 = sub_48800(&qword_1846E0, &qword_1846D8, &qword_1285E8, &protocol conformance descriptor for AxisMarks<A>);
      v68 = v58;
      v69 = v57;
      v70 = v48;
      v71 = v49;
      v50 = swift_getOpaqueTypeConformance2();
      v51 = v63;
      v52 = v59;
      sub_1169A0();

      v53 = v67;
      sub_115CC0();
      sub_116EC0();
      v68 = v52;
      v69 = &type metadata for String;
      v70 = &type metadata for Color;
      v71 = v50;
      v72 = &protocol witness table for String;
      v73 = &protocol witness table for Color;
      swift_getOpaqueTypeConformance2();
      v54 = v66;
      sub_116940();
      (*(v61 + 8))(v53, v62);
      (*(v64 + 8))(v51, v54);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_9D49C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = sub_46F9C(&qword_184138, &qword_127D50);
  __chkstk_darwin(v3 - 8);
  v59 = &v45 - v4;
  v5 = type metadata accessor for DynamicDaySummaryView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_46F9C(&qword_1846F8, &qword_128600);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v45 - v10;
  v49 = sub_46F9C(&qword_184700, &qword_128608);
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v13 = &v45 - v12;
  v14 = sub_46F9C(&qword_184708, &qword_128610);
  v51 = *(v14 - 8);
  v52 = v14;
  __chkstk_darwin(v14);
  v50 = &v45 - v15;
  v57 = sub_46F9C(&qword_184710, &qword_128618);
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v53 = &v45 - v16;
  v58 = sub_46F9C(&qword_184718, &qword_128620);
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = &v45 - v17;
  v61 = v2;
  sub_46F9C(&qword_184720, &qword_128628);
  sub_A3E50();
  sub_115DC0();
  sub_A3714(v2, &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DynamicDaySummaryView);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  sub_A2BF0(&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for DynamicDaySummaryView);
  v20 = sub_46F9C(&qword_184160, &unk_127D70);
  v21 = sub_48800(&qword_184780, &qword_1846F8, &qword_128600, &protocol conformance descriptor for Chart<A>);
  v22 = sub_7DDE8();
  sub_116990();

  (*(v9 + 8))(v11, v8);
  result = type metadata accessor for SummaryChartViewModel(0);
  v24 = *(v2 + *(result + 36));
  if (v24 < 0)
  {
    __break(1u);
  }

  else
  {
    v25 = v2;
    v67 = 0;
    v68 = v24;
    v46 = sub_115F00();
    v26 = *(v46 - 8);
    v45 = *(v26 + 56);
    v47 = v26 + 56;
    v27 = v59;
    v45(v59, 1, 1, v46);
    v28 = sub_46F9C(&qword_184178, &qword_1285D0);
    v63 = v8;
    v64 = v20;
    v65 = v21;
    v66 = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v30 = sub_7DEA4();
    v31 = v50;
    v32 = v49;
    sub_116970();
    sub_488C8(v27, &qword_184138, &qword_127D50);
    v33 = (v48[1])(v13, v32);
    v48 = &v45;
    __chkstk_darwin(v33);
    *(&v45 - 2) = v25;
    v34 = sub_46F9C(&qword_1846C8, &qword_1285D8);
    v63 = v32;
    v64 = v28;
    v65 = OpaqueTypeConformance2;
    v66 = v30;
    v35 = swift_getOpaqueTypeConformance2();
    v36 = sub_48800(&qword_1846D0, &qword_1846C8, &qword_1285D8, &protocol conformance descriptor for AxisMarks<A>);
    v37 = v52;
    v38 = v53;
    sub_116930();
    (*(v51 + 8))(v31, v37);
    v62 = sub_99CC4();
    v45(v27, 1, 1, v46);
    v39 = sub_46F9C(&qword_1841B8, &qword_1285E0);
    v63 = v37;
    v64 = v34;
    v65 = v35;
    v66 = v36;
    v40 = swift_getOpaqueTypeConformance2();
    v41 = sub_7E000();
    v42 = v54;
    v43 = v57;
    sub_116960();
    sub_488C8(v27, &qword_184138, &qword_127D50);

    (*(v55 + 8))(v38, v43);
    v63 = v43;
    v64 = v39;
    v65 = v40;
    v66 = v41;
    swift_getOpaqueTypeConformance2();
    v44 = v58;
    sub_116920();
    return (*(v56 + 8))(v42, v44);
  }

  return result;
}

uint64_t sub_9DD1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v97 = sub_46F9C(&qword_184D20, &qword_128FD8);
  __chkstk_darwin(v97);
  v96 = &v66 - v3;
  v87 = sub_115CD0();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_46F9C(&qword_1843D0, &qword_128FE0);
  __chkstk_darwin(v5 - 8);
  v68 = &v66 - v6;
  v74 = sub_115E70();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v69 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_46F9C(&qword_1841F0, &qword_127DD0);
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v70 = &v66 - v8;
  v78 = sub_46F9C(&qword_184770, qword_128668);
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v71 = &v66 - v9;
  v81 = sub_46F9C(&qword_184768, &qword_128660);
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v66 - v10;
  v84 = sub_46F9C(&qword_184758, &qword_128650);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v66 - v11;
  v12 = sub_46F9C(&qword_184D28, &qword_128FE8);
  v100 = *(v12 - 8);
  v101 = v12;
  __chkstk_darwin(v12);
  v80 = &v66 - v13;
  v14 = sub_46F9C(&qword_184750, &qword_128648);
  __chkstk_darwin(v14 - 8);
  v95 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v99 = &v66 - v17;
  v67 = type metadata accessor for DynamicDaySummaryView(0);
  v18 = *(v67 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v67);
  v94 = sub_46F9C(&qword_184738, &qword_128630);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v66 - v22;
  v89 = a1;
  v102 = *a1;
  KeyPath = swift_getKeyPath();
  sub_A3714(a1, &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DynamicDaySummaryView);
  v24 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v25 = swift_allocObject();
  sub_A2BF0(&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for DynamicDaySummaryView);

  v88 = sub_46F9C(&qword_184D30, &qword_129010);
  sub_46F9C(&qword_184D38, &qword_129018);
  sub_48800(&qword_184D40, &qword_184D30, &qword_129010, &protocol conformance descriptor for [A]);
  sub_A3C98(&qword_183548, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v26 = sub_47A1C(&qword_184740, &qword_128638);
  v27 = sub_47A1C(&qword_184210, &qword_128640);
  v28 = sub_116180();
  v29 = sub_47A1C(&qword_184158, &unk_1285C0);
  v107 = sub_115E00();
  v108 = &protocol witness table for BarMark;
  v30 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v107 = v29;
  v108 = &type metadata for LinearGradient;
  v109 = OpaqueTypeConformance2;
  v110 = &protocol witness table for LinearGradient;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_A3C98(&qword_1846B8, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  v107 = v27;
  v108 = v28;
  v109 = v32;
  v110 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  v107 = v26;
  v108 = v34;
  swift_getOpaqueTypeConformance2();
  v91 = v23;
  v35 = v89;
  sub_116E00();
  if (*(v35 + 24) != 1)
  {
    sub_116370();
    v107 = v35[2];
    sub_115C60();

    v36 = v69;
    sub_115E60();
    sub_116010();
    v37 = v70;
    v38 = v74;
    sub_115BA0();
    sub_57B04(&v107);
    (*(v72 + 8))(v36, v38);
    v102 = v38;
    v103 = &protocol witness table for RuleMark;
    v39 = swift_getOpaqueTypeConformance2();
    v40 = v71;
    v41 = v76;
    sub_115B70();
    (*(v73 + 8))(v37, v41);
    v102 = v41;
    v103 = v39;
    v42 = swift_getOpaqueTypeConformance2();
    v43 = v77;
    v44 = v78;
    sub_115B80();
    (*(v75 + 8))(v40, v44);
    v45 = sub_5A754();
    swift_beginAccess();
    v106 = *(*v45 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_averageByTimeColor);
    v102 = v44;
    v103 = v42;
    v46 = swift_getOpaqueTypeConformance2();
    v47 = v82;
    v48 = v81;
    sub_115AF0();
    (*(v79 + 8))(v43, v48);
    v49 = v85;
    sub_115CB0();
    v50 = sub_116EB0();
    __chkstk_darwin(v50);
    sub_46F9C(&qword_184760, &qword_128658);
    v102 = v48;
    v103 = &type metadata for Color;
    v104 = v46;
    v105 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    sub_A42A4();
    v51 = v80;
    v52 = v84;
    sub_115AD0();
    (*(v86 + 8))(v49, v87);
    (*(v83 + 8))(v47, v52);
    (*(v100 + 32))(v99, v51, v101);
    v30 = 0;
  }

  v53 = v99;
  (*(v100 + 56))(v99, v30, 1, v101);
  v54 = v93;
  v55 = *(v93 + 16);
  v56 = v92;
  v57 = v91;
  v58 = v94;
  v55(v92, v91, v94);
  v59 = v95;
  sub_479B4(v53, v95, &qword_184750, &qword_128648);
  sub_A3EE4();
  v60 = v96;
  v55(v96, v56, v58);
  sub_A40B8();
  v61 = v97;
  v62 = *(v97 + 48);
  sub_479B4(v59, &v60[v62], &qword_184750, &qword_128648);
  v63 = v98;
  (*(v54 + 32))(v98, v60, v58);
  sub_548D0(&v60[v62], v63 + *(v61 + 48), &qword_184750, &qword_128648);
  sub_488C8(v53, &qword_184750, &qword_128648);
  v64 = *(v54 + 8);
  v64(v57, v58);
  sub_488C8(v59, &qword_184750, &qword_128648);
  return (v64)(v56, v58);
}

uint64_t sub_9EBD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a2;
  v88 = a1;
  v109 = a3;
  v3 = sub_116360();
  __chkstk_darwin(v3 - 8);
  v107 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_116180();
  __chkstk_darwin(v108);
  v106 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_115760();
  v94 = *(v89 - 8);
  __chkstk_darwin(v89);
  v82 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_46F9C(&qword_184D50, &qword_129028);
  __chkstk_darwin(v95);
  *&v112 = &v81 - v7;
  v8 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  __chkstk_darwin(v8 - 8);
  v97 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  *&v111 = &v81 - v11;
  __chkstk_darwin(v12);
  v93 = &v81 - v13;
  v115 = sub_116390();
  v87 = *(v115 - 8);
  __chkstk_darwin(v115);
  v86 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_46F9C(&qword_1843D0, &qword_128FE0);
  __chkstk_darwin(v15 - 8);
  v92 = &v81 - v16;
  v17 = sub_46F9C(&qword_1842B8, &qword_129030);
  __chkstk_darwin(v17 - 8);
  v19 = &v81 - v18;
  v20 = sub_1158B0();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_46F9C(&qword_1843C8, &qword_128140);
  __chkstk_darwin(v24 - 8);
  v91 = &v81 - v25;
  v114 = sub_115E00();
  v85 = *(v114 - 8);
  __chkstk_darwin(v114);
  v83 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_46F9C(&qword_184158, &unk_1285C0);
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v113 = &v81 - v27;
  v103 = sub_46F9C(&qword_184210, &qword_128640);
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = &v81 - v28;
  v105 = sub_46F9C(&qword_184740, &qword_128638);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v102 = &v81 - v29;
  sub_116370();
  v30 = type metadata accessor for SummaryChartBucket(0);
  v31 = *(v30 + 24);
  (*(v21 + 104))(v23, enum case for Calendar.Component.day(_:), v20);
  v32 = sub_1158D0();
  (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
  v84 = v31;
  v33 = v88;
  sub_115C40();

  sub_488C8(v19, &qword_1842B8, &qword_129030);
  v34 = v23;
  v35 = v110;
  (*(v21 + 8))(v34, v20);
  sub_116370();
  v96 = *v33 & ~(*v33 >> 63);
  v121 = v96;
  sub_115C60();

  type metadata accessor for DynamicDaySummaryView(0);
  v36 = v83;
  v37 = v89;
  sub_115DF0();
  v38 = v87;
  v39 = *(v87 + 104);
  v40 = v86;
  LODWORD(v91) = enum case for RoundedCornerStyle.continuous(_:);
  v41 = v115;
  v92 = (v87 + 104);
  v90 = v39;
  v39(v86);
  v42 = v114;
  sub_115AE0();
  (*(v38 + 8))(v40, v41);
  (*(v85 + 8))(v36, v42);
  v43 = v94;
  if (*(*v35 + 16))
  {
    v44 = *(v94 + 16);
    v45 = *v35 + *(v30 + 24) + ((*(*(v30 - 8) + 80) + 32) & ~*(*(v30 - 8) + 80));
    v46 = v93;
    v47 = v37;
    v44(v93, v45, v37);
    v48 = *(v43 + 56);
    v48(v46, 0, 1, v37);
  }

  else
  {
    v48 = *(v94 + 56);
    v46 = v93;
    v47 = v37;
    v48(v93, 1, 1, v37);
    v44 = *(v43 + 16);
  }

  v49 = v33 + v84;
  v50 = v111;
  v44(v111, v49, v47);
  v48(v50, 0, 1, v47);
  v51 = *(v95 + 48);
  v52 = v112;
  sub_479B4(v46, v112, &qword_182EF0, &unk_124BB0);
  sub_479B4(v50, v52 + v51, &qword_182EF0, &unk_124BB0);
  v53 = *(v43 + 48);
  v54 = v53(v52, 1, v47);
  v55 = v97;
  if (v54 == 1)
  {
    sub_488C8(v50, &qword_182EF0, &unk_124BB0);
    v56 = v112;
    sub_488C8(v46, &qword_182EF0, &unk_124BB0);
    if (v53(v56 + v51, 1, v47) == 1)
    {
      sub_488C8(v56, &qword_182EF0, &unk_124BB0);
LABEL_12:
      v58 = sub_A377C();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_479B4(v52, v97, &qword_182EF0, &unk_124BB0);
  if (v53(v52 + v51, 1, v47) == 1)
  {
    sub_488C8(v111, &qword_182EF0, &unk_124BB0);
    v56 = v112;
    sub_488C8(v46, &qword_182EF0, &unk_124BB0);
    (*(v43 + 8))(v55, v47);
LABEL_9:
    sub_488C8(v56, &qword_184D50, &qword_129028);
    goto LABEL_10;
  }

  v59 = v52 + v51;
  v60 = v82;
  (*(v43 + 32))(v82, v59, v47);
  sub_A3C98(&qword_183550, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v61 = sub_117160();
  v62 = *(v43 + 8);
  v62(v60, v47);
  sub_488C8(v111, &qword_182EF0, &unk_124BB0);
  sub_488C8(v46, &qword_182EF0, &unk_124BB0);
  v62(v55, v47);
  sub_488C8(v52, &qword_182EF0, &unk_124BB0);
  if (v61)
  {
    goto LABEL_12;
  }

LABEL_10:
  v57 = sub_5A754();
  swift_beginAccess();
  v58 = *(*v57 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_usageByTimeColor);
LABEL_13:

  sub_5AEF4(0, v58, &v121);
  v63 = v121;
  v112 = v122;
  v111 = v123;

  v118 = v63;
  v120 = v111;
  v119 = v112;
  v116 = v114;
  v117 = &protocol witness table for BarMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = v100;
  v66 = v99;
  v67 = v113;
  sub_115AF0();

  (*(v98 + 8))(v67, v66);
  v68 = v108;
  v69 = v106;
  v90(&v106[*(v108 + 20)], v91, v115);
  __asm { FMOV            V0.2D, #4.0 }

  *v69 = _Q0;
  v118 = v66;
  *&v119 = &type metadata for LinearGradient;
  *(&v119 + 1) = OpaqueTypeConformance2;
  *&v120 = &protocol witness table for LinearGradient;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = sub_A3C98(&qword_1846B8, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  v77 = v102;
  v78 = v103;
  sub_115B90();
  sub_A68C8(v69, &type metadata accessor for RoundedRectangle);
  (*(v101 + 8))(v65, v78);
  sub_116350();
  v124._countAndFlagsBits = 0;
  v124._object = 0xE000000000000000;
  sub_116340(v124);
  v118 = v96;
  sub_116330();
  v125._countAndFlagsBits = 0x746E656372655020;
  v125._object = 0xE800000000000000;
  sub_116340(v125);
  sub_116380();
  v118 = v78;
  *&v119 = v68;
  *(&v119 + 1) = v75;
  *&v120 = v76;
  swift_getOpaqueTypeConformance2();
  v79 = v105;
  sub_115B10();

  return (*(v104 + 8))(v77, v79);
}