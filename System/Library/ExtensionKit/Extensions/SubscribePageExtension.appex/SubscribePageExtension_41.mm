double sub_1004A30FC@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v64 = sub_10000C518(&qword_100939C68, &qword_1007C4080);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v55 - v3;
  v76 = sub_10000C518(&qword_100939C70, &qword_1007C4088);
  v66 = *(v76 - 8);
  __chkstk_darwin(v76);
  v82 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v75 = &v55 - v6;
  v61 = sub_100751B14();
  v7 = *(v61 - 1);
  __chkstk_darwin(v61);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10000C518(&qword_100939C78, &qword_1007C4090);
  v59 = *(v58 - 8);
  __chkstk_darwin(v58);
  v11 = &v55 - v10;
  v74 = sub_10000C518(&qword_100939C80, &qword_1007C4098);
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v77 = &v55 - v14;
  v15 = *(a1 + 24);
  v87 = *(a1 + 8);
  v88 = v15;
  *v89 = *(a1 + 40);
  *&v89[9] = *(a1 + 49);
  sub_1004A3B94(*&v89[9]);
  sub_100751EB4();
  v72 = sub_100751F04();
  v71 = v16;
  v60 = v17;
  v81 = v18;

  if (v88)
  {
    *&v84 = 0;
    *(&v84 + 1) = 0xE000000000000000;
    sub_100754534(48);

    *&v84 = 0x100000000000002ELL;
    *(&v84 + 1) = 0x800000010077F100;
    sub_1007531B4(v87);
  }

  sub_100751EB4();
  v79 = sub_100751F04();
  v78 = v19;
  v57 = v20;
  v80 = v21;

  sub_100751EB4();
  v68 = sub_100751F04();
  v67 = v22;
  v56 = v23;
  v69 = v24;

  *&v84 = 0xD000000000000017;
  *(&v84 + 1) = 0x800000010077F0A0;
  v85 = 0;
  v86 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v25);
  *(&v55 - 2) = a1;
  sub_10000C518(&qword_100939C88, &qword_1007C40A0);
  sub_1004A63D4();
  sub_1007520C4();
  v26 = enum case for Prominence.increased(_:);
  v27 = *(v7 + 104);
  v28 = v9;
  v29 = v9;
  v30 = v61;
  v27(v29, enum case for Prominence.increased(_:), v61);
  sub_1004A656C(&qword_100939CA0, &qword_100939C78, &qword_1007C4090, sub_1004A63D4);
  v31 = v58;
  sub_100751FF4();
  v55 = *(v7 + 8);
  v55(v28, v30);
  v32 = (*(v59 + 8))(v11, v31);
  v84 = xmmword_1007C3E80;
  v85 = 0;
  v86 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v32);
  *(&v55 - 2) = a1;
  sub_10000C518(&qword_100939CA8, &qword_1007C40A8);
  sub_1004A64B4();
  v33 = v62;
  sub_1007520C4();
  v27(v28, v26, v30);
  sub_1004A656C(&qword_100939CC8, &qword_100939C68, &qword_1007C4080, sub_1004A64B4);
  v34 = v75;
  v35 = v64;
  sub_100751FF4();
  v55(v28, v30);
  (*(v63 + 8))(v33, v35);
  v36 = v60 & 1;
  LOBYTE(v84) = v60 & 1;
  v83 = v57 & 1;
  LOBYTE(v28) = v57 & 1;
  LODWORD(v63) = v57 & 1;
  v62 = *(v73 + 16);
  v37 = v70;
  v38 = v74;
  (v62)(v70, v77, v74);
  v39 = v66;
  v61 = *(v66 + 16);
  (v61)(v82, v34, v76);
  v40 = v65;
  v41 = v72;
  v42 = v71;
  *v65 = v72;
  v40[1] = v42;
  *(v40 + 16) = v36;
  v43 = v79;
  v40[3] = v81;
  v40[4] = v43;
  v40[5] = v78;
  *(v40 + 48) = v28;
  v44 = v68;
  v40[7] = v80;
  v40[8] = v44;
  v40[9] = v67;
  LODWORD(v64) = v56 & 1;
  *(v40 + 80) = v56 & 1;
  v40[11] = v69;
  v45 = sub_10000C518(&qword_100939CD0, &qword_1007C40B8);
  (v62)(v40 + *(v45 + 80), v37, v38);
  v46 = v40 + *(v45 + 96);
  v47 = v76;
  (v61)(v46, v82, v76);
  sub_1004A65FC(v41, v42, v36);

  sub_1004A65FC(v79, v78, v63);

  v48 = v68;
  v49 = v67;
  LOBYTE(v45) = v64;
  sub_1004A65FC(v68, v67, v64);
  v50 = *(v39 + 8);

  v51 = v47;
  v50(v75, v47);
  v52 = *(v73 + 8);
  v53 = v74;
  v52(v77, v74);
  v50(v82, v51);
  v52(v70, v53);
  sub_1004A660C(v48, v49, v45);

  sub_1004A660C(v79, v78, v83);

  sub_1004A660C(v72, v71, v84);

  return result;
}

uint64_t sub_1004A3B94(__n128 a1)
{
  if (*(v1 + 18))
  {
    sub_100754534(20);

    v3 = 0x1000000000000012;
  }

  else
  {
    sub_100754534(41);

    v3 = 0x1000000000000027;
  }

  sub_1007531B4(*(v1 + 24));
  return v3;
}

uint64_t sub_1004A3C50(uint64_t a1)
{

  sub_10000C518(&qword_100939D08, &qword_1007C40F8);
  sub_10002DDC8(&qword_100939D10, &qword_100939D08, &qword_1007C40F8, &protocol conformance descriptor for [A]);
  sub_1004A6458();
  sub_1004A6670();
  return sub_1007520B4();
}

uint64_t sub_1004A3D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C518(&qword_100939CD8, &unk_1007C40C0);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_1007501F4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000C518(&qword_100939CC0, &qword_1007C40B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - v10;
  if (*(a1 + 64))
  {
    v20[6] = 0xD000000000000016;
    v20[7] = 0x80000001007C40B0;
    v21 = 1;
    v20[3] = sub_100751B44();
    sub_1007501E4();
    v20[2] = sub_10000C518(&qword_100939C88, &qword_1007C40A0);
    v20[4] = v4;
    v20[5] = a2;
    v20[1] = sub_10000C518(&qword_100939CE0, &qword_1007C40E8);
    sub_10000C518(&qword_100939CE8, &qword_1007C40F0);
    sub_1004A661C();
    sub_1004A63D4();
    sub_10002DDC8(&qword_100939CF8, &qword_100939CE0, &qword_1007C40E8, &protocol conformance descriptor for LoadingView<A>);
    sub_10002DDC8(&qword_100939D00, &qword_100939CE8, &qword_1007C40F0, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    sub_1007501B4();
    (*(v9 + 16))(v6, v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_10002DDC8(&qword_100939CB8, &qword_100939CC0, &qword_1007C40B0, &protocol conformance descriptor for IntentView<A, B, C, D>);
    sub_100751D64();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {

    sub_100751EB4();
    v13 = sub_100751F04();
    v15 = v14;
    v17 = v16;
    v19 = v18;

    *v6 = v13;
    *(v6 + 1) = v15;
    v6[16] = v17 & 1;
    *(v6 + 3) = v19;
    swift_storeEnumTagMultiPayload();
    sub_10002DDC8(&qword_100939CB8, &qword_100939CC0, &qword_1007C40B0, &protocol conformance descriptor for IntentView<A, B, C, D>);
    return sub_100751D64();
  }
}

uint64_t sub_1004A4174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_errorRetain();

  return ContentUnavailableView.init<>(error:retry:)(a1, a2, a3, v6);
}

uint64_t sub_1004A41D4(uint64_t *a1)
{

  sub_10000C518(&qword_100939D08, &qword_1007C40F8);
  sub_10002DDC8(&qword_100939D10, &qword_100939D08, &qword_1007C40F8, &protocol conformance descriptor for [A]);
  sub_1004A6458();
  sub_1004A6670();
  return sub_1007520B4();
}

uint64_t sub_1004A42AC@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[3];
  v9 = a1[2];
  v10 = v2;
  v11 = a1[4];
  v3 = v11;
  v4 = a1[1];
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  a2[2] = v9;
  a2[3] = v2;
  a2[4] = v3;
  *a2 = v5;
  a2[1] = v4;
  return sub_1004A66C4(v8, &v7);
}

uint64_t sub_1004A4300()
{
  v1 = sub_10000C518(&qword_100939C40, &qword_1007C4070);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-v3];
  v5 = v0[3];
  v11[2] = v0[2];
  v11[3] = v5;
  v11[4] = v0[4];
  v6 = v0[1];
  v11[0] = *v0;
  v11[1] = v6;
  v9 = v11;
  sub_10000C518(&qword_100939C48, &qword_1007C4078);
  sub_10002DDC8(&qword_100939C50, &qword_100939C48, &qword_1007C4078, &protocol conformance descriptor for TupleView<A>);
  sub_100751ED4();
  v10[3] = sub_1007477A4();
  v10[4] = sub_1004A6384(&qword_100939C58, &type metadata accessor for JSIntentDispatcher, &protocol conformance descriptor for JSIntentDispatcher);
  sub_100752764();
  sub_100752D34();
  sub_10002DDC8(&qword_100939C60, &qword_100939C40, &qword_1007C4070, &protocol conformance descriptor for List<A, B>);
  sub_100751F54();
  (*(v2 + 8))(v4, v1);
  return sub_10000C620(v10);
}

double sub_1004A4530@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[6] != a1[4] || a1[7] != a1[5])
  {
    sub_100754754();
  }

  sub_100751E84();
  v5 = sub_100751F04();
  v7 = v6;
  v25 = v8;
  v10 = v9;

  v11 = sub_100751D14();
  v26[0] = 0;
  sub_1004A47F8(a1, &v39);
  v32 = *&v40[48];
  v33 = *&v40[64];
  v34 = *&v40[80];
  v35 = *&v40[96];
  v28 = v39;
  v29 = *v40;
  v30 = *&v40[16];
  v31 = *&v40[32];
  v36[0] = v39;
  v36[1] = *v40;
  v36[2] = *&v40[16];
  v36[3] = *&v40[32];
  v36[4] = *&v40[48];
  v36[5] = *&v40[64];
  v36[6] = *&v40[80];
  v36[7] = *&v40[96];
  sub_100016B4C(&v28, &v37, &qword_100939D38, &qword_1007C4320);
  sub_10000C8CC(v36, &qword_100939D38, &qword_1007C4320);
  *&v27[71] = v32;
  *&v27[87] = v33;
  *&v27[103] = v34;
  *&v27[119] = v35;
  *&v27[7] = v28;
  *&v27[23] = v29;
  *&v27[39] = v30;
  *&v27[55] = v31;
  *&v37 = v11;
  *(&v37 + 1) = 0x4020000000000000;
  v38[0] = 0;
  *&v38[65] = *&v27[64];
  v13 = *&v27[48];
  v12 = *&v27[64];
  *&v38[49] = *&v27[48];
  *&v38[33] = *&v27[32];
  v15 = *&v27[16];
  v14 = *&v27[32];
  *&v38[17] = *&v27[16];
  *&v38[128] = *(&v35 + 1);
  *&v38[113] = *&v27[112];
  v17 = *&v27[96];
  v16 = *&v27[112];
  *&v38[97] = *&v27[96];
  v18 = *&v27[80];
  *&v38[81] = *&v27[80];
  v19 = *v27;
  *&v38[1] = *v27;
  v20 = *&v38[96];
  *(a2 + 128) = *&v38[80];
  *(a2 + 144) = v20;
  *(a2 + 160) = *&v38[112];
  v21 = *&v38[32];
  *(a2 + 64) = *&v38[16];
  *(a2 + 80) = v21;
  v22 = *&v38[64];
  *(a2 + 96) = *&v38[48];
  *(a2 + 112) = v22;
  v23 = *v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v23;
  *&v40[81] = v18;
  *&v40[97] = v17;
  *v41 = v16;
  *&v40[17] = v15;
  *&v40[33] = v14;
  *&v40[49] = v13;
  *&v40[65] = v12;
  v26[152] = v25 & 1;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v10;
  *(a2 + 176) = *&v38[128];
  *&v39 = v11;
  *(&v39 + 1) = 0x4020000000000000;
  v40[0] = 0;
  *&v41[15] = *&v27[127];
  *&v40[1] = v19;
  sub_1004A65FC(v5, v7, v25 & 1);

  sub_100016B4C(&v37, v26, &qword_100939D40, &qword_1007C4328);
  sub_10000C8CC(&v39, &qword_100939D40, &qword_1007C4328);
  sub_1004A660C(v5, v7, v25 & 1);

  return result;
}

double sub_1004A47F8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v35 = a1[8];
  v38 = a1[9];

  sub_100751E84();
  v37 = sub_100751F04();
  v41 = v6;
  v42 = v7;
  v40 = v8;

  v9 = v4 == v2 && v5 == v3;
  if (!v9 && (sub_100754754() & 1) == 0)
  {
    v57._countAndFlagsBits = v2;
    v57._object = v3;
    sub_1007531B4(v57);
    sub_100751EB4();
    v20 = sub_100751F04();
    v22 = v21;
    v34 = v23;
    v25 = v24;

    v58._countAndFlagsBits = v4;
    v58._object = v5;
    sub_1007531B4(v58);
    sub_100751EB4();
    v26 = sub_100751F04();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    LOBYTE(v52[0]) = v34 & 1;
    sub_1004A65FC(v20, v22, v34 & 1);

    sub_1004A65FC(v26, v28, v30 & 1);

    sub_1004A660C(v26, v28, v30 & 1);

    sub_1004A660C(v20, v22, v34 & 1);

    sub_1004A65FC(v20, v22, v34 & 1);

    sub_1004A65FC(v26, v28, v30 & 1);
    *&v53 = v20;
    *(&v53 + 1) = v22;
    LOBYTE(v54) = v34 & 1;
    *(&v54 + 1) = v25;
    *&v55 = v26;
    *(&v55 + 1) = v28;
    LOBYTE(v56) = v30 & 1;
    *(&v56 + 1) = v32;

    v10._object = v38;
    if (v38)
    {
      goto LABEL_7;
    }

LABEL_9:
    v19 = 0;
    v39 = 0;
    v18 = 0;
    v17 = 0;
    goto LABEL_10;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v10._object = v38;
  if (!v38)
  {
    goto LABEL_9;
  }

LABEL_7:
  *&v52[0] = 0x203A65746F4ELL;
  *(&v52[0] + 1) = 0xE600000000000000;
  v10._countAndFlagsBits = v35;
  sub_1007531B4(v10);
  sub_100751EA4();
  v11 = sub_100751F04();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v15 & 1;
  v19 = v11;
  v39 = v13;
  sub_1004A65FC(v11, v13, v15 & 1);

LABEL_10:
  v47 = v53;
  v48 = v54;
  v49 = v55;
  v51[0] = v53;
  v51[1] = v54;
  v50 = v56;
  v51[2] = v55;
  v51[3] = v56;
  v45 = v55;
  v46 = v56;
  v43 = v53;
  v44 = v54;
  sub_1004A65FC(v37, v41, v40 & 1);

  sub_1004A65FC(v37, v41, v40 & 1);

  sub_100016B4C(v51, v52, &qword_100939D48, &qword_1007C4330);
  sub_1004A6A80(v19, v39, v18, v17);
  sub_10000C8CC(&v53, &qword_100939D48, &qword_1007C4330);
  sub_1004A6AC4(v19, v39, v18, v17);
  sub_1004A660C(v37, v41, v40 & 1);

  *a2 = v37;
  *(a2 + 8) = v41;
  *(a2 + 16) = v40 & 1;
  *(a2 + 24) = v42;
  *(a2 + 32) = v43;
  *(a2 + 48) = v44;
  *(a2 + 64) = v45;
  *(a2 + 80) = v46;
  *(a2 + 96) = v19;
  *(a2 + 104) = v39;
  *(a2 + 112) = v18;
  *(a2 + 120) = v17;
  sub_1004A6AC4(v19, v39, v18, v17);
  v52[0] = v47;
  v52[1] = v48;
  v52[2] = v49;
  v52[3] = v50;
  sub_10000C8CC(v52, &qword_100939D48, &qword_1007C4330);
  sub_1004A660C(v37, v41, v40 & 1);

  return result;
}

double sub_1004A4CA4@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v28[1] = v1[1];
  v4 = v1[3];
  v28[2] = v1[2];
  v28[3] = v4;
  v28[4] = v1[4];
  v28[0] = v3;
  v5 = sub_100751C84();
  v27 = 0;
  sub_1004A4530(v28, &v14);
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v41[8] = v22;
  v41[9] = v23;
  v41[10] = v24;
  v41[4] = v18;
  v41[5] = v19;
  v41[6] = v20;
  v41[7] = v21;
  v41[0] = v14;
  v41[1] = v15;
  v40 = v25;
  v42 = v25;
  v41[2] = v16;
  v41[3] = v17;
  sub_100016B4C(&v29, v13, &qword_100939D30, &qword_1007C4318);
  sub_10000C8CC(v41, &qword_100939D30, &qword_1007C4318);
  *(&v26[8] + 7) = v37;
  *(&v26[9] + 7) = v38;
  *(&v26[10] + 7) = v39;
  *(&v26[11] + 7) = v40;
  *(&v26[4] + 7) = v33;
  *(&v26[5] + 7) = v34;
  *(&v26[6] + 7) = v35;
  *(&v26[7] + 7) = v36;
  *(v26 + 7) = v29;
  *(&v26[1] + 7) = v30;
  *(&v26[2] + 7) = v31;
  *(&v26[3] + 7) = v32;
  v6 = v26[9];
  *(a1 + 145) = v26[8];
  *(a1 + 161) = v6;
  *(a1 + 177) = v26[10];
  *(a1 + 192) = *(&v26[10] + 15);
  v7 = v26[5];
  *(a1 + 81) = v26[4];
  *(a1 + 97) = v7;
  v8 = v26[7];
  *(a1 + 113) = v26[6];
  *(a1 + 129) = v8;
  v9 = v26[1];
  *(a1 + 17) = v26[0];
  *(a1 + 33) = v9;
  result = *&v26[2];
  v11 = v26[3];
  *(a1 + 49) = v26[2];
  v12 = v27;
  *a1 = v5;
  *(a1 + 8) = 0x4038000000000000;
  *(a1 + 16) = v12;
  *(a1 + 65) = v11;
  return result;
}

uint64_t sub_1004A4EB4()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];
  v2 = v1;
  if (!v1)
  {
    v3 = [v0 ams_fetchLocaliTunesAccount];
    v11 = 0;
    v4 = [v3 resultWithError:&v11];

    if (!v4)
    {
      v9 = v11;
      sub_100741134();

      swift_willThrow();

      v2 = 0;
      goto LABEL_7;
    }

    v5 = v11;
    v2 = v4;
    v1 = 0;
  }

  v6 = v1;
  v7 = [v2 ams_storefront];

  if (!v7)
  {
LABEL_7:

    return 0;
  }

  v8 = sub_100753094();

  return v8;
}

__n128 sub_1004A503C@<Q0>(uint64_t a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  sub_1004A5EC8(a2, a3, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v6;
    *(a1 + 64) = v7[4];
    result = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1004A508C()
{
  v0 = sub_100741494();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100939C30, &qword_1007C3EF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007C3E90;
  v72 = 0x800000010077EBD0;
  v75._countAndFlagsBits = 0xD000000000000016;
  v75._object = 0x800000010077EC00;
  v84._countAndFlagsBits = 0;
  v84._object = 0xE000000000000000;
  v5 = sub_1007458B4(v75, v84);
  v7 = v6;
  sub_100741484();
  v8 = sub_100741464();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v3, v0);
  v74 = v1 + 8;
  *(v4 + 32) = v8;
  *(v4 + 40) = v10;
  v12 = v72;
  *(v4 + 48) = 0xD000000000000025;
  *(v4 + 56) = v12;
  *(v4 + 64) = 1852141647;
  *(v4 + 72) = 0xE400000000000000;
  *(v4 + 80) = v5;
  *(v4 + 88) = v7;
  v72 = 0x800000010077EC20;
  *(v4 + 96) = 0u;
  v76._countAndFlagsBits = 0x525F5245544F4F46;
  v76._object = 0xED00004D45454445;
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  v13 = sub_1007458B4(v76, v85);
  v15 = v14;
  sub_100741484();
  v16 = sub_100741464();
  v18 = v17;
  v11(v3, v0);
  *(v4 + 112) = v16;
  *(v4 + 120) = v18;
  v19 = v72;
  *(v4 + 128) = 0xD000000000000025;
  *(v4 + 136) = v19;
  *(v4 + 144) = 0x6D6565646552;
  *(v4 + 152) = 0xE600000000000000;
  *(v4 + 160) = v13;
  *(v4 + 168) = v15;
  v72 = 0x800000010077EC50;
  *(v4 + 176) = 0u;
  v77._object = 0x800000010076D9F0;
  v77._countAndFlagsBits = 0xD000000000000013;
  v86._countAndFlagsBits = 0;
  v86._object = 0xE000000000000000;
  v70 = sub_10074B194(v77, 2, v86);
  v21 = v20;
  sub_100741484();
  v22 = sub_100741464();
  v24 = v23;
  v73 = v0;
  v11(v3, v0);
  *(v4 + 192) = v22;
  *(v4 + 200) = v24;
  v25 = v72;
  *(v4 + 208) = 0xD000000000000041;
  *(v4 + 216) = v25;
  *(v4 + 224) = 0x676E697461522032;
  *(v4 + 232) = 0xE900000000000073;
  *(v4 + 240) = v70;
  *(v4 + 248) = v21;
  v72 = 0x800000010077ECA0;
  *(v4 + 256) = 0u;
  v78._object = 0x800000010076D9F0;
  v78._countAndFlagsBits = 0xD000000000000013;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v26 = sub_10074B194(v78, 1, v87);
  v28 = v27;
  sub_100741484();
  v29 = sub_100741464();
  v31 = v30;
  v11(v3, v0);
  *(v4 + 272) = v29;
  *(v4 + 280) = v31;
  v32 = v72;
  *(v4 + 288) = 0xD000000000000041;
  *(v4 + 296) = v32;
  *(v4 + 304) = 0x676E697461522031;
  *(v4 + 312) = 0xE800000000000000;
  *(v4 + 320) = v26;
  *(v4 + 328) = v28;
  v72 = 0x800000010077ED30;
  v79._countAndFlagsBits = 0xD000000000000028;
  *(v4 + 336) = 0u;
  v79._object = 0x800000010077ED50;
  v88._countAndFlagsBits = 0;
  v88._object = 0xE000000000000000;
  v33 = sub_10074B194(v79, 3, v88);
  v35 = v34;
  sub_100741484();
  v36 = sub_100741464();
  v38 = v37;
  v39 = v73;
  v71 = v11;
  v11(v3, v73);
  *(v4 + 352) = v36;
  *(v4 + 360) = v38;
  *(v4 + 368) = 0xD000000000000036;
  *(v4 + 376) = 0x800000010077ECF0;
  v40 = v72;
  *(v4 + 384) = 0xD000000000000017;
  *(v4 + 392) = v40;
  *(v4 + 400) = v33;
  *(v4 + 408) = v35;
  v72 = 0x800000010077ED80;
  v70 = 0x800000010077EDD0;
  *(v4 + 416) = 0u;
  v80._object = 0x800000010077EDF0;
  v80._countAndFlagsBits = 0xD00000000000002FLL;
  v89._countAndFlagsBits = 0;
  v89._object = 0xE000000000000000;
  v41 = sub_10074B194(v80, 1, v89);
  v43 = v42;
  sub_100741484();
  v44 = sub_100741464();
  v46 = v45;
  v11(v3, v39);
  *(v4 + 432) = v44;
  *(v4 + 440) = v46;
  v47 = v72;
  *(v4 + 448) = 0xD000000000000045;
  *(v4 + 456) = v47;
  v48 = v70;
  *(v4 + 464) = 0xD000000000000014;
  *(v4 + 472) = v48;
  *(v4 + 480) = v41;
  *(v4 + 488) = v43;
  v72 = 0x800000010077EE70;
  *(v4 + 496) = 0u;
  v81._object = 0x800000010077EDF0;
  v81._countAndFlagsBits = 0xD00000000000002FLL;
  v90._countAndFlagsBits = 0;
  v90._object = 0xE000000000000000;
  v70 = sub_10074B194(v81, 2, v90);
  v50 = v49;
  sub_100741484();
  v51 = sub_100741464();
  v53 = v52;
  v54 = v71;
  v71(v3, v39);
  *(v4 + 512) = v51;
  *(v4 + 520) = v53;
  *(v4 + 528) = 0xD000000000000045;
  *(v4 + 536) = 0x800000010077EE20;
  *(v4 + 544) = 0xD000000000000015;
  *(v4 + 552) = 0x800000010077EE70;
  *(v4 + 560) = v70;
  *(v4 + 568) = v50;
  v70 = 0x800000010077EE90;
  v82._countAndFlagsBits = 0xD00000000000002CLL;
  *(v4 + 576) = 0u;
  v82._object = 0x800000010077EEF0;
  v91._countAndFlagsBits = 0;
  v91._object = 0xE000000000000000;
  v55 = sub_10074B194(v82, 2, v91);
  v57 = v56;
  sub_100741484();
  v58 = sub_100741464();
  v60 = v59;
  v61 = v73;
  v54(v3, v73);
  *(v4 + 592) = v58;
  *(v4 + 600) = v60;
  *(v4 + 608) = 0xD000000000000050;
  *(v4 + 616) = v70;
  *(v4 + 624) = 0xD000000000000015;
  *(v4 + 632) = v72;
  *(v4 + 640) = v55;
  *(v4 + 648) = v57;
  v83._countAndFlagsBits = 0xD000000000000011;
  *(v4 + 656) = 0u;
  v83._object = 0x800000010077EF50;
  v62 = sub_10074CF34(v83);
  v64 = v63;
  sub_100741484();
  v65 = sub_100741464();
  v67 = v66;
  result = (v54)(v3, v61);
  *(v4 + 672) = v65;
  *(v4 + 680) = v67;
  *(v4 + 688) = 0xD000000000000023;
  *(v4 + 696) = 0x800000010077EF20;
  *(v4 + 704) = 0xB9B4E88D85E5;
  *(v4 + 712) = 0xA600000000000000;
  *(v4 + 720) = v62;
  *(v4 + 728) = v64;
  *(v4 + 736) = 0xD00000000000002FLL;
  *(v4 + 744) = 0x800000010077EF70;
  qword_100939BE0 = v4;
  return result;
}

void sub_1004A5788(uint64_t a1@<X0>, void *a3@<X8>)
{
  v5 = objc_opt_self();
  v6 = [v5 valueWithNewObjectInContext:a1];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 valueWithObject:sub_100754794() inContext:a1];
    swift_unknownObjectRelease();
    if (v8)
    {
      sub_100753D94();
      a3[3] = sub_100016C60(0, &qword_100939D60, JSValue_ptr);
      a3[4] = &protocol witness table for JSValue;

      *a3 = v7;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1004A58B8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1004A5928@<X0>(uint64_t *a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1004A6B08(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

void sub_1004A5954(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C518(&unk_100947360, &qword_1007C3EF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v8 = sub_1004A4EB4();
  v30 = v9;
  v31 = v8;
  v35 = 0;
  v36 = 0xE000000000000000;

  sub_100754534(64);
  v37._object = 0x800000010077EB90;
  v37._countAndFlagsBits = 0x1000000000000032;
  sub_1007531B4(v37);
  v38._object = 0x8000000100766B90;
  v38._countAndFlagsBits = 0xD000000000000013;
  sub_1007531B4(v38);
  v39._countAndFlagsBits = 0x206562206F742022;
  v39._object = 0xEC00000065757274;
  sub_1007531B4(v39);
  v28 = v36;
  v29 = v35;
  sub_100752664();
  sub_100752854();
  sub_100752844();
  sub_100752534();

  (*(v5 + 8))(v7, v4);
  v10 = v35;
  sub_100744AC4();
  sub_100752764();
  v32 = a1;
  sub_100752D34();
  v27 = v35;
  v11 = sub_100744904();
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  if (v13 == 0x2D736E61482D687ALL && v14 == 0xEA00000000004E43)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_100754754();
  }

  v25 = v15 & 1;
  v26 = v10 & 1;
  v16 = [objc_opt_self() mainBundle];
  v17._rawValue = &off_100862CC0;
  v18 = sub_100753F84(v17);
  v20 = v19;

  v35 = v18;
  v36 = v20;
  v33 = 26746;
  v34 = 0xE200000000000000;
  sub_1004A5D40();
  sub_1004A5D94();
  LOBYTE(v16) = sub_100752FC4();

  LOBYTE(v20) = v16 & 1;
  v22 = v30;
  v21 = v31;
  v35 = v31;
  v36 = v30;
  v33 = 0x312D313434333431;
  v34 = 0xE800000000000000;
  LOBYTE(v16) = sub_100752FC4();

  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 16) = v25;
  *(a2 + 17) = v20;
  *(a2 + 18) = v16 & 1;
  *(a2 + 24) = v21;
  *(a2 + 32) = v22;
  v23 = v28;
  *(a2 + 40) = v29;
  *(a2 + 48) = v23;
  *(a2 + 56) = v26;
}

unint64_t sub_1004A5D40()
{
  result = qword_100939C20;
  if (!qword_100939C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939C20);
  }

  return result;
}

unint64_t sub_1004A5D94()
{
  result = qword_100939C28;
  if (!qword_100939C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939C28);
  }

  return result;
}

uint64_t sub_1004A5E00(uint64_t *a1, int a2)
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

uint64_t sub_1004A5E48(uint64_t result, int a2, int a3)
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

uint64_t sub_1004A5EC8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a3;
  v59 = a2;
  v4 = sub_100741494();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v54 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100752384();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v48 - v10;
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  v18 = 0xE400000000000000;
  sub_100752394();
  v53 = sub_100752374();
  v20 = v19;
  v21 = *(v7 + 8);
  v21(v17, v6);
  if (v20)
  {
    v58 = v20;
    v22 = 0x6465746365707865;
    v18 = 0xE800000000000000;
    sub_100752394();
    v51 = sub_100752374();
    v24 = v23;
    v21(v14, v6);
    v25 = a1;
    if (v24)
    {
      v50 = v24;
      v22 = 0x6C6175746361;
      sub_100752394();
      v26 = sub_100752374();
      v28 = v27;
      v21(v11, v6);
      if (v28)
      {
        v48 = v26;
        v49 = v28;
        v29 = v52;
        sub_100752394();
        v30 = v21;
        v31 = sub_100752374();
        v33 = v32;
        v30(v29, v6);
        v34 = v54;
        sub_100741484();
        v35 = sub_100741464();
        v37 = v36;
        v38 = sub_1007524B4();
        (*(*(v38 - 8) + 8))(v59, v38);
        v30(v25, v6);
        result = (*(v55 + 8))(v34, v56);
        v40 = v57;
        *v57 = v35;
        v40[1] = v37;
        v41 = v58;
        v40[2] = v53;
        v40[3] = v41;
        v42 = v50;
        v40[4] = v51;
        v40[5] = v42;
        v43 = v49;
        v40[6] = v48;
        v40[7] = v43;
        v40[8] = v31;
        v40[9] = v33;
        return result;
      }

      v44 = v21;

      v18 = 0xE600000000000000;
    }

    else
    {
      v44 = v21;
    }
  }

  else
  {
    v44 = v21;
    v25 = a1;
    v22 = 1701667182;
  }

  v45 = sub_100752E64();
  sub_1004A6384(&qword_100939C38, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
  swift_allocError();
  *v46 = v22;
  v46[1] = v18;
  v46[2] = &type metadata for LocalizationTestCase;
  (*(*(v45 - 8) + 104))(v46, enum case for JSONError.missingProperty(_:), v45);
  swift_willThrow();
  v47 = sub_1007524B4();
  (*(*(v47 - 8) + 8))(v59, v47);
  return v44(v25, v6);
}

uint64_t sub_1004A6384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1004A63D4()
{
  result = qword_100939C90;
  if (!qword_100939C90)
  {
    sub_10000C724(&qword_100939C88, &qword_1007C40A0);
    sub_1004A6458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939C90);
  }

  return result;
}

unint64_t sub_1004A6458()
{
  result = qword_100939C98;
  if (!qword_100939C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939C98);
  }

  return result;
}

unint64_t sub_1004A64B4()
{
  result = qword_100939CB0;
  if (!qword_100939CB0)
  {
    sub_10000C724(&qword_100939CA8, &qword_1007C40A8);
    sub_10002DDC8(&qword_100939CB8, &qword_100939CC0, &qword_1007C40B0, &protocol conformance descriptor for IntentView<A, B, C, D>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939CB0);
  }

  return result;
}

uint64_t sub_1004A656C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000C724(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1004A65FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

double sub_1004A660C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_1004A661C()
{
  result = qword_100939CF0;
  if (!qword_100939CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939CF0);
  }

  return result;
}

unint64_t sub_1004A6670()
{
  result = qword_100939D18;
  if (!qword_100939D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939D18);
  }

  return result;
}

__n128 sub_1004A66FC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1004A6710(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1004A6758(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004A67A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1004A67F0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_1004A6854(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1004A6870(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1004A68B8(uint64_t result, int a2, int a3)
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
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004A6918()
{
  sub_10000C724(&qword_100939C40, &qword_1007C4070);
  sub_10002DDC8(&qword_100939C60, &qword_100939C40, &qword_1007C4070, &protocol conformance descriptor for List<A, B>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1004A69B4()
{
  result = qword_100939D20;
  if (!qword_100939D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939D20);
  }

  return result;
}

unint64_t sub_1004A6A10()
{
  result = qword_100939D28;
  if (!qword_100939D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939D28);
  }

  return result;
}

double sub_1004A6A80(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1004A65FC(a1, a2, a3 & 1);
  }

  return result;
}

double sub_1004A6AC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1004A660C(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1004A6B08(char *a1, uint64_t a2)
{
  v32 = a2;
  v31 = sub_1007524B4();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_100939D50, &qword_1007C4338);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_100752384();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752E54();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  v33 = a1;
  sub_100752394();
  sub_100752364();
  v18 = *(v8 + 8);
  v30 = v7;
  v18(v10, v7);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_10000C8CC(v6, &qword_100939D50, &qword_1007C4338);
    v19 = sub_100752E64();
    sub_1004A6384(&qword_100939C38, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v20 = 0x6573614374736574;
    v20[1] = 0xE900000000000073;
    v20[2] = &type metadata for LocalizationTestResponse;
    (*(*(v19 - 8) + 104))(v20, enum case for JSONError.missingProperty(_:), v19);
    swift_willThrow();
    (*(v29 + 8))(v32, v31);
    v18(v33, v30);
  }

  else
  {
    (*(v12 + 32))(v17, v6, v11);
    v21 = *(v12 + 16);
    v27 = v18;
    v21(v14, v17, v11);
    v22 = v29;
    v24 = v31;
    v23 = v32;
    (*(v29 + 16))(v28, v32, v31);
    sub_1004A6FA0();
    v19 = sub_100753364();
    (*(v22 + 8))(v23, v24);
    v27(v33, v30);
    (*(v12 + 8))(v17, v11);
  }

  return v19;
}

unint64_t sub_1004A6FA0()
{
  result = qword_100939D58;
  if (!qword_100939D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939D58);
  }

  return result;
}

unint64_t sub_1004A7074()
{
  result = qword_100935470;
  if (!qword_100935470)
  {
    sub_10074E0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100935470);
  }

  return result;
}

void sub_1004A70CC(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v3 = 0;
    v13 = v1 & 0xC000000000000001;
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v13)
      {
        v5 = sub_100754574();
      }

      else
      {
        if (v3 >= *(v4 + 16))
        {
          goto LABEL_12;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = [v5 items];
      sub_100016C60(0, &qword_100939BC0, AMSNotificationSettingsItem_ptr);
      v9 = v1;
      v10 = sub_1007532A4();

      v11 = v10;
      v1 = v9;
      sub_1004A0400(v11, v12);

      ++v3;
      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_1004A7204(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_100752404();
  __chkstk_darwin(v10 - 8);
  if (a1)
  {
    v39 = a6;
    v40 = a4;
    v11 = swift_allocObject();
    *(v11 + 16) = _swiftEmptyArrayStorage;
    v12 = (v11 + 16);
    v41 = a1;
    v13 = sub_10074E0C4();
    if (v13)
    {
      v14 = v13;
      if (qword_100921EE0 != -1)
      {
        swift_once();
      }

      v15 = sub_100752E44();
      sub_10000D0FC(v15, qword_100983318);
      sub_10000C518(&qword_100923930, &qword_1007A6B60);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      sub_1007523F4();
      v48._countAndFlagsBits = 0xD00000000000004DLL;
      v48._object = 0x800000010077F2F0;
      sub_1007523E4(v48);
      v45 = sub_10000C518(&unk_100928A70, &unk_1007AC470);
      aBlock = v14;

      sub_1007523C4();
      sub_1000277BC(&aBlock);
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      sub_1007523E4(v49);
      sub_100752414();
      sub_100752CE4();

      v16 = [v41 sections];
      sub_100016C60(0, &qword_100939D88, AMSNotificationSettingsSection_ptr);
      v17 = sub_1007532A4();

      sub_1004A8200(v17, v12, v14);

      swift_bridgeObjectRelease_n();
    }

    else
    {
      if (qword_100921EE0 != -1)
      {
        swift_once();
      }

      v18 = sub_100752E44();
      sub_10000D0FC(v18, qword_100983318);
      sub_10000C518(&qword_100923930, &qword_1007A6B60);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      sub_1007523A4();
      sub_100752CE4();

      v19 = [v41 sections];
      sub_100016C60(0, &qword_100939D88, AMSNotificationSettingsSection_ptr);
      v20 = sub_1007532A4();

      sub_1004A70CC(v20);
    }

    v21 = *v12;
    if (*v12 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
    {

      if (!i)
      {
        break;
      }

      v23 = 0;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = sub_100754574();
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        [v24 setEnabled:1];

        ++v23;
        if (v26 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_22:

    v27 = sub_100744AB4();
    v28 = objc_allocWithZone(AMSNotificationSettingsTask);
    v29 = sub_100753064();
    v30 = [v28 initWithIdentifier:v29 account:v40 bag:v27];

    swift_unknownObjectRelease();
    sub_100016C60(0, &qword_100939BC0, AMSNotificationSettingsItem_ptr);

    isa = sub_100753294().super.isa;

    v32 = [v30 updateSettings:isa];

    if (v32)
    {
      v33 = swift_allocObject();
      *(v33 + 16) = v11;
      *(v33 + 24) = v39;
      v46 = sub_1004A89B4;
      v47 = v33;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_1005171C8;
      v45 = &unk_100877A10;
      v34 = _Block_copy(&aBlock);

      [v32 addFinishBlock:v34];

      _Block_release(v34);
    }

    else
    {
    }
  }

  else
  {
    if (!a2)
    {
      sub_1004A8874();
      swift_allocError();
      *v35 = 1;
    }

    swift_errorRetain();
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v36 = sub_100752E44();
    sub_10000D0FC(v36, qword_100983318);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523F4();
    v50._countAndFlagsBits = 0xD000000000000030;
    v50._object = 0x800000010077F260;
    sub_1007523E4(v50);
    swift_getErrorValue();
    v37 = sub_1007547C4();
    v45 = &type metadata for String;
    aBlock = v37;
    v43 = v38;
    sub_1007523C4();
    sub_1000277BC(&aBlock);
    v51._countAndFlagsBits = 0;
    v51._object = 0xE000000000000000;
    sub_1007523E4(v51);
    sub_100752414();
    sub_100752CE4();

    sub_100752DA4();
  }
}

void sub_1004A7A90(id *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v4 = [*a1 items];
  sub_100016C60(0, &qword_100939BC0, AMSNotificationSettingsItem_ptr);
  v5 = sub_1007532A4();

  v23 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v17[5] = a2;
    v18 = i;
    v7 = 0;
    v19 = v5 & 0xFFFFFFFFFFFFFF8;
    v20 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v20)
      {
        v8 = sub_100754574();
      }

      else
      {
        if (v7 >= *(v19 + 16))
        {
          goto LABEL_15;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 identifier];
      v12 = sub_100753094();
      a2 = v13;

      v22[0] = v12;
      v22[1] = a2;
      __chkstk_darwin(v14);
      v17[2] = v22;
      LOBYTE(v11) = sub_100073B4C(sub_1004A89BC, v17, v21);

      if (v11)
      {
        sub_1007545A4();
        a2 = v23[2];
        sub_1007545D4();
        sub_1007545E4();
        sub_1007545B4();
      }

      else
      {
      }

      ++v7;
      if (v10 == v18)
      {
        v15 = v23;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_18:

  sub_1004A0400(v15, v16);
}

uint64_t sub_1004A7CC0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100752624();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 48;
  v12 = sub_100752404();
  __chkstk_darwin(v12 - 8);
  if (a1)
  {
    v21 = a4;
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v13 = sub_100752E44();
    sub_10000D0FC(v13, qword_100983318);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523F4();
    v24._countAndFlagsBits = 0xD000000000000037;
    v24._object = 0x800000010077F370;
    sub_1007523E4(v24);
    swift_beginAccess();
    v14 = *(a3 + 16);
    v23 = sub_10000C518(&qword_100939BC8, &unk_1007C3E70);
    v22[0] = v14;

    sub_1007523C4();
    sub_1000277BC(v22);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_1007523E4(v25);
    sub_100752414();
    sub_100752CE4();

    (*(v9 + 104))(v11, enum case for ActionOutcome.performed(_:), v8);
    sub_100752DB4();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    if (!a2)
    {
      sub_1004A8874();
      swift_allocError();
      *v16 = 2;
    }

    swift_errorRetain();
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v17 = sub_100752E44();
    sub_10000D0FC(v17, qword_100983318);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523F4();
    v26._object = 0x800000010077F340;
    v26._countAndFlagsBits = 0xD00000000000002DLL;
    sub_1007523E4(v26);
    swift_beginAccess();
    v18 = *(a3 + 16);
    v23 = sub_10000C518(&qword_100939BC8, &unk_1007C3E70);
    v22[0] = v18;

    sub_1007523C4();
    sub_1000277BC(v22);
    v27._countAndFlagsBits = 0x3A726F727245202ELL;
    v27._object = 0xE900000000000020;
    sub_1007523E4(v27);
    swift_getErrorValue();
    v19 = sub_1007547C4();
    v23 = &type metadata for String;
    v22[0] = v19;
    v22[1] = v20;
    sub_1007523C4();
    sub_1000277BC(v22);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    sub_1007523E4(v28);
    sub_100752414();
    sub_100752CE4();

    sub_100752DA4();
  }
}

void sub_1004A8200(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_100754574();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_1004A7A90(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1004A8300(uint64_t a1, uint64_t a2)
{
  v3 = sub_100752404();
  __chkstk_darwin(v3 - 8);
  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  v4 = sub_100752DE4();
  sub_100016C60(0, &qword_100939F50, ACAccountStore_ptr);
  sub_100752764();
  sub_100752D34();
  v5 = [aBlock[0] ams_activeiTunesAccount];

  if (v5)
  {
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v6 = sub_100752E44();
    sub_10000D0FC(v6, qword_100983318);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523F4();
    v25._countAndFlagsBits = 0xD00000000000002DLL;
    v25._object = 0x800000010077F1F0;
    sub_1007523E4(v25);
    v22 = sub_100016C60(0, &qword_100939D80, ACAccount_ptr);
    aBlock[0] = v5;
    v7 = v5;
    sub_1007523C4();
    sub_1000277BC(aBlock);
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    sub_1007523E4(v26);
    sub_100752414();
    sub_100752CE4();

    sub_100744AC4();
    sub_100752D34();
    v8 = aBlock[0];
    v9 = v7;
    v10 = sub_100744AB4();
    v11 = objc_allocWithZone(AMSNotificationSettingsTask);
    v12 = sub_100753064();
    v13 = [v11 initWithIdentifier:v12 account:v9 bag:v10];

    swift_unknownObjectRelease();
    v14 = [v13 fetchAllSettings];
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = v9;
    v15[4] = v8;
    v15[5] = v4;
    v23 = sub_1004A8918;
    v24 = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000E7BD4;
    v22 = &unk_100877998;
    v16 = _Block_copy(aBlock);
    v17 = v9;

    [v14 addFinishBlock:v16];
    _Block_release(v16);
  }

  else
  {
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v18 = sub_100752E44();
    sub_10000D0FC(v18, qword_100983318);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752CE4();

    sub_1004A8874();
    swift_allocError();
    *v19 = 0;
    sub_100752DA4();
  }

  return v4;
}

unint64_t sub_1004A8874()
{
  result = qword_100939D78;
  if (!qword_100939D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939D78);
  }

  return result;
}

uint64_t sub_1004A88C8()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_1004A8924(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1004A893C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004A8974()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1004A89F0()
{
  result = qword_100939D90;
  if (!qword_100939D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939D90);
  }

  return result;
}

char *sub_1004A8A4C(char *a1, __int128 *a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = a2[5];
  v63 = a2[4];
  v64 = v10;
  v11 = a2[7];
  v65 = a2[6];
  v66 = v11;
  v12 = a2[1];
  v59 = *a2;
  v60 = v12;
  v13 = a2[3];
  v61 = a2[2];
  v62 = v13;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC22SubscribePageExtension15VideoMirrorView_videoLayer;
  *&v5[v14] = [objc_allocWithZone(AVPlayerLayer) init];
  swift_unknownObjectWeakAssign();
  v49 = a1;
  if (a1)
  {
    a1 = *&a1[qword_10093CB50];
  }

  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer;
  *&v5[v15] = [objc_allocWithZone(CALayer) init];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_imageKVOContext] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_imageObserversAdded] = 0;
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_contentsScaleFactor] = a3;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_contentsVerticalOffset] = a4;
  v58.receiver = v5;
  v58.super_class = type metadata accessor for MirrorView();
  v16 = objc_msgSendSuper2(&v58, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v16 setClipsToBounds:1];
  [v16 setUserInteractionEnabled:0];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer;
  [*&v16[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
  LODWORD(v18) = 1.0;
  [*&v16[v17] setOpacity:v18];
  [*&v16[v17] setAnchorPoint:{0.5, 0.5}];
  v19 = qword_100920648;
  v20 = *&v16[v17];
  if (v19 != -1)
  {
    swift_once();
  }

  sub_10000C518(&qword_100939AA0, qword_1007C4530);
  isa = sub_100752F34().super.isa;
  [v20 setActions:isa];

  v22 = *&v16[v17];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 mainScreen];
  [v25 scale];
  v27 = v26;

  [v24 setContentsScale:v27];
  [*&v16[v17] setMasksToBounds:1];
  v28 = *&v16[v17];
  v29 = a2[5];
  v54 = a2[4];
  v55 = v29;
  v30 = a2[7];
  v56 = a2[6];
  v57 = v30;
  v31 = a2[1];
  v50 = *a2;
  v51 = v31;
  v32 = a2[3];
  v52 = a2[2];
  v53 = v32;
  [v28 setTransform:&v50];
  sub_10022A458();
  v33 = [v16 layer];

  [v33 addSublayer:*&v16[v17]];
  v34 = v16;
  [v34 setClipsToBounds:1];
  [v34 setUserInteractionEnabled:0];
  v35 = OBJC_IVAR____TtC22SubscribePageExtension15VideoMirrorView_videoLayer;
  [*&v34[OBJC_IVAR____TtC22SubscribePageExtension15VideoMirrorView_videoLayer] setAnchorPoint:{0.5, 0.5}];
  v36 = *&v34[v35];
  v37 = sub_100752F34().super.isa;
  [v36 setActions:v37];

  v38 = *&v34[v35];
  v39 = [v23 mainScreen];
  [v39 scale];
  v41 = v40;

  [v38 setContentsScale:v41];
  [*&v34[v35] setMasksToBounds:1];
  [*&v34[v35] setContentsGravity:kCAGravityResizeAspectFill];
  v42 = *&v34[v35];
  v54 = v63;
  v55 = v64;
  v56 = v65;
  v57 = v66;
  v50 = v59;
  v51 = v60;
  v52 = v61;
  v53 = v62;
  [v42 setTransform:&v50];
  sub_1004A9648();
  v43 = [v34 layer];
  v44 = *&v16[v17];
  v45 = *&v34[v35];
  v46 = v44;

  [v43 insertSublayer:v45 below:v46];
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1007A5A00;
  *(v47 + 32) = sub_100751574();
  *(v47 + 40) = &protocol witness table for _UITraitHDRHeadroomUsage;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v34;
}

void sub_1004A901C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      swift_unknownObjectRelease();
      if (v5 == v1)
      {
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v7 = v6;

          if (v7 == a1)
          {
            return;
          }
        }

        else if (!a1)
        {
          return;
        }

        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8)
        {
          v9 = v8;
          sub_100517240(0, 0);
        }
      }
    }
  }
}

double sub_1004A92F4(double a1, double a2)
{
  v3 = sub_100747D94();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_1007504F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v25 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = qword_100982288;
    v18 = Strong;
    swift_beginAccess();
    (*(v4 + 16))(v6, &v18[v17], v3);

    sub_100747CE4();
    (*(v4 + 8))(v6, v3);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v15, v9, v10);
      sub_100750464();
      a1 = v19;
LABEL_8:
      (*(v11 + 8))(v15, v10);
      return a1;
    }
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  sub_1000A5080(v9);
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 image];

    if (v22)
    {
      [v22 size];
      v15 = v25;
      sub_100750504();
      sub_100750464();
      a1 = v23;

      goto LABEL_8;
    }
  }

  return a1;
}

void sub_1004A9648()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_10093CB50);
  }

  else
  {
    v4 = 0;
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    if (!v5)
    {

      goto LABEL_11;
    }

    sub_1001A28CC();
    v8 = v5;
    v9 = sub_100753FC4();

    if (v9)
    {

      goto LABEL_12;
    }

LABEL_9:
    v10 = sub_100753064();
    v11 = OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_imageKVOContext;
    swift_beginAccess();
    [v5 removeObserver:v1 forKeyPath:v10 context:v1 + v11];
    swift_endAccess();

LABEL_11:
    sub_10022A458();

    goto LABEL_12;
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_12:
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = swift_unknownObjectRetain();
    sub_100517240(v14, &off_100877AC8);
  }

  v15 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension15VideoMirrorView_videoLayer);
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16 && (v17 = v16, v18 = [v16 backgroundColor], v17, v18))
  {
    v19 = [v18 CGColor];
  }

  else
  {
    v19 = 0;
  }

  [v15 setBackgroundColor:v19];

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = *(v20 + qword_10093CB70);
  }

  else
  {
    v22 = 0;
  }

  [v15 setPlayer:v22];

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23 && (v24 = *(v23 + qword_10093CB78), v25 = v23, v26 = v24, v25, v24))
  {
    v27 = [v26 videoGravity];
  }

  else
  {
    v27 = AVLayerVideoGravityResizeAspectFill;
  }

  [v15 setVideoGravity:v27];
}

void sub_1004A9924()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15VideoMirrorView_videoLayer);
}

id sub_1004A9964(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for VideoMirrorView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1004A9A08(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension15VideoMirrorView_videoLayer];
  v2 = [a1 traitCollection];
  v3 = [v2 _headroomUsage];

  v4 = &CADynamicRangeHigh;
  if (v3 != 1)
  {
    v4 = &CADynamicRangeConstrainedHigh;
  }

  v5 = *v4;
  [v1 setPreferredDynamicRange:v5];
}

uint64_t sub_1004A9AB8()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100939DD0);
  sub_10000D0FC(v4, qword_100939DD0);
  if (qword_100921410 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100981968);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

double sub_1004A9C8C()
{
  v0 = sub_1007504F4();
  sub_100039C50(v0, qword_100939DE8);
  sub_10000D0FC(v0, qword_100939DE8);
  sub_100750504();
  return result;
}

char *sub_1004A9CE0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_itemLayoutContext;
  v11 = sub_1007469A4();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_lockupView;
  *&v4[v12] = [objc_allocWithZone(type metadata accessor for AppShowcaseLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_showcaseType;
  v14 = enum case for AppShowcaseType.large(_:);
  v15 = sub_100742384();
  (*(*(v15 - 8) + 104))(&v4[v13], v14, v15);
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v18 = [v16 contentView];
  [v18 addSubview:*&v16[OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_lockupView]];

  return v16;
}

void sub_1004AA034(void *a1)
{
  sub_1004AC7F0();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void (*sub_1004AA0E4(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1004AA138;
}

void sub_1004AA138(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_1004AC7F0();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_1004AC7F0();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

uint64_t sub_1004AA260()
{
  v0 = sub_100747D94();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1007504F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_5;
  }

  v12 = qword_100982288;
  v13 = Strong;
  swift_beginAccess();
  (*(v1 + 16))(v3, &v13[v12], v0);

  sub_100747CE4();
  (*(v1 + 8))(v3, v0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_5:
    sub_10000C8CC(v6, &unk_1009281D0, qword_1007A82B0);
    v14 = 0;
    return v14 & 1;
  }

  (*(v8 + 32))(v10, v6, v7);
  v14 = sub_100750454();
  (*(v8 + 8))(v10, v7);
  return v14 & 1;
}

void sub_1004AA510()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v2 = *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_iconView);
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  sub_100743384(v10, v3);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong setHidden:1];
  }

  [v1 setNeedsLayout];
  sub_1004AC7F0();
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = [v1 contentView];
    [v8 addSubview:v7];

    [v1 setNeedsLayout];
  }
}

void sub_1004AA678()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v119 = sub_100754724();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_100747D94();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v5 - 8);
  v132 = &v117 - v6;
  v134 = sub_1007504F4();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v123 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100742384();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v121 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v120 = &v117 - v12;
  __chkstk_darwin(v13);
  v131 = &v117 - v14;
  __chkstk_darwin(v15);
  v130 = &v117 - v16;
  __chkstk_darwin(v17);
  *&v139 = &v117 - v18;
  __chkstk_darwin(v19);
  v122 = &v117 - v20;
  __chkstk_darwin(v21);
  *&v127 = &v117 - v22;
  __chkstk_darwin(v23);
  v137 = &v117 - v24;
  __chkstk_darwin(v25);
  v27 = &v117 - v26;
  __chkstk_darwin(v28);
  v30 = &v117 - v29;
  *&v32 = __chkstk_darwin(v31).n128_u64[0];
  v34 = &v117 - v33;
  v148.receiver = v1;
  v148.super_class = ObjectType;
  objc_msgSendSuper2(&v148, "layoutSubviews", v32);
  v35 = [v1 contentView];
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  sub_1007477B4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v44 = OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_showcaseType;
  swift_beginAccess();
  v45 = v9[2];
  v141 = v44;
  v138 = *&v1;
  v142 = v45;
  v143 = v9 + 2;
  v45(v34, &v1[v44], v8);
  v46 = v9;
  v47 = v9[13];
  v140 = enum case for AppShowcaseType.large(_:);
  v47(v30);
  sub_1004AD33C(&qword_100930460, &type metadata accessor for AppShowcaseType, &protocol conformance descriptor for AppShowcaseType);
  sub_100753274();
  sub_100753274();
  if (v144 == v146 && v145 == v147)
  {
    v48 = 1;
  }

  else
  {
    v48 = sub_100754754();
  }

  v49 = v9[1];
  v49(v30, v8);
  v136 = v9 + 1;
  v135 = v49;
  v49(v34, v8);

  if (v48)
  {
    v50 = v138;
    v129 = sub_1004AA260();
  }

  else
  {
    v129 = 0;
    v50 = v138;
  }

  v51 = v137;
  v142(v27, *&v50 + v141, v8);
  sub_1004AA260();
  v52 = v46;
  v53 = v46[4];
  v53(v51, v27, v8);
  v54 = v52[11];
  v137 = (v52 + 11);
  v55 = v54(v51, v8);
  v128 = v53;
  if (v55 == v140 || v55 == enum case for AppShowcaseType.small(_:))
  {
    v56 = v138;
  }

  else
  {
    v56 = v138;
    if (v55 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v135(v51, v8);
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  Width = 0.0;
  v59 = &stru_1008F2000;
  if (!Strong)
  {
    goto LABEL_26;
  }

  v60 = Strong;
  v61 = [Strong isHidden];

  v62 = v141;
  if (v61)
  {
    goto LABEL_27;
  }

  v63 = v127;
  v64 = v142;
  v142(*&v127, *&v56 + v141, v8);
  v65 = sub_1004AA260();
  v149.origin.x = v37;
  v149.origin.y = v39;
  v149.size.width = v41;
  v149.size.height = v43;
  Width = CGRectGetWidth(v149);
  v66 = v122;
  v64(v122, *&v63, v8);
  v67 = v54(v66, v8);
  if (v67 != v140)
  {
    if (v67 != enum case for AppShowcaseType.small(_:) && v67 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v135(*&v127, v8);
      Width = 0.0;
      v127 = *&v122;
      v59 = &stru_1008F2000;
      goto LABEL_25;
    }

    v59 = &stru_1008F2000;
    if (qword_100920D40 == -1)
    {
LABEL_24:
      sub_10000D0FC(v134, qword_100939DE8);
      sub_1007504B4();
      Width = v68;
      goto LABEL_25;
    }

LABEL_69:
    swift_once();
    goto LABEL_24;
  }

  if ((v65 & 1) == 0)
  {
    v59 = &stru_1008F2000;
    if (qword_100920D40 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

  v59 = &stru_1008F2000;
LABEL_25:
  v135(*&v127, v8);
LABEL_26:
  v62 = v141;
LABEL_27:
  v142(*&v139, *&v56 + v62, v8);
  v69 = swift_unknownObjectWeakLoadStrong();
  v127 = Width;
  if (v69)
  {
    v70 = v69;
    v71 = [v69 v59[74].name];
  }

  else
  {
    v71 = 1;
  }

  v72 = v128;
  v73 = sub_1004AA260();
  v150.origin.x = v37;
  v150.origin.y = v39;
  v150.size.width = v41;
  v150.size.height = v43;
  v74 = CGRectGetWidth(v150);
  v138 = v37;
  v75 = v140;
  if (v71 || (v73 & 1) != 0)
  {
    v135(*&v139, v8);
    v76 = v131;
    goto LABEL_46;
  }

  v77 = v120;
  v142(v120, *&v139, v8);
  v78 = v54(v77, v8);
  v76 = v131;
  if (v78 == v75)
  {
    if (qword_100920D40 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_70;
  }

  if (v78 != enum case for AppShowcaseType.small(_:) && v78 != enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    v135(v77, v8);
    v79 = 0.0;
    goto LABEL_41;
  }

  if (qword_100920D40 != -1)
  {
LABEL_70:
    swift_once();
  }

LABEL_40:
  sub_10000D0FC(v134, qword_100939DE8);
  sub_1007504B4();
  v79 = v80;
LABEL_41:
  v81 = v121;
  v72(v121, *&v139, v8);
  v82 = v54(v81, v8);
  v83 = 0.0;
  v84 = 25.0;
  if (v82 != v75)
  {
    v83 = 30.0;
    if (v82 != enum case for AppShowcaseType.small(_:))
    {
      v83 = 25.0;
      if (v82 != enum case for AppShowcaseType.smallAlignedLeft(_:))
      {
        (v135)(v81, v8, 25.0, 25.0);
        v84 = 0.0;
        v83 = 0.0;
      }
    }
  }

  v74 = v74 - (v79 + v84 + v83);
  v37 = v138;
LABEL_46:
  v85 = *(*&v56 + OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_lockupView);
  v151.origin.x = v37;
  v151.origin.y = v39;
  v151.size.width = v41;
  v151.size.height = v43;
  Height = CGRectGetHeight(v151);
  v87 = sub_1002A8BD4(v74, Height);
  v89 = v88;
  v152.origin.x = v37;
  v152.origin.y = v39;
  v139 = v41;
  v152.size.width = v41;
  v152.size.height = v43;
  MinX = CGRectGetMinX(v152);
  v91 = v130;
  v142(v130, *&v56 + v141, v8);
  v72(v76, v91, v8);
  v92 = v54(v76, v8);
  v93 = 0.0;
  v94 = v43;
  v95 = v39;
  if (v92 == v75)
  {
    v96 = v134;
    v97 = v133;
    v98 = v129;
  }

  else
  {
    v93 = 30.0;
    v96 = v134;
    v97 = v133;
    v98 = v129;
    if (v92 != enum case for AppShowcaseType.small(_:))
    {
      v93 = 25.0;
      if (v92 != enum case for AppShowcaseType.smallAlignedLeft(_:))
      {
        (v135)(v76, v8, 25.0);
        v93 = 0.0;
      }
    }
  }

  v99 = MinX + v93;
  v100 = 20.0;
  if ((v98 & 1) == 0)
  {
    v153.origin.x = v138;
    v153.origin.y = v95;
    v153.size.width = v139;
    v153.size.height = v94;
    v100 = CGRectGetMidY(v153) + v89 * -0.5;
  }

  sub_100753B24();
  [v85 setFrame:?];
  v101 = swift_unknownObjectWeakLoadStrong();
  if (!v101)
  {
    v108 = v132;
    (*(v97 + 56))(v132, 1, 1, v96);
    goto LABEL_59;
  }

  v102 = qword_100982288;
  v103 = v101;
  swift_beginAccess();
  v104 = v125;
  v105 = &v103[v102];
  v106 = v124;
  v107 = v126;
  (*(v125 + 16))(v124, v105, v126);

  v108 = v132;
  sub_100747CE4();
  (*(v104 + 8))(v106, v107);
  if ((*(v97 + 48))(v108, 1, v96) == 1)
  {
LABEL_59:
    sub_10000C8CC(v108, &unk_1009281D0, qword_1007A82B0);
    goto LABEL_60;
  }

  v109 = v123;
  (*(v97 + 32))(v123, v108, v96);
  v110 = swift_unknownObjectWeakLoadStrong();
  if (v110 && (v111 = v110, v112 = [v110 isHidden], v111, v109 = v123, (v112 & 1) == 0))
  {
    sub_1007504C4();
    if (v98)
    {
      v154.origin.x = v138;
      v154.origin.y = v95;
      v154.size.width = v139;
      v154.size.height = v94;
      CGRectGetMinX(v154);
      v155.origin.x = v99;
      v155.origin.y = v100;
      v155.size.width = v87;
      v155.size.height = v89;
      CGRectGetMaxY(v155);
      if (qword_100920D38 != -1)
      {
        swift_once();
      }

      v115 = sub_100750B04();
      sub_10000D0FC(v115, qword_100939DD0);
      v116 = v117;
      sub_1007502D4();
      sub_100750564();
      (*(v118 + 8))(v116, v119);
      (*(v97 + 8))(v123, v96);
    }

    else
    {
      v156.origin.x = v99;
      v156.origin.y = v100;
      v156.size.width = v87;
      v156.size.height = v89;
      CGRectGetMaxX(v156);
      v157.origin.x = v138;
      v157.origin.y = v95;
      v157.size.width = v139;
      v157.size.height = v94;
      CGRectGetHeight(v157);
      (*(v97 + 8))(v109, v96);
    }
  }

  else
  {
    (*(v97 + 8))(v109, v96);
  }

LABEL_60:
  v113 = swift_unknownObjectWeakLoadStrong();
  if (v113)
  {
    v114 = v113;
    sub_100753B24();
    [v114 setFrame:?];
  }
}

uint64_t type metadata accessor for AppShowcaseCollectionViewCell(uint64_t a1)
{
  result = qword_100939E28;
  if (!qword_100939E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004AB918(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    sub_100742384();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t (*sub_1004ABA1C(uint64_t **a1))()
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
  v2[4] = sub_1004AA0E4(v2);
  return sub_1000181A8;
}

uint64_t sub_1004ABA8C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1004AD33C(&qword_100939E48, type metadata accessor for AppShowcaseCollectionViewCell, &unk_1007C4608);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1004ABB00(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1004AD33C(&qword_100939E48, type metadata accessor for AppShowcaseCollectionViewCell, &unk_1007C4608);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1004ABB8C(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1004AD33C(&qword_100939E48, type metadata accessor for AppShowcaseCollectionViewCell, &unk_1007C4608);
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

void sub_1004ABD20(char *a1, void *a2, double a3, double a4)
{
  v82 = a2;
  v73 = sub_100754724();
  v77 = *(v73 - 8);
  __chkstk_darwin(v73);
  v75 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100742384();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v76 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v68 - v12;
  __chkstk_darwin(v13);
  v70 = &v68 - v14;
  __chkstk_darwin(v15);
  v72 = &v68 - v16;
  __chkstk_darwin(v17);
  v81 = &v68 - v18;
  __chkstk_darwin(v19);
  v71 = &v68 - v20;
  __chkstk_darwin(v21);
  v84 = &v68 - v22;
  __chkstk_darwin(v23);
  v83 = &v68 - v24;
  __chkstk_darwin(v25);
  v27 = &v68 - v26;
  v28 = sub_1007504F4();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v69 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v78 = &v68 - v32;
  __chkstk_darwin(v33);
  v35 = &v68 - v34;
  v36 = sub_100742904();
  v79 = v29;
  v80 = v28;
  if (v36)
  {
    sub_10074EC14();

    sub_10074F2A4();

    sub_100750504();
    v37 = sub_100750454();
    (*(v29 + 8))(v35, v28);
  }

  else
  {
    v37 = 0;
  }

  if (!sub_100742904())
  {
    v38 = v37;
    sub_1007428F4();
    goto LABEL_8;
  }

  sub_1007428F4();
  if (v37)
  {
    v38 = v37;
LABEL_8:
    v9[1](v27, v8);
    v39 = a3;
    goto LABEL_23;
  }

  v40 = v71;
  (v9[2])(v71, v27, v8);
  v41 = v9;
  v42 = v9[11];
  v43 = (v42)(v40, v8);
  v44 = enum case for AppShowcaseType.large(_:);
  if (v43 == enum case for AppShowcaseType.large(_:))
  {
    if (qword_100920D40 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

  if (v43 == enum case for AppShowcaseType.small(_:) || v43 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_100920D40 == -1)
    {
LABEL_16:
      sub_10000D0FC(v80, qword_100939DE8);
      sub_1007504B4();
      v45 = v46;
      goto LABEL_17;
    }

LABEL_43:
    swift_once();
    goto LABEL_16;
  }

  v41[1](v40, v8);
  v45 = 0.0;
LABEL_17:
  v47 = v81;
  (v41[4])(v81, v27, v8);
  v48 = (v42)(v47, v8);
  v49 = 0.0;
  v50 = 25.0;
  if (v48 == v44)
  {
    v9 = v41;
  }

  else
  {
    v49 = 30.0;
    v9 = v41;
    if (v48 != enum case for AppShowcaseType.small(_:))
    {
      v49 = 25.0;
      if (v48 != enum case for AppShowcaseType.smallAlignedLeft(_:))
      {
        (v41[1])(v47, v8, 25.0, 25.0);
        v50 = 0.0;
        v49 = 0.0;
      }
    }
  }

  v38 = v37;
  v39 = a3 - (v45 + v50 + v49);
LABEL_23:
  type metadata accessor for AppShowcaseLockupView(0);
  v51.n128_f64[0] = v39;
  sub_1002A9024(a1, v82, v51, a4);
  v81 = a1;
  sub_1007428F4();
  v52 = enum case for AppShowcaseType.large(_:);
  v53 = v9[13];
  (v53)(v84, enum case for AppShowcaseType.large(_:), v8);
  sub_1004AD33C(&qword_100930460, &type metadata accessor for AppShowcaseType, &protocol conformance descriptor for AppShowcaseType);
  sub_100753274();
  sub_100753274();
  if (v87 != v85 || v88 != v86)
  {
    v38 &= sub_100754754();
  }

  v71 = v9;
  v54 = v9[1];
  v54(v84, v8);
  v54(v83, v8);

  if (v38)
  {
    if (qword_100920D38 != -1)
    {
      swift_once();
    }

    v55 = sub_100750B04();
    sub_10000D0FC(v55, qword_100939DD0);
    v56 = v75;
    sub_1007502D4();
    sub_100750564();
    (*(v77 + 8))(v56, v73);
    v57 = sub_100742904();
    v59 = v79;
    v58 = v80;
    v60 = v78;
    if (v57)
    {
      sub_10074EC14();

      sub_10074F2A4();

      v61 = v69;
      sub_100750504();
      (*(v59 + 32))(v60, v61, v58);
      v62 = v72;
      sub_1007428F4();
      v63 = v71;
      v64 = v70;
      (*(v71 + 2))(v70, v62, v8);
      v65 = (*(v63 + 11))(v64, v8);
      if (v65 != v52)
      {
        if (v65 == enum case for AppShowcaseType.small(_:) || v65 == enum case for AppShowcaseType.smallAlignedLeft(_:))
        {
          if (qword_100920D40 != -1)
          {
            swift_once();
          }

          sub_10000D0FC(v58, qword_100939DE8);
          sub_1007504B4();
        }

        else
        {
          v54(v62, v8);
          v62 = v64;
        }
      }

      v54(v62, v8);
      sub_1007504C4();
      (*(v59 + 8))(v60, v58);
    }
  }

  else
  {
    v66 = v74;
    sub_1007428F4();
    v67 = v76;
    (v53)(v76, v52, v8);
    sub_100753274();
    sub_100753274();
    if (v87 != v85 || v88 != v86)
    {
      sub_100754754();
    }

    v54(v67, v8);
    v54(v66, v8);
  }
}

void sub_1004AC7F0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_1004AD33C(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    Strong = v1;
  }

  v2 = sub_10043D124(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

void sub_1004AC8C0(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v4 = sub_1007504F4();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074F314();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  v54 = sub_100742384();
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v49 = &v46 - v19;
  __chkstk_darwin(v20);
  v22 = &v46 - v21;
  __chkstk_darwin(v23);
  v25 = &v46 - v24;
  sub_10000C824(a1, v58);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_100742924();
  if (!swift_dynamicCast())
  {
    return;
  }

  v47 = v17;
  v26 = v57;
  v27 = *(*&v2[OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_iconView);
  Strong = swift_unknownObjectWeakLoadStrong();
  v50 = v27;
  v28 = [v2 contentView];
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  sub_1007477B4();

  sub_100742914();
  v29 = sub_10074EF24();

  if (v29)
  {
    v46 = v26;
    sub_1007428F4();
    v30 = v56;
    v31 = v54;
    (*(v56 + 32))(v22, v25, v54);
    v32 = (*(v30 + 88))(v22, v31);
    if (v32 != enum case for AppShowcaseType.large(_:) && v32 != enum case for AppShowcaseType.small(_:) && v32 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      (*(v56 + 8))(v22, v31);
    }

    sub_10074F324();
    (*(v7 + 104))(v9, enum case for Artwork.Style.roundedRect(_:), v6);
    sub_10074F2D4();
    v33 = *(v7 + 8);
    v33(v9, v6);
    v33(v12, v6);
    sub_10074F2F4();
    sub_10074F374();
    v34 = v50;
    sub_10074F324();
    sub_100743364();
    [v34 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      sub_100753E34();
    }

    sub_100743224();
    sub_1007433C4();
    sub_1004AD33C(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100744204();

    v33(v15, v6);
  }

  if (!sub_100742904())
  {

    return;
  }

  sub_10074EC14();

  sub_10074F2A4();
  sub_10074F2A4();
  v35 = v51;
  sub_100750504();
  v36 = v49;
  sub_1007428F4();
  v37 = sub_100750454();
  v38 = v56;
  v39 = v47;
  v40 = v54;
  (*(v56 + 16))(v47, v36, v54);
  v41 = (*(v38 + 88))(v39, v40);
  v42 = Strong;
  if (v41 == enum case for AppShowcaseType.large(_:))
  {
    v43 = v53;
    if (v37)
    {
LABEL_21:
      (*(v56 + 8))(v36, v40);
      goto LABEL_22;
    }

    if (qword_100920D40 == -1)
    {
LABEL_20:
      sub_10000D0FC(v43, qword_100939DE8);
      sub_1007504B4();
      goto LABEL_21;
    }

LABEL_27:
    swift_once();
    goto LABEL_20;
  }

  v43 = v53;
  if (v41 == enum case for AppShowcaseType.small(_:) || v41 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_100920D40 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v44 = *(v56 + 8);
  v44(v36, v40);
  v44(v47, v40);
LABEL_22:
  sub_1007504C4();
  sub_10074F374();
  if (v42)
  {
    type metadata accessor for VideoView(0);
    sub_1004AD33C(&unk_100923110, type metadata accessor for VideoView, &unk_1007BAFA8);
    v45 = v42;
    sub_100744204();
  }

  else
  {
    sub_100744214();
  }

  (*(v52 + 8))(v35, v43);
}

void sub_1004AD174(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_lockupView);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_iconView;
  v5 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_iconView);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  sub_100743384(v14, v6);

  v7 = *(v3 + v4);
  sub_1007433C4();
  sub_1004AD33C(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v8 = v7;
  sub_100744274();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = qword_10093CB50;
    v12 = Strong;
    v11 = [*(Strong + qword_10093CB50) layer];
    [v11 removeAllAnimations];

    [*&v12[v10] setImage:0];
    type metadata accessor for VideoView(0);
    sub_1004AD33C(&unk_100923110, type metadata accessor for VideoView, &unk_1007BAFA8);
    sub_100744274();
  }
}

uint64_t sub_1004AD33C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall UIImageView.show(image:isAnimationPermitted:)(UIImage_optional image, Swift::Bool isAnimationPermitted)
{
  v3 = v2;
  isa = image.value.super.isa;
  if (!image.is_nil)
  {
    goto LABEL_4;
  }

  v5 = [v3 image];
  if (v5)
  {

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v6 = 1;
LABEL_5:
  v7 = [v3 layer];
  [v7 removeAllAnimations];

  if (isa)
  {
    if (v6)
    {
      v8 = isa;
      [v3 setAlpha:0.0];
      [v3 setImage:v8];
      sub_100016C60(0, &qword_100933840, UIViewPropertyAnimator_ptr);
      v9 = sub_100753974();
      v10 = swift_allocObject();
      *(v10 + 16) = v3;
      v15[4] = sub_1002CD324;
      v15[5] = v10;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 1107296256;
      v15[2] = sub_1000CF7B0;
      v15[3] = &unk_100877B08;
      v11 = _Block_copy(v15);
      v12 = v3;

      [v9 addAnimations:v11];
      _Block_release(v11);
      [v9 startAnimation];

      return;
    }

    v13 = v3;
    v14 = isa;
  }

  else
  {
    v13 = v3;
    v14 = 0;
  }

  [v13 setImage:v14];
}

uint64_t sub_1004AD584()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1004AD5BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_1004AD5D8()
{
  v1 = [v0 image];

  return v1;
}

void sub_1004AD610(void *a1)
{
  [v1 setImage:a1];
}

void (*sub_1004AD658(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 image];
  return sub_1003578E0;
}

uint64_t CrossLinkLockupLayout.Metrics.init(artworkSize:artworkMargin:subtitleSpace:numberOfLines:offerButtonSize:offerButtonMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = a6;
  *(a5 + 8) = a7;
  sub_100012160(a1, a5 + 16);
  sub_100012160(a2, a5 + 56);
  *(a5 + 96) = a3;
  *(a5 + 104) = a8;
  *(a5 + 112) = a9;

  return sub_100012160(a4, a5 + 120);
}

uint64_t CrossLinkLockupLayout.init(metrics:artworkView:lockupView:crossLinkTitleText:crossLinkSubtitleText:)@<X0>(double *a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, void *a6@<X8>)
{
  sub_1001F75C0(a1, (a6 + 20));
  sub_10000C888(a2, a2[3]);
  sub_1007503E4();
  sub_1001F761C(a1);
  sub_100012160(a3, (a6 + 5));
  sub_100012160(a4, (a6 + 10));
  sub_100012160(a5, (a6 + 15));

  return sub_10000C620(a2);
}

uint64_t CrossLinkLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, uint64_t a6@<X8>)
{
  v11 = [a1 traitCollection];
  v12 = sub_100753804();

  if (v12)
  {

    return sub_1004AD940(a6, a2, a3, a4, a5);
  }

  else
  {

    return sub_1004ADE84(a6, a2, a3, a4, a5);
  }
}

__n128 CrossLinkLockupLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v2;
  v3 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v3;
  v4 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v4;
  v5 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v7;
  return result;
}

uint64_t sub_1004AD940@<X0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v31 = a2;
  v30 = sub_100750354();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100751214();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100754724();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35.origin.x = a3;
  v35.origin.y = a4;
  v35.size.width = a5;
  v35.size.height = a6;
  MinY = CGRectGetMinY(v35);
  sub_10000C888(v6, *(v6 + 3));
  if ((sub_1007503A4() & 1) == 0)
  {
    v36.origin.x = a3;
    v36.origin.y = a4;
    v36.size.width = a5;
    v36.size.height = a6;
    MinX = CGRectGetMinX(v36);
    v21 = v6[20];
    v22 = v6[21];
    sub_10000C888(v6, *(v6 + 3));
    sub_100753B24();
    sub_100750394();
    v37.origin.x = MinX;
    v37.origin.y = MinY;
    v37.size.width = v21;
    v37.size.height = v22;
    CGRectGetMaxY(v37);
    v23 = *(v6 + 25);
    sub_10000C888(v6 + 22, v23);
    sub_100536120(v23);
    sub_100750564();
    (*(v16 + 8))(v18, v15);
  }

  v38.origin.x = a3;
  v38.origin.y = a4;
  v38.size.width = a5;
  v38.size.height = a6;
  CGRectGetMinX(v38);
  v39.origin.x = a3;
  v39.origin.y = a4;
  v39.size.width = a5;
  v39.size.height = a6;
  CGRectGetWidth(v39);
  v40.origin.x = a3;
  v40.origin.y = a4;
  v40.size.width = a5;
  v40.size.height = a6;
  CGRectGetMaxY(v40);
  sub_10000C888(v6 + 5, *(v6 + 8));
  sub_100753B24();
  sub_100750394();
  v41.origin.x = a3;
  v41.origin.y = a4;
  v41.size.width = a5;
  v41.size.height = a6;
  CGRectGetMaxY(v41);
  v24 = *(v6 + 38);
  sub_10000C888(v6 + 35, v24);
  sub_100536120(v24);
  sub_100750564();
  (*(v16 + 8))(v18, v15);
  v42.origin.x = a3;
  v42.origin.y = a4;
  v42.size.width = a5;
  v42.size.height = a6;
  CGRectGetMinX(v42);
  v43.origin.x = a3;
  v43.origin.y = a4;
  v43.size.width = a5;
  v43.size.height = a6;
  CGRectGetWidth(v43);
  sub_100753B24();
  sub_10000C824((v6 + 10), v34);
  sub_10000C824((v6 + 15), v33);
  sub_10000C824((v6 + 27), v32);
  sub_1007511F4();
  sub_100751204();
  (*(v29 + 8))(v12, v30);
  sub_100750314();
  return (*(v27 + 8))(v14, v28);
}

uint64_t sub_1004ADE84@<X0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v32 = a2;
  v31 = sub_100750354();
  v30 = *(v31 - 8);
  __chkstk_darwin(v31);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100751214();
  v28 = *(v29 - 8);
  __chkstk_darwin(v29);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100754724();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36.origin.x = a3;
  v36.origin.y = a4;
  v36.size.width = a5;
  v36.size.height = a6;
  CGRectGetMinX(v36);
  sub_10000C888(v6, *(v6 + 24));
  if ((sub_1007503A4() & 1) == 0)
  {
    v37.origin.x = a3;
    v37.origin.y = a4;
    v37.size.width = a5;
    v37.size.height = a6;
    MinX = CGRectGetMinX(v37);
    v38.origin.x = a3;
    v38.origin.y = a4;
    v38.size.width = a5;
    v38.size.height = a6;
    MidY = CGRectGetMidY(v38);
    v22 = *(v6 + 160);
    v21 = *(v6 + 168);
    v23 = floor(MidY + v21 * -0.5);
    sub_10000C888(v6, *(v6 + 24));
    sub_100753B24();
    sub_100750394();
    v39.origin.x = MinX;
    v39.origin.y = v23;
    v39.size.width = v22;
    v39.size.height = v21;
    CGRectGetMaxX(v39);
    v24 = *(v6 + 200);
    sub_10000C888((v6 + 176), v24);
    sub_100536120(v24);
    sub_100750564();
    (*(v16 + 8))(v18, v15);
  }

  v40.origin.x = a3;
  v40.origin.y = a4;
  v40.size.width = a5;
  v40.size.height = a6;
  CGRectGetMaxX(v40);
  v41.origin.x = a3;
  v41.origin.y = a4;
  v41.size.width = a5;
  v41.size.height = a6;
  CGRectGetMinY(v41);
  v42.origin.x = a3;
  v42.origin.y = a4;
  v42.size.width = a5;
  v42.size.height = a6;
  CGRectGetHeight(v42);
  sub_10000C888((v6 + 40), *(v6 + 64));
  sub_100753B24();
  sub_100750394();
  v25 = *(v6 + 304);
  sub_10000C888((v6 + 280), v25);
  sub_100536120(v25);
  sub_100750564();
  (*(v16 + 8))(v18, v15);
  v43.origin.x = a3;
  v43.origin.y = a4;
  v43.size.width = a5;
  v43.size.height = a6;
  CGRectGetMinY(v43);
  v44.origin.x = a3;
  v44.origin.y = a4;
  v44.size.width = a5;
  v44.size.height = a6;
  CGRectGetHeight(v44);
  sub_100753B24();
  sub_10000C824(v6 + 80, v35);
  sub_10000C824(v6 + 120, v34);
  sub_10000C824(v6 + 216, v33);
  sub_1007511F4();
  sub_100751204();
  (*(v30 + 8))(v12, v31);
  sub_100750314();
  return (*(v28 + 8))(v14, v29);
}

uint64_t sub_1004AE3D4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1004AE64C();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return EstimatedMeasurable<>.measurements(fitting:in:)(a1, a2, v10, a3, v11, v12);
}

unint64_t sub_1004AE444()
{
  result = qword_100939E50;
  if (!qword_100939E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939E50);
  }

  return result;
}

uint64_t sub_1004AE4A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
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

uint64_t sub_1004AE4E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004AE58C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_1004AE5D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1004AE64C()
{
  result = qword_100939E58;
  if (!qword_100939E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939E58);
  }

  return result;
}

char *sub_1004AE6A0(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v73 = a3;
  v72 = a1;
  v14 = sub_100752AC4();
  v78 = *(v14 - 8);
  v79 = v14;
  __chkstk_darwin(v14);
  v77 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10074AB44();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v17 - 8);
  v19 = &v68 - v18;
  v20 = sub_1007441C4();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000C518(&qword_10093F5C0, &qword_1007A9CD0);
  __chkstk_darwin(v24 - 8);
  v26 = &v68 - v25;
  v27 = &v7[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerLabelPresenter];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  v28 = &v7[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButtonTapHandler];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_metrics;
  v30 = sub_100747424();
  v31 = *(v30 - 8);
  v75 = v30;
  v76 = v31;
  v32 = *(v31 + 16);
  v74 = a2;
  v32(&v8[v29], a2, v30);
  v68 = sub_1007441E4();
  v33 = enum case for Wordmark.arcade(_:);
  v34 = sub_10074F7B4();
  v35 = *(v34 - 8);
  (*(v35 + 104))(v26, v33, v34);
  (*(v35 + 56))(v26, 0, 1, v34);
  sub_100747414();
  (*(v21 + 104))(v23, enum case for WordmarkView.Alignment.leading(_:), v20);
  v36 = *(&v83 + 1);
  v37 = v84;
  v38 = sub_10007271C(&v82, *(&v83 + 1));
  v39 = __chkstk_darwin(v38);
  v41 = &v68 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v41, v39);
  v43 = sub_1004AFA30(v26, v41, v23, v68, v36, v37, 0.0, 0.0, 0.0, 0.0);
  sub_10000C620(&v82);
  *&v8[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_wordmarkView] = v43;
  v44 = sub_100750534();
  v45 = *(v44 - 8);
  v46 = v72;
  (*(v45 + 16))(v19, v72, v44);
  (*(v45 + 56))(v19, 0, 1, v44);
  (*(v70 + 104))(v69, enum case for DirectionalTextAlignment.leading(_:), v71);
  v47 = objc_allocWithZone(sub_100745C84());
  *&v8[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_subtitleLabel] = sub_100745C74();
  v48 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v8[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButton] = sub_100154454(v73);
  v49 = type metadata accessor for ArcadeLockupView(0);
  v81.receiver = v8;
  v81.super_class = v49;
  v50 = objc_msgSendSuper2(&v81, "initWithFrame:", a4, a5, a6, a7);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v54 = v50;
  [v54 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v54 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v55 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_wordmarkView;
  v56 = *&v54[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_wordmarkView];
  sub_10000D198();
  v57 = v56;
  v58 = sub_100753DD4();
  [v57 setTintColor:v58];

  [v54 addSubview:*&v54[v55]];
  v59 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_subtitleLabel;
  v60 = *&v54[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_subtitleLabel];
  v61 = sub_100753DF4();
  [v60 setTextColor:v61];

  v62 = *&v54[v59];
  sub_100745C34();

  v63 = *&v54[v59];
  v82 = 0u;
  v83 = 0u;
  memset(v80, 0, sizeof(v80));
  v64 = v63;
  v65 = v77;
  sub_100752A74();
  sub_1000277BC(v80);
  sub_1000277BC(&v82);
  sub_100753C74();

  (*(v78 + 8))(v65, v79);
  [v54 addSubview:*&v54[v59]];
  v66 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButton;
  [*&v54[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButton] addTarget:v54 action:"offerButtonWasTapped" forControlEvents:64];
  [v54 addSubview:*&v54[v66]];

  (*(v76 + 8))(v74, v75);
  (*(v45 + 8))(v46, v44);
  return v54;
}

void sub_1004AEF74()
{
  v1 = v0;
  v18 = sub_100747424();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100747434();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 layoutMargins];
  sub_100753BA4();
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_wordmarkView];
  v26 = sub_1007441E4();
  v27 = &protocol witness table for UIView;
  v25 = v10;
  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_subtitleLabel];
  v23 = sub_100745C84();
  v24 = &protocol witness table for UILabel;
  v22 = v11;
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButton];
  v20 = type metadata accessor for OfferButton();
  v21 = &protocol witness table for UIView;
  v19 = v12;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v1[v13], v18);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  sub_1007473E4();
  sub_1004AFB00(v17);
  sub_100750404();
  (*(v6 + 8))(v9, v5);
  [v1 layoutMargins];
  sub_100753BC4();
}

uint64_t sub_1004AF250()
{
  v22 = sub_100750354();
  v21 = *(v22 - 8);
  __chkstk_darwin(v22);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100747424();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100747434();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArcadeLockupView(0);
  v32.receiver = v0;
  v32.super_class = v8;
  objc_msgSendSuper2(&v32, "layoutSubviews");
  v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_wordmarkView];
  v30 = sub_1007441E4();
  v31 = &protocol witness table for UIView;
  v29 = v9;
  v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_subtitleLabel];
  v27 = sub_100745C84();
  v28 = &protocol witness table for UILabel;
  v26 = v10;
  v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButton];
  v24 = type metadata accessor for OfferButton();
  v25 = &protocol witness table for UIView;
  v23 = v11;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v12], v18);
  v13 = v9;
  v14 = v10;
  v15 = v11;
  sub_1007473E4();
  sub_1007477B4();
  v16 = v20;
  sub_1007473F4();
  (*(v21 + 8))(v16, v22);
  return (*(v5 + 8))(v7, v19);
}

id sub_1004AF7A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeLockupView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArcadeLockupView(uint64_t a1)
{
  result = qword_100939EA8;
  if (!qword_100939EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004AF8F0(uint64_t a1)
{
  result = sub_100747424();
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

uint64_t sub_1004AF9A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_metrics;
  swift_beginAccess();
  v5 = sub_100747424();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1004AFA30(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  v16[3] = a5;
  v16[4] = a6;
  v13 = sub_10000D134(v16);
  (*(*(a5 - 8) + 32))(v13, a2, a5);
  v14 = objc_allocWithZone(a4);
  return sub_1007441B4();
}

unint64_t sub_1004AFB00(__n128 a1)
{
  result = qword_100939EB8;
  if (!qword_100939EB8)
  {
    sub_100747434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939EB8);
  }

  return result;
}

id WebViewController.protocolDelegate.getter()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension17WebViewController_protocolDelegate;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WebViewController.protocolDelegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension17WebViewController_protocolDelegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1004AFC64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1007487F4();
  sub_100752764();
  sub_100752D34();
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension17WebViewController_protocolDelegate] = v19;
  sub_1001FEAF4();
  sub_100752D34();
  v5 = v19;
  sub_100744AC4();
  sub_100752D34();
  v6 = sub_100744AB4();
  v7 = [v19 ams_activeiTunesAccount];
  v18.receiver = v3;
  v18.super_class = type metadata accessor for WebViewController();
  v8 = objc_msgSendSuper2(&v18, "initWithBag:account:clientInfo:", v6, v7, 0);
  swift_unknownObjectRelease();

  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 tableViewAppearance];
  [v10 setAppearance:v11];

  [v10 setDelegate:v10];
  sub_100741204(v12);
  v14 = v13;
  v15 = [v10 loadURL:v13];

  v16 = sub_100741264();
  (*(*(v16 - 8) + 8))(a1, v16);
  return v10;
}

id WebViewController.__allocating_init(bag:account:clientInfo:)(uint64_t a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(v3) initWithBag:a1 account:a2 clientInfo:a3];
  swift_unknownObjectRelease();

  return v6;
}

void sub_1004B0054(char a1, SEL *a2, SEL *a3)
{
  v8.receiver = v3;
  v8.super_class = type metadata accessor for WebViewController();
  objc_msgSendSuper2(&v8, *a2, a1 & 1);
  v7 = [objc_opt_self() sharedCoordinator];
  [v7 *a3];
}

void sub_1004B00E8(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for WebViewController();
  v8 = *a4;
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, a3);
  v10 = [objc_opt_self() sharedCoordinator];
  [v10 *a5];
}

void WebViewController.webViewController(_:handle:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC22SubscribePageExtension17WebViewController_protocolDelegate;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = sub_1007487E4();

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004B0778;
  aBlock[3] = &unk_100877C50;
  v10 = _Block_copy(aBlock);

  [v9 addFinishBlock:v10];
  _Block_release(v10);
}

{
  v7 = OBJC_IVAR____TtC22SubscribePageExtension17WebViewController_protocolDelegate;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = sub_1007487D4();

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004B0778;
  aBlock[3] = &unk_100877C78;
  v10 = _Block_copy(aBlock);

  [v9 addFinishBlock:v10];
  _Block_release(v10);
}

double sub_1004B027C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1004B03EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_100741124();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id WebViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004B0704()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004B07A4(void *a1, uint64_t a2)
{
  v5 = sub_10000C518(&unk_1009400E0, &qword_1007C4A90);
  __chkstk_darwin(v5 - 8);
  v11 = a1;
  sub_10003E054();
  a1;
  sub_10000C518(&qword_10093A000, &qword_1007C4A98);
  if (swift_dynamicCast())
  {
    sub_100012160(v9, v12);
    v6 = v13;
    v7 = v14;
    sub_10000C888(v12, v13);
    (*(v7 + 8))(a2, *(v2 + 16), v6, v7);
    sub_1007538F4();
    return sub_10000C620(v12);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    return sub_1004B08EC(v9);
  }
}

uint64_t sub_1004B08EC(uint64_t a1)
{
  v2 = sub_10000C518(&qword_10093A008, qword_1007C4AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004B0954()
{
  v33 = sub_100741494();
  v0 = *(v33 - 8);
  __chkstk_darwin(v33);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C518(&unk_100947360, &qword_1007C3EF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v29 = &v27 - v8;
  v32 = sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v30 = swift_allocObject();
  v31 = xmmword_1007A5CF0;
  *(v30 + 16) = xmmword_1007A5CF0;
  sub_100752854();
  sub_100752814();
  v10 = sub_100752824();
  v11 = *(v4 + 16);
  v11(v6, v9, v3);
  type metadata accessor for BoolPreferencesDebugSetting(0);
  v12 = swift_allocObject();
  *(v12 + 56) = 0xD000000000000017;
  *(v12 + 64) = 0x800000010077F770;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  v11((v12 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_key), v6, v3);
  v13 = (v12 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_preferences);
  *v13 = v10;
  v13[1] = &protocol witness table for LocalPreferences;

  sub_100741484();
  v14 = sub_100741464();
  v16 = v15;
  v17 = *(v0 + 8);
  v27 = v0 + 8;
  v28 = v17;
  v18 = v33;
  v17(v2, v33);
  v34 = v14;
  v35 = v16;
  sub_1007544E4();
  v19 = *(v4 + 8);
  v19(v6, v3);

  v19(v29, v3);
  v20 = v30;
  *(v30 + 32) = v12;
  v21 = swift_allocObject();
  *(v21 + 16) = v31;
  type metadata accessor for DebugSection();
  v22 = swift_allocObject();
  sub_100741484();
  v23 = sub_100741464();
  v25 = v24;
  v28(v2, v18);
  v22[2] = v23;
  v22[3] = v25;
  v22[4] = 0;
  v22[5] = 0xE000000000000000;
  v22[6] = v20;
  *(v21 + 32) = v22;
  return v21;
}

id sub_1004B0CC0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ShelfPlaceholderSettings();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1004B0D18(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v48 = a2;
  ObjectType = swift_getObjectType();
  v8 = sub_1007521E4();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100752224();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074F314();
  __chkstk_darwin(v11 - 8);
  v45 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {
    v14 = _swiftEmptyArrayStorage;
    v37 = ObjectType;
    if (!i)
    {
      goto LABEL_11;
    }

    aBlock[0] = _swiftEmptyArrayStorage;
    result = sub_1007545C4();
    if (i < 0)
    {
      break;
    }

    v16 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = sub_100754574();
      }

      else
      {
        v17 = *(a1 + 8 * v16 + 32);
      }

      ++v16;
      v18 = objc_allocWithZone(type metadata accessor for ArcadeDownloadPackCategoryButton());

      sub_10020287C(v17, a3, a4);

      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
    }

    while (i != v16);
    v14 = aBlock[0];
LABEL_11:
    v36 = v8;
    v19 = OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_categoryViews;
    ObjectType = v43;
    *&v43[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_categoryViews] = v14;

    v20 = [ObjectType traitCollection];
    v21 = [v20 preferredContentSizeCategory];

    LOBYTE(v20) = sub_100753924();
    sub_1004B1EA8(v20 & 1);
    v8 = *&ObjectType[v19];
    if (v8 >> 62)
    {
      a3 = sub_100754664();
    }

    else
    {
      a3 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!a3)
    {
LABEL_25:

      v27 = v43;
      [v43 setNeedsLayout];
      [v27 layoutIfNeeded];
      sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
      v28 = sub_100753774();
      v29 = swift_allocObject();
      v30 = v37;
      *(v29 + 16) = v27;
      *(v29 + 24) = v30;
      aBlock[4] = sub_1004B27B8;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_100877D68;
      v31 = _Block_copy(aBlock);
      v32 = v27;

      v33 = v38;
      sub_100752204();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1004B27D8(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000C518(&unk_10092F750, &qword_1007A6920);
      sub_1000A8054();
      v34 = v40;
      v35 = v36;
      sub_1007543A4();
      sub_100753784();
      _Block_release(v31);

      (*(v42 + 8))(v34, v35);
      return (*(v39 + 8))(v33, v41);
    }

    a4 = 0;
    v46 = v8 & 0xFFFFFFFFFFFFFF8;
    v47 = v8 & 0xC000000000000001;
    v22 = &unk_10092D000;
    v44 = v8;
    while (1)
    {
      if (v47)
      {
        v23 = sub_100754574();
      }

      else
      {
        if (a4 >= *(v46 + 16))
        {
          goto LABEL_27;
        }

        v23 = *(v8 + 8 * a4 + 32);
      }

      ObjectType = v23;
      v24 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        break;
      }

      sub_10074BA14();
      sub_10074F374();

      sub_10074BA14();
      v25 = sub_10074F3B4();

      if (v25)
      {
        a1 = v22;
        v26 = *&ObjectType[v22[431]];
        sub_10074F324();
        sub_100743364();
        [v26 setContentMode:sub_10074F184()];
        sub_100747FB4();
        sub_1007433A4();
        if (!sub_10074F1E4())
        {
          sub_100016C60(0, &qword_100923500, UIColor_ptr);
          sub_100753E34();
        }

        sub_100743224();

        v22 = a1;
        v8 = v44;
      }

      sub_1007433C4();
      sub_1004B27D8(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100744204();

      ++a4;
      if (v24 == a3)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  __break(1u);
  return result;
}

void sub_1004B1408(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_categoryViews);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    v14 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v14)
      {
        v5 = sub_100754574();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = type metadata accessor for ArcadeDownloadPackCategoryButton();
      v19.receiver = v6;
      v19.super_class = v8;
      v9 = objc_msgSendSuper2(&v19, "isSelected");
      v18.receiver = v6;
      v18.super_class = v8;
      objc_msgSendSuper2(&v18, "setEnabled:", (v9 | a1) & 1);
      v10 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_titleLabel];
      v17.receiver = v6;
      v17.super_class = v8;
      if (objc_msgSendSuper2(&v17, "isEnabled"))
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.4;
      }

      [v10 setAlpha:{v11, v14}];
      v12 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_artworkView];
      v16.receiver = v6;
      v16.super_class = v8;
      if (objc_msgSendSuper2(&v16, "isEnabled"))
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.4;
      }

      [v12 setAlpha:v13];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_18:
}

double sub_1004B15BC(uint64_t a1, void *a2)
{
  v19 = a1;
  v20 = a2;
  v3 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_100752914();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_categoryViews);
  if (v10 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {

    if (!i)
    {
      break;
    }

    v12 = 0;
    v21 = v10 & 0xFFFFFFFFFFFFFF8;
    v22 = v10 & 0xC000000000000001;
    v13 = (v7 + 48);
    v17 = (v7 + 8);
    v18 = (v7 + 32);
    while (1)
    {
      if (v22)
      {
        v14 = sub_100754574();
      }

      else
      {
        if (v12 >= *(v21 + 16))
        {
          goto LABEL_16;
        }

        v14 = *(v10 + 8 * v12 + 32);
      }

      v7 = v14;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      sub_10074B9D4();
      if ((*v13)(v5, 1, v6) == 1)
      {

        sub_10045862C(v5);
      }

      else
      {
        (*v18)(v9, v5, v6);
        [v7 bounds];
        [v20 convertRect:v7 fromCoordinateSpace:?];
        sub_100749544();

        (*v17)(v9, v6);
      }

      ++v12;
      if (v15 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  return result;
}

char *sub_1004B1844(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_firstColumn;
  *&v4[v10] = [objc_allocWithZone(UIStackView) init];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_secondColumn;
  v12 = [objc_allocWithZone(UIStackView) init];
  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_categoryViews] = _swiftEmptyArrayStorage;
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007A7210;
  v14 = *&v4[v10];
  *(v13 + 32) = v14;
  *(v13 + 40) = v12;
  v15 = objc_allocWithZone(UIStackView);
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  v16 = v14;
  v17 = v12;
  isa = sub_100753294().super.isa;

  v19 = [v15 initWithArrangedSubviews:isa];

  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_contentView] = v19;
  v44.receiver = v4;
  v44.super_class = ObjectType;
  v41 = ObjectType;
  v20 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007A5A00;
  v22 = sub_1007519E4();
  *(v21 + 32) = v22;
  *(v21 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v43 = ObjectType;
  v42[0] = v20;
  v23 = v20;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v42);
  v24 = OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_firstColumn;
  [*&v23[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_firstColumn] setAxis:1];
  [*&v23[v24] setSpacing:50.0];
  [*&v23[v24] setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_secondColumn;
  [*&v23[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_secondColumn] setAxis:1];
  [*&v23[v25] setSpacing:50.0];
  [*&v23[v25] setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_contentView;
  [*&v23[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_contentView] setDistribution:1];
  [*&v23[v26] setAlignment:1];
  [*&v23[v26] setAxis:0];
  [*&v23[v26] setSpacing:8.0];
  [v23 addSubview:*&v23[v26]];
  [*&v23[v26] setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007A57A0;
  v29 = [*&v23[v26] leftAnchor];
  v30 = [v23 leftAnchor];

  v31 = [v29 constraintEqualToAnchor:v30];
  *(v28 + 32) = v31;
  v32 = [*&v23[v26] rightAnchor];
  v33 = [v23 rightAnchor];

  v34 = [v32 constraintEqualToAnchor:v33];
  *(v28 + 40) = v34;
  *(v28 + 48) = sub_1004B1D88();
  v35 = [*&v23[v26] bottomAnchor];
  v36 = [v23 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v28 + 56) = v37;
  sub_100016C60(0, &qword_100922E80, NSLayoutConstraint_ptr);
  v38 = sub_100753294().super.isa;

  [v27 activateConstraints:v38];

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1007A5A00;
  *(v39 + 32) = v22;
  *(v39 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v43 = v41;
  v42[0] = v23;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v42);
  return v23;
}

id sub_1004B1D88()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint];
  }

  else
  {
    v4 = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_contentView] topAnchor];
    v5 = [v0 topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:150.0];

    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

double sub_1004B1EA8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_secondColumn);
  [v2 setHidden:a1 & 1];
  v30 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_firstColumn);
  v4 = [v3 arrangedSubviews];
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  v5 = sub_1007532A4();

  if (v5 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_100754574();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      [v8 removeFromSuperview];

      ++v7;
      if (v10 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v11 = [v2 arrangedSubviews];
  v12 = sub_1007532A4();

  if (v12 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_100754664())
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = sub_100754574();
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      [v15 removeFromSuperview];

      ++v14;
      if (v17 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v18 = *(v30 + OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_categoryViews);
  if (a1)
  {
    if (v18 >> 62)
    {
      goto LABEL_63;
    }

    for (k = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_100754664())
    {
      v32 = v3;

      if (!k)
      {
        break;
      }

      v3 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v20 = sub_100754574();
        }

        else
        {
          if (v3 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v20 = *(v18 + 8 * v3 + 32);
        }

        v21 = v20;
        v22 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          break;
        }

        [v32 addArrangedSubview:v20];

        ++v3;
        if (v22 == k)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      ;
    }

LABEL_53:
  }

  else
  {
    if (v18 >> 62)
    {
      v23 = sub_100754664();
    }

    else
    {
      v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v23)
    {
      v24 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v25 = sub_100754574();
        }

        else
        {
          if (v24 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v25 = *(v18 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_60;
        }

        if (v24)
        {
          v28 = v2;
        }

        else
        {
          v28 = v3;
        }

        [v28 addArrangedSubview:v26];

        ++v24;
      }

      while (v27 != v23);
    }
  }

  return result;
}

double sub_1004B22B0(char *a1)
{
  v2 = sub_1004B1D88();
  [v2 setConstant:0.0];

  [*&a1[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_firstColumn] setSpacing:8.0];
  [*&a1[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_secondColumn] setSpacing:8.0];
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  *(swift_allocObject() + 16) = a1;
  v3 = a1;
  sub_100753D74();

  return result;
}

double sub_1004B2468()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_100753924() & 1;
  if (v3 != [*&v0[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_secondColumn] isHidden])
  {
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_contentView] layoutIfNeeded];
    v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_categoryViews];
    if (v5 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
    {

      if (!i)
      {
        break;
      }

      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_100754574();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 setNeedsLayout];
        [v9 invalidateIntrinsicContentSize];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_14:
  }

  return result;
}

double sub_1004B2704()
{
  [*(*v0 + OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_contentView) systemLayoutSizeFittingSize:?];
  v2 = v1;
  v3 = sub_1004B1D88();
  [v3 constant];

  return v2;
}

uint64_t sub_1004B2780()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1004B27C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1004B27D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004B2820()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1004B2858()
{
  v1 = [*(v0 + 16) superview];
  [v1 invalidateIntrinsicContentSize];
}

void sub_1004B28B0()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_firstColumn;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_secondColumn;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_categoryViews) = _swiftEmptyArrayStorage;
  sub_100754644();
  __break(1u);
}

BOOL sub_1004B2974(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2 == 0.0)
    {
      if (v3 == 0.0)
      {
        v6 = *(a2 + 8);
      }

      else
      {
        LOBYTE(v6) = 0;
      }

      if (v6)
      {
        return 1;
      }
    }

    else if (*&v2 == 1)
    {
      if (*&v3 == 1)
      {
        v4 = *(a2 + 8);
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (*&v3 > 1uLL)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

void sub_1004B29F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state);
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state + 8) == 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = [objc_allocWithZone(type metadata accessor for InstallProgressLayer()) init];
        sub_1004B2C10(v2);
        v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progressLayer);
        if (!v3)
        {
          return;
        }

        v4 = v3;
        v5 = sub_100753064();
        v6 = [v4 animationForKey:v5];

        if (v6)
        {

          v7 = sub_100753064();
          [v4 removeAnimationForKey:v7];
        }

        v8 = sub_10024B9C0();
        v14 = sub_100753064();
        [v4 addAnimation:v8 forKey:v14];
      }

      else
      {
        v13 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progressLayer);
        if (!v13)
        {
          return;
        }

        v14 = v13;
        sub_10024A784();
      }

      v12 = v14;
    }

    else
    {
      v11 = OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progressLayer;
      v12 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progressLayer);
      if (v12)
      {
        [v12 removeFromSuperlayer];
        v12 = *(v0 + v11);
      }

      *(v0 + v11) = 0;
    }
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progressLayer);
    v10 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state);

    [v9 setProgress:v10];
  }
}

void sub_1004B2C10(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progressLayer;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progressLayer];
  if (v4)
  {
    [v4 removeFromSuperlayer];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 mainScreen];
    [v9 scale];
    v11 = v10;

    [v8 setContentsScale:v11];
    v12 = [v1 layer];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [v8 setFrame:{v14, v16, v18, v20}];
    v21 = [v1 layer];
    [v21 addSublayer:v8];
  }
}

id sub_1004B2DA4(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state];
  *v9 = 0;
  v9[8] = 1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progressLayer] = 0;
  v10 = &v4[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_completionHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progress] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for InstallProgressView();
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor:v14];

  return v13;
}

void sub_1004B3054(double a1)
{
  v3 = sub_1007521E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752224();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752244();
  __chkstk_darwin(v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  v19 = &v1[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state];
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state];
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state + 8] == 1 && v20 > 1)
  {
    return;
  }

  if (a1 == 0.0)
  {
    v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progress];
    if (v22 == 1.0)
    {
      v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_completionHandler];
      if (v23)
      {
        v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_completionHandler + 8];

        v23(v25);

        sub_1000164A8(v23, v24);
      }

      return;
    }

    if (v22 > 0.0)
    {
      v26 = objc_opt_self();
      [v26 begin];
      v27 = swift_allocObject();
      *(v27 + 16) = v1;
      v50 = sub_1004B39B0;
      v51 = v27;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_1000CF7B0;
      v49 = &unk_100877EC0;
      v28 = _Block_copy(&aBlock);
      v29 = v1;

      [v26 setCompletionBlock:v28];
      _Block_release(v28);
      *v19 = 1;
      v19[8] = 1;
      sub_1004B29F4();
      [v26 commit];
      return;
    }
  }

  if (v20 == 1)
  {
    v30 = v1[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state + 8];
  }

  else
  {
    v30 = 0;
  }

  if ((v30 & 1) == 0)
  {
    v44 = v8;
    v45 = v4;
    v31 = OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progress;
    *v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progress];
    v19[8] = 0;
    v32 = v15;
    v33 = v16;
    sub_1004B29F4();
    v34 = v32;
    v35 = v45;
    if (*&v1[v31] >= 1.0)
    {
      v36 = v34;
      v43 = v34;
      sub_1000A7FA0();
      v40 = v1;
      v42 = sub_100753774();
      sub_100752234();
      sub_1007522B4();
      v41 = *(v33 + 8);
      v41(v13, v36);
      v37 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v50 = sub_1004B3958;
      v51 = v37;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_1000CF7B0;
      v49 = &unk_100877E70;
      v38 = _Block_copy(&aBlock);

      sub_100752204();
      aBlock = _swiftEmptyArrayStorage;
      sub_10002DCDC();
      sub_10000C518(&unk_10092F750, &qword_1007A6920);
      sub_1000A8054();
      sub_1007543A4();
      v39 = v42;
      sub_100753734();
      _Block_release(v38);

      (*(v35 + 8))(v6, v3);
      (*(v44 + 8))(v10, v7);
      v41(v18, v43);
    }
  }
}

id sub_1004B35B8(uint64_t a1)
{
  v1 = objc_opt_self();
  [v1 begin];
  v2 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_1004B39E8;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100877EE8;
  v4 = _Block_copy(aBlock);

  [v1 setCompletionBlock:v4];
  _Block_release(v4);
  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = v5 + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state;
    *v7 = 2;
    *(v7 + 8) = 1;
    sub_1004B29F4();
  }

  return [v1 commit];
}

void sub_1004B372C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_completionHandler);
    v2 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_completionHandler + 8);
    v4 = Strong;
    sub_10001B5AC(v3, v2);

    if (v3)
    {
      v3();
      sub_1000164A8(v3, v2);
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = v5 + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state;
    *v7 = 0;
    *(v7 + 8) = 1;
    sub_1004B29F4();
  }
}

id sub_1004B37FC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for InstallProgressView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t storeEnumTagSinglePayload for InstallProgressView.ProgressState(uint64_t result, int a2, int a3)
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

uint64_t sub_1004B38D4(uint64_t a1)
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

uint64_t sub_1004B38F0(uint64_t result, int a2)
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

uint64_t sub_1004B3920()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1004B3960(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1004B3978()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1004B39B0()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state;
  *v1 = 0;
  *(v1 + 8) = 0;
  sub_1004B29F4();
}

void sub_1004B3A4C(uint64_t a1)
{
  v2 = sub_10074AF74();
  __chkstk_darwin(v2 - 8);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074AF94();
  v66 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074F704();
  v64 = *(v8 - 8);
  v65 = v8;
  __chkstk_darwin(v8);
  v63 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&qword_100930648, &qword_1007B7380);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v50 - v12;
  sub_100747AB4();
  sub_1004B43A0(&qword_1009305D0, &type metadata accessor for ProductDescription, &protocol conformance descriptor for ProductDescription);
  sub_1007468B4();
  v14 = aBlock[0];
  if (aBlock[0])
  {
    v62 = v5;
    sub_1002B09B8();
    v67 = a1;
    sub_1007468E4();
    sub_100752E84();
    v15 = aBlock[0];
    v60 = v10;
    v61 = v7;
    v58 = v4;
    v59 = v11;
    v57 = v13;
    v54 = v14;
    if (LOBYTE(aBlock[0]) == 2)
    {
      sub_100747AA4();
      v15 = sub_10074F8D4();
    }

    v56 = sub_100747AA4();
    if (v15)
    {
      v16 = sub_10074F8E4();
      v53 = 3;
    }

    else
    {
      v16 = sub_10074F914();
      v53 = 0;
    }

    v17 = [sub_10007DC04() traitCollection];
    swift_unknownObjectRelease();
    v18 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v16];
    v19 = [v16 length];
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = v17;
    *(v20 + 32) = v18;
    *(v20 + 40) = 1;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_100047814;
    *(v21 + 24) = v20;
    v77 = sub_1000B18A8;
    v78 = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100047044;
    v76 = &unk_100877F60;
    v22 = _Block_copy(aBlock);
    v23 = v17;
    v24 = v18;

    v55 = v16;
    [v16 enumerateAttributesInRange:0 options:v19 usingBlock:{0x100000, v22}];

    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v26 = v24;
      v27 = sub_100747A94();
      v28 = sub_100747A84();
      v29 = sub_100747A74();
      if (sub_100747A64())
      {
        v30 = sub_10074ECB4();
        v51 = v31;
        v52 = v30;
      }

      else
      {
        v51 = 0;
        v52 = 0;
      }

      v32 = sub_10007DC04();
      swift_getKeyPath();
      v33 = v63;
      sub_100746914();

      sub_10074F674();
      (*(v64 + 8))(v33, v65);
      v34 = swift_allocObject();
      v35 = v53;
      *(v34 + 16) = v26;
      *(v34 + 24) = v35;
      v36 = sub_100750F34();
      swift_allocObject();
      v37 = v26;
      v38 = sub_100750EF4();
      v76 = v36;
      v77 = &protocol witness table for LayoutViewPlaceholder;
      aBlock[0] = v38;
      v39 = swift_allocObject();
      v39[2] = v27;
      v39[3] = v28;
      v39[4] = v29;
      v39[5] = v32;
      swift_allocObject();

      swift_unknownObjectRetain();
      v40 = sub_100750EF4();
      v74[3] = v36;
      v74[4] = &protocol witness table for LayoutViewPlaceholder;
      v74[0] = v40;
      v41 = type metadata accessor for DeveloperLinkView();
      v42 = swift_allocObject();
      v43 = v51;
      v44 = v52;
      v42[2] = v41;
      v42[3] = v44;
      v42[4] = v43;
      swift_allocObject();
      v45 = sub_100750EF4();
      v73[3] = v36;
      v73[4] = &protocol witness table for LayoutViewPlaceholder;
      v73[0] = v45;
      sub_100744704();
      LOBYTE(v41) = sub_1007532D4();

      if (v41)
      {
        sub_10000C824(v74, v71);
      }

      else
      {
        v72 = 0;
        memset(v71, 0, sizeof(v71));
      }

      v46 = v61;
      v47 = v59;
      v48 = v57;
      sub_1007065A0(v58);
      sub_10000C824(aBlock, &v70);
      sub_10000C824(v74, &v69);
      sub_10000C824(v73, &v68);
      sub_10074AF84();
      sub_1004B43A0(&qword_100930650, &type metadata accessor for ProductDescriptionLayout, &protocol conformance descriptor for ProductDescriptionLayout);
      v49 = v62;
      sub_100750404();

      swift_unknownObjectRelease();

      (*(v66 + 8))(v46, v49);
      sub_1002C9F48(v71);
      (*(v47 + 8))(v48, v60);
      sub_10000C620(v73);
      sub_10000C620(v74);
      sub_10000C620(aBlock);
    }
  }
}

uint64_t sub_1004B427C()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_1004B42D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1004B42F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004B4328()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004B4368()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004B43A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1004B4430()
{
  sub_100744774();
  sub_1004B44F0(&qword_10093A0E0, &type metadata accessor for RoundedButton, &protocol conformance descriptor for RoundedButton);
  sub_1007468B4();
  if (!v3)
  {
    return 0.0;
  }

  v0 = sub_10007DC04();
  v1 = sub_1007133EC(v3, v0);

  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1004B44F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1004B4598(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v8;
  v14 = swift_isaMask;
  v15 = v8 + qword_10093A0E8;
  *v15 = 0;
  v15[8] = 1;
  *(v8 + qword_10093A0F0) = 0;
  *(v8 + qword_10093A0F8) = 0;
  *(v8 + qword_10093A100) = 0;
  *(v8 + qword_10093A108) = 1;
  v16 = type metadata accessor for StackView(0, *((v14 & v13) + 0x50), a7, a8);
  v18.receiver = v8;
  v18.super_class = v16;
  return objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
}

void sub_1004B471C()
{
  if ((v0[qword_10093A0E8 + 8] & 1) != 0 || *&v0[qword_10093A0E8] != 3)
  {
    return;
  }

  v1 = sub_1004B48F4();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_100754664();
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_12:
    v5 = 0.0;
    goto LABEL_13;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v3 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v4 = 0;
  v5 = 0.0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = sub_100754574();
    }

    else
    {
      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    ++v4;
    [v6 frame];
    Width = CGRectGetWidth(v13);

    v5 = v5 + Width;
  }

  while (v3 != v4);
LABEL_13:

  [v0 frame];
  if (v5 >= CGRectGetWidth(v14))
  {
    return;
  }

  v9 = sub_1004B48F4();
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_16;
  }

LABEL_23:
  v10 = sub_100754664();
LABEL_16:

  if (v10 >= 2)
  {
    v11 = sub_1004B48F4();
    if (v11 >> 62)
    {
      v12 = sub_100754664();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v12, 1))
    {
      __break(1u);
    }

    else
    {
      [v0 frame];
      CGRectGetWidth(v15);
    }
  }
}

void *sub_1004B48F4()
{
  v1 = [v0 subviews];
  sub_100009D34();
  v2 = sub_1007532A4();

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_100754574();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isHidden])
      {
      }

      else
      {
        sub_1007545A4();
        sub_1007545D4();
        sub_1007545E4();
        sub_1007545B4();
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

void sub_1004B4A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for StackView(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v6.receiver = v4;
  v6.super_class = v5;
  objc_msgSendSuper2(&v6, "layoutSubviews");
  sub_1004B4B20();
  sub_1004B4CC0();
  sub_1004B4FB4();
}

void sub_1004B4AD8(void *a1)
{
  v4 = a1;
  sub_1004B4A70(v4, v1, v2, v3);
}

void sub_1004B4B20()
{
  v17 = *&v0[qword_10093A0F0];
  v1 = sub_1004B48F4();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_100754664();
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_100754574();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v0 frame];
    [v6 sizeThatFits:{v7, v8}];
    v10 = v9;
    v12 = v11;
    if (v0[qword_10093A108] == 1)
    {
      [v0 frame];
      if (v17)
      {
        if (v13 < v10)
        {
          [v0 frame];
          v10 = v15;
        }
      }

      else if (v14 < v12)
      {
        [v0 frame];
        v12 = v16;
      }
    }

    [v6 setFrame:{0.0, 0.0, v10, v12}];
  }

LABEL_16:
}

double sub_1004B4CC0()
{
  v1 = v0;
  v37 = *&v0[qword_10093A0F0];
  sub_1004B471C();
  v3 = v2;
  v4 = sub_1004B48F4();
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v7 = 0;
    v36 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v36)
      {
        v10 = sub_100754574();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v10 = *(v5 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v13 = [v1 traitCollection];
      v14 = sub_1007537F4();

      v8 = 0.0;
      if (v14)
      {
        [v1 bounds];
        MaxX = CGRectGetMaxX(v39);
        [v11 frame];
        v8 = MaxX - CGRectGetWidth(v40);
      }

      if (v7)
      {
        v16 = [v1 subviews];
        sub_100009D34();
        v17 = sub_1007532A4();

        if ((v17 & 0xC000000000000001) != 0)
        {
          v18 = sub_100754574();
        }

        else
        {
          if (v7 > *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v18 = *(v17 + 8 * v7 + 24);
        }

        v19 = v18;

        [v19 frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        if (v37)
        {
          v41.origin.x = v21;
          v41.origin.y = v23;
          v41.size.width = v25;
          v41.size.height = v27;
          v8 = v3 + CGRectGetMaxY(v41);
          v9 = 0.0;
          goto LABEL_6;
        }

        v28 = [v1 traitCollection];
        v29 = sub_1007537F4();

        v30 = v21;
        v31 = v23;
        v32 = v25;
        v33 = v27;
        if (v29)
        {
          MinX = CGRectGetMinX(*&v30);
          [v11 frame];
          v8 = MinX - (v3 + CGRectGetWidth(v42));
        }

        else
        {
          v8 = v3 + CGRectGetMaxX(*&v30);
        }
      }

      else
      {
        v9 = 0.0;
        if (v37)
        {
          goto LABEL_6;
        }
      }

      v9 = v8;
      v8 = 0.0;
LABEL_6:
      [v11 frame];
      [v11 setFrame:{v9, v8}];

      ++v7;
      if (v12 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:

  return result;
}

void sub_1004B4FB4()
{
  v1 = v0;
  v2 = *&v0[qword_10093A0F0];
  v3 = sub_1004B48F4();
  v4 = v3;
  if (v3 >> 62)
  {
    v5 = sub_100754664();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_41:

    return;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_41;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = &selRef_viewSafeAreaInsetsDidChange;
    v31 = xmmword_1007A5A00;
    while (1)
    {
      v10 = (v4 & 0xC000000000000001) != 0 ? sub_100754574() : *(v4 + 8 * v6 + 32);
      v11 = v10;
      v12 = *&v1[qword_10093A0F8];
      if (v12 > 2)
      {
        break;
      }

      if (!v12)
      {
        [v1 bounds];
        if (v2)
        {
          CGRectGetWidth(*&v15);
        }

        else
        {
          CGRectGetHeight(*&v15);
        }

        [v11 v7[501]];
        [v11 setFrame:{v19, v31}];
        goto LABEL_7;
      }

      if (v12 != 1)
      {
        if (v12 == 2)
        {
          sub_10000C518(&unk_1009259C0, &unk_1007A9270);
          v13 = swift_allocObject();
          *(v13 + 16) = v31;
          *(v13 + 56) = &type metadata for String;
          *(v13 + 32) = 0xD00000000000002CLL;
          *(v13 + 40) = 0x800000010077F980;
          sub_100754814();
        }

        goto LABEL_7;
      }

      if (!v2)
      {
        [v10 v7[501]];
        [v11 setFrame:{v29, v31}];
        goto LABEL_7;
      }

      v25 = [v1 traitCollection];
      v26 = sub_1007537F4();

      v9 = 0.0;
      if (v26)
      {
        goto LABEL_5;
      }

LABEL_6:
      v7 = &selRef_viewSafeAreaInsetsDidChange;
      [v11 frame];
      [v11 setFrame:{v9, v32, v34}];
LABEL_7:
      ++v6;

      if (v5 == v6)
      {
        goto LABEL_41;
      }
    }

    if (v12 == 3)
    {
      [v1 bounds];
      if (v2)
      {
        v24 = CGRectGetWidth(*&v20) * 0.5;
        [v11 center];
        [v11 setCenter:v24];
      }

      else
      {
        CGRectGetHeight(*&v20);
        [v11 center];
        [v11 setCenter:?];
      }

      goto LABEL_7;
    }

    if (v12 != 4)
    {
      if (v12 != 5 || v2 != 0)
      {
        goto LABEL_7;
      }

      [v1 bounds];
      CGRectGetHeight(v39);
      [v11 v7[501]];
      CGRectGetHeight(v40);
      [v11 lastBaselineFromBottom];
      goto LABEL_39;
    }

    if (!v2)
    {
      [v1 bounds];
      CGRectGetHeight(v41);
      [v11 v7[501]];
      CGRectGetHeight(v42);
LABEL_39:
      [v11 v7[501]];
      [v11 setFrame:{v30, v33, v35}];
      goto LABEL_7;
    }

    v27 = [v1 traitCollection];
    v28 = sub_1007537F4();

    v9 = 0.0;
    if (v28)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v1 bounds];
    Width = CGRectGetWidth(v37);
    [v11 frame];
    v9 = Width - CGRectGetWidth(v38);
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1004B53D0(double a1, double a2, double a3)
{
  v7 = [v3 subviews];
  sub_100009D34();
  v8 = sub_1007532A4();

  if (v8 >> 62)
  {
    goto LABEL_64;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {

    if (!i)
    {
      break;
    }

    v10 = *&v3[qword_10093A0F0];
    v11 = sub_1004B48F4();
    v12 = v11;
    if (v11 >> 62)
    {
      v13 = sub_100754664();
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0.0;
    if (!v13)
    {
      goto LABEL_34;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = sub_100754574();
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v15 = *(v12 + 32);
    }

    v16 = v15;
    [v15 sizeThatFits:{a1, a2}];
    v19 = v18;
    v20 = v17;
    if (v3[qword_10093A108] == 1)
    {
      if (v17 <= a2)
      {
        v21 = v17;
      }

      else
      {
        v21 = a2;
      }

      if (v19 <= a1)
      {
        v22 = v19;
      }

      else
      {
        v22 = a1;
      }

      if (v10)
      {
        v19 = v22;
      }

      else
      {
        v20 = v21;
      }
    }

    if (*&v3[qword_10093A0F8] == 5)
    {
      [v16 lastBaselineFromBottom];
      v23 = a1;
      v24 = a2;
      v25 = a3;
      v27 = v26;

      v28 = v20 - v27;
      a3 = v25;
      a2 = v24;
      a1 = v23;
    }

    else
    {

      if (v19 < 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v19;
      }

      v28 = v20;
    }

    if (v28 < 0.0)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v28;
    }

    if (v10)
    {
      v30 = v20;
    }

    else
    {
      v30 = v19;
    }

    v31 = v30 + 0.0;
    if (v13 == 1)
    {
LABEL_34:

      return;
    }

    v32 = 5;
    while (1)
    {
      v35 = v32 - 4;
      if ((v12 & 0xC000000000000001) != 0)
      {
        v36 = sub_100754574();
      }

      else
      {
        if (v35 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_62;
        }

        v36 = *(v12 + 8 * v32);
      }

      v37 = v36;
      v38 = __OFADD__(v35, 1);
      v39 = v32 - 3;
      if (v38)
      {
        break;
      }

      [v36 sizeThatFits:{a1, a2}];
      v42 = v40;
      v43 = v41;
      if (v3[qword_10093A108] == 1)
      {
        if (v10)
        {
          if (v40 > a1)
          {
            v42 = a1;
          }
        }

        else if (v41 > a2)
        {
          v43 = a2;
        }
      }

      if (*&v3[qword_10093A0F8] == 5)
      {
        [v37 lastBaselineFromBottom];
        v50 = v31;
        v44 = v14;
        v45 = a1;
        v46 = a2;
        v47 = a3;
        v49 = v48;

        v33 = v43 - v49;
        a3 = v47;
        a2 = v46;
        a1 = v45;
        v14 = v44;
        v31 = v50;
      }

      else
      {

        if (v14 <= v42)
        {
          v14 = v42;
        }

        v33 = v43;
      }

      if (v29 <= v33)
      {
        v29 = v33;
      }

      if (v10)
      {
        v34 = v43;
      }

      else
      {
        v34 = v42;
      }

      if (v34 <= 0.0)
      {
        v31 = v31 + v34;
      }

      else
      {
        v31 = v31 + v34 + a3;
      }

      ++v32;
      if (v39 == v13)
      {
        goto LABEL_34;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }
}

double sub_1004B5780(void *a1, double a2, double a3)
{
  v5 = a1;
  sub_1004B5770(a2, a3);
  v7 = v6;

  return v7;
}

Class sub_1004B57D4(void *a1)
{
  v1 = a1;
  sub_1004B5838();

  sub_100009D34();
  v2.super.isa = sub_100753294().super.isa;

  return v2.super.isa;
}

id sub_1004B583C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for StackView(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_1004B58B0()
{
  v1 = v0 + qword_10093A0E8;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + qword_10093A0F0) = 0;
  *(v0 + qword_10093A0F8) = 0;
  *(v0 + qword_10093A100) = 0;
  *(v0 + qword_10093A108) = 1;
  sub_100754644();
  __break(1u);
}

id sub_1004B5954()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = sub_1004B5FA0(1u, 1u);
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1004B59B4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_1004B5FA0(0, 1u);
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1004B5A14(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  sub_100754864(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  sub_100754864(*&v3);
}

Swift::Int sub_1004B5A64()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100754834();
  sub_1004B5A14(v1, v2);
  return sub_100754884();
}

Swift::Int sub_1004B5AC0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_100754834();
  sub_1004B5A14(v2, v3);
  return sub_100754884();
}

uint64_t sub_1004B5B3C()
{
  sub_10000C518(&qword_10093A240, &qword_1007C5198);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007C4D30;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = xmmword_1007C4D40;
  *(v0 + 96) = xmmword_1007C4D40;
  *(v0 + 112) = xmmword_1007C4D40;
  *(v0 + 128) = xmmword_1007C4D50;
  *(v0 + 144) = xmmword_1007C4D50;
  *(v0 + 160) = xmmword_1007C4D50;
  *(v0 + 176) = xmmword_1007C4D60;
  *(v0 + 192) = xmmword_1007C4D60;
  *(v0 + 208) = xmmword_1007C4D60;
  *(v0 + 224) = xmmword_1007C4D70;
  *(v0 + 240) = xmmword_1007C4D70;
  *(v0 + 256) = xmmword_1007C4D80;
  *(v0 + 272) = xmmword_1007B5860;
  *(v0 + 288) = xmmword_1007B5860;
  *(v0 + 304) = 0x3FF0000000000000;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0x3FC999999999999ALL;
  *(v0 + 336) = xmmword_1007C4D90;
  *(v0 + 352) = xmmword_1007C4DA0;
  *(v0 + 368) = vdupq_n_s64(0x3FC999999999999AuLL);
  *(v0 + 384) = xmmword_1007C4DB0;
  *(v0 + 400) = xmmword_1007C4DC0;
  *(v0 + 416) = xmmword_1007C4DD0;
  *(v0 + 432) = xmmword_1007C4DE0;
  *(v0 + 448) = xmmword_1007C4DF0;
  *(v0 + 464) = xmmword_1007C4E00;
  *(v0 + 480) = xmmword_1007C4DD0;
  *(v0 + 496) = xmmword_1007C4E00;
  *(v0 + 512) = xmmword_1007C4E10;
  *(v0 + 528) = xmmword_1007C4E20;
  *(v0 + 544) = xmmword_1007C4E30;
  *(v0 + 560) = xmmword_1007C4E40;
  *(v0 + 576) = xmmword_1007C4E40;
  *(v0 + 592) = xmmword_1007C4E40;
  *(v0 + 608) = xmmword_1007C4E50;
  *(v0 + 624) = xmmword_1007C4E60;
  *(v0 + 640) = xmmword_1007C4E70;
  *(v0 + 656) = xmmword_1007C4E80;
  *(v0 + 672) = xmmword_1007C4E90;
  *(v0 + 688) = xmmword_1007C4EA0;
  *(v0 + 704) = vdupq_n_s64(0x3FD999999999999AuLL);
  *(v0 + 720) = xmmword_1007C4EB0;
  *(v0 + 736) = xmmword_1007C4EC0;
  *(v0 + 752) = xmmword_1007C4ED0;
  *(v0 + 768) = xmmword_1007C4ED0;
  *(v0 + 784) = xmmword_1007C4EE0;
  *(v0 + 800) = xmmword_1007C4EF0;
  *(v0 + 816) = xmmword_1007C4F00;
  *(v0 + 832) = xmmword_1007C4F10;
  *(v0 + 848) = xmmword_1007C4F20;
  *(v0 + 864) = xmmword_1007C4F20;
  *(v0 + 880) = xmmword_1007C4F20;
  *(v0 + 896) = xmmword_1007C4F30;
  *(v0 + 912) = xmmword_1007C4F30;
  *(v0 + 928) = xmmword_1007C4F30;
  *(v0 + 944) = xmmword_1007C4F40;
  *(v0 + 960) = xmmword_1007C4F40;
  *(v0 + 976) = xmmword_1007C4F50;
  *(v0 + 992) = xmmword_1007C4F60;
  *(v0 + 1008) = xmmword_1007C4F70;
  *(v0 + 1024) = xmmword_1007C4F70;
  *(v0 + 1040) = vdupq_n_s64(0x3FE3333333333333uLL);
  *(v0 + 1056) = xmmword_1007C4F80;
  *(v0 + 1072) = xmmword_1007C4F90;
  *(v0 + 1088) = xmmword_1007C4FA0;
  *(v0 + 1104) = xmmword_1007C4FB0;
  *(v0 + 1120) = xmmword_1007C4FC0;
  *(v0 + 1136) = xmmword_1007C4FD0;
  *(v0 + 1152) = xmmword_1007C4FD0;
  *(v0 + 1168) = xmmword_1007C4FD0;
  *(v0 + 1184) = xmmword_1007C4FE0;
  *(v0 + 1200) = xmmword_1007C4FF0;
  *(v0 + 1216) = xmmword_1007C4FE0;
  *(v0 + 1232) = xmmword_1007C5000;
  *(v0 + 1248) = xmmword_1007C5010;
  *(v0 + 1264) = xmmword_1007C5020;
  *(v0 + 1280) = xmmword_1007C5030;
  *(v0 + 1296) = xmmword_1007C5040;
  *(v0 + 1312) = xmmword_1007C5050;
  *(v0 + 1328) = xmmword_1007C5060;
  *(v0 + 1344) = xmmword_1007C5070;
  *(v0 + 1360) = xmmword_1007C5080;
  v1 = vdupq_n_s64(0x3FE999999999999AuLL);
  *(v0 + 1376) = v1;
  *(v0 + 1392) = v1;
  *(v0 + 1408) = v1;
  *(v0 + 1424) = xmmword_1007C5090;
  *(v0 + 1440) = xmmword_1007C5090;
  *(v0 + 1456) = xmmword_1007C5090;
  *(v0 + 1472) = xmmword_1007B5850;
  *(v0 + 1488) = xmmword_1007B5850;
  *(v0 + 1504) = xmmword_1007B5850;
  *(v0 + 1520) = xmmword_1007C50A0;
  *(v0 + 1536) = xmmword_1007C50B0;
  *(v0 + 1552) = xmmword_1007C50C0;
  *(v0 + 1568) = xmmword_1007C50D0;
  *(v0 + 1584) = xmmword_1007C50E0;
  *(v0 + 1600) = xmmword_1007C50D0;
  *(v0 + 1616) = xmmword_1007C50F0;
  *(v0 + 1632) = xmmword_1007C5100;
  *(v0 + 1648) = xmmword_1007C5110;
  *(v0 + 1664) = xmmword_1007C5100;
  *(v0 + 1680) = xmmword_1007C5120;
  *(v0 + 1696) = xmmword_1007C5130;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 1712) = _Q0;
  *(v0 + 1728) = _Q0;
  *(v0 + 1744) = _Q0;
  v7 = sub_100414150(v0);
  swift_setDeallocating();
  result = swift_deallocClassInstance();
  off_10093A190 = v7;
  return result;
}

uint64_t sub_1004B5F3C()
{

  return swift_deallocClassInstance();
}

id sub_1004B5FA0(unsigned int a1, unsigned int a2)
{
  v4 = [objc_allocWithZone(CAMutableMeshTransform) init];
  [v4 setDepthNormalization:kCADepthNormalizationMax];
  if (qword_100920D48 != -1)
  {
    swift_once();
  }

  v5 = 0;
  v6 = vdup_n_s32(a2);
  v7 = off_10093A190;
  v8 = vdup_n_s32(a1);
  v9.i64[0] = v8.u32[0];
  v9.i64[1] = v8.u32[1];
  __asm { FMOV            V1.2D, #1.0 }

  v38 = _Q1;
  v39 = vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL));
  v9.i64[0] = v6.u32[0];
  v9.i64[1] = v6.u32[1];
  v37 = vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL));
  if (*(off_10093A190 + 2))
  {
LABEL_4:
    v15 = *(&off_100861628 + v5 + 32);
    v16 = sub_10041264C(0.0, v15);
    if (v17)
    {
      v18 = vbslq_s8(v39, *(v7[7] + 32 * v16), *(v7[7] + 32 * v16 + 16));
      v41 = 0;
      v42 = v15;
      v43 = vbslq_s8(v37, vsubq_f64(v38, v18), v18);
      v44 = 0;
      [v4 addVertex:&v41];
    }

    if (v7[2])
    {
      v19 = sub_10041264C(0.2, v15);
      if (v20)
      {
        v21 = vbslq_s8(v39, *(v7[7] + 32 * v19), *(v7[7] + 32 * v19 + 16));
        v41 = 0x3FC999999999999ALL;
        v42 = v15;
        v43 = vbslq_s8(v37, vsubq_f64(v38, v21), v21);
        v44 = 0;
        [v4 addVertex:&v41];
      }

      if (v7[2])
      {
        v22 = sub_10041264C(0.4, v15);
        if (v23)
        {
          v24 = vbslq_s8(v39, *(v7[7] + 32 * v22), *(v7[7] + 32 * v22 + 16));
          v41 = 0x3FD999999999999ALL;
          v42 = v15;
          v43 = vbslq_s8(v37, vsubq_f64(v38, v24), v24);
          v44 = 0;
          [v4 addVertex:&v41];
        }

        if (v7[2])
        {
          v25 = sub_10041264C(0.6, v15);
          if (v26)
          {
            v27 = vbslq_s8(v39, *(v7[7] + 32 * v25), *(v7[7] + 32 * v25 + 16));
            v41 = 0x3FE3333333333333;
            v42 = v15;
            v43 = vbslq_s8(v37, vsubq_f64(v38, v27), v27);
            v44 = 0;
            [v4 addVertex:&v41];
          }

          if (v7[2])
          {
            v28 = sub_10041264C(0.8, v15);
            if (v29)
            {
              v30 = vbslq_s8(v39, *(v7[7] + 32 * v28), *(v7[7] + 32 * v28 + 16));
              v41 = 0x3FE999999999999ALL;
              v42 = v15;
              v43 = vbslq_s8(v37, vsubq_f64(v38, v30), v30);
              v44 = 0;
              [v4 addVertex:&v41];
            }

            if (v7[2])
            {
              v31 = sub_10041264C(1.0, v15);
              if (v32)
              {
                v33 = vbslq_s8(v39, *(v7[7] + 32 * v31), *(v7[7] + 32 * v31 + 16));
                v41 = 0x3FF0000000000000;
                v42 = v15;
                v43 = vbslq_s8(v37, vsubq_f64(v38, v33), v33);
                v44 = 0;
                [v4 addVertex:&v41];
              }
            }
          }
        }
      }
    }
  }

  while (v5 != 40)
  {
    v5 += 8;
    if (v7[2])
    {
      goto LABEL_4;
    }
  }

  v45 = 0uLL;
  for (i = -24; ; i += 6)
  {
    v43 = 0uLL;
    LODWORD(v41) = i + 24;
    HIDWORD(v41) = i + 25;
    v35 = vadd_s32(vdup_n_s32(i + 24), 0x600000007);
    v40 = v35.i32[0];
    v42 = *&v35;
    [v4 addFace:{&v41, *&v37, *&v38}];
    v43 = 0uLL;
    LODWORD(v41) = i + 25;
    HIDWORD(v41) = i + 26;
    LODWORD(v42) = i + 32;
    HIDWORD(v42) = v40;
    [v4 addFace:&v41];
    v43 = 0uLL;
    LODWORD(v41) = i + 26;
    HIDWORD(v41) = i + 27;
    LODWORD(v42) = i + 33;
    HIDWORD(v42) = i + 32;
    [v4 addFace:&v41];
    v43 = 0uLL;
    LODWORD(v41) = i + 27;
    HIDWORD(v41) = i + 28;
    LODWORD(v42) = i + 34;
    HIDWORD(v42) = i + 33;
    [v4 addFace:&v41];
    v43 = v45;
    LODWORD(v41) = i + 28;
    HIDWORD(v41) = i + 29;
    LODWORD(v42) = i + 35;
    HIDWORD(v42) = i + 34;
    [v4 addFace:&v41];
    if (!i)
    {
      break;
    }
  }

  return v4;
}

unint64_t sub_1004B6424()
{
  result = qword_10093A248;
  if (!qword_10093A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A248);
  }

  return result;
}

char *sub_1004B6478(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31TodayDebugSectionBackgroundView_sectionTypeIndicator;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for TodayDebugSectionBackgroundView();
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v10;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC22SubscribePageExtension31TodayDebugSectionBackgroundView_sectionTypeIndicator]];
  v15 = [v14 layer];
  [v15 setZPosition:1000.0];

  return v14;
}

void sub_1004B6708(uint64_t a1)
{
  v2 = sub_10074EA34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v21 = sub_10074BFD4();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v7 + 8))(v9, v6);
  if ((*(v3 + 88))(v5, v2) == enum case for Shelf.ContentsMetadata.todaySection(_:))
  {
    (*(v3 + 96))(v5, v2);
    v13 = v5;
    v14 = v21;
    (*(v10 + 32))(v12, v13, v21);
    v15 = v23;
    v16 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension31TodayDebugSectionBackgroundView_sectionTypeIndicator];
    v17 = sub_10074BFB4();
    [v16 setBackgroundColor:v17];

    sub_1003D9C5C();
    sub_10074BE34();
    sub_10074BE54();
    sub_1007535D4();
    [v15 setLayoutMargins:?];
    (*(v10 + 8))(v12, v14);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    v18 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension31TodayDebugSectionBackgroundView_sectionTypeIndicator];
    v19 = [objc_opt_self() clearColor];
    [v18 setBackgroundColor:v19];
  }
}

id sub_1004B6B2C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TodayDebugSectionBackgroundView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_1004B6B98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR___ExtensionViewController_presentationGate;
  sub_1000A7FA0();
  sub_100753774();
  sub_10074E5B4();
  swift_allocObject();
  *&v3[v8] = sub_10074E554();
  v9 = OBJC_IVAR___ExtensionViewController_viewAppeared;
  sub_10074E5A4();
  swift_allocObject();
  *&v3[v9] = sub_10074E594();
  v10 = OBJC_IVAR___ExtensionViewController_viewControllerConfigured;
  swift_allocObject();
  *&v3[v10] = sub_10074E594();
  v11 = OBJC_IVAR___ExtensionViewController_didPresentRootViewController;
  swift_allocObject();
  *&v3[v11] = sub_10074E594();
  type metadata accessor for RootViewController();
  *&v3[OBJC_IVAR___ExtensionViewController_rootViewController] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a2)
  {
    v12 = sub_100753064();
  }

  else
  {
    v12 = 0;
  }

  v22.receiver = v4;
  v22.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v22, "initWithNibName:bundle:", v12, a3);

  v14 = *&v13[OBJC_IVAR___ExtensionViewController_rootViewController];
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = &v14[OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_dismissalCompletionHandler];
  v17 = *&v14[OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_dismissalCompletionHandler];
  v18 = *&v14[OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_dismissalCompletionHandler + 8];
  *v16 = sub_1004B79D4;
  v16[1] = v15;
  v19 = v13;
  v20 = v14;
  sub_1000164A8(v17, v18);

  sub_10074E544();

  sub_10074E544();

  sub_10074E544();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10074E564();

  return v19;
}

void sub_1004B6EB0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR___ExtensionViewController_rootViewController);

    v4 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_childViewController];
    if (v4)
    {
      v5 = v4;
      [v5 setTransitioningDelegate:v3];
      [v5 setModalPresentationStyle:4];
      [v3 presentViewController:v5 animated:1 completion:0];
    }
  }
}

void sub_1004B712C()
{
  v1 = v0;
  if ((sub_10074E574() & 1) == 0)
  {
    v2 = *&v0[OBJC_IVAR___ExtensionViewController_rootViewController];
    [*&v1[OBJC_IVAR___ExtensionViewController_rootViewController] setModalPresentationStyle:0];
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v6[4] = sub_1004B7988;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1000CF7B0;
    v6[3] = &unk_100878160;
    v4 = _Block_copy(v6);
    v5 = v1;

    [v5 presentViewController:v2 animated:0 completion:v4];
    _Block_release(v4);
  }
}

void sub_1004B72A8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR___ExtensionViewController_rootViewController);
  v21[0] = 0x44496D657469;
  v21[1] = 0xE600000000000000;
  sub_1007544E4();
  if (*(a1 + 16) && (v5 = sub_100412148(v20), (v6 & 1) != 0))
  {
    sub_10000C5B4(*(a1 + 56) + 32 * v5, v21);
    sub_100016994(v20);
    v7 = swift_dynamicCast();
    if (v7)
    {
      v8 = v18;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    sub_100016994(v20);
    v8 = 0;
    v9 = 0;
  }

  [objc_opt_self() as_activatePresentationHack];
  type metadata accessor for SubscribePageBootstrap(0);
  v10 = swift_allocObject();

  v11 = v4;
  v12 = sub_1004B76F4(v8, v9, v11, v10);

  sub_100688F68();
  v13 = *(v12 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_navigationController);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_childViewController;
  v15 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_childViewController];
  *&v11[OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_childViewController] = v13;
  v16 = v13;

  [v16 setTransitioningDelegate:v11];
  [v16 setModalPresentationStyle:4];
  [v11 presentViewController:v16 animated:1 completion:0];

  v17 = *&v11[v14];

  sub_10074E584();
}

void sub_1004B75C4()
{
  v1 = OBJC_IVAR___ExtensionViewController_presentationGate;
  sub_1000A7FA0();
  sub_100753774();
  sub_10074E5B4();
  swift_allocObject();
  *(v0 + v1) = sub_10074E554();
  v2 = OBJC_IVAR___ExtensionViewController_viewAppeared;
  sub_10074E5A4();
  swift_allocObject();
  *(v0 + v2) = sub_10074E594();
  v3 = OBJC_IVAR___ExtensionViewController_viewControllerConfigured;
  swift_allocObject();
  *(v0 + v3) = sub_10074E594();
  v4 = OBJC_IVAR___ExtensionViewController_didPresentRootViewController;
  swift_allocObject();
  *(v0 + v4) = sub_10074E594();
  sub_100754644();
  __break(1u);
}

uint64_t sub_1004B76F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000C518(&qword_100929630, &unk_1007D5E70);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = a4 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_delegate;
  *(a4 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  if (a2)
  {
    sub_10074ED14();
    v10 = sub_10074ED34();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
    sub_1004B78E0(v8, a4 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_adamId);
  }

  else
  {
    v11 = OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_adamId;
    v12 = sub_10074ED34();
    (*(*(v12 - 8) + 56))(a4 + v11, 1, 1, v12);
  }

  *(v9 + 8) = &off_10087C788;
  swift_unknownObjectWeakAssign();
  type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
  v13 = type metadata accessor for StoreNavigationController();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC22SubscribePageExtension25StoreNavigationController_objectGraph] = 0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18.receiver = v14;
  v18.super_class = v13;
  v16 = objc_msgSendSuper2(&v18, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
  [v16 setDelegate:v16];
  *(a4 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_navigationController) = v16;
  return sub_10068912C();
}

uint64_t sub_1004B78E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100929630, &unk_1007D5E70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004B7950()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1004B79BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_1004B79D4()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dismissViewControllerAnimated:completion:", 0, 0);
}

uint64_t sub_1004B7A20()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1004B7A64()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.0156862745 green:0.0156862745 blue:0.0588235294 alpha:0.4];
  qword_10093A2D0 = result;
  return result;
}

char *sub_1004B7ABC(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_10000C518(&qword_100932560, qword_1007A7BB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_dimmingView] = v10;
  sub_100743034();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_shadowView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v27.receiver = v3;
  v27.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v27, "initWithPresentedViewController:presentingViewController:", a1, a2);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_dimmingView;
  v13 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_dimmingView];
  v14 = v11;
  [v13 setAlpha:0.0];
  v15 = qword_100920D50;
  v16 = *&v11[v12];
  if (v15 != -1)
  {
    swift_once();
  }

  [v16 setBackgroundColor:qword_10093A2D0];

  v17 = OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_shadowView;
  v18 = qword_100920490;
  v19 = *&v14[OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_shadowView];
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = sub_10074F0C4();
  v21 = sub_10000D0FC(v20, qword_10097E170);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v9, v21, v20);
  (*(v22 + 56))(v9, 0, 1, v20);
  sub_100743014();

  v23 = [*&v14[v17] layer];
  [v23 setMaskedCorners:15];

  [*&v14[v17] _setContinuousCornerRadius:16.0];
  [*&v14[v17] setAutoresizingMask:18];
  result = [a1 view];
  if (result)
  {
    v25 = result;
    [result _setContinuousCornerRadius:16.0];

    result = [a1 view];
    if (result)
    {
      v26 = result;
      [result setClipsToBounds:1];

      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1004B7E94()
{
  v1 = [v0 containerView];
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  [v1 bounds];
  [v2 safeAreaInsets];
  sub_100753B14();
  v22 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v0 presentedViewController];
  [v2 bounds];
  v12 = v11;
  v14 = v13;
  v15 = v10;
  v16 = [v0 traitCollection];
  v17 = [v16 userInterfaceIdiom];

  if (v17)
  {
    v18 = 540.0;
  }

  else
  {
    v18 = 295.0;
  }

  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = v12;
  v23.size.height = v14;
  v19 = CGRectGetWidth(v23) + -80.0;
  if (v19 < v18)
  {
    v18 = v19;
  }

  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = v12;
  v24.size.height = v14;
  CGRectGetHeight(v24);

  v25.origin.x = v22;
  v25.origin.y = v5;
  v25.size.width = v7;
  v25.size.height = v9;
  v20 = CGRectGetMidX(v25) - v18 * 0.5;
  v26.origin.x = v22;
  v26.origin.y = v5;
  v26.size.width = v7;
  v26.size.height = v9;
  CGRectGetMidY(v26);

  return v20;
}

void sub_1004B81D0()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v10 = v1;
    [v1 bounds];
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_dimmingView] setFrame:?];
    v2 = sub_1004B7E94();
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v9 = [v0 presentedView];
    [v9 setFrame:{v2, v4, v6, v8}];

    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_shadowView] setFrame:{v2, v4, v6, v8}];
  }
}

void sub_1004B8338()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v10 = v1;
    [v1 bounds];
    v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_dimmingView];
    [v2 setFrame:?];
    [v10 insertSubview:v2 atIndex:0];
    v3 = [v0 presentedViewController];
    v4 = [v3 view];

    if (v4)
    {
      [v10 insertSubview:*&v0[OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_shadowView] belowSubview:v4];
    }

    v5 = [v0 presentedViewController];
    v6 = [v5 transitionCoordinator];

    [v2 setAlpha:0.0];
    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v0;
      aBlock[4] = sub_1004B8890;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003ED3AC;
      aBlock[3] = &unk_100878250;
      v8 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v9 = v0;

      [v6 animateAlongsideTransition:v8 completion:0];

      swift_unknownObjectRelease();
      _Block_release(v8);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1004B85B8()
{
  v1 = [v0 presentedViewController];
  v2 = [v1 transitionCoordinator];

  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v7[4] = sub_1004B8818;
    v7[5] = v3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1003ED3AC;
    v7[3] = &unk_100878200;
    v4 = _Block_copy(v7);
    v5 = v0;

    [v2 animateAlongsideTransition:v4 completion:0];
    _Block_release(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_dimmingView] setAlpha:0.0];
    v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_shadowView];

    [v6 setAlpha:0.0];
  }
}

uint64_t sub_1004B87E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1004B8818()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_dimmingView) setAlpha:0.0];
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_shadowView);

  return [v2 setAlpha:0.0];
}

double sub_1004B8878(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_1004B8908()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745764();
  sub_1004B8B04(&qword_10093A318, &type metadata accessor for PrivacyCategory, &protocol conformance descriptor for PrivacyCategory);
  sub_1007468B4();
  v4 = v11;
  if (!v11)
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  (*(v1 + 8))(v3, v0);
  v5 = sub_10007DC04();
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  v11 = sub_1002EA814(v4, v5, v6);
  sub_100750F34();
  sub_100750404();
  v8 = v7;

  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_1004B8B04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1004B8B50(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v53 = sub_10074AB44();
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v54 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v9 - 8);
  v51 = v47 - v10;
  v11 = sub_100750304();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_scalableCornerRadius;
  if (qword_100921160 != -1)
  {
    swift_once();
  }

  v15 = sub_100750534();
  v61 = sub_10000D0FC(v15, qword_100981158);
  v50 = *(v15 - 8);
  v16 = v50 + 16;
  v17 = *(v50 + 16);
  v17(v14, v61, v15);
  v49 = v16;
  v57 = v17;
  v60 = enum case for FontSource.useCase(_:);
  v59 = v12[13];
  v59(v14);
  v47[2] = v12 + 13;
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v64);
  v58 = v12[2];
  v58(v18, v14, v11);
  v47[1] = v12 + 2;
  sub_100750B14();
  v56 = v12[1];
  v56(v14, v11);
  v47[0] = OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_scalableHeight;
  v19 = v61;
  v48 = v15;
  v17(v14, v61, v15);
  v20 = v60;
  v21 = v59;
  (v59)(v14, v60, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v22 = sub_10000D134(v64);
  v23 = v58;
  v58(v22, v14, v11);
  sub_100750B14();
  v24 = v56;
  v56(v14, v11);
  v47[0] = OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_scalableHorizontalPadding;
  v25 = v19;
  v26 = v57;
  v57(v14, v25, v15);
  v21(v14, v20, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v27 = sub_10000D134(v64);
  v23(v27, v14, v11);
  sub_100750B14();
  v24(v14, v11);
  v28 = v61;
  v29 = v48;
  v26(v14, v61, v48);
  (v59)(v14, v60, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v30 = sub_10000D134(v64);
  v58(v30, v14, v11);
  v31 = v62;
  sub_100750B14();
  v56(v14, v11);
  v32 = OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_ageLabel;
  v33 = v51;
  v57(v51, v28, v29);
  (*(v50 + 56))(v33, 0, 1, v29);
  (*(v52 + 104))(v54, enum case for DirectionalTextAlignment.none(_:), v53);
  v34 = objc_allocWithZone(sub_100745C84());
  *&v31[v32] = sub_100745C74();
  v63.receiver = v31;
  v63.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v63, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v39 = v35;
  [v39 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v40 = objc_opt_self();
  v41 = [v40 clearColor];
  [v39 setBackgroundColor:v41];

  v42 = [v40 systemGrayColor];
  [v39 setTintColor:v42];

  v43 = OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_ageLabel;
  v44 = *&v39[OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_ageLabel];
  v45 = [v39 tintColor];

  [v44 setTextColor:v45];
  [*&v39[v43] setTextAlignment:1];
  [v39 addSubview:*&v39[v43]];

  return v39;
}

void sub_1004B9360(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100754724();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v5;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "drawRect:", a1, a2, a3, a4);
  sub_1007502D4();
  sub_100750B04();
  sub_100750564();
  v16 = v15;
  v17 = *(v12 + 8);
  v17(v14, v11);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v30 = CGRectInset(v29, v16 * 0.5, v16 * 0.5);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  v22 = objc_opt_self();
  sub_1007502D4();
  sub_100750564();
  v24 = v23;
  v17(v14, v11);
  v25 = [v22 _bezierPathWithArcRoundedRect:x cornerRadius:{y, width, height, v24}];
  [v25 setLineWidth:v16];
  v26 = [v5 tintColor];
  if (v26)
  {
    v27 = v26;
    [v26 setStroke];

    [v25 stroke];
  }

  else
  {
    __break(1u);
  }
}

double sub_1004B9658(double a1)
{
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007502D4();
  sub_100750B04();
  sub_100750564();
  v8 = v7;
  v9 = *(v4 + 8);
  v9(v6, v3);
  v10 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_ageLabel);
  sub_1007502D4();
  sub_100750564();
  v12 = v11;
  v9(v6, v3);
  v13 = fmax(v12, 1.0);
  sub_1007502D4();
  sub_100750564();
  v15 = v14;
  v9(v6, v3);
  v16 = fmax(v15, 1.0);
  [v10 sizeThatFits:{a1 - (v13 + v13), v8 - (v16 + v16)}];
  v18 = v17;
  sub_1007502D4();
  sub_100750564();
  v20 = v19;
  v9(v6, v3);
  sub_1007502D4();
  sub_100750564();
  v22 = v21;
  v9(v6, v3);
  return v18 + v20 + v20 + fmax(v22, 1.0) * 4.0;
}

uint64_t type metadata accessor for AgeRatingBadgeView(uint64_t a1)
{
  result = qword_10093A370;
  if (!qword_10093A370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004B9B3C(uint64_t a1)
{
  result = sub_100750B04();
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

void sub_1004B9BE0()
{
  v0 = sub_10074AB44();
  v31 = *(v0 - 8);
  v32 = v0;
  __chkstk_darwin(v0);
  v33 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v2 - 8);
  v30 = v28 - v3;
  v4 = sub_100750304();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_scalableCornerRadius;
  if (qword_100921160 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_100981158);
  v29 = *(v8 - 8);
  v10 = v29 + 16;
  v39 = *(v29 + 16);
  v40 = v8;
  v34 = v9;
  v39(v7, v9, v8);
  v28[1] = v10;
  v38 = enum case for FontSource.useCase(_:);
  v37 = v5[13];
  v37(v7);
  v41 = v5 + 13;
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v11 = sub_10000D134(v43);
  v36 = v5[2];
  v36(v11, v7, v4);
  sub_100750B14();
  v35 = v5[1];
  v35(v7, v4);
  v28[0] = OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_scalableHeight;
  v12 = v9;
  v13 = v39;
  v39(v7, v12, v8);
  v14 = v38;
  v15 = v37;
  (v37)(v7, v38, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v16 = sub_10000D134(v43);
  v17 = v36;
  v36(v16, v7, v4);
  sub_100750B14();
  v18 = v35;
  v35(v7, v4);
  v28[0] = OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_scalableHorizontalPadding;
  v13(v7, v34, v40);
  v15(v7, v14, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v19 = sub_10000D134(v43);
  v17(v19, v7, v4);
  v20 = v42;
  sub_100750B14();
  v18(v7, v4);
  v21 = v34;
  v23 = v39;
  v22 = v40;
  v39(v7, v34, v40);
  (v37)(v7, v38, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v24 = sub_10000D134(v43);
  v36(v24, v7, v4);
  sub_100750B14();
  v35(v7, v4);
  v25 = OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_ageLabel;
  v26 = v30;
  v23(v30, v21, v22);
  (*(v29 + 56))(v26, 0, 1, v22);
  (*(v31 + 104))(v33, enum case for DirectionalTextAlignment.none(_:), v32);
  v27 = objc_allocWithZone(sub_100745C84());
  *(v20 + v25) = sub_100745C74();
  sub_100754644();
  __break(1u);
}

uint64_t sub_1004BA184@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10000C518(&unk_10093D6E0, &unk_1007A6080);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  sub_100747BB4();
  sub_100122174(v7);
  v8 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  (*(*(v8 - 8) + 48))(v4, 1, v8);
  sub_100122174(v4);
  a1[3] = sub_1007457D4();
  a1[4] = sub_10022BF6C();
  sub_10000D134(a1);
  return sub_1007457C4();
}

uint64_t sub_1004BA2C4@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
  v3 = sub_100749E34();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t type metadata accessor for ScreenshotsLockupCollectionViewCell(uint64_t a1)
{
  result = qword_10093A3A8;
  if (!qword_10093A3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1004BA458()
{
  sub_10000C518(&qword_1009360A8, &qword_1007BE180);
  sub_10002DDC8(&qword_1009360B0, &qword_1009360A8, &qword_1007BE180, &unk_1007B7520);
  sub_10074D9D4();
  sub_10000C518(&qword_100930960, &qword_1007B7738);
  sub_10000C518(&qword_100930968, &qword_1007B7740);
  if (swift_dynamicCast())
  {
    sub_10000C888(&v2, *(&v3 + 1));
    sub_100745654();
    sub_10000C620(&v2);
  }

  else
  {
    v4 = 0;
    v2 = 0u;
    v3 = 0u;
    sub_10000C8CC(&v2, &qword_100930970, qword_1007B7748);
  }

  type metadata accessor for TodayCardGridTracker();
  sub_1007526C4();
  if (v1)
  {
    swift_beginAccess();
    *(v1 + 16) = _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1004BA5E0(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009308D0, &qword_1007A9960);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - v4;
  v6 = sub_10000C518(&qword_100930828, &qword_1007B7688);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-1] - v7;
  sub_100016B4C(a1, &v16[-1] - v7, &qword_100930828, &qword_1007B7688);
  v9 = sub_10000C518(&qword_100930830, &unk_1007B7690);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000C8CC(v8, &qword_100930828, &qword_1007B7688);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  else
  {
    sub_1007451A4();
    (*(v10 + 8))(v8, v9);
    v11 = sub_10074E424();
    (*(v3 + 8))(v5, v2);
    v12 = sub_10000C518(&qword_100930950, &qword_1007B7730);
    v13 = sub_10002DDC8(&qword_100930958, &qword_100930950, &qword_1007B7730, &protocol conformance descriptor for Set<A>);
  }

  v16[0] = v11;
  v17 = v12;
  v18 = v13;
  result = sub_100748A74();
  if (v17)
  {
    return sub_10000C620(v16);
  }

  return result;
}

void sub_1004BA870(__n128 a1)
{
  v2 = sub_100754074();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007541F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v64 - v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = [Strong view];

    if (v15)
    {
      if ((sub_1003641A8() & 1) != 0 && !*(v1 + 24))
      {
        v73 = v3;
        v25 = [v15 window];
        v70 = v7;
        v71 = v6;
        v72 = v9;
        if (v25 && (v26 = v25, v27 = [v25 windowScene], v26, v27))
        {
          v28 = [v27 screen];

          [v28 bounds];
          v30 = v29;
          v32 = v31;
        }

        else
        {
          [v15 bounds];
          v30 = v33;
          v32 = v34;
        }

        v35 = 0;
        v36 = _swiftEmptyArrayStorage;
        v37 = 19;
        if (v30 <= v32)
        {
          v30 = v32;
        }

        v74 = v1;
        aBlock[0] = _swiftEmptyArrayStorage;
        v38 = v73;
        v69 = v15;
LABEL_15:
        if (v35 > 0x13)
        {
          v37 = v35;
        }

        v39 = v37 + 1;
        v40 = (&off_100862968 + 5 * v35);
        while (v35 != 19)
        {
          if (v39 == ++v35)
          {
            __break(1u);
            return;
          }

          v41 = (v40 + 5);
          v42 = *(v40 + 6);
          v43 = *(v40 + 64);
          v44 = v42;
          if (v43)
          {
            v44 = v30;
          }

          v40 += 5;
          if (v44 <= v30)
          {
            v45 = *(v41 + 26);
            v66 = *(v41 + 25);
            v67 = v45;
            v65 = v41[2];
            v47 = *(v41 - 1);
            v46 = *v41;
            v68 = sub_100016C60(0, &qword_100929CC0, UIAction_ptr);
            v48 = swift_allocObject();
            swift_weakInit();
            v49 = swift_allocObject();
            *(v49 + 16) = v48;
            *(v49 + 24) = v47;
            *(v49 + 32) = v46;
            *(v49 + 40) = v42;
            *(v49 + 48) = v65;
            *(v49 + 56) = v43;
            v50 = v67;
            *(v49 + 57) = v66;
            *(v49 + 58) = v50;
            swift_bridgeObjectRetain_n();
            sub_100753FF4();
            sub_100753284();
            if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_100753304();
            }

            sub_100753344();
            v36 = aBlock[0];
            v38 = v73;
            v37 = 19;
            goto LABEL_15;
          }
        }

        sub_100016C60(0, &qword_1009257B8, UIMenu_ptr);
        v77._object = 0x800000010077FE00;
        v77._countAndFlagsBits = 0xD000000000000011;
        v78.value._countAndFlagsBits = 0;
        v78.value._object = 0;
        v76.value.super.isa = 0;
        v76.is_nil = 0;
        v51.value = 32;
        isa = sub_100753C34(v77, v78, v76, v51, 0xFFFFFFFFFFFFFFFFLL, v36, v63).super.super.isa;
        v68 = isa;
        sub_1007541E4();
        sub_1007541C4();
        v53 = sub_100753064();
        v54 = [objc_opt_self() systemImageNamed:v53];

        sub_100754194();
        sub_100754094();
        sub_1007540D4();
        (*(v38 + 104))(v5, enum case for UIButton.Configuration.CornerStyle.large(_:), v2);
        sub_100754084();
        v55 = objc_opt_self();
        v56 = [v55 systemBlueColor];
        sub_100754114();
        v57 = [v55 whiteColor];
        sub_100754124();
        v58 = swift_allocObject();
        swift_weakInit();
        sub_100016C60(0, &qword_10093B420, UIButton_ptr);
        v7 = v70;
        v6 = v71;
        (*(v70 + 16))(v72, v12, v71);
        v59 = sub_100754204();
        [v59 setMenu:isa];
        [v59 setShowsMenuAsPrimaryAction:1];
        aBlock[4] = sub_1004BC5C8;
        aBlock[5] = v58;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001A67C4;
        aBlock[3] = &unk_1008782E8;
        v60 = _Block_copy(aBlock);

        v3 = v73;

        [v59 setConfigurationUpdateHandler:v60];
        _Block_release(v60);
        v61 = *(v74 + 24);
        *(v74 + 24) = v59;
        v62 = v59;

        v9 = v72;
        sub_1004BB7C8();
        v1 = v74;

        v15 = v69;

        (*(v7 + 8))(v12, v6);
        if (sub_1003641CC())
        {
          goto LABEL_6;
        }
      }

      else if (sub_1003641CC())
      {
LABEL_6:
        if (!*(v1 + 32))
        {
          sub_1007541E4();
          v74 = v1;
          sub_1007541C4();
          v16 = sub_100753064();
          v17 = [objc_opt_self() systemImageNamed:v16];

          sub_100754194();
          sub_100754094();
          sub_1007540D4();
          (*(v3 + 104))(v5, enum case for UIButton.Configuration.CornerStyle.large(_:), v2);
          sub_100754084();
          v18 = objc_opt_self();
          v19 = [v18 systemRedColor];
          sub_100754114();
          v20 = [v18 whiteColor];
          sub_100754124();
          sub_100016C60(0, &qword_10093B420, UIButton_ptr);
          (*(v7 + 16))(v9, v12, v6);
          sub_100016C60(0, &qword_100929CC0, UIAction_ptr);
          sub_100753FF4();
          v21 = sub_100754204();
          v22 = *(v74 + 32);
          *(v74 + 32) = v21;
          v23 = v7;
          v24 = v21;

          sub_1004BB9B4();
          (*(v23 + 8))(v12, v6);
          return;
        }
      }
    }
  }
}

void sub_1004BB190()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v68 = [Strong view];

    if (v68)
    {
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        v5 = [v3 traitCollection];

        if (v5)
        {
          v6 = *(v0 + 24);
          v7 = &selRef_initWithTitle_style_target_action_;
          v8 = &stru_1008F2000;
          if (v6)
          {
            v9 = v6;
            [v68 bounds];
            [v9 sizeThatFits:{v10, v11}];
            v13 = v12;
            v15 = v14;
            [v68 bounds];
            v16 = CGRectGetMaxX(v70) - v13;
            if (qword_100921730 != -1)
            {
              swift_once();
            }

            v17 = sub_100750B04();
            sub_10000D0FC(v17, qword_100982110);
            sub_100751034();
            sub_10000C518(&unk_1009231A0, qword_1007A5810);
            v18 = swift_allocObject();
            v67 = xmmword_1007A5CF0;
            *(v18 + 16) = xmmword_1007A5CF0;
            *(v18 + 32) = v5;
            v19 = v5;
            v20 = sub_100751044();
            sub_100750544();
            v22 = v21;

            v23 = v16 - v22;
            [v68 bounds];
            MaxY = CGRectGetMaxY(v71);
            [v68 safeAreaInsets];
            v26 = MaxY - v25 - v15;
            v27 = swift_allocObject();
            *(v27 + 16) = xmmword_1007A5CF0;
            *(v27 + 32) = v19;
            v28 = v19;
            v29 = sub_100751044();
            sub_100750544();
            v31 = v30;

            v7 = &selRef_initWithTitle_style_target_action_;
            [v9 setFrame:{v23, v26 - v31, v13, v15}];

            v8 = &stru_1008F2000;
            [v68 bringSubviewToFront:v9];
          }

          v32 = *(v0 + 32);
          if (v32)
          {
            v33 = v32;
            [v68 bounds];
            [v33 sizeThatFits:{v34, v35}];
            v37 = v36;
            v39 = v38;
            v40 = *(v0 + 24);
            if (v40)
            {
              v41 = v40;
              [v41 frame];
              v42 = CGRectGetMinX(v72) - v37;
              if (qword_100921720 != -1)
              {
                swift_once();
              }

              v43 = sub_100750B04();
              sub_10000D0FC(v43, qword_1009820E0);
              sub_100751034();
              sub_10000C518(&unk_1009231A0, qword_1007A5810);
              v44 = swift_allocObject();
              *(v44 + 16) = xmmword_1007A5CF0;
              *(v44 + 32) = v5;
              v45 = v5;
              v46 = sub_100751044();
              sub_100750544();
              v48 = v47;
            }

            else
            {
              [v68 bounds];
              v42 = CGRectGetMaxX(v73) - v37;
              if (qword_100921730 != -1)
              {
                swift_once();
              }

              v49 = sub_100750B04();
              sub_10000D0FC(v49, qword_100982110);
              sub_100751034();
              sub_10000C518(&unk_1009231A0, qword_1007A5810);
              v50 = swift_allocObject();
              *(v50 + 16) = xmmword_1007A5CF0;
              *(v50 + 32) = v5;
              v51 = v5;
              v52 = sub_100751044();
              sub_100750544();
              v48 = v53;
            }

            v54 = v42 - v48;
            v55 = *(v0 + 24);
            if (v55)
            {
              v56 = v55;
              [v56 frame];
              MinY = CGRectGetMinY(v74);
            }

            else
            {
              [v68 bounds];
              v58 = CGRectGetMaxY(v75);
              [v68 safeAreaInsets];
              v60 = v58 - v59 - v39;
              if (qword_100921730 != -1)
              {
                swift_once();
              }

              v61 = sub_100750B04();
              sub_10000D0FC(v61, qword_100982110);
              sub_100751034();
              sub_10000C518(&unk_1009231A0, qword_1007A5810);
              v62 = swift_allocObject();
              *(v62 + 16) = xmmword_1007A5CF0;
              *(v62 + 32) = v5;
              v63 = v5;
              v64 = sub_100751044();
              sub_100750544();
              v66 = v65;

              MinY = v60 - v66;
            }

            [v33 v7[72]];

            [v68 v8[229].attr];
          }
        }
      }
    }
  }
}

void sub_1004BB7C8()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v13 = v1;
    v2 = [v13 layer];
    [v2 setShadowOffset:{0.0, 8.0}];

    v3 = [v13 layer];
    v4 = [objc_opt_self() blackColor];
    v5 = [v4 colorWithAlphaComponent:0.3];

    v6 = [v5 CGColor];
    [v3 setShadowColor:v6];

    v7 = [v13 layer];
    [v7 setShadowRadius:10.0];

    v8 = [v13 layer];
    LODWORD(v9) = 1.0;
    [v8 setShadowOpacity:v9];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong view];

      [v12 addSubview:v13];
    }
  }
}

void sub_1004BB9B4()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v13 = v1;
    v2 = [v13 layer];
    [v2 setShadowOffset:{0.0, 8.0}];

    v3 = [v13 layer];
    v4 = [objc_opt_self() blackColor];
    v5 = [v4 colorWithAlphaComponent:0.3];

    v6 = [v5 CGColor];
    [v3 setShadowColor:v6];

    v7 = [v13 layer];
    [v7 setShadowRadius:10.0];

    v8 = [v13 layer];
    LODWORD(v9) = 1.0;
    [v8 setShadowOpacity:v9];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong view];

      [v12 addSubview:v13];
    }
  }
}

void sub_1004BBBA0()
{
  v1 = sub_10000C518(&qword_100930828, &qword_1007B7688);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  v4 = sub_10000C518(&qword_10093A470, qword_1007C5530);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v8 = sub_100751504();
  __chkstk_darwin(v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v34 = Strong;
  v33 = [Strong view];
  if (v33)
  {
    v10 = [v34 collectionView];
    if (v10)
    {
      v11 = v10;
      if (*(v0 + 48) && (*(v0 + 72) & 1) == 0)
      {
        if ((*(v0 + 72) & 0x100) != 0)
        {
          v16 = *(v0 + 64) + -1.0;
        }

        else
        {
          v16 = *(v0 + 56);
        }

        [v10 frame];
        v13 = v19;
        v15 = v20;
        [v33 bounds];
        Width = CGRectGetWidth(v39);
        if (v16 >= Width)
        {
          v16 = Width;
        }

        [v33 bounds];
        MinX = CGRectGetMidX(v40) + v16 * -0.5;
      }

      else
      {
        [v10 frame];
        v13 = v12;
        v15 = v14;
        [v33 bounds];
        v16 = CGRectGetWidth(v37);
        [v33 bounds];
        MinX = CGRectGetMinX(v38);
      }

      [v11 setFrame:{MinX, v13, v16, v15}];

      v22 = *(v0 + 24);
      if (v22)
      {
        [v22 updateConfiguration];
      }

      if (*(v0 + 48) && (v23 = *(v0 + 74), v23 != 2) && (v23 & 1) != 0)
      {
        v24 = v11;
        sub_100753CE4();
        sub_1007514B4();
        sub_100753CF4();

        sub_100752854();
        sub_100752824();
        if (qword_100921CD8 != -1)
        {
          swift_once();
        }

        v25 = sub_10000D0FC(v4, qword_100982DB8);
        (*(v5 + 16))(v7, v25, v4);
        v26 = ASKDeviceTypePhone;
        v35[0] = ASKDeviceTypePhone;
        type metadata accessor for DeviceType(0);
        v27 = v26;
        sub_100752544();
      }

      else
      {
        sub_1007516F4();
        v28 = v11;
        sub_100753CE4();
        sub_1007514F4();
        sub_100753CF4();

        sub_100752854();
        sub_100752824();
        if (qword_100921CD8 != -1)
        {
          swift_once();
        }

        v29 = sub_10000D0FC(v4, qword_100982DB8);
        v35[3] = v4;
        v35[4] = sub_10002DDC8(&qword_10093A478, &qword_10093A470, qword_1007C5530, &protocol conformance descriptor for PreferenceKey<A>);
        v30 = sub_10000D134(v35);
        (*(v5 + 16))(v30, v29, v4);
        sub_100752834();

        sub_10000C620(v35);
      }

      sub_1004BA458();
      v31 = sub_10000C518(&qword_100930830, &unk_1007B7690);
      (*(*(v31 - 8) + 56))(v3, 1, 1, v31);
      sub_1004BA5E0(v3);
      sub_10000C8CC(v3, &qword_100930828, &qword_1007B7688);
      [v11 reloadData];

      return;
    }

    v18 = v33;
  }

  else
  {
    v18 = v34;
  }
}

double sub_1004BC150(uint64_t a1)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v4 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v4;
  *(v1 + 71) = *(a1 + 31);
  if (!*(a1 + 8) || (v6 = *(v1 + 40), v5 = *(v1 + 48), , !v5))
  {
    if (!v2)
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_1004BBBA0();
    goto LABEL_12;
  }

  if (!v2)
  {

    goto LABEL_11;
  }

  if (v6 == v3 && v2 == v5)
  {

    goto LABEL_12;
  }

  v7 = sub_100754754();

  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:

  return result;
}

double sub_1004BC224(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = *(a3 + 32);
  v8 = *(a3 + 33);
  v9 = *(a3 + 34);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v8)
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    v12[0] = v4;
    v12[1] = v3;
    v12[2] = v5;
    v12[3] = v6;
    v14 = v9;
    v13 = v11 | v7;

    sub_1004BC150(v12);
  }

  return result;
}

double sub_1004BC2D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C518(&qword_100932470, &unk_1007A5A90);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_100754214();
  v8 = sub_1007541F4();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    sub_100016B4C(v7, v4, &qword_100932470, &unk_1007A5A90);
    sub_100754224();
    sub_10000C8CC(v7, &qword_100932470, &unk_1007A5A90);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(Strong + 48))
      {
      }
    }

    sub_1007541C4();
    sub_100754224();
  }

  return result;
}

uint64_t sub_1004BC48C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1004BC500()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004BC538()
{

  return _swift_deallocObject(v0, 59, 7);
}

double sub_1004BC578(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  v5 = *(v1 + 57);
  v6 = *(v1 + 58);
  v8[0] = *(v1 + 24);
  v8[1] = v3;
  v9 = *(v1 + 40);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  return sub_1004BC224(a1, v2, v8);
}

double sub_1004BC5D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1004BC5EC(void *a1, void *a2, char a3)
{
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 snapshotViewAfterScreenUpdates:0];

    if (v8)
    {
      v9 = [a1 tabBar];
      [v9 frame];
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
      x = v44.origin.x;
      v37 = v44.origin.x;
      v14 = CGRectGetHeight(v44);
      v15 = 0.0;
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v46 = CGRectOffset(v45, 0.0, v14);
      v35 = v46.origin.y;
      v36 = v46.origin.x;
      v33 = v46.size.height;
      v34 = v46.size.width;
      v16 = a3 & 1;
      if (a3)
      {
        v17 = y;
      }

      else
      {
        x = v46.origin.x;
        v17 = v46.origin.y;
      }

      if (a3)
      {
        v18 = width;
      }

      else
      {
        v18 = v46.size.width;
      }

      if (a3)
      {
        v19 = height;
      }

      else
      {
        v19 = v46.size.height;
      }

      if (a3)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (a3)
      {
        v15 = 1.0;
      }

      v21 = [objc_allocWithZone(UIView) initWithFrame:{x, v17, v18, v19}];
      [v21 setClipsToBounds:1];
      [v21 addSubview:v8];
      [v8 setAlpha:v15];
      [v21 bounds];
      MaxY = CGRectGetMaxY(v47);
      [v8 bounds];
      v23 = MaxY - CGRectGetHeight(v48);
      [v8 frame];
      [v8 setFrame:{0.0, v23}];
      [v9 setHidden:1];

      v24 = [a2 containerView];
      [v24 addSubview:v21];

      v25 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v20 curve:0 animations:0.233333333];
      v26 = swift_allocObject();
      *(v26 + 16) = v21;
      *(v26 + 24) = v16;
      *(v26 + 32) = v36;
      *(v26 + 40) = v35;
      *(v26 + 48) = v34;
      *(v26 + 56) = v33;
      *(v26 + 64) = v37;
      *(v26 + 72) = y;
      *(v26 + 80) = width;
      *(v26 + 88) = height;
      *(v26 + 96) = v8;
      v42 = sub_1004BCA30;
      v43 = v26;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_1000CF7B0;
      v41 = &unk_100878338;
      v27 = _Block_copy(&aBlock);
      v28 = v21;
      v29 = v8;

      [v25 addAnimations:v27];
      _Block_release(v27);
      v30 = swift_allocObject();
      *(v30 + 16) = v9;
      *(v30 + 24) = v16;
      v42 = sub_1004BCB2C;
      v43 = v30;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_1001A5B50;
      v41 = &unk_100878388;
      v31 = _Block_copy(&aBlock);
      v32 = v9;

      [v25 addCompletion:v31];
      _Block_release(v31);
      [v25 startAnimation];
    }
  }

  else
  {
    __break(1u);
  }
}