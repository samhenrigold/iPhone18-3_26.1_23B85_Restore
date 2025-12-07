uint64_t sub_100058454(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = v6[7];
  v8 = sub_1000C0E58();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  *(a1 + v6[8]) = *(a2 + v6[8]);
  v9 = v6[9];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = *(v12 - 1);
  if ((*(v13 + 48))(v11, 1, v12))
  {
    v14 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v10, v11, *(*(v14 - 8) + 64));
  }

  else
  {
    v49 = a3;
    v15 = v11[1];
    *v10 = *v11;
    v10[1] = v15;
    v16 = v12[6];
    v17 = sub_1000C0818();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v11 + v16, 1, v17))
    {
      v19 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v10 + v16, v11 + v16, *(*(v19 - 8) + 64));
    }

    else
    {
      (*(v18 + 32))(v10 + v16, v11 + v16, v17);
      (*(v18 + 56))(v10 + v16, 0, 1, v17);
    }

    v20 = v12[7];
    v21 = sub_1000C0938();
    (*(*(v21 - 8) + 32))(v10 + v20, v11 + v20, v21);
    *(v10 + v12[8]) = *(v11 + v12[8]);
    *(v10 + v12[9]) = *(v11 + v12[9]);
    *(v10 + v12[10]) = *(v11 + v12[10]);
    *(v10 + v12[11]) = *(v11 + v12[11]);
    (*(v13 + 56))(v10, 0, 1, v12);
    a3 = v49;
  }

  *(a1 + v6[10]) = *(a2 + v6[10]);
  *(a1 + v6[11]) = *(a2 + v6[11]);
  *(a1 + v6[12]) = *(a2 + v6[12]);
  *(a1 + v6[13]) = *(a2 + v6[13]);
  *(a1 + v6[14]) = *(a2 + v6[14]);
  *(a1 + v6[15]) = *(a2 + v6[15]);
  *(a1 + v6[16]) = *(a2 + v6[16]);
  *(a1 + v6[17]) = *(a2 + v6[17]);
  v22 = v6[18];
  v23 = sub_1000C0938();
  (*(*(v23 - 8) + 32))(a1 + v22, a2 + v22, v23);
  *(a1 + v6[19]) = *(a2 + v6[19]);
  *(a1 + v6[20]) = *(a2 + v6[20]);
  v24 = a3[5];
  v25 = a3[6];
  v26 = a1 + v24;
  v27 = a2 + v24;
  *(v26 + 8) = *(v27 + 8);
  *v26 = *v27;
  v28 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = sub_1000C2338();
    (*(*(v29 - 8) + 32))(a1 + v25, a2 + v25, v29);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v25), (a2 + v25), *(*(v28 - 8) + 64));
  }

  v30 = a3[7];
  v31 = sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = sub_1000C16C8();
    (*(*(v32 - 8) + 32))(a1 + v30, a2 + v30, v32);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v30), (a2 + v30), *(*(v31 - 8) + 64));
  }

  v33 = a3[8];
  v34 = a3[9];
  v35 = a1 + v33;
  v36 = a2 + v33;
  *v35 = *v36;
  *(v35 + 8) = *(v36 + 8);
  v37 = a1 + v34;
  v38 = a2 + v34;
  *v37 = *v38;
  *(v37 + 8) = *(v38 + 8);
  v39 = a3[10];
  v40 = a3[11];
  v41 = a1 + v39;
  v42 = a2 + v39;
  *v41 = *v42;
  *(v41 + 8) = *(v42 + 8);
  v43 = a1 + v40;
  v44 = a2 + v40;
  *(v43 + 32) = *(v44 + 32);
  v45 = *(v44 + 16);
  *v43 = *v44;
  *(v43 + 16) = v45;
  v46 = a3[12];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = sub_1000C2338();
    (*(*(v47 - 8) + 32))(a1 + v46, a2 + v46, v47);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v46), (a2 + v46), *(*(v28 - 8) + 64));
  }

  *(a1 + a3[13]) = *(a2 + a3[13]);
  return a1;
}

uint64_t sub_100058A38(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = v6[7];
  v8 = sub_1000C0E58();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = v6[8];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v13 = *v11;
  v12 = v11[1];
  *v10 = v13;
  v10[1] = v12;

  v14 = v6[9];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v17 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 48);
  v20 = v19(v15, 1, v17);
  v21 = v19(v16, 1, v17);
  if (!v20)
  {
    if (v21)
    {
      sub_100048940(v15, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v28 = *v15;
    *v15 = *v16;

    v29 = *(v15 + 1);
    *(v15 + 1) = *(v16 + 1);

    v30 = v17[6];
    v31 = sub_1000C0818();
    v111 = *(v31 - 8);
    v32 = *(v111 + 48);
    v112 = v32(&v15[v30], 1, v31);
    v33 = v32(&v16[v30], 1, v31);
    if (v112)
    {
      if (!v33)
      {
        (*(v111 + 32))(&v15[v30], &v16[v30], v31);
        (*(v111 + 56))(&v15[v30], 0, 1, v31);
        goto LABEL_18;
      }

      v34 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v35 = &v15[v30];
      v36 = &v16[v30];
    }

    else
    {
      if (!v33)
      {
        (*(v111 + 40))(&v15[v30], &v16[v30], v31);
        goto LABEL_18;
      }

      (*(v111 + 8))(&v15[v30], v31);
      v34 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v35 = &v15[v30];
      v36 = &v16[v30];
    }

    memcpy(v35, v36, v34);
LABEL_18:
    v39 = v17[7];
    v40 = sub_1000C0938();
    (*(*(v40 - 8) + 40))(&v15[v39], &v16[v39], v40);
    v41 = v17[8];
    v42 = *&v15[v41];
    *&v15[v41] = *&v16[v41];

    *&v15[v17[9]] = *&v16[v17[9]];
    v15[v17[10]] = v16[v17[10]];
    v15[v17[11]] = v16[v17[11]];
    goto LABEL_19;
  }

  if (v21)
  {
LABEL_7:
    v27 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v15, v16, *(*(v27 - 8) + 64));
    goto LABEL_19;
  }

  v22 = *(v16 + 1);
  *v15 = *v16;
  *(v15 + 1) = v22;
  v23 = v17[6];
  v24 = sub_1000C0818();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(&v16[v23], 1, v24))
  {
    v26 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v15[v23], &v16[v23], *(*(v26 - 8) + 64));
  }

  else
  {
    (*(v25 + 32))(&v15[v23], &v16[v23], v24);
    (*(v25 + 56))(&v15[v23], 0, 1, v24);
  }

  v37 = v17[7];
  v38 = sub_1000C0938();
  (*(*(v38 - 8) + 32))(&v15[v37], &v16[v37], v38);
  *&v15[v17[8]] = *&v16[v17[8]];
  *&v15[v17[9]] = *&v16[v17[9]];
  v15[v17[10]] = v16[v17[10]];
  v15[v17[11]] = v16[v17[11]];
  (*(v18 + 56))(v15, 0, 1, v17);
LABEL_19:
  v43 = v6[10];
  v44 = *(a1 + v43);
  *(a1 + v43) = *(a2 + v43);

  v45 = v6[11];
  v46 = (a1 + v45);
  v47 = (a2 + v45);
  v49 = *v47;
  v48 = v47[1];
  *v46 = v49;
  v46[1] = v48;

  v50 = v6[12];
  v51 = *(a1 + v50);
  *(a1 + v50) = *(a2 + v50);

  v52 = v6[13];
  v53 = (a1 + v52);
  v54 = (a2 + v52);
  v56 = *v54;
  v55 = v54[1];
  *v53 = v56;
  v53[1] = v55;

  v57 = v6[14];
  v58 = (a1 + v57);
  v59 = (a2 + v57);
  v61 = *v59;
  v60 = v59[1];
  *v58 = v61;
  v58[1] = v60;

  *(a1 + v6[15]) = *(a2 + v6[15]);
  v62 = v6[16];
  v63 = (a1 + v62);
  v64 = (a2 + v62);
  v66 = *v64;
  v65 = v64[1];
  *v63 = v66;
  v63[1] = v65;

  *(a1 + v6[17]) = *(a2 + v6[17]);

  v67 = v6[18];
  v68 = sub_1000C0938();
  (*(*(v68 - 8) + 40))(a1 + v67, a2 + v67, v68);
  *(a1 + v6[19]) = *(a2 + v6[19]);

  *(a1 + v6[20]) = *(a2 + v6[20]);
  v69 = a3[5];
  v70 = a1 + v69;
  v71 = (a2 + v69);
  v72 = *v71;
  LOBYTE(v71) = *(v71 + 8);
  v73 = *v70;
  v74 = *(v70 + 8);
  *v70 = v72;
  *(v70 + 8) = v71;
  sub_100048A00(v73, v74);
  if (a1 != a2)
  {
    v75 = a3[6];
    sub_1000084C0(a1 + v75, &qword_1000EDDC0, &qword_1000C5B60);
    v76 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v77 = sub_1000C2338();
      (*(*(v77 - 8) + 32))(a1 + v75, a2 + v75, v77);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v75), (a2 + v75), *(*(v76 - 8) + 64));
    }

    v78 = a3[7];
    sub_1000084C0(a1 + v78, &qword_1000EE6D8, &qword_1000C67B8);
    v79 = sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v80 = sub_1000C16C8();
      (*(*(v80 - 8) + 32))(a1 + v78, a2 + v78, v80);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v78), (a2 + v78), *(*(v79 - 8) + 64));
    }
  }

  v81 = a3[8];
  v82 = a1 + v81;
  v83 = (a2 + v81);
  v84 = *v83;
  LOBYTE(v83) = *(v83 + 8);
  *v82 = v84;
  *(v82 + 8) = v83;

  v85 = a3[9];
  v86 = a1 + v85;
  v87 = (a2 + v85);
  v88 = *v87;
  LOBYTE(v87) = *(v87 + 8);
  v89 = *v86;
  v90 = *(v86 + 8);
  *v86 = v88;
  *(v86 + 8) = v87;
  sub_100048A00(v89, v90);
  v91 = a3[10];
  v92 = a1 + v91;
  v93 = (a2 + v91);
  v94 = *v93;
  LOBYTE(v93) = *(v93 + 8);
  v95 = *v92;
  v96 = *(v92 + 8);
  *v92 = v94;
  *(v92 + 8) = v93;
  sub_100048A00(v95, v96);
  v97 = a3[11];
  v98 = a1 + v97;
  v99 = a2 + v97;
  v100 = *(v99 + 32);
  v101 = *v98;
  v102 = *(v98 + 8);
  v103 = *(v98 + 16);
  v104 = *(v98 + 24);
  v105 = *(v98 + 32);
  v106 = *(v99 + 16);
  *v98 = *v99;
  *(v98 + 16) = v106;
  *(v98 + 32) = v100;
  sub_100054C08(v101, v102, v103, v104, v105);
  if (a1 != a2)
  {
    v107 = a3[12];
    sub_1000084C0(a1 + v107, &qword_1000EDDC0, &qword_1000C5B60);
    v108 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v109 = sub_1000C2338();
      (*(*(v109 - 8) + 32))(a1 + v107, a2 + v107, v109);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v107), (a2 + v107), *(*(v108 - 8) + 64));
    }
  }

  *(a1 + a3[13]) = *(a2 + a3[13]);
  return a1;
}

uint64_t sub_1000593C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 > 1)
    {
      return (v11 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_100004D04(&qword_1000EE7F0, &qword_1000C68C8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_11;
  }

  IsVibrantText = type metadata accessor for IsVibrantText(0);
  v18 = *(*(IsVibrantText - 8) + 48);
  v19 = a1 + a3[12];

  return v18(v19, a2, IsVibrantText);
}

uint64_t sub_1000595A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for TTRNewWidgetViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5] + 8) = -a2;
    return result;
  }

  v13 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100004D04(&qword_1000EE7F0, &qword_1000C68C8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  IsVibrantText = type metadata accessor for IsVibrantText(0);
  v18 = *(*(IsVibrantText - 8) + 56);
  v19 = a1 + a4[12];

  return v18(v19, a2, a2, IsVibrantText);
}

void sub_10005977C(uint64_t a1)
{
  type metadata accessor for TTRNewWidgetViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_10005435C(319, &unk_1000EDE48, &type metadata accessor for WidgetRenderingMode);
    if (v2 <= 0x3F)
    {
      sub_10005435C(319, &unk_1000EE860, &type metadata accessor for DynamicTypeSize);
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

char *sub_1000598E8(char *a1, char *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = (v5 + ((v4 + 16) & ~v4));
  }

  else
  {
    v7 = *(a3 + 20);

    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = sub_1000C2338();
      (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
    }

    else
    {
      *&a1[v7] = *&a2[v7];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_100059A18(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);

  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000C2338();
    (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
  }

  else
  {
    *&a1[v5] = *&a2[v5];
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_100059AE4(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  if (a1 != a2)
  {
    v6 = *(a3 + 20);
    sub_1000084C0(&a1[v6], &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_1000C2338();
      (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
    }

    else
    {
      *&a1[v6] = *&a2[v6];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_100059BE8(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1000C2338();
    (*(*(v7 - 8) + 32))(&a1[v5], &a2[v5], v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v5], &a2[v5], *(*(v6 - 8) + 64));
  }

  return a1;
}

char *sub_100059CC0(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  if (a1 != a2)
  {
    v6 = *(a3 + 20);
    sub_1000084C0(&a1[v6], &qword_1000EDDC0, &qword_1000C5B60);
    v7 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = sub_1000C2338();
      (*(*(v8 - 8) + 32))(&a1[v6], &a2[v6], v8);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v6], &a2[v6], *(*(v7 - 8) + 64));
    }
  }

  return a1;
}

void sub_100059DFC(uint64_t a1)
{
  sub_10005435C(319, &unk_1000EDE48, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_100059EC4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = v5 + ((v4 + 16) & ~v4);
  }

  else
  {
    v8 = a2[1];
    v7 = a2[2];
    *(a1 + 8) = v8;
    *(a1 + 16) = v7;
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 32);
    v9 = *(a3 + 32);

    v10 = v8;

    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = sub_1000C2338();
      (*(*(v11 - 8) + 16))(a1 + v9, a2 + v9, v11);
    }

    else
    {
      *(a1 + v9) = *(a2 + v9);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10005A008(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 32);
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1000C2338();
    v6 = *(*(v5 - 8) + 8);

    return v6(a1 + v4, v5);
  }

  else
  {
  }
}

uint64_t sub_10005A0D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a3 + 32);

  v8 = v5;

  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1000C2338();
    (*(*(v9 - 8) + 16))(a1 + v7, a2 + v7, v9);
  }

  else
  {
    *(a1 + v7) = *(a2 + v7);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t *sub_10005A1C4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = a1[1];
  v7 = a2[1];
  a1[1] = v7;
  v8 = v7;

  a1[2] = a2[2];
  a1[3] = a2[3];

  *(a1 + 32) = *(a2 + 32);
  if (a1 != a2)
  {
    v9 = *(a3 + 32);
    sub_1000084C0(a1 + v9, &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = sub_1000C2338();
      (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
    }

    else
    {
      *(a1 + v9) = *(a2 + v9);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10005A304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a3 + 32);
  v7 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1000C2338();
    (*(*(v8 - 8) + 32))(a1 + v6, a2 + v6, v8);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v6), (a2 + v6), *(*(v7 - 8) + 64));
  }

  return a1;
}

uint64_t *sub_10005A3E4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = a1[1];
  a1[1] = a2[1];

  v7 = a2[3];
  a1[2] = a2[2];
  a1[3] = v7;

  *(a1 + 32) = *(a2 + 32);
  if (a1 != a2)
  {
    v8 = *(a3 + 32);
    sub_1000084C0(a1 + v8, &qword_1000EDDC0, &qword_1000C5B60);
    v9 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = sub_1000C2338();
      (*(*(v10 - 8) + 32))(a1 + v8, a2 + v8, v10);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1 + v8, a2 + v8, *(*(v9 - 8) + 64));
    }
  }

  return a1;
}

uint64_t sub_10005A52C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_10005A5FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10005A6AC(uint64_t a1)
{
  sub_10005435C(319, &unk_1000EDE48, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t sub_10005A7C8()
{
  result = qword_1000EEB18;
  if (!qword_1000EEB18)
  {
    sub_100005334(&qword_1000EE6B8, &qword_1000C6770);
    sub_10005A880();
    sub_100008478(&qword_1000EE060, &qword_1000EE068, &qword_1000C5DB8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEB18);
  }

  return result;
}

unint64_t sub_10005A880()
{
  result = qword_1000EEB20;
  if (!qword_1000EEB20)
  {
    sub_100005334(&qword_1000EE650, &qword_1000C6720);
    sub_10005A938();
    sub_100008478(&qword_1000EE060, &qword_1000EE068, &qword_1000C5DB8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEB20);
  }

  return result;
}

unint64_t sub_10005A938()
{
  result = qword_1000EEB28;
  if (!qword_1000EEB28)
  {
    sub_100005334(&qword_1000EE648, &qword_1000C6718);
    sub_10005A9F0();
    sub_100008478(&qword_1000ED7B8, &qword_1000ED7C0, &unk_1000C5580, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEB28);
  }

  return result;
}

unint64_t sub_10005A9F0()
{
  result = qword_1000EEB30;
  if (!qword_1000EEB30)
  {
    sub_100005334(&qword_1000EE640, &qword_1000C6710);
    sub_100005334(&qword_1000EE638, &qword_1000C6708);
    sub_100005334(&qword_1000EE658, &qword_1000C6728);
    sub_100050A44();
    sub_100050CD0();
    swift_getOpaqueTypeConformance2();
    sub_100008478(&qword_1000EE060, &qword_1000EE068, &qword_1000C5DB8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEB30);
  }

  return result;
}

unint64_t sub_10005AB14()
{
  result = qword_1000EEB38;
  if (!qword_1000EEB38)
  {
    sub_100005334(&qword_1000EEB40, &qword_1000C6990);
    sub_10005AB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEB38);
  }

  return result;
}

unint64_t sub_10005AB98()
{
  result = qword_1000EEB48;
  if (!qword_1000EEB48)
  {
    sub_100005334(&qword_1000EEB50, qword_1000C6998);
    sub_100048784(&qword_1000EE710, type metadata accessor for TTRAnyListWidget.ListBadge.Core, &unk_1000C6A90);
    sub_100050F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEB48);
  }

  return result;
}

unint64_t sub_10005AD18()
{
  result = qword_1000EEB90;
  if (!qword_1000EEB90)
  {
    sub_100005334(&qword_1000EEB68, &qword_1000C6C50);
    sub_100005334(&qword_1000EEB58, &qword_1000C6C40);
    sub_100005334(&qword_1000EE010, &qword_1000C5D80);
    sub_100008478(&qword_1000EEB88, &qword_1000EEB58, &qword_1000C6C40, &protocol conformance descriptor for VStack<A>);
    sub_100008478(&qword_1000EE058, &qword_1000EE010, &qword_1000C5D80, &protocol conformance descriptor for PartialRangeThrough<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEB90);
  }

  return result;
}

unint64_t sub_10005AEC8()
{
  result = qword_1000EEBA0;
  if (!qword_1000EEBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEBA0);
  }

  return result;
}

unint64_t sub_10005AF24()
{
  result = qword_1000EEBC8;
  if (!qword_1000EEBC8)
  {
    sub_100005334(&qword_1000EEBC0, &qword_1000C6CB8);
    sub_100008478(&qword_1000EEBD0, &qword_1000EEBD8, &qword_1000C6CC0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEBC8);
  }

  return result;
}

unint64_t sub_10005AFDC()
{
  result = qword_1000EEC10;
  if (!qword_1000EEC10)
  {
    sub_100005334(&qword_1000EEC08, &qword_1000C6CE8);
    sub_100048784(&qword_1000EEC18, type metadata accessor for TTRAnyListWidget.InteractiveNoRemindersView, &unk_1000C7480);
    sub_100008478(&qword_1000EEC20, &qword_1000EEC28, &qword_1000C6CF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEC10);
  }

  return result;
}

unint64_t sub_10005B0E4()
{
  result = qword_1000EEC30;
  if (!qword_1000EEC30)
  {
    sub_100005334(&qword_1000EEBF8, &qword_1000C6CD8);
    sub_100008478(&qword_1000EEC38, &qword_1000EEC40, &qword_1000C6CF8, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_10005B19C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEC30);
  }

  return result;
}

unint64_t sub_10005B19C()
{
  result = qword_1000EEC48;
  if (!qword_1000EEC48)
  {
    sub_100005334(&qword_1000EEC50, &qword_1000C6D00);
    sub_100008478(&qword_1000EEC58, &qword_1000EEC60, &qword_1000C6D08, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEC48);
  }

  return result;
}

unint64_t sub_10005B2A0()
{
  result = qword_1000EEC68;
  if (!qword_1000EEC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEC68);
  }

  return result;
}

void sub_10005B2F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v45 = a1;
  v5 = sub_100004D04(&qword_1000EEC80, &qword_1000C6D70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v46 = &v39 - v10;
  v11 = a3 >> 1;
  v12 = _swiftEmptyArrayStorage;
  if (a3 >> 1 != a2)
  {
    v14 = 0;
    v13 = 0;
    v15 = *(v6 + 80);
    v42 = v15;
    v43 = (v15 + 32) & ~v15;
    v16 = _swiftEmptyArrayStorage + v43;
    if (a2 <= v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = a2;
    }

    v44 = v17;
    v18 = _swiftEmptyArrayStorage;
    v40 = v6;
    v41 = v8;
    while (v44 != a2)
    {
      v19 = v45 + *(*(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) - 8) + 72) * a2;
      v20 = *(v5 + 48);
      *v8 = v14;
      sub_100048828(v19, v8 + v20, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      if (__OFADD__(v14, 1))
      {
        goto LABEL_36;
      }

      sub_10001DA60(v8, v46, &qword_1000EEC80, &qword_1000C6D70);
      if (v13)
      {
        v12 = v18;
        v21 = __OFSUB__(v13--, 1);
        if (v21)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v22 = v18[3];
        if (((v22 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_38;
        }

        v23 = v5;
        v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        sub_100004D04(&qword_1000EEC90, &qword_1000C6D80);
        v26 = *(v6 + 72);
        v27 = v43;
        v12 = swift_allocObject();
        v28 = j__malloc_size(v12);
        if (!v26)
        {
          goto LABEL_39;
        }

        v29 = v28 - v27;
        if (v28 - v27 == 0x8000000000000000 && v26 == -1)
        {
          goto LABEL_40;
        }

        v31 = v29 / v26;
        v12[2] = v25;
        v12[3] = 2 * (v29 / v26);
        v32 = v12 + v27;
        v33 = v18[3] >> 1;
        v34 = v33 * v26;
        if (v18[2])
        {
          if (v12 < v18 || v32 >= v18 + v43 + v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v12 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v18[2] = 0;
        }

        v16 = &v32[v34];
        v35 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;

        v5 = v23;
        v6 = v40;
        v8 = v41;
        v21 = __OFSUB__(v35, 1);
        v13 = v35 - 1;
        if (v21)
        {
          goto LABEL_37;
        }
      }

      ++a2;
      sub_10001DA60(v46, v16, &qword_1000EEC80, &qword_1000C6D70);
      v16 += *(v6 + 72);
      ++v14;
      v18 = v12;
      if (v11 == a2)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v13 = 0;
LABEL_31:
  v36 = v12[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v21 = __OFSUB__(v37, v13);
    v38 = v37 - v13;
    if (!v21)
    {
      v12[2] = v38;
      return;
    }

LABEL_41:
    __break(1u);
  }
}

uint64_t sub_10005B634()
{
  v1 = v0;
  v2 = type metadata accessor for TTRAnyListWidget.InteractiveSmall(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;

  v7 = type metadata accessor for TTRNewWidgetViewModel(0);
  v8 = v7[7];
  v9 = sub_1000C0E58();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);

  v10 = (v6 + v7[9]);
  v11 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
  {
    v28 = v5;
    v12 = v1;

    v13 = v11[6];
    v14 = sub_1000C0818();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v10 + v13, 1, v14))
    {
      (*(v15 + 8))(v10 + v13, v14);
    }

    v16 = v11[7];
    v17 = sub_1000C0938();
    (*(*(v17 - 8) + 8))(v10 + v16, v17);

    v1 = v12;
    v5 = v28;
    v4 = (v3 + 16) & ~v3;
  }

  v18 = v7[18];
  v19 = sub_1000C0938();
  (*(*(v19 - 8) + 8))(v6 + v18, v19);

  sub_100048A00(*(v6 + v2[5]), *(v6 + v2[5] + 8));
  v20 = v2[6];
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_1000C2338();
    (*(*(v21 - 8) + 8))(v6 + v20, v21);
  }

  else
  {
  }

  v22 = v2[7];
  sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_1000C16C8();
    (*(*(v23 - 8) + 8))(v6 + v22, v23);
  }

  else
  {
  }

  sub_100048A00(*(v6 + v2[9]), *(v6 + v2[9] + 8));
  sub_100048A00(*(v6 + v2[10]), *(v6 + v2[10] + 8));
  v24 = v6 + v2[11];
  sub_100054C08(*v24, *(v24 + 8), *(v24 + 16), *(v24 + 24), *(v24 + 32));
  v25 = v2[12];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = sub_1000C2338();
    (*(*(v26 - 8) + 8))(v6 + v25, v26);
  }

  else
  {
  }

  return _swift_deallocObject(v1, ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10005BAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for TTRAnyListWidget.InteractiveSmall(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000369AC(a1, a2, v3 + v8, v9, a3);
}

uint64_t sub_10005BB94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005BBD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10005BC38(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a2 != 2)
  {
    sub_1000489F4(a3, a4 & 1);
  }
}

void sub_10005BC88(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a2 != 2)
  {
    sub_100048A00(a3, a4 & 1);
  }
}

unint64_t sub_10005BD54()
{
  result = qword_1000EECB0;
  if (!qword_1000EECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EECB0);
  }

  return result;
}

uint64_t sub_10005BDA8()
{
  v1 = v0;
  v2 = type metadata accessor for TTRAnyListWidget.InteractiveMedium(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = v0 + v4;

  v7 = type metadata accessor for TTRNewWidgetViewModel(0);
  v8 = v7[7];
  v9 = sub_1000C0E58();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);

  v10 = (v6 + v7[9]);
  v11 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
  {
    v23 = v5;
    v24 = v1;

    v12 = v11[6];
    v13 = sub_1000C0818();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v10 + v12, 1, v13))
    {
      (*(v14 + 8))(v10 + v12, v13);
    }

    v15 = v11[7];
    v16 = sub_1000C0938();
    (*(*(v16 - 8) + 8))(v10 + v15, v16);

    v5 = v23;
    v1 = v24;
  }

  v17 = v7[18];
  v18 = sub_1000C0938();
  (*(*(v18 - 8) + 8))(v6 + v17, v18);

  v19 = *(v2 + 20);
  sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1000C16C8();
    (*(*(v20 - 8) + 8))(v6 + v19, v20);
  }

  else
  {
  }

  v21 = v6 + *(v2 + 24);
  sub_100054C08(*v21, *(v21 + 8), *(v21 + 16), *(v21 + 24), *(v21 + 32));

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t sub_10005C128@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for TTRAnyListWidget.InteractiveMedium(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100037660(a1, v6, a2);
}

unint64_t sub_10005C1B0()
{
  result = qword_1000EED10;
  if (!qword_1000EED10)
  {
    sub_100005334(&qword_1000EED08, &qword_1000C6E40);
    sub_100048784(&qword_1000EED18, type metadata accessor for TTRAnyListWidget.MediumHeaderView, &unk_1000C73C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EED10);
  }

  return result;
}

uint64_t sub_10005C2AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005334(a2, a3);
    sub_100048784(&qword_1000EED30, type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView, &unk_1000C7370);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005C39C()
{
  result = qword_1000EEDE0;
  if (!qword_1000EEDE0)
  {
    sub_100005334(&qword_1000EEDC0, &qword_1000C6EB0);
    sub_10005C428();
    sub_10005C5B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEDE0);
  }

  return result;
}

unint64_t sub_10005C428()
{
  result = qword_1000EEDE8;
  if (!qword_1000EEDE8)
  {
    sub_100005334(&qword_1000EEDD8, &qword_1000C6EC8);
    sub_10005C4AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEDE8);
  }

  return result;
}

unint64_t sub_10005C4AC()
{
  result = qword_1000EEDF0;
  if (!qword_1000EEDF0)
  {
    sub_100005334(&qword_1000EEDD0, &qword_1000C6EC0);
    sub_100048784(&qword_1000EEDF8, type metadata accessor for TTRAnyListWidget.ListBadge.EmojiBackground, &unk_1000C72D0);
    sub_100008478(&qword_1000EEE00, &qword_1000EEE08, &qword_1000C6ED0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEDF0);
  }

  return result;
}

unint64_t sub_10005C5B4()
{
  result = qword_1000EEE10;
  if (!qword_1000EEE10)
  {
    sub_100005334(&qword_1000EEDA8, &qword_1000C6E98);
    sub_100048784(&qword_1000EEE18, type metadata accessor for TTRAnyListWidget.ListBadge.IconBackground, &unk_1000C7280);
    sub_100008478(&qword_1000EEE20, &qword_1000EEE28, &qword_1000C6ED8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEE10);
  }

  return result;
}

unint64_t sub_10005C69C()
{
  result = qword_1000EEE38;
  if (!qword_1000EEE38)
  {
    sub_100005334(&qword_1000EEE30, &qword_1000C6EE0);
    sub_10005C874(&qword_1000EEE40, &qword_1000EEE48, &qword_1000C6EE8);
    sub_100008478(&qword_1000ED7B8, &qword_1000ED7C0, &unk_1000C5580, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEE38);
  }

  return result;
}

unint64_t sub_10005C774()
{
  result = qword_1000EEE68;
  if (!qword_1000EEE68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000EEE68);
  }

  return result;
}

unint64_t sub_10005C7C8()
{
  result = qword_1000EEEA0;
  if (!qword_1000EEEA0)
  {
    sub_100005334(&qword_1000EEE98, &qword_1000C6F30);
    sub_10005C874(&qword_1000EEEA8, &qword_1000EEEB0, &qword_1000C6F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEEA0);
  }

  return result;
}

uint64_t sub_10005C874(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005334(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005C8E4()
{
  result = qword_1000EEEC0;
  if (!qword_1000EEEC0)
  {
    sub_100005334(&qword_1000EEE80, &qword_1000C6F18);
    sub_10005C99C();
    sub_100008478(&qword_1000ED7B8, &qword_1000ED7C0, &unk_1000C5580, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEEC0);
  }

  return result;
}

unint64_t sub_10005C99C()
{
  result = qword_1000EEEC8;
  if (!qword_1000EEEC8)
  {
    sub_100005334(&qword_1000EEE78, &qword_1000C6F10);
    sub_100005334(&qword_1000EEE98, &qword_1000C6F30);
    sub_10005C7C8();
    swift_getOpaqueTypeConformance2();
    sub_100008478(&qword_1000ED7A8, &qword_1000ED7B0, &qword_1000C62E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEEC8);
  }

  return result;
}

unint64_t sub_10005CAA4()
{
  result = qword_1000EEED0;
  if (!qword_1000EEED0)
  {
    sub_100005334(&qword_1000EEE90, &qword_1000C6F28);
    sub_100005334(&qword_1000EEE80, &qword_1000C6F18);
    sub_100005334(&qword_1000EEEB8, &qword_1000C6F40);
    sub_10005C8E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100008478(&qword_1000EEED8, &qword_1000ED768, &qword_1000C5490, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEED0);
  }

  return result;
}

unint64_t sub_10005CBE4()
{
  result = qword_1000EEF00;
  if (!qword_1000EEF00)
  {
    sub_100005334(&qword_1000EEEF0, &qword_1000C6F68);
    sub_100005334(&qword_1000EEEE8, &qword_1000C6F60);
    sub_100008478(&qword_1000EEEF8, &qword_1000EEEE8, &qword_1000C6F60, &protocol conformance descriptor for _ShapeView<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEF00);
  }

  return result;
}

char *sub_10005CD20(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *v4 = *a2;
    v4 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v6 = a3[5];
    v8 = sub_1000C0E58();
    (*(*(v8 - 8) + 16))(&v4[v6], &a2[v6], v8);
    v9 = a3[6];
    v10 = a3[7];
    v11 = &v4[v9];
    v12 = &a2[v9];
    v13 = *v12;
    LOBYTE(v12) = v12[8];
    *v11 = v13;
    v11[8] = v12;

    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = sub_1000C2338();
      (*(*(v14 - 8) + 16))(&v4[v10], &a2[v10], v14);
    }

    else
    {
      *&v4[v10] = *&a2[v10];
    }

    swift_storeEnumTagMultiPayload();
  }

  return v4;
}

uint64_t sub_10005CE9C(uint64_t a1, int *a2)
{
  v4 = a2[5];
  v5 = sub_1000C0E58();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  v6 = a2[7];
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1000C2338();
    v8 = *(*(v7 - 8) + 8);

    return v8(a1 + v6, v7);
  }

  else
  {
  }
}

_BYTE *sub_10005CFA4(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1000C0E58();
  (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
  v8 = a3[6];
  v9 = a3[7];
  v10 = &a1[v8];
  v11 = &a2[v8];
  v12 = *v11;
  LOBYTE(v11) = v11[8];
  *v10 = v12;
  v10[8] = v11;

  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000C2338();
    (*(*(v13 - 8) + 16))(&a1[v9], &a2[v9], v13);
  }

  else
  {
    *&a1[v9] = *&a2[v9];
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

_BYTE *sub_10005D0CC(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1000C0E58();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  v8 = a3[6];
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = *v10;
  LOBYTE(v10) = v10[8];
  *v9 = v11;
  v9[8] = v10;

  if (a1 != a2)
  {
    v12 = a3[7];
    sub_1000084C0(&a1[v12], &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = sub_1000C2338();
      (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
    }

    else
    {
      *&a1[v12] = *&a2[v12];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

_BYTE *sub_10005D22C(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1000C0E58();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = a3[6];
  v9 = a3[7];
  v10 = &a1[v8];
  v11 = &a2[v8];
  *v10 = *v11;
  v10[8] = v11[8];
  v12 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000C2338();
    (*(*(v13 - 8) + 32))(&a1[v9], &a2[v9], v13);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
  }

  return a1;
}

_BYTE *sub_10005D360(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1000C0E58();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  v8 = a3[6];
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = *v10;
  LOBYTE(v10) = v10[8];
  *v9 = v11;
  v9[8] = v10;

  if (a1 != a2)
  {
    v12 = a3[7];
    sub_1000084C0(&a1[v12], &qword_1000EDDC0, &qword_1000C5B60);
    v13 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = sub_1000C2338();
      (*(*(v14 - 8) + 32))(&a1[v12], &a2[v12], v14);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v12], &a2[v12], *(*(v13 - 8) + 64));
    }
  }

  return a1;
}

uint64_t sub_10005D4DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000C0E58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 254)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    IsVibrantText = type metadata accessor for IsVibrantText(0);
    v14 = *(*(IsVibrantText - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, IsVibrantText);
  }
}

uint64_t sub_10005D614(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1000C0E58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    IsVibrantText = type metadata accessor for IsVibrantText(0);
    v14 = *(*(IsVibrantText - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, IsVibrantText);
  }

  return result;
}

void sub_10005D73C(uint64_t a1)
{
  sub_1000C0E58();
  if (v1 <= 0x3F)
  {
    sub_10005435C(319, &unk_1000EDE48, &type metadata accessor for WidgetRenderingMode);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t destroy for TTRAnyListWidget.CountTextView(void *a1)
{
}

uint64_t initializeWithCopy for TTRAnyListWidget.CountTextView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;

  return a1;
}

uint64_t assignWithCopy for TTRAnyListWidget.CountTextView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;

  return a1;
}

__n128 initializeWithTake for TTRAnyListWidget.CountTextView(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRAnyListWidget.CountTextView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAnyListWidget.CountTextView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for TTRAnyListWidget.CountTextView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_10005DAAC(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v22 = *a2;
    *v4 = *a2;
    v4 = (v22 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v6;
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = a2[4];
    v7 = type metadata accessor for TTRNewWidgetViewModel(0);
    v8 = v7[7];
    v9 = sub_1000C0E58();
    v10 = *(*(v9 - 8) + 16);

    v10(&v4[v8], a2 + v8, v9);
    v11 = v7[8];
    v12 = &v4[v11];
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    *(v12 + 1) = v14;
    v15 = v7[9];
    v16 = &v4[v15];
    v17 = (a2 + v15);
    v18 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v19 = *(v18 - 1);
    v20 = *(v19 + 48);

    if (v20(v17, 1, v18))
    {
      v21 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
      memcpy(v16, v17, *(*(v21 - 8) + 64));
    }

    else
    {
      v73 = v19;
      v23 = *v17;
      v24 = v17[1];
      *v16 = *v17;
      v16[1] = v24;
      v71 = v18[6];
      v25 = sub_1000C0818();
      v68 = *(v25 - 8);
      v69 = *(v68 + 48);
      v26 = v23;
      v27 = v24;
      if (v69(v17 + v71, 1, v25))
      {
        v28 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(v16 + v71, v17 + v71, *(*(v28 - 8) + 64));
      }

      else
      {
        (*(v68 + 16))(v16 + v71, v17 + v71, v25);
        (*(v68 + 56))(v16 + v71, 0, 1, v25);
      }

      v29 = v18[7];
      v30 = sub_1000C0938();
      (*(*(v30 - 8) + 16))(v16 + v29, v17 + v29, v30);
      v31 = v18[8];
      v32 = *(v17 + v31);
      *(v16 + v31) = v32;
      *(v16 + v18[9]) = *(v17 + v18[9]);
      *(v16 + v18[10]) = *(v17 + v18[10]);
      *(v16 + v18[11]) = *(v17 + v18[11]);
      v33 = *(v73 + 56);
      v34 = v32;
      v33(v16, 0, 1, v18);
    }

    v35 = v7[10];
    v74 = *(a2 + v35);
    *&v4[v35] = v74;
    v36 = v7[11];
    v37 = &v4[v36];
    v38 = (a2 + v36);
    v39 = v38[1];
    *v37 = *v38;
    *(v37 + 1) = v39;
    v40 = v7[12];
    v72 = *(a2 + v40);
    *&v4[v40] = v72;
    v41 = v7[13];
    v42 = &v4[v41];
    v43 = (a2 + v41);
    v44 = v43[1];
    *v42 = *v43;
    *(v42 + 1) = v44;
    v45 = v7[14];
    v46 = &v4[v45];
    v47 = (a2 + v45);
    v48 = v47[1];
    *v46 = *v47;
    *(v46 + 1) = v48;
    v4[v7[15]] = *(a2 + v7[15]);
    v49 = v7[16];
    v50 = &v4[v49];
    v51 = (a2 + v49);
    v52 = v51[1];
    *v50 = *v51;
    *(v50 + 1) = v52;
    *&v4[v7[17]] = *(a2 + v7[17]);
    v53 = v7[18];
    v54 = sub_1000C0938();
    v70 = *(*(v54 - 8) + 16);
    v55 = v74;

    v56 = v72;

    v70(&v4[v53], a2 + v53, v54);
    *&v4[v7[19]] = *(a2 + v7[19]);
    v4[v7[20]] = *(a2 + v7[20]);
    v57 = a3[6];
    *&v4[a3[5]] = *(a2 + a3[5]);
    v58 = &v4[v57];
    v59 = a2 + v57;
    v60 = *v59;
    LOBYTE(v59) = v59[8];
    *v58 = v60;
    v58[8] = v59;
    v61 = a3[7];
    v62 = &v4[v61];
    v63 = a2 + v61;
    v64 = *v63;
    LOBYTE(v44) = v63[8];

    j__swift_retain(v64);
    *v62 = v64;
    v62[8] = v44;
    v65 = a3[8];
    sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v66 = sub_1000C1778();
      (*(*(v66 - 8) + 16))(&v4[v65], a2 + v65, v66);
    }

    else
    {
      *&v4[v65] = *(a2 + v65);
    }

    swift_storeEnumTagMultiPayload();
  }

  return v4;
}

uint64_t sub_10005E01C(uint64_t a1, int *a2)
{

  v4 = type metadata accessor for TTRNewWidgetViewModel(0);
  v5 = v4[7];
  v6 = sub_1000C0E58();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);

  v7 = (a1 + v4[9]);
  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
  {

    v9 = v8[6];
    v10 = sub_1000C0818();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v7 + v9, 1, v10))
    {
      (*(v11 + 8))(v7 + v9, v10);
    }

    v12 = v8[7];
    v13 = sub_1000C0938();
    (*(*(v13 - 8) + 8))(v7 + v12, v13);
  }

  v14 = v4[18];
  v15 = sub_1000C0938();
  (*(*(v15 - 8) + 8))(a1 + v14, v15);

  j__swift_release(*(a1 + a2[7]));
  v16 = a2[8];
  sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1000C1778();
    v18 = *(*(v17 - 8) + 8);

    return v18(a1 + v16, v17);
  }

  else
  {
  }
}

uint64_t sub_10005E340(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = v6[7];
  v8 = sub_1000C0E58();
  v9 = *(*(v8 - 8) + 16);

  v9(a1 + v7, a2 + v7, v8);
  v10 = v6[8];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;
  v14 = v6[9];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v17 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 48);

  if (v19(v16, 1, v17))
  {
    v20 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v15, v16, *(*(v20 - 8) + 64));
  }

  else
  {
    v71 = v18;
    v21 = *v16;
    v22 = v16[1];
    *v15 = *v16;
    v15[1] = v22;
    v69 = v17[6];
    v23 = sub_1000C0818();
    v66 = *(v23 - 8);
    v67 = *(v66 + 48);
    v24 = v21;
    v25 = v22;
    if (v67(v16 + v69, 1, v23))
    {
      v26 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v15 + v69, v16 + v69, *(*(v26 - 8) + 64));
    }

    else
    {
      (*(v66 + 16))(v15 + v69, v16 + v69, v23);
      (*(v66 + 56))(v15 + v69, 0, 1, v23);
    }

    v27 = v17[7];
    v28 = sub_1000C0938();
    (*(*(v28 - 8) + 16))(v15 + v27, v16 + v27, v28);
    v29 = v17[8];
    v30 = *(v16 + v29);
    *(v15 + v29) = v30;
    *(v15 + v17[9]) = *(v16 + v17[9]);
    *(v15 + v17[10]) = *(v16 + v17[10]);
    *(v15 + v17[11]) = *(v16 + v17[11]);
    v31 = *(v71 + 56);
    v32 = v30;
    v31(v15, 0, 1, v17);
  }

  v33 = v6[10];
  v72 = *(a2 + v33);
  *(a1 + v33) = v72;
  v34 = v6[11];
  v35 = (a1 + v34);
  v36 = (a2 + v34);
  v37 = v36[1];
  *v35 = *v36;
  v35[1] = v37;
  v38 = v6[12];
  v70 = *(a2 + v38);
  *(a1 + v38) = v70;
  v39 = v6[13];
  v40 = (a1 + v39);
  v41 = (a2 + v39);
  v42 = v41[1];
  *v40 = *v41;
  v40[1] = v42;
  v43 = v6[14];
  v44 = (a1 + v43);
  v45 = (a2 + v43);
  v46 = v45[1];
  *v44 = *v45;
  v44[1] = v46;
  *(a1 + v6[15]) = *(a2 + v6[15]);
  v47 = v6[16];
  v48 = (a1 + v47);
  v49 = (a2 + v47);
  v50 = v49[1];
  *v48 = *v49;
  v48[1] = v50;
  *(a1 + v6[17]) = *(a2 + v6[17]);
  v51 = v6[18];
  v52 = sub_1000C0938();
  v68 = *(*(v52 - 8) + 16);
  v53 = v72;

  v54 = v70;

  v68(a1 + v51, a2 + v51, v52);
  *(a1 + v6[19]) = *(a2 + v6[19]);
  *(a1 + v6[20]) = *(a2 + v6[20]);
  v55 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v56 = a1 + v55;
  v57 = (a2 + v55);
  v58 = *v57;
  LOBYTE(v57) = *(v57 + 8);
  *v56 = v58;
  *(v56 + 8) = v57;
  v59 = a3[7];
  v60 = a1 + v59;
  v61 = a2 + v59;
  v62 = *v61;
  LOBYTE(v42) = *(v61 + 8);

  j__swift_retain(v62);
  *v60 = v62;
  *(v60 + 8) = v42;
  v63 = a3[8];
  sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v64 = sub_1000C1778();
    (*(*(v64 - 8) + 16))(a1 + v63, a2 + v63, v64);
  }

  else
  {
    *(a1 + v63) = *(a2 + v63);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_10005E85C(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);

  v5 = type metadata accessor for TTRNewWidgetViewModel(0);
  v6 = v5[7];
  v7 = sub_1000C0E58();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  v8 = v5[8];
  v9 = &a1[v8];
  v10 = &a2[v8];
  *v9 = *v10;
  *(v9 + 1) = *(v10 + 1);

  v11 = v5[9];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v15 = *(v14 - 1);
  v16 = *(v15 + 48);
  v17 = v16(v12, 1, v14);
  v18 = v16(v13, 1, v14);
  if (!v17)
  {
    if (v18)
    {
      sub_100048940(v12, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v25 = *v13;
    v26 = *v12;
    *v12 = *v13;
    v27 = v25;

    v28 = *(v12 + 1);
    v29 = *(v13 + 1);
    *(v12 + 1) = v29;
    v30 = v29;

    v31 = v14[6];
    v32 = sub_1000C0818();
    v87 = *(v32 - 8);
    v33 = *(v87 + 48);
    v89 = v33(&v12[v31], 1, v32);
    v34 = v33(&v13[v31], 1, v32);
    if (v89)
    {
      if (!v34)
      {
        (*(v87 + 16))(&v12[v31], &v13[v31], v32);
        (*(v87 + 56))(&v12[v31], 0, 1, v32);
        goto LABEL_18;
      }

      v35 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v36 = &v12[v31];
      v37 = &v13[v31];
    }

    else
    {
      if (!v34)
      {
        (*(v87 + 24))(&v12[v31], &v13[v31], v32);
        goto LABEL_18;
      }

      (*(v87 + 8))(&v12[v31], v32);
      v35 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v36 = &v12[v31];
      v37 = &v13[v31];
    }

    memcpy(v36, v37, v35);
LABEL_18:
    v44 = v14[7];
    v45 = sub_1000C0938();
    (*(*(v45 - 8) + 24))(&v12[v44], &v13[v44], v45);
    v46 = v14[8];
    v47 = *&v12[v46];
    v48 = *&v13[v46];
    *&v12[v46] = v48;
    v49 = v48;

    *&v12[v14[9]] = *&v13[v14[9]];
    v12[v14[10]] = v13[v14[10]];
    v12[v14[11]] = v13[v14[11]];
    goto LABEL_19;
  }

  if (v18)
  {
LABEL_7:
    v24 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v12, v13, *(*(v24 - 8) + 64));
    goto LABEL_19;
  }

  v19 = *v13;
  *v12 = *v13;
  v88 = *(v13 + 1);
  *(v12 + 1) = v88;
  v90 = v14[6];
  v20 = sub_1000C0818();
  v85 = *(v20 - 8);
  v86 = *(v85 + 48);
  v21 = v19;
  v22 = v88;
  if (v86(&v13[v90], 1, v20))
  {
    v23 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v12[v90], &v13[v90], *(*(v23 - 8) + 64));
  }

  else
  {
    (*(v85 + 16))(&v12[v90], &v13[v90], v20);
    (*(v85 + 56))(&v12[v90], 0, 1, v20);
  }

  v38 = v14[7];
  v39 = sub_1000C0938();
  (*(*(v39 - 8) + 16))(&v12[v38], &v13[v38], v39);
  v40 = v14[8];
  v41 = *&v13[v40];
  *&v12[v40] = v41;
  *&v12[v14[9]] = *&v13[v14[9]];
  v12[v14[10]] = v13[v14[10]];
  v12[v14[11]] = v13[v14[11]];
  v42 = *(v15 + 56);
  v43 = v41;
  v42(v12, 0, 1, v14);
LABEL_19:
  v50 = v5[10];
  v51 = *&a2[v50];
  v52 = *&a1[v50];
  *&a1[v50] = v51;
  v53 = v51;

  v54 = v5[11];
  v55 = &a1[v54];
  v56 = &a2[v54];
  *v55 = *v56;
  *(v55 + 1) = *(v56 + 1);

  v57 = v5[12];
  v58 = *&a1[v57];
  v59 = *&a2[v57];
  *&a1[v57] = v59;
  v60 = v59;

  v61 = v5[13];
  v62 = &a1[v61];
  v63 = &a2[v61];
  *v62 = *v63;
  *(v62 + 1) = *(v63 + 1);

  v64 = v5[14];
  v65 = &a1[v64];
  v66 = &a2[v64];
  *v65 = *v66;
  *(v65 + 1) = *(v66 + 1);

  a1[v5[15]] = a2[v5[15]];
  v67 = v5[16];
  v68 = &a1[v67];
  v69 = &a2[v67];
  *v68 = *v69;
  *(v68 + 1) = *(v69 + 1);

  *&a1[v5[17]] = *&a2[v5[17]];

  v70 = v5[18];
  v71 = sub_1000C0938();
  (*(*(v71 - 8) + 24))(&a1[v70], &a2[v70], v71);
  *&a1[v5[19]] = *&a2[v5[19]];

  a1[v5[20]] = a2[v5[20]];
  *&a1[a3[5]] = *&a2[a3[5]];
  v72 = a3[6];
  v73 = &a1[v72];
  v74 = &a2[v72];
  v75 = *v74;
  LOBYTE(v74) = v74[8];
  *v73 = v75;
  v73[8] = v74;

  v76 = a3[7];
  v77 = &a1[v76];
  v78 = &a2[v76];
  v79 = *v78;
  v80 = v78[8];
  j__swift_retain(*v78);
  v81 = *v77;
  *v77 = v79;
  v77[8] = v80;
  j__swift_release(v81);
  if (a1 != a2)
  {
    v82 = a3[8];
    sub_1000084C0(&a1[v82], &qword_1000EDDB8, &qword_1000C8030);
    sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v83 = sub_1000C1778();
      (*(*(v83 - 8) + 16))(&a1[v82], &a2[v82], v83);
    }

    else
    {
      *&a1[v82] = *&a2[v82];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10005F0A4(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = v6[7];
  v8 = sub_1000C0E58();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  *(a1 + v6[8]) = *(a2 + v6[8]);
  v9 = v6[9];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = *(v12 - 1);
  if ((*(v13 + 48))(v11, 1, v12))
  {
    v14 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v10, v11, *(*(v14 - 8) + 64));
  }

  else
  {
    v34 = a3;
    v15 = v11[1];
    *v10 = *v11;
    v10[1] = v15;
    v16 = v12[6];
    v17 = sub_1000C0818();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v11 + v16, 1, v17))
    {
      v19 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v10 + v16, v11 + v16, *(*(v19 - 8) + 64));
    }

    else
    {
      (*(v18 + 32))(v10 + v16, v11 + v16, v17);
      (*(v18 + 56))(v10 + v16, 0, 1, v17);
    }

    v20 = v12[7];
    v21 = sub_1000C0938();
    (*(*(v21 - 8) + 32))(v10 + v20, v11 + v20, v21);
    *(v10 + v12[8]) = *(v11 + v12[8]);
    *(v10 + v12[9]) = *(v11 + v12[9]);
    *(v10 + v12[10]) = *(v11 + v12[10]);
    *(v10 + v12[11]) = *(v11 + v12[11]);
    (*(v13 + 56))(v10, 0, 1, v12);
    a3 = v34;
  }

  *(a1 + v6[10]) = *(a2 + v6[10]);
  *(a1 + v6[11]) = *(a2 + v6[11]);
  *(a1 + v6[12]) = *(a2 + v6[12]);
  *(a1 + v6[13]) = *(a2 + v6[13]);
  *(a1 + v6[14]) = *(a2 + v6[14]);
  *(a1 + v6[15]) = *(a2 + v6[15]);
  *(a1 + v6[16]) = *(a2 + v6[16]);
  *(a1 + v6[17]) = *(a2 + v6[17]);
  v22 = v6[18];
  v23 = sub_1000C0938();
  (*(*(v23 - 8) + 32))(a1 + v22, a2 + v22, v23);
  *(a1 + v6[19]) = *(a2 + v6[19]);
  *(a1 + v6[20]) = *(a2 + v6[20]);
  v24 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v25 = a1 + v24;
  v26 = a2 + v24;
  *v25 = *v26;
  *(v25 + 8) = *(v26 + 8);
  v27 = a3[7];
  v28 = a3[8];
  v29 = a1 + v27;
  v30 = a2 + v27;
  *(v29 + 8) = *(v30 + 8);
  *v29 = *v30;
  v31 = sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = sub_1000C1778();
    (*(*(v32 - 8) + 32))(a1 + v28, a2 + v28, v32);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v28), (a2 + v28), *(*(v31 - 8) + 64));
  }

  return a1;
}

uint64_t sub_10005F50C(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = v6[7];
  v8 = sub_1000C0E58();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = v6[8];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v13 = *v11;
  v12 = v11[1];
  *v10 = v13;
  v10[1] = v12;

  v14 = v6[9];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v17 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 48);
  v20 = v19(v15, 1, v17);
  v21 = v19(v16, 1, v17);
  if (v20)
  {
    if (!v21)
    {
      v22 = *(v16 + 1);
      *v15 = *v16;
      *(v15 + 1) = v22;
      v23 = v17[6];
      v24 = sub_1000C0818();
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(&v16[v23], 1, v24))
      {
        v26 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(&v15[v23], &v16[v23], *(*(v26 - 8) + 64));
      }

      else
      {
        (*(v25 + 32))(&v15[v23], &v16[v23], v24);
        (*(v25 + 56))(&v15[v23], 0, 1, v24);
      }

      v37 = v17[7];
      v38 = sub_1000C0938();
      (*(*(v38 - 8) + 32))(&v15[v37], &v16[v37], v38);
      *&v15[v17[8]] = *&v16[v17[8]];
      *&v15[v17[9]] = *&v16[v17[9]];
      v15[v17[10]] = v16[v17[10]];
      v15[v17[11]] = v16[v17[11]];
      (*(v18 + 56))(v15, 0, 1, v17);
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  if (v21)
  {
    sub_100048940(v15, type metadata accessor for TTRNewWidgetViewModel.Reminder);
LABEL_7:
    v27 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v15, v16, *(*(v27 - 8) + 64));
    goto LABEL_19;
  }

  v28 = *v15;
  *v15 = *v16;

  v29 = *(v15 + 1);
  *(v15 + 1) = *(v16 + 1);

  v30 = v17[6];
  v31 = sub_1000C0818();
  v82 = *(v31 - 8);
  v32 = *(v82 + 48);
  v83 = v32(&v15[v30], 1, v31);
  v33 = v32(&v16[v30], 1, v31);
  if (v83)
  {
    if (!v33)
    {
      (*(v82 + 32))(&v15[v30], &v16[v30], v31);
      (*(v82 + 56))(&v15[v30], 0, 1, v31);
      goto LABEL_18;
    }

    v34 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
    v35 = &v15[v30];
    v36 = &v16[v30];
  }

  else
  {
    if (!v33)
    {
      (*(v82 + 40))(&v15[v30], &v16[v30], v31);
      goto LABEL_18;
    }

    (*(v82 + 8))(&v15[v30], v31);
    v34 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
    v35 = &v15[v30];
    v36 = &v16[v30];
  }

  memcpy(v35, v36, v34);
LABEL_18:
  v39 = v17[7];
  v40 = sub_1000C0938();
  (*(*(v40 - 8) + 40))(&v15[v39], &v16[v39], v40);
  v41 = v17[8];
  v42 = *&v15[v41];
  *&v15[v41] = *&v16[v41];

  *&v15[v17[9]] = *&v16[v17[9]];
  v15[v17[10]] = v16[v17[10]];
  v15[v17[11]] = v16[v17[11]];
LABEL_19:
  v43 = v6[10];
  v44 = *(a1 + v43);
  *(a1 + v43) = *(a2 + v43);

  v45 = v6[11];
  v46 = (a1 + v45);
  v47 = (a2 + v45);
  v49 = *v47;
  v48 = v47[1];
  *v46 = v49;
  v46[1] = v48;

  v50 = v6[12];
  v51 = *(a1 + v50);
  *(a1 + v50) = *(a2 + v50);

  v52 = v6[13];
  v53 = (a1 + v52);
  v54 = (a2 + v52);
  v56 = *v54;
  v55 = v54[1];
  *v53 = v56;
  v53[1] = v55;

  v57 = v6[14];
  v58 = (a1 + v57);
  v59 = (a2 + v57);
  v61 = *v59;
  v60 = v59[1];
  *v58 = v61;
  v58[1] = v60;

  *(a1 + v6[15]) = *(a2 + v6[15]);
  v62 = v6[16];
  v63 = (a1 + v62);
  v64 = (a2 + v62);
  v66 = *v64;
  v65 = v64[1];
  *v63 = v66;
  v63[1] = v65;

  *(a1 + v6[17]) = *(a2 + v6[17]);

  v67 = v6[18];
  v68 = sub_1000C0938();
  (*(*(v68 - 8) + 40))(a1 + v67, a2 + v67, v68);
  *(a1 + v6[19]) = *(a2 + v6[19]);

  *(a1 + v6[20]) = *(a2 + v6[20]);
  v69 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v70 = a1 + v69;
  v71 = (a2 + v69);
  v72 = *v71;
  LOBYTE(v71) = *(v71 + 8);
  *v70 = v72;
  *(v70 + 8) = v71;

  v73 = a3[7];
  v74 = a1 + v73;
  v75 = (a2 + v73);
  v76 = *v75;
  LOBYTE(v75) = *(v75 + 8);
  v77 = *v74;
  *v74 = v76;
  *(v74 + 8) = v75;
  j__swift_release(v77);
  if (a1 != a2)
  {
    v78 = a3[8];
    sub_1000084C0(a1 + v78, &qword_1000EDDB8, &qword_1000C8030);
    v79 = sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v80 = sub_1000C1778();
      (*(*(v80 - 8) + 32))(a1 + v78, a2 + v78, v80);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a1 + v78), (a2 + v78), *(*(v79 - 8) + 64));
    }
  }

  return a1;
}

uint64_t sub_10005FCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_100004D04(&qword_1000EDDC8, &qword_1000C5B68);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10005FDE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRNewWidgetViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 24) + 8) = -a2;
  }

  else
  {
    v11 = sub_100004D04(&qword_1000EDDC8, &qword_1000C5B68);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10005FF10(uint64_t a1)
{
  type metadata accessor for TTRNewWidgetViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_10005435C(319, &qword_1000EDE40, &type metadata accessor for RedactionReasons);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void *sub_10006003C(void *a1, void *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v24 = *a2;
    *a1 = *a2;
    v25 = (v24 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = a3[5];
    v6 = a1 + v5;
    v7 = a2 + v5;
    v8 = *(a2 + v5 + 8);
    *v6 = *(a2 + v5);
    *(v6 + 1) = v8;
    *(v6 + 1) = *(a2 + v5 + 16);
    *(v6 + 4) = *(a2 + v5 + 32);
    v9 = type metadata accessor for TTRNewWidgetViewModel(0);
    v10 = v9[7];
    v11 = sub_1000C0E58();
    v12 = *(*(v11 - 8) + 16);

    v12(&v6[v10], &v7[v10], v11);
    v13 = v9[8];
    v14 = &v6[v13];
    v15 = &v7[v13];
    v16 = *(v15 + 1);
    *v14 = *v15;
    *(v14 + 1) = v16;
    v17 = v9[9];
    v18 = &v6[v17];
    v19 = &v7[v17];
    v20 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v21 = *(v20 - 1);
    v22 = *(v21 + 48);

    if (v22(v19, 1, v20))
    {
      v23 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
      memcpy(v18, v19, *(*(v23 - 8) + 64));
    }

    else
    {
      v69 = v21;
      v26 = *v19;
      v27 = v19[1];
      *v18 = *v19;
      v18[1] = v27;
      v67 = v20[6];
      v28 = sub_1000C0818();
      v64 = *(v28 - 8);
      v65 = *(v64 + 48);
      v29 = v26;
      v30 = v27;
      if (v65(v19 + v67, 1, v28))
      {
        v31 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(v18 + v67, v19 + v67, *(*(v31 - 8) + 64));
      }

      else
      {
        (*(v64 + 16))(v18 + v67, v19 + v67, v28);
        (*(v64 + 56))(v18 + v67, 0, 1, v28);
      }

      v32 = v20[7];
      v33 = sub_1000C0938();
      (*(*(v33 - 8) + 16))(v18 + v32, v19 + v32, v33);
      v34 = v20[8];
      v35 = *(v19 + v34);
      *(v18 + v34) = v35;
      *(v18 + v20[9]) = *(v19 + v20[9]);
      *(v18 + v20[10]) = *(v19 + v20[10]);
      *(v18 + v20[11]) = *(v19 + v20[11]);
      v36 = *(v69 + 56);
      v37 = v35;
      v36(v18, 0, 1, v20);
    }

    v38 = v9[10];
    v70 = *&v7[v38];
    *&v6[v38] = v70;
    v39 = v9[11];
    v40 = &v6[v39];
    v41 = &v7[v39];
    v42 = *(v41 + 1);
    *v40 = *v41;
    *(v40 + 1) = v42;
    v43 = v9[12];
    v68 = *&v7[v43];
    *&v6[v43] = v68;
    v44 = v9[13];
    v45 = &v6[v44];
    v46 = &v7[v44];
    v47 = *(v46 + 1);
    *v45 = *v46;
    *(v45 + 1) = v47;
    v48 = v9[14];
    v49 = &v6[v48];
    v50 = &v7[v48];
    v51 = *(v50 + 1);
    *v49 = *v50;
    *(v49 + 1) = v51;
    v6[v9[15]] = v7[v9[15]];
    v52 = v9[16];
    v53 = &v6[v52];
    v54 = &v7[v52];
    v55 = *(v54 + 1);
    *v53 = *v54;
    *(v53 + 1) = v55;
    *&v6[v9[17]] = *&v7[v9[17]];
    v56 = v9[18];
    v57 = sub_1000C0938();
    v66 = *(*(v57 - 8) + 16);
    v58 = v70;

    v59 = v68;

    v66(&v6[v56], &v7[v56], v57);
    *&v6[v9[19]] = *&v7[v9[19]];
    v6[v9[20]] = v7[v9[20]];
    v60 = a3[7];
    v25 = a1;
    *(a1 + a3[6]) = *(a2 + a3[6]);
    v61 = a1 + v60;
    v62 = *(a2 + v60);
    LOBYTE(v42) = *(a2 + v60 + 8);

    sub_1000489F4(v62, v42);
    *v61 = v62;
    v61[8] = v42;
    *(a1 + a3[8]) = *(a2 + a3[8]);
  }

  return v25;
}

uint64_t sub_100060514(uint64_t a1, uint64_t a2)
{
  v4 = a1 + *(a2 + 20);

  v5 = type metadata accessor for TTRNewWidgetViewModel(0);
  v6 = v5[7];
  v7 = sub_1000C0E58();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  v8 = (v4 + v5[9]);
  v9 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
  {

    v10 = v9[6];
    v11 = sub_1000C0818();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v8 + v10, 1, v11))
    {
      (*(v12 + 8))(v8 + v10, v11);
    }

    v13 = v9[7];
    v14 = sub_1000C0938();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  v15 = v5[18];
  v16 = sub_1000C0938();
  (*(*(v16 - 8) + 8))(v4 + v15, v16);

  v17 = a1 + *(a2 + 28);
  v18 = *v17;
  v19 = *(v17 + 8);

  return sub_100048A00(v18, v19);
}

_BYTE *sub_1000607AC(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v3 = a3[5];
  v4 = &a1[v3];
  v5 = &a2[v3];
  v6 = *&a2[v3 + 8];
  *v4 = *&a2[v3];
  *(v4 + 1) = v6;
  *(v4 + 1) = *&a2[v3 + 16];
  *(v4 + 4) = *&a2[v3 + 32];
  v7 = type metadata accessor for TTRNewWidgetViewModel(0);
  v8 = v7[7];
  v9 = sub_1000C0E58();
  v10 = *(*(v9 - 8) + 16);

  v10(&v4[v8], &v5[v8], v9);
  v11 = v7[8];
  v12 = &v4[v11];
  v13 = &v5[v11];
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = v7[9];
  v16 = &v4[v15];
  v17 = &v5[v15];
  v18 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v19 = *(v18 - 1);
  v20 = *(v19 + 48);

  if (v20(v17, 1, v18))
  {
    v21 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v16, v17, *(*(v21 - 8) + 64));
  }

  else
  {
    v65 = v19;
    v22 = *v17;
    v23 = v17[1];
    *v16 = *v17;
    v16[1] = v23;
    v63 = v18[6];
    v24 = sub_1000C0818();
    v60 = *(v24 - 8);
    v61 = *(v60 + 48);
    v25 = v22;
    v26 = v23;
    if (v61(v17 + v63, 1, v24))
    {
      v27 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v16 + v63, v17 + v63, *(*(v27 - 8) + 64));
    }

    else
    {
      (*(v60 + 16))(v16 + v63, v17 + v63, v24);
      (*(v60 + 56))(v16 + v63, 0, 1, v24);
    }

    v28 = v18[7];
    v29 = sub_1000C0938();
    (*(*(v29 - 8) + 16))(v16 + v28, v17 + v28, v29);
    v30 = v18[8];
    v31 = *(v17 + v30);
    *(v16 + v30) = v31;
    *(v16 + v18[9]) = *(v17 + v18[9]);
    *(v16 + v18[10]) = *(v17 + v18[10]);
    *(v16 + v18[11]) = *(v17 + v18[11]);
    v32 = *(v65 + 56);
    v33 = v31;
    v32(v16, 0, 1, v18);
  }

  v34 = v7[10];
  v66 = *&v5[v34];
  *&v4[v34] = v66;
  v35 = v7[11];
  v36 = &v4[v35];
  v37 = &v5[v35];
  v38 = v37[1];
  *v36 = *v37;
  v36[1] = v38;
  v39 = v7[12];
  v64 = *&v5[v39];
  *&v4[v39] = v64;
  v40 = v7[13];
  v41 = &v4[v40];
  v42 = &v5[v40];
  v43 = v42[1];
  *v41 = *v42;
  v41[1] = v43;
  v44 = v7[14];
  v45 = &v4[v44];
  v46 = &v5[v44];
  v47 = v46[1];
  *v45 = *v46;
  v45[1] = v47;
  v4[v7[15]] = v5[v7[15]];
  v48 = v7[16];
  v49 = &v4[v48];
  v50 = &v5[v48];
  v51 = v50[1];
  *v49 = *v50;
  v49[1] = v51;
  *&v4[v7[17]] = *&v5[v7[17]];
  v52 = v7[18];
  v53 = sub_1000C0938();
  v62 = *(*(v53 - 8) + 16);
  v54 = v66;

  v55 = v64;

  v62(&v4[v52], &v5[v52], v53);
  *&v4[v7[19]] = *&v5[v7[19]];
  v4[v7[20]] = v5[v7[20]];
  v56 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  v57 = &a1[v56];
  v58 = *&a2[v56];
  LOBYTE(v38) = a2[v56 + 8];

  sub_1000489F4(v58, v38);
  *v57 = v58;
  v57[8] = v38;
  *&a1[a3[8]] = *&a2[a3[8]];
  return a1;
}

_BYTE *sub_100060C34(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v3 = a3[5];
  v4 = &a1[v3];
  v5 = &a2[v3];
  *v4 = *&a2[v3];
  *(v4 + 1) = *&a2[v3 + 8];

  *(v4 + 2) = *(v5 + 2);
  *(v4 + 3) = *(v5 + 3);
  *(v4 + 4) = *(v5 + 4);

  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = v6[7];
  v8 = sub_1000C0E58();
  (*(*(v8 - 8) + 24))(&v4[v7], &v5[v7], v8);
  v9 = v6[8];
  v10 = &v4[v9];
  v11 = &v5[v9];
  *v10 = *v11;
  *(v10 + 1) = *(v11 + 1);

  v12 = v6[9];
  v13 = &v4[v12];
  v14 = &v5[v12];
  v15 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v16 = *(v15 - 1);
  v17 = *(v16 + 48);
  v18 = v17(v13, 1, v15);
  v19 = v17(v14, 1, v15);
  if (!v18)
  {
    if (v19)
    {
      sub_100048940(v13, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v26 = *v14;
    v27 = *v13;
    *v13 = *v14;
    v28 = v26;

    v29 = *(v13 + 1);
    v30 = *(v14 + 1);
    *(v13 + 1) = v30;
    v31 = v30;

    v32 = v15[6];
    v33 = sub_1000C0818();
    v83 = *(v33 - 8);
    v34 = *(v83 + 48);
    v85 = v34(&v13[v32], 1, v33);
    v35 = v34(&v14[v32], 1, v33);
    if (v85)
    {
      if (!v35)
      {
        (*(v83 + 16))(&v13[v32], &v14[v32], v33);
        (*(v83 + 56))(&v13[v32], 0, 1, v33);
        goto LABEL_18;
      }

      v36 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v37 = &v13[v32];
      v38 = &v14[v32];
    }

    else
    {
      if (!v35)
      {
        (*(v83 + 24))(&v13[v32], &v14[v32], v33);
        goto LABEL_18;
      }

      (*(v83 + 8))(&v13[v32], v33);
      v36 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v37 = &v13[v32];
      v38 = &v14[v32];
    }

    memcpy(v37, v38, v36);
LABEL_18:
    v45 = v15[7];
    v46 = sub_1000C0938();
    (*(*(v46 - 8) + 24))(&v13[v45], &v14[v45], v46);
    v47 = v15[8];
    v48 = *&v13[v47];
    v49 = *&v14[v47];
    *&v13[v47] = v49;
    v50 = v49;

    *&v13[v15[9]] = *&v14[v15[9]];
    v13[v15[10]] = v14[v15[10]];
    v13[v15[11]] = v14[v15[11]];
    goto LABEL_19;
  }

  if (v19)
  {
LABEL_7:
    v25 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v13, v14, *(*(v25 - 8) + 64));
    goto LABEL_19;
  }

  v20 = *v14;
  *v13 = *v14;
  v86 = *(v14 + 1);
  *(v13 + 1) = v86;
  v84 = v15[6];
  v21 = sub_1000C0818();
  v81 = *(v21 - 8);
  v82 = *(v81 + 48);
  v22 = v20;
  v23 = v86;
  if (v82(&v14[v84], 1, v21))
  {
    v24 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v13[v84], &v14[v84], *(*(v24 - 8) + 64));
  }

  else
  {
    (*(v81 + 16))(&v13[v84], &v14[v84], v21);
    (*(v81 + 56))(&v13[v84], 0, 1, v21);
  }

  v39 = v15[7];
  v40 = sub_1000C0938();
  (*(*(v40 - 8) + 16))(&v13[v39], &v14[v39], v40);
  v41 = v15[8];
  v42 = *&v14[v41];
  *&v13[v41] = v42;
  *&v13[v15[9]] = *&v14[v15[9]];
  v13[v15[10]] = v14[v15[10]];
  v13[v15[11]] = v14[v15[11]];
  v43 = *(v16 + 56);
  v44 = v42;
  v43(v13, 0, 1, v15);
LABEL_19:
  v51 = v6[10];
  v52 = *&v5[v51];
  v53 = *&v4[v51];
  *&v4[v51] = v52;
  v54 = v52;

  v55 = v6[11];
  v56 = &v4[v55];
  v57 = &v5[v55];
  *v56 = *v57;
  *(v56 + 1) = *(v57 + 1);

  v58 = v6[12];
  v59 = *&v4[v58];
  v60 = *&v5[v58];
  *&v4[v58] = v60;
  v61 = v60;

  v62 = v6[13];
  v63 = &v4[v62];
  v64 = &v5[v62];
  *v63 = *v64;
  *(v63 + 1) = *(v64 + 1);

  v65 = v6[14];
  v66 = &v4[v65];
  v67 = &v5[v65];
  *v66 = *v67;
  *(v66 + 1) = *(v67 + 1);

  v4[v6[15]] = v5[v6[15]];
  v68 = v6[16];
  v69 = &v4[v68];
  v70 = &v5[v68];
  *v69 = *v70;
  *(v69 + 1) = *(v70 + 1);

  *&v4[v6[17]] = *&v5[v6[17]];

  v71 = v6[18];
  v72 = sub_1000C0938();
  (*(*(v72 - 8) + 24))(&v4[v71], &v5[v71], v72);
  *&v4[v6[19]] = *&v5[v6[19]];

  v4[v6[20]] = v5[v6[20]];
  *&a1[a3[6]] = *&a2[a3[6]];
  v73 = a3[7];
  v74 = &a1[v73];
  v75 = &a2[v73];
  v76 = *v75;
  v77 = v75[8];
  sub_1000489F4(*v75, v77);
  v78 = *v74;
  v79 = v74[8];
  *v74 = v76;
  v74[8] = v77;
  sub_100048A00(v78, v79);
  *&a1[a3[8]] = *&a2[a3[8]];
  return a1;
}

_BYTE *sub_1000613BC(_BYTE *a1, _BYTE *a2, int *a3)
{
  v3 = a2;
  *a1 = *a2;
  v5 = a3[5];
  v6 = &a1[v5];
  v7 = &a2[v5];
  *v6 = *&a2[v5];
  *(v6 + 2) = *&a2[v5 + 16];
  *(v6 + 24) = *&a2[v5 + 24];
  v8 = type metadata accessor for TTRNewWidgetViewModel(0);
  v9 = v8[7];
  v10 = sub_1000C0E58();
  (*(*(v10 - 8) + 32))(&v6[v9], &v7[v9], v10);
  *&v6[v8[8]] = *&v7[v8[8]];
  v11 = v8[9];
  v12 = &v6[v11];
  v13 = &v7[v11];
  v14 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v15 = *(v14 - 1);
  if ((*(v15 + 48))(v13, 1, v14))
  {
    v16 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v12, v13, *(*(v16 - 8) + 64));
  }

  else
  {
    v30 = v15;
    v31 = v3;
    v17 = v13[1];
    *v12 = *v13;
    v12[1] = v17;
    v18 = v14[6];
    v19 = sub_1000C0818();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v13 + v18, 1, v19))
    {
      v21 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v12 + v18, v13 + v18, *(*(v21 - 8) + 64));
    }

    else
    {
      (*(v20 + 32))(v12 + v18, v13 + v18, v19);
      (*(v20 + 56))(v12 + v18, 0, 1, v19);
    }

    v22 = v14[7];
    v23 = sub_1000C0938();
    (*(*(v23 - 8) + 32))(v12 + v22, v13 + v22, v23);
    *(v12 + v14[8]) = *(v13 + v14[8]);
    *(v12 + v14[9]) = *(v13 + v14[9]);
    *(v12 + v14[10]) = *(v13 + v14[10]);
    *(v12 + v14[11]) = *(v13 + v14[11]);
    (*(v30 + 56))(v12, 0, 1, v14);
    v3 = v31;
  }

  *&v6[v8[10]] = *&v7[v8[10]];
  *&v6[v8[11]] = *&v7[v8[11]];
  *&v6[v8[12]] = *&v7[v8[12]];
  *&v6[v8[13]] = *&v7[v8[13]];
  *&v6[v8[14]] = *&v7[v8[14]];
  v6[v8[15]] = v7[v8[15]];
  *&v6[v8[16]] = *&v7[v8[16]];
  *&v6[v8[17]] = *&v7[v8[17]];
  v24 = v8[18];
  v25 = sub_1000C0938();
  (*(*(v25 - 8) + 32))(&v6[v24], &v7[v24], v25);
  *&v6[v8[19]] = *&v7[v8[19]];
  v6[v8[20]] = v7[v8[20]];
  v26 = a3[7];
  *&a1[a3[6]] = *&v3[a3[6]];
  v27 = &a1[v26];
  v28 = &v3[v26];
  *v27 = *v28;
  v27[8] = v28[8];
  *&a1[a3[8]] = *&v3[a3[8]];
  return a1;
}

_BYTE *sub_1000617A4(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v3 = a3[5];
  v4 = &a1[v3];
  v5 = &a2[v3];
  v6 = *&a2[v3 + 8];
  *v4 = *&a2[v3];
  *(v4 + 1) = v6;

  *(v4 + 1) = *(v5 + 1);
  *(v4 + 4) = *(v5 + 4);

  v7 = type metadata accessor for TTRNewWidgetViewModel(0);
  v8 = v7[7];
  v9 = sub_1000C0E58();
  (*(*(v9 - 8) + 40))(&v4[v8], &v5[v8], v9);
  v10 = v7[8];
  v11 = &v4[v10];
  v12 = &v5[v10];
  v14 = *v12;
  v13 = v12[1];
  *v11 = v14;
  v11[1] = v13;

  v15 = v7[9];
  v16 = &v4[v15];
  v17 = &v5[v15];
  v18 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v19 = *(v18 - 1);
  v20 = *(v19 + 48);
  v21 = v20(v16, 1, v18);
  v22 = v20(v17, 1, v18);
  if (!v21)
  {
    if (v22)
    {
      sub_100048940(v16, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v29 = *v16;
    *v16 = *v17;

    v30 = *(v16 + 1);
    *(v16 + 1) = *(v17 + 1);

    v31 = v18[6];
    v32 = sub_1000C0818();
    v77 = *(v32 - 8);
    v33 = *(v77 + 48);
    v78 = v33(&v16[v31], 1, v32);
    v34 = v33(&v17[v31], 1, v32);
    if (v78)
    {
      if (!v34)
      {
        (*(v77 + 32))(&v16[v31], &v17[v31], v32);
        (*(v77 + 56))(&v16[v31], 0, 1, v32);
        goto LABEL_18;
      }

      v35 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v36 = &v16[v31];
      v37 = &v17[v31];
    }

    else
    {
      if (!v34)
      {
        (*(v77 + 40))(&v16[v31], &v17[v31], v32);
        goto LABEL_18;
      }

      (*(v77 + 8))(&v16[v31], v32);
      v35 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v36 = &v16[v31];
      v37 = &v17[v31];
    }

    memcpy(v36, v37, v35);
LABEL_18:
    v40 = v18[7];
    v41 = sub_1000C0938();
    (*(*(v41 - 8) + 40))(&v16[v40], &v17[v40], v41);
    v42 = v18[8];
    v43 = *&v16[v42];
    *&v16[v42] = *&v17[v42];

    *&v16[v18[9]] = *&v17[v18[9]];
    v16[v18[10]] = v17[v18[10]];
    v16[v18[11]] = v17[v18[11]];
    goto LABEL_19;
  }

  if (v22)
  {
LABEL_7:
    v28 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v16, v17, *(*(v28 - 8) + 64));
    goto LABEL_19;
  }

  v23 = *(v17 + 1);
  *v16 = *v17;
  *(v16 + 1) = v23;
  v24 = v18[6];
  v25 = sub_1000C0818();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(&v17[v24], 1, v25))
  {
    v27 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v16[v24], &v17[v24], *(*(v27 - 8) + 64));
  }

  else
  {
    (*(v26 + 32))(&v16[v24], &v17[v24], v25);
    (*(v26 + 56))(&v16[v24], 0, 1, v25);
  }

  v38 = v18[7];
  v39 = sub_1000C0938();
  (*(*(v39 - 8) + 32))(&v16[v38], &v17[v38], v39);
  *&v16[v18[8]] = *&v17[v18[8]];
  *&v16[v18[9]] = *&v17[v18[9]];
  v16[v18[10]] = v17[v18[10]];
  v16[v18[11]] = v17[v18[11]];
  (*(v19 + 56))(v16, 0, 1, v18);
LABEL_19:
  v44 = v7[10];
  v45 = *&v4[v44];
  *&v4[v44] = *&v5[v44];

  v46 = v7[11];
  v47 = &v4[v46];
  v48 = &v5[v46];
  v50 = *v48;
  v49 = v48[1];
  *v47 = v50;
  v47[1] = v49;

  v51 = v7[12];
  v52 = *&v4[v51];
  *&v4[v51] = *&v5[v51];

  v53 = v7[13];
  v54 = &v4[v53];
  v55 = &v5[v53];
  v57 = *v55;
  v56 = v55[1];
  *v54 = v57;
  v54[1] = v56;

  v58 = v7[14];
  v59 = &v4[v58];
  v60 = &v5[v58];
  v62 = *v60;
  v61 = v60[1];
  *v59 = v62;
  v59[1] = v61;

  v4[v7[15]] = v5[v7[15]];
  v63 = v7[16];
  v64 = &v4[v63];
  v65 = &v5[v63];
  v67 = *v65;
  v66 = v65[1];
  *v64 = v67;
  v64[1] = v66;

  *&v4[v7[17]] = *&v5[v7[17]];

  v68 = v7[18];
  v69 = sub_1000C0938();
  (*(*(v69 - 8) + 40))(&v4[v68], &v5[v68], v69);
  *&v4[v7[19]] = *&v5[v7[19]];

  v4[v7[20]] = v5[v7[20]];
  v70 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  v71 = &a1[v70];
  v72 = &a2[v70];
  v73 = *v72;
  LOBYTE(v72) = v72[8];
  v74 = *v71;
  v75 = v71[8];
  *v71 = v73;
  v71[8] = v72;
  sub_100048A00(v74, v75);
  *&a1[a3[8]] = *&a2[a3[8]];
  return a1;
}

uint64_t sub_100061E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100061F48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRNewWidgetViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = -a2;
  }

  return result;
}

uint64_t sub_100062008(uint64_t a1)
{
  result = type metadata accessor for TTRNewWidgetViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _s24RemindersWidgetExtension16TTRAnyListWidgetV23DoubleDividerHorizontalVwCP_0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t *assignWithCopy for TTRAnyListWidget.DoubleDividerHorizontal(uint64_t *a1, uint64_t *a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t initializeWithTake for TTRAnyListWidget.DoubleDividerHorizontal(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t *assignWithTake for TTRAnyListWidget.DoubleDividerHorizontal(uint64_t *a1, uint64_t *a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAnyListWidget.DoubleDividerHorizontal(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for TTRAnyListWidget.DoubleDividerHorizontal(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

char *sub_100062238(char *a1, char *a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);

  v4 = type metadata accessor for TTRNewWidgetViewModel(0);
  v5 = v4[7];
  v6 = sub_1000C0E58();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  v7 = v4[8];
  v8 = &a1[v7];
  v9 = &a2[v7];
  *v8 = *v9;
  *(v8 + 1) = *(v9 + 1);

  v10 = v4[9];
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v14 = *(v13 - 1);
  v15 = *(v14 + 48);
  v16 = v15(v11, 1, v13);
  v17 = v15(v12, 1, v13);
  if (!v16)
  {
    if (v17)
    {
      sub_100048940(v11, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v24 = *v12;
    v25 = *v11;
    *v11 = *v12;
    v26 = v24;

    v27 = *(v11 + 1);
    v28 = *(v12 + 1);
    *(v11 + 1) = v28;
    v29 = v28;

    v30 = v13[6];
    v31 = sub_1000C0818();
    v73 = *(v31 - 8);
    v32 = *(v73 + 48);
    v76 = v32(&v11[v30], 1, v31);
    v33 = v32(&v12[v30], 1, v31);
    if (v76)
    {
      if (!v33)
      {
        (*(v73 + 16))(&v11[v30], &v12[v30], v31);
        (*(v73 + 56))(&v11[v30], 0, 1, v31);
        goto LABEL_18;
      }

      v34 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v35 = &v11[v30];
      v36 = &v12[v30];
    }

    else
    {
      if (!v33)
      {
        (*(v73 + 24))(&v11[v30], &v12[v30], v31);
        goto LABEL_18;
      }

      (*(v73 + 8))(&v11[v30], v31);
      v34 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v35 = &v11[v30];
      v36 = &v12[v30];
    }

    memcpy(v35, v36, v34);
LABEL_18:
    v43 = v13[7];
    v44 = sub_1000C0938();
    (*(*(v44 - 8) + 24))(&v11[v43], &v12[v43], v44);
    v45 = v13[8];
    v46 = *&v11[v45];
    v47 = *&v12[v45];
    *&v11[v45] = v47;
    v48 = v47;

    *&v11[v13[9]] = *&v12[v13[9]];
    v11[v13[10]] = v12[v13[10]];
    v11[v13[11]] = v12[v13[11]];
    goto LABEL_19;
  }

  if (v17)
  {
LABEL_7:
    v23 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v11, v12, *(*(v23 - 8) + 64));
    goto LABEL_19;
  }

  v18 = *v12;
  *v11 = *v12;
  v75 = *(v12 + 1);
  *(v11 + 1) = v75;
  v77 = v13[6];
  v19 = sub_1000C0818();
  v72 = *(v19 - 8);
  v74 = *(v72 + 48);
  v20 = v18;
  v21 = v75;
  if (v74(&v12[v77], 1, v19))
  {
    v22 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v11[v77], &v12[v77], *(*(v22 - 8) + 64));
  }

  else
  {
    (*(v72 + 16))(&v11[v77], &v12[v77], v19);
    (*(v72 + 56))(&v11[v77], 0, 1, v19);
  }

  v37 = v13[7];
  v38 = sub_1000C0938();
  (*(*(v38 - 8) + 16))(&v11[v37], &v12[v37], v38);
  v39 = v13[8];
  v40 = *&v12[v39];
  *&v11[v39] = v40;
  *&v11[v13[9]] = *&v12[v13[9]];
  v11[v13[10]] = v12[v13[10]];
  v11[v13[11]] = v12[v13[11]];
  v41 = *(v14 + 56);
  v42 = v40;
  v41(v11, 0, 1, v13);
LABEL_19:
  v49 = v4[10];
  v50 = *&a2[v49];
  v51 = *&a1[v49];
  *&a1[v49] = v50;
  v52 = v50;

  v53 = v4[11];
  v54 = &a1[v53];
  v55 = &a2[v53];
  *v54 = *v55;
  *(v54 + 1) = *(v55 + 1);

  v56 = v4[12];
  v57 = *&a1[v56];
  v58 = *&a2[v56];
  *&a1[v56] = v58;
  v59 = v58;

  v60 = v4[13];
  v61 = &a1[v60];
  v62 = &a2[v60];
  *v61 = *v62;
  *(v61 + 1) = *(v62 + 1);

  v63 = v4[14];
  v64 = &a1[v63];
  v65 = &a2[v63];
  *v64 = *v65;
  *(v64 + 1) = *(v65 + 1);

  a1[v4[15]] = a2[v4[15]];
  v66 = v4[16];
  v67 = &a1[v66];
  v68 = &a2[v66];
  *v67 = *v68;
  *(v67 + 1) = *(v68 + 1);

  *&a1[v4[17]] = *&a2[v4[17]];

  v69 = v4[18];
  v70 = sub_1000C0938();
  (*(*(v70 - 8) + 24))(&a1[v69], &a2[v69], v70);
  *&a1[v4[19]] = *&a2[v4[19]];

  a1[v4[20]] = a2[v4[20]];
  return a1;
}

uint64_t sub_100062960(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  v5 = type metadata accessor for TTRNewWidgetViewModel(0);
  v6 = v5[7];
  v7 = sub_1000C0E58();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  v8 = v5[8];
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v12 = *v10;
  v11 = v10[1];
  *v9 = v12;
  v9[1] = v11;

  v13 = v5[9];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 48);
  v19 = v18(v14, 1, v16);
  v20 = v18(v15, 1, v16);
  if (!v19)
  {
    if (v20)
    {
      sub_100048940(v14, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v27 = *v14;
    *v14 = *v15;

    v28 = *(v14 + 1);
    *(v14 + 1) = *(v15 + 1);

    v29 = v16[6];
    v30 = sub_1000C0818();
    v69 = *(v30 - 8);
    v31 = *(v69 + 48);
    v70 = v31(&v14[v29], 1, v30);
    v32 = v31(&v15[v29], 1, v30);
    if (v70)
    {
      if (!v32)
      {
        (*(v69 + 32))(&v14[v29], &v15[v29], v30);
        (*(v69 + 56))(&v14[v29], 0, 1, v30);
        goto LABEL_18;
      }

      v33 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v34 = &v14[v29];
      v35 = &v15[v29];
    }

    else
    {
      if (!v32)
      {
        (*(v69 + 40))(&v14[v29], &v15[v29], v30);
        goto LABEL_18;
      }

      (*(v69 + 8))(&v14[v29], v30);
      v33 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v34 = &v14[v29];
      v35 = &v15[v29];
    }

    memcpy(v34, v35, v33);
LABEL_18:
    v38 = v16[7];
    v39 = sub_1000C0938();
    (*(*(v39 - 8) + 40))(&v14[v38], &v15[v38], v39);
    v40 = v16[8];
    v41 = *&v14[v40];
    *&v14[v40] = *&v15[v40];

    *&v14[v16[9]] = *&v15[v16[9]];
    v14[v16[10]] = v15[v16[10]];
    v14[v16[11]] = v15[v16[11]];
    goto LABEL_19;
  }

  if (v20)
  {
LABEL_7:
    v26 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v14, v15, *(*(v26 - 8) + 64));
    goto LABEL_19;
  }

  v21 = *(v15 + 1);
  *v14 = *v15;
  *(v14 + 1) = v21;
  v22 = v16[6];
  v23 = sub_1000C0818();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(&v15[v22], 1, v23))
  {
    v25 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v14[v22], &v15[v22], *(*(v25 - 8) + 64));
  }

  else
  {
    (*(v24 + 32))(&v14[v22], &v15[v22], v23);
    (*(v24 + 56))(&v14[v22], 0, 1, v23);
  }

  v36 = v16[7];
  v37 = sub_1000C0938();
  (*(*(v37 - 8) + 32))(&v14[v36], &v15[v36], v37);
  *&v14[v16[8]] = *&v15[v16[8]];
  *&v14[v16[9]] = *&v15[v16[9]];
  v14[v16[10]] = v15[v16[10]];
  v14[v16[11]] = v15[v16[11]];
  (*(v17 + 56))(v14, 0, 1, v16);
LABEL_19:
  v42 = v5[10];
  v43 = *(a1 + v42);
  *(a1 + v42) = *(a2 + v42);

  v44 = v5[11];
  v45 = (a1 + v44);
  v46 = (a2 + v44);
  v48 = *v46;
  v47 = v46[1];
  *v45 = v48;
  v45[1] = v47;

  v49 = v5[12];
  v50 = *(a1 + v49);
  *(a1 + v49) = *(a2 + v49);

  v51 = v5[13];
  v52 = (a1 + v51);
  v53 = (a2 + v51);
  v55 = *v53;
  v54 = v53[1];
  *v52 = v55;
  v52[1] = v54;

  v56 = v5[14];
  v57 = (a1 + v56);
  v58 = (a2 + v56);
  v60 = *v58;
  v59 = v58[1];
  *v57 = v60;
  v57[1] = v59;

  *(a1 + v5[15]) = *(a2 + v5[15]);
  v61 = v5[16];
  v62 = (a1 + v61);
  v63 = (a2 + v61);
  v65 = *v63;
  v64 = v63[1];
  *v62 = v65;
  v62[1] = v64;

  *(a1 + v5[17]) = *(a2 + v5[17]);

  v66 = v5[18];
  v67 = sub_1000C0938();
  (*(*(v67 - 8) + 40))(a1 + v66, a2 + v66, v67);
  *(a1 + v5[19]) = *(a2 + v5[19]);

  *(a1 + v5[20]) = *(a2 + v5[20]);
  return a1;
}

uint64_t sub_100063038(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = v5 + ((v4 + 16) & ~v4);
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    v7 = *(a3 + 24);

    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = sub_1000C2338();
      (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
    }

    else
    {
      *(a1 + v7) = *(a2 + v7);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_100063158(char *a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1000C2338();
    v6 = *(*(v5 - 8) + 8);

    return v6(&a1[v4], v5);
  }

  else
  {
  }
}

uint64_t sub_100063214(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 24);

  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000C2338();
    (*(*(v6 - 8) + 16))(a1 + v5, a2 + v5, v6);
  }

  else
  {
    *(a1 + v5) = *(a2 + v5);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t *sub_1000632E8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    v6 = *(a3 + 24);
    sub_1000084C0(a1 + v6, &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_1000C2338();
      (*(*(v7 - 8) + 16))(a1 + v6, a2 + v6, v7);
    }

    else
    {
      *(a1 + v6) = *(a2 + v6);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1000633F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 24);
  v6 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1000C2338();
    (*(*(v7 - 8) + 32))(a1 + v5, a2 + v5, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v5), (a2 + v5), *(*(v6 - 8) + 64));
  }

  return a1;
}

uint64_t *sub_1000634D4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    v6 = *(a3 + 24);
    sub_1000084C0(a1 + v6, &qword_1000EDDC0, &qword_1000C5B60);
    v7 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = sub_1000C2338();
      (*(*(v8 - 8) + 32))(a1 + v6, a2 + v6, v8);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1 + v6, a2 + v6, *(*(v7 - 8) + 64));
    }
  }

  return a1;
}

uint64_t sub_1000635FC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000636CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10006377C(uint64_t a1)
{
  sub_10005435C(319, &unk_1000EDE48, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t sub_100063840()
{
  result = qword_1000EF350;
  if (!qword_1000EF350)
  {
    sub_100005334(&qword_1000EEB98, &qword_1000C6C98);
    sub_1000638CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF350);
  }

  return result;
}

unint64_t sub_1000638CC()
{
  result = qword_1000EF358;
  if (!qword_1000EF358)
  {
    sub_100005334(&qword_1000EEB78, &qword_1000C6C60);
    sub_100005334(&qword_1000EEB68, &qword_1000C6C50);
    sub_10005AD18();
    swift_getOpaqueTypeConformance2();
    sub_100008478(&qword_1000EEC20, &qword_1000EEC28, &qword_1000C6CF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF358);
  }

  return result;
}

uint64_t sub_100063A20(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_100005334(a2, a3);
  sub_100008478(a4, a2, a3, a5);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100063AB0()
{
  result = qword_1000EF360;
  if (!qword_1000EF360)
  {
    sub_100005334(&qword_1000EF368, &qword_1000C7098);
    sub_100063B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF360);
  }

  return result;
}

unint64_t sub_100063B34()
{
  result = qword_1000EF370;
  if (!qword_1000EF370)
  {
    sub_100005334(&qword_1000EF378, &qword_1000C70A0);
    sub_10005C39C();
    sub_100048784(&qword_1000EEE18, type metadata accessor for TTRAnyListWidget.ListBadge.IconBackground, &unk_1000C7280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF370);
  }

  return result;
}

uint64_t sub_100063C2C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_100005334(a2, a3);
  a4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100063C90()
{
  result = qword_1000EF380;
  if (!qword_1000EF380)
  {
    sub_100005334(&qword_1000EEF18, &qword_1000C6F80);
    sub_100063D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF380);
  }

  return result;
}

unint64_t sub_100063D1C()
{
  result = qword_1000EF388;
  if (!qword_1000EF388)
  {
    sub_100005334(&qword_1000EEF08, &qword_1000C6F70);
    sub_100005334(&qword_1000EEEE8, &qword_1000C6F60);
    sub_100005334(&qword_1000EEEF0, &qword_1000C6F68);
    sub_100008478(&qword_1000EEEF8, &qword_1000EEEE8, &qword_1000C6F60, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_10005CBE4();
    swift_getOpaqueTypeConformance2();
    sub_100008478(&qword_1000EF390, &qword_1000EEF10, &qword_1000C6F78, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF388);
  }

  return result;
}

unint64_t sub_100063E74()
{
  result = qword_1000EF398;
  if (!qword_1000EF398)
  {
    sub_100005334(&qword_1000EF3A0, &qword_1000C70A8);
    sub_100063F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF398);
  }

  return result;
}

unint64_t sub_100063F00()
{
  result = qword_1000EF3A8;
  if (!qword_1000EF3A8)
  {
    sub_100005334(&qword_1000EF3B0, &qword_1000C70B0);
    sub_100063F8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF3A8);
  }

  return result;
}

unint64_t sub_100063F8C()
{
  result = qword_1000EF3B8;
  if (!qword_1000EF3B8)
  {
    sub_100005334(&qword_1000EF3C0, &qword_1000C70B8);
    sub_100064044();
    sub_100008478(&qword_1000EF3D8, &qword_1000EEF20, &qword_1000C6F88, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF3B8);
  }

  return result;
}

unint64_t sub_100064044()
{
  result = qword_1000EF3C8;
  if (!qword_1000EF3C8)
  {
    sub_100005334(&qword_1000EF3D0, qword_1000C70C0);
    sub_100008478(&qword_1000EEEF8, &qword_1000EEEE8, &qword_1000C6F60, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_100008478(&qword_1000EF3D8, &qword_1000EEF20, &qword_1000C6F88, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF3C8);
  }

  return result;
}

unint64_t sub_100064180()
{
  result = qword_1000EF3E0;
  if (!qword_1000EF3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF3E0);
  }

  return result;
}

unint64_t sub_1000641D8()
{
  result = qword_1000EF3E8;
  if (!qword_1000EF3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF3E8);
  }

  return result;
}

unint64_t sub_1000642E4()
{
  result = qword_1000EF470;
  if (!qword_1000EF470)
  {
    sub_100005334(&qword_1000EF460, &qword_1000C7578);
    sub_100064370();
    sub_10006445C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF470);
  }

  return result;
}

unint64_t sub_100064370()
{
  result = qword_1000EF478;
  if (!qword_1000EF478)
  {
    sub_100005334(&qword_1000EF468, &qword_1000C7580);
    sub_100048784(&qword_1000EEC18, type metadata accessor for TTRAnyListWidget.InteractiveNoRemindersView, &unk_1000C7480);
    sub_100048784(&qword_1000EE370, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF478);
  }

  return result;
}

unint64_t sub_10006445C()
{
  result = qword_1000EF480;
  if (!qword_1000EF480)
  {
    sub_100005334(&qword_1000EF448, &qword_1000C7560);
    sub_100008478(&qword_1000EF488, &qword_1000EF490, &qword_1000C7588, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_100008478(&qword_1000EF498, &qword_1000EF4A0, &qword_1000C7590, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF480);
  }

  return result;
}

unint64_t sub_100064540()
{
  result = qword_1000EF4A8;
  if (!qword_1000EF4A8)
  {
    sub_100005334(&qword_1000EF440, &qword_1000C7558);
    sub_100008478(&qword_1000EEC38, &qword_1000EEC40, &qword_1000C6CF8, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_100008478(&qword_1000EF4B0, &qword_1000EF4B8, &qword_1000C7598, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF4A8);
  }

  return result;
}

void sub_10006462C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_10006467C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void *sub_1000646EC@<X0>(uint64_t (*a1)(void)@<X3>, void *a3@<X8>)
{
  a1();
  result = sub_1000C1948();
  *a3 = v5;
  return result;
}

unint64_t sub_10006477C()
{
  result = qword_1000EF4E0;
  if (!qword_1000EF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF4E0);
  }

  return result;
}

uint64_t sub_1000647D0()
{
  v1 = type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;
  v6 = v0 + v3 + *(v1 + 20);

  v7 = type metadata accessor for TTRNewWidgetViewModel(0);
  v8 = v7[7];
  v9 = sub_1000C0E58();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);

  v10 = (v6 + v7[9]);
  v11 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
  {
    v20 = v0 + v3;
    v21 = v4;

    v12 = v11[6];
    v13 = sub_1000C0818();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v10 + v12, 1, v13))
    {
      (*(v14 + 8))(v10 + v12, v13);
    }

    v15 = v11[7];
    v16 = sub_1000C0938();
    (*(*(v16 - 8) + 8))(v10 + v15, v16);

    v4 = v21;
    v3 = (v2 + 32) & ~v2;
    v5 = v20;
  }

  v17 = v7[18];
  v18 = sub_1000C0938();
  (*(*(v18 - 8) + 8))(v6 + v17, v18);

  sub_100048A00(*(v5 + *(v1 + 28)), *(v5 + *(v1 + 28) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100064AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView(0) - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_10003A8E8(a1, a2, v8, v9, v10, a3);
}

uint64_t sub_100064B7C(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_100004D04(&qword_1000EEC80, &qword_1000C6D70);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_100064BEC()
{
  result = qword_1000EF568;
  if (!qword_1000EF568)
  {
    sub_100005334(&qword_1000EF560, &qword_1000C7678);
    sub_100008478(&qword_1000EEEF8, &qword_1000EEEE8, &qword_1000C6F60, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_100008478(&qword_1000EF570, &qword_1000EF578, &qword_1000C7680, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF568);
  }

  return result;
}

unint64_t sub_100064CD0()
{
  result = qword_1000EF588;
  if (!qword_1000EF588)
  {
    sub_100005334(&qword_1000EF558, &qword_1000C7670);
    sub_100005334(&qword_1000EEEE8, &qword_1000C6F60);
    sub_100005334(&qword_1000EF560, &qword_1000C7678);
    sub_100008478(&qword_1000EEEF8, &qword_1000EEEE8, &qword_1000C6F60, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_100064BEC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF588);
  }

  return result;
}

unint64_t sub_100064DF8()
{
  result = qword_1000EF590;
  if (!qword_1000EF590)
  {
    sub_100005334(&qword_1000EF580, &qword_1000C7688);
    sub_100005334(&qword_1000EF558, &qword_1000C7670);
    sub_100064CD0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF590);
  }

  return result;
}

unint64_t sub_100064EC0()
{
  result = qword_1000EF5B8;
  if (!qword_1000EF5B8)
  {
    sub_100005334(&qword_1000EF5A8, &qword_1000C76A0);
    sub_100008478(&qword_1000EEEF8, &qword_1000EEEE8, &qword_1000C6F60, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF5B8);
  }

  return result;
}

unint64_t sub_100064F78()
{
  result = qword_1000EF5C0;
  if (!qword_1000EF5C0)
  {
    sub_100005334(&qword_1000EF5B0, &qword_1000C76A8);
    sub_100005334(&qword_1000EF5A8, &qword_1000C76A0);
    sub_100064EC0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF5C0);
  }

  return result;
}

void *sub_100065040(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, double *a6, double a7)
{
  v79 = a6;
  v74 = a4;
  v72 = *&a3;
  v75 = a1;
  v85 = sub_100004D04(&qword_1000EF5F8, &qword_1000C76D0);
  __chkstk_darwin(v85);
  v78 = (v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v76 = v69 - v12;
  __chkstk_darwin(v13);
  v84 = v69 - v14;
  __chkstk_darwin(v15);
  v81 = v69 - v16;
  v17 = sub_100004D04(&qword_1000EF600, &qword_1000C76D8);
  __chkstk_darwin(v17 - 8);
  v19 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v69 - v21;
  v23 = sub_1000C1668();
  v24 = *(v23 - 8);
  v70 = *(v24 + 16);
  v69[1] = v24 + 16;
  v70(v22, a5, v23);
  v25 = sub_100048784(&qword_1000EF5F0, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  v26 = sub_1000C28A8();
  v82 = v25;
  v83 = v23;
  v77 = v19;
  v73 = a2;
  if (v26)
  {
    v27 = v26;
    v88 = _swiftEmptyArrayStorage;
    sub_1000BA428(0, v26 & ~(v26 >> 63), 0);
    v28 = v88;
    result = sub_1000C2898();
    if (v27 < 0)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v71 = a5;
    v30 = 0;
    v31 = v86[0];
    v80 = v27;
    while (1)
    {
      v32 = *(v85 + 48);
      v87 = v31;
      result = sub_1000C2898();
      if (v31 < v86[0])
      {
        break;
      }

      result = sub_1000C28D8();
      if (v31 >= v86[0])
      {
        goto LABEL_37;
      }

      v33 = v28;
      v34 = sub_1000C28F8();
      v36 = v35;
      v37 = sub_1000C1648();
      v38 = *(v37 - 8);
      v39 = v81;
      (*(v38 + 16))(&v81[v32], v36, v37);
      v34(v86, 0);
      v41 = v84;
      v40 = v85;
      *v84 = v30;
      (*(v38 + 32))(&v41[*(v40 + 48)], &v39[v32], v37);
      LOBYTE(v86[0]) = 0;
      LOBYTE(v87) = 1;
      sub_1000C1628();
      v43 = v42;
      if ((v30 & 1) == 0 && v42 < *v79)
      {
        v43 = *v79;
      }

      sub_1000084C0(v84, &qword_1000EF5F8, &qword_1000C76D0);
      v28 = v33;
      v88 = v33;
      v45 = v33[2];
      v44 = v33[3];
      if (v45 >= v44 >> 1)
      {
        sub_1000BA428((v44 > 1), v45 + 1, 1);
        v28 = v88;
      }

      ++v30;
      v28[2] = v45 + 1;
      *&v28[v45 + 4] = v43;
      v87 = v31;
      v23 = v83;
      sub_1000C28B8();
      v31 = v86[0];
      if (v80 == v30)
      {
        sub_1000084C0(v22, &qword_1000EF600, &qword_1000C76D8);
        a5 = v71;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1000084C0(v22, &qword_1000EF600, &qword_1000C76D8);
  v28 = _swiftEmptyArrayStorage;
LABEL_14:
  v88 = v28;
  sub_100004D04(&qword_1000EF608, &qword_1000C76E0);
  sub_100008478(&qword_1000EF610, &qword_1000EF608, &qword_1000C76E0, &protocol conformance descriptor for [A]);
  sub_10006590C();
  sub_1000C2768();
  v46 = *v86;
  sub_1000C2898();
  sub_1000C28D8();
  result = sub_1000C28C8();
  if (__OFSUB__(result, 1))
  {
    goto LABEL_41;
  }

  if (v74)
  {
    return v28;
  }

  if (v73)
  {
    return v28;
  }

  v48 = v72;
  if (v72 == INFINITY)
  {
    return v28;
  }

  v49 = v46 + (result - 1) * a7;
  if (v49 >= v72)
  {
    return v28;
  }

  v50 = v77;
  v70(v77, a5, v23);
  v51 = sub_1000C28A8();
  if (!v51)
  {

    sub_1000084C0(v50, &qword_1000EF600, &qword_1000C76D8);
    return _swiftEmptyArrayStorage;
  }

  v52 = v51;
  v88 = _swiftEmptyArrayStorage;
  sub_1000BA428(0, v51 & ~(v51 >> 63), 0);
  v47 = v88;
  result = sub_1000C2898();
  if ((v52 & 0x8000000000000000) == 0)
  {
    v53 = 0;
    v54 = v48 - v49;
    v55 = v86[0];
    v84 = v52;
    while (1)
    {
      v56 = *(v85 + 48);
      v87 = v55;
      result = sub_1000C2898();
      if (v55 < v86[0])
      {
        break;
      }

      result = sub_1000C28D8();
      if (v55 >= v86[0])
      {
        goto LABEL_39;
      }

      v57 = sub_1000C28F8();
      v59 = v58;
      v60 = sub_1000C1648();
      v61 = *(v60 - 8);
      v62 = v76;
      (*(v61 + 16))(&v76[v56], v59, v60);
      v57(v86, 0);
      v63 = v78;
      *v78 = v53;
      result = (*(v61 + 32))(&v63[*(v85 + 48)], &v62[v56], v60);
      if (v53 >= v28[2])
      {
        goto LABEL_40;
      }

      v64 = *&v28[v53 + 4];
      if ((v53 & 1) == 0 && v54 > 0.0)
      {
        LOBYTE(v86[0]) = 0;
        LOBYTE(v87) = 0;
        sub_1000C1628();
        if (v65 - v64 <= v54)
        {
          v54 = v54 - (v65 - v64);
          v64 = v65;
        }
      }

      sub_1000084C0(v78, &qword_1000EF5F8, &qword_1000C76D0);
      v88 = v47;
      v67 = v47[2];
      v66 = v47[3];
      if (v67 >= v66 >> 1)
      {
        sub_1000BA428((v66 > 1), v67 + 1, 1);
        v47 = v88;
      }

      ++v53;
      v47[2] = v67 + 1;
      *&v47[v67 + 4] = v64;
      v87 = v55;
      v68 = v77;
      sub_1000C28B8();
      v55 = v86[0];
      if (v84 == v53)
      {

        sub_1000084C0(v68, &qword_1000EF600, &qword_1000C76D8);
        return v47;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_43:
  __break(1u);
  return result;
}

unint64_t sub_10006590C()
{
  result = qword_1000EF618;
  if (!qword_1000EF618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF618);
  }

  return result;
}

unint64_t sub_100065A28()
{
  result = qword_1000EF648;
  if (!qword_1000EF648)
  {
    sub_100005334(&qword_1000EF620, &qword_1000C76E8);
    sub_100065AE0();
    sub_100008478(&qword_1000EF670, &qword_1000EF678, &qword_1000C7778, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF648);
  }

  return result;
}

unint64_t sub_100065AE0()
{
  result = qword_1000EF650;
  if (!qword_1000EF650)
  {
    sub_100005334(&qword_1000EF638, &qword_1000C7768);
    sub_100065B98();
    sub_100008478(&qword_1000EF668, &qword_1000EF640, &qword_1000C7770, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF650);
  }

  return result;
}

unint64_t sub_100065B98()
{
  result = qword_1000EF658;
  if (!qword_1000EF658)
  {
    sub_100005334(&qword_1000EF628, &qword_1000C76F8);
    swift_getOpaqueTypeConformance2();
    sub_100008478(&qword_1000EF660, &qword_1000EF630, &qword_1000C7700, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF658);
  }

  return result;
}

unint64_t sub_100065C80()
{
  result = qword_1000EF698;
  if (!qword_1000EF698)
  {
    sub_100005334(&qword_1000EF690, &qword_1000C7790);
    sub_100065D38();
    sub_100008478(&qword_1000ED7B8, &qword_1000ED7C0, &unk_1000C5580, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF698);
  }

  return result;
}

unint64_t sub_100065D38()
{
  result = qword_1000EF6A0;
  if (!qword_1000EF6A0)
  {
    sub_100005334(&qword_1000EF6A8, &qword_1000C7798);
    sub_10001C624();
    sub_100008478(&qword_1000ED7A8, &qword_1000ED7B0, &qword_1000C62E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF6A0);
  }

  return result;
}

uint64_t destroy for TTRAnyListWidget.InteractiveListShareeRowView(void *a1)
{
}

uint64_t initializeWithCopy for TTRAnyListWidget.InteractiveListShareeRowView(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return a1;
}

uint64_t assignWithCopy for TTRAnyListWidget.InteractiveListShareeRowView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  return a1;
}

__n128 initializeWithTake for TTRAnyListWidget.InteractiveListShareeRowView(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for TTRAnyListWidget.InteractiveListShareeRowView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAnyListWidget.InteractiveListShareeRowView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TTRAnyListWidget.InteractiveListShareeRowView(uint64_t result, int a2, int a3)
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

unint64_t sub_100066058()
{
  result = qword_1000EF6B0;
  if (!qword_1000EF6B0)
  {
    sub_100005334(&qword_1000EF6B8, &qword_1000C77F8);
    sub_100008478(&qword_1000EF6C0, &qword_1000EF6C8, &qword_1000C7800, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF6B0);
  }

  return result;
}

unint64_t sub_100066114()
{
  result = qword_1000EF6D0;
  if (!qword_1000EF6D0)
  {
    sub_100005334(&qword_1000EF408, &unk_1000C7520);
    sub_100005334(&qword_1000EF3F0, &qword_1000C7508);
    sub_100008478(&qword_1000EF410, &qword_1000EF3F0, &qword_1000C7508, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100048784(&qword_1000EE370, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF6D0);
  }

  return result;
}

unint64_t sub_100066288()
{
  result = qword_1000EF6E8;
  if (!qword_1000EF6E8)
  {
    sub_100005334(&qword_1000EF508, &qword_1000C7628);
    sub_100066314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF6E8);
  }

  return result;
}

unint64_t sub_100066314()
{
  result = qword_1000EF6F0;
  if (!qword_1000EF6F0)
  {
    sub_100005334(&qword_1000EF518, &qword_1000C7638);
    sub_100005334(&qword_1000EF4F8, &qword_1000C7618);
    sub_100008478(&qword_1000EF520, &qword_1000EF4F8, &qword_1000C7618, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100048784(&qword_1000EE370, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF6F0);
  }

  return result;
}

uint64_t sub_100066440()
{
  sub_100005334(&qword_1000EF558, &qword_1000C7670);
  sub_100005334(&qword_1000EF580, &qword_1000C7688);
  sub_100064CD0();
  sub_100064DF8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000664D0()
{
  sub_100005334(&qword_1000EF5A8, &qword_1000C76A0);
  sub_100005334(&qword_1000EF5B0, &qword_1000C76A8);
  sub_100064EC0();
  sub_100064F78();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000665A0()
{
  result = qword_1000EF6F8;
  if (!qword_1000EF6F8)
  {
    sub_100005334(&qword_1000EF700, &qword_1000C7810);
    sub_100005334(&qword_1000EF680, &qword_1000C7780);
    sub_100005334(&qword_1000EF690, &qword_1000C7790);
    sub_100065C80();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100048784(&qword_1000EE370, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF6F8);
  }

  return result;
}

unint64_t sub_1000666E0()
{
  result = qword_1000EF708;
  if (!qword_1000EF708)
  {
    sub_100005334(&qword_1000EF710, &qword_1000C7818);
    sub_10006676C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF708);
  }

  return result;
}

unint64_t sub_10006676C()
{
  result = qword_1000EF718;
  if (!qword_1000EF718)
  {
    sub_100005334(&qword_1000EF720, &qword_1000C7820);
    sub_100008478(&qword_1000EF728, &qword_1000EF730, &qword_1000C7828, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF718);
  }

  return result;
}

unint64_t sub_100066828()
{
  result = qword_1000EF738;
  if (!qword_1000EF738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF738);
  }

  return result;
}

void *sub_1000668B8(uint64_t a1, double (*a2)(uint64_t, double), uint64_t a3)
{
  v68 = a2;
  v69 = a3;
  v71 = sub_1000C1648();
  v56 = *(v71 - 8);
  __chkstk_darwin(v71);
  v63 = (v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v59 = v55 - v6;
  v67 = sub_100004D04(&qword_1000EF5C8, &qword_1000C76B0);
  __chkstk_darwin(v67);
  v62 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v58 = v55 - v9;
  __chkstk_darwin(v10);
  v57 = v55 - v11;
  v12 = sub_1000C1668();
  v70 = *(v12 - 8);
  __chkstk_darwin(v12);
  v66 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100004D04(&qword_1000EF5D0, &qword_1000C76B8);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v65 = v55 - v16;
  v17 = sub_100004D04(&qword_1000EF5D8, &qword_1000C76C0);
  __chkstk_darwin(v17);
  v19 = v55 - v18;
  v64 = sub_100048784(&qword_1000EF5E0, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  v20 = sub_1000C2778();
  v21 = v20;
  if (*(*(a1 + *(v15 + 60)) + 16) >= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = *(*(a1 + *(v15 + 60)) + 16);
  }

  v73 = _swiftEmptyArrayStorage;
  sub_1000BA428(0, v22 & ~(v22 >> 63), 0);
  v23 = v73;
  v24 = v65;
  sub_1000082B4(a1, v65, &qword_1000EF5D0, &qword_1000C76B8);
  (*(v70 + 32))(v66, v24, v12);
  sub_1000C2728();
  v25 = *(v24 + *(v15 + 60));
  v55[0] = v17;
  v26 = &v19[*(v17 + 52)];
  v70 = v25;
  *v26 = v25;
  *(v26 + 1) = 0;
  v66 = v26;
  if (v21 < 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    result = (*(v56 + 8))(v17, v71);
LABEL_27:
    __break(1u);
    return result;
  }

  v64 = v22;
  v65 = v12;
  if (v22)
  {
    v27 = *(sub_100004D04(&qword_1000EF5E8, &qword_1000C76C8) + 36);
    v60 = v70 + 32;
    v61 = (v56 + 16);
    v28 = (v56 + 32);
    sub_100048784(&qword_1000EF5F0, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
    v29 = 0;
    do
    {
      result = sub_1000C28D8();
      if (*&v19[v27] == v72[0])
      {
        goto LABEL_27;
      }

      v31 = sub_1000C28F8();
      v17 = v63;
      (*v61)(v63);
      v31(v72, 0);
      sub_1000C28E8();
      v32 = *(v70 + 16);
      if (v29 == v32)
      {
        goto LABEL_26;
      }

      if (v29 >= v32)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v33 = v29 + 1;
      v34 = *(v60 + 8 * v29);
      v35 = v67;
      *(v66 + 1) = v29 + 1;
      v36 = *(v35 + 48);
      v37 = v62;
      (*v28)(v62, v17, v71);
      *(v37 + v36) = v34;
      v38 = v68(v37, v34);
      sub_1000084C0(v37, &qword_1000EF5C8, &qword_1000C76B0);
      v73 = v23;
      v40 = v23[2];
      v39 = v23[3];
      if (v40 >= v39 >> 1)
      {
        sub_1000BA428((v39 > 1), v40 + 1, 1);
        v23 = v73;
      }

      v23[2] = v40 + 1;
      *&v23[v40 + 4] = v38;
      v29 = v33;
    }

    while (v64 != v33);
  }

  v17 = *(sub_100004D04(&qword_1000EF5E8, &qword_1000C76C8) + 36);
  sub_100048784(&qword_1000EF5F0, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_1000C28D8();
  if (*&v19[v17] != v72[0])
  {
    v62 = (v70 + 32);
    v63 = (v56 + 16);
    v61 = (v56 + 32);
    v41 = v64;
    while (1)
    {
      v42 = sub_1000C28F8();
      v43 = v59;
      (*v63)(v59);
      v42(v72, 0);
      sub_1000C28E8();
      v44 = *(v70 + 16);
      if (v41 == v44)
      {
        break;
      }

      if (v41 >= v44)
      {
        goto LABEL_24;
      }

      v45 = v41 + 1;
      v46 = v61;
      v47 = *&v62[8 * v41];
      v48 = v67;
      *(v66 + 1) = v41 + 1;
      v49 = *(v48 + 48);
      v50 = v58;
      (*v46)(v58, v43, v71);
      *(v50 + v49) = v47;
      v51 = v57;
      sub_10001DA60(v50, v57, &qword_1000EF5C8, &qword_1000C76B0);
      v52 = v68(v51, *(v51 + *(v48 + 48)));
      sub_1000084C0(v51, &qword_1000EF5C8, &qword_1000C76B0);
      v73 = v23;
      v54 = v23[2];
      v53 = v23[3];
      if (v54 >= v53 >> 1)
      {
        sub_1000BA428((v53 > 1), v54 + 1, 1);
        v23 = v73;
      }

      v23[2] = v54 + 1;
      *&v23[v54 + 4] = v52;
      sub_1000C28D8();
      v41 = v45;
      if (*&v19[v17] == v72[0])
      {
        goto LABEL_22;
      }
    }

    (*(v56 + 8))(v43, v71);
  }

LABEL_22:
  v19[*(v55[0] + 56)] = 1;
  sub_1000084C0(v19, &qword_1000EF5D8, &qword_1000C76C0);
  return v23;
}

void *sub_1000670E4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, double a6)
{
  v38 = a3;
  v35 = a1;
  v33 = sub_100004D04(&qword_1000EF5D0, &qword_1000C76B8);
  __chkstk_darwin(v33);
  v34 = &v33 - v10;
  v41 = sub_1000C1648();
  v11 = *(v41 - 8);
  __chkstk_darwin(v41);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C1668();
  v15 = sub_100048784(&qword_1000EF5F0, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  v16 = sub_1000C28A8();
  v17 = _swiftEmptyArrayStorage;
  v39 = v15;
  if (v16)
  {
    v18 = v16;
    v44 = _swiftEmptyArrayStorage;
    sub_1000BA428(0, v16 & ~(v16 >> 63), 0);
    v17 = v44;
    result = sub_1000C2898();
    if (v18 < 0)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v36 = a4;
    v37 = a2;
    v40 = (v11 + 16);
    v20 = (v11 + 8);
    do
    {
      v21 = sub_1000C28F8();
      v22 = v41;
      (*v40)(v13);
      v21(v43, 0);
      LOBYTE(v43[0]) = 0;
      v42 = 1;
      sub_1000C1628();
      v24 = v23;
      (*v20)(v13, v22);
      v44 = v17;
      v25 = a5;
      v27 = v17[2];
      v26 = v17[3];
      if (v27 >= v26 >> 1)
      {
        sub_1000BA428((v26 > 1), v27 + 1, 1);
        v17 = v44;
      }

      v17[2] = v27 + 1;
      v17[v27 + 4] = v24;
      sub_1000C28E8();
      --v18;
      a5 = v25;
    }

    while (v18);
    v28 = *&v38;
    LOBYTE(a4) = v36;
    LOBYTE(a2) = v37;
  }

  else
  {
    v28 = *&v38;
  }

  v44 = v17;
  sub_100004D04(&qword_1000EF608, &qword_1000C76E0);
  sub_100008478(&qword_1000EF610, &qword_1000EF608, &qword_1000C76E0, &protocol conformance descriptor for [A]);
  sub_10006590C();
  sub_1000C2768();
  v29 = v43[0];
  sub_1000C2898();
  sub_1000C28D8();
  result = sub_1000C28C8();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((a4 & 1) == 0 && (a2 & 1) == 0 && v28 != INFINITY)
  {
    v30 = v29 + (result - 1) * a6;
    if (v30 < v28)
    {
      v43[0] = v28 - v30;
      v31 = v34;
      v32 = (*(*(v14 - 8) + 16))(v34, a5, v14);
      *(v31 + *(v33 + 52)) = v17;
      __chkstk_darwin(v32);
      *(&v33 - 2) = v35;
      *(&v33 - 1) = v43;
      v17 = sub_1000668B8(v31, sub_100067584, (&v33 - 4));
      sub_1000084C0(v31, &qword_1000EF5D0, &qword_1000C76B8);
    }
  }

  return v17;
}

char *sub_100067590(char *a1, char *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = (v5 + ((v4 + 16) & ~v4));
  }

  else
  {
    v8 = a3[5];

    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = sub_1000C2338();
      (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
    }

    else
    {
      *&a1[v8] = *&a2[v8];
    }

    swift_storeEnumTagMultiPayload();
    v10 = a3[7];
    *&a1[a3[6]] = *&a2[a3[6]];
    *&a1[v10] = *&a2[v10];
  }

  return a1;
}

uint64_t sub_1000676D8(char *a1, uint64_t a2, void (*a3)(void))
{
  a3(*a1);
  v5 = *(a2 + 20);
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000C2338();
    v7 = *(*(v6 - 8) + 8);

    return v7(&a1[v5], v6);
  }

  else
  {
  }
}

char *sub_100067798(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];

  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1000C2338();
    (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
  }

  else
  {
    *&a1[v6] = *&a2[v6];
  }

  swift_storeEnumTagMultiPayload();
  v8 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v8] = *&a2[v8];
  return a1;
}

char *sub_100067884(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  if (a1 != a2)
  {
    v6 = a3[5];
    sub_1000084C0(&a1[v6], &qword_1000EDDC0, &qword_1000C5B60);
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_1000C2338();
      (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
    }

    else
    {
      *&a1[v6] = *&a2[v6];
    }

    swift_storeEnumTagMultiPayload();
  }

  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

char *sub_1000679A0(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1000C2338();
    (*(*(v8 - 8) + 32))(&a1[v6], &a2[v6], v8);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v6], &a2[v6], *(*(v7 - 8) + 64));
  }

  v9 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v9] = *&a2[v9];
  return a1;
}

char *sub_100067A98(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  if (a1 != a2)
  {
    v6 = a3[5];
    sub_1000084C0(&a1[v6], &qword_1000EDDC0, &qword_1000C5B60);
    v7 = sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = sub_1000C2338();
      (*(*(v8 - 8) + 32))(&a1[v6], &a2[v6], v8);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v6], &a2[v6], *(*(v7 - 8) + 64));
    }
  }

  v9 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v9] = *&a2[v9];
  return a1;
}

uint64_t sub_100067BCC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100067C9C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100004D04(&qword_1000EDDD0, &unk_1000C5B70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100067D4C(uint64_t a1)
{
  sub_10005435C(319, &unk_1000EDE48, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t sub_100067E28()
{
  result = qword_1000EF808;
  if (!qword_1000EF808)
  {
    sub_100005334(&qword_1000EF810, qword_1000C79C8);
    sub_100005334(&qword_1000EF740, &qword_1000C7980);
    sub_100008478(&qword_1000EF758, &qword_1000EF740, &qword_1000C7980, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100048784(&qword_1000EE370, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF808);
  }

  return result;
}

uint64_t sub_100067F70()
{
  v1 = (type metadata accessor for TTRAnyListWidget.ListShareeBadgesView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000C2338();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10006808C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TTRAnyListWidget.ListShareeBadgesView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_100033CB0(a1, v6, a2);
}

unint64_t sub_10006810C()
{
  result = qword_1000EF838;
  if (!qword_1000EF838)
  {
    sub_100005334(&qword_1000EF828, &qword_1000C7A50);
    sub_100068198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF838);
  }

  return result;
}

unint64_t sub_100068198()
{
  result = qword_1000EF840;
  if (!qword_1000EF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF840);
  }

  return result;
}

unint64_t sub_1000681EC()
{
  result = qword_1000EF848;
  if (!qword_1000EF848)
  {
    sub_100005334(&qword_1000EF830, &qword_1000C7A58);
    sub_1000682A4();
    sub_100008478(&qword_1000EF868, &qword_1000EF870, &qword_1000C7A68, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF848);
  }

  return result;
}

unint64_t sub_1000682A4()
{
  result = qword_1000EF850;
  if (!qword_1000EF850)
  {
    sub_100005334(&qword_1000EF858, &qword_1000C7A60);
    sub_100068330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF850);
  }

  return result;
}

unint64_t sub_100068330()
{
  result = qword_1000EF860;
  if (!qword_1000EF860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF860);
  }

  return result;
}

uint64_t destroy for TTRAnyListWidget.ListShareeBadgesView.BadgeView(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);

  return sub_100048A00(v2, v3);
}

uint64_t sub_1000683C8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  v5 = *(a2 + 16);
  v6 = v3;
  sub_1000489F4(v4, v5);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRAnyListWidget.ListShareeBadgesView.BadgeView(uint64_t a1, void **a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  sub_1000489F4(v7, v2);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *(a1 + 8) = v7;
  *(a1 + 16) = v2;
  sub_100048A00(v8, v9);
  return a1;
}

__n128 initializeWithTake for TTRAnyListWidget.ListShareeBadgesView.BadgeView(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRAnyListWidget.ListShareeBadgesView.BadgeView(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;
  sub_100048A00(v6, v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAnyListWidget.ListShareeBadgesView.BadgeView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for TTRAnyListWidget.ListShareeBadgesView.BadgeView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_100068588()
{
  result = qword_1000EF880;
  if (!qword_1000EF880)
  {
    sub_100005334(&qword_1000EF878, &qword_1000C7A70);
    sub_100008478(&qword_1000EF888, &qword_1000EF818, &qword_1000C7A20, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF880);
  }

  return result;
}

unint64_t sub_100068660()
{
  result = qword_1000EF8C0;
  if (!qword_1000EF8C0)
  {
    sub_100005334(&qword_1000EF8B8, &qword_1000C7B00);
    sub_1000686EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF8C0);
  }

  return result;
}

unint64_t sub_1000686EC()
{
  result = qword_1000EF8C8;
  if (!qword_1000EF8C8)
  {
    sub_100005334(&qword_1000EF8A0, &qword_1000C7AE8);
    sub_1000687A4();
    sub_100008478(&qword_1000EF8E0, &qword_1000EF8B0, &qword_1000C7AF8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF8C8);
  }

  return result;
}

unint64_t sub_1000687A4()
{
  result = qword_1000EF8D0;
  if (!qword_1000EF8D0)
  {
    sub_100005334(&qword_1000EF890, &qword_1000C7AD8);
    sub_10006885C();
    sub_100008478(&qword_1000ED7B8, &qword_1000ED7C0, &unk_1000C5580, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF8D0);
  }

  return result;
}

unint64_t sub_10006885C()
{
  result = qword_1000EF8D8;
  if (!qword_1000EF8D8)
  {
    sub_100005334(&qword_1000EF898, &qword_1000C7AE0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF8D8);
  }

  return result;
}

uint64_t sub_1000689B8()
{
  v0 = sub_1000C1568();
  sub_10000D9B0(v0, qword_1000EF8E8);
  v1 = sub_10000D978(v0, qword_1000EF8E8);
  if (qword_1000EC8E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D978(v0, qword_1000FAAE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100068A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100004D04(&qword_1000EFBA0, &qword_1000C7C58);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v38 = *(Configuration - 8);
  __chkstk_darwin(Configuration);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v12;
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  if (qword_1000EC968 != -1)
  {
    swift_once();
  }

  v17 = sub_1000C1568();
  sub_10000D978(v17, qword_1000EF8E8);
  sub_10007E410(a1, v16, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
  v18 = sub_1000C1558();
  v19 = sub_1000C2968();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = v13;
    v21 = v20;
    v22 = swift_slowAlloc();
    v37 = a3;
    v35 = v22;
    v41 = v22;
    *v21 = 136446210;
    sub_10007E410(v16, v40, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v23 = sub_1000C26A8();
    v36 = v10;
    v24 = v4;
    v26 = v25;
    sub_10007E478(v16, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v27 = sub_1000B7B58(v23, v26, &v41);
    v4 = v24;
    v10 = v36;

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "TTRNewWidgetInteractor fetching default list {configuration: %{public}s}", v21, 0xCu);
    sub_10002285C(v35);
    a3 = v37;

    v13 = v40;
  }

  else
  {

    sub_10007E478(v16, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
  }

  sub_10007E410(a1, v13, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
  v28 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v4;
  sub_10007E4DC(v13, v29 + v28, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
  v30 = sub_1000C2868();
  (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
  sub_1000C2848();
  swift_retain_n();

  v31 = sub_1000C2838();
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = &protocol witness table for MainActor;
  v32[4] = &unk_1000C7E08;
  v32[5] = v29;
  v32[6] = v4;
  v32[7] = a2;
  v32[8] = a3;
  sub_1000777E8(0, 0, v10, &unk_1000C7E10, v32);
}

uint64_t sub_100068EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1000C0E58();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_1000C11F8();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_1000C1528();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = sub_100004D04(&qword_1000EFC50, &qword_1000C7E18);
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v8 = sub_1000C1258();
  v3[21] = v8;
  v3[22] = *(v8 - 8);
  v3[23] = swift_task_alloc();
  v9 = sub_1000C1478();
  v3[24] = v9;
  v3[25] = *(v9 - 8);
  v3[26] = swift_task_alloc();
  v10 = sub_1000C13E8();
  v3[27] = v10;
  v3[28] = *(v10 - 8);
  v3[29] = swift_task_alloc();
  sub_100004D04(&qword_1000EFB88, &qword_1000C7C40);
  v3[30] = swift_task_alloc();
  v11 = sub_1000C1338();
  v3[31] = v11;
  v3[32] = *(v11 - 8);
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_1000692A0, 0, 0);
}

uint64_t sub_1000692A0()
{
  v34 = v0;
  v1 = *(*(v0 + 32) + 24);
  *(v0 + 16) = 0;
  *(v0 + 272) = v1;
  v2 = [v1 fetchDefaultListWithError:v0 + 16];
  v3 = v2;
  *(v0 + 280) = v2;
  if (*(v0 + 16))
  {
    v4 = *(v0 + 16);
LABEL_3:

    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }

  if (!v2)
  {
    v26 = objc_opt_self();
    v3 = sub_1000C2638();
    v27 = [v26 internalErrorWithDebugDescription:v3];
    goto LABEL_3;
  }

  if (qword_1000EC968 != -1)
  {
    swift_once();
  }

  v7 = sub_1000C1568();
  sub_10000D978(v7, qword_1000EF8E8);
  v8 = v3;
  v9 = sub_1000C1558();
  v10 = sub_1000C2968();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136446210;
    v13 = [v8 objectID];
    v14 = [v13 stringRepresentation];

    v15 = sub_1000C2678();
    v17 = v16;

    v18 = sub_1000B7B58(v15, v17, &v33);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "TTRNewWidgetInteractor fetched default list {listID: %{public}s}", v11, 0xCu);
    sub_10002285C(v12);
  }

  v19 = *(v0 + 248);
  v20 = *(v0 + 256);
  v21 = *(v0 + 240);
  sub_1000082B4(*(v0 + 32) + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_sortingStyle, v21, &qword_1000EFB88, &qword_1000C7C40);
  v22 = *(v20 + 48);
  if (v22(v21, 1, v19) == 1)
  {
    v24 = *(v0 + 240);
    v23 = *(v0 + 248);
    v25 = [v8 sortingStyle];
    sub_1000C2988();

    if (v22(v24, 1, v23) != 1)
    {
      sub_1000084C0(*(v0 + 240), &qword_1000EFB88, &qword_1000C7C40);
    }
  }

  else
  {
    (*(*(v0 + 256) + 32))(*(v0 + 264), *(v0 + 240), *(v0 + 248));
  }

  v28 = *(v0 + 40);
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  *(v0 + 288) = Configuration;
  v30 = *(Configuration + 28);
  v31 = swift_task_alloc();
  *(v0 + 296) = v31;
  *v31 = v0;
  v31[1] = sub_100069770;
  v32 = *(v0 + 232);

  return sub_10007245C(v32, v28 + v30);
}

uint64_t sub_100069770()
{

  return _swift_task_switch(sub_100069898, 0, 0);
}

uint64_t sub_100069898()
{
  v1 = v0;
  v2 = **(v0 + 40);
  v3 = sub_100073338();
  v4 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    goto LABEL_22;
  }

  v5 = v1[36];
  v6 = v1[25];
  v7 = v1[26];
  v8 = v1[24];
  v9 = v1[5];
  v10 = *(sub_100004D04(&qword_1000EFBB0, &qword_1000C7CF0) + 48);
  *v7 = v4;
  sub_1000082B4(v9 + *(v5 + 20), v7 + v10, &qword_1000EE310, &qword_1000C6380);
  (*(v6 + 104))(v7, enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:), v8);
  sub_1000C1198();
  v12 = v1[19];
  v11 = v1[20];
  v14 = v1[17];
  v13 = v1[18];
  v15 = v1[16];
  v16 = v1[12];
  v17 = v1[13];
  v18 = v1[5];
  sub_1000C14C8();
  (*(v12 + 8))(v11, v13);
  sub_1000C1248();
  v19 = sub_1000C1518();
  v20 = *(v17 + 8);
  v20(v14, v16);
  v71 = sub_10007EF50(v19, v18);

  sub_1000C1248();
  v21 = sub_1000C1518();
  v73 = v20;
  v20(v15, v16);
  v22 = *(v21 + 16);
  v74 = v1;
  if (v22)
  {
    v23 = 0;
    v24 = v1[10];
    v26 = *(v24 + 16);
    v24 += 16;
    v25 = v26;
    v27 = v21 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v28 = *(v24 + 56);
    v29 = (v24 - 8);
    v30 = v1;
    v26(v30[11], v27, v30[9]);
    while (1)
    {
      if (sub_1000C11B8())
      {
        (*v29)(v30[11], v30[9]);
      }

      else
      {
        v31 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
        }

        v32 = v30[11];
        v33 = v30[9];
        v34 = sub_1000C11C8();
        (*v29)(v32, v33);
        v23 = v31 + v34;
        if (__OFADD__(v31, v34))
        {
          goto LABEL_21;
        }

        v30 = v74;
      }

      v27 += v28;
      if (!--v22)
      {
        break;
      }

      v25(v30[11], v27, v30[9]);
    }
  }

  else
  {

    v23 = 0;
    v30 = v1;
  }

  v35 = v30;
  v36 = v30[15];
  v37 = v35[12];
  sub_1000C1248();
  v38 = sub_1000C1508();
  v73(v36, v37);
  if (v38 == 2 || (v38 & 1) == 0)
  {
    v39 = &enum case for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.defaultForNoReminders(_:);
  }

  else
  {
    v39 = &enum case for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.defaultForAllCompleted(_:);
  }

  v68 = v74[32];
  v69 = v74[31];
  v70 = v74[33];
  v67 = v74[29];
  v65 = v74[28];
  v66 = v74[27];
  v64 = v74[26];
  v61 = v74[35];
  v62 = v74[25];
  v40 = v74[23];
  v63 = v74[24];
  v59 = v74[22];
  v60 = v74[21];
  v41 = v74[17];
  v72 = v74[14];
  v42 = v74[12];
  v44 = v74[7];
  v43 = v74[8];
  v45 = v74[6];
  v46 = v74[3];
  v47 = *v39;
  v48 = sub_1000C0E28();
  (*(*(v48 - 8) + 104))(v43, v47, v48);
  (*(v44 + 104))(v43, enum case for TTRRemindersListViewModel.EmptyListMessagingType.viewModel(_:), v45);
  v58 = sub_1000C1238();
  v57 = sub_100004D04(&qword_1000EFC30, &qword_1000C7DD0);
  (*(v44 + 16))(v46 + v57[8], v43, v45);
  sub_1000C1248();
  v49 = sub_1000C14E8();
  v50.n128_f64[0] = v73(v41, v42);
  v56 = sub_100069FF8(v49, v50);

  sub_1000C1248();
  v51 = sub_1000C14F8();
  v52.n128_f64[0] = v73(v72, v42);
  v53 = sub_100069FF8(v51, v52);

  (*(v44 + 8))(v43, v45);
  (*(v59 + 8))(v40, v60);
  (*(v62 + 8))(v64, v63);
  (*(v65 + 8))(v67, v66);
  (*(v68 + 8))(v70, v69);
  *v46 = v58;
  v46[1] = v23;
  *(v46 + v57[9]) = v71;
  *(v46 + v57[10]) = v56;
  *(v46 + v57[11]) = v53;

  v54 = v74[1];

  return v54();
}

void *sub_100069FF8(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v3 = sub_1000C2C38();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    return v4;
  }

  v18 = _swiftEmptyArrayStorage;
  result = sub_1000BA448(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v18;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = sub_1000C2B48();
        v18 = v4;
        v9 = v4[2];
        v8 = v4[3];
        if (v9 >= v8 >> 1)
        {
          sub_1000BA448((v8 > 1), v9 + 1, 1);
          v4 = v18;
        }

        ++v6;
        v16 = sub_1000C1068();
        v17 = &protocol witness table for REMReminder;
        *&v15 = v7;
        v4[2] = v9 + 1;
        sub_100004E0C(&v15, &v4[5 * v9 + 4]);
      }

      while (v3 != v6);
    }

    else
    {
      v10 = (a1 + 32);
      do
      {
        v11 = *v10;
        v18 = v4;
        v12 = v4[2];
        v13 = v4[3];
        v14 = v11;
        if (v12 >= v13 >> 1)
        {
          sub_1000BA448((v13 > 1), v12 + 1, 1);
          v4 = v18;
        }

        v16 = sub_1000C1068();
        v17 = &protocol witness table for REMReminder;
        *&v15 = v14;
        v4[2] = v12 + 1;
        sub_100004E0C(&v15, &v4[5 * v12 + 4]);
        ++v10;
        --v3;
      }

      while (v3);
    }

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_10006A1B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v52 = a3;
  v9 = sub_100004D04(&qword_1000EFBA0, &qword_1000C7C58);
  __chkstk_darwin(v9 - 8);
  v51 = &v44 - v10;
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v12 = *(Configuration - 8);
  v49 = Configuration;
  v50 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(Configuration);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  if (qword_1000EC968 != -1)
  {
    swift_once();
  }

  v18 = sub_1000C1568();
  sub_10000D978(v18, qword_1000EF8E8);
  sub_10007E410(a2, v17, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
  v19 = a1;
  v20 = sub_1000C1558();
  v21 = sub_1000C2968();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v53 = v45;
    *v22 = 136446466;
    v23 = [v19 stringRepresentation];
    v47 = v5;
    v24 = v23;
    v25 = sub_1000C2678();
    v48 = a4;
    v26 = v25;
    v46 = a2;
    v28 = v27;

    v29 = sub_1000B7B58(v26, v28, &v53);

    *(v22 + 4) = v29;
    *(v22 + 12) = 2082;
    sub_10007E410(v17, v14, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v30 = sub_1000C26A8();
    v32 = v31;
    sub_10007E478(v17, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v33 = v30;
    a4 = v48;
    v34 = sub_1000B7B58(v33, v32, &v53);
    v5 = v47;

    *(v22 + 14) = v34;
    a2 = v46;
    _os_log_impl(&_mh_execute_header, v20, v21, "TTRNewWidgetInteractor fetching list {listID: %{public}s configuration: %{public}s}", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10007E478(v17, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
  }

  sub_10007E410(a2, v14, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
  v35 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v5;
  *(v36 + 24) = v19;
  sub_10007E4DC(v14, v36 + v35, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
  v37 = sub_1000C2868();
  v38 = v51;
  (*(*(v37 - 8) + 56))(v51, 1, 1, v37);
  sub_1000C2848();
  swift_retain_n();
  v39 = v19;

  v40 = sub_1000C2838();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = &protocol witness table for MainActor;
  v41[4] = &unk_1000C7DA8;
  v41[5] = v36;
  v42 = v52;
  v41[6] = v5;
  v41[7] = v42;
  v41[8] = a4;
  sub_1000777E8(0, 0, v38, &unk_1000C7DB8, v41);
}

uint64_t sub_10006A654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1000C0E58();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_1000C11F8();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_1000C12E8();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = sub_1000C13D8();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v9 = sub_1000C1388();
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();
  v10 = sub_1000C14A8();
  v4[25] = v10;
  v4[26] = *(v10 - 8);
  v4[27] = swift_task_alloc();
  v11 = sub_100004D04(&qword_1000EFC38, &qword_1000C7DE8);
  v4[28] = v11;
  v4[29] = *(v11 - 8);
  v4[30] = swift_task_alloc();
  v12 = sub_1000C1228();
  v4[31] = v12;
  v4[32] = *(v12 - 8);
  v4[33] = swift_task_alloc();
  v13 = sub_1000C1478();
  v4[34] = v13;
  v4[35] = *(v13 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v14 = sub_1000C13E8();
  v4[38] = v14;
  v4[39] = *(v14 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  sub_100004D04(&qword_1000EFB88, &qword_1000C7C40);
  v4[42] = swift_task_alloc();
  v15 = sub_1000C1338();
  v4[43] = v15;
  v4[44] = *(v15 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();

  return _swift_task_switch(sub_10006AB68, 0, 0);
}

uint64_t sub_10006AB68()
{
  v36 = v0;
  v1 = *(v0[4] + 24);
  v0[2] = 0;
  v2 = v0[5];
  v0[47] = v1;
  v3 = [v1 fetchListWithObjectID:v2 error:v0 + 2];
  v0[48] = v3;
  v4 = v0[2];
  if (v3)
  {
    v5 = v3;
    v6 = qword_1000EC968;
    v7 = v4;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_1000C1568();
    v0[49] = sub_10000D978(v8, qword_1000EF8E8);
    v9 = v5;
    v10 = sub_1000C1558();
    v11 = sub_1000C2968();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v35 = v13;
      *v12 = 136446210;
      v14 = [v9 objectID];
      v15 = [v14 stringRepresentation];

      v16 = sub_1000C2678();
      v18 = v17;

      v19 = sub_1000B7B58(v16, v18, &v35);

      *(v12 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "TTRNewWidgetInteractor fetched list {listID: %{public}s}", v12, 0xCu);
      sub_10002285C(v13);
    }

    v20 = v0[43];
    v21 = v0[44];
    v22 = v0[42];
    sub_1000082B4(v0[4] + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_sortingStyle, v22, &qword_1000EFB88, &qword_1000C7C40);
    v23 = *(v21 + 48);
    if (v23(v22, 1, v20) == 1)
    {
      v25 = v0[42];
      v24 = v0[43];
      v26 = [v9 sortingStyle];
      sub_1000C2988();

      if (v23(v25, 1, v24) != 1)
      {
        sub_1000084C0(v0[42], &qword_1000EFB88, &qword_1000C7C40);
      }
    }

    else
    {
      (*(v0[44] + 32))(v0[46], v0[42], v0[43]);
    }

    v30 = v0[6];
    Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
    v0[50] = Configuration;
    v32 = *(Configuration + 28);
    v33 = swift_task_alloc();
    v0[51] = v33;
    *v33 = v0;
    v33[1] = sub_10006B048;
    v34 = v0[41];

    return sub_10007245C(v34, v30 + v32);
  }

  else
  {
    v27 = v4;
    sub_1000C0868();

    swift_willThrow();

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_10006B048()
{

  return _swift_task_switch(sub_10006B170, 0, 0);
}

uint64_t sub_10006B170()
{
  v114 = v0;
  v1 = **(v0 + 48);
  v2 = sub_100073338();
  v3 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    goto LABEL_46;
  }

  v4 = *(v0 + 400);
  v5 = *(v0 + 360);
  v6 = *(v0 + 352);
  v98 = *(v0 + 344);
  v99 = *(v0 + 368);
  v100 = *(v0 + 320);
  v7 = *(v0 + 312);
  v101 = *(v0 + 304);
  v102 = *(v0 + 328);
  v8 = *(v0 + 296);
  v103 = *(v0 + 288);
  v9 = *(v0 + 280);
  v97 = *(v0 + 272);
  v10 = *(v0 + 184);
  v104 = *(v0 + 176);
  v105 = *(v0 + 192);
  v11 = *(v0 + 48);
  v12 = *(sub_100004D04(&qword_1000EFBB0, &qword_1000C7CF0) + 48);
  *v8 = v3;
  sub_1000082B4(v11 + *(v4 + 20), v8 + v12, &qword_1000EE310, &qword_1000C6380);
  (*(v9 + 104))(v8, enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:), v97);
  (*(v6 + 16))(v5, v99, v98);
  (*(v7 + 16))(v100, v102, v101);
  (*(v9 + 16))(v103, v8, v97);
  (*(v10 + 16))(v105, v11 + *(v4 + 24), v104);
  sub_1000C1498();
  sub_1000C11A8();
  v13 = *(v0 + 384);
  v15 = *(v0 + 232);
  v14 = *(v0 + 240);
  v16 = *(v0 + 224);
  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
  sub_1000C14C8();
  (*(v15 + 8))(v14, v16);
  v17 = v13;
  v18 = sub_1000C1558();
  v19 = sub_1000C2968();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 384);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v113[0] = v22;
    *v21 = 136446210;
    v23 = [v20 objectID];
    v24 = [v23 stringRepresentation];

    v25 = sub_1000C2678();
    v27 = v26;

    v28 = sub_1000B7B58(v25, v27, v113);

    *(v21 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "TTRNewWidgetInteractor fetched sections for list {listID: %{public}s}", v21, 0xCu);
    sub_10002285C(v22);
  }

  v29 = *(v0 + 168);
  v31 = *(v0 + 128);
  v30 = *(v0 + 136);
  sub_1000C1208();
  v32 = sub_1000C13C8();
  v106 = *(v30 + 8);
  v106(v29, v31);
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = *(v0 + 112);
    v35 = *(v34 + 16);
    v34 += 16;
    v36 = v32 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v107 = *(v34 + 56);
    v109 = v35;
    v37 = (v34 - 8);
    v38 = _swiftEmptyArrayStorage;
    while (1)
    {
      v39 = *(v0 + 120);
      v40 = *(v0 + 104);
      v109(v39, v36, v40);
      v41 = sub_1000C12D8();
      (*v37)(v39, v40);
      v42 = *(v41 + 16);
      v43 = *(v38 + 2);
      v44 = v43 + v42;
      if (__OFADD__(v43, v42))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v44 <= *(v38 + 3) >> 1)
      {
        if (*(v41 + 16))
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v43 <= v44)
        {
          v46 = v43 + v42;
        }

        else
        {
          v46 = v43;
        }

        v38 = sub_10002245C(isUniquelyReferenced_nonNull_native, v46, 1, v38);
        if (*(v41 + 16))
        {
LABEL_17:
          if ((*(v38 + 3) >> 1) - *(v38 + 2) < v42)
          {
            goto LABEL_43;
          }

          swift_arrayInitWithCopy();

          if (v42)
          {
            v47 = *(v38 + 2);
            v48 = __OFADD__(v47, v42);
            v49 = v47 + v42;
            if (v48)
            {
              goto LABEL_45;
            }

            *(v38 + 2) = v49;
          }

          goto LABEL_7;
        }
      }

      if (v42)
      {
        goto LABEL_42;
      }

LABEL_7:
      v36 += v107;
      if (!--v33)
      {

        goto LABEL_23;
      }
    }
  }

  v38 = _swiftEmptyArrayStorage;
LABEL_23:
  v50 = sub_10007EF50(v38, *(v0 + 48));
  v51 = *(v38 + 2);
  v108 = v50;
  if (!v51)
  {

    v52 = 0;
    goto LABEL_34;
  }

  v52 = 0;
  v53 = *(v0 + 88);
  v55 = *(v53 + 16);
  v53 += 16;
  v54 = v55;
  v56 = &v38[(*(v53 + 64) + 32) & ~*(v53 + 64)];
  v57 = *(v53 + 56);
  v110 = (v53 - 8);
  v111 = v0;
  while (1)
  {
    v54(*(v111 + 96), v56, *(v111 + 80));
    if (sub_1000C11B8())
    {
      (*v110)(*(v111 + 96), *(v111 + 80));
      goto LABEL_26;
    }

    v58 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_44;
    }

    v59 = *(v111 + 96);
    v60 = *(v111 + 80);
    v61 = sub_1000C11C8();
    (*v110)(v59, v60);
    v52 = v58 + v61;
    if (__OFADD__(v58, v61))
    {
      break;
    }

LABEL_26:
    v56 += v57;
    if (!--v51)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_32:

  v0 = v111;
LABEL_34:
  v62 = *(v0 + 160);
  v63 = *(v0 + 128);
  sub_1000C1208();
  v64 = sub_1000C13B8();
  v106(v62, v63);
  if (v64 == 2 || (v64 & 1) == 0)
  {
    v65 = &enum case for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.defaultForNoReminders(_:);
  }

  else
  {
    v65 = &enum case for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.defaultForAllCompleted(_:);
  }

  v87 = *(v0 + 384);
  v96 = *(v0 + 368);
  v94 = *(v0 + 352);
  v95 = *(v0 + 344);
  v92 = *(v0 + 304);
  v93 = *(v0 + 328);
  v90 = *(v0 + 296);
  v91 = *(v0 + 312);
  v88 = *(v0 + 280);
  v89 = *(v0 + 272);
  v66 = *(v0 + 264);
  v85 = *(v0 + 256);
  v86 = *(v0 + 248);
  v67 = *(v0 + 152);
  v112 = *(v0 + 144);
  v81 = *(v0 + 128);
  v69 = *(v0 + 64);
  v68 = *(v0 + 72);
  v70 = *(v0 + 56);
  v71 = *v65;
  v72 = *(v0 + 24);
  v73 = sub_1000C0E28();
  (*(*(v73 - 8) + 104))(v68, v71, v73);
  (*(v69 + 104))(v68, enum case for TTRRemindersListViewModel.EmptyListMessagingType.viewModel(_:), v70);
  v84 = sub_1000C1218();
  v83 = sub_100004D04(&qword_1000EFC30, &qword_1000C7DD0);
  (*(v69 + 16))(v72 + v83[8], v68, v70);
  sub_1000C1208();
  v74 = sub_1000C1398();
  v75.n128_f64[0] = v106(v67, v81);
  v82 = sub_100069FF8(v74, v75);

  sub_1000C1208();
  v76 = sub_1000C13A8();
  v77.n128_f64[0] = v106(v112, v81);
  v78 = sub_100069FF8(v76, v77);

  (*(v69 + 8))(v68, v70);
  (*(v85 + 8))(v66, v86);
  (*(v88 + 8))(v90, v89);
  (*(v91 + 8))(v93, v92);
  (*(v94 + 8))(v96, v95);
  *v72 = v84;
  v72[1] = v52;
  *(v72 + v83[9]) = v108;
  *(v72 + v83[10]) = v82;
  *(v72 + v83[11]) = v78;

  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_10006BCBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v52 = a3;
  v9 = sub_100004D04(&qword_1000EFBA0, &qword_1000C7C58);
  __chkstk_darwin(v9 - 8);
  v51 = &v44 - v10;
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v12 = *(Configuration - 8);
  v49 = Configuration;
  v50 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(Configuration);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  if (qword_1000EC968 != -1)
  {
    swift_once();
  }

  v18 = sub_1000C1568();
  sub_10000D978(v18, qword_1000EF8E8);
  sub_10007E410(a2, v17, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
  v19 = a1;
  v20 = sub_1000C1558();
  v21 = sub_1000C2968();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v53 = v45;
    *v22 = 136446466;
    v23 = [v19 stringRepresentation];
    v47 = v5;
    v24 = v23;
    v25 = sub_1000C2678();
    v48 = a4;
    v26 = v25;
    v46 = a2;
    v28 = v27;

    v29 = sub_1000B7B58(v26, v28, &v53);

    *(v22 + 4) = v29;
    *(v22 + 12) = 2082;
    sub_10007E410(v17, v14, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v30 = sub_1000C26A8();
    v32 = v31;
    sub_10007E478(v17, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v33 = v30;
    a4 = v48;
    v34 = sub_1000B7B58(v33, v32, &v53);
    v5 = v47;

    *(v22 + 14) = v34;
    a2 = v46;
    _os_log_impl(&_mh_execute_header, v20, v21, "TTRNewWidgetInteractor fetching custom smart list {customSmartListID: %{public}s configuration: %{public}s}", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10007E478(v17, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
  }

  sub_10007E410(a2, v14, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
  v35 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v5;
  *(v36 + 24) = v19;
  sub_10007E4DC(v14, v36 + v35, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
  v37 = sub_1000C2868();
  v38 = v51;
  (*(*(v37 - 8) + 56))(v51, 1, 1, v37);
  sub_1000C2848();
  swift_retain_n();
  v39 = v19;

  v40 = sub_1000C2838();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = &protocol witness table for MainActor;
  v41[4] = &unk_1000C7E28;
  v41[5] = v36;
  v42 = v52;
  v41[6] = v5;
  v41[7] = v42;
  v41[8] = a4;
  sub_1000777E8(0, 0, v38, &unk_1000C7E38, v41);
}

uint64_t sub_10006C160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1000C0E58();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_1000C11F8();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_1000C1528();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = sub_1000C1388();
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();
  v9 = sub_100004D04(qword_1000EFC70, &qword_1000C7E68);
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();
  v10 = sub_1000C1178();
  v4[25] = v10;
  v4[26] = *(v10 - 8);
  v4[27] = swift_task_alloc();
  v11 = sub_1000C1478();
  v4[28] = v11;
  v4[29] = *(v11 - 8);
  v4[30] = swift_task_alloc();
  v12 = sub_1000C13E8();
  v4[31] = v12;
  v4[32] = *(v12 - 8);
  v4[33] = swift_task_alloc();
  sub_100004D04(&qword_1000EFB88, &qword_1000C7C40);
  v4[34] = swift_task_alloc();
  v13 = sub_1000C1338();
  v4[35] = v13;
  v4[36] = *(v13 - 8);
  v4[37] = swift_task_alloc();

  return _swift_task_switch(sub_10006C598, 0, 0);
}

uint64_t sub_10006C598()
{
  v36 = v0;
  v1 = *(v0[4] + 24);
  v0[2] = 0;
  v2 = v0[5];
  v0[38] = v1;
  v3 = [v1 fetchCustomSmartListWithObjectID:v2 error:v0 + 2];
  v0[39] = v3;
  v4 = v0[2];
  if (v3)
  {
    v5 = v3;
    v6 = qword_1000EC968;
    v7 = v4;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_1000C1568();
    sub_10000D978(v8, qword_1000EF8E8);
    v9 = v5;
    v10 = sub_1000C1558();
    v11 = sub_1000C2968();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v35 = v13;
      *v12 = 136446210;
      v14 = [v9 objectID];
      v15 = [v14 stringRepresentation];

      v16 = sub_1000C2678();
      v18 = v17;

      v19 = sub_1000B7B58(v16, v18, &v35);

      *(v12 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "TTRNewWidgetInteractor fetched custom smart list {listID: %{public}s}", v12, 0xCu);
      sub_10002285C(v13);
    }

    v20 = v0[35];
    v21 = v0[36];
    v22 = v0[34];
    sub_1000082B4(v0[4] + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_sortingStyle, v22, &qword_1000EFB88, &qword_1000C7C40);
    v23 = *(v21 + 48);
    if (v23(v22, 1, v20) == 1)
    {
      v25 = v0[34];
      v24 = v0[35];
      v26 = [v9 sortingStyle];
      sub_1000C2988();

      if (v23(v25, 1, v24) != 1)
      {
        sub_1000084C0(v0[34], &qword_1000EFB88, &qword_1000C7C40);
      }
    }

    else
    {
      (*(v0[36] + 32))(v0[37], v0[34], v0[35]);
    }

    v30 = v0[6];
    Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
    v0[40] = Configuration;
    v32 = *(Configuration + 28);
    v33 = swift_task_alloc();
    v0[41] = v33;
    *v33 = v0;
    v33[1] = sub_10006CA38;
    v34 = v0[33];

    return sub_10007245C(v34, v30 + v32);
  }

  else
  {
    v27 = v4;
    sub_1000C0868();

    swift_willThrow();

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_10006CA38()
{

  return _swift_task_switch(sub_10006CB60, 0, 0);
}

uint64_t sub_10006CB60()
{
  v1 = **(v0 + 48);
  v2 = sub_100073338();
  v3 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    goto LABEL_22;
  }

  v4 = *(v0 + 320);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = v0;
  v8 = *(v0 + 224);
  v9 = v7[20];
  v10 = v7[21];
  v11 = v7[19];
  v12 = v7[6];
  v13 = *(sub_100004D04(&qword_1000EFBB0, &qword_1000C7CF0) + 48);
  *v5 = v3;
  sub_1000082B4(v12 + *(v4 + 20), v5 + v13, &qword_1000EE310, &qword_1000C6380);
  (*(v6 + 104))(v5, enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:), v8);
  (*(v9 + 104))(v10, enum case for REMRemindersListDataView.FetchSubtasks.count(_:), v11);
  sub_1000C1188();
  v15 = v7[23];
  v14 = v7[24];
  v16 = v7[22];
  v17 = v7[17];
  v18 = v7[18];
  v19 = v7[13];
  v20 = v7[14];
  v21 = v7[6];
  (*(v7[20] + 8))(v7[21], v7[19]);
  sub_1000C14C8();
  (*(v15 + 8))(v14, v16);
  sub_1000C1168();
  v22 = sub_1000C1518();
  v23 = *(v20 + 8);
  v23(v18, v19);
  v73 = sub_10007EF50(v22, v21);

  sub_1000C1168();
  v24 = sub_1000C1518();
  v75 = v23;
  v23(v17, v19);
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = v7[11];
    v29 = *(v27 + 16);
    v27 += 16;
    v28 = v29;
    v30 = v24 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
    v31 = *(v27 + 56);
    v76 = (v27 - 8);
    v32 = v7;
    v29(v32[12], v30, v32[10]);
    while (1)
    {
      if (sub_1000C11B8())
      {
        (*v76)(v32[12], v32[10]);
      }

      else
      {
        v33 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
        }

        v34 = v32[12];
        v35 = v32;
        v36 = v32[10];
        v37 = sub_1000C11C8();
        (*v76)(v34, v36);
        v26 = v33 + v37;
        if (__OFADD__(v33, v37))
        {
          goto LABEL_21;
        }

        v32 = v35;
      }

      v30 += v31;
      if (!--v25)
      {
        break;
      }

      v28(v32[12], v30, v32[10]);
    }
  }

  else
  {

    v26 = 0;
    v32 = v7;
  }

  v38 = v32[16];
  v39 = v32[13];
  sub_1000C1168();
  v40 = sub_1000C1508();
  v75(v38, v39);
  if (v40 == 2 || (v40 & 1) == 0)
  {
    v41 = &enum case for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.defaultForNoReminders(_:);
  }

  else
  {
    v41 = &enum case for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.defaultForAllCompleted(_:);
  }

  v70 = v32[36];
  v71 = v32[35];
  v72 = v32[37];
  v69 = v32[33];
  v67 = v32[32];
  v68 = v32[31];
  v66 = v32[30];
  v63 = v32[39];
  v64 = v32[29];
  v42 = v32[27];
  v65 = v32[28];
  v61 = v32[26];
  v62 = v32[25];
  v43 = v32[18];
  v74 = v32[15];
  v44 = v32[13];
  v46 = v32[8];
  v45 = v32[9];
  v47 = v32[7];
  v48 = v32[3];
  v49 = *v41;
  v50 = sub_1000C0E28();
  (*(*(v50 - 8) + 104))(v45, v49, v50);
  v77 = v45;
  (*(v46 + 104))(v45, enum case for TTRRemindersListViewModel.EmptyListMessagingType.viewModel(_:), v47);
  v60 = sub_1000C1158();
  v59 = sub_100004D04(&qword_1000EFC68, &qword_1000C7E50);
  (*(v46 + 16))(v48 + v59[8], v45, v47);
  sub_1000C1168();
  v51 = sub_1000C14E8();
  v52.n128_f64[0] = v75(v43, v44);
  v58 = sub_100069FF8(v51, v52);

  sub_1000C1168();
  v53 = sub_1000C14F8();
  v54.n128_f64[0] = v75(v74, v44);
  v55 = sub_100069FF8(v53, v54);

  (*(v46 + 8))(v77, v47);
  (*(v61 + 8))(v42, v62);
  (*(v64 + 8))(v66, v65);
  (*(v67 + 8))(v69, v68);
  (*(v70 + 8))(v72, v71);
  *v48 = v60;
  v48[1] = v26;
  *(v48 + v59[9]) = v73;
  *(v48 + v59[10]) = v58;
  *(v48 + v59[11]) = v55;

  v56 = v32[1];

  return v56();
}

uint64_t sub_10006D34C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v160 = a3;
  v161 = a4;
  v171 = a2;
  v147 = sub_100004D04(&qword_1000EFB98, &qword_1000C7C50);
  __chkstk_darwin(v147);
  v148 = (v146 - v7);
  v8 = sub_100004D04(&qword_1000EFBA0, &qword_1000C7C58);
  __chkstk_darwin(v8 - 8);
  v159 = v146 - v9;
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v156 = *(Configuration - 1);
  __chkstk_darwin(Configuration);
  v168 = v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = v10;
  __chkstk_darwin(v11);
  v164 = v146 - v12;
  v172 = sub_1000C0C18();
  v13 = *(v172 - 8);
  __chkstk_darwin(v172);
  v166 = v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v163 = v146 - v16;
  __chkstk_darwin(v17);
  v19 = v146 - v18;
  v20 = sub_100004D04(&qword_1000EFB88, &qword_1000C7C40);
  __chkstk_darwin(v20 - 8);
  v22 = v146 - v21;
  v23 = sub_1000C1338();
  __chkstk_darwin(v23);
  v165 = v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v155 = v146 - v26;
  __chkstk_darwin(v27);
  v29 = v146 - v28;
  v154 = v30;
  __chkstk_darwin(v31);
  v169 = v146 - v32;
  v33 = v5;
  v35 = v34;
  sub_1000082B4(v5 + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_sortingStyle, v22, &qword_1000EFB88, &qword_1000C7C40);
  v173 = v23;
  v174 = v35;
  v36 = (*(v35 + 48))(v22, 1, v23);
  v170 = a1;
  if (v36 != 1)
  {
    v29 = v22;
    goto LABEL_6;
  }

  sub_1000084C0(v22, &qword_1000EFB88, &qword_1000C7C40);
  sub_1000C0BF8();
  v37 = v172;
  (*(v13 + 16))(v19, a1, v172);
  v38 = (*(v13 + 88))(v19, v37);
  v39 = v169;
  if (v38 != enum case for TTRListType.PredefinedSmartListType.today(_:))
  {
    if (v38 == enum case for TTRListType.PredefinedSmartListType.scheduled(_:) || v38 == enum case for TTRListType.PredefinedSmartListType.all(_:))
    {
      goto LABEL_7;
    }

    if (v38 != enum case for TTRListType.PredefinedSmartListType.flagged(_:) && v38 != enum case for TTRListType.PredefinedSmartListType.assigned(_:))
    {
      if (v38 == enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:) || v38 == enum case for TTRListType.PredefinedSmartListType.completed(_:))
      {
        goto LABEL_7;
      }

      v104 = v13;
      if (qword_1000EC968 != -1)
      {
        swift_once();
      }

      v105 = sub_1000C1568();
      sub_10000D978(v105, qword_1000EF8E8);
      v106 = sub_1000C1558();
      v107 = sub_1000C2948();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&_mh_execute_header, v106, v107, "TTRNewWidgetInteractor unhandled predefinedSmartListType", v108, 2u);
      }

      v13 = v104;
      (*(v104 + 8))(v19, v172);
LABEL_6:
      v39 = v169;
      goto LABEL_7;
    }
  }

  v40 = sub_1000C0BE8();
  if (v40)
  {
    v41 = v40;
    v42 = [v40 sortingStyle];
    v43 = v155;
    sub_1000C2988();

    v45 = v173;
    v44 = v174;
    (*(v174 + 8))(v29, v173);
    (*(v44 + 32))(v29, v43, v45);
  }

LABEL_7:
  v158 = v33;
  v46 = *(v174 + 32);
  v153 = v174 + 32;
  v152 = v46;
  v46(v39, v29, v173);
  v48 = v164;
  v47 = v165;
  if (qword_1000EC968 != -1)
  {
    swift_once();
  }

  v49 = sub_1000C1568();
  v50 = sub_10000D978(v49, qword_1000EF8E8);
  v51 = v163;
  v52 = v170;
  v162 = *(v13 + 16);
  v162(v163, v170, v172);
  sub_10007E410(v171, v48, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
  v53 = *(v174 + 16);
  v151 = v174 + 16;
  v150 = v53;
  v53(v47, v39, v173);
  v146[1] = v50;
  v54 = sub_1000C1558();
  v55 = sub_1000C2968();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v149 = v13;
    v57 = v56;
    v146[0] = swift_slowAlloc();
    v175[0] = v146[0];
    *v57 = 136315650;
    v58 = sub_1000C0C08();
    v60 = v59;
    v61 = *(v149 + 8);
    v61(v51, v172);
    v62 = sub_1000B7B58(v58, v60, v175);

    *(v57 + 4) = v62;
    *(v57 + 12) = 2080;
    sub_10007E410(v48, v168, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v63 = sub_1000C26A8();
    v65 = v64;
    sub_10007E478(v48, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v66 = sub_1000B7B58(v63, v65, v175);

    *(v57 + 14) = v66;
    *(v57 + 22) = 2080;
    v67 = v173;
    v68 = sub_1000C1328();
    v70 = v69;
    Configuration = *(v174 + 8);
    v71 = v47;
    v72 = v61;
    Configuration(v71, v67);
    v73 = sub_1000B7B58(v68, v70, v175);
    v52 = v170;

    *(v57 + 24) = v73;
    _os_log_impl(&_mh_execute_header, v54, v55, "TTRNewWidgetInteractor fetching pre-defined smart list: %s configuration %s sortingStyle: %s", v57, 0x20u);
    swift_arrayDestroy();

    v13 = v149;
    v39 = v169;
  }

  else
  {

    Configuration = *(v174 + 8);
    Configuration(v47, v173);
    sub_10007E478(v48, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v72 = *(v13 + 8);
    v72(v51, v172);
  }

  v74 = v166;
  v75 = v172;
  v162(v166, v52, v172);
  v76 = (*(v13 + 88))(v74, v75);
  if (v76 == enum case for TTRListType.PredefinedSmartListType.today(_:))
  {
    v77 = v168;
    sub_10007E410(v171, v168, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v78 = v155;
    v79 = v173;
    v150(v155, v39, v173);
    v80 = (*(v156 + 80) + 24) & ~*(v156 + 80);
    v81 = (v157 + *(v174 + 80) + v80) & ~*(v174 + 80);
    v82 = swift_allocObject();
    v83 = v158;
    *(v82 + 16) = v158;
    sub_10007E4DC(v77, v82 + v80, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v152(v82 + v81, v78, v79);
    v84 = sub_1000C2868();
    v85 = v159;
    (*(*(v84 - 8) + 56))(v159, 1, 1, v84);
    sub_1000C2848();
    swift_retain_n();

    v86 = v161;

    v87 = sub_1000C2838();
    v88 = swift_allocObject();
    v88[2] = v87;
    v88[3] = &protocol witness table for MainActor;
    v88[4] = &unk_1000C7CD8;
    v88[5] = v82;
    v89 = v160;
    v88[6] = v83;
    v88[7] = v89;
    v88[8] = v86;
    v90 = &unk_1000C7CE0;
LABEL_14:
    sub_1000777E8(0, 0, v85, v90, v88);

    v91 = v39;
    v92 = v79;
    return (Configuration)(v91, v92);
  }

  if (v76 == enum case for TTRListType.PredefinedSmartListType.scheduled(_:))
  {
    v93 = v168;
    sub_10007E410(v171, v168, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v94 = (*(v156 + 80) + 24) & ~*(v156 + 80);
    v95 = swift_allocObject();
    v96 = v158;
    *(v95 + 16) = v158;
    sub_10007E4DC(v93, v95 + v94, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v97 = sub_1000C2868();
    v98 = v159;
    (*(*(v97 - 8) + 56))(v159, 1, 1, v97);
    sub_1000C2848();
    swift_retain_n();
    v99 = v161;

    v100 = sub_1000C2838();
    v101 = swift_allocObject();
    v101[2] = v100;
    v101[3] = &protocol witness table for MainActor;
    v101[4] = &unk_1000C7CA8;
    v101[5] = v95;
    v102 = v160;
    v101[6] = v96;
    v101[7] = v102;
    v101[8] = v99;
    sub_1000777E8(0, 0, v98, &unk_1000C7CB0, v101);

LABEL_17:
    v92 = v173;
    v91 = v39;
    return (Configuration)(v91, v92);
  }

  if (v76 == enum case for TTRListType.PredefinedSmartListType.all(_:))
  {
    v109 = v168;
    sub_10007E410(v171, v168, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v110 = v155;
    v79 = v173;
    v150(v155, v39, v173);
    v111 = (*(v156 + 80) + 24) & ~*(v156 + 80);
    v112 = (v157 + *(v174 + 80) + v111) & ~*(v174 + 80);
    v113 = swift_allocObject();
    v114 = v158;
    *(v113 + 16) = v158;
    sub_10007E4DC(v109, v113 + v111, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v152(v113 + v112, v110, v79);
    v115 = sub_1000C2868();
    v85 = v159;
    (*(*(v115 - 8) + 56))(v159, 1, 1, v115);
    sub_1000C2848();
    swift_retain_n();
    v116 = v161;

    v117 = sub_1000C2838();
    v88 = swift_allocObject();
    v88[2] = v117;
    v88[3] = &protocol witness table for MainActor;
    v88[4] = &unk_1000C7C90;
    v88[5] = v113;
    v118 = v160;
    v88[6] = v114;
    v88[7] = v118;
    v88[8] = v116;
    v90 = &unk_1000C7C98;
    goto LABEL_14;
  }

  if (v76 == enum case for TTRListType.PredefinedSmartListType.flagged(_:))
  {
    v119 = v168;
    sub_10007E410(v171, v168, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v120 = v155;
    v79 = v173;
    v150(v155, v39, v173);
    v121 = (*(v156 + 80) + 24) & ~*(v156 + 80);
    v122 = (v157 + *(v174 + 80) + v121) & ~*(v174 + 80);
    v123 = swift_allocObject();
    v124 = v158;
    *(v123 + 16) = v158;
    sub_10007E4DC(v119, v123 + v121, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v152(v123 + v122, v120, v79);
    v125 = sub_1000C2868();
    v85 = v159;
    (*(*(v125 - 8) + 56))(v159, 1, 1, v125);
    sub_1000C2848();
    swift_retain_n();
    v126 = v161;

    v127 = sub_1000C2838();
    v88 = swift_allocObject();
    v88[2] = v127;
    v88[3] = &protocol witness table for MainActor;
    v88[4] = &unk_1000C7CC0;
    v88[5] = v123;
    v128 = v160;
    v88[6] = v124;
    v88[7] = v128;
    v88[8] = v126;
    v90 = &unk_1000C7CC8;
    goto LABEL_14;
  }

  if (v76 == enum case for TTRListType.PredefinedSmartListType.assigned(_:))
  {
    v129 = v168;
    sub_10007E410(v171, v168, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v130 = v155;
    v79 = v173;
    v150(v155, v39, v173);
    v131 = (*(v156 + 80) + 24) & ~*(v156 + 80);
    v132 = (v157 + *(v174 + 80) + v131) & ~*(v174 + 80);
    v133 = swift_allocObject();
    v134 = v158;
    *(v133 + 16) = v158;
    sub_10007E4DC(v129, v133 + v131, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v152(v133 + v132, v130, v79);
    v135 = sub_1000C2868();
    v85 = v159;
    (*(*(v135 - 8) + 56))(v159, 1, 1, v135);
    sub_1000C2848();
    swift_retain_n();
    v136 = v161;

    v137 = sub_1000C2838();
    v88 = swift_allocObject();
    v88[2] = v137;
    v88[3] = &protocol witness table for MainActor;
    v88[4] = &unk_1000C7C70;
    v88[5] = v133;
    v138 = v160;
    v88[6] = v134;
    v88[7] = v138;
    v88[8] = v136;
    v90 = &unk_1000C7C80;
    goto LABEL_14;
  }

  if (v76 == enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:) || v76 == enum case for TTRListType.PredefinedSmartListType.completed(_:))
  {
    v139 = objc_opt_self();
    v140 = sub_1000C2638();
    v141 = [v139 internalErrorWithDebugDescription:v140];

    v142 = v148;
    *v148 = v141;
    swift_storeEnumTagMultiPayload();
    v160(v142);
    sub_1000084C0(v142, &qword_1000EFB98, &qword_1000C7C50);
    goto LABEL_17;
  }

  v143 = sub_1000C1558();
  v144 = sub_1000C2948();
  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    *v145 = 0;
    _os_log_impl(&_mh_execute_header, v143, v144, "TTRNewWidgetInteractor unhandled predefinedSmartListType", v145, 2u);
  }

  Configuration(v39, v173);
  return (v72)(v74, v172);
}

uint64_t sub_10006E7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_1000C11F8();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_1000C0AF8();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = sub_100004D04(&qword_1000EFBA8, &qword_1000C7CE8);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = sub_1000C1458();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v9 = sub_1000C1388();
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  v10 = sub_1000C1338();
  v4[23] = v10;
  v4[24] = *(v10 - 8);
  v4[25] = swift_task_alloc();
  v11 = sub_1000C14A8();
  v4[26] = v11;
  v4[27] = *(v11 - 8);
  v4[28] = swift_task_alloc();
  v12 = sub_1000C1478();
  v4[29] = v12;
  v4[30] = *(v12 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v13 = sub_1000C13E8();
  v4[33] = v13;
  v4[34] = *(v13 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return _swift_task_switch(sub_10006EB8C, 0, 0);
}

uint64_t sub_10006EB8C(__n128 a1)
{
  v2 = v1[6];
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v1[37] = Configuration;
  v4 = *(Configuration + 28);
  v5 = swift_task_alloc();
  v1[38] = v5;
  *v5 = v1;
  v5[1] = sub_10006EC4C;
  v6 = v1[36];

  return sub_10007245C(v6, v2 + v4);
}

uint64_t sub_10006EC4C()
{

  return _swift_task_switch(sub_10006ED48, 0, 0);
}

uint64_t sub_10006ED48()
{
  v2 = **(v0 + 48);
  v3 = sub_100073338();
  v4 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    goto LABEL_34;
  }

  v5 = *(v0 + 296);
  v6 = *(v0 + 272);
  v7 = *(v0 + 256);
  v66 = *(v0 + 264);
  v68 = *(v0 + 288);
  v8 = *(v0 + 240);
  v58 = *(v0 + 232);
  v9 = *(v0 + 192);
  v10 = *(v0 + 200);
  v62 = *(v0 + 184);
  v64 = *(v0 + 280);
  v70 = *(v0 + 248);
  v71 = *(v0 + 176);
  v11 = *(v0 + 168);
  v72 = *(v0 + 160);
  v75 = *(v0 + 104);
  v77 = *(v0 + 96);
  v79 = *(v0 + 88);
  v12 = *(v0 + 48);
  v60 = *(v0 + 56);
  v13 = *(sub_100004D04(&qword_1000EFBB0, &qword_1000C7CF0) + 48);
  *v7 = v4;
  sub_1000082B4(v12 + *(v5 + 20), v7 + v13, &qword_1000EE310, &qword_1000C6380);
  (*(v8 + 104))(v7, enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:), v58);
  (*(v9 + 16))(v10, v60, v62);
  (*(v6 + 16))(v64, v68, v66);
  (*(v8 + 16))(v70, v7, v58);
  (*(v11 + 104))(v71, enum case for REMRemindersListDataView.FetchSubtasks.count(_:), v72);
  sub_1000C1498();
  sub_1000C0AE8();
  sub_1000C1488();
  (*(v77 + 8))(v75, v79);
  v15 = *(v0 + 120);
  v14 = *(v0 + 128);
  v16 = *(v0 + 112);
  sub_1000C14C8();
  (*(v15 + 8))(v14, v16);
  v17 = sub_1000C1418();
  v18 = sub_1000C1428();
  v80 = v17;
  v76 = v17;

  sub_100078138(v18, sub_10002245C, &type metadata accessor for REMRemindersListDataView.ReminderLite);
  v19 = *(v17 + 16);
  if (v19)
  {
    v78 = 0;
    v20 = *(v0 + 72);
    v22 = *(v20 + 16);
    v21 = v20 + 16;
    v1 = v22;
    v23 = v17 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v24 = *(v21 + 56);
    do
    {
      v25 = *(v0 + 80);
      v26 = *(v0 + 64);
      (v1)(v25, v23, v26);
      v4 = sub_1000C11B8();
      (*(v21 - 8))(v25, v26);
      if ((v4 & 1) == 0)
      {
        if (__OFADD__(v78, 1))
        {
          goto LABEL_33;
        }

        ++v78;
      }

      v23 += v24;
      --v19;
    }

    while (v19);
  }

  else
  {

    v78 = 0;
  }

  v1 = sub_1000C1438();
  v75 = sub_1000C1448();
  sub_10006F690();
  v4 = v27;
  if ((v27 & 0xC000000000000001) == 0)
  {
    if (*(v27 + 16))
    {
      goto LABEL_12;
    }

LABEL_30:

    v34 = 0;
    goto LABEL_41;
  }

  if (!sub_1000C2AC8())
  {
    goto LABEL_30;
  }

LABEL_12:
  v80 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000C2C38())
  {
    v73 = v4;
    v74 = i;
    v29 = 0;
    v30 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v31 = sub_1000C2B48();
      }

      else
      {
        if (v29 >= *(v30 + 16))
        {
          goto LABEL_32;
        }

        v31 = *(v1 + 8 * v29 + 32);
      }

      v32 = v31;
      v4 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (([v31 isCompleted] & 1) != 0 || (objc_msgSend(v32, "isRecurrent") & 1) == 0)
      {
      }

      else
      {
        *(v0 + 16) = v32;
        sub_1000C1068();
        if (sub_1000C0DE8())
        {
        }

        else
        {
          sub_1000C2B68();
          sub_1000C2B88();
          i = v74;
          sub_1000C2B98();
          sub_1000C2B78();
        }

        v30 = v1 & 0xFFFFFFFFFFFFFF8;
      }

      ++v29;
      if (v4 == i)
      {
        v33 = v80;
        v4 = v73;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  v33 = _swiftEmptyArrayStorage;
LABEL_37:
  *(v0 + 24) = v33;
  sub_100004D04(&qword_1000EFBB8, &qword_1000C7CF8);
  sub_1000C1058();
  sub_10007FDB4(&qword_1000EFBC0, &qword_1000EFBB8, &qword_1000C7CF8);
  sub_10007CDD4(&qword_1000EFB78, &type metadata accessor for REMObjectID_Codable, &protocol conformance descriptor for NSObject);
  v35 = sub_1000C2758();

  v36 = sub_100079DF0(v35, v4);

  if ((v36 & 0xC000000000000001) != 0)
  {
    v34 = sub_1000C2AC8();
  }

  else
  {
    v34 = *(v36 + 16);
  }

LABEL_41:
  result = sub_1000C1408();
  if (__OFSUB__(v78, v34))
  {
    __break(1u);
  }

  else
  {
    v67 = *(v0 + 288);
    v69 = v78 - v34;
    v63 = *(v0 + 272);
    v65 = *(v0 + 264);
    v61 = *(v0 + 256);
    v38 = *(v0 + 240);
    v59 = *(v0 + 232);
    v39 = *(v0 + 216);
    v55 = *(v0 + 208);
    v56 = *(v0 + 224);
    v40 = *(v0 + 144);
    v54 = *(v0 + 152);
    v53 = *(v0 + 136);
    v41 = *(v0 + 32);
    v57 = result;
    v42 = sub_100004D04(&qword_1000EFBC8, &qword_1000C7D00);
    v43 = v42[8];
    v44 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.defaultForNoReminders(_:);
    v45 = sub_1000C0E28();
    (*(*(v45 - 8) + 104))(v41 + v43, v44, v45);
    v46 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.viewModel(_:);
    v47 = sub_1000C0E58();
    v48.n128_f64[0] = (*(*(v47 - 8) + 104))(v41 + v43, v46, v47);
    v49 = sub_100069FF8(v1, v48);

    v51 = sub_100069FF8(v75, v50);

    (*(v40 + 8))(v54, v53);
    (*(v39 + 8))(v56, v55);
    (*(v38 + 8))(v61, v59);
    (*(v63 + 8))(v67, v65);
    *v41 = v57;
    v41[1] = v69;
    *(v41 + v42[9]) = v76;
    *(v41 + v42[10]) = v49;
    *(v41 + v42[11]) = v51;

    v52 = *(v0 + 8);

    return v52();
  }

  return result;
}

void sub_10006F690()
{
  v1 = sub_1000C13E8();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    (*(v2 + 8))(v5, v1);
LABEL_3:
    if (_swiftEmptyArrayStorage >> 62)
    {
      if (sub_1000C2C38())
      {
        sub_10007F3D4(_swiftEmptyArrayStorage, v12);
      }
    }

    return;
  }

  if (v6 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    (*(v2 + 96))(v5, v1);
    return;
  }

  if (v6 == enum case for REMRemindersListDataView.ShowCompleted.off(_:) || v6 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {
    goto LABEL_3;
  }

  if (qword_1000EC968 != -1)
  {
    swift_once();
  }

  v8 = sub_1000C1568();
  sub_10000D978(v8, qword_1000EF8E8);
  v9 = sub_1000C1558();
  v10 = sub_1000C2948();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "TTRNewWidgetInteractorFetchConfiguration.ShowCompleted.additionalVisibleRemindersSet: unhandled case", v11, 2u);
  }

  if (_swiftEmptyArrayStorage >> 62 && sub_1000C2C38())
  {
    sub_10007F3D4(_swiftEmptyArrayStorage, v13);
  }

  (*(v2 + 8))(v5, v1);
}

void sub_10006F940(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 remObjectID];
  v4 = sub_1000C2918();

  *a2 = v4;
}

uint64_t sub_10006F99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000C11F8();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_1000C0E58();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_1000C1528();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_100004D04(&qword_1000EFBD0, &qword_1000C7D08);
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v9 = sub_1000C1318();
  v4[18] = v9;
  v4[19] = *(v9 - 8);
  v4[20] = swift_task_alloc();
  v10 = sub_1000C1478();
  v4[21] = v10;
  v4[22] = *(v10 - 8);
  v4[23] = swift_task_alloc();
  v11 = sub_1000C13E8();
  v4[24] = v11;
  v4[25] = *(v11 - 8);
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_10006FC94, 0, 0);
}

uint64_t sub_10006FC94(__n128 a1)
{
  v2 = v1[4];
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v1[27] = Configuration;
  v4 = *(Configuration + 28);
  v5 = swift_task_alloc();
  v1[28] = v5;
  *v5 = v1;
  v5[1] = sub_10006FD54;
  v6 = v1[26];

  return sub_10007245C(v6, v2 + v4);
}

uint64_t sub_10006FD54()
{

  return _swift_task_switch(sub_10006FE50, 0, 0);
}

uint64_t sub_10006FE50()
{
  v1 = **(v0 + 32);
  result = sub_100073338();
  v3 = v1 + result;
  if (__OFADD__(v1, result))
  {
    goto LABEL_21;
  }

  v4 = *(v0 + 216);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 168);
  v8 = *(v0 + 32);
  v9 = *(sub_100004D04(&qword_1000EFBB0, &qword_1000C7CF0) + 48);
  *v5 = v3;
  sub_1000082B4(v8 + *(v4 + 20), v5 + v9, &qword_1000EE310, &qword_1000C6380);
  (*(v6 + 104))(v5, enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:), v7);
  sub_1000C1348();
  v11 = *(v0 + 128);
  v10 = *(v0 + 136);
  v12 = *(v0 + 120);
  sub_1000C14C8();
  (*(v11 + 8))(v10, v12);
  sub_1000C1308();
  v13 = sub_1000C1508();
  v14 = v0;
  if (v13 == 2 || (v13 & 1) == 0)
  {
    v15 = &enum case for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.defaultForNoReminders(_:);
  }

  else
  {
    v15 = &enum case for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.defaultForAllCompleted(_:);
  }

  v17 = *(v0 + 80);
  v16 = *(v0 + 88);
  v18 = *(v0 + 72);
  v19 = *v15;
  v20 = sub_1000C0E28();
  (*(*(v20 - 8) + 104))(v16, v19, v20);
  (*(v17 + 104))(v16, enum case for TTRRemindersListViewModel.EmptyListMessagingType.viewModel(_:), v18);
  v21 = sub_1000C1518();
  v22 = *(v21 + 16);
  if (!v22)
  {

    v23 = 0;
LABEL_16:
    v60 = v14[24];
    v61 = v14[26];
    v58 = v14[23];
    v59 = v14[25];
    v56 = v14[22];
    v57 = v14[21];
    v52 = v14[20];
    v35 = v14;
    v50 = v14[19];
    v54 = v14[18];
    v37 = v14[13];
    v36 = v14[14];
    v38 = v14[11];
    v53 = v14[12];
    v40 = v14[9];
    v39 = v14[10];
    v41 = v14[2];
    v55 = sub_1000C12F8();
    v42 = sub_100004D04(&qword_1000EFBC8, &qword_1000C7D00);
    (*(v39 + 16))(v41 + v42[8], v38, v40);
    v51 = sub_1000C1518();
    v43 = sub_1000C14E8();
    v49 = sub_100069FF8(v43, v44);

    v45 = sub_1000C14F8();
    v48 = sub_100069FF8(v45, v46);

    (*(v39 + 8))(v38, v40);
    (*(v37 + 8))(v36, v53);
    (*(v50 + 8))(v52, v54);
    (*(v56 + 8))(v58, v57);
    (*(v59 + 8))(v61, v60);
    *v41 = v55;
    v41[1] = v23;
    *(v41 + v42[9]) = v51;
    *(v41 + v42[10]) = v49;
    *(v41 + v42[11]) = v48;

    v47 = v35[1];

    return v47();
  }

  v23 = 0;
  v24 = *(v0 + 56);
  v26 = *(v24 + 16);
  v24 += 16;
  v25 = v26;
  v27 = v21 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
  v28 = *(v24 + 56);
  v62 = (v24 - 8);
  while (1)
  {
    v25(v14[8], v27, v14[6]);
    result = sub_1000C11B8();
    if (result)
    {
      (*v62)(v14[8], v14[6]);
      goto LABEL_9;
    }

    v29 = __OFADD__(v23, 1);
    v30 = v23 + 1;
    if (v29)
    {
      break;
    }

    v31 = v14[8];
    v32 = v14;
    v33 = v14[6];
    v34 = sub_1000C11C8();
    result = (*v62)(v31, v33);
    v29 = __OFADD__(v30, v34);
    v23 = v30 + v34;
    if (v29)
    {
      goto LABEL_20;
    }

    v14 = v32;
LABEL_9:
    v27 += v28;
    if (!--v22)
    {

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1000703A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1000C11F8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_100004D04(&qword_1000EFBD8, &qword_1000C7D10);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_1000C1528();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_1000C1388();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v8 = sub_1000C1338();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();
  v9 = sub_1000C14A8();
  v3[20] = v9;
  v3[21] = *(v9 - 8);
  v3[22] = swift_task_alloc();
  v10 = sub_1000C1478();
  v3[23] = v10;
  v3[24] = *(v10 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v11 = sub_1000C13E8();
  v3[27] = v11;
  v3[28] = *(v11 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_100070714, 0, 0);
}

uint64_t sub_100070714(__n128 a1)
{
  v2 = v1[4];
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v1[31] = Configuration;
  v4 = *(Configuration + 28);
  v5 = swift_task_alloc();
  v1[32] = v5;
  *v5 = v1;
  v5[1] = sub_1000707D4;
  v6 = v1[30];

  return sub_10007245C(v6, v2 + v4);
}

uint64_t sub_1000707D4()
{

  return _swift_task_switch(sub_1000708D0, 0, 0);
}

uint64_t sub_1000708D0()
{
  v1 = **(v0 + 32);
  result = sub_100073338();
  v3 = v1 + result;
  if (__OFADD__(v1, result))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 248);
    v5 = *(v0 + 224);
    v54 = *(v0 + 232);
    v6 = *(v0 + 208);
    v56 = *(v0 + 216);
    v58 = *(v0 + 240);
    v7 = *(v0 + 192);
    v59 = *(v0 + 200);
    v8 = *(v0 + 184);
    v9 = *(v0 + 144);
    v50 = *(v0 + 152);
    v52 = *(v0 + 136);
    v10 = *(v0 + 120);
    v60 = *(v0 + 128);
    v61 = *(v0 + 112);
    v11 = *(v0 + 32);
    v12 = *(sub_100004D04(&qword_1000EFBB0, &qword_1000C7CF0) + 48);
    *v6 = v3;
    sub_1000082B4(v11 + *(v4 + 20), v6 + v12, &qword_1000EE310, &qword_1000C6380);
    (*(v7 + 104))(v6, enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:), v8);
    (*(v9 + 104))(v50, enum case for REMRemindersListDataView.SortingStyle.default(_:), v52);
    (*(v5 + 16))(v54, v58, v56);
    (*(v7 + 16))(v59, v6, v8);
    (*(v10 + 104))(v60, enum case for REMRemindersListDataView.FetchSubtasks.count(_:), v61);
    sub_1000C1498();
    sub_1000C14B8();
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    v15 = *(v0 + 64);
    sub_1000C14C8();
    (*(v14 + 8))(v13, v15);
    v16 = sub_1000C1518();
    v17 = *(v16 + 16);
    v62 = v16;
    v18 = 0;
    if (v17)
    {
      v19 = *(v0 + 48);
      v21 = *(v19 + 16);
      v20 = v19 + 16;
      v63 = v21;
      v22 = v16 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
      v23 = *(v20 + 56);
      while (1)
      {
        v24 = *(v0 + 56);
        v25 = *(v0 + 40);
        v63(v24, v22, v25);
        v26 = sub_1000C11B8();
        (*(v20 - 8))(v24, v25);
        if ((v26 & 1) == 0 && __OFADD__(v18++, 1))
        {
          break;
        }

        v22 += v23;
        if (!--v17)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

LABEL_9:
    v57 = *(v0 + 240);
    v53 = *(v0 + 224);
    v55 = *(v0 + 216);
    v28 = *(v0 + 192);
    v49 = *(v0 + 184);
    v51 = *(v0 + 208);
    v29 = *(v0 + 168);
    v47 = *(v0 + 160);
    v48 = *(v0 + 176);
    v31 = *(v0 + 96);
    v30 = *(v0 + 104);
    v46 = *(v0 + 88);
    v32 = *(v0 + 16);
    v33 = sub_100004D04(&qword_1000EFBC8, &qword_1000C7D00);
    v34 = v33[8];
    v35 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.defaultForNoReminders(_:);
    v36 = sub_1000C0E28();
    (*(*(v36 - 8) + 104))(&v32[v34], v35, v36);
    v37 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.viewModel(_:);
    v38 = sub_1000C0E58();
    (*(*(v38 - 8) + 104))(&v32[v34], v37, v38);
    v39 = sub_1000C14E8();
    v45 = sub_100069FF8(v39, v40);

    v41 = sub_1000C14F8();
    v43 = sub_100069FF8(v41, v42);

    (*(v31 + 8))(v30, v46);
    (*(v29 + 8))(v48, v47);
    (*(v28 + 8))(v51, v49);
    (*(v53 + 8))(v57, v55);
    *v32 = 0;
    *(v32 + 1) = v18;
    *&v32[v33[9]] = v62;
    *&v32[v33[10]] = v45;
    *&v32[v33[11]] = v43;

    v44 = *(v0 + 8);

    return v44();
  }

  return result;
}

uint64_t sub_100070E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000C11F8();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_1000C12B8();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_100004D04(&qword_1000EFBE0, &qword_1000C7D18);
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_1000C12C8();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v9 = sub_1000C1478();
  v4[18] = v9;
  v4[19] = *(v9 - 8);
  v4[20] = swift_task_alloc();
  v10 = sub_1000C13E8();
  v4[21] = v10;
  v4[22] = *(v10 - 8);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_10007111C, 0, 0);
}

uint64_t sub_10007111C(__n128 a1)
{
  v2 = v1[4];
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v1[24] = Configuration;
  v4 = *(Configuration + 28);
  v5 = swift_task_alloc();
  v1[25] = v5;
  *v5 = v1;
  v5[1] = sub_1000711DC;
  v6 = v1[23];

  return sub_10007245C(v6, v2 + v4);
}

uint64_t sub_1000711DC()
{

  return _swift_task_switch(sub_1000712D8, 0, 0);
}

void sub_1000712D8()
{
  v1 = **(v0 + 32);
  v2 = sub_100073338();
  v3 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
LABEL_37:
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 192);
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    v7 = *(v0 + 144);
    v8 = *(v0 + 32);
    v9 = *(sub_100004D04(&qword_1000EFBB0, &qword_1000C7CF0) + 48);
    *v5 = v3;
    sub_1000082B4(v8 + *(v4 + 20), v5 + v9, &qword_1000EE310, &qword_1000C6380);
    (*(v6 + 104))(v5, enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:), v7);
    sub_1000C14D8();
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v12 = *(v0 + 96);
    sub_1000C14C8();
    (*(v11 + 8))(v10, v12);
    v13 = sub_1000C1298();
    v14 = *(v13 + 16);
    v15 = v0;
    v70 = v0;
    if (v14)
    {
      v16 = *(v0 + 80);
      v17 = *(v16 + 16);
      v16 += 16;
      v18 = v13 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
      v66 = *(v16 + 56);
      v68 = v17;
      v19 = (v16 - 8);
      v20 = _swiftEmptyArrayStorage;
      do
      {
        v21 = v15[11];
        v22 = v15[9];
        v68(v21, v18, v22);
        v23 = sub_1000C12A8();
        (*v19)(v21, v22);
        v24 = *(v23 + 16);
        v25 = v20[2];
        v26 = v25 + v24;
        if (__OFADD__(v25, v24))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v26 > v20[3] >> 1)
        {
          if (v25 <= v26)
          {
            v28 = v25 + v24;
          }

          else
          {
            v28 = v25;
          }

          v20 = sub_10002245C(isUniquelyReferenced_nonNull_native, v28, 1, v20);
        }

        v15 = v0;
        if (*(v23 + 16))
        {
          if ((v20[3] >> 1) - v20[2] < v24)
          {
            goto LABEL_33;
          }

          swift_arrayInitWithCopy();

          if (v24)
          {
            v29 = v20[2];
            v30 = __OFADD__(v29, v24);
            v31 = v29 + v24;
            if (v30)
            {
              goto LABEL_36;
            }

            v20[2] = v31;
          }
        }

        else
        {

          if (v24)
          {
            goto LABEL_32;
          }
        }

        v18 += v66;
        --v14;
      }

      while (v14);

      v32 = v20[2];
      if (v32)
      {
LABEL_19:
        v33 = 0;
        v34 = v15[7];
        v36 = *(v34 + 16);
        v34 += 16;
        v35 = v36;
        v37 = v20 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
        v38 = *(v34 + 56);
        v69 = (v34 - 8);
        while (1)
        {
          v35(v15[8], v37, v15[6]);
          if (sub_1000C11B8())
          {
            (*v69)(v15[8], v15[6]);
          }

          else
          {
            v39 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              goto LABEL_34;
            }

            v40 = v15[8];
            v41 = v15[6];
            v42 = sub_1000C11C8();
            (*v69)(v40, v41);
            v33 = v39 + v42;
            if (__OFADD__(v39, v42))
            {
              goto LABEL_35;
            }

            v15 = v70;
          }

          v37 += v38;
          if (!--v32)
          {
            goto LABEL_28;
          }
        }
      }
    }

    else
    {

      v20 = _swiftEmptyArrayStorage;
      v32 = _swiftEmptyArrayStorage[2];
      if (v32)
      {
        goto LABEL_19;
      }
    }

    v33 = 0;
LABEL_28:
    v65 = v15[21];
    v67 = v15[23];
    v63 = v15[20];
    v64 = v15[22];
    v43 = v15;
    v44 = v15[19];
    v45 = v43[17];
    v46 = v43[16];
    v61 = v43[15];
    v62 = v43[18];
    v47 = v43[2];
    v48 = sub_100004D04(&qword_1000EFBC8, &qword_1000C7D00);
    v49 = v48[8];
    v50 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.defaultForNoReminders(_:);
    v51 = sub_1000C0E28();
    (*(*(v51 - 8) + 104))(&v47[v49], v50, v51);
    v52 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.viewModel(_:);
    v53 = sub_1000C0E58();
    (*(*(v53 - 8) + 104))(&v47[v49], v52, v53);
    v54 = sub_1000C1268();
    v60 = sub_100069FF8(v54, v55);

    v56 = sub_1000C1288();
    v58 = sub_100069FF8(v56, v57);

    (*(v46 + 8))(v45, v61);
    (*(v44 + 8))(v63, v62);
    (*(v64 + 8))(v67, v65);
    *v47 = 0;
    *(v47 + 1) = v33;
    *&v47[v48[9]] = v20;
    *&v47[v48[10]] = v60;
    *&v47[v48[11]] = v58;

    v59 = v43[1];

    v59();
  }
}

uint64_t sub_1000718D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000C0E58();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_1000C11F8();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_1000C12B8();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_1000C12C8();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v9 = sub_100004D04(&qword_1000EFC18, &qword_1000C7D98);
  v4[19] = v9;
  v4[20] = *(v9 - 8);
  v4[21] = swift_task_alloc();
  v10 = sub_1000C1378();
  v4[22] = v10;
  v4[23] = *(v10 - 8);
  v4[24] = swift_task_alloc();
  v11 = sub_1000C1478();
  v4[25] = v11;
  v4[26] = *(v11 - 8);
  v4[27] = swift_task_alloc();
  v12 = sub_1000C13E8();
  v4[28] = v12;
  v4[29] = *(v12 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_100071C38, 0, 0);
}

uint64_t sub_100071C38(__n128 a1)
{
  v2 = v1[4];
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v1[31] = Configuration;
  v4 = *(Configuration + 28);
  v5 = swift_task_alloc();
  v1[32] = v5;
  *v5 = v1;
  v5[1] = sub_100071CF8;
  v6 = v1[30];

  return sub_10007245C(v6, v2 + v4);
}

uint64_t sub_100071CF8()
{

  return _swift_task_switch(sub_100071DF4, 0, 0);
}

void sub_100071DF4()
{
  v1 = **(v0 + 32);
  v2 = sub_100073338();
  v3 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
LABEL_35:
    __break(1u);
    return;
  }

  v4 = *(v0 + 248);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = *(v0 + 200);
  v8 = *(v0 + 32);
  v9 = *(sub_100004D04(&qword_1000EFBB0, &qword_1000C7CF0) + 48);
  *v5 = v3;
  sub_1000082B4(v8 + *(v4 + 20), v5 + v9, &qword_1000EE310, &qword_1000C6380);
  (*(v6 + 104))(v5, enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:), v7);
  sub_1000C13F8();
  v11 = *(v0 + 160);
  v10 = *(v0 + 168);
  v12 = *(v0 + 152);
  sub_1000C14C8();
  (*(v11 + 8))(v10, v12);
  sub_1000C1368();
  v13 = sub_1000C1298();
  v14 = *(v13 + 16);
  if (!v14)
  {
    goto LABEL_26;
  }

  v15 = *(v0 + 104);
  v16 = *(v15 + 16);
  v15 += 16;
  v17 = v13 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
  v67 = *(v15 + 56);
  v68 = v16;
  v18 = (v15 - 8);
  v19 = _swiftEmptyArrayStorage;
  do
  {
    v20 = *(v0 + 112);
    v21 = *(v0 + 96);
    v68(v20, v17, v21);
    v22 = sub_1000C12A8();
    (*v18)(v20, v21);
    v23 = *(v22 + 16);
    v24 = v19[2];
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v25 <= v19[3] >> 1)
    {
      if (!*(v22 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v24 <= v25)
      {
        v27 = v24 + v23;
      }

      else
      {
        v27 = v24;
      }

      v19 = sub_10002245C(isUniquelyReferenced_nonNull_native, v27, 1, v19);
      if (!*(v22 + 16))
      {
LABEL_4:

        if (v23)
        {
          goto LABEL_32;
        }

        goto LABEL_5;
      }
    }

    if ((v19[3] >> 1) - v19[2] < v23)
    {
      goto LABEL_33;
    }

    swift_arrayInitWithCopy();

    if (v23)
    {
      v28 = v19[2];
      v29 = __OFADD__(v28, v23);
      v30 = v28 + v23;
      if (v29)
      {
        goto LABEL_34;
      }

      v19[2] = v30;
    }

LABEL_5:
    v17 += v67;
    --v14;
  }

  while (v14);

  for (i = v19[2]; i; i = _swiftEmptyArrayStorage[2])
  {
    v32 = 0;
    v33 = *(v0 + 80);
    v35 = *(v33 + 16);
    v34 = v33 + 16;
    v36 = v19 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v69 = *(v34 + 56);
    v70 = v35;
    while (1)
    {
      v37 = *(v0 + 88);
      v38 = *(v0 + 72);
      v70(v37, v36, v38);
      v39 = sub_1000C11B8();
      (*(v34 - 8))(v37, v38);
      if ((v39 & 1) == 0)
      {
        v29 = __OFADD__(v32++, 1);
        if (v29)
        {
          break;
        }
      }

      v36 += v69;
      if (!--i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_26:

    v19 = _swiftEmptyArrayStorage;
  }

  v32 = 0;
LABEL_28:
  v65 = *(v0 + 224);
  v66 = *(v0 + 240);
  v63 = *(v0 + 216);
  v64 = *(v0 + 232);
  v61 = *(v0 + 208);
  v62 = *(v0 + 200);
  v58 = *(v0 + 184);
  v59 = *(v0 + 176);
  v40 = *(v0 + 136);
  v41 = *(v0 + 128);
  v53 = *(v0 + 120);
  v54 = *(v0 + 144);
  v42 = *(v0 + 56);
  v71 = *(v0 + 64);
  v43 = *(v0 + 48);
  v44 = *(v0 + 16);
  v56 = *(v0 + 192);
  v60 = sub_1000C1358();
  sub_1000C1368();
  v45 = sub_1000C1278();
  v46 = *(v41 + 8);
  v46(v40, v53);
  *v71 = v45 & 1;
  (*(v42 + 104))();
  v47 = sub_1000C1268();
  v57 = sub_100069FF8(v47, v48);

  v49 = sub_1000C1288();
  v55 = sub_100069FF8(v49, v50);

  v46(v54, v53);
  (*(v58 + 8))(v56, v59);
  (*(v61 + 8))(v63, v62);
  (*(v64 + 8))(v66, v65);
  *v44 = v60;
  v44[1] = v32;
  v51 = sub_100004D04(&qword_1000EFBC8, &qword_1000C7D00);
  (*(v42 + 32))(v44 + v51[8], v71, v43);
  *(v44 + v51[9]) = v19;
  *(v44 + v51[10]) = v57;
  *(v44 + v51[11]) = v55;

  v52 = *(v0 + 8);

  v52();
}

uint64_t sub_10007245C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = sub_100004D04(&qword_1000EFB70, &qword_1000C7C30);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100072500, v2, 0);
}

uint64_t sub_100072500()
{
  v1 = v0[7];
  v28 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 120);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(*(v1 + 120) + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v29 = *(v1 + 120);
  swift_bridgeObjectRetain_n();
  v10 = 0;
  while (1)
  {
    v11 = v10;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v12 = v30[9];
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v10 << 6);
    v15 = *(v29 + 56);
    v0 = *(*(v29 + 48) + 8 * v14);
    v16 = v15 + *(*(type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry(0) - 8) + 72) * v14;
    sub_10007E410(v16, v12 + *(v28 + 48), type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
    *v12 = v0;
    v0;
    sub_1000C0AC8();
    if (v17 <= 2.0)
    {
      v18 = v30[9];
      sub_1000C2918();
      sub_1000084C0(v18, &qword_1000EFB70, &qword_1000C7C30);
      sub_1000C2798();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000C27D8();
      }

      sub_1000C27F8();
    }

    else
    {
      sub_1000084C0(v30[9], &qword_1000EFB70, &qword_1000C7C30);
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  v0 = _swiftEmptyArrayStorage;
  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v20 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_15;
  }

LABEL_22:
  v20 = sub_1000C2C38();
LABEL_15:
  v21 = v30[5];
  if (v20)
  {
    v22 = sub_10007E248(v0, v19);

    *v21 = v22;
    v23 = &enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:);
  }

  else
  {

    v23 = &enum case for REMRemindersListDataView.ShowCompleted.off(_:);
  }

  v24 = *v23;
  v25 = sub_1000C13E8();
  (*(*(v25 - 8) + 104))(v21, v24, v25);

  v26 = v30[1];

  return v26();
}

uint64_t sub_100072834(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 128) = a3;
  *(v4 + 136) = v3;
  *(v4 + 176) = a2;
  *(v4 + 120) = a1;
  v5 = type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry(0);
  *(v4 + 144) = v5;
  *(v4 + 152) = *(v5 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_100072908, v3, 0);
}

void sub_100072908()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  swift_beginAccess();
  v4 = *(v2 + 120);
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;

  sub_10007C110(sub_100079C14, v5, v4);
  v7 = v6;

  v50 = v2;
  *(v2 + 120) = v7;

  v8 = *(v0 + 120);
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000C2AB8();
    sub_10007E3A8(0, &qword_1000EFB58, REMObjectID_ptr);
    sub_10007C290();
    sub_1000C2888();
    v3 = *(v0 + 16);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
  }

  else
  {
    v13 = -1 << *(v8 + 32);
    v9 = v8 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v8 + 56);

    v11 = 0;
  }

  v49 = *(v0 + 144);
  v48 = *(v0 + 176);
  v16 = (v10 + 64) >> 6;
  v46 = v16;
  v47 = *(v0 + 152);
  while (1)
  {
    if (v3 < 0)
    {
      v22 = sub_1000C2AE8();
      if (!v22 || (*(v0 + 112) = v22, sub_10007E3A8(0, &qword_1000EFB58, REMObjectID_ptr), swift_dynamicCast(), v21 = *(v0 + 104), v19 = v11, v20 = v12, !v21))
      {
LABEL_29:
        sub_10007C2F8(v3);

        v45 = *(v0 + 8);

        v45();
        return;
      }
    }

    else
    {
      v17 = v11;
      v18 = v12;
      v19 = v11;
      if (!v12)
      {
        while (1)
        {
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v19 >= v16)
          {
            goto LABEL_29;
          }

          v18 = *(v9 + 8 * v19);
          ++v17;
          if (v18)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

LABEL_15:
      v20 = (v18 - 1) & v18;
      v21 = *(*(v3 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
      if (!v21)
      {
        goto LABEL_29;
      }
    }

    v23 = v9;
    v24 = v3;
    v25 = *(v0 + 160);
    v26 = *(v0 + 168);
    v27 = *(v0 + 128);
    v28 = *(v49 + 20);
    v29 = sub_1000C0AF8();
    (*(*(v29 - 8) + 16))(&v26[v28], v27, v29);
    *v26 = v48;
    swift_beginAccess();
    sub_10007E4DC(v26, v25, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
    v30 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v50 + 120);
    *(v50 + 120) = 0x8000000000000000;
    v33 = sub_1000799F0(v30);
    v35 = v32[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_36;
    }

    v39 = v34;
    if (v32[3] < v38)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v44 = v33;
    sub_10007C5E0();
    v33 = v44;
    v41 = *(v0 + 160);
    if (v39)
    {
LABEL_8:
      sub_10007C81C(v41, v32[7] + *(v47 + 72) * v33);

      goto LABEL_9;
    }

LABEL_25:
    v32[(v33 >> 6) + 8] |= 1 << v33;
    *(v32[6] + 8 * v33) = v30;
    sub_10007E4DC(v41, v32[7] + *(v47 + 72) * v33, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
    v42 = v32[2];
    v37 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v37)
    {
      goto LABEL_37;
    }

    v32[2] = v43;
LABEL_9:
    *(v50 + 120) = v32;

    swift_endAccess();

    v11 = v19;
    v12 = v20;
    v3 = v24;
    v9 = v23;
    v16 = v46;
  }

  sub_10007BDC8(v38, isUniquelyReferenced_nonNull_native);
  v33 = sub_1000799F0(v30);
  if ((v39 & 1) == (v40 & 1))
  {
LABEL_24:
    v41 = *(v0 + 160);
    if (v39)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

  sub_10007E3A8(0, &qword_1000EFB58, REMObjectID_ptr);

  sub_1000C2CF8();
}