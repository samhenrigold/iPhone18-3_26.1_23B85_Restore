uint64_t sub_29E4B1458(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 144) = a2;
  *(v4 + 152) = v3;
  *(v4 + 160) = a3;
  *(v4 + 136) = a1;
  return MEMORY[0x2A1C73D48](sub_29E4B1480, 0, 0);
}

uint64_t sub_29E4B1480()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 128;
  *(v0 + 24) = sub_29E4B1654;
  v4 = swift_continuation_init();
  v5 = sub_29E4FC600();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = objc_allocWithZone(MEMORY[0x29EDBA9F8]);
  *(v0 + 112) = sub_29E4B507C;
  *(v0 + 120) = v6;
  *(v0 + 80) = MEMORY[0x29EDCA5F8];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_29E4B5084;
  *(v0 + 104) = &unk_2A24E8318;
  v8 = _Block_copy((v0 + 80));
  v9 = v3;
  v10 = [v7 initWithPredicate:v5 resultsHandler:v8];

  _Block_release(v8);

  [v10 setLimit_];
  [v10 setOrderByDateAscending_];
  [v9 executeQuery_];

  return MEMORY[0x2A1C73CC0](v0 + 16);
}

uint64_t sub_29E4B1654()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(*v0 + 128);
    v5 = *(v1 + 8);

    return v5(v4);
  }
}

uint64_t sub_29E4B1794@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  sub_29E4B6854(0, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v40 - v4;
  sub_29E4B6A9C(0, &qword_2A184B618, MEMORY[0x29EDC9E80]);
  v7 = v6;
  v41 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v40 - v8;
  v10 = type metadata accessor for PrimaryProfileInformationWorkPlanInfo(0);
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v13 = (&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = 0;
  v42 = v11;
  v14 = *(v11 + 20);
  v15 = sub_29E4FB470();
  v16 = *(*(v15 - 8) + 56);
  v44 = v14;
  v16(v13 + v14, 1, 1, v15);
  v17 = a1[3];
  v43 = a1;
  sub_29E4A1710(a1, v17);
  sub_29E4B694C();
  v18 = v45;
  sub_29E4FD070();
  if (!v18)
  {
    v19 = v41;
    LOBYTE(v46) = 2;
    v20 = sub_29E4FCEB0();
    v24 = v42;
    v25 = (v13 + *(v42 + 24));
    *v25 = v20;
    v25[1] = v26;
    LOBYTE(v46) = 3;
    v27 = sub_29E4FCE80();
    v45 = 0;
    v29 = (v13 + *(v24 + 28));
    *v29 = v27;
    v29[1] = v28;
    LOBYTE(v46) = 1;
    sub_29E4B4C48(&qword_2A184B628, 255, MEMORY[0x29EDC3850], MEMORY[0x29EDC3868]);
    v30 = v45;
    sub_29E4FCEA0();
    v45 = v30;
    if (v30)
    {
      (*(v19 + 8))(v9, v7);
LABEL_10:
      v21 = 1;
      goto LABEL_4;
    }

    v22 = v44;
    sub_29E4B69A0(v5, v13 + v44);
    v48 = 0;
    sub_29E4A1B2C();
    v31 = v45;
    sub_29E4FCEA0();
    v45 = v31;
    if (v31)
    {
      (*(v19 + 8))(v9, v7);
      v21 = 1;
      goto LABEL_5;
    }

    v32 = v47;
    if (v47 >> 60 == 15)
    {
      (*(v19 + 8))(v9, v7);
      v33 = v40;
    }

    else
    {
      v34 = v46;
      sub_29E4A2AD8(0, &qword_2A184B2A0, 0x29EDBA000);
      sub_29E4A2AD8(0, &qword_2A1A70788, 0x29EDBAAA0);
      v35 = v45;
      v36 = sub_29E4FCA20();
      v45 = v35;
      if (v35)
      {
        (*(v19 + 8))(v9, v7);
        sub_29E4A1B80(v34, v32);
        goto LABEL_10;
      }

      v37 = v36;
      v38 = *(v19 + 8);
      v39 = v40;
      v38(v9, v7);
      sub_29E4A1B80(v34, v32);
      v33 = v39;
      *v13 = v37;
    }

    sub_29E4B6A34(v13, v33, type metadata accessor for PrimaryProfileInformationWorkPlanInfo);
    sub_29E4A1754(v43);
    return sub_29E4B6F60(v13, type metadata accessor for PrimaryProfileInformationWorkPlanInfo);
  }

  v45 = v18;
  v21 = 0;
LABEL_4:
  v22 = v44;
LABEL_5:
  sub_29E4A1754(v43);
  sub_29E4B6C2C(v13 + v22, &qword_2A1A70650, MEMORY[0x29EDC3850]);
  if (v21)
  {
  }
}

uint64_t sub_29E4B1CE0(void *a1)
{
  v3 = v1;
  v24 = *MEMORY[0x29EDCA608];
  sub_29E4B6A9C(0, &qword_2A184B630, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v21 - v8;
  sub_29E4A1710(a1, a1[3]);
  sub_29E4B694C();
  sub_29E4FD080();
  v10 = type metadata accessor for PrimaryProfileInformationWorkPlanInfo(0);
  LOBYTE(v23) = 2;
  sub_29E4FCF30();
  if (!v2)
  {
    v23 = *(v3 + *(v10 + 28));
    v22 = 3;
    sub_29E4B6B00(0, &qword_2A1A6F260, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
    sub_29E4A1C4C();
    sub_29E4FCF50();
    v11 = *v3;
    if (!*v3)
    {
LABEL_6:
      LOBYTE(v23) = 1;
      sub_29E4B6854(0, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
      sub_29E4B6B50();
      sub_29E4FCF50();
      return (*(v7 + 8))(v9, v6);
    }

    v12 = objc_opt_self();
    *&v23 = 0;
    v13 = v11;
    v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v23];
    v15 = v23;
    if (v14)
    {
      v21 = v13;
      v16 = sub_29E4FB160();
      v18 = v17;

      *&v23 = v16;
      *(&v23 + 1) = v18;
      v22 = 0;
      sub_29E4A1CE0();
      sub_29E4FCF50();

      sub_29E4A1B94(v16, v18);
      goto LABEL_6;
    }

    v19 = v15;
    sub_29E4FB0E0();

    swift_willThrow();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_29E4B2068()
{
  v1 = 0x737574617473;
  v2 = 0x6D614E6E65766967;
  if (*v0 != 2)
  {
    v2 = 0x614E796C696D6166;
  }

  if (*v0)
  {
    v1 = 0x7953657669746361;
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

uint64_t sub_29E4B20F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29E4B5588(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29E4B211C(uint64_t a1)
{
  v2 = sub_29E4B694C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E4B2158(uint64_t a1)
{
  v2 = sub_29E4B694C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E4B21C8(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v2[18] = *v1;
  v3 = MEMORY[0x29EDC9C68];
  sub_29E4B6854(0, &qword_2A1A70BB0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v2[19] = swift_task_alloc();
  v4 = sub_29E4FB460();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  sub_29E4B6854(0, &qword_2A1A705D8, MEMORY[0x29EDC18E8], v3);
  v2[23] = swift_task_alloc();
  sub_29E4B6854(0, &qword_2A1A705E0, MEMORY[0x29EDC1740], v3);
  v2[24] = swift_task_alloc();
  sub_29E4B6854(0, &qword_2A1A70650, MEMORY[0x29EDC3850], v3);
  v2[25] = swift_task_alloc();
  v5 = sub_29E4FB820();
  v2[26] = v5;
  v2[27] = *(v5 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v6 = sub_29E4FB880();
  v2[31] = v6;
  v2[32] = *(v6 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = type metadata accessor for PrimaryProfileInformationWorkPlanInfo(0);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v7 = sub_29E4FB7B0();
  v2[39] = v7;
  v2[40] = *(v7 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v8 = sub_29E4FC3C0();
  v2[43] = v8;
  v2[44] = *(v8 - 8);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E4B25F4, 0, 0);
}

uint64_t sub_29E4B25F4()
{
  v70 = v0;
  swift_getObjectType();
  sub_29E4B4C48(&qword_2A1A6FAA0, v1, type metadata accessor for PrimaryProfileInformationExecutor, &unk_29E4FF530);
  sub_29E4FB310();
  sub_29E4FC350();
  v2 = sub_29E4FC3B0();
  v3 = sub_29E4FC940();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[47];
  v6 = v0[43];
  v7 = v0[44];
  if (v4)
  {
    v8 = v0[18];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v69[0] = v10;
    *v9 = 136446210;
    v0[15] = v8;
    swift_getMetatypeMetadata();
    v11 = sub_29E4FC700();
    v13 = sub_29E4F68F4(v11, v12, v69);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29E494000, v2, v3, "[%{public}s]: Running work plan for primary profile", v9, 0xCu);
    sub_29E4A1754(v10);
    MEMORY[0x29ED8BDB0](v10, -1, -1);
    MEMORY[0x29ED8BDB0](v9, -1, -1);
  }

  v14 = *(v7 + 8);
  v14(v5, v6);
  v0[48] = v14;
  v16 = v0[37];
  v15 = v0[38];
  v67 = v0[36];
  v62 = v14;
  v63 = v0[17];
  sub_29E4B4B54(0);
  sub_29E4FC2A0();

  sub_29E4B6F60(v15, type metadata accessor for PrimaryProfileInformationWorkPlanInfo);
  sub_29E4FC2A0();

  sub_29E4B6F60(v16, type metadata accessor for PrimaryProfileInformationWorkPlanInfo);
  v17 = [*(v63 + 32) profileIdentifier];
  sub_29E4FB870();
  sub_29E4FB7A0();
  sub_29E4FB6F0();
  sub_29E4FB8B0();

  sub_29E4FC2A0();
  v18 = *v67;
  v19 = *v67;
  sub_29E4B6F60(v67, type metadata accessor for PrimaryProfileInformationWorkPlanInfo);
  if (v18)
  {
    v20 = v0[38];
    v21 = v0[35];
    v22 = v0[30];
    v68 = v0[29];
    v23 = v0[27];
    v65 = v0[26];
    v24 = v0[25];
    v25 = v19;
    sub_29E4FC2A0();
    sub_29E4B68B8(v20 + *(v21 + 20), v24);
    sub_29E4B6F60(v20, type metadata accessor for PrimaryProfileInformationWorkPlanInfo);
    sub_29E4FB830();
    sub_29E4FC350();
    v26 = *(v23 + 16);
    v26(v68, v22, v65);
    v27 = sub_29E4FC3B0();
    v28 = sub_29E4FC940();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[46];
    v31 = v0[43];
    v32 = v0[29];
    if (v29)
    {
      v57 = v0[28];
      v64 = v0[46];
      v66 = v25;
      v34 = v0[26];
      v33 = v0[27];
      v60 = v28;
      v35 = v0[18];
      v61 = v0[43];
      v36 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v69[0] = v59;
      *v36 = 136446466;
      v0[14] = v35;
      swift_getMetatypeMetadata();
      v37 = sub_29E4FC700();
      v58 = v26;
      v39 = sub_29E4F68F4(v37, v38, v69);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2080;
      v26(v57, v32, v34);
      v40 = sub_29E4FC700();
      v42 = v41;
      v43 = v27;
      v44 = *(v33 + 8);
      v45 = v34;
      v25 = v66;
      v44(v32, v45);
      v46 = sub_29E4F68F4(v40, v42, v69);

      *(v36 + 14) = v46;
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v59, -1, -1);
      MEMORY[0x29ED8BDB0](v36, -1, -1);

      v62(v64, v61);
      v47 = v58;
    }

    else
    {
      v49 = v0[26];
      v48 = v0[27];

      v44 = *(v48 + 8);
      v44(v32, v49);
      v62(v30, v31);
      v47 = v26;
    }

    v50 = v0[30];
    v51 = v0[26];
    v52 = v0[27];
    v53 = v0[24];
    v47(v53, v50, v51);
    (*(v52 + 56))(v53, 0, 1, v51);
    sub_29E4FB710();

    v44(v50, v51);
  }

  v54 = swift_task_alloc();
  v0[49] = v54;
  *v54 = v0;
  v54[1] = sub_29E4B2D70;
  v55 = v0[23];

  return sub_29E4B3D98(v55);
}

uint64_t sub_29E4B2D70()
{

  if (v0)
  {

    v1 = sub_29E4B36E0;
  }

  else
  {
    v1 = sub_29E4B2E88;
  }

  return MEMORY[0x2A1C73D48](v1, 0, 0);
}

uint64_t sub_29E4B2E88()
{
  v42 = v0;
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[23];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_29E4B6C2C(v3, &qword_2A1A705D8, MEMORY[0x29EDC18E8]);
  }

  else
  {
    v5 = v0[33];
    v4 = v0[34];
    (*(v2 + 32))(v5, v3, v1);
    (*(v2 + 16))(v4, v5, v1);
    sub_29E4FB730();
    (*(v2 + 8))(v5, v1);
  }

  sub_29E4FC350();
  v6 = sub_29E4FC3B0();
  v7 = sub_29E4FC940();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[48];
  v10 = v0[45];
  v11 = v0[43];
  if (v8)
  {
    v12 = v0[42];
    v37 = v0[41];
    v14 = v0[39];
    v13 = v0[40];
    v40 = v0[48];
    v15 = v0[18];
    v39 = v0[43];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v41 = v17;
    *v16 = 136446466;
    v0[13] = v15;
    swift_getMetatypeMetadata();
    v18 = sub_29E4FC700();
    v38 = v10;
    v20 = sub_29E4F68F4(v18, v19, &v41);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    swift_beginAccess();
    (*(v13 + 16))(v37, v12, v14);
    v21 = sub_29E4FC700();
    v23 = sub_29E4F68F4(v21, v22, &v41);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_29E494000, v6, v7, "[%{public}s]: Created item for feedItem submission: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v17, -1, -1);
    MEMORY[0x29ED8BDB0](v16, -1, -1);

    v40(v38, v39);
  }

  else
  {

    v9(v10, v11);
  }

  v24 = v0[20];
  v25 = v0[21];
  v26 = v0[19];
  swift_beginAccess();
  HealthKitProfileInformation.makePluginFeedItem()(v26);
  if ((*(v25 + 48))(v26, 1, v24) == 1)
  {
    sub_29E4B6C2C(v0[19], &qword_2A1A70BB0, MEMORY[0x29EDC3840]);
    (*(v0[40] + 8))(v0[42], v0[39]);
    sub_29E4A1754(v0 + 2);

    v27 = v0[1];

    return v27();
  }

  else
  {
    v30 = v0[21];
    v29 = v0[22];
    v31 = v0[20];
    (*(v30 + 32))(v29, v0[19], v31);
    v33 = v0[5];
    v32 = v0[6];
    sub_29E4A1710(v0 + 2, v33);
    sub_29E4B6854(0, &qword_2A1A708B8, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v35 = swift_allocObject();
    v0[50] = v35;
    *(v35 + 16) = xmmword_29E4FDE40;
    (*(v30 + 16))(v35 + v34, v29, v31);
    v36 = swift_task_alloc();
    v0[51] = v36;
    *v36 = v0;
    v36[1] = sub_29E4B3424;

    return MEMORY[0x2A1C64D80](v35, v33, v32);
  }
}

uint64_t sub_29E4B3424()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_29E4B3C0C;
  }

  else
  {
    v2 = sub_29E4B3558;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E4B3558()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v0[40] + 8))(v0[42], v0[39]);
  sub_29E4A1754(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_29E4B36E0()
{
  v36 = v0;
  (*(v0[32] + 56))(v0[23], 1, 1, v0[31]);
  sub_29E4B6C2C(v0[23], &qword_2A1A705D8, MEMORY[0x29EDC18E8]);
  sub_29E4FC350();
  v1 = sub_29E4FC3B0();
  v2 = sub_29E4FC940();
  if (os_log_type_enabled(v1, v2))
  {
    v33 = v0[45];
    v34 = v0[48];
    v3 = v0[42];
    v32 = v0[43];
    v4 = v0[40];
    v30 = v0[39];
    v31 = v0[41];
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v0[13] = v5;
    v35 = v7;
    *v6 = 136446466;
    swift_getMetatypeMetadata();
    v8 = sub_29E4FC700();
    v10 = sub_29E4F68F4(v8, v9, &v35);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    swift_beginAccess();
    (*(v4 + 16))(v31, v3, v30);
    v11 = sub_29E4FC700();
    v13 = sub_29E4F68F4(v11, v12, &v35);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_29E494000, v1, v2, "[%{public}s]: Created item for feedItem submission: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v7, -1, -1);
    MEMORY[0x29ED8BDB0](v6, -1, -1);

    v34(v33, v32);
  }

  else
  {
    v14 = v0[48];
    v15 = v0[45];
    v16 = v0[43];

    v14(v15, v16);
  }

  v17 = v0[20];
  v18 = v0[21];
  v19 = v0[19];
  swift_beginAccess();
  HealthKitProfileInformation.makePluginFeedItem()(v19);
  if ((*(v18 + 48))(v19, 1, v17) == 1)
  {
    sub_29E4B6C2C(v0[19], &qword_2A1A70BB0, MEMORY[0x29EDC3840]);
    (*(v0[40] + 8))(v0[42], v0[39]);
    sub_29E4A1754(v0 + 2);

    v20 = v0[1];

    return v20();
  }

  else
  {
    v23 = v0[21];
    v22 = v0[22];
    v24 = v0[20];
    (*(v23 + 32))(v22, v0[19], v24);
    v26 = v0[5];
    v25 = v0[6];
    sub_29E4A1710(v0 + 2, v26);
    sub_29E4B6854(0, &qword_2A1A708B8, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v28 = swift_allocObject();
    v0[50] = v28;
    *(v28 + 16) = xmmword_29E4FDE40;
    (*(v23 + 16))(v28 + v27, v22, v24);
    v29 = swift_task_alloc();
    v0[51] = v29;
    *v29 = v0;
    v29[1] = sub_29E4B3424;

    return MEMORY[0x2A1C64D80](v28, v26, v25);
  }
}

uint64_t sub_29E4B3C0C()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[40];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v3 + 8))(v1, v2);
  sub_29E4A1754(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29E4B3D98(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_29E4B3E2C;

  return sub_29E49CAB0(0);
}

uint64_t sub_29E4B3E2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2A1C73D48](sub_29E4B3F60, 0, 0);
  }
}

uint64_t sub_29E4B3F60()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = [v1 activityMoveMode];
    v0[6] = v2;
    if (v2 == 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    v4 = [objc_opt_self() predicateForActivitySummariesWithActivityMoveMode_];
    v0[7] = v4;
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_29E49C854;

    return sub_29E49CAB0(v4);
  }

  else
  {
    v7 = v0[2];
    v8 = sub_29E4FB880();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_29E4B40B8()
{
  v0 = sub_29E4FC110();
  sub_29E4A19E0(v0, qword_2A1A70C80);
  sub_29E4A18DC(v0, qword_2A1A70C80);
  return sub_29E4FC100();
}

char *sub_29E4B411C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_29E4FC300();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E4FC110();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4B6B00(0, &qword_2A1A70780, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v11 = swift_allocObject();
  v22 = xmmword_29E4FDE50;
  *(v11 + 16) = xmmword_29E4FDE50;
  if (qword_2A1A6FB80 != -1)
  {
    swift_once();
  }

  v12 = sub_29E4A18DC(v7, qword_2A1A70C80);
  (*(v8 + 16))(v10, v12, v7);
  sub_29E4A1914(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29E4FDE60;
  inited = swift_initStackObject();
  *(inited + 16) = v22;
  sub_29E4A2AD8(0, &qword_2A1A6F1E8, 0x29EDBAD78);
  result = [swift_getObjCClassFromMetadata() activityMoveModeChangeType];
  if (result)
  {
    *(inited + 32) = result;
    sub_29E4D6814(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v13 + 56) = sub_29E4FB6E0();
    *(v13 + 64) = sub_29E4B4C48(&qword_2A1A70618, 255, MEMORY[0x29EDC3C08], MEMORY[0x29EDC3C00]);
    sub_29E4A197C((v13 + 32));
    sub_29E4FB6D0();
    *(v13 + 96) = sub_29E4FB630();
    *(v13 + 104) = sub_29E4B4C48(&qword_2A1A70640, 255, MEMORY[0x29EDC3B40], MEMORY[0x29EDC3B38]);
    sub_29E4A197C((v13 + 72));
    sub_29E4FB620();
    v16 = sub_29E4FC2E0();
    *(v13 + 136) = v16;
    v17 = sub_29E4B4C48(&qword_2A1A70488, 255, MEMORY[0x29EDC35C0], MEMORY[0x29EDC35B8]);
    *(v13 + 144) = v17;
    sub_29E4A197C((v13 + 112));
    sub_29E4FC2F0();
    sub_29E4FC2D0();
    *(v13 + 176) = v16;
    *(v13 + 184) = v17;
    sub_29E4A197C((v13 + 152));
    sub_29E4FC2F0();
    sub_29E4FC2D0();
    sub_29E4FC140();
    swift_allocObject();
    *(v11 + 32) = sub_29E4FC120();
    v3[2] = v11;
    v3[3] = a1;
    v3[4] = v20;
    v18 = OBJC_IVAR____TtCC8Profiles33PrimaryProfileInformationExecutor7Planner_signals;
    v19 = sub_29E4FC190();
    (*(*(v19 - 8) + 32))(v4 + v18, v21, v19);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E4B4584()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtCC8Profiles33PrimaryProfileInformationExecutor7Planner_signals;
  v2 = sub_29E4FC190();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_29E4B4678@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v6 = *(v3 + 8);
  a1[3] = ObjectType;
  a1[4] = v6;
  *a1 = v4;

  return swift_unknownObjectRetain();
}

uint64_t sub_29E4B46CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC8Profiles33PrimaryProfileInformationExecutor7Planner_signals;
  v4 = sub_29E4FC190();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29E4B4744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v8[3] = swift_getObjectType();
  v8[4] = *(v6 + 8);
  v8[0] = v5;
  swift_unknownObjectRetain_n();
  sub_29E4FC330();
  swift_unknownObjectRelease();
  return sub_29E4A1754(v8);
}

uint64_t sub_29E4B4838(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29E4B4C48(&qword_2A1A6FB78, 255, type metadata accessor for PrimaryProfileInformationExecutor.Planner, &unk_29E4FF4F0);

  return MEMORY[0x2A1C64978](a1, a2, v5, v6);
}

uint64_t sub_29E4B4914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = sub_29E4B4C48(&qword_2A1A6FB78, 255, type metadata accessor for PrimaryProfileInformationExecutor.Planner, &unk_29E4FF4F0);

  return a5(a1, a2, v8, v9);
}

uint64_t sub_29E4B49D4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_29E4B4A60(uint64_t a1)
{
  result = sub_29E4FC190();
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

void sub_29E4B4B54(uint64_t a1)
{
  if (!qword_2A1A704A0)
  {
    type metadata accessor for PrimaryProfileInformationWorkPlanInfo(255);
    sub_29E4B4C48(&qword_2A1A6F9A8, 255, type metadata accessor for PrimaryProfileInformationWorkPlanInfo, &unk_29E4FF4C8);
    sub_29E4B4C48(qword_2A1A6F9B0, 255, type metadata accessor for PrimaryProfileInformationWorkPlanInfo, &unk_29E4FF4A0);
    v1 = sub_29E4FC2B0();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A704A0);
    }
  }
}

uint64_t sub_29E4B4C48(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E4B4C90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29E49D938;

  return sub_29E4B21C8(a1);
}

uint64_t sub_29E4B4D24(uint64_t a1)
{
  v3 = sub_29E4FC190();
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 24);
  (*(v7 + 16))(v5, a1);
  type metadata accessor for PrimaryProfileInformationExecutor.Planner(0);
  v8 = swift_allocObject();
  v9 = swift_unknownObjectRetain();
  sub_29E4B411C(v9, v6, v5);
  return v8;
}

uint64_t sub_29E4B4E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_29E4B4C48(qword_2A1A6FAA8, a2, type metadata accessor for PrimaryProfileInformationExecutor, &unk_29E4FF580);

  return MEMORY[0x2A1C64700](a1, a2, a3, v7, v8);
}

uint64_t sub_29E4B4F18(uint64_t a1, uint64_t a2, void *a3, id a4, uint64_t a5)
{
  [a4 stopQuery_];
  if (a2)
  {
    **(*(a5 + 64) + 40) = a2;

    return MEMORY[0x2A1C73CD8](a5);
  }

  else
  {
    if (a3)
    {
      v8 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_29E4B6674(MEMORY[0x29EDCA190]);
      sub_29E4B4C48(&qword_2A184B418, 255, type metadata accessor for HKError, &unk_29E4FEA58);
      sub_29E4FB0C0();
      v8 = v12;
    }

    sub_29E4A2CE8(0, &qword_2A1A70BC8, MEMORY[0x29EDC9F18]);
    swift_allocError();
    *v9 = v8;
    v10 = a3;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_29E4B5084(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_29E4A2AD8(0, &qword_2A1A708E8, 0x29EDBA9F0);
    v5 = sub_29E4FC7C0();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_29E4B513C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_29E4B5154(void **a1, void **a2)
{
  v4 = sub_29E4FB470();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4B6854(0, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v36 - v9;
  sub_29E4B6ECC(0);
  v12 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v37 = a2;
  v16 = *a2;
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    sub_29E4A2AD8(0, &qword_2A1A70788, 0x29EDBAAA0);
    v17 = v16;
    v18 = v15;
    v19 = sub_29E4FCB40();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v20 = type metadata accessor for PrimaryProfileInformationWorkPlanInfo(0);
  v21 = v20[5];
  v22 = *(v12 + 48);
  sub_29E4B68B8(a1 + v21, v14);
  sub_29E4B68B8(v37 + v21, &v14[v22]);
  v23 = *(v5 + 48);
  if (v23(v14, 1, v4) != 1)
  {
    sub_29E4B68B8(v14, v10);
    if (v23(&v14[v22], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v22], v4);
      sub_29E4B4C48(&qword_2A184B668, 255, MEMORY[0x29EDC3850], MEMORY[0x29EDC3860]);
      v25 = sub_29E4FC680();
      v26 = *(v5 + 8);
      v26(v7, v4);
      v26(v10, v4);
      sub_29E4B6C2C(v14, &qword_2A1A70650, MEMORY[0x29EDC3850]);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    (*(v5 + 8))(v10, v4);
LABEL_11:
    sub_29E4B6F60(v14, sub_29E4B6ECC);
    return 0;
  }

  if (v23(&v14[v22], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_29E4B6C2C(v14, &qword_2A1A70650, MEMORY[0x29EDC3850]);
LABEL_15:
  v27 = v20[6];
  v28 = *(a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (v37 + v27);
  if ((v28 != *v30 || v29 != v30[1]) && (sub_29E4FCF80() & 1) == 0)
  {
    return 0;
  }

  v31 = v20[7];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (v37 + v31);
  v35 = v34[1];
  if (v33)
  {
    return v35 && (*v32 == *v34 && v33 == v35 || (sub_29E4FCF80() & 1) != 0);
  }

  return !v35;
}

uint64_t sub_29E4B5588(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (sub_29E4FCF80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7953657669746361 && a2 == 0xEF6574617453636ELL || (sub_29E4FCF80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065 || (sub_29E4FCF80() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_29E4FCF80();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_29E4B5700()
{
  v104 = *v0;
  v1 = sub_29E4FC3C0();
  v113 = *(v1 - 8);
  v114 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v112 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for PrimaryProfileInformationWorkPlanInfo(0);
  MEMORY[0x2A1C7C4A8](v97);
  v96 = (&v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = sub_29E4FC1C0();
  v92 = *(v93 - 8);
  MEMORY[0x2A1C7C4A8](v93);
  v91 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E4FC1E0();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v95 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E4FC230();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v94 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDC9C68];
  sub_29E4B6854(0, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
  v11 = MEMORY[0x2A1C7C4A8](v10 - 8);
  v90 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v103 = &v88 - v13;
  v14 = MEMORY[0x29EDC34D8];
  sub_29E4B6854(0, &qword_2A1A704E0, type metadata accessor for ContactStoreGivenFamilyNameInputSignal, MEMORY[0x29EDC34D8]);
  v101 = v15;
  v99 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v98 = &v88 - v16;
  sub_29E4B6854(0, &qword_2A1A70548, sub_29E4A1D34, v9);
  v18 = MEMORY[0x2A1C7C4A8](v17 - 8);
  v100 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v108 = &v88 - v20;
  v21 = sub_29E4FC300();
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v107 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4B6854(0, &qword_2A1A704D0, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal, v14);
  v105 = *(v23 - 8);
  v106 = v23;
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v88 - v24;
  sub_29E4A1D34(0);
  v109 = v26;
  v111 = *(v26 - 8);
  v27 = MEMORY[0x2A1C7C4A8](v26);
  v102 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27);
  v110 = &v88 - v29;
  sub_29E4B6854(0, &qword_2A1A70630, MEMORY[0x29EDC3B48], v9);
  MEMORY[0x2A1C7C4A8](v30 - 8);
  v32 = &v88 - v31;
  sub_29E4B6854(0, &unk_2A1A704F0, MEMORY[0x29EDC3B60], v14);
  v34 = v33;
  v35 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33);
  v37 = &v88 - v36;
  v38 = sub_29E4FB660();
  v39 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38);
  v41 = &v88 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FB670();
  sub_29E4FC170();
  sub_29E4B4C48(&qword_2A1A70628, 255, MEMORY[0x29EDC3B60], MEMORY[0x29EDC3B30]);
  sub_29E4FC2C0();
  v42 = v34;
  v43 = v39;
  (*(v35 + 8))(v37, v42);
  if ((*(v39 + 48))(v32, 1, v38) == 1)
  {
    v44 = &qword_2A1A70630;
    v45 = MEMORY[0x29EDC3B48];
LABEL_5:
    v49 = v45;
    v50 = v32;
LABEL_6:
    sub_29E4B6C2C(v50, v44, v49);
    v51 = v112;
    sub_29E4FC350();
    v52 = sub_29E4FC3B0();
    v53 = sub_29E4FC920();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v115[0] = v55;
      *v54 = 136446210;
      v116 = v104;
      swift_getMetatypeMetadata();
      v56 = sub_29E4FC700();
      v58 = sub_29E4F68F4(v56, v57, v115);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_29E494000, v52, v53, "[%{public}s] Can't create work plan, anchorSet doesn't contain the needed anchors", v54, 0xCu);
      sub_29E4A1754(v55);
      MEMORY[0x29ED8BDB0](v55, -1, -1);
      MEMORY[0x29ED8BDB0](v54, -1, -1);
    }

    (*(v113 + 8))(v51, v114);
    return MEMORY[0x29EDCA190];
  }

  (*(v39 + 32))(v41, v32, v38);
  sub_29E4FC2F0();
  type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal();
  sub_29E4FC180();
  sub_29E4B4C48(qword_2A1A6F490, 255, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal, &unk_29E4FF1B8);
  v32 = v108;
  sub_29E4FC2C0();
  (*(v105 + 8))(v25, v106);
  v46 = v111;
  v47 = *(v111 + 48);
  v48 = v109;
  if (v47(v32, 1, v109) == 1)
  {
    (*(v43 + 8))(v41, v38);
    v44 = &qword_2A1A70548;
    v45 = sub_29E4A1D34;
    goto LABEL_5;
  }

  v106 = v38;
  v108 = *(v46 + 32);
  (v108)(v110, v32, v48);
  sub_29E4FC2F0();
  type metadata accessor for ContactStoreGivenFamilyNameInputSignal();
  v60 = v98;
  sub_29E4FC180();
  sub_29E4B4C48(qword_2A1A6F908, 255, type metadata accessor for ContactStoreGivenFamilyNameInputSignal, &unk_29E501770);
  v61 = v100;
  sub_29E4FC2C0();
  (*(v99 + 8))(v60, v101);
  if (v47(v61, 1, v48) == 1)
  {
    (*(v111 + 8))(v110, v48);
    (*(v43 + 8))(v41, v106);
    v44 = &qword_2A1A70548;
    v49 = sub_29E4A1D34;
    v50 = v61;
    goto LABEL_6;
  }

  (v108)(v102, v61, v48);
  v113 = sub_29E4FB650();
  v114 = v41;
  sub_29E4FB640();
  sub_29E4FC0C0();
  v62 = v116;
  v63 = v117;

  if (v63)
  {
    v108 = v63;
    v112 = v62;
  }

  else
  {
    sub_29E4FC0C0();
    v64 = v115[0];
    v65 = v115[1];

    if (v65)
    {
      v66 = v64;
    }

    else
    {
      v66 = 0;
    }

    v112 = v66;
    v67 = 0xE000000000000000;
    if (v65)
    {
      v67 = v65;
    }

    v108 = v67;
  }

  sub_29E4FC0C0();

  v68 = v119;
  v89 = v43;
  if (v119)
  {
    v69 = v118;
  }

  else
  {
    sub_29E4FC0C0();

    v69 = v115[2];
    v68 = v115[3];
  }

  v107 = v69;
  sub_29E4B6854(0, &qword_2A1A6F0D8, sub_29E4B4B54, MEMORY[0x29EDC9E90]);
  sub_29E4B4B54(0);
  v105 = (*(*(v70 - 8) + 80) + 32) & ~*(*(v70 - 8) + 80);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_29E4FDE40;
  sub_29E4FC220();
  v71 = v92;
  v72 = v91;
  v73 = v93;
  (*(v92 + 104))(v91, *MEMORY[0x29EDC3508], v93);
  sub_29E4FC1D0();
  (*(v71 + 8))(v72, v73);
  v74 = v103;
  v75 = v90;
  sub_29E4B68B8(v103, v90);
  v76 = v97;
  v77 = *(v97 + 20);
  v78 = sub_29E4FB470();
  v79 = v96;
  (*(*(v78 - 8) + 56))(v96 + v77, 1, 1, v78);
  v80 = (v79 + *(v76 + 28));
  v81 = v113;
  *v79 = v113;
  v82 = v81;
  sub_29E4B69A0(v75, v79 + v77);
  v83 = (v79 + *(v76 + 24));
  v84 = v108;
  *v83 = v112;
  v83[1] = v84;
  *v80 = v107;
  v80[1] = v68;
  sub_29E4B4C48(&qword_2A1A6F9A8, 255, type metadata accessor for PrimaryProfileInformationWorkPlanInfo, &unk_29E4FF4C8);
  sub_29E4B4C48(qword_2A1A6F9B0, 255, type metadata accessor for PrimaryProfileInformationWorkPlanInfo, &unk_29E4FF4A0);
  v85 = v104;
  sub_29E4FC290();

  sub_29E4B6C2C(v74, &qword_2A1A70650, MEMORY[0x29EDC3850]);
  v86 = *(v111 + 8);
  v87 = v109;
  v86(v102, v109);
  v86(v110, v87);
  (*(v89 + 8))(v114, v106);
  return v85;
}

unint64_t sub_29E4B6674(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E4B678C();
    v3 = sub_29E4FCE20();
    v4 = a1 + 32;

    while (1)
    {
      sub_29E4B6A34(v4, &v13, sub_29E4B67F0);
      v5 = v13;
      v6 = v14;
      result = sub_29E49EE18(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_29E4A2C58(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void sub_29E4B678C()
{
  if (!qword_2A184B608)
  {
    v0 = sub_29E4FCE30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B608);
    }
  }
}

void sub_29E4B67F0()
{
  if (!qword_2A184B610)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A184B610);
    }
  }
}

void sub_29E4B6854(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E4B68B8(uint64_t a1, uint64_t a2)
{
  sub_29E4B6854(0, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E4B694C()
{
  result = qword_2A184B620;
  if (!qword_2A184B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B620);
  }

  return result;
}

uint64_t sub_29E4B69A0(uint64_t a1, uint64_t a2)
{
  sub_29E4B6854(0, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4B6A34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29E4B6A9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E4B694C();
    v7 = a3(a1, &type metadata for PrimaryProfileInformationWorkPlanInfo.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E4B6B00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29E4B6B50()
{
  result = qword_2A184B638;
  if (!qword_2A184B638)
  {
    sub_29E4B6854(255, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
    sub_29E4B4C48(&qword_2A184B640, 255, MEMORY[0x29EDC3850], MEMORY[0x29EDC3858]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B638);
  }

  return result;
}

uint64_t sub_29E4B6C2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E4B6854(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E4B6CD4(uint64_t a1)
{
  sub_29E4A3228(319);
  if (v1 <= 0x3F)
  {
    sub_29E4B6854(319, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      sub_29E4B6B00(319, &qword_2A1A6F260, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_29E4B6DC8()
{
  result = qword_2A184B648;
  if (!qword_2A184B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B648);
  }

  return result;
}

unint64_t sub_29E4B6E20()
{
  result = qword_2A184B650;
  if (!qword_2A184B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B650);
  }

  return result;
}

unint64_t sub_29E4B6E78()
{
  result = qword_2A184B658;
  if (!qword_2A184B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B658);
  }

  return result;
}

void sub_29E4B6ECC(uint64_t a1)
{
  if (!qword_2A184B660)
  {
    sub_29E4B6854(255, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A184B660);
    }
  }
}

uint64_t sub_29E4B6F60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E4B6FC8()
{
  result = sub_29E4FB950();
  qword_2A1A70660 = result;
  *algn_2A1A70668 = v1;
  return result;
}

uint64_t sub_29E4B6FEC@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v30[0] = sub_29E4FB320();
  v1 = *(v30[0] - 8);
  MEMORY[0x2A1C7C4A8](v30[0]);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E4FB460();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E4FC3C0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = v30 - v12;
  sub_29E4FC350();
  v14 = sub_29E4FC3B0();
  v15 = sub_29E4FC940();
  v16 = os_log_type_enabled(v14, v15);
  v34 = v7;
  v30[1] = v8;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v35[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_29E4F68F4(0x65466E6967756C50, 0xEE006D6574496465, v35);
    _os_log_impl(&dword_29E494000, v14, v15, "[%s] Creating summary sharing first time user feed item", v17, 0xCu);
    sub_29E4A1754(v18);
    MEMORY[0x29ED8BDB0](v18, -1, -1);
    MEMORY[0x29ED8BDB0](v17, -1, -1);

    v19 = *(v8 + 8);
    v19(v13, v34);
  }

  else
  {

    v19 = *(v8 + 8);
    v19(v13, v7);
  }

  if (qword_2A1A70658 != -1)
  {
    swift_once();
  }

  type metadata accessor for SummarySharingInformationTileViewController(0);
  (*(v1 + 104))(v3, *MEMORY[0x29EDC3790], v30[0]);

  sub_29E4FB350();
  sub_29E4FB370();
  sub_29E4FB3B0();
  sub_29E4FC350();
  v20 = sub_29E4FC3B0();
  v21 = sub_29E4FC940();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35[0] = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_29E4F68F4(0x65466E6967756C50, 0xEE006D6574496465, v35);
    *(v22 + 12) = 2080;
    swift_beginAccess();
    sub_29E4B8C84(&qword_2A1A70BB8, MEMORY[0x29EDC3840], MEMORY[0x29EDC3848]);
    v24 = v32;
    v25 = sub_29E4FCF60();
    v27 = sub_29E4F68F4(v25, v26, v35);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_29E494000, v20, v21, "[%s] Created first time user feed item: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v23, -1, -1);
    MEMORY[0x29ED8BDB0](v22, -1, -1);

    v19(v11, v34);
  }

  else
  {

    v19(v11, v34);
    v24 = v32;
  }

  swift_beginAccess();
  v28 = v31;
  (*(v31 + 16))(v33, v6, v24);
  return (*(v28 + 8))(v6, v24);
}

uint64_t sub_29E4B7568@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v136 = a7;
  v122 = a6;
  v123 = a5;
  v119 = a4;
  v118 = a3;
  v117 = a2;
  v132 = a9;
  v126 = sub_29E4FB320();
  v124 = *(v126 - 8);
  MEMORY[0x2A1C7C4A8](v126);
  v125 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E4FB460();
  v130 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v145 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E4FB240();
  v138 = *(v14 - 8);
  v139 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v137 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E4FBAA0();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v141 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v116 = &v113 - v21;
  v115 = v22;
  MEMORY[0x2A1C7C4A8](v20);
  v24 = &v113 - v23;
  v143 = sub_29E4FC3C0();
  v25 = *(v143 - 8);
  v26 = MEMORY[0x2A1C7C4A8](v143);
  v128 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v114 = &v113 - v29;
  MEMORY[0x2A1C7C4A8](v28);
  v31 = &v113 - v30;
  sub_29E4FC350();
  v32 = *(v17 + 16);
  v142 = a1;
  v121 = v17 + 16;
  v120 = v32;
  v32(v24, a1, v16);

  v33 = sub_29E4FC3B0();
  v34 = sub_29E4FC940();

  v35 = os_log_type_enabled(v33, v34);
  v131 = v12;
  v129 = a8;
  v135 = v25;
  v133 = v16;
  v127 = v17;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v144 = v37;
    *v36 = 136315650;
    *(v36 + 4) = sub_29E4F68F4(0x65466E6967756C50, 0xEE006D6574496465, &v144);
    LODWORD(v134) = v34;
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_29E4F68F4(v136, a8, &v144);
    *(v36 + 22) = 2080;
    sub_29E4B8C84(&unk_2A184B678, MEMORY[0x29EDC1A38], MEMORY[0x29EDC1A58]);
    v38 = sub_29E4FCF60();
    v40 = v39;
    v113 = *(v17 + 8);
    v113(v24, v16);
    v41 = sub_29E4F68F4(v38, v40, &v144);

    *(v36 + 24) = v41;
    _os_log_impl(&dword_29E494000, v33, v134, "[%s][%s] Creating feed item from SharingEntryProfileInformation: %s", v36, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v37, -1, -1);
    MEMORY[0x29ED8BDB0](v36, -1, -1);

    v134 = *(v135 + 8);
  }

  else
  {

    v113 = *(v17 + 8);
    v113(v24, v16);
    v134 = *(v25 + 8);
  }

  v42 = v134(v31, v143);
  v43 = v142;
  MEMORY[0x29ED8A010](v42);
  v44 = v137;
  sub_29E4FBA80();
  sub_29E4FBA70();

  (*(v138 + 8))(v44, v139);
  v45 = v140;
  sub_29E4FBA90();
  v46 = v141;
  if (v45)
  {
  }

  v140 = 0;
  sub_29E4A2AD8(0, &qword_2A184B670, 0x29EDC7DA8);
  (*(v124 + 104))(v125, *MEMORY[0x29EDC36E8], v126);
  sub_29E4FB350();
  sub_29E4FB370();
  sub_29E4FB3C0();
  v48 = v133;
  sub_29E4FB840();
  sub_29E4FB3D0();
  sub_29E4FB430();
  if (sub_29E4FB9D0())
  {
    v49 = v116;
    v120(v116, v43, v48);
    v50 = v127;
    v51 = (*(v127 + 80) + 16) & ~*(v127 + 80);
    v52 = (v115 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    v56 = v48;
    v57 = v55;
    (*(v50 + 32))(v55 + v51, v49, v56);
    v58 = v117;
    *(v57 + v52) = v117;
    v59 = v118;
    *(v57 + v53) = v118;
    *(v57 + v54) = v119;
    v60 = (v57 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8));
    v61 = v122;
    *v60 = v123;
    v60[1] = v61;
    v62 = v58;
    v63 = v59;

    swift_unknownObjectRetain();
    sub_29E4FB380();
    v64 = v136;
  }

  else
  {
    v65 = sub_29E4FBA20();
    v64 = v136;
    v66 = v127;
    if (v65)
    {
      v67 = v116;
      v120(v116, v43, v48);
      v68 = (*(v66 + 80) + 16) & ~*(v66 + 80);
      v69 = (v115 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
      v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
      v71 = v66;
      v72 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
      v73 = swift_allocObject();
      v74 = v48;
      v75 = v73;
      v76 = v67;
      v64 = v136;
      (*(v71 + 32))(v73 + v68, v76, v74);
      v77 = v117;
      *(v75 + v69) = v117;
      v78 = v118;
      *(v75 + v70) = v118;
      *(v75 + v72) = v119;
      v79 = (v75 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8));
      v80 = v122;
      *v79 = v123;
      v79[1] = v80;
      v81 = v77;
      v82 = v78;

      swift_unknownObjectRetain();
    }

    else if (sub_29E4FBA10() & 1) != 0 || (sub_29E4FBA00())
    {
      v101 = v114;
      sub_29E4FC3A0();
      v120(v46, v43, v48);
      v102 = sub_29E4FC3B0();
      v103 = sub_29E4FC940();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v144 = v105;
        *v104 = 136315394;
        *(v104 + 4) = sub_29E4F68F4(0x65466E6967756C50, 0xEE006D6574496465, &v144);
        *(v104 + 12) = 2080;
        v106 = sub_29E4FBA40();
        v108 = v107;
        v113(v46, v133);
        v109 = sub_29E4F68F4(v106, v108, &v144);

        *(v104 + 14) = v109;
        _os_log_impl(&dword_29E494000, v102, v103, "%s Removing any invitation notifications with identifiers %s", v104, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED8BDB0](v105, -1, -1);
        MEMORY[0x29ED8BDB0](v104, -1, -1);

        v110 = v114;
      }

      else
      {

        v113(v46, v48);
        v110 = v101;
      }

      v134(v110, v143);
      v83 = v128;
      swift_getObjectType();
      sub_29E4B8AA4();
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_29E4FDE40;
      *(v111 + 32) = sub_29E4FBA40();
      *(v111 + 40) = v112;
      sub_29E4FB5B0();

      goto LABEL_12;
    }

    sub_29E4FB380();
  }

  v83 = v128;
LABEL_12:
  v84 = sub_29E4FBA50();
  v86 = v145;
  v87 = v129;
  sub_29E4B8494(v145, v84, v85 & 1, v64, v129);
  v88 = sub_29E4FB9C0();
  sub_29E4B8770(v86, v88, v89 & 1, v64, v87);
  sub_29E4FC350();

  v90 = sub_29E4FC3B0();
  v91 = sub_29E4FC940();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v144 = v93;
    *v92 = 136315650;
    *(v92 + 4) = sub_29E4F68F4(0x65466E6967756C50, 0xEE006D6574496465, &v144);
    *(v92 + 12) = 2080;
    *(v92 + 14) = sub_29E4F68F4(v64, v87, &v144);
    *(v92 + 22) = 2080;
    swift_beginAccess();
    sub_29E4B8C84(&qword_2A1A70BB8, MEMORY[0x29EDC3840], MEMORY[0x29EDC3848]);
    v94 = v131;
    v95 = sub_29E4FCF60();
    v97 = sub_29E4F68F4(v95, v96, &v144);

    *(v92 + 24) = v97;
    _os_log_impl(&dword_29E494000, v90, v91, "[%s][%s] Created feed item: %s", v92, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v93, -1, -1);
    MEMORY[0x29ED8BDB0](v92, -1, -1);

    v134(v83, v143);
  }

  else
  {

    v134(v83, v143);
    v94 = v131;
  }

  v98 = v145;
  swift_beginAccess();
  v99 = v130;
  v100 = v132;
  (*(v130 + 16))(v132, v98, v94);
  (*(v99 + 56))(v100, 0, 1, v94);
  return (*(v99 + 8))(v98, v94);
}

uint64_t sub_29E4B8404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_29E4E1F5C(a2, a3, a5, a6, a7);
  sub_29E4A2AD8(0, &qword_2A1A6F188, 0x29EDBCCD8);
  sub_29E4AD188();
  sub_29E4FC420();
}

uint64_t sub_29E4B8494(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_29E4FC3C0();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    goto LABEL_7;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_7;
    }

    v13 = sub_29E4FB500();
  }

  else
  {
    v13 = sub_29E4FB530();
  }

  v15 = v13;
  v16 = v14;
  v17 = sub_29E4FB410();
  sub_29E4F70DC(&v28, v15, v16);

  v17(v27, 0);
LABEL_7:
  sub_29E4FB420();
  sub_29E4FC350();

  v18 = sub_29E4FC3B0();
  v19 = sub_29E4FC940();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27[0] = v21;
    *v20 = 136315650;
    *(v20 + 4) = sub_29E4F68F4(0x65466E6967756C50, 0xEE006D6574496465, v27);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_29E4F68F4(a4, a5, v27);
    *(v20 + 22) = 2080;
    v22 = sub_29E4FC8B0();
    v24 = v23;

    v25 = sub_29E4F68F4(v22, v24, v27);

    *(v20 + 24) = v25;
    _os_log_impl(&dword_29E494000, v18, v19, "[%s][%s] Current keywords after adding for HKSharingMessageDirection: %s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v21, -1, -1);
    MEMORY[0x29ED8BDB0](v20, -1, -1);
  }

  else
  {
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_29E4B8770(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_29E4FC3C0();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = sub_29E4FB520();
        v15 = v14;
        v16 = sub_29E4FB410();
        sub_29E4F70DC(&v31, v13, v15);

        v16(v30, 0);
      }
    }

    else
    {
      v17 = sub_29E4FB510();
      v19 = v18;
      v20 = sub_29E4FB410();
      sub_29E4F70DC(&v31, v17, v19);

      v20(v30, 0);
      sub_29E4FB440();
    }
  }

  sub_29E4FB420();
  sub_29E4FC350();

  v21 = sub_29E4FC3B0();
  v22 = sub_29E4FC940();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v30[0] = v24;
    *v23 = 136315650;
    *(v23 + 4) = sub_29E4F68F4(0x65466E6967756C50, 0xEE006D6574496465, v30);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_29E4F68F4(a4, a5, v30);
    *(v23 + 22) = 2080;
    v25 = sub_29E4FC8B0();
    v27 = v26;

    v28 = sub_29E4F68F4(v25, v27, v30);

    *(v23 + 24) = v28;
    _os_log_impl(&dword_29E494000, v21, v22, "[%s][%s] Current keywords after adding for HKSharingStatus: %s", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v24, -1, -1);
    MEMORY[0x29ED8BDB0](v23, -1, -1);
  }

  else
  {
  }

  return (*(v10 + 8))(v12, v9);
}

void sub_29E4B8AA4()
{
  if (!qword_2A1A70BD0)
  {
    v0 = sub_29E4FCF70();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A70BD0);
    }
  }
}

uint64_t sub_29E4B8AF8()
{
  v1 = sub_29E4FBAA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_29E4B8BCC(uint64_t a1)
{
  v3 = *(sub_29E4FBAA0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_29E4B8404(a1, v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_29E4B8C84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E4B8CD0()
{
  v1 = OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_entry;
  v2 = sub_29E4FBAA0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29E4A1754((v0 + OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_authorizationSource));

  return swift_deallocClassInstance();
}

void *sub_29E4B8D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v35 = a3;
  v36 = a6;
  v33 = a5;
  v34 = a1;
  v27 = a2;
  v28 = a4;
  v29 = *v6;
  v8 = sub_29E4FCA60();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E4FCA30();
  MEMORY[0x2A1C7C4A8](v11);
  v12 = sub_29E4FC580();
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v13 = MEMORY[0x29EDCA190];
  v14 = sub_29E4A0E38(MEMORY[0x29EDCA190]);
  sub_29E4C39C4(0);
  v15 = swift_allocObject();
  *(v15 + 32) = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = v14;
  v6[5] = v15;
  v30 = sub_29E4A2AD8(0, &qword_2A1A70790, 0x29EDCA548);
  sub_29E4FC570();
  *&v39 = v13;
  sub_29E4BFA6C(&qword_2A1A6F1C0, 255, MEMORY[0x29EDCA288], MEMORY[0x29EDCA290]);
  v16 = MEMORY[0x29EDCA288];
  sub_29E49684C(0, &qword_2A1A6F228, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
  sub_29E4C3A24(&qword_2A1A6F220, &qword_2A1A6F228, v16);
  sub_29E4FCC70();
  (*(v31 + 104))(v10, *MEMORY[0x29EDCA2A8], v32);
  v17 = v33;
  v6[11] = sub_29E4FCA90();
  v18 = [v17 profileIdentifier];
  v19 = [v18 type];

  if ((v19 - 1) > 1)
  {
    sub_29E4C46EC(v36, sub_29E4C3A88);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v20 = v27;
    v7[2] = v34;
    v7[3] = v20;
    v21 = v36;
    v22 = v28;
    v7[12] = v35;
    v7[13] = v22;
    v7[4] = v17;
    sub_29E4C3AF0(v21, &v37);
    if (v38)
    {
      sub_29E4C46EC(v21, sub_29E4C3A88);
      sub_29E498334(&v37, &v39);
    }

    else
    {
      v23 = type metadata accessor for SharingEntryProfileInformationInputSignal.AuthorizationSourceProvider();
      v24 = swift_allocObject();
      v40 = v23;
      v41 = &off_2A24E84C0;
      *&v39 = v24;
      sub_29E4C46EC(v21, sub_29E4C3A88);
      if (v38)
      {
        sub_29E4C46EC(&v37, sub_29E4C3A88);
      }
    }

    sub_29E498334(&v39, (v7 + 6));
  }

  return v7;
}

int64_t sub_29E4B91E4(uint64_t a1)
{
  v2 = v1;
  v4 = 0;
  v62 = *MEMORY[0x29EDCA608];
  sub_29E49684C(0, &qword_2A1A70470, sub_29E4C4ABC, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = v51 - v6;
  sub_29E4C4ABC(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4C45FC(a1, v7, &qword_2A1A70470, sub_29E4C4ABC);
  if ((*(v10 + 6))(v7, 1, v9) == 1)
  {
    sub_29E4C467C(v7, &qword_2A1A70470, sub_29E4C4ABC);
    return MEMORY[0x29EDCA1A0];
  }

  (*(v10 + 4))(v12, v7, v9);
  v14 = sub_29E4FC310();
  v15 = v61;
  v56 = v2;
  v57 = 0;
  if ((v61 & 0xC000000000000001) == 0)
  {
    v32 = *(v61 + 32);
    v13 = ((1 << v32) + 63) >> 6;
    if ((v32 & 0x3Fu) <= 0xD)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

  v55 = v12;
  v13 = MEMORY[0x29EDCA1A0];
  v60 = MEMORY[0x29EDCA1A0];
  sub_29E4FCCA0();
  v16 = sub_29E4FCCD0();
  if (!v16)
  {
LABEL_23:

    v12 = v55;
    goto LABEL_42;
  }

  v17 = v16;
  sub_29E4A2AD8(0, &unk_2A1A6F198, 0x29EDBAE30);
  v18 = v17;
  v12 = MEMORY[0x29EDCA170];
  v4 = &off_29F36A000;
  while (1)
  {
    v58 = v18;
    swift_dynamicCast();
    v19 = v59[0];
    if ([v59[0] status] != 3 && objc_msgSend(v19, sel_status) != 4)
    {
      break;
    }

LABEL_7:
    v18 = sub_29E4FCCD0();
    if (!v18)
    {
      goto LABEL_23;
    }
  }

  v20 = v59[0];
  v21 = *(v13 + 16);
  if (*(v13 + 24) <= v21)
  {
    sub_29E4F7D40(v21 + 1);
  }

  v13 = v60;
  v15 = v20;
  v22 = sub_29E4FCB30();
  v23 = v13 + 56;
  v24 = -1 << *(v13 + 32);
  v25 = v22 & ~v24;
  v26 = v25 >> 6;
  if (((-1 << v25) & ~*(v13 + 56 + 8 * (v25 >> 6))) != 0)
  {
    v27 = __clz(__rbit64((-1 << v25) & ~*(v13 + 56 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
    *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v13 + 48) + 8 * v27) = v20;
    ++*(v13 + 16);
    goto LABEL_7;
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v23 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_22;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_25:
    v55 = v10;
    v51[1] = v51;
    v52 = v13;
    MEMORY[0x2A1C7C4A8](v14);
    v53 = v51 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v53, v33);
    v54 = 0;
    v34 = 0;
    v4 = (v15 + 56);
    v35 = 1 << *(v15 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v15 + 56);
    v13 = (v35 + 63) >> 6;
    v10 = &off_29F36A000;
    while (v37)
    {
      v38 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v39 = v38 | (v34 << 6);
LABEL_36:
      v42 = *(*(v15 + 48) + 8 * v39);
      if ([v42 *(v10 + 321)] == 3)
      {
      }

      else
      {
        v43 = [v42 *(v10 + 321)];
        v44 = v12;
        v45 = v43;

        v46 = v45 == 4;
        v12 = v44;
        v10 = &off_29F36A000;
        if (!v46)
        {
          *&v53[(v39 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v39;
          if (__OFADD__(v54++, 1))
          {
            __break(1u);
LABEL_41:
            v13 = sub_29E4C0190(v53, v52, v54, v15);
            goto LABEL_42;
          }
        }
      }
    }

    v40 = v34;
    v10 = v55;
    while (1)
    {
      v34 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v34 >= v13)
      {
        goto LABEL_41;
      }

      v41 = v4[v34];
      ++v40;
      if (v41)
      {
        v37 = (v41 - 1) & v41;
        v39 = __clz(__rbit64(v41)) | (v34 << 6);
        v10 = &off_29F36A000;
        goto LABEL_36;
      }
    }
  }

  v50 = swift_slowAlloc();
  v13 = sub_29E4C0100(v50, v13, v15, sub_29E4B9868);
  v57 = v4;

  MEMORY[0x29ED8BDB0](v50, -1, -1);
LABEL_42:
  v48 = [*(v56 + 32) profileIdentifier];
  if ([v48 type] == 1)
  {
    (*(v10 + 1))(v12, v9);
  }

  else
  {
    v13 = sub_29E4C3E3C(v13, v48);

    (*(v10 + 1))(v12, v9);
  }

  return v13;
}

uint64_t sub_29E4B98CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2A1C73D48](sub_29E4B98F0, 0, 0);
}

uint64_t sub_29E4B98F0()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_29E4A1710(v1, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_29E4B9A14;

  return v6(v2, v3);
}

uint64_t sub_29E4B9A14(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_29E4B9C30;
  }

  else
  {
    v4 = sub_29E4B9B28;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

void sub_29E4B9B28()
{
  v1 = v0[6];
  if (v1 >> 62)
  {
    v2 = sub_29E4FCCB0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];

  v6 = *(v5 + 40);
  v7 = swift_task_alloc();
  v7[2] = v4;
  v7[3] = v2;
  v7[4] = v5;
  os_unfair_lock_lock(v6 + 8);
  sub_29E4C4F38(&v6[4]);
  os_unfair_lock_unlock(v6 + 8);
  if (!v3)
  {

    v8 = v0[1];

    v8();
  }
}

uint64_t sub_29E4B9C30()
{
  v1 = swift_task_alloc();
  v2 = *(*(v0 + 24) + 40);
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  os_unfair_lock_lock(v2 + 8);
  sub_29E4C4F1C(&v2[4]);
  os_unfair_lock_unlock(v2 + 8);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_29E4B9CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_29E4FB240();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FBA80();
  if (*(*(a1 + 8) + 16) && (sub_29E49ED7C(v7), (v8 & 1) != 0))
  {
    v9 = *(v5 + 8);

    v9(v7, v4);
    swift_beginAccess();
    sub_29E4FB990();
    swift_endAccess();
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  return sub_29E4B9E74(a1);
}

uint64_t sub_29E4B9E74(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v109 = sub_29E4FC3C0();
  v5 = *(v109 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v109);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v92 - v9;
  v11 = sub_29E4FB240();
  v12 = *(v11 - 8);
  v106 = v11;
  v107 = v12;
  MEMORY[0x2A1C7C4A8](v11);
  v105 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E4FC560();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v98 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E4FC580();
  v97 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v96 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_29E4FBAA0();
  MEMORY[0x2A1C7C4A8](v113);
  v112 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != 1)
  {
    sub_29E4FC350();

    v50 = sub_29E4FC3B0();
    v51 = sub_29E4FC920();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = v5;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v53 = 136446210;
      aBlock[9] = v2;
      sub_29E4BFA6C(&unk_2A1A6F620, v55, type metadata accessor for SharingEntryProfileInformationInputSignal, &unk_29E4FF908);
      v56 = sub_29E4FCF60();
      v58 = sub_29E4F68F4(v56, v57, aBlock);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_29E494000, v50, v51, "[%{public}s]: Not updating observer, hasn't received initial anchors", v53, 0xCu);
      sub_29E4A1754(v54);
      MEMORY[0x29ED8BDB0](v54, -1, -1);
      MEMORY[0x29ED8BDB0](v53, -1, -1);

      return (*(v52 + 8))(v8, v109);
    }

    else
    {

      return (*(v5 + 8))(v8, v109);
    }
  }

  v108 = v4;
  v92 = v17;
  v93 = v15;
  v94 = v14;
  v95 = v2;
  v21 = *(a1 + 8);
  v22 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 64);
  v26 = (v23 + 63) >> 6;
  v110 = (v19 + 16);
  v104 = v19;
  v27 = (v19 + 8);
  v111 = v21;
  result = swift_bridgeObjectRetain_n();
  v29 = 0;
  while (v25)
  {
    v30 = v29;
LABEL_11:
    v31 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v32 = *(*(v111 + 56) + ((v30 << 9) | (8 * v31)));
    v33 = OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_entry;
    swift_beginAccess();
    v34 = v32 + v33;
    v35 = v112;
    v36 = v113;
    (*v110)(v112, v34, v113);
    sub_29E4FB980();
    v38 = v37;
    result = (*v27)(v35, v36);
    if (v38)
    {

      sub_29E4FC350();
      v39 = v95;

      v40 = sub_29E4FC3B0();
      v41 = v10;
      v42 = sub_29E4FC920();

      if (os_log_type_enabled(v40, v42))
      {
        v43 = v5;
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        aBlock[0] = v45;
        *v44 = 136446210;
        aBlock[6] = v39;
        sub_29E4BFA6C(&unk_2A1A6F620, v46, type metadata accessor for SharingEntryProfileInformationInputSignal, &unk_29E4FF908);
        v47 = sub_29E4FCF60();
        v49 = sub_29E4F68F4(v47, v48, aBlock);

        *(v44 + 4) = v49;
        _os_log_impl(&dword_29E494000, v40, v42, "[%{public}s]: Not updating observer, an entry contains no topics sharing", v44, 0xCu);
        sub_29E4A1754(v45);
        MEMORY[0x29ED8BDB0](v45, -1, -1);
        MEMORY[0x29ED8BDB0](v44, -1, -1);

        return (*(v43 + 8))(v41, v109);
      }

      else
      {

        return (*(v5 + 8))(v41, v109);
      }
    }
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v30 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v30);
    ++v29;
    if (v25)
    {
      v29 = v30;
      goto LABEL_11;
    }
  }

  v59 = v111;

  sub_29E4C5AC8(0, &qword_2A1A6F128, MEMORY[0x29EDC1A38], MEMORY[0x29EDC9E70]);
  result = sub_29E4FCE00();
  v60 = result;
  v61 = 0;
  v62 = 1 << *(v59 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v59 + 64);
  v65 = (v62 + 63) >> 6;
  v102 = v107 + 16;
  v101 = result + 64;
  v100 = v107 + 32;
  v99 = v104 + 32;
  v103 = result;
  v66 = v104;
  if (!v64)
  {
LABEL_20:
    v68 = v61;
    while (1)
    {
      v61 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        goto LABEL_32;
      }

      if (v61 >= v65)
      {
        v85 = v95;
        v86 = swift_allocObject();
        *(v86 + 16) = v85;
        *(v86 + 24) = v60;
        aBlock[4] = sub_29E4C4F58;
        aBlock[5] = v86;
        aBlock[0] = MEMORY[0x29EDCA5F8];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_29E4BB1B0;
        aBlock[3] = &unk_2A24E8570;
        v87 = _Block_copy(aBlock);

        v88 = v96;
        sub_29E4FC570();
        v114 = MEMORY[0x29EDCA190];
        sub_29E4BFA6C(&qword_2A1A70428, 255, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
        v89 = MEMORY[0x29EDCA248];
        sub_29E49684C(0, &qword_2A1A6F240, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
        sub_29E4C3A24(&qword_2A1A6F238, &qword_2A1A6F240, v89);
        v90 = v98;
        v91 = v94;
        sub_29E4FCC70();
        MEMORY[0x29ED8B0B0](0, v88, v90, v87);
        _Block_release(v87);
        (*(v93 + 8))(v90, v91);
        (*(v97 + 8))(v88, v92);
      }

      v69 = *(v22 + 8 * v61);
      ++v68;
      if (v69)
      {
        v67 = __clz(__rbit64(v69));
        v108 = (v69 - 1) & v69;
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v67 = __clz(__rbit64(v64));
    v108 = (v64 - 1) & v64;
LABEL_25:
    v70 = v67 | (v61 << 6);
    v71 = v111;
    v72 = *(v111 + 48);
    v74 = v106;
    v73 = v107;
    v109 = *(v107 + 72) * v70;
    v75 = v105;
    (*(v107 + 16))(v105, v72 + v109, v106);
    v76 = *(*(v71 + 56) + 8 * v70);
    v77 = OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_entry;
    swift_beginAccess();
    v78 = v76 + v77;
    v80 = v112;
    v79 = v113;
    (*(v66 + 16))(v112, v78, v113);
    *(v101 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
    v81 = *(v73 + 32);
    v60 = v103;
    v81(*(v103 + 48) + v109, v75, v74);
    result = (*(v66 + 32))(*(v60 + 56) + *(v66 + 72) * v70, v80, v79);
    v82 = *(v60 + 16);
    v83 = __OFADD__(v82, 1);
    v84 = v82 + 1;
    if (v83)
    {
      break;
    }

    *(v60 + 16) = v84;
    v64 = v108;
    if (!v108)
    {
      goto LABEL_20;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_29E4BA9CC(uint64_t a1)
{
  v2 = sub_29E4FB240();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FBA80();
  if (*(*(a1 + 8) + 16) && (sub_29E49ED7C(v5), (v6 & 1) != 0))
  {
    v7 = *(v3 + 8);

    v7(v5, v2);
    swift_beginAccess();
    sub_29E4FB990();
    swift_endAccess();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }

  return sub_29E4B9E74(a1);
}

uint64_t sub_29E4BAB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x29EDCA398];
  sub_29E49684C(0, &qword_2A184B728, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = v25 - v11;
  sub_29E4C45FC(a3, v25 - v11, &qword_2A184B728, v9);
  v13 = sub_29E4FC880();
  v14 = *(v13 - 8);
  LODWORD(v9) = (*(v14 + 48))(v12, 1, v13);

  if (v9 == 1)
  {
    sub_29E4C467C(v12, &qword_2A184B728, MEMORY[0x29EDCA398]);
  }

  else
  {
    sub_29E4FC870();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_29E4FC810();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_29E4FC720() + 32;
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

      sub_29E4C467C(a3, &qword_2A184B728, MEMORY[0x29EDCA398]);

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

  sub_29E4C467C(a3, &qword_2A184B728, MEMORY[0x29EDCA398]);
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

void sub_29E4BAE88(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_29E4FCCA0();
    sub_29E4A2AD8(0, &unk_2A1A6F198, 0x29EDBAE30);
    sub_29E4C4BB4(&qword_2A1A6F190, MEMORY[0x29EDCA2F0]);
    sub_29E4FC8D0();
    v5 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
    v9 = v26;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v21 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v27 = v17;
        v18 = a1(&v27);

        if (v4)
        {
          v19 = v21;
          goto LABEL_24;
        }

        v5 = v21;
        if (v18)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_29E4FCCD0())
        {
          goto LABEL_20;
        }

        sub_29E4A2AD8(0, &unk_2A1A6F198, 0x29EDBAE30);
        swift_dynamicCast();
        v17 = v27;
        v15 = v8;
        v16 = v9;
        if (!v27)
        {
          goto LABEL_21;
        }
      }

      v19 = v21;
LABEL_24:
      sub_29E4C4CA8(v19);
    }

    else
    {
LABEL_21:
      v5 = v21;
LABEL_20:
      sub_29E4C4CA8(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_29E4BB0F0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  type metadata accessor for SharingEntryProfileInformationInputSignal();
  sub_29E4BFA6C(&unk_2A1A6F630, v2, type metadata accessor for SharingEntryProfileInformationInputSignal, &unk_29E4FF930);

  sub_29E4FC280();
}

uint64_t sub_29E4BB1B0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_29E4BB1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  sub_29E49684C(0, &qword_2A184B728, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = v26 - v6;
  v8 = sub_29E4FBAA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v12 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v11);
  v15 = v26 - v14;
  v16 = *(a1 + 8);
  if (*(v16 + 16))
  {
    result = sub_29E49ED7C(a2);
    if (v17)
    {
      v18 = *(*(v16 + 56) + 8 * result);
      v19 = OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_entry;
      v26[0] = v7;
      v26[1] = v18;
      v20 = v18;
      swift_beginAccess();
      v21 = *(v9 + 16);
      v21(v15, v20 + v19, v8);
      sub_29E4A76F0(v20 + OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_authorizationSource, v29);
      v22 = sub_29E4FC880();
      v23 = v26[0];
      (*(*(v22 - 8) + 56))(v26[0], 1, 1, v22);
      sub_29E4A76F0(v29, v28);
      v21(v12, v15, v8);
      v24 = (*(v9 + 80) + 80) & ~*(v9 + 80);
      v25 = swift_allocObject();
      *(v25 + 2) = 0;
      *(v25 + 3) = 0;
      sub_29E498334(v28, (v25 + 32));
      *(v25 + 9) = v27;
      (*(v9 + 32))(&v25[v24], v12, v8);

      sub_29E4BAB40(0, 0, v23, &unk_29E4FFAA0, v25);

      sub_29E4A1754(v29);
      return (*(v9 + 8))(v15, v8);
    }
  }

  return result;
}

uint64_t sub_29E4BB500(uint64_t a1)
{
  v39 = sub_29E4FBAA0();
  v37 = *(v39 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8](v39);
  v36 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E49684C(0, &qword_2A184B728, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v35 = &v30 - v4;
  v5 = sub_29E4FB240();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  sub_29E4FBA80();
  v9 = objc_allocWithZone(MEMORY[0x29EDBADC8]);
  v10 = sub_29E4FB210();
  v11 = [v9 initForInvitationUUID_];
  v32 = v11;

  v12 = *(v6 + 8);
  v12(v8, v5);
  sub_29E4FBA80();
  v13 = type metadata accessor for SharingEntryProfileInformationInputSignal.AuthorizationObserver(0);
  v14 = objc_allocWithZone(v13);
  swift_weakInit();
  (*(v6 + 16))(v14 + OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC821AuthorizationObserver_uuid, v8, v5);
  swift_weakAssign();
  v43.receiver = v14;
  v43.super_class = v13;
  v15 = objc_msgSendSuper2(&v43, sel_init);
  v12(v8, v5);
  v33 = v15;
  swift_weakAssign();
  swift_getObjectType();
  v16 = sub_29E4FB2B0();
  v17 = [objc_allocWithZone(MEMORY[0x29EDBADC0]) initWithHealthStore:v16 recipientIdentifier:v11];
  v42[3] = sub_29E4A2AD8(0, &unk_2A184B730, 0x29EDBADC0);
  v42[4] = &off_2A24E8420;

  v42[0] = v17;
  [v17 addObserver_];
  v18 = sub_29E4FC880();
  v19 = v35;
  (*(*(v18 - 8) + 56))(v35, 1, 1, v18);
  sub_29E4A76F0(v42, v41);
  v20 = v37;
  v31 = *(v37 + 16);
  v21 = v36;
  v22 = v34;
  v23 = v39;
  v31(v36, v34, v39);
  v24 = v20;
  v25 = (*(v20 + 80) + 80) & ~*(v20 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  sub_29E498334(v41, (v26 + 32));
  *(v26 + 9) = v40;
  v27 = *(v24 + 32);
  v27(&v26[v25], v21, v23);

  sub_29E4BAB40(0, 0, v19, &unk_29E4FFA80, v26);

  v31(v21, v22, v23);
  sub_29E4A76F0(v42, v41);
  type metadata accessor for SharingEntryProfileInformationInputSignal.SharingEntry(0);
  v28 = swift_allocObject();
  v27((v28 + OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_entry), v21, v23);
  sub_29E498334(v41, v28 + OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_authorizationSource);
  *(v28 + OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_authorizationObserver) = v33;
  sub_29E4A1754(v42);
  return v28;
}

void *sub_29E4BB9FC(uint64_t a1, uint64_t a2)
{
  v101 = a1;
  sub_29E4C4568(0);
  v100 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v104 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_29E4FB240();
  v5 = *(v114 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v114);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v109 = &v90 - v9;
  sub_29E49684C(0, &qword_2A1A70580, MEMORY[0x29EDC1A38], MEMORY[0x29EDC9C68]);
  v11 = MEMORY[0x2A1C7C4A8](v10 - 8);
  v93 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v103 = &v90 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v110 = &v90 - v15;
  v16 = sub_29E4FBAA0();
  v17 = MEMORY[0x2A1C7C4A8](v16);
  v117 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v91 = &v90 - v20;
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v23 = &v90 - v22;
  MEMORY[0x2A1C7C4A8](v21);
  v105 = &v90 - v25;
  v26 = a2 + 64;
  v27 = 1 << *(a2 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(a2 + 64);
  v30 = (v27 + 63) >> 6;
  v116 = v24 + 16;
  v106 = v24 + 56;
  v107 = v5;
  v113 = (v5 + 8);
  v97 = (v24 + 48);
  v108 = (v24 + 32);
  v115 = v24;
  v112 = (v24 + 8);
  v102 = a2;

  v31 = 0;
  v111 = MEMORY[0x29EDCA190];
  v98 = a2 + 64;
  v99 = v8;
  v95 = v30;
  v96 = v23;
  if (v29)
  {
    while (1)
    {
LABEL_12:
      while (1)
      {
        v39 = v115;
        v40 = *(v115 + 72);
        v41 = *(v115 + 16);
        v42 = v105;
        v41(v105, *(v102 + 56) + v40 * (__clz(__rbit64(v29)) | (v31 << 6)), v16);
        v43 = v110;
        v41(v110, v42, v16);
        v44 = *(v39 + 56);
        v45 = 1;
        v44(v43, 0, 1, v16);
        v46 = v109;
        sub_29E4FBA80();
        v47 = v101;
        v48 = *(v101 + 16);
        v94 = v40;
        if (v48 && (v49 = sub_29E49ED7C(v46), (v50 & 1) != 0))
        {
          v51 = *(v47 + 56) + v49 * v40;
          v52 = v103;
          v41(v103, v51, v16);
          v45 = 0;
        }

        else
        {
          v52 = v103;
        }

        v29 &= v29 - 1;
        (*v113)(v109, v114);
        v44(v52, v45, 1, v16);
        v53 = v52;
        v54 = *(v100 + 48);
        v55 = MEMORY[0x29EDC1A38];
        v56 = v110;
        v57 = v104;
        sub_29E4C45FC(v110, v104, &qword_2A1A70580, MEMORY[0x29EDC1A38]);
        v58 = v55;
        v59 = v57;
        sub_29E4C45FC(v53, v57 + v54, &qword_2A1A70580, v58);
        v60 = *v97;
        if ((*v97)(v59, 1, v16) == 1)
        {
          break;
        }

        v61 = v93;
        sub_29E4C45FC(v59, v93, &qword_2A1A70580, MEMORY[0x29EDC1A38]);
        if (v60(v59 + v54, 1, v16) == 1)
        {
          v62 = MEMORY[0x29EDC1A38];
          sub_29E4C467C(v103, &qword_2A1A70580, MEMORY[0x29EDC1A38]);
          v63 = v62;
          v34 = v104;
          sub_29E4C467C(v110, &qword_2A1A70580, v63);
          v36 = v112;
          (*v112)(v61, v16);
          v26 = v98;
          v8 = v99;
          v23 = v96;
          goto LABEL_6;
        }

        v64 = v91;
        (*v108)(v91, v59 + v54, v16);
        sub_29E4BFA6C(&qword_2A184B710, 255, MEMORY[0x29EDC1A38], MEMORY[0x29EDC1A48]);
        v92 = sub_29E4FC680();
        v37 = *v112;
        (*v112)(v64, v16);
        v65 = MEMORY[0x29EDC1A38];
        sub_29E4C467C(v103, &qword_2A1A70580, MEMORY[0x29EDC1A38]);
        sub_29E4C467C(v110, &qword_2A1A70580, v65);
        v37(v61, v16);
        sub_29E4C467C(v59, &qword_2A1A70580, v65);
        v26 = v98;
        v8 = v99;
        v23 = v96;
        if ((v92 & 1) == 0)
        {
          goto LABEL_7;
        }

LABEL_22:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v95;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v111 = sub_29E4A7BF0(0, v111[2] + 1, 1, v111);
        }

        v68 = v111[2];
        v67 = v111[3];
        if (v68 >= v67 >> 1)
        {
          v111 = sub_29E4A7BF0((v67 > 1), v68 + 1, 1, v111);
        }

        v69 = v111;
        v111[2] = v68 + 1;
        (*(v115 + 32))(v69 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + v68 * v94, v105, v16);
        if (!v29)
        {
          goto LABEL_8;
        }
      }

      v32 = MEMORY[0x29EDC1A38];
      sub_29E4C467C(v53, &qword_2A1A70580, MEMORY[0x29EDC1A38]);
      v33 = v32;
      v34 = v104;
      sub_29E4C467C(v56, &qword_2A1A70580, v33);
      v35 = v60(v34 + v54, 1, v16);
      v26 = v98;
      v8 = v99;
      v23 = v96;
      v36 = v112;
      if (v35 == 1)
      {
        sub_29E4C467C(v34, &qword_2A1A70580, MEMORY[0x29EDC1A38]);
        goto LABEL_22;
      }

LABEL_6:
      sub_29E4C46EC(v34, sub_29E4C4568);
      v37 = *v36;
LABEL_7:
      v30 = v95;
      v37(v105, v16);
      if (!v29)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v38 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      result = sub_29E4FCFB0();
      __break(1u);
      return result;
    }

    if (v38 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v38);
    ++v31;
    if (v29)
    {
      v31 = v38;
      goto LABEL_12;
    }
  }

  v70 = v111;
  v110 = v111[2];
  if (v110)
  {
    v71 = 0;
    v109 = v111 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
    v105 = (v115 + 40);
    v106 = v107 + 16;
    v72 = MEMORY[0x29EDCA198];
    while (1)
    {
      if (v71 >= v70[2])
      {
        goto LABEL_47;
      }

      v73 = *(v115 + 72);
      v74 = *(v115 + 16);
      v74(v23, &v109[v73 * v71], v16);
      sub_29E4FBA80();
      v74(v117, v23, v16);
      v75 = swift_isUniquelyReferenced_nonNull_native();
      v118 = v72;
      v77 = sub_29E49ED7C(v8);
      v78 = v72[2];
      v79 = (v76 & 1) == 0;
      v80 = v78 + v79;
      if (__OFADD__(v78, v79))
      {
        goto LABEL_48;
      }

      v81 = v76;
      if (v72[3] >= v80)
      {
        if (v75)
        {
          v72 = v118;
          if (v76)
          {
            goto LABEL_30;
          }
        }

        else
        {
          sub_29E4C2AA8(MEMORY[0x29EDC1A38], &qword_2A1A6F128, MEMORY[0x29EDC1A38]);
          v72 = v118;
          if (v81)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        sub_29E4C0F30(v80, v75, MEMORY[0x29EDC1A38], &qword_2A1A6F128, MEMORY[0x29EDC1A38]);
        v82 = sub_29E49ED7C(v8);
        if ((v81 & 1) != (v83 & 1))
        {
          goto LABEL_50;
        }

        v77 = v82;
        v72 = v118;
        if (v81)
        {
LABEL_30:
          (*v105)(v72[7] + v77 * v73, v117, v16);
          (*v113)(v8, v114);
          (*v112)(v23, v16);
          goto LABEL_31;
        }
      }

      v72[(v77 >> 6) + 8] |= 1 << v77;
      v84 = v107;
      v85 = v114;
      (*(v107 + 16))(v72[6] + *(v107 + 72) * v77, v8, v114);
      (*v108)((v72[7] + v77 * v73), v117, v16);
      (*(v84 + 8))(v8, v85);
      (*v112)(v23, v16);
      v86 = v72[2];
      v87 = __OFADD__(v86, 1);
      v88 = v86 + 1;
      if (v87)
      {
        goto LABEL_49;
      }

      v72[2] = v88;
LABEL_31:
      ++v71;
      v70 = v111;
      if (v110 == v71)
      {
        goto LABEL_45;
      }
    }
  }

  v72 = MEMORY[0x29EDCA198];
LABEL_45:

  return v72;
}

uint64_t sub_29E4BC588(void *a1, uint64_t a2)
{
  sub_29E4C43EC(0, &qword_2A1A6F0F0, MEMORY[0x29EDC9E88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v10 - v7;
  sub_29E4A1710(a1, a1[3]);
  sub_29E4C4280();
  sub_29E4FD080();
  v10[1] = a2;
  sub_29E4C5AC8(0, &qword_2A1A6F2C8, MEMORY[0x29EDC1A38], MEMORY[0x29EDC98E0]);
  sub_29E4C4450();
  sub_29E4FCF50();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_29E4BC720()
{
  sub_29E4FD030();
  MEMORY[0x29ED8B670](0);
  return sub_29E4FD050();
}

uint64_t sub_29E4BC764(uint64_t a1)
{
  sub_29E4FD030();
  MEMORY[0x29ED8B670](0);
  return sub_29E4FD050();
}

uint64_t sub_29E4BC7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29E4FCF80();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29E4BC844(uint64_t a1)
{
  v2 = sub_29E4C4280();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E4BC880(uint64_t a1)
{
  v2 = sub_29E4C4280();

  return MEMORY[0x2A1C73280](a1, v2);
}

void *sub_29E4BC8BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29E4BB9FC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_29E4BC8EC(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *v1;

    v4 = sub_29E4961AC(v3, v2);

    v5 = v4 ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

void *sub_29E4BC95C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_29E4C40B0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_29E4BC9A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(*(result + 8) + 16))
  {
    v4 = result;

    v6 = sub_29E4C5010(a2, a3);

    *(v4 + 8) = v6;
  }

  return result;
}

uint64_t sub_29E4BCA1C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v16 = v1 + 64;
  v17 = v1;
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  for (i = 0; v4; result = sub_29E4A1754(v18))
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = *(*(v17 + 56) + ((v8 << 9) | (8 * v9)));
    sub_29E4A76F0(v10 + OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_authorizationSource, v18);
    v11 = v18[4];
    sub_29E4A1710(v18, v18[3]);
    v12 = *(v10 + OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_authorizationObserver);
    v19 = *(v11 + 16);

    v13 = v12;
    v19();
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      v14 = sub_29E4A0E38(MEMORY[0x29EDCA190]);

      *(a1 + 8) = v14;
      return result;
    }

    v4 = *(v16 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29E4BCBAC()
{
  v1 = *v0;
  v100 = v0;
  v96 = v1;
  v2 = sub_29E4FC3C0();
  v101 = *(v2 - 8);
  v102 = v2;
  v3 = MEMORY[0x2A1C7C4A8](v2);
  v99 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v83 = &v81 - v5;
  v6 = MEMORY[0x29EDC9C68];
  sub_29E49684C(0, &qword_2A1A70530, sub_29E4A1EB4, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v87 = &v81 - v8;
  v9 = MEMORY[0x29EDC34D8];
  sub_29E49684C(0, &qword_2A1A704E8, type metadata accessor for EndSharingRelationshipInputSignal, MEMORY[0x29EDC34D8]);
  v85 = *(v10 - 8);
  v86 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v84 = &v81 - v11;
  sub_29E4A1EB4(0);
  v13 = *(v12 - 8);
  v89 = v12;
  v90 = v13;
  MEMORY[0x2A1C7C4A8](v12);
  v88 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E49684C(0, &qword_2A1A70510, sub_29E4C474C, v6);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v95 = &v81 - v16;
  v17 = sub_29E4FC300();
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v94 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E49684C(0, &qword_2A1A704C8, type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal, v9);
  v92 = *(v19 - 8);
  v93 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v81 - v20;
  sub_29E4C474C(0);
  v97 = *(v22 - 8);
  v98 = v22;
  MEMORY[0x2A1C7C4A8](v22);
  v91 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E49684C(0, &qword_2A1A70470, sub_29E4C4ABC, v6);
  v25 = MEMORY[0x2A1C7C4A8](v24 - 8);
  v82 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25);
  v28 = &v81 - v27;
  sub_29E49684C(0, &qword_2A1A70500, MEMORY[0x29EDC3B28], v9);
  v30 = v29;
  v31 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29);
  v33 = &v81 - v32;
  sub_29E4C4ABC(0);
  v35 = v34;
  v36 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34);
  v38 = &v81 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FB610();
  sub_29E4FC160();
  sub_29E4BFA6C(&qword_2A1A70648, 255, MEMORY[0x29EDC3B28], MEMORY[0x29EDC3B20]);
  sub_29E4FC2C0();
  (*(v31 + 8))(v33, v30);
  v39 = v35;
  v40 = v36;
  if ((*(v36 + 6))(v28, 1, v39) == 1)
  {
    sub_29E4C467C(v28, &qword_2A1A70470, sub_29E4C4ABC);
LABEL_7:
    v50 = v99;
    v49 = v100;
    sub_29E4FC350();

    v51 = sub_29E4FC3B0();
    v52 = sub_29E4FC920();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v103 = v49;
      v104[0] = v54;
      *v53 = 136446210;
      sub_29E4BFA6C(&unk_2A1A6F620, v55, type metadata accessor for SharingEntryProfileInformationInputSignal, &unk_29E4FF908);
      v56 = sub_29E4FCF60();
      v58 = sub_29E4F68F4(v56, v57, v104);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_29E494000, v51, v52, "[%{public}s]: Missing anchor for dependent signals", v53, 0xCu);
      sub_29E4A1754(v54);
      MEMORY[0x29ED8BDB0](v54, -1, -1);
      MEMORY[0x29ED8BDB0](v53, -1, -1);
    }

    return (*(v101 + 8))(v50, v102);
  }

  (*(v36 + 4))(v38, v28, v39);
  sub_29E4FC2F0();
  type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal();
  sub_29E4FC180();
  sub_29E4BFA6C(qword_2A1A6F3D0, 255, type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal, &protocol conformance descriptor for SharingRelationshipLatestTransactionDatesInputSignal);
  v41 = v95;
  sub_29E4FC2C0();
  (*(v92 + 1))(v21, v93);
  v42 = v97;
  v43 = v98;
  if ((*(v97 + 48))(v41, 1, v98) == 1)
  {
    (*(v40 + 1))(v38, v39);
    sub_29E4C467C(v41, &qword_2A1A70510, sub_29E4C474C);
    goto LABEL_7;
  }

  v92 = v38;
  v93 = v39;
  v44 = v91;
  (*(v42 + 32))(v91, v41, v43);
  sub_29E4FC2F0();
  type metadata accessor for EndSharingRelationshipInputSignal();
  v45 = v84;
  sub_29E4FC180();
  sub_29E4BFA6C(qword_2A1A6FC38, 255, type metadata accessor for EndSharingRelationshipInputSignal, &unk_29E4FEF6C);
  v46 = v87;
  sub_29E4FC2C0();
  (*(v85 + 8))(v45, v86);
  v48 = v89;
  v47 = v90;
  if ((*(v90 + 48))(v46, 1, v89) == 1)
  {
    (*(v40 + 1))(v92, v93);
    sub_29E4C467C(v46, &qword_2A1A70530, sub_29E4A1EB4);
    (*(v42 + 8))(v44, v43);
    goto LABEL_7;
  }

  (*(v47 + 32))(v88, v46, v48);
  v60 = v82;
  v61 = v93;
  (*(v40 + 2))(v82, v92, v93);
  v99 = v40;
  (*(v40 + 7))(v60, 0, 1, v61);
  v62 = v100;
  v63 = sub_29E4B91E4(v60);
  sub_29E4C467C(v60, &qword_2A1A70470, sub_29E4C4ABC);
  v64 = v83;
  sub_29E4FC350();

  v65 = sub_29E4FC3B0();
  v66 = sub_29E4FC940();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v103 = v62;
    v104[0] = v68;
    *v67 = 136446467;
    sub_29E4BFA6C(&unk_2A1A6F620, v69, type metadata accessor for SharingEntryProfileInformationInputSignal, &unk_29E4FF908);
    v70 = sub_29E4FCF60();
    v72 = sub_29E4F68F4(v70, v71, v104);

    *(v67 + 4) = v72;
    *(v67 + 12) = 2081;
    sub_29E4A2AD8(0, &unk_2A1A6F198, 0x29EDBAE30);
    sub_29E4C4BB4(&qword_2A1A6F190, MEMORY[0x29EDCA2F0]);
    v73 = sub_29E4FC8B0();
    v75 = sub_29E4F68F4(v73, v74, v104);

    *(v67 + 14) = v75;
    _os_log_impl(&dword_29E494000, v65, v66, "[%{public}s]: Relevant entries: %{private}s", v67, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v68, -1, -1);
    v76 = v67;
    v47 = v90;
    MEMORY[0x29ED8BDB0](v76, -1, -1);
  }

  v77 = (*(v101 + 8))(v64, v102);
  v78 = v62[5];
  MEMORY[0x2A1C7C4A8](v77);
  v79 = v91;
  *(&v81 - 4) = v63;
  *(&v81 - 3) = v79;
  v80 = v88;
  *(&v81 - 2) = v62;
  *(&v81 - 1) = v80;
  os_unfair_lock_lock(v78 + 8);
  sub_29E4C4C68(&v78[4]);
  os_unfair_lock_unlock(v78 + 8);

  (*(v99 + 1))(v92, v93);
  (*(v47 + 8))(v80, v48);
  return (*(v97 + 8))(v79, v98);
}

uint64_t sub_29E4BD950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v170 = a5;
  v154[2] = a4;
  v156 = a3;
  v179 = a2;
  v6 = MEMORY[0x29EDC9C68];
  sub_29E49684C(0, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
  v8 = MEMORY[0x2A1C7C4A8](v7 - 8);
  v169 = v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v178 = v154 - v10;
  sub_29E49684C(0, &qword_2A1A70580, MEMORY[0x29EDC1A38], v6);
  v12 = MEMORY[0x2A1C7C4A8](v11 - 8);
  v168 = v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v177 = v154 - v14;
  v167 = sub_29E4FBAA0();
  v158 = *(v167 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v167 - 8);
  v180 = v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v171 = v154 - v17;
  sub_29E49684C(0, qword_2A1A70838, MEMORY[0x29EDB9BC8], v6);
  v19 = MEMORY[0x2A1C7C4A8](v18 - 8);
  v166 = v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v157 = v154 - v22;
  MEMORY[0x2A1C7C4A8](v21);
  v183 = v154 - v23;
  v24 = sub_29E4FB240();
  v25 = MEMORY[0x2A1C7C4A8](v24);
  v154[0] = v154 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v165 = v154 - v28;
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v164 = v154 - v30;
  v31 = MEMORY[0x2A1C7C4A8](v29);
  v172 = v154 - v32;
  v33 = MEMORY[0x2A1C7C4A8](v31);
  v35 = (v154 - v34);
  v36 = MEMORY[0x2A1C7C4A8](v33);
  v161 = (v154 - v37);
  v38 = MEMORY[0x2A1C7C4A8](v36);
  v176 = v154 - v39;
  MEMORY[0x2A1C7C4A8](v38);
  v174 = (v154 - v41);
  *a1 = 1;
  v173 = a1;
  v42 = *(a1 + 8);
  v43 = v42 + 64;
  v44 = 1 << *(v42 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v42 + 64);
  v47 = (v44 + 63) >> 6;
  v182 = (v40 + 16);
  v184 = (v40 + 32);
  v185 = v40;
  v187 = (v40 + 8);
  v48 = v42;

  v162 = MEMORY[0x29EDCA190];
  v186 = v24;
  v181 = v35;
  v163 = v43;
  v50 = 0;
  if (v46)
  {
    while (1)
    {
      v51 = v50;
LABEL_8:
      v52 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v53 = v48;
      v54 = v185;
      v55 = v186;
      v56 = v185[9];
      (v185[2])(v176, v48[6] + v56 * (v52 | (v51 << 6)), v186);
      v57 = v54[4];
      v58 = v174;
      v59 = v57();
      MEMORY[0x2A1C7C4A8](v59);
      v154[-2] = v58;
      v60 = v175;
      sub_29E4BAE88(sub_29E4C4C88, &v154[-4], v179);
      v175 = v60;
      if (v61)
      {
        result = (*v187)(v58, v55);
        v50 = v51;
        v24 = v55;
        v48 = v53;
        v35 = v181;
        v43 = v163;
        if (!v46)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v62 = v55;
        v63 = v57;
        (v57)(v161, v58, v62);
        v64 = v162;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v189[0] = v64;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29E4C3534(0, *(v64 + 16) + 1, 1);
          v64 = v189[0];
        }

        v48 = v53;
        v67 = *(v64 + 16);
        v66 = *(v64 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_29E4C3534((v66 > 1), v67 + 1, 1);
          v64 = v189[0];
        }

        *(v64 + 16) = v67 + 1;
        v68 = *(v185 + 80);
        v162 = v64;
        v24 = v186;
        result = (v63)(v64 + ((v68 + 32) & ~v68) + v67 * v56, v161, v186);
        v35 = v181;
        v43 = v163;
        v50 = v51;
        if (!v46)
        {
          goto LABEL_5;
        }
      }
    }
  }

  while (1)
  {
LABEL_5:
    v51 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
LABEL_78:
      __break(1u);
      return result;
    }

    if (v51 >= v47)
    {
      break;
    }

    v46 = *(v43 + 8 * v51);
    ++v50;
    if (v46)
    {
      goto LABEL_8;
    }
  }

  v69 = *(v162 + 16);
  if (v69)
  {
    v70 = v162 + ((*(v185 + 80) + 32) & ~*(v185 + 80));
    v71 = v185[9];
    v184 = v185[2];
    v176 = v71;
    v184(v35, v70, v24);
    while (1)
    {
      if (v48[2] && (v72 = sub_29E49ED7C(v35), (v73 & 1) != 0))
      {
        v185 = v48;
        v74 = *(v48[7] + 8 * v72);
        sub_29E4A76F0(v74 + OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_authorizationSource, v189);
        v75 = v191;
        sub_29E4A1710(v189, v190);
        v76 = *(v74 + OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_authorizationObserver);
        v77 = *(v75 + 16);

        v78 = v76;
        v77();
        v79 = v185;
        v35 = v181;

        sub_29E4A1754(v189);
        v48 = v79;
        v80 = sub_29E49ED7C(v35);
        if (v81)
        {
          v82 = v80;
          v185 = v74;
          v83 = v173;
          v84 = swift_isUniquelyReferenced_nonNull_native();
          v85 = *(v83 + 8);
          v189[0] = v85;
          v24 = v186;
          if (!v84)
          {
            sub_29E4C2A54();
            v85 = v189[0];
          }

          v71 = v176;
          v86 = *v187;
          (*v187)((*(v85 + 48) + v82 * v176), v24);

          sub_29E4C19E0(v82, v85);

          v86(v35, v24);
          *(v173 + 8) = v85;
          v48 = v85;
        }

        else
        {
          v24 = v186;
          (*v187)(v35, v186);

          v71 = v176;
        }
      }

      else
      {
        (*v187)(v35, v24);
      }

      v70 += v71;
      if (!--v69)
      {
        break;
      }

      v184(v35, v70, v24);
    }
  }

  v87 = v172;
  if ((v179 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_29E4FCCA0();
    sub_29E4A2AD8(0, &unk_2A1A6F198, 0x29EDBAE30);
    sub_29E4C4BB4(&qword_2A1A6F190, MEMORY[0x29EDCA2F0]);
    sub_29E4FC8D0();
    result = v189[0];
    v88 = v189[1];
    v89 = v189[2];
    v90 = v190;
    v91 = v191;
  }

  else
  {
    v92 = -1 << *(v179 + 32);
    v88 = v179 + 56;
    v93 = ~v92;
    v94 = -v92;
    if (v94 < 64)
    {
      v95 = ~(-1 << v94);
    }

    else
    {
      v95 = -1;
    }

    v91 = v95 & *(v179 + 56);

    v89 = v93;
    v90 = 0;
  }

  v154[1] = v89;
  v96 = (v89 + 64) >> 6;
  v155 = (v158 + 2);
  v161 = (v158 + 7);
  v160 = (v158 + 6);
  v174 = (v158 + 1);
  v159 = (v158 + 4);
  v158 += 3;
  v179 = result;
  v163 = v88;
  v162 = v96;
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v97 = sub_29E4FCCD0();
    if (!v97)
    {
      break;
    }

    v192 = v97;
    sub_29E4A2AD8(0, &unk_2A1A6F198, 0x29EDBAE30);
    swift_dynamicCast();
    v98 = v188;
    i = v90;
    v176 = v91;
    if (!v188)
    {
      break;
    }

    while (1)
    {
      v102 = [v98 UUID];
      sub_29E4FB230();

      v103 = v48[2];
      v185 = v48;
      if (v103)
      {
        v104 = sub_29E49ED7C(v87);
        v105 = v164;
        if (v106)
        {
          v107 = *v187;
          v184 = *(v48[7] + 8 * v104);

          v181 = v107;
          (v107)(v87, v24);
        }

        else
        {
          v181 = *v187;
          v181(v87, v24);
          v184 = 0;
        }
      }

      else
      {
        v181 = *v187;
        v181(v87, v24);
        v184 = 0;
        v105 = v164;
      }

      v108 = sub_29E4FB1E0();
      v109 = *(v108 - 8);
      v110 = *(v109 + 56);
      v110(v183, 1, 1, v108);
      v182 = v98;
      v111 = [v98 profileIdentifier];
      v112 = v177;
      if (v111)
      {
        v113 = v111;
        sub_29E4C474C(0);
        sub_29E4FC0C0();
        v114 = v188;
        v115 = [v113 identifier];
        sub_29E4FB230();

        if (v114[2])
        {
          v116 = sub_29E49ED7C(v105);
          v117 = v183;
          if (v118)
          {
            (*(v109 + 16))(v157, v114[7] + *(v109 + 72) * v116, v108);

            v181(v105, v186);
            sub_29E4C467C(v117, qword_2A1A70838, MEMORY[0x29EDB9BC8]);

            v119 = 0;
          }

          else
          {

            v181(v105, v186);
            sub_29E4C467C(v117, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
            v119 = 1;
          }

          v120 = v117;
        }

        else
        {

          v181(v105, v186);
          v120 = v183;
          sub_29E4C467C(v183, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
          v119 = 1;
        }

        v112 = v177;
        v121 = v157;
        v110(v157, v119, 1, v108);
        sub_29E496A9C(v121, v120, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
      }

      v122 = v184;
      if (v184)
      {
        v123 = OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_entry;
        swift_beginAccess();
        v124 = v167;
        (*v155)(v112, v122 + v123, v167);
        v125 = 0;
        v126 = v178;
      }

      else
      {
        v125 = 1;
        v126 = v178;
        v124 = v167;
      }

      v127 = v186;
      (*v161)(v112, v125, 1, v124);
      sub_29E4A1EB4(0);
      sub_29E4FC0C0();
      v128 = v188;
      v129 = [v182 UUID];
      v130 = v165;
      sub_29E4FB230();

      if (v128[2] && (v131 = sub_29E49ED7C(v130), (v132 & 1) != 0))
      {
        v133 = v131;
        v134 = v128[7];
        v135 = sub_29E4FB910();
        v136 = *(v135 - 8);
        (*(v136 + 16))(v178, v134 + *(v136 + 72) * v133, v135);
        v181(v130, v127);

        v137 = v177;
        (*(v136 + 56))(v178, 0, 1, v135);
        v126 = v178;
      }

      else
      {
        v138 = v127;
        v137 = v112;

        v181(v130, v138);
        v139 = sub_29E4FB910();
        (*(*(v139 - 8) + 56))(v126, 1, 1, v139);
      }

      v140 = v182;
      sub_29E4FB970();
      sub_29E4C45FC(v183, v166, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
      sub_29E4FB9A0();
      sub_29E4C45FC(v126, v169, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
      sub_29E4FB960();
      v141 = v168;
      sub_29E4C45FC(v137, v168, &qword_2A1A70580, MEMORY[0x29EDC1A38]);
      if ((*v160)(v141, 1, v124) == 1)
      {
        sub_29E4C467C(v126, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
        sub_29E4C467C(v137, &qword_2A1A70580, MEMORY[0x29EDC1A38]);
        v142 = v141;
      }

      else
      {
        sub_29E4FB980();
        v143 = v141;
        v145 = v144;
        (*v174)(v143, v124);
        if ((v145 & 1) == 0)
        {
          sub_29E4FB990();
        }

        sub_29E4C467C(v126, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
        v142 = v137;
      }

      v146 = v184;
      sub_29E4C467C(v142, &qword_2A1A70580, MEMORY[0x29EDC1A38]);
      v147 = v171;
      (*v159)(v171, v180, v124);
      v87 = v172;
      v24 = v186;
      if (v146)
      {

        sub_29E4C467C(v183, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
        v148 = OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_entry;
        swift_beginAccess();
        (*v158)(v146 + v148, v147, v124);
        swift_endAccess();

        (*v174)(v147, v124);
        v90 = i;
        v91 = v176;
        result = v179;
        v48 = v185;
      }

      else
      {
        v149 = [v140 UUID];
        v150 = v154[0];
        sub_29E4FB230();

        v151 = sub_29E4BB500(v147);
        v152 = v173;
        v153 = swift_isUniquelyReferenced_nonNull_native();
        v188 = *(v152 + 8);
        sub_29E4C24F4(v151, v150, v153, sub_29E4C2A54, sub_29E4C06B4);
        v181(v150, v24);

        v48 = v188;
        *(v152 + 8) = v188;
        v87 = v172;
        (*v174)(v171, v124);
        sub_29E4C467C(v183, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
        v90 = i;
        v91 = v176;
        result = v179;
      }

      v88 = v163;
      v96 = v162;
      if (result < 0)
      {
        break;
      }

LABEL_39:
      v100 = v90;
      v101 = v91;
      for (i = v90; !v101; ++v100)
      {
        i = v100 + 1;
        if (__OFADD__(v100, 1))
        {
          goto LABEL_78;
        }

        if (i >= v96)
        {
          goto LABEL_76;
        }

        v101 = *(v88 + 8 * i);
      }

      v176 = (v101 - 1) & v101;
      v98 = *(*(result + 48) + ((i << 9) | (8 * __clz(__rbit64(v101)))));
      if (!v98)
      {
        goto LABEL_75;
      }
    }
  }

LABEL_75:
  result = v179;
LABEL_76:
  sub_29E4C4CA8(result);
  return sub_29E4B9E74(v173);
}

uint64_t sub_29E4BEE64(id *a1, uint64_t a2)
{
  v3 = sub_29E4FB240();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 UUID];
  sub_29E4FB230();

  v8 = sub_29E4FB220();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_29E4BEF70()
{
  swift_unknownObjectRelease();

  sub_29E4A1754((v0 + 48));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_29E4BEFFC(void *a1)
{
  if (*a1)
  {
    v2 = *(*v1 + 40);
    MEMORY[0x2A1C7C4A8](a1);
    os_unfair_lock_lock(v2 + 8);
    sub_29E4C54E4(&v2[4]);
    os_unfair_lock_unlock(v2 + 8);
  }
}

void sub_29E4BF084()
{
  v1 = *(*v0 + 40);
  os_unfair_lock_lock(v1 + 8);
  sub_29E4BCA1C(&v1[4]);

  os_unfair_lock_unlock(v1 + 8);
}

uint64_t sub_29E4BF108(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E4BFA6C(&unk_2A1A6F630, a2, type metadata accessor for SharingEntryProfileInformationInputSignal, &unk_29E4FF930);

  return MEMORY[0x2A1C64680](a1, v3);
}

id sub_29E4BF2C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharingEntryProfileInformationInputSignal.AuthorizationObserver(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E4BF3B0()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_29E4BF4C0;
  v2 = swift_continuation_init();
  sub_29E4C591C(0);
  v0[17] = v3;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29E4BFAB4;
  v0[13] = &unk_2A24E85C0;
  v0[14] = v2;
  [v1 fetchSharingAuthorizationsWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29E4BF4C0()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(*v0 + 144);
    v5 = *(v1 + 8);

    return v5(v4);
  }
}

uint64_t sub_29E4BF64C(uint64_t a1)
{
  result = sub_29E4FBAA0();
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

uint64_t sub_29E4BF71C(uint64_t a1)
{
  result = sub_29E4FB240();
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

__n128 sub_29E4BF7D8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_29E4BF7E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_29E4BF82C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29E4BF8C4()
{
  result = qword_2A1A6F668;
  if (!qword_2A1A6F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F668);
  }

  return result;
}

unint64_t sub_29E4BF91C()
{
  result = qword_2A1A6F640;
  if (!qword_2A1A6F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F640);
  }

  return result;
}

unint64_t sub_29E4BF974()
{
  result = qword_2A1A6F658;
  if (!qword_2A1A6F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F658);
  }

  return result;
}

unint64_t sub_29E4BF9CC()
{
  result = qword_2A1A6F650;
  if (!qword_2A1A6F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F650);
  }

  return result;
}

uint64_t sub_29E4BFA6C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E4BFAB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_29E4A1710((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_29E4A2CE8(0, &qword_2A1A70BC8, MEMORY[0x29EDC9F18]);
    swift_allocError();
    *v5 = a3;
    v6 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_29E4A2AD8(0, &unk_2A184B770, 0x29EDBADB8);
    **(*(v4 + 64) + 40) = sub_29E4FC7C0();

    return MEMORY[0x2A1C73CD8](v4);
  }
}

uint64_t sub_29E4BFBA8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_29E4BFCA0;

  return v6(a1);
}

uint64_t sub_29E4BFCA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_29E4BFD98(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_29E4C0190(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_29E4BFF04(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v25 = a1;
    v24 = a2;
    v8 = a3 + 56;
    v9 = 1 << *(a3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a3 + 56);
    v12 = (v9 + 63) >> 6;
    v28 = a4;
    v26 = 0;
    v27 = a3;
    v13 = 0;
    while (v11)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v17 = v14 | (v13 << 6);
      v18 = *(*(a3 + 48) + 8 * v17);
      if ([v18 direction] == 1 && (v19 = objc_msgSend(v18, sel_profileIdentifier)) != 0)
      {
        v20 = v19;
        sub_29E4A2AD8(0, &qword_2A1A708D0, 0x29EDBACE0);
        v21 = v28;
        v22 = sub_29E4FCB40();

        a3 = v27;
        if (v22)
        {
          *(v25 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
          if (__OFADD__(v26++, 1))
          {
            __break(1u);
LABEL_21:
            sub_29E4C0190(v25, v24, v26, a3);

            return;
          }
        }
      }

      else
      {
      }
    }

    v15 = v13;
    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_21;
      }

      v16 = *(v8 + 8 * v13);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_29E4C0100(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_29E4BFD98(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_29E4C0190(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x29EDCA1A0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_29E4C4F78(0, &unk_2A184B740, MEMORY[0x29EDC9D70]);
  result = sub_29E4FCD40();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_29E4FCB30();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_29E4C0394(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_29E4FB240();
  v8 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x29EDCA1A0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_29E4C5A30(0);
  result = sub_29E4FCD40();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_29E4BFA6C(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
    result = sub_29E4FC650();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_29E4C0708(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_29E4FB240();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_29E4A2D44(0);
  v38 = v4;
  result = sub_29E4FCE10();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_29E498334((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_29E4A76F0(*(v9 + 56) + 40 * v23, v43);
      }

      sub_29E4BFA6C(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
      result = sub_29E4FC650();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_29E498334(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_29E4C0B04(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  v8 = a2;
  v9 = sub_29E4FB240();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_29E4C5AC8(0, a3, a4, MEMORY[0x29EDC9E70]);
  v43 = v8;
  result = sub_29E4FCE10();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_29E4BFA6C(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
      result = sub_29E4FC650();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_29E4C0F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v8 = v5;
  v9 = a2;
  v56 = a3(0);
  v10 = *(v56 - 8);
  MEMORY[0x2A1C7C4A8](v56);
  v55 = &v44 - v11;
  v12 = sub_29E4FB240();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v57 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  sub_29E4C5AC8(0, a4, a5, MEMORY[0x29EDC9E70]);
  v51 = v9;
  result = sub_29E4FCE10();
  v17 = result;
  if (*(v15 + 16))
  {
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v13;
    v23 = v21 & *(v15 + 64);
    v24 = (v20 + 63) >> 6;
    v47 = (v22 + 16);
    v48 = v22;
    v45 = v5;
    v46 = v10 + 16;
    v49 = v15;
    v50 = v10;
    v52 = (v10 + 32);
    v53 = (v22 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v15 + 48);
      v54 = *(v22 + 72);
      v32 = v31 + v54 * v30;
      if (v51)
      {
        (*v53)(v57, v32, v12);
        v33 = *(v15 + 56);
        v34 = *(v50 + 72);
        (*(v50 + 32))(v55, v33 + v34 * v30, v56);
      }

      else
      {
        (*v47)(v57, v32, v12);
        v35 = *(v15 + 56);
        v34 = *(v50 + 72);
        (*(v50 + 16))(v55, v35 + v34 * v30, v56);
      }

      sub_29E4BFA6C(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
      result = sub_29E4FC650();
      v36 = -1 << *(v17 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v25 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v25 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v25 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v53)((*(v17 + 48) + v54 * v26), v57, v12);
      result = (*v52)(*(v17 + 56) + v34 * v26, v55, v56);
      ++*(v17 + 16);
      v22 = v48;
      v15 = v49;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v18 >= v24)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v8 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v15 + 32);
    v8 = v45;
    if (v43 >= 64)
    {
      bzero(v19, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v43;
    }

    *(v15 + 16) = 0;
  }

LABEL_34:
  *v8 = v17;
  return result;
}

uint64_t sub_29E4C13F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_29E4C5574();
  result = sub_29E4FCE10();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_29E4A2C58((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_29E4A25CC(v23, &v36);
        sub_29E4AD310(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_29E4FCCE0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_29E4A2C58(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_29E4C16B4(int64_t a1, uint64_t a2)
{
  v42 = sub_29E4FB240();
  v4 = *(v42 - 8);
  result = MEMORY[0x2A1C7C4A8](v42);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v43 = v6;
    v12 = sub_29E4FCC80();
    v13 = v42;
    v6 = v43;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v39 = (v12 + 1) & v11;
    v40 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    v38 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v41;
      v21 = v14;
      v22 = v15;
      v40(v41, *(v6 + 48) + v17 * v10, v13);
      sub_29E4BFA6C(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
      v23 = sub_29E4FC650();
      result = (*v37)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v43;
          v27 = *(v43 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v43;
            v17 = v18;
            v14 = v21;
            v8 = v38;
          }

          else
          {
            v8 = v38;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v43;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 40 * a1;
          v30 = (v28 + 40 * v10);
          if (a1 != v10 || v29 >= v30 + 40)
          {
            v31 = *v30;
            v32 = v30[1];
            *(v29 + 32) = *(v30 + 4);
            *v29 = v31;
            *(v29 + 16) = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v38;
      v17 = v18;
      v6 = v43;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(v6 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v35;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_29E4C19E0(int64_t a1, uint64_t a2)
{
  v40 = sub_29E4FB240();
  v4 = *(v40 - 8);
  result = MEMORY[0x2A1C7C4A8](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_29E4FCC80();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_29E4BFA6C(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
      v23 = sub_29E4FC650();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_29E4C1D1C(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = sub_29E4FB240();
  v6 = *(v5 - 8);
  result = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = sub_29E4FCC80();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      sub_29E4BFA6C(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
      v23 = sub_29E4FC650();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_29E4C2070(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29E4FCC80() + 1) & ~v5;
    do
    {
      sub_29E4A25CC(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_29E4FCCE0();
      result = sub_29E4A2628(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_29E4C229C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v36 = a6;
  v37 = a7;
  v34 = a4;
  v35 = a5;
  v8 = v7;
  v12 = sub_29E4FB240();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = sub_29E49ED7C(a2);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v34();
      goto LABEL_7;
    }

    v35();
    v32 = sub_29E49ED7C(a2);
    if ((v22 & 1) == (v33 & 1))
    {
      v18 = v32;
      v24 = *v8;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v15, a2, v12);
      return sub_29E4C2824(v18, v15, a1, v24, v37);
    }

LABEL_15:
    result = sub_29E4FCFB0();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v8;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = v24[7];
  v26 = v36(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 40);
  v29 = v26;
  v30 = v25 + *(v27 + 72) * v18;

  return v28(v30, a1, v29);
}

uint64_t sub_29E4C24F4(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v26 = a4;
  v27 = a5;
  v6 = v5;
  v10 = sub_29E4FB240();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_29E49ED7C(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v26();
      goto LABEL_7;
    }

    v27();
    v24 = sub_29E49ED7C(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      return sub_29E4C2920(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_29E4FCFB0();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

_OWORD *sub_29E4C26D8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_29E49EE90(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_29E4C337C();
      goto LABEL_7;
    }

    sub_29E4C13F0(v13, a3 & 1);
    v19 = sub_29E49EE90(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_29E4A25CC(a2, v21);
      return sub_29E4C29D8(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_29E4FCFB0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_29E4A1754(v17);

  return sub_29E4A2C58(a1, v17);
}

uint64_t sub_29E4C2824(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_29E4FB240();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v12 = a4[7];
  v13 = a5(0);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a3, v13);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_29E4C2920(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_29E4FB240();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_29E4C29D8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_29E4A2C58(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

char *sub_29E4C2AA8(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = v3;
  v46 = a1(0);
  v49 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46);
  v45 = &v35 - v7;
  v44 = sub_29E4FB240();
  v48 = *(v44 - 8);
  MEMORY[0x2A1C7C4A8](v44);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4C5AC8(0, a2, a3, MEMORY[0x29EDC9E70]);
  v9 = *v3;
  v10 = sub_29E4FCE00();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v35 = v6;
    v36 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v47 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = v48 + 16;
    v41 = v20;
    v38 = v48 + 32;
    v39 = v49 + 16;
    v37 = v49 + 32;
    v42 = v9;
    v22 = v43;
    v21 = v44;
    if (v19)
    {
      do
      {
        v23 = __clz(__rbit64(v19));
        v50 = (v19 - 1) & v19;
LABEL_14:
        v26 = v23 | (v15 << 6);
        v27 = v48;
        v28 = *(v48 + 72) * v26;
        (*(v48 + 16))(v22, *(v9 + 48) + v28, v21);
        v29 = v49;
        v30 = *(v49 + 72) * v26;
        v31 = v45;
        v32 = v46;
        (*(v49 + 16))(v45, *(v9 + 56) + v30, v46);
        v33 = v47;
        (*(v27 + 32))(*(v47 + 48) + v28, v22, v21);
        v34 = *(v33 + 56);
        v9 = v42;
        result = (*(v29 + 32))(v34 + v30, v31, v32);
        v20 = v41;
        v19 = v50;
      }

      while (v50);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v35;
        v11 = v47;
        goto LABEL_18;
      }

      v25 = *(v36 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v50 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v11;
  }

  return result;
}

void *sub_29E4C2E18()
{
  v1 = v0;
  v29 = sub_29E4FB240();
  v31 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4A2D44(0);
  v3 = *v0;
  v4 = sub_29E4FCE00();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        sub_29E4A76F0(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = sub_29E498334(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v5 = v30;
        goto LABEL_21;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

char *sub_29E4C30B0(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v5 = v2;
  v37 = sub_29E4FB240();
  v39 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4C5AC8(0, a1, a2, MEMORY[0x29EDC9E70]);
  v7 = *v2;
  v8 = sub_29E4FCE00();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v5;
    v33 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v38 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v40 = (v17 - 1) & v17;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = v39;
        v24 = *(v39 + 72) * v22;
        v26 = v36;
        v25 = v37;
        (*(v39 + 16))(v36, *(v7 + 48) + v24, v37);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v7;
        v29 = v38;
        (*(v23 + 32))(*(v38 + 48) + v24, v26, v25);
        v30 = *(v29 + 56);
        v7 = v28;
        *(v30 + 8 * v22) = v27;

        v17 = v40;
      }

      while (v40);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v32;
        v9 = v38;
        goto LABEL_18;
      }

      v21 = *(v33 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v40 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v5 = v9;
  }

  return result;
}

void *sub_29E4C337C()
{
  v1 = v0;
  sub_29E4C5574();
  v2 = *v0;
  v3 = sub_29E4FCE00();
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
        v18 = 40 * v17;
        sub_29E4A25CC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_29E4AD310(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_29E4A2C58(v22, (*(v4 + 56) + v17));
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

char *sub_29E4C3514(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29E4C3574(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29E4C3534(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29E4C3690(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29E4C3554(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29E4C388C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29E4C3574(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E4C5B88(0, &qword_2A1A70BD0, MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29E4C3690(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29E49684C(0, &qword_2A184B4E0, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9E90]);
  v10 = *(sub_29E4FB240() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_29E4FB240() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_29E4C388C(void *result, int64_t a2, char a3, void *a4)
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
    sub_29E4C5500(0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29E4C5B88(0, &qword_2A1A70908, MEMORY[0x29EDC9A40]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_29E4C39C4(uint64_t a1)
{
  if (!qword_2A1A6F140)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_29E4FCDC0();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A6F140);
    }
  }
}

uint64_t sub_29E4C3A24(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E49684C(255, a2, a3, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E4C3A88(uint64_t a1)
{
  if (!qword_2A1A6F9E8)
  {
    sub_29E4A2CE8(255, qword_2A1A6F9F0, &protocol descriptor for SharingAuthorizationSourceProvider);
    v1 = sub_29E4FCC30();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A6F9E8);
    }
  }
}

uint64_t sub_29E4C3AF0(uint64_t a1, uint64_t a2)
{
  sub_29E4C3A88(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4C3B54(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v35 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = (8 * v7);
  v9 = a2;
  v34 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v29 = v7;
    v30 = v3;
    v28 = &v28;
    MEMORY[0x2A1C7C4A8](v9);
    v31 = &v28 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v8);
    v32 = 0;
    v33 = v4;
    v7 = 0;
    v3 = v4 + 56;
    v10 = 1 << *(v4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v4 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_13:
      v17 = v14 | (v7 << 6);
      v8 = *(*(v4 + 48) + 8 * v17);
      if ([v8 direction] == 1 && (v18 = objc_msgSend(v8, sel_profileIdentifier)) != 0)
      {
        v19 = v18;
        sub_29E4A2AD8(0, &qword_2A1A708D0, 0x29EDBACE0);
        v20 = v34;
        v21 = sub_29E4FCB40();

        v4 = v33;
        if (v21)
        {
          *&v31[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
          if (__OFADD__(v32++, 1))
          {
            __break(1u);
LABEL_19:
            v23 = sub_29E4C0190(v31, v29, v32, v4);

            return v23;
          }
        }
      }

      else
      {
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v3 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = v34;
  sub_29E4BFF04(v25, v7, v4, v26);
  v23 = v27;

  MEMORY[0x29ED8BDB0](v25, -1, -1);

  return v23;
}

uint64_t sub_29E4C3E3C(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_29E4C3B54(a1, a2);
  }

  v2 = MEMORY[0x29EDCA1A0];
  v20 = MEMORY[0x29EDCA1A0];
  v3 = a2;
  sub_29E4FCCA0();
  if (sub_29E4FCCD0())
  {
    sub_29E4A2AD8(0, &unk_2A1A6F198, 0x29EDBAE30);
    do
    {
      swift_dynamicCast();
      if ([v19 direction] == 1 && (v4 = objc_msgSend(v19, sel_profileIdentifier)) != 0 && (v5 = v4, sub_29E4A2AD8(0, &qword_2A1A708D0, 0x29EDBACE0), v6 = v3, v7 = sub_29E4FCB40(), v6, v5, (v7 & 1) != 0))
      {
        v8 = *(v2 + 16);
        if (*(v2 + 24) <= v8)
        {
          sub_29E4F7D40(v8 + 1);
        }

        v2 = v20;
        result = sub_29E4FCB30();
        v10 = v20 + 56;
        v11 = -1 << *(v20 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v20 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v20 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v13 == v16;
            if (v13 == v16)
            {
              v13 = 0;
            }

            v15 |= v17;
            v18 = *(v10 + 8 * v13);
          }

          while (v18 == -1);
          v14 = __clz(__rbit64(~v18)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v20 + 48) + 8 * v14) = v19;
        ++*(v20 + 16);
      }

      else
      {
      }
    }

    while (sub_29E4FCCD0());
  }

  return v2;
}

void *sub_29E4C40B0(void *a1)
{
  sub_29E4C43EC(0, &qword_2A1A6F108, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v10 - v6;
  v8 = sub_29E4A1710(a1, a1[3]);
  sub_29E4C4280();
  sub_29E4FD070();
  if (!v1)
  {
    sub_29E4C5AC8(0, &qword_2A1A6F2C8, MEMORY[0x29EDC1A38], MEMORY[0x29EDC98E0]);
    sub_29E4C42D4();
    sub_29E4FCED0();
    (*(v5 + 8))(v7, v4);
    v8 = v10[1];
  }

  sub_29E4A1754(a1);
  return v8;
}

unint64_t sub_29E4C4280()
{
  result = qword_2A1A6F680;
  if (!qword_2A1A6F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F680);
  }

  return result;
}

unint64_t sub_29E4C42D4()
{
  result = qword_2A1A6F2A8;
  if (!qword_2A1A6F2A8)
  {
    sub_29E4C5AC8(255, &qword_2A1A6F2C8, MEMORY[0x29EDC1A38], MEMORY[0x29EDC98E0]);
    sub_29E4BFA6C(&unk_2A1A706A0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C28]);
    sub_29E4BFA6C(&unk_2A1A70588, 255, MEMORY[0x29EDC1A38], MEMORY[0x29EDC1A50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F2A8);
  }

  return result;
}

void sub_29E4C43EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E4C4280();
    v7 = a3(a1, &type metadata for SharingEntryProfileInformationInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29E4C4450()
{
  result = qword_2A1A6F2B8;
  if (!qword_2A1A6F2B8)
  {
    sub_29E4C5AC8(255, &qword_2A1A6F2C8, MEMORY[0x29EDC1A38], MEMORY[0x29EDC98E0]);
    sub_29E4BFA6C(&unk_2A1A706C0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C10]);
    sub_29E4BFA6C(&qword_2A1A70598, 255, MEMORY[0x29EDC1A38], MEMORY[0x29EDC1A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F2B8);
  }

  return result;
}

void sub_29E4C4568(uint64_t a1)
{
  if (!qword_2A184B718)
  {
    sub_29E49684C(255, &qword_2A1A70580, MEMORY[0x29EDC1A38], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A184B718);
    }
  }
}

uint64_t sub_29E4C45FC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E49684C(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E4C467C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E49684C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E4C46EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E4C474C(uint64_t a1)
{
  if (!qword_2A1A70518)
  {
    sub_29E4C4804(255);
    sub_29E4C4838();
    sub_29E4C4920();
    sub_29E4C4A08(&qword_2A1A6F288, sub_29E4C4804, sub_29E4C4A84);
    v1 = sub_29E4FC0D0();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A70518);
    }
  }
}

unint64_t sub_29E4C4838()
{
  result = qword_2A1A6F278;
  if (!qword_2A1A6F278)
  {
    sub_29E4C4804(255);
    sub_29E4BFA6C(&unk_2A1A706A0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C28]);
    sub_29E4BFA6C(&unk_2A1A706E0, 255, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F278);
  }

  return result;
}

unint64_t sub_29E4C4920()
{
  result = qword_2A1A6F298;
  if (!qword_2A1A6F298)
  {
    sub_29E4C4804(255);
    sub_29E4BFA6C(&unk_2A1A706C0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C10]);
    sub_29E4BFA6C(&qword_2A1A70700, 255, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F298);
  }

  return result;
}

uint64_t sub_29E4C4A08(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E4C4ABC(uint64_t a1)
{
  if (!qword_2A1A70478)
  {
    sub_29E4C4F78(255, &qword_2A1A6F200, MEMORY[0x29EDC9B90]);
    sub_29E4C4C08(&qword_2A1A6F1F8, MEMORY[0x29EDC3638]);
    sub_29E4C4C08(&qword_2A1A6F1F0, MEMORY[0x29EDC9B98]);
    sub_29E4C4BB4(&qword_2A1A6F1A8, MEMORY[0x29EDC3CE8]);
    v1 = sub_29E4FC320();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A70478);
    }
  }
}

uint64_t sub_29E4C4BB4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_29E4A2AD8(255, &unk_2A1A6F198, 0x29EDBAE30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E4C4C08(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_29E4C4F78(255, &qword_2A1A6F200, MEMORY[0x29EDC9B90]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E4C4CB0(uint64_t a1)
{
  v4 = *(sub_29E4FBAA0() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[9];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29E4C5DDC;

  return sub_29E4B98CC(a1, v6, v7, (v1 + 4), v8, v1 + v5);
}

uint64_t sub_29E4C4DAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29E4C5DDC;

  return sub_29E4BFBA8(a1, v4);
}

uint64_t sub_29E4C4E64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29E49D938;

  return sub_29E4BFBA8(a1, v4);
}

uint64_t sub_29E4C4F60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E4C4F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E4A2AD8(255, &unk_2A1A6F198, 0x29EDBAE30);
    v7 = sub_29E4C4BB4(&qword_2A1A6F190, MEMORY[0x29EDCA2F0]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E4C5010(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v40 = sub_29E4FBAA0();
  v3 = *(v40 - 8);
  MEMORY[0x2A1C7C4A8](v40);
  v38 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_29E4FB240();
  v5 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46);
  v45 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4C5AC8(0, &qword_2A184B720, type metadata accessor for SharingEntryProfileInformationInputSignal.SharingEntry, MEMORY[0x29EDC9E70]);
  result = sub_29E4FCE00();
  v8 = result;
  v9 = 0;
  v41 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v34 = v3 + 16;
  v35 = v5 + 16;
  v39 = v3;
  v32 = result + 64;
  v33 = v3 + 8;
  v36 = result;
  v37 = v5;
  v31[1] = v5 + 32;
  v17 = v40;
  if (v15)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v15));
      v43 = (v15 - 1) & v15;
LABEL_10:
      v21 = v18 | (v9 << 6);
      v22 = v41;
      v23 = *(v41 + 48);
      v24 = v37;
      v44 = *(v37 + 72) * v21;
      (*(v37 + 16))(v45, v23 + v44, v46);
      v25 = v38;
      v26 = v39;
      (*(v39 + 16))(v38, *(v22 + 56) + *(v39 + 72) * v21, v17);
      v27 = sub_29E4BB500(v25);
      (*(v26 + 8))(v25, v17);
      *(v32 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v8 = v36;
      result = (*(v24 + 32))(*(v36 + 48) + v44, v45, v46);
      *(*(v8 + 56) + 8 * v21) = v27;
      v28 = *(v8 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      *(v8 + 16) = v30;
      v15 = v43;
      if (!v43)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v8;
      }

      v20 = *(v11 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v43 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29E4C5360()
{
  v0 = sub_29E4FC300();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  sub_29E4A1914(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29E4FF750;
  v2 = sub_29E4FC2E0();
  *(v1 + 56) = v2;
  v3 = sub_29E4BFA6C(&qword_2A1A70488, 255, MEMORY[0x29EDC35C0], MEMORY[0x29EDC35B8]);
  *(v1 + 64) = v3;
  sub_29E4A197C((v1 + 32));
  sub_29E4FC2F0();
  sub_29E4FC2D0();
  sub_29E4FB610();
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  sub_29E4A197C((v1 + 72));
  sub_29E4FB600();
  *(v1 + 136) = v2;
  *(v1 + 144) = v3;
  sub_29E4A197C((v1 + 112));
  sub_29E4FC2F0();
  sub_29E4FC2D0();
  return v1;
}

void sub_29E4C5500(uint64_t a1)
{
  if (!qword_2A1A708B0)
  {
    sub_29E4C5B88(255, &qword_2A1A70908, MEMORY[0x29EDC9A40]);
    v1 = sub_29E4FCF70();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A708B0);
    }
  }
}

void sub_29E4C5574()
{
  if (!qword_2A184B750)
  {
    v0 = sub_29E4FCE30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B750);
    }
  }
}

uint64_t sub_29E4C55D8()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 40);
    MEMORY[0x2A1C7C4A8](result);
    os_unfair_lock_lock(v1 + 8);
    sub_29E4C5DE4(&v1[4]);
    os_unfair_lock_unlock(v1 + 8);
  }

  return result;
}

uint64_t sub_29E4C5684()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 40);
    MEMORY[0x2A1C7C4A8](result);
    os_unfair_lock_lock(v1 + 8);
    sub_29E4C5730(&v1[4]);
    os_unfair_lock_unlock(v1 + 8);
  }

  return result;
}

uint64_t sub_29E4C574C()
{
  v1 = sub_29E4FBAA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  sub_29E4A1754((v0 + 32));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E4C5820(uint64_t a1)
{
  v4 = *(sub_29E4FBAA0() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[9];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29E49D938;

  return sub_29E4B98CC(a1, v6, v7, (v1 + 4), v8, v1 + v5);
}

void sub_29E4C591C(uint64_t a1)
{
  if (!qword_2A184B760)
  {
    sub_29E4C599C(255);
    sub_29E4A2CE8(255, &qword_2A1A70BC8, MEMORY[0x29EDC9F18]);
    v1 = sub_29E4FC890();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184B760);
    }
  }
}

void sub_29E4C599C(uint64_t a1)
{
  if (!qword_2A184B768)
  {
    sub_29E4A2AD8(255, &unk_2A184B770, 0x29EDBADB8);
    v1 = sub_29E4FC800();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184B768);
    }
  }
}

void sub_29E4C5A30(uint64_t a1)
{
  if (!qword_2A184B780)
  {
    sub_29E4FB240();
    sub_29E4BFA6C(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
    v1 = sub_29E4FCD50();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184B780);
    }
  }
}

void sub_29E4C5AC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29E4FB240();
    v9 = a3(255);
    v10 = sub_29E4BFA6C(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
    v11 = a4(a1, v8, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29E4C5B88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC99B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SharingEntryProfileInformationInputSignal.Anchor.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SharingEntryProfileInformationInputSignal.Anchor.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_29E4C5CD8()
{
  result = qword_2A184B798;
  if (!qword_2A184B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B798);
  }

  return result;
}

unint64_t sub_29E4C5D30()
{
  result = qword_2A1A6F670;
  if (!qword_2A1A6F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F670);
  }

  return result;
}

unint64_t sub_29E4C5D88()
{
  result = qword_2A1A6F678;
  if (!qword_2A1A6F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F678);
  }

  return result;
}

void sub_29E4C5E10(uint64_t a1)
{
  if (!qword_2A1A6F2F8)
  {
    sub_29E4C5E68();
    v1 = sub_29E4FC5D0();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A6F2F8);
    }
  }
}

unint64_t sub_29E4C5E68()
{
  result = qword_2A1A708D0;
  if (!qword_2A1A708D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A708D0);
  }

  return result;
}

uint64_t type metadata accessor for ProfileSearch(uint64_t a1)
{
  result = qword_2A1A70B68;
  if (!qword_2A1A70B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E4C5F14(uint64_t a1)
{
  sub_29E4C5E10(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_29E4C5FAC()
{
  result = qword_2A184B7A0;
  if (!qword_2A184B7A0)
  {
    sub_29E4C769C(255, &qword_2A184B7A8, &type metadata for ProfileSearch.Destination, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B7A0);
  }

  return result;
}

uint64_t sub_29E4C6028()
{
  sub_29E4FD030();
  sub_29E4FC730();
  return sub_29E4FD050();
}

uint64_t sub_29E4C60AC(uint64_t a1)
{
  sub_29E4FD030();
  sub_29E4FC730();
  return sub_29E4FD050();
}

uint64_t sub_29E4C6108@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_29E4FCE50();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_29E4C6248()
{
  result = qword_2A184B7B0;
  if (!qword_2A184B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B7B0);
  }

  return result;
}

uint64_t sub_29E4C629C(void *a1)
{
  sub_29E4C784C(0, &qword_2A1A708C0, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v9[-v6];
  sub_29E4A1710(a1, a1[3]);
  sub_29E4C7740();
  sub_29E4FD080();
  v9[15] = 0;
  sub_29E4C5E10(0);
  sub_29E4C6EFC(qword_2A1A6F300, sub_29E4C5E10, MEMORY[0x29EDBA1D8]);
  sub_29E4FCF50();
  if (!v1)
  {
    v9[14] = 1;
    sub_29E4C78B0();
    sub_29E4FCF50();
    type metadata accessor for ProfileSearch(0);
    v9[13] = 2;
    sub_29E4FCF30();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29E4C649C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_29E4C5E10(0);
  v5 = v4;
  v27 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v29 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4C784C(0, &qword_2A184B7B8, MEMORY[0x29EDC9E80]);
  v28 = v7;
  v26 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ProfileSearch(0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4A1710(a1, a1[3]);
  sub_29E4C7740();
  sub_29E4FD070();
  if (v2)
  {
    return sub_29E4A1754(a1);
  }

  v24 = v12;
  v14 = v26;
  v13 = v27;
  v32 = 0;
  sub_29E4C6EFC(&qword_2A184B7C0, sub_29E4C5E10, MEMORY[0x29EDBA1F0]);
  v15 = v28;
  sub_29E4FCED0();
  (*(v13 + 32))(v24, v29, v5);
  v31 = 1;
  sub_29E4C7794();
  sub_29E4FCED0();
  v30 = 2;
  v16 = sub_29E4FCEB0();
  v29 = v17;
  v18 = v16;
  (*(v14 + 8))(v9, v15);
  v20 = v24;
  v19 = v25;
  v21 = &v24[*(v10 + 24)];
  v22 = v29;
  *v21 = v18;
  v21[1] = v22;
  sub_29E4C77E8(v20, v19);
  sub_29E4A1754(a1);
  return sub_29E4C6F44(v20);
}

uint64_t sub_29E4C6820()
{
  v1 = 0x74616E6974736564;
  if (*v0 != 1)
  {
    v1 = 0x657A696C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_29E4C6894@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29E4C6FA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29E4C68C8(uint64_t a1)
{
  v2 = sub_29E4C7740();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E4C6904(uint64_t a1)
{
  v2 = sub_29E4C7740();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E4C6970@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_29E4FC3C0();
  v28 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v4 = sub_29E4FB320();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v27 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProfileSearch(0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A70BD8 != -1)
  {
    swift_once();
  }

  v9 = sub_29E4FB050();
  v11 = v10;
  sub_29E4C5E68();
  v12 = a1;
  sub_29E4FC5E0();
  v13 = &v8[*(v6 + 24)];
  *v13 = v9;
  v13[1] = v11;
  sub_29E4FAF70();
  swift_allocObject();
  sub_29E4FAF60();
  sub_29E4C6EFC(&qword_2A1A70B78, type metadata accessor for ProfileSearch, &unk_29E4FFD2C);
  v14 = sub_29E4FAF50();
  v16 = v15;

  v28 = sub_29E4C74CC();
  v24 = v17;
  type metadata accessor for ProfileSearchTileViewController(0);
  sub_29E4FB360();
  v23[1] = v18;
  (*(v25 + 104))(v27, *MEMORY[0x29EDC36D0], v26);
  v19 = v12;
  sub_29E4C7648(v14, v16);
  v20 = v29;
  sub_29E4FB3E0();

  sub_29E4FB3D0();
  sub_29E4C70D0();
  sub_29E4FB430();
  sub_29E4FB3C0();
  sub_29E4FB3F0();
  sub_29E4A1B94(v14, v16);
  sub_29E4C6F44(v8);
  v21 = sub_29E4FB460();
  return (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
}

uint64_t sub_29E4C6EFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E4C6F44(uint64_t a1)
{
  v2 = type metadata accessor for ProfileSearch(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E4C6FA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000029E5024E0 == a2 || (sub_29E4FCF80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (sub_29E4FCF80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464)
  {

    return 2;
  }

  else
  {
    v5 = sub_29E4FCF80();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_29E4C70D0()
{
  sub_29E4C769C(0, &qword_2A1A70BD0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E4FDE40;
  if (qword_2A1A70BD8 != -1)
  {
LABEL_29:
    swift_once();
  }

  *(inited + 32) = sub_29E4FB050();
  *(inited + 40) = v1;
  v2 = sub_29E4FB050();
  v4 = v3;
  inited = sub_29E4A7C24(1, 2, 1, inited);
  *(inited + 16) = 2;
  *(inited + 48) = v2;
  *(inited + 56) = v4;
  v28 = MEMORY[0x29EDCA190];
  sub_29E4C3554(0, 2, 0);
  v5 = v28;
  sub_29E4C76EC();
  v6 = sub_29E4FCC40();
  v8 = *(v28 + 16);
  v7 = *(v28 + 24);
  if (v8 >= v7 >> 1)
  {
    v26 = v6;
    sub_29E4C3554((v7 > 1), v8 + 1, 1);
    v6 = v26;
    v5 = v28;
  }

  *(v5 + 16) = v8 + 1;
  *(v5 + 8 * v8 + 32) = v6;
  v9 = sub_29E4FCC40();
  v29 = v5;
  v11 = *(v5 + 16);
  v10 = *(v5 + 24);
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v27 = v9;
    sub_29E4C3554((v10 > 1), v11 + 1, 1);
    v9 = v27;
    v5 = v29;
  }

  v13 = 0;
  *(v5 + 16) = v12;
  *(v5 + 8 * v11 + 32) = v9;
  v14 = MEMORY[0x29EDCA190];
  do
  {
    if (v13 >= *(v5 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v15 = *(v5 + 8 * v13 + 32);
    v16 = *(v15 + 16);
    v17 = *(v14 + 2);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v18 <= *(v14 + 3) >> 1)
    {
      if (!*(v15 + 16))
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v20 = v17 + v16;
      }

      else
      {
        v20 = v17;
      }

      v14 = sub_29E4A7C24(isUniquelyReferenced_nonNull_native, v20, 1, v14);
      if (!*(v15 + 16))
      {
LABEL_7:

        if (v16)
        {
          goto LABEL_26;
        }

        goto LABEL_8;
      }
    }

    if ((*(v14 + 3) >> 1) - *(v14 + 2) < v16)
    {
      goto LABEL_27;
    }

    swift_arrayInitWithCopy();

    if (v16)
    {
      v21 = *(v14 + 2);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (v22)
      {
        goto LABEL_28;
      }

      *(v14 + 2) = v23;
    }

LABEL_8:
    ++v13;
  }

  while (v12 != v13);

  v24 = sub_29E4D6AE0(v14);

  return v24;
}

uint64_t sub_29E4C74CC()
{
  v0 = sub_29E4FB240();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = 0xD00000000000001CLL;
  v8[1] = 0x800000029E5024C0;
  sub_29E4C5E10(0);
  v4 = sub_29E4FC5C0();
  v5 = [v4 identifier];

  sub_29E4FB230();
  sub_29E4C6EFC(&qword_2A1A70BC0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
  v6 = sub_29E4FCF60();
  MEMORY[0x29ED8AD70](v6);

  (*(v1 + 8))(v3, v0);
  return v8[0];
}

uint64_t sub_29E4C7648(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_29E4C769C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29E4C76EC()
{
  result = qword_2A1A70918[0];
  if (!qword_2A1A70918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A70918);
  }

  return result;
}

unint64_t sub_29E4C7740()
{
  result = qword_2A1A70BA0;
  if (!qword_2A1A70BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A70BA0);
  }

  return result;
}

unint64_t sub_29E4C7794()
{
  result = qword_2A184B7C8;
  if (!qword_2A184B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B7C8);
  }

  return result;
}

uint64_t sub_29E4C77E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfileSearch(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E4C784C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E4C7740();
    v7 = a3(a1, &type metadata for ProfileSearch.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29E4C78B0()
{
  result = qword_2A1A70B88;
  if (!qword_2A1A70B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A70B88);
  }

  return result;
}

unint64_t sub_29E4C7904()
{
  result = qword_2A1A70B80;
  if (!qword_2A1A70B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A70B80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProfileSearch.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProfileSearch.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29E4C7AAC()
{
  result = qword_2A184B7D0;
  if (!qword_2A184B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B7D0);
  }

  return result;
}

unint64_t sub_29E4C7B04()
{
  result = qword_2A1A70B90;
  if (!qword_2A1A70B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A70B90);
  }

  return result;
}

unint64_t sub_29E4C7B5C()
{
  result = qword_2A1A70B98;
  if (!qword_2A1A70B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A70B98);
  }

  return result;
}

uint64_t sub_29E4C7BB0(uint64_t a1)
{
  v3 = sub_29E4FC190();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 16);
  v12 = *(v1 + 16);
  v7(v6, a1, v3);
  v8 = *(v1 + 32);
  swift_unknownObjectRetain();
  v9 = [v8 profileIdentifier];
  sub_29E4A76F0(v1 + 40, v13);
  type metadata accessor for CloudSyncExecutor.Planner(0);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + OBJC_IVAR____TtCC8Profiles17CloudSyncExecutor7Planner_signals, v6, v3);
  *(v10 + 16) = v12;
  *(v10 + OBJC_IVAR____TtCC8Profiles17CloudSyncExecutor7Planner_profileIdentifier) = v9;
  sub_29E498334(v13, v10 + OBJC_IVAR____TtCC8Profiles17CloudSyncExecutor7Planner_appFirstLaunchDateProvider);
  return v10;
}

uint64_t sub_29E4C7D28(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_29E4FB660();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for CloudSyncExecutor.Planner.ChangeType(0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E4C7E18, 0, 0);
}

uint64_t sub_29E4C7E18()
{
  sub_29E4CD6B8(0);
  sub_29E4FC2A0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = **(v0 + 64);
      v3 = swift_task_alloc();
      *(v0 + 88) = v3;
      *v3 = v0;
      v3[1] = sub_29E4C816C;

      return sub_29E4C8A8C(v2);
    }

    else
    {
      v7 = swift_task_alloc();
      *(v0 + 72) = v7;
      *v7 = v0;
      v7[1] = sub_29E4C7FE8;

      return sub_29E4C8584();
    }
  }

  else
  {
    (*(*(v0 + 40) + 32))(*(v0 + 48), *(v0 + 64), *(v0 + 32));
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_29E4C8280;
    v6 = *(v0 + 48);

    return sub_29E4C95EC(v6);
  }
}

uint64_t sub_29E4C7FE8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_29E4C841C;
  }

  else
  {
    v2 = sub_29E4C80FC;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E4C80FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E4C816C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_29E4C848C;
  }

  else
  {
    v2 = sub_29E4D0928;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E4C8280()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_29E4C84FC;
  }

  else
  {
    v2 = sub_29E4C8394;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E4C8394()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_29E4C841C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E4C848C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E4C84FC()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_29E4C8584()
{
  v1[10] = v0;
  v2 = sub_29E4FC3C0();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E4C8644, 0, 0);
}

uint64_t sub_29E4C8644()
{
  sub_29E4FC390();
  v1 = sub_29E4FC3B0();
  v2 = sub_29E4FC940();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_29E494000, v1, v2, "Removing cloud sync alert", v3, 2u);
    MEMORY[0x29ED8BDB0](v3, -1, -1);
  }

  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[11];

  (*(v5 + 8))(v4, v7);
  swift_beginAccess();
  v8 = *(v6 + 144);
  v9 = *(v6 + 152);
  sub_29E4A9F54(v6 + 120, v8);
  (*(v9 + 40))(v8, v9);
  swift_endAccess();
  swift_getObjectType();
  sub_29E4CD7AC(&qword_2A1A70220, v10, type metadata accessor for CloudSyncExecutor, &unk_29E500020);
  sub_29E4FB310();
  v12 = v0[5];
  v11 = v0[6];
  sub_29E4A1710(v0 + 2, v12);
  v13 = swift_task_alloc();
  v0[14] = v13;
  *v13 = v0;
  v13[1] = sub_29E4C889C;
  v14 = MEMORY[0x29EDCA190];

  return MEMORY[0x2A1C64D80](v14, v12, v11);
}

uint64_t sub_29E4C889C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_29E4C8A20;
  }

  else
  {
    v2 = sub_29E4C89B0;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E4C89B0()
{
  sub_29E4A1754((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E4C8A20()
{
  sub_29E4A1754((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E4C8A8C(char a1)
{
  *(v2 + 80) = v1;
  *(v2 + 216) = a1;
  v3 = sub_29E4FC3C0();
  *(v2 + 88) = v3;
  *(v2 + 96) = *(v3 - 8);
  *(v2 + 104) = swift_task_alloc();
  v4 = sub_29E4FB460();
  *(v2 + 112) = v4;
  *(v2 + 120) = *(v4 - 8);
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E4C8BB8, 0, 0);
}

uint64_t sub_29E4C8BB8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 216);
  swift_beginAccess();
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  sub_29E4A9F54(v1 + 120, v3);
  (*(v4 + 32))(v3, v4);
  swift_endAccess();
  if (v2 == 1)
  {
    swift_getObjectType();
    sub_29E4CD7AC(&qword_2A1A70220, v5, type metadata accessor for CloudSyncExecutor, &unk_29E500020);
    sub_29E4FB310();
    v8 = [*(*(v0 + 80) + 32) profileIdentifier];
    sub_29E4FB7D0();

    MEMORY[0x29ED8AD70](0x697373696D736944, 0xEB00000000656C62);

    v9 = sub_29E4FB4C0();
    v11 = v10;
    v13 = v12;
    v15 = v14;

    *(v0 + 144) = v9;
    *(v0 + 152) = v11;
    *(v0 + 160) = v13;
    *(v0 + 217) = v15;
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    sub_29E4A1710((v0 + 16), v16);
    sub_29E4CDB4C(v9, v11, v13, v15);
    v18 = swift_task_alloc();
    *(v0 + 168) = v18;
    *v18 = v0;
    v18[1] = sub_29E4C8E88;

    return MEMORY[0x2A1C64D88](v9, v11, v13, v15, v16, v17);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_29E4C8E88(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_29E4C947C;
  }

  else
  {
    sub_29E4CDBC4(*(v3 + 144), *(v3 + 152), *(v3 + 160), *(v3 + 217));
    v4 = sub_29E4C8FAC;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29E4C8FAC()
{
  v1 = *(v0 + 176);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    v20 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v21 = *(v5 + 16);
    v21(v3, v1 + v20, v4);

    (*(v5 + 32))(v2, v3, v4);
    sub_29E4FB3B0();
    sub_29E4FC390();
    v6 = sub_29E4FC3B0();
    v7 = sub_29E4FC940();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_29E494000, v6, v7, "Hiding dismissible cloud sync feedItems", v8, 2u);
      MEMORY[0x29ED8BDB0](v8, -1, -1);
    }

    v9 = *(v0 + 136);
    v10 = *(v0 + 112);
    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v13 = *(v0 + 88);

    (*(v12 + 8))(v11, v13);
    v15 = *(v0 + 40);
    v14 = *(v0 + 48);
    sub_29E4A1710((v0 + 16), v15);
    sub_29E4D018C(0, &qword_2A1A708B8, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v16 = swift_allocObject();
    *(v0 + 192) = v16;
    *(v16 + 16) = xmmword_29E4FDE40;
    v21(v16 + v20, v9, v10);
    v17 = swift_task_alloc();
    *(v0 + 200) = v17;
    *v17 = v0;
    v17[1] = sub_29E4C9294;

    return MEMORY[0x2A1C64D78](v16, v15, v14);
  }

  else
  {
    sub_29E4CDBC4(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 217));

    sub_29E4A1754((v0 + 16));

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_29E4C9294()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_29E4C9538;
  }

  else
  {
    v2 = sub_29E4C93C8;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E4C93C8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  sub_29E4CDBC4(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 217));
  (*(v3 + 8))(v1, v2);
  sub_29E4A1754((v0 + 16));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29E4C947C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 217);
  sub_29E4CDBC4(v3, v1, v2, v4);
  sub_29E4CDBC4(v3, v1, v2, v4);
  sub_29E4A1754((v0 + 16));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_29E4C9538()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  sub_29E4CDBC4(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 217));
  (*(v3 + 8))(v1, v2);
  sub_29E4A1754((v0 + 16));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29E4C95EC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_29E4FC3C0();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = sub_29E4FB7F0();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E4C96F4, 0, 0);
}

uint64_t sub_29E4C96F4(uint64_t a1)
{
  v34 = v1;
  v2 = sub_29E4FB650();
  v1[16] = v2;
  if (v2)
  {
    v3 = v2;
    sub_29E4FB7E0();
    swift_getObjectType();
    sub_29E4CD7AC(&qword_2A1A70220, v4, type metadata accessor for CloudSyncExecutor, &unk_29E500020);
    sub_29E4FB310();
    v7 = sub_29E4CA25C(v1[15]);
    if (v7)
    {
      v8 = v1[14];
      v9 = v1[15];
      sub_29E4FC390();
      sub_29E4CF224(v9, v8, MEMORY[0x29EDC16F8]);
      v10 = sub_29E4FC3B0();
      v11 = sub_29E4FC940();
      v12 = os_log_type_enabled(v10, v11);
      v13 = v1[14];
      if (v12)
      {
        v14 = v1[13];
        v15 = v1[10];
        v32 = v1[11];
        v16 = v1[9];
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v33 = v18;
        *v17 = 136446210;
        sub_29E4CF224(v13, v14, MEMORY[0x29EDC16F8]);
        v19 = sub_29E4FC700();
        v21 = v20;
        sub_29E4CF1C4(v13, MEMORY[0x29EDC16F8]);
        v22 = sub_29E4F68F4(v19, v21, &v33);

        *(v17 + 4) = v22;
        _os_log_impl(&dword_29E494000, v10, v11, "Showing cloud sync alert for state %{public}s", v17, 0xCu);
        sub_29E4A1754(v18);
        MEMORY[0x29ED8BDB0](v18, -1, -1);
        MEMORY[0x29ED8BDB0](v17, -1, -1);

        (*(v15 + 8))(v32, v16);
      }

      else
      {
        v28 = v1[10];
        v27 = v1[11];
        v29 = v1[9];

        sub_29E4CF1C4(v13, MEMORY[0x29EDC16F8]);
        (*(v28 + 8))(v27, v29);
      }

      v30 = swift_task_alloc();
      v1[17] = v30;
      *v30 = v1;
      v30[1] = sub_29E4C9B60;
      v31 = v1[15];

      return sub_29E4CA3D0(v31);
    }

    else
    {
      v24 = v1[5];
      v23 = v1[6];
      sub_29E4A1710(v1 + 2, v24);
      v25 = swift_task_alloc();
      v1[22] = v25;
      *v25 = v1;
      v25[1] = sub_29E4C9F20;
      v26 = MEMORY[0x29EDCA190];

      return MEMORY[0x2A1C64D80](v26, v24, v23);
    }
  }

  else
  {

    v5 = v1[1];

    return v5();
  }
}

uint64_t sub_29E4C9B60(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_29E4CA0EC;
  }

  else
  {
    v4 = sub_29E4C9C74;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29E4C9C74()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_29E4A1710(v0 + 2, v2);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_29E4C9D34;
  v4 = v0[18];

  return MEMORY[0x2A1C64D80](v4, v2, v1);
}

uint64_t sub_29E4C9D34()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_29E4CA1A4;
  }

  else
  {
    v2 = sub_29E4C9E68;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}