uint64_t BrickExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickExposureEvent.Model(0) + 48);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrickExposureEvent.Model.init(sectionData:linkData:brickData:pageData:mediaData:upSellData:suggestionData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v12 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v12;
  v13 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v13;
  v14 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v14;
  v15 = a2[6];
  v16 = a2[8];
  *(a9 + 224) = a2[7];
  *(a9 + 240) = v16;
  v17 = a2[2];
  v18 = a2[4];
  v19 = a2[5];
  *(a9 + 160) = a2[3];
  *(a9 + 176) = v18;
  v20 = a1[6];
  *(a9 + 192) = v19;
  *(a9 + 208) = v15;
  v21 = *a2;
  v22 = a2[1];
  *(a9 + 96) = v20;
  *(a9 + 112) = v21;
  v23 = *a3;
  v24 = a3[1];
  v25 = *(a3 + 4);
  v26 = a3[3];
  v27 = a3[4];
  v28 = *(a4 + 16);
  v29 = *(a4 + 24);
  v30 = *(a5 + 32);
  v31 = *(a6 + 16);
  v32 = *a7;
  v33 = *(a2 + 18);
  *(a9 + 128) = v22;
  *(a9 + 144) = v17;
  *(a9 + 256) = v33;
  *(a9 + 264) = v23;
  *(a9 + 272) = v24;
  *(a9 + 280) = v25;
  *(a9 + 288) = v26;
  *(a9 + 296) = v27;
  *(a9 + 304) = *a4;
  *(a9 + 320) = v28;
  *(a9 + 328) = v29;
  v34 = *(a5 + 16);
  *(a9 + 336) = *a5;
  *(a9 + 352) = v34;
  *(a9 + 368) = v30;
  *(a9 + 376) = *a6;
  *(a9 + 392) = v31;
  *(a9 + 400) = v32;
  v35 = type metadata accessor for BrickExposureEvent.Model(0);
  v36 = *(v35 + 44);
  v37 = sub_1E1150();
  (*(*(v37 - 8) + 32))(a9 + v36, a8, v37);
  v38 = *(v35 + 48);
  v39 = sub_1E11A0();
  v40 = *(*(v39 - 8) + 32);

  return v40(a9 + v38, a10, v39);
}

uint64_t sub_19D0FC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x446E6F6974636573;
    v6 = 0x7461446B63697262;
    if (a1 != 2)
    {
      v6 = 0x6174614465676170;
    }

    if (a1)
    {
      v5 = 0x617461446B6E696CLL;
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
    v1 = 0x6974736567677573;
    v2 = 0x746144746E657665;
    if (a1 != 7)
    {
      v2 = 0x74614464656D6974;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x746144616964656DLL;
    if (a1 != 4)
    {
      v3 = 0x61446C6C65537075;
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

uint64_t sub_19D244@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_19F5A4(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_19D26C(uint64_t a1)
{
  v2 = sub_19D974();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_19D2A8(uint64_t a1)
{
  v2 = sub_19D974();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BrickExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28D1A0, &qword_20A0C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v75 - v6;
  sub_48B8(a1, a1[3]);
  sub_19D974();
  sub_1E1E00();
  v8 = v2[4];
  v9 = v2[2];
  v115 = v2[3];
  v116 = v8;
  v10 = v2[4];
  v11 = v2[6];
  v117 = v2[5];
  v118 = v11;
  v12 = *v2;
  v13 = v2[2];
  v113 = v2[1];
  v114 = v13;
  v14 = *v2;
  v109 = v10;
  v110 = v117;
  v111 = v2[6];
  v112 = v14;
  v105 = v12;
  v106 = v113;
  v107 = v9;
  v108 = v115;
  v104 = 0;
  sub_274D4(&v112, &v94);
  sub_18544();
  v15 = v119;
  sub_1E1CF0();
  if (v15)
  {
    v98 = v109;
    v99 = v110;
    v100 = v111;
    v94 = v105;
    v95 = v106;
    v96 = v107;
    v97 = v108;
    sub_28354(&v94);
  }

  else
  {
    v93[4] = v109;
    v93[5] = v110;
    v93[6] = v111;
    v93[0] = v105;
    v93[1] = v106;
    v93[2] = v107;
    v93[3] = v108;
    sub_28354(v93);
    v17 = v2[14];
    v18 = v2[12];
    v100 = v2[13];
    v101 = v17;
    v19 = v2[14];
    v102 = v2[15];
    v20 = v2[10];
    v21 = v2[8];
    v96 = v2[9];
    v97 = v20;
    v22 = v2[10];
    v23 = v2[12];
    v98 = v2[11];
    v99 = v23;
    v24 = v2[8];
    v94 = v2[7];
    v95 = v24;
    v89 = v100;
    v90 = v19;
    v91 = v2[15];
    v85 = v96;
    v86 = v22;
    v87 = v98;
    v88 = v18;
    v103 = *(v2 + 32);
    v92 = *(v2 + 32);
    v83 = v94;
    v84 = v21;
    v82 = 1;
    sub_275C4(&v94, v80);
    sub_18630();
    sub_1E1CF0();
    v80[7] = v90;
    v80[8] = v91;
    v80[2] = v85;
    v80[3] = v86;
    v80[4] = v87;
    v81 = v92;
    v80[5] = v88;
    v80[6] = v89;
    v80[0] = v83;
    v80[1] = v84;
    sub_283A8(v80);
    v25 = *(v2 + 34);
    v26 = *(v2 + 70);
    v27 = *(v2 + 36);
    v28 = *(v2 + 37);
    *v77 = *(v2 + 33);
    *&v77[8] = v25;
    *&v77[16] = v26;
    v78 = v27;
    v79 = v28;
    v76 = 2;
    sub_B526C();

    sub_1E1CF0();
    v29 = *&v77[8];
    v79, v30, v31, v32, v33, v34, v35, v36;
    v29, v37, v38, v39, v40, v41, v42, v43;
    v44 = *(v2 + 41);
    *v77 = *(v2 + 38);
    *&v77[8] = *(v2 + 312);
    v78 = v44;
    v76 = 3;
    sub_18598();

    sub_1E1CF0();
    v45 = *&v77[8];
    v78, v46, v47, v48, v49, v50, v51, v52;
    v45, v53, v54, v55, v56, v57, v58, v59;
    v60 = *(v2 + 43);
    v61 = *(v2 + 44);
    v62 = *(v2 + 45);
    v63 = *(v2 + 92);
    *v77 = *(v2 + 42);
    *&v77[8] = v60;
    *&v77[16] = v61;
    v78 = v62;
    LODWORD(v79) = v63;
    v76 = 4;
    sub_2EB50(*v77, v60, v61, v62);
    sub_16778();
    sub_1E1C80();
    sub_2F7F0(*v77, *&v77[8], *&v77[16], v78, v79, v64, v65, v66);
    v67 = *(v2 + 49);
    *v77 = *(v2 + 376);
    *&v77[16] = v67;
    v76 = 5;
    sub_28450();

    sub_1E1C80();
    *&v77[16], v68, v69, v70, v71, v72, v73, v74;
    v77[0] = *(v2 + 400);
    v76 = 6;
    sub_284F8();
    sub_1E1C80();
    v119 = type metadata accessor for BrickExposureEvent.Model(0);
    v77[0] = 7;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v77[0] = 8;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_19D974()
{
  result = qword_28D1A8;
  if (!qword_28D1A8)
  {
    result = swift_getWitnessTable(byte_20A2DC, &type metadata for BrickExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D1A8);
  }

  return result;
}

void BrickExposureEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v53 = sub_1E11A0();
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1150();
  v54 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_3D68(&qword_28D1B0, &qword_20A0D0);
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v8 = &v48 - v7;
  v9 = type metadata accessor for BrickExposureEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v58 = a1;
  sub_48B8(a1, v12);
  sub_19D974();
  v56 = v8;
  v13 = v82;
  sub_1E1DF0();
  if (v13)
  {
    sub_4E48(v58, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = v6;
    v22 = v55;
    v49 = v9;
    v82 = v4;
    v64 = 0;
    sub_18EFC();
    sub_1E1C20();
    v23 = v70;
    v24 = v71;
    *(v11 + 4) = v69;
    *(v11 + 5) = v23;
    *(v11 + 6) = v24;
    v25 = v66;
    *v11 = v65;
    *(v11 + 1) = v25;
    v26 = v68;
    *(v11 + 2) = v67;
    *(v11 + 3) = v26;
    v63 = 1;
    sub_18FA4();
    sub_1E1C20();
    v27 = v79;
    *(v11 + 13) = v78;
    *(v11 + 14) = v27;
    *(v11 + 15) = v80;
    *(v11 + 32) = v81;
    v28 = v75;
    *(v11 + 9) = v74;
    *(v11 + 10) = v28;
    v29 = v77;
    *(v11 + 11) = v76;
    *(v11 + 12) = v29;
    v30 = v73;
    *(v11 + 7) = v72;
    *(v11 + 8) = v30;
    v59 = 2;
    sub_B5C0C();
    sub_1E1C20();
    v31 = *(&v60 + 1);
    v32 = v61;
    v33 = *(&v61 + 1);
    v34 = v62;
    *(v11 + 33) = v60;
    *(v11 + 34) = v31;
    *(v11 + 70) = v32;
    *(v11 + 36) = v33;
    *(v11 + 37) = v34;
    v59 = 3;
    sub_18F50();
    sub_1E1C20();
    v35 = v61;
    *(v11 + 19) = v60;
    *(v11 + 20) = v35;
    v59 = 4;
    sub_16720();
    sub_1E1BB0();
    v36 = v62;
    v37 = v61;
    *(v11 + 21) = v60;
    *(v11 + 22) = v37;
    *(v11 + 92) = v36;
    v59 = 5;
    sub_28EF4();
    sub_1E1BB0();
    v38 = v61;
    *(v11 + 376) = v60;
    *(v11 + 49) = v38;
    v59 = 6;
    sub_28F9C();
    sub_1E1BB0();
    v11[400] = v60;
    LOBYTE(v60) = 7;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v54 + 32))(&v11[*(v49 + 44)], v21, v82);
    LOBYTE(v60) = 8;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v40 = v52;
    v39 = v53;
    sub_1E1C20();
    (*(v22 + 8))(v56, v57);
    (*(v50 + 32))(&v11[*(v49 + 48)], v40, v39);
    sub_19E278(v11, v51);
    sub_4E48(v58, v41, v42, v43, v44, v45, v46, v47);
    sub_19E2DC(v11);
  }
}

uint64_t sub_19E278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrickExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19E2DC(uint64_t a1)
{
  v2 = type metadata accessor for BrickExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19E3D8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_283E30, &qword_20A0C0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = enum case for EventProperty.optional<A>(_:);
  v14 = sub_3D68(&qword_27E468, &qword_1E5F70);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v16 - 8) + 104))(a2 + v15, v13, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v18 - 8) + 104))(a2 + v17, v13, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v23 = *(*(v22 - 8) + 104);

  return v23(a2 + v21, v4, v22);
}

uint64_t sub_19E6EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_18:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_17:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_18;
  }

  v14 = sub_3D68(&qword_283E30, &qword_20A0C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_17;
  }

  v15 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_17;
  }

  v16 = sub_3D68(&qword_27E468, &qword_1E5F70);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_17;
  }

  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_17;
  }

  v18 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_17;
  }

  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_17;
  }

  v21 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v22 = *(*(v21 - 8) + 48);
  v23 = a1 + a3[12];

  return v22(v23, a2, v21);
}

uint64_t sub_19EA5C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_18:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_17:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_18;
  }

  v16 = sub_3D68(&qword_283E30, &qword_20A0C0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_17;
  }

  v17 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_17;
  }

  v18 = sub_3D68(&qword_27E468, &qword_1E5F70);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_17;
  }

  v19 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_17;
  }

  v20 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_17;
  }

  v21 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_17;
  }

  v23 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v24 = *(*(v23 - 8) + 56);
  v25 = a1 + a4[12];

  return v24(v25, a2, a2, v23);
}

void sub_19EDC4(uint64_t a1)
{
  sub_19F078(319, &qword_27E578, sub_18EFC, sub_18544, &type metadata for SectionData);
  if (v1 <= 0x3F)
  {
    sub_19F078(319, &unk_27E588, sub_18FA4, sub_18630, &type metadata for LinkData);
    if (v2 <= 0x3F)
    {
      sub_19F078(319, &qword_283EF8, sub_B5C0C, sub_B526C, &type metadata for BrickData);
      if (v3 <= 0x3F)
      {
        sub_19F078(319, &qword_27E580, sub_18F50, sub_18598, &type metadata for PageData);
        if (v4 <= 0x3F)
        {
          sub_19F078(319, &qword_27E568, sub_16720, sub_16778, &type metadata for MediaData);
          if (v5 <= 0x3F)
          {
            sub_19F078(319, &qword_27EAE8, sub_28EF4, sub_28450, &type metadata for UpSellData);
            if (v6 <= 0x3F)
            {
              sub_19F078(319, &unk_27EAF8, sub_28F9C, sub_284F8, &type metadata for SuggestionData);
              if (v7 <= 0x3F)
              {
                sub_5684(319);
                if (v8 <= 0x3F)
                {
                  sub_5750(319);
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

void sub_19F078(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_19F108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_19F240(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_19F364(uint64_t a1)
{
  sub_19FE0(319, &qword_27F028, &type metadata for MediaData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_27EBC8, &type metadata for UpSellData);
    if (v2 <= 0x3F)
    {
      sub_19FE0(319, &qword_27EBD8, &type metadata for SuggestionData);
      if (v3 <= 0x3F)
      {
        sub_1E1150();
        if (v4 <= 0x3F)
        {
          sub_1E11A0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_19F4A0()
{
  result = qword_28D318;
  if (!qword_28D318)
  {
    result = swift_getWitnessTable(byte_20A2B4, &type metadata for BrickExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D318);
  }

  return result;
}

unint64_t sub_19F4F8()
{
  result = qword_28D320;
  if (!qword_28D320)
  {
    result = swift_getWitnessTable(byte_20A224, &type metadata for BrickExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D320);
  }

  return result;
}

unint64_t sub_19F550()
{
  result = qword_28D328;
  if (!qword_28D328)
  {
    result = swift_getWitnessTable(byte_20A24C, &type metadata for BrickExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D328);
  }

  return result;
}

uint64_t sub_19F5A4(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000617461;
  v11 = a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x7461446B63697262 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0x6174614465676170 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else if (a1 == 0x746144616964656DLL && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 4;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 5;
  }

  else
  {
    v13 = 0xEE00617461446E6FLL;
    if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 6;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 7;
    }

    else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v13, a3, a4, a5, a6, a7, a8;
      return 8;
    }

    else
    {
      v14 = sub_1E1D30();
      a2, v15, v16, v17, v18, v19, v20, v21;
      if (v14)
      {
        return 8;
      }

      else
      {
        return 9;
      }
    }
  }
}

void sub_19F8C0(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x65707954626174 && a2 == 0xE700000000000000)
  {
    a2, a2, a1, a3, a4, a5, a6, a7;
    v19 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a8 = v19 & 1;
}

uint64_t sub_19F948(uint64_t a1)
{
  v2 = sub_19FB0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_19F984(uint64_t a1)
{
  v2 = sub_19FB0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TabData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28D330, &qword_20A330);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_19FB0C();
  sub_1E1E00();
  v10 = v7;
  sub_19FB60();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_19FB0C()
{
  result = qword_28D338;
  if (!qword_28D338)
  {
    result = swift_getWitnessTable(aU1, &type metadata for TabData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D338);
  }

  return result;
}

unint64_t sub_19FB60()
{
  result = qword_28D340;
  if (!qword_28D340)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabType, &type metadata for TabType, v0, v1);
    atomic_store(result, &qword_28D340);
  }

  return result;
}

void TabData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28D348, &qword_20A338);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_19FB0C();
  sub_1E1DF0();
  if (!v2)
  {
    sub_19FD20();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_19FD20()
{
  result = qword_28D350;
  if (!qword_28D350)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabType, &type metadata for TabType, v0, v1);
    atomic_store(result, &qword_28D350);
  }

  return result;
}

unint64_t sub_19FD78()
{
  result = qword_28D358;
  if (!qword_28D358)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabData, &type metadata for TabData, v0, v1);
    atomic_store(result, &qword_28D358);
  }

  return result;
}

unint64_t sub_19FDD0()
{
  result = qword_28D360;
  if (!qword_28D360)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabData, &type metadata for TabData, v0, v1);
    atomic_store(result, &qword_28D360);
  }

  return result;
}

unint64_t sub_19FE78()
{
  result = qword_28D368;
  if (!qword_28D368)
  {
    result = swift_getWitnessTable(byte_20A4DC, &type metadata for TabData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D368);
  }

  return result;
}

unint64_t sub_19FED0()
{
  result = qword_28D370;
  if (!qword_28D370)
  {
    result = swift_getWitnessTable(byte_20A44C, &type metadata for TabData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D370);
  }

  return result;
}

unint64_t sub_19FF28()
{
  result = qword_28D378;
  if (!qword_28D378)
  {
    result = swift_getWitnessTable(byte_20A474, &type metadata for TabData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D378);
  }

  return result;
}

BookAnalytics::SortType_optional __swiftcall SortType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261B40;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 5;
  if (v5 < 5)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t SortType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x656C746974;
  v4 = 0x726F68747561;
  if (v1 != 3)
  {
    v4 = 0x6C61756E616DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746E65636572;
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

unint64_t sub_1A0068()
{
  result = qword_28D380;
  if (!qword_28D380)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SortType, &type metadata for SortType, v0, v1);
    atomic_store(result, &qword_28D380);
  }

  return result;
}

Swift::Int sub_1A00BC()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE700000000000000;
  v3 = 0xE500000000000000;
  if (v1 != 2)
  {
    v3 = 0xE600000000000000;
  }

  if (v1)
  {
    v2 = 0xE600000000000000;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_1A0190(uint64_t a1)
{
  v2 = 0xE700000000000000;
  v3 = 0xE500000000000000;
  if (*v1 != 2)
  {
    v3 = 0xE600000000000000;
  }

  if (*v1)
  {
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1E17D0();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

Swift::Int sub_1A0250(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  if (v2 != 2)
  {
    v4 = 0xE600000000000000;
  }

  if (v2)
  {
    v3 = 0xE600000000000000;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  sub_1E17D0();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1E1DE0();
}

void sub_1A032C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE500000000000000;
  v6 = 0x656C746974;
  v7 = 0x726F68747561;
  if (v2 != 3)
  {
    v7 = 0x6C61756E616DLL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x746E65636572;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_1A047C()
{
  result = qword_28D388;
  if (!qword_28D388)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SortType, &type metadata for SortType, v0, v1);
    atomic_store(result, &qword_28D388);
  }

  return result;
}

uint64_t LibraryViewEvent.libraryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_2806F0, &qword_1EA9B0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LibraryViewEvent.libraryData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_2806F0, &qword_1EA9B0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LibraryViewEvent.libraryDisplayData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryViewEvent(0) + 20);
  v4 = sub_3D68(&qword_28D3C0, &qword_20A668);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LibraryViewEvent.libraryDisplayData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LibraryViewEvent(0) + 20);
  v4 = sub_3D68(&qword_28D3C0, &qword_20A668);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LibraryViewEvent.librarySortData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryViewEvent(0) + 24);
  v4 = sub_3D68(&qword_28D3C8, &qword_20A670);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LibraryViewEvent.librarySortData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LibraryViewEvent(0) + 24);
  v4 = sub_3D68(&qword_28D3C8, &qword_20A670);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LibraryViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryViewEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LibraryViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LibraryViewEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LibraryViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LibraryViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LibraryViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LibraryViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_2806F0, &qword_1EA9B0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for LibraryViewEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_28D3C0, &qword_20A668);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_28D3C8, &qword_20A670);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t LibraryViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryViewEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LibraryViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryViewEvent.Model(0) + 32);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LibraryViewEvent.Model.init(libraryData:libraryDisplayData:librarySortData:eventData:timedData:)@<X0>(void *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v10 = *a3;
  *a6 = *a1;
  *(a6 + 8) = v9;
  *(a6 + 9) = v10;
  v11 = type metadata accessor for LibraryViewEvent.Model(0);
  v12 = *(v11 + 28);
  v13 = sub_1E1150();
  (*(*(v13 - 8) + 32))(a6 + v12, a4, v13);
  v14 = *(v11 + 32);
  v15 = sub_1E11A0();
  v16 = *(*(v15 - 8) + 32);

  return v16(a6 + v14, a5, v15);
}

unint64_t sub_1A0FD0()
{
  v1 = *v0;
  v2 = 0x447972617262696CLL;
  v3 = 0x537972617262696CLL;
  v4 = 0x746144746E657665;
  if (v1 != 3)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_1A108C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1A27B4(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1A10B4(uint64_t a1)
{
  v2 = sub_1A1414();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A10F0(uint64_t a1)
{
  v2 = sub_1A1414();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LibraryViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28D3D0, &qword_20A678);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-v7];
  sub_48B8(a1, a1[3]);
  sub_1A1414();
  sub_1E1E00();
  v18 = *v3;
  v17[7] = 0;
  sub_598A4();

  sub_1E1CF0();
  if (v2)
  {
    v18, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    v18, v9, v10, v11, v12, v13, v14, v15;
    v17[6] = *(v3 + 8);
    v17[5] = 1;
    sub_64280();
    sub_1E1CF0();
    v17[4] = *(v3 + 9);
    v17[3] = 2;
    sub_E1308();
    sub_1E1C80();
    type metadata accessor for LibraryViewEvent.Model(0);
    v17[2] = 3;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v17[1] = 4;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A1414()
{
  result = qword_28D3D8;
  if (!qword_28D3D8)
  {
    result = swift_getWitnessTable(byte_20A85C, &type metadata for LibraryViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D3D8);
  }

  return result;
}

void LibraryViewEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v41 = sub_1E11A0();
  v37 = *(v41 - 8);
  __chkstk_darwin(v41);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_3D68(&qword_28D3E0, &qword_20A680);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v9 = &v35 - v8;
  v10 = type metadata accessor for LibraryViewEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v45 = a1;
  sub_48B8(a1, v13);
  sub_1A1414();
  v43 = v9;
  v14 = v44;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(v45, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v44 = v7;
    v36 = v4;
    v22 = v41;
    v23 = v12;
    v24 = v39;
    v25 = v40;
    v52 = 0;
    sub_59EE8();
    v26 = v42;
    sub_1E1C20();
    *v23 = v53;
    v50 = 1;
    sub_64228();
    sub_1E1C20();
    *(v23 + 8) = v51;
    v48 = 2;
    sub_E12B0();
    sub_1E1BB0();
    *(v23 + 9) = v49;
    v47 = 3;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v35 = v5;
    sub_1E1C20();
    (*(v25 + 32))(v23 + *(v10 + 28), v44, v35);
    v46 = 4;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v27 = v36;
    sub_1E1C20();
    (*(v24 + 8))(v43, v26);
    (*(v37 + 32))(v23 + *(v10 + 32), v27, v22);
    sub_1A19BC(v23, v38);
    sub_4E48(v45, v28, v29, v30, v31, v32, v33, v34);
    sub_1A1A20(v23);
  }
}

uint64_t sub_1A19BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A1A20(uint64_t a1)
{
  v2 = type metadata accessor for LibraryViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A1B1C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_2806F0, &qword_1EA9B0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_28D3C0, &qword_20A668);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_28D3C8, &qword_20A670);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_1A1D00(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_2806F0, &qword_1EA9B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_28D3C0, &qword_20A668);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_3D68(&qword_28D3C8, &qword_20A670);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_1A1F20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_2806F0, &qword_1EA9B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_28D3C0, &qword_20A668);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_3D68(&qword_28D3C8, &qword_20A670);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_1A2138(uint64_t a1)
{
  sub_1A22AC(319, &qword_2807A0, sub_59EE8, sub_598A4, &type metadata for LibraryData);
  if (v1 <= 0x3F)
  {
    sub_1A22AC(319, &qword_28D450, sub_64228, sub_64280, &type metadata for LibraryDisplayData);
    if (v2 <= 0x3F)
    {
      sub_1A22AC(319, &unk_28D458, sub_E12B0, sub_E1308, &type metadata for LibrarySortData);
      if (v3 <= 0x3F)
      {
        sub_5684(319);
        if (v4 <= 0x3F)
        {
          sub_5750(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A22AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A233C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1A2474(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1A2598(uint64_t a1)
{
  sub_1A264C();
  if (v1 <= 0x3F)
  {
    sub_1E1150();
    if (v2 <= 0x3F)
    {
      sub_1E11A0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A264C()
{
  if (!qword_28D500)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_28D500);
    }
  }
}

unint64_t sub_1A26B0()
{
  result = qword_28D540;
  if (!qword_28D540)
  {
    result = swift_getWitnessTable(a5_7, &type metadata for LibraryViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D540);
  }

  return result;
}

unint64_t sub_1A2708()
{
  result = qword_28D548;
  if (!qword_28D548)
  {
    result = swift_getWitnessTable(asc_20A7A4, &type metadata for LibraryViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D548);
  }

  return result;
}

unint64_t sub_1A2760()
{
  result = qword_28D550;
  if (!qword_28D550)
  {
    result = swift_getWitnessTable(aE_18, &type metadata for LibraryViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D550);
  }

  return result;
}

uint64_t sub_1A27B4(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000617461;
  v11 = a1 == 0x447972617262696CLL && a2 == 0xEB00000000617461;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0x80000000002173B0;
    if (a1 == 0xD000000000000012 && 0x80000000002173B0 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0xEF6174614474726FLL;
      if (a1 == 0x537972617262696CLL && a2 == 0xEF6174614474726FLL || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
      {
        0xE900000000000061, v14, a3, a4, a5, a6, a7, a8;
        return 4;
      }

      else
      {
        v15 = sub_1E1D30();
        a2, v16, v17, v18, v19, v20, v21, v22;
        if (v15)
        {
          return 4;
        }

        else
        {
          return 5;
        }
      }
    }
  }
}

void __swiftcall SearchSelectionData.init(selectedResultString:selectionType:selectedResultSection:selectedResultPosition:resultsReturnedCount:)(BookAnalytics::SearchSelectionData *__return_ptr retstr, Swift::String selectedResultString, BookAnalytics::SelectionType selectionType, BookAnalytics::SelectedResultSection selectedResultSection, Swift::Int32 selectedResultPosition, Swift::String resultsReturnedCount)
{
  v6 = *selectionType;
  v7 = *selectedResultSection;
  retstr->selectedResultString = selectedResultString;
  retstr->selectionType = v6;
  retstr->selectedResultSection = v7;
  retstr->selectedResultPosition = selectedResultPosition;
  retstr->resultsReturnedCount = resultsReturnedCount;
}

unint64_t sub_1A29BC()
{
  v1 = *v0;
  v2 = 0x6F697463656C6573;
  v3 = 0xD000000000000016;
  if (v1 != 3)
  {
    v3 = 0xD000000000000014;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_1A2A74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1A34EC(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1A2A9C(uint64_t a1)
{
  v2 = sub_1A3218();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A2AD8(uint64_t a1)
{
  v2 = sub_1A3218();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchSelectionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28D558, &qword_20A8B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;
  v7 = *(v1 + 16);
  v14 = *(v1 + 17);
  v15 = v7;
  v13 = *(v1 + 20);
  v8 = *(v1 + 24);
  v12[1] = *(v1 + 32);
  v12[2] = v8;
  sub_48B8(a1, a1[3]);
  sub_1A3218();
  sub_1E1E00();
  v23 = 0;
  v9 = v16;
  sub_1E1CB0();
  if (!v9)
  {
    v10 = v14;
    v22 = v15;
    v21 = 1;
    sub_1A326C();
    sub_1E1CF0();
    v20 = v10;
    v19 = 2;
    sub_1A32C0();
    sub_1E1CF0();
    v18 = 3;
    sub_1E1D00();
    v17 = 4;
    sub_1E1CB0();
  }

  return (*(v4 + 8))(v6, v3);
}

void SearchSelectionData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28D578, &qword_20A8B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - v7;
  sub_48B8(a1, a1[3]);
  sub_1A3218();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v57 = 0;
    v16 = sub_1E1BE0();
    v18 = v17;
    v50 = v16;
    v55 = 1;
    sub_1A3314();
    sub_1E1C20();
    v19 = v56;
    v53 = 2;
    sub_1A3368();
    sub_1E1C20();
    v49 = v19;
    LOBYTE(v19) = v54;
    v52 = 3;
    v48 = sub_1E1C30();
    v51 = 4;
    v20 = sub_1E1BE0();
    v29 = v28;
    v30 = *(v6 + 8);
    v47 = v20;
    v30(v8, v5);
    *a2 = v50;
    *(a2 + 8) = v18;
    v31 = v48;
    *(a2 + 16) = v49;
    *(a2 + 17) = v19;
    *(a2 + 20) = v31;
    *(a2 + 24) = v47;
    *(a2 + 32) = v29;

    sub_4E48(a1, v32, v33, v34, v35, v36, v37, v38);
    v29, v39, v40, v41, v42, v43, v44, v45;
    v18, v21, v22, v23, v24, v25, v26, v27;
  }
}

uint64_t _s13BookAnalytics19SearchSelectionDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v9 = a1[1];
  v10 = *(a1 + 16);
  v11 = *(a1 + 17);
  v12 = *(a1 + 5);
  v13 = a1[4];
  v58 = a1[3];
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 17);
  v17 = *(a2 + 20);
  v19 = *(a2 + 24);
  v18 = *(a2 + 32);
  if ((*a1 != *a2 || v9 != v14) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  v20 = 0xE400000000000000;
  v21 = 1802465122;
  if (v10 != 1)
  {
    v21 = 0x6F6F626F69647561;
    v20 = 0xE90000000000006BLL;
  }

  if (v10)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0x6E776F6E6B6E75;
  }

  if (v10)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0xE700000000000000;
  }

  v24 = 0xE400000000000000;
  v25 = 1802465122;
  if (v15 != 1)
  {
    v25 = 0x6F6F626F69647561;
    v24 = 0xE90000000000006BLL;
  }

  if (v15)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0x6E776F6E6B6E75;
  }

  if (v15)
  {
    v27 = v24;
  }

  else
  {
    v27 = 0xE700000000000000;
  }

  if (v22 != v26 || v23 != v27)
  {
    v41 = sub_1E1D30();
    v23, v42, v43, v44, v45, v46, v47, v48;
    v27, v49, v50, v51, v52, v53, v54, v55;
    if (v41)
    {
      goto LABEL_24;
    }

    return 0;
  }

  v23, v9, v26, v14, a5, a6, a7, a8;
  v27, v28, v29, v30, v31, v32, v33, v34;
LABEL_24:
  v56 = sub_22A04(v11, v16, v35, v36, v37, v38, v39, v40);
  result = 0;
  if ((v56 & 1) != 0 && v12 == v17)
  {
    if (v58 == v19 && v13 == v18)
    {
      return 1;
    }

    else
    {

      return sub_1E1D30();
    }
  }

  return result;
}

unint64_t sub_1A3218()
{
  result = qword_28D560;
  if (!qword_28D560)
  {
    result = swift_getWitnessTable(byte_20AAA8, &type metadata for SearchSelectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D560);
  }

  return result;
}

unint64_t sub_1A326C()
{
  result = qword_28D568;
  if (!qword_28D568)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SelectionType, &type metadata for SelectionType, v0, v1);
    atomic_store(result, &qword_28D568);
  }

  return result;
}

unint64_t sub_1A32C0()
{
  result = qword_28D570;
  if (!qword_28D570)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SelectedResultSection, &type metadata for SelectedResultSection, v0, v1);
    atomic_store(result, &qword_28D570);
  }

  return result;
}

unint64_t sub_1A3314()
{
  result = qword_28D580;
  if (!qword_28D580)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SelectionType, &type metadata for SelectionType, v0, v1);
    atomic_store(result, &qword_28D580);
  }

  return result;
}

unint64_t sub_1A3368()
{
  result = qword_28D588;
  if (!qword_28D588)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SelectedResultSection, &type metadata for SelectedResultSection, v0, v1);
    atomic_store(result, &qword_28D588);
  }

  return result;
}

unint64_t sub_1A33E8()
{
  result = qword_28D590;
  if (!qword_28D590)
  {
    result = swift_getWitnessTable(byte_20AA80, &type metadata for SearchSelectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D590);
  }

  return result;
}

unint64_t sub_1A3440()
{
  result = qword_28D598;
  if (!qword_28D598)
  {
    result = swift_getWitnessTable(a1_10, &type metadata for SearchSelectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D598);
  }

  return result;
}

unint64_t sub_1A3498()
{
  result = qword_28D5A0;
  if (!qword_28D5A0)
  {
    result = swift_getWitnessTable(byte_20AA18, &type metadata for SearchSelectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D5A0);
  }

  return result;
}

uint64_t sub_1A34EC(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x80000000002173D0;
  if (a1 == 0xD000000000000014 && 0x80000000002173D0 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xED0000657079546ELL;
    if (a1 == 0x6F697463656C6573 && a2 == 0xED0000657079546ELL || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x80000000002173F0;
      if (a1 == 0xD000000000000015 && 0x80000000002173F0 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v14 = 0x8000000000217410;
        if (a1 == 0xD000000000000016 && 0x8000000000217410 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else if (a1 == 0xD000000000000014 && 0x8000000000217430 == a2)
        {
          a2, 0x8000000000217430, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else
        {
          v15 = sub_1E1D30();
          a2, v16, v17, v18, v19, v20, v21, v22;
          if (v15)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t ClearSearchHistoryEvent.clearedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_28D5D8, &unk_20AB00);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ClearSearchHistoryEvent.clearedData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_28D5D8, &unk_20AB00);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ClearSearchHistoryEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClearSearchHistoryEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClearSearchHistoryEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClearSearchHistoryEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClearSearchHistoryEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_28D5D8, &unk_20AB00);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for ClearSearchHistoryEvent(0) + 20);
  v5 = enum case for EventProperty.required<A>(_:);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v7 = *(*(v6 - 8) + 104);

  return v7(a1 + v4, v5, v6);
}

uint64_t ClearSearchHistoryEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClearSearchHistoryEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClearSearchHistoryEvent.Model.init(clearedData:eventData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for ClearSearchHistoryEvent.Model(0) + 20);
  v6 = sub_1E1150();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_1A3BDC()
{
  if (*v0)
  {
    return 0x746144746E657665;
  }

  else
  {
    return 0x4464657261656C63;
  }
}

void sub_1A3C24(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0xEB00000000617461;
  v13 = a1 == 0x4464657261656C63 && a2 == 0xEB00000000617461;
  if (v13 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v14 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
    v14 = 1;
  }

  else
  {
    v15 = sub_1E1D30();
    a2, v16, v17, v18, v19, v20, v21, v22;
    if (v15)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  *a9 = v14;
}

uint64_t sub_1A3D0C(uint64_t a1)
{
  v2 = sub_1A3F40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A3D48(uint64_t a1)
{
  v2 = sub_1A3F40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ClearSearchHistoryEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28D5E0, &qword_20AB10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_48B8(a1, a1[3]);
  sub_1A3F40();
  sub_1E1E00();
  v10[15] = *v3;
  v10[14] = 0;
  sub_1A3F94();
  sub_1E1C80();
  if (!v2)
  {
    type metadata accessor for ClearSearchHistoryEvent.Model(0);
    v10[13] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A3F40()
{
  result = qword_28D5E8;
  if (!qword_28D5E8)
  {
    result = swift_getWitnessTable(byte_20ACD4, &type metadata for ClearSearchHistoryEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D5E8);
  }

  return result;
}

unint64_t sub_1A3F94()
{
  result = qword_28D5F0;
  if (!qword_28D5F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClearedData, &type metadata for ClearedData, v0, v1);
    atomic_store(result, &qword_28D5F0);
  }

  return result;
}

void ClearSearchHistoryEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1E1150();
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_3D68(&qword_28D5F8, &qword_20AB18);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v23 - v6;
  v8 = type metadata accessor for ClearSearchHistoryEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_1A3F40();
  sub_1E1DF0();
  if (!v2)
  {
    v18 = v10;
    v25 = v8;
    v19 = v28;
    v20 = v29;
    v32 = 0;
    sub_1A42E4();
    v21 = v30;
    sub_1E1BB0();
    v24 = v18;
    *v18 = v33;
    v31 = 1;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v23 = v5;
    sub_1E1C20();
    (*(v19 + 8))(v7, v21);
    v22 = v24;
    (*(v26 + 32))(&v24[*(v25 + 20)], v23, v20);
    sub_1A4338(v22, v27);
  }

  sub_4E48(a1, v11, v12, v13, v14, v15, v16, v17);
}

unint64_t sub_1A42E4()
{
  result = qword_28D600;
  if (!qword_28D600)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClearedData, &type metadata for ClearedData, v0, v1);
    atomic_store(result, &qword_28D600);
  }

  return result;
}

uint64_t sub_1A4338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClearSearchHistoryEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A443C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_28D5D8, &unk_20AB00);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a2 + v6, v7, v8);
}

uint64_t sub_1A4534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_28D5D8, &unk_20AB00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A4650(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_28D5D8, &unk_20AB00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1A4790(uint64_t a1)
{
  if (!qword_28D670)
  {
    sub_1A42E4();
    sub_1A3F94();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_28D670);
    }
  }
}

uint64_t sub_1A480C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 <= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 2;
    if (v4 >= 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1E1150();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1A48D0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A499C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1A4A2C()
{
  if (!qword_28D708)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_28D708);
    }
  }
}

unint64_t sub_1A4A90()
{
  result = qword_28D738;
  if (!qword_28D738)
  {
    result = swift_getWitnessTable(byte_20ACAC, &type metadata for ClearSearchHistoryEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D738);
  }

  return result;
}

unint64_t sub_1A4AE8()
{
  result = qword_28D740;
  if (!qword_28D740)
  {
    result = swift_getWitnessTable(byte_20AC1C, &type metadata for ClearSearchHistoryEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D740);
  }

  return result;
}

unint64_t sub_1A4B40()
{
  result = qword_28D748;
  if (!qword_28D748)
  {
    result = swift_getWitnessTable(byte_20AC44, &type metadata for ClearSearchHistoryEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D748);
  }

  return result;
}

void sub_1A4BB8(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x6E72755465676170 && a2 == 0xEC00000065707954)
  {
    a2, 0xEC00000065707954, a1, a3, a4, a5, a6, a7;
    v19 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a8 = v19 & 1;
}

uint64_t sub_1A4C44(uint64_t a1)
{
  v2 = sub_1A4FA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A4C80(uint64_t a1)
{
  v2 = sub_1A4FA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PageTurnFeatureData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28D750, &qword_20AD30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_1A4FA4();
  sub_1E1E00();
  v10 = v7;
  sub_1A4FF8();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

void PageTurnFeatureData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28D768, &qword_20AD38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_1A4FA4();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1A504C();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_1A4FA4()
{
  result = qword_28D758;
  if (!qword_28D758)
  {
    result = swift_getWitnessTable(aQ_16, &type metadata for PageTurnFeatureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D758);
  }

  return result;
}

unint64_t sub_1A4FF8()
{
  result = qword_28D760;
  if (!qword_28D760)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PageTurnType, &type metadata for PageTurnType, v0, v1);
    atomic_store(result, &qword_28D760);
  }

  return result;
}

unint64_t sub_1A504C()
{
  result = qword_28D770;
  if (!qword_28D770)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PageTurnType, &type metadata for PageTurnType, v0, v1);
    atomic_store(result, &qword_28D770);
  }

  return result;
}

unint64_t sub_1A50CC()
{
  result = qword_28D778;
  if (!qword_28D778)
  {
    result = swift_getWitnessTable(byte_20AEE0, &type metadata for PageTurnFeatureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D778);
  }

  return result;
}

unint64_t sub_1A5124()
{
  result = qword_28D780;
  if (!qword_28D780)
  {
    result = swift_getWitnessTable(byte_20AE50, &type metadata for PageTurnFeatureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D780);
  }

  return result;
}

unint64_t sub_1A517C()
{
  result = qword_28D788;
  if (!qword_28D788)
  {
    result = swift_getWitnessTable(byte_20AE78, &type metadata for PageTurnFeatureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D788);
  }

  return result;
}

uint64_t RedownloadAttemptEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadAttemptEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadAttemptEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadAttemptEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadAttemptEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadAttemptEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadAttemptEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadAttemptEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadAttemptEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadAttemptEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadAttemptEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadAttemptEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadAttemptEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RedownloadAttemptEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

uint64_t RedownloadAttemptEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadAttemptEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadAttemptEvent.Model.init(contentData:contentStoreData:sectionData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v7;
  v8 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v8;
  v9 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v9;
  v10 = *(a2 + 48);
  *(a5 + 128) = *(a2 + 32);
  *(a5 + 144) = v10;
  v11 = *(a2 + 16);
  *(a5 + 96) = *a2;
  *(a5 + 112) = v11;
  v12 = a3[3];
  *(a5 + 200) = a3[2];
  v13 = *a3;
  *(a5 + 184) = a3[1];
  *(a5 + 168) = v13;
  v14 = a3[5];
  *(a5 + 264) = a3[6];
  v15 = a3[4];
  *(a5 + 248) = v14;
  *(a5 + 232) = v15;
  *(a5 + 157) = *(a2 + 61);
  *(a5 + 216) = v12;
  v16 = *(type metadata accessor for RedownloadAttemptEvent.Model(0) + 28);
  v17 = sub_1E1150();
  v18 = *(*(v17 - 8) + 32);

  return v18(a5 + v16, a4, v17);
}

uint64_t sub_1A59C0(uint64_t a1)
{
  v2 = sub_1A5EB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A59FC(uint64_t a1)
{
  v2 = sub_1A5EB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RedownloadAttemptEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28D7C0, &qword_20AF60);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25[-v6];
  sub_48B8(a1, a1[3]);
  sub_1A5EB8();
  sub_1E1E00();
  v8 = *(v2 + 48);
  v9 = *(v2 + 16);
  v61 = *(v2 + 32);
  v62 = v8;
  v10 = *(v2 + 48);
  v11 = *(v2 + 80);
  v63 = *(v2 + 64);
  v64 = v11;
  v12 = *(v2 + 16);
  v60[0] = *v2;
  v60[1] = v12;
  v56 = v61;
  v57 = v10;
  v13 = *(v2 + 80);
  v58 = v63;
  v59 = v13;
  v54 = v60[0];
  v55 = v9;
  v53 = 0;
  sub_13A5C(v60, &v37);
  sub_143D0();
  v14 = v65;
  sub_1E1CF0();
  if (v14)
  {
    v39 = v56;
    v40 = v57;
    v41 = v58;
    v42 = v59;
    v37 = v54;
    v38 = v55;
    sub_14424(&v37);
  }

  else
  {
    v49[2] = v56;
    v49[3] = v57;
    v49[4] = v58;
    v49[5] = v59;
    v49[0] = v54;
    v49[1] = v55;
    sub_14424(v49);
    v16 = *(v2 + 112);
    v17 = *(v2 + 144);
    v51 = *(v2 + 128);
    *v52 = v17;
    v18 = *(v2 + 112);
    v50[0] = *(v2 + 96);
    v50[1] = v18;
    v46 = v16;
    v47 = v51;
    v48[0] = *(v2 + 144);
    *&v52[13] = *(v2 + 157);
    *(v48 + 13) = *(v2 + 157);
    v45 = v50[0];
    v44 = 1;
    sub_17AA4(v50, &v37, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    sub_1E1C80();
    v35[2] = v47;
    v36[0] = v48[0];
    *(v36 + 13) = *(v48 + 13);
    v35[0] = v45;
    v35[1] = v46;
    sub_18E48(v35, &qword_27FFF0, &unk_1E9C00);
    v19 = *(v2 + 216);
    v20 = *(v2 + 248);
    v41 = *(v2 + 232);
    v42 = v20;
    v43 = *(v2 + 264);
    v21 = *(v2 + 184);
    v37 = *(v2 + 168);
    v38 = v21;
    v39 = *(v2 + 200);
    v40 = v19;
    v22 = *(v2 + 216);
    v23 = *(v2 + 248);
    v32 = *(v2 + 232);
    v33 = v23;
    v34 = *(v2 + 264);
    v24 = *(v2 + 184);
    v28 = *(v2 + 168);
    v29 = v24;
    v30 = *(v2 + 200);
    v31 = v22;
    v27 = 2;
    sub_17AA4(&v37, v26, &qword_27E490, &qword_205F90);
    sub_18544();
    sub_1E1C80();
    v26[4] = v32;
    v26[5] = v33;
    v26[6] = v34;
    v26[0] = v28;
    v26[1] = v29;
    v26[2] = v30;
    v26[3] = v31;
    sub_18E48(v26, &qword_27E490, &qword_205F90);
    type metadata accessor for RedownloadAttemptEvent.Model(0);
    v25[15] = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1A5EB8()
{
  result = qword_28D7C8;
  if (!qword_28D7C8)
  {
    result = swift_getWitnessTable(aI_16, &type metadata for RedownloadAttemptEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D7C8);
  }

  return result;
}

void RedownloadAttemptEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v41 = sub_1E1150();
  v38 = *(v41 - 8);
  __chkstk_darwin(v41);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_3D68(&qword_28D7D0, &qword_20AF68);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v5 = type metadata accessor for RedownloadAttemptEvent.Model(0);
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v60 = a1;
  sub_48B8(a1, v8);
  sub_1A5EB8();
  v9 = v43;
  sub_1E1DF0();
  if (v9)
  {
    sub_4E48(v60, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    v37 = v5;
    v17 = v7;
    v43 = v4;
    v18 = v40;
    v19 = v41;
    v58 = 0;
    sub_14CB8();
    sub_1E1C20();
    v20 = v59[3];
    v21 = v17;
    *(v17 + 2) = v59[2];
    *(v17 + 3) = v20;
    v22 = v59[5];
    *(v17 + 4) = v59[4];
    *(v17 + 5) = v22;
    v23 = v59[1];
    *v17 = v59[0];
    *(v17 + 1) = v23;
    v57 = 1;
    sub_4FB64();
    sub_1E1BB0();
    v24 = v54;
    v25 = v56[0];
    *(v17 + 8) = v55;
    *(v17 + 9) = v25;
    *(v17 + 157) = *(v56 + 13);
    *(v17 + 6) = v53;
    *(v17 + 7) = v24;
    v45 = 2;
    sub_18EFC();
    sub_1E1BB0();
    v26 = v48;
    *(v17 + 216) = v49;
    v27 = v51;
    *(v17 + 232) = v50;
    *(v17 + 248) = v27;
    v28 = v47;
    *(v17 + 168) = v46;
    *(v17 + 184) = v28;
    *(v17 + 200) = v26;
    *(v17 + 264) = v52;
    v44 = 3;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v29 = v43;
    sub_1E1C20();
    (*(v18 + 8))(0, v42);
    (*(v38 + 32))(v21 + *(v37 + 28), v29, v19);
    sub_1A63F8(v21, v39);
    sub_4E48(v60, v30, v31, v32, v33, v34, v35, v36);
    sub_1A645C(v21);
  }
}

uint64_t sub_1A63F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedownloadAttemptEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A645C(uint64_t a1)
{
  v2 = type metadata accessor for RedownloadAttemptEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A656C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_1A6738(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1A6910(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A69D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1A6A88()
{
  result = qword_28D908;
  if (!qword_28D908)
  {
    result = swift_getWitnessTable(aA_27, &type metadata for RedownloadAttemptEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D908);
  }

  return result;
}

unint64_t sub_1A6AE0()
{
  result = qword_28D910;
  if (!qword_28D910)
  {
    result = swift_getWitnessTable(byte_20B078, &type metadata for RedownloadAttemptEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D910);
  }

  return result;
}

unint64_t sub_1A6B38()
{
  result = qword_28D918;
  if (!qword_28D918)
  {
    result = swift_getWitnessTable(byte_20B0A0, &type metadata for RedownloadAttemptEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D918);
  }

  return result;
}

uint64_t AuthorExposureEvent.authorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_28D950, &qword_20B180);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AuthorExposureEvent.authorData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_28D950, &qword_20B180);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AuthorExposureEvent.exposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AuthorExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27F4F8, &unk_210310);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AuthorExposureEvent.exposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthorExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27F4F8, &unk_210310);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AuthorExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AuthorExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AuthorExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthorExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AuthorExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AuthorExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AuthorExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthorExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AuthorExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AuthorExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AuthorExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthorExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AuthorExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_28D950, &qword_20B180);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AuthorExposureEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27F4F8, &unk_210310);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t AuthorExposureEvent.Model.authorData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t AuthorExposureEvent.Model.exposureData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v4 = v1[4];
  v8 = v1[3];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_17AA4(v7, &v6, &qword_27F500, &unk_210330);
}

uint64_t AuthorExposureEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 160);
  v20 = *(v1 + 176);
  v21 = v2;
  v4 = *(v1 + 192);
  v22 = *(v1 + 208);
  v5 = *(v1 + 128);
  v7 = *(v1 + 96);
  v16 = *(v1 + 112);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 128);
  v9 = *(v1 + 160);
  v18 = *(v1 + 144);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 96);
  v15[0] = *(v1 + 80);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 208);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 224);
  *(a1 + 144) = *(v1 + 224);
  *a1 = v12;
  *(a1 + 16) = v7;
  return sub_17AA4(v15, v14, &qword_27E4A0, &qword_1E8860);
}

uint64_t AuthorExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AuthorExposureEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AuthorExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AuthorExposureEvent.Model(0) + 32);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AuthorExposureEvent.Model.init(authorData:exposureData:linkData:eventData:timedData:)@<X0>(void *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a1[1];
  *a6 = *a1;
  *(a6 + 8) = v9;
  v10 = a2[1];
  *(a6 + 16) = *a2;
  *(a6 + 32) = v10;
  v11 = a2[3];
  *(a6 + 48) = a2[2];
  *(a6 + 64) = v11;
  v12 = *(a3 + 80);
  *(a6 + 144) = *(a3 + 64);
  *(a6 + 160) = v12;
  v13 = *(a3 + 48);
  *(a6 + 112) = *(a3 + 32);
  *(a6 + 128) = v13;
  *(a6 + 224) = *(a3 + 144);
  v14 = *(a3 + 128);
  *(a6 + 192) = *(a3 + 112);
  *(a6 + 208) = v14;
  *(a6 + 176) = *(a3 + 96);
  v15 = *(a3 + 16);
  *(a6 + 80) = *a3;
  *(a6 + 96) = v15;
  v16 = type metadata accessor for AuthorExposureEvent.Model(0);
  v17 = *(v16 + 28);
  v18 = sub_1E1150();
  (*(*(v18 - 8) + 32))(a6 + v17, a4, v18);
  v19 = *(v16 + 32);
  v20 = sub_1E11A0();
  v21 = *(*(v20 - 8) + 32);

  return v21(a6 + v19, a5, v20);
}

uint64_t sub_1A77BC()
{
  v1 = *v0;
  v2 = 0x6144726F68747561;
  v3 = 0x617461446B6E696CLL;
  v4 = 0x746144746E657665;
  if (v1 != 3)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657275736F707865;
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

uint64_t sub_1A786C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1A9370(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1A7894(uint64_t a1)
{
  v2 = sub_1A7DDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A78D0(uint64_t a1)
{
  v2 = sub_1A7DDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AuthorExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28D958, &qword_20B188);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  sub_48B8(a1, a1[3]);
  sub_1A7DDC();
  sub_1E1E00();
  v8 = v2[1];
  v63 = *v2;
  v64 = v8;
  v62 = 0;
  sub_4CBE4();

  v9 = v65;
  sub_1E1CF0();
  v64, v10, v11, v12, v13, v14, v15, v16;
  if (v9)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v18 = *(v2 + 2);
  v61[0] = *(v2 + 1);
  v61[1] = v18;
  v19 = *(v2 + 4);
  v21 = *(v2 + 1);
  v20 = *(v2 + 2);
  v61[2] = *(v2 + 3);
  v61[3] = v19;
  v57 = v21;
  v58 = v20;
  v22 = *(v2 + 4);
  v59 = *(v2 + 3);
  v60 = v22;
  v56 = 1;
  sub_17AA4(v61, v47, &qword_27F500, &unk_210330);
  sub_38C28();
  sub_1E1C80();
  v46[0] = v57;
  v46[1] = v58;
  v46[2] = v59;
  v46[3] = v60;
  sub_18E48(v46, &qword_27F500, &unk_210330);
  v23 = *(v2 + 12);
  v24 = *(v2 + 10);
  v52 = *(v2 + 11);
  v53 = v23;
  v25 = *(v2 + 12);
  v54 = *(v2 + 13);
  v26 = *(v2 + 8);
  v27 = *(v2 + 6);
  v48 = *(v2 + 7);
  v49 = v26;
  v28 = *(v2 + 8);
  v29 = *(v2 + 10);
  v50 = *(v2 + 9);
  v51 = v29;
  v30 = *(v2 + 6);
  v47[0] = *(v2 + 5);
  v47[1] = v30;
  v42 = v52;
  v43 = v25;
  v44 = *(v2 + 13);
  v38 = v48;
  v39 = v28;
  v40 = v50;
  v41 = v24;
  v55 = v2[28];
  v45 = v2[28];
  v36 = v47[0];
  v37 = v27;
  v35 = 2;
  sub_17AA4(v47, v33, &qword_27E4A0, &qword_1E8860);
  sub_18630();
  sub_1E1C80();
  v33[6] = v42;
  v33[7] = v43;
  v33[8] = v44;
  v34 = v45;
  v33[2] = v38;
  v33[3] = v39;
  v33[4] = v40;
  v33[5] = v41;
  v33[0] = v36;
  v33[1] = v37;
  sub_18E48(v33, &qword_27E4A0, &qword_1E8860);
  type metadata accessor for AuthorExposureEvent.Model(0);
  v32 = 3;
  sub_1E1150();
  sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
  sub_1E1CF0();
  v32 = 4;
  sub_1E11A0();
  sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
  sub_1E1CF0();
  return (*(v5 + 8))(v7, 0);
}

unint64_t sub_1A7DDC()
{
  result = qword_28D960;
  if (!qword_28D960)
  {
    result = swift_getWitnessTable(asc_20B370, &type metadata for AuthorExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28D960);
  }

  return result;
}

void AuthorExposureEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v45 = sub_1E11A0();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1150();
  v47 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_3D68(&qword_28D968, &qword_20B190);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v8 = &v42 - v7;
  v9 = type metadata accessor for AuthorExposureEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_1A7DDC();
  v49 = v8;
  v12 = v68;
  sub_1E1DF0();
  if (v12)
  {
    sub_4E48(a1, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v20 = v6;
    v21 = a1;
    v22 = v11;
    v23 = v47;
    LOBYTE(v64) = 0;
    sub_4CB8C();
    sub_1E1C20();
    v24 = *(&v53 + 1);
    *v22 = v53;
    *(v22 + 8) = v24;
    v63 = 1;
    sub_393C4();
    sub_1E1BB0();
    v42 = v4;
    v25 = v65;
    *(v22 + 16) = v64;
    *(v22 + 32) = v25;
    v26 = v67;
    *(v22 + 48) = v66;
    *(v22 + 64) = v26;
    v52 = 2;
    sub_18FA4();
    sub_1E1BB0();
    v27 = v60;
    *(v22 + 176) = v59;
    *(v22 + 192) = v27;
    *(v22 + 208) = v61;
    *(v22 + 224) = v62;
    v28 = v56;
    *(v22 + 112) = v55;
    *(v22 + 128) = v28;
    v29 = v58;
    *(v22 + 144) = v57;
    *(v22 + 160) = v29;
    v30 = v54;
    *(v22 + 80) = v53;
    *(v22 + 96) = v30;
    v51 = 3;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    v31 = v4;
    v32 = v21;
    (*(v23 + 32))(v22 + *(v9 + 28), v20, v31);
    v51 = 4;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v33 = v46;
    v34 = v45;
    sub_1E1C20();
    (*(v48 + 8))(v49, v50);
    (*(v43 + 32))(v22 + *(v9 + 32), v33, v34);
    sub_1A8598(v22, v44);
    sub_4E48(v32, v35, v36, v37, v38, v39, v40, v41);
    sub_1A85FC(v22);
  }
}

uint64_t sub_1A8598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthorExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A85FC(uint64_t a1)
{
  v2 = type metadata accessor for AuthorExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A86F8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_28D950, &qword_20B180);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27F4F8, &unk_210310);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_1A88DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_28D950, &qword_20B180);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27F4F8, &unk_210310);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_1A8AFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_28D950, &qword_20B180);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27F4F8, &unk_210310);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_1A8D14(uint64_t a1)
{
  sub_1A8E88(319, &unk_28D9D8, sub_4CB8C, sub_4CBE4, &type metadata for AuthorData);
  if (v1 <= 0x3F)
  {
    sub_1A8E88(319, &unk_27F598, sub_393C4, sub_38C28, &type metadata for ExposureData);
    if (v2 <= 0x3F)
    {
      sub_1A8E88(319, &unk_27E588, sub_18FA4, sub_18630, &type metadata for LinkData);
      if (v3 <= 0x3F)
      {
        sub_5684(319);
        if (v4 <= 0x3F)
        {
          sub_5750(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A8E88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A8F18(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1A9050(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1A9174(uint64_t a1)
{
  sub_19FE0(319, &unk_27F640, &type metadata for ExposureData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &unk_27E650, &type metadata for LinkData);
    if (v2 <= 0x3F)
    {
      sub_1E1150();
      if (v3 <= 0x3F)
      {
        sub_1E11A0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A926C()
{
  result = qword_28DAB8;
  if (!qword_28DAB8)
  {
    result = swift_getWitnessTable(asc_20B348, &type metadata for AuthorExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DAB8);
  }

  return result;
}

unint64_t sub_1A92C4()
{
  result = qword_28DAC0;
  if (!qword_28DAC0)
  {
    result = swift_getWitnessTable(aI_17, &type metadata for AuthorExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DAC0);
  }

  return result;
}

unint64_t sub_1A931C()
{
  result = qword_28DAC8;
  if (!qword_28DAC8)
  {
    result = swift_getWitnessTable(aQ_17, &type metadata for AuthorExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DAC8);
  }

  return result;
}

uint64_t sub_1A9370(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x6144726F68747561 && a2 == 0xEA00000000006174;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEC00000061746144;
    if (a1 == 0x657275736F707865 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else
    {
      v13 = sub_1E1D30();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 4;
      }

      else
      {
        return 5;
      }
    }
  }
}

uint64_t GoalStateEvent.readingGoalsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GoalStateEvent.readingGoalsData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t GoalStateEvent.booksGoalsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GoalStateEvent(0) + 20);
  v4 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GoalStateEvent.booksGoalsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GoalStateEvent(0) + 20);
  v4 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GoalStateEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GoalStateEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GoalStateEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GoalStateEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GoalStateEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for GoalStateEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = enum case for EventProperty.required<A>(_:);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v7, v8, v9);
}

__n128 GoalStateEvent.Model.readingGoalsData.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 57) = *(v1 + 57);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 GoalStateEvent.Model.booksGoalsData.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  result = *(v1 + 80);
  v4 = *(v1 + 96);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t GoalStateEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GoalStateEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GoalStateEvent.Model.init(readingGoalsData:booksGoalsData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 32);
  v7 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v7;
  *(a4 + 57) = *(a1 + 57);
  v8 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v8;
  v9 = *(a2 + 16);
  *(a4 + 80) = *a2;
  *(a4 + 96) = v9;
  *(a4 + 112) = v6;
  v10 = *(type metadata accessor for GoalStateEvent.Model(0) + 24);
  v11 = sub_1E1150();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t sub_1A9C60()
{
  v1 = 0x616F47736B6F6F62;
  if (*v0 != 1)
  {
    v1 = 0x746144746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1A9CD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1AAD2C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1A9CF8(uint64_t a1)
{
  v2 = sub_1A9F84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A9D34(uint64_t a1)
{
  v2 = sub_1A9F84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GoalStateEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28DB00, &qword_20B3C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_48B8(a1, a1[3]);
  sub_1A9F84();
  sub_1E1E00();
  v9 = v3[3];
  v18 = v3[2];
  v19[0] = v9;
  *(v19 + 9) = *(v3 + 57);
  v10 = v3[1];
  v16 = *v3;
  v17 = v10;
  v15 = 0;
  sub_1E3E8();
  sub_1E1C80();
  if (!v2)
  {
    v11 = *(v3 + 112);
    v12 = v3[6];
    v16 = v3[5];
    v17 = v12;
    LOBYTE(v18) = v11;
    v15 = 1;
    sub_283FC();
    sub_1E1C80();
    type metadata accessor for GoalStateEvent.Model(0);
    LOBYTE(v16) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A9F84()
{
  result = qword_28DB08;
  if (!qword_28DB08)
  {
    result = swift_getWitnessTable(byte_20B584, &type metadata for GoalStateEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DB08);
  }

  return result;
}

void GoalStateEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_1E1150();
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_28DB10, &qword_20B3C8);
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for GoalStateEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v33 = a1;
  sub_48B8(a1, v13);
  sub_1A9F84();
  sub_1E1DF0();
  if (!v2)
  {
    v28 = v10;
    v21 = v31;
    v22 = v6;
    v42 = 0;
    sub_1E390();
    v23 = v32;
    sub_1E1BB0();
    v24 = v40[0];
    *(v12 + 2) = v39;
    *(v12 + 3) = v24;
    *(v12 + 57) = *(v40 + 9);
    v25 = v38;
    *v12 = v37;
    *(v12 + 1) = v25;
    v41 = 1;
    sub_28EA0();
    sub_1E1BB0();
    v26 = v36;
    v27 = v35;
    *(v12 + 5) = v34;
    *(v12 + 6) = v27;
    v12[112] = v26;
    LOBYTE(v34) = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v21 + 8))(v9, v23);
    (*(v29 + 32))(&v12[*(v28 + 24)], v22, v4);
    sub_1AA328(v12, v30);
  }

  sub_4E48(v33, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1AA328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GoalStateEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AA42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = enum case for EventProperty.required<A>(_:);
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v8, v9, v10);
}

uint64_t sub_1AA570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1AA6E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_1AA858(uint64_t a1)
{
  sub_1AA964(319, &qword_27EAD8, sub_1E390, sub_1E3E8, &type metadata for ReadingGoalsData);
  if (v1 <= 0x3F)
  {
    sub_1AA964(319, &qword_27EAE0, sub_28EA0, sub_283FC, &type metadata for BooksGoalsData);
    if (v2 <= 0x3F)
    {
      sub_5684(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1AA964(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AA9F4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 <= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 3;
    if (v4 >= 3)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1E1150();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1AAAB8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1AAB58(uint64_t a1)
{
  sub_19FE0(319, &qword_27EBB8, &type metadata for ReadingGoalsData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_27EBC0, &type metadata for BooksGoalsData);
    if (v2 <= 0x3F)
    {
      sub_1E1150();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1AAC28()
{
  result = qword_28DC48;
  if (!qword_28DC48)
  {
    result = swift_getWitnessTable(asc_20B55C, &type metadata for GoalStateEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DC48);
  }

  return result;
}

unint64_t sub_1AAC80()
{
  result = qword_28DC50;
  if (!qword_28DC50)
  {
    result = swift_getWitnessTable(aU_25, &type metadata for GoalStateEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DC50);
  }

  return result;
}

unint64_t sub_1AACD8()
{
  result = qword_28DC58;
  if (!qword_28DC58)
  {
    result = swift_getWitnessTable(asc_20B4F4, &type metadata for GoalStateEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DC58);
  }

  return result;
}

uint64_t sub_1AAD2C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x8000000000213B80;
  if (a1 == 0xD000000000000010 && 0x8000000000213B80 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEE0061746144736CLL;
    if (a1 == 0x616F47736B6F6F62 && a2 == 0xEE0061746144736CLL || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = sub_1E1D30();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

void __swiftcall ReadingNowItemTypeData.init(contentPrivateID:contentUserID:contentType:completionRate:contentID:)(BookAnalytics::ReadingNowItemTypeData *__return_ptr retstr, Swift::String contentPrivateID, Swift::String contentUserID, BookAnalytics::ContentType contentType, Swift::Float completionRate, Swift::String contentID)
{
  v6 = *contentType;
  retstr->contentPrivateID = contentPrivateID;
  retstr->contentUserID = contentUserID;
  retstr->contentType = v6;
  retstr->completionRate = completionRate;
  retstr->contentID = contentID;
}

unint64_t sub_1AAEB0()
{
  v1 = *v0;
  v2 = 0x55746E65746E6F63;
  v3 = 0x54746E65746E6F63;
  v4 = 0x6974656C706D6F63;
  if (v1 != 3)
  {
    v4 = 0x49746E65746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

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
    return v3;
  }
}

uint64_t sub_1AAF74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1AB93C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1AAF9C(uint64_t a1)
{
  v2 = sub_1AB710();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1AAFD8(uint64_t a1)
{
  v2 = sub_1AB710();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingNowItemTypeData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28DC60, &qword_20B5E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;
  v7 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v7;
  v13 = *(v1 + 32);
  v8 = *(v1 + 40);
  v12[1] = *(v1 + 48);
  v12[2] = v8;
  sub_48B8(a1, a1[3]);
  sub_1AB710();
  sub_1E1E00();
  v22 = 0;
  v9 = v16;
  sub_1E1CB0();
  if (!v9)
  {
    v11 = v13;
    v21 = 1;
    sub_1E1CB0();
    v20 = v11;
    v19 = 2;
    sub_C480();
    sub_1E1CF0();
    v18 = 3;
    sub_1E1CE0();
    v17 = 4;
    sub_1E1CB0();
  }

  return (*(v4 + 8))(v6, v3);
}

void ReadingNowItemTypeData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28DC70, &qword_20B5E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - v7;
  sub_48B8(a1, a1[3]);
  sub_1AB710();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    LOBYTE(v45[0]) = 0;
    v16 = sub_1E1BE0();
    v18 = v17;
    v40 = v16;
    LOBYTE(v45[0]) = 1;
    *&v39 = sub_1E1BE0();
    *(&v39 + 1) = v19;
    LOBYTE(v41) = 2;
    sub_C4D4();
    sub_1E1C20();
    v38 = LOBYTE(v45[0]);
    LOBYTE(v45[0]) = 3;
    sub_1E1C10();
    v21 = v20;
    v50 = 4;
    v22 = sub_1E1BE0();
    v24 = v23;
    v25 = v22;
    (*(v6 + 8))(v8, v5);
    v27 = *(&v39 + 1);
    v26 = v40;
    *&v41 = v40;
    *(&v41 + 1) = v18;
    v42 = v39;
    v28 = v38;
    LOBYTE(v43) = v38;
    DWORD1(v43) = v21;
    *(&v43 + 1) = v25;
    v44 = v24;
    *(a2 + 48) = v24;
    v29 = v42;
    *a2 = v41;
    *(a2 + 16) = v29;
    *(a2 + 32) = v43;
    sub_5E2B0(&v41, v45);
    sub_4E48(a1, v30, v31, v32, v33, v34, v35, v36);
    v45[0] = v26;
    v45[1] = v18;
    v45[2] = v39;
    v45[3] = v27;
    v46 = v28;
    v47 = v21;
    v48 = v25;
    v49 = v24;
    sub_5E30C(v45);
  }
}

uint64_t _s13BookAnalytics22ReadingNowItemTypeDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = a1[2];
  v9 = a1[3];
  v10 = *(a1 + 32);
  v11 = *(a1 + 9);
  v12 = a1[5];
  v13 = a1[6];
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  v18 = *(a2 + 32);
  v19 = *(a2 + 36);
  v20 = *(a2 + 40);
  v21 = *(a2 + 48);
  if ((*a1 != *a2 || a1[1] != v15) && (sub_1E1D30() & 1) == 0 || (v8 != v16 || v9 != v17) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  v22 = sub_218F4(v10, v18, v14, v15, a5, a6, a7, a8);
  result = 0;
  if ((v22 & 1) != 0 && v11 == v19)
  {
    if (v12 == v20 && v13 == v21)
    {
      return 1;
    }

    else
    {

      return sub_1E1D30();
    }
  }

  return result;
}

unint64_t sub_1AB710()
{
  result = qword_28DC68;
  if (!qword_28DC68)
  {
    result = swift_getWitnessTable(byte_20B7EC, &type metadata for ReadingNowItemTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DC68);
  }

  return result;
}

unint64_t sub_1AB768()
{
  result = qword_28DC78;
  if (!qword_28DC78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReadingNowItemTypeData, &type metadata for ReadingNowItemTypeData, v0, v1);
    atomic_store(result, &qword_28DC78);
  }

  return result;
}

unint64_t sub_1AB7C0()
{
  result = qword_28DC80;
  if (!qword_28DC80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReadingNowItemTypeData, &type metadata for ReadingNowItemTypeData, v0, v1);
    atomic_store(result, &qword_28DC80);
  }

  return result;
}

unint64_t sub_1AB838()
{
  result = qword_28DC88;
  if (!qword_28DC88)
  {
    result = swift_getWitnessTable(byte_20B7C4, &type metadata for ReadingNowItemTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DC88);
  }

  return result;
}

unint64_t sub_1AB890()
{
  result = qword_28DC90;
  if (!qword_28DC90)
  {
    result = swift_getWitnessTable(byte_20B734, &type metadata for ReadingNowItemTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DC90);
  }

  return result;
}

unint64_t sub_1AB8E8()
{
  result = qword_28DC98;
  if (!qword_28DC98)
  {
    result = swift_getWitnessTable(byte_20B75C, &type metadata for ReadingNowItemTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DC98);
  }

  return result;
}

uint64_t sub_1AB93C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x80000000002138D0;
  if (a1 == 0xD000000000000010 && 0x80000000002138D0 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xED00004449726573;
    if (a1 == 0x55746E65746E6F63 && a2 == 0xED00004449726573 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0xEB00000000657079;
      if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v14 = 0xEE00657461526E6FLL;
        if (a1 == 0x6974656C706D6F63 && a2 == 0xEE00657461526E6FLL || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else if (a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000044)
        {
          0xE900000000000044, v14, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else
        {
          v15 = sub_1E1D30();
          a2, v16, v17, v18, v19, v20, v21, v22;
          if (v15)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

BookAnalytics::EditActionType_optional __swiftcall EditActionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261BD8;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 4;
  if (v5 < 4)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t EditActionType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6C6F436F54646461;
  if (*v0 != 2)
  {
    v2 = 0x65766F6D6572;
  }

  if (*v0)
  {
    v1 = 0x6572616873;
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

unint64_t sub_1ABC00()
{
  result = qword_28DCA0;
  if (!qword_28DCA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EditActionType, &type metadata for EditActionType, v0, v1);
    atomic_store(result, &qword_28DCA0);
  }

  return result;
}

Swift::Int sub_1ABC54()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE700000000000000;
  v3 = 0xEF6E6F697463656CLL;
  if (v1 != 2)
  {
    v3 = 0xE600000000000000;
  }

  if (v1)
  {
    v2 = 0xE500000000000000;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_1ABD1C(uint64_t a1)
{
  v2 = 0xE700000000000000;
  v3 = 0xEF6E6F697463656CLL;
  if (*v1 != 2)
  {
    v3 = 0xE600000000000000;
  }

  if (*v1)
  {
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1E17D0();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

Swift::Int sub_1ABDD0(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xEF6E6F697463656CLL;
  if (v2 != 2)
  {
    v4 = 0xE600000000000000;
  }

  if (v2)
  {
    v3 = 0xE500000000000000;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  sub_1E17D0();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1E1DE0();
}

void sub_1ABEA0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEF6E6F697463656CLL;
  v5 = 0x6C6F436F54646461;
  if (*v1 != 2)
  {
    v5 = 0x65766F6D6572;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6572616873;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1ABFE4()
{
  result = qword_28DCA8;
  if (!qword_28DCA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EditActionType, &type metadata for EditActionType, v0, v1);
    atomic_store(result, &qword_28DCA8);
  }

  return result;
}

BookAnalytics::WelcomeActionType_optional __swiftcall WelcomeActionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261C58;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 3;
  if (v5 < 3)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t WelcomeActionType.rawValue.getter()
{
  v1 = 1885956979;
  if (*v0 != 1)
  {
    v1 = 0x65756E69746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

unint64_t sub_1AC0EC()
{
  result = qword_28DCB0;
  if (!qword_28DCB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WelcomeActionType, &type metadata for WelcomeActionType, v0, v1);
    atomic_store(result, &qword_28DCB0);
  }

  return result;
}

Swift::Int sub_1AC140()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE400000000000000;
  if (v1 != 1)
  {
    v2 = 0xE800000000000000;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_1AC1DC(uint64_t a1)
{
  v2 = 0xE400000000000000;
  if (*v1 != 1)
  {
    v2 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_1AC264(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE400000000000000;
  if (v2 != 1)
  {
    v3 = 0xE800000000000000;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_1AC308(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1885956979;
  if (v2 != 1)
  {
    v5 = 0x65756E69746E6F63;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1AC420()
{
  result = qword_28DCB8;
  if (!qword_28DCB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WelcomeActionType, &type metadata for WelcomeActionType, v0, v1);
    atomic_store(result, &qword_28DCB8);
  }

  return result;
}

void sub_1AC494(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x72756F5377656976 && a2 == 0xEA00000000006563)
  {
    a2, a2, a1, a3, a4, a5, a6, a7;
    v19 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a8 = v19 & 1;
}

uint64_t sub_1AC524(uint64_t a1)
{
  v2 = sub_1AC884();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1AC560(uint64_t a1)
{
  v2 = sub_1AC884();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ViewSourceData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28DCC0, &qword_20BA80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_1AC884();
  sub_1E1E00();
  v10 = v7;
  sub_1AC8D8();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

void ViewSourceData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28DCD8, &qword_20BA88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_1AC884();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1AC92C();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_1AC884()
{
  result = qword_28DCC8;
  if (!qword_28DCC8)
  {
    result = swift_getWitnessTable(asc_20BC58, &type metadata for ViewSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DCC8);
  }

  return result;
}

unint64_t sub_1AC8D8()
{
  result = qword_28DCD0;
  if (!qword_28DCD0)
  {
    result = swift_getWitnessTable("]J\a", &type metadata for ViewSource, v0, v1);
    atomic_store(result, &qword_28DCD0);
  }

  return result;
}

unint64_t sub_1AC92C()
{
  result = qword_28DCE0;
  if (!qword_28DCE0)
  {
    result = swift_getWitnessTable("uJ\a", &type metadata for ViewSource, v0, v1);
    atomic_store(result, &qword_28DCE0);
  }

  return result;
}

unint64_t sub_1AC9AC()
{
  result = qword_28DCE8;
  if (!qword_28DCE8)
  {
    result = swift_getWitnessTable(a9_7, &type metadata for ViewSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DCE8);
  }

  return result;
}

unint64_t sub_1ACA04()
{
  result = qword_28DCF0;
  if (!qword_28DCF0)
  {
    result = swift_getWitnessTable(byte_20BBA0, &type metadata for ViewSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DCF0);
  }

  return result;
}

unint64_t sub_1ACA5C()
{
  result = qword_28DCF8;
  if (!qword_28DCF8)
  {
    result = swift_getWitnessTable(aI_18, &type metadata for ViewSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DCF8);
  }

  return result;
}

uint64_t sub_1ACADC()
{
  if (*v0)
  {
    return 0x7261655976657270;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_1ACB28(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v12 = 0x8000000000217450;
  if (a1 == 0xD000000000000011 && 0x8000000000217450 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0x7261655976657270 && a2 == 0xEE006C616F47796CLL)
  {
    0xEE006C616F47796CLL, 0xEE006C616F47796CLL, a3, a4, a5, a6, a7, a8;
    v13 = 1;
  }

  else
  {
    v14 = sub_1E1D30();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a9 = v13;
}

uint64_t sub_1ACC18(uint64_t a1)
{
  v2 = sub_1ACE1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1ACC54(uint64_t a1)
{
  v2 = sub_1ACE1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingGoalYearlyData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28DD00, &qword_20BCB0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  sub_48B8(a1, a1[3]);
  sub_1ACE1C();
  sub_1E1E00();
  v11 = 0;
  sub_1E1D10();
  if (!v2)
  {
    v10 = 1;
    sub_1E1D10();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1ACE1C()
{
  result = qword_28DD08;
  if (!qword_28DD08)
  {
    result = swift_getWitnessTable(byte_20BE8C, &type metadata for ReadingGoalYearlyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DD08);
  }

  return result;
}

void ReadingGoalYearlyData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_28DD10, &qword_20BCB8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_48B8(a1, a1[3]);
  sub_1ACE1C();
  sub_1E1DF0();
  if (!v2)
  {
    v20 = 0;
    v16 = sub_1E1C40();
    v19 = 1;
    v17 = sub_1E1C40();
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    a2[1] = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t getEnumTagSinglePayload for ReadingGoalsDurationData(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ReadingGoalsDurationData(uint64_t result, int a2, int a3)
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

unint64_t sub_1AD0B4()
{
  result = qword_28DD18;
  if (!qword_28DD18)
  {
    result = swift_getWitnessTable(byte_20BE64, &type metadata for ReadingGoalYearlyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DD18);
  }

  return result;
}

unint64_t sub_1AD10C()
{
  result = qword_28DD20;
  if (!qword_28DD20)
  {
    result = swift_getWitnessTable(aM_20, &type metadata for ReadingGoalYearlyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DD20);
  }

  return result;
}

unint64_t sub_1AD164()
{
  result = qword_28DD28;
  if (!qword_28DD28)
  {
    result = swift_getWitnessTable(a5_8, &type metadata for ReadingGoalYearlyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DD28);
  }

  return result;
}

uint64_t sub_1AD278(uint64_t a1)
{
  v2 = sub_1AD454();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1AD2B4(uint64_t a1)
{
  v2 = sub_1AD454();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ResetPrivateIDsEvent.Model.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_28DD60, &qword_20BEE8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_48B8(a1, a1[3]);
  sub_1AD454();
  sub_1E1E00();
  sub_1E1150();
  sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
  sub_1E1CF0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1AD454()
{
  result = qword_28DD68;
  if (!qword_28DD68)
  {
    result = swift_getWitnessTable(byte_20C0A0, &type metadata for ResetPrivateIDsEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DD68);
  }

  return result;
}

void ResetPrivateIDsEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_1E1150();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3D68(&qword_28DD70, &qword_20BEF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = type metadata accessor for ResetPrivateIDsEvent.Model(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_1AD454();
  v12 = v25;
  sub_1E1DF0();
  if (!v12)
  {
    v20 = v23;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    (*(v20 + 32))(v11, v24, v3);
    sub_1AD734(v11, v22);
  }

  sub_4E48(a1, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1AD734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResetPrivateIDsEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AD834(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AD8C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AD970(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AD9F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_1ADA74()
{
  result = qword_28DE98;
  if (!qword_28DE98)
  {
    result = swift_getWitnessTable(byte_20C078, &type metadata for ResetPrivateIDsEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DE98);
  }

  return result;
}

unint64_t sub_1ADACC()
{
  result = qword_28DEA0;
  if (!qword_28DEA0)
  {
    result = swift_getWitnessTable(a9_8, &type metadata for ResetPrivateIDsEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DEA0);
  }

  return result;
}

unint64_t sub_1ADB24()
{
  result = qword_28DEA8;
  if (!qword_28DEA8)
  {
    result = swift_getWitnessTable(asc_20C010, &type metadata for ResetPrivateIDsEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DEA8);
  }

  return result;
}

uint64_t RemoveFromWantListEvent.wantListRemovalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_28DEE0, &qword_20C0F0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoveFromWantListEvent.wantListRemovalData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_28DEE0, &qword_20C0F0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RemoveFromWantListEvent.wantListRemovalTypeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveFromWantListEvent(0) + 20);
  v4 = sub_3D68(&qword_28DEE8, &qword_20C0F8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveFromWantListEvent.wantListRemovalTypeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveFromWantListEvent(0) + 20);
  v4 = sub_3D68(&qword_28DEE8, &qword_20C0F8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveFromWantListEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveFromWantListEvent(0) + 24);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveFromWantListEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveFromWantListEvent(0) + 24);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveFromWantListEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveFromWantListEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveFromWantListEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveFromWantListEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveFromWantListEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_28DEE0, &qword_20C0F0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RemoveFromWantListEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_28DEE8, &qword_20C0F8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

uint64_t RemoveFromWantListEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t RemoveFromWantListEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveFromWantListEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveFromWantListEvent.Model.init(wantListRemovalData:wantListRemovalTypeData:seriesData:eventData:)@<X0>(void *a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  *a5 = *a1;
  *(a5 + 8) = v7;
  v8 = a3[1];
  *(a5 + 16) = *a3;
  *(a5 + 32) = v8;
  *(a5 + 48) = a3[2];
  v9 = *(type metadata accessor for RemoveFromWantListEvent.Model(0) + 28);
  v10 = sub_1E1150();
  v11 = *(*(v10 - 8) + 32);

  return v11(a5 + v9, a4, v10);
}

unint64_t sub_1AE42C()
{
  v1 = 0x6144736569726573;
  if (*v0 != 2)
  {
    v1 = 0x746144746E657665;
  }

  v2 = 0xD000000000000013;
  if (*v0)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1AE4B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1AF780(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1AE4DC(uint64_t a1)
{
  v2 = sub_1AE7C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1AE518(uint64_t a1)
{
  v2 = sub_1AE7C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RemoveFromWantListEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28DEF0, &qword_20C100);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_48B8(a1, a1[3]);
  sub_1AE7C8();
  sub_1E1E00();
  v25 = *v3;
  v31 = 0;
  sub_18D20C();

  sub_1E1CF0();
  v25, v9, v10, v11, v12, v13, v14, v15;
  if (!v2)
  {
    LOBYTE(v25) = *(v3 + 8);
    v31 = 1;
    sub_2D820();
    sub_1E1CF0();
    v16 = *(v3 + 24);
    v17 = *(v3 + 32);
    v18 = *(v3 + 40);
    v19 = *(v3 + 48);
    v20 = *(v3 + 56);
    v25 = *(v3 + 16);
    v26 = v16;
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v31 = 2;
    sub_13BDC(v25, v16, v17, v18, v19, v20);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v25, v26, v27, v28, v29, v30, v21, v22);
    type metadata accessor for RemoveFromWantListEvent.Model(0);
    LOBYTE(v25) = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1AE7C8()
{
  result = qword_28DEF8;
  if (!qword_28DEF8)
  {
    result = swift_getWitnessTable(byte_20C2D4, &type metadata for RemoveFromWantListEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28DEF8);
  }

  return result;
}

void RemoveFromWantListEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_1E1150();
  v33 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_3D68(&qword_28DF00, &qword_20C108);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v8 = &v32 - v7;
  v9 = type metadata accessor for RemoveFromWantListEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v37 = a1;
  sub_48B8(a1, v12);
  sub_1AE7C8();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v37, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v32 = v6;
    v20 = v11;
    v22 = v34;
    v21 = v35;
    v41 = 0;
    sub_18D1B4();
    v23 = v36;
    sub_1E1C20();
    *v20 = v38;
    v41 = 1;
    sub_2D7C8();
    sub_1E1C20();
    *(v20 + 8) = v38;
    v41 = 2;
    sub_DAD8();
    sub_1E1BB0();
    v24 = v39;
    *(v20 + 16) = v38;
    *(v20 + 32) = v24;
    *(v20 + 48) = v40;
    LOBYTE(v38) = 3;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v22 + 8))(v8, v23);
    (*(v33 + 32))(v20 + *(v9 + 28), v32, v4);
    sub_1AEBF4(v20, v21);
    sub_4E48(v37, v25, v26, v27, v28, v29, v30, v31);
    sub_1AEC58(v20);
  }
}

uint64_t sub_1AEBF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveFromWantListEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AEC58(uint64_t a1)
{
  v2 = type metadata accessor for RemoveFromWantListEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AED54@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_28DEE0, &qword_20C0F0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_28DEE8, &qword_20C0F8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v13 = *(*(v12 - 8) + 104);

  return v13(a2 + v11, v4, v12);
}

uint64_t sub_1AEEEC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_28DEE0, &qword_20C0F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_28DEE8, &qword_20C0F8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_1AF0B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_28DEE0, &qword_20C0F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_28DEE8, &qword_20C0F8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_1AF27C(uint64_t a1)
{
  sub_1AF3D8(319, &qword_28DF70, sub_18D1B4, sub_18D20C, &type metadata for WantListRemovalData);
  if (v1 <= 0x3F)
  {
    sub_1AF3D8(319, &unk_28DF78, sub_2D7C8, sub_2D820, &type metadata for WantListRemovalTypeData);
    if (v2 <= 0x3F)
    {
      sub_1AF3D8(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
      if (v3 <= 0x3F)
      {
        sub_5684(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1AF3D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF468(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1AF528(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1AF5CC(uint64_t a1)
{
  sub_15D04();
  if (v1 <= 0x3F)
  {
    sub_1E1150();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1AF67C()
{
  result = qword_28E048;
  if (!qword_28E048)
  {
    result = swift_getWitnessTable(byte_20C2AC, &type metadata for RemoveFromWantListEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E048);
  }

  return result;
}

unint64_t sub_1AF6D4()
{
  result = qword_28E050;
  if (!qword_28E050)
  {
    result = swift_getWitnessTable(byte_20C21C, &type metadata for RemoveFromWantListEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E050);
  }

  return result;
}

unint64_t sub_1AF72C()
{
  result = qword_28E058;
  if (!qword_28E058)
  {
    result = swift_getWitnessTable(byte_20C244, &type metadata for RemoveFromWantListEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E058);
  }

  return result;
}

uint64_t sub_1AF780(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x8000000000217470;
  if (a1 == 0xD000000000000013 && 0x8000000000217470 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x8000000000217490;
    if (a1 == 0xD000000000000017 && 0x8000000000217490 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else
    {
      v13 = sub_1E1D30();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }
  }
}

uint64_t RemoveFromCollectionEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveFromCollectionEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveFromCollectionEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveFromCollectionEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveFromCollectionEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveFromCollectionEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveFromCollectionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveFromCollectionEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveFromCollectionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27EC78, &unk_1E7460);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RemoveFromCollectionEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t RemoveFromCollectionEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveFromCollectionEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveFromCollectionEvent.Model.init(collectionData:contentData:eventData:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  v7 = a2[2];
  v8 = a2[4];
  v9 = a2[5];
  *(a4 + 80) = a2[3];
  *(a4 + 96) = v8;
  *(a4 + 112) = v9;
  v10 = *a2;
  v11 = a2[1];
  *(a4 + 16) = v6;
  *(a4 + 32) = v10;
  v12 = *(a1 + 8);
  *a4 = *a1;
  *(a4 + 8) = v12;
  *(a4 + 48) = v11;
  *(a4 + 64) = v7;
  v13 = *(type metadata accessor for RemoveFromCollectionEvent.Model(0) + 24);
  v14 = sub_1E1150();
  v15 = *(*(v14 - 8) + 32);

  return v15(a4 + v13, a3, v14);
}

uint64_t sub_1AFF04()
{
  v1 = 0x44746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x746144746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x697463656C6C6F63;
  }
}

uint64_t sub_1AFF78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1B1160(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1AFFA0(uint64_t a1)
{
  v2 = sub_1B0324();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1AFFDC(uint64_t a1)
{
  v2 = sub_1B0324();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RemoveFromCollectionEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28E090, &qword_20C328);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34[-v6];
  sub_48B8(a1, a1[3]);
  sub_1B0324();
  sub_1E1E00();
  v8 = v2[1];
  v9 = v2[2];
  v10 = v2[3];
  v50 = *v2;
  v51 = v8;
  v52 = v9;
  v53 = v10;
  v49 = 0;
  sub_2B314();

  v11 = v54;
  sub_1E1CF0();
  v12 = v53;
  v51, v13, v14, v15, v16, v17, v18, v19;
  v12, v20, v21, v22, v23, v24, v25, v26;
  if (!v11)
  {
    v28 = *(v2 + 4);
    v29 = *(v2 + 6);
    v46 = *(v2 + 5);
    v47 = v29;
    v30 = *(v2 + 6);
    v48 = *(v2 + 7);
    v31 = *(v2 + 2);
    v32 = *(v2 + 4);
    v44 = *(v2 + 3);
    v45 = v32;
    v33 = *(v2 + 2);
    v40 = v46;
    v41 = v30;
    v42 = *(v2 + 7);
    v43 = v33;
    v37 = v31;
    v38 = v44;
    v39 = v28;
    v36 = 1;
    sub_13A5C(&v43, v35);
    sub_143D0();
    sub_1E1CF0();
    v35[2] = v39;
    v35[3] = v40;
    v35[4] = v41;
    v35[5] = v42;
    v35[0] = v37;
    v35[1] = v38;
    sub_14424(v35);
    type metadata accessor for RemoveFromCollectionEvent.Model(0);
    v34[15] = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B0324()
{
  result = qword_28E098;
  if (!qword_28E098)
  {
    result = swift_getWitnessTable(byte_20C4F4, &type metadata for RemoveFromCollectionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E098);
  }

  return result;
}

void RemoveFromCollectionEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_1E1150();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_28E0A0, &qword_20C330);
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for RemoveFromCollectionEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v39 = a1;
  sub_48B8(a1, v13);
  sub_1B0324();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v39, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = v37;
    v34 = v6;
    v47 = 0;
    sub_2B68C();
    v22 = v38;
    sub_1E1C20();
    v23 = *(&v40 + 1);
    *v12 = v40;
    *(v12 + 1) = v23;
    *(v12 + 1) = v41;
    v47 = 1;
    sub_14CB8();
    sub_1E1C20();
    v24 = v43;
    *(v12 + 4) = v42;
    *(v12 + 5) = v24;
    v25 = v45;
    *(v12 + 6) = v44;
    *(v12 + 7) = v25;
    v26 = v41;
    *(v12 + 2) = v40;
    *(v12 + 3) = v26;
    v46 = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v21 + 8))(v9, v22);
    (*(v35 + 32))(&v12[*(v10 + 24)], v34, v4);
    sub_1B0744(v12, v36);
    sub_4E48(v39, v27, v28, v29, v30, v31, v32, v33);
    sub_1B07A8(v12);
  }
}

uint64_t sub_1B0744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveFromCollectionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B07A8(uint64_t a1)
{
  v2 = type metadata accessor for RemoveFromCollectionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B08A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27EC78, &unk_1E7460);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_1B09DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27EC78, &unk_1E7460);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1B0B54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27EC78, &unk_1E7460);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_1B0CC4(uint64_t a1)
{
  sub_1B0DD0(319, &qword_27ED10, sub_2B68C, sub_2B314, &type metadata for CollectionData);
  if (v1 <= 0x3F)
  {
    sub_1B0DD0(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
    if (v2 <= 0x3F)
    {
      sub_5684(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B0DD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B0E60(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B0F20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B0FC4(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B105C()
{
  result = qword_28E1D8;
  if (!qword_28E1D8)
  {
    result = swift_getWitnessTable(byte_20C4CC, &type metadata for RemoveFromCollectionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E1D8);
  }

  return result;
}

unint64_t sub_1B10B4()
{
  result = qword_28E1E0;
  if (!qword_28E1E0)
  {
    result = swift_getWitnessTable(byte_20C43C, &type metadata for RemoveFromCollectionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E1E0);
  }

  return result;
}

unint64_t sub_1B110C()
{
  result = qword_28E1E8;
  if (!qword_28E1E8)
  {
    result = swift_getWitnessTable(byte_20C464, &type metadata for RemoveFromCollectionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E1E8);
  }

  return result;
}

uint64_t sub_1B1160(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEE00617461446E6FLL;
  v11 = a1 == 0x697463656C6C6F63 && a2 == 0xEE00617461446E6FLL;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0xEB00000000617461;
    if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v13, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v14 = sub_1E1D30();
      a2, v15, v16, v17, v18, v19, v20, v21;
      if (v14)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

BookAnalytics::ListeningRoutedTo_optional __swiftcall ListeningRoutedTo.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261CC0;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 8;
  if (v5 < 8)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t ListeningRoutedTo.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x646F50656D6F68;
  if (v1 != 6)
  {
    v3 = 0x5654656C707061;
  }

  v4 = 0x6E6F687064616568;
  if (v1 != 4)
  {
    v4 = 0x73646F50726961;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x79616C50726163;
  if (v1 != 2)
  {
    v5 = 0x6F69647541726163;
  }

  if (*v0)
  {
    v2 = 0x656369766564;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B13F4()
{
  result = qword_28E1F0;
  if (!qword_28E1F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListeningRoutedTo, &type metadata for ListeningRoutedTo, v0, v1);
    atomic_store(result, &qword_28E1F0);
  }

  return result;
}

void sub_1B1470(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE700000000000000;
  v6 = 0x646F50656D6F68;
  if (v2 != 6)
  {
    v6 = 0x5654656C707061;
    v5 = 0xE700000000000000;
  }

  v7 = 0xEA00000000007365;
  v8 = 0x6E6F687064616568;
  if (v2 != 4)
  {
    v8 = 0x73646F50726961;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x79616C50726163;
  if (v2 != 2)
  {
    v10 = 0x6F69647541726163;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x656369766564;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
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

unint64_t sub_1B1630()
{
  result = qword_28E1F8;
  if (!qword_28E1F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListeningRoutedTo, &type metadata for ListeningRoutedTo, v0, v1);
    atomic_store(result, &qword_28E1F8);
  }

  return result;
}

uint64_t sub_1B1688()
{
  v1 = 0x65726E6547627573;
  if (*v0 != 1)
  {
    v1 = 0x54746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x644965726E6567;
  }
}

uint64_t sub_1B16F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1B1E60(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1B1718(uint64_t a1)
{
  v2 = sub_1B1CDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1B1754(uint64_t a1)
{
  v2 = sub_1B1CDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GenreData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28E200, &qword_20C688);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  sub_48B8(a1, a1[3]);
  sub_1B1CDC();
  sub_1E1E00();
  v14 = 0;
  v9 = v11[5];
  sub_1E1CB0();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1E1C50();
  v12 = 2;
  sub_1E1C50();
  return (*(v4 + 8))(v6, v3);
}

void GenreData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_28E210, &qword_20C690);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v55 - v7;
  sub_48B8(a1, a1[3]);
  sub_1B1CDC();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v61 = 0;
    v16 = sub_1E1BE0();
    v18 = v17;
    v58 = v16;
    v60 = 1;
    v19 = sub_1E1B80();
    v21 = v20;
    v57 = v19;
    v59 = 2;
    v22 = sub_1E1B80();
    v38 = v37;
    v39 = *(v6 + 8);
    v56 = v22;
    v39(v8, v5);
    v40 = v57;
    *a2 = v58;
    a2[1] = v18;
    a2[2] = v40;
    a2[3] = v21;
    a2[4] = v56;
    a2[5] = v38;

    sub_4E48(a1, v41, v42, v43, v44, v45, v46, v47);
    v38, v48, v49, v50, v51, v52, v53, v54;
    v21, v23, v24, v25, v26, v27, v28, v29;
    v18, v30, v31, v32, v33, v34, v35, v36;
  }
}

uint64_t _s13BookAnalytics9GenreDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6 || (v2 != v7 || v4 != v6) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v3 == v9 && v5 == v8 || (sub_1E1D30() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1B1CDC()
{
  result = qword_28E208;
  if (!qword_28E208)
  {
    result = swift_getWitnessTable(byte_20C87C, &type metadata for GenreData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E208);
  }

  return result;
}

unint64_t sub_1B1D5C()
{
  result = qword_28E218;
  if (!qword_28E218)
  {
    result = swift_getWitnessTable(byte_20C854, &type metadata for GenreData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E218);
  }

  return result;
}

unint64_t sub_1B1DB4()
{
  result = qword_28E220;
  if (!qword_28E220)
  {
    result = swift_getWitnessTable(asc_20C7C4, &type metadata for GenreData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E220);
  }

  return result;
}

unint64_t sub_1B1E0C()
{
  result = qword_28E228;
  if (!qword_28E228)
  {
    result = swift_getWitnessTable(aE_19, &type metadata for GenreData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E228);
  }

  return result;
}

uint64_t sub_1B1E60(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x644965726E6567 && a2 == 0xE700000000000000;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x65726E6547627573 && a2 == 0xEA00000000006449 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079)
  {
    0xEB00000000657079, 0xEB00000000657079, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = sub_1E1D30();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_1B1FB0(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x6E656D7461657274 && a2 == 0xEC00000073444974)
  {
    a2, 0xEC00000073444974, a1, a3, a4, a5, a6, a7;
    v19 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a8 = v19 & 1;
}

uint64_t sub_1B203C(uint64_t a1)
{
  v2 = sub_1B224C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1B2078(uint64_t a1)
{
  v2 = sub_1B224C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AmpTreatmentData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28E230, &unk_20C8D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_1B224C();

  sub_1E1E00();
  v16[1] = v7;
  sub_3D68(&qword_281BC0, &unk_1EDD80);
  sub_6E7F0(&qword_281190, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1E1CF0();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B224C()
{
  result = qword_28E238;
  if (!qword_28E238)
  {
    result = swift_getWitnessTable(byte_20CAB4, &type metadata for AmpTreatmentData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E238);
  }

  return result;
}

void AmpTreatmentData.init(from:)(BAEventReporter **a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3D68(&qword_28E240, &qword_20C8E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_1B224C();
  sub_1E1DF0();
  if (!v2)
  {
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    sub_6E7F0(&qword_2811B8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v16[1];
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_1B24A0()
{
  result = qword_28E248;
  if (!qword_28E248)
  {
    result = swift_getWitnessTable(byte_20CA8C, &type metadata for AmpTreatmentData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E248);
  }

  return result;
}

unint64_t sub_1B24F8()
{
  result = qword_28E250;
  if (!qword_28E250)
  {
    result = swift_getWitnessTable(asc_20C9FC, &type metadata for AmpTreatmentData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E250);
  }

  return result;
}

unint64_t sub_1B2550()
{
  result = qword_28E258;
  if (!qword_28E258)
  {
    result = swift_getWitnessTable(asc_20CA24, &type metadata for AmpTreatmentData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E258);
  }

  return result;
}

void EventReporter.emitViewSupplementalContent(using:for:sourceIsAction:with:)(void *a1, uint64_t a2, uint64_t a3, char a4, id a5)
{
  if (a4)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  if (a5)
  {
    v11 = [a5 intValue];
    v12 = a1;
    if (!a1)
    {
LABEL_8:
      v12 = sub_BFB78();
      if (!v12)
      {
        return;
      }
    }
  }

  else
  {
    v11 = 0;
    v12 = a1;
    if (!a1)
    {
      goto LABEL_8;
    }
  }

  v13 = a5 == 0;
  v14 = swift_allocObject();
  *(v14 + 16) = v5;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = v12;
  *(v14 + 48) = v11;
  *(v14 + 52) = v13;
  *(v14 + 53) = v10;
  v15 = swift_allocObject();
  v15[1].super.isa = sub_1B3EB8;
  *v15[1].dataProviders = v14;
  v16 = a1;
  v17 = v5;

  v18 = v12;

  sub_1E10C0();

  v14, v19, v20, v21, v22, v23, v24, v25;

  v15, v26, v27, v28, v29, v30, v31, v32;
}

void EventReporter.emitViewSupplementalContent(using:for:from:with:)(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = *a4;
  v11 = a1;
  if (a1 || (v11 = sub_BFB78()) != 0)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v5;
    *(v12 + 24) = a2;
    *(v12 + 32) = a3;
    *(v12 + 40) = v11;
    *(v12 + 48) = a5;
    *(v12 + 52) = BYTE4(a5) & 1;
    *(v12 + 53) = v10;
    v13 = swift_allocObject();
    v13[1].super.isa = sub_1B415C;
    *v13[1].dataProviders = v12;
    v14 = a1;
    v15 = v5;

    v16 = v11;

    sub_1E10C0();

    v12, v17, v18, v19, v20, v21, v22, v23;

    v13, v24, v25, v26, v27, v28, v29, v30;
  }
}

uint64_t sub_1B2904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, void), int a7)
{
  v78 = a5;
  v13 = sub_1E1640();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = a3;
  v17 = a3;
  v18 = a4;
  sub_7B51C(v17, a4, &v92);
  v19 = v92;
  sub_4C270();
  *v16 = sub_1E19E0();
  (*(v14 + 104))(v16, enum case for DispatchPredicate.notOnQueue(_:), v13);
  LOBYTE(a4) = sub_1E1660();
  result = (*(v14 + 8))(v16, v13);
  if (a4)
  {
    HIDWORD(v74) = v19;
    v75 = a6;
    LODWORD(v76) = a7;
    v77 = a1;
    sub_3D68(&qword_281B70, &qword_1E9980);
    sub_1E1330();
    v28 = v86;
    result = v86 + 32;
    v29 = -*(v86 + 16);
    v30 = -1;
    while (1)
    {
      v31 = v29 + v30;
      if (v29 + v30 == -1)
      {
        break;
      }

      if (++v30 >= v28[1].super.isa)
      {
        __break(1u);
        goto LABEL_22;
      }

      v32 = result + 40;
      sub_4C2BC(result, &v86);
      v34 = *(&v87 + 1);
      v33 = v88;
      sub_48B8(&v86, *(&v87 + 1));
      v35 = (*(v33 + 8))(a2, v79, v18, v34, v33);
      sub_4E48(&v86, v36, v37, v38, v39, v40, v41, v42);
      result = v32;
      if (v35)
      {
        v28, v21, v22, v23, v24, v25, v26, v27;
        v43 = [v35 intValue];

        goto LABEL_8;
      }
    }

    v28, v21, v22, v23, v24, v25, v26, v27;
    v43 = 0;
LABEL_8:
    v44 = v31 == -1;
    v45 = v79;
    v46._countAndFlagsBits = v79;
    v46._object = v18;
    v47 = BATracker.contentPrivateID(for:)(v46);
    if (v47.value._object)
    {
      countAndFlagsBits = v47.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v47.value._object)
    {
      object = v47.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v50._countAndFlagsBits = v45;
    v50._object = v18;
    v51 = BATracker.contentUserID(for:)(v50);
    v93 = BYTE4(v75) & 1;
    v96 = v44;
    if (v51.value._object)
    {
      v52 = v51.value._countAndFlagsBits;
    }

    else
    {
      v52 = 0;
    }

    if (v51.value._object)
    {
      v53 = v51.value._object;
    }

    else
    {
      v53 = 0xE000000000000000;
    }

    *&v86 = v45;
    *(&v86 + 1) = v18;
    LOBYTE(v87) = 2;
    *(&v87 + 1) = v97[0];
    DWORD1(v87) = *(v97 + 3);
    *(&v87 + 1) = countAndFlagsBits;
    *&v88 = object;
    *(&v88 + 1) = v52;
    *&v89 = v53;
    WORD4(v89) = 1025;
    HIDWORD(v89) = v43;
    LOBYTE(v90) = v44;
    BYTE3(v90) = v95;
    *(&v90 + 1) = v94;
    DWORD1(v90) = v75;
    BYTE8(v90) = v93;
    BYTE9(v90) = BYTE4(v74);
    *(&v90 + 10) = 33686272;
    v91 = 0uLL;
    LOBYTE(v80) = v76;
    v78 = sub_3D68(&qword_2828D0, &unk_1FD120);
    v54 = sub_1E0CB0();
    v55 = *(v54 - 8);
    v79 = *(v55 + 72);
    v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v57 = swift_allocObject();
    v76 = xmmword_1E9970;
    *(v57 + 16) = xmmword_1E9970;
    v58 = enum case for DataEventTrait.onlyOnce(_:);
    v75 = *(v55 + 104);
    v75(v57 + v56, enum case for DataEventTrait.onlyOnce(_:), v54);
    sub_1B40AC();

    sub_1E0C00();
    v57, v59, v60, v61, v62, v63, v64, v65;
    v82 = v88;
    v83 = v89;
    v84 = v90;
    v85 = v91;
    v80 = v86;
    v81 = v87;
    v66 = swift_allocObject();
    *(v66 + 16) = v76;
    v75(v66 + v56, v58, v54);
    sub_4C164();
    sub_1E0C00();
    v66, v67, v68, v69, v70, v71, v72, v73;
    sub_14424(&v86);
    type metadata accessor for ViewSupplementalContentEvent(0);
    sub_1B4100(&qword_28E288, type metadata accessor for ViewSupplementalContentEvent, protocol conformance descriptor for ViewSupplementalContentEvent);
    v80 = 0u;
    v81 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v80);
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

BAEventReporter *sub_1B2F0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t), void *a6)
{
  v100 = a4;
  *&v99 = a3;
  v10 = sub_1E1640();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = 0uLL;
  LOBYTE(v126) = 2;
  *(&v126 + 1) = 0x73694C65736F6C63;
  v127 = 0xEE00666450664F74;
  v128 = 0uLL;
  if (a6)
  {
    v14 = [a6 intValue];
  }

  else
  {
    v14 = 0;
  }

  sub_4C270();
  *v13 = sub_1E19E0();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.notOnQueue(_:), v10);
  v15 = sub_1E1660();
  result = (*(v11 + 8))(v13, v10);
  if (v15)
  {
    LODWORD(v95) = v14;
    v97 = a6;
    v98 = a5;
    v96 = a1;
    sub_3D68(&qword_281B70, &qword_1E9980);
    sub_1E1330();
    v24 = v114[0];
    result = v114[0] + 2;
    v25 = -v114[0][1].super.isa;
    v26 = -1;
    while (1)
    {
      v27 = v25 + v26;
      if (v25 + v26 == -1)
      {
        break;
      }

      if (++v26 >= v24[1].super.isa)
      {
        __break(1u);
        goto LABEL_25;
      }

      v28 = (result + 40);
      sub_4C2BC(result, v114);
      v30 = v115;
      v29 = v116;
      sub_48B8(v114, v115);
      v31 = (*(v29 + 8))(a2, v99, v100, v30, v29);
      sub_4E48(v114, v32, v33, v34, v35, v36, v37, v38);
      result = v28;
      if (v31)
      {
        v24, v17, v18, v19, v20, v21, v22, v23;
        v39 = [v31 intValue];

        goto LABEL_11;
      }
    }

    v24, v17, v18, v19, v20, v21, v22, v23;
    v39 = 0;
LABEL_11:
    v40 = v27 == -1;
    v41 = v97 == 0;
    v42 = v99;
    v43._countAndFlagsBits = v99;
    v44 = v100;
    v43._object = v100;
    v45 = BATracker.contentPrivateID(for:)(v43);
    if (v45.value._object)
    {
      countAndFlagsBits = v45.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v45.value._object)
    {
      object = v45.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v48._countAndFlagsBits = v42;
    v48._object = v44;
    v49 = BATracker.contentUserID(for:)(v48);
    v123 = v40;
    v120 = v41;
    if (v49.value._object)
    {
      v50 = v49.value._countAndFlagsBits;
    }

    else
    {
      v50 = 0;
    }

    if (v49.value._object)
    {
      v51 = v49.value._object;
    }

    else
    {
      v51 = 0xE000000000000000;
    }

    *&v108 = v42;
    *(&v108 + 1) = v44;
    LOBYTE(v109) = 3;
    *(&v109 + 1) = *v124;
    DWORD1(v109) = *&v124[3];
    *(&v109 + 1) = countAndFlagsBits;
    *&v110 = object;
    *(&v110 + 1) = v50;
    *&v111 = v51;
    WORD4(v111) = 1025;
    HIDWORD(v111) = v39;
    LOBYTE(v112) = v40;
    BYTE3(v112) = v122;
    *(&v112 + 1) = v121;
    DWORD1(v112) = v95;
    BYTE8(v112) = v120;
    *(&v112 + 9) = 33751044;
    BYTE13(v112) = 2;
    v113 = 0uLL;
    LOBYTE(v114[0]) = 0;
    HIDWORD(v114[0]) = 0;
    v114[1] = 0;
    v114[2] = 0xE000000000000000;
    v115 = 0;
    v116 = 0xE000000000000000;
    v117 = 0;
    *&v118[0] = 0xE000000000000000;
    DWORD2(v118[2]) = 0;
    *(&v118[1] + 8) = 0u;
    *(v118 + 8) = 0u;
    BYTE12(v118[2]) = 1;
    *&v119 = 0;
    *(&v119 + 1) = 0xE000000000000000;
    v101 = LODWORD(v114[0]);
    v102 = 0xE000000000000000;
    v103 = 0xE000000000000000;
    v104 = v118[0];
    v106 = v118[2];
    v107 = v119;
    v105 = v118[1];
    v95 = sub_3D68(&qword_2828D0, &unk_1FD120);
    v52 = sub_1E0CB0();
    v53 = *(v52 - 8);
    v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v55 = *(v53 + 72);
    v56 = swift_allocObject();
    v99 = xmmword_1E9970;
    *(v56 + 16) = xmmword_1E9970;
    LODWORD(v97) = enum case for DataEventTrait.onlyOnce(_:);
    v98 = *(v53 + 104);
    v93 = v52;
    v98(v56 + v54);
    v92[1] = "v44@0:8@16@24B32@36";
    sub_14D258();

    sub_1E0C00();
    v56, v57, v58, v59, v60, v61, v62, v63;
    sub_28354(v114);
    v101 = xmmword_20CB10;
    *&v102 = 0x6450664F7473696CLL;
    *(&v102 + 1) = 0xE900000000000066;
    v94 = v55;
    v64 = swift_allocObject();
    *(v64 + 16) = v99;
    v65 = v97;
    (v98)(v64 + v54, v97, v52);
    sub_1B4004();
    sub_1E0C00();
    swift_bridgeObjectRelease_n();
    v64, v66, v67, v68, v69, v70, v71, v72;
    v101 = v125;
    v102 = v126;
    v103 = v127;
    v104 = v128;
    v73 = swift_allocObject();
    *(v73 + 16) = v99;
    v74 = v65;
    v75 = v93;
    v76 = v98;
    (v98)(v73 + v54, v74, v93);
    sub_1B4058();
    sub_1E0C00();
    v73, v77, v78, v79, v80, v81, v82, v83;
    sub_B5218(&v125);
    v103 = v110;
    v104 = v111;
    v105 = v112;
    v106 = v113;
    v101 = v108;
    v102 = v109;
    v84 = swift_allocObject();
    *(v84 + 16) = v99;
    (v76)(v84 + v54, v97, v75);
    sub_4C164();
    sub_1E0C00();
    v84, v85, v86, v87, v88, v89, v90, v91;
    sub_14424(&v108);
    type metadata accessor for ClickEvent(0);
    sub_1B4100(&qword_28E278, type metadata accessor for ClickEvent, protocol conformance descriptor for ClickEvent);
    v101 = 0u;
    v102 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v101);
  }

  else
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_1B3680(void *a1, uint64_t a2, objc_class *a3, objc_class *a4, uint64_t a5, uint64_t a6, objc_class *a7, uint64_t a8)
{
  v14 = a1;
  if (a1 || (v14 = sub_BFB78()) != 0)
  {
    v15 = swift_allocObject();
    v15[1].super.isa = v8;
    *v15[1].dataProviders = a2;
    v15[2].super.isa = a3;
    *v15[2].dataProviders = v14;
    v15[3].super.isa = a4;
    v16 = swift_allocObject();
    v16[1].super.isa = a7;
    *v16[1].dataProviders = v15;
    v17 = a4;

    v18 = a1;
    v19 = v8;

    v20 = v14;
    sub_1E10C0();

    v15, v21, v22, v23, v24, v25, v26, v27;

    v16, v28, v29, v30, v31, v32, v33, v34;
  }
}

uint64_t sub_1B37A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char *a6)
{
  v89 = a4;
  *&v88 = a3;
  v10 = sub_1E1640();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v111 = 0;
  *(&v111 + 1) = 0xE000000000000000;
  v112 = 0u;
  v113 = 0u;
  LOBYTE(v114[0]) = 2;
  memset(v114 + 8, 0, 96);
  if (a6)
  {
    v14 = [a6 intValue];
  }

  else
  {
    v14 = 0;
  }

  sub_4C270();
  *v13 = sub_1E19E0();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.notOnQueue(_:), v10);
  v15 = sub_1E1660();
  result = (*(v11 + 8))(v13, v10);
  if (v15)
  {
    v84 = v14;
    v86 = a6;
    v87 = a5;
    v85 = a1;
    sub_3D68(&qword_281B70, &qword_1E9980);
    sub_1E1330();
    v24 = v90;
    result = v90 + 32;
    v25 = -*(v90 + 16);
    v26 = -1;
    while (1)
    {
      v27 = v25 + v26;
      if (v25 + v26 == -1)
      {
        break;
      }

      if (++v26 >= v24[1].super.isa)
      {
        __break(1u);
        goto LABEL_25;
      }

      v28 = result + 40;
      sub_4C2BC(result, &v90);
      v30 = *(&v91 + 1);
      v29 = v92;
      sub_48B8(&v90, *(&v91 + 1));
      v31 = (*(v29 + 8))(a2, v88, v89, v30, v29);
      sub_4E48(&v90, v32, v33, v34, v35, v36, v37, v38);
      result = v28;
      if (v31)
      {
        v24, v17, v18, v19, v20, v21, v22, v23;
        v39 = [v31 intValue];

        goto LABEL_11;
      }
    }

    v24, v17, v18, v19, v20, v21, v22, v23;
    v39 = 0;
LABEL_11:
    v40 = v27 == -1;
    v41 = v86 == 0;
    v42 = v88;
    v43._countAndFlagsBits = v88;
    v44 = v89;
    v43._object = v89;
    v45 = BATracker.contentPrivateID(for:)(v43);
    if (v45.value._object)
    {
      countAndFlagsBits = v45.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v45.value._object)
    {
      object = v45.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v48._countAndFlagsBits = v42;
    v48._object = v44;
    v49 = BATracker.contentUserID(for:)(v48);
    v109 = v40;
    v106 = v41;
    if (v49.value._object)
    {
      v50 = v49.value._countAndFlagsBits;
    }

    else
    {
      v50 = 0;
    }

    if (v49.value._object)
    {
      v51 = v49.value._object;
    }

    else
    {
      v51 = 0xE000000000000000;
    }

    *&v100 = v42;
    *(&v100 + 1) = v44;
    LOBYTE(v101) = 3;
    *(&v101 + 1) = *v110;
    DWORD1(v101) = *&v110[3];
    *(&v101 + 1) = countAndFlagsBits;
    *&v102 = object;
    *(&v102 + 1) = v50;
    *&v103 = v51;
    WORD4(v103) = 1025;
    HIDWORD(v103) = v39;
    LOBYTE(v104) = v40;
    BYTE3(v104) = v108;
    *(&v104 + 1) = v107;
    DWORD1(v104) = v84;
    BYTE8(v104) = v106;
    *(&v104 + 9) = 33751044;
    BYTE13(v104) = 2;
    v105 = 0uLL;
    v96 = v114[3];
    v97 = v114[4];
    v98 = v114[5];
    v99 = *&v114[6];
    v92 = v113;
    v93 = v114[0];
    v94 = v114[1];
    v95 = v114[2];
    v90 = v111;
    v91 = v112;
    v87 = sub_3D68(&qword_2828D0, &unk_1FD120);
    v52 = sub_1E0CB0();
    v53 = *(v52 - 8);
    v86 = *(v53 + 72);
    v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v55 = swift_allocObject();
    v88 = xmmword_1E9970;
    *(v55 + 16) = xmmword_1E9970;
    v56 = enum case for DataEventTrait.onlyOnce(_:);
    v83 = *(v53 + 104);
    v84 = enum case for DataEventTrait.onlyOnce(_:);
    v83(v55 + v54, enum case for DataEventTrait.onlyOnce(_:), v52);
    sub_98A8C();

    sub_1E0C00();
    v55, v57, v58, v59, v60, v61, v62, v63;
    sub_283A8(&v111);
    v90 = xmmword_20CB10;
    *&v91 = 0x6450664F7473696CLL;
    *(&v91 + 1) = 0xE900000000000066;
    v64 = swift_allocObject();
    *(v64 + 16) = v88;
    v65 = v56;
    v66 = v83;
    v83(v64 + v54, v65, v52);
    sub_1B4004();
    sub_1E0C00();
    swift_bridgeObjectRelease_n();
    v64, v67, v68, v69, v70, v71, v72, v73;
    v92 = v102;
    v93 = v103;
    v94 = v104;
    v95 = v105;
    v90 = v100;
    v91 = v101;
    v74 = swift_allocObject();
    *(v74 + 16) = v88;
    v66(v74 + v54, v84, v52);
    sub_4C164();
    sub_1E0C00();
    v74, v75, v76, v77, v78, v79, v80, v81;
    sub_14424(&v100);
    type metadata accessor for PageViewEvent(0);
    sub_1B4100(&qword_28E268, type metadata accessor for PageViewEvent, protocol conformance descriptor for PageViewEvent);
    v90 = 0u;
    v91 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v90);
  }

  else
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_1B3E0C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(void *, uint64_t, BAEventReporter *, void *))
{
  v10 = sub_1E1780();
  v12 = v11;
  v13 = a3;
  v14 = a5;
  v15 = a1;
  a6(a3, v10, v12, a5);

  v12, v16, v17, v18, v19, v20, v21, v22;
}

uint64_t sub_1B3EBC()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 54, 7);
}

uint64_t sub_1B3F4C(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_1B3F84()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1B4004()
{
  result = qword_28E260;
  if (!qword_28E260)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PageData, &type metadata for PageData, v0, v1);
    atomic_store(result, &qword_28E260);
  }

  return result;
}

unint64_t sub_1B4058()
{
  result = qword_28E270;
  if (!qword_28E270)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ClickData, &type metadata for ClickData, v0, v1);
    atomic_store(result, &qword_28E270);
  }

  return result;
}

unint64_t sub_1B40AC()
{
  result = qword_28E280;
  if (!qword_28E280)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewSourceData, &type metadata for ViewSourceData, v0, v1);
    atomic_store(result, &qword_28E280);
  }

  return result;
}

uint64_t sub_1B4100(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LoveEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LoveEvent(0) + 20);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LoveEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LoveEvent(0) + 20);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LoveEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LoveEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LoveEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LoveEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LoveEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for LoveEvent(0);
  v5 = *(v4 + 20);
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = *(v4 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v8, v2, v9);
}

uint64_t LoveEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LoveEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LoveEvent.Model.init(contentData:suggestionData:eventData:)@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v7;
  v8 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v8;
  v9 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v9;
  *(a4 + 96) = v6;
  v10 = *(type metadata accessor for LoveEvent.Model(0) + 24);
  v11 = sub_1E1150();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t sub_1B476C()
{
  v1 = 0x6974736567677573;
  if (*v0 != 1)
  {
    v1 = 0x746144746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44746E65746E6F63;
  }
}

uint64_t sub_1B47E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1B59F4(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1B4808(uint64_t a1)
{
  v2 = sub_1B4B18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1B4844(uint64_t a1)
{
  v2 = sub_1B4B18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LoveEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28E2C0, &qword_20CB20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-v6];
  sub_48B8(a1, a1[3]);
  sub_1B4B18();
  sub_1E1E00();
  v8 = v2[2];
  v9 = v2[4];
  v34 = v2[3];
  v35 = v9;
  v10 = v2[4];
  v36 = v2[5];
  v11 = *v2;
  v12 = v2[2];
  v32 = v2[1];
  v33 = v12;
  v13 = *v2;
  v28 = v34;
  v29 = v10;
  v30 = v2[5];
  v31 = v13;
  v25 = v11;
  v26 = v32;
  v27 = v8;
  v24 = 0;
  sub_13A5C(&v31, &v18);
  sub_143D0();
  v14 = v37;
  sub_1E1CF0();
  if (v14)
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_14424(&v18);
  }

  else
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_14424(&v18);
    v17 = *(v2 + 96);
    v16[14] = 1;
    sub_284F8();
    sub_1E1C80();
    type metadata accessor for LoveEvent.Model(0);
    v17 = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B4B18()
{
  result = qword_28E2C8;
  if (!qword_28E2C8)
  {
    result = swift_getWitnessTable(byte_20CCE0, &type metadata for LoveEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E2C8);
  }

  return result;
}

void LoveEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_1E1150();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_3D68(&qword_28E2D0, &qword_20CB28);
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = &v33 - v7;
  v9 = type metadata accessor for LoveEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v38 = a1;
  sub_48B8(a1, v12);
  sub_1B4B18();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v38, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v33 = v9;
    v20 = v36;
    v21 = v6;
    v47 = 0;
    sub_14CB8();
    v22 = v37;
    sub_1E1C20();
    v23 = v43;
    *(v11 + 2) = v42;
    *(v11 + 3) = v23;
    v24 = v45;
    *(v11 + 4) = v44;
    *(v11 + 5) = v24;
    v25 = v41;
    *v11 = v40;
    *(v11 + 1) = v25;
    v46 = 1;
    sub_28F9C();
    sub_1E1BB0();
    v11[96] = v39[0];
    LOBYTE(v39[0]) = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v8, v22);
    (*(v34 + 32))(&v11[*(v33 + 24)], v21, v4);
    sub_1B4F64(v11, v35);
    sub_4E48(v38, v26, v27, v28, v29, v30, v31, v32);
    sub_1B4FC8(v11);
  }
}

uint64_t sub_1B4F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoveEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4FC8(uint64_t a1)
{
  v2 = type metadata accessor for LoveEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B50C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = *(a1 + 24);
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v9, v4, v10);
}

uint64_t sub_1B5210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1B5388(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_1B54F8(uint64_t a1)
{
  sub_1B5604(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_1B5604(319, &unk_27EAF8, sub_28F9C, sub_284F8, &type metadata for SuggestionData);
    if (v2 <= 0x3F)
    {
      sub_5684(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B5604(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B5694(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B5754(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1B57F8(uint64_t a1)
{
  sub_1B588C();
  if (v1 <= 0x3F)
  {
    sub_1E1150();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B588C()
{
  if (!qword_27EBD8)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_27EBD8);
    }
  }
}

unint64_t sub_1B58F0()
{
  result = qword_28E408;
  if (!qword_28E408)
  {
    result = swift_getWitnessTable(byte_20CCB8, &type metadata for LoveEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E408);
  }

  return result;
}

unint64_t sub_1B5948()
{
  result = qword_28E410;
  if (!qword_28E410)
  {
    result = swift_getWitnessTable(byte_20CC28, &type metadata for LoveEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E410);
  }

  return result;
}

unint64_t sub_1B59A0()
{
  result = qword_28E418;
  if (!qword_28E418)
  {
    result = swift_getWitnessTable(byte_20CC50, &type metadata for LoveEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E418);
  }

  return result;
}

uint64_t sub_1B59F4(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000617461;
  v11 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0xEE00617461446E6FLL;
    if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v13, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v14 = sub_1E1D30();
      a2, v15, v16, v17, v18, v19, v20, v21;
      if (v14)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t TabViewEvent.tabData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_28E450, &qword_20CD30);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TabViewEvent.tabData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_28E450, &qword_20CD30);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TabViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TabViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TabViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TabViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TabViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TabViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TabViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TabViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TabViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_28E450, &qword_20CD30);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for TabViewEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t TabViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TabViewEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TabViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TabViewEvent.Model(0) + 24);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TabViewEvent.Model.init(tabData:eventData:timedData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for TabViewEvent.Model(0);
  v8 = *(v7 + 20);
  v9 = sub_1E1150();
  (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  v10 = *(v7 + 24);
  v11 = sub_1E11A0();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a4[v10], a3, v11);
}

uint64_t sub_1B62B4()
{
  v1 = 0x746144746E657665;
  if (*v0 != 1)
  {
    v1 = 0x74614464656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61746144626174;
  }
}

uint64_t sub_1B6318@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1B7550(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1B6340(uint64_t a1)
{
  v2 = sub_1B6600();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1B637C(uint64_t a1)
{
  v2 = sub_1B6600();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TabViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28E458, &qword_20CD38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_48B8(a1, a1[3]);
  sub_1B6600();
  sub_1E1E00();
  v10[15] = *v3;
  v10[14] = 0;
  sub_19FDD0();
  sub_1E1CF0();
  if (!v2)
  {
    type metadata accessor for TabViewEvent.Model(0);
    v10[13] = 1;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v10[12] = 2;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B6600()
{
  result = qword_28E460;
  if (!qword_28E460)
  {
    result = swift_getWitnessTable(asc_20CEFC, &type metadata for TabViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E460);
  }

  return result;
}

void TabViewEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v42 = sub_1E11A0();
  v37 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1150();
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_3D68(&qword_28E468, &qword_20CD40);
  v40 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v34 - v7;
  v9 = type metadata accessor for TabViewEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_1B6600();
  v43 = v8;
  v12 = v45;
  sub_1E1DF0();
  if (v12)
  {
    sub_4E48(a1, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v20 = v11;
    v45 = a1;
    v22 = v40;
    v21 = v41;
    v23 = v42;
    v48 = 0;
    sub_19FD78();
    sub_1E1C20();
    v36 = v20;
    *v20 = v49;
    v47 = 1;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    v24 = *(v21 + 32);
    v25 = v36;
    v35 = *(v9 + 20);
    v24(&v36[v35], v6, v4);
    v46 = 2;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v26 = v39;
    sub_1E1C20();
    (*(v22 + 8))(v43, v44);
    (*(v37 + 32))(v25 + *(v9 + 24), v26, v23);
    sub_1B6ABC(v25, v38);
    sub_4E48(v45, v27, v28, v29, v30, v31, v32, v33);
    sub_1B6B20(v25);
  }
}

uint64_t sub_1B6ABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6B20(uint64_t a1)
{
  v2 = type metadata accessor for TabViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B6C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_28E450, &qword_20CD30);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_1B6D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_28E450, &qword_20CD30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1B6ECC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_28E450, &qword_20CD30);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_1B703C(uint64_t a1)
{
  sub_1B70D8(319);
  if (v1 <= 0x3F)
  {
    sub_5684(319);
    if (v2 <= 0x3F)
    {
      sub_5750(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B70D8(uint64_t a1)
{
  if (!qword_28E4D8)
  {
    sub_19FD78();
    sub_19FDD0();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_28E4D8);
    }
  }
}

uint64_t sub_1B7154(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 249)
  {
    v4 = *a1;
    if (v4 >= 7)
    {
      return v4 - 6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 20)];

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = &a1[*(a3 + 24)];

      return v14(v15, a2, v13);
    }
  }
}

_BYTE *sub_1B7284(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 249)
  {
    *result = a2 + 6;
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B73A4(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    result = sub_1E11A0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B744C()
{
  result = qword_28E5A8;
  if (!qword_28E5A8)
  {
    result = swift_getWitnessTable(byte_20CED4, &type metadata for TabViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E5A8);
  }

  return result;
}

unint64_t sub_1B74A4()
{
  result = qword_28E5B0;
  if (!qword_28E5B0)
  {
    result = swift_getWitnessTable(byte_20CE44, &type metadata for TabViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E5B0);
  }

  return result;
}

unint64_t sub_1B74FC()
{
  result = qword_28E5B8;
  if (!qword_28E5B8)
  {
    result = swift_getWitnessTable(byte_20CE6C, &type metadata for TabViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E5B8);
  }

  return result;
}

uint64_t sub_1B7550(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x61746144626174 && a2 == 0xE700000000000000;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = sub_1E1D30();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t static RatingData.== infix(_:_:)(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = *a1;
  v10 = 0xE700000000000000;
  v11 = *a2;
  v12 = 0xE500000000000000;
  v13 = 0x6565726874;
  v14 = 1920298854;
  if (v9 != 4)
  {
    v14 = 1702259046;
  }

  if (v9 != 3)
  {
    v13 = v14;
    v12 = 0xE400000000000000;
  }

  v15 = 6647407;
  if (v9 != 1)
  {
    v15 = 7305076;
  }

  if (*a1)
  {
    v10 = 0xE300000000000000;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (*a1 <= 2u)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (v9 <= 2)
  {
    v17 = v10;
  }

  else
  {
    v17 = v12;
  }

  if (*a2 > 2u)
  {
    if (v11 == 3)
    {
      v18 = 0xE500000000000000;
      v8 = 0x6565726874;
      if (v16 != 0x6565726874)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v18 = 0xE400000000000000;
      if (v11 == 4)
      {
        v8 = 1920298854;
        if (v16 != 1920298854)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v8 = 1702259046;
        if (v16 != 1702259046)
        {
LABEL_34:
          v19 = sub_1E1D30();
          goto LABEL_35;
        }
      }
    }
  }

  else if (*a2)
  {
    v18 = 0xE300000000000000;
    if (v11 == 1)
    {
      v8 = 6647407;
      if (v16 != 6647407)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v8 = 7305076;
      if (v16 != 7305076)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v18 = 0xE700000000000000;
    if (v16 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v17 != v18)
  {
    goto LABEL_34;
  }

  v19 = 1;
LABEL_35:
  v17, a2, v8, a4, a5, a6, a7, a8;
  v18, v20, v21, v22, v23, v24, v25, v26;
  return v19 & 1;
}

void sub_1B7824(void *a1@<X0>, BAEventReporter *a2@<X1>, void *a3@<X3>, void *a4@<X4>, int64_t a5@<X5>, int64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x676E69746172 && a2 == 0xE600000000000000)
  {
    a2, a2, a1, a3, a4, a5, a6, a7;
    v19 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a8 = v19 & 1;
}

uint64_t sub_1B78A8(uint64_t a1)
{
  v2 = sub_1B7A6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1B78E4(uint64_t a1)
{
  v2 = sub_1B7A6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RatingData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28E5C0, &qword_20CF50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_1B7A6C();
  sub_1E1E00();
  v10 = v7;
  sub_1B7AC0();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B7A6C()
{
  result = qword_28E5C8;
  if (!qword_28E5C8)
  {
    result = swift_getWitnessTable(aU_26, &type metadata for RatingData.CodingKeys, v0, v1);
    atomic_store(result, &qword_28E5C8);
  }

  return result;
}

unint64_t sub_1B7AC0()
{
  result = qword_28E5D0;
  if (!qword_28E5D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Rating, &type metadata for Rating, v0, v1);
    atomic_store(result, &qword_28E5D0);
  }

  return result;
}

void RatingData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28E5D8, &qword_20CF58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_1B7A6C();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1B7C80();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}