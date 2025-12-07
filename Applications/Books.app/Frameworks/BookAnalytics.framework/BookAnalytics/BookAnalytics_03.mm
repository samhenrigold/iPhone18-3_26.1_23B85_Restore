uint64_t PlayEvent.Model.listeningSessionData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v7[0] = v1[6];
  v7[1] = v2;
  v8[0] = v1[8];
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 138);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_3D9DC(v7, &v6);
}

void PlayEvent.Model.bitRateData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 164);
  *a1 = *(v1 + 156);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
}

uint64_t PlayEvent.Model.errorData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[22];
  v3 = v1[23];
  v4 = v1[24];
  *a1 = v1[21];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t PlayEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  *a1 = *(v1 + 200);
  *(a1 + 16) = v2;
}

uint64_t PlayEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[29];
  v3 = v1[30];
  v4 = v1[31];
  v5 = v1[32];
  v6 = v1[33];
  v7 = v1[34];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t PlayEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent.Model(0) + 48);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent.Model(0) + 52);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.Model.userEmbeddingData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for PlayEvent.Model(0) + 56));
}

uint64_t PlayEvent.Model.init(contentData:listeningSessionData:listeningActionSourceData:bitRateData:errorData:upSellData:doNotDisturbData:seriesData:eventData:timedData:userEmbeddingData:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, __int16 *a3@<X2>, int *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, __int16 *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v13 = *a3;
  v14 = *a4;
  v15 = *(a4 + 4);
  v16 = a4[2];
  v17 = *a5;
  v18 = *(a5 + 2);
  v19 = *(a5 + 3);
  v20 = *(a6 + 16);
  v21 = *a7;
  v22 = *a12;
  v23 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v23;
  v24 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v24;
  v25 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v25;
  v26 = a2[1];
  *(a9 + 96) = *a2;
  *(a9 + 112) = v26;
  *(a9 + 128) = a2[2];
  *(a9 + 138) = *(a2 + 42);
  *(a9 + 154) = v13;
  *(a9 + 156) = v14;
  *(a9 + 160) = v15;
  *(a9 + 164) = v16;
  *(a9 + 168) = v17;
  *(a9 + 184) = v18;
  *(a9 + 192) = v19;
  *(a9 + 200) = *a6;
  *(a9 + 216) = v20;
  *(a9 + 224) = v21;
  v27 = a8[1];
  *(a9 + 232) = *a8;
  *(a9 + 248) = v27;
  *(a9 + 264) = a8[2];
  v28 = type metadata accessor for PlayEvent.Model(0);
  v29 = v28[12];
  v30 = sub_1E1150();
  (*(*(v30 - 8) + 32))(a9 + v29, a10, v30);
  v31 = v28[13];
  v32 = sub_1E11A0();
  result = (*(*(v32 - 8) + 32))(a9 + v31, a11, v32);
  *(a9 + v28[14]) = v22;
  return result;
}

unint64_t sub_3DD9C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x44746E65746E6F63;
    v7 = 0xD000000000000019;
    v8 = 0x4465746152746962;
    if (a1 != 3)
    {
      v8 = 0x746144726F727265;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x74614464656D6974;
    if (a1 != 9)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x61446C6C65537075;
    v4 = 0xD000000000000010;
    if (a1 != 6)
    {
      v4 = 0x6144736569726573;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_3DF30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_40920(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_3DF58(uint64_t a1)
{
  v2 = sub_3E5E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_3DF94(uint64_t a1)
{
  v2 = sub_3E5E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PlayEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_27F8E8, &qword_1E8E10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v62 - v7;
  sub_48B8(a1, a1[3]);
  sub_3E5E4();
  sub_1E1E00();
  v9 = *(v3 + 48);
  v10 = *(v3 + 16);
  v85 = *(v3 + 32);
  v86 = v9;
  v11 = *(v3 + 48);
  v12 = *(v3 + 80);
  v87 = *(v3 + 64);
  v88 = v12;
  v13 = *(v3 + 16);
  v84[0] = *v3;
  v84[1] = v13;
  v80 = v85;
  v81 = v11;
  v14 = *(v3 + 80);
  v82 = v87;
  v83 = v14;
  v78 = v84[0];
  v79 = v10;
  v77 = 0;
  sub_13A5C(v84, v76);
  sub_143D0();
  sub_1E1CF0();
  v76[2] = v80;
  v76[3] = v81;
  v76[4] = v82;
  v76[5] = v83;
  v76[0] = v78;
  v76[1] = v79;
  sub_14424(v76);
  if (!v2)
  {
    v15 = *(v3 + 112);
    v74[0] = *(v3 + 96);
    v74[1] = v15;
    v17 = *(v3 + 96);
    v16 = *(v3 + 112);
    v75[0] = *(v3 + 128);
    *(v75 + 10) = *(v3 + 138);
    v71 = v17;
    v72 = v16;
    v73[0] = *(v3 + 128);
    *(v73 + 10) = *(v3 + 138);
    v70 = 1;
    sub_3D9DC(v74, v68);
    sub_3E638();
    sub_1E1CF0();
    v68[0] = v71;
    v68[1] = v72;
    *v69 = v73[0];
    *&v69[10] = *(v73 + 10);
    sub_3E68C(v68);
    LOWORD(v62) = *(v3 + 154);
    v67 = 2;
    sub_14520();
    sub_1E1CF0();
    v18 = *(v3 + 160);
    v19 = *(v3 + 164);
    LODWORD(v62) = *(v3 + 156);
    BYTE4(v62) = v18;
    DWORD2(v62) = v19;
    v67 = 3;
    sub_14574();
    sub_1E1CF0();
    v20 = *(v3 + 176);
    v21 = *(v3 + 184);
    v22 = *(v3 + 192);
    *&v62 = *(v3 + 168);
    *(&v62 + 1) = v20;
    v63 = v21;
    v64 = v22;
    v67 = 4;
    sub_145C8();

    sub_1E1CF0();
    v23 = *(&v62 + 1);
    v64, v24, v25, v26, v27, v28, v29, v30;
    v23, v31, v32, v33, v34, v35, v36, v37;
    v38 = *(v3 + 216);
    v62 = *(v3 + 200);
    v63 = v38;
    v67 = 5;
    sub_28450();

    sub_1E1C80();
    v63, v47, v48, v49, v50, v51, v52, v53;
    LOWORD(v62) = *(v3 + 224);
    v67 = 6;
    sub_3E6E0();
    sub_1E1CF0();
    v54 = *(v3 + 240);
    v55 = *(v3 + 248);
    v56 = *(v3 + 256);
    v57 = *(v3 + 264);
    v58 = *(v3 + 272);
    *&v62 = *(v3 + 232);
    *(&v62 + 1) = v54;
    v63 = v55;
    v64 = v56;
    v65 = v57;
    v66 = v58;
    v67 = 7;
    sub_13BDC(v62, v54, v55, v56, v57, v58);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v62, *(&v62 + 1), v63, v64, v65, v66, v59, v60);
    v61 = type metadata accessor for PlayEvent.Model(0);
    LOBYTE(v62) = 8;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    LOBYTE(v62) = 9;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
    *&v62 = *(v3 + *(v61 + 56));
    v67 = 10;
    sub_3E734();

    sub_1E1C80();
    v62, v39, v40, v41, v42, v43, v44, v45;
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_3E5E4()
{
  result = qword_27F8F0;
  if (!qword_27F8F0)
  {
    result = swift_getWitnessTable("AF\a", &type metadata for PlayEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F8F0);
  }

  return result;
}

unint64_t sub_3E638()
{
  result = qword_27F8F8;
  if (!qword_27F8F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListeningSessionData, &type metadata for ListeningSessionData, v0, v1);
    atomic_store(result, &qword_27F8F8);
  }

  return result;
}

unint64_t sub_3E6E0()
{
  result = qword_27F900;
  if (!qword_27F900)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DoNotDisturbData, &type metadata for DoNotDisturbData, v0, v1);
    atomic_store(result, &qword_27F900);
  }

  return result;
}

unint64_t sub_3E734()
{
  result = qword_27F908;
  if (!qword_27F908)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserEmbeddingData, &type metadata for UserEmbeddingData, v0, v1);
    atomic_store(result, &qword_27F908);
  }

  return result;
}

void PlayEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v49 = sub_1E11A0();
  v46 = *(v49 - 8);
  __chkstk_darwin(v49);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v47 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_3D68(&qword_27F910, &qword_1E8E18);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v9 = v42 - v8;
  v10 = type metadata accessor for PlayEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v68 = a1;
  sub_48B8(a1, v13);
  sub_3E5E4();
  v51 = v9;
  v14 = v52;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(v68, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v22 = v7;
    v43 = v4;
    v23 = v48;
    v44 = v10;
    v52 = v5;
    v24 = v49;
    v61 = 0;
    sub_14CB8();
    sub_1E1C20();
    v25 = v65;
    *(v12 + 2) = v64;
    *(v12 + 3) = v25;
    v26 = v67;
    *(v12 + 4) = v66;
    *(v12 + 5) = v26;
    v27 = v63;
    *v12 = v62;
    *(v12 + 1) = v27;
    v57 = 1;
    sub_3F258();
    sub_1E1C20();
    v28 = v59;
    *(v12 + 6) = v58;
    *(v12 + 7) = v28;
    *(v12 + 8) = *v60;
    *(v12 + 138) = *&v60[10];
    v56 = 2;
    sub_14D60();
    sub_1E1C20();
    *(v12 + 77) = v53;
    v56 = 3;
    sub_14DB4();
    sub_1E1C20();
    v29 = BYTE4(v53);
    v30 = DWORD2(v53);
    *(v12 + 39) = v53;
    v12[160] = v29;
    *(v12 + 41) = v30;
    v56 = 4;
    sub_14E08();
    sub_1E1C20();
    v31 = v54;
    *(v12 + 168) = v53;
    *(v12 + 184) = v31;
    v56 = 5;
    sub_28EF4();
    sub_1E1BB0();
    v32 = v54;
    *(v12 + 200) = v53;
    *(v12 + 27) = v32;
    v56 = 6;
    sub_3F2AC();
    sub_1E1C20();
    *(v12 + 112) = v53;
    v56 = 7;
    sub_DAD8();
    sub_1E1BB0();
    v42[3] = 1;
    v33 = v54;
    *(v12 + 232) = v53;
    *(v12 + 248) = v33;
    *(v12 + 264) = v55;
    LOBYTE(v53) = 8;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v34 = v52;
    sub_1E1C20();
    (*(v47 + 32))(&v12[v44[12]], v22, v34);
    LOBYTE(v53) = 9;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1C20();
    (*(v46 + 32))(&v12[v44[13]], v43, v24);
    v56 = 10;
    sub_3F300();
    sub_1E1BB0();
    (*(v23 + 8))(v51, v50);
    *&v12[v44[14]] = v53;
    sub_3F354(v12, v45);
    sub_4E48(v68, v35, v36, v37, v38, v39, v40, v41);
    sub_3F3B8(v12);
  }
}

unint64_t sub_3F258()
{
  result = qword_27F918;
  if (!qword_27F918)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListeningSessionData, &type metadata for ListeningSessionData, v0, v1);
    atomic_store(result, &qword_27F918);
  }

  return result;
}

unint64_t sub_3F2AC()
{
  result = qword_27F920;
  if (!qword_27F920)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DoNotDisturbData, &type metadata for DoNotDisturbData, v0, v1);
    atomic_store(result, &qword_27F920);
  }

  return result;
}

unint64_t sub_3F300()
{
  result = qword_27F928;
  if (!qword_27F928)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserEmbeddingData, &type metadata for UserEmbeddingData, v0, v1);
    atomic_store(result, &qword_27F928);
  }

  return result;
}

uint64_t sub_3F354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3F3B8(uint64_t a1)
{
  v2 = type metadata accessor for PlayEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3F4B4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = enum case for EventProperty.optional<A>(_:);
  v16 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v20 - 8) + 104))(a2 + v19, v15, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  v24 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  v26 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v15, v26);
}

uint64_t sub_3F860(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_22:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_21:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_22;
  }

  v14 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_21;
  }

  v15 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_21;
  }

  v16 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_21;
  }

  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_21;
  }

  v18 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_21;
  }

  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_21;
  }

  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_21;
  }

  v21 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_21;
  }

  v23 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v24 = *(*(v23 - 8) + 48);
  v25 = a1 + a3[14];

  return v24(v25, a2, v23);
}

uint64_t sub_3FC78(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_22:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_21:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_22;
  }

  v16 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_21;
  }

  v17 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_21;
  }

  v18 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_21;
  }

  v19 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_21;
  }

  v20 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_21;
  }

  v21 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_21;
  }

  v22 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_21;
  }

  v23 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_21;
  }

  v25 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v26 = *(*(v25 - 8) + 56);
  v27 = a1 + a4[14];

  return v26(v27, a2, a2, v25);
}

void sub_40088(uint64_t a1)
{
  sub_403DC(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_403DC(319, &qword_27F998, sub_3F258, sub_3E638, &type metadata for ListeningSessionData);
    if (v2 <= 0x3F)
    {
      sub_403DC(319, &qword_27E2D8, sub_14D60, sub_14520, &type metadata for ListeningActionSourceData);
      if (v3 <= 0x3F)
      {
        sub_403DC(319, &qword_27E2E0, sub_14DB4, sub_14574, &type metadata for BitRateData);
        if (v4 <= 0x3F)
        {
          sub_403DC(319, &unk_27E2E8, sub_14E08, sub_145C8, &type metadata for ErrorData);
          if (v5 <= 0x3F)
          {
            sub_403DC(319, &qword_27EAE8, sub_28EF4, sub_28450, &type metadata for UpSellData);
            if (v6 <= 0x3F)
            {
              sub_403DC(319, &qword_27F9A0, sub_3F2AC, sub_3E6E0, &type metadata for DoNotDisturbData);
              if (v7 <= 0x3F)
              {
                sub_403DC(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
                if (v8 <= 0x3F)
                {
                  sub_5684(319);
                  if (v9 <= 0x3F)
                  {
                    sub_5750(319);
                    if (v10 <= 0x3F)
                    {
                      sub_403DC(319, &unk_27F9A8, sub_3F300, sub_3E734, &type metadata for UserEmbeddingData);
                      if (v11 <= 0x3F)
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
  }
}

void sub_403DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_4046C(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_405A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_406C8(uint64_t a1)
{
  sub_19FE0(319, &qword_27EBC8, &type metadata for UpSellData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_27E398, &type metadata for SeriesData);
    if (v2 <= 0x3F)
    {
      sub_1E1150();
      if (v3 <= 0x3F)
      {
        sub_1E11A0();
        if (v4 <= 0x3F)
        {
          sub_19FE0(319, &unk_27FA68, &type metadata for UserEmbeddingData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_4081C()
{
  result = qword_27FAC0;
  if (!qword_27FAC0)
  {
    result = swift_getWitnessTable("YF\a", &type metadata for PlayEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FAC0);
  }

  return result;
}

unint64_t sub_40874()
{
  result = qword_27FAC8;
  if (!qword_27FAC8)
  {
    result = swift_getWitnessTable(byte_1E8F80, &type metadata for PlayEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FAC8);
  }

  return result;
}

unint64_t sub_408CC()
{
  result = qword_27FAD0;
  if (!qword_27FAD0)
  {
    result = swift_getWitnessTable(byte_1E8FA8, &type metadata for PlayEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FAD0);
  }

  return result;
}

uint64_t sub_40920(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x8000000000213D80;
    if (a1 == 0xD000000000000014 && 0x8000000000213D80 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x8000000000213970;
      if (a1 == 0xD000000000000019 && 0x8000000000213970 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x4465746152746962 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else if (a1 == 0x746144726F727265 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 4;
      }

      else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 5;
      }

      else
      {
        v14 = 0x8000000000213DA0;
        if (a1 == 0xD000000000000010 && 0x8000000000213DA0 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 6;
        }

        else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 7;
        }

        else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 8;
        }

        else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 9;
        }

        else if (a1 == 0xD000000000000011 && 0x8000000000213DC0 == a2)
        {
          a2, 0x8000000000213DC0, a3, a4, a5, a6, a7, a8;
          return 10;
        }

        else
        {
          v15 = sub_1E1D30();
          a2, v16, v17, v18, v19, v20, v21, v22;
          if (v15)
          {
            return 10;
          }

          else
          {
            return 11;
          }
        }
      }
    }
  }
}

void sub_40CE4(void *a1@<X0>, BAEventReporter *a2@<X1>, _BYTE *a3@<X8>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>)
{
  if (a1 == 0x7954676F6C616964 && a2 == 0xEA00000000006570)
  {
    a2, a2, a1, a4, a5, a6, a7, a8;
    v19 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a3 = v19 & 1;
}

uint64_t sub_40D74(uint64_t a1)
{
  v2 = sub_40F38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_40DB0(uint64_t a1)
{
  v2 = sub_40F38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DialogData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27FAD8, &qword_1E9088);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_40F38();
  sub_1E1E00();
  v10 = v7;
  sub_40F8C();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_40F38()
{
  result = qword_27FAE0;
  if (!qword_27FAE0)
  {
    result = swift_getWitnessTable(byte_1E925C, &type metadata for DialogData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FAE0);
  }

  return result;
}

unint64_t sub_40F8C()
{
  result = qword_27FAE8;
  if (!qword_27FAE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DialogType, &type metadata for DialogType, v0, v1);
    atomic_store(result, &qword_27FAE8);
  }

  return result;
}

void DialogData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_27FAF0, &qword_1E9090);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_40F38();
  sub_1E1DF0();
  if (!v2)
  {
    sub_4114C();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_4114C()
{
  result = qword_27FAF8;
  if (!qword_27FAF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DialogType, &type metadata for DialogType, v0, v1);
    atomic_store(result, &qword_27FAF8);
  }

  return result;
}

unint64_t sub_411A4()
{
  result = qword_27FB00;
  if (!qword_27FB00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DialogData, &type metadata for DialogData, v0, v1);
    atomic_store(result, &qword_27FB00);
  }

  return result;
}

unint64_t sub_411FC()
{
  result = qword_27FB08;
  if (!qword_27FB08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DialogData, &type metadata for DialogData, v0, v1);
    atomic_store(result, &qword_27FB08);
  }

  return result;
}

unint64_t sub_412A4()
{
  result = qword_27FB10;
  if (!qword_27FB10)
  {
    result = swift_getWitnessTable("5D\a", &type metadata for DialogData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FB10);
  }

  return result;
}

unint64_t sub_412FC()
{
  result = qword_27FB18;
  if (!qword_27FB18)
  {
    result = swift_getWitnessTable("}D\a", &type metadata for DialogData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FB18);
  }

  return result;
}

unint64_t sub_41354()
{
  result = qword_27FB20;
  if (!qword_27FB20)
  {
    result = swift_getWitnessTable("eD\a", &type metadata for DialogData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FB20);
  }

  return result;
}

uint64_t ContentDetailsViewScrollEvent.scrollData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewScrollEvent(0) + 20);
  v4 = sub_3D68(&qword_27FB58, &unk_1E92B8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewScrollEvent.scrollData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewScrollEvent(0) + 20);
  v4 = sub_3D68(&qword_27FB58, &unk_1E92B8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewScrollEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewScrollEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewScrollEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewScrollEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewScrollEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ContentDetailsViewScrollEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27FB58, &unk_1E92B8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

double ContentDetailsViewScrollEvent.Model.scrollData.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 96);
  *a1 = result;
  return result;
}

uint64_t ContentDetailsViewScrollEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewScrollEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewScrollEvent.Model.init(contentData:scrollData:eventData:)@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v6;
  v7 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v7;
  v8 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v8;
  *(a4 + 96) = *a2;
  v9 = *(type metadata accessor for ContentDetailsViewScrollEvent.Model(0) + 24);
  v10 = sub_1E1150();
  v11 = *(*(v10 - 8) + 32);

  return v11(a4 + v9, a3, v10);
}

uint64_t sub_419AC()
{
  v1 = 0x61446C6C6F726373;
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

uint64_t sub_41A18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_42C60(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_41A40(uint64_t a1)
{
  v2 = sub_41D50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_41A7C(uint64_t a1)
{
  v2 = sub_41D50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ContentDetailsViewScrollEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_27FB60, &qword_1E92C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-v6];
  sub_48B8(a1, a1[3]);
  sub_41D50();
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
    v17 = *(v2 + 12);
    v16[7] = 1;
    sub_41DA4();
    sub_1E1CF0();
    type metadata accessor for ContentDetailsViewScrollEvent.Model(0);
    LOBYTE(v17) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_41D50()
{
  result = qword_27FB68;
  if (!qword_27FB68)
  {
    result = swift_getWitnessTable(byte_1E9498, &type metadata for ContentDetailsViewScrollEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FB68);
  }

  return result;
}

unint64_t sub_41DA4()
{
  result = qword_27FB70;
  if (!qword_27FB70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollData, &type metadata for ScrollData, v0, v1);
    atomic_store(result, &qword_27FB70);
  }

  return result;
}

void ContentDetailsViewScrollEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_1E1150();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_3D68(&qword_27FB78, &qword_1E92D0);
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = &v33 - v7;
  v9 = type metadata accessor for ContentDetailsViewScrollEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v38 = a1;
  sub_48B8(a1, v12);
  sub_41D50();
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
    sub_421F0();
    sub_1E1C20();
    *(v11 + 12) = v39[0];
    LOBYTE(v39[0]) = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v8, v22);
    (*(v34 + 32))(&v11[*(v33 + 24)], v21, v4);
    sub_42244(v11, v35);
    sub_4E48(v38, v26, v27, v28, v29, v30, v31, v32);
    sub_422A8(v11);
  }
}

unint64_t sub_421F0()
{
  result = qword_27FB80;
  if (!qword_27FB80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollData, &type metadata for ScrollData, v0, v1);
    atomic_store(result, &qword_27FB80);
  }

  return result;
}

uint64_t sub_42244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentDetailsViewScrollEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_422A8(uint64_t a1)
{
  v2 = type metadata accessor for ContentDetailsViewScrollEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_423A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27FB58, &unk_1E92B8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_424DC(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v11 = sub_3D68(&qword_27FB58, &unk_1E92B8);
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

uint64_t sub_42654(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

  v13 = sub_3D68(&qword_27FB58, &unk_1E92B8);
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

void sub_427C4(uint64_t a1)
{
  sub_428D0(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_428D0(319, &unk_27FBF0, sub_421F0, sub_41DA4, &type metadata for ScrollData);
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

void sub_428D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_42960(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_42A20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_42AC4(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_42B5C()
{
  result = qword_27FCC0;
  if (!qword_27FCC0)
  {
    result = swift_getWitnessTable(byte_1E9470, &type metadata for ContentDetailsViewScrollEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FCC0);
  }

  return result;
}

unint64_t sub_42BB4()
{
  result = qword_27FCC8;
  if (!qword_27FCC8)
  {
    result = swift_getWitnessTable("AB\a", &type metadata for ContentDetailsViewScrollEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FCC8);
  }

  return result;
}

unint64_t sub_42C0C()
{
  result = qword_27FCD0;
  if (!qword_27FCD0)
  {
    result = swift_getWitnessTable(")B\a", &type metadata for ContentDetailsViewScrollEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FCD0);
  }

  return result;
}

uint64_t sub_42C60(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000617461;
  v11 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x61446C6C6F726373 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, v10, a3, a4, a5, a6, a7, a8;
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

uint64_t ThemeCustomizedEvent.textData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent(0) + 20);
  v4 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemeCustomizedEvent.textData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent(0) + 20);
  v4 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ThemeCustomizedEvent.layoutOptionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent(0) + 24);
  v4 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemeCustomizedEvent.layoutOptionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent(0) + 24);
  v4 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ThemeCustomizedEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemeCustomizedEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ThemeCustomizedEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemeCustomizedEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ThemeCustomizedEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemeCustomizedEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ThemeCustomizedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27DA80, &qword_1E41E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ThemeCustomizedEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = enum case for EventProperty.optional<A>(_:);
  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

__n128 ThemeCustomizedEvent.Model.layoutOptionData.getter@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 60);
  result = *(v1 + 70);
  *(a1 + 10) = result;
  return result;
}

uint64_t ThemeCustomizedEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 136);
  v10 = *(v1 + 120);
  v11 = v2;
  v4 = *(v1 + 168);
  v12 = *(v1 + 152);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 104);
  v9[0] = *(v1 + 88);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_437B4(v9, &v8);
}

uint64_t sub_437B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27FD08, &qword_1E94F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ThemeCustomizedEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemeCustomizedEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent.Model(0) + 36);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemeCustomizedEvent.Model.init(themesData:textData:layoutOptionData:contentData:eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = *a1;
  *(a7 + 60) = *a3;
  *(a7 + 70) = *(a3 + 10);
  v10 = a4[3];
  *(a7 + 120) = a4[2];
  *(a7 + 136) = v10;
  v11 = a4[5];
  *(a7 + 152) = a4[4];
  *(a7 + 168) = v11;
  v12 = a4[1];
  *(a7 + 88) = *a4;
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 16);
  *(a7 + 16) = *(a1 + 16);
  *(a7 + 24) = v13;
  *(a7 + 32) = v14;
  *(a7 + 40) = v15;
  *(a7 + 48) = v16;
  *(a7 + 56) = v17;
  *(a7 + 104) = v12;
  v18 = type metadata accessor for ThemeCustomizedEvent.Model(0);
  v19 = *(v18 + 32);
  v20 = sub_1E1150();
  (*(*(v20 - 8) + 32))(a7 + v19, a5, v20);
  v21 = *(v18 + 36);
  v22 = sub_1E11A0();
  v23 = *(*(v22 - 8) + 32);

  return v23(a7 + v21, a6, v22);
}

uint64_t sub_43A68()
{
  v1 = *v0;
  v2 = 0x614473656D656874;
  v3 = 0x44746E65746E6F63;
  v4 = 0x746144746E657665;
  if (v1 != 4)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6174614474786574;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
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

uint64_t sub_43B3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_45778(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_43B70(uint64_t a1)
{
  v2 = sub_4406C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_43BAC(uint64_t a1)
{
  v2 = sub_4406C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ThemeCustomizedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_27FD10, &qword_1E94F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41 - v7;
  sub_48B8(a1, a1[3]);
  sub_4406C();
  sub_1E1E00();
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  *&v51[0] = *v3;
  *(v51 + 8) = *(v3 + 8);
  *(&v51[1] + 1) = v9;
  LOBYTE(v52) = v10;
  LOBYTE(v45) = 0;
  sub_7B78();

  sub_1E1CF0();
  v11 = *(&v51[0] + 1);
  *(&v51[1] + 1), v12, v13, v14, v15, v16, v17, v18;
  v11, v19, v20, v21, v22, v23, v24, v25;
  if (!v2)
  {
    v27 = *(v3 + 48);
    v28 = *(v3 + 56);
    v59 = *(v3 + 40);
    v60 = v27;
    v61 = v28;
    v58 = 1;
    sub_7BCC();

    sub_1E1CF0();
    v60, v29, v30, v31, v32, v33, v34, v35;
    v57[0] = *(v3 + 60);
    *(v57 + 10) = *(v3 + 70);
    v56 = 2;
    sub_7C20();
    sub_1E1CF0();
    v36 = *(v3 + 120);
    v37 = *(v3 + 152);
    v53 = *(v3 + 136);
    v54 = v37;
    v55 = *(v3 + 168);
    v38 = *(v3 + 88);
    v51[1] = *(v3 + 104);
    v52 = v36;
    v39 = *(v3 + 120);
    v40 = *(v3 + 152);
    v48 = *(v3 + 136);
    v49 = v40;
    v50 = *(v3 + 168);
    v51[0] = v38;
    v45 = *(v3 + 88);
    v46 = *(v3 + 104);
    v47 = v39;
    v44 = 3;
    sub_437B4(v51, v43);
    sub_143D0();
    sub_1E1C80();
    v43[2] = v47;
    v43[3] = v48;
    v43[4] = v49;
    v43[5] = v50;
    v43[0] = v45;
    v43[1] = v46;
    sub_440C0(v43);
    type metadata accessor for ThemeCustomizedEvent.Model(0);
    v42 = 4;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v42 = 5;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_4406C()
{
  result = qword_27FD18;
  if (!qword_27FD18)
  {
    result = swift_getWitnessTable(byte_1E96F0, &type metadata for ThemeCustomizedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FD18);
  }

  return result;
}

uint64_t sub_440C0(uint64_t a1)
{
  v2 = sub_3D68(&qword_27FD08, &qword_1E94F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void ThemeCustomizedEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v50 = sub_1E11A0();
  v47 = *(v50 - 8);
  __chkstk_darwin(v50);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v49 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_3D68(&qword_27FD20, &qword_1E9500);
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v9 = &v44 - v8;
  v10 = type metadata accessor for ThemeCustomizedEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v55 = a1;
  sub_48B8(a1, v13);
  sub_4406C();
  v53 = v9;
  v14 = v54;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(v55, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v54 = v7;
    v46 = v4;
    v22 = v50;
    v23 = v10;
    v24 = v12;
    v25 = v49;
    v56[0] = 0;
    sub_8248();
    sub_1E1C20();
    v26 = v58;
    v27 = v59;
    *v24 = v57;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    v56[0] = 1;
    sub_829C();
    sub_1E1C20();
    v45 = v5;
    v28 = *(&v57 + 1);
    v29 = v58;
    *(v24 + 40) = v57;
    *(v24 + 48) = v28;
    *(v24 + 56) = v29;
    v65 = 2;
    sub_82F0();
    v44 = 0;
    sub_1E1C20();
    *(v24 + 60) = *v56;
    *(v24 + 70) = *&v56[10];
    v64 = 3;
    sub_14CB8();
    sub_1E1BB0();
    v30 = v25;
    v31 = v60;
    *(v24 + 120) = v59;
    *(v24 + 136) = v31;
    v32 = v62;
    *(v24 + 152) = v61;
    *(v24 + 168) = v32;
    v33 = v58;
    *(v24 + 88) = v57;
    *(v24 + 104) = v33;
    v63 = 4;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v34 = v54;
    v35 = v45;
    sub_1E1C20();
    (*(v30 + 32))(v24 + *(v10 + 32), v34, v35);
    v63 = 5;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v36 = v46;
    sub_1E1C20();
    (*(v52 + 8))(v53, v51);
    (*(v47 + 32))(v24 + *(v23 + 36), v36, v22);
    sub_4482C(v24, v48);
    sub_4E48(v55, v37, v38, v39, v40, v41, v42, v43);
    sub_44890(v24);
  }
}

uint64_t sub_4482C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThemeCustomizedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_44890(uint64_t a1)
{
  v2 = type metadata accessor for ThemeCustomizedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4498C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27DA80, &qword_1E41E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = enum case for EventProperty.optional<A>(_:);
  v12 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

uint64_t sub_44BBC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27DA80, &qword_1E41E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27DA88, &qword_1E41E8);
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

  v14 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_44E30(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27DA80, &qword_1E41E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v20 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[9];

  return v21(v22, a2, a2, v20);
}

void sub_4509C(uint64_t a1)
{
  sub_45260(319, &qword_27DB48, sub_8248, sub_7B78, &type metadata for ThemesData);
  if (v1 <= 0x3F)
  {
    sub_45260(319, &qword_27DB50, sub_829C, sub_7BCC, &type metadata for TextData);
    if (v2 <= 0x3F)
    {
      sub_45260(319, &unk_27DB58, sub_82F0, sub_7C20, &type metadata for LayoutOptionData);
      if (v3 <= 0x3F)
      {
        sub_45260(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
        if (v4 <= 0x3F)
        {
          sub_5684(319);
          if (v5 <= 0x3F)
          {
            sub_5750(319);
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

void sub_45260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_452F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
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
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_45428(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
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
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_4554C(uint64_t a1)
{
  sub_45610();
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

void sub_45610()
{
  if (!qword_27FE30)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE30);
    }
  }
}

unint64_t sub_45674()
{
  result = qword_27FE70;
  if (!qword_27FE70)
  {
    result = swift_getWitnessTable(byte_1E96C8, &type metadata for ThemeCustomizedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE70);
  }

  return result;
}

unint64_t sub_456CC()
{
  result = qword_27FE78;
  if (!qword_27FE78)
  {
    result = swift_getWitnessTable(byte_1E9638, &type metadata for ThemeCustomizedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE78);
  }

  return result;
}

unint64_t sub_45724()
{
  result = qword_27FE80;
  if (!qword_27FE80)
  {
    result = swift_getWitnessTable(byte_1E9660, &type metadata for ThemeCustomizedEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE80);
  }

  return result;
}

uint64_t sub_45778(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x614473656D656874 && a2 == 0xEA00000000006174;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6174614474786574 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v12 = 0x8000000000213820;
    if (a1 == 0xD000000000000010 && 0x8000000000213820 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = 0xEB00000000617461;
      if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 4;
      }

      else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
      {
        0xE900000000000061, v13, a3, a4, a5, a6, a7, a8;
        return 5;
      }

      else
      {
        v14 = sub_1E1D30();
        a2, v15, v16, v17, v18, v19, v20, v21;
        if (v14)
        {
          return 5;
        }

        else
        {
          return 6;
        }
      }
    }
  }
}

BookAnalytics::YearlyGoalsReachedData __swiftcall YearlyGoalsReachedData.init(defaultYearlyReadingGoal:yearlyReadingGoalCount:)(BookAnalytics::DefaultReadingGoal defaultYearlyReadingGoal, Swift::Int64 yearlyReadingGoalCount)
{
  *v2 = *defaultYearlyReadingGoal;
  *(v2 + 8) = yearlyReadingGoalCount;
  result.yearlyReadingGoalCount = yearlyReadingGoalCount;
  result.defaultYearlyReadingGoal = defaultYearlyReadingGoal;
  return result;
}

unint64_t sub_459BC()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000018;
  }
}

void sub_459F8(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, char *a3@<X8>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  v12 = 0x8000000000213AF0;
  v13 = a1 == 0xD000000000000018 && 0x8000000000213AF0 == a2;
  if (v13 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a4, a5, a6, a7, a8, a9;
    v14 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000000213B40 == a2)
  {
    a2, 0x8000000000213B40, a4, a5, a6, a7, a8, a9;
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

  *a3 = v14;
}

uint64_t sub_45AD8(uint64_t a1)
{
  v2 = sub_45FD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_45B14(uint64_t a1)
{
  v2 = sub_45FD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t YearlyGoalsReachedData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_27FE88, &qword_1E9740);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[1] = *(v1 + 1);
  sub_48B8(a1, a1[3]);
  sub_45FD4();
  sub_1E1E00();
  v13 = v8;
  v12 = 0;
  sub_1E23C();
  sub_1E1CF0();
  if (!v2)
  {
    v11 = 1;
    sub_1E1D10();
  }

  return (*(v5 + 8))(v7, v4);
}

void YearlyGoalsReachedData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_27FE98, &qword_1E9748);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_48B8(a1, a1[3]);
  sub_45FD4();
  sub_1E1DF0();
  if (!v2)
  {
    v20 = 0;
    sub_1E2E4();
    sub_1E1C20();
    v16 = v21;
    v19 = 1;
    v17 = sub_1E1C40();
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    *(a2 + 8) = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

BOOL _s13BookAnalytics22YearlyGoalsReachedDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = *(a2 + 8);
  v11 = 89;
  if (v8 != 1)
  {
    v11 = 78;
  }

  if (*a1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 16718;
  }

  if (v8)
  {
    v13 = 0xE100000000000000;
  }

  else
  {
    v13 = 0xE200000000000000;
  }

  v14 = 89;
  if (*a2 != 1)
  {
    v14 = 78;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = &loc_414C + 2;
  }

  if (*a2)
  {
    v16 = 0xE100000000000000;
  }

  else
  {
    v16 = 0xE200000000000000;
  }

  if (v12 == v15 && v13 == v16)
  {
    v13, a2, v15, a4, a5, a6, a7, a8;
    v16, v17, v18, v19, v20, v21, v22, v23;
  }

  else
  {
    v24 = sub_1E1D30();
    v13, v25, v26, v27, v28, v29, v30, v31;
    v16, v32, v33, v34, v35, v36, v37, v38;
    result = 0;
    if ((v24 & 1) == 0)
    {
      return result;
    }
  }

  return v9 == v10;
}

unint64_t sub_45FD4()
{
  result = qword_27FE90;
  if (!qword_27FE90)
  {
    result = swift_getWitnessTable("]=\a", &type metadata for YearlyGoalsReachedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE90);
  }

  return result;
}

unint64_t sub_4602C()
{
  result = qword_27FEA0;
  if (!qword_27FEA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for YearlyGoalsReachedData, &type metadata for YearlyGoalsReachedData, v0, v1);
    atomic_store(result, &qword_27FEA0);
  }

  return result;
}

unint64_t sub_46084()
{
  result = qword_27FEA8;
  if (!qword_27FEA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for YearlyGoalsReachedData, &type metadata for YearlyGoalsReachedData, v0, v1);
    atomic_store(result, &qword_27FEA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for YearlyGoalsReachedData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for YearlyGoalsReachedData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_46180()
{
  result = qword_27FEB0;
  if (!qword_27FEB0)
  {
    result = swift_getWitnessTable("u=\a", &type metadata for YearlyGoalsReachedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FEB0);
  }

  return result;
}

unint64_t sub_461D8()
{
  result = qword_27FEB8;
  if (!qword_27FEB8)
  {
    result = swift_getWitnessTable(byte_1E9864, &type metadata for YearlyGoalsReachedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FEB8);
  }

  return result;
}

unint64_t sub_46230()
{
  result = qword_27FEC0;
  if (!qword_27FEC0)
  {
    result = swift_getWitnessTable(byte_1E988C, &type metadata for YearlyGoalsReachedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FEC0);
  }

  return result;
}

uint64_t sub_46388(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, __int128 a11, __int128 a12)
{
  v86 = a7;
  v87 = a4;
  v18 = sub_1E1640();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4C270();
  *v21 = sub_1E19E0();
  (*(v19 + 104))(v21, enum case for DispatchPredicate.notOnQueue(_:), v18);
  v22 = sub_1E1660();
  result = (*(v19 + 8))(v21, v18);
  if (v22)
  {
    v80 = a5;
    LODWORD(v81) = a6;
    *&v82 = a8;
    v85 = a1;
    v84 = a12;
    v83 = a11;
    v79 = a10;
    v78 = a9;
    sub_3D68(&qword_281B70, &qword_1E9980);
    sub_1E1330();
    v31 = v94;
    result = v94 + 32;
    v32 = -*(v94 + 16);
    v33 = -1;
    while (1)
    {
      v34 = v32 + v33;
      if (v32 + v33 == -1)
      {
        break;
      }

      if (++v33 >= v31[1].super.isa)
      {
        __break(1u);
        goto LABEL_22;
      }

      v35 = result + 40;
      sub_4C2BC(result, &v94);
      v36 = *(&v95 + 1);
      v37 = v96;
      sub_48B8(&v94, *(&v95 + 1));
      v38 = (*(v37 + 8))(a2, a3, v87, v36, v37);
      sub_4E48(&v94, v39, v40, v41, v42, v43, v44, v45);
      result = v35;
      if (v38)
      {
        v31, v24, v25, v26, v27, v28, v29, v30;
        v46 = [v38 intValue];

        goto LABEL_8;
      }
    }

    v31, v24, v25, v26, v27, v28, v29, v30;
    v46 = 0;
LABEL_8:
    v47._countAndFlagsBits = a3;
    v48 = v87;
    v47._object = v87;
    v49 = BATracker.contentPrivateID(for:)(v47);
    if (v49.value._object)
    {
      countAndFlagsBits = v49.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v49.value._object)
    {
      object = v49.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v52._countAndFlagsBits = a3;
    v52._object = v48;
    v53 = BATracker.contentUserID(for:)(v52);
    v100 = BYTE4(v82) & 1;
    v103 = v34 == -1;
    if (v53.value._object)
    {
      v54 = v53.value._countAndFlagsBits;
    }

    else
    {
      v54 = 0;
    }

    if (v53.value._object)
    {
      v55 = v53.value._object;
    }

    else
    {
      v55 = 0xE000000000000000;
    }

    *&v94 = a3;
    *(&v94 + 1) = v48;
    LOBYTE(v95) = v80;
    *(&v95 + 1) = *v104;
    DWORD1(v95) = *&v104[3];
    *(&v95 + 1) = countAndFlagsBits;
    *&v96 = object;
    *(&v96 + 1) = v54;
    *&v97 = v55;
    BYTE8(v97) = v81;
    BYTE9(v97) = 4;
    HIDWORD(v97) = v46;
    LOBYTE(v98) = v34 == -1;
    BYTE3(v98) = v102;
    *(&v98 + 1) = v101;
    DWORD1(v98) = v82;
    BYTE8(v98) = v100;
    BYTE9(v98) = v78;
    BYTE10(v98) = v79;
    *(&v98 + 11) = 515;
    BYTE13(v98) = 2;
    v99 = 0uLL;
    v90 = v96;
    v91 = v97;
    v92 = v98;
    v93 = 0uLL;
    v88 = v94;
    v89 = v95;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v56 = sub_1E0CB0();
    v57 = *(v56 - 8);
    v86 = *(v57 + 72);
    v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v59 = swift_allocObject();
    v82 = xmmword_1E9970;
    *(v59 + 16) = xmmword_1E9970;
    v60 = enum case for DataEventTrait.onlyOnce(_:);
    v61 = *(v57 + 104);
    v61(v59 + v58, enum case for DataEventTrait.onlyOnce(_:), v56);
    v81 = "v72@0:8@16@24q32q40@48q56q64";
    sub_4C164();

    sub_1E0C00();
    v59, v62, v63, v64, v65, v66, v67, v68;
    sub_14424(&v94);
    v88 = v83;
    v89 = v84;
    v69 = swift_allocObject();
    *(v69 + 16) = v82;
    v61(v69 + v58, v60, v56);
    sub_4C424();
    sub_1E0C00();
    v69, v70, v71, v72, v73, v74, v75, v76;
    type metadata accessor for AddToCollectionEvent(0);
    sub_4C5C8(&qword_27FF40, type metadata accessor for AddToCollectionEvent, protocol conformance descriptor for AddToCollectionEvent);
    v88 = 0u;
    v89 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v88);
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_46AA8(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[3];
  v33 = a2[2];
  v34 = v6;
  v7 = a2[5];
  v35 = a2[4];
  v36 = v7;
  v8 = a2[1];
  v31 = *a2;
  v32 = v8;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v9 = sub_1E0CB0();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E9970;
  v13 = enum case for DataEventTrait.onlyOnce(_:);
  v14 = *(v10 + 104);
  v14(v12 + v11, enum case for DataEventTrait.onlyOnce(_:), v9);
  sub_4C164();
  sub_1E0C00();
  v12, v15, v16, v17, v18, v19, v20, v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1E9970;
  v14(v22 + v11, v13, v9);
  sub_4C424();
  sub_1E0C00();
  v22, v23, v24, v25, v26, v27, v28, v29;
  type metadata accessor for AddToCollectionEvent(0);
  sub_4C5C8(&qword_27FF40, type metadata accessor for AddToCollectionEvent, protocol conformance descriptor for AddToCollectionEvent);
  v31 = 0u;
  v32 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v31);
}

uint64_t sub_46D38(uint64_t a1, uint64_t a2, uint64_t a3, BAEventReporter *a4)
{
  result = BARoundIntegerToSignificantFigures(a2, 2);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *&v25 = a3;
    *(&v25 + 1) = a4;
    LODWORD(v26) = result;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v7 = sub_1E0CB0();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1E9970;
    (*(v8 + 104))(v10 + v9, enum case for DataEventTrait.onlyOnce(_:), v7);
    sub_4C574();

    sub_1E0C00();
    a4, v11, v12, v13, v14, v15, v16, v17;
    v10, v18, v19, v20, v21, v22, v23, v24;
    type metadata accessor for CollectionAddEvent(0);
    sub_4C5C8(&qword_27FF38, type metadata accessor for CollectionAddEvent, protocol conformance descriptor for CollectionAddEvent);
    v25 = 0u;
    v26 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v25);
  }

  __break(1u);
  return result;
}

void EventReporter.emitCollectionDescriptionEvent(using:for:)(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v5 = swift_allocObject();
  v5[1].super.isa = a2;
  *v5[1].dataProviders = a3;
  v6 = swift_allocObject();
  v6[1].super.isa = sub_4BA74;
  *v6[1].dataProviders = v5;

  sub_1E10C0();
  v5, v7, v8, v9, v10, v11, v12, v13;

  v6, v14, v15, v16, v17, v18, v19, v20;
}

uint64_t sub_4704C(uint64_t a1, uint64_t a2, BAEventReporter *a3)
{
  *&v30 = a2;
  *(&v30 + 1) = a3;
  v31 = 0uLL;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v4 = sub_1E0CB0();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E9970;
  (*(v5 + 104))(v7 + v6, enum case for DataEventTrait.onlyOnce(_:), v4);
  sub_4C424();

  sub_1E0C00();
  0, v8, v9, v10, v11, v12, v13, v14;
  a3, v15, v16, v17, v18, v19, v20, v21;
  v7, v22, v23, v24, v25, v26, v27, v28;
  type metadata accessor for CollectionDescriptionEvent(0);
  sub_4C5C8(&qword_27FF30, type metadata accessor for CollectionDescriptionEvent, "\ta\a");
  v30 = 0u;
  v31 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v30);
}

void sub_47328(void *a1, uint64_t a2, objc_class *a3, objc_class *a4, uint64_t a5, uint64_t a6, objc_class *a7, uint64_t a8)
{
  v13 = a1;
  if (a1 || (v13 = sub_BFB78()) != 0)
  {
    v14 = swift_allocObject();
    v14[1].super.isa = a4;
    *v14[1].dataProviders = a2;
    v14[2].super.isa = a3;
    v15 = swift_allocObject();
    v15[1].super.isa = a7;
    *v15[1].dataProviders = v14;
    v16 = a1;

    sub_1E10C0();

    v14, v17, v18, v19, v20, v21, v22, v23;

    v15, v24, v25, v26, v27, v28, v29, v30;
  }
}

uint64_t sub_47434(uint64_t a1, uint64_t a2, uint64_t a3, BAEventReporter *a4)
{
  result = BARoundIntegerToSignificantFigures(a2, 2);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *&v25 = a3;
    *(&v25 + 1) = a4;
    LODWORD(v26) = result;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v7 = sub_1E0CB0();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1E9970;
    (*(v8 + 104))(v10 + v9, enum case for DataEventTrait.onlyOnce(_:), v7);
    sub_4C574();

    sub_1E0C00();
    a4, v11, v12, v13, v14, v15, v16, v17;
    v10, v18, v19, v20, v21, v22, v23, v24;
    type metadata accessor for CollectionRemoveEvent(0);
    sub_4C5C8(&qword_27FF28, type metadata accessor for CollectionRemoveEvent, protocol conformance descriptor for CollectionRemoveEvent);
    v25 = 0u;
    v26 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v25);
  }

  __break(1u);
  return result;
}

void sub_4767C(void *a1, uint64_t a2, void *a3, uint64_t a4, objc_class *a5, uint64_t a6, uint64_t a7, objc_class *a8, uint64_t a9)
{
  v13 = sub_1E1780();
  v15 = v14;
  v42 = a1;
  v16 = a3;
  if (a3)
  {
    goto LABEL_4;
  }

  v17 = sub_BFB78();
  if (v17)
  {
    v16 = v17;
LABEL_4:
    v25 = swift_allocObject();
    v25[1].super.isa = a5;
    *v25[1].dataProviders = v13;
    v25[2].super.isa = v15;
    v26 = swift_allocObject();
    v26[1].super.isa = a8;
    *v26[1].dataProviders = v25;
    v27 = a3;

    sub_1E10C0();

    v25, v28, v29, v30, v31, v32, v33, v34;
    v26, v35, v36, v37, v38, v39, v40, v41;
    goto LABEL_5;
  }

  v15, v18, v19, v20, v21, v22, v23, v24;
LABEL_5:
}

void EventReporter.emitLibraryDataEditEvent(using:with:for:result:)(void *a1, objc_class *a2, objc_class *a3, char a4)
{
  v8 = a1;
  if (a1 || (v8 = sub_BFB78()) != 0)
  {
    v9 = swift_allocObject();
    v9[1].super.isa = a2;
    *v9[1].dataProviders = v8;
    v9[2].super.isa = a3;
    v9[2].dataProviders[0] = a4 & 1;
    v10 = swift_allocObject();
    v10[1].super.isa = sub_4BA88;
    *v10[1].dataProviders = v9;
    v11 = a1;

    v12 = v8;

    sub_1E10C0();

    v9, v13, v14, v15, v16, v17, v18, v19;

    v10, v20, v21, v22, v23, v24, v25, v26;
  }
}

uint64_t sub_478C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v8 = *(a2 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v55 = a5;
    v56 = a4;
    *&v58[0] = _swiftEmptyArrayStorage;
    sub_A7EB0(0, v8, 0, a4, a5, a6, a7, a8);
    v9 = _swiftEmptyArrayStorage;
    swift_beginAccess();
    v11 = (a2 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        v15 = v12;
        v16 = sub_1E1770();
        v17 = [Strong contentPrivateIDForContentID:v16];

        swift_unknownObjectRelease();
        if (v17)
        {
          Strong = sub_1E1780();
          v19 = v18;
        }

        else
        {
          Strong = 0;
          v19 = 0xE000000000000000;
        }

        v12 = v15;
      }

      else
      {
        v19 = 0xE000000000000000;
      }

      v57 = v19;
      v20 = Strong;
      v26 = swift_unknownObjectWeakLoadStrong();
      if (v26)
      {
        v27 = v12;
        v28 = sub_1E1770();
        v29 = [v26 contentUserIDForContentID:v28];

        swift_unknownObjectRelease();
        if (v29)
        {
          v26 = sub_1E1780();
          v31 = v30;
        }

        else
        {
          v26 = 0;
          v31 = 0xE000000000000000;
        }

        v12 = v27;
      }

      else
      {
        v31 = 0xE000000000000000;
      }

      *&v58[0] = v9;
      isa = v9[1].super.isa;
      v32 = *v9[1].dataProviders;
      if (isa >= v32 >> 1)
      {
        sub_A7EB0((v32 > 1), isa + 1, &dword_0 + 1, v21, v22, v23, v24, v25);
        v9 = *&v58[0];
      }

      v9[1].super.isa = (isa + 1);
      v34 = &v9[3 * isa];
      v34[2].super.isa = v20;
      *v34[2].dataProviders = v57;
      v34[3].super.isa = v26;
      *v34[3].dataProviders = v31;
      v34[4].super.isa = v12;
      *v34[4].dataProviders = v13;
      v11 += 2;
      --v8;
    }

    while (v8);
    a4 = v56;
    LOBYTE(a5) = v55;
  }

  if (a4 >= 4)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    *&v58[0] = v9;
    if (a5)
    {
      v35 = 1;
    }

    else
    {
      v35 = 2;
    }

    BYTE8(v58[0]) = a4;
    BYTE9(v58[0]) = v35;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v36 = sub_1E0CB0();
    v37 = *(v36 - 8);
    v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1E9970;
    (*(v37 + 104))(v39 + v38, enum case for DataEventTrait.onlyOnce(_:), v36);
    sub_4C520();
    sub_1E0C00();
    v9, v40, v41, v42, v43, v44, v45, v46;
    v39, v47, v48, v49, v50, v51, v52, v53;
    type metadata accessor for LibraryDataEditEvent(0);
    sub_4C5C8(&qword_27FF18, type metadata accessor for LibraryDataEditEvent, protocol conformance descriptor for LibraryDataEditEvent);
    memset(v58, 0, sizeof(v58));
    sub_1E0C10();
    return sub_4C1B8(v58);
  }

  return result;
}

void EventReporter.emitMarkAsFinishedEvent(using:for:contentAcquisitionType:contentType:supplementalContentCount:seriesType:productionType:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, id a6, unint64_t a7, unint64_t a8)
{
  v9 = a4;
  if (a4 >= 3)
  {
    goto LABEL_14;
  }

  v10 = a5;
  if (a5 >= 7)
  {
    goto LABEL_14;
  }

  if (a6)
  {
    v17 = [a6 intValue];
    if (a7 >= 4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v17 = 0;
    if (a7 >= 4)
    {
      goto LABEL_14;
    }
  }

  v41 = v17;
  if (a8 >= 3)
  {
LABEL_14:
    sub_1E1D50();
    __break(1u);
    return;
  }

  v18 = a1;
  if (a1 || (v18 = sub_BFB78()) != 0)
  {
    v40 = a1;
    v19 = a3;
    v20 = a6 == 0;
    v21 = swift_allocObject();
    *(v21 + 16) = v8;
    *(v21 + 24) = a2;
    *(v21 + 32) = v19;
    *(v21 + 40) = v10;
    *(v21 + 41) = v9;
    *(v21 + 48) = v18;
    *(v21 + 56) = v41;
    *(v21 + 60) = v20;
    *(v21 + 61) = 0x2010004u >> (8 * a7);
    *(v21 + 62) = a8;
    *(v21 + 63) = 2;
    v22 = swift_allocObject();
    v22[1].super.isa = sub_4BAA0;
    *v22[1].dataProviders = v21;
    v23 = v40;
    v24 = v8;

    v25 = v18;

    sub_1E10C0();

    v21, v26, v27, v28, v29, v30, v31, v32;

    v22, v33, v34, v35, v36, v37, v38, v39;
  }
}

void EventReporter.emitMarkAsFinishedEvent(using:for:contentAcquisitionType:contentType:supplementalContentCount:seriesType:productionType:isFinishedDateSet:)(void *a1, uint64_t a2, uint64_t a3, char *a4, char *a5, uint64_t a6, char *a7, char *a8, char a9)
{
  v14 = *a4;
  v15 = *a5;
  v38 = *a7;
  v16 = *a8;
  v17 = a1;
  if (a1 || (v17 = sub_BFB78()) != 0)
  {
    v18 = a3;
    v19 = swift_allocObject();
    *(v19 + 16) = v9;
    *(v19 + 24) = a2;
    *(v19 + 32) = v18;
    *(v19 + 40) = v15;
    *(v19 + 41) = v14;
    *(v19 + 48) = v17;
    *(v19 + 56) = a6;
    *(v19 + 60) = BYTE4(a6) & 1;
    *(v19 + 61) = v38;
    *(v19 + 62) = v16;
    *(v19 + 63) = a9;
    v20 = swift_allocObject();
    v20[1].super.isa = sub_4C750;
    *v20[1].dataProviders = v19;
    v21 = a1;
    v22 = v9;

    v23 = v17;

    sub_1E10C0();

    v19, v24, v25, v26, v27, v28, v29, v30;

    v20, v31, v32, v33, v34, v35, v36, v37;
  }
}

uint64_t sub_481EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v87 = a7;
  v88 = a3;
  v17 = sub_1E1640();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4C270();
  *v20 = sub_1E19E0();
  (*(v18 + 104))(v20, enum case for DispatchPredicate.notOnQueue(_:), v17);
  v21 = sub_1E1660();
  result = (*(v18 + 8))(v20, v17);
  if (v21)
  {
    v83 = a5;
    v84 = a6;
    v85 = a8;
    v86 = a1;
    v82 = a11;
    v81 = a10;
    v80 = a9;
    sub_3D68(&qword_281B70, &qword_1E9980);
    sub_1E1330();
    v30 = v95;
    result = v95 + 32;
    v31 = -*(v95 + 16);
    v32 = -1;
    while (1)
    {
      v33 = v31 + v32;
      if (v31 + v32 == -1)
      {
        break;
      }

      if (++v32 >= v30[1].super.isa)
      {
        __break(1u);
        goto LABEL_25;
      }

      v34 = result + 40;
      sub_4C2BC(result, &v95);
      v35 = *(&v96 + 1);
      v36 = v97;
      sub_48B8(&v95, *(&v96 + 1));
      v37 = (*(v36 + 8))(a2, v88, a4, v35, v36);
      sub_4E48(&v95, v38, v39, v40, v41, v42, v43, v44);
      result = v34;
      if (v37)
      {
        v30, v23, v24, v25, v26, v27, v28, v29;
        v45 = [v37 intValue];

        goto LABEL_8;
      }
    }

    v30, v23, v24, v25, v26, v27, v28, v29;
    v45 = 0;
LABEL_8:
    v46 = v33 == -1;
    v47 = v88;
    v48._countAndFlagsBits = v88;
    v48._object = a4;
    v49 = BATracker.contentPrivateID(for:)(v48);
    if (v49.value._object)
    {
      countAndFlagsBits = v49.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v49.value._object)
    {
      object = v49.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v52._countAndFlagsBits = v47;
    v52._object = a4;
    v53 = BATracker.contentUserID(for:)(v52);
    v101 = BYTE4(v85) & 1;
    v104 = v46;
    if (v53.value._object)
    {
      v54 = v53.value._countAndFlagsBits;
    }

    else
    {
      v54 = 0;
    }

    if (v53.value._object)
    {
      v55 = v53.value._object;
    }

    else
    {
      v55 = 0xE000000000000000;
    }

    *&v95 = v47;
    *(&v95 + 1) = a4;
    LOBYTE(v96) = v83;
    *(&v96 + 1) = *v105;
    DWORD1(v96) = *&v105[3];
    *(&v96 + 1) = countAndFlagsBits;
    *&v97 = object;
    *(&v97 + 1) = v54;
    *&v98 = v55;
    BYTE8(v98) = v84;
    BYTE9(v98) = 4;
    HIDWORD(v98) = v45;
    LOBYTE(v99) = v46;
    *(&v99 + 1) = v102;
    BYTE3(v99) = v103;
    DWORD1(v99) = v85;
    BYTE8(v99) = v101;
    BYTE9(v99) = v80;
    BYTE10(v99) = v81;
    *(&v99 + 11) = 515;
    BYTE13(v99) = 2;
    v100 = 0uLL;
    if (v82 == 2)
    {
      v60 = enum case for DataEventTrait.onlyOnce(_:);
    }

    else
    {
      LOBYTE(v89) = v82;
      sub_3D68(&qword_2828D0, &unk_1FD120);
      v56 = sub_1E0CB0();
      v57 = *(v56 - 8);
      v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1E9970;
      v60 = enum case for DataEventTrait.onlyOnce(_:);
      (*(v57 + 104))(v59 + v58, enum case for DataEventTrait.onlyOnce(_:), v56);
      sub_4C478();

      sub_1E0C00();
      v59, v61, v62, v63, v64, v65, v66, v67;
    }

    v91 = v97;
    v92 = v98;
    v93 = v99;
    v94 = v100;
    v89 = v95;
    v90 = v96;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v68 = sub_1E0CB0();
    v69 = *(v68 - 8);
    v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1E9970;
    (*(v69 + 104))(v71 + v70, v60, v68);
    sub_4C164();
    sub_1E0C00();
    v71, v72, v73, v74, v75, v76, v77, v78;
    sub_14424(&v95);
    type metadata accessor for MarkAsFinishedEvent(0);
    sub_4C5C8(&qword_27FF00, type metadata accessor for MarkAsFinishedEvent, protocol conformance descriptor for MarkAsFinishedEvent);
    v89 = 0u;
    v90 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v89);
  }

  else
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void EventReporter.emitMarkAsFinishedEvent(using:with:markedData:)(void *a1, _OWORD *a2, char *a3)
{
  v5 = a2[3];
  v31[2] = a2[2];
  v31[3] = v5;
  v6 = a2[5];
  v31[4] = a2[4];
  v31[5] = v6;
  v7 = a2[1];
  v31[0] = *a2;
  v31[1] = v7;
  v8 = a1;
  v9 = *a3;
  if (a1 || (v8 = sub_BFB78()) != 0)
  {
    v10 = swift_allocObject();
    v11 = a2[3];
    *(v10 + 56) = a2[2];
    *(v10 + 72) = v11;
    v12 = a2[5];
    *(v10 + 88) = a2[4];
    *(v10 + 104) = v12;
    v13 = a2[1];
    *(v10 + 24) = *a2;
    *(v10 + 16) = v9;
    *(v10 + 40) = v13;
    v14 = swift_allocObject();
    v14[1].super.isa = sub_4BC50;
    *v14[1].dataProviders = v10;
    v15 = a1;
    sub_13A5C(v31, &v30);

    sub_1E10C0();

    v10, v16, v17, v18, v19, v20, v21, v22;
    v14, v23, v24, v25, v26, v27, v28, v29;
  }
}

uint64_t sub_48A14(uint64_t a1, char a2, __int128 *a3)
{
  if (a2 == 3)
  {
    v4 = enum case for DataEventTrait.onlyOnce(_:);
  }

  else
  {
    LOBYTE(v31) = a2;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v5 = sub_1E0CB0();
    v6 = *(v5 - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1E9970;
    v4 = enum case for DataEventTrait.onlyOnce(_:);
    (*(v6 + 104))(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
    sub_4C478();
    sub_1E0C00();
    v8, v9, v10, v11, v12, v13, v14, v15;
  }

  v16 = a3[3];
  v33 = a3[2];
  v34 = v16;
  v17 = a3[5];
  v35 = a3[4];
  v36 = v17;
  v18 = a3[1];
  v31 = *a3;
  v32 = v18;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v19 = sub_1E0CB0();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1E9970;
  (*(v20 + 104))(v22 + v21, v4, v19);
  sub_4C164();
  sub_1E0C00();
  v22, v23, v24, v25, v26, v27, v28, v29;
  type metadata accessor for MarkAsFinishedEvent(0);
  sub_4C5C8(&qword_27FF00, type metadata accessor for MarkAsFinishedEvent, protocol conformance descriptor for MarkAsFinishedEvent);
  v31 = 0u;
  v32 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v31);
}

void sub_48D5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, id a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, objc_class *a13, uint64_t a14)
{
  if (a6 >= 3)
  {
    goto LABEL_14;
  }

  v15 = a7;
  if (a7 >= 7)
  {
    goto LABEL_14;
  }

  v42 = a6;
  if (a8)
  {
    v20 = [a8 intValue];
    if (a9 >= 4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v20 = 0;
    if (a9 >= 4)
    {
      goto LABEL_14;
    }
  }

  v45 = a3;
  if (a10 >= 3)
  {
LABEL_14:
    sub_1E1D50();
    __break(1u);
    return;
  }

  v21 = a1;
  if (a1 || (v21 = sub_BFB78()) != 0)
  {
    v22 = a8 == 0;
    v23 = swift_allocObject();
    *(v23 + 16) = v14;
    *(v23 + 24) = a4;
    *(v23 + 32) = a5;
    *(v23 + 40) = v15;
    *(v23 + 41) = v42;
    *(v23 + 48) = v21;
    *(v23 + 56) = v20;
    *(v23 + 60) = v22;
    *(v23 + 61) = 0x2010004u >> (8 * a9);
    *(v23 + 62) = a10;
    *(v23 + 64) = a2;
    *(v23 + 72) = v45;
    *(v23 + 80) = 0;
    *(v23 + 88) = 0;
    v24 = swift_allocObject();
    v24[1].super.isa = a13;
    *v24[1].dataProviders = v23;
    v25 = a1;

    v26 = v14;

    v27 = v21;

    sub_1E10C0();

    v23, v28, v29, v30, v31, v32, v33, v34;

    v24, v35, v36, v37, v38, v39, v40, v41;
  }
}

void sub_49000(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, char *a7, uint64_t a8, char *a9, char *a10, uint64_t a11, uint64_t a12, objc_class *a13, uint64_t a14)
{
  v18 = *a6;
  v19 = *a7;
  v40 = *a10;
  v41 = *a9;
  v20 = a1;
  if (a1 || (v20 = sub_BFB78()) != 0)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v44;
    *(v21 + 24) = a4;
    *(v21 + 32) = a5;
    *(v21 + 40) = v19;
    *(v21 + 41) = v18;
    *(v21 + 48) = v20;
    *(v21 + 56) = a8;
    *(v21 + 60) = BYTE4(a8) & 1;
    *(v21 + 61) = v41;
    *(v21 + 62) = v40;
    *(v21 + 64) = a2;
    *(v21 + 72) = a3;
    *(v21 + 80) = 0;
    *(v21 + 88) = 0;
    v22 = swift_allocObject();
    v22[1].super.isa = a13;
    *v22[1].dataProviders = v21;
    v23 = a1;

    v24 = v44;

    v25 = v20;

    sub_1E10C0();

    v21, v26, v27, v28, v29, v30, v31, v32;

    v22, v33, v34, v35, v36, v37, v38, v39;
  }
}

void sub_491C8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, void (*a11)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void *, uint64_t, uint64_t))
{
  v14 = sub_1E1780();
  v16 = v15;
  v17 = sub_1E1780();
  v19 = v18;
  v20 = a3;
  v21 = a8;
  v22 = a1;
  a11(a3, v14, v16, v17, v19, a6, a7, a8, a9, a10);

  v16, v23, v24, v25, v26, v27, v28, v29;

  v19, v30, v31, v32, v33, v34, v35, v36;
}

uint64_t sub_492C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, __int128 a11, __int128 a12)
{
  v86 = a7;
  v87 = a4;
  v18 = sub_1E1640();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4C270();
  *v21 = sub_1E19E0();
  (*(v19 + 104))(v21, enum case for DispatchPredicate.notOnQueue(_:), v18);
  v22 = sub_1E1660();
  result = (*(v19 + 8))(v21, v18);
  if (v22)
  {
    v80 = a5;
    LODWORD(v81) = a6;
    *&v82 = a8;
    v85 = a1;
    v84 = a12;
    v83 = a11;
    v79 = a10;
    v78 = a9;
    sub_3D68(&qword_281B70, &qword_1E9980);
    sub_1E1330();
    v31 = v94;
    result = v94 + 32;
    v32 = -*(v94 + 16);
    v33 = -1;
    while (1)
    {
      v34 = v32 + v33;
      if (v32 + v33 == -1)
      {
        break;
      }

      if (++v33 >= v31[1].super.isa)
      {
        __break(1u);
        goto LABEL_22;
      }

      v35 = result + 40;
      sub_4C2BC(result, &v94);
      v36 = *(&v95 + 1);
      v37 = v96;
      sub_48B8(&v94, *(&v95 + 1));
      v38 = (*(v37 + 8))(a2, a3, v87, v36, v37);
      sub_4E48(&v94, v39, v40, v41, v42, v43, v44, v45);
      result = v35;
      if (v38)
      {
        v31, v24, v25, v26, v27, v28, v29, v30;
        v46 = [v38 intValue];

        goto LABEL_8;
      }
    }

    v31, v24, v25, v26, v27, v28, v29, v30;
    v46 = 0;
LABEL_8:
    v47._countAndFlagsBits = a3;
    v48 = v87;
    v47._object = v87;
    v49 = BATracker.contentPrivateID(for:)(v47);
    if (v49.value._object)
    {
      countAndFlagsBits = v49.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v49.value._object)
    {
      object = v49.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v52._countAndFlagsBits = a3;
    v52._object = v48;
    v53 = BATracker.contentUserID(for:)(v52);
    v100 = BYTE4(v82) & 1;
    v103 = v34 == -1;
    if (v53.value._object)
    {
      v54 = v53.value._countAndFlagsBits;
    }

    else
    {
      v54 = 0;
    }

    if (v53.value._object)
    {
      v55 = v53.value._object;
    }

    else
    {
      v55 = 0xE000000000000000;
    }

    *&v94 = a3;
    *(&v94 + 1) = v48;
    LOBYTE(v95) = v80;
    *(&v95 + 1) = *v104;
    DWORD1(v95) = *&v104[3];
    *(&v95 + 1) = countAndFlagsBits;
    *&v96 = object;
    *(&v96 + 1) = v54;
    *&v97 = v55;
    BYTE8(v97) = v81;
    BYTE9(v97) = 4;
    HIDWORD(v97) = v46;
    LOBYTE(v98) = v34 == -1;
    BYTE3(v98) = v102;
    *(&v98 + 1) = v101;
    DWORD1(v98) = v82;
    BYTE8(v98) = v100;
    BYTE9(v98) = v78;
    BYTE10(v98) = v79;
    *(&v98 + 11) = 515;
    BYTE13(v98) = 2;
    v99 = 0uLL;
    v90 = v96;
    v91 = v97;
    v92 = v98;
    v93 = 0uLL;
    v88 = v94;
    v89 = v95;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v56 = sub_1E0CB0();
    v57 = *(v56 - 8);
    v86 = *(v57 + 72);
    v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v59 = swift_allocObject();
    v82 = xmmword_1E9970;
    *(v59 + 16) = xmmword_1E9970;
    v60 = enum case for DataEventTrait.onlyOnce(_:);
    v61 = *(v57 + 104);
    v61(v59 + v58, enum case for DataEventTrait.onlyOnce(_:), v56);
    v81 = "v72@0:8@16@24q32q40@48q56q64";
    sub_4C164();

    sub_1E0C00();
    v59, v62, v63, v64, v65, v66, v67, v68;
    sub_14424(&v94);
    v88 = v83;
    v89 = v84;
    v69 = swift_allocObject();
    *(v69 + 16) = v82;
    v61(v69 + v58, v60, v56);
    sub_4C424();
    sub_1E0C00();
    v69, v70, v71, v72, v73, v74, v75, v76;
    type metadata accessor for RemoveFromCollectionEvent(0);
    sub_4C5C8(&qword_27FEF8, type metadata accessor for RemoveFromCollectionEvent, protocol conformance descriptor for RemoveFromCollectionEvent);
    v88 = 0u;
    v89 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v88);
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_4993C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, objc_class *a7, uint64_t a8)
{
  sub_A3F08(v35);
  v12 = a1;
  if (a1 || (v12 = sub_BFB78()) != 0)
  {
    v13 = swift_allocObject();
    v14 = v35[3];
    *(v13 + 48) = v35[2];
    *(v13 + 64) = v14;
    v15 = v35[5];
    *(v13 + 80) = v35[4];
    *(v13 + 96) = v15;
    v16 = v35[1];
    *(v13 + 16) = v35[0];
    *(v13 + 32) = v16;
    *(v13 + 112) = a2;
    *(v13 + 120) = a3;
    *(v13 + 128) = 0;
    *(v13 + 136) = 0;
    v17 = swift_allocObject();
    v17[1].super.isa = a7;
    *v17[1].dataProviders = v13;
    v18 = a1;

    sub_13A5C(v35, &v34);

    sub_1E10C0();

    v13, v19, v20, v21, v22, v23, v24, v25;
    v17, v26, v27, v28, v29, v30, v31, v32;
  }

  return sub_14424(v35);
}

uint64_t sub_49B04(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, objc_class *a8, uint64_t a9)
{
  v15 = sub_1E1780();
  v17 = v16;
  v18 = a3;
  v19 = a5;
  v20 = a1;
  sub_A3F08(v29);
  sub_4BCCC(a3, v15, v17, v29, a6, a7, a8, a9);

  v17, v21, v22, v23, v24, v25, v26, v27;
  v30[2] = v29[2];
  v30[3] = v29[3];
  v30[4] = v29[4];
  v30[5] = v29[5];
  v30[0] = v29[0];
  v30[1] = v29[1];
  return sub_14424(v30);
}

uint64_t sub_49BEC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[3];
  v33 = a2[2];
  v34 = v6;
  v7 = a2[5];
  v35 = a2[4];
  v36 = v7;
  v8 = a2[1];
  v31 = *a2;
  v32 = v8;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v9 = sub_1E0CB0();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E9970;
  v13 = enum case for DataEventTrait.onlyOnce(_:);
  v14 = *(v10 + 104);
  v14(v12 + v11, enum case for DataEventTrait.onlyOnce(_:), v9);
  sub_4C164();
  sub_1E0C00();
  v12, v15, v16, v17, v18, v19, v20, v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1E9970;
  v14(v22 + v11, v13, v9);
  sub_4C424();
  sub_1E0C00();
  v22, v23, v24, v25, v26, v27, v28, v29;
  type metadata accessor for RemoveFromCollectionEvent(0);
  sub_4C5C8(&qword_27FEF8, type metadata accessor for RemoveFromCollectionEvent, protocol conformance descriptor for RemoveFromCollectionEvent);
  v31 = 0u;
  v32 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v31);
}

void EventReporter.emitRemoveFromWantListEvent(using:for:with:)(objc_class *a1, uint64_t a2, objc_class *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[1].super.isa = a1;
  *v8[1].dataProviders = a2;
  v8[2].super.isa = a3;
  *v8[2].dataProviders = a4;
  v9 = swift_allocObject();
  v9[1].super.isa = sub_4BE24;
  *v9[1].dataProviders = v8;
  v10 = a1;

  sub_1E10C0();
  v8, v11, v12, v13, v14, v15, v16, v17;

  v9, v18, v19, v20, v21, v22, v23, v24;
}

uint64_t sub_49F20(int a1, int a2, Swift::String a3, unint64_t a4)
{
  object = a3._object;
  countAndFlagsBits = a3._countAndFlagsBits;
  v7 = BATracker.contentPrivateID(for:)(a3);
  v8 = v7.value._object;
  v9._countAndFlagsBits = countAndFlagsBits;
  v9._object = object;
  v10 = BATracker.contentUserID(for:)(v9);
  if (a4 >= 7)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    if (v10.value._object)
    {
      v11 = v10.value._object;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    if (v10.value._object)
    {
      v12 = v10.value._countAndFlagsBits;
    }

    else
    {
      v12 = 0;
    }

    if (v7.value._object)
    {
      v13 = v7.value._countAndFlagsBits;
    }

    else
    {
      v8 = 0xE000000000000000;
      v13 = 0;
    }

    sub_3D68(&qword_27FED0, &qword_1E9988);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1E9970;
    *(v14 + 32) = v13;
    *(v14 + 40) = v8;
    *(v14 + 48) = v12;
    *(v14 + 56) = v11;
    *(v14 + 64) = a4;
    *(v14 + 72) = countAndFlagsBits;
    *(v14 + 80) = object;
    *&v44[0] = v14;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v15 = sub_1E0CB0();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1E9970;
    v19 = enum case for DataEventTrait.onlyOnce(_:);
    v20 = *(v16 + 104);
    v20(v18 + v17, enum case for DataEventTrait.onlyOnce(_:), v15);
    sub_4C320();

    sub_1E0C00();
    v14, v21, v22, v23, v24, v25, v26, v27;
    v18, v28, v29, v30, v31, v32, v33, v34;
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1E9970;
    v20(v35 + v17, v19, v15);
    sub_4C374();
    sub_1E0C00();
    v35, v36, v37, v38, v39, v40, v41, v42;
    type metadata accessor for RemoveFromWantListEvent(0);
    sub_4C5C8(&qword_27FEE8, type metadata accessor for RemoveFromWantListEvent, protocol conformance descriptor for RemoveFromWantListEvent);
    memset(v44, 0, sizeof(v44));
    sub_1E0C10();
    return sub_4C1B8(v44);
  }

  return result;
}

uint64_t EventReporter.emitRemoveFromWantListEvent(using:with:)()
{
  sub_A3F08(v21);
  v0 = swift_allocObject();
  v1 = v21[3];
  *(v0 + 48) = v21[2];
  *(v0 + 64) = v1;
  v2 = v21[5];
  *(v0 + 80) = v21[4];
  *(v0 + 96) = v2;
  v3 = v21[1];
  *(v0 + 16) = v21[0];
  *(v0 + 32) = v3;
  v4 = swift_allocObject();
  v4[1].super.isa = sub_4BE30;
  *v4[1].dataProviders = v0;
  sub_13A5C(v21, &v20);

  sub_1E10C0();
  v0, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  return sub_14424(v21);
}

void EventReporter.emitRemoveFromWantListEvent(using:with:)(uint64_t a1, _OWORD *a2)
{
  v3 = a2[3];
  v26[2] = a2[2];
  v26[3] = v3;
  v4 = a2[5];
  v26[4] = a2[4];
  v26[5] = v4;
  v5 = a2[1];
  v26[0] = *a2;
  v26[1] = v5;
  v6 = swift_allocObject();
  v7 = a2[3];
  *(v6 + 48) = a2[2];
  *(v6 + 64) = v7;
  v8 = a2[5];
  *(v6 + 80) = a2[4];
  *(v6 + 96) = v8;
  v9 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v9;
  v10 = swift_allocObject();
  v10[1].super.isa = sub_4C6FC;
  *v10[1].dataProviders = v6;
  sub_13A5C(v26, &v25);

  sub_1E10C0();
  v6, v11, v12, v13, v14, v15, v16, v17;
  v10, v18, v19, v20, v21, v22, v23, v24;
}

uint64_t sub_4A60C(uint64_t a1, __int128 *a2)
{
  v41 = *(a2 + 24);
  v2 = *(a2 + 40);
  v3 = *(a2 + 16);
  v39 = *a2;
  v40 = v2;
  v4 = v41;
  v5 = v2;
  v6 = v39;
  sub_3D68(&qword_27FED0, &qword_1E9988);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E9970;
  *(v7 + 32) = v4;
  *(v7 + 48) = v5;
  *(v7 + 64) = v3;
  *(v7 + 72) = v6;
  v38 = v7;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v8 = sub_1E0CB0();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E9970;
  v12 = enum case for DataEventTrait.onlyOnce(_:);
  v13 = *(v9 + 104);
  v13(v11 + v10, enum case for DataEventTrait.onlyOnce(_:), v8);
  sub_4C3C8(&v41, v37);
  sub_4C3C8(&v40, v37);
  sub_4C3C8(&v39, v37);
  sub_4C320();
  sub_1E0C00();
  v7, v14, v15, v16, v17, v18, v19, v20;
  v11, v21, v22, v23, v24, v25, v26, v27;
  LOBYTE(v37[0]) = 1;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1E9970;
  v13(v28 + v10, v12, v8);
  sub_4C374();
  sub_1E0C00();
  v28, v29, v30, v31, v32, v33, v34, v35;
  type metadata accessor for RemoveFromWantListEvent(0);
  sub_4C5C8(&qword_27FEE8, type metadata accessor for RemoveFromWantListEvent, protocol conformance descriptor for RemoveFromWantListEvent);
  memset(v37, 0, sizeof(v37));
  sub_1E0C10();
  return sub_4C1B8(v37);
}

void EventReporter.emitRemoveFromWantToReadEvent(using:for:)(objc_class *a1, uint64_t a2, objc_class *a3)
{
  v6 = a1;
  if (a1 || (v6 = sub_BFB78()) != 0)
  {
    v7 = swift_allocObject();
    v7[1].super.isa = v6;
    *v7[1].dataProviders = a2;
    v7[2].super.isa = a3;
    v8 = swift_allocObject();
    v8[1].super.isa = sub_4BE7C;
    *v8[1].dataProviders = v7;
    v9 = a1;
    v10 = v6;

    sub_1E10C0();

    v7, v11, v12, v13, v14, v15, v16, v17;

    v8, v18, v19, v20, v21, v22, v23, v24;
  }
}

uint64_t sub_4A9DC(int a1, int a2, Swift::String a3)
{
  object = a3._object;
  countAndFlagsBits = a3._countAndFlagsBits;
  v5 = BATracker.contentPrivateID(for:)(a3);
  if (v5.value._object)
  {
    v6 = v5.value._countAndFlagsBits;
  }

  else
  {
    v6 = 0;
  }

  if (v5.value._object)
  {
    v7 = v5.value._object;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v8._countAndFlagsBits = countAndFlagsBits;
  v8._object = object;
  v9 = BATracker.contentUserID(for:)(v8);
  if (v9.value._object)
  {
    v10 = v9.value._countAndFlagsBits;
  }

  else
  {
    v10 = 0;
  }

  if (v9.value._object)
  {
    v11 = v9.value._object;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  sub_3D68(&qword_27FED0, &qword_1E9988);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E9970;
  *(v12 + 32) = v6;
  *(v12 + 40) = v7;
  *(v12 + 48) = v10;
  *(v12 + 56) = v11;
  *(v12 + 64) = 0;
  *(v12 + 72) = countAndFlagsBits;
  *(v12 + 80) = object;
  *&v42[0] = v12;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v13 = sub_1E0CB0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E9970;
  v17 = enum case for DataEventTrait.onlyOnce(_:);
  v18 = *(v14 + 104);
  v18(v16 + v15, enum case for DataEventTrait.onlyOnce(_:), v13);
  sub_4C320();

  sub_1E0C00();
  v12, v19, v20, v21, v22, v23, v24, v25;
  v16, v26, v27, v28, v29, v30, v31, v32;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1E9970;
  v18(v33 + v15, v17, v13);
  sub_4C374();
  sub_1E0C00();
  v33, v34, v35, v36, v37, v38, v39, v40;
  type metadata accessor for RemoveFromWantListEvent(0);
  sub_4C5C8(&qword_27FEE8, type metadata accessor for RemoveFromWantListEvent, protocol conformance descriptor for RemoveFromWantListEvent);
  memset(v42, 0, sizeof(v42));
  sub_1E0C10();
  return sub_4C1B8(v42);
}

void EventReporter.emitWantListAddEvent(using:contentID:contentAcquisitionType:contentType:supplementalContentCount:seriesType:productionType:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, id a6, unint64_t a7, unint64_t a8)
{
  v9 = a4;
  if (a4 >= 3)
  {
    goto LABEL_14;
  }

  v10 = a5;
  if (a5 >= 7)
  {
    goto LABEL_14;
  }

  if (a6)
  {
    v17 = [a6 intValue];
    if (a7 >= 4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v17 = 0;
    if (a7 >= 4)
    {
      goto LABEL_14;
    }
  }

  v41 = v17;
  if (a8 >= 3)
  {
LABEL_14:
    sub_1E1D50();
    __break(1u);
    return;
  }

  v18 = a1;
  if (a1 || (v18 = sub_BFB78()) != 0)
  {
    v40 = a1;
    v19 = a3;
    v20 = a6 == 0;
    v21 = swift_allocObject();
    *(v21 + 16) = v8;
    *(v21 + 24) = a2;
    *(v21 + 32) = v19;
    *(v21 + 40) = v10;
    *(v21 + 41) = v9;
    *(v21 + 48) = v18;
    *(v21 + 56) = v41;
    *(v21 + 60) = v20;
    *(v21 + 61) = 0x2010004u >> (8 * a7);
    *(v21 + 62) = a8;
    v22 = swift_allocObject();
    v22[1].super.isa = sub_4BE90;
    *v22[1].dataProviders = v21;
    v23 = v40;
    v24 = v8;

    v25 = v18;

    sub_1E10C0();

    v21, v26, v27, v28, v29, v30, v31, v32;

    v22, v33, v34, v35, v36, v37, v38, v39;
  }
}

void EventReporter.emitWantListAddEvent(using:contentID:contentAcquisitionType:contentType:supplementalContentCount:seriesType:productionType:)(void *a1, uint64_t a2, uint64_t a3, char *a4, char *a5, uint64_t a6, char *a7, char *a8)
{
  v13 = *a4;
  v14 = *a5;
  v15 = *a7;
  v16 = *a8;
  v17 = a1;
  if (a1 || (v17 = sub_BFB78()) != 0)
  {
    v18 = swift_allocObject();
    v19 = v15;
    v20 = a3;
    v21 = v18;
    *(v18 + 16) = v8;
    *(v18 + 24) = a2;
    *(v18 + 32) = v20;
    *(v18 + 40) = v14;
    *(v18 + 41) = v13;
    *(v18 + 48) = v17;
    *(v18 + 56) = a6;
    *(v18 + 60) = BYTE4(a6) & 1;
    *(v18 + 61) = v19;
    *(v18 + 62) = v16;
    v22 = swift_allocObject();
    v22[1].super.isa = sub_4C758;
    *v22[1].dataProviders = v21;
    v23 = a1;
    v24 = v8;

    v25 = v17;

    sub_1E10C0();

    v21, v26, v27, v28, v29, v30, v31, v32;

    v22, v33, v34, v35, v36, v37, v38, v39;
  }
}

void sub_4B07C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void (*a10)(void *, uint64_t, uint64_t, uint64_t, uint64_t, void *, uint64_t, uint64_t))
{
  v14 = sub_1E1780();
  v16 = v15;
  v17 = a3;
  v18 = a7;
  v19 = a1;
  a10(a3, v14, v16, a5, a6, a7, a8, a9);

  v16, v20, v21, v22, v23, v24, v25, v26;
}

uint64_t sub_4B148(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v72 = a7;
  v73 = a4;
  v16 = sub_1E1640();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4C270();
  *v19 = sub_1E19E0();
  (*(v17 + 104))(v19, enum case for DispatchPredicate.notOnQueue(_:), v16);
  v20 = sub_1E1660();
  result = (*(v17 + 8))(v19, v16);
  if (v20)
  {
    v68 = a5;
    v69 = a6;
    v70 = a8;
    v71 = a1;
    v67 = a10;
    v66 = a9;
    sub_3D68(&qword_281B70, &qword_1E9980);
    sub_1E1330();
    v29 = v80;
    result = v80 + 32;
    v30 = -*(v80 + 16);
    v31 = -1;
    while (1)
    {
      v32 = v30 + v31;
      if (v30 + v31 == -1)
      {
        break;
      }

      if (++v31 >= v29[1].super.isa)
      {
        __break(1u);
        goto LABEL_22;
      }

      v33 = result + 40;
      sub_4C2BC(result, &v80);
      v34 = *(&v81 + 1);
      v35 = v82;
      sub_48B8(&v80, *(&v81 + 1));
      v36 = (*(v35 + 8))(a2, a3, v73, v34, v35);
      sub_4E48(&v80, v37, v38, v39, v40, v41, v42, v43);
      result = v33;
      if (v36)
      {
        v29, v22, v23, v24, v25, v26, v27, v28;
        v44 = [v36 intValue];

        goto LABEL_8;
      }
    }

    v29, v22, v23, v24, v25, v26, v27, v28;
    v44 = 0;
LABEL_8:
    v45 = a3;
    v46._countAndFlagsBits = a3;
    v47 = v73;
    v46._object = v73;
    v48 = BATracker.contentPrivateID(for:)(v46);
    if (v48.value._object)
    {
      countAndFlagsBits = v48.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v48.value._object)
    {
      object = v48.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v51._countAndFlagsBits = v45;
    v51._object = v47;
    v52 = BATracker.contentUserID(for:)(v51);
    v86 = BYTE4(v70) & 1;
    v89 = v32 == -1;
    if (v52.value._object)
    {
      v53 = v52.value._countAndFlagsBits;
    }

    else
    {
      v53 = 0;
    }

    if (v52.value._object)
    {
      v54 = v52.value._object;
    }

    else
    {
      v54 = 0xE000000000000000;
    }

    *&v80 = v45;
    *(&v80 + 1) = v47;
    LOBYTE(v81) = v68;
    *(&v81 + 1) = *v90;
    DWORD1(v81) = *&v90[3];
    *(&v81 + 1) = countAndFlagsBits;
    *&v82 = object;
    *(&v82 + 1) = v53;
    *&v83 = v54;
    BYTE8(v83) = v69;
    BYTE9(v83) = 4;
    HIDWORD(v83) = v44;
    LOBYTE(v84) = v32 == -1;
    BYTE3(v84) = v88;
    *(&v84 + 1) = v87;
    DWORD1(v84) = v70;
    BYTE8(v84) = v86;
    BYTE9(v84) = v66;
    BYTE10(v84) = v67;
    *(&v84 + 11) = 515;
    BYTE13(v84) = 2;
    v85 = 0uLL;
    v76 = v82;
    v77 = v83;
    v78 = v84;
    v79 = 0uLL;
    v74 = v80;
    v75 = v81;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v55 = sub_1E0CB0();
    v56 = *(v55 - 8);
    v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1E9970;
    (*(v56 + 104))(v58 + v57, enum case for DataEventTrait.onlyOnce(_:), v55);
    sub_4C164();

    sub_1E0C00();
    v58, v59, v60, v61, v62, v63, v64, v65;
    sub_14424(&v80);
    type metadata accessor for WantListAddEvent(0);
    sub_4C5C8(&qword_27FEC8, type metadata accessor for WantListAddEvent, protocol conformance descriptor for WantListAddEvent);
    v74 = 0u;
    v75 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v74);
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

void EventReporter.emitWantListAddEvent(using:with:)(void *a1, _OWORD *a2)
{
  v4 = a2[3];
  v29[2] = a2[2];
  v29[3] = v4;
  v5 = a2[5];
  v29[4] = a2[4];
  v29[5] = v5;
  v6 = a2[1];
  v29[0] = *a2;
  v29[1] = v6;
  v7 = a1;
  if (a1 || (v7 = sub_BFB78()) != 0)
  {
    v8 = swift_allocObject();
    v9 = a2[3];
    *(v8 + 48) = a2[2];
    *(v8 + 64) = v9;
    v10 = a2[5];
    *(v8 + 80) = a2[4];
    *(v8 + 96) = v10;
    v11 = a2[1];
    *(v8 + 16) = *a2;
    *(v8 + 32) = v11;
    v12 = swift_allocObject();
    v12[1].super.isa = sub_4C054;
    *v12[1].dataProviders = v8;
    v13 = a1;
    sub_13A5C(v29, &v28);

    sub_1E10C0();

    v8, v14, v15, v16, v17, v18, v19, v20;
    v12, v21, v22, v23, v24, v25, v26, v27;
  }
}

uint64_t sub_4B808(uint64_t a1, __int128 *a2)
{
  v2 = a2[3];
  v19 = a2[2];
  v20 = v2;
  v3 = a2[5];
  v21 = a2[4];
  v22 = v3;
  v4 = a2[1];
  v17 = *a2;
  v18 = v4;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E9970;
  (*(v6 + 104))(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_4C164();
  sub_1E0C00();
  v8, v9, v10, v11, v12, v13, v14, v15;
  type metadata accessor for WantListAddEvent(0);
  sub_4C5C8(&qword_27FEC8, type metadata accessor for WantListAddEvent, protocol conformance descriptor for WantListAddEvent);
  v17 = 0u;
  v18 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v17);
}

void _s13BookAnalytics13EventReporterC018emitMarkAsFinishedC05using4with10markedDatayAA9BATrackerCSg_AA014BridgedContentL0CAA0n6MarkedL0CSgtF_0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_A3F08(v28);
  if (!a3)
  {
    v5 = 3;
    v6 = a1;
    if (!a1)
    {
      goto LABEL_5;
    }

LABEL_6:
    v7 = swift_allocObject();
    v8 = v28[3];
    *(v7 + 56) = v28[2];
    *(v7 + 72) = v8;
    v9 = v28[5];
    *(v7 + 88) = v28[4];
    *(v7 + 104) = v9;
    v10 = v28[1];
    *(v7 + 24) = v28[0];
    *(v7 + 16) = v5;
    *(v7 + 40) = v10;
    v11 = swift_allocObject();
    v11[1].super.isa = sub_4C748;
    *v11[1].dataProviders = v7;
    v12 = a1;
    sub_13A5C(v28, &v27);

    sub_1E10C0();
    sub_14424(v28);

    v7, v13, v14, v15, v16, v17, v18, v19;
    v11, v20, v21, v22, v23, v24, v25, v26;
    return;
  }

  v5 = *(a3 + OBJC_IVAR___BAMarkedData_isFinishedDateSet);
  v6 = a1;
  if (a1)
  {
    goto LABEL_6;
  }

LABEL_5:
  v6 = sub_BFB78();
  if (v6)
  {
    goto LABEL_6;
  }

  sub_14424(v28);
}

uint64_t sub_4BC74()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  *(v0 + 72), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 88), v15, v16, v17, v18, v19, v20, v21;

  return _swift_deallocObject(v0, 96, 7);
}

void sub_4BCCC(void *a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, objc_class *a7, uint64_t a8)
{
  v13 = a4[3];
  v38[2] = a4[2];
  v38[3] = v13;
  v14 = a4[5];
  v38[4] = a4[4];
  v38[5] = v14;
  v15 = a4[1];
  v38[0] = *a4;
  v38[1] = v15;
  v16 = a1;
  if (a1 || (v16 = sub_BFB78()) != 0)
  {
    v17 = swift_allocObject();
    v18 = a4[3];
    *(v17 + 48) = a4[2];
    *(v17 + 64) = v18;
    v19 = a4[5];
    *(v17 + 80) = a4[4];
    *(v17 + 96) = v19;
    v20 = a4[1];
    *(v17 + 16) = *a4;
    *(v17 + 32) = v20;
    *(v17 + 112) = a2;
    *(v17 + 120) = a3;
    *(v17 + 128) = 0;
    *(v17 + 136) = 0;
    v21 = swift_allocObject();
    v21[1].super.isa = a7;
    *v21[1].dataProviders = v17;
    v22 = a1;

    sub_13A5C(v38, &v37);

    sub_1E10C0();

    v17, v23, v24, v25, v26, v27, v28, v29;
    v21, v30, v31, v32, v33, v34, v35, v36;
  }
}

uint64_t sub_4BE38(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_4BE94(uint64_t a1)
{
  *(v1 + 32), v3, v4, v5, v6, v7, v8, v9;

  return _swift_deallocObject(v1, a1, 7);
}

void _s13BookAnalytics13EventReporterC015emitWantListAddC05using4withyAA9BATrackerCSg_AA18BridgedContentDataCtF_0(void *a1)
{
  sub_A3F08(v24);
  v2 = a1;
  if (a1 || (v2 = sub_BFB78()) != 0)
  {
    v3 = swift_allocObject();
    v4 = v24[3];
    *(v3 + 48) = v24[2];
    *(v3 + 64) = v4;
    v5 = v24[5];
    *(v3 + 80) = v24[4];
    *(v3 + 96) = v5;
    v6 = v24[1];
    *(v3 + 16) = v24[0];
    *(v3 + 32) = v6;
    v7 = swift_allocObject();
    v7[1].super.isa = sub_4C700;
    *v7[1].dataProviders = v3;
    v8 = a1;
    sub_13A5C(v24, &v23);

    sub_1E10C0();
    sub_14424(v24);

    v3, v9, v10, v11, v12, v13, v14, v15;
    v7, v16, v17, v18, v19, v20, v21, v22;
  }

  else
  {
    sub_14424(v24);
  }
}

uint64_t sub_4C064(uint64_t a1)
{
  *(v1 + 32), v3, v4, v5, v6, v7, v8, v9;

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_4C0B4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 41, 7);
}

uint64_t sub_4C0F4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 40, 7);
}

uint64_t sub_4C12C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

unint64_t sub_4C164()
{
  result = qword_282890;
  if (!qword_282890)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentData, &type metadata for ContentData, v0, v1);
    atomic_store(result, &qword_282890);
  }

  return result;
}

uint64_t sub_4C1B8(uint64_t a1)
{
  v2 = sub_3D68(&unk_281B50, &unk_1EDD70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4C220(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[6], v9, v10, v11, v12, v13, v14, v15;
  v8[8], v16, v17, v18, v19, v20, v21, v22;
  v8[13], v23, v24, v25, v26, v27, v28, v29;

  return _swift_deallocObject(v8, 112, 7);
}

unint64_t sub_4C270()
{
  result = qword_282880;
  if (!qword_282880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_282880);
  }

  return result;
}

uint64_t sub_4C2BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_4C320()
{
  result = qword_27FED8;
  if (!qword_27FED8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WantListRemovalData, &type metadata for WantListRemovalData, v0, v1);
    atomic_store(result, &qword_27FED8);
  }

  return result;
}

unint64_t sub_4C374()
{
  result = qword_27FEE0;
  if (!qword_27FEE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WantListRemovalTypeData, &type metadata for WantListRemovalTypeData, v0, v1);
    atomic_store(result, &qword_27FEE0);
  }

  return result;
}

unint64_t sub_4C424()
{
  result = qword_27FEF0;
  if (!qword_27FEF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollectionData, &type metadata for CollectionData, v0, v1);
    atomic_store(result, &qword_27FEF0);
  }

  return result;
}

unint64_t sub_4C478()
{
  result = qword_27FF08;
  if (!qword_27FF08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MarkedData, &type metadata for MarkedData, v0, v1);
    atomic_store(result, &qword_27FF08);
  }

  return result;
}

uint64_t sub_4C4D0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8[4], a2, a3, a4, a5, a6, a7, a8;
  v8[7], v9, v10, v11, v12, v13, v14, v15;
  v8[9], v16, v17, v18, v19, v20, v21, v22;
  v8[14], v23, v24, v25, v26, v27, v28, v29;

  return _swift_deallocObject(v8, 120, 7);
}

unint64_t sub_4C520()
{
  result = qword_27FF10;
  if (!qword_27FF10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LibraryEditData, &type metadata for LibraryEditData, v0, v1);
    atomic_store(result, &qword_27FF10);
  }

  return result;
}

unint64_t sub_4C574()
{
  result = qword_27FF20;
  if (!qword_27FF20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SingleCollectionData, &type metadata for SingleCollectionData, v0, v1);
    atomic_store(result, &qword_27FF20);
  }

  return result;
}

uint64_t sub_4C5C8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_4C610(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[6], v9, v10, v11, v12, v13, v14, v15;
  v8[8], v16, v17, v18, v19, v20, v21, v22;
  v8[13], v23, v24, v25, v26, v27, v28, v29;
  v8[15], v30, v31, v32, v33, v34, v35, v36;
  v8[17], v37, v38, v39, v40, v41, v42, v43;

  return _swift_deallocObject(v8, 144, 7);
}

void sub_4C784(void *a1@<X0>, BAEventReporter *a2@<X1>, _BYTE *a3@<X8>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>)
{
  if (a1 == 0x4449726F68747561 && a2 == 0xE800000000000000)
  {
    a2, a2, a1, a4, a5, a6, a7, a8;
    v19 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a3 = v19 & 1;
}

uint64_t sub_4C80C(uint64_t a1)
{
  v2 = sub_4C9C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_4C848(uint64_t a1)
{
  v2 = sub_4C9C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AuthorData.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_27FF48, &qword_1E9990);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_48B8(a1, a1[3]);
  sub_4C9C0();
  sub_1E1E00();
  sub_1E1CB0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_4C9C0()
{
  result = qword_27FF50;
  if (!qword_27FF50)
  {
    result = swift_getWitnessTable("\r;\a", &type metadata for AuthorData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FF50);
  }

  return result;
}

void AuthorData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_27FF58, &qword_1E9998);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_48B8(a1, a1[3]);
  sub_4C9C0();
  sub_1E1DF0();
  if (!v2)
  {
    v16 = sub_1E1BE0();
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    a2[1] = v18;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_4CB8C()
{
  result = qword_27FF60;
  if (!qword_27FF60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuthorData, &type metadata for AuthorData, v0, v1);
    atomic_store(result, &qword_27FF60);
  }

  return result;
}

unint64_t sub_4CBE4()
{
  result = qword_27FF68;
  if (!qword_27FF68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuthorData, &type metadata for AuthorData, v0, v1);
    atomic_store(result, &qword_27FF68);
  }

  return result;
}

unint64_t sub_4CC74()
{
  result = qword_27FF70;
  if (!qword_27FF70)
  {
    result = swift_getWitnessTable("%;\a", &type metadata for AuthorData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FF70);
  }

  return result;
}

unint64_t sub_4CCCC()
{
  result = qword_27FF78;
  if (!qword_27FF78)
  {
    result = swift_getWitnessTable("m;\a", &type metadata for AuthorData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FF78);
  }

  return result;
}

unint64_t sub_4CD24()
{
  result = qword_27FF80;
  if (!qword_27FF80)
  {
    result = swift_getWitnessTable("U;\a", &type metadata for AuthorData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FF80);
  }

  return result;
}

uint64_t PurchaseSuccessEvent.altContentTypeExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PurchaseSuccessEvent.altContentTypeExposureData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PurchaseSuccessEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseSuccessEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseSuccessEvent.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 28);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.contentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 28);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseSuccessEvent.prevAltContentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 32);
  v4 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.prevAltContentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 32);
  v4 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseSuccessEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 36);
  v4 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 36);
  v4 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseSuccessEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseSuccessEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseSuccessEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 48);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 48);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseSuccessEvent.uppParentContentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 52);
  v4 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.uppParentContentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 52);
  v4 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseSuccessEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 56);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 56);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseSuccessEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PurchaseSuccessEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.required<A>(_:);
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  (*(*(v15 - 8) + 104))(a1 + v14, v6, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  v23 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  v25 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v6, v25);
}

uint64_t PurchaseSuccessEvent.Model.altContentTypeExposureData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 41);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_17AA4(v7, &v6, &qword_27FFE8, &qword_1FC3D0);
}

uint64_t PurchaseSuccessEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v10 = v1[6];
  v11 = v2;
  v4 = v1[9];
  v12 = v1[8];
  v3 = v12;
  v13 = v4;
  v6 = v1[5];
  v9[0] = v1[4];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_13A5C(v9, &v8);
}

uint64_t PurchaseSuccessEvent.Model.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  v9 = *(v1 + 192);
  v10[0] = v2;
  *(v10 + 13) = *(v1 + 221);
  v3 = *(v10 + 13);
  v4 = *(v1 + 176);
  v8[0] = *(v1 + 160);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 61) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_17AA4(v8, v7, &qword_27FFF0, &unk_1E9C00);
}

uint64_t PurchaseSuccessEvent.Model.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v11[0] = *(v1 + 232);
  v2 = *(v1 + 248);
  v3 = *(v1 + 296);
  v5 = *(v1 + 328);
  v12 = *(v1 + 312);
  v4 = v12;
  v13[0] = v5;
  *(v13 + 14) = *(v1 + 342);
  v6 = *(v13 + 14);
  v7 = *(v1 + 264);
  v8 = *(v1 + 280);
  v11[1] = v2;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v3;
  *a1 = v11[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  *(a1 + 110) = v6;
  return sub_17AA4(v11, v10, &qword_27FFF8, &qword_1F06D0);
}

uint64_t PurchaseSuccessEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 360);
  v3 = *(v1 + 368);
  v4 = *(v1 + 369);
  v5 = *(v1 + 376);
  v6 = *(v1 + 384);
  *a1 = *(v1 + 352);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
}

uint64_t PurchaseSuccessEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 408);
  *a1 = *(v1 + 392);
  *(a1 + 16) = v2;
}

uint64_t PurchaseSuccessEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[52];
  v3 = v1[53];
  v4 = v1[54];
  v5 = v1[55];
  v6 = v1[56];
  v7 = v1[57];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

void PurchaseSuccessEvent.Model.uppParentContentData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 472);
  v3 = *(v1 + 480);
  v4 = *(v1 + 488);
  v5 = *(v1 + 496);
  v6 = *(v1 + 504);
  v7 = *(v1 + 512);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = *(v1 + 520);
  sub_4E2A0(v2, v3, v4, v5, v6, v7);
}

void sub_4E2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t PurchaseSuccessEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent.Model(0) + 56);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.Model.init(altContentTypeExposureData:contentData:contentStoreData:contentExposureData:prevAltContentExposureData:purchaseData:upSellData:seriesData:suggestionData:uppParentContentData:eventData:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int16 *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12)
{
  v13 = *a5;
  v14 = *a6;
  v15 = a6[1];
  v16 = *(a6 + 16);
  v17 = *(a6 + 17);
  v18 = a6[3];
  v19 = a6[4];
  v20 = *(a7 + 16);
  v21 = *a10;
  v22 = *(a11 + 48);
  v23 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v23;
  *(a9 + 32) = a1[2];
  *(a9 + 41) = *(a1 + 41);
  v24 = a2[3];
  *(a9 + 96) = a2[2];
  *(a9 + 112) = v24;
  v25 = a2[5];
  *(a9 + 128) = a2[4];
  *(a9 + 144) = v25;
  v26 = a2[1];
  *(a9 + 64) = *a2;
  *(a9 + 80) = v26;
  *(a9 + 221) = *(a3 + 61);
  v27 = *(a3 + 48);
  *(a9 + 192) = *(a3 + 32);
  *(a9 + 208) = v27;
  v28 = *(a3 + 16);
  *(a9 + 160) = *a3;
  *(a9 + 176) = v28;
  v29 = a4[3];
  *(a9 + 264) = a4[2];
  *(a9 + 280) = v29;
  v30 = *a4;
  *(a9 + 248) = a4[1];
  *(a9 + 232) = v30;
  *(a9 + 342) = *(a4 + 110);
  v31 = a4[6];
  *(a9 + 312) = a4[5];
  *(a9 + 328) = v31;
  *(a9 + 296) = a4[4];
  *(a9 + 350) = v13;
  *(a9 + 352) = v14;
  *(a9 + 360) = v15;
  *(a9 + 368) = v16;
  *(a9 + 369) = v17;
  *(a9 + 376) = v18;
  *(a9 + 384) = v19;
  *(a9 + 392) = *a7;
  *(a9 + 408) = v20;
  v32 = a8[1];
  *(a9 + 416) = *a8;
  *(a9 + 432) = v32;
  *(a9 + 448) = a8[2];
  *(a9 + 464) = v21;
  v33 = *(a11 + 16);
  *(a9 + 472) = *a11;
  *(a9 + 488) = v33;
  *(a9 + 504) = *(a11 + 32);
  *(a9 + 520) = v22;
  v34 = *(type metadata accessor for PurchaseSuccessEvent.Model(0) + 56);
  v35 = sub_1E1150();
  v36 = *(*(v35 - 8) + 32);

  return v36(a9 + v34, a12, v35);
}

unint64_t sub_4E4F4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x44746E65746E6F63;
    v7 = 0xD000000000000013;
    if (a1 != 3)
    {
      v7 = 0xD00000000000001ALL;
    }

    if (a1 == 2)
    {
      v7 = 0xD000000000000010;
    }

    if (!a1)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6974736567677573;
    v2 = 0xD000000000000014;
    if (a1 != 9)
    {
      v2 = 0x746144746E657665;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6573616863727570;
    v4 = 0x61446C6C65537075;
    if (a1 != 6)
    {
      v4 = 0x6144736569726573;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_4E698@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_5123C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_4E6C0(uint64_t a1)
{
  v2 = sub_4EF74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_4E6FC(uint64_t a1)
{
  v2 = sub_4EF74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PurchaseSuccessEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_280000, &qword_1E9C10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v71 - v7;
  sub_48B8(a1, a1[3]);
  sub_4EF74();
  sub_1E1E00();
  v9 = v3[1];
  v125[0] = *v3;
  v125[1] = v9;
  v11 = *v3;
  v10 = v3[1];
  v126[0] = v3[2];
  *(v126 + 9) = *(v3 + 41);
  v122 = v11;
  v123 = v10;
  v124[0] = v3[2];
  *(v124 + 9) = *(v3 + 41);
  v121 = 0;
  sub_17AA4(v125, &v92, &qword_27FFE8, &qword_1FC3D0);
  sub_4EFC8();
  sub_1E1C80();
  if (v2)
  {
    v92 = v122;
    v93 = v123;
    v94[0] = v124[0];
    *(v94 + 9) = *(v124 + 9);
    sub_18E48(&v92, &qword_27FFE8, &qword_1FC3D0);
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v114[0] = v122;
    v114[1] = v123;
    v115[0] = v124[0];
    *(v115 + 9) = *(v124 + 9);
    sub_18E48(v114, &qword_27FFE8, &qword_1FC3D0);
    v13 = v3[7];
    v14 = v3[5];
    v117 = v3[6];
    v118 = v13;
    v15 = v3[7];
    v16 = v3[9];
    v119 = v3[8];
    v120 = v16;
    v17 = v3[5];
    v116[0] = v3[4];
    v116[1] = v17;
    v110 = v117;
    v111 = v15;
    v18 = v3[9];
    v112 = v119;
    v113 = v18;
    v108 = v116[0];
    v109 = v14;
    v107 = 1;
    sub_13A5C(v116, &v92);
    sub_143D0();
    sub_1E1CF0();
    v103[2] = v110;
    v103[3] = v111;
    v103[4] = v112;
    v103[5] = v113;
    v103[0] = v108;
    v103[1] = v109;
    sub_14424(v103);
    v19 = v3[11];
    v20 = v3[13];
    v105 = v3[12];
    *v106 = v20;
    v21 = v3[11];
    v104[0] = v3[10];
    v104[1] = v21;
    v22 = v3[13];
    v101 = v105;
    v102[0] = v22;
    *&v106[13] = *(v3 + 221);
    *(v102 + 13) = *(v3 + 221);
    v99 = v104[0];
    v100 = v19;
    v98 = 2;
    sub_17AA4(v104, &v92, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    v127 = v5;
    sub_1E1C80();
    v90[2] = v101;
    v91[0] = v102[0];
    *(v91 + 13) = *(v102 + 13);
    v90[0] = v99;
    v90[1] = v100;
    sub_18E48(v90, &qword_27FFF0, &unk_1E9C00);
    v23 = *(v3 + 312);
    v24 = *(v3 + 280);
    v95 = *(v3 + 296);
    v96 = v23;
    v25 = *(v3 + 312);
    *v97 = *(v3 + 328);
    v26 = *(v3 + 248);
    v92 = *(v3 + 232);
    v93 = v26;
    v27 = *(v3 + 280);
    v94[0] = *(v3 + 264);
    v94[1] = v27;
    v87 = v95;
    v88 = v25;
    v89[0] = *(v3 + 328);
    v28 = *(v3 + 248);
    v83 = *(v3 + 232);
    v84 = v28;
    *&v97[14] = *(v3 + 342);
    *(v89 + 14) = *(v3 + 342);
    v85 = v94[0];
    v86 = v24;
    v82 = 3;
    sub_17AA4(&v92, v80, &qword_27FFF8, &qword_1F06D0);
    sub_4F070();
    sub_1E1C80();
    v80[4] = v87;
    v80[5] = v88;
    *v81 = v89[0];
    *&v81[14] = *(v89 + 14);
    v80[0] = v83;
    v80[1] = v84;
    v80[2] = v85;
    v80[3] = v86;
    sub_18E48(v80, &qword_27FFF8, &qword_1F06D0);
    LOWORD(v73) = *(v3 + 175);
    v79 = 4;
    sub_4F0C4();
    sub_1E1C80();
    v29 = *(v3 + 45);
    v30 = *(v3 + 368);
    v31 = *(v3 + 369);
    v32 = *(v3 + 47);
    v33 = *(v3 + 48);
    *&v73 = *(v3 + 44);
    *(&v73 + 1) = v29;
    LOBYTE(v74) = v30;
    BYTE1(v74) = v31;
    v75 = v32;
    v76 = v33;
    v79 = 5;
    sub_2C904();

    v72 = v8;
    sub_1E1CF0();
    v34 = *(&v73 + 1);
    v76, v35, v36, v37, v38, v39, v40, v41;
    v34, v42, v43, v44, v45, v46, v47, v48;
    v49 = *(v3 + 51);
    v73 = *(v3 + 392);
    v74 = v49;
    v79 = 6;
    sub_28450();

    sub_1E1C80();
    v74, v50, v51, v52, v53, v54, v55, v56;
    v57 = *(v3 + 53);
    v58 = *(v3 + 54);
    v59 = *(v3 + 55);
    v60 = *(v3 + 56);
    v61 = *(v3 + 57);
    *&v73 = *(v3 + 52);
    *(&v73 + 1) = v57;
    v74 = v58;
    v75 = v59;
    v76 = v60;
    v77 = v61;
    v79 = 7;
    sub_13BDC(v73, v57, v58, v59, v60, v61);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v73, *(&v73 + 1), v74, v75, v76, v77, v62, v63);
    LOBYTE(v73) = *(v3 + 464);
    v79 = 8;
    sub_284F8();
    sub_1E1C80();
    v64 = *(v3 + 60);
    v65 = *(v3 + 61);
    v66 = *(v3 + 62);
    v67 = *(v3 + 63);
    v68 = *(v3 + 64);
    v69 = *(v3 + 520);
    *&v73 = *(v3 + 59);
    *(&v73 + 1) = v64;
    v74 = v65;
    v75 = v66;
    v76 = v67;
    v77 = v68;
    v78 = v69;
    v79 = 9;
    sub_4E2A0(v73, v64, v65, v66, v67, v68);
    sub_4F118();
    sub_1E1C80();
    sub_4F16C(v73, *(&v73 + 1), v74, v75, v76, v77, v78, v70);
    type metadata accessor for PurchaseSuccessEvent.Model(0);
    LOBYTE(v73) = 10;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    return (*(v6 + 8))(v72, v127);
  }
}

unint64_t sub_4EF74()
{
  result = qword_280008;
  if (!qword_280008)
  {
    result = swift_getWitnessTable("98\a", &type metadata for PurchaseSuccessEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_280008);
  }

  return result;
}

unint64_t sub_4EFC8()
{
  result = qword_280010;
  if (!qword_280010)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AltContentTypeExposureData, &type metadata for AltContentTypeExposureData, v0, v1);
    atomic_store(result, &qword_280010);
  }

  return result;
}

unint64_t sub_4F01C()
{
  result = qword_280018;
  if (!qword_280018)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentStoreData, &type metadata for ContentStoreData, v0, v1);
    atomic_store(result, &qword_280018);
  }

  return result;
}

unint64_t sub_4F070()
{
  result = qword_280020;
  if (!qword_280020)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentExposureData, &type metadata for ContentExposureData, v0, v1);
    atomic_store(result, &qword_280020);
  }

  return result;
}

unint64_t sub_4F0C4()
{
  result = qword_280028;
  if (!qword_280028)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PrevAltContentExposureData, &type metadata for PrevAltContentExposureData, v0, v1);
    atomic_store(result, &qword_280028);
  }

  return result;
}

unint64_t sub_4F118()
{
  result = qword_280030;
  if (!qword_280030)
  {
    result = swift_getWitnessTable("q\x1B\a", &type metadata for UppParentContentData, v0, v1);
    atomic_store(result, &qword_280030);
  }

  return result;
}

void sub_4F16C(uint64_t a1, BAEventReporter *a2, void *a3, BAEventReporter *a4, void *a5, BAEventReporter *a6, int64_t a7, void *a8)
{
  if (a2)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    a4, v10, v11, v12, v13, v14, v15, v16;

    a6, v17, v18, v19, v20, v21, v22, v23;
  }
}

void PurchaseSuccessEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_1E1150();
  v51 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_3D68(&qword_280038, &qword_1E9C18);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v7 = v48 - v6;
  v8 = type metadata accessor for PurchaseSuccessEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v80 = a1;
  sub_48B8(a1, v11);
  sub_4EF74();
  v54 = v7;
  v12 = v56;
  sub_1E1DF0();
  if (v12)
  {
    sub_4E48(v80, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v49 = v5;
    v50 = v3;
    v56 = v10;
    v20 = v53;
    v75 = 0;
    sub_4FB10();
    sub_1E1BB0();
    v21 = v77;
    v22 = v56;
    *v56 = v76;
    *(v22 + 1) = v21;
    *(v22 + 2) = v78[0];
    *(v22 + 41) = *(v78 + 9);
    v68 = 1;
    sub_14CB8();
    sub_1E1C20();
    v23 = v72;
    *(v22 + 6) = v71;
    *(v22 + 7) = v23;
    v24 = v74;
    *(v22 + 8) = v73;
    *(v22 + 9) = v24;
    v25 = v70;
    *(v22 + 4) = v69;
    *(v22 + 5) = v25;
    v63 = 2;
    sub_4FB64();
    v48[1] = 0;
    sub_1E1BB0();
    v26 = *v67;
    *(v22 + 12) = v66;
    *(v22 + 13) = v26;
    *(v22 + 221) = *&v67[13];
    v27 = v65;
    *(v22 + 10) = v64;
    *(v22 + 11) = v27;
    v62 = 3;
    sub_4FBB8();
    sub_1E1BB0();
    v28 = v78[3];
    *(v22 + 232) = v78[2];
    *(v22 + 248) = v28;
    v29 = v78[7];
    *(v22 + 296) = v78[6];
    *(v22 + 312) = v29;
    *(v22 + 328) = v79[0];
    *(v22 + 342) = *(v79 + 14);
    v30 = v78[5];
    *(v22 + 264) = v78[4];
    *(v22 + 280) = v30;
    v61 = 4;
    sub_4FC0C();
    sub_1E1BB0();
    *(v22 + 175) = v57;
    v61 = 5;
    sub_2C8AC();
    sub_1E1C20();
    v31 = *(&v57 + 1);
    v32 = v58;
    v33 = BYTE1(v58);
    v34 = *(&v58 + 1);
    v35 = v59;
    *(v22 + 44) = v57;
    *(v22 + 45) = v31;
    v22[368] = v32;
    v22[369] = v33;
    *(v22 + 47) = v34;
    *(v22 + 48) = v35;
    v61 = 6;
    sub_28EF4();
    sub_1E1BB0();
    v36 = v58;
    *(v22 + 392) = v57;
    *(v22 + 51) = v36;
    v61 = 7;
    sub_DAD8();
    sub_1E1BB0();
    v37 = v58;
    *(v22 + 26) = v57;
    *(v22 + 27) = v37;
    *(v22 + 28) = v59;
    v61 = 8;
    sub_28F9C();
    sub_1E1BB0();
    v22[464] = v57;
    v61 = 9;
    sub_4FC60();
    sub_1E1BB0();
    v38 = v60;
    v39 = v58;
    *(v22 + 472) = v57;
    *(v22 + 488) = v39;
    *(v22 + 504) = v59;
    v56[520] = v38;
    LOBYTE(v57) = 10;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v54, v55);
    v40 = v56;
    (*(v51 + 32))(&v56[*(v8 + 56)], v49, v50);
    sub_4FCB4(v40, v52);
    sub_4E48(v80, v41, v42, v43, v44, v45, v46, v47);
    sub_4FD18(v40);
  }
}

unint64_t sub_4FB10()
{
  result = qword_280040;
  if (!qword_280040)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AltContentTypeExposureData, &type metadata for AltContentTypeExposureData, v0, v1);
    atomic_store(result, &qword_280040);
  }

  return result;
}

unint64_t sub_4FB64()
{
  result = qword_280048;
  if (!qword_280048)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentStoreData, &type metadata for ContentStoreData, v0, v1);
    atomic_store(result, &qword_280048);
  }

  return result;
}

unint64_t sub_4FBB8()
{
  result = qword_280050;
  if (!qword_280050)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentExposureData, &type metadata for ContentExposureData, v0, v1);
    atomic_store(result, &qword_280050);
  }

  return result;
}

unint64_t sub_4FC0C()
{
  result = qword_280058;
  if (!qword_280058)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PrevAltContentExposureData, &type metadata for PrevAltContentExposureData, v0, v1);
    atomic_store(result, &qword_280058);
  }

  return result;
}

unint64_t sub_4FC60()
{
  result = qword_280060;
  if (!qword_280060)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UppParentContentData, &type metadata for UppParentContentData, v0, v1);
    atomic_store(result, &qword_280060);
  }

  return result;
}

uint64_t sub_4FCB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseSuccessEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4FD18(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseSuccessEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4FE14@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v10 - 8) + 104))(a2 + v9, v4, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  (*(*(v16 - 8) + 104))(a2 + v15, v7, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  v24 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  v26 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v7, v26);
}

uint64_t sub_501C0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_22:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_21:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_22;
  }

  v14 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_21;
  }

  v15 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_21;
  }

  v16 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_21;
  }

  v17 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_21;
  }

  v18 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_21;
  }

  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_21;
  }

  v20 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_21;
  }

  v21 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_21;
  }

  v23 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v24 = *(*(v23 - 8) + 48);
  v25 = a1 + a3[14];

  return v24(v25, a2, v23);
}

uint64_t sub_505D8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_22:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_21:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_22;
  }

  v16 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_21;
  }

  v17 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_21;
  }

  v18 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_21;
  }

  v19 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_21;
  }

  v20 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_21;
  }

  v21 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_21;
  }

  v22 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_21;
  }

  v23 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_21;
  }

  v25 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v26 = *(*(v25 - 8) + 56);
  v27 = a1 + a4[14];

  return v26(v27, a2, a2, v25);
}

void sub_509E8(uint64_t a1)
{
  sub_50D74(319, &qword_2800D0, sub_4FB10, sub_4EFC8, &type metadata for AltContentTypeExposureData);
  if (v1 <= 0x3F)
  {
    sub_50D74(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
    if (v2 <= 0x3F)
    {
      sub_50D74(319, &qword_2800D8, sub_4FB64, sub_4F01C, &type metadata for ContentStoreData);
      if (v3 <= 0x3F)
      {
        sub_50D74(319, &qword_2800E0, sub_4FBB8, sub_4F070, &type metadata for ContentExposureData);
        if (v4 <= 0x3F)
        {
          sub_50D74(319, &qword_2800E8, sub_4FC0C, sub_4F0C4, &type metadata for PrevAltContentExposureData);
          if (v5 <= 0x3F)
          {
            sub_50D74(319, &qword_2800F0, sub_2C8AC, sub_2C904, &type metadata for PurchaseData);
            if (v6 <= 0x3F)
            {
              sub_50D74(319, &qword_27EAE8, sub_28EF4, sub_28450, &type metadata for UpSellData);
              if (v7 <= 0x3F)
              {
                sub_50D74(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
                if (v8 <= 0x3F)
                {
                  sub_50D74(319, &unk_27EAF8, sub_28F9C, sub_284F8, &type metadata for SuggestionData);
                  if (v9 <= 0x3F)
                  {
                    sub_50D74(319, &unk_2800F8, sub_4FC60, sub_4F118, &type metadata for UppParentContentData);
                    if (v10 <= 0x3F)
                    {
                      sub_5684(319);
                      if (v11 <= 0x3F)
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
  }
}

void sub_50D74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_50E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
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
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_50EC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_50F68(uint64_t a1)
{
  sub_19FE0(319, &qword_2801B8, &type metadata for AltContentTypeExposureData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_2801C0, &type metadata for ContentStoreData);
    if (v2 <= 0x3F)
    {
      sub_19FE0(319, &qword_2801C8, &type metadata for ContentExposureData);
      if (v3 <= 0x3F)
      {
        sub_19FE0(319, &qword_2801D0, &type metadata for PrevAltContentExposureData);
        if (v4 <= 0x3F)
        {
          sub_19FE0(319, &qword_27EBC8, &type metadata for UpSellData);
          if (v5 <= 0x3F)
          {
            sub_19FE0(319, &qword_27E398, &type metadata for SeriesData);
            if (v6 <= 0x3F)
            {
              sub_19FE0(319, &qword_27EBD8, &type metadata for SuggestionData);
              if (v7 <= 0x3F)
              {
                sub_19FE0(319, &unk_2801D8, &type metadata for UppParentContentData);
                if (v8 <= 0x3F)
                {
                  sub_1E1150();
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

unint64_t sub_51138()
{
  result = qword_280230;
  if (!qword_280230)
  {
    result = swift_getWitnessTable("Q8\a", &type metadata for PurchaseSuccessEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_280230);
  }

  return result;
}

unint64_t sub_51190()
{
  result = qword_280238;
  if (!qword_280238)
  {
    result = swift_getWitnessTable(byte_1E9D88, &type metadata for PurchaseSuccessEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_280238);
  }

  return result;
}

unint64_t sub_511E8()
{
  result = qword_280240;
  if (!qword_280240)
  {
    result = swift_getWitnessTable(byte_1E9DB0, &type metadata for PurchaseSuccessEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_280240);
  }

  return result;
}

uint64_t sub_5123C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x8000000000213F10;
  if (a1 == 0xD00000000000001ALL && 0x8000000000213F10 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEB00000000617461;
    if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x8000000000213F30;
      if (a1 == 0xD000000000000010 && 0x8000000000213F30 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v14 = 0x8000000000213F50;
        if (a1 == 0xD000000000000013 && 0x8000000000213F50 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else
        {
          v15 = 0x8000000000213F70;
          if (a1 == 0xD00000000000001ALL && 0x8000000000213F70 == a2 || (sub_1E1D30() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 4;
          }

          else
          {
            v16 = 0xEC00000061746144;
            if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
            {
              a2, v16, a3, a4, a5, a6, a7, a8;
              return 5;
            }

            else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
            {
              a2, v16, a3, a4, a5, a6, a7, a8;
              return 6;
            }

            else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
            {
              a2, v16, a3, a4, a5, a6, a7, a8;
              return 7;
            }

            else
            {
              v17 = 0xEE00617461446E6FLL;
              if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
              {
                a2, v17, a3, a4, a5, a6, a7, a8;
                return 8;
              }

              else
              {
                v18 = 0x8000000000213F90;
                if (a1 == 0xD000000000000014 && 0x8000000000213F90 == a2 || (sub_1E1D30() & 1) != 0)
                {
                  a2, v18, a3, a4, a5, a6, a7, a8;
                  return 9;
                }

                else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
                {
                  0xE900000000000061, v18, a3, a4, a5, a6, a7, a8;
                  return 10;
                }

                else
                {
                  v19 = sub_1E1D30();
                  a2, v20, v21, v22, v23, v24, v25, v26;
                  if (v19)
                  {
                    return 10;
                  }

                  else
                  {
                    return 11;
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

uint64_t GenreData.contentType.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void GenreData.contentType.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
}

uint64_t ClickData.outBoundURL.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void ClickData.outBoundURL.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 56), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 48) = a1;
  *(v8 + 56) = a2;
}

uint64_t ContentExposureData.cellSize.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void ContentExposureData.cellSize.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 72), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 64) = a1;
  *(v8 + 72) = a2;
}

uint64_t ContentExposureData.positionInSubSection.setter(uint64_t result)
{
  *(v1 + 80) = result;
  *(v1 + 84) = BYTE4(result) & 1;
  return result;
}

uint64_t ContentExposureData.subSectionID.setter(uint64_t result)
{
  *(v1 + 88) = result;
  *(v1 + 92) = BYTE4(result) & 1;
  return result;
}

uint64_t ContentExposureData.subSectionName.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

void ContentExposureData.subSectionName.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 104), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 96) = a1;
  *(v8 + 104) = a2;
}

uint64_t ContentExposureData.subSectionPosition.setter(uint64_t result)
{
  *(v1 + 112) = result;
  *(v1 + 116) = BYTE4(result) & 1;
  return result;
}

void __swiftcall ContentExposureData.init(sectionType:sectionID:sectionName:positionInSection:cellSize:positionInSubSection:subSectionID:subSectionName:subSectionPosition:hasLanguageTag:)(BookAnalytics::ContentExposureData *__return_ptr retstr, Swift::String sectionType, Swift::String sectionID, Swift::String sectionName, Swift::String positionInSection, Swift::String cellSize, Swift::Int32_optional positionInSubSection, Swift::Int32_optional subSectionID, Swift::String_optional subSectionName, Swift::Int32_optional subSectionPosition, Swift::Bool_optional hasLanguageTag)
{
  retstr->sectionType = sectionType;
  retstr->sectionID = sectionID;
  retstr->sectionName = sectionName;
  retstr->positionInSection = positionInSection;
  retstr->cellSize = cellSize;
  retstr->positionInSubSection.value = positionInSubSection.value;
  retstr->positionInSubSection.is_nil = positionInSubSection.is_nil;
  *(&retstr->subSectionID.value + 3) = subSectionID.value;
  *(&retstr->subSectionID + 7) = subSectionID.is_nil;
  retstr->subSectionName = subSectionName;
  retstr->subSectionPosition.value = subSectionPosition.value;
  retstr->subSectionPosition.is_nil = subSectionPosition.is_nil;
  retstr->hasLanguageTag = hasLanguageTag;
}

unint64_t sub_51900(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6974636553627573;
    v6 = 0x75676E614C736168;
    if (a1 == 8)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000014;
    if (a1 != 5)
    {
      v7 = 0x6974636553627573;
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
    v1 = 0x546E6F6974636573;
    v2 = 0x4E6E6F6974636573;
    v3 = 0xD000000000000011;
    if (a1 != 3)
    {
      v3 = 0x657A69536C6C6563;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x496E6F6974636573;
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

uint64_t sub_51A78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_529B8(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_51AA0(uint64_t a1)
{
  v2 = sub_526F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_51ADC(uint64_t a1)
{
  v2 = sub_526F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ContentExposureData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_280248, &qword_1E9E90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - v5;
  v7 = *(v1 + 16);
  v29 = *(v1 + 24);
  v30 = v7;
  v8 = *(v1 + 32);
  v27 = *(v1 + 40);
  v28 = v8;
  v9 = *(v1 + 48);
  v25 = *(v1 + 56);
  v26 = v9;
  v10 = *(v1 + 64);
  v23 = *(v1 + 72);
  v24 = v10;
  v22 = *(v1 + 80);
  v21 = *(v1 + 84);
  v20 = *(v1 + 88);
  v19 = *(v1 + 92);
  v11 = *(v1 + 104);
  v17 = *(v1 + 96);
  v18 = v11;
  v16 = *(v1 + 112);
  LODWORD(v10) = *(v1 + 116);
  v14[2] = *(v1 + 117);
  v15 = v10;
  sub_48B8(a1, a1[3]);
  sub_526F4();
  sub_1E1E00();
  v44 = 0;
  v12 = v31;
  sub_1E1CB0();
  if (v12)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v43 = 1;
  sub_1E1CB0();
  v42 = 2;
  sub_1E1CB0();
  v41 = 3;
  sub_1E1CB0();
  v40 = 4;
  sub_1E1CB0();
  v39 = 5;
  v37 = v21;
  sub_1E1C90();
  v38 = 6;
  v36 = v19;
  sub_1E1C90();
  v35 = 7;
  sub_1E1C50();
  v34 = 8;
  v33 = v15;
  sub_1E1C90();
  v32 = 9;
  sub_1E1C60();
  return (*(v4 + 8))(v6, v3);
}

void ContentExposureData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v65 = sub_3D68(&qword_280258, &qword_1E9E98);
  v5 = *(v65 - 8);
  __chkstk_darwin(v65);
  v7 = &v50 - v6;
  sub_48B8(a1, a1[3]);
  sub_526F4();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v8, v9, v10, v11, v12, v13, v14);
    0, v16, v17, v18, v19, v20, v21, v22;
  }

  else
  {
    v15 = v5;
    LOBYTE(v73[0]) = 0;
    v62 = sub_1E1BE0();
    v64 = v23;
    LOBYTE(v73[0]) = 1;
    v24 = sub_1E1BE0();
    v63 = v25;
    v58 = v24;
    LOBYTE(v73[0]) = 2;
    v57 = sub_1E1BE0();
    v61 = v26;
    LOBYTE(v73[0]) = 3;
    v56 = sub_1E1BE0();
    v60 = v27;
    LOBYTE(v73[0]) = 4;
    v55 = sub_1E1BE0();
    v59 = v28;
    LOBYTE(v73[0]) = 5;
    v29 = sub_1E1BC0();
    v85 = BYTE4(v29) & 1;
    LOBYTE(v73[0]) = 6;
    v30 = v29;
    v31 = sub_1E1BC0();
    v53 = v30;
    v54 = v31;
    v84 = BYTE4(v31) & 1;
    LOBYTE(v73[0]) = 7;
    v52 = sub_1E1B80();
    v33 = v32;
    LOBYTE(v73[0]) = 8;
    v51 = sub_1E1BC0();
    v83 = BYTE4(v51) & 1;
    v86 = 9;
    v34 = sub_1E1B90();
    (*(v15 + 8))(v7, v65);
    *&v66 = v62;
    *(&v66 + 1) = v64;
    *&v67 = v58;
    *(&v67 + 1) = v63;
    *&v68 = v57;
    *(&v68 + 1) = v61;
    *&v69 = v56;
    *(&v69 + 1) = v60;
    *&v70 = v55;
    *(&v70 + 1) = v59;
    v35 = v52;
    LODWORD(v71) = v53;
    LODWORD(v65) = v85;
    BYTE4(v71) = v85;
    DWORD2(v71) = v54;
    HIDWORD(v50) = v84;
    BYTE12(v71) = v84;
    *v72 = v52;
    *&v72[8] = v33;
    v36 = v51;
    *&v72[16] = v51;
    LOBYTE(v15) = v83;
    v72[20] = v83;
    v72[21] = v34;
    v37 = v66;
    v38 = v67;
    v39 = v69;
    *(a2 + 32) = v68;
    *(a2 + 48) = v39;
    *a2 = v37;
    *(a2 + 16) = v38;
    v40 = v70;
    v41 = v71;
    v42 = *v72;
    *(a2 + 110) = *&v72[14];
    *(a2 + 80) = v41;
    *(a2 + 96) = v42;
    *(a2 + 64) = v40;
    sub_52748(&v66, v73);
    sub_4E48(a1, v43, v44, v45, v46, v47, v48, v49);
    v73[0] = v62;
    v73[1] = v64;
    v73[2] = v58;
    v73[3] = v63;
    v73[4] = v57;
    v73[5] = v61;
    v73[6] = v56;
    v73[7] = v60;
    v73[8] = v55;
    v73[9] = v59;
    v74 = v53;
    v75 = v65;
    v76 = v54;
    v77 = BYTE4(v50);
    v78 = v35;
    v79 = v33;
    v80 = v36;
    v81 = v15;
    v82 = v34;
    sub_52780(v73);
  }
}

uint64_t _s13BookAnalytics19ContentExposureDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v39 = a1[7];
  v40 = a1[6];
  v38 = a1[8];
  v37 = a1[9];
  v34 = *(a1 + 84);
  v26 = *(a1 + 22);
  v31 = *(a1 + 20);
  v32 = *(a1 + 92);
  v21 = a1[12];
  v28 = a1[13];
  v18 = *(a1 + 28);
  v19 = *(a1 + 117);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v35 = *(a2 + 72);
  v36 = *(a2 + 64);
  v33 = *(a2 + 84);
  v24 = *(a1 + 116);
  v25 = *(a2 + 88);
  v29 = *(a2 + 80);
  v30 = *(a2 + 92);
  v20 = *(a2 + 96);
  v27 = *(a2 + 104);
  v17 = *(a2 + 112);
  v22 = *(a2 + 116);
  v23 = *(a2 + 117);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1E1D30() & 1) == 0 || (v2 != v7 || v4 != v6) && (sub_1E1D30() & 1) == 0 || (v3 != v9 || v5 != v8) && (sub_1E1D30() & 1) == 0 || (v40 != v10 || v39 != v11) && (sub_1E1D30() & 1) == 0 || (v38 != v36 || v37 != v35) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v34)
  {
    if (!v33)
    {
      return 0;
    }
  }

  else
  {
    v12 = v33;
    if (v31 != v29)
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v32)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    v13 = v30;
    if (v26 != v25)
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (v28)
  {
    if (!v27 || (v21 != v20 || v28 != v27) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }

LABEL_35:
    if (v24)
    {
      v14 = v23;
      if (!v22)
      {
        return 0;
      }
    }

    else
    {
      v15 = v22;
      v14 = v23;
      if (v18 != v17)
      {
        v15 = 1;
      }

      if (v15)
      {
        return 0;
      }
    }

    if (v19 == 2)
    {
      if (v14 != 2)
      {
        return 0;
      }
    }

    else if (v14 == 2 || ((v14 ^ v19) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v27)
  {
    goto LABEL_35;
  }

  return 0;
}

unint64_t sub_526F4()
{
  result = qword_280250;
  if (!qword_280250)
  {
    result = swift_getWitnessTable(byte_1EA0B8, &type metadata for ContentExposureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_280250);
  }

  return result;
}

__n128 sub_527B8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 110) = *(a2 + 110);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_527E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 118))
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

uint64_t sub_5282C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 116) = 0;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 118) = 1;
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

    *(result + 118) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_528B4()
{
  result = qword_280260;
  if (!qword_280260)
  {
    result = swift_getWitnessTable(byte_1EA090, &type metadata for ContentExposureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_280260);
  }

  return result;
}

unint64_t sub_5290C()
{
  result = qword_280268;
  if (!qword_280268)
  {
    result = swift_getWitnessTable("!6\a", &type metadata for ContentExposureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_280268);
  }

  return result;
}

unint64_t sub_52964()
{
  result = qword_280270;
  if (!qword_280270)
  {
    result = swift_getWitnessTable("\t6\a", &type metadata for ContentExposureData.CodingKeys, v0, v1);
    atomic_store(result, &qword_280270);
  }

  return result;
}

uint64_t sub_529B8(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000657079;
  if (a1 == 0x546E6F6974636573 && a2 == 0xEB00000000657079 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x496E6F6974636573 && a2 == 0xE900000000000044 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x4E6E6F6974636573 && a2 == 0xEB00000000656D61 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = 0x80000000002139D0;
    if (a1 == 0xD000000000000011 && 0x80000000002139D0 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 0x657A69536C6C6563 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else
    {
      v13 = 0x8000000000213FB0;
      if (a1 == 0xD000000000000014 && 0x8000000000213FB0 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 5;
      }

      else
      {
        v14 = 0xEC00000044496E6FLL;
        if (a1 == 0x6974636553627573 && a2 == 0xEC00000044496E6FLL || (sub_1E1D30() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 6;
        }

        else
        {
          v15 = 0xEE00656D614E6E6FLL;
          if (a1 == 0x6974636553627573 && a2 == 0xEE00656D614E6E6FLL || (sub_1E1D30() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 7;
          }

          else
          {
            v16 = 0x8000000000213FD0;
            if (a1 == 0xD000000000000012 && 0x8000000000213FD0 == a2 || (sub_1E1D30() & 1) != 0)
            {
              a2, v16, a3, a4, a5, a6, a7, a8;
              return 8;
            }

            else if (a1 == 0x75676E614C736168 && a2 == 0xEE00676154656761)
            {
              0xEE00676154656761, 0xEE00676154656761, a3, a4, a5, a6, a7, a8;
              return 9;
            }

            else
            {
              v17 = sub_1E1D30();
              a2, v18, v19, v20, v21, v22, v23, v24;
              if (v17)
              {
                return 9;
              }

              else
              {
                return 10;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_52D10()
{
  v0 = sub_1E1360();
  sub_5F94(v0, qword_280278);
  sub_3B2C(v0, qword_280278);
  return sub_1E1350();
}

uint64_t sub_52DB4()
{
  v0 = sub_1E1360();
  sub_5F94(v0, qword_280290);
  sub_3B2C(v0, qword_280290);
  return sub_1E1350();
}

uint64_t sub_52E58()
{
  v0 = sub_1E1360();
  sub_5F94(v0, qword_2802A8);
  sub_3B2C(v0, qword_2802A8);
  return sub_1E1350();
}

uint64_t sub_52EFC()
{
  v0 = sub_1E1360();
  sub_5F94(v0, qword_2802C0);
  sub_3B2C(v0, qword_2802C0);
  return sub_1E1350();
}

uint64_t sub_52FA0()
{
  v0 = sub_1E1360();
  sub_5F94(v0, qword_2802D8);
  sub_3B2C(v0, qword_2802D8);
  return sub_1E1350();
}

uint64_t sub_53048()
{
  v0 = sub_1E1360();
  sub_5F94(v0, qword_2802F0);
  sub_3B2C(v0, qword_2802F0);
  return sub_1E1350();
}

uint64_t sub_530EC()
{
  v0 = sub_1E1360();
  sub_5F94(v0, qword_280308);
  sub_3B2C(v0, qword_280308);
  return sub_1E1350();
}

uint64_t sub_53194()
{
  v0 = sub_1E1360();
  sub_5F94(v0, qword_280320);
  sub_3B2C(v0, qword_280320);
  return sub_1E1350();
}

uint64_t sub_53238()
{
  v0 = sub_1E1360();
  sub_5F94(v0, qword_280338);
  sub_3B2C(v0, qword_280338);
  return sub_1E1350();
}

uint64_t sub_532E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1E1360();
  v7 = sub_3B2C(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t ListeningSessionData.startTime.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

BookAnalytics::BitRateData __swiftcall BitRateData.init(prevBitRate:bitRate:)(Swift::Int32_optional prevBitRate, Swift::Int32 bitRate)
{
  *v2 = prevBitRate.value;
  *(v2 + 4) = prevBitRate.is_nil;
  *(v2 + 8) = bitRate;
  result.prevBitRate = prevBitRate;
  result.bitRate = bitRate;
  return result;
}

BOOL static BitRateData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 8) == *(a2 + 8);
}

uint64_t sub_53414()
{
  if (*v0)
  {
    return 0x65746152746962;
  }

  else
  {
    return 0x5274694276657270;
  }
}

void sub_53458(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, char *a3@<X8>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  v12 = 0xEB00000000657461;
  v13 = a1 == 0x5274694276657270 && a2 == 0xEB00000000657461;
  if (v13 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a4, a5, a6, a7, a8, a9;
    v14 = 0;
  }

  else if (a1 == 0x65746152746962 && a2 == 0xE700000000000000)
  {
    0xE700000000000000, v12, a4, a5, a6, a7, a8, a9;
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

  *a3 = v14;
}

uint64_t sub_53538(uint64_t a1)
{
  v2 = sub_5374C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_53574(uint64_t a1)
{
  v2 = sub_5374C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BitRateData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_280350, &qword_1EA108);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = *(v1 + 4);
  v11 = *(v1 + 8);
  sub_48B8(a1, a1[3]);
  sub_5374C();
  sub_1E1E00();
  v14 = 0;
  v12 = v7;
  v8 = v10[1];
  sub_1E1C90();
  if (!v8)
  {
    v13 = 1;
    sub_1E1D00();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_5374C()
{
  result = qword_280358;
  if (!qword_280358)
  {
    result = swift_getWitnessTable(byte_1EA2E0, &type metadata for BitRateData.CodingKeys, v0, v1);
    atomic_store(result, &qword_280358);
  }

  return result;
}

void BitRateData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_280360, &qword_1EA110);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_48B8(a1, a1[3]);
  sub_5374C();
  sub_1E1DF0();
  if (!v2)
  {
    v20 = 0;
    v16 = sub_1E1BC0();
    v19 = 1;
    v17 = sub_1E1C30();
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    *(a2 + 4) = BYTE4(v16) & 1;
    *(a2 + 8) = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t initializeBufferWithCopyOfBuffer for BitRateData(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BitRateData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BitRateData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

unint64_t sub_53A08()
{
  result = qword_280368;
  if (!qword_280368)
  {
    result = swift_getWitnessTable(byte_1EA2B8, &type metadata for BitRateData.CodingKeys, v0, v1);
    atomic_store(result, &qword_280368);
  }

  return result;
}

unint64_t sub_53A60()
{
  result = qword_280370;
  if (!qword_280370)
  {
    result = swift_getWitnessTable(byte_1EA228, &type metadata for BitRateData.CodingKeys, v0, v1);
    atomic_store(result, &qword_280370);
  }

  return result;
}

unint64_t sub_53AB8()
{
  result = qword_280378;
  if (!qword_280378)
  {
    result = swift_getWitnessTable(byte_1EA250, &type metadata for BitRateData.CodingKeys, v0, v1);
    atomic_store(result, &qword_280378);
  }

  return result;
}

BookAnalytics::RecoType_optional __swiftcall RecoType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25F888;
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

uint64_t RecoType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6D6F724665726F6DLL;
  v4 = 0x48676E6964616572;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65536E497478656ELL;
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

unint64_t sub_53C38()
{
  result = qword_280380;
  if (!qword_280380)
  {
    result = swift_getWitnessTable("93\a", &type metadata for RecoType, v0, v1);
    atomic_store(result, &qword_280380);
  }

  return result;
}

Swift::Int sub_53C8C()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE700000000000000;
  v3 = 0xEE00726F68747541;
  v4 = 0xEE0079726F747369;
  if (v1 != 3)
  {
    v4 = 0x8000000000212870;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1)
  {
    v2 = 0xEC00000073656972;
  }

  if (v1 <= 1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  sub_1E17D0();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1E1DE0();
}

void sub_53D94(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEE00726F68747541;
  v5 = 0xEE0079726F747369;
  if (v2 != 3)
  {
    v5 = 0x8000000000212870;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (*v1)
  {
    v3 = 0xEC00000073656972;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_1E17D0();

  v6, v7, v8, v9, v10, v11, v12, v13;
}

Swift::Int sub_53E88(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xEE00726F68747541;
  v5 = 0xEE0079726F747369;
  if (v2 != 3)
  {
    v5 = 0x8000000000212870;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (v2)
  {
    v3 = 0xEC00000073656972;
  }

  if (v2 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_1E17D0();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return sub_1E1DE0();
}

void sub_53F98(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEE00726F68747541;
  v6 = 0x6D6F724665726F6DLL;
  v7 = 0xEE0079726F747369;
  v8 = 0x48676E6964616572;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x8000000000212870;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65536E497478656ELL;
    v3 = 0xEC00000073656972;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_5411C()
{
  result = qword_280388;
  if (!qword_280388)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RecoType, &type metadata for RecoType, v0, v1);
    atomic_store(result, &qword_280388);
  }

  return result;
}

uint64_t PreorderAttemptEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderAttemptEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderAttemptEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreorderAttemptEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreorderAttemptEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderAttemptEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderAttemptEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreorderAttemptEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreorderAttemptEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderAttemptEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderAttemptEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreorderAttemptEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreorderAttemptEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PreorderAttemptEvent(0);
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

uint64_t GiftEvent.Model.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  v9 = *(v1 + 128);
  v10[0] = v2;
  *(v10 + 13) = *(v1 + 157);
  v3 = *(v10 + 13);
  v4 = *(v1 + 112);
  v8[0] = *(v1 + 96);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 61) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_17AA4(v8, v7, &qword_27FFF0, &unk_1E9C00);
}

uint64_t RedownloadCompleteEvent.Model.sectionData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 216);
  v4 = *(v1 + 248);
  v13 = *(v1 + 232);
  v3 = v13;
  v14 = v4;
  v5 = *(v1 + 184);
  v10[0] = *(v1 + 168);
  v10[1] = v5;
  v11 = *(v1 + 200);
  v6 = v11;
  v12 = v2;
  v15 = *(v1 + 264);
  v7 = v15;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  a1[6] = v7;
  return sub_17AA4(v10, &v9, &qword_27E490, &qword_205F90);
}

uint64_t PreorderAttemptEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderAttemptEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderAttemptEvent.Model.init(contentData:contentStoreData:sectionData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
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
  v16 = *(type metadata accessor for PreorderAttemptEvent.Model(0) + 28);
  v17 = sub_1E1150();
  v18 = *(*(v17 - 8) + 32);

  return v18(a5 + v16, a4, v17);
}

unint64_t sub_54A34()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0x446E6F6974636573;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_54ABC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_560D8(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_54AE4(uint64_t a1)
{
  v2 = sub_54FDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_54B20(uint64_t a1)
{
  v2 = sub_54FDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PreorderAttemptEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_2803C0, &qword_1EA450);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25[-v6];
  sub_48B8(a1, a1[3]);
  sub_54FDC();
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
    type metadata accessor for PreorderAttemptEvent.Model(0);
    v25[15] = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_54FDC()
{
  result = qword_2803C8;
  if (!qword_2803C8)
  {
    result = swift_getWitnessTable("Y0\a", &type metadata for PreorderAttemptEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_2803C8);
  }

  return result;
}

void PreorderAttemptEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v41 = sub_1E1150();
  v38 = *(v41 - 8);
  __chkstk_darwin(v41);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_3D68(&qword_2803D0, &qword_1EA458);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v5 = type metadata accessor for PreorderAttemptEvent.Model(0);
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v60 = a1;
  sub_48B8(a1, v8);
  sub_54FDC();
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
    sub_5551C(v21, v39);
    sub_4E48(v60, v30, v31, v32, v33, v34, v35, v36);
    sub_55580(v21);
  }
}

uint64_t sub_5551C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreorderAttemptEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_55580(uint64_t a1)
{
  v2 = type metadata accessor for PreorderAttemptEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5567C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v13 = *(*(v12 - 8) + 104);

  return v13(a2 + v11, v4, v12);
}

uint64_t sub_55814(uint64_t a1, uint64_t a2, int *a3)
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

uint64_t sub_559E0(uint64_t a1, uint64_t a2, int a3, int *a4)
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

void sub_55BA4(uint64_t a1)
{
  sub_55D00(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_55D00(319, &qword_2800D8, sub_4FB64, sub_4F01C, &type metadata for ContentStoreData);
    if (v2 <= 0x3F)
    {
      sub_55D00(319, &qword_27E578, sub_18EFC, sub_18544, &type metadata for SectionData);
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

void sub_55D00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t sub_55D90(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_55E50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_55EF4(uint64_t a1)
{
  sub_19FE0(319, &qword_2801C0, &type metadata for ContentStoreData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_27E638, &type metadata for SectionData);
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

unint64_t sub_55FD4()
{
  result = qword_280508;
  if (!qword_280508)
  {
    result = swift_getWitnessTable("q0\a", &type metadata for PreorderAttemptEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_280508);
  }

  return result;
}

unint64_t sub_5602C()
{
  result = qword_280510;
  if (!qword_280510)
  {
    result = swift_getWitnessTable(byte_1EA568, &type metadata for PreorderAttemptEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_280510);
  }

  return result;
}

unint64_t sub_56084()
{
  result = qword_280518;
  if (!qword_280518)
  {
    result = swift_getWitnessTable(byte_1EA590, &type metadata for PreorderAttemptEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_280518);
  }

  return result;
}

uint64_t sub_560D8(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x8000000000213F30;
    if (a1 == 0xD000000000000010 && 0x8000000000213F30 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
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

uint64_t static SingleCollectionData.data(with:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = BARoundIntegerToSignificantFigures(a1, 2);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = result;
}

BookAnalytics::LaunchType_optional __swiftcall LaunchType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25F920;
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

uint64_t LaunchType.rawValue.getter()
{
  v1 = 1684828003;
  if (*v0 != 1)
  {
    v1 = 1836212599;
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

uint64_t sub_56374(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 1684828003;
  if (v8 != 1)
  {
    v9 = 1836212599;
  }

  if (*a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  v12 = 1684828003;
  if (*a2 != 1)
  {
    v12 = 1836212599;
  }

  if (*a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  if (v10 == v13 && v11 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1E1D30();
  }

  v11, a2, v13, a4, a5, a6, a7, a8;
  v14, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

unint64_t sub_5645C()
{
  result = qword_280520;
  if (!qword_280520)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LaunchType, &type metadata for LaunchType, v0, v1);
    atomic_store(result, &qword_280520);
  }

  return result;
}

Swift::Int sub_564B0()
{
  v1 = *v0;
  sub_1E1DC0();
  if (v1)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  sub_1E17D0();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1E1DE0();
}

void sub_56544(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  sub_1E17D0();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_565C4(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  if (v2)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_56660(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 1684828003;
  if (v2 != 1)
  {
    v4 = 1836212599;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_56770()
{
  result = qword_280528;
  if (!qword_280528)
  {
    result = swift_getWitnessTable("Q0\a", &type metadata for LaunchType, v0, v1);
    atomic_store(result, &qword_280528);
  }

  return result;
}

uint64_t sub_567C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a8;
  v45 = a6;
  v47 = a1;
  v11 = sub_1E1A20();
  v40 = *(v11 - 8);
  v41 = v11;
  __chkstk_darwin(v11);
  v46 = &v38 - v12;
  v44 = sub_1E1A20();
  v13 = *(v44 - 8);
  v14 = __chkstk_darwin(v44);
  v16 = &v38 - v15;
  v17 = *(a4 - 8);
  v18 = __chkstk_darwin(v14);
  v39 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v38 - v21;
  v23 = *(a3 - 8);
  v24 = __chkstk_darwin(v20);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v38 - v27;
  v29 = *(v17 + 16);
  v42 = a2;
  v29(v22, a2, a4);
  v30 = swift_dynamicCast();
  v31 = *(v23 + 56);
  if (v30)
  {
    v31(v16, 0, 1, a3);
    (*(v23 + 32))(v28, v16, a3);
    v32 = sub_1E1760();
    (*(v23 + 8))(v28, a3);
  }

  else
  {
    v31(v16, 1, 1, a3);
    (*(v13 + 8))(v16, v44);
    (*(v23 + 16))(v26, v47, a3);
    v33 = v46;
    v34 = swift_dynamicCast();
    v35 = *(v17 + 56);
    if (v34)
    {
      v35(v33, 0, 1, a4);
      v36 = v39;
      (*(v17 + 32))(v39, v33, a4);
      v32 = sub_1E1760();
      (*(v17 + 8))(v36, a4);
    }

    else
    {
      v35(v33, 1, 1, a4);
      (*(v40 + 8))(v33, v41);
      v32 = 0;
    }
  }

  return v32 & 1;
}

uint64_t ==~ infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_48B8(a1, v3);
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = sub_48B8(a2, v7);

  return sub_567C4(v6, v10, v3, v7, v4, v5, v8, v9);
}

uint64_t ShareSheetExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareSheetExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareSheetExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareSheetExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareSheetExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareSheetExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareSheetExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareSheetExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareSheetExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ShareSheetExposureEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t ShareSheetExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareSheetExposureEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareSheetExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareSheetExposureEvent.Model(0) + 24);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareSheetExposureEvent.Model.init(contentData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = a1[3];
  *(a4 + 2) = a1[2];
  *(a4 + 3) = v7;
  v8 = a1[5];
  *(a4 + 4) = a1[4];
  *(a4 + 5) = v8;
  v9 = a1[1];
  *a4 = *a1;
  *(a4 + 1) = v9;
  v10 = type metadata accessor for ShareSheetExposureEvent.Model(0);
  v11 = *(v10 + 20);
  v12 = sub_1E1150();
  (*(*(v12 - 8) + 32))(&a4[v11], a2, v12);
  v13 = *(v10 + 24);
  v14 = sub_1E11A0();
  v15 = *(*(v14 - 8) + 32);

  return v15(&a4[v13], a3, v14);
}

uint64_t sub_57358()
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
    return 0x44746E65746E6F63;
  }
}

uint64_t sub_573C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_587AC(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_573EC(uint64_t a1)
{
  v2 = sub_57750();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_57428(uint64_t a1)
{
  v2 = sub_57750();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShareSheetExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_280560, &qword_1EA788);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  sub_48B8(a1, a1[3]);
  sub_57750();
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
    type metadata accessor for ShareSheetExposureEvent.Model(0);
    v17 = 1;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v17 = 2;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_57750()
{
  result = qword_280568;
  if (!qword_280568)
  {
    result = swift_getWitnessTable("%-\a", &type metadata for ShareSheetExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_280568);
  }

  return result;
}

void ShareSheetExposureEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = sub_1E11A0();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v42 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_3D68(&qword_280570, &qword_1EA790);
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v9 = &v37 - v8;
  v10 = type metadata accessor for ShareSheetExposureEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v46 = a1;
  sub_48B8(a1, v13);
  sub_57750();
  v43 = v9;
  v14 = v45;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(v46, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v22 = v41;
    v23 = v12;
    v45 = v4;
    v24 = v42;
    v54 = 0;
    sub_14CB8();
    sub_1E1C20();
    v25 = v51;
    v26 = v23;
    *(v23 + 2) = v50;
    *(v23 + 3) = v25;
    v27 = v53;
    *(v23 + 4) = v52;
    *(v23 + 5) = v27;
    v28 = v49;
    *v23 = v48;
    *(v23 + 1) = v28;
    v47 = 1;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v24 + 32))(&v23[*(v10 + 20)], v7, v5);
    v47 = 2;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v29 = v40;
    sub_1E1C20();
    (*(v22 + 8))(v43, v44);
    (*(v38 + 32))(v26 + *(v10 + 24), v45, v29);
    sub_57D0C(v26, v39);
    sub_4E48(v46, v30, v31, v32, v33, v34, v35, v36);
    sub_57D70(v26);
  }
}

uint64_t sub_57D0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareSheetExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_57D70(uint64_t a1)
{
  v2 = type metadata accessor for ShareSheetExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_57E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_57FA4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_5811C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void sub_5828C(uint64_t a1)
{
  sub_58328(319);
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