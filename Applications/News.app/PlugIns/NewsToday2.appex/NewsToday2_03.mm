unint64_t sub_10004676C()
{
  result = qword_10011F158;
  if (!qword_10011F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F158);
  }

  return result;
}

uint64_t sub_1000467EC@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v23 = sub_100019558(&qword_10011F190, &qword_1000D5C00);
  __chkstk_darwin(v23);
  v3 = &v21 - v2;
  v22 = sub_100019558(&qword_10011F198, &qword_1000D5C08);
  __chkstk_darwin(v22);
  v21 = &v21 - v4;
  v5 = sub_100019558(&unk_10011E590, &unk_1000D5230);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1000C9480();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v15 = v1 + *(type metadata accessor for BannerView(0) + 20);
  v16 = type metadata accessor for Banner(0);
  sub_10002DFB4(&v15[*(v16 + 28)], v7, &unk_10011E590, &unk_1000D5230);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100031844(v7, &unk_10011E590, &unk_1000D5230);
    *v3 = sub_1000CA0E0();
    *(v3 + 1) = 0;
    v3[16] = 1;
    v17 = sub_100019558(&qword_10011F1A0, &qword_1000D5C10);
    sub_100046C44(v1, &v3[*(v17 + 44)]);
    sub_10001B1BC(&qword_10011F1A8, &qword_10011F190, &qword_1000D5C00, &protocol conformance descriptor for VStack<A>);
    result = sub_1000CA700();
    v19 = result;
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v20 = (*(v9 + 16))(v12, v14, v8);
    __chkstk_darwin(v20);
    *(&v21 - 2) = v1;
    sub_10001B1BC(&qword_10011F1A8, &qword_10011F190, &qword_1000D5C00, &protocol conformance descriptor for VStack<A>);
    sub_1000CA300();
    sub_10001B1BC(&qword_10011F1B0, &qword_10011F198, &qword_1000D5C08, &protocol conformance descriptor for Link<A>);
    v19 = sub_1000CA700();
    result = (*(v9 + 8))(v14, v8);
  }

  *v24 = v19;
  return result;
}

uint64_t sub_100046BEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1000CA0E0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_100019558(&qword_10011F1A0, &qword_1000D5C10);
  return sub_100046C44(a1, a2 + *(v4 + 44));
}

uint64_t sub_100046C44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100019558(&qword_10011F1B8, &qword_1000D5C18);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  type metadata accessor for BannerView(0);
  sub_100019558(&qword_10011F0E0, &qword_1000D5B60);
  sub_1000C9C90();
  v10 = v15[1];
  *v9 = sub_1000C9FD0();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v11 = sub_100019558(&qword_10011F1C0, &qword_1000D5C20);
  sub_100046DE4(a1, &v9[*(v11 + 44)]);
  sub_10002DFB4(v9, v7, &qword_10011F1B8, &qword_1000D5C18);
  *a2 = v10;
  *(a2 + 8) = 0;
  v12 = sub_100019558(&qword_10011F1C8, &qword_1000D5C28);
  sub_10002DFB4(v7, a2 + *(v12 + 48), &qword_10011F1B8, &qword_1000D5C18);
  v13 = a2 + *(v12 + 64);
  *v13 = 0x4028000000000000;
  *(v13 + 8) = 0;
  sub_100031844(v9, &qword_10011F1B8, &qword_1000D5C18);
  return sub_100031844(v7, &qword_10011F1B8, &qword_1000D5C18);
}

uint64_t sub_100046DE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100019558(&qword_10011F1D0, &qword_1000D5C30);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  *v9 = sub_1000CA0E0();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_100019558(&qword_10011F1D8, &qword_1000D5C38);
  sub_100046FC4(a1, &v9[*(v10 + 44)]);
  sub_100047914(v24);
  v11 = v24[0];
  sub_1000CA7A0();
  sub_1000C9CC0();
  v12 = v24[1];
  v13 = v25;
  v14 = v26;
  v15 = v27;
  v22 = v29;
  v23 = v28;
  sub_10002DFB4(v9, v7, &qword_10011F1D0, &qword_1000D5C30);
  sub_10002DFB4(v7, a2, &qword_10011F1D0, &qword_1000D5C30);
  v16 = sub_100019558(&qword_10011F1E0, &qword_1000D5C40);
  v17 = a2 + *(v16 + 48);
  *v17 = 0x4020000000000000;
  *(v17 + 8) = 0;
  v18 = a2 + *(v16 + 64);
  *v18 = v11;
  *(v18 + 8) = v12;
  *(v18 + 16) = v13;
  *(v18 + 24) = v14;
  *(v18 + 32) = v15;
  v19 = v22;
  *(v18 + 40) = v23;
  *(v18 + 48) = v19;

  sub_100031844(v9, &qword_10011F1D0, &qword_1000D5C30);

  return sub_100031844(v7, &qword_10011F1D0, &qword_1000D5C30);
}

uint64_t sub_100046FC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v113 = a1;
  v111 = a2;
  v3 = sub_100019558(&qword_10011F278, &qword_1000D5CB0);
  v108 = *(v3 - 8);
  v109 = v3;
  __chkstk_darwin(v3);
  v102 = &v100 - v4;
  v5 = sub_100019558(&qword_10011F280, &qword_1000D5CB8);
  v6 = __chkstk_darwin(v5 - 8);
  v110 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v122 = &v100 - v8;
  v9 = sub_1000CA290();
  v119 = *(v9 - 8);
  v120 = v9;
  __chkstk_darwin(v9);
  v118 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = (v2 + *(type metadata accessor for BannerView(0) + 20));
  v11 = v114[3];
  *&v130 = v114[2];
  *(&v130 + 1) = v11;
  v112 = sub_100027B64();

  v12 = sub_1000CA410();
  v14 = v13;
  v16 = v15;
  sub_1000CA2A0();
  v17 = sub_1000CA380();
  v19 = v18;
  LOBYTE(v2) = v20;

  sub_100025894(v12, v14, v16 & 1);

  sub_1000CA260();
  v21 = sub_1000CA320();
  v23 = v22;
  LOBYTE(v12) = v24;
  sub_100025894(v17, v19, v2 & 1);

  v101 = v113[1];
  v25 = sub_1000CA340();
  v106 = v26;
  v107 = v25;
  v104 = v27;
  v121 = v28;
  sub_100025894(v21, v23, v12 & 1);

  KeyPath = swift_getKeyPath();
  v29 = v114[5];
  *&v130 = v114[4];
  *(&v130 + 1) = v29;

  v30 = sub_1000CA410();
  v32 = v31;
  LOBYTE(v2) = v33;
  sub_1000CA2B0();
  v35 = v118;
  v34 = v119;
  v36 = v120;
  (*(v119 + 104))(v118, enum case for Font.Leading.tight(_:), v120);
  sub_1000CA2C0();

  (*(v34 + 8))(v35, v36);
  v37 = sub_1000CA380();
  v39 = v38;
  LOBYTE(v34) = v40;

  sub_100025894(v30, v32, v2 & 1);

  sub_1000CA280();
  v41 = sub_1000CA320();
  v43 = v42;
  LOBYTE(v32) = v44;
  sub_100025894(v37, v39, v34 & 1);

  sub_1000CA560();
  v45 = sub_1000CA340();
  v118 = v46;
  v119 = v45;
  LOBYTE(v39) = v47;
  v120 = v48;

  sub_100025894(v41, v43, v32 & 1);

  v117 = swift_getKeyPath();
  v116 = swift_getKeyPath();
  v115 = v39 & 1;
  LOBYTE(v130) = v39 & 1;
  v103 = swift_getKeyPath();
  v49 = (v114 + *(type metadata accessor for Banner(0) + 32));
  v50 = v49[1];
  if (v50)
  {
    *&v130 = *v49;
    *(&v130 + 1) = v50;

    v51 = sub_1000CA410();
    v53 = v52;
    v55 = v54;
    sub_1000CA2B0();
    v56 = sub_1000CA380();
    v58 = v57;
    v60 = v59;

    sub_100025894(v51, v53, v55 & 1);

    sub_1000CA280();
    v61 = sub_1000CA320();
    v114 = v62;
    LOBYTE(v53) = v63;
    v112 = v64;
    sub_100025894(v56, v58, v60 & 1);

    sub_1000CA7A0();
    sub_1000C9CC0();
    v65 = v53 & 1;
    v123 = v53 & 1;
    LOBYTE(v53) = sub_1000CA230();
    sub_1000C9C30();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    LOBYTE(v124) = 0;
    v74 = *v113;
    v75 = sub_100019558(&qword_10011F298, &qword_1000D5D60);
    v76 = v102;
    v77 = &v102[*(v75 + 36)];
    v78 = sub_100019558(&qword_10011F2A0, &unk_1000D5D68);
    v79 = *(v78 + 52);
    v80 = enum case for RoundedCornerStyle.continuous(_:);
    v81 = sub_1000CA060();
    (*(*(v81 - 8) + 104))(&v77[v79], v80, v81);
    *v77 = v74;
    *&v77[*(v78 + 56)] = 256;
    v82 = v114;
    *v76 = v61;
    *(v76 + 8) = v82;
    *(v76 + 16) = v65;
    *(v76 + 24) = v112;
    v83 = v131;
    *(v76 + 32) = v130;
    *(v76 + 48) = v83;
    *(v76 + 64) = v132;
    *(v76 + 80) = v53;
    *(v76 + 88) = v67;
    *(v76 + 96) = v69;
    *(v76 + 104) = v71;
    *(v76 + 112) = v73;
    *(v76 + 120) = 0;
    v84 = swift_getKeyPath();
    v85 = v109;
    v86 = (v76 + *(v109 + 36));
    v87 = v101;
    *v86 = v84;
    v86[1] = v87;
    v88 = v122;
    sub_100048B28(v76, v122);
    (*(v108 + 56))(v88, 0, 1, v85);
  }

  else
  {
    (*(v108 + 56))(v122, 1, 1, v109);
  }

  v89 = v110;
  sub_10002DFB4(v122, v110, &qword_10011F280, &qword_1000D5CB8);
  v90 = v111;
  v91 = v106;
  v92 = v107;
  *v111 = v107;
  v90[1] = v91;
  v93 = v104 & 1;
  *(v90 + 16) = v104 & 1;
  v94 = KeyPath;
  v90[3] = v121;
  v90[4] = v94;
  v90[5] = 0x3FE6666666666666;
  v90[6] = 0x4010000000000000;
  *(v90 + 56) = 0;
  *&v124 = v119;
  *(&v124 + 1) = v118;
  LOBYTE(v125) = v115;
  *(&v125 + 1) = v138[0];
  DWORD1(v125) = *(v138 + 3);
  *(&v125 + 1) = v120;
  *&v126 = v117;
  *(&v126 + 1) = 0x3FECCCCCCCCCCCCDLL;
  *&v127 = v116;
  *(&v127 + 1) = 0x3FE6666666666666;
  v95 = v103;
  *&v128 = v103;
  *(&v128 + 1) = 4;
  v129 = 0;
  *(v90 + 144) = 0;
  v96 = v125;
  *(v90 + 4) = v124;
  *(v90 + 5) = v96;
  v97 = v127;
  *(v90 + 6) = v126;
  *(v90 + 7) = v97;
  *(v90 + 8) = v128;
  v98 = sub_100019558(&qword_10011F288, &qword_1000D5D50);
  sub_10002DFB4(v89, v90 + *(v98 + 80), &qword_10011F280, &qword_1000D5CB8);
  sub_100048B18(v92, v91, v93);

  sub_10002DFB4(&v124, &v130, &qword_10011F290, &qword_1000D5D58);
  sub_100031844(v122, &qword_10011F280, &qword_1000D5CB8);
  sub_100031844(v89, &qword_10011F280, &qword_1000D5CB8);
  *&v130 = v119;
  *(&v130 + 1) = v118;
  LOBYTE(v131) = v115;
  *(&v131 + 1) = v138[0];
  DWORD1(v131) = *(v138 + 3);
  *(&v131 + 1) = v120;
  *&v132 = v117;
  *(&v132 + 1) = 0x3FECCCCCCCCCCCCDLL;
  v133 = v116;
  v134 = 0x3FE6666666666666;
  v135 = v95;
  v136 = 4;
  v137 = 0;
  sub_100031844(&v130, &qword_10011F290, &qword_1000D5D58);
  sub_100025894(v92, v91, v93);
}

uint64_t sub_100047914@<X0>(uint64_t *a1@<X8>)
{
  v27 = a1;
  v2 = sub_100019558(&qword_10011F1E8, &unk_1000D62A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_1000CA640();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100019558(&qword_10011F1F0, &qword_1000D62C0);
  v9 = __chkstk_darwin(v26);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = sub_100019558(&qword_10011F1F8, &qword_1000D5C48);
  __chkstk_darwin(v14);
  v16 = (&v26 - v15);
  v17 = v1 + *(type metadata accessor for BannerView(0) + 20);
  v18 = *(v17 + *(type metadata accessor for Banner(0) + 36));
  if (v18)
  {
    if (v18 != 1)
    {
      sub_100048788(v18);
      v22 = v18;
      sub_1000CA620();
      (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
      sub_1000CA6A0();

      (*(v6 + 8))(v8, v5);
      sub_1000CAA00();
      v23 = sub_1000CAA10();
      (*(*(v23 - 8) + 56))(v4, 0, 1, v23);
      sub_1000CA690();

      sub_100031844(v4, &qword_10011F1E8, &unk_1000D62A0);
      v24 = &v13[*(v26 + 36)];
      *v24 = 0;
      *(v24 + 4) = 1;
      sub_100048798(v13, v11);
      sub_100048808();
      v25 = sub_1000CA700();
      sub_10001E3C8(v18);
      sub_1000488AC(v13);
      result = v25;
      goto LABEL_7;
    }
  }

  else
  {
    *v16 = sub_1000CA7A0();
    v16[1] = v19;
    v20 = sub_100019558(&qword_10011F208, &qword_1000D5C50);
    sub_100047CE8(v1, v16 + *(v20 + 44));
    sub_10001B1BC(&qword_10011F210, &qword_10011F1F8, &qword_1000D5C48, &protocol conformance descriptor for ZStack<A>);
  }

  result = sub_1000CA700();
LABEL_7:
  *v27 = result;
  return result;
}

uint64_t sub_100047CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v3 = sub_100019558(&qword_10011F218, &qword_1000D5C58);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v29 = &v28 - v7;
  v8 = sub_100019558(&qword_10011F220, &qword_1000D5C60);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_1000CA640();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004868C();
  sub_1000CA620();
  (*(v12 + 104))(v14, enum case for Image.ResizingMode.stretch(_:), v11);
  sub_1000CA6A0();

  (*(v12 + 8))(v14, v11);
  v16 = enum case for Image.TemplateRenderingMode.template(_:);
  v17 = sub_1000CA670();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v10, v16, v17);
  (*(v18 + 56))(v10, 0, 1, v17);
  v19 = sub_1000CA650();

  sub_100031844(v10, &qword_10011F220, &qword_1000D5C60);
  v20 = *(v31 + 8);
  KeyPath = swift_getKeyPath();

  v22 = v29;
  sub_1000480C4(v29);
  v23 = *(v4 + 16);
  v24 = v30;
  v23(v30, v22, v3);
  *a2 = v19;
  *(a2 + 8) = 0x3FF0000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = v20;
  v25 = sub_100019558(&qword_10011F228, &qword_1000D5C98);
  v23((a2 + *(v25 + 48)), v24, v3);
  v26 = *(v4 + 8);

  v26(v22, v3);
  v26(v24, v3);
}

id sub_1000480C4@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v29 = sub_100019558(&qword_10011F230, &qword_1000D5CA0);
  v28 = *(v29 - 8);
  __chkstk_darwin(v29);
  v26 = &v25 - v1;
  v2 = sub_1000CA550();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CA640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() premiumSealInner];
  if (result)
  {
    sub_1000CA620();
    (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
    v25 = sub_1000CA6A0();

    (*(v7 + 8))(v9, v6);
    v11 = sub_1000CACD0();
    v12 = objc_opt_self();
    v13 = [v12 colorWithHexString:v11];

    [v13 red];
    [v13 green];
    [v13 blue];
    v14 = enum case for Color.RGBColorSpace.sRGB(_:);
    v15 = *(v3 + 104);
    v15(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
    v16 = sub_1000CA600();

    v17 = sub_1000CACD0();
    v18 = [v12 colorWithHexString:v17];

    [v18 red];
    [v18 green];
    [v18 blue];
    v15(v5, v14, v2);
    v19 = sub_1000CA600();

    sub_100019558(&qword_10011F238, &qword_1000DACC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1000D3D20;
    *(v20 + 32) = v16;
    *(v20 + 40) = v19;

    sub_1000CA750();
    sub_1000CA7B0();
    sub_1000CA7C0();
    sub_1000C9D20();
    v31 = 0;
    *v30 = v34;
    *&v30[8] = v35;
    *&v30[24] = v36;
    *&v30[40] = v25;
    *&v30[48] = 0x3FF0000000000000;
    *&v30[56] = 0;

    v21 = sub_100019558(&qword_10011F240, &unk_1000DACD0);
    v22 = sub_10004891C();
    v23 = v26;
    sub_1000CA470();
    v32[0] = *v30;
    v32[1] = *&v30[16];
    v33[0] = *&v30[32];
    *(v33 + 10) = *&v30[42];
    sub_100031844(v32, &qword_10011F240, &unk_1000DACD0);
    *v30 = v21;
    *&v30[8] = v22;
    swift_getOpaqueTypeConformance2();
    v24 = v29;
    sub_1000CA420();

    return (*(v28 + 8))(v23, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10004868C()
{
  v0 = [objc_opt_self() sharedAccount];
  v1 = [v0 supportedContentLanguage];

  result = objc_opt_self();
  if (v1 != 1)
  {
    p_align = &stru_100118FE8.align;
    if (v1)
    {
      goto LABEL_7;
    }

    result = [result premiumSealOuter];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  result = [result premiumSealOuterFR];
  if (result)
  {
    return result;
  }

  __break(1u);
LABEL_7:
  result = [result *(p_align + 431)];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100048748@<X0>(void *a1@<X8>)
{
  result = sub_1000467EC(&v3);
  *a1 = v3;
  return result;
}

id sub_100048788(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100048798(uint64_t a1, uint64_t a2)
{
  v4 = sub_100019558(&qword_10011F1F0, &qword_1000D62C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100048808()
{
  result = qword_10011F200;
  if (!qword_10011F200)
  {
    sub_1000195A0(&qword_10011F1F0, &qword_1000D62C0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F200);
  }

  return result;
}

uint64_t sub_1000488AC(uint64_t a1)
{
  v2 = sub_100019558(&qword_10011F1F0, &qword_1000D62C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004891C()
{
  result = qword_10011F248;
  if (!qword_10011F248)
  {
    sub_1000195A0(&qword_10011F240, &unk_1000DACD0);
    sub_1000489A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F248);
  }

  return result;
}

unint64_t sub_1000489A8()
{
  result = qword_10011F250;
  if (!qword_10011F250)
  {
    sub_1000195A0(&qword_10011F258, &qword_1000D5CA8);
    sub_100048A60();
    sub_10001B1BC(&qword_10011F268, &qword_10011F270, &qword_1000DACE0, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F250);
  }

  return result;
}

unint64_t sub_100048A60()
{
  result = qword_10011F260;
  if (!qword_10011F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F260);
  }

  return result;
}

uint64_t sub_100048B18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100048B28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100019558(&qword_10011F278, &qword_1000D5CB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100048C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C95A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100048D54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C95A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

uint64_t sub_100048E2C(uint64_t a1)
{
  result = sub_1000C95A0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StackKind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StackKind(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100049038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C95A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100049104(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C95A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1000491DC(uint64_t a1)
{
  result = sub_1000C95A0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100049264(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C95A0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000492E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C95A0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000493A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C95A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100019558(&unk_10011E590, &unk_1000D5230);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000494B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000C95A0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100019558(&unk_10011E590, &unk_1000D5230);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000495D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100049628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1000C95A0();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100049708@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000C95A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_1000497C0()
{
  result = qword_10011F4F8;
  if (!qword_10011F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F4F8);
  }

  return result;
}

unint64_t sub_100049818()
{
  result = qword_10011F500;
  if (!qword_10011F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F500);
  }

  return result;
}

unint64_t sub_10004986C()
{
  result = qword_10011F508;
  if (!qword_10011F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F508);
  }

  return result;
}

uint64_t sub_10004990C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_100049954(uint64_t a1, uint64_t a2)
{
  if ((sub_1000C9570() & 1) != 0 && (v4 = type metadata accessor for AppearanceEvent(0), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

BOOL sub_1000499CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C9480();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100019558(&unk_10011E590, &unk_1000D5230);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_100019558(&qword_10011F518, &unk_1000D9D10);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  if ((sub_1000C9570() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for EngagementEvent(0) + 20);
  v15 = *(v11 + 48);
  sub_10001F8C4(a1 + v14, v13);
  sub_10001F8C4(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_100031844(v13, &unk_10011E590, &unk_1000D5230);
      return 1;
    }

    goto LABEL_7;
  }

  sub_10001F8C4(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_100031844(v13, &qword_10011F518, &unk_1000D9D10);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_10004990C(&qword_1001214A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v18 = sub_1000CAC90();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_100031844(v13, &unk_10011E590, &unk_1000D5230);
  return (v18 & 1) != 0;
}

id sub_100049D08(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v16 = a2;
  ObjectType = swift_getObjectType();
  v13 = sub_1000CB0B0();
  v3 = *(v13 - 8);
  __chkstk_darwin(v13);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CB0A0();
  __chkstk_darwin(v6);
  v7 = sub_1000CA810();
  __chkstk_darwin(v7 - 8);
  *&v2[OBJC_IVAR____TtC10NewsToday228WidgetPersonalizationService_cachedScoreProfiles] = &_swiftEmptyDictionarySingleton;
  v12 = OBJC_IVAR____TtC10NewsToday228WidgetPersonalizationService_cacheAccessQueue;
  v8 = sub_10001F934(0, &qword_100120570, OS_dispatch_queue_ptr);
  v11[0] = "cacheAccessQueue";
  v11[1] = v8;
  sub_1000CA7F0();
  v18 = _swiftEmptyArrayStorage;
  sub_10004B118();
  sub_100019558(&qword_10011F5D8, &unk_1000D6100);
  sub_10001B1BC(&qword_10011F5E0, &qword_10011F5D8, &unk_1000D6100, &protocol conformance descriptor for [A]);
  sub_1000CB200();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *&v2[v12] = sub_1000CB0F0();
  v9 = v16;
  *&v2[OBJC_IVAR____TtC10NewsToday228WidgetPersonalizationService_scoringService] = v15;
  *&v2[OBJC_IVAR____TtC10NewsToday228WidgetPersonalizationService_configurationSet] = v9;
  v17.receiver = v2;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "init");
}

uint64_t sub_100049FB4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v9 = [objc_allocWithZone(FCMapTable) init];
  v10 = a1;
  v80 = v9;
  v87 = _swiftEmptyArrayStorage;
  v81 = a1;
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v84 = a2;
  v75 = a4;
  if (v11)
  {
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = OBJC_IVAR____TtC10NewsToday228WidgetPersonalizationService_cachedScoreProfiles;
      v14 = v10 & 0xC000000000000001;
      v82 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v14)
        {
          v17 = sub_1000CB2A0();
        }

        else
        {
          v17 = *(v10 + 8 * v12 + 32);
          swift_unknownObjectRetain();
        }

        v18 = [v17 itemID];
        v19 = sub_1000CAD00();
        v21 = v20;

        swift_beginAccess();
        v22 = *(v84 + v13);
        if (!*(v22 + 16))
        {
          break;
        }

        v23 = sub_10003D8BC(v19, v21);
        v25 = v24;

        if ((v25 & 1) == 0)
        {
          goto LABEL_15;
        }

        v15 = *(*(v22 + 56) + 8 * v23);
        swift_endAccess();
        v16 = v15;
        [v80 setObject:v16 forKey:v17];

        swift_unknownObjectRelease();
LABEL_7:
        ++v12;
        v10 = v81;
        if (v11 == v12)
        {
          goto LABEL_19;
        }
      }

LABEL_15:
      swift_endAccess();
      swift_unknownObjectRetain();
      sub_1000CAEB0();
      if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000CAF10();
      }

      sub_1000CAF40();
      swift_unknownObjectRelease();
      v82 = v87;
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_54;
  }

  v82 = _swiftEmptyArrayStorage;
LABEL_19:
  sub_100019558(&unk_10011E820, &unk_1000D5240);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000D45E0;
  v85 = 0;
  v86 = 0xE000000000000000;
  v5 = v84;
  sub_1000CB340();
  v27 = v85;
  v28 = v86;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_100024C50();
  *(v26 + 32) = v27;
  *(v26 + 40) = v28;
  v29 = [v80 count];
  *(v26 + 96) = &type metadata for UInt;
  *(v26 + 104) = &protocol witness table for UInt;
  *(v26 + 72) = v29;
  v4 = v82;
  if (v82 >> 62)
  {
    v30 = sub_1000CB3A0();
  }

  else
  {
    v30 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v26 + 136) = &type metadata for Int;
  *(v26 + 144) = &protocol witness table for Int;
  *(v26 + 112) = v30;
  sub_10001F934(0, &qword_10011F5F0, OS_os_log_ptr);
  v31 = sub_1000CB160();
  v32 = sub_1000CB060();
  sub_1000C9BE0("Personalization service %{public}@ will reuse %lu cached scores and generate %lu scores", 87, 2, &_mh_execute_header, v31, v32, v26);

  if (v82 >> 62)
  {
    if (!sub_1000CB3A0())
    {
      goto LABEL_55;
    }

LABEL_25:
    v85 = *(v84 + OBJC_IVAR____TtC10NewsToday228WidgetPersonalizationService_scoringService);
    v33 = v85;
    sub_1000C9B70();
    v34 = v33;
    a4 = &v85;
    sub_1000C9AE0();

    if (!(v82 >> 62))
    {
      v35 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v35)
      {
        goto LABEL_55;
      }

      goto LABEL_27;
    }

LABEL_54:
    v35 = sub_1000CB3A0();
    if (!v35)
    {
      goto LABEL_55;
    }

LABEL_27:
    if (v35 >= 1)
    {
      v36 = 0;
      v78 = v4 & 0xC000000000000001;
      v79 = OBJC_IVAR____TtC10NewsToday228WidgetPersonalizationService_cachedScoreProfiles;
      p_align = (&stru_100118FE8 + 24);
      v77 = v35;
      while (1)
      {
        if (v78)
        {
          v41 = sub_1000CB2A0();
        }

        else
        {
          v41 = *(v4 + 8 * v36 + 32);
          swift_unknownObjectRetain();
        }

        v42 = [v41 itemID];
        a2 = sub_1000CAD00();
        v44 = v43;

        v83 = v41;
        v45 = [v41 *(p_align + 436)];
        swift_beginAccess();
        if (v45)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a4 = *(v5 + v79);
          v4 = v44;
          v48 = sub_10003D8BC(a2, v44);
          v49 = a4[2];
          v50 = (v47 & 1) == 0;
          v51 = v49 + v50;
          if (__OFADD__(v49, v50))
          {
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            v64 = sub_1000CB3A0();
            v10 = v81;
            v11 = v64;
            goto LABEL_3;
          }

          v5 = v47;
          v52 = a2;
          if (a4[3] >= v51)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1000A4F98();
            }
          }

          else
          {
            sub_1000A3848(v51, isUniquelyReferenced_nonNull_native);
            v53 = sub_10003D8BC(a2, v4);
            if ((v5 & 1) != (v54 & 1))
            {
              goto LABEL_69;
            }

            v48 = v53;
          }

          a2 = v82;
          if (v5)
          {
            v38 = a4[7];
            v39 = *(v38 + 8 * v48);
            *(v38 + 8 * v48) = v45;
          }

          else
          {
            a4[(v48 >> 6) + 8] |= 1 << v48;
            v60 = (a4[6] + 16 * v48);
            *v60 = v52;
            v60[1] = v4;
            *(a4[7] + 8 * v48) = v45;
            v61 = a4[2];
            v62 = __OFADD__(v61, 1);
            v63 = v61 + 1;
            if (v62)
            {
              goto LABEL_50;
            }

            a4[2] = v63;
          }

          v5 = v84;
          *(v84 + v79) = a4;
          v35 = v77;
          v4 = v82;
        }

        else
        {
          v55 = sub_10003D8BC(a2, v44);
          v57 = v56;

          if (v57)
          {
            v58 = swift_isUniquelyReferenced_nonNull_native();
            v59 = *(v5 + v79);
            if (!v58)
            {
              sub_1000A4F98();
            }

            sub_10006EB0C(v55, v59);
            *(v5 + v79) = v59;
          }
        }

        ++v36;
        swift_endAccess();
        p_align = &stru_100118FE8.align;
        v40 = [v83 scoreProfile];
        [v80 setObject:v40 forKey:v83];
        swift_unknownObjectRelease();

        if (v35 == v36)
        {
          goto LABEL_55;
        }
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    sub_1000CB560();
    __break(1u);
    goto LABEL_70;
  }

  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_25;
  }

LABEL_55:
  KeyPath = swift_getKeyPath();
  swift_retain_n();
  a4 = v80;

  v85 = sub_10004B170(v66);
  sub_10004C658(&v85, a4, KeyPath);
  if (!v76)
  {

    v67 = v85;
    if (v85 < 0 || (v85 & 0x4000000000000000) != 0)
    {
      v68 = sub_1000CB3A0();
      if (v68)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v68 = *(v85 + 16);
      if (v68)
      {
LABEL_59:
        if (v68 >= 1)
        {
          v69 = 0;
          do
          {
            if ((v67 & 0xC000000000000001) != 0)
            {
              v70 = sub_1000CB2A0();
            }

            else
            {
              v70 = *(v67 + 8 * v69 + 32);
              swift_unknownObjectRetain();
            }

            ++v69;
            v71 = [a4 objectForKey:v70];
            [v70 setScoreProfile:v71];
            swift_unknownObjectRelease();
          }

          while (v68 != v69);
          goto LABEL_66;
        }

        __break(1u);
        goto LABEL_68;
      }
    }

LABEL_66:
    v72 = [objc_allocWithZone(FCFeedPersonalizedItems) init];
    sub_100019558(&qword_10011F600, qword_1000D6120);
    isa = sub_1000CAEC0().super.isa;

    [v72 setSortedItems:isa];

    [v72 setScoreProfiles:a4];

    *v75 = v72;
    return result;
  }

LABEL_70:

  __break(1u);
  return result;
}

BOOL sub_10004A884(void *a1, uint64_t *a2, id a3, uint64_t a4)
{
  v5 = *a2;
  v6 = [a3 objectForKey:*a1];
  v7 = 0.0;
  v8 = 0.0;
  if (v6)
  {
    v9 = v6;
    swift_getAtKeyPath();

    v8 = v13;
  }

  v10 = [a3 objectForKey:v5];
  if (v10)
  {
    v11 = v10;
    swift_getAtKeyPath();

    v7 = v13;
  }

  return v7 < v8;
}

void *sub_10004ADC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100019558(&qword_10011F5F8, &unk_1000D6110);
    v2 = sub_1000CB3D0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    v9 = 0;
LABEL_11:
    v10 = *(*(a1 + 56) + 8 * (__clz(__rbit64(v5)) | (v9 << 6)));

    v11 = v10;
    sub_1000CAFD0();

    return 0;
  }

  else
  {
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    __break(1u);
    __break(1u);
  }

  return result;
}

unint64_t sub_10004B118()
{
  result = qword_10011F5D0;
  if (!qword_10011F5D0)
  {
    sub_1000CB0A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F5D0);
  }

  return result;
}

void *sub_10004B170(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1000CB3A0();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10006E55C(v3, 0);
  sub_10004B204((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10004B204(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000CB3A0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1000CB3A0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001B1BC(&qword_10011F618, &qword_10011F610, &unk_1000D61A0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100019558(&qword_10011F610, &unk_1000D61A0);
            v9 = sub_100050938(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100019558(&qword_10011F600, qword_1000D6120);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10004B3B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = a1;
    v3 = sub_1000CB3A0();
    a1 = v2;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    __chkstk_darwin(a1);
    sub_10001F934(0, &qword_10011F608, FCFeedPersonalizedItems_ptr);
    sub_1000CB0D0();
    return v7;
  }

  v4 = [objc_allocWithZone(FCFeedPersonalizedItems) init];
  sub_100019558(&qword_10011F600, qword_1000D6120);
  isa = sub_1000CAEC0().super.isa;
  [v4 setSortedItems:isa];

  v6 = [objc_allocWithZone(FCMapTable) init];
  [v4 setScoreProfiles:v6];

  return v4;
}

uint64_t sub_10004B538(char *__dst, char *__src, char *a3, char *a4, void *a5, uint64_t a6)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v16 = &v6[8 * v12];
    if (v10 < 8 || v8 >= v7)
    {
LABEL_24:
      v8 = v9;
      goto LABEL_47;
    }

    while (1)
    {
      v17 = *v8;
      v18 = *v6;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = [a5 objectForKey:v17];
      if (v19)
      {
        v20 = v19;
        swift_getAtKeyPath();

        v21 = v38;
      }

      else
      {
        v21 = 0.0;
      }

      v22 = [a5 objectForKey:v18];
      if (v22)
      {
        v23 = v22;
        swift_getAtKeyPath();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v38 >= v21)
        {
          goto LABEL_20;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v21 <= 0.0)
        {
LABEL_20:
          v24 = v6;
          v25 = v9 == v6;
          v6 += 8;
          if (v25)
          {
            goto LABEL_22;
          }

LABEL_21:
          *v9 = *v24;
          goto LABEL_22;
        }
      }

      v24 = v8;
      v25 = v9 == v8;
      v8 += 8;
      if (!v25)
      {
        goto LABEL_21;
      }

LABEL_22:
      v9 += 8;
      if (v6 >= v16 || v8 >= v7)
      {
        goto LABEL_24;
      }
    }
  }

  if (a4 != __src || &__src[8 * v15] <= a4)
  {
    memmove(a4, __src, 8 * v15);
  }

  v16 = &v6[8 * v15];
  if (v13 >= 8 && v8 > v9)
  {
LABEL_30:
    v36 = v8;
    v26 = v8 - 8;
    v7 -= 8;
    v27 = v16;
    while (1)
    {
      v28 = *(v27 - 1);
      v27 -= 8;
      v8 = v26;
      v29 = *v26;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v30 = [a5 objectForKey:v28];
      if (v30)
      {
        v31 = v30;
        swift_getAtKeyPath();

        v32 = v38;
      }

      else
      {
        v32 = 0.0;
      }

      v33 = [a5 objectForKey:{v29, v36}];
      if (v33)
      {
        v34 = v33;
        swift_getAtKeyPath();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v38 < v32)
        {
          goto LABEL_41;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v32 > 0.0)
        {
LABEL_41:
          if (v7 + 8 != v36)
          {
            *v7 = *v8;
          }

          if (v16 <= v6 || v8 <= v9)
          {
            break;
          }

          goto LABEL_30;
        }
      }

      v26 = v8;
      if (v7 + 8 != v16)
      {
        *v7 = *v27;
      }

      v7 -= 8;
      v16 = v27;
      if (v27 <= v6)
      {
        v16 = v27;
        v8 = v36;
        break;
      }
    }
  }

LABEL_47:
  if (v8 != v6 || v8 >= &v6[(v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v8, v6, 8 * ((v16 - v6) / 8));
  }

  return 1;
}

uint64_t sub_10004B8F4(uint64_t *a1, char *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v7 = a1;
  v8 = *a1;
  v24 = a4;

  v25 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v25 = sub_10002A814(v25);
  }

  v20 = v7;
  *v7 = v25;
  v10 = v25 + 16;
  v9 = *(v25 + 2);
  if (v9 < 2)
  {
LABEL_10:

    *v20 = v25;

    return 1;
  }

  else
  {
    v21 = (v25 + 16);
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = &v25[16 * v9];
      v7 = *v12;
      v13 = &v10[16 * v9];
      v14 = *(v13 + 1);
      __dst = (v11 + 8 * *v12);
      __src = (v11 + 8 * *v13);
      v15 = (v11 + 8 * v14);
      v16 = v24;

      sub_10004B538(__dst, __src, v15, a2, v16, a5);
      if (v5)
      {

        *v20 = v25;

        return 1;
      }

      if (v14 < v7)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v10 = v25 + 16;
      v17 = *v21;
      if (v9 - 2 >= *v21)
      {
        goto LABEL_14;
      }

      *v12 = v7;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_15;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 16, 16 * v18);
      *v21 = v9;
      if (v9 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v20 = v25;

    __break(1u);
  }

  return result;
}

void sub_10004BADC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v124 = _swiftEmptyArrayStorage;
  v7 = a3[1];
  v8 = a5;
  swift_retain_n();
  v9 = v8;
  v10 = v9;
  v121 = a6;
  if (v7 >= 1)
  {
    v115 = _swiftEmptyArrayStorage;
    v11 = 0;
    v119 = v9;
    do
    {
      v12 = v11;
      v13 = v11 + 1;
      if (v11 + 1 >= v7)
      {
        v26 = v115;
        v27 = a4;
      }

      else
      {
        v14 = *a3;
        v123 = *(*a3 + 8 * v13);
        v122 = *(v14 + 8 * v11);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v15 = sub_10004A884(&v123, &v122, v10, a6);
        if (v120)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_110;
        }

        v16 = v15;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v17 = v12 + 2;
        if (v12 + 2 < v7)
        {
          v110 = v12;
          v18 = (v14 + 8 * v12 + 16);
          do
          {
            v20 = *(v18 - 1);
            v19 = *v18;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v21 = [v10 objectForKey:v19];
            if (v21)
            {
              v123 = v21;
              v22 = v21;
              swift_getAtKeyPath();

              v23 = v122;
            }

            else
            {
              v23 = 0.0;
            }

            v24 = [v10 objectForKey:v20];
            if (v24)
            {
              v25 = v24;
              v123 = v24;
              swift_getAtKeyPath();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              if (((v16 ^ (v122 >= v23)) & 1) == 0)
              {
LABEL_16:
                a6 = v121;
                goto LABEL_19;
              }
            }

            else
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              if (v16 == v23 <= 0.0)
              {
                goto LABEL_16;
              }
            }

            ++v18;
            ++v17;
            a6 = v121;
          }

          while (v7 != v17);
          v17 = v7;
LABEL_19:
          v12 = v110;
        }

        v26 = v115;
        v27 = a4;
        if (v16)
        {
          if (v17 < v12)
          {
            goto LABEL_133;
          }

          if (v12 < v17)
          {
            v28 = v17;
            v29 = 8 * v17 - 8;
            v30 = 8 * v12;
            v13 = v17;
            v31 = v12;
            while (1)
            {
              if (v31 != --v28)
              {
                v32 = *a3;
                if (!*a3)
                {
                  goto LABEL_136;
                }

                v33 = *(v32 + v30);
                *(v32 + v30) = *(v32 + v29);
                *(v32 + v29) = v33;
              }

              ++v31;
              v29 -= 8;
              v30 += 8;
              if (v31 >= v28)
              {
                goto LABEL_29;
              }
            }
          }
        }

        v13 = v17;
      }

LABEL_29:
      v34 = a3[1];
      if (v13 >= v34)
      {
        v36 = v13;
        if (v13 < v12)
        {
          goto LABEL_129;
        }
      }

      else
      {
        if (__OFSUB__(v13, v12))
        {
          goto LABEL_130;
        }

        if (v13 - v12 >= v27)
        {
          goto LABEL_38;
        }

        if (__OFADD__(v12, v27))
        {
          goto LABEL_131;
        }

        if (v12 + v27 >= v34)
        {
          v35 = a3[1];
        }

        else
        {
          v35 = v12 + v27;
        }

        if (v35 < v12)
        {
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:

          __break(1u);
LABEL_135:

          __break(1u);
LABEL_136:

          __break(1u);
LABEL_137:

          __break(1u);
LABEL_138:

          __break(1u);
          return;
        }

        if (v13 == v35)
        {
LABEL_38:
          v36 = v13;
          if (v13 < v12)
          {
            goto LABEL_129;
          }
        }

        else
        {
          v91 = *a3;
          v92 = v12;
          v93 = *a3 + 8 * v13 - 8;
          v112 = v92;
          v114 = v35;
          v94 = v92 - v13;
          do
          {
            v117 = v13;
            v95 = *(v91 + 8 * v13);
            v96 = v94;
            v97 = v93;
            do
            {
              v98 = *v97;
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              v99 = [v10 objectForKey:v95];
              if (v99)
              {
                v123 = v99;
                v100 = v99;
                swift_getAtKeyPath();

                v101 = v122;
              }

              else
              {
                v101 = 0.0;
              }

              v102 = [v10 objectForKey:v98];
              if (v102)
              {
                v123 = v102;
                v103 = v102;
                swift_getAtKeyPath();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                if (v122 >= v101)
                {
                  break;
                }
              }

              else
              {
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                if (v101 <= 0.0)
                {
                  break;
                }
              }

              if (!v91)
              {
                goto LABEL_134;
              }

              v104 = *v97;
              v95 = v97[1];
              *v97 = v95;
              v97[1] = v104;
              --v97;
            }

            while (!__CFADD__(v96++, 1));
            v13 = v117 + 1;
            v93 += 8;
            --v94;
          }

          while ((v117 + 1) != v114);
          v36 = v114;
          a6 = v121;
          v26 = v115;
          v12 = v112;
          if (v114 < v112)
          {
            goto LABEL_129;
          }
        }
      }

      v116 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_10002A928(0, *(v26 + 2) + 1, 1, v26);
      }

      v38 = *(v26 + 2);
      v37 = *(v26 + 3);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v26 = sub_10002A928((v37 > 1), v38 + 1, 1, v26);
      }

      *(v26 + 2) = v39;
      v40 = v26 + 32;
      v41 = &v26[16 * v38 + 32];
      *v41 = v12;
      *(v41 + 1) = v116;
      v124 = v26;
      v113 = *a1;
      if (!*a1)
      {
        goto LABEL_137;
      }

      v115 = v26;
      if (v38)
      {
        v111 = v26 + 32;
        while (1)
        {
          v42 = v39 - 1;
          if (v39 >= 4)
          {
            break;
          }

          if (v39 == 3)
          {
            v43 = *(v26 + 4);
            v44 = *(v26 + 5);
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_61:
            if (v46)
            {
              goto LABEL_120;
            }

            v59 = &v26[16 * v39];
            v61 = *v59;
            v60 = *(v59 + 1);
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_123;
            }

            v65 = &v40[16 * v42];
            v67 = *v65;
            v66 = *(v65 + 1);
            v53 = __OFSUB__(v66, v67);
            v68 = v66 - v67;
            if (v53)
            {
              goto LABEL_126;
            }

            if (__OFADD__(v63, v68))
            {
              goto LABEL_127;
            }

            if (v63 + v68 >= v45)
            {
              if (v45 < v68)
              {
                v42 = v39 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          v69 = &v26[16 * v39];
          v71 = *v69;
          v70 = *(v69 + 1);
          v53 = __OFSUB__(v70, v71);
          v63 = v70 - v71;
          v64 = v53;
LABEL_75:
          if (v64)
          {
            goto LABEL_122;
          }

          v72 = &v40[16 * v42];
          v74 = *v72;
          v73 = *(v72 + 1);
          v53 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v53)
          {
            goto LABEL_125;
          }

          if (v75 < v63)
          {
            goto LABEL_3;
          }

LABEL_82:
          if (v42 - 1 >= v39)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
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
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

          v80 = *a3;
          if (!*a3)
          {
            goto LABEL_135;
          }

          v10 = &v40[16 * v42 - 16];
          v81 = *v10;
          v82 = v42;
          v83 = &v40[16 * v42];
          v84 = *(v83 + 1);
          v85 = (v80 + 8 * *v10);
          v86 = (v80 + 8 * *v83);
          v87 = (v80 + 8 * v84);
          v88 = v119;

          v89 = v85;
          a6 = v121;
          sub_10004B538(v89, v86, v87, v113, v88, v121);
          if (v120)
          {

            v124 = v115;

            v10 = v119;
            goto LABEL_110;
          }

          v26 = v115;
          if (v84 < v81)
          {
            goto LABEL_115;
          }

          v90 = *(v115 + 2);
          if (v82 > v90)
          {
            goto LABEL_116;
          }

          *v10 = v81;
          *(v10 + 1) = v84;
          if (v82 >= v90)
          {
            goto LABEL_117;
          }

          v39 = v90 - 1;
          memmove(v83, v83 + 16, 16 * (v90 - 1 - v82));
          *(v115 + 2) = v90 - 1;
          v10 = v119;
          v40 = v111;
          if (v90 <= 2)
          {
LABEL_3:
            v124 = v26;
            goto LABEL_4;
          }
        }

        v47 = &v40[16 * v39];
        v48 = *(v47 - 8);
        v49 = *(v47 - 7);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_118;
        }

        v52 = *(v47 - 6);
        v51 = *(v47 - 5);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_119;
        }

        v54 = &v26[16 * v39];
        v56 = *v54;
        v55 = *(v54 + 1);
        v53 = __OFSUB__(v55, v56);
        v57 = v55 - v56;
        if (v53)
        {
          goto LABEL_121;
        }

        v53 = __OFADD__(v45, v57);
        v58 = v45 + v57;
        if (v53)
        {
          goto LABEL_124;
        }

        if (v58 >= v50)
        {
          v76 = &v40[16 * v42];
          v78 = *v76;
          v77 = *(v76 + 1);
          v53 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v53)
          {
            goto LABEL_128;
          }

          if (v45 < v79)
          {
            v42 = v39 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_61;
      }

LABEL_4:
      v11 = v116;
      v7 = a3[1];
    }

    while (v116 < v7);
  }

  v106 = *a1;
  if (!*a1)
  {
    goto LABEL_138;
  }

  v107 = v10;

  sub_10004B8F4(&v124, v106, a3, v107, v121);
  if (v120)
  {

LABEL_110:
  }

  else
  {
  }
}

void sub_10004C368(uint64_t *a1, void *a2, uint64_t *a3)
{
  v5 = a1[1];
  v6 = a2;
  swift_retain_n();
  v7 = v6;
  v8 = sub_1000CB510(v5);
  if (v8 < v5)
  {
    if (v5 >= -1)
    {
      v9 = v8;
      if (v5 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100019558(&qword_10011F600, qword_1000D6120);
        v10 = sub_1000CAF20();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5 / 2;
      }

      v30[0] = ((v10 & 0xFFFFFFFFFFFFFF8) + 32);
      v30[1] = (v5 / 2);
      v11 = v7;

      sub_10004BADC(v30, &v31, a1, v9, v11, a3);

      *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
    goto LABEL_30;
  }

  if (v5 < 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 == 1)
    {
    }

    else
    {
      v12 = *a1;
      v13 = v7;

      v14 = -1;
      v15 = 1;
      v16 = v12;
      v26 = v5;
      do
      {
        v28 = v15;
        v29 = v14;
        v17 = *(v12 + 8 * v15);
        v27 = v16;
        do
        {
          v18 = *v16;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v19 = [v13 objectForKey:v17];
          if (v19)
          {
            v30[0] = v19;
            v20 = v19;
            swift_getAtKeyPath();

            v21 = v31;
          }

          else
          {
            v21 = 0.0;
          }

          v22 = [v13 objectForKey:v18];
          if (v22)
          {
            v30[0] = v22;
            v23 = v22;
            swift_getAtKeyPath();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            if (v31 >= v21)
            {
              break;
            }
          }

          else
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v21 <= 0.0)
            {
              break;
            }
          }

          if (!v12)
          {
            goto LABEL_31;
          }

          v24 = *v16;
          v17 = v16[1];
          *v16 = v17;
          v16[1] = v24;
          --v16;
        }

        while (!__CFADD__(v14++, 1));
        v15 = v28 + 1;
        v16 = v27 + 1;
        v14 = v29 - 1;
      }

      while (v28 + 1 != v26);
    }
  }

  else
  {
  }
}

void sub_10004C658(uint64_t *a1, void *a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = a2;
  swift_retain_n();
  v7 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_10002AB90(v5);
    *a1 = v5;
  }

  v9 = *(v5 + 16);
  v11[0] = v5 + 32;
  v11[1] = v9;
  v10 = v7;

  sub_10004C368(v11, v10, a3);

  sub_1000CB300();
}

void sub_10004C734(uint64_t a1)
{
  v1 = sub_10004ADC8(a1);
  if (v1)
  {
    v2 = v1;
    sub_100019558(&unk_10011E820, &unk_1000D5240);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1000D3D20;
    sub_1000CB340();
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_100024C50();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    v4 = v2[2];
    *(v3 + 96) = &type metadata for Int;
    *(v3 + 104) = &protocol witness table for Int;
    *(v3 + 72) = v4;
    sub_10001F934(0, &qword_10011F5F0, OS_os_log_ptr);
    v5 = sub_1000CB160();
    v6 = sub_1000CB060();
    sub_1000C9BE0("Personalization service %{public}@ will adopt %lu scores into Tabi score cache", 78, 2, &_mh_execute_header, v5, v6, v3);

    sub_1000C9A90();
    v7 = sub_1000C9A80();
    v8._rawValue = v2;
    sub_1000C9A70(v8);
  }

  else
  {
    v9 = sub_1000CB040();
    sub_100019558(&unk_10011E820, &unk_1000D5240);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000D3410;
    sub_1000CB340();
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100024C50();
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    sub_10001F934(0, &qword_10011F5F0, OS_os_log_ptr);
    v7 = sub_1000CB160();
    sub_1000C9BE0("Personalization service %{public}@ failed to cast scores to doubles", 67, 2, &_mh_execute_header, v7, v9, v10);
  }
}

uint64_t sub_10004C960()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10004C9D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sortingScore];
  *a2 = v4;
  return result;
}

id sub_10004CA14@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 personalizationScore];
  *a2 = v4;
  return result;
}

uint64_t sub_10004CA70(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_100019558(&qword_10011F680, &unk_1000D61B0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_100019558(&qword_10011ED68, &unk_1000D64F0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_10004CBCC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_100019558(&qword_10011F680, &unk_1000D61B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100019558(&qword_10011ED68, &unk_1000D64F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10004CD28(uint64_t a1)
{
  sub_10004CED0(319, &qword_10011E608, &unk_10011E610, UIColor_ptr);
  if (v1 <= 0x3F)
  {
    sub_10004CED0(319, &qword_10011F6F0, &qword_10011F6F8, UIImage_ptr);
    if (v2 <= 0x3F)
    {
      sub_10004CF28(319, &qword_10011F700, type metadata accessor for CGRect, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_10004CF28(319, &qword_10011F708, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_10004CF8C();
          if (v5 <= 0x3F)
          {
            sub_10004CF28(319, &qword_10011EDE0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
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

void sub_10004CED0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_10001F934(255, a3, a4);
    v5 = sub_1000CB170();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10004CF28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10004CF8C()
{
  if (!qword_10011F710)
  {
    v0 = sub_1000C9C60();
    if (!v1)
    {
      atomic_store(v0, &qword_10011F710);
    }
  }
}

uint64_t sub_10004CFF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000C9FA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100019558(&qword_10011EE58, &qword_1000D6600);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SmallBackgroundView(0);
  sub_10002DFB4(v1 + *(v10 + 40), v9, &qword_10011EE58, &qword_1000D6600);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000CA9F0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1000CB050();
    v13 = sub_1000CA220();
    sub_1000C9BF0();

    sub_1000C9F90();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10004D200@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v47 = sub_100019558(&qword_10011F760, &qword_1000D6230);
  __chkstk_darwin(v47);
  v46 = (&v40 - v3);
  v48 = sub_100019558(&qword_10011F768, &qword_1000D6238);
  __chkstk_darwin(v48);
  v44 = (&v40 - v4);
  v41 = type metadata accessor for Scrim(0);
  v5 = __chkstk_darwin(v41);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = (&v40 - v7);
  v8 = type metadata accessor for SmallBackgroundView(0);
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000CA9F0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  v17 = a1;
  sub_10004CFF8(&v40 - v15);
  sub_1000CA9E0();
  sub_10004ED1C(&qword_10011F770, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  LOBYTE(a1) = sub_1000CAC90();
  v18 = *(v11 + 8);
  v18(v14, v10);
  v18(v16, v10);
  if (a1)
  {
    sub_10004EA24(v17, &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SmallBackgroundView);
    v19 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v20 = swift_allocObject();
    sub_10004E6F0(&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    v21 = v46;
    *v46 = sub_10004ECA4;
    v21[1] = v20;
    swift_storeEnumTagMultiPayload();
    sub_100019558(&qword_10011F788, &qword_1000D6288);
    sub_10001B1BC(&qword_10011F790, &qword_10011F768, &qword_1000D6238, &protocol conformance descriptor for TupleView<A>);
    sub_10001B1BC(&qword_10011F798, &qword_10011F788, &qword_1000D6288, &protocol conformance descriptor for GeometryReader<A>);
    return sub_1000CA1B0();
  }

  else
  {
    v40 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = v46;
    sub_10004CFF8(v16);
    sub_1000CA9E0();
    v24 = sub_1000CAC90();
    v18(v14, v10);
    v18(v16, v10);
    if (v24)
    {
      v25 = sub_1000CA580();
      v26 = v17;
      v27 = v40;
      v28 = v45;
    }

    else
    {
      v26 = v17;
      v28 = v45;
      if (*v17)
      {
        v29 = *v17;
        v30 = sub_1000CA610();
      }

      else
      {
        v30 = sub_1000CA590();
      }

      v25 = v30;
      v27 = v40;
    }

    sub_10004EA24(v26, v27, type metadata accessor for SmallBackgroundView);
    v31 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v32 = swift_allocObject();
    sub_10004E6F0(v27, v32 + v31);
    v33 = *(v26 + 16);
    KeyPath = swift_getKeyPath();
    v35 = v43;
    *v43 = KeyPath;
    sub_100019558(&qword_10011EE58, &qword_1000D6600);
    swift_storeEnumTagMultiPayload();
    v36 = v42;
    *(v35 + *(v41 + 20)) = v33;
    sub_10004EA24(v35, v36, type metadata accessor for Scrim);
    v37 = v44;
    *v44 = v25;
    *(v37 + 8) = sub_10004F364;
    *(v37 + 16) = v32;
    v38 = sub_100019558(&qword_10011F780, &qword_1000D6280);
    sub_10004EA24(v36, v37 + *(v38 + 64), type metadata accessor for Scrim);
    v39 = v33;
    swift_retain_n();
    swift_retain_n();
    sub_10004EA8C(v36);

    sub_10002DFB4(v37, v23, &qword_10011F768, &qword_1000D6238);
    swift_storeEnumTagMultiPayload();
    sub_100019558(&qword_10011F788, &qword_1000D6288);
    sub_10001B1BC(&qword_10011F790, &qword_10011F768, &qword_1000D6238, &protocol conformance descriptor for TupleView<A>);
    sub_10001B1BC(&qword_10011F798, &qword_10011F788, &qword_1000D6288, &protocol conformance descriptor for GeometryReader<A>);
    sub_1000CA1B0();

    sub_100031844(v37, &qword_10011F768, &qword_1000D6238);
    return sub_10004EA8C(v35);
  }
}

uint64_t sub_10004D8EC@<X0>(uint64_t *a1@<X8>)
{
  v86 = sub_100019558(&qword_10011F7A0, &qword_1000D6290);
  __chkstk_darwin(v86);
  v88 = &v71 - v5;
  v87 = sub_100019558(&qword_10011F7A8, &qword_1000D6298);
  __chkstk_darwin(v87);
  v74 = &v71 - v6;
  v7 = sub_1000CA9F0();
  *&v82 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  *&v81 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v80 = &v71 - v10;
  v11 = sub_100019558(&qword_10011F1E8, &unk_1000D62A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v71 - v12;
  v77 = sub_1000CA640();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_100019558(&qword_10011F7B0, &qword_1000D6CC0);
  __chkstk_darwin(v78);
  v79 = &v71 - v16;
  v89 = sub_100019558(&qword_10011F7B8, &qword_1000D62B0);
  __chkstk_darwin(v89);
  v84 = &v71 - v17;
  v85 = sub_100019558(&qword_10011F7C0, &qword_1000D62B8);
  __chkstk_darwin(v85);
  v83 = &v71 - v18;
  v19 = sub_1000C9DA0();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v71 - v24;
  v26 = *(v3 + 8);
  if (v26)
  {
    v72 = v7;
    v75 = a1;
    type metadata accessor for SmallBackgroundView(0);
    v27 = v26;
    v28 = v3;
    v29 = v27;
    sub_10004E81C(v25);
    sub_1000C9D90();
    sub_10004ED1C(&qword_10011F7C8, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    v30 = sub_1000CB1F0();
    v31 = *(v20 + 8);
    v31(v23, v19);
    v31(v25, v19);
    if ((v30 & 1) == 0)
    {
      v73 = v29;
      v34 = v28;
      if (*(v28 + 56))
      {
        v35 = v73;
      }

      else
      {
        sub_10004E524();
        v35 = sub_1000CB130();
      }

      v36 = v84;
      v37 = v72;
      v84 = v35;
      sub_1000CA620();
      v38 = v76;
      v39 = v77;
      (*(v76 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v77);
      sub_1000CA6A0();

      (*(v38 + 8))(v15, v39);
      sub_1000CAA00();
      v40 = sub_1000CAA10();
      (*(*(v40 - 8) + 56))(v13, 0, 1, v40);
      v41 = v79;
      sub_1000CA690();

      sub_100031844(v13, &qword_10011F1E8, &unk_1000D62A0);
      v42 = v41 + *(sub_100019558(&qword_10011F1F0, &qword_1000D62C0) + 36);
      *v42 = 0;
      *(v42 + 8) = 257;
      sub_1000CA7A0();
      sub_1000C9CC0();
      v43 = (v41 + *(v78 + 36));
      v44 = v91;
      *v43 = v90;
      v43[1] = v44;
      v43[2] = v92;
      v45 = v80;
      sub_10004CFF8(v80);
      v46 = v81;
      sub_1000CA9E0();
      v47 = sub_1000CA9D0();
      v48 = *(v82 + 8);
      v48(v46, v37);
      v48(v45, v37);
      if (v47)
      {
        v49 = 8.0;
      }

      else
      {
        v49 = 0.0;
      }

      v50 = *(v89 + 36);
      *&v82 = v34;
      v51 = v36;
      v52 = &v36[v50];
      v53 = *(sub_1000C9DB0() + 20);
      v54 = enum case for RoundedCornerStyle.continuous(_:);
      v55 = sub_1000CA060();
      (*(*(v55 - 8) + 104))(v52 + v53, v54, v55);
      *v52 = v49;
      v52[1] = v49;
      *(v52 + *(sub_100019558(&qword_10011F7D0, &qword_1000D62C8) + 36)) = 256;
      sub_10004ED64(v41, v51);
      sub_10004CFF8(v45);
      sub_1000CA9E0();
      sub_10004ED1C(&qword_10011F770, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
      LOBYTE(v52) = sub_1000CAC90();
      v48(v46, v37);
      v48(v45, v37);
      if (v52)
      {
        sub_10002DFB4(v51, v88, &qword_10011F7B8, &qword_1000D62B0);
        swift_storeEnumTagMultiPayload();
        sub_10004EDD4();
        sub_10004EE8C();
        sub_1000CA1B0();
        v56 = v73;
      }

      else
      {
        sub_1000CA580();
        v57 = sub_1000CA730();
        v59 = v58;
        sub_1000CA580();
        v60 = sub_1000CA730();
        v62 = v61;
        sub_1000CA580();
        sub_1000CA5D0();

        v63 = sub_1000CA730();
        v65 = v64;
        sub_100019558(&unk_100120710, &qword_1000D62D0);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_1000D45E0;
        *(v66 + 32) = v57;
        *(v66 + 40) = v59;
        *(v66 + 48) = v60;
        *(v66 + 56) = v62;
        *(v66 + 64) = v63;
        *(v66 + 72) = v65;

        sub_1000CA740();
        sub_1000CA7B0();
        sub_1000CA7C0();
        sub_1000C9D20();
        v67 = v93;
        v82 = v94;
        v81 = v95;

        v68 = v74;
        sub_10002DFB4(v51, v74, &qword_10011F7B8, &qword_1000D62B0);
        v69 = v68 + *(v87 + 36);
        *v69 = v67;
        *(v69 + 24) = v81;
        *(v69 + 8) = v82;
        sub_10002DFB4(v68, v88, &qword_10011F7A8, &qword_1000D6298);
        swift_storeEnumTagMultiPayload();
        sub_10004EDD4();
        sub_10004EE8C();
        v56 = v73;
        sub_1000CA1B0();
        sub_100031844(v68, &qword_10011F7A8, &qword_1000D6298);
      }

      sub_100031844(v51, &qword_10011F7B8, &qword_1000D62B0);
      sub_10004EFD0();
      v70 = sub_1000CA700();

      result = v70;
      a1 = v75;
      goto LABEL_17;
    }

    a1 = v75;
  }

  if (qword_10011CF98 != -1)
  {
    swift_once();
  }

  v32 = qword_1001347D8;
  *&v90 = sub_1000CA610();
  result = sub_1000CA700();
LABEL_17:
  *a1 = result;
  return result;
}

uint64_t sub_10004E4B0@<X0>(void *a1@<X8>)
{
  sub_1000C9CD0();
  sub_1000C9CD0();
  result = sub_10004D8EC(&v3);
  *a1 = v3;
  return result;
}

double sub_10004E524()
{
  v1 = sub_1000C9FA0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SmallBackgroundView(0) + 36));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_1000CB050();
  v8 = sub_1000CA220();
  sub_1000C9BF0();

  sub_1000C9F90();
  swift_getAtKeyPath();
  sub_10003FC2C(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_10004E680@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000CA780();
  a1[1] = v3;
  v4 = sub_100019558(&qword_10011F758, &qword_1000D6228);
  return sub_10004D200(v1, a1 + *(v4 + 44));
}

uint64_t sub_10004E6F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallBackgroundView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10004E754(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Scrim(0) + 20));
  if (v3)
  {
    v4 = v3;
    [v4 ts_luminance];
    v6 = v5;
    sub_10001F934(0, &unk_10011E610, UIColor_ptr);
    sub_1000CB120();
    if (v7 >= v6)
    {
      v8 = sub_1000CA590();
    }

    else
    {
      sub_1000CA580();
      v8 = sub_1000CA5D0();
    }
  }

  else
  {
    v8 = sub_1000CA590();
  }

  *a1 = v8;
}

uint64_t sub_10004E81C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000C9FA0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100019558(&qword_10011F778, &unk_1000D6240);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10002DFB4(v2, &v14 - v9, &qword_10011F778, &unk_1000D6240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000C9DA0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1000CB050();
    v13 = sub_1000CA220();
    sub_1000C9BF0();

    sub_1000C9F90();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10004EA24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004EA8C(uint64_t a1)
{
  v2 = type metadata accessor for Scrim(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004EAE8()
{
  v1 = type metadata accessor for SmallBackgroundView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[8];
  sub_100019558(&qword_10011F778, &unk_1000D6240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1000C9DA0();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_10003FC2C(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v8 = v1[10];
  sub_100019558(&qword_10011EE58, &qword_1000D6600);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1000CA9F0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004ED1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004ED64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100019558(&qword_10011F7B0, &qword_1000D6CC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004EDD4()
{
  result = qword_10011F7D8;
  if (!qword_10011F7D8)
  {
    sub_1000195A0(&qword_10011F7A8, &qword_1000D6298);
    sub_10004EE8C();
    sub_10001B1BC(&qword_10011F7F8, &qword_10011F800, &qword_1000D62D8, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F7D8);
  }

  return result;
}

unint64_t sub_10004EE8C()
{
  result = qword_10011F7E0;
  if (!qword_10011F7E0)
  {
    sub_1000195A0(&qword_10011F7B8, &qword_1000D62B0);
    sub_10004EF44();
    sub_10001B1BC(&qword_10011F7F0, &qword_10011F7D0, &qword_1000D62C8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F7E0);
  }

  return result;
}

unint64_t sub_10004EF44()
{
  result = qword_10011F7E8;
  if (!qword_10011F7E8)
  {
    sub_1000195A0(&qword_10011F7B0, &qword_1000D6CC0);
    sub_100048808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F7E8);
  }

  return result;
}

unint64_t sub_10004EFD0()
{
  result = qword_10011F808;
  if (!qword_10011F808)
  {
    sub_1000195A0(&qword_10011F7C0, &qword_1000D62B8);
    sub_10004EDD4();
    sub_10004EE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F808);
  }

  return result;
}

uint64_t sub_10004F070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100019558(&qword_10011ED68, &unk_1000D64F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10004F158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100019558(&qword_10011ED68, &unk_1000D64F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_10004F21C(uint64_t a1)
{
  sub_10004CF28(319, &qword_10011EDE0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10004CED0(319, &qword_10011E608, &unk_10011E610, UIColor_ptr);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

Swift::OpaquePointer_optional __swiftcall TodayGroupingService.bestOf(feedItems:limit:)(Swift::OpaquePointer feedItems, Swift::Int limit)
{
  rawValue = feedItems._rawValue;
  v4 = sub_100019558(&qword_10011F8B0, &qword_1000D6340);
  __chkstk_darwin(v4 - 8);
  v6 = &v62 - v5;
  v7 = sub_100019558(&qword_10011F8B8, &qword_1000D6348);
  __chkstk_darwin(v7 - 8);
  v9 = &v62 - v8;
  v10 = sub_1000CA8E0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v62 - v15;
  v17 = sub_100019558(&unk_10011F8C0, &qword_1000D6350);
  __chkstk_darwin(v17 - 8);
  v19 = &v62 - v18;
  v71 = sub_1000CA8F0();
  __chkstk_darwin(v71);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (limit < 0)
  {
    v24 = NTSharedLog();
    if (!v24)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v38 = v24;
    sub_1000CB050();
    sub_100019558(&unk_10011E820, &unk_1000D5240);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1000D3410;
    *(v39 + 56) = &type metadata for Int;
    *(v39 + 64) = &protocol witness table for Int;
    *(v39 + 32) = limit;
    sub_1000C9BE0("Not using Best Of because the limit (%ld) is invalid", v62);

    goto LABEL_34;
  }

  v68 = v9;
  v69 = v20;
  v70 = v22;
  v67 = v2;
  v23 = [*(v2 + 16) possiblyUnfetchedAppConfiguration];
  if (([v23 respondsToSelector:"todayWidgetForYouBestOfEnabled"] & 1) == 0 || !objc_msgSend(v23, "todayWidgetForYouBestOfEnabled"))
  {
    v24 = NTSharedLog();
    if (!v24)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v36 = v24;
    v37 = sub_1000CB060();
    sub_1000C9BE0("Not using Best Of because it's disabled in the app config", 57, 2, &_mh_execute_header, v36, v37, _swiftEmptyArrayStorage);
    swift_unknownObjectRelease();

LABEL_34:
    v24 = 0;
    goto LABEL_46;
  }

  v24 = NTSharedLog();
  if (!v24)
  {
LABEL_45:
    __break(1u);
    __break(1u);
    goto LABEL_46;
  }

  v26 = v24;
  v27 = sub_1000CB060();
  sub_1000C9BE0("Using Best Of because it's enabled in the app config", 52, 2, &_mh_execute_header, v26, v27, _swiftEmptyArrayStorage);

  v65 = v19;
  v66 = v6;
  if (rawValue >> 62)
  {
    v28 = sub_1000CB3A0();
  }

  else
  {
    v28 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v63 = limit;
  v64 = v23;
  v72 = v10;
  v62 = v14;
  if (v28)
  {
    v75[0] = _swiftEmptyArrayStorage;
    v24 = sub_100050160(0, v28 & ~(v28 >> 63), 0);
    if ((v28 & 0x8000000000000000) == 0)
    {
      v29 = 0;
      v30 = rawValue;
      v31 = rawValue & 0xC000000000000001;
      v32 = v75[0];
      do
      {
        if (v31)
        {
          v33 = sub_1000CB2A0();
        }

        else
        {
          v33 = *(v30 + 8 * v29 + 32);
          swift_unknownObjectRetain();
        }

        if (![v33 scoreProfile])
        {
          [objc_allocWithZone(FCFeedPersonalizedItemScoreProfile) init];
        }

        sub_1000CA8C0();
        v75[0] = v32;
        v35 = *(v32 + 16);
        v34 = *(v32 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_100050160((v34 > 1), v35 + 1, 1);
          v32 = v75[0];
        }

        ++v29;
        *(v32 + 16) = v35 + 1;
        (*(v11 + 32))(v32 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v35, v16, v72);
        v30 = rawValue;
      }

      while (v28 != v29);
      v23 = v64;
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_23:
  v40 = v71;
  sub_10002DE48(v67 + 24, v75);
  rawValue = sub_10001E2E4(v75, v75[3]);
  v41 = enum case for FeedHeadlineScoringContext.forYouGroup(_:);
  v42 = sub_1000CA900();
  v43 = v70;
  (*(*(v42 - 8) + 104))(v70, v41, v42);
  (*(v69 + 104))(v43, enum case for FeedScoringContext.headline(_:), v40);
  if ([v23 respondsToSelector:"todayWidgetForYouBundleArticleQuota"])
  {
    [v23 todayWidgetForYouBundleArticleQuota];
  }

  v44 = sub_1000C9620();
  (*(*(v44 - 8) + 56))(v68, 1, 1, v44);
  v45 = v65;
  sub_1000CA910();
  v46 = sub_1000CA920();
  (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  if ([v23 respondsToSelector:"todayWidgetForYouMaxInaccessible"])
  {
    [v23 todayWidgetForYouMaxInaccessible];
  }

  if ([v23 respondsToSelector:{"todayWidgetForYouMaxEvergreen", v62}])
  {
    [v23 todayWidgetForYouMaxEvergreen];
  }

  if ([v23 respondsToSelector:"todayWidgetForYouMaxPublisherOccurrences"])
  {
    [v23 todayWidgetForYouMaxPublisherOccurrences];
  }

  sub_100050BD0(_swiftEmptyArrayStorage);
  sub_10004FE10(v23, v66);
  if ([v23 respondsToSelector:"todayWidgetForYouMaxAIGArticles"])
  {
    [v23 todayWidgetForYouMaxAIGArticles];
  }

  v47 = v66;
  v48 = v70;
  v49 = v65;
  v50 = sub_1000C9AF0();
  v51 = (v69 + 8);
  v52 = v50;

  sub_100031844(v47, &qword_10011F8B0, &qword_1000D6340);
  sub_100031844(v49, &unk_10011F8C0, &qword_1000D6350);
  (*v51)(v48, v71);
  v53 = *(v52 + 16);
  if (v53)
  {
    v74 = _swiftEmptyArrayStorage;
    sub_1000CB310();
    v55 = *(v11 + 16);
    v54 = v11 + 16;
    rawValue = v55;
    v56 = *(v54 + 64);
    v71 = v52;
    v57 = v52 + ((v56 + 32) & ~v56);
    v58 = *(v54 + 56);
    v59 = v72;
    v60 = v62;
    do
    {
      (rawValue)(v60, v57, v59);
      sub_1000CA8D0();
      (*(v54 - 8))(v60, v59);
      sub_1000CB2F0();
      sub_1000CB320();
      sub_1000CB330();
      sub_1000CB300();
      v57 += v58;
      --v53;
    }

    while (v53);
    swift_unknownObjectRelease();

    v61 = v74;
  }

  else
  {
    swift_unknownObjectRelease();

    v61 = _swiftEmptyArrayStorage;
  }

  sub_10001E37C(v75);
  v24 = v61;
LABEL_46:
  result.value._rawValue = v24;
  result.is_nil = v25;
  return result;
}

uint64_t sub_10004FE10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = NewsCoreUserDefaults();
  v5 = [v4 BOOLForKey:FCWidgetForYouTopicDiversificationDisabledSharedPreferenceKey];

  if (v5)
  {
    sub_1000CA930();
  }

  else
  {
    if ([a1 respondsToSelector:"todayWidgetForYouTopicDiversityThreshold"])
    {
      [a1 todayWidgetForYouTopicDiversityThreshold];
    }

    if ([a1 respondsToSelector:"todayWidgetForYouTopicDiversityWindowSize"])
    {
      [a1 todayWidgetForYouTopicDiversityWindowSize];
    }

    result = [a1 respondsToSelector:"todayWidgetForYouTopicDiversityAllowedTopicIDs"];
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v7 = [a1 todayWidgetForYouTopicDiversityAllowedTopicIDs];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1000CAED0();
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    sub_10004543C(v9);

    sub_1000CA940();
  }

  v10 = sub_1000CA950();
  v11 = *(*(v10 - 8) + 56);

  return v11(a2, 0, 1, v10);
}

uint64_t TodayGroupingService.deinit()
{
  swift_unknownObjectRelease();
  sub_10001E37C((v0 + 24));
  return v0;
}

uint64_t TodayGroupingService.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  sub_10001E37C((v0 + 24));

  return swift_deallocClassInstance();
}

char *sub_1000500E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000506A4(a1, a2, a3, *v3, &qword_10011FA20, &qword_1000D6418);
  *v3 = result;
  return result;
}

char *sub_100050110(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000506A4(a1, a2, a3, *v3, &qword_10011FA18, &qword_1000D6410);
  *v3 = result;
  return result;
}

char *sub_100050140(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100050224(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100050160(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000504C8(a1, a2, a3, *v3, &unk_10011FA40, &qword_1000D6438, &type metadata accessor for FeedScoredItem);
  *v3 = result;
  return result;
}

char *sub_1000501A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000506A4(a1, a2, a3, *v3, &qword_10011FA10, &qword_1000D6408);
  *v3 = result;
  return result;
}

char *sub_1000501D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000506A4(a1, a2, a3, *v3, &qword_10011FA08, &qword_1000D6400);
  *v3 = result;
  return result;
}

char *sub_100050204(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100050790(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100050224(char *result, int64_t a2, char a3, char *a4)
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
    sub_100019558(&qword_10011E830, &qword_1000D4678);
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

void *sub_100050380(void *result, int64_t a2, char a3, void *a4)
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
    sub_100019558(&unk_100120640, &unk_1000D7DF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100019558(&unk_10011F9F0, &qword_1000D63F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000504C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100019558(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1000506A4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100019558(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_100050790(char *result, int64_t a2, char a3, char *a4)
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
    sub_100019558(&qword_10011FA00, &qword_1000D63F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t (*sub_1000508B0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000CB2A0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_100050930;
  }

  __break(1u);
  return result;
}

uint64_t *sub_100050938(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000CB2A0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_100051440;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000509B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100019558(&qword_10011F998, &unk_1000D63A0);
    v3 = sub_1000CB3D0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10003EE0C();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_100050AA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100019558(&qword_10011F988, &unk_1000D6390);
    v3 = sub_1000CB3D0();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002DFB4(v4, &v11, &qword_10011F990, &qword_1000D4920);
      v5 = v11;
      result = sub_10003EE0C();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100050CF0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_100050BD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100019558(&qword_10011FA38, &qword_1000D6430);
    v3 = sub_1000CB3D0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10003D8BC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

_OWORD *sub_100050CF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100050D00(uint64_t a1)
{
  v2 = sub_100019558(&qword_10011F9D0, &qword_1000D63E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100019558(&qword_10011F9D8, &qword_1000D63E8);
    v7 = sub_1000CB3D0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10002DFB4(v9, v5, &qword_10011F9D0, &qword_1000D63E0);
      result = sub_10003DBCC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1000C9480();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_100050EE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100019558(&qword_10011F9B8, &qword_1000D63C8);
    v3 = sub_1000CB3D0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      v9 = v8;
      v10 = v7;

      result = sub_10003D8BC(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 16 * result);
      *v14 = v8;
      v14[1] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_100051000(uint64_t a1)
{
  v2 = sub_100019558(&qword_10011F9C0, &qword_1000D63D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100019558(&qword_10011F9C8, &qword_1000D63D8);
    v7 = sub_1000CB3D0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = v8;

    while (1)
    {
      sub_10002DFB4(v9, v5, &qword_10011F9C0, &qword_1000D63D0);
      result = sub_10003DBCC(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = sub_1000C9480();
      v15 = *(v14 - 8);
      v16 = *(v15 + 32);
      v17 = *(v15 + 72) * v12;
      v16(v13 + v17, v5, v14);
      result = (v16)(v7[7] + v17, &v5[v22], v14);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v21;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10005120C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100019558(&qword_10011FA28, &qword_1000D6420);
    v3 = sub_1000CB3D0();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002DFB4(v4, v13, &qword_10011FA30, &qword_1000D6428);
      result = sub_10003DC64(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100050CF0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_100051348(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100019558(&unk_10011F9A0, &unk_1000D63B0);
    v3 = sub_1000CB3D0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_10003DCA8(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void sub_100051444(int a1, id a2)
{
  v3 = [a2 todayResults];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 banner];

    if (v5)
    {
      v6 = (v2 + OBJC_IVAR____TtC10NewsToday223TodayBannerEventTracker_store);
      sub_10001E2E4((v2 + OBJC_IVAR____TtC10NewsToday223TodayBannerEventTracker_store), *(v2 + OBJC_IVAR____TtC10NewsToday223TodayBannerEventTracker_store + 24));
      v7 = [v5 identifier];
      v8 = sub_1000CAD00();
      v10 = v9;

      v11 = sub_10002B624(v8, v10);
      v13 = v12;
      v15 = v14;

      if (v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11;
      }

      v17 = v16 + 1;
      if (v16 == -1)
      {
        __break(1u);
      }

      else
      {
        if (v15)
        {
          v18 = 0;
        }

        else
        {
          v18 = v13;
        }

        sub_10001E2E4(v6, v6[3]);
        v19 = [v5 identifier];
        v20 = sub_1000CAD00();
        v22 = v21;

        sub_10002B6C8(v20, v22, v17, v18);

        if (qword_10011CFD8 == -1)
        {
          goto LABEL_11;
        }
      }

      swift_once();
LABEL_11:
      v23 = sub_1000C9C20();
      sub_10001A5B4(v23, static Logger.todayWidgetBanner);
      v30 = v5;
      v24 = sub_1000C9C00();
      v25 = sub_1000CB060();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 134218240;
        *(v26 + 4) = v17;
        *(v26 + 12) = 2048;
        *(v26 + 14) = [v30 numberOfAppearancesToHide];

        _os_log_impl(&_mh_execute_header, v24, v25, "TodayBannerEventTracker banner appeared, appearances=%lu numberOfAppearancesToHide=%llu", v26, 0x16u);
      }

      else
      {
      }

      goto LABEL_18;
    }
  }

  if (qword_10011CFD8 != -1)
  {
    swift_once();
  }

  v27 = sub_1000C9C20();
  sub_10001A5B4(v27, static Logger.todayWidgetBanner);
  v30 = sub_1000C9C00();
  v28 = sub_1000CB060();
  if (os_log_type_enabled(v30, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v30, v28, "TodayBannerEventTracker will ignore appearance when there is no banner", v29, 2u);
  }

LABEL_18:
}

void sub_100051860(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100019558(&unk_10011E590, &unk_1000D5230);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v61 - v11;
  __chkstk_darwin(v10);
  v14 = &v61 - v13;
  v15 = [a3 todayResults];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 banner];

    if (v17)
    {
      sub_10002DFB4(a2, v14, &unk_10011E590, &unk_1000D5230);
      v18 = sub_1000C9480();
      v19 = *(v18 - 8);
      v20 = *(v19 + 48);
      if (v20(v14, 1, v18) == 1)
      {
        sub_100031844(v14, &unk_10011E590, &unk_1000D5230);
LABEL_29:
        if (qword_10011CFD8 != -1)
        {
          swift_once();
        }

        v57 = sub_1000C9C20();
        sub_10001A5B4(v57, static Logger.todayWidgetBanner);
        v58 = sub_1000C9C00();
        v59 = sub_1000CB060();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v58, v59, "TodayBannerEventTracker will not track engagement when actionURL is unrelated", v60, 2u);
        }

LABEL_34:
        return;
      }

      v62 = v3;
      v63 = sub_1000C93C0();
      v64 = v25;
      v26 = *(v19 + 8);
      v26(v14, v18);
      v27 = [v17 actionURL];
      if (v27)
      {
        v28 = v27;
        sub_1000C9440();

        v29 = 0;
      }

      else
      {
        v29 = 1;
      }

      (*(v19 + 56))(v9, v29, 1, v18);
      sub_10001E440(v9, v12);
      if (v20(v12, 1, v18) == 1)
      {

        sub_100031844(v12, &unk_10011E590, &unk_1000D5230);
        goto LABEL_29;
      }

      v30 = sub_1000C93C0();
      v32 = v31;
      v26(v12, v18);
      v33 = v64;
      v67[0] = v63;
      v67[1] = v64;
      v65 = v30;
      v66 = v32;
      sub_100027B64();
      LOBYTE(v30) = sub_1000CB1D0();

      if ((v30 & 1) == 0)
      {

        goto LABEL_29;
      }

      v34 = (v62 + OBJC_IVAR____TtC10NewsToday223TodayBannerEventTracker_store);
      sub_10001E2E4((v62 + OBJC_IVAR____TtC10NewsToday223TodayBannerEventTracker_store), *(v62 + OBJC_IVAR____TtC10NewsToday223TodayBannerEventTracker_store + 24));
      v35 = [v17 identifier];
      v36 = sub_1000CAD00();
      v38 = v37;

      v39 = sub_10002B624(v36, v38);
      v41 = v40;
      v43 = v42;

      if (v43)
      {
        v44 = 0;
      }

      else
      {
        v44 = v41;
      }

      v45 = v44 + 1;
      if (v44 == -1)
      {
        __break(1u);
      }

      else
      {
        if (v43)
        {
          v46 = 0;
        }

        else
        {
          v46 = v39;
        }

        sub_10001E2E4(v34, v34[3]);
        v47 = [v17 identifier];
        v48 = sub_1000CAD00();
        v50 = v49;

        sub_10002B6C8(v48, v50, v46, v45);

        if (qword_10011CFD8 == -1)
        {
LABEL_26:
          v51 = sub_1000C9C20();
          sub_10001A5B4(v51, static Logger.todayWidgetBanner);

          v17 = v17;
          v52 = sub_1000C9C00();
          v53 = sub_1000CB060();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v67[0] = v55;
            *v54 = 136315650;
            v56 = sub_10009A0C0(v63, v33, v67);

            *(v54 + 4) = v56;
            *(v54 + 12) = 2048;
            *(v54 + 14) = v45;
            *(v54 + 22) = 2048;
            *(v54 + 24) = [v17 numberOfTapsToHide];

            _os_log_impl(&_mh_execute_header, v52, v53, "TodayBannerEventTracker banner engaged, url=%s engagements=%lu numberOfTapsToHide=%llu", v54, 0x20u);
            sub_10001E37C(v55);
          }

          else
          {
          }

          if (v45 >= [v17 numberOfTapsToHide])
          {
            sub_1000CAAA0();
            sub_1000CAA90();
            sub_1000CAA70();
          }

          goto LABEL_34;
        }
      }

      swift_once();
      goto LABEL_26;
    }
  }

  if (qword_10011CFD8 != -1)
  {
    swift_once();
  }

  v21 = sub_1000C9C20();
  sub_10001A5B4(v21, static Logger.todayWidgetBanner);
  v64 = sub_1000C9C00();
  v22 = sub_1000CB060();
  if (os_log_type_enabled(v64, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v64, v22, "TodayBannerEventTracker will ignore engagement when there is no banner", v23, 2u);
  }

  v24 = v64;
}

uint64_t sub_100052444(const void *a1)
{
  v2 = _Block_copy(a1);
  v2[2]();
  _Block_release(v2);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100052538()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100052578()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001840C;

  return sub_100052444(v2);
}

uint64_t sub_100052624(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100053060;

  return v6();
}

uint64_t sub_100052710()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100053060;

  return sub_100052624(v2, v3, v4);
}

uint64_t sub_1000527D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10001840C;

  return v7();
}

uint64_t sub_1000528B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000528F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100053060;

  return sub_1000527D0(a1, v4, v5, v6);
}

uint64_t sub_1000529C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100019558(&unk_10011FAE0, &qword_1000D6468);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10002DFB4(a3, v23 - v10, &unk_10011FAE0, &qword_1000D6468);
  v12 = sub_1000CAFC0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100031844(v11, &unk_10011FAE0, &qword_1000D6468);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1000CAFB0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1000CAFA0();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1000CAD60() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100031844(a3, &unk_10011FAE0, &qword_1000D6468);

    return v21;
  }

LABEL_8:
  sub_100031844(a3, &unk_10011FAE0, &qword_1000D6468);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100052CC0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100052DB8;

  return v6(a1);
}

uint64_t sub_100052DB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100052EB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100052EE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100053060;

  return sub_100052CC0(a1, v4);
}

uint64_t sub_100052FA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001840C;

  return sub_100052CC0(a1, v4);
}

uint64_t sub_100053078(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_100019558(&qword_10011ED68, &unk_1000D64F0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for Item(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for TodayContent(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = type metadata accessor for LayoutContext(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_100053244(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
    return result;
  }

  v8 = sub_100019558(&qword_10011ED68, &unk_1000D64F0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for Item(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = type metadata accessor for TodayContent(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = type metadata accessor for LayoutContext(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

void sub_100053420(uint64_t a1)
{
  sub_100053524(319, &qword_10011EDD8, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_100053524(319, &qword_10011FB68, &type metadata for EdgeInsets);
    if (v2 <= 0x3F)
    {
      sub_10003F0D0(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Item(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for TodayContent(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for LayoutContext(319);
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

void sub_100053524(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1000C9C60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10005358C()
{
  v1 = sub_1000C9FA0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_1000CB050();
    v6 = sub_1000CA220();
    sub_1000C9BF0();

    sub_1000C9F90();
    swift_getAtKeyPath();
    sub_10003FC2C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1000536D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000C9FA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100019558(&qword_10011EE58, &qword_1000D6600);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SmallContentView(0);
  sub_10002DFB4(v1 + *(v10 + 24), v9, &qword_10011EE58, &qword_1000D6600);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000CA9F0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1000CB050();
    v13 = sub_1000CA220();
    sub_1000C9BF0();

    sub_1000C9F90();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1000538DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_1000CA200();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v47 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C9DA0();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v38);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Item(0);
  __chkstk_darwin(v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100019558(&unk_10011E590, &unk_1000D5230);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v39 = sub_100019558(&qword_10011FBA8, &qword_1000D6570);
  __chkstk_darwin(v39);
  v16 = (&v37 - v15);
  v17 = sub_100019558(&qword_10011FBB0, &qword_1000D6578);
  v40 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  v20 = sub_100019558(&qword_10011FBB8, &qword_1000D6580);
  v41 = *(v20 - 8);
  v42 = v20;
  __chkstk_darwin(v20);
  v22 = &v37 - v21;
  *v16 = sub_1000CA7A0();
  v16[1] = v23;
  sub_100019558(&qword_10011FBC0, &qword_1000D6588);
  sub_100054050(v2);
  v24 = type metadata accessor for SmallContentView(0);
  v25 = *(v24 + 28);
  v46 = v2;
  sub_100059008(v2 + v25, v11, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000562C0(v11, type metadata accessor for Item);
    v26 = sub_1000C9480();
    (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  }

  else
  {
    sub_100059C94(v11, v8, type metadata accessor for Item.Headline);
    sub_10002DFB4(&v8[*(v38 + 24)], v14, &unk_10011E590, &unk_1000D5230);
    sub_1000562C0(v8, type metadata accessor for Item.Headline);
  }

  v27 = sub_10001B1BC(&qword_10011FBC8, &qword_10011FBA8, &qword_1000D6570, &protocol conformance descriptor for ZStack<A>);
  v28 = v39;
  sub_1000CA430();
  sub_100031844(v14, &unk_10011E590, &unk_1000D5230);
  sub_100031844(v16, &qword_10011FBA8, &qword_1000D6570);
  v29 = v46 + *(v24 + 36);
  if (*(v29 + *(type metadata accessor for LayoutContext(0) + 44)) == 1)
  {
    v30 = v43;
    sub_1000C9D90();
    v31 = v45;
  }

  else
  {
    v51 = _swiftEmptyArrayStorage;
    sub_100056320(&qword_10011F7C8, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    sub_100019558(&qword_10011FBD0, &qword_1000D6590);
    sub_10001B1BC(&qword_10011FBD8, &qword_10011FBD0, &qword_1000D6590, &protocol conformance descriptor for [A]);
    v31 = v45;
    v30 = v43;
    sub_1000CB200();
  }

  v51 = v28;
  v52 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000CA530();
  (*(v44 + 8))(v30, v31);
  (*(v40 + 8))(v19, v17);
  v33 = v47;
  v34 = sub_1000CA1F0();
  __chkstk_darwin(v34);
  sub_1000CA7A0();
  v51 = v17;
  v52 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v35 = v42;
  sub_1000CA4D0();
  (*(v49 + 8))(v33, v50);
  return (*(v41 + 8))(v22, v35);
}

uint64_t sub_100054050(uint64_t a1)
{
  v2 = sub_100019558(&qword_10011FBF8, &qword_1000D6640);
  __chkstk_darwin(v2);
  v4 = &v27[-v3];
  v5 = sub_100019558(&qword_10011FC00, &qword_1000D6648);
  v6 = __chkstk_darwin(v5 - 8);
  v29 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v27[-v8];
  v31 = sub_100019558(&qword_10011FC08, &qword_1000D6650);
  __chkstk_darwin(v31);
  v30 = &v27[-v10];
  v11 = sub_1000CA9F0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v27[-v16];
  if (sub_10005358C() & 1) != 0 || (sub_1000536D4(v17), sub_1000CA9E0(), v28 = sub_1000CA9D0(), v18 = *(v12 + 8), v18(v15, v11), v18(v17, v11), (v28))
  {
    v19 = sub_1000CA7A0();
    v20 = v30;
    *v30 = v19;
    *(v20 + 8) = v21;
    v22 = v20 + *(sub_100019558(&qword_10011FC18, &qword_1000D6658) + 44);
    *v9 = sub_1000C9FE0();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v23 = sub_100019558(&qword_10011FC20, &qword_1000D6660);
    sub_1000544C0(a1, &v9[*(v23 + 44)]);
    sub_100055408(&v32);
    v24 = v32;
    v25 = v29;
    sub_10002DFB4(v9, v29, &qword_10011FC00, &qword_1000D6648);
    sub_10002DFB4(v25, v22, &qword_10011FC00, &qword_1000D6648);
    *(v22 + *(sub_100019558(&qword_10011FC28, &qword_1000D6668) + 48)) = v24;

    sub_100031844(v9, &qword_10011FC00, &qword_1000D6648);

    sub_100031844(v25, &qword_10011FC00, &qword_1000D6648);
    sub_10002DFB4(v20, v4, &qword_10011FC08, &qword_1000D6650);
    swift_storeEnumTagMultiPayload();
    sub_10001B1BC(&qword_10011FC10, &qword_10011FC08, &qword_1000D6650, &protocol conformance descriptor for ZStack<A>);
    sub_1000CA1B0();
    return sub_100031844(v20, &qword_10011FC08, &qword_1000D6650);
  }

  else
  {
    sub_100055408(&v32);
    *v4 = v32;
    swift_storeEnumTagMultiPayload();
    sub_10001B1BC(&qword_10011FC10, &qword_10011FC08, &qword_1000D6650, &protocol conformance descriptor for ZStack<A>);
    return sub_1000CA1B0();
  }
}

uint64_t sub_1000544C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_100019558(&qword_10011FC30, &qword_1000D6670);
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v35 = (&v35 - v4);
  v36 = type metadata accessor for Item(0);
  __chkstk_darwin(v36);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CA9F0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  v14 = sub_100019558(&qword_10011FC38, &qword_1000D6678);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v35 - v18;
  sub_1000536D4(v13);
  sub_1000CA9E0();
  v20 = sub_1000CA9D0();
  v21 = *(v8 + 8);
  v21(v11, v7);
  v21(v13, v7);
  v22 = 1;
  if (v20)
  {
    v23 = type metadata accessor for SmallContentView(0);
    sub_100059008(a1 + *(v23 + 28), v6, type metadata accessor for Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1000562C0(v6, type metadata accessor for Item);
    v22 = 1;
    if (EnumCaseMultiPayload != 1)
    {
      v25 = sub_1000CA0D0();
      v26 = v35;
      *v35 = v25;
      *(v26 + 8) = 0;
      *(v26 + 16) = 1;
      v27 = sub_100019558(&qword_10011FC48, &qword_1000D6688);
      sub_1000548CC(v26 + *(v27 + 44));
      sub_10002DB04(v26, v19, &qword_10011FC30, &qword_1000D6670);
      v22 = 0;
    }
  }

  (*(v37 + 56))(v19, v22, 1, v38);
  v28 = sub_1000CA0D0();
  sub_100054EB0(&v40);
  v29 = v40;
  sub_10002DFB4(v19, v17, &qword_10011FC38, &qword_1000D6678);
  v30 = v39;
  sub_10002DFB4(v17, v39, &qword_10011FC38, &qword_1000D6678);
  v31 = sub_100019558(&qword_10011FC40, &qword_1000D6680);
  v32 = v30 + *(v31 + 48);
  *v32 = 0;
  *(v32 + 8) = 1;
  v33 = v30 + *(v31 + 64);
  *v33 = v28;
  *(v33 + 8) = 0;
  *(v33 + 16) = 1;
  *(v33 + 24) = v29;
  *(v33 + 32) = 0;
  *(v33 + 40) = 1;

  sub_100031844(v19, &qword_10011FC38, &qword_1000D6678);

  return sub_100031844(v17, &qword_10011FC38, &qword_1000D6678);
}

uint64_t sub_1000548CC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SmallBackgroundView(0);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100019558(&qword_10011FC50, &qword_1000D6690);
  v6 = v5 - 8;
  v7 = __chkstk_darwin(v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v21 - v11;
  __chkstk_darwin(v10);
  v14 = v21 - v13;
  sub_100054B1C(v4);
  sub_1000CA7A0();
  sub_1000C9DC0();
  sub_100059C94(v4, v12, type metadata accessor for SmallBackgroundView);
  v15 = &v12[*(v6 + 44)];
  v16 = v21[5];
  *(v15 + 4) = v21[4];
  *(v15 + 5) = v16;
  *(v15 + 6) = v21[6];
  v17 = v21[1];
  *v15 = v21[0];
  *(v15 + 1) = v17;
  v18 = v21[3];
  *(v15 + 2) = v21[2];
  *(v15 + 3) = v18;
  sub_10002DB04(v12, v14, &qword_10011FC50, &qword_1000D6690);
  sub_10002DFB4(v14, v9, &qword_10011FC50, &qword_1000D6690);
  sub_10002DFB4(v9, a1, &qword_10011FC50, &qword_1000D6690);
  v19 = a1 + *(sub_100019558(&qword_10011FC58, &qword_1000D6698) + 48);
  *v19 = 0;
  *(v19 + 8) = 1;
  sub_100031844(v14, &qword_10011FC50, &qword_1000D6690);
  return sub_100031844(v9, &qword_10011FC50, &qword_1000D6690);
}

uint64_t sub_100054B1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Item.Headline(0);
  v5 = __chkstk_darwin(v4);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = type metadata accessor for Item(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  v16 = *(type metadata accessor for SmallContentView(0) + 28);
  v37 = sub_1000BAD84();
  v17 = sub_1000BAF08();
  sub_100059008(v2 + v16, v15, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000562C0(v15, type metadata accessor for Item);
  }

  else
  {
    sub_100059C94(v15, v9, type metadata accessor for Item.Headline);
    v18 = &v9[*(v4 + 28)];
    v19 = *v18;
    v20 = *(v18 + 1);
    sub_100058BA0(*v18, v20);
    sub_1000562C0(v9, type metadata accessor for Item.Headline);
    if (v20)
    {

      goto LABEL_6;
    }
  }

  v19 = 0;
LABEL_6:
  sub_100059008(v2 + v16, v13, type metadata accessor for Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1000562C0(v13, type metadata accessor for Item);
    v38 = 0u;
    v39 = 0u;
  }

  else
  {
    sub_100059C94(v13, v7, type metadata accessor for Item.Headline);
    [*v7 thumbnailFocalFrame];
    v38 = v23;
    v39 = v22;
    v35 = v25;
    v36 = v24;
    sub_1000562C0(v7, type metadata accessor for Item.Headline);
    *&v26 = v38;
    *(&v26 + 1) = v35;
    v38 = v26;
    *&v26 = v39;
    *(&v26 + 1) = v36;
    v39 = v26;
  }

  v27 = EnumCaseMultiPayload == 1;
  KeyPath = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v30 = type metadata accessor for SmallBackgroundView(0);
  *(a1 + v30[10]) = v29;
  sub_100019558(&qword_10011EE58, &qword_1000D6600);
  swift_storeEnumTagMultiPayload();
  *a1 = v37;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19;
  v31 = v39;
  *(a1 + 40) = v38;
  *(a1 + 24) = v31;
  *(a1 + 56) = v27;
  v32 = v30[8];
  *(a1 + v32) = swift_getKeyPath();
  sub_100019558(&qword_10011F778, &unk_1000D6240);
  result = swift_storeEnumTagMultiPayload();
  v34 = a1 + v30[9];
  *v34 = KeyPath;
  *(v34 + 8) = 0;
  return result;
}

uint64_t sub_100054EB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1000CA640();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100019558(&qword_10011FC60, &qword_1000D66A0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = sub_100019558(&qword_10011FC68, &qword_1000D66A8);
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v28 = sub_100019558(&qword_10011FC70, &qword_1000D66B0);
  __chkstk_darwin(v28);
  v13 = v1 + *(type metadata accessor for SmallContentView(0) + 32);
  v14 = *(v13 + *(type metadata accessor for TodayContent(0) + 24));
  if (*(v14 + 16) && (v15 = *(type metadata accessor for Section(0) - 8), *(v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + 24) == 1))
  {
    v27 = a1;
    if (qword_10011CF58 != -1)
    {
      swift_once();
    }

    v16 = qword_100134748;
    sub_1000CA620();
    (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
    v17 = sub_1000CA6A0();

    (*(v4 + 8))(v6, v3);
    sub_1000CA7A0();
    sub_1000C9CC0();
    LOBYTE(v35[0]) = 0;
    *&v34[6] = v37;
    *&v34[22] = v38;
    *&v34[38] = v39;
    v18 = sub_1000CA5B0();
    KeyPath = swift_getKeyPath();
    *(v32 + 2) = *v34;
    *&v31 = v17;
    *(&v31 + 1) = 0x3FF0000000000000;
    LOWORD(v32[0]) = 0;
    *(&v32[1] + 2) = *&v34[16];
    *(&v32[2] + 2) = *&v34[32];
    *&v32[3] = *&v34[46];
    *(&v32[3] + 1) = KeyPath;
    v33 = v18;
    sub_100019558(&qword_10011FC78, &qword_1000D66E8);
    sub_100058C90();
    sub_1000CA420();
    v35[2] = v32[1];
    v35[3] = v32[2];
    v35[4] = v32[3];
    v36 = v33;
    v35[0] = v31;
    v35[1] = v32[0];
    sub_100031844(v35, &qword_10011FC78, &qword_1000D66E8);
    sub_1000CA580();
    v20 = sub_1000CA5D0();

    v21 = &v9[*(sub_100019558(&qword_10011FC98, &qword_1000D6708) + 36)];
    *v21 = v20;
    *(v21 + 8) = xmmword_1000D64C0;
    *(v21 + 3) = 0x3FF0000000000000;
    sub_1000CA580();
    v22 = sub_1000CA5D0();

    v23 = &v9[*(v7 + 36)];
    *v23 = v22;
    *(v23 + 8) = xmmword_1000D64D0;
    *(v23 + 3) = 0x4000000000000000;
    v24 = sub_100058D48();
    sub_1000CA470();
    sub_100031844(v9, &qword_10011FC60, &qword_1000D66A0);
    *&v31 = v7;
    *(&v31 + 1) = v24;
    swift_getOpaqueTypeConformance2();
    v25 = v30;
    sub_1000CA4C0();
    (*(v29 + 8))(v12, v25);
    sub_100058E9C();
    result = sub_1000CA700();
    *v27 = result;
  }

  else
  {
    result = sub_1000CA700();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100055408@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v54 = sub_1000CA1E0();
  v3 = *(v54 - 8);
  __chkstk_darwin(v54);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmallHeadlineContentView(0);
  __chkstk_darwin(v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100019558(&qword_10011FCC0, &qword_1000D6710);
  v57 = *(v9 - 8);
  v58 = v9;
  __chkstk_darwin(v9);
  v11 = &v53 - v10;
  v56 = sub_100019558(&qword_10011FCC8, &qword_1000D6718);
  __chkstk_darwin(v56);
  v55 = &v53 - v12;
  v13 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v13 - 8);
  v15 = (&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Item(0);
  __chkstk_darwin(v16);
  v18 = (&v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for SmallContentView(0);
  sub_100059008(v2 + v19[7], v18, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = v18[1];
    v62 = *v18;
    v63 = v20;
    sub_100027B64();
    v21 = sub_1000CA410();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [objc_opt_self() secondaryLabelColor];
    v29 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
    v30 = [v28 resolvedColorWithTraitCollection:v29];

    v31 = sub_1000CA610();
    v62 = v21;
    v63 = v23;
    v64 = v25 & 1;
    v65 = v27;
    v66 = v31;
    sub_100058FB4();
    result = sub_1000CA700();
    v33 = result;
  }

  else
  {
    sub_100059C94(v18, v15, type metadata accessor for Item.Headline);
    sub_100059008(v15, &v8[v6[6]], type metadata accessor for Item.Headline);
    sub_100059008(v2 + v19[8], &v8[v6[7]], type metadata accessor for TodayContent);
    sub_100059008(v2 + v19[9], &v8[v6[8]], type metadata accessor for LayoutContext);
    KeyPath = swift_getKeyPath();
    *&v8[v6[5]] = swift_getKeyPath();
    sub_100019558(&qword_10011EE58, &qword_1000D6600);
    swift_storeEnumTagMultiPayload();
    *v8 = KeyPath;
    v8[8] = 0;
    sub_1000CA1D0();
    v35 = sub_100056320(&qword_10011FCD8, type metadata accessor for SmallHeadlineContentView, &unk_1000D676C);
    v53 = v11;
    sub_1000CA4F0();
    (*(v3 + 8))(v5, v54);
    sub_1000562C0(v8, type metadata accessor for SmallHeadlineContentView);
    sub_100019558(&qword_10011E830, &qword_1000D4678);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1000D3D20;
    v37 = *v15;
    v38 = [*v15 title];
    if (v38)
    {
      v39 = v38;
      v40 = sub_1000CAD00();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0xE000000000000000;
    }

    *(v36 + 32) = v40;
    *(v36 + 40) = v42;
    v43 = [v37 sourceName];
    if (v43)
    {
      v44 = v43;
      v45 = sub_1000CAD00();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0xE000000000000000;
    }

    v48 = v53;
    *(v36 + 48) = v45;
    *(v36 + 56) = v47;
    v62 = v36;
    sub_100019558(&qword_10011E838, &qword_1000D4680);
    sub_10001B1BC(&qword_10011E840, &qword_10011E838, &qword_1000D4680, &protocol conformance descriptor for [A]);
    v49 = sub_1000CAC50();
    v51 = v50;

    v62 = v49;
    v63 = v51;
    v60 = v6;
    v61 = v35;
    swift_getOpaqueTypeConformance2();
    sub_100027B64();
    v52 = v58;
    sub_1000CA4B0();

    (*(v57 + 8))(v48, v52);
    sub_100059074();
    v33 = sub_1000CA700();
    result = sub_1000562C0(v15, type metadata accessor for Item.Headline);
  }

  *v59 = v33;
  return result;
}

uint64_t sub_100055AF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v32 = type metadata accessor for SmallBackgroundView(0);
  __chkstk_darwin(v32);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100019558(&qword_10011FBE0, &qword_1000D6598);
  __chkstk_darwin(v31);
  v30 = &v26 - v4;
  v27 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Item(0);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100019558(&unk_10011E590, &unk_1000D5230);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_1000C9480();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v28 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v26 - v17;
  v19 = type metadata accessor for SmallContentView(0);
  v20 = v1 + v19[9];
  if (*(v20 + *(type metadata accessor for LayoutContext(0) + 44)) == 1)
  {
    v21 = v2 + v19[8];
    v22 = type metadata accessor for TodayContent(0);
    sub_10002DFB4(v21 + *(v22 + 36), v12, &unk_10011E590, &unk_1000D5230);
  }

  else
  {
    sub_100059008(v2 + v19[7], v9, type metadata accessor for Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000562C0(v9, type metadata accessor for Item);
      (*(v14 + 56))(v12, 1, 1, v13);
    }

    else
    {
      sub_100059C94(v9, v6, type metadata accessor for Item.Headline);
      sub_10002DFB4(&v6[*(v27 + 24)], v12, &unk_10011E590, &unk_1000D5230);
      sub_1000562C0(v6, type metadata accessor for Item.Headline);
    }
  }

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100031844(v12, &unk_10011E590, &unk_1000D5230);
    sub_100054B1C(v29);
    sub_100056320(&qword_10011FBE8, type metadata accessor for SmallBackgroundView, &unk_1000D61D4);
    result = sub_1000CA700();
    v24 = result;
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
    v25 = (*(v14 + 16))(v28, v18, v13);
    __chkstk_darwin(v25);
    *(&v26 - 2) = v2;
    sub_100056320(&qword_10011FBE8, type metadata accessor for SmallBackgroundView, &unk_1000D61D4);
    sub_1000CA300();
    sub_10001B1BC(&qword_10011FBF0, &qword_10011FBE0, &qword_1000D6598, &protocol conformance descriptor for Link<A>);
    v24 = sub_1000CA700();
    result = (*(v14 + 8))(v18, v13);
  }

  *v33 = v24;
  return result;
}

uint64_t sub_100056078@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000C9FA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100019558(&qword_10011EE58, &qword_1000D6600);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SmallHeadlineContentView(0);
  sub_10002DFB4(v1 + *(v10 + 20), v9, &qword_10011EE58, &qword_1000D6600);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000CA9F0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1000CB050();
    v13 = sub_1000CA220();
    sub_1000C9BF0();

    sub_1000C9F90();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100056284@<X0>(void *a1@<X8>)
{
  result = sub_100055AF4(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1000562C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100056320(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005638C()
{
  v1 = sub_1000CA9F0();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = sub_1000C9FA0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_1000CB050();
    v14 = sub_1000CA220();
    v20 = v0;
    v15 = v2;
    v16 = v14;
    sub_1000C9BF0();

    v2 = v15;
    sub_1000C9F90();
    swift_getAtKeyPath();
    sub_10003FC2C(v12, 0);
    (*(v9 + 8))(v11, v8);
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_100056078(v7);
    sub_1000CA9E0();
    v17 = sub_1000CA9D0();
    v18 = *(v2 + 8);
    v18(v5, v1);
    v18(v7, v1);
    v13 = v17 ^ 1;
    return v13 & 1;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_1000565EC()
{
  v1 = sub_100019558(&qword_10011FD88, &qword_1000D67C0);
  __chkstk_darwin(v1);
  v3 = &v18 - v2;
  v4 = sub_100019558(&qword_10011FD90, &qword_1000D67C8);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = sub_100019558(&qword_10011FD98, &qword_1000D67D0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = sub_10005638C();
  v11 = sub_1000CA0E0();
  if (v10)
  {
    *v9 = v11;
    *(v9 + 1) = 0;
    v9[16] = 1;
    v12 = sub_100019558(&qword_10011FDB8, &qword_1000D67E0);
    sub_100057B5C(v0, &v9[*(v12 + 44)]);
    sub_10002DFB4(v9, v6, &qword_10011FD98, &qword_1000D67D0);
    swift_storeEnumTagMultiPayload();
    sub_10001B1BC(&qword_10011FDA8, &qword_10011FD98, &qword_1000D67D0, &protocol conformance descriptor for VStack<A>);
    sub_10001B1BC(&qword_10011FDB0, &qword_10011FD88, &qword_1000D67C0, &protocol conformance descriptor for VStack<A>);
    sub_1000CA1B0();
    v13 = v9;
    v14 = &qword_10011FD98;
    v15 = &qword_1000D67D0;
  }

  else
  {
    *v3 = v11;
    *(v3 + 1) = 0;
    v3[16] = 1;
    v16 = sub_100019558(&qword_10011FDA0, &qword_1000D67D8);
    sub_1000568FC(&v3[*(v16 + 44)]);
    sub_10002DFB4(v3, v6, &qword_10011FD88, &qword_1000D67C0);
    swift_storeEnumTagMultiPayload();
    sub_10001B1BC(&qword_10011FDA8, &qword_10011FD98, &qword_1000D67D0, &protocol conformance descriptor for VStack<A>);
    sub_10001B1BC(&qword_10011FDB0, &qword_10011FD88, &qword_1000D67C0, &protocol conformance descriptor for VStack<A>);
    sub_1000CA1B0();
    v13 = v3;
    v14 = &qword_10011FD88;
    v15 = &qword_1000D67C0;
  }

  return sub_100031844(v13, v14, v15);
}

uint64_t sub_1000568FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100019558(&qword_10011FE90, &qword_1000D68D0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v48 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v41[-v6];
  v8 = sub_100019558(&qword_10011FE98, &qword_1000D68D8);
  v9 = __chkstk_darwin(v8 - 8);
  v54 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v12 = &v41[-v11];
  v13 = sub_100019558(&qword_10011FDD8, &unk_1000D6800);
  v14 = __chkstk_darwin(v13 - 8);
  v55 = &v41[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v41[-v16];
  type metadata accessor for SmallHeadlineContentView(0);
  v18 = sub_1000BB1C8();
  v19 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  if (v18)
  {
    v19 = sub_10008C594();
    sub_1000CA7A0();
    sub_1000C9CC0();
    v61 = v68;
    v60 = v69;
    v59 = v70;
    v58 = v71;
    v57 = v72;
    v56 = v73;
  }

  v53 = v19;
  v47 = v17;
  sub_100056FE0(v17);
  v20 = sub_10007739C();
  [v20 capHeight];

  sub_100077640();
  sub_1000CA7A0();
  sub_1000C9CC0();
  v52 = v74;
  v51 = v76;
  v50 = v78;
  v49 = v79;
  v64 = 1;
  v63 = v75;
  v62 = v77;
  *v12 = sub_1000C9FE0();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v21 = &v12[*(sub_100019558(&qword_10011FEA0, &qword_1000D68E0) + 44)];
  sub_100057648(v7);
  v43 = v12;
  v22 = *(v3 + 16);
  v23 = v48;
  v22(v48, v7, v2);
  v22(v21, v23, v2);
  v24 = &v21[*(sub_100019558(&qword_10011FEA8, &qword_1000D68E8) + 48)];
  *v24 = 0;
  v24[8] = 0;
  v25 = *(v3 + 8);
  v25(v7, v2);
  v25(v23, v2);
  sub_1000CA7A0();
  sub_1000C9CC0();
  v48 = v80;
  v46 = v82;
  v45 = v84;
  v44 = v85;
  v67 = 1;
  v66 = v81;
  v65 = v83;
  v26 = v17;
  v27 = v55;
  sub_10002DFB4(v26, v55, &qword_10011FDD8, &unk_1000D6800);
  v28 = v64;
  LOBYTE(v22) = v63;
  LOBYTE(v23) = v62;
  v29 = v12;
  v30 = v54;
  sub_10002DFB4(v29, v54, &qword_10011FE98, &qword_1000D68D8);
  LOBYTE(v20) = v67;
  v31 = v66;
  v42 = v65;
  v32 = v61;
  *a1 = v53;
  *(a1 + 8) = v32;
  v33 = v59;
  *(a1 + 16) = v60;
  *(a1 + 24) = v33;
  v34 = v57;
  *(a1 + 32) = v58;
  *(a1 + 40) = v34;
  *(a1 + 48) = v56;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  v35 = sub_100019558(&qword_10011FEB0, &qword_1000D68F0);
  sub_10002DFB4(v27, a1 + v35[16], &qword_10011FDD8, &unk_1000D6800);
  v36 = a1 + v35[20];
  *v36 = 0;
  *(v36 + 8) = v28;
  *(v36 + 16) = v52;
  *(v36 + 24) = v22;
  *(v36 + 32) = v51;
  *(v36 + 40) = v23;
  v37 = v49;
  *(v36 + 48) = v50;
  *(v36 + 56) = v37;
  sub_10002DFB4(v30, a1 + v35[24], &qword_10011FE98, &qword_1000D68D8);
  v38 = a1 + v35[28];
  *v38 = 0;
  *(v38 + 8) = v20;
  *(v38 + 16) = v48;
  *(v38 + 24) = v31;
  *(v38 + 32) = v46;
  *(v38 + 40) = v42;
  v39 = v44;
  *(v38 + 48) = v45;
  *(v38 + 56) = v39;
  sub_100031844(v43, &qword_10011FE98, &qword_1000D68D8);
  sub_100031844(v47, &qword_10011FDD8, &unk_1000D6800);
  sub_100031844(v30, &qword_10011FE98, &qword_1000D68D8);
  sub_100031844(v27, &qword_10011FDD8, &unk_1000D6800);
}

uint64_t sub_100056FE0@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = sub_1000CA0A0();
  v69 = *(v2 - 8);
  v70 = v2;
  __chkstk_darwin(v2);
  v67 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SourceView(0);
  __chkstk_darwin(v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100019558(&qword_10011FE60, &qword_1000D68B8);
  __chkstk_darwin(v61);
  v8 = &v57 - v7;
  v9 = sub_100019558(&qword_10011FE68, &qword_1000D68C0);
  v62 = *(v9 - 8);
  v63 = v9;
  __chkstk_darwin(v9);
  v60 = &v57 - v10;
  v64 = sub_100019558(&qword_10011FE70, &qword_1000D68C8);
  __chkstk_darwin(v64);
  v12 = &v57 - v11;
  v65 = sub_100019558(&qword_10011FDD8, &unk_1000D6800);
  __chkstk_darwin(v65);
  v66 = &v57 - v13;
  v14 = (v1 + *(type metadata accessor for SmallHeadlineContentView(0) + 24));
  v15 = sub_1000BB378();
  v16 = *v14;
  v58 = *v14;
  if (v15)
  {
    [v16 sourceNameImageScale];
    v72 = v17;
    v71 = v15;
  }

  else
  {
    v18 = [v16 sourceName];
    if (v18)
    {
      v19 = v18;
      v71 = sub_1000CAD00();
      v72 = v20;
    }

    else
    {
      v71 = 0;
      v72 = 0xE000000000000000;
    }
  }

  v21 = v14 + *(type metadata accessor for Item.Headline(0) + 28);
  if (*(v21 + 1))
  {
    v22 = *v21;
    if (v22)
    {
      v23 = v22;
      [v23 ts_luminance];
      sub_10001F934(0, &unk_10011E610, UIColor_ptr);
      sub_1000CB120();
    }
  }

  v59 = v15;
  v24 = v15 != 0;
  v26 = v71;
  v25 = v72;
  sub_10003FA04(v71, v72, v24);
  sub_1000791C4();
  v28 = v27;
  sub_1000791C4();
  v30 = v29 + 3.0;
  KeyPath = swift_getKeyPath();
  *&v6[v4[5]] = swift_getKeyPath();
  sub_100019558(&qword_10011EE58, &qword_1000D6600);
  swift_storeEnumTagMultiPayload();
  *v6 = KeyPath;
  v6[8] = 0;
  v32 = &v6[v4[6]];
  *v32 = v26;
  *(v32 + 1) = v25;
  v32[16] = v24;
  v33 = &v6[v4[7]];
  *v33 = v28;
  *(v33 + 1) = v30;
  v34 = sub_10005638C();
  v35 = sub_1000CA5B0();
  if ((v34 & 1) == 0)
  {
    v36 = sub_1000CA5D0();

    v35 = v36;
  }

  v37 = v64;
  v38 = swift_getKeyPath();
  sub_100059C94(v6, v8, type metadata accessor for SourceView);
  v39 = &v8[*(v61 + 36)];
  *v39 = v38;
  v39[1] = v35;
  sub_100059CFC();
  v40 = v60;
  sub_1000CA420();
  sub_100031844(v8, &qword_10011FE60, &qword_1000D68B8);
  sub_1000CA580();
  v41 = sub_1000CA5D0();

  (*(v62 + 32))(v12, v40, v63);
  v42 = &v12[*(v37 + 36)];
  *v42 = v41;
  v42[1] = 0x4020000000000000;
  v42[2] = 0;
  v42[3] = 0;
  v43 = [v58 sourceName];
  if (v43)
  {
    v44 = v43;
    v45 = sub_1000CAD00();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0xE000000000000000;
  }

  v48 = v59 != 0;
  v73 = v45;
  v74 = v47;
  sub_100027B64();
  v49 = sub_1000CA410();
  v51 = v50;
  v53 = v52;
  sub_100059DE4();
  v54 = v66;
  sub_1000CA480();
  sub_100025894(v49, v51, v53 & 1);

  sub_100031844(v12, &qword_10011FE70, &qword_1000D68C8);
  v55 = v67;
  sub_1000CA070();
  sub_1000C9D60();
  sub_10003FB24(v71, v72, v48);
  (*(v69 + 8))(v55, v70);
  return sub_100031844(v54, &qword_10011FDD8, &unk_1000D6800);
}

uint64_t sub_100057648@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v51 = sub_1000C9600();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SmallHeadlineContentView(0);
  sub_10007739C();
  v4 = sub_1000CA2F0();
  sub_100019558(&unk_10011E820, &unk_1000D5240);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000D45E0;
  v6 = *(v1 + *(v3 + 24));
  v7 = [v6 identifier];
  v8 = sub_1000CAD00();
  v10 = v9;

  *(v5 + 56) = &type metadata for String;
  v11 = sub_100024C50();
  *(v5 + 64) = v11;
  *(v5 + 32) = v8;
  *(v5 + 40) = v10;
  v12 = [v6 title];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1000CAD00();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v11;
  *(v5 + 72) = v14;
  *(v5 + 80) = v16;
  *&v54 = 0;
  *(&v54 + 1) = 0xE000000000000000;
  v17 = [v6 language];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1000CAD00();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  *&v52[0] = v19;
  *(&v52[0] + 1) = v21;
  sub_100019558(&unk_100121BF0, &qword_1000DA940);
  sub_1000CB340();

  v22 = v54;
  *(v5 + 136) = &type metadata for String;
  *(v5 + 144) = v11;
  *(v5 + 112) = v22;
  sub_10001F934(0, &qword_10011F5F0, OS_os_log_ptr);
  v23 = sub_1000CB160();
  v24 = sub_1000CB060();
  sub_1000C9BE0("creating smallTitleView for headline with identifier: %@, with title: %@, with language: %@", 91, 2, &_mh_execute_header, v23, v24, v5);

  v25 = [v6 title];
  if (v25)
  {
    v26 = v25;
    sub_1000CAD00();
  }

  v27 = sub_1000CA380();
  v29 = v28;
  v31 = v30;

  v47[1] = v4;

  sub_1000CA580();
  sub_1000CA5D0();

  v32 = sub_1000CA390();
  v34 = v33;
  v36 = v35;
  v38 = v37;

  sub_100025894(v27, v29, v31 & 1);

  KeyPath = swift_getKeyPath();
  v40 = sub_1000CA5B0();
  v41 = swift_getKeyPath();
  v60 = v36 & 1;
  v59 = 0;
  *&v54 = v32;
  *(&v54 + 1) = v34;
  LOBYTE(v55) = v36 & 1;
  *(&v55 + 1) = v38;
  *&v56 = KeyPath;
  *(&v56 + 1) = 3;
  LOBYTE(v57) = 0;
  *(&v57 + 1) = v41;
  v58 = v40;
  v42 = [v6 language];
  if (v42)
  {
    v43 = v42;
    sub_1000CAD00();
  }

  v44 = v48;
  sub_1000C95F0();
  v45 = [v6 language];
  if (v45)
  {
  }

  sub_100019558(&qword_10011FEB8, &unk_1000DAD60);
  sub_100059F10();
  sub_1000CA4E0();

  (*(v50 + 8))(v44, v51);
  v52[2] = v56;
  v52[3] = v57;
  v53 = v58;
  v52[1] = v55;
  v52[0] = v54;
  return sub_100031844(v52, &qword_10011FEB8, &unk_1000DAD60);
}

uint64_t sub_100057B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_100019558(&qword_10011FDC0, &qword_1000D67E8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v25[-v7];
  *v8 = sub_1000C9FE0();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = sub_100019558(&qword_10011FDC8, &qword_1000D67F0);
  sub_100057DC0(a1, &v8[*(v9 + 44)]);
  sub_1000CA7A0();
  sub_1000C9CC0();
  v29 = v38;
  v30 = v36;
  v27 = v41;
  v28 = v40;
  v44 = 1;
  v43 = v37;
  v42 = v39;
  sub_100058618(v33);
  v10 = v33[0];
  v11 = v33[1];
  v12 = v34;
  v13 = v35;
  v31 = v6;
  sub_10002DFB4(v8, v6, &qword_10011FDC0, &qword_1000D67E8);
  v14 = v44;
  v15 = v43;
  v26 = v42;
  v16 = v6;
  v17 = v32;
  sub_10002DFB4(v16, v32, &qword_10011FDC0, &qword_1000D67E8);
  v18 = sub_100019558(&qword_10011FDD0, &qword_1000D67F8);
  v19 = v17 + v18[12];
  *v19 = 0;
  *(v19 + 8) = v14;
  v20 = v29;
  *(v19 + 16) = v30;
  *(v19 + 24) = v15;
  *(v19 + 32) = v20;
  *(v19 + 40) = v26;
  v21 = v27;
  *(v19 + 48) = v28;
  *(v19 + 56) = v21;
  v22 = v17 + v18[16];
  *v22 = v10;
  *(v22 + 8) = v11;
  *(v22 + 16) = v12;
  *(v22 + 24) = v13;
  v23 = v17 + v18[20];
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_100048B18(v10, v11, v12);

  sub_100031844(v8, &qword_10011FDC0, &qword_1000D67E8);
  sub_100025894(v10, v11, v12);

  return sub_100031844(v31, &qword_10011FDC0, &qword_1000D67E8);
}

uint64_t sub_100057DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v67 = a2;
  v2 = sub_100019558(&qword_10011FDD8, &unk_1000D6800);
  v3 = __chkstk_darwin(v2 - 8);
  v66 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v71 = &v54 - v5;
  v6 = sub_100019558(&qword_10011FDE0, &unk_1000D8D70);
  v7 = __chkstk_darwin(v6 - 8);
  v64 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v70 = &v54 - v9;
  v10 = sub_100019558(&qword_10011FDE8, &unk_1000D6810);
  __chkstk_darwin(v10);
  v12 = (&v54 - v11);
  v62 = sub_100019558(&qword_10011FDF0, &unk_1000D8D80);
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v14 = &v54 - v13;
  v15 = sub_100019558(&qword_10011FDF8, &qword_1000D6820);
  v16 = __chkstk_darwin(v15 - 8);
  v69 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v68 = &v54 - v18;
  v61 = sub_1000CA660();
  v19 = sub_1000CA570();
  KeyPath = swift_getKeyPath();
  v21 = sub_1000CA2D0();
  v22 = swift_getKeyPath();
  v23 = (v12 + *(v10 + 36));
  v24 = *(sub_100019558(&qword_10011FE00, &qword_1000D6858) + 28);
  v25 = enum case for Image.Scale.medium(_:);
  v26 = sub_1000CA680();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  *v12 = v61;
  v12[1] = KeyPath;
  v12[2] = v19;
  v12[3] = v22;
  v12[4] = v21;
  v27 = sub_1000599E8();
  sub_1000CA420();
  sub_100031844(v12, &qword_10011FDE8, &unk_1000D6810);
  v78 = v10;
  v79 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v68;
  v29 = v62;
  sub_1000CA4C0();
  (*(v63 + 8))(v14, v29);
  sub_1000CA7A0();
  sub_1000C9CC0();
  v63 = v72;
  v62 = v74;
  v61 = v76;
  v60 = v77;
  v86 = 1;
  v85 = v73;
  v84 = v75;
  sub_1000CA2D0();
  v30 = sub_1000CA380();
  v32 = v31;
  LOBYTE(v14) = v33;

  sub_1000CA5B0();
  v34 = sub_1000CA340();
  v36 = v35;
  LOBYTE(v24) = v37;
  v39 = v38;

  sub_100025894(v30, v32, v14 & 1);

  v78 = v34;
  v79 = v36;
  LOBYTE(v80) = v24 & 1;
  v81 = v39;
  v82 = 0x3FE6666666666666;
  sub_100019558(&qword_10011FE48, &qword_1000D8EB0);
  sub_100059C10();
  v40 = v70;
  sub_1000CA4C0();
  sub_100025894(v34, v36, v24 & 1);

  sub_1000CA7A0();
  sub_1000C9CC0();
  v59 = v78;
  v58 = v80;
  v57 = v82;
  v56 = v83;
  v89 = 1;
  v88 = v79;
  v87 = v81;
  v41 = v71;
  sub_100056FE0(v71);
  v42 = v69;
  sub_10002DFB4(v28, v69, &qword_10011FDF8, &qword_1000D6820);
  LOBYTE(v30) = v86;
  LOBYTE(v36) = v85;
  LOBYTE(v24) = v84;
  v43 = v64;
  sub_10002DFB4(v40, v64, &qword_10011FDE0, &unk_1000D8D70);
  v54 = v89;
  v55 = v88;
  LODWORD(v65) = v87;
  v44 = v66;
  sub_10002DFB4(v41, v66, &qword_10011FDD8, &unk_1000D6800);
  v45 = v42;
  v46 = v67;
  sub_10002DFB4(v45, v67, &qword_10011FDF8, &qword_1000D6820);
  v47 = sub_100019558(&qword_10011FE58, &qword_1000D68B0);
  v48 = v46 + v47[12];
  *v48 = 0;
  *(v48 + 8) = v30;
  *(v48 + 16) = v63;
  *(v48 + 24) = v36;
  *(v48 + 32) = v62;
  *(v48 + 40) = v24;
  v49 = v60;
  *(v48 + 48) = v61;
  *(v48 + 56) = v49;
  sub_10002DFB4(v43, v46 + v47[16], &qword_10011FDE0, &unk_1000D8D70);
  v50 = v46 + v47[20];
  *v50 = 0;
  *(v50 + 8) = v54;
  *(v50 + 16) = v59;
  *(v50 + 24) = v55;
  *(v50 + 32) = v58;
  *(v50 + 40) = v65;
  v51 = v56;
  *(v50 + 48) = v57;
  *(v50 + 56) = v51;
  sub_10002DFB4(v44, v46 + v47[24], &qword_10011FDD8, &unk_1000D6800);
  v52 = v46 + v47[28];
  *v52 = 0;
  *(v52 + 8) = 1;
  sub_100031844(v71, &qword_10011FDD8, &unk_1000D6800);
  sub_100031844(v70, &qword_10011FDE0, &unk_1000D8D70);
  sub_100031844(v68, &qword_10011FDF8, &qword_1000D6820);
  sub_100031844(v44, &qword_10011FDD8, &unk_1000D6800);
  sub_100031844(v43, &qword_10011FDE0, &unk_1000D8D70);
  return sub_100031844(v69, &qword_10011FDF8, &qword_1000D6820);
}

uint64_t sub_100058618@<X0>(uint64_t *a1@<X8>)
{
  v61 = a1;
  v2 = sub_1000C9600();
  v59 = *(v2 - 8);
  v60 = v2;
  __chkstk_darwin(v2);
  v58 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SmallHeadlineContentView(0);
  sub_10007739C();
  v5 = sub_1000CA2F0();
  sub_100019558(&unk_10011E820, &unk_1000D5240);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000D45E0;
  v7 = *(v1 + *(v4 + 24));
  v8 = [v7 identifier];
  v9 = sub_1000CAD00();
  v11 = v10;

  *(v6 + 56) = &type metadata for String;
  v12 = sub_100024C50();
  *(v6 + 64) = v12;
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  v13 = [v7 title];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1000CAD00();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v12;
  *(v6 + 72) = v15;
  *(v6 + 80) = v17;
  v65 = 0;
  v66 = 0xE000000000000000;
  v18 = [v7 language];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1000CAD00();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v63 = v20;
  v64 = v22;
  sub_100019558(&unk_100121BF0, &qword_1000DA940);
  sub_1000CB340();

  v23 = v65;
  v24 = v66;
  *(v6 + 136) = &type metadata for String;
  *(v6 + 144) = v12;
  *(v6 + 112) = v23;
  *(v6 + 120) = v24;
  sub_10001F934(0, &qword_10011F5F0, OS_os_log_ptr);
  v25 = sub_1000CB160();
  v26 = sub_1000CB060();
  sub_1000C9BE0("creating largeTitleView for headline with identifier: %@, with title: %@, with language: %@", 91, 2, &_mh_execute_header, v25, v26, v6);

  v27 = [v7 title];
  v62 = v7;
  if (v27)
  {
    v28 = v27;
    sub_1000CAD00();
  }

  v29 = sub_1000CA380();
  v31 = v30;
  v33 = v32;

  v57 = v5;

  sub_1000CA580();
  sub_1000CA5D0();

  v34 = sub_1000CA390();
  v36 = v35;
  v38 = v37;

  sub_100025894(v29, v31, v33 & 1);

  sub_1000CA5B0();
  v39 = sub_1000CA340();
  v41 = v40;
  v43 = v42;

  sub_100025894(v34, v36, v38 & 1);

  v44 = [v62 language];
  if (v44)
  {
    v45 = v44;
    sub_1000CAD00();
  }

  v46 = v58;
  sub_1000C95F0();
  v47 = [v62 language];
  if (v47)
  {
  }

  v48 = sub_1000CA360();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_100025894(v39, v41, v43 & 1);

  result = (*(v59 + 8))(v46, v60);
  v56 = v61;
  *v61 = v48;
  v56[1] = v50;
  *(v56 + 16) = v52 & 1;
  v56[3] = v54;
  return result;
}

id sub_100058BA0(id result, void *a2)
{
  if (a2)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t sub_100058BE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C9E60();
  *a1 = result;
  return result;
}

uint64_t sub_100058C0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C9E60();
  *a1 = result;
  return result;
}

unint64_t sub_100058C90()
{
  result = qword_10011FC80;
  if (!qword_10011FC80)
  {
    sub_1000195A0(&qword_10011FC78, &qword_1000D66E8);
    sub_10003FA14();
    sub_10001B1BC(&qword_10011FC88, &qword_10011FC90, &qword_1000D6700, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FC80);
  }

  return result;
}

unint64_t sub_100058D48()
{
  result = qword_10011FCA0;
  if (!qword_10011FCA0)
  {
    sub_1000195A0(&qword_10011FC60, &qword_1000D66A0);
    sub_100058DD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FCA0);
  }

  return result;
}

unint64_t sub_100058DD4()
{
  result = qword_10011FCA8;
  if (!qword_10011FCA8)
  {
    sub_1000195A0(&qword_10011FC98, &qword_1000D6708);
    sub_1000195A0(&qword_10011FC78, &qword_1000D66E8);
    sub_100058C90();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FCA8);
  }

  return result;
}

unint64_t sub_100058E9C()
{
  result = qword_10011FCB0;
  if (!qword_10011FCB0)
  {
    sub_1000195A0(&qword_10011FC70, &qword_1000D66B0);
    sub_1000195A0(&qword_10011FC60, &qword_1000D66A0);
    sub_100058D48();
    swift_getOpaqueTypeConformance2();
    sub_100056320(&qword_10011FCB8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FCB0);
  }

  return result;
}

unint64_t sub_100058FB4()
{
  result = qword_10011FCD0;
  if (!qword_10011FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FCD0);
  }

  return result;
}

uint64_t sub_100059008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100059074()
{
  result = qword_10011FCE0;
  if (!qword_10011FCE0)
  {
    sub_1000195A0(&qword_10011FCC8, &qword_1000D6718);
    type metadata accessor for SmallHeadlineContentView(255);
    sub_100056320(&qword_10011FCD8, type metadata accessor for SmallHeadlineContentView, &unk_1000D676C);
    swift_getOpaqueTypeConformance2();
    sub_100056320(&qword_10011FCB8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FCE0);
  }

  return result;
}

uint64_t sub_1000591A4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_100019558(&qword_10011ED68, &unk_1000D64F0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for Item.Headline(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = type metadata accessor for TodayContent(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = type metadata accessor for LayoutContext(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_100059370(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
    return result;
  }

  v8 = sub_100019558(&qword_10011ED68, &unk_1000D64F0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for Item.Headline(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = type metadata accessor for TodayContent(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = type metadata accessor for LayoutContext(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

void sub_10005952C(uint64_t a1)
{
  sub_100053524(319, &qword_10011EDD8, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_10003F0D0(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Item.Headline(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for TodayContent(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for LayoutContext(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100059608()
{
  sub_1000195A0(&qword_10011FBB8, &qword_1000D6580);
  sub_1000195A0(&qword_10011FBB0, &qword_1000D6578);
  sub_1000195A0(&qword_10011FBA8, &qword_1000D6570);
  sub_10001B1BC(&qword_10011FBC8, &qword_10011FBA8, &qword_1000D6570, &protocol conformance descriptor for ZStack<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100059750@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000C9F70();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000597B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C9EF0();
  *a1 = result;
  return result;
}

uint64_t sub_1000597E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C9EF0();
  *a1 = result;
  return result;
}

uint64_t sub_1000598D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_1000599E8()
{
  result = qword_10011FE08;
  if (!qword_10011FE08)
  {
    sub_1000195A0(&qword_10011FDE8, &unk_1000D6810);
    sub_100059AA0();
    sub_10001B1BC(&qword_10011FE40, &qword_10011FE00, &qword_1000D6858, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FE08);
  }

  return result;
}

unint64_t sub_100059AA0()
{
  result = qword_10011FE10;
  if (!qword_10011FE10)
  {
    sub_1000195A0(&qword_10011FE18, &qword_1000D6890);
    sub_100059B58();
    sub_10001B1BC(&qword_10011FE30, &qword_10011FE38, &unk_1000D68A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FE10);
  }

  return result;
}

unint64_t sub_100059B58()
{
  result = qword_10011FE20;
  if (!qword_10011FE20)
  {
    sub_1000195A0(&qword_10011FE28, &qword_1000D6898);
    sub_10001B1BC(&qword_10011FC88, &qword_10011FC90, &qword_1000D6700, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FE20);
  }

  return result;
}

unint64_t sub_100059C10()
{
  result = qword_10011FE50;
  if (!qword_10011FE50)
  {
    sub_1000195A0(&qword_10011FE48, &qword_1000D8EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FE50);
  }

  return result;
}

uint64_t sub_100059C94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100059CFC()
{
  result = qword_10011FE78;
  if (!qword_10011FE78)
  {
    sub_1000195A0(&qword_10011FE60, &qword_1000D68B8);
    sub_100056320(&qword_10011FE80, type metadata accessor for SourceView, &unk_1000D5320);
    sub_10001B1BC(&qword_10011FC88, &qword_10011FC90, &qword_1000D6700, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FE78);
  }

  return result;
}

unint64_t sub_100059DE4()
{
  result = qword_10011FE88;
  if (!qword_10011FE88)
  {
    sub_1000195A0(&qword_10011FE70, &qword_1000D68C8);
    sub_1000195A0(&qword_10011FE60, &qword_1000D68B8);
    sub_100059CFC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FE88);
  }

  return result;
}

uint64_t sub_100059EAC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000C9F70();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_100059F10()
{
  result = qword_10011FEC0;
  if (!qword_10011FEC0)
  {
    sub_1000195A0(&qword_10011FEB8, &unk_1000DAD60);
    sub_10003FB3C();
    sub_10001B1BC(&qword_10011FC88, &qword_10011FC90, &qword_1000D6700, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FEC0);
  }

  return result;
}

unint64_t sub_100059FCC()
{
  result = qword_10011FEC8;
  if (!qword_10011FEC8)
  {
    sub_1000195A0(&qword_10011FED0, &unk_1000D6940);
    sub_10001B1BC(&qword_10011FDA8, &qword_10011FD98, &qword_1000D67D0, &protocol conformance descriptor for VStack<A>);
    sub_10001B1BC(&qword_10011FDB0, &qword_10011FD88, &qword_1000D67C0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FEC8);
  }

  return result;
}

__n128 sub_10005A0AC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10005A0D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_10005A120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005A19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100019558(&qword_10011ED68, &unk_1000D64F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Item.Headline(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10005A2C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100019558(&qword_10011ED68, &unk_1000D64F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Item.Headline(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10005A3FC(uint64_t a1)
{
  sub_10005AAD4(319, &qword_10011EDE0, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Item.Headline(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_10005A4C0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10005A4D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005A4F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_10005A548(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100019558(&qword_10011F680, &unk_1000D61B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_100019558(&qword_10011ED68, &unk_1000D64F0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_100019558(&qword_10011FF78, qword_1000D69E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = type metadata accessor for Item.Headline(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[9];
    goto LABEL_11;
  }

  v16 = type metadata accessor for TodayContent(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[10];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[11]);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_10005A764(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100019558(&qword_10011F680, &unk_1000D61B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100019558(&qword_10011ED68, &unk_1000D64F0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_100019558(&qword_10011FF78, qword_1000D69E0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = type metadata accessor for Item.Headline(0);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[9];
        }

        else
        {
          result = type metadata accessor for TodayContent(0);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[11]) = (a2 - 1);
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[10];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_10005A988(uint64_t a1)
{
  sub_10005AAD4(319, &qword_10011F708, &type metadata accessor for RedactionReasons);
  if (v1 <= 0x3F)
  {
    sub_10005AAD4(319, &qword_10011EDE0, &type metadata accessor for WidgetRenderingMode);
    if (v2 <= 0x3F)
    {
      sub_10005AAD4(319, &qword_10011FFE8, &type metadata accessor for WidgetFamily);
      if (v3 <= 0x3F)
      {
        sub_10005AB28();
        if (v4 <= 0x3F)
        {
          type metadata accessor for Item.Headline(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for TodayContent(319);
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

void sub_10005AAD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000C9C60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10005AB28()
{
  if (!qword_10011FFF0)
  {
    v0 = sub_1000CA6F0();
    if (!v1)
    {
      atomic_store(v0, &qword_10011FFF0);
    }
  }
}

uint64_t sub_10005AB94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000C9FA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100019558(&qword_10011EE58, &qword_1000D6600);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for HeadlineCell(0);
  sub_10002DFB4(v1 + *(v10 + 20), v9, &qword_10011EE58, &qword_1000D6600);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000CA9F0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1000CB050();
    v13 = sub_1000CA220();
    sub_1000C9BF0();

    sub_1000C9F90();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10005AD9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000C9FA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100019558(&qword_100120088, &qword_1000D6B00);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for HeadlineCell(0);
  sub_10002DFB4(v1 + *(v10 + 24), v9, &qword_100120088, &qword_1000D6B00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000CAAB0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1000CB050();
    v13 = sub_1000CA220();
    sub_1000C9BF0();

    sub_1000C9F90();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10005AFA4()
{
  v1 = sub_1000CA030();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100019558(&qword_100120040, &qword_1000D6A88);
  __chkstk_darwin(v2);
  v4 = &v24 - v3;
  *v4 = sub_1000CA0E0();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = sub_100019558(&qword_100120048, &qword_1000D6A90);
  sub_10005B2D8(v0, &v4[*(v5 + 44)]);
  sub_1000CA020();
  v6 = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_1000CA010(v25);
  v7 = *(v0 + *(type metadata accessor for HeadlineCell(0) + 36));
  v8 = [v7 sourceName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1000CAD00();
    v6 = v11;
  }

  else
  {
    v10 = 0;
  }

  v26._countAndFlagsBits = v10;
  v26._object = v6;
  sub_1000CA000(v26);

  v27._countAndFlagsBits = 8236;
  v27._object = 0xE200000000000000;
  sub_1000CA010(v27);
  v12 = [v7 title];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1000CAD00();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v28._countAndFlagsBits = v14;
  v28._object = v16;
  sub_1000CA000(v28);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_1000CA010(v29);
  sub_1000CA050();
  if (qword_10011CFA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = static NSBundle.newsToday2;
  v18 = sub_1000CA400();
  v20 = v19;
  v22 = v21;
  sub_10001B1BC(&qword_100120050, &qword_100120040, &qword_1000D6A88, &protocol conformance descriptor for VStack<A>);
  sub_1000CA480();
  sub_100025894(v18, v20, v22 & 1);

  return sub_100031844(v4, &qword_100120040, &qword_1000D6A88);
}

uint64_t sub_10005B2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100019558(&qword_100120058, &qword_1000D6A98);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v22[-v9];
  type metadata accessor for HeadlineCell(0);
  sub_1000CA7A0();
  sub_1000C9CC0();
  v31 = v32;
  v30 = v34;
  v29 = v36;
  v28 = v37;
  v49 = 1;
  v48 = v33;
  v47 = v35;
  *v10 = sub_1000C9FD0();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_100019558(&qword_100120060, &qword_1000D6AA0);
  sub_10005B618(a1, &v10[*(v11 + 44)]);
  sub_1000CA7A0();
  sub_1000C9CC0();
  v12 = &v10[*(v5 + 44)];
  v13 = v39;
  *v12 = v38;
  v12[1] = v13;
  v12[2] = v40;
  sub_1000CA7A0();
  sub_1000C9CC0();
  v27 = v41;
  v26 = v43;
  v25 = v45;
  v24 = v46;
  v52 = 1;
  v51 = v42;
  v50 = v44;
  v14 = v49;
  LOBYTE(v5) = v48;
  v15 = v47;
  sub_10002DFB4(v10, v8, &qword_100120058, &qword_1000D6A98);
  LOBYTE(a1) = v52;
  v16 = v51;
  v23 = v50;
  *a2 = 0;
  *(a2 + 8) = v14;
  *(a2 + 16) = v31;
  *(a2 + 24) = v5;
  *(a2 + 32) = v30;
  *(a2 + 40) = v15;
  v17 = v28;
  *(a2 + 48) = v29;
  *(a2 + 56) = v17;
  v18 = sub_100019558(&qword_100120068, &qword_1000D6AA8);
  sub_10002DFB4(v8, a2 + *(v18 + 48), &qword_100120058, &qword_1000D6A98);
  v19 = a2 + *(v18 + 64);
  *v19 = 0;
  *(v19 + 8) = a1;
  *(v19 + 16) = v27;
  *(v19 + 24) = v16;
  *(v19 + 32) = v26;
  *(v19 + 40) = v23;
  v20 = v24;
  *(v19 + 48) = v25;
  *(v19 + 56) = v20;
  sub_100031844(v10, &qword_100120058, &qword_1000D6A98);
  return sub_100031844(v8, &qword_100120058, &qword_1000D6A98);
}

uint64_t sub_10005B618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for ThumbnailView(0);
  v4 = (v3 - 8);
  v5 = __chkstk_darwin(v3);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = (&v31 - v7);
  v9 = sub_100019558(&qword_100120070, &qword_1000D6AB0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = (&v31 - v13);
  *v14 = sub_1000CA760();
  v14[1] = v15;
  v16 = sub_100019558(&qword_100120078, &qword_1000D6AB8);
  sub_10005B920(a1, v14 + *(v16 + 44));
  v17 = type metadata accessor for HeadlineCell(0);
  sub_10005EAD0(a1 + v17[9], v8 + v4[7], type metadata accessor for Item.Headline);
  v18 = a1 + v17[11];
  v19 = *(v18 + 8);
  v21 = *(v18 + 16);
  v20 = *(v18 + 24);
  v22 = *(v18 + 32);
  v23 = sub_10008C594();
  v24 = v17[13];
  LOBYTE(v17) = *(a1 + v17[12]);
  LOBYTE(a1) = *(a1 + v24);
  *v8 = swift_getKeyPath();
  sub_100019558(&qword_10011EE58, &qword_1000D6600);
  swift_storeEnumTagMultiPayload();
  v25 = v8 + v4[8];
  *v25 = v19;
  *(v25 + 1) = v21;
  *(v25 + 2) = v20;
  v25[24] = v22;
  *(v8 + v4[9]) = v23;
  *(v8 + v4[10]) = v17;
  *(v8 + v4[11]) = a1;
  sub_10002DFB4(v14, v12, &qword_100120070, &qword_1000D6AB0);
  v26 = v31;
  sub_10005EAD0(v8, v31, type metadata accessor for ThumbnailView);
  v27 = v32;
  sub_10002DFB4(v12, v32, &qword_100120070, &qword_1000D6AB0);
  v28 = sub_100019558(&qword_100120080, &qword_1000D6AF8);
  v29 = v27 + *(v28 + 48);
  *v29 = 0;
  *(v29 + 8) = 1;
  sub_10005EAD0(v26, v27 + *(v28 + 64), type metadata accessor for ThumbnailView);
  sub_10005F30C(v8, type metadata accessor for ThumbnailView);
  sub_100031844(v14, &qword_100120070, &qword_1000D6AB0);
  sub_10005F30C(v26, type metadata accessor for ThumbnailView);
  return sub_100031844(v12, &qword_100120070, &qword_1000D6AB0);
}

double sub_10005B920@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100019558(&qword_10011FE68, &qword_1000D68C0);
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = __chkstk_darwin(v4);
  v36 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = type metadata accessor for HeadlineCell(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  sub_10005DBC0(&v37);
  v12 = v37;
  sub_10005EAD0(a1, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeadlineCell);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v33 = swift_allocObject();
  sub_10005F2A4(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v13, type metadata accessor for HeadlineCell);
  v14 = sub_1000CA7A0();
  v31 = v15;
  v32 = v14;
  v29 = v8;
  sub_10005BCBC(v8);
  sub_10005EAD0(a1, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeadlineCell);
  v30 = swift_allocObject();
  sub_10005F2A4(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v13, type metadata accessor for HeadlineCell);
  sub_10005EAD0(a1, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeadlineCell);
  v16 = swift_allocObject();
  sub_10005F2A4(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v13, type metadata accessor for HeadlineCell);
  v18 = v34;
  v17 = v35;
  v19 = *(v34 + 16);
  v20 = v36;
  v19(v36, v8, v35);
  *a2 = v12;
  *(a2 + 1) = sub_10005F6BC;
  *(a2 + 2) = 0;
  *(a2 + 3) = sub_10005EB3C;
  v21 = v32;
  *(a2 + 4) = v33;
  *(a2 + 5) = v21;
  *(a2 + 6) = v31;
  v22 = sub_100019558(&qword_100120090, &qword_1000D6B08);
  v19(&a2[v22[12]], v20, v17);
  v23 = &a2[v22[16]];
  v24 = v30;
  *v23 = sub_10005EFF4;
  *(v23 + 1) = v24;
  v25 = &a2[v22[20]];
  *v25 = sub_10005F01C;
  *(v25 + 1) = v16;
  v26 = *(v18 + 8);

  v26(v29, v17);

  v26(v36, v17);

  return result;
}

uint64_t sub_10005BCBC@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = sub_1000CAAB0();
  v37 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v39 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v38 = &v35[-v5];
  v40 = sub_100019558(&qword_10011FE60, &qword_1000D68B8);
  __chkstk_darwin(v40);
  v7 = &v35[-v6];
  v8 = type metadata accessor for HeadlineCell(0);
  v9 = *(v8 + 36);
  v10 = sub_1000BB378();
  v11 = *(v1 + v9);
  if (v10)
  {
    [v11 sourceNameImageScale];
    v13 = v12;
    v14 = v10;
  }

  else
  {
    v15 = [v11 sourceName];
    if (v15)
    {
      v16 = v15;
      v14 = sub_1000CAD00();
      v13 = v17;
    }

    else
    {
      v14 = 0;
      v13 = 0xE000000000000000;
    }
  }

  v18 = v10 != 0;
  v19 = v1 + *(v8 + 44);
  v20 = *(v19 + 80);
  v21 = *(v19 + 88);
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = type metadata accessor for SourceView(0);
  *&v7[v24[5]] = v23;
  sub_100019558(&qword_10011EE58, &qword_1000D6600);
  swift_storeEnumTagMultiPayload();
  *v7 = KeyPath;
  v7[8] = 0;
  v25 = &v7[v24[6]];
  *v25 = v14;
  *(v25 + 1) = v13;
  v36 = v18;
  v25[16] = v18;
  v26 = &v7[v24[7]];
  *v26 = v20;
  v26[1] = v21;
  sub_10003FA04(v14, v13, v18);
  v27 = sub_1000CA5F0();
  v28 = swift_getKeyPath();
  v29 = &v7[*(v40 + 36)];
  *v29 = v28;
  v29[1] = v27;
  v30 = v38;
  sub_10005AD9C(v38);
  v31 = v37;
  v32 = v39;
  (*(v37 + 104))(v39, enum case for WidgetFamily.systemSmall(_:), v2);
  sub_10005F514(&qword_100120140, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_1000CAE80();
  sub_1000CAE80();
  v33 = *(v31 + 8);
  v33(v32, v2);
  v33(v30, v2);
  sub_100059CFC();
  sub_1000CA420();
  sub_10003FB24(v14, v13, v36);
  return sub_100031844(v7, &qword_10011FE60, &qword_1000D68B8);
}

uint64_t sub_10005C05C@<X0>(uint64_t a2@<X8>)
{
  v32 = sub_100019558(&qword_1001200A0, &qword_1000D6B18);
  v25 = *(v32 - 8);
  v3 = v25;
  v4 = __chkstk_darwin(v32);
  v31 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  type metadata accessor for HeadlineCell(0);
  sub_1000CA7A0();
  sub_1000C9CC0();
  v29 = v37;
  v30 = v35;
  v27 = v40;
  v28 = v39;
  v44 = 1;
  v43 = v36;
  v42 = v38;
  sub_1000C9CD0();
  v26 = v7;
  sub_10005C384(0, 1, v7);
  sub_10005C994(v41);
  v8 = *&v41[0];
  sub_1000CA7A0();
  sub_1000C9DC0();
  *&v33[55] = v41[3];
  *&v33[71] = v41[4];
  *&v33[87] = v41[5];
  *&v33[103] = v41[6];
  *&v33[7] = v41[0];
  *&v33[23] = v41[1];
  v34 = 1;
  *&v33[39] = v41[2];
  v9 = v44;
  v10 = v43;
  v11 = v42;
  v12 = *(v3 + 16);
  v13 = v31;
  v14 = v7;
  v15 = v32;
  v12(v31, v14, v32);
  *a2 = 0;
  *(a2 + 8) = v9;
  v16 = v29;
  *(a2 + 16) = v30;
  *(a2 + 24) = v10;
  *(a2 + 32) = v16;
  *(a2 + 40) = v11;
  v17 = v27;
  *(a2 + 48) = v28;
  *(a2 + 56) = v17;
  v18 = sub_100019558(&qword_1001200E0, &qword_1000D6B88);
  v12((a2 + v18[12]), v13, v15);
  *(a2 + v18[16]) = v8;
  v19 = a2 + v18[20];
  v20 = *&v33[80];
  *(v19 + 73) = *&v33[64];
  *(v19 + 89) = v20;
  *(v19 + 105) = *&v33[96];
  v21 = *&v33[16];
  *(v19 + 9) = *v33;
  *(v19 + 25) = v21;
  v22 = *&v33[48];
  *(v19 + 41) = *&v33[32];
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v19 + 120) = *&v33[111];
  *(v19 + 57) = v22;
  v23 = *(v25 + 8);

  v23(v26, v15);

  return (v23)(v13, v15);
}

uint64_t sub_10005C384@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v70) = a2;
  v69 = a1;
  v72 = a3;
  v4 = sub_1000C9600();
  v73 = *(v4 - 8);
  v74 = v4;
  __chkstk_darwin(v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1000C9DA0();
  v66 = *(v68 - 8);
  v7 = __chkstk_darwin(v68);
  v65 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v62 - v9;
  v10 = type metadata accessor for HeadlineCell(0);
  v11 = *(v3 + *(v10 + 44));
  v75 = sub_1000CA2F0();
  sub_100019558(&unk_10011E820, &unk_1000D5240);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000D45E0;
  v13 = *(v10 + 36);
  v67 = v3;
  v14 = *(v3 + v13);
  v15 = [v14 identifier];
  v16 = sub_1000CAD00();
  v18 = v17;

  *(v12 + 56) = &type metadata for String;
  v19 = sub_100024C50();
  *(v12 + 64) = v19;
  *(v12 + 32) = v16;
  *(v12 + 40) = v18;
  v20 = [v14 title];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1000CAD00();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v19;
  *(v12 + 72) = v22;
  *(v12 + 80) = v24;
  v76 = 0;
  v77 = 0xE000000000000000;
  v25 = [v14 language];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1000CAD00();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v85 = v27;
  v86 = v29;
  sub_100019558(&unk_100121BF0, &qword_1000DA940);
  sub_1000CB340();

  v30 = v76;
  v31 = v77;
  *(v12 + 136) = &type metadata for String;
  *(v12 + 144) = v19;
  *(v12 + 112) = v30;
  *(v12 + 120) = v31;
  sub_100024CA4();
  v32 = sub_1000CB160();
  v33 = sub_1000CB060();
  sub_1000C9BE0("creating titleView for headline with identifier: %@, with title: %@, with language: %@", 86, 2, &_mh_execute_header, v32, v33, v12);

  v34 = [v14 title];
  v71 = v6;
  v63 = v14;
  if (v34)
  {
    v35 = v34;
    sub_1000CAD00();
  }

  v36 = sub_1000CA380();
  v38 = v37;
  v40 = v39;

  sub_1000CA5E0();
  v41 = sub_1000CA340();
  v43 = v42;
  v45 = v44;
  v47 = v46;

  sub_100025894(v36, v38, v40 & 1);

  v48 = v64;
  sub_10004E81C(v64);
  v49 = v65;
  sub_1000C9D90();
  sub_10005F514(&qword_10011F7C8, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
  v50 = v68;
  v51 = sub_1000CB1F0();
  v52 = *(v66 + 8);
  v52(v49, v50);
  v52(v48, v50);
  if (v51)
  {
    v53 = 3;
  }

  else
  {
    v53 = v69;
  }

  v54 = v70 & ~v51;
  KeyPath = swift_getKeyPath();
  LODWORD(v68) = v45;
  LOBYTE(v85) = v45 & 1;
  v84 = v54 & 1;
  v69 = v41;
  v70 = v47;
  v76 = v41;
  v77 = v43;
  v78 = v45 & 1;
  v79 = v47;
  v80 = KeyPath;
  v81 = v53;
  v82 = v54 & 1;
  v83 = 0x4059000000000000;
  v56 = v63;
  v57 = [v63 language];
  if (v57)
  {
    v58 = v57;
    sub_1000CAD00();
  }

  v59 = v71;
  sub_1000C95F0();
  v60 = [v56 language];
  if (v60)
  {
  }

  sub_100019558(&qword_1001200B8, &unk_1000D6B60);
  sub_10005F17C();
  sub_1000CA4E0();

  (*(v73 + 8))(v59, v74);
  sub_100025894(v69, v43, v68 & 1);
}

uint64_t sub_10005C994@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000CA9F0();
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v63 - v8;
  v10 = sub_1000CA030();
  __chkstk_darwin(v10 - 8);
  v71 = sub_100019558(&qword_1001200E8, &qword_1000D6B90);
  v11 = __chkstk_darwin(v71);
  v70 = (&v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v14 = &v63 - v13;
  v15 = type metadata accessor for HeadlineCell(0);
  v16 = (v1 + v15[8]);
  v17 = *v16;
  v18 = v16[1];
  *&v72 = v17;
  *(&v72 + 1) = v18;
  sub_100019558(&qword_1001200B0, &qword_1000D6B28);
  sub_1000CA6D0();
  v19 = *v84;
  v20 = (v1 + v15[7]);
  v21 = *v20;
  v22 = v20[1];
  *&v72 = v21;
  *(&v72 + 1) = v22;
  sub_1000CA6D0();
  if (*v84 > v19)
  {
    result = sub_1000CA700();
    *a1 = result;
    return result;
  }

  v67 = a1;
  v24 = v15[9];
  v25 = *(v1 + v24);
  if ([*(v2 + v24) isAIGenerated])
  {
    sub_1000CA020();
    v85._object = 0x80000001000E3CC0;
    v85._countAndFlagsBits = 0xD000000000000010;
    sub_1000CA010(v85);
    v86._countAndFlagsBits = sub_1000BB534();
    sub_1000CA000(v86);

    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    sub_1000CA010(v87);
    sub_1000CA050();
    if (qword_10011CFA0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v26 = static NSBundle.newsToday2;
    v27 = sub_1000CA400();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = sub_1000CA5F0();
    v35 = *(v2 + v15[11] + 64);
    v36 = sub_1000CA2F0();
    *v14 = sub_1000CA0D0();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v37 = sub_100019558(&qword_100120108, &qword_1000D6BA8);
    sub_10005D574(v27, v29, v31 & 1, v33, v36, v34, &v14[*(v37 + 44)]);

    sub_100025894(v27, v29, v31 & 1);

    sub_10001B1BC(&qword_100120110, &qword_1001200E8, &qword_1000D6B90, &protocol conformance descriptor for VStack<A>);
LABEL_7:
    result = sub_1000CA700();
    *v67 = result;
    return result;
  }

  v38 = [v25 storyType];
  if (!v38)
  {
    if ([v25 isBundlePaid])
    {
      v51 = *(v2 + v15[11] + 64);
      sub_1000CA2F0();
      v52 = sub_1000CA0D0();
      v77 = 1;
      sub_10005D880(0x654EAF80E2BFA3EFLL, 0xAB000000002B7377, v2, &v72);
      v80 = *&v73[16];
      v81 = *&v73[32];
      v82 = *&v73[48];
      v83 = *&v73[64];
      v78 = v72;
      v79 = *v73;
      v84[2] = *&v73[16];
      v84[3] = *&v73[32];
      v84[4] = *&v73[48];
      v84[5] = *&v73[64];
      v84[0] = v72;
      v84[1] = *v73;
      sub_10002DFB4(&v78, &v75, &qword_1001200F0, &qword_1000D6B98);
      sub_100031844(v84, &qword_1001200F0, &qword_1000D6B98);

      *&v76[87] = v83;
      *&v76[71] = v82;
      *&v76[55] = v81;
      *&v76[39] = v80;
      *&v76[23] = v79;
      *&v76[7] = v78;
      *&v73[49] = *&v76[48];
      *&v73[65] = *&v76[64];
      *v74 = *&v76[80];
      *&v73[1] = *v76;
      *&v73[17] = *&v76[16];
      v72 = v52;
      v73[0] = v77;
      *&v74[15] = *(&v83 + 1);
      *&v73[33] = *&v76[32];
      sub_100019558(&qword_1001200F8, &qword_1000D6BA0);
      sub_10001B1BC(&qword_100120100, &qword_1001200F8, &qword_1000D6BA0, &protocol conformance descriptor for VStack<A>);
    }

    goto LABEL_7;
  }

  v63 = v24;
  v39 = v38;
  v40 = sub_1000CAD00();
  v42 = v41;

  *&v72 = v40;
  *(&v72 + 1) = v42;
  sub_100027B64();
  v43 = sub_1000CA410();
  v64 = v44;
  v65 = v43;
  v46 = v45;
  v66 = v47;
  sub_10005AB94(v9);
  sub_1000CA9E0();
  sub_10005F514(&qword_10011F770, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  v48 = v69;
  LOBYTE(v39) = sub_1000CAC90();
  v49 = *(v68 + 8);
  v49(v7, v48);
  v49(v9, v48);
  if (v39)
  {
    v50 = sub_1000CA5F0();
  }

  else
  {
    v50 = sub_1000BB6C8();
  }

  v53 = v50;
  v54 = v2;
  v55 = v67;
  v56 = *(v54 + v15[11] + 64);
  v57 = sub_1000CA2F0();
  v58 = sub_1000CA0D0();
  v59 = v70;
  *v70 = v58;
  v59[1] = 0;
  *(v59 + 16) = 1;
  v60 = sub_100019558(&qword_100120108, &qword_1000D6BA8);
  v62 = v64;
  v61 = v65;
  sub_10005D574(v65, v64, v46 & 1, v66, v57, v53, v59 + *(v60 + 44));

  sub_100025894(v61, v62, v46 & 1);

  sub_10001B1BC(&qword_100120110, &qword_1001200E8, &qword_1000D6B90, &protocol conformance descriptor for VStack<A>);
  result = sub_1000CA700();
  *v55 = result;
  return result;
}

uint64_t sub_10005D17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  *a6 = sub_1000CA0E0();
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  sub_100019558(a3, a4);
  return a5(a2, a1);
}

uint64_t sub_10005D1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HeadlineCell(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v39 = sub_100019558(&qword_1001200A0, &qword_1000D6B18);
  v30 = *(v39 - 8);
  v7 = v30;
  v8 = __chkstk_darwin(v39);
  v38 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  sub_1000CA7A0();
  sub_1000C9CC0();
  v36 = v42;
  v37 = v40;
  v34 = v45;
  v35 = v44;
  v48 = 1;
  v47 = v41;
  v46 = v43;
  sub_1000C9CD0();
  v33 = v11;
  sub_10005C384(2, 0, v11);
  v12 = sub_1000CA5A0();
  sub_10005EAD0(a1, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeadlineCell);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_10005F2A4(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for HeadlineCell);
  v15 = sub_1000CA7A0();
  v31 = v16;
  v32 = v15;
  LOBYTE(v13) = v48;
  v17 = v47;
  v18 = v46;
  v19 = *(v7 + 16);
  v20 = v38;
  v21 = v39;
  v19(v38, v11, v39);
  *a2 = 0;
  *(a2 + 8) = v13;
  v22 = v36;
  *(a2 + 16) = v37;
  *(a2 + 24) = v17;
  *(a2 + 32) = v22;
  *(a2 + 40) = v18;
  v23 = v34;
  *(a2 + 48) = v35;
  *(a2 + 56) = v23;
  v24 = sub_100019558(&qword_1001200A8, &qword_1000D6B20);
  v19((a2 + *(v24 + 48)), v20, v21);
  v25 = (a2 + *(v24 + 64));
  *v25 = v12;
  v25[1] = sub_10005F6BC;
  v25[2] = 0;
  v25[3] = sub_10005F0D8;
  v26 = v31;
  v27 = v32;
  v25[4] = v14;
  v25[5] = v27;
  v25[6] = v26;
  v28 = *(v30 + 8);

  v28(v33, v21);

  return (v28)(v20, v21);
}

uint64_t sub_10005D574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a5;
  v34 = a6;
  v32 = a3;
  v36 = a7;
  v10 = sub_100019558(&qword_100120118, &qword_1000D6BB0);
  v11 = v10 - 8;
  v12 = __chkstk_darwin(v10);
  v35 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v31[-v14];
  v16 = &v31[*(sub_100019558(&qword_100120120, &qword_1000D6BB8) + 36) - v14];
  v17 = *(sub_100019558(&qword_100120128, &qword_1000D6BC0) + 28);
  v18 = enum case for Text.Case.uppercase(_:);
  v19 = sub_1000CA370();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v16 + v17, v18, v19);
  (*(v20 + 56))(v16 + v17, 0, 1, v19);
  *v16 = swift_getKeyPath();
  *v15 = a1;
  *(v15 + 1) = a2;
  LOBYTE(v19) = v32 & 1;
  v15[16] = v32 & 1;
  *(v15 + 3) = a4;
  KeyPath = swift_getKeyPath();
  v22 = &v15[*(sub_100019558(&qword_100120130, &qword_1000D6C28) + 36)];
  *v22 = KeyPath;
  v23 = v34;
  v22[1] = v33;
  *&v15[*(v11 + 44)] = v23;
  sub_100048B18(a1, a2, v19);

  sub_1000CA7A0();
  sub_1000C9CC0();
  v33 = v39;
  v34 = v37;
  v24 = v41;
  v25 = v42;
  v45 = 1;
  v44 = v38;
  v43 = v40;
  v26 = v35;
  sub_10002DFB4(v15, v35, &qword_100120118, &qword_1000D6BB0);
  LOBYTE(v17) = v45;
  LOBYTE(v20) = v44;
  LOBYTE(a2) = v43;
  v27 = v36;
  sub_10002DFB4(v26, v36, &qword_100120118, &qword_1000D6BB0);
  v28 = v27 + *(sub_100019558(&qword_100120138, &unk_1000D6C30) + 48);
  *v28 = 0;
  *(v28 + 8) = v17;
  v29 = v33;
  *(v28 + 16) = v34;
  *(v28 + 24) = v20;
  *(v28 + 32) = v29;
  *(v28 + 40) = a2;
  *(v28 + 48) = v24;
  *(v28 + 56) = v25;
  sub_100031844(v15, &qword_100120118, &qword_1000D6BB0);
  return sub_100031844(v26, &qword_100120118, &qword_1000D6BB0);
}

uint64_t sub_10005D880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42[1] = a4;
  v8 = sub_1000CA9F0();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v42 - v13;
  v51 = a1;
  v52 = a2;
  sub_100027B64();
  v49 = sub_1000CB1B0();
  v50 = v15;
  v16 = sub_1000CA410();
  v18 = v17;
  LOBYTE(a1) = v19;
  v20 = sub_1000CA380();
  v43 = v21;
  v44 = v20;
  v23 = v22;
  v45 = v24;
  sub_100025894(v16, v18, a1 & 1);

  sub_10005AB94(v14);
  sub_1000CA9E0();
  sub_10005F514(&qword_10011F770, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  LOBYTE(v16) = sub_1000CAC90();
  v25 = *(v9 + 8);
  v25(v12, v8);
  v25(v14, v8);
  if (v16)
  {
    v26 = sub_1000CA5F0();
  }

  else
  {
    v27 = [objc_opt_self() systemPinkColor];
    v26 = sub_1000CA610();
  }

  v51 = v26;
  v29 = v43;
  v28 = v44;
  v30 = sub_1000CA350();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_100025894(v28, v29, v23 & 1);

  sub_1000CA7A0();
  sub_1000C9CC0();
  v37 = v51;
  v38 = v52;
  v39 = v53;
  v40 = v54;
  LOBYTE(v49) = 1;
  v48 = v52;
  v47 = v54;
  v46 = v34 & 1;
  *a5 = v30;
  *(a5 + 8) = v32;
  *(a5 + 16) = v34 & 1;
  *(a5 + 24) = v36;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  *(a5 + 48) = v37;
  *(a5 + 56) = v38;
  *(a5 + 64) = v39;
  *(a5 + 72) = v40;
  *(a5 + 80) = v55;
  sub_100048B18(v30, v32, v34 & 1);

  sub_100025894(v30, v32, v34 & 1);
}

uint64_t sub_10005DBC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100019558(&qword_1001200E8, &qword_1000D6B90);
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v6 = type metadata accessor for HeadlineCell(0);
  v7 = *(v1 + *(v6 + 36));
  if ([v7 isAIGenerated] || !objc_msgSend(v7, "isBundlePaid"))
  {
    v10 = sub_1000CA5F0();
    v11 = *(v1 + *(v6 + 44) + 64);
    v12 = sub_1000CA2F0();
    *v5 = sub_1000CA0D0();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v13 = sub_100019558(&qword_100120108, &qword_1000D6BA8);
    sub_10005D574(65, 0xE100000000000000, 0, _swiftEmptyArrayStorage, v12, v10, &v5[*(v13 + 44)]);

    sub_10001B1BC(&qword_100120110, &qword_1001200E8, &qword_1000D6B90, &protocol conformance descriptor for VStack<A>);
  }

  else
  {
    v8 = *(v1 + *(v6 + 44) + 64);
    sub_1000CA2F0();
    v9 = sub_1000CA0D0();
    v21 = 1;
    sub_10005D880(0x654EAF80E2BFA3EFLL, 0xAB000000002B7377, v1, &v16);
    v24 = *&v17[16];
    v25 = *&v17[32];
    v26 = *&v17[48];
    v27 = *&v17[64];
    v22 = v16;
    v23 = *v17;
    v28[2] = *&v17[16];
    v28[3] = *&v17[32];
    v28[4] = *&v17[48];
    v28[5] = *&v17[64];
    v28[0] = v16;
    v28[1] = *v17;
    sub_10002DFB4(&v22, &v19, &qword_1001200F0, &qword_1000D6B98);
    sub_100031844(v28, &qword_1001200F0, &qword_1000D6B98);

    *&v20[87] = v27;
    *&v20[71] = v26;
    *&v20[55] = v25;
    *&v20[39] = v24;
    *&v20[23] = v23;
    *&v20[7] = v22;
    *&v17[49] = *&v20[48];
    *&v17[65] = *&v20[64];
    *v18 = *&v20[80];
    *&v17[1] = *v20;
    *&v17[17] = *&v20[16];
    v16 = v9;
    v17[0] = v21;
    *&v18[15] = *(&v27 + 1);
    *&v17[33] = *&v20[32];
    sub_100019558(&qword_1001200F8, &qword_1000D6BA0);
    sub_10001B1BC(&qword_100120100, &qword_1001200F8, &qword_1000D6BA0, &protocol conformance descriptor for VStack<A>);
  }

  result = sub_1000CA700();
  *a1 = result;
  return result;
}

uint64_t sub_10005DED0(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for HeadlineCell(0);
  sub_100019558(&qword_1001200B0, &qword_1000D6B28);
  return sub_1000CA6E0();
}

uint64_t sub_10005DF48@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1000CA590();
  result = sub_1000C9CD0();
  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_10005DF88(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for HeadlineCell(0);
  sub_100019558(&qword_1001200B0, &qword_1000D6B28);
  return sub_1000CA6E0();
}

void *sub_10005E00C(double *a1, void *(*a2)(double *__return_ptr))
{
  v3 = *a1;
  result = a2(&v6);
  v5 = v6;
  if (v3 > v6)
  {
    v5 = v3;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_10005E068@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ThumbnailView(0);
  if ((sub_1000BB1C8() & 1) == 0)
  {
    if (*(v1 + v4[9]) != 1)
    {
      sub_10005E218(&v18);
      goto LABEL_9;
    }

    v6 = sub_1000CA7A0();
    v8 = v7;
    sub_10005E218(&v18);
    v9 = v18;
    v10 = *(v1 + v4[8]);
    *&v18 = v6;
    *(&v18 + 1) = v8;
    *&v19 = v9;
    *(&v19 + 1) = 0xD000000000000017;
    v20 = 0x80000001000E3D20;
    v21 = v10;
    goto LABEL_7;
  }

  sub_10005E6F0(v1);
  if ((v5 & 1) == 0)
  {
    v11 = sub_1000CA7A0();
    v13 = v12;
    sub_10005E8C0(v2, &v18);
    v14 = v18;
    v15 = v19;
    v16 = BYTE8(v19);
    *&v18 = v11;
    *(&v18 + 1) = v13;
    v19 = v14;
    v20 = v15;
    v21 = v16;
LABEL_7:
    sub_100019558(&qword_100120158, &unk_1000D6CB0);
    sub_10001B1BC(&qword_100120160, &qword_100120158, &unk_1000D6CB0, &protocol conformance descriptor for ZStack<A>);
    goto LABEL_9;
  }

  *&v18 = *(v1 + v4[7]);
  sub_10005F250();

LABEL_9:
  result = sub_1000CA700();
  *a1 = result;
  return result;
}

uint64_t sub_10005E218@<X0>(uint64_t *a1@<X8>)
{
  v36 = a1;
  v2 = sub_100019558(&qword_10011F1E8, &unk_1000D62A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v5 = sub_1000CA640();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100019558(&qword_10011F7B0, &qword_1000D6CC0);
  v8 = __chkstk_darwin(v34);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v31 - v10;
  v12 = sub_100019558(&qword_100120168, &qword_1000D6CC8);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - v13;
  v15 = type metadata accessor for ImageStore.Key(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for ThumbnailView(0) + 20);
  v35 = v1;
  v20 = v1 + v19;
  sub_1000BBC3C(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100031844(v14, &qword_100120168, &qword_1000D6CC8);
LABEL_5:
    result = sub_1000CA700();
    goto LABEL_6;
  }

  sub_10005F2A4(v14, v18, type metadata accessor for ImageStore.Key);
  v21 = sub_1000BE124(v18, *(v20 + 8));
  sub_10005F30C(v18, type metadata accessor for ImageStore.Key);
  if (!v21)
  {
    goto LABEL_5;
  }

  v22 = v21;
  sub_1000CA620();
  v23 = v32;
  (*(v32 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v5);
  sub_1000CA6A0();

  (*(v23 + 8))(v7, v5);
  sub_1000CAA00();
  v24 = sub_1000CAA10();
  (*(*(v24 - 8) + 56))(v4, 0, 1, v24);
  sub_1000CA690();

  sub_100031844(v4, &qword_10011F1E8, &unk_1000D62A0);
  v25 = &v11[*(sub_100019558(&qword_10011F1F0, &qword_1000D62C0) + 36)];
  *v25 = 0;
  *(v25 + 4) = 257;
  sub_1000CA7A0();
  sub_1000C9CC0();
  v26 = v33;
  v27 = &v11[*(v34 + 36)];
  v28 = v38;
  *v27 = v37;
  *(v27 + 1) = v28;
  *(v27 + 2) = v39;
  sub_10002DFB4(v11, v26, &qword_10011F7B0, &qword_1000D6CC0);
  sub_10004EF44();
  v29 = sub_1000CA700();

  sub_100031844(v11, &qword_10011F7B0, &qword_1000D6CC0);
  result = v29;
LABEL_6:
  *v36 = result;
  return result;
}

uint64_t sub_10005E6F0(uint64_t a1)
{
  v2 = sub_100019558(&qword_100120168, &qword_1000D6CC8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for ImageStore.Key(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ThumbnailView(0);
  v10 = a1 + *(v9 + 20);
  sub_1000BBC3C(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100031844(v4, &qword_100120168, &qword_1000D6CC8);
  }

  else
  {
    sub_10005F2A4(v4, v8, type metadata accessor for ImageStore.Key);
    v11 = sub_1000BE124(v8, *(v10 + 8));
    sub_10005F30C(v8, type metadata accessor for ImageStore.Key);
    if (v11)
    {

      return *(a1 + *(v9 + 24) + 8);
    }
  }

  return 0;
}

void sub_10005E8C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005E218(&v11);
  v4 = v11;
  v5 = type metadata accessor for ThumbnailView(0);
  v6 = [*(a1 + *(v5 + 20)) identifier];
  v7 = sub_1000CAD00();
  v9 = v8;

  v10 = *(a1 + *(v5 + 32));
  *a2 = v4;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
}

uint64_t sub_10005E960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005E068(v20);
  v19 = v20[0];
  sub_1000CA7A0();
  sub_1000C9CC0();
  v3 = v20[1];
  v4 = v21;
  v5 = v22;
  v6 = v23;
  v7 = v24;
  v8 = v25;
  v9 = (a2 + *(sub_100019558(&qword_100120148, &unk_1000D6CA0) + 36));
  v10 = *(sub_1000C9DB0() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = sub_1000CA060();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __asm { FMOV            V0.2D, #8.0 }

  *v9 = _Q0;
  result = sub_100019558(&qword_10011F7D0, &qword_1000D62C8);
  *&v9[*(result + 36)] = 256;
  *a2 = v19;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_10005EAD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005EB54()
{
  v1 = v0;
  v2 = type metadata accessor for HeadlineCell(0);
  v27 = *(*(v2 - 1) + 80);
  v25 = *(*(v2 - 1) + 64);
  v26 = (v27 + 16) & ~v27;
  v3 = v0 + v26;
  sub_100019558(&qword_10011F778, &unk_1000D6240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1000C9DA0();
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  else
  {
  }

  v5 = v2[5];
  sub_100019558(&qword_10011EE58, &qword_1000D6600);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000CA9F0();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  v7 = v2[6];
  sub_100019558(&qword_100120088, &qword_1000D6B00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1000CAAB0();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  v9 = v3 + v2[9];
  swift_unknownObjectRelease();

  v10 = type metadata accessor for Item.Headline(0);
  v11 = *(v10 + 24);
  v12 = sub_1000C9480();
  v13 = *(v12 - 8);
  v28 = *(v13 + 48);
  if (!v28(v9 + v11, 1, v12))
  {
    (*(v13 + 8))(v9 + v11, v12);
  }

  v14 = (v9 + *(v10 + 28));
  if (v14[1])
  {
  }

  v15 = (v3 + v2[10]);

  v16 = type metadata accessor for TodayContent(0);
  v17 = v15 + *(v16 + 20);
  v18 = type metadata accessor for Banner(0);
  if (!(*(*(v18 - 1) + 48))(v17, 1, v18))
  {
    v24 = v1;

    v19 = v18[7];
    if (!v28(&v17[v19], 1, v12))
    {
      (*(v13 + 8))(&v17[v19], v12);
    }

    v20 = *&v17[v18[9]];
    if (v20 != 1)
    {
    }

    sub_1000375D8(*&v17[v18[10]], *&v17[v18[10] + 8]);
    v1 = v24;
  }

  swift_unknownObjectRelease();
  v21 = *(v16 + 36);
  if (!v28(v15 + v21, 1, v12))
  {
    (*(v13 + 8))(v15 + v21, v12);
  }

  v22 = (v3 + v2[11]);

  return _swift_deallocObject(v1, v26 + v25, v27 | 7);
}

uint64_t sub_10005F0F0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for HeadlineCell(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_10005F17C()
{
  result = qword_1001200C0;
  if (!qword_1001200C0)
  {
    sub_1000195A0(&qword_1001200B8, &unk_1000D6B60);
    sub_10003FB3C();
    sub_10001B1BC(&qword_1001200C8, &qword_1001200D0, &qword_1000D6B78, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001200C0);
  }

  return result;
}

unint64_t sub_10005F250()
{
  result = qword_100120150;
  if (!qword_100120150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120150);
  }

  return result;
}

uint64_t sub_10005F2A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005F30C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for MediaIndicatorDisplayStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MediaIndicatorDisplayStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_10005F3DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005F3F8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

unint64_t sub_10005F42C()
{
  result = qword_100120170;
  if (!qword_100120170)
  {
    sub_1000195A0(&qword_100120178, &qword_1000D6D50);
    sub_10001B1BC(&qword_100120050, &qword_100120040, &qword_1000D6A88, &protocol conformance descriptor for VStack<A>);
    sub_10005F514(&qword_10011FCB8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120170);
  }

  return result;
}