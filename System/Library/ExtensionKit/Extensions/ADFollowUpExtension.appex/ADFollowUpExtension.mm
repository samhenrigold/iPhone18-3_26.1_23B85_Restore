uint64_t sub_1000016AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000017C4(&qword_10001C2F0, &unk_100011040);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
  }

  else
  {
    v10 = sub_100010234();
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = a1 + a3[8];
      v14 = *(v13 + 8);
      v15 = *v13 & 0x7FFFFFFF;
      if ((v14 & 0xF000000000000007) != 0)
      {
        return (v15 + 1);
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

uint64_t sub_1000017C4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001820(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000017C4(&qword_10001C2F0, &unk_100011040);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_100010234();
    if (*(*(result - 8) + 84) != a3)
    {
      v14 = (a1 + a4[8]);
      *v14 = (a2 - 1);
      v14[1] = 1;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_1000019BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 sub_100001A24(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001A30(uint64_t a1, int a2)
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

uint64_t sub_100001A50(uint64_t result, int a2, int a3)
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

__n128 sub_100001A98@<Q0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_1000017C4(&qword_10001C3B8, &qword_1000110F8);
  __chkstk_darwin(v2);
  v4 = &v19 - v3;
  v19 = sub_1000017C4(&qword_10001C3C0, &qword_100011100);
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v19 - v6;
  *v4 = sub_100010404();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v8 = &v4[*(sub_1000017C4(&qword_10001C3C8, &qword_100011108) + 44)];
  v21 = v1;
  sub_1000104E4();
  sub_1000017C4(&qword_10001C3D0, &qword_100011110);
  sub_10000BC5C(&qword_10001C3D8, &qword_10001C3D0, &qword_100011110, &protocol conformance descriptor for TupleView<A>);
  sub_100010294();
  v9 = sub_100010404();
  v10 = &v8[*(sub_1000017C4(&qword_10001C3E0, &qword_100011118) + 36)];
  sub_1000066A4(v1, v10);
  sub_1000102A4();
  v11 = sub_100010564();
  v12 = sub_100010314();
  v13 = v10 + *(sub_1000017C4(&qword_10001C3E8, &qword_100011120) + 36);
  *v13 = v12;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  *(v13 + 17) = v11;
  *(v13 + 24) = v9;
  sub_10000BC5C(&qword_10001C3F0, &qword_10001C3B8, &qword_1000110F8, &protocol conformance descriptor for VStack<A>);
  sub_100010634();
  sub_10000B860(v4, &qword_10001C3B8, &qword_1000110F8);
  sub_100010794();
  sub_100010334();
  v14 = v20;
  (*(v5 + 32))(v20, v7, v19);
  v15 = v14 + *(sub_1000017C4(&qword_10001C3F8, &qword_100011128) + 36);
  v16 = v27;
  *(v15 + 64) = v26;
  *(v15 + 80) = v16;
  *(v15 + 96) = v28;
  v17 = v23;
  *v15 = v22;
  *(v15 + 16) = v17;
  result = v25;
  *(v15 + 32) = v24;
  *(v15 + 48) = result;
  return result;
}

uint64_t sub_100001DF0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v87 = type metadata accessor for DeveloperTrustSheetButtons(0);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v74 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000017C4(&qword_10001C430, &qword_100011180);
  v5 = __chkstk_darwin(v4 - 8);
  v89 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v88 = &v72 - v7;
  v73 = type metadata accessor for DeveloperTrustSheetView(0);
  v77 = *(v73 - 8);
  __chkstk_darwin(v73);
  v83 = v8;
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100010304();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v72 - v15;
  v17 = sub_1000017C4(&qword_10001C438, &qword_100011188);
  __chkstk_darwin(v17 - 8);
  v19 = &v72 - v18;
  v75 = sub_1000017C4(&qword_10001C440, &qword_100011190);
  __chkstk_darwin(v75);
  *&v84 = &v72 - v20;
  v82 = sub_1000017C4(&qword_10001C448, &qword_100011198);
  v21 = __chkstk_darwin(v82);
  v85 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v81 = &v72 - v24;
  __chkstk_darwin(v23);
  v93 = &v72 - v25;
  sub_100007734(type metadata accessor for DeveloperTrustSheetView, v16);
  v26 = *(v11 + 104);
  LODWORD(v92) = enum case for DynamicTypeSize.large(_:);
  v91 = v11 + 104;
  v79 = v26;
  v26(v14);
  v76 = sub_100009948(&qword_10001C408, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v27 = sub_100010804();
  v28 = *(v11 + 8);
  v28(v14, v10);
  v80 = v11 + 8;
  v78 = v28;
  v28(v16, v10);
  if (v27)
  {
    v29 = sub_100010414();
  }

  else
  {
    v29 = sub_100010404();
  }

  *v19 = v29;
  *(v19 + 1) = 0x4036000000000000;
  v19[16] = 0;
  v30 = sub_1000017C4(&qword_10001C450, &qword_1000111A0);
  sub_100002824(a1, &v19[*(v30 + 44)]);
  sub_100009990(a1, v9, type metadata accessor for DeveloperTrustSheetView);
  v31 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v32 = swift_allocObject();
  v83 = type metadata accessor for DeveloperTrustSheetView;
  sub_100009A28(v9, v32 + v31, type metadata accessor for DeveloperTrustSheetView);
  v33 = v84;
  sub_10000B024(v19, v84, &qword_10001C438, &qword_100011188);
  v34 = (v33 + *(v75 + 36));
  *v34 = sub_10000BD98;
  v34[1] = 0;
  v34[2] = sub_1000099FC;
  v34[3] = v32;
  sub_100007734(type metadata accessor for DeveloperTrustSheetView, v16);
  v35 = v79;
  v79(v14, v92, v10);
  sub_100010804();
  v36 = v78;
  v78(v14, v10);
  v36(v16, v10);
  LOBYTE(v32) = sub_100010504();
  sub_100010284();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v33;
  v46 = v81;
  sub_10000B024(v45, v81, &qword_10001C440, &qword_100011190);
  v47 = v46 + *(v82 + 36);
  *v47 = v32;
  *(v47 + 8) = v38;
  *(v47 + 16) = v40;
  *(v47 + 24) = v42;
  *(v47 + 32) = v44;
  *(v47 + 40) = 0;
  sub_10000B024(v46, v93, &qword_10001C448, &qword_100011198);
  sub_100007734(v83, v16);
  v35(v14, v92, v10);
  LOBYTE(v32) = sub_100010804();
  v36(v14, v10);
  v36(v16, v10);
  if (v32)
  {
    v48 = *(a1 + 4);
    v49 = a1[1];
    v98 = *a1;
    v99 = v49;
    v100 = v48;
    sub_1000017C4(&qword_10001C410, &qword_100011138);
    sub_1000106F4();
    v50 = v95;
    v91 = v94;
    v92 = v96;
    v84 = v97;
    v51 = *(a1 + 6);
    LOBYTE(v98) = *(a1 + 40);
    *(&v98 + 1) = v51;
    sub_1000017C4(&qword_10001C418, &qword_100011140);
    sub_1000106F4();
    v52 = v94;
    v53 = v95;
    v54 = v96;
    v55 = v73;
    v56 = *(v73 + 28);
    v57 = v87;
    v58 = *(v87 + 28);
    v59 = sub_100010234();
    v60 = v74;
    (*(*(v59 - 8) + 16))(&v74[v58], a1 + v56, v59);
    v61 = a1 + *(v55 + 32);
    swift_unknownObjectWeakLoadStrong();
    v62 = *(v61 + 1);
    *(v60 + *(v57 + 24)) = swift_getKeyPath();
    sub_1000017C4(&qword_10001C420, &qword_100011178);
    swift_storeEnumTagMultiPayload();
    *v60 = v91;
    *(v60 + 8) = v50;
    v63 = v84;
    *(v60 + 16) = v92;
    *(v60 + 32) = v63;
    *(v60 + 48) = v52;
    *(v60 + 56) = v53;
    *(v60 + 64) = v54;
    *(v60 + *(v57 + 32) + 8) = v62;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v64 = v88;
    sub_100009A28(v60, v88, type metadata accessor for DeveloperTrustSheetButtons);
    v65 = 0;
  }

  else
  {
    v65 = 1;
    v64 = v88;
    v57 = v87;
  }

  (*(v86 + 56))(v64, v65, 1, v57);
  v66 = v93;
  v67 = v85;
  sub_10000A150(v93, v85, &qword_10001C448, &qword_100011198);
  v68 = v89;
  sub_10000A150(v64, v89, &qword_10001C430, &qword_100011180);
  v69 = v90;
  sub_10000A150(v67, v90, &qword_10001C448, &qword_100011198);
  v70 = sub_1000017C4(&qword_10001C458, &qword_1000111A8);
  sub_10000A150(v68, v69 + *(v70 + 48), &qword_10001C430, &qword_100011180);
  sub_10000B860(v64, &qword_10001C430, &qword_100011180);
  sub_10000B860(v66, &qword_10001C448, &qword_100011198);
  sub_10000B860(v68, &qword_10001C430, &qword_100011180);
  return sub_10000B860(v67, &qword_10001C448, &qword_100011198);
}

uint64_t sub_100002824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a1;
  v120 = a2;
  v2 = sub_1000017C4(&qword_10001C480, &qword_1000111B8);
  __chkstk_darwin(v2 - 8);
  v113 = (&v106 - v3);
  v112 = sub_1000017C4(&qword_10001C488, &qword_1000111C0);
  __chkstk_darwin(v112);
  v117 = &v106 - v4;
  v116 = sub_1000017C4(&qword_10001C490, &qword_1000111C8);
  v5 = __chkstk_darwin(v116);
  v119 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v114 = &v106 - v8;
  __chkstk_darwin(v7);
  v118 = &v106 - v9;
  v10 = sub_100010304();
  v125 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v122 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v121 = &v106 - v13;
  v14 = sub_1000017C4(&qword_10001C498, &qword_1000111D0);
  __chkstk_darwin(v14 - 8);
  v110 = (&v106 - v15);
  v109 = sub_1000017C4(&qword_10001C4A0, &qword_1000111D8);
  v16 = __chkstk_darwin(v109);
  v115 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v108 = &v106 - v19;
  __chkstk_darwin(v18);
  v124 = &v106 - v20;
  v21 = sub_100010694();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000017C4(&qword_10001C4A8, &qword_1000111E0);
  v26 = v25 - 8;
  __chkstk_darwin(v25);
  v28 = &v106 - v27;
  v29 = sub_1000017C4(&qword_10001C4B0, &qword_1000111E8);
  v30 = v29 - 8;
  v31 = __chkstk_darwin(v29);
  v111 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = &v106 - v34;
  __chkstk_darwin(v33);
  v123 = &v106 - v36;
  sub_1000106A4();
  (*(v22 + 104))(v24, enum case for Image.ResizingMode.stretch(_:), v21);
  v37 = sub_1000106B4();

  (*(v22 + 8))(v24, v21);
  v38 = v107;
  sub_1000107A4();
  sub_1000102B4();
  LOBYTE(v127) = 1;
  *&v126[3] = *&v126[27];
  *&v126[11] = *&v126[35];
  *&v126[19] = *&v126[43];
  v39 = &v28[*(sub_1000017C4(&qword_10001C4B8, &qword_1000111F0) + 36)];
  v40 = *(sub_1000017C4(&qword_10001C4C0, &qword_1000111F8) + 28);
  sub_100010424();
  v41 = sub_100010434();
  (*(*(v41 - 8) + 56))(v39 + v40, 0, 1, v41);
  *v39 = swift_getKeyPath();
  *v28 = v37;
  *(v28 + 1) = 0;
  *(v28 + 8) = 257;
  v42 = *&v126[8];
  *(v28 + 18) = *v126;
  *(v28 + 34) = v42;
  *(v28 + 50) = *&v126[16];
  *(v28 + 8) = *&v126[23];
  *&v28[*(v26 + 44)] = sub_100010644();
  LOBYTE(v37) = sub_100010514();
  v43 = [objc_opt_self() currentDevice];
  [v43 userInterfaceIdiom];

  sub_100010284();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_10000B024(v28, v35, &qword_10001C4A8, &qword_1000111E0);
  v52 = &v35[*(v30 + 44)];
  *v52 = v37;
  *(v52 + 1) = v45;
  *(v52 + 2) = v47;
  *(v52 + 3) = v49;
  *(v52 + 4) = v51;
  v52[40] = 0;
  sub_10000B024(v35, v123, &qword_10001C4B0, &qword_1000111E8);
  v53 = v121;
  sub_100007734(type metadata accessor for DeveloperTrustSheetView, v121);
  v54 = enum case for DynamicTypeSize.large(_:);
  v55 = v125;
  v56 = v122;
  v106 = *(v125 + 104);
  v106(v122, enum case for DynamicTypeSize.large(_:), v10);
  sub_100009948(&qword_10001C408, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v57 = v56;
  v58 = v53;
  LOBYTE(v56) = sub_100010804();
  v59 = *(v55 + 8);
  v59(v57, v10);
  v125 = v55 + 8;
  v59(v58, v10);
  if (v56)
  {
    v60 = sub_100010414();
  }

  else
  {
    v60 = sub_100010404();
  }

  v61 = v110;
  *v110 = v60;
  *(v61 + 8) = 0x4010000000000000;
  *(v61 + 16) = 0;
  v62 = sub_1000017C4(&qword_10001C4C8, &qword_100011230);
  sub_1000034EC(v38, (v61 + *(v62 + 44)));
  v63 = sub_1000104F4();
  sub_1000084A4(type metadata accessor for DeveloperTrustSheetView);
  sub_100010284();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = v108;
  sub_10000B024(v61, v108, &qword_10001C498, &qword_1000111D0);
  v73 = v72 + *(v109 + 36);
  *v73 = v63;
  *(v73 + 8) = v65;
  *(v73 + 16) = v67;
  *(v73 + 24) = v69;
  *(v73 + 32) = v71;
  *(v73 + 40) = 0;
  sub_10000B024(v72, v124, &qword_10001C4A0, &qword_1000111D8);
  v74 = sub_1000103E4();
  v75 = v113;
  *v113 = v74;
  *(v75 + 8) = 0;
  *(v75 + 16) = 1;
  v76 = sub_1000017C4(&qword_10001C4D0, &qword_100011238);
  sub_100004340(v38, (v75 + *(v76 + 44)));
  v77 = v121;
  sub_100007734(type metadata accessor for DeveloperTrustSheetView, v121);
  v78 = v122;
  v106(v122, v54, v10);
  v79 = sub_100010804();
  v59(v78, v10);
  v59(v77, v10);
  if (v79)
  {
    sub_1000107B4();
  }

  else
  {
    sub_1000107A4();
  }

  sub_100010334();
  v80 = v117;
  sub_10000B024(v75, v117, &qword_10001C480, &qword_1000111B8);
  v81 = (v80 + *(v112 + 36));
  v82 = v132;
  v81[4] = v131;
  v81[5] = v82;
  v81[6] = v133;
  v83 = v128;
  *v81 = v127;
  v81[1] = v83;
  v84 = v130;
  v81[2] = v129;
  v81[3] = v84;
  v85 = sub_1000104F4();
  sub_100010284();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v94 = v80;
  v95 = v114;
  sub_10000B024(v94, v114, &qword_10001C488, &qword_1000111C0);
  v96 = v95 + *(v116 + 36);
  *v96 = v85;
  *(v96 + 8) = v87;
  *(v96 + 16) = v89;
  *(v96 + 24) = v91;
  *(v96 + 32) = v93;
  *(v96 + 40) = 0;
  v97 = v118;
  sub_10000B024(v95, v118, &qword_10001C490, &qword_1000111C8);
  v98 = v123;
  v99 = v111;
  sub_10000A150(v123, v111, &qword_10001C4B0, &qword_1000111E8);
  v100 = v124;
  v101 = v115;
  sub_10000A150(v124, v115, &qword_10001C4A0, &qword_1000111D8);
  v102 = v119;
  sub_10000A150(v97, v119, &qword_10001C490, &qword_1000111C8);
  v103 = v120;
  sub_10000A150(v99, v120, &qword_10001C4B0, &qword_1000111E8);
  v104 = sub_1000017C4(&qword_10001C4D8, &qword_100011240);
  sub_10000A150(v101, v103 + *(v104 + 48), &qword_10001C4A0, &qword_1000111D8);
  sub_10000A150(v102, v103 + *(v104 + 64), &qword_10001C490, &qword_1000111C8);
  sub_10000B860(v97, &qword_10001C490, &qword_1000111C8);
  sub_10000B860(v100, &qword_10001C4A0, &qword_1000111D8);
  sub_10000B860(v98, &qword_10001C4B0, &qword_1000111E8);
  sub_10000B860(v102, &qword_10001C490, &qword_1000111C8);
  sub_10000B860(v101, &qword_10001C4A0, &qword_1000111D8);
  return sub_10000B860(v99, &qword_10001C4B0, &qword_1000111E8);
}

uint64_t sub_1000034EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v121 = a1;
  v116 = a2;
  v2 = type metadata accessor for DeveloperTrustSheetView(0);
  v3 = v2 - 8;
  v90 = *(v2 - 8);
  __chkstk_darwin(v2);
  v91 = v4;
  v92 = &v86[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000017C4(&qword_10001C538, &qword_100011298);
  v6 = *(v5 - 8);
  v114 = v5;
  v115 = v6;
  v7 = __chkstk_darwin(v5);
  v94 = &v86[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v93 = &v86[-v9];
  v106 = sub_1000100A4();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v86[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v103 = sub_1000100B4();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = &v86[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1000100D4();
  __chkstk_darwin(v12 - 8);
  v99 = &v86[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1000017C4(&qword_10001C540, &qword_1000112A0);
  __chkstk_darwin(v14 - 8);
  v97 = &v86[-v15];
  v16 = sub_1000017C4(&qword_10001C548, &qword_1000112A8);
  __chkstk_darwin(v16 - 8);
  v98 = &v86[-v17];
  v18 = sub_1000100F4();
  v119 = *(v18 - 8);
  v120 = v18;
  v19 = __chkstk_darwin(v18);
  v88 = &v86[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v95 = &v86[-v21];
  v22 = sub_1000017C4(&qword_10001C550, &qword_1000112B0);
  v23 = __chkstk_darwin(v22 - 8);
  v113 = &v86[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v112 = &v86[-v25];
  v26 = sub_100010304();
  v122 = *(v26 - 8);
  v27 = __chkstk_darwin(v26);
  v118 = &v86[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v117 = &v86[-v29];
  v96 = *(v3 + 36);
  v123 = sub_100010224();
  v124 = v30;
  sub_100009DD8();
  v31 = sub_1000105E4();
  v33 = v32;
  v35 = v34;
  sub_100010594();
  v36 = sub_1000105C4();
  v38 = v37;
  v40 = v39;

  sub_100009E2C(v31, v33, v35 & 1);

  v41 = sub_1000105B4();
  v109 = v42;
  v110 = v41;
  v108 = v43;
  v111 = v44;
  sub_100009E2C(v36, v38, v40 & 1);

  v45 = v117;
  sub_100007734(type metadata accessor for DeveloperTrustSheetView, v117);
  v46 = v122;
  v47 = *(v122 + 104);
  v48 = v118;
  v87 = enum case for DynamicTypeSize.large(_:);
  v47(v118);
  sub_100009948(&qword_10001C408, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v49 = v45;
  v101 = sub_100010804();
  v50 = *(v46 + 8);
  v50(v48, v26);
  v89 = v26;
  v122 = v46 + 8;
  v50(v49, v26);
  KeyPath = swift_getKeyPath();
  sub_100010214();
  v51 = sub_100010154();
  (*(*(v51 - 8) + 56))(v97, 1, 1, v51);
  (*(v102 + 104))(v100, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v103);
  (*(v105 + 104))(v104, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v106);
  v52 = v98;
  sub_1000100C4();
  sub_1000100E4();
  v53 = v119;
  v54 = v120;
  (*(v119 + 56))(v52, 0, 1, v120);
  v55 = v95;
  (*(v53 + 32))(v95, v52, v54);
  (*(v53 + 16))(v88, v55, v54);
  v56 = sub_1000105D4();
  v58 = v57;
  v60 = v59;
  sub_100010584();
  v105 = sub_1000105C4();
  v104 = v61;
  LODWORD(v103) = v62;
  v106 = v63;

  sub_100009E2C(v56, v58, v60 & 1);

  v64 = v117;
  v65 = v121;
  sub_100007734(type metadata accessor for DeveloperTrustSheetView, v117);
  v66 = v118;
  v67 = v89;
  (v47)(v118, v87, v89);
  LOBYTE(v31) = sub_100010804();
  v50(v66, v67);
  v50(v64, v67);
  LOBYTE(v67) = (v31 & 1) == 0;
  v68 = swift_getKeyPath();
  v69 = swift_getKeyPath();
  v70 = v92;
  sub_100009990(v65, v92, type metadata accessor for DeveloperTrustSheetView);
  v71 = (*(v90 + 80) + 16) & ~*(v90 + 80);
  v72 = swift_allocObject();
  sub_100009A28(v70, v72 + v71, type metadata accessor for DeveloperTrustSheetView);
  v73 = v114;
  v74 = v94;
  v75 = &v94[*(v114 + 36)];
  sub_1000017C4(&qword_10001C560, &qword_100011320);
  sub_1000102F4();
  (*(v119 + 8))(v95, v120);
  *v75 = v69;
  v76 = v104;
  *v74 = v105;
  *(v74 + 8) = v76;
  *(v74 + 16) = v103 & 1;
  *(v74 + 24) = v106;
  *(v74 + 32) = v68;
  *(v74 + 40) = v67;
  v77 = v93;
  sub_10000B024(v74, v93, &qword_10001C538, &qword_100011298);
  v78 = v112;
  sub_10000B024(v77, v112, &qword_10001C538, &qword_100011298);
  (*(v115 + 56))(v78, 0, 1, v73);
  LOBYTE(v67) = (v101 & 1) == 0;
  v79 = v113;
  sub_10000A150(v78, v113, &qword_10001C550, &qword_1000112B0);
  v80 = v116;
  v82 = v109;
  v81 = v110;
  *v116 = v110;
  v80[1] = v82;
  LOBYTE(v77) = v108 & 1;
  *(v80 + 16) = v108 & 1;
  v83 = KeyPath;
  v80[3] = v111;
  v80[4] = v83;
  *(v80 + 40) = v67;
  v84 = sub_1000017C4(&qword_10001C558, &qword_1000112E8);
  sub_10000A150(v79, v80 + *(v84 + 48), &qword_10001C550, &qword_1000112B0);
  sub_100009E90(v81, v82, v77);

  sub_10000B860(v78, &qword_10001C550, &qword_1000112B0);
  sub_10000B860(v79, &qword_10001C550, &qword_1000112B0);
  sub_100009E2C(v81, v82, v77);
}

uint64_t sub_1000041E0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ButtonSelection(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DeveloperTrustSheetView(0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = sub_100010154();
    v7 = *(v6 - 8);
    (*(v7 + 16))(v5, a1, v6);
    (*(v7 + 56))(v5, 0, 2, v6);
    sub_10000C7F8(v5);
    swift_unknownObjectRelease();
    sub_10000A0F0(v5, type metadata accessor for ButtonSelection);
  }

  return sub_1000102E4();
}

uint64_t sub_100004340@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v36 = a2;
  v3 = sub_100010304();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = sub_1000017C4(&qword_10001C4E0, &qword_100011248);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v34 = sub_1000017C4(&qword_10001C4E8, &qword_100011250);
  v13 = __chkstk_darwin(v34);
  v35 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v34 - v16;
  __chkstk_darwin(v15);
  v19 = &v34 - v18;
  v20 = sub_1000047D8();
  *v12 = sub_100010404();
  *(v12 + 1) = 0x4036000000000000;
  v12[16] = 0;
  v21 = sub_1000017C4(&qword_10001C4F0, &qword_100011258);
  sub_1000049B8(a1, &v12[*(v21 + 44)]);
  sub_100006004();
  sub_100007734(type metadata accessor for DeveloperTrustSheetView, v9);
  (*(v4 + 104))(v7, enum case for DynamicTypeSize.large(_:), v3);
  sub_100009948(&qword_10001C408, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v22 = sub_100010804();
  v23 = *(v4 + 8);
  v23(v7, v3);
  v23(v9, v3);
  if (v22)
  {
    sub_1000107B4();
  }

  else
  {
    sub_1000107A4();
  }

  sub_100010334();
  sub_10000B024(v12, v17, &qword_10001C4E0, &qword_100011248);
  v24 = &v17[*(v34 + 36)];
  v25 = v42;
  *(v24 + 4) = v41;
  *(v24 + 5) = v25;
  *(v24 + 6) = v43;
  v26 = v38;
  *v24 = v37;
  *(v24 + 1) = v26;
  v27 = v40;
  *(v24 + 2) = v39;
  *(v24 + 3) = v27;
  sub_10000B024(v17, v19, &qword_10001C4E8, &qword_100011250);
  v28 = sub_1000047D8();
  v29 = v35;
  sub_10000A150(v19, v35, &qword_10001C4E8, &qword_100011250);
  v30 = v36;
  *v36 = v20;
  *(v30 + 8) = 0;
  v31 = sub_1000017C4(&qword_10001C4F8, &qword_100011260);
  sub_10000A150(v29, v30 + *(v31 + 48), &qword_10001C4E8, &qword_100011250);
  v32 = (v30 + *(v31 + 64));
  *v32 = v28;
  *(v32 + 8) = 0;
  sub_10000B860(v19, &qword_10001C4E8, &qword_100011250);
  return sub_10000B860(v29, &qword_10001C4E8, &qword_100011250);
}

double sub_1000047D8()
{
  v0 = sub_100010304();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  sub_100007734(type metadata accessor for DeveloperTrustSheetView, &v12 - v5);
  (*(v1 + 104))(v4, enum case for DynamicTypeSize.large(_:), v0);
  sub_100009948(&qword_10001C408, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v7 = sub_100010804();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  result = 0.0;
  if ((v7 & 1) == 0)
  {
    v10 = [objc_opt_self() currentDevice];
    v11 = [v10 userInterfaceIdiom];

    result = 36.0;
    if (v11 == 1)
    {
      return 88.0;
    }
  }

  return result;
}

uint64_t sub_1000049B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_1000017C4(&qword_10001C500, &qword_100011268);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v55 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v54 = &v49 - v8;
  v9 = __chkstk_darwin(v7);
  v53 = &v49 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v49 - v12;
  v14 = __chkstk_darwin(v11);
  v52 = &v49 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v49 - v17;
  v19 = __chkstk_darwin(v16);
  v51 = &v49 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v49 - v22;
  __chkstk_darwin(v21);
  v25 = &v49 - v24;
  v50 = &v49 - v24;
  v26 = objc_opt_self();
  v27 = [v26 currentDevice];
  v28 = [v27 userInterfaceIdiom];

  v29 = 16.0;
  if (v28 == 1)
  {
    v30 = 14.0;
  }

  else
  {
    v30 = 16.0;
  }

  v31 = *(v4 + 48);
  *&v23[v31] = swift_getKeyPath();
  sub_1000017C4(&qword_10001C420, &qword_100011178);
  swift_storeEnumTagMultiPayload();
  sub_100004E5C(a1, v23);
  *&v23[*(v4 + 44)] = v30;
  sub_10000B024(v23, v25, &qword_10001C500, &qword_100011268);
  v32 = [v26 currentDevice];
  v33 = [v32 userInterfaceIdiom];

  if (v33 == 1)
  {
    v34 = 14.0;
  }

  else
  {
    v34 = 16.0;
  }

  v35 = *(v4 + 48);
  *&v18[v35] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_1000052D4(a1, v18);
  *&v18[*(v4 + 44)] = v34;
  v36 = v51;
  sub_10000B024(v18, v51, &qword_10001C500, &qword_100011268);
  v37 = [v26 currentDevice];
  v38 = [v37 userInterfaceIdiom];

  if (v38 == 1)
  {
    v29 = 14.0;
  }

  v39 = *(v4 + 48);
  *&v13[v39] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_100005B8C(a1, v13);
  *&v13[*(v4 + 44)] = v29;
  v40 = v52;
  sub_10000B024(v13, v52, &qword_10001C500, &qword_100011268);
  v41 = v50;
  v42 = v53;
  sub_10000A150(v50, v53, &qword_10001C500, &qword_100011268);
  v43 = v36;
  v44 = v54;
  sub_10000A150(v36, v54, &qword_10001C500, &qword_100011268);
  v45 = v55;
  sub_10000A150(v40, v55, &qword_10001C500, &qword_100011268);
  v46 = v56;
  sub_10000A150(v42, v56, &qword_10001C500, &qword_100011268);
  v47 = sub_1000017C4(&qword_10001C508, &qword_100011270);
  sub_10000A150(v44, v46 + *(v47 + 48), &qword_10001C500, &qword_100011268);
  sub_10000A150(v45, v46 + *(v47 + 64), &qword_10001C500, &qword_100011268);
  sub_10000B860(v40, &qword_10001C500, &qword_100011268);
  sub_10000B860(v43, &qword_10001C500, &qword_100011268);
  sub_10000B860(v41, &qword_10001C500, &qword_100011268);
  sub_10000B860(v45, &qword_10001C500, &qword_100011268);
  sub_10000B860(v44, &qword_10001C500, &qword_100011268);
  return sub_10000B860(v42, &qword_10001C500, &qword_100011268);
}

uint64_t sub_100004E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a1;
  v24 = a2;
  v2 = sub_100010694();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000017C4(&qword_10001C4A8, &qword_1000111E0);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v23 - v11;
  sub_100010684();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v13 = sub_1000106B4();

  (*(v3 + 8))(v5, v2);
  sub_1000107A4();
  sub_1000102B4();
  LOBYTE(v31[0]) = 1;
  *&v27[3] = *&v27[27];
  *&v27[11] = *&v27[35];
  *&v27[19] = *&v27[43];
  v14 = &v12[*(sub_1000017C4(&qword_10001C4B8, &qword_1000111F0) + 36)];
  v15 = *(sub_1000017C4(&qword_10001C4C0, &qword_1000111F8) + 28);
  sub_100010424();
  v16 = sub_100010434();
  (*(*(v16 - 8) + 56))(v14 + v15, 0, 1, v16);
  *v14 = swift_getKeyPath();
  *v12 = v13;
  *(v12 + 1) = 0;
  *(v12 + 8) = 257;
  v17 = *&v27[8];
  *(v12 + 18) = *v27;
  *(v12 + 34) = v17;
  *(v12 + 50) = *&v27[16];
  *(v12 + 8) = *&v27[23];
  *&v12[*(v7 + 44)] = sub_100010644();
  v18 = sub_100010404();
  v26 = 1;
  sub_10000574C(&DeveloperApprovalSheetContext.firstBulletTitle.getter, &DeveloperApprovalSheetContext.firstBulletBody.getter, v31);
  memcpy(v28, v31, sizeof(v28));
  memcpy(v29, v31, sizeof(v29));
  sub_10000A150(v28, v30, &qword_10001C510, &qword_100011278);
  sub_10000B860(v29, &qword_10001C510, &qword_100011278);
  memcpy(&v25[7], v28, 0x120uLL);
  v19 = v26;
  sub_10000A150(v12, v10, &qword_10001C4A8, &qword_1000111E0);
  v20 = v24;
  sub_10000A150(v10, v24, &qword_10001C4A8, &qword_1000111E0);
  v21 = *(sub_1000017C4(&qword_10001C518, &qword_100011280) + 48);
  v30[0] = v18;
  v30[1] = 0;
  LOBYTE(v30[2]) = v19;
  memcpy(&v30[2] + 1, v25, 0x127uLL);
  memcpy((v20 + v21), v30, 0x138uLL);
  sub_10000A150(v30, v31, &qword_10001C520, &qword_100011288);
  sub_10000B860(v12, &qword_10001C4A8, &qword_1000111E0);
  v31[0] = v18;
  v31[1] = 0;
  LOBYTE(v31[2]) = v19;
  memcpy(&v31[2] + 1, v25, 0x127uLL);
  sub_10000B860(v31, &qword_10001C520, &qword_100011288);
  return sub_10000B860(v10, &qword_10001C4A8, &qword_1000111E0);
}

uint64_t sub_1000052D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a1;
  v24 = a2;
  v2 = sub_100010694();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000017C4(&qword_10001C4A8, &qword_1000111E0);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v23 - v11;
  sub_1000106A4();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v13 = sub_1000106B4();

  (*(v3 + 8))(v5, v2);
  sub_1000107A4();
  sub_1000102B4();
  LOBYTE(v31[0]) = 1;
  *&v27[3] = *&v27[27];
  *&v27[11] = *&v27[35];
  *&v27[19] = *&v27[43];
  v14 = &v12[*(sub_1000017C4(&qword_10001C4B8, &qword_1000111F0) + 36)];
  v15 = *(sub_1000017C4(&qword_10001C4C0, &qword_1000111F8) + 28);
  sub_100010424();
  v16 = sub_100010434();
  (*(*(v16 - 8) + 56))(v14 + v15, 0, 1, v16);
  *v14 = swift_getKeyPath();
  *v12 = v13;
  *(v12 + 1) = 0;
  *(v12 + 8) = 257;
  v17 = *&v27[8];
  *(v12 + 18) = *v27;
  *(v12 + 34) = v17;
  *(v12 + 50) = *&v27[16];
  *(v12 + 8) = *&v27[23];
  *&v12[*(v7 + 44)] = sub_100010644();
  v18 = sub_100010404();
  v26 = 1;
  sub_10000574C(&DeveloperApprovalSheetContext.secondBulletTitle.getter, &DeveloperApprovalSheetContext.secondBulletBody.getter, v31);
  memcpy(v28, v31, sizeof(v28));
  memcpy(v29, v31, sizeof(v29));
  sub_10000A150(v28, v30, &qword_10001C510, &qword_100011278);
  sub_10000B860(v29, &qword_10001C510, &qword_100011278);
  memcpy(&v25[7], v28, 0x120uLL);
  v19 = v26;
  sub_10000A150(v12, v10, &qword_10001C4A8, &qword_1000111E0);
  v20 = v24;
  sub_10000A150(v10, v24, &qword_10001C4A8, &qword_1000111E0);
  v21 = *(sub_1000017C4(&qword_10001C518, &qword_100011280) + 48);
  v30[0] = v18;
  v30[1] = 0;
  LOBYTE(v30[2]) = v19;
  memcpy(&v30[2] + 1, v25, 0x127uLL);
  memcpy((v20 + v21), v30, 0x138uLL);
  sub_10000A150(v30, v31, &qword_10001C520, &qword_100011288);
  sub_10000B860(v12, &qword_10001C4A8, &qword_1000111E0);
  v31[0] = v18;
  v31[1] = 0;
  LOBYTE(v31[2]) = v19;
  memcpy(&v31[2] + 1, v25, 0x127uLL);
  sub_10000B860(v31, &qword_10001C520, &qword_100011288);
  return sub_10000B860(v10, &qword_10001C4A8, &qword_1000111E0);
}

uint64_t sub_10000574C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void *)@<X2>, void *a3@<X8>)
{
  type metadata accessor for DeveloperTrustSheetView(0);
  a1();
  sub_100009DD8();
  v4 = sub_1000105E4();
  v6 = v5;
  v8 = v7;
  sub_100010574();
  v9 = sub_1000105C4();
  v11 = v10;
  v13 = v12;

  sub_100009E2C(v4, v6, v8 & 1);

  v35 = sub_1000105B4();
  v15 = v14;
  LOBYTE(v4) = v16;
  v31 = v17;
  sub_100009E2C(v9, v11, v13 & 1);

  sub_1000107B4();
  v18 = sub_100010334();
  v19 = v4 & 1;
  v95 = v4 & 1;
  HIDWORD(v73) = a2(v18) >> 32;
  v74 = v20;
  v21 = sub_1000105E4();
  v23 = v22;
  LOBYTE(v11) = v24;
  LODWORD(v73) = sub_100010494();
  v25 = sub_1000105A4();
  v27 = v26;
  LOBYTE(v6) = v28;
  v33 = v29;
  sub_100009E2C(v21, v23, v11 & 1);

  sub_1000107B4();
  sub_100010334();
  *&v44 = v35;
  *(&v44 + 1) = v15;
  LOBYTE(v45) = v19;
  *(&v45 + 1) = *v94;
  DWORD1(v45) = *&v94[3];
  *(&v45 + 1) = v31;
  v50 = v91;
  v51 = v92;
  v52 = v93;
  v46 = v87;
  v47 = v88;
  v48 = v89;
  v49 = v90;
  __src[6] = v91;
  __src[7] = v92;
  __src[2] = v87;
  __src[3] = v88;
  __src[4] = v89;
  __src[5] = v90;
  __src[0] = v44;
  __src[1] = v45;
  *&v53 = v25;
  *(&v53 + 1) = v27;
  LOBYTE(v54) = v6 & 1;
  *(&v54 + 1) = *v85;
  DWORD1(v54) = *&v85[3];
  *(&v54 + 1) = v33;
  v59 = v41;
  v60 = v42;
  v61 = v43;
  v55 = v37;
  v56 = v38;
  v57 = v39;
  v58 = v40;
  __src[12] = v38;
  __src[13] = v39;
  __src[10] = v54;
  __src[11] = v37;
  __src[14] = v40;
  __src[15] = v41;
  __src[16] = v42;
  __src[17] = v43;
  v86 = v6 & 1;
  __src[8] = v93;
  __src[9] = v53;
  memcpy(a3, __src, 0x120uLL);
  v62[0] = v25;
  v62[1] = v27;
  v63 = v6 & 1;
  *v64 = *v85;
  *&v64[3] = *&v85[3];
  v65 = v33;
  v70 = v41;
  v71 = v42;
  v72 = v43;
  v66 = v37;
  v67 = v38;
  v68 = v39;
  v69 = v40;
  sub_10000A150(&v44, &v73, &qword_10001C530, &qword_100011290);
  sub_10000A150(&v53, &v73, &qword_10001C530, &qword_100011290);
  sub_10000B860(v62, &qword_10001C530, &qword_100011290);
  v73 = v35;
  v74 = v15;
  v75 = v19;
  *v76 = *v94;
  *&v76[3] = *&v94[3];
  v77 = v31;
  v82 = v91;
  v83 = v92;
  v84 = v93;
  v78 = v87;
  v79 = v88;
  v80 = v89;
  v81 = v90;
  return sub_10000B860(&v73, &qword_10001C530, &qword_100011290);
}

uint64_t sub_100005B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a1;
  v24 = a2;
  v2 = sub_100010694();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000017C4(&qword_10001C4A8, &qword_1000111E0);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v23 - v11;
  sub_100010684();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v13 = sub_1000106B4();

  (*(v3 + 8))(v5, v2);
  sub_1000107A4();
  sub_1000102B4();
  LOBYTE(v31[0]) = 1;
  *&v27[3] = *&v27[27];
  *&v27[11] = *&v27[35];
  *&v27[19] = *&v27[43];
  v14 = &v12[*(sub_1000017C4(&qword_10001C4B8, &qword_1000111F0) + 36)];
  v15 = *(sub_1000017C4(&qword_10001C4C0, &qword_1000111F8) + 28);
  sub_100010424();
  v16 = sub_100010434();
  (*(*(v16 - 8) + 56))(v14 + v15, 0, 1, v16);
  *v14 = swift_getKeyPath();
  *v12 = v13;
  *(v12 + 1) = 0;
  *(v12 + 8) = 257;
  v17 = *&v27[8];
  *(v12 + 18) = *v27;
  *(v12 + 34) = v17;
  *(v12 + 50) = *&v27[16];
  *(v12 + 8) = *&v27[23];
  *&v12[*(v7 + 44)] = sub_100010644();
  v18 = sub_100010404();
  v26 = 1;
  sub_10000574C(&DeveloperApprovalSheetContext.thirdBulletTitle.getter, &DeveloperApprovalSheetContext.thirdBulletBody.getter, v31);
  memcpy(v28, v31, sizeof(v28));
  memcpy(v29, v31, sizeof(v29));
  sub_10000A150(v28, v30, &qword_10001C510, &qword_100011278);
  sub_10000B860(v29, &qword_10001C510, &qword_100011278);
  memcpy(&v25[7], v28, 0x120uLL);
  v19 = v26;
  sub_10000A150(v12, v10, &qword_10001C4A8, &qword_1000111E0);
  v20 = v24;
  sub_10000A150(v10, v24, &qword_10001C4A8, &qword_1000111E0);
  v21 = *(sub_1000017C4(&qword_10001C518, &qword_100011280) + 48);
  v30[0] = v18;
  v30[1] = 0;
  LOBYTE(v30[2]) = v19;
  memcpy(&v30[2] + 1, v25, 0x127uLL);
  memcpy((v20 + v21), v30, 0x138uLL);
  sub_10000A150(v30, v31, &qword_10001C520, &qword_100011288);
  sub_10000B860(v12, &qword_10001C4A8, &qword_1000111E0);
  v31[0] = v18;
  v31[1] = 0;
  LOBYTE(v31[2]) = v19;
  memcpy(&v31[2] + 1, v25, 0x127uLL);
  sub_10000B860(v31, &qword_10001C520, &qword_100011288);
  return sub_10000B860(v10, &qword_10001C4A8, &qword_1000111E0);
}

double sub_100006004()
{
  v0 = sub_100010304();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  sub_100007734(type metadata accessor for DeveloperTrustSheetView, &v12 - v5);
  (*(v1 + 104))(v4, enum case for DynamicTypeSize.large(_:), v0);
  sub_100009948(&qword_10001C408, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v7 = sub_100010804();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v7)
  {
    return INFINITY;
  }

  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  result = INFINITY;
  if (v11 == 1)
  {
    return 340.0;
  }

  return result;
}

uint64_t sub_1000061F4(__int128 *a1, uint64_t a2)
{
  v4 = sub_1000107C4();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000107E4();
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DeveloperTrustSheetView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  sub_100009A90();
  v13 = *a1;
  v21 = a1[1];
  v22 = v13;
  v14 = sub_1000108E4();
  sub_100009990(a2, &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DeveloperTrustSheetView);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  sub_100009A28(&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for DeveloperTrustSheetView);
  v17 = (v16 + ((v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v21;
  *v17 = v22;
  v17[1] = v18;
  aBlock[4] = sub_100009C60;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006660;
  aBlock[3] = &unk_100018D90;
  v19 = _Block_copy(aBlock);

  sub_1000107D4();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100009948(&qword_10001C468, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000017C4(&qword_10001C470, &qword_1000111B0);
  sub_10000BC5C(&qword_10001C478, &qword_10001C470, &qword_1000111B0, &protocol conformance descriptor for [A]);
  sub_100010914();
  sub_1000108F4();
  _Block_release(v19);

  (*(v24 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v23);
}

uint64_t sub_1000065B0(__int128 *a1, double a2, double a3, double a4, double a5)
{
  CGRectGetHeight(*&a2);
  sub_1000017C4(&qword_10001C410, &qword_100011138);
  sub_1000106D4();
  sub_1000017C4(&qword_10001C418, &qword_100011140);
  return sub_1000106E4();
}

uint64_t sub_100006660(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000066A4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for DeveloperTrustSheetButtons(0);
  __chkstk_darwin(v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000017C4(&qword_10001C400, &qword_100011130);
  __chkstk_darwin(v36);
  v7 = &v32 - v6;
  v8 = sub_100010304();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  sub_100007734(type metadata accessor for DeveloperTrustSheetView, &v32 - v13);
  (*(v9 + 104))(v12, enum case for DynamicTypeSize.large(_:), v8);
  sub_100009948(&qword_10001C408, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v15 = sub_100010804();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v16(v14, v8);
  if (v15)
  {
    swift_storeEnumTagMultiPayload();
    sub_100009948(&qword_10001C428, type metadata accessor for DeveloperTrustSheetButtons, &unk_100011400);
    return sub_100010464();
  }

  else
  {
    v18 = *(a1 + 4);
    v19 = a1[1];
    v42 = *a1;
    v43 = v19;
    v44 = v18;
    sub_1000017C4(&qword_10001C410, &qword_100011138);
    sub_1000106F4();
    v33 = v39;
    v34 = v38;
    v35 = v40;
    v32 = v41;
    v20 = *(a1 + 6);
    LOBYTE(v42) = *(a1 + 40);
    *(&v42 + 1) = v20;
    sub_1000017C4(&qword_10001C418, &qword_100011140);
    sub_1000106F4();
    v21 = v38;
    v22 = v39;
    v23 = v40;
    v24 = type metadata accessor for DeveloperTrustSheetView(0);
    v25 = *(v24 + 28);
    v26 = v3[7];
    v27 = sub_100010234();
    (*(*(v27 - 8) + 16))(&v5[v26], a1 + v25, v27);
    v28 = a1 + *(v24 + 32);
    swift_unknownObjectWeakLoadStrong();
    v29 = *(v28 + 1);
    *&v5[v3[6]] = swift_getKeyPath();
    sub_1000017C4(&qword_10001C420, &qword_100011178);
    swift_storeEnumTagMultiPayload();
    v30 = v33;
    *v5 = v34;
    *(v5 + 1) = v30;
    v31 = v32;
    *(v5 + 1) = v35;
    *(v5 + 2) = v31;
    *(v5 + 6) = v21;
    *(v5 + 7) = v22;
    v5[64] = v23;
    *&v5[v3[8] + 8] = v29;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    sub_100009990(v5, v7, type metadata accessor for DeveloperTrustSheetButtons);
    swift_storeEnumTagMultiPayload();
    sub_100009948(&qword_10001C428, type metadata accessor for DeveloperTrustSheetButtons, &unk_100011400);
    sub_100010464();
    return sub_10000A0F0(v5, type metadata accessor for DeveloperTrustSheetButtons);
  }
}

uint64_t sub_100006B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100010454();
  __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_100010464();
}

uint64_t sub_100006C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100010454();
  __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_100010464();
}

uint64_t sub_100006D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000103D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000017C4(&qword_10001C420, &qword_100011178);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_10000A150(v2 + *(a1 + 40), &v15 - v10, &qword_10001C420, &qword_100011178);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_100010304();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1000108D4();
    v14 = sub_1000104D4();
    sub_100010244();

    sub_1000103C4();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100006F50(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100006FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_100010724();
  v57 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v55 = &v53 - v9;
  v59 = v5;
  v60 = v4;
  v10 = sub_100010744();
  v54 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v53 = &v53 - v14;
  v15 = sub_100010304();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v53 - v20;
  v58 = v6;
  v22 = sub_100010474();
  v62 = *(v22 - 8);
  v63 = v22;
  __chkstk_darwin(v22);
  v61 = &v53 - v23;
  v24 = v2;
  sub_100006D40(a1, v21);
  (*(v16 + 104))(v19, enum case for DynamicTypeSize.large(_:), v15);
  sub_100009948(&qword_10001C408, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v25 = sub_100010804();
  v26 = *(v16 + 8);
  v26(v19, v15);
  v26(v21, v15);
  if (v25)
  {
    v27 = sub_100010414();
    __chkstk_darwin(v27);
    v28 = v59;
    *(&v53 - 4) = v60;
    *(&v53 - 3) = v28;
    *(&v53 - 2) = v24;
    sub_100010734();
    WitnessTable = swift_getWitnessTable();
    v31 = v53;
    v30 = v54;
    v32 = *(v54 + 16);
    v32(v53, v13, v10);
    v33 = *(v30 + 8);
    v33(v13, v10);
    v32(v13, v31, v10);
    v34 = v58;
    v35 = swift_getWitnessTable();
    v36 = v61;
    sub_100006B50(v13, v10, v34, WitnessTable, v35);
    v33(v13, v10);
    v37 = v31;
    v38 = v10;
  }

  else
  {
    v39 = sub_1000103E4();
    __chkstk_darwin(v39);
    v40 = v59;
    *(&v53 - 4) = v60;
    *(&v53 - 3) = v40;
    *(&v53 - 2) = v24;
    v41 = v56;
    sub_100010714();
    v42 = v58;
    v43 = swift_getWitnessTable();
    v44 = v57;
    v45 = *(v57 + 16);
    v46 = v55;
    v45(v55, v41, v42);
    v33 = *(v44 + 8);
    v33(v41, v42);
    v45(v41, v46, v42);
    v47 = swift_getWitnessTable();
    v36 = v61;
    sub_100006C48(v41, v10, v42, v47, v43);
    v33(v41, v42);
    v37 = v46;
    v38 = v42;
  }

  v33(v37, v38);
  v48 = swift_getWitnessTable();
  v49 = swift_getWitnessTable();
  v65 = v48;
  v66 = v49;
  v50 = v63;
  swift_getWitnessTable();
  v51 = v62;
  (*(v62 + 16))(v64, v36, v50);
  return (*(v51 + 8))(v36, v50);
}

uint64_t sub_100007640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7);
  (v8)(a3, v7, a2);
  return (*(v5 + 8))(v7, a2);
}

uint64_t sub_100007734@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000103D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000017C4(&qword_10001C420, &qword_100011178);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  v12 = a1(0);
  sub_10000A150(v2 + *(v12 + 24), v11, &qword_10001C420, &qword_100011178);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100010304();
    return (*(*(v13 - 8) + 32))(a2, v11, v13);
  }

  else
  {
    sub_1000108D4();
    v15 = sub_1000104D4();
    sub_100010244();

    sub_1000103C4();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10000796C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for DeveloperTrustSheetButtons(0);
  v47 = *(v3 - 8);
  v46 = *(v47 + 64);
  __chkstk_darwin(v3 - 8);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100010784();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000017C4(&qword_10001C758, &qword_100011450);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v13 = sub_1000017C4(&qword_10001C760, &qword_100011458);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - v14;
  v16 = sub_1000017C4(&qword_10001C768, &qword_100011460);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v41 - v18;
  v45 = sub_1000017C4(&qword_10001C770, &qword_100011468) - 8;
  __chkstk_darwin(v45);
  v44 = &v41 - v20;
  *v15 = sub_1000103E4();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v21 = sub_1000017C4(&qword_10001C778, &qword_100011470);
  sub_100007E5C(v1, &v15[*(v21 + 44)]);
  sub_100010774();
  v22 = *(v1 + 48);
  v23 = *(v1 + 56);
  v24 = *(v1 + 64);
  v42 = v1;
  v50 = v22;
  v51 = v23;
  v52 = v24;
  sub_1000017C4(&qword_10001C780, &qword_100011478);
  sub_100010754();
  if (v49)
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  (*(v6 + 32))(v12, v8, v5);
  *&v12[*(v10 + 44)] = v25;
  v26 = sub_100010504();
  v27 = &v19[*(v17 + 44)];
  sub_10000B024(v12, v27, &qword_10001C758, &qword_100011450);
  *(v27 + *(sub_1000017C4(&qword_10001C788, &qword_100011480) + 36)) = v26;
  sub_10000B024(v15, v19, &qword_10001C760, &qword_100011458);
  v28 = v43;
  sub_100009990(v2, v43, type metadata accessor for DeveloperTrustSheetButtons);
  v29 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v30 = swift_allocObject();
  sub_100009A28(v28, v30 + v29, type metadata accessor for DeveloperTrustSheetButtons);
  v31 = sub_1000107A4();
  v33 = v32;
  v34 = v19;
  v35 = v44;
  sub_10000B024(v34, v44, &qword_10001C768, &qword_100011460);
  v36 = (v35 + *(v45 + 44));
  *v36 = sub_10000B090;
  v36[1] = v30;
  v36[2] = v31;
  v36[3] = v33;
  sub_100009990(v42, v28, type metadata accessor for DeveloperTrustSheetButtons);
  v37 = swift_allocObject();
  sub_100009A28(v28, v37 + v29, type metadata accessor for DeveloperTrustSheetButtons);
  v38 = v48;
  sub_10000B024(v35, v48, &qword_10001C770, &qword_100011468);
  result = sub_1000017C4(&qword_10001C790, &qword_100011488);
  v40 = (v38 + *(result + 36));
  *v40 = sub_10000BD98;
  v40[1] = 0;
  v40[2] = sub_10000B298;
  v40[3] = v37;
  return result;
}

uint64_t sub_100007E5C@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v56 = a2;
  v3 = sub_1000017C4(&qword_10001C7A0, &qword_100011498);
  __chkstk_darwin(v3 - 8);
  v5 = &v49 - v4;
  v50 = sub_1000017C4(&qword_10001C7A8, &qword_1000114A0);
  __chkstk_darwin(v50);
  v7 = &v49 - v6;
  v52 = sub_1000017C4(&qword_10001C7B0, &qword_1000114A8);
  __chkstk_darwin(v52);
  v9 = &v49 - v8;
  v53 = sub_1000017C4(&qword_10001C7B8, &qword_1000114B0);
  v10 = __chkstk_darwin(v53);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v49 - v13;
  __chkstk_darwin(v12);
  v51 = &v49 - v15;
  v16 = sub_1000084A4(type metadata accessor for DeveloperTrustSheetButtons);
  v17 = objc_opt_self();
  v18 = [v17 currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if (v19 == 1)
  {
    v20 = 0x4028000000000000;
  }

  else
  {
    v20 = 0x4024000000000000;
  }

  *v5 = sub_100010404();
  *(v5 + 1) = v20;
  v5[16] = 0;
  v21 = &v5[*(sub_1000017C4(&qword_10001C7C0, &qword_1000114B8) + 44)];
  v55 = a1;
  sub_100008674(a1, v21);
  v22 = [v17 currentDevice];
  [v22 userInterfaceIdiom];

  sub_1000107A4();
  sub_100010334();
  sub_10000B024(v5, v7, &qword_10001C7A0, &qword_100011498);
  v23 = &v7[*(v50 + 36)];
  v24 = v62;
  *(v23 + 4) = v61;
  *(v23 + 5) = v24;
  *(v23 + 6) = v63;
  v25 = v58;
  *v23 = v57;
  *(v23 + 1) = v25;
  v26 = v60;
  *(v23 + 2) = v59;
  *(v23 + 3) = v26;
  sub_1000017C4(&qword_10001C7C8, &qword_1000114C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100010FF0;
  LOBYTE(v22) = sub_100010534();
  *(inited + 32) = v22;
  v28 = sub_100010554();
  *(inited + 33) = v28;
  v29 = sub_100010544();
  sub_100010544();
  if (sub_100010544() != v22)
  {
    v29 = sub_100010544();
  }

  sub_100010544();
  if (sub_100010544() != v28)
  {
    v29 = sub_100010544();
  }

  sub_10000B024(v7, v9, &qword_10001C7A8, &qword_1000114A0);
  v30 = &v9[*(v52 + 36)];
  *v30 = v29;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  v30[40] = 1;
  v31 = sub_100010524();
  v32 = [v17 currentDevice];
  [v32 userInterfaceIdiom];

  sub_100010284();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10000B024(v9, v14, &qword_10001C7B0, &qword_1000114A8);
  v41 = &v14[*(v53 + 36)];
  *v41 = v31;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = v51;
  sub_10000B024(v14, v51, &qword_10001C7B8, &qword_1000114B0);
  v43 = sub_1000084A4(type metadata accessor for DeveloperTrustSheetButtons);
  v44 = v54;
  sub_10000A150(v42, v54, &qword_10001C7B8, &qword_1000114B0);
  v45 = v56;
  *v56 = v16;
  *(v45 + 8) = 0;
  v46 = sub_1000017C4(&qword_10001C7D0, &qword_1000114C8);
  sub_10000A150(v44, v45 + *(v46 + 48), &qword_10001C7B8, &qword_1000114B0);
  v47 = (v45 + *(v46 + 64));
  *v47 = v43;
  *(v47 + 8) = 0;
  sub_10000B860(v42, &qword_10001C7B8, &qword_1000114B0);
  return sub_10000B860(v44, &qword_10001C7B8, &qword_1000114B0);
}

double sub_1000084A4(uint64_t (*a1)(void))
{
  v2 = sub_100010304();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  sub_100007734(a1, &v14 - v7);
  (*(v3 + 104))(v6, enum case for DynamicTypeSize.large(_:), v2);
  sub_100009948(&qword_10001C408, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v9 = sub_100010804();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  result = 0.0;
  if ((v9 & 1) == 0)
  {
    v12 = [objc_opt_self() currentDevice];
    v13 = [v12 userInterfaceIdiom];

    result = 88.0;
    if (v13 != 1)
    {
      return 20.0;
    }
  }

  return result;
}

uint64_t sub_100008674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v104 = sub_1000104C4();
  v106 = *(v104 - 8);
  __chkstk_darwin(v104);
  v4 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DeveloperTrustSheetButtons(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v97 = v7;
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000017C4(&qword_10001C7D8, &qword_1000114D0);
  __chkstk_darwin(v9);
  v11 = &v78 - v10;
  v105 = sub_1000017C4(&qword_10001C7E0, &qword_1000114D8) - 8;
  v12 = __chkstk_darwin(v105);
  v102 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v100 = &v78 - v15;
  __chkstk_darwin(v14);
  v17 = &v78 - v16;
  v18 = sub_1000017C4(&qword_10001C7E8, &qword_1000114E0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v85 = &v78 - v20;
  v21 = sub_1000017C4(&qword_10001C7F0, &qword_1000114E8);
  v22 = v21 - 8;
  v23 = __chkstk_darwin(v21);
  v101 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v89 = &v78 - v26;
  __chkstk_darwin(v25);
  v98 = &v78 - v27;
  v99 = type metadata accessor for DeveloperTrustSheetButtons;
  v88 = a1;
  v90 = v8;
  sub_100009990(a1, v8, type metadata accessor for DeveloperTrustSheetButtons);
  v96 = *(v6 + 80);
  v28 = (v96 + 16) & ~v96;
  v94 = v28;
  v29 = swift_allocObject();
  v95 = type metadata accessor for DeveloperTrustSheetButtons;
  sub_100009A28(v8, v29 + v28, type metadata accessor for DeveloperTrustSheetButtons);
  v108 = a1;
  v92 = sub_1000017C4(&qword_10001C7F8, &qword_1000114F0);
  v93 = sub_10000B66C();
  sub_100010704();
  v78 = v9;
  v30 = &v11[*(v9 + 36)];
  v91 = sub_100010324();
  v31 = *(v91 + 20);
  v32 = enum case for RoundedCornerStyle.continuous(_:);
  v86 = enum case for RoundedCornerStyle.continuous(_:);
  v83 = sub_1000103F4();
  v33 = *(v83 - 8);
  v82 = *(v33 + 104);
  v87 = v33 + 104;
  v82(&v30[v31], v32, v83);
  __asm { FMOV            V0.2D, #16.0 }

  v84 = _Q0;
  *v30 = _Q0;
  v39 = sub_1000017C4(&qword_10001C818, &qword_100011500);
  *&v30[*(v39 + 36)] = 256;
  sub_1000104B4();
  v81 = sub_10000B77C();
  v80 = sub_100009948(&qword_10001C840, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v40 = v104;
  sub_100010614();
  v79 = *(v106 + 8);
  v106 += 8;
  v79(v4, v40);
  sub_10000B860(v11, &qword_10001C7D8, &qword_1000114D0);
  sub_100010654();
  v41 = sub_100010674();

  KeyPath = swift_getKeyPath();
  v43 = sub_1000017C4(&qword_10001C848, &qword_100011540);
  v44 = &v17[*(v43 + 36)];
  *v44 = KeyPath;
  v44[1] = v41;
  *&v17[*(v105 + 44)] = sub_100010644();
  LOBYTE(v41) = sub_100010514();
  v45 = [objc_opt_self() currentDevice];
  [v45 userInterfaceIdiom];

  sub_100010284();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v17;
  v55 = v85;
  sub_10000B024(v54, v85, &qword_10001C7E0, &qword_1000114D8);
  v56 = v55 + *(v19 + 44);
  *v56 = v41;
  *(v56 + 8) = v47;
  *(v56 + 16) = v49;
  *(v56 + 24) = v51;
  *(v56 + 32) = v53;
  *(v56 + 40) = 0;
  sub_1000107A4();
  sub_100010334();
  v57 = v89;
  sub_10000B024(v55, v89, &qword_10001C7E8, &qword_1000114E0);
  v58 = (v57 + *(v22 + 44));
  v59 = v114;
  v58[4] = v113;
  v58[5] = v59;
  v58[6] = v115;
  v60 = v110;
  *v58 = v109;
  v58[1] = v60;
  v61 = v112;
  v58[2] = v111;
  v58[3] = v61;
  v62 = v98;
  sub_10000B024(v57, v98, &qword_10001C7F0, &qword_1000114E8);
  v63 = v88;
  v64 = v90;
  sub_100009990(v88, v90, v99);
  v65 = v94;
  v66 = swift_allocObject();
  sub_100009A28(v64, v66 + v65, v95);
  v107 = v63;
  sub_100010704();
  v67 = &v11[*(v78 + 36)];
  v82(&v67[*(v91 + 20)], v86, v83);
  *v67 = v84;
  *&v67[*(v39 + 36)] = 256;
  sub_1000104B4();
  v68 = v100;
  v69 = v104;
  sub_100010614();
  v79(v4, v69);
  sub_10000B860(v11, &qword_10001C7D8, &qword_1000114D0);
  sub_100010654();
  v70 = sub_100010674();

  v71 = swift_getKeyPath();
  v72 = (v68 + *(v43 + 36));
  *v72 = v71;
  v72[1] = v70;
  *(v68 + *(v105 + 44)) = sub_100010644();
  v73 = v101;
  sub_10000A150(v62, v101, &qword_10001C7F0, &qword_1000114E8);
  v74 = v102;
  sub_10000A150(v68, v102, &qword_10001C7E0, &qword_1000114D8);
  v75 = v103;
  sub_10000A150(v73, v103, &qword_10001C7F0, &qword_1000114E8);
  v76 = sub_1000017C4(&qword_10001C850, &qword_100011548);
  sub_10000A150(v74, v75 + *(v76 + 48), &qword_10001C7E0, &qword_1000114D8);
  sub_10000B860(v68, &qword_10001C7E0, &qword_1000114D8);
  sub_10000B860(v62, &qword_10001C7F0, &qword_1000114E8);
  sub_10000B860(v74, &qword_10001C7E0, &qword_1000114D8);
  return sub_10000B860(v73, &qword_10001C7F0, &qword_1000114E8);
}

uint64_t sub_1000090F8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ButtonSelection(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DeveloperTrustSheetButtons(0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = sub_100010154();
    (*(*(v7 - 8) + 56))(v5, a2, 2, v7);
    sub_10000C7F8(v5);
    swift_unknownObjectRelease();
    return sub_10000A0F0(v5, type metadata accessor for ButtonSelection);
  }

  return result;
}

__n128 sub_1000091F4@<Q0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for DeveloperTrustSheetButtons(0);
  *&v18 = a1();
  *(&v18 + 1) = v4;
  sub_100009DD8();
  v5 = sub_1000105E4();
  v7 = v6;
  v9 = v8;
  v10 = sub_1000105B4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_100009E2C(v5, v7, v9 & 1);

  sub_1000107A4();
  sub_1000102B4();
  sub_1000107A4();
  sub_100010334();
  *(a2 + 32) = v25;
  *(a2 + 48) = v26;
  result = v27;
  *(a2 + 128) = v21;
  *(a2 + 144) = v22;
  *(a2 + 160) = v23;
  *(a2 + 176) = v24;
  *(a2 + 64) = v27;
  *(a2 + 80) = v18;
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
  *(a2 + 96) = v19;
  *(a2 + 112) = v20;
  return result;
}

uint64_t sub_100009364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a1;
  v5 = sub_1000102D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DeveloperTrustSheetButtons(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = sub_100010664();
  sub_100009990(a2, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DeveloperTrustSheetButtons);
  (*(v6 + 16))(v8, v18, v5);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_100009A28(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13, type metadata accessor for DeveloperTrustSheetButtons);
  result = (*(v6 + 32))(v15 + v14, v8, v5);
  *a3 = v12;
  a3[1] = sub_10000B568;
  a3[2] = v15;
  a3[3] = 0;
  a3[4] = 0;
  return result;
}

uint64_t sub_100009574(uint64_t a1)
{
  v2 = sub_100010484();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000104A4();
  sub_1000102C4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v14 = *(a1 + 8);
  v17[4] = *a1;
  v17[5] = v14;
  v15 = *(a1 + 32);
  v18 = *(a1 + 16);
  v19 = v15;
  v17[0] = v7;
  v17[1] = v9;
  v17[2] = v11;
  v17[3] = v13;
  sub_1000017C4(&qword_10001C798, &qword_100011490);
  return sub_100010764();
}

uint64_t sub_1000096B8@<X0>(double *a1@<X8>)
{
  v2 = sub_100010484();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000104A4();
  sub_1000102C4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

uint64_t sub_100009878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100009948(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100009A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100009A90()
{
  result = qword_10001C460;
  if (!qword_10001C460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C460);
  }

  return result;
}

uint64_t sub_100009ADC()
{
  v1 = type metadata accessor for DeveloperTrustSheetView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  sub_1000017C4(&qword_10001C420, &qword_100011178);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_100010304();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 28);
  v10 = sub_100010234();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v8 + 32, v2 | 7);
}

uint64_t sub_100009C60()
{
  v1 = *(type metadata accessor for DeveloperTrustSheetView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];

  return sub_1000065B0((v0 + v2), v4, v5, v6, v7);
}

uint64_t sub_100009CF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009D30(uint64_t a1)
{
  v2 = sub_1000017C4(&qword_10001C568, &qword_100011328);
  __chkstk_darwin(v2 - 8);
  sub_10000A150(a1, &v5 - v3, &qword_10001C568, &qword_100011328);
  return sub_100010364();
}

unint64_t sub_100009DD8()
{
  result = qword_10001C528;
  if (!qword_10001C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C528);
  }

  return result;
}

uint64_t sub_100009E2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100009E3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100010374();
  *a1 = result;
  return result;
}

uint64_t sub_100009E90(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100009EA0()
{
  v1 = type metadata accessor for DeveloperTrustSheetView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  sub_1000017C4(&qword_10001C420, &qword_100011178);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_100010304();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  v9 = sub_100010234();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000A018(uint64_t a1)
{
  v3 = *(type metadata accessor for DeveloperTrustSheetView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000041E0(a1, v4);
}

uint64_t sub_10000A0B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A0F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000A150(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000017C4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000A1CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100010154();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000A24C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100010154();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10000A2D4(uint64_t a1)
{
  v1 = sub_100010154();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_10000A340(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000017C4(&qword_10001C2F0, &unk_100011040);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100010234();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10000A484(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000017C4(&qword_10001C2F0, &unk_100011040);
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
      v13 = sub_100010234();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10000A5F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t), unint64_t *a6, uint64_t (*a7)(void, uint64_t))
{
  sub_1000019BC(319, a4, type metadata accessor for CGRect, a5);
  if (v9 <= 0x3F)
  {
    sub_10000AE74(319, a6, &type metadata for Bool, a7);
    if (v10 <= 0x3F)
    {
      sub_1000019BC(319, &unk_10001C370, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v11 <= 0x3F)
      {
        sub_100010234();
        if (v12 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10000A724(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1000019BC(319, &unk_10001C370, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10000A7E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_100010304() - 8);
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

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  v12 = *(v8 + 80) & 0xF8 | 7;
  if (a2 <= v10)
  {
    goto LABEL_30;
  }

  v13 = v9 + ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) + 1;
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
        v22 = *(((((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12) + v9);
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

void sub_10000AA50(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_100010304() - 8);
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

  v13 = *(v8 + 64);
  v14 = *(v10 + 80) & 0xF8 | 7;
  v15 = v11 + 1;
  v16 = ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + v11 + 1;
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
    v24 = (((&a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14);
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

__n128 sub_10000ADD0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000ADDC(uint64_t a1, int a2)
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

uint64_t sub_10000ADFC(uint64_t result, int a2, int a3)
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

void sub_10000AE74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_10000AEC8()
{
  result = qword_10001C750;
  if (!qword_10001C750)
  {
    sub_100006F50(&qword_10001C3F8, &qword_100011128);
    sub_100006F50(&qword_10001C3B8, &qword_1000110F8);
    sub_10000BC5C(&qword_10001C3F0, &qword_10001C3B8, &qword_1000110F8, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C750);
  }

  return result;
}

uint64_t sub_10000B024(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000017C4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000B090@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for DeveloperTrustSheetButtons(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100009364(a1, v6, a2);
}

uint64_t sub_10000B110()
{
  v1 = type metadata accessor for DeveloperTrustSheetButtons(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  sub_1000017C4(&qword_10001C420, &qword_100011178);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_100010304();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  v9 = sub_100010234();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000B2C4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_10000B34C()
{
  v1 = type metadata accessor for DeveloperTrustSheetButtons(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_1000102D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v16 = *(v6 + 64);
  v8 = v0 + v3;

  v9 = *(v1 + 24);
  sub_1000017C4(&qword_10001C420, &qword_100011178);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_100010304();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  v13 = *(v1 + 28);
  v14 = sub_100010234();
  (*(*(v14 - 8) + 8))(v8 + v13, v14);
  swift_unknownObjectWeakDestroy();
  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v16, v11 | 7);
}

uint64_t sub_10000B568()
{
  v1 = *(type metadata accessor for DeveloperTrustSheetButtons(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_1000102D4();

  return sub_100009574(v0 + v2);
}

unint64_t sub_10000B66C()
{
  result = qword_10001C800;
  if (!qword_10001C800)
  {
    sub_100006F50(&qword_10001C7F8, &qword_1000114F0);
    sub_10000B6F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C800);
  }

  return result;
}

unint64_t sub_10000B6F8()
{
  result = qword_10001C808;
  if (!qword_10001C808)
  {
    sub_100006F50(&qword_10001C810, &qword_1000114F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C808);
  }

  return result;
}

unint64_t sub_10000B77C()
{
  result = qword_10001C820;
  if (!qword_10001C820)
  {
    sub_100006F50(&qword_10001C7D8, &qword_1000114D0);
    sub_10000BC5C(&qword_10001C828, &qword_10001C830, &qword_100011508, &protocol conformance descriptor for Button<A>);
    sub_10000BC5C(&qword_10001C838, &qword_10001C818, &qword_100011500, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C820);
  }

  return result;
}

uint64_t sub_10000B860(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000017C4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000B8C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000103A4();
  *a1 = result;
  return result;
}

unint64_t sub_10000BA08()
{
  result = qword_10001C858;
  if (!qword_10001C858)
  {
    sub_100006F50(&qword_10001C790, &qword_100011488);
    sub_10000BAC0();
    sub_10000BC5C(&qword_10001C890, &qword_10001C898, &unk_100011558, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C858);
  }

  return result;
}

unint64_t sub_10000BAC0()
{
  result = qword_10001C860;
  if (!qword_10001C860)
  {
    sub_100006F50(&qword_10001C770, &qword_100011468);
    sub_10000BB78();
    sub_10000BC5C(&qword_10001C880, &qword_10001C888, &qword_100011550, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C860);
  }

  return result;
}

unint64_t sub_10000BB78()
{
  result = qword_10001C868;
  if (!qword_10001C868)
  {
    sub_100006F50(&qword_10001C768, &qword_100011460);
    sub_10000BC5C(&qword_10001C870, &qword_10001C760, &qword_100011458, &protocol conformance descriptor for HStack<A>);
    sub_10000BC5C(&qword_10001C878, &qword_10001C788, &qword_100011480, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C868);
  }

  return result;
}

uint64_t sub_10000BC5C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100006F50(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000BCA4(void *a1)
{
  sub_100010744();
  sub_100010724();
  sub_100010474();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

id sub_10000BD9C()
{
  v1 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_followUpController;
  v2 = objc_allocWithZone(FLFollowUpController);
  v3 = sub_100010814();
  v4 = [v2 initWithClientIdentifier:v3];

  *&v0[v1] = v4;
  *&v0[OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_sheetViewController] = 0;
  v5 = &v0[OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_followUpIdentifier];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_sheetContext;
  v7 = sub_100010234();
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  v9.receiver = v0;
  v9.super_class = type metadata accessor for FollowUpViewController(0);
  return objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
}

void sub_10000BF3C(char a1)
{
  v3 = type metadata accessor for DeveloperTrustSheetView(0);
  __chkstk_darwin(v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000017C4(&qword_10001C918, &qword_1000115F8);
  __chkstk_darwin(v6 - 8);
  v8 = v23 - v7;
  v9 = sub_100010234();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FollowUpViewController(0);
  v27.receiver = v1;
  v27.super_class = v13;
  objc_msgSendSuper2(&v27, "viewWillAppear:", a1 & 1);
  v14 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_sheetViewController;
  if (!*&v1[OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_sheetViewController])
  {
    v15 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_sheetContext;
    swift_beginAccess();
    sub_10000A150(&v1[v15], v8, &qword_10001C918, &qword_1000115F8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_10000B860(v8, &qword_10001C918, &qword_1000115F8);
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      (*(v10 + 16))(&v5[v3[7]], v12, v9);
      *&v5[v3[6]] = swift_getKeyPath();
      sub_1000017C4(&qword_10001C420, &qword_100011178);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for CGRect(0);
      memset(v23, 0, sizeof(v23));
      sub_1000106C4();
      v16 = v26;
      v17 = v25;
      *v5 = v24;
      *(v5 + 1) = v17;
      *(v5 + 4) = v16;
      LOBYTE(v23[0]) = 0;
      sub_1000106C4();
      v18 = *(&v24 + 1);
      v5[40] = v24;
      *(v5 + 6) = v18;
      *&v5[v3[8] + 8] = &off_100019000;
      swift_unknownObjectWeakInit();
      v19 = objc_allocWithZone(sub_1000017C4(&unk_10001C940, &qword_1000116A0));
      v20 = v1;
      v21 = sub_100010444();
      [v21 setModalPresentationStyle:2];
      [v20 presentViewController:v21 animated:1 completion:0];
      (*(v10 + 8))(v12, v9);
      v22 = *&v20[v14];
      *&v20[v14] = v21;
    }
  }
}

uint64_t sub_10000C378(void *a1, void *a2, uint64_t (*a3)(id))
{
  v7 = sub_1000017C4(&qword_10001C918, &qword_1000115F8);
  result = __chkstk_darwin(v7 - 8);
  v10 = &v28 - v9;
  if (!a1)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = [a1 uniqueIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_100010824();
    v15 = v14;

    v16 = &type metadata for String;
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v31[2] = 0;
  }

  v31[0] = v13;
  v31[1] = v15;
  v31[3] = v16;
  v17 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_followUpIdentifier;
  swift_beginAccess();
  sub_10000FEEC(v31, v3 + v17, &qword_10001C900, &unk_1000115D8);
  result = swift_endAccess();
  if (!a2)
  {
    goto LABEL_18;
  }

  v18 = [a2 destructive];
  if (v18)
  {
    sub_10000DDD0();
    if (a3)
    {
      return a3(v18);
    }

    __break(1u);
  }

  v29 = 0xD000000000000010;
  v30 = 0x8000000100014120;
  sub_100010944();
  result = [a1 userInfo];
  if (!result)
  {
    goto LABEL_19;
  }

  v19 = result;
  v20 = sub_1000107F4();

  if (*(v20 + 16) && (v21 = v3, v22 = sub_10000F020(v31), (v23 & 1) != 0))
  {
    sub_10000E4B0(*(v20 + 56) + 32 * v22, v32);
    sub_10000FB30(v31);

    result = swift_dynamicCast();
    if (result)
    {
      v24 = v29;
      v25 = v30;
      sub_100010124();
      swift_allocObject();
      sub_100010114();
      v26 = sub_100010234();
      sub_10000FE50(&qword_10001C938, &type metadata accessor for DeveloperApprovalSheetContext, &protocol conformance descriptor for DeveloperApprovalSheetContext);
      sub_100010104();
      sub_10000FE98(v24, v25);

      (*(*(v26 - 8) + 56))(v10, 0, 1, v26);
      v27 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_sheetContext;
      swift_beginAccess();
      sub_10000FEEC(v10, v21 + v27, &qword_10001C918, &qword_1000115F8);
      result = swift_endAccess();
    }
  }

  else
  {

    result = sub_10000FB30(v31);
  }

  if (a3)
  {
    return a3(v18);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000C7F8(char *a1)
{
  v58 = a1;
  v2 = sub_1000017C4(&qword_10001C910, &qword_1000115F0);
  __chkstk_darwin(v2 - 8);
  v56 = &v51 - v3;
  v4 = sub_100010154();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  v6 = __chkstk_darwin(v4);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v57 = &v51 - v7;
  v8 = sub_100010164();
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin(v8);
  v52 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ButtonSelection(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000017C4(&qword_10001C918, &qword_1000115F8);
  __chkstk_darwin(v13 - 8);
  v15 = &v51 - v14;
  v16 = sub_100010234();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_sheetContext;
  swift_beginAccess();
  sub_10000A150(v1 + v20, v15, &qword_10001C918, &qword_1000115F8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_10000B860(v15, &qword_10001C918, &qword_1000115F8);
  }

  (*(v17 + 32))(v19, v15, v16);
  sub_10000E62C(v58, v12);
  v22 = (*(v59 + 48))(v12, 2, v60);
  if (v22)
  {
    if (v22 == 1)
    {
      v23 = v1;
      v25 = v52;
      v24 = v53;
      v26 = v54;
      (*(v53 + 104))(v52, enum case for FeatureFlag.newInstallSheetFlow(_:), v54);
      v27 = sub_100010194();
      (*(v24 + 8))(v25, v26);
      if (v27)
      {
        sub_1000101B4();
        sub_100010184();

        sub_10000DDD0();
      }

      else
      {
        v37 = sub_1000101E4();
        v60 = v17;
        v38 = v16;
        v40 = v39;
        v41 = sub_100010204();
        v43 = v42;
        v44 = sub_1000101C4();
        v46 = v45;
        v47 = sub_1000101F4();
        v58 = v19;
        v49 = v48;
        v50 = v23;
        sub_10000F12C(v37, v40, v41, v43, v44, v46, v47, v49, v50);
        v16 = v38;
        v17 = v60;

        v19 = v58;
      }
    }

    else
    {
      [v1 finishProcessing];
    }

    return (*(v17 + 8))(v19, v16);
  }

  else
  {
    v28 = v59;
    v29 = v60;
    v58 = v19;
    v53 = *(v59 + 32);
    v30 = v57;
    (v53)(v57, v12, v60);
    v31 = sub_1000108A4();
    v32 = v56;
    (*(*(v31 - 8) + 56))(v56, 1, 1, v31);
    v33 = v55;
    (*(v28 + 16))(v55, v30, v29);
    sub_100010884();
    v54 = v16;
    v52 = v1;
    v34 = sub_100010874();
    v35 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *(v36 + 24) = &protocol witness table for MainActor;
    (v53)(v36 + v35, v33, v29);
    *(v36 + ((v5 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v52;
    sub_10000D270(0, 0, v32, &unk_100011608, v36);

    (*(v28 + 8))(v57, v29);
    return (*(v17 + 8))(v58, v54);
  }
}

uint64_t sub_10000CE48(char a1, uint64_t a2, void *a3)
{
  v5 = sub_1000017C4(&qword_10001C910, &qword_1000115F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1000108A4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_100010884();
  v9 = a3;
  v10 = sub_100010874();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 32) = a1;
  *(v11 + 40) = v9;
  sub_10000D270(0, 0, v7, &unk_100011630, v11);
}

uint64_t sub_10000CF80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a5;
  *(v5 + 88) = a4;
  sub_1000017C4(&qword_10001C918, &qword_1000115F8);
  *(v5 + 48) = swift_task_alloc();
  v6 = sub_100010234();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  sub_100010884();
  *(v5 + 80) = sub_100010874();
  v8 = sub_100010864();

  return _swift_task_switch(sub_10000D0B0, v8, v7);
}

uint64_t sub_10000D0B0()
{
  v1 = *(v0 + 88);

  if (v1 == 1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_sheetContext;
    swift_beginAccess();
    sub_10000A150(v5 + v6, v4, &qword_10001C918, &qword_1000115F8);
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_10000B860(*(v0 + 48), &qword_10001C918, &qword_1000115F8);
    }

    else
    {
      (*(*(v0 + 64) + 32))(*(v0 + 72), *(v0 + 48), *(v0 + 56));
      sub_1000101B4();
      sub_1000101D4();
      sub_1000101A4();
      sub_100010174();
      v8 = *(v0 + 64);
      v7 = *(v0 + 72);
      v9 = *(v0 + 56);

      sub_10000DDD0();
      (*(v8 + 8))(v7, v9);
    }
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10000D270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000017C4(&qword_10001C910, &qword_1000115F0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000A150(a3, v25 - v10, &qword_10001C910, &qword_1000115F0);
  v12 = sub_1000108A4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000B860(v11, &qword_10001C910, &qword_1000115F0);
  }

  else
  {
    sub_100010894();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100010864();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100010834() + 32;
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

      sub_10000B860(a3, &qword_10001C910, &qword_1000115F0);

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

  sub_10000B860(a3, &qword_10001C910, &qword_1000115F0);
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

uint64_t sub_10000D570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v6 = sub_100010274();
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  sub_100010884();
  v5[28] = sub_100010874();
  v8 = sub_100010864();
  v5[29] = v8;
  v5[30] = v7;

  return _swift_task_switch(sub_10000D664, v8, v7);
}

uint64_t sub_10000D664()
{
  v1 = [objc_opt_self() defaultWorkspace];
  v0[31] = v1;
  if (v1)
  {
    v3 = v1;
    sub_100010144(v2);
    v5 = v4;
    v0[32] = v4;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_10000D7C8;
    v6 = swift_continuation_init();
    v0[17] = sub_1000017C4(&qword_10001C920, &qword_100011650);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10000DB84;
    v0[13] = &unk_1000191F0;
    v0[14] = v6;
    [v3 openURL:v5 configuration:0 completionHandler:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_10000D7C8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_10000D994;
  }

  else
  {
    v5 = sub_10000D8F8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10000D8F8()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[24];

  [v3 finishProcessing];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000D994()
{
  v19 = v0;
  v1 = v0[32];
  v2 = v0[31];

  swift_willThrow();

  sub_100010254();
  swift_errorRetain();
  v3 = sub_100010264();
  v4 = sub_1000108C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[26];
    v17 = v0[27];
    v6 = v0[25];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = sub_100010994();
    v11 = sub_10000EA78(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to open learn more url: %{public}s", v7, 0xCu);
    sub_10000E554(v8);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v13 = v0[26];
    v12 = v0[27];
    v14 = v0[25];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_10000DB84(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_10000FDAC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000017C4(&qword_10001C930, &qword_100011660);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_1000107F4();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10000DC80(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = sub_100010924(*(a2 + 40)), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    do
    {
      sub_10000FB84(*(a2 + 48) + 40 * v5, v9);
      v7 = sub_100010934();
      sub_10000FB30(v9);
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_10000DD58(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10000DDD0()
{
  v1 = v0;
  v2 = sub_1000107C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000107E4();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_followUpController];
  if (v11)
  {
    v12 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_followUpIdentifier;
    swift_beginAccess();
    sub_10000A150(v1 + v12, &aBlock, &qword_10001C900, &unk_1000115D8);
    if (v22)
    {
      sub_10000E4A0(&aBlock, v26);
      sub_100009A90();
      v13 = v11;
      v19 = sub_1000108E4();
      sub_10000E4B0(v26, v25);
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      sub_10000E4A0(v25, (v14 + 24));
      *(v14 + 56) = v1;
      v23 = sub_10000E5A0;
      v24 = v14;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v21 = sub_100006660;
      v22 = &unk_100019038;
      v15 = _Block_copy(&aBlock);
      v16 = v13;
      v17 = v1;

      sub_1000107D4();
      *&aBlock = &_swiftEmptyArrayStorage;
      sub_10000FE50(&qword_10001C468, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000017C4(&qword_10001C470, &qword_1000111B0);
      sub_10000E5C8();
      sub_100010914();
      v18 = v19;
      sub_1000108F4();
      _Block_release(v15);

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v10, v6);
      return sub_10000E554(v26);
    }

    else
    {
      return sub_10000B860(&aBlock, &qword_10001C900, &unk_1000115D8);
    }
  }

  return result;
}

id sub_10000E138(void *a1, uint64_t a2, void *a3)
{
  sub_1000017C4(&qword_10001C908, &qword_1000115E8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100011570;
  sub_10000E4B0(a2, v6 + 32);
  isa = sub_100010854().super.isa;

  v11 = 0;
  LODWORD(a1) = [a1 clearPendingFollowUpItemsWithUniqueIdentifiers:isa error:&v11];

  if (a1)
  {
    v8 = v11;
  }

  else
  {
    v9 = v11;
    sub_100010134();

    swift_willThrow();
  }

  return [a3 finishProcessing];
}

id sub_10000E294()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FollowUpViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FollowUpViewController(uint64_t a1)
{
  result = qword_10001C8E8;
  if (!qword_10001C8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000E3A0(uint64_t a1)
{
  sub_10000E448(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000E448(uint64_t a1)
{
  if (!qword_10001C8F8)
  {
    sub_100010234();
    v1 = sub_100010904();
    if (!v2)
    {
      atomic_store(v1, &qword_10001C8F8);
    }
  }
}

_OWORD *sub_10000E4A0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000E4B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000E50C()
{
  sub_10000E554((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000E554(void *a1)
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

uint64_t sub_10000E5B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000E5C8()
{
  result = qword_10001C478;
  if (!qword_10001C478)
  {
    sub_100006F50(&qword_10001C470, &qword_1000111B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C478);
  }

  return result;
}

uint64_t sub_10000E62C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonSelection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E690()
{
  v1 = sub_100010154();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000E768(uint64_t a1)
{
  v4 = *(sub_100010154() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001009C;

  return sub_10000D570(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10000E888(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000E980;

  return v6(a1);
}

uint64_t sub_10000E980()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10000EA78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000EB44(v11, 0, 0, 1, a1, a2);
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
    sub_10000E4B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000E554(v11);
  return v7;
}

unint64_t sub_10000EB44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000EC50(a5, a6);
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
    result = sub_100010964();
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

char *sub_10000EC50(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000EC9C(a1, a2);
  sub_10000EDCC(&off_100018C98);
  return v3;
}

char *sub_10000EC9C(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000EEB8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100010964();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100010844();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000EEB8(v10, 0);
        result = sub_100010954();
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

uint64_t sub_10000EDCC(uint64_t result)
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

  result = sub_10000EF2C(result, v11, 1, v3);
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

void *sub_10000EEB8(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000017C4(&qword_10001C928, &qword_100011658);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000EF2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000017C4(&qword_10001C928, &qword_100011658);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_10000F020(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100010924(*(v2 + 40));

  return sub_10000F064(a1, v4);
}

unint64_t sub_10000F064(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000FB84(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100010934();
      sub_10000FB30(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_10000F12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v59 = a7;
  v60 = a8;
  v57 = a5;
  v58 = a6;
  v9 = sub_1000017C4(&qword_10001C910, &qword_1000115F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v54 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a9;
  v13 = objc_allocWithZone(LAContext);
  v14 = a9;
  v15 = [v13 init];
  aBlock[0] = 0;
  v16 = [v15 canEvaluatePolicy:2 error:aBlock];
  v17 = aBlock[0];
  if (!v16)
  {
    if (!aBlock[0])
    {
LABEL_17:
      v50 = sub_1000108A4();
      (*(*(v50 - 8) + 56))(v11, 1, 1, v50);
      sub_100010884();
      v51 = v14;
      v52 = sub_100010874();
      v53 = swift_allocObject();
      *(v53 + 16) = v52;
      *(v53 + 24) = &protocol witness table for MainActor;
      *(v53 + 32) = 0;
      *(v53 + 40) = v51;
      sub_10000D270(0, 0, v11, &unk_100011618, v53);

      goto LABEL_18;
    }

    v25 = v14;
    v26 = aBlock[0];
    v27 = [v26 domain];
    v28 = sub_100010824();
    v30 = v29;

    if (v28 == sub_100010824() && v30 == v31)
    {
    }

    else
    {
      v45 = sub_100010984();

      if ((v45 & 1) == 0)
      {
LABEL_16:

        v14 = v25;
        goto LABEL_17;
      }
    }

    if ([v26 code] == -5)
    {
      v46 = sub_1000108A4();
      (*(*(v46 - 8) + 56))(v11, 1, 1, v46);
      sub_100010884();
      v47 = v25;
      v48 = sub_100010874();
      v49 = swift_allocObject();
      *(v49 + 16) = v48;
      *(v49 + 24) = &protocol witness table for MainActor;
      *(v49 + 32) = 1;
      *(v49 + 40) = v47;
      sub_10000D270(0, 0, v11, &unk_100011620, v49);

      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v54 = v14;
  v56 = v12;
  aBlock[0] = 0;
  v55 = v17;
  v18 = [v15 evaluationMechanismsForPolicy:2 error:aBlock];
  v19 = aBlock[0];
  if (v18)
  {
    v20 = v18;
    v21 = sub_1000108B4();
    v22 = v19;

    v61[0] = 1;
    sub_100010944();
    v23 = sub_10000DC80(aBlock, v21);

    sub_10000FB30(aBlock);
    if (v23)
    {
      v24 = sub_100010814();
      [v15 setOptionAuthenticationTitle:v24];
    }
  }

  else
  {
    v32 = aBlock[0];
    sub_100010134();

    swift_willThrow();
  }

  v33 = sub_100010814();
  [v15 setOptionPasscodeTitle:v33];

  v34 = sub_100010814();
  [v15 setOptionPasswordAuthenticationReason:v34];

  v35 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleWhenUnlockedThisDeviceOnly, 0x40000001uLL, 0);
  if (v35)
  {
    v36 = v35;
    v37 = sub_100010814();
    v38 = swift_allocObject();
    v39 = v56;
    v38[2] = sub_10000F844;
    v38[3] = v39;
    aBlock[4] = sub_10000FB04;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000DD58;
    aBlock[3] = &unk_100019150;
    v40 = _Block_copy(aBlock);

    [v15 evaluateAccessControl:v36 operation:3 localizedReason:v37 reply:v40];

    _Block_release(v40);

    return;
  }

  v41 = sub_1000108A4();
  (*(*(v41 - 8) + 56))(v11, 1, 1, v41);
  sub_100010884();
  v42 = v54;
  v43 = sub_100010874();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = &protocol witness table for MainActor;
  *(v44 + 32) = 0;
  *(v44 + 40) = v42;
  sub_10000D270(0, 0, v11, &unk_100011628, v44);

LABEL_18:
}

uint64_t sub_10000F80C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F850(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001009C;

  return sub_10000CF80(a1, v4, v5, v6, v7);
}

uint64_t sub_10000F914(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000F9D8;

  return sub_10000CF80(a1, v4, v5, v6, v7);
}

uint64_t sub_10000F9D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000FACC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000FBE0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000FC20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001009C;

  return sub_10000E888(a1, v4);
}

uint64_t sub_10000FCD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F9D8;

  return sub_10000E888(a1, v4);
}

void *sub_10000FDAC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000FDF0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000FE00()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FE50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000FE98(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000FEEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000017C4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_10000FF5C()
{
  v1 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_followUpController;
  v2 = objc_allocWithZone(FLFollowUpController);
  v3 = sub_100010814();
  v4 = [v2 initWithClientIdentifier:v3];

  *(v0 + v1) = v4;
  *(v0 + OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_sheetViewController) = 0;
  v5 = (v0 + OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_followUpIdentifier);
  *v5 = 0u;
  v5[1] = 0u;
  v6 = OBJC_IVAR____TtC19ADFollowUpExtension22FollowUpViewController_sheetContext;
  v7 = sub_100010234();
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  sub_100010974();
  __break(1u);
}