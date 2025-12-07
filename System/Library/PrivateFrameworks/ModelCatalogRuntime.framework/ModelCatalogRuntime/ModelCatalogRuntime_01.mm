void sub_22D864A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() sharedManager];
  v7 = sub_22D8B19CC();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v11[4] = sub_22D868288;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_22D854268;
  v11[3] = &unk_2840E34C0;
  v9 = _Block_copy(v11);

  v10 = [v6 observeAssetSet:v7 queue:0 handler:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

uint64_t sub_22D864B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_22D8B1B9C();
  sub_22D84C4F8(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  sub_22D8930E4();
}

uint64_t sub_22D864C4C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_22D851A18;

  return v7();
}

_DWORD *sub_22D864D34(uint64_t a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v2 = sub_22D8B178C();
  sub_22D84C6FC(v2, qword_281459298);

  v3 = sub_22D8B176C();
  v4 = sub_22D8B1C6C();

  if (os_log_type_enabled(v3, v4))
  {
    sub_22D84D708();
    swift_slowAlloc();
    sub_22D84E3B0();
    v5 = swift_slowAlloc();
    v35[0] = v5;
    *v1 = 136315138;
    sub_22D8580D8(&qword_27DA0D7A0, &unk_22D8B3B50);
    v6 = sub_22D8B192C();
    v8 = sub_22D84C63C(v6, v7, v35);

    *(v1 + 4) = v8;
    _os_log_impl(&dword_22D84A000, v3, v4, "SubscriptionManagerProvider: Starting request to retrieve disk space needed for subscribers: %s", v1, 0xCu);
    sub_22D84D8A0(v5);
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
    v9 = sub_22D84DC34();
    MEMORY[0x2318D50E0](v9);
  }

  v10 = [objc_opt_self() sharedManager];
  sub_22D8580D8(&qword_27DA0D7A0, &unk_22D8B3B50);
  v11 = sub_22D8B190C();
  v35[0] = 0;
  v12 = [v10 diskSpaceNeededForSubscribers:v11 error:v35];

  v13 = v35[0];
  if (v35[0])
  {
    v14 = v35[0];

    v15 = v14;
    v16 = sub_22D8B176C();
    v17 = sub_22D8B1C4C();

    if (os_log_type_enabled(v16, v17))
    {
      sub_22D84C408();
      v10 = swift_slowAlloc();
      sub_22D84DB48();
      v18 = swift_slowAlloc();
      sub_22D84F510();
      v34 = v12;
      v35[0] = swift_slowAlloc();
      v19 = v35[0];
      *v10 = 136315394;
      v20 = sub_22D8B192C();
      v22 = sub_22D84C63C(v20, v21, v35);

      *(v10 + 1) = v22;
      *(v10 + 6) = 2112;
      *(v10 + 14) = v15;
      *v18 = v13;
      v23 = v15;
      _os_log_impl(&dword_22D84A000, v16, v17, "SubscriptionManagerProvider: Could not retrieve the disk space needed for subscribers: %s. Error: %@", v10, 0x16u);
      sub_22D858120(v18, &qword_27DA0D4D0, &qword_22D8B3400);
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
      sub_22D84D8A0(v19);
      v12 = v34;
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
      v24 = sub_22D84DC34();
      MEMORY[0x2318D50E0](v24);
    }

    swift_willThrow();
  }

  else
  {
    v10 = [v12 unsignedLongLongValue];

    v25 = sub_22D8B176C();
    v26 = sub_22D8B1C6C();

    if (os_log_type_enabled(v25, v26))
    {
      sub_22D84C408();
      v27 = v12;
      v28 = swift_slowAlloc();
      sub_22D84F510();
      v29 = swift_slowAlloc();
      v35[0] = v29;
      *v28 = 136315394;
      v30 = sub_22D8B192C();
      v32 = sub_22D84C63C(v30, v31, v35);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2048;
      *(v28 + 14) = v10;
      _os_log_impl(&dword_22D84A000, v25, v26, "SubscriptionManagerProvider: Disk space needed for subscribers: %s, bytes: %llu", v28, 0x16u);
      sub_22D84D8A0(v29);
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
    }

    else
    {
    }
  }

  return v10;
}

id sub_22D8651BC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v39[1] = *MEMORY[0x277D85DE8];
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v7 = sub_22D8B178C();
  sub_22D84C6FC(v7, qword_281459298);

  v8 = sub_22D8B176C();
  v9 = sub_22D8B1C6C();

  if (os_log_type_enabled(v8, v9))
  {
    sub_22D84C408();
    v10 = a3;
    v11 = swift_slowAlloc();
    sub_22D84F584();
    v39[0] = swift_slowAlloc();
    *v11 = 136315394;
    v12 = sub_22D84C63C(a1, a2, v39);
    sub_22D854F4C(v12);
    *(v11 + 14) = sub_22D84C63C(v10, a4, v13);
    _os_log_impl(&dword_22D84A000, v8, v9, "SubscriptionManagerProvider: Starting request to retrieve disk space needed for subscriber: %s, subscription name: %s", v11, 0x16u);
    swift_arrayDestroy();
    v14 = sub_22D8507BC();
    MEMORY[0x2318D50E0](v14);
    a3 = v10;
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
  }

  else
  {
  }

  v15 = [objc_opt_self() sharedManager];
  v16 = sub_22D8B19CC();
  v39[0] = 0;
  v17 = sub_22D8680E0(v16, a3, a4, v39, v15);

  v18 = v39[0];
  if (v39[0])
  {
    v36 = a3;
    v19 = v39[0];

    v20 = v19;
    v21 = sub_22D8B176C();
    v22 = sub_22D8B1C4C();

    if (os_log_type_enabled(v21, v22))
    {
      sub_22D84F510();
      v37 = v17;
      v23 = swift_slowAlloc();
      sub_22D84DB48();
      v24 = swift_slowAlloc();
      sub_22D84F584();
      v39[0] = swift_slowAlloc();
      *v23 = 136315650;
      *(v23 + 4) = sub_22D84C63C(a1, a2, v39);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_22D84C63C(v36, a4, v39);
      *(v23 + 22) = 2112;
      *(v23 + 24) = v20;
      *v24 = v18;
      v25 = v20;
      _os_log_impl(&dword_22D84A000, v21, v22, "SubscriptionManagerProvider: Could not retrieve the disk space needed for subscriber: %s, subscription name: %s. Error: %@", v23, 0x20u);
      sub_22D858120(v24, &qword_27DA0D4D0, &qword_22D8B3400);
      v26 = sub_22D8507BC();
      MEMORY[0x2318D50E0](v26);
      swift_arrayDestroy();
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
      v17 = v37;
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
    }

    swift_willThrow();
  }

  else
  {
    v27 = v17;
    v17 = [v17 longLongValue];

    v28 = sub_22D8B176C();
    v29 = sub_22D8B1C6C();

    if (os_log_type_enabled(v28, v29))
    {
      sub_22D84F510();
      v30 = a3;
      v31 = swift_slowAlloc();
      sub_22D84F584();
      v39[0] = swift_slowAlloc();
      *v31 = 136315650;
      v32 = sub_22D84C63C(a1, a2, v39);
      sub_22D854F4C(v32);
      *(v31 + 14) = sub_22D84C63C(v30, a4, v33);
      *(v31 + 22) = 2048;
      *(v31 + 24) = v17;
      _os_log_impl(&dword_22D84A000, v28, v29, "SubscriptionManagerProvider: Disk space needed for subscriber: %s, subscription name: %s, bytes: %lld", v31, 0x20u);
      swift_arrayDestroy();
      v34 = sub_22D8507BC();
      MEMORY[0x2318D50E0](v34);
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
    }
  }

  return v17;
}

uint64_t sub_22D865664()
{
  sub_22D84D198();
  v0[20] = v1;
  v0[21] = v2;
  v0[19] = v3;
  v4 = sub_22D8B088C();
  v0[22] = v4;
  sub_22D84C5D0(v4);
  v0[23] = v5;
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22D86573C()
{
  v57 = v0;
  v1 = v0[21];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v55 = MEMORY[0x277D84F90];
    sub_22D8B1E7C();
    v4 = sub_22D8B0F3C();
    sub_22D84C5D0(v4);
    v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v8 = *(v7 + 72);
    do
    {
      sub_22D8663C8(v6, v0 + 18, v56);
      sub_22D8B1E5C();
      sub_22D8B1E8C();
      sub_22D8B1E9C();
      sub_22D8B1E6C();
      v6 += v8;
      --v2;
    }

    while (v2);
    v3 = v55;
  }

  v9 = sub_22D886CD4();
  v10 = MEMORY[0x277D84F90];
  v54 = v3;
  if (v9)
  {
    v11 = v9;
    v56[0] = MEMORY[0x277D84F90];
    v12 = sub_22D87B9A8(0, v9 & ~(v9 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      return MEMORY[0x282200938](v12);
    }

    v13 = 0;
    v10 = v56[0];
    v14 = v3 & 0xC000000000000001;
    do
    {
      if (v14)
      {
        v15 = MEMORY[0x2318D4700](v13, v3);
      }

      else
      {
        v15 = *(v3 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = [v16 name];
      v18 = sub_22D8B19FC();
      v20 = v19;

      v56[0] = v10;
      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_22D87B9A8((v21 > 1), v22 + 1, 1);
        v10 = v56[0];
      }

      ++v13;
      *(v10 + 16) = v22 + 1;
      v23 = v10 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v3 = v54;
    }

    while (v11 != v13);
  }

  v0[28] = v10;
  sub_22D8B087C();
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v25 = v0[26];
  v24 = v0[27];
  v27 = v0[22];
  v26 = v0[23];
  v28 = sub_22D8B178C();
  v0[29] = sub_22D84C6FC(v28, qword_281459298);
  v29 = *(v26 + 16);
  v0[30] = v29;
  v0[31] = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v29(v25, v24, v27);

  v30 = sub_22D8B176C();
  v31 = sub_22D8B1C6C();

  v32 = os_log_type_enabled(v30, v31);
  v33 = v0[26];
  v35 = v0[22];
  v34 = v0[23];
  if (v32)
  {
    v52 = v0[19];
    v53 = v0[20];
    sub_22D84F510();
    v36 = swift_slowAlloc();
    v56[0] = swift_slowAlloc();
    *v36 = 136315650;
    sub_22D868230();
    v37 = sub_22D8B1F5C();
    v39 = v38;
    v51 = v31;
    v40 = *(v34 + 8);
    v40(v33, v35);
    sub_22D84C63C(v37, v39, v56);
    sub_22D868470();

    *(v36 + 4) = v33;
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_22D84C63C(v52, v53, v56);
    *(v36 + 22) = 2080;
    v41 = MEMORY[0x2318D43B0](v10, MEMORY[0x277D837D0]);
    v43 = sub_22D84C63C(v41, v42, v56);

    *(v36 + 24) = v43;
    _os_log_impl(&dword_22D84A000, v30, v51, "SubscriptionManagerProvider: Request ID: %s, subscription request for: %s, UAF subscriptions: %s", v36, 0x20u);
    swift_arrayDestroy();
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
    v44 = sub_22D84DC34();
    MEMORY[0x2318D50E0](v44);
  }

  else
  {

    v40 = *(v34 + 8);
    v40(v33, v35);
  }

  v0[32] = v40;
  v45 = [objc_opt_self() sharedManager];
  v0[33] = v45;
  v46 = sub_22D8B19CC();
  v0[34] = v46;
  sub_22D85AFB0(0, &qword_2814584A0, 0x277D77A08);
  v47 = sub_22D8B1ACC();
  v0[35] = v47;

  v0[2] = v0;
  sub_22D852274();
  v48 = swift_continuation_init();
  v0[17] = sub_22D8580D8(&qword_27DA0D7B0, &unk_22D8B3B68);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  sub_22D84D824();
  v0[13] = v49;
  v0[14] = v48;
  [v45 subscribe:v46 subscriptions:v47 queue:0 completion:v0 + 10];
  v12 = v0 + 2;

  return MEMORY[0x282200938](v12);
}

uint64_t sub_22D865D20()
{
  sub_22D84D198();
  sub_22D84C734();
  sub_22D84C3C8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 288) = *(v3 + 48);
  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22D865E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22D84DF84();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v28 = *(v24 + 272);
  v27 = *(v24 + 280);
  v29 = *(v24 + 240);
  v30 = *(v24 + 216);
  v31 = *(v24 + 200);
  v32 = *(v24 + 176);

  v29(v31, v30, v32);

  v33 = sub_22D8B176C();
  v34 = sub_22D8B1C6C();

  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v24 + 256);
  v37 = *(v24 + 216);
  v38 = *(v24 + 224);
  v39 = *(v24 + 176);
  v40 = *(v24 + 184);
  if (v35)
  {
    sub_22D84C408();
    a12 = v37;
    v41 = swift_slowAlloc();
    sub_22D84F584();
    a10 = swift_slowAlloc();
    a13 = a10;
    *v41 = 136315394;
    sub_22D868230();
    sub_22D8B1F5C();
    HIDWORD(a9) = v34;
    v43 = v42;
    a11 = v40 + 8;
    v44 = sub_22D8684A0();
    v36(v44);
    v45 = v36;
    v46 = sub_22D868494();
    v48 = sub_22D84C63C(v46, v43, v47);

    *(v41 + 4) = v48;
    *(v41 + 12) = 2080;
    v49 = MEMORY[0x2318D43B0](v38, MEMORY[0x277D837D0]);
    v51 = v50;

    sub_22D84C63C(v49, v51, &a13);
    sub_22D84F8C0();

    *(v41 + 14) = v49;
    _os_log_impl(&dword_22D84A000, v33, BYTE4(a9), "SubscriptionManagerProvider: Request ID: %s, successfully subscribed to subscriptions %s", v41, 0x16u);
    swift_arrayDestroy();
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
    v52 = sub_22D84DC34();
    MEMORY[0x2318D50E0](v52);

    (v45)(a12, v39);
  }

  else
  {

    v53 = sub_22D8684A0();
    v36(v53);
    (v36)(v37, v39);
  }

  sub_22D84D800();
  sub_22D84E168();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22D866084(uint64_t a1)
{
  v3 = v1[35];
  v2 = v1[36];
  v5 = v1[33];
  v4 = v1[34];
  v6 = v1[30];
  v7 = v1[22];
  swift_willThrow();

  v8 = sub_22D8519BC();
  v6(v8);
  v9 = v2;
  v10 = sub_22D8B176C();
  v11 = sub_22D8B1C4C();

  if (os_log_type_enabled(v10, v11))
  {
    v45 = v1[32];
    v47 = v1[36];
    v12 = v1[22];
    sub_22D84C408();
    v13 = swift_slowAlloc();
    sub_22D84DB48();
    swift_slowAlloc();
    sub_22D84E3B0();
    v49 = swift_slowAlloc();
    *v13 = 136315394;
    sub_22D868230();
    sub_22D8B1F5C();
    v15 = v14;
    v16 = sub_22D84DA44();
    v45(v16, v12);
    v17 = sub_22D868494();
    sub_22D84C63C(v17, v15, v18);
    sub_22D868470();

    sub_22D84E1CC(v19, v20, v21, v22, v23, v24, v25, v26, v44, v45, v47);
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v27;
    *v7 = v27;
    sub_22D86847C(&dword_22D84A000, v10, v11, "SubscriptionManagerProvider: Request ID %s. Failed to subscribe. Error: %@");
    sub_22D858120(v7, &qword_27DA0D4D0, &qword_22D8B3400);
    v28 = sub_22D84DC34();
    MEMORY[0x2318D50E0](v28);
    sub_22D84D8A0(v49);
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
  }

  else
  {
    v29 = v1[32];
    v30 = v1[22];

    v31 = sub_22D84DA44();
    v29(v31, v30);
  }

  v32 = v1[36];
  v33 = v1[28];
  v46 = v1[27];
  v48 = v1[32];
  v34 = v1[22];
  sub_22D8B0A1C();
  v35 = sub_22D855844(&qword_2814587A0);
  sub_22D84DD68(v35);
  v37 = v36;
  sub_22D8B1E2C();

  v38 = MEMORY[0x2318D43B0](v33, MEMORY[0x277D837D0]);
  v40 = v39;

  MEMORY[0x2318D4340](v38, v40);

  *v37 = 0xD000000000000027;
  v37[1] = 0x800000022D8B7D90;
  sub_22D84CE4C();
  (*(v41 + 104))(v37);
  swift_willThrow();

  v48(v46, v34);

  sub_22D84D800();

  return v42();
}

uint64_t sub_22D8663C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a2;
  v5 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v35 - v6;
  v8 = sub_22D8B0F1C();
  v10 = v9;
  v11 = sub_22D8B0F2C();
  v12 = sub_22D8B0EFC();
  sub_22D8B0EEC();
  v13 = objc_allocWithZone(MEMORY[0x277D77A08]);
  result = sub_22D867BC8(v8, v10, v11, v12, v7);
  if (result)
  {
    *a3 = result;
  }

  else
  {
    if (qword_2814589E0 != -1)
    {
      swift_once();
    }

    v15 = sub_22D8B178C();
    sub_22D84C6FC(v15, qword_281459298);
    v16 = sub_22D8B0F3C();
    v17 = *(v16 - 8);
    MEMORY[0x28223BE20](v16);
    v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19, a1, v16);
    v20 = sub_22D8B176C();
    v21 = sub_22D8B1C4C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v35[0] = swift_slowAlloc();
      v36 = v35[0];
      *v22 = 136315138;
      v23 = sub_22D8B0F1C();
      v35[1] = v35;
      v25 = v24;
      (*(v17 + 8))(v19, v16);
      v26 = sub_22D84C63C(v23, v25, &v36);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_22D84A000, v20, v21, "SubscriptionManagerProvider: Failed to create UAFAssetSetSubscription for subscription: %s", v22, 0xCu);
      v27 = v35[0];
      sub_22D84D8A0(v35[0]);
      MEMORY[0x2318D50E0](v27, -1, -1);
      MEMORY[0x2318D50E0](v22, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v19, v16);
    }

    v28 = v38;
    v29 = sub_22D8B0A1C();
    sub_22D8683FC(&qword_2814587A0, MEMORY[0x2822218C8], MEMORY[0x2822218D0]);
    v30 = swift_allocError();
    v32 = v31;
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_22D8B1E2C();
    MEMORY[0x2318D4340](0xD00000000000003BLL, 0x800000022D8B7DC0);
    v33 = sub_22D8B0F1C();
    MEMORY[0x2318D4340](v33);

    v34 = v37;
    *v32 = v36;
    v32[1] = v34;
    (*(*(v29 - 8) + 104))(v32, *MEMORY[0x277D29A90], v29);
    result = swift_willThrow();
    *v28 = v30;
  }

  return result;
}

uint64_t sub_22D8667B4()
{
  sub_22D84D198();
  v0[19] = v1;
  v0[20] = v2;
  v0[18] = v3;
  v4 = sub_22D8B088C();
  v0[21] = v4;
  sub_22D84C5D0(v4);
  v0[22] = v5;
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22D86688C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_22D84DF84();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  sub_22D8B087C();
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v27 = v24[25];
  v28 = v24[26];
  v29 = v24[21];
  v30 = v24[22];
  v31 = sub_22D8B178C();
  v24[27] = sub_22D84C6FC(v31, qword_281459298);
  v32 = *(v30 + 16);
  v24[28] = v32;
  v24[29] = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v32(v27, v28, v29);

  v33 = sub_22D8B176C();
  v34 = sub_22D8B1C6C();

  v35 = os_log_type_enabled(v33, v34);
  v36 = v24[25];
  v38 = v24[21];
  v37 = v24[22];
  if (v35)
  {
    v58 = v24[19];
    v59 = v24[20];
    v57 = v24[18];
    sub_22D84F510();
    v39 = swift_slowAlloc();
    a13 = swift_slowAlloc();
    *v39 = 136315650;
    sub_22D868230();
    v40 = sub_22D8B1F5C();
    v42 = v41;
    v43 = *(v37 + 8);
    v43(v36, v38);
    sub_22D84C63C(v40, v42, &a13);
    sub_22D868470();

    *(v39 + 4) = v36;
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_22D84C63C(v57, v58, &a13);
    *(v39 + 22) = 2080;
    v44 = MEMORY[0x2318D43B0](v59, MEMORY[0x277D837D0]);
    v46 = sub_22D84C63C(v44, v45, &a13);

    *(v39 + 24) = v46;
    _os_log_impl(&dword_22D84A000, v33, v34, "SubscriptionManagerProvider: Request ID: %s, requesting unsubscribe for: %s, subscription names: %s", v39, 0x20u);
    swift_arrayDestroy();
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
    v47 = sub_22D8507BC();
    MEMORY[0x2318D50E0](v47);
  }

  else
  {

    v43 = *(v37 + 8);
    v43(v36, v38);
  }

  v24[30] = v43;
  v48 = [objc_opt_self() sharedManager];
  v24[31] = v48;
  v49 = sub_22D8B19CC();
  v24[32] = v49;
  v50 = sub_22D8B1ACC();
  v24[33] = v50;
  v24[2] = v24;
  sub_22D852274();
  v51 = swift_continuation_init();
  v52 = sub_22D8580D8(&qword_27DA0D7B0, &unk_22D8B3B68);
  sub_22D84DEDC(v52);
  v24[11] = 1107296256;
  sub_22D84D824();
  v24[13] = v53;
  v24[14] = v51;
  [v48 unsubscribe:v49 subscriptionNames:v50 queue:0 completion:v24 + 10];
  sub_22D84E168();

  return MEMORY[0x282200938](v54);
}

uint64_t sub_22D866BE8()
{
  sub_22D84D198();
  sub_22D84C734();
  sub_22D84C3C8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = *(v3 + 48);
  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22D866CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22D84DF84();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v28 = *(v24 + 256);
  v27 = *(v24 + 264);
  v29 = *(v24 + 224);
  v30 = *(v24 + 208);
  v31 = *(v24 + 192);
  v32 = *(v24 + 168);

  v29(v31, v30, v32);

  v33 = sub_22D8B176C();
  v34 = sub_22D8B1C6C();

  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v24 + 240);
  v37 = *(v24 + 208);
  v38 = *(v24 + 168);
  if (v35)
  {
    a10 = *(v24 + 160);
    sub_22D84C408();
    a12 = v36;
    v39 = swift_slowAlloc();
    sub_22D84F584();
    a11 = v37;
    a13 = swift_slowAlloc();
    *v39 = 136315394;
    sub_22D868230();
    sub_22D8B1F5C();
    v41 = v40;
    v42 = sub_22D8684A0();
    a12(v42);
    v43 = sub_22D868494();
    v45 = sub_22D84C63C(v43, v41, v44);

    *(v39 + 4) = v45;
    *(v39 + 12) = 2080;
    v46 = MEMORY[0x2318D43B0](a10, MEMORY[0x277D837D0]);
    v48 = sub_22D84C63C(v46, v47, &a13);

    *(v39 + 14) = v48;
    _os_log_impl(&dword_22D84A000, v33, v34, "SubscriptionManagerProvider: Request ID: %s, successfully unsubscribed from subscriptions %s", v39, 0x16u);
    swift_arrayDestroy();
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
    v49 = sub_22D84DC34();
    MEMORY[0x2318D50E0](v49);

    (a12)(v37, v38);
  }

  else
  {

    v50 = sub_22D8684A0();
    v36(v50);
    (v36)(v37, v38);
  }

  sub_22D84D800();
  sub_22D84E168();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22D866F2C(uint64_t a1)
{
  v3 = v1[33];
  v2 = v1[34];
  v5 = v1[31];
  v4 = v1[32];
  v6 = v1[28];
  v7 = v1[21];
  swift_willThrow();

  v8 = sub_22D8519BC();
  v6(v8);
  v9 = v2;
  v10 = sub_22D8B176C();
  v11 = sub_22D8B1C4C();

  if (os_log_type_enabled(v10, v11))
  {
    v45 = v1[30];
    v46 = v1[34];
    v12 = v1[21];
    sub_22D84C408();
    v13 = swift_slowAlloc();
    sub_22D84DB48();
    swift_slowAlloc();
    sub_22D84E3B0();
    v47 = swift_slowAlloc();
    *v13 = 136315394;
    sub_22D868230();
    sub_22D8B1F5C();
    v15 = v14;
    v16 = sub_22D84DA44();
    v45(v16, v12);
    v17 = sub_22D868494();
    sub_22D84C63C(v17, v15, v18);
    sub_22D868470();

    sub_22D84E1CC(v19, v20, v21, v22, v23, v24, v25, v26, v44, v45, v46);
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v27;
    *v7 = v27;
    sub_22D86847C(&dword_22D84A000, v10, v11, "SubscriptionManagerProvider: Request ID %s. Failed to unsubscribe. Error: %@");
    sub_22D858120(v7, &qword_27DA0D4D0, &qword_22D8B3400);
    v28 = sub_22D84DC34();
    MEMORY[0x2318D50E0](v28);
    sub_22D84D8A0(v47);
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
  }

  else
  {
    v29 = v1[30];
    v30 = v1[21];

    v31 = sub_22D84DA44();
    v29(v31, v30);
  }

  v32 = v1[34];
  v33 = v1[30];
  v34 = v1[26];
  v35 = v1[20];
  v36 = v1[21];
  sub_22D8B0A1C();
  v37 = sub_22D855844(&qword_2814587A0);
  sub_22D84DD68(v37);
  v39 = v38;
  sub_22D8B1E2C();

  v40 = MEMORY[0x2318D43B0](v35, MEMORY[0x277D837D0]);
  MEMORY[0x2318D4340](v40);

  *v39 = 0xD000000000000029;
  v39[1] = 0x800000022D8B7D60;
  sub_22D84CE4C();
  (*(v41 + 104))(v39);
  swift_willThrow();

  v33(v34, v36);

  sub_22D84D800();

  return v42();
}

char *sub_22D86725C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v61 - v5;
  if (qword_2814589E0 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v7 = sub_22D8B178C();
    v8 = sub_22D84C6FC(v7, qword_281459298);

    v9 = sub_22D8B176C();
    v10 = sub_22D8B1C6C();

    if (os_log_type_enabled(v9, v10))
    {
      sub_22D84D708();
      v11 = swift_slowAlloc();
      sub_22D84F510();
      v12 = swift_slowAlloc();
      v72 = v12;
      *(v11 + 4) = sub_22D84C484(4.8149e-34);
      sub_22D84EB50();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      sub_22D84D8A0(v12);
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
      sub_22D84E45C();
      MEMORY[0x2318D50E0]();
    }

    v18 = [objc_opt_self() sharedManager];
    sub_22D868470();
    v19 = sub_22D8B19CC();
    v20 = [v10 subscriptionsForSubscriber_];

    if (!v20)
    {

      v43 = sub_22D8B176C();
      v44 = sub_22D8B1C6C();

      if (os_log_type_enabled(v43, v44))
      {
        sub_22D84D708();
        v45 = swift_slowAlloc();
        sub_22D84F510();
        v46 = swift_slowAlloc();
        v72 = v46;
        *(v45 + 4) = sub_22D84C484(4.8149e-34);
        sub_22D84EB50();
        _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
        sub_22D84D8A0(v46);
        sub_22D84E45C();
        MEMORY[0x2318D50E0]();
        sub_22D84E45C();
        MEMORY[0x2318D50E0]();
      }

      return MEMORY[0x277D84F90];
    }

    sub_22D85AFB0(0, &qword_2814584A0, 0x277D77A08);
    v21 = sub_22D8B1ADC();

    v22 = sub_22D886CD4();
    if (!v22)
    {

      v6 = MEMORY[0x277D84F90];
LABEL_28:

      v52 = sub_22D8B176C();
      v53 = sub_22D8B1C6C();

      if (os_log_type_enabled(v52, v53))
      {
        sub_22D84C408();
        v54 = swift_slowAlloc();
        sub_22D84F510();
        v55 = swift_slowAlloc();
        v72 = v55;
        *(v54 + 4) = sub_22D84C484(4.8151e-34);
        *(v54 + 12) = 2048;
        *(v54 + 14) = *(v6 + 2);

        sub_22D84EB50();
        _os_log_impl(v56, v57, v58, v59, v60, 0x16u);
        sub_22D84D8A0(v55);
        sub_22D84E45C();
        MEMORY[0x2318D50E0]();
        sub_22D84E45C();
        MEMORY[0x2318D50E0]();
      }

      else
      {
      }

      return v6;
    }

    v23 = v22;
    v72 = MEMORY[0x277D84F90];
    result = sub_22D87BB0C(0, v22 & ~(v22 >> 63), 0);
    if (v23 < 0)
    {
      break;
    }

    v68 = v6;
    v61[0] = v8;
    v61[1] = a1;
    v61[2] = a2;
    v6 = v72;
    v70 = v21 & 0xC000000000000001;
    v25 = 0;
    v65 = sub_22D8B0F3C();
    sub_22D84D7DC();
    v69 = *(v27 + 64);
    v64 = v28;
    v62 = v21 & 0xFFFFFFFFFFFFFF8;
    v63 = v28 + 32;
    v66 = v23;
    v67 = v21;
    while (1)
    {
      MEMORY[0x28223BE20](v26);
      v30 = v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v70)
      {
        v31 = MEMORY[0x2318D4700](v25, v21);
        goto LABEL_13;
      }

      if ((v25 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v25 >= *(v62 + 16))
      {
        goto LABEL_33;
      }

      v31 = *(v21 + 8 * v25 + 32);
LABEL_13:
      v32 = v31;
      v33 = [v31 name];
      a2 = sub_22D8B19FC();
      a1 = v34;

      v35 = sub_22D868150(v32);
      v71 = v61;
      if (!v35)
      {
        sub_22D8580D8(&qword_27DA0D7A8, &qword_22D8B3B60);
        sub_22D8B193C();
      }

      if (!sub_22D8681CC(v32))
      {
        sub_22D8B193C();
      }

      v36 = [v32 expiration];
      if (v36)
      {
        v37 = v36;
        v38 = v68;
        sub_22D8B082C();

        v39 = 0;
      }

      else
      {
        v39 = 1;
        v38 = v68;
      }

      v40 = sub_22D8B083C();
      sub_22D84C4F8(v38, v39, 1, v40);
      sub_22D8B0F0C();

      v72 = v6;
      v42 = *(v6 + 2);
      v41 = *(v6 + 3);
      if (v42 >= v41 >> 1)
      {
        sub_22D87BB0C((v41 > 1), v42 + 1, 1);
        v6 = v72;
      }

      ++v25;
      *(v6 + 2) = v42 + 1;
      v26 = (*(v64 + 32))(&v6[((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v42], v30, v65);
      v21 = v67;
      if (v66 == v25)
      {

        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    sub_22D86845C();
    swift_once();
  }

  __break(1u);
  return result;
}

id sub_22D8678C0(uint64_t a1)
{
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v1 = sub_22D8B178C();
  sub_22D84C6FC(v1, qword_281459298);

  v2 = sub_22D8B176C();
  v3 = sub_22D8B1C6C();

  if (os_log_type_enabled(v2, v3))
  {
    sub_22D84D708();
    v4 = swift_slowAlloc();
    sub_22D84F510();
    v5 = swift_slowAlloc();
    v25 = v5;
    *v4 = 136315138;
    sub_22D8580D8(&qword_27DA0D7A0, &unk_22D8B3B50);
    v6 = sub_22D8B192C();
    v8 = sub_22D84C63C(v6, v7, &v25);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_22D84A000, v2, v3, "SubscriptionManagerProvider: Starting sync request to retrieve download status for subscribers: %s", v4, 0xCu);
    sub_22D84D8A0(v5);
    sub_22D84E45C();
    MEMORY[0x2318D50E0]();
    v9 = sub_22D8507BC();
    MEMORY[0x2318D50E0](v9);
  }

  v10 = [objc_opt_self() sharedManager];
  sub_22D8580D8(&qword_27DA0D7A0, &unk_22D8B3B50);
  v11 = sub_22D8B190C();
  v12 = [v10 downloadStatusForSubscribers_];

  v13 = sub_22D8B176C();
  v14 = sub_22D8B1C6C();

  if (os_log_type_enabled(v13, v14))
  {
    sub_22D84C408();
    v15 = swift_slowAlloc();
    sub_22D84F584();
    v25 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = sub_22D8B192C();
    v18 = sub_22D84C63C(v16, v17, &v25);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    type metadata accessor for SubscriptionDownloadStatus(0);
    v19 = sub_22D8B1A4C();
    v21 = sub_22D84C63C(v19, v20, &v25);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_22D84A000, v13, v14, "SubscriptionManagerProvider: Sync download status for subscribers: %s, returned download status: %s", v15, 0x16u);
    swift_arrayDestroy();
    sub_22D84E45C();
    MEMORY[0x2318D50E0](v22);
    sub_22D84E45C();
    MEMORY[0x2318D50E0](v23);
  }

  return v12;
}

id sub_22D867BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_22D8B19CC();

  if (a3)
  {
    sub_22D8580D8(&qword_27DA0D7A8, &qword_22D8B3B60);
    v11 = sub_22D8B190C();

    if (a4)
    {
LABEL_3:
      v12 = sub_22D8B190C();

      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v13 = sub_22D8B083C();
  v14 = 0;
  if (sub_22D84D0C0(a5, 1, v13) != 1)
  {
    v14 = sub_22D8B07FC();
    (*(*(v13 - 8) + 8))(a5, v13);
  }

  v15 = [v6 initWithName:v10 assetSets:v11 usageAliases:v12 expires:v14];

  return v15;
}

uint64_t sub_22D867D34(uint64_t a1, unint64_t a2)
{
  v3 = sub_22D867D80(a1, a2);
  sub_22D867E98(&unk_2840E2B70);
  return v3;
}

uint64_t sub_22D867D80(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_22D8B1A9C())
  {
    result = sub_22D867F7C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_22D8B1E1C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_22D8B1E4C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22D867E98(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_22D867FEC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22D867F7C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_22D8580D8(&qword_27DA0D7C8, &qword_22D8B3BB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_22D867FEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_22D8580D8(&qword_27DA0D7C8, &qword_22D8B3BB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

id sub_22D8680E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_22D8B19CC();
  v9 = [a5 diskSpaceNeededForSubscriber:a1 subscriptionName:v8 error:a4];

  return v9;
}

uint64_t sub_22D868150(void *a1)
{
  v1 = [a1 assetSets];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_22D8580D8(&qword_27DA0D7A8, &qword_22D8B3B60);
  v3 = sub_22D8B191C();

  return v3;
}

uint64_t sub_22D8681CC(void *a1)
{
  v1 = [a1 usageAliases];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22D8B191C();

  return v3;
}

unint64_t sub_22D868230()
{
  result = qword_2814587A8;
  if (!qword_2814587A8)
  {
    sub_22D8B088C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814587A8);
  }

  return result;
}

uint64_t sub_22D868290(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22D8682A8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = sub_22D84DC44(v3);

  return sub_22D864C4C(v4, v5, v6, v2);
}

uint64_t sub_22D868358()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = sub_22D84DC44(v3);

  return sub_22D8646B8(v4, v5, v6, v2);
}

uint64_t sub_22D8683FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22D86847C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_22D8684C0(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_22D84C63C(v4, v3, va);
}

uint64_t sub_22D8684F8()
{

  return sub_22D8B178C();
}

BOOL sub_22D868510()
{

  return os_log_type_enabled(v1, v0);
}

void sub_22D868528(uint64_t a1, NSObject *a2)
{
  v4[4] = sub_22D868638;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_22D868C78;
  v4[3] = &unk_2840E35B0;
  v3 = _Block_copy(v4);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", a2, v3);
  _Block_release(v3);
}

const char *sub_22D8685D8(void *a1)
{
  v2 = sub_22D8B183C();
  result = xpc_dictionary_get_string(a1, v2);
  if (result)
  {
    v4 = sub_22D8B1A8C();
    sub_22D86863C(v4, v5);
  }

  return result;
}

void sub_22D86863C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v48 - v6;
  v8 = sub_22D8B1B9C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814588B0 != -1)
  {
    swift_once();
  }

  v12 = qword_281459288;
  sub_22D8B19FC();
  sub_22D84DC5C();
  v15 = v15 && v14 == a2;
  if (v15)
  {
    goto LABEL_54;
  }

  sub_22D868F38(v13);
  sub_22D84D838();
  if (v2)
  {
    goto LABEL_55;
  }

  if (qword_2814588B8 != -1)
  {
    swift_once();
  }

  v12 = qword_281459290;
  sub_22D8B19FC();
  sub_22D84DC5C();
  if (v15 && v17 == a2)
  {
    goto LABEL_54;
  }

  sub_22D868F38(v16);
  sub_22D84D838();
  if (v2)
  {
    goto LABEL_55;
  }

  if (qword_2814584B0 != -1)
  {
    swift_once();
  }

  v12 = qword_281459248;
  sub_22D8B19FC();
  sub_22D84DC5C();
  if (v15 && v20 == a2)
  {
    goto LABEL_54;
  }

  sub_22D868F38(v19);
  sub_22D84D838();
  if (v2)
  {
    goto LABEL_55;
  }

  if (qword_2814584B8 != -1)
  {
    swift_once();
  }

  v12 = qword_281459250;
  sub_22D8B19FC();
  sub_22D84DC5C();
  if (v15 && v23 == a2)
  {
    goto LABEL_54;
  }

  sub_22D868F38(v22);
  sub_22D84D838();
  if (v2)
  {
    goto LABEL_55;
  }

  if (qword_2814584C0 != -1)
  {
    swift_once();
  }

  v12 = qword_281459258;
  sub_22D8B19FC();
  sub_22D84DC5C();
  if (v15 && v26 == a2)
  {
    goto LABEL_54;
  }

  sub_22D868F38(v25);
  sub_22D84D838();
  if (v2)
  {
    goto LABEL_55;
  }

  if (qword_2814584A8 != -1)
  {
    swift_once();
  }

  v12 = qword_281459240;
  sub_22D8B19FC();
  sub_22D84DC5C();
  if (v15 && v29 == a2)
  {
    goto LABEL_54;
  }

  sub_22D868F38(v28);
  sub_22D84D838();
  if (v2)
  {
    goto LABEL_55;
  }

  if (qword_2814584D0 != -1)
  {
    swift_once();
  }

  v12 = qword_281459260;
  sub_22D8B19FC();
  sub_22D84DC5C();
  if (v15 && v32 == a2)
  {
LABEL_54:

    goto LABEL_55;
  }

  sub_22D868F38(v31);
  sub_22D84D838();
  if ((v2 & 1) == 0)
  {
    if (qword_2814589E0 != -1)
    {
      sub_22D84DE60(&qword_2814589E0);
    }

    v34 = sub_22D8B178C();
    sub_22D84C6FC(v34, qword_281459298);

    v48 = sub_22D8B176C();
    v35 = sub_22D8B1C4C();

    if (os_log_type_enabled(v48, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49 = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_22D84C63C(a1, a2, &v49);
      _os_log_impl(&dword_22D84A000, v48, v35, "Not reposting notification. Could not find match for %{public}s", v36, 0xCu);
      sub_22D84D8A0(v37);
      sub_22D84C3D8();
      sub_22D84C3D8();
    }

    else
    {
      v47 = v48;
    }

    return;
  }

LABEL_55:
  v38 = v12;
  sub_22D8B1B6C();
  if (qword_2814589E0 != -1)
  {
    sub_22D84DE60(&qword_2814589E0);
  }

  v39 = sub_22D8B178C();
  sub_22D84C6FC(v39, qword_281459298);
  v40 = v38;
  v41 = sub_22D8B176C();
  v42 = sub_22D8B1C6C();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138543362;
    *(v43 + 4) = v40;
    *v44 = v40;
    v45 = v40;
    _os_log_impl(&dword_22D84A000, v41, v42, "Reposting notification %{public}@", v43, 0xCu);
    sub_22D862C98(v44);
    sub_22D84C3D8();
    sub_22D84C3D8();
  }

  (*(v9 + 16))(v7, v11, v8);
  sub_22D84C4F8(v7, 0, 1, v8);
  v46 = swift_allocObject();
  v46[2] = 0;
  v46[3] = 0;
  v46[4] = v40;
  sub_22D8930E4();

  (*(v9 + 8))(v11, v8);
}

uint64_t sub_22D868C78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_22D868CF8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() defaultCenter];
  [v2 postNotificationName:v1 object:0];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22D868D90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D868E44;

  return sub_22D868CD8(a1, v4, v5, v6);
}

uint64_t sub_22D868E44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22D868F38(uint64_t a1)
{

  return sub_22D8B1F8C();
}

uint64_t sub_22D868F58()
{
  v1 = [*(v0 + 16) row];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22D8B191C();

  return v3;
}

id sub_22D868FC8()
{
  v1 = [*(v0 + 16) error];

  return v1;
}

uint64_t sub_22D869000()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22D86905C(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x277CF1A88]) initWithUseCase_];
  return v1;
}

uint64_t sub_22D8690A4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22D8B1C1C();
  v3 = type metadata accessor for BiomeSQLDatabaseResultSet();
  result = swift_allocObject();
  *(result + 16) = v2;
  a1[3] = v3;
  a1[4] = &off_2840E3600;
  *a1 = result;
  return result;
}

id sub_22D869100(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v9 = *(v5 + 24);
  v10 = sub_22D8B19CC();
  aBlock[4] = a4;
  aBlock[5] = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D86924C;
  aBlock[3] = &unk_2840E3640;
  v11 = _Block_copy(aBlock);

  aBlock[0] = 0;
  LODWORD(a3) = [v9 registerFunctionWithName:v10 numArgs:a3 function:v11 error:aBlock];
  _Block_release(v11);

  if (a3)
  {
    return aBlock[0];
  }

  v13 = aBlock[0];
  sub_22D8B069C();

  return swift_willThrow();
}

id sub_22D86924C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_22D8B1ADC();

  v4(v13, v5, a3);

  v6 = v14;
  if (v14)
  {
    v7 = sub_22D84E124(v13, v14);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_22D8B1F7C();
    (*(v8 + 8))(v10, v6);
    sub_22D84D8A0(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_22D8693EC()
{
  sub_22D8693C4();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_22D869444(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v49 = MEMORY[0x277D84F90];
    sub_22D87B9A8(0, v2, 0);
    v48 = v49;
    v4 = sub_22D872604(v1);
    v6 = v5;
    v7 = v1 + 56;
    result = sub_22D8B0C6C();
    v8 = 0;
    v43 = result;
    v9 = *(result - 8);
    v41 = v9 + 16;
    v44 = *(v9 + 64);
    v42 = v9;
    v39 = v1;
    v40 = v9 + 8;
    v36 = v1 + 64;
    v37 = v2;
    v38 = v1 + 56;
    while (1)
    {
      result = MEMORY[0x28223BE20](result);
      v13 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v4 < 0 || v4 >= v12 << *(v1 + 32))
      {
        break;
      }

      v45 = v8;
      v14 = v4 >> 6;
      v15 = v12 << v4;
      if ((*(v7 + 8 * (v4 >> 6)) & (v12 << v4)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v1 + 36) != v11)
      {
        goto LABEL_26;
      }

      v47 = v6;
      v46 = v11;
      v17 = v42;
      v16 = v43;
      (*(v42 + 16))(&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), *(v1 + 48) + *(v42 + 72) * v4, v43);
      v18 = sub_22D8B0C3C();
      v20 = v19;
      result = (*(v17 + 8))(v13, v16);
      v21 = v48;
      v49 = v48;
      v23 = *(v48 + 16);
      v22 = *(v48 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_22D87B9A8((v22 > 1), v23 + 1, 1);
        v21 = v49;
      }

      *(v21 + 16) = v23 + 1;
      v24 = v21 + 16 * v23;
      *(v24 + 32) = v18;
      *(v24 + 40) = v20;
      if (v47)
      {
        goto LABEL_30;
      }

      v7 = v38;
      v1 = v39;
      v25 = 1 << *(v39 + 32);
      if (v4 >= v25)
      {
        goto LABEL_27;
      }

      v26 = *(v38 + 8 * v14);
      if ((v26 & v15) == 0)
      {
        goto LABEL_28;
      }

      v48 = v21;
      if (*(v39 + 36) != v46)
      {
        goto LABEL_29;
      }

      v27 = v26 & (-2 << (v4 & 0x3F));
      if (v27)
      {
        v25 = __clz(__rbit64(v27)) | v4 & 0x7FFFFFFFFFFFFFC0;
        v28 = v37;
        v29 = v45;
      }

      else
      {
        v30 = v14 << 6;
        v31 = v14 + 1;
        v28 = v37;
        v32 = (v36 + 8 * v14);
        v29 = v45;
        while (v31 < (v25 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_22D8726C0(v4, v46, 0);
            v25 = __clz(__rbit64(v33)) + v30;
            goto LABEL_20;
          }
        }

        result = sub_22D8726C0(v4, v46, 0);
      }

LABEL_20:
      v8 = v29 + 1;
      if (v8 == v28)
      {
        return v48;
      }

      v6 = 0;
      v4 = v25;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_22D869778(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a4 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = v15[1];
      v17[0] = *v15;
      v17[1] = v16;

      a2(&v18, v17);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v18;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22D8698C0()
{
  v0 = sub_22D8580D8(&qword_27DA0D798, &unk_22D8B3AF0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_22D8B06AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D8B073C();
  sub_22D858E88(v7, qword_281459468);
  sub_22D84C6FC(v7, qword_281459468);
  (*(v4 + 104))(v6, *MEMORY[0x277CC91C0], v3);
  sub_22D84C4F8(v2, 1, 1, v7);
  return sub_22D8B071C();
}

uint64_t sub_22D869A48()
{
  sub_22D84D198();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  sub_22D84DD88(v5);

  return sub_22D84FAA4();
}

uint64_t sub_22D869AD4()
{
  sub_22D84D77C();
  sub_22D84C734();
  v3 = v2;
  sub_22D84F51C();
  *v4 = v3;
  v5 = *v1;
  sub_22D84CED0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_22D872930();

    return v7();
  }

  else
  {
    sub_22D854F60();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_22D869BF8()
{
  v1 = *(*(v0 + 40) + 192);
  *(v0 + 64) = v1;
  return sub_22D84DC68(sub_22D869C18, v1);
}

uint64_t sub_22D869C18()
{
  sub_22D84D77C();
  sub_22D873A34(v0[2], v0[3], v0[4]);
  sub_22D84C4A4();

  return v1();
}

uint64_t sub_22D869C90()
{
  sub_22D84D198();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  sub_22D84DD88(v2);

  return sub_22D84FAA4();
}

uint64_t sub_22D869D18()
{
  sub_22D84D77C();
  sub_22D84C734();
  v3 = v2;
  sub_22D84F51C();
  *v4 = v3;
  v5 = *v1;
  sub_22D84CED0();
  *v6 = v5;
  *(v3 + 32) = v0;

  if (v0)
  {
    sub_22D872930();

    return v7();
  }

  else
  {
    sub_22D854F60();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_22D869E3C()
{
  v1 = *(*(v0 + 16) + 192);
  *(v0 + 40) = v1;
  return sub_22D84DC68(sub_22D869E5C, v1);
}

uint64_t sub_22D869E5C()
{
  sub_22D84D77C();
  sub_22D873B20();
  sub_22D84C4A4();

  return v0();
}

uint64_t sub_22D869ECC()
{
  sub_22D84F8A0();
  v3 = v2;
  sub_22D84C734();
  v5 = v4;
  sub_22D84F51C();
  *v6 = v5;
  v7 = *v1;
  sub_22D84CED0();
  *v8 = v7;
  *(v5 + 232) = v3;

  if (v0)
  {
    sub_22D8554C0();

    __asm { BRAA            X1, X16 }
  }

  v11 = swift_task_alloc();
  *(v5 + 240) = v11;
  *v11 = v7;
  v11[1] = sub_22D86A050;
  sub_22D8554C0();

  return sub_22D874E48(v12);
}

uint64_t sub_22D86A050()
{
  sub_22D84D77C();
  sub_22D84C734();
  v3 = v2;
  sub_22D84F51C();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 248) = v5;

  if (v0)
  {

    sub_22D872930();

    return v6();
  }

  else
  {
    sub_22D854F60();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

void sub_22D86A184()
{
  v1 = v0[29];
  v2 = sub_22D886CD4();
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = v1 + 32;
  v32 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if (v4)
    {
      v7 = MEMORY[0x2318D4700](v3, v0[29]);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_21;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v10 = sub_22D879180(v7);
    v12 = v11;

    ++v3;
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22D84C414();
        sub_22D851D5C();
        v32 = v16;
      }

      v14 = v32[2];
      v13 = v32[3];
      if (v14 >= v13 >> 1)
      {
        sub_22D84C4D0(v13);
        sub_22D851D5C();
        v32 = v17;
      }

      v32[2] = v14 + 1;
      v15 = &v32[2 * v14];
      v15[4] = v10;
      v15[5] = v12;
      v3 = v9;
    }
  }

  v18 = v32[2];
  if (v18)
  {
    v19 = v32 + 5;
    do
    {
      v20 = v0[25];
      v21 = *(v19 - 1);
      v22 = *v19;
      sub_22D84E124((v20 + 112), *(v20 + 136));
      v23 = swift_allocObject();
      v23[2] = v20;
      v23[3] = v21;
      v23[4] = v22;
      swift_bridgeObjectRetain_n();

      v24 = sub_22D854F6C();
      sub_22D864A18(v24, v25, v26, v23);

      v19 += 2;
      --v18;
    }

    while (v18);
  }

  v27 = v0[31];
  v28 = v0[25];

  swift_beginAccess();
  v29 = *(v28 + 200);

  *(v28 + 200) = sub_22D86ABB4(v27, v29);

  v30 = swift_task_alloc();
  v0[32] = v30;
  *v30 = v0;
  v30[1] = sub_22D86A418;
  sub_22D872A24();

  sub_22D86AC5C();
}

uint64_t sub_22D86A418()
{
  sub_22D84D198();
  sub_22D84C734();
  v1 = *v0;
  sub_22D84CED0();
  *v2 = v1;

  sub_22D84D800();

  return v3();
}

uint64_t sub_22D86A4FC(void (*a1)(__int128 *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  v7 = a3 + 32;
  if (v5)
  {
    while (1)
    {
      a1(&v12, v7, a2);
      if (v3)
      {
        break;
      }

      if (v13)
      {
        sub_22D851550(&v12, v14);
        sub_22D851550(v14, &v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22D84C414();
          sub_22D84F408();
          v6 = v9;
        }

        v8 = *(v6 + 16);
        if (v8 >= *(v6 + 24) >> 1)
        {
          sub_22D84F408();
          v6 = v10;
        }

        *(v6 + 16) = v8 + 1;
        sub_22D851550(&v12, v6 + 40 * v8 + 32);
      }

      else
      {
        sub_22D84F5C8(&v12, &qword_27DA0D698, &qword_22D8B36C0);
      }

      v7 += 40;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

void sub_22D86A644(void (*result)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = a3 + 32;
  v8 = MEMORY[0x277D84F90];
  v27 = a3 + 32;
LABEL_2:
  v9 = v7 + 40 * v5;
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_16;
    }

    result(&v21, v9, a2);
    if (v3)
    {

      return;
    }

    v11 = v22;
    ++v5;
    v9 += 40;
    if (v22)
    {
      v19 = v24;
      v20 = v23;
      v18 = v25;
      v16 = v21;
      v17 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22D84C414();
        sub_22D88BD84();
        v8 = v14;
      }

      v12 = *(v8 + 16);
      if (v12 >= *(v8 + 24) >> 1)
      {
        sub_22D88BD84();
        v8 = v15;
      }

      *(v8 + 16) = v12 + 1;
      v13 = (v8 + 48 * v12);
      v13[4] = v16;
      v13[5] = v11;
      v13[6] = v20;
      v13[7] = v19;
      v13[8] = v18;
      v13[9] = v17;
      v5 = v10;
      v7 = v27;
      goto LABEL_2;
    }
  }
}

uint64_t sub_22D86A7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22D86A7D4, a1, 0);
}

uint64_t sub_22D86A7D4()
{
  sub_22D84D198();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_22D86A868;
  v2 = sub_22D852280(*(v0 + 24));

  return sub_22D852B34(v2, v3);
}

uint64_t sub_22D86A868()
{
  sub_22D84D198();
  sub_22D84C734();
  sub_22D84C3C8();
  *v2 = v1;
  v3 = *v0;
  sub_22D84CED0();
  *v4 = v3;
  *(v6 + 48) = v5;

  v7 = sub_22D84D1EC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22D86A960()
{
  sub_22D84D198();
  v1 = v0[6];
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC19ModelCatalogRuntime24CoherenceTokenStoreEntry_token];
    v0[7] = v2;
    if (v2)
    {
      v3 = v2;
      v4 = swift_task_alloc();
      v0[8] = v4;
      *v4 = v0;
      v4[1] = sub_22D86AA50;
      v5 = sub_22D852280(v0[3]);

      return sub_22D86C134(v5, v6, v3);
    }
  }

  sub_22D84D800();

  return v8();
}

uint64_t sub_22D86AA50()
{
  sub_22D84D198();
  v2 = v1;
  sub_22D84C734();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_22D84CED0();
  *v6 = v5;

  return MEMORY[0x2822009F8](sub_22D86AB58, v4, 0);
}

uint64_t sub_22D86AB58()
{
  sub_22D84D198();
  v1 = *(v0 + 48);

  sub_22D84D800();

  return v2();
}

uint64_t sub_22D86ABB4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v9 = a2;
  v4 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_22D851F6C(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_22D86AC78()
{
  sub_22D84D77C();
  v1 = *(v0 + 128);
  swift_beginAccess();
  v2 = *(v1 + 200);
  *(v0 + 120) = MEMORY[0x277D84FA0];
  *(v0 + 136) = v2;
  v3 = *(v2 + 32);
  *(v0 + 240) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 56);

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 144) = v6;
    *(v0 + 152) = v8;
    sub_22D84F590();
    sub_22D8507CC(v10);

    v11 = sub_22D84EB60();
    sub_22D8781D8(v11, v12);
    sub_22D8729B8();

    sub_22D872940();
    v13 = swift_task_alloc();
    v14 = sub_22D872970(v13);
    *v14 = v15;
    v16 = sub_22D84DEFC(v14);

    return sub_22D852B34(v16, v17);
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 64);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    sub_22D84E3C0();

    sub_22D84C4A4();

    return v19();
  }
}

uint64_t sub_22D86AE08()
{
  sub_22D84D198();
  sub_22D84C734();
  sub_22D84C3C8();
  *v2 = v1;
  v3 = *v0;
  sub_22D84CED0();
  *v4 = v3;
  *(v6 + 192) = v5;

  v7 = sub_22D84D1EC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22D86AF00(uint64_t a1)
{
  sub_22D872924();
  v2 = v1[24];
  if (!v2)
  {
    if (qword_2814589E0 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_7;
  }

  v3 = *&v2[OBJC_IVAR____TtC19ModelCatalogRuntime24CoherenceTokenStoreEntry_token];
  v1[25] = v3;
  if (v3)
  {
    sub_22D84DFA0(v1[16]);
    v4 = v3;
    v5 = swift_task_alloc();
    v1[26] = v5;
    *v5 = v1;
    v5[1] = sub_22D86B290;
    sub_22D853A14();

    return sub_22D863818();
  }

  else
  {
    if (qword_2814589E0 != -1)
    {
      sub_22D84DE60(&qword_2814589E0);
    }

    v24 = sub_22D8B178C();
    sub_22D84DD10(v24, qword_281459298);

    v25 = sub_22D8B176C();
    sub_22D8B1C4C();
    sub_22D8538BC();
    if (!sub_22D868510())
    {

      goto LABEL_15;
    }

    v26 = sub_22D84DD3C();
    v27 = sub_22D84CE7C();
    v35 = sub_22D8522FC(4.8149e-34, v27, v28, v29, v30, v31, v32, v33, v34, v27);

    *(v26 + 4) = v35;
    sub_22D84E1F0();
    _os_log_impl(v36, v37, v38, v39, v26, 0xCu);
    sub_22D84D8A0(v27);
    sub_22D8728AC();
    sub_22D84F8CC();

    while (1)
    {
      sub_22D872A18();
      v43 = v42 & v41;
      if (v43)
      {
        break;
      }

      while (!__OFADD__(v40, 1))
      {
        sub_22D855218();
        if (v45 == v46)
        {

          sub_22D84E3C0();

          sub_22D84C4A4();
          sub_22D853A14();

          __asm { BRAA            X2, X16 }
        }

        sub_22D872A04();
        if (v43)
        {
          v40 = v47;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_30:
      sub_22D84DE60(&qword_2814589E0);
LABEL_7:
      v8 = sub_22D8B178C();
      sub_22D84DD10(v8, qword_281459298);

      v9 = sub_22D8B176C();
      sub_22D8B1C4C();
      sub_22D8538BC();
      if (sub_22D868510())
      {
        v10 = sub_22D84DD3C();
        v11 = sub_22D84CE7C();
        v19 = sub_22D8522FC(4.8149e-34, v11, v12, v13, v14, v15, v16, v17, v18, v11);

        *(v10 + 4) = v19;
        sub_22D84E1F0();
        _os_log_impl(v20, v21, v22, v23, v10, 0xCu);
        sub_22D84D8A0(v11);
        sub_22D8728AC();
        sub_22D84F8CC();
      }

      else
      {

LABEL_15:
      }
    }

    v44 = v1[17];
LABEL_23:
    v1[18] = v43;
    v1[19] = v40;
    sub_22D8507CC((*(v44 + 48) + ((v40 << 10) | (16 * __clz(__rbit64(v43))))));

    v48 = sub_22D84EB60();
    sub_22D8781D8(v48, v49);
    sub_22D8729B8();

    sub_22D872940();
    v50 = swift_task_alloc();
    v51 = sub_22D872970(v50);
    *v51 = v52;
    sub_22D84DEFC(v51);
    sub_22D853A14();

    return sub_22D852B34(v53, v54);
  }
}

uint64_t sub_22D86B290()
{
  sub_22D84D198();
  sub_22D84C734();
  sub_22D84C3C8();
  *v2 = v1;
  v3 = *v0;
  sub_22D84CED0();
  *v4 = v3;
  *(v6 + 216) = v5;
  *(v6 + 241) = v7;

  v8 = sub_22D84D1EC();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_22D86B38C()
{
  sub_22D84F8A0();
  v1 = *(v0 + 216);
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 224) = v3;
    *v3 = v0;
    v3[1] = sub_22D86B59C;
    sub_22D852280(*(v0 + 160));
    sub_22D8554C0();

    sub_22D874504();
  }

  else
  {
    v5 = *(v0 + 192);
    v6 = *(v0 + 200);
    if (*(v0 + 241) == 1)
    {
      sub_22D84EB10();
      sub_22D8728E4();
      swift_endAccess();
    }

    else
    {
    }

    sub_22D872A18();
    v10 = v9 & v8;
    if (v10)
    {
      v11 = *(v0 + 136);
LABEL_15:
      *(v0 + 144) = v10;
      *(v0 + 152) = v7;
      sub_22D8507CC((*(v11 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v10))))));

      v15 = sub_22D84EB60();
      sub_22D8781D8(v15, v16);
      sub_22D8729B8();

      sub_22D872940();
      v17 = swift_task_alloc();
      v18 = sub_22D872970(v17);
      *v18 = v19;
      sub_22D84DEFC(v18);
      sub_22D8554C0();

      sub_22D852B34(v20, v21);
    }

    else
    {
      while (!__OFADD__(v7, 1))
      {
        sub_22D855218();
        if (v12 == v13)
        {

          sub_22D84E3C0();

          sub_22D84C4A4();
          sub_22D8554C0();

          __asm { BRAA            X2, X16 }
        }

        sub_22D872A04();
        if (v10)
        {
          v7 = v14;
          goto LABEL_15;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_22D86B59C()
{
  sub_22D84D77C();
  sub_22D84C85C();
  sub_22D84F51C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 232) = v0;

  sub_22D853D4C();
  sub_22D854F60();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_22D86B6B0(uint64_t a1)
{
  sub_22D872924();

  v4 = *(v1 + 216);
  if (*(v1 + 241))
  {
    v2 = *(v1 + 192);
    v3 = *(v1 + 200);
    sub_22D84EB10();
    sub_22D8728E4();
    swift_endAccess();
  }

  else
  {
    sub_22D87297C();
  }

  sub_22D872A18();
  v8 = v7 & v6;
  if (v8)
  {
LABEL_10:
    *(v1 + 144) = v8;
    *(v1 + 152) = v5;
    sub_22D84F590();
    sub_22D8507CC(v14);

    v15 = sub_22D84EB60();
    sub_22D8781D8(v15, v16);
    sub_22D8729B8();

    sub_22D872940();
    v17 = swift_task_alloc();
    v18 = sub_22D872970(v17);
    *v18 = v19;
    sub_22D84DEFC(v18);
    sub_22D853A14();

    sub_22D852B34(v20, v21);
  }

  else
  {
    while (!__OFADD__(v5, 1))
    {
      v9 = sub_22D872958();
      if (v12 == v13)
      {

        sub_22D84E3C0();

        sub_22D84C4A4();
        sub_22D853A14();

        __asm { BRAA            X2, X16 }
      }

      v8 = *(v9 + 8 * v11 + 56);
      v5 = v10 + 1;
      if (v8)
      {
        v5 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22D86B840(uint64_t a1)
{
  sub_22D872924();
  if (qword_2814589E0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v4 = *(v1 + 232);
    v5 = sub_22D8B178C();
    sub_22D84DD10(v5, qword_281459298);
    v6 = v4;
    v7 = sub_22D8B176C();
    v8 = sub_22D8B1C4C();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v1 + 232);
    v11 = *(v1 + 216);
    if (v9)
    {
      sub_22D84DD3C();
      v3 = sub_22D84C600();
      *v2 = 138412290;
      v12 = v10;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v2 + 4) = v13;
      *v3 = v13;
      sub_22D855864(&dword_22D84A000, v14, v8, "attemptToInvalidatePendingAssetSets failed to update token: %@");
      sub_22D84F5C8(v3, &qword_27DA0D4D0, &qword_22D8B3400);
      sub_22D84F8CC();
      sub_22D84D6DC();
    }

    else
    {
    }

    v2 = *(v1 + 216);
    if (*(v1 + 241) == 1)
    {
      v3 = *(v1 + 192);
      v11 = *(v1 + 200);
      sub_22D84EB10();
      sub_22D8728E4();
      swift_endAccess();
    }

    else
    {
      sub_22D87297C();
    }

    sub_22D872A18();
    v18 = v17 & v16;
    if (v18)
    {
      break;
    }

    while (!__OFADD__(v15, 1))
    {
      v19 = sub_22D872958();
      if (v22 == v23)
      {

        sub_22D84E3C0();

        sub_22D84C4A4();
        sub_22D853A14();

        __asm { BRAA            X2, X16 }
      }

      v18 = *(v19 + 8 * v21 + 56);
      v15 = v20 + 1;
      if (v18)
      {
        v15 = v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_21:
    sub_22D84DE60(&qword_2814589E0);
  }

LABEL_14:
  *(v1 + 144) = v18;
  *(v1 + 152) = v15;
  sub_22D84F590();
  sub_22D8507CC(v24);

  v25 = sub_22D84EB60();
  sub_22D8781D8(v25, v26);
  sub_22D8729B8();

  sub_22D872940();
  v27 = swift_task_alloc();
  v28 = sub_22D872970(v27);
  *v28 = v29;
  sub_22D84DEFC(v28);
  sub_22D853A14();

  return sub_22D852B34(v30, v31);
}

uint64_t sub_22D86BAC4()
{
  *(v0 + 208) = 1;
  sub_22D84E124((v0 + 152), *(v0 + 176));

  sub_22D87C4BC(0xD000000000000027, 0x800000022D8B80B0, &unk_22D8B3D88, v0, 10.0);
}

uint64_t sub_22D86BC70()
{
  sub_22D84D77C();
  if (qword_2814589E0 != -1)
  {
    sub_22D84DE60(&qword_2814589E0);
  }

  v1 = sub_22D8B178C();
  sub_22D84DD10(v1, qword_281459298);
  v2 = sub_22D8B176C();
  v3 = sub_22D8B1C6C();
  if (sub_22D84CEE0(v3))
  {
    v4 = sub_22D85225C();
    sub_22D84C544(v4);
    sub_22D84C424(&dword_22D84A000, v5, v6, "Running scheduleInvalidationOfAssetSets background task event");
    sub_22D84DDE4();
  }

  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_22D86BD70;

  return sub_22D86AC5C();
}

uint64_t sub_22D86BD70()
{
  sub_22D84D198();
  v2 = v1;
  sub_22D84C734();
  v3 = *v0;
  sub_22D84CED0();
  *v4 = v3;

  sub_22D84C4A4();

  return v5(v2);
}

uint64_t sub_22D86BE58(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    sub_22D8580D8(&qword_27DA0D7E8, &qword_22D8B4A30);
    sub_22D8B0D8C();
    *(swift_allocObject() + 16) = xmmword_22D8B3740;
    sub_22D8B0CFC();
    sub_22D8B0D2C();
    if (qword_2814591E0 != -1)
    {
      sub_22D851E48(&qword_2814591E0);
    }

    v2 = sub_22D8B09AC();

    v3 = *(v2 + 16);
    if (v3)
    {
      v25 = MEMORY[0x277D84F90];
      sub_22D87B9A8(0, v3, 0);
      v4 = v25;
      v5 = v2 + 32;
      do
      {
        sub_22D84E298(v5, v24);
        v6 = sub_22D8B0C6C();
        sub_22D84D7DC();
        v8 = v7;
        MEMORY[0x28223BE20](v9);
        sub_22D84CFA4();
        v12 = v11 - v10;
        sub_22D84E124(v24, v24[3]);
        sub_22D84E0E8();
        sub_22D8B0E4C();
        v13 = sub_22D8B0C2C();
        v15 = v14;
        (*(v8 + 8))(v12, v6);
        sub_22D84D8A0(v24);
        v25 = v4;
        v17 = *(v4 + 16);
        v16 = *(v4 + 24);
        if (v17 >= v16 >> 1)
        {
          v19 = sub_22D84C4D0(v16);
          sub_22D87B9A8(v19, v17 + 1, 1);
          v4 = v25;
        }

        *(v4 + 16) = v17 + 1;
        v18 = v4 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
        v5 += 40;
        --v3;
      }

      while (v3);
    }

    else
    {

      v4 = MEMORY[0x277D84F90];
    }

    v20 = sub_22D851EAC(v4);

    sub_22D877A80(v20, v1);
    v22 = v21;

    v23 = *(v22 + 16);

    if (v23)
    {
      return sub_22D8B08BC();
    }
  }

  return result;
}

uint64_t sub_22D86C134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  return sub_22D84DC68(sub_22D86C154, v3);
}

uint64_t sub_22D86C154()
{
  sub_22D84D198();
  sub_22D84DFA0(v0[14]);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_22D86C1EC;
  sub_22D852280(v0[13]);

  return sub_22D863818();
}

uint64_t sub_22D86C1EC()
{
  sub_22D84D198();
  sub_22D84C734();
  sub_22D84C3C8();
  *v2 = v1;
  v3 = *v0;
  sub_22D84CED0();
  *v4 = v3;
  *(v6 + 128) = v5;
  *(v6 + 160) = v7;

  v8 = sub_22D84D1EC();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22D86C2E8(uint64_t a1)
{
  sub_22D872924();
  if (qword_2814589E0 != -1)
  {
    sub_22D84DE60(&qword_2814589E0);
  }

  v3 = sub_22D8B178C();
  *(v1 + 136) = sub_22D84DD10(v3, qword_281459298);

  v4 = sub_22D8B176C();
  sub_22D8B1C6C();
  sub_22D8538BC();
  if (sub_22D868510())
  {
    v2 = *(v1 + 88);
    v5 = sub_22D84DD3C();
    v6 = sub_22D84CE7C();
    *(v5 + 4) = sub_22D8522FC(4.8149e-34, v6, v7, v8, v9, v10, v11, v12, v13, v6);
    sub_22D84E1F0();
    _os_log_impl(v14, v15, v16, v17, v5, 0xCu);
    sub_22D84D8A0(v6);
    sub_22D8728AC();
    sub_22D84F8CC();
  }

  v18 = *(v1 + 128);
  if (!v18)
  {
    if (*(v1 + 160) == 1)
    {
      sub_22D84C76C();

      sub_22D872904(v23, v24, v25, v26, v27, v28, v29, v30, v38);
      swift_endAccess();

      if (*(v2 + 208))
      {
        v31 = sub_22D8B176C();
        v32 = sub_22D8B1C6C();
        if (sub_22D84CEE0(v32))
        {
          v33 = sub_22D85225C();
          sub_22D84C544(v33);
          sub_22D84C424(&dword_22D84A000, v34, v35, "Forcing invalidation of an asset set while invalidation task is pending, waiting for next invalidation attempt");
          sub_22D84DDE4();
        }
      }

      else
      {
        sub_22D86BAC4();
      }
    }

    sub_22D84C4A4();
    sub_22D8729A0();

    __asm { BRAA            X2, X16 }
  }

  v19 = v18;
  v20 = swift_task_alloc();
  *(v1 + 144) = v20;
  *v20 = v1;
  v20[1] = sub_22D86C50C;
  sub_22D852280(*(v1 + 88));
  sub_22D8729A0();

  return sub_22D874504();
}

uint64_t sub_22D86C50C()
{
  sub_22D84D77C();
  sub_22D84C85C();
  sub_22D84F51C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v0;

  sub_22D853D4C();
  sub_22D854F60();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22D86C620()
{
  sub_22D84F8A0();
  v1 = *(v0 + 128);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  sub_22D8580D8(&qword_27DA0D7E0, &unk_22D8B3D70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D8B3470;
  *(inited + 32) = v3;
  *(inited + 40) = v2;

  v5 = sub_22D886710(inited);
  sub_22D86BE58(v5);

  if (*(v0 + 160) == 1)
  {
    sub_22D84C76C();

    sub_22D872904(v6, v7, v8, v9, v10, v11, v12, v13, v22);
    swift_endAccess();

    if (*(v3 + 208))
    {
      v14 = sub_22D8B176C();
      v15 = sub_22D8B1C6C();
      if (sub_22D84CEE0(v15))
      {
        v16 = sub_22D85225C();
        sub_22D84C544(v16);
        sub_22D84C424(&dword_22D84A000, v17, v18, "Forcing invalidation of an asset set while invalidation task is pending, waiting for next invalidation attempt");
        sub_22D84DDE4();
      }
    }

    else
    {
      sub_22D86BAC4();
    }
  }

  sub_22D84C4A4();
  v20 = *(v0 + 128);

  return v19(v20);
}

void sub_22D86C75C(uint64_t a1)
{
  sub_22D872924();
  v3 = *(v1 + 152);
  v4 = v3;
  v5 = sub_22D8B176C();
  v6 = sub_22D8B1C4C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 152);
  v9 = *(v1 + 128);
  if (v7)
  {
    sub_22D84DD3C();
    v10 = sub_22D84C600();
    *v2 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v12;
    *v10 = v12;
    sub_22D855864(&dword_22D84A000, v13, v6, "triggerInvalidationOfAssetSet failed to update token: %@");
    sub_22D84F5C8(v10, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84F8CC();
    sub_22D84D6DC();
  }

  else
  {
  }

  if (*(v1 + 160) == 1)
  {
    sub_22D84C76C();

    sub_22D872904(v14, v15, v16, v17, v18, v19, v20, v21, v29);
    swift_endAccess();

    if (*(v2 + 208))
    {
      v22 = sub_22D8B176C();
      v23 = sub_22D8B1C6C();
      if (sub_22D84CEE0(v23))
      {
        v24 = sub_22D85225C();
        sub_22D84C544(v24);
        sub_22D84C424(&dword_22D84A000, v25, v26, "Forcing invalidation of an asset set while invalidation task is pending, waiting for next invalidation attempt");
        sub_22D84DDE4();
      }
    }

    else
    {
      sub_22D86BAC4();
    }
  }

  sub_22D84C4A4();
  sub_22D8729A0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_22D86C908()
{
  sub_22D84D77C();
  sub_22D84C85C();
  sub_22D84F51C();
  *v3 = v2;
  v4 = *v1;
  sub_22D84C3C8();
  *v5 = v4;
  *(v7 + 120) = v6;
  *(v7 + 128) = v0;

  sub_22D853D4C();
  sub_22D854F60();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22D86CA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  sub_22D852350();
  a21 = v24;
  a22 = v25;
  a20 = v22;
  if (qword_2814589E0 != -1)
  {
    sub_22D84DE60(&qword_2814589E0);
  }

  v26 = v22[15];
  v27 = sub_22D8B178C();
  sub_22D84DD10(v27, qword_281459298);

  v28 = v26;
  v29 = sub_22D8B176C();
  v30 = sub_22D8B1C6C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = v22[15];
    v32 = v22[7];
    v44 = v22[2];
    v45 = v22[3];
    v33 = swift_slowAlloc();
    a11 = swift_slowAlloc();
    *v33 = 136315394;
    v34 = [v31 uuid];
    sub_22D8B086C();

    sub_22D84DA58();
    sub_22D872394(v35, v36, MEMORY[0x277CC9628]);
    sub_22D8B1F5C();
    v37 = sub_22D84E0F4();
    v38(v37);
    sub_22D84C63C(v34, v23, &a11);
    sub_22D84E0E8();

    *(v33 + 4) = v32;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_22D84C63C(v44, v45, &a11);
    sub_22D8532FC(&dword_22D84A000, v39, v40, "getConsistencyToken: found new token: %s for %s, updating store");
    swift_arrayDestroy();
    sub_22D84F8CC();
    sub_22D84D6DC();
  }

  v41 = swift_task_alloc();
  v22[17] = v41;
  *v41 = v22;
  v41[1] = sub_22D86CCA8;
  sub_22D852280(v22[2]);
  sub_22D8728C8();

  return sub_22D874504();
}

uint64_t sub_22D86CC4C()
{
  sub_22D84D198();

  sub_22D84D800();

  return v0();
}

uint64_t sub_22D86CCA8()
{
  sub_22D84D77C();
  sub_22D84C85C();
  sub_22D84F51C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v0;

  sub_22D853D4C();
  sub_22D854F60();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22D86CDBC()
{
  sub_22D84D198();
  v1 = *(v0 + 120);

  sub_22D84C4A4();

  return v2(v1);
}

uint64_t sub_22D86CE20()
{
  sub_22D84D198();

  sub_22D84D800();

  return v1();
}

void *sub_22D86CE84()
{
  sub_22D84D8A0((v0 + 112));
  sub_22D84D8A0((v0 + 152));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22D86CEC4()
{
  sub_22D86CE84();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_22D86CF4C()
{
  sub_22D8B1E2C();

  v0 = sub_22D8B0EAC();
  MEMORY[0x2318D4340](v0);

  return 0xD000000000000016;
}

uint64_t sub_22D86CFCC()
{
  type metadata accessor for UnifiedAssetInterface();
  v0 = swift_allocObject();
  type metadata accessor for BackgroundScheduler();
  v1 = swift_allocObject();

  v2 = sub_22D872170(v0, v1);

  qword_281459480 = v2;
  return result;
}

uint64_t sub_22D86D058()
{
  sub_22D84D198();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_22D84DD88(v1);

  return sub_22D84FAC0();
}

uint64_t sub_22D86D0E4()
{
  sub_22D84D198();
  v3 = v2;
  sub_22D84C734();
  v4 = *v1;
  sub_22D84CED0();
  *v5 = v4;

  sub_22D84C4A4();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_22D86D1D0()
{
  sub_22D84D198();
  swift_unknownObjectRelease();

  sub_22D84D800();

  return v0();
}

uint64_t sub_22D86D234()
{
  sub_22D84D198();

  swift_unknownObjectRelease();

  sub_22D84D800();

  return v0();
}

uint64_t sub_22D86D2AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22D872894;

  return sub_22D86D058();
}

uint64_t sub_22D86D340@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v43 = a6;
  v44 = a7;
  v45 = a5;
  v46 = a1;
  v47 = a2;
  v48 = a4;
  v8 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  v9 = sub_22D84C3FC(v8);
  MEMORY[0x28223BE20](v9);
  v42 = &v41 - v10;
  sub_22D8580D8(&qword_27DA0D7A8, &qword_22D8B3B60);
  v11 = sub_22D8B193C();
  v12 = *(a3 + 16);
  v13 = (a3 + 40);
  if (v12)
  {
    while (1)
    {
      v49 = v12;
      v15 = *(v13 - 1);
      v14 = *v13;
      v16 = v13;

      v17 = sub_22D8B08EC();
      if (!*(v17 + 16))
      {
        break;
      }

      v18 = sub_22D87294C();
      v20 = sub_22D852D10(v18, v19);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v22 = *(*(v17 + 56) + 8 * v20);
      swift_bridgeObjectRetain_n();

      v23 = sub_22D8710E0(v48, v22);

      swift_isUniquelyReferenced_nonNull_native();
      v50 = v11;
      v24 = sub_22D87294C();
      v26 = sub_22D852D10(v24, v25);
      if (__OFADD__(v11[2], (v27 & 1) == 0))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        break;
      }

      v28 = v26;
      v29 = v27;
      sub_22D8580D8(&qword_27DA0D7F0, &qword_22D8B3DC0);
      if (sub_22D8B1EAC())
      {
        v30 = sub_22D87294C();
        v32 = sub_22D852D10(v30, v31);
        if ((v29 & 1) != (v33 & 1))
        {
          goto LABEL_20;
        }

        v28 = v32;
      }

      v11 = v50;
      if (v29)
      {
        *(v50[7] + 8 * v28) = v23;
      }

      else
      {
        v50[(v28 >> 6) + 8] |= 1 << v28;
        v34 = (v11[6] + 16 * v28);
        *v34 = v15;
        v34[1] = v14;
        *(v11[7] + 8 * v28) = v23;
        v35 = v11[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_18;
        }

        v11[2] = v37;
      }

      v13 = v16 + 2;
      v12 = v49 - 1;
      if (v49 == 1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_20:
    result = sub_22D8B1FBC();
    __break(1u);
  }

  else
  {
LABEL_13:
    v38 = sub_22D8B083C();
    v39 = v43;
    if (sub_22D84D0C0(v43, 1, v38) == 1)
    {
    }

    else
    {
      v50 = v46;
      v51 = v47;

      MEMORY[0x2318D4340](0x6E6972697078652DLL, 0xE900000000000067);
    }

    sub_22D8726CC(v39, v42, &qword_27DA0D608, &unk_22D8B3DB0);

    return sub_22D8B0F0C();
  }

  return result;
}

unint64_t *sub_22D86D65C(uint64_t a1)
{
  v3 = sub_22D8B073C();
  v4 = sub_22D84C3FC(v3);
  MEMORY[0x28223BE20](v4);
  sub_22D84CFA4();
  sub_22D8B09DC();
  sub_22D8B12CC();
  v5 = sub_22D8B091C();
  v6 = sub_22D8B09BC();
  v7 = *(v6 + 16);
  if (!v7)
  {

    goto LABEL_16;
  }

  v45 = a1;
  v46 = v1;
  v47 = v5;
  v48 = MEMORY[0x277D84F90];
  v44[1] = v6;
  v8 = v6 + 32;
  do
  {
    sub_22D84E298(v8, &v56);
    v9 = sub_22D8B0C6C();
    sub_22D84D7DC();
    v11 = v10;
    MEMORY[0x28223BE20](v12);
    sub_22D84CFA4();
    v51 = (v14 - v13);
    v15 = sub_22D8580D8(&qword_27DA0D800, &qword_22D8B3DD8);
    v58 = v44;
    v16 = sub_22D84C3FC(v15);
    MEMORY[0x28223BE20](v16);
    v18 = v44 - v17;
    sub_22D84E298(&v56, v52);
    sub_22D8580D8(&qword_27DA0D688, &unk_22D8B36B0);
    sub_22D8580D8(&qword_27DA0D690, &unk_22D8B4DD0);
    if (!swift_dynamicCast())
    {
      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      sub_22D84D8A0(&v56);
      sub_22D84F5C8(&v53, &qword_27DA0D698, &qword_22D8B36C0);
      sub_22D84C4F8(v18, 1, 1, v9);
LABEL_11:
      sub_22D84F5C8(v18, &qword_27DA0D800, &qword_22D8B3DD8);
      goto LABEL_12;
    }

    v49 = v11;
    v50 = v44;
    sub_22D84E124(&v53, *(&v54 + 1));
    sub_22D8B0E4C();
    sub_22D84D8A0(&v56);
    sub_22D84C4F8(v18, 0, 1, v9);
    sub_22D84D8A0(&v53);
    if (sub_22D84D0C0(v18, 1, v9) == 1)
    {
      goto LABEL_11;
    }

    v19 = *(v49 + 32);
    v19(v51, v18, v9);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v48;
    }

    else
    {
      sub_22D84C414();
      sub_22D88BCBC();
      v20 = v24;
    }

    v22 = *(v20 + 16);
    v21 = *(v20 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_22D84C4D0(v21);
      sub_22D88BCBC();
      v20 = v25;
    }

    *(v20 + 16) = v22 + 1;
    v23 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v48 = v20;
    v19(v20 + v23 + *(v49 + 72) * v22, v51, v9);
LABEL_12:
    v8 += 40;
    --v7;
  }

  while (v7);

  a1 = v45;
LABEL_16:
  MEMORY[0x28223BE20](v26);
  v44[-2] = a1;
  sub_22D887314(sub_22D8725E4, &v44[-4], v27);
  sub_22D8871C4();
  v29 = sub_22D869444(v28);

  v30 = sub_22D851EAC(v29);
  if (*(v30 + 16) == 1 && (v31 = sub_22D86DFCC(v30), v32))
  {
    v33 = v31;
  }

  else
  {
    sub_22D8B0A1C();
    v34 = sub_22D84C4B0(&qword_2814587A0);
    sub_22D84CE5C(v34);
    v36 = v35;
    v56 = 0;
    v57 = 0xE000000000000000;
    v33 = &v56;
    sub_22D8B1E2C();

    sub_22D84F5A0();
    v56 = 0xD00000000000002CLL;
    v57 = v37;
    v38 = sub_22D8B1BFC();
    v40 = v39;

    MEMORY[0x2318D4340](v38, v40);

    v41 = v57;
    *v36 = v56;
    v36[1] = v41;
    sub_22D84C5C4();
    (*(v42 + 104))(v36);
    swift_willThrow();
  }

  return v33;
}

uint64_t sub_22D86DBC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22D8580D8(&qword_27DA0D808, &qword_22D8B3DE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = v24 - v5;
  v7 = sub_22D8B0C4C();
  MEMORY[0x28223BE20](v7);
  v8 = v24 - v5;
  v9 = sub_22D8B0EBC();
  v25 = *(v9 - 8);
  (*(v25 + 16))(v24 - v5, a2, v9);
  sub_22D84C4F8(v24 - v5, 0, 1, v9);
  v10 = sub_22D8580D8(&qword_27DA0D810, &qword_22D8B3DE8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v24 - v12;
  v14 = *(v11 + 56);
  sub_22D8726CC(v24 - v5, v24 - v12, &qword_27DA0D808, &qword_22D8B3DE0);
  sub_22D8726CC(v24 - v5, &v13[v14], &qword_27DA0D808, &qword_22D8B3DE0);
  v15 = sub_22D84D0C0(v13, 1, v9);
  if (v15 != 1)
  {
    v24[2] = v24;
    MEMORY[0x28223BE20](v15);
    v17 = v24 - v5;
    sub_22D8726CC(v13, v24 - v5, &qword_27DA0D808, &qword_22D8B3DE0);
    v18 = sub_22D84D0C0(&v13[v14], 1, v9);
    if (v18 != 1)
    {
      v24[1] = v24;
      v19 = v25;
      MEMORY[0x28223BE20](v18);
      v21 = v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 32))(v21, &v13[v14], v9);
      sub_22D872730(&qword_281459200, MEMORY[0x282221A88], MEMORY[0x282221AB8]);
      v16 = sub_22D8B19AC();
      v22 = *(v19 + 8);
      v22(v21, v9);
      sub_22D84F5C8(v8, &qword_27DA0D808, &qword_22D8B3DE0);
      sub_22D84F5C8(v6, &qword_27DA0D808, &qword_22D8B3DE0);
      v22(v17, v9);
      sub_22D84F5C8(v13, &qword_27DA0D808, &qword_22D8B3DE0);
      return v16 & 1;
    }

    sub_22D84F5C8(v24 - v5, &qword_27DA0D808, &qword_22D8B3DE0);
    sub_22D84F5C8(v24 - v5, &qword_27DA0D808, &qword_22D8B3DE0);
    (*(v25 + 8))(v24 - v5, v9);
    goto LABEL_6;
  }

  sub_22D84F5C8(v24 - v5, &qword_27DA0D808, &qword_22D8B3DE0);
  sub_22D84F5C8(v24 - v5, &qword_27DA0D808, &qword_22D8B3DE0);
  if (sub_22D84D0C0(&v13[v14], 1, v9) != 1)
  {
LABEL_6:
    sub_22D84F5C8(v13, &qword_27DA0D810, &qword_22D8B3DE8);
    v16 = 0;
    return v16 & 1;
  }

  sub_22D84F5C8(v13, &qword_27DA0D808, &qword_22D8B3DE0);
  v16 = 1;
  return v16 & 1;
}

uint64_t sub_22D86DFCC(uint64_t a1)
{
  result = sub_22D872604(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_22D872644(result, v3, 0, a1);
  }
}

uint64_t sub_22D86E034()
{
  sub_22D84D198();
  v0[10] = v1;
  v0[11] = v2;
  v3 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  sub_22D84C3FC(v3);
  v0[12] = sub_22D84C584();
  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22D86E0BC()
{
  v1 = sub_22D86D65C(v0[11]);
  v3 = v2;
  v4 = v0[12];
  v20 = v1;
  v21 = v0[10];
  sub_22D8580D8(&qword_27DA0D818, &qword_22D8B3DF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D8B3470;
  sub_22D84F5A0();
  *(v6 + 32) = 0xD000000000000025;
  *(v6 + 40) = v7;
  *(inited + 48) = sub_22D86CF4C();
  *(inited + 56) = v8;
  v9 = sub_22D8B193C();
  v10 = sub_22D8B193C();
  v11 = sub_22D8B083C();
  sub_22D84C4F8(v4, 1, 1, v11);
  v12 = sub_22D8B0F3C();
  v0[13] = v12;
  v13 = *(v12 - 8);
  v0[14] = v13;
  v14 = sub_22D84C584();
  v0[15] = v14;
  sub_22D86D340(v20, v3, MEMORY[0x277D84F90], v10, v9, v4, v14);

  sub_22D84E124(v21, v21[3]);
  sub_22D8B0DAC();
  v0[16] = v15;
  sub_22D8580D8(&qword_27DA0D820, &unk_22D8B3E00);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v0[17] = v17;
  *(v17 + 16) = xmmword_22D8B3470;
  (*(v13 + 16))(v17 + v16, v14, v12);
  v18 = swift_task_alloc();
  v0[18] = v18;
  *v18 = v0;
  sub_22D84E468(v18);

  return sub_22D865664();
}

uint64_t sub_22D86E3B0()
{
  sub_22D84D77C();
  sub_22D84F51C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v0;

  swift_setDeallocating();
  sub_22D870E80();
  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22D86E4FC()
{
  sub_22D84D198();
  v1 = sub_22D8729D0();
  v2(v1);
  sub_22D84F5C8(v0, &qword_27DA0D608, &unk_22D8B3DB0);

  sub_22D84D800();

  return v3();
}

uint64_t sub_22D86E588()
{
  sub_22D84D198();
  v1 = sub_22D8729D0();
  v2(v1);
  sub_22D84F5C8(v0, &qword_27DA0D608, &unk_22D8B3DB0);

  sub_22D84D800();

  return v3();
}

uint64_t sub_22D86E614(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 112) = a4;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 64) = a1;
  return sub_22D84DC68(sub_22D86E638, 0);
}

uint64_t sub_22D86E638()
{
  sub_22D84D77C();
  v2 = v0[9];
  v1 = v0[10];
  sub_22D8580D8(&qword_27DA0D7E0, &unk_22D8B3D70);
  inited = swift_initStackObject();
  v0[11] = inited;
  *(inited + 16) = xmmword_22D8B3470;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_22D86E718;
  v5 = sub_22D852280(v0[8]);

  return sub_22D86E8A4(v5, inited, v6);
}

uint64_t sub_22D86E718()
{
  sub_22D84D198();
  sub_22D84C734();
  v3 = v2;
  sub_22D84F51C();
  *v4 = v3;
  v5 = *v1;
  sub_22D84CED0();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    sub_22D84C3F0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    swift_setDeallocating();
    sub_22D870EF8();
    sub_22D84D800();

    return v10();
  }
}

uint64_t sub_22D86E840()
{
  sub_22D84D198();
  swift_setDeallocating();
  sub_22D870EF8();
  sub_22D84D800();

  return v0();
}

uint64_t sub_22D86E8A4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 56) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return sub_22D84DC68(sub_22D86E8C4, 0);
}

uint64_t sub_22D86E8C4()
{
  sub_22D852350();
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_22D87B9A8(0, v2, 0);
    v3 = v14;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      if (*(v0 + 56) == 1)
      {
        v15 = *(v4 - 1);
        swift_bridgeObjectRetain_n();
        MEMORY[0x2318D4340](0x6E6972697078652DLL, 0xE900000000000067);

        v6 = v15;
      }

      else
      {
      }

      v8 = *(v14 + 16);
      v7 = *(v14 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_22D87B9A8((v7 > 1), v8 + 1, 1);
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  *(v0 + 32) = v3;
  sub_22D84E124(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_22D8B0DAC();
  *(v0 + 40) = v10;
  v11 = swift_task_alloc();
  *(v0 + 48) = v11;
  *v11 = v0;
  sub_22D84DD88(v11);
  sub_22D8728C8();

  return sub_22D8667B4();
}

uint64_t sub_22D86EA68()
{
  sub_22D84D77C();
  sub_22D84C734();
  v1 = *v0;
  sub_22D84CED0();
  *v2 = v1;

  sub_22D84D800();

  return v3();
}

uint64_t sub_22D86EB88(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_22D84DC68(sub_22D86EBA4, 0);
}

uint64_t sub_22D86EBA4(uint64_t a1)
{
  sub_22D872924();
  v2 = sub_22D86D65C(v1[3]);
  v4 = v3;
  v15 = MEMORY[0x277D84F90];
  sub_22D87B9A8(0, 1, 0);
  v5 = v15;
  v7 = *(v15 + 16);
  v6 = *(v15 + 24);
  if (v7 >= v6 >> 1)
  {
    v14 = sub_22D84C4D0(v6);
    sub_22D87B9A8(v14, v7 + 1, 1);
    v5 = v15;
  }

  v1[4] = v5;
  v8 = v1[2];
  *(v5 + 16) = v7 + 1;
  v9 = v5 + 16 * v7;
  *(v9 + 32) = v2;
  *(v9 + 40) = v4;
  sub_22D84E124(v8, v8[3]);
  sub_22D8B0DAC();
  v1[5] = v10;
  v11 = swift_task_alloc();
  v1[6] = v11;
  *v11 = v1;
  sub_22D84DD88(v11);
  sub_22D8729A0();

  return sub_22D8667B4();
}

uint64_t sub_22D86ED14()
{
  sub_22D84D77C();
  sub_22D84C734();
  v1 = *v0;
  sub_22D84CED0();
  *v2 = v1;

  sub_22D84D800();

  return v3();
}

uint64_t sub_22D86EE34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v92 = a2;
  v10 = sub_22D8B09BC();
  v94 = a1;
  v11 = sub_22D86A4FC(sub_22D872778, v93, v10);

  sub_22D8580D8(&qword_27DA0D828, &unk_22D8B4DB0);
  result = sub_22D8B193C();
  v13 = 0;
  v97 = result;
  v14 = *(v11 + 16);
  for (i = v11 + 32; ; i += 40)
  {
    if (v14 == v13)
    {
      v85 = a4;
      v84 = a5;
      v88 = a1;

      v16 = v97;
      v17 = v97 + 64;
      v18 = 1 << *(v97 + 32);
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v20 = v19 & *(v97 + 64);
      v21 = (v18 + 63) >> 6;

      v22 = 0;
      v86 = v21;
      v87 = v17;
      v90 = v16;
LABEL_10:
      if (!v20)
      {
        while (1)
        {
          v23 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_42;
          }

          if (v23 >= v21)
          {

            v47 = sub_22D8B193C();
            v48 = MEMORY[0x28223BE20](v47);
            v81 = v92;
            v82 = v88;
            sub_22D869778(v48, sub_22D872794, v80, v16);

            if (!v6)
            {
              v49 = sub_22D8B0E1C();
              v92 = &v83;
              sub_22D84D7DC();
              v51 = v50;
              MEMORY[0x28223BE20](v52);
              sub_22D84CFA4();
              v55 = v54 - v53;
              sub_22D8B0E2C();

              sub_22D8B0D1C();
              v56 = sub_22D879550();

              if (v56)
              {
                v91 = v49;
                v95 = sub_22D8B0DEC();
                v96 = v57;
                MEMORY[0x28223BE20](v95);
                v81 = &v95;
                v58 = sub_22D855C1C(sub_22D8727B0, v80, v56);

                if (v58)
                {
                  (*(v51 + 32))(v84, v55, v91);
                }

                else
                {
                  v90 = sub_22D8B0A1C();
                  sub_22D84C4B0(&qword_2814587A0);
                  sub_22D872898();
                  swift_allocError();
                  v74 = v73;
                  sub_22D84DB54();
                  sub_22D8B1E2C();
                  v75 = sub_22D8B0DEC();
                  MEMORY[0x2318D4340](v75);

                  MEMORY[0x2318D4340](0xD000000000000026, 0x800000022D8B8220);
                  v76 = sub_22D8B0D1C();
                  MEMORY[0x2318D4340](v76);

                  MEMORY[0x2318D4340](0xD000000000000013, 0x800000022D8B8250);
                  MEMORY[0x2318D43B0](v56, MEMORY[0x277D837D0]);

                  v77 = sub_22D8729E4();
                  MEMORY[0x2318D4340](v77);

                  v78 = v96;
                  *v74 = v95;
                  v74[1] = v78;
                  sub_22D84C5C4();
                  (*(v79 + 104))(v74);
                  swift_willThrow();
                  return (*(v51 + 8))(v55, v91);
                }
              }

              else
              {
                sub_22D8B0A1C();
                v59 = sub_22D84C4B0(&qword_2814587A0);
                sub_22D84CE5C(v59);
                v61 = v60;
                sub_22D84DB54();
                sub_22D8B1E2C();

                sub_22D84F5A0();
                v95 = 0xD000000000000014;
                v96 = v62;
                v63 = sub_22D8B0D1C();
                MEMORY[0x2318D4340](v63);

                MEMORY[0x2318D4340](0xD00000000000001BLL, 0x800000022D8B8200);
                v64 = v96;
                *v61 = v95;
                v61[1] = v64;
                sub_22D84C5C4();
                (*(v65 + 104))(v61);
                swift_willThrow();
                return (*(v51 + 8))(v55, v49);
              }
            }

            return result;
          }

          v20 = *(v17 + 8 * v23);
          ++v22;
          if (v20)
          {
            v22 = v23;
            break;
          }
        }
      }

      v24 = __clz(__rbit64(v20)) | (v22 << 6);
      v25 = (*(v16 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(*(v16 + 56) + 8 * v24);
      v29 = v92[2];

      if (v29)
      {

        v30 = sub_22D852D10(v26, v27);
        if (v31)
        {
          v89 = v26;
          v91 = v27;
          v32 = (v92[7] + 16 * v30);
          v34 = *v32;
          v33 = v32[1];
          if (*(v28 + 16))
          {
            v20 &= v20 - 1;
            sub_22D8B201C();

            sub_22D8B1A6C();
            v35 = sub_22D8B205C();
            v36 = ~(-1 << *(v28 + 32));
            while (1)
            {
              v37 = v35 & v36;
              if (((*(v28 + 56 + (((v35 & v36) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v35 & v36)) & 1) == 0)
              {
                break;
              }

              v38 = (*(v28 + 48) + 16 * v37);
              if (*v38 != v34 || v38[1] != v33)
              {
                v40 = sub_22D8B1F8C();
                v35 = v37 + 1;
                if ((v40 & 1) == 0)
                {
                  continue;
                }
              }

              v16 = v90;
              v21 = v86;
              v17 = v87;
              goto LABEL_10;
            }
          }

          else
          {
          }

          sub_22D8B0A1C();
          v41 = sub_22D84C4B0(&qword_2814587A0);
          sub_22D84CE5C(v41);
          v43 = v42;
          sub_22D84DB54();
          sub_22D8B1E2C();
          MEMORY[0x2318D4340](0xD000000000000018, 0x800000022D8B81A0);
          MEMORY[0x2318D4340](v34, v33);

          MEMORY[0x2318D4340](0xD00000000000001FLL, 0x800000022D8B8180);
          v44 = sub_22D8B0D1C();
          MEMORY[0x2318D4340](v44);

          MEMORY[0x2318D4340](0xD000000000000010, 0x800000022D8B81C0);
          MEMORY[0x2318D4340](v89, v91);

          v45 = v96;
          *v43 = v95;
          v43[1] = v45;
          sub_22D84C5C4();
          (*(v46 + 104))(v43);
          swift_willThrow();
        }

        v66 = v26;
      }

      else
      {
        v66 = v26;
      }

      sub_22D8B0A1C();
      v67 = sub_22D84C4B0(&qword_2814587A0);
      sub_22D84CE5C(v67);
      v69 = v68;
      sub_22D84DB54();
      sub_22D8B1E2C();
      MEMORY[0x2318D4340](0xD00000000000001BLL, 0x800000022D8B8160);
      MEMORY[0x2318D4340](v66, v27);

      MEMORY[0x2318D4340](0xD00000000000001FLL, 0x800000022D8B8180);
      v70 = sub_22D8B0D1C();
      MEMORY[0x2318D4340](v70);

      v71 = v96;
      *v69 = v95;
      v69[1] = v71;
      sub_22D84C5C4();
      (*(v72 + 104))(v69);
      swift_willThrow();
    }

    if (v13 >= *(v11 + 16))
    {
      break;
    }

    sub_22D84E298(i, &v95);
    sub_22D86FAC8(&v97, &v95);
    if (v5)
    {

      sub_22D84D8A0(&v95);
    }

    ++v13;
    result = sub_22D84D8A0(&v95);
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_22D86F7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28[7] = a2;
  sub_22D84E298(a1, v27);
  sub_22D8580D8(&qword_27DA0D688, &unk_22D8B36B0);
  sub_22D8580D8(&qword_27DA0D690, &unk_22D8B4DD0);
  if (swift_dynamicCast())
  {
    v19 = a3;
    v20 = v3;
    sub_22D851550(v25, v28);
    sub_22D84E124(v28, v28[3]);
    v5 = sub_22D8B0A7C();
    v6 = sub_22D8B12BC();
    v18[1] = v18;
    v7 = *(v6 - 8);
    result = MEMORY[0x28223BE20](v6);
    v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = 0;
    v23 = *(v5 + 16);
    v24 = v5;
    v21 = v7 + 8;
    v22 = v7 + 16;
    while (1)
    {
      if (v23 == v11)
      {

        v17 = v19;
        *(v19 + 32) = 0;
        *v17 = 0u;
        v17[1] = 0u;
        return sub_22D84D8A0(v28);
      }

      if (v11 >= *(v24 + 16))
      {
        break;
      }

      (*(v7 + 16))(v10, v24 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11++, v6);
      v12 = sub_22D8B0D8C();
      v13 = *(v12 - 8);
      MEMORY[0x28223BE20](v12);
      v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_22D8B127C();
      (*(v7 + 8))(v10, v6);
      v16 = sub_22D8B0D0C();
      result = (*(v13 + 8))(v15, v12);
      if (v16)
      {

        sub_22D84E298(v28, v19);
        return sub_22D84D8A0(v28);
      }
    }

    __break(1u);
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    result = sub_22D84F5C8(v25, &qword_27DA0D698, &qword_22D8B36C0);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22D86FAC8(void *a1, void *a2)
{
  v3 = v2;
  v4 = a2;
  sub_22D84E124(a2, a2[3]);
  sub_22D8B0A4C();
  v6 = sub_22D879550();

  if (v6)
  {
    v7 = v6 + 64;
    v8 = 1 << *(v6 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v6 + 64);
    v4 = ((v8 + 63) >> 6);

    v11 = 0;
    v86 = a1;
    v74 = v6 + 64;
    v73 = v4;
    v76 = v3;
    v75 = v6;
    if (v10)
    {
LABEL_6:
      v12 = v11;
LABEL_10:
      v78 = v12;
      v79 = (v10 - 1) & v10;
      v13 = *(*(v6 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
      v14 = *(v13 + 64);
      v81 = v13 + 64;
      v15 = 1 << *(v13 + 32);
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v17 = v16 & v14;
      v18 = sub_22D8580D8(&qword_27DA0D830, &unk_22D8B3E10);
      v77 = &v72;
      v84 = *(*(v18 - 8) + 64);
      MEMORY[0x28223BE20](v18 - 8);
      v82 = v13;
      v83 = v19;
      v85 = &v72 - v19;
      v80 = (v15 + 63) >> 6;
      v20 = swift_bridgeObjectRetain_n();
      v21 = 0;
      while (1)
      {
        MEMORY[0x28223BE20](v20);
        v22 = &v72 - v83;
        if (!v17)
        {
          v4 = v85;
          while (1)
          {
            v23 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              break;
            }

            if (v23 >= v80)
            {
              v56 = sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
              sub_22D84C4F8(v22, 1, 1, v56);
              v17 = 0;
              goto LABEL_22;
            }

            v17 = *(v81 + 8 * v23);
            ++v21;
            if (v17)
            {
              v91 = &v72;
              v21 = v23;
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v91 = &v72;
        v23 = v21;
LABEL_21:
        v24 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v25 = v24 | (v23 << 6);
        v26 = sub_22D8B122C();
        v90 = &v72;
        v27 = *(v26 - 8);
        MEMORY[0x28223BE20](v26);
        v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
        v30 = v82;
        (*(v27 + 16))(v29, *(v82 + 48) + *(v31 + 72) * v25, v26);
        v32 = *(*(v30 + 56) + 8 * v25);
        v33 = sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
        v34 = *(v33 + 48);
        (*(v27 + 32))(v22, v29, v26);
        *&v22[v34] = v32;
        sub_22D84C4F8(v22, 0, 1, v33);

        v4 = v85;
        a1 = v86;
LABEL_22:
        sub_22D8727D0(v22, v4);
        v35 = sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
        if (sub_22D84D0C0(v4, 1, v35) == 1)
        {

          v11 = v78;
          v10 = v79;
          v6 = v75;
          v7 = v74;
          v4 = v73;
          if (!v79)
          {
            break;
          }

          goto LABEL_6;
        }

        v36 = sub_22D8B122C();
        v37 = *(v36 - 8);
        MEMORY[0x28223BE20](v36);
        v39 = &v72 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
        v89 = *(v4 + *(v35 + 48));
        (*(v37 + 32))(v39, v4, v36);
        sub_22D8B121C();
        v40 = sub_22D879550();

        v87 = v36;
        v88 = &v72;
        v91 = v37;
        if (v40)
        {
        }

        else
        {
          v41 = sub_22D8B121C();
          v43 = v42;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v92 = *a1;
          sub_22D8AD510(MEMORY[0x277D84FA0], v41, v43, isUniquelyReferenced_nonNull_native);

          *a1 = v92;
        }

        v90 = v39;
        v45 = sub_22D8B121C();
        v47 = v46;
        v4 = swift_isUniquelyReferenced_nonNull_native();
        v92 = *a1;
        v48 = v92;
        v49 = sub_22D852D10(v45, v47);
        if (__OFADD__(*(v48 + 16), (v50 & 1) == 0))
        {
          goto LABEL_45;
        }

        v51 = v49;
        v52 = v50;
        sub_22D8580D8(&unk_27DA0D840, &qword_22D8B3E20);
        if (sub_22D8B1EAC())
        {
          v53 = sub_22D852D10(v45, v47);
          if ((v52 & 1) != (v54 & 1))
          {
            result = sub_22D8B1FBC();
            __break(1u);
            return result;
          }

          v51 = v53;
        }

        if ((v52 & 1) == 0)
        {
          goto LABEL_46;
        }

        v95 = *(*(v92 + 56) + 8 * v51);
        sub_22D8936FC(v89);
        v55 = v95;
        if (v95)
        {

          *(*(v92 + 56) + 8 * v51) = v55;
        }

        else
        {

          sub_22D872840(*(v92 + 48) + 16 * v51);
          sub_22D8580D8(&qword_27DA0D828, &unk_22D8B4DB0);
          sub_22D8B1EBC();
        }

        (v91[1])(v90, v87);

        a1 = v86;
        *v86 = v92;
      }
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v4)
      {
      }

      v10 = *(v7 + 8 * v12);
      ++v11;
      if (v10)
      {
        goto LABEL_10;
      }
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (qword_2814589E0 != -1)
  {
LABEL_48:
    swift_once();
  }

  v58 = sub_22D8B178C();
  sub_22D84C6FC(v58, qword_281459298);
  sub_22D84E298(v4, &v92);
  v59 = sub_22D8B176C();
  v60 = sub_22D8B1C4C();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v95 = v62;
    *v61 = 136315138;
    sub_22D84E124(&v92, v94);
    v63 = sub_22D8B0A4C();
    v65 = v64;
    sub_22D84D8A0(&v92);
    v66 = sub_22D84C63C(v63, v65, &v95);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_22D84A000, v59, v60, "Resource '%s' does not have a corresponding variant resolver mapping", v61, 0xCu);
    sub_22D84D8A0(v62);
    MEMORY[0x2318D50E0](v62, -1, -1);
    MEMORY[0x2318D50E0](v61, -1, -1);
  }

  else
  {

    sub_22D84D8A0(&v92);
  }

  v67 = sub_22D8B0A1C();
  sub_22D872730(&qword_2814587A0, MEMORY[0x2822218B8], MEMORY[0x2822218D0]);
  swift_allocError();
  v69 = v68;
  v92 = 0;
  v93 = 0xE000000000000000;
  sub_22D8B1E2C();
  MEMORY[0x2318D4340](0x656372756F736552, 0xEA00000000002720);
  sub_22D84E124(v4, v4[3]);
  v70 = sub_22D8B0A4C();
  MEMORY[0x2318D4340](v70);

  MEMORY[0x2318D4340](0xD000000000000038, 0x800000022D8B82B0);
  v71 = v93;
  *v69 = v92;
  v69[1] = v71;
  (*(*(v67 - 8) + 104))(v69, *MEMORY[0x277D29A88], v67);
  return swift_willThrow();
}

void sub_22D870454(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  sub_22D872E58(*a2, v6, a3);
  if (v7)
  {

    sub_22D872E58(v5, v6, a3);
    if (v8)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v14 = *a1;
      sub_22D8AD400();
      *a1 = v14;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v9 = sub_22D8B0A1C();
    sub_22D872730(&qword_2814587A0, MEMORY[0x2822218B8], MEMORY[0x2822218D0]);
    swift_allocError();
    v11 = v10;
    sub_22D8B1E2C();
    MEMORY[0x2318D4340](0xD000000000000016, 0x800000022D8B8270);
    MEMORY[0x2318D4340](v5, v6);
    MEMORY[0x2318D4340](0xD00000000000001FLL, 0x800000022D8B8180);
    v12 = sub_22D8B0D1C();
    MEMORY[0x2318D4340](v12);

    MEMORY[0x2318D4340](0xD000000000000012, 0x800000022D8B8290);
    v13 = sub_22D8B192C();
    MEMORY[0x2318D4340](v13);

    MEMORY[0x2318D4340](46, 0xE100000000000000);
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D29A88], v9);
    swift_willThrow();
  }
}

uint64_t sub_22D87069C()
{
  sub_22D84D198();
  v0[14] = v1;
  v0[15] = v2;
  v3 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  sub_22D84C3FC(v3);
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22D870764()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v28 = MEMORY[0x277D84F90];
    sub_22D87BB0C(0, v2, 0);
    v3 = v28;
    v27 = sub_22D8B0E1C();
    v21 = v1 + ((*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80));
    v22 = *(v27 - 8);
    v4 = 0;
    v20 = sub_22D8B0F3C();
    sub_22D84D7DC();
    v19 = v5;
    do
    {
      v24 = *(v23 + 136);
      v26 = *(v23 + 128);
      v25 = swift_task_alloc();
      v6 = sub_22D84C584();
      (*(v22 + 16))(v6, v21 + *(v22 + 72) * v4, v27);
      sub_22D8580D8(&qword_27DA0D818, &qword_22D8B3DF8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22D8B3740;
      *(inited + 32) = sub_22D8B0DDC();
      *(inited + 40) = v8;
      *(inited + 48) = sub_22D8B0DEC();
      *(inited + 56) = v9;
      *(inited + 64) = sub_22D8B0DFC();
      *(inited + 72) = v10;
      *(inited + 80) = sub_22D8B0DEC();
      *(inited + 88) = v11;
      sub_22D8B193C();
      sub_22D8B0DBC();
      sub_22D87294C();
      sub_22D8B193C();
      v12 = sub_22D8B083C();
      sub_22D84C4F8(v24, 1, 1, v12);
      sub_22D8580D8(&qword_27DA0D7A8, &qword_22D8B3B60);
      sub_22D87294C();
      sub_22D8B193C();

      sub_22D8726CC(v24, v26, &qword_27DA0D608, &unk_22D8B3DB0);
      sub_22D8B0F0C();
      (*(v22 + 8))(v6, v27);
      sub_22D84F5C8(v24, &qword_27DA0D608, &unk_22D8B3DB0);

      v14 = *(v28 + 16);
      v13 = *(v28 + 24);
      if (v14 >= v13 >> 1)
      {
        v15 = sub_22D84C4D0(v13);
        sub_22D87BB0C(v15, v14 + 1, 1);
      }

      ++v4;
      *(v28 + 16) = v14 + 1;
      (*(v19 + 32))(v28 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v14, v25, v20);
    }

    while (v2 != v4);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  *(v23 + 144) = v3;
  sub_22D84E124(*(v23 + 112), *(*(v23 + 112) + 24));
  sub_22D8B0DAC();
  *(v23 + 152) = v16;
  v17 = swift_task_alloc();
  *(v23 + 160) = v17;
  *v17 = v23;
  v17[1] = sub_22D870BA0;

  return sub_22D865664();
}

void sub_22D870BA0()
{
  sub_22D84F8A0();
  v1 = *v0;
  sub_22D84CED0();
  *v2 = v1;

  sub_22D84D800();
  sub_22D8554C0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22D870D80(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_22D870E0C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_22D870E54(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_22D8B1AFC();
  }

  return result;
}

uint64_t sub_22D870E80()
{
  sub_22D8B0F3C();
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_22D870EF8()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_22D870F3C(uint64_t a1)
{
  v2 = sub_22D8B1D5C();

  return sub_22D870F80(a1, v2);
}

unint64_t sub_22D870F80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_22D8B113C();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_22D8B1D6C();

    if (v8)
    {
      break;
    }
  }

  return i;
}

void *sub_22D871040(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_22D8712A4(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

_BYTE *sub_22D8710E0(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v4 = sub_22D871040(v12, v7, v4, a2);
      MEMORY[0x2318D50E0](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v8);
  v9 = v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22D88C8E8(0, v7, v9);

  v10 = sub_22D8712A4(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_22D8712A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v24 = result;
  v25 = (a4 + 40);
LABEL_4:
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(a4 + 16) + 1;
    v18 = v25;
    while (1)
    {
      v19 = v18 + 2;
      if (!--v17)
      {
        break;
      }

      result = *(v18 - 1);
      if (result != v15 || *v18 != v16)
      {
        result = sub_22D8B1F8C();
        v18 = v19;
        if ((result & 1) == 0)
        {
          continue;
        }
      }

      *(v24 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (!__OFADD__(v28++, 1))
      {
        goto LABEL_4;
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
LABEL_21:
      v22 = sub_22D87142C(v24, a2, v28, a3);

      return v22;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D87142C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_22D8580D8(&qword_27DA0D7F8, &qword_22D8B3DC8);
  result = sub_22D8B1F3C();
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
  v12 = result + 64;
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 16 * v16);
    v22 = v21[1];
    v35 = *v21;
    sub_22D8B201C();

    sub_22D8B1A6C();
    result = sub_22D8B205C();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    v32 = (*(v9 + 56) + 16 * v26);
    *v32 = v35;
    v32[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v34;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22D871674(char *a1, uint64_t a2, uint64_t a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v68 = sub_22D8B06AC();
  v6 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D8B073C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v64 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v62 = &v59 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - v15;
  v73 = type metadata accessor for UnifiedAssetInterface();
  v74 = &off_2840E33F0;
  *&v72 = a2;
  swift_defaultActor_initialize();
  v63 = OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_record;
  *(a3 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_record) = 0;
  v60 = v10;
  v17 = *(v10 + 16);
  v65 = a3;
  v66 = v17;
  v70 = v9;
  v67 = v10 + 16;
  v17((a3 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_tokenStoreBaseURL), a1, v9);
  v18 = objc_opt_self();
  v19 = [v18 defaultManager];
  v69 = a1;
  sub_22D8B070C();
  v20 = sub_22D8B19CC();

  LOBYTE(a2) = [v19 fileExistsAtPath_];

  if ((a2 & 1) == 0)
  {
    if (qword_2814589E0 != -1)
    {
      swift_once();
    }

    v21 = sub_22D8B178C();
    sub_22D84C6FC(v21, qword_281459298);
    v22 = sub_22D8B176C();
    v23 = sub_22D8B1C6C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22D84A000, v22, v23, "CoherenceTokenStore: createTokenStore, creating base directory", v24, 2u);
      MEMORY[0x2318D50E0](v24, -1, -1);
    }

    v25 = [v18 defaultManager];
    v26 = sub_22D8B06CC();
    v71[0] = 0;
    v27 = [v25 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:v71];

    if (v27)
    {
      v28 = v71[0];
    }

    else
    {
      v29 = v71[0];
      v30 = sub_22D8B069C();

      swift_willThrow();
      v31 = sub_22D8B176C();
      v32 = sub_22D8B1C6C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_22D84A000, v31, v32, "CoherenceTokenStore: init, could not create base directory", v33, 2u);
        MEMORY[0x2318D50E0](v33, -1, -1);
      }
    }
  }

  v61 = type metadata accessor for CoherenceTokenStore(0);
  v71[0] = sub_22D872FE8();
  v71[1] = v34;
  v35 = v68;
  (*(v6 + 104))(v8, *MEMORY[0x277CC91D8], v68);
  sub_22D872340();
  sub_22D8B072C();
  (*(v6 + 8))(v8, v35);

  if (qword_2814589E0 != -1)
  {
    swift_once();
  }

  v36 = sub_22D8B178C();
  sub_22D84C6FC(v36, qword_281459298);
  v37 = v62;
  v68 = v16;
  v66(v62, v16, v70);
  v38 = sub_22D8B176C();
  v39 = sub_22D8B1C6C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v71[0] = v41;
    *v40 = 136315138;
    sub_22D872394(&qword_281459230, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v42 = v60;
    v43 = v70;
    v44 = sub_22D8B1F5C();
    v46 = v45;
    v62 = *(v42 + 8);
    (v62)(v37, v43);
    v47 = sub_22D84C63C(v44, v46, v71);

    *(v40 + 4) = v47;
    _os_log_impl(&dword_22D84A000, v38, v39, "Instantiating CoherenceTokenStore url: %s ", v40, 0xCu);
    sub_22D84D8A0(v41);
    MEMORY[0x2318D50E0](v41, -1, -1);
    MEMORY[0x2318D50E0](v40, -1, -1);
  }

  else
  {

    v62 = *(v60 + 8);
    (v62)(v37, v70);
  }

  v48 = OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_tokenStoreURL;
  v49 = v65;
  v50 = v66;
  v51 = v70;
  v66((v65 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_tokenStoreURL), v68, v70);
  v52 = v64;
  v50(v64, v49 + v48, v51);
  v53 = v69;
  sub_22D873248(v69, v52);
  v54 = v62;
  (v62)(v52, v51);
  v50(v52, v49 + v48, v51);
  v55 = objc_allocWithZone(type metadata accessor for CoherenceTokenStoreRecord());
  v56 = sub_22D876BF8(v52);
  v54(v53, v51);
  v54(v68, v51);
  v57 = *(v49 + v63);
  *(v49 + v63) = v56;

  sub_22D851550(&v72, v49 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_unifiedAssetInterface);
  *(v49 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_syncComplete) = 0;
  return v65;
}

uint64_t sub_22D871E14(char *a1, uint64_t a2)
{
  v13 = type metadata accessor for UnifiedAssetInterface();
  v14 = &off_2840E33F0;
  v12[0] = a2;
  type metadata accessor for CoherenceTokenStore(0);
  v4 = swift_allocObject();
  v5 = sub_22D84EAA8(v12, v13);
  MEMORY[0x28223BE20](v5);
  v7 = (&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_22D871674(a1, *v7, v4);
  sub_22D84D8A0(v12);
  return v9;
}

uint64_t sub_22D871F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D8B073C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for UnifiedAssetInterface();
  v24 = &off_2840E33F0;
  *&v22 = a1;
  v20 = type metadata accessor for BackgroundScheduler();
  v21 = &off_2840E37F8;
  *&v19 = a2;
  swift_defaultActor_initialize();
  *(a3 + 200) = MEMORY[0x277D84FA0];
  *(a3 + 208) = 0;
  if (qword_281458CF0 != -1)
  {
    swift_once();
  }

  v10 = sub_22D84C6FC(v6, qword_281459468);
  (*(v7 + 16))(v9, v10, v6);
  sub_22D84E298(&v22, v18);
  v11 = sub_22D84EAA8(v18, v18[3]);
  MEMORY[0x28223BE20](v11);
  v13 = (&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_22D871E14(v9, *v13);
  sub_22D84D8A0(v18);
  *(a3 + 192) = v15;
  sub_22D851550(&v22, a3 + 112);
  sub_22D851550(&v19, a3 + 152);
  return a3;
}

uint64_t sub_22D872170(uint64_t a1, uint64_t a2)
{
  v19 = type metadata accessor for UnifiedAssetInterface();
  v20 = &off_2840E33F0;
  v18[0] = a1;
  v16 = type metadata accessor for BackgroundScheduler();
  v17 = &off_2840E37F8;
  v15[0] = a2;
  type metadata accessor for AssetSetCoherenceManager();
  v4 = swift_allocObject();
  v5 = sub_22D84EAA8(v18, v19);
  MEMORY[0x28223BE20](v5);
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_22D84EAA8(v15, v16);
  MEMORY[0x28223BE20](v9);
  v11 = (v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_22D871F30(*v7, *v11, v4);
  sub_22D84D8A0(v15);
  sub_22D84D8A0(v18);
  return v13;
}

unint64_t sub_22D872340()
{
  result = qword_281458928;
  if (!qword_281458928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281458928);
  }

  return result;
}

uint64_t sub_22D872394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22D8723DC()
{
  sub_22D84D198();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  sub_22D84DD88(v2);

  return sub_22D86BC50(v0);
}

uint64_t sub_22D872464()
{
  sub_22D84D198();
  v2 = v1;
  sub_22D84C734();
  v3 = *v0;
  sub_22D84CED0();
  *v4 = v3;

  sub_22D84C4A4();

  return v5(v2);
}

uint64_t sub_22D87254C()
{
  sub_22D84D77C();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = sub_22D84E468(v3);

  return sub_22D86A7AC(v4, v5, v2);
}

uint64_t sub_22D872644(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22D8726C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22D8726CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22D8580D8(a3, a4);
  sub_22D84C5C4();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22D872730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22D8727D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D8580D8(&qword_27DA0D830, &unk_22D8B3E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22D8728AC()
{

  JUMPOUT(0x2318D50E0);
}

BOOL sub_22D8728E4()
{

  return sub_22D851F6C((v2 + 104), v1, v0);
}

BOOL sub_22D872904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_22D851F6C(&a9, v10, v9);
}

BOOL sub_22D87297C()
{
  v2 = v0[20];
  v3 = v0[21];

  return sub_22D851F6C(v0 + 11, v2, v3);
}

uint64_t sub_22D8729B8()
{

  return swift_endAccess();
}

uint64_t sub_22D872A40(unint64_t *a1)
{
  v2 = MEMORY[0x2822218A8];
  v3 = MEMORY[0x2822218B0];

  return sub_22D872730(a1, v2, v3);
}

void sub_22D872A60(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22D872A80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D8B150C();
  sub_22D84D7DC();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D8B151C();
  sub_22D84D7DC();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v10);
  v16 = (*(v12 + 88))(v15, v10);
  if (v16 == *MEMORY[0x277CEDFB8] || v16 == *MEMORY[0x277CEDFC0] || v16 != *MEMORY[0x277CEDFB0])
  {
    return (*(v12 + 8))(v15, v10);
  }

  (*(v12 + 96))(v15, v10);
  (*(v6 + 32))(v9, v15, v4);
  swift_beginAccess();
  sub_22D870D68();
  v17 = *(*(v2 + 16) + 16);
  sub_22D870DF4(v17);
  v18 = *(v2 + 16);
  *(v18 + 16) = v17 + 1;
  (*(v6 + 16))(v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, v9, v4);
  *(v2 + 16) = v18;
  swift_endAccess();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_22D872D0C()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22D872D68(uint64_t a1, uint64_t a2)
{
  v5 = sub_22D8B154C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22D872A80(a1);
  if (v2)
  {
    return (*(v6 + 32))(a2, v8, v5);
  }

  return result;
}

uint64_t sub_22D872E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_22D852D10(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_22D872EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 16) && (sub_22D852D10(a1, a2), (a2 & 1) != 0))
  {
    v7 = a4(0);
    sub_22D84C740();
    v8 = sub_22D84C61C();
    v9(v8);
    v10 = a5;
    v11 = 0;
    v12 = v7;
  }

  else
  {
    v12 = (a4)(0, a2);
    v10 = a5;
    v11 = 1;
  }

  return sub_22D84C4F8(v10, v11, 1, v12);
}

uint64_t sub_22D872F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22D852D10(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22D872FE8()
{
  v17 = *MEMORY[0x277D85DE8];
  v0 = sub_22D8B1A2C();
  MEMORY[0x28223BE20](v0 - 8);
  v14 = 37;
  sub_22D8B067C();
  swift_allocObject();
  v15 = 0x2500000000;
  v16 = sub_22D8B064C() | 0x4000000000000000;
  if (sub_22D8784B8(&v15, &v14))
  {
    v7 = MEMORY[0x2318D4120]();
    if (!strerror(v7))
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  sub_22D873964();
  v1 = v15;
  v2 = v16;
  sub_22D8B1A1C();
  v3 = sub_22D8B1A0C();
  if (!v4)
  {
    while (1)
    {
      sub_22D8B1EFC();
      __break(1u);
LABEL_7:
      v8 = sub_22D8B19BC();
      if (v9)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0x6E776F6E6B6E55;
      }

      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xE700000000000000;
      }

      sub_22D8B1E2C();
      MEMORY[0x2318D4340](0xD000000000000033, 0x800000022D8B84E0);
      MEMORY[0x2318D4340](v10, v11);
      v12 = MEMORY[0x2318D4340](40, 0xE100000000000000);
      MEMORY[0x2318D4120](v12);
      v13 = sub_22D8B1F5C();
      MEMORY[0x2318D4340](v13);
    }
  }

  v5 = v3;
  sub_22D877894(v1, v2);
  return v5;
}

void sub_22D873248(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  v78[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22D8B073C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v63 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v63 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v74 = &v63 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v63 - v15;
  v17 = [objc_opt_self() defaultManager];
  v18 = sub_22D8B06CC();
  v78[0] = 0;
  v70 = v17;
  v19 = sub_22D84C61C();
  v21 = [v19 v20];

  v22 = v78[0];
  if (v21)
  {
    v23 = sub_22D8B1ADC();
    v24 = v22;

    v73 = v23[2];
    if (!v73)
    {
LABEL_14:

      return;
    }

    v64 = v6;
    v6 = 0;
    v71 = v23 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v76 = v3 + 16;
    *&v25 = 136315138;
    v65 = v25;
    v66 = v3;
    v67 = v12;
    v68 = v9;
    v69 = v16;
    v72 = v23;
    v77 = v3 + 8;
    while (v6 < v23[2])
    {
      v26 = *(v3 + 16);
      v26(v16, &v71[*(v3 + 72) * v6], v2);
      sub_22D8B06EC();
      sub_22D8B06EC();
      sub_22D8778EC(&qword_281459238, MEMORY[0x277CC9278]);
      v27 = sub_22D8B19AC();
      v28 = *(v3 + 8);
      v28(v12, v2);
      v29 = sub_22D851E68();
      (v28)(v29);
      if ((v27 & 1) == 0)
      {
        if (qword_2814589E0 != -1)
        {
          sub_22D86845C();
          swift_once();
        }

        v30 = sub_22D8B178C();
        sub_22D84DD10(v30, qword_281459298);
        v31 = v68;
        v26(v68, v16, v2);
        v32 = sub_22D8B176C();
        v33 = sub_22D8B1C6C();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = sub_22D84DD3C();
          v35 = sub_22D84CE7C();
          v78[0] = v35;
          *v34 = v65;
          sub_22D84DA70();
          sub_22D8778EC(&qword_281459230, v36);
          v37 = sub_22D8B1F5C();
          v39 = v38;
          v28(v31, v2);
          v40 = sub_22D84C63C(v37, v39, v78);
          v3 = v66;

          *(v34 + 4) = v40;
          _os_log_impl(&dword_22D84A000, v32, v33, "AssetSetCoherenceManager: removing old persisted state: %s", v34, 0xCu);
          sub_22D84D8A0(v35);
          sub_22D84DDE4();
          sub_22D84D6DC();
        }

        else
        {

          v28(v31, v2);
        }

        v16 = v69;
        v41 = sub_22D8B06CC();
        v78[0] = 0;
        v42 = [v70 removeItemAtURL:v41 error:v78];

        v12 = v67;
        if (!v42)
        {
          v45 = v78[0];

          v23 = sub_22D8B069C();

          swift_willThrow();
          v28(v16, v2);
          v6 = v64;
          goto LABEL_17;
        }

        v43 = v78[0];
      }

      ++v6;
      v28(v16, v2);
      v23 = v72;
      if (v73 == v6)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v44 = v78[0];
    v23 = sub_22D8B069C();

    swift_willThrow();
LABEL_17:
    if (qword_2814589E0 == -1)
    {
      goto LABEL_18;
    }
  }

  sub_22D86845C();
  swift_once();
LABEL_18:
  v46 = sub_22D8B178C();
  sub_22D84DD10(v46, qword_281459298);
  (*(v3 + 16))(v6, v75, v2);
  v47 = v23;
  v48 = sub_22D8B176C();
  v49 = sub_22D8B1C6C();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = v3;
    v52 = sub_22D84E1FC();
    v53 = sub_22D84CE7C();
    v78[0] = v53;
    *v50 = 136315394;
    sub_22D84DA70();
    sub_22D8778EC(v54, v55);
    v56 = sub_22D8B1F5C();
    v57 = v6;
    v59 = v58;
    (*(v51 + 8))(v57, v2);
    v60 = sub_22D84C63C(v56, v59, v78);

    *(v50 + 4) = v60;
    *(v50 + 12) = 2112;
    v61 = v23;
    v62 = _swift_stdlib_bridgeErrorToNSError();
    *(v50 + 14) = v62;
    *v52 = v62;
    _os_log_impl(&dword_22D84A000, v48, v49, "AssetSetCoherenceManager: while attempting to use %s failed with: %@", v50, 0x16u);
    sub_22D84D06C(v52, &qword_27DA0D4D0);
    sub_22D84C3D8();
    sub_22D84D8A0(v53);
    sub_22D84C3D8();
    sub_22D84C3D8();
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

void sub_22D873964()
{
  v1 = *v0;
  v2 = v0[1];
  switch(v2 >> 62)
  {
    case 1uLL:
      v3 = v1;
      v4 = v1 >> 32;
      goto LABEL_5;
    case 2uLL:
      v3 = *(v1 + 16);
      v4 = *(v1 + 24);
      goto LABEL_5;
    case 3uLL:
      goto LABEL_16;
    default:
      v3 = 0;
      v4 = BYTE6(v2);
LABEL_5:
      if (v3 == v4)
      {
        goto LABEL_16;
      }

      if ((sub_22D879294() & 0x100) != 0)
      {
        v5 = *v0;
        v6 = v0[1];
        v7 = 0;
        switch(v6 >> 62)
        {
          case 1uLL:
            v7 = v5 >> 32;
            break;
          case 2uLL:
            v7 = *(v5 + 24);
            break;
          case 3uLL:
            break;
          default:
            v7 = BYTE6(v6);
            break;
        }

        if (__OFSUB__(v7, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
        }

        else
        {

          sub_22D8791E4(v7 - 1);
        }
      }

      return;
  }
}

uint64_t sub_22D873A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_record);
  if (v4)
  {
    v6 = v4;
    v7 = sub_22D851E68();
    v9 = sub_22D87715C(v7, v8, a3);
  }

  else
  {
    v9 = sub_22D8B0A0C();
    sub_22D87949C();
    sub_22D84DF28();
    v10 = swift_allocError();
    sub_22D8519D0(v10, v11);
    sub_22D84F5A0();
    sub_22D84CFC0(v12, v13);
    sub_22D84D850();
    (*(v14 + 104))();
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_22D873B20()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_record);
  if (v1)
  {
    v2 = v1;
    v3 = sub_22D87731C();
  }

  else
  {
    v3 = sub_22D8B0A0C();
    sub_22D87949C();
    sub_22D84DF28();
    v4 = swift_allocError();
    sub_22D8519D0(v4, v5);
    sub_22D84F5A0();
    sub_22D84CFC0(v6, v7);
    sub_22D84D850();
    (*(v8 + 104))();
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_22D873BF0()
{
  sub_22D84D198();
  v1[3] = v0;
  v2 = sub_22D8B073C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D873CD8, v0, 0);
}

uint64_t sub_22D873CD8()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultManager];
  sub_22D8B070C();
  v3 = sub_22D8B19CC();

  v4 = [v2 fileExistsAtPath_];

  if ((v4 & 1) == 0)
  {
    if (qword_2814589E0 != -1)
    {
      sub_22D86845C();
      swift_once();
    }

    v5 = sub_22D8B178C();
    sub_22D84DD10(v5, qword_281459298);
    v6 = sub_22D8B176C();
    v7 = sub_22D8B1C6C();
    if (sub_22D851250(v7))
    {
      v8 = sub_22D85225C();
      *v8 = 0;
      sub_22D8516B0();
      _os_log_impl(v9, v10, v11, v12, v8, 2u);
      sub_22D84D6DC();
    }

    v13 = [v1 defaultManager];
    v14 = sub_22D8B06CC();
    v0[2] = 0;
    v15 = sub_22D84C61C();
    v17 = [v15 v16];

    v18 = v0[2];
    if (!v17)
    {
      v35 = v18;
      v36 = sub_22D8B069C();

      swift_willThrow();
      goto LABEL_18;
    }

    v19 = v18;
  }

  v20 = v0[3];
  v21 = OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_record;
  if (*(v20 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_record))
  {
LABEL_15:

    sub_22D84C794();
    goto LABEL_19;
  }

  v22 = v0[6];
  (*(v0[5] + 16))(v22, v20 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_tokenStoreURL, v0[4]);
  v23 = objc_allocWithZone(type metadata accessor for CoherenceTokenStoreRecord());
  v24 = sub_22D876BF8(v22);
  v25 = *(v20 + v21);
  *(v20 + v21) = v24;

  if (*(v20 + v21))
  {
    if (qword_2814589E0 != -1)
    {
      sub_22D86845C();
      swift_once();
    }

    v26 = sub_22D8B178C();
    sub_22D84DD10(v26, qword_281459298);
    v27 = sub_22D8B176C();
    v28 = sub_22D8B1C6C();
    if (sub_22D84CEE0(v28))
    {
      *sub_22D85225C() = 0;
      sub_22D84C460();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      sub_22D84DDE4();
    }

    goto LABEL_15;
  }

  v37 = sub_22D8B0A0C();
  sub_22D87949C();
  v36 = swift_allocError();
  sub_22D854F78(v38, v38);
  (*(*(v37 - 8) + 104))();
  swift_willThrow();
LABEL_18:
  v39 = sub_22D8B0A0C();
  sub_22D87949C();
  v40 = swift_allocError();
  v42 = sub_22D8519D0(v40, v41);
  sub_22D854F78(v42, v43);
  (*(*(v39 - 8) + 104))();
  swift_willThrow();

  sub_22D84C794();
LABEL_19:

  return v34();
}

uint64_t sub_22D8740F4()
{
  sub_22D84D198();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;

  return MEMORY[0x2822009F8](sub_22D874180, v0, 0);
}

uint64_t sub_22D874180()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_record);
  if (!v1)
  {
    sub_22D8B0A0C();
    sub_22D87949C();
    sub_22D84DF28();
    v9 = swift_allocError();
    sub_22D84F5A0();
    sub_22D84CFC0(v12, v13);
    sub_22D84D850();
    (*(v14 + 104))();
    swift_willThrow();
LABEL_8:
    if (qword_2814589E0 != -1)
    {
      sub_22D86845C();
      swift_once();
    }

    v16 = sub_22D8B178C();
    sub_22D84DD10(v16, qword_281459298);
    v17 = v9;
    v18 = sub_22D8B176C();
    v19 = sub_22D8B1C6C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = sub_22D84DD3C();
      v21 = sub_22D84E1FC();
      *v20 = 138412290;
      v22 = v9;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      sub_22D84C460();
      _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
      sub_22D84D06C(v21, &qword_27DA0D4D0);
      sub_22D84C3D8();
      sub_22D84DDE4();
    }

    else
    {
    }

    goto LABEL_18;
  }

  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens;
  sub_22D84E184(&v1[OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens], v0 + 16);
  *&v1[v3] = v2;
  v4 = v1;

  v5 = objc_opt_self();
  *(v0 + 40) = 0;

  v6 = [v5 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:v0 + 40];
  v7 = *(v0 + 40);
  if (!v6)
  {
    v15 = v7;
    v9 = sub_22D8B069C();

    swift_willThrow();
    goto LABEL_7;
  }

  v8 = *(v0 + 56);
  sub_22D8B07BC();

  sub_22D879554();
  if (v8)
  {
    v9 = v8;
    v10 = sub_22D85126C();
    sub_22D877894(v10, v11);
LABEL_7:

    goto LABEL_8;
  }

  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v29 = sub_22D8B178C();
  sub_22D84DD10(v29, qword_281459298);
  v30 = sub_22D8B176C();
  v31 = sub_22D8B1C6C();
  if (sub_22D851250(v31))
  {
    v32 = sub_22D85225C();
    *v32 = 0;
    sub_22D8516B0();
    _os_log_impl(v33, v34, v35, v36, v32, 2u);
    sub_22D84D6DC();
  }

  v37 = sub_22D85126C();
  sub_22D877894(v37, v38);

LABEL_18:
  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_22D874504()
{
  sub_22D84D198();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;

  return MEMORY[0x2822009F8](sub_22D874594, v0, 0);
}

uint64_t sub_22D874594()
{
  v55 = v0;
  v54[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0[5].super_class + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_record);
  if (!v1)
  {
    sub_22D8B0A0C();
    sub_22D87949C();
    sub_22D84DF28();
    v19 = swift_allocError();
    sub_22D84F5A0();
    sub_22D84CFC0(v22, v23);
    sub_22D84D850();
    (*(v24 + 104))();
    swift_willThrow();
LABEL_10:
    if (qword_2814589E0 != -1)
    {
      sub_22D86845C();
      swift_once();
    }

    v26 = sub_22D8B178C();
    sub_22D84DD10(v26, qword_281459298);

    v27 = v19;
    v28 = sub_22D8B176C();
    sub_22D8B1C6C();

    if (sub_22D84DFC0())
    {
      receiver = v0[4].receiver;
      super_class = v0[4].super_class;
      v31 = swift_slowAlloc();
      v32 = sub_22D84E1FC();
      v33 = sub_22D84CE7C();
      v54[0] = v33;
      *v31 = 136315394;
      *(v31 + 4) = sub_22D84C63C(receiver, super_class, v54);
      *(v31 + 12) = 2112;
      v34 = v19;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v35;
      *v32 = v35;
      sub_22D8516B0();
      _os_log_impl(v36, v37, v38, v39, v31, 0x16u);
      sub_22D84D06C(v32, &qword_27DA0D4D0);
      sub_22D84C3D8();
      sub_22D84D8A0(v33);
      sub_22D84C3D8();
      sub_22D84C3D8();
    }

    else
    {
    }

    goto LABEL_20;
  }

  p_receiver = &v0[1].receiver;
  v3 = v1;
  v5 = sub_22D876620(&v0[1]);
  if (*v4)
  {
    v6 = v4;
    v7 = v0[4].super_class;
    v8 = v0[5].receiver;
    v9 = v0[4].receiver;
    v10 = type metadata accessor for CoherenceTokenStoreEntry();
    v11 = objc_allocWithZone(v10);
    *&v11[OBJC_IVAR____TtC19ModelCatalogRuntime24CoherenceTokenStoreEntry_token] = v8;
    v0[3].receiver = v11;
    v0[3].super_class = v10;
    v12 = v8;
    v13 = objc_msgSendSuper2(v0 + 3, sel_init);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54[0] = *v6;
    sub_22D8AD3D8(v13, v9, v7, isUniquelyReferenced_nonNull_native);
    *v6 = v54[0];
  }

  (v5)(&v0[1], 0);
  v15 = objc_opt_self();
  *p_receiver = 0;
  v16 = [v15 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v0[1]];
  v17 = *p_receiver;
  if (!v16)
  {
    v25 = v17;
    v19 = sub_22D8B069C();

    swift_willThrow();
    goto LABEL_9;
  }

  v18 = v0[5].super_class;
  sub_22D8B07BC();

  sub_22D879554();
  if (v18)
  {
    v19 = v18;
    v20 = sub_22D85126C();
    sub_22D877894(v20, v21);
LABEL_9:

    goto LABEL_10;
  }

  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v40 = sub_22D8B178C();
  sub_22D84DD10(v40, qword_281459298);

  v41 = sub_22D8B176C();
  sub_22D8B1C6C();

  if (sub_22D84DFC0())
  {
    v43 = v0[4].receiver;
    v42 = v0[4].super_class;
    v44 = sub_22D84DD3C();
    v45 = sub_22D84CE7C();
    v54[0] = v45;
    *v44 = 136315138;
    *(v44 + 4) = sub_22D84C63C(v43, v42, v54);
    sub_22D8516B0();
    _os_log_impl(v46, v47, v48, v49, v44, 0xCu);
    sub_22D84D8A0(v45);
    sub_22D84C3D8();
    sub_22D84C3D8();
  }

  v50 = sub_22D85126C();
  sub_22D877894(v50, v51);

LABEL_20:
  sub_22D84C794();

  return v52();
}

uint64_t sub_22D874A30(uint64_t a1)
{
  type metadata accessor for CoherenceTokenStoreEntry();
  v3 = sub_22D8B193C();
  sub_22D874A9C(a1, &v3);
  return v3;
}

void sub_22D874A9C(uint64_t a1, void *a2)
{
  v4 = 0;
  v33 = a1 & 0xC000000000000001;
  v34 = sub_22D886CD4();
  v31 = a1 & 0xFFFFFFFFFFFFFF8;
  v32 = a1;
  v30 = a2;
  while (v34 != v4)
  {
    if (v33)
    {
      v5 = MEMORY[0x2318D4700](v4, v32);
    }

    else
    {
      if (v4 >= *(v31 + 16))
      {
        goto LABEL_22;
      }

      v5 = *(v32 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      sub_22D8B1FBC();
      __break(1u);
      return;
    }

    v7 = sub_22D879180(v5);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v35 = v6;
      v11 = [v6 consistencyToken];
      v12 = type metadata accessor for CoherenceTokenStoreEntry();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR____TtC19ModelCatalogRuntime24CoherenceTokenStoreEntry_token] = v11;
      v36.receiver = v13;
      v36.super_class = v12;
      v14 = objc_msgSendSuper2(&v36, sel_init);
      swift_isUniquelyReferenced_nonNull_native();
      v37 = *a2;
      v15 = v37;
      v16 = v9;
      v17 = sub_22D852D10(v9, v10);
      if (__OFADD__(v15[2], (v18 & 1) == 0))
      {
        goto LABEL_23;
      }

      v19 = v17;
      v20 = v18;
      sub_22D8580D8(&qword_27DA0D900, &unk_22D8B4010);
      if (sub_22D8B1EAC())
      {
        v21 = sub_22D852D10(v16, v10);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_25;
        }

        v19 = v21;
      }

      v23 = v37;
      if (v20)
      {
        v24 = v37[7];
        v25 = *(v24 + 8 * v19);
        *(v24 + 8 * v19) = v14;
      }

      else
      {
        v37[(v19 >> 6) + 8] |= 1 << v19;
        v26 = (v23[6] + 16 * v19);
        *v26 = v16;
        v26[1] = v10;
        *(v23[7] + 8 * v19) = v14;
        v27 = v23[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_24;
        }

        v23[2] = v29;
      }

      a2 = v30;
      *v30 = v23;
    }

    else
    {
    }

    ++v4;
  }
}

uint64_t sub_22D874CFC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v19 = a4;
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = (*(a1 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v11)))));
      v17 = v16[1];
      v18[0] = *v16;
      v18[1] = v17;

      sub_22D875DF4(v18, a2, a3, v19);
      if (v4)
      {
        break;
      }

      v11 &= v11 - 1;

      v14 = v15;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22D874E48(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return sub_22D84DC68(sub_22D874E64, v1);
}

uint64_t sub_22D874E64()
{
  sub_22D84D77C();
  v0[11] = MEMORY[0x277D84F90];
  v1 = v0[14];
  v2 = OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_syncComplete;
  v0[15] = OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_syncComplete;
  if (*(v1 + v2))
  {
    sub_22D84C4A4();
    v4 = MEMORY[0x277D84F90];

    return v3(v4);
  }

  else
  {
    if (qword_2814589E0 != -1)
    {
      sub_22D86845C();
      swift_once();
    }

    v6 = sub_22D8B178C();
    v0[16] = sub_22D84C6FC(v6, qword_281459298);
    v7 = sub_22D8B176C();
    v8 = sub_22D8B1C6C();
    if (sub_22D84CEE0(v8))
    {
      *sub_22D85225C() = 0;
      sub_22D84C460();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      sub_22D84DDE4();
    }

    v14 = swift_task_alloc();
    v0[17] = v14;
    *v14 = v0;
    sub_22D84CE94(v14);

    return sub_22D873BF0();
  }
}

uint64_t sub_22D874FD8()
{
  sub_22D84D77C();
  v2 = *v1;
  sub_22D84DD94();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 144) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_22D875D28;
  }

  else
  {
    v6 = sub_22D8750FC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_22D8750FC()
{
  v83 = v0;
  v2 = v0[13];
  v3 = v0[14];
  type metadata accessor for CoherenceTokenStore(0);
  v4 = sub_22D874A30(v2);
  v0[19] = v4;

  v6 = sub_22D886FB4(v5);
  v7 = *(v3 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_record);
  if (v7 && (v8 = OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens, sub_22D84C444(), swift_beginAccess(), (v9 = *(v7 + v8)) != 0) && (v0[12] = v9, v9[2]))
  {
    swift_bridgeObjectRetain_n();
    v10 = sub_22D886FB4(v9);

    v11 = sub_22D875DA0(v10, v6);

    v12 = sub_22D875DA0(v6, v10);
    sub_22D877A80(v10, v6);
    v14 = v13;

    v15 = sub_22D8B176C();
    sub_22D8B1C6C();

    v80 = v11;
    v81 = v12;
    if (sub_22D84DFC0())
    {
      v16 = sub_22D84CE7C();
      v82[0] = swift_slowAlloc();
      *v16 = 136315650;
      v17 = sub_22D8B1BFC();
      v19 = sub_22D84C63C(v17, v18, v82);

      *(v16 + 4) = v19;
      v1 = 2080;
      *(v16 + 12) = 2080;
      v20 = sub_22D8B1BFC();
      v22 = sub_22D84C63C(v20, v21, v82);

      *(v16 + 14) = v22;
      *(v16 + 22) = 2080;
      v23 = sub_22D8B1BFC();
      v25 = sub_22D84C63C(v23, v24, v82);

      *(v16 + 24) = v25;
      v11 = v80;
      sub_22D8516B0();
      _os_log_impl(v26, v27, v28, v29, v16, 0x20u);
      swift_arrayDestroy();
      sub_22D84DDE4();
      sub_22D84C3D8();
    }

    sub_22D874CFC(v14, v0 + 12, v4, v0 + 11);

    v30 = 0;
    v31 = v11 + 56;
    sub_22D84D714();
    v33 = v32 >> 6;
    v79 = v0[12];
    while (v1)
    {
      v34 = v1;
LABEL_13:
      v1 = (v34 - 1) & v34;
      if (*(v4 + 16))
      {
        v36 = (*(v11 + 48) + ((v30 << 10) | (16 * __clz(__rbit64(v34)))));
        v37 = *v36;
        v38 = v36[1];

        v39 = sub_22D852D10(v37, v38);
        if (v40)
        {
          v78 = *(*(v4 + 56) + 8 * v39);
          swift_isUniquelyReferenced_nonNull_native();
          v82[0] = v79;
          v77 = sub_22D852D10(v37, v38);
          sub_22D85231C();
          if (__OFADD__(v41, v42))
          {
            __break(1u);
LABEL_52:
            __break(1u);
            return;
          }

          sub_22D8580D8(&qword_27DA0D900, &unk_22D8B4010);
          if (sub_22D8B1EAC())
          {
            sub_22D852D10(v37, v38);
            sub_22D8795B0();
            if (!v45)
            {
              goto LABEL_48;
            }

            v46 = v43;
          }

          else
          {
            v46 = v77;
            v44 = v79;
          }

          if (v44)
          {

            v9 = v82[0];
            v47 = *(v82[0] + 56);
            v48 = *(v47 + 8 * v46);
            *(v47 + 8 * v46) = v78;
          }

          else
          {
            v9 = v82[0];
            *(v82[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
            v49 = (v9[6] + 16 * v46);
            *v49 = v37;
            v49[1] = v38;
            *(v9[7] + 8 * v46) = v78;

            v50 = v9[2];
            v51 = __OFADD__(v50, 1);
            v52 = v50 + 1;
            if (v51)
            {
              goto LABEL_52;
            }

            v9[2] = v52;
          }

          v11 = v80;
          v79 = v9;
        }

        else
        {

          v11 = v80;
        }
      }
    }

    while (1)
    {
      v35 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v35 >= v33)
      {
        break;
      }

      v34 = *(v31 + 8 * v35);
      ++v30;
      if (v34)
      {
        v30 = v35;
        goto LABEL_13;
      }
    }

    v0[12] = v79;

    v64 = 0;
    sub_22D84D714();
    v66 = v65 >> 6;
LABEL_32:
    v0[20] = v9;
    while (v1)
    {
      v67 = v81;
LABEL_40:
      v69 = __clz(__rbit64(v1));
      v1 &= v1 - 1;
      v70 = (*(v67 + 48) + ((v64 << 10) | (16 * v69)));
      v71 = *v70;
      v72 = v70[1];

      v73 = sub_22D852D10(v71, v72);
      LOBYTE(v71) = v74;

      if (v71)
      {
        v75 = v0[12];
        swift_isUniquelyReferenced_nonNull_native();
        v82[0] = v75;
        sub_22D8580D8(&qword_27DA0D900, &unk_22D8B4010);
        sub_22D8B1EAC();
        v9 = v82[0];

        type metadata accessor for CoherenceTokenStoreEntry();
        sub_22D8B1EBC();
        v0[12] = v9;
        goto LABEL_32;
      }
    }

    v67 = v81;
    while (1)
    {
      v68 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v68 >= v66)
      {

        v76 = swift_task_alloc();
        v0[21] = v76;
        *v76 = v0;
        sub_22D84CE94(v76);
        goto LABEL_43;
      }

      v1 = *(v81 + 56 + 8 * v68);
      ++v64;
      if (v1)
      {
        v64 = v68;
        goto LABEL_40;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:

    sub_22D8B1FBC();
  }

  else
  {

    v53 = sub_22D8B176C();
    v54 = sub_22D8B1C6C();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v55 = 136315394;
      v56 = sub_22D8B1BFC();
      v58 = v57;

      v59 = sub_22D84C63C(v56, v58, v82);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2080;
      type metadata accessor for CoherenceTokenStoreEntry();
      v60 = sub_22D8B192C();
      v62 = sub_22D84C63C(v60, v61, v82);

      *(v55 + 14) = v62;
      _os_log_impl(&dword_22D84A000, v53, v54, "CoherenceTokenStore no existing state, adding from UAF %s, tokens %s", v55, 0x16u);
      swift_arrayDestroy();
      sub_22D84C3D8();
      sub_22D84D6DC();
    }

    else
    {
    }

    v63 = swift_task_alloc();
    v0[23] = v63;
    *v63 = v0;
    sub_22D84CE94(v63);
LABEL_43:

    sub_22D8740F4();
  }
}

uint64_t sub_22D8758EC()
{
  sub_22D84D77C();
  v2 = *v1;
  sub_22D84DD94();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 176) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_22D875D30;
  }

  else
  {
    v6 = sub_22D875A10;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22D875A10()
{
  sub_22D84D77C();

  v1 = sub_22D8B176C();
  v2 = sub_22D8B1C6C();
  if (sub_22D84CEE0(v2))
  {
    v3 = sub_22D84DD3C();
    *v3 = 134217984;
    sub_22D84C444();
    swift_beginAccess();
    *(v3 + 4) = *(v0[11] + 16);
    sub_22D84C460();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_22D84DDE4();
  }

  v10 = v0[14];
  v9 = v0[15];

  *(v10 + v9) = 1;
  sub_22D84C444();
  swift_beginAccess();
  sub_22D84C4A4();

  return v11();
}

uint64_t sub_22D875B00()
{
  sub_22D84D77C();
  v2 = *v1;
  sub_22D84DD94();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 192) = v0;

  v5 = *(v2 + 112);

  if (v0)
  {
    v6 = sub_22D875D98;
  }

  else
  {
    v6 = sub_22D875C40;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22D875C40()
{
  sub_22D84D77C();
  v1 = sub_22D8B176C();
  v2 = sub_22D8B1C6C();
  if (sub_22D84CEE0(v2))
  {
    v3 = sub_22D84DD3C();
    *v3 = 134217984;
    sub_22D84C444();
    swift_beginAccess();
    *(v3 + 4) = *(v0[11] + 16);
    sub_22D84C460();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_22D84DDE4();
  }

  v10 = v0[14];
  v9 = v0[15];

  *(v10 + v9) = 1;
  sub_22D84C444();
  swift_beginAccess();
  sub_22D84C4A4();

  return v11();
}

uint64_t sub_22D875D30()
{
  sub_22D84D198();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D875DA0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_22D878888(a1);
    return a2;
  }

  else
  {

    return sub_22D8789B4(a1, a2);
  }
}

void sub_22D875DF4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a2;
  if (*(*a2 + 16))
  {
    v8 = *a1;
    v7 = a1[1];
    v9 = sub_22D852D10(*a1, v7);
    if (v10)
    {
      if (*(a3 + 16))
      {
        v11 = *(*(v4 + 56) + 8 * v9);
        v12 = sub_22D852D10(v8, v7);
        if ((v13 & 1) != 0 && (v14 = *&v11[OBJC_IVAR____TtC19ModelCatalogRuntime24CoherenceTokenStoreEntry_token]) != 0 && (v15 = *(*(a3 + 56) + 8 * v12), (v16 = *&v15[OBJC_IVAR____TtC19ModelCatalogRuntime24CoherenceTokenStoreEntry_token]) != 0))
        {
          v36 = v15;
          v17 = v14;
          v18 = v16;
          if ([v18 hasIdenticalAssets_])
          {
            if (qword_2814589E0 != -1)
            {
              swift_once();
            }

            v19 = sub_22D8B178C();
            sub_22D84C6FC(v19, qword_281459298);

            v20 = sub_22D8B176C();
            v21 = sub_22D8B1C6C();

            if (os_log_type_enabled(v20, v21))
            {
              v22 = swift_slowAlloc();
              v34 = v18;
              v23 = swift_slowAlloc();
              v37 = v23;
              *v22 = 136315138;
              *(v22 + 4) = sub_22D84C63C(v8, v7, &v37);
              _os_log_impl(&dword_22D84A000, v20, v21, "CoherenceTokenStore token for %s can continue to be vended", v22, 0xCu);
              sub_22D84D8A0(v23);
              MEMORY[0x2318D50E0](v23, -1, -1);
              MEMORY[0x2318D50E0](v22, -1, -1);
            }

            else
            {
            }
          }

          else
          {
            if (qword_2814589E0 != -1)
            {
              swift_once();
            }

            v35 = v18;
            v24 = sub_22D8B178C();
            sub_22D84C6FC(v24, qword_281459298);

            v25 = sub_22D8B176C();
            v26 = sub_22D8B1C6C();

            if (os_log_type_enabled(v25, v26))
            {
              v27 = swift_slowAlloc();
              v33 = v17;
              v28 = swift_slowAlloc();
              v37 = v28;
              *v27 = 136315138;
              *(v27 + 4) = sub_22D84C63C(v8, v7, &v37);
              _os_log_impl(&dword_22D84A000, v25, v26, "CoherenceTokenStore adding %s to be invalidated", v27, 0xCu);
              sub_22D84D8A0(v28);
              v29 = v28;
              v17 = v33;
              MEMORY[0x2318D50E0](v29, -1, -1);
              MEMORY[0x2318D50E0](v27, -1, -1);
            }

            sub_22D870D50();
            v30 = *(*a4 + 16);
            sub_22D870DDC(v30);

            v31 = *a4;
            *(v31 + 16) = v30 + 1;
            v32 = v31 + 16 * v30;
            *(v32 + 32) = v8;
            *(v32 + 40) = v7;
          }
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_22D876184()
{
  v1 = OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_tokenStoreURL;
  v2 = sub_22D8B073C();
  sub_22D84C740();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_tokenStoreBaseURL, v2);

  sub_22D84D8A0((v0 + OBJC_IVAR____TtC19ModelCatalogRuntime19CoherenceTokenStore_unifiedAssetInterface));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22D876234()
{
  sub_22D876184();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for CoherenceTokenStore(uint64_t a1)
{
  result = qword_281458F28;
  if (!qword_281458F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22D8762B4(uint64_t a1)
{
  result = sub_22D8B073C();
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

void sub_22D8763C0()
{
  v2 = sub_22D879578();
  v0 = sub_22D84C61C();
  [v0 v1];
}

id sub_22D87648C(void *a1)
{
  v2 = v1;
  sub_22D85AFB0(0, &qword_281458888, 0x277D779F0);
  *&v2[OBJC_IVAR____TtC19ModelCatalogRuntime24CoherenceTokenStoreEntry_token] = sub_22D8B1D1C();
  v6.receiver = v2;
  v6.super_class = type metadata accessor for CoherenceTokenStoreEntry();
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

void sub_22D876684()
{
  v1 = OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens;
  sub_22D84C444();
  swift_beginAccess();
  if (*(v0 + v1))
  {
    type metadata accessor for CoherenceTokenStoreEntry();

    sub_22D8B190C();
  }

  v2 = sub_22D879578();
  v3 = sub_22D84C61C();
  [v3 v4];
  swift_unknownObjectRelease();
}

id sub_22D8767A0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens;
  *&v2[OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens] = 0;
  sub_22D8580D8(&qword_27DA0D8E8, &qword_22D8B3FF8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22D8B3470;
  v6 = sub_22D85AFB0(0, &unk_281458870, 0x277CCACA8);
  *(v5 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22D8B3E90;
  *(v7 + 32) = type metadata accessor for CoherenceTokenStoreEntry();
  *(v7 + 40) = sub_22D85AFB0(0, &qword_281458888, 0x277D779F0);
  *(v7 + 48) = v6;
  v8 = sub_22D8B1D2C();

  if (v8)
  {
    sub_22D876910(v8);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  sub_22D84E184(&v2[v4], v14);
  *&v2[v4] = v10;

  v13.receiver = v2;
  v13.super_class = type metadata accessor for CoherenceTokenStoreRecord();
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

void sub_22D876910(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22D8580D8(&qword_27DA0D8F0, &qword_22D8B4000);
    v2 = sub_22D8B1F3C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_22D8794E8(*(a1 + 48) + 40 * v9, __src);
    sub_22D84DB94(*(a1 + 56) + 32 * v9, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_22D8794E8(__dst, v22);
    if (!swift_dynamicCast())
    {
      sub_22D84D06C(__dst, &unk_27DA0D8F8);

LABEL_22:

      return;
    }

    sub_22D84DB94(&__dst[40], v22);
    sub_22D84D06C(__dst, &unk_27DA0D8F8);
    type metadata accessor for CoherenceTokenStoreEntry();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_22;
    }

    v5 &= v5 - 1;
    v10 = sub_22D852D10(v20, v21);
    v11 = v10;
    if (v12)
    {
      v13 = (v2[6] + 16 * v10);
      *v13 = v20;
      v13[1] = v21;

      v14 = v2[7];
      v15 = *(v14 + 8 * v11);
      *(v14 + 8 * v11) = v20;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_24;
      }

      *(v2 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
      v16 = (v2[6] + 16 * v10);
      *v16 = v20;
      v16[1] = v21;
      *(v2[7] + 8 * v10) = v20;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_25;
      }

      v2[2] = v19;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      goto LABEL_22;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

id sub_22D876BF8(uint64_t a1)
{
  v2 = v1;
  v24[6] = *MEMORY[0x277D85DE8];
  v4 = OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens;
  *&v1[OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens] = 0;
  sub_22D8B075C();
  sub_22D85AFB0(0, &qword_2814588D8, 0x277CCAAC8);
  type metadata accessor for CoherenceTokenStoreRecord();
  v5 = sub_22D8B1C7C();
  if (v5)
  {
    v6 = sub_22D85126C();
    sub_22D877894(v6, v7);
    v8 = OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens;
    sub_22D84C444();
    swift_beginAccess();
    v9 = *&v5[v8];

    sub_22D84E184(&v2[v4], v24);
    *&v2[v4] = v9;
  }

  else
  {
    if (qword_2814589E0 != -1)
    {
      sub_22D86845C();
      swift_once();
    }

    v10 = sub_22D8B178C();
    sub_22D84DD10(v10, qword_281459298);
    v11 = sub_22D8B176C();
    v12 = sub_22D8B1C6C();
    if (sub_22D851250(v12))
    {
      v13 = sub_22D85225C();
      *v13 = 0;
      sub_22D8516B0();
      _os_log_impl(v14, v15, v16, v17, v13, 2u);
      sub_22D84D6DC();
    }

    v18 = sub_22D85126C();
    sub_22D877894(v18, v19);
  }

  v23.receiver = v2;
  v23.super_class = type metadata accessor for CoherenceTokenStoreRecord();
  v20 = objc_msgSendSuper2(&v23, sel_init);
  sub_22D8B073C();
  sub_22D84C740();
  (*(v21 + 8))(a1);
  return v20;
}

unint64_t *sub_22D87715C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens;
  sub_22D84C444();
  swift_beginAccess();
  v6 = *(v3 + v5);
  if (v6 && (, v7 = sub_22D851E68(), v9 = sub_22D851CE8(v7, v8, v6), , v9))
  {
    v10 = [objc_opt_self() sharedManager];
    sub_22D851E68();
    v11 = sub_22D8B19CC();
    v12 = *&v9[OBJC_IVAR____TtC19ModelCatalogRuntime24CoherenceTokenStoreEntry_token];
    v13 = v12;
    v14 = sub_22D879100(v11, a3, v12, v10);
  }

  else
  {
    v15 = sub_22D8B0A0C();
    sub_22D87949C();
    swift_allocError();
    v17 = v16;
    sub_22D8B1E2C();

    sub_22D84F5A0();
    v22 = 0xD00000000000001CLL;
    v23 = v18;
    v14 = &v22;
    v19 = sub_22D851E68();
    MEMORY[0x2318D4340](v19);
    v20 = v23;
    *v17 = v22;
    v17[1] = v20;
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D29A70], v15);
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_22D87731C()
{
  v2 = v1;
  sub_22D85AFB0(0, &qword_2814588F0, 0x277D779E8);
  v3 = sub_22D8B193C();
  v4 = OBJC_IVAR____TtC19ModelCatalogRuntime25CoherenceTokenStoreRecord_tokens;
  sub_22D84C444();
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (!v5)
  {

    sub_22D8B0A0C();
    sub_22D87949C();
    sub_22D84DF28();
    swift_allocError();
    sub_22D84F5A0();
    sub_22D84CFC0(v45, v46);
    sub_22D84D850();
    (*(v47 + 104))();
    swift_willThrow();
    return v3;
  }

  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v49 = (v7 + 63) >> 6;

  v11 = 0;
  v50 = v10;
  while (2)
  {
    v12 = v11;
    v51 = v3;
    if (!v9)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v11 = v12;
LABEL_10:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v10 + 48) + 16 * v13);
      v3 = *v14;
      v15 = v14[1];
      v16 = *(*(v10 + 56) + 8 * v13);
      sub_22D8B09DC();

      v52 = v16;
      sub_22D85228C();
      v17 = sub_22D8B096C();
      if (v2)
      {

        return v3;
      }

      v18 = v17;
      v19 = [objc_opt_self() sharedManager];
      sub_22D85228C();
      v20 = sub_22D8B19CC();
      if (v18)
      {
        v21 = sub_22D8B190C();
      }

      else
      {
        v21 = 0;
      }

      v9 &= v9 - 1;
      v22 = [v19 retrieveAssetSet:v20 usages:v21 consistencyToken:*&v52[OBJC_IVAR____TtC19ModelCatalogRuntime24CoherenceTokenStoreEntry_token]];

      if (v22)
      {
        break;
      }

      v23 = sub_22D85228C();
      v3 = v51;
      v25 = sub_22D852D10(v23, v24);
      v27 = v26;

      if (v27)
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_22D8580D8(&qword_27DA0D8E0, &qword_22D8B3FF0);
        sub_22D8B1EAC();

        sub_22D8B1EBC();
        v2 = 0;
        goto LABEL_28;
      }

      v12 = v11;
      v2 = 0;
      v10 = v50;
      if (!v9)
      {
LABEL_7:
        while (1)
        {
          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v11 >= v49)
          {

            return v3;
          }

          v9 = *(v6 + 8 * v11);
          ++v12;
          if (v9)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_34;
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    v28 = sub_22D85228C();
    sub_22D852D10(v28, v29);
    sub_22D85231C();
    if (__OFADD__(v31, v32))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v33 = v30;
    sub_22D8580D8(&qword_27DA0D8E0, &qword_22D8B3FF0);
    if ((sub_22D8B1EAC() & 1) == 0)
    {
      v2 = 0;
      if ((v51 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_27;
    }

    v34 = sub_22D85228C();
    sub_22D852D10(v34, v35);
    sub_22D8795B0();
    v2 = 0;
    if (v38)
    {
      v33 = v36;
      if ((v37 & 1) == 0)
      {
LABEL_23:
        v51[(v33 >> 6) + 8] |= 1 << v33;
        v39 = (v51[6] + 16 * v33);
        *v39 = v3;
        v39[1] = v15;
        v3 = v51;
        *(v51[7] + 8 * v33) = v22;

        v40 = v51[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
LABEL_35:
          __break(1u);
          break;
        }

        v51[2] = v42;
LABEL_28:
        v10 = v50;
        continue;
      }

LABEL_27:

      v3 = v51;
      v43 = v51[7];
      v44 = *(v43 + 8 * v33);
      *(v43 + 8 * v33) = v22;

      goto LABEL_28;
    }

    break;
  }

  result = sub_22D8B1FBC();
  __break(1u);
  return result;
}

id sub_22D877828(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22D877894(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_22D8778EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22D8B073C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_22D877930(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_22D84DC70(a1, a2, a3, a4, a5);
  result = sub_22D855C0C(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

unint64_t sub_22D877974(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_22D8779C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_22D84DC70(a1, a2, a3, a4, a5);
  *(v8 + 8 * result) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v11;
  }

  return result;
}

unint64_t *sub_22D8779F0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_22D877C18(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_22D877A80(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;

  if (v3 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    sub_22D88C8E8(0, v4, v14 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_22D87959C();
    sub_22D877C18(v6, v7, v8, v9);
    if (!v4)
    {

      return;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    swift_slowAlloc();

    sub_22D87959C();
    sub_22D8779F0(v10, v11, v12, v13);

    if (!v4)
    {

      sub_22D84D6DC();
      return;
    }
  }

  sub_22D84D6DC();
  __break(1u);
}

unint64_t *sub_22D877C18(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      sub_22D8B201C();

      sub_22D8B1A6C();
      v40 = sub_22D8B205C();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = sub_22D8B1F8C();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(v52 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        return sub_22D877FBC(v52, a2, v53, v5);
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_22D8B201C();

      sub_22D8B1A6C();
      v18 = sub_22D8B205C();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_22D8B1F8C();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      v52[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_22D877FBC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_22D8580D8(&qword_27DA0D908, &qword_22D8B4770);
  result = sub_22D8B1E0C();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_22D8B201C();

    sub_22D8B1A6C();
    result = sub_22D8B205C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22D8781D8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_22D8B201C();
  sub_22D8B1A6C();
  v6 = sub_22D8B205C();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_22D8B1F8C() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22D88F41C();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_22D878300(v8);
  *v2 = v15;
  return v13;
}

unint64_t sub_22D878300(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22D8B1DCC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_22D8B201C();

        sub_22D8B1A6C();
        v10 = sub_22D8B205C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_22D8784B8(uint64_t *a1, size_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v11 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_22D877894(v4, v3);
      *a1 = xmmword_22D8B3EA0;
      sub_22D877894(0, 0xC000000000000000);
      v12 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_12;
      }

      if (v12 < v4)
      {
        goto LABEL_16;
      }

      if (sub_22D8B063C() && __OFSUB__(v4, sub_22D8B066C()))
      {
        goto LABEL_17;
      }

      sub_22D8B067C();
      swift_allocObject();
      v13 = sub_22D8B062C();

      v11 = v13;
LABEL_12:
      if (v12 < v4)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
      }

      v7 = sub_22D878808(v4, v4 >> 32, v11, a2);

      *a1 = v4;
      a1[1] = v11 | 0x4000000000000000;
      return v7;
    case 2uLL:

      sub_22D877894(v4, v3);
      *&v16 = v4;
      *(&v16 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_22D8B3EA0;
      sub_22D877894(0, 0xC000000000000000);
      v7 = &v16;
      sub_22D8B074C();
      v9 = v16;
      v10 = sub_22D878808(*(v16 + 16), *(v16 + 24), *(&v16 + 1), a2);
      *a1 = v9;
      a1[1] = *(&v9 + 1) | 0x8000000000000000;
      if (!v2)
      {
        return v10;
      }

      return v7;
    case 3uLL:
      *(&v16 + 7) = 0;
      *&v16 = 0;
      return sysctlbyname("kern.bootsessionuuid", &v16, a2, 0, 0);
    default:
      sub_22D877894(v4, v3);
      *&v16 = v4;
      WORD4(v16) = v3;
      BYTE10(v16) = BYTE2(v3);
      BYTE11(v16) = BYTE3(v3);
      BYTE12(v16) = BYTE4(v3);
      BYTE13(v16) = BYTE5(v3);
      BYTE14(v16) = BYTE6(v3);
      v7 = sysctlbyname("kern.bootsessionuuid", &v16, a2, 0, 0);
      v8 = DWORD2(v16) | ((WORD6(v16) | (BYTE14(v16) << 16)) << 32);
      *a1 = v16;
      a1[1] = v8;
      return v7;
  }
}

uint64_t sub_22D878808(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4)
{
  result = sub_22D8B063C();
  if (result)
  {
    v7 = result;
    result = sub_22D8B066C();
    v8 = __OFSUB__(a1, result);
    v9 = a1 - result;
    if (!v8)
    {
      sub_22D8B065C();
      return sysctlbyname("kern.bootsessionuuid", (v7 + v9), a4, 0, 0);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22D878888(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_22D8781D8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_22D8789B4(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v56 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_22D8B201C();

        sub_22D8B1A6C();
        v20 = sub_22D8B205C();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v22 = (*(v5 + 48) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_22D8B1F8C() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v45 = &v43;
              MEMORY[0x28223BE20](v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = *(v5 + 16);
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                sub_22D8B201C();

                sub_22D8B1A6C();
                v34 = sub_22D8B205C();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (*(v5 + 48) + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = sub_22D8B1F8C();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = MEMORY[0x277D84FA0];
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_22D877FBC(v48, v44, v46, v5);
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = sub_22D879078(v41, v44, (v5 + 56), v44, v5, v7, v52);

            MEMORY[0x2318D50E0](v41, -1, -1);
            v12 = v52[0];
            v47 = v53;
            v5 = v42;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_22D879544(v14);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v5;
}

unint64_t *sub_22D878E8C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_22D8B201C();

    sub_22D8B1A6C();
    v16 = sub_22D8B205C();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_22D8B1F8C();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_22D877FBC(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_22D879078(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_22D878E8C(a1, a2, a5, a6, a7);

  return v12;
}

id sub_22D879100(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_22D8B190C();
  v8 = [a4 retrieveAssetSet:a1 usages:v7 consistencyToken:a3];

  return v8;
}

uint64_t sub_22D879180(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22D8B19FC();

  return v3;
}

uint64_t sub_22D8791E4(uint64_t result)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = result;
  switch(v3 >> 62)
  {
    case 1uLL:
      v5 = v2;
      v6 = v2 >> 32;
      goto LABEL_5;
    case 2uLL:
      v5 = *(v2 + 16);
      v6 = *(v2 + 24);
      goto LABEL_5;
    case 3uLL:
      goto LABEL_11;
    default:
      v5 = 0;
      v6 = BYTE6(v3);
LABEL_5:
      if (v5 == v6)
      {
        goto LABEL_11;
      }

      result = sub_22D8B079C();
      if (__OFADD__(v4, 1))
      {
        __break(1u);
      }

      else if (v4 + 1 >= v4)
      {
        v7 = result;
        sub_22D8B077C();
        return v7;
      }

      __break(1u);
LABEL_11:
      __break(1u);
      return result;
  }
}

uint64_t sub_22D879294()
{
  result = sub_22D879384(*v0, *(v0 + 8));
  if ((result & 0x100) == 0)
  {
    v2 = *v0;
    v3 = *(v0 + 8);
    v4 = result;
    v5 = 0;
    v6 = 0;
    switch(v3 >> 62)
    {
      case 1uLL:
        v5 = v2;
        v6 = v2 >> 32;
        break;
      case 2uLL:
        v5 = *(v2 + 16);
        v6 = *(v2 + 24);
        break;
      case 3uLL:
        break;
      default:
        v5 = 0;
        v6 = BYTE6(v3);
        break;
    }

    sub_22D879444(*v0, *(v0 + 8));
    result = sub_22D877894(v2, v3);
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
    }

    else if (v6 - 1 >= v5)
    {
      v7 = sub_22D8B078C();
      v9 = v8;
      sub_22D877894(v2, v3);
      *v0 = v7;
      *(v0 + 8) = v9;
      return v4;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}